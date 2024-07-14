use std::panic;
use anyhow::*;
use petgraph::stable_graph::NodeIndex;
use petgraph::graph::Edge;

use crate::antlr_parser::clexer::{
    And, Arrow, Constant, Div, DivAssign, Dot, Equal, Greater, GreaterEqual, Identifier, LeftShift, Less, LessEqual, Minus, MinusAssign, MinusMinus, Mod, MulAssign, Not, NotEqual, Plus, PlusAssign, PlusPlus, RightShift, Star, StringLiteral, Tilde
};
use crate::antlr_parser::cparser::{
    Assign, Const, RULE_additiveExpression, RULE_andExpression, RULE_argumentExpressionList, RULE_assignmentExpression, RULE_assignmentOperator, RULE_castExpression, RULE_conditionalExpression, RULE_declaration, RULE_declarationSpecifier, RULE_declarationSpecifiers, RULE_declarator, RULE_directDeclarator, RULE_equalityExpression, RULE_exclusiveOrExpression, RULE_expression, RULE_expressionStatement, RULE_forAfterExpression, RULE_forBeforeExpression, RULE_forDeclaration, RULE_forMidExpression, RULE_inclusiveOrExpression, RULE_initDeclarator, RULE_initDeclaratorList, RULE_initializer, RULE_initializerList, RULE_logicalAndExpression, RULE_logicalOrExpression, RULE_multiplicativeExpression, RULE_parameterDeclaration, RULE_parameterList, RULE_parameterTypeList, RULE_postfixExpression, RULE_primaryExpression, RULE_relationalExpression, RULE_shiftExpression, RULE_typeName, RULE_typeQualifier, RULE_typeSpecifier, RULE_unaryExpression, RULE_unaryOperator
};

use crate::{add_edge, add_node, add_node_with_edge, debug_info_blue, debug_info_red, debug_info_yellow, direct_child_node, direct_child_nodes, find, find_nodes, node, rule_id, term_id};

use super::et_node::{DeclOrDefOrUse, EtEdgeType, EtNodeType, EtTree};
use super::etc::dfs;
use super::eval_et::{compress_et};
use super::gen_cfg::AST_ROOT;
use super::symtab::SymIdx;
use super::{ast_node::AstTree, scope_node::ScopeTree};

// pub fn compress_ast(ast_tree:&mut AstTree){
//     let dfs_nodes = dfs(ast_tree, AST_ROOT);
//     let mut op_compress_start_node = None;
//     for ast_node in dfs_nodes{
//         // start condition 
//         if ast_node % 300 == 0{
//             debug_info_blue!("ast_node {ast_node}");
//         }
//         if node!(at ast_node in ast_tree).child_vec.len()==1 && is_any_expr_inner_node(ast_tree, ast_node) && is_any_expr_inner_node(ast_tree,node!(at ast_node in ast_tree).child_vec[0]){
//             match op_compress_start_node {
//                 Some(compress_start_node) => {
//                     // do nothing
//                 },
//                 None => {
//                     op_compress_start_node = Some(ast_node);
//                     // remove the edge from here to child
//                     // let child = node!(at ast_node in ast_tree).child_vec[0];
//                     // let ast_edge_to_remove = ast_tree.find_edge(NodeIndex::new(ast_node as usize), NodeIndex::new(child as usize)).unwrap();
//                     // ast_tree.remove_edge(ast_edge_to_remove);
//                 },
//             }
//         }else {
//             if let Some(compress_start_node) = op_compress_start_node{
//                 // the simple chain end here, so we just add a edge from start to here 
//                 add_edge!(from compress_start_node to ast_node in ast_tree);
//                 op_compress_start_node = None;

//             }
//         }
//     }
// }

