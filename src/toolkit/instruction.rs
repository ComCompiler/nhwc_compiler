use std::fmt::Debug;

use syn::ExprCall;

use super::symbol_table::{Symbol, SymbolBehavior, SymbolIndex};

#[derive(Clone)]
pub enum ArithOp{        
    Add{
        a : SymbolIndex ,
        b : SymbolIndex ,
    },
    Mul{
        a : SymbolIndex ,
        b : SymbolIndex ,
    },
    Div{
        a : SymbolIndex ,
        b : SymbolIndex ,
    },
    Sub{
        a : SymbolIndex ,
        b : SymbolIndex ,
    },
    Icmp{
        plan : IcmpPlan,
        a : SymbolIndex ,       //寄存器或者数
        b : SymbolIndex ,
    },
}
#[derive(Clone)]
pub struct FuncOp{
    func:SymbolIndex,
    args:Vec<SymbolIndex>       //存储所有的实参
}
#[derive(Clone)]
pub struct PhiPair{
    variable : SymbolIndex,
    bb : SymbolIndex,
}
#[derive(Clone)]
pub struct PhiOp{
    syms : Vec<PhiPair>,
}
#[derive(Clone)]
pub enum MemOp{
    Load{
        ptr: SymbolIndex,
    },
    Store{
        value : SymbolIndex,
        ptr: SymbolIndex,
    },
    Alloca{
        align:u32,
    }
}
// #[derive(Clone)]
// pub enum Op{
//     ArithOp(ArithOp),
//     FuncOp(FuncOp),
//     Jump(JumpOp)
// }

#[derive(Clone)]
pub enum Instruction{
    // 算数运算符 + - * / etc.
    Arith{
        lhs:SymbolIndex,
        rhs:ArithOp,
    },
    SimpleAssign{
        lhs: SymbolIndex,
        rhs: SymbolIndex,
    },
    // 调用函数
    Call{
        assigned : Option<SymbolIndex>,
        func_op : FuncOp
    },
    // 跳转  break continue  return  etc.
    Jump{
        op:JumpOp,
    },
    // phi node 
    Phi{
        lhs : SymbolIndex,
        rhs : PhiOp,
    },
}
#[derive(Clone,Debug)]
pub enum IcmpPlan{
    eq,ne,              // 等与不等
    ugt,uge,ult,ule,    //无符号比较
    sgt,sge,slt,sle,    //有符号比较
}
#[derive(Clone,Debug)]
pub struct ComparedPair{
    compared : SymbolIndex,
    label : SymbolIndex,
}
#[derive(Clone)]
pub enum JumpOp{
    Ret{
        ret_sym : SymbolIndex , // 这是返回的类型
    },
    Br{
        cond : SymbolIndex ,
        t1 : SymbolIndex , // 这是一个 BasicBlock 的symbol 
        t2 : SymbolIndex,
    },
    Switch{
        cond : SymbolIndex,
        default : SymbolIndex,
        compared: Vec<ComparedPair>,
    },
    DirectJump{
        cfg_dst_label : u32 , // 这是 cfg blcok 的 索引
    },
}


