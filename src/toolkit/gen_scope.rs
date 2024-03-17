use std::collections::HashMap;

use petgraph::stable_graph::NodeIndex;

use crate::toolkit::ast_node::AstTree;

use crate::{add_node, direct_node, find_nodes_by_dfs, rule_id, add_node_with_edge,RULE_compoundStatement, RULE_functionDefinition};
use crate::antlr_parser::cparser::{RULE_assignmentExpression, RULE_blockItem, RULE_blockItemList, RULE_constantExpression, RULE_declaration, RULE_declarator, RULE_directDeclarator, RULE_expression, RULE_expressionStatement, RULE_forAfterExpression, RULE_forBeforeExpression, RULE_forCondition, RULE_forIterationStatement, RULE_forMidExpression, RULE_ifSelection, RULE_initDeclarator, RULE_initDeclaratorList, RULE_iterationStatement, RULE_jumpStatement, RULE_labeledStatement, RULE_parameterTypeList, RULE_selectionStatement, RULE_statement, RULE_switchSelection, RULE_whileIterationStatement
};
use crate::{find,find_nodes,node};

use super::context::Context;
use super::scope_node::{ScopeNode, ScopeTree};

///将函数名添加进scopetree，返回下一部分衔接的u32
pub fn process_function(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_function_node:u32,ast2scope:&mut HashMap<u32,u32>) -> u32{
    //将函数名存进scopetree
    let scope_function_node = add_node_with_edge!({ScopeNode{ast_node:current_function_node,text:String::new(),parent:scope_parent}} from scope_parent in scope_tree);
    ast2scope.insert(current_function_node, scope_function_node);

    //处理函数中的参数列表
    let ast_directdeclarator = find!(rule RULE_declarator finally RULE_directDeclarator  at current_function_node in ast_tree).unwrap();
    let ast_parameter_list = find!(rule RULE_parameterTypeList at ast_directdeclarator in ast_tree);
    match ast_parameter_list {
        Some(ast_paramenter_list) => {
            let scope_para = add_node_with_edge!({ScopeNode{ast_node:ast_paramenter_list,text:String::new(),parent:scope_function_node}} from scope_function_node in scope_tree);
            ast2scope.insert(ast_paramenter_list, scope_para);
        }
        None => {},
    }
    scope_function_node
}

///处理多种statement的情况
pub fn process_statement(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_statement_node:u32,ast2scope:&mut HashMap<u32,u32>) {
    let statement_nextnode = direct_node!(at current_statement_node in ast_tree);
    match(rule_id!(at statement_nextnode in ast_tree),statement_nextnode){
        (RULE_compoundStatement,compound_node) => {
            process_compound(scope_tree, ast_tree, scope_parent, compound_node,ast2scope)
        }
        (RULE_iterationStatement,iteration_node) => {
            process_iteration(scope_tree, ast_tree, scope_parent, iteration_node,ast2scope)
        }
        (RULE_selectionStatement,selection_node) => {
            process_selection(scope_tree, ast_tree, scope_parent, selection_node,ast2scope)
        }
        (RULE_expressionStatement,expressionstatment_node) => {
            let scope_expr = add_node_with_edge!({ScopeNode{ast_node:expressionstatment_node,text:String::new(),parent:scope_parent}} from scope_parent in scope_tree);
                ast2scope.insert(expressionstatment_node, scope_expr);
        }
        (RULE_labeledStatement,label_node) => {
            let scope_label_node = add_node_with_edge!({ScopeNode{ast_node:label_node,text:String::new(),parent:scope_parent}} from scope_parent in scope_tree);
            ast2scope.insert(label_node, scope_label_node);

            //处理label下面的内容
            let constant_node = find!(rule RULE_constantExpression at label_node in ast_tree);
            match constant_node{
                Some(ast_constant_node) => {
                    let scope_constant = add_node_with_edge!({ScopeNode{ast_node:ast_constant_node,text:String::new(),parent:scope_label_node}} from scope_label_node in scope_tree);
                    ast2scope.insert(ast_constant_node, scope_constant);
                }
                None => {}
            }
            let label_statment = find!(rule RULE_statement at label_node in ast_tree).unwrap();
            let scope_lb_stmt = add_node_with_edge!({ScopeNode{ast_node:label_statment,text:String::new(),parent:scope_label_node}} from scope_label_node in scope_tree);
            ast2scope.insert(label_statment, scope_lb_stmt);
        }
        (RULE_jumpStatement,jump_node) =>{
            let scope_jump = add_node_with_edge!({ScopeNode{ast_node:jump_node,text:String::new(),parent:scope_parent}} from scope_parent in scope_tree);
            ast2scope.insert(jump_node, scope_jump);
        }
        (_,_) => {
            panic!("statment下未知节点，ast出错")
        }
    }
}

