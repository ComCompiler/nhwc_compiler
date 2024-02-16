use std::ops::{AddAssign, DivAssign, MulAssign};
use std::panic;
use std::thread::scope;

use clap::ValueEnum;
use petgraph::{operator, Directed, Graph};
use petgraph::stable_graph::NodeIndex;

use crate::antlr_parser::clexer::{DivAssign, MinusAssign, MulAssign, PlusAssign};
use crate::antlr_parser::cparser::{Assign, RULE_andExpression, RULE_assignmentExpression, RULE_assignmentOperator, RULE_exclusiveOrExpression, RULE_expression, RULE_inclusiveOrExpression, RULE_logicalAndExpression, RULE_logicalOrExpression, RULE_unaryExpression};
use crate::{add_edge, add_node, add_node_with_edge, direct_node, find, find_nodes, node, rule_id, term_id};

use super::ast_node::{self, find_neighbors_term_ast};
use super::symbol_table::SymbolIndex;
use super::{ast_node::AstTree, scope_node::{self, ScopeTree}, symbol_table::{self, Symbol, SymbolTable}};

pub type EtTree = Graph<EtNode,(),Directed,u32>;
enum Def_Or_Use{
    Def, Use
}
enum EtNode{
    // et 树的terminal 要么是一个 Constant ，要么是一个 SymbolIndex 
    // 而 et 树的 non-terminal node 要么是 root 要么是一个 op 
    Operator{op: ExprOp },
    // 在这里 constant 也是一个 Symbol ，到时候在 SymbolField 里面加上 Constant 标记 就可以了
    Constant{const_sym:Symbol },
    Symbol{sym:Symbol},
    // 考虑到 可能出现  a=3,b=2; 这样的语句，因此需要规定一个Separator
    Separator, 
}
enum ExprOp{
    Mul,
    Add,
    Sub,
    Div,
    Assign,
    LogicalOr,
    LogicalAnd,
    InclusiveOr,
    And,
    ExclusiveOr,
}

impl EtNode{
    pub fn new_op_add()->Self{
        EtNode::Operator { op:ExprOp::Add}
    }
    pub fn new_op_sub()->Self{
        EtNode::Operator { op:ExprOp::Sub}
    }
    pub fn new_op_div()->Self{
        EtNode::Operator { op:ExprOp::Div}
    }
    pub fn new_op_mul()->Self{
        EtNode::Operator { op:ExprOp::Mul}
    }
    pub fn new_op_assign()->Self{
        EtNode::Operator { op:ExprOp::Assign}
    }
    pub fn new_op_sep()->Self{
        EtNode::Separator
    }
    pub fn new_op_logical_and()->Self{
        EtNode::Operator { op: ExprOp::And }
    }
    pub fn new_op_logical_or()->Self{
        EtNode::Operator { op: ExprOp::LogicalOr }
    }
    pub fn new_op_inclusive_or()->Self{
        EtNode::Operator { op: ExprOp::LogicalOr }
    }
    pub fn new_op_and()->Self{
        EtNode::Operator { op: ExprOp::LogicalOr }
    }
    pub fn new_op_exclusive_or()->Self{
        EtNode::Operator { op: ExprOp::LogicalOr }
    }
    //你必须确保这个symbol 是一个 constant
    pub fn new_constant(const_symbol : Symbol)->Self{
        EtNode::Constant { const_sym: const_symbol }
    }
    pub fn new_symbol(symbol : Symbol)->Self{
        EtNode::Constant { const_sym: symbol }
    }
}

// 这个文件中的函数都返回子树的 根节点

