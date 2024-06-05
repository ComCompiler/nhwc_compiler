use std::fmt::{write, Debug, Formatter};


use derive_new::new;

use super::{field::{Fields}, symtab::SymIdx};


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
    pub fn from_offset(offset:usize)-> Self{
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
pub enum RiscvInstr {
    BaseIntInstr(BaseIntInstr),
    PseudoInstr(PseudoInstr),
}
impl Debug for RiscvInstr{
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::BaseIntInstr(arg0) => {
                write!(f,"{:?}",arg0)
            },
            RiscvInstr::PseudoInstr(arg0) => {
                write!(f,"{:?}",arg0)
            },
        }
    }
}

#[derive(Clone, Debug, derive_new::new)]
pub enum PseudoInstr {
    Nop {},
    Neg {rd:Register ,rs:Register},
    Negw {rd:Register ,rs:Register},

    Snez {rd:Register ,rs:Register},
    Sltz {rd:Register ,rs:Register},
    Sgtz {rd:Register ,rs:Register},

    Beqz {rs:Register ,offset:Imm},
    Bnez {rs:Register ,offset:Imm},
    Blez {rs:Register ,offset:Imm},
    Bgez {rs:Register ,offset:Imm},
    Bltz {rs:Register ,offset:Imm},
    Bgtz {rs:Register ,offset:Imm},

    J {offset:Imm},
    Jr {rs:Register },
    Ret {},

    Tail {offset:Imm},

    Rdinstret {rd:Register },
    Rdinstreth {rd:Register },
    Rdcycle {rd:Register },
    Rdcycleh {rd:Register },
    Rdtime {rd:Register },
    Rdtimeh {rd:Register },

    Lla {rd:Register ,symbol:SymIdx},

    La {rd:Register ,symbol:SymIdx},

    Lb {rd:Register ,symbol:SymIdx},
    Lh {rd:Register ,symbol:SymIdx},
    Lw {rd:Register ,symbol:SymIdx},
    Ld {rd:Register ,symbol:SymIdx},

    Sb {rd:Register ,symbol:SymIdx ,rt:Register},
    Sh {rd:Register ,symbol:SymIdx ,rt:Register},
    Sw {rd:Register ,symbol:SymIdx ,rt:Register},
    Sd {rd:Register ,symbol:SymIdx ,rt:Register},

    Flw {rd:Register ,symbol:SymIdx ,rt:Register},
    Fld {rd:Register ,symbol:SymIdx ,rt:Register},

    Fsw {rd:Register ,symbol:SymIdx ,rt:Register},
    Fsd {rd:Register ,symbol:SymIdx ,rt:Register},

    Li {rd:Register ,imm:Imm},
    Mv {rd:Register ,rs:Register},
    Not {rd:Register ,rs:Register},
    Sext_w {rd:Register ,rs:Register},
    Seqz {rd:Register ,rs:Register},

    Fmv_s {rd:Register ,rs:Register},
    Fabs_s {rd:Register ,rs:Register},
    Fneg_s {rd:Register ,rs:Register},
    Fmv_d {rd:Register ,rs:Register},
    Fabs_d {rd:Register ,rs:Register},
    Fneg_d {rd:Register ,rs:Register},

    Bgt {rs:Register ,rd:Register ,offset:Imm},
    Ble {rs:Register ,rd:Register ,offset:Imm},
    Bgtu {rs:Register ,rd:Register ,offset:Imm},
    Bleu {rs:Register ,rd:Register ,offset:Imm},

    Jal {offset:Imm},
    Jalr {rs:Register},

    Call {offset:Imm},

    Fence {},
}
#[derive(Clone, Debug, new)]
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

impl_from_indirectly!(Shifts,BaseIntInstr,RiscvInstr);
impl_from_indirectly!(Arithmetic,BaseIntInstr,RiscvInstr);
impl_from_indirectly!(Logical,BaseIntInstr,RiscvInstr);
impl_from_indirectly!(Compare,BaseIntInstr,RiscvInstr);
impl_from_indirectly!(Branch,BaseIntInstr,RiscvInstr);
impl_from_indirectly!(JumpAndLink,BaseIntInstr,RiscvInstr);
impl_from_indirectly!(Environment,BaseIntInstr,RiscvInstr);
impl_from_indirectly!(CSR,BaseIntInstr,RiscvInstr);
impl_from_indirectly!(Loads,BaseIntInstr,RiscvInstr);
impl_from_indirectly!(Stores,BaseIntInstr,RiscvInstr);


