use std::fmt::Debug;
use std::mem;
use petgraph:: Directed;
use petgraph::stable_graph::{NodeIndex, StableDiGraph, StableGraph};
use crate::node;
use super::ast_node::AstTree;
use super::symbol_table::{Symbol, SymbolIndex};

pub type EtTree = StableDiGraph<EtNode,(),u32>;

#[derive(Clone)]
pub enum Def_Or_Use{
    Def, Use
}
#[derive(Clone)]
pub enum EtNode{
    // et 树的terminal 要么是一个 Constant ，要么是一个 SymbolIndex 
    // 而 et 树的 non-terminal node 要么是 root 要么是一个 op 
    Operator{op: ExprOp,ast_node:u32,text:String}, 
    // 在这里 constant 也是一个 Symbol ，到时候在 SymbolField 里面加上 Constant 标记 就可以了
    Constant{const_sym_idx:SymbolIndex,ast_node:u32,text:String },
    // Def_Or_Use 是一个枚举类型，要么是 Def 要么是 Use
    Symbol{sym_idx:SymbolIndex,ast_node:u32,text:String,def_or_use:Def_Or_Use},
    // 考虑到 可能出现  a=3,b=2; 这样的语句，因此需要规定一个Separator
    Separator{ast_node:u32,text:String}, 
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
    pub fn new_constant(ast_node:u32,const_symbol : SymbolIndex)->Self{
        EtNode::Constant { const_sym_idx: const_symbol ,ast_node,text:String::new()}
    }
    pub fn new_symbol(ast_node:u32,symbol : SymbolIndex)->Self{
        EtNode::Constant { const_sym_idx: symbol,ast_node,text:String::new() }
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
    pub fn new_op_left_plusplus(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::LPlusPlus ,ast_node,text:String::new()}
    }
    pub fn new_op_right_plusplus(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::RPlusPlus ,ast_node,text:String::new()}
    }
    pub fn new_op_minusminus(ast_node:u32) ->Self{
        EtNode::Operator { op: ExprOp::RMinusMinus ,ast_node,text:String::new()}
    }
    pub fn load_et_node_text(&mut self) {
        let et_node = match self {
            EtNode::Operator { op, ast_node, text } => ast_node,
            EtNode::Constant { const_sym_idx, ast_node, text } => ast_node,
            EtNode::Symbol { sym_idx, ast_node, text ,def_or_use} => ast_node,
            EtNode::Separator { ast_node, text } => ast_node,
        };
        let new_str=match self {
            EtNode::Operator { op, ast_node, text }=> text.clone(),
            EtNode::Constant { const_sym_idx, ast_node, text } => text.clone(),
            EtNode::Symbol { sym_idx, ast_node, text,def_or_use } => text.clone(),
            EtNode::Separator { ast_node, text } => text.clone(),
        };
        let _  = mem::replace(match self {
                EtNode::Operator { op, ast_node, text } => text,
                EtNode::Constant { const_sym_idx, ast_node, text } => text,
                EtNode::Symbol { sym_idx, ast_node, text,def_or_use } => text,
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
            Self::Constant { const_sym_idx, ast_node, text } => 
                write!(f,"{}",const_sym.sym_idx.symbol_name),
            Self::Symbol { sym_idx, ast_node, text, def_or_use } =>
                write!(f,"{}",sym_idx.sym_idx.symbol_name),
            Self::Separator { ast_node, text } =>{
                write!(f,"{}",text)
            }
        }
    }
}
// 这个文件中的函数都返回子树的 根节点