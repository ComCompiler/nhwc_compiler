use std::fmt::Debug;
use std::ops::{AddAssign, DivAssign, MulAssign};
use std::process::id;
use std::{mem, panic};
use std::thread::scope;

use std::panic;

use petgraph::stable_graph::NodeIndex;


use crate::antlr_parser::clexer::{And, Arrow, Constant, DivAssign, Dot, Equal, Greater, GreaterEqual, Identifier, LeftShift, Less, LessEqual, Minus, MinusAssign, MinusMinus, MulAssign, Not, NotEqual, Plus, PlusAssign, PlusPlus, RightShift, Star, StringLiteral, Tilde};
use crate::antlr_parser::cparser::{Assign, RULE_additiveExpression, RULE_andExpression, RULE_argumentExpressionList, RULE_assignmentExpression, RULE_assignmentOperator, RULE_castExpression, RULE_declaration, RULE_declarator, RULE_directDeclarator, RULE_equalityExpression, RULE_exclusiveOrExpression, RULE_expression, RULE_inclusiveOrExpression, RULE_initDeclarator, RULE_initDeclaratorList, RULE_initializer, RULE_logicalAndExpression, RULE_logicalOrExpression, RULE_multiplicativeExpression, RULE_postfixExpression, RULE_primaryExpression, RULE_relationalExpression, RULE_shiftExpression, RULE_typeName, RULE_unaryExpression, RULE_unaryOperator};
use crate::toolkit::context;
use crate::{add_edge, add_node, add_node_with_edge, direct_node, find, find_nodes, node, rule_id, term_id};
use crate::antlr_parser::cparser::{Assign, RULE_additiveExpression, RULE_andExpression, RULE_argumentExpressionList, RULE_assignmentExpression, RULE_assignmentOperator, RULE_castExpression, RULE_declarator, RULE_equalityExpression, RULE_exclusiveOrExpression, RULE_expression, RULE_inclusiveOrExpression, RULE_initDeclarator, RULE_initDeclaratorList, RULE_logicalAndExpression, RULE_logicalOrExpression, RULE_multiplicativeExpression, RULE_postfixExpression, RULE_primaryExpression, RULE_relationalExpression, RULE_shiftExpression, RULE_typeName, RULE_unaryExpression, RULE_unaryOperator};
use crate::toolkit::symbol_table::SymbolIndex;
use crate::{add_node, add_node_with_edge, direct_node, find, find_nodes, node, term_id};

use super::et_node::{Def_Or_Use, EtNode, EtTree};
use super::{ast_node::AstTree, scope_node::ScopeTree, symbol_table::Symbol};

pub fn process_decl2et(et_tree:&mut EtTree,ast_tree:&AstTree,scope_tree:&ScopeTree,decl_node:u32,scope_node:u32,root_et_node:u32){
    // "int x = 10;"中 int是declarationSpecfier->typeSpecifier  
        //x是init~List -> init~ -> declarator
        //=表示存在初始化器
        //10是initializer,它也可以是一个表达式

    let initdecl_nodes=find_nodes!(rule RULE_declaration 
                                    then RULE_initDeclaratorList
                                    finally RULE_initDeclarator
                                    at decl_node in ast_tree);
    // 存储initdeclarator节点
    for initdecl_node in initdecl_nodes{    //适用于int a , b , c这样一次声明多个变量
        //1.忽略int等typeSpecifier
        //2.语句的节点直接连到"="上,(如果没有= -> 连到变量名以及可能的指针或数组等修饰符上 )
        // 找到initdecl_node下面的identifier节点
        let identifier_node=find!(rule RULE_declarator
                                        then RULE_directDeclarator
                                        finally term Identifier
                                        at initdecl_node in ast_tree).unwrap();
        
        // 获取变量名,不会
        let identifier_name: String = todo!();
        
        //要放入et_tree的declare_node
        let declare_node=EtNode::new_decl(decl_node, identifier_name);
        
        
        let initializer_node = find!(rule RULE_initializer at initdecl_node in ast_tree);

        // 如果存在初始化器，则构建等号节点,其左子树为decl_node -> identifier
        if let Some(initializer_node) = initializer_node {
            // 连接等号节点到ET树中
            // 等号节点
            let equal_node=EtNode::new_op_equal(decl_node);
            add_node_with_edge!(equal_node from root_et_node in et_tree);
            // 连接decl_node到=节点上
            add_node_with_edge!(decl_node from equal_node in et_tree);
            // 连接identifier到decl_node上
            add_node_with_edge!(identifier_node from decl_node in et_tree);
            //=节点左边搞定,搞右边initialize
            add_node_with_edge!(initializer_node from equal_node in et_tree);

        } else {
            // 如果没有初始化器，则直接将decl_node连到root,下面连identifier
            add_node_with_edge!(declare_node from root_et_node in et_tree);
            add_node_with_edge!(identifier_node from decl_node in et_tree);
        }
        // 3.有= -> =的左子树为变量名,右子树为值
    }
    0
}


