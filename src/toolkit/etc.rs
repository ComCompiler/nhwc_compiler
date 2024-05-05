use std::{
    env, fmt::Debug, fs::File, io::{Read, Write}, process::Command, thread::{spawn, JoinHandle}
};
use colored::Colorize;

use crate::{
    direct_child_nodes, toolkit::dot::{Config, Dot}
};
use petgraph::{stable_graph::StableGraph, EdgeType};
use anyhow::{anyhow, Context, Result};

/// 生成树(可以是任何树)对应的png ，将此png 放在命令行*当前*目录下
pub fn generate_png_by_graph<N:Debug, E:Debug, Ty:EdgeType>(g:&StableGraph<N, E, Ty>, name:String, graph_config:&[Config],io_task_list:&mut Vec<JoinHandle<Result<()>>>) -> Result<()>{
    // f.write_all(format!("{:?}", Dot::with_config(&g, as_bytes())
    //     .expect("写入失败");
    let png_name = name.clone() + ".png";
    let dot_name = name.clone() + ".dot";
    let mut f = File::create(dot_name.clone()).with_context(||"无法写入文件")?;
    let dot_string = format!("{:?}", Dot::with_config(&g, &graph_config));
    io_task_list.push(
        spawn(move ||->Result<()> {
            f.write_all(dot_string.as_bytes()).expect("写入失败");
            println!("dot write finished {:?}", env::current_dir());
            let output = Command::new("dot").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().with_context(||"执行失败")?;
            // let output = Command::new("twopi").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().with_context(||"执行失败")?;
            // let output = Command::new("neato").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().with_context(||"执行失败")?;
            // let output = Command::new("fdp").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().with_context(||"执行失败")?;

            println!("Successfully Transform to png {}.png {:?}", name.green(),output);
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
/// dfs,但是添加了对边的判定
pub fn dfs_with_predicate<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, mut predicate:impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->bool)-> Vec<u32>
where
    Ty: EdgeType,
{
    let mut visited:Vec<bool> = vec![false; graph.node_count()];
    let mut dfs_vec:Vec<u32> = vec![];
    visited[start_node as usize] = true;
    // debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);
    _dfs_with_predicate(graph, start_node, &mut visited, &mut dfs_vec, &mut predicate);
    dfs_vec
}
fn _dfs_with_predicate<N, E, Ty>(graph:&StableGraph<N, E, Ty, u32>, start_node:u32, visited:&mut Vec<bool>, dfs_vec:&mut Vec<u32>, predicate:&mut impl FnMut(&petgraph::stable_graph::EdgeReference<'_, E>)->bool)
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

pub fn element_remained_after_exclusion_in_vec<T:PartialEq+Clone>(v:Vec<T>,element1:T) -> Result<T>{
    if v.len()!=2 { return Err(anyhow!("待排除的Vec元素数目不为2")) }
    if v[0] == element1{
        Ok(v[1].clone())
    }else {
        Ok(v[0].clone())
    }
}
