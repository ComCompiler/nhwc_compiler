use super::{context::COMPILATION_UNIT, field::Field, symbol::Symbol};
use crate::make_field_trait_for_struct;
use core::fmt::Debug;
use core::panic;
use anyhow::{anyhow,Result};
use petgraph::stable_graph::StableDiGraph;
use std::{collections::BTreeMap, fmt::Formatter};

pub type SymTabGraph = StableDiGraph<SymTab, SymTabEdge, u32>;

#[derive(Clone)]
pub struct SymTab {
    map:BTreeMap<SymIdx, Symbol>,
}
#[derive(Clone)]
pub struct SymTabEdge {
    text:String,
}
impl Debug for SymTabEdge {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result { write!(f, "{}", self.text) }
}
impl SymTabEdge {
    pub fn new(text:String) -> Self { SymTabEdge { text } }
}
/// 由于我们对 Symbol 的索引必须同时考虑 symbol 所在的scope 的层级以及 symbol的名字，不如直接改成结构体SymbolIndex
#[derive(Clone, PartialEq, Eq, PartialOrd, Ord)]
pub struct SymIdx {
    pub scope_node:u32,
    pub symbol_name:String,
    pub index_ssa:Option<u32>,
}
make_field_trait_for_struct!(SymIdx);
impl SymIdx {
    pub fn new(scope_node:u32, symbol_name:String) -> Self { SymIdx { scope_node, symbol_name, index_ssa:None } }
    pub fn new_verbose(scope_node:u32, symbol_name:String, index_ssa:Option<u32>) -> Self { SymIdx { scope_node, symbol_name, index_ssa } }
    pub fn to_src_symidx(&self)-> SymIdx{
        let mut cloned = self.clone();
        cloned.index_ssa = None;
        cloned
    }
    pub fn as_src_symidx(&mut self)-> &mut SymIdx{
        self.index_ssa = None;
        self
    }
    pub fn to_ssa_symidx(&self,index_ssa:u32)->SymIdx{
        let mut cloned = self.clone();
        cloned.index_ssa = Some(index_ssa);
        cloned
    }
    pub fn as_ssa_symidx(&mut self,index_ssa:u32)-> &mut SymIdx{
        self.index_ssa = Some(index_ssa);
        self
    }
}
// macro_rules! make_get_field_func {
//     ($($functionname:ident $field_name:ident:$field_type:ident),*) => {

//     };
// }

impl SymTab {
    // 创建一个新的符号表
    pub fn new() -> SymTab { SymTab { map:BTreeMap::new() } }

    // 添加或更新符号，如果是更新，那么返回旧的符号
    pub fn add_symbol(&mut self, sym:Symbol) -> SymIdx {
        let symidx = sym.symidx.clone();
        let symidx_cloned = sym.symidx.clone();
        match self.map.insert(symidx, sym) {
            None => symidx_cloned,
            Some(_) => panic!("symtab插入失败,你这个表中已经存在同名称同scope的符号{:?}了,你必须先remove 掉它", symidx_cloned), // do nothing , 插入成功，里面没有同scope的同名符号
        }
    }

    // 查找符号
    pub fn get_symbol_verbose(&self, symbol_name:String, scope_node:u32) -> Result<&Symbol> {let symidx = SymIdx { scope_node, symbol_name, index_ssa:None}; self.map.get(&symidx).ok_or(anyhow!("找不到{:?}对应的symbol",symidx)) }
    pub fn get_symbol(&self, symbol_index:&SymIdx) -> Result<&Symbol> { self.map.get(symbol_index).ok_or(anyhow!("找不到{:?}对应的symbol",symbol_index)) }
    pub fn get_mut_symbol_verbose(&mut self, symbol_name:String, scope_node:u32) -> Result<&mut Symbol> { let symidx = SymIdx { scope_node, symbol_name, index_ssa:None }; self.map.get_mut(&symidx).ok_or(anyhow!("找不到{:?}对应的symbol",symidx )) }
    pub fn get_mut_symbol(&mut self, symbol_index:&SymIdx) -> Result<&mut Symbol> { self.map.get_mut(symbol_index).ok_or(anyhow!("找不到{:?}对应的symbol",symbol_index)) }

    // 删除符号
    pub fn remove_symbol(&mut self, symbol_index:&SymIdx) { self.map.remove(symbol_index); }
    pub fn remove_symbol_verbose(&mut self, symbol_name:String, scope_node:u32) { self.map.remove(&SymIdx { scope_node, symbol_name, index_ssa:None }); }

    pub fn get_mut_global_info(&mut self) -> &mut Symbol{
        self.get_mut_symbol_verbose(COMPILATION_UNIT.to_string(),0).unwrap()
    }
    pub fn get_global_info(&self) -> &Symbol{
        self.get_symbol_verbose(COMPILATION_UNIT.to_string(),0).unwrap()
    }
}
impl Default for SymTab {
    fn default() -> Self { Self { map:Default::default() } }
}
impl Debug for SymIdx {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result {
        match self.index_ssa {
            Some(index_ssa) => write!(f, "{}_s{}_i{}", self.symbol_name, self.scope_node, index_ssa),
            // None => write!(f, "{}_s{}", self.symbol_name, self.scope_node),
            None => write!(f, "{}", self.symbol_name),
        }
    }
}
impl Debug for SymTab {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result {
        let mut s = String::from("#sym_name@fields$");
        for (symidx, sym) in self.map.iter() {
            s.push_str(format!("@ # {:?} @ {:?} $", symidx, sym.fields).as_str());
        }
        write!(f, "{}", s)
    }
}
