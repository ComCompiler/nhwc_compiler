
use ahash::HashMap;

use crate::toolkit::ast_node::AstTree;

use crate::antlr_parser::cparser::{
    RULE_blockItem, RULE_blockItemList, RULE_breakpointStatement, RULE_constantExpression, RULE_declaration, RULE_declarator, RULE_directDeclarator, RULE_expression, RULE_expressionStatement, RULE_forAfterExpression, RULE_forBeforeExpression, RULE_forCondition, RULE_forIterationStatement, RULE_forMidExpression, RULE_ifSelection, RULE_iterationStatement, RULE_jumpStatement, RULE_labeledStatement, RULE_parameterTypeList, RULE_selectionStatement, RULE_statement, RULE_switchSelection, RULE_whileIterationStatement
};
use crate::{add_node, add_node_with_edge, debug_info_red, debug_info_yellow, direct_child_node, direct_child_nodes, direct_parent_node, rule_id, RULE_compoundStatement, RULE_functionDefinition};
use crate::{find, find_nodes, node};

use super::cfg_node::{CfgGraph};

use super::scope_node::{ScopeNode, ScopeTree, ScopeType};

///将函数名添加进scopetree，返回下一部分衔接的u32
pub fn process_function(scope_tree:&mut ScopeTree, ast_tree:&AstTree, scope_parent:u32, current_function_ast_node:u32, ast2scope:&mut HashMap<u32, u32>) -> u32 {
    //将函数名存进scopetree
    let scope_function_node = add_node_with_edge!({ScopeNode{ast_node:current_function_ast_node,op_text:None,scope_type:ScopeType::Func,loop_level:0}} from scope_parent in scope_tree);
    ast2scope.insert(current_function_ast_node, scope_function_node);

    //处理函数中的参数列表
    let ast_directdeclarator = find!(rule RULE_declarator finally RULE_directDeclarator  at current_function_ast_node in ast_tree).unwrap();
    let ast_parameter_list = find!(rule RULE_parameterTypeList at ast_directdeclarator in ast_tree);
    match ast_parameter_list {
        Some(ast_paramenter_list) => {
            let scope_para =
                add_node_with_edge!({ScopeNode{ast_node:ast_paramenter_list,op_text:None,scope_type:ScopeType::Terminal,loop_level:0}} from scope_function_node in scope_tree);
            debug_info_yellow!("scope node of parameter is {}",scope_function_node);
            ast2scope.insert(ast_paramenter_list, scope_para);
        }
        None => {}
    }
    scope_function_node
}

///处理多种statement的情况
pub fn process_statement(scope_tree:&mut ScopeTree, ast_tree:&AstTree, scope_parent:u32, current_statement_node:u32, ast2scope:&mut HashMap<u32, u32>) {
    let loop_level = node!(at scope_parent in scope_tree).loop_level;
    let statement_nextnode = node!(at current_statement_node in ast_tree).child_vec[0];
    match (rule_id!(at statement_nextnode in ast_tree), statement_nextnode) {
        (RULE_compoundStatement, compound_node) => process_compound(scope_tree, ast_tree, scope_parent, compound_node, ast2scope),
        (RULE_iterationStatement, iteration_node) => process_iteration(scope_tree, ast_tree, scope_parent, iteration_node, ast2scope),
        (RULE_selectionStatement, selection_node) => process_selection(scope_tree, ast_tree, scope_parent, selection_node, ast2scope),
        (RULE_expressionStatement, expressionstatment_node) => {
            let scope_expr = add_node_with_edge!({ScopeNode{ast_node:expressionstatment_node,op_text:None,scope_type:ScopeType::Terminal,loop_level}} from scope_parent in scope_tree);
            ast2scope.insert(expressionstatment_node, scope_expr);
        }
        (RULE_labeledStatement, label_node) => {
            let scope_label_node = add_node_with_edge!({ScopeNode{ast_node:label_node,op_text:None,scope_type:ScopeType::Case,loop_level}} from scope_parent in scope_tree);
            ast2scope.insert(label_node, scope_label_node);

            //处理label下面的内容
            let constant_node = find!(rule RULE_constantExpression at label_node in ast_tree);
            match constant_node {
                Some(ast_constant_node) => {
                    let scope_constant =
                        add_node_with_edge!({ScopeNode{ast_node:ast_constant_node,op_text:None,scope_type:ScopeType::Terminal,loop_level}} from scope_label_node in scope_tree);
                    ast2scope.insert(ast_constant_node, scope_constant);
                }
                None => {}
            }
            let label_statment = find!(rule RULE_statement at label_node in ast_tree).unwrap();
            let scope_label_stmt =
                add_node_with_edge!({ScopeNode{ast_node:label_statment,op_text:None,scope_type:ScopeType::Terminal,loop_level}} from scope_label_node in scope_tree);
            ast2scope.insert(label_statment, scope_label_stmt);
        }
        (RULE_jumpStatement, jump_node) => {
            let scope_jump = add_node_with_edge!({ScopeNode{ast_node:jump_node,op_text:None,scope_type:ScopeType::Terminal,loop_level}} from scope_parent in scope_tree);
            ast2scope.insert(jump_node, scope_jump);
        }
        (RULE_breakpointStatement, breakpoint_node) => {
            let scope_breakpoint = add_node_with_edge!({ScopeNode{ast_node:breakpoint_node,op_text:None,scope_type:ScopeType::Terminal,loop_level}} from scope_parent in scope_tree);
            ast2scope.insert(breakpoint_node, scope_breakpoint);
        }
        (_, _) => {
            panic!("statment下未知节点，ast出错")
        }
    }
}

