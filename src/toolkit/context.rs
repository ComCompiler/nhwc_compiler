use std::{collections::HashMap, thread::JoinHandle};

use anyhow::Result;


use crate::toolkit::symtab::SymIdx;
use crate::{add_symbol, Args};

use super::cfg_node::InstrList;
use super::asm_struct::AsmStructure;
use super::nhwc_instr::NhwcInstr;
use super::rv64_instr::RV64Instr;
use super::{
    ast_node::AstTree, cfg_node::CfgGraph, dug_node::DefUseGraph, dj_node::DjNode, et_node::EtTree, nhwc_instr::InstrSlab, scope_node::ScopeTree, symtab::{SymTab, SymTabGraph}
};
use super::dj_edge::DjEdge;

pub type DjGraph = petgraph::stable_graph::StableDiGraph<DjNode, DjEdge, u32>;

pub struct NhwcCtx {
    pub args:Args,
    pub code:String,
    pub ast_tree:AstTree,
    pub cfg_graph:CfgGraph,
    pub symtab:SymTab,
    pub scope_tree:ScopeTree,
    pub dj_graph:DjGraph,
    pub et_tree:EtTree,
    pub instr_et:EtTree,
    pub ast2scope:HashMap<u32, u32>,
    pub symtab_graph:SymTabGraph,
    pub nhwc_instr_slab:InstrSlab<NhwcInstr>,
    pub riscv_instr_slab:InstrSlab<RV64Instr>,
    pub asm_structure:AsmStructure,
    pub def_use_graph:DefUseGraph,
    pub collected_nhwc_ir: InstrList,
    pub io_task_list: Vec<JoinHandle<Result<()>>>,
}
pub(crate) static COMPILATION_UNIT:&str = "!compilation_unit";
impl NhwcCtx {
    pub fn new(args:Args) -> Result<Self> {
        Ok(NhwcCtx {
            args,
            cfg_graph:CfgGraph::new(),
            ast_tree:AstTree::new(),
            symtab:{
                let mut symtab = SymTab::new(); 
                add_symbol!({SymIdx::new(0, COMPILATION_UNIT.to_string()).into_symbol()} 
                    with_field ALL_CFG_FUNC_NAME_ENTRY_TUPLES:{vec![]}
                    with_field TEMP_COUNTER:{0}
                to symtab);
                symtab},
            code:String::new(),
            scope_tree:ScopeTree::new(),
            et_tree:EtTree::new(),
            ast2scope:HashMap::new(),
            symtab_graph:SymTabGraph::new(),
            nhwc_instr_slab:InstrSlab::new(),
            riscv_instr_slab: InstrSlab::new(),
            asm_structure: AsmStructure::new(),
            dj_graph: DjGraph::new(),
            def_use_graph: DefUseGraph::new(),
            io_task_list: vec![],
            collected_nhwc_ir: InstrList::new(),
            instr_et: EtTree::new(),
        })
    }
}
