use std::{any::Any, rc, thread::scope};

use ahash::{HashMap, HashSet};
use petgraph::graph::Edge;

use crate::{add_edge, add_node, add_node_with_edge, debug_info_blue, debug_info_red, direct_child_node, direct_child_nodes, get_ast_from_symidx, node, node_mut, passes::symtab_debug_pass, toolkit::{et_node::DeclOrDefOrUse, field::Type, gen_nhwc_cfg::IS_LITERAL, nhwc_instr::NhwcInstrType, symbol, symtab::WithBorrow}};
use anyhow::{anyhow, Ok, Result};
use super::{et_node::{EtEdgeType, EtNode, EtNodeType, EtTree}, field::Value, nhwc_instr::{ArithOp, InstrSlab, NhwcInstr}, scope_node::ScopeTree, symtab::{self, RcSymIdx, SymIdx, SymTab}};

pub fn process_arith_et(rc_lhs:&RcSymIdx,rc_a:&RcSymIdx, rc_b:&RcSymIdx,instr:usize, mut arith_et_struct:EtNode, instr_et:&mut EtTree,rc_symidx_et_node_map:&mut HashMap<RcSymIdx,u32>,scope_tree:&ScopeTree, instr_et_node_map:&mut HashMap<usize,u32>){
    arith_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
    let arith_et = add_node!({arith_et_struct} to instr_et);
    rc_symidx_et_node_map.insert(rc_lhs.clone(), arith_et);
    instr_et_node_map.insert(instr,arith_et);
    let lhs = rc_lhs.as_ref_borrow();
    let a = rc_a.as_ref_borrow();
    let b = rc_b.as_ref_borrow();
    debug_info_blue!("lhs:{:?} a:{:?} b:{:?}",rc_lhs,a,b,);
    //查找操作数，有的话连边，没有 panic
    if let Some(&a_node) = rc_symidx_et_node_map.get(&rc_a){
        add_edge!({EtEdgeType::Direct.into()} from arith_et to a_node in instr_et);
    }else{
        if a.is_literal(){
            let literal_et_struct:EtNode = EtNodeType::new_literal(0, rc_a.clone()).into();
            // literal_et_struct.equivalent_symidx_vec.push(rc_a.clone());
            let literal_et_node = add_node!({literal_et_struct} to instr_et);
            add_edge!({EtEdgeType::Direct.into()} from arith_et to literal_et_node in instr_et);
            rc_symidx_et_node_map.insert(rc_a.clone(), literal_et_node);
        }else {
            panic!();
        }
    }
    if let Some(&b_node) = rc_symidx_et_node_map.get(&rc_b){
        add_edge!({EtEdgeType::Direct.into()} from arith_et to b_node in instr_et);
    }else{
        if b.is_literal(){
            let literal_et_struct:EtNode = EtNodeType::new_literal(0, rc_b.clone()).into();
            // literal_et_struct.equivalent_symidx_vec.push(rc_b.clone());
            let literal_et_node = add_node!({literal_et_struct} to instr_et);
            add_edge!({EtEdgeType::Direct.into()} from arith_et to literal_et_node in instr_et);
            rc_symidx_et_node_map.insert(rc_b.clone(), literal_et_node);
        }else {
            panic!();
        }
    }
}

pub fn process_trans_et(rc_lhs:&RcSymIdx,rc_rhs:&RcSymIdx,symtab:&SymTab,instr:usize,rc_symidx_et_node_map:&mut HashMap<RcSymIdx,u32>,instr_et_node_map:&mut HashMap<usize,u32>,scope_tree:&ScopeTree,to_trans_ast:u32,instr_et:&mut EtTree)-> Result<()>{
    let lhs = rc_lhs.as_ref_borrow();
    let rhs_symidx = rc_rhs.as_ref_borrow();
    let mut lhs_et_struct:EtNode = EtNodeType::new_trans_to(0, symtab.get(&lhs.to_src_symidx())?.get_type()?).into();
    lhs_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
    let lhs_et_node = add_node!({lhs_et_struct} to instr_et);
    instr_et_node_map.insert(instr, lhs_et_node);

    if let Some(&rhs_et_node) = rc_symidx_et_node_map.get(&rc_rhs){
        add_edge!({EtEdgeType::Direct.into()} from lhs_et_node to rhs_et_node in instr_et);
    }else{
        let rhs_et_node = add_node_with_edge!({EtNodeType::new_symbol(0, rc_rhs.clone(), super::et_node::DeclOrDefOrUse::Use).into()} with_edge {EtEdgeType::Direct.into()} from lhs_et_node in instr_et);
        node_mut!(at rhs_et_node in instr_et).equivalent_symidx_vec.push(rc_lhs.clone());
        rc_symidx_et_node_map.insert(rc_rhs.clone(), rhs_et_node);
    }
    rc_symidx_et_node_map.insert(rc_lhs.clone(), lhs_et_node);
    Ok(())
}

