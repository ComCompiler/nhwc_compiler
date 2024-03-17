use std::collections::HashMap;

use petgraph::{adj::Neighbors, stable_graph::NodeIndex, visit::{self, Dfs, IntoNeighbors}};

use crate::{ antlr_parser::cparser::{RULE_declaration, RULE_declarationSpecifiers, RULE_declarator, RULE_directDeclarator, RULE_initDeclarator, RULE_initDeclaratorList, RULE_parameterDeclaration, RULE_parameterTypeList}, dfs_graph, direct_node, direct_nodes, find, find_nodes, node, node_mut, push_instr, rule_id};

use super::{ ast_node::AstTree, cfg_node::{CfgGraph, CfgNode}, context::Context, et_node::{EtNakedNode, EtTree}, gen_et::process_any_stmt, instruction::Instruction, scope_node::ScopeTree, symbol_table::{Symbol, SymbolIndex, SymbolTable}};

/*
 这个文件主要是对  cfg_graph 进行后一步处理，因为cfg_graph 在此之前还没有 
 */


pub type NhwcCfg = CfgGraph;

// fn check_var<Info:Default+Clone+Debug>(et_tree:&mut EtTree<()>,symbol_table:&SymbolTable,scope_tree:&ScopeTree,ast2scope:&HashMap<u32,u32>,et_node:u32){
//     let var_node = node!(at et_node in et_tree);
//     match &var_node.et_naked_node{
//         EtNakedNode::Symbol { sym_idx, ast_node, text, def_or_use } =>{
//             let var_scope = ast2scope.get(&ast_node);
//             match var_scope{
//                 Some(scope_var_node)=>{
                    
//                 },
//                 None =>{
//                     panic!("ast2scope中没有这个变量");
//                 }
//             }
//         },
//         _ =>{
//             panic!("该节点不是变量！");
//         }
//     }

// }

fn parse_expr2nhwc(){

}
/// 处理所有跳转语句，翻译成对应的instruction并确定跳转到的BB
fn parse_stmt2nhwc(){
    
}
fn parse_bb2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symbol_table:&SymbolTable,ast2scope:&HashMap<u32,u32>,ast_nodes:Vec<u32>,cfg_bb:u32){
    for astnode in ast_nodes{
        match(rule_id!(at astnode in ast_tree),astnode){
            (RULE_declaration,declaration_node)=>{
                parse_declaration2nhwc(ast_tree,cfg_graph, declaration_node, symbol_table, scope_tree,et_tree,ast2scope,declaration_node,cfg_bb)  
            },
            (RULE_expressionStatementr,statement_node)=>{

            },
            (_,_)=>{
                panic!("bb中未知RULE，{}不是expr或stmt",astnode);
            }
        }
    }
}

fn process_ettree(et_tree:&EtTree,scope_tree:&ScopeTree,symbol_table:&SymbolTable,ast2scope:&HashMap<u32,u32>,et_node:u32){
    let nake_et = &node!(at et_node in et_tree).et_naked_node;
    match nake_et{
        EtNakedNode::Separator { ast_node, text }=>{},
        EtNakedNode::Symbol { sym_idx, ast_node, text, def_or_use }=>{

        },
        EtNakedNode::Operator { op, ast_node, text }=>{

        },
        EtNakedNode::Constant { const_sym_idx, ast_node, text }=>{

        },
    }
}

///定义变量的decl转为ir，并通过et查找元素是否合法
fn parse_declaration2nhwc(ast_tree:&AstTree,cfg_graph: &mut CfgGraph,decl_node:u32,symbol_table:&SymbolTable,scope_tree:&ScopeTree,mut et_tree:&mut EtTree,ast2scope:&HashMap<u32,u32>,ast_decl_node:u32,cfg_bb:u32){
    //获取scope
    if let Some(decl_scope) = ast2scope.get(&ast_decl_node){
        //获得变量类型，做成symidx
        let vartype = find!(rule RULE_declarationSpecifiers at ast_decl_node in ast_tree).unwrap();
        let type_str = node!(at vartype in ast_tree).text.clone();
        let type_symidx = SymbolIndex::new(*decl_scope, type_str);

        //获取decl语句，做成symdix
        let ast_initdecls = find_nodes!(rule RULE_initDeclaratorList finally RULE_initDeclarator at ast_decl_node in ast_tree);
        for ast_initdecl in ast_initdecls{
            if let Some(initdecl_scope) = ast2scope.get(&ast_initdecl){
                //对于每一个子语句，生成et
                let et_root = process_any_stmt(et_tree, ast_tree, scope_tree, ast_initdecl, *initdecl_scope);
                //如果该节点有子树
                if let Some(et_op) = direct_node!(at et_root in et_tree ret option){
                    let sub_etnodes = direct_nodes!(at et_op in et_tree);
                    for sub_etnode in sub_etnodes{
                        process_ettree(et_tree, scope_tree, symbol_table, ast2scope, sub_etnode)
                    }
                }
                //无子树,直接做成instruction
                else{
                    let initdecl_str = node!(at ast_initdecl in ast_tree).text.clone();
                    let initdecl_name = SymbolIndex::new(*initdecl_scope, initdecl_str);
                    let initdecl_value = SymbolIndex::new(*initdecl_scope,String::new());
                    let et_instr = Instruction::new_defvar(type_symidx.clone(), initdecl_name, initdecl_value);

                    push_instr!(add et_instr to cfg_bb for bb in cfg_graph);
                }
            }else{
                panic!("{}没有在ast2scope里面找到",ast_initdecl);
            }
        }
    }
}


