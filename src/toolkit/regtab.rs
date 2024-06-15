use ahash::AHashMap;
use anyhow::*;
use derive_new::new;
use crate::toolkit::symtab::*;

use crate::reg_field_for_struct;

use super::{field::Type, nhwc_instr::NhwcInstr, rv64_instr::Register, symbol::Symbol, symtab::{SymIdx, SymTab}};

/// only manage s & fs registers 
pub struct RegTab {
    reg_symidx_map :AHashMap<Register, Option<(SymIdx,bool)>>,
} 
reg_field_for_struct!(Symbol {
        CUR_REG:Option<Register>,
    } with_fields fields);

// pub trait RegManager{
//     fn is_avail_reg(&mut self, reg: &Register) -> Result<bool>;
//     fn find_avail_reg_for_ty(&mut self, sym_ty:&Type, symtab:&mut SymTab) -> Result<Register>;
//     fn occupy_reg(&mut self,reg:Register, symidx:SymIdx, symtab:&mut SymTab ) -> Result<()>;
//     fn release_reg(&mut self,reg:Register, symtab:&mut SymTab ) -> Result<()>;
//     fn temp_occupy_reg(&mut self, temp_reg:Register, instr:&NhwcInstr) -> Result<Register>;
// }

impl RegTab{
    pub fn new() -> RegTab{
        let mut map = AHashMap::new();
        for idx in 0..8{
            map.insert(Register::new_a(idx), None);
        }
        for idx in 0..12{
            map.insert(Register::new_s(idx), None);
        }
        for idx in 0..8{
            map.insert(Register::new_fa(idx), None);
        }
        // fs 0-9 18-31
        for idx in 0..10{
            map.insert(Register::new_fs(idx), None);
        }
        for idx in 18..32{
            map.insert(Register::new_fs(idx), None);
        }
        Self { reg_symidx_map: map }
    }
    pub fn check_reg_avail(&mut self,reg:&Register) -> Result<bool> {
        if let Some((_reg,op_symidx)) = self.reg_symidx_map.get_key_value(&reg){
            match op_symidx{
                Some(_symidx) => {
                    Ok(false)
                },
                None => {
                    Ok(true)
                },
            }
        }else{
            Err(anyhow!("query illegal register {:?}",reg))
        }
    }
    /// occupy reg by a symidx 
    pub fn occupy_reg(&mut self, reg:Register, symidx:&SymIdx, symtab:&mut SymTab) -> Result<()>{
        if self.check_reg_avail(&reg)?{
            match self.reg_symidx_map.get_mut(&reg){
                Some(op_symidx) => {
                    symtab.get_mut_symbol(&symidx)?.add_cur_reg(Some(reg));
                    *op_symidx = Some((symidx.clone(),false));   
                    Ok(())
                },
                None =>{
                    panic!();
                },
            }
        }else{
            Err(anyhow!("reg {:?} has already been occupied by symidx {:?}",reg,symidx))
        }
    }
    /// find and then occpy the register by symidx 
    /// *require* 
    /// if is_temp==false the symidx must be in symtab
    ///  if is_temp==true the symidx can be any
    pub fn find_and_occupy_reg(&mut self, symidx:&SymIdx, sym_ty:&Type,symtab:&mut SymTab, is_temp:bool)-> Result<Register>{
        if is_temp{
            let reg = self.find_avail_reg_for_ty(sym_ty)?;
            self.temp_occupy_reg(reg.clone(), symidx)?;
            Ok(reg)
        }else{
            let reg = self.find_avail_reg_for_ty(sym_ty)?;
            self.occupy_reg(reg.clone(), symidx, symtab)?;
            Ok(reg)
        }
    }

    /// occupy a reg temporaily, you should provide the corresponding nhwc ir 
    pub fn temp_occupy_reg(&mut self, temp_reg:Register, symidx:&SymIdx) -> Result<()>{
        if self.check_reg_avail(&temp_reg)?{
            match self.reg_symidx_map.get_mut(&temp_reg){
                Some(op_symidx_is_temp) => {
                    *op_symidx_is_temp = Some((SymIdx::new(0, format!("-TempRegOf_{:?}",symidx)),true));
                    Ok(())
                },
                None =>{
                    panic!();
                },
            }
        }else{
            Err(anyhow!("reg {:?} has already been occupied by ",temp_reg))
        }
    }
    pub fn release_reg(&mut self, reg:Register, symtab:&mut SymTab) -> Result<()>{
        if self.check_reg_avail(&reg)?{
            Err(anyhow!("can't release an unoccpuied reg {:?}",reg))
        }else{
            let (symidx,is_temp) = self.reg_symidx_map.get(&reg).unwrap().as_ref().unwrap();
            if !*is_temp{
                *symtab.get_mut_symbol(symidx)?.get_mut_cur_reg()?  = None;
            }
            *self.reg_symidx_map.get_mut(&reg).unwrap() = None;
            Ok(())
        }
    }
    
    pub fn find_avail_reg_for_ty(&mut self, sym_ty:&Type) -> Result<Register> {
        // find tail in priority 
        // only use s register when meet i32 or ptr or i1
        if sym_ty.is_i_32() || sym_ty.is_i_1() || sym_ty.is_ptr_64(){
            for i in 1..12{
                if self.check_reg_avail(&Register::new_s(i))?{
                    return Ok(Register::new_s(i))
                }
            }
            return Err(anyhow!("no avail reg fo ty {:?}",sym_ty));
        }else if sym_ty.is_f_32(){
            for i in 0..10{
                if self.check_reg_avail(&Register::new_fs(i))?{
                    return Ok(Register::new_s(i))
                }
            }
            return Err(anyhow!("no avail reg fo ty {:?}",sym_ty));
        }else{
            return Err(anyhow!("reg type not supported {:?}",sym_ty));
        }
        // only use f register when meet f32
        
    }
}