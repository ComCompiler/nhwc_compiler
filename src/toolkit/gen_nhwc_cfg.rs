use std::{collections::HashMap, fs::OpenOptions};

use petgraph::{stable_graph::{NodeIndex, StableGraph}, EdgeType};
use syn::token::Use;

use crate::{ add_node, add_node_with_edge, add_symbol, antlr_parser::cparser::{RULE_declaration, RULE_declarationSpecifiers, RULE_declarator, RULE_directDeclarator, RULE_expression, RULE_expressionStatement, RULE_parameterDeclaration, RULE_parameterList, RULE_parameterTypeList}, dfs_graph, direct_node, direct_nodes, find, find_nodes, node, node_mut, push_instr, rule_id, toolkit::{ast_node, field::{Type, UseCounter}, nhwc_instr::Instruction, symbol::Symbol, symbol_table::SymTabEdge}};

use super::{ ast_node::AstTree, cfg_node::{CfgGraph, CfgNode}, context::Context, et_node::{Def_Or_Use, EtNakedNode, EtTree}, field::FieldsOwner, gen_et::process_any_stmt, nhwc_instr::NakedInstruction, scope_node::ScopeTree, symbol, symbol_table::{ SymIdx, SymTab, SymTabGraph}};

/*
 这个文件主要是对  cfg_graph 进行后一步处理，因为cfg_graph 在此之前还没有 
 */


pub type NhwcCfg = CfgGraph;

