use std::{fmt::Debug, env, fs::File, io::{Write, Read}, process::Command, rc::Rc, cell::RefCell, borrow::BorrowMut};
use antlr_rust::{InputStream, common_token_stream::CommonTokenStream};
use petgraph::{dot::{Dot, Config}, Graph, EdgeType, csr::NodeIndex};
use crate::{toolkit::{rule_only_walkers::{ASTGraphRcCell, RuleOnlyListener}, nodes::ASTNode}, clang::{cparser::{CTreeWalker, CParser}, clexer::CLexer}};

pub fn save_dot_and_generate_png<N:Debug,E:Debug,Ty :EdgeType>(g:&Graph<N,E,Ty>, name :String){
    println!("current working dir is {:?}", env::current_dir());
    let png_name = name.clone()+ ".png";
    let dot_name = name+ ".dot";
    let mut f = File::create(dot_name.clone()).expect("无法写入文件");
    f.write_all(format!("{:?}", Dot::with_config(&g, &[Config::EdgeNoLabel])).as_bytes())
        .expect("写入失败");
    let output = Command::new("dot")
        .args(["-Tpng",dot_name.as_str(), "-o",png_name.as_str()])
        .output()
        .expect("执行失败");
    // println!("{:?}", Command::new("dot") .args(["-Tpng","./graph.dot","-o","./graph.png"]));
    println!("Transform to png {:?}", output);
}

pub fn read_file_content(path:String)->String{
    let mut buf = String::new();
    File::open(path).expect("文件读取异常").read_to_string(&mut buf).expect("读取失败");
    buf
}
pub fn parse_as_ASTGraph(c_code :String,debug_info:bool)-> ASTGraphRcCell{
    let g: Graph<ASTNode,(), petgraph::Directed> = Graph::new();
    let g = Rc::new(RefCell::new(g));
    let listener = RuleOnlyListener{
        st: (Vec::<usize>::new(),false,g.clone()),
        enter_rule_f:Box::new(|ctx,s|{
            let (node_count_under_depth,is_last_wrap_drop,g) = s;
            let node_id = (**g).borrow_mut().add_node(ASTNode::new(ctx.get_rule_index(),ctx.get_text()));
            let node_id = node_id.index();
            println!("enter rule {} id {}",ctx.get_text(),node_id);
            if node_id!=0{
                let father_id = match is_last_wrap_drop {
                    true => {println!("branch");node_id  - node_count_under_depth.last().expect("But stack is empty")},
                    false => {
                        node_id -1 }
                };
                (**g).borrow_mut().add_edge(NodeIndex::from(father_id as u32)
                    ,NodeIndex::from(node_id as u32) , ());
                println!("{:?}",ASTNode::new(ctx.get_rule_index(),ctx.get_text()));
                // save_dot_and_generate_png(&*g.borrow(),format!("{}",node_id));  
                // debug 专用
                // println!("father {:?}",father_id);
                // print!("  son {:?}",node_id);
            } 
            node_count_under_depth.push(1);
            (0..node_count_under_depth.len()-1).for_each(|i|node_count_under_depth[i]+=1);
            *is_last_wrap_drop=false;
        }),
        exit_rule_f: Box::new(|ctx,s|{
            let (node_count_under_depth,is_last_wrap_drop,g) = s;
            node_count_under_depth.pop();
            *is_last_wrap_drop=true;
            println!("exit rule {}  ",ctx.get_text());
        }),
    };

    let lexer = CLexer::new(InputStream::new(c_code.as_str()));
    let token_source = CommonTokenStream::new(lexer);
    let mut parser= CParser::new(token_source);
    // let m = *parser;
    let result = parser.compilationUnit();
    let tree =result.expect("解析失败");
    CTreeWalker::walk(Box::new(listener), &*tree );
    println!("{:?}",tree);
    g
}
