use std::fmt::Debug;

use petgraph::{adj::NodeIndex, graph::{self, DiGraph}, visit::IntoNeighbors, Graph};

use crate::clang::cparser::ruleNames;
use petgraph::visit::{Dfs, Walker};
pub type AstTree = DiGraph<AstNode,(),u32>;

pub struct AstNode {
    pub rule_id : usize,
    pub text : String,
}
impl AstNode { 
    pub fn new(rule_id : usize, text:String) -> Self{
        Self{ rule_id,text }
    }
}

impl Debug for AstNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{} {}",ruleNames[self.rule_id],self.text)
    }
}


pub fn dfs_ast<'a>(ast_tree:&'a AstTree,current_astn:NodeIndex,aim_index: usize) -> impl Iterator<Item = u32> + 'a{
    // let ast_tree = &*ast_tree_rc.borrow();
    let dfs = Dfs::new(ast_tree, NodeIndex::from(current_astn));
    let dfs_iter= dfs.iter(ast_tree);
    let dfs_iter = dfs_iter.map(|x|x.index() as u32);
    let dfs_iter = dfs_iter.filter(move |x| ->bool {
        let ast_tree_2 = &*ast_tree;
        let ast_node =ast_tree_2.node_weight(NodeIndex::from(*x));
        ast_node.unwrap().rule_id ==  aim_index
    });
    dfs_iter
}

