use petgraph::stable_graph::NodeIndex;

use crate::toolkit::ast_node::AstTree;

use crate::{add_edge, add_node, direct_node, find_nodes_by_dfs, node_mut, rule_id, RULE_compoundStatement, RULE_functionDefinition};
use crate::antlr_parser::cparser::{RULE_blockItem, RULE_blockItemList, RULE_declaration, RULE_declarator, RULE_directDeclarator,RULE_initDeclarator, RULE_initDeclaratorList,RULE_parameterDeclaration, RULE_parameterTypeList,RULE_statement,
};
use crate::{find,find_nodes,node};

use super::context::Context;
use super::scope_node::{ScopeNode, ScopeTree};

///将函数名添加进scopetree，返回参数列表的vec
pub fn process_function_to_scope(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_head:u32,current_compound_node:u32) -> (Vec<u32>,u32){
    //创建一个vec，用于接受函数参数以及返回
    let mut function_parameter_list: Vec<u32> = vec![];

    //找函数名存进scopetree
    let declarator_node = find!(rule RULE_declarator at current_compound_node in ast_tree).unwrap();
    let direct_declarator_node = direct_node!(at declarator_node in ast_tree);
    let function_name_node = find!(rule RULE_directDeclarator at direct_declarator_node in ast_tree).unwrap();
    let scope_function_struct = ScopeNode{ast_nodes:vec![function_name_node],text:String::new()};
    let scope_function_node = add_node!(scope_function_struct to scope_tree);
    add_edge!( from scope_head to scope_function_node in scope_tree);

    //将参数列表返回
    let parameter_typelist = find!(rule RULE_parameterTypeList at direct_declarator_node in ast_tree);
    match parameter_typelist {
        Some(parameter_list) =>{
            let parameter_list_node = direct_node!(at parameter_list in ast_tree);
            let paramenter_nodes:Vec<u32> = find_nodes!(rule RULE_parameterDeclaration at parameter_list_node in ast_tree);
            for parameter_node in paramenter_nodes{
            let parameter = find!(rule RULE_declarator at parameter_node in ast_tree).unwrap();
            function_parameter_list.push(parameter);
            }
        }
        None =>{},
    }
    (function_parameter_list,scope_function_node)
}

pub fn process_compound_to_scope(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_head:u32,current_compound_node:u32,compound_stack: Vec<u32>){
    //将传入的vec做成节点
    let scope_compound_struct = ScopeNode{ast_nodes:compound_stack,text:String::new()};
    let scope_compound_node = add_node!(scope_compound_struct to scope_tree);
    add_edge!(from current_compound_node to scope_compound_node in scope_tree);

    //处理打括号内部的变量      
    let blockitemlist_node = find!(rule RULE_blockItemList at current_compound_node in ast_tree).unwrap();
    let blockitem_nodes:Vec<u32> = find_nodes!(rule RULE_blockItem at blockitemlist_node in ast_tree);
    for blockitem_node in blockitem_nodes{
        let blockitem_nextnode = direct_node!(at blockitem_node in ast_tree);
        match(rule_id!(at blockitem_nextnode in ast_tree),blockitem_nextnode){
            (RULE_declaration,declaration_node) => {
                let initdeclarator_list = find!(rule RULE_initDeclaratorList at declaration_node in ast_tree).unwrap();
                let initdeclarator_nodes:Vec<u32> = find_nodes!(rule RULE_initDeclarator at initdeclarator_list in ast_tree);
                for initdeclarator in initdeclarator_nodes{
                    let declarator_node = find!(rule RULE_declarator at initdeclarator in ast_tree).unwrap();
                    node_mut!(at scope_compound_node in scope_tree).ast_nodes.push(declarator_node);
                }
            }
            (RULE_statement,statement_node) => {
                let statement_nextnode = direct_node!(at statement_node in ast_tree);
                match(rule_id!(at statement_nextnode in ast_tree),statement_nextnode){
                    (RULE_compoundStatement,compoundstatement_node) => {
                        process_compound_to_scope(scope_tree, ast_tree, scope_compound_node, compoundstatement_node, vec![])
                    }
                    (_,_) => {},
                }
            }
            (_,_) => {
                panic!("不属于declaration或statement");
            }
        }
    }
}

pub fn parse_ast_to_scope(context:&mut Context){
    let scope_tree = &mut context.scope_tree;
    let ast_tree = &context.ast_tree;
    //创建scopetree的根节点
    let scope_tree_root  =  ScopeNode{ast_nodes:vec![],text:String::new()};
    // 为每一个function 创建一个共享的根节点
    let scope_func_parent_node = add_node!(scope_tree_root to scope_tree);

    //从ast根节点找函数名节点
    let ast_root: u32 = 0;
    let funcdef_nodes:Vec<u32> = find_nodes_by_dfs!( rule RULE_functionDefinition at ast_root in ast_tree);
    //处理函数体内容
    for ast_function_node in funcdef_nodes{
        //处理函数签名部分
        let (scope_compound_stack,scope_function_node) = process_function_to_scope(scope_tree, ast_tree,scope_func_parent_node, ast_function_node);
        
        //处理函数体内部分
        let ast_compound_node = find!(rule RULE_compoundStatement at ast_function_node in ast_tree).unwrap();
        process_compound_to_scope(scope_tree, ast_tree, scope_function_node, ast_compound_node, scope_compound_stack)
    }
}