///处理选择分支，下分if和switch
pub fn process_selection(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_selection_node:u32,ast2scope:&mut HashMap<u32,u32>){
    let ast_selection_node = direct_node!(at current_selection_node in ast_tree);
    match(rule_id!(at ast_selection_node in ast_tree),ast_selection_node){
        (RULE_ifSelection,ast_if_node) => {
            process_if(scope_tree,ast_tree,scope_parent,ast_if_node,ast2scope)
        }
        (RULE_switchSelection,ast_switch_node) =>{
            process_switch(scope_tree, ast_tree, scope_parent, ast_switch_node,ast2scope)
        }
        (_,_) => {
            panic!("该选择分支不是if或switch");
        }
    }
}

///处理if情况
pub fn process_if(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_if_node:u32,ast2scope:&mut HashMap<u32,u32>){
    let scope_if_node = add_node_with_edge!({ScopeNode{ast_node:current_if_node,text:String::new(),parent:scope_parent}} from scope_parent in scope_tree);
    ast2scope.insert(current_if_node, scope_if_node);
    
    let if_expression_node = find!(rule RULE_expression at current_if_node in ast_tree).unwrap();
    let scope_if_expr = add_node_with_edge!({ScopeNode{ast_node:if_expression_node,text:String::new(),parent:scope_if_node}} from scope_if_node in scope_tree);
    ast2scope.insert(if_expression_node, scope_if_expr);

    let if_statement_nodes:Vec<u32> = find_nodes!(rule RULE_statement at current_if_node in ast_tree);
    for if_statement_node in if_statement_nodes{
        process_statement(scope_tree, ast_tree, scope_if_node,if_statement_node,ast2scope);
    }
}

///处理switch情况
pub fn process_switch(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_switch_node:u32,ast2scope:&mut HashMap<u32,u32>){
    let scope_switch_node = add_node_with_edge!({ScopeNode{ast_node:current_switch_node,text:String::new(),parent:scope_parent}} from scope_parent in scope_tree);
    ast2scope.insert(current_switch_node, scope_switch_node);

    //处理表达式节点
    let switch_expression = find!(rule RULE_expression at current_switch_node in ast_tree).unwrap();
    let scope_sw_expr = add_node_with_edge!({ScopeNode{ast_node:switch_expression,text:String::new(),parent:scope_switch_node}} from scope_switch_node in scope_tree);
    ast2scope.insert(switch_expression, scope_sw_expr);

    //处理statement节点
    let switch_statement = find!(rule RULE_statement at current_switch_node in ast_tree).unwrap();
    let switch_compound = direct_node!(at switch_statement in ast_tree);
    process_compound(scope_tree, ast_tree, scope_switch_node, switch_compound,ast2scope)
}

//处理循环结构，下分for和while
pub fn process_iteration(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_iteration_node:u32,ast2scope:&mut HashMap<u32,u32>){
    let iteration_nextnode = direct_node!(at current_iteration_node in ast_tree);
    match(rule_id!(at iteration_nextnode in ast_tree),iteration_nextnode){
        (RULE_forIterationStatement,ast_for_node) =>{
            process_for(scope_tree, ast_tree, scope_parent, ast_for_node,ast2scope)
        }
        (RULE_whileIterationStatement,ast_while_node) =>{
            process_while(scope_tree, ast_tree, scope_parent, ast_while_node,ast2scope)
        }
        (_,_) =>{
            panic!("不属于for或while的循环结构")
        }
    }
}

///处理while循环
pub fn process_while(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_while_node:u32,ast2scope:&mut HashMap<u32,u32>){
    let scope_while_node = add_node_with_edge!({ScopeNode{ast_node:current_while_node,text:String::new(),parent:scope_parent}} from scope_parent in scope_tree);
    ast2scope.insert(current_while_node, scope_while_node);

    let while_expression = find!(rule RULE_expression at current_while_node in ast_tree).unwrap();
    let scope_while_expr = add_node_with_edge!({ScopeNode{ast_node:while_expression,text:String::new(),parent:scope_while_node}} from scope_while_node in scope_tree);
    ast2scope.insert(while_expression, scope_while_expr);

    let while_statment = find!(rule RULE_statement at current_while_node in ast_tree).unwrap();
    let compound_node = direct_node!(at while_statment in ast_tree);
    process_compound(scope_tree, ast_tree,scope_while_node,compound_node,ast2scope)
}

