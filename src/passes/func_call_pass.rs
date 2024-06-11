use crate::toolkit::{context::NhwcCtx, pass_manager::Pass};
use anyhow::*;
#[derive(Debug)]
pub struct FuncCallDebugPass {
    is_gen_png:bool,
    is_write_s_file:bool,
}
impl FuncCallDebugPass {
    pub fn new(is_gen_png:bool, is_write_s_file:bool) -> Self{ 
        FuncCallDebugPass { is_gen_png, is_write_s_file }
    }
}

impl Pass for FuncCallDebugPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> { 
        let (cfg_graph, nhwc_instr_slab, riscv_instr_slab, src_symtab, asm_structure) = (&mut ctx.cfg_graph, &mut ctx.nhwc_instr_slab, &mut ctx.riscv_instr_slab, &mut ctx.symtab, &mut ctx.asm_structure);
        
        
        
        Ok(())
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass demo description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "DemoPass".to_string(); }
}
