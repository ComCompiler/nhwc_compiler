use core::panic;
use std::any::Any;

use clap::value_parser;
use petgraph::{adj::NodeIndex, visit::{self, Dfs, Walker}};

use crate::{direct_nodes, node, toolkit::symbol_table::SymbolIndex};

use super::{ast_node::{find_dfs_rule_ast, AstTree}, cfg_node::GetText, et_node::{self, EtNakedNode, EtNode, EtTree}};

pub fn pre_traversal_et_tree( et_tree:&mut EtTree , et_node:u32) -> () {
    
}
pub fn dfs_et_tree(et_tree:&mut EtTree, et_node: u32, visited:&mut Vec<u32>, dfs_vec: &mut Vec<u32>) -> () {

    // let mut dfs = Dfs::new(&et_tree.graph, et_tree.root);
    // while let Some(node) = dfs.next(&et_tree.graph) {
    //     let node_data = et_tree.graph.node_weight(node).unwrap();
    //     let node_data = node_data.downcast_ref::<EtNode>().unwrap();
    //     if node_data.is_naked() {
    //         let mut sub_nodes=direct_nodes!(at node in et_tree);
    //         for sub_node in sub_nodes.iter() {
    //             dfs_et_tree(et_tree);
    //         }
    //     }
    // }
    // return 0;
    if visited[et_node as usize] == 1 {
        return;
    }
    visited[et_node as usize] = 1;
    let mut sub_nodes=direct_nodes!(at et_node in et_tree);
    for sub_node in sub_nodes.iter() {
        dfs_et_tree(et_tree, *sub_node, visited, dfs_vec);
    }
}
pub fn eval_et(et_tree:&mut EtTree , operator_et_node:u32 ) ->u32 {
    let mut value = 0;
    println!("输入的operator_et_node: {:?}", node!(at operator_et_node in et_tree).clone().et_naked_node);
    // 每个节点分两种情况,constant 或者 operator
    for sub_node in direct_nodes!(at operator_et_node in et_tree) {
        value = match node!(at sub_node in et_tree).clone().et_naked_node{
        // let value = match node!(at Operator_node in et_tree){
            EtNakedNode::Constant { const_sym_idx, ast_node, text } => {
                
                let constant_value: u32 = const_sym_idx.symbol_name.parse::<u32>().unwrap();
                println!(" 111 constant value:{:?}",constant_value);
                constant_value
            },
            
            EtNakedNode::Operator { ast_node, text, op } =>{
                
                // 1递归调用
                // let sub_node_value=eval_et(et_tree, sub_node) ;
                // println!("op value {:?}",sub_node_value);
                println!(" 222 匹配到了Operator {:?}" , op);
                // 2获取operator节点的子节点
                let sub_sub_nodes=direct_nodes!(at sub_node in et_tree);//里面的u32是节点编号

                // 3.19凌晨尝试修改
                // op.eval_sub_et_nodes(et_tree, sub_sub_nodes);
                eval_et(et_tree, sub_node)

                /*
                // 3 计算子节点的值
                let mut sub_sub_nodes_symbol_idx: Vec<SymbolIndex> = Vec::new();
                for sub_sub_node in sub_sub_nodes{
                    match node!(at sub_sub_node in et_tree).clone().et_naked_node {
                        EtNakedNode::Constant { const_sym_idx, ast_node, text } => {
                            println!("计算孙子节点的Constant");
                            println!(" 333 sub_sub_node中 {:?}",const_sym_idx); //没有到达过
                            sub_sub_nodes_symbol_idx.push(const_sym_idx)
                            
                        },
                        EtNakedNode::Operator { op, ast_node, text } => {
                            println!("计算孙子节点的Operator");
                            sub_sub_nodes_symbol_idx.push(
                                SymbolIndex::new(0,
                                    eval_et(et_tree, sub_sub_node).to_string()))


                        }
                        // EtNakedNode::Symbol { sym_idx, ast_node, text, def_or_use } => todo!(),
                        // EtNakedNode::Separator { ast_node, text } => todo!(),
                        _ => panic!("有问题 , 不是Constant也不是Operator")
                    }
                    
                }
                // sub_sub_nodes_symbol_idx.reverse();
                // 3计算子节点结果并返回
                println!(" 444 sub_sub_nodes_symbol_idx 为{:?}", sub_sub_nodes_symbol_idx);
                println!(" 计算子节点后返回value值为 {:?}",op.clone().eval_sub_et_nodes(et_tree,&sub_sub_nodes_symbol_idx));
                op.clone().eval_sub_et_nodes(et_tree,&sub_sub_nodes_symbol_idx)
                */
            }
            _ => 
                    panic!("错误的 EtNode 类型 !")
        };
    }
    println!(" 555 本次递归调用后,返回value的值为    {:?}",value);
    value
}