// 这个函数 返回 separator node
// 只能处理三类  expr_stmt & declaration & expr
pub fn process_any_stmt(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, any_stmt_node:u32, scope_node:u32) -> u32 {
    debug_info_red!("process any_stmt: {}",any_stmt_node);
    let sep_node = match node!(at any_stmt_node in ast_tree).rule_id {
        RULE_expressionStatement => {
            let sep_node = add_node!({EtNodeType::new_sep(any_stmt_node).into()} to et_tree);
            process_expr_stmt(et_tree, ast_tree, scope_tree, any_stmt_node, scope_node, sep_node);
            sep_node
        }
        RULE_expression => {
            let sep_node = add_node!({EtNodeType::new_sep(any_stmt_node).into()} to et_tree);
            process_expr(et_tree, ast_tree, scope_tree, any_stmt_node, scope_node, sep_node);
            sep_node
        }
        RULE_declaration => {
            let sep_node = add_node!({EtNodeType::new_sep(any_stmt_node).into()} to et_tree);
            process_declaration(et_tree, ast_tree, scope_tree, any_stmt_node, scope_node, sep_node);
            sep_node
        }
        RULE_forDeclaration => {
            let sep_node = add_node!({EtNodeType::new_sep(any_stmt_node).into()} to et_tree);
            process_declaration(et_tree, ast_tree, scope_tree, any_stmt_node, scope_node, sep_node);
            sep_node
        }
        RULE_forBeforeExpression => {
            let sep_node = add_node!({EtNodeType::new_sep(any_stmt_node).into()} to et_tree);
            // for before 底下有两种node  forDeclaration or  Expression
            process_for_before_expr(et_tree, ast_tree, scope_tree, any_stmt_node, scope_node, sep_node);
            sep_node
        }
        RULE_forMidExpression => {
            let sep_node = add_node!({EtNodeType::new_sep(any_stmt_node).into()} to et_tree);
            process_expr(et_tree, ast_tree, scope_tree, node!(at any_stmt_node in ast_tree).child_vec[0], scope_node, sep_node);
            sep_node
        }
        RULE_forAfterExpression => {
            let sep_node = add_node!({EtNodeType::new_sep(any_stmt_node).into()} to et_tree);
            process_expr(et_tree, ast_tree, scope_tree, node!(at any_stmt_node in ast_tree).child_vec[0], scope_node, sep_node);
            sep_node
        }
        RULE_parameterDeclaration => {
            let sep_node = add_node!({EtNodeType::new_sep(any_stmt_node).into()} to et_tree);
            process_parameter_declaration(et_tree, ast_tree, scope_tree, any_stmt_node, scope_node, sep_node);
            sep_node
        }
        RULE_parameterList => {
            let sep_node = add_node!({EtNodeType::new_sep(any_stmt_node).into()} to et_tree);
            for parameter_decl_node in find_nodes!(rule RULE_parameterDeclaration at any_stmt_node in ast_tree){
                process_parameter_declaration(et_tree, ast_tree, scope_tree, parameter_decl_node, scope_node, sep_node);
            }
            sep_node
        }
        _ => panic!("试图解析不合法的 ast_node {} with rule_id {:?} 为表达式树(et_tree)", any_stmt_node, node!(at any_stmt_node in ast_tree).rule_id),
    };
    // 写一个函数,用来替换,
    // 在上方的let match块中就已经把et-tree生成好了,就在这里进行节点的替换
    // 可以直接删除
    // let calcuate_expr_node = eval_et(et_tree, sep_node);
    // et_tree.remove_node(find_nodes!());
    // let _ = eval_et(et_tree, sep_node);
    sep_node
}
fn is_any_expr_inner_node(ast_tree:&AstTree,ast_node:u32) -> bool{
    if node!(at ast_node in ast_tree).is_terminal{
        false
    }else{
        match rule_id!(at ast_node in ast_tree){
            RULE_assignmentExpression => {true},
            RULE_conditionalExpression => {true},
            RULE_logicalOrExpression => {true},
            RULE_logicalAndExpression => {true},
            RULE_inclusiveOrExpression => {true},
            RULE_exclusiveOrExpression => {true},
            RULE_andExpression => {true},
            RULE_equalityExpression => {true},
            RULE_relationalExpression => {true},
            RULE_shiftExpression => {true},
            RULE_additiveExpression => {true},
            RULE_multiplicativeExpression => {true},
            RULE_castExpression => {true},
            _ => {false}
        }
    }
}
/// process situations like assignment statment 
fn process_any_expr_inner_node(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, ast_expr_sub_node:u32, scope_node:u32, parent_et_node:u32){
    match rule_id!(at ast_expr_sub_node in ast_tree){
        RULE_assignmentExpression => { process_assign_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        RULE_conditionalExpression => { process_cond_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        RULE_logicalOrExpression => { process_logical_or_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        RULE_logicalAndExpression => { process_logical_and_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        RULE_inclusiveOrExpression => { process_inclusive_or_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        RULE_exclusiveOrExpression => { process_exclusive_or_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        RULE_andExpression => { process_and_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        RULE_equalityExpression => { process_equality_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        RULE_relationalExpression => { process_relational_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        RULE_shiftExpression => { process_shift_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        RULE_additiveExpression => { process_additive_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        RULE_multiplicativeExpression => { process_multiplicative_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        RULE_castExpression => { process_cast_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node); },
        _ => {panic!("you can't parse as ast_expr_sub_node:{} ",ast_expr_sub_node)}
        // this two statemnets needs def_or_use arg so we can't shunt
        // RULE_unaryExpression => {
        //     process_unary_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node, def_or_use);
        // },
        // RULE_postfixExpression => {
        //     process_postfix_expr(et_tree, ast_tree, scope_tree, ast_expr_sub_node, scope_node, parent_et_node, def_or_use)
        // }
    }
}
fn process_parameter_declaration(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, parameter_decl_node:u32, scope_node:u32, parent_et_node:u32) {
    let type_ast_node = find!(
        rule RULE_declarationSpecifiers
        // 这里我们假定只有一个 修饰符
        then RULE_declarationSpecifier
        finally RULE_typeSpecifier at parameter_decl_node in ast_tree
    ).unwrap();
    let direct_decl_node = find!(rule RULE_declarator 
        finally RULE_directDeclarator
        at parameter_decl_node in ast_tree
    ).unwrap();
    process_direct_decl(et_tree, ast_tree, scope_tree, direct_decl_node, type_ast_node,false, scope_node, parent_et_node);
}
fn process_declaration(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, decl_node:u32, scope_node:u32, parent_et_node:u32) {
    // only consider variable declaration
    let specifier_nodes = find_nodes!(
        rule RULE_declarationSpecifiers
        // 这里我们假定只有一个 修饰符
        finally RULE_declarationSpecifier
        at decl_node in ast_tree
    );
    let mut op_type_ast_node = None;
    let mut is_const = false;
    for specifier_node in specifier_nodes{
        let temp_node = node!(at specifier_node in ast_tree).child_vec[0];
        if rule_id!(at temp_node in ast_tree) == RULE_typeQualifier{
            is_const = true;
        }else {
            op_type_ast_node = Some(temp_node);
        }
    }
    let declarator_node = find_nodes!(
        rule RULE_initDeclaratorList
        finally RULE_initDeclarator
        at decl_node in ast_tree
    );
    // debug_info_red!("is_const:{is_const} at decl_ndoe:{decl_node}");
    for init_decl_node in declarator_node {
        process_init_declarator(et_tree, ast_tree, scope_tree, init_decl_node, op_type_ast_node.unwrap(), is_const,scope_node, parent_et_node);
    }
}
fn process_for_before_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, for_before_expr:u32, scope_node:u32, parent_et_node:u32) {
    let for_declaration_or_expr_node = node!(at for_before_expr in ast_tree).child_vec[0];
    match (rule_id!(at for_declaration_or_expr_node in ast_tree), for_declaration_or_expr_node) {
        (RULE_forDeclaration, for_declaration_node) => process_declaration(et_tree, ast_tree, scope_tree, for_declaration_node, scope_node, parent_et_node),
        (RULE_expression, expr_node) => process_expr(et_tree, ast_tree, scope_tree, expr_node, scope_node, parent_et_node),
        _ => panic!("在这个 for before expression 底下既没有 forDeclaration 也没有 expression"),
    }
}
fn process_init_declarator(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, init_decl_node:u32, type_ast_node:u32, is_const:bool, scope_node:u32, parent_et_node:u32) {
    let declarator_node = find!(rule RULE_declarator at init_decl_node in ast_tree).unwrap();

    // 考虑到direct_decl_node 可能有 数组运算符，所以要进行进一步解析
    let direct_decl_node = find!(rule RULE_directDeclarator at declarator_node in ast_tree).expect(format!("error when try unwrap its son as direct_declaration_node {}", declarator_node).as_str());

    let op_assign_node = find!(term Assign at init_decl_node in ast_tree);

    // 处理可能存在的 initializer , 通过判断 Assign term是否存在来判断是否存在 initializer
    match op_assign_node {
        Some(assign_node) => {
            // 这里手动生成 et_assign_node 然后在它的左边放上新定义的变量
            let et_assign_node = add_node_with_edge!({EtNodeType::new_op_assign(assign_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree );
            process_direct_decl(et_tree, ast_tree, scope_tree, direct_decl_node, type_ast_node, is_const,scope_node, et_assign_node);
            let initializer_node = find!(rule RULE_initializer at init_decl_node in ast_tree).unwrap();
            process_initializer(et_tree, ast_tree, scope_tree, initializer_node, scope_node, et_assign_node);
        }
        None => {
            // 说明这是一个 类似于 int a; 或者 int a[3][3]; 的形式，没有初始值，因此只需要把变量放在 parent et node 下面就行了
            process_direct_decl(et_tree, ast_tree, scope_tree, direct_decl_node, type_ast_node,is_const, scope_node, parent_et_node);
        }
    }
}

fn process_direct_decl(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, direct_decl_node:u32, type_ast_node:u32,is_const:bool, scope_node:u32, parent_et_node:u32) {
    if let Some(_para_type_list_node) = find!(rule RULE_parameterTypeList at direct_decl_node in ast_tree) {
        // 这说明这是一个至少有一个参数的 函数 声明
    } else if let Some(ident_node) = find!(term Identifier at direct_decl_node in ast_tree) {
        // 这说明这只是一个简单的 ident
        process_ident(et_tree, ast_tree, scope_tree, ident_node, scope_node, parent_et_node, DeclOrDefOrUse::DeclDef { type_ast_node, is_const});
    } else if let Some(assign_expr_node) = find!(rule RULE_assignmentExpression at direct_decl_node in ast_tree) {
        // 说明这是一个数组，其中索引有表达式 assign_expr_node
        let et_direct_decl_node = add_node_with_edge!({EtNodeType::new_op_array_idx(direct_decl_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree);
        let sub_direct_decl_node = find!(rule RULE_directDeclarator at direct_decl_node in ast_tree).unwrap();
        process_direct_decl(et_tree, ast_tree, scope_tree, sub_direct_decl_node, type_ast_node,is_const, scope_node, et_direct_decl_node);
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, assign_expr_node, scope_node, et_direct_decl_node);
    } else if let Some(sub_direct_decl) = find!(rule RULE_directDeclarator at direct_decl_node in ast_tree) {
        // implies that it is a parameter declarator in func args
        let et_direct_decl_node = add_node_with_edge!({EtNodeType::new_op_array_idx(direct_decl_node).into()} with_edge {EtEdgeType::Direct.into()}from parent_et_node in et_tree);
        process_direct_decl(et_tree, ast_tree, scope_tree, sub_direct_decl, type_ast_node,is_const, scope_node, et_direct_decl_node);
    }
}

fn process_expr_stmt(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, expr_stmt_node:u32, scope_node:u32, parent_et_node:u32) {
    let op_expr_node = find!(rule RULE_expression at expr_stmt_node in ast_tree);
    match op_expr_node {
        Some(expr_node) => process_expr(et_tree, ast_tree, scope_tree, expr_node, scope_node, parent_et_node),
        None => {
            // 这里什么也不用做，因为这个 epxr_stmt 里面没有 expression
        }
    }
}

fn process_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, expr_node:u32, scope_node:u32, parent_et_node:u32) {
    // expr 节点下面 至少有一个 assignment expression
    let mut assign_expr_nodes = find_nodes!(rule RULE_assignmentExpression at expr_node in ast_tree iter_reversed);
    let first_assign_expr_node = assign_expr_nodes.next().unwrap();
    if assign_expr_nodes.next() == None{
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, first_assign_expr_node, scope_node, parent_et_node);
    }else {
        let assign_expr_nodes:Vec<u32> = find_nodes!(rule RULE_assignmentExpression at expr_node in ast_tree);
        if assign_expr_nodes.is_empty() {
            panic!("这个 expression {} 里面没有任何 assign_expr", expr_node);
        }
        for &assign_expr_node in assign_expr_nodes.iter() {
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, assign_expr_node, scope_node, parent_et_node);
        }
    }
}
/// assignment expr 是 assignmentOperator( =  /= *= += -= %= <<= >>= &= ^= |= )右边的式子
fn process_assign_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, assign_expr_node:u32, scope_node:u32, parent_et_node:u32) {
    let op_assign_operator = find!(rule RULE_assignmentOperator at assign_expr_node in ast_tree);
    match op_assign_operator {
        // 有 term 说明这一层,是 a=3 这样的形式
        Some(assign_operator_node) => {
            let operator_node = node!(at assign_operator_node in ast_tree).child_vec[0];
            match (term_id!(at operator_node in ast_tree), operator_node) {
                // ?暂时只支持五个 assign 类算符
                (Assign, _assign_operator) => {
                    let et_assign_node = add_node_with_edge!({EtNodeType::new_op_assign(assign_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree );
                    let unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree, ast_tree, scope_tree, unary_expr_node, scope_node, et_assign_node,DeclOrDefOrUse::Def);
                    process_any_expr_inner_node(et_tree, ast_tree, scope_tree, right_assign_expr_ndoe, scope_node, et_assign_node);
                }
                (MulAssign, _mul_assign_operator) => {
                    // 这里要添加两个node 一个是 赋值 = 一个是 *
                    let et_mul_assign_node = add_node_with_edge!({EtNodeType::new_op_mul_assign(scope_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree, ast_tree, scope_tree, left_unary_expr_node, scope_node, et_mul_assign_node,DeclOrDefOrUse::Def);
                    process_any_expr_inner_node(et_tree, ast_tree, scope_tree, right_assign_expr_ndoe, scope_node, et_mul_assign_node);
                }
                (DivAssign, _div_assign_operator) => {
                    let et_div_assign_node = add_node_with_edge!({EtNodeType::new_op_div_assign(scope_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree, ast_tree, scope_tree, left_unary_expr_node, scope_node, et_div_assign_node,DeclOrDefOrUse::Def);
                    process_any_expr_inner_node(et_tree, ast_tree, scope_tree, right_assign_expr_ndoe, scope_node, et_div_assign_node);
                }
                (PlusAssign, _plus_assign_operator) => {
                    let et_plus_assign_node = add_node_with_edge!({EtNodeType::new_op_plus_assign(scope_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree, ast_tree, scope_tree, left_unary_expr_node, scope_node, et_plus_assign_node,DeclOrDefOrUse::Def);
                    process_any_expr_inner_node(et_tree, ast_tree, scope_tree, right_assign_expr_ndoe, scope_node, et_plus_assign_node);
                }
                (MinusAssign, _minus_assign_operator) => {
                    let et_minus_assign_node = add_node_with_edge!({EtNodeType::new_op_minus_assign(scope_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree, ast_tree, scope_tree, left_unary_expr_node, scope_node, et_minus_assign_node,DeclOrDefOrUse::Def);
                    process_any_expr_inner_node(et_tree, ast_tree, scope_tree, right_assign_expr_ndoe, scope_node, et_minus_assign_node);
                }
                _ => {
                    panic!("未知 operator in assign expression {} ", assign_operator_node)
                }
            }
        }
        // 无 term 说明这一层啥也没有，直接进入下一层  吧
        None => process_any_expr_inner_node(et_tree, ast_tree, scope_tree, node!(at assign_expr_node in ast_tree).child_vec[0], scope_node, parent_et_node),
    }
}
fn process_cond_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, cond_expr_node:u32, scope_node:u32, parent_et_node:u32) {
    let logical_or_node = find!(rule RULE_logicalOrExpression at cond_expr_node in ast_tree).expect(format!("cond_node_id {}", cond_expr_node).as_str());
    process_any_expr_inner_node(et_tree, ast_tree, scope_tree, logical_or_node, scope_node, parent_et_node);
}
fn process_logical_or_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, logical_or_expr_node:u32, scope_node:u32, parent_et_node:u32) {
    let mut logical_and_expr_nodes = direct_child_nodes!(at logical_or_expr_node in ast_tree iter_reversed);
    let first = logical_and_expr_nodes.next().unwrap();
    if logical_and_expr_nodes.next() == None{
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, first, scope_node, parent_et_node);
        return;
    }

    let logical_and_nodes = find_nodes!(rule RULE_logicalAndExpression at logical_or_expr_node in ast_tree);
    let mut op_last_ep_or_node = None;
    for (index, &logical_and_expr_node) in logical_and_nodes.iter().enumerate() {
        // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
        if index != logical_and_nodes.len() - 1 {
            if op_last_ep_or_node.is_none() {
                op_last_ep_or_node = Some(add_node_with_edge!({EtNodeType::new_op_logical_or(logical_or_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree ));
            } else {
                let last_ep_or_node = op_last_ep_or_node.unwrap();
                op_last_ep_or_node = Some(add_node_with_edge!({EtNodeType::new_op_logical_or(logical_or_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from last_ep_or_node in et_tree ));
            }
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, logical_and_expr_node, scope_node, op_last_ep_or_node.unwrap());
        } else {
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, logical_and_expr_node, scope_node, op_last_ep_or_node.unwrap());
        }
    }
}
fn process_logical_and_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, logical_and_expr:u32, scope_node:u32, parent_et_node:u32) {
    let mut inclusive_or_nodes = direct_child_nodes!(at logical_and_expr in ast_tree iter_reversed);
    let first = inclusive_or_nodes.next().unwrap();
    if inclusive_or_nodes.next() == None{
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, first, scope_node, parent_et_node);
        return;
    }
    let inclusive_or_nodes = find_nodes!(rule RULE_inclusiveOrExpression at logical_and_expr in ast_tree);
    let mut op_last_ep_logical_and_node = None;
    for (index, &inclusive_or_node) in inclusive_or_nodes.iter().enumerate() {
        // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
        if index != inclusive_or_nodes.len() - 1 {
            if op_last_ep_logical_and_node.is_none() {
                op_last_ep_logical_and_node = Some(add_node_with_edge!({EtNodeType::new_op_logical_and(logical_and_expr).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree ));
            } else {
                let last_ep_logical_and_node = op_last_ep_logical_and_node.unwrap();
                op_last_ep_logical_and_node = Some(add_node_with_edge!({EtNodeType::new_op_logical_and(logical_and_expr).into()} with_edge {EtEdgeType::Direct.into()} from last_ep_logical_and_node in et_tree ));
            }
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, inclusive_or_node, scope_node, op_last_ep_logical_and_node.unwrap());
        } else {
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, inclusive_or_node, scope_node, op_last_ep_logical_and_node.unwrap());
        }
    }
}
fn process_inclusive_or_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, inclusive_or_expr:u32, scope_node:u32, parent_et_node:u32) {
    let mut exclusive_or_nodes = direct_child_nodes!(at inclusive_or_expr in ast_tree iter_reversed);
    let first = exclusive_or_nodes.next().unwrap();
    if exclusive_or_nodes.next() == None{
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, first, scope_node, parent_et_node);
        return;
    }
    let exclusive_or_nodes = direct_child_nodes!(at inclusive_or_expr in ast_tree);
    let mut op_last_ep_inclusive_or_node = None;
    for (index, &exclusive_or_node) in exclusive_or_nodes.iter().enumerate() {
        if index%2 == 1{ continue;}
        // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
        if index != exclusive_or_nodes.len() - 1 {
            if op_last_ep_inclusive_or_node.is_none() {
                op_last_ep_inclusive_or_node = Some(add_node_with_edge!({EtNodeType::new_op_bitwise_or( inclusive_or_expr).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree ));
            } else {
                let last_ep_inclusive_or_node = op_last_ep_inclusive_or_node.unwrap();
                op_last_ep_inclusive_or_node = Some(add_node_with_edge!({EtNodeType::new_op_bitwise_or( inclusive_or_expr).into()} with_edge {EtEdgeType::Direct.into()} from last_ep_inclusive_or_node in et_tree ));
            }
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, exclusive_or_node, scope_node, op_last_ep_inclusive_or_node.unwrap());
        } else {
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, exclusive_or_node, scope_node, op_last_ep_inclusive_or_node.unwrap());
        }
    }
}
fn process_exclusive_or_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, exclusive_or_expr_node:u32, scope_node:u32, parent_et_node:u32) {
    let mut and_expr_nodes = direct_child_nodes!(at exclusive_or_expr_node in ast_tree iter_reversed);
    let first = and_expr_nodes.next().unwrap();
    if and_expr_nodes.next() == None{
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, first, scope_node, parent_et_node);
        return;
    }
    let and_expr_nodes = direct_child_nodes!(at exclusive_or_expr_node in ast_tree);
    let mut op_last_ep_and_node = None;
    for (index, &inclusive_or_node) in and_expr_nodes.iter().enumerate() {
        if index%2 == 1{ continue;}
        // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
        if index != and_expr_nodes.len() - 1 {
            if op_last_ep_and_node.is_none() {
                op_last_ep_and_node = Some(add_node_with_edge!({EtNodeType::new_op_bitwise_xor( exclusive_or_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree ));
            } else {
                let last_ep_inclusive_or_node = op_last_ep_and_node.unwrap();
                op_last_ep_and_node = Some(add_node_with_edge!({EtNodeType::new_op_bitwise_xor( exclusive_or_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from last_ep_inclusive_or_node in et_tree ));
            }
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, inclusive_or_node, scope_node, op_last_ep_and_node.unwrap());
        } else {
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, inclusive_or_node, scope_node, op_last_ep_and_node.unwrap());
        }
    }
}
fn process_and_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, and_expr_node:u32, scope_node:u32, parent_et_node:u32) {
    let mut equality_expr_nodes = direct_child_nodes!(at and_expr_node in ast_tree iter_reversed);
    let first = equality_expr_nodes.next().unwrap();
    if equality_expr_nodes.next() == None{
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, first, scope_node, parent_et_node);
        return;
    }

    let equality_expr_nodes = direct_child_nodes!(at and_expr_node in ast_tree);
    let mut op_last_ep_equality_node = None;
    for (index, &equality_node) in equality_expr_nodes.iter().enumerate() {
        if index%2 == 1{ continue;}
        if index != equality_expr_nodes.len() - 1 {
            if op_last_ep_equality_node.is_none() {
                op_last_ep_equality_node = Some(add_node_with_edge!({EtNodeType::new_op_bitwise_and( and_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree));
            } else {
                let last_ep_equality_node = op_last_ep_equality_node.unwrap();
                op_last_ep_equality_node = Some(add_node_with_edge!({EtNodeType::new_op_bitwise_and( and_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from last_ep_equality_node in et_tree));
            }
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, equality_node, scope_node, op_last_ep_equality_node.unwrap());
        } else {
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, equality_node, scope_node, op_last_ep_equality_node.unwrap());
        }
    }
}

fn process_equality_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, equality_expr_node:u32, scope_node:u32, parent_et_node:u32) {
    let mut relational_exprs = direct_child_nodes!(at equality_expr_node in ast_tree iter_reversed);
    let first = relational_exprs.next().unwrap();
    if relational_exprs.next() == None{
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, first, scope_node, parent_et_node);
        return;
    }

    let relational_expr_nodes = direct_child_nodes!(at equality_expr_node in ast_tree);
    let get_expr_node_of_op_node = |op_node_index| {
        let op_node = relational_expr_nodes[op_node_index];
        match term_id!(at op_node in ast_tree) {
            Equal => EtNodeType::new_op_equal(equality_expr_node).into(),
            NotEqual => EtNodeType::new_op_not_equal(equality_expr_node).into(),
            _ => {
                panic!("Unexpected operator under equality expr ")
            }
        }
    };
    let mut op_last_ep_relational_node = None;
    for (index, &relational_node) in relational_expr_nodes.iter().enumerate() {
        // 对于每个 relationalExpression，我们需要判断是否是序列中的最后一个
        // 如果不是最后一个，我们需要创建一个新的 equality 操作符节点并连接到当前节点
        if index%2 == 1{ continue;}
        if index != relational_expr_nodes.len() - 1 {
            if op_last_ep_relational_node.is_none() {
                // 第一个 relationalExpression，创建一个新的 equality 操作符节点
                op_last_ep_relational_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index+1)} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree));
            } else {
                // 中间的 relationalExpression，创建一个新的 equality 操作符节点并连接到上一个操作符节点
                let last_ep_relational_node = op_last_ep_relational_node.unwrap();
                op_last_ep_relational_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index+1)} with_edge {EtEdgeType::Direct.into()} from last_ep_relational_node in et_tree));
            }
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, relational_node, scope_node, op_last_ep_relational_node.unwrap());
        } else {
            // 最后一个 relationalExpression，连接到最后一个操作符节点
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, relational_node, scope_node, op_last_ep_relational_node.unwrap());
        }
    }
}

