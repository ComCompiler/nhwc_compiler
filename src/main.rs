mod toolkit;
mod antlr_parser;
mod tests;
mod passes;
use std::{path::PathBuf,time::Instant};

use antlr_parser::cparser::{RULE_compoundStatement, RULE_expressionStatement, RULE_functionDefinition} ;
use clap::Parser;
use passes::{ast2cfg_pass::{self, Ast2CfgPass}, ast2et_debug_pass::{self, Ast2EtDebugPass}, ast2st_pass::{self, Ast2StPass}, cfg2ncfg_pass::{self, Cfg2NcfgPass}, code2ast_pass::{self, Code2AstPass}};
use petgraph::adj::NodeIndex;
use toolkit::{ast_node::find_dfs_rule_ast, etc::generate_png_by_graph};


use crate::{antlr_parser::cparser::RULE_declaration, passes::{pass_demo::PassDemo, symtab_debug_pass::{self, SymtabDebugPass}}, toolkit::{context::Context, et_node::{EtNakedNode, EtTree}, eval::eval_et, pass_manager::{Pass, PassManager}}};
#[derive(Parser,Clone,Default)]
#[command(author, version, about)]
pub struct Args {
    ///设置文件地址
    #[arg(short, long, value_name = "FILE",default_value = "./demos/demo1.c")]
    c_file_path: PathBuf,
    // #[arg(short, long, default_value = "true")]
    // gen_png : bool
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
    let args = Args::parse();
    // args.c_file_path = PathBuf::from_str("./demos/demo1.c").unwrap();
    let mut pass_manager = PassManager::new(args);
    let code2ast_pass = Code2AstPass::new(true);
    let ast2cfg_pass = Ast2CfgPass::new(true);
    let ast2et_debug_pass = Ast2EtDebugPass::new(true);
    let cfg2ncfg_pass = Cfg2NcfgPass::new(true,true);
    let ast2st_pass = Ast2StPass::new(true);
    let symtab_debug_pass = SymtabDebugPass::new(true);
    add_passes!(
        code2ast_pass
        then ast2et_debug_pass
        then ast2cfg_pass
        then ast2st_pass
        then cfg2ncfg_pass
        then symtab_debug_pass
        to pass_manager
    );
    timeit!({pass_manager.execute_passes()}, "all passed finish");
}
