

use std::{fmt::{Debug}, ops::{Index}};
use crate::{direct_child_nodes, instr, node, node_mut, passes::simulator_debug_pass::debug_simu_run, toolkit::riscv_instr::{Arithmetic}};
use anyhow::*;
use itertools::Itertools;

use super::{cfg_edge::CfgEdgeType, cfg_node::{CfgGraph, CFG_ROOT}, dot::Config, etc::{dfs_with_priority, generate_png_by_graph}, field::{Value}, nhwc_instr::{InstrSlab, NhwcInstr, NhwcInstrType}, riscv_instr::{Imm, Loads, PseudoInstr, Register, RiscvInstr, Shifts, Stores}, simulator::Simulator, symtab::{SymIdx, SymTab}};

/// convert nhwc ir into riscv
pub fn parse_nhwcir2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, riscv_instr_slab:&mut InstrSlab<RiscvInstr>, asm_structure:&mut AsmStructure, src_symtab:&SymTab)->Result<()>{
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
fn parse_root2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, _riscv_instr_slab:&mut InstrSlab<RiscvInstr>, src_symtab:&SymTab)->Result<AsmSection>{
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
                        asm_sect.global(var_symidx.clone());
                        asm_sect.annotation(format!("{:?}",&instr!(at instr in nhwc_instr_slab)?));
                        asm_sect.obj_type(var_symidx.clone());
                        asm_sect.label(var_symidx.clone());
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
///    ($func_name:ident,$a:ident,$b:ident,$reg1:ident,$reg2:ident,$reg3:ident with_symtab $src_symtab:ident) => {
macro_rules! BinOp {
    (sect $asm_sect:ident func_name $func_name:block args{$a:ident,$b:ident,$reg1:expr,$reg2:expr,$reg3:expr} with_symtab $src_symtab:ident) => {
        load_sym_or_imm(&mut $asm_sect, $a, Register::new_s($reg1), $src_symtab)?;
        load_sym_or_imm(&mut $asm_sect, $b, Register::new_s($reg2), $src_symtab)?;
        $asm_sect.asm($func_name(Register::new_s($reg3), Register::new_s($reg1), Register::new_s($reg2)).into());
    };
}
/// convert `cfg_entry_node` into riscv 
/// assume first instr be func_def instr while others are alloc instr
fn parse_funcs2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, _riscv_instr_slab:&mut InstrSlab<RiscvInstr>, src_symtab:&SymTab) -> Result<AsmSection>{
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
                        asm_sect.label(label_symidx.clone());
                    },
                    NhwcInstrType::DefineFunc { func_symidx, ret_symidx: _, args } => {
                        asm_sect.global(func_symidx.clone());
                        asm_sect.func_type(func_symidx.clone());
                        asm_sect.label(func_symidx.clone());
                        // apply for stack mem
                        let stack_size = node!(at cfg_entry_node in cfg_graph).get_mem_layout()?.get_mem_len();
                        // allocate stack mem
                        asm_sect.asm(Arithmetic::new_addi(Register::new_sp(), Register::new_sp(), Imm::from_offset(-(stack_size as isize))).into());
                        store_sym(&mut asm_sect, src_symtab.get_symbol(func_symidx)?.get_func_cor_ra_symidx()?, Register::RA, src_symtab)?;
                        store_sym(&mut asm_sect, src_symtab.get_symbol(func_symidx)?.get_func_cor_s0_symidx()?, Register::new_s0(), src_symtab)?;
                        for (idx,arg) in args.iter().enumerate(){
                            store_sym(&mut asm_sect, arg, Register::new_a(idx as u8), src_symtab)?;
                        }   
                    },
                    NhwcInstrType::DefineVar { var_symidx, vartype: _, op_value } => {
                        match op_value{
                            Some(value_symidx) => {
                                load_sym_or_imm(&mut asm_sect, value_symidx, Register::new_s(1), src_symtab)?;
                                store_sym(&mut asm_sect, var_symidx, Register::new_s(1), src_symtab)?;
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
                        load_from_ptr(&mut asm_sect, ptr_symidx, Register::new_s(1), Register::new_s(2), src_symtab)?;
                        store_sym(&mut asm_sect, lhs, Register::new_s(2), src_symtab)?;
                    },
                    NhwcInstrType::Store { value_symidx, value_ty: _, ptr_symidx, ptr_ty: _ } => {
                        load_sym_or_imm(&mut asm_sect, value_symidx, Register::new_s(2), src_symtab)?;
                        store_from_ptr(&mut asm_sect, ptr_symidx, Register::new_s(1), Register::new_s(2), src_symtab)?;
                    },
                    NhwcInstrType::GetElementPtr { lhs: _, array_symidx, array_ty, idx_vec } => {
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
                        asm_sect.asm(Shifts::new_slli_from_multiple(Register::new_s(4), Register::new_s(4), ele_size)?.into());
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
                    },
                    NhwcInstrType::Arith { lhs, rhs } => {
                        // we will store rst to reg3
                        match rhs{
                            super::nhwc_instr::ArithOp::Add { a, b, vartype: _ } => {
                                BinOp!(sect asm_sect func_name {Arithmetic::new_add} args{a,b,1,2,3} with_symtab src_symtab);
                            },
                            super::nhwc_instr::ArithOp::Mul { a, b, vartype: _ } => {
                                BinOp!(sect asm_sect func_name {Arithmetic::new_mul} args{a,b,1,2,3} with_symtab src_symtab);
                            },
                            super::nhwc_instr::ArithOp::Div { a, b, vartype: _ } => {
                                BinOp!(sect asm_sect func_name {Arithmetic::new_div} args{a,b,1,2,3} with_symtab src_symtab);
                            },
                            super::nhwc_instr::ArithOp::Sub { a, b, vartype: _ } => {
                                BinOp!(sect asm_sect func_name {Arithmetic::new_sub} args{a,b,1,2,3} with_symtab src_symtab);
                            },
                            super::nhwc_instr::ArithOp::Mod { a, b, vartype: _ } => {
                                BinOp!(sect asm_sect func_name {Arithmetic::new_rem} args{a,b,1,2,3} with_symtab src_symtab);
                            },
                            super::nhwc_instr::ArithOp::Icmp { plan, a: _, b: _, vartype: _ } => {
                                match plan{
                                    super::nhwc_instr::IcmpPlan::Eq => {
                                        // BinOp!(sect asm_sect func_name {Compare::new} args{a,b,1,2,3} with_symtab src_symtab);
                                    },
                                    super::nhwc_instr::IcmpPlan::Ne => {
                                    },
                                    super::nhwc_instr::IcmpPlan::Ugt => todo!(),
                                    super::nhwc_instr::IcmpPlan::Uge => todo!(),
                                    super::nhwc_instr::IcmpPlan::Ult => todo!(),
                                    super::nhwc_instr::IcmpPlan::Ule => todo!(),
                                    super::nhwc_instr::IcmpPlan::Sgt => todo!(),
                                    super::nhwc_instr::IcmpPlan::Sge => todo!(),
                                    super::nhwc_instr::IcmpPlan::Slt => todo!(),
                                    super::nhwc_instr::IcmpPlan::Sle => todo!(),
                                }
                            },
                            super::nhwc_instr::ArithOp::Ucmp { plan, a: _, b: _, vartype: _ } => {
                                match plan{
                                    super::nhwc_instr::UcmpPlan::Oeq => todo!(),
                                    super::nhwc_instr::UcmpPlan::One => todo!(),
                                    super::nhwc_instr::UcmpPlan::Ogt => todo!(),
                                    super::nhwc_instr::UcmpPlan::Oge => todo!(),
                                    super::nhwc_instr::UcmpPlan::Olt => todo!(),
                                    super::nhwc_instr::UcmpPlan::Ole => todo!(),
                                }

                            },
                            super::nhwc_instr::ArithOp::LogicAnd { a: _, b: _, vartype: _ } => {

                            },
                            super::nhwc_instr::ArithOp::LogicOr { a: _, b: _, vartype: _ } => {

                            },
                            super::nhwc_instr::ArithOp::LogicNot { a: _, vartype: _ } => {

                            },
                        }
                        // store reg3 to lhs
                        store_sym(&mut asm_sect, lhs, Register::new_s(3), src_symtab)?;
                    },
                    NhwcInstrType::SimpleAssign { lhs, rhs } => {
                        load_sym_or_imm(&mut asm_sect, rhs, Register::new_s(3), src_symtab)?;
                        store_sym(&mut asm_sect, lhs,Register::new_s(3), src_symtab)?;
                    },
                    NhwcInstrType::Call { op_assigned_symidx: _, func_op } => {
                        for (idx,arg) in func_op.actual_arg_symidx_vec.iter().enumerate(){
                            load_sym_or_imm(&mut asm_sect, arg, Register::new_a(idx as u8), src_symtab)?;
                        }   
                        PseudoInstr::new_call(Imm::new_label(func_op.func_symidx.clone()));
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
                            super::nhwc_instr::JumpOp::Br { cond, t1: _, t2 } => {
                                load_sym_or_imm(&mut asm_sect, cond, Register::new_s(1), src_symtab)?;
                                asm_sect.asm(PseudoInstr::new_bnez(Register::new_s(1),Imm::new_label(t2.clone())).into());
                                asm_sect.asm(PseudoInstr::new_j(Imm::new_label(t2.clone())).into());
                            },
                            super::nhwc_instr::JumpOp::Switch { cond: _, default: _, compared: _ } => todo!(),
                            super::nhwc_instr::JumpOp::DirectJump { label_symidx } => {
                                asm_sect.asm(PseudoInstr::new_j(Imm::new_label(label_symidx.clone())).into())
                            },
                        }
                    },
                    NhwcInstrType::Phi { lhs: _, rhs: _ } => {
                        panic!("phi appeared in gen asm pass");
                    },
                    NhwcInstrType::TranType { lhs: _, op: _ } => todo!(),
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
                asm_sect.asm(PseudoInstr::new_li(reg, Imm::new_literal(symidx.clone())).into());
            },
            false => {
                let &symidx_offset2sp = src_symtab.get_symbol(symidx)?.get_mem_offset2sp()?;
                let size = src_symtab.get_symbol(symidx)?.get_type()?.get_ele_size()?;
                asm_sect.asm(Loads::new(size,reg, Register::SP {  }, symidx_offset2sp as isize)?.into());
            },
        }
    }else{
        asm_sect.annotation(format!("   load label {} as ptr to reg",symidx.to_deglobal_ptr()?));
        asm_sect.asm(PseudoInstr::new_la(reg, symidx.to_deglobal_ptr()?).into());
    }
    Ok(())
}
/// reg value -> sym in memory  
/// require symidx to be symbol 
pub fn store_sym(asm_sect:&mut AsmSection, symidx:&SymIdx,value_reg:Register,src_symtab:&SymTab) -> Result<()>{
    let &symidx_offset2sp = src_symtab.get_symbol(symidx)?.get_mem_offset2sp()?;
    let size = src_symtab.get_symbol(symidx)?.get_type()?.get_ele_size()?;
    asm_sect.asm(Stores::new( size,value_reg,Register::new_sp(), symidx_offset2sp as isize)?.into());
    Ok(())
}
/// reg value -> M[ptr_sym]
/// require ptr_symidx to be symbol 
pub fn store_from_ptr(asm_sect:&mut AsmSection,ptr_symidx:&SymIdx, ptr_reg:Register, value_reg:Register ,src_symtab:&SymTab)-> Result<()>{
    load_sym_or_imm(asm_sect, ptr_symidx, ptr_reg.clone(), src_symtab)?;
    let size = src_symtab.get_symbol(ptr_symidx)?.get_type()?.get_ele_size()?;
    asm_sect.asm(Stores::new( size,value_reg,ptr_reg, 0)?.into());
    Ok(())
}

