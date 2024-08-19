use crate::toolkit::{context::NhwcCtx, dot::Config, etc::generate_png_by_graph_multi_tasks, gen_ssa, pass_manager::Pass};
use anyhow::*;
#[derive(Debug)]
pub struct UntrackInsertionPass {is_gen_ssa_cfg:bool, is_gen_symtab:bool}
impl UntrackInsertionPass {
    pub fn new(is_gen_ssa_cfg:bool, is_gen_symtab:bool) -> Self { UntrackInsertionPass {
        is_gen_ssa_cfg,
        is_gen_symtab,
    } }
}

impl Pass for UntrackInsertionPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> { 
        let rst = gen_ssa::gen_untrack_instr(&mut ctx.symtab, &mut ctx.cfg_graph, &mut ctx.nhwc_instr_slab, &mut ctx.dj_graph);
        for cfg_node in ctx.cfg_graph.node_weights_mut(){
            cfg_node.remove_last_use_map();
        }
        if self.is_gen_ssa_cfg{
            for (idx,instr_struct) in ctx.nhwc_instr_slab.iter_mut(){
                instr_struct.text.clear();
                instr_struct.load_idx_text(idx);
            }
            for cfg_node_struct in ctx.cfg_graph.node_weights_mut() {
                cfg_node_struct.clear_text();
                cfg_node_struct.load_ast_node_text(&ctx.ast_tree)?;
                cfg_node_struct.load_instrs_text(&ctx.nhwc_instr_slab)?;
            }
            generate_png_by_graph_multi_tasks(&ctx.cfg_graph.clone(), "untrack_cfg".to_string(), &[Config::Record, Config::Rounded, Config::Title("ssa_cfg".to_string()), Config::NodeIndexLabel, Config::CfgBlock],&mut ctx.io_task_list)?
        }
        if self.is_gen_symtab {
            ctx.symtab_graph.clear();
            ctx.symtab.debug_symtab_graph(format!("after ssa deconstruction pass"), &mut ctx.symtab_graph,vec![]);
            generate_png_by_graph_multi_tasks(&ctx.symtab_graph.clone(), "symtab".to_string(), &[Config::Record, Config::Rounded, Config::Title("ssa_symtab".to_string()), Config::NodeIndexLabel, Config::CfgBlock],&mut ctx.io_task_list)?
        }
        rst
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "untrack insertion pass".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "UntrackInsertionPass".to_string(); }
}
