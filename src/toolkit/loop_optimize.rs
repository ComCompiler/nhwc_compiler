use crate::{direct_child_nodes, instr, node, node_mut};
use anyhow::{anyhow, Context, Ok, Result};
use petgraph::{graph::{node_index, EdgeIndex, NodeIndex}, visit::EdgeRef};
use super::{cfg_edge::{CfgEdge, CfgEdgeType}, cfg_node::{CfgGraph, CfgNodeType, LoopInfo}, etc::dfs_with_priority, field::Value, nhwc_instr::{ArithOp, InstrSlab, JumpOp, NhwcInstr, NhwcInstrType}, symtab::{self, RcSymIdx, SymTab, WithBorrow}};
use crate::toolkit::cfg_node::CFG_ROOT;

///判断是否为可优化的循环，如果是的可优化的，则返回两个循环变量(一个用于比较的版本，一个用于自增)的option
///1.while条件表达式左边的是单一变量，不是表达式，右边是常量或者常数
///2.while循环体中的bb中只有一个对于循环变量的改变instr
pub fn can_be_optimized(cfg_node:u32,cfg_graph:&mut CfgGraph,instr_slab:&mut InstrSlab<NhwcInstr>,symtab:&SymTab) -> Result<Option<(RcSymIdx,RcSymIdx)>>{
    let while_loop_node = node!(at cfg_node in cfg_graph);
    let while_instr_vec = &while_loop_node.instrs.instr_vec;
    let comp_instr = while_instr_vec[while_instr_vec.len()-1];
    let comp_use_rcsymidx = instr!(at comp_instr in instr_slab)?.get_ssa_direct_use_symidx_vec();
    if !comp_use_rcsymidx[0].as_ref_borrow().is_temp(symtab)? && comp_use_rcsymidx[1].as_ref_borrow().is_literal() {
        let phi_instr_vec = &while_loop_node.clone().phi_instrs.instr_vec;
        for phi_instr in phi_instr_vec{
            let phi_instr = *phi_instr;
            let phi_def_rcsymidx = instr!(at phi_instr in instr_slab)?.get_ssa_direct_def_symidx_vec()[0];
            //判断比较语句的变量和phi语句的变量是否相同，并且phi语句的use的rcsymidx只有两个
            let phi_use_rcsymidx_vec = instr!(at phi_instr in instr_slab)?.get_ssa_direct_use_symidx_vec();
            if comp_use_rcsymidx[0] == phi_def_rcsymidx && phi_use_rcsymidx_vec.len() == 2{
                return Ok(Some((phi_def_rcsymidx.clone(),phi_use_rcsymidx_vec[1].clone())))
            }
        }
        Ok(None)
    }else{
        Ok(None)
    }
}

