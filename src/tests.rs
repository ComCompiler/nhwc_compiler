// #[cfg(test)]
// mod tests {
//     use core::panic;
    

//     use clap::Parser;
    

//     use crate::{
//         add_passes, passes::pass_demo::PassDemo, toolkit::{
//             pass_manager::{Pass, PassManager}, symbol::Symbol, symtab::SymTab
//         }, Args
//     };

//     #[test]
//     fn add() { assert_eq!(3 + 3, 6) }

//     // #[test]
//     // fn find_dfs_ast_test() {
//     //     let mut args = Args::parse();
//     //     // 设置 path 为 demo.c
//     //     args.c_file_path = PathBuf::from_str("./demos/demo.c").unwrap();
//     //     let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
//     //     let mut context = ContextBuilder::default().code(code).build().unwrap();
//     //     parse_as_ast_tree(&mut context);
//     //     let ast_tree = &mut context.ast_tree;
//     //     //dfs遍历ast
//     //     let node_ids:Vec<u32> = find_dfs_rule_ast(&ast_tree, 0, RULE_functionDefinition).collect();
//     //     assert_eq!(node_ids, vec![3, 179], "找到的 node id 不对");
//     // }

//     // #[test]
//     // fn find_compound_of_func_def() {
//     //     let mut args = Args::parse();
//     //     // 设置 path 为 demo.c
//     //     args.c_file_path = PathBuf::from_str("./demos/demo.c").unwrap();
//     //     let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());

//     //     let mut context = ContextBuilder::default().code(code).build().unwrap();
//     //     parse_as_ast_tree(&mut context);
//     //     let ast_tree = &mut context.ast_tree;
//     //     //dfs遍历ast
//     //     let node = find_dfs_rule_ast(ast_tree, 0, RULE_functionDefinition).next().unwrap(); // 三号节点是一个 function def
//     //     let node_id = find!(rule RULE_compoundStatement at node in ast_tree).unwrap();
//     //     assert_eq!(node_id, 14, "找到的 node id 不对");
//     // }
//     // #[test]
//     // fn find_items_of_itemlists_using_macro_find_nodes() {
//     //     let mut args = Args::parse();
//     //     // 设置 path 为 demo.c
//     //     args.c_file_path = PathBuf::from_str("./demos/demo.c").unwrap();

//     //     let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());

//     //     let mut context = ContextBuilder::default().code(code).build().unwrap();
//     //     parse_as_ast_tree(&mut context);
//     //     let ast_tree = &mut context.ast_tree;
//     //     //dfs遍历ast
//     //     let node = find_dfs_rule_ast(ast_tree, 0, RULE_blockItemList).next().unwrap(); // 三号节点是一个 function def
//     //     let node_ids:Vec<u32> = find_nodes!(rule RULE_blockItem at node in ast_tree);
//     //     assert_eq!(node_ids, vec![17, 34, 153], "找到的 node id 不对");
//     // }
//     // #[test]
//     // fn gen_ast_png() {
//     //     // 读取命令选项，诸如 -c 表示代码文件地址
//     //     // 你也可以通过运行 cargo run -- --help 来查看所有可用选项
//     //     let path = "./demos/demo.c".to_string();
//     //     let code = read_file_content(path);
//     //     let mut context = ContextBuilder::default().code(code).build().unwrap();
//     //     parse_as_ast_tree(&mut context);
//     //     let ast_tree = &mut context.ast_tree;
//     //     // 生成 petgraph 图对应的 png
//     //     // generate_png_by_graph(&ast_tree.clone(), "graph".to_string(), &[Config::EdgeNoLabel]);
//     // }
//     // #[test]
//     // fn find_items_of_func_def_using_macro_find_nodes_test2() {
//     //     let mut args = Args::parse();
//     //     // 设置 path 为 demo.c
//     //     args.c_file_path = PathBuf::from_str("./demos/demo.c").unwrap();
//     //     let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());

//     //     let mut context = ContextBuilder::default().code(code).build().unwrap();
//     //     parse_as_ast_tree(&mut context);
//     //     let ast_tree = &mut context.ast_tree;

