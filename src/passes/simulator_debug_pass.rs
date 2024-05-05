use crate::{add_node, add_node_with_edge, toolkit::{cfg_node::InstrList, context::Context, field::Type, nhwc_instr::{InstrSlab, InstrType}, pass_manager::Pass, simulator::Simulator, symtab::{SymIdx, SymTab, SymTabEdge, SymTabGraph}}};
use anyhow::{Ok, Result};
use crate::toolkit::dot::Config;
use crate::toolkit::etc::generate_png_by_graph;
use crate::toolkit::nhwc_instr::IcmpPlan::*;
use crate::toolkit::field::Type::*;
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
pub struct SimulatorDebugPass {
    is_gen_png:bool,
}
impl SimulatorDebugPass {
    pub fn new(is_gen_png:bool) -> Self { SimulatorDebugPass {is_gen_png} }
}

impl Pass for SimulatorDebugPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut Context)  -> Result<()>{ 
        let mut instr_slab = InstrSlab::new();
        // 定义一些变量
        let a = SymIdx::new(1, "a".to_string());
        let b = SymIdx::new(1, "b".to_string());
        let c = SymIdx::new(1, "c".to_string());
        let a_val = SymIdx::new(1, "3".to_string());
        let b_val = SymIdx::new(1, "2".to_string());
        let c_val = SymIdx::new(1, "0".to_string());
        let label1 = SymIdx::new(1, "label1".to_string());
        let label2 = SymIdx::new(1, "label2".to_string());
        let jump1 = SymIdx::new(1, "1".to_string());


        // 定义一些指令
        let instrs = vec![ 
            instr_slab.insert_instr(InstrType::new_def_var(Type::I32, a.clone(), a_val).to_instr()),    // a=3
            instr_slab.insert_instr(InstrType::new_def_var(Type::I32, b.clone(), b_val).to_instr()),    // b=2
            instr_slab.insert_instr(InstrType::new_def_var(Type::I32, c.clone(), c_val).to_instr()),    // c=0

            instr_slab.insert_instr(InstrType::new_breakpoint().to_instr()),     // breakpoint1
            instr_slab.insert_instr(InstrType::new_jump(label1.clone()).to_instr()),                    // jump label1
            instr_slab.insert_instr(InstrType::new_label(label1.clone()).to_instr()),                   // label1
            
            instr_slab.insert_instr(InstrType::new_add(c.clone(),b.clone(),a.clone(),Type::I32).to_instr()),    //c=a+b
            instr_slab.insert_instr(InstrType::new_icmp(a.clone(),Sgt,b.clone(),c.clone(),I32).to_instr()),     //a = b > c false

            instr_slab.insert_instr(InstrType::new_breakpoint().to_instr()),     // breakpoint1

            instr_slab.insert_instr(InstrType::new_br(a.clone(), label1.clone() , label2.clone()).to_instr()),  // if a {label1} else {label2}
            instr_slab.insert_instr(InstrType::new_label(label2.clone()).to_instr()),                     // label2

        ];
        
        let instrlist = InstrList{
            instr_vec:instrs,
            outdated:true,
        };
        // 实例化simulator
        let mut simu = Simulator::new(ctx.symtab.clone(),instrlist);
        simu.start( &instr_slab)?;

        
        if self.is_gen_png{
            let mut simulator_g = SymTabGraph::new();
            // println!("ctx的symtab内容为{:#?}",ctx.symtab);
            let root = 0;
            // add_node_with_edge!({simu.symtab.clone()} with edge {SymTabEdge::new("SimulatorDebugPass".to_owned())} from root in simulator_g);
            simu.exec_till_breakpoint(&instr_slab)?;
            add_node!({simu.simu_symtab.clone()} to simulator_g);
            simu.exec_till_breakpoint(&instr_slab)?;
            add_node_with_edge!({simu.simu_symtab.clone()} with edge {SymTabEdge::new("next breakpoint".to_string())} from root in simulator_g);
            generate_png_by_graph(&simulator_g.clone(), "simulator_graph".to_string(), &[Config::Record, Config::Rounded, Config::SymTab, Config::Title("simulator_debug_graph".to_string())],&mut ctx.io_task_list)?;
        }
        Ok(())
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass Simulator".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "Simulator Debug Pass".to_string(); }
}
