use std::collections::HashMap;

use petgraph::{stable_graph::NodeIndex, visit::Dfs};

use crate::{add_node, add_node_with_edge, antlr_parser::cparser::{RULE_declaration, RULE_declarationSpecifiers, RULE_declarator, RULE_directDeclarator, RULE_expression, RULE_initDeclarator, RULE_initDeclaratorList, RULE_parameterDeclaration, RULE_parameterList, RULE_parameterTypeList, RULE_statement}, direct_node, direct_nodes, find, find_nodes, find_nodes_by_dfs, node, node_mut, rule_id};

use super::{ ast_node::AstTree, cfg_node::{CfgGraph, CfgNode}, context::Context, et_node::{EtNakedNode, EtNode, EtTree}, gen_et::process_any_stmt, instruction::Instruction, scope_node::ScopeTree, symbol_table::{Symbol, SymbolIndex, SymbolTable}};
use std::fmt::Debug;

/*
 这个文件主要是对  cfg_graph 进行后一步处理，因为cfg_graph 在此之前还没有 
 */


pub type NhwcCfg = CfgGraph;

fn check_var<Info:Default+Clone+Debug>(et_tree:&mut EtTree<()>,symbol_table:&SymbolTable,scope_tree:&ScopeTree,ast2scope:&HashMap<u32,u32>,et_node:u32){
    let var_node = node!(at et_node in et_tree);
    match &var_node.et_naked_node{
        EtNakedNode::Symbol { sym_idx, ast_node, text, def_or_use } =>{
            let var_scope = ast2scope.get(&ast_node);
            match var_scope{
                Some(scope_var_node)=>{
                    
                },
                None =>{
                    panic!("ast2scope中没有这个变量");
                }
            }
        },
        _ =>{
            panic!("该节点不是变量！");
        }
    }

}

fn parse_expr2nhwc(){

}
/// 处理所有跳转语句，翻译成对应的instruction并确定跳转到的BB
fn parse_stmt2nhwc(){
    
}
fn parse_bb2nhwc(){
    
}

///定义变量的decl转为ir，并通过et查找元素是否合法
fn parse_declaration2nhwc(ast_tree:&AstTree,decl_node:u32,symbol_table:&SymbolTable,scope_tree:&ScopeTree,mut et_tree:&mut EtTree<()>,ast2scope:&HashMap<u32,u32>){
    let vartype = find!(rule RULE_declarationSpecifiers at decl_node in ast_tree).unwrap();
    let var_valuelist = find!(rule RULE_initDeclaratorList at decl_node in ast_tree).unwrap();
    let var_values: Vec<u32> = find_nodes!(rule RULE_initDeclarator at var_valuelist in ast_tree);
    for var_value in var_values {
        let scope_decl_node = ast2scope.get(&decl_node);
        match scope_decl_node{
            Some(scope_decl) =>{
                let et_root = process_any_stmt(et_tree,ast_tree,scope_tree,decl_node,*scope_decl);
                let et_op = direct_node!(at et_root in et_tree);
                let sub_ops = direct_nodes!(at et_op in et_tree);
                for sub_op in sub_ops{
                    let sub_et_node = node!(at sub_op in et_tree);
                    match &sub_et_node.et_naked_node{
                        EtNakedNode::Constant { const_sym_idx, ast_node, text }=>{

                        },
                        EtNakedNode::Operator { op, ast_node, text }=>{

                        },
                        EtNakedNode::Separator { ast_node, text }=>{

                        },
                        EtNakedNode::Symbol { sym_idx, ast_node, text, def_or_use }=>{

                        },
                    }
                }
            }
            None =>{
                panic!("ast2scope表中没有找到该astnode")
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
fn parse_func2nhwc(ast_tree:&AstTree,cfg_graph:&mut CfgGraph,scope_tree:&ScopeTree,et_tree:&mut EtTree<()>,symbol_table:&mut SymbolTable,ast2scope:&HashMap<u32,u32>){
    let start_node: NodeIndex<u32> = NodeIndex::new(0);
    //先遍历一遍函数名，将函数名加入到符号表中
    let cfg_funs = direct_nodes!(at start_node in cfg_graph);
    for cfg_entry in cfg_funs{
        if let CfgNode::Entry { ast_node, text, calls_in_func ,instr} = node!(at cfg_entry in cfg_graph){
            //查找函数名称所在节点
            let ast_fun = *ast_node;
            let ast_funsign = find!(rule RULE_declarator then RULE_directDeclarator finally RULE_directDeclarator at ast_fun in ast_tree).unwrap();
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
                let cfg_entry = node_mut!(at cfg_entry in cfg_graph);
                if let CfgNode::Entry { ast_node:_, text:_, calls_in_func:_, instr } = cfg_entry{
                    *instr = fun_instruction;
                }
            }else{
                panic!("找不到该函数的scopenode!");
            }
        }else{
            panic!("entry不是函数签名，cfg出错");
        }
    }
    //再遍历一遍entry，对于每个函数做dfs,处理函数体
    for _cfg_entry in cfg_graph.neighbors(start_node){
        let mut dfs = Dfs::new(&*cfg_graph,start_node);
        while let Some(node) = dfs.next(&*cfg_graph) {
        match cfg_graph.node_weight(node){
            Some(CfgNode::Branch { ast_expr_node, text }) =>{

            },
            Some(CfgNode::Switch { ast_expr_node, text }) =>{

            },
            Some(CfgNode::ForLoop { ast_before_node, ast_mid_node, ast_after_node, text })=>{
                
            },
            Some(CfgNode::WhileLoop { ast_expr_node, text })=>{

            },
            Some(CfgNode::BasicBlock { ast_nodes, text, instrs })=>{
                for astnode in ast_nodes{
                    let astnode = *astnode;
                    match(rule_id!(at astnode in ast_tree),astnode){
                        (RULE_declaration,declaration_node)=>{
                            parse_declaration2nhwc(ast_tree, declaration_node, symbol_table, scope_tree,et_tree,ast2scope)            
                        },
                        (RULE_statement,statement_node)=>{

                        },
                        (_,_)=>{
                            panic!("bb中未知RULE，不是expr或stmt");
                        }
                    }
                }
            },
            Some(_) =>{},
            None => {},
        }
    }
    }
}

/// 由于cfg 里面包含了其他的一些块和边，例如 branch 块和 after conditioned边
/// 因此我们需要再做一次转化，把边转化成相应的跳转或者调整代码，把所有node 都转化成BasicBlock
fn parse_cfg_into_nhwc_cfg(context :&mut Context){
    let (cfg_graph,scope_tree,ast_tree,symbol_table,et_tree,ast2scope)= (&mut context.cfg_graph , &mut context.scope_tree,&mut context.ast_tree,&mut context.symtab,&mut context.et_tree,&context.ast2scope);

    parse_func2nhwc(ast_tree, cfg_graph, scope_tree, et_tree, symbol_table, ast2scope)
}