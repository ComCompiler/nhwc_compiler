use std::rc::Rc;
use crate::toolkit::symtab::*;

use std::fmt::Debug;
use anyhow::*;
use crate::{node_mut, reg_field_for_struct};

use super::{cfg_node::{CfgGraph, CfgNode}, symbol::Symbol, symtab::{SymIdx, SymTab}};
use itertools::{self, Itertools};


reg_field_for_struct!(Symbol {
        MEM_OFFSET:usize,
    } with_fields fields);
reg_field_for_struct!(CfgNode {
    MEM_LAYOUT:MemLayout,
} with_fields info);


pub type SymIdxRc = Rc<SymIdx>;
/// 用于进行 栈内存对齐计算
/// ```
/// let mut mem_layout = MemLayout::new();  
/// mem_layout.insert_data(4,& SymIdx::new(0, "hello_world".to_string()));  
/// mem_layout.insert_data(1,& SymIdx::new(0, "little_bool".to_string()));  
/// mem_layout.insert_data(4,& SymIdx::new(0, "fuck_world".to_string()));  
/// debug_info_blue!("{:?}:{}",mem_layout,mem_layout.get_mem_len());  
/// ```
#[derive(Clone)]
pub struct MemLayout{
    pub mem:Vec<Option<SymIdxRc>>
}
impl MemLayout{
    pub fn new()->Self{
        Self{
            mem: Vec::new(),
        }
    }
    pub fn find_available(&mut self, align:usize,data_len:usize) -> Option<usize>{
        // debug_info_blue!("{:?}",self);
        for (idx,_byte) in self.mem.iter()
            .enumerate().step_by(align){
            if let Some(mem_range)=self.mem.get(idx..idx+data_len){
                let mut available = true;
                for mem_byte in mem_range{
                    if let Some(_) = mem_byte{
                        available = false;
                    }
                }
                if !available{
                    continue;
                }
                // 说明idx..idx+byte_len 区间内都没有被分配
                return Some(idx);
            }
        }
        None
    }
    /// 返回这个 新插入data 的起始位置
    pub fn insert_data(&mut self, align:usize,data_len:usize, symidx:&SymIdx)-> usize{
        let symidx_rc = Rc::new(symidx.clone());
        loop{
            let rst = self.find_available(align,data_len);
            if rst.is_none(){
                self.mem.push(None)
            }else if let Some(idx) = rst{
                for i in idx..idx+data_len{
                    self.mem[i]=Some(symidx_rc.clone())
                }
                return idx
            }
        } 
        
    }
    /// 获取目前mem layout的总长度
    pub fn get_mem_len(&self)->usize{
        self.mem.len()
    }
    /// 会在末尾填充足够的空内存以对齐给定align
    pub fn align_mem_with_blank(&mut self,align:usize){
        while self.mem.len()%align !=0{
            self.mem.push(None)
        }
    }
}
impl Debug for MemLayout{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let mut s = String::new();
        for (op_symidx_rc,symidx_rc_group) in &self.mem.iter().group_by(|&x| x){
            s += format!("|{}:{}\n",{match &op_symidx_rc{
                Some(symidx) => symidx.to_string(),
                None => "none".to_string(),
            }},symidx_rc_group.count()).as_str();
        }
        write!(f,"{}",s)
    }
}

/// 接受一个symidx 以索引 symtab 中的符号，获取这个符号的类型然后加入到 cfg_entry 的mem_layout 中
pub fn alloc_stack_mem_for_cfg_entry(cfg_graph:&mut CfgGraph,cfg_entry:u32,symtab:&mut SymTab,symidx:&SymIdx)->Result<()>{
    let cfg_node_struct = node_mut!(at cfg_entry in cfg_graph);
    let symbol_struct = symtab.get_mut_symbol(symidx)?;
    if !cfg_node_struct.has_mem_layout(){
        cfg_node_struct.add_mem_layout(MemLayout::new())
    }
    let sym_type =symbol_struct.get_type()?;
    let mem_offset = cfg_node_struct.get_mut_mem_layout()?.insert_data(sym_type.get_align()?,sym_type.mem_len()?,symidx);
    symbol_struct.add_mem_offset(mem_offset);
    Ok(())
}
