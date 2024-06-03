use std::fmt::{Debug, Formatter};

use super::{field::{Fields, Value}, symtab::SymIdx};


#[derive(Clone)]
pub struct RiscvInstr {
    pub instr_type:RiscvInstrType,
    pub info:Fields,
    pub text:String,
}

//只写了riscv手册里rv32 的 base的部分
#[derive(Clone)]
pub enum RiscvInstrType {
    BaseIntInstr(BaseIntInstr),
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
    Zero{},
    RA{},
    FP{},
    GP{},
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
            Register::FP{} => write!(f, "gp"),
            Register::GP{} => write!(f, "tp"),
            Register::Temp{reg_idx} => write!(f, "t{}", reg_idx),
            Register::Saved { reg_idx } => write!(f, "s{}", reg_idx),
            Register::Arg { reg_idx } => write!(f, "a{}", reg_idx),
        }
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
    SLLI { rd:Register, rs1:Register, shamt:Value }, SLLIW { rd:Register, rs1:Register, shamt:Value },
    /// Shift Right Logical
    /// 逻辑右移
    SRL { rd:Register, rs1:Register, rs2:Register }, SRLW { rd:Register, rs1:Register, rs2:Register },
    /// Shift Right Log Imm
    /// 立即数逻辑右移
    SRLI { rd:Register, rs1:Register, shamt:Value }, SRLIW { rd:Register, rs1:Register, shamt:Value },
    /// Shift Right Arithmetic
    /// 算术右移
    SRA { rd:Register, rs1:Register, rs2:Register }, SRAW { rd:Register, rs1:Register, rs2:Register },
    ///Shift Right ArithImm
    /// 立即数算术右移
    SRAI { rd:Register, rs1:Register, shamt:Value }, SRAIW { rd:Register, rs1:Register, shamt:Value },
}
impl Debug for Shifts {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result {
        match self {
            Shifts::SLL { rd, rs1, rs2 } => write!(f, "SLL %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Shifts::SLLI { rd, rs1, shamt } => write!(f, "SLLI %{:?},%{:?},{:?}", rd, rs1, shamt),
            Shifts::SRL { rd, rs1, rs2 } => write!(f, "SRL %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Shifts::SRLI { rd, rs1, shamt } => write!(f, "SRLI %{:?},%{:?},{:?}", rd, rs1, shamt),
            Shifts::SRA { rd, rs1, rs2 } => write!(f, "SRA %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Shifts::SRAI { rd, rs1, shamt } => write!(f, "SRAI %{:?},%{:?},{:?}", rd, rs1, shamt),

            Shifts::SLLW { rd, rs1, rs2 } => write!(f, "SLLW %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Shifts::SLLIW { rd, rs1, shamt } => write!(f, "SLLIW %{:?},%{:?},{:?}", rd, rs1, shamt),
            Shifts::SRLW { rd, rs1, rs2 } => write!(f, "SRLW %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Shifts::SRLIW { rd, rs1, shamt } => write!(f, "SRLIW %{:?},%{:?},{:?}", rd, rs1, shamt),
            Shifts::SRAW { rd, rs1, rs2 } => write!(f, "SRAW %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Shifts::SRAIW { rd, rs1, shamt } => write!(f, "SRAIW %{:?},%{:?},{:?}", rd, rs1, shamt),
        }
    }
}
#[derive(Clone)]
pub enum Arithmetic {
    /// RV32I Base                                  RV64I
    /// ADD
    ADD { rd:Register, rs1:Register, rs2:Register }, ADDW { rd:Register, rs1:Register, rs2:Register },
    /// ADD Imediate
    ADDI { rd:Register, rs1:Register, imm:Value }, ADDIW { rd:Register, rs1:Register, imm:Value },
    /// SUBtract
    SUB { rd:Register, rs1:Register, rs2:Register }, SUBW { rd:Register, rs1:Register, rs2:Register },
    /// Load Upper Imm
    LUI { rd:Register, imm:Value },
    /// Add Upper Imm To PC
    AUIPC { rd:Register, imm:Value },
}
impl Debug for Arithmetic {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Arithmetic::ADD { rd, rs1, rs2 } => write!(f, "ADD %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Arithmetic::ADDI { rd, rs1, imm } => write!(f, "ADDI %{:?},%{:?},{:?}", rd, rs1, imm),
            Arithmetic::SUB { rd, rs1, rs2 } => write!(f, "SUB %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Arithmetic::LUI { rd, imm } => write!(f, "LUI %{:?},{:?}", rd, imm),
            Arithmetic::AUIPC { rd, imm } => write!(f, "AUIPC %{:?},{:?}", rd, imm),

            Arithmetic::ADDW { rd, rs1, rs2 } => write!(f, "ADDW %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Arithmetic::ADDIW { rd, rs1, imm } => write!(f, "ADDIW %{:?},%{:?},{:?}", rd, rs1, imm),
            Arithmetic::SUBW { rd, rs1, rs2 } => write!(f, "SUBW %{:?},%{:?},%{:?}", rd, rs1, rs2),
        }
    }
}
#[derive(Clone)]
pub enum Logical {
    /// XOR
    XOR { rd:Register, rs1:Register, rs2:Register },
    /// XOR Immediate
    XORI { rd:Register, rs1:Register, imm:Value },
    /// OR
    OR { rd:Register, rs1:Register, rs2:Register },
    /// OR Immdiate
    ORI { rd:Register, rs1:Register, imm:Value },
    /// AND
    AND { rd:Register, rs1:Register, rs2:Register },
    /// AND Immediate
    ANDI { rd:Register, rs1:Register, imm:Value },
}
impl Debug for Logical {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Logical::XOR { rd, rs1, rs2 } => write!(f, "XOR %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Logical::XORI { rd, rs1, imm } => write!(f, "XORI %{:?},%{:?},{:?}", rd, rs1, imm),
            Logical::OR { rd, rs1, rs2 } => write!(f, "OR %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Logical::ORI { rd, rs1, imm } => {
                write!(f, "ORI %{:?},%{:?},{:?}", rd, rs1, imm)
            }
            Logical::AND { rd, rs1, rs2 } => write!(f, "AND %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Logical::ANDI { rd, rs1, imm } => write!(f, "ANDI %{:?},%{:?},{:?}", rd, rs1, imm),
        }
    }
}
#[derive(Clone)]
pub enum Compare {
    /// Set <
    SLT { rd:Register, rs1:Register, rs2:Register },
    ///Set < Immediate
    SLTI { rd:Register, rs1:Register, imm:Value },
    /// Set < Unsigned
    SLTU { rd:Register, rs1:Register, rs2:Register },
    /// Set < Imm Unsigned
    SLTUI { rd:Register, rs1:Register, imm:Value },
}
impl Debug for Compare {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Compare::SLT { rd, rs1, rs2 } => write!(f, "SLT %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Compare::SLTI { rd, rs1, imm } => write!(f, "SLTI %{:?},%{:?},{:?}", rd, rs1, imm),
            Compare::SLTU { rd, rs1, rs2 } => write!(f, "SLTU %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Compare::SLTUI { rd, rs1, imm } => write!(f, "SLTUI %{:?},%{:?},{:?}", rd, rs1, imm),
        }
    }
}
#[derive(Clone)]
pub enum Branch {
    /// Branch =
    BEQ { rs1:Register, rs2:Register, imm:Value },
    /// Branch Not Equal
    BNE { rs1:Register, rs2:Register, imm:Value },
    /// Branch Less Than
    BLT { rs1:Register, rs2:Register, imm:Value },
    /// Branch Less Than Unsigned
    BGE { rs1:Register, rs2:Register, imm:Value },
    /// Branch < Unsigned
    BLTU { rs1:Register, rs2:Register, imm:Value },
    /// Branch >= Unsigned
    BGEU { rs1:Register, rs2:Register, imm:Value },
}
impl Debug for Branch {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Branch::BEQ { rs1, rs2, imm } => write!(f, "BEQ %{:?},%{:?},{:?}", rs1, rs2, imm),
            Branch::BNE { rs1, rs2, imm } => write!(f, "BNE %{:?},%{:?},{:?}", rs1, rs2, imm),
            Branch::BLT { rs1, rs2, imm } => write!(f, "BLT %{:?},%{:?},{:?}", rs1, rs2, imm),
            Branch::BGE { rs1, rs2, imm } => write!(f, "BGE %{:?},%{:?},{:?}", rs1, rs2, imm),
            Branch::BLTU { rs1, rs2, imm } => write!(f, "BLTU %{:?},%{:?},{:?}", rs1, rs2, imm),
            Branch::BGEU { rs1, rs2, imm } => write!(f, "BGEU %{:?},%{:?},{:?}", rs1, rs2, imm),
        }
    }
}
#[derive(Clone)]
pub enum JumpAndLink {
    /// Jump & Link
    JAL { rd:Register, imm:Value },
    /// Jump & Link Register
    JALR { rd:Register, rs1:Register, imm:Value },
}
impl Debug for JumpAndLink {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            JumpAndLink::JAL { rd, imm } => write!(f, "JAL %{:?},{:?}", rd, imm),
            JumpAndLink::JALR { rd, rs1, imm } => write!(f, "JALR %{:?},%{:?},{:?}", rd, rs1, imm),
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
            Environment::ECALL {} => write!(f, "ECALL"),
            Environment::EBREAK {} => write!(f, "EBREAK"),
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
    CSRRWI { rd:Register, csr:Register, imm:Value },
    /// Read & Set Bit Imm
    CSRRSI { rd:Register, csr:Register, imm:Value },
    /// Read & Clear Bit Imm
    CSRRCI { rd:Register, csr:Register, imm:Value },
}
impl Debug for CSR {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            CSR::CSRRW { rd, csr, rs1 } => write!(f, "CSRRW %{:?},%{:?},%{:?}", rd, csr, rs1),
            CSR::CSRRS { rd, csr, rs1 } => write!(f, "CSRRS %{:?},%{:?},%{:?}", rd, csr, rs1),
            CSR::CSRRC { rd, csr, rs1 } => write!(f, "CSRRC %{:?},%{:?},%{:?}", rd, csr, rs1),
            CSR::CSRRSI { rd, csr, imm } => write!(f, "CSRRSI %{:?},%{:?},{:?}", rd, csr, imm),
            CSR::CSRRCI { rd, csr, imm } => write!(f, "CSRRCI %{:?},%{:?},{:?}", rd, csr, imm),
            CSR::CSRRWI { rd, csr, imm } => write!(f, "CSRRWI %{:?},%{:?},{:?}", rd, csr, imm),
        }
    }
}
#[derive(Clone)]
pub enum Loads {
    /// RV32I Base                              RV64I
    /// Load Byte
    LB { rd:Register, rs1:Register, imm:Value },
    /// Load Halfword
    LH { rd:Register, rs1:Register, imm:Value },
    /// Load Byte Unsigned
    LBU { rd:Register, rs1:Register, imm:Value },
    /// Load Half Unsigned
    LHU { rd:Register, rs1:Register, imm:Value }, LWU { rd:Register, rs1:Register, imm:Value},
    /// Load Word
    LW { rd:Register, rs1:Register, imm:Value }, LD { rd:Register, rs1:Register, imm:Value},
}
impl Debug for Loads {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Loads::LB { rd, rs1, imm } => write!(f, "LB %{:?},%{:?}(%{:?})", rd, imm, rs1),
            Loads::LH { rd, rs1, imm } => write!(f, "LH %{:?},%{:?}(%{:?})", rd, imm, rs1),
            Loads::LBU { rd, rs1, imm } => write!(f, "LBU %{:?},%{:?}(%{:?})", rd, imm, rs1),
            Loads::LHU { rd, rs1, imm } => write!(f, "LHU %{:?},%{:?}(%{:?})", rd, imm, rs1),
            Loads::LW { rd, rs1, imm } => write!(f, "LW %{:?},%{:?}(%{:?})", rd, imm, rs1),

            Loads::LWU { rd, rs1, imm } => write!(f, "LWU %{:?},%{:?}(%{:?})", rd, imm, rs1),
            Loads::LD { rd, rs1, imm } => write!(f, "LD %{:?},%{:?}(%{:?})", rd, imm, rs1),
        }
    }
}
#[derive(Clone)]
pub enum Stores {
    /// RV32I Base                               RV64
    /// Store Byte
    SB { rs1:Register, rs2:Register, imm:Value },
    /// Store Halfword
    SH { rs1:Register, rs2:Register, imm:Value },
    ///Store Word
    SW { rs1:Register, rs2:Register, imm:Value }, SD { rs1:Register, rs2:Register, imm:Value},
}
impl Debug for Stores {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Stores::SB { rs1, rs2, imm } => write!(f, "SB %{:?},%{:?}(%{:?})", rs1, rs2, imm),
            Stores::SH { rs1, rs2, imm } => write!(f, "SH %{:?},%{:?}(%{:?})", rs1, rs2, imm),
            Stores::SW { rs1, rs2, imm } => write!(f, "SW %{:?},%{:?}(%{:?})", rs1, rs2, imm),

