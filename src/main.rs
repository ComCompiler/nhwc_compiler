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
    let args = Cli::parse();
    let c_code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
    let g = parse_as_ast_graph(c_code, true);
    generate_png_by_graph(&*g.borrow(),"graph".to_string());  
    println!("Hello, world!");
}
