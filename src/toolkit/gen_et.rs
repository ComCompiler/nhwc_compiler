use std::thread::scope;

use clap::ValueEnum;
use petgraph::{Directed, Graph};
use petgraph::stable_graph::NodeIndex;

use crate::antlr_parser::cparser::{RULE_assignmentExpression, RULE_expression};
use crate::{add_edge, add_node, find, find_nodes, node};

use super::symbol_table::SymbolIndex;
use super::{ast_node::AstTree, scope_node::{self, ScopeTree}, symbol_table::{self, Symbol, SymbolTable}};

pub type EtTree = Graph<EtNode,(),Directed,u32>;
enum Def_Or_Use{
    Def, Use
}
enum EtNode{
    // et 树的terminal 要么是一个 Constant ，要么是一个 SymbolIndex 
    // 而 et 树的 non-terminal node 要么是 root 要么是一个 op 
    Operator{op: ExprOp },
    // 在这里 constant 也是一个 Symbol ，到时候在 SymbolField 里面加上 Constant 标记 就可以了
    Constant{const_sym:Symbol },
    Symbol{sym:Symbol},
    // 考虑到 可能出现  a=3,b=2; 这样的语句，因此需要规定一个Separator
    Separator, 
}
enum ExprOp{
    Mul,
    Add,
    Sub,
    Div,
    Assign,
}

impl EtNode{
    pub fn new_op_add()->Self{
        EtNode::Operator { op:ExprOp::Add}
    }
    pub fn new_op_sub()->Self{
        EtNode::Operator { op:ExprOp::Sub}
    }
    pub fn new_op_div()->Self{
        EtNode::Operator { op:ExprOp::Div}
    }
    pub fn new_op_assign()->Self{
        EtNode::Operator { op:ExprOp::Assign}
    }
    pub fn new_op_sep()->Self{
        EtNode::Separator
    }
    //你必须确保这个symbol 是一个 constant
    pub fn new_constant(const_symbol : Symbol)->Self{
        EtNode::Constant { const_sym: const_symbol }
    }
    pub fn new_symbol(symbol : Symbol)->Self{
        EtNode::Constant { const_sym: symbol }
    }
}

// 这个文件中的函数都返回子树的 根节点

fn process_expr_stmt(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, expr_stmt_node:u32, scope_node:u32,root_et_node:u32 ){
    let op_expr_node = find!(rule RULE_expression at expr_stmt_node in ast_tree);
    match op_expr_node{
        Some(expr_node) => {
            let expr_node = process_expr(et_tree,ast_tree,scope_tree,expr_node,scope_node,root_et_node);
        },
        None => {
            // 这里什么也不用做，因为这个 epxr_stmt 里面没有 expression
        },
    }

}
fn process_expr(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, expr_node:u32, scope_node:u32,parent_et_node:u32 )-> u32{
    // expr 节点下面 至少有一个 assignment expression 
    let assign_expr_nodes:Vec<u32> =  find_nodes!(rule RULE_assignmentExpression at expr_node in ast_tree);
    for &assign_expr_node in assign_expr_nodes.iter(){
        // process_assign_expr(et_tree,ast_tree,scope_tree,assign_expr_node,scope_node,)
    }
    todo!()
}
fn process_assign_expr(et_tree:&mut EtTree ,ast_tree: &mut AstTree, scope_tree:&ScopeTree, assign_expr_node:u32, scope_node:u32,parent_et_node:u32 )-> u32{
    todo!()
}
fn process_cond_expr()-> u32{
    todo!()

}
fn process_logical_or_expr()-> u32{
    todo!()

}
fn process_logical_and_expr()-> u32{
    todo!()

}
fn process_inclusive_or_expr()-> u32{
    todo!()

}
fn process_exclusive_or_expr()-> u32{
    todo!()

}
fn process_and_expr()-> u32{
    todo!()

}
fn process_equality_expr()-> u32{
    todo!()

}
fn process_relational_expr()-> u32{
    todo!()

}
fn process_shift_expr()-> u32{
    todo!()

}
fn process_additive_expr()-> u32{
    todo!()

}
fn process_multiplicative_expr()-> u32{
    todo!()

}
fn process_cast_expr()-> u32{
    todo!()

}
fn process_unary_expr()-> u32{
    todo!()

}
fn process_postfix_expr()-> u32{
    todo!()

}
fn process_primary_expr()-> u32{
    todo!()
}

/// 会把表达式中的符号添加到 symtab 中
/// ? 这个过程并不需要符号表，因为符号表是用来检查 def use 是否合法的，比如变量在 定义前被使用了就是非法
fn process_ident(et_tree:&mut EtTree , ast_tree: &mut AstTree,scope_tree:&ScopeTree,ident_node:u32,scope_node:u32,parent_et_node:u32 ,def_or_use:Def_Or_Use) -> u32{
    let sym_name = node!(at ident_node in ast_tree).text.clone();
    // let sym_idx = SymbolIndex::new(scope_node, symbol_name);

    let sym_struct = Symbol::new(scope_node, sym_name);
    // let symbol = symtab.add(symbol_struct);

    let et_node_struct :EtNode = EtNode::new_symbol(sym_struct);
    let et_node = add_node!(et_node_struct to et_tree);
    add_edge!(parent_et_node to et_node in et_tree);
    et_node
}


fn symbol_def_use_order_check(et_tree:&mut EtTree , ast_tree: &mut AstTree,scope_tree:&ScopeTree,ident_node:u32,scope_node:u32,src_ast_node_in_scope_node:u32,l_or_r_val:Def_Or_Use)->u32{
    todo!()
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