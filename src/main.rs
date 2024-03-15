mod toolkit;
mod antlr_parser;
mod tests;
mod passes;
use std::{path::PathBuf,time::Instant};

use antlr_parser::cparser::{RULE_compoundStatement, RULE_expressionStatement, RULE_functionDefinition} ;
use clap::Parser;
use petgraph::adj::NodeIndex;
use toolkit::{ast_node::find_dfs_rule_ast, etc::generate_png_by_graph};


use crate::{antlr_parser::cparser::RULE_declaration, toolkit::{context::Context, et_node::{EtNakedNode, EtTree}}};
#[derive(Parser)]
#[command(author, version, about)]
pub struct Cli {
    ///设置文件地址
    #[arg(short, long, value_name = "FILE",default_value = "./demos/demo1.c")]
    c_file_path: PathBuf
}


// 这是一个计时宏
macro_rules! timeit {
    ($a:block , $word:expr) => {
        {
            let start_time = Instant::now();
            let a = $a;
            let duration =  Instant::now() - start_time;
            println!("{} 耗时: {:?}",$word,duration);
            a
        }
    };
}

fn main() {
    // 读取命令选项，诸如 -c 表示代码文件地址
    // 你也可以通过运行 cargo run -- --help 来查看所有可用选项
    let args = Cli::parse();
    // 此时 g 就是我们生成的petgraph 的ast 树
    // 生成 petgraph 图对应的 png 


    let mut context = timeit!({Context::init(args,true)} , "init");
    // test
    // args.c_file_path = PathBuf::from_str("./demos/demo1.c").unwrap();
    let mut et_tree = EtTree::<()>::new();
    //dfs遍历ast找到第一个 expr stmt
    let mut nodes: Vec<u32> = vec![];
    nodes.extend(find_dfs_rule_ast(&context.ast_tree, 0, RULE_declaration));  
    nodes.extend(find_dfs_rule_ast(&context.ast_tree, 0, RULE_expressionStatement));  
    let root =0 ;
    et_tree.add_node(EtNakedNode::new_sep(root).to_et_node());
    for node in nodes{
        let any_root = toolkit::gen_et::process_any_stmt(&mut et_tree, &context.ast_tree, &context.scope_tree, node, 0,);
        add_edge!(from root to any_root in et_tree);
    }
    //debug输出et_node内容
    for et_node in et_tree.node_weights_mut(){
        et_node.load_ast_node_text(&context.ast_tree)
    }

    generate_png_by_graph(&et_tree, "et_tree".to_string(), &[petgraph::dot::Config::EdgeNoLabel]);

    println!("hello world!")

}
