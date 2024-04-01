use std::fmt::{Debug, Formatter};
use petgraph::{data, visit::Data};

use super::{field::{Type, Value}, symbol::Symbol, symbol_table::SymbolIndex};

#[derive(Clone)]
pub enum ArithOp{        
    Add{
        a : SymbolIndex ,
        b : SymbolIndex ,
        vartype : Type ,
    },
    Mul{
        a : SymbolIndex ,
        b : SymbolIndex ,
        vartype : Type ,

    },
    Div{
        a : SymbolIndex ,
        b : SymbolIndex ,
        vartype : Type ,
   },
    Sub{
        a : SymbolIndex ,
        b : SymbolIndex ,
        vartype : Type ,
    },
    Icmp{
        plan : IcmpPlan,
        a : SymbolIndex ,       //寄存器或者数
        b : SymbolIndex ,
        vartype : Type ,
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
    //定义函数
    Deffun{
        funname:SymbolIndex,
        rettype:SymbolIndex,
        paralst:Vec<SymbolIndex>,
    },
    //定义变量
    Defvar{
        varname:SymbolIndex,
        vartype:Type,
        value:SymbolIndex,
    },
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
    pub fn new_deffun(funname:SymbolIndex,rettype:SymbolIndex,paralst:Vec<SymbolIndex>) -> Self{
        Self::Deffun { funname ,rettype, paralst }
    }

    pub fn new_defvar(vartype:Type,varname:SymbolIndex,value:SymbolIndex) -> Self{
        Self::Defvar { varname, vartype, value }
    }
    pub fn new_assign(lhs:SymbolIndex,rhs:SymbolIndex) ->Self{
        Self::SimpleAssign { lhs, rhs }
    }
    
    // Instruction -> Arith -> ArithOp
    pub fn new_add(lhs: SymbolIndex, a:SymbolIndex,b:SymbolIndex,vartype:Type) -> Self{
        Self::Arith {lhs, rhs: ArithOp::Add { a, b, vartype } }
    }
    pub fn new_mul(lhs: SymbolIndex, a:SymbolIndex,b:SymbolIndex,vartype:Type) -> Self{
        Self::Arith {lhs, rhs: ArithOp::Mul { a,  b, vartype} }
    }
    pub fn new_div(lhs: SymbolIndex, a:SymbolIndex,b:SymbolIndex,vartype:Type) -> Self{
        Self::Arith { lhs, rhs: ArithOp::Div { a, b, vartype } }
    }
    pub fn new_sub(lhs: SymbolIndex, a:SymbolIndex,b:SymbolIndex,vartype:Type) -> Self{
        Self::Arith {lhs, rhs: ArithOp::Sub {a, b, vartype } }
    }
    pub fn new_icmp(lhs: SymbolIndex, plan:IcmpPlan,a:SymbolIndex,b:SymbolIndex,vartype:Type) -> Self{
        Self::Arith {lhs, rhs: ArithOp::Icmp { plan,a, b, vartype } }
    }
    // Instruction -> Call -> FuncOp
    pub fn new_func_call(assigned:Option<SymbolIndex> , func:SymbolIndex , args:Vec<SymbolIndex>) ->Self{       //也许可以直接传入一个Func结构体
        Self::Call {  assigned, func_op: FuncOp { func,args } }
    }
    // Instruction -> Jump ->JumpOp
    pub fn new_ret(ret_sym:SymbolIndex) -> Self{
        Self::Jump { op: JumpOp::Ret { ret_sym } }
    }
    pub fn new_br(cond:SymbolIndex,t1:SymbolIndex,t2:SymbolIndex) ->Self{
        Self::Jump { op: JumpOp::Br { cond: cond, t1,t2 } }
    }
    pub fn new_switch(cond : SymbolIndex,default : SymbolIndex,compared: Vec<ComparedPair>) -> Self{
        Self::Jump { op: JumpOp::Switch {cond,  default, compared } }
    }
    pub fn new_jump(cfg_dst_label : u32) ->Self{
        Self::Jump { op: JumpOp::DirectJump {  cfg_dst_label } }
    }
}
impl Debug for ArithOp{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Add { a, b, vartype } => 
                write!(f,"Add {:?} {:?}, {:?}",vartype,a,b),
            Self::Mul { a, b, vartype } => 
                write!(f,"Mul {:?} {:?}, {:?}",vartype,a,b),
            Self::Div { a, b, vartype } => 
                write!(f,"Div {:?} {:?}, {:?}",vartype, a,b),
            Self::Sub { a, b, vartype } => 
                write!(f,"Sub {:?} {:?}, {:?}",vartype, a,b),
            Self::Icmp { plan, a, b, vartype } => 
                write!(f,"icmp {:?} {:?} {:?}, {:?}",vartype,plan,a,b)
        }
    }
}
impl Debug for FuncOp{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let new_str : Vec<&str>=self.args.iter().map(|x|x.symbol_name.as_str()).collect();
        let arg = new_str.join(", ");
        
