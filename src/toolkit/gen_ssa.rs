use std::cmp::Ordering;

use crate::{direct_parent_nodes, node, node_mut, push_phi_instr, toolkit::nhwc_instr::PhiOp};

use super::{cfg_node::{CfgGraph}, context::DjGraph, nhwc_instr::{InstrSlab, InstrType, PhiPair}, symtab::{SymIdx, SymTab}};
use anyhow::{anyhow, Result};

// reg_field_name!(PHI_INSTRS:phi_instrs);
// make_specialized_get_field_fn_for_struct!(CfgNode { PHI_INSTRS:Vec<u32>, } with fields info);



pub fn add_phi_nodes(cfg_graph:&mut CfgGraph,dj_graph:&mut DjGraph,symtab:&mut SymTab,instr_slab:&mut InstrSlab)->Result<()>{
    for func_symidx in symtab.get_global_info().get_all_cfg_func_name_entry_tuples()?.iter(){
        for variable in symtab.get_symbol(func_symidx)?.get_declared_vars()?{
            let mut work_list = symtab.get_symbol(variable)?.get_def_cfg_node_vec()?.clone();
            while !work_list.is_empty(){
                let cfg_node = work_list.pop().unwrap();
                let domiance_frontiers = node!(at cfg_node in cfg_graph).get_domiance_frontier_nodes()?.clone();
                for cfg_df_node in domiance_frontiers{
                    if let Some(cor_phi_instr) = find_first_def_in_instr_vec(&node_mut!(at cfg_df_node in cfg_graph).phi_instrs, variable, instr_slab, Ordering::Less,None)?{
                        if let InstrType::Phi { lhs, rhs }=&mut instr_slab.get_mut_instr(cor_phi_instr)?.instr_type{
                            rhs.push_phi_pair(PhiPair{ symidx: lhs.clone(), bb: cfg_node })?
                        }
                    }else {
                        let phi_instr = InstrType::new_phi_node(variable.clone(), PhiOp{ phi_pairs: vec![PhiPair{ symidx: variable.clone(), bb: cfg_node }]}).to_instr();
                        push_phi_instr!(phi_instr to cfg_df_node in cfg_graph slab instr_slab);
                    }
                }
            }
        }
    }
    Ok(())
}


/// 找到 一个cfg_node 里面的某个 instruction 所在位置之前  某个变量 最近一次的 domiance 定义处
/// 搜索方式是首先在 当前 cfg_node 内 cfg_instr_pos 之前找存在的定义(只在 instrs找,不包括 phi_instrs)
/// djgraph 中找到这个 cfg_node 对应的 dj_node 然后沿着支配树不断向上查找，直到找到定义这个变量的dj_node 对应的cfg_node 
/// 这里需要注意的是 你想要查找的符号究竟是 带 ssa_index 的还是不带的
/// 如果 不带 ssa_index ，那么会尝试将所有遇到的 带ssa_index 符号看做一个 不带ssa_index 的符号
/// 返回 (cfg_node,instr_idx,is_in_phi)
pub fn find_recent_dom_instr_before(check_phi_instrs:bool,cfg_node:u32,symidx:SymIdx,cfg_instr_pos:usize,cfg_graph:&mut CfgGraph,dj_graph:&mut DjGraph, instr_slab:&mut InstrSlab)->Result<Option<(u32,usize,bool)>>{
    {
        let instrs = &node!(at cfg_node in cfg_graph).instrs;
        if let Some(idx) = find_first_def_in_instr_vec(instrs, &symidx, instr_slab, Ordering::Less,Some(cfg_instr_pos))?{
            return Ok(Some((cfg_node,idx, false)))
        }
    }
    // 如果在 这个instruction 的 def_vec 找到了想要找的符号，那么就直接 return 
    // check phi instrs 
    if check_phi_instrs{
        let phi_instrs = &node!(at cfg_node in cfg_graph).phi_instrs;
        if let Some(idx) = find_first_def_in_instr_vec(phi_instrs, &symidx, instr_slab, Ordering::Less,None)?{
            return Ok(Some((cfg_node,idx, true)))
        }
    }
    // 检查所有 domiance node 
    let &dj_node = node!(at cfg_node in cfg_graph).get_dj_cor_node()?;
    loop {
        let dj_parent_nodes = direct_parent_nodes!(at dj_node in dj_graph with_predicate {|e|e.weight().is_dom()});
        if dj_parent_nodes.len()!=1{
            break;
        }
        let dj_parent = dj_parent_nodes[0];
        let domiance_cfg_node = node!(at dj_parent in dj_graph).cor_cfg_node;

        {
            let instrs = &node!(at domiance_cfg_node in cfg_graph).instrs;
            if let Some(idx) = find_first_def_in_instr_vec(instrs, &symidx, instr_slab, Ordering::Less,None)?{
                return Ok(Some((domiance_cfg_node,idx, false)))
            }
        }

        if check_phi_instrs{
            let phi_instrs = &node!(at cfg_node in cfg_graph).phi_instrs;
            if let Some(idx) = find_first_def_in_instr_vec(phi_instrs, &symidx, instr_slab, Ordering::Less,None)?{
                return Ok(Some((domiance_cfg_node,idx, true)))
            }
        }
    }
    // Err(anyhow!("在cfg_node 的所有 domiance nodes 中都没找到这个定义"))
    Ok(None)
}

