use std::{ rc::Rc, cell::RefCell};
use antlr_rust::{InputStream, common_token_stream::CommonTokenStream};
use petgraph::{ Graph,  csr::NodeIndex};

use crate::{toolkit::nodes::ASTNode, clang::{rule_only_walkers::{ASTGraphRcCell, RuleOnlyListener}, clexer::CLexer, cparser::{CParser, CTreeWalker}}};

/// 把代码生成为AST树 code 为代码文本的字符串
pub fn parse_as_ast_graph(code :String,debug_info:bool)-> ASTGraphRcCell{
    let g: Graph<ASTNode,(), petgraph::Directed> = Graph::new();
    let g = Rc::new(RefCell::new(g));
    // 由于 antlr 已经生成了一个 AST 树 但我们需要的是 petgraph 类型，因此我们需要重新遍历一次这个树，生成 petgraph的
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
            let (node_count_under_depth,is_last_wrap_drop,_g) = s;
            node_count_under_depth.pop();
            *is_last_wrap_drop=true;
            println!("exit rule {}  ",ctx.get_text());
        }),
    };

    let lexer = CLexer::new(InputStream::new(code.as_str()));
    let token_source = CommonTokenStream::new(lexer);
    let mut parser= CParser::new(token_source);
    // let m = *parser;
    let result = parser.compilationUnit();
    let tree =result.expect("解析失败");
    CTreeWalker::walk(Box::new(listener), &*tree );
    println!("{:?}",tree);
    g
}
