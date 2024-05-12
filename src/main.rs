// #![allow(non_upper_case_globals)]
// #![allow(dead_code)]
// #![allow(unused_braces)]
mod antlr_parser;
mod passes;
mod tests;
mod toolkit;
use std::{path::PathBuf, time::Instant};

use antlr_parser::cparser::{RULE_compoundStatement, RULE_functionDefinition};
use clap::Parser;
use eval::Value;
use passes::{ast2cfg_pass::Ast2CfgPass, ast2et_debug_pass::Ast2EtDebugPass, ast2st_pass::Ast2StPass, cfg2ncfg_pass::Cfg2NcfgPass, code2ast_pass::Code2AstPass};

use crate::{passes::{cfg_debug_pass::CfgDebugPass, def_use_chain_debug_pass::DefUseChainDebugPass, ncfg2djg_pass::Ncfg2DjgPass, nhwc_collect_pass::{self, NhwcCollectPass}, simulator_debug_pass::{self, SimulatorDebugPass}, ssa_pass::SsaPass}, toolkit::pass_manager::PassManager};
#[derive(Parser, Clone, Default)]
#[command(author, version, about)]
pub struct Args {
    ///设置文件地址
    #[arg(short, long, value_name = "FILE", default_value = "./demos/demo1.c")]
    c_file_path:PathBuf,
    // #[arg(short, long, default_value = "true")]
    // gen_png : bool
}

// 这是一个计时宏
macro_rules! timeit {
    ($a:block , $word:expr) => {{
        let start_time = Instant::now();
        let a = $a;
        let duration = Instant::now() - start_time;
        println!("{} 耗时: {:?}", $word, duration);
        a
    }};
}

fn main() {
    // 读取命令选项，诸如 -c 表示代码文件地址
    // 你也可以通过运行 cargo run -- --help 来查看所有可用选项

    let args = Args::parse();
    let is_gen_png_global = true;
    // args.c_file_path = PathBuf::from_str("./demos/demo1.c").unwrap();
    let mut pass_manager = PassManager::new(args);
    let code2ast_pass = Code2AstPass::new(true && is_gen_png_global);
    let ast2cfg_pass = Ast2CfgPass::new(true && is_gen_png_global);
    let ast2et_debug_pass = Ast2EtDebugPass::new(true && is_gen_png_global);
    let cfg2ncfg_pass = Cfg2NcfgPass::new(true && is_gen_png_global, true && is_gen_png_global);
    let ast2st_pass = Ast2StPass::new(true && is_gen_png_global);
    let ncfg2djg_pass = Ncfg2DjgPass::new(true && is_gen_png_global);
    let ssa_pass = SsaPass::new(true && is_gen_png_global, true && is_gen_png_global);
    let cfg_debug_pass = CfgDebugPass::new(true && is_gen_png_global);
    let def_use_chain_debug_pass = DefUseChainDebugPass::new(true && is_gen_png_global);
    // let symtab_debug_pass = SymtabDebugPass::new(true && is_gen_png_global);
    let simulator_debug_pass = SimulatorDebugPass::new(true && is_gen_png_global);
    let nhwc_collect_pass = NhwcCollectPass::new(true);
    add_passes!(
        code2ast_pass
        then ast2et_debug_pass
        then ast2cfg_pass
        then ast2st_pass
        then cfg2ncfg_pass
        then ncfg2djg_pass
        then ssa_pass
        then cfg_debug_pass
        then def_use_chain_debug_pass
        // then symtab_debug_pass
        then nhwc_collect_pass
        then simulator_debug_pass
        to pass_manager
        
    );
    timeit!({ pass_manager.execute_passes() }, "all passed finish");
    timeit!({ pass_manager.await_all_io_tasks() }, "all io tasks finish");

}
