use anyhow::{anyhow, Context, Result};
use rand::{thread_rng, Rng};
use strum_macros::EnumIs;
use std::fmt::Debug;
use std::hash::{DefaultHasher, Hash, Hasher};
use std::{mem, u32};

use super::ast_node::AstTree;
use super::etc::dfs_with_predicate;
use super::field::{Fields, Type};
use super::symtab::{ RcSymIdx, SymIdx, WithBorrow};
use crate::toolkit::dot::Config;
use crate::toolkit::etc::generate_png_by_graph;
use crate::{debug_info_red, direct_child_nodes, node, node_mut};
use petgraph::stable_graph::StableDiGraph;

pub type EtTree = StableDiGraph<EtNode, EtEdge, u32>;

#[derive(Clone)]
pub struct EtEdge{
    pub et_edge_type: EtEdgeType
}
#[derive(Clone,EnumIs)]
pub enum EtEdgeType{
    Direct,
    Deleted
}

impl Debug for EtEdgeType{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Direct => write!(f, ""),
            Self::Deleted => write!(f, "Deleted"),
        }
    }
}
impl Debug for EtEdge{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "{:?}",self.et_edge_type)
    }
}

#[derive(Clone,Hash)]
pub enum DeclOrDefOrUse {
    DeclDef { type_ast_node:u32 ,is_const:bool },
    Use,
    Def 
}
impl From<EtEdgeType> for EtEdge{
    fn from(et_edge_type: EtEdgeType) -> Self {
        Self { et_edge_type }
    }
}
#[derive(Clone,EnumIs)]
pub enum EtNodeType {
    // et 树的terminal 要么是一个 literal ，要么是一个 SymbolIndex
    // 而 et 树的 non-terminal node 要么是 root 要么是一个 op
    Operator { op:ExprOp, ast_node:u32, text:String ,op_rc_symidx:Option<RcSymIdx> },
    // 在这里 literal 也是一个 Symbol ，到时候在 SymbolField 里面加上 literal 标记 就可以了
    Literal { rc_literal_symidx:RcSymIdx, ast_node:u32, text:String },
    // Def_Or_Use 是一个枚举类型，要么是 Def 要么是 Use
    Symbol { rc_symidx:RcSymIdx, ast_node:u32, text:String, decldef_def_or_use:DeclOrDefOrUse },
    // array symbol 一个 array 是 array symbol
    // ArraySym{sym_idx:SymbolIndex,ast_node:u32,text:String,def_or_use:Def_Or_Use},
    // // 考虑到 可能出现  a=3,b=2; 这样的语句，因此需要规定一个Separator
    Separator { ast_node:u32, text:String },
    //需要declarator来声明变量
}
impl EtNode{
    /// replace the symidx in the et_node_type *mention* will ret err when node type is not constant or symbol operator
    pub fn replace_symidx(&mut self,symidx:RcSymIdx) -> Result<()>{
        match &mut self.et_node_type{
            EtNodeType::Operator { op, ast_node, text, op_rc_symidx: op_symidx } => {
                *op_symidx = Some(symidx);
            },
            EtNodeType::Literal { rc_literal_symidx: literal_symidx, ast_node, text } => {
                *literal_symidx = symidx;
            },
            EtNodeType::Symbol { rc_symidx: sym_idx, ast_node, text, decldef_def_or_use } => {
                *sym_idx  = symidx;
            },
            _ => {
                return Err(anyhow!("can't replace the symidx of sep node"))
            }
        }
        Ok(())
    }
}
#[derive(Clone)]
pub struct EtNode {
    dims:Option<Vec<Option<RcSymIdx>>>,
    ty:Option<Type>,
    pub et_node_type:EtNodeType,
    pub hash:Option<isize>,
    pub cached_rc_symidx: Option<Option<RcSymIdx>>,
    pub et_ret_symidx_vec: Option<Vec<RcSymIdx>>,
    pub common_eliminated:bool,
    pub equivalent_symidx_vec:Vec<RcSymIdx>,
}
pub trait EtHash{
    fn update_hash(&mut self,et_node:u32) ;
    fn deprecate_hash(&mut self,et_node:u32);
    fn lazy_delete(&mut self,et_node:u32);
    fn _update_hash(&mut self,et_node:u32);
}
const ET_HASH_MODULUS:isize =  10000000;
impl EtHash for EtTree{
    fn deprecate_hash(&mut self,et_node:u32){
        node_mut!(at et_node in self).hash = None;
    }
    fn lazy_delete(&mut self,et_node:u32) {
        node_mut!(at et_node in self).common_eliminated = true;
    }
    fn _update_hash(&mut self,et_node:u32){
        let child_nodes = direct_child_nodes!(at et_node in self with_predicate {|e| !e.weight().et_edge_type.is_deleted()});
        match &node!(at et_node in self).et_node_type{
            EtNodeType::Operator { op, ast_node, text, op_rc_symidx: op_symidx } => {
                match op{
                    ExprOp::Mul => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1*h2) % ET_HASH_MODULUS);
                    },
                    ExprOp::Add => {
                        assert!(child_nodes.len() == 2);
                        // generate_png_by_graph(self,"et_tree".to_string(),&[Config::NodeIndexLabel,Config::Record]);
                        let h1 = node!(at {child_nodes[0]} in self).hash.with_context(||format!("et_node {} child has no hash",et_node)).unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.with_context(||format!("et_node {} child has no hash",et_node)).unwrap();
                        node_mut!(at et_node in self).hash = Some((h1+h2) % ET_HASH_MODULUS);
                    },
                    ExprOp::Sub => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1-h2) % ET_HASH_MODULUS);
                    },
                    ExprOp::Div => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1*2+h2/2) % ET_HASH_MODULUS);
                    },
                    ExprOp::Assign => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some(((h1*9+h2 + 3)% ET_HASH_MODULUS ) % ET_HASH_MODULUS);
                    },
                    ExprOp::LogicalOr => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^h2 + 120300) % ET_HASH_MODULUS);
                    },
                    ExprOp::LogicalAnd => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^h2+13000) % ET_HASH_MODULUS);
                    },
                    ExprOp::LogicalNot => {
                        assert!(child_nodes.len() == 1);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some(((h1-3243)^10000 + 128311) % ET_HASH_MODULUS);
                    },
                    ExprOp::BitwiseOr => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1|h2+20000) % ET_HASH_MODULUS);
                    },
                    ExprOp::BitwiseAnd => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1&h2+10000) % ET_HASH_MODULUS);
                    },
                    ExprOp::BitwiseXor => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1+h2+10000) % ET_HASH_MODULUS);
                    },
                    ExprOp::BitwiseNot => {
                        assert!(child_nodes.len() == 1);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1+h2+93910) % ET_HASH_MODULUS);
                    },
                    ExprOp::Eq => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^h2+10000) % ET_HASH_MODULUS);
                    },
                    ExprOp::NEq => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^h2-20000) % ET_HASH_MODULUS);
                    },
                    ExprOp::Less => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^h2+30000) % ET_HASH_MODULUS);
                    },
                    ExprOp::Greater => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^h2+40000) % ET_HASH_MODULUS);
                    },
                    ExprOp::LEq => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^h2+50000) % ET_HASH_MODULUS);
                    },
                    ExprOp::GEq => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^h2+60000) % ET_HASH_MODULUS);
                    },
                    ExprOp::LShift => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^h2+70000) % ET_HASH_MODULUS);
                    },
                    ExprOp::RShift => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^h2+80000) % ET_HASH_MODULUS);
                    },
                    ExprOp::Mod => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^h2+9000) % ET_HASH_MODULUS);
                    },
                    ExprOp::Call => {
                        node_mut!(at et_node in self).hash = Some({
                            let rnd:isize = thread_rng().gen();rnd % ET_HASH_MODULUS
                        });
                    },
                    ExprOp::Negative => {
                        assert!(child_nodes.len() == 1);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^11000) % ET_HASH_MODULUS);
                    },
                    ExprOp::Positive => {
                        assert!(child_nodes.len() == 1);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^12000) % ET_HASH_MODULUS);
                    },
                    ExprOp::ArrayIndex => {
                        // 2 situations 1. array decl in func parameter can be only one 
                        match child_nodes.len(){
                            1 => {
                                let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                                node_mut!(at et_node in self).hash = Some((h1+100) % ET_HASH_MODULUS);
                            }
                            2 => {
                                let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                                let h2 = node!(at {child_nodes[1]} in self).hash.unwrap();
                                node_mut!(at et_node in self).hash = Some((h1^h2+100) % ET_HASH_MODULUS);
                            }
                            _ => {
                                panic!()
                            }
                        }
                    },
                    ExprOp::ArrayWrapper => {
                        node_mut!(at et_node in self).hash = Some({
                            let rnd:isize = thread_rng().gen();
                            rnd % ET_HASH_MODULUS
                        });
                    },
                    ExprOp::Cast => {
                        debug_info_red!("find cast? {}",et_node);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^283249) % ET_HASH_MODULUS);
                    }
                    ExprOp::AddrOf => todo!(),
                    ExprOp::Deref => {
                        debug_info_red!("find deref? {}",et_node);
                        let h1 = node!(at {child_nodes[0]} in self).hash.unwrap();
                        node_mut!(at et_node in self).hash = Some((h1^1823849) % ET_HASH_MODULUS);
                    },
                    ExprOp::DotMember => todo!(),
                    ExprOp::ArrowMember => todo!(),
                    ExprOp::LPlusPlus => todo!(),
                    ExprOp::RPlusPlus => todo!(),
                    ExprOp::LMinusMinus => todo!(),
                    ExprOp::RMinusMinus => todo!(),
                    _ => {
                        panic!()
                    }
                }
            },
            EtNodeType::Literal { rc_literal_symidx, ast_node, text } => {
                let mut hasher = DefaultHasher::new();
                {
                    let literal_symidx = rc_literal_symidx.as_ref_borrow();
                    literal_symidx.hash(&mut hasher);
                }
                let hash_val = hasher.finish() as isize;
                node_mut!(at et_node in self).hash = Some(hash_val % ET_HASH_MODULUS);
            },
            EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } => {
                let mut hasher = DefaultHasher::new();
                rc_symidx.as_ref_borrow().hash(&mut hasher);
                decldef_def_or_use.hash(&mut hasher);
                let hash_val = hasher.finish() as isize;
                node_mut!(at et_node in self).hash = Some(hash_val % ET_HASH_MODULUS);
            },
            EtNodeType::Separator { ast_node, text } => {
                // do nothing because sep node don't need to hash 
            },
        }

    }
    /// you should deprecate hash if you want to update it at second time
    fn update_hash(&mut self,et_node:u32) {
        // if node!(at et_node in self).hash.is_some() || node!(at et_node in self).common_eliminated{
        //     return 
        // }
        let dfs_nodes = dfs_with_predicate(self, et_node,|e| !e.weight().et_edge_type.is_deleted());
        for &child_node in dfs_nodes.iter().rev(){
            self._update_hash(child_node);
        }
    }
}

