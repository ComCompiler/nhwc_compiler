mod toolkit;
mod antlr_parser;
use std::path::PathBuf;

use antlr_parser::cparser::{RULE_compoundStatement, RULE_functionDefinition} ;
use clap::Parser;
use petgraph::{adj::NodeIndex, graph::Node,  visit::{Dfs, Walker}, Graph};


use crate::toolkit::{ast_node::find_dfs_ast, etc::{generate_png_by_graph, read_file_content}, gen_ast::parse_as_ast_graph};

#[derive(Parser)]
#[command(author, version, about)]
struct Cli {
    ///设置文件地址
    #[arg(short, long, value_name = "FILE",default_value = "./demo.c")]
    c_file_path: PathBuf
}

///dfs遍历ast树寻找源文件代码块


fn main() {
    // 读取命令选项，诸如 -c 表示代码文件地址
    // 你也可以通过运行 cargo run -- --help 来查看所有可用选项
    let args = Cli::parse();
    let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
    // 此时 g 就是我们生成的petgraph 的ast 树
    let g = parse_as_ast_graph(code, true);
    // 生成 petgraph 图对应的 png 
    generate_png_by_graph(&g,"graph".to_string());  
    //dfs遍历ast
    let mut v= find_dfs_ast(&g, 0,RULE_functionDefinition );
    for node in v{
        println!("{}",node);
        println!("{}",g.node_weight(NodeIndex::from(node)).unwrap().text);
    }

    // test
    println!("Hello, world!");
}

#[cfg(test)]
mod tests{
    use std::{path::PathBuf, str::FromStr, vec};

    use clap::Parser;
    
    use crate::{antlr_parser::cparser::{RULE_blockItem, RULE_blockItemList, RULE_compoundStatement, RULE_functionDefinition}, find, find_nodes, toolkit::{ast_node::find_dfs_ast, etc::{generate_png_by_graph, read_file_content}, gen_ast::parse_as_ast_graph}, Cli};

    #[test]
    fn add(){
        assert_eq!(3+3 , 6)
    }

    #[test]
    fn find_dfs_ast_test(){
        let mut args = Cli::parse();
        // 设置 path 为 demo.c
        args.c_file_path = PathBuf::from_str("./demo.c").unwrap();
        let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
        let g = parse_as_ast_graph(code, true);
        //dfs遍历ast
        let node_ids:Vec<u32> = find_dfs_ast(&g, 0,RULE_functionDefinition ).collect();
        assert_eq!(node_ids , vec![3,140] ,"找到的 node id 不对");
    }

    #[test]
    fn find_compound_of_func_def(){
        let mut args = Cli::parse();
        // 设置 path 为 demo.c
        args.c_file_path = PathBuf::from_str("./demo.c").unwrap();
        let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
        let ref ast_tree = parse_as_ast_graph(code, true);
        //dfs遍历ast
        let node = 3;
        let node_id= find!(rule RULE_compoundStatement at node in ast_tree).unwrap();
        assert_eq!(node_id , 10 ,"找到的 node id 不对");
    }
    #[test]
    fn find_items_of_itemlists_using_macro_find_nodes(){
        let mut args = Cli::parse();
        // 设置 path 为 demo.c
        args.c_file_path = PathBuf::from_str("./demo.c").unwrap();
        let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
        let ref ast_tree = parse_as_ast_graph(code, true);
        //dfs遍历ast
        let node =11;
        let node_ids:Vec<u32>= find_nodes!(rule RULE_blockItem at node in ast_tree);
        assert_eq!(node_ids , vec![119,24,12] ,"找到的 node id 不对");

    }
    #[test]
    fn gen_png(){
        // 读取命令选项，诸如 -c 表示代码文件地址
        // 你也可以通过运行 cargo run -- --help 来查看所有可用选项
        let path = "./demo.c".to_string();
        let code = read_file_content(path);
        // 此时 g 就是我们生成的petgraph 的ast 树
        let g = parse_as_ast_graph(code, true);
        // 生成 petgraph 图对应的 png 
        generate_png_by_graph(&g,"graph".to_string());  
    }
    #[test]
    fn find_items_of_func_def_using_macro_find_nodes_test2(){
        let mut args = Cli::parse();
        // 设置 path 为 demo.c
        args.c_file_path = PathBuf::from_str("./demo.c").unwrap();
        let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
        let ref ast_tree = parse_as_ast_graph(code, true);
        //dfs遍历ast
        let node =3;  // 三号节点是一个 function def 
        let node_ids:Vec<u32>= find_nodes!(rule RULE_compoundStatement 
                                           then RULE_blockItemList
                                           finally RULE_blockItem
                                              at node in ast_tree);
        assert_eq!(node_ids , vec![119,24,12] ,"找到的 node id 不对");


    }
    #[test]
    fn find_items_of_func_def_using_macro_find_node_test2(){
        let mut args = Cli::parse();
        // 设置 path 为 demo.c
        args.c_file_path = PathBuf::from_str("./demo.c").unwrap();
        let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
        let ref ast_tree = parse_as_ast_graph(code, true);
        //dfs遍历ast
        let node =3;  // 三号节点是一个 function def 
        let node_ids= find!(rule RULE_compoundStatement 
                                           finally RULE_blockItemList
                                              at node in ast_tree).unwrap();
        assert_eq!(node_ids , 11 ,"找到的 node id 不对");


    }
}