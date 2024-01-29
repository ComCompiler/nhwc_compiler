use std::fmt::Debug;

//use petgraph::stable_graph::NodeIndex;
use petgraph::{Directed, Graph};
use petgraph::{adj::NodeIndex, graph::DiGraph};

use crate::toolkit::ast_node::{AstNode,AstTree,find_dfs_ast,find_neighbors_ast};
use crate::{RULE_functionDefinition,RULE_compoundStatement};
use crate::antlr_parser::cparser::{RULE_blockItem,RULE_iterationStatement};
use crate::find;

pub type Idx = NodeIndex<u32>;
pub type CfgGraph = DiGraph<CfgNode,(),u32>;

pub enum CfgNode {
    Entry {
        outgoing: u32 ,
        ast_node_idx: u32,
    },
    Exit {
        ingoing: u32,
        ast_node_idx: u32,
    },
    Branch {
        outgoings: Vec<u32>,
        ingoings: Vec<u32>,
        ast_node_idx: u32,
    },
    Gather {
        outgoings: Vec<u32>,
        ingoings: u32,
    },
}
impl CfgNode {
    fn get_ast_node_text(&self,ast_tree : &Graph<AstNode,(),Directed>) -> String{
        match self {
            CfgNode::Entry { outgoing, ast_node_idx } => ast_tree.node_weight(NodeIndex::from(*ast_node_idx)).unwrap().text.clone(),
            CfgNode::Exit { ingoing, ast_node_idx } => ast_tree.node_weight(NodeIndex::from(*ast_node_idx)).unwrap().text.clone(),
            CfgNode::Branch { outgoings, ingoings, ast_node_idx } => ast_tree.node_weight(NodeIndex::from(*ast_node_idx)).unwrap().text.clone(),
            CfgNode::Gather { outgoings, ingoings } => String::from(" "),
        }
    }
}


impl Debug for CfgNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            CfgNode::Entry { outgoing: _, ast_node_idx } =>
                write!(f,"{} {}","Entry",ast_node_idx),
            CfgNode::Exit { ingoing: _, ast_node_idx } =>
                write!(f,"{} {}","Exit",ast_node_idx),
            CfgNode::Branch { outgoings: _, ingoings: _, ast_node_idx } =>
                write!(f,"{} {}","Branch",ast_node_idx),
            CfgNode::Gather { outgoings: _ , ingoings:_ , } =>
                write!(f,"{} ","Gather"),
        }
    }
}


pub fn ast_to_cfg(ast_tree:&AstTree) {
    let functionblock= find_dfs_ast(ast_tree,0,RULE_functionDefinition);
    for funblock in functionblock{
        let compound = find_neighbors_ast(ast_tree,funblock,RULE_compoundStatement);
    let blockitem = find_dfs_ast(ast_tree,find!(compound),RULE_blockItem);
    for block in blockitem{
        
    }
    }

}
