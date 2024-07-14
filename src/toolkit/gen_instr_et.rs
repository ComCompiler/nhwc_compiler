use ahash::HashMap;

use crate::{add_edge, add_node, add_node_with_edge, debug_info_red, get_ast_from_symidx, node, toolkit::symtab::WithBorrow};
use anyhow::Result;
use super::{cfg_node::InstrList, et_node::{EtEdgeType, EtNode, EtNodeType, EtTree}, nhwc_instr::{ArithOp, InstrSlab, NhwcInstr}, scope_node::ScopeTree, symtab::{self, RcSymIdx, SymIdx, SymTab}};

pub fn process_arith_et(instr_et:&mut EtTree,symidx_et_node_map:&mut HashMap<SymIdx,u32>,scope_tree:&ScopeTree,arith_et_struct:&mut EtNode,arith_ast:u32, rc_a:&RcSymIdx, rc_b:&RcSymIdx,rc_lhs:&RcSymIdx){
    let arith_et = add_node!({arith_et_struct.clone()} to instr_et);
    arith_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
    symidx_et_node_map.insert(rc_lhs.as_ref_borrow().clone(), arith_et);
    println!("添加变量{:?},{}",rc_lhs.clone(),arith_et);
    let a = rc_a.as_ref_borrow();
    let b = rc_b.as_ref_borrow();
    let lhs = rc_lhs.as_ref_borrow();
    //查找操作数，有的话连边，没有添加节点连边
    if let Some(&a_node) = symidx_et_node_map.get(&a){
        add_edge!({EtEdgeType::Direct.into()} from arith_et to a_node in instr_et);
    }else{
        let a_ast = get_ast_from_symidx!(find a with scope_tree);
        let a_et = add_node_with_edge!({EtNodeType::new_symbol(a_ast,rc_a.clone(),super::et_node::DeclOrDefOrUse::Use).into()} with_edge {EtEdgeType::Direct.into()} from arith_et in instr_et);
        symidx_et_node_map.insert(a.clone(), a_et);
        println!("添加左{:?},{}",rc_a.clone(),a_et);
    }
    if let Some(&b_node) = symidx_et_node_map.get(&b){
        add_edge!({EtEdgeType::Direct.into()} from arith_et to b_node in instr_et);
    }else{
        let b_ast = get_ast_from_symidx!(find a with scope_tree);
        let b_et = add_node_with_edge!({EtNodeType::new_symbol(b_ast,rc_a.clone(),super::et_node::DeclOrDefOrUse::Use).into()} with_edge {EtEdgeType::Direct.into()} from arith_et in instr_et);
        symidx_et_node_map.insert(b.clone(), b_et);
        println!("添加右{:?},{}",b.clone(),b_et);
    }
}

pub fn process_trans_et(rc_transed_symidx:&RcSymIdx,symidx_et_node_map:&mut HashMap<SymIdx,u32>,scope_tree:&ScopeTree,to_trans_ast:u32,rc_lhs:&RcSymIdx,instr_et:&mut EtTree){
    let lhs = rc_lhs.as_ref_borrow();
    let transed_symidx = rc_lhs.as_ref_borrow();
    let transed_ast = get_ast_from_symidx!(find transed_symidx with scope_tree);
    let mut to_trans_et_struct:EtNode = 
    if transed_symidx.is_literal(){
        EtNodeType::new_literal(to_trans_ast, rc_lhs.clone()).into()
    }else{
        EtNodeType::new_symbol(to_trans_ast, rc_lhs.clone(), super::et_node::DeclOrDefOrUse::Def).into()
    };
    let to_trans_et_node = add_node!({to_trans_et_struct.clone()} to instr_et);
    if let Some(&transed_et_node) = symidx_et_node_map.get(&transed_symidx){
        add_edge!({EtEdgeType::Direct.into()} from to_trans_et_node to transed_et_node in instr_et);
    }else{
        let transed_et_node = add_node_with_edge!({EtNodeType::new_symbol(transed_ast, rc_transed_symidx.clone(), super::et_node::DeclOrDefOrUse::Use).into()} with_edge {EtEdgeType::Direct.into()} from to_trans_et_node in instr_et);
        to_trans_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
        symidx_et_node_map.insert(transed_symidx.clone(), transed_et_node);
    }
    symidx_et_node_map.insert(lhs.clone(), to_trans_et_node);
}

