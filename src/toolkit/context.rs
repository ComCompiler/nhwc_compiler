use clap::builder;
use derive_builder::Builder;
use petgraph::{stable_graph::node_index, visit::Dfs};

use crate::{node_mut, Cli};

use super::{ast_node::AstTree, cfg_edge, cfg_node::{parse_ast_to_cfg, CfgGraph}, etc::{generate_png_by_graph, read_file_content}, gen_ast::parse_as_ast_tree, symbol_table::SymbolTable};

#[derive(Default,Builder)]
#[builder(default)]
pub struct Context{
    pub code : String,
    pub cfg_graph : CfgGraph,
    pub ast_tree : AstTree,
    pub symtab : SymbolTable,
}
impl Context{
    fn new() -> Self{
        Context{
            cfg_graph: CfgGraph::new(),
            ast_tree: AstTree::new(),
            symtab: SymbolTable::new(),
            code: String::new(),
        }
    }
    pub fn load_text(&mut self){
        let cfg_graph = &mut self.cfg_graph;
        let ast_tree = &mut self.ast_tree;
        // let symt = self.op_cfg_graph.unwrap();
        let mut dfs = Dfs::new((&*cfg_graph), node_index(0));
        for cfg_edge in cfg_graph.edge_weights_mut()  {
            cfg_edge.load_ast_node_text(&ast_tree);
        }
        for cfg_node in cfg_graph.node_weights_mut(){
            cfg_node.load_ast_node_text(&ast_tree);
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

        context
    }
    pub fn generate_pngs(&mut self){
        self.load_text();   
        generate_png_by_graph(&self.ast_tree,"ast_tree".to_string());  
        generate_png_by_graph(&self.cfg_graph,"cfg_graph".to_string());  
    }
}