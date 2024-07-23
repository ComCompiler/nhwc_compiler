use ahash::{HashMap, HashSet, HashSetExt};
use anyhow::{anyhow, Context, Ok, Result};
use itertools::Itertools;
use petgraph::graph::EdgeIndex;
use petgraph::Direction::{Incoming, Outgoing};
use petgraph::{
    graph::node_index, visit::EdgeRef
};
use core::panic;
use std::borrow::Borrow;
use std::cell::RefCell;
use std::mem;
use std::rc::Rc;
use crate::toolkit::field::TypeDiscriminants;
use crate::{add_node, instr, instr_mut};

use super::cfg_node::{InstrList, CFG_ROOT};
use super::et_node::ExprOp;
use super::etc::dfs_with_priority;
use super::eval_et::{self, can_eliminate_despite_array_idx_and_call};
use super::field::{ArrayEleMap, Value};
use super::{gen_et, symtab};
use super::gen_scope::get_while_scope_of_scope_node;
use super::mem_layout::MemLayout;
use super::nhwc_instr::{CmpPlan, JumpOp};
use super::symtab::{SymIdx, WithBorrow};
use super::{cfg_edge::CfgEdge, nhwc_instr::NhwcInstr};
use super::{
    ast_node::AstTree, cfg_node::CfgGraph, et_node::{DeclOrDefOrUse, EtNodeType, EtTree}, gen_et::process_any_stmt, nhwc_instr::NhwcInstrType, scope_node::ScopeTree, symtab::{RcSymIdx, SymTab, SymTabGraph}
};
use super::{cfg_edge::CfgEdgeType, cfg_node::CfgNodeType, field::Field, nhwc_instr::InstrSlab};
use crate::antlr_parser::clexer::{Identifier, LeftParen};
use crate::antlr_parser::cparser::{RULE_breakStatement, RULE_breakpointArg, RULE_breakpointStatement, RULE_continueStatement, RULE_declarationSpecifier, RULE_initDeclarator, RULE_initDeclaratorList, RULE_returnStatement, RULE_typeSpecifier};
use crate::toolkit::nhwc_instr::BreakpointArg;
use crate::toolkit::scope_node::ST_ROOT;
use crate::{debug_info_blue, debug_info_green, debug_info_red, direct_parent_node};
use crate::{
    add_edge, add_node_with_edge, add_symbol, antlr_parser::cparser::{
        RULE_declaration, RULE_declarationSpecifiers, RULE_declarator, RULE_directDeclarator, RULE_expression, RULE_expressionStatement, RULE_forAfterExpression, RULE_forBeforeExpression, RULE_forMidExpression, RULE_jumpStatement, RULE_parameterDeclaration, RULE_parameterList, RULE_parameterTypeList
    }, direct_child_node, direct_child_nodes, direct_parent_nodes, find, find_nodes, incoming_edges, make_field_trait_for_struct, node, node_mut, outgoing_edges, reg_field_for_struct, rule_id, toolkit::{
        cfg_node::{CfgInstrIdx, CfgNode}, etc, field::Type, nhwc_instr::{IcmpPlan, FcmpPlan}, symbol::Symbol, symtab::SymTabEdge
    }
};

/*
这个文件主要是对  cfg_graph 进行后一步处理，因为cfg_graph 在此之前还没有
*/

make_field_trait_for_struct!(
    RcSymIdx,
    SymIdx,
    usize,
    u32,
    // UseCounter,
    bool,
    Type,
    CfgInstrIdx,
    MemLayout,
    HashSet<RcSymIdx>
);

// reg_field_for_struct!(EtNode {
//     } with_fields info);
// for variables symbol
reg_field_for_struct!(Symbol {
        DEF_INSTRS_VEC:Vec<usize>,
        DEF_CFG_NODE_VEC:Vec<u32>,
        CONST_COR_LITERAL_SYMIDX:SymIdx,
        IS_TEMP:bool,
        IS_GLOBAL:bool,
        IS_FUNC_PARA:bool,
        IS_LITERAL:bool,
        IS_EXTERNAL:bool,
        POINTED_SYMIDX:RcSymIdx,
        LABEL_CFG_NODE:u32,
        TEMP_COUNTER:u32,
        GLOBAL_MU_SET:HashSet<RcSymIdx>,
        GLOBAL_CHI_SET:HashSet<RcSymIdx>,
        LOCAL_MU_SET:HashSet<RcSymIdx>,
        LOCAL_CHI_SET:HashSet<RcSymIdx>,
    } with_fields fields);
// global_mu_call_set stores all mu to global variable in 
// for compilation unit symbol
reg_field_for_struct!(Symbol {
        ALL_CFG_FUNC_SYMIDX_ENTRY_TUPLES:Vec<(RcSymIdx,u32)>,
        GLOBAL_VARS:Vec<RcSymIdx>,
        EXTERNAL_FUNC_SYMIDX_VEC:Vec<RcSymIdx>,
    } with_fields fields);
// for func symbol
// declared_vars field is not for mem_alloc, it's about simulator and ssa 
reg_field_for_struct!(Symbol {
        DECLARED_VARS:Vec<RcSymIdx>,
        CFG_ENTRY_NODE:u32,
    } with_fields fields);
reg_field_for_struct!(CfgNode {
    FUNC_COR_SYMIDX:RcSymIdx,
    DEF_SYMIDX_INSTR_TUPLE_VEC:Vec<(RcSymIdx,usize)>,
} with_fields info);
// for Instruction
reg_field_for_struct!(NhwcInstr {
        CFG_INSTR_IDX:CfgInstrIdx,
    } with_fields info);

fn check_child_nodes(child_nodes:&Vec<u32>,num:usize) -> Result<()>{
    // debug_info_blue!("{:?} : {}",child_nodes,num);
    if child_nodes.len()>num{
        return Err(anyhow!("输入的操作数数量大于操作符处理的操作数数量 {child_nodes:?}"))
    }else if child_nodes.len()<num{
        return Err(anyhow!("操作符下缺少操作数，et错误"))
    }
    Ok(())
}

/// 这个函数根据stmt对instrs push instruction
fn parse_stmt_or_expr2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, symtab:&mut SymTab, scope_tree:&ScopeTree, et_tree:&mut EtTree, stmt_parent_scope:u32, ast_stmt_node:u32, cfg_node:u32, ast2scope:&HashMap<u32, u32>,
    instr_slab:&mut InstrSlab<NhwcInstr>, 
) -> Result<Vec<Option<RcSymIdx>>> {
    //将declaration生成et
    let sep_node = gen_et::process_any_stmt(et_tree, ast_tree, scope_tree, ast_stmt_node, stmt_parent_scope);
    // debug_info_red!("parent {}",stmt_parent_scope);
    eval_et::compress_et(et_tree, sep_node,&mut can_eliminate_despite_array_idx_and_call, &symtab,stmt_parent_scope ,scope_tree, true)?;
    // generate_png_by_graph(&et_tree, "et_src".to_string(), &[Config::EdgeNoLabel, Config::Record, Config::Title("et_tree".to_string()),Config::NodeIndexLabel])?;

    //如果该节点有子树
    let et_nodes = direct_child_nodes!(at sep_node in et_tree);
    let mut sep_symidx_vec= vec![];
    for et_node in et_nodes {
        let op_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, stmt_parent_scope, cfg_node, instr_slab,ast2scope,)?;
        sep_symidx_vec.push(op_symidx)
    }
    Ok(sep_symidx_vec)
}

fn parse_bb2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, scope_tree:&ScopeTree, et_tree:&mut EtTree, symtab:&mut SymTab, ast2scope:&HashMap<u32, u32>, ast_nodes:Vec<u32>, cfg_bb:u32,
    instr_slab:&mut InstrSlab<NhwcInstr>, 
) -> Result<()> {
    for astnode in ast_nodes {
        match (rule_id!(at astnode in ast_tree), astnode) {
            (RULE_declaration, declaration_node) => {
                if let Some(&decl_scope) = ast2scope.get(&declaration_node) {
                    let decl_scope = direct_parent_node!(at decl_scope in scope_tree);
                    parse_declvar2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, decl_scope, declaration_node, cfg_bb,  ast2scope,instr_slab, )?
                } else {
                    return Err(anyhow!("找不到astnode{}的scope", declaration_node));
                }
            }
            (RULE_expressionStatement, statement_node) => {
                if let Some(&expr_scope) = ast2scope.get(&statement_node) {
                    let expr_scope = direct_parent_node!(at expr_scope in scope_tree);
                    parse_stmt_or_expr2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, expr_scope, statement_node, cfg_bb,  ast2scope,instr_slab, )?;
                } else {
                    return Err(anyhow!("找不到astnode的scope"));
                }
            }
            (RULE_forAfterExpression, after_node) => {
                if let Some(&after_scope) = ast2scope.get(&after_node) {
                    let after_scope = direct_parent_node!(at after_scope in scope_tree);
                    parse_stmt_or_expr2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, after_scope, after_node, cfg_bb,  ast2scope,instr_slab, )?;
                } else {
                    return Err(anyhow!("找不到astnode的scope"));
                }
            }
            (RULE_breakpointStatement, breakpoint_node) => {
                if let Some(&breakpoint_scope) = ast2scope.get(&breakpoint_node) {
                    let breakpoint_arg_nodes = find_nodes!(rule RULE_breakpointArg at breakpoint_node in ast_tree);
                    let breakpoint_head_node = find!(term Identifier at breakpoint_node in ast_tree).unwrap();
                    let breakpoint_args = breakpoint_arg_nodes.iter()
                        .map(|&breakpoint_arg_node| {
                            // idents 的长度可能是1或2  例如 breakpoint bp(a) 中 a 例如 breakpoint bp(a.simu_val) 中 a.simu_val就是2
                            let idents = find_nodes!(term Identifier at breakpoint_arg_node in ast_tree);
                            BreakpointArg{
                            symidx: {
                                let head =  idents[0];
                                let head_name = node!(at head in ast_tree).op_text.clone().unwrap();
                                SymIdx::new(breakpoint_scope, head_name).as_rc()
                            },
                            op_field_name: {
                                match idents.get(1) {
                                    Some(&tail_name) => Some(node!(at tail_name in ast_tree).op_text.clone().unwrap()),
                                    None => None,
                                } 
                            },
                        } }).collect_vec();
                    let ret_instr = NhwcInstrType::new_breakpoint(
                        SymIdx::new(breakpoint_scope, node!(at  breakpoint_head_node in ast_tree).op_text.clone().unwrap()).as_rc(),
                        breakpoint_args,
                    ).into();
                    node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(ret_instr, instr_slab)?;
                } else {
                    return Err(anyhow!("找不到astnode的scope"));
                }
            }
            (RULE_jumpStatement, jump_node) => {
                // debug_info_blue!("visit jumpstmt at {jump_node}");
                if let Some(&jump_scope) = ast2scope.get(&jump_node){
                    let jump_parent_scope = direct_parent_node!(at jump_scope in scope_tree);
                    let jump_type_ast = direct_child_node!(at jump_node in ast_tree);
                    match (rule_id!(at jump_type_ast in ast_tree),jump_type_ast){
                        (RULE_returnStatement,ret_ast) => {
                            let ret_instr = NhwcInstrType::new_ret(None).into();
                            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(ret_instr, instr_slab)?;
                            if let  Some(ret_expr_ast)= find!(rule RULE_expression at ret_ast in ast_tree){
                                let ret_et_sep = process_any_stmt(et_tree, ast_tree, scope_tree, ret_expr_ast, jump_parent_scope);
                                eval_et::compress_et(et_tree, ret_et_sep,&mut can_eliminate_despite_array_idx_and_call ,&symtab,jump_parent_scope ,scope_tree, true)?;

                                let ret_sep_child_nodes = direct_child_nodes!(at ret_et_sep in et_tree);
                                // debug_info_blue!("jump child nodes of {} is {:?}",ret_et_sep , ret_sep_child_nodes);
                                // check_child_nodes(&jump_stmt, 1)?;
                                match ret_sep_child_nodes.len(){
                                    x if x ==1 =>{
                                        let actual_ret_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ret_sep_child_nodes[0], jump_parent_scope, cfg_bb,  instr_slab, ast2scope)?.unwrap();
                                        let rc_func_symidx = node!(at cfg_bb in cfg_graph).get_func_cor_symidx()?;
                                        let func_type = symtab.get(&rc_func_symidx.as_ref_borrow())?.get_type()?;
                                        let formal_ret_symidx = match func_type{
                                            Type::Fn { arg_syms, ret_sym: formal_ret_sym } => formal_ret_sym.clone(),
                                            _ => {panic!()}
                                        };
                                        let transed_actual_ret_symidx = force_trans_type(cfg_graph, symtab, &formal_ret_symidx, &actual_ret_symidx, jump_scope, cfg_bb, instr_slab, None, et_tree)?;
                                        let ret_instr = NhwcInstrType::new_ret(Some(transed_actual_ret_symidx)).into();
                                        // then delete all edges of the node 
                                        let ret_instr = node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(ret_instr, instr_slab)?;
                                        // println!("add new ret {ret_instr}");
                                    }
                                    _=>{
                                        return Err(anyhow!("ret语句下参数数量不正确 et_node:{ret_et_sep}"))
                                    }
                                }
                            }else{
                                let ret_instr = NhwcInstrType::new_ret(None).into();
                                node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(ret_instr, instr_slab)?;
                            }
                            let edges = cfg_graph.edges_directed(node_index(cfg_bb as usize), petgraph::Direction::Outgoing);
                            for edge in edges.into_iter().map(|edge| edge.id()).collect_vec() {
                                cfg_graph.remove_edge(edge);
                            }
                        },
                        (RULE_breakStatement,break_ast) => {
                            let while_or_for_node = match get_while_or_for_node_of_cfg_node(cfg_bb, cfg_graph, scope_tree, ast2scope){
                                anyhow::Result::Ok(while_or_for_node ) => while_or_for_node ,
                                Err(e) => {
                                    if direct_parent_node!(at cfg_bb in cfg_graph ret_option).is_some(){
                                        return Err(e);
                                    }else{
                                        continue;
                                    }
                                },
                            };
                            // 说明这个bb 已经被孤立了
                            debug_info_green!("while_or_for_node_of_cfg_node {cfg_bb} is {while_or_for_node}");
                            let body_exit_node = get_exit_node_of_while_or_for_node(while_or_for_node, cfg_graph)?;
                            // we should remove the edge 
                            let cfg_child_node = direct_child_node!(at cfg_bb in cfg_graph);
                            let cfg_edge_to_removed = cfg_graph.find_edge(node_index(cfg_bb as usize), node_index(cfg_child_node as usize)).unwrap();
                            cfg_graph.remove_edge(cfg_edge_to_removed);
                            // than add a edge to while_exit or for_exit 
                            add_edge!({CfgEdge::new_direct()} from cfg_bb to body_exit_node in cfg_graph);
                        },
                        (RULE_continueStatement,ctn_ast) => {
                            let while_or_for_node = match get_while_or_for_node_of_cfg_node(cfg_bb, cfg_graph, scope_tree, ast2scope){
                                anyhow::Result::Ok(while_or_for_node ) => while_or_for_node ,
                                Err(e) => {
                                    if direct_parent_node!(at cfg_bb in cfg_graph ret_option).is_some(){
                                        return Err(e);
                                    }else{
                                        continue;
                                    }
                                },
                            };
                            // we should remove the edge 
                            let cfg_child_node = direct_child_node!(at cfg_bb in cfg_graph);
                            let cfg_edge_to_removed = cfg_graph.find_edge(node_index(cfg_bb as usize), node_index(cfg_child_node as usize)).unwrap();
                            cfg_graph.remove_edge(cfg_edge_to_removed);
                            // than add a edge to while_head or for_head
                            add_edge!({CfgEdge::new_direct()} from cfg_bb to while_or_for_node in cfg_graph);
                        },
                        (_,_) => {
                            return Err(anyhow!("错位的无条件跳转类型"));
                        }
                    }
                }
            }
            (_, _) => return Err(anyhow!("bb中未知RULE，{}不是expr或stmt", astnode)),
        }
    }
    Ok(())
}
fn parse_whileloop2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, scope_tree:&ScopeTree, et_tree:&mut EtTree, symtab:&mut SymTab, ast2scope:&HashMap<u32, u32>, ast_expr_node:u32, cfg_whileloop:u32, instr_slab:&mut InstrSlab<NhwcInstr>,
) -> Result<()> {
    match (rule_id!(at ast_expr_node in ast_tree), ast_expr_node) {
        (RULE_expression, expr_ast) => {


            if let Some(&expr_scope) = ast2scope.get(&expr_ast) {
                let expr_parent_scope = direct_parent_node!(at expr_scope in scope_tree);
                let ret_vec = parse_stmt_or_expr2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, expr_parent_scope, ast_expr_node, cfg_whileloop, ast2scope, instr_slab, )?;
                if ret_vec.len()>1{
                    return Err(anyhow!("条件表达式错误，返回参数不能大于一个"))
                }
                let r2bool_symidx;
                if let Some(symidx) = &ret_vec[0]{
                    r2bool_symidx = force_trans_type_discriminant(cfg_graph, symtab, TypeDiscriminants::I1,  &symidx, ast_expr_node, cfg_whileloop,  instr_slab, None,et_tree)?;
                    // 添加 br 语句
                    let cfg_body_head_node = direct_child_node!(at cfg_whileloop in cfg_graph with_predicate {|e| e.weight().cfg_edge_type.is_body_head() });
                    let cfg_exit_node = get_exit_node_of_while_or_for_node(cfg_whileloop, cfg_graph)?;
                    debug_info_blue!("exit_node of cfg_while_node:{cfg_whileloop} is cfg_exit_node:{cfg_exit_node}");
                    let while_head_symidx = find_or_new_label_to_cfg_node(cfg_whileloop,*ast2scope.get(&ast_expr_node).unwrap(), "while.head".to_string(), symtab,cfg_graph,instr_slab)?;
                    let while_body_symidx = find_or_new_label_to_cfg_node(cfg_body_head_node,*ast2scope.get(&ast_expr_node).unwrap(), "while.body".to_string(), symtab,cfg_graph, instr_slab)?;
                    let while_exit_symidx = find_or_new_label_to_cfg_node(cfg_exit_node,*ast2scope.get(&ast_expr_node).unwrap(), "while.exit".to_string(), symtab,cfg_graph,instr_slab)?;

                    let br_whileloop_instr_struct = NhwcInstrType::new_br(r2bool_symidx.clone(),while_body_symidx,while_exit_symidx).into();
                    node_mut!(at cfg_whileloop in cfg_graph).push_nhwc_instr(br_whileloop_instr_struct, instr_slab)?;

                    // let jump_body_tail_instr_struct = NhwcInstrType::new_jump(while_head_symidx.clone()).into();
                    // node_mut!(at cfg_body_tail_node in cfg_graph).push_nhwc_instr(jump_body_tail_instr_struct, instr_slab)?;

                    node_mut!(at cfg_whileloop in cfg_graph).add_jump_det(r2bool_symidx);
                }else{
                    return Err(anyhow!("whileloop mid_expr can't be void type"));
                }
            } else {
                return Err(anyhow!("找不到astnode的scope"));
            }
        }
        (_, _) => return Err(anyhow!("whileloop中未知RULE,{}不是expr或stmt", ast_expr_node)),
    }
    Ok(())
}
pub fn process_label_symbol(cfg_node:u32,scope_node:u32,label_name:String,symtab:&mut SymTab)->Result<RcSymIdx>{
    let label_symidx = add_symbol!({Symbol::new(scope_node,label_name)} 
        with_field TYPE:{Type::Label} 
        with_field IS_LITERAL:{true}
        with_field LABEL_CFG_NODE:{cfg_node}
        with_field DEF_INSTRS_VEC:{Vec::<usize>::new()}
    to symtab);
    Ok(label_symidx)
}
pub fn find_label_of_cfg_node(cfg_node:u32,cfg_graph:&mut CfgGraph, instr_slab:&mut InstrSlab<NhwcInstr>)->Result<RcSymIdx>{
    match &node!(at cfg_node in cfg_graph).op_label_instr{
        Some(instr) => {
            let instr = *instr;
            match &instr!(at instr in instr_slab)?.instr_type{
                NhwcInstrType::Label { label_symidx } => {
                    Ok(label_symidx.clone())
                },
                _ => panic!()
            }
        }
        _ => {
            return Err(anyhow!("can't find label of cfg_node:{cfg_node}"))
        }
    }
}
pub fn find_or_new_label_to_cfg_node(cfg_node:u32,scope_node:u32,label_name:String,symtab:&mut SymTab,cfg_graph:&mut CfgGraph, instr_slab:&mut InstrSlab<NhwcInstr>) -> Result<RcSymIdx>{
    match &node!(at cfg_node in cfg_graph).op_label_instr{
        Some(instr) => {
            let instr = *instr;
            match &instr!(at instr in instr_slab)?.instr_type{
                NhwcInstrType::Label { label_symidx } => {
                    Ok(label_symidx.clone())
                },
                _ => panic!()
            }},
        None => {
            let label_symidx = process_label_symbol(cfg_node, scope_node, label_name, symtab)?;
            let label_body_instr_struct = NhwcInstrType::new_label(label_symidx.clone()).into();
            node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(label_body_instr_struct, instr_slab)?;
            Ok(label_symidx)
        },
    }
}
fn parse_forloop2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, scope_tree:&ScopeTree, et_tree:&mut EtTree, symtab:&mut SymTab, ast2scope:&HashMap<u32, u32>, ast_before_node:u32, ast_mid_node:u32,
    ast_after_node:u32, cfg_forloop:u32,  instr_slab:&mut InstrSlab<NhwcInstr>, 
) -> Result<()> {
    let (_, cfg_body_tail_node) = get_head_tail_of_while_or_for_node(cfg_forloop, cfg_graph)?;
    match rule_id!(at ast_before_node in ast_tree) {
        RULE_forBeforeExpression => {
            // push before instr label
            let cfg_for_parent_node = etc::element_remained_after_exclusion_in_vec(direct_parent_nodes!(at cfg_forloop in cfg_graph), cfg_body_tail_node)?;
            // debug_info_yellow!("{:?}",direct_parent_nodes!(at cfg_forloop in cfg_graph));
            let cfg_new_bb_node = insert_bb_between(cfg_for_parent_node, cfg_forloop, cfg_graph, symtab,instr_slab)?;

            let label_before_symidx = process_label_symbol(cfg_for_parent_node,*ast2scope.get(&ast_before_node).unwrap(), "for.before:".to_string(), symtab)?;
            let label_before_instr = NhwcInstrType::new_label(label_before_symidx).into();

            node_mut!(at cfg_new_bb_node in cfg_graph).push_nhwc_instr(label_before_instr, instr_slab)?;
            if let Some(&before_scope) = ast2scope.get(&ast_before_node) {
                let before_parent_scope = direct_parent_node!(at before_scope in scope_tree);
                let before_ast = direct_child_node!(at ast_before_node in ast_tree);
                parse_declvar2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, before_parent_scope, before_ast, cfg_new_bb_node,  ast2scope,instr_slab, )?
            } else {
                return Err(anyhow!("找不到astnode的scope"));
            }
        }
        _ => return Err(anyhow!("forloop中未知RULE,{}不是或forBeforeExpression", ast_before_node)),
    }
    match rule_id!(at ast_mid_node in ast_tree) {
        RULE_forMidExpression => {
            // push before instr label
            let label_mid_symidx = process_label_symbol(cfg_forloop,*ast2scope.get(&ast_mid_node).unwrap(), "for.mid:".to_string(), symtab)?;
            let label_mid_instr = NhwcInstrType::new_label(label_mid_symidx).into();
            node_mut!(at cfg_forloop in cfg_graph).push_nhwc_instr(label_mid_instr, instr_slab)?;
            if let Some(&mid_scope) = ast2scope.get(&ast_mid_node) {
                let mid_parent_scope = direct_parent_node!(at mid_scope in scope_tree);
                let ret_vec = parse_stmt_or_expr2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, mid_parent_scope, ast_mid_node, cfg_forloop,ast2scope,  instr_slab, )?;
                if ret_vec.len()>1{
                    return Err(anyhow!("条件表达式错误，返回类型不能转为bool"))
                }
                if let Some(rst_symidx) =&ret_vec[0]{
                    let r2bool_symidx = force_trans_type_discriminant(cfg_graph, symtab, TypeDiscriminants::I1,  &rst_symidx, ast_mid_node, cfg_forloop,  instr_slab, None, et_tree)?;
                    node_mut!(at cfg_forloop in cfg_graph).add_jump_det(r2bool_symidx);
                } else{
                    return Err(anyhow!("for mid_expr can't be void type"));
                }
            } else {
                return Err(anyhow!("找不到astnode的scope"));
            }
        }
        _ => return Err(anyhow!("forloop中未知RULE,{}不是或forMidExpression", ast_mid_node)),
    }
    match rule_id!(at ast_after_node in ast_tree) {
        RULE_forAfterExpression => {
            // push before instr label

            let cfg_new_bb_node = insert_bb_between(cfg_body_tail_node, cfg_forloop, cfg_graph, symtab, instr_slab)?;

            let label_after_symidx = process_label_symbol(cfg_new_bb_node,*ast2scope.get(&ast_after_node).unwrap(),"for.after:".to_string(), symtab)?;
            let label_after_instr = NhwcInstrType::new_label(label_after_symidx).into();

            node_mut!(at cfg_new_bb_node in cfg_graph).push_nhwc_instr(label_after_instr, instr_slab)?;
            if let Some(&after_scope) = ast2scope.get(&ast_after_node) {
                let after_parent_scope = direct_parent_node!(at after_scope in scope_tree);
                parse_stmt_or_expr2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, after_parent_scope, ast_after_node, cfg_new_bb_node,  ast2scope,instr_slab, )?;
            } else {
                return Err(anyhow!("找不到astnode的scope"));
            }
        }
        _ => return Err(anyhow!("forloop中未知RULE,{}不是或forAfterExpression", ast_after_node)),
    }
    Ok(())
}

