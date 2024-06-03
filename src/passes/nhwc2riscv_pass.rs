use crate::toolkit::{context::NhwcCtx, gen_riscv_asm::parse_nhwcir2riscv, pass_manager::Pass};
use anyhow::Result;
#[derive(Debug)]
pub struct Nhwc2RiscvDebugPass {
    is_gen_png:bool,
}
impl Nhwc2RiscvDebugPass {
    pub fn new(is_gen_png:bool) -> Self { Nhwc2RiscvDebugPass { is_gen_png } }
}

impl Pass for Nhwc2RiscvDebugPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> {
        // 拿到一个nhwc的vec,转化成汇编语言
        let (cfg_graph, nhwc_instr_slab, riscv_instr_slab, src_symtab) = (&mut ctx.cfg_graph, &mut ctx.nhwc_instr_slab, &mut ctx.riscv_instr_slab, &mut ctx.symtab);
        parse_nhwcir2riscv(cfg_graph, nhwc_instr_slab, riscv_instr_slab, src_symtab)?;
        Ok(())
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass Nhwc2RiscvDebugPass description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "Nhwc2RiscvDebugPass".to_string(); }
}