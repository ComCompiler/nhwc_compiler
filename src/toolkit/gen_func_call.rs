use super::{ast_node::AstTree, cfg_node::CfgGraph, et_node::EtTree, nhwc_instr::{InstrSlab, NhwcInstr}, scope_node::ScopeTree, symtab::{SymTab, SymTabGraph}};
use anyhow;
// 在gen_nhwc_cfg中,process_func_symbpl函数,可以获取到,负责把function的symbol添加到符号表中去
// declare 只是声明函数,并没有定义 
// declfunc2nhwc是声明函数转nhwc,先声明后调用
// func2nhwc是定义函数转nhwc
// 调用这两个函数时会在symtab中寻找函数名
// 
// 在et_tree中,发现需要处理call节点, 有call必有函数调用
// 
// 需要信息:instr_slab 遍历,找到funccall 命令就引出一条edge和node
// 
// 
pub fn parse_func_call_graph(
    ast_tree:&AstTree, cfg_graph:&mut CfgGraph, et_tree:&mut EtTree, 
    scope_tree:&ScopeTree, symtab:&mut SymTab, et_node:u32, scope_node:u32, 
    cfg_bb:u32, instr_slab:&mut InstrSlab<NhwcInstr>,
    symtab_graph:&mut Option<&mut SymTabGraph>
)->Result<()>{
    for s in symtab.map.iter(){
        if s.
    }
    
    Ok(())
}