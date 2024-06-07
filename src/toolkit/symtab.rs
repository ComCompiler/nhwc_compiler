use super::{context::COMPILATION_UNIT, symbol::Symbol};
use crate::{add_node, add_node_with_edge };
use core::fmt::Debug;
use ahash::{AHashMap};
use anyhow::{anyhow,Result};
use delegate::delegate;
use petgraph::stable_graph::StableDiGraph;
use std::{collections::{hash_map::{Iter, IterMut}}, fmt::{Display, Formatter}};

pub type SymTabGraph = StableDiGraph<SymTab, SymTabEdge, u32>;

#[derive(Clone)]
pub struct SymTab {
    // map:BTreeMap<SymIdx, Symbol>,
    map:AHashMap<SymIdx, Symbol>,
    text:String,
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
#[derive(Clone, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct SymIdx {
    pub scope_node:u32,
    pub symbol_name:String,
    pub index_ssa:Option<u32>,
}
impl From<usize> for SymIdx{
    fn from(value: usize) -> Self {
        SymIdx { scope_node: 0, symbol_name: value.to_string(), index_ssa: None }
    }
}
impl From<isize> for SymIdx{
    fn from(value: isize) -> Self {
        SymIdx { scope_node: 0, symbol_name: value.to_string(), index_ssa: None }
    }
}
impl SymIdx {
    pub fn new(scope_node:u32, symbol_name:String) -> Self { SymIdx { scope_node, symbol_name, index_ssa:None } }
    pub fn new_verbose(scope_node:u32, symbol_name:String, index_ssa:Option<u32>) -> Self { SymIdx { scope_node, symbol_name, index_ssa } }
    pub fn as_global_ptr(mut self) -> Result<Self>{
        if self.symbol_name.starts_with('*'){
            return Err(anyhow!("can't transform symbol_name to be global ptr twice"))
        }
        self.symbol_name.insert(0, '*');
        Ok(self)
    }
    /// check if this symidx is ptr to global variables
    pub fn is_global_ptr(&self) -> bool{
        self.symbol_name.starts_with('*')
    }
    pub fn as_deglobal_ptr(mut self) -> Result<Self>{
        if !self.is_global_ptr(){
            self.symbol_name.remove(0);
        }else{
            return Err(anyhow!("can't transform deglobal a symbol_name that is not global ptr twice"))
        }
        Ok(self)
    }
    pub fn to_deglobal_ptr(&self) -> Result<Self>{
        let mut cloned = self.clone();
        if self.is_global_ptr(){
            cloned.symbol_name.remove(0);
        }else{
            return Err(anyhow!("can't transform deglobal a symbol_name that is not global ptr twice"))
        }
        Ok(cloned)
    }
    pub fn to_global_ptr(&self) -> Result<Self>{
        let mut cloned = self.clone();
        if cloned.symbol_name.starts_with('*'){
            return Err(anyhow!("can't transform symbol_name to be global ptr twice"))
        }
        cloned.symbol_name.insert(0, '*');
        Ok(cloned)
    }
    pub fn to_src_symidx(&self)-> SymIdx{
        let mut cloned = self.clone();
        cloned.index_ssa = None;
        cloned
    }
    pub fn as_src_symidx(mut self)-> SymIdx{
        self.index_ssa = None;
        self
    }
    pub fn to_ssa_symidx(&self,index_ssa:u32)->SymIdx{
        let mut cloned = self.clone();
        cloned.index_ssa = Some(index_ssa);
        cloned
    }
    pub fn as_ssa_symidx(mut self,index_ssa:u32)-> SymIdx{
        self.index_ssa = Some(index_ssa);
        self
    }
    pub fn into_symbol(self)->Symbol{
        Symbol::new_verbose(self.scope_node, self.symbol_name, self.index_ssa)
    }
    pub fn get_next_ssa_symidx(&self)->SymIdx{
        if self.index_ssa == None{
            self.to_ssa_symidx(0)
        }else{
            self.to_ssa_symidx(self.index_ssa.unwrap()+1)
        }
    }

}
// macro_rules! make_get_field_func {
//     ($($functionname:ident $field_name:ident:$field_type:ident),*) => {

//     };
// }

impl SymTab {
    // 创建一个新的符号表
    // pub fn new() -> SymTab { SymTab { map:BTreeMap::new(), text: String::new() } }
    pub fn new() -> SymTab { SymTab { map:AHashMap::new(), text: String::new() } }
    
    // 添加或更新符号，如果是更新，那么返回旧的符号
    pub fn add_symbol(&mut self, sym:Symbol) -> Result<SymIdx> {
        let symidx = sym.symidx.clone();
        let symidx_cloned = sym.symidx.clone();
        match self.map.insert(symidx, sym) {
            None => Ok(symidx_cloned),
            Some(_) => Err(anyhow!("symtab插入失败,你这个表中已经存在同名称同scope的符号{:?}了,你必须先remove 掉它", symidx_cloned)), // do nothing , 插入成功，里面没有同scope的同名符号
        }
    }

