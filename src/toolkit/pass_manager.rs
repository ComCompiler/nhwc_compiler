use crate::{find, Args};

use super::{context::Context, field::Field, symbol_table::Symidx};
use super::field::{Fields, FieldsOwner};

pub trait Pass{
    fn run(&mut self,ctx:&mut Context);
    fn get_desc(&self)->String;
    fn get_pass_name(&self)->String;
}
pub struct PassManager{
    /// 其中放置 所有pass 的运行顺序的string 
    passes:Vec<Box<dyn Pass>>,
    loop_entries :  Vec<Symidx>,
    function_entries : Vec<Symidx>,
    ctx :Context
}
impl PassManager {
    pub fn new(args:Args)-> Self{
        PassManager{
            loop_entries: vec![],
            function_entries: vec![],
            passes: vec![],
            ctx: Context::new(args),
        }
    }
    pub fn add_pass(&mut self,pass:Box<dyn Pass>){
        self.passes.push(pass);
    }
    /// 调用这个函数运行 PassManager 中的所有函数
    pub fn execute_passes(&mut self){
        for pass in &mut self.passes{
            println!("Pass {} run",pass.get_pass_name());
            pass.run(&mut self.ctx)
        }
    }
}
