use crate::toolkit::{context::Context, dot::Config, etc::generate_png_by_graph, gen_djg::parse_ncfg2dj_graph, pass_manager::Pass};
use anyhow::Result;
///计算 dominnace frontier 
#[derive(Debug)]
pub struct Ncfg2DjgPass {is_ncfg_png:bool}
impl Ncfg2DjgPass {
    pub fn new(is_gen_png:bool) -> Self { Ncfg2DjgPass {is_ncfg_png: is_gen_png} }
}

impl Pass for Ncfg2DjgPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut Context) -> Result<()> { 
        parse_ncfg2dj_graph(&mut ctx.cfg_graph, &mut ctx.dj_graph)?;
        if self.is_ncfg_png{
            generate_png_by_graph(&ctx.dj_graph, "dj_graph".to_string(),&[Config::Record, Config::Rounded, Config::Title("nhwc_cfg_graph".to_string()), Config::NodeIndexLabel] )
        }
        if self.is_ncfg_png{
            generate_png_by_graph(&ctx.cfg_graph, "nhwc_cfg_graph".to_string(),&[Config::Record, Config::Rounded, Config::Title("nhwc_cfg_graph".to_string()), Config::NodeIndexLabel, Config::CfgBlock] )
        }
        Ok(()) 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass ncfg2djg description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "Ncfg2DjgPass".to_string(); }
}
