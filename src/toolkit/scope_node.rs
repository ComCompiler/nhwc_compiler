use std::fmt::Debug;
use std::mem;

use petgraph::stable_graph::StableDiGraph;
use strum_macros::EnumIs;

use crate::node;

use super::ast_node::AstTree;

pub type ScopeTree = StableDiGraph<ScopeNode, (), u32>;
pub static ST_ROOT:u32 = 0;

#[derive(Clone)]
pub struct ScopeNode {
    pub ast_node:u32,
    pub op_text:Option<String>,
    pub scope_type:ScopeType,
}
impl ScopeNode {
    pub fn load_ast_node_text(&mut self, ast_tree:&AstTree) {
        let ast_node = self.ast_node;
        match node!(at ast_node in ast_tree).op_text.clone(){
            Some(txt) => {
                let _ = mem::replace(&mut self.op_text, Some(txt));
            },
            None => {
                // do nothing
            },
        }
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

impl Debug for ScopeNode {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "{} \n {:?} {:?}",
            match self.scope_type {
                ScopeType::For => "For",
                ScopeType::While{ op_cfg_while_node } => "While",
                ScopeType::Func => "Func",
                ScopeType::Normal => "Normal",
                ScopeType::Terminal => "Terminal",
                ScopeType::If => "If",
                ScopeType::Switch => "Switch",
                ScopeType::Case => "Case",
            },
            self.ast_node,
            self.op_text
        )
    }
}

#[derive(Clone,EnumIs)]
pub enum ScopeType {
    For,
    While{
        op_cfg_while_node:Option<u32>
    },
    Func,
    Normal,
    Terminal,
    If,
    Switch,
    Case,
}
