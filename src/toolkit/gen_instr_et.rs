use std::{mem, rc, thread::scope};
use std::{any::Any,};
use ahash::{HashMap, HashSet};
use bimap::BiMap;
use petgraph::graph::Edge;

use crate::{add_edge, add_node, add_node_with_edge, debug_info_blue, debug_info_red, direct_child_node, direct_child_nodes, direct_parent_node, direct_parent_nodes, get_ast_from_symidx, instr_mut, node, node_mut, passes::symtab_debug_pass, toolkit::{et_node::DeclOrDefOrUse, field::{Type, Value}, gen_nhwc_cfg::IS_LITERAL, gvn::cor_instr_et_node_bimap, nhwc_instr::NhwcInstrType, symbol, symtab::WithBorrow}};
use anyhow::{anyhow, Ok, Result};
use anyhow::*;
use super::cfg_node::InstrList;
use super::{et_node::{EtEdgeType, EtNode, EtNodeType, EtTree}, nhwc_instr::{ArithOp, InstrSlab, NhwcInstr}, scope_node::ScopeTree, symtab::{self, RcSymIdx, SymIdx, SymTab}};

macro_rules! direct_et_parent_node {
    (at $et_node:ident in $et_tree:ident ) => {
        direct_parent_node!(at $et_node in $et_tree with_predicate {|e|e.weight().et_edge_type.is_direct()})       
    };
    (at $et_node:ident in $et_tree:ident ret_option) => {
        direct_parent_node!(at $et_node in $et_tree with_predicate {|e|e.weight().et_edge_type.is_direct()} ret_option)       
    };
}
macro_rules! direct_et_chi_parent_node {
    (at $et_node:ident in $et_tree:ident ) => {
        direct_parent_node!(at $et_node in $et_tree with_predicate {|e|e.weight().et_edge_type.is_chi()})       
    };
    (at $et_node:ident in $et_tree:ident ret_option) => {
        direct_parent_node!(at $et_node in $et_tree with_predicate {|e|e.weight().et_edge_type.is_chi()} ret_option)       
    };
}
macro_rules! direct_et_chi_parent_nodes {
    (at $et_node:ident in $et_tree:ident ) => {
        direct_parent_nodes!(at $et_node in $et_tree with_predicate {|e|e.weight().et_edge_type.is_chi()})       
    };
}
macro_rules! direct_et_child_nodes {
    (at $et_node:ident in $et_tree:ident $(with_priority $f:block)?) => {
        direct_child_nodes!(at $et_node in $et_tree with_predicate {|e|e.weight().et_edge_type.is_direct()} ) 
    };
}
macro_rules! direct_et_mu_child_nodes {
    (at $et_node:ident in $et_tree:ident $(with_priority $f:block)?) => {
        direct_child_nodes!(at $et_node in $et_tree with_predicate {|e|e.weight().et_edge_type.is_mu()} ) 
    };
}
macro_rules! direct_et_child_node {
    (at $et_node:ident in $et_tree:ident $(with_priority $f:block)?) => {
        direct_child_node!(at $et_node in $et_tree with_predicate {|e|e.weight().et_edge_type.is_direct()} ) 
    };
}
macro_rules! direct_et_mu_child_node {
    (at $et_node:ident in $et_tree:ident $(with_priority $f:block)?) => {
        direct_child_node!(at $et_node in $et_tree with_predicate {|e|e.weight().et_edge_type.is_mu()} ) 
    };
}
pub fn process_arith_et(rc_lhs:&RcSymIdx,rc_a:&RcSymIdx, rc_b:&RcSymIdx,instr:usize, mut arith_et_struct:EtNode, instr_et:&mut EtTree,rc_symidx_et_node_map:&mut HashMap<RcSymIdx,u32>,scope_tree:&ScopeTree, instr_et_node_bimap:&mut BiMap<usize,u32>) -> u32{
    arith_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
    let arith_et_node = add_node!({arith_et_struct} to instr_et);
    rc_symidx_et_node_map.insert(rc_lhs.clone(), arith_et_node);
    instr_et_node_bimap.insert(instr,arith_et_node);
    let lhs = rc_lhs.as_ref_borrow();
    let a = rc_a.as_ref_borrow();
    let b = rc_b.as_ref_borrow();
    debug_info_blue!("lhs:{:?} a:{:?} b:{:?}",rc_lhs,a,b,);
    //查找操作数，有的话连边，没有 panic
    if let Some(&a_node) = rc_symidx_et_node_map.get(&rc_a){
        add_edge!({EtEdgeType::Direct.into()} from arith_et_node to a_node in instr_et);
    }else{
        if a.is_literal(){
            let literal_et_struct:EtNode = EtNodeType::new_literal(0, rc_a.clone()).into();
            // literal_et_struct.equivalent_symidx_vec.push(rc_a.clone());
            let literal_et_node = add_node!({literal_et_struct} to instr_et);
            add_edge!({EtEdgeType::Direct.into()} from arith_et_node to literal_et_node in instr_et);
            rc_symidx_et_node_map.insert(rc_a.clone(), literal_et_node);
        }else {
            panic!();
        }
    }
    if let Some(&b_node) = rc_symidx_et_node_map.get(&rc_b){
        add_edge!({EtEdgeType::Direct.into()} from arith_et_node to b_node in instr_et);
    }else{
        if b.is_literal(){
            let literal_et_struct:EtNode = EtNodeType::new_literal(0, rc_b.clone()).into();
            // literal_et_struct.equivalent_symidx_vec.push(rc_b.clone());
            let literal_et_node = add_node!({literal_et_struct} to instr_et);
            add_edge!({EtEdgeType::Direct.into()} from arith_et_node to literal_et_node in instr_et);
            rc_symidx_et_node_map.insert(rc_b.clone(), literal_et_node);
        }else {
            panic!();
        }
    }
    arith_et_node
}

pub fn process_trans_et(rc_lhs:&RcSymIdx,rc_rhs:&RcSymIdx,symtab:&SymTab,instr:usize,rc_symidx_et_node_map:&mut HashMap<RcSymIdx,u32>,instr_et_node_map:&mut BiMap<usize,u32>,scope_tree:&ScopeTree,to_trans_ast:u32,instr_et:&mut EtTree)-> Result<u32>{
    let lhs = rc_lhs.as_ref_borrow();
    let rhs_symidx = rc_rhs.as_ref_borrow();
    let mut lhs_et_struct:EtNode = EtNodeType::new_trans_to(0, symtab.get(&lhs.to_src_symidx())?.get_type()?).into();
    lhs_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
    let lhs_et_node = add_node!({lhs_et_struct} to instr_et);
    instr_et_node_map.insert(instr, lhs_et_node);

    if let Some(&rhs_et_node) = rc_symidx_et_node_map.get(&rc_rhs){
        add_edge!({EtEdgeType::Direct.into()} from lhs_et_node to rhs_et_node in instr_et);
    }else{
        if rhs_symidx.is_literal(){
            let rhs_et_node = add_node_with_edge!({EtNodeType::new_literal(0, rc_rhs.clone()).into()} with_edge {EtEdgeType::Direct.into()} from lhs_et_node in instr_et);
            rc_symidx_et_node_map.insert(rc_rhs.clone(), rhs_et_node);
        }else{
            let rhs_et_node = add_node_with_edge!({EtNodeType::new_symbol(0, rc_rhs.clone(), super::et_node::DeclOrDefOrUse::Use).into()} with_edge {EtEdgeType::Direct.into()} from lhs_et_node in instr_et);
            node_mut!(at rhs_et_node in instr_et).equivalent_symidx_vec.push(rc_lhs.clone());
            rc_symidx_et_node_map.insert(rc_rhs.clone(), rhs_et_node);
        }
    }
    rc_symidx_et_node_map.insert(rc_lhs.clone(), lhs_et_node);
    Ok(lhs_et_node)
}