fn process_relational_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, relational_expr_node:u32, scope_node:u32, parent_et_node:u32) {
    let mut shift_expr_nodes = direct_child_nodes!(at relational_expr_node in ast_tree iter_reversed);
    let first = shift_expr_nodes.next().unwrap();
    if shift_expr_nodes.next() == None{
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, first, scope_node, parent_et_node);
        return;
    }

    let shift_expr_nodes = direct_child_nodes!(at relational_expr_node in ast_tree);
    let get_expr_node_of_op_node = |op_node_index| {
        let op_node = shift_expr_nodes[op_node_index];
        match term_id!(at op_node in ast_tree) {
            Less => EtNodeType::new_op_less_than(relational_expr_node).into(),
            Greater => EtNodeType::new_op_greater_than(relational_expr_node).into(),
            LessEqual => EtNodeType::new_op_less_than_or_equal(relational_expr_node).into(),
            GreaterEqual => EtNodeType::new_op_greater_than_or_equal(relational_expr_node).into(),
            _ => panic!("Unexpected operator in relational expression"),
        }
    };

    let mut op_last_et_shift_op_node = None;
    for (index, &shift_node) in shift_expr_nodes.iter().enumerate() {
        if index%2 == 1{ continue;}
        if index != shift_expr_nodes.len() - 1 {
            if op_last_et_shift_op_node.is_none() {
                op_last_et_shift_op_node = Some(add_node_with_edge!({get_expr_node_of_op_node(1)} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree));
            // 默认操作符，实际应根据上下文确定
            } else {
                let last_ep_shift_node = op_last_et_shift_op_node.unwrap();
                op_last_et_shift_op_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index+1)} with_edge {EtEdgeType::Direct.into()} from last_ep_shift_node in et_tree));
            }
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, shift_node, scope_node, op_last_et_shift_op_node.unwrap());
        } else {
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, shift_node, scope_node, op_last_et_shift_op_node.unwrap());
        }
    }
}