    // 查找符号
    pub fn get_symbol_verbose(&self, symbol_name:String, scope_node:u32) -> Result<&Symbol> {let symidx = SymIdx { scope_node, symbol_name, index_ssa:None}; self.map.get(&symidx).ok_or(anyhow!("找不到{:?}对应的symbol",symidx)) }
    pub fn get_symbol(&self, symidx:&SymIdx) -> Result<&Symbol> { self.map.get(symidx).ok_or(anyhow!("找不到{:?}对应的symbol",symidx)) }
    pub fn get_mut_symbol_verbose(&mut self, symbol_name:String, scope_node:u32) -> Result<&mut Symbol> { let symidx = SymIdx { scope_node, symbol_name, index_ssa:None }; self.map.get_mut(&symidx).ok_or(anyhow!("找不到{:?}对应的symbol",symidx )) }
    pub fn get_mut_symbol(&mut self, symidx:&SymIdx) -> Result<&mut Symbol> { self.map.get_mut(symidx).ok_or(anyhow!("找不到{:?}对应的symbol",symidx)) }

    delegate!{
        to self.map {
            pub fn iter(&self)->Iter<SymIdx,Symbol>;
            pub fn iter_mut(&mut self)->IterMut<SymIdx,Symbol>;
        }
    }

    // 删除符号
    pub fn remove_symbol(&mut self, symbol_index:&SymIdx) { self.map.remove(symbol_index); }
    pub fn remove_symbol_verbose(&mut self, symbol_name:String, scope_node:u32) { self.map.remove(&SymIdx { scope_node, symbol_name, index_ssa:None }); }

    pub fn has_symbol(&self, symidx:&SymIdx)->bool{
        self.map.contains_key(symidx)
    }

    pub fn get_mut_global_info(&mut self) -> &mut Symbol{
        self.get_mut_symbol_verbose(COMPILATION_UNIT.to_string(),0).unwrap()
    }
    pub fn get_global_info(&self) -> &Symbol{
        self.get_symbol_verbose(COMPILATION_UNIT.to_string(),0).unwrap()
    }

    pub fn debug_symtab_graph(&mut self,desc:String, symtab_graph:&mut SymTabGraph,symidx_vec:Vec<SymIdx>){
        let mut idx = symtab_graph.node_count() as u32;
        if idx==0{
            add_node!({let mut s = self.clone(); s.load_symtab_text(symidx_vec);s } to symtab_graph);
        }else {//如果已经有节点了,在最后一个节点上加点加边
            idx-=1;
            add_node_with_edge!({let mut s = self.clone(); s.load_symtab_text(symidx_vec);s } with_edge {SymTabEdge::new(desc)} from idx in symtab_graph);
        }

    }

    pub fn load_symtab_text(&mut self,symidx_vec:Vec<SymIdx>)->Result<()>{
        if symidx_vec.len()!=0{
            self.text+= "#sym_name@fields$";
            for symidx in &symidx_vec{
                let sym = self.get_symbol(symidx)?;
                self.text += format!("@ # {:?} @ {:#?} $", symidx, sym.fields).as_str();
            }
        }else{
            let mut s = "#sym_name@fields$".to_string();
            for (symidx,sym) in self.iter(){
                s += format!("@ # {:?} @ {:#?} $", symidx, sym.fields).as_str();
            }
            self.text += s.as_str();
        }
        Ok(())
    }

    
}
impl Default for SymTab {
    fn default() -> Self { Self { map:Default::default(), text: String::new() } }
}
impl Debug for SymIdx {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result {
        match self.index_ssa {
            Some(index_ssa) => write!(f, "{}*{}*{}", self.symbol_name, self.scope_node, index_ssa),
            // Some(index_ssa) => write!(f, "{}*{}*{}", self.symbol_name,  ,index_ssa),
            // None => write!(f, "{} _s{}", self.symbol_name, self.scope_node),
            None => write!(f, "{}", self.symbol_name),
        }
    }
}
impl Display for SymIdx{
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result {
        match self.index_ssa {
            Some(index_ssa) => write!(f, "{} _s{} _i{}", self.symbol_name, self.scope_node, index_ssa),
            // Some(index_ssa) => write!(f, "{}_i{}", self.symbol_name, index_ssa),
            // None => write!(f, "{}_s{}", self.symbol_name, self.scope_node),
            None => write!(f, "{}", self.symbol_name),
        }
    }
}
impl Debug for SymTab {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result {
        write!(f,"{}",self.text)
    }
}
