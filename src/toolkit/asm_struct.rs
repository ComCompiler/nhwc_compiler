use std::fmt::Debug;
use anyhow::*;
use itertools::Itertools;

use super::{field::Value, riscv_instr::RiscvInstr, symtab::SymIdx};

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
    pub fn annotation(&mut self, mut annotation:String){
        annotation = annotation.replace("\n", "");
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