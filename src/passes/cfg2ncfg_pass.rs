use std::any::Any;
use petgraph::dot::Config;

use crate::toolkit::{context::Context, etc::{generate_png_by_graph, read_file_content}, field::Field, gen_ast::parse_as_ast_tree, gen_cfg::parse_ast_to_cfg, gen_nhwc_cfg::parse_cfg_into_nhwc_cfg, pass_manager::Pass};
#[derive(Debug)]
pub struct Cfg2NcfgPass{ 
    is_gen_png:bool
}
impl Cfg2NcfgPass{
    pub fn new(is_gen_png:bool)->Self{
        Cfg2NcfgPass{
            is_gen_png
        }
    }
}

impl Pass for Cfg2NcfgPass{
    // 运行这个pass 
    fn run(&mut self,ctx:&mut Context) {
        println!("pass Cfg2NhwcCfgPass run");
        ctx.nhwc_cfg = ctx.cfg_graph.clone();
        parse_cfg_into_nhwc_cfg(ctx,0);
        println!("nhwc已生成");
        //4.1可视化
        if self.is_gen_png{
            for cfg_node in ctx.cfg_graph.node_weights_mut(){
                cfg_node.load_ast_node_text(&ctx.ast_tree)
            }
<<<<<<< HEAD
            generate_png_by_graph(&ctx.nhwc_cfg,"nhwc_cfg_graph".to_string(),&[Config::EdgeNoLabel]);
=======
            generate_png_by_graph(&ctx.cfg_graph,"nhwc_cfg_graph".to_string(),&[]);
>>>>>>> refs/remotes/origin/master
            println!("可视化结束");
        }
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self)->String{
       return "pass Cfg2NhwcCfgPass description".to_string();
    }
    // 返回pass的名称
    fn get_pass_name(&self)->String {
       return "Cfg2NhwcCfgPass Pass".to_string();
    }
}


