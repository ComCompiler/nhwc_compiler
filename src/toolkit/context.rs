use std::cell::RefCell;

use derive_builder::Builder;
use petgraph::{dot::Config, stable_graph::node_index, visit::Dfs};

use crate::Cli;

use super::{ast_node::AstTree, cfg_node::CfgGraph, etc::{generate_png_by_graph, read_file_content}, gen_ast::parse_as_ast_tree, gen_cfg::parse_ast_to_cfg, et_node::{EtNode, EtTree}, gen_scope::parse_ast_to_scope, scope_node::{self, ScopeTree}, symbol_table::SymbolTable};

#[derive(Default,Builder)]
#[builder(default)]
pub struct Context{
    pub code : String,
    pub ast_tree : AstTree,
    pub cfg_graph : CfgGraph,
    pub symtab : SymbolTable,
    pub scope_tree : ScopeTree,
    pub nhwc_cfg : CfgGraph,
    pub et_tree:EtTree,
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
            et_tree:EtTree::new(),
        }
    }
    pub fn init(args:Cli, is_generate_pngs:bool) -> Self{
        let mut context = Self::new();
        // 第零步，先读取 code 
        context.code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
        // 1.先生成 ast_tree 
        parse_as_ast_tree(&mut context);
        // 1.1 生成对应的png 
        if is_generate_pngs{
            let ast_tree = &mut context.ast_tree;
            generate_png_by_graph(&ast_tree,"ast_tree".to_string(),&[Config::EdgeNoLabel]);  
        }
        // 2. 根据 ast_tree 生成 cfg_graph
        parse_ast_to_cfg(&mut context);
        // 2.1 生成对应的png 
        if is_generate_pngs{
            for cfg_node in context.cfg_graph.node_weights_mut(){
                cfg_node.load_ast_node_text(&context.ast_tree);
            }
            generate_png_by_graph(&context.cfg_graph,"cfg_graph".to_string(),&[]);  
        }
        // 3. 根据ast_tree生成scope_tree
        parse_ast_to_scope(&mut context);
        // 3.1 生成对应的pn 
        if is_generate_pngs{
            // let symt = self.op_cfg_graph.unwrap();
            for scope_node in context.scope_tree.node_weights_mut(){
                scope_node.load_ast_node_text(&context.ast_tree);
            }
            generate_png_by_graph(&context.scope_tree, "scope_tree".to_string(),&[Config::EdgeNoLabel]);
        }
        context
    }
}