// 以下是构造函数:
impl Instruction{
    // Instruction -> Arith -> ArithOp
    pub fn new_add(lhs: SymbolIndex, a:SymbolIndex,b:SymbolIndex) -> Self{
        Self::Arith { lhs:lhs, rhs: ArithOp::Add { a: a, b: b } }
    }
    pub fn new_mul(lhs: SymbolIndex, a:SymbolIndex,b:SymbolIndex) -> Self{
        Self::Arith { lhs:lhs, rhs: ArithOp::Mul { a: a, b: b } }
    }
    pub fn new_div(lhs: SymbolIndex, a:SymbolIndex,b:SymbolIndex) -> Self{
        Self::Arith { lhs:lhs, rhs: ArithOp::Div { a: a, b: b } }
    }
    pub fn new_sub(lhs: SymbolIndex, a:SymbolIndex,b:SymbolIndex) -> Self{
        Self::Arith { lhs:lhs, rhs: ArithOp::Sub { a: a, b: b } }
    }
    pub fn new_icmp(lhs: SymbolIndex, plan:IcmpPlan,a:SymbolIndex,b:SymbolIndex) -> Self{
        Self::Arith { lhs:lhs, rhs: ArithOp::Icmp { plan:plan,a: a, b: b } }
    }
    // Instruction -> Call -> FuncOp
    pub fn new_func_call(assigned:Option<SymbolIndex> , func:SymbolIndex , args:Vec<SymbolIndex>) ->Self{       //也许可以直接传入一个Func结构体
        Self::Call { assigned: assigned, func_op: FuncOp { func: func, args: args } }
    }
    // Instruction -> Jump ->JumpOp
    pub fn new_ret(ret_sym:SymbolIndex) -> Self{
        Self::Jump { op: JumpOp::Ret { ret_sym: ret_sym } }
    }
    pub fn new_br(cond:SymbolIndex,t1:SymbolIndex,t2:SymbolIndex) ->Self{
        Self::Jump { op: JumpOp::Br { cond: cond, t1: t1, t2: t2 } }
    }
    pub fn new_switch(cond : SymbolIndex,default : SymbolIndex,compared: Vec<ComparedPair>) -> Self{
        Self::Jump { op: JumpOp::Switch { cond: cond, default: default, compared: compared } }
    }
    pub fn new_jump(cfg_dst_label : u32) ->Self{
        Self::Jump { op: JumpOp::DirectJump { cfg_dst_label: cfg_dst_label } }
    }
}
impl Debug for ArithOp{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Add { a, b } => 
                write!(f,"Add type {}, {}",a.symbol_name,b.symbol_name),
            Self::Mul { a, b } => 
                write!(f,"Mul type {}, {}",a.symbol_name,b.symbol_name),
            Self::Div { a, b } => 
                write!(f,"Div type {}, {}",a.symbol_name,b.symbol_name),
            Self::Sub { a, b } => 
                write!(f,"Sub type {}, {}",a.symbol_name,b.symbol_name),
            Self::Icmp { plan, a, b } => 
                write!(f,"icmp {:?} type {}, {}",plan,a.symbol_name,b.symbol_name)
        }
    }
}
impl Debug for FuncOp{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let new_str : Vec<&str>=self.args.iter().map(|x|x.symbol_name.as_str()).collect();
        let arg = new_str.join(", ");
        
        write!(f,"call type {}(type {})",self.func.symbol_name,arg)
    }
}
impl Debug for JumpOp{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Ret { ret_sym } =>
                write!(f,"ret type {}",ret_sym.symbol_name),
            
            Self::Br { cond, t1, t2 } => 
                write!(f,"br i1 {}, label {}, label {}" , cond.symbol_name,t1.symbol_name,t2.symbol_name),
            
            Self::Switch { cond, default, compared } =>     
                write!(f,"还没见过"),
            
            Self::DirectJump { cfg_dst_label } => 
                write!(f,"还没见过"),
        }
    }
}

impl Debug for PhiOp{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        // write!(f,"phi type [{}, {}], [{},{}]",)
        todo!()
    }
}
impl Debug for Instruction{ // 以类似llvm ir的格式打印输出
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            
            Self::Arith { lhs, rhs } => 
                write!(f,"%{} = {:?}",lhs.symbol_name,rhs),
            
            Self::Call { assigned, func_op } => 
                match assigned{
                    Some(symidx)=>
                        write!(f,"{}={:?}",symidx.symbol_name,func_op),
                    
                    None => 
                        write!(f,"{:?}",func_op)
                }
            
            Self::Jump { op } => 
                write!(f,"{:?}",op),
            
            Self::Phi { lhs, rhs } => 
                write!(f,""),
            Self::SimpleAssign { lhs, rhs }=>{
                write!(f,"{}={}",lhs.symbol_name,rhs.symbol_name)
            },
        }
    }            
    
}