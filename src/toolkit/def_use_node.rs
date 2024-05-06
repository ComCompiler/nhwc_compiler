use petgraph::stable_graph::StableDiGraph;

use super::{cfg_node::CfgInstrIdx, nhwc_instr::InstrSlab, symtab::SymIdx};
use std::fmt::Debug;

pub type DefUseGraph = StableDiGraph<DefUseNode, DefUseEdge, u32>;

#[derive(Clone)]
pub struct DefUseNode{
    pub is_det:bool,
    pub instr:usize,
    pub text:String,
}
#[derive(Clone)]
pub enum DepType{
    PhiDep{ },
    Dep{ }
}

#[derive(Clone)]
pub struct DefUseEdge{
    pub dep_type:DepType,
    pub symidx:SymIdx,
}
impl DefUseEdge{
    pub fn new(symidx:SymIdx)->Self{
        Self { dep_type: DepType::Dep {  }, symidx }
    }
    pub fn new_phi_dep(symidx:SymIdx)->Self{
        Self { dep_type: DepType::PhiDep {  }, symidx }
    }
}
impl DefUseNode{
    pub fn load_instr_text(&mut self , instr_slab:&InstrSlab){
        self.text += format!("{:?}", instr_slab.get_instr(self.instr).unwrap()).as_str();
    }
    pub fn new(instr:usize)->Self{
        Self{
            instr,
            text: String::new(),
            is_det: false,
        }
    }
}

impl Debug for DepType{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{}",match &self{
            DepType::PhiDep { } => "PhiDep",
            DepType::Dep { } => "",
        })
    }
}
impl Debug for DefUseNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{}{}",if self.is_det{ "DET-"} else {""},self.text)
    }
}
impl Debug for DefUseEdge{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{:?} {:?}",self.dep_type,self.symidx)
    }
}