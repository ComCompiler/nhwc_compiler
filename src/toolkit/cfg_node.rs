use std::borrow::Borrow;
use std::fmt::Debug;
//use std::intrinsics::mir::BasicBlock;

use petgraph::data::Build;
use petgraph::{Directed, Graph};
use petgraph::adj::NodeIndex;
use petgraph::graph::{DiGraph, NodeWeightsMut};

use crate::toolkit::ast_node::{AstNode,AstTree,find_dfs_ast,find_neighbors_ast};
use crate::{RULE_functionDefinition,RULE_compoundStatement};
use crate::antlr_parser::cparser::{RULE_blockItem, RULE_blockItemList, RULE_declaration, RULE_expression, RULE_iterationStatement, RULE_selectionStatement, RULE_statement};
use crate::{find,find_nodes};
//use crate::toolkit::ast_node::AstNode;

pub type Idx = NodeIndex<u32>;
pub type CfgGraph = DiGraph<CfgNode,(),u32>;

pub enum CfgNode {
    Entry {
        ast_node_idx: u32,
    },
    Exit {
        ast_node_idx: u32,
    },
    Branch {
        ast_node_idx: u32,
    },
    Gather {

    },
    BasicBlock{
        ast_node_idxes: Vec<u32>,
    }
}
// impl CfgNode {
//     fn get_ast_node_text(&self,ast_tree : &Graph<AstNode,(),Directed>) -> String{
//         match self {
//             CfgNode::Entry {  ast_node_idx } => ast_tree.node_weight(NodeIndex::from(*ast_node_idx)).unwrap().text.clone(),
//             CfgNode::Exit {  ast_node_idx } => ast_tree.node_weight(NodeIndex::from(*ast_node_idx)).unwrap().text.clone(),
//             CfgNode::Branch {  ast_node_idx } => ast_tree.node_weight(NodeIndex::from(*ast_node_idx)).unwrap().text.clone(),
//             CfgNode::Gather {} => String::from(" "),
//             CfgNode::BasicBlock { ast_node_idxes } =>
//         }
//     }
// }


// impl Debug for CfgNode{
//     fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
//         match self{
//             CfgNode::Entry { outgoing: _, ast_node_idx } =>
//                 write!(f,"{} {}","Entry",ast_node_idx),
//             CfgNode::Exit { ingoing: _, ast_node_idx } =>
//                 write!(f,"{} {}","Exit",ast_node_idx),
//             CfgNode::Branch { outgoings: _, ingoings: _, ast_node_idx } =>
//                 write!(f,"{} {}","Branch",ast_node_idx),
//             CfgNode::Gather { outgoings: _ , ingoings:_ , } =>
//                 write!(f,"{} ","Gather"),
//         }
//     }
// }

pub fn find_function(cfg_graph:&CfgGraph,ast_tree:&AstTree) -> Vec<u32>{
    //找到所有的函数，并将函数做成Entry
    let functionblock_nodes = find_dfs_ast(ast_tree,0,RULE_functionDefinition);
    functionblock_nodes.collect::<Vec<u32>>()
}

pub fn find_branch(cfg_graph:&mut CfgGraph,ast_tree:&AstTree,current_node:u32){
    let mut front_basicblock_stack: Vec<u32> = Vec::new();
    let mut behind_basicblock_stack:Vec<u32> = Vec::new();

    
    //cfg_graph.add_edge(ast_tree.node_weight(a), BasicBlock_index, ());

    //查找compoundstatement,下找blocklist以及blockitem
    let compound_node = find!(rule RULE_compoundStatement at current_node in ast_tree);
    let blockitemlist = find!(rule RULE_blockItemList at compound_node in ast_tree);
    let blockitems: Vec<u32>= find_nodes!(rule RULE_blockItem at blockitemlist in ast_tree);

    for block_node in blockitems{
        //blockitem有statement和declaration，前者为分支语句，后者为赋值语句，做成front_basicblock
        let declare_or_statement_node = ast_tree.neighbors(NodeIndex::from(block_node)).next().unwrap();
        match ast_tree.node_weight(declare_or_statement_node).unwrap().rule_id{
            RULE_declaration => {
                front_basicblock_stack.push(declare_or_statement_node.index() as u32);
            }
            RULE_statement =>{
                let iter_or_select_node = ast_tree.neighbors(NodeIndex::from(declare_or_statement_node)).next().unwrap();

                //分别处理iteration循环语句和selection判断语句
                match ast_tree.node_weight(iter_or_sewlect_node).unwrap().rule_id{
                    //循环分支
                    RULE_iterationStatement =>{
                        //expression做成branch节点
                        let iter = iter_or_select_node.index() as u32;
                        let circle_exprission = find!(rule RULE_expression at iter in ast_tree);
                        let cfg_branch = CfgNode::Branch { ast_node_idx:circle_exprission };
                        let cfg_branch_node_index = cfg_graph.add_node(cfg_branch);
                        // cfg_graph.add_edge(front_basic_block_index, cfg_branch_node_index, ());
                        
                        //循环中的statement做成behind_basicblock
                        let circle_statement_nodes:Vec<u32> = find_nodes!(rule RULE_statement at iter in ast_tree);
                        for statement in circle_statement_nodes {
                            behind_basicblock_stack.push(statement);
                            find_branch(cfg_graph,ast_tree,statement)
                        }
                        let behind_basicblock_node = CfgNode::BasicBlock { ast_node_idxes: behind_basicblock_stack.clone() };
    

                    }
                    //选择分支
                    RULE_selectionStatement =>{
                        let select_branch_node = ast_tree.neighbors(NodeIndex::from(iter_or_select_node)).next().unwrap();
                        let sb = select_branch_node.index() as u32;
                        let select_exprission = find!(rule RULE_expression at sb in ast_tree);
                        let cfg_select_branch = CfgNode::Branch { ast_node_idx:select_exprission };
                        let cfg_branch_node_index = cfg_graph.add_node(cfg_select_branch);
                        // cfg_graph.add_edge(front_basic_block_index, cfg_branch_node_index, ());

                        let st = select_branch_node.index() as u32;
                        let statementlist: Vec<u32> = find_nodes!(rule RULE_statement at st in ast_tree);
                        for statement in statementlist {
                            behind_basicblock_stack.push(statement);
                            find_branch(cfg_graph,ast_tree,statement)
                        }
                        let behind_basicblock_node = CfgNode::BasicBlock { ast_node_idxes: behind_basicblock_stack.clone() };
                    }
                    _ =>{},
                }
            }
            _ =>{},
        }
    }
    let front_basicblock_node = CfgNode::BasicBlock { ast_node_idxes: front_basicblock_stack };
    let front_basic_block_index = cfg_graph.add_node(front_basicblock_node);
}

pub fn ast_to_cfg(ast_tree:&AstTree) {
    //建立cfg图和总结点
    let mut cfg_graph = CfgGraph::new();
    let grand = CfgNode::Entry {  ast_node_idx: 0 };
    let grand_node_idx = cfg_graph.add_node(grand);
    let functionblock_nodes = find_function(&cfg_graph, ast_tree);

    for functionblock_node in functionblock_nodes{
        let enter = CfgNode::Entry { ast_node_idx: functionblock_node };
        let entry_node_idx = cfg_graph.add_node(enter);
        cfg_graph.add_edge(grand_node_idx, entry_node_idx,());
    }
    //拆分函数代码块中的语句，对于不同的astnode做成不同的cfgnode
    
        
}
