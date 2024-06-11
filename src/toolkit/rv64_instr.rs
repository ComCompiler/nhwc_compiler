use std::fmt::{Debug, Formatter};
use anyhow::*;


use derive_new::new;

use super::{symtab::SymIdx};


// #[derive(Clone)]
// pub struct RiscvInstr {
//     pub instr_type:RiscvInstrType,
//     pub info:Fields,
//     pub text:String,
// }

#[derive(Clone)]
pub enum Imm{
    Label{
        symidx:SymIdx,
    },
    Literal{
        symidx:SymIdx,
    }
}
impl Imm{
    pub fn new_label(label:SymIdx) -> Self{
        Self::Label { symidx:label } 
    }
    pub fn new_literal(symidx:SymIdx) -> Self{
        Self::Literal { symidx }
    }
    pub fn from_offset(offset:isize)-> Self{
        Self::Literal { symidx:SymIdx::from(offset) }
    }
}

impl Debug for Imm{
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Label {symidx} =>{
                write!(f,"{}",symidx)
            },
            Self::Literal { symidx } => {
                write!(f,"{}", symidx)
            }
        }
    }
}
//只写了riscv手册里rv32 的 base的部分
#[derive(Clone)]
pub enum RV64Instr {
    BaseIntInstr(BaseIntInstr),
    PseudoInstr(PseudoInstr),
}
impl Debug for RV64Instr{
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::BaseIntInstr(arg0) => {
                write!(f,"{:?}",arg0)
            },
            RV64Instr::PseudoInstr(arg0) => {
                write!(f,"{:?}",arg0)
            },
        }
    }
}

#[derive(Clone, derive_new::new)]
pub enum PseudoInstr {
    Nop {}, //无操作指令
    Neg {rd:Register ,rs:Register},//rs取反存到rd中
    Negw {rd:Register ,rs:Register},//同上

    //和0直接比较
    Snez {rd:Register ,rs:Register},//如果寄存器rs非零，则将1存入寄存器rd中。
    Sltz {rd:Register ,rs:Register},//如果寄存器rs小于零，则将1存入寄存器rd中。
    Sgtz {rd:Register ,rs:Register},//如果寄存器rs大于零，则将1存入寄存器rd中。
    Seqz {rd:Register ,rs:Register},//如果寄存器rs等于零，则将1存入寄存器rd中。

    //有条件跳转
    //和0比较
    Beqz {rs:Register ,offset:Imm},//如果寄存器rs等于零，根据偏移量offset进行分支。
    Bnez {rs:Register ,offset:Imm},//如果寄存器rs不等于零，根据偏移量offset进行分支。
    Blez {rs:Register ,offset:Imm},//如果寄存器rs小于等于零，根据偏移量offset进行分支。
    Bgez {rs:Register ,offset:Imm},//如果寄存器rs大于等于零，根据偏移量offset进行分支。
    Bltz {rs:Register ,offset:Imm},//如果寄存器rs小于零，根据偏移量offset进行分支。
    Bgtz {rs:Register ,offset:Imm},//如果寄存器rs大于零，根据偏移量offset进行分支。
    //两两比较
    Bgt {rs1:Register ,rs2:Register ,offset:Imm},//按有符号比较大于rs与rd的值，根据比较结果和offset进行跳转。
    Ble {rs1:Register ,rs2:Register ,offset:Imm},//按有符号或无符号比较rs与rd的值，根据比较结果和offset进行跳转。
    Bgtu {rs1:Register ,rs2:Register ,offset:Imm},
    Bleu {rs1:Register ,rs2:Register ,offset:Imm},

    //无条件跳转
    J {offset:Imm},//无条件跳转到指定偏移量或寄存器rs指示的地址。
    Jr {rs:Register },//无条件跳转到寄存器rs指示的地址/返回到调用函数。
    Ret {},
    Tail {offset:Imm},//用于尾调用优化，跳转到偏移量offset指示的地址

    //特殊寄存器操作
    Rdinstret {rd:Register },//读取特定硬件寄存器（如指令计数器、周期计数器、时间寄存器）的值到寄存器rd中
    Rdinstreth {rd:Register },
    Rdcycle {rd:Register },
    Rdcycleh {rd:Register },
    Rdtime {rd:Register },
    Rdtimeh {rd:Register },

