use std::collections::HashMap;
use petgraph::stable_graph::NodeIndex;

use super::{cfg_node::CfgNodeType, dot::Config, field::Field, nhwc_instr::InstrSlab};
use crate::{ add_node, add_node_with_edge, add_symbol, antlr_parser::cparser::{RULE_declaration, RULE_declarationSpecifiers, RULE_declarator, RULE_directDeclarator, RULE_expression, RULE_expressionStatement, RULE_forAfterExpression, RULE_forBeforeExpression, RULE_forMidExpression, RULE_parameterDeclaration, RULE_parameterList, RULE_parameterTypeList}, dfs_graph, direct_child_node, direct_children_nodes, find, find_nodes, node, node_mut, push_instr, rule_id, toolkit::{ast_node, etc::generate_png_by_graph, field::{Type, UseCounter}, nhwc_instr::{IcmpPlan, Instruction, Trans, UcmpPlan}, symbol::Symbol, symtab::{SymTabEdge, TYPE, USE_COUNTER}}};

use super::{ ast_node::AstTree, cfg_node::{CfgGraph, CfgNode}, context::Context, et_node::{Def_Or_Use, EtNodeType, EtTree}, field::FieldsOwner, gen_et::process_any_stmt, nhwc_instr::InstrType, scope_node::ScopeTree, symbol, symtab::{ SymIdx, SymTab, SymTabGraph}};

/*
 这个文件主要是对  cfg_graph 进行后一步处理，因为cfg_graph 在此之前还没有 
 */


pub type NhwcCfg = CfgGraph;