pub fn process_expr_stmt(et_tree:&mut EtTree ,ast_tree: &AstTree, scope_tree:&ScopeTree, expr_stmt_node:u32, scope_node:u32,root_et_node:u32 ){
    let op_expr_node = find!(rule RULE_expression at expr_stmt_node in ast_tree);
    match op_expr_node{
        Some(expr_node) => {
            let expr_node = process_expr(et_tree,ast_tree,scope_tree,expr_node,scope_node,root_et_node);
        },
        None => {
            // 这里什么也不用做，因为这个 epxr_stmt 里面没有 expression
        },
    }
}
pub fn process_expr(et_tree:&mut EtTree ,ast_tree: &AstTree, scope_tree:&ScopeTree, expr_node:u32, scope_node:u32,parent_et_node:u32 ){
    // expr 节点下面 至少有一个 assignment expression 
    let assign_expr_nodes:Vec<u32> =  find_nodes!(rule RULE_assignmentExpression at expr_node in ast_tree);
    let sep_node = add_node_with_edge!({EtNode::new_sep(expr_node)} from parent_et_node in et_tree);
    if assign_expr_nodes.is_empty(){
        panic!("这个 expression {} 里面没有任何 assign_expr",expr_node);
    }
    for &assign_expr_node in assign_expr_nodes.iter(){
        process_assign_expr(et_tree,ast_tree,scope_tree,assign_expr_node,scope_node,sep_node);
    }
    
}
/// assignment expr 是 assignmentOperator( =  /= *= += -= %= <<= >>= &= ^= |= )右边的式子
pub fn process_assign_expr(et_tree:&mut EtTree ,ast_tree: &AstTree, scope_tree:&ScopeTree, assign_expr_node:u32, scope_node:u32,parent_et_node:u32 ){
    let op_assign_operator =find!(rule RULE_assignmentOperator at assign_expr_node in ast_tree);
    match op_assign_operator{
        // 有 term 说明这一层,是 a=3 这样的形式
        Some(assign_operator_node) => {
            let operator_node = direct_node!(at assign_operator_node in ast_tree);
            match (term_id!(at operator_node in ast_tree),operator_node) {
                // ?暂时只支持五个 assign 类算符
                (Assign,assign_operator)=>{
                    let et_assign_node = add_node_with_edge!({EtNode::new_op_assign(assign_expr_node)} from parent_et_node in et_tree );
                    let unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,unary_expr_node,scope_node,et_assign_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_assign_node);
                }
                (MulAssign,mul_assign_operator)=>{
                    // 这里要添加两个node 一个是 赋值 = 一个是 * 
                    let et_mul_assign_node = add_node_with_edge!({EtNode::new_op_mul_assign(scope_node)} from parent_et_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_mul_assign_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_mul_assign_node);
                }
                (DivAssign,div_assign_operator)=>{
                    let et_div_assign_node = add_node_with_edge!({EtNode::new_op_div_assign(scope_node)} from parent_et_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_div_assign_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_div_assign_node);
                }
                (PlusAssign,plus_assign_operator)=>{
                    let et_plus_assign_node = add_node_with_edge!({EtNode::new_op_plus_assign(scope_node)} from parent_et_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_plus_assign_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_plus_assign_node);
                }
                (MinusAssign,minus_assign_operator)=>{
                    let et_minus_assign_node = add_node_with_edge!({EtNode::new_op_minus_assign(scope_node)} from parent_et_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_minus_assign_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_minus_assign_node);
                }
                _ => {
                    panic!("未知 operator in assign expression {} ", assign_operator_node)
                }
            }
        },
        // 无 term 说明这一层啥也没有，直接进入下一层  吧
        None => process_cond_expr(et_tree,ast_tree,scope_tree,direct_node!(at assign_expr_node in ast_tree),scope_node,parent_et_node)
    }
    
}
pub fn process_cond_expr(et_tree:&mut EtTree ,ast_tree: &AstTree, scope_tree:&ScopeTree, cond_expr_node:u32, scope_node:u32,parent_et_node:u32){
    let logical_or_node = find!(rule RULE_logicalOrExpression at cond_expr_node in ast_tree).expect(format!("cond_node_id {}",cond_expr_node).as_str());
    process_logical_or_expr(et_tree, ast_tree, scope_tree, logical_or_node, scope_node, parent_et_node);
}
pub fn process_logical_or_expr(et_tree:&mut EtTree ,ast_tree: &AstTree, scope_tree:&ScopeTree, logical_or_expr_node:u32, scope_node:u32,parent_et_node:u32){
    let logical_and_nodes = find_nodes!(rule RULE_logicalAndExpression at logical_or_expr_node in ast_tree);
    let mut op_last_ep_or_node = None;
    if logical_and_nodes.len()>1{
        for (index,&logical_and_expr_node) in logical_and_nodes.iter().enumerate(){
            // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
            if index != logical_and_nodes.len()-1{
                if op_last_ep_or_node.is_none(){
                    op_last_ep_or_node = Some(add_node_with_edge!({EtNode::new_op_logical_or(logical_or_expr_node)} from parent_et_node in et_tree ));
                }else{
                    let last_ep_or_node = op_last_ep_or_node.unwrap();
                    op_last_ep_or_node = Some(add_node_with_edge!({EtNode::new_op_logical_or(logical_or_expr_node)} from last_ep_or_node in et_tree ));
                }
                process_logical_and_expr(et_tree, ast_tree, scope_tree, logical_and_expr_node, scope_node, op_last_ep_or_node.unwrap());
            }else {
                process_logical_and_expr(et_tree, ast_tree, scope_tree, logical_and_expr_node, scope_node, op_last_ep_or_node.unwrap());
            }
        }
    }else if logical_and_nodes.len()==1 {
        process_logical_and_expr(et_tree, ast_tree, scope_tree,logical_and_nodes[0], scope_node,parent_et_node);
    }else{
        panic!("夭寿了,logical_and_expression 在这个logical_or_expression下一个也没有")
    }
}
pub fn process_logical_and_expr(et_tree:&mut EtTree ,ast_tree: &AstTree, scope_tree:&ScopeTree, logical_and_expr:u32, scope_node:u32,parent_et_node:u32){
    let inclusive_or_nodes = find_nodes!(rule RULE_inclusiveOrExpression at logical_and_expr in ast_tree);
    let mut op_last_ep_logical_and_node = None;
    if inclusive_or_nodes.len()>1{
        for (index,&inclusive_or_node) in inclusive_or_nodes.iter().enumerate(){
            // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
            if index != inclusive_or_nodes.len()-1{
                if op_last_ep_logical_and_node.is_none(){
                    op_last_ep_logical_and_node = Some(add_node_with_edge!({EtNode::new_op_logical_and(logical_and_expr)} from parent_et_node in et_tree ));
                }else{
                    let last_ep_logical_and_node = op_last_ep_logical_and_node.unwrap();
                    op_last_ep_logical_and_node = Some(add_node_with_edge!({EtNode::new_op_logical_and(logical_and_expr)} from last_ep_logical_and_node in et_tree ));
                }
                process_inclusive_or_expr(et_tree, ast_tree, scope_tree, inclusive_or_node, scope_node, op_last_ep_logical_and_node.unwrap());
            }else {
                process_inclusive_or_expr(et_tree, ast_tree, scope_tree, inclusive_or_node, scope_node, op_last_ep_logical_and_node.unwrap());
            }
        }
    }else if inclusive_or_nodes.len()==1 {
        process_inclusive_or_expr(et_tree, ast_tree, scope_tree, inclusive_or_nodes[0], scope_node, parent_et_node)
    }else {
        panic!("夭寿了,inclusive_or_expression 在这个logical_and_expression下一个也没有")
    }

}
pub fn process_inclusive_or_expr(et_tree:&mut EtTree ,ast_tree: &AstTree, scope_tree:&ScopeTree, inclusive_or_expr:u32, scope_node:u32,parent_et_node:u32){
    let exclusive_or_nodes = find_nodes!(rule RULE_exclusiveOrExpression at inclusive_or_expr in ast_tree);
    let mut op_last_ep_inclusive_or_node = None;
    if exclusive_or_nodes.len()>1{
        for (index,&inclusive_or_node) in exclusive_or_nodes.iter().enumerate(){
            // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
            if index != exclusive_or_nodes.len()-1{
                if op_last_ep_inclusive_or_node.is_none(){
                    op_last_ep_inclusive_or_node = Some(add_node_with_edge!({EtNode::new_op_bitwise_xor( inclusive_or_expr)} from parent_et_node in et_tree ));
                }else{
                    let last_ep_inclusive_or_node = op_last_ep_inclusive_or_node.unwrap();
                    op_last_ep_inclusive_or_node = Some(add_node_with_edge!({EtNode::new_op_bitwise_xor( inclusive_or_expr)} from last_ep_inclusive_or_node in et_tree ));
                }
                process_inclusive_or_expr(et_tree, ast_tree, scope_tree, inclusive_or_node, scope_node, op_last_ep_inclusive_or_node.unwrap());
            }else {
                process_inclusive_or_expr(et_tree, ast_tree, scope_tree, inclusive_or_node, scope_node, op_last_ep_inclusive_or_node.unwrap());
            }
        }
    }else if exclusive_or_nodes.len()==1 {
        process_exclusive_or_expr(et_tree, ast_tree, scope_tree, exclusive_or_nodes[0], scope_node, parent_et_node)
    }else {
        panic!("夭寿了,exclusive_or_expression 在这个inclusive_or_expression {} 下一个也没有", inclusive_or_expr)
    }
}
pub fn process_exclusive_or_expr(et_tree:&mut EtTree ,ast_tree: &AstTree, scope_tree:&ScopeTree, exclusive_or_expr_node:u32, scope_node:u32,parent_et_node:u32){
    let and_expr_nodes = find_nodes!(rule RULE_andExpression at exclusive_or_expr_node in ast_tree);
    let mut op_last_ep_and_node = None;
    if and_expr_nodes.len()>1{
        for (index,&inclusive_or_node) in and_expr_nodes.iter().enumerate(){
            // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
            if index != and_expr_nodes.len()-1{
                if op_last_ep_and_node.is_none(){
                    op_last_ep_and_node = Some(add_node_with_edge!({EtNode::new_op_bitwise_xor( exclusive_or_expr_node)} from parent_et_node in et_tree ));
                }else{
                    let last_ep_inclusive_or_node = op_last_ep_and_node.unwrap();
                    op_last_ep_and_node = Some(add_node_with_edge!({EtNode::new_op_bitwise_xor( exclusive_or_expr_node)} from last_ep_inclusive_or_node in et_tree ));
                }
                process_and_expr(et_tree, ast_tree, scope_tree, inclusive_or_node, scope_node, op_last_ep_and_node.unwrap());
            }else {
                process_and_expr(et_tree, ast_tree, scope_tree, inclusive_or_node, scope_node, op_last_ep_and_node.unwrap());
            }
        }
    }else if and_expr_nodes.len()==1 {
        process_and_expr(et_tree, ast_tree, scope_tree, and_expr_nodes[0], scope_node, parent_et_node)
    }else {
        panic!("夭寿了,and_expr 在这个exclusive_or_expr下一个也没有")
    }
}
pub fn process_and_expr(et_tree: &mut EtTree, ast_tree: &AstTree, scope_tree: &ScopeTree, and_expr_node: u32, scope_node: u32, parent_et_node: u32) {
    let equality_expr_nodes = find_nodes!(rule RULE_equalityExpression at and_expr_node in ast_tree);
    let mut op_last_ep_equality_node = None;
    if equality_expr_nodes.len() > 1 {
        for (index, &equality_node) in equality_expr_nodes.iter().enumerate() {
            if index != equality_expr_nodes.len() - 1 {
                if op_last_ep_equality_node.is_none() {
                    op_last_ep_equality_node = Some(add_node_with_edge!({EtNode::new_op_logical_and( and_expr_node)} from parent_et_node in et_tree));
                } else {
                    let last_ep_equality_node = op_last_ep_equality_node.unwrap();
                    op_last_ep_equality_node = Some(add_node_with_edge!({EtNode::new_op_logical_and( and_expr_node)} from last_ep_equality_node in et_tree));
                }
                process_equality_expr(et_tree, ast_tree, scope_tree, equality_node, scope_node, op_last_ep_equality_node.unwrap());
            } else {
                process_equality_expr(et_tree, ast_tree, scope_tree, equality_node, scope_node, op_last_ep_equality_node.unwrap());
            }
        }
    } else if equality_expr_nodes.len() == 1 {
        process_equality_expr(et_tree, ast_tree, scope_tree, equality_expr_nodes[0], scope_node, parent_et_node);
    } else {
        panic!("Unexpected condition, no equality_expr found under and_expr");
    }
}