/// 这个函数根据stmt对instrs push instruction 
fn parse_stmt2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,symtab:&mut SymTab,scope_tree:&ScopeTree,et_tree:&mut EtTree,ast2scope:&HashMap<u32,u32>,ast_decl_node:u32,cfg_bb:u32,mut counter:u32, symtab_g:&mut Option<&mut SymTabGraph>)->u32{
    //获取scope
    if let Some(decl_scope) = ast2scope.get(&ast_decl_node){
        let stmt_scope = *decl_scope;
        let decl_parent_scope = node!(at stmt_scope in scope_tree).parent;

        //将declaration生成et
        let et_root = process_any_stmt(et_tree, ast_tree, scope_tree, ast_decl_node, stmt_scope);

        //如果该节点有子树
        if let Some(_) = direct_node!(at et_root in et_tree ret option){
            let et_nodes = direct_nodes!(at et_root in et_tree);
            for et_node in et_nodes{
                let et_struct = &node!(at et_node in et_tree).et_naked_node;
                match et_struct{
                    EtNakedNode::Operator { op, ast_node, text } => {
                        if let Some(_) = direct_node!(at et_node in et_tree ret option){
                            match op{
                                crate::toolkit::et_node::ExprOp::Assign => {
                                    let op_values = direct_nodes!(at et_node in et_tree);

                                    // 后序遍历 右边
                                    let (value_symidx,new_counter) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[1], decl_parent_scope, cfg_bb, counter,symtab_g);
                                    counter = new_counter;
                                    
                                    // 后序遍历 左边
                                    let (var_symidx,new_counter) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[0], decl_parent_scope, cfg_bb, counter,symtab_g);
                                    counter = new_counter;

                                    let assign_instr = NakedInstruction::new_assign(var_symidx, value_symidx).to_instr();

                                    push_instr!(assign_instr to cfg_bb in cfg_graph);
                                },
                                crate::toolkit::et_node::ExprOp::LPlusPlus => {
                                    if let Some(symbol_node) = direct_node!(at et_node in et_tree ret option){
                                        let (var_symidx,new_counter) = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, symbol_node, decl_parent_scope,  cfg_bb, counter,symtab_g);
                                        counter = new_counter;
                
                                        let one_symidx = SymIdx::new(decl_parent_scope, "1".to_string()); 
                
                                        let tmp_loadvar_symidx = SymIdx::new(decl_parent_scope, format!("%{}",counter));
                                        counter += 1;
                                        let tmp_addvar_symidx = SymIdx::new(decl_parent_scope, format!("%{}",counter));
                                        counter += 1;
                                        let vartype=Type::new(decl_parent_scope, ast_tree);
                
                                        let load_instr = NakedInstruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone()).to_instr();
                                        let add_instr = NakedInstruction::new_add(tmp_addvar_symidx.clone(), var_symidx.clone(), one_symidx,vartype).to_instr();
                                        let assign_instr = NakedInstruction::new_assign(var_symidx, tmp_addvar_symidx.clone()).to_instr();
                
                                        push_instr!(load_instr to cfg_bb in cfg_graph);
                                        push_instr!(add_instr to cfg_bb in cfg_graph);
                                        push_instr!(assign_instr to cfg_bb in cfg_graph);
                                    }else{
                                        panic!("操作符{}下缺少符号",et_node);
                                    }
                                },
                                crate::toolkit::et_node::ExprOp::RPlusPlus => {
                                    if let Some(symbol_node) = direct_node!(at et_node in et_tree ret option){
                                        let (var_symidx,new_counter) = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, symbol_node, decl_parent_scope,  cfg_bb, counter,symtab_g);
                                        counter = new_counter;
                
                                        let one_symidx = SymIdx::new(decl_parent_scope, "1".to_string()); 
                
                                        let tmp_loadvar_symidx = SymIdx::new(decl_parent_scope, format!("%{}",counter));
                                        counter += 1;
                                        let tmp_addvar_symidx = SymIdx::new(decl_parent_scope, format!("%{}",counter));
                                        counter += 1;
                                        let vartype=Type::new(decl_parent_scope, ast_tree);
                
                                        let load_instr = NakedInstruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone()).to_instr();
                                        let add_instr = NakedInstruction::new_add(tmp_addvar_symidx.clone(), var_symidx.clone(), one_symidx,vartype).to_instr();
                                        let assign_instr = NakedInstruction::new_assign(var_symidx, tmp_addvar_symidx.clone()).to_instr();
                
                                        push_instr!(load_instr to cfg_bb in cfg_graph);
                                        push_instr!(add_instr to cfg_bb in cfg_graph);
                                        push_instr!(assign_instr to cfg_bb in cfg_graph);
                                    }else{
                                        panic!("操作符{}下缺少符号",et_node);
                                    }
                                },
                                crate::toolkit::et_node::ExprOp::LMinusMinus => {
                                    if let Some(symbol_node) = direct_node!(at et_node in et_tree ret option){
                                        let (var_symidx,new_counter) = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, symbol_node, decl_parent_scope,  cfg_bb, counter,symtab_g);
                                        counter = new_counter;
                
                                        let one_symidx = SymIdx::new(decl_parent_scope, "1".to_string());
                
                                        let tmp_loadvar_symidx = SymIdx::new(decl_parent_scope, format!("%{}",counter));
                                        counter += 1;
                                        let tmp_subvar_symidx = SymIdx::new(decl_parent_scope, format!("%{}",counter));
                                        counter += 1;
                                        let vartype=Type::new(decl_parent_scope, ast_tree);
                                        
                                        let load_instr = NakedInstruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone()).to_instr();
                                        let sub_instr = NakedInstruction::new_sub(tmp_subvar_symidx.clone(), var_symidx.clone(), one_symidx,vartype).to_instr();
                                        let assign_instr = NakedInstruction::new_assign(var_symidx, tmp_subvar_symidx.clone()).to_instr();
                
                                        push_instr!(load_instr to cfg_bb in cfg_graph);
                                        push_instr!(sub_instr to cfg_bb in cfg_graph);
                                        push_instr!(assign_instr to cfg_bb in cfg_graph);
                                    }else{
                                        panic!("操作符{}下缺少符号",et_node);
                                    }
                                },
                                crate::toolkit::et_node::ExprOp::RMinusMinus => {
                                    if let Some(symbol_node) = direct_node!(at et_node in et_tree ret option){
                                        let (var_symidx,new_counter) = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, symbol_node, decl_parent_scope,  cfg_bb, counter,symtab_g);
                                        counter = new_counter;
                
                                        let one_symidx = SymIdx::new(decl_parent_scope, "1".to_string());
                
                                        let tmp_loadvar_symidx = SymIdx::new(decl_parent_scope, format!("%{}",counter));
                                        counter += 1;
                                        let tmp_subvar_symidx = SymIdx::new(decl_parent_scope, format!("%{}",counter));
                                        counter += 1;
                                        let vartype=Type::new(decl_parent_scope, ast_tree);
                
                                        let load_instr = NakedInstruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone()).to_instr();
                                        let sub_instr = NakedInstruction::new_sub(tmp_subvar_symidx.clone(), var_symidx.clone(), one_symidx,vartype).to_instr();
                                        let assign_instr = NakedInstruction::new_assign(var_symidx, tmp_subvar_symidx.clone()).to_instr();
                
                                        push_instr!(load_instr to cfg_bb in cfg_graph);
                                        push_instr!(sub_instr to cfg_bb in cfg_graph);
                                        push_instr!(assign_instr to cfg_bb in cfg_graph);
                                    }else{
                                        panic!("操作符{}下缺少符号",et_node);
                                    }
                                },
                                crate::toolkit::et_node::ExprOp::MulAssign => {
                                    let op_values = direct_nodes!(at et_node in et_tree);

                                    let (value_symidx,new_counter) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[1], decl_parent_scope, cfg_bb, counter,symtab_g);
                                    counter = new_counter;
                                    
                                    let (var_symidx,new_counter) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[0], decl_parent_scope, cfg_bb, counter,symtab_g);
                                    counter = new_counter;

                                    let tmp_var_symidx = SymIdx::new(decl_parent_scope, format!("%{}",counter));
                                    counter += 1;
                                    let vartype=Type::new(decl_parent_scope, ast_tree);

                                    let mul_instr = NakedInstruction::new_mul(tmp_var_symidx.clone(), var_symidx.clone(), value_symidx,vartype).to_instr();
                                    let assign_instr = NakedInstruction::new_assign(var_symidx, tmp_var_symidx).to_instr();
                                    
                                    push_instr!(mul_instr to cfg_bb in cfg_graph);
                                    push_instr!(assign_instr to cfg_bb in cfg_graph);
                                },
                                crate::toolkit::et_node::ExprOp::DivAssign => {
                                    let op_values = direct_nodes!(at et_node in et_tree);

                                    let (value_symidx,new_counter) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[1], decl_parent_scope, cfg_bb, counter,symtab_g);
                                    counter = new_counter;
                                    
                                    let (var_symidx,new_counter) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[0], decl_parent_scope, cfg_bb, counter,symtab_g);
                                    counter = new_counter;

                                    let tmp_var_symidx = SymIdx::new(decl_parent_scope, format!("%{}",counter));
                                    counter += 1;
                                    let vartype=Type::new(decl_parent_scope, ast_tree);

                                    let div_instr = NakedInstruction::new_div(tmp_var_symidx.clone(), var_symidx.clone(), value_symidx,vartype).to_instr();
                                    let assign_instr = NakedInstruction::new_assign(var_symidx, tmp_var_symidx).to_instr();

                                    push_instr!(div_instr to cfg_bb in cfg_graph);
                                    push_instr!(assign_instr to cfg_bb in cfg_graph);
                                },
                                crate::toolkit::et_node::ExprOp::PlusAssign => {
                                    let op_values = direct_nodes!(at et_node in et_tree);

                                    let (value_symidx,new_counter) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[1], decl_parent_scope, cfg_bb, counter,symtab_g);
                                    counter = new_counter;
                                    
                                    let (var_symidx,new_counter) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[0], decl_parent_scope, cfg_bb, counter,symtab_g);
                                    counter = new_counter;

                                    let tmp_var_symidx = SymIdx::new(decl_parent_scope, format!("%{}",counter));
                                    counter += 1;
                                    let vartype=Type::new(decl_parent_scope, ast_tree);

                                    let add_instr = NakedInstruction::new_add(tmp_var_symidx.clone(), var_symidx.clone(), value_symidx,vartype).to_instr();
                                    let assign_instr = NakedInstruction::new_assign(var_symidx, tmp_var_symidx).to_instr();

                                    push_instr!(add_instr to cfg_bb in cfg_graph);
                                    push_instr!(assign_instr to cfg_bb in cfg_graph);
                                },
                                crate::toolkit::et_node::ExprOp::MinusAssign => {
                                    let op_values = direct_nodes!(at et_node in et_tree);

                                    let (value_symidx,new_counter) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[1], decl_parent_scope, cfg_bb, counter,symtab_g);
                                    counter = new_counter;
                                    
                                    let (var_symidx,new_counter) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[0], decl_parent_scope, cfg_bb, counter,symtab_g);
                                    counter = new_counter;

                                    let tmp_var_symidx = SymIdx::new(decl_parent_scope, format!("%{}",counter));
                                    counter += 1;
                                    let vartype=Type::new(decl_parent_scope, ast_tree);

                                    let sub_instr = NakedInstruction::new_sub(tmp_var_symidx.clone(), var_symidx.clone(), value_symidx,vartype).to_instr();
                                    let assign_instr = NakedInstruction::new_assign(var_symidx, tmp_var_symidx).to_instr();

                                    push_instr!(sub_instr to cfg_bb in cfg_graph);
                                    push_instr!(assign_instr to cfg_bb in cfg_graph);
                                },
                                _ => {
                                    panic!("statment初始运算符应有赋值性质,ast_node {} 符号出现错误",*ast_node);
                                }
                            }
                        }else{
                            panic!("操作符下缺少具体变量或常量");
                        }
                    },
                    EtNakedNode::Constant { const_sym_idx:_, ast_node:_, text:_ } => todo!(),
                    EtNakedNode::Symbol { sym_idx:_, ast_node:_, text, def_or_use } => {

                        //获得变量类型，做成symidx
                        let type_node = find!(rule RULE_declarationSpecifiers at ast_decl_node in ast_tree).unwrap();
                        // let type_str = node!(at type_node in ast_tree).text.clone();
                        let var_type = Type::new(type_node,ast_tree);
                        println!("stat enter {}",text);
                        let symbol_symidx = process_symbol(ast_tree,scope_tree, symtab, &def_or_use, &text, decl_parent_scope,symtab_g);

                        //创建空值
                        let value_symidx = SymIdx::new(decl_parent_scope, "".to_string());   
                        let def_instr = NakedInstruction::new_def_var(var_type, symbol_symidx, value_symidx).to_instr();

                        push_instr!(def_instr to cfg_bb in cfg_graph);
                    },
                    _ =>{
                        panic!("{}这里不应该为sep类型",et_node);
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

fn parse_bb2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,ast_nodes:Vec<u32>,cfg_bb:u32,mut counter:u32, symtab_g:&mut Option<&mut SymTabGraph>){
    for astnode in ast_nodes{
        match(rule_id!(at astnode in ast_tree),astnode){
            (RULE_declaration,declaration_node)=>{
                counter = parse_declaration2nhwc(ast_tree,cfg_graph,symtab, scope_tree,et_tree,ast2scope,declaration_node,cfg_bb,counter,symtab_g);
            },
            (RULE_expressionStatement,statement_node)=>{
                counter = parse_stmt2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, ast2scope,statement_node, cfg_bb, counter,symtab_g)
            },
            (_,_)=>{
                panic!("bb中未知RULE，{}不是expr或stmt",astnode);
            }
        }
    }    
}
fn parse_whileloop2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,ast_expr_node:u32,cfg_whileloop:u32,mut counter:u32, symtab_g:&mut Option<&mut SymTabGraph>){
    match(rule_id!(at ast_expr_node in ast_tree),ast_expr_node){
        (RULE_expression,statement_node)=>{
            let label_instr = NakedInstruction::new_label(SymIdx::new(0, "while_head".to_string())).to_instr();
            push_instr!(label_instr to cfg_whileloop in cfg_graph);
            parse_stmt2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, ast2scope,statement_node, cfg_whileloop, counter,symtab_g);
        },
        (_,_)=>{
            panic!("whileloop中未知RULE,{}不是expr或stmt",ast_expr_node);
        }
    }
}
fn parse_forloop2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,ast_before_node:u32,ast_mid_node:u32,ast_after_node:u32,cfg_whileloop:u32,mut counter:u32, symtab_g:&mut Option<&mut SymTabGraph>){
    // match(rule_id!(at ast_expr_node in ast_tree),ast_expr_node){
    //     (RULE_expression,statement_node)=>{
    //         let label_instr = NakedInstruction::new_label(SymIdx::new(0, "while_head".to_string())).to_instr();
    //         push_instr!(label_instr to cfg_whileloop in cfg_graph);
    //         parse_stmt2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, ast2scope,statement_node, cfg_whileloop, counter,symtab_g);
    //     },
    //     (_,_)=>{
    //         panic!("forloop中未知RULE,{}不是或stmt",ast_expr_node);
    //     }
    // }
}
fn parse_switch2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,ast_expr_node:u32,cfg_whileloop:u32,mut counter:u32, symtab_g:&mut Option<&mut SymTabGraph>){
    // match(rule_id!(at ast_expr_node in ast_tree),ast_expr_node){
    //     (RULE_expression,statement_node)=>{
    //         let label_instr = NakedInstruction::new_label(SymIdx::new(0, "while_head".to_string())).to_instr();
    //         push_instr!(label_instr to cfg_whileloop in cfg_graph);
    //         parse_stmt2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, ast2scope,statement_node, cfg_whileloop, counter,symtab_g);
    //     },
    //     (_,_)=>{
    //         panic!("forloop中未知RULE,{}不是或stmt",ast_expr_node);
    //     }
    // }
}
fn parse_branch2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,ast_expr_node:u32,cfg_whileloop:u32,mut counter:u32, symtab_g:&mut Option<&mut SymTabGraph>){
    // match(rule_id!(at ast_expr_node in ast_tree),ast_expr_node){
    //     (RULE_expression,statement_node)=>{
    //         let label_instr = NakedInstruction::new_label(SymIdx::new(0, "while_head".to_string())).to_instr();
    //         push_instr!(label_instr to cfg_whileloop in cfg_graph);
    //         parse_stmt2nhwc(ast_tree, cfg_graph, symtab, scope_tree, et_tree, ast2scope,statement_node, cfg_whileloop, counter,symtab_g);
    //     },
    //     (_,_)=>{
    //         panic!("forloop中未知RULE,{}不是或stmt",ast_expr_node);
    //     }
    // }
}
static USE_COUNTER:&str = "use_counter";
fn process_constant(ast_tree:&AstTree,scope_tree:&ScopeTree,symtab:&mut SymTab,const_literal:&String,scope_node:u32, symtab_g:&mut Option<&mut SymTabGraph>)->SymIdx{
    // 我们认为 constant 的scope node 都是全局的
    match find!(symbol mut {const_literal.clone()} of scope {0} in symtab){
        Some(const_sym) => {
            // do nothing 找到了同样的常量
            println!("{:?}",const_sym);
            let use_counter = find!(field mut USE_COUNTER:UseCounter in const_sym).unwrap();
            use_counter.use_count+=1;
        },
        None => {
            println!("add const {} to symtab !!!!",const_literal);
            add_symbol!({Symbol::new(0, const_literal.clone())} with field USE_COUNTER:{UseCounter{ use_count: 1}} to symtab);
            
            match symtab_g{
                Some(symg) => {
                    let mut idx:u32=(symg.node_count()).try_into().unwrap();
                    // 如果图里没有节点,即idx=0,add_node
                    if idx==0{
                        add_node!({symtab.clone()} to symg);
                    }else {//如果已经有节点了,在最后一个节点上加点加边
                        let edge_info = SymTabEdge::new(const_literal.to_string());
                        idx-=1;
                        add_node_with_edge!({symtab.clone()} with edge {edge_info} from idx in symg);
                    }
                }
                None => {},
            }
        },
    }
    let const_symidx = SymIdx::new(0, const_literal.to_string());
    const_symidx
}

