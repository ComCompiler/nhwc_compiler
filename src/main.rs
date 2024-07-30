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

use passes::{ast2cfg_pass::Ast2CfgPass, ast2et_debug_pass::Ast2EtDebugPass, ast2st_pass::Ast2StPass, call_graph_pass::CallGraphPass, cfg2ncfg_pass::Cfg2NcfgPass, code2ast_pass::Code2AstPass, dead_code_elimination_pass::{self, DeadCodeEliminationPass}, gvngcm_pass::GvnGcmPass, nhwc2et_pass::Nhwc2EtPass, nhwc2riscv_pass::Nhwc2RiscvPass, nhwc_dump_pass::NhwcDumpPass, ssa_deconstruction_pass::SsaDeconstructionPass, symtab_debug_pass::SymtabDebugPass};
use toolkit::symtab::SymIdx;

use crate::{passes::{cfg_debug_pass::CfgDebugPass, def_use_chain_debug_pass::DefUseChainPass, mem_alloc_pass::MemAllocPass, ncfg2djg_pass::Ncfg2DjgPass, simulator_debug_pass::SimulatorDebugPass, ssa_pass::SsaPass}, toolkit::{pass_manager::PassManager}};
#[derive(Parser, Clone, Default, Debug)]
#[command(author, version, about)]
pub struct Args {
    ///设置文件地址
    // #[arg(short, long, value_name = "FILE", default_value = "./demos/demo1.c")]
    // input file path
    pub input:PathBuf,
    #[arg(short='S', value_name = "assemble", default_value = "true")]
    pub assembly:bool,
    // output file path
    #[clap(short, long, default_value = "./testcase.s")]
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

    #[arg(short, value_name = "annotation", default_value = "false")]
    pub annotation:bool,

    #[arg(short, value_name = "test", default_value = "false")]
    pub test:bool,
}


fn main() {
    // 读取命令选项，诸如 -c 表示代码文件地址
    // 你也可以通过运行 cargo run -- --help 来查看所有可用选项
    env_logger::init();
    let args = Args::parse();
    let debug = args.debug;
    let annotation = args.annotation;
    // args.c_file_path = PathBuf::from_str("./demos/demo1.c").unwrap();
    let mut pass_manager = PassManager::new(args);
    let code2ast_pass = Code2AstPass::new(debug);
    let ast2cfg_pass = Ast2CfgPass::new(debug);
    let cfg2ncfg_pass = Cfg2NcfgPass::new(debug,debug);
    let ast2et_debug_pass = Ast2EtDebugPass::new(debug);
    let ast2st_pass = Ast2StPass::new(debug);
    let ncfg2djg_pass = Ncfg2DjgPass::new(debug);
    let ssa_pass = SsaPass::new(debug, debug);
    let ssa_deconstruction_pass = SsaDeconstructionPass::new(debug, debug);
    let cfg_debug_pass1 = CfgDebugPass::new(debug);
    let cfg_debug_pass2 = CfgDebugPass::new(debug);
    let def_use_chain_pass: DefUseChainPass = DefUseChainPass::new(debug);
    let symtab_debug_pass = SymtabDebugPass::new(debug);
    let _simulator_debug_pass = SimulatorDebugPass::new(debug,debug);
    let nhwc_dump_pass = NhwcDumpPass::new(debug);
    let nhwc2riscv_pass = Nhwc2RiscvPass::new(debug, true ,annotation);
    let mem_alloc_pass = MemAllocPass::new();
    let nhwc2et_pass = Nhwc2EtPass::new(debug);
    let func_call_pass = CallGraphPass::new(debug);
    let dce_pass = DeadCodeEliminationPass::new(debug,debug);
    let gvngcm_pass = GvnGcmPass::new(debug,debug);
    if pass_manager.ctx.args.test{
    add_passes!(
        code2ast_pass
        then ast2st_pass
        then ast2cfg_pass
        then cfg2ncfg_pass
        then func_call_pass
        then ncfg2djg_pass
        then ssa_pass

        then gvngcm_pass
        // then def_use_chain_pass
        // then dce_pass
        // then simulator_debug_pass
        then ast2et_debug_pass
        then symtab_debug_pass
        // then nhwc2et_pass
        then ssa_deconstruction_pass
        then nhwc_dump_pass
        then mem_alloc_pass
        then cfg_debug_pass2
        then nhwc2riscv_pass
        to pass_manager
        
    );

    }else {
    add_passes!(
        code2ast_pass
        then ast2st_pass
        then ast2cfg_pass
        then cfg2ncfg_pass
        then func_call_pass
        then ncfg2djg_pass
        then ssa_pass

        // then gvngcm_pass
        // then def_use_chain_pass
        // then dce_pass
        // then simulator_debug_pass
        then ast2et_debug_pass
        then symtab_debug_pass
        // then nhwc2et_pass
        then ssa_deconstruction_pass
        then nhwc_dump_pass
        then mem_alloc_pass
        then cfg_debug_pass2
        then nhwc2riscv_pass
        to pass_manager
        
    );
    }
    let err_flag;
    timeit!({ err_flag = pass_manager.execute_passes(); }, "all passed finish");
    timeit!({ pass_manager.await_all_io_tasks() }, "all io tasks finish");
    if err_flag {
        panic!()
    }
}
