use crate::{add_symbol, debug_info_red, direct_child_nodes, node, node_mut, toolkit::{cfg_node::{CfgGraph, CFG_ROOT}, context::NhwcCtx, mem_layout::{self, MemLayout}, pass_manager::Pass, scope_node::ST_ROOT, symbol::Symbol, symtab::{SymIdx, SymTab}}};
use anyhow::*;
use crate::toolkit::field::Type;
use lazy_static::lazy_static;
use crate::instr;
/// 定义额外的信息，这样我们就可以把 add_field 宏加入到符号表或者任何实现了 Fields trait 的地方
/// 任何一个Pass 都有一个pass_run函数 来进行这个pass 相关的工作，比如说对于 SSAPass 我们要对 一个BasicBlock 中的ExprTree做出转换。
/// 因为实际上 一个 ExprTree 最终会对应一个BasicBlock。
/// 可能会有人问，那我们为什么还要生成 nhwc_ir ？ 因为 nhwc_ir 有如下优点
/// 1. 便于debug，到时候这个pass 写完生成这个 cfg 对应的 llvm_ir 我就能更清楚的知道我们到底做了哪些更改
/// 2. nhwc_ir 是线性的结构，而 汇编语言也是线性的结构 ，这样就可以 从 nhwc_ir 转换成 汇编代码了
///
///
///
/// 总上，pass 的主要操作对象是 每个basic block 的expr_tree以及 cfg node。这点我们大概不会变
/// 这个结构体，用于存储与Pass 相关的数据
///
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
        for &cfg_entry in &cfg_entries{
            debug_info_red!("alloc started {}",cfg_entry);
            let s0_symidx = add_symbol!({
                let mut s0_for_cfg_entry = S0.clone();
                s0_for_cfg_entry.symbol_name = format!("{}_{}",s0_for_cfg_entry.symbol_name,node!(at cfg_entry in cfg_graph).get_func_cor_symidx()?.symbol_name);
                Symbol::new_from_symidx(&s0_for_cfg_entry)
            }
                with_field TYPE:{Type::Ptr64 { ty: Box::new(Type::Void) }}
                with_field IS_LITERAL:{false}
                with_field IS_GLOBAL:{false}
                to symtab
            );
            let ra_symidx = add_symbol!({
                let mut ra_for_cfg_entry = RA.clone();
                ra_for_cfg_entry.symbol_name = format!("{}_{}",ra_for_cfg_entry.symbol_name,node!(at cfg_entry in cfg_graph).get_func_cor_symidx()?.symbol_name);
                Symbol::new_from_symidx(&ra_for_cfg_entry)
            }
                with_field TYPE:{Type::Ptr64 { ty: Box::new(Type::Void) }}
                with_field IS_LITERAL:{false}
                with_field IS_GLOBAL:{false}
                to symtab
            );
            // tell func symbol its ra_symidx & s0_symidx
            symtab.get_mut_symbol(node!(at cfg_entry in cfg_graph).get_func_cor_symidx()?)?.add_func_cor_ra_symidx(ra_symidx.clone());
            symtab.get_mut_symbol(node!(at cfg_entry in cfg_graph).get_func_cor_symidx()?)?.add_func_cor_s0_symidx(s0_symidx.clone());

            node_mut!(at cfg_entry in cfg_graph).add_mem_layout(MemLayout::new());
            alloc_stack_mem_for_cfg_entry(cfg_graph, cfg_entry, symtab, &ra_symidx)?;
            alloc_stack_mem_for_cfg_entry(cfg_graph, cfg_entry, symtab, &s0_symidx)?;
            for &instr in node!(at cfg_entry in cfg_graph).instrs.clone().iter(){
                match &instr!(at instr in instr_slab)?.instr_type{
                    crate::toolkit::nhwc_instr::NhwcInstrType::DefineFunc { func_symidx: _, ret_symidx: _, args } => {
                        for arg in args{
                            alloc_stack_mem_for_cfg_entry(cfg_graph, cfg_entry, symtab, &arg.to_src_symidx())?;
                        }
                    },
                    crate::toolkit::nhwc_instr::NhwcInstrType::Alloc { var_symidx, vartype: _ } => {
                        alloc_stack_mem_for_cfg_entry(cfg_graph, cfg_entry, symtab, &var_symidx.to_src_symidx())?;
                    },
                    _ => {return Err(anyhow!("cfg_entry 中不应该出现 除了 defineFunc 和 alloc 之外的 instr"));},
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
                            calculate_mem_offset2sp(cfg_graph, cfg_entry, symtab, &arg.to_src_symidx())?;
                        }
                    },
                    crate::toolkit::nhwc_instr::NhwcInstrType::Alloc { var_symidx, vartype: _ } => {
                        calculate_mem_offset2sp(cfg_graph, cfg_entry, symtab, &var_symidx.to_src_symidx())?;
                    },
                    _ => {return Err(anyhow!("cfg_entry 中不应该出现 除了 defineFunc 和 alloc 之外的 instr"));},
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
pub fn calculate_mem_offset2sp(cfg_graph:&mut CfgGraph,cfg_entry:u32,symtab:&mut SymTab,symidx:&SymIdx) -> Result<()>{
    let mem_layout = node!(at cfg_entry in cfg_graph).get_mem_layout()?;
    let mem_offset2sp = mem_layout.get_mem_len() - symtab.get_symbol(symidx)?.get_mem_offset2s0()? - symtab.get_symbol(symidx)?.get_type()?.get_ele_size()?;
    symtab.get_mut_symbol(symidx)?.add_mem_offset2sp(mem_offset2sp);
    Ok(())
}


/// 接受一个symidx 以索引 symtab 中的符号，获取这个符号的类型然后加入到 cfg_entry 的mem_layout 中
pub fn alloc_stack_mem_for_cfg_entry(cfg_graph:&mut CfgGraph,cfg_entry:u32,symtab:&mut SymTab,symidx:&SymIdx)->Result<()>{
    let cfg_node_struct = node_mut!(at cfg_entry in cfg_graph);
    let symbol_struct = symtab.get_mut_symbol(symidx)?;
    if !cfg_node_struct.has_mem_layout(){
        cfg_node_struct.add_mem_layout(MemLayout::new())
    }
    let sym_type =symbol_struct.get_type()?;
    let mem_offset = cfg_node_struct.get_mut_mem_layout()?.insert_data(sym_type.get_align()?,sym_type.get_mem_len()?,symidx);
    symbol_struct.add_mem_offset2s0(mem_offset);
    Ok(())
}