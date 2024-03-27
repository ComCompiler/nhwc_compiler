use std::collections::HashMap;

use petgraph::{adj::Neighbors, stable_graph::NodeIndex, visit::{self, Dfs, IntoNeighbors}};
use syn::token::In;

use crate::{ add_symbol, antlr_parser::cparser::{RULE_declaration, RULE_declarationSpecifiers, RULE_declarator, RULE_directDeclarator, RULE_initDeclarator, RULE_initDeclaratorList, RULE_parameterDeclaration, RULE_parameterList, RULE_parameterTypeList}, dfs_graph, direct_node, direct_nodes, find, find_nodes, node, node_mut, push_instr, rule_id, toolkit::{cfg_node::GetText, symbol::Symbol}};

use super::{ ast_node::AstTree, cfg_node::{CfgGraph, CfgNode}, context::Context, et_node::{Def_Or_Use, EtNakedNode, EtTree}, gen_et::process_any_stmt, nhwc_instr::Instruction, scope_node::{self, ScopeTree}, symbol, symbol_table::{ SymbolIndex, SymbolTable}};

/*
 这个文件主要是对  cfg_graph 进行后一步处理，因为cfg_graph 在此之前还没有 
 */


pub type NhwcCfg = CfgGraph;

fn parse_expr2nhwc(){

}
/// 处理所有跳转语句，翻译成对应的instruction并确定跳转到的BB
fn parse_stmt2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,symbol_table:&mut SymbolTable,scope_tree:&ScopeTree,et_tree:&mut EtTree,ast2scope:&HashMap<u32,u32>,ast_decl_node:u32,cfg_bb:u32,mut counter:u32)->u32{
    //获取scope
    if let Some(decl_scope) = ast2scope.get(&ast_decl_node){
        let decl_scope = *decl_scope;
        let decl_prt_scope = node!(at decl_scope in scope_tree).parent;

        //将declaration生成et
        let et_root = process_any_stmt(et_tree, ast_tree, scope_tree, ast_decl_node, decl_scope);

        //如果该节点有子树
        if let Some(_) = direct_node!(at et_root in et_tree ret option){
            let detail_ets = direct_nodes!(at et_root in et_tree);
            for detail_et in detail_ets{
                let etnode = &node!(at detail_et in et_tree).et_naked_node;
                match etnode{
                    EtNakedNode::Operator { op, ast_node, text } => {
                        if let Some(_) = direct_node!(at detail_et in et_tree ret option){
                            match op{
                                crate::toolkit::et_node::ExprOp::Assign => {
                                    let op_values = direct_nodes!(at detail_et in et_tree);

                                    let (value_symidx,counter) = process_ettree(ast_tree, cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, op_values[1], decl_prt_scope, cfg_bb, counter);
                                    
                                    let (var_symidx,counter) = process_ettree(ast_tree, cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, op_values[0], decl_prt_scope, cfg_bb, counter);

                                    let assign_instr = Instruction::new_assign(var_symidx, value_symidx);

                                    push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                                },
                                crate::toolkit::et_node::ExprOp::LPlusPlus => {
                                    if let Some(symbol_node) = direct_node!(at detail_et in et_tree ret option){
                                        let (var_symidx,mut counter) = process_ettree(ast_tree,cfg_graph,et_tree, scope_tree, symbol_table, ast2scope, symbol_node, decl_prt_scope,  cfg_bb, counter);
                
                                        let one_symidx = SymbolIndex::new(decl_prt_scope, "1".to_string()); 
                
                                        let tmp_loadvar_symidx = SymbolIndex::new(decl_prt_scope, format!("%{}",counter));
                                        counter += 1;
                                        let tmp_addvar_symidx = SymbolIndex::new(decl_prt_scope, format!("%{}",counter));
                                        counter += 1;
                
                                        let load_instr = Instruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone());
                                        let add_instr = Instruction::new_add(tmp_addvar_symidx.clone(), var_symidx.clone(), one_symidx);
                                        let assign_instr = Instruction::new_assign(var_symidx, tmp_addvar_symidx.clone());
                
                                        push_instr!(add load_instr to cfg_bb for bb in cfg_graph);
                                        push_instr!(add add_instr to cfg_bb for bb in cfg_graph);
                                        push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                                    }else{
                                        panic!("操作符{}下缺少符号",detail_et);
                                    }
                                },
                                crate::toolkit::et_node::ExprOp::RPlusPlus => {
                                    if let Some(symbol_node) = direct_node!(at detail_et in et_tree ret option){
                                        let (var_symidx,mut counter) = process_ettree(ast_tree,cfg_graph,et_tree, scope_tree, symbol_table, ast2scope, symbol_node, decl_prt_scope,  cfg_bb, counter);
                
                                        let one_symidx = SymbolIndex::new(decl_prt_scope, "1".to_string()); 
                
                                        let tmp_loadvar_symidx = SymbolIndex::new(decl_prt_scope, format!("%{}",counter));
                                        counter += 1;
                                        let tmp_addvar_symidx = SymbolIndex::new(decl_prt_scope, format!("%{}",counter));
                                        counter += 1;
                
                                        let load_instr = Instruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone());
                                        let add_instr = Instruction::new_add(tmp_addvar_symidx.clone(), var_symidx.clone(), one_symidx);
                                        let assign_instr = Instruction::new_assign(var_symidx, tmp_addvar_symidx.clone());
                
                                        push_instr!(add load_instr to cfg_bb for bb in cfg_graph);
                                        push_instr!(add add_instr to cfg_bb for bb in cfg_graph);
                                        push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                                    }else{
                                        panic!("操作符{}下缺少符号",detail_et);
                                    }
                                },
                                crate::toolkit::et_node::ExprOp::LMinusMinus => {
                                    if let Some(symbol_node) = direct_node!(at detail_et in et_tree ret option){
                                        let (var_symidx,mut counter) = process_ettree(ast_tree,cfg_graph,et_tree, scope_tree, symbol_table, ast2scope, symbol_node, decl_prt_scope,  cfg_bb, counter);
                
                                        let one_symidx = SymbolIndex::new(decl_prt_scope, "1".to_string());
                
                                        let tmp_loadvar_symidx = SymbolIndex::new(decl_prt_scope, format!("%{}",counter));
                                        counter += 1;
                                        let tmp_subvar_symidx = SymbolIndex::new(decl_prt_scope, format!("%{}",counter));
                                        counter += 1;
                
                                        let load_instr = Instruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone());
                                        let sub_instr = Instruction::new_sub(tmp_subvar_symidx.clone(), var_symidx.clone(), one_symidx);
                                        let assign_instr = Instruction::new_assign(var_symidx, tmp_subvar_symidx.clone());
                
                                        push_instr!(add load_instr to cfg_bb for bb in cfg_graph);
                                        push_instr!(add sub_instr to cfg_bb for bb in cfg_graph);
                                        push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                                    }else{
                                        panic!("操作符{}下缺少符号",detail_et);
                                    }
                                },
                                crate::toolkit::et_node::ExprOp::RMinusMinus => {
                                    if let Some(symbol_node) = direct_node!(at detail_et in et_tree ret option){
                                        let (var_symidx,mut counter) = process_ettree(ast_tree,cfg_graph,et_tree, scope_tree, symbol_table, ast2scope, symbol_node, decl_prt_scope,  cfg_bb, counter);
                
                                        let one_symidx = SymbolIndex::new(decl_prt_scope, "1".to_string());
                
                                        let tmp_loadvar_symidx = SymbolIndex::new(decl_prt_scope, format!("%{}",counter));
                                        counter += 1;
                                        let tmp_subvar_symidx = SymbolIndex::new(decl_prt_scope, format!("%{}",counter));
                                        counter += 1;
                
                                        let load_instr = Instruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone());
                                        let sub_instr = Instruction::new_sub(tmp_subvar_symidx.clone(), var_symidx.clone(), one_symidx);
                                        let assign_instr = Instruction::new_assign(var_symidx, tmp_subvar_symidx.clone());
                
                                        push_instr!(add load_instr to cfg_bb for bb in cfg_graph);
                                        push_instr!(add sub_instr to cfg_bb for bb in cfg_graph);
                                        push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                                    }else{
                                        panic!("操作符{}下缺少符号",detail_et);
                                    }
                                },
                                crate::toolkit::et_node::ExprOp::MulAssign => {
                                    let op_values = direct_nodes!(at detail_et in et_tree);

                                    let (value_symidx,counter) = process_ettree(ast_tree, cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, op_values[1], decl_prt_scope, cfg_bb, counter);
                                    
                                    let (var_symidx,mut counter) = process_ettree(ast_tree, cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, op_values[0], decl_prt_scope, cfg_bb, counter);

                                    let tmp_var_symidx = SymbolIndex::new(decl_prt_scope, format!("%{}",counter));

                                    counter += 1;

                                    let mul_instr = Instruction::new_mul(tmp_var_symidx.clone(), var_symidx.clone(), value_symidx);

                                    let assign_instr = Instruction::new_assign(var_symidx, tmp_var_symidx);
                                    
                                    push_instr!(add mul_instr to cfg_bb for bb in cfg_graph);
                                    push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                                },
                                crate::toolkit::et_node::ExprOp::DivAssign => {
                                    let op_values = direct_nodes!(at detail_et in et_tree);

                                    let (value_symidx,counter) = process_ettree(ast_tree, cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, op_values[1], decl_prt_scope, cfg_bb, counter);
                                    
                                    let (var_symidx,mut counter) = process_ettree(ast_tree, cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, op_values[0], decl_prt_scope, cfg_bb, counter);

                                    let tmp_var_symidx = SymbolIndex::new(decl_prt_scope, format!("%{}",counter));

                                    counter += 1;

                                    let div_instr = Instruction::new_div(tmp_var_symidx.clone(), var_symidx.clone(), value_symidx);

                                    let assign_instr = Instruction::new_assign(var_symidx, tmp_var_symidx);

                                    push_instr!(add div_instr to cfg_bb for bb in cfg_graph);
                                    push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                                },
                                crate::toolkit::et_node::ExprOp::PlusAssign => {
                                    let op_values = direct_nodes!(at detail_et in et_tree);

                                    let (value_symidx,counter) = process_ettree(ast_tree, cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, op_values[1], decl_prt_scope, cfg_bb, counter);
                                    
                                    let (var_symidx,mut counter) = process_ettree(ast_tree, cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, op_values[0], decl_prt_scope, cfg_bb, counter);

                                    let tmp_var_symidx = SymbolIndex::new(decl_prt_scope, format!("%{}",counter));

                                    counter += 1;

                                    let add_instr = Instruction::new_add(tmp_var_symidx.clone(), var_symidx.clone(), value_symidx);

                                    let assign_instr = Instruction::new_assign(var_symidx, tmp_var_symidx);

                                    push_instr!(add add_instr to cfg_bb for bb in cfg_graph);
                                    push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                                },
                                crate::toolkit::et_node::ExprOp::MinusAssign => {
                                    let op_values = direct_nodes!(at detail_et in et_tree);

                                    let (value_symidx,counter) = process_ettree(ast_tree, cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, op_values[1], decl_prt_scope, cfg_bb, counter);
                                    
                                    let (var_symidx,mut counter) = process_ettree(ast_tree, cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, op_values[0], decl_prt_scope, cfg_bb, counter);

                                    let tmp_var_symidx = SymbolIndex::new(decl_prt_scope, format!("%{}",counter));

                                    counter += 1;

                                    let sub_instr = Instruction::new_sub(tmp_var_symidx.clone(), var_symidx.clone(), value_symidx);

                                    let assign_instr = Instruction::new_assign(var_symidx, tmp_var_symidx);

                                    push_instr!(add sub_instr to cfg_bb for bb in cfg_graph);
                                    push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                                },
                                _ => {
                                    panic!("statment初始运算符应有赋值性质,{}符号出现错误",*ast_node);
                                }
                            }
                        }else{
                            panic!("操作符下缺少具体变量或常量");
                        }
                    },
                    EtNakedNode::Constant { const_sym_idx, ast_node, text } => todo!(),
                    EtNakedNode::Symbol { sym_idx, ast_node, text, def_or_use } => {

                        //获得变量类型，做成symidx
                        let vartype = find!(rule RULE_declarationSpecifiers at ast_decl_node in ast_tree).unwrap();
                        let type_str = node!(at vartype in ast_tree).text.clone();
                        let type_symidx = SymbolIndex::new(decl_scope, type_str);
                        println!("stat enter {}",text);
                        let symbol_symidx = process_symbol(scope_tree, symbol_table, &def_or_use, &text, decl_prt_scope);

                        //创建空值
                        let value_symidx = SymbolIndex::new(decl_prt_scope, "".to_string());   

                        let def_instr = Instruction::new_defvar(type_symidx, symbol_symidx, value_symidx);

                        push_instr!(add def_instr to cfg_bb for bb in cfg_graph);
                    },
                    _ =>{
                        panic!("{}这里不应该为sep类型",detail_et);
                    }
                }
            }
            counter
        }else{
            panic!("sep下面缺少具体的etnode，et树生成错误");
        }
    }else{
        panic!("ast2scope找不到{}",ast_decl_node);
    }
}