/// 这个函数根据stmt对instrs push instruction 
fn parse_stmt2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,symtab:&mut SymTab,scope_tree:&ScopeTree,et_tree:&mut EtTree,ast2scope:&HashMap<u32,u32>,ast_decl_node:u32,cfg_bb:u32,counter:&mut u32, instr_slab:&mut InstrSlab, symtab_g:&mut Option<&mut SymTabGraph>){
    //获取scope
    if let Some(decl_scope) = ast2scope.get(&ast_decl_node){
        let stmt_scope = *decl_scope;
        let decl_parent_scope = node!(at stmt_scope in scope_tree).parent;

        //将declaration生成et
        let et_root = process_any_stmt(et_tree, ast_tree, scope_tree, ast_decl_node, stmt_scope);

        //如果该节点有子树
        if let Some(_) = direct_child_node!(at et_root in et_tree ret option){
            let et_nodes = direct_children_nodes!(at et_root in et_tree);
            for et_node in et_nodes{
                let et_struct = &node!(at et_node in et_tree).et_node_type;
                match et_struct{
                    EtNodeType::Operator { op, ast_node, text:_ } => {
                        if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                            match op{
                                crate::toolkit::et_node::ExprOp::Assign => {
                                    let op_values = direct_children_nodes!(at et_node in et_tree);

                                    // 后序遍历 右边
                                    let value_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[1], decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    let value_type = find!(field TYPE:Type at value_symidx in symtab debug symtab_graph symtab_g).unwrap().clone();
                                    // 后序遍历 左边
                                    let var_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[0], decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    let var_type = find!(field TYPE:Type at var_symidx in symtab debug symtab_graph symtab_g).unwrap().clone();
                                    //如果结果和变量类型不同，添加自动转化instr
                                    let new_value_symidx = force_trans_type(cfg_graph, symtab, &var_type, &value_type, &value_symidx, decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    let assign_instr = InstrType::new_assign(var_symidx, new_value_symidx).to_instr();
                                    push_instr!(assign_instr to cfg_bb in cfg_graph slab instr_slab);
                                },
                                crate::toolkit::et_node::ExprOp::LPlusPlus => {
                                    if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret option){
                                        let (_,_) = process_self_increment(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, symbol_node, decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    }else{
                                        panic!("操作符{}下缺少符号",et_node);
                                    }
                                },
                                crate::toolkit::et_node::ExprOp::RPlusPlus => {
                                    if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret option){
                                        let (_,_) = process_self_increment(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, symbol_node, decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    }else{
                                        panic!("操作符{}下缺少符号",et_node);
                                    }
                                },
                                crate::toolkit::et_node::ExprOp::LMinusMinus => {
                                    if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret option){
                                        let (_,_) = process_self_attennuation(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, symbol_node, decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    }else{
                                        panic!("操作符{}下缺少符号",et_node);
                                    }
                                },
                                crate::toolkit::et_node::ExprOp::RMinusMinus => {
                                    if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret option){
                                        let (_,_) = process_self_attennuation(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, symbol_node, decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    }else{
                                        panic!("操作符{}下缺少符号",et_node);
                                    }
                                },
                                crate::toolkit::et_node::ExprOp::MulAssign => {
                                    //将*=取下面的两个子树，视作算术运算符进行自动类型转换
                                    let (mul_tmp_symidx,var_symidx,value_symidx,mul_tmp_type,var_type) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node, decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    let mul_instr = InstrType::new_mul(mul_tmp_symidx.clone(), var_symidx.clone(), value_symidx.clone(),mul_tmp_type.clone()).to_instr();
                                    push_instr!(mul_instr to cfg_bb in cfg_graph slab instr_slab);
                                    //赋值instr
                                    let assign_tmp_symidx = force_trans_type(cfg_graph, symtab, &var_type, &mul_tmp_type,&mul_tmp_symidx ,decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    let tmp_var_symidx = add_symbol!({Symbol::new(decl_parent_scope,format!("temp_{}",counter))} with field TYPE:{var_type.clone()} to symtab debug symtab_g);
                                    *counter += 1;
                                    let assign_instr = InstrType::new_assign(tmp_var_symidx,assign_tmp_symidx ).to_instr();
                                    push_instr!(assign_instr to cfg_bb in cfg_graph slab instr_slab);
                                },
                                crate::toolkit::et_node::ExprOp::DivAssign => {
                                    //将/=取下面的两个子树，视作算术运算符进行自动类型转换
                                    let (div_tmp_symidx,var_symidx,value_symidx,div_tmp_type,var_type) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node, decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    let div_instr = InstrType::new_div(div_tmp_symidx.clone(), var_symidx.clone(), value_symidx.clone(),div_tmp_type.clone()).to_instr();
                                    push_instr!(div_instr to cfg_bb in cfg_graph slab instr_slab);
                                    //赋值instr
                                    let assign_tmp_symidx = force_trans_type(cfg_graph, symtab, &var_type, &div_tmp_type,&div_tmp_symidx ,decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    let tmp_var_symidx = add_symbol!({Symbol::new(decl_parent_scope,format!("temp_{}",counter))} with field TYPE:{var_type.clone()} to symtab debug symtab_g);
                                    *counter += 1;
                                    let assign_instr = InstrType::new_assign(tmp_var_symidx,assign_tmp_symidx ).to_instr();
                                    push_instr!(assign_instr to cfg_bb in cfg_graph slab instr_slab);
                                },
                                crate::toolkit::et_node::ExprOp::PlusAssign => {
                                    //将+=取下面的两个子树，视作算术运算符进行自动类型转换
                                    let (add_tmp_symidx,var_symidx,value_symidx,add_tmp_type,var_type) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node, decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    let add_instr = InstrType::new_add(add_tmp_symidx.clone(), var_symidx.clone(), value_symidx.clone(),add_tmp_type.clone()).to_instr();
                                    push_instr!(add_instr to cfg_bb in cfg_graph slab instr_slab);
                                    //赋值instr
                                    let assign_tmp_symidx = force_trans_type(cfg_graph, symtab, &var_type, &add_tmp_type,&add_tmp_symidx ,decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    let tmp_var_symidx = add_symbol!({Symbol::new(decl_parent_scope,format!("temp_{}",counter))} with field TYPE:{var_type.clone()} to symtab debug symtab_g);
                                    *counter += 1;
                                    let assign_instr = InstrType::new_assign(tmp_var_symidx,assign_tmp_symidx ).to_instr();
                                    push_instr!(assign_instr to cfg_bb in cfg_graph slab instr_slab);
                                },
                                crate::toolkit::et_node::ExprOp::MinusAssign => {
                                    //将-=取下面的两个子树，视作算术运算符进行自动类型转换
                                    let (sub_tmp_symidx,var_symidx,value_symidx,sub_tmp_type,var_type) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node, decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    let sub_instr = InstrType::new_sub(sub_tmp_symidx.clone(), var_symidx.clone(), value_symidx.clone(),sub_tmp_type.clone()).to_instr();
                                    push_instr!(sub_instr to cfg_bb in cfg_graph slab instr_slab);
                                    //赋值instr
                                    let assign_tmp_symidx = force_trans_type(cfg_graph, symtab, &var_type, &sub_tmp_type,&sub_tmp_symidx ,decl_parent_scope, cfg_bb, counter, instr_slab, symtab_g);
                                    let tmp_var_symidx = add_symbol!({Symbol::new(decl_parent_scope,format!("temp_{}",counter))} with field TYPE:{var_type.clone()} to symtab debug symtab_g);
                                    *counter += 1;
                                    let assign_instr = InstrType::new_assign(tmp_var_symidx,assign_tmp_symidx ).to_instr();
                                    push_instr!(assign_instr to cfg_bb in cfg_graph slab instr_slab);
                                },
                                _ => {
                                    panic!("statment初始运算符应有赋值性质,ast_node {} 符号出现错误",*ast_node);
                                }
                            }
                        }else{
                            panic!("操作符下缺少具体变量或常量");
                        }
                    },
                    EtNodeType::Constant { const_sym_idx:_, ast_node:_, text:_ } => todo!(),
                    EtNodeType::Symbol { sym_idx:_, ast_node:_, text, def_or_use } => {

                        //获得变量类型，做成symidx
                        let type_node = find!(rule RULE_declarationSpecifiers at ast_decl_node in ast_tree).unwrap();
                        // let type_str = node!(at type_node in ast_tree).text.clone();
                        let var_type = Type::new(type_node,ast_tree);
                        println!("stat enter {}",text);
                        let symbol_symidx = process_symbol(ast_tree,scope_tree, symtab, &def_or_use, &text, decl_parent_scope,  symtab_g);

                        //创建空值
                        let value_symidx = SymIdx::new(decl_parent_scope, "".to_string());   
                        let def_instr = InstrType::new_def_var(var_type, symbol_symidx, value_symidx).to_instr();

                        push_instr!(def_instr to cfg_bb in cfg_graph slab instr_slab);
                    },
                    _ =>{
                        panic!("{}这里不应该为sep类型",et_node);
                    }
                }
            }
        }else{
            panic!("sep下面缺少具体的etnode，et树生成错误");
        }
    }else{
        panic!("ast2scope找不到{}",ast_decl_node);
    }
}

fn parse_bb2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,ast_nodes:Vec<u32>,cfg_bb:u32,counter:&mut u32, instr_slab:&mut InstrSlab, symtab_g:&mut Option<&mut SymTabGraph>){
    for astnode in ast_nodes{
        match(rule_id!(at astnode in ast_tree),astnode){
            (RULE_declaration,declaration_node)=>{
                parse_declaration2nhwc(ast_tree,cfg_graph,symtab, scope_tree,et_tree,ast2scope,declaration_node,cfg_bb,counter, instr_slab, symtab_g);
            },
            (RULE_expressionStatement,statement_node)=>{
                parse_stmt2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, ast2scope,statement_node, cfg_bb, counter, instr_slab, symtab_g)
            },
            (RULE_jumpStatement,jump_node) =>{

            },
            (_,_)=>{
                panic!("bb中未知RULE，{}不是expr或stmt",astnode);
            }
        }
    }    
}
fn parse_whileloop2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,ast_expr_node:u32,cfg_whileloop:u32,counter:&mut u32, instr_slab:&mut InstrSlab, symtab_graph:&mut Option<&mut SymTabGraph>){
    match(rule_id!(at ast_expr_node in ast_tree),ast_expr_node){
        (RULE_expression,statement_node)=>{
            let label_instr = InstrType::new_label(SymIdx::new(0, "while.head".to_string())).to_instr();
            push_instr!(label_instr to cfg_whileloop in cfg_graph slab instr_slab);
            parse_stmt2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, ast2scope,statement_node, cfg_whileloop, counter, instr_slab, symtab_graph);
        },
        (_,_)=>{
            panic!("whileloop中未知RULE,{}不是expr或stmt",ast_expr_node);
        }
    }
}
fn parse_forloop2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,ast_before_node:u32,ast_mid_node:u32,ast_after_node:u32,cfg_forloop:u32,op_body_head_and_tail:Option<(u32,u32)>,counter:&mut u32, instr_slab:&mut InstrSlab, symtab_graph:&mut Option<&mut SymTabGraph>){
    match rule_id!(at ast_before_node in ast_tree){
        RULE_forBeforeExpression=>{
            // push before instr label 
            let label_before_symidx = add_symbol!({Symbol::new(*ast2scope.get(&ast_before_node).unwrap(), "for.before:".to_string())} with field TYPE:{Type::Label} to symtab);
            let label_before_instr = InstrType::new_label(label_before_symidx).to_instr();
            push_instr!(label_before_instr to cfg_forloop in cfg_graph slab instr_slab);
            parse_stmt2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, ast2scope, ast_before_node, cfg_forloop, counter, instr_slab, symtab_graph);
        },
        _=>{
            panic!("forloop中未知RULE,{}不是或forBeforeExpression",ast_before_node);
        }
    }
    match rule_id!(at ast_mid_node in ast_tree){
        RULE_forMidExpression=>{
            // push before instr label 
            let label_mid_symidx = add_symbol!({Symbol::new(*ast2scope.get(&ast_mid_node).unwrap(), "for.mid:".to_string())} with field TYPE:{Type::Label} to symtab);
            let label_mid_instr = InstrType::new_label(label_mid_symidx).to_instr();
            push_instr!(label_mid_instr to cfg_forloop in cfg_graph slab instr_slab);
            parse_stmt2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, ast2scope, ast_mid_node, cfg_forloop, counter, instr_slab, symtab_graph);
        },
        _=>{
            panic!("forloop中未知RULE,{}不是或forMidExpression",ast_after_node);
        }
    }
    match rule_id!(at ast_after_node in ast_tree){
        RULE_forAfterExpression=>{
            // push before instr label 
            let label_after_symidx = add_symbol!({Symbol::new(*ast2scope.get(&ast_after_node).unwrap(), "for.after:".to_string())} with field TYPE:{Type::Label} to symtab);
            let label_after_instr = InstrType::new_label(label_after_symidx).to_instr();
            let (cfg_body_head_node,cfg_body_tail_node) = op_body_head_and_tail.unwrap();
            push_instr!(label_after_instr to cfg_body_head_node in cfg_graph slab instr_slab);
            parse_stmt2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, ast2scope, ast_after_node, cfg_body_tail_node, counter, instr_slab,symtab_graph);
        },
        _=>{
            panic!("forloop中未知RULE,{}不是或forAfterExpression",ast_after_node);
        }
    }
}
// fn parse_switch2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,ast_expr_node:u32,cfg_whileloop:u32,mut counter:u32, instr_slab:&mut InstrSlab, symtab_g:&mut Option<&mut SymTabGraph>){
    // match(rule_id!(at ast_expr_node in ast_tree),ast_expr_node){
    //     (RULE_expression,statement_node)=>{
    //         let label_instr = InstrType::new_label(SymIdx::new(0, "while_head".to_string())).to_instr();
    //         push_instr!(label_instr to cfg_whileloop in cfg_graph slab instr_slab);
    //         parse_stmt2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, ast2scope,statement_node, cfg_whileloop, counter,symtab_g);
    //     },
    //     (_,_)=>{
    //         panic!("forloop中未知RULE,{}不是或stmt",ast_expr_node);
    //     }
    // }