///处理选择分支，下分if和switch
pub fn process_selection(scope_tree:&mut ScopeTree, ast_tree:&AstTree, scope_parent:u32, current_selection_node:u32, ast2scope:&mut HashMap<u32, u32>) {
    let ast_selection_node = node!(at current_selection_node in ast_tree).child_vec[0];
    match (rule_id!(at ast_selection_node in ast_tree), ast_selection_node) {
        (RULE_ifSelection, ast_if_node) => process_if(scope_tree, ast_tree, scope_parent, ast_if_node, ast2scope),
        (RULE_switchSelection, ast_switch_node) => process_switch(scope_tree, ast_tree, scope_parent, ast_switch_node, ast2scope),
        (_, _) => {
            panic!("该选择分支不是if或switch");
        }
    }
}

///处理if情况
pub fn process_if(scope_tree:&mut ScopeTree, ast_tree:&AstTree, scope_parent:u32, current_if_node:u32, ast2scope:&mut HashMap<u32, u32>) {
    let loop_level = node!(at scope_parent in scope_tree).loop_level;
    let scope_if_node = add_node_with_edge!({ScopeNode{ast_node:current_if_node,op_text:None,scope_type:ScopeType::If,loop_level}} from scope_parent in scope_tree);
    ast2scope.insert(current_if_node, scope_if_node);

    let if_expression_node = find!(rule RULE_expression at current_if_node in ast_tree).unwrap();
    let scope_if_expr = add_node_with_edge!({ScopeNode{ast_node:if_expression_node,op_text:None,scope_type:ScopeType::Terminal,loop_level}} from scope_if_node in scope_tree);
    ast2scope.insert(if_expression_node, scope_if_expr);

    let if_statement_nodes:Vec<u32> = find_nodes!(rule RULE_statement at current_if_node in ast_tree);
    for if_statement_node in if_statement_nodes {
        process_statement(scope_tree, ast_tree, scope_if_node, if_statement_node, ast2scope);
    }
}

///处理switch情况
pub fn process_switch(scope_tree:&mut ScopeTree, ast_tree:&AstTree, scope_parent:u32, current_switch_node:u32, ast2scope:&mut HashMap<u32, u32>) {
    let loop_level = node!(at scope_parent in scope_tree).loop_level;
    let scope_switch_node = add_node_with_edge!({ScopeNode{ast_node:current_switch_node,op_text:None,scope_type:ScopeType::Switch,loop_level}} from scope_parent in scope_tree);
    ast2scope.insert(current_switch_node, scope_switch_node);

    //处理表达式节点
    let switch_expression = find!(rule RULE_expression at current_switch_node in ast_tree).unwrap();
    let scope_sw_expr = add_node_with_edge!({ScopeNode{ast_node:switch_expression,op_text:None,scope_type:ScopeType::Terminal,loop_level}} from scope_switch_node in scope_tree);
    ast2scope.insert(switch_expression, scope_sw_expr);

    //处理statement节点
    let switch_statement = find!(rule RULE_statement at current_switch_node in ast_tree).unwrap();
    let switch_compound = node!(at switch_statement in ast_tree).child_vec[0];
    process_compound(scope_tree, ast_tree, scope_switch_node, switch_compound, ast2scope)
}