///处理for循环
pub fn process_for(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_for_node:u32,ast2scope:&mut HashMap<u32,u32>){
    let scope_for_node = add_node_with_edge!({ScopeNode{ast_node:current_for_node,text:String::new(),parent:scope_parent}} from scope_parent in scope_tree);
    ast2scope.insert(current_for_node, scope_for_node);

    let for_condition = find!(rule RULE_forCondition at current_for_node in ast_tree).unwrap();
    let for_before_node = find!(rule RULE_forBeforeExpression at for_condition in ast_tree).unwrap();
    let scope_for_before = add_node_with_edge!({ScopeNode{ast_node:for_before_node,text:String::new(),parent:scope_for_node}} from scope_for_node in scope_tree);
    ast2scope.insert(for_before_node, scope_for_before);

    let for_mid_node = find!(rule RULE_forMidExpression at for_condition in ast_tree).unwrap();
    let scope_for_mid = add_node_with_edge!({ScopeNode{ast_node:for_mid_node,text:String::new(),parent:scope_for_node}} from scope_for_node in scope_tree);
    ast2scope.insert(for_mid_node, scope_for_mid);

    let for_after_node = find!(rule RULE_forAfterExpression at for_condition in ast_tree).unwrap();
    let scope_for_after = add_node_with_edge!({ScopeNode{ast_node:for_after_node,text:String::new(),parent:scope_for_node}} from scope_for_node in scope_tree);
    ast2scope.insert(for_after_node, scope_for_after);

    let for_statement_node = find!(rule RULE_statement at current_for_node in ast_tree).unwrap();
    let for_compound_node = direct_node!(at for_statement_node in ast_tree);
    process_compound(scope_tree, ast_tree, scope_for_node, for_compound_node,ast2scope)
    
}

///处理compound部分，分为函数和switch不需要列出该节点和其他需要列出该节点两种情况
pub fn process_compound(scope_tree:&mut ScopeTree,ast_tree:&AstTree,scope_parent:u32,current_compound_node:u32,ast2scope:&mut HashMap<u32,u32>){
    let scope_compound_node = add_node_with_edge!({ScopeNode{ast_node:current_compound_node,text:String::new(),parent:scope_parent}} from scope_parent in scope_tree);
    ast2scope.insert(current_compound_node, scope_compound_node);

    //处理函数体的declaration和statement
    let ast_block_nodes:Vec<u32> = find_nodes!(rule RULE_blockItemList finally RULE_blockItem at current_compound_node in ast_tree);
    for ast_block_node in ast_block_nodes{
        let block_nextnode = direct_node!(at ast_block_node in ast_tree);

        //处理declaration或statement
        match (rule_id!(at block_nextnode in ast_tree),block_nextnode){
            (RULE_statement,statement_node) => {
                process_statement(scope_tree, ast_tree, scope_compound_node, statement_node,ast2scope);
            }
            (RULE_declaration,declaration_node) => {
                let scope_decl = add_node_with_edge!({ScopeNode{ast_node:declaration_node,text:String::new(),parent:scope_compound_node}} from scope_compound_node in scope_tree);
                    ast2scope.insert(declaration_node, scope_decl);
            }
            (_,_) => {
                panic!("不属于declaration或statement,ast出错");
            }
        }
    }
}


pub fn parse_ast_to_scope(context:&mut Context){
    let scope_tree = &mut context.scope_tree;
    let ast_tree = &context.ast_tree;
    let ast2scope = &mut context.ast2scope;
    //找到ast的unit节点，将其创建scopetree的根节点
    let ast_root: u32 = 0;
    let unit_node = direct_node!( at ast_root in ast_tree);
    let scope_tree_root  =  ScopeNode{ast_node:unit_node,text:String::new(),parent:0};
    let scope_func_parent_node = add_node!(scope_tree_root to scope_tree);
    ast2scope.insert(unit_node, scope_func_parent_node);

    //从ast根节点找函数名节点
    let ast_function_nodes:Vec<u32> = find_nodes_by_dfs!(rule RULE_functionDefinition at unit_node in ast_tree);
    
    //处理函数体内容
    for ast_function_node in ast_function_nodes{
        //处理函数签名部分
        let scope_compound_parent= process_function(scope_tree, ast_tree,scope_func_parent_node, ast_function_node,ast2scope);
        
        //处理函数体内部分
        let ast_compound_node = find!(rule RULE_compoundStatement at ast_function_node in ast_tree).unwrap();
        process_compound(scope_tree, ast_tree, scope_compound_parent, ast_compound_node,ast2scope);
    }
}