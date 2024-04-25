use std::{
    env, fmt::Debug, fs::File, io::{Read, Write}, process::Command
};

use crate::{
    debug_info_yellow, direct_children_nodes, toolkit::dot::{Config, Dot}
};
use petgraph::{stable_graph::StableGraph, EdgeType};

/// 生成树(可以是任何树)对应的png ，将此png 放在命令行*当前*目录下
pub fn generate_png_by_graph<N: Debug, E: Debug, Ty: EdgeType>(g: &StableGraph<N, E, Ty>, name: String, graph_config: &[Config]) {
    println!("current working dir is {:?}", env::current_dir());
    let png_name = name.clone() + ".png";
    let dot_name = name + ".dot";
    let mut f = File::create(dot_name.clone()).expect("无法写入文件");
    f.write_all(format!("{:?}", Dot::with_config(&g, graph_config)).as_bytes()).expect("写入失败");
    // f.write_all(format!("{:?}", Dot::with_config(&g, as_bytes())
    //     .expect("写入失败");

    let output = Command::new("dot").args(["-Tpng", dot_name.as_str(), "-o", png_name.as_str()]).output().expect("执行失败");
    // println!("{:?}", Command::new("dot") .args(["-Tpng","./graph.dot","-o","./graph.png"]));
    println!("Transform to png {:?}", output);
}

/// 从指定文件中读取所有文本
pub fn read_file_content(path: String) -> String {
    let mut buf = String::new();
    File::open(path).expect("文件读取异常").read_to_string(&mut buf).expect("读取失败");
    buf
}

pub fn dfs<N, E, Ty>(graph: &mut StableGraph<N, E, Ty, u32>, start_node: u32, visited: &mut Vec<bool>, dfs_vec: &mut Vec<u32>)
where
    Ty: EdgeType,
{
    if visited[start_node as usize] {
        return;
    }
    visited[start_node as usize] = true;
    dfs_vec.push(start_node);

    let nodes = direct_children_nodes!(at start_node in graph);
    debug_info_yellow!("{} :neighbors {:?}", start_node, nodes);

    for node in nodes {
        if !visited[node as usize] {
            dfs(graph, node, visited, dfs_vec);
        }
    }
}