//}
fn parse_branch2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,ast_expr_node:u32,cfg_whileloop:u32,counter:&mut u32, instr_slab:&mut InstrSlab, symtab_g:&mut Option<&mut SymTabGraph>){
    // match(rule_id!(at ast_expr_node in ast_tree),ast_expr_node){
    //     (RULE_expression,statement_node)=>{
    //         let label_instr = InstrType::new_label(SymIdx::new(0, "while_head".to_string())).to_instr();
    //         push_instr!(label_instr to cfg_whileloop in cfg_graph slab instr_slab);
    //         parse_stmt2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, ast2scope,statement_node, cfg_whileloop, counter,symtab_g);
    //     },
    //     (_,_)=>{
    //         panic!("forloop中未知RULE,{}不是或stmt",ast_expr_node);
    //     }
    // }
}
fn process_constant(symtab:&mut SymTab,const_literal:&String, symtab_graph:&mut Option<&mut SymTabGraph>)->SymIdx{
    // 我们认为 constant 的scope node 都是全局的
    match find!(symbol mut {const_literal.clone()} of scope {0} in symtab debug symtab_graph symtab_graph){
        Some(const_sym) => {
            // do nothing 找到了同样的常量
            println!("{:?}",const_sym);
            let use_counter = find!(field mut USE_COUNTER:UseCounter in const_sym).unwrap();
            use_counter.use_count+=1;
        },
        None => {
            println!("add const {} to symtab !!!!",const_literal);
            add_symbol!({Symbol::new(0, const_literal.clone())} 
                with field USE_COUNTER:{UseCounter{ use_count: 1}} 
                with field TYPE:{Type::new_from_const(const_literal)} 
                to symtab debug symtab_graph);
            
        },
    }
    let const_symidx = SymIdx::new(0, const_literal.to_string());
    const_symidx
}

