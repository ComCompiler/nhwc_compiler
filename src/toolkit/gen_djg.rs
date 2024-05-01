use std::vec;

use petgraph::{adj::NodeIndex, algo::dominators::simple_fast, visit::EdgeRef};

use crate::{add_edge, add_node, direct_child_nodes, direct_parent_nodes, make_field_trait_for_struct, make_specialized_get_field_fn_for_struct, node, node_mut, reg_field_name, toolkit::{dj_edge::DjEdge, dj_node::DjNode}};

use super::{cfg_node::{CfgGraph, CfgNode}, context::DjGraph, etc::{dfs_with_predicate}};
use super::symtab::{SymTab,SymTabEdge,SymTabGraph};
use super::field::Field;
use anyhow::{Result,Context};

reg_field_name!(COR_DJ_NODE:cor_dj_node);
reg_field_name!(DEPTH:depth);
make_field_trait_for_struct!(u32);
make_specialized_get_field_fn_for_struct!(CfgNode { COR_DJ_NODE:u32, } with_fields info);
make_specialized_get_field_fn_for_struct!(DjNode { DEPTH:u32, } with_fields info);

reg_field_name!(DOMIANCE_FRONTIER_NODES:domiance_frontier_nodes);
make_field_trait_for_struct!(Vec<u32>);
make_specialized_get_field_fn_for_struct!(CfgNode { DOMIANCE_FRONTIER_NODES:Vec<u32>,  } with_fields info);
make_specialized_get_field_fn_for_struct!(DjNode { DOMIANCE_FRONTIER_NODES:Vec<u32>,  } with_fields info);

pub fn parse_ncfg2dj_graph(cfg_graph:&mut CfgGraph,dj_graph:&mut DjGraph)->Result<()>{
    let root =  NodeIndex::from(0);
    let dominators = simple_fast(&*cfg_graph, root);
    let cfg_nodes:Vec<_> = cfg_graph.node_indices().into_iter().map(|idx|idx.index() as u32).collect();
    for &cfg_node in cfg_nodes.iter() {
        let dj_node = add_node!({DjNode::new(cfg_node) } to dj_graph);
        node_mut!(at cfg_node in cfg_graph).add_cor_dj_node(dj_node);
        // 为每个 cfg_node 初始化 domiance_frontier
        node_mut!(at cfg_node in cfg_graph).add_domiance_frontier_nodes(vec![]);
        node_mut!(at dj_node in dj_graph).add_domiance_frontier_nodes(vec![]);
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

    mark_depth(1, 0, dj_graph)?;

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
            cfg_join_tuples.push((cfg_node_src,cfg_node_target));
        }
    }
    // 以上就成功添加了所有join edge，接下来是计算 dominant frontier

    for cfg_node in cfg_nodes{
        let &dj_cor_node = node!(at cfg_node in cfg_graph).get_cor_dj_node()?;
        let dj_sub_nodes  = get_dj_graph_subtree_nodes(dj_cor_node, dj_graph);
        // debug_info_yellow!("{:?}",dj_sub_nodes);
        for dj_sub_node in dj_sub_nodes{
            let dj_join_targets:Vec<_> = direct_child_nodes!(at dj_sub_node in dj_graph 
                with_predicate {
                    |e|e.weight().is_join() && 
                    node!(at {e.target().index() as u32} in dj_graph).get_depth().unwrap() <= node!(at {dj_cor_node} in dj_graph).get_depth().unwrap()
                } 
            );
            let cfg_join_targets:Vec<_> = dj_join_targets.iter().map(|&dj_node|node!(at dj_node in dj_graph).cor_cfg_node).collect();
            if !dj_join_targets.is_empty(){
                node_mut!(at cfg_node in cfg_graph).get_mut_domiance_frontier_nodes()?.extend(cfg_join_targets);
                node_mut!(at dj_cor_node in dj_graph).get_mut_domiance_frontier_nodes()?.extend(dj_join_targets);
            }
        }
    }


    Ok(())
}

// 找到这个节点的subtree dom所有子节点(包括此节点)
pub fn get_dj_graph_subtree_nodes(dj_node:u32,dj_graph:&mut DjGraph)->Vec<u32>{
    // dfs_with_predicate(dj_graph, dj_node, &mut visited, &mut dfs_vec, Box::new(|e|e.weight().is_dom()));
    // if dj_node == 4 {dfs_with_predicate(dj_graph, dj_node, &mut visited, &mut dfs_vec, Box::new(|e|{debug_info_yellow!("{:?}",(e.source(),e.target(),e.weight()));e.weight().is_dom()}));}
    dfs_with_predicate(dj_graph, dj_node,  |e|e.weight().is_dom())
}

/// 标记 dominator tree 的深度，由于这是树形结构， 因此不需要visited 数组
pub fn mark_depth(current_depth:u32,cur_node:u32, dj_graph:&mut DjGraph )->Result<()>{
    node_mut!(at cur_node in dj_graph).add_depth(current_depth);
    let children = direct_child_nodes!(at cur_node in dj_graph with_predicate {|e|e.weight().is_dom()});
    for child in children{
       mark_depth(current_depth+1 , child, dj_graph)?;
    }
    Ok(())
}