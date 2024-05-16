use crate::toolkit::{context::NhwcCtx, pass_manager::Pass};
use anyhow::*;
#[derive(Debug)]
pub struct Func_call {}
impl Func_call {
    pub fn new() -> Self { Func_call {} }
}

impl Pass for Func_call {
    // 运行这个pass
    fn run(&mut self, _ctx:&mut NhwcCtx) -> Result<()> { Ok(()) }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass demo description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "DemoPass".to_string(); }
}
