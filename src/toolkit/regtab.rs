use ahash::AHashMap;
use anyhow::*;
use crate::toolkit::symtab::*;

use crate::reg_field_for_struct;

use super::{field::Type, rv64_instr::Register, symbol::Symbol, symtab::{SymIdx, SymTab}};

pub type RegTab = AHashMap<Register, Option<SymIdx>>;
reg_field_for_struct!(Symbol {
        CUR_REG:Option<Register>,
    } with_fields fields);

pub trait RegManager{
    fn is_available_reg(&mut self, reg: &Register) -> Result<bool>;
    fn find_available_reg_for_ty(&mut self, sym_ty:&Type, symtab:&mut SymTab) -> Register;
    fn occupy_reg(&mut self,reg:Register, symidx:SymIdx, symtab:&mut SymTab ) -> Result<()>;
    fn release_reg(&mut self,reg:Register, symtab:&mut SymTab ) -> Result<()>;
}

impl RegManager for RegTab{
    fn is_available_reg(&mut self,reg:&Register) -> Result<bool> {
        if let Some((_reg,op_symidx)) = self.get_key_value(&reg){
            match op_symidx{
                Some(_symidx) => {
                    Ok(true)
                },
                None => {
                    Ok(false)
                },
            }
        }else{
            Err(anyhow!("query illegal register {:?}",reg))
        }
    }
    fn occupy_reg(&mut self, reg:Register, symidx:SymIdx, symtab:&mut SymTab) -> Result<()>{
        if self.is_available_reg(&reg)?{
            match self.get_mut(&reg){
                Some(op_symidx) => {
                    symtab;
                    *op_symidx = Some(symidx);   
                    Ok(())
                },
                None =>{
                    self.insert(reg, Some(symidx));
                    Ok(())
                },
            }
        }else{
            Err(anyhow!("reg {:?} has already been occupied by symidx {:?}",reg,symidx))
        }
    }
    fn release_reg(&mut self, reg:Register, _symtab:&mut SymTab) -> Result<()>{
        if self.is_available_reg(&reg)?{
            Ok(())
        }else{
            Err(anyhow!("can't release an unoccpuied reg {:?}",reg))
        }
    }
    
    fn find_available_reg_for_ty(&mut self, _sym_ty:&Type,_symtab:&mut SymTab) -> Register {
        todo!()
    }
}