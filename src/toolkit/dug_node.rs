use petgraph::stable_graph::StableDiGraph;

use super::{nhwc_instr::{InstrSlab, NhwcInstr}, symtab::RcSymIdx};
use std::fmt::Debug;

pub type DefUseGraph = StableDiGraph<DefUseNode, DefUseEdge, u32>;

#[derive(Clone)]
pub struct DefUseNode{
    pub is_det:bool,
    pub instr:usize,
    pub text:String,
    pub checked:bool,
}
#[derive(Clone)]
pub enum DepType{
    PhiDep{ },
    Dep{ },
    FinalDep{},
    AllocDep{},
    GlobalDep{},
}

#[derive(Clone)]
pub struct DefUseEdge{
    pub dep_type:DepType,
    pub symidx:RcSymIdx,
}
impl DefUseEdge{
    pub fn new(symidx:RcSymIdx)->Self{
        Self { dep_type: DepType::Dep {  }, symidx }
    }
    pub fn new_alloc_dep(symidx:RcSymIdx)->Self{
        Self { dep_type: DepType::AllocDep {  }, symidx }
    }
    pub fn new_phi_dep(symidx:RcSymIdx)->Self{
        Self { dep_type: DepType::PhiDep {  }, symidx }
    }
    pub fn new_final_dep(symidx:RcSymIdx)->Self{
        Self { dep_type: DepType::FinalDep {  } , symidx }
    }
    pub fn new_global_dep(symidx:RcSymIdx)->Self{
        Self { dep_type: DepType::GlobalDep {  } , symidx }
    }
}
impl DefUseNode{
    pub fn load_instr_text(&mut self , instr_slab:&InstrSlab<NhwcInstr>){
        self.text += format!("{:?}", instr_slab.get_instr(self.instr).unwrap()).as_str();
    }
    pub fn new(instr:usize)->Self{
        Self{
            instr,
            text: String::new(),
            is_det: false,
            checked: false,
        }
    }
}

impl Debug for DepType{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{}",match &self{
            DepType::PhiDep{}=>"PhiDep",
            DepType::Dep{}=>"",DepType::FinalDep{}=>"FinalDep",
            DepType::AllocDep {  } => "AllocDep",
            DepType::GlobalDep {  } => "GlobalDep", })
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