fn parse_branch2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, scope_tree:&ScopeTree, et_tree:&mut EtTree, symtab:&mut SymTab, ast2scope:&HashMap<u32, u32>, ast_expr_node:u32, cfg_branch_node:u32, 
    instr_slab:&mut InstrSlab<NhwcInstr>, 
) -> Result<()> {

    match (rule_id!(at ast_expr_node in ast_tree), ast_expr_node) {
        (RULE_expression, expr_node) => {
            if let Some(&expr_scope) = ast2scope.get(&expr_node) {
                let expr_parent_scope = direct_parent_node!(at expr_scope in scope_tree);
                let ret_vec = parse_stmt_or_expr2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, expr_parent_scope, expr_node, cfg_branch_node,ast2scope,  instr_slab, )?;
                if ret_vec.len()>1{
                    return Err(anyhow!("{:?} number of ret value is not 1",ret_vec))
                }
                let r2bool_symidx;
                if let Some(rst_symidx) = &ret_vec[0]{
                    r2bool_symidx = force_trans_type_discriminant(cfg_graph, symtab, TypeDiscriminants::I1,  &rst_symidx, expr_node, cfg_branch_node,  instr_slab, None,et_tree)?;
                }else{
                    return Err(anyhow!("条件表达式错误，返回类型不能转为bool"))
                }

                let cfg_true_node = direct_child_node!(at cfg_branch_node in cfg_graph with_predicate {|e| e.weight().cfg_edge_type.is_if_true()});
                let cfg_false_node = direct_child_node!(at cfg_branch_node in cfg_graph with_predicate {|e| e.weight().cfg_edge_type.is_if_false()});
                if cfg_true_node != cfg_false_node{
                    let label_true_symidx = find_or_new_label_to_cfg_node(cfg_true_node,*ast2scope.get(&ast_expr_node).unwrap(), "branch_true".to_string(), symtab,cfg_graph,instr_slab)?;
                    let label_false_symidx = find_or_new_label_to_cfg_node(cfg_false_node,*ast2scope.get(&ast_expr_node).unwrap(), "branch_false".to_string(), symtab,cfg_graph,instr_slab)?;
                    let br_branch_instr_struct = NhwcInstrType::new_br(r2bool_symidx.clone(),label_true_symidx,label_false_symidx).into();
                    node_mut!(at cfg_branch_node in cfg_graph).push_nhwc_instr(br_branch_instr_struct, instr_slab)?;
                }else {
                    // let jump_instr_struct = NhwcInstrType::new_jump(label_false_symidx).into();
                    // node_mut!(at cfg_branch_node in cfg_graph).push_nhwc_instr(jump_instr_struct, instr_slab)?;
                    panic!();
                }

                node_mut!(at cfg_branch_node in cfg_graph).add_jump_det(r2bool_symidx);
            } else {
                return Err(anyhow!("找不到astnode的scope"));
            }
        }
        (_, _) => return Err(anyhow!("不正确的astnode")),
    }

    Ok(())
}
fn process_literal(symtab:&mut SymTab, const_literal:&String, ) -> Result<RcSymIdx> {
    // 我们认为 constant 的scope node 都是全局的
    // match find!(symbol mut {const_literal.clone()} of scope {0} in symtab debug symtab_graph ){
    match symtab.get_mut_symbol_verbose(const_literal.clone(), 0) {
        Result::Ok(const_sym) => {
            // do nothing 找到了同样的常量
            // let use_counter = find!(field mut USE_COUNTER:UseCounter in const_sym).unwrap();
        }
        Err(_) => {
            add_symbol!({Symbol::new(0, const_literal.clone())} 
                // with_field USE_COUNTER:{UseCounter{ use_count: 1}} 
                with_field TYPE:{TypeDiscriminants::new_from_const_str(const_literal).into()} 
                with_field IS_TEMP:{false}
                with_field IS_LITERAL:{true}
            to symtab );
        }
    }
    let rc_literal_symidx = SymIdx::new(0, const_literal.to_string()).as_rc();
    Ok(rc_literal_symidx)
}
fn process_func_symbol(
    symtab:&mut SymTab, func_name:&String, is_external:bool,
)->Result<RcSymIdx>{
    let func_symidx = add_symbol!({Symbol::new(0, func_name.clone())} 
        with_field DECLARED_VARS:{vec![]}
        // with_field SSA_REACHING_DEF:{None}
        with_field DEF_INSTRS_VEC:{vec![]}
        with_field IS_TEMP:{false}
        with_field IS_LITERAL:{false}
        with_field IS_EXTERNAL:{is_external}
        with_field GLOBAL_MU_SET:{HashSet::new()} 
        with_field GLOBAL_CHI_SET:{HashSet::new()} 
        with_field LOCAL_MU_SET:{HashSet::new()} 
        with_field LOCAL_CHI_SET:{HashSet::new()} 
    to symtab );
    Ok(func_symidx)
}

