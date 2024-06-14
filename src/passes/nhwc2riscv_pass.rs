use std::fs;
use std::io::Write;

use crate::toolkit::{context::NhwcCtx, gen_riscv_asm::parse_nhwcir2riscv, pass_manager::Pass};
use anyhow::*;
#[derive(Debug)]
pub struct Nhwc2RiscvPass {
    is_gen_png:bool,
    is_write_s_file:bool,
    enable_annotation:bool,
}
impl Nhwc2RiscvPass {
    pub fn new(is_gen_png:bool,is_write_s_file:bool, enable_annotation:bool) -> Self { Nhwc2RiscvPass { is_gen_png, is_write_s_file ,enable_annotation} }
}

impl Pass for Nhwc2RiscvPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> {
        // 拿到一个nhwc的vec,转化成汇编语言
        let _built_in_part = "# Built-in library\n
\t.text\n\t.align 4\n\t.globl starttime\n\t.type starttime, @function\n
starttime:\n\tmv a0, zero\n\ttail _sysy_starttime\n
\n\t.text\n\t.align 4\n\t.globl stoptime\n\t.type stoptime, @function\n
stoptime:\n\tmv a0, zero\n\ttail _sysy_stoptime\n\n\n";

        let (cfg_graph, nhwc_instr_slab, riscv_instr_slab, src_symtab, asm_structure) = (&mut ctx.cfg_graph, &mut ctx.nhwc_instr_slab, &mut ctx.riscv_instr_slab, &mut ctx.symtab, &mut ctx.asm_structure);
        parse_nhwcir2riscv(cfg_graph, nhwc_instr_slab, riscv_instr_slab, asm_structure, src_symtab)?;
        // if self.is_write_s_file{
        std::fs::write(&ctx.args.output, format!("{}",ctx.asm_structure.dump(self.enable_annotation))).unwrap();
        Ok(())
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass Nhwc2RiscvDebugPass description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "Nhwc2RiscvDebugPass".to_string(); }
}