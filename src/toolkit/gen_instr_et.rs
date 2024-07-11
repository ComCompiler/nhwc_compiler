use ahash::HashMap;

use crate::{add_node, add_node_with_edge, get_ast_from_symidx, node};

use super::{et_node::{EtEdgeType, EtNode, EtNodeType, EtTree}, nhwc_instr::NhwcInstr, scope_node::ScopeTree, symtab::{self, SymIdx, SymTab}};



pub fn gen_et_from_instr(instrs:&Vec<NhwcInstr>,instr_et:&mut EtTree,stmtab:&SymTab,child_et_map:&HashMap<SymIdx,u32>,scope_tree:&ScopeTree){
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
                let arith_et_struct:EtNode = EtNodeType::new_op_add(arith_ast).into();
                match rhs{
                    super::nhwc_instr::ArithOp::Add { a, b, vartype } => {
                        
                        let arith_et = add_node!({arith_et_struct} to instr_et);
                        let a_ast = get_ast_from_symidx!(find a with scope_tree);
                        let a_et = add_node_with_edge!({EtNodeType::new_symbol(a_ast,a.clone(),super::et_node::DeclOrDefOrUse::Use).into()} with_edge {EtEdgeType::Direct.into()} from arith_et in instr_et);
                        let b_et = add_node_with_edge!({EtNodeType::new_symbol(a_ast,a.clone(),super::et_node::DeclOrDefOrUse::Use).into()} with_edge {EtEdgeType::Direct.into()} from arith_et in instr_et);
                    },
                    super::nhwc_instr::ArithOp::Mul { a, b, vartype } => todo!(),
                    super::nhwc_instr::ArithOp::Div { a, b, vartype } => todo!(),
                    super::nhwc_instr::ArithOp::Sub { a, b, vartype } => todo!(),
                    super::nhwc_instr::ArithOp::Mod { a, b, vartype } => todo!(),
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