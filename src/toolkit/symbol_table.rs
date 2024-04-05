use core::panic;
use std::{collections::{BTreeMap, HashMap}, fmt::{Display, Formatter}};


use petgraph::stable_graph::StableDiGraph;

use super::{symbol::Symbol, field::{self, Field}};
use core::fmt::Debug;

pub type SymTabGraph = StableDiGraph<SymTab,(),u32>;

#[derive(Clone)]
pub struct SymTab {
    map: BTreeMap<SymIdx,Symbol>,
}

/// 由于我们对 Symbol 的索引必须同时考虑 symbol 所在的scope 的层级以及 symbol的名字，不如直接改成结构体SymbolIndex
#[derive(Clone,PartialEq, Eq, PartialOrd, Ord,)]
pub struct SymIdx{
    pub scope_node :u32 ,
    pub symbol_name : String,
    pub index_ssa : Option<u32>,
}
impl SymIdx{
    pub fn new(scope_node:u32, symbol_name:String)->Self{
        SymIdx{ scope_node,symbol_name, index_ssa: None} }
}
impl SymTab {
    // 创建一个新的符号表
    pub fn new() -> SymTab {
        SymTab {
            map: BTreeMap::new(),
        }
    }

    // 添加或更新符号，如果是更新，那么返回旧的符号
    pub fn add(&mut self, sym: Symbol) -> SymIdx{
        let symidx = sym.sym_idx.clone();
        let symidx_cloned = sym.sym_idx.clone();
        match self.map.insert(symidx,sym){
            None =>{symidx_cloned},
            Some(_) => panic!( "symtab插入失败,你这个表中已经存在同名称同scope的符号{:?}了,你必须先remove 掉它",symidx_cloned), // do nothing , 插入成功，里面没有同scope的同名符号
        }
    }

    // 查找符号
    pub fn get_verbose(&self, symbol_name:String ,  scope_node : u32) -> Option<&Symbol> {
        self.map.get(&SymIdx { scope_node ,  symbol_name, index_ssa: None} )
    }
    pub fn get(&self, symbol_index : &SymIdx) -> Option<&Symbol> {
        self.map.get(symbol_index)
    }
    pub fn get_verbose_mut(&mut self, symbol_name:String ,  scope_node : u32) -> Option<&mut Symbol> {
        self.map.get_mut(&SymIdx { scope_node ,  symbol_name, index_ssa: None} )
    }
    pub fn get_mut(&mut self, symbol_index : &SymIdx) -> Option<&mut Symbol> {
        self.map.get_mut(symbol_index)
    }

    // 删除符号
    pub fn remove(&mut self, symbol_index : &SymIdx) {
        self.map.remove(symbol_index);
    }
    pub fn remove_verbose(&mut self, symbol_name:String ,  scope_node : u32) {
        self.map.remove(&SymIdx { scope_node ,  symbol_name, index_ssa: None} );
    }
}
impl Default for SymTab{
    fn default() -> Self {
        Self { map: Default::default() }
    }
}
impl Debug for SymIdx{
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match self.index_ssa {
            Some(index_ssa) => write!(f, "{}_s{}_i{}", self.symbol_name, self.scope_node, index_ssa),
            None => write!(f, "{}_s{}", self.symbol_name, self.scope_node),
        }
    }
}
impl Debug for SymTab{
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        let mut s = String::from("#sym_name@fields$");
        for (symidx,sym) in self.map.iter(){
            s.push_str(format!("@ # {} @ {:?} $",symidx.symbol_name,sym.fields).as_str());
        }
        write!(f,"{}",s)
    }
}