fn process_shift_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, shift_expr_node:u32, scope_node:u32, parent_et_node:u32) {
    let mut additive_expr_nodes = direct_child_nodes!(at shift_expr_node in ast_tree iter_reversed);
    let first = additive_expr_nodes.next().unwrap();
    if additive_expr_nodes.next() == None{
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, first, scope_node, parent_et_node);
        return;
    }

    let additive_expr_nodes = find_nodes!(rule RULE_additiveExpression at shift_expr_node in ast_tree);
    let get_expr_node_of_op_node = |op_node_index| {
        let op_node = additive_expr_nodes[op_node_index];
        match term_id!(at op_node in ast_tree) {
            LeftShift => EtNodeType::new_op_left_shift(shift_expr_node).into(),
            RightShift => EtNodeType::new_op_right_shift(shift_expr_node).into(),
            _ => panic!("Unexpected operator in shift expression"),
        }
    };

    let mut op_last_ep_additive_node = None;
    for (index, &additive_node) in additive_expr_nodes.iter().enumerate() {
        if index%2 == 1{ continue;}
        if index != additive_expr_nodes.len() - 1 {
            if op_last_ep_additive_node.is_none() {
                // 由于是第一个节点，我们需要基于第一个操作符创建节点
                op_last_ep_additive_node = Some(add_node_with_edge!({get_expr_node_of_op_node(1)} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree));
            } else {
                let last_ep_additive_node = op_last_ep_additive_node.unwrap();
                op_last_ep_additive_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index+1)} with_edge {EtEdgeType::Direct.into()} from last_ep_additive_node in et_tree));
            }
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, additive_node, scope_node, op_last_ep_additive_node.unwrap());
        } else {
            // 最后一个节点使用同样的方法连接
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, additive_node, scope_node, op_last_ep_additive_node.unwrap());
        }
    }
}

