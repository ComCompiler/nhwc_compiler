use core::fmt::Debug;
use std::collections::HashMap;

use crate::{make_get_field_fn_for_struct, make_specialized_get_field_fn_for_struct, reg_field_name};

use super::field::{Fields, Type, UseCounter};
use super::{field::Field, symtab::SymIdx};
use super::symtab::SymTab;
use super::symtab::{SymTabGraph,SymTabEdge};

#[derive(Clone)]
pub struct Symbol {
    pub fields: Fields,
    pub symidx: SymIdx,
}
impl Debug for Symbol {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "{{{:?} fields:{:?}}}",
            self.symidx.symbol_name, self.fields
        )
    }
}
reg_field_name!(USE_COUNTER:use_counter);
reg_field_name!(TYPE:type);
make_get_field_fn_for_struct!{Symbol with fields fields}
make_specialized_get_field_fn_for_struct!{Symbol USE_COUNTER:UseCounter,TYPE:Type with fields fields}


impl Symbol {
    pub fn new_verbose(scope_node: u32, symbol_name: String, index_ssa: Option<u32>) -> Symbol {
        Symbol {
            fields: HashMap::new(),
            symidx: SymIdx::new_verbose(scope_node, symbol_name, index_ssa),
        }
    }
    pub fn new(scope_node: u32, symbol_name: String) -> Symbol {
        Symbol {
            fields: HashMap::new(),
            symidx: SymIdx::new(scope_node, symbol_name),
        }
    }
}
