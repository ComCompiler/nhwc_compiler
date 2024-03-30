use std::any::Any;
use petgraph::dot::Config;

use crate::toolkit::{context::Context, etc::{generate_png_by_graph, read_file_content}, field::Field, gen_ast::parse_as_ast_tree, gen_cfg::parse_ast_to_cfg, pass_manager::Pass};
#[derive(Debug)]
pub struct Riscv2BinaryPass{ 
}
impl Riscv2BinaryPass{
    pub fn new()->Self{
        Riscv2BinaryPass{ }
    }
}

impl Pass for Riscv2BinaryPass{
    // 运行这个pass 
    fn run(&mut self,ctx:&mut Context) {
        todo!();
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self)->String{
       return "pass Riscv2Binary description".to_string();
    }
    // 返回pass的名称
    fn get_pass_name(&self)->String {
       return "Riscv2BinaryPass Pass".to_string();
    }
}