fn process_additive_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, additive_expr_node:u32, scope_node:u32, parent_et_node:u32) {
    // debug_info_blue!("process additive expr at {}",additive_expr_node);
    let mut multiplicative_expr_nodes = direct_child_nodes!(at additive_expr_node in ast_tree iter_reversed);
    let first = multiplicative_expr_nodes.next().unwrap();
    if multiplicative_expr_nodes.next() == None{
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, first, scope_node, parent_et_node);
        return;
    }
    let multiplicative_expr_nodes = direct_child_nodes!(at additive_expr_node in ast_tree);
    let get_expr_node_of_op_node = |op_node_index| {
        let op_node = multiplicative_expr_nodes[op_node_index];
        match term_id!(at op_node in ast_tree) {
            Plus => EtNodeType::new_op_add(additive_expr_node).into(),
            Minus => EtNodeType::new_op_sub(additive_expr_node).into(),
            _ => panic!("Unexpected operator in additive expression"),
        }
    };

    let mut op_last_ep_multi_node = None;
    for (index, &multi_node) in multiplicative_expr_nodes.iter().enumerate() {
        if index%2 == 1{ continue;}
        if index == 0 {
            // first et_node should 
            op_last_ep_multi_node = Some(add_node!({get_expr_node_of_op_node(1)} to et_tree));
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, multi_node, scope_node, op_last_ep_multi_node.unwrap());
        } else {
            // 第一个 castExpression，基于第一个操作符创建节点
            // op_last_ep_cast_node = Some(add_node!({get_expr_node_of_op_node(0)} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree));
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, multi_node, scope_node, op_last_ep_multi_node.unwrap());
            let last_ep_cast_node = op_last_ep_multi_node.unwrap();
            // 注意：每个操作符对应一个操作节点，索引应调整为基于操作符的实际位置
            if index != multiplicative_expr_nodes.len()-1{
                let added_cast_node = add_node!({get_expr_node_of_op_node(index+1)} to et_tree);
                // op_last_ep_cast_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index)} with_edge {EtEdgeType::Direct.into()} from last_ep_cast_node in et_tree));
                add_edge!({EtEdgeType::Direct.into()} from  added_cast_node to last_ep_cast_node in et_tree);
                op_last_ep_multi_node =Some(added_cast_node);
            }
        }
    }
    let last_ep_cast_node = op_last_ep_multi_node.unwrap();
    add_edge!({EtEdgeType::Direct.into()} from parent_et_node to last_ep_cast_node in et_tree);
}

