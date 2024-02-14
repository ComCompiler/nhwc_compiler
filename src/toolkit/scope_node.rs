use std::mem;
use std::fmt::Debug;

use petgraph::stable_graph::{NodeIndex, StableDiGraph};

use crate::node;

use super::{ast_node::AstTree, cfg_node::{CfgGraph, CfgNode, GetText}};


pub type ScopeTree = StableDiGraph<ScopeNode,(),u32>;

#[derive(Clone)]
pub struct ScopeNode{
    pub ast_node:u32,
    pub text:String
}
impl GetText for ScopeNode {
    fn get_text(&self)-> Option<&str> {
        if !self.text.is_empty(){
            Some(self.text.as_str())
        }else {
            None
        }
    }
}
impl ScopeNode {
    pub fn load_ast_node_text(&mut self, ast_tree: &AstTree) {
        let ast_node = self.ast_node;
        let new_str = node!(at ast_node in ast_tree).text.clone();
        let _  = mem::replace(&mut self.text, new_str);
    }
}
// impl ScopeNode{
//     fn load_cfg_node_text(&mut self,cfg_graph : &CfgGraph){
//         let new_str = {
//             let mut s = "".to_string();
//             for &cfg_node in &self.cfg_nodes{
//                 s += node!(at cfg_node in cfg_graph).get_text().unwrap();
//                 s += "\n";
//             }
//             s
//         };
//         let _ = mem::replace(&mut self.text, new_str);
//     }
// }

impl Debug for ScopeNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{:?} {}",self.ast_node,self.text)
    }
}

