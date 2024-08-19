use std::{
    env, fmt::Debug, fs::File, io::{Read, Write}, process::Command, thread::{spawn, AccessError, JoinHandle}
};
use std::time::Instant;

use colored::Colorize;
use log::info;
use strum_macros::EnumIs;
use crate::{direct_parent_nodes, instr, timeit};

use crate::{
    direct_child_nodes, toolkit::dot::{Config, Dot}
};
use petgraph::{ graph::{node_index, NodeIndex}, stable_graph::{EdgeReference, StableGraph}, visit::{Dfs, EdgeRef}, EdgeType};
use anyhow::*;
use anyhow::Context;

use super::nhwc_instr::{InstrSlab, NhwcInstr};
/// 传入C文件(带有.c后缀),生成.s汇编文件,  
/// 生成在./assembly_repo/目录下
pub fn generate_s_file_by_c_file(cfile_path:String) -> Result<()>{
    // let c_name = cfile_path.split("/").last().unwrap().split(".").next().unwrap();
    let _output = Command::new("./llvm/c2s.sh").args([cfile_path]).output().with_context(||".c文件转.s文件失败")?;
    Ok(())
}
pub fn run_s(_sfile_path:String) -> Result<()>{
    // let c_name = cfile_path.split("/").last().unwrap().split(".").next().unwrap();
    let _output = Command::new("./assembly_repo/").args(["a.out"]).output().with_context(||".s文件执行失败")?;
    Ok(())
}

pub fn generate_png_by_graph<N:Debug, E:Debug, Ty:EdgeType>(g:&StableGraph<N, E, Ty>, name:String, graph_config:&[Config]) -> Result<()>{
    // f.write_all(format!("{:?}", Dot::with_config(&g, as_bytes())
    //     .expect("写入失败");
    let png_name = name.clone() + ".png";
    let dot_name = name.clone() + ".dot";
    let mut f = File::create(dot_name.clone()).with_context(||"无法写入文件")?;
    let dot_string = format!("{:?}", Dot::with_config(&g, &graph_config));
    f.write_all(dot_string.as_bytes()).expect("写入失败");
    info!("dot write finished {:?}", env::current_dir());
    // println!("dot write finished {:?}", env::current_dir());
    let output = Command::new("dot").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().with_context(||"执行失败")?;
    // let output = Command::new("twopi").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().with_context(||"执行失败")?;
    // let output = Command::new("neato").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().with_context(||"执行失败")?;
    // let output = Command::new("fdp").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().with_context(||"执行失败")?;

    info!("Successfully Transform to png {}.png {:?}", name.green(),output);
    // println!("Successfully Transform to png {}.png {:?}", name.green(),output);
    Ok(())
}
/// 生成树(可以是任何树)对应的png ，将此png 放在命令行*当前*目录下
pub fn generate_png_by_graph_multi_tasks<N:Debug, E:Debug, Ty:EdgeType>(g:&StableGraph<N, E, Ty>, name:String, graph_config:&[Config],io_task_list:&mut Vec<JoinHandle<Result<()>>>) -> Result<()>{
    // f.write_all(format!("{:?}", Dot::with_config(&g, as_bytes())
    //     .expect("写入失败");
    let png_name = name.clone() + ".png";
    let dot_name = name.clone() + ".dot";
    let mut f = File::create(dot_name.clone()).with_context(||"无法写入文件")?;
    let dot_string = format!("{:?}", Dot::with_config(&g, &graph_config));
    io_task_list.push(
        spawn(move ||->Result<()> {
            f.write_all(dot_string.as_bytes()).expect("写入失败");
            info!("dot write finished {:?}", env::current_dir());
            // println!("dot write finished {:?}", env::current_dir());
            // let output = Command::new("dot").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().with_context(||"执行失败")?;
            // info!("Successfully Transform to png {}.png {:?}", name.green(),output);
            info!("Successfully Transform to png {}.png ", name.green());
            // let output = Command::new("twopi").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().with_context(||"执行失败")?;
            // let output = Command::new("neato").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().with_context(||"执行失败")?;
            // let output = Command::new("fdp").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().with_context(||"执行失败")?;

            // println!("Successfully Transform to png {}.png {:?}", name.green(),output);
            Ok(())
        })
    );
    // println!("{:?}", Command::new("dot") .args(["-Tpng","./graph.dot","-o","./graph.png"]));
    Ok(())
}

