use crate::{add_edge, add_node, add_node_with_edge, debug_info_yellow, instr, instr_mut, node, node_mut, reg_field_for_struct, toolkit::{context::NhwcContext, def_use_node::{DefUseEdge, DefUseNode}, dot::Config, etc::{self, generate_png_by_graph}, nhwc_instr::Instruction, pass_manager::Pass, symbol::Symbol, symtab::{SymTab, SymTabEdge, SymTabGraph}}};
use anyhow::*;
#[derive(Debug)]
pub struct DefUseChainDebugPass {
    is_gen_png:bool
}
impl DefUseChainDebugPass {
    pub fn new(is_gen_png:bool) -> Self { DefUseChainDebugPass { is_gen_png } }
}

reg_field_for_struct!(Instruction
    {
        COR_DEF_USE_NODE:u32,
    }
    with_fields info
    with_prefix DUG
);

impl Pass for DefUseChainDebugPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcContext) -> Result<()> { 
        // 先建立一个图 
        
        let (instr_slab,cfg_graph,def_use_graph,symtab )= (&mut ctx.instr_slab,&ctx.cfg_graph,&mut ctx.def_use_graph,&ctx.symtab,);

        // 先加入所有节点
        for (func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_name_entry_tuples()?{
            for &cfg_node in etc::dfs(cfg_graph, *cfg_entry).iter(){
                for &instr in node!(at cfg_node in cfg_graph).get_all_instrs_iter(){
                    let dug_node = add_node!({DefUseNode::new(instr)} to def_use_graph);
                    node_mut!(at dug_node in def_use_graph).load_instr_text(instr_slab);
                    instr_mut!(at instr in instr_slab)?.add_dug_cor_def_use_node(dug_node);
                }
            }
        }
        // 然后加入边
        for (func_symidx,cfg_entry) in symtab.get_global_info().get_all_cfg_func_name_entry_tuples()?{
            for &cfg_node in etc::dfs(cfg_graph, *cfg_entry).iter(){
                for &instr in node!(at cfg_node in cfg_graph).get_all_instrs_iter(){
                    let instr_struct = instr!(at instr in instr_slab)?;
                    for use_symidx in instr_struct.get_use_symidx_vec() {
                        let &cor_dug_node = instr_struct.get_dug_cor_def_use_node()?;
                        // if !symtab.get_symbol(use_symidx)?.has_ssa_reaching_def(){
                        //     // 说明这是个常量啥的或者函数
                        //     debug_info_yellow!("{:?} 是个常量或函数",use_symidx);
                        //     continue;
                        // }
                        // if *symtab.get_symbol(use_symidx)?.get_is_temp()?{
                        //     debug_info_yellow!("{:?} 是个临时变量",use_symidx);
                        //     continue;
                        // }
                        // let def_symidx = match symtab.get_symbol(use_symidx)?.get_ssa_def_instr()?{
                        //     Some(v) => {
                        //         v
                        //     },
                        //     None => {
                        //         println!("reaching {:?} as start",&use_symidx);
                        //         continue;
                        //     },
                        // };
                        let symbol = symtab.get_symbol(use_symidx)?;
                        let &def_instr = if symbol.has_ssa_def_instr(){
                            symbol.get_ssa_def_instr()?
                        }else{
                            continue;
                        };
                        let &def_dug_node = instr_slab.get_instr(def_instr)?.get_dug_cor_def_use_node()?;
                        let dug_edge = add_edge!({DefUseEdge::new(use_symidx.clone())} from def_dug_node to cor_dug_node in def_use_graph);
                        println!("add_edge about {:?} ",&use_symidx);
                    }
                }
            }
        }

        // 然后再把所有边连接上
        
        if self.is_gen_png {
            // let symt = self.op_cfg_graph.unwrap();
            generate_png_by_graph(&ctx.def_use_graph.clone(), "def_use_graph".to_string(), &[Config::EdgeNoLabel, Config::Record, Config::Title("def_use_graph".to_string())],&mut ctx.io_task_list)?;
        }

        Ok(()) 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass def use chain debug description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "DefUseChain Debug Pass".to_string(); }
}