    //内存访问load
    Lla {rd:Register ,symbol:SymIdx},//加载指定加载局部或相对地址到一个寄存器rd中。
    La {rd:Register ,symbol:SymIdx},//加载一个全局或绝对地址到寄存器rd中
    Lb {rd:Register ,symbol:SymIdx},//加载符号位置的字节到寄存器rd中
    Lh {rd:Register ,symbol:SymIdx},//加载符号位置的半字到寄存器rd中
    Lw {rd:Register ,symbol:SymIdx},//加载符号位置的字到寄存器rd中
    Ld {rd:Register ,symbol:SymIdx},//加载符号双字到寄存器rd中
    //内存访问store
    Sb {rd:Register ,symbol:SymIdx ,rt:Register},//将寄存器rt的字节字存储到指定地址或符号位置
    Sh {rd:Register ,symbol:SymIdx ,rt:Register},//将寄存器rt的半字存储到指定地址或符号位置
    Sw {rd:Register ,symbol:SymIdx ,rt:Register},//将寄存器rt的字存储到指定地址或符号位置
    Sd {rd:Register ,symbol:SymIdx ,rt:Register},//将寄存器rt的双字存储到指定地址或符号位置

    //浮点指令
    Flw {rd:Register ,symbol:SymIdx ,rt:Register},//加载一个单精度浮点数（32位）到浮点寄存器中
    Fld {rd:Register ,symbol:SymIdx ,rt:Register},//加载一个双精度浮点数（位64）到浮点寄存器中
    Fsw {rd:Register ,symbol:SymIdx ,rt:Register},//将一个单精度浮点数（32位）从浮点寄存器存储到内存中
    Fsd {rd:Register ,symbol:SymIdx ,rt:Register},//将一个双精度浮点数（64位）从浮点寄存器存储到内存中。
    Fmv_s {rd:Register ,rs:Register},//单精度符点移动
    Fabs_s {rd:Register ,rs:Register},//单精度取绝对值
    Fneg_s {rd:Register ,rs:Register},//单精度取反
    Fmv_d {rd:Register ,rs:Register},//双精度移动
    Fabs_d {rd:Register ,rs:Register},//双精度绝对值
    Fneg_d {rd:Register ,rs:Register},//双精度取反

    Li {rd:Register ,imm:Imm},//将立即数imm加载到寄存器rd中。
    Mv {rd:Register ,rs:Register},//将寄存器rs的值移动到寄存器rd中。
    Not {rd:Register ,rs:Register},//将寄存器rs的位取反存入寄存器rd中。
    Sext_w {rd:Register ,rs:Register},//符号扩展寄存器rs的值到寄存器rd中。

    Jal {offset:Imm},
    Jalr {rs:Register},

    Call {offset:Imm},