// load the value from ptr symidx to value reg
pub fn load_from_ptr(asm_sect:&mut AsmSection,ptr_symidx:&SymIdx,ptr_reg:Register, value_reg:Register ,src_symtab:&SymTab) ->Result<()>{
    load_sym_or_imm(asm_sect, ptr_symidx, ptr_reg.clone(), src_symtab)?;
    // deref the ptr then get its ele size
    let size = src_symtab.get_symbol(ptr_symidx)?.get_type()?.to_deref_type()?.get_ele_size()?;
    asm_sect.asm(Loads::new(size, value_reg, ptr_reg, 0)?.into());
    Ok(())
}



/// a asm file contains several sections
pub struct AsmStructure{
    pub sects:Vec<AsmSection>
}
impl Debug for AsmStructure{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let mut s = String::new();
        for sect in &self.sects{
            s += format!("{:?}",sect).as_str();
        }
        write!(f,"{}",s)
    }
}
impl AsmStructure{
    pub fn new() -> Self{
        Self { sects: vec![] }
    }
}
impl AsmSection{
    pub fn new() -> Self{
        Self{
            attrs: vec![],
        }
    }
    pub fn annotation(&mut self, annotation:String){
        self.attrs.push(AsmAttr::Annotation { annotation }.into())
    }
    pub fn global(&mut self, symidx:SymIdx){
        self.attrs.push(AsmAttr::Global { symidx }.into())
    }
    pub fn obj_type(&mut self, symidx:SymIdx, ){
        self.attrs.push(AsmAttr::DataType { attr_ty:DataType::Object,  symidx } .into())
    }
    pub fn func_type(&mut self, symidx:SymIdx, ){
        self.attrs.push(AsmAttr::DataType { attr_ty:DataType::Function,  symidx } .into())
    }
    pub fn label(&mut self, symidx:SymIdx){
        self.attrs.push(AsmAttr::Label  { symidx }.into())
    }
    pub fn double(&mut self, symidx:SymIdx){
        self.attrs.push(AsmAttr::Double { symidx: symidx }.into())
    }
    pub fn word(&mut self, symidx:SymIdx){
        self.attrs.push(AsmAttr::Word { symidx: symidx }.into())
    }
    pub fn half(&mut self, symidx:SymIdx){
        self.attrs.push(AsmAttr::Half { symidx: symidx }.into())
    }
    pub fn byte(&mut self, symidx:SymIdx){
        self.attrs.push(AsmAttr::Byte { symidx: symidx }.into())
    }
    pub fn zero(&mut self, len:usize){
        if len >0 {
            self.attrs.push(AsmAttr::Zero { len }.into())
        }
    }
    pub fn align(&mut self, align:usize){
        self.attrs.push(AsmAttr::Align { align } .into())
    }
    pub fn data(&mut self){
        self.attrs.push(AsmAttr::Data {  } .into())
    }
    pub fn text(&mut self){
        self.attrs.push(AsmAttr::Text {  } .into())
    }
    pub fn asm(&mut self, riscv_instr:RiscvInstr){
        self.attrs.push(Asm::Riscv { instr: riscv_instr })
    }

