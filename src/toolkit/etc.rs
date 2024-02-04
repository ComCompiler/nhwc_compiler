use std::{fs::File, process::Command, fmt::Debug, env, io::{Write, Read}};

use petgraph::{dot::{Dot, Config}, stable_graph::{StableDiGraph, StableGraph}, EdgeType, Graph};

use super::ast_node::AstTree;


/// 生成树(可以是任何树)对应的png ，将此png 放在命令行*当前*目录下
pub fn generate_png_by_graph<N:Debug,E:Debug,Ty :EdgeType>(g:&StableGraph<N,E,Ty>, name :String){
    println!("current working dir is {:?}", env::current_dir());
    let png_name = name.clone()+ ".png";
    let dot_name = name+ ".dot";
    let mut f = File::create(dot_name.clone()).expect("无法写入文件");
    f.write_all(format!("{:?}", Dot::with_config(&g, &[])).as_bytes())
        .expect("写入失败");
    let output = Command::new("dot")
        .args(["-Tpng",dot_name.as_str(), "-o",png_name.as_str()])
        .output()
        .expect("执行失败");
    // println!("{:?}", Command::new("dot") .args(["-Tpng","./graph.dot","-o","./graph.png"]));
    println!("Transform to png {:?}", output);
}

/// 从指定文件中读取所有文本
pub fn read_file_content(path:String)->String{
    let mut buf = String::new();
    File::open(path).expect("文件读取异常").read_to_string(&mut buf).expect("读取失败");
    buf
}
