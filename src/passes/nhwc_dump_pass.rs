use std::fs;
use std::io::{Write};


use crate::toolkit::nhwc_instr::InstrType;
use crate::toolkit::scope_node::ST_ROOT;
use crate::toolkit::symtab::SymIdx;
use crate::{direct_child_node, instr, node_mut, push_instr};

use crate::{node, toolkit::{cfg_edge::CfgEdgeType, context::NhwcCtx, etc::dfs_with_priority, pass_manager::Pass}};
use anyhow::*;
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
pub struct NhwcCollectPass {
    is_gen_nhwc_ir_file:bool
}
impl NhwcCollectPass {
    pub fn new(is_gen_nhwc_ir_file:bool) -> Self { NhwcCollectPass {  is_gen_nhwc_ir_file } }
}

impl Pass for NhwcCollectPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> { 
        let mut nhwc_ir_vec = vec![];
        
        let (args,instr_slab,cfg_graph,nhwc_ir_list) = (&ctx.args,&mut ctx.instr_slab,&mut ctx.cfg_graph, &mut ctx.collected_nhwc_ir);
        let dfs_node_vec = dfs_with_priority(cfg_graph,0,|e| match &e.weight().cfg_edge_type{
            CfgEdgeType::BodyHead {  } => 1,
            CfgEdgeType::IfFalse {  } => 2,
            CfgEdgeType::Direct {  } => 2,
            CfgEdgeType::IfTrue {  } => 1,
            CfgEdgeType::BodyTail {  } => -1,
            CfgEdgeType::GatherTrue {  } => -1,
            CfgEdgeType::GatherFalse {  } => 5,
        });

        let mut anonymous_label_count = 0;
        for &cfg_node in dfs_node_vec.iter(){
            let cfg_node_struct = node_mut!(at cfg_node in cfg_graph);
            if !(cfg_node_struct.cfg_node_type.is_exit() || 
                cfg_node_struct.cfg_node_type.is_entry() ||
                cfg_node_struct.cfg_node_type.is_root()) && cfg_node_struct.op_label_instr.is_none(){
                    let anonymous_label= InstrType::new_label(SymIdx::new(ST_ROOT, format!("%{}",anonymous_label_count))).to_instr();
                    push_instr!(anonymous_label to cfg_node in cfg_graph slab instr_slab);
                    anonymous_label_count +=1;
            }
        }
        for &cfg_node in dfs_node_vec.iter(){
            if node!(at cfg_node in cfg_graph).cfg_node_type.is_basic_block() {
                let cfg_node_to_jump =direct_child_node!(at cfg_node in cfg_graph); 
                let op_label_instr = node!(at cfg_node_to_jump in cfg_graph).op_label_instr;
                if let Some(label_instr) = op_label_instr{
                    match &instr!(at label_instr in instr_slab)?.instr_type{
                        InstrType::Label { label_symidx } => {
                            let jump_instr_struct = InstrType::new_jump(label_symidx.clone()).to_instr();
                            push_instr!(jump_instr_struct to cfg_node in cfg_graph slab instr_slab);
                        },
                        _=>{return Err(anyhow!("cfg_node 的 label_instr 不可能为 除了label 以外的类型"))}
                    }
                }
            }
        }
        for cfg_node in dfs_node_vec{
            for &instr in node!(at cfg_node in cfg_graph).iter_all_instrs(){
                let mut cur_tab = 0;
                if instr!(at instr in instr_slab)?.instr_type.is_define_func(){
                    cur_tab = 0;
                }else if instr!(at instr in instr_slab)?.instr_type.is_label(){
                    cur_tab = 1;
                }
                else{
                    cur_tab = 2;
                }
                if matches!(&node!(at cfg_node in cfg_graph).cfg_node_type,crate::toolkit::cfg_node::CfgNodeType::Root { static_ast_nodes: _ }){
                    cur_tab = 0;
                }
                nhwc_ir_vec.push((instr,cur_tab));
                nhwc_ir_list.push(instr)
            }
        }
        if self.is_gen_nhwc_ir_file{
            
            let mut f =fs::File::create(args.c_file_path.file_stem().unwrap().to_string_lossy().to_string() + ".nhwc")?;
            for &(instr,cur_tab) in nhwc_ir_vec.iter(){
                // instr_mut!(at instr in instr_slab)?.text.clear();
                
                writeln!(f,"{}{:?}","    ".repeat(cur_tab),instr!(at instr in instr_slab)?)?;
                // if let InstrType::Jump{ jump_op } = &instr!(at instr in instr_slab)?.instr_type {
                //     if jump_op.is_ret(){
                //         cur_tab -= 1;
                //     }
                // }
            }
        }
        
        Ok(()) 
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass nhwc_collect description".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "NhwcCollectPass".to_string(); }
}

