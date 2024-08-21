use crate::{add_symbol, debug_info_red, direct_child_nodes, node, node_mut, reg_field_for_struct, toolkit::{cfg_node::{CfgGraph, CFG_ROOT}, context::NhwcCtx, mem_layout::{self, MemLayout}, nhwc_instr::{InstrSlab, NhwcInstr}, pass_manager::Pass, scope_node::ST_ROOT, symbol::Symbol, symtab::{RcSymIdx, SymIdx, SymTab, WithBorrow}}};
use anyhow::*;
use itertools::Itertools;
use crate::toolkit::field::Type;
use lazy_static::lazy_static;
use crate::instr;
reg_field_for_struct!{Symbol {
    STACK_PASS_ARGS:Vec<(usize,RcSymIdx)>,
} with_fields fields}
#[derive(Debug)]
pub struct MemAllocPass {}
impl MemAllocPass {
    pub fn new() -> Self { MemAllocPass {} }
}
pub static RISCV_STACK_MEM_ALIGN:usize = 8;
lazy_static!{ static ref S0: SymIdx = SymIdx::new(ST_ROOT,"s0".to_string());}
lazy_static!{ static ref RA: SymIdx = SymIdx::new(ST_ROOT,"ra".to_string());}

impl Pass for MemAllocPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> { 
        let (cfg_graph ,instr_slab, symtab)= (&mut ctx.cfg_graph,&ctx.nhwc_instr_slab,&mut ctx.symtab);
        let cfg_entries = direct_child_nodes!(at CFG_ROOT in cfg_graph);

        for (symidx,symbol) in symtab.iter_mut(){
            if symbol.has_ssa_versions(){
                let filtered_ssa_versions = symbol.get_ssa_versions()?.clone().into_iter().filter(
                    |x| !x.as_ref_borrow().is_literal() && x.as_ref_borrow().to_src_symidx() == *symidx
                ).collect_vec();
                *symbol.get_mut_ssa_versions()? = filtered_ssa_versions;
            }else {
                symbol.add_ssa_versions(vec![]);
            }
        }

