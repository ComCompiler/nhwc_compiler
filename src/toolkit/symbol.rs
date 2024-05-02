use core::fmt::Debug;
use std::collections::HashMap;


use crate::{make_get_field_fn_for_struct, reg_field_for_struct, _reg_field_name};

use super::field::{Fields, Type, UseCounter};
use super::symtab::SymTab;
use super::symtab::{SymTabEdge, SymTabGraph};
use super::{field::Field, symtab::SymIdx};
use anyhow::{Context};

#[derive(Clone)]
pub struct Symbol {
    pub fields:Fields,
    pub symidx:SymIdx,
}
impl Debug for Symbol {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result { write!(f, "{{{:?} fields:{:?}}}", self.symidx.symbol_name, self.fields) }
}
/* 引用计数 */
/* 符号的类型 */
make_get_field_fn_for_struct! {Symbol with_fields fields}
reg_field_for_struct! {Symbol { USE_COUNTER:UseCounter,TYPE:Type, } with_fields fields}

impl Symbol {
    pub fn new_verbose(scope_node:u32, symbol_name:String, index_ssa:Option<u32>) -> Symbol { Symbol { fields:HashMap::new(), symidx:SymIdx::new_verbose(scope_node, symbol_name, index_ssa) } }
    pub fn new(scope_node:u32, symbol_name:String) -> Symbol { Symbol { fields:HashMap::new(), symidx:SymIdx::new(scope_node, symbol_name) } }
}
