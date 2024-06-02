use itertools::Itertools;
use slab::Slab;
use strum_macros::EnumIs;
use std::{fmt::{Debug, Formatter}, vec};
use anyhow::{anyhow,Result};
use delegate::delegate;

use super::{
    field::{Fields, Type}, symtab::SymIdx
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


#[derive(Clone)]
pub enum ArithOp {
    Add {
        a:SymIdx,
        b:SymIdx,
        vartype:Type,
    },
    Mul {
        a:SymIdx,
        b:SymIdx,
        vartype:Type,
    },
    Div {
        a:SymIdx,
        b:SymIdx,
        vartype:Type,
    },
    Sub {
        a:SymIdx,
        b:SymIdx,
        vartype:Type,
    },
    Mod {
        a:SymIdx,
        b:SymIdx,
        vartype:Type,
    },
    //整数比较
    Icmp {
        plan:IcmpPlan,
        a:SymIdx, //寄存器或者数
        b:SymIdx,
        vartype:Type,
    },
    Ucmp {
        plan:UcmpPlan,
        a:SymIdx, //寄存器或者数
        b:SymIdx,
        vartype:Type,
    },
    LogicAnd {
        a:SymIdx,
        b:SymIdx,
        vartype:Type,
    },
    LogicOr {
        a:SymIdx,
        b:SymIdx,
        vartype:Type,
    },
    LogicNot {
        a:SymIdx,
        vartype:Type,
    },
}
#[derive(Clone)]
pub struct FuncOp {
    pub func_symidx:SymIdx,
    pub actual_arg_symidx_vec:Vec<SymIdx>, //存储所有的实参
    pub ret_type:Type
}
#[derive(Clone,PartialEq,Eq)]
pub struct PhiPair {
    pub symidx:SymIdx,
    pub def_instr:usize,
}
impl PhiPair{
    pub fn new(symidx:SymIdx ,  def_instr:usize)->Self{
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
            if phi_pair.symidx.to_src_symidx() == phi_pair_to_insert.symidx.to_src_symidx() && phi_pair.def_instr == phi_pair_to_insert.def_instr {
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
    Label { label_symidx:SymIdx },
    //定义函数
    DefineFunc { func_symidx:SymIdx, ret_symidx:SymIdx, args:Vec<SymIdx> },
    //定义变量
    DefineVar { var_symidx:SymIdx, vartype:Type, op_value:Option<SymIdx> },
    Alloc { var_symidx:SymIdx, vartype:Type },
    Global { var_symidx:SymIdx, vartype:Type },
    Load { lhs:SymIdx ,ptr_symidx:SymIdx ,ptr_ty:Type},
    Store { value_symidx:SymIdx, value_ty:Type, ptr_symidx:SymIdx , ptr_ty:Type},
    /// 注意getelementptr 的 ty 必须是一个 数组
    GetElementPtr { lhs:SymIdx  ,array_symidx:SymIdx,array_ty:Type, idx_vec:Vec<SymIdx>},
    // 算数运算符 + - * / etc.
    Arith { lhs:SymIdx, rhs:ArithOp },
    SimpleAssign { lhs:SymIdx, rhs:SymIdx },
    // 调用函数
    Call { op_assigned_symidx:Option<SymIdx>, func_op:FuncOp },
    // 跳转  break continue  return  etc.
    Jump { jump_op:JumpOp },
    // phi node
    Phi { lhs:SymIdx, rhs:PhiOp },
    TranType { lhs:SymIdx, op:Trans },
    // 断点     只在simulator中使用
    BreakPoint { symidx:SymIdx, breakpoint_args:Vec<BreakpointArg>},
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
    pub fn get_def_and_use_symidx_vec(&self)->Vec<&SymIdx>{
        let all_symidx_vec = self.get_def_symidx_vec();
        self.get_use_symidx_vec().append(&mut self.get_use_symidx_vec());
        all_symidx_vec
    }
    pub fn get_def_symidx_vec(&self)->Vec<&SymIdx>{
        let vec = match &self.instr_type{
            NhwcInstrType::Label { label_symidx:_ } => vec![],
            NhwcInstrType::DefineFunc { func_symidx, ret_symidx:_, args } => {
                {
                    let mut symidx_vec= vec![func_symidx];
                    args.iter().map(|arg| symidx_vec.push(arg)).count();
                    symidx_vec
                }
            },
            NhwcInstrType::DefineVar { var_symidx, vartype:_, op_value:_ } => {
                vec![var_symidx]
            },
            NhwcInstrType::Arith { lhs, rhs:_ } => { vec![lhs] },
            NhwcInstrType::SimpleAssign { lhs, rhs:_ } => {
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
            NhwcInstrType::GetElementPtr { array_ty: _ty, array_symidx: _, idx_vec: _, lhs } => vec![lhs],
            NhwcInstrType::Global { var_symidx: _, vartype: _, } => vec![],
            /// 这几个都认为是没有ssa 层面上的def 
            NhwcInstrType::Alloc { var_symidx: _, vartype: _, } => vec![],
            NhwcInstrType::Load { ptr_symidx: _ptr_symdix, lhs, ptr_ty: _ } => vec![lhs],
            NhwcInstrType::Store { value_symidx: _value, ptr_symidx: _, ptr_ty: _, value_ty: _ } => vec![],
            NhwcInstrType::Nope {  } => vec![],
        };
        vec
    }
    pub fn get_use_symidx_vec(&self)->Vec<&SymIdx>{
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
                ArithOp::Ucmp { plan:_, a, b, vartype:_ } => vec![a,b],
                ArithOp::LogicAnd { a, b, vartype:_ } => vec![a,b],
                ArithOp::LogicOr { a, b, vartype:_ } => vec![a,b],
                ArithOp::LogicNot { a, vartype:_ } => vec![a],
            }},
            NhwcInstrType::SimpleAssign { lhs:_, rhs } => {
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
            NhwcInstrType::Global { var_symidx: _, vartype: _ } => vec![],
            NhwcInstrType::Load { lhs: _, ptr_symidx: ptr_symdix, ptr_ty: _ } => vec![ptr_symdix],
            NhwcInstrType::Store { value_symidx: value, ptr_symidx, ptr_ty: _, value_ty: _ } => vec![value,ptr_symidx],
            NhwcInstrType::GetElementPtr { lhs: _, array_ty: _ty, array_symidx, idx_vec } => idx_vec.iter().chain(vec![array_symidx].into_iter()).collect_vec(),
            NhwcInstrType::Nope {  } => vec![],
        };
        vec
    }
        pub fn get_mut_def_symidx_vec(&mut self)->Vec<&mut SymIdx>{
        match &mut self.instr_type{
            NhwcInstrType::Label { label_symidx:_ } => vec![],
            NhwcInstrType::DefineFunc { func_symidx, ret_symidx:_, args } => {
                {
                    let mut symidx_vec= vec![func_symidx];
                    args.iter_mut().map(|arg| symidx_vec.push(arg)).count();
                    symidx_vec

                }
            },
            NhwcInstrType::DefineVar { var_symidx, vartype:_, op_value:_ } => {
                vec![var_symidx]
            },
            NhwcInstrType::Arith { lhs, rhs:_ } => { vec![lhs] },
            NhwcInstrType::SimpleAssign { lhs, rhs:_ } => {
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
            NhwcInstrType::Global { var_symidx: _, vartype: _ } => vec![],
            NhwcInstrType::Load { lhs, ptr_symidx: _ptr_symdix, ptr_ty: _ } => vec![lhs],
            NhwcInstrType::Store { value_symidx: _value, ptr_symidx: _, ptr_ty: _, value_ty: _ } => vec![],
            NhwcInstrType::GetElementPtr { lhs, array_ty: _ty, array_symidx: _, idx_vec: _ } => vec![lhs],
            NhwcInstrType::Nope {  } => vec![],
        }
    }
    pub fn get_mut_use_symidx_vec(&mut self)->Vec<&mut SymIdx>{
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
                ArithOp::Ucmp { plan:_, a, b, vartype:_ } => vec![a,b],
                ArithOp::LogicAnd { a, b, vartype:_ } => vec![a,b],
                ArithOp::LogicOr { a, b, vartype:_ } => vec![a,b],
                ArithOp::LogicNot { a, vartype :_} => vec![a],
            }},
            NhwcInstrType::SimpleAssign { lhs:_, rhs } => {
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
            NhwcInstrType::Global { var_symidx: _, vartype: _ } => vec![],
            NhwcInstrType::Load { lhs: _, ptr_symidx: ptr_symdix, ptr_ty: _ } => vec![ptr_symdix],
            NhwcInstrType::Store { value_symidx: value, ptr_symidx, ptr_ty: _, value_ty: _ } => vec![value,ptr_symidx],
            NhwcInstrType::GetElementPtr { lhs: _, array_ty: _ty, array_symidx, idx_vec } => idx_vec.iter_mut().chain(vec![array_symidx].into_iter()).collect_vec(),
            NhwcInstrType::Nope {  } => vec![],
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
#[derive(Clone, Debug)]
pub enum UcmpPlan {
    Oeq,
    One, // 等与不等
    Ogt,
    Oge,
    Olt,
    Ole, //有序比较
}

#[derive(Clone, Debug)]
pub struct ComparedPair {
    compared:SymIdx,
    label:SymIdx,
}
#[derive(Clone,EnumIs)]
pub enum JumpOp {
    Ret {
        op_ret_sym:Option<SymIdx>, // 这是返回的类型
    },
    Br {
        cond:SymIdx,
        t1:SymIdx, // 这是一个 BasicBlock 的symbol
        t2:SymIdx,
    },
    Switch {
        cond:SymIdx,
        default:SymIdx,
        compared:Vec<ComparedPair>,
    },
    DirectJump {
        label_symidx:SymIdx, // 这是 cfg blcok 的 索引
    },
}
#[derive(Clone)]
pub enum Trans {
    /// 浮点转整数
    Fptosi { float_symidx:SymIdx }, 
    /// 整数转浮点数
    Sitofp { int_symidx:SymIdx },   
    /// I1转整数
    Zext { bool_symidx:SymIdx },    
    /// 指针类型转指针类型，比如I32指针转F32指针  
    /// 其他类型转I1通过变量和0进行比较得到  
    /// I1转f32分两步，先转I32，后转F32  
    Bitcast { rptr_symidx:SymIdx, rptr_type:Type, lptr_type:Type }, 
}
impl Debug for Trans {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Sitofp { int_symidx } => write!(f, "sitofp i32 {:?} to f32", int_symidx),
            Self::Fptosi { float_symidx } => write!(f, "fptosi f32 {:?} to i32", float_symidx),
            Self::Zext { bool_symidx } => write!(f, "zext i1 {:?} to i32", bool_symidx),
            Self::Bitcast { lptr_type, rptr_symidx, rptr_type } => {
                write!(f, "bitcast {:?} {:?} to {:?}", rptr_type, rptr_symidx, lptr_type)
            }
        }
    }
}
// 以下是构造函数:
impl NhwcInstrType {
    pub fn to_instr(self) -> NhwcInstr { NhwcInstr { instr_type:self, info:Fields::new(), text: String::new() } }

    pub fn new_label(label_symidx:SymIdx) -> Self { Self::Label { label_symidx } }
    
    pub fn new_def_func(func_symidx:SymIdx, ret_type:SymIdx, args:Vec<SymIdx>) -> Self { Self::DefineFunc { func_symidx, ret_symidx: ret_type, args } }

    pub fn new_def_var(vartype:Type, var_symidx:SymIdx, value:Option<SymIdx>) -> Self { Self::DefineVar { var_symidx, vartype, op_value: value } }

    pub fn new_alloc(vartype:Type, var_symidx:SymIdx) -> Self { Self::Alloc { var_symidx, vartype, }  }
    pub fn new_global(vartype:Type, var_symidx:SymIdx) -> Self { Self::Global { var_symidx, vartype, }  }

    // Instruction -> Arith -> ArithOp
    pub fn new_add(lhs:SymIdx, a:SymIdx, b:SymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Add { a, b, vartype } } }
    pub fn new_mul(lhs:SymIdx, a:SymIdx, b:SymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Mul { a, b, vartype } } }
    pub fn new_div(lhs:SymIdx, a:SymIdx, b:SymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Div { a, b, vartype } } }
    pub fn new_sub(lhs:SymIdx, a:SymIdx, b:SymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Sub { a, b, vartype } } }
    pub fn new_mod(lhs:SymIdx, a:SymIdx, b:SymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Mod { a, b, vartype } } }
    pub fn new_icmp(lhs:SymIdx, plan:IcmpPlan, a:SymIdx, b:SymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Icmp { plan, a, b, vartype } } }
    pub fn new_ucmp(lhs:SymIdx, plan:UcmpPlan, a:SymIdx, b:SymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::Ucmp { plan, a, b, vartype } } }
    pub fn new_logic_and(lhs:SymIdx, a:SymIdx, b:SymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::LogicAnd { a, b, vartype } } }
    pub fn new_logic_or(lhs:SymIdx, a:SymIdx, b:SymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::LogicOr { a, b, vartype } } }
    pub fn new_logic_not(lhs:SymIdx, a:SymIdx, vartype:Type) -> Self { Self::Arith { lhs, rhs:ArithOp::LogicNot { a, vartype } } }
    
    pub fn new_assign(lhs:SymIdx, rhs:SymIdx) -> Self { Self::SimpleAssign { lhs, rhs } }

    pub fn new_get_element_ptr(lhs:SymIdx, array_symidx:SymIdx, array_ty:Type, idx_vec:Vec<SymIdx> ) -> Self { Self::GetElementPtr { lhs, array_symidx, array_ty, idx_vec }}
    pub fn new_load(lhs:SymIdx, ptr_symidx:SymIdx, ptr_ty:Type) -> Self { Self::Load { lhs, ptr_symidx, ptr_ty}}
    pub fn new_store(ptr_symidx:SymIdx, ptr_ty:Type, value_symidx:SymIdx, value_ty:Type,) -> Self { Self::Store { value_symidx, value_ty, ptr_symidx, ptr_ty } }

    // Instruction -> Call -> FuncOp
    pub fn new_func_call(assigned:Option<SymIdx>, func:SymIdx, args:Vec<SymIdx>,ret_type:Type) -> Self {
        //也许可以直接传入一个Func结构体
        Self::Call { op_assigned_symidx: assigned, func_op:FuncOp { func_symidx: func, actual_arg_symidx_vec: args,ret_type } }
    }
    // Instruction -> Jump ->JumpOp
    pub fn new_ret(op_ret_sym:Option<SymIdx>) -> Self { Self::Jump { jump_op:JumpOp::Ret { op_ret_sym } } }
    pub fn new_br(cond:SymIdx, t1:SymIdx, t2:SymIdx) -> Self { Self::Jump { jump_op:JumpOp::Br { cond:cond, t1, t2 } } }
    pub fn new_switch(cond:SymIdx, default:SymIdx, compared:Vec<ComparedPair>) -> Self { Self::Jump { jump_op:JumpOp::Switch { cond, default, compared } } }
    pub fn new_jump(label_symidx:SymIdx) -> Self { Self::Jump { jump_op:JumpOp::DirectJump { label_symidx } } }
    
    pub fn new_phi_node(lhs:SymIdx, phi_pair_vec:Vec<PhiPair>) -> Self{
        Self::Phi { lhs, rhs: PhiOp { phi_pairs:phi_pair_vec  } }
    }

    pub fn new_breakpoint(symidx:SymIdx,breakpoint_args:Vec<BreakpointArg>) -> Self { Self::BreakPoint {symidx ,breakpoint_args } }
    pub fn new_exit_breakpoint(breakpoint_args:Vec<BreakpointArg>) -> Self { Self::BreakPoint {symidx:SymIdx::new(0, "exit".to_string()) ,breakpoint_args } }

    //自动类型转换
    pub fn new_int2float(int_symidx:SymIdx, float_symidx:SymIdx) -> Self { Self::TranType { lhs:float_symidx, op:Trans::Sitofp { int_symidx } } }
    pub fn new_float2int(float_symidx:SymIdx, int_symidx:SymIdx) -> Self { Self::TranType { lhs:int_symidx, op:Trans::Fptosi { float_symidx } } }
    pub fn new_bool2int(bool_symidx:SymIdx, int_symidx:SymIdx) -> Self { Self::TranType { lhs:int_symidx, op:Trans::Zext { bool_symidx } } }
    pub fn new_ptr2ptr(lptr:SymIdx, lptr_type:Type, rptr:SymIdx, rptr_type:Type) -> Self { Self::TranType { lhs:lptr, op:Trans::Bitcast { rptr_symidx:rptr, rptr_type, lptr_type } } }

    pub fn get_lhs(&self)->Option<SymIdx>{
        match self{
            NhwcInstrType::Arith { lhs, rhs: _ } => Some(lhs.clone()),
            NhwcInstrType::SimpleAssign { lhs, rhs: _ } => Some(lhs.clone()),
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
    pub symidx:SymIdx,
    pub op_field_name:Option<String>,
}
impl Debug for BreakpointArg{
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match &self.op_field_name{
            Some(field_name) => write!(f,"{:?}.{}",self.symidx,field_name),
            None => write!(f,"{:?}",self.symidx),
        }
    }
}
impl Debug for ArithOp {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Add { a, b, vartype } => write!(f, "Add {:?} {:?}, {:?}", vartype, a, b),
            Self::Mul { a, b, vartype } => write!(f, "Mul {:?} {:?}, {:?}", vartype, a, b),
            Self::Div { a, b, vartype } => write!(f, "Div {:?} {:?}, {:?}", vartype, a, b),
            Self::Sub { a, b, vartype } => write!(f, "Sub {:?} {:?}, {:?}", vartype, a, b),
            Self::Mod { a, b, vartype } => write! {f,"Mod {:?} {:?}, {:?}",vartype,a,b},
            Self::Icmp { plan, a, b, vartype } => {
                write!(f, "icmp {:?} {:?} {:?}, {:?}", vartype, plan, a, b)
            }
            Self::Ucmp { plan, a, b, vartype } => {
                write!(f, "ucmp {:?} {:?} {:?}, {:?}", vartype, plan, a, b)
            }
            Self::LogicAnd { a, b, vartype } => write!(f, "And {:?} {:?}, {:?}", vartype, a, b),
            Self::LogicOr { a, b, vartype } => write!(f, "Or {:?} {:?}, {:?}", vartype, a, b),
            Self::LogicNot { a, vartype } => write!(f, "xor {:?} {:?}, true", vartype, a),
        }
    }
}
impl Debug for FuncOp {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let new_str_vec = self.actual_arg_symidx_vec.iter().map(|x| format!("{:?}",x)).collect_vec();
        let arg = new_str_vec.join(", ");