        for &cfg_entry in &cfg_entries{
            debug_info_red!("alloc started {}",cfg_entry);

            let (ra_symidx,s0_symidx) = add_ra_s0_of_func_to_symtab(cfg_entry, cfg_graph, instr_slab, symtab)?;
            let func_def_instr = get_func_instr_of_cfg_entry(cfg_entry, cfg_graph);
            let arg_symidx_vec = get_arg_symidx_vec_of_func_define_instr(func_def_instr,symtab, instr_slab)?;
            let (reg_args,overflowed_args) = {
                let mut gpr_cnt = 0 ; let mut fpu_cnt = 0 ;
                let mut reg_args = vec![];
                let mut overflowed_args = vec![];
                for (idx,rc_symidx) in arg_symidx_vec.iter().enumerate(){
                    let symidx = rc_symidx.as_ref_borrow();
                    if symtab.get(&symidx.to_src_symidx())?.get_type()?.is_f_32(){
                        if fpu_cnt >= 8{
                            overflowed_args.push((idx,rc_symidx.clone()));
                        }else{
                            reg_args.push(rc_symidx)
                        }
                        fpu_cnt +=1;
                    }else {
                        if gpr_cnt >= 8{
                            overflowed_args.push((idx,rc_symidx.clone()));
                        }else{
                            reg_args.push(rc_symidx)
                        }
                        gpr_cnt +=1;
                    }
                }
                (reg_args,overflowed_args)
            };
            
            
            node_mut!(at cfg_entry in cfg_graph).add_mem_layout(MemLayout::new());
            //  insert overflowed_args to mem_layout before ra and s0
            for (idx,arg) in &overflowed_args{
                if symtab.get(&arg.as_ref_borrow().to_src_symidx())?.get_type()?.is_array(){
                    alloc_stack_mem_for_cfg_entry(cfg_graph, cfg_entry, symtab,&arg)?;
                }else {
                    for ssa_version in symtab.get(&arg.as_ref_borrow().to_src_symidx())?.get_ssa_versions()?.clone(){
                        alloc_stack_mem_for_cfg_entry(cfg_graph, cfg_entry, symtab,&ssa_version)?;
                    }
                }
            }
            alloc_stack_mem_for_cfg_entry(cfg_graph, cfg_entry, symtab, &ra_symidx)?;
            alloc_stack_mem_for_cfg_entry(cfg_graph, cfg_entry, symtab, &s0_symidx)?;
            for arg in reg_args{
                if symtab.get(&arg.as_ref_borrow().to_src_symidx())?.get_type()?.is_array(){
                    panic!("we will not alloc mem for array in stack arg")
                }else {
                    for ssa_version in symtab.get(&arg.as_ref_borrow().to_src_symidx())?.get_ssa_versions()?.clone(){
                        alloc_stack_mem_for_cfg_entry(cfg_graph, cfg_entry, symtab, &ssa_version)?;
                    }
                }
            }
            for &instr in node!(at cfg_entry in cfg_graph).instrs.clone().iter(){
                match &instr!(at instr in instr_slab)?.instr_type{
                    crate::toolkit::nhwc_instr::NhwcInstrType::DefineFunc { func_symidx, ret_symidx: _, args } => {
                        symtab.get_mut(&func_symidx.as_ref_borrow())?.add_stack_pass_args(overflowed_args.clone())
                    }
                    crate::toolkit::nhwc_instr::NhwcInstrType::Alloc { var_symidx_vec, vartype: _ } => {
                        for var_symidx in var_symidx_vec{
                            if symtab.get(&var_symidx.as_ref_borrow().to_src_symidx())?.get_type()?.is_array(){
                                alloc_stack_mem_for_cfg_entry(cfg_graph, cfg_entry, symtab,&var_symidx.as_ref_borrow().to_src_symidx().as_rc())?;
                            }else if symtab.get(&var_symidx.as_ref_borrow().to_src_symidx())?.get_type()?.is_ptr_64(){
                                alloc_stack_mem_for_cfg_entry(cfg_graph, cfg_entry, symtab,&var_symidx.as_ref_borrow().to_src_symidx().as_rc())?;
                            } else {
                                assert!(var_symidx.as_ref_borrow().index_ssa==None);
                                for ssa_version in symtab.get(&var_symidx.as_ref_borrow().to_src_symidx())?.get_ssa_versions()?.clone(){
                                    alloc_stack_mem_for_cfg_entry(cfg_graph, cfg_entry, symtab, &ssa_version)?;
                                }
                            }
                        }
                    },
                    crate::toolkit::nhwc_instr::NhwcInstrType::DefineVar { var_symidx, vartype, op_value } => {
                    },
                    crate::toolkit::nhwc_instr::NhwcInstrType::Chi { lhs, rhs, may_def_instr } => {
                    },
                    _ => {return Err(anyhow!("cfg_entry 中不应该出现 除了 defineFunc 和 alloc 和 new_var 和 chi 之外的 instr {:?}",instr!(at instr in instr_slab)));},
                }
            }
            // align the mem by RISCV_STACK_MEM_ALIGN
            node_mut!(at cfg_entry in cfg_graph).get_mut_mem_layout()?.align_mem_with_blank(RISCV_STACK_MEM_ALIGN);
            // we now can calculate offset2sp after mem_layout is calculated.
            calculate_mem_offset2sp(cfg_graph, cfg_entry, symtab, &ra_symidx)?;
            calculate_mem_offset2sp(cfg_graph, cfg_entry, symtab, &s0_symidx)?;
            for &instr in node!(at cfg_entry in cfg_graph).instrs.clone().iter(){
                match &instr!(at instr in instr_slab)?.instr_type{
                    crate::toolkit::nhwc_instr::NhwcInstrType::DefineFunc { func_symidx: _, ret_symidx: _, args } => {
                        for arg in args{
                            if symtab.get(&arg.as_ref_borrow().to_src_symidx())?.get_type()?.is_array(){
                                panic!("we will not alloc mem for array in stack arg")
                            }else if symtab.get(&arg.as_ref_borrow().to_src_symidx())?.get_type()?.is_ptr_64(){
                                calculate_mem_offset2sp(cfg_graph, cfg_entry, symtab, &arg)?;
                            }else{
                                for ssa_version in symtab.get(&arg.as_ref_borrow().to_src_symidx())?.get_ssa_versions()?.clone(){
                                    calculate_mem_offset2sp(cfg_graph, cfg_entry, symtab, &ssa_version)?;
                                }
                            }
                        }
                    },
                    crate::toolkit::nhwc_instr::NhwcInstrType::Alloc { var_symidx_vec, vartype: _ } => {
                        for var_symidx in var_symidx_vec{
                            if symtab.get(&var_symidx.as_ref_borrow())?.get_type()?.is_array(){
                                calculate_mem_offset2sp(cfg_graph, cfg_entry, symtab, &var_symidx)?;
                            }else if symtab.get(&var_symidx.as_ref_borrow().to_src_symidx())?.get_type()?.is_ptr_64(){
                                calculate_mem_offset2sp(cfg_graph, cfg_entry, symtab, &var_symidx)?;
                            }else {
                                assert!(var_symidx.as_ref_borrow().index_ssa==None);// you should never apply ssa to alloc
                                for ssa_version in symtab.get(&var_symidx.as_ref_borrow().to_src_symidx())?.get_ssa_versions()?.clone(){
                                    calculate_mem_offset2sp(cfg_graph, cfg_entry, symtab, &ssa_version)?;
                                }
                            }
                        }
                    },
                    crate::toolkit::nhwc_instr::NhwcInstrType::DefineVar { var_symidx, vartype, op_value } => {
                    },
                    crate::toolkit::nhwc_instr::NhwcInstrType::Chi { lhs, rhs, may_def_instr } => {
                    },
                    _ => {return Err(anyhow!("cfg_entry 中不应该出现 除了 defineFunc 和 alloc 和 new_var 和 chi 之外的 instr {:?}",instr!(at instr in instr_slab)));},
                }
            }
            debug_info_red!("alloc ended");
        }
        Ok(()) 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass demo description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "MemAllocPass".to_string(); }
}
pub fn calculate_mem_offset2sp(cfg_graph:&mut CfgGraph,cfg_entry:u32,symtab:&mut SymTab,rc_symidx:&RcSymIdx) -> Result<()>{
    let mem_layout = node!(at cfg_entry in cfg_graph).get_mem_layout()?;
    let symidx = rc_symidx.as_ref_borrow();
    let mem_offset2sp = (mem_layout.get_mem_len() - *symtab.get(&symidx)?.get_mem_offset2s0()? as usize - symtab.get(&symidx.to_src_symidx())?.get_type()?.get_mem_len()?) as isize;
    symtab.get_mut(&symidx)?.add_mem_offset2sp(mem_offset2sp);
    Ok(())
}


