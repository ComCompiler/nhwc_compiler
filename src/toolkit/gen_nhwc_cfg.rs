use anyhow::{anyhow, Context, Ok, Result};
use itertools::Itertools;
use petgraph::{
    graph::node_index, stable_graph::NodeIndex, visit::EdgeRef
};
use syn::ExprAssignOp;
use std::array;
use std::collections::HashMap;


use super::ast_node;
use super::dot::Config;
use super::et_node::{EtNode, ExprOp};

use super::etc::generate_png_by_graph;
use super::mem_layout::MemLayout;
use super::{cfg_edge::CfgEdge, nhwc_instr::Instruction};
use super::{
    ast_node::AstTree, cfg_node::CfgGraph, et_node::{DeclOrDefOrUse, EtNodeType, EtTree}, gen_et::process_any_stmt, nhwc_instr::InstrType, scope_node::ScopeTree, symtab::{SymIdx, SymTab, SymTabGraph}
};
use super::{cfg_edge::CfgEdgeType, cfg_node::CfgNodeType, field::Field, nhwc_instr::InstrSlab};
use crate::antlr_parser::clexer::Identifier;
use crate::antlr_parser::cparser::{RULE_breakpointArg, RULE_breakpointStatement, RULE_returnStatement};
use crate::toolkit::nhwc_instr::BreakpointArg;
use crate::{debug_info_blue, debug_info_green, debug_info_red, debug_info_yellow, direct_parent_node, insert_instr};
use crate::{
    add_edge, add_node_with_edge, add_symbol, antlr_parser::cparser::{
        RULE_declaration, RULE_declarationSpecifiers, RULE_declarator, RULE_directDeclarator, RULE_expression, RULE_expressionStatement, RULE_forAfterExpression, RULE_forBeforeExpression, RULE_forMidExpression, RULE_jumpStatement, RULE_parameterDeclaration, RULE_parameterList, RULE_parameterTypeList
    }, direct_child_node, direct_child_nodes, direct_parent_nodes, find, find_nodes, incoming_edges, instr, make_field_trait_for_struct, node, node_mut, outgoing_edges, push_instr, reg_field_for_struct, rule_id, toolkit::{
        cfg_node::{CfgInstrIdx, CfgNode}, etc, field::{Type, UseCounter}, nhwc_instr::{IcmpPlan, UcmpPlan}, symbol::Symbol, symtab::SymTabEdge
    }
};

/*
这个文件主要是对  cfg_graph 进行后一步处理，因为cfg_graph 在此之前还没有
*/

make_field_trait_for_struct!(
    SymIdx,
    usize,
    u32,
    UseCounter,
    bool,
    Type,
    CfgInstrIdx,
    MemLayout
);

reg_field_for_struct!(EtNode {
        DIMS:Vec<SymIdx>,
        TYPE:Type,
    } with_fields info);
// for variables symbol
reg_field_for_struct!(Symbol {
        DEF_INSTRS_VEC:Vec<usize>,
        DEF_CFG_NODE_VEC:Vec<u32>,
        IS_CONST:bool,
        IS_TEMP:bool,
    } with_fields fields);
// for compilation unit symbol
reg_field_for_struct!(Symbol {
        ALL_CFG_FUNC_NAME_ENTRY_TUPLES:Vec<(SymIdx,u32)>,
    } with_fields fields);
// for func symbol
reg_field_for_struct!(Symbol {
        DECLARED_VARS:Vec<SymIdx>,
        FUNC_CALL_VEC:Vec<SymIdx>,
        CFG_ENTRY_NODE:u32,
    } with_fields fields);
reg_field_for_struct!(CfgNode {
    FUNC_COR_SYMIDX:SymIdx,
    DEF_SYMIDX_INSTR_TUPLE_VEC:Vec<(SymIdx,usize)>,
} with_fields info);
// for Instruction
reg_field_for_struct!(Instruction {
        CFG_INSTR_IDX:CfgInstrIdx,
    } with_fields info);

fn check_child_nodes(child_nodes:&Vec<u32>,num:usize) -> Result<()>{
    // debug_info_blue!("{:?} : {}",child_nodes,num);
    if child_nodes.len()>num{
        return Err(anyhow!("输入的操作数数量大于操作符处理的操作数数量"))
    }else if child_nodes.len()<num{
        return Err(anyhow!("操作符下缺少操作数，et错误"))
    }
    Ok(())
}

/// 这个函数根据stmt对instrs push instruction
fn parse_stmt_or_expr2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, symtab:&mut SymTab, scope_tree:&ScopeTree, et_tree:&mut EtTree, stmt_parent_scope:u32, ast_stmt_node:u32, cfg_node:u32, counter:&mut u32,
    instr_slab:&mut InstrSlab, symtab_graph:&mut Option<&mut SymTabGraph>,
) -> Result<Vec<SymIdx>> {
    //将declaration生成et
    let et_root = process_any_stmt(et_tree, ast_tree, scope_tree, ast_stmt_node, stmt_parent_scope);
    // generate_png_by_graph(&et_tree, "et_src".to_string(), &[Config::EdgeNoLabel, Config::Record, Config::Title("et_tree".to_string()),Config::NodeIndexLabel])?;

    //如果该节点有子树
    let et_nodes = direct_child_nodes!(at et_root in et_tree);
    let mut sep_symidx_vec: Vec<SymIdx> = vec![];
    for et_node in et_nodes {
        let symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, stmt_parent_scope, cfg_node, counter, instr_slab, symtab_graph)?;
        sep_symidx_vec.push(symidx)
    }
    Ok(sep_symidx_vec)
}

