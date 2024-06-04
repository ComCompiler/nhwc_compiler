use std::fmt::{write, Debug, Formatter};

use super::{field::{Fields}, symtab::SymIdx};


// #[derive(Clone)]
// pub struct RiscvInstr {
//     pub instr_type:RiscvInstrType,
//     pub info:Fields,
//     pub text:String,
// }

#[derive(Clone)]
pub enum Imm{
    OffsetReg{
        offset:usize,
        reg: Register,
    },
    Constant{
        symidx:SymIdx,
    }
}
impl Imm{
    pub fn new_offset_reg(offset:usize, reg: Register) -> Self{
        Self::OffsetReg { offset, reg }
    }
    pub fn new_const(symidx:SymIdx) -> Self{
        Self::Constant { symidx }
    }
    pub fn from_offset(offset:usize)-> Self{
        Self::Constant { symidx:SymIdx::from(offset) }
    }
}

impl Debug for Imm{
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::OffsetReg { offset, reg } =>{
                write!(f,"{}({:?})", offset, reg)
            },
            Self::Constant { symidx } => {
                write!(f,"{}", symidx)
            }
        }
    }
}
//只写了riscv手册里rv32 的 base的部分
#[derive(Clone)]
pub enum RiscvInstr {
    BaseIntInstr(BaseIntInstr),
}
impl Debug for RiscvInstr{
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::BaseIntInstr(arg0) => {
                write!(f,"{:?}",arg0)
            },
        }
    }
}

#[derive(Clone, Debug)]
pub enum Pseudoinstruction {
    nop {},
    neg {rd:Register ,rs:Register},
    negw {rd:Register ,rs:Register},

    snez {rd:Register ,rs:Register},
    sltz {rd:Register ,rs:Register},
    sgtz {rd:Register ,rs:Register},

    beqz {rs:Register ,offset:Value},
    bnez {rs:Register ,offset:Value},
    blez {rs:Register ,offset:Value},
    bgez {rs:Register ,offset:Value},
    bltz {rs:Register ,offset:Value},
    bgtz {rs:Register ,offset:Value},

    j {offset:Value},
    jr {rs:Register },
    ret {},

    tail {offset:Value},

    rdinstret {rd:Register },
    rdinstreth {rd:Register },
    rdcycle {rd:Register },
    rdcycleh {rd:Register },
    rdtime {rd:Register },
    rdtimeh {rd:Register },

    lla {rd:Register ,symbol:SymIdx},

    la {rd:Register ,symbol:SymIdx},

    lb {rd:Register ,symbol:SymIdx},
    lh {rd:Register ,symbol:SymIdx},
    lw {rd:Register ,symbol:SymIdx},
    ld {rd:Register ,symbol:SymIdx},

    sb {rd:Register ,symbol:SymIdx ,rt:Register},
    sh {rd:Register ,symbol:SymIdx ,rt:Register},
    sw {rd:Register ,symbol:SymIdx ,rt:Register},
    sd {rd:Register ,symbol:SymIdx ,rt:Register},

    flw {rd:Register ,symbol:SymIdx ,rt:Register},
    fld {rd:Register ,symbol:SymIdx ,rt:Register},

    fsw {rd:Register ,symbol:SymIdx ,rt:Register},
    fsd {rd:Register ,symbol:SymIdx ,rt:Register},

    li {rd:Register ,imm:Value},
    mv {rd:Register ,rs:Register},
    not {rd:Register ,rs:Register},
    sext_w {rd:Register ,rs:Register},
    seqz {rd:Register ,rs:Register},

    fmv_s {rd:Register ,rs:Register},
    fabs_s {rd:Register ,rs:Register},
    fneg_s {rd:Register ,rs:Register},
    fmv_d {rd:Register ,rs:Register},
    fabs_d {rd:Register ,rs:Register},
    fneg_d {rd:Register ,rs:Register},

    bgt {rs:Register ,rd:Register ,offset:Value},
    ble {rs:Register ,rd:Register ,offset:Value},
    bgtu {rs:Register ,rd:Register ,offset:Value},
    bleu {rs:Register ,rd:Register ,offset:Value},

    jal {offset:Value},
    jalr {rs:Register},

    call {offset:Value},

