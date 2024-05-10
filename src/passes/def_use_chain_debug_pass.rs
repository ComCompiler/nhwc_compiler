use crate::{add_edge, add_node, add_node_with_edge, debug_info_yellow, instr, instr_mut, node, node_mut, reg_field_for_struct, toolkit::{context::NhwcCtx, def_use_node::{DefUseEdge, DefUseNode}, dot::Config, etc::{self, generate_png_by_graph}, gen_dug, gen_nhwc_cfg::find_branch_of_gather_upwnward, gen_ssa::refresh_cfg_instr_idx_in_cfg_graph, nhwc_instr::Instruction, pass_manager::Pass, symbol::Symbol, symtab::{SymTab, SymTabEdge, SymTabGraph}}};
use anyhow::*;
#[derive(Debug)]
pub struct DefUseChainDebugPass {
    is_gen_png:bool
}
impl DefUseChainDebugPass {
    pub fn new(is_gen_png:bool) -> Self { DefUseChainDebugPass { is_gen_png } }
}

reg_field_for_struct!(Instruction
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
        let (instr_slab,cfg_graph,def_use_graph,symtab )= (&mut ctx.instr_slab,&mut ctx.cfg_graph,&mut ctx.def_use_graph,&ctx.symtab,);
        
        gen_dug::parse_dug(cfg_graph, instr_slab, symtab, def_use_graph)?;
        
        if self.is_gen_png {
            // let symt = self.op_cfg_graph.unwrap();
            generate_png_by_graph(&ctx.def_use_graph.clone(), "def_use_graph".to_string(), &[Config::Record, Config::Title("def_use_graph".to_string()),Config::RankDirLR],&mut ctx.io_task_list)?;
        }

        Ok(()) 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass def use chain debug description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "DefUseChain Debug Pass".to_string(); }
}
