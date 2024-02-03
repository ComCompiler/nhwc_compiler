use core::panic;
use std::fmt::Debug;
use std::mem;
//use std::intrinsics::mir::BasicBlock;

use petgraph::stable_graph::NodeIndex;
use petgraph::{Directed, Graph};
use petgraph::graph::DiGraph;

use crate::toolkit::ast_node::{AstNode,AstTree};
use crate::toolkit::cfg_edge::CfgEdge;
use crate::{add_edge, add_node, direct_node, find_nodes_by_dfs, node_mut, rule_id, RULE_compoundStatement, RULE_functionDefinition};
use crate::antlr_parser::cparser::{RULE_blockItem, RULE_blockItemList, RULE_declaration, RULE_expression, RULE_expressionStatement, RULE_forCondition, RULE_forIterationStatement, RULE_ifSelection, RULE_iterationStatement, RULE_jumpStatement, RULE_labeledStatement, RULE_selectionStatement, RULE_statement, RULE_switchSelection, RULE_whileIterationStatement};
use crate::{find,find_nodes,node};

use super::symbol_table::SymbolIndex;
use super::{ast_node, cfg_edge};

//use crate::toolkit::ast_node::AstNode;

pub type CfgGraph = DiGraph<CfgNode,CfgEdge,u32>;

pub enum CfgNode {
    Entry {
        ast_node: u32,
        text: String,
        calls_in_func : Vec<u32>,
    },
    Exit {
        ast_node: u32,
        text: String,
    },
    Branch {
        ast_node: u32,
        text: String,
    },
    Gather {

    },
    BasicBlock{
        ast_nodes: Vec<u32>,
        text: String,
    },
    FuncParent{

    }
}
pub trait GetText{
    fn get_ast_node_text(&mut self,ast_tree : &Graph<AstNode,(),Directed>)->&str;
}
impl GetText for CfgNode {
    fn get_ast_node_text(&mut self,ast_tree : &Graph<AstNode,(),Directed>) -> &str{
        match self {
            CfgNode::Entry {  ast_node, text, calls_in_func:_  } => {
                if !text.is_empty(){
                    return text.as_str()
                }else{
                    let ast_node = *ast_node;
                    let new_str = node!(at ast_node in ast_tree).text.clone();
                    let _ = mem::replace(text, new_str);
                    text
                }
            }
            CfgNode::Exit {  ast_node, text } =>{ 
                if !text.is_empty(){
                    return text
                }else{
                    let ast_node = *ast_node;
                    let new_str = node!(at ast_node in ast_tree).text.clone();
                    let _ = mem::replace(text, new_str);
                    text
                }
            }

            CfgNode::Branch {  ast_node, text } => {
                if !text.is_empty(){
                    return text
                }else{
                    let ast_node = *ast_node;
                    let new_str = node!(at ast_node in ast_tree).text.clone();
                    let _  = mem::replace(text, new_str);
                    text
                }
            }
            CfgNode::Gather {} => "",
            CfgNode::BasicBlock { ast_nodes, text } =>{ 
                if !text.is_empty(){
                    return text
                }else{
                    let new_str = {let mut s = "".to_string();
                        for ast_node_idx in ast_nodes{
                            let ast_node = *ast_node_idx;
                            s += node!(at ast_node in ast_tree).text.as_str();
                            s += "\n";
                        }
                        s
                    };
                    let _ = mem::replace(text, new_str);
                    text
                }
            }
            CfgNode::FuncParent {  } => "",
        }
    }
}


impl Debug for CfgNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            CfgNode::Entry {  ast_node: ast_node_idx, text, calls_in_func:_ } =>
                write!(f,"{} {} \n{}","Entry",ast_node_idx,text),
            CfgNode::Exit {  ast_node: ast_node_idx, text } =>
                write!(f,"{} {} ","Exit",ast_node_idx ),
            CfgNode::Branch {   ast_node: ast_node_idx, text } =>
                write!(f,"{} {} \n{}","Branch",ast_node_idx, text),
            CfgNode::Gather {  } =>
                write!(f,"{} ","Gather"),
            CfgNode::BasicBlock { ast_nodes: ast_node_idxes, text } => 
                write!(f,"{} {}","BasicBlock",text),
            CfgNode::FuncParent {  } => write!(f,"{}","root",),
        }
    }
}

