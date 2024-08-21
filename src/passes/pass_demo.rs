use crate::toolkit::{context::NhwcCtx, pass_manager::Pass};
use anyhow::*;
#[derive(Debug)]
pub struct PassDemo {}
impl PassDemo {
    pub fn new() -> Self { PassDemo {} }
}

impl Pass for PassDemo {
    // 运行这个pass
    fn run(&mut self, _ctx:&mut NhwcCtx) -> Result<()> { Ok(()) }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass demo description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "DemoPass".to_string(); }
}