/// 从指定文件中读取所有文本
pub fn read_file_content(path:String) -> String {
    let mut buf = String::new();
    File::open(path).expect("文件读取异常").read_to_string(&mut buf).expect("读取失败");
    buf
}
pub fn dfs<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32) -> Vec<u32>
where
    Ty: EdgeType,
{
    dfs_with_predicate(graph, start_node, |_e |true)
}   
pub fn rpo<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32) -> Vec<u32>
where
    Ty: EdgeType,
{
    rpo_with_predicate(graph, start_node, |_e |true)
}   
pub fn reverse_dfs<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32) -> Vec<u32>
where
    Ty: EdgeType,
{
    reverse_dfs_with_predicate(graph, start_node, |_e |true)
}   
/// dfs,但是添加了对边的判定
pub fn dfs_with_predicate<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, mut predicate:impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->bool)-> Vec<u32>
where
    Ty: EdgeType,
{
    let mut visited:Vec<bool> = vec![false; graph.node_count()*3];
    let mut dfs_vec:Vec<u32> = vec![];
    visited[start_node as usize] = true;
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    _dfs_with_predicate(graph, start_node, &mut visited, &mut dfs_vec, &mut predicate);
    dfs_vec
}
pub fn rpo_with_predicate<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, mut predicate:impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->bool)-> Vec<u32>
where
    Ty: EdgeType,
{
    let mut visited:Vec<bool> = vec![false; graph.node_count()*3];
    let mut rpo_vec:Vec<u32> = vec![];
    visited[start_node as usize] = true;
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    _rpo_with_predicate(graph, start_node, &mut visited, &mut rpo_vec, &mut predicate);
    rpo_vec
}
pub fn reverse_dfs_with_predicate<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, mut predicate:impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->bool)-> Vec<u32>
where
    Ty: EdgeType,
{
    let mut visited:Vec<bool> = vec![false; graph.node_count()*3];
    let mut dfs_vec:Vec<u32> = vec![];
    visited[start_node as usize] = true;
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    _reverse_dfs_with_predicate(graph, start_node, &mut visited, &mut dfs_vec, &mut predicate);
    dfs_vec
}
pub fn _reverse_dfs_with_predicate<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, visited:&mut Vec<bool>, dfs_vec:&mut Vec<u32>, predicate:&mut impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->bool)
where
    Ty: EdgeType,
{
    dfs_vec.push(start_node);
    visited[start_node as usize] = true;
    let nodes = direct_parent_nodes!(at start_node in graph with_predicate {|e|predicate(e)});
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    for node in nodes {
        if !visited[node as usize] {
            _reverse_dfs_with_predicate(graph, node, visited, dfs_vec, predicate);
        }
    }
}
pub fn _dfs_with_predicate<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, visited:&mut Vec<bool>, dfs_vec:&mut Vec<u32>, predicate:&mut impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->bool)
where
    Ty: EdgeType,
{
    dfs_vec.push(start_node);
    visited[start_node as usize] = true;
    let nodes = direct_child_nodes!(at start_node in graph with_predicate {|e|predicate(e)});
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    for node in nodes {
        if !visited[node as usize] {
            _dfs_with_predicate(graph, node, visited, dfs_vec, predicate);
        }
    }
}
pub fn _rpo_with_predicate<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, visited:&mut Vec<bool>, rpo_vec:&mut Vec<u32>, predicate:&mut impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->bool)
where
    Ty: EdgeType,
{
    visited[start_node as usize] = true;
    let nodes = direct_child_nodes!(at start_node in graph with_predicate {|e|predicate(e)});
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    for node in nodes {
        if !visited[node as usize] {
            _rpo_with_predicate(graph, node, visited, rpo_vec, predicate);
        }
    }
    rpo_vec.push(start_node);
}
pub fn rpo_with_priority<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, mut predicate:impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->isize)-> Vec<u32>
where
    Ty: EdgeType,
{
    let mut visited:Vec<bool> = vec![false; graph.node_count()*3];
    let mut rpo_vec:Vec<u32> = vec![];
    visited[start_node as usize] = true;
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    _rpo_with_priority(graph, start_node, &mut visited, &mut rpo_vec, &mut predicate);
    rpo_vec
}
pub fn _rpo_with_priority<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, visited:&mut Vec<bool>, rpo_vec:&mut Vec<u32>, priority:&mut impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->isize)
where
    Ty: EdgeType,
{
    visited[start_node as usize] = true;
    let nodes = direct_child_nodes!(at start_node in graph with_priority {|e|priority(e)});
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    for node in nodes {
        if !visited[node as usize] {
            _rpo_with_priority(graph, node, visited, rpo_vec, priority);
        }
    }
    rpo_vec.push(start_node);
}
/// dfs the graph.
/// if the closure ret val < 0 then don't access the edge 
/// access with low closure ret value in priority
pub fn dfs_with_priority<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, mut predicate:impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->isize)-> Vec<u32>
where
    Ty: EdgeType,
{
    let mut visited:Vec<bool> = vec![false; graph.node_count()*3];
    let mut dfs_vec:Vec<u32> = vec![];
    visited[start_node as usize] = true;
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    _dfs_with_priority(graph, start_node, &mut visited, &mut dfs_vec, &mut predicate);
    dfs_vec
}
#[derive(EnumIs,Debug)]
pub enum AccessState {
    Enter,Exit
}
pub fn dfs_with_priority_enter_exit<N, E, Ty>(graph:&mut StableGraph<N, E, Ty, u32>, start_node:u32, mut predicate:impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->isize)-> Vec<(u32,AccessState)>
where
    Ty: EdgeType,
{
    let mut visited:Vec<bool> = vec![false; graph.node_count()*3];
    let mut dfs_vec_enter_exit:Vec<(u32,AccessState)> = vec![];
    visited[start_node as usize] = true;
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    _dfs_with_priority_enter_exit(graph, start_node, &mut visited, &mut dfs_vec_enter_exit, &mut predicate);
    dfs_vec_enter_exit
}
pub fn _dfs_with_priority_enter_exit<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, visited:&mut Vec<bool>, dfs_vec_enter_exit:&mut Vec<(u32,AccessState)>, priority:&mut impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>) -> isize)
where
    Ty: EdgeType,
{
    dfs_vec_enter_exit.push((start_node,AccessState::Enter));
    visited[start_node as usize] = true;
    let nodes = direct_child_nodes!(at start_node in graph with_priority {|e|priority(e)});
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    for node in nodes {
        if !visited[node as usize] {
            _dfs_with_priority_enter_exit(graph, node, visited, dfs_vec_enter_exit, priority);
        }
    }
    dfs_vec_enter_exit.push((start_node,AccessState::Exit));
}
pub fn _dfs_with_priority<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, visited:&mut Vec<bool>, dfs_vec:&mut Vec<u32>, priority:&mut impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->isize)
where
    Ty: EdgeType,
{
    dfs_vec.push(start_node);
    visited[start_node as usize] = true;
    let nodes = direct_child_nodes!(at start_node in graph with_priority {|e|priority(e)});
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    for node in nodes {
        if !visited[node as usize] {
            _dfs_with_priority(graph, node, visited, dfs_vec, priority);
        }
    }
}