fn process_symbol(ast_tree:&AstTree,scope_tree:&ScopeTree,symtab:&mut SymTab,def_or_use:&Def_Or_Use,symbol_name:&String,scope_node:u32, symtab_graph:&mut Option<&mut SymTabGraph>)->SymIdx{   
    let mut symbol_scope = scope_node;
    match def_or_use{
        Def_Or_Use::Def { type_ast_node } => { 
            let symbol_str = symbol_name.clone();
            println!("处理的符号为{}",*symbol_name);
            let var_type = Type::new(*type_ast_node, ast_tree);
            let symbol_symidx = add_symbol!({Symbol::new(scope_node,symbol_str)} with field TYPE:{var_type} to symtab debug symtab_graph);
            symbol_symidx
        },
        Def_Or_Use::Use => {
            while let None = find!(symbol {symbol_name.clone()} of scope symbol_scope in symtab debug symtab_graph symtab_graph ){
                println!("向上查找");
                let ast = node!(at symbol_scope in scope_tree).ast_node;
                if symbol_scope == 0{
                    println!("ast{}",ast);
                generate_png_by_graph(&symtab_graph.as_ref().unwrap(),"symtab_graph".to_string(),&[Config::Record,Config::Rounded,Config::SymTab]);
                    panic!("scope为{}符号表中未找到{:?}",symbol_scope,symbol_name.clone());
                }
                symbol_scope = node!(at symbol_scope in scope_tree).parent;
            }
            let symbol_symidx = SymIdx::new(symbol_scope, symbol_name.clone());
            symbol_symidx
        },
    }
}
///具有赋值性质的会将value的类型强制转换为var的类型，返回转换后的symidx
fn force_trans_type(cfg_graph:&mut CfgGraph,symtab:&mut SymTab,to_trans_type:&Type,transed_type:&Type,transed_symidx:&SymIdx,scope_node:u32,cfg_bb:u32,counter:&mut u32,instr_slab:&mut InstrSlab,symtab_graph:&mut Option<&mut SymTabGraph>)->SymIdx{
    match(transed_type,to_trans_type){
        (Type::I32,Type::F32)=>{ 
            //创建f32类型的临时变量
            let ftmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::F32} to symtab debug symtab_graph);
            *counter += 1;
            let i2f_instr = InstrType::new_int2float(transed_symidx.clone(), ftmp_type_symidx.clone()).to_instr();
            push_instr!(i2f_instr to cfg_bb in cfg_graph slab instr_slab);
            return ftmp_type_symidx
        },
        (Type::I32, Type::I32)|(Type::F32, Type::F32)|(Type::I1, Type::I1) => {
            //相同类型不需要转换
            return transed_symidx.clone()
        },
        (Type::I32, Type::I1) => {
            //创建i1类型的变临时量
            let btmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph);
            let i2b_instr = InstrType::new_icmp(btmp_type_symidx.clone(), IcmpPlan::Ne, transed_symidx.clone(), izero_symidx, Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return btmp_type_symidx
        },
        (Type::F32, Type::I32) => {
            //创建i32类型的临时变量
            let itmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I32} to symtab debug symtab_graph);
            *counter += 1;
            let f2i_instr = InstrType::new_float2int(transed_symidx.clone(), itmp_type_symidx.clone()).to_instr();
            push_instr!(f2i_instr to cfg_bb in cfg_graph slab instr_slab);
            return itmp_type_symidx
        },
        (Type::F32, Type::I1) => {
            //创建i1类型临时变量
            let btmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph);
            let f2b_instr = InstrType::new_ucmp(btmp_type_symidx.clone(), UcmpPlan::One, transed_symidx.clone(), fzero_symidx, Type::I1).to_instr();
            push_instr!(f2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return btmp_type_symidx
        },
        (Type::I1, Type::I32) => {
            //创建i32类型临时变量
            let itmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I32} to symtab debug symtab_graph);
            *counter += 1;
            let b2i_instr = InstrType::new_bool2int(transed_symidx.clone(), itmp_type_symidx.clone()).to_instr();
            push_instr!(b2i_instr to cfg_bb in cfg_graph slab instr_slab);
            return itmp_type_symidx
        },
        (Type::I1,Type::F32)=>{
            //i1转f32分两步，第一步i1转i32，第二步i32转f32
            //第一步
            let itmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I32} to symtab debug symtab_graph);
            *counter += 1;
            let b2i_instr = InstrType::new_bool2int(transed_symidx.clone(), itmp_type_symidx.clone()).to_instr();
            push_instr!(b2i_instr to cfg_bb in cfg_graph slab instr_slab);
            //第二步
            let ftmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::F32} to symtab debug symtab_graph);
            *counter += 1;
            let i2f_instr = InstrType::new_int2float(itmp_type_symidx.clone(), ftmp_type_symidx.clone()).to_instr();
            push_instr!(i2f_instr to cfg_bb in cfg_graph slab instr_slab);
            return ftmp_type_symidx
        },
        _ => {
            panic!("该类型不支持强制转化");
        }
    }
}
///算数运算符自动类型转换，返回转换后两个操作符的symidx
fn autotrans_arith_type(cfg_graph:&mut CfgGraph,symtab:&mut SymTab,l_type:&Type,l_symidx:&SymIdx,r_type:&Type,r_symidx:&SymIdx,scope_node:u32,cfg_bb:u32,counter:&mut u32,instr_slab:&mut InstrSlab,symtab_graph:&mut Option<&mut SymTabGraph>)->(SymIdx,SymIdx){
    //adapt函数会去除掉不能进行运算的类型情况
    match(l_type.clone(),r_type.clone()){
        (Type::I32,Type::F32) =>{
            //i32自动转换为f32
            let ftmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::F32} to symtab debug symtab_graph);
            *counter += 1;
            let i2f_instr = InstrType::new_int2float(l_symidx.clone(), ftmp_type_symidx.clone()).to_instr() ;
            push_instr!(i2f_instr to cfg_bb in cfg_graph slab instr_slab);
            return (ftmp_type_symidx,r_symidx.clone())
        },
        (Type::F32,Type::I32) =>{
            //i32转f32
            let ftmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::F32} to symtab debug symtab_graph);
            *counter += 1;
            let i2f_instr = InstrType::new_int2float(r_symidx.clone(), ftmp_type_symidx.clone()).to_instr() ;
            push_instr!(i2f_instr to cfg_bb in cfg_graph slab instr_slab);
            return (l_symidx.clone(),ftmp_type_symidx)
        },
        (Type::I1,Type::I32) =>{
            //i1转i32
            let itmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I32} to symtab debug symtab_graph);
            *counter += 1;
            let b2i_instr = InstrType::new_bool2int(l_symidx.clone(), itmp_type_symidx.clone()).to_instr() ;
            push_instr!(b2i_instr to cfg_bb in cfg_graph slab instr_slab);
            return (itmp_type_symidx,r_symidx.clone())
        },
        (Type::I32,Type::I1)=>{
            //i1转i32
            let itmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I32} to symtab debug symtab_graph);
            *counter += 1;
            let b2i_instr = InstrType::new_bool2int(r_symidx.clone(), itmp_type_symidx.clone()).to_instr() ;
            push_instr!(b2i_instr to cfg_bb in cfg_graph slab instr_slab);
            return (l_symidx.clone(),itmp_type_symidx)
        },
        (Type::I1,Type::F32)=>{
            //先i1转i32
            let itmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I32} to symtab debug symtab_graph);
            *counter += 1;
            let b2i_instr = InstrType::new_bool2int(l_symidx.clone(), itmp_type_symidx.clone()).to_instr() ;
            push_instr!(b2i_instr to cfg_bb in cfg_graph slab instr_slab);
            //再i32转f32
            let ftmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::F32} to symtab debug symtab_graph);
            *counter += 1;
            let i2f_instr = InstrType::new_int2float(itmp_type_symidx,ftmp_type_symidx.clone() ).to_instr();
            push_instr!(i2f_instr to cfg_bb in cfg_graph slab instr_slab);
            return (ftmp_type_symidx,r_symidx.clone())
        },
        (Type::F32,Type::I1)=>{
            //i1转i32
            let itmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I32} to symtab debug symtab_graph);
            *counter += 1;
            let b2i_instr = InstrType::new_bool2int(r_symidx.clone(), itmp_type_symidx.clone()).to_instr() ;
            push_instr!(b2i_instr to cfg_bb in cfg_graph slab instr_slab);
            //i32转f32
            let ftmp2_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::F32} to symtab debug symtab_graph);
            *counter += 1;
            let i2f_instr = InstrType::new_int2float(itmp_type_symidx,ftmp2_type_symidx.clone() ).to_instr();
            push_instr!(i2f_instr to cfg_bb in cfg_graph slab instr_slab);
            return (l_symidx.clone(),ftmp2_type_symidx)
        }
        (Type::I32,Type::I32)|(Type::F32,Type::F32)|(Type::I1,Type::I1) =>{
            //相同不用转换
            return (l_symidx.clone(),r_symidx.clone())
        }
        _ =>{
            panic!("操作数类型不能参与运算");
        },
    }
}
///逻辑运算符自动类型转换，返回转换后的两个操作符的symidx
fn autotrans_logic_type(cfg_graph:&mut CfgGraph,symtab:&mut SymTab,l_type:&Type,l_symidx:&SymIdx,r_type:&Type,r_symidx:&SymIdx,scope_node:u32,cfg_bb:u32,counter:&mut u32,instr_slab:&mut InstrSlab,symtab_graph:&mut Option<&mut SymTabGraph>)->(SymIdx,SymIdx){
    //adapt函数会去除掉不能进行运算的类型情况
    match(l_type.clone(),r_type.clone()){
        (Type::I32,Type::F32) =>{
            //i32转i1
            //由于除了i1都要转为i1，这里变量名中ltmp指左操作符转换后的临时symidx，rtmp指右操作符
            //处理左操作数，i32转i1
            let ltmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            //转i1相当于和0进行不等比较，这里调用常数处理函数处理0
            let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph);
            let i2b_instr = InstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne ,l_symidx.clone(), izero_symidx,Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            //处理右操作数，f32转i1
            let rtmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph);
            let f2b_instr = InstrType::new_ucmp(rtmp_type_symidx.clone(), UcmpPlan::One ,r_symidx.clone(), fzero_symidx,Type::I1).to_instr();
            push_instr!(f2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return (ltmp_type_symidx,rtmp_type_symidx)
        },
        (Type::F32,Type::I32) =>{
            //左操作数f32转i1
            let ltmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph);
            let i2b_instr = InstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne ,r_symidx.clone(), izero_symidx,Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            //右操作数i32转i1
            let rtmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph);
            let f2b_instr = InstrType::new_ucmp(ltmp_type_symidx.clone(), UcmpPlan::One ,l_symidx.clone(), fzero_symidx,Type::I1).to_instr();
            push_instr!(f2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return (ltmp_type_symidx,rtmp_type_symidx)
        },
        (Type::I1,Type::I32) =>{
            //处理右操作数i32转i1
            let rtmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph);
            let i2b_instr = InstrType::new_icmp(rtmp_type_symidx.clone(), IcmpPlan::Ne ,r_symidx.clone(), izero_symidx,Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return (l_symidx.clone(),rtmp_type_symidx)
        },
        (Type::I32,Type::I1)=>{
            //处理左操作数i32转i1
            let ltmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph);
            let i2b_instr = InstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne ,l_symidx.clone(), izero_symidx,Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return (ltmp_type_symidx.clone(),r_symidx.clone())
        },
        (Type::I1,Type::F32)=>{
            //处理右操作数f32转i1
            let rtmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph);
            let i2b_instr = InstrType::new_ucmp(rtmp_type_symidx.clone(), UcmpPlan::One ,r_symidx.clone(), fzero_symidx,Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return (l_symidx.clone(),rtmp_type_symidx.clone())
        },
        (Type::F32,Type::I1)=>{
            //左操作数f32转i1
            let ltmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph);
            let i2b_instr = InstrType::new_ucmp(ltmp_type_symidx.clone(), UcmpPlan::One ,l_symidx.clone(), fzero_symidx,Type::I1).to_instr();
            push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return (ltmp_type_symidx.clone(),r_symidx.clone())
        }
        (Type::F32,Type::F32) => {
            //左操作数f32转i1
            let ltmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph);
            let lf2b_instr = InstrType::new_ucmp(ltmp_type_symidx.clone(), UcmpPlan::One ,l_symidx.clone(), fzero_symidx.clone(),Type::I1).to_instr();
            push_instr!(lf2b_instr to cfg_bb in cfg_graph slab instr_slab);
            //右操作数f32转i1
            let rtmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let rf2b_instr = InstrType::new_ucmp(ltmp_type_symidx.clone(), UcmpPlan::One ,r_symidx.clone(), fzero_symidx.clone(),Type::I1).to_instr();
            push_instr!(rf2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return (ltmp_type_symidx,rtmp_type_symidx)
        }
        (Type::I32,Type::I32) => {
            //左操作数i32转i1
            let ltmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph);
            let li2b_instr = InstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne ,l_symidx.clone(), izero_symidx.clone(),Type::I1).to_instr();
            push_instr!(li2b_instr to cfg_bb in cfg_graph slab instr_slab);
            //右操作数i32转i1
            let rtmp_type_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
            *counter += 1;
            let ri2b_instr = InstrType::new_icmp(ltmp_type_symidx.clone(), IcmpPlan::Ne ,r_symidx.clone(), izero_symidx.clone(),Type::I1).to_instr();
            push_instr!(ri2b_instr to cfg_bb in cfg_graph slab instr_slab);
            return (ltmp_type_symidx,rtmp_type_symidx)
        }
        (Type::I1,Type::I1) => {
            return (l_symidx.clone(),r_symidx.clone())
        }
        _ =>{
            panic!("操作数无法进行逻辑计算");
        },
    }
}
///处理自增运算符，不分左右,统一返回增加instr和赋值instr
fn process_self_increment(ast_tree:&AstTree,cfg_graph:&mut CfgGraph,et_tree:&EtTree,scope_tree:&ScopeTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,op_et_node:u32,scope_node:u32,cfg_bb:u32,counter:&mut u32,instr_slab:&mut InstrSlab,symtab_graph:&mut Option<&mut SymTabGraph>) -> (SymIdx,SymIdx){
    //取自增运算符下的symidx和type
    let var_symidx = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, op_et_node, scope_node,  cfg_bb, counter, instr_slab, symtab_graph);
    let var_type = find!(field TYPE:Type at var_symidx in symtab debug symtab_graph symtab_graph).unwrap().clone();
    //读取变量的instr
    let tmp_loadvar_symidx = add_symbol!({Symbol::new(scope_node, format!("temp_{}",counter))} with field TYPE:{var_type.clone()} to symtab debug symtab_graph);
    *counter += 1;
    let load_instr = InstrType::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone()).to_instr();
    push_instr!(load_instr to cfg_bb in cfg_graph slab instr_slab);
    //自增的instr，以及类型转换
    let tmp_addvar_symidx = add_symbol!({Symbol::new(scope_node, format!("temp_{}",counter))} with field TYPE:{var_type.clone()} to symtab debug symtab_graph);
    *counter += 1;
    match var_type {
        Type::F32 => {
            let fone_symidx = process_constant(symtab, &"1.0".to_string(), symtab_graph);
            let add_instr = InstrType::new_add(tmp_addvar_symidx.clone(), var_symidx.clone(), fone_symidx,var_type).to_instr();
            push_instr!(add_instr to cfg_bb in cfg_graph slab instr_slab);
        },
        Type::I32 => {
            let ione_symidx = process_constant(symtab, &"1".to_string(), symtab_graph);
            let add_instr = InstrType::new_add(tmp_addvar_symidx.clone(), var_symidx.clone(), ione_symidx,var_type).to_instr();
            push_instr!(add_instr to cfg_bb in cfg_graph slab instr_slab);
        },
        _ => {
            panic!("自增自减操作数不是数字类型的");
        },
    }
    //自增后赋值的instr
    let assign_instr = InstrType::new_assign(var_symidx, tmp_addvar_symidx.clone()).to_instr();
    push_instr!(assign_instr to cfg_bb in cfg_graph slab instr_slab);
    (tmp_addvar_symidx,tmp_loadvar_symidx)
}
///处理自减运算符，不分左右
fn process_self_attennuation(ast_tree:&AstTree,cfg_graph:&mut CfgGraph,et_tree:&EtTree,scope_tree:&ScopeTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,op_et_node:u32,scope_node:u32,cfg_bb:u32,counter:&mut u32,instr_slab:&mut InstrSlab,symtab_graph:&mut Option<&mut SymTabGraph>) -> (SymIdx,SymIdx){
    //取操作数的symidx和type
    let var_symidx = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, op_et_node, scope_node,  cfg_bb, counter, instr_slab, symtab_graph);
    let var_type = find!(field TYPE:Type at var_symidx in symtab debug symtab_graph symtab_graph).unwrap().clone();
    //读取变量的instr
    let tmp_loadvar_symidx = add_symbol!({Symbol::new(scope_node, format!("temp_{}",counter))} with field TYPE:{var_type.clone()} to symtab debug symtab_graph);
    *counter += 1;
    let load_instr = InstrType::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone()).to_instr();
    push_instr!(load_instr to cfg_bb in cfg_graph slab instr_slab);
    //自减的instr
    let tmp_subvar_symidx = add_symbol!({Symbol::new(scope_node, format!("temp_{}",counter))} with field TYPE:{var_type.clone()} to symtab debug symtab_graph);
    *counter += 1;
    match var_type {
        Type::F32 => {
            let fone_symidx = process_constant(symtab, &"1.0".to_string(), symtab_graph);
            let sub_instr = InstrType::new_sub(tmp_subvar_symidx.clone(), var_symidx.clone(), fone_symidx,var_type).to_instr();
            push_instr!(sub_instr to cfg_bb in cfg_graph slab instr_slab);
        },
        Type::I32 => {
            let ione_symidx = process_constant(symtab, &"1".to_string(), symtab_graph);
            let sub_instr = InstrType::new_sub(tmp_subvar_symidx.clone(), var_symidx.clone(), ione_symidx,var_type).to_instr();
            push_instr!(sub_instr to cfg_bb in cfg_graph slab instr_slab);
        },
        _ => {
            panic!("自增自减操作数不是数字类型的");
        },
    }
    //自减后的赋值instr
    let assign_instr = InstrType::new_assign(var_symidx, tmp_subvar_symidx.clone()).to_instr();
    push_instr!(assign_instr to cfg_bb in cfg_graph slab instr_slab);
    (tmp_subvar_symidx,tmp_loadvar_symidx)
}
///处理操作符，获取下面的两个操作数，按算数操作符进行两个操作数的自动类型转换，返回（结果的临时变量，左操作数，右操作数，临时变量的类型）
fn process_arithop(ast_tree:&AstTree,cfg_graph:&mut CfgGraph,et_tree:&EtTree,scope_tree:&ScopeTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,root_et_node:u32,scope_node:u32,cfg_bb:u32,counter:&mut u32,instr_slab:&mut InstrSlab,symtab_graph:&mut Option<&mut SymTabGraph>)->(SymIdx,SymIdx,SymIdx,Type,Type){
    let next_nodes = direct_children_nodes!(at root_et_node in et_tree);
    //取右操作数symidx和type
    let r_symidx = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, next_nodes[1], scope_node,  cfg_bb, counter, instr_slab, symtab_graph);
    let r_type = find!(field TYPE:Type at r_symidx in symtab debug symtab_graph symtab_graph).unwrap().clone();
    //取左操作数symidx和type
    let l_symidx = process_et(ast_tree,cfg_graph, et_tree, scope_tree, symtab, ast2scope, next_nodes[0], scope_node,  cfg_bb, counter, instr_slab, symtab_graph);
    let l_type = find!(field TYPE:Type at l_symidx in symtab debug symtab_graph symtab_graph).unwrap().clone();
    //将左右操作数进行类型自动转换
    let (l_symidx,r_symidx) = autotrans_arith_type(cfg_graph, symtab, &l_type, &l_symidx, &r_type, &r_symidx, scope_node, cfg_bb, counter, instr_slab, symtab_graph);
    let var_type=Type::adapt(&l_type, &r_type);
    let tmp_var_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{var_type.clone()} to symtab debug symtab_graph);
    *counter += 1;
    //在复合操作符如+=这类操作符在类型转换后需要返回左操作数（即变量）的类型
    (tmp_var_symidx,l_symidx,r_symidx,var_type,l_type)
}

