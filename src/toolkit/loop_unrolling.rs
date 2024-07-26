use crate::node;

use super::cfg_node::{CfgGraph, CfgNodeType};

///判断是否为whileloop，然后提取条件判断变量
pub fn get_while_condition_symidx(cfg_node:u32,cfg_graph:CfgGraph){
    if let CfgNodeType::WhileLoop { ast_expr_node } = node!(at cfg_node in cfg_graph){
        
    }else{}
}