fn parse_bb2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, scope_tree:&ScopeTree, et_tree:&mut EtTree, symtab:&mut SymTab, ast2scope:&HashMap<u32, u32>, ast_nodes:Vec<u32>, cfg_bb:u32, counter:&mut u32,
    instr_slab:&mut InstrSlab, symtab_g:&mut Option<&mut SymTabGraph>,
) -> Result<()> {
    for astnode in ast_nodes {
        match (rule_id!(at astnode in ast_tree), astnode) {
            (RULE_declaration, declaration_node) => {
                if let Some(&decl_scope) = ast2scope.get(&declaration_node) {
                    let decl_scope = node!(at decl_scope in scope_tree).parent.unwrap();
                    parse_declaration2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, decl_scope, declaration_node, cfg_bb, counter, instr_slab, symtab_g)?
                } else {
                    return Err(anyhow!("找不到astnode{}的scope", declaration_node));
                }
            }
            (RULE_expressionStatement, statement_node) => {
                if let Some(&expr_scope) = ast2scope.get(&statement_node) {
                    let expr_scope = node!(at expr_scope in scope_tree).parent.unwrap();
                    parse_stmt_or_expr2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, expr_scope, statement_node, cfg_bb, counter, instr_slab, symtab_g)?;
                } else {
                    return Err(anyhow!("找不到astnode的scope"));
                }
            }
            (RULE_forAfterExpression, after_node) => {
                if let Some(&after_scope) = ast2scope.get(&after_node) {
                    let after_scope = node!(at after_scope in scope_tree).parent.unwrap();
                    parse_stmt_or_expr2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, after_scope, after_node, cfg_bb, counter, instr_slab, symtab_g)?;
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
                                let head_name = node!(at head in ast_tree).text.clone();
                                SymIdx::new(breakpoint_scope, head_name)
                            },
                            op_field_name: {
                                match idents.get(1) {
                                    Some(&tail_name) => Some(node!(at tail_name in ast_tree).text.clone()),
                                    None => None,
                                } 
                            },
                        } }).collect_vec();
                    let ret_instr = InstrType::new_breakpoint(
                        SymIdx::new(breakpoint_scope, node!(at  breakpoint_head_node in ast_tree).text.clone()),
                        breakpoint_args,
                    ).to_instr();
                    push_instr!(ret_instr to cfg_bb in cfg_graph slab instr_slab);
                } else {
                    return Err(anyhow!("找不到astnode的scope"));
                }
            }
            (RULE_jumpStatement, jump_node) => {
                if let Some(&jump_scope) = ast2scope.get(&jump_node){
                    let jump_parent_scope = node!(at jump_scope in scope_tree).parent.unwrap();
                    let jump_et_sep;
                    if let Some(ret_expr_ast) = find!(rule RULE_returnStatement finally RULE_expression at jump_node in ast_tree){
                        jump_et_sep = process_any_stmt(et_tree, ast_tree, scope_tree, ret_expr_ast, jump_parent_scope);
                    }else{
                        return Err(anyhow!("return语句缺少返回的表达式"))
                    }
                    if let EtNodeType::Separator { ast_node:_, text:_ } = &node!(at jump_et_sep in et_tree).et_node_type{
                        let jump_child_nodes = direct_child_nodes!(at jump_et_sep in et_tree);
                        debug_info_blue!("jump child nodes of {} is {:?}",jump_et_sep , jump_child_nodes);
                        // check_child_nodes(&jump_stmt, 1)?;
                        match jump_child_nodes.len(){
                            x if x ==1 =>{
                                let ret_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, jump_child_nodes[0], jump_parent_scope, cfg_bb, counter, instr_slab, symtab_g)?;
                                let ret_instr = InstrType::new_ret(Some(ret_symidx)).to_instr();
                                push_instr!(ret_instr to cfg_bb in cfg_graph slab instr_slab);
                            }
                            x if x==0 =>{
                                let ret_instr = InstrType::new_ret(None).to_instr();
                                push_instr!(ret_instr to cfg_bb in cfg_graph slab instr_slab);
                            }
                            _=>{
                                return Err(anyhow!("jump底下参数太多了"))
                            }
                        }
                    }else{
                        return Err(anyhow!("返回的etroot不是sep类型，et生成错误"))
                    }
                }
            }
            (_, _) => return Err(anyhow!("bb中未知RULE，{}不是expr或stmt", astnode)),
        }
    }
    Ok(())
}
fn parse_whileloop2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, scope_tree:&ScopeTree, et_tree:&mut EtTree, symtab:&mut SymTab, ast2scope:&HashMap<u32, u32>, ast_expr_node:u32, cfg_whileloop:u32, counter:&mut u32,
    instr_slab:&mut InstrSlab, symtab_graph:&mut Option<&mut SymTabGraph>,
) -> Result<()> {
    match (rule_id!(at ast_expr_node in ast_tree), ast_expr_node) {
        (RULE_expression, expr_ast) => {
            let while_head_symidx = SymIdx::new(*ast2scope.get(&ast_expr_node).unwrap(), "while.head".to_string());
            let while_body_symidx = SymIdx::new(*ast2scope.get(&ast_expr_node).unwrap(), "while.body".to_string());
            let while_exit_symidx = SymIdx::new(*ast2scope.get(&ast_expr_node).unwrap(), "while.exit".to_string());

            let cfg_body_head_node = direct_child_node!(at cfg_whileloop in cfg_graph with_predicate {|e| e.weight().cfg_edge_type.is_body_head() });
            let cfg_body_tail_node = direct_parent_node!(at cfg_whileloop in cfg_graph with_predicate {|e| e.weight().cfg_edge_type.is_body_tail() });
            let cfg_exit_node = direct_child_node!(at cfg_whileloop in cfg_graph with_predicate {|e| e.weight().cfg_edge_type.is_direct() });

            let label_body_instr_struct = InstrType::new_label(while_body_symidx.clone()).to_instr();
            push_instr!(label_body_instr_struct to cfg_body_head_node in cfg_graph slab instr_slab);

            let label_head_instr_struct = InstrType::new_label(while_head_symidx.clone()).to_instr();
            push_instr!(label_head_instr_struct to cfg_whileloop in cfg_graph slab instr_slab);

            let label_exit_instr_struct = InstrType::new_label(while_exit_symidx.clone()).to_instr();
            push_instr!(label_exit_instr_struct to cfg_exit_node in cfg_graph slab instr_slab);


            if let Some(&expr_scope) = ast2scope.get(&expr_ast) {
                let expr_parent_scope = node!(at expr_scope in scope_tree).parent.unwrap();
                let ret_vec = parse_stmt_or_expr2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, expr_parent_scope, ast_expr_node, cfg_whileloop, counter, instr_slab, symtab_graph)?;
                if ret_vec.len()>1{
                    return Err(anyhow!("条件表达式错误，返回参数不能大于一个"))
                }
                let r2bool_symidx;
                if let result_symidx = &ret_vec[0]{
                    let result_type = symtab.get_symbol(&result_symidx)?.get_type()?.clone();
                    r2bool_symidx = force_trans_type(cfg_graph, symtab, &Type::I1,  &result_type,&result_symidx, ast_expr_node, cfg_whileloop, counter, instr_slab, symtab_graph,None,et_tree)?;
                }else{
                    return Err(anyhow!("条件表达式错误，返回类型不能转为bool"))
                }
                // 添加 br 语句
                let br_whileloop_instr_struct = InstrType::new_br(r2bool_symidx.clone(),while_body_symidx,while_exit_symidx).to_instr();
                push_instr!(br_whileloop_instr_struct to cfg_whileloop in cfg_graph slab instr_slab);


                let jump_body_tail_instr_struct = InstrType::new_jump(while_head_symidx.clone()).to_instr();
                push_instr!(jump_body_tail_instr_struct to cfg_body_tail_node in cfg_graph slab instr_slab);

                node_mut!(at cfg_whileloop in cfg_graph).add_jump_det(r2bool_symidx);
            } else {
                return Err(anyhow!("找不到astnode的scope"));
            }
        }
        (_, _) => return Err(anyhow!("whileloop中未知RULE,{}不是expr或stmt", ast_expr_node)),
    }
    Ok(())
}
fn process_label_symbol(scope_node:u32,label_name:String,symtab:&mut SymTab)->Result<SymIdx>{
    let label_symidx = add_symbol!({Symbol::new(scope_node,label_name)} 
        with_field TYPE:{Type::Label} 
        with_field DEF_INSTRS_VEC:{Vec::<usize>::new()}
    to symtab);
    Ok(label_symidx)
}
fn parse_forloop2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, scope_tree:&ScopeTree, et_tree:&mut EtTree, symtab:&mut SymTab, ast2scope:&HashMap<u32, u32>, ast_before_node:u32, ast_mid_node:u32,
    ast_after_node:u32, cfg_forloop:u32, counter:&mut u32, instr_slab:&mut InstrSlab, symtab_graph:&mut Option<&mut SymTabGraph>,
) -> Result<()> {
    let (_, cfg_body_tail_node) = get_head_tail_of_while_or_for_node(cfg_forloop, cfg_graph)?;
    match rule_id!(at ast_before_node in ast_tree) {
        RULE_forBeforeExpression => {
            // push before instr label
            let label_before_symidx = process_label_symbol(*ast2scope.get(&ast_before_node).unwrap(), "for.before:".to_string(), symtab)?;
            let label_before_instr = InstrType::new_label(label_before_symidx).to_instr();

            let cfg_for_parent_node = etc::element_remained_after_exclusion_in_vec(direct_parent_nodes!(at cfg_forloop in cfg_graph), cfg_body_tail_node)?;
            // debug_info_yellow!("{:?}",direct_parent_nodes!(at cfg_forloop in cfg_graph));
            let cfg_new_bb_node = insert_bb_between(cfg_for_parent_node, cfg_forloop, cfg_graph)?;

            push_instr!(label_before_instr to cfg_new_bb_node in cfg_graph slab instr_slab);
            if let Some(&before_scope) = ast2scope.get(&ast_before_node) {
                let before_parent_scope = node!(at before_scope in scope_tree).parent.unwrap();
                let before_ast = direct_child_node!(at ast_before_node in ast_tree);
                parse_declaration2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, before_parent_scope, before_ast, cfg_new_bb_node, counter, instr_slab, symtab_graph)?
            } else {
                return Err(anyhow!("找不到astnode的scope"));
            }
        }
        _ => return Err(anyhow!("forloop中未知RULE,{}不是或forBeforeExpression", ast_before_node)),
    }
    match rule_id!(at ast_mid_node in ast_tree) {
        RULE_forMidExpression => {
            // push before instr label
            let label_mid_symidx = process_label_symbol(*ast2scope.get(&ast_mid_node).unwrap(), "for.mid:".to_string(), symtab)?;
            let label_mid_instr = InstrType::new_label(label_mid_symidx).to_instr();
            push_instr!(label_mid_instr to cfg_forloop in cfg_graph slab instr_slab);
            if let Some(&mid_scope) = ast2scope.get(&ast_mid_node) {
                let mid_parent_scope = node!(at mid_scope in scope_tree).parent.unwrap();
                let ret_vec = parse_stmt_or_expr2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, mid_parent_scope, ast_mid_node, cfg_forloop, counter, instr_slab, symtab_graph)?;
                if ret_vec.len()>1{
                    return Err(anyhow!("条件表达式错误，返回类型不能转为bool"))
                }
                let r2bool_symidx;
                if let result_symidx = &ret_vec[0]{
                    let result_type = symtab.get_symbol(&result_symidx)?.get_type()?.clone();
                    r2bool_symidx = force_trans_type(cfg_graph, symtab, &Type::I1,  &result_type,&result_symidx, ast_mid_node, cfg_forloop, counter, instr_slab, symtab_graph,None,et_tree)?;
                }else{
                    return Err(anyhow!("条件表达式错误，返回类型不能转为bool"))
                }
                node_mut!(at cfg_forloop in cfg_graph).add_jump_det(r2bool_symidx);
            } else {
                return Err(anyhow!("找不到astnode的scope"));
            }
        }
        _ => return Err(anyhow!("forloop中未知RULE,{}不是或forMidExpression", ast_mid_node)),
    }
    match rule_id!(at ast_after_node in ast_tree) {
        RULE_forAfterExpression => {
            // push before instr label
            let label_after_symidx = process_label_symbol(*ast2scope.get(&ast_after_node).unwrap(),"for.after:".to_string(), symtab)?;
            let label_after_instr = InstrType::new_label(label_after_symidx).to_instr();

            let cfg_new_bb_node = insert_bb_between(cfg_body_tail_node, cfg_forloop, cfg_graph)?;
            push_instr!(label_after_instr to cfg_new_bb_node in cfg_graph slab instr_slab);
            if let Some(&after_scope) = ast2scope.get(&ast_after_node) {
                let after_parent_scope = node!(at after_scope in scope_tree).parent.unwrap();
                parse_stmt_or_expr2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, after_parent_scope, ast_after_node, cfg_new_bb_node, counter, instr_slab, symtab_graph)?;
            } else {
                return Err(anyhow!("找不到astnode的scope"));
            }
        }
        _ => return Err(anyhow!("forloop中未知RULE,{}不是或forAfterExpression", ast_after_node)),
    }
    Ok(())
}

fn parse_branch2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, scope_tree:&ScopeTree, et_tree:&mut EtTree, symtab:&mut SymTab, ast2scope:&HashMap<u32, u32>, ast_expr_node:u32, cfg_branch_node:u32, counter:&mut u32,
    instr_slab:&mut InstrSlab, symtab_g:&mut Option<&mut SymTabGraph>,
) -> Result<()> {
    let label_true_symidx = process_label_symbol(*ast2scope.get(&ast_expr_node).unwrap(), "branch.true:".to_string(), symtab)?;
    let label_false_symidx = process_label_symbol(*ast2scope.get(&ast_expr_node).unwrap(), "branch.false:".to_string(), symtab)?;

    let label_true_instr = InstrType::new_label(label_true_symidx.clone()).to_instr();
    let label_false_instr = InstrType::new_label(label_false_symidx.clone()).to_instr();

    let cfg_true_node = direct_child_node!(at cfg_branch_node in cfg_graph with_predicate {|e| e.weight().cfg_edge_type.is_if_true()});
    let cfg_false_node = direct_child_node!(at cfg_branch_node in cfg_graph with_predicate {|e| e.weight().cfg_edge_type.is_if_false()});

    push_instr!(label_true_instr to cfg_true_node in cfg_graph slab instr_slab);
    push_instr!(label_false_instr to cfg_false_node in cfg_graph slab instr_slab);

    match (rule_id!(at ast_expr_node in ast_tree), ast_expr_node) {
        (RULE_expression, expr_node) => {
            if let Some(&expr_scope) = ast2scope.get(&expr_node) {
                let expr_parent_scope = node!(at expr_scope in scope_tree).parent.unwrap();
                let ret_vec = parse_stmt_or_expr2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, expr_parent_scope, expr_node, cfg_branch_node, counter, instr_slab, symtab_g)?;
                if ret_vec.len()>1{
                    return Err(anyhow!("条件表达式错误，返回类型不能转为bool"))
                }
                let r2bool_symidx;
                if let result_symidx = &ret_vec[0]{
                    let result_type = symtab.get_symbol(&result_symidx)?.get_type()?.clone();
                    r2bool_symidx = force_trans_type(cfg_graph, symtab, &Type::I1,  &result_type,&result_symidx, expr_node, cfg_branch_node, counter, instr_slab, symtab_g,None,et_tree)?;
                }else{
                    return Err(anyhow!("条件表达式错误，返回类型不能转为bool"))
                }

                let br_branch_instr_struct = InstrType::new_br(r2bool_symidx.clone(),label_true_symidx,label_false_symidx).to_instr();
                push_instr!(br_branch_instr_struct to cfg_branch_node in cfg_graph slab instr_slab);

                node_mut!(at cfg_branch_node in cfg_graph).add_jump_det(r2bool_symidx);
            } else {
                return Err(anyhow!("找不到astnode的scope"));
            }
        }
        (_, _) => return Err(anyhow!("不正确的astnode")),
    }


    

    Ok(())
}
fn process_constant(symtab:&mut SymTab, const_literal:&String, symtab_graph:&mut Option<&mut SymTabGraph>) -> Result<SymIdx> {
    // 我们认为 constant 的scope node 都是全局的
    // match find!(symbol mut {const_literal.clone()} of scope {0} in symtab debug symtab_graph symtab_graph){
    match symtab.get_mut_symbol_verbose(const_literal.clone(), 0) {
        Result::Ok(const_sym) => {
            // do nothing 找到了同样的常量
            // let use_counter = find!(field mut USE_COUNTER:UseCounter in const_sym).unwrap();
            let use_counter = const_sym.get_mut_use_counter()?;
            use_counter.use_count += 1;
        }
        Err(_) => {
            add_symbol!({Symbol::new(0, const_literal.clone())} 
                with_field USE_COUNTER:{UseCounter{ use_count: 1}} 
                with_field TYPE:{Type::new_from_const(const_literal)} 
                with_field IS_CONST:{true}
                with_field IS_TEMP:{false}
                to symtab debug symtab_graph);
        }
    }
    let const_symidx = SymIdx::new(0, const_literal.to_string());
    Ok(const_symidx)
}
fn process_func_symbol(
    symtab:&mut SymTab,op_symtab_graph:&mut Option<&mut SymTabGraph>, func_name:&String,
)->Result<SymIdx>{
    let func_symidx = add_symbol!({Symbol::new(0, func_name.clone())} 
        with_field DECLARED_VARS:{vec![]}
        // with_field SSA_REACHING_DEF:{None}
        with_field DEF_INSTRS_VEC:{vec![]}
        with_field IS_CONST:{true} 
        with_field IS_TEMP:{false}
        with_field FUNC_CALL_VEC: {vec![]}
    to symtab debug op_symtab_graph);
    Ok(func_symidx)
}

