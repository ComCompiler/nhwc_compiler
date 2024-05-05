use super::ast_node::AstTree;
use super::field::Fields;
use strum_macros::EnumIs;
use anyhow::{Result};
use std::fmt::Debug;
#[derive(Clone)]
pub struct CfgEdge {
    pub cfg_edge_type:CfgEdgeType,
    info:Fields,
    text:String,
}
#[derive(Clone, Debug, EnumIs)]
pub enum CfgEdgeType {
    IfFalse {},
    Direct {},
    IfTrue {},
    BodyHead {},
    BodyTail {},
    GatherTrue {},
    GatherFalse {},
}
impl CfgEdge {
    pub fn load_ast_node_text(&mut self, ast_tree:&AstTree) -> Result<()> {
        match &self.cfg_edge_type {
            CfgEdgeType::IfTrue {} => self.text += "True",
            CfgEdgeType::IfFalse {} => self.text += "False",
            CfgEdgeType::Direct {} => self.text += "Direct",
            CfgEdgeType::BodyTail {} => self.text += "BodyTail",
            CfgEdgeType::BodyHead {} => self.text += "BodyHead",
            CfgEdgeType::GatherTrue {} => self.text += "GatherTrue",
            CfgEdgeType::GatherFalse {} => self.text += "GatherFalse",
        }
        Ok(())
    }
    pub fn new_if_false() -> Self { CfgEdge { info:Fields::new(),cfg_edge_type: CfgEdgeType::IfFalse {}, text:String::new()  }}
    pub fn new_direct() -> Self { CfgEdge { info:Fields::new(),cfg_edge_type: CfgEdgeType::Direct {}, text:String::new()  }}
    pub fn new_if_true() -> Self { CfgEdge { info:Fields::new(),cfg_edge_type: CfgEdgeType::IfTrue {}, text:String::new()  }}
    pub fn new_body_head() -> Self { CfgEdge { info:Fields::new(),cfg_edge_type: CfgEdgeType::BodyHead {}, text:String::new()  }}
    pub fn new_body_tail() -> Self { CfgEdge { info:Fields::new(),cfg_edge_type: CfgEdgeType::BodyTail {}, text:String::new()  }}
    pub fn new_gather_true() -> Self { CfgEdge { info:Fields::new(),cfg_edge_type: CfgEdgeType::GatherTrue {}, text:String::new()  }}
    pub fn new_gather_false() -> Self {CfgEdge { info:Fields::new(),cfg_edge_type: CfgEdgeType::GatherFalse {}, text:String::new() }}
}
impl Debug for CfgEdge {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result { write!(f, "{}", self.text) }
}