///判断循环变量的方式：
pub fn get_while_loop_info(cfg_node:u32,cfg_graph:&mut CfgGraph,instr_slab:&mut InstrSlab<NhwcInstr>,symtab:&SymTab)->Result<()>{
    if let Some((loop_rcsymidx,mut_loop_rcsymidx)) = can_be_optimized(cfg_node, cfg_graph, instr_slab, symtab)?{
        //查找whiletail的bb
        let while_outgoing_edges = cfg_graph.edges_directed(node_index(cfg_node as usize), petgraph::Direction::Incoming);
        let edge_weights: Vec<(EdgeIndex, CfgEdge)> = while_outgoing_edges.map(|edge| (edge.id(), edge.weight().clone())).collect();
        let mut while_tail_bb:Option<u32> = None; 
        for (edge_idx,cfg_edge) in edge_weights{
            if cfg_edge.cfg_edge_type.is_body_tail(){
                let (while_tail_bb_idx,_) = cfg_graph.edge_endpoints(edge_idx).unwrap();
                while_tail_bb = Some(while_tail_bb_idx.index() as u32);
            }
        }
        //查找最高版本对应的temp变量，这个temp变量的def的instr就是循环变量改变的instr
        let while_bb_node = 
        if let Some(while_tail_bb_node) = while_tail_bb{
            while_tail_bb_node
        }else{
            return Err(anyhow!("未找到whiletail节点"))
        };
        let bb_instr_vec = &node!(at while_bb_node in cfg_graph).instrs.instr_vec;
        let mut loop_arith:Option<ArithOp> = None;
        let mut loop_step:Option<isize> = None;
        for bb_instr in bb_instr_vec{
            let bb_instr = *bb_instr;
            let bb_instr_def_and_use_rcsymidx = instr!(at bb_instr in instr_slab)?.get_ssa_def_and_use_symidx_vec();
            if mut_loop_rcsymidx == bb_instr_def_and_use_rcsymidx[0].clone(){
                let temp_rcsymidx = bb_instr_def_and_use_rcsymidx[1];
                let def_instr = *symtab.get(&temp_rcsymidx.as_ref_borrow())?.get_ssa_def_instr()?;
                if let NhwcInstrType::Arith { lhs, rhs }= &instr!(at def_instr in instr_slab)?.instr_type{
                    match rhs{
                        ArithOp::Add { a, b, vartype } | 
                        ArithOp::Mul { a, b, vartype } | 
                        ArithOp::Div { a, b, vartype } | 
                        ArithOp::Sub { a, b, vartype } => {
                            loop_arith = Some(rhs.clone());
                            let step_symidx = b.as_ref_borrow();
                            loop_step = Some(Value::from_symidx(&step_symidx)?.as_i32()? as isize);
                        },
                        _ => {
                            return Err(anyhow!("循环变量{:?}不是规律变化",mut_loop_rcsymidx))
                        }
                    }
                }else{
                    return Err(anyhow!("循环变量{:?}不是规律变化",mut_loop_rcsymidx))
                }
            }else{
                return Err(anyhow!("未找到{:?}对应的def_instr",mut_loop_rcsymidx))
            }
        }
        let loop_arith_op;
        if let Some(loop_arith) = loop_arith{
            loop_arith_op = loop_arith;
        }else{
            return Err(anyhow!("找不到loop_arith"))
        };
        let loop_stride ;
        if let Some(loop_step) = loop_step{
            loop_stride = loop_step;
        }else{
            return Err(anyhow!("找不到stride"))
        }
        let loop_info = LoopInfo::new_loop_info(loop_rcsymidx, loop_arith_op, loop_stride);
        node_mut!(at cfg_node in cfg_graph).add_loop_info(loop_info);
    }else{
        return Err(anyhow!("循环{}不是可优化循环",cfg_node))
    }
    Ok(())
}

///判断循环是否需要交换优化
///1.循环层数如果小于2，则不需要交换优化
/// 2.查询最内层循环的的bb中是否有多维数组语句
/// 3.取得循环信息，判断数组语句的gep是否可以优化
pub fn can_be_exchanged(while_node_vec:Vec<u32>,cfg_graph:&mut CfgGraph,instr_slab:&mut InstrSlab<NhwcInstr>,symtab:&SymTab) -> Result<Option<()>>{
    if while_node_vec.len() < 2{
        return Ok(None)
    }
    let (innermost_while_node,outside_while_node) = (while_node_vec[while_node_vec.len()-1],while_node_vec[while_node_vec.len()-2]);
    
    Ok(None)
}

pub fn parse_loop_optimize(cfg_graph:&mut CfgGraph){
    //先遍历cfg，找出所有whilenode和while嵌套结构，一个while嵌套做成一个vec进行优化分析，
    let mut all_nest_while_vec: Vec<u32> = vec![];
    let cfg_funcs = direct_child_nodes!(at CFG_ROOT in cfg_graph);
    for &cfg_entry in cfg_funcs.iter() {
        let dfs_vec = dfs_with_priority(cfg_graph,cfg_entry,|e| match &e.weight().cfg_edge_type{
            CfgEdgeType::BodyHead {  } => -1,
            CfgEdgeType::IfFalse {  } => 6,
            CfgEdgeType::Direct {  } => 1,
            CfgEdgeType::IfTrue {  } => 7,
            CfgEdgeType::BodyTail {  } => -1,
        });
        for cfg_node in dfs_vec{
            if let CfgNodeType::WhileLoop { ast_expr_node } = node!(at cfg_node in cfg_graph).cfg_node_type{
                // if node!(at cfg_node in cfg_graph)
                let mut nest_while_node_vec = vec![cfg_node];

            }
        }
    }
}
