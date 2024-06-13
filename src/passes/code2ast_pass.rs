use crate::toolkit::{
    context::NhwcCtx, dot::Config, etc::{generate_png_by_graph_multi_tasks, read_file_content}, gen_ast::parse_as_ast_tree, pass_manager::Pass
};
use anyhow::Result;
#[derive(Debug)]
pub struct Code2AstPass {
    is_gen_png:bool,
}
impl Code2AstPass {
    pub fn new(is_gen_png:bool) -> Self { Code2AstPass { is_gen_png } }
}

impl Pass for Code2AstPass {
    // 运行这个pass
    fn run(&mut self, ctx:&mut NhwcCtx) -> Result<()> {
        ctx.code = read_file_content(ctx.args.input.to_string_lossy().into_owned());
        let defs = "int getint();
            int getch();
            int getarray(int a[]);
            float getfloat();
            int getfarray(float a[]);

            void putint(int x );
            void putch(int x );
            void putarray(int x, int a[]);
            void putfloat(float x);
            void putfarray(int x, float a[]);

            // putf(char *s, ...)
            void putf();

            // macros are not supported as for now
            // #define starttime() _sysy_starttime(__LINE__)
            // #define stoptime()  _sysy_stoptime(__LINE__)
            void starttime();
            void stoptime();

            void memset(void *s, int c, int n);
            void memcpy(void *dest, void *src, int n);";
        if !ctx.args.no_header{
            ctx.code += defs;
        }

        parse_as_ast_tree(ctx);
        // 生成对应的png
        if self.is_gen_png {
            let ast_tree = &mut ctx.ast_tree;
            generate_png_by_graph_multi_tasks(&ast_tree.clone(), "ast_tree".to_string(), &[Config::EdgeNoLabel, Config::Record, Config::Title("ast_tree".to_string())],&mut ctx.io_task_list)?;
        }
        Ok(())
    }
    // 返回pass的描述，具体作用
    fn get_desc(&self) -> String { return "pass Code2AstPass description".to_string(); }
    // 返回pass的名称
    fn get_pass_name(&self) -> String { return "Code2AstPass".to_string(); }
}