/// let the symbol be immediately available in symtab
fn process_symbol(
    ast_tree:&AstTree, scope_tree:&ScopeTree, symtab:&mut SymTab,instr_slab:&mut InstrSlab<NhwcInstr>, decldef_def_or_use:&DeclOrDefOrUse, scope_parent_node:u32, symbol_name:&String, 
    cfg_node:u32,cfg_graph:&mut CfgGraph,op_et_node:Option<u32>,et_tree:&mut EtTree, 
) -> Result<RcSymIdx> {
    // label:variable
    let mut symbol_scope = scope_parent_node;
    let op_dims = if let Some(et_node) = op_et_node.clone() {
        if node!(at et_node in et_tree).has_dims(){ Some(node!(at et_node in et_tree).get_dims()?) }else{ None }
    }else { None };
    match decldef_def_or_use {
        &DeclOrDefOrUse::DeclDef { type_ast_node, is_const } => {
            let var_type: Type ;
            // 这里有两种可能，一种是数组，一种是普通变量，如果是数组，那么et_node 上一定有 dims 字段
            if let Some(op_dims) = op_dims{
                var_type = Type::new_array_dims_may_unknown(Type::new(type_ast_node, ast_tree), op_dims.clone())?;
            }else{
                var_type = Type::new(type_ast_node, ast_tree);
            }
            let symbol_name_cloned = symbol_name.clone();
            // let var_type = Type::new(*type_ast_node, ast_tree);
            // if scope parent node is root, then the variable must be global
            let is_global = scope_parent_node == ST_ROOT;
            // array
            let mut has_unknown_dim = false; 
            if var_type.is_array(){
                for i in op_dims.unwrap(){
                    if i.is_none(){
                        has_unknown_dim = true
                    }
                }
            }
            let rc_symidx = add_symbol!({Symbol::new(scope_parent_node,symbol_name_cloned.clone())}
                with_field TYPE:{
                    if !has_unknown_dim{var_type.clone()} else {var_type.to_ref_ptr_type()?}}
                with_field DEF_CFG_NODE_VEC:{vec![cfg_node]}
                with_field DEF_INSTRS_VEC:{Vec::<usize>::new()}
                with_field IS_GLOBAL:{is_global}
                with_field IS_TEMP:{false} 
                with_field IS_LITERAL:{false}
                with_field IS_FUNC_PARA:{node!(at scope_parent_node in scope_tree).scope_type.is_func()}
            to symtab );
            // if it is global then add global ptr to this global variable and add global variables 
            if is_global{
                let symidx = &rc_symidx.as_ref_borrow();
                let _global_ptr_symidx = add_symbol!({symidx.to_globl_ptr()?.into_symbol()}
                    with_field TYPE:{var_type.to_ref_ptr_type()?}
                    with_field DEF_CFG_NODE_VEC:{vec![cfg_node]}
                    with_field DEF_INSTRS_VEC:{Vec::<usize>::new()}
                    with_field IS_GLOBAL:{is_global}
                    with_field IS_TEMP:{false} 
                    with_field IS_LITERAL:{false}
                    with_field POINTED_SYMIDX:{rc_symidx.clone()}
                to symtab);
                symtab.get_mut_global_info().get_mut_global_vars()?.push(rc_symidx.clone());
            }
            if node!(at cfg_node in cfg_graph).has_func_cor_symidx(){
                let func_symidx = CfgNode::get_func_cor_symidx(node_mut!(at cfg_node in cfg_graph))?;
                symtab.get_mut(&func_symidx.as_ref_borrow())?.get_mut_declared_vars()?.push(rc_symidx.clone());
            }
            if let Some(et_node) = op_et_node.clone(){
                let symidx = &rc_symidx.as_ref_borrow();
                node_mut!(at et_node in et_tree).add_type(symtab.get(&symidx)?.get_type()?.to_ref_ptr_type()?);
            }
            Ok(rc_symidx)
        }
        DeclOrDefOrUse::Use => {
            // 如果是数组类型则需要转化为指针，因为数组在被引用的时候都是作为指针
            while let Err(_) = symtab.get_symbol_verbose(symbol_scope, symbol_name.clone()) {
                if symbol_scope!=ST_ROOT{
                    symbol_scope = direct_parent_node!(at symbol_scope in scope_tree)
                }else{
                    return Err(anyhow!("scope为{}符号表中未找到{:?}", symbol_scope, symbol_name.clone()));
                }
            }
            let rc_symidx = symtab.get_symbol_verbose(symbol_scope, symbol_name.clone())?.rc_symidx.clone();
            if let Some(et_node) = op_et_node.clone(){
                let symidx = &rc_symidx.as_ref_borrow();
                node_mut!(at et_node in et_tree).add_type(symtab.get(&symidx)?.get_type()?.clone());
                // node_mut!(at et_node in et_tree).add_scope_node(scope_parent_node);
            }
            // non-array local variable
            if *symtab.get(&rc_symidx.as_ref_borrow())?.get_is_global()? {
                let symidx = &rc_symidx.as_ref_borrow();
                match symtab.get(&symidx)?.get_type()?{
                    Type::Array { dims, ele_ty } => {
                        // let temp_type = symtab.get(&symidx)?.get_type()?.clone();
                        // let ptr_type = symtab.get(&symidx.to_globl_ptr()?)?.get_type()?.clone();
                        // let temp_symidx = process_temp_symbol(cfg_graph, symtab, &temp_type, scope_parent_node, cfg_node, instr_slab, &mut None, op_et_node, et_tree, "ptr2globl")?;
                        // node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(NhwcInstrType::new_assign(temp_symidx.clone(), symidx.to_globl_ptr()?, ptr_type.clone()).into(), instr_slab)?;
                        Ok(symtab.get(&symidx.to_globl_ptr()?)?.rc_symidx.clone())
                    },
                    _ => {
                        let temp_type = symtab.get(&symidx)?.get_type()?.clone();
                        let ptr_type = symtab.get(&symidx.to_globl_ptr()?)?.get_type()?.clone();
                        let temp_symidx = process_temp_symbol(cfg_graph, symtab, &temp_type, scope_parent_node, cfg_node, instr_slab,  op_et_node, et_tree, "value_from_ptr")?;
                        let load_instr = node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(NhwcInstrType::new_load(temp_symidx.clone(), 
                            symtab.get(&symidx.to_globl_ptr()?)?.rc_symidx.clone(), ptr_type.clone()).into(), instr_slab)?;
                        let _mu_instr = node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(NhwcInstrType::new_mu(rc_symidx.clone(),load_instr).into(),instr_slab)?;
                        Ok(temp_symidx)
                    }
                }
            }else{
                Ok(rc_symidx)
            }
        }
        DeclOrDefOrUse::Def => {
            while let Err(_) = symtab.get_symbol_verbose(symbol_scope, symbol_name.clone()) {
                if symbol_scope!=ST_ROOT{
                    symbol_scope = direct_parent_node!(at symbol_scope in scope_tree);
                }else{
                    return Err(anyhow!("scope为{}符号表中未找到{:?}", symbol_scope, symbol_name.clone()));
                }
            }
            let rc_symidx = &symtab.get_symbol_verbose(symbol_scope, symbol_name.clone())?.rc_symidx;
            let symidx = rc_symidx.as_ref_borrow();
            if let Some(et_node) = op_et_node.clone(){
                node_mut!(at et_node in et_tree).add_type(symtab.get(&symidx)?.get_type()?.clone());
            }
            if *symtab.get(&symidx)?.get_is_global()? {
                match symtab.get(&symidx)?.get_type()?{
                    Type::Array { dims, ele_ty } => {
                        // return the global_ptr if is global variable 
                        Ok(symtab.get(&symidx.to_globl_ptr()?)?.rc_symidx.clone())
                    },
                    _ => {
                        Ok(rc_symidx.clone())
                    }
                }
            }else{
                Ok(rc_symidx.clone())
            }
        },
    }
}
/// if op_et_node is Some it will inject type info to that et_node 
fn process_temp_symbol(
    cfg_graph:&mut CfgGraph, symtab:&mut SymTab, temp_type:&Type,  scope_node:u32, cfg_node:u32,  instr_slab:&mut InstrSlab<NhwcInstr>,
    op_et_node:Option<u32>,et_tree:&mut EtTree,annotation:&str)->Result<RcSymIdx>{
        let rc_temp_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}_{}",symtab.get_global_info().get_temp_counter()?,annotation))} 
            with_field TYPE:{temp_type.clone()} 
            with_field DEF_INSTRS_VEC:{Vec::<usize>::new()}
            with_field IS_TEMP:{true} 
            with_field IS_LITERAL:{false} 
            with_field IS_GLOBAL:{false}
            to symtab );
        let temp_symidx = rc_temp_symidx.as_ref_borrow();

        *symtab.get_mut_global_info().get_mut_temp_counter()? += 1;
        let temp_def_instr = NhwcInstrType::new_def_var(temp_type.clone(), rc_temp_symidx.clone(), None).into();
        if node_mut!(at cfg_node in cfg_graph).has_func_cor_symidx(){
            // when the variable is local to function 
            let rc_func_symidx = node_mut!(at cfg_node in cfg_graph).get_func_cor_symidx()?.clone();
            let func_symidx = rc_func_symidx.as_ref_borrow();
            symtab.get_mut(&func_symidx)?.get_mut_declared_vars()?.push(rc_temp_symidx.clone());

            let alloc_instr = NhwcInstrType::new_alloc(temp_type.clone(), rc_temp_symidx.clone()).into();
            let cfg_entry = get_cfg_entry_by_cfg_node(cfg_graph, symtab, cfg_node)?.ok_or(anyhow!("这个cfg node:{} 没有对应的entry节点",cfg_node))?;
            node_mut!(at cfg_entry in cfg_graph).push_nhwc_instr(alloc_instr, instr_slab)?;
            node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(temp_def_instr, instr_slab)?;

            if let Some(et_node) = op_et_node{
                node_mut!(at et_node in et_tree).add_type(symtab.get(&temp_symidx)?.get_type()?.clone());
            }
        }else{
            // when the variable is global 
            node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(temp_def_instr, instr_slab)?;
        }
        Ok(rc_temp_symidx.clone())
}
///具有赋值性质的会将value的类型强制转换为var的类型，返回转换后的symidx
fn force_trans_type(
    cfg_graph:&mut CfgGraph, symtab:&mut SymTab, symidx_trans_to:&RcSymIdx,  symidx_be_transed:&RcSymIdx, scope_node:u32, cfg_bb:u32, instr_slab:&mut InstrSlab<NhwcInstr>,
    op_et_node:Option<u32>,et_tree:&mut EtTree,
) -> Result<RcSymIdx> {
    let ty_be_transed = symtab.get(&symidx_be_transed.as_ref_borrow())?.get_type()?;
    let ty_trans_to = symtab.get(&symidx_trans_to.as_ref_borrow())?.get_type()?;
    if ty_be_transed.direct_suits(ty_trans_to){
        // suit
        debug_info_blue!("{:?} suits from {:?} to {:?} ",symidx_be_transed,ty_be_transed,ty_trans_to);
        return Ok(symidx_be_transed.clone());
    }
    // if type_be_transed == type_to_trans_to {
    //     return Ok(symidx.clone());
    // }
    match (ty_be_transed.into(), ty_trans_to.into()) {
        (TypeDiscriminants::I32, TypeDiscriminants::F32) => {
            //创建f32类型的临时变量
            let ftmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let i2f_instr = NhwcInstrType::new_int2float(symidx_be_transed.clone(), ftmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(i2f_instr, instr_slab)?;
            return Ok(ftmp_type_symidx);
        }
        (TypeDiscriminants::I32, TypeDiscriminants::I1) => {
            //创建i1类型的变临时量
            let btmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let izero_symidx = process_literal(symtab, &"0".to_string())?;
            let i2b_instr = NhwcInstrType::new_icmp(btmp_type_symidx.clone(), IcmpPlan::Ne, symidx_be_transed.clone(), izero_symidx, Type::I32).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(i2b_instr, instr_slab)?;
            return Ok(btmp_type_symidx);
        }
        (TypeDiscriminants::F32, TypeDiscriminants::I32) => {
            //创建i32类型的临时变量
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let f2i_instr = NhwcInstrType::new_float2int(symidx_be_transed.clone(), itmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(f2i_instr, instr_slab)?;
            return Ok(itmp_type_symidx);
        }
        (TypeDiscriminants::F32, TypeDiscriminants::I1) => {
            //创建i1类型临时变量
            let btmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let fzero_symidx = process_literal(symtab, &"0.0".to_string(), )?;
            let f2b_instr = NhwcInstrType::new_fcmp(btmp_type_symidx.clone(), FcmpPlan::One, symidx_be_transed.clone(), fzero_symidx, Type::F32).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(f2b_instr, instr_slab)?;
            return Ok(btmp_type_symidx);
        }
        (TypeDiscriminants::I1, TypeDiscriminants::I32) => {
            //创建i1类型临时变量
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;            
            let b2i_instr = NhwcInstrType::new_bool2int(symidx_be_transed.clone(), itmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(b2i_instr, instr_slab)?;
            return Ok(itmp_type_symidx);
        }
        (TypeDiscriminants::I1, TypeDiscriminants::F32) => {
            //i1转f32分两步，第一步i1转i32，第二步i32转f32
            //第一步
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let b2i_instr = NhwcInstrType::new_bool2int(symidx_be_transed.clone(), itmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(b2i_instr, instr_slab)?;
            //第二步
            let ftmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let i2f_instr = NhwcInstrType::new_int2float(itmp_type_symidx.clone(), ftmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(i2f_instr, instr_slab)?;
            return Ok(ftmp_type_symidx);
        }
        (TypeDiscriminants::Ptr64 ,TypeDiscriminants::I32) => {
            return Ok(symidx_be_transed.clone())
        }
        (TypeDiscriminants::Array ,TypeDiscriminants::I32) => {
            return Ok(symidx_be_transed.clone())
        }
        _ => return Err(anyhow!("{:?}=>{:?}该类型不支持强制转化",ty_be_transed,ty_trans_to)),
    }
}
fn force_trans_type_discriminant(
    cfg_graph:&mut CfgGraph, symtab:&mut SymTab, ty_trans_to:TypeDiscriminants,  symidx_be_transed:&RcSymIdx, scope_node:u32, cfg_bb:u32, instr_slab:&mut InstrSlab<NhwcInstr>,
    op_et_node:Option<u32>,et_tree:&mut EtTree,
) -> Result<RcSymIdx> {
    let ty_be_transed = symtab.get(&symidx_be_transed.as_ref_borrow())?.get_type()?.into();
    if ty_be_transed == ty_trans_to {
        return Ok(symidx_be_transed.clone());
    }
    match (ty_be_transed, ty_trans_to) {
        (TypeDiscriminants::I32, TypeDiscriminants::F32) => {
            //创建f32类型的临时变量
            let ftmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let i2f_instr = NhwcInstrType::new_int2float(symidx_be_transed.clone(), ftmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(i2f_instr, instr_slab)?;
            return Ok(ftmp_type_symidx);
        }
        (TypeDiscriminants::I32, TypeDiscriminants::I1) => {
            //创建i1类型的变临时量
            let btmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let izero_symidx = process_literal(symtab, &"0".to_string())?;
            let i2b_instr = NhwcInstrType::new_icmp(btmp_type_symidx.clone(), IcmpPlan::Ne, symidx_be_transed.clone(), izero_symidx, Type::I32).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(i2b_instr, instr_slab)?;
            return Ok(btmp_type_symidx);
        }
        (TypeDiscriminants::F32, TypeDiscriminants::I32) => {
            //创建i32类型的临时变量
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let f2i_instr = NhwcInstrType::new_float2int(symidx_be_transed.clone(), itmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(f2i_instr, instr_slab)?;
            return Ok(itmp_type_symidx);
        }
        (TypeDiscriminants::F32, TypeDiscriminants::I1) => {
            //创建i1类型临时变量
            let btmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let fzero_symidx = process_literal(symtab, &"0.0".to_string(), )?;
            let f2b_instr = NhwcInstrType::new_fcmp(btmp_type_symidx.clone(), FcmpPlan::One, symidx_be_transed.clone(), fzero_symidx, Type::F32).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(f2b_instr, instr_slab)?;
            return Ok(btmp_type_symidx);
        }
        (TypeDiscriminants::I1, TypeDiscriminants::I32) => {
            //创建i1类型临时变量
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;            
            let b2i_instr = NhwcInstrType::new_bool2int(symidx_be_transed.clone(), itmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(b2i_instr, instr_slab)?;
            return Ok(itmp_type_symidx);
        }
        (TypeDiscriminants::I1, TypeDiscriminants::F32) => {
            //i1转f32分两步，第一步i1转i32，第二步i32转f32
            //第一步
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let b2i_instr = NhwcInstrType::new_bool2int(symidx_be_transed.clone(), itmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(b2i_instr, instr_slab)?;
            //第二步
            let ftmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let i2f_instr = NhwcInstrType::new_int2float(itmp_type_symidx.clone(), ftmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(i2f_instr, instr_slab)?;
            return Ok(ftmp_type_symidx);
        }
        (TypeDiscriminants::Ptr64 ,TypeDiscriminants::I32) => {
            return Ok(symidx_be_transed.clone())
        }
        (TypeDiscriminants::Array ,TypeDiscriminants::I32) => {
            return Ok(symidx_be_transed.clone())
        }
        _ => return Err(anyhow!("{:?}=>{:?}该类型不支持强制转化",ty_be_transed,ty_trans_to)),
    }
}
///算数运算符自动类型转换，返回转换后两个操作符的symidx
fn autotrans_arith_type(
    cfg_graph:&mut CfgGraph, symtab:&mut SymTab, l_type:&Type, l_symidx:&RcSymIdx, r_type:&Type, r_symidx:&RcSymIdx, scope_node:u32, cfg_bb:u32, instr_slab:&mut InstrSlab<NhwcInstr>,
    op_et_node:Option<u32>,et_tree:&mut EtTree
) -> Result<(RcSymIdx, RcSymIdx)> {
    //adapt函数会去除掉不能进行运算的类型情况
    match (l_type.into(), r_type.into()) {
        (TypeDiscriminants::I32, TypeDiscriminants::F32) => {
            //i32自动转换为f32
            let ftmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let i2f_instr = NhwcInstrType::new_int2float(l_symidx.clone(), ftmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(i2f_instr, instr_slab)?;
            return Ok((ftmp_type_symidx, r_symidx.clone()));
        }
        (TypeDiscriminants::F32, TypeDiscriminants::I32) => {
            //i32转f32
            let ftmp_type_symidx = process_temp_symbol(cfg_graph, symtab,&Type::F32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let i2f_instr = NhwcInstrType::new_int2float(r_symidx.clone(), ftmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(i2f_instr, instr_slab)?;
            return Ok((l_symidx.clone(), ftmp_type_symidx));
        }
        (TypeDiscriminants::I1, TypeDiscriminants::I32) => {
            //i1转i32
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let b2i_instr = NhwcInstrType::new_bool2int(l_symidx.clone(), itmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph).push_nhwc_instr(b2i_instr, instr_slab)?;
            return Ok((itmp_type_symidx, r_symidx.clone()));
        }
        (TypeDiscriminants::I32, TypeDiscriminants::I1) => {
            //i1转i32
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let b2i_instr = NhwcInstrType::new_bool2int(r_symidx.clone(), itmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(b2i_instr, instr_slab)?;
            return Ok((l_symidx.clone(), itmp_type_symidx));
        }
        (TypeDiscriminants::I1, TypeDiscriminants::F32) => {
            //先i1转i32
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let b2i_instr = NhwcInstrType::new_bool2int(l_symidx.clone(), itmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(b2i_instr, instr_slab)?;
            //再i32转f32
            let ftmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let i2f_instr = NhwcInstrType::new_int2float(itmp_type_symidx, ftmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(i2f_instr, instr_slab)?;
            return Ok((ftmp_type_symidx, r_symidx.clone()));
        }
        (TypeDiscriminants::F32, TypeDiscriminants::I1) => {
            //i1转i32
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let b2i_instr = NhwcInstrType::new_bool2int(r_symidx.clone(), itmp_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(b2i_instr, instr_slab)?;
            //i32转f32
            let ftmp2_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb,  instr_slab, op_et_node,et_tree, "")?;
            let i2f_instr = NhwcInstrType::new_int2float(itmp_type_symidx, ftmp2_type_symidx.clone()).into();
            node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(i2f_instr, instr_slab)?;
            return Ok((l_symidx.clone(), ftmp2_type_symidx));
        }
        (TypeDiscriminants::I32, TypeDiscriminants::I32) | (TypeDiscriminants::F32, TypeDiscriminants::F32) | (TypeDiscriminants::I1, TypeDiscriminants::I1) => {
            //相同不用转换
            return Ok((l_symidx.clone(), r_symidx.clone()));
        }
        _ => return Err(anyhow!("操作数类型不能参与运算 {l_type:?} {r_type:?} {l_symidx:?} {r_symidx:?} et_node:{:?}",op_et_node)),
    }
}
///逻辑运算符自动类型转换，返回转换后的两个操 {l_symidx:?作符的symidx
fn autotrans_logic_type(
    cfg_graph:&mut CfgGraph, symtab:&mut SymTab, l_type:&Type, l_symidx:&RcSymIdx, r_type:&Type, r_symidx:&RcSymIdx, scope_node:u32, cfg_node1:u32,cfg_node2:u32, instr_slab:&mut InstrSlab<NhwcInstr>,
    op_et_node:Option<u32>,et_tree:&mut EtTree
) -> Result<(RcSymIdx, RcSymIdx)> {
    //adapt函数会去除掉不能进行运算的类型情况
    match (l_type.into(), r_type.into()) {
        (TypeDiscriminants::I32, TypeDiscriminants::F32) => {
            //i32转i1
            //由于除了i1都要转为i1，这里变量名中ltmp指左操作符转换后的临时symidx，rtmp指右操作符
            //处理左操作数，i32转i1
            let ltmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node1,  instr_slab, op_et_node,et_tree, "i32_to_bool")?;
            //转i1相当于和0进行不等比较，这里调用常数处理函数处理0
            let izero_symidx = process_literal(symtab, &"0".to_string(), )?;
            let i2b_instr = NhwcInstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne, l_symidx.clone(), izero_symidx, Type::I1).into();
            node_mut!(at cfg_node1 in cfg_graph ).push_nhwc_instr(i2b_instr, instr_slab)?;
            //处理右操作数，f32转i1
            let rtmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node2,  instr_slab, op_et_node,et_tree, "f32_to_bool")?;
            let fzero_symidx = process_literal(symtab, &"0.0".to_string(), )?;
            let f2b_instr = NhwcInstrType::new_fcmp(rtmp_type_symidx.clone(), FcmpPlan::One, r_symidx.clone(), fzero_symidx, Type::F32).into();
            node_mut!(at cfg_node2 in cfg_graph ).push_nhwc_instr(f2b_instr, instr_slab)?;
            return Ok((ltmp_type_symidx, rtmp_type_symidx));
        }
        (TypeDiscriminants::F32, TypeDiscriminants::I32) => {
            //左操作数f32转i1
            let ltmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node1,  instr_slab, op_et_node,et_tree, "f32_to_bool")?;
            let fzero_symidx = process_literal(symtab, &"0.0".to_string(), )?;
            let f2b_instr = NhwcInstrType::new_fcmp(ltmp_type_symidx.clone(), FcmpPlan::One, l_symidx.clone(), fzero_symidx, Type::F32).into();
            node_mut!(at cfg_node1 in cfg_graph ).push_nhwc_instr(f2b_instr, instr_slab)?;
            //右操作数i32转i1
            let rtmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node2,  instr_slab, op_et_node,et_tree, "i32_to_bool")?;
            let izero_symidx = process_literal(symtab, &"0".to_string(), )?;
            let i2b_instr = NhwcInstrType::new_icmp(rtmp_type_symidx.clone(), IcmpPlan::Ne, r_symidx.clone(), izero_symidx, Type::I32).into();
            node_mut!(at cfg_node2 in cfg_graph ).push_nhwc_instr(i2b_instr, instr_slab)?;
            return Ok(( ltmp_type_symidx, rtmp_type_symidx));
        }
        (TypeDiscriminants::I1, TypeDiscriminants::I32) => {
            //处理右操作数i32转i1
            let rtmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node2,  instr_slab, op_et_node,et_tree, "i32_to_bool")?;
            let izero_symidx = process_literal(symtab, &"0".to_string(), )?;
            let i2b_instr = NhwcInstrType::new_icmp(rtmp_type_symidx.clone(), IcmpPlan::Ne, r_symidx.clone(), izero_symidx, Type::I32).into();
            node_mut!(at cfg_node2 in cfg_graph ).push_nhwc_instr(i2b_instr, instr_slab)?;
            return Ok((l_symidx.clone(), rtmp_type_symidx));
        }
        (TypeDiscriminants::I32, TypeDiscriminants::I1) => {
            //处理左操作数i32转i1
            let ltmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node1,  instr_slab, op_et_node,et_tree, "i32_to_bool")?;
            let izero_symidx = process_literal(symtab, &"0".to_string(), )?;
            let i2b_instr = NhwcInstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne, l_symidx.clone(), izero_symidx, Type::I32).into();
            node_mut!(at cfg_node1 in cfg_graph ).push_nhwc_instr(i2b_instr, instr_slab)?;
            return Ok((ltmp_type_symidx.clone(), r_symidx.clone()));
        }
        (TypeDiscriminants::I1, TypeDiscriminants::F32) => {
            //处理右操作数f32转i1
            let rtmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node2,  instr_slab, op_et_node,et_tree, "f32_to_bool")?;
            let fzero_symidx = process_literal(symtab, &"0.0".to_string(), )?;
            let i2b_instr = NhwcInstrType::new_fcmp(rtmp_type_symidx.clone(), FcmpPlan::One, r_symidx.clone(), fzero_symidx, Type::F32).into();
            node_mut!(at cfg_node2 in cfg_graph ).push_nhwc_instr(i2b_instr, instr_slab)?;
            return Ok((l_symidx.clone(), rtmp_type_symidx.clone()));
        }
        (TypeDiscriminants::F32, TypeDiscriminants::I1) => {
            //左操作数f32转i1
            let ltmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node1,  instr_slab, op_et_node,et_tree, "f32_to_bool")?;
            let fzero_symidx = process_literal(symtab, &"0.0".to_string(), )?;
            let i2b_instr = NhwcInstrType::new_fcmp(ltmp_type_symidx.clone(), FcmpPlan::One, l_symidx.clone(), fzero_symidx, Type::F32).into();
            node_mut!(at cfg_node1 in cfg_graph ).push_nhwc_instr(i2b_instr, instr_slab)?;
            return Ok((ltmp_type_symidx.clone(), r_symidx.clone()));
        }
        (TypeDiscriminants::F32, TypeDiscriminants::F32) => {
            //左操作数f32转i1
            let ltmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node1,  instr_slab, op_et_node,et_tree, "f32_to_bool")?;
            let fzero_symidx = process_literal(symtab, &"0.0".to_string(), )?;
            let lf2b_instr = NhwcInstrType::new_fcmp(ltmp_type_symidx.clone(), FcmpPlan::One, l_symidx.clone(), fzero_symidx.clone(), Type::F32).into();
            node_mut!(at cfg_node1 in cfg_graph ).push_nhwc_instr(lf2b_instr, instr_slab)?;
            //右操作数f32转i1
            let rtmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node2,  instr_slab, op_et_node,et_tree, "f32_to_bool")?;
            let rf2b_instr = NhwcInstrType::new_fcmp(rtmp_type_symidx.clone(), FcmpPlan::One, r_symidx.clone(), fzero_symidx.clone(), Type::F32).into();
            node_mut!(at cfg_node2 in cfg_graph ).push_nhwc_instr(rf2b_instr, instr_slab)?;
            return Ok((ltmp_type_symidx, rtmp_type_symidx));
        }
        (TypeDiscriminants::I32, TypeDiscriminants::I32) => {
            //左操作数i32转i1
            let ltmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node1,  instr_slab, op_et_node,et_tree, "i32_to_bool")?;
            let izero_symidx = process_literal(symtab, &"0".to_string(), )?;
            let li2b_instr = NhwcInstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne, l_symidx.clone(), izero_symidx.clone(), Type::I32).into();
            node_mut!(at cfg_node1 in cfg_graph ).push_nhwc_instr(li2b_instr, instr_slab)?;
            //右操作数i32转i1
            let rtmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node2,  instr_slab, op_et_node,et_tree, "i32_to_bool")?;
            let ri2b_instr = NhwcInstrType::new_icmp(rtmp_type_symidx.clone(), IcmpPlan::Ne, r_symidx.clone(), izero_symidx.clone(), Type::I32).into();
            node_mut!(at cfg_node2 in cfg_graph ).push_nhwc_instr(ri2b_instr, instr_slab)?;
            return Ok((ltmp_type_symidx, rtmp_type_symidx));
        }
        (TypeDiscriminants::I1, TypeDiscriminants::I1) => return Ok((l_symidx.clone(), r_symidx.clone())),
        _ => return Err(anyhow!("操作数无法进行逻辑计算")),
    }
}
///处理自增运算符，不分左右,统一返回增加instr和赋值instr
fn process_self_increment(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, scope_node:u32, cfg_bb:u32, instr_slab:&mut InstrSlab<NhwcInstr>,ast2scope:&HashMap<u32, u32>,
) -> Result<(RcSymIdx, RcSymIdx)> {
    //取自增运算符下的symidx和type
    let rc_var_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb,  instr_slab,ast2scope, )?.unwrap();
    let var_symidx = rc_var_symidx.as_ref_borrow();

    let var_type = symtab.get(&var_symidx)?.get_type()?.clone();
    //读取变量的instr
    let tmp_loadvar_symidx = process_temp_symbol(cfg_graph, symtab, &var_type, scope_node, cfg_bb,  instr_slab, Some(et_node),et_tree, "")?;
    let load_instr = NhwcInstrType::new_assign(tmp_loadvar_symidx.clone(), rc_var_symidx.clone(),var_type.clone()).into();
    node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(load_instr, instr_slab)?;
    //自增的instr，以及类型转换
    let tmp_addvar_symidx = process_temp_symbol(cfg_graph, symtab, &var_type, scope_node, cfg_bb,  instr_slab, Some(et_node),et_tree, "self_incremenet")?;
    match &var_type {
        Type::F32 => {
            let fone_symidx = process_literal(symtab, &"1.0".to_string(), )?;
            let add_instr = NhwcInstrType::new_add(tmp_addvar_symidx.clone(), rc_var_symidx.clone(), fone_symidx, var_type.clone()).into();
            node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(add_instr, instr_slab)?;
        }
        Type::I32 => {
            let ione_symidx = process_literal(symtab, &"1".to_string(), )?;
            let add_instr = NhwcInstrType::new_add(tmp_addvar_symidx.clone(), rc_var_symidx.clone(), ione_symidx, var_type.clone()).into();
            node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(add_instr, instr_slab)?;
        }
        _ => return Err(anyhow!("自增自减操作数不是数字类型的")),
    }

    //自增后赋值的instr
    let assign_instr = NhwcInstrType::new_assign(rc_var_symidx.clone(), tmp_addvar_symidx.clone(),var_type.clone()).into();
    node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(assign_instr, instr_slab)?;
    Ok((tmp_addvar_symidx, tmp_loadvar_symidx))
}

///处理自减运算符，不分左右
fn process_self_attennuation(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, scope_node:u32, cfg_bb:u32,  instr_slab:&mut InstrSlab<NhwcInstr>,ast2scope:&HashMap<u32, u32>,
) -> Result<(RcSymIdx, RcSymIdx)> {
    //取操作数的symidx和type
    let rc_var_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb,  instr_slab, ast2scope,)?.unwrap();
    let var_symidx = rc_var_symidx.as_ref_borrow();

    let var_type = symtab.get(&var_symidx)?.get_type()?.clone();
    //读取变量的instr
    let tmp_loadvar_symidx = process_temp_symbol(cfg_graph, symtab, &var_type, scope_node, cfg_bb,  instr_slab, Some(et_node),et_tree, "")?;
    let load_instr = NhwcInstrType::new_assign(tmp_loadvar_symidx.clone(), rc_var_symidx.clone(),var_type.clone()).into();
    node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(load_instr, instr_slab)?;
    //自减的instr
    let tmp_subvar_symidx = process_temp_symbol(cfg_graph, symtab, &var_type.clone(), scope_node, cfg_bb,  instr_slab, Some(et_node),et_tree, "")?;
    match &var_type {
        Type::F32 => {
            let fone_symidx = process_literal(symtab, &"1.0".to_string(), )?;
            let sub_instr = NhwcInstrType::new_sub(tmp_subvar_symidx.clone(), rc_var_symidx.clone(), fone_symidx, var_type.clone()).into();
            node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(sub_instr, instr_slab)?;
        }
        Type::I32 => {
            let ione_symidx = process_literal(symtab, &"1".to_string(), )?;
            let sub_instr = NhwcInstrType::new_sub(tmp_subvar_symidx.clone(), rc_var_symidx.clone(), ione_symidx, var_type.clone()).into();
            node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(sub_instr, instr_slab)?;
        }
        _ => {
            panic!("自增自减操作数不是数字类型的");
        }
    }
    //自减后的赋值instr
    let assign_instr = NhwcInstrType::new_assign(rc_var_symidx.clone(), tmp_subvar_symidx.clone(),var_type.clone()).into();
    node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(assign_instr, instr_slab)?;
    Ok((tmp_subvar_symidx, tmp_loadvar_symidx))
}
///处理操作符，获取下面的两个操作数，按算数操作符进行两个操作数的自动类型转换，返回（结果的临时变量，左操作数，右操作数，临时变量的类型）
fn process_arithop(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, et_node:u32, scope_tree:&ScopeTree, symtab:&mut SymTab, root_et_node:u32, scope_node:u32, cfg_bb:u32, instr_slab:&mut InstrSlab<NhwcInstr>,ast2scope:&HashMap<u32, u32>,
) -> Result<(RcSymIdx, RcSymIdx, RcSymIdx, Type, Type)> {
    let next_nodes = direct_child_nodes!(at root_et_node in et_tree with_predicate {|e|!e.weight().et_edge_type.is_deleted()});
    check_child_nodes(&next_nodes, 2)?;
    //取左操作数symidx和type
    let rc_l_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_nodes[0], scope_node, cfg_bb, instr_slab, ast2scope,)?.unwrap();
    let l_symidx = rc_l_symidx.as_ref_borrow();

    let l_type = symtab.get(&l_symidx)?.get_type()?.clone();
    //取右操作数symidx和type
    let rc_r_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_nodes[1], scope_node, cfg_bb, instr_slab, ast2scope,)?.unwrap();
    let r_symidx = rc_r_symidx.as_ref_borrow();

    let r_type = symtab.get(&r_symidx)?.get_type()?.clone();


    //将左右操作数进行类型自动转换
    let (rc_l_symidx, rc_r_symidx) = autotrans_arith_type(cfg_graph, symtab, &l_type, &rc_l_symidx, &r_type, &rc_r_symidx, scope_node, cfg_bb, instr_slab, Some(et_node),et_tree)?;
    let (l_symidx,r_symidx) = (rc_l_symidx.as_ref_borrow(),rc_r_symidx.as_ref_borrow());

    let var_type = symtab.get(&l_symidx)?.get_type()?.clone();
    let tmp_var_symidx = process_temp_symbol(cfg_graph, symtab,&var_type, scope_node, cfg_bb,  instr_slab, Some(et_node),et_tree, "arithop")?;


    //在复合操作符如+=这类操作符在类型转换后需要返回左操作数（即变量）的类型
    Ok((tmp_var_symidx, rc_l_symidx.clone(), rc_r_symidx.clone(), var_type, l_type))
}

