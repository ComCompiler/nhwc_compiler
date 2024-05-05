use core::panic;

use crate::toolkit::nhwc_instr::ArithOp::{Add , Sub, Mul, Div};
use anyhow::*;

use crate::{make_field_trait_for_struct, reg_field_for_struct};
use super::cfg_node::InstrList;
use super::field::Type::{I32, F32};

use super::{field::{Field, Value}, nhwc_instr::{ArithOp::*, InstrSlab, InstrType::*}, symbol::Symbol, symtab::{SymTab, SymTabEdge, SymTabGraph}};
make_field_trait_for_struct!(Value);
reg_field_for_struct!(Symbol{
    VALUE:Value,
    SIMULATOR_LABEL_POS:usize,
}with_fields fields);
pub struct Simulator{
    pub symtab:SymTab,
}
impl Simulator{
    pub fn execute(&mut self,instr:&InstrList,instr_slab:&InstrSlab) -> Result<()>{
        self.symtab = SymTab::new();
        // 先扫一遍,找到所有的lebel并存入symtab
        for (idx,&l) in instr.iter().enumerate(){
            let instr_struct = instr_slab.get_instr(l)?.clone();
            match &instr_struct.instr_type {
                Label { label_symidx } => {
                    let mut var_symbol = Symbol::new_from_symidx(&label_symidx);
                    var_symbol.add_simulator_label_pos(idx);
                    self.symtab.add_symbol(var_symbol)?;
                }
                _ => (),
            }
        }
        let mut current_pos: usize = 0;
        while current_pos < instr.len() {

            let instr_struct = instr_slab.get_instr(current_pos)?.clone();
            println!("{:?}",instr_struct);
            match &instr_struct.instr_type{
                Label { label_symidx: _ } => (),
                DefineFunc { func_symidx: _, ret_type: _, args: _ } => todo!(),
                DefineVar { var_symidx, vartype, value } => {
                    //add_symbol!({var_symidx.symbol_name} of scope {var_symidx.scope_node} with field )
                    // 我需要向symtab中加一个symbol的什么部分?

                    // (symbol_name,    可从symidx中获取    new()
                        // scope_node,  可从symidx中获取    new()
                        // field,       ?怎么获取?          add_field()?
                        // type,        vartype             add_type()?
                        // value)       value               ?
                    let mut var_symbol = Symbol::new_from_symidx(&var_symidx);
                    var_symbol.add_value(Value::from_string(&value.symbol_name, &vartype)?);
                    self.symtab.add_symbol(var_symbol)?;
                },
                Arith { lhs, rhs } => match rhs {
                    Add { a, b, vartype: _ } => {
                        let a_val=self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        let result = a_val.clone() + b_val.clone();
                        self.symtab.get_mut_symbol(lhs)?.add_value(result);
                    },
                    Mul { a, b, vartype: _ } => {
                        let a_val=self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        let result = a_val.clone() * b_val.clone();
                        self.symtab.get_mut_symbol(lhs)?.add_value(result);
                    },
                    Div { a, b, vartype: _ } => {
                        let a_val=self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        let result = a_val.clone() / b_val.clone();
                        self.symtab.get_mut_symbol(lhs)?.add_value(result);
                    },
                    Sub { a, b, vartype: _ } => {
                        let a_val=self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        let result = a_val.clone() - b_val.clone();
                        self.symtab.get_mut_symbol(lhs)?.add_value(result);
                    },
                    Mod { a, b, vartype: _ } => {
                        let a_val=self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        let result = a_val.clone() % b_val.clone();
                        self.symtab.get_mut_symbol(lhs)?.add_value(result);
                    },
                    Icmp { plan, a, b, vartype: _ } => {
                        let a_val=self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        match plan {
                            super::nhwc_instr::IcmpPlan::Eq => {
                                let result = Value::new_i1(a_val.clone() == b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::IcmpPlan::Ne => {
                                let result = Value::new_i1(a_val.clone() != b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            }
                            super::nhwc_instr::IcmpPlan::Ugt => {
                                let result = Value::new_i1(a_val.clone() > b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::IcmpPlan::Uge => {
                                let result = Value::new_i1(a_val.clone() >= b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::IcmpPlan::Ult => {
                                let result = Value::new_i1(a_val.clone() < b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::IcmpPlan::Ule => {
                                let result = Value::new_i1(a_val.clone() <= b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::IcmpPlan::Sgt => {
                                let result = Value::new_i1(a_val.clone() > b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::IcmpPlan::Sge =>{
                                let result = Value::new_i1(a_val.clone() >= b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::IcmpPlan::Slt => {
                                let result = Value::new_i1(a_val.clone() < b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::IcmpPlan::Sle => {
                                let result = Value::new_i1(a_val.clone() <= b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                        }
                    },
                    Ucmp { plan, a, b, vartype: _ } => {
                        let a_val=self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        match plan {
                            super::nhwc_instr::UcmpPlan::Oeq => {
                                let result = Value::new_i1(a_val.clone() == b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::UcmpPlan::One => {
                                let result = Value::new_i1(a_val.clone() != b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::UcmpPlan::Ogt => {
                                let result = Value::new_i1(a_val.clone() > b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::UcmpPlan::Oge => {
                                let result = Value::new_i1(a_val.clone() >= b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::UcmpPlan::Olt => {
                                let result = Value::new_i1(a_val.clone() < b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                            super::nhwc_instr::UcmpPlan::Ole => {
                                let result = Value::new_i1(a_val.clone() <= b_val.clone());
                                self.symtab.get_mut_symbol(lhs)?.add_value(result);
                            },
                        }
                    }
                    LogicAnd { a, b, vartype: _ } => {
                        let a_val = self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        let result = a_val.clone() & b_val.clone();
                        self.symtab.get_mut_symbol(lhs)?.add_value(result);
                    },
                    LogicOr { a, b, vartype: _ } => {
                        let a_val = self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        let result = a_val.clone() | b_val.clone();
                        self.symtab.get_mut_symbol(lhs)?.add_value(result);
                    },
                    LogicNot { a, vartype: _ } => {
                        let a_val = self.symtab.get_symbol(a)?.get_value()?;
                        let result = !a_val.clone();
                        self.symtab.get_mut_symbol(lhs)?.add_value(result);
                    },
                }
                SimpleAssign { lhs, rhs } => {
                    let rhs_val = self.symtab.get_symbol(rhs)?.get_value()?.clone();
                    self.symtab.get_mut_symbol(lhs)?.add_value(rhs_val);
                },
                Call { assigned: _, func_op: _ } => panic!("函数调用不处理"),
                Jump {  jump_op } => {
                    match jump_op {
                        super::nhwc_instr::JumpOp::Ret { ret_sym } => todo!(),

                        super::nhwc_instr::JumpOp::Br { cond, t1, t2 } => {
                            let cond_val = self.symtab.get_symbol(cond)?.get_value()?;
                            if cond_val.clone().to_specific_type(&I32)? == Value::new_i1(true){
                                current_pos = *self.symtab.get_mut_symbol(t1)?.get_simulator_label_pos()?;
                            } else {
                                current_pos = *self.symtab.get_mut_symbol(t2)?.get_simulator_label_pos()?;
                            }
                        },
                        super::nhwc_instr::JumpOp::Switch { cond, default, compared } => todo!(),
                        
                        super::nhwc_instr::JumpOp::DirectJump { label_symidx } => {
                            current_pos = *self.symtab.get_mut_symbol(label_symidx)?.get_simulator_label_pos()?;
                        },
                    }
                },
                Phi { lhs: _, rhs: _ } => panic!("Phi不处理"),
                TranType { lhs, op } => {
                    let _lhs_val = self.symtab.get_symbol(lhs)?.get_value()?;
                    let _result = match op {
                        super::nhwc_instr::Trans::Fptosi { float_symidx } => {
                            let float_val = self.symtab.get_symbol(float_symidx)?.get_value()?;
                            let result = float_val.clone().to_specific_type(&I32)?;
                            self.symtab.get_mut_symbol(lhs)?.add_value(result.clone());
                            result
                        },
                        super::nhwc_instr::Trans::Sitofp { int_symidx } => {
                            let int_val = self.symtab.get_symbol(int_symidx)?.get_value()?;
                            let result = int_val.clone().to_specific_type(&F32)?;
                            self.symtab.get_mut_symbol(lhs)?.add_value(result.clone());
                            result
                        },
                        super::nhwc_instr::Trans::Zext { bool_symidx } => {
                            let bool_val = self.symtab.get_symbol(bool_symidx)?.get_value()?;
                            let result = bool_val.clone().to_specific_type(&I32)?;
                            self.symtab.get_mut_symbol(lhs)?.add_value(result.clone());
                            result
                        },
                        super::nhwc_instr::Trans::Bitcast { rptr_symidx: _, rptr_type: _, lptr_type: _ } => {
                            panic!("bitcast不处理")
                        },
                    };
                },
            }
        current_pos += 1;
        }
        Ok(())
    }
        
}   