    Fence {},
}
impl Debug for PseudoInstr {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result {
        match self {
            PseudoInstr::Nop {} => write!(f, "nop"),
            PseudoInstr::Neg {rd, rs} => write!(f, "neg {:?}, {:?}", rd, rs),
            PseudoInstr::Negw {rd, rs} => write!(f, "negw {:?}, {:?}", rd, rs),

            PseudoInstr::Snez {rd, rs} => write!(f, "snez {:?}, {:?}", rd, rs),
            PseudoInstr::Sltz {rd, rs} => write!(f, "sltz {:?}, {:?}", rd, rs),
            PseudoInstr::Sgtz {rd, rs} => write!(f, "sgtz {:?}, {:?}", rd, rs),

            PseudoInstr::Beqz {rs, offset} => write!(f, "beqz {:?}, {:?}", rs, offset),
            PseudoInstr::Bnez {rs, offset} => write!(f, "bnez {:?}, {:?}", rs, offset),
            PseudoInstr::Blez {rs, offset} => write!(f, "blez {:?}, {:?}", rs, offset),
            PseudoInstr::Bgez {rs, offset} => write!(f, "bgez {:?}, {:?}", rs, offset),
            PseudoInstr::Bltz {rs, offset} => write!(f, "bltz {:?}, {:?}", rs, offset),
            PseudoInstr::Bgtz {rs, offset} => write!(f, "bgtz {:?}, {:?}", rs, offset),

            PseudoInstr::J {offset} => write!(f, "j {:?}", offset),
            PseudoInstr::Jr {rs} => write!(f, "jr {:?}", rs),
            PseudoInstr::Ret {} => write!(f, "ret"),

            PseudoInstr::Tail {offset} => write!(f, "tail {:?}", offset),

            PseudoInstr::Rdinstret {rd} => write!(f, "rdinstret {:?}", rd),
            PseudoInstr::Rdinstreth {rd} => write!(f, "rdinstreth {:?}", rd),
            PseudoInstr::Rdcycle {rd} => write!(f, "rdcycle {:?}", rd),
            PseudoInstr::Rdtime {rd} => write!(f, "rdtime {:?}", rd),
            PseudoInstr::Rdcycleh {rd} => write!(f, "rdcycleh {:?}", rd),
            PseudoInstr::Rdtimeh {rd} => write!(f, "rdtimeh {:?}", rd),

            PseudoInstr::Lla { rd, symbol } => write!(f, "lla {:?}, {:?}", rd, symbol),

            PseudoInstr::La { rd, symbol } => write!(f, "la {:?}, {:?}", rd, symbol),
            
            PseudoInstr::Lb { rd, symbol } => write!(f, "lb {:?}, {:?}", rd, symbol),
            PseudoInstr::Lh { rd, symbol } => write!(f, "lh {:?}, {:?}", rd, symbol),
            PseudoInstr::Lw { rd, symbol } => write!(f, "lw {:?}, {:?}", rd, symbol),
            PseudoInstr::Ld { rd, symbol } => write!(f, "ld {:?}, {:?}", rd, symbol),

            PseudoInstr::Sb { rd, symbol, rt } => write!(f, "sb {:?}, {:?}, {:?}", rd, symbol, rt),
            PseudoInstr::Sh { rd, symbol, rt } => write!(f, "sh {:?}, {:?}, {:?}", rd, symbol, rt),
            PseudoInstr::Sw { rd, symbol, rt } => write!(f, "sw {:?}, {:?}, {:?}", rd, symbol, rt),
            PseudoInstr::Sd { rd, symbol, rt } => write!(f, "sd {:?}, {:?}, {:?}", rd, symbol, rt),

            PseudoInstr::Flw { rd, symbol, rt } => write!(f, "flw {:?}, {:?}, {:?}", rd, symbol, rt),
            PseudoInstr::Fld { rd, symbol, rt } => write!(f, "fld {:?}, {:?}, {:?}", rd, symbol, rt),

            PseudoInstr::Fsw { rd, symbol, rt } => write!(f, "fsw {:?}, {:?}, {:?}", rd, symbol, rt),
            PseudoInstr::Fsd { rd, symbol, rt } => write!(f, "fsd {:?}, {:?}, {:?}", rd, symbol, rt),

            PseudoInstr::Li { rd, imm } => write!(f, "li {:?}, {:?}", rd, imm),
            PseudoInstr::Mv { rd, rs } => write!(f, "mv {:?}, {:?}", rd, rs),
            PseudoInstr::Not { rd, rs } => write!(f, "not {:?}, {:?}", rd, rs),
            PseudoInstr::Sext_w { rd, rs } => write!(f, "sext.w {:?}, {:?}", rd, rs),
            PseudoInstr::Seqz { rd, rs } => write!(f, "seqz {:?}, {:?}", rd, rs),

            PseudoInstr::Fmv_s { rd, rs } => write!(f, "fmv.s {:?}, {:?}", rd, rs),
            PseudoInstr::Fabs_s { rd, rs } => write!(f, "fabs.s {:?}, {:?}", rd, rs),
            PseudoInstr::Fneg_s { rd, rs } => write!(f, "fneg.s {:?}, {:?}", rd, rs),
            PseudoInstr::Fmv_d { rd, rs } => write!(f, "fmv.d {:?}, {:?}", rd, rs),
            PseudoInstr::Fabs_d { rd, rs } => write!(f, "fabs.d {:?}, {:?}", rd, rs),
            PseudoInstr::Fneg_d { rd, rs } => write!(f, "fneg.d {:?}, {:?}", rd, rs),

            PseudoInstr::Bgt { rs1: rs, rs2: rd, offset } => write!(f, "bgt {:?}, {:?}, {:?}", rs, rd, offset),
            PseudoInstr::Ble { rs1: rs, rs2: rd, offset } => write!(f, "ble {:?}, {:?}, {:?}", rs, rd, offset),
            PseudoInstr::Bgtu { rs1: rs, rs2: rd, offset } => write!(f, "bgtu {:?}, {:?}, {:?}", rs, rd, offset),
            PseudoInstr::Bleu { rs1: rs, rs2: rd, offset } => write!(f, "bleu {:?}, {:?}, {:?}", rs, rd, offset),

            PseudoInstr::Jal { offset } => write!(f, "jal x1, {:?}", offset),
            PseudoInstr::Jalr { rs} => write!(f, "jalr x1, {:?}, 0", rs),

            PseudoInstr::Call { offset } => write!(f, "call {:?}", offset),

            PseudoInstr::Fence {  } => write!(f, "fence iorw, iorw"),
        }
    }
}

