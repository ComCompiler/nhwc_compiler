use std::{collections::HashMap, thread::JoinHandle};

use anyhow::Result;

use crate::Args;

use super::{
    ast_node::AstTree, cfg_node::CfgGraph, decl_def_use_node::DduGraph, dj_node::DjNode, et_node::EtTree, nhwc_instr::InstrSlab, scope_node::ScopeTree, symbol::Symbol, symtab::{SymTab, SymTabGraph}
};
use super::dj_edge::DjEdge;

pub type DjGraph = petgraph::stable_graph::StableDiGraph<DjNode, DjEdge, u32>;

pub struct Context {
    pub args:Args,
    pub code:String,
    pub ast_tree:AstTree,
    pub cfg_graph:CfgGraph,
    pub symtab:SymTab,
    pub scope_tree:ScopeTree,
    pub dj_graph:DjGraph,
    pub et_tree:EtTree,
    pub ast2scope:HashMap<u32, u32>,
    pub symtab_graph:SymTabGraph,
    pub instr_slab:InstrSlab,
    pub ddu_graph:DduGraph,
    pub io_task_list: Vec<JoinHandle<Result<()>>>,
}
pub(crate) static COMPILATION_UNIT:&str = "!compilation_unit";
impl Context {
    pub fn new(args:Args) -> Self {
        Context {
            args,
            cfg_graph:CfgGraph::new(),
            ast_tree:AstTree::new(),
            symtab:{let mut symtab = SymTab::new(); 
                    let mut symbol = Symbol::new_verbose(0, COMPILATION_UNIT.to_string(), None);
                    symbol.add_all_cfg_func_name_entry_tuples(vec![]);
                    let compilation_symidx = symtab.add_symbol(symbol);
                    symtab},
            code:String::new(),
            scope_tree:ScopeTree::new(),
            et_tree:EtTree::new(),
            ast2scope:HashMap::new(),
            symtab_graph:SymTabGraph::new(),
            instr_slab:InstrSlab::new(),
            dj_graph: DjGraph::new(),
            ddu_graph: DduGraph::new(),
            io_task_list: vec![]
        }
    }
}
