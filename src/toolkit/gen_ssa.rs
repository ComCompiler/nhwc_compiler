use std::{cmp::Ordering, collections::{hash_set, HashSet}};

use crate::{add_field, add_symbol, debug_info_blue, debug_info_green, debug_info_red, debug_info_yellow, direct_child_nodes, direct_parent_nodes, instr, instr_mut, make_field_trait_for_struct, node, node_mut, reg_field_for_struct};
use ahash::{ AHashMap, AHashSet, HashMap, HashMapExt,  HashSetExt};
use bimap::BiMap;
use itertools::Itertools;
use super::{cfg_node::{CfgGraph, CfgInstrIdx, CfgNode, InCfgNodeInstrPos, InstrList, CFG_ROOT}, context::DjGraph, et_node::EtTree, etc, field::Type, gen_nhwc_cfg::{insert_bb_between, process_temp_symbol}, nhwc_instr::{InstrSlab, NhwcInstr, NhwcInstrType, PhiPair}, symbol::Symbol, symtab::{self, RcSymIdx, SymIdx, SymTab, WithBorrow}};
use anyhow::{anyhow, Result, Context};

use crate::toolkit::field::Field;


reg_field_for_struct!(Symbol {
    SSA_REACHING_DEF:Option<RcSymIdx>,
    SSA_MAX_SSA_IDX:RcSymIdx,
    } 
    with_fields fields
);
// 由于 每个 ssa symbol 都有唯一定义，因此我们可以把这个instr 存在里面
// reg_field_name!(INSTR);
reg_field_for_struct!(Symbol {
    SSA_DEF_INSTR:usize,
    NON_SSA_FIRST_DEF:usize,
} with_fields fields);
// 对应每一个src_symidx 对应的symbol 都有一个字段存储它所有的 ssa version
reg_field_for_struct!(Symbol {
    SSA_VERSIONS:Vec<RcSymIdx>,
} with_fields fields);

// parallel_copy_map is a map from rhs(to copy into) to lhs(to be copied )
// last_use_set is a set to check wether this path contains last use of symidx
make_field_trait_for_struct!(AHashMap<RcSymIdx,Option<usize>>,HashMap<isize,u32,>,HashMap<RcSymIdx,RcSymIdx>);
reg_field_for_struct!(CfgNode {
    PARALLEL_COPY_MAP:HashMap<RcSymIdx, RcSymIdx>,
    LAST_USE_MAP:AHashMap<RcSymIdx,Option<usize>>,
} with_fields info);

