use anyhow::Result;
use strum_macros::EnumIs;
use std::fmt::Debug;
use std::{mem, u32};

use super::ast_node::AstTree;
use super::field::Fields;
use super::symtab::SymIdx;
use crate::node;
use eval::eval;
use petgraph::stable_graph::StableDiGraph;

pub type EtTree = StableDiGraph<EtNode, (), u32>;

#[derive(Clone)]
pub enum DeclOrDefOrUse {
    DeclDef { type_ast_node:u32 },
    Use,
    Def 
}
#[derive(Clone,EnumIs)]
pub enum EtNodeType {
    // et 树的terminal 要么是一个 Constant ，要么是一个 SymbolIndex
    // 而 et 树的 non-terminal node 要么是 root 要么是一个 op
    Operator { op:ExprOp, ast_node:u32, text:String },
    // 在这里 constant 也是一个 Symbol ，到时候在 SymbolField 里面加上 Constant 标记 就可以了
    Constant { const_sym_idx:SymIdx, ast_node:u32, text:String },
    // Def_Or_Use 是一个枚举类型，要么是 Def 要么是 Use
    Symbol { sym_idx:SymIdx, ast_node:u32, text:String, def_or_use:DeclOrDefOrUse },
    // array symbol 一个 array 是 array symbol
    // ArraySym{sym_idx:SymbolIndex,ast_node:u32,text:String,def_or_use:Def_Or_Use},
    // // 考虑到 可能出现  a=3,b=2; 这样的语句，因此需要规定一个Separator
    Separator { ast_node:u32, text:String },
    //需要declarator来声明变量
}
#[derive(Clone)]
pub struct EtNode {
    pub et_node_type:EtNodeType,
    pub info:Fields,
}
#[derive(Clone)]
pub enum ExprOp {
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
    ArrayWrapper,
}
impl ExprOp {
    /// 传入的vec的内部是节点在et_tree里的节点序号
    /// 作用是
    pub fn eval_sub_et_nodes(&self, _et_tree:&mut EtTree, vec:&Vec<SymIdx>) -> SymIdx {
        let sym_idx = match &self {
            ExprOp::Mul => eval(&format!("{}{}{}", &vec[0].symbol_name, "*", &vec[1].symbol_name)).unwrap(),
            ExprOp::Add => eval(&format!("{}{}{}", &vec[0].symbol_name, "+", &vec[1].symbol_name)).unwrap(),
            ExprOp::Sub => eval(&format!("{}{}{}", &vec[0].symbol_name, "-", &vec[1].symbol_name)).unwrap(),
            ExprOp::Div => eval(&format!("{}{}{}", &vec[0].symbol_name, "/", &vec[1].symbol_name)).unwrap(),
            ExprOp::Assign => eval(&format!("{}{}{}", &vec[0].symbol_name, "=", &vec[1].symbol_name)).unwrap(),
            ExprOp::LogicalOr => eval(&format!("{}{}{}", &vec[0].symbol_name, "||", &vec[1].symbol_name)).unwrap(),
            ExprOp::LogicalAnd => eval(&format!("{}{}{}", &vec[0].symbol_name, "&&", &vec[1].symbol_name)).unwrap(),
            ExprOp::LogicalNot => eval(&format!("{}{}{}", &vec[0].symbol_name, "!", &vec[1].symbol_name)).unwrap(),
            ExprOp::BitwiseOr => eval(&format!("{}{}{}", &vec[0].symbol_name, "|", &vec[1].symbol_name)).unwrap(),
            ExprOp::BitwiseAnd => eval(&format!("{}{}{}", &vec[0].symbol_name, "&", &vec[1].symbol_name)).unwrap(),
            ExprOp::BitwiseXor => eval(&format!("{}{}{}", &vec[0].symbol_name, "^", &vec[1].symbol_name)).unwrap(),
            ExprOp::BitwiseNot => eval(&format!("{}{}", &vec[0].symbol_name, "!")).unwrap(), //一元运算符
            ExprOp::Eq => eval(&format!("{}{}{}", &vec[0].symbol_name, "==", &vec[1].symbol_name)).unwrap(),
            ExprOp::NEq => eval(&format!("{}{}{}", &vec[0].symbol_name, "!=", &vec[1].symbol_name)).unwrap(),
            ExprOp::Less => eval(&format!("{}{}{}", &vec[0].symbol_name, "<", &vec[1].symbol_name)).unwrap(),
            ExprOp::Greater => eval(&format!("{}{}{}", &vec[0].symbol_name, ">", &vec[1].symbol_name)).unwrap(),
            ExprOp::LEq => eval(&format!("{}{}{}", &vec[0].symbol_name, "<=", &vec[1].symbol_name)).unwrap(),
            ExprOp::GEq => eval(&format!("{}{}{}", &vec[0].symbol_name, ">=", &vec[1].symbol_name)).unwrap(),
            ExprOp::LShift => eval(&format!("{}{}{}", &vec[0].symbol_name, "<<", &vec[1].symbol_name)).unwrap(),
            ExprOp::RShift => eval(&format!("{}{}{}", &vec[0].symbol_name, ">>", &vec[1].symbol_name)).unwrap(),
            ExprOp::Mod => eval(&format!("{}{}{}", &vec[0].symbol_name, "%", &vec[1].symbol_name)).unwrap(),
            ExprOp::Cast => eval(&format!("({}){}", &vec[0].symbol_name, &vec[1].symbol_name)).unwrap(),
            ExprOp::Call => eval(&format!("{}({})", &vec[0].symbol_name, &vec[1].symbol_name)).unwrap(),
            ExprOp::Negative => eval(&format!("-{}", &vec[0].symbol_name)).unwrap(),
            ExprOp::Positive => eval(&format!("+{}", &vec[0].symbol_name)).unwrap(),
            ExprOp::AddrOf => eval(&format!("&{}", &vec[0].symbol_name)).unwrap(),
            ExprOp::Deref => eval(&format!("*{}", &vec[0].symbol_name)).unwrap(),
            ExprOp::DotMember => eval(&format!("{}.{}", &vec[0].symbol_name, &vec[1].symbol_name)).unwrap(),
            ExprOp::ArrowMember => eval(&format!("{}->{}", &vec[0].symbol_name, &vec[1].symbol_name)).unwrap(),
            ExprOp::LPlusPlus => eval(&format!("{}{}{}", &vec[0].symbol_name, "++", &vec[1].symbol_name)).unwrap(),
            ExprOp::RPlusPlus => eval(&format!("{}{}{}", &vec[0].symbol_name, "--", &vec[1].symbol_name)).unwrap(),
            ExprOp::LMinusMinus => eval(&format!("{}{}{}", &vec[0].symbol_name, "--", &vec[1].symbol_name)).unwrap(),
            ExprOp::RMinusMinus => eval(&format!("{}{}{}", &vec[0].symbol_name, "--", &vec[1].symbol_name)).unwrap(),
            ExprOp::MulAssign => eval(&format!("{}{}{}", &vec[0].symbol_name, "*=", &vec[1].symbol_name)).unwrap(),
            ExprOp::DivAssign => eval(&format!("{}{}{}", &vec[0].symbol_name, "/=", &vec[1].symbol_name)).unwrap(),
            ExprOp::PlusAssign => eval(&format!("{}{}{}", &vec[0].symbol_name, "+=", &vec[1].symbol_name)).unwrap(),
            ExprOp::MinusAssign => eval(&format!("{}{}{}", &vec[0].symbol_name, "-=", &vec[1].symbol_name)).unwrap(),
            ExprOp::ArrayIndex => eval(&format!("{}[{}]", &vec[0].symbol_name, &vec[1].symbol_name)).unwrap(),
            _ => panic!("错误的 Oprator !"),
        };
        SymIdx::new(0, sym_idx.to_string())
    }
}
impl Debug for ExprOp {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Mul => write!(f, "*"),
            Self::Add => write!(f, "+"),
            Self::Sub => write!(f, "-"),
            Self::Div => write!(f, "/"),
            Self::Assign => write!(f, "="),
            Self::LogicalOr => write!(f, "||"),
            Self::LogicalAnd => write!(f, "&&"),
            Self::LogicalNot => write!(f, "!"),
            Self::BitwiseOr => write!(f, "|"),
            Self::BitwiseAnd => write!(f, "&"),
            Self::BitwiseXor => write!(f, "^"),
            Self::BitwiseNot => write!(f, "~"),
            Self::Eq => write!(f, "=="),
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
            Self::MinusAssign => write!(f, "-="),
            Self::DivAssign => write!(f, "/="),
            Self::ArrayIndex => write!(f, "[]"),
            Self::ArrayWrapper => write!(f, "{{}}"),
        }
    }
}

