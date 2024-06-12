

use crate::{direct_child_nodes, instr, node, node_mut, passes::simulator_debug_pass::debug_simu_run, toolkit::rv64_instr::{Arithmetic}};
use anyhow::*;

use super::{asm_struct::{AsmSection, AsmStructure}, cfg_edge::CfgEdgeType, cfg_node::{CfgGraph, CFG_ROOT}, dot::Config, etc::{dfs_with_priority, generate_png_by_graph}, field::Type, nhwc_instr::{InstrSlab, NhwcInstr, NhwcInstrType}, rv64_instr::{BaseIntInstr, Compare, Imm, Loads, Logical, PseudoInstr, RV64Instr, Register, Shifts, Stores, Trans}, simulator::Simulator, symtab::{SymIdx, SymTab}};

/// convert nhwc ir into riscv
pub fn parse_nhwcir2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, riscv_instr_slab:&mut InstrSlab<RV64Instr>, asm_structure:&mut AsmStructure, src_symtab:&SymTab)->Result<()>{
    // firstly process root which contains global vars 
    let static_init_sect = parse_root2riscv(cfg_graph, nhwc_instr_slab, riscv_instr_slab, src_symtab)?;
    asm_structure.sects.push(static_init_sect);
    let func_entry_sect = parse_funcs2riscv(cfg_graph, nhwc_instr_slab, riscv_instr_slab, src_symtab)?;
    asm_structure.sects.push(func_entry_sect);
    println!("{:?}",asm_structure);
    Ok(())
}
/// convert `cfg_root_node` into riscv  
/// assumes that there are only global and some calculating instrs so that `simulator` can run directly
fn parse_root2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, _riscv_instr_slab:&mut InstrSlab<RV64Instr>, src_symtab:&SymTab)->Result<AsmSection>{
    let root_node = node_mut!(at CFG_ROOT in cfg_graph);
    let mut simulator = Simulator::new(root_node.instrs.clone(), false);
    simulator.instr_list.push(nhwc_instr_slab.insert_instr(NhwcInstrType::new_exit_breakpoint( vec![]).into()));
    simulator.load_instrs(&nhwc_instr_slab)?;

    // run simulator to get values of static variables in `simulator.simu_symtab`
    let simulator_g = debug_simu_run(&mut simulator, &nhwc_instr_slab, src_symtab, true)?;
    generate_png_by_graph(&simulator_g, "debug_root_simu".to_string(), &[Config::Record, Config::Rounded, Config::SymTab, Config::Title("debug_root_simu".to_string())])?;

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
                        asm_sect.global(Imm::new_jump_label(var_symidx.clone()));
                        asm_sect.annotation(format!("{:?}",&instr!(at instr in nhwc_instr_slab)?));
                        asm_sect.obj_type(Imm::new_jump_label(var_symidx.clone()));
                        asm_sect.label(Imm::new_jump_label(var_symidx.clone()));
                        asm_sect.apply_value(simulator.simu_symtab.get_symbol(&var_symidx.to_src_symidx())?.get_simu_val()?)?;
                    }
                }
            },
            _ => {
                // do nothing 
            }
        }
    }
       
    Ok(asm_sect)
}


