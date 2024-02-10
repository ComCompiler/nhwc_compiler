use petgraph::stable_graph::NodeIndex;

use super::{ cfg_node::CfgGraph, context::Context, symbol_table::{self, SymbolTable}};

/*
 这个文件主要是对  cfg_graph 进行后一步处理，因为cfg_graph 在此之前还没有 
 */


pub type NhwcCfg = CfgGraph;
fn parse_expr2nhwc(){

}
/// 处理所有跳转语句，翻译成对应的instruction并确定跳转到的BB
fn parse_stmt2nhwc(){
    
}
fn parse_bb2nhwc(){
    
}
fn parse_declaration2nhwc(){

}
fn parse_for2nhwc(){
    
}
fn parse_while2nhwc(){
    
}
fn parse_func2nhwc(){

}
fn parse_unit(cfg_graph:&mut CfgGraph,nhwc_cfg:&mut NhwcCfg,symtab : &mut SymbolTable, cfg_root:u32 ){
    // let mut cfg_dfs = find_dfs_ast(ast_tree, start, target_rule_id)
    // for cfg_node in cfg_dfs.next(cfg_graph){
    //     parse_func2nhwc(cfg_node.index() as u32 );
    // }
    let func_nodes = cfg_graph.neighbors(NodeIndex::from(cfg_root));
    for func_node  in func_nodes{
        
    }

}

/// 由于cfg 里面包含了其他的一些块和边，例如 branch 块和 after conditioned边
/// 因此我们需要再做一次转化，把边转化成相应的跳转或者调整代码，把所有node 都转化成BasicBlock
fn parse_cfg_into_nhwc_cfg(context :&mut Context){
    let cfg_graph = &mut context.cfg_graph;


}