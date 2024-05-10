use core::panic;

use crate::toolkit::nhwc_instr::ArithOp::{Add , Sub, Mul, Div};
use crate::toolkit::symtab;
use std::fmt::Debug;
use anyhow::*;

use crate::{add_symbol, debug_info_yellow, make_field_trait_for_struct, reg_field_for_struct};
use super::cfg_node::InstrList;
use super::field::Type::{self, F32, I32};

use super::nhwc_instr::Instruction;
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
    pub cur_instr_pos: usize,
    pub instr_list:InstrList,
    pub func_call_ctx_stack:Vec<FuncCallCtx>,
    pub text:String,
}
pub struct FuncCallCtx{
    func_symidx:SymIdx,   
    args:Vec<Value>,
    ctx_symidx_value_tuple_vec:Vec<(SymIdx,Value)>,
    formal_ret_symidx:SymIdx,
    instr_pos_before_call:usize,
    op_assigned_symidx:Option<SymIdx>,
}
impl FuncCallCtx{
    // new 函数
    pub fn new(func_symidx:SymIdx, ret_symidx:SymIdx,args:Vec<Value>,ctx_symidx_value_tuple_vec:Vec<(SymIdx,Value)>, instr_pos_before_call:usize, op_assigned_symidx:Option<SymIdx>) -> Self{
        FuncCallCtx{
            func_symidx,
            ctx_symidx_value_tuple_vec,
            instr_pos_before_call,
            formal_ret_symidx: ret_symidx,
            op_assigned_symidx,
            args,
        }
    }
    // pub fn new(func_symidx:SymIdx, ){

