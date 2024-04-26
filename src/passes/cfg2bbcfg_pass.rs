use crate::toolkit::{context::Context, dot::Config, etc::generate_png_by_graph, pass_manager::Pass};
use anyhow::Result;
#[derive(Debug)]
pub struct Cfg2BbCfgPass {
    is_gen_png:bool,
}
impl Cfg2BbCfgPass {
    pub fn new(_is_gen_png:bool) -> Self { Cfg2BbCfgPass { is_gen_png:true } }
}

impl Pass for Cfg2BbCfgPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut Context) -> Result<()> {
        // 3.1 生成对应的png
        if self.is_gen_png {
            // let symt = self.op_cfg_graph.unwrap();
            generate_png_by_graph(&ctx.cfg_graph, "cfg_all_bb".to_string(), &[Config::EdgeNoLabel, Config::Record, Config::Title("cfg_all_bb".to_string())]);
        }
        Ok(())
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass Cfg2BbCfg pass description".to_string(); }
    // 返回pass的名称
    fn get_pass_name(&self) -> String { return " Cfg2BbCfgPass".to_string(); }
}