fn parse_op2nhwc(){
    
}

fn parse_for2nhwc(){
    
}
fn parse_while2nhwc(){
    
}

///将函数名存入符号表，将函数签名处理为ir，并处理函数体内的语句
fn parse_func2nhwc(ast_tree:&AstTree,cfg_graph:&mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree,symbol_table:&mut SymbolTable,ast2scope:&HashMap<u32,u32>,ast_fun:u32,ast_funsign:u32,cfg_entry:u32){
    //获取函数所对应的scopenode
    if let Some(fun_scope) = ast2scope.get(&ast_fun){
        //获取函数名称
        let fun_name = &node!(at ast_funsign in ast_tree).text;
        let name_symidx = SymbolIndex::new(*fun_scope, fun_name.to_string());

        //添加到符号表中
        let fun_symbol = Symbol::new(cfg_entry, fun_name.to_string());
        symbol_table.add(fun_symbol);

        //获取返回类型
        let ast_retype = find!(rule RULE_declarationSpecifiers at ast_fun in ast_tree).unwrap();
        let fun_rettype = &node!(at ast_retype in ast_tree).text;
        let type_symidx = SymbolIndex::new(*fun_scope, fun_rettype.to_string());

        //获取参数列表
        let mut para_symlst: Vec<SymbolIndex> = vec![];
        //函数有参数
        if let Some(para) = find!(rule RULE_declarator then RULE_directDeclarator finally RULE_parameterTypeList at ast_fun in ast_tree){
            let ast_paralst = find_nodes!(rule RULE_parameterDeclaration at para in ast_tree);
            //将函数签名转为ir
            for ast_para in ast_paralst{
                let fun_para = &node!(at ast_para in ast_tree).text;
                let para_symidx = SymbolIndex::new(*fun_scope, fun_para.to_string());
                para_symlst.push(para_symidx);
            }
        }
        //函数无参数，则不需要处理参数部分
        else{}
        //做成instr放在cfg的entry里面
        let fun_instruction = Instruction::new_deffun(name_symidx, type_symidx, para_symlst);
        
        push_instr!(add fun_instruction to cfg_entry for entry in cfg_graph);

    }else{
        panic!("找不到{}该函数的scopenode!",ast_fun);
    }
    
}

/// 由于cfg 里面包含了其他的一些块和边，例如 branch 块和 after conditioned边
/// 因此我们需要再做一次转化，把边转化成相应的跳转或者调整代码，把所有node 都转化成BasicBlock
pub fn parse_cfg_into_nhwc_cfg(context :&mut Context){
    let (cfg_graph,scope_tree,ast_tree,symbol_table,et_tree,ast2scope)= (&mut context.cfg_graph , &mut context.scope_tree,&mut context.ast_tree,&mut context.symtab,&mut context.et_tree,&context.ast2scope);

    let start_node: NodeIndex<u32> = NodeIndex::new(0);
    //先遍历一遍函数名，将函数名加入到符号表中
    let cfg_funs = direct_nodes!(at start_node in cfg_graph);
    for cfg_entry in cfg_funs.clone(){
        if let CfgNode::Entry { ast_node, text:_, calls_in_func:_ ,instr:_} = node!(at cfg_entry in cfg_graph){
            //查找函数名称所在节点
            let ast_fun = *ast_node;
            let ast_funsign = find!(rule RULE_declarator then RULE_directDeclarator finally RULE_directDeclarator at ast_fun in ast_tree).unwrap();

            parse_func2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symbol_table, ast2scope,ast_fun,ast_funsign,cfg_entry)
        }else{
            panic!("entry不是函数签名，cfg出错");
        }   
    }
    //再遍历一遍entry，对于每个函数做dfs,处理函数体
    for cfg_entry in cfg_funs.clone(){
        let dfs_vec = dfs_graph!(at cfg_entry in cfg_graph for dfs);

        for node in dfs_vec{
            let cfgnode = node!(at node in cfg_graph);
            match cfgnode {
                CfgNode::Branch { ast_expr_node, text } =>{

                },
                CfgNode::Switch { ast_expr_node, text } =>{

                },
                CfgNode::ForLoop { ast_before_node, ast_mid_node, ast_after_node, text }=>{
                    
                },
                CfgNode::WhileLoop { ast_expr_node, text }=>{

                },
                CfgNode::BasicBlock { ast_nodes, text:_, instrs:_ }=>{
                    // parse_bb2nhwc(ast_tree,cfg_graph, scope_tree, et_tree, symbol_table, ast2scope,ast_nodes.clone(),node)
                },
                _=>{},
            }
        }
    }
}

pub fn dfs(cfg_graph: &mut CfgGraph, cfg_node: u32, visited: &mut Vec<bool>, dfs_vec: &mut Vec<u32>) {
    if visited[cfg_node as usize] {
        return;
    }
    visited[cfg_node as usize] = true;
    dfs_vec.push(cfg_node);

    // 假设`direct_nodes!`能安全地返回一个空集合或当前节点的直接相连节点列表
    let nodes = direct_nodes!(at cfg_node in cfg_graph);
    for node in nodes {
        if !visited[node as usize] {
            dfs(cfg_graph, node, visited, dfs_vec);
        }
    }
}