fn process_expr_stmt(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, expr_stmt_node:u32, scope_node:u32,root_et_node:u32 ){
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
fn process_expr(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, expr_node:u32, scope_node:u32,parent_et_node:u32 ){
    // expr 节点下面 至少有一个 assignment expression 
    let assign_expr_nodes:Vec<u32> =  find_nodes!(rule RULE_assignmentExpression at expr_node in ast_tree);
    let sep_node = add_node!({EtNode::Separator} to et_tree);
    if assign_expr_nodes.is_empty(){
        panic!("这个 expression {} 里面没有任何 assign_expr",expr_node);
    }
    for &assign_expr_node in assign_expr_nodes.iter(){
        process_assign_expr(et_tree,ast_tree,scope_tree,assign_expr_node,scope_node,sep_node);
    }
    
}
/// assignment expr 是 assignmentOperator( =  /= *= += -= <<= >>= &= ^= |= )右边的式子
fn process_assign_expr(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, assign_expr_node:u32, scope_node:u32,parent_et_node:u32 ){
    let op_assign_operator =find!(rule RULE_assignmentOperator at assign_expr_node in ast_tree);
    match op_assign_operator{
        // 有 term 说明这一层,是 a=3 这样的形式
        Some(assign_operator_node) => {
            let operator_node = direct_node!(at assign_operator_node in ast_tree);
            match (term_id!(at operator_node in ast_tree),operator_node) {
                // ?暂时只支持五个 assign 类算符
                (Assign,assign_operator)=>{
                    let et_assign_node = add_node_with_edge!({EtNode::new_op_assign()} from parent_et_node in et_tree );
                    let unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,unary_expr_node,scope_node,et_assign_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_assign_node);
                }
                (MulAssign,mul_assign_operator)=>{
                    // 这里要添加两个node 一个是 赋值 = 一个是 * 
                    let et_assign_node = add_node_with_edge!({EtNode::new_op_assign()} from parent_et_node in et_tree );
                    let et_mul_node = add_node_with_edge!({EtNode::new_op_mul()} from et_assign_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_assign_node);
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_mul_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_assign_node);
                }
                (DivAssign,div_assign_operator)=>{
                    let et_assign_node = add_node_with_edge!({EtNode::new_op_assign()} from parent_et_node in et_tree );
                    let et_div_node = add_node_with_edge!({EtNode::new_op_div()} from et_assign_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_assign_node);
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_div_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_assign_node);
                }
                (PlusAssign,plus_assign_operator)=>{
                    let et_assign_node = add_node_with_edge!({EtNode::new_op_assign()} from parent_et_node in et_tree );
                    let et_add_node = add_node_with_edge!({EtNode::new_op_add()} from et_assign_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_assign_node);
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_add_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_assign_node);
                }
                (MinusAssign,minus_assign_operator)=>{
                    let et_assign_node = add_node_with_edge!({EtNode::new_op_assign()} from parent_et_node in et_tree );
                    let et_sub_node = add_node_with_edge!({EtNode::new_op_sub()} from et_assign_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_assign_node);
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_sub_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_assign_node);
                }
                _ => {
                    panic!("未知 operator in assign expression {} ", assign_operator_node)
                }
            }
        },
        // 无 term 说明这一层啥也没有，直接进入下一层  吧
        None => todo!(),
    }
    
}
fn process_cond_expr(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, cond_expr_node:u32, scope_node:u32,parent_et_node:u32){
    let logical_or_node = find!(rule RULE_logicalOrExpression at cond_expr_node in ast_tree).unwrap();
    process_logical_or_expr(et_tree, ast_tree, scope_tree, logical_or_node, scope_node, parent_et_node);
}
fn process_logical_or_expr(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, logical_or_expr_node:u32, scope_node:u32,parent_et_node:u32){
    let logical_and_nodes = find_nodes!(rule RULE_logicalAndExpression at logical_or_expr_node in ast_tree);
    let mut op_last_ep_or_node = None;
    if logical_and_nodes.len()>1{
        for (index,&logical_and_expr_node) in logical_and_nodes.iter().enumerate(){
            // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
            if index != logical_and_nodes.len()-1{
                if op_last_ep_or_node.is_none(){
                    op_last_ep_or_node = Some(add_node_with_edge!({EtNode::new_op_logical_or()} from parent_et_node in et_tree ));
                }else{
                    let last_ep_or_node = op_last_ep_or_node.unwrap();
                    op_last_ep_or_node = Some(add_node_with_edge!({EtNode::new_op_logical_or()} from last_ep_or_node in et_tree ));
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
fn process_logical_and_expr(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, logical_and_expr:u32, scope_node:u32,parent_et_node:u32){
    let inclusive_or_nodes = find_nodes!(rule RULE_inclusiveOrExpression at logical_and_expr in ast_tree);
    let mut op_last_ep_logical_and_node = None;
    if inclusive_or_nodes.len()>1{
        for (index,&inclusive_or_node) in inclusive_or_nodes.iter().enumerate(){
            // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
            if index != inclusive_or_nodes.len()-1{
                if op_last_ep_logical_and_node.is_none(){
                    op_last_ep_logical_and_node = Some(add_node_with_edge!({EtNode::new_op_logical_and()} from parent_et_node in et_tree ));
                }else{
                    let last_ep_logical_and_node = op_last_ep_logical_and_node.unwrap();
                    op_last_ep_logical_and_node = Some(add_node_with_edge!({EtNode::new_op_logical_and()} from last_ep_logical_and_node in et_tree ));
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
fn process_inclusive_or_expr(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, inclusive_or_expr:u32, scope_node:u32,parent_et_node:u32){
    let exclusive_or_nodes = find_nodes!(rule RULE_exclusiveOrExpression at inclusive_or_expr in ast_tree);
    let mut op_last_ep_inclusive_or_node = None;
    if exclusive_or_nodes.len()>1{
        for (index,&inclusive_or_node) in exclusive_or_nodes.iter().enumerate(){
            // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
            if index != exclusive_or_nodes.len()-1{
                if op_last_ep_inclusive_or_node.is_none(){
                    op_last_ep_inclusive_or_node = Some(add_node_with_edge!({EtNode::new_op_exclusive_or()} from parent_et_node in et_tree ));
                }else{
                    let last_ep_inclusive_or_node = op_last_ep_inclusive_or_node.unwrap();
                    op_last_ep_inclusive_or_node = Some(add_node_with_edge!({EtNode::new_op_exclusive_or()} from last_ep_inclusive_or_node in et_tree ));
                }
                process_inclusive_or_expr(et_tree, ast_tree, scope_tree, inclusive_or_node, scope_node, op_last_ep_inclusive_or_node.unwrap());
            }else {
                process_inclusive_or_expr(et_tree, ast_tree, scope_tree, inclusive_or_node, scope_node, op_last_ep_inclusive_or_node.unwrap());
            }
        }
    }else if exclusive_or_nodes.len()==1 {
        process_inclusive_or_expr(et_tree, ast_tree, scope_tree, exclusive_or_nodes[0], scope_node, parent_et_node)
    }else {
        panic!("夭寿了,exclusive_or_expression 在这个logical_and_expression下一个也没有")
    }
}
fn process_exclusive_or_expr(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, exclusive_or_expr_node:u32, scope_node:u32,parent_et_node:u32){
    let and_expr_nodes = find_nodes!(rule RULE_andExpression at exclusive_or_expr_node in ast_tree);
    let mut op_last_ep_and_node = None;
    if and_expr_nodes.len()>1{
        for (index,&inclusive_or_node) in and_expr_nodes.iter().enumerate(){
            // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
            if index != and_expr_nodes.len()-1{
                if op_last_ep_and_node.is_none(){
                    op_last_ep_and_node = Some(add_node_with_edge!({EtNode::new_op_exclusive_or()} from parent_et_node in et_tree ));
                }else{
                    let last_ep_inclusive_or_node = op_last_ep_and_node.unwrap();
                    op_last_ep_and_node = Some(add_node_with_edge!({EtNode::new_op_exclusive_or()} from last_ep_inclusive_or_node in et_tree ));
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
fn process_and_expr(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, exclusive_or_expr_node:u32, scope_node:u32,parent_et_node:u32){
    let and_expr_nodes = find_nodes!(rule RULE_andExpression at exclusive_or_expr_node in ast_tree);
    let mut op_last_ep_and_node = None;
    if and_expr_nodes.len()>1{
        for (index,&inclusive_or_node) in and_expr_nodes.iter().enumerate(){
            // 这里要分别处理 第一个节点  中间结点 和 最后一个节点
            if index != and_expr_nodes.len()-1{
                if op_last_ep_and_node.is_none(){
                    op_last_ep_and_node = Some(add_node_with_edge!({EtNode::new_op_exclusive_or()} from parent_et_node in et_tree ));
                }else{
                    let last_ep_inclusive_or_node = op_last_ep_and_node.unwrap();
                    op_last_ep_and_node = Some(add_node_with_edge!({EtNode::new_op_exclusive_or()} from last_ep_inclusive_or_node in et_tree ));
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
fn process_equality_expr()-> u32{
    todo!()

}
fn process_relational_expr()-> u32{
    todo!()

}
fn process_shift_expr()-> u32{
    todo!()

}
fn process_additive_expr()-> u32{
    todo!()

}
fn process_multiplicative_expr()-> u32{
    todo!()

}
fn process_cast_expr()-> u32{
    todo!()

}
fn process_unary_expr(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, unary_expr_node:u32, scope_node:u32,parent_et_node:u32 ){
    todo!()

}
fn process_postfix_expr()-> u32{
    todo!()

}
fn process_primary_expr()-> u32{
    todo!()
}

/// 会把表达式中的符号添加到 symtab 中
/// ? 这个过程并不需要符号表，因为符号表是用来检查 def use 是否合法的，比如变量在 定义前被使用了就是非法
fn process_ident(et_tree:&mut EtTree , ast_tree: &mut AstTree,scope_tree:&ScopeTree,ident_node:u32,scope_node:u32,parent_et_node:u32 ,def_or_use:Def_Or_Use) -> u32{
    let sym_name = node!(at ident_node in ast_tree).text.clone();
    // let sym_idx = SymbolIndex::new(scope_node, symbol_name);

    let sym_struct = Symbol::new(scope_node, sym_name);
    // let symbol = symtab.add(symbol_struct);

    let et_node_struct :EtNode = EtNode::new_symbol(sym_struct);
    let et_node = add_node!(et_node_struct to et_tree);
    add_edge!(parent_et_node to et_node in et_tree);
    et_node
}


fn symbol_def_use_order_check(et_tree:&mut EtTree , ast_tree: &mut AstTree,scope_tree:&ScopeTree,ident_node:u32,scope_node:u32,src_ast_node_in_scope_node:u32,l_or_r_val:Def_Or_Use)->u32{
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

    // let et_node_struct :EtNode = EtNode::new();
    // let et_node = add_node!(et_node_struct to et_tree);
    // et_node

}