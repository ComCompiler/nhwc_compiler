use crate::Args;

use anyhow::Result;
use colored::Colorize;

pub trait Pass {
    fn run(&mut self, ctx:&mut super::context::Context) -> Result<()>;
    fn get_desc(&self) -> String;
    fn get_pass_name(&self) -> String;
}
pub struct PassManager {
    /// 其中放置 所有pass 的运行顺序的string
    passes:Vec<Box<dyn Pass>>,
    ctx:super::context::Context,
}
impl PassManager {
    pub fn new(args:Args) -> Self { PassManager { passes:vec![], ctx:super::context::Context::new(args) } }
    pub fn add_pass(&mut self, pass:Box<dyn Pass>) { self.passes.push(pass); }
    /// 调用这个函数运行 PassManager 中的所有函数
    pub fn execute_passes(&mut self) {
        for pass in &mut self.passes {
            // match pass.run(&mut self.ctx).with_context(|| format!("Error occurred when running Pass {}",pass.get_pass_name())){
            match anyhow::Context::with_context(pass.run(&mut self.ctx), || format!("Error occurred when running Pass {}", pass.get_pass_name())) {
                Ok(_) => {
                    println!("{}", format!("Pass {} run successfully", pass.get_pass_name()).green());
                }
                Err(e) => {
                    println!("{}", format!("{:?}{}", e,e.backtrace()).red());
                }
            }
        }
    }
}
