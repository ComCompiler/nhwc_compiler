use std::vec;
use log::{error, trace};
use crate::{ debug_info_red, debug_info_yellow, toolkit::{ context::NhwcCtx, nhwc_instr::{InstrSlab, NhwcInstr}, pass_manager::Pass, simulator::Simulator, symtab::{SymTab, SymTabGraph}}};
use itertools::Itertools;
use crate::toolkit::dot::Config;
use crate::toolkit::etc::generate_png_by_graph_multi_tasks;
use anyhow::Result;
#[derive(Debug)]
pub struct SimulatorDebugPass {
    is_gen_png:bool,detailed:bool,
}
impl SimulatorDebugPass {
    pub fn new(is_gen_png:bool,detailed:bool) -> Self { SimulatorDebugPass {is_gen_png, detailed } }
}

impl Pass for SimulatorDebugPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx)  -> Result<()>{ 
        let instr_slab = &mut ctx.nhwc_instr_slab;
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
        let mut simu = Simulator::new(ctx.collected_nhwc_ir.clone(), true);
        simu.load_instrs( &instr_slab)?;
        // calculate global variables 
        simu.run_global_scope(&ctx.symtab, instr_slab)?;
        simu.set_instr_pos_to_main(instr_slab)?;
        let simulator_g = debug_simu_run(&mut simu, instr_slab, &ctx.symtab, true)?;
        if self.is_gen_png{
            generate_png_by_graph_multi_tasks(&simulator_g.clone(), "simulator_graph".to_string(), &[Config::Record, Config::Rounded, Config::SymTab, Config::Title("simulator_debug_graph".to_string())],&mut ctx.io_task_list)?;
        }
        Ok(())
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass Simulator".to_string(); }

    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "Simulator Debug Pass".to_string(); }
}

pub fn debug_simu_run(simu:&mut Simulator, instr_slab:&InstrSlab<NhwcInstr>, src_symtab:&SymTab, is_detailed_info:bool) -> Result<SymTabGraph>{
    let mut simulator_g = SymTabGraph::new();
    // println!("ctx的symtab内容为{:#?}",ctx.symtab);
    let _root = 0;
    // add_node_with_edge!({simu.symtab.clone()} with edge {SymTabEdge::new("SimulatorDebugPass".to_owned())} from root in simulator_g);
    simu.simu_symtab.debug_symtab_graph(String::new(), &mut simulator_g, vec![]);
    let _idx:i32=0;
    
    loop{
        let rst = simu.exec_till_breakpoint(&instr_slab,&src_symtab);
        if let Ok(Some((bp_symidx,field_vec))) =  rst{
            // println!("breakpoint: {:?}", bp_symidx);
            trace!("breakpoint: {:?}", bp_symidx);
            simu.simu_symtab.debug_symtab_graph(format!("{:?} fields:{:?}",bp_symidx,field_vec), &mut simulator_g,
                if is_detailed_info{
                    vec![]
                }else{
                    field_vec.into_iter().map(|tuple|tuple.1).collect_vec()
                });
            simu.clear_text();
            simu.load_instr_text(Some(6),instr_slab,)?;
            simu.load_stack_text()?;
            trace!("{:?}",simu);
            // println!("{:?}",simu);
            if bp_symidx.symbol_name == "exit"{
                break;
            }
        }else if let Err(e) = rst {
            debug_info_red!("Err when running this instr");
            simu.clear_text();
            simu.load_instr_text(Some(6),instr_slab,)?;
            simu.load_stack_text()?;
            simu.simu_symtab.debug_symtab_graph(format!("Err "), &mut simulator_g,
                vec![]
            );
            debug_info_yellow!("{:?}",simu);
            error!("{:?}",e);
            break;
        }
    }
    Ok(simulator_g)
}