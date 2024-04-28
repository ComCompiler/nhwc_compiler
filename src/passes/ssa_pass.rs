use anyhow::{Result};

use crate::toolkit::{context::Context, dot::Config, etc::generate_png_by_graph, gen_ssa::add_phi_nodes, pass_manager::Pass};
#[derive(Debug)]
pub struct SsaPass {is_gen_png:bool}
impl SsaPass {
    pub fn new(is_gen_png:bool) -> Self { SsaPass {is_gen_png} }
}

impl Pass for SsaPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut Context) -> Result<()> { 
        add_phi_nodes(&mut ctx.cfg_graph, &mut ctx.dj_graph, &mut ctx.symtab, &mut ctx.instr_slab)?;
        if self.is_gen_png{
            for cfg_node in ctx.cfg_graph.node_weights_mut() {
                cfg_node.clear_text();
                cfg_node.load_ast_node_text(&ctx.ast_tree);
                cfg_node.load_instrs_text(&ctx.instr_slab);
            }
            generate_png_by_graph(&ctx.cfg_graph, "nhwc_cfg_graph_after_ssa".to_string(), &[Config::Record, Config::Rounded, Config::Title("nhwc_cfg_graph".to_string()), Config::NodeIndexLabel]);
        }

        Ok(()) 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass ssa description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "SSAPass".to_string(); }
}

