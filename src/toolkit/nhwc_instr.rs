use itertools::Itertools;
use slab::Slab;
use strum_macros::EnumIs;
use std::{cell::RefCell, fmt::{Debug, Formatter}, rc::Rc, vec};
use anyhow::{anyhow,Result};
use delegate::delegate;

use crate::toolkit::symtab::WithBorrow;

use super::{
    field::{Fields, Type}, symtab::{self, RcSymIdx, SymIdx}
};


#[derive(Clone,Default,Debug)]
pub struct InstrSlab<T:Clone> {
    instr_slab : Slab<T>,
    pub info : Fields,
}

impl<T: Clone> InstrSlab<T>{
    pub fn new() -> Self {
        Self { instr_slab: Slab::new(), info: Fields::new() }
    }
    pub fn insert_instr(&mut self,instr:T) -> usize{
        self.instr_slab.insert(instr)
    }
    pub fn get_instr(&self,idx:usize) -> Result<&T>{
        self.instr_slab.get(idx).ok_or(anyhow!("在 instr_slab 中找不到对应的instruction"))
    }
    pub fn get_mut_instr(&mut self,idx:usize) -> Result<&mut T>{
        self.instr_slab.get_mut(idx).ok_or(anyhow!("在 instr_slab 中找不到对应的instruction"))
    }
    delegate!{
        to self.instr_slab {
            pub fn iter(&self) -> slab::Iter<'_, T> ;
        }
        to self.instr_slab {
            pub fn iter_mut(&mut self) -> slab::IterMut<'_, T> ;
        }
    }
}


#[derive(Clone,Eq,PartialEq)]
pub enum ArithOp {
    Add {
        a:RcSymIdx,
        b:RcSymIdx,
        vartype:Type,
    },
    Mul {
        a:RcSymIdx,
        b:RcSymIdx,
        vartype:Type,
    },
    Div {
        a:RcSymIdx,
        b:RcSymIdx,
        vartype:Type,
    },
    Sub {
        a:RcSymIdx,
        b:RcSymIdx,
        vartype:Type,
    },
    Mod {
        a:RcSymIdx,
        b:RcSymIdx,
        vartype:Type,
    },
    //整数比较
    Icmp {
        plan:IcmpPlan,
        a:RcSymIdx, //寄存器或者数
        b:RcSymIdx,
        vartype:Type,
    },
    Fcmp {
        plan:FcmpPlan,
        a:RcSymIdx, //寄存器或者数
        b:RcSymIdx,
        vartype:Type,
    },
    LogicAnd {
        a:RcSymIdx,
        b:RcSymIdx,
        vartype:Type,
    },
    LogicOr {
        a:RcSymIdx,
        b:RcSymIdx,
        vartype:Type,
    },
    LogicNot {
        a:RcSymIdx,
        vartype:Type,
    },
}
#[derive(Clone)]
pub struct FuncOp {
    pub func_symidx:RcSymIdx,
    pub actual_arg_symidx_vec:Vec<RcSymIdx>, //存储所有的实参
    pub ret_type:Type
}
#[derive(Clone,PartialEq,Eq)]
pub struct PhiPair {
    pub symidx:RcSymIdx,
    pub def_instr:usize,
}
impl PhiPair{
    pub fn new(symidx:RcSymIdx ,  def_instr:usize)->Self{
        Self{
            symidx,
            def_instr: def_instr,
        }
    }
}
#[derive(Clone)]
pub struct PhiOp {
    pub(crate) phi_pairs:Vec<PhiPair>,
}
impl PhiOp{
    // 注意要避免重复添加，如果是重复添加则err
    pub fn push_phi_pair(&mut self,phi_pair_to_insert:PhiPair)->Result<()>{
        for phi_pair in self.phi_pairs.iter(){
            if phi_pair.symidx == phi_pair_to_insert.symidx {
                // return Err(anyhow!("对已存在的phi node 执行 push_phi_pair 失败,已经存在phi_pair包含symidx:{:?}",phi_pair.symidx))
            }
            if phi_pair.symidx.as_ref_borrow().to_src_symidx() == phi_pair_to_insert.symidx.as_ref_borrow().to_src_symidx() && phi_pair.def_instr == phi_pair_to_insert.def_instr {
                // return Err(anyhow!("对已存在的phi node 执行 push_phi_pair 失败,已经存在phi_pair包含symidx:{:?} with bb:{}",phi_pair.symidx,phi_pair_to_insert.bb))
            }
        }
        self.phi_pairs.push(phi_pair_to_insert);
        Ok(())
    }
    pub fn remove_phi_pair(&mut self,phi_pair_to_insert:PhiPair)->Result<()>{
        let mut idx_to_rm = None;
        for (idx,phi_pair) in self.phi_pairs.iter().enumerate(){
            if phi_pair == &phi_pair_to_insert{
                idx_to_rm = Some(idx);
                break;
            }
        }
        self.phi_pairs.remove(idx_to_rm.ok_or(anyhow!("在 {:?} 中没有找到要删除的 phi_pair",self))?);
        Ok(())
    }
}
// #[derive(Clone)]
// pub enum MemOp {
//     Alloca { align:u32 },
// }
// #[derive(Clone)]
// pub enum Op{
//     ArithOp(ArithOp),
//     FuncOp(FuncOp),
//     Jump(JumpOp)
// }

