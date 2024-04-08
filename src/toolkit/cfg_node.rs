
use std::fmt::Debug;
use std::vec;

use petgraph::stable_graph::{ NodeIndex, StableDiGraph};

use crate::{element, toolkit::ast_node::AstTree};
use crate::toolkit::cfg_edge::CfgEdge;
use crate::{node, node_mut};

use super::field::Fields;
use super::nhwc_instr::{InstrSlab, Instruction};

//use crate::toolkit::ast_node::AstNode;

pub type CfgGraph = StableDiGraph<CfgNode,CfgEdge,u32>;

#[derive(Clone)]
pub enum CfgNodeType {
    Entry {
        ast_node: u32,
        //f 里面调用 函数 c
        //就往 calls in func 里面加入c
        calls_in_func : Vec<u32>,
    },
    Exit {
        ast_node: u32,
    },
    Branch {
        ast_expr_node: u32,
        op_true_head_tail_nodes:Option<(u32,u32)>,
        op_false_head_tail_nodes:Option<(u32,u32)>,
    },
    Switch{
        ast_expr_node: u32,
    },
    ForLoop{
        ast_before_node:u32,
        ast_mid_node :u32,
        ast_after_node :u32,
        exit_node:Option<u32>,
        op_body_head_tail_nodes:Option<(u32,u32)>,
    },
    WhileLoop{
        ast_expr_node: u32 ,
        exit_node:Option<u32>,
        body_node:Option<(u32,u32)>,
    },
    Gather {
        
    },
    BasicBlock{
        ast_nodes: Vec<u32>,
    },
    Root {  }
}

