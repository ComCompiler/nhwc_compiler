use anyhow::{Result,Context};
use strum_macros::EnumIs;
use std::fmt::Debug;
use std::vec;

use petgraph::stable_graph::StableDiGraph;

use super::symtab::{SymIdx, SymTab, SymTabEdge, SymTabGraph};
use crate::toolkit::cfg_edge::CfgEdge;
use crate::toolkit::field::{Field, FieldsInit};
use crate::{instr, toolkit::ast_node::AstTree};
use crate::{make_field_trait_for_struct, make_specialized_get_field_fn_for_struct, node, reg_field_name};

use super::field::Fields;
use super::nhwc_instr::InstrSlab;

//use crate::toolkit::ast_node::AstNode;

pub type CfgGraph = StableDiGraph<CfgNode, CfgEdge, u32>;
/* 用于指示这个cfg_node 的类型 */
reg_field_name!(CFG_NODE_TYPE:cfg_node_type);
/* jump determinant 例如 branch 类型的cfg_node 会产生一个变量指示 之后究竟是往 IfTrue 边 走 还是往 IfFalse 边走，因此需要加入这个字段
用于存储这个变量的 symidx */
reg_field_name!(JUMP_DET:jump_det);

#[derive(Clone, Debug, EnumIs)]
pub enum CfgNodeType {
    Entry {
        ast_node:u32,
        //f 里面调用 函数 c
        //就往 calls in func 里面加入c
        calls_in_func:Vec<u32>,
    },
    Exit {
        ast_node:u32,
    },
    Branch {
        ast_expr_node:u32,
        // op_true_head_tail_nodes: Option<(u32, u32)>,
        // op_false_head_tail_nodes: Option<(u32, u32)>,
    },
    Switch {
        ast_expr_node:u32,
    },
    ForLoop {
        ast_before_node:u32,
        ast_mid_node:u32,
        ast_after_node:u32,
        // exit_node: Option<u32>,
        // op_body_head_tail_nodes: Option<(u32, u32)>,
    },
    WhileLoop {
        ast_expr_node:u32,
        // exit_node: Option<u32>,
        // body_node: Option<(u32, u32)>,
    },
    Gather {},
    BasicBlock {
        ast_nodes:Vec<u32>,
    },
    Root {},
}
make_field_trait_for_struct!(CfgNodeType);

#[derive(Clone)]
pub struct CfgNode {
    pub phi_instrs:Vec<usize>,
    pub instrs:Vec<usize>,
    pub text:String,
    pub info:Fields,
    // instructions of this basic block (第二步才生成这个 instrs)
}
make_specialized_get_field_fn_for_struct!(
    CfgNode
    { 
        CFG_NODE_TYPE:CfgNodeType,
        JUMP_DET:SymIdx, 
    }
    with fields info);