#[derive(Clone)]
pub enum BaseIntInstr {
    Shifts(Shifts),
    Arithmetic(Arithmetic),
    Logical(Logical),
    Compare(Compare),
    Branch(Branch),
    JumpAndLink(JumpAndLink),
    Environment(Environment),
    CSR(CSR),
    Loads(Loads),
    Stores(Stores),
    Trans(Trans),
}
impl Debug for BaseIntInstr{
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Shifts(arg0) => write!(f,"{:?}",arg0),
            Self::Arithmetic(arg0) => write!(f,"{:?}",arg0),
            Self::Logical(arg0) => write!(f,"{:?}",arg0),
            Self::Compare(arg0) => write!(f,"{:?}",arg0),
            Self::Branch(arg0) => write!(f,"{:?}",arg0),
            Self::JumpAndLink(arg0) => write!(f,"{:?}",arg0),
            Self::Environment(arg0) => write!(f,"{:?}",arg0),
            Self::CSR(arg0) => write!(f,"{:?}",arg0),
            Self::Loads(arg0) => write!(f,"{:?}",arg0),
            Self::Stores(arg0) => write!(f,"{:?}",arg0),
            Self::Trans(arg0) => write!(f,"{:?}",arg0),
        }
    }
}

macro_rules! impl_from {
    ($t1:ident,$t2:ty) => {
        impl From<$t1> for $t2{
            fn from(value: $t1) -> Self {
                Self::$t1(value)
            }
        }
    };
}
/// before using this macro, you should have impl t1-> t3 , t3-> t2  respectively
macro_rules! impl_from_indirectly {
    ($t1:ident,$t3:ident,$t2:ty) => {
        impl From<$t1> for $t2{
            fn from(value: $t1) -> Self {
                Self::$t3(value.into())
            }
        }
    };
}
impl_from!(Shifts,BaseIntInstr);
impl_from!(Arithmetic,BaseIntInstr);
impl_from!(Logical,BaseIntInstr);
impl_from!(Compare,BaseIntInstr);
impl_from!(Branch,BaseIntInstr);
impl_from!(JumpAndLink,BaseIntInstr);
impl_from!(Environment,BaseIntInstr);
impl_from!(CSR,BaseIntInstr);
impl_from!(Loads,BaseIntInstr);
impl_from!(Stores,BaseIntInstr);
impl_from!(Trans,BaseIntInstr);

impl_from_indirectly!(Shifts,BaseIntInstr,RV64Instr);
impl_from_indirectly!(Arithmetic,BaseIntInstr,RV64Instr);
impl_from_indirectly!(Logical,BaseIntInstr,RV64Instr);
impl_from_indirectly!(Compare,BaseIntInstr,RV64Instr);
impl_from_indirectly!(Branch,BaseIntInstr,RV64Instr);
impl_from_indirectly!(JumpAndLink,BaseIntInstr,RV64Instr);
impl_from_indirectly!(Environment,BaseIntInstr,RV64Instr);
impl_from_indirectly!(CSR,BaseIntInstr,RV64Instr);
impl_from_indirectly!(Loads,BaseIntInstr,RV64Instr);
impl_from_indirectly!(Stores,BaseIntInstr,RV64Instr);
impl_from_indirectly!(Trans,BaseIntInstr,RV64Instr);


