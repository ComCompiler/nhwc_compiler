
//|symidx,temp_reg,symtab,asm_sect,regtab|{

use std::{default, ops::Deref, str::FromStr};

use crate::{antlr_parser::clexer::{Register, Void}, debug_info_blue, debug_info_red, direct_child_nodes, instr, node, node_mut, passes::simulator_debug_pass::debug_simu_run, toolkit::rv64_instr::{Arithmetic, REG_A_RANGE, REG_FA_RANGE}};
use anyhow::*;

use super::{asm_struct::{AsmSection, AsmStructure}, cfg_edge::CfgEdgeType, cfg_node::{CfgGraph, CFG_ROOT}, dot::Config, etc::{dfs_with_priority, generate_png_by_graph}, field::Type, gen_nhwc_cfg::{IS_LITERAL, TYPE}, nhwc_instr::{FuncOp, InstrSlab, NhwcInstr, NhwcInstrType}, regtab::{self, RegTab}, rv64_instr::{Compare, Imm, Loads, Logical, PseudoInstr, RV64Instr, Register, RiscvOffsetLimit, Shifts, Stores, Trans, REG_FS_RANGE, REG_S_RANGE}, simulator::Simulator, symtab::{self, SymIdx, SymTab}};

/// convert nhwc ir into riscv
pub fn parse_nhwcir2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, riscv_instr_slab:&mut InstrSlab<RV64Instr>, asm_structure:&mut AsmStructure, regtab:&mut RegTab,src_symtab:&mut SymTab)->Result<()>{
    // firstly process root which contains global vars 
    let func_entry_sect = parse_funcs2riscv(cfg_graph, nhwc_instr_slab, riscv_instr_slab,  src_symtab)?;
    asm_structure.sects.push(func_entry_sect);

    let op_static_init_sect: Option<AsmSection> = parse_root2riscv(cfg_graph, nhwc_instr_slab, riscv_instr_slab, regtab,src_symtab)?;
    if let Some(s) = op_static_init_sect{
        asm_structure.sects.push(s);
    }
    Ok(())
}
/// convert `cfg_root_node` into riscv  
/// assumes that there are only global and some calculating instrs so that `simulator` can run directly
fn parse_root2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, _riscv_instr_slab:&mut InstrSlab<RV64Instr>, regtab:&mut RegTab,src_symtab:&SymTab)->Result<Option<AsmSection>>{
    let root_node = node_mut!(at CFG_ROOT in cfg_graph);
    let mut simulator = Simulator::new(root_node.instrs.clone(), false);
    simulator.instr_list.push(nhwc_instr_slab.insert_instr(NhwcInstrType::new_exit_breakpoint( vec![]).into()));
    simulator.load_instrs(&nhwc_instr_slab)?;

    // run simulator to get values of static variables in `simulator.simu_symtab`
    let simulator_g = debug_simu_run(&mut simulator, &nhwc_instr_slab, src_symtab, true)?;
    // generate_png_by_graph(&simulator_g, "debug_root_simu".to_string(), &[Config::Record, Config::Rounded, Config::SymTab, Config::Title("debug_root_simu".to_string())])?;

    // now we can get static variables 
    let mut asm_sect = AsmSection::new();
    asm_sect.data();
    // asm_sect.align(4);
    for &instr in node!(at CFG_ROOT in cfg_graph).instrs.iter(){
        match &instr!(at instr in nhwc_instr_slab)?.instr_type{
            NhwcInstrType::Global { var_symidx, vartype } => {
                match vartype{
                    super::field::Type::Fn { arg_syms: _, ret_sym: _ } => {
                        // do nothing when it is a function
                    },
                    _ => {
                        asm_sect.align(vartype.get_align()?);
                        asm_sect.global(Imm::new_global_label(var_symidx.clone()));
                        asm_sect.annotation(format!("{:?}",&instr!(at instr in nhwc_instr_slab)?));
                        asm_sect.obj_type(Imm::new_global_label(var_symidx.clone()));
                        asm_sect.label(Imm::new_global_label(var_symidx.clone()));
                        asm_sect.apply_value(simulator.simu_symtab.get(&var_symidx.to_src_symidx())?.get_simu_val()?)?;
                    }
                }
            },
            _ => {
                // do nothing 
            }
        }
    }
    if asm_sect.stmts.len() != 1{
        Ok(Some(asm_sect))
    }else{
        Ok(None)
    }
       
}
// pub fn add_sp_or_s0_with_offset(asm_sect:&mut AsmSection,rd:Register, offset:isize, sp_or_s0:Register)->Result<()>{
//     if offset>-2000 && offset<2000 {
//         asm_sect.asm(Arithmetic::new_addi(Register::new_sp(), Register::new_sp(), Imm::from_offset(offset)).into());
//     }
// }

pub fn add_literal_to_reg(asm_sect:&mut AsmSection,rd:Register,rs:Register, regtab:&mut RegTab,symtab:&mut SymTab, offset:isize) -> Result<()>{
    if offset>-2000 && offset<2000 {
        asm_sect.asm(Arithmetic::new_addi(rd, rs, Imm::from_offset(offset)).into());
    }else{
        // offset is large, so we use a intermediate reg 
        let offset_reg = regtab.find_and_occupy_reg(&SymIdx::from(offset), &Type::I32, symtab, asm_sect, default_store,default_load)?;
        asm_sect.asm(PseudoInstr::new_li(offset_reg.clone(), Imm::new_literal_isize(offset)).into());
        asm_sect.asm(Arithmetic::new_add(rd, offset_reg.clone(),rs).into());
        regtab.free_reg(offset_reg)?;
    }
    Ok(())
}

/// let default_store_f = |symidx,reg| _store_sym(&mut asm_sect, &symidx, reg, symtab);
/// let default_loaddefault_load = |symidx,reg| _load_sym_or_imm;
/// ($asm_sect:ident,$regtab:ident,$symtab:ident) => {
fn default_load(symidx:SymIdx,reg:Register,symtab:&mut SymTab,asm_sect:& mut AsmSection, regtab:& mut RegTab) -> Result<()>{ 
    _load_sym_or_imm(asm_sect, &symidx, reg, regtab, symtab)
}
fn default_store(symidx:SymIdx,reg:Register,symtab:&mut SymTab,asm_sect:& mut AsmSection, regtab:& mut RegTab) -> Result<()> {
    _store_sym(asm_sect, &symidx, reg, symtab)
}

