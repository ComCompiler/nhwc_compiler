use crate::{toolkit::{context::NhwcContext, dot::Config, etc::generate_png_by_graph, pass_manager::Pass}};
use anyhow::Result;
#[derive(Debug)]
pub struct CfgDebugPass {
    is_gen_brief_cfg:bool
}
impl CfgDebugPass {
    pub fn new(is_gen_brief_cfg:bool) -> Self { CfgDebugPass { is_gen_brief_cfg } }
}

impl Pass for CfgDebugPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcContext) -> Result<()> { 
        for cfg_node in ctx.cfg_graph.node_weights_mut() {
            cfg_node.clear_text();
            cfg_node.load_instrs_text(&ctx.instr_slab)?;
        }
        if self.is_gen_brief_cfg{
            generate_png_by_graph(&ctx.cfg_graph.clone(), "brief_cfg_graph".to_string(), &[Config::Record, Config::Rounded,  Config::Title("brief_cfg_graph".to_string()),Config::CfgBlock],&mut ctx.io_task_list)?;
        }
        Ok(()) 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass cfg_debug_pass description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "CfgDebugPass".to_string(); }
}

