use clap::ValueEnum;
use petgraph::{Directed, Graph};
use petgraph::stable_graph::NodeIndex;

use crate::{add_edge, add_node, node};

use super::symbol_table::SymbolIndex;
use super::{ast_node::AstTree, scope_node::{self, ScopeTree}, symbol_table::{self, Symbol, SymbolTable}};

pub type EtTree = Graph<EtNode,(),Directed,u32>;
enum L_or_R_Val{
    LValue, RValue
}
enum EtNode{
    // et 树的terminal 要么是一个 Constant ，要么是一个 SymbolIndex 
    // 而 et 树的 non-terminal node 要么是 root 要么是一个 op 
    Operator{ },
    Constant{ },
    Symbol{}
}
enum ExprOp{
    Mul,
    Add,
    Sub,
    Div,
}

impl EtNode{
    pub fn new()->Self{
        todo!();
    }
}

// 这个文件中的函数都返回子树的 根节点

fn process_expr()-> u32{
    todo!()
}

fn process_primary(){
    todo!();
}
/// 会把表达式中的符号添加到 symtab 中
/// ? 这个过程并不需要符号表，因为符号表是用来检查 def use 是否合法的，比如变量在 定义前被使用了就是非法
fn process_ident(et_tree:&mut EtTree , ast_tree: &mut AstTree,scope_tree:&ScopeTree,ident_node:u32,scope_node:u32,parent_et_node:u32 ,l_or_r_val:L_or_R_Val) -> u32{
    let sym_name = node!(at ident_node in ast_tree).text.clone();
    // let sym_idx = SymbolIndex::new(scope_node, symbol_name);

    let sym_struct = Symbol::new(scope_node, sym_name);
    // let symbol = symtab.add(symbol_struct);

    let et_node_struct :EtNode = EtNode::new();
    let et_node = add_node!(et_node_struct to et_tree);
    add_edge!(parent_et_node to et_node in et_tree);
    et_node
}


fn symbol_def_use_order_check(et_tree:&mut EtTree , ast_tree: &mut AstTree,scope_tree:&ScopeTree,ident_node:u32,scope_node:u32,src_ast_node_in_scope_node:u32,l_or_r_val:L_or_R_Val)->u32{
    // let sym_name = node!(at ident_node in ast_tree).text.clone();
    // // let sym_idx = SymbolIndex::new(scope_node, symbol_name);

    // let sym_struct = Symbol::new(scope_node, sym_name);
    // // let symbol = symtab.add(symbol_struct);

    // match (symtab.get(&sym_struct.sym_idx),l_or_r_val){
    //     (None, L_or_R_Val::LValue) => {
    //         // 这种情况是找到了该符号，也就是说之前定义过此符号，如果定义过此符号

    //     },
    //     (None, L_or_R_Val::RValue) => {
    //         // 如果没有找到这个符号，并且还是个右值，那么就应该直接报错了
    //         panic!("{} 在 {} 没有被定义", sym_struct.sym_idx.symbol_name,);
    //     },
    //     (Some(_), L_or_R_Val::LValue) => ,
    //     (Some(_), L_or_R_Val::RValue) => todo!(),
    // }

    // let et_node_struct :EtNode = EtNode::new();
    // let et_node = add_node!(et_node_struct to et_tree);
    // et_node

}