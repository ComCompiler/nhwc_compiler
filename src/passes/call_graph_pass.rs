use crate::{reg_field_for_struct, toolkit::{context::NhwcCtx, dot::Config, etc::generate_png_by_graph_multi_tasks, gen_call_graph::parse_func_call_graph, pass_manager::Pass}};
use anyhow::*;
#[derive(Debug)]
pub struct CallGraphPass {
    is_gen_png:bool,
}
impl CallGraphPass {
    pub fn new(is_gen_png:bool) -> Self{ 
        CallGraphPass { is_gen_png }
    }
}
// 看不懂
// reg_field_for_struct!(NhwcInstr
//     {
//         CALL:u32,
//     }
//     with_fields info
//     with_prefix 
// );
impl Pass for CallGraphPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> { 
        let (cfg_graph,symtab,instr_slab,func_call_graph) = (&mut ctx.cfg_graph, &mut ctx.symtab,&mut ctx.nhwc_instr_slab, &mut ctx.call_graph);
        func_call_graph.clear();
        parse_func_call_graph(cfg_graph, symtab, instr_slab, func_call_graph)?;
        if self.is_gen_png {
            // let symt = self.op_cfg_graph.unwrap();
            generate_png_by_graph_multi_tasks(&ctx.call_graph.clone(), "func_call_graph".to_string(), &[Config::Record, Config::Title("func_call_graph".to_string()),Config::RankDirLR],&mut ctx.io_task_list)?;
        }
        Ok(())
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass func call description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "FuncCall Pass".to_string(); }
}
