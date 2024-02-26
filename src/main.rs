mod toolkit;
mod antlr_parser;
mod tests;
mod passes;
use std::{path::PathBuf, str::FromStr, time::Instant};

use antlr_parser::cparser::{RULE_compoundStatement, RULE_expressionStatement, RULE_functionDefinition} ;
use clap::Parser;
use petgraph::{adj::NodeIndex, visit::Dfs};
use toolkit::{ast_node::{find_dfs_rule_ast, AstTree}, etc::generate_png_by_graph, gen_et::{EtNode, EtTree}};


use crate::toolkit::context::{Context, ContextBuilder};
#[derive(Parser)]
#[command(author, version, about)]
pub struct Cli {
    ///设置文件地址
    #[arg(short, long, value_name = "FILE",default_value = "./demos/demo.c")]
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
    // // 读取命令选项，诸如 -c 表示代码文件地址
    // // 你也可以通过运行 cargo run -- --help 来查看所有可用选项
    // let args = Cli::parse();
    // // 此时 g 就是我们生成的petgraph 的ast 树
    // // 生成 petgraph 图对应的 png 


    // let mut context = timeit!({Context::init(args,true)} , "init");
    // // test
    // println!("Hello, world!");
            let mut args = Cli::parse();
        // 设置 path 为 demo.c
        args.c_file_path = PathBuf::from_str("./demos/demo2.c").unwrap();
        let context = Context::init(args, true);
        let mut et_tree = EtTree::new();
        //dfs遍历ast找到第一个 expr stmt
        let expr_stmt_nodes:Vec<u32>=find_dfs_rule_ast(&context.ast_tree, 0, RULE_expressionStatement).collect();  // 三号节点是一个 function def 
        et_tree.add_node(EtNode::new_sep(0));
        for expr_stmt_node in expr_stmt_nodes{
            toolkit::gen_et::process_expr_stmt(&mut et_tree, &context.ast_tree, &context.scope_tree, expr_stmt_node, 0, 0);
        }
        //debug输出et_node内容
        for et_node in et_tree.node_weights_mut(){
            et_node.load_et_node_text()
        }
        generate_png_by_graph(&et_tree, "et_tree".to_string(), &[petgraph::dot::Config::EdgeNoLabel]);
        
}