use crate::instr;
pub fn parse_instr_list_to_et(instrs:impl Iterator<Item = usize>, instr_et:&mut EtTree, symtab:&SymTab, rc_symidx_et_node_map:&mut HashMap<RcSymIdx,u32>, instr_et_node_map:&mut HashMap<usize,u32>, scope_tree:&ScopeTree, instr_slab:&InstrSlab<NhwcInstr>) -> Result<()>{
    for instr in instrs{
        let instr_struct = instr!(at instr in instr_slab)?;
        debug_info_blue!("instr_et {:?}",instr_struct);
        match &instr_struct.instr_type{
            // super::nhwc_instr::NhwcInstrType::Label { label_symidx } => todo!(),
            super::nhwc_instr::NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
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
            },
            super::nhwc_instr::NhwcInstrType::DefineVar { var_symidx, vartype, op_value } => {
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
                instr_et_node_map.insert(instr,load_et_node);
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
                rc_symidx_et_node_map.insert(rc_val_symidx.clone(), store_et_node);
                instr_et_node_map.insert(instr,store_et_node);
            },
            super::nhwc_instr::NhwcInstrType::GetElementPtr { lhs, ptr_symidx, array_ty, idx_vec } => {
                //获取索引
                let array_dims = idx_vec;
                let array_or_ptr_symidx = ptr_symidx.as_ref_borrow();
                let arr_ast = get_ast_from_symidx!(find array_or_ptr_symidx with scope_tree);
                //构建数组名称节点

                // we choose to put the lhs symidx to the last et_node generated by getelementptr
                let mut last_et_node = if let Some(&ptr_et_node ) = rc_symidx_et_node_map.get(&ptr_symidx){
                    ptr_et_node
                }else {
                    let mut ptr_et_struct:EtNode = EtNodeType::new_symbol(arr_ast, ptr_symidx.clone(), crate::toolkit::et_node::DeclOrDefOrUse::Use).into();
                    ptr_et_struct.equivalent_symidx_vec.push(ptr_symidx.clone());
                    let ptr_et_node = add_node!({ptr_et_struct} to instr_et);
                    rc_symidx_et_node_map.insert(ptr_symidx.clone(), ptr_et_node);
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
                instr_et_node_map.insert(instr,last_et_node);
            },
            super::nhwc_instr::NhwcInstrType::Arith { lhs: rc_lhs, rhs } => {
                let lhs = rc_lhs.as_ref_borrow();
                match rhs{
                    super::nhwc_instr::ArithOp::Add { a, b, vartype:_ } => {
                        let arith_et_struct:EtNode = EtNodeType::new_op_add(0).into();
                        //添加操作符和操作数节点
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                    },
                    super::nhwc_instr::ArithOp::Mul { a, b, vartype:_ } => {
                        let arith_et_struct:EtNode = EtNodeType::new_op_mul(0).into();
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                    },
                    super::nhwc_instr::ArithOp::Div { a, b, vartype:_et_node } => {
                        let arith_et_struct:EtNode = EtNodeType::new_op_div(0).into();
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                    },
                    super::nhwc_instr::ArithOp::Sub { a, b, vartype:_ } =>{
                        let arith_et_struct:EtNode = EtNodeType::new_op_sub(0).into();
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                    },
                    super::nhwc_instr::ArithOp::Mod { a, b, vartype:_ } => {
                        let arith_et_struct:EtNode = EtNodeType::new_op_mod(0).into();
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                    },
                    super::nhwc_instr::ArithOp::Icmp { plan, a, b, vartype } => {
                        match plan{
                            super::nhwc_instr::IcmpPlan::Eq => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::IcmpPlan::Ne => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_not_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::IcmpPlan::Ugt => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_greater_than(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::IcmpPlan::Uge => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_greater_than_or_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::IcmpPlan::Ult => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_less_than(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::IcmpPlan::Ule => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_less_than_or_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::IcmpPlan::Sgt => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_greater_than(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::IcmpPlan::Sge => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_greater_than_or_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::IcmpPlan::Slt => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_less_than(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::IcmpPlan::Sle => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_less_than_or_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                        }
                    },
                    super::nhwc_instr::ArithOp::Fcmp { plan, a, b, vartype:_ } => {
                        match plan{
                            super::nhwc_instr::FcmpPlan::Oeq => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::FcmpPlan::One => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_not_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::FcmpPlan::Ogt => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_greater_than(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::FcmpPlan::Oge => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_greater_than_or_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::FcmpPlan::Olt => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_less_than(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                            super::nhwc_instr::FcmpPlan::Ole => {
                                let arith_et_struct:EtNode = EtNodeType::new_op_less_than_or_equal(0).into();
                                process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                            },
                        }
                    },
                    super::nhwc_instr::ArithOp::LogicAnd { a, b, vartype } => {
                        let arith_et_struct:EtNode = EtNodeType::new_op_logical_and(0).into();
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map );
                    },
                    super::nhwc_instr::ArithOp::LogicOr { a, b, vartype } => {
                        let arith_et_struct:EtNode = EtNodeType::new_op_logical_or(0).into();
                        process_arith_et(rc_lhs,a, b,instr,arith_et_struct,instr_et,rc_symidx_et_node_map,scope_tree,instr_et_node_map);
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
                        instr_et_node_map.insert(instr,arith_et_node);
                    },
                }
            },
            super::nhwc_instr::NhwcInstrType::SimpleAssign { lhs: rc_lhs, rhs: rc_rhs, vartype:_ } => {
                let lhs = rc_lhs.as_ref_borrow();
                let rhs = rc_rhs.as_ref_borrow();
                if let Some(&rhs_et_node) = rc_symidx_et_node_map.get(&rc_rhs){
                    debug_info_blue!("anan{:?},{}",rhs,rhs_et_node);
                    let assign_et_struct = node_mut!(at rhs_et_node in instr_et);
                    assign_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
                    rc_symidx_et_node_map.insert(rc_lhs.clone(), rhs_et_node);
                    instr_et_node_map.insert(instr,rhs_et_node);
                }else{
                    if rhs.is_literal(){
                        let mut literal_et_struct:EtNode = EtNodeType::new_literal(0, rc_rhs.clone()).into();
                        literal_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
                        let literal_et_node = add_node!({literal_et_struct} to instr_et);
                        rc_symidx_et_node_map.insert(rc_lhs.clone(), literal_et_node);
                        instr_et_node_map.insert(instr,literal_et_node);
                    }else {
                        panic!();
                    }
                }
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
                
                if let Some(&func_et_node) = rc_symidx_et_node_map.get(&func_op.rc_func_symidx){
                    add_edge!({EtEdgeType::Direct.into()} from call_et_node to func_et_node in instr_et);
                }else{
                    let func_et_node_struct:EtNode = EtNodeType::new_symbol(0, func_op.rc_func_symidx.clone(), DeclOrDefOrUse::Use).into();
                    let func_et_node = add_node_with_edge!({func_et_node_struct} with_edge {EtEdgeType::Direct.into()} from call_et_node in instr_et);
                    rc_symidx_et_node_map.insert(func_op.rc_func_symidx.clone(), func_et_node);
                }
                for arg in &func_op.actual_arg_symidx_vec{
                    if let Some(&arg_et_node) = rc_symidx_et_node_map.get(&arg){
                        debug_info_blue!("find arg et_node {:?},{}",arg,arg_et_node);
                        add_edge!({EtEdgeType::Direct.into()} from call_et_node to arg_et_node in instr_et);
                    }else{
                        if arg.as_ref_borrow().is_literal(){
                            let mut literal_et_struct:EtNode = EtNodeType::new_literal(0, arg.clone()).into();
                            literal_et_struct.equivalent_symidx_vec.push(arg.clone());
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
                instr_et_node_map.insert(instr,call_et_node);
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
                        instr_et_node_map.insert(instr,symbol_et_node);
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
                        if let Some(&et_node) = instr_et_node_map.get(&may_use_instr){
                            let global_et_node = if let Some(&lhs_et_node) = rc_symidx_et_node_map.get(may_use_symidx){
                                lhs_et_node
                            }else {
                                let ssa_global_version_et_node_struct = EtNodeType::new_symbol(0, may_use_symidx.clone(), DeclOrDefOrUse::Use).into();
                                let ssa_global_version_et_node = add_node!({ssa_global_version_et_node_struct} to instr_et);
                                rc_symidx_et_node_map.insert(may_use_symidx.clone(), ssa_global_version_et_node);
                                ssa_global_version_et_node
                            };
                            add_edge!({EtEdgeType::Direct.into()} from et_node to global_et_node in instr_et);
                        }else {
                            panic!();
                        }
                    }
                    _ => {

                    }
                }
            },
            // super::nhwc_instr::NhwcInstrType::Chi { lhs, rhs, may_def_instr } => todo!(),
            super::nhwc_instr::NhwcInstrType::TranType { lhs: rc_lhs, op } => {
                match op{
                    super::nhwc_instr::Trans::Fptosi { float_symidx } => {
                        process_trans_et(rc_lhs,float_symidx,symtab, instr, rc_symidx_et_node_map,instr_et_node_map,scope_tree, 0,  instr_et)?;
                    },
                    super::nhwc_instr::Trans::Sitofp { int_symidx } => {
                        process_trans_et(rc_lhs,int_symidx,symtab, instr, rc_symidx_et_node_map,instr_et_node_map,scope_tree, 0,  instr_et)?;
                    },
                    super::nhwc_instr::Trans::Zext { bool_symidx } => {
                        process_trans_et(rc_lhs,bool_symidx,symtab, instr, rc_symidx_et_node_map,instr_et_node_map,scope_tree, 0,  instr_et)?;
                    },
                    super::nhwc_instr::Trans::Bitcast { rptr_symidx, rptr_type:_, lptr_type:_ } => {
                        process_trans_et(rc_lhs,rptr_symidx,symtab, instr, rc_symidx_et_node_map,instr_et_node_map,scope_tree, 0,  instr_et)?;
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

pub fn process_child_instr_et(instr_et_node:u32,instr_et:&mut EtTree)->Result<(&RcSymIdx,&RcSymIdx,&Type)>{
    let instr_etnode_children = direct_child_nodes!(at instr_et_node in instr_et);
    let a_etnode = instr_etnode_children[0];
    let b_etnode = instr_etnode_children[1];
    let symidx_type = node!(at a_etnode in instr_et).get_type()?;
    let a_rcsymidx = if let EtNodeType::Symbol { rc_symidx, ast_node:_, text:_,decldef_def_or_use:_ } = &node!(at a_etnode in instr_et).et_node_type{
        rc_symidx
    }else{
        return Err(anyhow!("?"));
    };
    let b_rcsymidx = if let EtNodeType::Symbol { rc_symidx, ast_node:_, text:_, decldef_def_or_use:_ } = &node!(at b_etnode in instr_et).et_node_type{
        rc_symidx
    }else{
        return Err(anyhow!("?"));
    };
    Ok((a_rcsymidx,b_rcsymidx,symidx_type))
}

pub fn process_instr_et(instr_et_node:u32,instr_et:&mut EtTree) -> Result<()>{
    match &node!(at instr_et_node in instr_et).et_node_type{
        EtNodeType::Operator { op, ast_node, text, op_rc_symidx } => {
            let lhs_rcsymidx = &node!(at instr_et_node in instr_et).equivalent_symidx_vec[0].clone();
            match op{
                super::et_node::ExprOp::Mul =>{
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    let new_instr:NhwcInstr = NhwcInstrType::new_mul(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                    println!("{:?}",new_instr);
                },
                super::et_node::ExprOp::Add => {
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    let new_instr:NhwcInstr = NhwcInstrType::new_add(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                    println!("{:?}",new_instr);
                },
                super::et_node::ExprOp::Sub => {
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    let new_instr:NhwcInstr = NhwcInstrType::new_sub(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                    println!("{:?}",new_instr);
                },
                super::et_node::ExprOp::Div => {
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    let new_instr:NhwcInstr = NhwcInstrType::new_div(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                    println!("{:?}",new_instr);
                },
                super::et_node::ExprOp::Assign => todo!(),
                super::et_node::ExprOp::LogicalOr => {
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    let new_instr:NhwcInstr = NhwcInstrType::new_logic_or(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                    println!("{:?}",new_instr);
                },
                super::et_node::ExprOp::LogicalAnd => {
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    let new_instr:NhwcInstr = NhwcInstrType::new_logic_and(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                    println!("{:?}",new_instr);
                },
                super::et_node::ExprOp::LogicalNot => {
                    let child_etnode = direct_child_node!(at instr_et_node in instr_et);
                    let var_type = node!(at child_etnode in instr_et).get_type()?;
                    let a_rcsymidx = if let EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } = &node!(at child_etnode in instr_et).et_node_type{
                        rc_symidx
                    }else{
                        return Err(anyhow!("?"));
                    };
                    let new_instr = NhwcInstrType::new_logic_not(lhs_rcsymidx.clone(), a_rcsymidx.clone(), var_type.clone());
                    println!("{:?}",new_instr);
                },
                // super::et_node::ExprOp::BitwiseOr => todo!(),
                // super::et_node::ExprOp::BitwiseAnd => todo!(),
                // super::et_node::ExprOp::BitwiseXor => todo!(),
                // super::et_node::ExprOp::BitwiseNot => todo!(),
                super::et_node::ExprOp::Eq => {
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    match symidx_type{
                        Type::I32 => {
                            let new_instr:NhwcInstr = NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Eq,a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        Type::F32 =>{
                            let new_instr:NhwcInstr = NhwcInstrType::new_fcmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::FcmpPlan::Oeq,a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        _ => todo!(),
                    }
                },
                super::et_node::ExprOp::NEq =>{
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    match symidx_type{
                        Type::I32 => {
                            let new_instr:NhwcInstr = NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Ne,a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        Type::F32 =>{
                            let new_instr:NhwcInstr = NhwcInstrType::new_fcmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::FcmpPlan::One,a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        _ => todo!(),
                    }
                },
                super::et_node::ExprOp::Less => {
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    match symidx_type{
                        Type::I32 => {
                            let new_instr:NhwcInstr = NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Slt,a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        Type::F32 =>{
                            let new_instr:NhwcInstr = NhwcInstrType::new_fcmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::FcmpPlan::Olt,a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        _ => todo!(),
                    }
                },
                super::et_node::ExprOp::Greater => {
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    match symidx_type{
                        Type::I32 => {
                            let new_instr:NhwcInstr = NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Sgt,a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        Type::F32 =>{
                            let new_instr:NhwcInstr = NhwcInstrType::new_fcmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::FcmpPlan::Ogt,a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        _ => todo!(),
                    }
                },
                super::et_node::ExprOp::LEq => {
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    match symidx_type{
                        Type::I32 => {
                            let new_instr:NhwcInstr = NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Sle,a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        Type::F32 =>{
                            let new_instr:NhwcInstr = NhwcInstrType::new_fcmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::FcmpPlan::Ole,a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        _ => todo!(),
                    }
                },
                super::et_node::ExprOp::GEq => {
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    match symidx_type{
                        Type::I32 => {
                            let new_instr:NhwcInstr = NhwcInstrType::new_icmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::IcmpPlan::Sgt,a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        Type::F32 =>{
                            let new_instr:NhwcInstr = NhwcInstrType::new_fcmp(lhs_rcsymidx.clone(), crate::toolkit::nhwc_instr::FcmpPlan::Ogt,a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        _ => todo!(),
                    }
                },
                // super::et_node::ExprOp::LShift => todo!(),
                // super::et_node::ExprOp::RShift => todo!(),
                super::et_node::ExprOp::Mod => {
                    let (a_rcsymidx,b_rcsymidx,symidx_type) = process_child_instr_et(instr_et_node, instr_et)?;
                    let new_instr:NhwcInstr = NhwcInstrType::new_mod(lhs_rcsymidx.clone(), a_rcsymidx.clone(), b_rcsymidx.clone(),symidx_type.clone()).into();
                    println!("{:?}",new_instr);
                },
                // super::et_node::ExprOp::Cast => todo!(),
                super::et_node::ExprOp::Call => {
                    let return_rcsymidxs = &node!(at instr_et_node in instr_et).equivalent_symidx_vec;
                    let assigned_rcsymidx:Option<RcSymIdx>;
                    let ret_type :Type;
                    if return_rcsymidxs.is_empty(){
                        assigned_rcsymidx = None;
                        ret_type = Value::new_void().to_type();
                    }else{
                        assigned_rcsymidx = Some(return_rcsymidxs[0]);
                        ret_type = node!(at instr_et_node in instr_et).get_type()?.clone();
                    }
                    let func_name_and_args = direct_child_nodes!(at instr_et_node in instr_et);
                    let func_name_node = func_name_and_args[0];
                    let func_name_rcsymidx = if let EtNodeType::Literal { rc_literal_symidx, ast_node, text } = &node!(at func_name_node in instr_et).et_node_type{
                        rc_literal_symidx
                    }else if let EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } = &node!(at func_name_node in instr_et).et_node_type{
                        rc_symidx
                    }else{
                        todo!()
                    };
                    let mut args = vec![];
                    for arg_etnode in &func_name_and_args[1..]{
                        let arg_etnode = *arg_etnode;
                        let arg_rcsymidx = if let EtNodeType::Literal { rc_literal_symidx, ast_node, text } = &node!(at arg_etnode in instr_et).et_node_type{
                            rc_literal_symidx
                        }else if let EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } = &node!(at arg_etnode in instr_et).et_node_type{
                            rc_symidx
                        }else{
                            todo!()
                        };
                        args.push(arg_rcsymidx.clone());
                    }
                    let new_instr:NhwcInstr = NhwcInstrType::new_func_call(assigned_rcsymidx, func_name_rcsymidx.clone(), args, ret_type).into();
                },
                // super::et_node::ExprOp::Negative => todo!(),
                // super::et_node::ExprOp::Positive => todo!(),
                // super::et_node::ExprOp::AddrOf => todo!(),
                // super::et_node::ExprOp::Deref => todo!(),
                // super::et_node::ExprOp::DotMember => todo!(),
                // super::et_node::ExprOp::ArrowMember => todo!(),
                // super::et_node::ExprOp::LPlusPlus => todo!(),
                // super::et_node::ExprOp::RPlusPlus => todo!(),
                // super::et_node::ExprOp::LMinusMinus => todo!(),
                // super::et_node::ExprOp::RMinusMinus => todo!(),
                // super::et_node::ExprOp::MulAssign => todo!(),
                // super::et_node::ExprOp::DivAssign => todo!(),
                // super::et_node::ExprOp::PlusAssign => todo!(),
                // super::et_node::ExprOp::MinusAssign => todo!(),
                super::et_node::ExprOp::ArrayIndex => todo!(),
                super::et_node::ExprOp::ArrayWrapper => todo!(),
                super::et_node::ExprOp::Store => {

                },
                super::et_node::ExprOp::Load => {

                },
                super::et_node::ExprOp::TransToI32 => {
                    let child_etnode = direct_child_node!(at instr_et_node in instr_et);
                    match node!(at child_etnode in instr_et).get_type()?{
                        Type::F32 => {
                            let float_rcsymidx = if let EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } = &node!(at child_etnode in instr_et).et_node_type{
                                rc_symidx
                            }else{
                                return Err(anyhow!("?"));
                            };
                            let new_instr:NhwcInstr = NhwcInstrType::new_float2int(float_rcsymidx.clone(), lhs_rcsymidx.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        Type::I1 => {
                            let bool_rcsymidx = if let EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } = &node!(at child_etnode in instr_et).et_node_type{
                                rc_symidx
                            }else{
                                return Err(anyhow!("?"));
                            };
                            let new_instr:NhwcInstr = NhwcInstrType::new_bool2int(bool_rcsymidx.clone(), lhs_rcsymidx.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        _ => todo!()
                    }
                },
                super::et_node::ExprOp::TransToF32 => {
                    let child_etnode = direct_child_node!(at instr_et_node in instr_et);
                    match node!(at child_etnode in instr_et).get_type()?{
                        Type::I32 => {
                            let int_rcsymidx = if let EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } = &node!(at child_etnode in instr_et).et_node_type{
                                rc_symidx
                            }else{
                                return Err(anyhow!("?"));
                            };
                            let new_instr:NhwcInstr = NhwcInstrType::new_int2float(int_rcsymidx.clone(), lhs_rcsymidx.clone()).into();
                            println!("{:?}",new_instr);
                        },
                        // Type::I1 => {
                        //     let bool_rcsymidx = if let EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } = &node!(at child_etnode in instr_et).et_node_type{
                        //         rc_symidx
                        //     }else{
                        //         return Err(anyhow!("?"));
                        //     };
                        //     let new_instr1:NhwcInstr = NhwcInstrType::new_bool2int(bool_rcsymidx.clone(), lhs_rcsymidx.clone()).into();
                        //     println!("{:?}",new_instr1);
                        //     let new_instr2:NhwcInstr = NhwcInstrType::new_int2float(bool_rcsymidx.clone(), lhs_rcsymidx.clone()).into();
                        //     println!("{:?}",new_instr2);
                        // },
                        _ => todo!()
                    }
                },
                super::et_node::ExprOp::TransToI1 => todo!(),
                _ => todo!()
            }
        },
        EtNodeType::Literal { rc_literal_symidx, ast_node, text } => todo!(),
        EtNodeType::Symbol { rc_symidx, ast_node, text, decldef_def_or_use } => todo!(),
        EtNodeType::Separator { ast_node, text } => todo!(),
    }
    Ok(())
}