            Stores::SD { rs1, rs2, imm } => write!(f, "SD %{:?},%{:?}(%{:?})", rs1, rs2, imm),
        }
    }
}

impl RiscvInstrType{
    // Shifts rv32
    pub fn new_SLL(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SLL{ rd, rs1, rs2}))
    }
    pub fn new_SLLI(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SLLI{ rd, rs1, shamt:imm}))
    }
    pub fn new_SRL(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRL{ rd, rs1, rs2}))
    }
    pub fn new_SRLI(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRLI{ rd, rs1, shamt:imm}))
    }
    pub fn new_SRA(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRA{ rd, rs1, rs2}))
    }
    pub fn new_SRAI(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRAI{ rd, rs1, shamt:imm}))
    }
    // Shifts rv64
    pub fn new_SLLW( rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SLLW{ rd, rs1, rs2}))
    }
    pub fn new_SLLIW( rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SLLIW { rd, rs1, shamt:imm}))
    }
    pub fn new_SRLW( rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRLW{ rd, rs1, rs2}))
    }
    pub fn new_SRLIW( rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRLIW { rd, rs1, shamt:imm}))
    }
    pub fn new_SRAW( rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRAW{ rd, rs1, rs2}))
    }
    pub fn new_SRAIW( rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Shifts(Shifts::SRAIW { rd, rs1, shamt:imm}))
    }
    // Arithmetic rv32
    pub fn new_ADD(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::ADD{ rd, rs1, rs2}))
    }
    pub fn new_ADDI(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::ADDI{ rd, rs1, imm}))
    }
    pub fn new_SUB(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::SUB{ rd, rs1, rs2}))
    }
    pub fn new_LUI(rd:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::LUI{ rd, imm}))
    }
    pub fn new_AUIPC(rd:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::AUIPC{ rd, imm}))
    }
    // Arithmetic rv64
    pub fn new_ADDW(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::ADDW{ rd, rs1, rs2}))
    }
    pub fn new_ADDIW(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::ADDIW{ rd, rs1, imm}))
    }
    pub fn new_SUBW(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Arithmetic(Arithmetic::SUBW{ rd, rs1, rs2}))
    }
    // Logical rv32
    pub fn new_XOR(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Logical(Logical::XOR{ rd, rs1, rs2}))
    }
    pub fn new_XORI(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Logical(Logical::XORI{ rd, rs1, imm}))
    }
    pub fn new_OR(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Logical(Logical::OR{ rd, rs1, rs2}))
    }
    pub fn new_ORI(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Logical(Logical::ORI{ rd, rs1, imm}))
    }
    pub fn new_AND(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Logical(Logical::AND{ rd, rs1, rs2}))
    }
    pub fn new_ANDI(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Logical(Logical::ANDI{ rd, rs1, imm}))
    }
    // Compare rv32
    pub fn new_SLT(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Compare(Compare::SLT{ rd, rs1, rs2}))
    }
    pub fn new_SLTI(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Compare(Compare::SLTI{ rd, rs1, imm}))
    }
    pub fn new_SLTU(rd:Register, rs1:Register, rs2:Register) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Compare(Compare::SLTU{ rd, rs1, rs2}))
    }
    pub fn new_SLTUI(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Compare(Compare::SLTUI{ rd, rs1, imm}))
    }
    // Branch rv32
    pub fn new_BEQ(rs1:Register, rs2:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Branch(Branch::BEQ{ rs1, rs2, imm}))
    }
    pub fn new_BNE(rs1:Register, rs2:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Branch(Branch::BNE{ rs1, rs2, imm}))
    }
    pub fn new_BLT(rs1:Register, rs2:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Branch(Branch::BLT{ rs1, rs2, imm}))
    }
    pub fn new_BGE(rs1:Register, rs2:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Branch(Branch::BGE{ rs1, rs2, imm}))
    }
    pub fn new_BLTU(rs1:Register, rs2:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Branch(Branch::BLTU{ rs1, rs2, imm}))
    }
    pub fn new_BGEU(rs1:Register, rs2:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Branch(Branch::BGEU{ rs1, rs2, imm}))
    }
    // JumpAndLink rv32
    pub fn new_JAL(rd:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::JumpAndLink(JumpAndLink::JAL{ rd, imm}))
    }
    pub fn new_JALR(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::JumpAndLink(JumpAndLink::JALR{ rd, rs1, imm}))
    }
    // Environment rv32
    pub fn new_ECALL() -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Environment(Environment::ECALL{}))
    }
    pub fn new_EBREAK() -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Environment(Environment::EBREAK{}))
    }
    // CSR rv32
    pub fn new_CSRRW( rd:Register, csr:Register, rs1:Register ) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::CSR(CSR::CSRRW{ rd, csr, rs1}))
    }
    pub fn new_CSRRS( rd:Register, csr:Register, rs1:Register ) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::CSR(CSR::CSRRS{ rd, csr, rs1}))
    }
    pub fn new_CSRRC( rd:Register, csr:Register, rs1:Register ) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::CSR(CSR::CSRRC{ rd, csr, rs1}))
    }
    pub fn new_CSRRWI(rd:Register, csr:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::CSR(CSR::CSRRWI{ rd, csr, imm}))
    }
    pub fn new_CSRRSI(rd:Register, csr:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::CSR(CSR::CSRRSI{ rd, csr, imm}))
    }
    pub fn new_CSRRCI(rd:Register, csr:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::CSR(CSR::CSRRCI{ rd, csr, imm}))
    }
    // Loads rv32
    pub fn new_LB(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Loads(Loads::LB{ rd, rs1, imm}))
    }
    pub fn new_LH(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Loads(Loads::LH{ rd, rs1, imm}))
    }
    pub fn new_LBU(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Loads(Loads::LBU{ rd, rs1, imm}))
    }
    pub fn new_LHU(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Loads(Loads::LHU{ rd, rs1, imm}))
    }
    pub fn new_LW(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Loads(Loads::LW{ rd, rs1, imm}))
    }
    // Loads rv64
    pub fn new_LWU(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Loads(Loads::LWU{ rd, rs1, imm}))
    }
    pub fn new_LD(rd:Register, rs1:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Loads(Loads::LD{ rd, rs1, imm}))
    }
    // Stores rv32
    pub fn new_SB(rs1:Register, rs2:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Stores(Stores::SB{ rs1, rs2, imm}))
    }
    pub fn new_SH(rs1:Register, rs2:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Stores(Stores::SH{ rs1, rs2, imm}))
    }
    pub fn new_SW(rs1:Register, rs2:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Stores(Stores::SW{ rs1, rs2, imm}))
    }
    // Stores rv64
    pub fn new_SD(rs1:Register, rs2:Register, imm:Value) -> Self {
        RiscvInstrType::BaseIntInstr(BaseIntInstr::Stores(Stores::SD{ rs1, rs2, imm}))
    }
}