use std::collections::HashMap;
use core::fmt::Debug;


use super::{field::Field, symbol_table:: SymbolIndex};
use super::field::{Fields, FieldsOwner};

#[derive(Clone)]
pub struct Symbol{
    pub fields :  Fields,
    pub sym_idx : SymbolIndex,
}
impl Debug for Symbol{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{{{:?} fields:{:?}}}",self.sym_idx.symbol_name,self.fields)
    }
}

impl FieldsOwner for Symbol{
    fn add_field(&mut self,key :&'static str,sf:Box<dyn Field>) {
        self.fields.insert(key, sf);
    }
    fn get_field(&self,key: &str) -> Option<&Box<dyn Field>> {
        self.fields.get(key)
    }
    fn remove_field(&mut self, field_name : &'static str) {
        self.fields.remove(field_name);
    }
    fn get_field_mut(&mut self,key: &str) -> Option<&mut Box<dyn Field>> {
        self.fields.get_mut(key)
    }
}

impl Symbol {
    pub fn new_verbose(scope_node:u32 ,symbol_name: String) -> Symbol{
        Symbol{
            fields: HashMap::new(),
            sym_idx : SymbolIndex::new(scope_node, symbol_name)
        }
    }
    pub fn new(scope_node:u32 ,symbol_name: String) -> Symbol{
        Symbol{
            fields: HashMap::new(),
            sym_idx : SymbolIndex::new(scope_node, symbol_name)
        }
    }
}
