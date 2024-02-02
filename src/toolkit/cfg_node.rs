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
use crate::antlr_parser::cparser::{RULE_blockItem, RULE_blockItemList, RULE_declaration, RULE_expression, RULE_forCondition, RULE_forIterationStatement, RULE_iterationStatement, RULE_selectionStatement, RULE_statement, RULE_whileIterationStatement};
use crate::{find,find_nodes,node};

use super::ast_node;

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
        pub ast_nodes: Vec<u32>,
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
pub fn process_iterator(cfg_graph:&mut CfgGraph,ast_tree:&AstTree,current_iteration_node:u32,cfg_head_node:u32) -> u32{
    //处理branch的构造
    let which_iteration_node = direct_node!(at current_iteration_node in ast_tree);
    match(rule_id!(at which_iteration_node in ast_tree),which_iteration_node){
        (RULE_whileIterationStatement,while_iter) => {
            //expression做成branch节点
            let expression_node = find!(rule RULE_expression at which_iteration_node in ast_tree).unwrap();
            let branch_struct = CfgNode::Branch { ast_node:expression_node, text: String::new() };
            let cfg_branch_node = add_node!(branch_struct to cfg_graph);
            add_edge!(CfgEdge::Direct {},cfg_head_node to cfg_branch_node in cfg_graph);

            //做一个branch下面的basicblock
            let statement_node = find!(rule RULE_statement at which_iteration_node in ast_tree).unwrap();
            let next_blocknode = direct_node!(at statement_node in ast_tree);
            //匹配循环体内部的大括号，单语句，分支语句情况
            match(rule_id!(at next_blocknode in ast_tree),next_blocknode){
                (RULE_compoundStatement,compoundstatement_node) => {
                    process_compound(cfg_graph,ast_tree,compoundstatement_node,cfg_branch_node,cfg_branch_node);
                }
                (RULE_expression) => {
                    let bb_struct = CfgNode::BasicBlock{ ast_nodes:vec![statement_node], text: String::new() };
                    let mut cfg_basicblock_node = add_node!(bb_struct to cfg_graph);
                    add_edge!(CfgEdge::Direct {},cfg_branch_node to bb_struct in cfg_graph);
                    add_edge!(CfgEdge::Direct {},bb_struct to cfg_branch_node in cfg_graph);
                }
                (RULE_iterationStatement) => {
                    let inside_iter = process_iterator(cfg_graph, ast_tree,next_blocknode, cfg_head_node);
                }
                (RULE_selectionStatement) => {
                    
                }
            }
        }
        (RULE_forIterationStatement,for_iter) => {
            //expression做成branch节点
            let condition_node = find!(rule RULE_forCondition at which_iteration_node in ast_tree).unwrap();
            let branch_struct = CfgNode::Branch { ast_node:condition_node, text: String::new() };
            let cfg_branch_node = add_node!(branch_struct to cfg_graph);
            add_edge!(CfgEdge::Direct {},cfg_head_node to cfg_branch_node in cfg_graph);

            //做一个branch下面的basicblock
            let statement_node = find!(rule RULE_statement at which_iteration_node in ast_tree).unwrap();
            let next_blocknode = direct_node!(at statement_node in ast_tree);
            //匹配循环体内部的大括号，单语句，分支语句情况
            match(rule_id!(at next_blocknode in ast_tree),next_blocknode){
                (RULE_compoundStatement,compoundstatement_node) => {
                    process_compound(cfg_graph,ast_tree,compoundstatement_node,cfg_branch_node,cfg_branch_node);
                }
                (RULE_expression,expression_node) => {
                    let bb_struct = CfgNode::BasicBlock{ ast_nodes:vec![statement_node], text: String::new() };
                    let mut cfg_basicblock_node = add_node!(bb_struct to cfg_graph);
                    add_edge!(CfgEdge::Direct {},cfg_branch_node to bb_struct in cfg_graph);
                    add_edge!(CfgEdge::Direct {},bb_struct to cfg_branch_node in cfg_graph);
                }
                (RULE_iterationStatement,iteration_node) => {
                    let inside_iter = process_iterator(cfg_graph, ast_tree,next_blocknode, cfg_head_node);
                }
                (RULE_selectionStatement,selection_node) => {
                    
                }
            }
        }
    }
    statement_node
}