/// convert `cfg_entry_node` into riscv 
/// assume first instr be func_def instr while others are alloc instr
fn parse_funcs2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, _riscv_instr_slab:&mut InstrSlab<RV64Instr>, symtab:&mut SymTab) -> Result<AsmSection>{
    let entries = direct_child_nodes!(at CFG_ROOT in cfg_graph);
    let mut _asm_sect = AsmSection::new();
    _asm_sect.text() ;
    _asm_sect.align(4);
    let asm_sect = &mut _asm_sect;
    for cfg_entry_node in entries{
        // 
        // if entry_node.instrs.len()> 0{
        //     let func_def_instr = entry_node.instrs[0];
        //     match &instr!(at func_def_instr in nhwc_instr_slab)?.instr_type{
        //         NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
        //             asm_sect.global(func_symidx.clone());
        //             asm_sect.func_type(func_symidx.clone());
        //             asm_sect.label(func_symidx.clone());
        //         },
        //         _ => {
        //             return Err(anyhow!("the first instr of cfg_entry_node is not func_def_instr but {:?}",&instr!(at func_def_instr in nhwc_instr_slab)?));
        //         }
        //     }
        // }else{
        //     return Err(anyhow!("no instr in entry {entry}"));
        // }
        let dfs_node_vec = dfs_with_priority(cfg_graph,cfg_entry_node,|e| match &e.weight().cfg_edge_type{
            CfgEdgeType::BodyHead {  } => 1,
            CfgEdgeType::IfFalse {  } => 2,
            CfgEdgeType::Direct {  } => 2,
            CfgEdgeType::IfTrue {  } => 1,
            CfgEdgeType::BodyTail {  } => -1,
            CfgEdgeType::GatherTrue {  } => -1,
            CfgEdgeType::GatherFalse {  } => 5,
        });
        let mut _regtab = RegTab::new();
        let regtab =&mut _regtab;

        for &cfg_node in &dfs_node_vec{
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs() {
                let instr_struct = instr!(at instr in nhwc_instr_slab)?;
                debug_info_red!("{:?}",instr_struct);
                asm_sect.annotation(format!("{:?}",instr_struct));
                match &instr_struct.instr_type{
                    NhwcInstrType::Label { label_symidx } => {
                        asm_sect.label(Imm::new_local_label(label_symidx.clone()));
                    },
                    NhwcInstrType::DefineFunc { func_symidx, ret_symidx: _, args } => {
                        asm_sect.global(Imm::new_global_label(func_symidx.clone()));
                        asm_sect.func_type(Imm::new_global_label(func_symidx.clone()));
                        asm_sect.label(Imm::new_global_label(func_symidx.clone()));
                        let mem_layout = node!(at cfg_entry_node in cfg_graph).get_mem_layout()?;
                        asm_sect.annotation(format!("mem layout:{:?}",mem_layout));
                        // set_freed_reg for args
                        let mut fpu_args = vec![];
                        let mut gpr_args = vec![];
                        for (_idx,arg) in args.iter().enumerate(){
                            match symtab.get(arg)?.get_type()?{
                                Type::F32 => {
                                    fpu_args.push(arg)
                                },
                                _ => {
                                    gpr_args.push(arg)
                                }
                            }
                        } 
                        for (idx,arg) in fpu_args.iter().enumerate(){
                            // _store_sym(asm_sect, &arg,Register::new_fa(idx as u8), symtab)?;
                            if REG_FA_RANGE.contains(&(idx as u8)){
                                let reg = Register::new_fa(idx as u8);
                                regtab.set_freed_reg(reg,&arg,symtab)?;
                            }
                        }   
                        for (idx,arg) in gpr_args.iter().enumerate(){
                            // _store_sym(asm_sect, &arg,Register::new_a(idx as u8), symtab)?;
                            if REG_A_RANGE.contains(&(idx as u8)){
                                let reg = Register::new_a(idx as u8);
                                regtab.set_freed_reg(reg,&arg,symtab)?;
                            }
                        }   
                        // apply for stack mem
                        let stack_size = mem_layout.get_mem_len();
                        // allocate stack mem
                        // let temp_reg = regtab.find_and_occupy_reg(func_symidx,&Type::Ptr64 { ty: Box::new(Type::Void) },symtab,asm_sect,
                        // default_store,|symidx,temp_reg,symtab,asm_sect,regtab|{
                        add_literal_to_reg(asm_sect, Register::SP, Register::SP, regtab,symtab,-(stack_size as isize))?;
                        // })?;
                        add_literal_to_reg(asm_sect, Register::new_s0(),  Register::SP,regtab, symtab,stack_size as isize)?;

                        let ra_symidx= symtab.get(func_symidx)?.get_func_cor_ra_symidx()?.clone();
                        let s0_symidx = symtab.get(func_symidx)?.get_func_cor_s0_symidx()?.clone();
                        _store_sym(asm_sect, &ra_symidx, Register::RA, symtab)?;
                        _store_sym(asm_sect, &s0_symidx, Register::new_s0(), symtab)?;

                        
                    },
                    NhwcInstrType::DefineVar { var_symidx, vartype: _, op_value } => {
                        match op_value{
                            Some(value_symidx) => {
                                load_sym_or_imm(asm_sect,  value_symidx, regtab, symtab)?;
                            },
                            None => {
                                // do nothing
                            },
                        }
                    },
                    NhwcInstrType::Alloc { var_symidx: _, vartype: _ } => {
                        // do nothing
                    },
                    NhwcInstrType::Global { var_symidx: _, vartype: _ } => {
                        // do nothing
                    },
                    NhwcInstrType::Load { lhs, ptr_symidx, ptr_ty: _ } => {
                        debug_info_red!("{:?} {:?}",instr_struct, ptr_symidx);
                        load_from_ptr(asm_sect, ptr_symidx,  regtab, symtab)?;
                    },
                    NhwcInstrType::Store { val_symidx: value_symidx, value_ty: _, ptr_symidx, ptr_ty: _ } => {
                        store_from_ptr(asm_sect, ptr_symidx, value_symidx,regtab, symtab)?;
                    },
                    NhwcInstrType::GetElementPtr { lhs, array_symidx, array_ty, idx_vec } => {
                        // clear s3
                        // use reg s3 as rst register
                        // load idx to s2 
                        // load weight to s1
                        // use reg s4 to be s2*s1
                        // s4 * element size 
                        // put array offset to s5
                        // finally plus array offset 
                        let ptr_reg = regtab.find_and_occupy_reg(lhs,&Type::I32, symtab, asm_sect, default_store, 
                            |symidx,ptr_reg,symtab,asm_sect,regtab|{
                            _load_sym_or_imm(asm_sect, &SymIdx::from_str("0"), ptr_reg.clone(), regtab, symtab)?;
                            for (idx,weight) in idx_vec.iter().zip(array_ty.get_array_dim_weight_vec()?.iter()){
                                let idx = idx.as_ref().unwrap();
                                let weight_reg = regtab.find_and_occupy_reg(weight, &Type::I32, symtab, asm_sect, default_store, default_load)?;
                                let idx_reg = regtab.find_and_occupy_reg(idx,&Type::I32, symtab, asm_sect, default_store, default_load)?;
                                let temp_idx_mul_weight_reg = regtab.find_and_occupy_reg(&array_symidx,&Type::I32, symtab, asm_sect, default_store, 
                                    |symidx,temp_reg,symtab,asm_sect,regtab|{
                                        asm_sect.asm(Arithmetic::new_mul(temp_reg, weight_reg.clone(), idx_reg.clone()).into());
                                        Ok(())
                                })?;
                                regtab.free_reg(weight_reg)?;
                                regtab.free_reg(idx_reg)?;
                                asm_sect.asm(Arithmetic::new_add(ptr_reg.clone(), ptr_reg.clone(),temp_idx_mul_weight_reg.clone() ).into());
                                regtab.free_reg(temp_idx_mul_weight_reg)?;
                            }
                            let ele_size = array_ty.get_ele_size()?;
                            asm_sect.asm(Shifts::new_slli_from_multiple(ptr_reg.clone(), ptr_reg.clone(), ele_size)?.into());
                            // 2 situations : 1. array is global  2. array is local to stack
                            match symtab.get(array_symidx)?.has_is_global() &&*symtab.get(array_symidx)?.get_is_global()?{
                                true => {
                                    let addr_reg = regtab.find_and_occupy_reg(lhs,&Type::Ptr64 { ty: Box::new(Type::Void) }, symtab, asm_sect, default_store, 
                                        |symidx,addr_reg,symtab,asm_sect,regtab|{
                                        asm_sect.asm(PseudoInstr::new_la(addr_reg.clone(), Imm::new_global_label(array_symidx.clone())).into());
                                        Ok(())
                                    })?;
                                    asm_sect.asm(Arithmetic::new_add(ptr_reg.clone(), ptr_reg.clone(), addr_reg.clone()).into());
                                    regtab.free_reg(addr_reg)?;
                                },
                                false => {
                                    let addr_reg = regtab.find_and_occupy_reg(lhs,&Type::Ptr64 { ty: Box::new(Type::Void) }, symtab, asm_sect, default_store, 
                                        |symidx,addr_reg,symtab,asm_sect,regtab|{
                                        let &array_offset2sp = symtab.get(array_symidx)?.get_mem_offset2sp()?;
                                        _load_sym_or_imm(asm_sect, &SymIdx::from(array_offset2sp),  addr_reg.clone(),regtab,symtab)?;
                                        Ok(())
                                    })?;
                                    asm_sect.asm(Arithmetic::new_add(addr_reg.clone(), addr_reg.clone(), Register::SP).into());
                                    asm_sect.asm(Arithmetic::new_add(ptr_reg.clone(), ptr_reg.clone(), addr_reg.clone()).into());
                                    regtab.free_reg(addr_reg)?;
                                },
                            }
                            Ok(())
                        })?;
                        regtab.free_reg(ptr_reg)?;
                    },
                    NhwcInstrType::Arith { lhs, rhs } => {
                        match rhs{
                            super::nhwc_instr::ArithOp::Add { a, b, vartype } => {
                                let val_reg1= regtab.find_and_occupy_reg(a, vartype, symtab, asm_sect, default_store, default_load)?;
                                let val_reg2= regtab.find_and_occupy_reg(b, vartype, symtab, asm_sect,default_store,default_load)?;
                                let rst_reg= regtab.find_and_occupy_reg(lhs, vartype, symtab, asm_sect, default_store, |symidx,reg,symtab,asm_sect,regtab|{
                                    match vartype{
                                        Type::I32 => {
                                            asm_sect.asm(Arithmetic::new_add(reg,val_reg1.clone(),val_reg2.clone()).into());
                                        },
                                        Type::F32 => {
                                            asm_sect.asm(Arithmetic::new_fadds(reg,val_reg1.clone(),val_reg2.clone()).into());
                                        },
                                        _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                    };
                                    Ok(())
                                })?;
                                regtab.free_reg(val_reg1)?;
                                regtab.free_reg(val_reg2)?;
                                regtab.free_reg(rst_reg)?;
                            },
                            super::nhwc_instr::ArithOp::Mul { a, b, vartype } => {
                                let val_reg1= regtab.find_and_occupy_reg(a, vartype,symtab, asm_sect, default_store, default_load)?;
                                let val_reg2= regtab.find_and_occupy_reg(b, vartype, symtab, asm_sect, default_store, default_load)?;
                                let rst_reg= regtab.find_and_occupy_reg(lhs, vartype, symtab, asm_sect, default_store, 
                                    |symidx,reg,symtab,asm_sect,regtab|{
                                    match vartype{
                                        Type::I32 => {
                                            asm_sect.asm(Arithmetic::new_mul(reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                        },
                                        Type::F32 => {
                                            asm_sect.asm(Arithmetic::new_fmuls(reg.clone(),val_reg1.clone(),val_reg2.clone()).clone().into());
                                        },
                                        _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                    };
                                    Ok(())
                                })?;
                                regtab.free_reg(val_reg1)?;
                                regtab.free_reg(val_reg2)?;
                                regtab.free_reg(rst_reg)?;
                            },
                            super::nhwc_instr::ArithOp::Div { a, b, vartype} => {
                                let val_reg1= regtab.find_and_occupy_reg(a, vartype,symtab, asm_sect, default_store, default_load)?;
                                let val_reg2= regtab.find_and_occupy_reg(b, vartype, symtab, asm_sect, default_store, default_load)?;
                                let rst_reg= regtab.find_and_occupy_reg(lhs, vartype, symtab, asm_sect, default_store, 
                                    |symidx,rst_reg,symtab,asm_sect,regtab|{
                                        match vartype{
                                            Type::I32 => {
                                                asm_sect.asm(Arithmetic::new_div(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                            },
                                            Type::F32 => {
                                                asm_sect.asm(Arithmetic::new_fdivs(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                            },
                                            _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                        };
                                        Ok(())
                                    }
                                )?;
                                regtab.free_reg(val_reg1)?;
                                regtab.free_reg(val_reg2)?;
                                regtab.free_reg(rst_reg)?;
                            },
                            super::nhwc_instr::ArithOp::Sub { a, b, vartype} => {
                                let val_reg1= regtab.find_and_occupy_reg(a, vartype, symtab, asm_sect, default_store, default_load)?;
                                let val_reg2= regtab.find_and_occupy_reg(b, vartype, symtab, asm_sect, default_store, default_load)?;
                                let rst_reg= regtab.find_and_occupy_reg(lhs, vartype, symtab, asm_sect, default_store, 
                                    |symidx,rst_reg,symtab,asm_sect,regtab|{
                                        match vartype{
                                            Type::I32 => {
                                                asm_sect.asm(Arithmetic::new_sub(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                            },
                                            Type::F32 => {
                                                asm_sect.asm(Arithmetic::new_fsubs(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                            },
                                            Type::I1 => {
                                                asm_sect.asm(Arithmetic::new_sub(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                            }
                                            _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                        };
                                        Ok(())
                                    }
                                )?;
                                regtab.free_reg(val_reg1)?;
                                regtab.free_reg(val_reg2)?;
                                regtab.free_reg(rst_reg)?;
                            },
                            super::nhwc_instr::ArithOp::Mod { a, b, vartype} => {
                                let val_reg1= regtab.find_and_occupy_reg(a, vartype, symtab, asm_sect, default_store, default_load)?;
                                let val_reg2= regtab.find_and_occupy_reg(b, vartype, symtab, asm_sect, default_store, default_load)?;
                                let rst_reg= regtab.find_and_occupy_reg(lhs, vartype, symtab, asm_sect, default_store, default_load)?;
                                match vartype{
                                    Type::I32 => {
                                        asm_sect.asm(Arithmetic::new_rem(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).clone().clone().into());
                                    },
                                    Type::F32 => {
                                        panic!("not support arithmetic operation on type f32 ")
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 ")}
                                };
                                regtab.free_reg(val_reg1)?;
                                regtab.free_reg(val_reg2)?;
                                regtab.free_reg(rst_reg)?;
                            },
                            super::nhwc_instr::ArithOp::Icmp { plan, a, b, vartype } => {
                                let val_reg1= regtab.find_and_occupy_reg(a, vartype, symtab, asm_sect, default_store, default_load)?;
                                let val_reg2= regtab.find_and_occupy_reg(b, vartype, symtab, asm_sect, default_store, default_load)?;
                                let rst_reg= regtab.find_and_occupy_reg(lhs, vartype, symtab, asm_sect, default_store, 
                                    |symidx,rst_reg,symtab,asm_sect,regtab|{
                                        match plan{
                                            super::nhwc_instr::IcmpPlan::Eq => {
                                                // BinOp!(sect asm_sect func_name {Compare::new} args{a,b,1,2,3} with_symtab src_symtab);
                                                asm_sect.asm(Logical::new_xor(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                                asm_sect.asm(PseudoInstr::new_seqz(rst_reg.clone(), rst_reg.clone()).into());
                                            },
                                            super::nhwc_instr::IcmpPlan::Ne => {
                                                asm_sect.asm(Logical::new_xor(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                                asm_sect.asm(PseudoInstr::new_snez(rst_reg.clone(), rst_reg.clone()).into());
                                            },
                                            super::nhwc_instr::IcmpPlan::Ugt => {
                                                todo!()
                                            },
                                            super::nhwc_instr::IcmpPlan::Uge => {
                                                todo!()
                                            },
                                            super::nhwc_instr::IcmpPlan::Ult => {
                                                todo!()
                                            },
                                            super::nhwc_instr::IcmpPlan::Ule => {
                                                todo!()
                                            },
                                            super::nhwc_instr::IcmpPlan::Sgt => {
                                                asm_sect.asm(Compare::new_slt(rst_reg.clone(), val_reg2.clone(), val_reg1.clone()).into());
                                            },
                                            super::nhwc_instr::IcmpPlan::Sge => {
                                                asm_sect.asm(Compare::new_slt(rst_reg.clone(), val_reg1.clone(), val_reg2.clone()).into());
                                                asm_sect.asm(Logical::new_xori(rst_reg.clone(), rst_reg.clone(), Imm::from_offset(1)).into());
                                            },
                                            super::nhwc_instr::IcmpPlan::Slt => {
                                                asm_sect.asm(Compare::new_slt(rst_reg.clone(), val_reg1.clone(), val_reg2.clone()).into());
                                            },
                                            super::nhwc_instr::IcmpPlan::Sle => {
                                                asm_sect.asm(Compare::new_slt(rst_reg.clone(), val_reg2.clone(), val_reg1.clone()).into());
                                                asm_sect.asm(Logical::new_xori(rst_reg.clone(), rst_reg.clone(), Imm::from_offset(1)).into());
                                            },
                                        }
                                        Ok(())
                                    }
                                )?;
                                regtab.free_reg(val_reg1)?;
                                regtab.free_reg(val_reg2)?;
                                regtab.free_reg(rst_reg)?;
                            },
                            super::nhwc_instr::ArithOp::Fcmp { plan, a, b, vartype } => {
                                let val_reg1= regtab.find_and_occupy_reg(a, vartype, symtab, asm_sect, default_store, default_load)?;
                                let val_reg2= regtab.find_and_occupy_reg(b, vartype, symtab, asm_sect, default_store, default_load)?;
                                let rst_reg= regtab.find_and_occupy_reg(lhs, vartype, symtab, asm_sect, default_store, 
                                    |symidx,rst_reg,symtab,asm_sect,regtab|{
                                        match plan{
                                            super::nhwc_instr::FcmpPlan::Oeq => {
                                                asm_sect.asm({Compare::new_feq_s} (rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                            },
                                            super::nhwc_instr::FcmpPlan::One => {
                                                asm_sect.asm({Compare::new_feq_s} (rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                                asm_sect.asm({PseudoInstr::new_seqz} (rst_reg.clone(),rst_reg.clone()).into());
                                            },
                                            super::nhwc_instr::FcmpPlan::Ogt => {
                                                asm_sect.asm({Compare::new_flt_s} (rst_reg.clone(),val_reg2.clone(),val_reg1.clone()).into());
                                            },
                                            super::nhwc_instr::FcmpPlan::Oge => {
                                                let rd1 = regtab.anonymous_occupy(&symidx, vartype, symtab, asm_sect, default_store, 
                                                    |symidx,rd1,symtab,asm_sect,regtab|{
                                                        asm_sect.asm(Compare::new_feq_s(rd1.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                                        Ok(())
                                                    }
                                                )?;
                                                let rd2 = regtab.anonymous_occupy(&symidx, vartype, symtab, asm_sect, default_store, 
                                                    |symidx,rd2,symtab,asm_sect,regtab|{
                                                        asm_sect.asm(Compare::new_flt_s(rd2.clone(),val_reg2.clone(),val_reg1.clone()).into());
                                                        Ok(())
                                                    }
                                                )?;
                                                asm_sect.asm(PseudoInstr::new_not(rd2.clone(),rd2.clone()).into());
                                                asm_sect.asm(Logical::new_or(rst_reg,rd1,rd2).into());
                                            },
                                            super::nhwc_instr::FcmpPlan::Olt => {
                                                asm_sect.asm(Compare::new_flt_s(rst_reg,val_reg1.clone(),val_reg2.clone()).into());
                                            },
                                            super::nhwc_instr::FcmpPlan::Ole => {
                                                let rd1 = regtab.anonymous_occupy(&symidx, vartype, symtab, asm_sect, default_store, 
                                                    |symidx,rd1,symtab,asm_sect,regtab|{
                                                        asm_sect.asm(Compare::new_feq_s(rd1.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                                        Ok(())
                                                    }
                                                )?;
                                                let rd2 = regtab.anonymous_occupy(&symidx, vartype, symtab, asm_sect, default_store, 
                                                    |symidx,rd2,symtab,asm_sect,regtab|{
                                                        asm_sect.asm(Compare::new_flt_s(rd2.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                                        Ok(())
                                                    }
                                                )?;
                                                asm_sect.asm(Logical::new_or(rst_reg,rd1,rd2).into());
                                            },
                                        }
                                        Ok(())
                                    }
                                )?;
                                regtab.free_reg(val_reg1)?;
                                regtab.free_reg(val_reg2)?;
                                regtab.free_reg(rst_reg)?;
                            },
                            super::nhwc_instr::ArithOp::LogicAnd { a, b, vartype} => {
                                let val_reg1= regtab.find_and_occupy_reg(a, vartype, symtab, asm_sect, default_store, default_load)?;
                                let val_reg2= regtab.find_and_occupy_reg(b, vartype,symtab, asm_sect, default_store, default_load)?;
                                let rst_reg= regtab.find_and_occupy_reg(lhs, vartype,symtab, asm_sect, default_store, 
                                    |symidx,rst_reg,symtab,asm_sect,regtab|{
                                        asm_sect.asm(Logical::new_and(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                        Ok(())
                                    }
                                )?;
                                regtab.free_reg(val_reg1)?;
                                regtab.free_reg(val_reg2)?;
                                regtab.free_reg(rst_reg)?;
                            },
                            super::nhwc_instr::ArithOp::LogicOr { a, b, vartype} => {
                                let val_reg1= regtab.find_and_occupy_reg(a, vartype, symtab, asm_sect, default_store, default_load)?;
                                let val_reg2= regtab.find_and_occupy_reg(b, vartype,symtab, asm_sect, default_store, default_load)?;
                                let rst_reg= regtab.find_and_occupy_reg(b, vartype, symtab, asm_sect, default_store, 
                                    |symidx,rst_reg: Register,symtab,asm_sect,regtab|{
                                        asm_sect.asm(Logical::new_or(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                        Ok(())
                                    }
                                )?;
                                regtab.free_reg(val_reg1)?;
                                regtab.free_reg(val_reg2)?;
                                regtab.free_reg(rst_reg)?;
                            },
                            super::nhwc_instr::ArithOp::LogicNot { a, vartype} => {
                                let val_reg1= regtab.find_and_occupy_reg(a, vartype, symtab, asm_sect, default_store, default_load)?;
                                let rst_reg= regtab.find_and_occupy_reg(lhs, vartype, symtab, asm_sect, default_store, 
                                    |symidx,rst_reg,symtab,asm_sect,regtab|{
                                        asm_sect.asm(Logical::new_xori(rst_reg.clone(), val_reg1.clone(), Imm::from_offset(-1)).into());
                                        Ok(())
                                    }
                                )?;
                                regtab.free_reg(val_reg1)?;
                                regtab.free_reg(rst_reg)?;
                            },
                        }
                        // store reg to lhs
                    },
                    NhwcInstrType::SimpleAssign { lhs, rhs, vartype } => {
                        let val_reg1= regtab.find_and_occupy_reg(rhs, vartype, symtab, asm_sect, default_store, default_load)?;
                        let val_reg2= regtab.find_and_occupy_reg(lhs, vartype, symtab, asm_sect, default_store, 
                            |symidx,reg,symtab,asm_sect,regtab|{asm_sect.asm(PseudoInstr::new_reg_mv(reg, val_reg1.clone(), vartype).into()); Ok(())}
                        )?;
                        regtab.free_reg(val_reg1)?;
                        regtab.free_reg(val_reg2)?;
                    },
                    NhwcInstrType::Call { op_assigned_symidx, func_op } => {
                        let mut fpu_args = vec![];
                        let mut gpr_args = vec![];
                        asm_sect.annotation("saved register dumping to mem".to_string());
                        for i in REG_S_RANGE.clone(){
                            regtab.try_release_reg(Register::new_s(i), symtab, asm_sect, default_store)?;
                        }
                        for i in REG_FS_RANGE.clone(){
                            regtab.try_release_reg(Register::new_fs(i), symtab, asm_sect, default_store)?;
                        }
                        asm_sect.annotation("saved register dumped to mem".to_string());
                        asm_sect.annotation("arg load start".to_string());
                        for (_idx,arg) in func_op.actual_arg_symidx_vec.iter().enumerate(){
                            match symtab.get(arg)?.get_type()?{
                                Type::F32 => {
                                    fpu_args.push(arg)
                                },
                                _ => {
                                    gpr_args.push(arg)
                                }
                            }
                        }   
                        for (idx,arg) in fpu_args.iter().enumerate(){
                            if REG_FS_RANGE.contains(&(idx as u8)){
                                let reg =Register::new_fa(idx as u8);
                                regtab.load_into(reg.clone(), arg, &Type::F32,symtab,asm_sect,default_store,default_store, default_load)?;
                                regtab.forget(reg, symtab)?;
                            }
                            // else {
                            //     // first ensure this arg is in reg
                            //     // since all the arg has been released to mem
                            //     load_sym_or_imm(asm_sect, arg, regtab, symtab)?;
                                
                            // }
                        }   
                        for (idx,arg) in gpr_args.iter().enumerate(){
                            if REG_A_RANGE.contains(&(idx as u8)){
                                let reg =Register::new_a(idx as u8);
                                regtab.load_into(reg.clone(), arg, &Type::I32,symtab,asm_sect,default_store, default_store,default_load)?;
                                regtab.forget(reg, symtab)?;
                            }else {

                            }
                        }   
                        asm_sect.annotation("arg load ended".to_string());
                        asm_sect.asm(PseudoInstr::new_call(Imm::new_global_label(func_op.func_symidx.clone())).into());
                        match op_assigned_symidx{
                            Some(assigned_symidx) => {
                                match symtab.get(assigned_symidx)?.get_type()?{
                                    Type::I32 => {
                                        let reg = Register::new_a(0);
                                        regtab.try_release_reg(reg.clone(), symtab, asm_sect, default_store)?;
                                        _store_sym(asm_sect, assigned_symidx, Register::new_a(0), symtab)?;
                                        regtab.set_freed_reg(reg, assigned_symidx, symtab)?;
                                    },
                                    Type::F32 => {
                                        let reg =Register::new_fa(0);
                                        regtab.try_release_reg(reg.clone(), symtab, asm_sect, default_store)?;
                                        _store_sym(asm_sect, assigned_symidx, Register::new_fa(0), symtab)?;
                                        regtab.set_freed_reg(reg, assigned_symidx, symtab)?;
                                    },
                                    _ => {
                                        return Err(anyhow!("ret type is not supported: {:?}",instr_struct))
                                    }
                                }
                            },
                            None => {

                            },
                        }
                        
                        
                    },
                    NhwcInstrType::Jump { jump_op } => {
                        match jump_op{
                            super::nhwc_instr::JumpOp::Ret { op_ret_sym } => {
                                let func_symidx = node!(at cfg_entry_node in cfg_graph).get_func_cor_symidx()?.clone();
                                _load_sym_or_imm(asm_sect, &symtab.get(&func_symidx)?.get_func_cor_ra_symidx()?.clone(), Register::RA,regtab, symtab)?;
                                _load_sym_or_imm(asm_sect, &symtab.get(&func_symidx)?.get_func_cor_s0_symidx()?.clone(), Register::new_s0(),regtab, symtab)?;

                                match op_ret_sym{
                                    Some(ret_sym) => {
                                        if symtab.get(ret_sym)?.get_type()?.is_f_32(){
                                            let temp_reg = regtab.find_and_occupy_reg(ret_sym, &Type::F32, symtab,asm_sect, default_store, default_load)?;
                                            _load_sym_or_imm(asm_sect, ret_sym, Register::new_fa(0),regtab, symtab)?;
                                            regtab.free_reg(temp_reg)?;
                                        }else{
                                            _load_sym_or_imm(asm_sect, ret_sym, Register::new_a(0),regtab,symtab)?;
                                        }
                                    },
                                    None => {
                                        // do nothing 
                                    },
                                }
                                let stack_size = node!(at cfg_entry_node in cfg_graph).get_mem_layout()?.get_mem_len();
                                add_literal_to_reg(asm_sect, Register::SP, Register::SP, regtab, symtab, stack_size as isize)?;
                                asm_sect.asm(PseudoInstr::new_ret().into());
                            },
                            super::nhwc_instr::JumpOp::Br { cond, t1, t2 } => {
                                let val_reg = regtab.find_and_occupy_reg(cond, &Type::I1, symtab, asm_sect, default_store, default_load)?;
                                asm_sect.asm(PseudoInstr::new_bnez(val_reg.clone(),Imm::new_local_label(t1.clone())).into());
                                asm_sect.asm(PseudoInstr::new_j(Imm::new_local_label(t2.clone())).into());
                                regtab.free_reg(val_reg)?;
                            },
                            super::nhwc_instr::JumpOp::Switch { cond: _, default: _, compared: _ } => todo!(),
                            super::nhwc_instr::JumpOp::DirectJump { label_symidx } => {
                                asm_sect.asm(PseudoInstr::new_j(Imm::new_local_label(label_symidx.clone())).into())
                            },
                        }
                    },
                    NhwcInstrType::Phi { lhs: _, rhs: _ } => {
                        panic!("phi appeared in gen asm pass");
                    },
                    NhwcInstrType::TranType { lhs, op } => {
                        match op{
                            super::nhwc_instr::Trans::Fptosi { float_symidx } => {
                                let val_reg =regtab.find_and_occupy_reg(float_symidx, &Type::F32, symtab, asm_sect, default_store, default_load)?;
                                let rst_reg = regtab.find_and_occupy_reg(float_symidx, &Type::I32, symtab, asm_sect, default_store, 
                                    |symidx,rst_reg,symtab,asm_sect,regtab|{
                                        asm_sect.asm(Trans::new_fcvt_w_s(rst_reg.clone(),val_reg.clone()).into());
                                        Ok(())
                                    }
                                )?;
                                regtab.free_reg(val_reg)?;
                                regtab.free_reg(rst_reg)?;
                            },
                            super::nhwc_instr::Trans::Sitofp { int_symidx } => {
                                let val_reg =regtab.find_and_occupy_reg(int_symidx, &Type::I32, symtab, asm_sect, default_store, default_load)?;
                                let rst_reg = regtab.find_and_occupy_reg(int_symidx, &Type::F32, symtab, asm_sect, default_store, 
                                    |symidx,rst_reg,symtab,asm_sect,regtab|{
                                        asm_sect.asm(Trans::new_fcvt_s_w(rst_reg.clone(),val_reg.clone()).into());
                                        Ok(())
                                    }
                                )?;
                                regtab.free_reg(val_reg)?;
                                regtab.free_reg(rst_reg)?;
                            },
                            super::nhwc_instr::Trans::Zext { bool_symidx } => {
                                //b->i
                                let val_reg =regtab.find_and_occupy_reg(bool_symidx, &Type::I1, symtab, asm_sect, default_store, default_load)?;
                                let rst_reg = regtab.find_and_occupy_reg(bool_symidx, &Type::I1, symtab, asm_sect, default_store, 
                                    |symidx,rst_reg,symtab,asm_sect,regtab|{
                                        asm_sect.asm(Logical::new_andi(rst_reg.clone(),val_reg.clone(),Imm::from_offset(1)).into());
                                        Ok(())
                                    }
                                )?;
                                regtab.free_reg(val_reg)?;
                                regtab.free_reg(rst_reg)?;

                            },
                            super::nhwc_instr::Trans::Bitcast { rptr_symidx: _, rptr_type: _, lptr_type: _ } => {
                                //p->p
                                todo!();
                            },
                        }
                    },
                    NhwcInstrType::BreakPoint { symidx: _, breakpoint_args: _ } => {
                        // panic!("breakpoint appeared in gen asm pass");
                        // nothing to do 
                    },
                    NhwcInstrType::Nope {  } => {
                        asm_sect.asm(PseudoInstr::new_nop().into());
                    },
                    NhwcInstrType::Mu { may_use_symidx: _, may_use_instr: _ } => {},
                    NhwcInstrType::Chi { lhs: _, rhs: _, may_def_instr: _ } => {},
                }
            }
        }
        _regtab.reset(symtab)?;
    }
    Ok(_asm_sect)
}
///  sym in memory -> reg or literal li -> reg
/// symidx could be literal or symbol
/// reg alloc is finished in this scope 
pub fn load_sym_or_imm(asm_sect:&mut AsmSection,symidx:&SymIdx,regtab:&mut RegTab,symtab:&mut SymTab) -> Result<()>{
    if !symidx.is_global_ptr(){
        // if this symidx is not found in symtab, it must be a literal
        match !(symtab.has_symbol(symidx) && !*symtab.get(symidx)?.get_is_literal()?){
            true => {
                let ty = Type::new_from_const_str(&symidx.symbol_name);
                // as imm 

                let reg = regtab.find_and_occupy_reg(symidx, &ty, symtab, asm_sect, 
                    default_store,default_load)?;

                regtab.free_reg(reg)?;
                Ok(())
            },
            false => {
                // as symbol 
                let ty = symtab.get(symidx)?.get_type()?.clone();

                let reg = regtab.find_and_occupy_reg(symidx, &ty, symtab, asm_sect, 
                    default_store,|symidx,reg,symtab,asm_sect,regtab|{
                    let &symidx_offset2sp = symtab.get(&symidx)?.get_mem_offset2sp()?;
                    let size = symtab.get(&symidx)?.get_type()?.get_ele_size()?;
                    _load_sym_or_imm(asm_sect, &symidx, reg.clone(), regtab, symtab)?;
                    Ok(())
                })?;
                regtab.free_reg(reg)?;
                Ok(())
            },
        }
    }else{
        let reg = regtab.find_and_occupy_reg(symidx,&Type::Ptr64 { ty: Box::new(Type::Void) },symtab,asm_sect, 
            default_store,|symidx,reg,symtab,asm_sect,regtab|{
            _load_sym_or_imm(asm_sect, &symidx, reg.clone(), regtab, symtab)?;
            Ok(())
        })?;
        regtab.free_reg(reg)?;
        Ok(())
    }
}
// /// reg value -> sym in memory  
// /// require symidx to be symbol  
// /// reg alloc is finished in this scope 
// pub fn store_sym(asm_sect:&mut AsmSection, symidx:&SymIdx,regtab:&mut RegTab, symtab:&mut SymTab) -> Result<Register>{

//     let ty = symtab.get(symidx)?.get_type()?.clone();

//     let val_reg = regtab.find_and_occupy_reg(symidx,&ty,symtab,false,|symidx,reg|_store_sym(asm_sect, reg, symtab),|symidx,reg|{})?;

//     let &symidx_offset2sp = symtab.get(symidx)?.get_mem_offset2sp()?;
//     let size = symtab.get(symidx)?.get_type()?.get_ele_size()?;
//     if val_reg.is_fpu() ^ symtab.get(symidx)?.get_type()?.is_f_32(){
//         return Err(anyhow!("can't store symidx {:?}:{:?} to register {:?}",symidx,symtab.get(symidx)?.get_type()?,val_reg))
//     }
//     asm_sect.asm(Stores::new( size,val_reg.clone(),Register::SP, symidx_offset2sp as isize, val_reg.is_fpu())?.into());

//     regtab.free_reg(val_reg.clone())?;
//     Ok(val_reg)
// }
/// reg value -> M[ptr_sym]
/// require ptr_symidx to be symbol 
/// reg alloc is finished in this scope 
pub fn store_from_ptr(asm_sect:&mut AsmSection,ptr_symidx:&SymIdx,val_symidx:&SymIdx, regtab:&mut RegTab,symtab:&mut SymTab)-> Result<()>{

    let ptr_ty = symtab.get(ptr_symidx)?.get_type()?.clone();
    let val_ty = ptr_ty.to_deref_ptr_type()?;

    let ptr_reg = regtab.find_and_occupy_reg(ptr_symidx, &ptr_ty, symtab,asm_sect, default_store, default_load)?;
    let val_reg = regtab.find_and_occupy_reg( &val_symidx, &val_ty, symtab,asm_sect, default_store, default_load)?;
    _store_from_ptr(asm_sect, ptr_symidx, ptr_reg.clone(), val_reg.clone(), symtab)?;
    regtab.free_reg(val_reg)?;
    regtab.free_reg(ptr_reg)?;
    Ok(())
}

// load the value from ptr symidx to value reg
/// reg alloc is finished in this scope 
pub fn load_from_ptr(asm_sect:&mut AsmSection,ptr_symidx:&SymIdx, regtab:&mut RegTab, symtab:&mut SymTab) ->Result<()>{

    let ptr_ty = symtab.get(ptr_symidx)?.get_type()?.clone();
    let val_symidx = symtab.get(ptr_symidx)?.get_pointed_symidx()?.clone();
    let val_ty = ptr_ty.to_deref_ptr_type()?;

    let ptr_reg = regtab.find_and_occupy_reg(ptr_symidx, &ptr_ty, symtab,asm_sect,default_store, default_load)?;
    let val_reg = regtab.find_and_occupy_reg( &val_symidx, &val_ty, symtab,asm_sect,default_store,|symidx,val_reg,symtab,asm_sect,regtab|{
        _load_from_ptr(asm_sect, ptr_symidx, ptr_reg.clone(), val_reg.clone(), symtab)?;
        Ok(())
    })?;
    regtab.free_reg(val_reg.clone())?;
    regtab.free_reg(ptr_reg.clone())?;
    Ok(())
}



///  sym in memory -> reg or literal li -> reg
/// symidx could be literal or symbol
pub fn _load_sym_or_imm(asm_sect:&mut AsmSection,symidx:&SymIdx,reg:Register,regtab:&mut RegTab,symtab:&mut SymTab) -> Result<()>{
    if !symidx.is_global_ptr(){
        // if this symidx is not found in symtab, it must be a literal
        match symidx.is_literal(){
            true => {
                // as imm 
                match Type::new_from_const_str(&symidx.symbol_name) {
                    Type::F32 => {
                        // f32 
                        assert!(reg.is_fpu());
                        let temp_reg = regtab.find_and_occupy_reg(symidx, &Type::F32, symtab, asm_sect, default_store, |symidx,temp_reg,symtab,asm_sect,regtab|{
                            asm_sect.asm(PseudoInstr::new_li(temp_reg.clone(), Imm::new_literal(symidx.clone())).into());
                            Ok(())
                        })?;
                        asm_sect.asm(PseudoInstr::new_fmv_s(reg, temp_reg.clone()).into());
                        Ok(())
                    },
                    _ => {
                        // i32 ...
                        assert!(!reg.is_fpu());
                        asm_sect.asm(PseudoInstr::new_li(reg, Imm::new_literal(symidx.clone())).into());
                        Ok(())
                    }
                }
            },
            false => {
                // as symbol 
                let &symidx_offset2sp = symtab.get(symidx)?.get_mem_offset2sp()?;
                let size = symtab.get(symidx)?.get_type()?.get_ele_size()?;
                let ty = symtab.get(symidx)?.get_type()?;
                match ty{
                    Type::F32 => {
                        assert!(reg.is_fpu());
                        if let Some(reg_in_regtab) = symtab.reg_of_symidx(symidx)?{
                            asm_sect.asm(PseudoInstr::new_reg_mv(reg, reg_in_regtab, ty).into());
                            return Ok(())
                        }

                        if symidx_offset2sp.is_legal_offset(){
                            asm_sect.asm(Loads::new(size,reg.clone(), Register::SP, symidx_offset2sp, true)?.into());
                        }else{
                            let temp_reg = regtab.find_and_occupy_reg(symidx, &Type::F32, symtab, asm_sect, default_store, |symidx,temp_reg,symtab,asm_sect,regtab|{
                                asm_sect.asm(PseudoInstr::new_li(temp_reg.clone(), Imm::new_literal_isize(symidx_offset2sp)).into());
                                Ok(())
                            })?;
                            asm_sect.asm(Arithmetic::new_add(temp_reg.clone(), Register::SP,temp_reg.clone()).into());
                            asm_sect.asm(Loads::new(size, reg.clone(), temp_reg.clone(), 0, true)?.into());
                            regtab.free_reg(temp_reg)?;
                        }
                        Ok(())
                    },
                    _ => {
                        assert!(!reg.is_fpu());
                        if let Some(reg_in_regtab) = symtab.reg_of_symidx(symidx)?{
                            asm_sect.asm(PseudoInstr::new_reg_mv(reg, reg_in_regtab, ty).into());
                            return Ok(())
                        }
                        if symidx_offset2sp.is_legal_offset(){
                            asm_sect.asm(Loads::new(size,reg.clone(), Register::SP, symidx_offset2sp, false)?.into());
                        }else{
                            let temp_reg = regtab.find_and_occupy_reg(symidx, &Type::I32, symtab, asm_sect, default_store, |symidx,temp_reg,symtab,asm_sect,regtab|{
                                asm_sect.asm(PseudoInstr::new_li(temp_reg.clone(), Imm::new_literal_isize(symidx_offset2sp)).into());
                                Ok(())
                            })?;
                            asm_sect.asm(Arithmetic::new_add(temp_reg.clone(), Register::SP,temp_reg.clone()).into());
                            asm_sect.asm(Loads::new(size, reg.clone(), temp_reg.clone(), 0, false)?.into());
                            regtab.free_reg(temp_reg)?;
                        }
                        Ok(())
                    }
                }
            },
        }
    }else{
        asm_sect.annotation(format!("   load label {} as ptr to reg",symidx.to_deglobal_ptr()?));
        asm_sect.asm(PseudoInstr::new_la(reg.clone(), Imm::new_global_label(symidx.to_deglobal_ptr()?)).into());
        Ok(())
    }
}
/// reg value -> sym in memory  
/// require symidx to be symbol in symtab
pub fn _store_sym(asm_sect:&mut AsmSection, symidx:&SymIdx,value_reg:Register,symtab:&SymTab) -> Result<()>{
    // if symidx.is_global_ptr() || (symtab.has_symbol(symidx) && *symtab.get(symidx)?.get_is_global()?){
    //     return Ok(())
    // }
    let &symidx_offset2sp = symtab.get(symidx)?.get_mem_offset2sp()?;
    let size = symtab.get(symidx)?.get_type()?.get_ele_size()?;
    if value_reg.is_fpu() ^ symtab.get(symidx)?.get_type()?.is_f_32(){
        return Err(anyhow!("can't store symidx {:?}:{:?} to register {:?}",symidx,symtab.get(symidx)?.get_type()?,value_reg))
    }
    asm_sect.asm(Stores::new( size,value_reg.clone(),Register::SP, symidx_offset2sp as isize, value_reg.is_fpu())?.into());
    Ok(())
}
/// reg value -> M[ptr_sym]
/// require value and pointer is ready in ptr_reg and val_reg
pub fn _store_from_ptr(asm_sect:&mut AsmSection,ptr_symidx:&SymIdx, ptr_reg:Register, val_reg:Register ,symtab:&mut SymTab)-> Result<()>{
    let size = symtab.get(ptr_symidx)?.get_type()?.get_ele_size()?;
    if val_reg.is_fpu() ^ symtab.get(ptr_symidx)?.get_type()?.to_deref_ptr_type()?.is_f_32(){
        return Err(anyhow!("can't store symidx {:?}:{:?}'s pointed symidx to register {:?}",ptr_symidx,symtab.get(ptr_symidx)?.get_type()?,val_reg))
    }
    asm_sect.asm(Stores::new( size,val_reg.clone(),ptr_reg, 0, val_reg.is_fpu())?.into());
    Ok(())
}

// load the value from ptr symidx to value reg
// require ptr_reg and val_reg is ready 
pub fn _load_from_ptr(asm_sect:&mut AsmSection,ptr_symidx:&SymIdx,ptr_reg:Register, val_reg:Register ,symtab:&mut SymTab) ->Result<Register>{
    // deref the ptr then get its ele size
    let size = symtab.get(ptr_symidx)?.get_type()?.to_deref_ptr_type()?.get_ele_size()?;
    let is_f32 = symtab.get(ptr_symidx)?.get_type()?.to_deref_ptr_type()?.is_f_32();

    asm_sect.asm(Loads::new(size, val_reg.clone(), ptr_reg.clone(), 0, is_f32)?.into());
    Ok(val_reg)
}

