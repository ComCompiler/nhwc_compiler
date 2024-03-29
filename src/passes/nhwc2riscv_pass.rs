use std::any::Any;
use crate::toolkit::{context::Context, field::Field, nhwc_instr::Instruction, pass_manager::Pass};
#[derive(Debug)]
pub struct Nhwc2RiscvDebugPass{
    is_gen_png : bool
}
impl Nhwc2RiscvDebugPass{
    pub fn new(is_gen_png : bool)->Self{
        Nhwc2RiscvDebugPass{ is_gen_png }
    }
}

impl Pass for Nhwc2RiscvDebugPass{
    // 运行这个pass 
    fn run(&mut self,ctx:&mut Context) {
        println!("pass Nhwc2RiscvDebugPass run");
        // 拿到一个nhwc的vec,转化成汇编语言
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self)->String{
       return "pass Nhwc2RiscvDebugPass description".to_string();
    }
    
    // 返回pass的名称
    fn get_pass_name(&self)->String {
       return "Nhwc2RiscvDebugPass Pass".to_string();
    }


}
impl Nhwc2RiscvDebugPass{
    // pub fn nhwc2asm(&self,ctx:&mut Context , nhwc_vec : &Vec<Instruction>) -> Vec<String>{
    //     // 拿到一个nhwc的vec,转化成汇编语言
    //     let mut asm_vec : Vec<String> = Vec::new();
    //     for inst in nhwc_vec{
    //         let asm = inst.to_asm();
    //         asm_vec.push(asm);
    //     }
    //     asm_vec
    // }
}