reg_field_for_struct!(NhwcInstr
    {
        COR_INSTR_ET_NODE:u32,
    }
    with_fields info
);

use crate::{instr, reg_field_for_struct};
pub fn parse_instr_list_to_et(instrs:impl Iterator<Item = usize>, instr_et:&mut EtTree, symtab:&SymTab, rc_symidx_et_node_map:&mut HashMap<RcSymIdx,u32>, instr_et_node_bimap:&mut BiMap<usize,u32>, scope_tree:&ScopeTree, instr_slab:&mut InstrSlab<NhwcInstr>) -> Result<()>{
    let instrs:Vec<_>= instrs.collect();
    for instr in instrs{
        let instr_struct = instr!(at instr in instr_slab)?;
        debug_info_blue!("instr_et {:?}",instr_struct);
        match &instr_struct.instr_type{
            // super::nhwc_instr::NhwcInstrType::Label { label_symidx } => todo!(),
            super::nhwc_instr::NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
                let func_et_node = if let Some(et_node) = rc_symidx_et_node_map.get(func_symidx){
                    // do nothing
                    *et_node
                }else {
                    let mut func_et_node_struct:EtNode = EtNodeType::new_symbol(0, func_symidx.clone(), DeclOrDefOrUse::Use).into();
                    func_et_node_struct.equivalent_symidx_vec.push(func_symidx.clone());
                    let func_et_ndoe = add_node!({func_et_node_struct} to instr_et);
                    rc_symidx_et_node_map.insert(func_symidx.clone(), func_et_ndoe);
                    func_et_ndoe
                };
                for rc_arg in args{
                    if let Some(et_node) = rc_symidx_et_node_map.get(rc_arg){
                        panic!()
                    }else {
                        let mut arg_et_node_struct:EtNode = EtNodeType::new_symbol(0, rc_arg.clone(), DeclOrDefOrUse::Use).into();
                        arg_et_node_struct.equivalent_symidx_vec.push(rc_arg.clone());
                        let arg_et_node = add_node!({arg_et_node_struct} to instr_et);
                        rc_symidx_et_node_map.insert(rc_arg.clone(), arg_et_node);
                    }
                }
                instr_et_node_bimap.insert(instr, func_et_node);
                instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(func_et_node);
            },
            super::nhwc_instr::NhwcInstrType::DefineVar { var_symidx, vartype, op_value } => { 
                let mut sym_struct:EtNode = EtNodeType::new_symbol(0, var_symidx.clone(), crate::toolkit::et_node::DeclOrDefOrUse::Use).into();
                sym_struct.equivalent_symidx_vec.push(var_symidx.clone());
                let sym_et_node = add_node!({sym_struct} to instr_et);
                rc_symidx_et_node_map.insert(var_symidx.clone(), sym_et_node);
                instr_et_node_bimap.insert(instr,sym_et_node);
                instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(sym_et_node);
            },
            super::nhwc_instr::NhwcInstrType::Alloc { var_symidx, vartype } => {},
            super::nhwc_instr::NhwcInstrType::Globl { var_symidx, vartype } => todo!(),
            super::nhwc_instr::NhwcInstrType::Load { lhs: rc_lhs, ptr_symidx: rc_ptr_symidx, ptr_ty } => {
                let ptr_symidx = rc_ptr_symidx.as_ref_borrow();
                let ptr_et_node = if let Some(&ptr_et_node) = rc_symidx_et_node_map.get(&rc_ptr_symidx){
                    ptr_et_node
                }else{
                    if ptr_symidx.is_global_ptr() {
                        let mut ptr_et_struct:EtNode = EtNodeType::new_symbol(0, rc_ptr_symidx.clone(), crate::toolkit::et_node::DeclOrDefOrUse::Use).into();
                        ptr_et_struct.equivalent_symidx_vec.push(rc_ptr_symidx.clone());
                        let ptr_et_node = add_node!({ptr_et_struct} to instr_et);
                        rc_symidx_et_node_map.insert(rc_ptr_symidx.clone(), ptr_et_node);
                        ptr_et_node
                    }else {panic!()}
                };
                let mut load_et_struct:EtNode = EtNodeType::new_load(0).into();
                load_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
                let load_et_node = add_node!({load_et_struct} to instr_et);
                add_edge!({EtEdgeType::Direct.into()} from load_et_node to ptr_et_node in instr_et);
                rc_symidx_et_node_map.insert(rc_lhs.clone(), load_et_node);
                instr_et_node_bimap.insert(instr,load_et_node);
                ptr_symidx;
                instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(load_et_node);
            },
            super::nhwc_instr::NhwcInstrType::Store { val_symidx: rc_val_symidx, value_ty, ptr_symidx: rc_ptr_symidx, ptr_ty } => {
                let ptr_symidx = rc_ptr_symidx.as_ref_borrow();
                debug_info_blue!("val:{:?},val_ty:{:?}, ptr:{:?},ptr_ty:{:?}",rc_val_symidx,value_ty,rc_ptr_symidx,ptr_ty);
                let ptr_et_node = if let Some(&ptr_et_node) = rc_symidx_et_node_map.get(&rc_ptr_symidx){
                    ptr_et_node
                }else{
                    if ptr_symidx.is_global_ptr() {
                        let mut arr_name_et_struct:EtNode = EtNodeType::new_symbol(0, rc_ptr_symidx.clone(), crate::toolkit::et_node::DeclOrDefOrUse::Use).into();
                        arr_name_et_struct.equivalent_symidx_vec.push(rc_ptr_symidx.clone());
                        let ptr_et_node = add_node!({arr_name_et_struct} to instr_et);
                        rc_symidx_et_node_map.insert(rc_ptr_symidx.clone(), ptr_et_node);
                        ptr_et_node
                    }else {panic!()}
                };
                let store_et_struct:EtNode = EtNodeType::new_store(0).into();
                // store_et_struct.equivalent_symidx_vec.push(rc_val_symidx.clone());
                let store_et_node = add_node!({store_et_struct} to instr_et);
                let val_et_node = if let Some(&val_et_node) = rc_symidx_et_node_map.get(&rc_val_symidx){
                    // debug_info_blue!("{:?},{}",rhs,rhs_et_node);
                    val_et_node
                }else{
                    if rc_val_symidx.as_ref_borrow().is_literal(){
                        let literal_et_struct:EtNode = EtNodeType::new_literal(0, rc_val_symidx.clone()).into();
                        let literal_et_node = add_node!({literal_et_struct} to instr_et);
                        literal_et_node
                    }else {
                        panic!();
                    }
                };
                add_edge!({EtEdgeType::Direct.into()} from store_et_node to val_et_node in instr_et);
                add_edge!({EtEdgeType::Direct.into()} from store_et_node to ptr_et_node in instr_et);
                rc_symidx_et_node_map.insert(rc_val_symidx.clone(), val_et_node);
                instr_et_node_bimap.insert(instr,store_et_node);
                ptr_symidx;
                instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(store_et_node);
            },
            super::nhwc_instr::NhwcInstrType::GetElementPtr { lhs, ptr_symidx: rc_array_or_ptr, array_ty, idx_vec } => {
                //获取索引
                //构建数组名称节点
                let rc_array_or_ptr = if *symtab.get(&rc_array_or_ptr.as_ref_borrow().to_src_symidx())?.get_is_global()? 
                || symtab.get(&rc_array_or_ptr.as_ref_borrow().to_src_symidx())?.get_type()?.is_array(){
                    // if it is global array
                    // if it is a local array
                    rc_array_or_ptr.as_ref_borrow().to_src_symidx().as_rc()
                } else {
                    // if it is a ptr generated 
                    rc_array_or_ptr.clone()
                };
                let array_dims = idx_vec;
                let array_or_ptr_symidx = rc_array_or_ptr.as_ref_borrow();
                
                // we choose to put the lhs symidx to the last et_node generated by getelementptr
                let mut last_et_node = if let Some(&ptr_et_node ) = rc_symidx_et_node_map.get(&rc_array_or_ptr){
                    ptr_et_node
                }else {
                    let mut ptr_et_struct:EtNode = EtNodeType::new_symbol(0, rc_array_or_ptr.clone(), crate::toolkit::et_node::DeclOrDefOrUse::Use).into();
                    ptr_et_struct.equivalent_symidx_vec.push(rc_array_or_ptr.clone());
                    let ptr_et_node = add_node!({ptr_et_struct} to instr_et);
                    rc_symidx_et_node_map.insert(rc_array_or_ptr.clone(), ptr_et_node);
                    ptr_et_node
                };

                for dim in array_dims{
                    let rc_dim_literal = <Option<RcSymIdx> as Clone>::clone(&dim).unwrap();
                    let dim_literal = rc_dim_literal.as_ref_borrow();
                    let dim_ast = get_ast_from_symidx!(find dim_literal with scope_tree);
                    //创建数组的[]节点
                    let array_idx_et_node_struct:EtNode = EtNodeType::new_op_array_idx(dim_ast).into();
                    let array_idx_et_node = add_node!({array_idx_et_node_struct} to instr_et);
                    add_edge!({EtEdgeType::Direct.into()} from array_idx_et_node to last_et_node in instr_et);
                    //创建具体dim内容节点
                    if let Some(&dim_et_node) = rc_symidx_et_node_map.get(&rc_dim_literal){
                        add_edge!({EtEdgeType::Direct.into()} from array_idx_et_node to dim_et_node in instr_et);
                    }else{
                        let dim_et_node = add_node_with_edge!({EtNodeType::new_literal(dim_ast, rc_dim_literal.clone()).into()} with_edge {EtEdgeType::Direct.into()} from array_idx_et_node in instr_et);
                        rc_symidx_et_node_map.insert(rc_dim_literal.clone(), dim_et_node);
                    }
                    //更换下一次递归的连接对象
                    last_et_node = array_idx_et_node;
                }
                //warning:这里想要对自下而上递归建立的dim的子树的跟加入lhs的symidx，但不太会用
                // let a = node_mut!(at child_arr_etnode in instr);
                // todo!();
                // maybe here
                node_mut!(at last_et_node in instr_et).equivalent_symidx_vec.push(lhs.clone());
                rc_symidx_et_node_map.insert(lhs.clone(), last_et_node);
                instr_et_node_bimap.insert(instr,last_et_node);
                instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(last_et_node);
            },
            super::nhwc_instr::NhwcInstrType::Arith { lhs: rc_lhs, rhs } => {
                let instr_et_node = match rhs{
                    super::nhwc_instr::ArithOp::Add { a, b, vartype:_ } => {
                        let arith_et_struct:EtNode = EtNodeType::new_op_add(0).into();
                        //添加操作符和操作数节点
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                    },
                    super::nhwc_instr::ArithOp::Mul { a, b, vartype:_ } => {
                        let arith_et_struct:EtNode = EtNodeType::new_op_mul(0).into();
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                    },
                    super::nhwc_instr::ArithOp::Div { a, b, vartype:_et_node } => {
                        let arith_et_struct:EtNode = EtNodeType::new_op_div(0).into();
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                    },
                    super::nhwc_instr::ArithOp::Sub { a, b, vartype:_ } =>{
                        let arith_et_struct:EtNode = EtNodeType::new_op_sub(0).into();
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                    },
                    super::nhwc_instr::ArithOp::Mod { a, b, vartype:_ } => {
                        let arith_et_struct:EtNode = EtNodeType::new_op_mod(0).into();
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                    },
                    super::nhwc_instr::ArithOp::Icmp { plan, a, b, vartype } => {
                        match plan{
                            super::nhwc_instr::IcmpPlan::Eq => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::IcmpPlan::Ne => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_not_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::IcmpPlan::Ugt => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_greater_than(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::IcmpPlan::Uge => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_greater_than_or_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::IcmpPlan::Ult => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_less_than(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::IcmpPlan::Ule => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_less_than_or_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::IcmpPlan::Sgt => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_greater_than(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::IcmpPlan::Sge => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_greater_than_or_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::IcmpPlan::Slt => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_less_than(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::IcmpPlan::Sle => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_less_than_or_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                        }
                    },
                    super::nhwc_instr::ArithOp::Fcmp { plan, a, b, vartype:_ } => {
                        match plan{
                            super::nhwc_instr::FcmpPlan::Oeq => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::FcmpPlan::One => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_not_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::FcmpPlan::Ogt => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_greater_than(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::FcmpPlan::Oge => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_greater_than_or_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::FcmpPlan::Olt => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_less_than(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                            super::nhwc_instr::FcmpPlan::Ole => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_less_than_or_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                            },
                        }
                    },
                    super::nhwc_instr::ArithOp::LogicAnd { a, b, vartype } => {
                        let arith_et_struct:EtNode = EtNodeType::new_op_logical_and(0).into();
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap )
                    },
                    super::nhwc_instr::ArithOp::LogicOr { a, b, vartype } => {
                        let arith_et_struct:EtNode = EtNodeType::new_op_logical_or(0).into();
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_bimap)
                    },
                    super::nhwc_instr::ArithOp::LogicNot { a: rc_a, vartype } => {
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_logical_not(0).into();
                        arith_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
                        let arith_et_node = add_node!({arith_et_struct} to instr_et);
                        let a = rc_a.as_ref_borrow();
                        //查找操作数，有的话连边，没有添加节点连边
                        if let Some(&a_node) = rc_symidx_et_node_map.get(&rc_a){
                            add_edge!({EtEdgeType::Direct.into()} from arith_et_node to a_node in instr_et);
                        }else{
                            let mut et_node_struct:EtNode = EtNodeType::new_symbol(0,rc_a.clone(),super::et_node::DeclOrDefOrUse::Use).into();
                            et_node_struct.equivalent_symidx_vec.push(rc_a.clone());
                            let a_et = add_node_with_edge!({ et_node_struct } with_edge {EtEdgeType::Direct.into()} from arith_et_node in instr_et);
                            rc_symidx_et_node_map.insert(rc_a.clone(), a_et);
                        }
                        rc_symidx_et_node_map.insert(rc_lhs.clone(), arith_et_node);
                        instr_et_node_bimap.insert(instr,arith_et_node);
                        arith_et_node
                    },
                };
                instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(instr_et_node);
            },
            super::nhwc_instr::NhwcInstrType::SimpleAssign { lhs: rc_lhs, rhs: rc_rhs, vartype:_ } => {
                let lhs = rc_lhs.as_ref_borrow();
                let rhs = rc_rhs.as_ref_borrow();
                let et_node = if let Some(&rhs_et_node) = rc_symidx_et_node_map.get(&rc_rhs){
                    debug_info_blue!("anan{:?},{}",rhs,rhs_et_node);
                    let assign_et_struct = node_mut!(at rhs_et_node in instr_et);
                    assign_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
                    rc_symidx_et_node_map.insert(rc_lhs.clone(), rhs_et_node);
                    instr_et_node_bimap.insert(instr,rhs_et_node);
                    rhs_et_node
                }else{
                    if rhs.is_literal(){
                        let mut literal_et_struct:EtNode = EtNodeType::new_literal(0, rc_rhs.clone()).into();
                        literal_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
                        let literal_et_node = add_node!({literal_et_struct} to instr_et);
                        rc_symidx_et_node_map.insert(rc_lhs.clone(), literal_et_node);
                        instr_et_node_bimap.insert(instr,literal_et_node);
                        literal_et_node
                    }else {
                        panic!();
                    }
                };
                rhs;
                lhs;
                instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(et_node);
            },
            super::nhwc_instr::NhwcInstrType::Call { op_lhs, func_op } => {
                let call_et_node_struct:EtNode = EtNodeType::new_op_call(0).into();
                let call_et_node = add_node!({call_et_node_struct} to instr_et);
                match op_lhs{
                    Some(lhs) => {
                        node_mut!(at call_et_node in instr_et).equivalent_symidx_vec.push(lhs.clone());
                        rc_symidx_et_node_map.insert(lhs.clone(), call_et_node);
                    }, None => {
                        // do nothing because no lhs 
                    }, 
                }
                instr_et_node_bimap.insert(instr, call_et_node);
                
                if let Some(&func_et_node) = rc_symidx_et_node_map.get(&func_op.rc_func_symidx){
                    add_edge!({EtEdgeType::Direct.into()} from call_et_node to func_et_node in instr_et);
                }else{
                    let mut func_et_node_struct:EtNode = EtNodeType::new_symbol(0, func_op.rc_func_symidx.clone(), DeclOrDefOrUse::Use).into();
                    func_et_node_struct.equivalent_symidx_vec.push(func_op.rc_func_symidx.clone());
                    let func_et_node = add_node_with_edge!({func_et_node_struct} with_edge {EtEdgeType::Direct.into()} from call_et_node in instr_et);
                    rc_symidx_et_node_map.insert(func_op.rc_func_symidx.clone(), func_et_node);
                }
                for arg in &func_op.actual_arg_symidx_vec{
                    if let Some(&arg_et_node) = rc_symidx_et_node_map.get(&arg){
                        debug_info_blue!("find arg et_node {:?},{}",arg,arg_et_node);
                        add_edge!({EtEdgeType::Direct.into()} from call_et_node to arg_et_node in instr_et);
                    }else{
                        if arg.as_ref_borrow().is_literal(){
                            let literal_et_struct:EtNode = EtNodeType::new_literal(0, arg.clone()).into();
                            let literal_et_node = add_node_with_edge!({literal_et_struct} with_edge {EtEdgeType::Direct.into()} from call_et_node in instr_et);
                            rc_symidx_et_node_map.insert(arg.clone(), literal_et_node);
                        }else {
                            let arg_ty = symtab.get(&arg.as_ref_borrow().to_src_symidx())?.get_type()?;
                            if arg_ty.is_array()||arg_ty.is_ptr_64() {
                                let mut ptr_et_struct:EtNode = EtNodeType::new_symbol(0, arg.clone(), crate::toolkit::et_node::DeclOrDefOrUse::Use).into();
                                ptr_et_struct.equivalent_symidx_vec.push(arg.clone());
                                let ptr_et_node = add_node_with_edge!({ptr_et_struct} with_edge {EtEdgeType::Direct.into()} from call_et_node in instr_et);
                                rc_symidx_et_node_map.insert(arg.clone(), ptr_et_node);
                            }else {
                                panic!();
                            }
                        }
                    }
                }
                instr_et_node_bimap.insert(instr,call_et_node);
                instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(call_et_node);
                //warning:还没写，忘了
                // todo!();
            },
            super::nhwc_instr::NhwcInstrType::Jump { jump_op } => {
            },
            super::nhwc_instr::NhwcInstrType::Phi { lhs: rc_lhs, rhs } => {
                if let Some(&lhs_et_node) = rc_symidx_et_node_map.get(&rc_lhs){
                    panic!();
                }else {
                    let mut flag = true;
                    let mut last_et_node = None;
                    for phi_pair in &rhs.phi_pairs{
                        if let Some(&et_node) = rc_symidx_et_node_map.get(&phi_pair.symidx){
                            if node!(at et_node in instr_et).et_node_type.is_literal(){
                                if last_et_node.is_some(){
                                    if last_et_node.unwrap() == et_node{
                                        flag = false;
                                        break;
                                    }
                                }else {
                                    last_et_node = Some(et_node)
                                }
                            }else {
                                flag = false;
                                break;
                            }
                        }else {
                            flag = false;
                            break;
                        }
                    }
                    if !flag {

                        let mut symbol_et_node_struct:EtNode = EtNodeType::new_symbol(0, rc_lhs.clone(), DeclOrDefOrUse::Use).into();
                        symbol_et_node_struct.equivalent_symidx_vec.push(rc_lhs.clone());
                        let symbol_et_node = add_node!({symbol_et_node_struct} to instr_et);

                        rc_symidx_et_node_map.insert(rc_lhs.clone(), symbol_et_node);
                        instr_et_node_bimap.insert(instr,symbol_et_node);
                    }else {
                        let literal_et_node = last_et_node.unwrap();
                        node_mut!(at literal_et_node in instr_et).equivalent_symidx_vec.push(rc_lhs.clone());
                    }
                }
            },
            super::nhwc_instr::NhwcInstrType::Mu { may_use_symidx, may_use_instr} => {
                let may_use_instr = *may_use_instr;
                match &instr!(at may_use_instr in instr_slab)?.instr_type{
                    NhwcInstrType::Load { lhs, ptr_symidx, ptr_ty } => {
                        if let Some(&et_node) = instr_et_node_bimap.get_by_left(&may_use_instr){
                            let may_use_node = if let Some(&may_use_node) = rc_symidx_et_node_map.get(may_use_symidx){
                                may_use_node
                            }else {
                                let mut ssa_global_version_et_node_struct:EtNode = EtNodeType::new_symbol(0, may_use_symidx.clone(), DeclOrDefOrUse::Use).into();
                                ssa_global_version_et_node_struct.equivalent_symidx_vec.push(may_use_symidx.clone());
                                let may_use_node = add_node!({ssa_global_version_et_node_struct} to instr_et);
                                rc_symidx_et_node_map.insert(may_use_symidx.clone(), may_use_node);
                                instr_et_node_bimap.insert(instr, may_use_node);
                                may_use_node
                            };
                            add_edge!({EtEdgeType::Mu.into()} from et_node to may_use_node in instr_et);
                            instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(may_use_node);
                        }else {
                            panic!();
                        }
                    }
                    NhwcInstrType::Call { op_lhs, func_op } => {
                        if let Some(&et_node) = instr_et_node_bimap.get_by_left(&may_use_instr){
                            let may_use_node = if let Some(&may_use_node) = rc_symidx_et_node_map.get(may_use_symidx){
                                may_use_node
                            }else {
                                let mut ssa_global_version_et_node_struct:EtNode = EtNodeType::new_symbol(0, may_use_symidx.clone(), DeclOrDefOrUse::Use).into();
                                ssa_global_version_et_node_struct.equivalent_symidx_vec.push(may_use_symidx.clone());
                                let may_use_node = add_node!({ssa_global_version_et_node_struct} to instr_et);
                                rc_symidx_et_node_map.insert(may_use_symidx.clone(), may_use_node);
                                instr_et_node_bimap.insert(instr, may_use_node);
                                may_use_node
                            };
                            add_edge!({EtEdgeType::Mu.into()} from et_node to may_use_node in instr_et);
                            instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(may_use_node);
                        }else {
                            panic!();
                        }
                    }
                    // NhwcInstrType::D
                    _ => {
                        // panic!("{:?} is not a store or call or define_func", instr!(at may_use_instr in instr_slab)?)
                    }
                }
            },
            super::nhwc_instr::NhwcInstrType::Chi { lhs, rhs, may_def_instr } => {
                let may_def_instr = *may_def_instr;
                match &instr!(at may_def_instr in instr_slab)?.instr_type{
                    NhwcInstrType::Store { val_symidx, value_ty, ptr_symidx, ptr_ty } => {
                        if let Some(&store_et_node) = instr_et_node_bimap.get_by_left(&may_def_instr){
                            let lhs_et_node = if let Some(&lhs_et_node) = rc_symidx_et_node_map.get(lhs){
                                lhs_et_node
                            }else {
                                let mut ssa_version_et_node_struct:EtNode = EtNodeType::new_symbol(0, lhs.clone(), DeclOrDefOrUse::Use).into();
                                ssa_version_et_node_struct.equivalent_symidx_vec.push(lhs.clone());
                                let ssa_version_et_node = add_node!({ssa_version_et_node_struct} to instr_et);
                                rc_symidx_et_node_map.insert(lhs.clone(), ssa_version_et_node);
                                instr_et_node_bimap.insert(instr, ssa_version_et_node);
                                ssa_version_et_node
                            };
                            add_edge!({EtEdgeType::Chi.into()} from lhs_et_node to store_et_node in instr_et);

                            let rhs_et_node = if let Some(&rhs_et_node) = rc_symidx_et_node_map.get(rhs){
                                rhs_et_node
                            }else {
                                let mut ssa_version_et_node_struct:EtNode = EtNodeType::new_symbol(0, rhs.clone(), DeclOrDefOrUse::Use).into();
                                ssa_version_et_node_struct.equivalent_symidx_vec.push(rhs.clone());
                                let ssa_last_version_et_node = add_node!({ssa_version_et_node_struct} to instr_et);
                                rc_symidx_et_node_map.insert(rhs.clone(), ssa_last_version_et_node);
                                instr_et_node_bimap.insert(instr, ssa_last_version_et_node);
                                ssa_last_version_et_node
                            };
                            add_edge!({EtEdgeType::Direct.into()} from store_et_node to rhs_et_node in instr_et);
                            instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(lhs_et_node);
                        }else {
                            panic!()
                        }
                    }
                    NhwcInstrType::Call { op_lhs, func_op } => {
                        if let Some(&store_et_node) = instr_et_node_bimap.get_by_left(&may_def_instr){
                            let lhs_global_et_node = if let Some(&lhs_et_node) = rc_symidx_et_node_map.get(lhs){
                                lhs_et_node
                            }else {
                                let mut ssa_version_et_node_struct:EtNode = EtNodeType::new_symbol(0, lhs.clone(), DeclOrDefOrUse::Use).into();
                                ssa_version_et_node_struct.equivalent_symidx_vec.push(lhs.clone());
                                let ssa_version_et_node = add_node!({ssa_version_et_node_struct} to instr_et);
                                rc_symidx_et_node_map.insert(lhs.clone(), ssa_version_et_node);
                                instr_et_node_bimap.insert(instr, ssa_version_et_node);
                                ssa_version_et_node
                            };
                            add_edge!({EtEdgeType::Chi.into()} from lhs_global_et_node to store_et_node in instr_et);
                            instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(lhs_global_et_node);
                        }else {
                            panic!()
                        }
                    }
                    NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
                        if let Some(&func_et_node) = instr_et_node_bimap.get_by_left(&may_def_instr){
                            let lhs_global_et_node = if let Some(&lhs_et_node) = rc_symidx_et_node_map.get(lhs){
                                lhs_et_node
                            }else {
                                let mut ssa_version_et_node_struct:EtNode = EtNodeType::new_symbol(0, lhs.clone(), DeclOrDefOrUse::Use).into();
                                ssa_version_et_node_struct.equivalent_symidx_vec.push(lhs.clone());
                                let ssa_version_et_node = add_node!({ssa_version_et_node_struct} to instr_et);
                                rc_symidx_et_node_map.insert(lhs.clone(), ssa_version_et_node);
                                instr_et_node_bimap.insert(instr, ssa_version_et_node);
                                ssa_version_et_node
                            };
                            add_edge!({EtEdgeType::Chi.into()} from lhs_global_et_node to func_et_node in instr_et);
                            instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(lhs_global_et_node);
                        }else {
                            panic!()
                        }

                    }
                    _ => {
                        panic!("{:?} is not a store or call or define_func", instr!(at may_def_instr in instr_slab)?)
                    }
                }

            },
            super::nhwc_instr::NhwcInstrType::TranType { lhs: rc_lhs, op } => {
                match op{
                    super::nhwc_instr::Trans::Fptosi { float_symidx } => {
                        let et_node =process_trans_et(rc_lhs,float_symidx,symtab, instr, rc_symidx_et_node_map,instr_et_node_bimap,scope_tree, 0,  instr_et)?;
                        instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(et_node);
                    },
                    super::nhwc_instr::Trans::Sitofp { int_symidx } => {
                        let et_node =process_trans_et(rc_lhs,int_symidx,symtab, instr, rc_symidx_et_node_map,instr_et_node_bimap,scope_tree, 0,  instr_et)?;
                        instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(et_node);
                    },
                    super::nhwc_instr::Trans::Zext { bool_symidx } => {
                        let et_node =process_trans_et(rc_lhs,bool_symidx,symtab, instr, rc_symidx_et_node_map,instr_et_node_bimap,scope_tree, 0,  instr_et)?;
                        instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(et_node);
                    },
                    super::nhwc_instr::Trans::Bitcast { rptr_symidx, rptr_type:_, lptr_type:_ } => {
                        let et_node =process_trans_et(rc_lhs,rptr_symidx,symtab, instr, rc_symidx_et_node_map,instr_et_node_bimap,scope_tree, 0,  instr_et)?;
                        instr_mut!(at instr in instr_slab)?.add_cor_instr_et_node(et_node);
                    },
                }
            },
            // super::nhwc_instr::NhwcInstrType::BreakPoint { symidx, breakpoint_args } => todo!(),
            // super::nhwc_instr::NhwcInstrType::Nope {  } => todo!(),
            _ => {},
        }
    };
    Ok(())
}

pub fn process_child_instr_et<'a,'b:'a>(instr_et_node:u32,instr_et:&'b EtTree, symtab:&'a SymTab)->Result<(&'b RcSymIdx,&'b RcSymIdx,Type)>{
    let instr_etnode_children = direct_et_child_nodes!(at instr_et_node in instr_et);
    let a_etnode = instr_etnode_children[0];
    let b_etnode = instr_etnode_children[1];
    let rc_a = first_rc_symidx_in_et_node_may_literal(a_etnode, instr_et)?;
    let rc_b = first_rc_symidx_in_et_node_may_literal(b_etnode, instr_et)?;
    let symidx_type = rc_a.as_ref_borrow().get_ty(&symtab)?;

    Ok((rc_a,rc_b,symidx_type))
}

