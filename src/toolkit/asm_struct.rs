use std::fmt::Debug;
use anyhow::*;
use itertools::Itertools;
use strum_macros::EnumIs;

use crate::{debug_info_blue, debug_info_red};

use super::{field::Value, rv64_instr::{Imm, RV64Instr}, symtab::SymIdx};

/// a asm file contains several sections
pub struct AsmStructure{
    pub sects:Vec<AsmSection>
}
impl AsmStructure{
    pub fn new() -> Self{
        Self { sects: vec![] }
    }
    pub fn dump(&self,enable_annotation:bool) -> String{
        let built_in_part = "# Built-in library\n .text\n .align 4\n .globl starttime\n .type starttime, @function\n starttime:\n mv a0, zero\n tail _sysy_starttime\n \n .text\n .align 4\n .globl stoptime\n .type stoptime, @function\n stoptime:\n mv a0, zero\n tail _sysy_stoptime\n\n\n";
        // let built_in_part = "";
        let mut s = String::new();
        for sect in &self.sects{
            s += format!("{}",sect.dump(enable_annotation)).as_str();
        }
        format!("{}{}",built_in_part,s)
    }
}
impl AsmSection{
    pub fn new(name:String) -> Self{
        Self{
            stmts: vec![],
            sect_name: name,
        }
    }
    pub fn annotate(&mut self, annotation:String){
        self.stmts.push(AsmAttr::Annotation { annotation }.into())
    }
    pub fn global(&mut self, imm:Imm){
        self.stmts.push(AsmAttr::Global { label: imm }.into())
    }
    pub fn obj_type(&mut self, imm:Imm, ){
        self.stmts.push(AsmAttr::DataType { attr_ty:DataType::Object,  imm } .into())
    }
    pub fn func_type(&mut self, imm:Imm){
        self.stmts.push(AsmAttr::DataType { attr_ty:DataType::Function,  imm} .into())
    }
    pub fn label(&mut self, imm:Imm){
        self.stmts.push(AsmAttr::Label  { imm }.into())
    }
    pub fn double(&mut self, imm:Imm){
        self.stmts.push(AsmAttr::Double { imm: imm }.into())
    }
    pub fn word(&mut self, imm:Imm){
        self.stmts.push(AsmAttr::Word { imm: imm }.into())
    }
    pub fn half(&mut self, imm:Imm){
        self.stmts.push(AsmAttr::Half { imm: imm }.into())
    }
    pub fn byte(&mut self, imm:Imm){
        self.stmts.push(AsmAttr::Byte { imm: imm }.into())
    }
    pub fn zero(&mut self, len:usize){
        if len >0 {
            self.stmts.push(AsmAttr::Zero { len }.into())
        }
    }
    pub fn align(&mut self, align:usize){
        self.stmts.push(AsmAttr::Align { align } .into())
    }
    pub fn data(&mut self){
        self.stmts.push(AsmAttr::Data {  } .into())
    }
    pub fn text(&mut self){
        self.stmts.push(AsmAttr::Text {  } .into())
    }
    pub fn asm(&mut self, riscv_instr:RV64Instr){
        debug_info_blue!("asm:{:?}", riscv_instr);
        self.stmts.push(Asm::Riscv { instr: riscv_instr })
    }

    /// generate asm that initialize the value 
    pub fn apply_value(&mut self,val:&Value) -> Result<()>{
        match val{
            Value::Array { value_map, dims: _, ele_ty:_ } => {
                // if array
                let mut offset_value_pairs = value_map.iter().collect_vec();
                offset_value_pairs.sort_by_key(|x| x.0);

                let mut cur = 0 ;
                let mut last_offset = 0;
                while cur < offset_value_pairs.len(){
                    let (&offset,value) = offset_value_pairs[cur];
                    if offset > last_offset{
                        self.zero((offset - last_offset - 1)*val.get_ele_size()?);
                    }
                    self.apply_value(value)?;
                    last_offset = offset;
                    cur +=1 ;
                }
                if last_offset < val.get_mem_len()?{
                    debug_info_red!("mem_len:{} last_offset:{}",val.get_mem_len()?, last_offset);
                    self.zero(val.get_mem_len()? - last_offset*val.get_ele_size()?)
                }
                Ok(())
            },
            _ => {
                match val.get_ele_size()?{
                    8 => { self.double(Imm::new_literal(val.to_symidx().unwrap_or(SymIdx::new_verbose(0, "0".to_string(), None)))) }
                    4 => { self.word(Imm::new_literal(val.to_symidx().unwrap_or(SymIdx::new_verbose(0, "0".to_string(), None)))) }
                    2 => { self.half(Imm::new_literal(val.to_symidx().unwrap_or(SymIdx::new_verbose(0, "0".to_string(), None)))) }
                    1 => { self.byte(Imm::new_literal(val.to_symidx().unwrap_or(SymIdx::new_verbose(0, "0".to_string(), None)))) }
                    _ => { return Err(anyhow!("unexpected ele size")) }
                }
                Ok(())
            }
        }
    }
    
}

