mod clang;
mod toolkit;
use std::path::PathBuf;

use clap::Parser;

use crate::toolkit::{etc::{generate_png_by_graph, read_file_content}, gen_ast::parse_as_ast_graph};
#[derive(Parser)]
#[command(author, version, about)]
struct Cli {
    ///设置文件地址
    #[arg(short, long, value_name = "FILE",default_value = "./demo.c")]
    c_file_path: PathBuf
}
fn main() {
    // 读取命令选项，诸如 -c 表示代码文件地址
    // 你也可以通过运行 cargo run -- --help 来查看所有可用选项
    let args = Cli::parse();
    let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
    // 此时 g 就是我们生成的petgraph 的ast 树
    let g = parse_as_ast_graph(code, true);

    // 生成 petgraph 图对应的 png 
    generate_png_by_graph(&*g.borrow(),"graph".to_string());  

    println!("Hello, world!");
}