//处理循环结构，下分for和whiles
pub fn process_iteration(scope_tree:&mut ScopeTree, ast_tree:&AstTree, scope_parent:u32, current_iteration_node:u32, ast2scope:&mut HashMap<u32, u32>) {
    let iteration_nextnode = node!(at current_iteration_node in ast_tree).child_vec[0];
    match (rule_id!(at iteration_nextnode in ast_tree), iteration_nextnode) {
        (RULE_forIterationStatement, ast_for_node) => process_for(scope_tree, ast_tree, scope_parent, ast_for_node, ast2scope),
        (RULE_whileIterationStatement, ast_while_node) => process_while(scope_tree, ast_tree, scope_parent, ast_while_node, ast2scope),
        (_, _) => {
            panic!("不属于for或while的循环结构")
        }
    }
}

///处理while循环
pub fn process_while(scope_tree:&mut ScopeTree, ast_tree:&AstTree, scope_parent:u32, current_while_node:u32, ast2scope:&mut HashMap<u32, u32>) {
    let loop_level = node!(at scope_parent in scope_tree).loop_level+1;
    let scope_while_node = add_node_with_edge!({ScopeNode{ast_node:current_while_node,op_text:None,scope_type:ScopeType::While { op_cfg_while_node: None },loop_level}} from scope_parent in scope_tree);
    ast2scope.insert(current_while_node, scope_while_node);

    let while_expression = find!(rule RULE_expression at current_while_node in ast_tree).unwrap();
    let scope_while_expr = add_node_with_edge!({ScopeNode{ast_node:while_expression,op_text:None,scope_type:ScopeType::Terminal,loop_level}} from scope_while_node in scope_tree);
    ast2scope.insert(while_expression, scope_while_expr);

    let while_statment = find!(rule RULE_statement at current_while_node in ast_tree).unwrap();
    let compound_node = node!(at while_statment in ast_tree).child_vec[0];
    if let Some(stmt) = find!(rule RULE_statement at current_while_node in ast_tree){
        // `for()i=i+3;`
        process_statement(scope_tree, ast_tree, scope_while_node, stmt, ast2scope);
    }else{
        let while_compound_node = find!(rule RULE_compoundStatement at current_while_node in ast_tree).unwrap();
        process_compound(scope_tree, ast_tree, scope_while_node, while_compound_node, ast2scope)
    }
}

///处理for循环
pub fn process_for(scope_tree:&mut ScopeTree, ast_tree:&AstTree, scope_parent:u32, current_for_node:u32, ast2scope:&mut HashMap<u32, u32>) {
    let loop_level = node!(at scope_parent in scope_tree).loop_level;
    let scope_for_node = add_node_with_edge!({ScopeNode{ast_node:current_for_node,op_text:None,scope_type:ScopeType::For,loop_level}} from scope_parent in scope_tree);
    ast2scope.insert(current_for_node, scope_for_node);

    let for_condition = find!(rule RULE_forCondition at current_for_node in ast_tree).unwrap();
    let for_before_node = find!(rule RULE_forBeforeExpression at for_condition in ast_tree).unwrap();
    let scope_for_before = add_node_with_edge!({ScopeNode{ast_node:for_before_node,op_text:None,scope_type:ScopeType::Terminal,loop_level}} from scope_for_node in scope_tree);
    ast2scope.insert(for_before_node, scope_for_before);

    let for_mid_node = find!(rule RULE_forMidExpression at for_condition in ast_tree).unwrap();
    let scope_for_mid = add_node_with_edge!({ScopeNode{ast_node:for_mid_node,op_text:None,scope_type:ScopeType::Terminal,loop_level}} from scope_for_node in scope_tree);
    ast2scope.insert(for_mid_node, scope_for_mid);

    let for_after_node = find!(rule RULE_forAfterExpression at for_condition in ast_tree).unwrap();
    let scope_for_after = add_node_with_edge!({ScopeNode{ast_node:for_after_node,op_text:None,scope_type:ScopeType::Terminal,loop_level}} from scope_for_node in scope_tree);
    ast2scope.insert(for_after_node, scope_for_after);

    let for_statement_node = find!(rule RULE_statement at current_for_node in ast_tree).unwrap();
    process_statement(scope_tree, ast_tree, scope_parent, for_statement_node, ast2scope);
}