use crate::instr;
pub fn parse_instr_list_to_et(instrs:&InstrList,instr_et:&mut EtTree,stmtab:&SymTab,child_et_map:&mut HashMap<SymIdx,u32>,scope_tree:&ScopeTree,instr_slab:&InstrSlab<NhwcInstr>) -> Result<()>{
    for &instr in instrs.iter(){
        let instr = instr!(at instr in instr_slab)?;
        match &instr.instr_type{
            // super::nhwc_instr::NhwcInstrType::Label { label_symidx } => todo!(),
            // super::nhwc_instr::NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => todo!(),
            super::nhwc_instr::NhwcInstrType::DefineVar { var_symidx, vartype, op_value } => {
            },
            super::nhwc_instr::NhwcInstrType::Alloc { var_symidx, vartype } => todo!(),
            super::nhwc_instr::NhwcInstrType::Globl { var_symidx, vartype } => todo!(),
            super::nhwc_instr::NhwcInstrType::Load { lhs, ptr_symidx, ptr_ty } => todo!(),
            super::nhwc_instr::NhwcInstrType::Store { val_symidx, value_ty, ptr_symidx, ptr_ty } => todo!(),
            super::nhwc_instr::NhwcInstrType::GetElementPtr { lhs, array_or_ptr_symidx, array_ty, idx_vec } => todo!(),
            super::nhwc_instr::NhwcInstrType::Arith { lhs: rc_lhs, rhs } => {
                let lhs = rc_lhs.as_ref_borrow();
                let arith_ast = get_ast_from_symidx!(find lhs with scope_tree);
                match rhs{
                    super::nhwc_instr::ArithOp::Add { a, b, vartype:_ } => {
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_add(arith_ast).into();
                        //添加操作符和操作数节点
                        process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                    },
                    super::nhwc_instr::ArithOp::Mul { a, b, vartype:_ } => {
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_mul(arith_ast).into();
                        process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                    },
                    super::nhwc_instr::ArithOp::Div { a, b, vartype:_et_node } => {
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_div(arith_ast).into();
                        process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                    },
                    super::nhwc_instr::ArithOp::Sub { a, b, vartype:_ } =>{
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_sub(arith_ast).into();
                        process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                    },
                    super::nhwc_instr::ArithOp::Mod { a, b, vartype:_ } => {
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_mod(arith_ast).into();
                        process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                    },
                    super::nhwc_instr::ArithOp::Icmp { plan, a, b, vartype } => {
                        match plan{
                            super::nhwc_instr::IcmpPlan::Eq => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_equal(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::IcmpPlan::Ne => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_not_equal(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::IcmpPlan::Ugt => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_greater_than(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::IcmpPlan::Uge => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_greater_than_or_equal(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::IcmpPlan::Ult => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_less_than(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::IcmpPlan::Ule => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_less_than_or_equal(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::IcmpPlan::Sgt => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_greater_than(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::IcmpPlan::Sge => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_less_than(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::IcmpPlan::Slt => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_less_than(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::IcmpPlan::Sle => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_less_than_or_equal(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                        }
                    },
                    super::nhwc_instr::ArithOp::Fcmp { plan, a, b, vartype:_ } => {
                        match plan{
                            super::nhwc_instr::FcmpPlan::Oeq => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_equal(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::FcmpPlan::One => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_not_equal(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::FcmpPlan::Ogt => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_greater_than(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::FcmpPlan::Oge => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_greater_than_or_equal(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::FcmpPlan::Olt => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_less_than(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                            super::nhwc_instr::FcmpPlan::Ole => {
                                let mut arith_et_struct:EtNode = EtNodeType::new_op_less_than_or_equal(arith_ast).into();
                                process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                            },
                        }
                    },
                    super::nhwc_instr::ArithOp::LogicAnd { a, b, vartype } => {
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_logical_and(arith_ast).into();
                        process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                    },
                    super::nhwc_instr::ArithOp::LogicOr { a, b, vartype } => {
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_logical_or(arith_ast).into();
                        process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,rc_lhs);
                    },
                    super::nhwc_instr::ArithOp::LogicNot { a: rc_a, vartype } => {
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_logical_not(arith_ast).into();
                        let arith_et = add_node!({arith_et_struct.clone()} to instr_et);
                        arith_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
                        let a = rc_a.as_ref_borrow();
                        //查找操作数，有的话连边，没有添加节点连边
                        if let Some(&a_node) = child_et_map.get(&a){
                            add_edge!({EtEdgeType::Direct.into()} from arith_et to a_node in instr_et);
                        }else{
                            let a_ast = get_ast_from_symidx!(find a with scope_tree);
                            let a_et = add_node_with_edge!({EtNodeType::new_symbol(a_ast,rc_a.clone(),super::et_node::DeclOrDefOrUse::Use).into()} with_edge {EtEdgeType::Direct.into()} from arith_et in instr_et);
                            child_et_map.insert(a.clone(), a_et);
                        }
                        child_et_map.insert(lhs.clone(), arith_et);
                    },
                }
            },
            super::nhwc_instr::NhwcInstrType::SimpleAssign { lhs: rc_lhs, rhs: rc_rhs, vartype:_ } => {
                let lhs = rc_lhs.as_ref_borrow();
                let rhs = rc_rhs.as_ref_borrow();
                let rhs_ast = get_ast_from_symidx!(find rhs with scope_tree);
                if let Some(&rhs_et_node) = child_et_map.get(&rhs){

                    println!("anan{:?},{}",rhs,rhs_et_node);
                    let assign_et_struct = node!(at rhs_et_node in instr_et);
                    assign_et_struct.clone().equivalent_symidx_vec.push(rc_lhs.clone());
                    child_et_map.insert(lhs.clone(), rhs_et_node);
                }else{
                    if rhs.is_literal(){
                        let mut literal_et_struct:EtNode = EtNodeType::new_literal(rhs_ast, rc_rhs.clone()).into();
                        let literal_et_node = add_node!({literal_et_struct.clone()} to instr_et);
                        literal_et_struct.equivalent_symidx_vec.push(rc_lhs.clone());
                        child_et_map.insert(rhs.clone(), literal_et_node);
                        child_et_map.insert(lhs.clone(), literal_et_node);
                    }
                }
            },
            super::nhwc_instr::NhwcInstrType::Call { op_assigned_symidx, func_op } => {
                todo!();
            },
            super::nhwc_instr::NhwcInstrType::Jump { jump_op } => todo!(),
            // super::nhwc_instr::NhwcInstrType::Phi { lhs, rhs } => todo!(),
            // super::nhwc_instr::NhwcInstrType::Mu { may_use_symidx, may_use_instr } => todo!(),
            // super::nhwc_instr::NhwcInstrType::Chi { lhs, rhs, may_def_instr } => todo!(),
            super::nhwc_instr::NhwcInstrType::TranType { lhs: rc_lhs, op } => {
                let lhs = rc_lhs.as_ref_borrow();
                let trans_ast = get_ast_from_symidx!(find lhs with scope_tree);
                match op{
                    super::nhwc_instr::Trans::Fptosi { float_symidx } => {
                        process_trans_et(float_symidx, child_et_map,scope_tree, trans_ast, rc_lhs, instr_et);
                    },
                    super::nhwc_instr::Trans::Sitofp { int_symidx } => {
                        process_trans_et(int_symidx, child_et_map,scope_tree, trans_ast, rc_lhs, instr_et);
                    },
                    super::nhwc_instr::Trans::Zext { bool_symidx } => {
                        process_trans_et(bool_symidx, child_et_map,scope_tree, trans_ast, rc_lhs, instr_et);
                    },
                    super::nhwc_instr::Trans::Bitcast { rptr_symidx, rptr_type:_, lptr_type:_ } => {
                        process_trans_et(rptr_symidx, child_et_map,scope_tree, trans_ast, rc_lhs, instr_et);
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