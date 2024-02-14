use std::borrow::Borrow;

use petgraph::stable_graph::NodeIndex;

use crate::toolkit::ast_node::AstTree;

use crate::toolkit::gen_cfg::process_iteration;
use crate::toolkit::scope_node;
use crate::{add_edge, add_node, direct_edge, direct_node, find_nodes_by_dfs, node_mut, rule_id, RULE_compoundStatement, RULE_functionDefinition};
use crate::antlr_parser::cparser::{RULE_blockItem, RULE_blockItemList, RULE_declaration, RULE_declarator, RULE_directDeclarator, RULE_expression, RULE_expressionStatement, RULE_ifSelection, RULE_initDeclarator, RULE_initDeclaratorList, RULE_iterationStatement, RULE_parameterDeclaration, RULE_parameterTypeList, RULE_selectionStatement, RULE_statement, RULE_switchSelection, RULE_translationUnit
};
use crate::{find,find_nodes,node};

use super::context::Context;
use super::scope_node::{ScopeNode, ScopeTree};

///将函数名添加进scopetree，返回参数列表的u32和处理后要和下一部分衔接的u32
pub fn process_function(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_function_node:u32) -> u32{
    //将函数名存进scopetree
    let scope_function_struct = ScopeNode{ast_node:current_function_node,text:String::new()};
    let scope_function_node = add_node!(scope_function_struct to scope_tree);
    add_edge!(from scope_parent to scope_function_node in scope_tree);
    //处理函数中的参数列表
    let ast_directdeclarator = find!(rule RULE_declarator finally RULE_directDeclarator  at current_function_node in ast_tree).unwrap();
    let ast_parameter_list = find!(rule RULE_parameterTypeList at ast_directdeclarator in ast_tree);
    match ast_parameter_list {
        Some(ast_paramenter_list) => {
            let scope_paramenter_struct = ScopeNode{ast_node:ast_paramenter_list,text:String::new()};
            let scope_paramenter_node = add_node!(scope_paramenter_struct to scope_tree);
            add_edge!(from scope_function_node to scope_paramenter_node in scope_tree);
            return scope_function_node
        }
        None => {return scope_function_node},
    }
}

pub fn scope_process_statement(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_compound_node:u32) {

}

pub fn scope_process_selection(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_compound_node:u32){
    let ast_selection_node = direct_node!(at current_compound_node in ast_tree);
    match(rule_id!(at ast_selection_node in ast_tree),ast_selection_node){
        (RULE_ifSelection,ast_if_node) => {
            let scope_if_struct = ScopeNode{ast_node:ast_if_node,text:String::new()};
            let scope_if_node = add_node!(scope_if_struct to scope_tree);
            scope_process_if(scope_tree,ast_tree,scope_if_node,ast_if_node)
        }
        (RULE_switchSelection,ast_switch_node) =>{

        }
        (_,_) => {
            panic!("该选择分支不是if或switch");
        }
    }
}

pub fn scope_process_if(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_compound_node:u32){
    let if_expression_node = find!(rule RULE_expression at current_compound_node in ast_tree).unwrap();
    let scope_if_expression_struct = ScopeNode{ast_node:if_expression_node,text:String::new()};
    let scope_if_expression_node = add_node!(scope_if_expression_struct to scope_tree);
    add_edge!(from scope_parent to scope_if_expression_node in scope_tree);
    let if_statement_nodes:Vec<u32> = find_nodes!(rule RULE_statement at current_compound_node in ast_tree);
    for if_statement_node in if_statement_nodes{
        let statement_nextnode = direct_node!(at if_statement_node in ast_tree);
        match(rule_id!(at statement_nextnode in ast_tree),statement_nextnode){
            (RULE_compoundStatement,compound_node) => {
                let scope_compound_struct = ScopeNode{ast_node:compound_node,text:String::new()};
                let scope_compound_node = add_node!(scope_compound_struct to scope_tree);
                add_edge!(from scope_parent to scope_compound_node in scope_tree);
                scope_process_compound(scope_tree, ast_tree, scope_compound_node, compound_node)
            }
            (RULE_iterationStatement,iteration_node) => {
                let scope_iteration_struct = ScopeNode{ast_node:iteration_node,text:String::new()};
                let scope_iteration_node = add_node!(scope_iteration_struct to scope_tree);
                add_edge!(from scope_parent to scope_iteration_node in scope_tree);
                scope_process_iteration(scope_tree, ast_tree, scope_iteration_node, iteration_node)
            }
            (RULE_selectionStatement,selection_node) => {
                let scope_selection_struct = ScopeNode{ast_node:selection_node,text:String::new()};
                let scope_selection_node = add_node!(scope_selection_struct to scope_tree);
                add_edge!(from scope_parent to scope_selection_node in scope_tree);
                scope_process_selection(scope_tree, ast_tree, scope_selection_node, selection_node)
            }
            (_,_) => {}
        }
    }
}

