use ahash::{HashSet, HashSetExt};

use crate::{add_edge, add_node, instr,  node, reg_field_for_struct};

use super::{cfg_node::CfgGraph, etc, call_node::{CallGraph, CallNode}, gen_dug::update_src_symdix_alloc_global_instr_info, gen_ssa::update_cfg_instr_idx_in_cfg_graph, nhwc_instr::{InstrSlab, NhwcInstr, NhwcInstrType}, symbol::Symbol, symtab::{RcSymIdx, SymTab, SymTabGraph, WithBorrow}};
use anyhow::*;
// 在gen_nhwc_cfg中,process_func_symbpl函数,可以获取到,负责把function的symbol添加到符号表中去
// declare 只是声明函数,并没有定义 
// declfunc2nhwc是声明函数转nhwc,先声明后调用
// func2nhwc是定义函数转nhwc
// 调用这两个函数时会在symtab中寻找函数名
// 
// 在et_tree中,发现需要处理call节点, 有call必有函数调用
// 
// 需要信息:instr_slab 遍历,找到funccall 命令就引出一条edge和node

reg_field_for_struct!(Symbol
    {
        COR_FUNC_CALL_NODE: u32,
        CALLEE_FUNC_SET: HashSet<RcSymIdx>,
    }
    with_fields fields
);

pub fn parse_func_call_graph(
    cfg_graph:&mut CfgGraph, symtab:&mut SymTab, 
    instr_slab:&mut InstrSlab<NhwcInstr>, func_call_graph :&mut CallGraph)->Result<(), anyhow::Error>{
    // for s in symtab.map.iter(){
    //     // 在生成call语句时,把信息加入到
    //     if s.1.is_func(){
    //         println!("func name:{}",s.0);
    //     }
    // }
    for (caller_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone(){
        let caller_node = add_node!({CallNode::new(caller_func_symidx.clone())} to func_call_graph);
        // 向func call graph 中添加Call节点
        symtab.get_mut(&caller_func_symidx.as_ref_borrow())?.add_cor_func_call_node(caller_node);
    }
    
    // 遍历所有函数,找到call指令,生成func_call_node和func_call_edge
    for rc_external_func_symidx in symtab.get_global_info().get_external_func_symidx_vec()?.clone(){
        let caller_node = add_node!({CallNode::new(rc_external_func_symidx.clone())} to func_call_graph);
        // 向func call graph 中添加Call节点
        symtab.get_mut(&rc_external_func_symidx.as_ref_borrow())?.add_cor_func_call_node(caller_node);
    }
    for (caller_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone(){
        let caller_func_symidx = caller_func_symidx.as_ref_borrow();
        let mut callee_func_set = HashSet::new();
        for &cfg_node in etc::dfs(cfg_graph, cfg_entry).iter(){
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                match &instr!(at instr in instr_slab)?.instr_type{
                    // 只处理Call
                    NhwcInstrType::Call { op_lhs:_, func_op } => {
                        callee_func_set.insert(func_op.rc_func_symidx.clone());
                    },
                    _ =>continue,
                }
            }
        }
        let &caller_node = symtab.get(&caller_func_symidx)?.get_cor_func_call_node()?;
        for callee_func in callee_func_set.iter(){
            let callee_func_symidx = callee_func.as_ref_borrow();
            let &callee_node =symtab.get(&callee_func_symidx)?.get_cor_func_call_node()?;
            let _call_edge = add_edge!(from caller_node to callee_node in func_call_graph);

        }
        symtab.get_mut(&caller_func_symidx)?.add_callee_func_set(callee_func_set);
    }
    // 加入边之间刷新一下 instruction struct 与 cfg graph 之间的定位关系
    update_cfg_instr_idx_in_cfg_graph(cfg_graph, symtab, instr_slab)?;
    // 加入边
    Ok(())
}