fn parse_bb2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symbol_table:&mut SymbolTable,ast2scope:&HashMap<u32,u32>,ast_nodes:Vec<u32>,cfg_bb:u32,mut counter:u32)->u32{
    for astnode in ast_nodes{
        match(rule_id!(at astnode in ast_tree),astnode){
            (RULE_declaration,declaration_node)=>{
                counter = parse_declaration2nhwc(ast_tree,cfg_graph,symbol_table, scope_tree,et_tree,ast2scope,declaration_node,cfg_bb,counter);
            },
            (RULE_expressionStatementr,statement_node)=>{
                counter = parse_stmt2nhwc(ast_tree, cfg_graph, symbol_table, scope_tree, et_tree, ast2scope,statement_node, cfg_bb, counter)
            },
            (_,_)=>{
                panic!("bb中未知RULE，{}不是expr或stmt",astnode);
            }
        }
    }    
    counter
}

fn process_symbol(scope_tree:&ScopeTree,symbol_table:&mut SymbolTable,def_or_use:&Def_Or_Use,symbol:&String,scope_node:u32)->SymbolIndex{   
    let mut symbol_scope = scope_node;
    match def_or_use{
        Def_Or_Use::Def { type_ast_node:_ } => { 
            let symbol_str = symbol.clone();
            println!("处理的符号为{}",*symbol);
            let symbol_symidx = add_symbol!({Symbol::new_verbose(scope_node,symbol_str)} to symbol_table);
            symbol_symidx
        },
        Def_Or_Use::Use => {
            let mut symbol_str = symbol.clone();
            while let None = find!(symbol symbol_str of scope symbol_scope in symbol_table){
                let ast = node!(at symbol_scope in scope_tree).ast_node;
                if symbol_scope == 0{
                    panic!("scope为{}符号表中未找到{:?}",symbol_scope,symbol.clone());
                }
                symbol_scope = node!(at symbol_scope in scope_tree).parent;
                symbol_str = symbol.clone();
            }
            let symbol_symidx = SymbolIndex::new(scope_node, "%".to_owned()+&symbol.clone());
            symbol_symidx
        },
    }
}