#[derive(Clone)]
pub enum  Register {
    Zero,
    RA,
    SP,
    GP,
    /// t0-t6 一共7个
    Temp{
        reg_idx:u8,
    },
    /// s0-s11 一共12个
    Saved{
        reg_idx:u8,
    },
    /// a0-a7 一共8个
    Arg{
        reg_idx:u8,
    },
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
}
#[derive(Clone)]
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
            Shifts::SLL { rd, rs1, rs2 } => write!(f, "sll %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Shifts::SLLI { rd, rs1, shamt } => write!(f, "slli %{:?},%{:?},{:?}", rd, rs1, shamt),
            Shifts::SRL { rd, rs1, rs2 } => write!(f, "srl %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Shifts::SRLI { rd, rs1, shamt } => write!(f, "srli %{:?},%{:?},{:?}", rd, rs1, shamt),
            Shifts::SRA { rd, rs1, rs2 } => write!(f, "sra %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Shifts::SRAI { rd, rs1, shamt } => write!(f, "srai %{:?},%{:?},{:?}", rd, rs1, shamt),

            Shifts::SLLW { rd, rs1, rs2 } => write!(f, "sllw %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Shifts::SLLIW { rd, rs1, shamt } => write!(f, "slliw %{:?},%{:?},{:?}", rd, rs1, shamt),
            Shifts::SRLW { rd, rs1, rs2 } => write!(f, "srlw %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Shifts::SRLIW { rd, rs1, shamt } => write!(f, "srliw %{:?},%{:?},{:?}", rd, rs1, shamt),
            Shifts::SRAW { rd, rs1, rs2 } => write!(f, "sraw %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Shifts::SRAIW { rd, rs1, shamt } => write!(f, "sraiw %{:?},%{:?},{:?}", rd, rs1, shamt),
        }
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
            Arithmetic::ADD { rd, rs1, rs2 } => write!(f, "add %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Arithmetic::ADDI { rd, rs1, imm } => write!(f, "addi %{:?},%{:?},{:?}", rd, rs1, imm),
            Arithmetic::SUB { rd, rs1, rs2 } => write!(f, "sub %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Arithmetic::LUI { rd, imm } => write!(f, "lui %{:?},{:?}", rd, imm),
            Arithmetic::AUIPC { rd, imm } => write!(f, "auipc %{:?},{:?}", rd, imm),

            Arithmetic::ADDW { rd, rs1, rs2 } => write!(f, "ADDW %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Arithmetic::ADDIW { rd, rs1, imm } => write!(f, "addiw %{:?},%{:?},{:?}", rd, rs1, imm),
            Arithmetic::SUBW { rd, rs1, rs2 } => write!(f, "subw %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Arithmetic::MUL { rd, rs1, rs2 } => write!(f, "mul %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Arithmetic::MULW { rd, rs1, rs2 } => write!(f, "mulw %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Arithmetic::DIV { rd, rs1, rs2 } => write!(f, "div %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Arithmetic::DIVW { rd, rs1, rs2 } => write!(f, "divw %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Arithmetic::REM { rd, rs1, rs2 } => write!(f, "rem %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Arithmetic::REMW { rd, rs1, rs2 } => write!(f, "remw %{:?},%{:?},%{:?}", rd, rs1, rs2),
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
            Logical::XOR { rd, rs1, rs2 } => write!(f, "xor %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Logical::XORI { rd, rs1, imm } => write!(f, "xori %{:?},%{:?},{:?}", rd, rs1, imm),
            Logical::OR { rd, rs1, rs2 } => write!(f, "or %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Logical::ORI { rd, rs1, imm } => {
                write!(f, "ORI %{:?},%{:?},{:?}", rd, rs1, imm)
            }
            Logical::AND { rd, rs1, rs2 } => write!(f, "and %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Logical::ANDI { rd, rs1, imm } => write!(f, "andi %{:?},%{:?},{:?}", rd, rs1, imm),
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
    SLTUI { rd:Register, rs1:Register, imm:Imm },
}
impl Debug for Compare {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Compare::SLT { rd, rs1, rs2 } => write!(f, "{:5} %{:?},%{:?},%{:?}","slt" , rd, rs1, rs2),
            Compare::SLTI { rd, rs1, imm } => write!(f, "{:5} %{:?},%{:?},{:?}", "slti", rd, rs1, imm),
            Compare::SLTU { rd, rs1, rs2 } => write!(f, "{:5} %{:?},%{:?},%{:?}","sltu", rd, rs1, rs2),
            Compare::SLTUI { rd, rs1, imm } => write!(f, "{:5} %{:?},%{:?},{:?}","sltui" , rd, rs1, imm),
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
            Branch::BEQ { rs1, rs2, imm } => write!(f, "{:5} %{:?},%{:?},{:?}","beq", rs1, rs2, imm),
            Branch::BNE { rs1, rs2, imm } => write!(f, "{:5} %{:?},%{:?},{:?}","bne", rs1, rs2, imm),
            Branch::BLT { rs1, rs2, imm } => write!(f, "{:5} %{:?},%{:?},{:?}","blt", rs1, rs2, imm),
            Branch::BGE { rs1, rs2, imm } => write!(f, "{:5} %{:?},%{:?},{:?}","bge", rs1, rs2, imm),
            Branch::BLTU { rs1, rs2, imm } => write!(f, "{:5} %{:?},%{:?},{:?}","bltu", rs1, rs2, imm),
            Branch::BGEU { rs1, rs2, imm } => write!(f, "{:5} %{:?},%{:?},{:?}","bgeu", rs1, rs2, imm),
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
            JumpAndLink::JAL { rd, imm } => write!(f, "{:5} %{:?},{:?}","jal", rd, imm),
            JumpAndLink::JALR { rd, rs1, imm } => write!(f, "{:5} %{:?},%{:?},{:?}","jalr", rd, rs1, imm),
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
            CSR::CSRRW { rd, csr, rs1 } => write!(f, "{:6} %{:?},%{:?},%{:?}","csrrw", rd, csr, rs1),
            CSR::CSRRS { rd, csr, rs1 } => write!(f, "{:6} %{:?},%{:?},%{:?}","csrrs", rd, csr, rs1),
            CSR::CSRRC { rd, csr, rs1 } => write!(f, "{:6} %{:?},%{:?},%{:?}","csrrc", rd, csr, rs1),
            CSR::CSRRSI { rd, csr, imm } => write!(f, "{:6} %{:?},%{:?},{:?}","csrrsi", rd, csr, imm),
            CSR::CSRRCI { rd, csr, imm } => write!(f, "{:6} %{:?},%{:?},{:?}","csrrci", rd, csr, imm),
            CSR::CSRRWI { rd, csr, imm } => write!(f, "{:6} %{:?},%{:?},{:?}","csrrwi", rd, csr, imm),
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
            Loads::LB { rd, rs1, imm } => write!(f, "{:5} %{:?},%{:?}(%{:?})","lb", rd, imm, rs1),
            Loads::LH { rd, rs1, imm } => write!(f, "{:5} %{:?},%{:?}(%{:?})","lh", rd, imm, rs1),
            Loads::LBU { rd, rs1, imm } => write!(f, "{:5} %{:?},%{:?}(%{:?})","lbu", rd, imm, rs1),
            Loads::LHU { rd, rs1, imm } => write!(f, "{:5} %{:?},%{:?}(%{:?})","lhu", rd, imm, rs1),
            Loads::LW { rd, rs1, imm } => write!(f, "{:5} %{:?},%{:?}(%{:?})","lw", rd, imm, rs1),

            Loads::LWU { rd, rs1, imm } => write!(f, "{:5} %{:?},%{:?}(%{:?})","lwu", rd, imm, rs1),
            Loads::LD { rd, rs1, imm } => write!(f, "{:5} %{:?},%{:?}(%{:?})","ld", rd, imm, rs1),
        }
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
impl Debug for Stores {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Stores::SB { rs1, rs2, imm } => write!(f, "{:5} %{:?},%{:?}(%{:?})","sb", rs1, rs2, imm),
            Stores::SH { rs1, rs2, imm } => write!(f, "{:5} %{:?},%{:?}(%{:?})","sh", rs1, rs2, imm),
            Stores::SW { rs1, rs2, imm } => write!(f, "{:5} %{:?},%{:?}(%{:?})","sw", rs1, rs2, imm),

            Stores::SD { rs1, rs2, imm } => write!(f, "{:5} %{:?},%{:?}(%{:?})","sd", rs1, rs2, imm),
        }
    }
}

impl_from!(PseudoInstr,RiscvInstr);
impl_from!(BaseIntInstr,RiscvInstr);
