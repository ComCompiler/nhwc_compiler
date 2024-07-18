use std::fmt::Debug;

use petgraph::stable_graph::StableDiGraph;
use anyhow::Context;
use crate::reg_field_for_struct;

use super::{nhwc_instr::{InstrSlab, NhwcInstr}, symbol::Symbol, symtab::{RcSymIdx, SymIdx}};


pub type CallGraph = StableDiGraph<CallNode, (), u32>;
#[derive (Clone)]
pub struct CallNode {
    pub rc_func_symidx: RcSymIdx,
    pub is_recursive: bool,
    // 怎么获取参数?
    // pub args: Vec<String>,
    // 调用的函数节点?
    //pub calling : FuncCallNode,
}
impl CallNode{
    // pub fn load_instr_text(&mut self , instr_slab:&InstrSlab<NhwcInstr>){
    //     self.func_symidx += format!("{:?}", instr_slab.get_instr(self.instr).unwrap()).as_str();
    // }
    pub fn new(rc_func_symidx:RcSymIdx)->Self{
        Self{
            rc_func_symidx ,
            is_recursive: false,
        }
    }
}
impl Debug for CallNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "{:?}", self.rc_func_symidx)
    }
}