/// this function may create temp symbol so you need to specify a closure
// pub fn process_instr_et(instr_et_node:u32,instr_et:&mut EtTree, instr_list:&mut InstrList,symtab:&mut SymTab, instr_et_node_bimap:&BiMap<usize,u32>,instr_slab:&mut InstrSlab<NhwcInstr> ,reg_temp_f:&mut impl FnMut(&str,&Type,&mut SymTab, &mut EtTree, &mut InstrSlab<NhwcInstr>)-> Result<RcSymIdx>) -> Result<()>{
//     Ok(match &node!(at instr_et_node in instr_et).et_node_type{
//         EtNodeType::Operator { op, ast_node, text, op_rc_symidx } => {
//             // println!("{:?}",&node!(at instr_et_node in instr_et));
//             match op{
//                 super::et_node::ExprOp::Mul =>{
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let (a_rcsymidx,b_rcsymidx,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_mul(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                 },
//                 super::et_node::ExprOp::Add => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     // println!("get lhs_rc_symidx in Add {:?}",lhs_rcsymidx);
//                     let (a_rcsymidx,b_rcsymidx,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_add(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                 },
//                 super::et_node::ExprOp::Sub => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let (a_rcsymidx,b_rcsymidx,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_sub(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                 },
//                 super::et_node::ExprOp::Div => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let (a_rcsymidx,b_rcsymidx,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_div(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                 },
//                 super::et_node::ExprOp::Assign => todo!(),
//                 super::et_node::ExprOp::LogicalOr => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let (a_rcsymidx,b_rcsymidx,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_logic_or(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                 },
//                 super::et_node::ExprOp::LogicalAnd => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let (a_rcsymidx,b_rcsymidx,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_logic_and(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                 },
//                 super::et_node::ExprOp::LogicalNot => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let child_et_node = direct_et_child_node!(at instr_et_node in instr_et);
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(Type::I1, lhs_rcsymidx.clone(), None).into()));
//                     let rc_symidx = first_rc_symidx_in_et_node_may_literal(child_et_node, instr_et)?;
//                     let var_type = symtab.get(&rc_symidx.as_ref_borrow().to_src_symidx())?.get_type()?;
//                     instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_logic_not(lhs_rcsymidx.clone(), rc_symidx.clone(), var_type.clone()).into()));
//                 },
//                 // super::et_node::ExprOp::BitwiseOr => todo!(),
//                 // super::et_node::ExprOp::BitwiseAnd => todo!(),
//                 // super::et_node::ExprOp::BitwiseXor => todo!(),
//                 // super::et_node::ExprOp::BitwiseNot => todo!(),
//                 super::et_node::ExprOp::Eq => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let (a_rcsymidx,b_rcsymidx,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     match ty{
//                         Type::I32 => {
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Eq,a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                         },
//                         Type::F32 =>{
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_fcmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::FcmpPlan::Oeq,a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                         },
//                         _ => todo!(),
//                     }
//                 },
//                 super::et_node::ExprOp::NEq =>{
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let (a_rcsymidx,b_rcsymidx,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     match ty{
//                         Type::I32 => {
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Ne,a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                         },
//                         Type::F32 =>{
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_fcmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::FcmpPlan::One,a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                         },
//                         Type::I1 =>{
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Ne,a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                         },
//                         _ => {panic!()}
//                     }
//                 },
//                 super::et_node::ExprOp::Less => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let (a_rcsymidx,b_rcsymidx,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     match ty{
//                         Type::I32 => {
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Slt,a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                         },
//                         Type::F32 =>{
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_fcmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::FcmpPlan::Olt,a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                         },
//                         _ => todo!(),
//                     }
//                 },
//                 super::et_node::ExprOp::Greater => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let (a_rcsymidx,b_rcsymidx,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     match ty{
//                         Type::I32 => {
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Sgt,a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                         },
//                         Type::F32 =>{
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_fcmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::FcmpPlan::Ogt,a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                         },
//                         _ => todo!(),
//                     }
//                 },
//                 super::et_node::ExprOp::LEq => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let (a_rcsymidx,b_rcsymidx,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     match ty{
//                         Type::I32 => {
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Sle,a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                         },
//                         Type::F32 =>{
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_fcmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::FcmpPlan::Ole,a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                         },
//                         _ => todo!(),
//                     }
//                 },
//                 super::et_node::ExprOp::GEq => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let (rc_a,rc_b,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     match ty{
//                         Type::I32 => {
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Sge,rc_a.clone(), rc_b.clone(),ty.clone()).into()));
//                         },
//                         Type::F32 =>{
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_fcmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::FcmpPlan::Oge,rc_a.clone(), rc_b.clone(),ty.clone()).into()));
//                         },
//                         _ => todo!(),
//                     }
//                 },
//                 // super::et_node::ExprOp::LShift => todo!(),
//                 // super::et_node::ExprOp::RShift => todo!(),
//                 super::et_node::ExprOp::Mod => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let (a_rcsymidx,b_rcsymidx,ty) = process_child_instr_et(instr_et_node, instr_et, symtab)?;
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), lhs_rcsymidx.clone(), None).into()));
//                     instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_mod(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),ty.clone()).into()));
//                 },
//                 // super::et_node::ExprOp::Cast => todo!(),
//                 super::et_node::ExprOp::Call => {
//                     let op_rc_assigned_symidx = if node!(at instr_et_node in instr_et).equivalent_symidx_vec.len() ==0 { None
//                     }else { Some(first_rc_symidx_in_et_node(instr_et_node, instr_et)?.clone()) };
//                     let ret_type = if let Some(rc_assigned) = &op_rc_assigned_symidx{
//                         let ty = symtab.get(&rc_assigned.as_ref_borrow().to_src_symidx())?.get_type()?.clone();
//                         // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), rc_assigned.clone(), None).into()));
//                         ty
//                     }
//                     else { Type::Void };
//                     let func_name_and_args = direct_et_child_nodes!(at instr_et_node in instr_et);
//                     let func_name_node = func_name_and_args[0];
//                     let func_name_rcsymidx = if let EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } = &node!(at func_name_node in instr_et).et_node_type{
//                         rc_symidx.clone()
//                     }else{ panic!() };
//                     let mut args = vec![];
//                     for &arg_et_node in &func_name_and_args[1..]{
//                         let rc_arg = match &node!(at arg_et_node in instr_et).et_node_type {
//                             EtNodeType::Literal { rc_literal_symidx, ast_node, text } => {
//                                 rc_literal_symidx.clone() },
//                             _ => { first_rc_symidx_in_et_node(arg_et_node, instr_et)?.clone() }
//                         };
//                         args.push(rc_arg.clone());
//                     }
//                     let call_instr = instr_slab.insert_instr(NhwcInstrType::new_func_call(op_rc_assigned_symidx, func_name_rcsymidx.clone(), args, ret_type).into());
//                     instr_list.push(call_instr);
//                     for mu_node in direct_et_mu_child_nodes!(at instr_et_node in instr_et){
//                         instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_mu(first_rc_symidx_in_et_node(mu_node, instr_et)?.clone(), call_instr).into()));
//                     }
//                     for chi_node in direct_et_chi_parent_nodes!(at instr_et_node in instr_et){
//                         let rhs_last_ssa_version = match instr_et_node_bimap.get_by_right(&chi_node){
//                             Some(&chi_instr) => {
//                                 match &instr!(at chi_instr in instr_slab)?.instr_type{
//                                     NhwcInstrType::Chi { lhs, rhs, may_def_instr } => {
//                                         rhs.clone()
//                                     },
//                                     _ => { panic!() } } },
//                             None => panic!(),
//                         };