    fence {},
}
#[derive(Clone, Debug)]
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
            Register::SP{} => write!(f, "gp"),
            Register::GP{} => write!(f, "tp"),
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
#[derive(Clone)]
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
#[derive(Clone)]
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
#[derive(Clone)]
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
            Compare::SLT { rd, rs1, rs2 } => write!(f, "{:5?} %{:?},%{:?},%{:?}","slt" , rd, rs1, rs2),
            Compare::SLTI { rd, rs1, imm } => write!(f, "{:5?} %{:?},%{:?},{:?}", "slti", rd, rs1, imm),
            Compare::SLTU { rd, rs1, rs2 } => write!(f, "{:?} %{:?},%{:?},%{:?}","sltu", rd, rs1, rs2),
            Compare::SLTUI { rd, rs1, imm } => write!(f, "{:?} %{:?},%{:?},{:?}","sltui" , rd, rs1, imm),
}
    }
}
#[derive(Clone)]
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
            Branch::BEQ { rs1, rs2, imm } => write!(f, "{:5?} %{:?},%{:?},{:?}","beq", rs1, rs2, imm),
            Branch::BNE { rs1, rs2, imm } => write!(f, "{:5?} %{:?},%{:?},{:?}","bne", rs1, rs2, imm),
            Branch::BLT { rs1, rs2, imm } => write!(f, "{:5?} %{:?},%{:?},{:?}","blt", rs1, rs2, imm),
            Branch::BGE { rs1, rs2, imm } => write!(f, "{:5?} %{:?},%{:?},{:?}","bge", rs1, rs2, imm),
            Branch::BLTU { rs1, rs2, imm } => write!(f, "{:5?} %{:?},%{:?},{:?}","bltu", rs1, rs2, imm),
            Branch::BGEU { rs1, rs2, imm } => write!(f, "{:5?} %{:?},%{:?},{:?}","bgeu", rs1, rs2, imm),
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
            JumpAndLink::JAL { rd, imm } => write!(f, "{:5?} %{:?},{:?}","jal", rd, imm),
            JumpAndLink::JALR { rd, rs1, imm } => write!(f, "{:5?} %{:?},%{:?},{:?}","jalr", rd, rs1, imm),
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
            Environment::ECALL {} => write!(f, "{:5?}","ecall"),
            Environment::EBREAK {} => write!(f, "{:5?}","ebreak"),
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
            CSR::CSRRW { rd, csr, rs1 } => write!(f, "{:5?} %{:?},%{:?},%{:?}","csrrw", rd, csr, rs1),
            CSR::CSRRS { rd, csr, rs1 } => write!(f, "{:5?} %{:?},%{:?},%{:?}","csrrs", rd, csr, rs1),
            CSR::CSRRC { rd, csr, rs1 } => write!(f, "{:5?} %{:?},%{:?},%{:?}","csrrc", rd, csr, rs1),
            CSR::CSRRSI { rd, csr, imm } => write!(f, "{:5?} %{:?},%{:?},{:?}","csrrsi", rd, csr, imm),
            CSR::CSRRCI { rd, csr, imm } => write!(f, "{:5?} %{:?},%{:?},{:?}","csrrci", rd, csr, imm),
            CSR::CSRRWI { rd, csr, imm } => write!(f, "{:5?} %{:?},%{:?},{:?}","csrrwi", rd, csr, imm),
        }
    }
}
#[derive(Clone)]
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
            Loads::LB { rd, rs1, imm } => write!(f, "{:5?} %{:?},%{:?}(%{:?})","lb", rd, imm, rs1),
            Loads::LH { rd, rs1, imm } => write!(f, "{:5?} %{:?},%{:?}(%{:?})","lh", rd, imm, rs1),
            Loads::LBU { rd, rs1, imm } => write!(f, "{:5?} %{:?},%{:?}(%{:?})","lbu", rd, imm, rs1),
            Loads::LHU { rd, rs1, imm } => write!(f, "{:5?} %{:?},%{:?}(%{:?})","lhu", rd, imm, rs1),
            Loads::LW { rd, rs1, imm } => write!(f, "{:5?} %{:?},%{:?}(%{:?})","lw", rd, imm, rs1),

            Loads::LWU { rd, rs1, imm } => write!(f, "{:5?} %{:?},%{:?}(%{:?})","lwu", rd, imm, rs1),
            Loads::LD { rd, rs1, imm } => write!(f, "{:5?} %{:?},%{:?}(%{:?})","ld", rd, imm, rs1),
        }
    }
}
#[derive(Clone)]
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
            Stores::SB { rs1, rs2, imm } => write!(f, "{:5?} %{:?},%{:?}(%{:?})","sb", rs1, rs2, imm),
            Stores::SH { rs1, rs2, imm } => write!(f, "{:5?} %{:?},%{:?}(%{:?})","sh", rs1, rs2, imm),
            Stores::SW { rs1, rs2, imm } => write!(f, "{:5?} %{:?},%{:?}(%{:?})","sw", rs1, rs2, imm),

            Stores::SD { rs1, rs2, imm } => write!(f, "{:5?} %{:?},%{:?}(%{:?})","sd", rs1, rs2, imm),
        }
    }
}

