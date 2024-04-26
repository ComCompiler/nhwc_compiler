use std::vec;

use petgraph::{adj::NodeIndex, algo::dominators::simple_fast};

use crate::{add_edge, add_node, debug_info_yellow, direct_parent_nodes, make_field_trait_for_struct, make_specialized_get_field_fn_for_struct, node, node_mut, reg_field_name, toolkit::dj_edge::DjEdge};

use super::{cfg_node::{CfgGraph, CfgNode}, context::DjGraph};
use super::symtab::{SymTab,SymTabEdge,SymTabGraph};
use super::field::Field;
use anyhow::Result;

reg_field_name!(COR_DJ_NODE:cor_dj_node);
make_field_trait_for_struct!(u32);
make_specialized_get_field_fn_for_struct!(CfgNode { COR_DJ_NODE:u32, } with fields info);

reg_field_name!(DOMIANCE_FRONTIER_NODES:domiance_frontier_nodes);
make_field_trait_for_struct!(Vec<u32>);
make_specialized_get_field_fn_for_struct!(CfgNode { DOMIANCE_FRONTIER_NODES:Vec<u32>,  } with fields info);

pub fn parse_ncfg2dj_graph(cfg_graph:&mut CfgGraph,dj_graph:&mut DjGraph)->Result<()>{
    let root =  NodeIndex::from(0);
    let dominators = simple_fast(&*cfg_graph, root);
    for cfg_node_struct in cfg_graph.node_weights_mut().into_iter(){
        let dj_node = add_node!({cfg_node_struct.clone() } to dj_graph);
        cfg_node_struct.add_cor_dj_node(dj_node);
    }
    let dj_node_indices:Vec<_> = dj_graph.node_indices().collect();
    for dj_node_idx in dj_node_indices{
        let dj_node = dj_node_idx.index() as u32;
        match dominators.immediate_dominator(dj_node_idx){
            Some(parent) => {
                let dj_parent_node = parent.index() as u32;
                add_edge!({DjEdge::new_dom()} from dj_parent_node to dj_node in dj_graph);
            },
            None => {
                // this is the root, just do nothing 
            },
        }
    }
    // 以上就已经是 dominate tree 的形状了，但是还不够，还有额外边
    //对于额外边我们需要去找到原cfg 中  edge : src !sdom target 的情况，然后把这些边复制到 DJG 里面

    let mut cfg_join_tuples = vec![];
    let cfg_edge_indices:Vec<_> = cfg_graph.edge_indices().collect();
    for cfg_edge_idx in cfg_edge_indices{
        let (cfg_node_src,cfg_node_target )= cfg_graph.edge_endpoints(cfg_edge_idx)
            .map(|(x,y)| (x.index() as u32, y.index() as u32)).unwrap();
        let (&dj_node_src,&dj_node_target) = (node!(at cfg_node_src in cfg_graph).get_cor_dj_node()? ,node!(at cfg_node_target in cfg_graph).get_cor_dj_node()?);
        if !direct_parent_nodes!(at dj_node_target in dj_graph with_predicate {|e|e.weight().is_dom()}).contains(&dj_node_src) {
            add_edge!({DjEdge::new_join()} from dj_node_src to dj_node_target in dj_graph);
            node_mut!(at cfg_node_target in cfg_graph).add_domiance_frontier_nodes(vec![1111111 as u32]);
            cfg_join_tuples.push((cfg_node_src,cfg_node_target));
        }
    }
    debug_info_yellow!("{:?}",cfg_join_tuples);

    Ok(())
}