fn process_symbol(
    ast_tree:&AstTree, scope_tree:&ScopeTree, symtab:&mut SymTab, decldef_def_or_use:&DeclOrDefOrUse, symbol_name:&String, scope_parent_node:u32, op_symtab_graph:&mut Option<&mut SymTabGraph>,
    cfg_node:u32,cfg_graph:&mut CfgGraph,op_et_node:Option<u32>,et_tree:&mut EtTree
) -> Result<SymIdx> {
    // label:variable
    let mut symbol_scope = scope_parent_node;
    let op_dims = if let Some(et_node) = op_et_node.clone() {
        if node!(at et_node in et_tree).has_dims(){
            Some(node!(at et_node in et_tree).get_dims()?)
        }else{
            None
        }
    }else {
        None
    };
    match decldef_def_or_use {
        DeclOrDefOrUse::DeclDef { type_ast_node } => {
            let var_type: Type ;

            // 这里有两种可能，一种是数组，一种是普通变量，如果是数组，那么et_node 上一定有 dims 字段
            if let Some(dims) = op_dims{
                var_type = Type::new_array(Type::new(*type_ast_node, ast_tree), dims.clone())?;
            }else{
                var_type = Type::new(*type_ast_node, ast_tree);
            }
            let symbol_name_cloned = symbol_name.clone();
            // let var_type = Type::new(*type_ast_node, ast_tree);
            let symidx = add_symbol!({Symbol::new(scope_parent_node,symbol_name_cloned)}
                with_field TYPE:{var_type}
                with_field DEF_CFG_NODE_VEC:{vec![cfg_node]}
                with_field DEF_INSTRS_VEC:{Vec::<usize>::new()}
                with_field IS_CONST:{false}
                with_field IS_TEMP:{false} 
            to symtab debug op_symtab_graph);
            if node!(at cfg_node in cfg_graph).has_func_cor_symidx(){
                let func_symidx = node_mut!(at cfg_node in cfg_graph).get_func_cor_symidx_with_debug(&symtab,op_symtab_graph)?;
                symtab.get_mut_symbol(&func_symidx)?.get_mut_declared_vars()?.push(symidx.clone());
            }
            if let Some(et_node) = op_et_node.clone(){
                // debug 可删
                node_mut!(at et_node in et_tree).add_type(symtab.get_symbol(&symidx)?.get_type()?.to_ref_type()?);
            }
            Ok(symidx)
        }
        DeclOrDefOrUse::Use => {
            // 如果是数组类型则需要转化为指针，因为数组在被引用的时候都是作为指针
            while let Err(_) = symtab.get_symbol_verbose(symbol_name.clone(),symbol_scope) {
                if let Some(symbol_parent_scope)  = node!(at symbol_scope in scope_tree).parent{
                    symbol_scope = symbol_parent_scope;
                }else{
                    return Err(anyhow!("scope为{}符号表中未找到{:?}", symbol_scope, symbol_name.clone()));
                }
            }
            let symidx = SymIdx::new(symbol_scope, symbol_name.clone());
            if let Some(et_node) = op_et_node.clone(){
                node_mut!(at et_node in et_tree).add_type(symtab.get_symbol(&symidx)?.get_type()?.clone());
            }
            Ok(symidx)
        }
        DeclOrDefOrUse::Def => {
            while let Err(_) = symtab.get_symbol_verbose(symbol_name.clone(),symbol_scope) {
                if let Some(symbol_parent_scope)  = node!(at symbol_scope in scope_tree).parent{
                    symbol_scope = symbol_parent_scope;
                }else{
                    return Err(anyhow!("scope为{}符号表中未找到{:?}", symbol_scope, symbol_name.clone()));
                }
            }
            let symidx = SymIdx::new(symbol_scope, symbol_name.clone());
            if let Some(et_node) = op_et_node.clone(){
                node_mut!(at et_node in et_tree).add_type(symtab.get_symbol(&symidx)?.get_type()?.clone());
            }
            Ok(symidx)
        },
    }
}
fn process_temp_symbol(
    cfg_graph:&mut CfgGraph, symtab:&mut SymTab, temp_type:&Type,  scope_node:u32, cfg_node:u32, counter:&mut u32, instr_slab:&mut InstrSlab,
    symtab_graph:&mut Option<&mut SymTabGraph>,op_et_node:Option<u32>,et_tree:&mut EtTree,)->Result<SymIdx>{
        let temp_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} 
            with_field TYPE:{temp_type.clone()} 
            with_field DEF_INSTRS_VEC:{Vec::<usize>::new()}
            with_field IS_TEMP:{true} 
            with_field IS_CONST:{false}
            to symtab debug symtab_graph);
        *counter+=1;       
        let temp_def_instr = InstrType::new_def_var(temp_type.clone(), temp_symidx.clone(), None).to_instr();
        let func_symidx = node_mut!(at cfg_node in cfg_graph).get_func_cor_symidx()?;
        symtab.get_mut_symbol(&func_symidx)?.get_mut_declared_vars()?.push(temp_symidx.clone());
        push_instr!(temp_def_instr to cfg_node in cfg_graph slab instr_slab);
        let alloc_instr = InstrType::new_alloc(temp_type.clone(), temp_symidx.clone()).to_instr();
        let cfg_entry = get_cfg_entry_by_cfg_node(cfg_graph, symtab, cfg_node)?.ok_or(anyhow!("这个cfg node:{} 没有对应的entry节点",cfg_node))?;
        push_instr!(alloc_instr to cfg_entry in cfg_graph slab instr_slab);

        if let Some(et_node) = op_et_node{
            node_mut!(at et_node in et_tree).add_type(symtab.get_symbol(&temp_symidx)?.get_type()?.clone());
        }

        Ok(temp_symidx)
}
///具有赋值性质的会将value的类型强制转换为var的类型，返回转换后的symidx
fn force_trans_type(
    cfg_graph:&mut CfgGraph, symtab:&mut SymTab, type_to_trans_to:&Type, type_be_transed:&Type, symidx:&SymIdx, scope_node:u32, cfg_bb:u32, counter:&mut u32, instr_slab:&mut InstrSlab,
    symtab_graph:&mut Option<&mut SymTabGraph>,op_et_node:Option<u32>,et_tree:&mut EtTree,
) -> Result<SymIdx> {
    // 如果是数组类型，就直接转化为 ty 
    // let type_to_trans_to = if let Type::Array { dims, ele_ty: ty } = type_to_trans_to.clone(){
    //     *ty
    // }else{
    //     type_to_trans_to.clone()
    // };
    match (type_be_transed, type_to_trans_to) {
        (Type::I32, Type::F32) => {
            //创建f32类型的临时变量
            let ftmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let i2f_instr = InstrType::new_int2float(symidx.clone(), ftmp_type_symidx.clone()).to_instr();
            push_instr!(i2f_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok(ftmp_type_symidx);
        }
        (Type::I32, Type::I32) | (Type::F32, Type::F32) | (Type::I1, Type::I1) => {
            //相同类型不需要转换
            return Ok(symidx.clone());
        }
        (Type::I32, Type::I1) => {
            //创建i1类型的变临时量
            let btmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph)?;
            let i2b_instr = InstrType::new_icmp(btmp_type_symidx.clone(), IcmpPlan::Ne, symidx.clone(), izero_symidx, Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok(btmp_type_symidx);
        }
        (Type::F32, Type::I32) => {
            //创建i32类型的临时变量
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let f2i_instr = InstrType::new_float2int(symidx.clone(), itmp_type_symidx.clone()).to_instr();
            push_instr!(f2i_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok(itmp_type_symidx);
        }
        (Type::F32, Type::I1) => {
            //创建i1类型临时变量
            let btmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph)?;
            let f2b_instr = InstrType::new_ucmp(btmp_type_symidx.clone(), UcmpPlan::One, symidx.clone(), fzero_symidx, Type::I1).to_instr();
            push_instr!(f2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok(btmp_type_symidx);
        }
        (Type::I1, Type::I32) => {
            //创建i1类型临时变量
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;            
            let b2i_instr = InstrType::new_bool2int(symidx.clone(), itmp_type_symidx.clone()).to_instr();
            push_instr!(b2i_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok(itmp_type_symidx);
        }
        (Type::I1, Type::F32) => {
            //i1转f32分两步，第一步i1转i32，第二步i32转f32
            //第一步
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let b2i_instr = InstrType::new_bool2int(symidx.clone(), itmp_type_symidx.clone()).to_instr();
            push_instr!(b2i_instr to cfg_bb in cfg_graph slab instr_slab);
            //第二步
            let ftmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            *counter += 1;
            let i2f_instr = InstrType::new_int2float(itmp_type_symidx.clone(), ftmp_type_symidx.clone()).to_instr();
            push_instr!(i2f_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok(ftmp_type_symidx);
        }
        _ => return Err(anyhow!("{:?}=>{:?}该类型不支持强制转化",type_be_transed,type_to_trans_to)),
    }
}
///算数运算符自动类型转换，返回转换后两个操作符的symidx
fn autotrans_arith_type(
    cfg_graph:&mut CfgGraph, symtab:&mut SymTab, l_type:&Type, l_symidx:&SymIdx, r_type:&Type, r_symidx:&SymIdx, scope_node:u32, cfg_bb:u32, counter:&mut u32, instr_slab:&mut InstrSlab,
    symtab_graph:&mut Option<&mut SymTabGraph>,op_et_node:Option<u32>,et_tree:&mut EtTree
) -> Result<(SymIdx, SymIdx)> {
    //adapt函数会去除掉不能进行运算的类型情况
    match (l_type.clone(), r_type.clone()) {
        (Type::I32, Type::F32) => {
            //i32自动转换为f32
            let ftmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let i2f_instr = InstrType::new_int2float(l_symidx.clone(), ftmp_type_symidx.clone()).to_instr();
            push_instr!(i2f_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((ftmp_type_symidx, r_symidx.clone()));
        }
        (Type::F32, Type::I32) => {
            //i32转f32
            let ftmp_type_symidx = process_temp_symbol(cfg_graph, symtab,&Type::F32, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let i2f_instr = InstrType::new_int2float(r_symidx.clone(), ftmp_type_symidx.clone()).to_instr();
            push_instr!(i2f_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((l_symidx.clone(), ftmp_type_symidx));
        }
        (Type::I1, Type::I32) => {
            //i1转i32
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let b2i_instr = InstrType::new_bool2int(l_symidx.clone(), itmp_type_symidx.clone()).to_instr();
            push_instr!(b2i_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((itmp_type_symidx, r_symidx.clone()));
        }
        (Type::I32, Type::I1) => {
            //i1转i32
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let b2i_instr = InstrType::new_bool2int(r_symidx.clone(), itmp_type_symidx.clone()).to_instr();
            push_instr!(b2i_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((l_symidx.clone(), itmp_type_symidx));
        }
        (Type::I1, Type::F32) => {
            //先i1转i32
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let b2i_instr = InstrType::new_bool2int(l_symidx.clone(), itmp_type_symidx.clone()).to_instr();
            push_instr!(b2i_instr to cfg_bb in cfg_graph slab instr_slab);
            //再i32转f32
            let ftmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let i2f_instr = InstrType::new_int2float(itmp_type_symidx, ftmp_type_symidx.clone()).to_instr();
            push_instr!(i2f_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((ftmp_type_symidx, r_symidx.clone()));
        }
        (Type::F32, Type::I1) => {
            //i1转i32
            let itmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I32, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let b2i_instr = InstrType::new_bool2int(r_symidx.clone(), itmp_type_symidx.clone()).to_instr();
            push_instr!(b2i_instr to cfg_bb in cfg_graph slab instr_slab);
            //i32转f32
            let ftmp2_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::F32, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let i2f_instr = InstrType::new_int2float(itmp_type_symidx, ftmp2_type_symidx.clone()).to_instr();
            push_instr!(i2f_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((l_symidx.clone(), ftmp2_type_symidx));
        }
        (Type::I32, Type::I32) | (Type::F32, Type::F32) | (Type::I1, Type::I1) => {
            //相同不用转换
            return Ok((l_symidx.clone(), r_symidx.clone()));
        }
        _ => return Err(anyhow!("操作数类型不能参与运算")),
    }
}
///逻辑运算符自动类型转换，返回转换后的两个操作符的symidx
fn autotrans_logic_type(
    cfg_graph:&mut CfgGraph, symtab:&mut SymTab, l_type:&Type, l_symidx:&SymIdx, r_type:&Type, r_symidx:&SymIdx, scope_node:u32, cfg_bb:u32, counter:&mut u32, instr_slab:&mut InstrSlab,
    symtab_graph:&mut Option<&mut SymTabGraph>,op_et_node:Option<u32>,et_tree:&mut EtTree
) -> Result<(SymIdx, SymIdx)> {
    //adapt函数会去除掉不能进行运算的类型情况
    match (l_type.clone(), r_type.clone()) {
        (Type::I32, Type::F32) => {
            //i32转i1
            //由于除了i1都要转为i1，这里变量名中ltmp指左操作符转换后的临时symidx，rtmp指右操作符
            //处理左操作数，i32转i1
            let ltmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            //转i1相当于和0进行不等比较，这里调用常数处理函数处理0
            let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph)?;
            let i2b_instr = InstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne, l_symidx.clone(), izero_symidx, Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            //处理右操作数，f32转i1
            let rtmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph)?;
            let f2b_instr = InstrType::new_ucmp(rtmp_type_symidx.clone(), UcmpPlan::One, r_symidx.clone(), fzero_symidx, Type::I1).to_instr();
            push_instr!(f2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((ltmp_type_symidx, rtmp_type_symidx));
        }
        (Type::F32, Type::I32) => {
            //左操作数f32转i1
            let ltmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph)?;
            let i2b_instr = InstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne, r_symidx.clone(), izero_symidx, Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            //右操作数i32转i1
            let rtmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph)?;
            let f2b_instr = InstrType::new_ucmp(ltmp_type_symidx.clone(), UcmpPlan::One, l_symidx.clone(), fzero_symidx, Type::I1).to_instr();
            push_instr!(f2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((ltmp_type_symidx, rtmp_type_symidx));
        }
        (Type::I1, Type::I32) => {
            //处理右操作数i32转i1
            let rtmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph)?;
            let i2b_instr = InstrType::new_icmp(rtmp_type_symidx.clone(), IcmpPlan::Ne, r_symidx.clone(), izero_symidx, Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((l_symidx.clone(), rtmp_type_symidx));
        }
        (Type::I32, Type::I1) => {
            //处理左操作数i32转i1
            let ltmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph)?;
            let i2b_instr = InstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne, l_symidx.clone(), izero_symidx, Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((ltmp_type_symidx.clone(), r_symidx.clone()));
        }
        (Type::I1, Type::F32) => {
            //处理右操作数f32转i1
            let rtmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph)?;
            let i2b_instr = InstrType::new_ucmp(rtmp_type_symidx.clone(), UcmpPlan::One, r_symidx.clone(), fzero_symidx, Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((l_symidx.clone(), rtmp_type_symidx.clone()));
        }
        (Type::F32, Type::I1) => {
            //左操作数f32转i1
            let ltmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph)?;
            let i2b_instr = InstrType::new_ucmp(ltmp_type_symidx.clone(), UcmpPlan::One, l_symidx.clone(), fzero_symidx, Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((ltmp_type_symidx.clone(), r_symidx.clone()));
        }
        (Type::F32, Type::F32) => {
            //左操作数f32转i1
            let ltmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph)?;
            let lf2b_instr = InstrType::new_ucmp(ltmp_type_symidx.clone(), UcmpPlan::One, l_symidx.clone(), fzero_symidx.clone(), Type::I1).to_instr();
            push_instr!(lf2b_instr to cfg_bb in cfg_graph slab instr_slab);
            //右操作数f32转i1
            let rtmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let rf2b_instr = InstrType::new_ucmp(ltmp_type_symidx.clone(), UcmpPlan::One, r_symidx.clone(), fzero_symidx.clone(), Type::I1).to_instr();
            push_instr!(rf2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((ltmp_type_symidx, rtmp_type_symidx));
        }
        (Type::I32, Type::I32) => {
            //左操作数i32转i1
            let ltmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph)?;
            let li2b_instr = InstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne, l_symidx.clone(), izero_symidx.clone(), Type::I1).to_instr();
            push_instr!(li2b_instr to cfg_bb in cfg_graph slab instr_slab);
            //右操作数i32转i1
            let rtmp_type_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,op_et_node,et_tree)?;
            let ri2b_instr = InstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne, r_symidx.clone(), izero_symidx.clone(), Type::I1).to_instr();
            push_instr!(ri2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return Ok((ltmp_type_symidx, rtmp_type_symidx));
        }
        (Type::I1, Type::I1) => return Ok((l_symidx.clone(), r_symidx.clone())),
        _ => return Err(anyhow!("操作数无法进行逻辑计算")),
    }
}
///处理自增运算符，不分左右,统一返回增加instr和赋值instr
fn process_self_increment(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, scope_node:u32, cfg_bb:u32, counter:&mut u32, instr_slab:&mut InstrSlab,
    symtab_graph:&mut Option<&mut SymTabGraph>,
) -> Result<(SymIdx, SymIdx)> {
    //取自增运算符下的symidx和type
    let var_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
    let var_type = symtab.get_symbol(&var_symidx)?.get_type()?.clone();
    //读取变量的instr
    let tmp_loadvar_symidx = process_temp_symbol(cfg_graph, symtab, &var_type, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
    let load_instr = InstrType::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone()).to_instr();
    push_instr!(load_instr to cfg_bb in cfg_graph slab instr_slab);
    //自增的instr，以及类型转换
    let tmp_addvar_symidx = process_temp_symbol(cfg_graph, symtab, &var_type, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
    match var_type {
        Type::F32 => {
            let fone_symidx = process_constant(symtab, &"1.0".to_string(), symtab_graph)?;
            let add_instr = InstrType::new_add(tmp_addvar_symidx.clone(), var_symidx.clone(), fone_symidx, var_type).to_instr();
            push_instr!(add_instr to cfg_bb in cfg_graph slab instr_slab);
        }
        Type::I32 => {
            let ione_symidx = process_constant(symtab, &"1".to_string(), symtab_graph)?;
            let add_instr = InstrType::new_add(tmp_addvar_symidx.clone(), var_symidx.clone(), ione_symidx, var_type).to_instr();
            push_instr!(add_instr to cfg_bb in cfg_graph slab instr_slab);
        }
        _ => return Err(anyhow!("自增自减操作数不是数字类型的")),
    }
    //自增后赋值的instr
    let assign_instr = InstrType::new_assign(var_symidx, tmp_addvar_symidx.clone()).to_instr();
    push_instr!(assign_instr to cfg_bb in cfg_graph slab instr_slab);
    Ok((tmp_addvar_symidx, tmp_loadvar_symidx))
}

///处理自减运算符，不分左右
fn process_self_attennuation(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, scope_node:u32, cfg_bb:u32, counter:&mut u32, instr_slab:&mut InstrSlab,
    symtab_graph:&mut Option<&mut SymTabGraph>,
) -> Result<(SymIdx, SymIdx)> {
    //取操作数的symidx和type
    let var_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
    let var_type = symtab.get_symbol(&var_symidx)?.get_type()?.clone();
    //读取变量的instr
    let tmp_loadvar_symidx = process_temp_symbol(cfg_graph, symtab, &var_type, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
    let load_instr = InstrType::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone()).to_instr();
    push_instr!(load_instr to cfg_bb in cfg_graph slab instr_slab);
    //自减的instr
    let tmp_subvar_symidx = process_temp_symbol(cfg_graph, symtab, &var_type.clone(), scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
    match var_type {
        Type::F32 => {
            let fone_symidx = process_constant(symtab, &"1.0".to_string(), symtab_graph)?;
            let sub_instr = InstrType::new_sub(tmp_subvar_symidx.clone(), var_symidx.clone(), fone_symidx, var_type).to_instr();
            push_instr!(sub_instr to cfg_bb in cfg_graph slab instr_slab);
        }
        Type::I32 => {
            let ione_symidx = process_constant(symtab, &"1".to_string(), symtab_graph)?;
            let sub_instr = InstrType::new_sub(tmp_subvar_symidx.clone(), var_symidx.clone(), ione_symidx, var_type).to_instr();
            push_instr!(sub_instr to cfg_bb in cfg_graph slab instr_slab);
        }
        _ => {
            panic!("自增自减操作数不是数字类型的");
        }
    }
    //自减后的赋值instr
    let assign_instr = InstrType::new_assign(var_symidx, tmp_subvar_symidx.clone()).to_instr();
    push_instr!(assign_instr to cfg_bb in cfg_graph slab instr_slab);
    Ok((tmp_subvar_symidx, tmp_loadvar_symidx))
}
///处理操作符，获取下面的两个操作数，按算数操作符进行两个操作数的自动类型转换，返回（结果的临时变量，左操作数，右操作数，临时变量的类型）
fn process_arithop(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, et_node:u32, scope_tree:&ScopeTree, symtab:&mut SymTab, root_et_node:u32, scope_node:u32, cfg_bb:u32, counter:&mut u32, instr_slab:&mut InstrSlab,
    symtab_graph:&mut Option<&mut SymTabGraph>,
) -> Result<(SymIdx, SymIdx, SymIdx, Type, Type)> {
    let next_nodes = direct_child_nodes!(at root_et_node in et_tree);
    check_child_nodes(&next_nodes, 2)?;
    //取右操作数symidx和type
    let r_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_nodes[1], scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
    let r_type = symtab.get_symbol(&r_symidx)?.get_type()?.clone();

    //取左操作数symidx和type
    let l_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_nodes[0], scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
    let l_type = symtab.get_symbol(&l_symidx)?.get_type()?.clone();

    //将左右操作数进行类型自动转换
    let (l_symidx, r_symidx) = autotrans_arith_type(cfg_graph, symtab, &l_type, &l_symidx, &r_type, &r_symidx, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
    let var_type = Type::arith_adapt(&l_type, &r_type)?;
    let tmp_var_symidx = process_temp_symbol(cfg_graph, symtab, &var_type, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;


    //在复合操作符如+=这类操作符在类型转换后需要返回左操作数（即变量）的类型
    Ok((tmp_var_symidx, l_symidx, r_symidx, var_type, l_type))
}

fn process_logicop(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, scope_node:u32, cfg_bb:u32, counter:&mut u32, instr_slab:&mut InstrSlab,
    symtab_graph:&mut Option<&mut SymTabGraph>,
) -> Result<(SymIdx, SymIdx, SymIdx)> {
    let next_nodes = direct_child_nodes!(at et_node in et_tree);
    check_child_nodes(&next_nodes, 2)?;
    //取右操作数的symidx和type
    let r_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_nodes[1], scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
    let r_type = symtab.get_symbol(&r_symidx)?.get_type()?.clone();
    //取左操作数的symidx和type
    let l_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_nodes[0], scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
    let l_type = symtab.get_symbol(&l_symidx)?.get_type()?.clone();

    //左右操作数自动逻辑类型转换
    let (l_symidx, r_symidx) = autotrans_logic_type(cfg_graph, symtab, &l_type, &l_symidx, &r_type, &r_symidx, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
    let tmp_var_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;

    Ok((tmp_var_symidx, l_symidx, r_symidx))
}
///处理比较运算符，先将操作数根据运算符自动转换，根据操作符生成对应instr并返回和临时变量symidx
fn process_icmp_op(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, scope_node:u32, cfg_bb:u32, counter:&mut u32, instr_slab:&mut InstrSlab,icmp_plan:IcmpPlan,
    symtab_graph:&mut Option<&mut SymTabGraph>,
) -> Result<(Instruction,SymIdx)>{
    let next_nodes = direct_child_nodes!(at et_node in et_tree);
    check_child_nodes(&next_nodes, 2)?;
    //取右操作数symidx和type
    let r_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_nodes[1], scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
    let r_type = symtab.get_symbol(&r_symidx)?.get_type()?.clone();

    //取左操作数symidx和type
    let l_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_nodes[0], scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
    let l_type = symtab.get_symbol(&l_symidx)?.get_type()?.clone();

    //将左右操作数进行类型自动转换
    let (l_symidx, r_symidx) = autotrans_arith_type(cfg_graph, symtab, &l_type, &l_symidx, &r_type, &r_symidx, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
    let tmp_var_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
    //做instr
    let icmp_instr = InstrType::new_icmp(tmp_var_symidx.clone(), icmp_plan, l_symidx, r_symidx, Type::I1).to_instr();
    Ok((icmp_instr,tmp_var_symidx))
}
///处理调用函数，返回一个是option，some表示返回tmp_symidx（非void返回）为了et处理返回symidx,none（void返回），第二个是push的调用函数的instr，stmt要用到。（好tm臃肿）
fn process_call(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, 
    scope_node:u32, cfg_bb:u32, counter:&mut u32, instr_slab:&mut InstrSlab,
    symtab_graph:&mut Option<&mut SymTabGraph>
) -> Result<(Option<SymIdx>,usize)> {
    //取函数名和实参
    let func_name_and_args = direct_child_nodes!(at et_node in et_tree);
    let func_name_et_node = func_name_and_args[0];
    let et_type = &node!(at func_name_et_node in et_tree).et_node_type;
    let mut func_name_str = String::new();
    match et_type {
        EtNodeType::Symbol { sym_idx:_, ast_node, text:_, def_or_use:_ } => {
            let ast_node = *ast_node;
            func_name_str = node!(at ast_node in ast_tree).text.clone();
        }
        _ => {
            return Err(anyhow!("et生成错误，call节点下第一个不是函数名"))
        }
    }
    let func_name_symidx = SymIdx::new(0, func_name_str);
    // 给func call节点的field中添加cor symidx信息
    let func_symidx = node_mut!(at cfg_bb in cfg_graph).get_func_cor_symidx()?.clone();
    symtab.get_mut_symbol(&func_name_symidx)?.add_func_call_vec(vec![func_symidx]);

    let mut para_symidxs = vec![];
    for &para_et_node in func_name_and_args[1..].iter() {
        para_symidxs.push(process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, para_et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?)
    }
    let ret_type = 
    if let Type::Fn { arg_syms, ret_sym } = symtab.get_symbol(&func_name_symidx)?.get_type()?.clone(){
        //检查形参和实参是否一致
        if para_symidxs.len() == arg_syms.len(){
            for arg_idx in 0..arg_syms.len(){
                if symtab.get_symbol(&para_symidxs[arg_idx])?.get_type()?.clone() != symtab.get_symbol(&arg_syms[arg_idx])?.get_type()?.clone(){
                    return Err(anyhow!("传入实参与函数形参不符"))
                }
            }
        }else{
            return Err(anyhow!("传入实参与函数形参不符"))
        }
        let ret_type = symtab.get_symbol(&ret_sym)?.get_type()?.clone();
        Ok(ret_type)
    }else{
        return Err(anyhow!("调用对象不是函数类型"))
    };
    let ret_type = ret_type?;
    if let Type::Void = ret_type{
        let call_instr = InstrType::new_func_call(None, func_name_symidx, para_symidxs, ret_type).to_instr();
        Ok((None,push_instr!(call_instr to cfg_bb in cfg_graph slab instr_slab)))
    }else{
        let tmp_symidx = process_temp_symbol(cfg_graph, symtab, &ret_type, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
        let call_instr = InstrType::new_func_call(Some(tmp_symidx.clone()), func_name_symidx, para_symidxs, ret_type).to_instr();
        Ok((Some(tmp_symidx),push_instr!(call_instr to cfg_bb in cfg_graph slab instr_slab)))
    }
}


fn process_et(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, scope_node:u32, cfg_bb:u32, counter:&mut u32, instr_slab:&mut InstrSlab,
    symtab_graph:&mut Option<&mut SymTabGraph>,
) -> Result<SymIdx> {
    let nake_et = &node!(at et_node in et_tree).et_node_type.clone();
    match &nake_et {
        EtNodeType::Operator { op, ast_node: _, text: _ } => {
            match op {
                super::et_node::ExprOp::Mul => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option) {
                        let (tmp_var_symidx, l_symidx, r_symidx, var_type, _) =
                            process_arithop(ast_tree, cfg_graph, et_tree,et_node, scope_tree, symtab, et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
                        let mul_instr = InstrType::new_mul(tmp_var_symidx.clone(), l_symidx, r_symidx, var_type).to_instr();
                        push_instr!(mul_instr to cfg_bb in cfg_graph slab instr_slab);
                        Ok(tmp_var_symidx)
                    } else {
                        panic!("操作符{}下缺少符号", et_node);
                    }
                }
                super::et_node::ExprOp::Add => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option) {
                        let (tmp_var_symidx, l_symidx, r_symidx, var_type, _) =
                            process_arithop(ast_tree, cfg_graph, et_tree, et_node,scope_tree, symtab, et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;

                        let add_instr = InstrType::new_add(tmp_var_symidx.clone(), l_symidx, r_symidx, var_type).to_instr();
                        push_instr!(add_instr to cfg_bb in cfg_graph slab instr_slab);

                        Ok(tmp_var_symidx)
                    } else {
                        return Err(anyhow!("操作符{}下缺少符号", et_node));
                    }
                }
                super::et_node::ExprOp::Sub => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option) {
                        let (tmp_var_symidx, l_symidx, r_symidx, var_type, _) =
                            process_arithop(ast_tree, cfg_graph, et_tree,et_node, scope_tree, symtab, et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
                        let sub_instr = InstrType::new_sub(tmp_var_symidx.clone(), l_symidx, r_symidx, var_type).to_instr();
                        push_instr!(sub_instr to cfg_bb in cfg_graph slab instr_slab);

                        Ok(tmp_var_symidx)
                    } else {
                        return Err(anyhow!("操作符{}下缺少符号", et_node));
                    }
                }
                super::et_node::ExprOp::Div => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option) {
                        let (tmp_var_symidx, l_symidx, r_symidx, var_type, _) =
                            process_arithop(ast_tree, cfg_graph, et_tree,et_node, scope_tree, symtab, et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
                        let div_instr = InstrType::new_div(tmp_var_symidx.clone(), l_symidx, r_symidx, var_type).to_instr();
                        push_instr!(div_instr to cfg_bb in cfg_graph slab instr_slab);

                        Ok(tmp_var_symidx)
                    } else {
                        return Err(anyhow!("操作符{}下缺少符号", et_node));
                    }
                }
                super::et_node::ExprOp::Mod => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option) {
                        let (tmp_var_symidx, l_symidx, r_symidx, var_type, _) =
                            process_arithop(ast_tree, cfg_graph, et_tree,et_node, scope_tree, symtab, et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;

                        let mod_instr = InstrType::new_mod(tmp_var_symidx.clone(), l_symidx, r_symidx, var_type).to_instr();
                        push_instr!(mod_instr to cfg_bb in cfg_graph slab instr_slab);

                        Ok(tmp_var_symidx)
                    } else {
                        return Err(anyhow!("操作符{}下缺少符号", et_node));
                    }
                }
                //逻辑运算符
                super::et_node::ExprOp::LogicalOr => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option) {
                        let (tmp_var_symidx, l_symidx, r_symidx) = process_logicop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;

                        let logicor_instr = InstrType::new_logic_or(tmp_var_symidx.clone(), l_symidx, r_symidx, Type::I1).to_instr();
                        push_instr!(logicor_instr to cfg_bb in cfg_graph slab instr_slab);

                        Ok(tmp_var_symidx)
                    } else {
                        return Err(anyhow!("操作符{}下缺少符号", et_node));
                    }
                }
                super::et_node::ExprOp::LogicalAnd => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option) {
                        let (tmp_var_symidx, l_symidx, r_symidx) = process_logicop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;

                        let logicand_instr = InstrType::new_logic_and(tmp_var_symidx.clone(), l_symidx, r_symidx, Type::I1).to_instr();
                        push_instr!(logicand_instr to cfg_bb in cfg_graph slab instr_slab);

                        Ok(tmp_var_symidx)
                    } else {
                        return Err(anyhow!("操作符{}下缺少符号", et_node));
                    }
                }
                super::et_node::ExprOp::LogicalNot => {
                    if let Some(next_node) = direct_child_node!(at et_node in et_tree ret option) {
                        //取操作数的symidx和type
                        let symbol_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, next_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
                        let symbol_type = symtab.get_symbol(&symbol_symidx)?.get_type()?.clone();

                        //将数字类型操作数转换为bool类型，bool类型不需要转换
                        let num2bool_tmp_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
                        match symbol_type {
                            Type::F32 => {
                                let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph)?;
                                let f2b_instr = InstrType::new_icmp(num2bool_tmp_symidx.clone(), IcmpPlan::Ne, symbol_symidx, fzero_symidx, Type::I1).to_instr();
                                push_instr!(f2b_instr to cfg_bb in cfg_graph slab instr_slab);
                            }
                            Type::I32 => {
                                let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph)?;
                                let i2b_instr = InstrType::new_ucmp(num2bool_tmp_symidx.clone(), UcmpPlan::One, symbol_symidx, izero_symidx, Type::I1).to_instr();
                                push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
                            }
                            Type::I1 => {}
                            _ => return Err(anyhow!("类型{:?}不能进行逻辑运算", symbol_type)),
                        }
                        let tmp_var_symidx = process_temp_symbol(cfg_graph, symtab, &Type::I1, scope_node,cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
                        let logicnot_instr = InstrType::new_logic_not(tmp_var_symidx.clone(), num2bool_tmp_symidx, Type::I1).to_instr();
                        push_instr!(logicnot_instr to cfg_bb in cfg_graph slab instr_slab);

                        Ok(tmp_var_symidx)
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
                super::et_node::ExprOp::Cast => todo!(),
                //比较运算符
                super::et_node::ExprOp::Eq => {
                    let (eq_instr,eq_tmp_symidx) = process_icmp_op(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node,scope_node, cfg_bb, counter, instr_slab, IcmpPlan::Eq,symtab_graph)?;
                    push_instr!(eq_instr to cfg_bb in cfg_graph slab instr_slab);
                    Ok(eq_tmp_symidx)
                }
                super::et_node::ExprOp::NEq => {
                    let (ne_instr,ne_tmp_symidx) = process_icmp_op(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb,counter, instr_slab, IcmpPlan::Ne,symtab_graph)?;
                    push_instr!(ne_instr to cfg_bb in cfg_graph slab instr_slab);
                    Ok(ne_tmp_symidx)
                }
                super::et_node::ExprOp::Less => {
                    let (slt_instr,slt_tmp_symidx) = process_icmp_op(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb,counter, instr_slab, IcmpPlan::Slt,symtab_graph)?;
                    push_instr!(slt_instr to cfg_bb in cfg_graph slab instr_slab);
                    Ok(slt_tmp_symidx)
                }
                super::et_node::ExprOp::Greater => {
                    let (sgt_instr,sgt_tmp_symidx) = process_icmp_op(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb,counter, instr_slab, IcmpPlan::Sgt,symtab_graph)?;
                    push_instr!(sgt_instr to cfg_bb in cfg_graph slab instr_slab);
                    Ok(sgt_tmp_symidx)
                }
                super::et_node::ExprOp::LEq => {
                    let (sle_instr,sle_tmp_symidx) = process_icmp_op(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb,counter, instr_slab, IcmpPlan::Sle,symtab_graph)?;
                    push_instr!(sle_instr to cfg_bb in cfg_graph slab instr_slab);
                    Ok(sle_tmp_symidx)
                }
                super::et_node::ExprOp::GEq => {
                    let (sge_instr,sge_tmp_symidx) = process_icmp_op(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb, counter, instr_slab, IcmpPlan::Sge,symtab_graph)?;
                    push_instr!(sge_instr to cfg_bb in cfg_graph slab instr_slab);
                    Ok(sge_tmp_symidx)
                }
                //调用函数
                super::et_node::ExprOp::Call => {
                    if let (Some(tmp_symidx),_) = process_call(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?{
                        Ok(tmp_symidx)
                    }
                    //如果函数没有临时变量接收返回值，说明返回的是void类型，那么说明这个是个单支stmt（就不会在这里处理），或者错误将void返回值赋给一个变量（应该报错）。
                    else{
                        Err(anyhow!("不能用变量接收一个返回类型为void函数调用"))
                    }
                }
                //正负号
                super::et_node::ExprOp::Negative => todo!(),
                super::et_node::ExprOp::Positive => todo!(),
                //引用与解引用
                super::et_node::ExprOp::AddrOf => todo!(),
                super::et_node::ExprOp::Deref => todo!(),
                super::et_node::ExprOp::DotMember => todo!(),
                super::et_node::ExprOp::ArrowMember => todo!(),
                //单目运算符
                super::et_node::ExprOp::LPlusPlus => {
                    if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret option) {
                        let (tmp_addvar_symidx, _) =
                            process_self_increment(ast_tree, cfg_graph, et_tree, scope_tree, symtab, symbol_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
                        Ok(tmp_addvar_symidx)
                    } else {
                        return Err(anyhow!("操作符{}下缺少符号", et_node));
                    }
                }
                super::et_node::ExprOp::RPlusPlus => {
                    if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret option) {
                        let (_, tmp_loadvar_symidx) =
                            process_self_increment(ast_tree, cfg_graph, et_tree, scope_tree, symtab, symbol_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
                        Ok(tmp_loadvar_symidx)
                    } else {
                        return Err(anyhow!("操作符{}下缺少符号", et_node));
                    }
                }
                super::et_node::ExprOp::LMinusMinus => {
                    if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret option) {
                        let (tmp_subvar_symidx, _) =
                            process_self_attennuation(ast_tree, cfg_graph, et_tree, scope_tree, symtab, symbol_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
                        Ok(tmp_subvar_symidx)
                    } else {
                        return Err(anyhow!("操作符{}下缺少符号", et_node));
                    }
                }
                super::et_node::ExprOp::RMinusMinus => {
                    if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret option) {
                        let (_, tmp_loadvar_symidx) =
                            process_self_attennuation(ast_tree, cfg_graph, et_tree, scope_tree, symtab, symbol_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
                        Ok(tmp_loadvar_symidx)
                    } else {
                        return Err(anyhow!("操作符{}下缺少符号", et_node));
                    }
                }
                super::et_node::ExprOp::ArrayIndex => {
                    // debug_info_green!("cur array idx {}",et_node);
                    let et_children = direct_child_nodes!(at et_node in et_tree);
                    assert!(et_children.len() == 2);
                    let et_l_child = et_children[0];
                    let et_r_child = et_children[1];
                    // 从右子节点获取 index 符号信息
                    let idx_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_r_child, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
                    // 首先查看当前 et_node 有没有 dims 
                    let l_child_dims = if node!(at et_node in et_tree).has_dims(){
                        let mut dims = node!(at et_node in et_tree).get_dims()?.clone();
                        dims.insert(0,idx_symidx);
                        dims
                    }else{
                        vec![idx_symidx]
                    };
                    node_mut!(at et_l_child in et_tree).add_dims(l_child_dims.clone());

                    // 这个是降维操作 (debug 用，可删)
                    debug_info_blue!("the current et_node is {}",et_node);

                    //通过 process_et 递归至下一层 根据 declordef 有不同的可能返回值 declare 可能返回指针  
                    let array_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_l_child, scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;

                    match &node!(at et_l_child in et_tree).et_node_type {
                        EtNodeType::Symbol { sym_idx, ast_node, text, def_or_use:DeclOrDefOrUse::Def } => {
                            // 在最接近 symbol 的一层 array_index 插入 getelementptr 语句

                            // 可删此段
                            let mut l_child_type = node!(at et_l_child in et_tree).get_type()?.clone();
                            debug_info_blue!("left child type {:?}",l_child_type);
                            l_child_type.pop_dim()?;
                            debug_info_blue!("poped left child type {:?}",l_child_type);
                            node_mut!(at et_node in et_tree).add_type(l_child_type);

                            let array_ty = symtab.get_symbol(&array_symidx)?.get_type()?.clone();
                            let ele_ty = match &array_ty{
                                Type::Array { dims, ele_ty } => {
                                    *ele_ty.clone()
                                },
                                _ => {return Err(anyhow!("在 [] 符号左边的 不是一个array et_node:{}",et_node))}
                            };
                            let temp_ptr_symidx = process_temp_symbol(cfg_graph, symtab, &ele_ty.to_ref_type()?, scope_node, cfg_bb, counter, instr_slab, symtab_graph, Some(et_node), et_tree)?;
                            let get_ele_ptr_instr_struct = InstrType::new_get_element_ptr(temp_ptr_symidx.clone(), array_symidx, array_ty, l_child_dims).to_instr();
                            push_instr!(get_ele_ptr_instr_struct to cfg_bb in cfg_graph slab instr_slab);


                            Ok(temp_ptr_symidx)
                        },
                        EtNodeType::Symbol { sym_idx, ast_node, text, def_or_use:DeclOrDefOrUse::Use } => {
                            // 在最接近 symbol 的一层 array_index 插入 getelementptr 语句
                            let array_ty = symtab.get_symbol(&array_symidx)?.get_type()?.clone();
                            debug_info_blue!("array {:?} type is {:?}", array_symidx,array_ty);
                            // 可删此段
                            let mut l_child_type = node!(at et_l_child in et_tree).get_type()?.clone();
                            debug_info_blue!("left child type {:?}",l_child_type);
                            debug_info_blue!("poped left child type {:?}",l_child_type);
                            node_mut!(at et_node in et_tree).add_type(l_child_type);

                            let ele_ty = match &array_ty{
                                Type::Array { dims, ele_ty } => {
                                    *ele_ty.clone()
                                },
                                _ => {return Err(anyhow!("在 [] 符号左边的 不是一个array et_node:{}",et_node))}
                            };
                            let temp_ptr_symidx = process_temp_symbol(cfg_graph, symtab, &ele_ty.to_ref_type()?, scope_node, cfg_bb, counter, instr_slab, symtab_graph, Some(et_node), et_tree)?;
                            let temp_symidx = process_temp_symbol(cfg_graph, symtab, &ele_ty, scope_node, cfg_bb, counter, instr_slab, symtab_graph, Some(et_node), et_tree)?;
                            let get_ele_ptr_instr_struct = InstrType::new_get_element_ptr(temp_ptr_symidx.clone(), array_symidx, array_ty, l_child_dims).to_instr();
                            let load_ele_instr_struct = InstrType::new_load(temp_symidx.clone(), temp_ptr_symidx, ele_ty.to_ref_type()?).to_instr();
                            push_instr!(get_ele_ptr_instr_struct to cfg_bb in cfg_graph slab instr_slab);
                            push_instr!(load_ele_instr_struct to cfg_bb in cfg_graph slab instr_slab);
                            
                            Ok(temp_symidx)
                        },
                        EtNodeType::Symbol { sym_idx, ast_node, text, def_or_use:DeclOrDefOrUse::DeclDef { type_ast_node } } => {

                            // 可删此段
                            let mut l_child_type = node!(at et_l_child in et_tree).get_type()?.clone();
                            debug_info_blue!("left child type {:?}",l_child_type);
                            debug_info_blue!("poped left child type {:?}",l_child_type);
                            node_mut!(at et_node in et_tree).add_type(l_child_type);

                            let array_ty = symtab.get_symbol(&array_symidx)?.get_type()?.clone();
                            // 非temp 变量需要手动 new_var
                            let defvar_instr_struct = InstrType::new_def_var(array_ty, array_symidx.clone(), None).to_instr();
                            push_instr!(defvar_instr_struct to cfg_bb in cfg_graph slab instr_slab);
                            Ok(array_symidx)
                        },
                        _ => {
                            Ok(array_symidx)
                        }
                    }
                },
                super::et_node::ExprOp::ArrayWrapper => {
                    todo!();
                },
                crate::toolkit::et_node::ExprOp::Assign => {
                    let op_values = direct_child_nodes!(at et_node in et_tree);
                    check_child_nodes(&op_values.clone(), 2)?;
                    // 后序遍历 右边
                    let value_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, op_values[1], scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
                    // let value_type = find!(field TYPE:Type at value_symidx in symtab debug symtab_graph symtab_g).unwrap().clone();
                    let value_type = symtab.get_symbol(&value_symidx).unwrap().get_type_with_debug(symtab, symtab_graph)?.clone();
                    // 后序遍历 左边
                    let var_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, op_values[0], scope_node, cfg_bb, counter, instr_slab, symtab_graph)?;
                    // let var_type = find!(field TYPE:Type at var_symidx in symtab debug symtab_graph symtab_graph).unwrap().clone();
                    let var_type = symtab.get_symbol(&var_symidx).unwrap().get_type_with_debug(symtab, symtab_graph)?.clone();
                    //如果结果和变量类型不同，添加自动转化instr
                    match &var_type{
                        Type::Ptr64 { ty:deref_var_type } => {
                            let transed_value_symidx = force_trans_type(cfg_graph, symtab, &deref_var_type, &value_type, &value_symidx, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
                            let store_instr_struct = InstrType::new_store(var_symidx.clone(), var_type.clone(),  transed_value_symidx, *deref_var_type.clone()).to_instr();
                            node_mut!(at et_node in et_tree).add_type(*deref_var_type.clone());
                            push_instr!(store_instr_struct to cfg_bb in cfg_graph slab instr_slab);
                            Ok(var_symidx)
                        },
                        Type::Array { dims, ele_ty } => {
                            // 这里是数组专属初始化
                            todo!()
                        },
                        _ => {
                            let new_value_symidx = force_trans_type(cfg_graph, symtab, &var_type, &value_type, &value_symidx, scope_node, cfg_bb, counter, instr_slab, symtab_graph,Some(et_node),et_tree)?;
                            let assign_instr_struct = InstrType::new_assign(var_symidx.clone(), new_value_symidx).to_instr();
                            node_mut!(at et_node in et_tree).add_type(var_type.clone());
                            push_instr!(assign_instr_struct to cfg_bb in cfg_graph slab instr_slab);
                            Ok(var_symidx)
                         }
                    }
               }
            }
        }
        EtNodeType::Constant { const_sym_idx: _, ast_node, text: _ } => {
            let ast_node = *ast_node;
            let constant_literal = &node!(at ast_node in ast_tree).text;
            Ok(process_constant(symtab, constant_literal, symtab_graph)?)
        }
        EtNodeType::Symbol { sym_idx: _, ast_node, text: _, def_or_use } => {
            let ast_node = *ast_node;
            let symbol_literal = &node!(at ast_node in ast_tree).text;
            let symbol_symidx = process_symbol(ast_tree, scope_tree, symtab, def_or_use, symbol_literal, scope_node, symtab_graph,cfg_bb,cfg_graph,Some(et_node),et_tree)?;
            Ok(symbol_symidx)
        }
        _ => return Err(anyhow!("{}不应出现sep类型的et", et_node)),
    }
}

///定义变量的decl转为ir，并通过et查找元素是否合法
fn parse_declaration2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, symtab:&mut SymTab, scope_tree:&ScopeTree, et_tree:&mut EtTree, decl_parent_scope:u32, ast_decl_node:u32, cfg_node:u32, counter:&mut u32,
    instr_slab:&mut InstrSlab, symtab_g:&mut Option<&mut SymTabGraph>,
) -> Result<()> {
    //将declaration生成et
    let et_root = process_any_stmt(et_tree, ast_tree, scope_tree, ast_decl_node, decl_parent_scope);
    //如果该节点有子树
    let detail_et_nodes = direct_child_nodes!(at et_root in et_tree);
    for et_sep_item_node in detail_et_nodes {
        let et_node_type = &node!(at et_sep_item_node in et_tree).et_node_type.clone();
        match et_node_type {
            /// 先考虑这个语句存在 = 的情况
            EtNodeType::Operator { op: ExprOp::Assign, ast_node: _, text: _ } => {
                let op_values = direct_child_nodes!(at et_sep_item_node in et_tree);
                //获得变量类型，做成symidx
                //判断左孩子节点是否是有意义的
                let var_et_node = op_values[0];
                let var_et_type = &node!(at var_et_node in et_tree).et_node_type;
                match var_et_type {
                    EtNodeType::Symbol { sym_idx:_, ast_node:_, text:_, def_or_use:_ } => {},
                    EtNodeType::Operator { op, ast_node, text } =>{},
                    _ => return Err(anyhow!("赋值号左边形式错误")),
                }
                //处理左右子树
                let var_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, op_values[0], decl_parent_scope, cfg_node, counter, instr_slab, symtab_g)?;
                let var_type = symtab.get_symbol(&var_symidx)?.get_type()?.clone();
                let value_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, op_values[1], decl_parent_scope, cfg_node, counter, instr_slab, symtab_g)?;
                //大纲：
                //将var_symidx处理看是普通变量还是数组变量，如果是数组，则将value_symidx的内容和var_symidx进行比对整合
                
                let mut value_type = symtab.get_symbol(&value_symidx)?.get_type()?.clone();
                if let Type::Fn { arg_syms:_, ret_sym }= value_type{
                    value_type = symtab.get_symbol(&ret_sym)?.get_type()?.clone();
                }
                // let value_type = find!(field TYPE:Type at value_symidx in symtab debug symtab_graph symtab_g).unwrap().clone();
                let transed_value_symidx = force_trans_type(cfg_graph, symtab, &var_type, &value_type, &value_symidx, decl_parent_scope, cfg_node, counter, instr_slab, symtab_g,None,et_tree)?;


                // 加入 alloc 指令 分配内存
                let alloc_instr = InstrType::new_alloc(var_type.clone(), var_symidx.clone()).to_instr();
                if !matches!(&node!(at cfg_node in cfg_graph).cfg_node_type,CfgNodeType::Root { static_ast_nodes: _ }){
                    // 是 局部变量(在函数内定义的变量)
                    let cfg_entry = get_cfg_entry_by_cfg_node(cfg_graph, symtab, cfg_node)?.with_context(||format!("这个cfg node:{} 没有对应的entry节点",cfg_node))?;
                    push_instr!(alloc_instr to cfg_entry in cfg_graph slab instr_slab);
                }else{
                    // 说明这个 cfg_node 就是root ，那么直接把 alloc 指令加入 root 就行了
                    push_instr!(alloc_instr to cfg_node in cfg_graph slab instr_slab);
                }

                // 加入 defvar 指令 给变量赋值
                let defvar_instr = InstrType::new_def_var(var_type.clone(), var_symidx.clone(), Some(transed_value_symidx.clone())).to_instr();
                push_instr!(defvar_instr to cfg_node in cfg_graph slab instr_slab);
            }
            /// 考虑这个语句的 et_sep_item_node 不是 = 的情况
            EtNodeType::Operator { op, ast_node: _, text: _ } => {
                // debug_info_red!("no =  as start ");
                let op_values = direct_child_nodes!(at et_sep_item_node in et_tree);
                let var_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, et_sep_item_node, decl_parent_scope, cfg_node, counter, instr_slab, symtab_g)?;
                let var_type = symtab.get_symbol(&var_symidx)?.get_type()?.clone();
                //大纲：
                //将var_symidx处理看是普通变量还是数组变量，如果是数组，则将value_symidx的内容和var_symidx进行比对整合
                
                // let value_type = find!(field TYPE:Type at value_symidx in symtab debug symtab_graph symtab_g).unwrap().clone();

                // 加入 alloc 指令 分配内存
                let alloc_instr = InstrType::new_alloc(var_type, var_symidx).to_instr();
                if !matches!(&node!(at cfg_node in cfg_graph).cfg_node_type,CfgNodeType::Root { static_ast_nodes: _ }){
                    // 是 局部变量(在函数内定义的变量)
                    let cfg_entry = get_cfg_entry_by_cfg_node(cfg_graph, symtab, cfg_node)?.with_context(||format!("这个cfg node:{} 没有对应的entry节点",cfg_node))?;
                    push_instr!(alloc_instr to cfg_entry in cfg_graph slab instr_slab);
                }else{
                    // 说明这个 cfg_node 就是root ，那么直接把 alloc 指令加入 root 就行了
                    push_instr!(alloc_instr to cfg_node in cfg_graph slab instr_slab);
                }

                // 加入 defvar 指令 给变量赋值
                // let defvar_instr = InstrType::new_def_var(var_type.clone(), var_symidx.clone(), Some(transed_value_symidx.clone())).to_instr();
                // push_instr!(defvar_instr to cfg_node in cfg_graph slab instr_slab);
            }
            // 首个 operator 不是 = assign 的情况
            EtNodeType::Constant { const_sym_idx: _, ast_node: _, text: _ } => todo!(),
            EtNodeType::Symbol { sym_idx: _, ast_node, text:_, def_or_use } => {
                //获得变量类型，做成symidx
                let type_ast_node = find!(rule RULE_declarationSpecifiers at ast_decl_node in ast_tree).unwrap();
                let var_type = Type::new(type_ast_node, ast_tree);
                let ast_node = *ast_node;
                let var_str = &node!(at ast_node in ast_tree).text;
                let symbol_symidx = process_symbol(ast_tree, scope_tree, symtab, &def_or_use, var_str, decl_parent_scope, symtab_g,cfg_node,cfg_graph,Some(et_sep_item_node),et_tree)?;
                let def_instr = InstrType::new_def_var(var_type.clone(), symbol_symidx.clone(), None).to_instr();
                let alloc_instr = InstrType::new_alloc(var_type.clone(), symbol_symidx.clone().clone()).to_instr();
                let cfg_entry =get_cfg_entry_by_cfg_node(cfg_graph, symtab, cfg_node)?.with_context(||format!("这个cfg node:{} 没有对应的entry节点",cfg_node))?;
                // 注意，这里def_instr 需要放到 cfg_entry 中，不能放到这个basic block，它可能是在一个循环中
                let instr = push_instr!(def_instr to cfg_node in cfg_graph slab instr_slab);
                node_mut!(at cfg_node in cfg_graph).get_mut_def_symidx_instr_tuple_vec()?.push((symbol_symidx.clone(),instr));
                push_instr!(alloc_instr to cfg_entry in cfg_graph slab instr_slab);
            }
            _ => return Err(anyhow!("{}这里不应该为sep类型", et_sep_item_node)),
        }
    }
    Ok(())
}

///将函数名存入符号表，将函数签名处理为ir，并处理函数体内的语句
fn parse_func2nhwc(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, symtab:&mut SymTab,et_tree:&mut EtTree, ast2scope:&HashMap<u32, u32>, ast_fun:u32, ast_funsign:u32, cfg_entry:u32, instr_slab:&mut InstrSlab,
    op_symtab_graph:&mut Option<&mut SymTabGraph>,scope_tree:&mut ScopeTree,
) -> Result<()> {
    //获取函数所对应的scopenode
    if let Some(&func_scope) = ast2scope.get(&ast_fun) {
        //获取函数名称
        let func_name = &node!(at ast_funsign in ast_tree).text;
        // let name_symidx = SymIdx::new(0, func_name.to_string());
        //获取返回类型
        let ast_retype = find!(rule RULE_declarationSpecifiers at ast_fun in ast_tree).unwrap();
        let _func_rettype = &node!(at ast_retype in ast_tree).text;
        //获取参数列表
        let mut arg_syms:Vec<SymIdx> = vec![];
        //添加到符号表中，
        let func_symidx = process_func_symbol(symtab,  op_symtab_graph,func_name)?;
        let _:Vec<_> = etc::dfs(cfg_graph, cfg_entry).iter().map(|&cfg_node|{node_mut!(at cfg_node in cfg_graph).add_func_cor_symidx(func_symidx.clone())}).collect();
        // 添加返回值到符号表
        let func_ret_symidx = process_symbol(ast_tree, scope_tree, symtab, &DeclOrDefOrUse::DeclDef { type_ast_node: ast_retype }, &format!("{}_{}",func_name,"ret"), 0, op_symtab_graph, cfg_entry, cfg_graph, None,et_tree)?;
        //函数有参数
        if let Some(para) = find!(rule RULE_declarator then RULE_directDeclarator finally RULE_parameterTypeList at ast_fun in ast_tree) {
            let ast_func_args = find_nodes!(rule RULE_parameterList finally RULE_parameterDeclaration at para in ast_tree);
            //将函数签名转为ir
            for ast_func_arg in ast_func_args {
                let ast_para_sym = find!(rule RULE_declarator at ast_func_arg in ast_tree).unwrap();
                let ast_arg_type = find!(rule RULE_declarationSpecifiers at ast_func_arg in ast_tree).unwrap();
                let func_arg_str = &node!(at ast_para_sym in ast_tree).text;
                let arg_symidx = process_symbol(ast_tree, scope_tree, symtab, &DeclOrDefOrUse::DeclDef { type_ast_node:ast_arg_type }, func_arg_str, func_scope, op_symtab_graph, cfg_entry, cfg_graph,None,et_tree)?;
                arg_syms.push(arg_symidx);
            }
            let func_type = Type::Fn { arg_syms: arg_syms.clone(), ret_sym:func_ret_symidx.clone()};
            symtab.get_mut_symbol(&func_symidx)?.add_type(func_type);
            // label:function
        }
        //函数无参数，则不需要处理参数部分
        else {
            let func_type = Type::Fn { arg_syms: vec![], ret_sym:func_ret_symidx.clone()};
            symtab.get_mut_symbol(&func_symidx)?.add_type(func_type);
        };
        //对所有旗下的cfg_node 加入函数信息
        //做成instr放在cfg的entry里面
        let func_instr = InstrType::new_def_func(func_symidx.clone(), func_ret_symidx, arg_syms).to_instr();
        // 把信息加入到 ！compilation_unit 中
        symtab.get_mut_global_info().get_mut_all_cfg_func_name_entry_tuples()?.push((func_symidx.clone(),cfg_entry));
        // 把cfg entry 信息加入到 func symbol 中
        symtab.get_mut_symbol(&func_symidx)?.add_cfg_entry_node(cfg_entry);


        push_instr!(func_instr to cfg_entry in cfg_graph slab instr_slab);
    } else {
        return Err(anyhow!("找不到{}该函数的scopenode!", ast_fun));
    }
    Ok(())
}

/// 由于cfg 里面包含了其他的一些块和边，例如 branch 块和 after conditioned边
/// 因此我们需要再做一次转化，把边转化成相应的跳转或者调整代码，把所有node 都转化成BasicBlock
pub fn parse_cfg_into_nhwc_cfg(
    cfg_graph:&mut CfgGraph, scope_tree:&mut ScopeTree, ast_tree:&mut AstTree, symtab:&mut SymTab, et_tree:&mut EtTree, ast2scope:&mut HashMap<u32, u32>, mut counter:u32, instr_slab:&mut InstrSlab,
    symtab_graph:&mut Option<&mut SymTabGraph>,
) -> Result<()> {
    // let (cfg_graph,scope_tree,ast_tree,symtab,et_tree,ast2scope)= (&mut context.cfg_graph , &mut context.scope_tree,&mut context.ast_tree,&mut context.symtab,&mut context.et_tree,&context.ast2scope);

    let start_node=0;
    if let CfgNodeType::Root { static_ast_nodes } = &node!(at start_node in cfg_graph).cfg_node_type{
        for static_ast_node in static_ast_nodes.clone().iter(){
            parse_declaration2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, 0, *static_ast_node, start_node, &mut counter, instr_slab, symtab_graph)?;
        } 
    }
    //先遍历一遍函数名，将函数名加入到符号表中
    let cfg_funcs = direct_child_nodes!(at start_node in cfg_graph);
    for &cfg_entry in cfg_funcs.iter() {
        match &node!(at cfg_entry in cfg_graph).cfg_node_type {
            CfgNodeType::Entry { ast_node, calls_in_func: _ } => {
                //查找函数名称所在节点
                let func_def_ast_node = *ast_node;
                let ast_funsign = find!(rule RULE_declarator then RULE_directDeclarator finally RULE_directDeclarator at func_def_ast_node in ast_tree).unwrap();

                parse_func2nhwc(ast_tree, cfg_graph, symtab,et_tree, ast2scope, func_def_ast_node, ast_funsign, cfg_entry, instr_slab, symtab_graph, scope_tree)?;
            }
            _ => return Err(anyhow!("entry不是函数签名,cfg出错")),
        }
    }
    //再遍历一遍entry，对于每个函数做dfs,处理函数体
    for &cfg_entry in cfg_funcs.iter() {
        let dfs_vec = etc::dfs(cfg_graph, cfg_entry);
        // dfs_vec.sort_by(|node| )
        // dfs_vec.reverse();
        for &cfg_node in dfs_vec.iter() {
            match &node!(at cfg_node in cfg_graph).cfg_node_type{
                CfgNodeType::BasicBlock { ast_nodes } => {
                    parse_bb2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, ast_nodes.clone(), cfg_node, &mut counter, instr_slab, symtab_graph)?;
                },
                _ => {},
            }
        }
        for &cfg_node in dfs_vec.iter() {
            // debug_info_yellow!("dfs current is {:?}", cfg_node);
            let cfgnode = node!(at cfg_node in cfg_graph);
            match &cfgnode.cfg_node_type {
                CfgNodeType::Branch { ast_expr_node } => {
                    parse_branch2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_expr_node, cfg_node, &mut counter, instr_slab, symtab_graph)?
                }
                CfgNodeType::Switch { ast_expr_node:_ } => {
                    // parse_branch2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_expr_node, cfg_node, counter, symtab_g)
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
                        &mut counter,
                        instr_slab,
                        symtab_graph,
                    )?;
                }
                CfgNodeType::WhileLoop { ast_expr_node } => {
                    parse_whileloop2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_expr_node, cfg_node, &mut counter, instr_slab, symtab_graph)?
                }
                _ => {}
            }
        }
    }
    // debug_info_yellow!("success end");
    Ok(())
}
// /// 这个函数会把入边转移到 新建的 较前的  basic block，并返回这个 cfg_node:u32
// /// 然后把出边转移到较后的 cfg_node  
// /// 并且可以通过添加一个Option<idx> 来选择分割instrs 到这个新增的 basic block  
// /// 将下标为[0,idx)的 instr 转移到新的 basic block
// /// 需要注意的是存在phi_instrs 和 instrs 两种 instr ，执行这个函数必须确保 phi_instrs 为空，并且instrs 有足够的语句
// pub fn split_cfg_node(cfg_node:u32,cfg_graph:&mut CfgGraph) -> Result<u32>{

