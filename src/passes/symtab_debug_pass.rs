use anyhow::Result;

use crate::toolkit::dot::Config;
use crate::{add_node};

use crate::toolkit::symtab::{SymTabGraph};
use crate::toolkit::{context::NhwcCtx, etc::generate_png_by_graph_multi_tasks, pass_manager::Pass};
#[derive(Debug)]
pub struct SymtabDebugPass {
    is_gen_png:bool,
}
impl SymtabDebugPass {
    pub fn new(is_gen_png:bool) -> Self { SymtabDebugPass { is_gen_png } }
}

impl Pass for SymtabDebugPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> {
        //4.1可视化
        if self.is_gen_png {
            let mut symtab_g = SymTabGraph::new();
            // println!("ctx的symtab内容为{:#?}",ctx.symtab);
            add_node!({ctx.symtab.clone()} to symtab_g);
            ctx.symtab_graph.clear();
            ctx.symtab.debug_symtab_graph(format!("after ssa pass"), &mut symtab_g,vec![]);
            generate_png_by_graph_multi_tasks(&symtab_g.clone(), "symtab".to_string(), &[Config::Record, Config::Rounded, Config::SymTab, Config::Title("symtab_graph".to_string())],&mut ctx.io_task_list)?;
        }
        Ok(())
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass SymtabDebugPass description".to_string(); }
    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "SymtabDebugPass".to_string(); }
}

