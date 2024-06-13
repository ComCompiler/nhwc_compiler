use std::rc::Rc;
use crate::{debug_info_blue, toolkit::symtab::*};

use std::fmt::Debug;
use anyhow::*;
use crate::{reg_field_for_struct};

use super::{cfg_node::{CfgNode}, symbol::Symbol, symtab::{SymIdx, SymTab}};
use itertools::{self, Itertools};

//  mem offset is the offset to s0 (so you should divide stack_size by mem_offset to get offset to sp)
reg_field_for_struct!(Symbol {
        MEM_OFFSET2S0:usize,
        MEM_OFFSET2SP:usize,
        FUNC_COR_RA_SYMIDX:SymIdx,
        FUNC_COR_S0_SYMIDX:SymIdx,
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
            debug_info_blue!("align:{} data_len:{}",align,data_len);
            let rst = self.find_available(align,data_len);
            if rst.is_none(){
                let tail_remained_mem_size = {
                    let mut i =0 ;
                    for b in self.mem.iter().rev(){
                        if b.is_some(){
                            break;
                        }
                        i+=1;
                    }
                    i
                };
                debug_info_blue!("tail_remained:{}",tail_remained_mem_size);
                for _ in tail_remained_mem_size..data_len{
                    self.mem.push(None)
                }
                self.align_mem_with_blank(align);
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
