use itertools::*;
use std::{fmt::{format, Debug}};

use crate::{debug_info_green, instr, node, node_mut, passes::simulator_debug_pass::debug_simu_run};
use anyhow::*;
use itertools::Itertools;

use super::{cfg_node::{CfgGraph, CFG_ROOT}, dot::Config, etc::generate_png_by_graph, field::{Fields, Value}, nhwc_instr::{InstrSlab, NhwcInstr, NhwcInstrType}, riscv_instr::RiscvInstr, simulator::Simulator, symtab::{SymIdx, SymTab}};

/// convert nhwc ir into riscv
pub fn parse_nhwcir2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, riscv_instr_slab:&mut InstrSlab<RiscvInstr>, src_symtab:&SymTab)->Result<()>{
    // firstly process root which contains global vars 
    parse_root2riscv(cfg_graph, nhwc_instr_slab, riscv_instr_slab, src_symtab)?;
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
                asm_sect.align(vartype.get_align()?);
                asm_sect.global(var_symidx.clone());
                asm_sect.obj_type(var_symidx.clone());
                asm_sect.label(var_symidx.clone());
                asm_sect.apply_value(simulator.simu_symtab.get_symbol(&var_symidx.to_src_symidx())?.get_simu_val()?)?;
            },
            _ => {
                // do nothing 
            }
        }
    }
    println!("{:?}",asm_sect);
       
    Ok(asm_sect)
}
/// convert `cfg_entry_node` into riscv 
/// assume first instr be func_def instr while others are alloc instr
fn parse_entry2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, riscv_instr_slab:&mut InstrSlab<RiscvInstr>, src_symtab:&SymTab){

}



/// a asm file contains several sections
pub struct AsmStructure{
    pub sects:Vec<AsmSection>
}
impl AsmSection{
    pub fn new() -> Self{
        Self{
            attrs: vec![],
        }
    }
    pub fn global(&mut self, symidx:SymIdx){
        self.attrs.push(AsmAttrType::Global { symidx }.into())
    }
    pub fn obj_type(&mut self, symidx:SymIdx, ){
        self.attrs.push(AsmAttrType::DataType { attr_ty:DataType::Object,  symidx } .into())
    }
    pub fn func_type(&mut self, symidx:SymIdx, ){
        self.attrs.push(AsmAttrType::DataType { attr_ty:DataType::Function,  symidx } .into())
    }
    pub fn label(&mut self, symidx:SymIdx){
        self.attrs.push(AsmAttrType::Label  { symidx }.into())
    }
    pub fn double(&mut self, symidx:SymIdx){
        self.attrs.push(AsmAttrType::Double { symidx: symidx }.into())
    }
    pub fn word(&mut self, symidx:SymIdx){
        self.attrs.push(AsmAttrType::Word { symidx: symidx }.into())
    }
    pub fn half(&mut self, symidx:SymIdx){
        self.attrs.push(AsmAttrType::Half { symidx: symidx }.into())
    }
    pub fn byte(&mut self, symidx:SymIdx){
        self.attrs.push(AsmAttrType::Half { symidx: symidx }.into())
    }
    pub fn zero(&mut self, len:usize){
        if len >0 {
            self.attrs.push(AsmAttrType::Zero { len }.into())
        }
    }
    pub fn align(&mut self, align:usize){
        self.attrs.push(AsmAttrType::Align { align } .into())
    }
    pub fn data(&mut self){
        self.attrs.push(AsmAttrType::Data {  } .into())
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
    pub attrs:Vec<AsmAttr>
}

/// all kinds of Attr 
pub struct AsmAttr{
    attr_ty:AsmAttrType,
}
impl Debug for AsmAttr{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match &self.attr_ty{
            AsmAttrType::Align { align } => {
                writeln!(f,"    .align {}",align)
            },
            AsmAttrType::Global { symidx } => {
                writeln!(f,"    .global {:?}",symidx)
            },
            AsmAttrType::Data {  } => {
                writeln!(f,"    .data")
            },
            AsmAttrType::Double { symidx } => {
                writeln!(f,"    .double {}",symidx)
            },
            AsmAttrType::Word { symidx } => {
                writeln!(f,"    .word {}",symidx)
            },
            AsmAttrType::Half { symidx } => {
                writeln!(f,"    .half {}",symidx)
            },
            AsmAttrType::Byte { symidx } => {
                writeln!(f,"    .byte {}",symidx)
            },
            AsmAttrType::Zero { len } => {
                writeln!(f,"    .zero {}",len)
            },
            AsmAttrType::Label { symidx } => {
                writeln!(f,"{:?}:",symidx)
            },
            AsmAttrType::DataType { attr_ty, symidx } => {
                writeln!(f,"    .type {} {:?}",symidx, attr_ty)
            },
        }
    }
}

pub enum AsmAttrType{
    Align{
        align:usize
    },
    Global{
        symidx:SymIdx
    },
    Data{
        
    },
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
impl Into<AsmAttr> for AsmAttrType{
    fn into(self) -> AsmAttr {
        AsmAttr { attr_ty: self }
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