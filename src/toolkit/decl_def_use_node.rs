use petgraph::stable_graph::StableDiGraph;

use super::{cfg_node::CfgInstrIdx, symtab::SymIdx};

pub type DduGraph = StableDiGraph<DeclDefUseNode, (), u32>;

#[derive(Clone,Debug)]
pub struct DeclDefUseNode{
    pub cfg_instr_idx:CfgInstrIdx,
    pub symidx:SymIdx,
}
impl DeclDefUseNode{
    pub fn new(cfg_instr_idx:CfgInstrIdx, symidx:SymIdx )->Self{
        Self { cfg_instr_idx, symidx }
    }
}
