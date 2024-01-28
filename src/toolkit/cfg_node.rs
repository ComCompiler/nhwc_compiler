use std::cell::Ref;
use std::fmt::{write, Debug};

use petgraph::graph::{Edge, Node, UnGraph};
use petgraph::stable_graph::NodeIndex;
use petgraph::{Directed, Graph};

use crate::toolkit::ast_node::AstNode;

use super::ast_node;
pub type Idx = NodeIndex<u32>;

enum CfgNode {
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
    fn get_ast_node_text(&self,ast_g : &Graph<AstNode,(),Directed>) -> String{
        match self {
            CfgNode::Entry { outgoing, ast_node_idx } =>  ast_g[NodeIndex::from(*ast_node_idx)].text.clone(),
            CfgNode::Exit { ingoing, ast_node_idx } => ast_g[NodeIndex::from(*ast_node_idx)].text.clone(),
            CfgNode::Branch { outgoings, ingoings, ast_node_idx } => ast_g[NodeIndex::from(*ast_node_idx)].text.clone(),
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