//                         instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_chi(first_rc_symidx_in_et_node(chi_node, instr_et)?.clone(),rhs_last_ssa_version, call_instr).into()));
//                     }
//                 },
//                 super::et_node::ExprOp::Negative => {
//                     todo!()
//                 },
//                 super::et_node::ExprOp::Positive => todo!(),
//                 // super::et_node::ExprOp::AddrOf => todo!(),
//                 // super::et_node::ExprOp::Deref => todo!(),
//                 // super::et_node::ExprOp::DotMember => todo!(),
//                 // super::et_node::ExprOp::ArrowMember => todo!(),
//                 // super::et_node::ExprOp::LPlusPlus => todo!(),
//                 // super::et_node::ExprOp::RPlusPlus => todo!(),
//                 // super::et_node::ExprOp::LMinusMinus => todo!(),
//                 // super::et_node::ExprOp::RMinusMinus => todo!(),
//                 // super::et_node::ExprOp::MulAssign => todo!(),
//                 // super::et_node::ExprOp::DivAssign => todo!(),
//                 // super::et_node::ExprOp::PlusAssign => todo!(),
//                 // super::et_node::ExprOp::MinusAssign => todo!(),
//                 super::et_node::ExprOp::ArrayIndex => {
//                     let child_et_nodes = direct_et_child_nodes!(at instr_et_node in instr_et);
//                     // only when we have equivalent_symidx_vec we generate the instruction 
//                     if (direct_parent_nodes!(at instr_et_node in instr_et).len()>1 || {let parent = direct_parent_node!(at instr_et_node in instr_et);
//                         match &node!(at parent in instr_et).et_node_type{
//                             EtNodeType::Operator { op, ast_node, text, op_rc_symidx } => { !op.is_array_index() },
//                             _ => {true}
//                         }
//                     }){
//                         // collect all dims of this GEP 
//                         let mut dim_vec = vec![];
//                         let mut last_et_node = child_et_nodes[0];
//                         loop{
//                             if node!(at last_et_node in instr_et).equivalent_symidx_vec.len() == 0{
//                                 let child_nodes_of_array_idx = direct_et_child_nodes!(at last_et_node in instr_et);
//                                 let cor_dim_node = child_nodes_of_array_idx[1];
//                                 let rc_dim = first_rc_symidx_in_et_node_may_literal(cor_dim_node, instr_et)?;
//                                 dim_vec.insert(0,Some(rc_dim.clone()));
//                                 last_et_node = child_nodes_of_array_idx[0];
//                             }else {
//                                 break;
//                             }
//                         }
//                         let cor_dim_node = child_et_nodes[1];
//                         let rc_dim = first_rc_symidx_in_et_node_may_literal(cor_dim_node, instr_et)?;
//                         dim_vec.push(Some(rc_dim.clone()));
                        
