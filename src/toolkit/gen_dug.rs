use std::ops::Index;

use crate::{add_edge, add_node, instr, instr_mut, node, node_mut};

use super::{cfg_node::CfgGraph, def_use_node::{DefUseEdge, DefUseGraph, DefUseNode}, etc, gen_nhwc_cfg::find_branch_of_gather_upwnward, gen_ssa::refresh_cfg_instr_idx_in_cfg_graph, nhwc_instr::{InstrSlab, InstrType, JumpOp}, symtab::{SymIdx, SymTab}};
use anyhow::*;

pub fn parse_dug(cfg_graph:&mut CfgGraph,instr_slab:&mut InstrSlab,symtab:&SymTab,def_use_graph:&mut DefUseGraph) -> Result<()>{
    for (func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_name_entry_tuples()?{
        for &cfg_node in etc::dfs(cfg_graph, *cfg_entry).iter(){
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                if let InstrType::Label {  label_symidx } = &instr!(at instr in instr_slab)?.instr_type{
                    continue;
                }
                if let InstrType::Jump { jump_op } = &instr!(at instr in instr_slab)?.instr_type{
                    if let JumpOp::Br { cond, t1, t2 } = jump_op{

                    }else{
                        continue;
                    }
                }
                let dug_node = add_node!({DefUseNode::new(instr)} to def_use_graph);
                node_mut!(at dug_node in def_use_graph).load_instr_text(instr_slab);
                let instr_struct = instr_mut!(at instr in instr_slab)?;
                instr_struct.add_dug_cor_def_use_node(dug_node);
            }
        }
    }
    // 加入边之间刷新一下 instruction struct 与 cfg graph 之间的定位关系
    refresh_cfg_instr_idx_in_cfg_graph(cfg_graph, symtab, instr_slab);
    // 然后加入边
    for (func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_name_entry_tuples()?{
        for &cfg_node in etc::dfs(cfg_graph, *cfg_entry).iter(){
            for &phi_instr in node!(at cfg_node in cfg_graph).phi_instrs.iter(){
                let br_instr = get_cor_br_instr_of_phi_instr(cfg_graph,instr_slab, phi_instr, symtab)?;
                let &br_cor_def_use_node = instr_slab.get_instr(br_instr)?.get_dug_cor_def_use_node()?;
                let &phi_instr_cor_def_use_node = instr_slab.get_instr(phi_instr)?.get_dug_cor_def_use_node()?;
                let use_symidx = instr!(at br_instr in instr_slab)?.get_use_symidx_vec()[0];
                let &det_instr = symtab.get_symbol(use_symidx)?.get_ssa_def_instr()?;
                let &det_instr_cor_def_use_node = instr!(at det_instr in instr_slab)?.get_dug_cor_def_use_node()?;
                node_mut!(at det_instr_cor_def_use_node in def_use_graph).is_det = true;
                add_edge!({DefUseEdge::new_phi_dep(use_symidx.clone())} from det_instr_cor_def_use_node to phi_instr_cor_def_use_node in def_use_graph);
            }
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                // 如果是phi instr 那么要加入 额外边
                if let InstrType::Jump { jump_op } = &instr!(at instr in instr_slab)?.instr_type{
                    continue;
                }
                if let InstrType::Label {  label_symidx } = &instr!(at instr in instr_slab)?.instr_type{
                    continue;
                }
                let instr_struct = instr!(at instr in instr_slab)?;
                for use_symidx in instr_struct.get_use_symidx_vec() {
                    let &dug_cor_node = instr_struct.get_dug_cor_def_use_node()?;
                    // if !symtab.get_symbol(use_symidx)?.has_ssa_reaching_def(){
                    //     // 说明这是个常量啥的或者函数
                    //     debug_info_yellow!("{:?} 是个常量或函数",use_symidx);
                    //     continue;
                    // }
                    // if *symtab.get_symbol(use_symidx)?.get_is_temp()?{
                    //     debug_info_yellow!("{:?} 是个临时变量",use_symidx);
                    //     continue;
                    // }
                    // let def_symidx = match symtab.get_symbol(use_symidx)?.get_ssa_def_instr()?{
                    //     Some(v) => {
                    //         v
                    //     },
                    //     None => {
                    //         println!("reaching {:?} as start",&use_symidx);
                    //         continue;
                    //     },
                    // };
                    let symbol = symtab.get_symbol(use_symidx)?;
                    let &def_instr = if symbol.has_ssa_def_instr(){
                        symbol.get_ssa_def_instr()?
                    }else{
                        continue;
                    };
                    let &def_dug_node = instr_slab.get_instr(def_instr)?.get_dug_cor_def_use_node()?;
                    let dug_edge = add_edge!({DefUseEdge::new(use_symidx.clone())} from def_dug_node to dug_cor_node in def_use_graph);
                    // println!("add_edge about {:?} ",&use_symidx);
                }
            }
        }
    }
    Ok(())
}
pub fn get_cor_br_instr_of_phi_instr(cfg_graph:&CfgGraph,instr_slab:&InstrSlab, phi_instr:usize, symtab:&SymTab)->Result<usize>{
    let phi_instr_struct = instr!(at phi_instr in instr_slab)?;
    let phi_cfg_node  = phi_instr_struct.get_cfg_instr_idx()?.cfg_node;
    if node!(at phi_cfg_node in cfg_graph).cfg_node_type.is_gather(){
        let cfg_branch_node = find_branch_of_gather_upwnward(phi_cfg_node, cfg_graph)?;
        Ok(node!(at cfg_branch_node in cfg_graph).op_jump_instr.ok_or(anyhow!("这个 cfg_node:{} 没有 jump_instr ",cfg_branch_node))?)
    }else if node!(at phi_cfg_node in cfg_graph).cfg_node_type.is_while_loop(){
        Ok(node!(at phi_cfg_node in cfg_graph).op_jump_instr.ok_or(anyhow!("这个 cfg_node:{} 没有 jump_instr ",phi_cfg_node))?)
    }else{
        Err(anyhow!("这个 phi instr {:?} 没有对应的 jump_det ",phi_instr_struct))
    }

}
