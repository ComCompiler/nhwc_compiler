
//|symidx,temp_reg,symtab,asm_sect,regtab|{
use crate::{antlr_parser::clexer::{Register, Void}, debug_info_blue, debug_info_red, direct_child_nodes, instr, node, node_mut, passes::simulator_debug_pass::debug_simu_run, reg_field_for_struct, toolkit::{field::{TypeDiscriminants, Value}, rv64_instr::{Arithmetic, REG_A_RANGE, REG_FA_RANGE}, symtab::WithBorrow}};
use anyhow::*;
use anyhow::Ok;
use itertools::Itertools;

use super::{asm_struct::{AsmSection, AsmStructure}, cfg_edge::CfgEdgeType, cfg_node::{CfgGraph, CfgNode, CFG_ROOT}, dot::Config, etc::{dfs_with_priority, generate_png_by_graph}, field::Type, gen_nhwc_cfg::IS_LITERAL, nhwc_instr::{FuncOp, InstrSlab, NhwcInstr, NhwcInstrType}, regtab::{self, RegTab}, rv64_instr::{Compare, Imm, Loads, Logical, PseudoInstr, RV64Instr, Register, RiscvOffsetLimit, Shifts, Stores, Trans, REG_FS_RANGE, REG_S_RANGE}, simulator::Simulator, symtab::{self, RcSymIdx, SymIdx, SymTab}};