///处理选择分支节点，内部区分if，switch
pub fn process_selection(cfg_graph:&mut CfgGraph,ast_tree:&AstTree,current_selection_node:u32,cfg_head_node:u32) => u32{
    // 一个 seleciotn_node 一定有一个 expression 
    let select_exprission_node = find!(rule RULE_expression at selection_node in ast_tree).unwrap();
    let branch_struct =CfgNode::Branch { ast_node:select_exprission_node, text: String::new() };
    let cfg_branch_node = add_node!(branch_struct to cfg_graph);

    //做一个gather节点
    let gather_struct = CfgNode::Gather {  } ;
    let cfg_gather_node = add_node!(gather_struct to cfg_graph);
    // 把head 转移到新的 branch node
    add_edge!(CfgEdge::Direct{},cfg_current_head_node to cfg_branch_node in cfg_graph);
    // 转移head到一个新的BasicBlock，并且与上面的的 gather 连接
    let new_bb_struct = CfgNode::BasicBlock{ ast_nodes:vec![], text: String::new() };
    cfg_current_head_node = add_node!(new_bb_struct to cfg_graph);

    add_edge!(CfgEdge::Direct{},cfg_gather_node to cfg_current_head_node in cfg_graph);

    let statement_nodes_of_selection:Vec<u32>= find_nodes!(rule RULE_statement at selection_node in ast_tree);
    // 添加这条边是因为 if branch 总有 一条直接连向 gather 的边
    add_edge!( CfgEdge::Direct{},cfg_branch_node to cfg_gather_node in cfg_graph);

    for statement_node in statement_nodes_of_selection{
        let which_statement_under = direct_node!(at statement_node in ast_tree);
        match (rule_id!(at which_statement_under in ast_tree),which_statement_under) {
            (RULE_compoundStatement , compound_node) => {
                process_compound(cfg_graph,ast_tree,compound_node,cfg_branch_node,cfg_gather_node);
            },
            _ => {
                panic!("这个选择分支里面的statement 不是compound statement 后面再处理这个")
            }
        }
    }

}