        write!(f,"call type {:?}(type {:?})",self.func,arg)
    }
}
impl Debug for JumpOp{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Ret { ret_sym } =>
                write!(f,"ret type {:?}",ret_sym),
            
            Self::Br { cond, t1, t2 } => 
                write!(f,"br i1 {:?}, label {:?}, label {:?}" , cond,t1,t2),
            
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
                write!(f,"{:?} = {:?}\n",lhs,rhs),
            
            Self::Call { assigned, func_op } => 
                match assigned{
                    Some(symidx)=>
                        write!(f,"{:?} = {:?}\n",symidx,func_op),
                    
                    None => 
                        write!(f,"{:?}",func_op)
                }
            
            Self::Jump { op } => 
                write!(f,"{:?}",op),
            
            Self::Phi { lhs, rhs } => 
                write!(f,"phi函数,但是还没写呢"),
            Self::SimpleAssign { lhs, rhs }=>
                write!(f,"Assign {:?},{:?}\n",lhs,rhs),
            Self::Deffun { funname, rettype, paralst } =>
                write!(f,"Define {:?} {:?} {:?}\n",rettype,funname,paralst),
            Self::Defvar { varname, vartype, value } => {
                if value.symbol_name.is_empty() {
                    Ok(write!(f, "Alloc {:?} %{:?}\n", vartype, varname)?)
                } else {
                    Ok(write!(f, "Alloc {:?} %{:?} = {:?}\n", vartype, varname, value)?)
                }
            }
        }
    }            
}

//只写了riscv手册里rv32 的 base的部分
pub enum RiscInstr{
    BaseIntInstr(BaseIntInstr)
}
pub enum BaseIntInstr{
    Shifts(Shifts),
    Arithmetic(Arithmetic),
    Logical(Logical),
    Compare(Compare),
    Branch(Branch),
    JumpAndLink(JumpAndLink),
    Environment(Environment),
    CSR(CSR),
    Loads(Loads),
    Stores(Stores)
}