//     //     //dfs遍历ast
//     //     let node = find_dfs_rule_ast(ast_tree, 0, RULE_functionDefinition).next().unwrap(); // 三号节点是一个 function def
//     //     let node_ids = find_nodes!(
//     //         rule RULE_compoundStatement  //起始节点a
//     //         then RULE_blockItemList      //经过节点b
//     //         finally RULE_blockItem       //寻找节点b的所有属性为c的子节点
//     //         at node in ast_tree
//     //     );
//     //     assert_eq!(node_ids, vec![17, 34, 152], "找到的 node id 不对");
//     // }
//     // #[test]
//     // fn find_items_of_func_def_using_macro_find_node_test2() {
//     //     let mut args = Args::parse();
//     //     // 设置 path 为 demo.c
//     //     args.c_file_path = PathBuf::from_str("./demos/demo.c").unwrap();
//     //     let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
//     //     let mut context = ContextBuilder::default().code(code).build().unwrap();
//     //     parse_as_ast_tree(&mut context);
//     //     let ast_tree = &mut context.ast_tree;
//     //     //dfs遍历ast
//     //     let node = find_dfs_rule_ast(ast_tree, 0, RULE_functionDefinition).next().unwrap(); // 三号节点是一个 function def
//     //     let node = find!(rule RULE_compoundStatement                //起始节点a
//     //                             finally RULE_blockItemList              //寻找节点a的属性为b的子节点
//     //                             at node in ast_tree)
//     //     .unwrap();
//     //     assert_eq!(node, 16, "找到的 node id 不对");
//     // }

//     #[test]
//     fn find_symbol() {
//         let mut symtab = SymTab::new();

//         let _x = symtab.add_symbol(Symbol::new(0, "x".to_string()));
//         let _y = symtab.add_symbol(Symbol::new(0, "y".to_string()));

//         match symtab.get_symbol_verbose("x".to_string(), 0) {
//             Ok(_) => {
//                 println!("找到了符号 x");
//             }
//             Err(_) => {
//                 panic!("没有找到符号 x ");
//             }
//         }
//         match symtab.get_symbol_verbose("y".to_string(), 0) {
//             Ok(_) => {
//                 println!("找到了符号 y");
//             }
//             Err(_) => {
//                 panic!("没有找到符号 y ");
//             }
//         }
//         match symtab.get_symbol_verbose("z".to_string(), 0) {
//             Ok(_) => {
//                 panic!("找到了符号 y")
//             }
//             Err(_) => {
//                 println!("没有找到符号 y ");
//             }
//         }
//         println!("{:?}", symtab)
//     }
//     #[test]
//     fn find_symbol_field() {
//         let _field_name = "TYPE";
//         let mut symtab = SymTab::new();

//         let x = symtab.add_symbol(Symbol::new(0, "x".to_string())).unwrap();
//         let _y = symtab.add_symbol(Symbol::new(0, "y".to_string())).unwrap();

//         match symtab.get(&x) {
//             Ok(_) => {
//                 println!("找到了符号 x")
//             }
//             Err(_) => {
//                 panic!("没有找到符号 x ");
//             }
//         }

//         println!("{:?}", symtab)
//     }

//     // #[test]
//     // fn find_symbol_macro_test() -> Result<()>{
//     //     const VALUE:&str = "VALUE";
//     //     let mut symtab = SymTab::new();

//     //     let x = add_symbol!({Symbol::new(0, "x".to_string())} to symtab );
//     //     let y = add_symbol!({Symbol::new(0, "y".to_string())} with_field VALUE:{Value::I32(None)} to symtab);

//     //     add_field!(
//     //         with_field VALUE:{Value::I32(None)} 
//     //         to x in symtab);
//     //     let x_sym = match find!(symbol mut at x in symtab) {
//     //         Ok(x) => {
//     //             println!("找到了符号 x");
//     //             x
//     //         }
//     //         Err(_) => {
//     //             panic!("没有找到符号 x ");
//     //         }
//     //     };

//     //     // let data_type = find!(field VALUE:Value in x_sym);
//     //     println!("x_sym {:?}", x_sym);
//     //     Ok(())
//     // }
//     // #[test]
//     // fn try_instruction_fmt() -> Result<()>{
//     //     const VALUE:&str = "VALUE";
//     //     let mut symtab = SymTab::new();

//     //     let lhs = add_symbol!({"lhs".to_string()} of scope {0} with_field VALUE:{Value::I32(None)} to symtab);
//     //     let a = add_symbol!({"No.1".to_string()} of scope {0} to symtab);
//     //     let b = add_symbol!({"No.2".to_string()} of scope {0} to symtab);