fn process_multiplicative_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, multiplicative_expr_node:u32, scope_node:u32, parent_et_node:u32) {
    if parent_et_node%30 ==0{
        debug_info_red!("process multiplicaive {}",parent_et_node);
    }
    let mut cast_expr_nodes = direct_child_nodes!(at multiplicative_expr_node in ast_tree iter_reversed);
    let first = cast_expr_nodes.next().unwrap();
    if cast_expr_nodes.next() == None{
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, first, scope_node, parent_et_node);
        return;
    }

    let cast_expr_nodes = direct_child_nodes!(at multiplicative_expr_node in ast_tree);

    let get_expr_node_of_op_node = |node_idx| {
        let node = cast_expr_nodes[node_idx];
        match term_id!(at node in ast_tree) {
            Star => EtNodeType::new_op_mul(multiplicative_expr_node).into(),
            Div => EtNodeType::new_op_div(multiplicative_expr_node).into(),
            Mod => EtNodeType::new_op_mod(multiplicative_expr_node).into(),
            _ => panic!("Unexpected operator in multiplicative expression"),
        }
    };

    let mut op_last_ep_cast_node = None;
    for (index, &cast_node) in cast_expr_nodes.iter().enumerate() {
        if index%2 == 1{ continue;}
        if index == 0 {
            // first et_node should 
            op_last_ep_cast_node = Some(add_node!({get_expr_node_of_op_node(1)} to et_tree));
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, cast_node, scope_node, op_last_ep_cast_node.unwrap());
        } else {
            // 第一个 castExpression，基于第一个操作符创建节点
            // op_last_ep_cast_node = Some(add_node!({get_expr_node_of_op_node(0)} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree));
            process_any_expr_inner_node(et_tree, ast_tree, scope_tree, cast_node, scope_node, op_last_ep_cast_node.unwrap());
            let last_ep_cast_node = op_last_ep_cast_node.unwrap();
            // 注意：每个操作符对应一个操作节点，索引应调整为基于操作符的实际位置
            if index != cast_expr_nodes.len()-1{
                let added_cast_node = add_node!({get_expr_node_of_op_node(index+1)} to et_tree);
                // op_last_ep_cast_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index)} with_edge {EtEdgeType::Direct.into()} from last_ep_cast_node in et_tree));
                add_edge!({EtEdgeType::Direct.into()} from  added_cast_node to last_ep_cast_node in et_tree);
                op_last_ep_cast_node =Some(added_cast_node);
            }
        }
    }
    let last_ep_cast_node = op_last_ep_cast_node.unwrap();
    add_edge!({EtEdgeType::Direct.into()} from parent_et_node to last_ep_cast_node in et_tree);
}

