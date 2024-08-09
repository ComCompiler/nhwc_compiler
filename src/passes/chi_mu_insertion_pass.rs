use std::{collections::HashSet, mem};

use crate::{instr_mut, node, node_mut, toolkit::{call_node::CallGraph, cfg_node::{CfgGraph, InstrList}, etc, nhwc_instr::{InstrSlab, JumpOp, NhwcInstr, NhwcInstrType}, symtab::{SymTab, WithBorrow}}};


use ahash::{AHashSet, HashSetExt};
use anyhow::{Result};
use itertools::Itertools;
use petgraph::visit::{IntoNodeReferences, NodeRef};
use crate::instr;

use crate::toolkit::{ dot::Config, etc::generate_png_by_graph_multi_tasks, gen_ssa::{add_phi_nodes, variable_renaming}, pass_manager::Pass};
#[derive(Debug)]
pub struct ChiMuInsertionPass {is_gen_chi_mu_cfg:bool}
impl ChiMuInsertionPass {
    pub fn new(is_gen_chi_mu_cfg_png:bool) -> Self { ChiMuInsertionPass {is_gen_chi_mu_cfg: is_gen_chi_mu_cfg_png} }
}

impl Pass for ChiMuInsertionPass {
   // 运行这个pass
    fn run(&mut self, ctx:&mut crate::toolkit::context::NhwcCtx) -> Result<()> { 
        let (cfg_graph,instr_slab, symtab, call_graph) = (&mut ctx.cfg_graph,&mut ctx.nhwc_instr_slab, &mut ctx.symtab, &ctx.call_graph);
        let insertion_rst = insert_additional_mu_chi_for_call_instr(cfg_graph, instr_slab, symtab, call_graph);
        if self.is_gen_chi_mu_cfg{
            for (idx,instr_struct) in ctx.nhwc_instr_slab.iter_mut(){
                instr_struct.load_idx_text(idx);
            }
            for cfg_node_struct in ctx.cfg_graph.node_weights_mut() {
                cfg_node_struct.clear_text();
                cfg_node_struct.load_ast_node_text(&ctx.ast_tree)?;
                cfg_node_struct.load_instrs_text(&ctx.nhwc_instr_slab)?;
            }
            generate_png_by_graph_multi_tasks(&ctx.cfg_graph.clone(), "ssa_cfg".to_string(), &[Config::Record, Config::Rounded, Config::Title("ssa_cfg".to_string()), Config::NodeIndexLabel, Config::CfgBlock],&mut ctx.io_task_list)?
        }
        insertion_rst
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass ssa description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "SSAPass".to_string(); }
}


