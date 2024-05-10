use std::vec;

use crate::{add_node, add_node_with_edge, debug_info_red, toolkit::{cfg_node::InstrList, context::NhwcCtx, field::Type, nhwc_instr::{InstrSlab, InstrType}, pass_manager::Pass, simulator::Simulator, symtab::{SymIdx, SymTab, SymTabEdge, SymTabGraph}}};
use anyhow::{ Result};
use crate::toolkit::dot::Config;
use crate::toolkit::etc::generate_png_by_graph;
use crate::toolkit::nhwc_instr::IcmpPlan::*;
use crate::toolkit::field::Type::*;
#[derive(Debug)]
pub struct SimulatorDebugPass {
    is_gen_png:bool,
}
impl SimulatorDebugPass {
    pub fn new(is_gen_png:bool) -> Self { SimulatorDebugPass {is_gen_png} }
}

impl Pass for SimulatorDebugPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx)  -> Result<()>{ 
        let instr_slab = &mut ctx.instr_slab;
        // 定义一些变量
        // let a = SymIdx::new(1, "a".to_string());
        // let b = SymIdx::new(1, "b".to_string());
        // let c = SymIdx::new(1, "c".to_string());
        // let a_val = SymIdx::new(1, "3".to_string());
        // let b_val = SymIdx::new(1, "2".to_string());
        // let c_val = SymIdx::new(1, "0".to_string());
        // let label1 = SymIdx::new(1, "label1".to_string());
        // let label2 = SymIdx::new(1, "label2".to_string());
        // let jump1 = SymIdx::new(1, "1".to_string());

        // let func1_sum = SymIdx::new(0, "sum".to_string());
        // let func_ret_type = SymIdx::new(1, "I32".to_string());
        // let d:SymIdx = SymIdx::new(1, "d".to_string());
        // let e:SymIdx = SymIdx::new(1, "e".to_string());

        // let temp_0:SymIdx = SymIdx::new_verbose(14, "temp_5".to_string(),Some(0));
        // let temp_1:SymIdx = SymIdx::new_verbose(14, "temp_5".to_string(),Some(1));

        // // 定义一些指令
        // let instrs = vec![ 
        //     // Fibo函数声明
        //     1, 25,26,27, 
        //     instr_slab.insert_instr(InstrType::new_breakpoint(SymIdx::new(0, "1".to_string())).to_instr()),     // breakpoint1
        //     28,
        //     0,
        //     // instr_slab.insert_instr(InstrType::new_breakpoint(SymIdx::new(0, "2".to_string())).to_instr()),     // breakpoint1
        //     17,18,
        //     // instr_slab.insert_instr(InstrType::new_breakpoint(SymIdx::new(0, "3".to_string())).to_instr()),     // breakpoint1
        //     19, 
        //     15,14, 
        //     // instr_slab.insert_instr(InstrType::new_breakpoint(SymIdx::new(0, "4".to_string())).to_instr()),     // breakpoint1
        //     16,22,23,24, 
        //     // instr_slab.insert_instr(InstrType::new_breakpoint(SymIdx::new(0, "5".to_string())).to_instr()),     // breakpoint1
        //     20,13,
        //     // instr_slab.insert_instr(InstrType::new_breakpoint(SymIdx::new(0, "6".to_string())).to_instr()),     // breakpoint1
        //     21,2,3,4,
        //     // instr_slab.insert_instr(InstrType::new_breakpoint(SymIdx::new(0, "4 -> 5".to_string())).to_instr()),     // breakpoint1
        //     5,6,7,8,9,10,11,12,
        //     // instr_slab.insert_instr(InstrType::new_breakpoint(SymIdx::new(0, "7".to_string())).to_instr()),     // breakpoint1

        //     // 0,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,
        //     // instr_slab.insert_instr(InstrType::new_breakpoint(SymIdx::new(0, "fibonacci declared".to_string())).to_instr()),     // breakpoint1
        //     // main
            
        //     instr_slab.insert_instr(InstrType::new_breakpoint(SymIdx::new(0, "func Fibonacci done".to_string())).to_instr()),     // breakpoint1
        //     // instr_slab.insert_instr(InstrType::new_breakpoint(SymIdx::new(0, "b1".to_string())).to_instr()),     // breakpoint1
        //     // instr_slab.insert_instr(InstrType::new_jump(label1.clone()).to_instr()),                    // jump label1
        //     // instr_slab.insert_instr(InstrType::new_label(label1.clone()).to_instr()),                   // label1
            
        //     // instr_slab.insert_instr(InstrType::new_add(c.clone(),b.clone(),a.clone(),Type::I32).to_instr()),    //c=a+b
        //     // instr_slab.insert_instr(InstrType::new_icmp(a.clone(),Sgt,b.clone(),c.clone(),I32).to_instr()),     //a = b > c false


        //     // instr_slab.insert_instr(InstrType::new_br(a.clone(), label1.clone() , label2.clone()).to_instr()),  // if a {label1} else {label2}
        //     // instr_slab.insert_instr(InstrType::new_label(label2.clone()).to_instr()),                     // label2

            
        // ];
        
        // let instrlist = InstrList{
        //     instr_vec:instrs,
        //     outdated:true,
        // };
        // // 实例化simulator
        let mut simu = Simulator::new(ctx.collected_nhwc_ir.clone());
        simu.load( &instr_slab)?;
        simu.set_instr_pos_to_main()?;

        
        if self.is_gen_png{
            let mut simulator_g = SymTabGraph::new();
            // println!("ctx的symtab内容为{:#?}",ctx.symtab);
            let root = 0;
            // add_node_with_edge!({simu.symtab.clone()} with edge {SymTabEdge::new("SimulatorDebugPass".to_owned())} from root in simulator_g);
            add_node!({simu.simu_symtab.clone()} to simulator_g);
            let mut idx:i32=0;
            
            loop{
                let rst = simu.exec_till_breakpoint(&instr_slab,&ctx.symtab);
                if let Ok(Some(bp_symidx)) =  rst{
                    println!("breakpoint: {:?}", bp_symidx);
                    let node_count= simulator_g.node_count() as u32 -1;
                    add_node_with_edge!({simu.simu_symtab.clone()} with edge {SymTabEdge::new(format!("{:?}",bp_symidx))} from node_count in simulator_g);
                    simu.clear_text();
                    simu.load_instr_text(Some(6),instr_slab,)?;
                    simu.load_stack_text()?;
                    println!("{:?}",simu);
                    if bp_symidx.symbol_name == "exit"{
                        break;
                    }
                }else if let Err(e) = rst {
                    debug_info_red!("{:?}",e);
                    break;
                }
            }

            
            generate_png_by_graph(&simulator_g.clone(), "simulator_graph".to_string(), &[Config::Record, Config::Rounded, Config::SymTab, Config::Title("simulator_debug_graph".to_string())],&mut ctx.io_task_list)?;
        }
        Ok(())
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass Simulator".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "Simulator Debug Pass".to_string(); }
}
