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
pub struct Register {
    reg_name:SymIdx,
}
impl Debug for Register {
    fn fmt(&self, f:&mut Formatter<'_>) -> std::fmt::Result { write!(f, "{:?}", self.reg_name) }
}
#[derive(Clone)]
pub enum Shifts {
    /// Shift Left Logical
    /// 逻辑左移
    SLL { rd:Register, rs1:Register, rs2:Register },
    /// Shift Left Log Imm
    /// 立即数逻辑左移
    SLLI { rd:Register, rs1:Register, shamt:Value },
    /// Shift Right Logical
    /// 逻辑右移
    SRL { rd:Register, rs1:Register, rs2:Register },
    /// Shift Right Log Imm
    /// 立即数逻辑右移
    SRLI { rd:Register, rs1:Register, shamt:Value },
    /// Shift Right Arithmetic
    /// 算术右移
    SRA { rd:Register, rs1:Register, rs2:Register },
    ///Shift Right ArithImm
    /// 立即数算术右移
    SRAI { rd:Register, rs1:Register, shamt:Value },
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
        }
    }
}
#[derive(Clone)]
pub enum Arithmetic {
    /// ADD
    ADD { rd:Register, rs1:Register, rs2:Register },
    /// ADD Imediate
    ADDI { rd:Register, rs1:Register, imm:Value },
    /// SUBtract
    SUB { rd:Register, rs1:Register, rs2:Register },
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
    Or { rd:Register, rs1:Register, rs2:Register },
    /// OR Immdiate
    ORImmediate { rd:Register, rs1:Register, imm:Value },
    /// AND
    And { rd:Register, rs1:Register, rs2:Register },
    /// AND Immediate
    AndI { rd:Register, rs1:Register, imm:Value },
}
impl Debug for Logical {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Logical::XOR { rd, rs1, rs2 } => write!(f, "XOR %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Logical::XORI { rd, rs1, imm } => write!(f, "XORI %{:?},%{:?},{:?}", rd, rs1, imm),
            Logical::Or { rd, rs1, rs2 } => write!(f, "OR %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Logical::ORImmediate { rd, rs1, imm } => {
                write!(f, "ORI %{:?},%{:?},{:?}", rd, rs1, imm)
            }
            Logical::And { rd, rs1, rs2 } => write!(f, "AND %{:?},%{:?},%{:?}", rd, rs1, rs2),
            Logical::AndI { rd, rs1, imm } => write!(f, "ANDI %{:?},%{:?},{:?}", rd, rs1, imm),
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
    /// Load Byte
    LB { rd:Register, rs1:Register, imm:Value },
    /// Load Halfword
    LH { rd:Register, rs1:Register, imm:Value },
    /// Load Byte Unsigned
    LBU { rd:Register, rs1:Register, imm:Value },
    /// Load Half Unsigned
    LHU { rd:Register, rs1:Register, imm:Value },
    /// Load Word
    LW { rd:Register, rs1:Register, imm:Value },
}
impl Debug for Loads {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Loads::LB { rd, rs1, imm } => write!(f, "LB %{:?},%{:?}(%{:?})", rd, imm, rs1),
            Loads::LH { rd, rs1, imm } => write!(f, "LH %{:?},%{:?}(%{:?})", rd, imm, rs1),
            Loads::LBU { rd, rs1, imm } => write!(f, "LBU %{:?},%{:?}(%{:?})", rd, imm, rs1),
            Loads::LHU { rd, rs1, imm } => write!(f, "LHU %{:?},%{:?}(%{:?})", rd, imm, rs1),
            Loads::LW { rd, rs1, imm } => write!(f, "LW %{:?},%{:?}(%{:?})", rd, imm, rs1),
        }
    }
}
#[derive(Clone)]
pub enum Stores {
    /// Store Byte
    SB { rs1:Register, rs2:Register, imm:Value },
    /// Store Halfword
    SH { rs1:Register, rs2:Register, imm:Value },
    ///Store Word
    SW { rs1:Register, rs2:Register, imm:Value },
}
impl Debug for Stores {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Stores::SB { rs1, rs2, imm } => write!(f, "SB %{:?},%{:?}(%{:?})", rs1, rs2, imm),
            Stores::SH { rs1, rs2, imm } => write!(f, "SH %{:?},%{:?}(%{:?})", rs1, rs2, imm),
            Stores::SW { rs1, rs2, imm } => write!(f, "SW %{:?},%{:?}(%{:?})", rs1, rs2, imm),
        }
    }
}