use crate::{ reg_field_for_struct, toolkit::{context::NhwcCtx, dot::Config, etc::{generate_png_by_graph_multi_tasks}, gen_dug::{parse_dug}, nhwc_instr::NhwcInstr, pass_manager::Pass, symtab::{SymTab, SymTabEdge, SymTabGraph}}};
use anyhow::*;
#[derive(Debug)]
pub struct DefUseChainDebugPass {
    is_gen_png:bool
}
impl DefUseChainDebugPass {
    pub fn new(is_gen_png:bool) -> Self { DefUseChainDebugPass { is_gen_png } }
}

reg_field_for_struct!(NhwcInstr
    {
        COR_DEF_USE_NODE:u32,
    }
    with_fields info
    with_prefix DUG
);

impl Pass for DefUseChainDebugPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> { 
        // 先建立一个图 
        let (instr_slab,cfg_graph,def_use_graph,symtab,dj_graph)= (&mut ctx.nhwc_instr_slab,&mut ctx.cfg_graph,&mut ctx.def_use_graph,&mut ctx.symtab,&ctx.dj_graph);
        
        parse_dug(cfg_graph, instr_slab, symtab, def_use_graph, dj_graph)?;
        
        if self.is_gen_png {
            // let symt = self.op_cfg_graph.unwrap();
            generate_png_by_graph_multi_tasks(&ctx.def_use_graph.clone(), "def_use_graph".to_string(), &[Config::Record, Config::Title("def_use_graph".to_string()),Config::RankDirLR],&mut ctx.io_task_list)?;
        }

        Ok(()) 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass def use chain debug description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "DefUseChain Debug Pass".to_string(); }
}
