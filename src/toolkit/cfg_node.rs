use std::cell::Ref;
use std::fmt::{write, Debug};

use petgraph::graph::{Edge, Node, UnGraph};
use petgraph::stable_graph::NodeIndex;
use petgraph::{Directed, Graph};

use crate::ASTNode;

use super::ast_node;
pub type Idx = NodeIndex<u32>;

enum CFGNode {
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
impl CFGNode {
    fn get_ast_node_text(&self,ast_g : &Graph<ASTNode,(),Directed>) -> String{
        match self {
            CFGNode::Entry { outgoing, ast_node_idx } =>  ast_g[NodeIndex::from(*ast_node_idx)].text.clone(),
            CFGNode::Exit { ingoing, ast_node_idx } => ast_g[NodeIndex::from(*ast_node_idx)].text.clone(),
            CFGNode::Branch { outgoings, ingoings, ast_node_idx } => ast_g[NodeIndex::from(*ast_node_idx)].text.clone(),
            CFGNode::Gather { outgoings, ingoings } => String::from(" "),
        }
    }
}


impl Debug for CFGNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            CFGNode::Entry { outgoing: _, ast_node_idx } =>
                write!(f,"{} {}","Entry",ast_node_idx),
            CFGNode::Exit { ingoing: _, ast_node_idx } =>
                write!(f,"{} {}","Exit",ast_node_idx),
            CFGNode::Branch { outgoings: _, ingoings: _, ast_node_idx } =>
                write!(f,"{} {}","Branch",ast_node_idx),
            CFGNode::Gather { outgoings: _ , ingoings:_ , } =>
                write!(f,"{} ","Gather"),
        }
    }
}
