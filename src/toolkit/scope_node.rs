use std::fmt::Debug;
use std::mem;

use petgraph::stable_graph::StableDiGraph;

use crate::node;

use super::ast_node::AstTree;

pub type ScopeTree = StableDiGraph<ScopeNode, (), u32>;

#[derive(Clone)]
pub struct ScopeNode {
    pub ast_node: u32,
    pub text: String,
    pub parent: u32,
    pub scope_type: ScopeType,
}
impl ScopeNode {
    pub fn load_ast_node_text(&mut self, ast_tree: &AstTree) {
        let ast_node = self.ast_node;
        let new_str = node!(at ast_node in ast_tree).text.clone();
        let _ = mem::replace(&mut self.text, new_str);
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
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "{} \n {:?} {}",
            match self.scope_type {
                ScopeType::For => "For",
                ScopeType::While => "While",
                ScopeType::Func => "Func",
                ScopeType::Normal => "Normal",
                ScopeType::Terminal => "Terminal",
                ScopeType::If => "If",
                ScopeType::Switch => "Switch",
                ScopeType::Case => "Case",
            },
            self.ast_node,
            self.text
        )
    }
}

#[derive(Clone)]
pub enum ScopeType {
    For,
    While,
    Func,
    Normal,
    Terminal,
    If,
    Switch,
    Case,
}
