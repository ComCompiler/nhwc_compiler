use itertools::*;

use std::{fmt::{format, Debug}, ops::Index};
use crate::{debug_info_green, direct_child_nodes, instr, node, node_mut, passes::simulator_debug_pass::debug_simu_run, toolkit::riscv_instr::{Arithmetic, Compare}};
use anyhow::*;
use itertools::Itertools;

use super::{cfg_node::{CfgGraph, CFG_ROOT}, dot::Config, etc::generate_png_by_graph, field::{Fields, Value}, nhwc_instr::{InstrSlab, NhwcInstr, NhwcInstrType}, riscv_instr::{BaseIntInstr, Imm, Loads, PseudoInstr, Register, RiscvInstr, Stores}, simulator::Simulator, symtab::{self, SymIdx, SymTab}};

/// convert nhwc ir into riscv
pub fn parse_nhwcir2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, riscv_instr_slab:&mut InstrSlab<RiscvInstr>, src_symtab:&SymTab)->Result<()>{
    // firstly process root which contains global vars 
    let mut asm_structure = AsmStructure::new();
    let static_init_sect = parse_root2riscv(cfg_graph, nhwc_instr_slab, riscv_instr_slab, src_symtab)?;
    asm_structure.sects.push(static_init_sect);
    let func_entry_sect = parse_entry2riscv(cfg_graph, nhwc_instr_slab, riscv_instr_slab, src_symtab)?;
    asm_structure.sects.push(func_entry_sect);
    println!("{:?}",asm_structure);
    Ok(())
}
/// convert `cfg_root_node` into riscv  
/// assumes that there are only global and some calculating instrs so that `simulator` can run directly
fn parse_root2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, riscv_instr_slab:&mut InstrSlab<RiscvInstr>, src_symtab:&SymTab)->Result<AsmSection>{
    let root_node = node_mut!(at CFG_ROOT in cfg_graph);
    let mut simulator = Simulator::new(root_node.instrs.clone(), false);
    simulator.instr_list.push(nhwc_instr_slab.insert_instr(NhwcInstrType::new_exit_breakpoint( vec![]).to_instr()));
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
                    super::field::Type::Fn { arg_syms, ret_sym } => {
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
        match (*$src_symtab.get_symbol($a)?.get_is_const()?,*$src_symtab.get_symbol($a)?.get_is_const()?){
            (true, true) => {
                $asm_sect.asm(PseudoInstr::new_li(Register::new_s($reg1), Imm::Literal { symidx:$a.clone() }).into());
                $asm_sect.asm(PseudoInstr::new_li(Register::new_s($reg1), Imm::Literal { symidx:$a.clone() }).into());
            },
            (true, false) => {
                $asm_sect.asm(PseudoInstr::new_li(Register::new_s($reg1), Imm::Literal { symidx:$a.clone() }).into());
                load_sym_or_li(&mut $asm_sect, $a, Register::new_s($reg2), $src_symtab)?;
                $asm_sect.asm($func_name(Register::new_s($reg3), Register::new_s($reg1), Register::new_s($reg2)).into());
            },
            (false, true) => {
                load_sym_or_li(&mut $asm_sect, $a, Register::new_s($reg1), $src_symtab)?;
                $asm_sect.asm(PseudoInstr::new_li(Register::new_s($reg2), Imm::Literal { symidx:$a.clone() }).into());
                $asm_sect.asm($func_name(Register::new_s($reg3), Register::new_s($reg1), Register::new_s($reg2)).into());
            },
            (false, false) => {
                load_sym_or_li(&mut $asm_sect, $a, Register::new_s($reg1), $src_symtab)?;
                load_sym_or_li(&mut $asm_sect, $b, Register::new_s($reg2), $src_symtab)?;
                $asm_sect.asm($func_name(Register::new_s($reg3), Register::new_s($reg1), Register::new_s($reg2)).into());
            },
        }

    };
}
/// convert `cfg_entry_node` into riscv 
/// assume first instr be func_def instr while others are alloc instr
fn parse_entry2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, riscv_instr_slab:&mut InstrSlab<RiscvInstr>, src_symtab:&SymTab) -> Result<AsmSection>{
    let entries = direct_child_nodes!(at CFG_ROOT in cfg_graph);
    let mut asm_sect = AsmSection::new();
    asm_sect.text() ;
    for entry in entries{
        let entry_node = node_mut!(at entry in cfg_graph);
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
        for &instr in entry_node.instrs.iter() {
            let instr_struct = instr!(at instr in nhwc_instr_slab)?;
            match &instr_struct.instr_type{
                NhwcInstrType::Label { label_symidx } => {
                    asm_sect.label(label_symidx.clone());
                },
                NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
                    asm_sect.global(func_symidx.clone());
                    asm_sect.func_type(func_symidx.clone());
                    asm_sect.label(func_symidx.clone());
                    store_sym(&mut asm_sect, src_symtab.get_symbol(func_symidx)?.get_func_cor_ra_symidx()?, Register::RA, src_symtab)?;
                    store_sym(&mut asm_sect, src_symtab.get_symbol(func_symidx)?.get_func_cor_s0_symidx()?, Register::new_s0(), src_symtab)?;
                    for (idx,arg) in args.iter().enumerate(){
                        store_sym(&mut asm_sect, arg, Register::new_a(idx as u8), src_symtab)?;
                    }   
                },
                NhwcInstrType::DefineVar { var_symidx, vartype, op_value } => {
                    match op_value{
                        Some(symidx) => {
                            
                        },
                        None => {},
                    }
                },
                NhwcInstrType::Alloc { var_symidx, vartype } => {
                    
                },
                NhwcInstrType::Global { var_symidx, vartype } => {

                },
                NhwcInstrType::Load { lhs, ptr_symidx, ptr_ty } => {
                    // // load the pointer to s1
                    // let &ptr_offset2sp = src_symtab.get_symbol(ptr_symidx)?.get_mem_offset2sp()?;
                    // asm_sect.asm(RiscvInstr::new_LW(Register::new_s(1) , Register::SP {  }, Imm::from_offset(ptr_offset2sp)));
                    // // load the value to s2
                    // let &value_offset2sp = src_symtab.get_symbol()?.get_mem_offset2sp()?;
                    // asm_sect.asm(RiscvInstr::new_LW(Register::new_s(2) , Register::SP {  }, Imm::from_offset(value_offset2sp)));
                },
                NhwcInstrType::Store { value_symidx, value_ty, ptr_symidx, ptr_ty } => {
                    // load the pointer to s1
                    // load the value to s2
                    // let &value_offset2sp = src_symtab.get_symbol(value_symidx)?.get_mem_offset2sp()?;
                    // asm_sect.asm(RiscvInstr::new_LW(Register::new_s(2) , Register::SP {  }, Imm::from_offset(value_offset2sp)));
                    // store s2 to s1
                    // asm_sect.asm(RiscvInstr::new_SW(Register::new_s(1) , Register::new_s(2), Imm::from_offset(0)));
                },
                NhwcInstrType::GetElementPtr { lhs, array_symidx, array_ty, idx_vec } => {

                },
                NhwcInstrType::Arith { lhs, rhs } => {
                    // we will store rst to reg3
                    match rhs{
                        super::nhwc_instr::ArithOp::Add { a, b, vartype } => {
                            BinOp!(sect asm_sect func_name {Arithmetic::new_add} args{a,b,1,2,3} with_symtab src_symtab);
                        },
                        super::nhwc_instr::ArithOp::Mul { a, b, vartype } => {
                            BinOp!(sect asm_sect func_name {Arithmetic::new_mul} args{a,b,1,2,3} with_symtab src_symtab);
                        },
                        super::nhwc_instr::ArithOp::Div { a, b, vartype } => {
                            BinOp!(sect asm_sect func_name {Arithmetic::new_div} args{a,b,1,2,3} with_symtab src_symtab);
                        },
                        super::nhwc_instr::ArithOp::Sub { a, b, vartype } => {
                            BinOp!(sect asm_sect func_name {Arithmetic::new_sub} args{a,b,1,2,3} with_symtab src_symtab);
                        },
                        super::nhwc_instr::ArithOp::Mod { a, b, vartype } => {
                            BinOp!(sect asm_sect func_name {Arithmetic::new_rem} args{a,b,1,2,3} with_symtab src_symtab);
                        },
                        super::nhwc_instr::ArithOp::Icmp { plan, a, b, vartype } => {
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
                        super::nhwc_instr::ArithOp::Ucmp { plan, a, b, vartype } => {

                        },
                        super::nhwc_instr::ArithOp::LogicAnd { a, b, vartype } => {

                        },
                        super::nhwc_instr::ArithOp::LogicOr { a, b, vartype } => {

                        },
                        super::nhwc_instr::ArithOp::LogicNot { a, vartype } => {

                        },
                    }
                    // store reg1 to lhs
                    store_sym(&mut asm_sect, lhs, Register::new_s(3), src_symtab)?;
                },
                NhwcInstrType::SimpleAssign { lhs, rhs } => {
                    load_sym_or_li(&mut asm_sect, rhs, Register::new_s(3), src_symtab)?;
                    store_sym(&mut asm_sect, lhs,Register::new_s(3), src_symtab)?;
                },
                NhwcInstrType::Call { op_assigned_symidx, func_op } => {
                    for (idx,arg) in func_op.actual_arg_symidx_vec.iter().enumerate(){
                        load_sym_or_li(&mut asm_sect, arg, Register::new_a(idx as u8), src_symtab)?;
                    }   
                    PseudoInstr::new_call(Imm::new_label(func_op.func_symidx.clone()));
                },
                NhwcInstrType::Jump { jump_op } => {
                    match jump_op{
                        super::nhwc_instr::JumpOp::Ret { op_ret_sym } => {
                            asm_sect.asm(PseudoInstr::new_ret().into());
                        },
                        super::nhwc_instr::JumpOp::Br { cond, t1, t2 } => todo!(),
                        super::nhwc_instr::JumpOp::Switch { cond, default, compared } => todo!(),
                        super::nhwc_instr::JumpOp::DirectJump { label_symidx } => todo!(),
                    }
                },
                NhwcInstrType::Phi { lhs, rhs } => todo!(),
                NhwcInstrType::TranType { lhs, op } => todo!(),
                NhwcInstrType::BreakPoint { symidx, breakpoint_args } => todo!(),
                NhwcInstrType::Nope {  } => {
                    asm_sect.asm(PseudoInstr::new_nop().into());
                },
            }
        }
    }
    Ok(asm_sect)
}
///  sym in memory -> reg or literal li -> reg
/// symidx could be literal or symbol
pub fn load_sym_or_li(asm_sect:&mut AsmSection,symidx:&SymIdx,reg:Register,src_symtab:&SymTab) -> Result<()>{
    match *src_symtab.get_symbol(symidx)?.get_is_literal()?{
        true => {
            asm_sect.asm(PseudoInstr::new_li(reg, Imm::new_literal(symidx.clone())).into());
        },
        false => {
            let &symidx_offset2sp = src_symtab.get_symbol(symidx)?.get_mem_offset2sp()?;
            asm_sect.asm(Loads::new_lw(reg, Register::SP {  }, Imm::from_offset(symidx_offset2sp)).into());
        },
    }
    Ok(())
}
/// reg value -> sym in memory  
/// require symidx to be symbol 
pub fn store_sym(asm_sect:&mut AsmSection,symidx:&SymIdx,reg:Register,src_symtab:&SymTab) -> Result<()>{
    let &symidx_offset2sp = src_symtab.get_symbol(symidx)?.get_mem_offset2sp()?;
    asm_sect.asm(Stores::new_sw(reg, Register::new_sp(), Imm::from_offset(0)).into());
    Ok(())
}
/// reg value -> M[ptr_sym]
/// require ptr_symidx to be symbol 
/// value_symidx could be literal or symbol
pub fn store_ptr(asm_sect:&mut AsmSection,ptr_symidx:&SymIdx,value_symidx:&SymIdx,ptr_reg:Register, value_reg:Register ,src_symtab:&SymTab)-> Result<()>{
    load_sym_or_li(asm_sect, ptr_symidx, ptr_reg.clone(), src_symtab)?;
    load_sym_or_li(asm_sect, value_symidx, value_reg.clone(), src_symtab)?;
    asm_sect.asm(Stores::new_sw(ptr_reg, value_reg, Imm::from_offset(0)).into());
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
            Value::Array { value_map, dims, ele_ty } => {
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
                    8 => {
                        self.double(val.to_symidx()?)
                    }
                    4 => {
                        self.word(val.to_symidx()?)
                    }
                    2 => {
                        self.half(val.to_symidx()?)

                    }
                    1 => {
                        self.byte(val.to_symidx()?)
                    }
                    _ => {
                        return Err(anyhow!("unexpected ele size"))
                    }
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