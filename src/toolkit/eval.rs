use std::any::Any;

use clap::value_parser;
use petgraph::{adj::NodeIndex, visit::{self, Dfs, Walker}};

use crate::{direct_nodes, node};

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
pub fn eval_et(et_tree:&mut EtTree , Operator_node:u32 ) ->u32 {
    // 读取运算符   direct_nodes!宏
    // 运算         match et_node的ExprOp                     ✓    
    // 更改ettree,使节点直接指向运算结果        递归实现
    let mut value = 0;

    let mut sub_nodes=direct_nodes!(at Operator_node in et_tree);
    
    // 每个节点分两种情况,constant 或者 operator
    for sub_node in sub_nodes {
        value = match node!(at sub_node in et_tree){
            EtNode { et_naked_node: EtNakedNode::Constant { const_sym_idx, ast_node, text: cons }, info } => {
                //获取constant节点的值

                // let value=node!(at sub_node in et_tree).get_text().unwrap().parse::<u32>().unwrap();
                println!("constant value:{}",cons);
                cons.parse::<u32>().unwrap()
            },
            
            EtNode { et_naked_node: EtNakedNode::Operator { ast_node, text, op }, info } =>{
                
                // 1递归调用
                let sub_node_value= eval_et(et_tree, sub_node);

                // 2获取operator节点的值     etnode里面的text就是里面的值
                println!("op valur{:?}",sub_node_value);

                // 3获取operator节点的子节点
                let sub_nodes=direct_nodes!(at sub_node in et_tree);
                

                // 4计算子节点结果并返回
                // return op.clone().eval_sub_et_nodes(&sub_nodes)
                sub_node_value
                
                // 问题      当一条路走到头,到了constant,怎么把这个值返回到上一层迭代中的Vec中去
                //           在哪里使用eval_sub_et_nodes?怎么更新这个Vec?怎么把下一层传来的已经计算的值加入进去?


            }
            _ => 
                panic!("错误的 EtNode 类型 !"),
        };
        // break;
        
    }
    value
    // for sub_node in sub_nodes {
    //     eval_et(et_tree, sub_node);
}