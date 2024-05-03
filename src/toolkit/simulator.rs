use std::fmt::Pointer;

use anyhow::{anyhow, Result};
use eval::eval;
use crate::{make_field_trait_for_struct, make_specialized_get_field_fn_for_struct, reg_field_name};

use super::{field::Field,symtab::{SymTabGraph,SymTabEdge},nhwc_instr::{InstrSlab, Instruction,ArithOp::*,InstrType::*}, symbol::Symbol, symtab::SymTab};
reg_field_name!(VALUE:value);
make_specialized_get_field_fn_for_struct!(Symbol{
    VALUE:String,
}with fields fields);
make_field_trait_for_struct!(String);
pub struct Simulator{
    symtab:SymTab,
}
impl Simulator{
    pub fn execute(&mut self,instr:Vec<usize>,instr_slab:&InstrSlab) -> Result<()>{
        self.symtab = SymTab::new();
        for i in instr{
            match instr_slab.get_instr(i).cloned(){
                Ok(ins) => match ins.instr_type{
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
                        let mut var = Symbol::new(var_symidx.scope_node, var_symidx.symbol_name);
                        // ?没看懂源码  
                        var.add_field(stringify!(vartype), Box::new(value));
                        self.symtab.add_symbol(var);
                    },
                    Arith { lhs, rhs } => match rhs {
                        Add { a, b, vartype } => {
                            // 获取a和b的值(a,b可能为变量名,或者常数)
                            
                            let mut a_str = String::new();
                            let mut b_str = String::new();
                            // 把 a 强制转化成 i32
                            if a.symbol_name.chars().next().unwrap_or(' ').is_numeric() {
                                a_str = a.symbol_name;
                            } else {a_str = self.symtab.get_symbol(&a)?.get_value_string()?;}
                            // 把 b 强制转化成 i32
                            if b.symbol_name.chars().next().unwrap_or(' ').is_numeric() { 
                                b_str = b.symbol_name;
                            } else {b_str = self.symtab.get_symbol(&b)?.get_value_string()?;}
                            // 运算
                            let expression = format!("{}+{}", a_str, b_str);
                            let res = eval(&expression)?;
                            // eval::eval(expr);
                            let sym = Symbol::new(0, expression);
                            sym.add_field(stringify!(vartype), res);
                            self.symtab.add_symbol(sym);

                            let lhs_sym = Symbol::new(0, lhs.symbol_name);
                            lhs_sym.add_field(stringify!(vartype), res);
                            self.symtab.add_symbol(lhs_sym);
                        },
                        Mul { a, b, vartype } => {
                            todo!()
                        },
                        Div { a, b, vartype } => {
                            todo!()
                        },
                        Sub { a, b, vartype } => {
                            todo!()
                        },
                        Mod { a, b, vartype } => {
                            todo!()
                        },
                        Icmp { plan, a, b, vartype } => {
                            // 获取a和b的值(a,b可能为变量名,或者常数)
                            let mut res=0;
                            let mut a_val = 0;
                            let mut b_val = 0;
                            // 把 a 强制转化成 i32
                            if a.symbol_name.chars().next().unwrap_or(' ').is_numeric() {
                                a_val = a.symbol_name;
                            } else {a_val = self.symtab.get_symbol(a.symbol_name).unwrap().get_field(stringify!(vartype)).unwrap().get_value().unwrap();}
                            // 把 b 强制转化成 i32
                            if b.symbol_name.chars().next().unwrap_or(' ').is_numeric() { 
                                b_val = b.symbol_name.parse::<i32>().unwrap();
                            }else {b_val = self.symtab.get_symbol(b.symbol_name).unwrap().get_field(stringify!(vartype)).unwrap().get_value().unwrap();}
                            // 运算
                            res = a_val+b_val;
                            let sym = Symbol::new(0, "Add".to_owned());
                            sym.add_field(stringify!(vartype), res);
                            self.symtab.add_symbol(sym);
                        },
                        Ucmp { plan, a, b, vartype } => todo!(),
                        LogicAnd { a, b, vartype } => todo!(),
                        LogicOr { a, b, vartype } => todo!(),
                        LogicNot { a, vartype } => todo!(),
                        
                    }
                    SimpleAssign { lhs, rhs } => todo!(),
                    Call { assigned, func_op } => todo!(),
                    Jump { op } => todo!(),
                    Phi { lhs, rhs } => todo!(),
                    TranType { lhs, op } => todo!(),
                }
                Err(_) => todo!(),
            }
         
        }
        Ok(())
    }   
}