/// 返回找到包含此 symbol 的instruction 的在给定Vec中的下标，其中有两个ordering 选项，greater or less 如果是rev 查找，那么就只需要指定 Ordering::Less就行了，反之Greater
pub fn find_first_def_in_instr_vec(instrs:&Vec<usize>,symidx:&SymIdx,instr_slab:&mut InstrSlab, order:Ordering, op_start_from:Option<usize>) -> Result<Option<usize>>{
    let instrs_iter:Box<dyn Iterator<Item =_>> = match (order,op_start_from){
        (Ordering::Less, None) => { Box::new(instrs.iter().enumerate().rev()) },
        (Ordering::Less, Some(start_from)) => { Box::new(instrs.iter().enumerate().take(start_from).rev())},
        (Ordering::Greater, None) => {Box::new(instrs.iter().enumerate())},
        (Ordering::Greater, Some(start_from)) => { Box::new(instrs.iter().enumerate().take(start_from))},
        _ => return Err(anyhow!("错误输入 order"))
    };
    for (idx,&instr) in instrs_iter{
        let instr_struct = instr_slab.get_instr(instr).unwrap();
        match instr_struct.get_def_vec(){
            Some(mut defs_vec) => {
                let defs_vec:Vec<_> = defs_vec.iter_mut().map(|f|{&*SymIdx::as_src_symidx(f)}).collect();
                if defs_vec.contains(&&symidx){
                    // 如果在 这个instruction 的 def_vec 找到了想要找的符号，那么就直接 return 
                    return Ok(Some(idx))
                }
            },
            None => {
                // 只能说明这个instruction 里面没有想要找的
            },
        }
    }
    Ok(None)
}
pub fn find_add_defs_in_instr_vec(instrs:&Vec<usize>,symidx:&SymIdx,instr_slab:&mut InstrSlab, order:Ordering,op_start_from:Option<usize>) -> Result<Vec<usize>>{
    let instrs_iter:Box<dyn Iterator<Item =_>> = match (order,op_start_from){
        (Ordering::Less, None) => { Box::new(instrs.iter().enumerate().rev()) },
        (Ordering::Less, Some(start_from)) => { Box::new(instrs.iter().enumerate().take(start_from).rev())},
        (Ordering::Greater, None) => {Box::new(instrs.iter().enumerate())},
        (Ordering::Greater, Some(start_from)) => { Box::new(instrs.iter().enumerate().take(start_from))},
        _ => return Err(anyhow!("错误输入 order"))
    };
    let mut rst = vec![];
    for (idx,&instr) in instrs_iter{
        let instr_struct = instr_slab.get_instr(instr).unwrap();
        match instr_struct.get_def_vec(){
            Some(mut defs_vec) => {
                let defs_vec:Vec<_> = defs_vec.iter_mut().map(|f|{&*SymIdx::as_src_symidx(f)}).collect();
                if defs_vec.contains(&&symidx){
                    // 如果在 这个instruction 的 def_vec 找到了想要找的符号，那么就直接 return 
                    rst.push(idx)
                }
            },
            None => {
                // 只能说明这个instruction 里面没有想要找的
            },
        }
    }
    Ok(rst)
}