//                         // let array_symidx = get_array_symbol_of_array_index_op_or_symbol_node(instr_et_node, instr_et).clone();
//                         let rc_rhs_ptr = first_rc_symidx_in_et_node(last_et_node, instr_et)?.clone();
//                         let rhs_ptr_ty = symtab.get(&rc_rhs_ptr.as_ref_borrow().to_src_symidx())?.get_type()?.clone();
//                         let mut new_ptr_ty = rhs_ptr_ty.clone().try_arr2ptr()?;
//                         for i in 0..dim_vec.len(){
//                             new_ptr_ty.pop_dim()?
//                         }
//                         debug_info_red!("the new_ptr_ty is {:?}",new_ptr_ty);
//                         if node!(at instr_et_node in instr_et).equivalent_symidx_vec.len() == 0{
//                             // generate the instr
//                             let temp_symidx = reg_temp_f("mid_idx",&new_ptr_ty,symtab, instr_et, instr_slab)?;
//                             let rc_temp = symtab.get_symidx_cor_rc(&temp_symidx.as_ref_borrow())?.clone();
//                             node_mut!(at instr_et_node in instr_et).equivalent_symidx_vec.push(rc_temp);
//                         }
//                         let rc_lhs_ptr = first_rc_symidx_in_et_node(instr_et_node, instr_et)?.clone();