pub struct Register{
    reg_name : SymbolIndex
}
impl Debug for Register{
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(f,"{:?}",self.reg_name)
    }
}
pub enum Shifts{
    /// Shift Left Logical
    /// 逻辑左移
    SLL{
        rd : Register,
        rs1 : Register,
        rs2 : Register
    },
    /// Shift Left Log Imm
    /// 立即数逻辑左移
    SLLI{
        rd : Register,
        rs1 : Register,
        shamt : Value
    },
    /// Shift Right Logical
    /// 逻辑右移
    SRL{
        rd : Register,
        rs1 : Register,
        rs2 : Register
    },
    /// Shift Right Log Imm
    /// 立即数逻辑右移
    SRLI {
        rd: Register,
        rs1: Register,
        shamt: Value
    },
    /// Shift Right Arithmetic
    /// 算术右移
    SRA {
        rd : Register,
        rs1 : Register,
        rs2 : Register
    },
    ///Shift Right ArithImm
    /// 立即数算术右移
    SRAI {
        rd: Register,
        rs1: Register,
        shamt: Value
    }
}
impl Debug for Shifts{
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match self{
            Shifts::SLL{rd,rs1,rs2} => write!(f,"SLL %{:?},%{:?},%{:?}",rd,rs1,rs2),
            Shifts::SLLI{rd,rs1,shamt} => write!(f,"SLLI %{:?},%{:?},{:?}",rd,rs1,shamt),
            Shifts::SRL{rd,rs1,rs2} => write!(f,"SRL %{:?},%{:?},%{:?}",rd,rs1,rs2),
            Shifts::SRLI{rd,rs1,shamt} => write!(f,"SRLI %{:?},%{:?},{:?}",rd,rs1,shamt),
            Shifts::SRA{rd,rs1,rs2} => write!(f,"SRA %{:?},%{:?},%{:?}",rd,rs1,rs2),
            Shifts::SRAI{rd,rs1,shamt} => write!(f,"SRAI %{:?},%{:?},{:?}",rd,rs1,shamt)
        }
    }
}
pub enum Arithmetic {
    /// ADD
    ADD{
        rd : Register,
        rs1 : Register,
        rs2 : Register
    },
    /// ADD Imediate
    ADDI{
        rd: Register,
        rs1: Register,
        imm: Value
    },
    /// SUBtract
    SUB{
        rd : Register,
        rs1 : Register,
        rs2 : Register
    },
    /// Load Upper Imm
    LUI{
        rd: Register,
        imm: Value
    },
    /// Add Upper Imm To PC
    AUIPC{
        rd: Register,
        imm: Value
    },
}
impl Debug for Arithmetic {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Arithmetic::ADD{rd,rs1,rs2} => write!(f,"ADD %{:?},%{:?},%{:?}",rd,rs1,rs2),
            Arithmetic::ADDI{rd,rs1,imm} => write!(f,"ADDI %{:?},%{:?},{:?}",rd,rs1,imm),
            Arithmetic::SUB{rd,rs1,rs2} => write!(f,"SUB %{:?},%{:?},%{:?}",rd,rs1,rs2),
            Arithmetic::LUI{rd,imm} => write!(f,"LUI %{:?},{:?}",rd,imm),
            Arithmetic::AUIPC{rd,imm} => write!(f,"AUIPC %{:?},{:?}",rd,imm),

        }
    }
}
pub enum Logical {

