use std::mem;
use crate::toolkit::field::Field;
use ahash::{HashMap, HashMapExt};
use bimap::{BiHashMap, BiMap};
use itertools::Itertools;
use petgraph::{ graph::node_index, stable_graph::EdgeReference, visit::EdgeRef, Direction::Incoming};
use crate::instr;
use crate::{debug_info_blue, instr_mut, make_field_trait_for_struct, node, node_mut, reg_field_for_struct, toolkit::{cfg_node::InstrList, eval_et, gen_instr_et::{parse_instr_list_to_et, process_instr_et}, gen_nhwc_cfg::process_temp_symbol}};

use super::etc::rpo_with_priority;
use super::{cfg_node::{CfgGraph, CfgNode}, context::DjGraph, et_node::{ EtEdge, EtTree}, etc::{self,  dfs_with_priority_enter_exit, rpo, rpo_with_predicate}, gen_instr_et::{first_rc_symidx_in_et_node, first_rc_symidx_in_et_node_may_literal}, gen_ssa::{cfg_is_dominated_by, instr_is_dominated_by, update_ssa_def_instr}, nhwc_instr::{InstrSlab, NhwcInstr, NhwcInstrType}, scope_node::ScopeTree, symtab::{SymTab, WithBorrow}};
use anyhow::*;


reg_field_for_struct!(CfgNode { cor_instr_et_node_bimap:BiHashMap<usize,u32>,gvn_while_cor_expr_hash_map:HashMap<isize,u32>, } with_fields info);
make_field_trait_for_struct!(
    BiHashMap<usize,u32>,
    HashMap<isize,u32>
);