pub fn process_equality_expr(et_tree: &mut EtTree, ast_tree:&AstTree, scope_tree: &ScopeTree, equality_expr_node: u32, scope_node: u32, parent_et_node: u32) {
    let relational_expr_nodes = find_nodes!(rule RULE_relationalExpression at equality_expr_node in ast_tree);
    let op_nodes = find_nodes!(term at equality_expr_node in ast_tree);
    let get_expr_node_of_op_node = |op_node_index|{
        let op_node = op_nodes[op_node_index];
        match term_id!(at op_node in ast_tree) {
            Equal=>{
                EtNode::new_op_equal(equality_expr_node)
            }
            NotEqual=>{
                EtNode::new_op_not_equal( equality_expr_node)
            }
            _=>{
                panic!("Unexpected operator under equality expr ")
            }
        }
    };
    let mut op_last_ep_relational_node = None;
    if relational_expr_nodes.len() > 1 {
        for (index, &relational_node) in relational_expr_nodes.iter().enumerate() {
            // 对于每个 relationalExpression，我们需要判断是否是序列中的最后一个
            // 如果不是最后一个，我们需要创建一个新的 equality 操作符节点并连接到当前节点
            if index != relational_expr_nodes.len() - 1 {
                if op_last_ep_relational_node.is_none() {
                    // 第一个 relationalExpression，创建一个新的 equality 操作符节点
                    op_last_ep_relational_node = Some(add_node_with_edge!({EtNode::new_op_equal( equality_expr_node)} from parent_et_node in et_tree));
                } else {
                    // 中间的 relationalExpression，创建一个新的 equality 操作符节点并连接到上一个操作符节点
                    let last_ep_relational_node = op_last_ep_relational_node.unwrap();
                    op_last_ep_relational_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index)} from last_ep_relational_node in et_tree));
                }
                process_relational_expr(et_tree, ast_tree, scope_tree, relational_node, scope_node, op_last_ep_relational_node.unwrap());
            } else {
                // 最后一个 relationalExpression，连接到最后一个操作符节点
                process_relational_expr(et_tree, ast_tree, scope_tree, relational_node, scope_node, op_last_ep_relational_node.unwrap());
            }
        }
    } else if relational_expr_nodes.len() == 1 {
        // 只有一个 relationalExpression，直接处理这个表达式，不需要创建操作符节点
        process_relational_expr(et_tree, ast_tree, scope_tree, relational_expr_nodes[0], scope_node, parent_et_node);
    } else {
        panic!("Unexpected condition, no relational_expr found under equality_expr");
    }
}