fn process_logicop(ast_tree:&AstTree,cfg_graph:&mut CfgGraph,et_tree:&EtTree,scope_tree:&ScopeTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,root_et_node:u32,scope_node:u32,cfg_bb:u32,counter:&mut u32,instr_slab:&mut InstrSlab,symtab_graph:&mut Option<&mut SymTabGraph>)->(SymIdx,SymIdx,SymIdx){
    let next_nodes = direct_children_nodes!(at root_et_node in et_tree);
    //取右操作数的symidx和type
    let r_symidx = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, next_nodes[1], scope_node,  cfg_bb, counter, instr_slab, symtab_graph);
    let r_type = find!(field TYPE:Type at r_symidx in symtab debug symtab_graph symtab_graph).unwrap().clone();
    //取左操作数的symidx和type
    let l_symidx = process_et(ast_tree,cfg_graph, et_tree, scope_tree, symtab, ast2scope, next_nodes[0], scope_node,  cfg_bb, counter, instr_slab, symtab_graph);
    let l_type = find!(field TYPE:Type at l_symidx in symtab debug symtab_graph symtab_graph).unwrap().clone();
    //左右操作数自动逻辑类型转换
    let (l_symidx,r_symidx) = autotrans_logic_type(cfg_graph, symtab, &l_type, &l_symidx, &r_type, &r_symidx, scope_node, cfg_bb, counter, instr_slab, symtab_graph);
    let tmp_var_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
    *counter += 1;
    
    (tmp_var_symidx,l_symidx,r_symidx)
}