pub fn scope_process_switch(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_compound_node:u32){

}

pub fn scope_process_iteration(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_compound_node:u32){

}

pub fn scope_process_while(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_compound_node:u32){

}

pub fn scope_process_for(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_compound_node:u32){

}

pub fn scope_process_compound(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_compound_node:u32){
    //处理函数体的declaration和statement
    let ast_block_nodes:Vec<u32> = find_nodes!(rule RULE_blockItemList finally RULE_blockItem at current_compound_node in ast_tree);
    for ast_block_node in ast_block_nodes{
        let block_nextnode = direct_node!(at ast_block_node in ast_tree);
        //将declaration和statement不做区分直接做成节点
        let scope_dec_or_sta_struct = ScopeNode{ast_node:block_nextnode,text:String::new()};
        let scope_dec_or_sta_node = add_node!(scope_dec_or_sta_struct to scope_tree);
        add_edge!(from scope_parent to scope_dec_or_sta_node in scope_tree);
        //处理statement后的分支语句
        let ast_branch_node = direct_node!(at block_nextnode in ast_tree);
        match(rule_id!(at ast_branch_node in ast_tree),ast_branch_node){
            (RULE_selectionStatement,selection_node) => {

            }
            (RULE_iterationStatement,iteration_node) => {

            }
            (_,_) => {},
        }

        match(rule_id!(at block_nextnode in ast_tree),block_nextnode){
            (RULE_declaration,ast_declaration_node) => {
                let scope_declaration_struct = ScopeNode{ast_node:ast_declaration_node,text:String::new()};
                let scope_declaration_node = add_node!(scope_declaration_struct to scope_tree);
                add_edge!(from scope_parent to scope_declaration_node in scope_tree);
            }
            (RULE_statement,ast_statement_node) => {
                let statement_nextnode = direct_node!(at ast_statement_node in ast_tree);
                //处理compoundstatement和其余情况
                match(rule_id!(at statement_nextnode in ast_tree),statement_nextnode){
                    (RULE_compoundStatement,ast_compoundstatement_node) => {
                        let scope_compound_struct = ScopeNode{ast_node:ast_compoundstatement_node,text:String::new()};
                        let scope_compound_node = add_node!(scope_compound_struct to scope_tree);
                        add_edge!(from scope_parent to scope_compound_node in scope_tree);
                        scope_process_compound(scope_tree, ast_tree,scope_compound_node, ast_compoundstatement_node)
                    }
                    (_,_) => {
                        let other_struct = ScopeNode{ast_node:statement_nextnode,text:String::new()};
                        let other_node = add_node!(other_struct to scope_tree);
                        add_edge!(from scope_parent to other_node in scope_tree);
                    }
                }
            }
            (_,_) => {
                panic!("该节点不属于declaration或statement");
            }
        }
    }
}

pub fn parse_ast_to_scope(context:&mut Context){
    let scope_tree = &mut context.scope_tree;
    let ast_tree = &context.ast_tree;
    //找到ast的unit节点，将其创建scopetree的根节点
    let ast_root: u32 = 0;
    let unit_node = direct_node!( at ast_root in ast_tree);
    let scope_tree_root  =  ScopeNode{ast_node:unit_node,text:String::new()};
    let scope_func_parent_node = add_node!(scope_tree_root to scope_tree);

    //从ast根节点找函数名节点
    let ast_function_nodes:Vec<u32> = find_nodes_by_dfs!(rule RULE_functionDefinition at unit_node in ast_tree);
    
    //处理函数体内容
    for ast_function_node in ast_function_nodes{
        //处理函数签名部分
        let scope_compound_parent= process_function(scope_tree, ast_tree,scope_func_parent_node, ast_function_node);
        
        //处理函数体内部分
        let ast_compound_node = find!(rule RULE_compoundStatement at ast_function_node in ast_tree).unwrap();
        scope_process_compound(scope_tree, ast_tree, scope_compound_parent, ast_compound_node)
    }
}