pub fn process_compound(cfg_graph:&mut CfgGraph,ast_tree:&AstTree,current_compound_node:u32,cfg_head_node:u32, cfg_tail_node:u32){
    // 简单先插入一个 cfg basic block
    let bb_struct = CfgNode::BasicBlock{ ast_nodes:vec![], text: String::new() };
    let mut cfg_current_head_node = add_node!(bb_struct to cfg_graph);
    add_edge!(  {CfgEdge::Direct{} } from  cfg_head_node to cfg_current_head_node in cfg_graph);

    //查找compoundstatement,下找blocklist以及blockitem
    let blockitemlist_node = find!(rule RULE_blockItemList at current_compound_node in ast_tree).unwrap();
    let blockitem_nodes: Vec<u32>= find_nodes!(rule RULE_blockItem at blockitemlist_node in ast_tree);

    // 这里 rev 是因为 adj 只能返回  rev 的部分  
    for &blockitem_node in blockitem_nodes.iter().rev(){
        //blockitem有statement和declaration，前者为分支语句，后者为赋值语句，做成front_basicblock
        let declare_or_statement_node = direct_node!(at blockitem_node in ast_tree);
        match (rule_id!(at declare_or_statement_node in ast_tree),declare_or_statement_node){
            (RULE_declaration,declare_node)=> {
                if let CfgNode::BasicBlock { ast_nodes: ast_node_idxes, text: _ }= node_mut!(at cfg_current_head_node in cfg_graph){
                    ast_node_idxes.push(declare_node);
                }else {panic!("cfg_current_head_node 不是BasicBlock了")}
            }
            (RULE_statement,statement_node)=>{
                let which_statement_node = direct_node!(at statement_node in ast_tree);
                //分别处理iteration循环语句和selection判断语句
                match (rule_id!(at which_statement_node in ast_tree),which_statement_node){
                    //循环分支
                    (RULE_iterationStatement, iter_node)=>{
<<<<<<< HEAD
                        //expression做成branch节点
                        let branch_struct = CfgNode::Branch { ast_node:iter_node, text: String::new() };
                        let cfg_branch_node = add_node!(branch_struct to cfg_graph);
                        add_edge!( {CfgEdge::Direct{}} from cfg_current_head_node to cfg_branch_node in cfg_graph);
                        // 转移head到一个新的basicblock,并与上面的 branch 进行连接
                        let bb_struct = CfgNode::BasicBlock{ ast_nodes:vec![], text: String::new() };
                        cfg_current_head_node = add_node!(bb_struct to  cfg_graph);
                        add_edge!( { CfgEdge::Direct{} } from cfg_branch_node to cfg_current_head_node in cfg_graph);
                        
                        //循环中的statement做成behind_basicblock
                        let iter_statement_node= find!(rule RULE_statement at iter_node in ast_tree).unwrap();
                        let which_statement_node = direct_node!(at iter_statement_node in ast_tree);
                        match (rule_id!(at which_statement_node in ast_tree),which_statement_node) {
                            (RULE_compoundStatement, compound_statement_node)=> {
                                process_compound(cfg_graph,ast_tree,compound_statement_node,cfg_branch_node,cfg_branch_node);
                            }
                            _ =>{
                                panic!("这个迭代分支里面的statement 不是compound statement,后面再处理这个")
                            }
                        }
=======
                        let ast_statement_idx = process_iterator(cfg_graph, ast_tree, which_statement_node, cfg_current_head_node);
                        let next_blocknode = direct_node!(at ast_statement_idx in ast_tree);

                             
>>>>>>> refs/remotes/origin/master
                    }

                    //选择分支


                    //循环中的statement做成behind_basicblock
                                let iter_statement_node= find!(rule RULE_statement at iter_node in ast_tree).unwrap();
                                let which_statement_node = direct_node!(at iter_statement_node in ast_tree);
                                match (rule_id!(at which_statement_node in ast_tree),which_statement_node) {
                                    (RULE_compoundStatement, compound_statement_node)=> {
                                        process_compound(cfg_graph,ast_tree,compound_statement_node,cfg_branch_node,cfg_branch_node);
                                    }
                                    _ =>{
                                        panic!("这个迭代分支里面的statement 不是compound statement,后面再处理这个")
                                    }
                                }
                            }
                        };
                    }
                        
                    //选择分支
                    (RULE_selectionStatement, selection_node)=>{
                        // 一个 seleciotn_node 一定有一个 expression 
                        let select_exprission_node = find!(rule RULE_expression at selection_node in ast_tree).unwrap();
                        let branch_struct =CfgNode::Branch { ast_node:select_exprission_node, text: String::new() };
                        let cfg_branch_node = add_node!(branch_struct to cfg_graph);

                        let gather_struct = CfgNode::Gather {  } ;
                        let cfg_gather_node = add_node!(gather_struct to cfg_graph);
                        // 把head 转移到新的 branch node
                        add_edge!({CfgEdge::Direct{}} from  cfg_current_head_node to cfg_branch_node in cfg_graph);
                        // 转移head到一个新的BasicBlock，并且与上面的的 gather 连接
                        let new_bb_struct = CfgNode::BasicBlock{ ast_nodes:vec![], text: String::new() };
                        cfg_current_head_node = add_node!(new_bb_struct to cfg_graph);

                        add_edge!({CfgEdge::Direct{}} from  cfg_gather_node to cfg_current_head_node in cfg_graph);

                        let statement_nodes_of_selection:Vec<u32>= find_nodes!(rule RULE_statement at selection_node in ast_tree);
                        // 添加这条边是因为 if branch 总有 一条直接连向 gather 的边
                        add_edge!({CfgEdge::Direct{}} from cfg_branch_node to cfg_gather_node in cfg_graph);

                        for statement_node in statement_nodes_of_selection{
                            let which_statement_under = direct_node!(at statement_node in ast_tree);
                            match (rule_id!(at which_statement_under in ast_tree),which_statement_under) {
                                (RULE_compoundStatement , compound_node) => {
                                    process_compound(cfg_graph,ast_tree,compound_node,cfg_branch_node,cfg_gather_node);
                                },
                                _ => {
                                    panic!("这个选择分支里面的statement 不是compound statement 后面再处理这个")
                                }
                            }
                        }
                            // 先仅仅处理 statement 为 compoundStatement的情况
                    }
                    (_ , except_iter_selection_nodes) =>{
                        if let CfgNode::BasicBlock { ast_nodes: ast_node_idxes, text }= node_mut!(at cfg_current_head_node in cfg_graph){
                            ast_node_idxes.push(except_iter_selection_nodes)
                        }else{panic!("cfg_current_head_node 不是BasicBlock了"); }
                    },
                }
            }
            _ =>{panic!("未知节点 under declare_or_statement_node")},
        }
    }

    add_edge!( {CfgEdge::Direct {  }} from  cfg_current_head_node to cfg_tail_node in cfg_graph);
    
}

pub fn parse_ast_to_cfg(ast_tree:&AstTree) -> CfgGraph{
    let mut cfg_graph = CfgGraph::new();
    let ast_root_node = 0 ;
    let funcdef_nodes:Vec<u32> = find_nodes_by_dfs!( rule RULE_functionDefinition at ast_root_node in ast_tree);
    let cfg_func_parent  =  CfgNode::FuncParent {  };
    // 为每一个function 创建一个共享的根节点
    let cfg_func_parent_node = cfg_graph.add_node(cfg_func_parent);
    for funcdef_node in funcdef_nodes{
        let entry_struct = CfgNode::Entry { ast_node:funcdef_node, text: String::new(), calls_in_func: Vec::new()};
        let cfg_entry_node = add_node!(entry_struct to cfg_graph);
        add_edge!( {CfgEdge::Direct {  } } from  cfg_func_parent_node to cfg_entry_node in cfg_graph);
        let exit_struct = CfgNode::Exit  { ast_node:funcdef_node, text: String::new() };
        let cfg_exit_node = add_node!(exit_struct to cfg_graph);
        let current_compound_node = find!(rule RULE_compoundStatement at funcdef_node in ast_tree ).unwrap();
        process_compound(&mut cfg_graph, ast_tree, current_compound_node, cfg_entry_node, cfg_exit_node);
    }
    cfg_graph
}