///处理循环过程的cfg节点处理和连接，返回branch和statement的idx
pub fn process_iteration(cfg_graph:&mut CfgGraph,ast_tree:&AstTree,current_iteration_node:u32)->Option<(u32,u32)>{
    //处理branch的构造
    let which_iteration_node = direct_node!(at current_iteration_node in ast_tree);
    match(rule_id!(at which_iteration_node in ast_tree),which_iteration_node){
        (RULE_whileIterationStatement,while_iter) => {
            //expression做成branch节点
            let expression_node = find!(rule RULE_expression at which_iteration_node in ast_tree).unwrap();
            let branch_struct = CfgNode::Branch { ast_node:expression_node, text: String::new() };
            let cfg_branch_node = add_node!(branch_struct to cfg_graph);
            let statement_node = find!(rule RULE_statement at which_iteration_node in ast_tree).unwrap();
            if let Some((st_head_node, st_tail_node)) = process_statement(cfg_graph, ast_tree, statement_node){
                add_edge!({CfgEdge::Direct {}} from cfg_branch_node to st_head_node in cfg_graph);
                add_edge!({CfgEdge::Direct {}} from st_tail_node to cfg_branch_node in cfg_graph);
            }else{
                add_edge!({CfgEdge::Direct {}} from cfg_branch_node to cfg_branch_node in cfg_graph);
            }
            Some((cfg_branch_node,cfg_branch_node))
        }
        (RULE_forIterationStatement,for_iter) => {
            //forconditioin做成branch节点
            let condition_node = find!(rule RULE_forCondition at which_iteration_node in ast_tree).unwrap();
            let branch_struct = CfgNode::Branch { ast_node:condition_node, text: String::new() };
            let cfg_branch_node = add_node!(branch_struct to cfg_graph);
            let statement_node = find!(rule RULE_statement at which_iteration_node in ast_tree).unwrap();
            if let Some((st_head_node, st_tail_node)) = process_statement(cfg_graph, ast_tree, statement_node){
                add_edge!({CfgEdge::Direct {}} from cfg_branch_node to st_head_node in cfg_graph);
                add_edge!({CfgEdge::Direct {}} from st_tail_node to cfg_branch_node in cfg_graph);
            }else{
                add_edge!({CfgEdge::Direct {}} from cfg_branch_node to cfg_branch_node in cfg_graph);
            }
            Some((cfg_branch_node,cfg_branch_node))
        }
        (_,_) => panic!("循环不属于for或while循环"),
    }
}

