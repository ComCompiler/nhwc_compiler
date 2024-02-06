use std::mem;

use petgraph::stable_graph::{NodeIndex, StableDiGraph};

use crate::node;

use super::{ast_node::AstTree, cfg_node::{CfgGraph, CfgNode, GetText}};


pub type ScopeTree = StableDiGraph<ScopeNode,(),u32>;

#[derive(Clone)]
pub struct ScopeNode{
    cfg_nodes:Vec<u32>,
    text:String
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
impl ScopeNode{
    fn load_cfg_node_text(&mut self,cfg_graph : &CfgGraph){
        let new_str = {
            let mut s = "".to_string();
            for &cfg_node in &self.cfg_nodes{
                s += node!(at cfg_node in cfg_graph).get_text().unwrap();
                s += "\n";
            }
            s
        };
        let _ = mem::replace(&mut self.text, new_str);
    }
}