fn process_cast_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, cast_expr_node:u32, scope_node:u32, parent_et_node:u32) {
    // 检查 castExpression 节点是否是类型转换的情况
    if let Some(type_name_node) = find!(rule RULE_typeName at cast_expr_node in ast_tree) {
        // 如果存在 typeName，说明是类型转换的情况
        let type_sym = SymIdx::new(scope_node, node!(at type_name_node in ast_tree).text.clone());
        // let cast_node = add_node_with_edge!({EtNodeType::new_op_cast( cast_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree);
        // 添加 cast op 节点的左节点，这是个 type symbol
        // add_node_with_edge!({EtNodeType::new_symbol(scope_node,type_sym,DeclOrDefOrUse::Use).into()} with_edge {EtEdgeType::Direct.into()} from cast_node in et_tree);

        // 递归处理 castExpression
        let child_cast_expr_node = find!(rule RULE_castExpression at cast_expr_node in ast_tree).expect(format!("在 节点 {} 下找不到 castExpr", type_name_node).as_str());
        process_cast_expr(et_tree, ast_tree, scope_tree, child_cast_expr_node, scope_node, parent_et_node);
    } else if let Some(unary_expr_node) = find!(rule RULE_unaryExpression at cast_expr_node in ast_tree) {
        // 如果是 unaryExpression，直接处理
        process_unary_expr(et_tree, ast_tree, scope_tree, unary_expr_node, scope_node, parent_et_node,DeclOrDefOrUse::Use);
    } else {
        panic!("Unexpected condition in cast_expr");
    }
}

pub fn process_unary_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, unary_expr_node:u32, scope_node:u32, parent_et_node:u32, def_or_use:DeclOrDefOrUse) {
    let get_expr_node_of_unary_op_node = |op_node| match term_id!(at op_node in ast_tree) {
        And => EtNodeType::new_op_addr_of(unary_expr_node).into(),
        Star => EtNodeType::new_op_deref(unary_expr_node).into(),
        Plus => EtNodeType::new_op_positive(unary_expr_node).into(),
        PlusPlus => EtNodeType::new_op_left_plusplus(unary_expr_node).into(),
        MinusMinus => EtNodeType::new_op_left_minusminus(unary_expr_node).into(),
        Minus => EtNodeType::new_op_negative(unary_expr_node).into(),
        Tilde => EtNodeType::new_op_logical_not(unary_expr_node).into(),
        Not => EtNodeType::new_op_logical_not(unary_expr_node).into(),
        _ => panic!("Unexpected unary operator"),
    };
    // 检查是否存在一元操作符
    if let Some(unary_operator_node) = find!(rule RULE_unaryOperator at unary_expr_node in ast_tree) {
        let unary_operator_term_node = node!(at unary_operator_node in ast_tree).child_vec[0];
        // .expect(format!("在 unaryOperator {} 下找不到 unaryOpertor term",unary_operator_node).as_str());
        let op_node = add_node_with_edge!({get_expr_node_of_unary_op_node(unary_operator_term_node)} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree);

        // 一元操作符后跟的是 unaryExpression
        let child_cast_expr_node = find!(rule RULE_castExpression at unary_expr_node in ast_tree).unwrap();
        process_cast_expr(et_tree, ast_tree, scope_tree, child_cast_expr_node, scope_node, op_node);
    } else if let Some(postfix_expr_node) = find!(rule RULE_postfixExpression at unary_expr_node in ast_tree) {
        // 如果是 postfixExpression，直接处理
        process_postfix_expr(et_tree, ast_tree, scope_tree, postfix_expr_node, scope_node, parent_et_node,def_or_use);
    } else {
        panic!("Unexpected condition in unary_expr");
    }
}

