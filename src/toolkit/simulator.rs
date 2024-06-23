use core::panic;


use crate::toolkit::nhwc_instr::ArithOp::{Add , Sub, Mul, Div};
use std::fmt::Debug;
use anyhow::*;

use crate::{add_symbol, debug_info_red, debug_info_yellow, instr, make_field_trait_for_struct, reg_field_for_struct};
use super::cfg_node::InstrList;

use super::field::Type::{self, F32, I32};

use super::nhwc_instr::{BreakpointArg, NhwcInstr};
use super::symtab::{SymIdx};
use super::{field::{Field, Value}, nhwc_instr::{ArithOp::*, InstrSlab, NhwcInstrType::*}, symbol::Symbol, symtab::{SymTab, SymTabEdge, SymTabGraph}};
make_field_trait_for_struct!(Value,(usize,usize));
// simu_func_pos_range 是一个左闭右开区间
reg_field_for_struct!(Symbol{
    SIMU_VAL:Value,
    SIMU_OP_LAST_DEF_INSTR:Option<usize>,
    SIMU_LABEL_POS:usize,
    SIMU_FUNC_POS_RANGE:(usize,usize),
}with_fields fields);
pub struct Simulator{
    // 自己创建的symtab
    pub simu_symtab:SymTab,
    pub cur_instr_pos: usize,
    pub instr_list:InstrList,
    pub func_call_ctx_stack:Vec<FuncCallCtx>,
    pub text:String,
    /// optional requirement that variable should be alloc before refered
    pub is_alloc_global_required:bool,
}
pub struct FuncCallCtx{
    func_symidx:SymIdx,   
    args:Vec<Value>,
    sym_ctx_vec:Vec<SimuSymCtx>,
    formal_ret_symidx:SymIdx,
    instr_pos_before_call:usize,
    op_assigned_symidx:Option<SymIdx>,
}
impl FuncCallCtx{
    // new 函数
    pub fn new(func_symidx:SymIdx, ret_symidx:SymIdx,args:Vec<Value>,sym_ctx_vec:Vec<SimuSymCtx>, instr_pos_before_call:usize, op_assigned_symidx:Option<SymIdx>) -> Self{
        FuncCallCtx{
            func_symidx,
            sym_ctx_vec,
            instr_pos_before_call,
            formal_ret_symidx: ret_symidx,
            op_assigned_symidx,
            args,
        }
    }
    // pub fn new(func_symidx:SymIdx, ){