fn process_et(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,et_tree:&EtTree,scope_tree:&ScopeTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,et_node:u32,scope_node:u32,cfg_bb:u32,counter:&mut u32, instr_slab:&mut InstrSlab, symtab_graph:&mut Option<&mut SymTabGraph>)->SymIdx{
    let nake_et = &node!(at et_node in et_tree).et_node_type;
    match nake_et{
        EtNodeType::Operator { op, ast_node:_, text:_ } => {
            match op{
                super::et_node::ExprOp::Mul => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx,var_type,_) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node,  scope_node, cfg_bb, counter, instr_slab, symtab_graph);
                        let mul_instr = InstrType::new_add(tmp_var_symidx.clone(), l_symidx, r_symidx,var_type).to_instr();
                        push_instr!(mul_instr to cfg_bb in cfg_graph slab instr_slab);
                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Add => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx,var_type,_) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node,  scope_node, cfg_bb, counter, instr_slab, symtab_graph);

                        let add_instr = InstrType::new_add(tmp_var_symidx.clone(), l_symidx, r_symidx,var_type).to_instr();
                        push_instr!(add_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Sub => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx,var_type,_) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node,  scope_node, cfg_bb, counter, instr_slab, symtab_graph);
                        let sub_instr = InstrType::new_sub(tmp_var_symidx.clone(), l_symidx, r_symidx,var_type).to_instr();
                        push_instr!(sub_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Div => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx,var_type,_) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node,  scope_node, cfg_bb, counter, instr_slab, symtab_graph);
                        let div_instr = InstrType::new_div(tmp_var_symidx.clone(), l_symidx, r_symidx,var_type).to_instr();
                        push_instr!(div_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Mod => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx,var_type,_) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node,  scope_node, cfg_bb, counter, instr_slab, symtab_graph);

                        let mod_instr = InstrType::new_mod(tmp_var_symidx.clone(), l_symidx, r_symidx,var_type).to_instr();
                        push_instr!(mod_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                //逻辑运算符
                super::et_node::ExprOp::LogicalOr => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx) = process_logicop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph);

                        let logicor_instr = InstrType::new_logic_or(tmp_var_symidx.clone(), l_symidx, r_symidx,Type::I1).to_instr();
                        push_instr!(logicor_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::LogicalAnd => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx) = process_logicop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph);

                        let logicand_instr = InstrType::new_logic_and(tmp_var_symidx.clone(), l_symidx, r_symidx,Type::I1).to_instr();
                        push_instr!(logicand_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::LogicalNot => {
                    if let Some(next_node) = direct_child_node!(at et_node in et_tree ret option){
                        //取操作数的symidx和type
                        let symbol_symidx = process_et(ast_tree,cfg_graph, et_tree, scope_tree, symtab, ast2scope, next_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph);
                        let symbol_type = find!(field TYPE:Type at symbol_symidx in symtab debug symtab_graph symtab_graph).unwrap().clone();
                        //将数字类型操作数转换为bool类型，bool类型不需要转换
                        let num2bool_tmp_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
                        *counter += 1;
                        match symbol_type {
                            Type::F32 => {
                                let fzero_symidx = process_constant(symtab, &"0.0".to_string(), symtab_graph);
                                let f2b_instr = InstrType::new_icmp(num2bool_tmp_symidx.clone(), IcmpPlan::Ne, symbol_symidx, fzero_symidx, Type::I1).to_instr();
                                push_instr!(f2b_instr to cfg_bb in cfg_graph slab instr_slab);
                            },
                            Type::I32 => {
                                let izero_symidx = process_constant(symtab, &"0".to_string(), symtab_graph);
                                let i2b_instr = InstrType::new_ucmp(num2bool_tmp_symidx.clone(), UcmpPlan::One, symbol_symidx, izero_symidx, Type::I1).to_instr();
                                push_instr!(i2b_instr to cfg_bb in cfg_graph slab instr_slab);
                            },
                            Type::I1 => { },
                            _ => {
                                panic!("");
                            }
                        }
                        let tmp_var_symidx = add_symbol!({Symbol::new(scope_node,format!("temp_{}",counter))} with field TYPE:{Type::I1} to symtab debug symtab_graph);
                        *counter += 1;
                        let logicnot_instr = InstrType::new_logic_not(tmp_var_symidx.clone(), num2bool_tmp_symidx, Type::I1).to_instr();
                        push_instr!(logicnot_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                //位运算符
                // super::et_node::ExprOp::BitwiseOr => todo!(),
                // super::et_node::ExprOp::BitwiseAnd => todo!(),
                // super::et_node::ExprOp::BitwiseXor => todo!(),
                // super::et_node::ExprOp::BitwiseNot => todo!(),
                // super::et_node::ExprOp::LShift => todo!(),
                // super::et_node::ExprOp::RShift => todo!(),
                //比较运算符
                super::et_node::ExprOp::Eq => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx,var_type,_) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node,  scope_node, cfg_bb, counter, instr_slab, symtab_graph);

                        let eq_instr = InstrType::new_icmp(tmp_var_symidx.clone(), IcmpPlan::Eq ,l_symidx, r_symidx,var_type).to_instr();
                        push_instr!(eq_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::NEq => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx,var_type,_) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node,  scope_node, cfg_bb, counter, instr_slab, symtab_graph);

                        let neq_instr = InstrType::new_icmp(tmp_var_symidx.clone(), IcmpPlan::Ne ,l_symidx, r_symidx,var_type).to_instr();
                        push_instr!(neq_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Less => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx,var_type,_) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node,  scope_node, cfg_bb, counter, instr_slab, symtab_graph);

                        let less_instr = InstrType::new_icmp(tmp_var_symidx.clone(), IcmpPlan::Slt ,l_symidx, r_symidx,var_type).to_instr();
                        push_instr!(less_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Greater => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx,var_type,_) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node,  scope_node, cfg_bb, counter, instr_slab, symtab_graph);

                        let greater_instr = InstrType::new_icmp(tmp_var_symidx.clone(), IcmpPlan::Sgt ,l_symidx, r_symidx,var_type).to_instr();
                        push_instr!(greater_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::LEq => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx,var_type,_) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node,  scope_node, cfg_bb, counter, instr_slab, symtab_graph);

                        let lesseq_instr = InstrType::new_icmp(tmp_var_symidx.clone(), IcmpPlan::Sle ,l_symidx, r_symidx,var_type).to_instr();
                        push_instr!(lesseq_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::GEq => {
                    if let Some(_) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_var_symidx, l_symidx, r_symidx,var_type,_) = process_arithop(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, et_node,  scope_node, cfg_bb, counter, instr_slab, symtab_graph);

                        let greatereq_instr = InstrType::new_icmp(tmp_var_symidx.clone(), IcmpPlan::Sge ,l_symidx, r_symidx,var_type).to_instr();
                        push_instr!(greatereq_instr to cfg_bb in cfg_graph slab instr_slab);

                        tmp_var_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },

                //类型转换
                // super::et_node::ExprOp::Cast => todo!(),
                //调用函数
                super::et_node::ExprOp::Call => {
                    todo!();
                    // //取函数名和实参
                    // let called_fun = direct_nodes!(at et_node in et_tree);
                    // //函数名是数组第一个值，其余为参数

                    // //待处理：检验函数形参

                    // let func_name = called_fun[0];
                    // let func_name_struct = node!(at func_name in et_tree).et_naked_node;
                    // let mut func_name_str = String::new();
                    // match func_name_struct {
                    //     EtNakedNode::Symbol { sym_idx, ast_node, text, def_or_use }=>{
                    //     func_name_str = node!(at ast_node in ast_tree).text;
                    //     },
                    //     _ => {
                    //         panic!("et生成错误，call节点下第一个不是函数名")
                    //     },
                    // }
                    // let func_name_symidx = SymIdx::new(scope_node, func_name_str);
                    // //
                    // let call_instr = InstrType::new_func_call(assigned, func_name_symidx, args);
                },
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
                    if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_addvar_symidx,tmp_loadvar_symidx) = process_self_increment(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, symbol_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph);
                        tmp_addvar_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::RPlusPlus => {
                    if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_addvar_symidx,tmp_loadvar_symidx) = process_self_increment(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, symbol_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph);
                        tmp_loadvar_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::LMinusMinus => {
                    if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_subvar_symidx,tmp_loadvar_symidx) = process_self_attennuation(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, symbol_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph);
                        tmp_subvar_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::RMinusMinus => {
                    if let Some(symbol_node) = direct_child_node!(at et_node in et_tree ret option){
                        let (tmp_subvar_symidx,tmp_loadvar_symidx) = process_self_attennuation(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, symbol_node, scope_node, cfg_bb, counter, instr_slab, symtab_graph);
                        tmp_loadvar_symidx
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                _ => {
                    panic!("表达式{:?}内不应存在带有显性赋值性质的操作符",op);
                },
            }
        },
        EtNodeType::Constant { const_sym_idx:_, ast_node, text:_ } => {
            println!("调用 process constant");
            let ast_node = *ast_node;
            let constant_literal = &node!(at ast_node in ast_tree).text;
            process_constant( symtab,  constant_literal,  symtab_graph )
        },
        EtNodeType::Symbol { sym_idx:_, ast_node, text:_, def_or_use } => {
            let ast_node = *ast_node;
            let symbol_literal = &node!(at ast_node in ast_tree).text;
            println!("处理的节点为{}符号为{}",ast_node,symbol_literal);
            let symbol_symidx = process_symbol(ast_tree,scope_tree,symtab,def_or_use,symbol_literal,scope_node, symtab_graph);
            symbol_symidx
        },
        _=>{
            panic!("{}不应出现sep类型的et",et_node);
        }
    }
}