#[derive(Clone, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub enum  Register {
    Zero,
    RA,
    SP,
    GP,
    /// ranging from t0 to t6 
    Temp{
        reg_idx:u8,
    },
    /// ranging from s0 to s11 
    Saved{
        reg_idx:u8,
    },
    /// ranging from a0 to a7 
    Arg{
        reg_idx:u8,
    },
    /// ranging from fa0 to fa7
    FArg{
        reg_idx:u8,
    },
    Fsaved{
        reg_idx:u8,
    }
}
impl Debug for Register {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result {
        match self {
            Register::Zero{} => write!(f, "zero"),
            Register::RA{} => write!(f, "ra"),
            Register::SP{} => write!(f, "sp"),
            Register::GP{} => write!(f, "gp"),
            Register::Temp{reg_idx} => write!(f, "t{}", reg_idx),
            Register::Saved { reg_idx } => write!(f, "s{}", reg_idx),
            Register::Arg { reg_idx } => write!(f, "a{}", reg_idx),
            Register::FArg { reg_idx } => write!(f, "fa{}", reg_idx),
            Register::Fsaved { reg_idx } => write!(f, "fs{}", reg_idx),
        }
    }
}
impl Register{
    pub fn new_ra()->Self{
        Self::RA {  }
    }
    pub fn new_sp()->Self{
        Self::SP {  }
    }
    pub fn new_s0()->Self{
        Self::Saved { reg_idx: 0 }
    }
    pub fn new_s(idx:u8)->Self{
        Self::Saved { reg_idx: idx }
    }
    pub fn new_a(idx:u8)->Self{
        Self::Arg { reg_idx: idx } 
    }
    pub fn new_fa(idx:u8)->Self{
        Self::FArg { reg_idx: idx }
    }
    pub fn new_fs(idx:u8)->Self{
        Self::Fsaved { reg_idx: idx }
    }
    pub fn is_f_reg(){

    }
    pub fn is_i_reg(){
        
    }
}
#[derive(Clone,new)]
pub enum Shifts {
    /// RV32I Base                                   RV64I
    /// Shift Left Logical
    /// 逻辑左移
    SLL { rd:Register, rs1:Register, rs2:Register }, SLLW { rd:Register, rs1:Register, rs2:Register },
    /// Shift Left Log Imm
    /// 立即数逻辑左移
    SLLI { rd:Register, rs1:Register, shamt:Imm }, SLLIW { rd:Register, rs1:Register, shamt:Imm },
    /// Shift Right Logical
    /// 逻辑右移
    SRL { rd:Register, rs1:Register, rs2:Register }, SRLW { rd:Register, rs1:Register, rs2:Register },
    /// Shift Right Log Imm
    /// 立即数逻辑右移
    SRLI { rd:Register, rs1:Register, shamt:Imm }, SRLIW { rd:Register, rs1:Register, shamt:Imm },
    /// Shift Right Arithmetic
    /// 算术右移
    SRA { rd:Register, rs1:Register, rs2:Register }, SRAW { rd:Register, rs1:Register, rs2:Register },
    ///Shift Right ArithImm
    /// 立即数算术右移
    SRAI { rd:Register, rs1:Register, shamt:Imm }, SRAIW { rd:Register, rs1:Register, shamt:Imm },
}
impl Debug for Shifts {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result {
        match self {
            Shifts::SLL { rd, rs1, rs2 } => write!(f, "sll {:?},{:?},{:?}", rd, rs1, rs2),
            Shifts::SLLI { rd, rs1, shamt } => write!(f, "slli {:?},{:?},{:?}", rd, rs1, shamt),
            Shifts::SRL { rd, rs1, rs2 } => write!(f, "srl {:?},{:?},{:?}", rd, rs1, rs2),
            Shifts::SRLI { rd, rs1, shamt } => write!(f, "srli {:?},{:?},{:?}", rd, rs1, shamt),
            Shifts::SRA { rd, rs1, rs2 } => write!(f, "sra {:?},{:?},{:?}", rd, rs1, rs2),
            Shifts::SRAI { rd, rs1, shamt } => write!(f, "srai {:?},{:?},{:?}", rd, rs1, shamt),

            Shifts::SLLW { rd, rs1, rs2 } => write!(f, "sllw {:?},{:?},{:?}", rd, rs1, rs2),
            Shifts::SLLIW { rd, rs1, shamt } => write!(f, "slliw {:?},{:?},{:?}", rd, rs1, shamt),
            Shifts::SRLW { rd, rs1, rs2 } => write!(f, "srlw {:?},{:?},{:?}", rd, rs1, rs2),
            Shifts::SRLIW { rd, rs1, shamt } => write!(f, "srliw {:?},{:?},{:?}", rd, rs1, shamt),
            Shifts::SRAW { rd, rs1, rs2 } => write!(f, "sraw {:?},{:?},{:?}", rd, rs1, rs2),
            Shifts::SRAIW { rd, rs1, shamt } => write!(f, "sraiw {:?},{:?},{:?}", rd, rs1, shamt),
        }
    }
}
impl Shifts{
    /// mul 16 => shifts 4
    pub fn new_slli_from_multiple(reg1:Register,reg2:Register,mul:usize) -> Result<Self>{
        Ok(match mul{
            8 => {
                Shifts::new_slli(reg1, reg2, Imm::from_offset(3))
            },
            4 => {
                Shifts::new_slli(reg1, reg2, Imm::from_offset(2))
            },
            2 => {
                Shifts::new_slli(reg1, reg2, Imm::from_offset(1))
            },
            1 => {
                Shifts::new_slli(reg1, reg2, Imm::from_offset(0))
            },
            _ => {
                return Err(anyhow!("unexpected shift size"))
            }
        })
    }
}
#[derive(Clone,new)]
pub enum Arithmetic {
    /// RV32I Base                                  RV64I
    /// ADD
    ADD { rd:Register, rs1:Register, rs2:Register }, ADDW { rd:Register, rs1:Register, rs2:Register },
    /// ADD Imediate
    ADDI { rd:Register, rs1:Register, imm:Imm }, ADDIW { rd:Register, rs1:Register, imm:Imm },
    /// SUBtract
    SUB { rd:Register, rs1:Register, rs2:Register }, SUBW { rd:Register, rs1:Register, rs2:Register },
    /// Load Upper Imm
    LUI { rd:Register, imm:Imm },
    /// Add Upper Imm To PC
    AUIPC { rd:Register, imm:Imm },