#[derive(Clone,EnumIs)]
pub enum NhwcInstrType {
    Label { label_symidx:RcSymIdx },
    //定义函数
    DefineFunc { func_symidx:RcSymIdx, ret_symidx:RcSymIdx, args:Vec<RcSymIdx> },
    //定义变量
    DefineVar { var_symidx:RcSymIdx, vartype:Type, op_value:Option<RcSymIdx> },
    Alloc { var_symidx:RcSymIdx, vartype:Type },
    Globl { var_symidx:RcSymIdx, vartype:Type },
    Load { lhs:RcSymIdx ,ptr_symidx:RcSymIdx ,ptr_ty:Type},
    Store { val_symidx:RcSymIdx, value_ty:Type, ptr_symidx:RcSymIdx , ptr_ty:Type},
    /// 注意getelementptr 的 ty 必须是一个 数组
    GetElementPtr { lhs:RcSymIdx  ,array_or_ptr_symidx:RcSymIdx,array_ty:Type, idx_vec:Vec<Option<RcSymIdx>>},
    // 算数运算符 + - * / etc.
    Arith { lhs:RcSymIdx, rhs:ArithOp },
    SimpleAssign { lhs:RcSymIdx, rhs:RcSymIdx ,vartype:Type},
    // 调用函数
    Call { op_assigned_symidx:Option<RcSymIdx>, func_op:FuncOp },
    // 跳转  break continue  return  etc.
    Jump { jump_op:JumpOp },
    // phi node
    Phi { lhs:RcSymIdx, rhs:PhiOp },
    Mu { may_use_symidx:RcSymIdx, may_use_instr:usize},
    Chi { lhs:RcSymIdx, rhs:RcSymIdx, may_def_instr:usize },
    TranType { lhs:RcSymIdx, op:Trans },
    // 断点     只在simulator中使用
    BreakPoint { symidx:RcSymIdx, breakpoint_args:Vec<BreakpointArg>},
    Nope{},
}
#[derive(Clone)]
pub struct NhwcInstr {
    pub instr_type:NhwcInstrType,
    pub info:Fields,
    pub text:String,
}
impl NhwcInstr {
    pub fn load_idx_text(&mut self,instr:usize){
        self.text += format!("{}",instr).as_str()
    }
    pub fn get_ssa_def_and_use_symidx_vec(&self)->Vec<&RcSymIdx>{
        let all_symidx_vec = self.get_ssa_direct_def_symidx_vec();
        self.get_ssa_direct_use_symidx_vec().append(&mut self.get_ssa_direct_use_symidx_vec());
        all_symidx_vec
    }
    pub fn get_ssa_direct_def_symidx_vec(&self)->Vec<&RcSymIdx>{
        let vec = match &self.instr_type{
            NhwcInstrType::Label { label_symidx:_ } => vec![],
            NhwcInstrType::DefineFunc { func_symidx, ret_symidx:_, args } => {
                {
                    let mut symidx_vec= vec![];
                    args.iter().map(|arg| symidx_vec.push(arg)).count();
                    symidx_vec
                }
            },
            NhwcInstrType::DefineVar { var_symidx, vartype:_, op_value:_ } => {
                vec![var_symidx]
            },
            NhwcInstrType::Arith { lhs, rhs:_ } => { vec![lhs] },
            NhwcInstrType::SimpleAssign { lhs, rhs:_, vartype: _ } => {
                 vec![lhs] 
            },
            NhwcInstrType::Call { op_assigned_symidx: assigned, func_op:_} => if let  Some(symidx)= assigned{
                vec![symidx]
            }else{
                vec![]
            },
            NhwcInstrType::Jump { jump_op: _op } => vec![],
            NhwcInstrType::Phi { lhs, rhs:_ } => vec![lhs],
            NhwcInstrType::TranType { lhs, op: _ } => vec![lhs],
            NhwcInstrType::BreakPoint { symidx: _breakpoint_symidx, breakpoint_args: _symidx_vec_to_observe } => vec![],
            NhwcInstrType::GetElementPtr { array_ty: _ty, array_or_ptr_symidx: _, idx_vec: _, lhs } => vec![lhs],
            NhwcInstrType::Globl { var_symidx: _, vartype: _, } => vec![],
            // 这几个都认为是没有ssa 层面上的def 
            NhwcInstrType::Alloc { var_symidx: _, vartype: _, } => vec![],
            NhwcInstrType::Load { ptr_symidx: _ptr_symdix, lhs, ptr_ty: _ } => vec![lhs],
            NhwcInstrType::Store { val_symidx: _value, ptr_symidx: _, ptr_ty: _, value_ty: _ } => vec![],
            NhwcInstrType::Nope {  } => vec![],
            NhwcInstrType::Mu { may_use_symidx: _ , may_use_instr:_usize} => vec![],
            NhwcInstrType::Chi { lhs, rhs: _ ,may_def_instr:_usize} => vec![lhs],
        };
        vec
    }
    pub fn get_ssa_direct_use_symidx_vec(&self)->Vec<&RcSymIdx>{
        let vec = match &self.instr_type{
            NhwcInstrType::Label { label_symidx:_ } => vec![],
            NhwcInstrType::DefineFunc { func_symidx:_, ret_symidx:_, args: _ } => {
                vec![]
            },
            NhwcInstrType::DefineVar { var_symidx:_, vartype:_, op_value } => {
                match op_value{
                    Some(value) => vec![value],
                    None => vec![],
                }
            },
            NhwcInstrType::Arith { lhs:_, rhs } => { match rhs{
                ArithOp::Add { a, b, vartype:_ } => vec![a,b],
                ArithOp::Mul { a, b, vartype:_ } => vec![a,b],
                ArithOp::Div { a, b, vartype:_ } => vec![a,b],
                ArithOp::Sub { a, b, vartype:_ } => vec![a,b],
                ArithOp::Mod { a, b, vartype:_ } => vec![a,b],
                ArithOp::Icmp { plan:_, a, b, vartype:_ } => vec![a,b],
                ArithOp::Fcmp { plan:_, a, b, vartype:_ } => vec![a,b],
                ArithOp::LogicAnd { a, b, vartype:_ } => vec![a,b],
                ArithOp::LogicOr { a, b, vartype:_ } => vec![a,b],
                ArithOp::LogicNot { a, vartype:_ } => vec![a],
            }},
            NhwcInstrType::SimpleAssign { lhs:_, rhs, vartype: _ } => {
                 vec![rhs] 
            },
            NhwcInstrType::Call { op_assigned_symidx: _assigned, func_op } => {
                func_op.actual_arg_symidx_vec.iter().collect_vec()
            },
            NhwcInstrType::Jump { jump_op } => {
                match jump_op{
                    JumpOp::Ret { op_ret_sym: Some(ret_sym) } => vec![ret_sym],
                    JumpOp::Ret { op_ret_sym: None } => vec![],
                    JumpOp::Br { cond, t1: _, t2: _ } => vec![cond],
                    JumpOp::Switch { cond, default: _, compared: _ } => vec![cond],
                    JumpOp::DirectJump { label_symidx: _ } => vec![],
                }
            },
            NhwcInstrType::Phi { lhs:_, rhs } => rhs.phi_pairs.iter().map(|p| &p.symidx).collect_vec(),
            NhwcInstrType::TranType { lhs:_, op } => match op{
                Trans::Fptosi { float_symidx } => vec![float_symidx],
                Trans::Sitofp { int_symidx } => vec![int_symidx],
                Trans::Zext { bool_symidx } => vec![bool_symidx],
                Trans::Bitcast { rptr_symidx, rptr_type:_, lptr_type:_ } => vec![rptr_symidx],
            }
            ,
            NhwcInstrType::BreakPoint { symidx: _breakpoint_symidx, breakpoint_args: _symidx_vec_to_observe  } => vec![],
            NhwcInstrType::Alloc { var_symidx: _, vartype: _, } => vec![],
            NhwcInstrType::Globl { var_symidx: _, vartype: _ } => vec![],
            NhwcInstrType::Load { lhs: _, ptr_symidx: ptr_symdix, ptr_ty: _ } => vec![ptr_symdix],
            NhwcInstrType::Store { val_symidx: value, ptr_symidx, ptr_ty: _, value_ty: _ } => vec![value,ptr_symidx],
            NhwcInstrType::GetElementPtr { lhs: _, array_ty: _ty, array_or_ptr_symidx: array_symidx, idx_vec } => {
                // // we will don't seem array_symidx as a kind of `use` in ssa because it will not affect the ptr as the version of a changes
                idx_vec.iter().filter(|idx|idx.is_some()).map(|idx|idx.as_ref().unwrap()).chain(vec![array_symidx].into_iter()).collect_vec()
            },
            NhwcInstrType::Nope {  } => vec![],
            NhwcInstrType::Mu { may_use_symidx, may_use_instr: _ } => vec![may_use_symidx],
            NhwcInstrType::Chi { lhs: _, rhs , may_def_instr: _} => vec![rhs],
        };
        vec
    }
        pub fn get_mut_ssa_direct_def_symidx_vec(&mut self)->Vec<&mut RcSymIdx>{
        match &mut self.instr_type{
            NhwcInstrType::Label { label_symidx:_ } => vec![],
            NhwcInstrType::DefineFunc { func_symidx, ret_symidx:_, args } => {
                {
                    let mut symidx_vec= vec![];
                    args.iter_mut().map(|arg| symidx_vec.push(arg)).count();
                    symidx_vec

                }
            },
            NhwcInstrType::DefineVar { var_symidx, vartype:_, op_value:_ } => {
                vec![var_symidx]
            },
            NhwcInstrType::Arith { lhs, rhs:_ } => { vec![lhs] },
            NhwcInstrType::SimpleAssign { lhs, rhs:_, vartype: _ } => {
                 vec![lhs] 
            },
            NhwcInstrType::Call { op_assigned_symidx: assigned, func_op:_ } => if let  Some(symidx)= assigned{
                vec![symidx]
            }else{
                vec![]
            },
            NhwcInstrType::Jump { jump_op: _op } => vec![],
            NhwcInstrType::Phi { lhs, rhs:_ } => vec![lhs],
            NhwcInstrType::TranType { lhs, op:_ } => vec![lhs],
            NhwcInstrType::BreakPoint { symidx: _breakpoint_symidx, breakpoint_args: _symidx_vec_to_observe  } => vec![],
            NhwcInstrType::Alloc { var_symidx: _, vartype: _, } => vec![],
            NhwcInstrType::Globl { var_symidx: _, vartype: _ } => vec![],
            NhwcInstrType::Load { lhs, ptr_symidx: _ptr_symdix, ptr_ty: _ } => vec![lhs],
            NhwcInstrType::Store { val_symidx: _value, ptr_symidx: _, ptr_ty: _, value_ty: _ } => vec![],
            NhwcInstrType::GetElementPtr { lhs, array_ty: _ty, array_or_ptr_symidx: _, idx_vec: _ } => vec![lhs],
            NhwcInstrType::Nope {  } => vec![],
            NhwcInstrType::Mu { may_use_symidx: _ , may_use_instr:_usize} => vec![],
            NhwcInstrType::Chi { lhs, rhs: _ ,may_def_instr:_usize} => vec![lhs],
        }
    }
    pub fn get_mut_direct_use_symidx_vec(&mut self)->Vec<&mut RcSymIdx>{
        match &mut self.instr_type{
            NhwcInstrType::Label { label_symidx:_ } => vec![],
            NhwcInstrType::DefineFunc { func_symidx:_, ret_symidx:_, args: _ } => {
                vec![]
            },
            NhwcInstrType::DefineVar { var_symidx:_, vartype:_, op_value } => {
                match op_value{
                    Some(value) => vec![value],
                    None => vec![],
                }
            },
            NhwcInstrType::Arith { lhs:_, rhs } => { match rhs{
                ArithOp::Add { a, b, vartype:_ } => vec![a,b],
                ArithOp::Mul { a, b, vartype:_ } => vec![a,b],
                ArithOp::Div { a, b, vartype:_ } => vec![a,b],
                ArithOp::Sub { a, b, vartype:_ } => vec![a,b],
                ArithOp::Mod { a, b, vartype:_ } => vec![a,b],
                ArithOp::Icmp { plan:_, a, b, vartype:_ } => vec![a,b],
                ArithOp::Fcmp { plan:_, a, b, vartype:_ } => vec![a,b],
                ArithOp::LogicAnd { a, b, vartype:_ } => vec![a,b],
                ArithOp::LogicOr { a, b, vartype:_ } => vec![a,b],
                ArithOp::LogicNot { a, vartype :_} => vec![a],
            }},
            NhwcInstrType::SimpleAssign { lhs:_, rhs, vartype: _ } => {
                 vec![rhs] 
            },
            NhwcInstrType::Call { op_assigned_symidx: _assigned, func_op } => {
                func_op.actual_arg_symidx_vec.iter_mut().collect_vec()
            },
            NhwcInstrType::Jump { jump_op } => {
                match jump_op{
                    JumpOp::Ret { op_ret_sym: Some(ret_sym) } => vec![ret_sym],
                    JumpOp::Ret { op_ret_sym: None } => vec![],
                    JumpOp::Br { cond, t1: _, t2: _ } => vec![cond],
                    JumpOp::Switch { cond, default: _, compared: _ } => vec![cond],
                    JumpOp::DirectJump { label_symidx: _ } => vec![],
                }
            },
            NhwcInstrType::Phi { lhs:_, rhs } => rhs.phi_pairs.iter_mut().map(|p|&mut p.symidx).collect_vec(),
            NhwcInstrType::TranType { lhs:_, op } => match op{
                Trans::Fptosi { float_symidx } => vec![float_symidx],
                Trans::Sitofp { int_symidx } => vec![int_symidx],
                Trans::Zext { bool_symidx } => vec![bool_symidx],
                Trans::Bitcast { rptr_symidx, rptr_type:_, lptr_type:_ } => vec![rptr_symidx],
            }
            ,
            NhwcInstrType::BreakPoint { symidx: _breakpoint_symidx, breakpoint_args: _symidx_vec_to_observe  } => vec![],
            NhwcInstrType::Alloc { var_symidx: _, vartype: _, } => vec![],
            NhwcInstrType::Globl { var_symidx: _, vartype: _ } => vec![],
            NhwcInstrType::Load { lhs: _, ptr_symidx: ptr_symdix, ptr_ty: _ } => vec![ptr_symdix],
            NhwcInstrType::Store { val_symidx: value, ptr_symidx, ptr_ty: _, value_ty: _ } => vec![value,ptr_symidx],
            NhwcInstrType::GetElementPtr { lhs: _, array_ty: _ty, array_or_ptr_symidx: array_symidx, idx_vec } => idx_vec.iter_mut().filter(|idx|idx.is_some()).map(|idx|idx.as_mut().unwrap()).chain(vec![array_symidx].into_iter()).collect_vec(),
            NhwcInstrType::Nope {  } => vec![],
            NhwcInstrType::Mu { may_use_symidx, may_use_instr: _ } => vec![may_use_symidx],
            NhwcInstrType::Chi { lhs: _, rhs , may_def_instr: _} => vec![rhs],
        }
    }
    pub fn is_phi(&self)->bool{
        if let NhwcInstrType::Phi { lhs:_, rhs:_ } = &self.instr_type{
            true
        }else{
            false
        }
    }

} 
#[derive(Clone, Debug)]
pub enum CmpPlan{
    Eq,
    Ne, 
    Gt,
    Ge,
    Lt,
    Le,
}
impl CmpPlan{
    pub fn to_icmp_plan(&self) -> IcmpPlan{
        match self{
            CmpPlan::Eq => IcmpPlan::Eq,
            CmpPlan::Ne => IcmpPlan::Ne,
            CmpPlan::Gt => IcmpPlan::Sgt,
            CmpPlan::Ge => IcmpPlan::Sge,
            CmpPlan::Lt => IcmpPlan::Slt,
            CmpPlan::Le => IcmpPlan::Sle,
        }
    }
    pub fn to_fcmp_plan(&self) -> FcmpPlan{
        match self{
            CmpPlan::Eq => FcmpPlan::Oeq,
            CmpPlan::Ne => FcmpPlan::One,
            CmpPlan::Gt => FcmpPlan::Ogt,
            CmpPlan::Ge => FcmpPlan::Oge,
            CmpPlan::Lt => FcmpPlan::Olt,
            CmpPlan::Le => FcmpPlan::Ole,
        }
    }
}
#[derive(Clone, Debug,Hash,Eq,PartialEq)]
pub enum IcmpPlan {
    Eq,
    Ne, // 等与不等
    Ugt,
    Uge,
    Ult,
    Ule, //无符号比较
    Sgt,
    Sge,
    Slt,
    Sle, //有符号比较
}
#[derive(Clone, Debug,Hash,Eq,PartialEq)]
pub enum FcmpPlan {
    Oeq,
    One, // 等与不等
    Ogt,
    Oge,
    Olt,
    Ole, //有序比较
}

