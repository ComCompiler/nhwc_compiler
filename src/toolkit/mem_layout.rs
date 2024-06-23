use std::rc::Rc;
use crate::{debug_info_blue, debug_info_red, make_field_trait_for_struct, toolkit::symtab::*};

use std::fmt::Debug;
use anyhow::*;
use crate::{reg_field_for_struct};

use super::{cfg_node::{CfgNode}, symbol::Symbol, symtab::{SymIdx, SymTab}};
use itertools::{self, Itertools};

//  mem offset is the offset to s0 (so you should divide stack_size by mem_offset to get offset to sp)
reg_field_for_struct!(Symbol {
        MEM_OFFSET2S0:isize,
        MEM_OFFSET2SP:isize,
        FUNC_COR_RA_SYMIDX:SymIdx,
        FUNC_COR_S0_SYMIDX:SymIdx,
    } with_fields fields);
reg_field_for_struct!(CfgNode {
    MEM_LAYOUT:MemLayout,
} with_fields info);

use crate::toolkit::field::Field;
make_field_trait_for_struct!{
    isize
}

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
    pub mem:Vec<MemSegment>
}
#[derive(Clone,Debug)]
pub struct MemSegment{
    pub op_symidx:Option<SymIdx>,
    pub len:usize,
}
impl MemSegment{
    pub fn split(self,first_seg_len:usize,op_symidx1:Option<SymIdx>,op_symidx2:Option<SymIdx>) -> Result<(MemSegment,MemSegment)>{
        if first_seg_len > self.len{
            return Err(anyhow!("can't split {} mem into {} mem",self.len,first_seg_len))
        }
        Ok((MemSegment{
            op_symidx: op_symidx1,
            len: first_seg_len,
        },MemSegment{
            op_symidx: op_symidx2,
            len: self.len - first_seg_len,
        }))
    }
    pub fn split_into_may_3_parts(self,first_seg_len:usize,op_symidx1:Option<SymIdx>,second_seg_len:usize,op_symidx2:Option<SymIdx>,op_symidx3:Option<SymIdx>) 
    -> Result<(MemSegment,MemSegment,Option<MemSegment>)>{
        let (a,b) = self.split(first_seg_len, op_symidx1, None)?;
        let (b,c) = b.split(second_seg_len,op_symidx2,op_symidx3)?;
        if c.len != 0{
            Ok((a,b,Some(c)))
        }else {
            Ok((a,b,None))
        }
    }
}
impl MemLayout{
    pub fn new()->Self{
        Self{
            mem: Vec::new(),
        }
    }
    // return the idx of the mem_seg then the mem_start_pos of the mem_seg
    pub fn find_available(&mut self, align:usize,data_len:usize) -> Option<(usize,usize)>{
        // debug_info_blue!("{:?}",self);
        let mut cur_mem_pos = 0;
        for (idx,mem_seg) in self.mem.iter().enumerate(){
            if let None = mem_seg.op_symidx{
                let avail_len = data_len - cur_mem_pos % align;
                if avail_len > data_len{
                    return Some((idx,mem_seg.len-avail_len))
                }
            }
            cur_mem_pos += mem_seg.len;
        }
        None
    }
    /// 返回这个 新插入data 的起始位置
    pub fn insert_data(&mut self, align:usize,data_len:usize, symidx:&SymIdx)-> usize{
        debug_info_red!("insert data_len {} for symidx {:?}",data_len,symidx);
            // debug_info_blue!("align:{} data_len:{}",align,data_len);
        let rst = self.find_available(align,data_len);
        match rst {
            None => {
                self.align_mem_with_blank(align);
                let mem_len = self.get_mem_len();
                // debug_info_blue!("tail_remained:{}",tail_remained_mem_size);
                self.mem.push(MemSegment { op_symidx: Some(symidx.clone()), len: data_len });
                return mem_len;
            }
            Some((idx,mem_start_pos_in_seg)) =>{
                let mem_seg = self.mem.remove(idx);
                let (a,b,op_c) = mem_seg.split_into_may_3_parts(mem_start_pos_in_seg, None, data_len, Some(symidx.clone()), None).unwrap();
                if op_c.is_some(){self.mem.insert(idx, op_c.unwrap())}
                self.mem.insert(idx, b);
                self.mem.insert(idx, a);
                return idx
            }
        }         
    }
    /// 获取目前mem layout的总长度
    pub fn get_mem_len(&self)->usize{
        let mut cur_mem_pos = 0;
        for mem_seg in self.mem.iter(){
            cur_mem_pos += mem_seg.len;
        }
        cur_mem_pos
    }
    /// 会在末尾填充足够的空内存以对齐给定align
    pub fn align_mem_with_blank(&mut self,align:usize){
        if self.get_mem_len()%align !=0{
            if self.mem.last().unwrap().op_symidx.is_none(){
                let mem_len = self.get_mem_len();
                let last_seg_len = &mut self.mem.last_mut().unwrap().len;
                *last_seg_len += align -  mem_len % align;
            }else{
                self.mem.push(MemSegment { op_symidx: None, len: align - self.get_mem_len() % align })
            }
        }
    }
}
impl Debug for MemLayout{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let mut s = String::new();
        let mut offset2sp_vec = vec![];
        offset2sp_vec.push(0);
        for (idx,mem_seg) in self.mem.iter().rev().enumerate(){
            offset2sp_vec.push(mem_seg.len + match offset2sp_vec.get(idx).clone(){
                Some(&last_offset) => {
                    last_offset
                },
                None => {
                    panic!()
                },
            })
        };
        for (idx,mem_seg) in self.mem.iter().enumerate(){
            s += format!("|{}:{} at {}",{match &mem_seg.op_symidx{
                Some(symidx) => symidx.to_string(),
                None => "none".to_string(),
            }},mem_seg.len,offset2sp_vec[self.mem.len()-idx-1]).as_str();
        }
        write!(f,"{}",s)
    }
}