fn process_logicop(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, scope_node:u32, cfg_node1:u32,cfg_node2:u32, instr_slab:&mut InstrSlab<NhwcInstr>,ast2scope:&HashMap<u32, u32>,
) -> Result<(RcSymIdx, RcSymIdx, RcSymIdx)> {
    let next_nodes = direct_child_nodes!(at et_node in et_tree with_predicate {|e|!e.weight().et_edge_type.is_deleted()});
    check_child_nodes(&next_nodes, 2)?;
    //取左操作数的symidx和type
    debug_info_red!("process logicaop at et_node:{} to cfg_node:{cfg_node1}",next_nodes[0]);
    let rc_l_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_nodes[0], scope_node, cfg_node1, instr_slab, ast2scope,)?.unwrap();
    let l_symidx = rc_l_symidx.as_ref_borrow();

    let l_type = symtab.get(&l_symidx)?.get_type()?.clone();
    //取右操作数的symidx和type
    debug_info_red!("process logicaop at et_node:{} to cfg_node:{cfg_node2}",next_nodes[1]);
    let rc_r_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_nodes[1], scope_node, cfg_node2, instr_slab, ast2scope,)?.unwrap();
    let r_symidx = rc_r_symidx.as_ref_borrow();

    let r_type = symtab.get(&r_symidx)?.get_type()?.clone();
    //左右操作数自动逻辑类型转换
    let (l_symidx, r_symidx) = autotrans_logic_type(cfg_graph, symtab, &l_type, &rc_l_symidx, &r_type, &rc_r_symidx, scope_node, cfg_node1, cfg_node2, instr_slab, Some(et_node),et_tree)?;

    // let tmp_var_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node1,  instr_slab, Some(et_node),et_tree, "logic")?;

    Ok((l_symidx.clone(), l_symidx, r_symidx))
}
///处理比较运算符，先将操作数根据运算符自动转换，根据操作符生成对应instr并返回和临时变量symidx
fn process_cmp_op(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, scope_node:u32, cfg_bb:u32, instr_slab:&mut InstrSlab<NhwcInstr>,cmp_plan:CmpPlan,ast2scope:&HashMap<u32, u32>,
) -> Result<(NhwcInstr,RcSymIdx)>{
    let next_nodes = direct_child_nodes!(at et_node in et_tree with_predicate {|e|!e.weight().et_edge_type.is_deleted()});
    check_child_nodes(&next_nodes, 2)?;
    //取右操作数symidx和type
    let rc_r_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_nodes[1], scope_node, cfg_bb, instr_slab, ast2scope,)?.unwrap();
    let r_symidx = rc_r_symidx.as_ref_borrow();

    let r_type = symtab.get(&r_symidx)?.get_type()?.clone();

    //取左操作数symidx和type
    let rc_l_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_nodes[0], scope_node, cfg_bb, instr_slab, ast2scope,)?.unwrap();
    let l_symidx = rc_l_symidx.as_ref_borrow();

    let l_type = symtab.get(&l_symidx)?.get_type()?.clone();

    //将左右操作数进行类型自动转换
    let (rc_transed_l_symidx, rc_transed_r_symidx) = autotrans_arith_type(cfg_graph, symtab, &l_type, &rc_l_symidx, &r_type, &rc_r_symidx, scope_node, cfg_bb, instr_slab, Some(et_node),et_tree)?;
    let (transed_l_symidx, transed_r_symidx) = (rc_l_symidx.as_ref_borrow(),rc_r_symidx.as_ref_borrow());

    let tmp_var_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb,  instr_slab, Some(et_node),et_tree, "cmp")?;
    //做instr
    // if !(symtab.get(&transed_l_symidx)?.get_type()?.is_f_32() == symtab.get(&transed_r_symidx)?.get_type()?.is_f_32()){
    //     return Err(anyhow!("{:?} and {:?} type {:?} neq {:?}",transed_l_symidx,transed_r_symidx,symtab.get(&transed_l_symidx)?.get_type()?,symtab.get(&transed_l_symidx)?.get_type()?))
    // }
    let ty = symtab.get(&transed_l_symidx)?.get_type()?.clone();
    if ty.is_f_32(){
        let fcmp_instr = NhwcInstrType::new_fcmp(tmp_var_symidx.clone(), cmp_plan.to_fcmp_plan(), rc_transed_l_symidx, rc_transed_r_symidx, ty).into();
        Ok((fcmp_instr,tmp_var_symidx))
    }else {
        let icmp_instr = NhwcInstrType::new_icmp(tmp_var_symidx.clone(), cmp_plan.to_icmp_plan(), rc_transed_l_symidx, rc_transed_r_symidx, ty).into();
        Ok((icmp_instr,tmp_var_symidx))
    }
}
///处理调用函数，返回一个是option，some表示返回tmp_symidx（非void返回）为了et处理返回symidx,none（void返回），第二个是push的调用函数的instr，stmt要用到。（好tm臃肿）
fn process_call(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, 
    scope_node:u32, cfg_bb:u32, instr_slab:&mut InstrSlab<NhwcInstr>,ast2scope:&HashMap<u32, u32>,
) -> Result<(Option<RcSymIdx>,usize)> {
    //取函数名和实参
    let func_name_and_args = direct_child_nodes!(at et_node in et_tree with_predicate {|e| !e.weight().et_edge_type.is_deleted()});
    let func_name_et_node = func_name_and_args[0];
    let et_type = &node!(at func_name_et_node in et_tree).et_node_type;
    let func_name_str ;
    match et_type {
        EtNodeType::Symbol { rc_symidx:_, ast_node, text:_, decldef_def_or_use } => {
            let ast_node = *ast_node;
            func_name_str = node!(at ast_node in ast_tree).op_text.clone();
        }
        _ => {
            return Err(anyhow!("et生成错误，call节点下第一个不是函数名"))
        }
    }
    let rc_callee_func_symidx = &symtab.get(&SymIdx::new(0, func_name_str.clone().unwrap()))?.rc_symidx.clone();
    let callee_func_symidx = rc_callee_func_symidx.as_ref_borrow();
    // 给func call节点的field中添加cor symidx信息
    let rc_caller_func_symidx = node_mut!(at cfg_bb in cfg_graph).get_func_cor_symidx()?.clone();
    let caller_func_symidx = rc_caller_func_symidx.as_ref_borrow();
    // 实参
    let mut rc_para_symidx_vec = vec![];
    for &para_et_node in func_name_and_args[1..].iter() {
        let rc_para_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, para_et_node, scope_node, cfg_bb, instr_slab, ast2scope,)?.unwrap();
        let para_symidx = rc_para_symidx.as_ref_borrow();

        debug_info_red!("process_et to be {:?} in call ",rc_para_symidx);
        let para_symidx = match &symtab.get(&para_symidx)?.get_type()?{
            Type::Array { dims, ele_ty } => {
                let ty = symtab.get(&para_symidx)?.get_type()?.clone();
                let temp_symidx = process_temp_symbol(cfg_graph, symtab, &ty.arr2ptr()?, scope_node, cfg_bb, instr_slab,  None, et_tree, "array_ele_ptr")?;
                let instr_struct = NhwcInstrType::new_get_element_ptr(temp_symidx.clone()
                    ,rc_para_symidx.clone(),ty,vec![]
                ).into();
                let _getelementptr_instr = node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(instr_struct, instr_slab)?;
                temp_symidx
            },
            _ => rc_para_symidx.clone(),
        };
        rc_para_symidx_vec.push(para_symidx);
    }
    let ret_type = if let Type::Fn { arg_syms, ret_sym } = symtab.get(&callee_func_symidx)?.get_type()?.clone(){
        //检查形参和实参是否一致
        if rc_para_symidx_vec.len() == arg_syms.len(){
            for arg_idx in 0..arg_syms.len(){
                let transed_symidx = force_trans_type(cfg_graph, symtab, &arg_syms[arg_idx], &rc_para_symidx_vec[arg_idx], scope_node, cfg_bb, instr_slab,  Some(et_node), et_tree)?;
                *rc_para_symidx_vec.get_mut(arg_idx).unwrap() = transed_symidx; 
            }
        }else{
            return Err(anyhow!("传入实参与函数形参数量不符"))
        }
        symtab.get(&ret_sym.as_ref_borrow())?.get_type()?.clone()
    }else{
        return Err(anyhow!("调用对象不是函数类型"))
    };
    if let Type::Void = ret_type{
        let call_instr_struct = NhwcInstrType::new_func_call(None, rc_callee_func_symidx.clone(), rc_para_symidx_vec.clone(), ret_type).into();
        let call_instr = node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(call_instr_struct, instr_slab)?;
        for rc_para_symidx in rc_para_symidx_vec{
            let para_symidx = rc_para_symidx.as_ref_borrow();
        }
        Ok((None,call_instr))
    }else{
        let tmp_symidx = process_temp_symbol(cfg_graph, symtab, &ret_type, scope_node, cfg_bb,  instr_slab, Some(et_node),et_tree, format!("ret_of_{}",func_name_str.unwrap()).as_str())?;
        let call_instr_struct = NhwcInstrType::new_func_call(Some(tmp_symidx.clone()), rc_callee_func_symidx.clone(), rc_para_symidx_vec.clone(), ret_type).into();
        let call_instr = node_mut!(at cfg_bb in cfg_graph ).push_nhwc_instr(call_instr_struct, instr_slab)?;
        for rc_para_symidx in rc_para_symidx_vec.iter().dedup(){
            let para_symidx = rc_para_symidx.as_ref_borrow();
        }
        Ok((Some(tmp_symidx),call_instr))
    }
}
// static mut a:i32 = 5;