#[derive(Clone)]
pub struct CfgNode{
    pub cfg_type:CfgNodeType,
    pub instrs: Vec<usize>,
    pub text: String,
    pub info: Fields,
    // instructions of this basic block (第二步才生成这个 instrs)
}
impl CfgNode{
    pub fn load_ast_node_text(&mut self,ast_tree :&AstTree){ 
        match &self.cfg_type {
            CfgNodeType::Entry {  ast_node,  calls_in_func:_, } => {
                let ast_node = *ast_node;
                self.text += node!(at ast_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::Exit {  ast_node} =>{ 
                let ast_node = *ast_node;
                self.text += node!(at ast_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::Branch {  ast_expr_node: ast_node,  op_true_head_tail_nodes: true_head_tail_nodes, op_false_head_tail_nodes: false_head_tail_nodes, } => {
                let ast_node = *ast_node;
                self.text += node!(at ast_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::Gather {} => {}
            CfgNodeType::BasicBlock { ast_nodes} =>{ 
                for ast_node_idx in ast_nodes{
                    let ast_node = *ast_node_idx;
                    self.text += node!(at ast_node in ast_tree).text.as_str();
                    self.text += "\n";
                }
                self.text += "\n";
            }
            CfgNodeType::Root {  } => {}
            CfgNodeType::ForLoop {  ast_before_node, ast_mid_node, ast_after_node, exit_node, op_body_head_tail_nodes: body_node, } => {
                let ast_node = *ast_before_node;
                self.text += node!(at ast_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::WhileLoop { ast_expr_node,  exit_node, body_node, } =>{
                let ast_node = *ast_expr_node;
                self.text += node!(at ast_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::Switch { ast_expr_node,  } => {
                let ast_node = *ast_expr_node;
                self.text += node!(at ast_node in ast_tree).text.as_str();
                self.text += "\n";
            },
        }
    }
    pub fn load_instrs_text(&mut self,instr_slab :&InstrSlab){ 
        for instr in self.instrs.iter(){
            let instr = *instr;
            self.text += format!("{:?} \n ",element!(at instr in instr_slab).unwrap()).as_str();
        }
    }
    pub fn new_bb( ast_nodes:Vec<u32>) -> Self{
        Self{
            cfg_type: CfgNodeType::BasicBlock { ast_nodes},
            instrs: vec![],
            text: String::new(),
            info: Fields::new(),
        }
    }
    pub fn new_gather( ) -> Self{
        Self{
            cfg_type: CfgNodeType::Gather {  } ,
            instrs: vec![],
            text: String::new(),
            info: Fields::new(),
        }
    }
    pub fn new_root() -> Self{
        Self{cfg_type:CfgNodeType::Root {  },instrs:vec![], text: String::new(),info: Fields::new(),
        }
    }
    pub fn new_branch(ast_node:u32, true_head_tail_nodes:Option<(u32,u32)>, false_head_tail_nodes :Option<(u32,u32)>) -> Self{
        Self{ cfg_type:CfgNodeType::Branch { ast_expr_node:ast_node, op_true_head_tail_nodes: true_head_tail_nodes, op_false_head_tail_nodes: false_head_tail_nodes }, instrs: vec![], text: String::new(),info:Fields::new()}
    }
    pub fn new_for(ast_before_node:u32, ast_mid_node:u32, ast_after_node:u32, exit_node:Option<u32>, body_head_tail_nodes:Option<(u32, u32)>) -> Self{
        Self{cfg_type:CfgNodeType::ForLoop { ast_before_node, ast_mid_node,ast_after_node, exit_node, op_body_head_tail_nodes: body_head_tail_nodes, },text: String::new(),instrs: vec![],info:Fields::new()}
    }
    pub fn new_while(ast_expr_node:u32, exit_node:Option<u32>, body_node:Option<(u32,u32)>) -> Self{
        Self{cfg_type:CfgNodeType::WhileLoop { ast_expr_node,  exit_node, body_node, }, instrs: vec![], text: String::new(),info:Fields::new()}
    }
    pub fn new_switch(ast_expr_node:u32) -> Self{
        Self{cfg_type:CfgNodeType::Switch { ast_expr_node }, instrs: vec![], text: String::new(),info:Fields::new()}
    }
    pub fn new_entry(ast_node:u32,instr:usize) -> Self{
        Self{cfg_type:CfgNodeType::Entry { ast_node , calls_in_func: vec![]}, instrs: vec![], text: String::new(),info:Fields::new()}
    }
    pub fn new_exit(ast_node:u32) -> Self{
        Self{
            cfg_type:CfgNodeType::Exit { ast_node},
            text:String::new(),instrs:vec![],info:Fields::new()
        }
    }
}


impl Debug for CfgNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match &self.cfg_type{
            CfgNodeType::Entry {  ast_node,  calls_in_func:_} =>
                write!(f,"{} {} \n{} ","Entry",ast_node,self.text),
            CfgNodeType::Exit {  ast_node, } =>{
                write!(f,"{}  \n{}","Exit", self.text)
            },
            CfgNodeType::Branch {   ast_expr_node,  op_true_head_tail_nodes: true_head_tail_nodes,  op_false_head_tail_nodes: false_head_tail_nodes, } =>{
                write!(f,"{} {} \n{}","Branch",ast_expr_node, self.text)
            },
            CfgNodeType::Gather {  } =>
                write!(f,"{} ","Gather"),
            CfgNodeType::BasicBlock { ast_nodes: _ast_node_idxes,  } =>{
                write!(f,"{}: \n{}","BasicBlock", self.text)
            },
            CfgNodeType::Root {  } => write!(f,"{}","root",),
            CfgNodeType::ForLoop {   ast_before_node, ast_mid_node: _, ast_after_node: _, exit_node, op_body_head_tail_nodes: body_node, } => {
                write!(f,"{} {} \n{}","For",ast_before_node, self.text)
            },
            CfgNodeType::WhileLoop { ast_expr_node,  exit_node, body_node, } => {
                write!(f,"{} {} \n{}","While",ast_expr_node, self.text)
            },
            CfgNodeType::Switch { ast_expr_node,  } => {
                write!(f,"{} {} \n{}","Switch",ast_expr_node, self.text)
            },
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