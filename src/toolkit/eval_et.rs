use super::{et_node::{DeclOrDefOrUse, EtNodeType, EtTree}, etc::{self, dfs}, scope_node::ScopeTree, symtab::SymTab};
use crate::{add_node_with_edge, debug_info_blue, debug_info_green, debug_info_red, direct_child_node, direct_child_nodes, direct_parent_node, node, node_mut, toolkit::{scope_node::ST_ROOT, symtab::SymIdx}};
use anyhow::Result;
use anyhow::anyhow;
use itertools::Itertools;
use petgraph::graph::{NodeIndex};

fn eval_et(et_tree:&mut EtTree, et_node:u32) -> Option<SymIdx> {
    // let mut value = SymIdx::new(0, 0.to_string());
    // println!("输入的operator_et_node: {:?}", node!(at any_et_node in et_tree).clone().et_naked_node);
    // 每个节点分两种情况,constant 或者 operator
    // debug_info_green!("eval et {}",et_node);
    let value_symidx = match node!(at et_node in et_tree).clone().et_node_type {
        // let value = match node!(at Operator_node in et_tree){
        EtNodeType::Constant { const_sym_idx, ast_node: _, text: _ } => Some(const_sym_idx),

        EtNodeType::Operator { ast_node: _, text: _, op } => {
            let et_nodes = direct_child_nodes!(at et_node in et_tree); //里面的u32是节点编号
            let mut et_node_op_sym_idx_tuple= Vec::new();
            for et_node in et_nodes {
                et_node_op_sym_idx_tuple.push((et_node,eval_et(et_tree, et_node)));
            }
            let mut ret_flag = false;
            for (et_child_node,op_symidx) in et_node_op_sym_idx_tuple.iter(){
                let et_child_node = *et_child_node;
                match op_symidx{
                    Some(const_symidx) => {
                        let et_node_added = EtNodeType::new_constant(0, const_symidx.clone()).as_et_node();
                        let et_node_edge_removed = et_tree.find_edge(NodeIndex::new(et_node as usize), NodeIndex::new(et_child_node as usize)).unwrap();
                        et_tree.remove_edge(et_node_edge_removed);
                        add_node_with_edge!(et_node_added from et_node in et_tree);
                    },
                    None => {
                        ret_flag = true;

                    },
                }
            }
            if ret_flag{
                None
            }else {
                let sub_nodes_sym_idx = et_node_op_sym_idx_tuple.into_iter().map(|(a,x)|x.unwrap()).collect_vec();
                match op.eval_sub_et_nodes(et_tree, &sub_nodes_sym_idx){
                    Ok(symidx) => {
                        Some(symidx)
                    },
                    Err(e) => {
                        // debug_info_red!("{}",e);
                        None
                    },
                }
            }
        },
        EtNodeType::Separator { ast_node: _, text: _ } => {
            for et_node in direct_child_nodes!(at et_node in et_tree){
                eval_et(et_tree, et_node);
            }
            None
        }
        EtNodeType::Symbol { sym_idx, ast_node, text, decldef_def_or_use } => {
            None
        },
        // _ => Err(anyhow!("错误的 EtNode 类型 ! 不是 Constant , Operator, Separator 中的一个")),
    };
    // println!(" 本函数调用后,返回{:?}", value_symidx);
     value_symidx
}
/// replace all the const symbol with its cont value in symtab
fn recursive_replace_const_symbol(et_tree:&mut EtTree,et_node:u32,symtab:&SymTab,mut scope_node:u32, scope_tree:&ScopeTree) -> Result<()>{
    let dfs_et_nodes = dfs(et_tree, et_node);
    for et_node in dfs_et_nodes{
        // debug_info_green!("visit {}",et_node);
        match &node_mut!(at et_node in et_tree).et_node_type{
            EtNodeType::Symbol { sym_idx: init_sym_idx, ast_node, text, decldef_def_or_use } => {
                // debug_info_blue!("cur scope {}",scope_node);
                if let DeclOrDefOrUse::Use {} = decldef_def_or_use{
                    let initial_scope = scope_node.clone();

                    let mut symidx =  init_sym_idx.clone();
                    while let Err(_) = symtab.get_symbol(&symidx) {
                        let scope_node = symidx.scope_node;
                        if scope_node != ST_ROOT{
                            symidx.scope_node = direct_parent_node!(at scope_node in scope_tree);
                        }else{
                            return Err(anyhow!("scope为{}符号表中未找到{:?}", initial_scope, init_sym_idx.symbol_name.clone()));
                        }
                    }
                    // debug_info_green!("replace symidx {}",sym_idx);
                    // if the symidx have its corresponding const symidx
                    if !symtab.get_symbol(&symidx)?.get_type()?.is_array() && symtab.get_symbol(&symidx)?.has_const_symidx() {
                        let const_symidx = symtab.get_symbol(&symidx)?.get_const_symidx()?.clone();
                        node_mut!(at et_node in et_tree).et_node_type = EtNodeType::new_constant(*ast_node, const_symidx)
                    }
                }
            },
            _ => {}
        }
    }
    Ok(())
}

/// 本函数用于把et_tree中的常量表达式计算出并替换掉
/// 注意: 替换后,et_tree中的et_node的et_naked_node字段会被替换掉
pub fn compress_et(et_tree:&mut EtTree, et_node:u32, symtab:&SymTab, scope_node:u32, scope_tree:&ScopeTree) -> Result<()> {
    recursive_replace_const_symbol(et_tree, et_node, symtab, scope_node, scope_tree)?;
    eval_et(et_tree, et_node);
    Ok(())
}
