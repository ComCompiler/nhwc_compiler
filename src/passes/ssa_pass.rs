use anyhow::{Result};

use crate::toolkit::{context::Context, pass_manager::Pass};
#[derive(Debug)]
pub struct SsaPass {is_gen_png:bool}
impl SsaPass {
    pub fn new(is_gen_png:bool) -> Self { SsaPass {is_gen_png} }
}

impl Pass for SsaPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut Context) -> Result<()> { 
        // ctx.ssa_nhwc_cfg = ctx.cfg_graph.clone();
        // let root =  NodeIndex::from(0);
        // let dominators = petgraph::algo::dominators::simple_fast(&ctx.ssa_nhwc_cfg, root);
        // let temp = NodeIndex::from(4);
        // for dominator in dominators.strict_dominators(temp).unwrap(){
        //     println!("{} strictly dominated by {}", temp.index(),dominator.index());
        // }
        // let dominators = petgraph::algo::dominators::simple_fast(&ctx.ssa_nhwc_cfg, root);
        // let dominator =  dominators.immediate_dominator(temp).unwrap();
        // println!("{} is immediately dominated by {}", temp.index(),dominator.index());

        // let temp = NodeIndex::from(11);
        // let dominators = petgraph::algo::dominators::simple_fast(&ctx.ssa_nhwc_cfg, root);
        // let dominator =  dominators.immediately_dominated_by(temp);
        // println!("{} is immediately dominated by {}", temp.index(),dominator.index());

        Ok(()) 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass ssa description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "SSAPass".to_string(); }
}

