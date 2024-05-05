use crate::{
    add_edge, antlr_parser::cparser::{RULE_declaration, RULE_expression, RULE_forDeclaration}, toolkit::{self, ast_node::find_dfs_rule_ast, context::NhwcContext, dot::Config, et_node::EtNodeType, etc::generate_png_by_graph, pass_manager::Pass}
};
use anyhow::Result;
#[derive(Debug)]
pub struct Ast2EtDebugPass {
    is_gen_png:bool,
}
impl Ast2EtDebugPass {
    pub fn new(is_gen_png:bool) -> Self { Ast2EtDebugPass { is_gen_png } }
}

impl Pass for Ast2EtDebugPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcContext) -> Result<()> {
        let et_tree = &mut ctx.et_tree;

        //dfs遍历ast找到第一个 expr stmt
        let mut nodes:Vec<u32> = vec![];
        nodes.extend(find_dfs_rule_ast(&ctx.ast_tree, 0, RULE_declaration));
        // nodes.extend(find_dfs_rule_ast(&ctx.ast_tree, 0, RULE_expressionStatement));
        nodes.extend(find_dfs_rule_ast(&ctx.ast_tree, 0, RULE_expression));
        nodes.extend(find_dfs_rule_ast(&ctx.ast_tree, 0, RULE_forDeclaration));
        let root = 0;
        et_tree.add_node(EtNodeType::new_sep(root).as_et_node());
        for node in nodes {
            let any_root = toolkit::gen_et::process_any_stmt(et_tree, &ctx.ast_tree, &ctx.scope_tree, node, 0);
            add_edge!(from root to any_root in et_tree);
        }
        //debug输出et_node内容
        for et_node in et_tree.node_weights_mut() {
            et_node.load_ast_node_text(&ctx.ast_tree)?
        }
        // 1.1 生成对应的png
        if self.is_gen_png {
            generate_png_by_graph(&ctx.et_tree.clone(), "et_tree".to_string(), &[Config::EdgeNoLabel, Config::Record, Config::Title("et_tree".to_string())],&mut ctx.io_task_list)?;
        }

        Ok(())
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass Ast2EtDebugPass description".to_string(); }
    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "Ast2EtDebugPass".to_string(); }
}
