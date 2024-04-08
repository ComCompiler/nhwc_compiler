use std::any::Any;
use crate::toolkit::{context::Context, dot::Config, etc::{generate_png_by_graph, read_file_content}, field::Field, gen_ast::parse_as_ast_tree, gen_cfg::parse_ast_to_cfg, pass_manager::Pass};
#[derive(Debug)]
pub struct Ast2CfgPass{
    is_gen_png:bool
 }
impl Ast2CfgPass{
    pub fn new(is_gen_png:bool)->Self{
        Ast2CfgPass{
            is_gen_png
        }
    }
}

impl Pass for Ast2CfgPass{
    // 运行这个pass 
    fn run(&mut self,ctx:&mut Context) {
        parse_ast_to_cfg(&ctx.ast_tree,&mut ctx.cfg_graph,&mut ctx.symtab,&ctx.scope_tree);
        // 1.1 生成对应的png 
        for cfg_node in ctx.cfg_graph.node_weights_mut(){
            cfg_node.load_ast_node_text(&ctx.ast_tree)
        }
        if self.is_gen_png{
            generate_png_by_graph(&ctx.cfg_graph,"cfg_graph".to_string(),&[Config::EdgeNoLabel,Config::Record,Config::Rounded,Config::Title("cfg_graph".to_string())]);  
        }

    }
    // 返回pass的描述，具体作用
    fn get_desc(&self)->String{
       return "pass Ast2Cfg description".to_string();
    }
    // 返回pass的名称
    fn get_pass_name(&self)->String {
       return "Ast2CfgPass".to_string();
    }
}

