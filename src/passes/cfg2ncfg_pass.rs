use std::any::Any;
use crate::toolkit::dot::Config;

use crate::toolkit::{context::Context, etc::{generate_png_by_graph, read_file_content}, field::Field, gen_ast::parse_as_ast_tree, gen_nhwc_cfg::parse_cfg_into_nhwc_cfg, pass_manager::Pass};
#[derive(Debug)]
pub struct Cfg2NcfgPass{ 
    is_gen_png:bool,
    is_gen_symtab_png:bool,
}
impl Cfg2NcfgPass{
    pub fn new(is_gen_png:bool,is_gen_symtab_png:bool)->Self{
        Cfg2NcfgPass{
            is_gen_png,
            is_gen_symtab_png,
        }
    }
}

impl Pass for Cfg2NcfgPass{
    // 运行这个pass 
    fn run(&mut self,ctx:&mut Context) {
        ctx.nhwc_cfg = ctx.cfg_graph.clone();
        // 不要在函数中对context进行解包,解包应在pass阶段完成
        let (cfg_graph,scope_tree,ast_tree,symtab,et_tree,ast2scope,symtab_graph) = (&mut ctx.cfg_graph,&mut ctx.scope_tree,&mut ctx.ast_tree,&mut ctx.symtab,&mut ctx.et_tree,&mut ctx.ast2scope,&mut ctx.symtab_graph);

        parse_cfg_into_nhwc_cfg(cfg_graph,scope_tree,ast_tree,symtab,et_tree,ast2scope,0,&mut Some(symtab_graph));
        println!("nhwc已生成");
        //4.1可视化
        if self.is_gen_png{
            for cfg_node in ctx.cfg_graph.node_weights_mut(){
                cfg_node.load_ast_node_text(&ctx.ast_tree)
            }
            generate_png_by_graph(&ctx.cfg_graph,"nhwc_cfg_graph".to_string(),&[Config::EdgeNoLabel,Config::Record,Config::Rounded]);
            println!("可视化结束");
        }
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self)->String{
       return "pass Cfg2NhwcCfgPass description".to_string();
    }
    // 返回pass的名称
    fn get_pass_name(&self)->String {
       return "Cfg2NhwcCfgPass".to_string();
    }
}