fn process_et(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, scope_node:u32, cfg_node:u32, instr_slab:&mut InstrSlab<NhwcInstr>,ast2scope:&HashMap<u32, u32>,
) -> Result<Option<RcSymIdx>> {
    debug_info_red!("process_et et_node {} ",et_node );
    // if et_node == 429 {
    //     unsafe {
    //         a -= 1;
    //         if a< 0{
    //             remove_isolate_nodes_from_dfs(et_tree, direct_parent_node!(at et_node in et_tree));
    //             return Err(anyhow!(" process_et meet 429"));
    //         }
    //     }
    // }
    // generate_png_by_graph(et_tree, "debug_et".to_string(), &[Config::NodeIndexLabel]);
    if node!(at et_node in et_tree).gen_nhwc_cached_rc_symidx.is_none(){
        let et_node_ty = &node!(at et_node in et_tree).et_node_type.clone();
        let op_symidx = match &et_node_ty {
            EtNodeType::Operator { op, ast_node, text: _, op_rc_symidx: op_symidx } => {
                match op {
                    super::et_node::ExprOp::Mul => {
                        if let Some(_) = direct_child_node!(at et_node in et_tree ret_option) {
                            let (tmp_var_symidx, l_symidx, r_symidx, var_type, _) =
                                process_arithop(ast_tree, cfg_graph, et_tree,et_node, scope_tree, symtab, et_node, scope_node, cfg_node, instr_slab, ast2scope,)?;
                            let mul_instr = NhwcInstrType::new_mul(tmp_var_symidx.clone(), l_symidx, r_symidx, var_type).into();
                            node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(mul_instr, instr_slab)?;
                            Some(tmp_var_symidx)
                        } else{
                            panic!("操作符{}下缺少符号", et_node);
                        }
                    }
                    super::et_node::ExprOp::Add => {
                        if let Some(_) = direct_child_node!(at et_node in et_tree ret_option) {
                            let (tmp_var_symidx, l_symidx, r_symidx, var_type, _) =
                                process_arithop(ast_tree, cfg_graph, et_tree, et_node,scope_tree, symtab, et_node, scope_node, cfg_node, instr_slab, ast2scope,)?;

                            let add_instr = NhwcInstrType::new_add(tmp_var_symidx.clone(), l_symidx, r_symidx, var_type).into();
                            node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(add_instr, instr_slab)?;

                            Some(tmp_var_symidx)
                        } else {
                            return Err(anyhow!("操作符{}下缺少符号", et_node));
                        }
                    }
                    super::et_node::ExprOp::Sub => {
                        if let Some(_) = direct_child_node!(at et_node in et_tree ret_option) {
                            let (tmp_var_symidx, l_symidx, r_symidx, var_type, _) =
                                process_arithop(ast_tree, cfg_graph, et_tree,et_node, scope_tree, symtab, et_node, scope_node, cfg_node, instr_slab, ast2scope,)?;
                            // println!("lsymidx is {:?} while r_symidx is {:?}",l_symidx,r_symidx);
                            let sub_instr = NhwcInstrType::new_sub(tmp_var_symidx.clone(), l_symidx, r_symidx, var_type).into();
                            node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(sub_instr, instr_slab)?;

                            Some(tmp_var_symidx)
                        } else {
                            return Err(anyhow!("操作符{}下缺少符号", et_node));
                        }
                    }
                    super::et_node::ExprOp::Div => {
                        if let Some(_) = direct_child_node!(at et_node in et_tree ret_option) {
                            let (tmp_var_symidx, l_symidx, r_symidx, var_type, _) =
                                process_arithop(ast_tree, cfg_graph, et_tree,et_node, scope_tree, symtab, et_node, scope_node, cfg_node, instr_slab, ast2scope,)?;
                            let div_instr = NhwcInstrType::new_div(tmp_var_symidx.clone(), l_symidx, r_symidx, var_type).into();
                            node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(div_instr, instr_slab)?;

                            Some(tmp_var_symidx)
                        } else {
                            return Err(anyhow!("操作符{}下缺少符号", et_node));
                        }
                    }
                    super::et_node::ExprOp::Mod => {
                        if let Some(_) = direct_child_node!(at et_node in et_tree ret_option) {
                            let (tmp_var_symidx, l_symidx, r_symidx, var_type, _) =
                                process_arithop(ast_tree, cfg_graph, et_tree,et_node, scope_tree, symtab, et_node, scope_node, cfg_node, instr_slab,ast2scope, )?;

                            let mod_instr = NhwcInstrType::new_mod(tmp_var_symidx.clone(), l_symidx, r_symidx, var_type).into();
                            node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(mod_instr, instr_slab)?;

                            Some(tmp_var_symidx)
                        } else {
                            return Err(anyhow!("操作符{}下缺少符号", et_node));
                        }
                    }
                    //逻辑运算符
                    super::et_node::ExprOp::LogicalOr | super::et_node::ExprOp::LogicalAnd => {
                        if let Some(_) = direct_child_node!(at et_node in et_tree ret_option) {
                            let (br_node,new_br_node) = process_short_logic(cfg_node,cfg_graph,op,instr_slab)?;
                            let (tmp_var_symidx, l_symidx, r_symidx) = process_logicop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_node,new_br_node, instr_slab,ast2scope, )?;

                            let c_cfg_true_node = direct_child_node!(at new_br_node in cfg_graph with_predicate {|e| e.weight().cfg_edge_type.is_if_true()|| e.weight().cfg_edge_type.is_body_head()});
                            let c_cfg_false_node = direct_child_node!(at new_br_node in cfg_graph with_predicate {|e| e.weight().cfg_edge_type.is_if_false()|| e.weight().cfg_edge_type.is_direct() });
                            let c_label_true_symidx = find_or_new_label_to_cfg_node(c_cfg_true_node,scope_node+et_node+new_br_node, "branch_short_circuit_c_true".to_string(), symtab,cfg_graph,instr_slab)?;
                            let c_label_false_symidx = find_or_new_label_to_cfg_node(c_cfg_false_node,scope_node+et_node+new_br_node, "branch_short_circuit_c_false".to_string(), symtab,cfg_graph,instr_slab)?;

                            //  = NhwcInstrType::new_logic_and(tmp_var_symidx.clone(), l_symidx, r_symidx, Type::I2).into();
                            let p_cfg_true_node = direct_child_node!(at br_node in cfg_graph with_predicate {|e| e.weight().cfg_edge_type.is_if_true() || e.weight().cfg_edge_type.is_body_head()});
                            let p_cfg_false_node = direct_child_node!(at br_node in cfg_graph with_predicate {|e| e.weight().cfg_edge_type.is_if_false()  || e.weight().cfg_edge_type.is_direct() });
                            let p_label_true_symidx = find_or_new_label_to_cfg_node(p_cfg_true_node,scope_node+et_node+new_br_node, "branch_short_circuit_p_true".to_string(), symtab,cfg_graph,instr_slab)?;
                            let p_label_false_symidx = find_or_new_label_to_cfg_node(p_cfg_false_node,scope_node+et_node+new_br_node, "branch_short_circuit_p_false".to_string(), symtab,cfg_graph,instr_slab)?;

                            let logic_a_br_instr = NhwcInstrType::new_br(l_symidx,p_label_true_symidx,p_label_false_symidx).into();
                            node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(logic_a_br_instr, instr_slab)?;
                            let logic_b_br_instr = NhwcInstrType::new_br(r_symidx,c_label_true_symidx,c_label_false_symidx).into();
                            node_mut!(at new_br_node in cfg_graph ).push_nhwc_instr(logic_b_br_instr, instr_slab)?;

                            Some(tmp_var_symidx)
                        } else {
                            return Err(anyhow!("操作符{}下缺少符号", et_node));
                        }
                    }
                    super::et_node::ExprOp::LogicalNot => {
                        if let Some(next_node) = direct_child_node!(at et_node in et_tree ret_option) {
                            //取操作数的symidx和type
                            let rc_symbol_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_node, scope_node, cfg_node, instr_slab, ast2scope,)?.unwrap();
                            
                            let symbol_type = symtab.get(&rc_symbol_symidx.as_ref_borrow())?.get_type()?.clone();

                            //将数字类型操作数转换为bool类型，bool类型不需要转换
                            let num2bool_tmp_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_node,  instr_slab, Some(et_node),et_tree, "booltrans")?;
                            match symbol_type {
                                Type::F32 => {
                                    let fzero_symidx = process_literal(symtab, &"0.0".to_string(), )?;
                                    let f2b_instr = NhwcInstrType::new_fcmp(num2bool_tmp_symidx.clone(), FcmpPlan::One, rc_symbol_symidx, fzero_symidx, Type::F32).into();
                                    node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(f2b_instr, instr_slab)?;
                                }
                                Type::I32 => {
                                    let izero_symidx = process_literal(symtab, &"0".to_string(), )?;
                                    let i2b_instr = NhwcInstrType::new_icmp(num2bool_tmp_symidx.clone(), IcmpPlan::Ne, rc_symbol_symidx, izero_symidx, Type::I32).into();
                                    node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(i2b_instr, instr_slab)?;
                                }
                                Type::I1 => {
                                    let izero_symidx = process_literal(symtab, &"0".to_string(), )?;
                                    let i2b_instr = NhwcInstrType::new_icmp(num2bool_tmp_symidx.clone(), IcmpPlan::Ne, rc_symbol_symidx, izero_symidx, Type::I1).into();
                                    node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(i2b_instr, instr_slab)?;
                                }
                                _ => return Err(anyhow!("类型{:?}不能进行逻辑运算", symbol_type)),
                            }
                            let tmp_var_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node,cfg_node,  instr_slab, Some(et_node),et_tree, "logicnot")?;
                            let logicnot_instr = NhwcInstrType::new_logic_not(tmp_var_symidx.clone(), num2bool_tmp_symidx, Type::I1).into();
                            node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(logicnot_instr, instr_slab)?;

                            Some(tmp_var_symidx)
                        } else {
                            return Err(anyhow!("操作符{}下缺少符号", et_node));
                        }
                    }
                    //位运算符
                    super::et_node::ExprOp::BitwiseOr => todo!(),
                    super::et_node::ExprOp::BitwiseAnd => todo!(),
                    super::et_node::ExprOp::BitwiseXor => todo!(),
                    super::et_node::ExprOp::BitwiseNot => todo!(),
                    super::et_node::ExprOp::LShift => todo!(),
                    super::et_node::ExprOp::RShift => todo!(),
                    super::et_node::ExprOp::DivAssign => todo!(),
                    super::et_node::ExprOp::MulAssign => todo!(),
                    super::et_node::ExprOp::PlusAssign => todo!(),
                    super::et_node::ExprOp::MinusAssign => todo!(),
                    super::et_node::ExprOp::Cast => return Err(anyhow!("unsupported cast operator at et_node {}",et_node)),
                    //比较运算符
                    super::et_node::ExprOp::Eq => {
                        let (eq_instr,eq_tmp_symidx) = process_cmp_op(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node,scope_node, cfg_node, instr_slab, CmpPlan::Eq,ast2scope,)?;
                        node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(eq_instr, instr_slab)?;
                        Some(eq_tmp_symidx)
                    }
                    super::et_node::ExprOp::NEq => {
                        let (ne_instr,ne_tmp_symidx) = process_cmp_op(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_node,instr_slab, CmpPlan::Ne,ast2scope,)?;
                        node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(ne_instr, instr_slab)?;
                        Some(ne_tmp_symidx)
                    }
                    super::et_node::ExprOp::Less => {
                        let (slt_instr,slt_tmp_symidx) = process_cmp_op(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_node,instr_slab, CmpPlan::Lt,ast2scope,)?;
                        node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(slt_instr, instr_slab)?;
                        Some(slt_tmp_symidx)
                    }
                    super::et_node::ExprOp::Greater => {
                        let (sgt_instr,sgt_tmp_symidx) = process_cmp_op(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_node,instr_slab, CmpPlan::Gt,ast2scope,)?;
                        node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(sgt_instr, instr_slab)?;
                        Some(sgt_tmp_symidx)
                    }
                    super::et_node::ExprOp::LEq => {
                        let (sle_instr,sle_tmp_symidx) = process_cmp_op(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_node,instr_slab, CmpPlan::Le,ast2scope,)?;
                        node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(sle_instr, instr_slab)?;
                        Some(sle_tmp_symidx)
                    }
                    super::et_node::ExprOp::GEq => {
                        let (sge_instr,sge_tmp_symidx) = process_cmp_op(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_node, instr_slab, CmpPlan::Ge,ast2scope,)?;
                        node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(sge_instr, instr_slab)?;
                        Some(sge_tmp_symidx)
                    }
                    //调用函数
                    super::et_node::ExprOp::Call => {
                        if let (Some(tmp_symidx),_) = process_call(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_node, instr_slab, ast2scope,)?{
                            Some(tmp_symidx)
                        }
                        //如果函数没有临时变量接收返回值，说明返回的是void类型，那么说明这个是个单支stmt（就不会在这里处理），或者错误将void返回值赋给一个变量（应该报错）。
                        else{
                            None
                        }
                    }
                    //正负号
                    super::et_node::ExprOp::Negative => {
                        if let Some(abs_symbol) = direct_child_node!(at et_node in et_tree ret_option){
                            if let Some(rc_symbol_symidx) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, abs_symbol, scope_node, cfg_node, instr_slab, ast2scope,)?{
                                let symbol_type = symtab.get(&rc_symbol_symidx.as_ref_borrow())?
                                    .get_type()?.clone();
                                let neg_tmp_symidx = process_temp_symbol(cfg_graph, symtab, &symbol_type, scope_node, cfg_node, instr_slab,  Some(et_node), et_tree, "")?;
                                let zero_symidx = 
                                match symbol_type{
                                    Type::I32 => {
                                        process_literal(symtab, &"0".to_string(), )?
                                    },
                                    Type::F32 => {
                                        process_literal(symtab, &"0.0".to_string(), )?
                                    },
                                    Type::I1 => {
                                        process_literal(symtab, &"0".to_string(), )?
                                    },
                                    _ =>{
                                        return Err(anyhow!("错误的操作数类型 at et_node {}",et_node));
                                    }
                                };
                                let neg_instr:NhwcInstr = NhwcInstrType::new_sub(neg_tmp_symidx.clone(), zero_symidx, rc_symbol_symidx, symbol_type).into();
                                node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(neg_instr, instr_slab)?;
                                Some(neg_tmp_symidx)
                            }else{
                                return Err(anyhow!("操作符{}下缺少符号", et_node));
                            }
                        }else{
                            return Err(anyhow!("操作符{}下缺少符号", et_node));
                        }
                    },
                    super::et_node::ExprOp::Positive => {
                        if let Some(abs_symbol) = direct_child_node!(at et_node in et_tree ret_option){
                            if let Some(symbol_symidx) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, abs_symbol, scope_node, cfg_node, instr_slab, ast2scope,)?{
                                Some(symbol_symidx)
                            }else{
                                return Err(anyhow!("操作符{}下缺少符号", et_node));
                            }
                        }else{
                            return Err(anyhow!("操作符{}下缺少符号", et_node));
                        }
                    },
                    //引用与解引用
                    super::et_node::ExprOp::AddrOf => todo!(),
                    super::et_node::ExprOp::Deref => {return Err(anyhow!("find deref at {:?}",et_node))},
                    super::et_node::ExprOp::DotMember => todo!(),
                    super::et_node::ExprOp::ArrowMember => todo!(),
                    //单目运算符
                    super::et_node::ExprOp::LPlusPlus => {
                        if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret_option) {
                            let (tmp_addvar_symidx, _) =
                                process_self_increment(ast_tree, cfg_graph, et_tree, scope_tree, symtab, symbol_node, scope_node, cfg_node, instr_slab, ast2scope,)?;
                            Some(tmp_addvar_symidx)
                        } else {
                            return Err(anyhow!("操作符{}下缺少符号", et_node));
                        }
                    }
                    super::et_node::ExprOp::RPlusPlus => {
                        if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret_option) {
                            let (_, tmp_loadvar_symidx) =
                                process_self_increment(ast_tree, cfg_graph, et_tree, scope_tree, symtab, symbol_node, scope_node, cfg_node, instr_slab, ast2scope,)?;
                            Some(tmp_loadvar_symidx)
                        } else {
                            return Err(anyhow!("操作符{}下缺少符号", et_node));
                        }
                    }
                    super::et_node::ExprOp::LMinusMinus => {
                        if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret_option) {
                            let (tmp_subvar_symidx, _) =
                                process_self_attennuation(ast_tree, cfg_graph, et_tree, scope_tree, symtab, symbol_node, scope_node, cfg_node, instr_slab, ast2scope,)?;
                            Some(tmp_subvar_symidx)
                        } else {
                            return Err(anyhow!("操作符{}下缺少符号", et_node));
                        }
                    }
                    super::et_node::ExprOp::RMinusMinus => {
                        if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret_option) {
                            let (_, tmp_loadvar_symidx) =
                                process_self_attennuation(ast_tree, cfg_graph, et_tree, scope_tree, symtab, symbol_node, scope_node, cfg_node, instr_slab, ast2scope,)?;
                            Some(tmp_loadvar_symidx)
                        } else {
                            return Err(anyhow!("操作符{}下缺少符号", et_node));
                        }
                    }
                    super::et_node::ExprOp::ArrayIndex => {
                        // debug_info_green!("cur array idx {}",et_node);
                        let et_children = direct_child_nodes!(at et_node in et_tree);
                        let et_l_child = et_children[0];
                        let l_child_dims = if let Some(&et_r_child) = et_children.get(1){
                            // 从右子节点获取 index 符号信息
                            let idx_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_r_child, scope_node, cfg_node, instr_slab, ast2scope,)?.unwrap();
                            let l_child_dims = if node!(at et_node in et_tree).has_dims(){ let mut dims = node!(at et_node in et_tree).get_dims()?.clone(); dims.insert(0,Some(idx_symidx)); dims }else{
                                vec![Some(idx_symidx)]
                            };
                            node_mut!(at et_l_child in et_tree).add_dims(l_child_dims.clone());
                            l_child_dims
                        }else{
                            let l_child_dims = if node!(at et_node in et_tree).has_dims(){ let mut dims = node!(at et_node in et_tree).get_dims()?.clone(); dims.insert(0,None); dims }else{
                                vec![None]
                            };
                            node_mut!(at et_l_child in et_tree).add_dims(l_child_dims.clone());
                            l_child_dims
                        };
                        // 首先查看当前 et_node 有没有 dims 

                        // debug_info_blue!("the current et_node is {}",et_node);

                        //通过 process_et 递归至下一层 根据 declordef 有不同的可能返回值 declare 可能返回指针  
                        let rc_array_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_l_child, scope_node, cfg_node, instr_slab, ast2scope,)?.unwrap();
                        let array_symidx = rc_array_symidx.as_ref_borrow();

                        debug_info_red!("arr ptr {:?}",rc_array_symidx);
                        match &node!(at et_l_child in et_tree).et_node_type {
                            EtNodeType::Symbol { rc_symidx: _, ast_node: _, text: _, decldef_def_or_use:DeclOrDefOrUse::Def } => {
                                // 在最接近 symbol 的一层 array_index 插入 getelementptr 语句
                                let mut l_child_type = node!(at et_l_child in et_tree).get_type()?.clone();
                                debug_info_blue!("left child type {:?}",l_child_type);
                                l_child_type.pop_dim()?;
                                debug_info_blue!("poped left child type {:?} at et_node {}",l_child_type,et_node);
                                node_mut!(at et_node in et_tree).add_type(l_child_type.clone());

                                let mut infered_ty = l_child_type.clone();
                                debug_info_green!("get infered_ty {:?}",infered_ty);
                                for _ in 0..node_mut!(at et_l_child in et_tree).get_dims()?.len()-1{
                                    infered_ty.pop_dim()?;
                                    debug_info_green!("pop to : {:?} at {et_node}",infered_ty);
                                }

                                node_mut!(at et_node in et_tree).add_type(infered_ty.clone());
                                debug_info_green!("all pops finish : {:?} at {et_node}",infered_ty);
                                let array_ty = symtab.get(&array_symidx)?.get_type()?.clone();
                                debug_info_red!("ty:{:?}",array_ty);
                                // let ele_ty = match &array_ty{
                                //     Type::Array { dims: _, ele_ty } => {
                                //         *ele_ty.clone()
                                //     },
                                //     Type::Ptr64 { ty } => {
                                //         ty.get_ele_ty()
                                //     }
                                //     _ => {return Err(anyhow!("在 [] 符号左边的 不是一个array 或 ptr et_node:{}",et_node))}
                                // };

                                node_mut!(at et_node in et_tree).add_type(infered_ty.clone());
                                debug_info_green!("all pops finish : {:?} at {et_node}",infered_ty);
                                let rc_temp_ptr_symidx = process_temp_symbol(cfg_graph, symtab, &infered_ty.to_ref_ptr_type()?, scope_node, cfg_node,  instr_slab,  Some(et_node), et_tree,"index_ptr")?;
                                {
                                    let temp_ptr_symidx = rc_temp_ptr_symidx.as_ref_borrow();

                                    debug_info_red!("temp ptr_syidx is {:?}",rc_temp_ptr_symidx);
                                    let get_ele_ptr_instr_struct = NhwcInstrType::new_get_element_ptr(rc_temp_ptr_symidx.clone(), rc_array_symidx.clone(), array_ty, l_child_dims).into();
                                    node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(get_ele_ptr_instr_struct, instr_slab)?;

                                    add_may_pointed_symidx_to(symtab, &rc_temp_ptr_symidx, &rc_array_symidx)?;
                                }
                                Some(rc_temp_ptr_symidx)
                            },
                            EtNodeType::Symbol { rc_symidx: _, ast_node: _, text: _, decldef_def_or_use:DeclOrDefOrUse::Use } => {
                                // 在最接近 symbol 的一层 array_index 插入 getelementptr 语句
                                let array_ty = {let ty = symtab.get(&array_symidx)?.get_type()?.clone();
                                    if ty.is_ptr_64(){
                                        ty.ptr2arr()?
                                    }else {
                                        ty
                                    }
                                };
                                // debug_info_blue!("array {:?} type is {:?}", array_symidx,array_ty);
                                // 可删此段
                                let l_child_type = node!(at et_l_child in et_tree).get_type()?.clone();
                                // debug_info_blue!("left child type {:?}",l_child_type);
                                // debug_info_blue!("poped left child type {:?}",l_child_type);

                                // such as  a[3][2] (use) where a is a 2 dim i32 array , infer to be i32 by pop dims according to the idx dims
                                let mut infered_ty = l_child_type.clone();
                                debug_info_green!("get infered_ty {:?} at ast",infered_ty);
                                for _ in 0..node_mut!(at et_l_child in et_tree).get_dims()?.len(){
                                    infered_ty.pop_dim()?;
                                    debug_info_green!("pop to : {:?} at {et_node}",infered_ty);
                                }
                                node_mut!(at et_node in et_tree).add_type(infered_ty.clone());
                                debug_info_green!("all pops finish : {:?} at {et_node}",infered_ty);

                                let rc_temp_ptr_symidx = process_temp_symbol(cfg_graph, symtab, &infered_ty.to_ref_ptr_type()?, scope_node, cfg_node,  instr_slab,  Some(et_node), et_tree,"array_ptr")?;
                                {
                                    let temp_ptr_symidx = rc_temp_ptr_symidx.as_ref_borrow();

                                    let get_ele_ptr_instr_struct = NhwcInstrType::new_get_element_ptr(rc_temp_ptr_symidx.clone(), rc_array_symidx.clone(), array_ty, l_child_dims).into();
                                    node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(get_ele_ptr_instr_struct, instr_slab)?;
                                    debug_info_red!("temp ptr_syidx is {:?} while array_symidx is {:?}",rc_temp_ptr_symidx,rc_array_symidx);
                                    add_may_pointed_symidx_to(symtab, &rc_temp_ptr_symidx, &rc_array_symidx)?;
                                }

                                // 这里要分情况，如果不是寻求变量而是寻求它的某个维度的指针，就不能用这个，只有索引维度恰好等于数组维度的时候才需要用load 
                                if !infered_ty.is_array() && !infered_ty.is_ptr_64(){
                                    let temp_symidx = process_temp_symbol(cfg_graph, symtab, &infered_ty, scope_node, cfg_node,  instr_slab,  Some(et_node), et_tree,"array_ele")?;
                                    let load_ele_instr_struct = NhwcInstrType::new_load(temp_symidx.clone(), rc_temp_ptr_symidx.clone(), infered_ty.to_ref_ptr_type()?).into();
                                    let load_ele_instr = node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(load_ele_instr_struct, instr_slab)?;
                                    let pointed_symidx = symtab.get(&rc_temp_ptr_symidx.as_ref_borrow())?.get_pointed_symidx()?;
                                    let _mu_instr = node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(NhwcInstrType::new_mu(pointed_symidx.clone(), load_ele_instr).into(), instr_slab)?;
                                    Some(temp_symidx)
                                }else {
                                    Some(rc_temp_ptr_symidx)
                                }
                                
                            },
                            EtNodeType::Symbol { rc_symidx: _, ast_node: _, text: _, decldef_def_or_use:DeclOrDefOrUse::DeclDef { type_ast_node: _, is_const } } => {
                                // 可删此段
                                let l_child_type = node!(at et_l_child in et_tree).get_type()?.clone();
                                // debug_info_blue!("left child type {:?}",l_child_type);
                                // debug_info_blue!("poped left child type {:?}",l_child_type);
                                node_mut!(at et_node in et_tree).add_type(l_child_type);

                                let array_ty = symtab.get(&array_symidx)?.get_type()?.clone();
                                // 非temp 变量需要手动 new_var
                                let defvar_instr_struct = NhwcInstrType::new_def_var(array_ty, rc_array_symidx.clone(), None).into();
                                node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(defvar_instr_struct, instr_slab)?;
                                Some(rc_array_symidx.clone())
                            },
                            _ => {
                                node_mut!(at et_node in et_tree).add_type(symtab.get(&array_symidx)?.get_type()?.clone());
                                Some(rc_array_symidx.clone())
                            }
                        }
                    },
                    super::et_node::ExprOp::ArrayWrapper => {
                        // 遇到arraywrapper后，就不会由 process_et 递归处理了
                        let mut array_ele_map = ArrayEleMap::new();
                        // 这里假定了et_node 父亲一定是 assign 并且左子节点一定有等号
                        let et_assign_node = direct_parent_node!(at et_node in et_tree);
                        let array_ty = node!(at et_assign_node in et_tree).get_type()?.clone();
                        match &array_ty{
                            Type::Array { dims, ele_ty } => {
                                // debug_info_red!("{:?}",dims);
                                
                                // because symidx maybe const symbol so you should match the parsing error 
                                let mut reversed_remained_dims = vec![];
                                let mut has_uninitialized_dims = false;
                                for op_symidx in dims{
                                    let rc_symidx = match op_symidx.as_ref(){
                                        Some(symidx) => { symidx },
                                        None => { has_uninitialized_dims = true; break; },
                                    };
                                    let symidx = rc_symidx.as_ref_borrow();
                                    let idx:usize = match symidx.symbol_name.parse(){
                                        std::result::Result::Ok(idx) => {
                                            idx
                                        },
                                        Err(_) => {
                                            symtab.get(&symidx)?.get_const_cor_literal_symidx()?.symbol_name.parse().unwrap()
                                        },
                                    };
                                    reversed_remained_dims.push(idx);
                                }
                                if !has_uninitialized_dims{
                                    reversed_remained_dims.reverse();

                                    // add values to value_map according to initializer
                                    array_initialize( et_tree, &mut array_ele_map, &ele_ty, &mut reversed_remained_dims, &mut 0, ast_tree, cfg_graph, scope_tree, symtab, et_node, scope_node, cfg_node, instr_slab, ast2scope,)?;
                                    debug_info_red!("{:?}",array_ele_map);
                                    let rc_initializer_symidx = process_literal(symtab, &format!("{{{:?}}} ", array_ele_map), )?;
                                    let initializer_symidx = rc_initializer_symidx.as_ref_borrow();

                                    symtab.get_mut(&initializer_symidx)?.add_value(Value::new_array(array_ele_map, dims.clone().into_iter().map(|x| x.unwrap()).collect_vec(), *ele_ty.clone()));
                                    symtab.get_mut(&initializer_symidx)?.add_type(array_ty);
                                    Some(rc_initializer_symidx.clone())
                                }else {
                                    return Err(anyhow!("has_uninitialized dims when initializing eles: {:?} array {:?}",array_ele_map,array_ty));
                                }
                            },
                            _ => {
                                return Err(anyhow!("数组初始化的左侧不是数组类型"))
                            }
                        }
                    },
                    crate::toolkit::et_node::ExprOp::Assign => {
                        let op_values = direct_child_nodes!(at et_node in et_tree with_predicate {|e|!e.weight().et_edge_type.is_deleted()});
                        check_child_nodes(&op_values.clone(), 2)?;

                        let left_child_et_node = op_values[0];
                        let right_child_et_node = op_values[1];

                        // 这里我们需要先遍历左边再遍历右边，因为 类型推导 的实现依赖于这个顺序
                        // 后序遍历 左边
                        let rc_l_symidx =  process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, left_child_et_node, scope_node, cfg_node, instr_slab, ast2scope,)?.unwrap();
                        let l_symidx = rc_l_symidx.as_ref_borrow(); 
                        // let var_type = find!(field TYPE:Type at var_symidx in symtab debug symtab_graph ).unwrap().clone();
                        let l_type = symtab.get(&l_symidx)?.get_type()?.clone();
                        node_mut!(at et_node in et_tree).add_type(l_type.clone());

                        // 后序遍历 右边
                        let rc_r_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, right_child_et_node, scope_node, cfg_node, instr_slab, ast2scope,)?.unwrap();
                        let r_symidx = rc_r_symidx.as_ref_borrow();
                        // let value_type = find!(field TYPE:Type at value_symidx in symtab debug symtab_graph ).unwrap().clone();
                        let r_type = symtab.get(&r_symidx)?.get_type()?.clone();

                        if let EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use:DeclOrDefOrUse::DeclDef { type_ast_node, is_const }} = &node!(at left_child_et_node in et_tree).et_node_type {
                            if *is_const {
                                // here we should transform value of const symidx r_symidx into the target type
                                let val = Value::from_symidx(&r_symidx)?;
                                let r_symidx = val.force_to_ty(&l_type)?.to_symidx()?;
                                symtab.get_mut(&rc_symidx.as_ref_borrow())?.add_const_cor_literal_symidx(r_symidx);
                            }
                        };

                        node_mut!(at et_node in et_tree).add_type(l_type.clone());

                        //如果结果和变量类型不同，添加自动转化instr
                        match (&l_type,&r_type){
                            (Type::Ptr64 { ty:l_deref_var_type },_)=> {
                                let transed_value_symidx = force_trans_type_discriminant(cfg_graph, symtab, l_deref_var_type.as_ref().into(),  &rc_r_symidx, scope_node, cfg_node, instr_slab, Some(et_node),et_tree)?;
                                let store_instr_struct = NhwcInstrType::new_store(rc_l_symidx.clone(), l_type.clone(),  transed_value_symidx, *l_deref_var_type.clone()).into();
                                node_mut!(at et_node in et_tree).add_type(*l_deref_var_type.clone());
                                let pointed_symidx = symtab.get(&l_symidx)?.get_pointed_symidx()?;

                                let store_instr = node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(store_instr_struct, instr_slab)?;
                                let _chi_instr = node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(NhwcInstrType::new_chi(pointed_symidx.clone(), pointed_symidx.clone(), store_instr).into(), instr_slab)?;
                                
                                Some(rc_l_symidx.clone())
                            },
                            (Type::Array { dims: _l_dims, ele_ty: l_ele_ty },Type::Array { dims: _r_dims, ele_ty: r_ele_ty }) => {
                                // 这里是数组专属初始化
                                if r_ele_ty != l_ele_ty {
                                    return Err(anyhow!("数组初始化时 左右元素类型不同 at et_node:{}",et_node))
                                }
                                let r_value = symtab.get(&r_symidx)?.get_value()?.clone();
                                let value_map = match r_value{
                                    Value::Array { value_map, dims: _, ele_ty: _ } => {value_map},
                                    _ => {return Err(anyhow!("右边必须是 array 类型"))}
                                };
                                let rc_temp_ptr_symidx = process_temp_symbol(cfg_graph, symtab, &l_ele_ty.to_ref_ptr_type()?, scope_node, cfg_node,  instr_slab,  Some(et_node), et_tree,"array_init_ptr")?;
                                let temp_ptr_symidx = &rc_temp_ptr_symidx.as_ref_borrow();
                                let pointed_symidx = add_may_pointed_symidx_to(symtab, &rc_temp_ptr_symidx, &rc_l_symidx)?;

                                let get_ele_ptr_instr_struct = NhwcInstrType::new_get_element_ptr(rc_temp_ptr_symidx.clone(), rc_l_symidx.clone(), l_type.clone(), vec![]).into();
                                node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(get_ele_ptr_instr_struct, instr_slab)?;
                                let array_len = l_type.get_mem_len()?;
                                process_literal(symtab, &array_len.to_string(), )?;
                                let func_call_instr_struct = NhwcInstrType::new_func_call(None, 
                                    symtab.get_symbol_verbose(0,"memset".to_string())?.rc_symidx.clone(), 
                                    vec![rc_temp_ptr_symidx.clone(),
                                        SymIdx::new(0, "0".to_string()).as_rc(),
                                        RcSymIdx::new(array_len.into())],
                                        Type::Void).into();
                                let func_call_instr = node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(func_call_instr_struct, instr_slab)?;
                                let chi_instr_struct =  NhwcInstrType::new_chi(
                                    pointed_symidx.clone(),
                                    pointed_symidx.clone(),
                                     func_call_instr).into();
                                node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(chi_instr_struct, instr_slab)?;

                                for (&offset,value) in value_map.iter(){
                                    let value_symidx = value.to_symidx()?;
                                    process_literal(symtab, &value_symidx.symbol_name, )?;
                                    let array_idx_vec = deduce_linear_offset_by_weights(offset, r_type.get_array_dim_weight_vec()?.into_iter().map(|s| s.borrow().symbol_name.parse().unwrap()).collect_vec());
                                    debug_info_red!("deduce linear_offset_by_weights from {} into {:?}",offset,array_idx_vec);
                                    for &array_idx in array_idx_vec.iter(){
                                        process_literal(symtab, &array_idx.to_string(), )?;
                                    }

                                    let rc_temp_ptr_symidx = process_temp_symbol(cfg_graph, symtab, &l_ele_ty.to_ref_ptr_type()?, scope_node, cfg_node,  instr_slab,  Some(et_node), et_tree,"array_init_ptr")?;
                                    let get_ele_ptr_instr_struct = NhwcInstrType::new_get_element_ptr(rc_temp_ptr_symidx.clone(), rc_l_symidx.clone(), l_type.clone(), array_idx_vec.iter().map(|idx| Some(SymIdx::from_str(idx.to_string().as_str()).as_rc())).collect_vec()).into();
                                    node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(get_ele_ptr_instr_struct, instr_slab)?;

                                    let pointed_symidx = add_may_pointed_symidx_to(symtab, &rc_temp_ptr_symidx, &rc_l_symidx)?;
                                    // let transed_value_symidx = force_trans_type(cfg_graph, symtab, &l_deref_var_type, &r_type, &r_symidx, scope_node, cfg_bb, instr_slab, Some(et_node),et_tree)?;
                                    let store_instr_struct = NhwcInstrType::new_store(rc_temp_ptr_symidx.clone(), l_type.to_ref_ptr_type()?,  value_symidx.as_rc(), *l_ele_ty.clone()).into();

                                    let store_instr = node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(store_instr_struct, instr_slab)?;
                                    let _chi_instr = node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(NhwcInstrType::new_chi(pointed_symidx.clone(), pointed_symidx.clone(), store_instr).into(), instr_slab)?;
                                }
                                Some(rc_l_symidx.clone())
                            },
                            _ => {
                                if *symtab.get(&l_symidx)?.get_is_global()?{
                                    let new_value_symidx = force_trans_type_discriminant(cfg_graph, symtab, l_type.into(),  &rc_r_symidx, scope_node, cfg_node, instr_slab, Some(et_node),et_tree)?;

                                    let rc_l_ptr_symidx = &symtab.get(&l_symidx.to_globl_ptr()?)?.rc_symidx;
                                    let l_ptr_symidx = rc_l_ptr_symidx.as_ref_borrow();

                                    let l_ptr_type = symtab.get(&l_ptr_symidx)?.get_type()?.clone();
                                    let store_instr_struct = NhwcInstrType::new_store(rc_l_ptr_symidx.clone(),l_ptr_type.clone(),new_value_symidx,r_type).into();
                                    node_mut!(at et_node in et_tree).add_type(l_ptr_type);
                                    let store_instr =node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(store_instr_struct, instr_slab)?;
                                    node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(NhwcInstrType::new_chi(rc_l_symidx.clone(), rc_l_symidx.clone(), store_instr).into(), instr_slab)?;
                                    Some(rc_l_symidx.clone())
                                }else{
                                    let new_value_symidx = force_trans_type_discriminant(cfg_graph, symtab, (&l_type).into(),  &rc_r_symidx, scope_node, cfg_node, instr_slab, Some(et_node),et_tree)?;
                                    let assign_instr_struct = NhwcInstrType::new_assign(rc_l_symidx.clone(), new_value_symidx, l_type.clone()).into();
                                    node_mut!(at et_node in et_tree).add_type(l_type);
                                    node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(assign_instr_struct, instr_slab)?;
                                    Some(rc_l_symidx.clone())
                                }
                            }
                        }
                    }
                    _ => {todo!()},
                }
            }
            EtNodeType::Literal { rc_literal_symidx, ast_node, text: _} => {
                let ast_node = *ast_node;
                let literal = &rc_literal_symidx.as_ref_borrow().symbol_name;
                // debug_info_blue!("add constant {}",constant_literal);
                Some(process_literal(symtab, literal, )?)
            }
            EtNodeType::Symbol { rc_symidx: _, ast_node, text: _, decldef_def_or_use }=> {
                let symbol_name_text = &node!(at et_node in et_tree).name_text();
                let symbol_symidx = process_symbol(ast_tree, scope_tree, symtab,instr_slab, decldef_def_or_use, scope_node,symbol_name_text,  cfg_node,cfg_graph,Some(et_node),et_tree)?;
                Some(symbol_symidx)
            }
            _ => return Err(anyhow!("{}不应出现sep类型的et", et_node)),
        };
        node_mut!(at et_node in et_tree).gen_nhwc_cached_rc_symidx = Some(op_symidx.clone());
        Ok(op_symidx)
    }else {
        Ok(node!(at et_node in et_tree).gen_nhwc_cached_rc_symidx.as_ref().unwrap().clone())
    }
}
/// add func symbol to symtab and push def_func instr to cfg_root
fn parse_extern_declfunc2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, symtab:&mut SymTab,et_tree:&mut EtTree, ast2scope:&HashMap<u32, u32>, decl_func_ast_node:u32, func_name_ast_node:u32, cfg_root:u32, instr_slab:&mut InstrSlab<NhwcInstr>,
    scope_tree:&mut ScopeTree,
) -> Result<()> {
    //获取函数所对应的scopenode
    if let Some(&func_scope) = ast2scope.get(&decl_func_ast_node) {
        //获取函数名称
            
        let func_name = &node!(at func_name_ast_node in ast_tree).op_text.clone().unwrap();
        // let name_symidx = SymIdx::new(0, func_name.to_string());
        //获取返回类型
        let ast_retype = find!(rule RULE_declarationSpecifiers then RULE_declarationSpecifier finally RULE_typeSpecifier at decl_func_ast_node in ast_tree).unwrap();
        let ast_retype = direct_child_node!(at ast_retype in ast_tree);
        let _func_rettype = &node!(at ast_retype in ast_tree).op_text;
        //添加到符号表中，
        let rc_func_symidx = process_func_symbol(symtab, func_name,true)?;
        let func_symidx = rc_func_symidx.as_ref_borrow();
        // 添加返回值到符号表
        let rc_func_ret_symidx = process_symbol(ast_tree, scope_tree, symtab,instr_slab, &DeclOrDefOrUse::DeclDef { type_ast_node: ast_retype, is_const: false }, ST_ROOT, &format!("{}_{}",func_name,"ret"), cfg_root, cfg_graph, None,et_tree)?;
        let func_ret_symidx = rc_func_ret_symidx.as_ref_borrow();
        //获取参数列表
        let mut arg_syms = vec![];
        //函数有参数
        let func_type = if let Some(para) = find!(rule RULE_initDeclaratorList 
            then RULE_initDeclarator 
            then RULE_declarator 
            then RULE_directDeclarator 
            finally RULE_parameterTypeList at decl_func_ast_node in ast_tree) {
            // debug_info_red!("decl_func_ast_node {}",decl_func_ast_node);
            let ast_func_args = find_nodes!(rule RULE_parameterList finally RULE_parameterDeclaration at para in ast_tree);
            // debug_info_red!("func_args: {:?}",ast_func_args);
            for ast_parameter_decl_node in ast_func_args {
                let ast_arg_type = find!(rule RULE_declarationSpecifiers then RULE_declarationSpecifier finally RULE_typeSpecifier at ast_parameter_decl_node in ast_tree).unwrap();
                let ast_arg_type = direct_child_node!(at ast_arg_type in ast_tree);

                let (et_sym_node,ast_sym_name_node) ={
                    let sep_node = gen_et::process_any_stmt(et_tree, ast_tree, scope_tree, ast_parameter_decl_node, func_scope);
                    eval_et::compress_et(et_tree, sep_node,&mut can_eliminate_despite_array_idx_and_call, symtab, ST_ROOT, scope_tree, true)?;
                    let mut cur_et_node = sep_node;
                    let ast_sym_name_node;
                    loop{
                        let child_et_node =  direct_child_node!(at cur_et_node in et_tree);
                        if let EtNodeType::Operator {  ast_node: _, text: _, op, op_rc_symidx: op_symidx } = &node!(at child_et_node in et_tree).et_node_type{
                            if let ExprOp::ArrayIndex = op{
                                if node!(at cur_et_node in et_tree).has_dims(){
                                    let mut cur_dims = node_mut!(at cur_et_node in et_tree).get_dims()?.clone();
                                    cur_dims.push(None);
                                    node_mut!(at child_et_node in et_tree).add_dims(cur_dims);
                                }else{
                                    node_mut!(at child_et_node in et_tree).add_dims(vec![]);
                                }
                                cur_et_node = child_et_node
                            }else{
                                let cur_dims = node_mut!(at cur_et_node in et_tree).get_dims()?.clone();
                                node_mut!(at child_et_node in et_tree).add_dims(cur_dims);
                            }
                        }else if let EtNodeType::Symbol { rc_symidx: _, ast_node, text: _, decldef_def_or_use: _ } = &node!(at child_et_node in et_tree).et_node_type{
                            // implies this is symbol et_node
                            ast_sym_name_node = *ast_node;
                            if node!(at cur_et_node in et_tree).has_dims(){
                                let mut cur_dims = node!(at cur_et_node in et_tree).get_dims()?.clone();
                                cur_dims.push(None);
                                node_mut!(at child_et_node in et_tree).add_dims(cur_dims);
                            }
                            cur_et_node = child_et_node;
                            break;
                        }else {
                            panic!("unexpected et_node {}",cur_et_node)
                        }
                    }
                    (cur_et_node,ast_sym_name_node)
                };
                let sym_name = &node!(at ast_sym_name_node in ast_tree).op_text.clone().unwrap();

                let arg_symidx = process_symbol(ast_tree, scope_tree, symtab, instr_slab, &DeclOrDefOrUse::DeclDef { type_ast_node:ast_arg_type , is_const:false}, func_scope, sym_name, cfg_root, cfg_graph,Some(et_sym_node),et_tree)?;
                arg_syms.push(arg_symidx);
            }
            let func_type = Type::Fn { arg_syms: arg_syms.clone(), ret_sym:rc_func_ret_symidx.clone()};
            symtab.get_mut(&func_symidx)?.add_type(func_type.clone());
            symtab.get_mut_global_info().get_mut_external_func_symidx_vec()?.push(rc_func_symidx.clone());
            // label:function
            func_type
        }
        //函数无参数，则不需要处理参数部分
        else {
            let func_type = Type::Fn { arg_syms: vec![], ret_sym:rc_func_ret_symidx.clone()};
            symtab.get_mut(&func_symidx)?.add_type(func_type.clone());
            symtab.get_mut_global_info().get_mut_external_func_symidx_vec()?.push(rc_func_symidx.clone());
            func_type
        };
        //将函数签名转为 global ir
        let func_instr = NhwcInstrType::new_globl(func_type,rc_func_symidx.clone()).into();

        node_mut!(at cfg_root in cfg_graph ).push_nhwc_instr(func_instr, instr_slab)?;
    } else {
        return Err(anyhow!("找不到ast_node:{}对应函数的scopenode!", decl_func_ast_node));
    }
    Ok(())
}

