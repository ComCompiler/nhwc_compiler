
use std::fmt::Debug;
use std:: mem;

use petgraph::stable_graph::{ NodeIndex, StableDiGraph};

use crate::toolkit::ast_node::AstTree;
use crate::toolkit::cfg_edge::CfgEdge;
use crate::node;

use super::instruction::Instruction;

//use crate::toolkit::ast_node::AstNode;

pub type CfgGraph = StableDiGraph<CfgNode,CfgEdge,u32>;

#[derive(Clone)]
pub enum CfgNode {
    Entry {
        ast_node: u32,
        text: String,
        //f 里面调用 函数 c
        //就往 calls in func 里面加入c
        calls_in_func : Vec<u32>,
        instr:Instruction,
    },
    Exit {
        ast_node: u32,
        text: String,
    },
    Branch {
        ast_expr_node: u32,
        text: String,
    },
    Switch{
        ast_expr_node: u32,
        text: String,
    },
    ForLoop{
        ast_before_node:u32,
        ast_mid_node :u32,
        ast_after_node :u32,
        text: String,
    },
    WhileLoop{
        ast_expr_node: u32 ,
        text: String,
    },
    Gather {

    },
    BasicBlock{
        ast_nodes: Vec<u32>,
        text: String,
        // instructions of this basic block (第二步才生成这个 instrs)
        instrs: Vec<Instruction>,
    },
    Func {  }
}
pub trait GetText{
    // fn load_ast_node_text(&mut self,ast_tree : &AstTree){ }
    fn get_text(&self)-> Option<&str>;
}
impl GetText for CfgNode {

    fn get_text(&self)-> Option<&str> {
        match self {
            CfgNode::Entry {  ast_node, text, calls_in_func:_, instr:_  } => {
                if !text.is_empty(){
                    Some(text.as_str())
                }else{
                    if !text.is_empty(){
                        Some(text.as_str())
                    }else{
                        None
                    }
                }
            }
            CfgNode::Exit {  ast_node, text } =>{ 
                if !text.is_empty(){
                    Some(text)
                }else{
                    if !text.is_empty(){
                        Some(text.as_str())
                    }else{
                        None
                    }
                }
            }

            CfgNode::Branch {  ast_expr_node: ast_node, text } => {
                if !text.is_empty(){
                    Some(text.as_str())
                }else{
                    None
                }
            }
            CfgNode::Gather {} => Some(""),
            CfgNode::BasicBlock { ast_nodes, text, instrs } =>{ 
                if !text.is_empty(){
                    Some(text.as_str())
                }else{
                    None
                }
            }
            CfgNode::Func {  } => Some(""),
            CfgNode::ForLoop {  text, ast_before_node, ast_mid_node, ast_after_node } => {
                if !text.is_empty(){
                    Some(text.as_str())
                }else{
                    None
                }
            }
            CfgNode::WhileLoop { ast_expr_node: ast_node, text } => todo!(),
            CfgNode::Switch { ast_expr_node, text } => {
                if !text.is_empty(){
                    Some(text.as_str())
                }else{
                    None
                }
            },
        }
    }
}
impl CfgNode{
    pub fn load_ast_node_text(&mut self,ast_tree :&AstTree){ 
        match self {
            CfgNode::Entry {  ast_node, text, calls_in_func:_, instr:_  } => {
                let ast_node = *ast_node;
                let new_str = node!(at ast_node in ast_tree).text.clone();
                let _ = mem::replace(text, new_str);
            }
            CfgNode::Exit {  ast_node, text } =>{ 
                let ast_node = *ast_node;
                let new_str = node!(at ast_node in ast_tree).text.clone();
                let _ = mem::replace(text, new_str);
            }
            CfgNode::Branch {  ast_expr_node: ast_node, text } => {
                let ast_node = *ast_node;
                let new_str = node!(at ast_node in ast_tree).text.clone();
                let _  = mem::replace(text, new_str);
            }
            CfgNode::Gather {} => {}
            CfgNode::BasicBlock { ast_nodes, text, instrs } =>{ 
                let new_str = {let mut s = "".to_string();
                    for ast_node_idx in ast_nodes{
                        let ast_node = *ast_node_idx;
                        s += node!(at ast_node in ast_tree).text.as_str();
                        s += "\n";
                    }
                    s
                };
                let _ = mem::replace(text, new_str);
            }
            CfgNode::Func {  } => {}
            CfgNode::ForLoop { text, ast_before_node, ast_mid_node, ast_after_node } => {
                let ast_node = *ast_before_node;
                let new_str = node!(at ast_node in ast_tree).text.clone();
                let _  = mem::replace(text, new_str);
            }
            CfgNode::WhileLoop { ast_expr_node, text } =>{
                let ast_node = *ast_expr_node;
                let new_str = node!(at ast_node in ast_tree).text.clone();
                let _  = mem::replace(text, new_str);
            }
            CfgNode::Switch { ast_expr_node, text } => {
                let ast_node = *ast_expr_node;
                let new_str = node!(at ast_node in ast_tree).text.clone();
                let _  = mem::replace(text, new_str);
            },
        }
    }
    pub fn new_bb( ast_nodes:Vec<u32>) -> Self{
        Self::BasicBlock { ast_nodes, text: String::new(), instrs: vec![] }
    }
    pub fn new_direct(ast_node:u32) -> Self{
        Self::Branch { text: String::new(), ast_expr_node: ast_node  }
    }
    pub fn new_func_parent() -> Self{
        Self::Func {  }
    }
    pub fn new_branch(ast_node:u32) -> Self{
        Self::Branch { ast_expr_node:ast_node, text: String::new() }
    }
    pub fn new_for(ast_before_node:u32, ast_mid_node:u32, ast_after_node:u32) -> Self{
        Self::ForLoop { ast_before_node, ast_mid_node,ast_after_node,text: String::new()}
    }
    pub fn new_while(ast_expr_node:u32) -> Self{
        Self::WhileLoop { ast_expr_node, text: String::new() }
    }
    pub fn new_switch(ast_expr_node:u32) -> Self{
        Self::Switch { ast_expr_node, text: String::new() }
    }
}