//                         // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(new_ptr_ty.clone(), rc_lhs_ptr.clone(), None).into()));
//                         instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_get_element_ptr(rc_lhs_ptr.clone(), rc_rhs_ptr, rhs_ptr_ty, dim_vec).into()));
//                     }else {
//                         ()
//                     }
//                 },
//                 super::et_node::ExprOp::ArrayWrapper => todo!(),
//                 super::et_node::ExprOp::Store => {
//                     let child_et_nodes = direct_et_child_nodes!(at instr_et_node in instr_et);
//                     let rc_ptr = first_rc_symidx_in_et_node(child_et_nodes[1] , instr_et)?;
                    
//                     let chi_node = direct_et_chi_parent_node!(at instr_et_node in instr_et);
//                     let rc_chi_new_ssa_version = first_rc_symidx_in_et_node(chi_node , instr_et)?;
//                     let rc_chi_last_ssa_version = match instr_et_node_bimap.get_by_right(&chi_node){
//                         Some(&chi_instr) => {
//                             match &instr!(at chi_instr in instr_slab)?.instr_type{
//                                 NhwcInstrType::Chi { lhs, rhs, may_def_instr } => {
//                                     rhs.clone()
//                                 },
//                                 _ => { panic!() } } },
//                         None => panic!(),
//                     };
//                     let rc_val = first_rc_symidx_in_et_node_may_literal(child_et_nodes[0] , instr_et)?;
//                     let ptr_ty = rc_ptr.as_ref_borrow().get_ty(symtab)?;
//                     let val_ty = rc_val.as_ref_borrow().get_ty(symtab)?;
//                     let store_instr = instr_slab.insert_instr(NhwcInstrType::new_store(rc_ptr.clone(),ptr_ty, rc_val.clone(), val_ty).into());
//                     instr_list.push(store_instr);
//                     instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_chi(rc_chi_new_ssa_version.clone(),rc_chi_last_ssa_version,store_instr ).into()));
//                 },
//                 super::et_node::ExprOp::Load => {
//                     let rc_lhs = first_rc_symidx_in_et_node(instr_et_node, instr_et)?;
//                     let child_nodes = direct_et_child_nodes!(at instr_et_node in instr_et);
//                     let rc_ptr = first_rc_symidx_in_et_node( child_nodes[0], instr_et)?;
//                     let rc_ssa_array = first_rc_symidx_in_et_node( direct_et_mu_child_node!(at instr_et_node in instr_et), instr_et)?;
//                     let ptr_ty = symtab.get(&rc_ptr.as_ref_borrow().to_src_symidx())?.get_type()?.clone();
//                     // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ptr_ty.to_deref_ptr_type()?, rc_lhs.clone(), None).into()));
//                     let load_instr = instr_slab.insert_instr(NhwcInstrType::new_load(rc_lhs.clone(), rc_ptr.clone(), ptr_ty).into());
//                     instr_list.push(load_instr);
//                     instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_mu(rc_ssa_array.clone(),load_instr ).into()));
//                 },
//                 super::et_node::ExprOp::TransToI32 => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let child_et_node = direct_et_child_node!(at instr_et_node in instr_et);
//                     let rc_symidx = first_rc_symidx_in_et_node(child_et_node , instr_et)?;
//                     let var_type = symtab.get(&rc_symidx.as_ref_borrow().to_src_symidx())?.get_type()?;

