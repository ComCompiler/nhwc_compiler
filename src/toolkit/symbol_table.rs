use core::panic;
use std::collections::{BTreeMap, HashMap};
use crate::{antlr_parser::clexer::Newline, toolkit::{ast_node,cfg_node}};

use super::symbol_field::{self, Field};

#[derive(Debug,Clone)]
pub struct SymbolTable {
    map: BTreeMap<SymbolIndex,Symbol >,
}

/// 由于我们对 Symbol 的索引必须同时考虑 symbol 所在的scope 的层级以及 symbol的名字，不如直接改成结构体SymbolIndex
#[derive(Debug,Clone,PartialEq, Eq, PartialOrd, Ord,)]
pub struct SymbolIndex{
    pub scope_depth :i32 ,
    pub symbol_name : String
}
impl SymbolTable {
    // 创建一个新的符号表
    pub fn new() -> SymbolTable {
        SymbolTable {
            map: BTreeMap::new(),
        }
    }

    // 添加或更新符号，如果是更新，那么返回旧的符号
    pub fn add(&mut self, symbol: Symbol) -> SymbolIndex{
        let symbol_index = SymbolIndex{
            scope_depth: symbol.scope_depth,
            symbol_name: symbol.symbol_name.clone(),
        };
        let retured_symbol_index = symbol_index.clone();
        match self.map.insert(symbol_index,symbol){
            None =>{retured_symbol_index},
            Some(_) => panic!( "symtab插入失败,你这个表中已经存在同名称同scope的符号了,你必须先remove 掉它"), // do nothing , 插入成功，里面没有同scope的同名符号
        }
    }

    // 查找符号
    pub fn get_verbose(&self, symbol_name:String ,  scope_depth : i32) -> Option<&Symbol> {
        self.map.get(&SymbolIndex { scope_depth ,  symbol_name} )
    }
    pub fn get(&self, symbol_index : &SymbolIndex) -> Option<&Symbol> {
        self.map.get(symbol_index)
    }
    pub fn get_mut_verbose(&mut self, symbol_name:String ,  scope_depth : i32) -> Option<&mut Symbol> {
        self.map.get_mut(&SymbolIndex { scope_depth ,  symbol_name} )
    }
    pub fn get_mut(&mut self, symbol_index : &SymbolIndex) -> Option<&mut Symbol> {
        self.map.get_mut(symbol_index)
    }

    // 删除符号
    pub fn remove(&mut self, symbol_index : &SymbolIndex) {
        self.map.remove(symbol_index);
    }
    pub fn remove_verbose(&mut self, symbol_name:String ,  scope_depth : i32) {
        self.map.remove(&SymbolIndex { scope_depth ,  symbol_name} );
    }
}
impl Default for SymbolTable{
    fn default() -> Self {
        Self { map: Default::default() }
    }
}


#[derive(Debug,Clone)]
pub struct Symbol{
    fields :  HashMap<&'static str,Box<dyn Field>>,
    scope_depth :i32 ,
    symbol_name : String
}
pub trait SymbolBehavior{
    fn add_field(&mut self,key :&'static str,sf:Box<dyn Field>);
    fn remove_field(&mut self, field_name : &'static str);
    fn get_field(&self,key: &str) -> Option<&Box<dyn Field>>;
    fn get_field_mut(&mut self,key: &str) -> Option<&mut Box< dyn Field>>;
        
}

impl Clone for Box<dyn Field>{
    fn clone(&self) -> Self {
        panic!("you should never use the clone for Field");
    }
}

impl SymbolBehavior for Symbol{
    fn add_field(&mut self,key :&'static str,sf:Box<dyn Field>) {
        self.fields.insert(key, sf);
    }
    fn get_field(&self,key: &str) -> Option<&Box<dyn Field>> {
        self.fields.get(key)
    }
    fn remove_field(&mut self, field_name : &'static str) {
        self.fields.remove(field_name);
    }
    fn get_field_mut(&mut self,key: &str) -> Option<&mut Box< dyn Field>> {
        self.fields.get_mut(key)
    }
}


impl Symbol {
    pub fn new(scope_depth:i32 ,symbol_name: String) -> Symbol{
        Symbol{
            fields: HashMap::new(),
            symbol_name, 
            scope_depth,
        }
    }
}


