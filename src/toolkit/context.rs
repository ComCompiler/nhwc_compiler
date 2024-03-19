use std::collections::HashMap;

use derive_builder::Builder;
use petgraph::dot::Config;

use crate::Args;

use super::{ast_node::AstTree, cfg_node::CfgGraph, et_node::EtTree, etc::{generate_png_by_graph, read_file_content}, gen_ast::parse_as_ast_tree, gen_cfg::parse_ast_to_cfg, gen_nhwc_cfg::parse_cfg_into_nhwc_cfg, gen_scope::parse_ast_to_scope, scope_node::ScopeTree, symbol_table::SymbolTable};

#[derive(Default,Builder)]
#[builder(default)]
pub struct Context{
    pub args : Args,
    pub code : String,
    pub ast_tree : AstTree,
    pub cfg_graph : CfgGraph,
    pub symtab : SymbolTable,
    pub scope_tree : ScopeTree,
    pub nhwc_cfg : CfgGraph,
    pub et_tree:EtTree,
    pub ast2scope:HashMap<u32,u32>,
}
impl Context{
    pub fn new(args:Args) -> Self{
        Context{
            args,
            cfg_graph: CfgGraph::new(),
            nhwc_cfg : CfgGraph::new(),
            ast_tree: AstTree::new(),
            symtab: SymbolTable::new(),
            code: String::new(),
            scope_tree: ScopeTree::new(),
            et_tree:EtTree::new(),
            ast2scope:HashMap::new(),
        }
    }
}