///处理branch下面statement的多种情况，包括单语句，大括号，分支语句
pub fn process_statement(cfg_graph:&mut CfgGraph,ast_tree:&AstTree,current_statement_node:u32) ->Option<(u32,u32)> {
    let which_branch_statement = direct_node!(at current_statement_node in ast_tree);
    //匹配循环体内部的大括号，单语句，分支语句情况
    match(rule_id!(at which_branch_statement in ast_tree),which_branch_statement){
        (RULE_compoundStatement,compoundstatement_node) => {
            process_compound(cfg_graph,ast_tree,compoundstatement_node)
        }
        (RULE_expressionStatement,expressionstatement_node) => {
            let bb_struct = CfgNode::BasicBlock{ ast_nodes:vec![], text: String::new() };
            let cfg_basicblock_node = add_node!(bb_struct to cfg_graph); 
            if let CfgNode::BasicBlock { ast_nodes: ast_node_idxes, text: _ }= node_mut!(at cfg_basicblock_node in cfg_graph){
                ast_node_idxes.push(expressionstatement_node);
            }else {panic!("该节点不是BasicBlock了")}
            Some((cfg_basicblock_node,cfg_basicblock_node))
        }
        (RULE_iterationStatement,iter_node) => {
            process_iteration(cfg_graph, ast_tree,which_branch_statement)
        }
        (RULE_selectionStatement,select_node) => {
            process_selection(cfg_graph, ast_tree, which_branch_statement)
        }
        (RULE_jumpStatement,jump_node) => {
            todo!();
        }
        (_,_) => panic!("不属于任何statement下等语句,ast树有错误"),
    }
    
}
///处理选择分支节点，内部区分if，switch，head_node连接到branch，gather连接到tail_node
pub fn process_selection(cfg_graph:&mut CfgGraph,ast_tree:&AstTree,current_selection_node:u32) -> Option<(u32,u32)>{
    //提前做一个gather节点
    let cfg_gather_struct = CfgNode::Gather {  };
    let cfg_gather_node = add_node!(cfg_gather_struct to cfg_graph);

    //处理if和switch
    let which_selection_node = direct_node!(at current_selection_node in ast_tree);
    match(rule_id!(at which_selection_node in ast_tree),which_selection_node){
        (RULE_ifSelection,if_node) => {
            //将expression做成branch
            let expression_node = find!(rule RULE_expression at if_node in ast_tree).unwrap();
            let branch_struct = CfgNode::Branch { ast_node:expression_node, text: String::new() };
            let cfg_branch_node = add_node!(branch_struct to cfg_graph);

            //处理statement
            let statement_nodes:Vec<u32> = find_nodes!(rule RULE_statement at if_node in ast_tree);
            if statement_nodes.len() == 1{
                add_edge!({CfgEdge::Direct {}} from cfg_branch_node to cfg_gather_node in cfg_graph);
            }else if statement_nodes.len() > 2{
                panic!("不对, selectionStatement 下面不可能有两个以上的Statement")
            }
            for statement_node in statement_nodes{
                if let Some((st_head_node, st_tail_node)) = process_statement(cfg_graph, ast_tree, statement_node){
                    add_edge!({CfgEdge::Direct {}} from cfg_branch_node to st_head_node in cfg_graph);
                    add_edge!({CfgEdge::Direct {}} from st_tail_node to cfg_branch_node in cfg_graph);
                }
            }
            Some((cfg_branch_node , cfg_gather_node))
        }
        (RULE_switchSelection,switch_node) => {
            // //expression做成branch节点
            // let expression_node = find!(rule RULE_expression at switch_node in ast_tree).unwrap();
            // let branch_struct = CfgNode::Branch { ast_node:expression_node, text: String::new() };
            // let cfg_branch_node = add_node!(branch_struct to cfg_graph);
            // add_edge!({CfgEdge::Direct {}} from cfg_head_node to cfg_branch_node in cfg_graph);

            // //处理statement节点
            // let statement_node = find!(rule RULE_statement at switch_node in ast_tree).unwrap();
            // let compound_node = direct_node!(at statement_node in ast_tree);
            // let blockitemlist_node = direct_node!(at compound_node in ast_tree);
            // let blockitemlist:Vec<u32> = find_nodes!(rule RULE_blockItem at blockitemlist_node in ast_tree);
            // for blockitem in blockitemlist{
            //     //创建一个basicblock
            //     let switch_statement_node = direct_node!(at blockitem in ast_tree);
            //     let label_or_jump_node = direct_node!(at switch_statement_node in ast_tree);
            //     match(rule_id!(at label_or_jump_node in ast_tree),label_or_jump_node){
            //         (RULE_labeledStatement,label_node) => {
            //             //label下找statement
            //             let label_statement_node = find!(rule RULE_statement at label_node in ast_tree).unwrap();
            //             process_statement(cfg_graph, ast_tree, label_statement_node, cfg_branch_node, cfg_head_node, cfg_gather_node);
            //         }
            //         (RULE_jumpStatement,jump_node) => {
            //             if let CfgNode::BasicBlock { ast_nodes: ast_node_idxes, text: _ }= node_mut!(at cfg_basicblock_node in cfg_graph){
            //                 ast_node_idxes.push(jump_node);
            //             }else {panic!("switch的basicblock 不是BasicBlock了")}
            //             add_edge!({CfgEdge::Direct {}} from cfg_basicblock_node to cfg_gather_node in cfg_graph);
            //         }
            //         (_,_) => panic!("不属于label和jump语句"),
            //     }
            //     //panic！：没有break的情况下的cfgnode的连接方法？
            // }
            todo!();
        }
        (_,_) => panic!("不属于if和switch的循环"),
    }
}


