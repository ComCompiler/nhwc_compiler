use crate::Args;

use anyhow::Result;
use colored::Colorize;
use log::{debug, error};

pub trait Pass {
    fn run(&mut self, ctx:&mut super::context::NhwcCtx) -> Result<()>;
    fn get_desc(&self) -> String;
    fn get_pass_name(&self) -> String;
}
pub struct PassManager {
    /// 其中放置 所有pass 的运行顺序的string
    passes:Vec<Box<dyn Pass>>,
    pub ctx:super::context::NhwcCtx,
}
impl PassManager {
    pub fn new(args:Args) -> Self { PassManager { passes:vec![], ctx:super::context::NhwcCtx::new(args).unwrap() } }
    pub fn add_pass(&mut self, pass:Box<dyn Pass>) { self.passes.push(pass); }
    /// 调用这个函数运行 PassManager 中的所有函数
    pub fn execute_passes(&mut self) -> bool{
        let mut errs = vec![];
        for pass in &mut self.passes {
            // match pass.run(&mut self.ctx).with_context(|| format!("Error occurred when running Pass {}",pass.get_pass_name())){
            match anyhow::Context::with_context(pass.run(&mut self.ctx), || format!("Error occurred when running Pass {}", pass.get_pass_name())) {
                Ok(_) => {
                    debug!("{}", format!("Pass {} run successfully", pass.get_pass_name()).green());
                    //println!("{}", format!("Pass {} run successfully", pass.get_pass_name()).green());
                }
                Err(e) => {
                    error!("{}", format!("{:?}", e).red());
                    errs.push(e);
                    // println!("{}", format!("{:?}", e).red());
                }
            }
        };
        if errs.len()>0{
            println!("All errors:");
        }
        for e in &errs{
            error!("{}", format!("{:?}", e).red());
        }
        errs.len() > 0
    }
    pub fn await_all_io_tasks(&mut self){
        for handle in self.ctx.io_task_list.drain(..){
            match handle.join() {
                Ok(_) => {
                }
                Err(e) => {
                    // println!("{}", format!("{:?}", e).red());
                    error!("{}", format!("{:?}", e).red())
                }
            }
        }

    }
}
