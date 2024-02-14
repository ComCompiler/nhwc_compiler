use std::cell::RefCell;

use derive_builder::Builder;
use petgraph::{stable_graph::node_index, visit::Dfs};

use crate::Cli;

use super::{ast_node::AstTree, cfg_node::CfgGraph, etc::{generate_png_by_graph, read_file_content}, gen_ast::parse_as_ast_tree, gen_cfg::parse_ast_to_cfg, gen_scope::parse_ast_to_scope, scope_node::{self, ScopeTree}, symbol_table::SymbolTable};

#[derive(Default,Builder)]
#[builder(default)]
pub struct Context{
    pub code : String,
    pub ast_tree : AstTree,
    pub cfg_graph : CfgGraph,
    pub symtab : SymbolTable,
    pub scope_tree : ScopeTree,
    pub nhwc_cfg : CfgGraph,
}
impl Context{
    fn new() -> Self{
        Context{
            cfg_graph: CfgGraph::new(),
            nhwc_cfg : CfgGraph::new(),
            ast_tree: AstTree::new(),
            symtab: SymbolTable::new(),
            code: String::new(),
            scope_tree: ScopeTree::new(),
        }
    }
    pub fn load_text(&mut self){
        let cfg_graph = &mut self.cfg_graph;
        let ast_tree = &mut self.ast_tree;
        let scope_tree = &mut self.scope_tree;
        // let symt = self.op_cfg_graph.unwrap();
        let mut dfs = Dfs::new(&*cfg_graph, node_index(0));
        for cfg_edge in cfg_graph.edge_weights_mut()  {
            cfg_edge.load_ast_node_text(&ast_tree);
        }
        for cfg_node in cfg_graph.node_weights_mut(){
            cfg_node.load_ast_node_text(&ast_tree);
        }
        for scope_node in scope_tree.node_weights_mut(){
            scope_node.load_ast_node_text(&ast_tree);
        }
    }   
    pub fn init(args:Cli) -> Self{
        let mut context = Self::new();
        // 第零步，先读取 code 
        context.code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
        // 第一步，先生成 ast_tree 
        parse_as_ast_tree(&mut context);
        //第二步，根据 ast_tree 生成 cfg_graph
        parse_ast_to_cfg(&mut context);
        //第三步，根据ast_tree生成scope_tree
        parse_ast_to_scope(&mut context);

        context
    }
    pub fn generate_pngs(&mut self){
        self.load_text();   
        generate_png_by_graph(&self.ast_tree,"ast_tree".to_string());  
        generate_png_by_graph(&self.cfg_graph,"cfg_graph".to_string());  
        generate_png_by_graph(&self.scope_tree, "scope_tree".to_string());
    }
    pub fn get_all_data_mut(&mut self){

    }
}