//                     match var_type{
//                         Type::F32 => {
//                             let float_rcsymidx = first_rc_symidx_in_et_node_may_literal(child_et_node, instr_et)?;
//                             // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(Type::I32, lhs_rcsymidx.clone(), None).into()));
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_float2int(float_rcsymidx.clone(), lhs_rcsymidx.clone()).into()));
//                         },
//                         Type::I1 => {
//                             let bool_rcsymidx = first_rc_symidx_in_et_node_may_literal(child_et_node, instr_et)?;
//                             // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(Type::I32, lhs_rcsymidx.clone(), None).into()));
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_bool2int(bool_rcsymidx.clone(), lhs_rcsymidx.clone()).into()));
//                         },
//                         _ => todo!()
//                     }
//                 },
//                 super::et_node::ExprOp::TransToF32 => {
//                     let lhs_rcsymidx = first_rc_symidx_in_et_node(instr_et_node , instr_et)?.clone();
//                     let child_etnode = direct_et_child_node!(at instr_et_node in instr_et);
//                     let rc_symidx = first_rc_symidx_in_et_node(child_etnode , instr_et)?;
//                     let var_type = symtab.get(&rc_symidx.as_ref_borrow().to_src_symidx())?.get_type()?;
//                     match var_type{
//                         Type::I32 => {
//                             let int_rcsymidx = first_rc_symidx_in_et_node(child_etnode, instr_et)?;
//                             // instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(Type::F32, lhs_rcsymidx.clone(), None).into()));
//                             instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_int2float(int_rcsymidx.clone(), lhs_rcsymidx.clone()).into()));
//                         },
//                         // Type::I1 => {
//                         //     let bool_rcsymidx = if let EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } = &node!(at child_etnode in instr_et).et_node_type{
//                         //         rc_symidx
//                         //     }else{
//                         //         return Err(anyhow!("?"));
//                         //     };
//                         //     let new_instr1:NhwcInstr = NhwcInstrType::new_bool2int(bool_rcsymidx.clone(), lhs_rcsymidx.clone()).into();
//                         //     println!("{:?}",new_instr1);
//                         //     let new_instr2:NhwcInstr = NhwcInstrType::new_int2float(bool_rcsymidx.clone(), lhs_rcsymidx.clone()).into();
//                         //     println!("{:?}",new_instr2);
//                         // },
//                         _ => todo!()
//                     }
//                 },
//                 super::et_node::ExprOp::TransToI1 => todo!(),
//                 _ => todo!()
//             }
//         },
//         EtNodeType::Literal { rc_literal_symidx, ast_node, text } => {
//             if node!(at instr_et_node in instr_et).equivalent_symidx_vec.len()>0{
//                 let rc_symidx = first_rc_symidx_in_et_node(instr_et_node, instr_et)?;
//                 let ty = rc_literal_symidx.as_ref_borrow().get_ty(&symtab)?;
//                 instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), rc_symidx.clone(), None).into()));
//                 instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_assign(rc_symidx.clone(),rc_literal_symidx.clone() ,ty.clone()).into()));
//             }else {()}
//             // just do nothing because we can ensure that all the symbbol can be replaced by he literal 
//         },
//         EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } => {
//             if node!(at instr_et_node in instr_et).equivalent_symidx_vec.len()>0{
//                 let rc_symidx = first_rc_symidx_in_et_node(instr_et_node, instr_et)?;
//                 if rc_symidx.as_ref_borrow().index_ssa == Some(0) {
//                     let rc_src_symidx = first_rc_symidx_in_et_node(instr_et_node, instr_et)?.as_ref_borrow().to_src_symidx().as_rc();
//                     let ty = symtab.get(&rc_src_symidx.as_ref_borrow())?.get_type()?;
//                     let is_global = symtab.get(&rc_src_symidx.as_ref_borrow())?.get_is_global()?;
//                     if !is_global{
//                         instr_list.push(instr_slab.insert_instr(NhwcInstrType::new_def_var(ty.clone(), rc_symidx.clone(), None).into()));
//                     }
//                 }
                
