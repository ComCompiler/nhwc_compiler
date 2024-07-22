
use super::{et_node::{DeclOrDefOrUse, EtEdge, EtHash, EtNode, EtNodeType, EtTree, ExprOp}, etc::{self, dfs, rpo}, field::{Type, Value}, scope_node::ScopeTree, symtab::SymTab};
use crate::{add_edge, add_node_with_edge, debug_info_blue, debug_info_green, debug_info_red, direct_child_node, direct_child_nodes, direct_parent_node, node, node_mut, toolkit::{dot::Config, et_node::EtEdgeType, etc::{dfs_with_predicate, generate_png_by_graph, generate_png_by_graph_multi_tasks, rpo_with_predicate}, gen_cfg::AST_ROOT, scope_node::ST_ROOT, symtab::{RcSymIdx, SymIdx, WithBorrow}}};
use ahash::{HashMap, HashMapExt};
use anyhow::Result;
use anyhow::anyhow;
use itertools::Itertools;
use petgraph::{graph::{node_index, NodeIndex}, visit::{EdgeRef, NodeRef}, Direction::Outgoing};
use syn::ExprAssignOp;
///
/// pattern 
/// 1. const_expr => const
/// 2. 1*a => a
/// 3. a/1 => a
/// 4. 0+a => a
/// 5. a-0 => -a
macro_rules! direct_et_parent_node {
    (at $et_node:ident in $et_tree:ident ) => {
        direct_parent_node!(at $et_node in $et_tree with_predicate {|e|!e.weight().et_edge_type.is_deleted()})       
    };
    (at $et_node:ident in $et_tree:ident ret_option) => {
        direct_parent_node!(at $et_node in $et_tree with_predicate {|e|!e.weight().et_edge_type.is_deleted()} ret_option)       
    };
}
macro_rules! direct_et_child_nodes {
    (at $et_node:ident in $et_tree:ident $(with_priority $f:block)?) => {
        direct_child_nodes!(at $et_node in $et_tree with_predicate {|e|!e.weight().et_edge_type.is_deleted()} ) 
    };
}
fn eval_et(et_tree:&mut EtTree, et_node:u32) {
    // let mut value = SymIdx::new(0, 0.to_string());
    // println!("输入的operator_et_node: {:?}", node!(at any_et_node in et_tree).clone().et_naked_node);
    // 每个节点分两种情况,constant 或者 operator
    debug_info_green!("eval et {} {:?}",et_node, node!(at et_node in et_tree));
    // println!(" 本函数调用后,返回{:?}", value_symidx);
    let rpo_et_nodes = rpo(et_tree, et_node);
    for et_node in rpo_et_nodes{
        if !node!(at et_node in et_tree).gvn_evaluated{
            _eval_et(et_tree, et_node);
            node_mut!(at et_node in et_tree).gvn_evaluated = false;
        }
    }
}
fn _eval_et(et_tree:&mut EtTree, et_node:u32) {
    match node!(at et_node in et_tree).et_node_type.clone() {
        // let value = match node!(at Operator_node in et_tree){
        EtNodeType::Literal { rc_literal_symidx: const_sym_idx, ast_node: _, text: _ } => {
            // do nothing
        },
        EtNodeType::Operator { ast_node: _, text: _, op, op_rc_symidx: op_symidx } => {
            let et_nodes = direct_et_child_nodes!(at et_node in et_tree); //里面的u32是节点编号
            // whether return None
            let mut et_ret_symidx_vec = vec![];
            for &et_child_node in &et_nodes{
                debug_info_red!("{} {:?}",et_child_node,node!(at et_child_node in et_tree));
                match &node!(at et_child_node in et_tree).et_node_type {
                    EtNodeType::Literal { rc_literal_symidx, ast_node, text } => {
                        // println!("eval et push literal {:?}",rc_literal_symidx);
                        et_ret_symidx_vec.push(rc_literal_symidx.clone());
                    },
                    _ => {
                        // non-literal can't eval
                        return;
                    }
                }
            }
            match op.eval(&et_ret_symidx_vec,true){
                Ok(val) => {
                    let rc_literal_symidx = val.to_symidx().unwrap().as_rc();
                    let literal_et_node_ty = EtNodeType::new_literal(AST_ROOT, rc_literal_symidx.clone()).into();
                    node_mut!(at et_node in et_tree).et_node_type = literal_et_node_ty;
                    // println!("eval_as {:?} at et_node{et_node}", rc_literal_symidx);
                    Some(rc_literal_symidx)
                }, Err(e) => { debug_info_red!("{}",e); None },
            };
        },
        EtNodeType::Separator { ast_node: _, text: _ } => { }
        EtNodeType::Symbol { rc_symidx: sym_idx, ast_node, text, decldef_def_or_use } => {
            // do nothing
        },
        // _ => Err(anyhow!("错误的 EtNode 类型 ! 不是 Constant , Operator, Separator 中的一个")),
    };

}
fn match_x_mul_1(et_nodes:&Vec<u32>,et_node:u32,et_tree:&mut EtTree)->bool{
    let et_symidx_vec = get_symidx_vec(et_node, et_tree);
    let (l,r) = if let (Some(l),Some(r)) = (&et_symidx_vec[0],&et_symidx_vec[1]){ (l.as_ref_borrow(),r.as_ref_borrow()) }else { return false };
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
    let et_ret_symidx_vec = get_symidx_vec(et_node, et_tree);
    let mut check= false;
    for symidx in &et_ret_symidx_vec{
        if let Some(symidx) = symidx {
            if symidx.as_ref_borrow().symbol_name == "0"{
                check = true;
            }
        }
    }
    if check{
        let (sym_node,zero_node) = {
            let (l,r) = if let  (Some(l),Some(r)) = (&et_ret_symidx_vec[0],&et_ret_symidx_vec[1]) {
                (l.as_ref_borrow(),r.as_ref_borrow())
            } else{
                return false;
            };
            // ensure r is 0
            match (l,r){
                (l,r)if r.symbol_name=="0" => {
                    (et_nodes[0],et_nodes[1])
                }
                (l,r)if l.symbol_name=="0" => {
                    (et_nodes[1],et_nodes[0])
                }
                _ => return false
            }
        };
        let et_parent_node = direct_et_parent_node!(at et_node in et_tree );
        // delete parent to cur et_node
        let et_node_edge_parent2cur = et_tree.find_edge(NodeIndex::new(et_parent_node as usize), NodeIndex::new(et_node as usize)).unwrap();
        et_tree.edge_weight_mut(et_node_edge_parent2cur).unwrap().et_edge_type = EtEdgeType::Deleted;
        add_edge!({EtEdgeType::Direct.into()} from et_parent_node to zero_node in et_tree);
        true
    }else {
        false
    }
}
fn match_x_add_x(et_nodes:&Vec<u32>,et_node:u32,et_tree:&mut EtTree)->bool{
    debug_info_red!("try match x add x at {et_node}");
    if node!(at et_node in et_tree).common_eliminated{return false}
    let (&l_node,&r_node) = (&et_nodes[0],&et_nodes[1]);

    if hash_equal(l_node, r_node, et_tree){
        let added_node_struct = EtNodeType::new_literal(0, SymIdx::from_str("2").as_rc()).into();
        add_node_with_edge!({added_node_struct} with_edge {EtEdgeType::Direct.into()} from et_node in et_tree);
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
        (l,r)if matches!(r_et_ty,EtNodeType::Operator { op:ExprOp::Mul, ast_node, text, op_rc_symidx }) => {
            (l_node,r_node)
        }
        (l,r)if matches!(l_et_ty,EtNodeType::Operator { op:ExprOp::Mul, ast_node, text, op_rc_symidx }) => {
            (r_node,l_node)
        }
        _ => {
            debug_info_blue!("match failed because have no mul");
            return Ok(false)}
    };
    assert!(et_symidx_vec.len()==2);
    let mul_et_nodes = direct_et_child_nodes!(at mul_op_node in et_tree );
    let (mul_l_node,mul_r_node) = (mul_et_nodes[0],mul_et_nodes[1]);
    let (mul_l_et_ty,mul_r_et_ty) = (&node!(at mul_l_node in et_tree).et_node_type, &node!(at mul_r_node in et_tree).et_node_type);
    let (sym_node2,literal_node,rc_literal_symidx) = match (mul_l_et_ty,mul_r_et_ty){
        (EtNodeType::Operator { op, ast_node, text, op_rc_symidx: op_symidx }, 
            EtNodeType::Literal { rc_literal_symidx: literal_symidx, ast_node:_, text:_}) => {
            (mul_l_node,mul_r_node,literal_symidx.clone())
        },
        (EtNodeType::Literal { rc_literal_symidx: literal_symidx, ast_node, text }, 
            EtNodeType::Operator { op, ast_node:_, text:_, op_rc_symidx: op_symidx }) => {
            (mul_l_node,mul_r_node,literal_symidx.clone())
        },
        (EtNodeType::Literal { rc_literal_symidx: literal_symidx, ast_node, text },
             EtNodeType::Symbol { rc_symidx: sym_idx, ast_node:_, text:_, decldef_def_or_use }) => {
            (mul_r_node,mul_l_node,literal_symidx.clone())
        },
        (EtNodeType::Symbol { rc_symidx: sym_idx, ast_node, text, decldef_def_or_use }, 
            EtNodeType::Literal { rc_literal_symidx: literal_symidx, ast_node:_, text:_ }) => {
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
        let rc_literal_plus_1 = (Value::from_symidx(&rc_literal_symidx.as_ref_borrow())? +Value::new_i32(1))?.to_symidx()?.as_rc();
        debug_info_red!("{:?} at et_node {}",rc_literal_plus_1,literal_node);
        node_mut!(at literal_node in et_tree).replace_symidx(rc_literal_plus_1)?;
        node_mut!(at et_node in et_tree).common_eliminated = true;
        Ok(true)
    }else{
        Ok(false)
    }
}
fn get_symidx_vec(et_node:u32,et_tree:&EtTree) -> Vec<Option<RcSymIdx>>{
    let et_nodes = direct_et_child_nodes!(at et_node in et_tree);
    let mut symdix_vec = vec![];
    for et_node in et_nodes{
        match &node!(at et_node in et_tree).et_node_type{
            EtNodeType::Literal { rc_literal_symidx, ast_node, text } => symdix_vec.push(Some(rc_literal_symidx.clone())),
            EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } =>{
                symdix_vec.push(Some(rc_symidx.clone()))
            },
            _ => {
                symdix_vec.push(if node!(at et_node in et_tree).equivalent_symidx_vec.len()== 0 {None}
                else{Some(node!(at et_node in et_tree).equivalent_symidx_vec[0].clone())})
            }
        };
    }
    symdix_vec
}
fn match_x_add_0(et_nodes:&Vec<u32>,et_node:u32,et_tree:&mut EtTree) -> bool{
    let et_symidx_vec = get_symidx_vec(et_node, et_tree);
    let (l,r) = if let (Some(l),Some(r)) = (&et_symidx_vec[0],&et_symidx_vec[1]){ (l.as_ref_borrow(),r.as_ref_borrow()) }else { return false };
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
    let (l,r) = if let (Some(l),Some(r)) = (&et_symidx_vec[0],&et_symidx_vec[1]){ (l.as_ref_borrow(),r.as_ref_borrow()) }else { return false };

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
    add_edge!({EtEdgeType::Direct.into()} from et_parent_node to sym_node in et_tree);
    true
}
fn match_x_div_1(et_node:u32,et_tree:&mut EtTree) -> bool{
    let et_nodes = direct_et_child_nodes!(at et_node in et_tree);
    let et_symidx_vec = get_symidx_vec(et_node, et_tree);
    if node!(at et_node in et_tree).common_eliminated{return false}
    debug_info_blue!("match_x_div_1 at {} with_et_nodes {:?}",et_node,et_nodes);
    let (l,r) = if let (Some(l),Some(r)) = (&et_symidx_vec[0],&et_symidx_vec[1]){ (l.as_ref_borrow(),r.as_ref_borrow()) }else { return false };
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
/// replace all the const symbol with its literal value in symtab
fn recursive_replace_const_symbol(et_tree:&mut EtTree,et_node:u32,symtab:&SymTab,scope_node:u32, scope_tree:&ScopeTree) -> Result<()>{
    let dfs_et_nodes = dfs(et_tree, et_node);
    debug_info_red!("dfs_et_nodes successfully");
    for et_node in dfs_et_nodes{
        // debug_info_green!("visit {}",et_node);
        match &node_mut!(at et_node in et_tree).et_node_type{
            EtNodeType::Symbol { rc_symidx: rc_init_symidx, ast_node, text, decldef_def_or_use } => {
                // debug_info_blue!("cur scope {}",scope_node);
                if let DeclOrDefOrUse::Use {} = decldef_def_or_use{
                    let initial_scope = scope_node;

                    let mut symidx =  rc_init_symidx.as_ref_borrow().clone();
                    while let Err(_) = symtab.get(&symidx) {
                        let scope_node = symidx.scope_node;
                        if scope_node != ST_ROOT{
                            symidx.scope_node = direct_parent_node!(at scope_node in scope_tree );
                        }else{
                            return Err(anyhow!("scope为{}符号表中未找到{:?}", initial_scope, symidx.symbol_name.clone()));
                        }
                    }
                    // debug_info_green!("replace symidx {}",sym_idx);
                    // if the symidx have its corresponding const symidx
                    if !symtab.get(&symidx)?.get_type()?.is_array() && symtab.get(&symidx)?.has_const_cor_literal_symidx() {
                        let literal_symidx = symtab.get(&symidx)?.get_const_cor_literal_symidx()?.clone();
                        node_mut!(at et_node in et_tree).et_node_type = EtNodeType::new_literal(*ast_node, literal_symidx.as_rc())
                    }
                }
            },
            _ => {}
        }
    }
    Ok(())
}

/// compress the et_tree 
/// 1. replace const (optional)
/// 2. eval_et
/// the input et_sep_node should always be a sep_node
pub fn compress_et(et_tree:&mut EtTree, et_sep_node:u32, can_eliminate_f:&mut impl FnMut(u32,&EtTree)->bool,symtab:&SymTab, scope_node:u32, scope_tree:&ScopeTree, replace_const:bool ) -> Result<()> {
    debug_info_red!("exec compress_et on {}",et_sep_node);
    if replace_const{ recursive_replace_const_symbol(et_tree, et_sep_node, symtab, scope_node, scope_tree)?;}
    eval_et(et_tree, et_sep_node);
    et_tree.update_hash(et_sep_node)?;
    for et_node in direct_et_child_nodes!(at et_sep_node in et_tree ){
        debug_info_blue!("hash expr eliminate on {}",et_node);
        hash_expr_elimination(et_node, et_tree, can_eliminate_f)?;
    }
    let rpo_nodes = rpo_with_predicate(&et_tree, et_sep_node, |e|!e.weight().et_edge_type.is_deleted());
    for et_node in rpo_nodes{
        reducation(et_node, et_tree, false);
    }
    // eval_et(et_tree, et_node);
    Ok(())
}
/// the input et_node can't be  separator and you should also provide a expr_hash_map
pub fn _compress_et(et_tree:&mut EtTree, et_node:u32, can_eliminate_f:&mut impl FnMut(u32,&EtTree)->bool,symtab:&SymTab, scope_node:u32, scope_tree:&ScopeTree,expr_hash_map:&mut HashMap<isize,u32>, replace_const:bool ) -> Result<()> {
    debug_info_red!("exec compress_et on {}",et_node);
    if replace_const{ recursive_replace_const_symbol(et_tree, et_node, symtab, scope_node, scope_tree)?;}
    eval_et(et_tree, et_node);
    et_tree.update_hash(et_node)?;
    debug_info_blue!("hash expr eliminate on {}",et_node);
    _hash_expr_elimination(et_node,expr_hash_map, et_tree, can_eliminate_f)?;
    let rpo_nodes = rpo_with_predicate(&et_tree, et_node, |e|!e.weight().et_edge_type.is_deleted());
    for et_node in rpo_nodes{
        reducation(et_node, et_tree, true);
    }
    // eval_et(et_tree, et_node);
    Ok(())
}

/// given a et_node make this tree into a dag
pub fn hash_expr_elimination(et_node:u32,et_tree:&mut EtTree, can_eliminate_f:&mut impl FnMut(u32,&EtTree)->bool) -> Result<()>{
    let mut map = HashMap::new();
    // map hash into et_node
    _common_expr_elimination_by_hash(et_node, et_tree, &mut map, can_eliminate_f)
}
pub fn _hash_expr_elimination(et_node:u32,expr_hash_map:&mut HashMap<isize,u32>,et_tree:&mut EtTree, can_eliminate_f:&mut impl FnMut(u32,&EtTree)->bool) -> Result<()>{
    // map hash into et_node
    let dfs_nodes = dfs_with_predicate(et_tree, et_node, |e|!e.weight().et_edge_type.is_deleted());
    for &et_node in dfs_nodes.iter().rev(){
        _common_expr_elimination_by_hash(et_node, et_tree, expr_hash_map, can_eliminate_f)?;
    }
    Ok(())
}
pub fn _common_expr_elimination_by_hash(et_node:u32,et_tree:&mut EtTree, map:&mut HashMap<isize,u32>, can_eliminate_f:&mut impl FnMut(u32,&EtTree)->bool) -> Result<()>{
    // map hash into et_node
    // debug_info_blue!("et_ndoe:::::: {}",et_node);
    et_tree._update_hash(et_node).unwrap();
    let &hash = node!(at et_node in et_tree).hash.as_ref().unwrap();
    if let Some(&found_et_node) = map.get(&hash){
        if found_et_node != et_node && can_eliminate_f(et_node, et_tree){
            // clone all edges that it has 
            let mut edge_weight_tuple_vec = vec![];
            let op_parent_et_node = direct_et_parent_node!(at et_node in et_tree ret_option);
            if let Some(parent_et_node) = op_parent_et_node {
                for edge_ref in et_tree.edges_directed(node_index(parent_et_node as usize), Outgoing).collect_vec().iter().rev(){
                    let mut weight = edge_ref.weight().clone();
                    let s = edge_ref.source().index() as u32;
                    let t = edge_ref.target().index() as u32;
                    if t == et_node{
                        weight = EtEdgeType::Deleted.into();
                        debug_info_blue!("trans edge from {} to {} to deleted edge",s,t);
                        edge_weight_tuple_vec.push((EtEdgeType::Direct.into(),s,found_et_node));
                    }
                    edge_weight_tuple_vec.push((weight,s,t));
                }
                let edges = et_tree.edges_directed(node_index(parent_et_node as usize), Outgoing).map(|edge| edge.id()).collect_vec();
                for edge in edges{
                    et_tree.remove_edge(edge);
                }
                for (weight,s,t) in edge_weight_tuple_vec{
                    add_edge!({weight} from s to t in et_tree);
                }
            }
            let equivalent_symidx_vec_to_move = std::mem::take(&mut node_mut!(at et_node in et_tree).equivalent_symidx_vec);
            node_mut!(at found_et_node in et_tree).equivalent_symidx_vec.extend(equivalent_symidx_vec_to_move.into_iter());
            node_mut!(at et_node in et_tree).common_eliminated = true;
        }
    }else {
        if can_eliminate_f(et_node, et_tree){
            map.insert(hash, et_node);
            // debug_info_blue!("after insert map {:?}",map);
        }
    }
    Ok(())
}
pub fn can_eliminate_despite_array_idx_and_call(et_node:u32, et_tree:&EtTree) -> bool{
    let parent_node =direct_et_parent_node!(at et_node in et_tree);
    match (&node!(at et_node in et_tree).et_node_type,&node!(at parent_node in et_tree).et_node_type){
        // (EtNodeType::Operator { op: op1, ast_node: ast_node1, text:_, op_symidx:_ } ,
        (_ , EtNodeType::Operator { op: op_parent, ast_node: ast_node2, text:_, op_rc_symidx:_ } ) if op_parent.is_array_index() => {
            debug_info_blue!("et_ndoe_can_eliminate false {}",et_node);
            false
        }
        (_,EtNodeType::Operator { op, ast_node, text, op_rc_symidx: op_symidx } ) if op.is_call() => {
            debug_info_blue!("et_ndoe_can_eliminate false {}",et_node);
            false
        }
        _=> {
            debug_info_blue!("et_ndoe_can_eliminate true {}",et_node);
            true}
    }
}
pub fn reducation(et_node:u32,et_tree:&mut EtTree, is_keep_hash_equivalent:bool){
    if node!(at et_node in et_tree).common_eliminated{return}
    let et_parent_node = direct_parent_node!(at et_node in et_tree with_predicate {|e|!e.weight().et_edge_type.is_deleted()} ret_option);
    debug_info_red!("reducation et_node {}",et_node);
    let et_parent_node = if et_parent_node.is_none(){return}else {et_parent_node.unwrap()};
    let et_nodes = direct_et_child_nodes!(at et_node in et_tree); //里面的u32是节点编号
    // generate_png_by_graph(et_tree,"et_tree".to_string(),&[Config::NodeIndexLabel,Config::Record]);
    match &node!(at et_node in et_tree).et_node_type{
        EtNodeType::Operator { op, ast_node, text, op_rc_symidx: op_symidx } => {
            debug_info_blue!("access {}",et_node);
            match op{
                ExprOp::Mul => {
                    if match_x_mul_1(&et_nodes, et_node, et_tree){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_mul_1_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation( et_parent_node,et_tree,is_keep_hash_equivalent);
                    }
                    if match_x_mul_0(&et_nodes, et_node, et_tree){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_mul_0_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation( et_parent_node,et_tree,is_keep_hash_equivalent);
                    };
                },
                ExprOp::Add => {
                    if !is_keep_hash_equivalent && match_x_add_0( &et_nodes, et_node, et_tree){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_and_0_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation( et_parent_node,et_tree,is_keep_hash_equivalent);
                    }
                    if !is_keep_hash_equivalent && match_x_add_x(&et_nodes, et_node, et_tree){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_and_x_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation( et_parent_node,et_tree,is_keep_hash_equivalent);
                    };
                    if !is_keep_hash_equivalent && match_x_add_x_mul_const( et_node, et_tree).unwrap() && !is_keep_hash_equivalent{
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_add_x_mul_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation( et_parent_node,et_tree,is_keep_hash_equivalent);
                    };
                },
                ExprOp::Sub => {
                    if match_x_sub_0( &et_nodes, et_node, et_tree){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_sub_0_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation(et_parent_node,et_tree,is_keep_hash_equivalent);
                    }
                },
                ExprOp::Div => {
                    if match_x_div_1(et_node, et_tree){
                        node_mut!(at et_node in et_tree).common_eliminated=true;
                        debug_info_blue!("match_x_div_0_at {}",et_node);
                        et_tree.deprecate_hash(et_parent_node);
                        reducation(et_parent_node,et_tree,is_keep_hash_equivalent);
                    }
                },
                _ => { }
            }
        },
        EtNodeType::Literal { rc_literal_symidx: literal_symidx, ast_node, text } => {},
        EtNodeType::Symbol { rc_symidx: sym_idx, ast_node, text, decldef_def_or_use } => {},
        EtNodeType::Separator { ast_node, text } => {},
    }
}
impl ExprOp{
    pub fn eval(&self, vec:&Vec<RcSymIdx>, is_ssa_form_bool:bool) -> Result<Value>{
        match self{
            ExprOp::Mul |
            ExprOp::Add |
            ExprOp::Sub |
            ExprOp::Div |
            ExprOp::LogicalOr |
            ExprOp::LogicalAnd|
            ExprOp::BitwiseOr |
            ExprOp::BitwiseAnd|
            ExprOp::NEq |
            ExprOp::Less |
            ExprOp::Greater |
            ExprOp::LEq |
            ExprOp::GEq |
            ExprOp::Mod => {
                if vec.len()<2 {
                    panic!("can't eval with no enough symidx {:?}",vec);
                    return Err(anyhow!("can't eval with no enough symidx {:?}",vec));
                }
            }
            _ => {}
        }
        Ok(match self{
            ExprOp::Mul => (Value::from_symidx( &vec[0].as_ref_borrow())?*Value::from_symidx( &vec[1].as_ref_borrow())?)?,
            ExprOp::Add => (Value::from_symidx( &vec[0].as_ref_borrow())?+Value::from_symidx( &vec[1].as_ref_borrow())?)?,
            ExprOp::Sub => (Value::from_symidx( &vec[0].as_ref_borrow())?-Value::from_symidx( &vec[1].as_ref_borrow())?)?,
            ExprOp::Div => (Value::from_symidx( &vec[0].as_ref_borrow())?/Value::from_symidx( &vec[1].as_ref_borrow())?)?,
            ExprOp::LogicalOr => (Value::from_symidx( &vec[0].as_ref_borrow())?.logical_or(&Value::from_symidx( &vec[1].as_ref_borrow())?))?,
            ExprOp::LogicalAnd => (Value::from_symidx( &vec[0].as_ref_borrow())?.logical_and(&Value::from_symidx( &vec[1].as_ref_borrow())?))?,
            ExprOp::BitwiseOr => (Value::from_symidx( &vec[0].as_ref_borrow())?|Value::from_symidx( &vec[1].as_ref_borrow())?)?,
            ExprOp::BitwiseAnd => (Value::from_symidx( &vec[0].as_ref_borrow())?&Value::from_symidx( &vec[1].as_ref_borrow())?)?,

            ExprOp::NEq => {
                if is_ssa_form_bool && vec[0] == vec[1]{
                    Value::I1(Some(false))
                }else {
                    (Value::from_symidx( &vec[0].as_ref_borrow())?.logical_neq(&Value::from_symidx( &vec[1].as_ref_borrow())?))?
                }
            } ,
            ExprOp::Less => {
                if is_ssa_form_bool && vec[0] == vec[1]{
                    Value::I1(Some(false))
                }else {
                    (Value::from_symidx( &vec[0].as_ref_borrow())?.less_than(&Value::from_symidx( &vec[1].as_ref_borrow())?))?
                }
            },
            ExprOp::Greater => {
                if is_ssa_form_bool && vec[0] == vec[1]{
                    Value::I1(Some(false))
                }else {
                    (Value::from_symidx( &vec[0].as_ref_borrow())?.greater_than(&Value::from_symidx( &vec[1].as_ref_borrow())?))?
                }
            },
            ExprOp::LEq => {
                if is_ssa_form_bool && vec[0] == vec[1]{
                    Value::I1(Some(true))
                }else {
                    (Value::from_symidx( &vec[0].as_ref_borrow())?.less_than_or_equal(&Value::from_symidx( &vec[1].as_ref_borrow())?))?
                }
            },
            ExprOp::GEq => {
                if is_ssa_form_bool && vec[0] == vec[1]{
                    Value::I1(Some(true))
                }else {
                    (Value::from_symidx( &vec[0].as_ref_borrow())?.greater_than_or_equal(&Value::from_symidx( &vec[1].as_ref_borrow())?))?
                }
            },
            // ExprOp::BitwiseXor => (Value::from_symidx( &vec[0].as_ref_borrow())?^Value::from_symidx( &vec[1].as_ref_borrow())?)?,
            ExprOp::Eq => {
                if is_ssa_form_bool && vec[0] == vec[1]{
                    Value::I1(Some(true))
                }else {
                    (Value::from_symidx(&vec[0].as_ref_borrow())?.equal(&Value::from_symidx( &vec[1].as_ref_borrow())?))?
                }
            },
            ExprOp::Mod => {
                (Value::from_symidx( &vec[0].as_ref_borrow())?%Value::from_symidx( &vec[1].as_ref_borrow())?)?
            },
            // ExprOp::LShift => (Value::from_symidx( &vec[0].as_ref_borrow())?<<Value::from_symidx( &vec[1].as_ref_borrow())?)?,
            // ExprOp::RShift => (Value::from_symidx( &vec[0].as_ref_borrow())?>>Value::from_symidx( &vec[1].as_ref_borrow())?)?,
            ExprOp::BitwiseNot => (!Value::from_symidx( &vec[0].as_ref_borrow())?)?, //一元运算符
            ExprOp::LogicalNot => (!Value::from_symidx( &vec[0].as_ref_borrow())?)?, 
            ExprOp::Negative => (-Value::from_symidx( &vec[0].as_ref_borrow())?)?,
            ExprOp::Positive => Value::from_symidx( &vec[0].as_ref_borrow())?,
            ExprOp::TransToF32 => Value::from_symidx( &vec[0].as_ref_borrow())?.trans_to_specific_type(&Type::F32)?,
            ExprOp::TransToI32 => Value::from_symidx( &vec[0].as_ref_borrow())?.trans_to_specific_type(&Type::I32)?,
            ExprOp::TransToI1 => Value::from_symidx( &vec[0].as_ref_borrow())?.trans_to_specific_type(&Type::I1)?,
            _ => {Err(anyhow!(format!("unsupported operator {:?} for {:?}",self,vec)))?},
        })
    }
}