pub fn process_relational_expr(et_tree: &mut EtTree, ast_tree: &AstTree, scope_tree: &ScopeTree, relational_expr_node: u32, scope_node: u32, parent_et_node: u32) {
    let shift_expr_nodes = find_nodes!(rule RULE_shiftExpression at relational_expr_node in ast_tree);
    let op_nodes = find_nodes!(term at relational_expr_node in ast_tree);
    let get_expr_node_of_op_node = |op_node_index| {
        let op_node = op_nodes[op_node_index];
        match term_id!(at op_node in ast_tree) {
            Less => {
                EtNode::new_op_less_than(relational_expr_node)
            },
            Greater=> {
                EtNode::new_op_greater_than( relational_expr_node)
            },
            LessEqual => {
                EtNode::new_op_less_than_or_equal(relational_expr_node)
            },
            GreaterEqual => {
                EtNode::new_op_greater_than_or_equal( relational_expr_node)
            },
            _ => panic!("Unexpected operator in relational expression"),
        }
    };

    let mut op_last_et_shift_op_node = None;
    if shift_expr_nodes.len() > 1 {
        for (index, &shift_node) in shift_expr_nodes.iter().enumerate() {
            if index != shift_expr_nodes.len() - 1 {
                if op_last_et_shift_op_node.is_none() {
                    op_last_et_shift_op_node = Some(add_node_with_edge!({EtNode::new_op_less_than( relational_expr_node)} from parent_et_node in et_tree)); // 默认操作符，实际应根据上下文确定
                } else {
                    let last_ep_shift_node = op_last_et_shift_op_node.unwrap();
                    op_last_et_shift_op_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index)} from last_ep_shift_node in et_tree));
                }
                process_shift_expr(et_tree, ast_tree, scope_tree, shift_node, scope_node, op_last_et_shift_op_node.unwrap());
            } else {
                process_shift_expr(et_tree, ast_tree, scope_tree, shift_node, scope_node, op_last_et_shift_op_node.unwrap());
            }
        }
    } else if shift_expr_nodes.len() == 1 {
        process_shift_expr(et_tree, ast_tree, scope_tree, shift_expr_nodes[0], scope_node, parent_et_node);
    } else {
        panic!("Unexpected condition, no shift_expr found under relational_expr");
    }
}