// }

/// 在两个cfg node 之间插入一个bb ，并保留 边的属性，函数会自动判断究竟把带属性的边放到哪里(因为插入一个bb会多生成一条Direct边，需要判断把这条边放在什么位置)
/// 以下条件满足之一可以insert new bb 
/// 1. cfg_node1 和 cfg_node2 之间是一条 Direct 普通边 或 BodyHead BodyTail
/// 2. cfg_node1 和 cfg_node2 其中有一个是 BasicBlock
pub fn insert_bb_between(cfg_node1:u32, cfg_node2:u32, cfg_graph:&mut CfgGraph) -> Result<u32>{
    let cfg_former_edge_idx = cfg_graph.find_edge(node_index(cfg_node1 as usize), node_index(cfg_node2 as usize)).ok_or(anyhow!("找不到连接 cfg_node[{}] 和 cfg_node[{}]的边",cfg_node1,cfg_node2))
        .with_context(|| format!("在插入 cfg_node[{}] 和 cfg_node[{}]之间bb 失败",cfg_node1,cfg_node2))?;
    // 删除旧的边
    let cfg_former_edge_removed = cfg_graph.remove_edge(cfg_former_edge_idx).unwrap();
    let (cfg_node_type1, cfg_node_type2) = (&node!(at cfg_node1 in cfg_graph).cfg_node_type,&node!(at cfg_node2 in cfg_graph).cfg_node_type);
    if  cfg_former_edge_removed.cfg_edge_type.is_direct() {
        // 如果这条边本身就是一条普通边，那么就允许insert
        let mut bb_struct = CfgNode::new_bb(vec![]);
        bb_struct.add_func_cor_symidx(node!(at cfg_node1 in cfg_graph).get_func_cor_symidx()?.clone());
        let new_bb = add_node_with_edge!({bb_struct} with edge {cfg_former_edge_removed} from cfg_node1 in cfg_graph);
        add_edge!({CfgEdge::new_direct()} from new_bb to cfg_node2 in cfg_graph);
        Ok(new_bb)
    } else if cfg_former_edge_removed.cfg_edge_type.is_body_head() ||cfg_former_edge_removed.cfg_edge_type.is_body_tail()  {
        let mut bb_struct = CfgNode::new_bb(vec![]);
        bb_struct.add_func_cor_symidx(node!(at cfg_node1 in cfg_graph).get_func_cor_symidx()?.clone());
        let new_bb = add_node_with_edge!({bb_struct} with edge {CfgEdge::new_direct()} from cfg_node1 in cfg_graph);
        add_edge!({cfg_former_edge_removed} from new_bb to cfg_node2 in cfg_graph);
        Ok(new_bb)

    }else{
        match (cfg_node_type1,cfg_node_type2){
            (_,CfgNodeType::BasicBlock { ast_nodes:_ })=>{
                let new_bb = add_node_with_edge!({CfgNode::new_bb(vec![])} with edge {cfg_former_edge_removed} from cfg_node1 in cfg_graph);
                add_edge!({CfgEdge::new_direct()} from new_bb to cfg_node2 in cfg_graph);
                Ok(new_bb)
            }
            (CfgNodeType::BasicBlock { ast_nodes:_ },_)=>{
                let new_bb = add_node_with_edge!({CfgNode::new_bb(vec![])} with edge {CfgEdge::new_direct()} from cfg_node1 in cfg_graph);
                add_edge!({cfg_former_edge_removed} from new_bb to cfg_node2 in cfg_graph);
                Ok(new_bb)
            }
            _ => {
                Err(anyhow!("两个节点cfg_node[{}] cfg_node[{}]中都不存在bb",cfg_node1,cfg_node2))
            }
        }
    }
}


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


