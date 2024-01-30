use core::panic;
use std::fmt::Debug;
use std::mem;
//use std::intrinsics::mir::BasicBlock;

use petgraph::stable_graph::NodeIndex;
use petgraph::{Directed, Graph};
use petgraph::graph::DiGraph;

use crate::toolkit::ast_node::{AstNode,AstTree};
use crate::{direct_node, find_nodes_by_dfs, node_mut, rule_id, RULE_compoundStatement, RULE_functionDefinition};
use crate::antlr_parser::cparser::{RULE_blockItem, RULE_blockItemList, RULE_declaration, RULE_expression, RULE_iterationStatement, RULE_selectionStatement, RULE_statement};
use crate::{find,find_nodes,node};

//use crate::toolkit::ast_node::AstNode;

pub type CfgGraph = DiGraph<CfgNode,(),u32>;

pub enum CfgNode {
    Entry {
        ast_node_idx: u32,
        text: String,
    },
    Exit {
        ast_node_idx: u32,
        text: String,
    },
    Branch {
        ast_node_idx: u32,
        text: String,
    },
    Gather {

    },
    BasicBlock{
        ast_node_idxes: Vec<u32>,
        text: String,
    },
    FuncParent{

    }
}
impl CfgNode {
    pub fn get_ast_node_text(&mut self,ast_tree : &Graph<AstNode,(),Directed>) -> &str{
        match self {
            CfgNode::Entry {  ast_node_idx, text } => {
                if !text.is_empty(){
                    return text
                }else{
                    let new_str = ast_tree.node_weight(NodeIndex::from(*ast_node_idx)).unwrap().text.clone();
                    let _ = mem::replace(text, new_str);
                    text
                }
            }
            CfgNode::Exit {  ast_node_idx, text } =>{ 
                if !text.is_empty(){
                    return text
                }else{
                    let new_str = ast_tree.node_weight(NodeIndex::from(*ast_node_idx)).unwrap().text.clone();
                    let _ = mem::replace(text, new_str);
                    text
                }
            }

            CfgNode::Branch {  ast_node_idx, text } => {
                if !text.is_empty(){
                    return text
                }else{
                    let new_str = ast_tree.node_weight(NodeIndex::from(*ast_node_idx)).unwrap().text.clone();
                    let _  = mem::replace(text, new_str);
                    text
                }
            }
            CfgNode::Gather {} => "",
            CfgNode::BasicBlock { ast_node_idxes, text } =>{ 
                if !text.is_empty(){
                    return text
                }else{
                    let new_str = {let mut s = "".to_string();
                        for ast_node_idx in ast_node_idxes{
                            s += ast_tree.node_weight(NodeIndex::from(*ast_node_idx)).unwrap().text.as_str();
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
            CfgNode::Entry {  ast_node_idx, text } =>
                write!(f,"{} {} \n{}","Entry",ast_node_idx,text),
            CfgNode::Exit {  ast_node_idx, text } =>
                write!(f,"{} {} ","Exit",ast_node_idx ),
            CfgNode::Branch {   ast_node_idx, text } =>
                write!(f,"{} {} \n{}","Branch",ast_node_idx, text),
            CfgNode::Gather {  } =>
                write!(f,"{} ","Gather"),
            CfgNode::BasicBlock { ast_node_idxes, text } => 
                write!(f,"{} {}","BasicBlock",text),
            CfgNode::FuncParent {  } => write!(f,"{}","root",),
        }
    }
}

pub fn process_statement(cfg_graph:&mut CfgGraph,ast_tree:&AstTree,current_compound_node:u32,cfg_head_node:u32, cfg_tail_node:u32){
    
}

pub fn process_compound(cfg_graph:&mut CfgGraph,ast_tree:&AstTree,current_compound_node:u32,cfg_head_node:u32, cfg_tail_node:u32){
    // 简单先插入一个 cfg basic block
    let mut cfg_current_head_node = cfg_graph.add_node(CfgNode::BasicBlock{ ast_node_idxes:vec![], text: String::new() }).index() as u32;
    cfg_graph.add_edge(NodeIndex::from(cfg_head_node),NodeIndex::from( cfg_current_head_node), ());

    //查找compoundstatement,下找blocklist以及blockitem
    let blockitemlist_node = find!(rule RULE_blockItemList at current_compound_node in ast_tree).unwrap();
    let blockitem_nodes: Vec<u32>= find_nodes!(rule RULE_blockItem at blockitemlist_node in ast_tree);

    for &blockitem_node in blockitem_nodes.iter().rev(){
        //blockitem有statement和declaration，前者为分支语句，后者为赋值语句，做成front_basicblock
        let declare_or_statement_node = direct_node!(at blockitem_node in ast_tree);
        match (rule_id!(at declare_or_statement_node in ast_tree),declare_or_statement_node){
            (RULE_declaration,declare_node)=> {
                if let CfgNode::BasicBlock { ast_node_idxes, text: _ }= node_mut!(at cfg_current_head_node in cfg_graph){
                    ast_node_idxes.push(declare_node);
                }else {panic!("cfg_current_head_node 不是BasicBlock了")}
            }
            (RULE_statement,statement_node)=>{
                let which_statement_node = direct_node!(at statement_node in ast_tree);
                //分别处理iteration循环语句和selection判断语句
                match (rule_id!(at which_statement_node in ast_tree),which_statement_node){
                    //循环分支
                    (RULE_iterationStatement, iter_node)=>{
                        //expression做成branch节点
                        let cfg_branch_node = cfg_graph.add_node(CfgNode::Branch { ast_node_idx:iter_node, text: String::new() }).index() as u32;
                        cfg_graph.add_edge(NodeIndex::from(cfg_current_head_node), NodeIndex::from(cfg_branch_node), ());
                        // 转移head到一个新的basicblock,并与上面的 branch 进行连接
                        cfg_current_head_node = cfg_graph.add_node(CfgNode::BasicBlock{ ast_node_idxes:vec![], text: String::new() }).index() as u32;
                        cfg_graph.add_edge(NodeIndex::from(cfg_branch_node), NodeIndex::from(cfg_current_head_node), () );
                        
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
                    //选择分支
                    (RULE_selectionStatement, selection_node)=>{
                        // 一个 seleciotn_node 一定有一个 expression 
                        let select_exprission_node = find!(rule RULE_expression at selection_node in ast_tree).unwrap();
                        let cfg_branch_node = cfg_graph.add_node(
                            CfgNode::Branch { ast_node_idx:select_exprission_node, text: String::new() }).index() as u32;
                        let cfg_gather_node = cfg_graph.add_node(
                            CfgNode::Gather {  } ).index() as u32;

                        // 把head 转移到新的 branch node
                        cfg_graph.add_edge(NodeIndex::from(cfg_current_head_node), 
                                            NodeIndex::from(cfg_branch_node),  ());
                        // 转移head到一个新的BasicBlock，并且与上面的的 gather 连接
                        cfg_current_head_node = cfg_graph.add_node(CfgNode::BasicBlock{ ast_node_idxes:vec![], text: String::new() }).index() as u32;
                        cfg_graph.add_edge(NodeIndex::from(cfg_gather_node), NodeIndex::from(cfg_current_head_node), () );

                        let statement_nodes_of_selection:Vec<u32>= find_nodes!(rule RULE_statement at selection_node in ast_tree);
                        // 添加这条边是因为 if branch 总有 一条直接连向 gather 的边
                        cfg_graph.add_edge(NodeIndex::from(cfg_branch_node), 
                                            NodeIndex::from(cfg_gather_node),  ());
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
                        if let CfgNode::BasicBlock { ast_node_idxes, text }= node_mut!(at cfg_current_head_node in cfg_graph){
                            ast_node_idxes.push(except_iter_selection_nodes)
                        }else{panic!("cfg_current_head_node 不是BasicBlock了"); }
                    },
                }
            }
            _ =>{panic!("未知节点 under declare_or_statement_node")},
        }
    }

    cfg_graph.add_edge(NodeIndex::from(cfg_current_head_node), 
    NodeIndex::from(cfg_tail_node),  ());
    
}

pub fn parse_ast_to_cfg(ast_tree:&AstTree) -> CfgGraph{
    let mut cfg_graph = CfgGraph::new();
    let ast_root_node = 0 ;
    let funcdef_nodes:Vec<u32> = find_nodes_by_dfs!( rule RULE_functionDefinition at ast_root_node in ast_tree);
    let cfg_func_parent  =  CfgNode::FuncParent {  };
    // 为每一个function 创建一个共享的根节点
    let cfg_func_parent_node = cfg_graph.add_node(cfg_func_parent);
    for funcdef_node in funcdef_nodes{
        let cfg_entry_node = cfg_graph.add_node(CfgNode::Entry { ast_node_idx:funcdef_node, text: String::new() }).index() as u32;
        cfg_graph.add_edge(cfg_func_parent_node, NodeIndex::from(cfg_entry_node), ());
        let cfg_exit_node = cfg_graph.add_node(CfgNode::Exit  { ast_node_idx:funcdef_node, text: String::new() }).index() as u32;

        let current_compound_node = find!(rule RULE_compoundStatement at funcdef_node in ast_tree ).unwrap();
        process_compound(&mut cfg_graph, ast_tree, current_compound_node, cfg_entry_node, cfg_exit_node);
    }
    cfg_graph
}