#[derive(Clone, Debug)]
pub struct ComparedPair {
    compared:RcSymIdx,
    label:RcSymIdx,
}
#[derive(Clone,EnumIs)]
pub enum JumpOp {
    Ret {
        op_ret_sym:Option<RcSymIdx>, // 这是返回的类型
    },
    Br {
        cond:RcSymIdx,
        t1:RcSymIdx, // 这是一个 BasicBlock 的symbol
        t2:RcSymIdx,
    },
    Switch {
        cond:RcSymIdx,
        default:RcSymIdx,
        compared:Vec<ComparedPair>,
    },
    DirectJump {
        label_symidx:RcSymIdx, // 这是 cfg blcok 的 索引
    },
}
#[derive(Clone)]
pub enum Trans {
    /// 浮点转整数
    Fptosi { float_symidx:RcSymIdx }, 
    /// 整数转浮点数
    Sitofp { int_symidx:RcSymIdx },   
    /// I1转整数
    Zext { bool_symidx:RcSymIdx },    
    /// 指针类型转指针类型，比如I32指针转F32指针  
    /// 其他类型转I1通过变量和0进行比较得到  
    /// I1转f32分两步，先转I32，后转F32  
    Bitcast { rptr_symidx:RcSymIdx, rptr_type:Type, lptr_type:Type }, 
}
impl Debug for Trans {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Sitofp { int_symidx } => write!(f, "sitofp i32 {:?} to f32", int_symidx.as_ref_borrow()),
            Self::Fptosi { float_symidx } => write!(f, "fptosi f32 {:?} to i32", float_symidx.as_ref_borrow()),
            Self::Zext { bool_symidx } => write!(f, "zext i1 {:?} to i32", bool_symidx.as_ref_borrow()),
            Self::Bitcast { lptr_type, rptr_symidx, rptr_type } => {
                write!(f, "bitcast {:?} {:?} to {:?}", rptr_type, rptr_symidx.as_ref_borrow(), lptr_type)
            }
        }
    }
}
impl From<NhwcInstrType> for NhwcInstr{
    fn from(value: NhwcInstrType) -> Self {
        NhwcInstr { instr_type: value, info: Fields::new(), text: String::new() }
    }
}
// 以下是构造函数:
impl NhwcInstrType {
    pub fn new_label(label_symidx:RcSymIdx) -> Self { Self::Label { label_symidx } }
    