///处理compound部分，分为函数和switch不需要列出该节点和其他需要列出该节点两种情况
pub fn process_compound(scope_tree:&mut ScopeTree, ast_tree:&AstTree, scope_parent:u32, current_compound_node:u32, ast2scope:&mut HashMap<u32, u32>) {
    let loop_level = node!(at scope_parent in scope_tree).loop_level;
    let scope_compound_node = add_node_with_edge!({ScopeNode{ast_node:current_compound_node,op_text:None,scope_type:ScopeType::Normal,loop_level}} from scope_parent in scope_tree);
    ast2scope.insert(current_compound_node, scope_compound_node);

    // debug_info_red!("current ast is {}", current_compound_node);
    //处理函数体的declaration和statement

    let ast_block_nodes:Vec<u32> = find_nodes!(rule RULE_blockItemList finally RULE_blockItem at current_compound_node in ast_tree);
    for ast_block_node in ast_block_nodes {
        let block_nextnode = node!(at ast_block_node in ast_tree).child_vec[0];

        //处理declaration或statement
        match (rule_id!(at block_nextnode in ast_tree), block_nextnode) {
            (RULE_statement, statement_node) => {
                process_statement(scope_tree, ast_tree, scope_compound_node, statement_node, ast2scope);
            }
            (RULE_declaration, declaration_node) => {
                let loop_level = node!(at scope_parent in scope_tree).loop_level;
                let scope_decl =
                    add_node_with_edge!({ScopeNode{ast_node:declaration_node,op_text:None,scope_type:ScopeType::Terminal,loop_level}} from scope_compound_node in scope_tree);
                ast2scope.insert(declaration_node, scope_decl);
            }
            (_, _) => {
                panic!("不属于declaration或statement,ast出错");
            }
        }
    }


}

pub fn parse_ast_to_scope(ast_tree:&AstTree,_cfg_graph:&CfgGraph,scope_tree:&mut ScopeTree,ast2scope:&mut HashMap<u32, u32>,) {
    let ast_root_node = 1;
    let static_nodes:&Vec<u32> = &node!(at ast_root_node in ast_tree).child_vec;
    let mut static_decl_nodes = vec![];
    let mut funcdef_nodes = vec![];
    for &static_node in static_nodes{
        let gloabl_ast_node = node!(at static_node in ast_tree).child_vec[0];
        match (rule_id!(at gloabl_ast_node in ast_tree),gloabl_ast_node){
            (RULE_declaration,static_decl_node) => {
                static_decl_nodes.push(static_decl_node);
            },
            (RULE_functionDefinition,funcdef_node) => {
                funcdef_nodes.push(funcdef_node)
            },
            (_,_) => {},
        }
    }
    let scope_tree_root = ScopeNode { ast_node:1, op_text:None, scope_type:ScopeType::Normal ,loop_level:0};
    let scope_func_parent_node = add_node!(scope_tree_root to scope_tree);
    ast2scope.insert(1, scope_func_parent_node);

    //处理静态decl
    for static_decl in static_decl_nodes{
        let st_node = add_node_with_edge!({ScopeNode{ast_node:static_decl,op_text:None,scope_type:ScopeType::Terminal,loop_level:0}} from scope_func_parent_node in scope_tree);
        ast2scope.insert(static_decl, st_node);
    }
    //处理函数体内容
    for func_ast in funcdef_nodes {
        //处理函数签名部分
        let scope_compound_parent = process_function(scope_tree, ast_tree, scope_func_parent_node, func_ast, ast2scope);

        //处理函数体内部分
        let ast_compound_node = find!(rule RULE_compoundStatement at func_ast in ast_tree).unwrap();
        process_compound(scope_tree, ast_tree, scope_compound_parent, ast_compound_node, ast2scope);
    }
}



pub fn get_while_scope_of_scope_node(scope_node:u32, scope_tree:&ScopeTree) -> u32{
    let mut scope_node = scope_node;
    while !node!(at scope_node in scope_tree).scope_type.is_while() {
        scope_node = direct_parent_node!(at scope_node in scope_tree);
    }
    scope_node
}