/// 接受一个symidx 以索引 symtab 中的符号，获取这个符号的类型然后加入到 cfg_entry 的mem_layout 中
pub fn alloc_stack_mem_for_cfg_entry(cfg_graph:&mut CfgGraph,cfg_entry:u32,symtab:&mut SymTab,rc_symidx:&RcSymIdx)->Result<()>{
    let symidx = rc_symidx.as_ref_borrow();

    let cfg_node_struct = node_mut!(at cfg_entry in cfg_graph);
    // get the ty of this ssa symidx 
    let sym_type = symtab.get(&symidx.to_src_symidx())?.get_type()?.clone();
    let ssa_symbol_struct = symtab.get_mut(&symidx)?;
    if !cfg_node_struct.has_mem_layout(){
        cfg_node_struct.add_mem_layout(MemLayout::new())
    }
    let mem_offset = cfg_node_struct.get_mut_mem_layout()?.insert_data(sym_type.get_align()?,sym_type.get_mem_len()?,&rc_symidx) as isize;
    ssa_symbol_struct.add_mem_offset2s0(mem_offset);
    Ok(())
}

pub fn get_func_instr_of_cfg_entry(cfg_entry:u32,cfg_graph:&CfgGraph) -> usize{
    assert!(node!(at cfg_entry in cfg_graph).cfg_node_type.is_entry());
    node!(at cfg_entry in cfg_graph).instrs[0]
}
pub fn get_src_arg_symidx_vec_of_func_define_instr(func_def_instr:usize,symtab:&SymTab, instr_slab:&InstrSlab<NhwcInstr>)-> Result<Vec<RcSymIdx>>{
    let instr_struct = instr!(at func_def_instr in instr_slab)?;
    match &instr_struct.instr_type{
        crate::toolkit::nhwc_instr::NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
            // we should find rc of src symidx of arg because you may import ssa_index which means just a version of src_symidx
            Ok(args.clone().iter_mut().map(|arg| symtab.get_symidx_cor_rc(&arg.as_ref_borrow().to_src_symidx()).unwrap()).collect_vec())
        },
        _ => {
            return Err(anyhow!("you can't read args from {:?}",instr_struct))
        }
    }

}
pub fn get_arg_symidx_vec_of_func_define_instr(func_def_instr:usize,symtab:&SymTab, instr_slab:&InstrSlab<NhwcInstr>)-> Result<Vec<RcSymIdx>>{
    let instr_struct = instr!(at func_def_instr in instr_slab)?;
    match &instr_struct.instr_type{
        crate::toolkit::nhwc_instr::NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {
            // we should find rc of src symidx of arg because you may import ssa_index which means just a version of src_symidx
            Ok(args.clone())
        },
        _ => {
            return Err(anyhow!("you can't read args from {:?}",instr_struct))
        }
    }

}
pub fn add_ra_s0_of_func_to_symtab(cfg_entry:u32,cfg_graph:&CfgGraph,instr_slab:&InstrSlab<NhwcInstr>, symtab:&mut SymTab) -> Result<(RcSymIdx,RcSymIdx)>{
    let rc_s0_symidx = add_symbol!({
        let mut s0_for_cfg_entry = S0.clone();
        s0_for_cfg_entry.symbol_name = format!("{}_{}",s0_for_cfg_entry.symbol_name,node!(at cfg_entry in cfg_graph).get_func_cor_symidx()?.as_ref_borrow().symbol_name);
        Symbol::new_from_symidx(&s0_for_cfg_entry)
    }
        with_field TYPE:{Type::Ptr64 { ty: Box::new(Type::Void) }}
        with_field IS_LITERAL:{false}
        with_field IS_GLOBAL:{false}
        to symtab
    );
    let rc_ra_symidx = add_symbol!({
        let mut ra_for_cfg_entry = RA.clone();
        ra_for_cfg_entry.symbol_name = format!("{}_{}",ra_for_cfg_entry.symbol_name,node!(at cfg_entry in cfg_graph).get_func_cor_symidx()?.as_ref_borrow().symbol_name);
        Symbol::new_from_symidx(&ra_for_cfg_entry)
    }
        with_field TYPE:{Type::Ptr64 { ty: Box::new(Type::Void) }}
        with_field IS_LITERAL:{false}
        with_field IS_GLOBAL:{false}
        to symtab
    );
    // tell func symbol its ra_symidx & s0_symidx
    symtab.get_mut(&node!(at cfg_entry in cfg_graph).get_func_cor_symidx()?.as_ref_borrow())?.add_func_cor_ra_symidx(rc_ra_symidx.clone());
    symtab.get_mut(&node!(at cfg_entry in cfg_graph).get_func_cor_symidx()?.as_ref_borrow())?.add_func_cor_s0_symidx(rc_s0_symidx.clone());
    Ok((rc_ra_symidx.clone(),rc_s0_symidx.clone()))
}