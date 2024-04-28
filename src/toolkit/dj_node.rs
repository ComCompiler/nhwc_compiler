
use crate::make_get_field_fn_for_struct;

use super::field::{Fields,Field};
use super::symtab::{SymTab,SymTabEdge,SymTabGraph};

#[derive(Clone,Debug)]
pub struct DjNode {
    pub cor_cfg_node: u32,
    pub info : Fields,
}
make_get_field_fn_for_struct!(DjNode with fields info);
impl DjNode{
    pub fn new(cor_cfg_node:u32)->Self{
        Self { cor_cfg_node, info: Fields::new() }
    }
}