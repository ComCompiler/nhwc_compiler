use std::any::Any;
use petgraph::dot::Config;

use crate::toolkit::{context::Context, etc::{generate_png_by_graph, read_file_content}, field::Field, gen_ast::parse_as_ast_tree, gen_cfg::parse_ast_to_cfg, pass_manager::Pass};
#[derive(Debug)]
pub struct Code2AstPass{ 
    is_gen_png:bool
}
impl Code2AstPass{
    pub fn new(is_gen_png:bool)->Self{
        Code2AstPass{ is_gen_png }
    }
}

impl Pass for Code2AstPass{
    // 运行这个pass 
    fn run(&mut self,ctx:&mut Context) {
        println!("pass Code2AstPass run");
        ctx.code = read_file_content(ctx.args.c_file_path.to_string_lossy().into_owned());
        parse_as_ast_tree(ctx);
        // 1.1 生成对应的png 
        if self.is_gen_png{
            let ast_tree = &mut ctx.ast_tree;
            generate_png_by_graph(&ast_tree,"ast_tree".to_string(),&[Config::EdgeNoLabel]);  
        }

    }
    // 返回pass的描述，具体作用
    fn get_desc(&self)->String{
       return "pass Code2AstPass description".to_string();
    }
    // 返回pass的名称
    fn get_pass_name(&self)->String {
       return "Code2AstPass Pass".to_string();
    }
}

