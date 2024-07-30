use crate::{
    add_edge, antlr_parser::cparser::{RULE_declaration, RULE_expression, RULE_forDeclaration, RULE_parameterList}, node, toolkit::{self, ast_node::find_dfs_rule_ast, context::NhwcCtx, dot::Config, et_node::EtNodeType, etc::generate_png_by_graph_multi_tasks, gen_instr_et::parse_instr_list_to_et, pass_manager::Pass, symtab::SymIdx}
};
use ahash::{HashMap, HashMapExt, HashSet, HashSetExt};
use anyhow::Result;
use bimap::BiHashMap;
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
pub struct Nhwc2EtPass {
    is_gen_png:bool,
}
impl Nhwc2EtPass {
    pub fn new(is_gen_png:bool) -> Self { Nhwc2EtPass { is_gen_png } }
}

impl Pass for Nhwc2EtPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> { 
        let instr_et = &mut ctx.instr_et;
        let mut child_et_map = HashMap::new();
        let node:u32 = 3;
        let cfg_graph = &mut ctx.cfg_graph;
        let instrs = node!(at node in cfg_graph).instrs.iter().cloned();
        parse_instr_list_to_et(instrs, instr_et, &ctx.symtab, &mut child_et_map, &mut BiHashMap::new(), &ctx.scope_tree,&mut ctx.nhwc_instr_slab)?;
        if self.is_gen_png {
            generate_png_by_graph_multi_tasks(&ctx.instr_et.clone(), "instr_et_tree".to_string(), &[Config::Record, Config::Title("instr_et_tree".to_string()),Config::NodeIndexLabel],&mut ctx.io_task_list)?;
        }
        Ok(()) 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass Nhwc2EtPass description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "Mhwc2EtPass".to_string(); }
}