    /// XOR
    XOR{
        rd : Register,
        rs1 : Register,
        rs2 : Register
    },
    /// XOR Immediate
    XORI{
        rd: Register,
        rs1: Register,
        imm: Value
    },
    /// OR
    Or{
        rd : Register,
        rs1 : Register,
        rs2 : Register
    },
    /// OR Immdiate
    ORImmediate{
        rd: Register,
        rs1: Register,
        imm: Value,
    },
    /// AND
    And{
        rd : Register,
        rs1 : Register,
        rs2 : Register
    },
    /// AND Immediate
    AndI{
        rd: Register,
        rs1: Register,
        imm: Value
    }
}
impl Debug for Logical{
    fn fmt(&self,f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            Logical::XOR{rd,rs1,rs2} => write!(f,"XOR %{:?},%{:?},%{:?}",rd,rs1,rs2),
            Logical::XORI{rd,rs1,imm} => write!(f,"XORI %{:?},%{:?},{:?}",rd,rs1,imm),
            Logical::Or{rd,rs1,rs2} => write!(f,"OR %{:?},%{:?},%{:?}",rd,rs1,rs2),
            Logical::ORImmediate{rd,rs1,imm} => write!(f,"ORI %{:?},%{:?},{:?}",rd,rs1,imm),
            Logical::And{rd,rs1,rs2} => write!(f,"AND %{:?},%{:?},%{:?}",rd,rs1,rs2),
            Logical::AndI{rd,rs1,imm} => write!(f,"ANDI %{:?},%{:?},{:?}",rd,rs1,imm),
        }
    }
}
pub enum Compare{
    /// Set <
    SLT{
        rd : Register,
        rs1 : Register,
        rs2 : Register
    },
    ///Set < Immediate
    SLTI{
        rd: Register,
        rs1: Register,
        imm: Value,
    },
    /// Set < Unsigned
    SLTU{
        rd : Register,
        rs1 : Register,
        rs2 : Register
    },
    /// Set < Imm Unsigned
    SLTUI{
        rd: Register,
        rs1: Register,
        imm: Value,
    }
}
impl Debug for Compare{
    fn fmt(&self,f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            Compare::SLT{rd,rs1,rs2} => write!(f,"SLT %{:?},%{:?},%{:?}",rd,rs1,rs2),
            Compare::SLTI{rd,rs1,imm} => write!(f,"SLTI %{:?},%{:?},{:?}",rd,rs1,imm),
            Compare::SLTU{rd,rs1,rs2} => write!(f,"SLTU %{:?},%{:?},%{:?}",rd,rs1,rs2),
            Compare::SLTUI{rd,rs1,imm} => write!(f,"SLTUI %{:?},%{:?},{:?}",rd,rs1,imm),
        }
    }
}
pub enum Branch{
    /// Branch =
    BEQ{
        rs1 : Register,
        rs2 : Register,
        imm : Value
    },
    /// Branch Not Equal
    BNE{
        rs1 : Register,
        rs2 : Register,
        imm : Value
    },
    /// Branch Less Than
    BLT{
        rs1 : Register,
        rs2 : Register,
        imm : Value
    },
    /// Branch Less Than Unsigned
    BGE{
        rs1 : Register,
        rs2 : Register,
        imm : Value
    },
    /// Branch < Unsigned
    BLTU{
        rs1 : Register,
        rs2 : Register,
        imm : Value
    },
    /// Branch >= Unsigned
    BGEU{
        rs1 : Register,
        rs2 : Register,
        imm : Value
    }
}
impl Debug for Branch{
    fn fmt(&self,f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            Branch::BEQ{rs1,rs2,imm} => write!(f,"BEQ %{:?},%{:?},{:?}",rs1,rs2,imm),
            Branch::BNE{rs1,rs2,imm} => write!(f,"BNE %{:?},%{:?},{:?}",rs1,rs2,imm),
            Branch::BLT{rs1,rs2,imm} => write!(f,"BLT %{:?},%{:?},{:?}",rs1,rs2,imm),
            Branch::BGE{rs1,rs2,imm} => write!(f,"BGE %{:?},%{:?},{:?}",rs1,rs2,imm),
            Branch::BLTU{rs1,rs2,imm} => write!(f,"BLTU %{:?},%{:?},{:?}",rs1,rs2,imm),
            Branch::BGEU{rs1,rs2,imm} => write!(f,"BGEU %{:?},%{:?},{:?}",rs1,rs2,imm)
        }
    }
}
pub enum JumpAndLink{
    /// Jump & Link 
    JAL{
        rd : Register,
        imm : Value
    },
    /// Jump & Link Register
    JALR{
        rd : Register,
        rs1 : Register,
        imm : Value
    }
}
impl Debug for JumpAndLink{
    fn fmt(&self,f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            JumpAndLink::JAL{rd,imm} => write!(f,"JAL %{:?},{:?}",rd,imm),
            JumpAndLink::JALR{rd,rs1,imm} => write!(f,"JALR %{:?},%{:?},{:?}",rd,rs1,imm)
        }
    }
}
pub enum Environment {
    /// CALL
    ECALL{},
    ///BREAK
    EBREAK{}
}
impl Debug for Environment{
    fn fmt(&self,f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            Environment::ECALL{} => write!(f,"ECALL"),
            Environment::EBREAK{} => write!(f,"EBREAK")
        }
    }
}
/// Control Status Register 控制和状态寄存器
pub enum CSR {
    ///Read / Write
    CSRRW{
        rd : Register,
        csr : Register,
        rs1 : Register,
    },
    /// Read & Set Bit
    CSRRS{
        rd : Register,
        csr : Register,
        rs1 : Register,
    },
    /// Read & Clear Bit
    CSRRC{
        rd : Register,
        csr : Register,
        rs1 : Register,
    },
    /// Read / Write Imm
    CSRRWI{
        rd : Register,
        csr : Register,
        imm : Value
    },
    /// Read & Set Bit Imm
    CSRRSI{
        rd : Register,
        csr : Register,
        imm : Value
    },
    /// Read & Clear Bit Imm
    CSRRCI{
        rd : Register,
        csr : Register,
        imm : Value
    }
}
impl Debug for CSR{
    fn fmt(&self,f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            CSR::CSRRW{rd,csr,rs1} => write!(f,"CSRRW %{:?},%{:?},%{:?}",rd,csr,rs1),
            CSR::CSRRS{rd,csr,rs1} => write!(f,"CSRRS %{:?},%{:?},%{:?}",rd,csr,rs1),
            CSR::CSRRC{rd,csr,rs1} => write!(f,"CSRRC %{:?},%{:?},%{:?}",rd,csr,rs1),
            CSR::CSRRSI{rd,csr,imm} => write!(f,"CSRRSI %{:?},%{:?},{:?}",rd,csr,imm),
            CSR::CSRRCI{rd,csr,imm} => write!(f,"CSRRCI %{:?},%{:?},{:?}",rd,csr,imm),
            CSR::CSRRWI{rd,csr,imm} => write!(f,"CSRRWI %{:?},%{:?},{:?}",rd,csr,imm),
        }
    }
}
pub enum Loads{
    /// Load Byte
    LB{
        rd : Register,
        rs1 : Register,
        imm : Value
    },
    /// Load Halfword
    LH{
        rd : Register,
        rs1 : Register,
        imm : Value
    },
    /// Load Byte Unsigned
    LBU{
        rd : Register,
        rs1 : Register,
        imm : Value
    },
    /// Load Half Unsigned
    LHU{
        rd : Register,
        rs1 : Register,
        imm : Value
    },
    /// Load Word
    LW{
        rd : Register,
        rs1 : Register,
        imm : Value
    }
}
impl Debug for Loads{

    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            Loads::LB{rd,rs1,imm} => write!(f,"LB %{:?},%{:?}(%{:?})",rd,imm,rs1),
            Loads::LH{rd,rs1,imm} => write!(f,"LH %{:?},%{:?}(%{:?})",rd,imm,rs1),
            Loads::LBU{rd,rs1,imm} => write!(f,"LBU %{:?},%{:?}(%{:?})",rd,imm,rs1),
            Loads::LHU{rd,rs1,imm} => write!(f,"LHU %{:?},%{:?}(%{:?})",rd,imm,rs1),
            Loads::LW{rd,rs1,imm} => write!(f,"LW %{:?},%{:?}(%{:?})",rd,imm,rs1),
        }
    }
}
pub enum Stores {
    /// Store Byte
    SB{
        rs1 : Register,
        rs2 : Register,
        imm : Value
    },
    /// Store Halfword
    SH{
        rs1 : Register,
        rs2 : Register,
        imm : Value
    },
    ///Store Word
    SW{
        rs1 : Register,
        rs2 : Register,
        imm : Value
    }
}
impl Debug for Stores{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            Stores::SB{rs1,rs2,imm} => write!(f,"SB %{:?},%{:?}(%{:?})",rs1,rs2,imm),
            Stores::SH{rs1,rs2,imm} => write!(f,"SH %{:?},%{:?}(%{:?})",rs1,rs2,imm),
            Stores::SW{rs1,rs2,imm} => write!(f,"SW %{:?},%{:?}(%{:?})",rs1,rs2,imm)

        }
    }

}