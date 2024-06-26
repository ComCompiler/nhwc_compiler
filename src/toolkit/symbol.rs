use core::fmt::Debug;
use std::collections::HashMap;


use crate::{ reg_field_for_struct};

use super::field::{Fields, Type, UseCounter, Value};
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
/* 常量符号的值 */
reg_field_for_struct! {Symbol { USE_COUNTER:UseCounter,
    TYPE:Type, 
    VALUE:Value,
} with_fields fields}

impl Symbol {
    pub fn new_verbose(scope_node:u32, symbol_name:String, index_ssa:Option<u32>) -> Symbol { Symbol { fields:HashMap::new(), symidx:SymIdx::new_verbose(scope_node, symbol_name, index_ssa) } }
    pub fn new(scope_node:u32, symbol_name:String) -> Symbol { Symbol { fields:HashMap::new(), symidx:SymIdx::new(scope_node, symbol_name) } }
    pub fn new_from_symidx(symidx:&SymIdx)->Self{
        Symbol::new_verbose(symidx.scope_node, symidx.symbol_name.clone(),symidx.index_ssa)
    }
}
