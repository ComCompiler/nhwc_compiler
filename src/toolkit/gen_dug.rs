
use crate::toolkit::cfg_edge::CfgEdgeType;
use crate::toolkit::etc::dfs_with_predicate;
use crate::{add_edge, add_node, direct_child_node, instr, instr_mut, node, node_mut, reg_field_for_struct};

use crate::toolkit::cfg_node::CfgNodeType::{Gather,WhileLoop};

use super::cfg_node::CFG_ROOT;
use super::context::DjGraph;
use super::etc::InstrAnyhow;
use super::nhwc_instr::NhwcInstr;
use super::symbol::Symbol;
use super::symtab;
use super::{cfg_node::CfgGraph, dug_node::{DefUseEdge, DefUseGraph, DefUseNode}, etc, gen_nhwc_cfg::find_branch_of_gather_upward, gen_ssa::{update_cfg_instr_idx_in_cfg_graph}, nhwc_instr::{InstrSlab, NhwcInstrType, JumpOp}, symtab::{SymTab}};
use anyhow::*;
use petgraph::visit::EdgeRef;
use symtab::*;

pub static DUG_ROOT:u32 = 0;

reg_field_for_struct!(Symbol {
        MEM_ALLOC_INSTR:usize,
    } with_fields fields);

pub fn parse_dug(cfg_graph:&mut CfgGraph,instr_slab:&mut InstrSlab<NhwcInstr>,symtab:&mut SymTab,def_use_graph:&mut DefUseGraph,_dj_graph:&DjGraph) -> Result<()>{
    // add global label instr 
    {
        let instr = node!(at CFG_ROOT in cfg_graph).op_label_instr.unwrap();
        let dug_node = add_node!({DefUseNode::new(instr)} to def_use_graph);
        let instr_struct = instr_mut!(at instr in instr_slab)?;
        instr_struct.add_dug_cor_def_use_node(dug_node);
    }
    for (_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?{
        for &cfg_node in etc::dfs(cfg_graph, *cfg_entry).iter(){
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                match &instr!(at instr in instr_slab)?.instr_type{
                    NhwcInstrType::Label { label_symidx: _ } => continue,
                    NhwcInstrType::DefineFunc { func_symidx: _, ret_symidx: _, args: _ } => {},
                    NhwcInstrType::DefineVar { var_symidx: _, vartype: _, op_value: _ } => {},
                    NhwcInstrType::Alloc { var_symidx: _, vartype: _ } => {},
                    NhwcInstrType::Arith { lhs: _, rhs: _ } => {},
                    NhwcInstrType::SimpleAssign { lhs: _, rhs: _, vartype: _ } => {},
                    NhwcInstrType::Call { op_assigned_symidx: _, func_op: _ } => {},
                    NhwcInstrType::Jump { jump_op } => 
                        match jump_op{
                            JumpOp::Ret { op_ret_sym: _} => {},
                            JumpOp::Br { cond: _, t1: _, t2: _ } => {},
                            JumpOp::Switch { cond: _, default: _, compared: _ } => continue,
                            JumpOp::DirectJump { label_symidx: _ } => continue,
                        },
                    NhwcInstrType::Phi { lhs: _, rhs: _ } => {},
                    NhwcInstrType::TranType { lhs: _, op: _ } => {},
                    NhwcInstrType::BreakPoint { symidx: _, breakpoint_args: _ } => continue,
                    NhwcInstrType::Globl { var_symidx: _, vartype: _ } => {},
                    NhwcInstrType::Load { lhs: _, ptr_symidx: _ptr_symdix, ptr_ty: _ } => {},
                    NhwcInstrType::Store { val_symidx: _value, value_ty: _, ptr_symidx: _, ptr_ty: _ } => {},
                    NhwcInstrType::GetElementPtr { lhs: _, array_ty: _ty, array_or_ptr_symidx: _, idx_vec: _ } => {},
                    NhwcInstrType::Nope {  } => {continue;},
                    NhwcInstrType::Mu { may_use_symidx: _, may_use_instr: _ } => {continue;},
                    NhwcInstrType::Chi { lhs: _, rhs: _, may_def_instr: _ } => {continue;},
                }
                let dug_node = add_node!({DefUseNode::new(instr)} to def_use_graph);
                let instr_struct = instr_mut!(at instr in instr_slab)?;
                instr_struct.add_dug_cor_def_use_node(dug_node);
            }
        }
    }
    // 加入边之间刷新一下 instruction struct 与 cfg graph 之间的定位关系
    update_cfg_instr_idx_in_cfg_graph(cfg_graph, symtab, instr_slab)?;
    update_src_symdix_alloc_global_instr_info(symtab, cfg_graph, instr_slab)?;
    // 然后加入边
    for (_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?{
        for &cfg_node in etc::dfs(cfg_graph, *cfg_entry).iter(){
            // 加入 PhiDep 边
            for &phi_instr in node!(at cfg_node in cfg_graph).phi_instrs.iter(){
                // let br_instr = get_cor_br_instr_of_phi_instr(cfg_graph,instr_slab, phi_instr, symtab)?;
                // // let &br_cor_def_use_node = instr_slab.get_instr(br_instr)?.get_dug_cor_def_use_node()?;
                // let &phi_instr_cor_def_use_node = instr_slab.get_instr(phi_instr)?.get_dug_cor_def_use_node()?;

                // let rc_use_symidx = instr!(at br_instr in instr_slab)?.get_ssa_direct_use_symidx_vec()[0];
                // let use_symidx = rc_use_symidx.as_ref_borrow();

                // let &det_instr = symtab.get(&use_symidx)?.get_ssa_def_instr()?;
                // let &det_instr_cor_def_use_node = instr!(at det_instr in instr_slab)?.get_dug_cor_def_use_node()?;
                // node_mut!(at det_instr_cor_def_use_node in def_use_graph).is_det = true;
                // temporarily remove all phi_dep edge
                // add_edge!({DefUseEdge::new_phi_dep(rc_use_symidx.clone())} from det_instr_cor_def_use_node to phi_instr_cor_def_use_node in def_use_graph);
            }
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                // 有一些指令不需要 进入 DefUseGraph
                match &instr!(at instr in instr_slab)?.instr_type{
                    NhwcInstrType::Label { label_symidx: _ } => continue,
                    NhwcInstrType::DefineFunc { func_symidx: _, ret_symidx: _, args} => {
                    },
                    NhwcInstrType::DefineVar { var_symidx: rc_var_symidx, vartype: _, op_value: _ } => {
                        let var_symidx = rc_var_symidx.as_ref_borrow();

                        let &alloc_or_global_instr = symtab.get(&var_symidx.to_src_symidx())?.get_mem_alloc_instr()?;
                        let &alloc_or_global_instr_cor_dug_node = instr!(at alloc_or_global_instr in instr_slab)?.get_dug_cor_def_use_node()?;
                        let &dug_cor_node = instr!(at instr in instr_slab)?.get_dug_cor_def_use_node()?;
                        match &instr!(at alloc_or_global_instr in instr_slab)?.instr_type{
                            NhwcInstrType::Alloc { var_symidx, vartype: _ } => {
                                let _dug_edge = add_edge!({DefUseEdge::new_alloc_dep(var_symidx.clone())} from alloc_or_global_instr_cor_dug_node to dug_cor_node in def_use_graph);
                            },
                            NhwcInstrType::Globl { var_symidx, vartype: _ } => {
                                let _dug_edge = add_edge!({DefUseEdge::new_global_dep(var_symidx.clone())} from alloc_or_global_instr_cor_dug_node  to dug_cor_node in def_use_graph);
                            },
                            NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
                                let _dug_edge = add_edge!({DefUseEdge::new_alloc_dep(rc_var_symidx.clone())} from alloc_or_global_instr_cor_dug_node  to dug_cor_node in def_use_graph);
                            },
                            _ => {
                                return Err(anyhow!("define_var 对应的 mem instr  既不是 global 也不是 alloc")).with_instr_context(instr, instr_slab)
                            }
                        }                         
                    },
                    NhwcInstrType::Alloc { var_symidx: _, vartype: _ } => continue,
                    NhwcInstrType::Arith { lhs: _, rhs: _ } => {},
                    NhwcInstrType::SimpleAssign { lhs: _, rhs: _, vartype: _ } => {},
                    NhwcInstrType::Call { op_assigned_symidx: _, func_op: _ } => {},
                    NhwcInstrType::Jump { jump_op } => 
                        match jump_op{
                            JumpOp::Ret { op_ret_sym: _} => {},
                            JumpOp::Br { cond: _, t1: _, t2: _ } => {},
                            JumpOp::Switch { cond: _, default: _, compared: _ } => continue,
                            JumpOp::DirectJump { label_symidx: _ } => continue,
                        },
                    NhwcInstrType::Phi { lhs: _, rhs: _ } => {},
                    NhwcInstrType::TranType { lhs: _, op: _ } => {},
                    NhwcInstrType::BreakPoint { symidx: _, breakpoint_args: _ } => continue,
                    NhwcInstrType::Globl { var_symidx: _, vartype: _ } => continue,
                    NhwcInstrType::Load { lhs: _, ptr_symidx: _ptr_symdix, ptr_ty: _ } => {},
                    NhwcInstrType::Store { val_symidx: _value, value_ty: _, ptr_symidx: _, ptr_ty: _ } => {},
                    NhwcInstrType::GetElementPtr { lhs: _, array_ty: _ty, array_or_ptr_symidx: _, idx_vec: _ } => {},
                    NhwcInstrType::Nope {  } => continue,
                    NhwcInstrType::Mu { may_use_symidx: _, may_use_instr: _ } => {},
                    NhwcInstrType::Chi { lhs: _, rhs: _, may_def_instr: _ } => {},
                }
                let cur_instr_struct = instr!(at instr in instr_slab)?;
                for rc_use_symidx in cur_instr_struct.get_ssa_direct_use_symidx_vec() {
                    let use_symidx = rc_use_symidx.as_ref_borrow();
                    let symbol = symtab.get(&use_symidx)?;
                    let &def_instr = if symbol.has_ssa_def_instr(){
                        symbol.get_ssa_def_instr()?
                    }else{
                        // println!("{:?} didn't has ssa_def_instr",rc_use_symidx);
                        continue;
                    };
                    let def_cfg_node = instr_slab.get_instr(def_instr)?.get_cfg_instr_idx()?.cfg_node;
                    match &cur_instr_struct.instr_type{
                        // NhwcInstrType::Phi { lhs: _, rhs: _ } => {
                        //     let &dug_cor_node = cur_instr_struct.get_dug_cor_def_use_node()?;
                        //     let &def_dug_node = instr_slab.get_instr(def_instr)?.get_dug_cor_def_use_node()?;
                        //     // 这里有两种情况，一种是这个phi 在 循环头中，另一种则是在 if 的 Exit node 中，我们要分别解包讨论
                        //     match &node!(at def_cfg_node in cfg_graph).cfg_node_type{
                        //         WhileLoop { ast_expr_node: _ } => {
                        //             // let while_exit_cfg_node = direct_child_node!(at def_cfg_node in cfg_graph with_predicate {|e|matches!(e.weight().cfg_edge_type,CfgEdgeType::Direct {  })} );
                        //             // while_exit_cfg_node 一定有 label_instr 
                        //             // let while_head_label_instr = node!(at def_cfg_node in cfg_graph).op_label_instr.unwrap();
                        //             if get_cfg_while_loop_body_nodes(def_cfg_node, cfg_graph)?.contains(&cfg_node){
                        //                 let _dug_edge = add_edge!({DefUseEdge::new(rc_use_symidx.clone())} from def_dug_node to dug_cor_node in def_use_graph);
                        //             }else{
                        //                 let _dug_edge = add_edge!({DefUseEdge::new(rc_use_symidx.clone())} from def_dug_node to dug_cor_node in def_use_graph);
                        //                 // let _dug_edge = add_edge!({DefUseEdge::new_final_dep(rc_use_symidx.clone())} from def_dug_node to dug_cor_node in def_use_graph);
                        //             }
                        //         },
                        //         Gather {  } => {
                        //             let _dug_edge = add_edge!({DefUseEdge::new(rc_use_symidx.clone())} from def_dug_node to dug_cor_node in def_use_graph);
                        //         },
                        //         _ => { return Err(anyhow!("这个Phi instr:{:?} 不在whileloop head 或 gather 中",cur_instr_struct))}
                        //     }
                        //     direct_child_node!(at def_cfg_node in cfg_graph);
                        // },
                        NhwcInstrType::Mu { may_use_symidx, may_use_instr } => {
                            let may_use_instr = *may_use_instr;
                            let &dug_cor_node = instr!(at may_use_instr in instr_slab)?.get_dug_cor_def_use_node()?;
                            let &def_dug_node = instr!(at def_instr in instr_slab)?.get_dug_cor_def_use_node()?;
                            let _dug_edge = add_edge!({DefUseEdge::new(rc_use_symidx.clone())} from def_dug_node to dug_cor_node in def_use_graph);
                        },
                        NhwcInstrType::Chi { lhs, rhs, may_def_instr } => {
                            // here we consider it as 2 situation 
                            // 1. when it is an array we should add edge from last def to here because you can't change all things in array in one time
                            // 2. when it is a non-array variable we will not add this edge
                            // if symtab.get(&lhs.as_ref_borrow().to_src_symidx())?.get_type()?.is_array() 
                            // ||symtab.get(&lhs.as_ref_borrow().to_src_symidx())?.get_type()?.is_ptr_64(){
                            let may_def_instr = *may_def_instr;
                            let &dug_cor_node = instr!(at may_def_instr in instr_slab)?.get_dug_cor_def_use_node()?;
                            let &def_dug_node = instr!(at def_instr in instr_slab)?.get_dug_cor_def_use_node()?;
                            let _dug_edge = add_edge!({DefUseEdge::new(rc_use_symidx.clone())} from def_dug_node to dug_cor_node in def_use_graph);
                            // }else {
                            //     // do nothing
                            // }
                        }
                        _ => {
                            let &dug_cor_node = cur_instr_struct.get_dug_cor_def_use_node()?;
                            let &def_dug_node = instr_slab.get_instr(def_instr)?.get_dug_cor_def_use_node()?;
                            let _dug_edge = add_edge!({DefUseEdge::new(rc_use_symidx.clone())} from def_dug_node to dug_cor_node in def_use_graph);
                        }
                    }
                    // println!("add_edge about {:?} ",&use_symidx);
                }
            }
        }
    }
    Ok(())
}
pub fn get_cor_br_instr_of_phi_instr(cfg_graph:&CfgGraph,instr_slab:&InstrSlab<NhwcInstr>, phi_instr:usize, _symtab:&SymTab)->Result<usize>{
    let phi_instr_struct = instr!(at phi_instr in instr_slab)?;
    let phi_cfg_node  = phi_instr_struct.get_cfg_instr_idx()?.cfg_node;
    if node!(at phi_cfg_node in cfg_graph).cfg_node_type.is_gather(){
        let cfg_branch_node = find_branch_of_gather_upward(phi_cfg_node, cfg_graph)?;
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

// 这个函数用于给 src_symidx 更新 mem_instr 字段用于指定 该变量 alloc 的位置
pub fn update_src_symdix_alloc_global_instr_info(symtab:&mut SymTab, cfg_graph:&CfgGraph, instr_slab:&InstrSlab<NhwcInstr>)->Result<()>{
    for (_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone(){
        for &instr in node!(at cfg_entry in cfg_graph).instrs.iter(){
            match &instr!(at instr in instr_slab)?.instr_type {
                NhwcInstrType::Alloc { var_symidx, vartype: _ } => {
                    symtab.get_mut(&var_symidx.as_ref_borrow().to_src_symidx())?.add_mem_alloc_instr(instr);
                },
                NhwcInstrType::Globl { var_symidx, vartype: _ } => {
                    symtab.get_mut(&var_symidx.as_ref_borrow().to_src_symidx())?.add_mem_alloc_instr(instr);
                },
                NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
                    for arg in args {
                        symtab.get_mut(&arg.as_ref_borrow().to_src_symidx())?.add_mem_alloc_instr(instr);
                    }
                }
                _ => {}
            }
        }
    }
    Ok(())
}

pub fn copy_propagation(_cfg_graph:&mut CfgGraph, _symtab:&mut SymTab, _instr_slab:&InstrSlab<NhwcInstr>)->Result<()>{

    Ok(())
}