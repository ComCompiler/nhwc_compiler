use ahash::{HashMap, HashMapExt};
use petgraph::{graph::node_index, visit::IntoEdgesDirected, Direction::{Incoming, Outgoing}};

use crate::{debug_info_blue, instr_mut, node, node_mut, toolkit::{eval_et, gen_instr_et::parse_instr_list_to_et}};

use super::{cfg_node::CfgGraph, context::DjGraph, et_node::{self, EtTree}, etc::dfs_with_priority, nhwc_instr::{InstrSlab, NhwcInstr, NhwcInstrType}, scope_node::ScopeTree, symtab::{SymTab, WithBorrow}};
use anyhow::*;


pub fn gvn(instr_et:&mut EtTree,dom_tree:&mut DjGraph, cfg_graph:&mut CfgGraph, symtab: &mut SymTab, instr_slab: &mut InstrSlab<NhwcInstr>,scope_tree:&mut ScopeTree)-> Result<()>{
    
    for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone(){
        let mut instr_symidx_et_map = HashMap::new();
        let &dj_entry = node!(at cfg_entry in cfg_graph).get_cor_dj_node()?;
        let mut expr_hash_map: std::collections::HashMap<isize, u32, ahash::RandomState> = HashMap::new();
        for dom_node in dfs_with_priority(dom_tree, dj_entry, |e|match e.weight(){
            crate::toolkit::dj_edge::DjEdge::Join {  } => -1, // don't travel through join edge
            crate::toolkit::dj_edge::DjEdge::Dom {  } => 1,
        }){
            let cor_cfg_node = node!(at dom_node in dom_tree).cor_cfg_node;
            let mut instr_et_node_map = HashMap::new();
            // println!("access cor_cfg_node:{}",cor_cfg_node);
            parse_instr_list_to_et(node!(at cor_cfg_node in cfg_graph).iter_all_instrs().cloned(), instr_et, symtab, &mut instr_symidx_et_map, &mut instr_et_node_map, scope_tree, instr_slab)?;
            // println!("instr_et_node_map {:?}",instr_et_node_map);
            for (&instr,&et_node) in &instr_et_node_map{
                if instr_et.edges_directed(node_index(et_node as usize), Incoming).count() == 0{
                    // println!("compress_et_at {et_node}");
                    eval_et::_compress_et(instr_et, et_node, &mut |et_node,et_tree|true
                        ,symtab, 0, scope_tree, &mut expr_hash_map,false)?;
                }
            }
            node_mut!(at cor_cfg_node  in cfg_graph).add_cor_instr_et_node_set(instr_et_node_map);
        }
        for et_node_struct in instr_et.node_weights(){
            if et_node_struct.et_node_type.is_literal(){
                for rc_symidx in &et_node_struct.equivalent_symidx_vec{
                    let mut symidx = rc_symidx.as_ref_borrow_mut();
                    if !symidx.is_literal(){
                        let &def_instr = symtab.get(&symidx)?.get_ssa_def_instr()?;
                        *instr_mut!(at def_instr in instr_slab)? = NhwcInstrType::Nope {  }.into();
                        *symidx = match &et_node_struct.et_node_type{
                            et_node::EtNodeType::Literal { rc_literal_symidx, ast_node, text } => {
                                rc_literal_symidx.as_ref_borrow().clone()
                            },
                            _ => {panic!()}
                        }
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