///定义变量的decl转为ir，并通过et查找元素是否合法
fn parse_declvar2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, symtab:&mut SymTab, scope_tree:&ScopeTree, et_tree:&mut EtTree, decl_parent_scope:u32, ast_decl_node:u32, cfg_node:u32, ast2scope:&HashMap<u32, u32>,
    instr_slab:&mut InstrSlab<NhwcInstr>, 
) -> Result<()> {
    //将declaration生成et
    let et_sep_node = process_any_stmt(et_tree, ast_tree, scope_tree, ast_decl_node, decl_parent_scope);
    //如果该节点有子树
    let detail_et_nodes = direct_child_nodes!(at et_sep_node in et_tree);
    for et_item_node in detail_et_nodes {
        // we move the compress et to here because you may define a number dependently in one line (sep) 
        eval_et::compress_et(et_tree, et_item_node, &mut can_eliminate_despite_array_idx_and_call ,symtab, decl_parent_scope, scope_tree, true)?;
        let et_node_type = &node!(at et_item_node in et_tree).et_node_type.clone();
        match et_node_type {
            // 先考虑这个语句存在 = 的情况
            EtNodeType::Operator { op: ExprOp::Assign, ast_node: _, text: _, op_rc_symidx: op_symidx } => {
                let rc_var_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_item_node, decl_parent_scope, cfg_node,  instr_slab, ast2scope,)?.unwrap();
                let var_symidx = rc_var_symidx.as_ref_borrow();
                let var_type = symtab.get(&var_symidx)?.get_type()?.clone();

                // 加入 alloc 指令 分配内存
                if decl_parent_scope != ST_ROOT{
                    // 是 局部变量(在函数内定义的变量)
                    let cfg_entry = get_cfg_entry_by_cfg_node(cfg_graph, symtab, cfg_node)?.with_context(||format!("这个cfg node:{} 没有对应的entry节点",cfg_node))?;
                    let alloc_instr = NhwcInstrType::new_alloc(var_type.clone(), rc_var_symidx.clone()).into();
                    node_mut!(at cfg_entry in cfg_graph ).push_nhwc_instr(alloc_instr, instr_slab)?;
                }else{
                    // 说明这个 cfg_node 就是root ，那么直接把 global 指令加入 root 就行了
                    let global_instr = NhwcInstrType::new_globl(var_type.clone(), rc_var_symidx.clone()).into();
                    node_mut!(at cfg_node in cfg_graph ).insert_nhwc_instr(global_instr, 0,instr_slab)?;
                }

                // 加入 defvar 指令 给变量赋值
                // let defvar_instr = InstrType::new_def_var(var_type.clone(), var_symidx.clone(), Some(transed_value_symidx.clone())).into();
                // node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(defvar_instr, instr_slab)??;
            }
            // 考虑这个语句的 et_sep_item_node 不是 = 的情况
            EtNodeType::Operator { op: ExprOp::ArrayIndex , ast_node: _, text: _, op_rc_symidx: op_symidx } => {
                // debug_info_red!("no =  as start ");
                let _op_values = direct_child_nodes!(at et_item_node in et_tree);
                let rc_var_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_item_node, decl_parent_scope, cfg_node,  instr_slab, ast2scope,)?.unwrap();
                let var_symidx = rc_var_symidx.as_ref_borrow();
                let var_type = symtab.get(&var_symidx)?.get_type()?.clone();
                //大纲：
                //将var_symidx处理看是普通变量还是数组变量，如果是数组，则将value_symidx的内容和var_symidx进行比对整合
                
                // let value_type = find!(field TYPE:Type at value_symidx in symtab debug symtab_graph ).unwrap().clone();

                // 加入 alloc 指令 分配内存
                if decl_parent_scope != ST_ROOT{
                    // local variable
                    let alloc_instr = NhwcInstrType::new_alloc(var_type, rc_var_symidx.clone()).into();
                    let cfg_entry = get_cfg_entry_by_cfg_node(cfg_graph, symtab, cfg_node)?.with_context(||format!("这个cfg node:{} 没有对应的entry节点",cfg_node))?;
                    node_mut!(at cfg_entry in cfg_graph ).push_nhwc_instr(alloc_instr, instr_slab)?;
                }else{
                    // global variable
                    let global_instr = NhwcInstrType::new_globl(var_type.clone(), rc_var_symidx.clone()).into();
                    node_mut!(at cfg_node in cfg_graph ).insert_nhwc_instr(global_instr, 0,instr_slab)?;
                }

                // 加入 defvar 指令 给变量赋值
                // let defvar_instr = InstrType::new_def_var(var_type.clone(), var_symidx.clone(), Some(transed_value_symidx.clone())).into();
                // node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(defvar_instr, instr_slab)?;
            }
            // 首个 operator 不是 = assign 的情况
            EtNodeType::Literal { rc_literal_symidx: _, ast_node: _, text: _ } => todo!(),
            EtNodeType::Symbol { rc_symidx, ast_node, text:_, decldef_def_or_use } => {
                //获得变量类型，做成symidx
                let type_ast_node = find!(rule RULE_declarationSpecifiers then RULE_declarationSpecifier finally RULE_typeSpecifier at ast_decl_node in ast_tree).unwrap();
                let type_ast_node = direct_child_node!(at type_ast_node in ast_tree);
                let var_type = Type::new(type_ast_node, ast_tree);
                let var_str = &rc_symidx.as_ref_borrow().symbol_name;
                let symbol_symidx = process_symbol(ast_tree, scope_tree, symtab,instr_slab, &decldef_def_or_use,  decl_parent_scope,var_str ,cfg_node,cfg_graph,Some(et_item_node),et_tree)?;
                let def_instr = NhwcInstrType::new_def_var(var_type.clone(), symbol_symidx.clone(), None).into();
                let alloc_instr = NhwcInstrType::new_alloc(var_type.clone(), symbol_symidx.clone()).into();
                if decl_parent_scope != ST_ROOT{
                    // function local variables 
                    let cfg_entry =get_cfg_entry_by_cfg_node(cfg_graph, symtab, cfg_node)?.with_context(||format!("这个cfg node:{} 没有对应的entry节点",cfg_node))?;
                    // 注意，这里def_instr 需要放到 cfg_entry 中，不能放到这个basic block，它可能是在一个循环中
                    node_mut!(at cfg_entry in cfg_graph ).push_nhwc_instr(alloc_instr, instr_slab)?;
                    let instr = node_mut!(at cfg_node in cfg_graph ).push_nhwc_instr(def_instr, instr_slab)?;
                    node_mut!(at cfg_node in cfg_graph).get_mut_def_symidx_instr_tuple_vec()?.push((symbol_symidx.clone(),instr));
                }else{
                    // 说明这个 cfg_node 就是root ，那么直接把 global 指令加入 root 就行了
                    let global_instr = NhwcInstrType::new_globl(var_type.clone(), symbol_symidx.clone()).into();
                    node_mut!(at cfg_node in cfg_graph ).insert_nhwc_instr(global_instr, 0,instr_slab)?;
                }
            }
            _ => return Err(anyhow!("{}这里不应该为sep类型", et_item_node)),
        }
    }
    Ok(())
}