impl Debug for CfgNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            CfgNode::Entry {  ast_node: ast_node_idx, text, calls_in_func:_, instr} =>
                write!(f,"{} {} \n{} \n{:?}","Entry",ast_node_idx,text,instr),
            CfgNode::Exit {  ast_node: ast_node_idx, text: _ } =>
                write!(f,"{} {} ","Exit",ast_node_idx ),
            CfgNode::Branch {   ast_expr_node: ast_node_idx, text } =>
                write!(f,"{} {} \n{}","Branch",ast_node_idx, text),
            CfgNode::Gather {  } =>
                write!(f,"{} ","Gather"),
            CfgNode::BasicBlock { ast_nodes: _ast_node_idxes, text, instrs } => 
                write!(f,"{} {}\n{:?}","BasicBlock",text,instrs),
            CfgNode::Func {  } => write!(f,"{}","root",),
            CfgNode::ForLoop {  text, ast_before_node, ast_mid_node: _, ast_after_node: _ } => 
                write!(f,"{} {} \n{}","For",ast_before_node, text),
            CfgNode::WhileLoop { ast_expr_node, text } => write!(f,"{} {} \n{}","While",ast_expr_node, text),
            CfgNode::Switch { ast_expr_node, text } => write!(f,"{} {} \n{}","Switch",ast_expr_node, text),
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
//             CfgNode::ForLoop {  text, ast_before_node, ast_mid_node: _, ast_after_node: _ } => 
//                 write!(f,"{} {} \n{}","For",ast_before_node, text),
//             CfgNode::WhileLoop { ast_expr_node, text } => write!(f,"{} {} \n{}","While",ast_expr_node, text),
//             CfgNode::Switch { ast_expr_node, text } => write!(f,"{} {} \n{}","Switch",ast_expr_node, text),
//         }
//     }
// }