    // }
}
pub struct SimuSymCtx{
    symidx:SymIdx,
    value:Option<Value>,
    def_pos:Option<Option<usize>>,
}
impl Simulator{
    // 输入从别处获得到的symtab , instr_list里是指令的序列, is_alloc_global_required 是用于指定是否强制要求变量声明使用前必须 alloc或 global 的选项
    pub fn new(instr_l:InstrList, is_alloc_global_required:bool) -> Self{
        Simulator{
            simu_symtab:SymTab::new(),
            cur_instr_pos:0,
            instr_list:instr_l,
            func_call_ctx_stack: vec![],
            text: String::new(),
            is_alloc_global_required,
        }
    }
    pub fn run_global_scope(&mut self,src_symtab:&SymTab,instr_slab:&mut InstrSlab<NhwcInstr>)->Result<()>{
        self.cur_instr_pos =0 ;
        // we will disable requirement that variable should be alloc before refered
        let former_is_alloc_global_required = self.is_alloc_global_required;
        self.is_alloc_global_required =false;
        loop{
            let cur_instr = self.instr_list[self.cur_instr_pos];
            match &instr!(at cur_instr in instr_slab)?.instr_type{
                DefineFunc { func_symidx: _, ret_symidx: _, args: _ } => {
                    // debug_info_green!("break when meet define {:?}",func_symidx)
                    break;
                },
                _ => {
                    self.exec_cur_instr(instr_slab, src_symtab)?;
                    self.cur_instr_pos += 1;
                }
            }
        }
        self.is_alloc_global_required = former_is_alloc_global_required;
        Ok(())
    }
    /// Set the instr_pos to main and push the main frame to stack  
    /// Add exit breakpoint and let simulator run it when main returned 
    pub fn set_instr_pos_to_main(&mut self,instr_slab:&mut InstrSlab<NhwcInstr>)->Result<()>{
        let main_func_symidx = SymIdx::new(0, "main".to_string());
        let func_type = self.simu_symtab.get(&main_func_symidx).with_context(||format!("在设置main函数为开始运行点时找不到main符号"))?.get_type()?.clone();
        let ret_symidx = if let Type::Fn { arg_syms: _formal_arg_symidx_vec, ret_sym: ret_symidx } = &func_type {
            ret_symidx.clone()
        }else{
            return Err(anyhow!("main不是一个函数符号"))
        };
        let &main_pos = self.simu_symtab.get(&main_func_symidx)?.get_simu_label_pos()?;
        self.cur_instr_pos = main_pos;

        // add exit breakpoint and let simulator run it when main returned 
        self.instr_list.push(instr_slab.insert_instr(BreakPoint { symidx: SymIdx::new(0, "exit".to_string()), breakpoint_args: vec![] }.into()));
        self.func_call_ctx_stack.push(FuncCallCtx::new(main_func_symidx, ret_symidx, vec![], vec![], self.instr_list.len()-2, None));

        Ok(())
    }
    /// load func will put all func symbols,their args in simu symtab to note all jump pos (ret or br)  
    /// but global variables will not be put in.
    pub fn load_instrs(&mut self,nhwc_instr_slab:&InstrSlab<NhwcInstr>) -> Result<()>{
        let instr = &self.instr_list;
        let simu_symtab = &mut self.simu_symtab;
        // 先扫一遍,找到所有的label 和 函数起始位置 并存入symtab
        let mut op_cur_define_func = None;
        for (pos,&l) in instr.iter().enumerate(){
            let instr_struct = nhwc_instr_slab.get_instr(l)?.clone();
            match &instr_struct.instr_type {
                Label { label_symidx } => {
                    add_symbol!({Symbol::new_from_symidx(label_symidx)}
                        // with_field SIMU_VAL:{Value::}
                        with_field SIMU_LABEL_POS:{pos}
                        to simu_symtab
                    );
                }
                DefineFunc { func_symidx, ret_symidx, args } => {
                    // 将 函数符号 和 参数符号 以及 返回值符号 加入到符号表
                    add_symbol!({Symbol::new_from_symidx(func_symidx)}
                        with_field TYPE:{Type::Fn { arg_syms: args.clone(), ret_sym: ret_symidx.clone()}}
                        with_field SIMU_LABEL_POS:{pos}
                        to simu_symtab
                    );
                    add_symbol!({Symbol::new_from_symidx(ret_symidx)}
                        with_field SIMU_OP_LAST_DEF_INSTR:{None}
                        to simu_symtab
                    );
                    for arg in args{
                        add_symbol!({Symbol::new_from_symidx(&arg.to_src_symidx())}
                            with_field SIMU_OP_LAST_DEF_INSTR:{Some(self.instr_list[pos])}
                            to simu_symtab
                        );
                    }
                    for arg in args{
                        if !simu_symtab.has_symbol(arg){
                            add_symbol!({Symbol::new_from_symidx(&arg)}
                                with_field SIMU_OP_LAST_DEF_INSTR:{Some(self.instr_list[pos])}
                                to simu_symtab
                            );
                        }   
                    }
                    // 这代表着上一个函数的结束(如果有的话)
                    if let Some((last_func_symidx,last_func_start_pos)) = &op_cur_define_func{
                        simu_symtab.get_mut(last_func_symidx)?.add_simu_func_pos_range((*last_func_start_pos,pos));
                    }
                    op_cur_define_func = Some((func_symidx.clone(),pos));
                }
                _ => (),
            }
        }
        // 继续记录最后一个函数位置信息
        if let Some((last_func_symidx,last_func_start_pos)) = &op_cur_define_func{
            simu_symtab.get_mut(last_func_symidx)?.add_simu_func_pos_range((*last_func_start_pos,self.instr_list.len()));
        }
        Ok(())
    }
    /// 这个函数会从cur_instr_pos 一直运行，一直到跑到断点或栈为空为止
    pub fn exec_till_breakpoint(&mut self,instr_slab:&InstrSlab<NhwcInstr>,src_symtab:&SymTab) -> Result<Option<(SymIdx,Vec<(BreakpointArg,SymIdx,Result<Box<dyn Field>>)>)>>{
        // 运行完毕
        if self.cur_instr_pos >= self.instr_list.len() {
            return Err(anyhow!("simulator 运行到instr_list末尾了"));
        }
        while self.cur_instr_pos < self.instr_list.len() {
            let instr = self.instr_list[self.cur_instr_pos];
            let op_breakpoint_symidx_field_vec_tuple = match &self.exec_cur_instr( instr_slab,src_symtab).with_context(||format!("运行instr {:?} 失败",instr_slab.get_instr(instr).unwrap()))?.instr_type{
                BreakPoint { symidx, breakpoint_args  } => {
                    let mut field_vec = vec![];
                    for (itered_symidx, itered_symbol ) in self.simu_symtab.iter(){
                        for breakpoint_arg in breakpoint_args{
                            if itered_symidx.symbol_name == breakpoint_arg.symidx.symbol_name {
                                if let Some(field_name) = &breakpoint_arg.op_field_name{
                                    match field_name.as_str(){
                                        "simu_val"=>{
                                            debug_info_yellow!("进入断点 {:?} 此时{:?}.{}={:?}",symidx,itered_symidx,field_name,itered_symbol.get_simu_val().or(Err(())));
                                            field_vec.push((breakpoint_arg.clone(),itered_symidx.clone(),
                                                itered_symbol.get_simu_val().cloned().map(|field|field.as_field_move())));
                                        },
                                        "simu_func_pos_range"=>{
                                            debug_info_yellow!("进入断点 {:?} 此时{:?}.{}={:?}",symidx,itered_symidx,field_name,itered_symbol.get_simu_func_pos_range().or(Err(())));
                                            field_vec.push((breakpoint_arg.clone(),itered_symidx.clone(),
                                                itered_symbol.get_simu_func_pos_range().cloned().map(|field|field.as_field_move())));
                                        }
                                        _ => {
                                            debug_info_red!("未识别的 breakpoint field_name:{}",field_name)
                                        }
                                    }
                                }else {
                                    debug_info_yellow!("进入断点 {:?} 此时{:?}:{:?}",symidx,itered_symidx,itered_symbol)
                                }
                            }
                        }
                    }
                    Some((symidx.clone(),field_vec))
                },
                _=>{None}
            };
            self.cur_instr_pos += 1;
            if op_breakpoint_symidx_field_vec_tuple.is_some(){
                return Ok(op_breakpoint_symidx_field_vec_tuple);
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
        // consider 2 situations:
        // 1. code just declare the function but without its definition (*external*)
        //    => ignore this function 
        // 2. code do both declaration and definition
        //    => run this function
        if !*src_symtab.get(func_symidx)?.get_is_external()?{
            let mut sym_ctx_vec = vec![];
            //ctx_symidx 应该包括一切在这个函数调用后可能被更改的变量
            for ctx_symidx in src_symtab.get(func_symidx)?.get_declared_vars()?{
                if self.simu_symtab.has_symbol(ctx_symidx){
                    sym_ctx_vec.push(self.simu_store_sym_ctx(ctx_symidx.clone())?);
                    // debug_info_yellow!("保存上下文 {:?} {:?}",ctx_symidx,ctx_value)
                }
            }

            // 获取形参以及返回值
            let mut args_vec = vec![];
            let func_type = self.simu_symtab.get(func_symidx)?.get_type()?.clone();
            let ret_symidx = if let Type::Fn { arg_syms: formal_arg_symidx_vec, ret_sym: ret_symidx } = &func_type {
                if formal_arg_symidx_vec.len()!= actual_args_vec.len() {
                    return Err(anyhow!("实参和形参数量不一致"));
                }
                
                // 实参赋值给形参
                for (formal_arg_symidx,actual_arg_symidx) in formal_arg_symidx_vec.iter().zip(actual_args_vec.iter()) {
                    let value = self.simu_symtab.get(actual_arg_symidx)?.get_simu_val()?.clone();
                    self.simu_add_value(formal_arg_symidx, value)?;
                    args_vec.push(self.simu_symtab.get(actual_arg_symidx)?.get_simu_val()?.clone());
                }
                
                ret_symidx.clone()
            }else{
                return Err(anyhow!("在 simulator 中运行的call语句对象不是函数类型"));
            };
            // 先保留调用此函数之前的 cur_instr_pos
            self.func_call_ctx_stack.push(FuncCallCtx::new(func_symidx.clone(), ret_symidx,args_vec, sym_ctx_vec, self.cur_instr_pos,op_assinged_symidx.cloned()));
            // 跳转
            self.cur_instr_pos = *self.simu_symtab.get(func_symidx)?.get_simu_label_pos()?;
            // 跳转后再赋值
            if let Type::Fn { arg_syms: formal_arg_symidx_vec, ret_sym: _ret_symidx } = func_type {
                // 实参赋值给形参
                for (formal_arg_symidx,actual_arg_symidx) in formal_arg_symidx_vec.iter().zip(actual_args_vec.iter()) {
                    let value = self.simu_symtab.get(actual_arg_symidx)?.get_simu_val()?.clone();
                    self.simu_add_value(formal_arg_symidx, value)?;
                }
            }
        }else {
            debug_info_red!("func {:?} is external can't exec in simulator",func_symidx);
        }
        Ok(())
    }

    pub fn pop_func_call(&mut self,op_actual_ret_symidx:Option<&SymIdx>)->Result<()>{
        let func_call_ctx = self.func_call_ctx_stack.pop().ok_or(anyhow!("simulator pop_func_call 出栈失败，因为栈为空"))?;
        self.cur_instr_pos = func_call_ctx.instr_pos_before_call;

        let mut op_ret_value = None;
        if let Some(actual_ret_symidx) = &op_actual_ret_symidx{
            // 将实际返回值 赋值给 形式返回值
            let actual_ret_val = self.simu_symtab.get(actual_ret_symidx)?.get_simu_val()?.clone();
            self.simu_symtab.get_mut(&func_call_ctx.formal_ret_symidx)?.add_simu_val(actual_ret_val);

            op_ret_value = Some(self.simu_symtab.get(&func_call_ctx.formal_ret_symidx)?.get_simu_val()?.clone());
        }
        // 恢复上下文
        for sym_ctx in &func_call_ctx.sym_ctx_vec{
            self.simu_restore_sym_ctx(sym_ctx)?;
            // debug_info_yellow!("恢复上下文 {:?} {:?}",symidx,value)
        }

        // 将形式返回值赋值给 op_assigned
        // 这一步一定要在恢复上下文之后做
        // (assigned_symidx,ret_value) =
        match (func_call_ctx.op_assigned_symidx,op_ret_value){
            (None, None) => {},
            (None, Some(_ret_value)) => {},
            (Some(_), None) => {
                Err(anyhow!("函数并没有返回值，无法为变量赋值"))?
            },
            (Some(assigned_symidx), Some(ret_value)) => {
                self.simu_symtab.get_mut(&assigned_symidx)?.add_simu_val(ret_value);
            },
        }
        Ok(())
    }

    /// 执行单条命令，返回 执行的Instruction的引用，并且，不会对cur_instr_pos 进行增加 返回 执行的Instruction 
    pub fn exec_cur_instr(&mut self, instr_slab:&InstrSlab<NhwcInstr>, src_symtab:&SymTab) -> Result<NhwcInstr>{
        let instr = self.instr_list[self.cur_instr_pos];
        let instr_struct = instr_slab.get_instr(self.instr_list[self.cur_instr_pos])?;
        // println!("exec_single_instr : {:?}",instr_struct);
        // 对于 use 到常量时的处理
        for use_symidx in instr_struct.get_use_symidx_vec(){
            let simu_symtab = &mut self.simu_symtab;
            if !simu_symtab.has_symbol(use_symidx) && *src_symtab.get(use_symidx)?.get_is_literal()?{
                // 将字面量加入
                add_symbol!({Symbol::new_from_symidx(use_symidx)}
                    with_field SIMU_VAL:{Value::from_string_with_specific_type(&src_symtab.get(use_symidx)?.symidx.symbol_name, src_symtab.get(use_symidx)?.get_type()?)?}
                to simu_symtab);
            }
            
        }
        
        for def_symidx in instr_struct.get_def_symidx_vec(){
            let src_var_symidx= def_symidx.to_src_symidx();
            let simu_symtab = &mut self.simu_symtab;
            // 根据 is_alloc_global_required 选项选择是否报错（如果找不到 src_symidx 对应的符号）
            if !simu_symtab.has_symbol(&src_var_symidx) && self.is_alloc_global_required{
                return Err(anyhow!("变量 {:?} 的内存还没有被分配过",src_var_symidx))
            }else if !simu_symtab.has_symbol(&src_var_symidx) && !self.is_alloc_global_required {
                add_symbol!({src_var_symidx.clone().into_symbol()}
                    with_field SIMU_VAL:{Value::new_unsure_from_specific_type(src_symtab.get(&src_var_symidx)?.get_type()?)}
                    with_field SIMU_OP_LAST_DEF_INSTR:{Some(instr)}
                    to simu_symtab
                );
            }
            
            if !simu_symtab.has_symbol(&def_symidx){
                // 如果没有这个 var_symidx说名这是个 ssa变量，只是src_symidx 的一个版本，因此不妨定义一下这个版本
                add_symbol!({def_symidx.clone().into_symbol()}
                    with_field SIMU_OP_LAST_DEF_INSTR:{Some(instr)}
                    to simu_symtab
                );
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
                // 如果 define var 之前它的src symidx 没有被加入，那么就加入
                // if !self.simu_symtab.has_symbol(&var_symidx.to_src_symidx()){
                //     let lhs_src_symidx = var_symidx.to_src_symidx();
                //     let simu_symtab = &mut self.simu_symtab;
                //     add_symbol!({Symbol::new_from_symidx(&lhs_src_symidx)}
                //         with_field SIMU_OP_LAST_DEF_INSTR:{None}
                //         to simu_symtab
                //     );
                // }

                match op_value{
                    Some(value_symidx) => {
                        if self.simu_symtab.get(value_symidx)?.has_simu_val(){
                            // 说明这应该是一个普通变量
                            let value = self.simu_symtab.get(value_symidx)?.get_simu_val()?.clone();
                            self.simu_add_value(var_symidx, value)?;
                        }else{
                            // 说明这应该是一个常量
                            self.simu_add_value(var_symidx,Value::from_string_with_specific_type(&value_symidx.symbol_name,vartype)?)?;
                        }
                    },
                    None => (),
                }
            },
            Arith { lhs, rhs } => match rhs {
                Add { a, b, vartype: _ } => {
                    // debug_info_yellow!("compare {:?} and {:?}",a,b);
                    let a_val=self.simu_symtab.get(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get(b)?.get_simu_val()?;
                    let result = (a_val.clone() + b_val.clone())?;
                    self.simu_add_value(lhs,result)?;
                },
                Mul { a, b, vartype: _ } => {
                    let a_val = self.simu_symtab.get(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get(b)?.get_simu_val()?;
                    let result = (a_val.clone() * b_val.clone())?;
                    self.simu_add_value(lhs,result)?;
                },
                Div { a, b, vartype: _ } => {
                    let a_val=self.simu_symtab.get(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get(b)?.get_simu_val()?;
                    let result = (a_val.clone() / b_val.clone())?;
                    self.simu_add_value(lhs,result)?;
                },
                Sub { a, b, vartype: _ } => {
                    let a_val=self.simu_symtab.get(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get(b)?.get_simu_val()?;
                    let result = (a_val.clone() - b_val.clone())?;
                    self.simu_add_value(lhs,result)?;
                },
                Mod { a, b, vartype: _ } => {
                    let a_val=self.simu_symtab.get(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get(b)?.get_simu_val()?;
                    let result = (a_val.clone() % b_val.clone())?;
                    self.simu_add_value(lhs,result)?;
                },
                Icmp { plan, a, b, vartype: _ } => {
                    let a_val=self.simu_symtab.get(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get(b)?.get_simu_val()?;
                    // debug_info_yellow!("{:?}:{:?} compare with {:?}:{:?}",a,a_val,b,b_val);
                    // if !(a_val.is_i_1()&& b_val.is_i_1()){
                    //     return Err(anyhow!("{:?} can't compare with {:?} :icmp only support i1 比较",a,b));
                    // }
                    match plan {
                        super::nhwc_instr::IcmpPlan::Eq => {
                            let result = Value::new_i1(a_val.clone() == b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::IcmpPlan::Ne => {
                            let result = Value::new_i1(a_val.clone() != b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        }
                        super::nhwc_instr::IcmpPlan::Ugt => {
                            let result = Value::new_i1(a_val.clone() > b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::IcmpPlan::Uge => {
                            let result = Value::new_i1(a_val.clone() >= b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::IcmpPlan::Ult => {
                            let result = Value::new_i1(a_val.clone() < b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::IcmpPlan::Ule => {
                            let result = Value::new_i1(a_val.clone() <= b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::IcmpPlan::Sgt => {
                            let result = Value::new_i1(a_val.clone() > b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::IcmpPlan::Sge =>{
                            let result = Value::new_i1(a_val.clone() >= b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::IcmpPlan::Slt => {
                            let result = Value::new_i1(a_val.clone() < b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::IcmpPlan::Sle => {
                            let result = Value::new_i1(a_val.clone() <= b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                    }
                },
                Fcmp { plan, a, b, vartype: _ } => {
                    let a_val=self.simu_symtab.get(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get(b)?.get_simu_val()?;
                    match plan {
                        super::nhwc_instr::FcmpPlan::Oeq => {
                            let result = Value::new_i1(a_val.clone() == b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::FcmpPlan::One => {
                            let result = Value::new_i1(a_val.clone() != b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::FcmpPlan::Ogt => {
                            let result = Value::new_i1(a_val.clone() > b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::FcmpPlan::Oge => {
                            let result = Value::new_i1(a_val.clone() >= b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::FcmpPlan::Olt => {
                            let result = Value::new_i1(a_val.clone() < b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                        super::nhwc_instr::FcmpPlan::Ole => {
                            let result = Value::new_i1(a_val.clone() <= b_val.clone());
                            self.simu_add_value(lhs,result)?;
                        },
                    }
                }
                LogicAnd { a, b, vartype: _ } => {
                    let a_val = self.simu_symtab.get(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get(b)?.get_simu_val()?;
                    let result = (a_val.clone() & b_val.clone())?;
                    self.simu_add_value(lhs,result)?;
                },
                LogicOr { a, b, vartype: _ } => {
                    let a_val = self.simu_symtab.get(a)?.get_simu_val()?;
                    let b_val = self.simu_symtab.get(b)?.get_simu_val()?;
                    let result = (a_val.clone() | b_val.clone())?;
                    self.simu_add_value(lhs,result)?;
                },
                LogicNot { a, vartype: _ } => {
                    let a_val = self.simu_symtab.get(a)?.get_simu_val()?;
                    let result = (!a_val.clone())?;
                    self.simu_add_value(lhs,result)?;
                },
            }
            SimpleAssign { lhs, rhs, vartype: _ } => {
                let rhs_val = self.simu_symtab.get(rhs)?.get_simu_val()?.clone();
                self.simu_add_value(lhs,rhs_val)?;
            },
            Call { op_assigned_symidx, func_op } => {
                self.push_func_call(op_assigned_symidx.as_ref(),&func_op.func_symidx, &func_op.actual_arg_symidx_vec,  src_symtab)?;
            },
            Jump {  jump_op } => {
                match jump_op {
                    super::nhwc_instr::JumpOp::Ret { op_ret_sym} => {
                        self.pop_func_call(op_ret_sym.as_ref())?;
                    },

                    super::nhwc_instr::JumpOp::Br { cond, t1, t2 } => {
                        let cond_val = self.simu_symtab.get(cond)?.get_simu_val()?;
                        if cond_val.clone().to_specific_type(&Type::I1)? == Value::new_i1(true){
                            self.cur_instr_pos = *self.simu_symtab.get_mut(t1)?.get_simu_label_pos()?;
                        } else {
                            // debug_info_yellow!("{:?} is not equal to {:?}",cond_val,Value::new_i1(true));
                            self.cur_instr_pos = *self.simu_symtab.get_mut(t2)?.get_simu_label_pos()?;
                        }
                    },
                    super::nhwc_instr::JumpOp::Switch { cond: _, default: _, compared: _ } => todo!(),
                    super::nhwc_instr::JumpOp::DirectJump { label_symidx } => {
                        self.cur_instr_pos = *self.simu_symtab.get_mut(label_symidx)?.get_simu_label_pos()?;
                    },
                }
            },
            Phi { lhs, rhs } => {
                let mut flag = false;
                let def_instr = self.simu_symtab
                        .get(&lhs.to_src_symidx())?
                        .get_simu_op_last_def_instr()?
                        .ok_or(anyhow!("此变量进入 phi 之前时没有被定义过，无法解析"))?;
                for phi_pair in rhs.phi_pairs.iter(){
                    if phi_pair.def_instr ==  def_instr {
                        let phi_val = self.simu_symtab.get(&phi_pair.symidx)?.get_simu_val()?;
                        self.simu_add_value(lhs,phi_val.clone())?;
                        // debug_info_red!("assinged !!!!!!!!");
                        flag =true;
                    }
                }
                if !flag {
                    return Err(anyhow!("phi 解析失败 这个变量在运行时的def_instr={}",def_instr));
                }
            },
            TranType { lhs, op } => {
                // let _lhs_val = self.simu_symtab.get_symbol(lhs)?.get_simu_val()?;
                let _result = match op {
                    super::nhwc_instr::Trans::Fptosi { float_symidx } => {
                        let float_val = self.simu_symtab.get(float_symidx)?.get_simu_val()?;
                        let result = float_val.clone().to_specific_type(&I32)?;
                        self.simu_add_value(lhs,result.clone())?;
                        result
                    },
                    super::nhwc_instr::Trans::Sitofp { int_symidx } => {
                        let int_val = self.simu_symtab.get(int_symidx)?.get_simu_val()?;
                        let result = int_val.clone().to_specific_type(&F32)?;
                        self.simu_add_value(lhs,result.clone())?;
                        result
                    },
                    super::nhwc_instr::Trans::Zext { bool_symidx } => {
                        let bool_val = self.simu_symtab.get(bool_symidx)?.get_simu_val()?;
                        let result = bool_val.clone().to_specific_type(&I32)?;
                        self.simu_add_value(lhs,result.clone())?;
                        result
                    },
                    super::nhwc_instr::Trans::Bitcast { rptr_symidx: _, rptr_type: _, lptr_type: _ } => {
                        panic!("bitcast不处理")
                    },
                };
            },
            BreakPoint { symidx:_, breakpoint_args: _ } => {},
            Alloc { var_symidx, vartype} => {
                // 这是内存分配指令， 我们在内存分配的时候加入 src 变量
                let simu_symtab = &mut self.simu_symtab;
                let src_var_symidx = var_symidx.to_src_symidx();
                if !simu_symtab.has_symbol(&src_var_symidx){
                    add_symbol!({src_var_symidx.into_symbol()}
                        with_field SIMU_VAL:{Value::new_unsure_from_specific_type(&vartype)}
                        with_field SIMU_OP_LAST_DEF_INSTR:{Some(instr)}
                        to simu_symtab
                    );
                }
            },
            Global { var_symidx, vartype } => {
                // 全局变量
                let simu_symtab = &mut self.simu_symtab;
                let src_var_symidx = var_symidx.to_src_symidx();
                if !simu_symtab.has_symbol(&src_var_symidx){
                    add_symbol!({src_var_symidx.clone().into_symbol()}
                        with_field SIMU_VAL:{Value::new_unsure_from_specific_type(&vartype)}
                        with_field SIMU_OP_LAST_DEF_INSTR:{Some(instr)}
                        to simu_symtab
                    );
                }
                // add its global ptr to simu_symtab
                if !simu_symtab.has_symbol(&src_var_symidx.to_globl_ptr()?){
                    add_symbol!({src_var_symidx.clone().to_globl_ptr()?.into_symbol()}
                        with_field SIMU_VAL:{Value::new_ptr64_to_variable(src_var_symidx.clone(),vartype.clone())}
                        with_field SIMU_OP_LAST_DEF_INSTR:{Some(instr)}
                        to simu_symtab
                    );
                }
            },
            Load { lhs, ptr_symidx, ptr_ty } => {
                let simu_symtab = &mut self.simu_symtab;
                if !simu_symtab.has_symbol(lhs){
                    add_symbol!({lhs.clone().into_symbol()}
                        with_field SIMU_VAL:{Value::new_unsure_from_specific_type(&ptr_ty.to_deref_ptr_type()?)}
                        with_field SIMU_OP_LAST_DEF_INSTR:{Some(instr)}
                        to simu_symtab
                    );
                }
                match simu_symtab.get(ptr_symidx)?.get_simu_val()?{
                    Value::Ptr64 { pointed_ty: _ty, op_pointed_symidx, offset} => {
                        match op_pointed_symidx{
                            Some(pointed_symidx) => {
                                match offset.as_ref(){
                                   Value::I32(Some(offset)) => {
                                        let val = simu_symtab.get(pointed_symidx)?.get_simu_val()?.index_array(*offset as usize)?;
                                        self.simu_add_value(lhs, val)?;
                                    },
                                    Value::I32(None) => {
                                        let val = simu_symtab.get(pointed_symidx)?.get_simu_val()?.clone();
                                        self.simu_add_value(lhs, val)?;
                                    },
                                    _ => {

                                    }
                                }
                            },
                            None => return Err(anyhow!("这个指针没有指向任何 普通变量或数组元素")),
                        }
                    },
                    _ => {return Err(anyhow!("{:?} 不是pointer,无法使用load指令",ptr_symidx))}
                }
            },
            Store { val_symidx: value_symidx, value_ty: _, ptr_symidx, ptr_ty: _ } => {
                match self.simu_symtab.get(ptr_symidx)?.get_simu_val()?.clone(){
                    Value::Ptr64 { pointed_ty: _ty, op_pointed_symidx, offset } => {
                        match op_pointed_symidx{
                            Some(pointed_symidx) => {
                                // 这里要分两种情况，一种是数组，另一种是普通指针
                                let val = self.simu_symtab.get(value_symidx)?.get_simu_val()?.clone();
                                let var_be_assigned = self.simu_symtab.get_mut(&pointed_symidx)?.get_mut_simu_val()?;
                                match var_be_assigned{
                                    // 数组
                                    Value::Array { value_map, dims: _, ele_ty: _ele_type } => {
                                        // 在数组中我们无法追踪 def_instr 因此无法使用 simu_add_value
                                        value_map.insert_ele_by_value_type_offset(&offset, val)?
                                    },
                                    _ => {
                                        // 普通指针
                                        self.simu_add_value(&pointed_symidx, val)?;
                                    }
                                }
                            },
                            None => todo!(),
                        }
                    },
                    _ => {return Err(anyhow!("{:?} 不是pointer,无法使用load指令",ptr_symidx))}
                }
            },
            GetElementPtr { lhs, array_ty, array_symidx, idx_vec } => {
                match array_ty{
                    Type::Array { dims, ele_ty } => {
                        // if dims.len() != idx_vec.len(){
                        //     return Err(anyhow!("getelementptr 中数组shape 和 idx_vec 维度应该相同 {:?} {:?}",dims,idx_vec))
                        // }
                        let simu_symtab = &mut self.simu_symtab;
                        let weights = array_ty.get_array_dim_weight_vec()?;
                        let mut offset = Value::new_i32(0);
                        for (weight_symidx,idx_symidx) in weights.iter().zip(idx_vec.iter()){
                            match idx_symidx.as_ref(){
                                Some(idx_symidx) => {
                                    let weight_val = Value::from_string_with_specific_type(&weight_symidx.symbol_name, &Type::I32)?;
                                    // 两种情况，一种是 idx_symidx 直接是常量 一种是 普通变量
                                    // let idx_val = Value::from_string_with_specific_type(&idx_vec.symbol_name, &Type::I32)?;
                                    offset = (offset + (weight_val * simu_symtab.get(idx_symidx)?.get_simu_val()?.clone())?)?;
                                },
                                None => {
                                    // do nothing
                                },
                            }
                        }
                        if !simu_symtab.has_symbol(lhs){
                            add_symbol!({lhs.clone().into_symbol()}
                                // with_field SIMU_VAL:{Value::new_unsure_from_specific_type(&ele_ty.ref_type()?)}
                                // 对于数组要特殊处理一下，我们要保证返回的是 src_symidx 回头禁止一下数组的ssa
                                with_field SIMU_VAL:{Value::new_ptr64_from_array_with_offset(array_symidx.to_src_symidx(), *ele_ty.clone(), offset)}
                                with_field SIMU_OP_LAST_DEF_INSTR:{Some(instr)}
                                to simu_symtab
                            );
                        }else {
                            self.simu_add_value(lhs, Value::new_ptr64_from_array_with_offset(array_symidx.to_src_symidx(), *ele_ty.clone(), offset))?;
                        }
                    },
                    _ => {
                        return Err(anyhow!("getelementptr 的作用对象不应为 {:?}",array_ty))
                    }
                }
            },
            Nope {  } => {},
            Mu { may_use_symidx: _, may_use_instr: _ } => {},
            Chi { lhs: _, rhs: _, may_def_instr: _ } => {},
        }
        Ok(instr_struct.clone())
    }
    pub fn load_instr_text(&mut self,op_max_display_instr_num:Option<usize>,instr_slab:&InstrSlab<NhwcInstr>) -> Result<()>{
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
    pub fn simu_add_value(&mut self,symidx:&SymIdx,value:Value)->Result<()>{
        // debug_info_yellow!("simu_add_value {:?} ",symidx);
        let simu_symtab = &mut self.simu_symtab;
        if !simu_symtab.has_symbol(&symidx.to_src_symidx()){
            // let lhs_src_symidx = symidx.to_src_symidx();
            // add_symbol!({Symbol::new_from_symidx(&lhs_src_symidx)}
            //     with_field SIMU_OP_LAST_DEF_INSTR:{None}
            //     to simu_symtab
            // );
            return Err(anyhow!("变量{:?}还没有被声明",symidx))
        }
        self.simu_symtab.get_mut(symidx)?.add_simu_val(value);
        self.simu_symtab.get_mut(symidx)?.add_simu_op_last_def_instr(Some(self.instr_list[self.cur_instr_pos]));
        self.simu_symtab.get_mut(&symidx.to_src_symidx())?.add_simu_op_last_def_instr(Some(self.instr_list[self.cur_instr_pos]));
        Ok(())
    }
    pub fn simu_store_sym_ctx(&mut self,symdix:SymIdx)->Result<SimuSymCtx>{
        Ok(
            SimuSymCtx{
                value:if self.simu_symtab.get_mut(&symdix)?.has_simu_val() {
                    Some(self.simu_symtab.get_mut(&symdix)?.get_simu_val()?.clone())} else { None},
                def_pos: if self.simu_symtab.get_mut(&symdix)?.has_simu_op_last_def_instr() {
                    Some(self.simu_symtab.get_mut(&symdix)?.get_simu_op_last_def_instr()?.clone())} else { None},
                symidx: symdix,
            }
        )
    }
    pub fn simu_restore_sym_ctx(&mut self,sym_ctx:&SimuSymCtx)->Result<()>{
        if let Some(value) = &sym_ctx.value{
            self.simu_symtab.get_mut(&sym_ctx.symidx)?.add_simu_val(value.clone());
        }
        if let Some(op_last_def_instr) = &sym_ctx.def_pos{
            self.simu_symtab.get_mut(&sym_ctx.symidx)?.add_simu_op_last_def_instr(op_last_def_instr.clone());
        }
        Ok(())
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