    /// generate asm that initialize the value 
    pub fn apply_value(&mut self,val:&Value) -> Result<()>{
        match val{
            Value::Array { value_map, dims: _, ele_ty } => {
                // if array
                let mut offset_value_pairs = value_map.iter().collect_vec();
                offset_value_pairs.sort_by_key(|x| x.0);

                let mut cur = 0 ;
                let mut last_offset = 0;
                while cur < offset_value_pairs.len(){
                    let (&offset,value) = offset_value_pairs[cur];
                    if offset > last_offset{
                        self.zero((offset - last_offset - 1)*ele_ty.get_ele_size()?);
                    }
                    self.apply_value(value)?;
                    last_offset = offset;
                    cur +=1 ;
                }
                if last_offset < ele_ty.get_ele_len()?{
                    self.zero(ele_ty.get_ele_len()? - last_offset)
                }
                Ok(())
            },
            _ => {
                match val.get_ele_size()?{
                    8 => { self.double(val.to_symidx()?) }
                    4 => { self.word(val.to_symidx()?) }
                    2 => { self.half(val.to_symidx()?) }
                    1 => { self.byte(val.to_symidx()?) }
                    _ => { return Err(anyhow!("unexpected ele size")) }
                }
                Ok(())
            }
        }
    }
    
}