impl CfgNode {
    pub fn load_ast_node_text(&mut self, ast_tree:&AstTree) -> Result<()> {
        match self.get_mut_cfg_node_type()?.clone() {
            CfgNodeType::Entry { ast_node, calls_in_func: _ } => {
                let node_text = node!(at ast_node in ast_tree).text.as_str();
                self.text += node_text;
                self.text += "\n";
            }
            CfgNodeType::Exit { ast_node } => {
                self.text += node!(at ast_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::Branch {
                ast_expr_node: ast_node,
                // op_true_head_tail_nodes: _true_head_tail_nodes,
                // op_false_head_tail_nodes: _false_head_tail_nodess,
            } => {
                self.text += node!(at ast_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::Gather {} => {}
            CfgNodeType::BasicBlock { ast_nodes } => {
                for ast_node in ast_nodes {
                    let node_text = node!(at ast_node in ast_tree).text.clone();
                    self.text += node_text.as_str();
                    self.text += "\n";
                }
                self.text += "\n";
            }
            CfgNodeType::Root {} => {}
            CfgNodeType::ForLoop {
                ast_before_node,
                ast_mid_node,
                ast_after_node,
                // exit_node: _,
                // op_body_head_tail_nodes: _body_node,
            } => {
                self.text += node!(at ast_before_node in ast_tree).text.as_str();
                self.text += node!(at ast_mid_node in ast_tree).text.as_str();
                self.text += node!(at ast_after_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::WhileLoop {
                ast_expr_node,
                // exit_node: _,
                // body_node: _,
            } => {
                self.text += node!(at ast_expr_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::Switch { ast_expr_node } => {
                self.text += node!(at ast_expr_node in ast_tree).text.as_str();
                self.text += "\n";
            }
        }
        Ok(())
    }
    pub fn load_instrs_text(&mut self, instr_slab:&InstrSlab) {
        self.text +="Instrs \n";
        for &instr in self.instrs.iter() {
            self.text += format!("{:?} \n", instr!(at instr in instr_slab).unwrap()).as_str();
        }
        self.text += "PhiInstrs \n";
        for &phi_instr in self.phi_instrs.iter() {
            self.text += format!("{:?} \n", instr!(at phi_instr in instr_slab).unwrap()).as_str();
        }
    }
    pub fn clear_text(&mut self){
        self.text = String::new();
    }
    pub fn new_bb(ast_nodes:Vec<u32>) -> Self { 
        let mut cfg_node_struct = Self { instrs:vec![], text:String::new(), info:Fields::new_from_single_field(CFG_NODE_TYPE, Box::new(CfgNodeType::BasicBlock { ast_nodes })), phi_instrs: vec![] } ;
        cfg_node_struct.add_def_symidx_vec(vec![]);
        cfg_node_struct
    }
    pub fn new_gather() -> Self { Self { instrs:vec![], text:String::new(), info:Fields::new_from_single_field(CFG_NODE_TYPE, Box::new(CfgNodeType::Gather {})), phi_instrs: vec![] } }
    pub fn new_root() -> Self { Self { instrs:vec![], text:String::new(), info:Fields::new_from_single_field(CFG_NODE_TYPE, Box::new(CfgNodeType::Root {})), phi_instrs: vec![] } }
    pub fn new_branch(ast_node:u32) -> Self {
        Self {
            instrs:vec![],
            text:String::new(),
            info:Fields::new_from_single_field(
                CFG_NODE_TYPE,
                Box::new(CfgNodeType::Branch {
                    ast_expr_node:ast_node,
                    // op_true_head_tail_nodes: true_head_tail_nodes,
                    // op_false_head_tail_nodes: false_head_tail_nodes,
                }),
            ),
            phi_instrs: vec![],
        }
    }
    pub fn new_for(
        ast_before_node:u32,
        ast_mid_node:u32,
        ast_after_node:u32,
        // exit_node: Option<u32>,
        // body_head_tail_nodes: Option<(u32, u32)>,
    ) -> Self {
        Self {
            text:String::new(),
            instrs:vec![],
            info:Fields::new_from_single_field(
                CFG_NODE_TYPE,
                Box::new(CfgNodeType::ForLoop {
                    ast_before_node,
                    ast_mid_node,
                    ast_after_node,
                    // exit_node,
                    // op_body_head_tail_nodes: body_head_tail_nodes,
                }),
            ),
            phi_instrs: vec![],
        }
    }
    pub fn new_while(
        ast_expr_node:u32,
        // exit_node: Option<u32>,
        // body_node: Option<(u32, u32)>,
    ) -> Self {
        Self {
            instrs:vec![],
            text:String::new(),
            info:Fields::new_from_single_field(
                CFG_NODE_TYPE,
                Box::new(CfgNodeType::WhileLoop {
                    ast_expr_node,
                    // exit_node,
                    // body_node,
                }),
            ),
            phi_instrs: vec![],
        }
    }
    pub fn new_switch(ast_expr_node:u32) -> Self { Self { instrs:vec![], text:String::new(), info:Fields::new_from_single_field(CFG_NODE_TYPE, Box::new(CfgNodeType::Switch { ast_expr_node })), phi_instrs: vec![] } }
    pub fn new_entry(ast_node:u32, _instr:usize) -> Self {
        Self { instrs:vec![], text:String::new(), info:Fields::new_from_single_field(CFG_NODE_TYPE, Box::new(CfgNodeType::Entry { ast_node, calls_in_func:vec![] })), phi_instrs: vec![] }
    }
    pub fn new_exit(ast_node:u32) -> Self { Self { text:String::new(), instrs:vec![], info:Fields::new_from_single_field(CFG_NODE_TYPE, Box::new(CfgNodeType::Exit { ast_node })), phi_instrs: vec![] } }
    
}
trait CfgNodeTypeTrait {
    // 3元
    fn debug_for_ternary(&self ,f:&mut std::fmt::Formatter<'_>, node_type:String, field:String, n:CfgNode);
    // 4元
    fn debug_for_quaternary(&self, f:&mut std::fmt::Formatter<'_>, node_type:String, field:String, n:CfgNode);
    // 5元
    fn debug_for_quinary(&self, f:&mut std::fmt::Formatter<'_>, node_type:String, field:String, n:CfgNode, ast_node:u32);
}
impl CfgNodeTypeTrait for CfgNodeType {
    fn debug_for_ternary(&self , f:&mut std::fmt::Formatter<'_>, node_type:String, field:String, n:CfgNode) {
        write!(f, "{{ {} \\| {} \\|{:?} }}", node_type, field, n.info);
    }

    fn debug_for_quaternary(&self, f:&mut std::fmt::Formatter<'_>, node_type:String, field:String, n:CfgNode) {
        write!(f, "{{ {{ {} | {} }} \\| {{ {} \\| {:#?} }} }}", node_type, n.text, field, n.info);
    }

    fn debug_for_quinary(&self, f:&mut std::fmt::Formatter<'_>, node_type:String, field:String, n:CfgNode, ast_node:u32) {
        write!(f, "{{ {{{} {} \\| {} }} \\| {{ {} \\| {:#?} }} }}", node_type, ast_node, n.text, field, n.info);
    }
}
impl Debug for CfgNode {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match &self.get_cfg_node_type().map_err(|e| std::fmt::Error)? {
            // 5元  输出为4格 {{2 | 1} | { 1 | 1}}
            CfgNodeType::Entry { ast_node, calls_in_func: _ } => {
                write!(f, " #{} {} \n {} $ @ # {} \n {:#?} $  ", "Entry", ast_node, self.text, "Fields", self.info)
            }
            // 4元  输出为4格 {{1 @ 1} @ { 1 @ 1}}
            CfgNodeType::Exit { ast_node: _ } => {
                write!(f, " # {} \n {} $ @ # {} \n{:?} $", "Exit", self.text, "Fields", self.info)
            }
            // 5元  输出为4格 {{2 @ 1} @ { 1 @ 1}}
            CfgNodeType::Branch {
                ast_expr_node,
                // op_true_head_tail_nodes: _true_head_tail_nodes, op_false_head_tail_nodes: _false_head_tail_nodes,
            } => {
                write!(f,  " # {} {} \n {} $ @ # {} \n {:#?} $ ", "Branch", ast_expr_node, self.text, "Fields", self.info)
            }
            // 3元  输出为3格 {1 | 1 | 1}
            CfgNodeType::Gather {} => write!(f, " {} @ {}\n {:?} ", "Gather", "Fields", self.info),
            // 4元  输出为4格 {{1 | 1} | { 1 | 1}}
            CfgNodeType::BasicBlock { ast_nodes: _ast_node_idxes } => {
                write!(f, " # {} \n {} $ @ # {} \n{:?} $", "BasicBlock", self.text, "Fields", self.info)
            }
            // 3元  输出为3格 {1 | 1 | 1}
            CfgNodeType::Root {} => write!(f, " {} @ {}\n {:?} ", "root", "Fields", self.info),
            // 5元  输出为4格 {{2 | 1} | { 1 | 1}}
            CfgNodeType::ForLoop { ast_before_node, ast_mid_node: _, ast_after_node: _ } => {
                write!(f,  " #{} {} \n {} $ @ # {} \n {:#?} $ ", "For", ast_before_node, self.text, "Fields", self.info)
            }
            // 5元  输出为4格 {{2 | 1} | { 1 | 1}}
            CfgNodeType::WhileLoop { ast_expr_node } => {
                write!(f,  " #{} {} \n {} $ @ # {} \n {:#?} $ ", "While", ast_expr_node, self.text, "Fields", self.info)
            }
            // 5元  输出为4格 {{2 | 1} | { 1 | 1}}
            CfgNodeType::Switch { ast_expr_node } => {
                write!(f,  " #{} {} \n {} $ @ # {} \n {:#?} $ ", "Switch", ast_expr_node, self.text, "Fields", self.info)
            }
        }
    }
}
// pub trait DetailedDebug {
//     fn detailed_fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result;
// }
// impl DetailedDebug for CfgNode {
//     fn detailed_fmt(&self,ast_tree :&mut Formatter<'_>) -> std::fmt::Result {
//         match self{
//             CfgNode::Entry {  ast_node: ast_node_idx, text:_, calls_in_func:_, instr } =>
//                 write!(f,"{} {} \n{:?}","Entry",ast_node_idx,instr),
//             CfgNode::Exit {  ast_node: ast_node_idx, text: _ } =>
//                 write!(f,"{} {} ","Exit",ast_node_idx ),
//             CfgNode::Branch {   ast_expr_node: ast_node_idx, text } =>
//                 write!(f,"{} {} \n{}","Branch",ast_node_idx, text),
//             CfgNode::Gather {  } =>
//                 write!(f,"{} ","Gather"),
//             CfgNode::BasicBlock { ast_nodes: _ast_node_idxes, text:_, instrs } =>
//                 write!(f,"{} {:?}","BasicBlock",instrs),
//             CfgNode::Func {  } => write!(f,"{}","root",),
//             CfgNode::ForLoop {   ast_before_node, ast_mid_node: _, ast_after_node: _ } =>
//                 write!(f,"{} {} \n{}","For",ast_before_node, text),
//             CfgNode::WhileLoop { ast_expr_node, text } => write!(f,"{} {} \n{}","While",ast_expr_node, text),
//             CfgNode::Switch { ast_expr_node, text } => write!(f,"{} {} \n{}","Switch",ast_expr_node, text),
//         }
//     }
// }

// pub fn add_cfg_node_on_edge(cfg_graph:CfgGraph, cfg_edge:u32){
//     let mut cfg_node_struct = node_mut!(at cfg_node in cfg_graph);
//     cfg_node_struct
// }
