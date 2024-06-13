use std::fs;
use std::io::Write;

use crate::toolkit::{context::NhwcCtx, gen_riscv_asm::parse_nhwcir2riscv, pass_manager::Pass};
use anyhow::Result;
#[derive(Debug)]
pub struct Nhwc2RiscvDebugPass {
    is_gen_png:bool,
    is_write_s_file:bool,
}
impl Nhwc2RiscvDebugPass {
    pub fn new(is_gen_png:bool,is_write_s_file:bool) -> Self { Nhwc2RiscvDebugPass { is_gen_png, is_write_s_file } }
}

impl Pass for Nhwc2RiscvDebugPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> {
        // 拿到一个nhwc的vec,转化成汇编语言
        let _built_in_part = "# Built-in library\n
    .text\n
    .align 4\n
    .globl starttime\n
    .type starttime, @function\n
starttime:\n
    mv a0, zero\n
    tail _sysy_starttime\n
\n
    .text\n
    .align 4\n
    .globl stoptime\n
    .type stoptime, @function\n
stoptime:\n
    mv a0, zero\n
    tail _sysy_stoptime";

        let (cfg_graph, nhwc_instr_slab, riscv_instr_slab, src_symtab, asm_structure) = (&mut ctx.cfg_graph, &mut ctx.nhwc_instr_slab, &mut ctx.riscv_instr_slab, &mut ctx.symtab, &mut ctx.asm_structure);
        parse_nhwcir2riscv(cfg_graph, nhwc_instr_slab, riscv_instr_slab, asm_structure, src_symtab)?;
        if self.is_write_s_file{
            let mut f = fs::File::create(ctx.args.output.clone())?;
            writeln!(f,"{:?}",ctx.asm_structure)?;
        }
        Ok(())
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass Nhwc2RiscvDebugPass description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "Nhwc2RiscvDebugPass".to_string(); }
}