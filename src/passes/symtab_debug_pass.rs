use std::any::Any;
use petgraph::adj::NodeIndex;

use crate::{add_node, add_node_with_edge};
use crate::toolkit::dot::Config;

use crate::toolkit::symbol_table::{SymTab, SymtabGraph};
use crate::toolkit::{context::Context, etc::{generate_png_by_graph, read_file_content}, field::Field, gen_ast::parse_as_ast_tree, gen_nhwc_cfg::parse_cfg_into_nhwc_cfg, pass_manager::Pass};
#[derive(Debug)]
pub struct SymtabDebugPass{ 
    is_gen_png:bool
}
impl SymtabDebugPass{
    pub fn new(is_gen_png:bool)->Self{
        SymtabDebugPass{
            is_gen_png
        }
    }
}

impl Pass for SymtabDebugPass{
    // 运行这个pass 
    fn run(&mut self,ctx:&mut Context) {
        //4.1可视化
        if self.is_gen_png{
            for cfg_node in ctx.cfg_graph.node_weights_mut(){
                cfg_node.load_ast_node_text(&ctx.ast_tree)
            }
            let mut symtab_g = SymtabGraph::new();
            println!("ctx的symtab内容为{:#?}",ctx.symtab);
            add_node!({ctx.symtab.clone()} to symtab_g);
            let root = 0;
            add_node_with_edge!({ctx.symtab.clone()} from root in symtab_g);
            generate_png_by_graph(&symtab_g,"symtab".to_string(),&[Config::EdgeNoLabel,Config::Record,Config::Rounded,Config::Symtab]);

            let mut step_symtab_g = SymtabGraph::new();

            // 遍历读取每个含有symbol的节点? | 读取ctx.symtab并按照#......$ @......$的顺序插入新的symtab? | 遍历symtab?
            // let step_symtab = Symtab::new();
            // for cfg_node in ctx.cfg_graph.node_weights_mut(){

            //     add_node_with_edge!({step_symtab.clone()} from /*上次的节点 */ in step_symtab_g);


            // }
            // generate_png_by_graph(&symtab_g,"step_symtab".to_string(),&[Config::EdgeNoLabel,Config::Record,Config::Rounded,Config::Symtab]);
        }
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self)->String{
       return "pass SymtabDebugPass description".to_string();
    }
    // 返回pass的名称
    fn get_pass_name(&self)->String {
       return "SymtabDebugPass".to_string();
    }
}



