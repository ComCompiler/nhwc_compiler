use petgraph::{Directed, Graph};
use petgraph::stable_graph::NodeIndex;

use crate::{add_node, node};

use super::{ast_node::AstTree, scope_node::{self, ScopeTree}, symbol_table::{self, Symbol, SymbolTable}};

pub type EtTree = Graph<EtNode,(),Directed,u32>;
struct EtNode{
    // et 树的terminal 要么是一个 常数，要么是一个 SymbolIndex 


}
impl EtNode{
    pub fn new()->Self{
        EtNode{}
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
fn process_ident(et_tree:&mut EtTree , ast_tree: &mut AstTree,scope_tree:&ScopeTree,symtab:&mut SymbolTable,ident_node:u32,scope_node:u32) -> u32{
    let symbol_name = &node!(at ident_node in ast_tree).text;
    let symbol_struct = Symbol::new(scope_node, symbol_name.clone());
    let symbol = symtab.add(symbol_struct);

    let et_node_struct :EtNode = EtNode::new();
    let et_node = add_node!(et_node_struct to et_tree);
    et_node
}