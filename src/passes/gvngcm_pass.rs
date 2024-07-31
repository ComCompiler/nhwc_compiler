use crate::{make_field_trait_for_struct, node, node_mut, reg_field_for_struct, toolkit::{cfg_node::{CfgNode, CFG_ROOT}, context::NhwcCtx, dot::Config, etc::{dfs, dfs_with_priority, generate_png_by_graph_multi_tasks}, eval_et, gen_instr_et::parse_instr_list_to_et, gvn::gvn, pass_manager::Pass}};
use ahash::{HashMap, HashMapExt, HashSet, HashSetExt};
use anyhow::*;
use crate::toolkit::field::Field;
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
pub struct GvnGcmPass {is_gen_instr_et:bool, is_gen_gvngcm_cfg:bool}
impl GvnGcmPass {
    pub fn new(is_gen_instr_et:bool, is_gen_gvngcm_cfg:bool) -> Self { GvnGcmPass { is_gen_instr_et, is_gen_gvngcm_cfg } }
}


impl Pass for GvnGcmPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> { 
        // for gvn we should traverse through the cfg node of dominant tree 

        let dom_tree= &mut ctx.dj_graph;
        let cfg_graph= &mut ctx.cfg_graph;
        let symtab= &mut ctx.symtab;
        let instr_slab= &mut ctx.nhwc_instr_slab;
        let scope_tree= &mut ctx.scope_tree;
        let instr_et = &mut ctx.instr_et;
        let &dj_root = node!(at CFG_ROOT in cfg_graph).get_cor_dj_node()?;

        let rst= gvn(instr_et,dom_tree, cfg_graph, symtab, instr_slab, scope_tree);

        if self.is_gen_gvngcm_cfg{
            for (idx,instr_struct) in ctx.nhwc_instr_slab.iter_mut(){
                instr_struct.text.clear();
                instr_struct.load_idx_text(idx);
            }
            for cfg_node_struct in ctx.cfg_graph.node_weights_mut() {
                cfg_node_struct.clear_text();
                cfg_node_struct.load_ast_node_text(&ctx.ast_tree)?;
                cfg_node_struct.load_instrs_text(&ctx.nhwc_instr_slab)?;
            }
            generate_png_by_graph_multi_tasks(&ctx.cfg_graph.clone(), "gvngcm_cfg".to_string(), &[Config::Record, Config::Rounded, Config::Title("gvngcm_cfg".to_string()), Config::NodeIndexLabel, Config::CfgBlock],&mut ctx.io_task_list)?
        }
        if self.is_gen_instr_et {
            generate_png_by_graph_multi_tasks(&ctx.instr_et.clone(), "instr_et".to_string(), &[Config::Record, Config::Title("instr_et_tree".to_string()),Config::NodeIndexLabel],&mut ctx.io_task_list)?;
        }
        rst 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass gvngcm description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "GvnGcmPass".to_string(); }
}