pub fn insert_additional_mu_chi_for_call_instr(cfg_graph:&mut CfgGraph, instr_slab:&mut InstrSlab<NhwcInstr>, symtab:&mut SymTab, call_graph:&CallGraph) -> Result<()>{
    // fisrt scan all instrs in func and store the global load store info to 
    // 遍历一遍这个函数体，确保 将 whileloop cfg_node 存到  scope_node 中 
    for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone(){
        let dfs_vec = etc::dfs(cfg_graph,cfg_entry);
        for cfg_node in dfs_vec{
            for (idx,&instr) in node!(at cfg_node in cfg_graph).instrs.iter().enumerate(){
                match &instr!(at instr in instr_slab)?.instr_type{
                    NhwcInstrType::Mu { may_use_symidx: rc_may_use_symidx, may_use_instr } => {
                        let may_use_symidx = &rc_may_use_symidx.as_ref_borrow();
                        if *symtab.get(&may_use_symidx)?.get_is_global()?{
                            symtab.get_mut(&rc_func_symidx.as_ref_borrow())?.get_mut_global_mu_set()?.insert(rc_may_use_symidx.clone());
                        }else {
                            symtab.get_mut(&rc_func_symidx.as_ref_borrow())?.get_mut_local_mu_set()?.insert(rc_may_use_symidx.clone());
                        }
                    },
                    NhwcInstrType::Chi { lhs: rc_may_def_symidx, rhs, may_def_instr } => {
                        let may_def_symidx = &rc_may_def_symidx.as_ref_borrow();
                        if *symtab.get(&may_def_symidx)?.get_is_global()?{
                            symtab.get_mut(&rc_func_symidx.as_ref_borrow())?.get_mut_global_chi_set()?.insert(rc_may_def_symidx.clone());
                        }else {
                            symtab.get_mut(&rc_func_symidx.as_ref_borrow())?.get_mut_local_chi_set()?.insert(rc_may_def_symidx.clone());
                        }
                    },
                    _ => {
                        // do nothing
                    }
                }
            }

        }
    }

    // 使用 func call graph 扩展每个函数 其 global chi mu ，我们不关心 local chi ，因为它在 gen_nhwc 时候已经安全的被处理了
    for (idx,func_node) in call_graph.node_references(){
        let func_symidx = func_node.rc_func_symidx.as_ref_borrow();
        let releated_func_vec = etc::dfs(call_graph, idx.index() as u32).into_iter()
            .map(|x| &node!(at x in call_graph).rc_func_symidx).collect_vec();
        let mut global_chi_set = AHashSet::new();
        let mut global_mu_set = AHashSet::new();
        for releated_func in &releated_func_vec{
            global_chi_set = global_chi_set.union(symtab.get(&releated_func.as_ref_borrow())?.get_global_chi_set()?).cloned().collect();
        }
        for releated_func in &releated_func_vec{
            global_mu_set = global_chi_set.union(symtab.get(&releated_func.as_ref_borrow())?.get_global_mu_set()?).cloned().collect();
        }
        symtab.get_mut(&func_symidx)?.add_global_chi_set(global_chi_set.into());
        symtab.get_mut(&func_symidx)?.add_global_mu_set(global_mu_set.into());
    }

    
    for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone(){
        let dfs_vec = etc::dfs(cfg_graph,cfg_entry);
        for cfg_node in dfs_vec{
            let mut new_instrs = InstrList::new();
            let mut flag = false;
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                match &mut instr_mut!(at instr in instr_slab)?.instr_type{
                    NhwcInstrType::Call { op_lhs: op_assigned_symidx, func_op } => {
                        new_instrs.push(instr);
                        flag = true;
                        let mut chi_set = symtab.get(&func_op.rc_func_symidx.as_ref_borrow())?.get_global_chi_set()?.clone();
                        let mut mu_set = symtab.get(&func_op.rc_func_symidx.as_ref_borrow())?.get_global_mu_set()?.clone();
                        for para_symidx in &func_op.actual_arg_symidx_vec{
                            let para_symidx = para_symidx.as_ref_borrow();
                            if symtab.get(&para_symidx)?.has_pointed_symidx(){
                                let pointed_symidx = symtab.get(&para_symidx)?.get_pointed_symidx()?.clone();
                                chi_set.insert(pointed_symidx.clone());
                                mu_set.insert(pointed_symidx.clone());
                            }
                        }
                        for rc_mu_symidx in mu_set{
                            new_instrs.push(instr_slab.insert_instr(NhwcInstrType::new_mu(rc_mu_symidx, instr).into()));
                        }
                        for rc_chi_symidx in chi_set{
                            new_instrs.push(instr_slab.insert_instr(NhwcInstrType::new_chi(rc_chi_symidx.clone(),rc_chi_symidx.clone(), instr).into()));
                        }
                    },
                    NhwcInstrType::Jump { jump_op:JumpOp::Ret { op_ret_sym} } => {
                        flag = true;
                        let chi_iter = symtab.get(&rc_func_symidx.as_ref_borrow())?.get_global_chi_set()?.iter().chain(
                        symtab.get(&rc_func_symidx.as_ref_borrow())?.get_local_chi_set()?.iter()
                        .filter(|x| *symtab.get(&x.as_ref_borrow()).unwrap().get_is_func_para().unwrap()).into_iter());
                        for rc_chi_symidx in chi_iter {
                            new_instrs.push(instr_slab.insert_instr(NhwcInstrType::new_mu(rc_chi_symidx.clone(), instr).into()));
                        }
                    }
                    NhwcInstrType::Jump { jump_op } => {

                    }
                    NhwcInstrType::Label { label_symidx } => {

                    }
                    NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
                        new_instrs.push(instr);
                        flag = true;
                        let chi_iter = symtab.get(&rc_func_symidx.as_ref_borrow())?.get_global_chi_set()?.iter();

                        for rc_chi_symidx in chi_iter {
                            new_instrs.push(instr_slab.insert_instr(NhwcInstrType::new_chi(rc_chi_symidx.clone(),rc_chi_symidx.clone(), instr).into()));
                        }
                    }
                    _ => {
                        new_instrs.push(instr);
                    }
                };
            }
            if flag{
                let _ = mem::replace(&mut node_mut!(at cfg_node in cfg_graph).instrs, new_instrs);
            }
        }
    }
    Ok(())
}