/// a section contains several attributes and then asm instrs
pub struct AsmSection{
    pub sect_name:String,
    pub stmts:Vec<Asm>
}

/// all kinds of Attr 
pub enum Asm{
    Attr{attr:AsmAttr},
    Riscv{
        instr:RV64Instr
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
                    AsmAttr::Global { label} => {
                        writeln!(f,"    .globl {:?}",label)
                    },
                    AsmAttr::Data {  } => {
                        writeln!(f,"    .data")
                    },
                    AsmAttr::Text {  } => {
                        writeln!(f,"    .text")
                    },
                    AsmAttr::Double { imm } => {
                        writeln!(f,"    .double {:?}",imm)
                    },
                    AsmAttr::Word { imm } => {
                        writeln!(f,"    .word {:?}",imm)
                    },
                    AsmAttr::Half { imm } => {
                        writeln!(f,"    .half {:?}",imm)
                    },
                    AsmAttr::Byte { imm } => {
                        writeln!(f,"    .byte {:?}",imm)
                    },
                    AsmAttr::Zero { len } => {
                        writeln!(f,"    .zero {:?}",len)
                    },
                    AsmAttr::Label { imm } => {
                        writeln!(f,"{:?}:",imm)
                    },
                    AsmAttr::DataType { attr_ty, imm: symidx } => {
                        writeln!(f,"    .type {:?},{:?}",symidx, attr_ty)
                    },
                    AsmAttr::Annotation { annotation } => {
                        write!(f,"                   {}\n",annotation )
                    },
                }
            },
            Asm::Riscv { instr } => {
                writeln!(f,"    {:?}", instr)
            },
        }
    }
}

#[derive(EnumIs)]
pub enum AsmAttr{
    Annotation{
        annotation:String
    },
    Align{
        align:usize
    },
    Global{
        label:Imm
    },
    Data{ },Text{},
    Double{
        imm:Imm
    },
    Word{
        imm:Imm
    },
    Half{
        imm:Imm
    },
    Byte{
        imm:Imm
    },
    Zero{
        len:usize
    },
    Label{
        imm:Imm
    },
    DataType{
        attr_ty:DataType,
        imm:Imm
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
impl Into<Asm> for RV64Instr{
    fn into(self) -> Asm {
        Asm::Riscv { instr: self } 
    }
}
impl AsmSection{
    pub fn dump(&self, enable_annotation:bool) -> String{
        let mut s = String::new();
        let mut i =0;
        while i < self.stmts.len(){
            let asm_attr = self.stmts.get(i).unwrap();
            if !enable_annotation{
                match asm_attr{
                    Asm::Attr { attr:AsmAttr::Annotation { annotation } } => {
                        
                    },
                    _ => {
                        s += format!("{:?}",asm_attr).as_str();
                    }
                }
            }else{
                match asm_attr{
                    Asm::Attr { attr: AsmAttr::Annotation { annotation } } => {
                        let attr = self.stmts.get(i+1);
                        if !matches!(attr,Some(Asm::Attr { attr: AsmAttr::Annotation { annotation } })) && annotation.ends_with("\n"){
                            // next is not annotation so you should add \n
                            s += format!("              # {:?}\n",asm_attr).as_str();
                        }else {
                            s += format!("              # {:?}",asm_attr).as_str();
                        }
                    },
                    _ => {
                        s += format!("{:?}",asm_attr).as_str();
                    }
                }
            }
            i += 1;
        }
        format!(".section {}\n{}",self.sect_name,s)
    }
}