pub fn process_shift_expr(et_tree: &mut EtTree, ast_tree: &AstTree, scope_tree: &ScopeTree, shift_expr_node: u32, scope_node: u32, parent_et_node: u32) {
    let additive_expr_nodes = find_nodes!(rule RULE_additiveExpression at shift_expr_node in ast_tree);
    let op_nodes = find_nodes!(term at shift_expr_node in ast_tree);
    let get_expr_node_of_op_node = |op_node_index| {
        let op_node = op_nodes[op_node_index];
        match term_id!(at op_node in ast_tree) {
            LeftShift => {
                EtNode::new_op_left_shift(shift_expr_node)
            },
            RightShift => {
                EtNode::new_op_right_shift( shift_expr_node)
            },
            _ => panic!("Unexpected operator in shift expression"),
        }
    };

    let mut op_last_ep_additive_node = None;
    if additive_expr_nodes.len() > 1 {
        for (index, &additive_node) in additive_expr_nodes.iter().enumerate() {
            if index != additive_expr_nodes.len() - 1 {
                if op_last_ep_additive_node.is_none() {
                    // 由于是第一个节点，我们需要基于第一个操作符创建节点
                    op_last_ep_additive_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index)} from parent_et_node in et_tree));
                } else {
                    let last_ep_additive_node = op_last_ep_additive_node.unwrap();
                    op_last_ep_additive_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index)} from last_ep_additive_node in et_tree));
                }
                process_additive_expr(et_tree, ast_tree, scope_tree, additive_node, scope_node, op_last_ep_additive_node.unwrap());
            } else {
                // 最后一个节点使用同样的方法连接
                process_additive_expr(et_tree, ast_tree, scope_tree, additive_node, scope_node, op_last_ep_additive_node.unwrap());
            }
        }
    } else if additive_expr_nodes.len() == 1 {
        // 只有一个 additiveExpression，直接处理这个表达式，不需要创建操作符节点
        process_additive_expr(et_tree, ast_tree, scope_tree, additive_expr_nodes[0], scope_node, parent_et_node);
    } else {
        panic!("Unexpected condition, no additive_expr found under shift_expr");
    }
}

pub fn process_additive_expr(et_tree: &mut EtTree, ast_tree: &AstTree, scope_tree: &ScopeTree, additive_expr_node: u32, scope_node: u32, parent_et_node: u32) {
    let multiplicative_expr_nodes = find_nodes!(rule RULE_multiplicativeExpression at additive_expr_node in ast_tree);
    let op_nodes = find_nodes!(term at additive_expr_node in ast_tree);
    let get_expr_node_of_op_node = |op_node_index| {
        let op_node = op_nodes[op_node_index];
        match term_id!(at op_node in ast_tree) {
            Plus => {
                EtNode::new_op_add(additive_expr_node)
            },
            Minus => {
                EtNode::new_op_sub( additive_expr_node) },
            _ => panic!("Unexpected operator in additive expression"),
        }
    };

    let mut op_last_et_op_node = None;
    if multiplicative_expr_nodes.len() > 1 {
        for (index, &multiplicative_node) in multiplicative_expr_nodes.iter().enumerate() {
            if index != multiplicative_expr_nodes.len() - 1 {
                if op_last_et_op_node.is_none() {
                    // 由于是第一个节点，我们需要基于第一个操作符创建节点
                    op_last_et_op_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index)} from parent_et_node in et_tree));
                } else {
                    let last_ep_multiplicative_node = op_last_et_op_node.unwrap();
                    // 注意：每个操作符对应一个操作节点，索引应调整为基于操作符的实际位置
                    op_last_et_op_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index)} from last_ep_multiplicative_node in et_tree));
                }
                process_multiplicative_expr(et_tree, ast_tree, scope_tree, multiplicative_node, scope_node, op_last_et_op_node.unwrap());
            } else {
                // 最后一个节点使用同样的方法连接
                process_multiplicative_expr(et_tree, ast_tree, scope_tree, multiplicative_node, scope_node, op_last_et_op_node.unwrap());
            }
        }
    } else if multiplicative_expr_nodes.len() == 1 {
        // 只有一个 multiplicativeExpression，直接处理这个表达式，不需要创建操作符节点
        process_multiplicative_expr(et_tree, ast_tree, scope_tree, multiplicative_expr_nodes[0], scope_node, parent_et_node);
    } else {
        panic!("Unexpected condition, no multiplicative_expr found under additive_expr");
    }
}