    MUL { rd: Register, rs1: Register, rs2: Register },
    MULW { rd: Register, rs1: Register, rs2: Register },
    DIV { rd: Register, rs1: Register, rs2: Register },
    DIVW { rd: Register, rs1: Register, rs2: Register },
    REM { rd: Register, rs1: Register, rs2: Register },
    REMW { rd: Register, rs1: Register, rs2: Register },

}
impl Debug for Arithmetic {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Arithmetic::ADD { rd, rs1, rs2 } => write!(f, "add {:?},{:?},{:?}", rd, rs1, rs2),
            Arithmetic::ADDI { rd, rs1, imm } => write!(f, "addi {:?},{:?},{:?}", rd, rs1, imm),
            Arithmetic::SUB { rd, rs1, rs2 } => write!(f, "sub {:?},{:?},{:?}", rd, rs1, rs2),
            Arithmetic::LUI { rd, imm } => write!(f, "lui {:?},{:?}", rd, imm),
            Arithmetic::AUIPC { rd, imm } => write!(f, "auipc {:?},{:?}", rd, imm),

            Arithmetic::ADDW { rd, rs1, rs2 } => write!(f, "ADDW {:?},{:?},{:?}", rd, rs1, rs2),
            Arithmetic::ADDIW { rd, rs1, imm } => write!(f, "addiw {:?},{:?},{:?}", rd, rs1, imm),
            Arithmetic::SUBW { rd, rs1, rs2 } => write!(f, "subw {:?},{:?},{:?}", rd, rs1, rs2),
            Arithmetic::MUL { rd, rs1, rs2 } => write!(f, "mul {:?},{:?},{:?}", rd, rs1, rs2),
            Arithmetic::MULW { rd, rs1, rs2 } => write!(f, "mulw {:?},{:?},{:?}", rd, rs1, rs2),
            Arithmetic::DIV { rd, rs1, rs2 } => write!(f, "div {:?},{:?},{:?}", rd, rs1, rs2),
            Arithmetic::DIVW { rd, rs1, rs2 } => write!(f, "divw {:?},{:?},{:?}", rd, rs1, rs2),
            Arithmetic::REM { rd, rs1, rs2 } => write!(f, "rem {:?},{:?},{:?}", rd, rs1, rs2),
            Arithmetic::REMW { rd, rs1, rs2 } => write!(f, "remw {:?},{:?},{:?}", rd, rs1, rs2),
        }
    }
}
#[derive(Clone,new)]
pub enum Logical {
    /// XOR
    XOR { rd:Register, rs1:Register, rs2:Register },
    /// XOR Immediate
    XORI { rd:Register, rs1:Register, imm:Imm },
    /// OR
    OR { rd:Register, rs1:Register, rs2:Register },
    /// OR Immdiate
    ORI { rd:Register, rs1:Register, imm:Imm },
    /// AND
    AND { rd:Register, rs1:Register, rs2:Register },
    /// AND Immediate
    ANDI { rd:Register, rs1:Register, imm:Imm },
}
impl Debug for Logical {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Logical::XOR { rd, rs1, rs2 } => write!(f, "xor {:?},{:?},{:?}", rd, rs1, rs2),
            Logical::XORI { rd, rs1, imm } => write!(f, "xori {:?},{:?},{:?}", rd, rs1, imm),
            Logical::OR { rd, rs1, rs2 } => write!(f, "or {:?},{:?},{:?}", rd, rs1, rs2),
            Logical::ORI { rd, rs1, imm } => {
                write!(f, "ORI {:?},{:?},{:?}", rd, rs1, imm)
            }
            Logical::AND { rd, rs1, rs2 } => write!(f, "and {:?},{:?},{:?}", rd, rs1, rs2),
            Logical::ANDI { rd, rs1, imm } => write!(f, "andi {:?},{:?},{:?}", rd, rs1, imm),
        }
    }
}
#[derive(Clone, new)]
pub enum Compare {
    /// Set <
    SLT { rd:Register, rs1:Register, rs2:Register },
    ///Set < Immediate
    SLTI { rd:Register, rs1:Register, imm:Imm },
    /// Set < Unsigned
    SLTU { rd:Register, rs1:Register, rs2:Register },
    /// Set < Imm Unsigned
    SLTIU { rd:Register, rs1:Register, imm:Imm },
}
impl Debug for Compare {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Compare::SLT { rd, rs1, rs2 } => write!(f, "{:5} {:?},{:?},{:?}","slt" , rd, rs1, rs2),
            Compare::SLTI { rd, rs1, imm } => write!(f, "{:5} {:?},{:?},{:?}", "slti", rd, rs1, imm),
            Compare::SLTU { rd, rs1, rs2 } => write!(f, "{:5} {:?},{:?},{:?}","sltu", rd, rs1, rs2),
            Compare::SLTIU { rd, rs1, imm } => write!(f, "{:5} {:?},{:?},{:?}","sltiu" , rd, rs1, imm),
}
    }
}
#[derive(Clone, new)]
pub enum Branch {
    /// Branch =
    BEQ { rs1:Register, rs2:Register, imm:Imm },
    /// Branch Not Equal
    BNE { rs1:Register, rs2:Register, imm:Imm },
    /// Branch Less Than
    BLT { rs1:Register, rs2:Register, imm:Imm },
    /// Branch Less Than Unsigned
    BGE { rs1:Register, rs2:Register, imm:Imm },
    /// Branch < Unsigned
    BLTU { rs1:Register, rs2:Register, imm:Imm },
    /// Branch >= Unsigned
    BGEU { rs1:Register, rs2:Register, imm:Imm },
}
impl Debug for Branch {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Branch::BEQ { rs1, rs2, imm } => write!(f, "{:5} {:?},{:?},{:?}","beq", rs1, rs2, imm),
            Branch::BNE { rs1, rs2, imm } => write!(f, "{:5} {:?},{:?},{:?}","bne", rs1, rs2, imm),
            Branch::BLT { rs1, rs2, imm } => write!(f, "{:5} {:?},{:?},{:?}","blt", rs1, rs2, imm),
            Branch::BGE { rs1, rs2, imm } => write!(f, "{:5} {:?},{:?},{:?}","bge", rs1, rs2, imm),
            Branch::BLTU { rs1, rs2, imm } => write!(f, "{:5} {:?},{:?},{:?}","bltu", rs1, rs2, imm),
            Branch::BGEU { rs1, rs2, imm } => write!(f, "{:5} {:?},{:?},{:?}","bgeu", rs1, rs2, imm),
        }
    }
}
#[derive(Clone)]
pub enum JumpAndLink {
    /// Jump & Link
    JAL { rd:Register, imm:Imm },
    /// Jump & Link Register
    JALR { rd:Register, rs1:Register, imm:Imm },
}
impl Debug for JumpAndLink {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            JumpAndLink::JAL { rd, imm } => write!(f, "{:5} {:?},{:?}","jal", rd, imm),
            JumpAndLink::JALR { rd, rs1, imm } => write!(f, "{:5} {:?},{:?},{:?}","jalr", rd, rs1, imm),
        }
    }
}
#[derive(Clone)]
pub enum Environment {
    /// CALL
    ECALL {},
    ///BREAK
    EBREAK {},
}
impl Debug for Environment {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Environment::ECALL {} => write!(f, "{:6}","ecall"),
            Environment::EBREAK {} => write!(f, "{:6}","ebreak"),
        }
    }
}
/// Control Status Register 控制和状态寄存器
#[derive(Clone)]
pub enum CSR {
    ///Read / Write
    CSRRW { rd:Register, csr:Register, rs1:Register },
    /// Read & Set Bit
    CSRRS { rd:Register, csr:Register, rs1:Register },
    /// Read & Clear Bit
    CSRRC { rd:Register, csr:Register, rs1:Register },
    /// Read / Write Imm
    CSRRWI { rd:Register, csr:Register, imm:Imm },
    /// Read & Set Bit Imm
    CSRRSI { rd:Register, csr:Register, imm:Imm },
    /// Read & Clear Bit Imm
    CSRRCI { rd:Register, csr:Register, imm:Imm },
}
impl Debug for CSR {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            CSR::CSRRW { rd, csr, rs1 } => write!(f, "{:6} {:?},{:?},{:?}","csrrw", rd, csr, rs1),
            CSR::CSRRS { rd, csr, rs1 } => write!(f, "{:6} {:?},{:?},{:?}","csrrs", rd, csr, rs1),
            CSR::CSRRC { rd, csr, rs1 } => write!(f, "{:6} {:?},{:?},{:?}","csrrc", rd, csr, rs1),
            CSR::CSRRSI { rd, csr, imm } => write!(f, "{:6} {:?},{:?},{:?}","csrrsi", rd, csr, imm),
            CSR::CSRRCI { rd, csr, imm } => write!(f, "{:6} {:?},{:?},{:?}","csrrci", rd, csr, imm),
            CSR::CSRRWI { rd, csr, imm } => write!(f, "{:6} {:?},{:?},{:?}","csrrwi", rd, csr, imm),
        }
    }
}
#[derive(Clone,new)]
pub enum Loads {
    /// RV32I Base                              RV64I
    /// Load Byte
    LB { rd:Register, rs1:Register, imm:Imm },
    /// Load Halfword
    LH { rd:Register, rs1:Register, imm:Imm },
    /// Load Byte Unsigned
    LBU { rd:Register, rs1:Register, imm:Imm },
    /// Load Half Unsigned
    LHU { rd:Register, rs1:Register, imm:Imm }, LWU { rd:Register, rs1:Register, imm:Imm},
    /// Load Word
    LW { rd:Register, rs1:Register, imm:Imm }, LD { rd:Register, rs1:Register, imm:Imm},
    // Load Imm
    // LI { rd:Register, imm:Imm}
}
impl Debug for Loads {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Loads::LB { rd, rs1, imm } => write!(f, "{:5} {:?},{:?}({:?})","lb", rd, imm, rs1),
            Loads::LH { rd, rs1, imm } => write!(f, "{:5} {:?},{:?}({:?})","lh", rd, imm, rs1),
            Loads::LBU { rd, rs1, imm } => write!(f, "{:5} {:?},{:?}({:?})","lbu", rd, imm, rs1),
            Loads::LHU { rd, rs1, imm } => write!(f, "{:5} {:?},{:?}({:?})","lhu", rd, imm, rs1),
            Loads::LW { rd, rs1, imm } => write!(f, "{:5} {:?},{:?}({:?})","lw", rd, imm, rs1),