pub fn element_remained_after_exclusion_in_vec<T:PartialEq+Clone>(v:Vec<T>,element1:T) -> Result<T>{
    if v.len()!=2 { return Err(anyhow!("待排除的Vec元素数目不为2")) }
    if v[0] == element1{
        Ok(v[1].clone())
    }else {
        Ok(v[0].clone())
    }
}

pub trait InstrAnyhow<T>:Context<T,anyhow::Error>{
    fn with_instr_context(self,instr:usize,instr_slab:&InstrSlab<NhwcInstr>)->Result<T,anyhow::Error>;
}
impl<T> InstrAnyhow<T> for anyhow::Result<T,anyhow::Error> {
    fn with_instr_context(self,instr:usize,instr_slab:&InstrSlab<NhwcInstr>) -> Result<T,anyhow::Error>{
        self.with_context(||format!("{:?}",instr!(at instr in instr_slab).unwrap()))
    }
}

pub fn remove_isolate_nodes_from_dfs<N, E, Ty>(graph:&mut StableGraph<N, E, Ty, u32>, start_node:u32)
where
    Ty: EdgeType,{
    let mut dfs = Dfs::new(&*graph, node_index(start_node as usize));
    let mut visited = Vec::new();
    while let Some(nx) = dfs.next(&*graph) {
        visited.push(nx);
    }

    // 找出所有未访问的节点
    let all_nodes:Vec<NodeIndex> = graph.node_indices().collect();
    let unvisited:Vec<NodeIndex>  = all_nodes.into_iter().filter(|n| !visited.contains(n)).collect();

    // 删除未访问的节点
    for node in unvisited {
        graph.remove_node(node);
    }
}
