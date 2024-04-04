use core::panic;
use std::any::Any;

use clap::value_parser;
use petgraph::{adj::NodeIndex, visit::{self, Dfs, Walker}};

use crate::{direct_nodes, node, toolkit::symbol_table::Symidx};

use super::{ast_node::{find_dfs_rule_ast, AstTree}, cfg_node::GetText, et_node::{self, EtNakedNode, EtNode, EtTree}};

pub fn dfs_et_tree(et_tree:&mut EtTree, et_node: u32, visited:&mut Vec<u32>, dfs_vec: &mut Vec<u32>) -> () {

    if visited[et_node as usize] == 1 {
        return;
    }
    visited[et_node as usize] = 1;
    let mut sub_nodes=direct_nodes!(at et_node in et_tree);
    for sub_node in sub_nodes.iter() {
        dfs_et_tree(et_tree, *sub_node, visited, dfs_vec);
    }
}
pub fn eval_et(et_tree:&mut EtTree , any_et_node:u32 ) ->Symidx {
    let mut value = Symidx::new(0,0.to_string());
    // println!("输入的operator_et_node: {:?}", node!(at any_et_node in et_tree).clone().et_naked_node);
    // 每个节点分两种情况,constant 或者 operator
    value = match node!(at any_et_node in et_tree).clone().et_naked_node{
    // let value = match node!(at Operator_node in et_tree){
        EtNakedNode::Constant { const_sym_idx, ast_node, text } => {
            const_sym_idx
        },
        
        EtNakedNode::Operator { ast_node, text, op } =>{
            let sub_nodes=direct_nodes!(at any_et_node in et_tree);//里面的u32是节点编号
            let mut sub_nodes_sym_idx: Vec<Symidx> = Vec::new();
            for sub_node in sub_nodes {
                sub_nodes_sym_idx.push(eval_et(et_tree, sub_node));
            }
            op.eval_sub_et_nodes(et_tree, &sub_nodes_sym_idx)
        }
        _ => 
                panic!("错误的 EtNode 类型 !")
    };
    println!(" 本函数调用后,返回{:?}",value);
    value
}