    // }
}
impl Simulator{
    // 输入从别处获得到的symtab , instr_list里是指令的序列
    pub fn new(instr_l:InstrList) -> Self{
        Simulator{
            simu_symtab:SymTab::new(),
            cur_instr_pos:0,
            instr_list:instr_l,
            func_call_ctx_stack: vec![],
            text: String::new(),
        }
    }
    /// load函数负责在运行前将所有包含的函数符号及其参数和形式返回值以及label和Deffunc行号记录在案  
    /// 以确定跳转位置(ret or br)
    pub fn load(&mut self,instr_slab:&InstrSlab) -> Result<()>{
        let instr = &self.instr_list;
        let simu_symtab = &mut self.simu_symtab;

        // 先扫一遍,找到所有的label 并存入symtab
        for (idx,&l) in instr.iter().enumerate(){
            let instr_struct = instr_slab.get_instr(l)?.clone();
            match &instr_struct.instr_type {
                Label { label_symidx } => {
                    add_symbol!({Symbol::new_from_symidx(label_symidx)}
                        with_field SIMU_VAL:{Value::new_unsure()}
                        with_field SIMU_LABEL_POS:{idx}
                        to simu_symtab
                    );
                }
                DefineFunc { func_symidx, ret_symidx, args } => {
                    // 将 函数符号 和 参数符号 以及 返回值符号 加入到符号表
                    add_symbol!({Symbol::new_from_symidx(func_symidx)}
                        with_field SIMU_VAL:{Value::new_unsure()}
                        with_field TYPE:{Type::Fn { arg_syms: args.clone(), ret_sym: ret_symidx.clone()}}
                        with_field SIMU_LABEL_POS:{idx}
                        to simu_symtab
                    );
                    add_symbol!({Symbol::new_from_symidx(ret_symidx)}
                        with_field SIMU_VAL:{Value::new_unsure()}
                        to simu_symtab
                    );
                    for arg in args{
                        add_symbol!({Symbol::new_from_symidx(arg)}
                            with_field SIMU_VAL:{Value::new_unsure()}
                            to simu_symtab
                        );
                    }
                }
                _ => (),
            }
        }
        Ok(())
    }
    /// 这个函数会从cur_instr_pos 一直运行，一直到跑到断电为止
    pub fn exec_till_breakpoint(&mut self,instr_slab:&InstrSlab,src_symtab:&SymTab) -> Result<Option<SymIdx>>{
        // 运行完毕
        if self.cur_instr_pos >= self.instr_list.len() {
            return Ok(None);
        }
        while self.cur_instr_pos < self.instr_list.len() {
            let op_breakpoint_symidx = match &self.exec_single_instr( instr_slab,src_symtab).with_context(||format!("运行instr {:?} 失败",instr_slab.get_instr(self.instr_list[self.cur_instr_pos]).unwrap()))?.instr_type{
                BreakPoint { breakpoint_symidx  } => {
                    Some(breakpoint_symidx.clone())
                },
                _=>{None}
            };
            self.cur_instr_pos += 1;
            if op_breakpoint_symidx.is_some(){
                return Ok(op_breakpoint_symidx);
            }
        }
        // 运行完毕
        Ok(None)
    }
    /// 这个函数会从 src_symbol 寻找这个函数相关的信息 并 配合 load 的指令 以计算这个函数  
    /// 最后将返回值放在 simulator 自带的 symtab 的 ret_assigned_symidx 中
    /// func_symidx 是被调用的函数的symidx
    /// args_vec 是实参，而不是形参
    pub fn push_func_call(&mut self,op_assinged_symidx:Option<&SymIdx>,func_symidx:&SymIdx, actual_args_vec:&Vec<SymIdx>, src_symtab:&SymTab)->Result<()>{
        let mut ctx_symidx_value_tuple_vec = vec![];
        //ctx_symidx 应该包括一切在这个函数调用后可能被更改的变量
        for ctx_symidx in src_symtab.get_symbol(func_symidx)?.get_declared_vars()?{
            if self.simu_symtab.has_symbol(ctx_symidx){
                let ctx_value = self.simu_symtab.get_symbol(ctx_symidx)?.get_simu_val()?;
                ctx_symidx_value_tuple_vec.push((ctx_symidx.clone(),ctx_value.clone()));
                debug_info_yellow!("保存上下文 {:?} {:?}",ctx_symidx,ctx_value)
            }
        }

        // 由于可能存在递归导致把 值覆盖，我们先保存一下后面再恢复上下文

        // 获取形参以及返回值
        let mut args_vec = vec![];
        let func_type = self.simu_symtab.get_symbol(func_symidx)?.get_type()?.clone();
        let ret_symidx = if let Type::Fn { arg_syms: formal_arg_symidx_vec, ret_sym: ret_symidx } = func_type {
            if formal_arg_symidx_vec.len()!= actual_args_vec.len() {
                return Err(anyhow!("实参和形参数量不一致"));
            }
            
            // 实参赋值给形参
            for (formal_arg_symidx,actual_arg_symidx) in formal_arg_symidx_vec.iter().zip(actual_args_vec.iter()) {
                *self.simu_symtab.get_mut_symbol(formal_arg_symidx)?.get_mut_simu_val()? = self.simu_symtab.get_symbol(actual_arg_symidx)?.get_simu_val()?.clone();
                args_vec.push(self.simu_symtab.get_symbol(actual_arg_symidx)?.get_simu_val()?.clone());
            }
            
            ret_symidx.clone()
        }else{
            return Err(anyhow!("在 simulator 中运行的call语句对象不是函数类型"));
        };
        // 先保留调用此函数之前的 cur_instr_pos
        self.func_call_ctx_stack.push(FuncCallCtx::new(func_symidx.clone(), ret_symidx,args_vec, ctx_symidx_value_tuple_vec, self.cur_instr_pos,op_assinged_symidx.cloned()));
        // 跳转
        self.cur_instr_pos = *self.simu_symtab.get_symbol(func_symidx)?.get_simu_label_pos()?;
        Ok(())
    }

    pub fn pop_func_call(&mut self,actual_ret_symidx:&SymIdx)->Result<()>{
        let func_call_ctx = self.func_call_ctx_stack.pop().ok_or(anyhow!("simulator pop_func_call 出栈失败，因为栈为空"))?;
        self.cur_instr_pos = func_call_ctx.instr_pos_before_call;

        // 将实际返回值 赋值给 形式返回值
        *self.simu_symtab.get_mut_symbol(&func_call_ctx.formal_ret_symidx)?.get_mut_simu_val()? = self.simu_symtab.get_symbol(actual_ret_symidx)?.get_simu_val()?.clone();

        let ret_value = self.simu_symtab.get_symbol(&func_call_ctx.formal_ret_symidx)?.get_simu_val()?.clone();
        // 恢复上下文
        for (symidx,value) in &func_call_ctx.ctx_symidx_value_tuple_vec{
            *self.simu_symtab.get_mut_symbol(symidx)?.get_mut_simu_val()? = value.clone();
            debug_info_yellow!("恢复上下文 {:?} {:?}",symidx,value)
        }

        // 将形式返回值赋值给 op_assigned
        // 这一步一定要在恢复上下文之后做
        if let Some(assigned_symidx) = func_call_ctx.op_assigned_symidx{
            *self.simu_symtab.get_mut_symbol(&assigned_symidx)?.get_mut_simu_val()? = ret_value;
        }
        Ok(())
    }