pub fn gvn(instr_et:&mut EtTree,dom_tree:&mut DjGraph, cfg_graph:&mut CfgGraph, symtab: &mut SymTab, instr_slab: &mut InstrSlab<NhwcInstr>,scope_tree:&mut ScopeTree)-> Result<()>{
    
    for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone(){
        // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);

        let mut instr_symidx_et_map = HashMap::new();
        let &dj_entry = node!(at cfg_entry in cfg_graph).get_cor_dj_node()?;
        let mut expr_hash_map: std::collections::HashMap<isize, u32, ahash::RandomState> = HashMap::new();
        for (dom_node,access_state) in dfs_with_priority_enter_exit(dom_tree, dj_entry, |e|match e.weight(){
            crate::toolkit::dj_edge::DjEdge::Join {  } => -1, // don't travel through join edge
            crate::toolkit::dj_edge::DjEdge::Dom {  } => 1,
        }){
            let cor_cfg_node = node!(at dom_node in dom_tree).cor_cfg_node;
            match access_state{
                super::etc::AccessState::Enter => {
                    // also you should hold the expr hash map back when exit this node
                    if node!(at cor_cfg_node in cfg_graph).cfg_node_type.is_while_loop(){
                        node_mut!(at cor_cfg_node in cfg_graph).add_gvn_while_cor_expr_hash_map(mem::take(&mut expr_hash_map))
                        // expr_hash_map.clear();
                    }

                    let mut instr_et_node_bimap = BiMap::new();
                    parse_instr_list_to_et(node!(at cor_cfg_node in cfg_graph).iter_all_instrs().cloned(), instr_et, symtab, &mut instr_symidx_et_map, &mut instr_et_node_bimap, scope_tree, instr_slab)?;
                    let mut new_instr_list  = InstrList::new();
                    for &instr in node!(at cor_cfg_node in cfg_graph).phi_instrs.clone().iter()
                    .chain(node!(at cor_cfg_node in cfg_graph).instrs.clone().iter()){
                        // after parsing a instr into dag then try evaluate it and if evaluate to literal then renaming 
                        if let Some(&et_node) = instr_et_node_bimap.get_by_left(&instr){
                            // if instr_et.edges_directed(node_index(et_node as usize), Incoming).count() == 0{
                                // println!("compress_et_at {et_node}");
                                eval_et::compress_et_for_gvn(instr_et, et_node, &mut |op_found_et_node,et_node,et_tree|{
                                    if let Some(found_et_node) = op_found_et_node{
                                        match &node!(at found_et_node in et_tree).et_node_type{
                                            super::et_node::EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } => {
                                                // if found et's first symidx is temp then true
                                                rc_func_symidx.as_ref_borrow().is_temp(symtab).unwrap()
                                            },
                                            super::et_node::EtNodeType::Operator { op, ast_node, text, op_rc_symidx } => {
                                                match first_rc_symidx_in_et_node(et_node, et_tree){
                                                    Result::Ok(rc_symidx) => {
                                                        rc_symidx.as_ref_borrow().is_temp(symtab).unwrap()
                                                    },
                                                    Err(_) => {true},
                                                }
                                            },
                                            super::et_node::EtNodeType::Literal { rc_literal_symidx, ast_node, text } => true,
                                            super::et_node::EtNodeType::Separator { ast_node, text } => todo!(),
                                        }
                                    }else {
                                        match &node!(at et_node in et_tree).et_node_type{
                                            super::et_node::EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } => {
                                                // if found et's first symidx is temp then true
                                                rc_func_symidx.as_ref_borrow().is_temp(symtab).unwrap()
                                            },
                                            super::et_node::EtNodeType::Operator { op, ast_node, text, op_rc_symidx } => {
                                                match first_rc_symidx_in_et_node(et_node, et_tree){
                                                    Result::Ok(rc_symidx) => {
                                                        rc_symidx.as_ref_borrow().is_temp(symtab).unwrap()
                                                    },
                                                    Err(_) => {true},
                                                }
                                            },
                                            super::et_node::EtNodeType::Literal { rc_literal_symidx, ast_node, text } => true,
                                            super::et_node::EtNodeType::Separator { ast_node, text } => todo!(),
                                        }
                                    }
                                } ,symtab, 0, scope_tree, &mut expr_hash_map)?;

                                if !node!(at et_node in instr_et).gvn_instr_generated{
                                    let rpo_vec = rpo_with_priority(instr_et, et_node, &mut |e:&EdgeReference<'_,EtEdge>|{
                                        let target= e.target();
                                        if instr_et.node_weight(target).unwrap().gvn_instr_generated{
                                            return -1
                                        }
                                        match &instr_et.node_weight(target).unwrap().et_node_type{
                                            super::et_node::EtNodeType::Operator { op, ast_node, text, op_rc_symidx } => {2},
                                            super::et_node::EtNodeType::Literal { rc_literal_symidx, ast_node, text } => {1},
                                            super::et_node::EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } => {1},
                                            super::et_node::EtNodeType::Separator { ast_node, text } => {panic!()},
                                        }
                                    }); 
                                    // println!("rpo {:?}", rpo_vec);
                                    for instr_et_node in rpo_vec {
                                        // to prevent repreated generation
                                        if !node!(at instr_et_node in instr_et).gvn_instr_generated && !node!(at instr_et_node in instr_et).common_eliminated{
                                            // println!("instr_et_node:{} is generated by instr:{} in cfg_node:{}",instr_et_node,instr,instr_et_node);
                                            process_instr_et(instr_et_node, instr_et,&mut new_instr_list, symtab,&instr_et_node_bimap,instr_slab,&mut |sym_name,ty,symtab,instr_et, instr_slab| {
                                                process_temp_symbol(cfg_graph, symtab, &ty, 0, cor_cfg_node, instr_slab, None, instr_et,sym_name)
                                            })?;
                                            node_mut!(at instr_et_node in instr_et).gvn_instr_generated = true;
                                        }
                                    }
                                }
                            // }
                        }
                    }
                    node_mut!(at cor_cfg_node  in cfg_graph).add_cor_instr_et_node_bimap(instr_et_node_bimap);
                    // if cfg_entry != cor_cfg_node{
                    //     mem::swap(&mut new_instr_list, &mut node_mut!(at cor_cfg_node in cfg_graph).instrs)
                    // }
                },
                super::etc::AccessState::Exit => {
                    let instr_et_node_bimap = node!(at cor_cfg_node in cfg_graph ).get_cor_instr_et_node_bimap()?;
                    // remove hash of outdated(not dominant after) instr_et_nodes
                    for (&instr,&et_node) in instr_et_node_bimap.iter().sorted_by_key(|tuple|tuple.1){
                        // println!("{:?}", &node!(at et_node in instr_et));
                        if let Some(hash ) = &node!(at et_node in instr_et).hash{
                            expr_hash_map.remove(hash);
                        }else {
                            // panic!();
                        }
                        // expr_hash_map.remove(&node!(at et_node in instr_et).hash.unwrap());
                    }

                    if node!(at cor_cfg_node in cfg_graph).cfg_node_type.is_while_loop(){
                        expr_hash_map = node!(at cor_cfg_node in cfg_graph).get_gvn_while_cor_expr_hash_map()?.clone();
                        // expr_hash_map.clear();
                    }
                },
            }
            // before visit next node we should ensure the et_node expr_hash_map should be deleted 
        }
        update_ssa_def_instr(cfg_graph, symtab, instr_slab)?;
        for node_idx in instr_et.node_indices(){
            let et_node = node_idx.index() as u32;
            let et_node_struct = node!(at et_node in instr_et);
            if et_node_struct.equivalent_symidx_vec.len() == 0 { continue; }
            match &et_node_struct.et_node_type{
                super::et_node::EtNodeType::Operator { op, ast_node, text, op_rc_symidx } => {
                    let first_symidx = first_rc_symidx_in_et_node(et_node, instr_et)?.as_ref_borrow().clone();
                    // if symidx is temp then rename all equivalent symidx to temp 
                    // because temp symbol is never redefined in our compiler's context, it's legal
                    if *symtab.get(&first_symidx.to_src_symidx())?.get_is_temp()?{
                        for rc_symidx in &et_node_struct.equivalent_symidx_vec{
                            let mut symidx = rc_symidx.as_ref_borrow_mut();
                            mem::swap(&mut symtab.get_mut(&symidx)?.rc_symidx,&mut symidx.clone().as_rc());
                            debug_info_blue!("rename {:?} into {:?}",symidx,first_symidx);
                            // let &def_instr = symtab.get(&symidx)?.get_ssa_def_instr()?;
                            // *instr_mut!(at def_instr in instr_slab)? = NhwcInstrType::Nope {  }.into();
                            *symidx = first_symidx.clone()
                        }
                    }
                },
                super::et_node::EtNodeType::Literal { rc_literal_symidx, ast_node, text } => {
                    let first_symidx = first_rc_symidx_in_et_node_may_literal(et_node, instr_et)?.as_ref_borrow().clone();
                    for rc_symidx in &et_node_struct.equivalent_symidx_vec{
                        let mut symidx = rc_symidx.as_ref_borrow_mut();
                        if !symidx.is_literal(){
                            mem::swap(&mut symtab.get_mut(&symidx)?.rc_symidx,&mut symidx.clone().as_rc());
                            let &def_instr = symtab.get(&symidx)?.get_ssa_def_instr()?;
                            *instr_mut!(at def_instr in instr_slab)? = NhwcInstrType::Nope {  }.into();
                            debug_info_blue!("literal rename {:?} into {:?}",symidx,first_symidx);
                            *symidx = first_symidx.clone()
                        }else {
                            // {symidx;}
                            // println!("find {:?} is literal in eq_symidx_vec at {:?} ",rc_symidx, et_node_struct)
                            // panic!()
                        }
                    }
                },
                super::et_node::EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } => {
                    let mut first_symidx = first_rc_symidx_in_et_node(et_node, instr_et)?.as_ref_borrow().clone();
                    // if symidx is temp then rename all equivalent symidx to temp 
                    // because temp symbol is never redefined in our compiler's context, it's legal

                    // if contains 2 symidx and the first is temp and the other is not then rename the temp as later
                    // if et_node_struct.equivalent_symidx_vec.len() == 2 && !*symtab.get(&et_node_struct.equivalent_symidx_vec[1].as_ref_borrow().to_src_symidx())?.get_is_temp()?{
                    //     first_symidx = et_node_struct.equivalent_symidx_vec[1].as_ref_borrow().clone();
                    // }
                    if *symtab.get(&first_symidx.to_src_symidx())?.get_is_temp()?{
                        for rc_symidx in &et_node_struct.equivalent_symidx_vec{
                            let mut symidx = rc_symidx.as_ref_borrow_mut();
                            mem::swap(&mut symtab.get_mut(&symidx)?.rc_symidx,&mut symidx.clone().as_rc());
                            debug_info_blue!("rename {:?} into {:?}",symidx,first_symidx);
                            // let &def_instr = symtab.get(&symidx)?.get_ssa_def_instr()?;
                            // *instr_mut!(at def_instr in instr_slab)? = NhwcInstrType::Nope {  }.into();
                            *symidx = first_symidx.clone()
                        }
                    }//else {
                    //     for rc_symidx in &et_node_struct.equivalent_symidx_vec{
                    //         // just copy

                    //     }
                    // }
                },
                super::et_node::EtNodeType::Separator { ast_node, text } => {panic!()},
            }
        }
        for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone(){
            let dfs_vec = etc::dfs(cfg_graph,cfg_entry);
            for cfg_node in dfs_vec{
                for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                    let def_vec =  instr!(at instr in instr_slab)?.get_ssa_direct_def_symidx_vec();
                    if def_vec.len() == 1 && def_vec[0].as_ref_borrow().is_literal(){
                        *instr_mut!(at instr in instr_slab)? = NhwcInstrType::Nope {  }.into();
                    }
                }
            }
        }

        
            // eval_et::_compress_et(instr_et, 0, &mut |et_node,et_tree|true
            //     ,symtab, 0, scope_tree, &mut expr_hash_map,false)?;
            // eval_et::_compress_et(instr_et, 1, &mut |et_node,et_tree|true
            //     ,symtab, 0, scope_tree, &mut expr_hash_map,false)?;
            // eval_et::_compress_et(instr_et, 4, &mut |et_node,et_tree|true
            //     ,symtab, 0, scope_tree, &mut expr_hash_map,false)?;
    }
    Ok(())
}