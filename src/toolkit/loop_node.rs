use petgraph::prelude::StableDiGraph;
use strum_macros::EnumIs;
use std::fmt::Debug;
use super::cfg_node::CfgNodeType;

pub type LoopTree = StableDiGraph<LoopNode, (), u32>;

#[derive(Clone)]
pub struct LoopNode{
    loop_node_type:LoopNodeType,
}
#[derive(Clone,EnumIs)]
pub enum LoopNodeType{
    Root,
    Loop,
    Func{
        cfg_node:u32,
        cfg_node_type:CfgNodeType,
    },
    Terminal{
        cfg_node:u32,
        cfg_node_type:CfgNodeType,
    },
}

impl LoopNode {
    pub fn new_root_node() -> Self{
        Self{loop_node_type:LoopNodeType::Root}
    }
    pub fn new_loop_node() -> Self{
        Self{loop_node_type:LoopNodeType::Loop}
    }
    pub fn new_func_node(cfg_node:u32,cfg_type:CfgNodeType) -> Self{
        Self{loop_node_type:LoopNodeType::Func { cfg_node, cfg_node_type:cfg_type }}
    }
    pub fn new_terminal_node(cfg_node:u32,cfg_type:CfgNodeType) -> Self{
        Self{loop_node_type:LoopNodeType::Terminal { cfg_node, cfg_node_type:cfg_type }}
    }
}

impl Debug for LoopNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match &self.loop_node_type{
            LoopNodeType::Loop => write!(f, "{}","Loop"),
            LoopNodeType::Root => write!(f, "{}","Root"),
            LoopNodeType::Func { cfg_node, cfg_node_type } => write!(f,"{}\n{:?}\n cfg_node:{}","Func",*cfg_node_type,*cfg_node),
            LoopNodeType::Terminal { cfg_node, cfg_node_type } => write!(f,"{}\n{:?}\n cfg_node:{}","Terminal",*cfg_node_type,*cfg_node),
        }
    }
}