    /// 执行单条命令，返回 执行的Instruction的引用，并且，不会对cur_instr_pos 进行增加 返回 执行的Instruction 
    pub fn exec_single_instr(&mut self, instr_slab:&InstrSlab, src_symtab:&SymTab) -> Result<Instruction>{
        let instr_struct = instr_slab.get_instr(self.instr_list[self.cur_instr_pos])?;
        println!("exec_single_instr : {:?}",instr_struct);
        for def_symidx in instr_struct.get_def_symidx_vec(){
            let simu_symtab = &mut self.simu_symtab;
            if !simu_symtab.has_symbol(def_symidx){
                add_symbol!({Symbol::new_from_symidx(def_symidx)}
                    with_field SIMU_VAL:{Value::new_unsure()}
                to simu_symtab);
            }
        }
        for use_symidx in instr_struct.get_use_symidx_vec(){
            let simu_symtab = &mut self.simu_symtab;
            if !simu_symtab.has_symbol(use_symidx) && *src_symtab.get_symbol(use_symidx)?.get_is_const()?{
                add_symbol!({Symbol::new_from_symidx(use_symidx)}
                    with_field SIMU_VAL:{Value::from_string_with_specific_type(&src_symtab.get_symbol(use_symidx)?.symidx.symbol_name, src_symtab.get_symbol(use_symidx)?.get_type()?)?}
                to simu_symtab);
            }
        }

        match &instr_struct.instr_type{
            Label { label_symidx: _ } => (),
            DefineFunc { func_symidx: _, ret_symidx: _, args: _ } => {},
            DefineVar { var_symidx, vartype, op_value } => {
                //add_symbol!({var_symidx.symbol_name} of scope {var_symidx.scope_node} with field )
                // 我需要向symtab中加一个symbol的什么部分?

                // (symbol_name,    可从symidx中获取    new()
                    // scope_node,  可从symidx中获取    new()
                    // field,       ?怎么获取?          add_field()?
                    // type,        vartype             add_type()?
                    // value)       value               ?
                if !self.simu_symtab.has_symbol(var_symidx){
                    self.simu_symtab.add_symbol(var_symidx.clone().into_symbol())?;
                }
                match op_value{
                    Some(value_symidx) => {
                        if self.simu_symtab.get_symbol(value_symidx)?.has_simu_val(){
                            // 说明这应该是一个普通变量
                            let value = self.simu_symtab.get_symbol(value_symidx)?.get_simu_val()?.clone();
                            self.simu_symtab.get_mut_symbol(var_symidx)?.add_simu_val(value);
                        }else{
                            // 说明这应该是一个常量
                            self.simu_symtab.get_mut_symbol(var_symidx)?.add_simu_val(Value::from_string_with_specific_type(&value_symidx.symbol_name,vartype)?);
                        }
                    },
                    None => (),
                }
            },
            Arith { lhs, rhs } => match rhs {
                Add { a, b, vartype: _ } => {
                    debug_info_yellow!("compare {:?} and {:?}",a,b);
                    let a_val=self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                    let result = (a_val.clone() + b_val.clone())?;
                    self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                },
                Mul { a, b, vartype: _ } => {
                    let a_val=self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                    let result = (a_val.clone() * b_val.clone())?;
                    self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                },
                Div { a, b, vartype: _ } => {
                    let a_val=self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                    let result = (a_val.clone() / b_val.clone())?;
                    self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                },
                Sub { a, b, vartype: _ } => {
                    let a_val=self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                    let result = (a_val.clone() - b_val.clone())?;
                    self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                },
                Mod { a, b, vartype: _ } => {
                    let a_val=self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                    let result = (a_val.clone() % b_val.clone())?;
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
                    let result = (a_val.clone() & b_val.clone())?;
                    self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                },
                LogicOr { a, b, vartype: _ } => {
                    let a_val = self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get_symbol(b)?.get_simu_val()?;
                    let result = (a_val.clone() | b_val.clone())?;
                    self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                },
                LogicNot { a, vartype: _ } => {
                    let a_val = self.simu_symtab.get_symbol(a)?.get_simu_val()?;
                    let result = (!a_val.clone())?;
                    self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(result);
                },
            }
            SimpleAssign { lhs, rhs } => {
                let rhs_val = self.simu_symtab.get_symbol(rhs)?.get_simu_val()?.clone();
                self.simu_symtab.get_mut_symbol(lhs)?.add_simu_val(rhs_val);
            },
            Call { op_assigned_symidx, func_op } => {
                self.push_func_call(op_assigned_symidx.as_ref(),&func_op.func_symidx, &func_op.actual_arg_symidx_vec,  src_symtab)?;
            },
            Jump {  jump_op } => {
                match jump_op {
                    super::nhwc_instr::JumpOp::Ret { ret_sym } => {
                        self.pop_func_call(ret_sym)?;
                    },

                    super::nhwc_instr::JumpOp::Br { cond, t1, t2 } => {
                        let cond_val = self.simu_symtab.get_symbol(cond)?.get_simu_val()?;
                        if cond_val.clone().to_specific_type(&Type::I1)? == Value::new_i1(true){
                            self.cur_instr_pos = *self.simu_symtab.get_mut_symbol(t1)?.get_simu_label_pos()?;
                        } else {
                            debug_info_yellow!("{:?} is not equal to {:?}",cond_val,Value::new_i1(true));
                            self.cur_instr_pos = *self.simu_symtab.get_mut_symbol(t2)?.get_simu_label_pos()?;
                        }
                    },
                    super::nhwc_instr::JumpOp::Switch { cond, default, compared } => todo!(),
                    
                    super::nhwc_instr::JumpOp::DirectJump { label_symidx } => {
                        self.cur_instr_pos = *self.simu_symtab.get_mut_symbol(label_symidx)?.get_simu_label_pos()?;
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
            BreakPoint { breakpoint_symidx:_ } => {},
        }
        Ok(instr_struct.clone())
    }
    pub fn load_instr_text(&mut self,op_max_display_instr_num:Option<usize>,instr_slab:&InstrSlab) -> Result<()>{
        let instr_pos_num_radius= (op_max_display_instr_num.or(Some(self.instr_list.len())).unwrap().min(self.instr_list.len())+1)/2-1;
        let center_pos = self.cur_instr_pos.clamp(instr_pos_num_radius, self.instr_list.len() - instr_pos_num_radius-1);
        for instr_idx in center_pos - instr_pos_num_radius .. center_pos {
            if instr_idx == self.cur_instr_pos{
                let instr = self.instr_list[instr_idx];
                self.text += format!("{:3}{:?}\n","-->",instr_slab.get_instr(instr)?).as_str();
            }else{
                let instr = self.instr_list[instr_idx];
                self.text += format!("{:3}{:?}\n","",instr_slab.get_instr(instr)?).as_str();
            }
        }
        if center_pos == self.cur_instr_pos{
            let instr = self.instr_list[center_pos];
            self.text += format!("{:3}{:?}\n","-->",instr_slab.get_instr(instr)?).as_str();
        }else{
            let instr = self.instr_list[center_pos];
            self.text += format!("{:3}{:?}\n","",instr_slab.get_instr(instr)?).as_str();
        }
        for instr_idx in center_pos+1 .. center_pos+instr_pos_num_radius+1 {
            if instr_idx == self.cur_instr_pos{
                let instr = self.instr_list[instr_idx];
                self.text += format!("{:3}{:?}\n","-->",instr_slab.get_instr(instr)?).as_str();
            }else{
                let instr = self.instr_list[instr_idx];
                self.text += format!("{:3}{:?}\n","",instr_slab.get_instr(instr)?).as_str();
            }
        }
        Ok(())
    }
    /// 往 text 中添加 栈 的信息
    pub fn load_stack_text(&mut self) -> Result<()>{
        for i in 0..self.func_call_ctx_stack.len() {
            let stack_ctx = &self.func_call_ctx_stack[i];
            self.text += format!("layer{}: {:?}\n", i, stack_ctx).as_str();
        }
        Ok(())
    }
    pub fn clear_text(&mut self){
        self.text.clear()
    }
}   


impl Debug for Simulator{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{}",self.text)
    }
}
impl Debug for FuncCallCtx{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"func_symidx : {:?} \n args : {:?}",self.func_symidx,self.args)
    }
}