use std::fmt::Debug;
use std::mem;

use petgraph::stable_graph::{NodeIndex, StableDiGraph};
use crate::node;
use super::ast_node::AstTree;
use super::symbol_table:: SymbolIndex;

pub type EtTree<Info> = StableDiGraph<EtNode<Info>,(),u32>;

#[derive(Clone)]
pub enum Def_Or_Use{
    Def{
        type_ast_node: u32,
    }, Use
}
#[derive(Clone)]
pub enum EtNakedNode{
    // et 树的terminal 要么是一个 Constant ，要么是一个 SymbolIndex 
    // 而 et 树的 non-terminal node 要么是 root 要么是一个 op 
    Operator{op: ExprOp,ast_node:u32,text:String}, 
    // 在这里 constant 也是一个 Symbol ，到时候在 SymbolField 里面加上 Constant 标记 就可以了
    Constant{const_sym_idx:SymbolIndex,ast_node:u32,text:String },
    // Def_Or_Use 是一个枚举类型，要么是 Def 要么是 Use
    Symbol{sym_idx:SymbolIndex,ast_node:u32,text:String,def_or_use:Def_Or_Use},
    // 考虑到 可能出现  a=3,b=2; 这样的语句，因此需要规定一个Separator
    Separator{ast_node:u32,text:String}, 
    //需要declarator来声明变量
}
#[derive(Clone)]
pub struct EtNode<Info:Debug+Default+Clone> {
    pub et_naked_node:EtNakedNode,
    pub info : Info
}
#[derive(Clone)]
pub enum ExprOp{
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
    LPlusPlus,
    RPlusPlus,
    LMinusMinus,
    RMinusMinus,
    MulAssign,
    DivAssign,
    PlusAssign,
    MinusAssign,
    ArrayIndex,
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
            Self::LPlusPlus => write!(f, "++(L)"),
            Self::RPlusPlus => write!(f, "++(R)"),
            Self::LMinusMinus => write!(f, "--(L)"),
            Self::RMinusMinus => write!(f, "--(R)"),
            Self::PlusAssign => write!(f, "+="),
            Self::MulAssign => write!(f, "*="),
            Self::MinusAssign=> write!(f, "-="),
            Self::DivAssign => write!(f, "-="),
            Self::ArrayIndex => write!(f, "[]"),
        }
    }
}