#[derive(Clone,EnumIs)]
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
    Store,
    Load,
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
            Self::Store => write!(f,"Store"),
            Self::Load => write!(f,"Load"),
        }
    }
}
impl From<EtNodeType> for EtNode{
    fn from(et_node_type: EtNodeType) -> Self {
        Self { et_node_type, hash: None, cached_rc_symidx: None, et_ret_symidx_vec: None ,common_eliminated:false, dims: None, ty: None,equivalent_symidx_vec:vec![] }
    }
}

impl EtNodeType {
    pub fn new_store(ast_node:u32) -> Self{ EtNodeType::Operator { op: ExprOp::Store, ast_node, text:String::new(), op_rc_symidx: None }}
    pub fn new_load(ast_node:u32) -> Self{EtNodeType::Operator { op: ExprOp::Load, ast_node, text: String::new(), op_rc_symidx: None }}
    pub fn new_op_array_idx(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::ArrayIndex, ast_node, text:String::new(), op_rc_symidx: None } }
    pub fn new_op_array_wrapper(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::ArrayWrapper, ast_node, text:String::new(), op_rc_symidx: None } }
    pub fn new_op_add(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Add, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_sub(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Sub, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_div(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Div, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_mul(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Mul, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_assign(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Assign, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_sep(ast_node:u32) -> Self { EtNodeType::Separator { ast_node, text:String::new() } }
    pub fn new_op_logical_or(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LogicalOr, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_logical_and(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LogicalAnd, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_logical_not(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LogicalNot, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_bitwise_or(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::BitwiseOr, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_bitwise_xor(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::BitwiseXor, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_bitwise_and(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::BitwiseAnd, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_bitwise_not(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::BitwiseNot, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_mul_assign(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::MulAssign, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_minus_assign(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::MinusAssign, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_div_assign(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::DivAssign, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_plus_assign(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::PlusAssign, ast_node, text:String::new() ,op_rc_symidx:None} }
    //你必须确保这个symbol 是一个 constant
    pub fn new_literal(ast_node:u32, rc_literal_symidx:RcSymIdx) -> Self { EtNodeType::Literal { rc_literal_symidx, ast_node, text:String::new() } }
    pub fn new_symbol(ast_node:u32, rc_symidx:RcSymIdx, def_or_use:DeclOrDefOrUse) -> Self { EtNodeType::Symbol { rc_symidx, ast_node, text:String::new(), decldef_def_or_use:def_or_use } }
    // pub fn new_array_symbol(ast_node:u32,sym_idx:SymbolIndex ,def_or_use:Def_Or_Use)->Self{
    //     EtNakedNode::ArraySym  {sym_idx,ast_node,text:String::new(), def_or_use:def_or_use  }
    // }
    pub fn new_op_equal(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Eq, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_not_equal(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::NEq, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_less_than(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Less, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_greater_than(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Greater, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_less_than_or_equal(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LEq, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_greater_than_or_equal(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::GEq, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_left_shift(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LShift, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_right_shift(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::RShift, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_mod(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Mod, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_cast(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Cast, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_call(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Call, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_negative(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Negative, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_positive(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Positive, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_addr_of(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::AddrOf, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_deref(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::Deref, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_dot_member(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::DotMember, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_arrow_member(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::ArrowMember, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_left_plusplus(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LPlusPlus, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_right_plusplus(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::RPlusPlus, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_left_minusminus(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::LMinusMinus, ast_node, text:String::new() ,op_rc_symidx:None} }
    pub fn new_op_right_minusminus(ast_node:u32) -> Self { EtNodeType::Operator { op:ExprOp::RMinusMinus, ast_node, text:String::new() ,op_rc_symidx:None} }
    fn load_et_node_text(&mut self) {
        let _et_node = match self {
            EtNodeType::Operator { op: _, ast_node, text: _, op_rc_symidx: op_symidx } => ast_node,
            EtNodeType::Literal { rc_literal_symidx: _, ast_node, text: _, } => ast_node,
            EtNodeType::Symbol { rc_symidx: _, ast_node, text: _, decldef_def_or_use: _ } => ast_node,
            // EtNakedNode::ArraySym { sym_idx, ast_node, text ,def_or_use} => ast_node,
            EtNodeType::Separator { ast_node, text: _ } => ast_node,
        };
        let new_str = match self {
            EtNodeType::Operator { op: _, ast_node: _, text, op_rc_symidx: op_symidx } => text.clone(),
            EtNodeType::Literal { rc_literal_symidx: _, ast_node: _, text, } => text.clone(),
            EtNodeType::Symbol { rc_symidx: _, ast_node: _, text, decldef_def_or_use: _ } => text.clone(),
            // EtNakedNode::ArraySym { sym_idx, ast_node, text,def_or_use } => text.clone(),
            EtNodeType::Separator { ast_node: _, text } => text.clone(),
        };
        let _ = mem::replace(
            match self {
                EtNodeType::Operator { op: _, ast_node: _, text, op_rc_symidx: op_symidx } => text,
                EtNodeType::Literal { rc_literal_symidx: _, ast_node: _, text, } => text,
                EtNodeType::Symbol { rc_symidx: _, ast_node: _, text, decldef_def_or_use: _ } => text,
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
        } else if let EtNodeType::Symbol { rc_symidx: _, ast_node: _, text, decldef_def_or_use: def_or_use } = self {
            if let DeclOrDefOrUse::DeclDef { type_ast_node, is_const } = def_or_use {
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
            EtNodeType::Operator { op, ast_node: _, text: _, op_rc_symidx: op_symidx } => write!(f, "{:?}", op),
            EtNodeType::Literal { rc_literal_symidx, ast_node: _, text: _, } => {
                write!(f, "literal {}", rc_literal_symidx.as_ref_borrow().symbol_name)
            }
            EtNodeType::Symbol { rc_symidx: sym_idx, ast_node, text, decldef_def_or_use: def_or_use } => {
                write!(f, "{:?} symbol {} {} at {}", def_or_use, text, sym_idx.as_ref_borrow().symbol_name,ast_node)
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
            &DeclOrDefOrUse::DeclDef { type_ast_node: _, is_const } => {
                write!(f, "decl {}",if is_const{"const"}else {""})
            },
            DeclOrDefOrUse::Use => write!(f, "use"),
            DeclOrDefOrUse::Def => write!(f, "def"),
            
        }
    }
}

impl Debug for EtNode {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result { write!(f, "{:?} ty {:?} dims {:?} hash:{:?} {}", self.et_node_type, self.dims,self.ty, self.hash, if self.common_eliminated{"eliminated"}else{""}) }
}

impl EtNode {
    pub fn get_type(&self) -> Result<&Type>{ if self.ty.is_none(){ return Err(anyhow!("have no ty field")) }else { Ok(self.ty.as_ref().unwrap()) }}
    pub fn get_mut_type(&mut self) -> Result<&mut Type>{ if self.ty.is_none(){ return Err(anyhow!("have no ty field")) }else { Ok(self.ty.as_mut().unwrap()) }}
    pub fn add_type(&mut self, ty:Type) {self.ty = Some(ty)}
    pub fn get_dims(&self) -> Result<&Vec<Option<RcSymIdx>>>{ if self.dims.is_none(){ return Err(anyhow!("have no dims field")) }else { Ok(self.dims.as_ref().unwrap()) }}
    pub fn get_mut_dims(&mut self) -> Result<&mut Vec<Option<RcSymIdx>>>{ if self.dims.is_none(){ return Err(anyhow!("have no dims field")) }else { Ok(self.dims.as_mut().unwrap()) }}
    pub fn add_dims(&mut self,dims:Vec<Option<RcSymIdx>>) {self.dims = Some(dims)}
    pub fn has_dims(&self) -> bool {self.dims.is_some()}
    pub fn has_type(&self) -> bool {self.ty.is_some()}
    pub fn load_ast_node_text(&mut self, ast_tree:&AstTree) -> Result<()> { self.et_node_type.load_ast_node_text(ast_tree) }
    pub fn name_text(&self) -> String{
        match &self.et_node_type{
            EtNodeType::Operator { op, ast_node, text, op_rc_symidx: op_symidx } => todo!(),
            EtNodeType::Literal { rc_literal_symidx: const_sym_idx, ast_node, text } => {
                const_sym_idx.as_ref_borrow().symbol_name.clone()
            },
            EtNodeType::Symbol { rc_symidx: sym_idx, ast_node, text, decldef_def_or_use } => {
                sym_idx.as_ref_borrow().symbol_name.clone()
            },
            EtNodeType::Separator { ast_node, text } => todo!(),
        }
    }
}
