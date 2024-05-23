
use crate::toolkit::cfg_edge::CfgEdgeType;
use crate::toolkit::etc::dfs_with_predicate;
use crate::{add_edge, add_node, direct_child_node, instr, instr_mut, node, node_mut};

use crate::toolkit::cfg_node::CfgNodeType::{Gather,WhileLoop};
use super::context::DjGraph;
use super::{cfg_node::CfgGraph, def_use_node::{DefUseEdge, DefUseGraph, DefUseNode}, etc, gen_nhwc_cfg::find_branch_of_gather_upwnward, gen_ssa::{refresh_cfg_instr_idx_in_cfg_graph}, nhwc_instr::{InstrSlab, InstrType, JumpOp}, symtab::{SymTab}};
use anyhow::*;
use petgraph::visit::EdgeRef;

pub fn parse_dug(cfg_graph:&mut CfgGraph,instr_slab:&mut InstrSlab,symtab:&SymTab,def_use_graph:&mut DefUseGraph,_dj_graph:&DjGraph) -> Result<()>{
    for (_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_name_entry_tuples()?{
        for &cfg_node in etc::dfs(cfg_graph, *cfg_entry).iter(){
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                match &instr!(at instr in instr_slab)?.instr_type{
                    InstrType::Label { label_symidx: _ } => continue,
                    InstrType::DefineFunc { func_symidx: _, ret_symidx: _, args: _ } => {},
                    InstrType::DefineVar { var_symidx: _, vartype: _, op_value: _ } => {},
                    InstrType::Alloc { var_symidx: _, vartype: _ } => continue,
                    InstrType::Arith { lhs: _, rhs: _ } => {},
                    InstrType::SimpleAssign { lhs: _, rhs: _ } => {},
                    InstrType::Call { op_assigned_symidx: _, func_op: _ } => {},
                    InstrType::Jump { jump_op } => 
                        match jump_op{
                            JumpOp::Ret { op_ret_sym: _ } => {},
                            JumpOp::Br { cond: _, t1: _, t2: _ } => continue,
                            JumpOp::Switch { cond: _, default: _, compared: _ } => continue,
                            JumpOp::DirectJump { label_symidx: _ } => continue,
                        },
                    InstrType::Phi { lhs: _, rhs: _ } => {},
                    InstrType::TranType { lhs: _, op: _ } => {},
                    InstrType::BreakPoint { symidx: _, breakpoint_args: _ } => continue,
                    InstrType::Global { lhs: _, var_symidx: _, vartype: _ } => continue,
                    InstrType::Load { lhs: _, ptr_symidx: _ptr_symdix, ptr_ty: _ } => {},
                    InstrType::Store { value_symidx: _value, value_ty: _, ptr_symidx: _, ptr_ty: _ } => {},
                    InstrType::GetElementPtr { lhs: _, array_ty: _ty, array_symidx: _, idx_vec: _ } => {},
                }
                let dug_node = add_node!({DefUseNode::new(instr)} to def_use_graph);
                node_mut!(at dug_node in def_use_graph).load_instr_text(instr_slab);
                let instr_struct = instr_mut!(at instr in instr_slab)?;
                instr_struct.add_dug_cor_def_use_node(dug_node);
            }
        }
    }
    // 加入边之间刷新一下 instruction struct 与 cfg graph 之间的定位关系
    refresh_cfg_instr_idx_in_cfg_graph(cfg_graph, symtab, instr_slab)?;
    // 然后加入边
    for (_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_name_entry_tuples()?{
        for &cfg_node in etc::dfs(cfg_graph, *cfg_entry).iter(){
            // 加入 PhiDep 边
            for &phi_instr in node!(at cfg_node in cfg_graph).phi_instrs.iter(){
                let br_instr = get_cor_br_instr_of_phi_instr(cfg_graph,instr_slab, phi_instr, symtab)?;
                // let &br_cor_def_use_node = instr_slab.get_instr(br_instr)?.get_dug_cor_def_use_node()?;
                let &phi_instr_cor_def_use_node = instr_slab.get_instr(phi_instr)?.get_dug_cor_def_use_node()?;
                let use_symidx = instr!(at br_instr in instr_slab)?.get_use_symidx_vec()[0];
                let &det_instr = symtab.get_symbol(use_symidx)?.get_ssa_def_instr()?;
                let &det_instr_cor_def_use_node = instr!(at det_instr in instr_slab)?.get_dug_cor_def_use_node()?;
                node_mut!(at det_instr_cor_def_use_node in def_use_graph).is_det = true;
                add_edge!({DefUseEdge::new_phi_dep(use_symidx.clone())} from det_instr_cor_def_use_node to phi_instr_cor_def_use_node in def_use_graph);
            }
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                // 有一些指令不需要 进入 DefUseGraph
                match &instr!(at instr in instr_slab)?.instr_type{
                    InstrType::Label { label_symidx: _ } => continue,
                    InstrType::DefineFunc { func_symidx: _, ret_symidx: _, args: _ } => {},
                    InstrType::DefineVar { var_symidx: _, vartype: _, op_value: _ } => {},
                    InstrType::Alloc { var_symidx: _, vartype: _ } => continue,
                    InstrType::Arith { lhs: _, rhs: _ } => {},
                    InstrType::SimpleAssign { lhs: _, rhs: _ } => {},
                    InstrType::Call { op_assigned_symidx: _, func_op: _ } => {},
                    InstrType::Jump { jump_op } => 
                        match jump_op{
                            JumpOp::Ret { op_ret_sym: _ } => {},
                            JumpOp::Br { cond: _, t1: _, t2: _ } => continue,
                            JumpOp::Switch { cond: _, default: _, compared: _ } => continue,
                            JumpOp::DirectJump { label_symidx: _ } => continue,
                        },
                    InstrType::Phi { lhs: _, rhs: _ } => {},
                    InstrType::TranType { lhs: _, op: _ } => {},
                    InstrType::BreakPoint { symidx: _, breakpoint_args: _ } => continue,
                    InstrType::Global { lhs: _, var_symidx: _, vartype: _ } => continue,
                    InstrType::Load { lhs: _, ptr_symidx: _ptr_symdix, ptr_ty: _ } => {},
                    InstrType::Store { value_symidx: _value, value_ty: _, ptr_symidx: _, ptr_ty: _ } => {},
                    InstrType::GetElementPtr { lhs: _, array_ty: _ty, array_symidx: _, idx_vec: _ } => {},
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
                    let def_cfg_node = instr_slab.get_instr(def_instr)?.get_cfg_instr_idx()?.cfg_node;
                    match &instr!(at def_instr in instr_slab)?.instr_type{
                        InstrType::Phi { lhs: _, rhs: _ } => {
                            // 这里有两种情况，一种是这个phi 在 循环头中，另一种则是在 if 的 Exit node 中，我们要分别讨论
                            match &node!(at def_cfg_node in cfg_graph).cfg_node_type{
                                WhileLoop { ast_expr_node: _ } => {
                                    // let while_exit_cfg_node = direct_child_node!(at def_cfg_node in cfg_graph with_predicate {|e|matches!(e.weight().cfg_edge_type,CfgEdgeType::Direct {  })} );
                                    // while_exit_cfg_node 一定有 label_instr 
                                    // let while_head_label_instr = node!(at def_cfg_node in cfg_graph).op_label_instr.unwrap();
                                    if get_cfg_while_loop_body_nodes(def_cfg_node, cfg_graph)?.contains(&cfg_node){
                                        let _dug_edge = add_edge!({DefUseEdge::new(use_symidx.clone())} from def_dug_node to dug_cor_node in def_use_graph);
                                    }else{
                                        let _dug_edge = add_edge!({DefUseEdge::new_final_dep(use_symidx.clone())} from def_dug_node to dug_cor_node in def_use_graph);
                                    }
                                },
                                Gather {  } => {
                                    let _dug_edge = add_edge!({DefUseEdge::new(use_symidx.clone())} from def_dug_node to dug_cor_node in def_use_graph);
                                },
                                _ => { return Err(anyhow!("这个Phi instr:{:?} 不在whileloop head 或 gather 中",instr_struct))}
                            }
                            direct_child_node!(at def_cfg_node in cfg_graph);
                        },
                        _ => {
                            let _dug_edge = add_edge!({DefUseEdge::new(use_symidx.clone())} from def_dug_node to dug_cor_node in def_use_graph);
                        }
                    }
                    // println!("add_edge about {:?} ",&use_symidx);
                }
            }
        }
    }
    Ok(())
}
pub fn get_cor_br_instr_of_phi_instr(cfg_graph:&CfgGraph,instr_slab:&InstrSlab, phi_instr:usize, _symtab:&SymTab)->Result<usize>{
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

pub fn get_cfg_while_loop_body_nodes(cfg_while_loop_node:u32,cfg_graph:&CfgGraph) -> Result<Vec<u32>>{
    let start_node = direct_child_node!(at cfg_while_loop_node in cfg_graph with_predicate {|e|matches!(e.weight().cfg_edge_type,CfgEdgeType::BodyHead {  })});
    let mut body_nodes = dfs_with_predicate(cfg_graph, start_node, |e|e.target().index() as u32!=cfg_while_loop_node);
    body_nodes.push(cfg_while_loop_node);
    Ok(body_nodes)
}