
use ahash::AHashMap;
use anyhow::*;
use derive_new::new;
use strum_macros::EnumIs;
use crate::passes::symtab_debug_pass;
use crate::{debug_info_blue, toolkit::symtab::*};

use crate::{debug_info_green, reg_field_for_struct};

use super::rv64_instr::{REG_A_RANGE, REG_FA_RANGE, REG_FS_RANGE, REG_S_RANGE};
use super::{asm_struct::AsmSection, field::Type, nhwc_instr::NhwcInstr, rv64_instr::Register, symbol::Symbol, symtab::{SymIdx, SymTab}};

/// only manage s & fs registers 
pub struct RegTab {
    reg_symidx_map :AHashMap<Register, RegState>,
} 
reg_field_for_struct!(Symbol {
        CUR_REG:Option<Register>,
    } with_fields fields);

#[derive(new,EnumIs,Debug)]
pub enum RegState{
    /// Occupyied & Freed indicate whether the reg can be immediately released at any time
    Occupied{
        /// corresponding symidx 
        symidx:SymIdx,
        /// if a reg is temp then it will not be put into mem by store_f
        is_temp:bool,
        occupy_count:u32,
    },Freed{
        symidx:SymIdx,
        is_temp:bool,
    },Released
}
impl RegState{
    pub fn free_once(&mut self) -> Result<()>{
        match self{
            RegState::Occupied { symidx, is_temp, occupy_count} if *occupy_count>1  => {
                *occupy_count-=1;
                Ok(())
            },
            RegState::Occupied { symidx, is_temp, occupy_count} if *occupy_count==1  => {
                *self =  RegState::new_freed(symidx.clone(), *is_temp);
                Ok(())
            },
            RegState::Freed { symidx, is_temp } => {
                Err(anyhow!("you can't free a freed reg {:?}",self))
            },
            RegState::Released => {
                Err(anyhow!("you can't free a released reg {:?}",self))
            },
            _ => {
                panic!()
            }
        }
    }
}
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
            map.insert(Register::new_a(idx), RegState::new_released());
        }
        // temp reg
        for idx in 0..7{
            map.insert(Register::new_t(idx), RegState::new_released());
        }
        for idx in 1..12{
            map.insert(Register::new_s(idx), RegState::new_released());
        }
        // fa 
        for idx in 0..8{
            map.insert(Register::new_fa(idx), RegState::new_released());
        }
        // fs 0-9 18-31
        for idx in 0..16{
            map.insert(Register::new_fs(idx), RegState::new_released());
        }
        Self { reg_symidx_map: map }
    }
    // pub fn check_reg_releasable(&mut self,reg:&Register) -> Result<bool> {
    //     if let Some(regstate) = self.reg_symidx_map.get(&reg){
    //         match regstate{
    //             RegState::Occupied { symidx, is_temp } => Ok(false),
    //             RegState::Freed { symidx, is_temp } => Ok(false),
    //             RegState::Released => {
    //                 Ok(true)
    //             },
    //         }
    //     }else{
    //         Err(anyhow!("query illegal register {:?}",reg))
    //     }
    // }
    /// occupy reg by a symidx non-temp you can only occupy a released reg 
    /// you should release freed reg before occupy it
    pub fn occupy_reg(&mut self, reg:Register, symidx:&SymIdx, symtab:&mut SymTab, is_temp:bool ) -> Result<()>{
        // if symidx.symbol_name == "ra_intpop"{
        //     return  Err(anyhow!("ra_int"));
        // }
        debug_info_blue!("occupy reg {:?} with {:?}",reg,symidx);
        match self.reg_symidx_map.get_mut(&reg){
            Some(regstat) => {
                match regstat{
                    RegState::Released => {
                        if !is_temp{
                            symtab.get_mut(&symidx)?.add_cur_reg(Some(reg));
                        }
                        *regstat = RegState::new_occupied(symidx.clone(), is_temp,1);   
                    },
                    RegState::Occupied { symidx: reg_symidx, is_temp: reg_is_temp, occupy_count } => {
                        if reg_symidx != symidx || *reg_is_temp!= is_temp{
                            return Err(anyhow!("you can't occupy {:?} by {symidx:?} is_temp:{is_temp}",regstat))
                        }
                        *occupy_count+=1;
                    }
                    RegState::Freed { symidx: reg_symidx, is_temp: reg_is_temp } => {
                        if reg_symidx != symidx || *reg_is_temp!= is_temp{
                            return Err(anyhow!("you can't occupy {:?}",regstat))
                        }
                        *regstat = RegState::new_occupied(symidx.clone(), is_temp,1);   
                    }
                    _ => return Err(anyhow!("you can't occupy {:?}",regstat)),
                }
                Ok(())
            },
            None =>{
                panic!();
            },
        }
    }
    /// occupy a anonymous reg
    pub fn anonymous_occupy(&mut self, symidx:&SymIdx, sym_ty:&Type,symtab:&mut SymTab, asm_sect:&mut AsmSection,  
        store_f:impl FnOnce(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>,
        load_f:impl FnOnce(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>,) -> Result<Register>{
        let reg = self.find_avail_reg_for_ty_and_try_release(sym_ty, symtab, asm_sect, store_f)?;
        self.occupy_reg(reg.clone(), &SymIdx::from_str(format!("_anonymous_of_{:?}",symidx).as_str()), symtab, true)?;
        load_f(symidx.clone(),reg.clone(),symtab,asm_sect,self)?;
        Ok(reg)
    }
    /// find and then occpy the register by symidx 
    /// *require* 
    /// if is_temp==false the symidx must be in symtab
    ///  if is_temp==true the symidx can be any
    /// ret err if no reg avail 
    /// you should provide a closure to store the value into memory because 
    /// *store_f* 
    /// when get Freed register, store_f is called to drop the value in register to mem
    /// *load_f*
    /// if symidx's value is not in reg, it will run load_f to load it, the load_f is exec after the reg occupied
    /// *Mention*
    /// literal symidx must be temp 
    pub fn find_and_occupy_reg(&mut self, symidx:&SymIdx, sym_ty:&Type,symtab:&mut SymTab, asm_sect:&mut AsmSection,  
        store_f:impl FnOnce(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>,
        load_f:impl FnOnce(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>,
    )-> Result<Register>{
        // debug_info_green!("{:?}",symtab.get(&SymIdx { scope_node: 41, symbol_name: "get".to_string(), index_ssa: None })?);
        // judge wether it is temp
        let is_temp = !(symtab.has_symbol(symidx) && !symidx.is_literal() && !symidx.is_global_ptr() && 
            !*symtab.get(symidx)?.get_is_global()?);

        if !is_temp && symtab.get(symidx)?.has_cur_reg() && symtab.get(symidx)?.get_cur_reg()?.is_some(){
            // when symidx is already in regtab
            let reg = symtab.get(symidx)?.get_cur_reg()?.clone().unwrap();
            debug_info_blue!("symidx {symidx:?} already in regtab with {reg:?}");
            self.occupy_reg(reg.clone(), symidx, symtab, is_temp)?;
            Ok(reg)
        }else if is_temp && !symidx.is_literal(){
            // temp but not literal
            let reg = self.find_avail_reg_for_ty_and_try_release(sym_ty, symtab, asm_sect, store_f)?;
            self.occupy_reg(reg.clone(), symidx, symtab, is_temp)?;
            load_f(symidx.clone(),reg.clone(),symtab, asm_sect, self)?;

            asm_sect.annotation(format!("occupy reg {:?} with {:?}",reg,symidx));
            Ok(reg)
        } else if is_temp && symidx.is_literal(){ 
            // is_literal 
            let mut op_literal_reg= None;
            for (reg,regstat) in self.reg_symidx_map.iter(){
                match regstat{
                    RegState::Freed { symidx: symidx_freed, is_temp: reg_is_temp } => {
                        if symidx_freed == symidx && *reg_is_temp == is_temp {
                            op_literal_reg = Some(reg.clone());
                            asm_sect.annotation(format!("found literal reg {:?} already exist with {:?}",op_literal_reg,symidx_freed));
                            break;
                        }
                    },
                    _ =>{}
                }
            };
            Ok(if let Some(reg) = op_literal_reg{
                self.try_release(reg.clone(), symtab, asm_sect, store_f)?;
                self.occupy_reg(reg.clone(), symidx, symtab, is_temp)?;
                reg
            }else {
                // if not found in regtab , than alloc a reg normally
                let reg = self.find_avail_reg_for_ty_and_try_release(sym_ty, symtab, asm_sect, store_f)?;
                self.occupy_reg(reg.clone(), symidx, symtab, is_temp)?;
                load_f(symidx.clone(),reg.clone(),symtab, asm_sect, self)?;
                reg
            })
        }else{
            // has symbol in symtab but alloc temp 
            let reg = self.find_avail_reg_for_ty_and_try_release(sym_ty, symtab, asm_sect, store_f)?;
            self.occupy_reg(reg.clone(), symidx, symtab, is_temp)?;
            load_f(symidx.clone(),reg.clone(),symtab, asm_sect, self)?;
            Ok(reg)
        }
    }
    pub fn is_released(&self, reg:&Register) -> bool{
        self.reg_symidx_map.get(reg).unwrap().is_released()
    }
    pub fn is_freed(&self, reg:&Register) -> bool{
        self.reg_symidx_map.get(reg).unwrap().is_freed()
    }
    pub fn is_temp_freed(&self, reg:&Register) -> bool{
        let r = self.reg_symidx_map.get(reg).unwrap();
        match r{
            RegState::Freed { symidx, is_temp:true } => {
                true
            },
            _ => false,
        }
    }
    pub fn is_temp(&self, reg:&Register) -> bool{
        let r = self.reg_symidx_map.get(reg).unwrap();
        match r{
            RegState::Occupied { symidx, is_temp, occupy_count } => {
                *is_temp
            }
            RegState::Freed { symidx, is_temp } => {
                *is_temp
            },
            _ => false,
        }

    }
    pub fn try_release(&mut self, reg:Register, symtab:&mut SymTab,asm_sect:&mut AsmSection, store_f:impl FnOnce(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>)-> Result<()>{
        if self.is_freed(&reg){
            self.release_reg(reg.clone(), symtab,asm_sect, store_f)?;
        };
        Ok(())
    }

    /// 1. will delete the reg info in symbol and 
    /// 2. drop the value in reg into mem
    /// 3. you can only release a freed reg
    pub fn release_reg(&mut self, reg:Register, symtab:&mut SymTab,asm_sect:&mut AsmSection, store_f:impl FnOnce(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>) -> Result<()>{
        debug_info_blue!("release {:?}",reg);
        if self.is_released(&reg){
           Err(anyhow!("you can't release reg {:?}",reg))
        }else{
            let regstat = self.reg_symidx_map.get_mut(&reg).unwrap();
            match regstat{
                RegState::Freed { symidx, is_temp } => {
                    if !*is_temp {
                        // take func will leave a None in place 
                        let reg = symtab.get_mut(symidx)?.get_mut_cur_reg()?.take().unwrap();
                        let symidx = symidx.clone();
                        *regstat = RegState::new_released();
                        store_f(symidx,reg, symtab ,asm_sect, self)?;
                        Ok(())
                    }else{
                        *regstat = RegState::new_released();
                        Ok(())
                    }
                },
                _ => {
                    asm_sect.annotation(format!("you can't release reg {:?}",reg));
                    Err(anyhow!("you can't release reg {:?}",reg))
                }
            }
        }
    }

    pub fn free_reg(&mut self, reg:Register) -> Result<()>{
        let regstat = self.reg_symidx_map.get_mut(&reg).unwrap();
        debug_info_blue!("free reg {:?} ",reg);
        regstat.free_once()
    }
    pub fn find_avail_reg_for_ty_and_try_release(&mut self, sym_ty:&Type, symtab:&mut SymTab,asm_sect:&mut AsmSection, store_f:impl FnOnce(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self)-> Result<()>) -> Result<Register>{
        let reg = self.find_avail_reg_for_ty(sym_ty)?;
        self.try_release(reg.clone(), symtab, asm_sect, store_f)?;
        Ok(reg)
    }
    /// ret a Released register or Freed register of sym_ty
    pub fn find_avail_reg_for_ty(&mut self, sym_ty:&Type) -> Result<Register> {
        // find tail in priority 
        // only use s register when meet i32 or ptr or i1
        let sym_ty = sym_ty.get_ele_ty();
        if sym_ty.is_i_32() || sym_ty.is_i_1() || sym_ty.is_ptr_64(){
            // alloc priority:
            // 1. released reg
            // 2. temp freed reg
            // 3. other freed reg

            // - arg reg
            for i in REG_A_RANGE.clone(){ if self.is_released(&Register::new_a(i)){ return Ok(Register::new_a(i)) } }
            for i in REG_A_RANGE.clone() { if self.is_temp_freed(&Register::new_a(i)){ return Ok(Register::new_a(i)) } }
            for i in REG_A_RANGE.clone(){ if self.is_freed(&Register::new_a(i)){ return Ok(Register::new_a(i)) } }

            // - saved reg
            for i in REG_S_RANGE.clone(){ if self.is_released(&Register::new_s(i)){ return Ok(Register::new_s(i)) } }
            for i in REG_S_RANGE.clone() { if self.is_temp_freed(&Register::new_s(i)){ return Ok(Register::new_s(i)) } }
            for i in REG_S_RANGE.clone(){ if self.is_freed(&Register::new_s(i)){ return Ok(Register::new_s(i)) } }

            return Err(anyhow!("no avail(released or freed) reg fo ty {:?}",sym_ty));
        }else if sym_ty.is_f_32(){
            for i in REG_FA_RANGE.clone(){ if self.is_released(&Register::new_fa(i)){ return Ok(Register::new_fa(i)) } }
            for i in REG_FA_RANGE.clone() { if self.is_temp_freed(&Register::new_fs(i)){ return Ok(Register::new_fa(i)) } } 
            for i in REG_FA_RANGE.clone(){ if self.is_freed(&Register::new_fa(i)){ return Ok(Register::new_fa(i)) } }

            for i in REG_FS_RANGE.clone(){ if self.is_released(&Register::new_fs(i)){ return Ok(Register::new_fs(i)) } }
            for i in REG_FS_RANGE.clone() { if self.is_temp_freed(&Register::new_fs(i)){ return Ok(Register::new_fs(i)) } } 
            for i in REG_FS_RANGE.clone(){ if self.is_freed(&Register::new_fs(i)){ return Ok(Register::new_fs(i)) } }

            return Err(anyhow!("no avail(released or freed) reg fo ty {:?}",sym_ty));
        }else{
            return Err(anyhow!("reg type not supported {:?}",sym_ty));
        }
    }
    // after put the args into arg register, you should call this to inform regexp this info
    pub fn set_freed_reg(&mut self,reg:Register,symidx:&SymIdx,symtab:&mut SymTab) -> Result<()>{
        debug_info_green!("set_freed_reg:{:?} symidx {:?}",reg, symidx);
        let is_temp = !(symtab.has_symbol(symidx) && !symidx.is_literal() && !symidx.is_global_ptr() && 
            !*symtab.get(symidx)?.get_is_global()?);
        if !is_temp{
            if symtab.get(symidx)?.has_cur_reg(){
                let queryed_reg = symtab.get_mut(symidx)?.get_mut_cur_reg()?;
                if queryed_reg.is_some(){
                    return  Err(anyhow!("you didn't release reg before set_freed_reg {:?} with {:?}",reg,symidx));
                }else{
                    *queryed_reg= Some(reg.clone());
                }
            }else {
                symtab.get_mut(symidx)?.add_cur_reg(Some(reg.clone()))
            }
        }
        *self.reg_symidx_map.get_mut(&reg).unwrap() = RegState::new_freed(symidx.clone(), is_temp);
        Ok(())
    }
    pub fn reset(&mut self,symtab:&mut SymTab) -> Result<()>{
        for (k,v) in self.reg_symidx_map.iter(){
            if !self.is_temp(k){
                match v{
                    RegState::Occupied { symidx, is_temp, occupy_count } => {
                        *symtab.get_mut(symidx)?.get_mut_cur_reg()? = None;
                    },
                    RegState::Freed { symidx, is_temp } => {
                        *symtab.get_mut(symidx)?.get_mut_cur_reg()? = None;
                    },
                    RegState::Released => {

                    },
                }
            }
        }
        Ok(())
    }
}
impl SymTab{
    /// when symtab has no symidx than err
    pub fn reg_of_symidx(&self,symidx:&SymIdx)->Result<Option<Register>>{
        if self.get(&symidx)?.has_cur_reg() {
            if let Some(reg) = self.get(&symidx)?.get_cur_reg()?.clone(){
                Ok(Some(reg))
            }else {
                Ok(None)
            }
        }else{
            Ok(None)
        }
    }

}