        write!(f, " Call {:?} {:?}({})", self.ret_type,self.func_symidx, arg)
    }
}
impl Debug for JumpOp {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Ret { op_ret_sym:Some(ret_sym) } => write!(f, "ret {:?}", ret_sym),
            Self::Ret { op_ret_sym:None } => write!(f, "ret" ),

            Self::Br { cond, t1, t2 } => {
                write!(f, "br i1 {:?}, label {:?}, label {:?}", cond, t1, t2)
            }

            Self::Switch { cond: _, default: _, compared: _ } => write!(f, "还没见过"),

            Self::DirectJump { label_symidx } => write!(f, "jump label: {:?}",label_symidx),
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
                write!(f, "label {:?}:", label_symidx)
            }
            NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
                write!(f, "Define {:?} {:?} -> {:?}", func_symidx, args, ret_symidx)
            }
            NhwcInstrType::DefineVar { var_symidx: varname, vartype, op_value: value } => {
                match value{
                    Some(value) => write!(f, "new_var {:?}:{:?} = {:?}",  varname, vartype, value),
                    None => write!(f, "new_var {:?}:{:?}",  varname, vartype),
                }
            }
            NhwcInstrType::Arith { lhs, rhs } => write!(f, "{:?} = {:?}", lhs, rhs),
            NhwcInstrType::SimpleAssign { lhs, rhs } => write!(f, "{:?} = {:?}", lhs, rhs),
            NhwcInstrType::Call { op_assigned_symidx: assigned, func_op } => match assigned {
                Some(symidx) => write!(f, "{:?} = {:?}",symidx, func_op),
                None => write!(f, "{:?}", func_op),
            },
            NhwcInstrType::Jump { jump_op: op } => write!(f, "{:?}", op),
            NhwcInstrType::Phi { lhs, rhs } => write!(f, "{:?} = {:?}",lhs,rhs),
            NhwcInstrType::TranType { lhs, op } => write!(f, "{:?} = {:?}", lhs, op),
            NhwcInstrType::BreakPoint { symidx: breakpoint_symidx, breakpoint_args  } => write!(f,"breakpoint {:?}({:?}) !",breakpoint_symidx,breakpoint_args),
            NhwcInstrType::Alloc { var_symidx, vartype, } => write!(f,"alloc {:?} {:?}",vartype,var_symidx),
            NhwcInstrType::Global { var_symidx, vartype } => write!(f,"global {:?} {:?}",vartype,var_symidx),
            NhwcInstrType::Load { lhs, ptr_symidx: ptr_symdix, ptr_ty } => write!(f,"{:?} = load {:?}:{:?}",lhs,ptr_symdix,ptr_ty),
            NhwcInstrType::Store { value_symidx: value, ptr_symidx, ptr_ty, value_ty } => write!(f,"store {:?}:{:?} {:?}:{:?}",value,value_ty,ptr_symidx,ptr_ty),
            NhwcInstrType::GetElementPtr { lhs, array_ty: ty, array_symidx, idx_vec } => write!(f,"{:?} = getelementptr {:?}:{:?} {:?}",lhs,array_symidx,ty,idx_vec,),
            NhwcInstrType::Nope {  } => {write!(f,"(nop)")},
        }
    }
}
impl Debug for NhwcInstr {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result {
        write!(f, " {:5}{:?} ", self.text,self.instr_type)
        // write!(f, "{} {:?} ", self.text,self.instr_type)
    }
}
