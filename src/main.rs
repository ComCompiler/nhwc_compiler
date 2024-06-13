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

use passes::{ast2cfg_pass::Ast2CfgPass, ast2et_debug_pass::Ast2EtDebugPass, ast2st_pass::Ast2StPass, cfg2ncfg_pass::Cfg2NcfgPass, code2ast_pass::Code2AstPass, nhwc2riscv_pass::Nhwc2RiscvDebugPass, nhwc_dump_pass::NhwcDumpPass, symtab_debug_pass::SymtabDebugPass};

use crate::{passes::{cfg_debug_pass::CfgDebugPass, def_use_chain_debug_pass::DefUseChainDebugPass, mem_alloc_pass::MemAllocPass, ncfg2djg_pass::Ncfg2DjgPass, simulator_debug_pass::SimulatorDebugPass, ssa_pass::SsaPass}, toolkit::{pass_manager::PassManager}};
#[derive(Parser, Clone, Default)]
#[command(author, version, about)]
pub struct Args {
    ///设置文件地址
    // #[arg(short, long, value_name = "FILE", default_value = "./demos/demo1.c")]
    // input file path
    pub input:PathBuf,
    #[arg(short='S', value_name = "assemble", default_value = "true")]
    pub assembly:bool,
    // output file path
    #[clap(short, long, default_value = "-")]
    pub output: PathBuf,
    /// Optimization level
    #[arg(short='O', value_name = "optimize", default_value = "")]
    pub optimize: String,
    // #[arg(short, long, default_value = "true")]
    // gen_png : bool
    #[arg(short, value_name = "debug", default_value = "false")]
    pub debug: bool,

    #[arg(short, value_name = "with_header", default_value = "false")]
    pub no_header:bool,
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
    let is_gen_png_global = args.debug;
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
    let def_use_chain_debug_pass: DefUseChainDebugPass = DefUseChainDebugPass::new(true && is_gen_png_global);
    let symtab_debug_pass = SymtabDebugPass::new(true && is_gen_png_global);
    let _simulator_debug_pass = SimulatorDebugPass::new(true && is_gen_png_global,false);
    let nhwc_collect_pass = NhwcDumpPass::new(true && is_gen_png_global);
    let nhwc2riscv_pass = Nhwc2RiscvDebugPass::new(true && is_gen_png_global, true);
    let mem_alloc_pass = MemAllocPass::new();
    add_passes!(
        code2ast_pass
        then ast2st_pass
        then ast2cfg_pass
        then cfg2ncfg_pass
        then ncfg2djg_pass
        then mem_alloc_pass
        // then ssa_pass
        then cfg_debug_pass
        // then def_use_chain_debug_pass
        then nhwc_collect_pass
        // then simulator_debug_pass
        then ast2et_debug_pass
        then symtab_debug_pass
        then nhwc2riscv_pass
        to pass_manager
        
    );
    timeit!({ pass_manager.execute_passes() }, "all passed finish");
    timeit!({ pass_manager.await_all_io_tasks() }, "all io tasks finish");

}