pub static TYPE:&str = "type";
fn process_symbol(ast_tree:&AstTree,scope_tree:&ScopeTree,symtab:&mut SymTab,def_or_use:&Def_Or_Use,symbol_name:&String,scope_node:u32, symtab_g:&mut Option<&mut SymTabGraph>)->SymIdx{   
    let mut symbol_scope = scope_node;
    match def_or_use{
        Def_Or_Use::Def { type_ast_node } => { 
            let symbol_str = symbol_name.clone();
            println!("处理的符号为{}",*symbol_name);
            let var_type = Type::new(*type_ast_node, ast_tree);
            let symbol_symidx = add_symbol!({Symbol::new_verbose(scope_node,symbol_str)} with field TYPE:{var_type} to symtab);
            match symtab_g{
                Some(symg) => {
                    let mut idx:u32 = (symg.node_count()).try_into().unwrap() ;
                    // 如果图里没有节点,即idx=0,add_node
                    if idx==0{
                        add_node!({symtab.clone()} to symg);
                    }else {//如果已经有节点了,在最后一个节点上加点加边
                        let edge_info = SymTabEdge::new(symbol_name.to_string());
                        idx-=1;
                        add_node_with_edge!({symtab.clone()} with edge {edge_info} from idx in symg);
                    }
                }
                None => {},
            };
            symbol_symidx
        },
        Def_Or_Use::Use => {
            while let None = find!(symbol {symbol_name.clone()} of scope symbol_scope in symtab){
                let ast = node!(at symbol_scope in scope_tree).ast_node;
                if symbol_scope == 0{
                    println!("ast{}",ast);
                    panic!("scope为{}符号表中未找到{:?}",symbol_scope,symbol_name.clone());
                }
                symbol_scope = node!(at symbol_scope in scope_tree).parent;
            }
            let symbol_symidx = SymIdx::new(scope_node, "%".to_owned()+&symbol_name.clone());
            symbol_symidx
        },
    }
}

