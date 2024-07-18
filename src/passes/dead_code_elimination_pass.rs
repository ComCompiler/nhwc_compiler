use crate::{ debug_info_blue, debug_info_green, instr_mut, node, reg_field_for_struct, toolkit::{context::NhwcCtx, dot::Config, etc::{_reverse_dfs_with_predicate, generate_png_by_graph_multi_tasks}, gen_dug::parse_dug, nhwc_instr::{JumpOp, NhwcInstr, NhwcInstrType}, pass_manager::Pass, symtab::{SymTab, SymTabEdge, SymTabGraph}}};
use anyhow::*;
use crate::instr;
#[derive(Debug)]
pub struct DeadCodeEliminationPass {
    is_gen_dug_png:bool,
    is_gen_dce_cfg_png:bool,
}
impl DeadCodeEliminationPass {
    pub fn new(is_gen_dug_png:bool, is_gen_dce_cfg_png:bool) -> Self { DeadCodeEliminationPass { is_gen_dug_png, is_gen_dce_cfg_png } }
}

reg_field_for_struct!(NhwcInstr
    {
        COR_DEF_USE_NODE:u32,
    }
    with_fields info
    with_prefix DUG
);

impl Pass for DeadCodeEliminationPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> { 
        // 先建立一个图 
        let (instr_slab,cfg_graph,def_use_graph,symtab,dj_graph, call_graph)= (&mut ctx.nhwc_instr_slab,&mut ctx.cfg_graph,&mut ctx.def_use_graph,&mut ctx.symtab,&ctx.dj_graph, &ctx.call_graph);
        
        // 1. set all instruction that 
        // unrelevant to a ret instruction
        // && unrelevant to a external func call
        // && unrelevant to br
        // to nop 
        let mut relevant_dug_nodes = vec![];
        for dug_node_idx in def_use_graph.node_indices(){
            let dug_node = dug_node_idx.index() as u32;
            let instr = node!(at dug_node in def_use_graph).instr;
            match &instr!(at instr in instr_slab)?.instr_type {
                NhwcInstrType::Call { op_assigned_symidx, func_op } => {
                    relevant_dug_nodes.push(*instr!(at instr in instr_slab)?.get_dug_cor_def_use_node()?);
                },
                NhwcInstrType::Jump { jump_op:JumpOp::Ret { op_ret_sym} } => {
                    relevant_dug_nodes.push(*instr!(at instr in instr_slab)?.get_dug_cor_def_use_node()?);
                },
                NhwcInstrType::Jump { jump_op:JumpOp::Br { cond, t1, t2 } } => {
                    relevant_dug_nodes.push(*instr!(at instr in instr_slab)?.get_dug_cor_def_use_node()?);
                }
                _ => {
                    
                }
            }
        }
        let mut visited_array:Vec<bool> = vec![false; def_use_graph.node_count()];
        for dug_node in relevant_dug_nodes{
            _reverse_dfs_with_predicate(def_use_graph, dug_node, &mut visited_array, &mut vec![], &mut |x| true)
        }
        for dug_node in visited_array.iter().enumerate().filter(|(idx,b)|!*b).map(|(idx,b)| idx as u32){
            let unvisited_instr = node!(at dug_node in def_use_graph).instr;
            match &instr!(at unvisited_instr in instr_slab)?.instr_type{
                NhwcInstrType::Label { label_symidx } => {},
                NhwcInstrType::DefineFunc { func_symidx, ret_symidx, args } => {},
                NhwcInstrType::DefineVar { var_symidx, vartype, op_value } => {},
                NhwcInstrType::Alloc { var_symidx, vartype } => {},
                NhwcInstrType::Globl { var_symidx, vartype } => {},
                _ => {
                    debug_info_blue!("set instr {} to nope {:?}",unvisited_instr, instr!(at unvisited_instr in instr_slab)?);
                    *instr_mut!(at unvisited_instr in instr_slab )? = NhwcInstrType::Nope {  }.into();
                }
            }
        }
        
        if self.is_gen_dug_png {
            // let symt = self.op_cfg_graph.unwrap();
            for def_use_node in def_use_graph.node_weights_mut(){
                let instr = def_use_node.instr;
                if instr!(at instr in instr_slab)?.instr_type.is_nope(){
                    def_use_node.text += " DELETED";
                }
            }
            generate_png_by_graph_multi_tasks(&ctx.def_use_graph.clone(), "dce_def_use_graph".to_string(), &[Config::Record, Config::Title("dce_def_use_graph".to_string()),Config::RankDirLR],&mut ctx.io_task_list)?;
        }
        if self.is_gen_dce_cfg_png {
            // let symt = self.op_cfg_graph.unwrap();
            for cfg_node in cfg_graph.node_weights_mut(){
                cfg_node.text.clear();
                cfg_node.load_instrs_text(instr_slab)?;
            }
            generate_png_by_graph_multi_tasks(&ctx.cfg_graph.clone(), "dce_cfg_graph".to_string(), &[Config::Record, Config::Rounded,  Config::Title("dce_cfg_graph".to_string()),Config::CfgBlock,Config::NodeIndexLabel],&mut ctx.io_task_list)?;
        }

        Ok(()) 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass dead code elimination description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "DeadCodeElimination Pass".to_string(); }
}