pub fn process_multiplicative_expr(et_tree: &mut EtTree, ast_tree: &AstTree, scope_tree: &ScopeTree, multiplicative_expr_node: u32, scope_node: u32, parent_et_node: u32) {
    let cast_expr_nodes = find_nodes!(rule RULE_castExpression at multiplicative_expr_node in ast_tree);
    let op_nodes = find_nodes!(term at multiplicative_expr_node in ast_tree);
    let get_expr_node_of_op_node = |op_node_index| {
        let op_node = op_nodes[op_node_index];
        match term_id!(at op_node in ast_tree) {
            Star => {
                EtNode::new_op_mul(multiplicative_expr_node)
            },
            Divide => {
                EtNode::new_op_div( multiplicative_expr_node)
            },
            Modulo => {
                EtNode::new_op_mod(multiplicative_expr_node)
            },
            _ => panic!("Unexpected operator in multiplicative expression"),
        }
    };

    let mut op_last_ep_cast_node = None;
    if cast_expr_nodes.len() > 1 {
        for (index, &cast_node) in cast_expr_nodes.iter().enumerate() {
            if index != cast_expr_nodes.len() - 1 {
                if op_last_ep_cast_node.is_none() {
                    // 第一个 castExpression，基于第一个操作符创建节点
                    op_last_ep_cast_node = Some(add_node_with_edge!({get_expr_node_of_op_node(0)} from parent_et_node in et_tree));
                } else {
                    let last_ep_cast_node = op_last_ep_cast_node.unwrap();
                    // 注意：每个操作符对应一个操作节点，索引应调整为基于操作符的实际位置
                    op_last_ep_cast_node = Some(add_node_with_edge!({get_expr_node_of_op_node(index)} from last_ep_cast_node in et_tree));
                }
                process_cast_expr(et_tree, ast_tree, scope_tree, cast_node, scope_node, op_last_ep_cast_node.unwrap());
            } else {
                // 最后一个节点使用同样的方法连接
                process_cast_expr(et_tree, ast_tree, scope_tree, cast_node, scope_node, op_last_ep_cast_node.unwrap());
            }
        }
    } else if cast_expr_nodes.len() == 1 {
        // 只有一个 castExpression，直接处理这个表达式，不需要创建操作符节点
        process_cast_expr(et_tree, ast_tree, scope_tree, cast_expr_nodes[0], scope_node, parent_et_node);
    } else {
        panic!("Unexpected condition, no cast_expr found under multiplicative_expr");
    }
}

pub fn process_cast_expr(et_tree: &mut EtTree, ast_tree: &AstTree, scope_tree: &ScopeTree, cast_expr_node: u32, scope_node: u32, parent_et_node: u32) {
    // 检查 castExpression 节点是否是类型转换的情况
    if let Some(type_name_node) = find!(rule RULE_typeName at cast_expr_node in ast_tree) {
        // 如果存在 typeName，说明是类型转换的情况
        let type_sym = SymbolIndex::new(scope_node,node!(at type_name_node in ast_tree).text.clone());
        let cast_node = add_node_with_edge!({EtNode::new_op_cast( cast_expr_node)} from parent_et_node in et_tree);
        // 添加 cast op 节点的左节点，这是个 type symbol 
        add_node_with_edge!({EtNode::new_symbol( scope_node,type_sym)} from cast_node in et_tree);
        
        // 递归处理 castExpression
        let child_cast_expr_node = find!(rule RULE_castExpression at cast_expr_node in ast_tree).expect(format!("在 节点 {} 下找不到 castExpr",type_name_node).as_str());
        process_cast_expr(et_tree, ast_tree, scope_tree, child_cast_expr_node, scope_node, cast_node);
    } else if let Some(unary_expr_node) = find!(rule RULE_unaryExpression at cast_expr_node in ast_tree) {
        // 如果是 unaryExpression，直接处理
        process_unary_expr(et_tree, ast_tree, scope_tree, unary_expr_node, scope_node, parent_et_node);
    } else {
        panic!("Unexpected condition in cast_expr");
    }
}