pub fn add_phi_nodes(cfg_graph:&mut CfgGraph,dj_graph:&mut DjGraph,symtab:&mut SymTab,instr_slab:&mut InstrSlab<NhwcInstr> )->Result<()>{
    update_cfg_instr_idx_in_cfg_graph(cfg_graph,  instr_slab)?;
    update_def_instr_vec_of_defined_symbol(cfg_graph,  symtab, instr_slab)?;

    let global_vars = symtab.get_global_info().get_global_vars()?.clone();
    for (rc_func_symidx,_cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone().iter(){
        let func_symidx = rc_func_symidx.as_ref_borrow();
        for rc_variable in symtab.get(&func_symidx)?.get_declared_vars()?.clone().iter().chain(
            global_vars.iter()
        ){
            // if *symtab.get_symbol(variable)?.get_is_temp()?{
            //     // 我们不处理 临时变量的 ssa
            //     continue;
            // }
            let variable = rc_variable.as_ref_borrow().clone();
            let mut cfg_instr_idx_vec = symtab.get(&variable)?.get_def_instrs_vec()?.iter().map(|&instr|instr!(at instr in instr_slab).unwrap().get_cfg_instr_idx().unwrap()).collect_vec();
            cfg_instr_idx_vec.sort();
            // get the cfg work list 
            let mut cfg_node_instr_groups:Vec<_> = cfg_instr_idx_vec.iter().group_by(|idx|idx.cfg_node).into_iter().map(
                |(cfg_node,group)|{
                    let instr = group.last().unwrap().get_instr(&cfg_graph).unwrap();
                    (cfg_node,instr)
                }
            ).collect();
            // defs of the variable 
            let def_cfg_nodes= cfg_node_instr_groups.iter().map(|x|x.0).collect_vec();
            while !cfg_node_instr_groups.is_empty(){
                let (cfg_node,_instr) = cfg_node_instr_groups.pop().unwrap();
                let domiance_frontiers = node!(at cfg_node in cfg_graph).get_domiance_frontier_cfg_nodes()?.clone();
                for cfg_df_node in domiance_frontiers{
                    debug_info_blue!("access cfg_df_node {} of {}",cfg_df_node, cfg_node);
                    if let Some(vec_idx) = find_first_def_in_instr_vec(&node_mut!(at cfg_df_node in cfg_graph).phi_instrs, &variable, instr_slab, Ordering::Less,None)?{
                        // 这说明phi node 已经添加过了，不需要再添加了
                        let phi_instr = node!(at cfg_df_node in cfg_graph).phi_instrs[vec_idx];
                        debug_info_blue!("appended so no need {:?} {:?}",(cfg_df_node,phi_instr),instr_slab.get_mut_instr(phi_instr)?);
                        // if let InstrType::Phi { lhs, rhs }=&mut instr_slab.get_mut_instr(phi_instr)?.instr_type{
                        //     rhs.push_phi_pair(PhiPair::new(lhs.clone(),instr ))?;
                        // }else{
                        //     return Err(anyhow!("找到了非 phi node"));
                        // }
                    }else if let Some(_recent_dom_def_instr) = find_recent_dom_instr_before(true, cfg_df_node, &variable,&symtab, 0, cfg_graph, dj_graph, instr_slab)? {
                        // 事实上我们在这个阶段并不需要添加 phi node 的几个 use 参数，这个在 variable_renaming 的时候可以很好的解决
                        // let mut phi_pairs = vec![];
                        // phi_pairs.push(PhiPair::new(variable.clone(),instr));
                        // 由于 c语言要求在 dominator 中 必须已经先声明 变量，因此我们可以直接假定存在这个 dom_instr 故直接 unwrap 是可行的
                        // let phi_instr_struct = InstrType::new_phi_node(variable.clone(), phi_pairs ).into();
                        let phi_instr_struct = NhwcInstrType::new_phi_node(rc_variable.clone(), vec![]).into();
                        let new_phi_instr = node_mut!(at cfg_df_node in cfg_graph).push_nhwc_instr(phi_instr_struct, instr_slab)?;
                        symtab.get_mut(&variable)?.get_mut_def_instrs_vec()?.push(new_phi_instr);
                        update_cfg_instr_idx_in_cfg_node_phi_instrs(cfg_graph, cfg_df_node,  instr_slab)?;

                        // 如果 def_cfg_nodes 不包含 这个 cfg_node ，那么需要把这个cfg_node 添加到 work_list 中，进行phi_node的再生产 reproduction
                        if !def_cfg_nodes.contains(&cfg_df_node) {
                            cfg_node_instr_groups.push((cfg_df_node,new_phi_instr));
                            debug_info_blue!("push {:?}",(cfg_df_node,new_phi_instr));
                        }
                    }else{
                        // 不符合插入 phi node 条件
                        // let _phi_instr_struct = NhwcInstrType::new_phi_node(variable.clone(), vec![]).into();
                        // debug_info_yellow!("remove {:?} ",phi_instr_struct);
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
pub fn variable_renaming(cfg_graph:&mut CfgGraph,dj_graph:&mut DjGraph,symtab:&mut SymTab,instr_slab:&mut InstrSlab<NhwcInstr>)->Result<()>{
    update_cfg_instr_idx_in_cfg_graph(cfg_graph,  instr_slab)?;
    // 添加 ssa_index 0 作为NULl ，一开始所有变量的 reaching_def 都是 None
    // init ssa_reaching_def and ssa_max_ssa_idx
    for (rc_func_symidx,_cfg_func_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone().iter(){
        let func_symidx = rc_func_symidx.as_ref_borrow();
        let src_symidx_vec = symtab.get_mut(&func_symidx)?.get_mut_declared_vars()?.clone();
        symtab.get_mut(&func_symidx)?.get_mut_declared_vars()?.clear();
        for src_symidx in src_symidx_vec{
            add_field!(
                with_field SSA_REACHING_DEF:{None}
                with_field SSA_MAX_SSA_IDX:{src_symidx.clone()}
                to src_symidx in symtab
            );
        }
        // 清空弹夹，因为后面ssa后全都重命名了，那么之前的值就没啥用了 
    }
    for rc_symidx in symtab.get_global_info().get_global_vars()?.clone().into_iter() {
        let ssa_symidx = rc_symidx.as_ref_borrow().to_ssa_symidx(0);
        let rc_ssa_symidx = add_symbol!({ssa_symidx.into_symbol()}
            // with field TYPE:{}
            // with field DEF_INSTRS_VEC:{Vec::<usize>::new()}
            // with field REACHING_DEF:{symtab.get_symbol(src_symidx)?.get_type()?.clone()}
            with_field SSA_DEF_INSTR:{node!(at CFG_ROOT in cfg_graph).op_label_instr.unwrap()}
            with_field SSA_REACHING_DEF:{None}
        to symtab);
        add_field!(
            with_field SSA_REACHING_DEF:{Some(rc_ssa_symidx.clone())}
            with_field SSA_MAX_SSA_IDX:{rc_ssa_symidx.clone()}
            to rc_symidx in symtab
        );
    }

    for (_func_symidx,cfg_func_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone().iter(){
        let cfg_func_entry = *cfg_func_entry;
        let &dj_func_entry = node!(at cfg_func_entry in cfg_graph).get_cor_dj_node()?;
        // 开始 对这一个 func 进行 dfs
        for dj_node in etc::dfs_with_predicate(dj_graph, dj_func_entry, |e| e.weight().is_dom()){
            // debug_info_green!("access dj_node {}",dj_node);
            let cfg_node = node!(at dj_node in dj_graph).cor_cfg_node;
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                debug_info_green!("renaming instr {} in cfg_node {}",instr, cfg_node);
                let mut instr_struct = instr_slab.get_instr(instr)?.clone();
                // for non-phi-instr i
                if !instr_struct.is_phi(){
                    for rc_use_symidx in instr_struct.get_mut_ssa_direct_use_symidx_vec().into_iter().filter(|rc| rc.should_be_ssa()){
                        let cur_reaching_def = {
                            let use_symidx = rc_use_symidx.as_ref_borrow();
                            assert!(use_symidx.is_src_symidx());
                            // let &is_temp = symtab.get_symbol(&use_symidx)?.get_is_temp()?;
                            update_reaching_def(instr, &use_symidx, symtab, cfg_graph, dj_graph, instr_slab)?;
                            debug_info_blue!("set {:?} to {:?} in instr {}",use_symidx,symtab.get(&use_symidx)?.get_ssa_reaching_def()?.clone().context(anyhow!("ssa renaming 时发现变量在{:?}:instr[{}] 在 use 之前没有定义",use_symidx,instr)),instr);
                            symtab.get(&use_symidx)?.get_ssa_reaching_def()?.clone().context(anyhow!("ssa renaming 时发现变量在{:?}:instr[{}] 在 use 之前没有定义",use_symidx,instr))?
                        };
                        *rc_use_symidx = cur_reaching_def;
                    }
                }
                // for any instr i
                for rc_def_symidx in instr_struct.get_mut_ssa_direct_def_symidx_vec().into_iter().filter(|rc| rc.should_be_ssa()){
                    // symtab.get_mut_symbol(def_symidx)?.get_instr()
                    // here def_symidx is src_symidx 
                    let def_symidx = rc_def_symidx.as_ref_borrow();
                    assert!(def_symidx.is_src_symidx());
                    // let &is_temp = symtab.get_symbol(&def_symidx)?.get_is_temp()?;
                    let new_symidx= symtab.get(&def_symidx)?.get_ssa_max_ssa_idx()?.as_ref_borrow().get_next_ssa_symidx().clone();
                    let func_cor_symbol = node!(at cfg_node in cfg_graph).get_func_cor_symidx()?.as_ref_borrow();


                    debug_info_blue!("reach_def_symidx {:?} in instr {}",def_symidx,instr);
                    update_reaching_def(instr, &def_symidx, symtab, cfg_graph, dj_graph, instr_slab)?;
                    let rc_new_symidx = add_symbol!({new_symidx.into_symbol()}
                        // with field TYPE:{}
                        // with field DEF_INSTRS_VEC:{Vec::<usize>::new()}
                        // with field REACHING_DEF:{symtab.get_symbol(src_symidx)?.get_type()?.clone()}
                        with_field SSA_DEF_INSTR:{
                            match &instr!(at instr in instr_slab)?.instr_type{
                                NhwcInstrType::Chi { lhs, rhs, may_def_instr } => {
                                    *may_def_instr
                                },
                                _ =>{instr}
                            }
                        }
                        with_field SSA_REACHING_DEF:{None}
                    to symtab);

                    // add this new ssa version to def_symidx(src_symidx)
                    if !symtab.get(&def_symidx)?.has_ssa_versions(){
                        symtab.get_mut(&def_symidx)?.add_ssa_versions(Vec::default());
                    }
                    symtab.get_mut(&def_symidx)?.get_mut_ssa_versions()?.push(rc_new_symidx.clone());

                    // 更新 func symidx 对 此函数所定义变量的记录
                    symtab.get_mut(&func_cor_symbol)?.get_mut_declared_vars()?.push(rc_new_symidx.clone());
                    *symtab.get_mut(&def_symidx)?.get_mut_ssa_max_ssa_idx()? = rc_new_symidx.clone();
                    {
                        let new_symidx = rc_new_symidx.as_ref_borrow();

                        let def_symidx = def_symidx;
                        // replace the definition of src_symidx by def_symidx
                        // symtab.get_mut_symbol(&src_symidx).
                        // 以下构建链 construct the chain 
                        let op_src_reaching_def = symtab.get(&def_symidx)?.get_ssa_reaching_def()?.clone();
                        match &op_src_reaching_def{
                            Some(src_reaching_def) => {
                                *symtab.get_mut(&rc_new_symidx.as_ref_borrow())?.get_mut_ssa_reaching_def()? = Some(src_reaching_def.clone()); 
                            },
                            None => {
                                // do nothing 
                            },
                        }
                        *symtab.get_mut(&def_symidx)?.get_mut_ssa_reaching_def()? = Some(rc_new_symidx.clone()); 
                        debug_info_yellow!("set {:?}'s reaching_def_to {:?} in instr {}",def_symidx,new_symidx,instr);
                    }
                    *rc_def_symidx = rc_new_symidx.clone();
                }
                *instr_slab.get_mut_instr(instr)? = instr_struct;
            }
            for &child_cfg_node in direct_child_nodes!(at cfg_node in cfg_graph).iter(){
                for &phi_instr in node!(at child_cfg_node in cfg_graph).phi_instrs.iter(){
                    debug_info_green!("process_successor_phi_instr {}",phi_instr);
                    let mut phi_instr_struct = instr_slab.get_instr(phi_instr)?.clone();
                    if let NhwcInstrType::Phi { lhs: rc_lhs, rhs } = &mut phi_instr_struct.instr_type{
                        let lhs = rc_lhs.as_ref_borrow();
                        let phi_def_symidx =  lhs.to_src_symidx();

                        update_reaching_def(*node!(at cfg_node in cfg_graph).iter_all_instrs().last().unwrap(), &phi_def_symidx, symtab, cfg_graph, dj_graph, instr_slab)?;

                        debug_info_yellow!("transform {:?} to {:?}",phi_def_symidx,symtab.get(&phi_def_symidx)?.get_ssa_reaching_def()?);
                        let rc_phi_use_symidx = symtab.get(&phi_def_symidx)?.get_ssa_reaching_def()?.clone().context(anyhow!("这个symbol {:?} 的reaching def = None",symtab.get(&phi_def_symidx)?))?;
                        let phi_use_symidx = rc_phi_use_symidx.as_ref_borrow();

                        let &phi_use_def_instr = symtab.get(&phi_use_symidx)?.get_ssa_def_instr()?;
                        rhs.push_phi_pair(PhiPair::new(rc_phi_use_symidx.clone(),phi_use_def_instr,cfg_node))?;
                        // update_reaching_def(phi_instr, &phi_def_symidx, symtab, cfg_graph, dj_graph, instr_slab)?;
                    }
                    // }
                    *instr_slab.get_mut_instr(phi_instr)? = phi_instr_struct;
                }
            }
        }
    }
    Ok(())
}


pub fn update_reaching_def(instr:usize,src_symidx:&SymIdx,symtab:&mut SymTab,cfg_graph:&CfgGraph, dj_graph:&DjGraph,instr_slab:&InstrSlab<NhwcInstr>)->Result<()>{
    // src_symidx 的 reaching_def 一开始被设置为None,
    let mut r = symtab.get(&src_symidx)?.get_ssa_reaching_def()?.as_ref();
    debug_info_blue!("current_ssa_reaching_def {:?}",r);
    let mut count = 0;
    while r != None && {
        let &instr2 = symtab.get(&r.as_ref().unwrap().as_ref_borrow())?.get_ssa_def_instr()?;
        if instr_is_dominated_by(instr,instr2, cfg_graph, dj_graph, instr_slab)? {
            debug_info_blue!("{:?} is_dominated_by {:?}",instr!(at instr in instr_slab)?, instr!(at instr2 in instr_slab)?);
            false
        }else {
            count  = count +1 ;
            if count> 20 {
                return Err(anyhow!("count >20"));
            }
            debug_info_blue!("{:?} is_not_dominated_by {:?}",instr!(at instr in instr_slab)?, instr!(at instr2 in instr_slab)?);
            true
        }
    }

    {
        r = symtab.get(&r.unwrap().as_ref_borrow())?.get_ssa_reaching_def()?.as_ref();
        // debug_info_blue!("while_executed_set {:?} to {:?}",r,symtab.get(&r.as_ref().unwrap().as_ref_borrow())?.get_ssa_reaching_def()?.clone());
    }
    debug_info_blue!("update {:?}'s reaching_def to {:?}",src_symidx,r);
    *symtab.get_mut(&src_symidx)?.get_mut_ssa_reaching_def()? = r.cloned();
    Ok(())
}

/// 找到 一个cfg_node 里面的某个 instruction 所在位置之前  某个变量 最近一次的 domiance 定义处
/// 搜索方式是首先在 当前 cfg_node 内 cfg_instr_pos 之前找存在的定义(只在 instrs找,不包括 phi_instrs)
/// djgraph 中找到这个 cfg_node 对应的 dj_node 然后沿着支配树不断向上查找，直到找到定义这个变量的dj_node 对应的cfg_node 
/// 这里需要注意的是 你想要查找的符号究竟是 带 ssa_index 的还是不带的
/// 如果 不带 ssa_index ，那么会尝试将所有遇到的 带ssa_index 符号看做一个 不带ssa_index 的符号
/// 返回 (cfg_node,instr_idx,is_in_phi)
pub fn find_recent_dom_instr_before(check_phi_instrs:bool,cfg_node:u32,symidx:&SymIdx,symtab:&SymTab,cfg_instr_pos:usize,cfg_graph:&mut CfgGraph,dj_graph:&mut DjGraph, instr_slab:&mut InstrSlab<NhwcInstr>)->Result<Option<CfgInstrIdx>>{
    {
        let instrs = &node!(at cfg_node in cfg_graph).instrs;
        if let Some(idx) = find_first_def_in_instr_vec(instrs, &symidx, instr_slab, Ordering::Less,Some(cfg_instr_pos))?{
            return Ok(Some(CfgInstrIdx::new(cfg_node,InCfgNodeInstrPos::InInstrs { instr_pos: idx })))
        }
    }
    // 如果在 这个instruction 的 def_vec 找到了想要找的符号，那么就直接 return 
    // check phi instrs 
    if check_phi_instrs{
        let phi_instrs = &node!(at cfg_node in cfg_graph).phi_instrs;
        if let Some(idx) = find_first_def_in_instr_vec(phi_instrs, &symidx, instr_slab, Ordering::Less,None)?{
            return Ok(Some(CfgInstrIdx::new(cfg_node,InCfgNodeInstrPos::InPhi { phi_instr_pos: idx } )))
        }
    }
    // 检查所有 domiance node 
    let &dj_start_node = node!(at cfg_node in cfg_graph).get_cor_dj_node()?;
    let mut last_dj_node = dj_start_node;
    let mut hash_set = HashSet::new(); 
    for &def_instr in symtab.get(symidx)?.get_def_instrs_vec()?{
        hash_set.insert(instr!(at def_instr in instr_slab)?.get_cfg_instr_idx()?.cfg_node);
    }
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
                if !hash_set.contains(&domiance_cfg_node){
                    continue;
                }

                {
                    let instrs = &node!(at domiance_cfg_node in cfg_graph).instrs;
                    if let Some(idx) = find_first_def_in_instr_vec(instrs, &symidx, instr_slab, Ordering::Less,None)?{
                        return Ok(Some(CfgInstrIdx::new(domiance_cfg_node,InCfgNodeInstrPos::InInstrs { instr_pos: idx })))
                    }
                }
                if check_phi_instrs{
                    let phi_instrs = &node!(at cfg_node in cfg_graph).phi_instrs;
                    if let Some(idx) = find_first_def_in_instr_vec(phi_instrs, &symidx, instr_slab, Ordering::Less,None)?{
                        return Ok(Some(CfgInstrIdx::new(domiance_cfg_node,InCfgNodeInstrPos::InPhi { phi_instr_pos: idx })))
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
/// Mention: this func will compare given symidx **as src_symidx** with defined symbol in instr
pub fn find_first_def_in_instr_vec(instrs:&InstrList,symidx:&SymIdx,instr_slab:&mut InstrSlab<NhwcInstr>, order:Ordering, op_start_from:Option<usize>) -> Result<Option<usize>>{
    let instrs_iter:Box<dyn Iterator<Item =_>> = match (order,op_start_from){
        (Ordering::Less, None) => { Box::new(instrs.iter().enumerate().rev()) },
        (Ordering::Less, Some(start_from)) => { Box::new(instrs.iter().enumerate().take(start_from).rev())},
        (Ordering::Greater, None) => {Box::new(instrs.iter().enumerate())},
        (Ordering::Greater, Some(start_from)) => { Box::new(instrs.iter().enumerate().take(start_from))},
        _ => return Err(anyhow!("错误输入 order"))
    };
    for (vec_idx,&instr) in instrs_iter{
        let instr_struct = instr_slab.get_instr(instr).unwrap();
        let defs_vec =  instr_struct.get_ssa_direct_def_symidx_vec();

        let defs_vec = defs_vec.iter().map(|f|{SymIdx::to_src_symidx(&f.as_ref_borrow())}).collect_vec();
        if defs_vec.contains(symidx){
            // 如果在 这个instruction 的 def_vec 找到了想要找的符号，那么就直接 return 
            debug_info_blue!("match! {:?}",symidx);
            return Ok(Some(vec_idx))
        }
    }
    Ok(None)
}
pub fn find_all_defs_in_instr_vec(instrs:&InstrList,symidx:&SymIdx,instr_slab:&mut InstrSlab<NhwcInstr>, order:Ordering,op_start_from:Option<usize>) -> Result<Vec<usize>>{
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
        let defs_vec =  instr_struct.get_ssa_direct_def_symidx_vec();
        let defs_vec:Vec<_> = defs_vec.iter().map(|f|{SymIdx::to_src_symidx(&f.as_ref_borrow())}).collect();
        if defs_vec.contains(symidx){
            // 如果在 这个instruction 的 def_vec 找到了想要找的符号，那么就放进去
            rst.push(idx)
        }
    }
    Ok(rst)
}

/// 判断 instr1 是否被 instr2 支配
pub fn instr_is_dominated_by(instr1:usize, instr2:usize, cfg_graph:&CfgGraph, dj_graph:&DjGraph, instr_slab:&InstrSlab<NhwcInstr>)->Result<bool>{
    // 如果instr1 == instr2 这里是非严格支配
    if instr1 == instr2 {return Ok(true)}
    // 这里分两种情况，一种是instr1 和 instr2 在同一节点中，一种instr1所在的cfg_node1 支配 instr2 所在的cfg_node2
    debug_info_blue!("check_whether instr {} is dominated by instr {}",instr1,instr2);
    let cfg_instr_idx1 = instr_slab.get_instr(instr1)?.get_cfg_instr_idx()?;
    let cfg_instr_idx2 = instr_slab.get_instr(instr2)?.get_cfg_instr_idx()?;
    if cfg_instr_idx1.cfg_node == cfg_instr_idx2.cfg_node {
        // 如果处于同一个cfg_node ，那么考虑 是否是 phi instr
        match (&cfg_instr_idx1.in_cfg_instr_pos,&cfg_instr_idx2.in_cfg_instr_pos){
            (InCfgNodeInstrPos::InPhi { phi_instr_pos:phi_instr_pos1 }, InCfgNodeInstrPos::InPhi { phi_instr_pos:phi_instr_pos2 }) => Ok(phi_instr_pos1> phi_instr_pos2),
            (InCfgNodeInstrPos::InPhi { phi_instr_pos: _ }, InCfgNodeInstrPos::InInstrs { instr_pos: _}) => Ok(false),
            (InCfgNodeInstrPos::InInstrs { instr_pos: _}, InCfgNodeInstrPos::InPhi { phi_instr_pos: _ }) => Ok(true),
            (InCfgNodeInstrPos::InInstrs { instr_pos:instr_pos1 }, InCfgNodeInstrPos::InInstrs { instr_pos:instr_pos2 }) =>Ok(instr_pos1 > instr_pos2),
            (InCfgNodeInstrPos::InPhi { phi_instr_pos: _ }, InCfgNodeInstrPos::InLabel {  }) => Ok(true),
            (InCfgNodeInstrPos::InInstrs { instr_pos: _ }, InCfgNodeInstrPos::InLabel {  }) => Ok(true),
            (InCfgNodeInstrPos::InPhi { phi_instr_pos: _ }, InCfgNodeInstrPos::InJump {  }) => Ok(false),
            (InCfgNodeInstrPos::InInstrs { instr_pos: _ }, InCfgNodeInstrPos::InJump {  }) => Ok(false),
            (InCfgNodeInstrPos::InLabel {  }, InCfgNodeInstrPos::InPhi { phi_instr_pos: _ }) => Ok(false),
            (InCfgNodeInstrPos::InLabel {  }, InCfgNodeInstrPos::InInstrs { instr_pos: _ }) => Ok(false),
            (InCfgNodeInstrPos::InLabel {  }, InCfgNodeInstrPos::InLabel {  }) => Ok(false),
            (InCfgNodeInstrPos::InLabel {  }, InCfgNodeInstrPos::InJump {  }) => Ok(false),
            (InCfgNodeInstrPos::InJump {  }, InCfgNodeInstrPos::InPhi { phi_instr_pos: _ }) => Ok(true),
            (InCfgNodeInstrPos::InJump {  }, InCfgNodeInstrPos::InInstrs { instr_pos: _ }) => Ok(true),
            (InCfgNodeInstrPos::InJump {  }, InCfgNodeInstrPos::InLabel {  }) => Ok(true),
            (InCfgNodeInstrPos::InJump {  }, InCfgNodeInstrPos::InJump {  }) => Ok(true),
            // _ => Err(anyhow!("instr_is_dominated_by 只讨论 普通Instr 和 Phi_instr 之间的支配关系，无法识别 instr1:{} instr2:{}",instr1,instr2))
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
                let _dj_parent = dj_parent_nodes[0];
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

pub fn is_critical_edge(cfg_node_from:u32,cfg_node_to:u32, cfg_graph:&CfgGraph) -> bool{
    if direct_child_nodes!(at cfg_node_from in cfg_graph).len() > 1 
       && direct_parent_nodes!(at cfg_node_to in cfg_graph).len() > 1{
        true
    }else {
        false
    }
}


pub fn ssa_deconstruction(cfg_graph:&mut CfgGraph, dj_graph:&DjGraph,symtab:&mut SymTab,instr_slab:&mut InstrSlab<NhwcInstr>,et_tree:&mut EtTree)->Result<()>{
    update_cfg_instr_idx_in_cfg_graph(cfg_graph,  instr_slab)?;
    let all_cfg_func_symidx_entry_tuple = symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone();
    for (_func_symidx,cfg_entry) in all_cfg_func_symidx_entry_tuple{
        for cfg_node in etc::dfs(cfg_graph,cfg_entry){
            let mut target_node_map  = HashMap::new();
            for &phi_instr in node!(at cfg_node in cfg_graph).phi_instrs.clone().iter(){
                match &instr!(at phi_instr in instr_slab)?.instr_type.clone(){
                    NhwcInstrType::Phi { lhs, rhs } => {
                        for phi_pair in &rhs.phi_pairs{
                            if phi_pair.symidx.as_ref_borrow().is_literal() 
                            || !symtab.get(&phi_pair.symidx.as_ref_borrow().to_src_symidx())?.get_type()?.is_array() 
                            && !symtab.get(&phi_pair.symidx.as_ref_borrow().to_src_symidx())?.get_type()?.is_ptr_64()
                            && !*symtab.get(&phi_pair.symidx.as_ref_borrow().to_src_symidx())?.get_is_global()? && phi_pair.symidx != *lhs{
                                let target_cfg_node = if is_critical_edge(phi_pair.comming_cfg_node, cfg_node, cfg_graph){
                                    // 检查 comming_cfg_node 是否已有备胎
                                    if let Some(&inserted) = target_node_map.get(&phi_pair.comming_cfg_node){
                                        inserted
                                    }else {
                                        let inserted_bb = insert_bb_between(phi_pair.comming_cfg_node, cfg_node, cfg_graph,symtab, instr_slab)?;
                                        target_node_map.insert(phi_pair.comming_cfg_node, inserted_bb);
                                        inserted_bb
                                    }
                                }else {
                                    phi_pair.comming_cfg_node
                                };
                                // if phi_pair.symidx.as_ref_borrow().is_literal(){
                                //     node_mut!(at target_cfg_node in cfg_graph).push_nhwc_instr(
                                //         NhwcInstrType::new_assign(lhs.clone()
                                //         , phi_pair.symidx.clone(), 
                                //         lhs.as_ref_borrow().get_ty(symtab)?.clone()).into()
                                //         , instr_slab)?;
                                // }else {
                                let inserted_bb_struct = node_mut!(at target_cfg_node in cfg_graph);
                                if !inserted_bb_struct.has_parallel_copy_map(){ inserted_bb_struct.add_parallel_copy_map(HashMap::new()); }
                                // this is a map from rhs(to copy into) to lhs(to be copied )
                                let parallel_copy_map = inserted_bb_struct.get_mut_parallel_copy_map()?;
                                assert!(parallel_copy_map.get(&lhs).is_none());
                                parallel_copy_map.insert( lhs.as_ref_borrow().clone().as_rc(),phi_pair.symidx.as_ref_borrow().clone().as_rc(),);
                            }
                        }
                    }
                    NhwcInstrType::Nope {  } => {
                        // do nothing
                    }
                    _ => {
                        panic!("find non-phi instr in phi_instrs of cfg_node:{}",cfg_node);
                    }
                }
            }
            node_mut!(at cfg_node in cfg_graph).phi_instrs.instr_vec.clear();
        }
        



        // now unwrap all parallel_copy_map into seq  ref: ssabook page 265
        for cfg_node in etc::dfs(cfg_graph,cfg_entry){
            // if the cfg_node has this parallel copy map
            if node!(at cfg_node in cfg_graph).has_parallel_copy_map(){
                let parallel_copy_map = node!(at cfg_node in cfg_graph).get_parallel_copy_map()?.clone();
                let mut val_pos_bimap = BiMap::new();
                let mut todo = vec![];
                for (dst,src) in parallel_copy_map.iter(){
                    if !src.as_ref_borrow().is_literal(){
                        debug_info_blue!("insert bimap of dst:{:?} src:{:?}",dst,src);
                        val_pos_bimap.insert(src.clone(), src.clone());
                        todo.push(dst.clone());
                    }
                }

                let mut ready = vec![];
                for (dst,src) in parallel_copy_map.iter(){
                    if !src.as_ref_borrow().is_literal(){
                        // println!("insert ready of {:?}",src);
                        if val_pos_bimap.get_by_left(dst).is_none(){
                            // we thought this pos is available now
                            ready.push(dst.clone());
                        }
                    }
                }
                debug_info_red!("ready list {:?}",ready);
                debug_info_red!("todo list {:?}",todo);
                let mut op_tmp = None;
                loop {
                    // debug_info_red!("bimap{:?}",val_pos_bimap);
                    while let Some(dst) = ready.pop() {
                        debug_info_yellow!("dst {:?}",dst);
                        if parallel_copy_map.get(&dst) == val_pos_bimap.get_by_right(&dst)  {
                            debug_info_yellow!("dst continue {:?}",dst);
                            continue;
                        }
                        let target_val = parallel_copy_map.get(&dst).unwrap();
                        // node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(instr, instr_slab)

                        // println!("read pos of {:?}",val);
                        let pos_of_val = val_pos_bimap.get_by_left(target_val).unwrap().clone();
                        node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(
                            NhwcInstrType::new_assign(dst.clone()
                            , pos_of_val.clone(), 
                            dst.as_ref_borrow().get_ty(symtab)?.clone()).into()
                            , instr_slab)?;
                        // update the pos of val because copied to dst
                        debug_info_yellow!("copy pos:{:?} of val:{:?} into {:?} when parsing all ready",pos_of_val,target_val,dst);
                        todo.swap_remove(todo.iter().position(|x| x == &dst).unwrap());
                        match val_pos_bimap.insert(target_val.clone(), dst.clone()){
                            bimap::Overwritten::Neither => todo!(),
                            bimap::Overwritten::Left(l, r) => {
                                debug_info_yellow!("val pos map:{:?}",val_pos_bimap);
                                if let Some(val) = parallel_copy_map.get(&r) {
                                    if !val.as_ref_borrow().is_literal() && todo.contains(&r){
                                        debug_info_red!("pushed {:?}",r);
                                        ready.push(r);
                                    }
                                }
                            },
                            bimap::Overwritten::Right(_, _) => todo!(),
                            bimap::Overwritten::Pair(_, _) => todo!(),
                            bimap::Overwritten::Both(_, _) => todo!(),
                        }
                    }
                    if let Some(todo_dst) = todo.last(){
                        // if target value is not in target pos then mv the cor value of target pos to tmp
                        if &val_pos_bimap.get_by_left(parallel_copy_map.get(&todo_dst).unwrap()).unwrap() != &todo_dst{
                            let tmp_pos = op_tmp.get_or_insert_with(||{
                                process_temp_symbol(cfg_graph, symtab, &Type::I32, 0, cfg_node, instr_slab, None, et_tree, "swap").unwrap()
                            });
                            // mv value of cur destination to tmp then insert value 
                            node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(
                                NhwcInstrType::new_assign(tmp_pos.clone()
                                , todo_dst.clone(), 
                                todo_dst.as_ref_borrow().get_ty(symtab)?.clone()).into()
                                , instr_slab)?;
                            // replace (todo_dst, value) pair with (tmp_pos, value) pair
                            let dst_cur_val =val_pos_bimap.get_by_right(&todo_dst).unwrap().clone();
                            // println!("copy pos:{:?} of val:{:?} into {:?}",todo_dst,dst_cur_val,tmp_pos);
                            match val_pos_bimap.insert(dst_cur_val,tmp_pos.clone() ){
                                bimap::Overwritten::Neither => {todo!() },
                                bimap::Overwritten::Left(_, _) => {
                                    if parallel_copy_map.get(&todo_dst).is_some(){
                                        ready.push(todo_dst.clone());
                                    }
                                },
                                bimap::Overwritten::Right(_, _) => {todo!() },
                                bimap::Overwritten::Pair(_, _) => todo!(),
                                bimap::Overwritten::Both(_, _) => todo!(),
                            }
                            ready.push(todo_dst.clone());
                        }
                    }else {
                        break;
                    }
                }
                for (dst,src) in parallel_copy_map.iter(){
                    if src.as_ref_borrow().is_literal(){
                        node_mut!(at cfg_node in cfg_graph).push_nhwc_instr(
                            NhwcInstrType::new_assign(dst.clone()
                            , src.clone(), 
                            src.as_ref_borrow().get_ty(symtab)?.clone()).into()
                            , instr_slab)?;
                    }
                }

            }
        }
        // cancel all index_ssa in all symbols in instrs 
        for cfg_node in etc::dfs(cfg_graph,cfg_entry){
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                for rc_symidx in instr_mut!(at instr in instr_slab)?.get_mut_ssa_direct_def_symidx_vec().iter_mut().filter(|rc| !rc.as_ref_borrow().is_literal()){
                    if !rc_symidx.as_ref_borrow().is_literal() && symtab.get(&rc_symidx.as_ref_borrow().to_src_symidx())?.get_type()?.is_ptr_64(){
                        rc_symidx.as_ref_borrow_mut().index_ssa = None;
                    }
                }
                for rc_symidx in instr_mut!(at instr in instr_slab)?.get_mut_ssa_direct_use_symidx_vec().iter_mut(){
                    if !rc_symidx.as_ref_borrow().is_literal() && symtab.get(&rc_symidx.as_ref_borrow().to_src_symidx())?.get_type()?.is_ptr_64(){
                        rc_symidx.as_ref_borrow_mut().index_ssa = None;
                    }
                }
            }
        }
    }
    // gen_untrack_instr(symtab, cfg_graph, instr_slab, dj_graph)?;
    Ok(())
}

pub fn update_cfg_instr_idx_in_cfg_graph(cfg_graph:&mut CfgGraph,instr_slab:&mut InstrSlab<NhwcInstr>)->Result<()>{
    for cfg_node in etc::dfs(cfg_graph, 0) {
        update_cfg_instr_idx_in_cfg_node(cfg_graph, cfg_node,  instr_slab)?;
    }
    Ok(())
}
pub fn update_cfg_instr_idx_in_cfg_node(cfg_graph:&mut CfgGraph,cfg_node:u32,instr_slab:&mut InstrSlab<NhwcInstr>)->Result<()>{
    update_cfg_instr_idx_in_cfg_node_instrs(cfg_graph, cfg_node, instr_slab)?;
    update_cfg_instr_idx_in_cfg_node_phi_instrs(cfg_graph, cfg_node,  instr_slab)?;
    for &instr in node_mut!(at cfg_node in cfg_graph).op_label_instr.iter() {
        instr_slab.get_mut_instr(instr).unwrap().add_cfg_instr_idx(CfgInstrIdx::new(cfg_node, InCfgNodeInstrPos::InLabel {  } ));   
    }
    for &instr in node_mut!(at cfg_node in cfg_graph).op_jump_instr.iter() {
        instr_slab.get_mut_instr(instr).unwrap().add_cfg_instr_idx(CfgInstrIdx::new(cfg_node, InCfgNodeInstrPos::InJump {  } ));   
    }
    Ok(())
}
fn update_cfg_instr_idx_in_cfg_node_instrs(cfg_graph:&mut CfgGraph,cfg_node:u32,instr_slab:&mut InstrSlab<NhwcInstr>)->Result<()>{
    let outdated = &mut node_mut!(at cfg_node in cfg_graph).instrs.outdated ;
    // 只有当instrList 是outdated 状态才进行操作
    if !*outdated {
        debug_info_blue!("cfg_node:{} is not outdated",cfg_node);
        return Ok(());
    }
    *outdated = false;
    debug_info_yellow!("refresh node {}",cfg_node);

    for (instr_pos,&instr) in node_mut!(at cfg_node in cfg_graph).instrs.iter().enumerate() {
        instr_slab.get_mut_instr(instr).unwrap().add_cfg_instr_idx(CfgInstrIdx::new(cfg_node, InCfgNodeInstrPos::InInstrs { instr_pos }));   
    }
    Ok(())
}
fn update_cfg_instr_idx_in_cfg_node_phi_instrs(cfg_graph:&mut CfgGraph,cfg_node:u32,instr_slab:&mut InstrSlab<NhwcInstr>)->Result<()>{
    let outdated = &mut node_mut!(at cfg_node in cfg_graph).phi_instrs.outdated ;
    // 只有当instrList 是outdated 状态才进行操作
    if !*outdated {
        return Ok(());
    }
    *outdated = false;
    debug_info_blue!("refresh phi node {}",cfg_node);

    for (instr_pos,&phi_instr) in node_mut!(at cfg_node in cfg_graph).phi_instrs.iter().enumerate() {
        instr_slab.get_mut_instr(phi_instr).unwrap().add_cfg_instr_idx(CfgInstrIdx::new(cfg_node, InCfgNodeInstrPos::InPhi { phi_instr_pos: instr_pos }));   
    }
    Ok(())
}

fn update_def_instr_vec_of_defined_symbol(cfg_graph:&mut CfgGraph,symtab:&mut SymTab,instr_slab:&mut InstrSlab<NhwcInstr> )->Result<()>{
    let cfg_dfs_vec = etc::dfs(cfg_graph, CFG_ROOT);
    for (symidx,symbol) in symtab.iter_mut(){
        if symbol.has_def_instrs_vec(){
            symbol.get_mut_def_instrs_vec()?.clear();
        }
    }
    for cfg_node in cfg_dfs_vec{
        for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
            for def_symidx in instr!(at instr in instr_slab)?.get_ssa_direct_def_symidx_vec().iter(){
                debug_info_yellow!("{:?} def_instrs_vec push {:?}",def_symidx,instr);
                symtab.get_mut(&def_symidx.as_ref_borrow())?.get_mut_def_instrs_vec()?.push(instr);
            }
        }
    }
    Ok(())
}

trait SSACheck {
    fn should_be_ssa(&self)->bool;
}

impl SSACheck for RcSymIdx{
    fn should_be_ssa(&self)->bool {
        self.as_ref_borrow().should_be_ssa()
    }
}

impl SSACheck for SymIdx{
    fn should_be_ssa(&self)->bool {
        // debug_info_red!("should be ssa {:?} {}",&self,!(self.is_literal() || self.is_global_ptr()));
        !(self.is_literal() || self.is_global_ptr())
    }
}


pub fn update_ssa_def_instr(cfg_graph:&CfgGraph, symtab:&mut SymTab, instr_slab:&InstrSlab<NhwcInstr>) -> Result<()>{
    for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone().iter(){
        let cfg_entry = *cfg_entry;
        for cfg_node in etc::dfs(cfg_graph,cfg_entry){
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                for rc_symidx in instr!(at instr in instr_slab)?.get_ssa_direct_def_symidx_vec(){
                    if symtab.has_symbol(&rc_symidx.as_ref_borrow()){
                        symtab.get_mut(&rc_symidx.as_ref_borrow())?.add_ssa_def_instr(instr)
                    }
                }
                match &instr!(at instr in instr_slab)?.instr_type{
                    NhwcInstrType::Mu { may_use_symidx, may_use_instr } => {
                    },
                    NhwcInstrType::Chi { lhs, rhs, may_def_instr } => {
                        symtab.get_mut(&lhs.as_ref_borrow())?.add_ssa_def_instr(*may_def_instr)
                    },
                    _ => {

                    }
                }
            }
        }
    }

    Ok(())
}
pub fn update_ssa_def_instr_of_entry(cfg_graph:&CfgGraph, symtab:&mut SymTab, instr_slab:&InstrSlab<NhwcInstr>, cfg_entry:u32) -> Result<()>{
    for cfg_node in etc::dfs(cfg_graph,cfg_entry){
        for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
            for rc_symidx in instr!(at instr in instr_slab)?.get_ssa_direct_def_symidx_vec(){
                if symtab.has_symbol(&rc_symidx.as_ref_borrow()){
                    symtab.get_mut(&rc_symidx.as_ref_borrow())?.add_ssa_def_instr(instr)
                }
            }
            match &instr!(at instr in instr_slab)?.instr_type{
                NhwcInstrType::Mu { may_use_symidx, may_use_instr } => {
                },
                NhwcInstrType::Chi { lhs, rhs, may_def_instr } => {
                    symtab.get_mut(&lhs.as_ref_borrow())?.add_ssa_def_instr(*may_def_instr)
                },
                _ => {

                }
            }
        }
    }
    Ok(())
}


// pub fn ssa_index_correct(cfg_graph:&CfgGraph, symtab:&mut SymTab, instr_slab:&InstrSlab<NhwcInstr>){

//     // process_temp_symbol(cfg_graph, symtab, &Type::I32, 0, cfg_node, instr_slab, None, et_tree, "swap").unwrap()
// }



static mut untrack_num:i32= 0;
static mut untrack_max:i32= 100;
pub fn gen_untrack_instr(symtab:&mut SymTab, cfg_graph:&mut CfgGraph, instr_slab:&mut InstrSlab<NhwcInstr>, dj_graph:&DjGraph) -> Result<()>{
    update_cfg_instr_idx_in_cfg_graph(cfg_graph, instr_slab)?;
    last_use_and_first_def_analysis(symtab, cfg_graph,  instr_slab, dj_graph)?;
    for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone().iter(){
        let cfg_entry = *cfg_entry;
        // append untrack instr for each cfg_node 
        for cfg_node in etc::dfs(cfg_graph, cfg_entry ){
            let cur_last_use_map = node!(at cfg_node in cfg_graph).get_last_use_map()?.clone();
            let cur_keys:HashSet<&RcSymIdx> = cur_last_use_map.keys().collect();

            let mut untrack_processed_set = AHashSet::new();

            for (rc_symidx, op_last_use_instr) in &cur_last_use_map{
                let &first_def_instr = symtab.get(&rc_symidx.as_ref_borrow())?.get_non_ssa_first_def()?;
                let def_loop_level = get_loop_level_of_instr(first_def_instr, cfg_graph, instr_slab)?;

                if let Some(&last_use_instr) = op_last_use_instr.as_ref(){
                    let cfg_instr_idx = instr!(at last_use_instr in instr_slab)?.get_cfg_instr_idx()?;
                    if cfg_instr_idx.cfg_node == cfg_node &&  def_loop_level == node!(at cfg_node in cfg_graph).loop_level{
                        match cfg_instr_idx.in_cfg_instr_pos{
                            InCfgNodeInstrPos::InPhi { phi_instr_pos } => panic!(),
                            InCfgNodeInstrPos::InInstrs { instr_pos } => {
                                unsafe{
                                    if untrack_num < untrack_max{
                                        let untrack_instr = node_mut!(at cfg_node in cfg_graph).insert_nhwc_instr(
                                            NhwcInstrType::Untrack { symidx: rc_symidx.clone() }.into(), instr_pos+1, instr_slab)?;
                                        // println!("insert {:?} at {}:pos:{}",instr!(at untrack_instr in instr_slab),cfg_node,instr_pos+1);
                                        update_cfg_instr_idx_in_cfg_node(cfg_graph, cfg_node, instr_slab)?;
                                        untrack_processed_set.insert(rc_symidx);
                                        
                                        untrack_num += 1;
                                    }
                                }
                            },
                            InCfgNodeInstrPos::InLabel {  } => panic!(),
                            InCfgNodeInstrPos::InJump {  } => {
                                // do nothing
                            },
                        }
                    }
                }
            }

            for child_cfg_node in direct_child_nodes!(at cfg_node in cfg_graph){
                let child_last_use_map = node!(at child_cfg_node in cfg_graph).get_last_use_map()?.clone();
                let child_keys:HashSet<&RcSymIdx> = child_last_use_map.keys().collect(); 
                // 找到所有当前 node 中有 而 child node 没有use 的symidx
                // 如果没有就加入 
                for &rc_symidx in cur_keys.difference(&child_keys){
                    let &first_def_instr = symtab.get(&rc_symidx.as_ref_borrow())?.get_non_ssa_first_def()?;
                    let def_loop_level = get_loop_level_of_instr(first_def_instr, cfg_graph, instr_slab)?;
                    if !untrack_processed_set.contains(rc_symidx) && def_loop_level == node!(at child_cfg_node in cfg_graph).loop_level{
                        // assert!()
                        unsafe{
                            if untrack_num < untrack_max{
                                let untrack_instr = node_mut!(at child_cfg_node in cfg_graph).insert_nhwc_instr(NhwcInstrType::Untrack { symidx: rc_symidx.clone() }.into(), 0, instr_slab)?;
                                // println!("insert {:?} at {}",instr!(at untrack_instr in instr_slab),child_cfg_node);
                                let def_loop_level = get_loop_level_of_instr(first_def_instr, cfg_graph, instr_slab)?;
                                // if child

                                untrack_num += 1;
                            }
                        }
                    }
                }
                update_cfg_instr_idx_in_cfg_node(cfg_graph, child_cfg_node, instr_slab)?;
            }
        }
    }

    Ok(())
}
pub fn get_loop_level_of_instr(instr:usize,cfg_graph:&CfgGraph, instr_slab:&mut InstrSlab<NhwcInstr>)->Result<usize>{
    let cfg_node = instr!(at instr in instr_slab)?.get_cfg_instr_idx()?.cfg_node;
    Ok(node!(at cfg_node in cfg_graph).loop_level)
}
pub fn last_use_and_first_def_analysis(symtab:&mut SymTab, cfg_graph:&mut CfgGraph, instr_slab:&InstrSlab<NhwcInstr>, dj_graph:&DjGraph) -> Result<()>{
    // first merge all direct nodes' analysis
    // 对支配树进行 rpo 序
    for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone().iter(){
        let cfg_entry = *cfg_entry;
        let &dj_entry = node!(at cfg_entry in cfg_graph).get_cor_dj_node()?;
        // merge the first time
        for dj_node in etc::rpo_with_predicate(dj_graph, dj_entry, |e|e.weight().is_dom() ){
            let cfg_node = node!(at dj_node in dj_graph).cor_cfg_node;
            let dj_childs = direct_child_nodes!(at dj_node in dj_graph with_predicate {|e|e.weight().is_dom()});
            let mut hash_map = AHashMap::new();
            for &child_dj_node in &dj_childs{
                let child_cfg_node = node!(at child_dj_node in dj_graph).cor_cfg_node;
                assert!(node!(at child_cfg_node in cfg_graph).has_last_use_map());
                for (use_symidx,op_last_use_instr) in node!(at child_cfg_node in cfg_graph).get_last_use_map()?{
                    match hash_map.get_mut(use_symidx){
                        Some(op_instr) => {
                            *op_instr = None;// 发生支配树分支合并
                        },
                        None => {
                            hash_map.insert(use_symidx.clone(), op_last_use_instr.clone());
                        },
                    }
                }
            }
            // after processed all child we process all instrs in this bb
            assert!(node!(at cfg_node in cfg_graph).phi_instrs.len() == 0 );
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs_rev(){
                for use_symidx in instr!(at instr in instr_slab)?.get_ssa_direct_use_symidx_vec(){
                    if !use_symidx.as_ref_borrow().is_literal() && !symtab.get(&use_symidx.as_ref_borrow().to_src_symidx())?.get_type()?.is_array()
                        && !*symtab.get(&use_symidx.as_ref_borrow().to_src_symidx())?.get_is_global()?{
                        if hash_map.get(use_symidx).is_none(){
                            hash_map.insert(use_symidx.clone(), Some(instr));
                        }
                    }else {
                        // do nothing 
                    }
                }
            }
            node_mut!(at cfg_node in cfg_graph).add_last_use_map(hash_map);
        }


        for dj_node in etc::dfs_with_predicate(dj_graph, dj_entry, |e|e.weight().is_dom() ){
            let cfg_node = node!(at dj_node in dj_graph).cor_cfg_node;
            for &instr in node!(at cfg_node in cfg_graph).instrs.iter(){
                for def_symidx in instr!(at instr in instr_slab)?.get_ssa_direct_def_symidx_vec(){
                    if !def_symidx.as_ref_borrow().is_literal() && !symtab.get(&def_symidx.as_ref_borrow().to_src_symidx())?.get_type()?.is_array()
                        && !*symtab.get(&def_symidx.as_ref_borrow().to_src_symidx())?.get_is_global()?{
                        let def_symbol = symtab.get_mut(&def_symidx.as_ref_borrow())?;
                        if !def_symbol.has_non_ssa_first_def(){
                            def_symbol.add_non_ssa_first_def(instr);
                        }
                    }
                }
                
            }
        }
    }
    // cross the join edge 
    let join_src_set = {
        let mut hash_set = AHashSet::new();
        for join_edge_ref in dj_graph.edge_indices().into_iter().filter(|e| dj_graph.edge_weight(*e).unwrap().is_join()){
            let (s,t) = dj_graph.edge_endpoints(join_edge_ref).unwrap();
            let target_cfg_node = dj_graph.node_weight(t).unwrap().cor_cfg_node;
            let src_cfg_node = dj_graph.node_weight(s).unwrap().cor_cfg_node;
            hash_set.insert(src_cfg_node);
        }
        hash_set
    };
    for &cfg_node in join_src_set.iter(){
        let mut last_use_map = node!(at cfg_node in cfg_graph).get_last_use_map()?.clone();
        for child_cfg_node in direct_child_nodes!(at cfg_node in cfg_graph){
            for (k,v) in node!(at child_cfg_node in cfg_graph).get_last_use_map()?{
                match last_use_map.get_mut(k){
                    Some(op_instr) => {
                        *op_instr = None;// 发生支配树分支合并
                    },
                    None => {
                        last_use_map.insert(k.clone(), v.clone());
                    },
                }
            }
        }
        node_mut!(at cfg_node in cfg_graph).add_last_use_map(last_use_map);
    }
    for (rc_func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_symidx_entry_tuples()?.clone().iter(){
        let cfg_entry = *cfg_entry;
        let &dj_entry = node!(at cfg_entry in cfg_graph).get_cor_dj_node()?;
        // get the join source set, we need to update it 
        // merge the second time
        for dj_node in etc::rpo_with_predicate(dj_graph, dj_entry, |e|e.weight().is_dom() ){
            let cfg_node = node!(at dj_node in dj_graph).cor_cfg_node;
            let dj_childs = direct_child_nodes!(at dj_node in dj_graph with_predicate {|e|e.weight().is_dom()});
            let mut hash_map = node!(at cfg_node in cfg_graph).get_last_use_map()?.clone();
            for &child_dj_node in &dj_childs{
                let child_cfg_node = node!(at child_dj_node in dj_graph).cor_cfg_node;
                assert!(node!(at child_cfg_node in cfg_graph).has_last_use_map());
                for (use_symidx,op_last_use_instr) in node!(at child_cfg_node in cfg_graph).get_last_use_map()?{
                    match hash_map.get_mut(use_symidx){
                        Some(op_instr) => {
                            *op_instr = None;// 发生支配树分支合并
                        },
                        None => {
                            hash_map.insert(use_symidx.clone(), op_last_use_instr.clone());
                        },
                    }
                }
            }
            node_mut!(at cfg_node in cfg_graph).add_last_use_map(hash_map);
        }
    }
    Ok(())
}