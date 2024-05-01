use std::cmp::Ordering;

use crate::{add_field, add_symbol, debug_info_green, debug_info_yellow, direct_child_nodes, direct_parent_nodes, instr, make_field_trait_for_struct, make_specialized_get_field_fn_for_struct, node, node_mut, push_phi_instr, reg_field_name};
use itertools::{Itertools};

use crate::toolkit::symtab::{SymTabEdge,SymTabGraph};
use super::{cfg_node::{CfgGraph, CfgInstrIdx}, context::DjGraph, decl_def_use_node::DduGraph, etc, nhwc_instr::{InstrSlab, InstrType, PhiPair}, symbol::{Symbol}, symtab::{SymIdx, SymTab}};
use anyhow::{anyhow, Result, Context};

reg_field_name!(REACHING_DEF:reaching_def);
reg_field_name!(MAX_SSA_IDX:max_ssa_idx);
// make_specialized_get_field_fn_for_struct!(CfgNode { PHI_INSTRS:Vec<u32>, } with fields info);
make_field_trait_for_struct!(Option<SymIdx>);
make_specialized_get_field_fn_for_struct!(Symbol {
    REACHING_DEF:Option<SymIdx>,
    MAX_SSA_IDX:SymIdx,
} with_fields fields);
// 由于 每个 ssa symbol 都有唯一定义，因此我们可以把这个instr 存在里面

reg_field_name!(INSTR:instr);
make_field_trait_for_struct!(usize);
make_specialized_get_field_fn_for_struct!(Symbol {
    INSTR:usize,
} with_fields fields);


