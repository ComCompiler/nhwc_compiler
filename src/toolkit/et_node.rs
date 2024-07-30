use anyhow::{anyhow, Context, Result};
use rand::{thread_rng, Rng};
use strum_macros::{EnumDiscriminants, EnumIs};
use std::fmt::Debug;
use std::hash::{DefaultHasher, Hash, Hasher};
use std::{mem, u32};

use super::ast_node::AstTree;
use super::etc::dfs_with_predicate;
use super::field::{Fields, Type};
use super::symtab::{ RcSymIdx, SymIdx, WithBorrow};
use crate::toolkit::etc::rpo_with_predicate;
use crate::{debug_info_blue, debug_info_red, direct_child_nodes, node, node_mut};
use petgraph::stable_graph::StableDiGraph;

pub type EtTree = StableDiGraph<EtNode, EtEdge, u32>;

#[derive(Clone)]
pub struct EtEdge{
    pub et_edge_type: EtEdgeType
}
#[derive(Clone,EnumIs)]
pub enum EtEdgeType{
    Direct,
    Deleted,
    Chi,
    Mu,
}

impl Debug for EtEdgeType{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Direct => write!(f, ""),
            Self::Deleted => write!(f, "Deleted"),
            Self::Chi => write!(f, "Chi"),
            Self::Mu => write!(f, "Mu"),
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
#[derive(Clone,EnumIs,EnumDiscriminants)]
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
    pub gen_nhwc_cached_rc_symidx: Option<Option<RcSymIdx>>,
    pub et_ret_symidx_vec: Option<Vec<RcSymIdx>>,
    pub common_eliminated:bool,
    pub can_be_common_eliminated:bool,
    pub gvn_evaluated:bool,
    pub gvn_instr_generated:bool,
    pub equivalent_symidx_vec:Vec<RcSymIdx>, // for gvn
}
pub trait EtHash{
    fn update_hash(&mut self,et_node:u32) -> Result<()>;
    fn deprecate_hash(&mut self,et_node:u32);
    fn lazy_delete(&mut self,et_node:u32);
    fn _update_hash(&mut self,et_node:u32) -> Option<isize>;
}
const ET_HASH_MODULUS:isize =  10000000;
impl EtHash for EtTree{
    fn deprecate_hash(&mut self,et_node:u32){
        node_mut!(at et_node in self).hash = None;
    }
    fn lazy_delete(&mut self,et_node:u32) {
        node_mut!(at et_node in self).common_eliminated = true;
    }
    fn _update_hash(&mut self,et_node:u32) -> Option<isize>{
        let child_nodes = direct_child_nodes!(at et_node in self with_predicate {|e| !e.weight().et_edge_type.is_deleted()});
        match &node!(at et_node in self).et_node_type{
            EtNodeType::Operator { op, ast_node, text, op_rc_symidx: op_symidx } => {
                match op{
                    ExprOp::Mul => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1*h2) % ET_HASH_MODULUS );
                        // println!("mul hash {h1} of {} and {h2} of {}",child_nodes[0],child_nodes[1]);
                        // println!("mul hash end {hash:?} ");
                        node_mut!(at et_node in self).hash = hash;
                        hash
                    },
                    ExprOp::Add => {
                        assert!(child_nodes.len() == 2);
                        // generate_png_by_graph(self,"et_tree".to_string(),&[Config::NodeIndexLabel,Config::Record]);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1+h2+21) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::Sub => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1-h2+234) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::Div => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1*2+h2/2) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::Assign => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some(((h1*9+h2 + 24952)% ET_HASH_MODULUS ) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::LogicalOr => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1^h2 + 120300) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::LogicalAnd => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1^h2+13000) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::LogicalNot => {
                        assert!(child_nodes.len() == 1);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let hash = Some(((h1-3243)^10000 + 128311) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::BitwiseOr => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1|h2+8332) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::BitwiseAnd => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1&h2+32481) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::BitwiseXor => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1+h2+32941123) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::BitwiseNot => {
                        assert!(child_nodes.len() == 1);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1+h2+93910) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::Eq => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1^h2+10000) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::NEq => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1^h2-392482) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::Less => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1^h2+93432) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::Greater => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1^h2+38214) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::LEq => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1^h2+3842) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::GEq => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1^h2+32943) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::LShift => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1^h2+70000) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::RShift => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1^h2+80000) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::Mod => {
                        assert!(child_nodes.len() == 2);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some((h1^h2+9000) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::Call => {
                        let hash = Some((et_node as isize + 234)*23425%ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;                     
                        hash
                    },
                    ExprOp::Negative => {
                        assert!(child_nodes.len() == 1);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let hash = Some((h1^11000) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::Positive => {
                        assert!(child_nodes.len() == 1);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let hash = Some((h1^12000) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::ArrayIndex => {
                        // 2 situations 1. array decl in func parameter can be only one 
                        match child_nodes.len(){
                            1 => {
                                let h1 = node!(at {child_nodes[0]} in self).hash?;
                                let hash = Some((h1+932412) % ET_HASH_MODULUS);
                                node_mut!(at et_node in self).hash =hash;
                                hash
                            }
                            2 => {
                                let h1 = node!(at {child_nodes[0]} in self).hash?;
                                let h2 = node!(at {child_nodes[1]} in self).hash?;
                                let hash = Some((h1^(h2*2+23411)+32483721) % ET_HASH_MODULUS);
                                node_mut!(at et_node in self).hash =hash;
                                hash
                            }
                            _ => {
                                panic!()
                            }
                        }
                    },
                    ExprOp::ArrayWrapper => {
                         let hash = Some({
                            let rnd:isize = thread_rng().gen();
                            rnd % ET_HASH_MODULUS
                        });
                        node_mut!(at et_node in self).hash = hash;
                        hash
                    },
                    ExprOp::Cast => {
                        debug_info_red!("find cast? {}",et_node);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let hash = Some((h1^283249) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    }
                    ExprOp::AddrOf => todo!(),
                    ExprOp::Deref => {
                        debug_info_red!("find deref? {}",et_node);
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let hash = Some((h1^1823849) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::Store => {
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let h3 = node!(at {child_nodes[2]} in self).hash?;
                        let hash = Some((h1^328482 + h2 ^2934234 + h3 ^2398423 + 3123 ) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::Load => {
                        if child_nodes.get(0) == None {
                            debug_info_red!("can't find first child node of et_node:{et_node}");
                            return None;
                        }
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let h2 = node!(at {child_nodes[1]} in self).hash?;
                        let hash = Some(((h1+1232332)^h2+23100) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    // no need to implement
                    ExprOp::DotMember => todo!(),
                    ExprOp::ArrowMember => todo!(),
                    ExprOp::LPlusPlus => todo!(),
                    ExprOp::RPlusPlus => todo!(),
                    ExprOp::LMinusMinus => todo!(),
                    ExprOp::RMinusMinus => todo!(),
                    ExprOp::MulAssign => todo!(),
                    ExprOp::DivAssign => todo!(),
                    ExprOp::PlusAssign => todo!(),
                    ExprOp::MinusAssign => todo!(),
                    ExprOp::TransToI32 => {
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let hash = Some(((h1^1493425)+23314) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::TransToF32 => {
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let hash = Some(((h1^239432)+73232) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
                    },
                    ExprOp::TransToI1 => {
                        let h1 = node!(at {child_nodes[0]} in self).hash?;
                        let hash = Some(((h1^182312)+34821) % ET_HASH_MODULUS);
                        node_mut!(at et_node in self).hash =hash;
                        hash
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
                let hash = Some(hash_val % ET_HASH_MODULUS);
                node_mut!(at et_node in self).hash =hash;
                hash
            },
            EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } => {
                let mut hasher = DefaultHasher::new();
                rc_symidx.as_ref_borrow().hash(&mut hasher);
                decldef_def_or_use.hash(&mut hasher);
                let hash_val = hasher.finish() as isize;
                let hash = Some(hash_val % ET_HASH_MODULUS);
                node_mut!(at et_node in self).hash =hash;
                hash
            },
            EtNodeType::Separator { ast_node, text } => {
                // do nothing because sep node don't need to hash 
                let hash = Some({
                let rnd:isize = thread_rng().gen();
                    rnd % ET_HASH_MODULUS
                });
                node_mut!(at et_node in self).hash = hash;
                hash
            },
        }

    }
    /// you should deprecate hash if you want to update it at second time
    fn update_hash(&mut self,et_node:u32) -> Result<()>{
        // if node!(at et_node in self).hash.is_some() || node!(at et_node in self).common_eliminated{
        //     return 
        // }
        let dfs_nodes = rpo_with_predicate(self, et_node,|e| !e.weight().et_edge_type.is_deleted());
        debug_info_blue!("update_hash order {:?}",dfs_nodes);
        for &et_node in dfs_nodes.iter(){
            if self._update_hash(et_node).is_none(){
                return Err(anyhow!("meet none hash of et_node:{et_node} in et_tree"));
            }
        }
        Ok(())
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
    TransToI32,
    TransToF32,
    TransToI1,
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
            Self::TransToI32 => write!(f,"TransI32"),
            Self::TransToF32 => write!(f,"TransF32"),
            Self::TransToI1 => write!(f,"TransBool"),
            // Self::Chi => write!(f,"Chi"),
        }
    }
}
impl From<EtNodeType> for EtNode{
    fn from(et_node_type: EtNodeType) -> Self {
        Self { et_node_type, hash: None, gen_nhwc_cached_rc_symidx: None, et_ret_symidx_vec: None ,common_eliminated:false, dims: None, ty: None,equivalent_symidx_vec:vec![], gvn_evaluated: false, gvn_instr_generated: false, can_be_common_eliminated: true }
    }
}

impl EtNodeType {
    pub fn new_store(ast_node:u32) -> Self{ EtNodeType::Operator { op: ExprOp::Store, ast_node, text:String::new(), op_rc_symidx: None }}
    pub fn new_load(ast_node:u32) -> Self{EtNodeType::Operator { op: ExprOp::Load, ast_node, text: String::new(), op_rc_symidx: None }}
    pub fn new_trans_to(ast_node:u32, ty:&Type) -> Self{
        match ty {
            Type::I32 => {
                EtNodeType::Operator { op: ExprOp::TransToI32, ast_node, text: String::new(), op_rc_symidx: None }
            },
            Type::F32 => {
                EtNodeType::Operator { op: ExprOp::TransToF32, ast_node, text: String::new(), op_rc_symidx: None }
            },
            Type::I1 => {
                EtNodeType::Operator { op: ExprOp::TransToI1, ast_node, text: String::new(), op_rc_symidx: None }
            },
            _ => {panic!()}
        }
    }
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
            let _ = mem::replace(text, node!(at ast_node in ast_tree).op_text.as_ref().unwrap().clone());
        } else if let EtNodeType::Symbol { rc_symidx: _, ast_node: _, text, decldef_def_or_use: def_or_use } = self {
            if let DeclOrDefOrUse::DeclDef { type_ast_node, is_const } = def_or_use {
                let type_ast_node = *type_ast_node;
                let _ = mem::replace(text, node!(at type_ast_node in ast_tree).op_text.as_ref().unwrap().clone());
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
                write!(f, "literal {:?}", rc_literal_symidx)
            }
            EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use: def_or_use } => {
                write!(f, "{:?} symbol {} {:?}", def_or_use, text, rc_symidx)
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
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result { write!(f, "{:?} {} {} {} {} {} {}", 
        self.et_node_type, 
        if self.dims.is_some() {format!("dims {:?}",self.dims.as_ref().unwrap()) } else { "".to_string()},
        if self.ty.is_some() {format!("ty {:?}",self.ty.as_ref().unwrap() )} else {"".to_string()},
        if self.hash.is_some() {format!("hash {}",self.hash.as_ref().unwrap()) } else {"".to_string()}, 
        if self.common_eliminated{"eliminated"}else{""}, 
        if self.gvn_instr_generated{"instr_generated"}else{""}, 
        if self.equivalent_symidx_vec.len()!=0 {format!("eq_symidx:{:?}",self.equivalent_symidx_vec)} else {"".to_string()})
    }
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
