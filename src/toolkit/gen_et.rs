use std::fmt::Debug;
use std::ops::{AddAssign, DivAssign, MulAssign};
use std::{mem, panic};
use std::thread::scope;

use clap::ValueEnum;
use petgraph::{operator, Directed, Graph};
use petgraph::stable_graph::{NodeIndex, StableGraph};

use crate::antlr_parser::clexer::{And, Arrow, Constant, DivAssign, Dot, Equal, Greater, GreaterEqual, Identifier, LeftShift, Less, LessEqual, Minus, MinusAssign, MinusMinus, MulAssign, Not, NotEqual, Plus, PlusAssign, PlusPlus, RightShift, Star, StringLiteral, Tilde};
use crate::antlr_parser::cparser::{Assign, RULE_additiveExpression, RULE_andExpression, RULE_argumentExpressionList, RULE_assignmentExpression, RULE_assignmentOperator, RULE_castExpression, RULE_equalityExpression, RULE_exclusiveOrExpression, RULE_expression, RULE_inclusiveOrExpression, RULE_logicalAndExpression, RULE_logicalOrExpression, RULE_multiplicativeExpression, RULE_postfixExpression, RULE_primaryExpression, RULE_relationalExpression, RULE_shiftExpression, RULE_typeName, RULE_unaryExpression, RULE_unaryOperator};
use crate::toolkit::context;
use crate::{add_edge, add_node, add_node_with_edge, direct_node, find, find_nodes, node, rule_id, term_id};

use super::ast_node::{self, find_neighbors_term_ast};
use super::symbol_table::SymbolIndex;
use super::{ast_node::AstTree, scope_node::{self, ScopeTree}, symbol_table::{self, Symbol, SymbolTable}};

pub type EtTree = StableGraph<EtNode,(),Directed,u32>;
pub enum Def_Or_Use{
    Def, Use
}
pub enum EtNode{
    // et 树的terminal 要么是一个 Constant ，要么是一个 SymbolIndex 
    // 而 et 树的 non-terminal node 要么是 root 要么是一个 op 
    Operator{op: ExprOp,ast_node:u32,text:String}, 
    // 在这里 constant 也是一个 Symbol ，到时候在 SymbolField 里面加上 Constant 标记 就可以了
    Constant{const_sym:Symbol,ast_node:u32,text:String },
    Symbol{sym:Symbol,ast_node:u32,text:String},
    // 考虑到 可能出现  a=3,b=2; 这样的语句，因此需要规定一个Separator
    Separator{ast_node:u32,text:String}, 
}
enum ExprOp{
    Mul,
    Add,
    Sub,
    Div,
    Assign,
    LogicalOr,
    LogicalAnd,
    LogicalNot,
    BitwiseOr,
    BitwiseAnd,
    BitwiseXor,
    BitwiseNot,
    Eq,
    NEq,
    Less,
    Greater,
    LEq,
    GEq,
    LShift,
    RShift,
    Mod,
    Cast,
    Call,
    Negative,
    Positive,
    AddrOf,
    Deref,
    DotMember,
    ArrowMember,
    PlusPlus,
    MinusMinus,
    MulAssign,
    DivAssign,
    PlusAssign,
    MinusAssign
}
impl Debug for ExprOp{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Mul => write!(f, "*"),
            Self::Add => write!(f, "+"),
            Self::Sub => write!(f, "-"),
            Self::Div => write!(f, "/"),
            Self::Assign => write!(f, "="),
            Self::LogicalOr => write!(f, "//"),
            Self::LogicalAnd => write!(f, "&&"),
            Self::LogicalNot => write!(f, "!"),
            Self::BitwiseOr => write!(f, "|"),
            Self::BitwiseAnd => write!(f, "&"),
            Self::BitwiseXor => write!(f, "^"),
            Self::BitwiseNot => write!(f, "~"),
            Self::Eq => write!(f, "="),
            Self::NEq => write!(f, "!="),
            Self::Less => write!(f, "<"),
            Self::Greater => write!(f, ">"),
            Self::LEq => write!(f, "<="),
            Self::GEq => write!(f, ">="),
            Self::LShift => write!(f, "<<"),
            Self::RShift => write!(f, ">>"),
            Self::Mod => write!(f, "%"),
            Self::Cast => write!(f, "Cast"),
            Self::Call => write!(f, "Call"),
            Self::Negative => write!(f, "-"),
            Self::Positive => write!(f, "+"),
            Self::AddrOf => write!(f, "&"),
            Self::Deref => write!(f, "*"),
            Self::DotMember => write!(f, "DotMember"),
            Self::ArrowMember => write!(f, "ArrowMember"),
            Self::PlusPlus => write!(f, "++"),
            Self::MinusMinus => write!(f, "--"),
            Self::MulAssign => write!(f,"*="),
            Self::DivAssign => write!(f,"/="),
            Self::PlusAssign => write!(f,"+="),
            Self::MinusAssign => write!(f,"-="),
        }
    }
}