impl EtNodeType {
    pub fn as_et_node(self) -> EtNode { EtNode::new(self) }
    pub fn new_op_array_idx(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::ArrayIndex, ast_node, text:String::new() } }
    pub fn new_op_array_wrapper(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::ArrayWrapper, ast_node, text:String::new() } }
    pub fn new_op_add(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Add, ast_node, text:String::new() } }
    pub fn new_op_sub(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Sub, ast_node, text:String::new() } }
    pub fn new_op_div(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Div, ast_node, text:String::new() } }
    pub fn new_op_mul(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Mul, ast_node, text:String::new() } }
    pub fn new_op_assign(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Assign, ast_node, text:String::new() } }
    pub fn new_sep(ast_node:u32) -> Self { EtNodeType::Separator { ast_node, text:String::new() } }
    pub fn new_op_logical_or(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LogicalOr, ast_node, text:String::new() } }
    pub fn new_op_logical_and(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LogicalAnd, ast_node, text:String::new() } }
    pub fn new_op_logical_not(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LogicalNot, ast_node, text:String::new() } }
    pub fn new_op_bitwise_or(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::BitwiseOr, ast_node, text:String::new() } }
    pub fn new_op_bitwise_xor(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::BitwiseXor, ast_node, text:String::new() } }
    pub fn new_op_bitwise_and(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::BitwiseAnd, ast_node, text:String::new() } }
    pub fn new_op_bitwise_not(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::BitwiseNot, ast_node, text:String::new() } }
    pub fn new_op_mul_assign(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::MulAssign, ast_node, text:String::new() } }
    pub fn new_op_minus_assign(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::MinusAssign, ast_node, text:String::new() } }
    pub fn new_op_div_assign(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::DivAssign, ast_node, text:String::new() } }
    pub fn new_op_plus_assign(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::PlusAssign, ast_node, text:String::new() } }
    //你必须确保这个symbol 是一个 constant
    pub fn new_constant(ast_node:u32, const_symidx:SymIdx) -> Self { EtNodeType::Constant { const_sym_idx:const_symidx, ast_node, text:String::new() } }
    pub fn new_symbol(ast_node:u32, sym_idx:SymIdx, def_or_use:DeclOrDefOrUse) -> Self { EtNodeType::Symbol { sym_idx, ast_node, text:String::new(), def_or_use:def_or_use } }
    // pub fn new_array_symbol(ast_node:u32,sym_idx:SymbolIndex ,def_or_use:Def_Or_Use)->Self{
    //     EtNakedNode::ArraySym  {sym_idx,ast_node,text:String::new(), def_or_use:def_or_use  }
    // }
    pub fn new_op_equal(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Eq, ast_node, text:String::new() } }
    pub fn new_op_not_equal(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::NEq, ast_node, text:String::new() } }
    pub fn new_op_less_than(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Less, ast_node, text:String::new() } }
    pub fn new_op_greater_than(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Greater, ast_node, text:String::new() } }
    pub fn new_op_less_than_or_equal(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LEq, ast_node, text:String::new() } }
    pub fn new_op_greater_than_or_equal(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::GEq, ast_node, text:String::new() } }
    pub fn new_op_left_shift(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LShift, ast_node, text:String::new() } }
    pub fn new_op_right_shift(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::RShift, ast_node, text:String::new() } }
    pub fn new_op_mod(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Mod, ast_node, text:String::new() } }
    pub fn new_op_cast(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Cast, ast_node, text:String::new() } }
    pub fn new_op_call(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Call, ast_node, text:String::new() } }
    pub fn new_op_negative(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Negative, ast_node, text:String::new() } }
    pub fn new_op_positive(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Positive, ast_node, text:String::new() } }
    pub fn new_op_addr_of(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::AddrOf, ast_node, text:String::new() } }
    pub fn new_op_deref(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Deref, ast_node, text:String::new() } }
    pub fn new_op_dot_member(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::DotMember, ast_node, text:String::new() } }
    pub fn new_op_arrow_member(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::ArrowMember, ast_node, text:String::new() } }
    pub fn new_op_left_plusplus(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LPlusPlus, ast_node, text:String::new() } }
    pub fn new_op_right_plusplus(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::RPlusPlus, ast_node, text:String::new() } }
    pub fn new_op_left_minusminus(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LMinusMinus, ast_node, text:String::new() } }
    pub fn new_op_right_minusminus(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::RMinusMinus, ast_node, text:String::new() } }
    fn load_et_node_text(&mut self) {
        let _et_node = match self {
            EtNodeType::Operator { op: _, ast_node, text: _ } => ast_node,
            EtNodeType::Constant { const_sym_idx: _, ast_node, text: _ } => ast_node,
            EtNodeType::Symbol { sym_idx: _, ast_node, text: _, def_or_use: _ } => ast_node,
            // EtNakedNode::ArraySym { sym_idx, ast_node, text ,def_or_use} => ast_node,
            EtNodeType::Separator { ast_node, text: _ } => ast_node,
        };
        let new_str = match self {
            EtNodeType::Operator { op: _, ast_node: _, text } => text.clone(),
            EtNodeType::Constant { const_sym_idx: _, ast_node: _, text } => text.clone(),
            EtNodeType::Symbol { sym_idx: _, ast_node: _, text, def_or_use: _ } => text.clone(),
            // EtNakedNode::ArraySym { sym_idx, ast_node, text,def_or_use } => text.clone(),
            EtNodeType::Separator { ast_node: _, text } => text.clone(),
        };
        let _ = mem::replace(
            match self {
                EtNodeType::Operator { op: _, ast_node: _, text } => text,
                EtNodeType::Constant { const_sym_idx: _, ast_node: _, text } => text,
                EtNodeType::Symbol { sym_idx: _, ast_node: _, text, def_or_use: _ } => text,
                // EtNakedNode::ArraySym { sym_idx, ast_node, text,def_or_use } => text,
                EtNodeType::Separator { ast_node: _, text } => text,
            },
            new_str,
        );
    }
    fn load_ast_node_text(&mut self, ast_tree:&AstTree) -> Result<()> {
        if let EtNodeType::Separator { ast_node, text } = self {
            let ast_node = *ast_node;
            let _ = mem::replace(text, node!(at ast_node in ast_tree).text.clone());
        } else if let EtNodeType::Symbol { sym_idx: _, ast_node: _, text, def_or_use } = self {
            if let DeclOrDefOrUse::DeclDef { type_ast_node } = def_or_use {
                let type_ast_node = *type_ast_node;
                let _ = mem::replace(text, node!(at type_ast_node in ast_tree).text.clone());
            }
        }
        Ok(())
    }
}
impl Debug for EtNodeType {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            EtNodeType::Operator { op, ast_node: _, text: _ } => write!(f, "{:?}", op),
            EtNodeType::Constant { const_sym_idx, ast_node: _, text: _ } => {
                write!(f, "const {}", const_sym_idx.symbol_name)
            }
            EtNodeType::Symbol { sym_idx, ast_node: _, text, def_or_use } => {
                write!(f, "{:?} {} {}", def_or_use, text, sym_idx.symbol_name)
            }
            // EtNakedNode::ArraySym { sym_idx, ast_node, text, def_or_use } =>
            // write!(f,"{:?} {} {}",def_or_use,text,sym_idx.symbol_name),
            EtNodeType::Separator { ast_node: _, text } => {
                write!(f, "Sep {}", text)
            }
        }
    }
}

impl Debug for DeclOrDefOrUse {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            DeclOrDefOrUse::DeclDef { type_ast_node: _ } => write!(f, "decl"),
            DeclOrDefOrUse::Use => write!(f, "use"),
            DeclOrDefOrUse::Def => write!(f, "def"),
        }
    }
}

impl Debug for EtNode {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result { write!(f, "{:?} {:?}", self.et_node_type, self.info) }
}

impl EtNode {
    pub fn new(et_naked_node:EtNodeType) -> EtNode { EtNode { et_node_type:et_naked_node, info:Fields::new() } }
    pub fn load_ast_node_text(&mut self, ast_tree:&AstTree) -> Result<()> { self.et_node_type.load_ast_node_text(ast_tree) }
}