impl RiscvInstr{
    // Shifts rv32
    pub fn new_SLL(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SLL{ rd, rs1, rs2}))
    }
    pub fn new_SLLI(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SLLI{ rd, rs1, shamt:imm}))
    }
    pub fn new_SRL(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRL{ rd, rs1, rs2}))
    }
    pub fn new_SRLI(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRLI{ rd, rs1, shamt:imm}))
    }
    pub fn new_SRA(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRA{ rd, rs1, rs2}))
    }
    pub fn new_SRAI(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRAI{ rd, rs1, shamt:imm}))
    }
    // Shifts rv64
    pub fn new_SLLW( rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SLLW{ rd, rs1, rs2}))
    }
    pub fn new_SLLIW( rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SLLIW { rd, rs1, shamt:imm}))
    }
    pub fn new_SRLW( rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRLW{ rd, rs1, rs2}))
    }
    pub fn new_SRLIW( rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRLIW { rd, rs1, shamt:imm}))
    }
    pub fn new_SRAW( rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRAW{ rd, rs1, rs2}))
    }
    pub fn new_SRAIW( rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRAIW { rd, rs1, shamt:imm}))
    }
    // Arithmetic rv32
    pub fn new_ADD(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::ADD{ rd, rs1, rs2}))
    }
    pub fn new_ADDI(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::ADDI{ rd, rs1, imm}))
    }
    pub fn new_SUB(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::SUB{ rd, rs1, rs2}))
    }
    pub fn new_LUI(rd:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::LUI{ rd, imm}))
    }
    pub fn new_AUIPC(rd:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::AUIPC{ rd, imm}))
    }
    // Arithmetic rv64
    pub fn new_ADDW(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::ADDW{ rd, rs1, rs2}))
    }
    pub fn new_ADDIW(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::ADDIW{ rd, rs1, imm}))
    }
    pub fn new_SUBW(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::SUBW{ rd, rs1, rs2}))
    }
    // 乘法指令
    pub fn new_MUL(rd: Register, rs1: Register, rs2: Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::MUL { rd, rs1, rs2 }))
    }
    pub fn new_MULW(rd: Register, rs1: Register, rs2: Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::MULW { rd, rs1, rs2 }))
    }

    // 除法指令
    pub fn new_DIV(rd: Register, rs1: Register, rs2: Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::DIV { rd, rs1, rs2 }))
    }
    pub fn new_DIVW(rd: Register, rs1: Register, rs2: Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::DIVW { rd, rs1, rs2 }))
    }

    // 取余指令
    pub fn new_REM(rd: Register, rs1: Register, rs2: Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::REM { rd, rs1, rs2 }))
    }
    pub fn new_REMW(rd: Register, rs1: Register, rs2: Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::REMW { rd, rs1, rs2 }))
    }
    // Logical rv32
    pub fn new_XOR(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Logical(Logical::XOR{ rd, rs1, rs2}))
    }
    pub fn new_XORI(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Logical(Logical::XORI{ rd, rs1, imm}))
    }
    pub fn new_OR(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Logical(Logical::OR{ rd, rs1, rs2}))
    }
    pub fn new_ORI(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Logical(Logical::ORI{ rd, rs1, imm}))
    }
    pub fn new_AND(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Logical(Logical::AND{ rd, rs1, rs2}))
    }
    pub fn new_ANDI(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Logical(Logical::ANDI{ rd, rs1, imm}))
    }
    // Compare rv32
    pub fn new_SLT(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Compare(Compare::SLT{ rd, rs1, rs2}))
    }
    pub fn new_SLTI(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Compare(Compare::SLTI{ rd, rs1, imm}))
    }
    pub fn new_SLTU(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Compare(Compare::SLTU{ rd, rs1, rs2}))
    }
    pub fn new_SLTUI(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Compare(Compare::SLTUI{ rd, rs1, imm}))
    }
    // Branch rv32
    pub fn new_BEQ(rs1:Register, rs2:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Branch(Branch::BEQ{ rs1, rs2, imm}))
    }
    pub fn new_BNE(rs1:Register, rs2:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Branch(Branch::BNE{ rs1, rs2, imm}))
    }
    pub fn new_BLT(rs1:Register, rs2:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Branch(Branch::BLT{ rs1, rs2, imm}))
    }
    pub fn new_BGE(rs1:Register, rs2:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Branch(Branch::BGE{ rs1, rs2, imm}))
    }
    pub fn new_BLTU(rs1:Register, rs2:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Branch(Branch::BLTU{ rs1, rs2, imm}))
    }
    pub fn new_BGEU(rs1:Register, rs2:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Branch(Branch::BGEU{ rs1, rs2, imm}))
    }
    // JumpAndLink rv32
    pub fn new_JAL(rd:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::JumpAndLink(JumpAndLink::JAL{ rd, imm}))
    }
    pub fn new_JALR(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::JumpAndLink(JumpAndLink::JALR{ rd, rs1, imm}))
    }
    // Environment rv32
    pub fn new_ECALL() -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Environment(Environment::ECALL{}))
    }
    pub fn new_EBREAK() -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Environment(Environment::EBREAK{}))
    }
    // CSR rv32
    pub fn new_CSRRW( rd:Register, csr:Register, rs1:Register ) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::CSR(CSR::CSRRW{ rd, csr, rs1}))
    }
    pub fn new_CSRRS( rd:Register, csr:Register, rs1:Register ) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::CSR(CSR::CSRRS{ rd, csr, rs1}))
    }
    pub fn new_CSRRC( rd:Register, csr:Register, rs1:Register ) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::CSR(CSR::CSRRC{ rd, csr, rs1}))
    }
    pub fn new_CSRRWI(rd:Register, csr:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::CSR(CSR::CSRRWI{ rd, csr, imm}))
    }
    pub fn new_CSRRSI(rd:Register, csr:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::CSR(CSR::CSRRSI{ rd, csr, imm}))
    }
    pub fn new_CSRRCI(rd:Register, csr:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::CSR(CSR::CSRRCI{ rd, csr, imm}))
    }
    // Loads rv32
    pub fn new_LB(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Loads(Loads::LB{ rd, rs1, imm}))
    }
    pub fn new_LH(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Loads(Loads::LH{ rd, rs1, imm}))
    }
    pub fn new_LBU(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Loads(Loads::LBU{ rd, rs1, imm}))
    }
    pub fn new_LHU(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Loads(Loads::LHU{ rd, rs1, imm}))
    }
    pub fn new_LW(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Loads(Loads::LW{ rd, rs1, imm}))
    }
    // Loads rv64
    pub fn new_LWU(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Loads(Loads::LWU{ rd, rs1, imm}))
    }
    pub fn new_LD(rd:Register, rs1:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Loads(Loads::LD{ rd, rs1, imm}))
    }
    // Stores rv32
    pub fn new_SB(rs1:Register, rs2:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Stores(Stores::SB{ rs1, rs2, imm}))
    }
    pub fn new_SH(rs1:Register, rs2:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Stores(Stores::SH{ rs1, rs2, imm}))
    }
    pub fn new_SW(rs1:Register, rs2:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Stores(Stores::SW{ rs1, rs2, imm}))
    }
    // Stores rv64
    pub fn new_SD(rs1:Register, rs2:Register, imm:Imm) -> Self {
        RiscvInstr::BaseIntInstr(BaseIntInstr::Stores(Stores::SD{ rs1, rs2, imm}))
    }
}