///定义变量的decl转为ir，并通过et查找元素是否合法
fn parse_declaration2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,symtab:&mut SymTab,scope_tree:&ScopeTree,et_tree:&mut EtTree,ast2scope:&HashMap<u32,u32>,ast_decl_node:u32,cfg_bb:u32,counter:&mut u32, instr_slab:&mut InstrSlab, symtab_g:&mut Option<&mut SymTabGraph>){
    //获取scope
    if let Some(decl_scope) = ast2scope.get(&ast_decl_node){
        let decl_scope = *decl_scope;
        let decl_prt_scope = node!(at decl_scope in scope_tree).parent;

        //将declaration生成et
        let et_root = process_any_stmt(et_tree, ast_tree, scope_tree, ast_decl_node, decl_scope);

        //如果该节点有子树
        if let Some(_) = direct_child_node!(at et_root in et_tree ret option){
            let detail_ets = direct_children_nodes!(at et_root in et_tree);
            for detail_et in detail_ets{
                let etnode = &node!(at detail_et in et_tree).et_node_type;
                match etnode{
                    EtNodeType::Operator { op:_, ast_node:_, text:_ } => {
                        if let Some(_) = direct_child_node!(at detail_et in et_tree ret option){
                            let op_values = direct_children_nodes!(at detail_et in et_tree);
                            //获得变量类型，做成symidx
                            let var = find!(rule RULE_declarationSpecifiers at ast_decl_node in ast_tree).unwrap();
                            let var_type = Type::new(var, ast_tree); 
                            let var_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[0], decl_prt_scope, cfg_bb, counter, instr_slab, symtab_g);
                            let value_symidx = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[1], decl_prt_scope, cfg_bb, counter, instr_slab, symtab_g);
                            let value_type = find!(field TYPE:Type at value_symidx in symtab debug symtab_graph symtab_g).unwrap().clone();
                            let transed_value_symidx = force_trans_type(cfg_graph, symtab, &var_type, &value_type, &value_symidx, decl_prt_scope, cfg_bb, counter, instr_slab, symtab_g); 
                            let defvar_instr = InstrType::new_def_var(var_type, var_symidx,transed_value_symidx ).to_instr();

                            push_instr!(defvar_instr to cfg_bb in cfg_graph slab instr_slab);
                        }else{
                            panic!("操作符下缺少具体变量或常量");
                        }
                    },
                    EtNodeType::Constant { const_sym_idx:_, ast_node:_, text:_ } => todo!(),
                    EtNodeType::Symbol { sym_idx:_, ast_node, text, def_or_use } => {
                        //获得变量类型，做成symidx
                        let var = find!(rule RULE_declarationSpecifiers at ast_decl_node in ast_tree).unwrap();
                        let var_type = Type::new(var, ast_tree);
                        println!("dec enter {}",text);
                        let ast_node = *ast_node;
                        let var_str = &node!(at ast_node in ast_tree).text;
                        let symbol_symidx = process_symbol(ast_tree,scope_tree, symtab, &def_or_use, var_str, decl_prt_scope,  symtab_g);
                        //创建空值
                        let value_symidx = SymIdx::new(decl_prt_scope, "".to_string());   
                        let def_instr = InstrType::new_def_var(var_type, symbol_symidx, value_symidx).to_instr();
                        push_instr!(def_instr to cfg_bb in cfg_graph slab instr_slab);
                    },
                    _ =>{
                        panic!("{}这里不应该为sep类型",detail_et);
                    }
                }
            }
        }else{
            panic!("sep下面缺少具体的etnode，et树生成错误");
        }
    }else{
        panic!("ast2scope找不到{}",ast_decl_node);
    }
}

