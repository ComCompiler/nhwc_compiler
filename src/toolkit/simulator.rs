use std::{fmt::Pointer};
use crate::toolkit::nhwc_instr::ArithOp::{Add , Sub, Mul, Div};
use anyhow::*;
use eval::eval;
use crate::{make_field_trait_for_struct, reg_field_for_struct};

use super::{field::{Field, Value}, nhwc_instr::{ArithOp::*, InstrSlab, InstrType::*, Instruction}, symbol::Symbol, symtab::{SymTab, SymTabEdge, SymTabGraph}};
make_field_trait_for_struct!(Value);
reg_field_for_struct!(Symbol{
    VALUE:Value,
}with_fields fields);
pub struct Simulator{
    symtab:SymTab,
}
impl Simulator{
    pub fn execute(&mut self,instr:Vec<usize>,instr_slab:&InstrSlab) -> Result<()>{
        self.symtab = SymTab::new();
        for i in instr{
            let instr_struct = instr_slab.get_instr(i)?.clone();
            match &instr_struct.instr_type{
                Label { label_symidx } => todo!(),
                DefineFunc { func_symidx, ret_type, args } => todo!(),
                DefineVar { var_symidx, vartype, value } => {
                    //add_symbol!({var_symidx.symbol_name} of scope {var_symidx.scope_node} with field )
                    // 我需要向symtab中加一个symbol的什么部分?

                    // (symbol_name,    可从symidx中获取    new()
                        // scope_node,  可从symidx中获取    new()
                        // field,       ?怎么获取?          add_field()?
                        // type,        vartype             add_type()?
                        // value)       value               ?
                    let mut var_symbol = Symbol::new_from_symidx(&var_symidx);
                    var_symbol.add_value(Value::from_string(&var_symidx.symbol_name, &vartype)?);
                    self.symtab.add_symbol(var_symbol);
                },
                Arith { lhs, rhs } => match rhs {
                    Add { a, b, vartype } => {
                        let a_val=self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        let result = a_val.clone() + b_val.clone();
                        self.symtab.get_mut_symbol(lhs)?.add_value(result);
                    },
                    Mul { a, b, vartype } => {
                        let a_val=self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        let result = a_val.clone() * b_val.clone();
                        self.symtab.get_mut_symbol(lhs)?.add_value(result);
                    },
                    Div { a, b, vartype } => {
                        let a_val=self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        let result = a_val.clone() / b_val.clone();
                        self.symtab.get_mut_symbol(lhs)?.add_value(result);
                    },
                    Sub { a, b, vartype } => {
                        let a_val=self.symtab.get_symbol(a)?.get_value()?;
                        let b_val = self.symtab.get_symbol(b)?.get_value()?;
                        let result = a_val.clone() - b_val.clone();
                        self.symtab.get_mut_symbol(lhs)?.add_value(result);
                    },
                    Mod { a, b, vartype } => {
                        todo!()
                    },
                    Icmp { plan, a, b, vartype } => {
                        // 获取a和b的值(a,b可能为变量名,或者常数)
                        todo!()
                    },
                    Ucmp { plan, a, b, vartype } => todo!(),
                    LogicAnd { a, b, vartype } => todo!(),
                    LogicOr { a, b, vartype } => todo!(),
                    LogicNot { a, vartype } => todo!(),
                    
                }
                SimpleAssign { lhs, rhs } => todo!(),
                Call { assigned, func_op } => todo!(),
                Jump {  jump_op } => todo!(),
                Phi { lhs, rhs } => todo!(),
                TranType { lhs, op } => todo!(),
            }
        }
        Ok(())
    }
        
}   
