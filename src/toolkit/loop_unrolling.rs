use crate::{instr, node, node_mut};
use anyhow::{Result,Context,anyhow};
use super::{cfg_node::{CfgGraph, CfgNodeType, LoopInfo}, nhwc_instr::{InstrSlab, NhwcInstr, NhwcInstrType}, symtab::{self, RcSymIdx, SymTab, WithBorrow}};

///判断是否为whileloop，然后提取条件判断变量
pub fn get_while_condition_symidx(cfg_node:u32,cfg_graph:&mut CfgGraph,instr_slab:&mut InstrSlab<NhwcInstr>,symtab:&SymTab)->Result<()>{
    let while_loop_node = node!(at cfg_node in cfg_graph);
    let while_loop_node_type = &while_loop_node.cfg_node_type;
    if while_loop_node_type.is_while_loop(){
        let instrs_idx = &while_loop_node.clone().phi_instrs.instr_vec;
        let while_instrs = &while_loop_node.clone().instrs.instr_vec;
        //多个phi语句
        for instr_idx in instrs_idx{
            let instr_idx = *instr_idx;
            if let NhwcInstrType::Phi { lhs, rhs } = &instr!(at instr_idx in instr_slab)?.instr_type{
                let phi_pairs = &rhs.phi_pairs;
                //phi语句中的symidx
                for phi_pair in phi_pairs{
                    let phi_rcsymidx = &phi_pair.symidx;
                    if *symtab.get(&phi_rcsymidx.as_ref_borrow())?.get_is_temp()?{
                        break;
                    }
                    else{
                        //查找while中的instrs是否出现过该内容
                        let last_instr = &while_instrs[while_instrs.len()-1];
                        let last_instr = *last_instr;
                        if let NhwcInstrType::Arith { lhs, rhs } = &instr!(at last_instr in instr_slab)?.instr_type{
                            match rhs{
                                super::nhwc_instr::ArithOp::Icmp { plan, a, b, vartype } => {
                                    if a == lhs||b == lhs{
                                        let loop_info = LoopInfo::new_loop_info(lhs.clone());
                                        node_mut!(at cfg_node in cfg_graph).add_loop_info(loop_info);
                                    }
                                },
                                super::nhwc_instr::ArithOp::Fcmp { plan, a, b, vartype } => {
                                    if a == lhs||b == lhs{
                                        let loop_info = LoopInfo::new_loop_info(lhs.clone());
                                        node_mut!(at cfg_node in cfg_graph).add_loop_info(loop_info);
                                    }
                                },
                                _ => todo!(),
                            }
                        }else{todo!()}
                    }
                }
            }else{todo!()}
        }
    }else{
        todo!()
    }
    Ok(())
}