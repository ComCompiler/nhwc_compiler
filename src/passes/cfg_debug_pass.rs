use crate::{toolkit::{context::NhwcCtx, dot::Config, etc::generate_png_by_graph_multi_tasks, pass_manager::Pass}};
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
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> { 
        if self.is_gen_brief_cfg{
            for cfg_node in ctx.cfg_graph.node_weights_mut() {
                cfg_node.clear_text();
                cfg_node.load_instrs_text(&ctx.nhwc_instr_slab)?;
            }
            generate_png_by_graph_multi_tasks(&ctx.cfg_graph.clone(), "brief_cfg_graph".to_string(), &[Config::Record, Config::Rounded,  Config::Title("brief_cfg_graph".to_string()),Config::CfgBlock,Config::NodeIndexLabel],&mut ctx.io_task_list)?;
        }
        Ok(()) 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass cfg_debug_pass description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "CfgDebugPass".to_string(); }
}

