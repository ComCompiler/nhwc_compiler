mod toolkit;
mod antlr_parser;
mod tests;
mod passes;
use std::{path::PathBuf, time::Instant};

use antlr_parser::cparser::{RULE_compoundStatement, RULE_functionDefinition} ;
use clap::Parser;
use petgraph::{adj::NodeIndex, visit::Dfs};


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
    // 读取命令选项，诸如 -c 表示代码文件地址
    // 你也可以通过运行 cargo run -- --help 来查看所有可用选项
    let args = Cli::parse();
    // 此时 g 就是我们生成的petgraph 的ast 树
    // 生成 petgraph 图对应的 png 


    let mut context = timeit!({Context::init(args,true)} , "init");
    // test
    println!("Hello, world!");
}