pub fn add_phi_nodes(cfg_graph:&mut CfgGraph,dj_graph:&mut DjGraph,symtab:&mut SymTab,instr_slab:&mut InstrSlab, ddu_grpah:&mut DduGraph, op_symtab_graph:&mut Option<&mut SymTabGraph>)->Result<()>{
    for (func_symidx,_cfg_entry) in symtab.get_global_info().get_all_cfg_func_name_entry_tuples()?.iter(){
        for variable in symtab.get_symbol(func_symidx)?.get_declared_vars()?{
            let mut cfg_instr_idx_vec:Vec<_> = symtab.get_symbol(variable)?.get_def_instrs_vec()?.iter().map(|&instr|instr!(at instr in instr_slab).unwrap().get_cfg_instr_idx().unwrap()).collect();
            cfg_instr_idx_vec.sort();
            // get the cfg work list 
            let mut cfg_node_instr_groups:Vec<_> = cfg_instr_idx_vec.iter().group_by(|idx|idx.cfg_node).into_iter().map(
                |(cfg_node,group)|{
                    let instr = group.last().unwrap().get_instr(&cfg_graph).unwrap();
                    (cfg_node,instr)
                }
            ).collect();
            // defs of the variable 
            let def_cfg_nodes:Vec<u32> = cfg_node_instr_groups.iter().map(|x|x.0).collect();
            while !cfg_node_instr_groups.is_empty(){
                let (cfg_node,instr) = cfg_node_instr_groups.pop().unwrap();
                let domiance_frontiers = node!(at cfg_node in cfg_graph).get_domiance_frontier_nodes()?.clone();
                for cfg_df_node in domiance_frontiers{
                    if let Some(vec_idx) = find_first_def_in_instr_vec(&node_mut!(at cfg_df_node in cfg_graph).phi_instrs, variable, instr_slab, Ordering::Less,None)?{
                        let phi_instr = node!(at cfg_df_node in cfg_graph).phi_instrs[vec_idx];
                        debug_info_yellow!("append {:?} {:?}",(cfg_df_node,phi_instr),instr_slab.get_mut_instr(phi_instr)?);
                        // if let InstrType::Phi { lhs, rhs }=&mut instr_slab.get_mut_instr(phi_instr)?.instr_type{
                        //     rhs.push_phi_pair(PhiPair::new(lhs.clone(),instr ))?;
                        // }else{
                        //     return Err(anyhow!("找到了非 phi node"));
                        // }
                    }else {
                        // 事实上我们在这个阶段并不需要添加 phi node 的几个 use 参数，这个在 variable_renaming 的时候可以很好的解决
                        // let mut phi_pairs = vec![];
                        // phi_pairs.push(PhiPair::new(variable.clone(),instr));
                        // 由于 c语言要求在 dominator 中 必须已经先声明 变量，因此我们可以直接假定存在这个 dom_instr 故直接 unwrap 是可行的
                        // let phi_instr_struct = InstrType::new_phi_node(variable.clone(), phi_pairs ).to_instr();
                        let phi_instr_struct = InstrType::new_phi_node(variable.clone(), vec![]).to_instr();
                        let new_phi_instr = push_phi_instr!(phi_instr_struct to cfg_df_node in cfg_graph slab instr_slab);

                        // 如果 def_cfg_nodes 不包含 这个 cfg_node ，那么需要把这个cfg_node 添加到 work_list 中，进行phi_node的再生产 reproduction
                        if !def_cfg_nodes.contains(&cfg_df_node) {
                            cfg_node_instr_groups.push((cfg_df_node,new_phi_instr));
                            debug_info_yellow!("push {:?}",(cfg_df_node,new_phi_instr));
                        }
                    }
                }
            }
            //遍历每个 phi node，如果它所在的 cfg_node 的入边

            // let recent_dom_instr = find_recent_dom_instr_before(false, cfg_node, variable.clone(), 0, cfg_graph, dj_graph, instr_slab)?.unwrap().get_instr(cfg_graph)?;
            // phi_pairs.push(PhiPair::new(variable.clone(),recent_dom_instr));
        }
    }

    Ok(())
}
pub fn variable_renaming(cfg_graph:&mut CfgGraph,dj_graph:&mut DjGraph,symtab:&mut SymTab,instr_slab:&mut InstrSlab, ddu_grpah:&mut DduGraph, op_symtab_graph:&mut Option<&mut SymTabGraph>)->Result<()>{
        // 添加 ssa_index 0 作为NULl ，一开始所有变量的 reaching_def 都是 NULl
    for (func_symidx,_cfg_func_entry) in symtab.get_global_info().get_all_cfg_func_name_entry_tuples()?.clone().iter(){
        for src_symidx in symtab.get_symbol(func_symidx)?.get_declared_vars()?.clone(){
            // let symbol = symtab.get_mut_symbol(&src_symidx)?;
            // symbol.add_reaching_def_with_debug(None, symtab, op_symtab_graph)
            add_field!(
                with_field REACHING_DEF:{None}
                with_field MAX_SSA_IDX:{src_symidx.clone()}
                to src_symidx in symtab
            );
            // let src_type = symtab.get_symbol(&src_symidx)?.get_type()?.clone();
        }
    }

    for (func_symidx,cfg_func_entry) in symtab.get_global_info().get_all_cfg_func_name_entry_tuples()?.clone().iter(){
        let cfg_func_entry = *cfg_func_entry;
        let &dj_func_entry = node!(at cfg_func_entry in cfg_graph).get_cor_dj_node()?;
        // 开始 对这一个 func 进行 dfs
        for dj_node in etc::dfs_with_predicate(dj_graph, dj_func_entry, |e| e.weight().is_dom()){
            let cfg_node = node!(at dj_node in dj_graph).cor_cfg_node;
            for &instr in node!(at cfg_node in cfg_graph).get_all_instrs_iter(){
                debug_info_green!("renaming instr {} in cfg_node {}",instr, cfg_node);
                let mut instr_struct = instr_slab.get_instr(instr)?.clone();
                // for non-phi-instr i
                if !instr_struct.is_phi(){
                    for use_symidx in instr_struct.get_mut_use_symidx_vec(){
                        let &is_const = symtab.get_symbol(&use_symidx)?.get_is_const()?;
                        let &is_temp = symtab.get_symbol(&use_symidx)?.get_is_temp()?;
                        if !is_const && !is_temp{
                            update_reaching_def(instr, use_symidx, symtab, cfg_graph, dj_graph, instr_slab)?;
                            *use_symidx = symtab.get_symbol(use_symidx)?.get_reaching_def()?.clone().context(anyhow!("ssa renaming 时发现变量在{:?}:instr[{}] 在 use 之前没有定义",use_symidx,instr))?;
                        }else{
                            // 说明这是个常量或临时变量，不用renaming
                        }
                    }
                }
                // for any instr i
                for def_symidx in instr_struct.get_mut_def_symidx_vec().iter_mut(){
                    // symtab.get_mut_symbol(def_symidx)?.get_instr()
                    let &is_const = symtab.get_symbol(&def_symidx)?.get_is_const()?;
                    let &is_temp = symtab.get_symbol(&def_symidx)?.get_is_temp()?;
                    if !is_temp && !is_const{
                        let new_ssa_symidx = symtab.get_symbol(def_symidx)?.get_max_ssa_idx()?.get_next_ssa_symidx();
                        *symtab.get_mut_symbol(def_symidx)?.get_mut_max_ssa_idx()? = new_ssa_symidx.clone();

                        debug_info_yellow!("reach_def_symidx {:?} in instr {}",def_symidx,instr);
                        update_reaching_def(instr, def_symidx, symtab, cfg_graph, dj_graph, instr_slab)?;

                        let new_symidx = add_symbol!({new_ssa_symidx.into_symbol()}
                            // with field TYPE:{}
                            with_field INSTR:{instr}
                            // with field DEF_INSTRS_VEC:{Vec::<usize>::new()}
                            // with field REACHING_DEF:{symtab.get_symbol(src_symidx)?.get_type()?.clone()}
                            with_field REACHING_DEF:{None}
                        to symtab debug op_symtab_graph);

                        let src_symidx  = def_symidx.clone();
                        // replace the definition of src_symidx by def_symidx
                        **def_symidx = new_symidx.clone();
                        // symtab.get_mut_symbol(&src_symidx).
                        // 以下构建def use 链
                        let cloned_src_reaching_def = symtab.get_symbol(&src_symidx)?.get_reaching_def()?.clone();
                        let new_sym_reaching_def = symtab.get_mut_symbol(&new_symidx)?.get_mut_reaching_def()?; 
                        *new_sym_reaching_def = cloned_src_reaching_def;
                        let src_sym_reaching_def = symtab.get_mut_symbol(&src_symidx)?.get_mut_reaching_def()?; 
                        *src_sym_reaching_def = Some(new_symidx);
                    }
                }
                *instr_slab.get_mut_instr(instr)? = instr_struct;
            }
            for &child_cfg_node in direct_child_nodes!(at cfg_node in cfg_graph).iter(){
                for &phi_instr in node!(at child_cfg_node in cfg_graph).phi_instrs.iter(){
                    debug_info_yellow!("process_successor_phi_instr {}",phi_instr);
                    let mut phi_instr_struct = instr_slab.get_instr(phi_instr)?.clone();
                    if let InstrType::Phi { lhs, rhs } = &mut phi_instr_struct.instr_type{
                        let phi_def_symidx =  lhs.to_src_symidx();
                        debug_info_yellow!("transform {:?} to {:?}",phi_def_symidx,symtab.get_symbol(&phi_def_symidx)?.get_reaching_def()?);
                        let phi_use_symidx = symtab.get_symbol(&phi_def_symidx)?.get_reaching_def()?.clone().context("这个symbol 的reaching def = None")?;
                        rhs.push_phi_pair(PhiPair::new(phi_use_symidx, 0))?;
                        update_reaching_def(phi_instr, &phi_def_symidx, symtab, cfg_graph, dj_graph, instr_slab)?;
                    }
                    // }
                    *instr_slab.get_mut_instr(phi_instr)? = phi_instr_struct;
                }
            }
        }
    }
    Ok(())
}