pub fn process_compound(cfg_graph:&mut CfgGraph,ast_tree:&AstTree,current_compound_node:u32)-> Option<(u32, u32)>{
    // 一开始 没有head
    let mut opt_current_cfg_head_and_tail=  None;
    //查找compoundstatement,下找blocklist以及blockitem
    let blockitemlist_node = find!(rule RULE_blockItemList at current_compound_node in ast_tree).unwrap();
    let blockitem_nodes: Vec<u32>= find_nodes!(rule RULE_blockItem at blockitemlist_node in ast_tree);

    // 这里 rev 是因为 adj 只能返回  rev 的部分  
    for &blockitem_node in blockitem_nodes.iter().rev(){
        let declare_or_statement_node = direct_node!(at blockitem_node in ast_tree);
        match (rule_id!(at declare_or_statement_node in ast_tree),declare_or_statement_node){
            (RULE_declaration,declare_node)=> {
                match opt_current_cfg_head_and_tail{
                    Some((cfg_head_node,cfg_tail_node)) => {
                        match node_mut!(at cfg_tail_node in cfg_graph) {
                            CfgNode::BasicBlock { ast_nodes, text } => {
                                ast_nodes.push(declare_node)
                            },
                            _ => {
                                let bb_struct = CfgNode::BasicBlock{ ast_nodes:vec![], text: String::new() };
                                let cfg_basicblock_node = add_node!(bb_struct to cfg_graph); 
                                add_edge!( {CfgEdge::Direct {  } } from  cfg_head_node to cfg_basicblock_node in cfg_graph);
                                opt_current_cfg_head_and_tail = Some((cfg_head_node,cfg_basicblock_node))
                            }
                        }
                    },
                    None => {
                        let bb_struct = CfgNode::BasicBlock{ ast_nodes:vec![], text: String::new() };
                        let cfg_basicblock_node = add_node!(bb_struct to cfg_graph); 
                        opt_current_cfg_head_and_tail = Some((cfg_basicblock_node,cfg_basicblock_node));
                    },
                }
            }
            (RULE_statement,statement_node)=>{
                match process_statement(cfg_graph, ast_tree, statement_node)  {
                    Some((head_node,tail_node)) => {
                        match opt_current_cfg_head_and_tail {
                            Some((cfg_head_node , cfg_tail_node)) => {
                                add_edge!( {CfgEdge::Direct {  } } from  cfg_tail_node to head_node in cfg_graph);
                                opt_current_cfg_head_and_tail = Some((cfg_head_node , tail_node ));
                            },
                            None => opt_current_cfg_head_and_tail = Some((head_node , tail_node )),
                        }

                    }
                    None => {},
                }
            }
            _ =>{panic!("未知节点 under declare_or_statement_node")},
        }
    }
    opt_current_cfg_head_and_tail
}

pub fn parse_ast_to_cfg(ast_tree:&AstTree) -> CfgGraph{
    let mut cfg_graph = CfgGraph::new();
    let ast_root_node = 0 ;
    let funcdef_nodes:Vec<u32> = find_nodes_by_dfs!( rule RULE_functionDefinition at ast_root_node in ast_tree);
    let cfg_func_parent  =  CfgNode::FuncParent {  };
    // 为每一个function 创建一个共享的根节点
    let cfg_func_parent_node = cfg_graph.add_node(cfg_func_parent);
    for funcdef_node in funcdef_nodes{
        // 这里是事件  visit_function 发生的地方


        let entry_struct = CfgNode::Entry { ast_node:funcdef_node, text: String::new(), calls_in_func: Vec::new()};
        let cfg_entry_node = add_node!(entry_struct to cfg_graph);
        add_edge!( {CfgEdge::Direct {  } } from  cfg_func_parent_node to cfg_entry_node in cfg_graph);
        let exit_struct = CfgNode::Exit  { ast_node:funcdef_node, text: String::new() };
        let cfg_exit_node = add_node!(exit_struct to cfg_graph);
        let current_compound_node = find!(rule RULE_compoundStatement at funcdef_node in ast_tree ).unwrap();

        match process_compound(&mut cfg_graph, ast_tree, current_compound_node){
            Some((cfg_head_node, cfg_tail_node)) => {
                add_edge!( {CfgEdge::Direct {  }} from  cfg_entry_node to cfg_tail_node in cfg_graph);
                add_edge!( {CfgEdge::Direct {  }} from  cfg_tail_node to cfg_head_node in cfg_graph);
            },
            None =>{
                add_edge!( {CfgEdge::Direct {  }} from  cfg_entry_node to cfg_exit_node in cfg_graph);
            }
        }
    }
    cfg_graph
}