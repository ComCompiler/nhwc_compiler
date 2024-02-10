use std::fmt::Debug;

use petgraph::{ graph::DiGraph, stable_graph::{NodeIndex, StableDiGraph, StableGraph}, visit::Bfs};

use petgraph::visit::{Dfs, Walker};
pub type AstTree = StableDiGraph<AstNode,(),u32>;

#[derive(Clone)]
pub struct AstNode {
    pub rule_id : usize,
    pub node_index : u32,
    pub text : String,
    pub is_terminal: bool,
}
impl AstNode { 
    pub fn new(rule_id : usize, text:String , is_terminal:bool) -> Self{
        Self{ rule_id, node_index:0 ,text , is_terminal}
    }
}

impl Debug for AstNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        if !self.is_terminal {
            write!(f,"{} {} {}",crate::antlr_parser::cparser::ruleNames[self.rule_id],self.text, self.node_index)
        }else{
            write!(f,"{} {} {}",crate::antlr_parser::clexer::_SYMBOLIC_NAMES[self.rule_id].unwrap(),self.text, self.node_index)
        }
    }
}


/// 返回 start 所有子节点以dfs序返回的特定rule_id 的迭代器
pub fn find_dfs_ast<'a>(ast_tree:&'a AstTree,start:u32,target_rule_id: usize) -> impl Iterator<Item = u32> + 'a{
    // let ast_tree = &*ast_tree_rc.borrow();
    let dfs = Dfs::new(ast_tree, NodeIndex::from(start));
    let dfs_iter= dfs.iter(ast_tree);
    let dfs_iter = dfs_iter.map(|x|x.index() as u32);
    let dfs_iter = dfs_iter.filter(move |x| ->bool {
        let ast_tree_2 = &*ast_tree;
        let ast_node =ast_tree_2.node_weight(NodeIndex::from(*x));
        ast_node.unwrap().rule_id ==  target_rule_id
    });
    dfs_iter
}

pub fn find_bfs_ast<'a>(ast_tree:&'a AstTree,start:NodeIndex,target_rule_id: usize) -> impl Iterator<Item = u32> + 'a{
    // let ast_tree = &*ast_tree_rc.borrow();
    let bfs = Bfs::new(ast_tree, NodeIndex::from(start));
    let bfs_iter= bfs.iter(ast_tree);
    let bfs_iter = bfs_iter.map(|x|x.index() as u32);
    let bfs_iter = bfs_iter.filter(move |x| ->bool {
        let ast_tree_2 = &*ast_tree;
        let ast_node =ast_tree_2.node_weight(NodeIndex::from(*x));
        ast_node.unwrap().rule_id ==  target_rule_id
    });
    bfs_iter
}


/// 返回 start 下一层特定rule_id 的迭代器
pub fn find_neighbors_ast<'a>(ast_tree:&'a AstTree,start:u32,target_rule_id: usize) ->impl Iterator<Item = u32> + 'a {
    let ns = ast_tree.neighbors(NodeIndex::from(start));
    ns.map(|x| x.index() as u32).filter(move |x| ast_tree.node_weight(NodeIndex::from(*x)).unwrap().rule_id == target_rule_id )
}
pub fn find_neighbors_term_ast<'a>(ast_tree:&'a AstTree,start:u32,target_term_id: usize) ->impl Iterator<Item = u32> + 'a {
    let ns = ast_tree.neighbors(NodeIndex::from(start));
    ns.map(|x| x.index() as u32).filter(move |x| ast_tree.node_weight(NodeIndex::from(*x)).unwrap().rule_id == target_term_id 
                                                                && ast_tree.node_weight(NodeIndex::from(*x)).unwrap().is_terminal == true )
}
pub fn find_neighbors_rule_ast<'a>(ast_tree:&'a AstTree,start:u32,target_rule_id: usize) ->impl Iterator<Item = u32> + 'a {
    let ns = ast_tree.neighbors(NodeIndex::from(start));
    ns.map(|x| x.index() as u32).filter(move |x| ast_tree.node_weight(NodeIndex::from(*x)).unwrap().rule_id == target_rule_id 
                                                                && ast_tree.node_weight(NodeIndex::from(*x)).unwrap().is_terminal == false )
}