/// a section contains several attributes and then asm instrs
pub struct AsmSection{
    pub attrs:Vec<Asm>
}

/// all kinds of Attr 
pub enum Asm{
    Attr{attr:AsmAttr},
    Riscv{
        instr:RiscvInstr
    }
}
impl Debug for Asm{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            Asm::Attr { attr } => {
                match attr{
                    AsmAttr::Align { align } => {
                        writeln!(f,"    .align {}",align)
                    },
                    AsmAttr::Global { symidx } => {
                        writeln!(f,"    .global {:?}",symidx)
                    },
                    AsmAttr::Data {  } => {
                        writeln!(f,"    .data")
                    },
                    AsmAttr::Text {  } => {
                        writeln!(f,"    .text")
                    },
                    AsmAttr::Double { symidx } => {
                        writeln!(f,"    .double {}",symidx)
                    },
                    AsmAttr::Word { symidx } => {
                        writeln!(f,"    .word {}",symidx)
                    },
                    AsmAttr::Half { symidx } => {
                        writeln!(f,"    .half {}",symidx)
                    },
                    AsmAttr::Byte { symidx } => {
                        writeln!(f,"    .byte {}",symidx)
                    },
                    AsmAttr::Zero { len } => {
                        writeln!(f,"    .zero {}",len)
                    },
                    AsmAttr::Label { symidx } => {
                        writeln!(f,"{:?}:",symidx)
                    },
                    AsmAttr::DataType { attr_ty, symidx } => {
                        writeln!(f,"    .type {} {:?}",symidx, attr_ty)
                    },
                    AsmAttr::Annotation { annotation } => {
                        writeln!(f,"                    ;{}",annotation, )
                    },
                }
            },
            Asm::Riscv { instr } => {
                writeln!(f,"    {:?}", instr)
            },
        }
    }
}

pub enum AsmAttr{
    Annotation{
        annotation:String
    },
    Align{
        align:usize
    },
    Global{
        symidx:SymIdx
    },
    Data{ },Text{},
    Double{
        symidx:SymIdx
    },
    Word{
        symidx:SymIdx
    },
    Half{
        symidx:SymIdx
    },
    Byte{
        symidx:SymIdx
    },
    Zero{
        len:usize
    },
    Label{
        symidx:SymIdx
    },
    DataType{
        attr_ty:DataType,
        symidx:SymIdx
    }
}
pub enum DataType{
    Object, 
    Function
}
impl Debug for DataType{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Object => write!(f, "@object"),
            Self::Function => write!(f, "@function"),
        }
    }
}
impl Into<Asm> for AsmAttr{
    fn into(self) -> Asm {
        Asm::Attr { attr: self }
    }
}
impl Into<Asm> for RiscvInstr{
    fn into(self) -> Asm {
        Asm::Riscv { instr: self } 
    }
}
impl Debug for AsmSection{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let mut s = String::new();
        for asm_attr in &self.attrs{
            s += format!("{:?}",asm_attr).as_str();
        }
        write!(f,".section\n{}",s)
    }
}