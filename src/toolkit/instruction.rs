use super::symbol_table::{Symbol, SymbolBehavior, SymbolIndex};

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
pub struct FuncOp{
    func:SymbolIndex,
    args:Vec<SymbolIndex>       //存储所有的实参
}
pub struct PhiPair{
    value : SymbolIndex,
    bb : SymbolIndex,
}
pub struct PhiOp{
    syms : Vec<PhiPair>,
}
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
pub enum Op{
    ArithOp(ArithOp),
    FuncOp(FuncOp),
    Jump(JumpOp)
}
enum Instruction{
    Assign{
        lhs:SymbolIndex,
        rhs:ArithOp,
    },
    NotAssign{
        op:Op,
    }
}
enum IcmpPlan{
    eq,ne,              // 等与不等
    ugt,uge,ult,ule,    //无符号比较
    sgt,sge,slt,sle,    //有符号比较
}
struct ComparedPair{
    compared : SymbolIndex,
    label : SymbolIndex,
}
enum JumpOp{
    Ret{
        ret_sym : SymbolIndex , // 这是返回的类型
    },
    Br{
        cond : SymbolIndex ,
        t1 : SymbolIndex ,
        t2 : SymbolIndex,
    },
    Switch{
        cond : SymbolIndex,
        default : SymbolIndex,
        compared: Vec<ComparedPair>,
    },
    Jump{
        cfg_des_label : u32 , // 这是 cfg blcok 的 索引
    },
}


