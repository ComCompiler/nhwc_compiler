use std::any::Any;
use std::fmt::Debug;
use ahash::AHashMap;
use anyhow::*;
use derive_new::new;
use itertools::Itertools;
use strum_macros::EnumIs;
use crate::{debug_info_blue, toolkit::symtab::*};
use crate::toolkit::field::Field;

use crate::{debug_info_green, debug_info_red, make_field_trait_for_struct, reg_field_for_struct};

use super::rv64_instr::{REG_A_RANGE, REG_FA_RANGE, REG_FS_RANGE, REG_S_RANGE, REG_T_RANGE};
use super::symtab;
use super::{asm_struct::AsmSection, field::Type, nhwc_instr::NhwcInstr, rv64_instr::Register, symbol::Symbol, symtab::{SymIdx, SymTab}};

make_field_trait_for_struct!(RegTab);
/// only manage s & fs registers 
#[derive(Clone)]
pub struct RegTab {
    reg_symidx_map :AHashMap<Register, RegState>,
} 
reg_field_for_struct!(Symbol {
        CUR_REG:Option<Register>,
    } with_fields fields);

#[derive(new,Clone,EnumIs,Debug)]
pub enum RegState{
    /// Occupyied & Freed indicate whether the reg can be immediately released at any time
    Occupied{
        /// corresponding symidx 
        symidx:SymIdx,
        /// if a reg is temp then it will not be put into mem by store_f
        tracked:bool,
        occupy_count:u32,
    },Freed{
        symidx:SymIdx,
        tracked:bool,
    },Released
}
impl RegState{
    pub fn free_once(&mut self) -> Result<()>{
        match self{
            RegState::Occupied { symidx, tracked, occupy_count} if *occupy_count>1  => {
                *occupy_count-=1;
                Ok(())
            },
            RegState::Occupied { symidx, tracked, occupy_count} if *occupy_count==1  => {
                *self =  RegState::new_freed(symidx.clone(), *tracked);
                Ok(())
            },
            RegState::Freed { symidx, tracked: is_temp } => {
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
        for idx in REG_A_RANGE.clone(){
            map.insert(Register::new_a(idx), RegState::new_released());
        }
        // temp reg
        for idx in REG_T_RANGE.clone(){
            map.insert(Register::new_t(idx), RegState::new_released());
        }
        for idx in REG_S_RANGE.clone(){
            map.insert(Register::new_s(idx), RegState::new_released());
        }
        // fa 
        for idx in REG_FA_RANGE.clone(){
            map.insert(Register::new_fa(idx), RegState::new_released());
        }
        // fs 0-9 18-31
        for idx in REG_FS_RANGE.clone(){
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
    pub fn occupy_reg(&mut self, reg:Register, symidx:&SymIdx, symtab:&mut SymTab, asm_sect:&mut AsmSection,tracked:bool ) -> Result<()>{
        // if symidx.symbol_name == "ra_intpop"{
        //     return  Err(anyhow!("ra_int"));
        // }
        asm_sect.annotate(format!("occupy {:?} with {:?}",reg,symidx));
        debug_info_blue!("occupy reg {:?} with {:?}",reg,symidx);
        match self.reg_symidx_map.get_mut(&reg){
            Some(regstat) => {
                match regstat{
                    RegState::Released => {
                        if tracked{
                            symtab.get_mut(&symidx)?.add_cur_reg(Some(reg));
                        }
                        *regstat = RegState::new_occupied(symidx.clone(), tracked,1);   
                    },
                    RegState::Occupied { symidx: reg_symidx, tracked: reg_is_tracked, occupy_count } => {
                        if reg_symidx != symidx || *reg_is_tracked!= tracked{
                            return Err(anyhow!("you can't occupy {:?} by {symidx:?} is_temp:{tracked}",regstat))
                        }
                        *occupy_count+=1;
                    }
                    RegState::Freed { symidx: reg_symidx, tracked: reg_is_tracked } => {
                        if reg_symidx != symidx || *reg_is_tracked!= tracked{
                            return Err(anyhow!("you can't occupy {:?}",regstat))
                        }
                        *regstat = RegState::new_occupied(symidx.clone(), tracked,1);   
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
    pub fn find_and_anonymous_occupy(&mut self, symidx:&SymIdx, sym_ty:&Type,symtab:&mut SymTab, asm_sect:&mut AsmSection,  
        store_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>,
        load_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>,) -> Result<Register>{
        let reg = self.find_avail_reg_for_ty_and_try_release(sym_ty, symtab, asm_sect, store_f)?;
        self.occupy_reg(reg.clone(), &SymIdx::from_str(format!("_anonymous_of_{:?}",symidx).as_str()), symtab,asm_sect, false)?;
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
        store_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>,
        load_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>,
    )-> Result<Register>{
        // debug_info_green!("{:?}",symtab.get(&SymIdx { scope_node: 41, symbol_name: "get".to_string(), index_ssa: None })?);
        // judge wether it is temp
        let should_track = RegTab::symidx_should_track(symidx,&*symtab)?;
        if should_track && symtab.get(symidx)?.has_cur_reg() && symtab.get(symidx)?.get_cur_reg()?.is_some(){
            // when symidx is already in regtab
            let reg = symtab.get(symidx)?.get_cur_reg()?.clone().unwrap();
            debug_info_blue!("symidx {symidx:?} already in regtab with {reg:?}");
            self.occupy_reg(reg.clone(), symidx, symtab, asm_sect, should_track)?;
            Ok(reg)
        }else if !should_track && !symidx.is_literal(){
            // temp but not literal
            let reg = self.find_avail_reg_for_ty_and_try_release(sym_ty, symtab, asm_sect, store_f)?;
            self.occupy_reg(reg.clone(), symidx, symtab, asm_sect,should_track)?;
            load_f(symidx.clone(),reg.clone(),symtab, asm_sect, self)?;
            asm_sect.annotate(format!("occupy reg {:?} with {:?}",reg,symidx));
            Ok(reg)
        } else if !should_track && symidx.is_literal(){ 
            // is_literal 
            let mut op_literal_reg= None;
            for (reg,regstat) in self.reg_symidx_map.iter(){
                match regstat{
                    RegState::Freed { symidx: symidx_freed, tracked: reg_is_tracked } => {
                        if symidx_freed == symidx && *reg_is_tracked == should_track {
                            op_literal_reg = Some(reg.clone());
                            asm_sect.annotate(format!("found literal reg {:?} already exist with {:?}",op_literal_reg,symidx_freed));
                            break;
                        }
                    },
                    _ =>{}
                }
            };
            Ok(if let Some(reg) = op_literal_reg{
                self.try_release_reg(reg.clone(), symtab, asm_sect, store_f)?;
                self.occupy_reg(reg.clone(), symidx, symtab,asm_sect, should_track)?;
                reg
            }else {
                // if not found in regtab , than alloc a reg normally
                let reg = self.find_avail_reg_for_ty_and_try_release(sym_ty, symtab, asm_sect, store_f)?;
                self.occupy_reg(reg.clone(), symidx, symtab, asm_sect, should_track)?;
                load_f(symidx.clone(),reg.clone(),symtab, asm_sect, self)?;
                reg
            })
        }else{
            // has symbol in symtab but alloc temp 
            let reg = self.find_avail_reg_for_ty_and_try_release(sym_ty, symtab, asm_sect, store_f)?;
            self.occupy_reg(reg.clone(), symidx, symtab, asm_sect, should_track)?;
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
            RegState::Freed { symidx, tracked:false } => {
                true
            },
            _ => false,
        }
    }
    pub fn is_tracked_freed(&self, reg:&Register) -> bool{
        let r = self.reg_symidx_map.get(reg).unwrap();
        match r{
            RegState::Freed { symidx, tracked:true } => {
                true
            },
            _ => false,
        }
    }
    pub fn is_reg_tracked(&self, reg:&Register) -> bool{
        let r = self.reg_symidx_map.get(reg).unwrap();
        match r{
            RegState::Occupied { symidx, tracked, occupy_count } => {
                *tracked
            }
            RegState::Freed { symidx, tracked } => {
                *tracked
            },
            _ => false,
        }

    }
    // garantee the reg is immediately released
    pub fn try_release_reg(&mut self, reg:Register, symtab:&mut SymTab,asm_sect:&mut AsmSection, store_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>)-> Result<()>{
        if self.is_freed(&reg){
            self.release_reg(reg.clone(), symtab,asm_sect, store_f)?;
        };
        Ok(())
    }

    /// 1. will delete the reg info in symbol and 
    /// 2. drop the value in reg into mem
    /// 3. you can only release a freed reg
    pub fn release_reg(&mut self, reg:Register, symtab:&mut SymTab,asm_sect:&mut AsmSection, store_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>) -> Result<()>{
        debug_info_blue!("release {:?}",reg);
        let regstat = self.reg_symidx_map.get_mut(&reg).unwrap();
        match regstat{
            RegState::Freed { symidx, tracked} => {
                let tracked = *tracked;
                if tracked {
                    // take func will leave a None in place 
                    let reg = symtab.get_mut(symidx)?.get_mut_cur_reg()?.take().with_context(||format!("symbol {:?} must has cur_reg field Some(reg)",symidx))?;
                    let symidx = symidx.clone();
                    *regstat = RegState::new_released();
                    store_f(symidx.clone(),reg.clone(), symtab ,asm_sect, self)?;
                    // this will recursively try release reg until released 
                    self.try_release_reg(reg.clone(), symtab, asm_sect, store_f)?;
                    asm_sect.annotate(format!("release {:?} with {:?}",reg,symidx));
                    Ok(())
                }else{
                    *regstat = RegState::new_released();
                    Ok(())
                }
            },
            _ => {
                asm_sect.annotate(format!("you can't release reg {:?}",reg));
                Err(anyhow!("you can't release reg {:?}",reg))
            }
        }
    }
    pub fn try_release_symidx(&mut self, symidx:&SymIdx, symtab:&mut SymTab,asm_sect:&mut AsmSection, store_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>) -> Result<()>{
        if symtab.get(symidx)?.has_cur_reg(){
            match  symtab.get(symidx)?.get_cur_reg()?{
                Some(reg) => {
                    self.release_reg(reg.clone(), symtab, asm_sect, store_f)?;
                },
                None => {},
            }
        }
        Ok(())
    }

    pub fn free_reg(&mut self, reg:Register,asm_sect:&mut AsmSection) -> Result<()>{
        asm_sect.annotate(format!("free {:?}",reg));
        let regstat = self.reg_symidx_map.get_mut(&reg).unwrap();
        debug_info_blue!("free reg {:?} ",reg);
        regstat.free_once()
    }
    pub fn find_avail_reg_for_ty_and_try_release(&mut self, sym_ty:&Type, symtab:&mut SymTab,asm_sect:&mut AsmSection, store_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self)-> Result<()>) -> Result<Register>{
        let reg = self.find_avail_reg_for_ty(sym_ty)?;
        self.try_release_reg(reg.clone(), symtab, asm_sect, store_f)?;
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
            // - saved reg
            for i in REG_S_RANGE.clone(){ if self.is_released(&Register::new_s(i)){ return Ok(Register::new_s(i)) } }

            for i in REG_A_RANGE.clone() { if self.is_temp_freed(&Register::new_a(i)){ return Ok(Register::new_a(i)) } }
            for i in REG_S_RANGE.clone() { if self.is_temp_freed(&Register::new_s(i)){ return Ok(Register::new_s(i)) } }

            for i in REG_A_RANGE.clone(){ if self.is_freed(&Register::new_a(i)){ return Ok(Register::new_a(i)) } }
            for i in REG_S_RANGE.clone(){ if self.is_freed(&Register::new_s(i)){ return Ok(Register::new_s(i)) } }

            return Err(anyhow!("no avail(released or freed) reg fo ty {:?},{:?}",sym_ty,self));
        }else if sym_ty.is_f_32(){
            for i in REG_FA_RANGE.clone(){ if self.is_released(&Register::new_fa(i)){ return Ok(Register::new_fa(i)) } }
            for i in REG_FS_RANGE.clone(){ if self.is_released(&Register::new_fs(i)){ return Ok(Register::new_fs(i)) } }

            for i in REG_FA_RANGE.clone() { if self.is_temp_freed(&Register::new_fs(i)){ return Ok(Register::new_fa(i)) } } 
            for i in REG_FS_RANGE.clone() { if self.is_temp_freed(&Register::new_fs(i)){ return Ok(Register::new_fs(i)) } } 

            for i in REG_FA_RANGE.clone(){ if self.is_freed(&Register::new_fa(i)){ return Ok(Register::new_fa(i)) } }
            for i in REG_FS_RANGE.clone(){ if self.is_freed(&Register::new_fs(i)){ return Ok(Register::new_fs(i)) } }

            return Err(anyhow!("no avail(released or freed) reg fo ty {:?}",sym_ty));
        }else{
            return Err(anyhow!("reg type not supported {:?}",sym_ty));
        }
    }
    // after put the args into arg register, you should call this to inform regexp this info
    pub fn set_freed_reg(&mut self,reg:Register,symidx:&SymIdx,symtab:&mut SymTab) -> Result<()>{
        // debug_info_green!("set_freed_reg:{:?} symidx {:?}",reg, symidx);
        let should_track = RegTab::symidx_should_track(symidx, symtab)?;
        if should_track{
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
        *self.reg_symidx_map.get_mut(&reg).unwrap() = RegState::new_freed(symidx.clone(), should_track);
        Ok(())
    }
    /// recover the symtab's *cur_reg* field by the regtab 
    /// the reverse operation of reset
    pub fn apply(&self,symtab:&mut SymTab) -> Result<()>{
        debug_info_red!("apply regtab!");
        for (k,v) in self.reg_symidx_map.iter(){
            if self.is_reg_tracked(k){
                match v{
                    RegState::Occupied { symidx, tracked, occupy_count } => {
                        *symtab.get_mut(symidx)?.get_mut_cur_reg()? = Some(k.clone());
                    },
                    RegState::Freed { symidx, tracked } => {
                        *symtab.get_mut(symidx)?.get_mut_cur_reg()? = Some(k.clone());
                    },
                    RegState::Released => {
                        panic!()
                    },
                }
            }
        }
        Ok(())
    }
    /// set the regtab to target_regtab by exec load_f and store_f 
    /// release all freed reg in priority
    pub fn suit(&mut self,target_regtab:&RegTab,asm_sect:&mut AsmSection,symtab:&mut SymTab,
        store_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>,
        load_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>,
    )->Result<()>{ let mut reg_vec = self.reg_symidx_map.keys().cloned().collect_vec();
        // select all freed register that need to be suit and first release them 
        debug_info_blue!("before suit {:?}",self);
        debug_info_blue!("target suit {:?}",target_regtab);
        for reg in self.reg_symidx_map.keys().cloned().collect_vec(){
            let target_regstat = target_regtab.reg_symidx_map.get(&reg).unwrap();
            let regstat = self.reg_symidx_map.get(&reg).unwrap();
            match (regstat,target_regstat){
                (RegState::Freed { symidx:symidx1, tracked:tracked1 },RegState::Freed { symidx:symidx2, tracked:tracked2 }) => {
                    if symidx1 == symidx2{
                        // do nothing 
                    }else{
                        self.release_reg(reg.clone(), symtab, asm_sect, store_f)?;
                    }
                },
                (RegState::Freed { symidx, tracked },RegState::Released) => {
                    self.release_reg(reg.clone(), symtab, asm_sect, store_f)?;
                },
                _ => {}
            }
        }

        // and then release the second time and lock them 
        for reg in self.reg_symidx_map.keys().cloned().collect_vec(){
            let target_regstat = target_regtab.reg_symidx_map.get(&reg).unwrap();
            let regstat = self.reg_symidx_map.get(&reg).unwrap().clone();
            match (regstat,target_regstat){
                (RegState::Freed { symidx:symidx1, tracked:tracked1 },RegState::Freed { symidx:symidx2, tracked:tracked2 }) => {
                    if &symidx1 == symidx2{
                        // do nothing 
                    }else{
                        if tracked1{
                            assert!(symtab.get(&symidx1)?.get_cur_reg()?.is_some());
                            self.release_reg(reg.clone(), symtab, asm_sect, store_f)?;
                        };
                        if *tracked2{
                            let ty = symtab.get(&symidx2)?.get_type()?.clone();
                            // placeholder 
                            self.anonymous_load_into(reg.clone(), &symidx2, &ty, symtab, asm_sect, store_f, load_f)?;
                        }else {
                            return Err(anyhow!("target regtab should have no temp variable in suit"))
                        }
                    }
                },
                (RegState::Freed { symidx, tracked },RegState::Released) => {
                    if tracked {assert!(symtab.get(&symidx)?.get_cur_reg()?.is_some());}
                    self.release_reg(reg.clone(), symtab, asm_sect, store_f)?;
                    // placeholder 
                },
                (RegState::Released,RegState::Freed { symidx, tracked }) => {
                    if *tracked{
                        let ty = symtab.get(symidx)?.get_type()?.clone();
                        self.anonymous_load_into(reg.clone(), &symidx, &ty, symtab, asm_sect, store_f, load_f)?;
                    }else {
                        return Err(anyhow!("target regtab should have no temp variable in suit"))
                    }
                },
                (RegState::Released,RegState::Released) => {
                },
                _=> {
                    return Err(anyhow!("regtab can't suit because still has occupied register \nsrc:{:?} \ntarget:{:?} \n {:?}",self,target_regtab,reg))
                }
            }
        }
        *self = target_regtab.clone();
        Ok(())
    }
    pub fn forget_all_temp(&mut self, asm_sect:&mut AsmSection,symtab:&mut SymTab, 
        store_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>)-> Result<()>{
        let mut has_released_reg = false;
        for (reg,regstat) in self.reg_symidx_map.iter_mut(){
            if matches!(regstat,RegState::Freed { symidx, tracked:false }){
                *regstat =RegState::Released;
                if reg.is_arg()|| reg.is_saved(){
                    debug_info_red!("find released {:?} {:?}!!!",reg,regstat);
                    has_released_reg = true;
                }
            }
            if matches!(regstat,RegState::Released {}){
                if reg.is_arg()|| reg.is_saved(){
                    debug_info_red!("find released {:?} {:?}!!!",reg,regstat);
                    has_released_reg = true;
                }
            }
        }
        // if have no released reg in regtab, just release one to prepare for suit func
        if !has_released_reg{
            for (reg,regstat) in self.reg_symidx_map.iter(){
                if matches!(regstat,RegState::Freed { symidx, tracked:true }) && (reg.is_arg()|| reg.is_saved()){
                    debug_info_red!("release {:?} for processing conflict {:?}",reg,regstat);
                    self.release_reg(reg.clone(), symtab, asm_sect, store_f)?;
                    break;
                }
            }
        }
        debug_info_blue!("after forget_all_temp {:?}",self);
        Ok(())
    }
    /// reset the symtab's *cur_reg* field and drop it self 
    /// the reverse operation of apply
    pub fn reset(&mut self,symtab:&mut SymTab) -> Result<()>{
        debug_info_red!("reset regtab!");
        debug_info_red!("{:?}",self.reg_symidx_map);
        for (k,v) in self.reg_symidx_map.iter(){
            match v{
                RegState::Occupied { symidx, tracked:true, occupy_count } => {
                    *symtab.get_mut(symidx)?.get_mut_cur_reg()? = None;
                },
                RegState::Freed { symidx, tracked:true } => {
                    *symtab.get_mut(symidx)?.get_mut_cur_reg()? = None;
                },
                _ =>{}
            }
        }
        Ok(())
    }
    // load a symbol into specified register untracked
    pub fn load_into(&mut self,reg:Register,symidx:&SymIdx,sym_ty:&Type,symtab:&mut SymTab,asm_sect:&mut AsmSection,
        store_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>,
        load_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>
    ,) -> Result<Register>{
        match sym_ty{
            Type::F32 => {
                assert!(reg.is_fpu())
            },
            _ => {}
        }
        self.try_release_symidx(symidx, symtab, asm_sect, store_f)?;
        self.try_release_reg(reg.clone(), symtab, asm_sect, store_f)?;
        // self.try_release_reg(reg.clone(), symtab, asm_sect, store_reg_f)?;
        self.occupy_reg(reg.clone(), symidx, symtab, asm_sect, false)?;
        load_f(symidx.clone(),reg.clone(),symtab,asm_sect,self)?;
        Ok(reg)
    }
    pub fn anonymous_load_into(&mut self,reg:Register,symidx:&SymIdx,sym_ty:&Type,symtab:&mut SymTab,asm_sect:&mut AsmSection,
        store_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>,
        load_f:&mut impl FnMut(SymIdx,Register,&mut SymTab,&mut AsmSection,&mut Self) -> Result<()>
    ,) -> Result<Register>{
        match sym_ty{
            Type::F32 => {
                assert!(reg.is_fpu())
            },
            _ => {}
        }
        self.try_release_reg(reg.clone(), symtab, asm_sect, store_f)?;
        self.occupy_reg(reg.clone(), &SymIdx::from_str(format!("_anonymous_of_{:?}",symidx).as_str()), symtab, asm_sect, false)?;
        load_f(symidx.clone(),reg.clone(),symtab,asm_sect,self)?;
        Ok(reg)
    }
    /// forget the register, wipe all info about the register and make it released
    /// *warning* forget will not store te register back into mem
    pub fn forget(&mut self,reg:Register,symtab:&mut SymTab) -> Result<()>{
        debug_info_blue!("forget {:?}",reg);
        let regstat = self.reg_symidx_map.get_mut(&reg).unwrap();
        match regstat{
            RegState::Freed { symidx, tracked } => {
                if *tracked {
                    // take func will leave a None in place 
                    let reg = symtab.get_mut(symidx)?.get_mut_cur_reg()?.take().unwrap();
                    *regstat = RegState::new_released();
                    Ok(())
                }else{
                    *regstat = RegState::new_released();
                    Ok(())
                }
            },
            RegState::Occupied { symidx, tracked, occupy_count } => {
                if *tracked {
                    // take func will leave a None in place 
                    let reg = symtab.get_mut(symidx)?.get_mut_cur_reg()?.take().unwrap();
                    *regstat = RegState::new_released();
                    Ok(())
                }else{
                    *regstat = RegState::new_released();
                    Ok(())
                }
            }
            _ => {
                Err(anyhow!("you can't forget reg {:?}",reg))
            }
        }
    }
    /// check whether the symbol shoud be tracked
    pub fn symidx_should_track(symidx:&SymIdx,symtab:&SymTab) -> Result<bool>{
        let should_tracked = symtab.has_symbol(symidx) 
            && !symidx.is_literal()  // lieteral has no memory storage
            && !symidx.is_global_ptr()  // global ptr is a label in asm
            && !*symtab.get(symidx)?.get_is_global()?; // global variable should always be accessed by ptr 
        Ok(should_tracked)
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
impl Debug for RegTab{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let s:String = self.reg_symidx_map.iter().filter(|(r,s)|!s.is_released()).
            map(|(r,s)|format!("    {:?}:{:?} | ",r,s)).sorted().collect();
        write!(f,"{}",s)
    }
}