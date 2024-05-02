use super::ast_node::AstTree;
use super::field::Field;
use super::field::Fields;
use super::field::FieldsInit;
use super::symtab::{SymTab, SymTabEdge, SymTabGraph};
use strum_macros::EnumIs;
use crate::make_get_field_fn_for_struct;
use crate::reg_field_for_struct;
use anyhow::{Result,Context};
use std::fmt::Debug;
#[derive(Clone)]
pub struct CfgEdge {
    info:Fields,
    text:String,
}
make_get_field_fn_for_struct!(CfgEdge with_fields info);
reg_field_for_struct!(CfgEdge {CFG_EDGE_TYPE:CfgEdgeType,} with_fields info);
#[derive(Clone, Debug, EnumIs)]
pub enum CfgEdgeType {
    IfFalse {},
    Direct {},
    IfTrue {},
    BodyHead {},
    BodyTail {},
    If2Gather {},
}
impl CfgEdge {
    pub fn load_ast_node_text(&mut self, ast_tree:&AstTree) -> Result<()> {
        match self.get_cfg_edge_type()? {
            CfgEdgeType::IfTrue {} => self.text += "True",
            CfgEdgeType::IfFalse {} => self.text += "False",
            CfgEdgeType::Direct {} => self.text += "Direct",
            CfgEdgeType::BodyTail {} => self.text += "BodyTail",
            CfgEdgeType::BodyHead {} => self.text += "BodyHead",
            CfgEdgeType::If2Gather {} => self.text += "If2Gather",
        }
        Ok(())
    }
    pub fn new_if_false() -> Self { CfgEdge { info:Fields::new_from_single_field(CFG_EDGE_TYPE, Box::new(CfgEdgeType::IfFalse {})), text:String::new() } }
    pub fn new_direct() -> Self { CfgEdge { info:Fields::new_from_single_field(CFG_EDGE_TYPE, Box::new(CfgEdgeType::Direct {})), text:String::new() } }
    pub fn new_if_true() -> Self { CfgEdge { info:Fields::new_from_single_field(CFG_EDGE_TYPE, Box::new(CfgEdgeType::IfTrue {})), text:String::new() } }
    pub fn new_body_head() -> Self { CfgEdge { info:Fields::new_from_single_field(CFG_EDGE_TYPE, Box::new(CfgEdgeType::BodyHead {})), text:String::new() } }
    pub fn new_body_tail() -> Self { CfgEdge { info:Fields::new_from_single_field(CFG_EDGE_TYPE, Box::new(CfgEdgeType::BodyTail {})), text:String::new() } }
    pub fn new_if2gather() -> Self { CfgEdge { info:Fields::new_from_single_field(CFG_EDGE_TYPE, Box::new(CfgEdgeType::If2Gather {})), text:String::new() } }
}
impl Debug for CfgEdge {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result { write!(f, "{}", self.text) }
}
