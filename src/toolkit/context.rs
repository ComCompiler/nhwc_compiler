use std::collections::HashMap;

use derive_builder::Builder;

use crate::Args;

use super::{
    ast_node::AstTree, cfg_node::CfgGraph, et_node::EtTree, nhwc_instr::InstrSlab, scope_node::ScopeTree, symtab::{SymTab, SymTabGraph}
};

#[derive(Default, Builder)]
#[builder(default)]
pub struct Context {
    pub args: Args,
    pub code: String,
    pub ast_tree: AstTree,
    pub cfg_graph: CfgGraph,
    pub symtab: SymTab,
    pub scope_tree: ScopeTree,
    pub nhwc_cfg: CfgGraph,
    pub et_tree: EtTree,
    pub ast2scope: HashMap<u32, u32>,
    pub symtab_graph: SymTabGraph,
    pub instr_slab: InstrSlab,
}
impl Context {
    pub fn new(args: Args) -> Self {
        Context {
            args,
            cfg_graph: CfgGraph::new(),
            nhwc_cfg: CfgGraph::new(),
            ast_tree: AstTree::new(),
            symtab: SymTab::new(),
            code: String::new(),
            scope_tree: ScopeTree::new(),
            et_tree: EtTree::new(),
            ast2scope: HashMap::new(),
            symtab_graph: SymTabGraph::new(),
            instr_slab: InstrSlab::new(),
        }
    }
}