/// add func symbol to symtab and push def_func instr to cfg_entry
fn parse_func2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, symtab:&mut SymTab,et_tree:&mut EtTree, ast2scope:&HashMap<u32, u32>, func_def_ast_node:u32, func_name_ast_node:u32, cfg_entry:u32, instr_slab:&mut InstrSlab<NhwcInstr>,
    scope_tree:&mut ScopeTree,
) -> Result<()> {
    //获取函数所对应的scopenode
    if let Some(&func_scope) = ast2scope.get(&func_def_ast_node) {
        //获取函数名称
        let func_name = &node!(at func_name_ast_node in ast_tree).op_text.clone().unwrap();
        // let name_symidx = SymIdx::new(0, func_name.to_string());
        //获取返回类型
        let ast_retype = find!(rule RULE_declarationSpecifiers then RULE_declarationSpecifier finally RULE_typeSpecifier at func_def_ast_node in ast_tree).unwrap();
        let ast_retype = direct_child_node!(at ast_retype in ast_tree);
        //添加到符号表中，
        let rc_func_symidx = process_func_symbol(symtab,  func_name, false)?;
        let func_symidx = rc_func_symidx.as_ref_borrow();
        let _:Vec<_> = etc::dfs(cfg_graph, cfg_entry).iter().map(|&cfg_node|{node_mut!(at cfg_node in cfg_graph).add_func_cor_symidx(rc_func_symidx.clone())}).collect();
        // 添加返回值到符号表
        let func_ret_symidx = process_symbol(ast_tree, scope_tree, symtab,instr_slab, &DeclOrDefOrUse::DeclDef { type_ast_node: ast_retype, is_const: false }, ST_ROOT,&format!("{}_{}",func_name,"ret"), cfg_entry, cfg_graph, None,et_tree)?;
        //获取参数列表
        let mut arg_syms:Vec<RcSymIdx> = vec![];
        //函数有参数
        if let Some(para) = find!(rule RULE_declarator then RULE_directDeclarator finally RULE_parameterTypeList at func_def_ast_node in ast_tree) {
            let ast_func_args = find_nodes!(rule RULE_parameterList finally RULE_parameterDeclaration at para in ast_tree);
            //将函数签名转为ir
            for ast_func_arg in ast_func_args {
                // let ast_para_node = find!(rule RULE_declarator at ast_func_arg in ast_tree).unwrap();
                // let ast_arg_type = find!(rule RULE_declarationSpecifiers at ast_func_arg in ast_tree).unwrap();
                // let func_arg_str = &node!(at ast_para_node in ast_tree).text;
                let et_arg_sep = process_any_stmt(et_tree, ast_tree, scope_tree, ast_func_arg, func_scope);
                eval_et::compress_et(et_tree, et_arg_sep, &mut can_eliminate_despite_array_idx_and_call,symtab, ST_ROOT, scope_tree, true)?;
                let arg_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, direct_child_node!(at et_arg_sep in et_tree), func_scope, direct_child_node!(at cfg_entry in cfg_graph), instr_slab, ast2scope)?.unwrap();
                arg_syms.push(arg_symidx);
            }
            let func_type = Type::Fn { arg_syms: arg_syms.clone(), ret_sym:func_ret_symidx.clone()};
            symtab.get_mut(&func_symidx)?.add_type(func_type);
            // label:function
        }
        //函数无参数，则不需要处理参数部分
        else {
            let func_type = Type::Fn { arg_syms: vec![], ret_sym:func_ret_symidx.clone()};
            symtab.get_mut(&func_symidx)?.add_type(func_type);
        };
        //对所有旗下的cfg_node 加入函数信息
        //做成instr放在cfg的entry里面
        let func_instr = NhwcInstrType::new_def_func(rc_func_symidx.clone(), func_ret_symidx, arg_syms).into();
        // 把信息加入到 ！compilation_unit 中
        symtab.get_mut_global_info().get_mut_all_cfg_func_symidx_entry_tuples()?.push((rc_func_symidx.clone(),cfg_entry));
        // 把cfg entry 信息加入到 func symbol 中
        symtab.get_mut(&func_symidx)?.add_cfg_entry_node(cfg_entry);


        node_mut!(at cfg_entry in cfg_graph ).insert_nhwc_instr(func_instr,0, instr_slab)?;
    } else {
        return Err(anyhow!("找不到{}该函数的scopenode!", func_def_ast_node));
    }
    Ok(())
}

/// 由于cfg 里面包含了其他的一些块和边，例如 branch 块和 after conditioned边
/// 因此我们需要再做一次转化，把边转化成相应的跳转或者调整代码，把所有node 都转化成BasicBlock
pub fn parse_cfg_into_nhwc_cfg(
    cfg_graph:&mut CfgGraph, scope_tree:&mut ScopeTree, ast_tree:&mut AstTree, symtab:&mut SymTab, et_tree:&mut EtTree, ast2scope:&mut HashMap<u32, u32>, instr_slab:&mut InstrSlab<NhwcInstr>,
    symtab_graph:&mut Option<&mut SymTabGraph>,
) -> Result<()> {
    // let (cfg_graph,scope_tree,ast_tree,symtab,et_tree,ast2scope)= (&mut context.cfg_graph , &mut context.scope_tree,&mut context.ast_tree,&mut context.symtab,&mut context.et_tree,&context.ast2scope);

    if let CfgNodeType::Root { static_ast_nodes } = &node!(at CFG_ROOT in cfg_graph).cfg_node_type{
        for &static_ast_node in static_ast_nodes.clone().iter(){
            let op_arg_parenthesis = find!(rule RULE_initDeclaratorList
                then RULE_initDeclarator
                then RULE_declarator
                then RULE_directDeclarator
                finally term LeftParen
                at static_ast_node in ast_tree
            );
            match op_arg_parenthesis{
                Some(_) => {
                    let func_name_ast_node = find!(rule RULE_initDeclaratorList then RULE_initDeclarator then RULE_declarator then RULE_directDeclarator then RULE_directDeclarator finally term Identifier at static_ast_node in ast_tree).unwrap();
                    // resolve declaration of function 2 nhwc
                    // println!("{}", func_name_ast_node);
                    parse_extern_declfunc2nhwc(ast_tree, cfg_graph, symtab, et_tree, &ast2scope, static_ast_node, func_name_ast_node, CFG_ROOT, instr_slab,  scope_tree)?;
                },
                None => {
                    parse_declvar2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, 0, static_ast_node, CFG_ROOT, ast2scope,instr_slab, )?;
                },
            }
        } 
        let global_scope_label = process_label_symbol(CFG_ROOT, ST_ROOT, "global".to_string(), symtab)?;
        node_mut!(at CFG_ROOT in cfg_graph).push_nhwc_instr(NhwcInstrType::new_label(global_scope_label).into(),instr_slab)?;
    }
    //先遍历一遍函数名，将函数名加入到符号表中
    let cfg_funcs = direct_child_nodes!(at CFG_ROOT in cfg_graph);
    for &cfg_entry in cfg_funcs.iter() {
        match &node!(at cfg_entry in cfg_graph).cfg_node_type {
            CfgNodeType::Entry { ast_node, calls_in_func: _ } => {
                //查找函数名称所在节点
                let func_def_ast_node = *ast_node;
                let func_name_ast_node = find!(rule RULE_declarator then RULE_directDeclarator then RULE_directDeclarator finally term Identifier at func_def_ast_node in ast_tree).unwrap();
                parse_func2nhwc(ast_tree, cfg_graph, symtab,et_tree, ast2scope, func_def_ast_node, func_name_ast_node, cfg_entry, instr_slab,  scope_tree)?;
            }
            _ => return Err(anyhow!("entry不是函数签名,cfg出错")),
        }
    }
    //再遍历一遍entry，对于每个函数做dfs,处理函数体
    for &cfg_entry in cfg_funcs.iter() {
        let dfs_vec = dfs_with_priority(cfg_graph,cfg_entry,|e| match &e.weight().cfg_edge_type{
            CfgEdgeType::BodyHead {  } => 4,
            CfgEdgeType::IfFalse {  } => 6,
            CfgEdgeType::Direct {  } => 1,
            CfgEdgeType::IfTrue {  } => 7,
            CfgEdgeType::BodyTail {  } => 5,
        });
        // 遍历一遍这个函数体，确保 将 whileloop cfg_node 存到  scope_node 中 
        for &cfg_node in dfs_vec.iter(){
            if node!(at cfg_node in cfg_graph).cfg_node_type.is_while_loop(){
                // if it is while loop then add current cfg_while_loop 
                match &node!(at cfg_node in cfg_graph).cfg_node_type{
                    CfgNodeType::WhileLoop { ast_expr_node } => {
                        let &scope_expr_node = ast2scope.get(ast_expr_node).unwrap();
                        let while_scope_node = get_while_scope_of_scope_node(scope_expr_node, scope_tree);
                        match &mut node_mut!(at while_scope_node in scope_tree).scope_type{
                            super::scope_node::ScopeType::While { op_cfg_while_node } => {
                                *op_cfg_while_node = Some(cfg_node);
                            },
                            _ => {panic!()}
                        }
                    },
                    _ => {panic!()}
                };
            }
        }
        // firstly parse all branch node 
        for &cfg_node in dfs_vec.iter() {
            let cfgnode = node!(at cfg_node in cfg_graph);
            match &cfgnode.cfg_node_type {
                CfgNodeType::BasicBlock { ast_nodes } => {
                    parse_bb2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, ast_nodes.clone(), cfg_node,  instr_slab)?;
                },
                _ => {}
            };
        }

        for &cfg_node in dfs_vec.iter() {
            // debug_info_yellow!("dfs current is {:?}", cfg_node);
            let cfgnode = node!(at cfg_node in cfg_graph);
            match &cfgnode.cfg_node_type {
                CfgNodeType::Branch { ast_expr_node } => {
                    parse_branch2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_expr_node, cfg_node,  instr_slab)?
                }
                CfgNodeType::Switch { ast_expr_node:_ } => {
                    // parse_branch2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_expr_node, cfg_node, )
                }
                CfgNodeType::ForLoop { ast_before_node, ast_mid_node, ast_after_node } => {
                    parse_forloop2nhwc(
                        ast_tree,
                        cfg_graph,
                        scope_tree,
                        et_tree,
                        symtab,
                        ast2scope,
                        *ast_before_node,
                        *ast_mid_node,
                        *ast_after_node,
                        cfg_node,
                        instr_slab,
                    )?;
                }
                CfgNodeType::WhileLoop { ast_expr_node } => {
                    parse_whileloop2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_expr_node, cfg_node, instr_slab, )?
                }
                CfgNodeType::BasicBlock { ast_nodes } => {
                    // parse_bb2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, ast_nodes.clone(), cfg_node,  instr_slab, )?;
                },
                CfgNodeType::Exit { ast_node, } => {
                    if node!(at cfg_node in cfg_graph).has_func_cor_symidx(){
                        let op_instr_struct = match symtab.get(&node!(at cfg_node in cfg_graph).get_func_cor_symidx()?.as_ref_borrow())?.get_type()?{
                            Type::Fn { arg_syms, ret_sym } => {
                                match symtab.get(&ret_sym.clone().as_ref_borrow())?.get_type()?{
                                    Type::Void => {
                                        Some(NhwcInstrType::new_ret(None).into())
                                    },
                                    Type::I32 => {
                                        let izero_symidx = process_literal(symtab, &"0".to_string(), )?;
                                        Some(NhwcInstrType::new_ret(Some(izero_symidx)).into())
                                    },
                                    _ => {None}
                                }
                            },
                            _ => panic!()
                        };
                        match op_instr_struct{
                            Some(instr_struct) => {
                                node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(instr_struct,instr_slab)?;
                            },
                            None => {},
                        }
                    }
                    // add label to gather 
                    if node!(at cfg_node in cfg_graph).op_label_instr.is_none() {
                        let gather_label = process_label_symbol(cfg_node, cfg_node, "exit".to_string(), symtab)?;
                        let label_instr_struct = NhwcInstrType::new_label(gather_label).into();
                        node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(label_instr_struct, instr_slab)?;
                    }
                },
                CfgNodeType::Gather {  } => {
                    // add label to gather 
                    if node!(at cfg_node in cfg_graph).op_label_instr.is_none() {
                        let gather_label = process_label_symbol(cfg_node, cfg_node, "gather".to_string(), symtab)?;
                        let label_instr_struct = NhwcInstrType::new_label(gather_label).into();
                        node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(label_instr_struct, instr_slab)?;
                    }
                },
                _ => {}
            }
        }
    }
    insert_additional_mu_chi_for_call_instr(cfg_graph, instr_slab, symtab)?;
    // debug_info_yellow!("success end");

    Ok(())
}


// this function will insert a new basic block before specified cfg_node and inherit all edges of 
// specified cfg_node, and take all normal instrs(except for label instr & jump instr)
/// return the index u32 of cfg_new_bb
pub fn split_bb_node(cfg_node:u32,cfg_graph:&mut CfgGraph,is_move_instrs:bool) -> Result<(u32,u32)>{
    if !node!(at cfg_node in cfg_graph).cfg_node_type.is_basic_block(){
        return Err(anyhow!("bb分割操作不能用于bb外的节点{}",cfg_node))
    }
    // add new bb cfg node 
    let mut bb_struct = CfgNode::new_bb(vec![]);
    bb_struct.add_func_cor_symidx(node!(at cfg_node in cfg_graph).get_func_cor_symidx()?.clone()); 
    bb_struct.op_label_instr = node_mut!(at cfg_node in cfg_graph).op_label_instr.take();
    bb_struct.instrs = mem::take(&mut node_mut!(at cfg_node in cfg_graph).instrs);
    let cfg_new_bb = add_node!({bb_struct} to cfg_graph);
   
    // inherit all edges of specified cfg_node 
    for (e,s,t) in cfg_graph.edges_directed(node_index(cfg_node as usize), Incoming).map(|e|{ let (s,t) = (e.source(),e.target()); (e.id(),s,t)}).collect_vec(){
        let weight = cfg_graph.remove_edge(e).unwrap();
        add_edge!({weight} from s to cfg_new_bb in cfg_graph);
    }
    // then add a direct edge from new cfg_bb to specified cfg_node
    let new_edge = add_edge!({CfgEdge::new_direct()} from cfg_new_bb to cfg_node in cfg_graph);
    Ok((cfg_new_bb,new_edge))
}
/// update the label of former cfg_node
pub fn update_jump_instr_of_parents_of_cfg_node(cfg_node:u32, cfg_graph:&mut CfgGraph, instr_slab:&mut InstrSlab<NhwcInstr>) -> Result<()>{
    let direct_parents = direct_parent_nodes!(at cfg_node in cfg_graph);
    for parent_cfg_node in direct_parents{
        if let Some(jump_instr) = node!(at parent_cfg_node in cfg_graph).op_jump_instr{
            match &instr!(at jump_instr in instr_slab)?.instr_type{
                NhwcInstrType::Jump { jump_op } => { 
                    match &jump_op{
                        JumpOp::Ret { op_ret_sym } => {
                            panic!("you can't insert node after ret")
                        },
                        JumpOp::Br { cond, t1, t2 } => {
                            update_br_instr_of_branch(parent_cfg_node, cfg_graph, instr_slab)?;
                        },
                        JumpOp::Switch { cond, default, compared } => {
                            todo!()
                        },
                        JumpOp::DirectJump { label_symidx } => {
                            panic!("you can't insert direct jump before the nhwc dump pass")
                        },
                    }
                }
                _ => {

                }
            }
        }
    }
    Ok(())
}

/// 在两个cfg node 之间插入一个bb ，并保留 边的属性，函数会自动判断究竟把带属性的边放到哪里(因为插入一个bb会多生成一条Direct边，需要判断把这条边放在什么位置)
/// 以下条件满足之一可以insert new bb 
/// 1. cfg_node1 和 cfg_node2 之间是一条 Direct 普通边 或 BodyHead BodyTail
/// 2. cfg_node1 和 cfg_node2 其中有一个是 BasicBlock
pub fn insert_bb_between(cfg_node_from:u32, cfg_node_to:u32, cfg_graph:&mut CfgGraph, symtab:&mut SymTab,instr_slab:&mut InstrSlab<NhwcInstr>) -> Result<u32>{
    let cfg_former_edge_idx = cfg_graph.find_edge(node_index(cfg_node_from as usize), node_index(cfg_node_to as usize)).ok_or(anyhow!("找不到连接 cfg_node[{}] 和 cfg_node[{}]的边",cfg_node_from,cfg_node_to))
        .with_context(|| format!("在插入 cfg_node[{}] 和 cfg_node[{}]之间bb 失败",cfg_node_from,cfg_node_to))?;
    // 删除旧的边
    let cfg_former_edge_removed = cfg_graph.remove_edge(cfg_former_edge_idx).unwrap();
    let (cfg_node_type1, cfg_node_type2) = (&node!(at cfg_node_from in cfg_graph).cfg_node_type,&node!(at cfg_node_to in cfg_graph).cfg_node_type);
    let rst = if  cfg_former_edge_removed.cfg_edge_type.is_direct() {
        // 如果这条边本身就是一条普通边，那么就允许insert
        let mut bb_struct = CfgNode::new_bb(vec![]);
        bb_struct.add_func_cor_symidx(node!(at cfg_node_from in cfg_graph).get_func_cor_symidx()?.clone());
        let new_bb = add_node_with_edge!({bb_struct} with_edge {cfg_former_edge_removed} from cfg_node_from in cfg_graph);
        add_edge!({CfgEdge::new_direct()} from new_bb to cfg_node_to in cfg_graph);
        Ok(new_bb)
    } else if cfg_former_edge_removed.cfg_edge_type.is_body_head() 
    || cfg_former_edge_removed.cfg_edge_type.is_if_true() 
    || cfg_former_edge_removed.cfg_edge_type.is_if_false() {
        let mut bb_struct = CfgNode::new_bb(vec![]);
        bb_struct.add_func_cor_symidx(node!(at cfg_node_from in cfg_graph).get_func_cor_symidx()?.clone());
        let new_bb = add_node_with_edge!({bb_struct} with_edge {cfg_former_edge_removed} from cfg_node_from in cfg_graph);
        add_edge!({CfgEdge::new_direct()} from new_bb to cfg_node_to in cfg_graph);
        Ok(new_bb)
    }else if cfg_former_edge_removed.cfg_edge_type.is_body_tail()  {
        let mut bb_struct = CfgNode::new_bb(vec![]);
        bb_struct.add_func_cor_symidx(node!(at cfg_node_from in cfg_graph).get_func_cor_symidx()?.clone());
        let new_bb = add_node_with_edge!({bb_struct} with_edge {CfgEdge::new_direct()} from cfg_node_from in cfg_graph);
        add_edge!({cfg_former_edge_removed} from new_bb to cfg_node_to in cfg_graph);
        Ok(new_bb)

    }else{
        match (cfg_node_type1,cfg_node_type2){
            (_,CfgNodeType::BasicBlock { ast_nodes:_ })=>{
                let new_bb = add_node_with_edge!({CfgNode::new_bb(vec![])} with_edge {cfg_former_edge_removed} from cfg_node_from in cfg_graph);
                add_edge!({CfgEdge::new_direct()} from new_bb to cfg_node_to in cfg_graph);
                Ok(new_bb)
            }
            (CfgNodeType::BasicBlock { ast_nodes:_ },_)=>{
                let new_bb = add_node_with_edge!({CfgNode::new_bb(vec![])} with_edge {CfgEdge::new_direct()} from cfg_node_from in cfg_graph);
                add_edge!({cfg_former_edge_removed} from new_bb to cfg_node_to in cfg_graph);
                Ok(new_bb)
            }
            _ => {
                Err(anyhow!("两个节点cfg_node[{}] cfg_node[{}]中都不存在bb",cfg_node_from,cfg_node_to))
            }
        }
    };
    match &rst{
        Result::Ok(cfg_node) => {
            let cfg_node = *cfg_node;
            if node!(at cfg_node in cfg_graph).op_label_instr.is_none(){
                let label = process_label_symbol(cfg_node, ST_ROOT, format!("UP_{}",cfg_node), symtab)?;
                let label_instr_struct = NhwcInstrType::new_label(label).into();
                node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(label_instr_struct, instr_slab)?;
            }
            update_jump_instr_of_parents_of_cfg_node(cfg_node, cfg_graph, instr_slab)?;
        },
        Err(_) => {},
    };
    rst
}

