use std::collections::HashMap;

use petgraph::{stable_graph::NodeIndex, visit::Dfs};

use crate::{antlr_parser::cparser::{RULE_declaration, RULE_declarationSpecifiers, RULE_declarator, RULE_directDeclarator, RULE_expression, RULE_initDeclarator, RULE_initDeclaratorList, RULE_statement}, find, find_nodes, node, rule_id};

use super::{ ast_node::AstTree, cfg_node::{CfgGraph, CfgNode}, context::Context, et_node::{EtNode, EtTree}, gen_et::process_any_stmt, scope_node::ScopeTree, symbol_table::{Symbol, SymbolTable}};

/*
 这个文件主要是对  cfg_graph 进行后一步处理，因为cfg_graph 在此之前还没有 
 */


pub type NhwcCfg = CfgGraph;

fn check_var(et_tree:&mut EtTree,symbol_table:&SymbolTable,scope_tree:&ScopeTree,ast2scope:&HashMap<u32,u32>,et_node:u32){
    let var_node = node!(at et_node in et_tree);
    match var_node{
        EtNode::Symbol { sym_idx, ast_node, text, def_or_use } =>{
            let var_scope = ast2scope.get(ast_node);
            match var_scope{
                Some(scope_var_node)=>{

                },
                None =>{
                    panic!("ast2scope中没有这个变量");
                }
            }
        },
        _ =>{
            panic!("该节点不是变量！");
        }
    }

}

fn parse_expr2nhwc(){

}
/// 处理所有跳转语句，翻译成对应的instruction并确定跳转到的BB
fn parse_stmt2nhwc(){
    
}
fn parse_bb2nhwc(){
    
}
///处理变量定义语句,decalration转换为instruction
fn parse_declaration2nhwc(ast_tree:&AstTree,decl_node:u32,symbol_table:&SymbolTable,scope_tree:&ScopeTree,mut et_tree:&mut EtTree,ast2scope:&HashMap<u32,u32>){
    let vartype = find!(rule RULE_declarationSpecifiers at decl_node in ast_tree).unwrap();
    let var_valuelist = find!(rule RULE_initDeclaratorList at decl_node in ast_tree).unwrap();
    let var_values: Vec<u32> = find_nodes!(rule RULE_initDeclarator at var_valuelist in ast_tree);
    for var_value in var_values {
        let scope_decl_node = ast2scope.get(&decl_node);
        match scope_decl_node{
            Some(scope_decl) =>{
                let et_root = process_any_stmt(et_tree,ast_tree,scope_tree,decl_node,*scope_decl);

            },
            None =>{
                panic!("ast2scope表中没有找到该astnode")
            }
        }
        
    }
    
}
fn parse_for2nhwc(){
    
}
fn parse_while2nhwc(){
    
}
fn parse_func2nhwc(){

}

/// 由于cfg 里面包含了其他的一些块和边，例如 branch 块和 after conditioned边
/// 因此我们需要再做一次转化，把边转化成相应的跳转或者调整代码，把所有node 都转化成BasicBlock
fn parse_cfg_into_nhwc_cfg(context :&mut Context){
    let (cfg_graph,scope_tree,ast_tree,symbol_table,et_tree,ast2scope)= (&mut context.cfg_graph , &mut context.scope_tree,&mut context.ast_tree,&mut context.symtab,&mut context.et_tree,&context.ast2scope);

    let start_node: NodeIndex<u32> = NodeIndex::new(0);
    //先遍历一遍函数名，将函数名加入到符号表中
    for cfg_entry in cfg_graph.neighbors(start_node){
        if let Some(CfgNode::Entry { ast_node, text, calls_in_func }) = cfg_graph.node_weight(cfg_entry){
            //查找函数名称所在节点
            let ast_fun = *ast_node;
            let ast_funame = find!(rule RULE_declarator then RULE_directDeclarator finally RULE_directDeclarator at ast_fun in ast_tree).unwrap();

            //获取函数名称
            let fun_name = &node!(at ast_funame in ast_tree).text;

            //添加到符号表中
            let fun_symbol = Symbol::new(cfg_entry.index() as u32, fun_name.to_string());
            symbol_table.add(fun_symbol);
        }else{
            panic!("entry不是函数签名，cfg出错");
        }
    }
    //再遍历一遍entry，对于每个函数做dfs
    for cfg_entry in cfg_graph.neighbors(start_node){
        let mut dfs = Dfs::new(&*cfg_graph,start_node);
        while let Some(node) = dfs.next(&*cfg_graph) {
        match cfg_graph.node_weight(node){
            Some(CfgNode::Branch { ast_expr_node, text }) =>{

            },
            Some(CfgNode::Switch { ast_expr_node, text }) =>{

            },
            Some(CfgNode::ForLoop { ast_before_node, ast_mid_node, ast_after_node, text })=>{

            },
            Some(CfgNode::WhileLoop { ast_expr_node, text })=>{

            },
            Some(CfgNode::BasicBlock { ast_nodes, text, instrs })=>{
                for astnode in ast_nodes{
                    let astnode = *astnode;
                    match(rule_id!(at astnode in ast_tree),astnode){
                        (RULE_declaration,declaration_node)=>{
                            parse_declaration2nhwc(ast_tree, declaration_node, symbol_table, scope_tree,et_tree,ast2scope)            
                        },
                        (RULE_statement,statement_node)=>{

                        },
                        (_,_)=>{
                            panic!("bb中未知RULE，不是expr或stmt");
                        }
                    }
                }
            },
            Some(_) =>{},
            None => {},
        }
    }
    }
}