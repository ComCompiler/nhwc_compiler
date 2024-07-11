use ahash::HashMap;

use crate::{add_edge, add_node, add_node_with_edge, get_ast_from_symidx, node};

use super::{et_node::{EtEdgeType, EtNode, EtNodeType, EtTree}, nhwc_instr::{ArithOp, NhwcInstr}, scope_node::ScopeTree, symtab::{self, SymIdx, SymTab}};

pub fn process_arith_et(instr_et:&mut EtTree,child_et_map:&mut HashMap<SymIdx,u32>,scope_tree:&ScopeTree,arith_et_struct:&mut EtNode,arith_ast:u32, a:&SymIdx, b:&SymIdx,lhs:&SymIdx){
    let arith_et = add_node!({arith_et_struct.clone()} to instr_et);
    arith_et_struct.equivalent_symidx_vec.push(lhs.clone());
    //查找操作数，有的话连边，没有添加节点连边
    if let Some(&a_node) = child_et_map.get(a){
        add_edge!({EtEdgeType::Direct.into()} from arith_ast to a_node in instr_et);
    }else{
        let a_ast = get_ast_from_symidx!(find a with scope_tree);
        let a_et = add_node_with_edge!({EtNodeType::new_symbol(a_ast,a.clone(),super::et_node::DeclOrDefOrUse::Use).into()} with_edge {EtEdgeType::Direct.into()} from arith_et in instr_et);
        child_et_map.insert(a.clone(), a_et);
    }
    if let Some(&b_node) = child_et_map.get(b){
        add_edge!({EtEdgeType::Direct.into()} from arith_ast to b_node in instr_et);
    }else{
        let b_ast = get_ast_from_symidx!(find a with scope_tree);
        let b_et = add_node_with_edge!({EtNodeType::new_symbol(b_ast,a.clone(),super::et_node::DeclOrDefOrUse::Use).into()} with_edge {EtEdgeType::Direct.into()} from arith_et in instr_et);
        child_et_map.insert(b.clone(), b_et);
    }
}

pub fn gen_et_from_instr(instrs:&Vec<NhwcInstr>,instr_et:&mut EtTree,stmtab:&SymTab,child_et_map:&mut HashMap<SymIdx,u32>,scope_tree:&ScopeTree){
    for instr in instrs{
        match &instr.instr_type{
            // super::nhwc_instr::NhwcInstrType::Label { label_symidx } => todo!(),
            super::nhwc_instr::NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => todo!(),
            super::nhwc_instr::NhwcInstrType::DefineVar { var_symidx, vartype, op_value } => todo!(),
            super::nhwc_instr::NhwcInstrType::Alloc { var_symidx, vartype } => todo!(),
            super::nhwc_instr::NhwcInstrType::Globl { var_symidx, vartype } => todo!(),
            super::nhwc_instr::NhwcInstrType::Load { lhs, ptr_symidx, ptr_ty } => todo!(),
            super::nhwc_instr::NhwcInstrType::Store { val_symidx, value_ty, ptr_symidx, ptr_ty } => todo!(),
            super::nhwc_instr::NhwcInstrType::GetElementPtr { lhs, array_or_ptr_symidx, array_ty, idx_vec } => todo!(),
            super::nhwc_instr::NhwcInstrType::Arith { lhs, rhs } => {
                let arith_ast = get_ast_from_symidx!(find lhs with scope_tree);
                match rhs{
                    super::nhwc_instr::ArithOp::Add { a, b, vartype:_ } => {
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_add(arith_ast).into();
                        //添加操作符和操作数节点
                        process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,lhs);
                    },
                    super::nhwc_instr::ArithOp::Mul { a, b, vartype:_ } => {
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_mul(arith_ast).into();
                        process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,lhs);
                    },
                    super::nhwc_instr::ArithOp::Div { a, b, vartype:_et_node } => {
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_div(arith_ast).into();
                        process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,lhs);
                    },
                    super::nhwc_instr::ArithOp::Sub { a, b, vartype:_ } =>{
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_sub(arith_ast).into();
                        process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,lhs);
                    },
                    super::nhwc_instr::ArithOp::Mod { a, b, vartype:_ } => {
                        let mut arith_et_struct:EtNode = EtNodeType::new_op_mod(arith_ast).into();
                        process_arith_et(instr_et,child_et_map,scope_tree,&mut arith_et_struct,arith_ast, a, b,lhs);
                    },
                    super::nhwc_instr::ArithOp::Icmp { plan, a, b, vartype } => todo!(),
                    super::nhwc_instr::ArithOp::Fcmp { plan, a, b, vartype } => todo!(),
                    super::nhwc_instr::ArithOp::LogicAnd { a, b, vartype } => todo!(),
                    super::nhwc_instr::ArithOp::LogicOr { a, b, vartype } => todo!(),
                    super::nhwc_instr::ArithOp::LogicNot { a, vartype } => todo!(),
                }
            },
            super::nhwc_instr::NhwcInstrType::SimpleAssign { lhs, rhs, vartype } => todo!(),
            super::nhwc_instr::NhwcInstrType::Call { op_assigned_symidx, func_op } => todo!(),
            super::nhwc_instr::NhwcInstrType::Jump { jump_op } => todo!(),
            // super::nhwc_instr::NhwcInstrType::Phi { lhs, rhs } => todo!(),
            // super::nhwc_instr::NhwcInstrType::Mu { may_use_symidx, may_use_instr } => todo!(),
            // super::nhwc_instr::NhwcInstrType::Chi { lhs, rhs, may_def_instr } => todo!(),
            super::nhwc_instr::NhwcInstrType::TranType { lhs, op } => todo!(),
            // super::nhwc_instr::NhwcInstrType::BreakPoint { symidx, breakpoint_args } => todo!(),
            // super::nhwc_instr::NhwcInstrType::Nope {  } => todo!(),
            _ => {},
        }
    }
}