pub fn update_reaching_def(instr:usize,src_symidx:&SymIdx,symtab:&mut SymTab,cfg_graph:&CfgGraph, dj_graph:&DjGraph,instr_slab:&InstrSlab)->Result<()>{
    // src_symidx 的 reaching_def 一开始被设置为None,
    let mut r = symtab.get_symbol(src_symidx)?.get_reaching_def()?.clone();
    while r != None && !{
        debug_info_yellow!("get_instr_of {:?}",r);
        let &instr2 = symtab.get_symbol(r.as_ref().unwrap())?.get_instr()?;
        if instr_is_dominated_by(instr,instr2, cfg_graph, dj_graph, instr_slab)?{
            debug_info_yellow!("instr {} is_dominated_by instr {}",instr,instr2);
            true
        }else{
            debug_info_yellow!("instr {} is_not_dominated_by instr {}",instr,instr2);
            false
        }
    }{
        r = symtab.get_symbol(r.as_ref().unwrap())?.get_reaching_def()?.clone();
        debug_info_yellow!("while_executed_set {:?} to {:?}",r,symtab.get_symbol(r.as_ref().unwrap())?.get_reaching_def()?.clone());
    }
    debug_info_yellow!("update {:?}'s reaching_def to {:?}",src_symidx,r);
    *symtab.get_mut_symbol(src_symidx)?.get_mut_reaching_def()? = r;
    Ok(())
}