///将函数名存入符号表，将函数签名处理为ir，并处理函数体内的语句
fn parse_func2nhwc(ast_tree:&AstTree,cfg_graph:&mut CfgGraph,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,ast_fun:u32,ast_funsign:u32,cfg_entry:u32, instr_slab:&mut InstrSlab,symtab_graph:&mut Option<&mut SymTabGraph>){
    let def_func_instr_struct  = InstrType::new_def_func(SymIdx::new(ast_fun, String::new()), SymIdx::new(ast_fun, String::new()), Vec::new()).to_instr();
    push_instr!(def_func_instr_struct to cfg_entry in cfg_graph slab instr_slab);
    //获取函数所对应的scopenode
    if let Some(func_scope) = ast2scope.get(&ast_fun){
        println!("scope为{}ast为{}",func_scope,ast_fun);
        //获取函数名称
        let fun_name = &node!(at ast_funsign in ast_tree).text;
        let name_symidx = SymIdx::new(*func_scope, fun_name.to_string());

        //获取返回类型
        let ast_retype = find!(rule RULE_declarationSpecifiers at ast_fun in ast_tree).unwrap();
        let fun_rettype = &node!(at ast_retype in ast_tree).text;
        let type_symidx = SymIdx::new(*func_scope, fun_rettype.to_string());

        //获取参数列表
        let mut arg_syms: Vec<SymIdx> = vec![];
        //函数有参数
        if let Some(para) = find!(rule RULE_declarator then RULE_directDeclarator finally RULE_parameterTypeList at ast_fun in ast_tree){
            let ast_func_args = find_nodes!(rule RULE_parameterList finally RULE_parameterDeclaration at para in ast_tree);
            //将函数签名转为ir
            for ast_func_arg in ast_func_args{
                let ast_para_sym = find!(rule RULE_declarator at ast_func_arg in ast_tree).unwrap();
                let ast_arg_type = find!(rule RULE_declarationSpecifiers at ast_func_arg in ast_tree).unwrap();
                let arg_type = Type::new(ast_arg_type, ast_tree);
                let func_arg_str = &node!(at ast_para_sym in ast_tree).text;
                let arg_symidx = SymIdx::new(*func_scope, func_arg_str.clone());
                arg_syms.push(arg_symidx);

                println!("func {} !!!",func_arg_str);
                println!("添加变量{},变量类型{:?}",func_arg_str,arg_type);
                add_symbol!({Symbol::new(*func_scope,func_arg_str.to_string())} with field TYPE:{arg_type} to symtab debug symtab_graph);
            }
            //添加到符号表中
            let func_symbol = Symbol::new(cfg_entry, fun_name.to_string());
            add_symbol!(func_symbol with field TYPE:{Type::Fn { arg_syms: arg_syms.clone(), ret_sym:type_symidx.clone()}} to symtab debug symtab_graph);
        }
        //函数无参数，则不需要处理参数部分
        else{}
        //做成instr放在cfg的entry里面
        let func_instr = InstrType::new_def_func(name_symidx, type_symidx, arg_syms).to_instr();
        
        push_instr!(func_instr to cfg_entry in cfg_graph slab instr_slab);

    }else{
        panic!("找不到{}该函数的scopenode!",ast_fun);
    }
    
}

/// 由于cfg 里面包含了其他的一些块和边，例如 branch 块和 after conditioned边
/// 因此我们需要再做一次转化，把边转化成相应的跳转或者调整代码，把所有node 都转化成BasicBlock
pub fn parse_cfg_into_nhwc_cfg(cfg_graph:&mut CfgGraph, scope_tree:&mut ScopeTree, ast_tree:&mut AstTree,symtab:&mut SymTab, et_tree:&mut EtTree, ast2scope:&mut HashMap<u32,u32> , mut counter:u32, instr_slab:&mut InstrSlab, symtab_g:&mut Option<&mut SymTabGraph>){
    // let (cfg_graph,scope_tree,ast_tree,symtab,et_tree,ast2scope)= (&mut context.cfg_graph , &mut context.scope_tree,&mut context.ast_tree,&mut context.symtab,&mut context.et_tree,&context.ast2scope);

    let start_node: NodeIndex<u32> = NodeIndex::new(0);
    //先遍历一遍函数名，将函数名加入到符号表中
    let cfg_funcs = direct_children_nodes!(at start_node in cfg_graph);
    for cfg_entry in cfg_funcs.clone(){
        match node!(at cfg_entry in cfg_graph).cfg_type {
            CfgNodeType::Entry { ast_node,  calls_in_func:_ } => {
                //查找函数名称所在节点
                let func_def_ast_node = ast_node;
                let ast_funsign = find!(rule RULE_declarator then RULE_directDeclarator finally RULE_directDeclarator at func_def_ast_node in ast_tree).unwrap();

                parse_func2nhwc(ast_tree, cfg_graph,symtab, ast2scope,func_def_ast_node,ast_funsign,cfg_entry,instr_slab, symtab_g);
            }
            _ => {
                    panic!("entry不是函数签名,cfg出错");
                }
        }   
    }
    //再遍历一遍entry，对于每个函数做dfs,处理函数体
    for cfg_entry in cfg_funcs.clone(){
        let mut dfs_vec = dfs_graph!(at cfg_entry in cfg_graph for dfs);
        // dfs_vec.reverse();
        for cfg_node in dfs_vec{
            let cfgnode = node!(at cfg_node in cfg_graph);
            match &cfgnode.cfg_type {
                CfgNodeType::Branch { ast_expr_node,  op_true_head_tail_nodes: true_head_tail_nodes, op_false_head_tail_nodes: false_head_tail_nodes, } =>{
                    parse_branch2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_expr_node, cfg_node, &mut counter, instr_slab, symtab_g)
                },
                CfgNodeType::Switch { ast_expr_node,  } =>{
                    // parse_branch2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_expr_node, cfg_node, counter, symtab_g)
                },
                CfgNodeType::ForLoop { ast_before_node, ast_mid_node, ast_after_node,  exit_node, op_body_head_tail_nodes: body_head_tail_nodes, }=>{
                    parse_forloop2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_before_node,*ast_mid_node,*ast_after_node,cfg_node,body_head_tail_nodes.clone(), &mut counter, instr_slab, symtab_g)
                },
                CfgNodeType::WhileLoop { ast_expr_node,  exit_node, body_node, }=>{
                   parse_whileloop2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_expr_node, cfg_node, &mut counter, instr_slab, symtab_g)
                },
                CfgNodeType::BasicBlock { ast_nodes,}=>{
                    parse_bb2nhwc(ast_tree,cfg_graph, scope_tree, et_tree, symtab, ast2scope,ast_nodes.clone(),cfg_node, &mut counter, instr_slab, symtab_g);
                },
                _=>{},
            }
        }
    }
}