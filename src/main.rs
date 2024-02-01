mod toolkit;
mod antlr_parser;
mod tests;
use std::path::PathBuf;

use antlr_parser::cparser::{RULE_compoundStatement, RULE_functionDefinition} ;
use clap::Parser;
use petgraph::{adj::NodeIndex, visit::Dfs};


use crate::toolkit::{cfg_node::{parse_ast_to_cfg, GetText}, etc::{generate_png_by_graph, read_file_content}, gen_ast::parse_as_ast_tree};

#[derive(Parser)]
#[command(author, version, about)]
struct Cli {
    ///设置文件地址
    #[arg(short, long, value_name = "FILE",default_value = "./demos/demo.c")]
    c_file_path: PathBuf
}

///dfs遍历ast树寻找源文件代码块


fn main() {
    // 读取命令选项，诸如 -c 表示代码文件地址
    // 你也可以通过运行 cargo run -- --help 来查看所有可用选项
    let args = Cli::parse();
    let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
    // 此时 g 就是我们生成的petgraph 的ast 树
    let ast_tree = parse_as_ast_tree(code, true);
    // 生成 petgraph 图对应的 png 
    generate_png_by_graph(&ast_tree,"ast_tree".to_string());  
    let mut cfg = parse_ast_to_cfg(&ast_tree);

    let mut dfs = Dfs::new(&cfg, NodeIndex::from(0));


    for cfg_edge_index in cfg.edge_indices()  {
        cfg.edge_weight_mut(cfg_edge_index).unwrap().get_ast_node_text(&ast_tree);
    }
    while let Some(node) =  dfs.next(&cfg){
        node_mut!(at node in cfg).get_ast_node_text(&ast_tree);
    }

    generate_png_by_graph(&cfg,"cfg_graph".to_string());  
    //dfs遍历ast
    // // let mut v= find_dfs_ast(&g, 0,RULE_functionDefinition );
    // // for node in v{
    // //     println!("{}",node);
    // //     println!("{}",g.node_weight(NodeIndex::from(node)).unwrap().text);
    // }

    // test
    println!("Hello, world!");
}