    pub fn new_def_func(func_symidx:RcSymIdx, ret_type:RcSymIdx, args:Vec<RcSymIdx>) -> Self { Self::DefineFunc { func_symidx, ret_symidx: ret_type, args } }

    pub fn new_def_var(vartype:Type, var_symidx:RcSymIdx, value:Option<RcSymIdx>) -> Self { Self::DefineVar { var_symidx, vartype, op_value: value } }

    pub fn new_alloc(vartype:Type, var_symidx:RcSymIdx) -> Self { Self::Alloc { var_symidx, vartype, }  }
    pub fn new_globl(vartype:Type, var_symidx:RcSymIdx) -> Self { Self::Globl { var_symidx, vartype, }  }

    // Instruction -> Arith -> ArithOp
    pub fn new_add(lhs:RcSymIdx, a:RcSymIdx, b:RcSymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Add { a, b, vartype } } }
    pub fn new_mul(lhs:RcSymIdx, a:RcSymIdx, b:RcSymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Mul { a, b, vartype } } }
    pub fn new_div(lhs:RcSymIdx, a:RcSymIdx, b:RcSymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Div { a, b, vartype } } }
    pub fn new_sub(lhs:RcSymIdx, a:RcSymIdx, b:RcSymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Sub { a, b, vartype } } }
    pub fn new_mod(lhs:RcSymIdx, a:RcSymIdx, b:RcSymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Mod { a, b, vartype } } }
    pub fn new_icmp(lhs:RcSymIdx, plan:IcmpPlan, a:RcSymIdx, b:RcSymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Icmp { plan, a, b, vartype } } }
    pub fn new_fcmp(lhs:RcSymIdx, plan:FcmpPlan, a:RcSymIdx, b:RcSymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Fcmp { plan, a, b, vartype } } }
    pub fn new_logic_and(lhs:RcSymIdx, a:RcSymIdx, b:RcSymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::LogicAnd { a, b, vartype } } }
    pub fn new_logic_or(lhs:RcSymIdx, a:RcSymIdx, b:RcSymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::LogicOr { a, b, vartype } } }
    pub fn new_logic_not(lhs:RcSymIdx, a:RcSymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::LogicNot { a, vartype } } }
    
    pub fn new_assign(lhs:RcSymIdx, rhs:RcSymIdx, vartype:Type) -> Self { Self::SimpleAssign { lhs, rhs, vartype } }

    pub fn new_get_element_ptr(lhs:RcSymIdx, array_symidx:RcSymIdx, array_ty:Type, idx_vec:Vec<Option<RcSymIdx>> ) -> Self { Self::GetElementPtr { lhs, array_or_ptr_symidx: array_symidx, array_ty, idx_vec }}
    pub fn new_load(lhs:RcSymIdx, ptr_symidx:RcSymIdx, ptr_ty:Type) -> Self { Self::Load { lhs, ptr_symidx, ptr_ty}}
    pub fn new_store(ptr_symidx:RcSymIdx, ptr_ty:Type, value_symidx:RcSymIdx, value_ty:Type,) -> Self { Self::Store { val_symidx: value_symidx, value_ty, ptr_symidx, ptr_ty } }

    // Instruction -> Call -> FuncOp
    pub fn new_func_call(assigned:Option<RcSymIdx>, func:RcSymIdx, args:Vec<RcSymIdx>,ret_type:Type) -> Self {
        //也许可以直接传入一个Func结构体
        Self::Call { op_assigned_symidx: assigned, func_op:FuncOp { func_symidx: func, actual_arg_symidx_vec: args,ret_type } }
    }
    // Instruction -> Jump ->JumpOp
    pub fn new_ret(op_ret_sym:Option<RcSymIdx>) -> Self { Self::Jump { jump_op:JumpOp::Ret { op_ret_sym } } }
    pub fn new_br(cond:RcSymIdx, t1:RcSymIdx, t2:RcSymIdx) -> Self { Self::Jump { jump_op:JumpOp::Br { cond:cond, t1, t2 } } }
    pub fn new_switch(cond:RcSymIdx, default:RcSymIdx, compared:Vec<ComparedPair>) -> Self { Self::Jump { jump_op:JumpOp::Switch { cond, default, compared } } }
    pub fn new_jump(label_symidx:RcSymIdx) -> Self { Self::Jump { jump_op:JumpOp::DirectJump { label_symidx } } }
    
    pub fn new_phi_node(lhs:RcSymIdx, phi_pair_vec:Vec<PhiPair>) -> Self{
        Self::Phi { lhs, rhs: PhiOp { phi_pairs:phi_pair_vec  } }
    }
    pub fn new_mu(may_use_symidx :RcSymIdx, may_use_instr:usize) -> Self{
        Self::Mu { may_use_symidx, may_use_instr }
    }
    pub fn new_chi(lhs:RcSymIdx , rhs :RcSymIdx, may_def_instr:usize) -> Self{
        Self::Chi { lhs, rhs, may_def_instr }
    }

    pub fn new_breakpoint(symidx:RcSymIdx,breakpoint_args:Vec<BreakpointArg>) -> Self { Self::BreakPoint {symidx ,breakpoint_args } }
    pub fn new_exit_breakpoint(breakpoint_args:Vec<BreakpointArg>) -> Self { Self::BreakPoint {symidx:SymIdx::new(0, "exit".to_string()).as_rc() , breakpoint_args } }

    //自动类型转换
    pub fn new_int2float(int_symidx:RcSymIdx, float_symidx:RcSymIdx) -> Self { Self::TranType { lhs:float_symidx, op:Trans::Sitofp { int_symidx } } }
    pub fn new_float2int(float_symidx:RcSymIdx, int_symidx:RcSymIdx) -> Self { Self::TranType { lhs:int_symidx, op:Trans::Fptosi { float_symidx } } }
    pub fn new_bool2int(bool_symidx:RcSymIdx, int_symidx:RcSymIdx) -> Self { Self::TranType { lhs:int_symidx, op:Trans::Zext { bool_symidx } } }
    pub fn new_ptr2ptr(lptr:RcSymIdx, lptr_type:Type, rptr:RcSymIdx, rptr_type:Type) -> Self { Self::TranType { lhs:lptr, op:Trans::Bitcast { rptr_symidx:rptr, rptr_type, lptr_type } } }

    pub fn get_lhs(&self)->Option<RcSymIdx>{
        match self{
            NhwcInstrType::Arith { lhs, rhs: _ } => Some(lhs.clone()),
            NhwcInstrType::SimpleAssign { lhs, rhs: _, vartype: _ } => Some(lhs.clone()),
            NhwcInstrType::Phi { lhs, rhs: _ } => Some(lhs.clone()),
            _=>None
        }
    }
    pub fn is_br(&self) -> bool{
        if let NhwcInstrType::Jump { jump_op } = &self{
            if let JumpOp::Br { cond: _, t1: _, t2: _ } = jump_op{
                return true
            }
        }
        false
    }
}
#[derive(Clone)]
pub struct BreakpointArg{
    pub symidx:RcSymIdx,
    pub op_field_name:Option<String>,
}
impl Debug for BreakpointArg{
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match &self.op_field_name{
            Some(field_name) => write!(f,"{:?}.{}",self.symidx.as_ref_borrow(),field_name),
            None => write!(f,"{:?}",self.symidx),
        }
    }
}
impl Debug for ArithOp {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Add { a, b, vartype } => write!(f, "Add {:?} {:?}, {:?}", vartype, a.as_ref_borrow(), b.as_ref_borrow()),
            Self::Mul { a, b, vartype } => write!(f, "Mul {:?} {:?}, {:?}", vartype, a.as_ref_borrow(), b.as_ref_borrow()),
            Self::Div { a, b, vartype } => write!(f, "Div {:?} {:?}, {:?}", vartype, a.as_ref_borrow(), b.as_ref_borrow()),
            Self::Sub { a, b, vartype } => write!(f, "Sub {:?} {:?}, {:?}", vartype, a.as_ref_borrow(), b.as_ref_borrow()),
            Self::Mod { a, b, vartype } => write! {f,"Mod {:?} {:?}, {:?}",vartype,a.as_ref_borrow(),b.as_ref_borrow()},
            Self::Icmp { plan, a, b, vartype } => {
                write!(f, "icmp {:?} {:?} {:?}, {:?}", vartype, plan, a.as_ref_borrow(), b.as_ref_borrow())
            }
            Self::Fcmp { plan, a, b, vartype } => {
                write!(f, "fcmp {:?} {:?} {:?}, {:?}", vartype, plan, a.as_ref_borrow(), b.as_ref_borrow())
            }
            Self::LogicAnd { a, b, vartype } => write!(f, "And {:?} {:?}, {:?}", vartype, a.as_ref_borrow(), b.as_ref_borrow()),
            Self::LogicOr { a, b, vartype } => write!(f, "Or {:?} {:?}, {:?}", vartype, a.as_ref_borrow(), b.as_ref_borrow()),
            Self::LogicNot { a, vartype } => write!(f, "xor {:?} {:?}, true", vartype, a.as_ref_borrow()),
        }
    }
}
impl Debug for FuncOp {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let new_str_vec = self.actual_arg_symidx_vec.iter().map(|x| format!("{:?}",x.as_ref_borrow())).collect_vec();
        let arg = new_str_vec.join(", ");