            Loads::LWU { rd, rs1, imm } => write!(f, "{:5} {:?},{:?}({:?})","lwu", rd, imm, rs1),
            Loads::LD { rd, rs1, imm } => write!(f, "{:5} {:?},{:?}({:?})","ld", rd, imm, rs1),
        }
    }
}
impl Loads{
    pub fn new(size:usize,rd:Register,rs1:Register, offset:isize) -> Result<Self>{
        Ok(match size{
            8 => {
                Loads::new_ld(rd, rs1, Imm::from_offset(offset))
            },
            4 => {
                Loads::new_lw(rd, rs1, Imm::from_offset(offset))
            },
            2 => {
                Loads::new_lh(rd, rs1, Imm::from_offset(offset))
            },
            1 => {
                Loads::new_lb(rd, rs1, Imm::from_offset(offset))
            },
            _ => {
                return Err(anyhow!("unexpected load size"))
            }
        })
    }
}
#[derive(Clone,new)]
pub enum Stores {
    /// RV32I Base                               RV64
    /// Store Byte
    SB { rs1:Register, rs2:Register, imm:Imm },
    /// Store Halfword
    SH { rs1:Register, rs2:Register, imm:Imm },
    ///Store Word
    SW { rs1:Register, rs2:Register, imm:Imm }, SD { rs1:Register, rs2:Register, imm:Imm},
}
impl Stores{
    pub fn new(size:usize,reg1:Register,reg2:Register, offset:isize) -> Result<Self>{
        Ok(match size{
            8 => {
                Stores::new_sd(reg1, reg2, Imm::from_offset(offset))
            },
            4 => {
                Stores::new_sw(reg1, reg2, Imm::from_offset(offset))
            },
            2 => {
                Stores::new_sh(reg1, reg2, Imm::from_offset(offset))
            },
            1 => {
                Stores::new_sb(reg1, reg2, Imm::from_offset(offset))
            },
            _ => {
                return Err(anyhow!("unexpected store size"))
            }
        })
    }
}
impl Debug for Stores {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Stores::SB { rs1, rs2, imm } => write!(f, "{:5} {:?},{:?}({:?})","sb", rs1, imm, rs2),
            Stores::SH { rs1, rs2, imm } => write!(f, "{:5} {:?},{:?}({:?})","sh", rs1, imm, rs2),
            Stores::SW { rs1, rs2, imm } => write!(f, "{:5} {:?},{:?}({:?})","sw", rs1, imm, rs2),

            Stores::SD { rs1, rs2, imm } => write!(f, "{:5} {:?},{:?}({:?})","sd", rs1, imm, rs2),
        }
    }
}

#[derive(Clone,new)]
pub enum Trans{
    FCVT_W_S{rd:Register,rs1:Register},
    FCVT_S_W{rd:Register,rs1:Register},
}
impl Debug for Trans{
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            Trans::FCVT_W_S { rd, rs1 } => write!(f, "{:5} {:?},{:?},rm","FCVT_W_S", rd, rs1),
            Trans::FCVT_S_W { rd, rs1 } => write!(f, "{:5} {:?},{:?},rm","FCVT_S_W", rd, rs1),
        }
    }
}

impl_from!(PseudoInstr,RV64Instr);
impl_from!(BaseIntInstr,RV64Instr);
