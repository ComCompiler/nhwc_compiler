use petgraph::stable_graph::StableDiGraph;

use super::{cfg_node::CfgInstrIdx, nhwc_instr::InstrSlab, symtab::SymIdx};
use std::fmt::Debug;

pub type DefUseGraph = StableDiGraph<DefUseNode, DefUseEdge, u32>;

#[derive(Clone)]
pub struct DefUseNode{
    pub instr:usize,
    pub text:String,
}
#[derive(Clone)]
pub enum DefOrUse{
    Def{ },
    Use{ }
}

#[derive(Clone)]
pub struct DefUseEdge{
    pub def_or_use:DefOrUse,
    pub symidx:SymIdx,
}
impl DefUseEdge{
    pub fn new(symidx:SymIdx)->Self{
        Self { def_or_use: DefOrUse::Use {  }, symidx: symidx }
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
        }
    }
}

impl Debug for DefOrUse{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{}",match &self{
            DefOrUse::Def { } => "Def",
            DefOrUse::Use { } => "Use",
        })
    }
}
impl Debug for DefUseNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{}",self.text)
    }
}
impl DefUseEdge{
    pub fn new_def( symidx:SymIdx)->Self{
        Self{def_or_use:DefOrUse::Def {  },symidx}
    }
    pub fn new_use( symidx:SymIdx)->Self{
        Self{def_or_use:DefOrUse::Use {  },symidx}
    }

}
impl Debug for DefUseEdge{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{:?}",self.symidx)
    }
}