        write!(f, " Call {:?} {:?}({})", self.ret_type,self.func_symidx.as_ref_borrow(), arg)
    }
}
impl Debug for JumpOp {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Ret { op_ret_sym:Some(ret_sym) } => write!(f, "ret {:?}", ret_sym.as_ref_borrow()),
            Self::Ret { op_ret_sym:None } => write!(f, "ret" ),

            Self::Br { cond, t1, t2 } => {
                write!(f, "br i1 {:?}, label {:?}, label {:?}", cond.as_ref_borrow(), t1.as_ref_borrow(), t2.as_ref_borrow())
            }

            Self::Switch { cond: _, default: _, compared: _ } => write!(f, "还没见过"),

            Self::DirectJump { label_symidx } => write!(f, "jump label: {:?}",label_symidx.as_ref_borrow()),
        }
    }
}

impl Debug for PhiOp {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        // for 
        let mut s = String::new();
        for phi_pair in self.phi_pairs.iter(){
            s+=format!("[{:?},instr:{}],",phi_pair.symidx,phi_pair.def_instr).as_str();
        }
        write!(f,"phi {}",s)
    }
}
impl Debug for NhwcInstrType {
    // 以类似llvm ir的格式打印输出
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            NhwcInstrType::Label { label_symidx } => {
                write!(f, "label {:?}:", label_symidx.as_ref_borrow())
            }
            NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
                let args:String = args.iter().map(|x| format!("{:?},",x.as_ref_borrow())).collect();
                write!(f, "Define {:?} {:?} -> {:?}", func_symidx.as_ref_borrow(), args, ret_symidx.as_ref_borrow())
            }
            NhwcInstrType::DefineVar { var_symidx, vartype, op_value } => {
                match op_value{
                    Some(value) => write!(f, "new_var {:?}:{:?} = {:?}",  var_symidx.as_ref_borrow(), vartype, value.as_ref_borrow()),
                    None => write!(f, "new_var {:?}:{:?}",  var_symidx.as_ref_borrow(), vartype),
                }
            }
            NhwcInstrType::Arith { lhs, rhs } => write!(f, "{:?} = {:?}", lhs.as_ref_borrow(), rhs),
            NhwcInstrType::SimpleAssign { lhs, rhs, vartype } => write!(f, "{:?} = {:?} {:?}", lhs.as_ref_borrow(),vartype, rhs.as_ref_borrow()),
            NhwcInstrType::Call { op_assigned_symidx: assigned, func_op } => match assigned {
                Some(symidx) => write!(f, "{:?} = {:?}",symidx.as_ref_borrow(), func_op),
                None => write!(f, "{:?}", func_op),
            },
            NhwcInstrType::Jump { jump_op: op } => write!(f, "{:?}", op),
            NhwcInstrType::Phi { lhs, rhs } => write!(f, "{:?} = {:?}",lhs.as_ref_borrow(),rhs),
            NhwcInstrType::TranType { lhs, op } => write!(f, "{:?} = {:?}", lhs.as_ref_borrow(), op),
            NhwcInstrType::BreakPoint { symidx: breakpoint_symidx, breakpoint_args  } => write!(f,"breakpoint {:?}({:?}) !",breakpoint_symidx.as_ref_borrow(),breakpoint_args),
            NhwcInstrType::Alloc { var_symidx, vartype, } => write!(f,"alloc {:?} {:?}",vartype,var_symidx.as_ref_borrow()),
            NhwcInstrType::Globl { var_symidx, vartype } => write!(f,"global {:?} {:?}",vartype,var_symidx.as_ref_borrow()),
            NhwcInstrType::Load { lhs, ptr_symidx: ptr_symdix, ptr_ty } => write!(f,"{:?} = load {:?}:{:?}",lhs.as_ref_borrow(),ptr_symdix.as_ref_borrow(),ptr_ty),
            NhwcInstrType::Store { val_symidx: value, ptr_symidx, ptr_ty, value_ty } => write!(f,"store {:?}:{:?} {:?}:{:?}",value.as_ref_borrow(),value_ty,ptr_symidx.as_ref_borrow(),ptr_ty),
            NhwcInstrType::GetElementPtr { lhs, array_ty: ty, array_or_ptr_symidx: array_symidx, idx_vec } => write!(f,"{:?} = getelementptr {:?}:{:?} {:?}",lhs.as_ref_borrow(),array_symidx,ty,idx_vec,),
            NhwcInstrType::Nope {  } => {write!(f,"(nop)")},
            NhwcInstrType::Mu { may_use_symidx, may_use_instr } => write!(f,"mu {:?}:{}",may_use_symidx, may_use_instr),
            NhwcInstrType::Chi { lhs, rhs, may_def_instr } => write!(f,"{:?} = chi {:?}:{}",lhs,rhs,may_def_instr),
        }
    }
}
impl Debug for NhwcInstr {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result {
        write!(f, " {:5}{:?} ", self.text,self.instr_type)
        // write!(f, "{} {:?} ", self.text,self.instr_type)
    }
}
