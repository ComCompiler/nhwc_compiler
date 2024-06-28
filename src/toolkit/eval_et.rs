use std::collections::HashMap;

use super::{et_node::{DeclOrDefOrUse, EtEdge, EtHash, EtNode, EtNodeType, EtTree, ExprOp}, etc::{self, dfs}, field::Value, scope_node::ScopeTree, symtab::SymTab};
use crate::{add_edge, add_node_with_edge, debug_info_blue, debug_info_green, debug_info_red, direct_child_node, direct_child_nodes, direct_parent_node, node, node_mut, toolkit::{dot::Config, et_node::EtEdgeType, etc::{dfs_with_predicate, generate_png_by_graph, generate_png_by_graph_multi_tasks}, scope_node::ST_ROOT, symtab::SymIdx}};
use anyhow::Result;
use anyhow::anyhow;
use itertools::Itertools;
use petgraph::graph::{NodeIndex};
use syn::ExprAssignOp;
///
/// pattern 
/// 1. const_expr => const
/// 2. 1*a => a
/// 3. a/1 => a
/// 4. 0+a => a
/// 5. a-0 => -a
macro_rules! direct_et_parent_node {
    (at $et_node:ident in $et_tree:ident) => {
        direct_parent_node!(at $et_node in $et_tree with_predicate {|e|!e.weight().et_edge_type.is_deleted()})       
    };
}
macro_rules! direct_et_child_nodes {
    (at $et_node:ident in $et_tree:ident $(with_priority $f:block)?) => {
        direct_child_nodes!(at $et_node in $et_tree with_predicate {|e|!e.weight().et_edge_type.is_deleted()} ) 
    };
}
fn eval_et(et_tree:&mut EtTree, et_node:u32) -> Option<SymIdx> {
    // let mut value = SymIdx::new(0, 0.to_string());
    // println!("输入的operator_et_node: {:?}", node!(at any_et_node in et_tree).clone().et_naked_node);
    // 每个节点分两种情况,constant 或者 operator
    debug_info_green!("eval et {}",et_node);
    et_tree.update_hash(et_node);
    let value_symidx = match node!(at et_node in et_tree).clone().et_node_type {
        // let value = match node!(at Operator_node in et_tree){
        EtNodeType::Literal { literal_symidx: const_sym_idx, ast_node: _, text: _ } => Some(const_sym_idx),

        EtNodeType::Operator { ast_node: _, text: _, op, op_symidx } => {
            let et_nodes = direct_et_child_nodes!(at et_node in et_tree); //里面的u32是节点编号
            let et_parent_node = direct_et_parent_node!(at et_node in et_tree);
            // whether return None
            let mut ret_flag = false;
            let mut et_ret_symidx_vec = vec![];
            for &et_child_node in &et_nodes{
                if node!(at et_child_node in et_tree).common_eliminated{
                    continue;
                }
                match &node!(at et_child_node in et_tree).et_node_type {
                    EtNodeType::Operator { op, ast_node, text, op_symidx } => {
                        let op_symidx = eval_et(et_tree, et_child_node);
                        match op_symidx{
                            Some(const_symidx) => {
                                let et_node_added_struct = EtNodeType::new_literal(0, const_symidx.clone()).into();
                                let et_node_edge_to_remove = et_tree.find_edge(NodeIndex::new(et_node as usize), NodeIndex::new(et_child_node as usize)).unwrap();
                                et_tree.remove_edge(et_node_edge_to_remove);
                                let et_node_added = add_node_with_edge!({et_node_added_struct} with_edge {EtEdgeType::Direct.into()} from et_node in et_tree);
                                add_edge!({EtEdgeType::Deleted.into()} from et_node_added to et_child_node in et_tree);
                                // add_edge!(from et_no)
                                et_ret_symidx_vec.push(const_symidx);
                            },
                            None => {
                                et_ret_symidx_vec.push(SymIdx::from_str("unidentified"));
                                ret_flag = true;
                            },
                        }
                    }
                    EtNodeType::Symbol { sym_idx, ast_node, text, decldef_def_or_use } => {
                        et_ret_symidx_vec.push(SymIdx::from_str("unidentified"));
                        ret_flag = true;
                    }
                    EtNodeType::Literal { literal_symidx: const_sym_idx, ast_node, text } => {
                        et_ret_symidx_vec.push(const_sym_idx.clone());

                    },
                    _ => {}
                }
            }
            node_mut!(at et_node in et_tree).et_ret_symidx_vec = Some(et_ret_symidx_vec.clone());
            if ret_flag{
                None
            }else {
                match op.eval(&et_ret_symidx_vec){
                    Ok(val) => {
                        Some(val.to_symidx().unwrap())
                    },
                    Err(e) => {
                        debug_info_red!("{}",e);
                        None
                    },
                }
            }
        },
        EtNodeType::Separator { ast_node: _, text: _ } => {
            let mut nodes = direct_et_child_nodes!(at et_node in et_tree );
            nodes.sort_by_key(|&x| match &node!(at x in et_tree ).et_node_type{
                EtNodeType::Operator { op, ast_node, text, op_symidx } => { 0 },
                EtNodeType::Literal { literal_symidx, ast_node, text } => { 9 },
                EtNodeType::Symbol { sym_idx, ast_node, text, decldef_def_or_use } => { 9 },
                EtNodeType::Separator { ast_node, text } => 9,
            });
            for et_node in nodes{
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
fn match_x_mul_1(et_nodes:&Vec<u32>,et_node:u32,et_tree:&mut EtTree)->bool{
    let et_symidx_vec = get_symidx_vec(et_node, et_tree);
    let (l,r) = if let (Some(l),Some(r)) = (&et_symidx_vec[0],&et_symidx_vec[1]){ (l,r) }else { return false };
    // ensure r is 1
    let (sym_node,unit_node) = match (l,r){
        (l,r)if r.symbol_name=="1" => {
            (et_nodes[0],et_nodes[1])
        }
        (l,r)if l.symbol_name=="1" => {
            (et_nodes[1],et_nodes[0])
        }
        _ => return false
    };
    let et_parent_node = direct_et_parent_node!(at et_node in et_tree );
    // delete parent to cur et_node
    let et_node_edge_parent2cur = et_tree.find_edge(NodeIndex::new(et_parent_node as usize), NodeIndex::new(et_node as usize)).unwrap();
    et_tree.edge_weight_mut(et_node_edge_parent2cur).unwrap().et_edge_type = EtEdgeType::Deleted;
    add_edge!({EtEdgeType::Direct.into()} from et_parent_node to sym_node in et_tree);
    true
}
fn match_x_mul_0(et_nodes:&Vec<u32>,et_node:u32,et_tree:&mut EtTree) -> bool{
    let et_ret_symidx_vec = node!(at et_node in et_tree).et_ret_symidx_vec.as_ref().unwrap();
    let mut check= false;
    for symidx in et_ret_symidx_vec{
        if symidx.symbol_name == "0"{
            check = true;
        }
    }
    if check{
        let (l,r) = (&et_ret_symidx_vec[0],&et_ret_symidx_vec[1]);
        // ensure r is 0
        let (sym_node,zero_node) = match (l,r){
            (l,r)if r.symbol_name=="0" => {
                (et_nodes[0],et_nodes[1])
            }
            (l,r)if l.symbol_name=="0" => {
                (et_nodes[1],et_nodes[0])
            }
            _ => return false
        };
        let et_parent_node = direct_et_parent_node!(at et_node in et_tree );
        // delete parent to cur et_node
        let et_node_edge_parent2cur = et_tree.find_edge(NodeIndex::new(et_parent_node as usize), NodeIndex::new(et_node as usize)).unwrap();
        et_tree.edge_weight_mut(et_node_edge_parent2cur).unwrap().et_edge_type = EtEdgeType::Deleted;
        add_edge!({EtEdgeType::Direct.into()} from et_node to zero_node in et_tree);
        true
    }else {
        false
    }
}
fn match_x_add_x(et_nodes:&Vec<u32>,et_node:u32,et_tree:&mut EtTree)->bool{
    if node!(at et_node in et_tree).common_eliminated{return false}
    let et_symidx_vec = get_symidx_vec(et_node, et_tree);
    let (&l_node,&r_node) = (&et_nodes[0],&et_nodes[1]);
    if let (Some(l),Some(r)) = (&et_symidx_vec[0],&et_symidx_vec[1]) { 
    } else { 
        if l_node!= r_node{
            return false;
        }
    };

    if hash_equal(l_node, r_node, et_tree){
        let added_node_struct = EtNodeType::new_literal(0, SymIdx::from_str("2")).into();
        add_node_with_edge!({added_node_struct} with_edge {EtEdgeType::Direct.into()} from et_node in et_tree);
        let et_parent_node = direct_et_parent_node!(at et_node in et_tree );
        // delete parent to cur et_node
        let et_node_mul2x = et_tree.find_edge(NodeIndex::new(et_node as usize), NodeIndex::new(l_node as usize)).unwrap();
        et_tree.edge_weight_mut(et_node_mul2x).unwrap().et_edge_type = EtEdgeType::Deleted;
        // let et_node_mul2x = et_tree.find_edge(NodeIndex::new(et_node as usize), NodeIndex::new(r_node as usize)).unwrap();
        // et_tree.edge_weight_mut(et_node_mul2x).unwrap().et_edge_type = EtEdgeType::Deleted;
        *node_mut!(at et_node in et_tree) = EtNodeType::new_op_mul(0).into();
        // add_edge!({EtEdgeType::Direct.into()} from et_node to l_node in et_tree);
        true
    }else {
        false
    }

}
fn hash_equal(node1:u32,node2:u32,et_tree:&EtTree) -> bool{
    let rst = node!(at node1 in et_tree).hash.is_some() &&node!(at node2 in et_tree).hash.is_some() &&
            node!(at node1 in et_tree).hash == node!(at node2 in et_tree).hash;
    debug_info_blue!("hash equal between {} and {} is {}",node1,node2,rst);
    rst
}
fn match_x_add_x_mul_const(et_node:u32,et_tree:&mut EtTree) -> Result<bool>{
    let et_symidx_vec = get_symidx_vec(et_node, et_tree);
    let et_nodes = direct_et_child_nodes!(at et_node in et_tree);
    if node!(at et_node in et_tree).common_eliminated{
        debug_info_blue!("common eliminated so ignored at {et_node}");
        return Ok(false)
    }
    debug_info_blue!("try match_x_add_x_mul_const {:?} at {}",et_symidx_vec,et_node);
    assert!(et_symidx_vec.len()==2);
    let (l,r) = (&et_symidx_vec[0],&et_symidx_vec[1]);
    let (l_node,r_node) = (et_nodes[0],et_nodes[1]);
    let (l_et_ty,r_et_ty) = (&node!(at l_node in et_tree).et_node_type, &node!(at r_node in et_tree).et_node_type);
    let (sym_node1,mul_op_node) = match (l,r){
        (l,r)if matches!(r_et_ty,EtNodeType::Operator { op:ExprOp::Mul, ast_node, text, op_symidx }) => {
            (l_node,r_node)
        }
        (l,r)if matches!(l_et_ty,EtNodeType::Operator { op:ExprOp::Mul, ast_node, text, op_symidx }) => {
            (r_node,l_node)
        }
        _ => {
            debug_info_blue!("match failed because have no mul");
            return Ok(false)}
    };
    assert!(et_symidx_vec.len()==2);
    let mul_et_nodes = direct_et_child_nodes!(at mul_op_node in et_tree );
    let et_mul_symidx_vec = get_symidx_vec(mul_op_node, et_tree);

    let (mul_l_node,mul_r_node) = (mul_et_nodes[0],mul_et_nodes[1]);
    let (mul_l_et_ty,mul_r_et_ty) = (&node!(at mul_l_node in et_tree).et_node_type, &node!(at mul_r_node in et_tree).et_node_type);
    let (sym_node2,literal_node,literal_symidx) = match (mul_l_et_ty,mul_r_et_ty){
        (EtNodeType::Operator { op, ast_node, text, op_symidx }, 
            EtNodeType::Literal { literal_symidx, ast_node:_, text:_}) => {
            (mul_l_node,mul_r_node,literal_symidx.clone())
        },
        (EtNodeType::Literal { literal_symidx, ast_node, text }, 
            EtNodeType::Operator { op, ast_node:_, text:_, op_symidx }) => {
            (mul_l_node,mul_r_node,literal_symidx.clone())
        },
        (EtNodeType::Literal { literal_symidx, ast_node, text },
             EtNodeType::Symbol { sym_idx, ast_node:_, text:_, decldef_def_or_use }) => {
            (mul_r_node,mul_l_node,literal_symidx.clone())
        },
        (EtNodeType::Symbol { sym_idx, ast_node, text, decldef_def_or_use }, 
            EtNodeType::Literal { literal_symidx, ast_node:_, text:_ }) => {
            (mul_l_node,mul_r_node,literal_symidx.clone())
        },
        _ => {
            debug_info_blue!("matched failed because find no literal l:{} r:{}",mul_l_node,mul_r_node);
            return Ok(false)}
    };
    if hash_equal(sym_node1, sym_node2, et_tree){
        let et_parent_node = direct_et_parent_node!(at et_node in et_tree );
        /*
                    et_parent_node
                    |
                    add et_node
                    /     \
                x         mul  mul_op_node
                        /       \
                        x sym_node   literal literal_node
                1. delete et_parent to add_et_node
                2. add_edge from et_parent_ndoe 2 et_mul_node
                3. replace literal with literal+1
            */
        let et_node_edge_parent2cur = et_tree.find_edge(NodeIndex::new(et_parent_node as usize), NodeIndex::new(et_node as usize)).unwrap();
        et_tree.edge_weight_mut(et_node_edge_parent2cur).unwrap().et_edge_type = EtEdgeType::Deleted;
        add_edge!({EtEdgeType::Direct.into()} from et_parent_node to  mul_op_node in et_tree);
        let literal_plus_1 = (Value::from_symidx(&literal_symidx)? +Value::new_i32(1))?.to_symidx()?;
        debug_info_red!("{:?} at et_node {}",literal_plus_1,literal_node);
        node_mut!(at literal_node in et_tree).replace_symidx(literal_plus_1)?;
        node_mut!(at et_node in et_tree).common_eliminated = true;
        Ok(true)
    }else{
        Ok(false)
    }
}
fn get_symidx_vec(et_node:u32,et_tree:&EtTree) -> Vec<Option<SymIdx>>{
    let et_nodes = direct_et_child_nodes!(at et_node in et_tree);
    let mut symdix_vec = vec![];
    for et_node in et_nodes{
        match &node!(at et_node in et_tree).et_node_type{
            EtNodeType::Literal { literal_symidx, ast_node, text } => symdix_vec.push(Some(literal_symidx.clone())),
            EtNodeType::Symbol { sym_idx, ast_node, text, decldef_def_or_use } =>{
                symdix_vec.push(Some(sym_idx.clone()))
            },
            _ => {
                symdix_vec.push(None)
            }
        };
    }
    symdix_vec
}
fn match_x_add_0(et_nodes:&Vec<u32>,et_node:u32,et_tree:&mut EtTree) -> bool{
    let et_symidx_vec = get_symidx_vec(et_node, et_tree);
    let (l,r) = if let (Some(l),Some(r)) = (&et_symidx_vec[0],&et_symidx_vec[1]){ (l,r) }else { return false };
    // ensure r is 0
    let (sym_node,zero_node) = match (l,r){
        (l,r)if r.symbol_name=="0" => {
            (et_nodes[0],et_nodes[1])
        }
        (l,r)if l.symbol_name =="0" => {
            (et_nodes[1],et_nodes[0])
        }
        _ => return false
    };
    let et_parent_node = direct_et_parent_node!(at et_node in et_tree);
    // delete parent to cur et_node
    let et_node_edge_parent2cur = et_tree.find_edge(NodeIndex::new(et_parent_node as usize), NodeIndex::new(et_node as usize)).unwrap();
    et_tree.edge_weight_mut(et_node_edge_parent2cur).unwrap().et_edge_type = EtEdgeType::Deleted;
    let et_node_edge_addop2sym = et_tree.find_edge(NodeIndex::new(et_node as usize), NodeIndex::new(sym_node as usize)).unwrap();
    et_tree.edge_weight_mut(et_node_edge_addop2sym).unwrap().et_edge_type = EtEdgeType::Deleted;
    add_edge!({EtEdgeType::Direct.into()} from et_parent_node to sym_node in et_tree);
    true
}
fn match_x_sub_0(et_nodes:&Vec<u32>,et_node:u32,et_tree:&mut EtTree)->bool{
    let et_symidx_vec = get_symidx_vec(et_node, et_tree);
    let (l,r) = if let (Some(l),Some(r)) = (&et_symidx_vec[0],&et_symidx_vec[1]){ (l,r) }else { return false };

    // ensure r is 0
    let (sym_node,zero_node) = match (l,r){
        (l,r)if r.symbol_name=="0" => {
            (et_nodes[0],et_nodes[1])
        }
        _ => return false
    };
    let et_parent_node = direct_et_parent_node!(at et_node in et_tree );
    // delete parent to cur et_node
    let et_node_edge_parent2cur = et_tree.find_edge(NodeIndex::new(et_parent_node as usize), NodeIndex::new(et_node as usize)).unwrap();
    et_tree.edge_weight_mut(et_node_edge_parent2cur).unwrap().et_edge_type = EtEdgeType::Deleted;
    add_edge!({EtEdgeType::Direct.into()} from et_node to sym_node in et_tree);
    true
}
fn match_x_div_1(et_node:u32,et_tree:&mut EtTree) -> bool{
    let et_nodes = direct_et_child_nodes!(at et_node in et_tree);
    let et_symidx_vec = get_symidx_vec(et_node, et_tree);
    if node!(at et_node in et_tree).common_eliminated{return false}
    debug_info_blue!("match_x_div_1 at {} with_et_nodes {:?}",et_node,et_nodes);
    let (l,r) = if let (Some(l),Some(r)) = (&et_symidx_vec[0],&et_symidx_vec[1]){ (l,r) }else { return false };
    // ensure r is 1
    let (sym_node,unit_node) = match (l,r){
        (l,r)if r.symbol_name=="1" => {
            (et_nodes[0],et_nodes[1])
        }
        _ => return false
    };
    let et_parent_node = direct_et_parent_node!(at et_node in et_tree );
    // delete parent to cur et_node
    let et_node_edge_parent2cur = et_tree.find_edge(NodeIndex::new(et_parent_node as usize), NodeIndex::new(et_node as usize)).unwrap();
    add_edge!({EtEdgeType::Direct.into()} from et_parent_node to sym_node in et_tree);
    et_tree.edge_weight_mut(et_node_edge_parent2cur).unwrap().et_edge_type = EtEdgeType::Deleted;
    true
}
/// replace all the const symbol with its cont value in symtab
fn recursive_replace_const_symbol(et_tree:&mut EtTree,et_node:u32,symtab:&SymTab,mut scope_node:u32, scope_tree:&ScopeTree) -> Result<()>{
    let dfs_et_nodes = dfs(et_tree, et_node);
    debug_info_red!("dfs_et_nodes successfully");
    for et_node in dfs_et_nodes{
        // debug_info_green!("visit {}",et_node);
        match &node_mut!(at et_node in et_tree).et_node_type{
            EtNodeType::Symbol { sym_idx: init_sym_idx, ast_node, text, decldef_def_or_use } => {
                // debug_info_blue!("cur scope {}",scope_node);
                if let DeclOrDefOrUse::Use {} = decldef_def_or_use{
                    let initial_scope = scope_node.clone();

                    let mut symidx =  init_sym_idx.clone();
                    while let Err(_) = symtab.get(&symidx) {
                        let scope_node = symidx.scope_node;
                        if scope_node != ST_ROOT{
                            symidx.scope_node = direct_parent_node!(at scope_node in scope_tree );
                        }else{
                            return Err(anyhow!("scope为{}符号表中未找到{:?}", initial_scope, init_sym_idx.symbol_name.clone()));
                        }
                    }
                    // debug_info_green!("replace symidx {}",sym_idx);
                    // if the symidx have its corresponding const symidx
                    if !symtab.get(&symidx)?.get_type()?.is_array() && symtab.get(&symidx)?.has_const_symidx() {
                        let const_symidx = symtab.get(&symidx)?.get_const_symidx()?.clone();
                        node_mut!(at et_node in et_tree).et_node_type = EtNodeType::new_literal(*ast_node, const_symidx)
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
pub fn compress_et(et_tree:&mut EtTree, et_sep_node:u32, symtab:&SymTab, scope_node:u32, scope_tree:&ScopeTree) -> Result<()> {
    debug_info_red!("exec compress_et on {}",et_sep_node);
    recursive_replace_const_symbol(et_tree, et_sep_node, symtab, scope_node, scope_tree)?;
    eval_et(et_tree, et_sep_node);
    let dfs_nodes = dfs_with_predicate(&et_tree, et_sep_node, |e|!e.weight().et_edge_type.is_deleted());
    for et_node in direct_et_child_nodes!(at et_sep_node in et_tree ){
        debug_info_blue!("hash expr eliminate on {}",et_node);
        hash_expr_elimination(et_node, et_tree);
    }
    for et_node in dfs_nodes{
        reducation(et_node, et_tree);
    }
    // eval_et(et_tree, et_node);
    Ok(())
}

/// given a et_node make this tree into a dag
pub fn hash_expr_elimination(et_node:u32,et_tree:&mut EtTree){
    let mut map = HashMap::new();
    // map hash into et_node
    _common_expr_elimination_by_hash(et_node, et_tree, &mut map);
}
pub fn _common_expr_elimination_by_hash(et_node:u32,et_tree:&mut EtTree, map:&mut HashMap<isize,u32>){
    // map hash into et_node
    // debug_info_blue!("et_ndoe:::::: {}",et_node);
    et_tree.update_hash(et_node);
    let parent_et_node = direct_et_parent_node!(at et_node in et_tree );
    let &hash = node!(at et_node in et_tree).hash.as_ref().unwrap();
    if let Some(&found_et_node) = map.get(&hash){
        if can_eliminate_et_node(et_node, et_tree){
            // edge between parent and child
            let et_edge = et_tree.find_edge(NodeIndex::new(parent_et_node as usize), NodeIndex::new(et_node as usize)).unwrap();
            *et_tree.edge_weight_mut(et_edge).unwrap() = EtEdgeType::Deleted.into();
            add_edge!({EtEdgeType::Direct.into()} from parent_et_node to found_et_node in et_tree);
        }
    }else {
        if can_eliminate_et_node(et_node, et_tree){
            map.insert(hash, et_node);
            // debug_info_blue!("after insert map {:?}",map);
        }
    }
    for child_node in direct_et_child_nodes!(at et_node in et_tree ){
        _common_expr_elimination_by_hash(child_node, et_tree, map)
    }
}
pub fn can_eliminate_et_node(et_node:u32, et_tree:&EtTree) -> bool{
    let parent_node =direct_et_parent_node!(at et_node in et_tree );
    match (&node!(at et_node in et_tree).et_node_type,&node!(at parent_node in et_tree).et_node_type){
        // (EtNodeType::Operator { op: op1, ast_node: ast_node1, text:_, op_symidx:_ } ,
        (_ ,
        EtNodeType::Operator { op: op_parent, ast_node: ast_node2, text:_, op_symidx:_ } ) if op_parent.is_array_index() => {
            debug_info_blue!("et_ndoe_can_eliminate false {}",et_node);
            false
        }
        (_,EtNodeType::Operator { op, ast_node, text, op_symidx } ) if op.is_call() => {
            debug_info_blue!("et_ndoe_can_eliminate false {}",et_node);
            false
        }
        _=> {
            debug_info_blue!("et_ndoe_can_eliminate true {}",et_node);
            true}
    }
}
pub fn reducation(et_node:u32,et_tree:&mut EtTree){
    if node!(at et_node in et_tree).common_eliminated{return}
    let et_parent_node = direct_parent_node!(at et_node in et_tree with_predicate {|e|!e.weight().et_edge_type.is_deleted()} ret_option);
    debug_info_blue!("reducation et_node {}",et_node);
    let et_parent_node = if et_parent_node.is_none(){return}else {et_parent_node.unwrap()};
    let et_nodes = direct_et_child_nodes!(at et_node in et_tree); //里面的u32是节点编号
    // generate_png_by_graph(et_tree,"et_tree".to_string(),&[Config::NodeIndexLabel,Config::Record]);
    match &node!(at et_node in et_tree).et_node_type{
        EtNodeType::Operator { op, ast_node, text, op_symidx } => {
            debug_info_blue!("access {}",et_node);
            match op{
                ExprOp::Mul => {
                    if match_x_mul_1(&et_nodes, et_node, et_tree){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_mul_1_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation( et_parent_node,et_tree);
                    }
                    if match_x_mul_0(&et_nodes, et_node, et_tree){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_mul_0_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation( et_parent_node,et_tree);
                    };
                },
                ExprOp::Add => {
                    if match_x_add_0( &et_nodes, et_node, et_tree){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_and_0_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation( et_parent_node,et_tree);
                    }
                    if match_x_add_x(&et_nodes, et_node, et_tree){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_and_x_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation( et_parent_node,et_tree);
                    };
                    if match_x_add_x_mul_const( et_node, et_tree).unwrap(){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_add_x_mul_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation( et_parent_node,et_tree);
                    };
                },
                ExprOp::Sub => {
                    if match_x_sub_0( &et_nodes, et_node, et_tree){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_sub_0_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation(et_parent_node,et_tree);
                    }
                },
                ExprOp::Div => {
                    if match_x_div_1(et_node, et_tree){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_div_0_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation(et_parent_node,et_tree);
                    }
                },
                _ => { }
            }
        },
        EtNodeType::Literal { literal_symidx, ast_node, text } => {},
        EtNodeType::Symbol { sym_idx, ast_node, text, decldef_def_or_use } => {},
        EtNodeType::Separator { ast_node, text } => {},
    }
}
impl ExprOp{
    pub fn eval(&self, vec:&Vec<SymIdx>) -> Result<Value>{
        Ok(match self{
            ExprOp::Mul => (Value::from_symidx( &vec[0])?*Value::from_symidx( &vec[1])?)?,
            ExprOp::Add => (Value::from_symidx( &vec[0])?+Value::from_symidx( &vec[1])?)?,
            ExprOp::Sub => (Value::from_symidx( &vec[0])?-Value::from_symidx( &vec[1])?)?,
            ExprOp::Div => (Value::from_symidx( &vec[0])?/Value::from_symidx( &vec[1])?)?,
            ExprOp::LogicalOr => (Value::from_symidx( &vec[0])?.logical_or(&Value::from_symidx( &vec[1])?))?,
            ExprOp::LogicalAnd => (Value::from_symidx( &vec[0])?.logical_and(&Value::from_symidx( &vec[1])?))?,
            ExprOp::LogicalNot => (!Value::from_symidx( &vec[0])?)?, 
            ExprOp::BitwiseOr => (Value::from_symidx( &vec[0])?|Value::from_symidx( &vec[1])?)?,
            ExprOp::BitwiseAnd => (Value::from_symidx( &vec[0])?&Value::from_symidx( &vec[1])?)?,
            // ExprOp::BitwiseXor => (Value::from_symidx( &vec[0])?^Value::from_symidx( &vec[1])?)?,
            ExprOp::BitwiseNot => (!Value::from_symidx( &vec[0])?)?, //一元运算符
            ExprOp::Eq => (Value::from_symidx(&vec[0])?.logical_or(&Value::from_symidx( &vec[1])?))?,
            ExprOp::NEq => (Value::from_symidx( &vec[0])?.logical_neq(&Value::from_symidx( &vec[1])?))?,
            ExprOp::Less => (Value::from_symidx( &vec[0])?.less_than(&Value::from_symidx( &vec[1])?))?,
            ExprOp::Greater => (Value::from_symidx( &vec[0])?.greater_than(&Value::from_symidx( &vec[1])?))?,
            ExprOp::LEq => (Value::from_symidx( &vec[0])?.less_than_or_equal(&Value::from_symidx( &vec[1])?))?,
            ExprOp::GEq => (Value::from_symidx( &vec[0])?.greater_than_or_equal(&Value::from_symidx( &vec[1])?))?,
            // ExprOp::LShift => (Value::from_symidx( &vec[0])?<<Value::from_symidx( &vec[1])?)?,
            // ExprOp::RShift => (Value::from_symidx( &vec[0])?>>Value::from_symidx( &vec[1])?)?,
            ExprOp::Mod => (Value::from_symidx( &vec[0])?%Value::from_symidx( &vec[1])?)?,
            ExprOp::Negative => (-Value::from_symidx( &vec[0])?)?,
            ExprOp::Positive => Value::from_symidx( &vec[0])?,
            _ => {Err(anyhow!(format!("unsupported operator {:?} for {:?}",self,vec)))?},
        })
    }
}