impl EtNakedNode{
    pub fn  to_et_node<Info:Debug+Default+Clone>(self)-> EtNode<Info>{
        EtNode::new(self, Info::default())
    }
    pub fn new_op_add(ast_node:u32)->Self{
        EtNakedNode::Operator { op:ExprOp::Add,ast_node,text:String::new()}
    }
    pub fn new_op_sub(ast_node:u32)->Self{
        EtNakedNode::Operator { op:ExprOp::Sub,ast_node,text:String::new()}
    }
    pub fn new_op_div(ast_node:u32)->Self{
        EtNakedNode::Operator { op:ExprOp::Div,ast_node,text:String::new()}
    }
    pub fn new_op_mul(ast_node:u32)->Self{
        EtNakedNode::Operator { op:ExprOp::Mul,ast_node,text:String::new()}
    }
    pub fn new_op_assign(ast_node:u32)->Self{
        EtNakedNode::Operator { op:ExprOp::Assign,ast_node,text:String::new()}
    }
    pub fn new_sep(ast_node:u32)->Self{
        EtNakedNode::Separator{ast_node,text:String::new()}
    }
    pub fn new_op_logical_or(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::LogicalOr ,ast_node,text:String::new()}
    }
    pub fn new_op_logical_and(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::LogicalAnd ,ast_node,text:String::new()}
    }
    pub fn new_op_logical_not(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::LogicalNot ,ast_node,text:String::new()}
    }
    pub fn new_op_bitwise_or(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::BitwiseOr ,ast_node,text:String::new()}
    }
    pub fn new_op_bitwise_xor(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::BitwiseXor ,ast_node,text:String::new()}
    }
    pub fn new_op_bitwise_and(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::BitwiseAnd ,ast_node,text:String::new()}
    }
    pub fn new_op_bitwise_not(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::BitwiseNot ,ast_node,text:String::new()}
    }
    pub fn new_op_mul_assign(ast_node:u32)->Self{
    EtNakedNode::Operator { op: ExprOp::MulAssign ,ast_node,text:String::new()}        
    }
    pub fn new_op_minus_assign(ast_node:u32)->Self{
    EtNakedNode::Operator { op: ExprOp::MinusAssign,ast_node,text:String::new()}        
    }
    pub fn new_op_div_assign(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::DivAssign ,ast_node,text:String::new()}        
    }
    pub fn new_op_plus_assign(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::PlusAssign ,ast_node,text:String::new()}
    }
    //你必须确保这个symbol 是一个 constant
    pub fn new_constant(ast_node:u32,const_symbol : SymbolIndex)->Self{
        EtNakedNode::Constant { const_sym_idx: const_symbol ,ast_node,text:String::new()}
    }
    pub fn new_symbol(ast_node:u32,symbol : SymbolIndex)->Self{
        EtNakedNode::Constant { const_sym_idx: symbol,ast_node,text:String::new() }
    }
    pub fn new_op_equal(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::Eq ,ast_node,text:String::new()}
    }
    pub fn new_op_not_equal(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::NEq ,ast_node,text:String::new()}
    }
    pub fn new_op_less_than(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::Less ,ast_node,text:String::new()}
    }
    pub fn new_op_greater_than(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::Greater ,ast_node,text:String::new()}
    }
    pub fn new_op_less_than_or_equal(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::LEq ,ast_node,text:String::new()}
    }
    pub fn new_op_greater_than_or_equal(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::GEq ,ast_node,text:String::new()}
    }
    pub fn new_op_left_shift(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::LShift ,ast_node,text:String::new()}
    }
    pub fn new_op_right_shift(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::RShift ,ast_node,text:String::new()}
    }
    pub fn new_op_mod(ast_node:u32)->Self{
        EtNakedNode::Operator { op: ExprOp::Mod ,ast_node,text:String::new()}
    }
    pub fn new_op_cast(ast_node:u32) ->Self{
        EtNakedNode::Operator { op: ExprOp::Cast ,ast_node,text:String::new()}
    }
    pub fn new_op_call(ast_node:u32) ->Self{
        EtNakedNode::Operator { op: ExprOp::Call ,ast_node,text:String::new()}
    }
    pub fn new_op_negative(ast_node:u32) ->Self{
        EtNakedNode::Operator { op: ExprOp::Negative ,ast_node,text:String::new()}
    }
    pub fn new_op_positive(ast_node:u32) ->Self{
        EtNakedNode::Operator { op: ExprOp::Positive ,ast_node,text:String::new()}
    }
    pub fn new_op_addr_of(ast_node:u32) ->Self{
        EtNakedNode::Operator { op: ExprOp::AddrOf ,ast_node,text:String::new()}
    }
    pub fn new_op_deref(ast_node:u32) ->Self{
        EtNakedNode::Operator { op: ExprOp::Deref ,ast_node,text:String::new()}
    }
    pub fn new_op_dot_member(ast_node:u32) ->Self{
        EtNakedNode::Operator { op: ExprOp::DotMember ,ast_node,text:String::new()}
    }
    pub fn new_op_arrow_member(ast_node:u32) ->Self{
        EtNakedNode::Operator { op: ExprOp::ArrowMember ,ast_node,text:String::new()}
    }
    pub fn new_op_left_plusplus(ast_node:u32) ->Self{
        EtNakedNode::Operator { op: ExprOp::LPlusPlus ,ast_node,text:String::new()}
    }
    pub fn new_op_right_plusplus(ast_node:u32) ->Self{
        EtNakedNode::Operator { op: ExprOp::RPlusPlus ,ast_node,text:String::new()}
    }
    pub fn new_op_minusminus(ast_node:u32) ->Self{
        EtNakedNode::Operator { op: ExprOp::RMinusMinus ,ast_node,text:String::new()}
    }
    fn load_et_node_text(&mut self) {
        let et_node = match self {
            EtNakedNode::Operator { op, ast_node, text } => ast_node,
            EtNakedNode::Constant { const_sym_idx, ast_node, text } => ast_node,
            EtNakedNode::Symbol { sym_idx, ast_node, text ,def_or_use} => ast_node,
            EtNakedNode::Separator { ast_node, text } => ast_node,
        };
        let new_str=match self {
            EtNakedNode::Operator { op, ast_node, text }=> text.clone(),
            EtNakedNode::Constant { const_sym_idx, ast_node, text } => text.clone(),
            EtNakedNode::Symbol { sym_idx, ast_node, text,def_or_use } => text.clone(),
            EtNakedNode::Separator { ast_node, text } => text.clone(),
        };
        let _  = mem::replace(match self {
                EtNakedNode::Operator { op, ast_node, text } => text,
                EtNakedNode::Constant { const_sym_idx, ast_node, text } => text,
                EtNakedNode::Symbol { sym_idx, ast_node, text,def_or_use } => text,
                EtNakedNode::Separator { ast_node, text } => text,
            },
            new_str);
        }
    fn load_ast_node_text(&mut self,ast_tree: &AstTree) {
        if let EtNakedNode::Separator { ast_node, text } = self {
            let ast_node=*ast_node;
            let _=mem::replace(text,node!(at ast_node in ast_tree).text.clone());
        }else if let EtNakedNode::Symbol { sym_idx, ast_node, text, def_or_use } = self {
            if let Def_Or_Use::Def { type_ast_node } = def_or_use{
                let type_ast_node=*type_ast_node;
                let _=mem::replace(text,node!(at type_ast_node in ast_tree).text.clone());
            }
        }
    }
}
impl Debug for EtNakedNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            EtNakedNode::Operator { op, ast_node, text } =>
                write!(f,"{:?}",op),
            EtNakedNode::Constant { const_sym_idx, ast_node, text } => 
                write!(f,"{}",const_sym_idx.symbol_name),
            EtNakedNode::Symbol { sym_idx, ast_node, text, def_or_use } =>
                write!(f,"{:?} {} {}",def_or_use,text,sym_idx.symbol_name),
            EtNakedNode::Separator { ast_node, text } =>{
                write!(f,"{}",text)
            }
        }
    }
}

impl Debug for Def_Or_Use{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Def_Or_Use::Def { type_ast_node } => write!(f,"def"),
            Def_Or_Use::Use => write!(f,"use"),
        }
    }
}

impl <Info: Debug+Default + std::clone::Clone> Debug for EtNode<Info>{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{:?} {:?}",self.et_naked_node,self.info)
    }
}

impl <Info:Debug+Default+Clone> EtNode<Info>{
    pub fn new(et_naked_node:EtNakedNode,info:Info)-> EtNode<Info>{
        EtNode{
            et_naked_node,
            info,
        }
    }
    pub fn load_ast_node_text(&mut self,ast_tree: &AstTree) {
        self.et_naked_node.load_ast_node_text(ast_tree)
    }

}