fn process_ettree(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,et_tree:&EtTree,scope_tree:&ScopeTree,symbol_table:&mut SymbolTable,ast2scope:&HashMap<u32,u32>,et_node:u32,scope_node:u32,cfg_bb:u32,mut counter:u32)->(SymbolIndex,u32){
    let nake_et = &node!(at et_node in et_tree).et_naked_node;
    match nake_et{
        EtNakedNode::Operator { op, ast_node, text:_ } => {
            match op{
                super::et_node::ExprOp::Mul => {
                    if let Some(_) = direct_node!(at et_node in et_tree ret option){
                        let next_nodes = direct_nodes!(at et_node in et_tree);

                        let (r_symidx,mut counter) = process_ettree(ast_tree,cfg_graph,et_tree, scope_tree, symbol_table, ast2scope, next_nodes[1], scope_node,  cfg_bb, counter);

                        let (l_symidx,mut counter) = process_ettree(ast_tree,cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, next_nodes[0], scope_node,  cfg_bb, counter);

                        let tmp_var_symidx = SymbolIndex::new(scope_node, format!("%{}",counter));

                        counter += 1;

                        let mul_instr = Instruction::new_mul(tmp_var_symidx.clone(), l_symidx, r_symidx);

                        push_instr!(add mul_instr to cfg_bb for bb in cfg_graph);

                        (tmp_var_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Add => {
                    if let Some(_) = direct_node!(at et_node in et_tree ret option){
                        let next_nodes = direct_nodes!(at et_node in et_tree);

                        let (r_symidx,mut counter) = process_ettree(ast_tree,cfg_graph,et_tree, scope_tree, symbol_table, ast2scope, next_nodes[1], scope_node,  cfg_bb, counter);

                        let (l_symidx,mut counter) = process_ettree(ast_tree,cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, next_nodes[0], scope_node, cfg_bb, counter);

                        let tmp_var_symidx = SymbolIndex::new(scope_node, format!("%{}",counter));

                        counter += 1;

                        let add_instr = Instruction::new_add(tmp_var_symidx.clone(), l_symidx, r_symidx);

                        push_instr!(add add_instr to cfg_bb for bb in cfg_graph);

                        (tmp_var_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Sub => {
                    if let Some(_) = direct_node!(at et_node in et_tree ret option){
                        let next_nodes = direct_nodes!(at et_node in et_tree);

                        let (r_symidx,mut counter) = process_ettree(ast_tree,cfg_graph,et_tree, scope_tree, symbol_table, ast2scope, next_nodes[1], scope_node,  cfg_bb, counter);

                        let (l_symidx,mut counter) = process_ettree(ast_tree,cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, next_nodes[0], scope_node, cfg_bb, counter);

                        let tmp_var_symidx = SymbolIndex::new(scope_node, format!("%{}",counter));

                        counter += 1;

                        let sub_instr = Instruction::new_sub(tmp_var_symidx.clone(), l_symidx, r_symidx);

                        push_instr!(add sub_instr to cfg_bb for bb in cfg_graph);

                        (tmp_var_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Div => {
                    if let Some(_) = direct_node!(at et_node in et_tree ret option){
                        let next_nodes = direct_nodes!(at et_node in et_tree);

                        let (r_symidx,mut counter) = process_ettree(ast_tree,cfg_graph,et_tree, scope_tree, symbol_table, ast2scope, next_nodes[1], scope_node,  cfg_bb, counter);

                        let (l_symidx,mut counter) = process_ettree(ast_tree,cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, next_nodes[0], scope_node, cfg_bb, counter);
                        
                        let tmp_var_symidx = SymbolIndex::new(scope_node, format!("%{}",counter));

                        counter += 1;

                        let div_instr = Instruction::new_div(tmp_var_symidx.clone(), l_symidx, r_symidx);

                        push_instr!(add div_instr to cfg_bb for bb in cfg_graph);

                        (tmp_var_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                // super::et_node::ExprOp::Assign => todo!(),
                // super::et_node::ExprOp::LogicalOr => todo!(),
                // super::et_node::ExprOp::LogicalAnd => todo!(),
                // super::et_node::ExprOp::LogicalNot => todo!(),
                // super::et_node::ExprOp::BitwiseOr => todo!(),
                // super::et_node::ExprOp::BitwiseAnd => todo!(),
                // super::et_node::ExprOp::BitwiseXor => todo!(),
                // super::et_node::ExprOp::BitwiseNot => todo!(),
                // super::et_node::ExprOp::Eq => todo!(),
                // super::et_node::ExprOp::NEq => todo!(),
                // super::et_node::ExprOp::Less => todo!(),
                // super::et_node::ExprOp::Greater => todo!(),
                // super::et_node::ExprOp::LEq => todo!(),
                // super::et_node::ExprOp::GEq => todo!(),
                // super::et_node::ExprOp::LShift => todo!(),
                // super::et_node::ExprOp::RShift => todo!(),
                // super::et_node::ExprOp::Mod => todo!(),
                // super::et_node::ExprOp::Cast => todo!(),
                // super::et_node::ExprOp::Call => todo!(),
                // super::et_node::ExprOp::Negative => todo!(),
                // super::et_node::ExprOp::Positive => todo!(),
                // super::et_node::ExprOp::AddrOf => todo!(),
                // super::et_node::ExprOp::Deref => todo!(),
                // super::et_node::ExprOp::DotMember => todo!(),
                // super::et_node::ExprOp::ArrowMember => todo!(),
                super::et_node::ExprOp::LPlusPlus => {
                    if let Some(symbol_node) = direct_node!(at et_node in et_tree ret option){
                        let (var_symidx,mut counter) = process_ettree(ast_tree,cfg_graph,et_tree, scope_tree, symbol_table, ast2scope, symbol_node, scope_node,  cfg_bb, counter);

                        let one_symidx = SymbolIndex::new(scope_node, "1".to_string());
                        

                        let tmp_loadvar_symidx = SymbolIndex::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let tmp_addvar_symidx = SymbolIndex::new(scope_node, format!("%{}",counter));
                        counter += 1;

                        let load_instr = Instruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone());
                        let add_instr = Instruction::new_add(tmp_addvar_symidx.clone(), var_symidx.clone(), one_symidx);
                        let assign_instr = Instruction::new_assign(var_symidx, tmp_addvar_symidx.clone());

                        push_instr!(add load_instr to cfg_bb for bb in cfg_graph);
                        push_instr!(add add_instr to cfg_bb for bb in cfg_graph);
                        push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                        (tmp_addvar_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::RPlusPlus => {
                    if let Some(symbol_node) = direct_node!(at et_node in et_tree ret option){
                        let (var_symidx,mut counter) = process_ettree(ast_tree,cfg_graph,et_tree, scope_tree, symbol_table, ast2scope, symbol_node, scope_node,  cfg_bb, counter);

                        let one_symidx = SymbolIndex::new(scope_node, "1".to_string());
                        

                        let tmp_loadvar_symidx = SymbolIndex::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let tmp_addvar_symidx = SymbolIndex::new(scope_node, format!("%{}",counter));
                        counter += 1;

                        let load_instr = Instruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone());
                        let add_instr = Instruction::new_add(tmp_addvar_symidx.clone(), var_symidx.clone(), one_symidx);
                        let assign_instr = Instruction::new_assign(var_symidx, tmp_addvar_symidx.clone());

                        push_instr!(add load_instr to cfg_bb for bb in cfg_graph);
                        push_instr!(add add_instr to cfg_bb for bb in cfg_graph);
                        push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                        (tmp_loadvar_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::LMinusMinus => {
                    if let Some(symbol_node) = direct_node!(at et_node in et_tree ret option){
                        let (var_symidx,mut counter) = process_ettree(ast_tree,cfg_graph,et_tree, scope_tree, symbol_table, ast2scope, symbol_node, scope_node,  cfg_bb, counter);

                        let one_symidx = SymbolIndex::new(scope_node, "1".to_string());
                        

                        let tmp_loadvar_symidx = SymbolIndex::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let tmp_subvar_symidx = SymbolIndex::new(scope_node, format!("%{}",counter));
                        counter += 1;

                        let load_instr = Instruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone());
                        let sub_instr = Instruction::new_sub(tmp_subvar_symidx.clone(), var_symidx.clone(), one_symidx);
                        let assign_instr = Instruction::new_assign(var_symidx, tmp_subvar_symidx.clone());

                        push_instr!(add load_instr to cfg_bb for bb in cfg_graph);
                        push_instr!(add sub_instr to cfg_bb for bb in cfg_graph);
                        push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                        (tmp_subvar_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::RMinusMinus => {
                    if let Some(symbol_node) = direct_node!(at et_node in et_tree ret option){
                        let (var_symidx,mut counter) = process_ettree(ast_tree,cfg_graph,et_tree, scope_tree, symbol_table, ast2scope, symbol_node, scope_node,  cfg_bb, counter);

                        let one_symidx = SymbolIndex::new(scope_node, "1".to_string());
                        

                        let tmp_loadvar_symidx = SymbolIndex::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let tmp_subvar_symidx = SymbolIndex::new(scope_node, format!("%{}",counter));
                        counter += 1;

                        let load_instr = Instruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone());
                        let sub_instr = Instruction::new_sub(tmp_subvar_symidx.clone(), var_symidx.clone(), one_symidx);
                        let assign_instr = Instruction::new_assign(var_symidx, tmp_subvar_symidx.clone());

                        push_instr!(add load_instr to cfg_bb for bb in cfg_graph);
                        push_instr!(add sub_instr to cfg_bb for bb in cfg_graph);
                        push_instr!(add assign_instr to cfg_bb for bb in cfg_graph);
                        (tmp_loadvar_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::MulAssign => todo!(),
                super::et_node::ExprOp::DivAssign => todo!(),
                super::et_node::ExprOp::PlusAssign => todo!(),
                super::et_node::ExprOp::MinusAssign => todo!(),
                super::et_node::ExprOp::ArrayIndex => todo!(),
                _ => {
                    panic!("");
                },
            }
        },
        EtNakedNode::Constant { const_sym_idx, ast_node:_, text:_ } => {
            (const_sym_idx.clone(),counter)
        },
        EtNakedNode::Symbol { sym_idx:_, ast_node, text:_, def_or_use } => {
            let ast_node = *ast_node;
            let ast_text = &node!(at ast_node in ast_tree).text;
            println!("处理的节点为{}符号为{}",ast_node,ast_text);
            let symbol_symidx = process_symbol(scope_tree,symbol_table,def_or_use,ast_text,scope_node);
            (symbol_symidx,counter)
        },
        _=>{
            panic!("{}不应出现sep类型的et",et_node);
        }
    }
}

///定义变量的decl转为ir，并通过et查找元素是否合法
fn parse_declaration2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,symbol_table:&mut SymbolTable,scope_tree:&ScopeTree,et_tree:&mut EtTree,ast2scope:&HashMap<u32,u32>,ast_decl_node:u32,cfg_bb:u32,mut counter:u32)->u32{
    //获取scope
    if let Some(decl_scope) = ast2scope.get(&ast_decl_node){
        let decl_scope = *decl_scope;
        let decl_prt_scope = node!(at decl_scope in scope_tree).parent;

        //将declaration生成et
        let et_root = process_any_stmt(et_tree, ast_tree, scope_tree, ast_decl_node, decl_scope);

        //如果该节点有子树
        if let Some(_) = direct_node!(at et_root in et_tree ret option){
            let detail_ets = direct_nodes!(at et_root in et_tree);
            for detail_et in detail_ets{
                let etnode = &node!(at detail_et in et_tree).et_naked_node;
                match etnode{
                    EtNakedNode::Operator { op, ast_node, text } => {
                        if let Some(_) = direct_node!(at detail_et in et_tree ret option){
                            let op_values = direct_nodes!(at detail_et in et_tree);

                            //获得变量类型，做成symidx
                            let vartype = find!(rule RULE_declarationSpecifiers at ast_decl_node in ast_tree).unwrap();
                            let type_str = node!(at vartype in ast_tree).text.clone();
                            let type_symidx = SymbolIndex::new(decl_scope, type_str);
                            
                            let (var_symidx,counter) = process_ettree(ast_tree, cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, op_values[0], decl_prt_scope, cfg_bb, counter);

                            let (value_symidx,counter) = process_ettree(ast_tree, cfg_graph, et_tree, scope_tree, symbol_table, ast2scope, op_values[1], decl_prt_scope, cfg_bb, counter);

                            let defvar_instr = Instruction::new_defvar(type_symidx, var_symidx, value_symidx);

                            push_instr!(add defvar_instr to cfg_bb for bb in cfg_graph);
                        }else{
                            panic!("操作符下缺少具体变量或常量");
                        }
                    },
                    EtNakedNode::Constant { const_sym_idx, ast_node, text } => todo!(),
                    EtNakedNode::Symbol { sym_idx, ast_node, text, def_or_use } => {

                        //获得变量类型，做成symidx
                        let vartype = find!(rule RULE_declarationSpecifiers at ast_decl_node in ast_tree).unwrap();
                        let type_str = node!(at vartype in ast_tree).text.clone();
                        let type_symidx = SymbolIndex::new(decl_scope, type_str);
                        println!("dec enter {}",text);

                        let ast_node = *ast_node;
                        let var_str = &node!(at ast_node in ast_tree).text;
                        let symbol_symidx = process_symbol(scope_tree, symbol_table, &def_or_use, var_str, decl_prt_scope);

                        //创建空值
                        let value_symidx = SymbolIndex::new(decl_prt_scope, "".to_string());   

                        let def_instr = Instruction::new_defvar(type_symidx, symbol_symidx, value_symidx);

                        push_instr!(add def_instr to cfg_bb for bb in cfg_graph);
                    },
                    _ =>{
                        panic!("{}这里不应该为sep类型",detail_et);
                    }
                }
            }
            counter
        }else{
            panic!("sep下面缺少具体的etnode，et树生成错误");
        }
    }else{
        panic!("ast2scope找不到{}",ast_decl_node);
    }
}


fn parse_op2nhwc(){
    
}

fn parse_for2nhwc(){
    
}
fn parse_while2nhwc(){
    
}

///将函数名存入符号表，将函数签名处理为ir，并处理函数体内的语句
fn parse_func2nhwc(ast_tree:&AstTree,cfg_graph:&mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symbol_table:&mut SymbolTable,ast2scope:&HashMap<u32,u32>,ast_fun:u32,ast_funsign:u32,cfg_entry:u32){
    //获取函数所对应的scopenode
    if let Some(fun_scope) = ast2scope.get(&ast_fun){
        //获取函数名称
        let fun_name = &node!(at ast_funsign in ast_tree).text;
        let name_symidx = SymbolIndex::new(*fun_scope, fun_name.to_string());

        //添加到符号表中
        let fun_symbol = Symbol::new(cfg_entry, fun_name.to_string());
        symbol_table.add(fun_symbol);

        //获取返回类型
        let ast_retype = find!(rule RULE_declarationSpecifiers at ast_fun in ast_tree).unwrap();
        let fun_rettype = &node!(at ast_retype in ast_tree).text;
        let type_symidx = SymbolIndex::new(*fun_scope, fun_rettype.to_string());

        //获取参数列表
        let mut para_symlst: Vec<SymbolIndex> = vec![];
        //函数有参数
        if let Some(para) = find!(rule RULE_declarator then RULE_directDeclarator finally RULE_parameterTypeList at ast_fun in ast_tree){
            let ast_paralst = find_nodes!(rule RULE_parameterList finally RULE_parameterDeclaration at para in ast_tree);
            //将函数签名转为ir
            for ast_para in ast_paralst{
                let fun_para = &node!(at ast_para in ast_tree).text;
                let para_symidx = SymbolIndex::new(*fun_scope, fun_para.to_string());
                para_symlst.push(para_symidx);
            }
        }
        //函数无参数，则不需要处理参数部分
        else{}
        //做成instr放在cfg的entry里面
        let fun_instruction = Instruction::new_deffun(name_symidx, type_symidx, para_symlst);
        
        push_instr!(add fun_instruction to cfg_entry for entry in cfg_graph);

    }else{
        panic!("找不到{}该函数的scopenode!",ast_fun);
    }
    
}

/// 由于cfg 里面包含了其他的一些块和边，例如 branch 块和 after conditioned边
/// 因此我们需要再做一次转化，把边转化成相应的跳转或者调整代码，把所有node 都转化成BasicBlock
pub fn parse_cfg_into_nhwc_cfg(context :&mut Context,mut counter:u32){
    let (cfg_graph,scope_tree,ast_tree,symbol_table,et_tree,ast2scope)= (&mut context.cfg_graph , &mut context.scope_tree,&mut context.ast_tree,&mut context.symtab,&mut context.et_tree,&context.ast2scope);

    let start_node: NodeIndex<u32> = NodeIndex::new(0);
    //先遍历一遍函数名，将函数名加入到符号表中
    let cfg_funs = direct_nodes!(at start_node in cfg_graph);
    for cfg_entry in cfg_funs.clone(){
        if let CfgNode::Entry { ast_node, text:_, calls_in_func:_ ,instr:_} = node!(at cfg_entry in cfg_graph){
            //查找函数名称所在节点
            let ast_fun = *ast_node;
            let ast_funsign = find!(rule RULE_declarator then RULE_directDeclarator finally RULE_directDeclarator at ast_fun in ast_tree).unwrap();

            parse_func2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symbol_table, ast2scope,ast_fun,ast_funsign,cfg_entry);
        }else{
            panic!("entry不是函数签名，cfg出错");
        }   
    }
    //再遍历一遍entry，对于每个函数做dfs,处理函数体
    for cfg_entry in cfg_funs.clone(){
        let dfs_vec = dfs_graph!(at cfg_entry in cfg_graph for dfs);

        for node in dfs_vec{
            let cfgnode = node!(at node in cfg_graph);
            match cfgnode {
                CfgNode::Branch { ast_expr_node, text } =>{

                },
                CfgNode::Switch { ast_expr_node, text } =>{

                },
                CfgNode::ForLoop { ast_before_node, ast_mid_node, ast_after_node, text }=>{
                    
                },
                CfgNode::WhileLoop { ast_expr_node, text }=>{

                },
                CfgNode::BasicBlock { ast_nodes, text:_, instrs:_ }=>{
                    counter = parse_bb2nhwc(ast_tree,cfg_graph, scope_tree, et_tree, symbol_table, ast2scope,ast_nodes.clone(),node,counter);
                },
                _=>{},
            }
        }
    }
}

pub fn dfs(cfg_graph: &mut CfgGraph, cfg_node: u32, visited: &mut Vec<bool>, dfs_vec: &mut Vec<u32>) {
    if visited[cfg_node as usize] {
        return;
    }
    visited[cfg_node as usize] = true;
    dfs_vec.push(cfg_node);

    let nodes = direct_nodes!(at cfg_node in cfg_graph);
    for node in nodes {
        if !visited[node as usize] {
            dfs(cfg_graph, node, visited, dfs_vec);
        }
    }
}