/// 找到 一个cfg_node 里面的某个 instruction 所在位置之前  某个变量 最近一次的 domiance 定义处
/// 搜索方式是首先在 当前 cfg_node 内 cfg_instr_pos 之前找存在的定义(只在 instrs找,不包括 phi_instrs)
/// djgraph 中找到这个 cfg_node 对应的 dj_node 然后沿着支配树不断向上查找，直到找到定义这个变量的dj_node 对应的cfg_node 
/// 这里需要注意的是 你想要查找的符号究竟是 带 ssa_index 的还是不带的
/// 如果 不带 ssa_index ，那么会尝试将所有遇到的 带ssa_index 符号看做一个 不带ssa_index 的符号
/// 返回 (cfg_node,instr_idx,is_in_phi)
pub fn find_recent_dom_instr_before(check_phi_instrs:bool,cfg_node:u32,symidx:SymIdx,cfg_instr_pos:usize,cfg_graph:&mut CfgGraph,dj_graph:&mut DjGraph, instr_slab:&mut InstrSlab)->Result<Option<CfgInstrIdx>>{
    {
        let instrs = &node!(at cfg_node in cfg_graph).instrs;
        if let Some(idx) = find_first_def_in_instr_vec(instrs, &symidx, instr_slab, Ordering::Less,Some(cfg_instr_pos))?{
            return Ok(Some(CfgInstrIdx::new(cfg_node,idx, false)))
        }
    }
    // 如果在 这个instruction 的 def_vec 找到了想要找的符号，那么就直接 return 
    // check phi instrs 
    if check_phi_instrs{
        let phi_instrs = &node!(at cfg_node in cfg_graph).phi_instrs;
        if let Some(idx) = find_first_def_in_instr_vec(phi_instrs, &symidx, instr_slab, Ordering::Less,None)?{
            return Ok(Some(CfgInstrIdx::new(cfg_node,idx, true)))
        }
    }
    // 检查所有 domiance node 
    let &dj_start_node = node!(at cfg_node in cfg_graph).get_cor_dj_node()?;
    let mut last_dj_node = dj_start_node;
    loop {
        let dj_parent_nodes = direct_parent_nodes!(at last_dj_node in dj_graph with_predicate {|e|e.weight().is_dom()});
        match dj_parent_nodes.len(){
            l if l>1 => {
                return Err(anyhow!("dj_node  不可能有多个 parent"));
            },
            l if l==1 => {
                last_dj_node = dj_parent_nodes[0];
                let dj_parent = dj_parent_nodes[0];
                let domiance_cfg_node = node!(at dj_parent in dj_graph).cor_cfg_node;
                {
                    let instrs = &node!(at domiance_cfg_node in cfg_graph).instrs;
                    if let Some(idx) = find_first_def_in_instr_vec(instrs, &symidx, instr_slab, Ordering::Less,None)?{
                        return Ok(Some(CfgInstrIdx::new(domiance_cfg_node,idx, false)))
                    }
                }
                if check_phi_instrs{
                    let phi_instrs = &node!(at cfg_node in cfg_graph).phi_instrs;
                    if let Some(idx) = find_first_def_in_instr_vec(phi_instrs, &symidx, instr_slab, Ordering::Less,None)?{
                        return Ok(Some(CfgInstrIdx::new(domiance_cfg_node,idx, true)))
                    }
                }
            },
            l if l==0 => {
                break;
            },
            _ => {return Err(anyhow!("dj_node parents 的 len 没有match 以上任何情况 "))}
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
    for (vec_idx,&instr) in instrs_iter{
        let instr_struct = instr_slab.get_instr(instr).unwrap();
        debug_info_yellow!("visit {:?}",instr_struct);
        let defs_vec =  instr_struct.get_def_symidx_vec();
        debug_info_yellow!("get_defs {:?}",defs_vec);

        let defs_vec:Vec<_> = defs_vec.iter().map(|f|{SymIdx::to_src_symidx(f)}).collect();
        // debug_info_yellow!("get_xmed_defs {:?}",defs_vec);
        if defs_vec.contains(&&symidx){
            // 如果在 这个instruction 的 def_vec 找到了想要找的符号，那么就直接 return 
            // debug_info_yellow!("match! {:?}",symidx);
            return Ok(Some(vec_idx))
        }
    }
    Ok(None)
}
pub fn find_all_defs_in_instr_vec(instrs:&Vec<usize>,symidx:&SymIdx,instr_slab:&mut InstrSlab, order:Ordering,op_start_from:Option<usize>) -> Result<Vec<usize>>{
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
        let defs_vec =  instr_struct.get_def_symidx_vec();
        let defs_vec:Vec<_> = defs_vec.iter().map(|f|{SymIdx::to_src_symidx(f)}).collect();
        if defs_vec.contains(&&symidx){
            // 如果在 这个instruction 的 def_vec 找到了想要找的符号，那么就直接 return 
            rst.push(idx)
        }
    }
    Ok(rst)
}

/// 判断 instr1 是否被 instr2 支配
pub fn instr_is_dominated_by(instr1:usize, instr2:usize, cfg_graph:&CfgGraph, dj_graph:&DjGraph, instr_slab:&InstrSlab)->Result<bool>{
    // 这里分两种情况，一种是instr1 和 instr2 在同一节点中，一种instr1所在的cfg_node1 支配 instr2 所在的cfg_node2
    debug_info_yellow!("check_whether instr {} is dominated by instr {}",instr1,instr2);
    let cfg_instr_idx1 = instr_slab.get_instr(instr1)?.get_cfg_instr_idx()?;
    let cfg_instr_idx2 = instr_slab.get_instr(instr2)?.get_cfg_instr_idx()?;
    if cfg_instr_idx1.cfg_node == cfg_instr_idx2.cfg_node {
        // 如果处于同一个cfg_node ，那么考虑 是否是 phi instr
        match (cfg_instr_idx1.is_in_phi,cfg_instr_idx2.is_in_phi){
            (true, true) => Ok(cfg_instr_idx1.instr_pos > cfg_instr_idx2.instr_pos),
            (true, false) => Ok(false),
            (false, true) => Ok(true),
            (false, false) =>Ok(cfg_instr_idx1.instr_pos > cfg_instr_idx2.instr_pos),
        }
    }else{
        // 如果不是同一个cfg_node ，只需要判断 whether cfg_node1 is dominated by cfg_node2
        cfg_is_dominated_by(cfg_instr_idx1.cfg_node, cfg_instr_idx2.cfg_node, cfg_graph, dj_graph)
    }

}
pub fn cfg_is_dominated_by(cfg_node1:u32, cfg_node2:u32, cfg_graph:&CfgGraph,dj_graph:&DjGraph) -> Result<bool>{
    let &dj_node1 = node!(at cfg_node1 in cfg_graph).get_cor_dj_node()?;
    let &dj_node2 = node!(at cfg_node2 in cfg_graph).get_cor_dj_node()?;

    let mut last_dj_node = dj_node1;
    loop {
        let dj_parent_nodes = direct_parent_nodes!(at last_dj_node in dj_graph with_predicate {|e|e.weight().is_dom()});
        match dj_parent_nodes.len(){
            l if l>1 => {
                return Err(anyhow!("dj_node 不应该有多个 parent"));
            },
            l if l==1 => {
                let cur_dj_node = dj_parent_nodes[0];
                if cur_dj_node == dj_node2{
                    return Ok(true);
                }
                let dj_parent = dj_parent_nodes[0];
                last_dj_node = cur_dj_node
            },
            l if l==0 => {
                break;
            },
            _ => {return Err(anyhow!("dj_node parents 的 len 没有match 以上任何情况 "))}
        }
    }
    Ok(false)
}
