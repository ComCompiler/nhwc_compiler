use super::et_node::{EtNodeType, EtTree};
use crate::{add_node, add_node_with_edge, antlr_parser::clexer::Newline, direct_child_node, direct_child_nodes, node, toolkit::{et_node::EtNode, symtab::SymIdx}};
use anyhow::*;
use petgraph::graph::{Node, NodeIndex};

pub fn dfs_et_tree(et_tree:&mut EtTree, et_node:u32, visited:&mut Vec<u32>, dfs_vec:&mut Vec<u32>) -> () {
    if visited[et_node as usize] == 1 {
        return;
    }
    visited[et_node as usize] = 1;
    let sub_nodes = direct_child_nodes!(at et_node in et_tree);
    for sub_node in sub_nodes.iter() {
        dfs_et_tree(et_tree, *sub_node, visited, dfs_vec);
    }
}
pub fn eval_et(et_tree:&mut EtTree, any_et_node:u32) -> Result<SymIdx> {
    // let mut value = SymIdx::new(0, 0.to_string());
    // println!("输入的operator_et_node: {:?}", node!(at any_et_node in et_tree).clone().et_naked_node);
    // 每个节点分两种情况,constant 或者 operator
    let value_symidx = match node!(at any_et_node in et_tree).clone().et_node_type {
        // let value = match node!(at Operator_node in et_tree){
        EtNodeType::Constant { const_sym_idx, ast_node: _, text: _ } => Ok(const_sym_idx),

        EtNodeType::Operator { ast_node: _, text: _, op } => {
            let sub_nodes = direct_child_nodes!(at any_et_node in et_tree); //里面的u32是节点编号
            let mut sub_nodes_sym_idx:Vec<SymIdx> = Vec::new();
            for sub_node in sub_nodes {
                sub_nodes_sym_idx.push(eval_et(et_tree, sub_node)?);
            }
            Ok(op.eval_sub_et_nodes(et_tree, &sub_nodes_sym_idx))
        },
        EtNodeType::Separator { ast_node, text } => {
            let sub_node = direct_child_node!(at any_et_node in et_tree);
            let res = eval_et(et_tree, sub_node)?;
            Ok(res)
        }
        _ => Err(anyhow!("错误的 EtNode 类型 ! 不是 Constant , Operator, Separator 中的一个")),
    };
    // println!(" 本函数调用后,返回{:?}", value_symidx);
    return  value_symidx
}

/// 本函数用于把et_tree中的常量表达式计算出并替换掉
/// 注意: 替换后,et_tree中的et_node的et_naked_node字段会被替换掉
pub fn replace_et_node(et_tree:&mut EtTree, any_et_node:u32) -> Result<()> {
    let mut visited = vec![0; et_tree.node_count()];
    let mut dfs_vec = Vec::new();
    dfs_et_tree(et_tree, any_et_node, &mut visited, &mut dfs_vec);
    for &et_node in dfs_vec.iter() {
        let value_symidx = eval_et(et_tree, et_node)?;
        //                                                            这里,函数是要用ast_node的, 但是我用了et_node
        let et_node_added = EtNodeType::new_constant(et_node, value_symidx).as_et_node();
        // println!(" 替换的et_node: {:?}", et_node);
        // 接下来要用计算出的节点替换掉原来节点?
        // 用find_edge找到边,删掉
        // 再add_node_with_edge
        // let et_node_edge_removed = et_tree.find_edge(NodeIndex::from(et_node), NodeIndex::from(any_et_node)).unwrap();
        let et_node_edge_removed = et_tree.find_edge(NodeIndex::new(any_et_node as usize), NodeIndex::new(et_node as usize)).unwrap();
        et_tree.remove_edge(et_node_edge_removed);
        
        // let et_node_edge_added =
        add_node_with_edge!(et_node_added from et_node in et_tree);
        // et_tree.add_node(NodeIndex::from(*et_node), EtNodeType::Constant { value: value_symidx });
        // et_tree.et_nodes[*et_node as usize].et_naked_node = new_value;
    }

    Ok(())
}