fn process_et(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,et_tree:&EtTree,scope_tree:&ScopeTree,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,et_node:u32,scope_node:u32,cfg_bb:u32,mut counter:u32, symtab_g:&mut Option<&mut SymTabGraph>)->(SymIdx,u32){
    let nake_et = &node!(at et_node in et_tree).et_naked_node;
    match nake_et{
        EtNakedNode::Operator { op, ast_node:_, text:_ } => {
            match op{
                super::et_node::ExprOp::Mul => {
                    if let Some(_) = direct_node!(at et_node in et_tree ret option){
                        let next_nodes = direct_nodes!(at et_node in et_tree);

                        let (r_symidx,new_counter) = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, next_nodes[1], scope_node,  cfg_bb, counter,symtab_g);
                        counter = new_counter;

                        let (l_symidx,new_counter) = process_et(ast_tree,cfg_graph, et_tree, scope_tree, symtab, ast2scope, next_nodes[0], scope_node,  cfg_bb, counter,symtab_g);
                        counter = new_counter;

                        let tmp_var_symidx = SymIdx::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let vartype=Type::I32;
                        let mul_instr = NakedInstruction::new_mul(tmp_var_symidx.clone(), l_symidx, r_symidx,vartype).to_instr();
                        push_instr!(mul_instr to cfg_bb in cfg_graph);

                        (tmp_var_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Add => {
                    if let Some(_) = direct_node!(at et_node in et_tree ret option){
                        let next_nodes = direct_nodes!(at et_node in et_tree);

                        let (r_symidx,new_counter) = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, next_nodes[1], scope_node,  cfg_bb, counter,symtab_g);
                        counter = new_counter;

                        let (l_symidx,new_counter) = process_et(ast_tree,cfg_graph, et_tree, scope_tree, symtab, ast2scope, next_nodes[0], scope_node, cfg_bb, counter,symtab_g);
                        counter = new_counter;

                        let tmp_var_symidx = SymIdx::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let vartype=Type::I32;

                        let add_instr = NakedInstruction::new_add(tmp_var_symidx.clone(), l_symidx, r_symidx,vartype).to_instr();
                        push_instr!(add_instr to cfg_bb in cfg_graph);

                        (tmp_var_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Sub => {
                    if let Some(_) = direct_node!(at et_node in et_tree ret option){
                        let next_nodes = direct_nodes!(at et_node in et_tree);

                        let (r_symidx,new_counter) = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, next_nodes[1], scope_node,  cfg_bb, counter,symtab_g);
                        counter = new_counter;

                        let (l_symidx,new_counter) = process_et(ast_tree,cfg_graph, et_tree, scope_tree, symtab, ast2scope, next_nodes[0], scope_node, cfg_bb, counter,symtab_g);
                        counter = new_counter;

                        let tmp_var_symidx = SymIdx::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let vartype=Type::I32;
                        let sub_instr = NakedInstruction::new_sub(tmp_var_symidx.clone(), l_symidx, r_symidx,vartype).to_instr();
                        push_instr!(sub_instr to cfg_bb in cfg_graph);

                        (tmp_var_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Div => {
                    if let Some(_) = direct_node!(at et_node in et_tree ret option){
                        let next_nodes = direct_nodes!(at et_node in et_tree);

                        let (r_symidx,new_counter) = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, next_nodes[1], scope_node,  cfg_bb, counter,symtab_g);
                        counter = new_counter;

                        let (l_symidx,new_counter) = process_et(ast_tree,cfg_graph, et_tree, scope_tree, symtab, ast2scope, next_nodes[0], scope_node, cfg_bb, counter,symtab_g);
                        counter = new_counter;
                        
                        let tmp_var_symidx = SymIdx::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let vartype=Type::I32;

                        let div_instr = NakedInstruction::new_div(tmp_var_symidx.clone(), l_symidx, r_symidx,vartype).to_instr();
                        push_instr!(div_instr to cfg_bb in cfg_graph);

                        (tmp_var_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::Mod => todo!(),
                // super::et_node::ExprOp::Assign => todo!(),
                //逻辑运算符
                super::et_node::ExprOp::LogicalOr => todo!(),
                super::et_node::ExprOp::LogicalAnd => todo!(),
                super::et_node::ExprOp::LogicalNot => todo!(),
                //位运算符
                super::et_node::ExprOp::BitwiseOr => todo!(),
                super::et_node::ExprOp::BitwiseAnd => todo!(),
                super::et_node::ExprOp::BitwiseXor => todo!(),
                super::et_node::ExprOp::BitwiseNot => todo!(),
                super::et_node::ExprOp::LShift => todo!(),
                super::et_node::ExprOp::RShift => todo!(),
                //比较运算符
                super::et_node::ExprOp::Eq => todo!(),
                super::et_node::ExprOp::NEq => todo!(),
                super::et_node::ExprOp::Less => todo!(),
                super::et_node::ExprOp::Greater => todo!(),
                super::et_node::ExprOp::LEq => todo!(),
                super::et_node::ExprOp::GEq => todo!(),

                //类型转换
                super::et_node::ExprOp::Cast => todo!(),
                //调用函数
                super::et_node::ExprOp::Call => {
                    todo!();
                    //取函数名和实参
                    let called_fun = direct_nodes!(at et_node in et_tree);
                    //函数名是数组第一个值，其余为参数

                    //待处理：检验函数形参

                    let func_name = called_fun[0];
                    let func_name_struct = node!(at func_name in et_tree).et_naked_node;
                    let mut func_name_str = String::new();
                    match func_name_struct {
                        EtNakedNode::Symbol { sym_idx, ast_node, text, def_or_use }=>{
                        func_name_str = node!(at ast_node in ast_tree).text;
                        },
                        _ => {},
                    }
                    let func_name_symidx = SymIdx::new(scope_node, func_name_str);
                    //
                    let call_instr = NakedInstruction::new_func_call(assigned, func_name_symidx, args);
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
                    if let Some(symbol_node) = direct_node!(at et_node in et_tree ret option){
                        let (var_symidx,new_counter) = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, symbol_node, scope_node,  cfg_bb, counter,symtab_g);
                        counter = new_counter;

                        let one_symidx = SymIdx::new(scope_node, "1".to_string());
                        let tmp_loadvar_symidx = SymIdx::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let tmp_addvar_symidx = SymIdx::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let vartype=Type::I32;

                        let load_instr = NakedInstruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone()).to_instr();
                        let add_instr = NakedInstruction::new_add(tmp_addvar_symidx.clone(), var_symidx.clone(), one_symidx,vartype).to_instr();
                        let assign_instr = NakedInstruction::new_assign(var_symidx, tmp_addvar_symidx.clone()).to_instr();

                        push_instr!(load_instr to cfg_bb in cfg_graph);
                        push_instr!(add_instr to cfg_bb in cfg_graph);
                        push_instr!(assign_instr to cfg_bb in cfg_graph);

                        (tmp_addvar_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::RPlusPlus => {
                    if let Some(symbol_node) = direct_node!(at et_node in et_tree ret option){
                        let (var_symidx,new_counter) = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, symbol_node, scope_node,  cfg_bb, counter,symtab_g);
                        counter = new_counter;

                        let one_symidx = SymIdx::new(scope_node, "1".to_string());
                        let tmp_loadvar_symidx = SymIdx::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let tmp_addvar_symidx = SymIdx::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let vartype=Type::I32;

                        let load_instr = NakedInstruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone()).to_instr();
                        let add_instr = NakedInstruction::new_add(tmp_addvar_symidx.clone(), var_symidx.clone(), one_symidx,vartype).to_instr();
                        let assign_instr = NakedInstruction::new_assign(var_symidx, tmp_addvar_symidx.clone()).to_instr();

                        push_instr!(load_instr to cfg_bb in cfg_graph);
                        push_instr!(add_instr to cfg_bb in cfg_graph);
                        push_instr!(assign_instr to cfg_bb in cfg_graph);

                        (tmp_loadvar_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::LMinusMinus => {
                    if let Some(symbol_node) = direct_node!(at et_node in et_tree ret option){
                        let (var_symidx,new_counter) = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, symbol_node, scope_node,  cfg_bb, counter,symtab_g);
                        counter = new_counter;

                        let one_symidx = SymIdx::new(scope_node, "1".to_string());
                        let tmp_loadvar_symidx = SymIdx::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let tmp_subvar_symidx = SymIdx::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let vartype=Type::I32;

                        let load_instr = NakedInstruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone()).to_instr();
                        let sub_instr = NakedInstruction::new_sub(tmp_subvar_symidx.clone(), var_symidx.clone(), one_symidx,vartype).to_instr();
                        let assign_instr = NakedInstruction::new_assign(var_symidx, tmp_subvar_symidx.clone()).to_instr();

                        push_instr!(load_instr to cfg_bb in cfg_graph);
                        push_instr!(sub_instr to cfg_bb in cfg_graph);
                        push_instr!(assign_instr to cfg_bb in cfg_graph);

                        (tmp_subvar_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                super::et_node::ExprOp::RMinusMinus => {
                    if let Some(symbol_node) = direct_node!(at et_node in et_tree ret option){
                        let (var_symidx,new_counter) = process_et(ast_tree,cfg_graph,et_tree, scope_tree, symtab, ast2scope, symbol_node, scope_node,  cfg_bb, counter,symtab_g);
                        counter = new_counter;

                        let one_symidx = SymIdx::new(scope_node, "1".to_string());
                        let tmp_loadvar_symidx = SymIdx::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let tmp_subvar_symidx = SymIdx::new(scope_node, format!("%{}",counter));
                        counter += 1;
                        let vartype=Type::I32;

                        let load_instr = NakedInstruction::new_assign(tmp_loadvar_symidx.clone(), var_symidx.clone()).to_instr();
                        let sub_instr = NakedInstruction::new_sub(tmp_subvar_symidx.clone(), var_symidx.clone(), one_symidx,vartype).to_instr();
                        let assign_instr = NakedInstruction::new_assign(var_symidx, tmp_subvar_symidx.clone()).to_instr();

                        push_instr!(load_instr to cfg_bb in cfg_graph);
                        push_instr!(sub_instr to cfg_bb in cfg_graph);
                        push_instr!(assign_instr to cfg_bb in cfg_graph);

                        (tmp_loadvar_symidx,counter)
                    }else{
                        panic!("操作符{}下缺少符号",et_node);
                    }
                },
                _ => {
                    panic!("表达式{:?}内不应存在带有显性赋值性质的操作符",op);
                },
            }
        },
        EtNakedNode::Constant { const_sym_idx:_, ast_node, text:_ } => {
            println!("调用 process constant");
            let ast_node = *ast_node;
            let constant_literal = &node!(at ast_node in ast_tree).text;
            (process_constant(ast_tree, scope_tree, symtab,  constant_literal, scope_node,symtab_g ),counter)
        },
        EtNakedNode::Symbol { sym_idx:_, ast_node, text:_, def_or_use } => {
            let ast_node = *ast_node;
            let symbol_literal = &node!(at ast_node in ast_tree).text;
            println!("处理的节点为{}符号为{}",ast_node,symbol_literal);
            let symbol_symidx = process_symbol(ast_tree,scope_tree,symtab,def_or_use,symbol_literal,scope_node,symtab_g);
            (symbol_symidx,counter)
        },
        _=>{
            panic!("{}不应出现sep类型的et",et_node);
        }
    }
}

///定义变量的decl转为ir，并通过et查找元素是否合法
fn parse_declaration2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,symtab:&mut SymTab,scope_tree:&ScopeTree,et_tree:&mut EtTree,ast2scope:&HashMap<u32,u32>,ast_decl_node:u32,cfg_bb:u32,mut counter:u32, symtab_g:&mut Option<&mut SymTabGraph>)->u32{
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
                    EtNakedNode::Operator { op:_, ast_node:_, text:_ } => {
                        if let Some(_) = direct_node!(at detail_et in et_tree ret option){
                            let op_values = direct_nodes!(at detail_et in et_tree);

                            //获得变量类型，做成symidx
                            let var = find!(rule RULE_declarationSpecifiers at ast_decl_node in ast_tree).unwrap();
                            let type_str = node!(at var in ast_tree).text.clone();
                            let var_type = Type::new(var, ast_tree);
                            
                            let (var_symidx,new_counter) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[0], decl_prt_scope, cfg_bb, counter,symtab_g);
                            counter = new_counter;

                            let (value_symidx,new_counter) = process_et(ast_tree, cfg_graph, et_tree, scope_tree, symtab, ast2scope, op_values[1], decl_prt_scope, cfg_bb, counter,symtab_g);
                            counter = new_counter;

                            let defvar_instr = NakedInstruction::new_def_var(var_type, var_symidx, value_symidx).to_instr();

                            push_instr!(defvar_instr to cfg_bb in cfg_graph);
                        }else{
                            panic!("操作符下缺少具体变量或常量");
                        }
                    },
                    EtNakedNode::Constant { const_sym_idx:_, ast_node:_, text:_ } => todo!(),
                    EtNakedNode::Symbol { sym_idx:_, ast_node, text, def_or_use } => {
                        //获得变量类型，做成symidx
                        let var = find!(rule RULE_declarationSpecifiers at ast_decl_node in ast_tree).unwrap();
                        let type_str = node!(at var in ast_tree).text.clone();
                        let var_type = Type::new(var, ast_tree);
                        println!("dec enter {}",text);

                        let ast_node = *ast_node;
                        let var_str = &node!(at ast_node in ast_tree).text;
                        let symbol_symidx = process_symbol(ast_tree,scope_tree, symtab, &def_or_use, var_str, decl_prt_scope,symtab_g);

                        //创建空值
                        let value_symidx = SymIdx::new(decl_prt_scope, "".to_string());   

                        let def_instr = NakedInstruction::new_def_var(var_type, symbol_symidx, value_symidx).to_instr();

                        push_instr!(def_instr to cfg_bb in cfg_graph);
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

///将函数名存入符号表，将函数签名处理为ir，并处理函数体内的语句
fn parse_func2nhwc(ast_tree:&AstTree,cfg_graph:&mut CfgGraph,symtab:&mut SymTab,ast2scope:&HashMap<u32,u32>,ast_fun:u32,ast_funsign:u32,cfg_entry:u32, symtab_g:&mut Option<&mut SymTabGraph>){
    //获取函数所对应的scopenode
    if let Some(func_scope) = ast2scope.get(&ast_fun){
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
                let func_arg_str = &node!(at ast_para_sym in ast_tree).text;
                let arg_symidx = SymIdx::new(*func_scope, func_arg_str.clone());
                arg_syms.push(arg_symidx);

                println!("func {} !!!",func_arg_str);
                add_symbol!({Symbol::new_verbose(*func_scope,func_arg_str.to_string())} with field TYPE:{Type::I32} to symtab);
            }
            //添加到符号表中
            let func_symbol = Symbol::new(cfg_entry, fun_name.to_string());
            add_symbol!(func_symbol with field TYPE:{Type::Fn { arg_syms: arg_syms, ret_sym:type_symidx}} to symtab);
        }
        //函数无参数，则不需要处理参数部分
        else{}
        //做成instr放在cfg的entry里面
        let func_instr = NakedInstruction::new_def_func(name_symidx, type_symidx, arg_syms).to_instr();
        
        push_instr!(func_instr to cfg_entry for entry in cfg_graph);

    }else{
        panic!("找不到{}该函数的scopenode!",ast_fun);
    }
    
}

/// 由于cfg 里面包含了其他的一些块和边，例如 branch 块和 after conditioned边
/// 因此我们需要再做一次转化，把边转化成相应的跳转或者调整代码，把所有node 都转化成BasicBlock
pub fn parse_cfg_into_nhwc_cfg(cfg_graph:&mut CfgGraph, scope_tree:&mut ScopeTree, ast_tree:&mut AstTree,symtab:&mut SymTab, et_tree:&mut EtTree, ast2scope:&mut HashMap<u32,u32> , mut counter:u32, symtab_g:&mut Option<&mut SymTabGraph>){
    // let (cfg_graph,scope_tree,ast_tree,symtab,et_tree,ast2scope)= (&mut context.cfg_graph , &mut context.scope_tree,&mut context.ast_tree,&mut context.symtab,&mut context.et_tree,&context.ast2scope);

    let start_node: NodeIndex<u32> = NodeIndex::new(0);
    //先遍历一遍函数名，将函数名加入到符号表中
    let cfg_funs = direct_nodes!(at start_node in cfg_graph);
    for cfg_entry in cfg_funs.clone(){
        if let CfgNode::Entry { ast_node, text:_, calls_in_func:_ ,instr:_} = node!(at cfg_entry in cfg_graph){
            //查找函数名称所在节点
            let ast_fun = *ast_node;
            let ast_funsign = find!(rule RULE_declarator then RULE_directDeclarator finally RULE_directDeclarator at ast_fun in ast_tree).unwrap();

            parse_func2nhwc(ast_tree, cfg_graph,symtab, ast2scope,ast_fun,ast_funsign,cfg_entry,symtab_g);
        }else{
            panic!("entry不是函数签名,cfg出错");
        }   
    }
    //再遍历一遍entry，对于每个函数做dfs,处理函数体
    for cfg_entry in cfg_funs.clone(){
        let dfs_vec = dfs_graph!(at cfg_entry in cfg_graph for dfs);

        for cfg_node in dfs_vec{
            let cfgnode = node!(at cfg_node in cfg_graph);
            match cfgnode {
                CfgNode::Branch { ast_expr_node, text, true_head_tail_nodes, false_head_tail_nodes, instrs } =>{
                    parse_branch2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_expr_node, cfg_node, counter, symtab_g)
                },
                CfgNode::Switch { ast_expr_node, text, instrs } =>{
                },
                CfgNode::ForLoop { ast_before_node, ast_mid_node, ast_after_node, text, exit_node, body_head_tail_nodes, instrs }=>{
                    parse_forloop2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_after_node,*ast_mid_node,*ast_after_node, cfg_node, counter, symtab_g)
                },
                CfgNode::WhileLoop { ast_expr_node, text, exit_node, body_node, instrs }=>{
                    parse_whileloop2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symtab, ast2scope, *ast_expr_node, cfg_node, counter, symtab_g)
                },
                CfgNode::BasicBlock { ast_nodes, text:_, instrs:_ }=>{
                    parse_bb2nhwc(ast_tree,cfg_graph, scope_tree, et_tree, symtab, ast2scope,ast_nodes.clone(),cfg_node,counter,symtab_g);
                },
                _=>{},
            }
        }
    }
}
