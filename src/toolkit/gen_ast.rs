use antlr_rust::{common_token_stream::CommonTokenStream, InputStream};

use petgraph::csr::NodeIndex;

use crate::antlr_parser::rule_walkers::TerminalRuleListener;
use crate::{
    antlr_parser::{
        clexer::CLexer,
        cparser::{CParser, CTreeWalker},
    },
    toolkit::ast_node::AstNode,
};

use super::context::Context;

/// 把代码生成为AST树 code 为代码文本的字符串
pub fn parse_as_ast_tree(context: &mut Context) {
    let code = &context.code;
    let ast_tree = &mut context.ast_tree;

    // 由于 antlr 已经生成了一个 AST 树 但我们需要的是 petgraph 类型，因此我们需要重新遍历一次这个树，生成 petgraph的
    {
        let mut count = 0;
        let listener = TerminalRuleListener {
            st: (Vec::<usize>::new(), false, ast_tree, &mut count),
            enter_rule_f: Box::new(|ctx, s, is_terminal, type_idx| {
                let (node_count_under_depth, is_last_wrap_drop, g, count) = s;
                let mut ast_node = AstNode::new(type_idx, ctx.get_text(), is_terminal);
                ast_node.node_index = **count;
                **count += 1;
                let node_id = g.add_node(ast_node).index();
                // println!("enter rule {} id {}",ctx.get_text(),node_id);
                if node_id != 0 {
                    let father_id = match is_last_wrap_drop {
                        true => {
                            // println!("branch");
                            node_id - node_count_under_depth.last().expect("But stack is empty")
                        }
                        false => node_id - 1,
                    };
                    g.add_edge(
                        NodeIndex::from(father_id as u32),
                        NodeIndex::from(node_id as u32),
                        (),
                    );
                    // {   println!("{:?}",ASTNode::new(ctx.get_rule_index(),ctx.get_text()));}
                    // save_dot_and_generate_png(&*g.borrow(),format!("{}",node_id));
                    // debug 专用
                    // println!("father {:?}",father_id);
                    // print!("  son {:?}",node_id);
                }
                node_count_under_depth.push(1);
                (0..node_count_under_depth.len() - 1).for_each(|i| node_count_under_depth[i] += 1);
                *is_last_wrap_drop = false;
            }),
            exit_rule_f: Box::new(|_ctx, s, _is_terminal, _type_idx| {
                let (node_count_under_depth, is_last_wrap_drop, _g, count) = s;
                node_count_under_depth.pop();
                *is_last_wrap_drop = true;
                // println!("exit rule {}  ",ctx.get_text());
            }),
        };

        let lexer = CLexer::new(InputStream::new(code.as_str()));
        let token_source = CommonTokenStream::new(lexer);
        let mut parser = CParser::new(token_source);
        // let m = *parser;
        let result = parser.compilationUnit();
        let tree = result.expect("解析失败");
        CTreeWalker::walk(Box::new(listener), &*tree);
    }
    // println!("{:?}",tree);
    // 更新 context 中的 ast_tree
}
