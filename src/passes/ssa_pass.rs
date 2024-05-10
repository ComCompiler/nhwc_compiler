use anyhow::{Result};

use crate::toolkit::{ dot::Config, etc::generate_png_by_graph, gen_ssa::{add_phi_nodes, variable_renaming}, pass_manager::Pass};
#[derive(Debug)]
pub struct SsaPass {is_gen_ssa_cfg_png:bool,is_gen_symtab_graph_png:bool}
impl SsaPass {
    pub fn new(is_gen_ssa_cfg_png:bool,is_gen_symtab_graph_png:bool) -> Self { SsaPass {is_gen_ssa_cfg_png,is_gen_symtab_graph_png} }
}

impl Pass for SsaPass {
   // 运行这个pass
    fn run(&mut self, ctx:&mut crate::toolkit::context::NhwcCtx) -> Result<()> { 
        let add_phi_rst = add_phi_nodes(&mut ctx.cfg_graph, &mut ctx.dj_graph, &mut ctx.symtab, &mut ctx.instr_slab);
        let variable_renaming_rst = variable_renaming(&mut ctx.cfg_graph, &mut ctx.dj_graph, &mut ctx.symtab, &mut ctx.instr_slab);
        if self.is_gen_ssa_cfg_png{
            for (idx,instr_struct) in ctx.instr_slab.iter_mut(){
                instr_struct.load_idx_text(idx);
            }
            for cfg_node_struct in ctx.cfg_graph.node_weights_mut() {
                cfg_node_struct.clear_text();
                cfg_node_struct.load_ast_node_text(&ctx.ast_tree)?;
                cfg_node_struct.load_instrs_text(&ctx.instr_slab)?;
            }
            generate_png_by_graph(&ctx.cfg_graph.clone(), "ssa_cfg".to_string(), &[Config::Record, Config::Rounded, Config::Title("ssa_cfg".to_string()), Config::NodeIndexLabel, Config::CfgBlock],&mut ctx.io_task_list)?
        }
        if self.is_gen_symtab_graph_png {
            ctx.symtab_graph.clear();
            ctx.symtab.debug_symtab_graph(format!("after ssa pass"), &mut ctx.symtab_graph);
            generate_png_by_graph(&ctx.symtab_graph.clone(), "ssa_symtab".to_string(), &[Config::Record, Config::Rounded, Config::Title("ssa_cfg".to_string()), Config::NodeIndexLabel, Config::CfgBlock],&mut ctx.io_task_list)?
        }
        add_phi_rst.and(variable_renaming_rst)

    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass ssa description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "SSAPass".to_string(); }
}

