use anyhow::{anyhow, Context, Ok, Result};
use petgraph::{graph::edge_index, stable_graph::EdgeReference, visit::EdgeRef};

use crate::{add_node, add_node_with_edge, direct_child_node, direct_child_nodes, node, toolkit::loop_node};

use super::{cfg_edge::{CfgEdge, CfgEdgeType}, cfg_node::{CfgGraph, CfgNodeType, CFG_ROOT}, etc::{dfs_with_priority, dfs_with_priority_and_condition}, loop_node::{LoopNode, LoopTree}};

///dfs访问while循环内的所有节点，不访问while本身和while外的节点，不进入更内层的while
pub fn dfs_inner_while_struct(cfg_start_node:u32,cfg_stop_while_node:u32,cfg_stop_out_node:u32,cfg_graph:&CfgGraph) -> Vec<u32>{
    let dfs_vec = dfs_with_priority_and_condition(cfg_graph, cfg_start_node,|e| match &e.weight().cfg_edge_type{
        CfgEdgeType::BodyHead {  } => -1,
        CfgEdgeType::IfFalse {  } => 4,
        CfgEdgeType::Direct {  } => 7,
        CfgEdgeType::IfTrue {  } => 2,
        CfgEdgeType::BodyTail {  } => -6,
    },
    |e| e == cfg_stop_out_node||e == cfg_stop_while_node);
    dfs_vec
}

///递归处理嵌套的每层while节点，在loop_tree上一个父亲节点新增一个loop节点，while内的节点（不包括下一层while）都连在这个loop上
pub fn process_loop_node(cfg_loop_node:u32,out_loop_node:u32,parent_loop_node:u32,cfg_graph:&CfgGraph,loop_tree:&mut LoopTree) -> Result<()>{
    //从while内的bodyhead的边的节点开始
    let inner_start = direct_child_node!(at cfg_loop_node in cfg_graph with_predicate { |e:&EdgeReference<CfgEdge>| e.weight().cfg_edge_type.is_body_head()});
    let inner_cfgnode_vec = dfs_inner_while_struct(inner_start,cfg_loop_node,out_loop_node,cfg_graph);
    // println!("内层：{:?}",inner_cfgnode_vec);
    for window_nodes in inner_cfgnode_vec.windows(2){
        let current_inner_cfgnode = window_nodes[0];
        let next_inner_cfgnode = window_nodes[1];
        // println!("当前节点：{}",current_inner_cfgnode);
        let cfg_type = &node!(at current_inner_cfgnode in cfg_graph).cfg_node_type;
        if let CfgNodeType::WhileLoop { ast_expr_node:_ } = cfg_type.clone(){
            let loop_node = add_node_with_edge!({LoopNode::new_loop_node()} from parent_loop_node in loop_tree);
            add_node_with_edge!({LoopNode::new_terminal_node(current_inner_cfgnode,cfg_type.clone())} from loop_node in loop_tree);
            process_loop_node(current_inner_cfgnode,next_inner_cfgnode,loop_node,cfg_graph,loop_tree)?;
        }else{
            add_node_with_edge!({LoopNode::new_terminal_node(current_inner_cfgnode, cfg_type.clone())} from parent_loop_node in loop_tree);
        }
    }
    if let Some(&last_node) = inner_cfgnode_vec.last(){
        let cfg_type = &node!(at last_node in cfg_graph).cfg_node_type;
        if let CfgNodeType::WhileLoop { ast_expr_node:_ } = cfg_type.clone(){
            let loop_node = add_node_with_edge!({LoopNode::new_loop_node()} from parent_loop_node in loop_tree);
            add_node_with_edge!({LoopNode::new_terminal_node(last_node,cfg_type.clone())} from loop_node in loop_tree);
            process_loop_node(last_node,last_node,loop_node,cfg_graph,loop_tree)?;
        }else{
            add_node_with_edge!({LoopNode::new_terminal_node(last_node, cfg_type.clone())} from parent_loop_node in loop_tree);
        }
    }
    Ok(())
}

pub fn parse_cfg2loop_tree(loop_tree:&mut LoopTree,cfg_graph:&CfgGraph) -> Result<()>{
    //添加根节点
    let loop_root = add_node!({LoopNode::new_root_node()} to loop_tree);
    let cfg_funcs = direct_child_nodes!(at CFG_ROOT in cfg_graph);
    for &cfg_entry in cfg_funcs.iter() {
        //处理函数节点
        let cfg_entry_type = &node!(at cfg_entry in cfg_graph).cfg_node_type;
        let func_node = add_node_with_edge!({LoopNode::new_func_node(cfg_entry, cfg_entry_type.clone())} from loop_root in loop_tree);
        //dfs遍历，但不进入while循环内
        let dfs_vec = dfs_with_priority(cfg_graph,cfg_entry,|e| match &e.weight().cfg_edge_type{
            CfgEdgeType::BodyHead {  } => -1,
            CfgEdgeType::IfFalse {  } => 6,
            CfgEdgeType::Direct {  } => 1,
            CfgEdgeType::IfTrue {  } => 7,
            CfgEdgeType::BodyTail {  } => -1,
        });
        // println!("最外层：{:?}",dfs_vec);
        for windows_nodes in dfs_vec.windows(2) {
            let current_cfg_node = windows_nodes[0];
            let next_cfg_node = windows_nodes[1];
            let cfg_type   = &node!(at current_cfg_node in cfg_graph).cfg_node_type;
            //这里找到的是第一层循环
            if let CfgNodeType::WhileLoop { ast_expr_node:_ } = cfg_type{
                let while_loop_node = add_node_with_edge!({LoopNode::new_loop_node()} from func_node in loop_tree);
                add_node_with_edge!({LoopNode::new_terminal_node(current_cfg_node,cfg_type.clone())} from while_loop_node in loop_tree);
                //处理while内部
                process_loop_node(current_cfg_node,next_cfg_node,while_loop_node,cfg_graph,loop_tree)?;
            }else{
                add_node_with_edge!({LoopNode::new_terminal_node(current_cfg_node, cfg_type.clone())} from func_node in loop_tree);
            }
        }
        if let Some(&last_node) = dfs_vec.last(){
            let cfg_type   = &node!(at last_node in cfg_graph).cfg_node_type;
            //这里找到的是第一层循环
            if let CfgNodeType::WhileLoop { ast_expr_node:_ } = cfg_type{
                let while_loop_node = add_node_with_edge!({LoopNode::new_loop_node()} from func_node in loop_tree);
                add_node_with_edge!({LoopNode::new_terminal_node(last_node,cfg_type.clone())} from while_loop_node in loop_tree);
                //处理while内部
                process_loop_node(last_node,last_node,while_loop_node,cfg_graph,loop_tree)?;
            }else{
                add_node_with_edge!({LoopNode::new_terminal_node(last_node, cfg_type.clone())} from func_node in loop_tree);
            }
        }
    }
    Ok(())
}