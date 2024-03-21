use std::any::Any;
use crate::toolkit::{context::Context, pass_manager::Pass, field::Field};
#[derive(Debug)]
pub struct Nhwc2RiscvPass{
    is_gen_png : bool
}
impl Nhwc2RiscvPass{
    pub fn new(is_gen_png : bool)->Self{
        Nhwc2RiscvPass{ is_gen_png }
    }
}

impl Pass for Nhwc2RiscvPass{
    // 运行这个pass 
    fn run(&mut self,ctx:&mut Context) {
        println!("pass Nhwc2RiscvPass run");
        
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self)->String{
       return "pass Nhwc2RiscvPass description".to_string();
    }
    
    // 返回pass的名称
    fn get_pass_name(&self)->String {
       return "Nhwc2RiscvPass Pass".to_string();
    }
}