pub fn find_gather_of_branch_downward(cfg_branch_node:u32,cfg_graph:&CfgGraph)-> Result<u32>{
    let cur_branch_layer_count = 0;
    _recursive_find_gather(cfg_branch_node, cfg_graph, cur_branch_layer_count)
}
pub fn _recursive_find_gather(cfg_node:u32,cfg_graph:&CfgGraph, mut cur_branch_layer_count: u32) -> Result<u32>{
    if node!(at cfg_node in cfg_graph).cfg_node_type.is_gather(){
        cur_branch_layer_count -= 1;
    }else if node!(at cfg_node in cfg_graph).cfg_node_type.is_branch(){
        cur_branch_layer_count += 1;
    }
    // 如果 层数 =0 ，那么说明找到了
    if cur_branch_layer_count == 0{
        Ok(cfg_node)
    }else{
        let mut rst = Err(anyhow!("找不到此 if 对应的gather"));
        for neighbor in direct_child_nodes!(at cfg_node in cfg_graph){
            rst = rst.or(_recursive_find_gather(neighbor, cfg_graph, cur_branch_layer_count));
        }
        rst
    }
}
pub fn find_branch_of_gather_upwnward(cfg_branch_node:u32,cfg_graph:&CfgGraph)-> Result<u32>{
    let cur_branch_layer_count = 0;
    _recursive_find_branch(cfg_branch_node, cfg_graph, cur_branch_layer_count)
}
pub fn _recursive_find_branch(cfg_node:u32,cfg_graph:&CfgGraph, mut cur_branch_layer_count: u32) -> Result<u32>{
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

pub fn get_cfg_entry_by_cfg_node(cfg_graph:&CfgGraph,symtab:&SymTab,cfg_node:u32)-> Result<Option<u32>>{
    if node!(at cfg_node in cfg_graph).has_func_cor_symidx(){
        let func_symidx = node!(at cfg_node in cfg_graph).get_func_cor_symidx()?;
        let &cfg_entry = symtab.get_symbol(func_symidx)?.get_cfg_entry_node()?;
        Ok(Some(cfg_entry))
    }else{
        Ok(None)
    }
    
}