fn process_postfix_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, postfix_expr_node:u32, scope_node:u32, parent_et_node:u32,def_or_use:DeclOrDefOrUse) {
    if let Some(expr_node) = find!(rule RULE_expression at postfix_expr_node in ast_tree) {
        //说明这是个带下标的语法 with subscript
        let postfix_expr_node = find!(rule RULE_postfixExpression at postfix_expr_node in ast_tree).unwrap();
        let et_array_wrapper_node = add_node_with_edge!({EtNodeType::new_op_array_idx(postfix_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree);
        process_postfix_expr(et_tree, ast_tree, scope_tree, postfix_expr_node, scope_node, et_array_wrapper_node,def_or_use);
        process_expr(et_tree, ast_tree, scope_tree, expr_node, scope_node, et_array_wrapper_node);
    } else if let Some(arg_expr_list_node) = find!(rule RULE_argumentExpressionList at postfix_expr_node in ast_tree) {
        //说明这是个函数调用的语法 call
        let et_call_node = add_node_with_edge!({EtNodeType::new_op_call( postfix_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree);
        let postfix_expr_node = find!(rule RULE_postfixExpression at postfix_expr_node in ast_tree).unwrap();
        process_postfix_expr(et_tree, ast_tree, scope_tree, postfix_expr_node, scope_node, et_call_node,def_or_use);
        process_arg_expr_list(et_tree, ast_tree, scope_tree, arg_expr_list_node, scope_node, et_call_node);
    } else if let Some(_dot_node) = find!(term Dot at postfix_expr_node in ast_tree) {
        //说明这是个结构体成员访问的语法 dot member access
        let et_dot_member_node = add_node_with_edge!({EtNodeType::new_op_dot_member( postfix_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree);
        let postfix_expr_node = find!(rule RULE_postfixExpression at postfix_expr_node in ast_tree).unwrap();
        let ident_node = find!(term Identifier at postfix_expr_node in ast_tree).unwrap();
        process_postfix_expr(et_tree, ast_tree, scope_tree, postfix_expr_node, scope_node, et_dot_member_node,def_or_use);
        process_ident(et_tree, ast_tree, scope_tree, ident_node, scope_node, et_dot_member_node, DeclOrDefOrUse::Use);
    } else if let Some(_arrow_node) = find!(term Arrow at postfix_expr_node in ast_tree) {
        //说明这是个结构体成员访问的语法 arrow member access
        let et_arrow_member_node = add_node_with_edge!({EtNodeType::new_op_arrow_member( postfix_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree);
        let postfix_expr_node = find!(rule RULE_postfixExpression at postfix_expr_node in ast_tree).unwrap();
        let ident_node = find!(term Identifier at postfix_expr_node in ast_tree).unwrap();
        process_postfix_expr(et_tree, ast_tree, scope_tree, postfix_expr_node, scope_node, et_arrow_member_node,def_or_use);
        process_ident(et_tree, ast_tree, scope_tree, ident_node, scope_node, et_arrow_member_node, DeclOrDefOrUse::Use);
    } else if let Some(_string_node) = find!(term PlusPlus at postfix_expr_node in ast_tree) {
        //说明这是个++的语法
        let et_plusplus_node = add_node_with_edge!({EtNodeType::new_op_right_plusplus( postfix_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree);
        let postfix_expr_node = find!(rule RULE_postfixExpression at postfix_expr_node in ast_tree).expect(format!("process_postfix_expr error at ast_node{}", postfix_expr_node).as_str());
        process_postfix_expr(et_tree, ast_tree, scope_tree, postfix_expr_node, scope_node, et_plusplus_node,DeclOrDefOrUse::Def);
    } else if let Some(_string_node) = find!(term MinusMinus at postfix_expr_node in ast_tree) {
        //说明这是个--的语法
        let et_minusminus_node = add_node_with_edge!({EtNodeType::new_op_right_minusminus( postfix_expr_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree);
        let postfix_expr_node = find!(rule RULE_postfixExpression at postfix_expr_node in ast_tree).unwrap();
        process_postfix_expr(et_tree, ast_tree, scope_tree, postfix_expr_node, scope_node, et_minusminus_node,DeclOrDefOrUse::Def);
    } else if let Some(primary_expr_node) = find!(rule RULE_primaryExpression at postfix_expr_node in ast_tree) {
        process_primary_expr(et_tree, ast_tree, scope_tree, primary_expr_node, scope_node, parent_et_node,def_or_use)
    }
}
fn process_arg_expr_list(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, arg_expr_list_node:u32, scope_node:u32, parent_et_node:u32) {
    let assign_expr_nodes = find_nodes!(rule RULE_assignmentExpression at arg_expr_list_node in ast_tree);
    for assign_expr_node in assign_expr_nodes {
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, assign_expr_node, scope_node, parent_et_node)
    }
}
fn process_primary_expr(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, primary_expr_node:u32, scope_node:u32, parent_et_node:u32,def_or_use:DeclOrDefOrUse) {
    if let Some(const_node) = find!(term Constant at primary_expr_node in ast_tree) {
        // println!("constant {}",const_node);
        process_literal(et_tree, ast_tree, scope_tree, const_node, scope_node, parent_et_node);
    } else if let Some(ident_node) = find!(term Identifier at primary_expr_node in ast_tree) {
        // println!("ident {}",ident_node);
        process_ident(et_tree, ast_tree, scope_tree, ident_node, scope_node, parent_et_node, def_or_use);
    } else if let Some(expr_node) = find!(rule RULE_expression at primary_expr_node in ast_tree) {
        // println!("expr found under {}",primary_expr_node );
        process_expr(et_tree, ast_tree, scope_tree, expr_node, scope_node, parent_et_node);
    } else if let Some(string_node) = find!(term StringLiteral at primary_expr_node in ast_tree) {
        process_literal(et_tree, ast_tree, scope_tree, string_node, scope_node, parent_et_node);
    }
}

fn process_initializer_list(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, initializer_list_node:u32, scope_node:u32, parent_et_node:u32) {
    // 有两种，一种是 initializer 套 initializer 一种是 assignment_expr
    let initializer_nodes = find_nodes!(rule RULE_initializer at initializer_list_node in ast_tree);
    for initializer_node in initializer_nodes {
        process_initializer(et_tree, ast_tree, scope_tree, initializer_node, scope_node, parent_et_node);
    }
}

fn process_initializer(et_tree:&mut EtTree, ast_tree:&AstTree, scope_tree:&ScopeTree, initializer_node:u32, scope_node:u32, parent_et_node:u32) {
    if let Some(initializer_list_node) = find!(rule RULE_initializerList at initializer_node in ast_tree) {
        let et_array_wrapper_node = add_node_with_edge!({EtNodeType::new_op_array_wrapper(initializer_node).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree);
        process_initializer_list(et_tree, ast_tree, scope_tree, initializer_list_node, scope_node, et_array_wrapper_node)
    } else if let Some(assign_expr_node) = find!(rule RULE_assignmentExpression at initializer_node in ast_tree) {
        process_any_expr_inner_node(et_tree, ast_tree, scope_tree, assign_expr_node, scope_node, parent_et_node)
    }
}

/// 会把表达式中的符号添加到 symtab 中
/// ? 这个过程并不需要符号表，因为符号表是用来检查 def use 是否合法的，比如变量在 定义前被使用了就是非法
fn process_ident(et_tree:&mut EtTree, ast_tree:&AstTree, _scope_tree:&ScopeTree, ident_node:u32, scope_node:u32, parent_et_node:u32, def_or_use:DeclOrDefOrUse) {
    let sym_name = node!(at ident_node in ast_tree).text.clone();
    // let sym_idx = SymbolIndex::new(scope_node, symbol_name);

    let symidx = SymIdx::new(scope_node, sym_name);
    // let symbol = symtab.add(symbol_struct);
    add_node_with_edge!({EtNodeType::new_symbol(ident_node, symidx.as_rc(), def_or_use).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree);
}
fn process_literal(et_tree:&mut EtTree, ast_tree:&AstTree, _scope_tree:&ScopeTree, literal_node:u32, scope_node:u32, parent_et_node:u32) {
    let sym_name = node!(at literal_node in ast_tree).text.clone();
    // let sym_idx = SymbolIndex::new(scope_node, symbol_name);

    let literal_symidx = SymIdx::new(scope_node, sym_name);
    // let symbol = symtab.add(symbol_struct);
    add_node_with_edge!({EtNodeType::new_literal(literal_node, literal_symidx.as_rc()).into()} with_edge {EtEdgeType::Direct.into()} from parent_et_node in et_tree);
}

// fn symbol_def_use_order_check(et_tree:&mut EtTree)->u32{
//     // let sym_name = node!(at ident_node in ast_tree).text.clone();
//     // // let sym_idx = SymbolIndex::new(scope_node, symbol_name);

//     // let sym_struct = Symbol::new(scope_node, sym_name);
//     // // let symbol = symtab.add(symbol_struct);

//     // match (symtab.get(&sym_struct.sym_idx),l_or_r_val){
//     //     (None, L_or_R_Val::LValue) => {
//     //         // 这种情况是找到了该符号，也就是说之前定义过此符号，如果定义过此符号

//     //     },
//     //     (None, L_or_R_Val::RValue) => {
//     //         // 如果没有找到这个符号，并且还是个右值，那么就应该直接报错了
//     //         panic!("{} 在 {} 没有被定义", sym_struct.sym_idx.symbol_name,);
//     //     },
//     //     (Some(_), L_or_R_Val::LValue) => ,
//     //     (Some(_), L_or_R_Val::RValue) => todo!(),
//     // }

//     // let et_node_struct :EtNode = EtNode::new(ident_node);
//     // let et_node = add_node!(et_node_struct to et_tree);
//     // et_node

// }
