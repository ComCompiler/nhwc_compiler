use crate::{node_mut, passes::simulator_debug_pass::debug_simu_run};
use anyhow::*;

use super::{cfg_node::{CfgGraph, CFG_ROOT}, dot::Config, etc::generate_png_by_graph, field::Fields, nhwc_instr::{InstrSlab, NhwcInstr, NhwcInstrType}, riscv_instr::RiscvInstr, simulator::Simulator, symtab::{SymIdx, SymTab}};

/// convert nhwc ir into riscv
pub fn parse_nhwcir2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, riscv_instr_slab:&mut InstrSlab<RiscvInstr>, src_symtab:&SymTab)->Result<()>{
    // firstly process root which contains global vars 
    parse_root2riscv(cfg_graph, nhwc_instr_slab, riscv_instr_slab, src_symtab)?;
    Ok(())
    
}
fn parse_root2riscv(cfg_graph:&mut CfgGraph, nhwc_instr_slab:&mut InstrSlab<NhwcInstr>, _riscv_instr_slab:&mut InstrSlab<RiscvInstr>, src_symtab:&SymTab)->Result<()>{
    let root_node = node_mut!(at CFG_ROOT in cfg_graph);
    let mut simulator = Simulator::new(root_node.instrs.clone(), false);
    simulator.instr_list.push(nhwc_instr_slab.insert_instr(NhwcInstrType::new_exit_breakpoint( vec![]).to_instr()));
    simulator.load_instrs(&nhwc_instr_slab)?;

    // run to get values of static variables
    let simulator_g = debug_simu_run(&mut simulator, &nhwc_instr_slab, src_symtab, true)?;
    generate_png_by_graph(&simulator_g, "debug_root_simu".to_string(), &[Config::Record, Config::Rounded, Config::SymTab, Config::Title("debug_root_simu".to_string())])?;

    // now we can get static variables 

    
    Ok(())
}



/// a asm file contains several sections
pub struct AsmStructure{
    pub sects:Vec<AsmSection>
}

/// a section contains several attributes and then asm instrs
pub struct AsmSection{
    pub attrs:Vec<AsmAttr>
}

/// all kinds of Attr 
pub struct AsmAttr{
    attr_ty:AsmAttrType,
    fields: Fields,
    text: String,
}

pub enum AsmAttrType{
    Align{
        align:usize
    },
    Gloabl{
        symidx:SymIdx
    },
    Double{
        symidx:SymIdx
    },
    Word{
        symidx:SymIdx
    },
    Half{
        symidx:SymIdx
    },
    Byte{
        symidx:SymIdx
    },
}