pub fn process_unary_expr(et_tree: &mut EtTree, ast_tree: &AstTree, scope_tree: &ScopeTree, unary_expr_node: u32, scope_node: u32, parent_et_node: u32) {
    let get_expr_node_of_unary_op_node = |op_node| {
        match term_id!(at op_node in ast_tree) {
            And => EtNode::new_op_addr_of( unary_expr_node),
            Star => EtNode::new_op_deref( unary_expr_node),
            Plus => EtNode::new_op_positive( unary_expr_node),
            Minus => EtNode::new_op_negative( unary_expr_node),
            Tilde => EtNode::new_op_bitwise_not( unary_expr_node),
            Not => EtNode::new_op_logical_and( unary_expr_node),
            _ => panic!("Unexpected unary operator"),
        }
    };
    // 检查是否存在一元操作符
    if let Some(unary_operator_node) = find!(rule RULE_unaryOperator at unary_expr_node in ast_tree) {
        let unary_operator_node = find!(rule RULE_unaryOperator at unary_operator_node in ast_tree).unwrap();
        let op_node = add_node_with_edge!({get_expr_node_of_unary_op_node(unary_operator_node)} from parent_et_node in et_tree);
        
        // 一元操作符后跟的是 unaryExpression
        let child_cast_expr_node = find!(rule RULE_castExpression at unary_expr_node in ast_tree).unwrap();
        process_cast_expr(et_tree, ast_tree, scope_tree, child_cast_expr_node, scope_node, op_node);
    } else if let Some(postfix_expr_node) = find!(rule RULE_postfixExpression at unary_expr_node in ast_tree) {
        // 如果是 postfixExpression，直接处理
        process_postfix_expr(et_tree, ast_tree, scope_tree, postfix_expr_node, scope_node, parent_et_node);
    } else {
        panic!("Unexpected condition in unary_expr");
    }
}

pub fn process_postfix_expr(et_tree: &mut EtTree, ast_tree: &AstTree, scope_tree: &ScopeTree, postfix_expr_node: u32, scope_node: u32, parent_et_node: u32){
    if let Some(expr_node) = find!(rule RULE_expression at postfix_expr_node in ast_tree){
        //说明这是个带下标的语法 with subscript
        let primary_expr_node= find!(rule RULE_primaryExpression at postfix_expr_node in ast_tree).unwrap();
        process_primary_expr(et_tree, ast_tree, scope_tree, primary_expr_node, scope_node, parent_et_node);
        process_expr(et_tree, ast_tree, scope_tree, expr_node, scope_node, parent_et_node);
    }else if let Some(arg_expr_list_node) = find!(rule RULE_argumentExpressionList at postfix_expr_node in ast_tree){
        //说明这是个函数调用的语法 call
        let et_call_node =  add_node_with_edge!({EtNode::new_op_call( postfix_expr_node)} from parent_et_node in et_tree);
        let primary_expr_node= find!(rule RULE_primaryExpression at postfix_expr_node in ast_tree).unwrap();
        process_primary_expr(et_tree, ast_tree, scope_tree, primary_expr_node, scope_node, et_call_node);
        process_arg_expr_list(et_tree, ast_tree, scope_tree, arg_expr_list_node, scope_node, et_call_node);
    }else if let Some(_dot_node) = find!(term Dot at postfix_expr_node in ast_tree){
        //说明这是个结构体成员访问的语法 dot member access 
        let et_dot_member_node =  add_node_with_edge!({EtNode::new_op_dot_member( postfix_expr_node)} from parent_et_node in et_tree);
        let primary_expr_node= find!(rule RULE_primaryExpression at postfix_expr_node in ast_tree).unwrap();
        let ident_node= find!(term Identifier at postfix_expr_node in ast_tree).unwrap();
        process_primary_expr(et_tree, ast_tree, scope_tree, primary_expr_node, scope_node, et_dot_member_node);
        process_ident(et_tree, ast_tree, scope_tree, ident_node, scope_node, et_dot_member_node,Def_Or_Use::Use);
    }else if let Some(_arrow_node) = find!(term Arrow at postfix_expr_node in ast_tree) {
        //说明这是个结构体成员访问的语法 arrow member access 
        let et_arrow_member_node =  add_node_with_edge!({EtNode::new_op_arrow_member( postfix_expr_node)} from parent_et_node in et_tree);
        let primary_expr_node= find!(rule RULE_primaryExpression at postfix_expr_node in ast_tree).unwrap();
        let ident_node= find!(term Identifier at postfix_expr_node in ast_tree).unwrap();
        process_primary_expr(et_tree, ast_tree, scope_tree, primary_expr_node, scope_node, et_arrow_member_node);
        process_ident(et_tree, ast_tree, scope_tree, ident_node, scope_node, et_arrow_member_node,Def_Or_Use::Use);
    }else if let Some(_string_node) = find!(term PlusPlus at postfix_expr_node in ast_tree){
        //说明这是个++的语法 
        let et_plusplus_node =  add_node_with_edge!({EtNode::new_op_right_plusplus( postfix_expr_node)} from parent_et_node in et_tree);
        let primary_expr_node= find!(rule RULE_primaryExpression at postfix_expr_node in ast_tree).expect(format!("process_postfix_expr error at ast_node{}",postfix_expr_node).as_str());
        process_primary_expr(et_tree, ast_tree, scope_tree, primary_expr_node, scope_node, et_plusplus_node);
    }else if let Some(_string_node) = find!(term MinusMinus at postfix_expr_node in ast_tree){
        //说明这是个--的语法 
        let et_minusminus_node =  add_node_with_edge!({EtNode::new_op_minusminus( postfix_expr_node)} from parent_et_node in et_tree);
        let primary_expr_node= find!(rule RULE_primaryExpression at postfix_expr_node in ast_tree).unwrap();
        process_primary_expr(et_tree, ast_tree, scope_tree, primary_expr_node, scope_node, et_minusminus_node);
    }else if let Some(primary_expr_node) = find!(rule RULE_primaryExpression at postfix_expr_node in ast_tree){
        process_primary_expr(et_tree, ast_tree, scope_tree, primary_expr_node, scope_node, parent_et_node)
    }
}
pub fn process_arg_expr_list(et_tree: &mut EtTree, ast_tree: &AstTree, scope_tree: &ScopeTree, arg_expr_list_node: u32, scope_node: u32, parent_et_node: u32){
    let assign_expr_nodes = find_nodes!(rule RULE_assignmentExpression at arg_expr_list_node in ast_tree);
    for assign_expr_node in assign_expr_nodes {
        process_assign_expr(et_tree, ast_tree, scope_tree, assign_expr_node, scope_node, parent_et_node)
    }
}
pub fn process_primary_expr(et_tree: &mut EtTree, ast_tree: &AstTree, scope_tree: &ScopeTree, primary_expr_node: u32, scope_node: u32, parent_et_node: u32){
    if let Some(const_node) = find!(term Constant at primary_expr_node in ast_tree){
        println!("constant {}",const_node);
        process_constant(et_tree, ast_tree, scope_tree, const_node, scope_node, parent_et_node, Def_Or_Use::Use);
    }else if let Some(ident_node) = find!(term Identifier at primary_expr_node in ast_tree){
        println!("ident {}",ident_node);
        process_ident(et_tree, ast_tree, scope_tree, ident_node, scope_node, parent_et_node, Def_Or_Use::Use);
    }else if let Some(expr_node) = find!(rule RULE_expression at primary_expr_node in ast_tree){
        println!("expr found under {}",primary_expr_node );
        process_expr(et_tree, ast_tree, scope_tree, expr_node, scope_node, parent_et_node);
    }else if let Some(string_node) = find!(term StringLiteral at primary_expr_node in ast_tree){
        process_constant(et_tree, ast_tree, scope_tree, string_node, scope_node, parent_et_node, Def_Or_Use::Use);
    }
}