//             }else {()}
//             // do nothing because only it is used then we thought it is useful
//         },
//         EtNodeType::Separator { ast_node, text } => todo!(),
//     })
// }

/// return the first symidx in equivalent_symidx_vec
pub fn first_rc_symidx_in_et_node(instr_et_node:u32, instr_et:&EtTree) -> Result<&RcSymIdx>{
    // for symidx in &node!(at instr_et_node in instr_et).equivalent_symidx_vec {
    //     if !symidx.as_ref_borrow().symbol_name.starts_with("temp"){ continue; }
    //     return Ok(symidx)
    // }
    node!(at instr_et_node in instr_et).equivalent_symidx_vec.get(0).ok_or(anyhow!("can't find any equivalent_symidx in {:?} et_node:{}",node!(at instr_et_node in instr_et),instr_et_node))
}
pub fn first_rc_symidx_in_et_node_struct(instr_et_node_struct:&EtNode) -> Result<&RcSymIdx>{
    // for symidx in &node!(at instr_et_node in instr_et).equivalent_symidx_vec {
    //     if !symidx.as_ref_borrow().symbol_name.starts_with("temp"){ continue; }
    //     return Ok(symidx)
    // }
    instr_et_node_struct.equivalent_symidx_vec.get(0).ok_or(anyhow!("can't find any equivalent_symidx in {:?} et_node:{}",instr_et_node_struct,0))
}

/// return the literal symidx or first non-temp if equivalent_symidx_vec has non-temp symidx 
/// else return the first symidx 
pub fn first_rc_symidx_in_et_node_may_literal(instr_et_node:u32, instr_et:&EtTree) -> Result<&RcSymIdx>{
    Ok(match &node!(at instr_et_node in instr_et).et_node_type{
        EtNodeType::Operator { op, ast_node, text, op_rc_symidx } => {
           first_rc_symidx_in_et_node(instr_et_node, instr_et)?
        },
        EtNodeType::Literal { rc_literal_symidx, ast_node, text } => { 
            rc_literal_symidx
        },
        EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } => { 
           first_rc_symidx_in_et_node(instr_et_node, instr_et)?
        },
        EtNodeType::Separator { ast_node, text } => {
            panic!()
        },
    })
}

pub fn get_array_symbol_of_array_index_op_or_symbol_node(et_node:u32, instr_et:&EtTree) -> &RcSymIdx{
    match &node!(at et_node in instr_et).et_node_type{
        EtNodeType::Operator { op, ast_node, text, op_rc_symidx } => {
            match op{
                super::et_node::ExprOp::ArrayIndex => {
                    let mut last_et_node = et_node; 
                    while !node!(at last_et_node in instr_et).et_node_type.is_symbol(){
                        last_et_node = direct_et_child_nodes!(at last_et_node in instr_et)[0];
                    }
                    match &node!(at last_et_node in instr_et).et_node_type{
                        EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } => {
                            &rc_symidx
                        },
                        _ => {panic!()}
                    }
                    
                },
                _ => {
                    panic!()
                }
            }
        },
        EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } => {
            &rc_symidx
        }
        _ => panic!("find no array rc_symidx of this array index node:{}",et_node),
    }
}