//     //     let instr = InstrType::new_add(lhs.clone(), a.clone(), b.clone(), Type::I32);
//     //     let instr2 = InstrType::new_add(lhs.clone(), a.clone(), b.clone(), Type::I32);
//     //     println!("{:?}", instr);
//     //     println!("{:?}", instr2);
//     //     Ok(())
//     // }
//     // #[test]
//     // fn find_term() {
//     //     let mut args = Args::parse();
//     //     // 设置 path 为 demo.c
//     //     args.c_file_path = PathBuf::from_str("./demos/demo.c").unwrap();
//     //     let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
//     //     let mut context = ContextBuilder::default().code(code).build().unwrap();
//     //     parse_as_ast_tree(&mut context);
//     //     let ast_tree = &mut context.ast_tree;
//     //     //dfs遍历ast
//     //     let node = 268; // 三号节点是一个 function def
//     //     let node = find!(term Return at node in ast_tree).unwrap();
//     //     assert_eq!(node, 269, "找到的 node id 不对");
//     // }

//     // #[test]
//     // fn gen_expr_demo() {
//     //     let mut args = Args::parse();
//     //     // 设置 path 为 demo.c
//     //     args.c_file_path = PathBuf::from_str("./demos/demo2.c").unwrap();
//     //     let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
//     //     let mut ctx = ContextBuilder::default().code(code).build().unwrap();
//     //     parse_as_ast_tree(&mut ctx);
//     //     let mut et_tree = EtTree::new();
//     //     //dfs遍历ast找到第一个 expr stmt
//     //     let expr_stmt_nodes:Vec<u32> = find_dfs_rule_ast(&ctx.ast_tree, 0, RULE_expressionStatement).collect(); // 三号节点是一个 function def
//     //     et_tree.add_node(EtNode::new(EtNodeType::new_sep(0)));
//     //     for expr_stmt_node in expr_stmt_nodes {
//     //         toolkit::gen_et::process_any_stmt(&mut et_tree, &ctx.ast_tree, &ctx.scope_tree, expr_stmt_node, 0);
//     //     }
//     //     // generate_png_by_graph(&et_tree, "et_tree".to_string(), &[Config::EdgeNoLabel]);
//     // }
//     // #[test]
//     // fn test_direct_children_nodes() {
//     //     let mut args = Args::parse();
//     //     // 设置 path 为 demo.c
//     //     args.c_file_path = PathBuf::from_str("./demos/demo1.c").unwrap();
//     //     let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());

//     //     let mut context = ContextBuilder::default().code(code).build().unwrap();
//     //     parse_as_ast_tree(&mut context);
//     //     let ast_tree = &mut context.ast_tree;
//     //     //dfs遍历ast
//     //     let node = find_dfs_rule_ast(ast_tree, 0, RULE_translationUnit).next().unwrap();
//     //     let nodes = direct_child_nodes!(at node in ast_tree);
//     //     assert_eq!(nodes.len(), 2, "找到的 nodes 数量 不对 {:?}", nodes);
//     // }
//     // #[test]
//     // fn test_direct_parent_node_macro() {
//     //     let mut args = Args::parse();
//     //     // 设置 path 为 demo.c
//     //     args.c_file_path = PathBuf::from_str("./demos/demo1.c").unwrap();
//     //     let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());

//     //     let mut context = ContextBuilder::default().code(code).build().unwrap();
//     //     parse_as_ast_tree(&mut context);
//     //     let ast_tree = &mut context.ast_tree;
//     //     //dfs遍历ast
//     //     let node = find_dfs_rule_ast(ast_tree, 0, RULE_compoundStatement).next().unwrap();
//     //     let parent_node = direct_parent_node!(at node in ast_tree);
//     //     assert_eq!(3, parent_node, "找到的 parent 不对 {:?}", parent_node);
//     // }
//     // #[test]
//     // fn test_eval_et() {
//     //     let mut args = Args::parse();
//     //     // 设置 path 为 demo_calculate.c
//     //     args.c_file_path = PathBuf::from_str("./demos/demo_calculate.c").unwrap();
//     //     let code = read_file_content(args.c_file_path.to_string_lossy().into_owned());
//     //     let mut _context = ContextBuilder::default().code(code).build().unwrap();
//     //     let mut et_tree:petgraph::prelude::StableGraph<EtNode, ()> = EtTree::new();
//     //     et_tree.add_node(EtNode::new(EtNodeType::new_sep(0)));
//     //     println!("{:?}", eval_et(&mut et_tree, 0));

//     //     // let id = 1;
//     //     // let a = node!(at id in et_tree);
//     //     // let b = node_mut!(at id in et_tree);
//     //     // let m = a.clone();
//     // }

//     #[test]
//     fn test_pass_demo() {
//         let args = Args::parse();
//         let mut pass_manager = PassManager::new(args);
//         let pass1 = PassDemo::new();
//         println!("{}", pass1.get_desc());
//         add_passes!(pass1 to pass_manager);
//         pass_manager.execute_passes();
//     }
// }