impl EtNode{
    pub fn new_op_add(ast_node:u32)->Self{
        EtNode::Operator { op:ExprOp::Add,ast_node,text:String::new()}
    }
    pub fn new_op_sub(ast_node:u32)->Self{
        EtNode::Operator { op:ExprOp::Sub,ast_node,text:String::new()}
    }
    pub fn new_op_div(ast_node:u32)->Self{
        EtNode::Operator { op:ExprOp::Div,ast_node,text:String::new()}
    }
    pub fn new_op_mul(ast_node:u32)->Self{
        EtNode::Operator { op:ExprOp::Mul,ast_node,text:String::new()}
    }
    pub fn new_op_assign(ast_node:u32)->Self{
        EtNode::Operator { op:ExprOp::Assign,ast_node,text:String::new()}
    }
    pub fn new_sep(ast_node:u32)->Self{
        EtNode::Separator{ast_node,text:String::new()}
    }
    pub fn new_op_logical_or(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::LogicalOr ,ast_node,text:String::new()}
    }
    pub fn new_op_logical_and(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::LogicalAnd ,ast_node,text:String::new()}
    }
    pub fn new_op_logical_not(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::LogicalNot ,ast_node,text:String::new()}
    }
    pub fn new_op_bitwise_or(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::BitwiseOr ,ast_node,text:String::new()}
    }
    pub fn new_op_bitwise_xor(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::BitwiseXor ,ast_node,text:String::new()}
    }
    pub fn new_op_bitwise_and(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::BitwiseAnd ,ast_node,text:String::new()}
    }
    pub fn new_op_bitwise_not(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::BitwiseNot ,ast_node,text:String::new()}
    }
    pub fn new_op_mul_assign(ast_node:u32)->Self{
    EtNode::Operator { op: ExprOp::MulAssign ,ast_node,text:String::new()}        
    }
    pub fn new_op_minus_assign(ast_node:u32)->Self{
    EtNode::Operator { op: ExprOp::MinusAssign,ast_node,text:String::new()}        
    }
    pub fn new_op_div_assign(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::DivAssign ,ast_node,text:String::new()}        
    }
    pub fn new_op_plus_assign(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::PlusAssign ,ast_node,text:String::new()}
    }
    //你必须确保这个symbol 是一个 constant
    pub fn new_constant(ast_node:u32,const_symbol : Symbol)->Self{
        EtNode::Constant { const_sym: const_symbol ,ast_node,text:String::new()}
    }
    pub fn new_symbol(ast_node:u32,symbol : Symbol)->Self{
        EtNode::Constant { const_sym: symbol,ast_node,text:String::new() }
    }
    pub fn new_op_equal(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::Eq ,ast_node,text:String::new()}
    }
    pub fn new_op_not_equal(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::NEq ,ast_node,text:String::new()}
    }
    pub fn new_op_less_than(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::Less ,ast_node,text:String::new()}
    }
    pub fn new_op_greater_than(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::Greater ,ast_node,text:String::new()}
    }
    pub fn new_op_less_than_or_equal(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::LEq ,ast_node,text:String::new()}
    }
    pub fn new_op_greater_than_or_equal(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::GEq ,ast_node,text:String::new()}
    }
    pub fn new_op_left_shift(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::LShift ,ast_node,text:String::new()}
    }
    pub fn new_op_right_shift(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::RShift ,ast_node,text:String::new()}
    }
    pub fn new_op_mod(ast_node:u32)->Self{
        EtNode::Operator { op: ExprOp::Mod ,ast_node,text:String::new()}
    }
    pub fn new_op_cast(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::Cast ,ast_node,text:String::new()}
    }
    pub fn new_op_call(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::Call ,ast_node,text:String::new()}
    }
    pub fn new_op_negative(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::Negative ,ast_node,text:String::new()}
    }
    pub fn new_op_positive(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::Positive ,ast_node,text:String::new()}
    }
    pub fn new_op_addr_of(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::AddrOf ,ast_node,text:String::new()}
    }
    pub fn new_op_deref(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::Deref ,ast_node,text:String::new()}
    }
    pub fn new_op_dot_member(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::DotMember ,ast_node,text:String::new()}
    }
    pub fn new_op_arrow_member(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::ArrowMember ,ast_node,text:String::new()}
    }
    pub fn new_op_plusplus(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::PlusPlus ,ast_node,text:String::new()}
    }
    pub fn new_op_minusminus(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::MinusMinus ,ast_node,text:String::new()}
    }
    pub fn load_et_node_text(&mut self) {
        let et_node = match self {
            EtNode::Operator { op, ast_node, text } => ast_node,
            EtNode::Constant { const_sym, ast_node, text } => ast_node,
            EtNode::Symbol { sym, ast_node, text } => ast_node,
            EtNode::Separator { ast_node, text } => ast_node,
        };
        let new_str=match self {
            EtNode::Operator { op, ast_node, text }=> text.clone(),
            EtNode::Constant { const_sym, ast_node, text } => text.clone(),
            EtNode::Symbol { sym, ast_node, text } => text.clone(),
            EtNode::Separator { ast_node, text } => text.clone(),
        };
        let _  = mem::replace(match self {
                EtNode::Operator { op, ast_node, text } => text,
                EtNode::Constant { const_sym, ast_node, text } => text,
                EtNode::Symbol { sym, ast_node, text } => text,
                EtNode::Separator { ast_node, text } => text,
            },
            new_str);
        }
    pub fn load_ast_node_text(&mut self,ast_tree: &AstTree) {
        if let EtNode::Separator { ast_node, text } = self {
            let ast_node=*ast_node;
            let _=mem::replace(text,node!(at ast_node in ast_tree).text.clone());
        }
    }
}
impl Debug for EtNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Operator { op, ast_node, text } =>
                write!(f,"{:?}",op),
            Self::Constant { const_sym, ast_node, text } => 
                write!(f,"{}",const_sym.sym_idx.symbol_name),
            Self::Symbol { sym, ast_node, text } =>
                write!(f,"{}",sym.sym_idx.symbol_name),
            Self::Separator { ast_node, text } =>{
                write!(f,"{}",text)
            }
        }
    }
}
// 这个文件中的函数都返回子树的 根节点

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
    let sep_node = add_node!({EtNode::new_sep(expr_node)} to et_tree);
    if assign_expr_nodes.is_empty(){
        panic!("这个 expression {} 里面没有任何 assign_expr",expr_node);
    }
    for &assign_expr_node in assign_expr_nodes.iter(){
        process_assign_expr(et_tree,ast_tree,scope_tree,assign_expr_node,scope_node,sep_node);
    }
    
}
/// assignment expr 是 assignmentOperator( =  /= *= += -= <<= >>= &= ^= |= )右边的式子
pub fn process_assign_expr(et_tree:&mut EtTree ,ast_tree: &AstTree, scope_tree:&ScopeTree, assign_expr_node:u32, scope_node:u32,parent_et_node:u32 ){
    let op_assign_operator =find!(rule RULE_assignmentOperator at assign_expr_node in ast_tree);
    match op_assign_operator{
        // 有 term 说明这一层,是 a=3 这样的形式
        Some(assign_operator_node) => {
            let operator_node = direct_node!(at assign_operator_node in ast_tree);
            match (term_id!(at operator_node in ast_tree),operator_node) {
                // ?暂时只支持五个 assign 类算符
                (Assign,assign_operator)=>{
                    let et_assign_node = add_node_with_edge!({EtNode::new_op_assign(scope_node)} from parent_et_node in et_tree );
                    let unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,unary_expr_node,scope_node,et_assign_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_assign_node);
                }
                (MulAssign,mul_assign_operator)=>{
                    // 这里要添加两个node 一个是 赋值 = 一个是 * 
                    let et_assign_node = add_node_with_edge!({EtNode::new_op_mul_assign(scope_node)} from parent_et_node in et_tree );
                    let et_mul_node = add_node_with_edge!({EtNode::new_op_mul(scope_node)} from et_assign_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_assign_node);
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_mul_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_assign_node);
                }
                (DivAssign,div_assign_operator)=>{
                    let et_assign_node = add_node_with_edge!({EtNode::new_op_assign(scope_node)} from parent_et_node in et_tree );
                    let et_div_node = add_node_with_edge!({EtNode::new_op_div(scope_node)} from et_assign_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_assign_node);
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_div_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_assign_node);
                }
                (PlusAssign,plus_assign_operator)=>{
                    let et_assign_node = add_node_with_edge!({EtNode::new_op_assign(scope_node)} from parent_et_node in et_tree );
                    let et_add_node = add_node_with_edge!({EtNode::new_op_add(scope_node)} from et_assign_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_assign_node);
                    process_unary_expr(et_tree,ast_tree,scope_tree,left_unary_expr_node,scope_node,et_add_node);
                    process_assign_expr(et_tree,ast_tree,scope_tree,right_assign_expr_ndoe,scope_node,et_assign_node);
                }
                (MinusAssign,minus_assign_operator)=>{
                    let et_assign_node = add_node_with_edge!({EtNode::new_op_assign(scope_node)} from parent_et_node in et_tree );
                    let et_sub_node = add_node_with_edge!({EtNode::new_op_sub(scope_node)} from et_assign_node in et_tree );

                    let left_unary_expr_node = find!(rule RULE_unaryExpression at assign_expr_node in ast_tree).unwrap();
                    let right_assign_expr_ndoe = find!(rule RULE_assignmentExpression at assign_expr_node in ast_tree).unwrap();
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
                EtNode::new_op_sub( additive_expr_node)
            },
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
    if let Some(type_cast_node) = find!(rule RULE_typeName at cast_expr_node in ast_tree) {
        // 如果存在 typeName，说明是类型转换的情况
        let type_sym = Symbol::new(scope_node,node!(at type_cast_node in ast_tree).text.clone());
        let cast_node = add_node_with_edge!({EtNode::new_op_cast( cast_expr_node)} from parent_et_node in et_tree);
        // 添加 cast op 节点的左节点，这是个 type symbol 
        add_node_with_edge!({EtNode::new_symbol( scope_node,type_sym)} from cast_node in et_tree);
        
        // 递归处理 castExpression
        let child_cast_expr_node = find!(rule RULE_castExpression at type_cast_node in ast_tree).unwrap();
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
        let et_plusplus_node =  add_node_with_edge!({EtNode::new_op_plusplus( postfix_expr_node)} from parent_et_node in et_tree);
        let primary_expr_node= find!(rule RULE_primaryExpression at postfix_expr_node in ast_tree).unwrap();
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

    let sym_struct = Symbol::new(scope_node, sym_name);
    // let symbol = symtab.add(symbol_struct);
    add_node_with_edge!({EtNode::Symbol {sym:sym_struct,ast_node:ident_node, text:String::new() }} from parent_et_node in et_tree);
}
pub fn process_constant(et_tree:&mut EtTree , ast_tree: &AstTree,scope_tree:&ScopeTree,const_node:u32,scope_node:u32,parent_et_node:u32 ,def_or_use:Def_Or_Use) {
    let sym_name = node!(at const_node in ast_tree).text.clone();
    // let sym_idx = SymbolIndex::new(scope_node, symbol_name);

    let sym_struct = Symbol::new(scope_node, sym_name);
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