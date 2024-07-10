use super::ast_node::AstTree;
use super::field::Fields;
use strum_macros::EnumIs;
use anyhow::{Result};
use std::fmt::Debug;
#[derive(Clone)]
pub struct CfgEdge {
    pub cfg_edge_type:CfgEdgeType,
}
#[derive(Clone, Debug, EnumIs)]
pub enum CfgEdgeType {
    IfFalse {},
    Direct {},
    IfTrue {},
    BodyHead {},
    BodyTail {},
}
impl CfgEdge {
    pub fn load_ast_node_text(&mut self, _ast_tree:&AstTree) -> Result<()> {
        Ok(())
    }
    pub fn new_if_false() -> Self { CfgEdge { cfg_edge_type: CfgEdgeType::IfFalse {} }}
    pub fn new_direct() -> Self { CfgEdge { cfg_edge_type: CfgEdgeType::Direct {} }}
    pub fn new_if_true() -> Self { CfgEdge { cfg_edge_type: CfgEdgeType::IfTrue {}  }}
    pub fn new_body_head() -> Self { CfgEdge { cfg_edge_type: CfgEdgeType::BodyHead {} }}
    pub fn new_body_tail() -> Self { CfgEdge { cfg_edge_type: CfgEdgeType::BodyTail {} }}
}
impl Debug for CfgEdge {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{}",match &self.cfg_edge_type {
            CfgEdgeType::IfTrue {} =>  "True",
            CfgEdgeType::IfFalse {} => "False",
            CfgEdgeType::Direct {} =>  "Direct",
            CfgEdgeType::BodyTail {} =>  "BodyTail",
            CfgEdgeType::BodyHead {} =>  "BodyHead",
        })
    }
}