reg_field_for_struct!(CfgNode {
    REGTAB:RegTab,
} with_fields info);

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
    let mut asm_sect = AsmSection::new("___var".to_string());
    asm_sect.data();
    // asm_sect.align(4);
    for &instr in node!(at CFG_ROOT in cfg_graph).instrs.iter(){
        match &instr!(at instr in nhwc_instr_slab)?.instr_type{
            NhwcInstrType::Globl { var_symidx, vartype } => {
                match vartype{
                    super::field::Type::Fn { arg_syms: _, ret_sym: _ } => {
                        // do nothing when it is a function
                    },
                    _ => {
                        asm_sect.align(vartype.get_align()?);
                        asm_sect.global(Imm::new_global_label(var_symidx.clone()));
                        asm_sect.annotate(format!("{:?}",&instr!(at instr in nhwc_instr_slab)?));
                        asm_sect.obj_type(Imm::new_global_label(var_symidx.clone()));
                        asm_sect.label(Imm::new_global_label(var_symidx.clone()));
                        asm_sect.apply_value(simulator.simu_symtab.get(&var_symidx.as_ref_borrow().to_src_symidx())?.get_simu_val()?)?;
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
        if SymIdx::from(offset).index_ssa.is_some(){
            panic!("{:?}",&SymIdx::from(offset));
        }
        let offset_reg = regtab.find_and_occupy_reg(&SymIdx::from(offset), &TypeDiscriminants::I32, symtab, asm_sect, &mut default_store,&mut default_load)?;
        asm_sect.asm(PseudoInstr::new_li(offset_reg.clone(), Imm::new_literal_isize(offset)).into());
        asm_sect.asm(Arithmetic::new_add(rd, offset_reg.clone(),rs).into());
        regtab.unoccupied_reg(offset_reg,symtab, asm_sect, &mut default_store)?;
    }
    Ok(())
}

/// let &mut default_store_f = |symidx,reg| _store_sym(&mut asm_sect, &symidx, reg, symtab);
/// let &mut default_loaddefault_load = |symidx,reg| _load_sym_or_imm;
/// ($asm_sect:ident,$regtab:ident,$symtab:ident) => {
fn default_load(symidx:SymIdx,reg:Register,symtab:&mut SymTab,asm_sect:& mut AsmSection, regtab:& mut RegTab) -> Result<()>{ 
    _load_sym_or_imm(asm_sect, &symidx, reg, regtab, symtab)
}
fn no_load(symidx:SymIdx,reg:Register,symtab:&mut SymTab,asm_sect:& mut AsmSection, regtab:& mut RegTab) -> Result<()>{
    Ok(())
}
fn default_store(symidx:SymIdx,reg:Register,symtab:&mut SymTab,asm_sect:& mut AsmSection, regtab:& mut RegTab) -> Result<()> {
    _store_sym(asm_sect, &symidx, reg, regtab,symtab,0)
}

/// convert `cfg_entry_node` into riscv 
/// assume first instr be func_def instr while others are alloc instr
fn parse_funcs2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, _riscv_instr_slab:&mut InstrSlab<RV64Instr>, symtab:&mut SymTab) -> Result<AsmSection>{
    let entries = direct_child_nodes!(at CFG_ROOT in cfg_graph);
    let mut _asm_sect = AsmSection::new("___func".to_string());
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
        });
        let mut _regtab = RegTab::new();
        let regtab =&mut _regtab;

        debug_info_red!("cfg dfs order: {:?} for entry {}",dfs_node_vec,cfg_entry_node);
        for &cfg_node in &dfs_node_vec{
            if !node!(at cfg_node in cfg_graph).cfg_node_type.is_entry() && 
                node!(at cfg_node in cfg_graph).op_jump_instr.is_none(){
                    // return Err(anyhow!("jump instr of cfg_node:{cfg_node} can't be none"));
                }
            if node!(at cfg_node in cfg_graph).has_regtab(){
                // that means travel from src_cfg_node -> cfg_node 
                //  directjump 
                regtab.reset(symtab)?;
                *regtab = node!(at cfg_node in cfg_graph).get_regtab()?.clone();
                asm_sect.annotate(format!("regtab {:?}",regtab));
                regtab.apply(symtab)?;
            }else {
                regtab.forget_all_temp(asm_sect, symtab, &mut default_store)?;
                node_mut!(at cfg_node in cfg_graph).add_regtab(regtab.clone());
                asm_sect.annotate(format!("regtab {:?}",regtab));
            }
            debug_info_red!("access cfg_node {} with regtab {:?}",cfg_node,regtab);
            for instr in node!(at cfg_node in cfg_graph).iter_all_instrs().cloned().collect_vec() {
                let instr_struct = instr!(at instr in nhwc_instr_slab)?;
                debug_info_blue!("{:?}",instr_struct);
                // debug_info_red!("cur_reg of {:?} is {:?}",SymIdx::new(16, "ah".to_string()),symtab.get(&SymIdx::new(16, "ah".to_string()))?.get_cur_reg());
                asm_sect.annotate(format!("{:?}",instr_struct));
                match &instr_struct.instr_type{
                    NhwcInstrType::Label { label_symidx } => {
                        asm_sect.label(Imm::new_local_label(label_symidx.clone()));
                    },
                    NhwcInstrType::DefineFunc { func_symidx, ret_symidx: _, args } => {
                        asm_sect.global(Imm::new_global_label(func_symidx.clone()));
                        asm_sect.func_type(Imm::new_global_label(func_symidx.clone()));
                        asm_sect.label(Imm::new_global_label(func_symidx.clone()));
                        let func_symidx = func_symidx.as_ref_borrow();
                        let mem_layout = node!(at cfg_entry_node in cfg_graph).get_mem_layout()?;
                        asm_sect.annotate(format!("mem layout:{:?}",mem_layout));
                        // set_freed_reg for args
                        let mut fpr_args = vec![];
                        let mut gpr_args = vec![];
                        for (_idx,arg) in args.iter().enumerate(){
                            match symtab.get(&arg.as_ref_borrow())?.get_type()?.into(){
                                TypeDiscriminants::F32 => {
                                    fpr_args.push(arg)
                                },
                                _ => {
                                    gpr_args.push(arg)
                                }
                            }
                        } 
                        for (idx,arg) in fpr_args.iter().take(8).enumerate(){
                            // _store_sym(asm_sect, &arg,Register::new_fa(idx as u8), symtab)?;
                            if REG_FA_RANGE.contains(&(idx as u8)){
                                let reg = Register::new_fa(idx as u8);
                                regtab.set_freed_reg(reg,&arg.as_ref_borrow(),symtab)?;
                            }
                        }   
                        for (idx,arg) in gpr_args.iter().take(8).enumerate(){
                            // _store_sym(asm_sect, &arg,Register::new_a(idx as u8), symtab)?;
                            if REG_A_RANGE.contains(&(idx as u8)){
                                let reg = Register::new_a(idx as u8);
                                regtab.set_freed_reg(reg,&arg.as_ref_borrow(),symtab)?;
                            }
                        }   
                        // apply for stack mem
                        let stack_size = mem_layout.get_mem_len();
                        // allocate stack mem
                        // let temp_reg = regtab.find_and_occupy_reg(func_symidx,&TypeDiscriminants::Ptr64,symtab,asm_sect,
                        // &mut default_store,|symidx,temp_reg,symtab,asm_sect,regtab|{
                        add_literal_to_reg(asm_sect, Register::SP, Register::SP, regtab,symtab,-(stack_size as isize))?;
                        // })?;
                        let rc_ra_symidx= symtab.get(&func_symidx)?.get_func_cor_ra_symidx()?.clone();
                        let ra_symidx = rc_ra_symidx.as_ref_borrow();
                        _store_sym(asm_sect, &ra_symidx, Register::RA, regtab,symtab,0)?;
                        let rc_s0_symidx = symtab.get(&func_symidx)?.get_func_cor_s0_symidx()?.clone();
                        let s0_symidx = rc_s0_symidx.as_ref_borrow();
                        _store_sym(asm_sect, &s0_symidx, Register::new_s0(), regtab,symtab,0)?;
                        add_literal_to_reg(asm_sect, Register::new_s0(),  Register::SP,regtab, symtab,stack_size as isize)?;
                        debug_info_red!("after func define instr {:?}", regtab);
                    },
                    NhwcInstrType::DefineVar { var_symidx, vartype: _, op_value } => {
                        match op_value{
                            Some(value_symidx) => {
                                load_sym_or_imm(asm_sect,  &value_symidx.as_ref_borrow(), regtab, symtab)?;
                            },
                            None => {
                                // do nothing
                            },
                        }
                    },
                    NhwcInstrType::Alloc { var_symidx: _, vartype: _ } => {
                        // do nothing
                        // debug_info_red!("when meet alloc instr {:?}", regtab);
                    },
                    NhwcInstrType::Globl { var_symidx: _, vartype: _ } => {
                        // do nothing
                    },
                    NhwcInstrType::Load { lhs, ptr_symidx, ptr_ty: _ } => {
                        debug_info_red!("{:?} {:?}",instr_struct, ptr_symidx);
                        load_from_ptr(asm_sect, &ptr_symidx.as_ref_borrow(), &lhs.as_ref_borrow(),  regtab, symtab)?;
                    },
                    NhwcInstrType::Store { val_symidx: value_symidx, value_ty: _, ptr_symidx, ptr_ty: _ } => {
                        store_from_ptr(asm_sect, &ptr_symidx.as_ref_borrow(), &value_symidx.as_ref_borrow(),regtab, symtab)?;
                    },
                    NhwcInstrType::GetElementPtr { lhs, ptr_symidx: array_or_ptr_symidx, array_ty, idx_vec } => {
                        let lhs = lhs.as_ref_borrow();
                        let array_or_ptr_symidx = array_or_ptr_symidx.as_ref_borrow();
                        // clear s3
                        // use reg s3 as rst register
                        // load idx to s2 
                        // load weight to s1
                        // use reg s4 to be s2*s1
                        // s4 * element size 
                        // put array offset to s5
                        // finally plus array offset 
                        let ptr_reg = regtab.find_and_occupy_reg(&lhs,&TypeDiscriminants::I32, symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                        _load_sym_or_imm(asm_sect, &SymIdx::from_str("0"), ptr_reg.clone(), regtab, symtab)?;
                        for (idx,weight) in idx_vec.iter().zip(array_ty.get_array_dim_weight_vec()?.iter()){
                            let idx = idx.as_ref().unwrap().as_ref_borrow();
                            let temp_idx_mul_weight_reg = regtab.find_and_anonymous_occupy(&SymIdx::from_str("temp_idx_mul_weight_reg"),&TypeDiscriminants::I32, symtab, asm_sect, &mut default_store, &mut no_load)?;
                            magic_i32_mul(asm_sect, regtab, temp_idx_mul_weight_reg.clone(), &weight, &idx, symtab)?;
                            asm_sect.asm(Arithmetic::new_add(ptr_reg.clone(), ptr_reg.clone(),temp_idx_mul_weight_reg.clone() ).into());
                            regtab.unoccupied_reg(temp_idx_mul_weight_reg,symtab,asm_sect,&mut default_store)?;
                        }
                        let ele_size = array_ty.get_ele_size()?;
                        asm_sect.asm(Shifts::new_slli_from_multiple(ptr_reg.clone(), ptr_reg.clone(), ele_size)?.into());
                        // 2 situations : 1. array is global  2. array is local to stack
                        match symtab.get(&array_or_ptr_symidx)?.has_is_global() &&*symtab.get(&array_or_ptr_symidx)?.get_is_global()?{
                            true => {
                                let addr_reg = regtab.find_and_occupy_reg(&array_or_ptr_symidx,&TypeDiscriminants::Ptr64, symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                asm_sect.asm(Arithmetic::new_add(ptr_reg.clone(), ptr_reg.clone(), addr_reg.clone()).into());
                                regtab.unoccupied_reg(addr_reg,symtab,asm_sect,&mut default_store)?;
                            },
                            false => {
                                // only one situations 
                                // you should find it in regtab or mem 
                                // judge whether ptr and pointed array is in same function 
                                match symtab.get(&array_or_ptr_symidx)?.get_type()?{
                                    Type::Ptr64 { ty } => {
                                        let addr_reg = regtab.find_and_occupy_reg(&array_or_ptr_symidx, &TypeDiscriminants::I32, symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                        asm_sect.asm(Arithmetic::new_add(ptr_reg.clone(), ptr_reg.clone(),addr_reg.clone()).into());
                                        regtab.unoccupied_reg(addr_reg,symtab, asm_sect,&mut default_store)?;
                                    },
                                    Type::Array { dims, ele_ty } => {
                                        asm_sect.asm(Arithmetic::new_add(ptr_reg.clone(), ptr_reg.clone(),Register::SP).into());
                                        assert!(array_or_ptr_symidx.index_ssa.is_none());
                                        let &offset2sp = symtab.get(&array_or_ptr_symidx)?.get_mem_offset2sp()?;
                                        add_literal_to_reg(asm_sect, ptr_reg.clone(), ptr_reg.clone(), regtab, symtab,offset2sp )?;
                                    },
                                    _ => panic!()
                                }

                            },
                        }
                        regtab.unoccupied_reg(ptr_reg,symtab,asm_sect,&mut default_store)?;
                    },
                    NhwcInstrType::Arith { lhs, rhs } => {
                        let lhs = lhs.as_ref_borrow();
                        match rhs{
                            super::nhwc_instr::ArithOp::Add { a, b, vartype } => {
                                let a = a.as_ref_borrow();
                                let b = b.as_ref_borrow();
                                let ty_discriminants = vartype.into();

                                let val_reg1= regtab.find_and_occupy_reg(&a, &ty_discriminants, symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let val_reg2= regtab.find_and_occupy_reg(&b, &ty_discriminants, symtab, asm_sect,&mut default_store,&mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let rst_reg= regtab.find_and_occupy_reg(&lhs, &ty_discriminants, symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                match vartype.into(){
                                    TypeDiscriminants::I32 => {
                                        asm_sect.asm(Arithmetic::new_add(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                    },
                                    TypeDiscriminants::F32 => {
                                        asm_sect.asm(Arithmetic::new_fadds(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                                regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(val_reg2,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                            },
                            super::nhwc_instr::ArithOp::Mul { a, b, vartype } => {
                                let a = a.as_ref_borrow();
                                let b = b.as_ref_borrow();

                                let ty_discriminants = vartype.into();
                                match ty_discriminants{
                                    TypeDiscriminants::I32 => {
                                        let rst_reg= regtab.find_and_occupy_reg(&lhs, &ty_discriminants, symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                        magic_i32_mul(asm_sect, regtab,rst_reg.clone(), &a, &b, symtab)?;
                                        regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                                    },
                                    TypeDiscriminants::F32 => {
                                        let val_reg1= regtab.find_and_occupy_reg(&a, &ty_discriminants,symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                        let val_reg2= regtab.find_and_occupy_reg(&b, &ty_discriminants, symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                        let rst_reg= regtab.find_and_occupy_reg(&lhs, &ty_discriminants, symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                        asm_sect.asm(Arithmetic::new_fmuls(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).clone().into());
                                        regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                                        regtab.unoccupied_reg(val_reg2,symtab,asm_sect,&mut default_store)?;
                                        regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                            },
                            super::nhwc_instr::ArithOp::Div { a, b, vartype} => {
                                let a = a.as_ref_borrow();
                                let b = b.as_ref_borrow();

                                let val_reg1= regtab.find_and_occupy_reg(&a, &vartype.into(),symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let val_reg2= regtab.find_and_occupy_reg(&b, &vartype.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let rst_reg= regtab.find_and_occupy_reg(&lhs,& vartype.into(), symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                match vartype.into(){
                                    TypeDiscriminants::I32 => {
                                        asm_sect.asm(Arithmetic::new_div(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                    },
                                    TypeDiscriminants::F32 => {
                                        asm_sect.asm(Arithmetic::new_fdivs(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                                regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(val_reg2,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                            },
                            super::nhwc_instr::ArithOp::Sub { a, b, vartype} => {
                                let a = a.as_ref_borrow();
                                let b = b.as_ref_borrow();

                                let val_reg1= regtab.find_and_occupy_reg(&a, &vartype.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let val_reg2= regtab.find_and_occupy_reg(&b, &vartype.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let rst_reg= regtab.find_and_occupy_reg(&lhs,& vartype.into(), symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                match vartype.into(){
                                    TypeDiscriminants::I32 => {
                                        asm_sect.annotate(format!("regtab:{:?}\n",regtab));
                                        asm_sect.asm(Arithmetic::new_sub(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                    },
                                    TypeDiscriminants::F32 => {
                                        asm_sect.asm(Arithmetic::new_fsubs(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                    },
                                    TypeDiscriminants::I1 => {
                                        asm_sect.asm(Arithmetic::new_sub(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                    }
                                    _ => {panic!("not support arithmetic operation on types except i32 or f32")}
                                };
                                regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(val_reg2,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                            },
                            super::nhwc_instr::ArithOp::Mod { a, b, vartype} => {
                                let a = a.as_ref_borrow();
                                let b = b.as_ref_borrow();

                                let val_reg1= regtab.find_and_occupy_reg(&a, &vartype.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let val_reg2= regtab.find_and_occupy_reg(&b, &vartype.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let rst_reg= regtab.find_and_occupy_reg(&lhs, &vartype.into(), symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                match vartype.into(){
                                    TypeDiscriminants::I32 => {
                                        asm_sect.asm(Arithmetic::new_rem(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).clone().clone().into());
                                    },
                                    TypeDiscriminants::F32 => {
                                        panic!("not support arithmetic operation on type f32 ")
                                    },
                                    _ => {panic!("not support arithmetic operation on types except i32 ")}
                                };
                                regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(val_reg2,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                            },
                            super::nhwc_instr::ArithOp::Icmp { plan, a, b, vartype } => {
                                let a = a.as_ref_borrow();
                                let b = b.as_ref_borrow();

                                let val_reg1= regtab.find_and_occupy_reg(&a, &vartype.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let val_reg2= regtab.find_and_occupy_reg(&b, &vartype.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let rst_reg= regtab.find_and_occupy_reg(&lhs, &TypeDiscriminants::I1, symtab, asm_sect, &mut default_store,&mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?; 
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
                                regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(val_reg2,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                            },
                            super::nhwc_instr::ArithOp::Fcmp { plan, a, b, vartype } => {
                                let a = a.as_ref_borrow();
                                let b = b.as_ref_borrow();

                                let val_reg1= regtab.find_and_occupy_reg(&a, &vartype.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let val_reg2= regtab.find_and_occupy_reg(&b, &vartype.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let rst_reg= regtab.find_and_occupy_reg(&lhs, &TypeDiscriminants::I1, symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                match plan{
                                    super::nhwc_instr::FcmpPlan::Oeq => {
                                        asm_sect.asm({Compare::new_feq_s} (rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                    },
                                    super::nhwc_instr::FcmpPlan::One => {
                                        asm_sect.asm(Compare::new_feq_s(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                        asm_sect.asm(PseudoInstr::new_seqz(rst_reg.clone(),rst_reg.clone()).into());
                                    },
                                    super::nhwc_instr::FcmpPlan::Ogt => {
                                        asm_sect.asm(Compare::new_flt_s(rst_reg.clone(),val_reg2.clone(),val_reg1.clone()).into());
                                    },
                                    super::nhwc_instr::FcmpPlan::Oge => {
                                        asm_sect.asm(Compare::new_fle_s(rst_reg.clone(),val_reg2.clone(),val_reg1.clone()).into());
                                    },
                                    super::nhwc_instr::FcmpPlan::Olt => {
                                        asm_sect.asm(Compare::new_flt_s(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                    },
                                    super::nhwc_instr::FcmpPlan::Ole => {
                                        asm_sect.asm(Compare::new_fle_s(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                    },
                                }
                                regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(val_reg2,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                            },
                            super::nhwc_instr::ArithOp::LogicAnd { a, b, vartype} => {
                                let a = a.as_ref_borrow();
                                let b = b.as_ref_borrow();

                                let val_reg1= regtab.find_and_occupy_reg(&a, &vartype.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let val_reg2= regtab.find_and_occupy_reg(&b, &vartype.into(),symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let rst_reg= regtab.find_and_occupy_reg(&lhs, &vartype.into(),symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                asm_sect.asm(Logical::new_and(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(val_reg2,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                            },
                            super::nhwc_instr::ArithOp::LogicOr { a, b, vartype} => {
                                let a = a.as_ref_borrow();
                                let b = b.as_ref_borrow();

                                let val_reg1= regtab.find_and_occupy_reg(&a, &vartype.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let val_reg2= regtab.find_and_occupy_reg(&b, &vartype.into(),symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let rst_reg= regtab.find_and_occupy_reg(&lhs, &vartype.into(), symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                asm_sect.asm(Logical::new_or(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                                regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(val_reg2,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                            },
                            super::nhwc_instr::ArithOp::LogicNot { a, vartype} => {
                                let a = a.as_ref_borrow();

                                let val_reg1= regtab.find_and_occupy_reg(&a, &vartype.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let rst_reg= regtab.find_and_occupy_reg(&lhs, &vartype.into(), symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                asm_sect.asm(PseudoInstr::new_seqz(rst_reg.clone(), val_reg1.clone()).into());
                                regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                            },
                        }
                        // store reg to lhs
                    },
                    NhwcInstrType::SimpleAssign { lhs, rhs, vartype } => {
                        let lhs = lhs.as_ref_borrow();
                        let rhs = rhs.as_ref_borrow();

                        if rhs.is_literal(){
                            let rst_reg= regtab.find_and_occupy_reg(&lhs, &vartype.into(), symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                            _load_sym_or_imm(asm_sect, &rhs, rst_reg.clone(), regtab, symtab)?;
                            regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                        }else{
                            let val_reg1= regtab.find_and_occupy_reg(&rhs, &vartype.into(), symtab, asm_sect, &mut default_store, &mut &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                            let rst_reg= regtab.find_and_occupy_reg(&lhs, &vartype.into(), symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                            asm_sect.asm(PseudoInstr::new_reg_mv(rst_reg.clone(), val_reg1.clone()).into());
                            regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                            regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                        }
                    },
                    NhwcInstrType::Call { op_lhs: op_assigned_symidx, func_op } => {
                        let mut fpr_args = vec![];
                        let mut gpr_args = vec![];
                        let func_symidx = &func_op.rc_func_symidx.as_ref_borrow();
                        asm_sect.annotate("saved register dumping to mem".to_string());
                        if symtab.get(func_symidx)?.has_stack_pass_args(){
                            let stack_pass_args = symtab.get(func_symidx)?.get_stack_pass_args()?.clone();
                            // if we need to pass args by stack (may because arg reg is not enough)
                            if stack_pass_args.len()!=0 {
                                let &cfg_entry_of_called_func =  symtab.get(func_symidx)?.get_cfg_entry_node()?;
                                let stack_size = node!(at cfg_entry_of_called_func in cfg_graph).get_mem_layout()?.get_mem_len();
                                // here we have to 
                                for (idx,formal_arg) in stack_pass_args{
                                    let actual_arg = &func_op.actual_arg_symidx_vec[idx].as_ref_borrow();
                                    let formal_arg = formal_arg.as_ref_borrow();

                                    let actual_arg_ty = symtab.get(actual_arg)?.get_type()?;
                                    // load actual argument 
                                    let value_reg = regtab.find_and_occupy_reg(actual_arg, &actual_arg_ty.into(), symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                    // formal argument 
                                    _store_sym(asm_sect, &formal_arg, value_reg.clone(), regtab, symtab, -(stack_size as isize))?;
                                    regtab.unoccupied_reg(value_reg,symtab, asm_sect,&mut default_store)?;
                                }
                            }
                        }

                        for i in REG_S_RANGE.clone(){
                            regtab.try_release_reg(Register::new_s(i), symtab, asm_sect, &mut default_store)?;
                        }
                        for i in REG_A_RANGE.clone(){
                            regtab.try_release_reg(Register::new_a(i), symtab, asm_sect, &mut default_store)?;
                        }
                        for i in REG_FS_RANGE.clone(){
                            regtab.try_release_reg(Register::new_fs(i), symtab, asm_sect, &mut default_store)?;
                        }
                        for i in REG_FA_RANGE.clone(){
                            regtab.try_release_reg(Register::new_fa(i), symtab, asm_sect, &mut default_store)?;
                        }
                        asm_sect.annotate("caller-saved register dumped to mem".to_string());
                        asm_sect.annotate("arg load start".to_string());
                        for (_idx,arg) in func_op.actual_arg_symidx_vec.iter().enumerate(){
                            let arg = arg.as_ref_borrow();
                            let ty = if arg.is_literal(){
                                TypeDiscriminants::new_from_const_str(&arg.symbol_name)
                            }else {
                                symtab.get(&arg)?.get_type()?.into()
                            };
                            match ty {
                                TypeDiscriminants::F32 => {
                                    fpr_args.push(arg)
                                },
                                _ => {
                                    gpr_args.push(arg)
                                }
                            }
                        }   
                        // for fpu arg 
                        {
                            // first make all args occupyied 
                            for (idx,arg) in fpr_args.iter().take(8).enumerate(){
                                if REG_FA_RANGE.contains(&(idx as u8)){
                                    let reg =Register::new_fa(idx as u8);
                                    regtab.anonymous_load_into(reg, arg, &TypeDiscriminants::F32, symtab, asm_sect, &mut default_store, &mut default_load)?;
                                    // regtab.forget(reg, symtab)?;
                                }
                            } 
                        // for gpr args
                            for (idx,arg) in gpr_args.iter().take(8).enumerate(){
                                if REG_A_RANGE.contains(&(idx as u8)){
                                    let reg =Register::new_a(idx as u8);
                                    regtab.anonymous_load_into(reg, arg, &TypeDiscriminants::I32, symtab, asm_sect, &mut default_store, &mut default_load)?;
                                }
                            }   
                        }  
                        {
                            for (idx,arg) in gpr_args.iter().take(8).enumerate(){
                                if REG_A_RANGE.contains(&(idx as u8)){
                                    let reg =Register::new_a(idx as u8);
                                    regtab.forget(reg, symtab)?;
                                }
                            }   
                            // than free the arg reg at the same time
                            for (idx,arg) in fpr_args.iter().take(8).enumerate(){
                                if REG_A_RANGE.contains(&(idx as u8)){
                                    let reg =Register::new_fa(idx as u8);
                                    regtab.forget(reg, symtab)?;
                                }
                            }
                        }
                        asm_sect.annotate("arg load ended\n".to_string());
                        asm_sect.asm(PseudoInstr::new_call(Imm::new_global_label(func_op.rc_func_symidx.clone())).into());
                        match op_assigned_symidx{
                            Some(assigned_symidx) => {
                                let assigned_symidx = assigned_symidx.as_ref_borrow();
                                match symtab.get(&assigned_symidx)?.get_type()?.into(){
                                    TypeDiscriminants::I32 => {
                                        let reg = Register::new_a(0);
                                        regtab.try_release_reg(reg.clone(), symtab, asm_sect, &mut default_store)?;
                                        regtab.set_freed_reg(reg, &assigned_symidx, symtab)?;
                                    },
                                    TypeDiscriminants::F32 => {
                                        let reg =Register::new_fa(0);
                                        regtab.try_release_reg(reg.clone(), symtab, asm_sect, &mut default_store)?;
                                        regtab.set_freed_reg(reg, &assigned_symidx, symtab)?;
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
                                let rc_func_symidx = node!(at cfg_entry_node in cfg_graph).get_func_cor_symidx()?;
                                let func_symidx = rc_func_symidx.as_ref_borrow();
                                _load_sym_or_imm(asm_sect, &symtab.get(&func_symidx)?.get_func_cor_ra_symidx()?.clone().as_ref_borrow(), Register::RA,regtab, symtab)?;
                                _load_sym_or_imm(asm_sect, &symtab.get(&func_symidx)?.get_func_cor_s0_symidx()?.clone().as_ref_borrow(), Register::new_s0(),regtab, symtab)?;

                                let op_ret_reg = match op_ret_sym{
                                    Some(ret_sym) => {
                                        let ret_sym = ret_sym.as_ref_borrow();
                                        match {if ret_sym.is_literal(){
                                            TypeDiscriminants::new_from_const_str(&ret_sym.symbol_name)
                                        }else {
                                            symtab.get(&ret_sym)?.get_type()?.into()
                                        }}{
                                            TypeDiscriminants::F32 => {
                                                Some(regtab.load_into(Register::new_fa(0), &ret_sym, &TypeDiscriminants::F32, symtab, asm_sect, &mut default_store,  &mut default_load)?)
                                            },
                                            _ => {
                                                Some(regtab.load_into(Register::new_a(0), &ret_sym, &TypeDiscriminants::I32, symtab, asm_sect, &mut default_store,  &mut default_load)?)
                                            }
                                        }
                                    }
                                    None => {None},
                                };
                                let stack_size = node!(at cfg_entry_node in cfg_graph).get_mem_layout()?.get_mem_len();
                                add_literal_to_reg(asm_sect, Register::SP, Register::SP, regtab, symtab, stack_size as isize)?;
                                match op_ret_reg{
                                    Some(ret_reg) => regtab.unoccupied_reg(ret_reg,symtab,asm_sect,&mut default_store)?,
                                    None => {},
                                };
                                asm_sect.asm(PseudoInstr::new_ret().into());
                            },
                            super::nhwc_instr::JumpOp::Br { cond, t1: rc_t1, t2: rc_t2 } => {
                                let cond = cond.as_ref_borrow();
                                let t1 = rc_t1.as_ref_borrow();
                                let t2 = rc_t2.as_ref_borrow();

                                let (&t1_cfg_node,&t2_cfg_node) = (symtab.get(&t1)?.get_label_cfg_node()?,symtab.get(&t2)?.get_label_cfg_node()?);
                                let op_t1_regtab = if node!(at t1_cfg_node in cfg_graph).has_regtab(){ Some(node!(at t1_cfg_node in cfg_graph).get_regtab()?) }else { None };
                                
                                // *mention* here we occupy reg then free it by design, because we want to the cloned regtab has this field
                                // this is not redundant !!
                                let val_reg = regtab.find_and_occupy_reg(&cond, &TypeDiscriminants::I1, symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                regtab.unoccupied_reg(val_reg,symtab,asm_sect,&mut default_store)?;
                                match op_t1_regtab{
                                    Some(target_regtab) => {
                                        // if the cfg_ndoe has been visited, you should suit the regtab left
                                        regtab.suit(target_regtab, asm_sect, symtab, &mut default_store, &mut default_load)?;
                                    },
                                    None => {
                                        regtab.forget_all_temp(asm_sect, symtab, &mut default_store)?;
                                        node_mut!(at t1_cfg_node in cfg_graph).add_regtab(regtab.clone());
                                        // asm_sect.annotation(format!("{:?}",regtab));
                                    },
                                }
                                let val_reg = regtab.find_and_occupy_reg(&cond, &TypeDiscriminants::I1, symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                asm_sect.asm(PseudoInstr::new_bnez(val_reg.clone(),Imm::new_local_label(rc_t1.clone())).into());
                                regtab.unoccupied_reg(val_reg,symtab,asm_sect,&mut default_store)?;
                                
                                let op_t2_regtab = if node!(at t2_cfg_node in cfg_graph).has_regtab(){ Some(node!(at t2_cfg_node in cfg_graph).get_regtab()?) }else { None };
                                match op_t2_regtab{
                                    Some(target_regtab) => {
                                        regtab.suit(target_regtab, asm_sect, symtab, &mut default_store, &mut default_load).context(format!("current cfg_node:{cfg_node}"))?;
                                    },
                                    None => {
                                        regtab.forget_all_temp(asm_sect, symtab, &mut default_store)?;
                                        node_mut!(at t2_cfg_node in cfg_graph).add_regtab(regtab.clone());
                                        // asm_sect.annotation(format!("{:?}",regtab));
                                    },
                                }
                                asm_sect.asm(PseudoInstr::new_j(Imm::new_local_label(rc_t2.clone())).into());
                            },
                            super::nhwc_instr::JumpOp::Switch { cond: _, default: _, compared: _ } => todo!(),
                            super::nhwc_instr::JumpOp::DirectJump { label_symidx: rc_label_symidx } => {
                                let label_symidx = rc_label_symidx.as_ref_borrow();
                                let &label_cfg_node = symtab.get(&label_symidx)?.get_label_cfg_node()?;
                                let op_regtab = if node!(at label_cfg_node in cfg_graph).has_regtab(){ Some(node!(at label_cfg_node in cfg_graph).get_regtab()?) }else { None };
                                match op_regtab{
                                    Some(target_regtab) => {
                                        regtab.suit(target_regtab, asm_sect, symtab, &mut default_store, &mut default_load)?;
                                    },
                                    None => {
                                        // temp reg will be dropped between basic blocks 
                                        // first come, fisrt served 
                                        regtab.forget_all_temp(asm_sect, symtab, &mut default_store)?;
                                        node_mut!(at label_cfg_node in cfg_graph).add_regtab(regtab.clone());
                                        // asm_sect.annotation(format!("{:?}",regtab));
                                    },
                                }
                                asm_sect.asm(PseudoInstr::new_j(Imm::new_local_label(rc_label_symidx.clone())).into())
                            },
                        }
                    },
                    NhwcInstrType::Phi { lhs: _, rhs: _ } => {
                        panic!("phi appeared in gen asm pass");
                    },
                    NhwcInstrType::TranType { lhs, op } => {
                        let lhs = lhs.as_ref_borrow();
                        match op{
                            super::nhwc_instr::Trans::Fptosi { float_symidx } => {
                                let float_symidx = float_symidx.as_ref_borrow();
                                let val_reg =regtab.find_and_occupy_reg(&float_symidx, &TypeDiscriminants::F32, symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let rst_reg = regtab.find_and_occupy_reg(&lhs, &TypeDiscriminants::I32, symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                asm_sect.asm(Trans::new_fcvt_w_s(rst_reg.clone(),val_reg.clone()).into());
                                regtab.unoccupied_reg(val_reg,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                            },
                            super::nhwc_instr::Trans::Sitofp { int_symidx } => {
                                let int_symidx = int_symidx.as_ref_borrow();
                                let val_reg =regtab.find_and_occupy_reg(&int_symidx, &TypeDiscriminants::I32, symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let rst_reg = regtab.find_and_occupy_reg(&lhs, &TypeDiscriminants::F32, symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                asm_sect.asm(Trans::new_fcvt_s_w(rst_reg.clone(),val_reg.clone()).into());
                                regtab.unoccupied_reg(val_reg,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;
                            },
                            super::nhwc_instr::Trans::Zext { bool_symidx } => {
                                let bool_symidx = bool_symidx.as_ref_borrow();
                                //b->i
                                let val_reg =regtab.find_and_occupy_reg(&bool_symidx, &TypeDiscriminants::I1, symtab, asm_sect, &mut default_store, &mut default_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                let rst_reg = regtab.find_and_occupy_reg(&lhs, &TypeDiscriminants::I32, symtab, asm_sect, &mut default_store, &mut no_load).with_context(||format!("err when occupy reg {:?}",instr!(at instr in nhwc_instr_slab)))?;
                                // asm_sect.asm(Logical::new_andi(rst_reg.clone(),val_reg.clone(),Imm::from_offset(1)).into());
                                asm_sect.asm(PseudoInstr::new_reg_mv(rst_reg.clone(), val_reg.clone()).into());
                                regtab.unoccupied_reg(val_reg,symtab,asm_sect,&mut default_store)?;
                                regtab.unoccupied_reg(rst_reg,symtab,asm_sect,&mut default_store)?;

                            },
                            super::nhwc_instr::Trans::Bitcast { rptr_symidx: _, rptr_type: _, lptr_type: _ } => {
                                //p->p
                                todo!();
                            },
                        }
                    },
                    NhwcInstrType::BreakPoint { symidx: _, breakpoint_args: _ } => {
                        asm_sect.annotate(format!("regtab:{:?}\n",regtab));
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
                let ty = TypeDiscriminants::new_from_const_str(&symidx.symbol_name);
                // as imm 

                let reg = regtab.find_and_occupy_reg(symidx, &ty, symtab, asm_sect, 
                    &mut default_store,&mut default_load)?;

                regtab.unoccupied_reg(reg,symtab,asm_sect,&mut default_store)?;
                Ok(())
            },
            false => {
                // as symbol 
                let ty = symtab.get(symidx)?.get_type()?.into();
                let reg = regtab.find_and_occupy_reg(symidx, &ty, symtab, asm_sect, 
                    &mut default_store,&mut |symidx,reg,symtab,asm_sect,regtab|{
                    _load_sym_or_imm(asm_sect, &symidx, reg.clone(), regtab, symtab)?;
                    Ok(())
                })?;
                regtab.unoccupied_reg(reg,symtab,asm_sect,&mut default_store)?;
                Ok(())
            },
        }
    }else{
        let reg = regtab.find_and_occupy_reg(symidx,&TypeDiscriminants::Ptr64,symtab,asm_sect, 
            &mut default_store,&mut |symidx,reg,symtab,asm_sect,regtab|{
            _load_sym_or_imm(asm_sect, &symidx, reg.clone(), regtab, symtab)?;
            Ok(())
        })?;
        regtab.unoccupied_reg(reg,symtab,asm_sect,&mut default_store)?;
        Ok(())
    }
}
// /// reg value -> sym in memory  
// /// require symidx to be symbol  
// /// reg alloc is finished in this scope 
/// reg value -> M[ptr_sym]
/// require ptr_symidx to be symbol 
/// reg alloc is finished in this scope 
pub fn store_from_ptr(asm_sect:&mut AsmSection,ptr_symidx:&SymIdx,val_symidx:&SymIdx, regtab:&mut RegTab,symtab:&mut SymTab)-> Result<()>{

    let ptr_ty = symtab.get(ptr_symidx)?.get_type()?;
    let ele_ty = ptr_ty.to_deref_ptr_type()?.into();

    let ptr_reg = regtab.find_and_occupy_reg(ptr_symidx, &ptr_ty.into(), symtab,asm_sect, &mut default_store, &mut default_load)?;
    let val_reg = regtab.find_and_occupy_reg( &val_symidx, &ele_ty, symtab,asm_sect, &mut default_store, &mut default_load)?;
    _store_from_ptr(asm_sect, ptr_symidx, ptr_reg.clone(), val_reg.clone(), symtab)?;
    regtab.unoccupied_reg(val_reg,symtab,asm_sect,&mut default_store)?;
    regtab.unoccupied_reg(ptr_reg,symtab,asm_sect,&mut default_store)?;
    Ok(())
}

// load the value from ptr symidx to value reg
/// reg alloc is finished in this scope 
pub fn load_from_ptr(asm_sect:&mut AsmSection,ptr_symidx:&SymIdx,val_symidx:&SymIdx, regtab:&mut RegTab, symtab:&mut SymTab) ->Result<()>{

    let ptr_ty = symtab.get(ptr_symidx)?.get_type()?;
    let ele_ty = ptr_ty.to_deref_ptr_type()?.into();

    let ptr_reg = regtab.find_and_occupy_reg(ptr_symidx, &ptr_ty.into(), symtab,asm_sect,&mut default_store, &mut default_load)?;
    let val_reg = regtab.find_and_occupy_reg( &val_symidx, &ele_ty, symtab,asm_sect,&mut default_store,&mut |symidx,val_reg,symtab,asm_sect,regtab|{
        _load_from_ptr(asm_sect, ptr_symidx, ptr_reg.clone(), val_reg.clone(), symtab)?;
        Ok(())
    })?;
    regtab.unoccupied_reg(val_reg.clone(),symtab,asm_sect,&mut default_store)?;
    regtab.unoccupied_reg(ptr_reg.clone(),symtab,asm_sect,&mut default_store)?;
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
                match TypeDiscriminants::new_from_const_str(&symidx.symbol_name) {
                    TypeDiscriminants::F32 => {
                        // f32 
                        assert!(reg.is_fpr());
                        // first put the f32 into a gpr so here type is i32
                        let temp_reg = regtab.find_and_anonymous_occupy(symidx, &TypeDiscriminants::I32, symtab, asm_sect, &mut default_store, &mut |symidx,temp_reg,symtab,asm_sect,regtab|{
                            asm_sect.asm(PseudoInstr::new_li(temp_reg.clone(), Imm::new_literal(symidx.clone().as_rc())).into());
                            Ok(())
                        })?;
                        asm_sect.asm(PseudoInstr::new_reg_mv(reg, temp_reg.clone()).into());
                        regtab.unoccupied_reg(temp_reg,symtab,asm_sect,&mut default_store)?;
                        Ok(())
                    },
                    TypeDiscriminants::I32 => {
                        // i32 ... since riscv li instr has ensured the bitwidth will be ext from 32 to 64 
                        // no need sext.w
                        assert!(!reg.is_fpr());
                        asm_sect.asm(PseudoInstr::new_li(reg, Imm::new_literal(symidx.clone().as_rc())).into());
                        Ok(())
                    }
                    _ => {
                        assert!(!reg.is_fpr());
                        asm_sect.asm(PseudoInstr::new_li(reg, Imm::new_literal(symidx.clone().as_rc())).into());
                        Ok(())
                    },
                }
            },
            false => {
                // as symbol 
                assert!(symidx.index_ssa.is_none());
                let &symidx_offset2sp = symtab.get(symidx)?.get_mem_offset2sp()?;
                let size = symtab.get(symidx)?.get_type()?.get_size()?;
                let ty = symtab.get(symidx)?.get_type()?.into();
                match ty{
                    TypeDiscriminants::F32 => {
                        assert!(reg.is_fpr());
                        // because load is used after occupy, so you can always find reg of symidx, it should be deleted 
                        if let Some(reg_in_regtab) = symtab.reg_of_symidx(symidx)?{
                            if reg_in_regtab != reg{
                                debug_info_red!("reg already found in {:?}",reg_in_regtab);
                                asm_sect.asm(PseudoInstr::new_reg_mv(reg, reg_in_regtab).into());
                                return Ok(())
                            }
                        }

                        if symidx_offset2sp.is_legal_offset(){
                            asm_sect.annotate(format!("load from {:?} in mem\n",symidx));
                            asm_sect.asm(Loads::new(size,reg.clone(), Register::SP, symidx_offset2sp, true)?.into());
                        }else{
                            asm_sect.annotate(format!("load from {:?} in mem]n",symidx));
                            // you should first put the f32 into a gpr so here type is i32
                            let temp_reg = regtab.find_and_anonymous_occupy(&symidx_offset2sp.into(), &TypeDiscriminants::I32, symtab, asm_sect, &mut default_store, &mut default_load)?;
                            asm_sect.asm(Arithmetic::new_add(temp_reg.clone(), Register::SP,temp_reg.clone()).into());
                            asm_sect.asm(Loads::new(size, reg.clone(), temp_reg.clone(), 0, true)?.into());
                            regtab.unoccupied_reg(temp_reg,symtab,asm_sect,&mut default_store)?;
                        }
                        Ok(())
                    },
                    TypeDiscriminants::I32 => {
                        // you should ext it by sext.w
                        assert!(!reg.is_fpr());
                        if let Some(reg_in_regtab) = symtab.reg_of_symidx(symidx)?{
                            if reg_in_regtab != reg{
                                debug_info_red!("reg already found in {:?}",reg_in_regtab);
                                asm_sect.asm(PseudoInstr::new_reg_mv(reg, reg_in_regtab).into());
                                return Ok(())
                            }
                        }
                        if symidx_offset2sp.is_legal_offset(){
                            asm_sect.annotate(format!("load from {:?} in mem\n",symidx));
                            asm_sect.asm(Loads::new(size,reg.clone(), Register::SP, symidx_offset2sp, false)?.into());
                        }else{
                            asm_sect.annotate(format!("load from {:?} in mem\n",symidx));
                            let temp_reg = regtab.find_and_anonymous_occupy(&symidx_offset2sp.into(), &TypeDiscriminants::I32, symtab, asm_sect, &mut default_store, &mut default_load)?;
                            asm_sect.asm(PseudoInstr::new_li(temp_reg.clone(), Imm::new_literal_isize(symidx_offset2sp)).into());
                            asm_sect.asm(Arithmetic::new_add(temp_reg.clone(), Register::SP,temp_reg.clone()).into());
                            asm_sect.asm(Loads::new(size, reg.clone(), temp_reg.clone(), 0, false)?.into());
                            regtab.unoccupied_reg(temp_reg,symtab,asm_sect,&mut default_store)?;
                        }
                        Ok(())
                    }
                    _ => {
                        assert!(!reg.is_fpr());
                        if let Some(reg_in_regtab) = symtab.reg_of_symidx(symidx)?{
                            if reg_in_regtab != reg{
                                debug_info_red!("reg already found in {:?}",reg_in_regtab);
                                asm_sect.asm(PseudoInstr::new_reg_mv(reg, reg_in_regtab).into());
                                return Ok(())
                            }
                        }
                        if symidx_offset2sp.is_legal_offset(){
                            asm_sect.annotate(format!("load from {:?} in mem",symidx));
                            asm_sect.asm(Loads::new(size,reg.clone(), Register::SP, symidx_offset2sp, false)?.into());
                        }else{
                            asm_sect.annotate(format!("load from {:?} in mem",symidx));
                            let temp_reg = regtab.find_and_anonymous_occupy(&symidx_offset2sp.into(), &TypeDiscriminants::I32, symtab, asm_sect, &mut default_store, &mut default_load)?;
                            asm_sect.asm(Arithmetic::new_add(temp_reg.clone(), Register::SP,temp_reg.clone()).into());
                            asm_sect.asm(Loads::new(size, reg.clone(), temp_reg.clone(), 0, false)?.into());
                            regtab.unoccupied_reg(temp_reg,symtab,asm_sect,&mut default_store)?;
                        }
                        Ok(())
                    }
                }
            },
        }
    }else{
        asm_sect.annotate(format!("   load label {} as ptr to reg",symidx.to_deglobal_ptr()?));
        asm_sect.asm(PseudoInstr::new_la(reg.clone(), Imm::new_global_label(symidx.to_deglobal_ptr()?.as_rc())).into());
        Ok(())
    }
}
/// reg value -> sym in memory  
/// require symidx to be symbol in symtab
pub fn _store_sym(asm_sect:&mut AsmSection, symidx:&SymIdx,value_reg:Register,regtab:&mut RegTab,symtab:&mut SymTab, additional_mem_offset:isize) -> Result<()>{
    // if symidx.is_global_ptr() || (symtab.has_symbol(symidx) && *symtab.get(symidx)?.get_is_global()?){
    //     return Ok(())
    // }
    assert!(symidx.index_ssa.is_none());
    let symidx_offset2sp = *symtab.get(symidx)?.get_mem_offset2sp()? + additional_mem_offset;
    let size = symtab.get(symidx)?.get_type()?.get_size()?;
    if value_reg.is_fpr() ^ symtab.get(symidx)?.get_type()?.is_f_32(){
        return Err(anyhow!("can't store symidx {:?}:{:?} from register {:?}",symidx,symtab.get(symidx)?.get_type()?,value_reg))
    }
    if symidx_offset2sp.is_legal_offset(){
        asm_sect.annotate(format!("store to {:?} in mem offset legal",symidx));
        asm_sect.asm(Stores::new( size,value_reg.clone(),Register::SP, symidx_offset2sp as isize, value_reg.is_fpr())?.into());
    }else{
        asm_sect.annotate(format!("store to {:?} in mem offset_illegal",symidx));
        // asm_sect.asm(Stores::new( size,value_reg.clone(),Register::SP, , value_reg.is_fpr())?.into());
        let temp_reg = regtab.find_and_anonymous_occupy(&SymIdx::from(symidx_offset2sp), &TypeDiscriminants::I32, symtab, asm_sect, &mut default_store, &mut default_load)?;
        asm_sect.asm(PseudoInstr::new_li(temp_reg.clone(), Imm::new_literal_isize(symidx_offset2sp)).into());
        asm_sect.asm(Arithmetic::new_add(temp_reg.clone(), Register::SP,temp_reg.clone()).into());
        asm_sect.asm(Stores::new( size,value_reg.clone(),temp_reg.clone(), 0 as isize, value_reg.is_fpr())?.into());
        regtab.unoccupied_reg(temp_reg,symtab,asm_sect,&mut default_store)?;
    }
    Ok(())
}
/// reg value -> M[ptr_sym]
/// require value and pointer is ready in ptr_reg and val_reg
pub fn _store_from_ptr(asm_sect:&mut AsmSection,ptr_symidx:&SymIdx, ptr_reg:Register, val_reg:Register ,symtab:&mut SymTab)-> Result<()>{
    let ele_size = symtab.get(ptr_symidx)?.get_type()?.to_deref_ptr_type()?.get_ele_size()?;
    if val_reg.is_fpr() ^ symtab.get(ptr_symidx)?.get_type()?.to_deref_ptr_type()?.is_f_32(){
        return Err(anyhow!("can't store symidx {:?}:{:?}'s pointed symidx to register {:?}",ptr_symidx,symtab.get(ptr_symidx)?.get_type()?,val_reg))
    }
    asm_sect.asm(Stores::new( ele_size,val_reg.clone(),ptr_reg, 0, val_reg.is_fpr())?.into());
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


/// you should unoccupy the register by yourself
pub fn magic_i32_mul(asm_sect:&mut AsmSection,regtab:& mut RegTab,rst_reg:Register, a:&SymIdx,b:&SymIdx ,symtab:&mut SymTab) ->Result<()>{
    let vartype = TypeDiscriminants::I32;
    if a.is_literal() && b.is_literal(){
        let c = (Value::from_symidx(a)? * Value::from_symidx(b)?)?.as_i32()?;
        asm_sect.asm(PseudoInstr::new_li(rst_reg, Imm::new_literal_isize(c as isize )).into());
    }else{
        match (a.try_log_two_as_i32(),b.try_log_two_as_i32()){
            (Result::Ok(_), Result::Ok(_)) => panic!(),
            (Result::Ok(bit_offset), Err(_)) => {
                if bit_offset != 0 {
                    let val_reg2= regtab.find_and_occupy_reg(&b, &vartype,symtab, asm_sect, &mut default_store, &mut default_load)?;
                    asm_sect.asm(Shifts::new_slli(rst_reg.clone(),val_reg2.clone(),Imm::from_offset(bit_offset)).into());
                    regtab.unoccupied_reg(val_reg2,symtab,asm_sect,&mut default_store)?;
                }else {
                    let val_reg2= regtab.find_and_occupy_reg(&b, &vartype,symtab, asm_sect, &mut default_store, &mut default_load)?;
                    asm_sect.asm(PseudoInstr::new_reg_mv(rst_reg.clone(),val_reg2.clone()).into());
                    regtab.unoccupied_reg(val_reg2,symtab,asm_sect,&mut default_store)?;
                }
            },
            (Err(_), Result::Ok(bit_offset)) => {
                if bit_offset != 0 {
                    let val_reg1= regtab.find_and_occupy_reg(&a, &vartype,symtab, asm_sect, &mut default_store, &mut default_load)?;
                    asm_sect.asm(Shifts::new_slli(rst_reg.clone(),val_reg1.clone(),Imm::from_offset(bit_offset)).into());
                    regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                }else {
                    let val_reg1= regtab.find_and_occupy_reg(&a, &vartype,symtab, asm_sect, &mut default_store, &mut default_load)?;
                    asm_sect.asm(PseudoInstr::new_reg_mv(rst_reg.clone(),val_reg1.clone()).into());
                    regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                }
            },
            (Err(_), Err(_)) => {
                let val_reg1= regtab.find_and_occupy_reg(&a, &vartype,symtab, asm_sect, &mut default_store, &mut default_load)?;
                let val_reg2= regtab.find_and_occupy_reg(&b, &vartype, symtab, asm_sect, &mut default_store, &mut default_load)?;
                asm_sect.asm(Arithmetic::new_mul(rst_reg.clone(),val_reg1.clone(),val_reg2.clone()).into());
                regtab.unoccupied_reg(val_reg1,symtab,asm_sect,&mut default_store)?;
                regtab.unoccupied_reg(val_reg2,symtab,asm_sect,&mut default_store)?;
            },
        }
    }
    Ok(())
}