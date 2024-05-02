use itertools::Itertools;
use slab::Slab;
use std::{fmt::{Debug, Formatter}, vec};
use anyhow::{anyhow,Result};
use delegate::delegate;

use super::{
    field::{Fields, Type}, symtab::SymIdx
};


#[derive(Clone,Default,Debug)]
pub struct InstrSlab {
    instr_slab : Slab<Instruction>,
    pub info : Fields,
}

impl InstrSlab{
    pub fn new() -> Self {
        Self { instr_slab: Slab::new(), info: Fields::new() }
    }
    pub fn insert_instr(&mut self,instr:Instruction) -> usize{
        self.instr_slab.insert(instr)
    }
    pub fn get_instr(&self,idx:usize) -> Result<&Instruction>{
        self.instr_slab.get(idx).ok_or(anyhow!("在 instr_slab 中找不到对应的instruction"))
    }
    pub fn get_mut_instr(&mut self,idx:usize) -> Result<&mut Instruction>{
        self.instr_slab.get_mut(idx).ok_or(anyhow!("在 instr_slab 中找不到对应的instruction"))
    }
    delegate!{
        to self.instr_slab {
            pub fn iter(&self) -> slab::Iter<'_, Instruction> ;
        }
        to self.instr_slab {
            pub fn iter_mut(&mut self) -> slab::IterMut<'_, Instruction> ;
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
    pub func:SymIdx,
    pub args:Vec<SymIdx>, //存储所有的实参
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
#[derive(Clone)]
pub enum MemOp {
    Load { ptr:SymIdx },
    Store { value:SymIdx, ptr:SymIdx },
    Alloca { align:u32 },
}
// #[derive(Clone)]
// pub enum Op{
//     ArithOp(ArithOp),
//     FuncOp(FuncOp),
//     Jump(JumpOp)
// }

#[derive(Clone)]
pub enum InstrType {
    Label { label_symidx:SymIdx },
    //定义函数
    DefineFunc { func_symidx:SymIdx, ret_type:SymIdx, args:Vec<SymIdx> },
    //定义变量
    DefineVar { var_symidx:SymIdx, vartype:Type, value:SymIdx },
    // 算数运算符 + - * / etc.
    Arith { lhs:SymIdx, rhs:ArithOp },
    SimpleAssign { lhs:SymIdx, rhs:SymIdx },
    // 调用函数
    Call { assigned:Option<SymIdx>, func_op:FuncOp },
    // 跳转  break continue  return  etc.
    Jump { jump_op:JumpOp },
    // phi node
    Phi { lhs:SymIdx, rhs:PhiOp },
    TranType { lhs:SymIdx, op:Trans },
}
#[derive(Clone)]
pub struct Instruction {
    pub instr_type:InstrType,
    pub info:Fields,
    pub text:String,
}
impl Instruction {
    pub fn load_idx_text(&mut self,instr:usize){
        self.text += format!("{}",instr).as_str()
    }
    pub fn get_def_symidx_vec(&self)->Vec<&SymIdx>{
        match &self.instr_type{
            InstrType::Label { label_symidx } => vec![],
            InstrType::DefineFunc { func_symidx, ret_type, args } => {
                {
                    let mut symidx_vec= vec![func_symidx];
                    args.iter().map(|arg| symidx_vec.push(arg)).count();
                    symidx_vec
                }
            },
            InstrType::DefineVar { var_symidx, vartype, value } => {
                vec![var_symidx]
            },
            InstrType::Arith { lhs, rhs } => { vec![lhs] },
            InstrType::SimpleAssign { lhs, rhs } => {
                 vec![lhs] 
            },
            InstrType::Call { assigned, func_op } => if let  Some(symidx)= assigned{
                vec![symidx]
            }else{
                vec![]
            },
            InstrType::Jump { jump_op: op } => vec![],
            InstrType::Phi { lhs, rhs } => vec![lhs],
            InstrType::TranType { lhs, op } => vec![lhs],
        }
    }
    pub fn get_use_symidx_vec(&self)->Vec<&SymIdx>{
        match &self.instr_type{
            InstrType::Label { label_symidx } => vec![],
            InstrType::DefineFunc { func_symidx, ret_type, args } => {
                vec![]
            },
            InstrType::DefineVar { var_symidx, vartype, value } => {
                vec![]
            },
            InstrType::Arith { lhs, rhs } => { match rhs{
                ArithOp::Add { a, b, vartype } => vec![a,b],
                ArithOp::Mul { a, b, vartype } => vec![a,b],
                ArithOp::Div { a, b, vartype } => vec![a,b],
                ArithOp::Sub { a, b, vartype } => vec![a,b],
                ArithOp::Mod { a, b, vartype } => vec![a,b],
                ArithOp::Icmp { plan, a, b, vartype } => vec![a,b],
                ArithOp::Ucmp { plan, a, b, vartype } => vec![a,b],
                ArithOp::LogicAnd { a, b, vartype } => vec![a,b],
                ArithOp::LogicOr { a, b, vartype } => vec![a,b],
                ArithOp::LogicNot { a, vartype } => vec![a],
            }},
            InstrType::SimpleAssign { lhs, rhs } => {
                 vec![rhs] 
            },
            InstrType::Call { assigned, func_op } => if let  symidx= assigned{
                func_op.args.iter().collect_vec()
            }else{
                vec![]
            },
            InstrType::Jump { jump_op } => vec![],
            InstrType::Phi { lhs, rhs } => rhs.phi_pairs.iter().map(|p| &p.symidx).collect_vec(),
            InstrType::TranType { lhs, op } => match op{
                Trans::Fptosi { float_symidx } => vec![float_symidx],
                Trans::Sitofp { int_symidx } => vec![int_symidx],
                Trans::Zext { bool_symidx } => vec![bool_symidx],
                Trans::Bitcast { rptr_symidx, rptr_type, lptr_type } => vec![rptr_symidx],
            }
            ,
        }
    }
        pub fn get_mut_def_symidx_vec(&mut self)->Vec<&mut SymIdx>{
        match &mut self.instr_type{
            InstrType::Label { label_symidx } => vec![],
            InstrType::DefineFunc { func_symidx, ret_type, args } => {
                {
                    let mut symidx_vec= vec![func_symidx];
                    args.iter_mut().map(|arg| symidx_vec.push(arg)).count();
                    symidx_vec

                }
            },
            InstrType::DefineVar { var_symidx, vartype, value } => {
                vec![var_symidx]
            },
            InstrType::Arith { lhs, rhs } => { vec![lhs] },
            InstrType::SimpleAssign { lhs, rhs } => {
                 vec![lhs] 
            },
            InstrType::Call { assigned, func_op } => if let  Some(symidx)= assigned{
                vec![symidx]
            }else{
                vec![]
            },
            InstrType::Jump { jump_op: op } => vec![],
            InstrType::Phi { lhs, rhs } => vec![lhs],
            InstrType::TranType { lhs, op } => vec![lhs],
        }
    }
    pub fn get_mut_use_symidx_vec(&mut self)->Vec<&mut SymIdx>{
        match &mut self.instr_type{
            InstrType::Label { label_symidx } => vec![],
            InstrType::DefineFunc { func_symidx, ret_type, args } => {
                vec![]
            },
            InstrType::DefineVar { var_symidx, vartype, value } => {
                vec![]
            },
            InstrType::Arith { lhs, rhs } => { match rhs{
                ArithOp::Add { a, b, vartype } => vec![a,b],
                ArithOp::Mul { a, b, vartype } => vec![a,b],
                ArithOp::Div { a, b, vartype } => vec![a,b],
                ArithOp::Sub { a, b, vartype } => vec![a,b],
                ArithOp::Mod { a, b, vartype } => vec![a,b],
                ArithOp::Icmp { plan, a, b, vartype } => vec![a,b],
                ArithOp::Ucmp { plan, a, b, vartype } => vec![a,b],
                ArithOp::LogicAnd { a, b, vartype } => vec![a,b],
                ArithOp::LogicOr { a, b, vartype } => vec![a,b],
                ArithOp::LogicNot { a, vartype } => vec![a],
            }},
            InstrType::SimpleAssign { lhs, rhs } => {
                 vec![rhs] 
            },
            InstrType::Call { assigned, func_op } => if let  symidx= assigned{
                func_op.args.iter_mut().collect_vec()
            }else{
                vec![]
            },
            InstrType::Jump { jump_op } => vec![],
            InstrType::Phi { lhs, rhs } => rhs.phi_pairs.iter_mut().map(|p|&mut p.symidx).collect_vec(),
            InstrType::TranType { lhs, op } => match op{
                Trans::Fptosi { float_symidx } => vec![float_symidx],
                Trans::Sitofp { int_symidx } => vec![int_symidx],
                Trans::Zext { bool_symidx } => vec![bool_symidx],
                Trans::Bitcast { rptr_symidx, rptr_type, lptr_type } => vec![rptr_symidx],
            }
            ,
        }
    }
    pub fn is_phi(&self)->bool{
        if let InstrType::Phi { lhs, rhs } = &self.instr_type{
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
#[derive(Clone)]
pub enum JumpOp {
    Ret {
        ret_sym:SymIdx, // 这是返回的类型
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
        cfg_dst_label:u32, // 这是 cfg blcok 的 索引
    },
}
#[derive(Clone)]
pub enum Trans {
    Fptosi { float_symidx:SymIdx }, //浮点转整数
    Sitofp { int_symidx:SymIdx },   //整数转浮点数
    Zext { bool_symidx:SymIdx },    //I1转整数
    Bitcast { rptr_symidx:SymIdx, rptr_type:Type, lptr_type:Type }, //指针类型转指针类型，比如I32指针转F32指针
                                    //其他类型转I1通过变量和0进行比较得到
                                    //I1转f32分两步，先转I32，后转F32
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
impl InstrType {
    pub fn to_instr(self) -> Instruction { Instruction { instr_type:self, info:Fields::new(), text: String::new() } }
    pub fn new_def_func(func_symidx:SymIdx, ret_type:SymIdx, args:Vec<SymIdx>) -> Self { Self::DefineFunc { func_symidx, ret_type, args } }
    pub fn new_label(label_symidx:SymIdx) -> Self { Self::Label { label_symidx } }

    pub fn new_def_var(vartype:Type, varname:SymIdx, value:SymIdx) -> Self { Self::DefineVar { var_symidx:varname, vartype, value } }
    pub fn new_assign(lhs:SymIdx, rhs:SymIdx) -> Self { Self::SimpleAssign { lhs, rhs } }
    pub fn new_phi_node(lhs:SymIdx, phi_pair_vec:Vec<PhiPair>) -> Self{
        Self::Phi { lhs, rhs: PhiOp { phi_pairs:phi_pair_vec  } }
    }

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
    // Instruction -> Call -> FuncOp
    pub fn new_func_call(assigned:Option<SymIdx>, func:SymIdx, args:Vec<SymIdx>) -> Self {
        //也许可以直接传入一个Func结构体
        Self::Call { assigned, func_op:FuncOp { func, args } }
    }
    // Instruction -> Jump ->JumpOp
    pub fn new_ret(ret_sym:SymIdx) -> Self { Self::Jump { jump_op:JumpOp::Ret { ret_sym } } }
    pub fn new_br(cond:SymIdx, t1:SymIdx, t2:SymIdx) -> Self { Self::Jump { jump_op:JumpOp::Br { cond:cond, t1, t2 } } }
    pub fn new_switch(cond:SymIdx, default:SymIdx, compared:Vec<ComparedPair>) -> Self { Self::Jump { jump_op:JumpOp::Switch { cond, default, compared } } }
    pub fn new_jump(cfg_dst_label:u32) -> Self { Self::Jump { jump_op:JumpOp::DirectJump { cfg_dst_label } } }
    //自动类型转换
    pub fn new_int2float(int_symidx:SymIdx, float_symidx:SymIdx) -> Self { Self::TranType { lhs:float_symidx, op:Trans::Sitofp { int_symidx } } }
    pub fn new_float2int(float_symidx:SymIdx, int_symidx:SymIdx) -> Self { Self::TranType { lhs:int_symidx, op:Trans::Fptosi { float_symidx } } }
    pub fn new_bool2int(bool_symidx:SymIdx, int_symidx:SymIdx) -> Self { Self::TranType { lhs:int_symidx, op:Trans::Zext { bool_symidx } } }
    pub fn new_ptr2ptr(lptr:SymIdx, lptr_type:Type, rptr:SymIdx, rptr_type:Type) -> Self { Self::TranType { lhs:lptr, op:Trans::Bitcast { rptr_symidx:rptr, rptr_type, lptr_type } } }

    pub fn get_lhs(&self)->Option<SymIdx>{
        match self{
            InstrType::Arith { lhs, rhs } => Some(lhs.clone()),
            InstrType::SimpleAssign { lhs, rhs } => Some(lhs.clone()),
            InstrType::Phi { lhs, rhs } => Some(lhs.clone()),
            _=>None
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
        let new_str:Vec<&str> = self.args.iter().map(|x| x.symbol_name.as_str()).collect();
        let arg = new_str.join(", ");

        write!(f, "call type {:?}(type {:?})", self.func, arg)
    }
}
impl Debug for JumpOp {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Ret { ret_sym } => write!(f, "ret type {:?}", ret_sym),

            Self::Br { cond, t1, t2 } => {
                write!(f, "br i1 {:?}, label {:?}, label {:?}", cond, t1, t2)
            }

            Self::Switch { cond: _, default, compared: _ } => write!(f, "还没见过"),

            Self::DirectJump { cfg_dst_label } => write!(f, "还没见过"),
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
impl Debug for InstrType {
    // 以类似llvm ir的格式打印输出
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Arith { lhs, rhs } => write!(f, "{:?} = {:?}", lhs, rhs),

            Self::Call { assigned, func_op } => match assigned {
                Some(symidx) => write!(f, "{:?} = {:?}", symidx, func_op),

                None => write!(f, "{:?}", func_op),
            },

            Self::Jump { jump_op: op } => write!(f, "{:?}", op),

            Self::Phi { lhs, rhs } => write!(f, "{:?} = {:?}",lhs,rhs),
            Self::SimpleAssign { lhs, rhs } => write!(f, "{:?} = {:?}", lhs, rhs),
            Self::DefineFunc { func_symidx: funname, ret_type: rettype, args: paralst } => {
                write!(f, "Define {:?} {:?} {:?}", rettype, funname, paralst)
            }
            Self::DefineVar { var_symidx: varname, vartype, value } => {
                if value.symbol_name.is_empty() {
                    Ok(write!(f, "Alloc {:?} %{:?}", vartype, varname)?)
                } else {
                    Ok(write!(f, "Alloc {:?} %{:?} = {:?}", vartype, varname, value)?)
                }
            }
            Self::Label { label_symidx } => {
                write!(f, "     label {:?}:", label_symidx)
            }
            Self::TranType { lhs, op } => write!(f, "{:?} = {:?}", lhs, op),
        }
    }
}
impl Debug for Instruction {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result {
        write!(f, " {:?}{:?} ", self.text,self.instr_type)
        // write!(f, "{} {:?} ", self.text,self.instr_type)
    }
}