/// convert `cfg_entry_node` into riscv 
/// assume first instr be func_def instr while others are alloc instr
fn parse_funcs2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, _riscv_instr_slab:&mut InstrSlab<RV64Instr>, src_symtab:&SymTab) -> Result<AsmSection>{
    let entries = direct_child_nodes!(at CFG_ROOT in cfg_graph);
    let mut asm_sect = AsmSection::new();
    asm_sect.text() ;
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

        for &cfg_node in &dfs_node_vec{
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs() {
                let instr_struct = instr!(at instr in nhwc_instr_slab)?;
                asm_sect.annotation(format!("{:?}",instr_struct));
                match &instr_struct.instr_type{
                    NhwcInstrType::Label { label_symidx } => {
                        asm_sect.label(Imm::new_jump_label(label_symidx.clone()));
                    },
                    NhwcInstrType::DefineFunc { func_symidx, ret_symidx: _, args } => {
                        asm_sect.global(Imm::new_func_label(func_symidx.clone()));
                        asm_sect.func_type(Imm::new_func_label(func_symidx.clone()));
                        asm_sect.label(Imm::new_func_label(func_symidx.clone()));
                        let mem_layout = node!(at cfg_entry_node in cfg_graph).get_mem_layout()?;
                        asm_sect.annotation(format!("mem layout:{:?}",mem_layout));
                        // apply for stack mem
                        let stack_size = mem_layout.get_mem_len();
                        // allocate stack mem
                        asm_sect.asm(Arithmetic::new_addi(Register::new_sp(), Register::new_sp(), Imm::from_offset(-(stack_size as isize))).into());
                        store_sym(&mut asm_sect, src_symtab.get_symbol(func_symidx)?.get_func_cor_ra_symidx()?, Register::RA, src_symtab)?;
                        store_sym(&mut asm_sect, src_symtab.get_symbol(func_symidx)?.get_func_cor_s0_symidx()?, Register::new_s0(), src_symtab)?;
                        asm_sect.asm(Arithmetic::new_addi(Register::new_s0(), Register::new_sp(), Imm::from_offset(stack_size as isize)).into());
                        
                        let mut fpu_args = vec![];
                        let mut gpr_args = vec![];
                        for (idx,arg) in args.iter().enumerate(){
                            match src_symtab.get_symbol(arg)?.get_type()?{
                                Type::F32 => {
                                    fpu_args.push(arg)
                                },
                                _ => {
                                    gpr_args.push(arg)
                                }
                            }
                        }   
                        for (idx,arg) in fpu_args.iter().enumerate(){
                            store_sym(&mut asm_sect, &arg,Register::new_fa(idx as u8) , src_symtab)?;
                        }   
                        for (idx,arg) in gpr_args.iter().enumerate(){
                            store_sym(&mut asm_sect, &arg,Register::new_a(idx as u8) , src_symtab)?;
                        }   
                    },
                    NhwcInstrType::DefineVar { var_symidx, vartype: _, op_value } => {
                        match op_value{
                            Some(value_symidx) => {
                                let val_reg = Register::new_s(1);
                                load_sym_or_imm(&mut asm_sect, value_symidx,val_reg.clone() , src_symtab)?;
                                store_sym(&mut asm_sect, var_symidx, val_reg, src_symtab)?;
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
                        let val_reg = load_from_ptr(&mut asm_sect, ptr_symidx, Register::new_s(1), Register::new_s(2), src_symtab)?;
                        store_sym(&mut asm_sect, lhs, val_reg, src_symtab)?;
                    },
                    NhwcInstrType::Store { value_symidx, value_ty, ptr_symidx, ptr_ty: _ } => {
                        let val_reg = Register::new_s(2);
                        load_sym_or_imm(&mut asm_sect, value_symidx,val_reg.clone() , src_symtab)?;
                        store_from_ptr(&mut asm_sect, ptr_symidx, Register::new_s(1), val_reg, src_symtab)?;
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
                        asm_sect.asm(PseudoInstr::new_mv(Register::new_s(3), Register::Zero).into());
                        for (idx,weight) in idx_vec.iter().zip(array_ty.get_array_dim_weight_vec()?.iter()){
                            load_sym_or_imm(&mut asm_sect, weight, Register::new_s(1), src_symtab)?;
                            load_sym_or_imm(&mut asm_sect, idx, Register::new_s(2), src_symtab)?;
                            asm_sect.asm(Arithmetic::new_mul(Register::new_s(4), Register::new_s(1), Register::new_s(2)).into());
                            asm_sect.asm(Arithmetic::new_add(Register::new_s(3), Register::new_s(3), Register::new_s(4)).into());
                        }
                        let ele_size = array_ty.get_ele_size()?;
                        asm_sect.asm(Shifts::new_slli_from_multiple(Register::new_s(3), Register::new_s(3), ele_size)?.into());
                        // 2 situations : 1. array is global  2. array is local to stack
                        match src_symtab.get_symbol(array_symidx)?.has_is_global() 
                            &&*src_symtab.get_symbol(array_symidx)?.get_is_global()?{
                            true => {
                                asm_sect.asm(PseudoInstr::new_la(Register::new_s(5), array_symidx.clone()).into());
                            },
                            false => {
                                let &array_offset2sp = src_symtab.get_symbol(array_symidx)?.get_mem_offset2sp()?;
                                load_sym_or_imm(&mut asm_sect, &SymIdx::from(array_offset2sp), Register::new_s(5), src_symtab)?;
                            },
                        }
                        asm_sect.asm(Arithmetic::new_add(Register::new_s(3), Register::new_s(3), Register::new_s(5)).into());
                        store_sym(&mut asm_sect, lhs,Register::new_s(3), src_symtab)?;
                    },
                    NhwcInstrType::Arith { lhs, rhs } => {
                        // we will store rst to reg3
                        match rhs{
                            super::nhwc_instr::ArithOp::Add { a, b, vartype } => {
                                // BinOp!(sect asm_sect func_name {Arithmetic::new_add} args{a,b,1,2,3} with_symtab src_symtab);
                                let (val_reg1,val_reg2 ,rst_reg)= match vartype{
                                    Type::I32 => {
                                        (Register::new_s(1),Register::new_s(2),Register::new_s(3))
                                    },
                                    Type::F32 => {
                                        (Register::new_fs(1),Register::new_fs(2),Register::new_s(3))
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                                load_sym_or_imm(&mut asm_sect, a, val_reg1.clone(), src_symtab)?;
                                load_sym_or_imm(&mut asm_sect, b, val_reg2.clone(), src_symtab)?;
                                match vartype{
                                    Type::I32 => {
                                        asm_sect.asm(Arithmetic::new_add(rst_reg.clone(),val_reg1,val_reg2).into());
                                    },
                                    Type::F32 => {
                                        asm_sect.asm(Arithmetic::new_fadds(rst_reg.clone(),val_reg1,val_reg2).into());
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                                store_sym(&mut asm_sect, lhs, rst_reg, src_symtab)?;
                            },
                            super::nhwc_instr::ArithOp::Mul { a, b, vartype } => {
                                let (val_reg1,val_reg2 ,rst_reg)= match vartype{
                                    Type::I32 => {
                                        (Register::new_s(1),Register::new_s(2),Register::new_s(3))
                                    },
                                    Type::F32 => {
                                        (Register::new_fs(1),Register::new_fs(2),Register::new_fs(3))
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                                load_sym_or_imm(&mut asm_sect, a, val_reg1.clone(), src_symtab)?;
                                load_sym_or_imm(&mut asm_sect, b, val_reg2.clone(), src_symtab)?;
                                match vartype{
                                    Type::I32 => {
                                        asm_sect.asm(Arithmetic::new_mul(rst_reg.clone(),val_reg1,val_reg2).into());
                                    },
                                    Type::F32 => {
                                        asm_sect.asm(Arithmetic::new_fmuls(rst_reg.clone(),val_reg1,val_reg2).into());
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                                store_sym(&mut asm_sect, lhs, rst_reg.clone(), src_symtab)?;
                            },
                            super::nhwc_instr::ArithOp::Div { a, b, vartype} => {
                                let (val_reg1,val_reg2 ,rst_reg)= match vartype{
                                    Type::I32 => {
                                        (Register::new_s(1),Register::new_s(2),Register::new_s(3))
                                    },
                                    Type::F32 => {
                                        (Register::new_fs(1),Register::new_fs(2),Register::new_s(3))
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                                load_sym_or_imm(&mut asm_sect, a, val_reg1.clone(), src_symtab)?;
                                load_sym_or_imm(&mut asm_sect, b, val_reg2.clone(), src_symtab)?;
                                match vartype{
                                    Type::I32 => {
                                        asm_sect.asm(Arithmetic::new_div(rst_reg.clone(),val_reg1,val_reg2).into());
                                    },
                                    Type::F32 => {
                                        asm_sect.asm(Arithmetic::new_fdivs(rst_reg.clone(),val_reg1,val_reg2).into());
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                                store_sym(&mut asm_sect, lhs, rst_reg, src_symtab)?;
                            },
                            super::nhwc_instr::ArithOp::Sub { a, b, vartype} => {
                                let (val_reg1,val_reg2 ,rst_reg)= match vartype{
                                    Type::I32 => {
                                        (Register::new_s(1),Register::new_s(2),Register::new_s(3))
                                    },
                                    Type::F32 => {
                                        (Register::new_fs(1),Register::new_fs(2),Register::new_s(3))
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                                load_sym_or_imm(&mut asm_sect, a, val_reg1.clone(), src_symtab)?;
                                load_sym_or_imm(&mut asm_sect, b, val_reg2.clone(), src_symtab)?;
                                match vartype{
                                    Type::I32 => {
                                        asm_sect.asm(Arithmetic::new_sub(rst_reg.clone(),val_reg1,val_reg2).into());
                                    },
                                    Type::F32 => {
                                        asm_sect.asm(Arithmetic::new_fsubs(rst_reg.clone(),val_reg1,val_reg2).into());
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                                store_sym(&mut asm_sect, lhs, rst_reg, src_symtab)?;
                            },
                            super::nhwc_instr::ArithOp::Mod { a, b, vartype} => {
                                let (val_reg1,val_reg2 ,rst_reg)= match vartype{
                                    Type::I32 => {
                                        (Register::new_s(1),Register::new_s(2),Register::new_s(3))
                                    },
                                    Type::F32 => {
                                        (Register::new_fs(1),Register::new_fs(2),Register::new_s(3))
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                                load_sym_or_imm(&mut asm_sect, a, val_reg1.clone(), src_symtab)?;
                                load_sym_or_imm(&mut asm_sect, b, val_reg2.clone(), src_symtab)?;
                                match vartype{
                                    Type::I32 => {
                                        asm_sect.asm(Arithmetic::new_rem(rst_reg.clone(),val_reg1,val_reg2).into());
                                    },
                                    Type::F32 => {
                                        panic!("not support arithmetic operation on type f32 ")
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 ")}
                                };
                                store_sym(&mut asm_sect, lhs, rst_reg, src_symtab)?;
                            },
                            super::nhwc_instr::ArithOp::Icmp { plan, a, b, vartype } => {
                                let (val_reg1,val_reg2 ,rst_reg)= match vartype{
                                    Type::I1 => {
                                        (Register::new_s(1),Register::new_s(2),Register::new_s(3))
                                    },
                                    Type::I32 => {
                                        (Register::new_s(1),Register::new_s(2),Register::new_s(3))
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };

                                load_sym_or_imm(&mut asm_sect, a, val_reg1.clone(), src_symtab)?;
                                load_sym_or_imm(&mut asm_sect, b, val_reg2.clone(), src_symtab)?;
                                match plan{
                                    super::nhwc_instr::IcmpPlan::Eq => {
                                        // BinOp!(sect asm_sect func_name {Compare::new} args{a,b,1,2,3} with_symtab src_symtab);
                                        asm_sect.asm(Logical::new_xor(rst_reg.clone(),val_reg1,val_reg2).into());
                                        asm_sect.asm(Compare::new_sltiu(rst_reg.clone(),rst_reg.clone(),Imm::from_offset(1)).into());
                                    },
                                    super::nhwc_instr::IcmpPlan::Ne => {
                                        asm_sect.asm(Logical::new_xor(rst_reg.clone(),val_reg1,val_reg2).into());
                                        asm_sect.asm({Compare::new_sltiu} (rst_reg.clone(),rst_reg.clone(),Imm::from_offset(1)).into());
                                        asm_sect.asm({Logical::new_xori} (rst_reg.clone(),rst_reg.clone(),Imm::from_offset(1)).into());
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
                                        asm_sect.asm(Compare::new_slt(rst_reg.clone(), val_reg2, val_reg1).into());
                                    },
                                    super::nhwc_instr::IcmpPlan::Sge => {
                                        asm_sect.asm({Compare::new_slt } (rst_reg.clone(), val_reg2, val_reg1).into());
                                        asm_sect.asm({Logical::new_xori } (rst_reg.clone(), rst_reg.clone(), Imm::from_offset(1)).into());
                                    },
                                    super::nhwc_instr::IcmpPlan::Slt => {
                                        asm_sect.asm(Compare::new_slt(rst_reg.clone(), val_reg1, val_reg2).into());
                                    },
                                    super::nhwc_instr::IcmpPlan::Sle => {
                                        asm_sect.asm({Compare::new_slt } (rst_reg.clone(), val_reg1, val_reg2).into());
                                        asm_sect.asm({Logical::new_xori } (rst_reg.clone(), rst_reg.clone(), Imm::from_offset(1)).into());
                                    },
                                }
                                store_sym(&mut asm_sect, lhs, rst_reg, src_symtab)?;
                            },
                            super::nhwc_instr::ArithOp::Fcmp { plan, a, b, vartype } => {
                                let (val_reg1,val_reg2 ,rst_reg)= match vartype{
                                    Type::F32 => {
                                        (Register::new_fs(1),Register::new_fs(2),Register::new_s(3))
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };

                                load_sym_or_imm(&mut asm_sect, a, val_reg1.clone(), src_symtab)?;
                                load_sym_or_imm(&mut asm_sect, b, val_reg2.clone(), src_symtab)?;
                                match plan{
                                    super::nhwc_instr::FcmpPlan::Oeq => {
                                        asm_sect.asm({Compare::new_feq_s} (rst_reg.clone(),val_reg1,val_reg2).into());
                                    },
                                    super::nhwc_instr::FcmpPlan::One => {
                                        asm_sect.asm({Compare::new_feq_s} (rst_reg.clone(),val_reg1,val_reg2).into());
                                        asm_sect.asm({PseudoInstr::new_seqz} (rst_reg.clone(),rst_reg.clone()).into());
                                    },
                                    super::nhwc_instr::FcmpPlan::Ogt => {
                                        asm_sect.asm({Compare::new_flt_s} (rst_reg.clone(),val_reg2,val_reg1).into());
                                    },
                                    super::nhwc_instr::FcmpPlan::Oge => {
                                        let rd1 = Register::new_s(3);
                                        let rd2 = Register::new_s(4);
                                        asm_sect.asm(Compare::new_feq_s(rd1.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                        asm_sect.asm(Compare::new_flt_s(rd2.clone(),val_reg2,val_reg1).into());
                                        asm_sect.asm(PseudoInstr::new_not(rd2.clone(),rd2.clone()).into());
                                        asm_sect.asm(Logical::new_or(Register::new_s(5),rd1,rd2).into());
                                    },
                                    super::nhwc_instr::FcmpPlan::Olt => {
                                        asm_sect.asm(Compare::new_flt_s(Register::new_s(3),val_reg1,val_reg2).into());
                                    },
                                    super::nhwc_instr::FcmpPlan::Ole => {
                                        let rd1 = Register::new_s(3);
                                        let rd2 = Register::new_s(4);
                                        asm_sect.asm(Compare::new_feq_s(rd1.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                        asm_sect.asm(Compare::new_flt_s(rd2.clone(),val_reg1,val_reg2).into());
                                        asm_sect.asm(Logical::new_or(Register::new_s(5),rd1,rd2).into());
                                    },
                                }
                                store_sym(&mut asm_sect, lhs, rst_reg, src_symtab)?;
                            },
                            super::nhwc_instr::ArithOp::LogicAnd { a, b, vartype } => {
                                let (val_reg1,val_reg2 ,rst_reg)= (Register::new_s(1),Register::new_s(2),Register::new_s(3));

                                load_sym_or_imm(&mut asm_sect, a, val_reg1.clone(), src_symtab)?;
                                load_sym_or_imm(&mut asm_sect, b, val_reg2.clone(), src_symtab)?;
                                asm_sect.asm({Logical::new_and } (rst_reg.clone(),val_reg1,val_reg2).into());
                                store_sym(&mut asm_sect, lhs, rst_reg, src_symtab)?;
                            },
                            super::nhwc_instr::ArithOp::LogicOr { a, b, vartype} => {
                                let (val_reg1,val_reg2 ,rst_reg)= (Register::new_s(1),Register::new_s(2),Register::new_s(3));
                                load_sym_or_imm(&mut asm_sect, a, val_reg1.clone(), src_symtab)?;
                                load_sym_or_imm(&mut asm_sect, b, val_reg2.clone(), src_symtab)?;
                                asm_sect.asm({Logical::new_or } (rst_reg.clone(),val_reg1,val_reg2).into());
                                store_sym(&mut asm_sect, lhs, rst_reg, src_symtab)?;
                            },
                            super::nhwc_instr::ArithOp::LogicNot { a, vartype: _ } => {
                                let val_reg1 =  Register::new_s(1);
                                let rst_reg =  Register::new_s(3);
                                load_sym_or_imm(&mut asm_sect, a, val_reg1.clone(), src_symtab)?;
                                asm_sect.asm(Logical::new_xori(rst_reg.clone(), val_reg1, Imm::from_offset(-1)).into());
                                store_sym(&mut asm_sect, lhs, rst_reg, src_symtab)?;
                            },
                        }
                        // store reg3 to lhs
                    },
                    NhwcInstrType::SimpleAssign { lhs, rhs, vartype } => {
                        let val_reg1 = match vartype{
                            Type::I32 => {
                                Register::new_s(1)
                            },
                            Type::F32 => {
                                Register::new_fs(1)
                            },
                            _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                        };
                        load_sym_or_imm(&mut asm_sect, rhs, val_reg1.clone(), src_symtab)?;
                        store_sym(&mut asm_sect, lhs,val_reg1, src_symtab)?;
                    },
                    NhwcInstrType::Call { op_assigned_symidx: _, func_op } => {
                        let mut fpu_args = vec![];
                        let mut gpr_args = vec![];
                        for (idx,arg) in func_op.actual_arg_symidx_vec.iter().enumerate(){
                            match src_symtab.get_symbol(arg)?.get_type()?{
                                Type::F32 => {
                                    fpu_args.push(arg)
                                },
                                _ => {
                                    gpr_args.push(arg)
                                }
                            }
                        }   
                        for (idx,arg) in fpu_args.iter().enumerate(){
                            load_sym_or_imm(&mut asm_sect, arg, Register::new_fa(idx as u8), src_symtab)?;
                        }   
                        for (idx,arg) in gpr_args.iter().enumerate(){
                            load_sym_or_imm(&mut asm_sect, arg, Register::new_a(idx as u8), src_symtab)?;
                        }   
                        asm_sect.asm(PseudoInstr::new_call(Imm::new_func_label(func_op.func_symidx.clone())).into());
                    },
                    NhwcInstrType::Jump { jump_op } => {
                        match jump_op{
                            super::nhwc_instr::JumpOp::Ret { op_ret_sym } => {
                                let func_symidx = node!(at cfg_entry_node in cfg_graph).get_func_cor_symidx()?;
                                load_sym_or_imm(&mut asm_sect, src_symtab.get_symbol(func_symidx)?.get_func_cor_ra_symidx()?, Register::RA, src_symtab)?;
                                load_sym_or_imm(&mut asm_sect, src_symtab.get_symbol(func_symidx)?.get_func_cor_s0_symidx()?, Register::new_s0(), src_symtab)?;

                                match op_ret_sym{
                                    Some(ret_sym) => {
                                        load_sym_or_imm(&mut asm_sect, ret_sym, Register::new_a(0), src_symtab)?;
                                    },
                                    None => {
                                        // do nothing 
                                    },
                                }
                                let stack_size = node!(at cfg_entry_node in cfg_graph).get_mem_layout()?.get_mem_len();
                                asm_sect.asm(Arithmetic::new_addi(Register::new_sp(), Register::new_sp(), Imm::from_offset(-(stack_size as isize))).into());
                                asm_sect.asm(PseudoInstr::new_ret().into());
                            },
                            super::nhwc_instr::JumpOp::Br { cond, t1, t2 } => {
                                let val_reg = Register::new_s(1);
                                load_sym_or_imm(&mut asm_sect, cond, val_reg.clone(), src_symtab)?;
                                asm_sect.asm(PseudoInstr::new_bnez(val_reg.clone(),Imm::new_jump_label(t1.clone())).into());
                                asm_sect.asm(PseudoInstr::new_j(Imm::new_jump_label(t2.clone())).into());
                            },
                            super::nhwc_instr::JumpOp::Switch { cond: _, default: _, compared: _ } => todo!(),
                            super::nhwc_instr::JumpOp::DirectJump { label_symidx } => {
                                asm_sect.asm(PseudoInstr::new_j(Imm::new_jump_label(label_symidx.clone())).into())
                            },
                        }
                    },
                    NhwcInstrType::Phi { lhs: _, rhs: _ } => {
                        panic!("phi appeared in gen asm pass");
                    },
                    NhwcInstrType::TranType { lhs, op } => {
                        match op{
                            super::nhwc_instr::Trans::Fptosi { float_symidx } => {
                                let val_reg =Register::new_fs(1);
                                let rst_reg = Register::new_s(1);
                                load_sym_or_imm(&mut asm_sect, float_symidx,val_reg.clone() , src_symtab)?;
                                asm_sect.asm(Trans::new_fcvt_w_s(rst_reg.clone(),val_reg).into());
                                store_sym(&mut asm_sect, lhs, rst_reg, src_symtab)?;
                            },
                            super::nhwc_instr::Trans::Sitofp { int_symidx } => {
                                let val_reg =Register::new_s(1);
                                let rst_reg = Register::new_fs(1);
                                load_sym_or_imm(&mut asm_sect, int_symidx,val_reg.clone() , src_symtab)?;
                                asm_sect.asm(Trans::new_fcvt_s_w(rst_reg.clone(),val_reg).into());
                                store_sym(&mut asm_sect, lhs, rst_reg, src_symtab)?;
                            },
                            super::nhwc_instr::Trans::Zext { bool_symidx } => {
                                //b->i
                                let val_reg =Register::new_s(1);
                                let rst_reg=  Register::new_s(3);
                                load_sym_or_imm(&mut asm_sect, bool_symidx,val_reg.clone() , src_symtab)?;
                                asm_sect.asm(Logical::new_andi(rst_reg.clone(),val_reg.clone(),Imm::from_offset(1)).into());
                                store_sym(&mut asm_sect, lhs, rst_reg.clone(), src_symtab)?;
                            },
                            super::nhwc_instr::Trans::Bitcast { rptr_symidx, rptr_type, lptr_type } => {
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
    }
    Ok(asm_sect)
}
///  sym in memory -> reg or literal li -> reg
/// symidx could be literal or symbol
pub fn load_sym_or_imm(asm_sect:&mut AsmSection,symidx:&SymIdx,reg:Register,src_symtab:&SymTab) -> Result<()>{
    if !symidx.is_global_ptr(){
        // if this symidx is not found in symtab, it must be a literal
        match !(src_symtab.has_symbol(symidx) && !*src_symtab.get_symbol(symidx)?.get_is_literal()?){
            true => {
                // as imm 
                match Type::new_from_const(&symidx.symbol_name) {
                    Type::F32 => {
                        // f32 
                        assert!(reg.is_fpu());
                        let temp_reg = Register::new_s(7);
                        asm_sect.asm(PseudoInstr::new_li(temp_reg.clone(), Imm::new_literal(symidx.clone())).into());
                        asm_sect.asm(PseudoInstr::new_fmv_s(reg.clone(), temp_reg.clone()).into());
                    },
                    _ => {
                        // i32 ...
                        assert!(!reg.is_fpu());
                        asm_sect.asm(PseudoInstr::new_li(reg.clone(), Imm::new_literal(symidx.clone())).into());
                    }
                }
            },
            false => {
                // as symbol 
                let &symidx_offset2sp = src_symtab.get_symbol(symidx)?.get_mem_offset2sp()?;
                let size = src_symtab.get_symbol(symidx)?.get_type()?.get_ele_size()?;
                match src_symtab.get_symbol(symidx)?.get_type()?{
                    Type::F32 => {
                        asm_sect.asm(Loads::new(size,reg.clone(), Register::SP {  }, symidx_offset2sp as isize, true)?.into());
                    },
                    _ => {
                        asm_sect.asm(Loads::new(size,reg.clone(), Register::SP {  }, symidx_offset2sp as isize, false)?.into());
                    }
                }
            },
        }
    }else{
        asm_sect.annotation(format!("   load label {} as ptr to reg",symidx.to_deglobal_ptr()?));
        asm_sect.asm(PseudoInstr::new_la(reg.clone(), symidx.to_deglobal_ptr()?).into());
    }
    Ok(())
}
/// reg value -> sym in memory  
/// require symidx to be symbol 
pub fn store_sym(asm_sect:&mut AsmSection, symidx:&SymIdx,value_reg:Register,src_symtab:&SymTab) -> Result<()>{
    let &symidx_offset2sp = src_symtab.get_symbol(symidx)?.get_mem_offset2sp()?;
    let size = src_symtab.get_symbol(symidx)?.get_type()?.get_ele_size()?;
    if value_reg.is_fpu() ^ src_symtab.get_symbol(symidx)?.get_type()?.is_f_32(){
        return Err(anyhow!("can't store symidx {:?}:{:?} to register {:?}",symidx,src_symtab.get_symbol(symidx)?.get_type()?,value_reg))
    }
    asm_sect.asm(Stores::new( size,value_reg.clone(),Register::new_sp(), symidx_offset2sp as isize, value_reg.is_fpu())?.into());
    Ok(())
}
/// reg value -> M[ptr_sym]
/// require ptr_symidx to be symbol 
pub fn store_from_ptr(asm_sect:&mut AsmSection,ptr_symidx:&SymIdx, ptr_reg:Register, value_reg:Register ,src_symtab:&SymTab)-> Result<()>{
    load_sym_or_imm(asm_sect, ptr_symidx, ptr_reg.clone(), src_symtab)?;
    let size = src_symtab.get_symbol(ptr_symidx)?.get_type()?.get_ele_size()?;
    if value_reg.is_fpu() ^ src_symtab.get_symbol(ptr_symidx)?.get_type()?.to_deref_type()?.is_f_32(){
        return Err(anyhow!("can't store symidx {:?}:{:?}'s pointed symidx to register {:?}",ptr_symidx,src_symtab.get_symbol(ptr_symidx)?.get_type()?,value_reg))
    }
    asm_sect.asm(Stores::new( size,value_reg.clone(),ptr_reg, 0, value_reg.is_fpu())?.into());
    Ok(())
}

// load the value from ptr symidx to value reg
pub fn load_from_ptr(asm_sect:&mut AsmSection,ptr_symidx:&SymIdx,ptr_reg:Register, value_reg:Register ,src_symtab:&SymTab) ->Result<Register>{
    load_sym_or_imm(asm_sect, ptr_symidx, ptr_reg.clone(), src_symtab)?;
    // deref the ptr then get its ele size
    let size = src_symtab.get_symbol(ptr_symidx)?.get_type()?.to_deref_type()?.get_ele_size()?;

    let is_f32 = src_symtab.get_symbol(ptr_symidx)?.get_type()?.to_deref_type()?.is_f_32();
    asm_sect.asm(Loads::new(size, value_reg.clone(), ptr_reg.clone(), 0, is_f32)?.into());
    Ok(value_reg)
}

