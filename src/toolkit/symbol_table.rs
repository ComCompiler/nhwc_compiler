use core::panic;
use std::collections::{BTreeMap, HashMap};


use super::symbol_field::{self, Field};
use core::fmt::Debug;

pub type Fields =  HashMap<&'static str,Box<dyn Field>>;

#[derive(Debug,Clone)]
pub struct SymbolTable {
    map: BTreeMap<SymbolIndex,Symbol >,
}

/// 由于我们对 Symbol 的索引必须同时考虑 symbol 所在的scope 的层级以及 symbol的名字，不如直接改成结构体SymbolIndex
#[derive(Debug,Clone,PartialEq, Eq, PartialOrd, Ord,)]
pub struct SymbolIndex{
    pub scope_node :u32 ,
    pub symbol_name : String,
}
impl SymbolIndex{
    pub fn new(scope_node:u32, symbol_name:String)->Self{
        SymbolIndex{ scope_node,symbol_name } }
}
impl SymbolTable {
    // 创建一个新的符号表
    pub fn new() -> SymbolTable {
        SymbolTable {
            map: BTreeMap::new(),
        }
    }

    // 添加或更新符号，如果是更新，那么返回旧的符号
    pub fn add(&mut self, sym: Symbol) -> SymbolIndex{
        let symidx = sym.sym_idx.clone();
        let symidx_cloned = sym.sym_idx.clone();
        match self.map.insert(symidx,sym){
            None =>{symidx_cloned},
            Some(_) => panic!( "symtab插入失败,你这个表中已经存在同名称同scope的符号{:?}了,你必须先remove 掉它",symidx_cloned), // do nothing , 插入成功，里面没有同scope的同名符号
        }
    }

    // 查找符号
    pub fn get_verbose(&self, symbol_name:String ,  scope_node : u32) -> Option<&Symbol> {
        self.map.get(&SymbolIndex { scope_node ,  symbol_name} )
    }
    pub fn get(&self, symbol_index : &SymbolIndex) -> Option<&Symbol> {
        self.map.get(symbol_index)
    }
    pub fn get_verbose_mut(&mut self, symbol_name:String ,  scope_node : u32) -> Option<&mut Symbol> {
        self.map.get_mut(&SymbolIndex { scope_node ,  symbol_name} )
    }
    pub fn get_mut(&mut self, symbol_index : &SymbolIndex) -> Option<&mut Symbol> {
        self.map.get_mut(symbol_index)
    }

    // 删除符号
    pub fn remove(&mut self, symbol_index : &SymbolIndex) {
        self.map.remove(symbol_index);
    }
    pub fn remove_verbose(&mut self, symbol_name:String ,  scope_node : u32) {
        self.map.remove(&SymbolIndex { scope_node ,  symbol_name} );
    }
}
impl Default for SymbolTable{
    fn default() -> Self {
        Self { map: Default::default() }
    }
}


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
pub trait FieldsOwner{
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
///动态添加字段，如
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
    fn get_field_mut(&mut self,key: &str) -> Option<&mut Box< dyn Field>> {
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