/// 会把表达式中的符号添加到 symtab 中
/// ? 这个过程并不需要符号表，因为符号表是用来检查 def use 是否合法的，比如变量在 定义前被使用了就是非法
pub fn process_ident(et_tree:&mut EtTree , ast_tree: &AstTree,scope_tree:&ScopeTree,ident_node:u32,scope_node:u32,parent_et_node:u32 ,def_or_use:Def_Or_Use) {
    let sym_name = node!(at ident_node in ast_tree).text.clone();
    // let sym_idx = SymbolIndex::new(scope_node, symbol_name);

    let sym_struct = SymbolIndex::new(scope_node, sym_name);
    // let symbol = symtab.add(symbol_struct);
    add_node_with_edge!({EtNode::Symbol {sym:sym_struct,ast_node:ident_node, text:String::new() }} from parent_et_node in et_tree);
}
pub fn process_constant(et_tree:&mut EtTree , ast_tree: &AstTree,scope_tree:&ScopeTree,const_node:u32,scope_node:u32,parent_et_node:u32 ,def_or_use:Def_Or_Use) {
    let sym_name = node!(at const_node in ast_tree).text.clone();
    // let sym_idx = SymbolIndex::new(scope_node, symbol_name);

    let sym_struct = SymbolIndex::new(scope_node, sym_name);
    // let symbol = symtab.add(symbol_struct);
    add_node_with_edge!({EtNode::Symbol {sym:sym_struct,ast_node:const_node, text:String::new() }} from parent_et_node in et_tree);
}


pub fn symbol_def_use_order_check(et_tree:&mut EtTree , ast_tree: &AstTree,scope_tree:&ScopeTree,ident_node:u32,scope_node:u32,src_ast_node_in_scope_node:u32,l_or_r_val:Def_Or_Use)->u32{
    todo!()
    // let sym_name = node!(at ident_node in ast_tree).text.clone();
    // // let sym_idx = SymbolIndex::new(scope_node, symbol_name);

    // let sym_struct = Symbol::new(scope_node, sym_name);
    // // let symbol = symtab.add(symbol_struct);

    // match (symtab.get(&sym_struct.sym_idx),l_or_r_val){
    //     (None, L_or_R_Val::LValue) => {
    //         // 这种情况是找到了该符号，也就是说之前定义过此符号，如果定义过此符号

    //     },
    //     (None, L_or_R_Val::RValue) => {
    //         // 如果没有找到这个符号，并且还是个右值，那么就应该直接报错了
    //         panic!("{} 在 {} 没有被定义", sym_struct.sym_idx.symbol_name,);
    //     },
    //     (Some(_), L_or_R_Val::LValue) => ,
    //     (Some(_), L_or_R_Val::RValue) => todo!(),
    // }

    // let et_node_struct :EtNode = EtNode::new(ident_node);
    // let et_node = add_node!(et_node_struct to et_tree);
    // et_node

}