///用于处理if条件表达式中逻辑运算符的短路运算符的cfg扩展，里面会根据传入的是&&还是||进行两种扩展
/// &&是在原br和true边的bb中见添加的，新br的true指向内部bb，false指向原br指向的gather
/// 两种扩展都是向下扩展，然后返回原br节点和新扩展的br节点
pub fn process_short_logic(cfg_node:u32,cfg_graph:&mut CfgGraph,logic_op:&ExprOp, instr_slab:&mut InstrSlab<NhwcInstr>)->Result<(u32,u32)>{
    match (&node!(at cfg_node in cfg_graph).cfg_node_type,cfg_node){
        (CfgNodeType::Branch { ast_expr_node},br_node) => {
            let ast_expr_node = *ast_expr_node;
            let br_outedges = cfg_graph.edges_directed(node_index(br_node as usize),petgraph::Direction::Outgoing);
            let edge_weights: Vec<(EdgeIndex, CfgEdge)> = br_outedges.map(|edge| (edge.id(), edge.weight().clone())).collect();
            let mut new_br_struct = CfgNode::new_branch(ast_expr_node);
            let (true_edge_idx,true_edge,false_edge_idx,false_edge) = {
                let (edge_idx,edge_type) = &edge_weights[0];
                if edge_type.cfg_edge_type.is_if_false(){
                    let (true_edge_idx,true_edge_type) = &edge_weights[1];
                    (true_edge_idx,true_edge_type,edge_idx,edge_type)
                }else if edge_type.cfg_edge_type.is_if_true(){
                    let (false_edge_idx,false_edge_type) = &edge_weights[1];
                    (edge_idx,edge_type,false_edge_idx,false_edge_type)
                }else{
                    return Err(anyhow!("不是br"))
                }
            };
            let (_,br_inside_bb) = cfg_graph.edge_endpoints(*true_edge_idx).unwrap();
            let (_,br_outside_bb) = cfg_graph.edge_endpoints(*false_edge_idx).unwrap();
            new_br_struct.add_func_cor_symidx(node!(at br_node in cfg_graph).get_func_cor_symidx()?.clone());
            let new_br:u32;
            match logic_op{
                ExprOp::LogicalOr => {
                    cfg_graph.remove_edge(*false_edge_idx).unwrap();
                    new_br = add_node_with_edge!({new_br_struct} with_edge {false_edge.clone()} from br_node in cfg_graph);
                },
                ExprOp::LogicalAnd => {
                    cfg_graph.remove_edge(*true_edge_idx).unwrap();
                    new_br = add_node_with_edge!({new_br_struct} with_edge {true_edge.clone()} from br_node in cfg_graph);
                },
                _=>{
                    return Err(anyhow!("操作符{:?}不是逻辑运算符",*logic_op))
                }
            }
            //添加新br到内部bb的true边 
            let inside_bb = br_inside_bb.index() as u32;
            add_edge!({true_edge.clone()} from new_br to inside_bb in cfg_graph);
            //添加新br到gather的false边
            let outside_node = br_outside_bb.index() as u32;
            add_edge!({false_edge.clone()} from new_br to outside_node in cfg_graph);
            Ok((br_node,new_br))
        },
        (CfgNodeType::WhileLoop { ast_expr_node },while_node) => {
            let ast_expr_node = *ast_expr_node;
            let br_outedges = cfg_graph.edges_directed(node_index(while_node as usize),petgraph::Direction::Outgoing);
            let edge_weights: Vec<(EdgeIndex, CfgEdge)> = br_outedges.map(|edge| (edge.id(), edge.weight().clone())).collect();
            let mut new_br_struct = CfgNode::new_branch(ast_expr_node);
            let (body_head_edge_idx,body_head_edge,direct_edge_idx,direct_edge) = {
                let (edge_idx,edge_type) = &edge_weights[0];
                if edge_type.cfg_edge_type.is_direct(){
                    let (body_head_edge_idx,body_head_edge_type) = &edge_weights[1];
                    (body_head_edge_idx,body_head_edge_type,edge_idx,edge_type)
                }else if edge_type.cfg_edge_type.is_body_head(){
                    let (direct_edge_idx,direct_edge_type) = &edge_weights[1];
                    (edge_idx,edge_type,direct_edge_idx,direct_edge_type)
                }else{
                    return Err(anyhow!("不是br"))
                }
            };
            let (_,br_inside_bb) = cfg_graph.edge_endpoints(*body_head_edge_idx).unwrap();
            let (_,br_outside_bb) = cfg_graph.edge_endpoints(*direct_edge_idx).unwrap();
            new_br_struct.add_func_cor_symidx(node!(at while_node in cfg_graph).get_func_cor_symidx()?.clone());
            let new_br:u32;
            match logic_op{
                ExprOp::LogicalOr => {
                    cfg_graph.remove_edge(*direct_edge_idx).unwrap();
                    new_br = add_node_with_edge!({new_br_struct} with_edge {direct_edge.clone()} from while_node in cfg_graph);
                },
                ExprOp::LogicalAnd => {
                    cfg_graph.remove_edge(*body_head_edge_idx).unwrap();
                    new_br = add_node_with_edge!({new_br_struct} with_edge {body_head_edge.clone()} from while_node in cfg_graph);
                },
                _=>{
                    return Err(anyhow!("操作符{:?}不是逻辑运算符",*logic_op))
                }
            }
            //添加新br到内部bb的true边 
            let inside_bb = br_inside_bb.index() as u32;
            add_edge!({CfgEdge::new_if_true()} from new_br to inside_bb in cfg_graph);
            //添加新br到gather的false边
            let outside_node = br_outside_bb.index() as u32;
            add_edge!({CfgEdge::new_if_false()} from new_br to outside_node in cfg_graph);
            Ok((while_node,new_br))

        },
        (CfgNodeType::BasicBlock { ast_nodes },bb_node) => {
            todo!("no need to implement this ")
        },
        _ => {
            return Err(anyhow!("逻辑语句不应该出现在{}中",cfg_node))
        }
    }
}
pub fn update_br_instr_of_branch(cfg_branch_node:u32,cfg_graph:&mut CfgGraph, instr_slab:&mut InstrSlab<NhwcInstr>) -> Result<()>{
    // first assert that the cfg_branch has 2 edges 
    let mut edges = cfg_graph.edges_directed(node_index(cfg_branch_node as usize), Outgoing).into_iter().map(|e|(e.weight().clone(),e.target().index() as u32)).collect_vec();
    if edges.len() != 2 {
        return Err(anyhow!("can't refresh br instr of cfg_branch_node:{cfg_branch_node}"))
    }
    edges.sort_by_key(|(e,idx)|{
        match e.cfg_edge_type{
            CfgEdgeType::IfFalse {  } => { 2 },
            CfgEdgeType::IfTrue {  } => { 1 },
            CfgEdgeType::Direct {  } => { 2 },
            CfgEdgeType::BodyHead {  } => { 1 },
            // CfgEdgeType::IfTrue {  } => { 1 },
            _ => panic!("unacceptable edge of branch_node")
        }
    });
    let jump_instr = node_mut!(at cfg_branch_node in cfg_graph).op_jump_instr.unwrap();
    let true_label = find_label_of_cfg_node(edges[0].1,  cfg_graph, instr_slab)?.clone();
    let false_label = find_label_of_cfg_node(edges[1].1,  cfg_graph, instr_slab)?.clone();
    match &mut instr_mut!(at jump_instr in instr_slab)?.instr_type{
        NhwcInstrType::Jump { jump_op:JumpOp::Br { cond, t1, t2 } } => {
            *t1 = true_label;
            *t2 = false_label;
        },
        _ => {panic!("jump instr should be a br ")}
    };
    Ok(())
}

pub fn get_exit_node_of_while_or_for_node(cfg_while_or_for_node:u32, cfg_graph:&mut CfgGraph) -> Result<u32>{
    Ok(direct_child_node!(at cfg_while_or_for_node in cfg_graph with_predicate {|e| !e.weight().cfg_edge_type.is_body_head()}))
}
/// return head and tail of `cfg_while_node` or `cfg_for_node` 
pub fn get_head_tail_of_while_or_for_node(cfg_node:u32, cfg_graph:&mut CfgGraph) -> Result<(u32, u32)> {
    let head = {
        let outgoing_edges:Vec<_> = outgoing_edges!(at cfg_node in cfg_graph);
        let mut edge_iter = outgoing_edges.iter();
        let mut head = None;
        while let Some(edge) = edge_iter.next() {
            if let CfgEdgeType::BodyHead {} = &edge.weight().cfg_edge_type {
                head = Some(edge.target().index() as u32)
            }
        }
        head
    };
    let tail = {
        let incoming_edges:Vec<_> = incoming_edges!(at cfg_node in cfg_graph);
        let mut edge_iter = incoming_edges.iter();
        let mut tail = None;
        while let Some(edge) = edge_iter.next() {
            if let CfgEdgeType::BodyTail {} = &edge.weight().cfg_edge_type {
                tail = Some(edge.source().index() as u32)
            }
        }
        tail
    };
    head.zip(tail).ok_or(anyhow!("while 或 loop {} 里面在cfg中没有对应的head 或tail", cfg_node))
}

// return the corresponding while block's while node of the cfg_node 
// assert that more than one ast_node is in the node
pub fn get_while_or_for_node_of_cfg_node(cfg_node:u32, cfg_graph:&mut CfgGraph, scope_tree:&ScopeTree, ast2scope:&HashMap<u32, u32>) -> Result<u32>{
    debug_info_green!("try find while node of cfg_node {}",cfg_node);
    // get any ast_node of the cfg _node 
    let ast_node = match &node!(at cfg_node in cfg_graph).cfg_node_type{
        CfgNodeType::WhileLoop { ast_expr_node } => {ast_expr_node},
        CfgNodeType::BasicBlock { ast_nodes } => {
            ast_nodes.get(0).unwrap()
        },
        _ => { panic!() }
    };
    let &scope_node = ast2scope.get(ast_node).unwrap();
    let while_scope_node = get_while_scope_of_scope_node(scope_node , scope_tree);
    let while_cfg_node = match &node!(at while_scope_node in scope_tree).scope_type {
        crate::toolkit::scope_node::ScopeType::While { op_cfg_while_node } => {
            op_cfg_while_node.unwrap()
        },
        _ => panic!()
    };
    Ok(while_cfg_node)
}

// pub fn find_gather_of_branch_downward(cfg_branch_node:u32,cfg_graph:&CfgGraph)-> Result<u32>{
//     let cur_branch_layer_count = 0;
//     recursive_find_gather(cfg_branch_node, cfg_graph, cur_branch_layer_count)
// }
// fn recursive_find_gather(cfg_node:u32,cfg_graph:&CfgGraph, mut cur_branch_layer_count: u32) -> Result<u32>{
//     if node!(at cfg_node in cfg_graph).cfg_node_type.is_gather(){
//         cur_branch_layer_count -= 1;
//     }else if node!(at cfg_node in cfg_graph).cfg_node_type.is_branch(){
//         cur_branch_layer_count += 1;
//     }
//     // 如果 层数 =0 ，那么说明找到了
//     if cur_branch_layer_count == 0{
//         Ok(cfg_node)
//     }else{
//         let mut rst = Err(anyhow!("找不到此 if 对应的gather"));
//         for neighbor in direct_child_nodes!(at cfg_node in cfg_graph){
//             rst = rst.or(recursive_find_gather(neighbor, cfg_graph, cur_branch_layer_count));
//         }
//         rst
//     }
// }
pub fn find_branch_of_gather_upward(cfg_branch_node:u32,cfg_graph:&CfgGraph)-> Result<u32>{
    let cur_branch_layer_count = 0;
    _recursive_find_branch(cfg_branch_node, cfg_graph, cur_branch_layer_count)
}
fn _recursive_find_branch(cfg_node:u32,cfg_graph:&CfgGraph, mut cur_branch_layer_count: u32) -> Result<u32>{
    if node!(at cfg_node in cfg_graph).cfg_node_type.is_gather(){
        cur_branch_layer_count += 1;
    }else if node!(at cfg_node in cfg_graph).cfg_node_type.is_branch(){
        cur_branch_layer_count -= 1;
    }
    // 如果 层数 =0 ，那么说明找到了
    if cur_branch_layer_count == 0{
        Ok(cfg_node)
    }else{
        let mut rst = Err(anyhow!("找不到此 if 对应的gather"));
        for neighbor in direct_parent_nodes!(at cfg_node in cfg_graph){
            rst = rst.or(_recursive_find_branch(neighbor, cfg_graph, cur_branch_layer_count));
        }
        rst
    }
}

/// get corresponding `cfg_entry` by speicified `cfg_node`
/// its correctness depends on
/// 1. `cfg_entry_node` field of `func_symidx` symbol 
/// 2. `func_cor_symidx` field of `cfg_node`
pub fn get_cfg_entry_by_cfg_node(cfg_graph:&CfgGraph,symtab:&SymTab,cfg_node:u32)-> Result<Option<u32>>{
    if node!(at cfg_node in cfg_graph).has_func_cor_symidx(){
        let func_symidx = node!(at cfg_node in cfg_graph).get_func_cor_symidx()?;
        let &cfg_entry = symtab.get(&func_symidx.as_ref_borrow())?.get_cfg_entry_node()?;
        Ok(Some(cfg_entry))
    }else{
        Ok(None)
    }
    
}

/// array init
/// require input `reversed_remained_dims` dimensions to be reversed 
pub fn array_initialize( et_tree:&mut EtTree, array_ele_map:&mut ArrayEleMap, ele_type:&Type,reversed_remained_dims:&mut Vec<usize>, array_offset:&mut usize,
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph,  scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, scope_node:u32, cfg_bb:u32, instr_slab:&mut InstrSlab<NhwcInstr>,ast2scope:&HashMap<u32, u32>,
) -> Result<()>
{
    let ele_count_to_read:usize = if reversed_remained_dims.len()!=0 { reversed_remained_dims.iter().product()}else {panic!()};
        // array_ele_map.add_ele_from_usize(*array_offset, Value::from_string_with_specific_type(&"0".to_string(), ele_type)?)?;
        // debug_info_blue!("add array ele with offset {},{:?}",*array_offset, Value::from_string_with_specific_type(&"0".to_string(), ele_type)?);
    let last_array_offset = *array_offset;
    *array_offset+= (ele_count_to_read - *array_offset % ele_count_to_read)%ele_count_to_read;
    debug_info_blue!("array_init {:?} at et_node {}",reversed_remained_dims,et_node);
    let et_node_vec = direct_child_nodes!(at et_node in et_tree with_predicate {|e| !e.weight().et_edge_type.is_deleted()});
    let mut i = 0;
    while i < et_node_vec.len(){
        let et_node = et_node_vec[i];
        debug_info_blue!("ele_count_to_read =  {},{:?}  cur_et_node:{et_node}",ele_count_to_read , reversed_remained_dims);
        match &node!(at et_node in et_tree).et_node_type{
            EtNodeType::Operator { op:ExprOp::ArrayWrapper, ast_node: _, text: _, op_rc_symidx: op_symidx }=>{
                let cur_dim = reversed_remained_dims.pop().unwrap();
                array_initialize( et_tree, array_ele_map, ele_type,reversed_remained_dims, array_offset,ast_tree, cfg_graph, scope_tree, symtab, et_node, scope_node, cfg_bb, instr_slab, ast2scope,)?;
                reversed_remained_dims.push(cur_dim);
            },
            EtNodeType::Literal { rc_literal_symidx, ast_node: _, text: _ } => {
                array_ele_map.insert_ele(*array_offset, Value::from_string_with_specific_type(&rc_literal_symidx.as_ref_borrow().symbol_name, ele_type)?)?;
                // debug_info_blue!("add array ele with offset {},{:?}",i, Value::from_string_with_specific_type(&const_sym_idx.symbol_name, ele_type)?);
                *array_offset +=1;
            },
            _ => {
                let l_type = ele_type;
                let rc_r_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb, instr_slab, ast2scope,)?.with_context(|| format!("no value of this expr et node{}",et_node))?;
                let r_symidx = rc_r_symidx.as_ref_borrow();
                // only 2 types should be considered, f32 & i32
                let r_type = symtab.get(&r_symidx)?.get_type()?.clone();
                let new_value_symidx = force_trans_type_discriminant(cfg_graph, symtab, l_type.into(),  &rc_r_symidx, scope_node, cfg_bb, instr_slab, Some(et_node),et_tree)?;
                array_ele_map.insert_ele(*array_offset, Value::new_ref(new_value_symidx, r_type))?;
                *array_offset +=1;
            },
            _ => {
                return Err(anyhow!("expect a constant or arraywrapper but meet nor of them at {}",et_node))
            }
        };
        i+=1;
    }
    // if has ele in this dimension and is not full
    if last_array_offset+ele_count_to_read!=*array_offset{
        *array_offset+= ele_count_to_read - *array_offset % ele_count_to_read;
    }
    Ok(())
}
/// transform the linear offset into vec<usize> which represent the offsets of all dimensions 
pub fn deduce_linear_offset_by_weights(offset:usize, weights:Vec<usize>) -> Vec<usize>{
    let mut decoded_vec = vec![];
    let mut remained = offset;
    for weight in weights{
        decoded_vec.push(remained / weight);
        remained %= weight;
    }
    decoded_vec
}

pub fn add_may_pointed_symidx_to(symtab:&mut SymTab, rc_ptr_symidx:&RcSymIdx, rc_may_pointed_symidx:&RcSymIdx) -> Result<RcSymIdx>{
    // add_pointed_symidx for temp_ptr 
    let may_pointed_symidx = rc_may_pointed_symidx.as_ref_borrow();
    let ptr_symidx = rc_ptr_symidx.as_ref_borrow();
    let rc_pointed_symidx = if may_pointed_symidx.is_global_ptr() {
        let pointed_symidx = may_pointed_symidx.to_deglobal_ptr()?;
        let rc_pointed_symidx = symtab.get(&pointed_symidx)?.rc_symidx.clone();
        symtab.get_mut(&ptr_symidx)?.add_pointed_symidx(rc_pointed_symidx.clone());
        rc_pointed_symidx
    } else{
        symtab.get_mut(&ptr_symidx)?.add_pointed_symidx(rc_may_pointed_symidx.clone());
        rc_may_pointed_symidx.clone()
    };
    Ok(rc_pointed_symidx)
}

pub fn insert_additional_mu_chi_for_call_instr(cfg_graph:&mut CfgGraph, instr_slab:&mut InstrSlab<NhwcInstr>, symtab:&mut SymTab) -> Result<()>{
    // fisrt scan all instrs in func and store the global load store info to 
    // 遍历一遍这个函数体，确保 将 whileloop cfg_node 存到  scope_node 中 
    for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone(){
        let dfs_vec = etc::dfs(cfg_graph,cfg_entry);
        for cfg_node in dfs_vec{
            for (idx,&instr) in node!(at cfg_node in cfg_graph).instrs.iter().enumerate(){
                match &instr!(at instr in instr_slab)?.instr_type{
                    NhwcInstrType::Mu { may_use_symidx: rc_may_use_symidx, may_use_instr } => {
                        let may_use_symidx = &rc_may_use_symidx.as_ref_borrow();
                        if *symtab.get(&may_use_symidx)?.get_is_global()?{
                            symtab.get_mut(&rc_func_symidx.as_ref_borrow())?.get_mut_global_mu_set()?.insert(rc_may_use_symidx.clone());
                        }else {
                            symtab.get_mut(&rc_func_symidx.as_ref_borrow())?.get_mut_local_mu_set()?.insert(rc_may_use_symidx.clone());
                        }
                    },
                    NhwcInstrType::Chi { lhs: rc_may_def_symidx, rhs, may_def_instr } => {
                        let may_def_symidx = &rc_may_def_symidx.as_ref_borrow();
                        if *symtab.get(&may_def_symidx)?.get_is_global()?{
                            symtab.get_mut(&rc_func_symidx.as_ref_borrow())?.get_mut_global_chi_set()?.insert(rc_may_def_symidx.clone());
                        }else {
                            symtab.get_mut(&rc_func_symidx.as_ref_borrow())?.get_mut_local_chi_set()?.insert(rc_may_def_symidx.clone());
                        }
                    },
                    _ => {
                        // do nothing
                    }
                }
            }

        }
    }
    for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone(){
        let dfs_vec = etc::dfs(cfg_graph,cfg_entry);
        for cfg_node in dfs_vec{
            let mut new_instrs = InstrList::new();
            let mut flag = false;
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                match &mut instr_mut!(at instr in instr_slab)?.instr_type{
                    NhwcInstrType::Call { op_lhs: op_assigned_symidx, func_op } => {
                        new_instrs.push(instr);
                        flag = true;
                        let mut chi_set = symtab.get(&func_op.rc_func_symidx.as_ref_borrow())?.get_global_chi_set()?.clone();
                        let mut mu_set = symtab.get(&func_op.rc_func_symidx.as_ref_borrow())?.get_global_mu_set()?.clone();
                        for para_symidx in &func_op.actual_arg_symidx_vec{
                            let para_symidx = para_symidx.as_ref_borrow();
                            if symtab.get(&para_symidx)?.has_pointed_symidx(){
                                let pointed_symidx = symtab.get(&para_symidx)?.get_pointed_symidx()?.clone();
                                chi_set.insert(pointed_symidx.clone());
                                mu_set.insert(pointed_symidx.clone());
                            }
                        }
                        for rc_mu_symidx in mu_set{
                            new_instrs.push(instr_slab.insert_instr(NhwcInstrType::new_mu(rc_mu_symidx, instr).into()));
                        }
                        for rc_chi_symidx in chi_set{
                            new_instrs.push(instr_slab.insert_instr(NhwcInstrType::new_chi(rc_chi_symidx.clone(),rc_chi_symidx.clone(), instr).into()));
                        }
                    },
                    NhwcInstrType::Jump { jump_op:JumpOp::Ret { op_ret_sym} } => {
                        flag = true;
                        let chi_iter = symtab.get(&rc_func_symidx.as_ref_borrow())?.get_global_chi_set()?.iter().chain(
                        symtab.get(&rc_func_symidx.as_ref_borrow())?.get_local_chi_set()?.iter()
                        .filter(|x| *symtab.get(&x.as_ref_borrow()).unwrap().get_is_func_para().unwrap()).into_iter());
                        for rc_chi_symidx in chi_iter {
                            new_instrs.push(instr_slab.insert_instr(NhwcInstrType::new_mu(rc_chi_symidx.clone(), instr).into()));
                        }
                    }
                    NhwcInstrType::Jump { jump_op } => {

                    }
                    NhwcInstrType::Label { label_symidx } => {

                    }
                    NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
                        new_instrs.push(instr);
                        flag = true;
                        let chi_iter = symtab.get(&rc_func_symidx.as_ref_borrow())?.get_global_chi_set()?.iter();

                        for rc_chi_symidx in chi_iter {
                            new_instrs.push(instr_slab.insert_instr(NhwcInstrType::new_chi(rc_chi_symidx.clone(),rc_chi_symidx.clone(), instr).into()));
                        }
                    }
                    _ => {
                        new_instrs.push(instr);
                    }
                };
            }
            if flag{
                let _ = mem::replace(&mut node_mut!(at cfg_node in cfg_graph).instrs, new_instrs);
            }
        }
    }
    Ok(())
}


// pub fn remove_redundant_assign(cfg_graph:&mut CfgGraph, instr_slab:&mut InstrSlab<NhwcInstr>){
//     for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone(){
//         let dfs_vec = etc::dfs(cfg_graph,cfg_entry);
//         for cfg_node in dfs_vec{
//             for instr in cfg_node{
//                 match instr!(at in instr in instr_slab).instr_type{

//                 }
//             }
//         }
//     }
// }