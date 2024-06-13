use std::fmt::Debug;
use anyhow::*;
use itertools::Itertools;

use super::{field::Value, rv64_instr::{Imm, RV64Instr}, symtab::SymIdx};

/// a asm file contains several sections
pub struct AsmStructure{
    pub sects:Vec<AsmSection>
}
impl Debug for AsmStructure{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let built_in_part = "# Built-in library\n .text\n .align 4\n .globl starttime\n .type starttime, @function\n starttime:\n mv a0, zero\n tail _sysy_starttime\n \n .text\n .align 4\n .globl stoptime\n .type stoptime, @function\n stoptime:\n mv a0, zero\n tail _sysy_stoptime\n";
        // let built_in_part = "";
        let mut s = String::new();
        for sect in &self.sects{
            s += format!("{:?}",sect).as_str();
        }
        write!(f,"{}{}",built_in_part,s)
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
    pub fn annotation(&mut self, mut annotation:String){
        annotation = annotation.replace("\n", "");
        self.attrs.push(AsmAttr::Annotation { annotation }.into())
    }
    pub fn global(&mut self, imm:Imm){
        self.attrs.push(AsmAttr::Global { label: imm }.into())
    }
    pub fn obj_type(&mut self, imm:Imm, ){
        self.attrs.push(AsmAttr::DataType { attr_ty:DataType::Object,  imm } .into())
    }
    pub fn func_type(&mut self, imm:Imm){
        self.attrs.push(AsmAttr::DataType { attr_ty:DataType::Function,  imm} .into())
    }
    pub fn label(&mut self, imm:Imm){
        self.attrs.push(AsmAttr::Label  { imm }.into())
    }
    pub fn double(&mut self, imm:Imm){
        self.attrs.push(AsmAttr::Double { imm: imm }.into())
    }
    pub fn word(&mut self, imm:Imm){
        self.attrs.push(AsmAttr::Word { imm: imm }.into())
    }
    pub fn half(&mut self, imm:Imm){
        self.attrs.push(AsmAttr::Half { imm: imm }.into())
    }
    pub fn byte(&mut self, imm:Imm){
        self.attrs.push(AsmAttr::Byte { imm: imm }.into())
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
    pub fn asm(&mut self, riscv_instr:RV64Instr){
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
    pub attrs:Vec<Asm>
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
                        writeln!(f,"    .type {:?} {:?}",symidx, attr_ty)
                    },
                    AsmAttr::Annotation { annotation } => {
                        writeln!(f,"                    #{}",annotation, )
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
impl Debug for AsmSection{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let mut s = String::new();
        for asm_attr in &self.attrs{
            s += format!("{:?}",asm_attr).as_str();
        }
        write!(f,".section\n{}",s)
    }
}