mod clang;
mod toolkit;
use std::path::PathBuf;

use clang::{cparser::{RULE_compoundStatement, RULE_functionDefinition}, rule_only_walkers::AstTreeRcCell};
use clap::Parser;
use petgraph::{adj::NodeIndex, graph::Node,  visit::{Dfs, Walker}, Graph};


use crate::toolkit::{ast_node::dfs_ast, etc::{generate_png_by_graph, read_file_content}, gen_ast::parse_as_ast_graph};

/// ? 使用这个宏的时候必须确保语境中有ast_tree
macro_rules! find {
    (id:ident) => {
        let mut dfs = 
        let mut vec:Vec<String> = Vec::new(); 
        while let Some(N) = dfs.next(&ast_tree) {
            if ast_tree[N].rule_id == RULE_functionDefinition {
                for next in ast_tree.neighbors_directed(N, petgraph::Direction::Outgoing){
                    if ast_tree[next].rule_id == RULE_compoundStatement{
                        vec.push(ast_tree[next].text.clone());
                    }
                }
            }
        }
        vec
    };
}
#[derive(Parser)]
#[command(author, version, about)]
struct Cli {
    ///设置文件地址
    #[arg(short, long, value_name = "FILE",default_value = "./demo.c")]
    c_file_path: PathBuf
}

///dfs遍历ast树寻找源文件代码块


fn main() {
    // 读取命令选项，诸如 -c 表示代码文件地址
    // 你也可以通过运行 cargo run -- --help 来查看所有可用选项
    let args = Cli::parse();
    let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
    // 此时 g 就是我们生成的petgraph 的ast 树
    let g = parse_as_ast_graph(code, true);
    // 生成 petgraph 图对应的 png 
    generate_png_by_graph(&g,"graph2".to_string());  
    //dfs遍历ast
    let mut v= dfs_ast(&g, 0,RULE_functionDefinition );
    for node in v{
        println!("{}",node);
        println!("{}",g.node_weight(NodeIndex::from(node)).unwrap().text);
    }

    // test
    println!("Hello, world!");
}

#[cfg(test)]
mod tests{
    #[test]
    fn add(){
        assert_eq!(3+3 , 6)
    }
}