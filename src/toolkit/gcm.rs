use anyhow::*;
use crate::toolkit::gen_ssa::{update_ssa_def_instr, update_ssa_def_instr_of_entry};
use crate::{debug_info_blue, direct_parent_node, node_mut};
use crate::toolkit::nhwc_instr::NhwcInstrType;
use crate::{node, toolkit::gen_djg::lca};
use crate::instr;

use super::gen_nhwc_cfg::update_br_instr_of_branch;
use super::gen_ssa::update_cfg_instr_idx_in_cfg_node;
use super::symtab::WithBorrow;
use super::{cfg_node::CfgGraph, context::DjGraph, et_node::EtTree, etc::dfs, nhwc_instr::{InstrSlab, NhwcInstr}, scope_node::ScopeTree, symtab::SymTab};
macro_rules! direct_dj_join_parent_node {
    (at $et_node:ident in $et_tree:ident ) => {
        direct_parent_node!(at $et_node in $et_tree with_predicate {|e|e.weight().is_join()})       
    };
    (at $et_node:ident in $et_tree:ident ret_option) => {
        direct_parent_node!(at $et_node in $et_tree with_predicate {|e|e.weight().is_join()} ret_option)       
    };
}
macro_rules! direct_dj_dom_parent_node {
    (at $et_node:ident in $et_tree:ident ) => {
        direct_parent_node!(at $et_node in $et_tree with_predicate {|e|e.weight().is_dom()})       
    };
    (at $et_node:ident in $et_tree:ident ret_option) => {
        direct_parent_node!(at $et_node in $et_tree with_predicate {|e|e.weight().is_dom()} ret_option)       
    };
}
pub fn gcm(instr_et:&mut EtTree, cfg_graph:&mut CfgGraph
    , symtab: &mut SymTab, instr_slab: &mut InstrSlab<NhwcInstr>,scope_tree:&mut ScopeTree
    , dj_graph:&DjGraph)-> Result<()>{
    let mut move_count = 0;
    for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone(){
        // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);

        for cfg_node in dfs(cfg_graph, cfg_entry){
            let instrs = node!(at cfg_node in cfg_graph).instrs.clone();
            let mut instr_iter = instrs.iter();
            while let Some(&instr) = instr_iter.next(){
                let def_symidx_vec = instr!(at instr in instr_slab)?.get_ssa_direct_def_symidx_vec();
                let mut use_symidx_vec = instr!(at instr in instr_slab)?.get_ssa_direct_use_symidx_vec();
                // find the lca (least common ancestor of all uses(except for array in getelementptr) including )
                /* 
                1.  getelementptr 
                    can be move to head with no concerning of array version 
                2. load 
                    its use symidx vec should also consider the array symidx (assert the next instr is mu)
                */
                // println!("visit instr {:?}",instr!(at instr in instr_slab));
                let op_additional_instr = match &instr!(at instr in instr_slab)?.instr_type{
                    super::nhwc_instr::NhwcInstrType::Load { lhs, ptr_symidx, ptr_ty } => {
                        if let Some(&mu_instr) = instr_iter.next(){
                            if let NhwcInstrType::Mu { may_use_symidx, may_use_instr} = &instr!(at mu_instr in instr_slab)?.instr_type{
                                let may_use_instr = *may_use_instr;
                                if may_use_instr != instr {
                                    panic!("the next mu instr  of load's may_use_instr not equal to load instr {:?} at cfg_node:{}",instr!(at instr in instr_slab)?, cfg_node);
                                }
                                use_symidx_vec.push(&may_use_symidx);
                                Some(mu_instr)
                            }else {
                                panic!("the latter instr is not mu instr after {:?} at cfg_node:{}",instr!(at instr in instr_slab)?, cfg_node);
                            }
                        }else {
                            panic!()
                        }
                    },
                    super::nhwc_instr::NhwcInstrType::Store { val_symidx, value_ty, ptr_symidx, ptr_ty } => {
                        if let Some(&chi_instr) = instr_iter.next(){
                            if let NhwcInstrType::Chi { lhs, rhs, may_def_instr } = &instr!(at chi_instr in instr_slab)?.instr_type{
                                let may_def_instr = *may_def_instr;
                                if may_def_instr != instr {
                                    panic!("the next mu instr  of load's may_use_instr not equal to load instr {:?} at cfg_node:{}",instr!(at instr in instr_slab)?, cfg_node);
                                }
                                use_symidx_vec.push(&rhs);
                                Some(chi_instr)
                            }else {
                                panic!("the latter instr is not mu instr after {:?} at cfg_node:{}",instr!(at instr in instr_slab)?, cfg_node);
                            }
                        }else {
                            panic!()
                        }
                    },
                    super::nhwc_instr::NhwcInstrType::GetElementPtr { lhs, ptr_symidx, array_ty, idx_vec } => None,
                    super::nhwc_instr::NhwcInstrType::Arith { lhs, rhs } => None,
                    super::nhwc_instr::NhwcInstrType::SimpleAssign { lhs, rhs, vartype } => None,
                    super::nhwc_instr::NhwcInstrType::Call { op_lhs, func_op } => {
                        // this instr should be fixed 
                        continue;
                    },
                    super::nhwc_instr::NhwcInstrType::Jump { jump_op } => {
                        panic!("meet jump ")
                    },
                    super::nhwc_instr::NhwcInstrType::Phi { lhs, rhs } => {
                        panic!("meet phi ")
                    },
                    super::nhwc_instr::NhwcInstrType::Mu { may_use_symidx, may_use_instr} => {
                        let may_use_instr = * may_use_instr;
                        // assert 
                        match &instr!(at may_use_instr in instr_slab)?.instr_type{
                            NhwcInstrType::Load { lhs, ptr_symidx, ptr_ty } => {
                                panic!("mu instr {:?} should have been consumed",instr!(at may_use_instr in instr_slab)?)
                            },
                            _ => {
                                // this mu is not about load,we don't care it 
                                continue;
                            }
                        }
                    },
                    super::nhwc_instr::NhwcInstrType::Chi { lhs, rhs, may_def_instr } => {
                        let may_def_instr = * may_def_instr;
                        // assert 
                        match &instr!(at may_def_instr in instr_slab)?.instr_type{
                            NhwcInstrType::Store { val_symidx, value_ty, ptr_symidx, ptr_ty } => {
                                panic!("chi instr {:?} should have been consumed",instr!(at may_def_instr in instr_slab)?)
                            },
                            _ => {
                                // this chi is not about store,we don't care it 
                                continue;
                            }
                        }
                    },
                    super::nhwc_instr::NhwcInstrType::Untrack { symidx } => {panic!("gcm pass should never appear untrack instr because it may change the liveness of variable")},
                    super::nhwc_instr::NhwcInstrType::TranType { lhs, op } => None,
                    super::nhwc_instr::NhwcInstrType::BreakPoint { symidx, breakpoint_args } => None,
                    super::nhwc_instr::NhwcInstrType::Nope {  } => {continue;},
                    super::nhwc_instr::NhwcInstrType::Label { label_symidx } => {panic!()},
                    super::nhwc_instr::NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => { continue; },
                    super::nhwc_instr::NhwcInstrType::DefineVar { var_symidx, vartype, op_value } => { continue; },
                    super::nhwc_instr::NhwcInstrType::Alloc { var_symidx_vec: var_symidx, vartype } => { continue; },
                    super::nhwc_instr::NhwcInstrType::Globl { var_symidx, vartype } => {panic!()},
                };
                // start 
                // schedule early 
                // minarg all bb's depth in dom tree
                let mut op_upper_dj_node = None;
                for use_symidx in use_symidx_vec {
                    // find the bb it 
                    if use_symidx.as_ref_borrow().is_literal() || use_symidx.as_ref_borrow().is_global_ptr(){
                        continue;
                    }
                    let &ssa_reaching_def_instr = symtab.get(&use_symidx.as_ref_borrow())?.get_ssa_def_instr()?;
                    // println!("reaching def of {:?} is {}",use_symidx,ssa_reaching_def_instr);
                    let reaching_def_cfg_node = instr!(at ssa_reaching_def_instr in instr_slab)?.get_cfg_instr_idx()?.cfg_node;
                    let &reaching_def_dj_node = node!(at reaching_def_cfg_node in cfg_graph).get_cor_dj_node()?;
                    match op_upper_dj_node {
                        Some(last_dj_node) => {
                            if node!(at last_dj_node in dj_graph).get_depth()? > node!(at reaching_def_dj_node in dj_graph).get_depth()?{
                                // do nothing
                            }else {
                                op_upper_dj_node = Some(reaching_def_dj_node);
                            }
                        },
                        None => {
                            op_upper_dj_node = Some(reaching_def_dj_node);
                        },
                    }
                }

                // 只对 temp 变量进行  code motion 
                if op_upper_dj_node.is_none(){
                    // that means this is all about literal
                    continue;
                }
                let upper_dj_node = op_upper_dj_node.unwrap();
                // println!("uppder dj_node is {}",upper_dj_node);
                // bottom
                // 选一个 loop_level 最小 的 bb添加 
                // move 
                let mut cur_dj_node = *node!(at cfg_node in cfg_graph).get_cor_dj_node()?;
                let mut selected_cfg_node = cfg_node;
                while cur_dj_node != upper_dj_node{
                    let cur_cfg_node = node!(at cur_dj_node in dj_graph).cor_cfg_node;
                    if node!(at cur_cfg_node in cfg_graph).loop_level < node!(at selected_cfg_node in cfg_graph).loop_level{
                        selected_cfg_node = cur_cfg_node;
                    }else {
                        // do nothing
                    }
                    cur_dj_node = direct_dj_dom_parent_node!(at cur_dj_node in dj_graph);
                }

                if cfg_node == selected_cfg_node || move_count > 0{
                    // do nothing
                    // println!("can't move instr to {}",selected_cfg_node);
                }else {
                    let idx = node_mut!(at cfg_node in cfg_graph).instrs.iter().enumerate().find(|(idx,x)| **x == instr).unwrap().0;
                    // println!("move instr to {} from {} with move_count:{}",selected_cfg_node,cfg_node,move_count);
                    // node_mut!(at cfg_node in cfg_graph).instrs.remove(idx);
                    move_count +=1;
                    // node_mut!(at selected_cfg_node in cfg_graph).instrs.push(instr);
                    match op_additional_instr{
                        Some(additional_instr) => {
                            let idx = node_mut!(at cfg_node in cfg_graph).instrs.iter().enumerate().find(|(idx,x)| **x == additional_instr).unwrap().0;
                            // node_mut!(at cfg_node in cfg_graph).instrs.remove(idx);
                            // node_mut!(at selected_cfg_node in cfg_graph).instrs.push(additional_instr);
                        },
                        None => {},
                    }
                    update_cfg_instr_idx_in_cfg_node(cfg_graph, selected_cfg_node, symtab, instr_slab)?;
                    update_ssa_def_instr_of_entry(cfg_graph, symtab, instr_slab, cfg_entry)?;
                }
            }
        }
    }
    Ok(())
}