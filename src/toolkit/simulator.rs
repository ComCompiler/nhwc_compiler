use core::panic;

use crate::toolkit::nhwc_instr::ArithOp::{Add , Sub, Mul, Div};
use anyhow::*;

use crate::{make_field_trait_for_struct, reg_field_for_struct};
use super::cfg_node::InstrList;
use super::field::Type::{I32, F32};

use super::symtab::SymIdx;
use super::{field::{Field, Value}, nhwc_instr::{ArithOp::*, InstrSlab, InstrType::*}, symbol::Symbol, symtab::{SymTab, SymTabEdge, SymTabGraph}};
make_field_trait_for_struct!(Value);
reg_field_for_struct!(Symbol{
    SIMU_VAL:Value,
    SIMU_LABEL_POS:usize,
}with_fields fields);
pub struct Simulator{
    // 自己创建的symtab
    pub simu_symtab:SymTab,
    // 从已有的symtab读取的,原本信息
    pub src_symtab:SymTab,
    pub current_pos: usize,
    pub instr_list:InstrList,
}
impl Simulator{
    // 输入从别处获得到的symtab , instr_list里是指令的序列
    pub fn new(src_s:SymTab,instr_l:InstrList) -> Self{
        Simulator{
            simu_symtab:SymTab::new(),
            src_symtab:src_s,
            current_pos:0,
            instr_list:instr_l,}
    }
    pub fn load(&mut self,instr_slab:&InstrSlab) -> Result<()>{
        let instr = &self.instr_list;
        // 先扫一遍,找到所有的lebel并存入symtab
        for (idx,&l) in instr.iter().enumerate(){
            let instr_struct = instr_slab.get_instr(l)?.clone();
            match &instr_struct.instr_type {
                Label { label_symidx } => {
                    let mut var_symbol = Symbol::new_from_symidx(label_symidx);
                    var_symbol.add_simu_label_pos(idx);
                    self.simu_symtab.add_symbol(var_symbol)?;
                }
                _ => (),
            }
        }
        Ok(())
    }
    pub fn exec_till_breakpoint(&mut self,instr_slab:&InstrSlab) -> Result<Option<SymIdx>>{
        let instr = &self.instr_list;
        // 运行完毕
        if self.current_pos >= instr.len() {
            return Ok(None);
        }
        while self.current_pos < instr.len() {

            let instr_struct = instr_slab.get_instr(self.current_pos)?.clone();
            println!("当前指令为: {:?}",instr_struct);
            match &instr_struct.instr_type{
                Label { label_symidx: _ } => (),
                DefineFunc { func_symidx: _, ret_symidx: _, args: _ } => todo!(),
                DefineVar { var_symidx, vartype, value } => {
                    //add_symbol!({var_symidx.symbol_name} of scope {var_symidx.scope_node} with field )
                    // 我需要向symtab中加一个symbol的什么部分?

                    // (symbol_name,    可从symidx中获取    new()
                        // scope_node,  可从symidx中获取    new()
                        // field,       ?怎么获取?          add_field()?
                        // type,        vartype             add_type()?
                        // value)       value               ?
                    let mut var_symbol = Symbol::new_from_symidx(&var_symidx);
                    var_symbol.add_simu_val(Value::from_string(&value.symbol_name, &vartype)?);
                    self.simu_symtab.add_symbol(var_symbol)?;
                },
                Arith { lhs, rhs } => match rhs {
                    Add { a, b, vartype: _ } => {
                        let a_val=self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                        let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                        let result = a_val.clone() + b_val.clone();
                        self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                    },
                    Mul { a, b, vartype: _ } => {
                        let a_val=self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                        let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                        let result = a_val.clone() * b_val.clone();
                        self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                    },
                    Div { a, b, vartype: _ } => {
                        let a_val=self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                        let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                        let result = a_val.clone() / b_val.clone();
                        self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                    },
                    Sub { a, b, vartype: _ } => {
                        let a_val=self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                        let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                        let result = a_val.clone() - b_val.clone();
                        self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                    },
                    Mod { a, b, vartype: _ } => {
                        let a_val=self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                        let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                        let result = a_val.clone() % b_val.clone();
                        self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                    },
                    Icmp { plan, a, b, vartype: _ } => {
                        let a_val=self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                        let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                        match plan {
                            super::nhwc_instr::IcmpPlan::Eq => {
                                let result = Value::new_i1(a_val.clone() == b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::IcmpPlan::Ne => {
                                let result = Value::new_i1(a_val.clone() != b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            }
                            super::nhwc_instr::IcmpPlan::Ugt => {
                                let result = Value::new_i1(a_val.clone() > b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::IcmpPlan::Uge => {
                                let result = Value::new_i1(a_val.clone() >= b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::IcmpPlan::Ult => {
                                let result = Value::new_i1(a_val.clone() < b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::IcmpPlan::Ule => {
                                let result = Value::new_i1(a_val.clone() <= b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::IcmpPlan::Sgt => {
                                let result = Value::new_i1(a_val.clone() > b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::IcmpPlan::Sge =>{
                                let result = Value::new_i1(a_val.clone() >= b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::IcmpPlan::Slt => {
                                let result = Value::new_i1(a_val.clone() < b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::IcmpPlan::Sle => {
                                let result = Value::new_i1(a_val.clone() <= b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                        }
                    },
                    Ucmp { plan, a, b, vartype: _ } => {
                        let a_val=self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                        let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                        match plan {
                            super::nhwc_instr::UcmpPlan::Oeq => {
                                let result = Value::new_i1(a_val.clone() == b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::UcmpPlan::One => {
                                let result = Value::new_i1(a_val.clone() != b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::UcmpPlan::Ogt => {
                                let result = Value::new_i1(a_val.clone() > b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::UcmpPlan::Oge => {
                                let result = Value::new_i1(a_val.clone() >= b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::UcmpPlan::Olt => {
                                let result = Value::new_i1(a_val.clone() < b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                            super::nhwc_instr::UcmpPlan::Ole => {
                                let result = Value::new_i1(a_val.clone() <= b_val.clone());
                                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                            },
                        }
                    }
                    LogicAnd { a, b, vartype: _ } => {
                        let a_val = self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                        let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                        let result = a_val.clone() & b_val.clone();
                        self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                    },
                    LogicOr { a, b, vartype: _ } => {
                        let a_val = self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                        let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                        let result = a_val.clone() | b_val.clone();
                        self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                    },
                    LogicNot { a, vartype: _ } => {
                        let a_val = self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                        let result = !a_val.clone();
                        self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                    },
                }
                SimpleAssign { lhs, rhs } => {
                    let rhs_val = self.simu_symtab.get_symbol(rhs)?.get_simu_val()?.clone();
                    self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(rhs_val);
                },
                Call { assigned: _, func_op: _ } => panic!("函数调用不处理"),
                Jump {  jump_op } => {
                    match jump_op {
                        super::nhwc_instr::JumpOp::Ret { ret_sym } => todo!(),

                        super::nhwc_instr::JumpOp::Br { cond, t1, t2 } => {
                            let cond_val = self.simu_symtab.get_symbol(cond)?.get_simu_val()?;
                            if cond_val.clone().to_specific_type(&I32)? == Value::new_i1(true){
                                self.current_pos = *self.simu_symtab.get_mut_symbol(t1)?.get_simu_label_pos()?;
                            } else {
                                self.current_pos = *self.simu_symtab.get_mut_symbol(t2)?.get_simu_label_pos()?;
                            }
                        },
                        super::nhwc_instr::JumpOp::Switch { cond, default, compared } => todo!(),
                        
                        super::nhwc_instr::JumpOp::DirectJump { label_symidx } => {
                            self.current_pos = *self.simu_symtab.get_mut_symbol(label_symidx)?.get_simu_label_pos()?;
                        },
                    }
                },
                Phi { lhs: _, rhs: _ } => panic!("Phi不处理"),
                TranType { lhs, op } => {
                    let _lhs_val = self.simu_symtab.get_symbol(lhs)?.get_simu_val()?;
                    let _result = match op {
                        super::nhwc_instr::Trans::Fptosi { float_symidx } => {
                            let float_val = self.simu_symtab.get_symbol(float_symidx)?.get_simu_val()?;
                            let result = float_val.clone().to_specific_type(&I32)?;
                            self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result.clone());
                            result
                        },
                        super::nhwc_instr::Trans::Sitofp { int_symidx } => {
                            let int_val = self.simu_symtab.get_symbol(int_symidx)?.get_simu_val()?;
                            let result = int_val.clone().to_specific_type(&F32)?;
                            self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result.clone());
                            result
                        },
                        super::nhwc_instr::Trans::Zext { bool_symidx } => {
                            let bool_val = self.simu_symtab.get_symbol(bool_symidx)?.get_simu_val()?;
                            let result = bool_val.clone().to_specific_type(&I32)?;
                            self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result.clone());
                            result
                        },
                        super::nhwc_instr::Trans::Bitcast { rptr_symidx: _, rptr_type: _, lptr_type: _ } => {
                            panic!("bitcast不处理")
                        },
                    };
                },
                BreakPoint { breakpoint_symidx  } => {
                    // 由于breakpoint会直接return,需要提前改变current_pos
                    self.current_pos+=1;
                    return Ok(Some(breakpoint_symidx.clone()))
                }
            }
        self.current_pos += 1;
        }
        println!("current_pos: {:?}",self.current_pos);
        // 运行完毕
        Ok(None)
    }
}   
