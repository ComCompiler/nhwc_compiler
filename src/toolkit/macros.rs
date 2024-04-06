/// ? 返回下一层找到的第一个rule_id符合的节点，使用这个宏的时候必须确保语境中有ast_tree,node
/// ```rust    
/// let node =3;  // 三号节点是一个 function def 
///     let node =3;  // 三号节点是一个 function def 
///     let node_ids= find!(rule RULE_compoundStatement 
///                             finally RULE_blockItemList
///                             at node in ast_tree).unwrap();
/// assert_eq!(node_ids , vec![119,24,12] ,"找到的 node id 不对");
/// ```
#[macro_export] 
macro_rules! find {
    (rule $id:ident at $node:ident in $ast_tree:ident) => {
        {
            let mut iter  = crate::toolkit::ast_node::find_neighbors_rule_ast($ast_tree,$node,Some($id));
            iter.next()
        }
    } ;
    (rule $($id:ident)then+ finally $fin_id:ident at $node:ident in $ast_tree:ident) => {
        {
            let new_node = $node;
            $(let new_node = find!(rule $id at new_node in $ast_tree).unwrap();)+
            find!(rule $fin_id at new_node in $ast_tree)
        }
    };
    (rule $($id:ident)then+ finally term $fin_id:ident at $node:ident in $ast_tree:ident) => {
        {
            let new_node = $node;
            $(let new_node = find!(rule $id at new_node in $ast_tree).unwrap();)+
            find!(term $fin_id at new_node in $ast_tree)
        }
    };


    (term $term_name:ident at $node:ident in $ast_tree:ident) => {
        {
            let mut iter  = crate::toolkit::ast_node::find_neighbors_term_ast($ast_tree,$node,Some($term_name));
            iter.next()
        }
    };
    (term at $node:ident in $ast_tree:ident) => {
        {
            let mut iter  = crate::toolkit::ast_node::find_neighbors_term_ast($ast_tree,$node,None);
            iter.next()
        }
    };
    (field $field_name:ident:$field_type:ident in $sym:ident) => {
        {
            let op_field = $sym.get_field($field_name);
            match op_field {
                None=>{
                    None
                }
                Some(field)=>{
                    match field.as_any().downcast_ref::<$field_type>(){
                        Some(data) => {
                            Some(data)
                        },
                        None => panic!(concat!("这个field ",stringify!($field_name), "不是",stringify!($field_type), "类型")),
                    }
                }
            }
        }
    };
    (field mut $field_name:ident:$field_type:ident in $sym:ident) => {
        {
            let op_field = $sym.get_field_mut($field_name);
            match op_field {
                None=>{
                    None
                }
                Some(field)=>{
                    match field.as_any_mut().downcast_mut::<$field_type>(){
                        Some(data) => {
                            Some(data)
                        },
                        None => panic!(concat!("这个field ",stringify!($field_name), "不是",stringify!($field_type), "类型")),
                    }
                }
            }
        }
    };
    
    (field $field_name:ident:$field_type:ident at $symidx:ident in $symtab:ident ) => {
        {
            let field:Option<&Box<dyn Field>> = $symtab
                .get(&$symidx)
                .expect(format!("在符号表中找不到{:?}这个符号",$symidx) .as_str())
                .get_field($field_name);
            let op_field_data =match field{
                Some(value)=>{
                    Some(value.as_any().downcast_ref::<$field_type>().expect(format!("symbol {:?} 的 field {}不是这个类型",$symidx,$field_name).as_str()))
                }
                None=>{
                    None   
                }
            };
            op_field_data
        }
    };
    (field mut $field_name:ident:$field_type:ident at $symidx:ident in $symtab:ident ) => {
        {
            let field:Option<&mut Box<dyn Field>> = $symtab
                .get_mut(&$symidx)
                .expect(format!("在符号表中找不到{:?}这个符号",$symidx) .as_str())
                .get_field_mut($field_name);
            let op_field_data =match field{
                Some(value)=>{
                    Some(value.as_any_mut().downcast_mut::<$field_type>().expect(format!("symbol {:?} 的 field {}不是这个类型的",$symidx,$field_name).as_str()))
                }
                None=>{
                    None   
                }
            };
            op_field_data
        }
    };
    (symbol $sym_name:ident of scope $scope_node:ident  in $symtab:ident) => {
        {
            $symtab.get_verbose($sym_name , $scope_node)
        }
    };
    (symbol mut $sym_name:ident of scope $scope_node:ident  in $symtab:ident) => {
        {
            $symtab.get_verbose_mut($sym_name , $scope_node)
        }
    };
    (symbol $sym_name:block of scope $scope_node:block  in $symtab:ident) => {
        {
            $symtab.get_verbose($sym_name , $scope_node)
        }
    };
    (symbol $sym_name:block of scope $scope_node:ident  in $symtab:ident) => {
        {
            $symtab.get_verbose($sym_name , $scope_node)
        }
    };
    (symbol mut $sym_name:block of scope $scope_node:block  in $symtab:ident) => {
        {
            $symtab.get_verbose_mut($sym_name , $scope_node)
        }
    };
    (symbol at $symidx:ident  in $symtab:ident) => {
        {
            $symtab.get($symidx)
        }
    };
    (symbol mut at $symidx:ident  in $symtab:ident) => {
        {
            $symtab.get_mut(&$symidx)
        }
    };
}

/// ? 返回下一层找到的第一个rule_id符合的节点，使用这个宏的时候必须确保语境中有ast_tree和node
/// ```rust    
/// let node =3;  // 三号节点是一个 function def 
/// let node_ids:Vec<u32>= 
/// find_nodes!(rule RULE_compoundStatement 
///             then RULE_blockItemList
///             finally RULE_blockItem
///             at node in ast_tree);
/// assert_eq!(node_ids , vec![119,24,12] ,"找到的 node id 不对");
/// ```
#[macro_export] 
macro_rules! find_nodes {
    (rule $id:ident at $node:ident in $ast_tree:ident) => {
        {
            let iter = crate::toolkit::ast_node::find_neighbors_rule_ast($ast_tree,$node,Some($id));
            let mut nodes:Vec<u32> = iter.collect();
            nodes.reverse();
            nodes
        }
    };
    (rule at $node:ident in $ast_tree:ident) => {
        {
            let iter = crate::toolkit::ast_node::find_neighbors_rule_ast($ast_tree,$node,None);
            let nodes:Vec<u32> = iter.collect();
            nodes.reverse();
            nodes
        }
    };
    (term $id:ident at $node:ident in $ast_tree:ident) => {
        {
            let iter = crate::toolkit::ast_node::find_neighbors_term_ast($ast_tree,$node,Some($id));
            let mut nodes:Vec<u32> = iter.collect();
            nodes.reverse();
            nodes
        }
    };
    (term at $node:ident in $ast_tree:ident) => {
        {
            let iter = crate::toolkit::ast_node::find_neighbors_term_ast($ast_tree,$node,None);
            let mut nodes:Vec<u32> = iter.collect();
            nodes.reverse();
            nodes
        }
    };
    (rule $($id:ident)then+ finally $fin_id:ident at $node:ident in $ast_tree:ident) => {
        {
            let new_node = $node;
            $(let new_node = find!(rule $id at new_node in $ast_tree).unwrap();)+
            let nodes:Vec<u32> = find_nodes!(rule $fin_id at new_node in $ast_tree);
            nodes
        }
    };
    (rule $($id:ident)then+ finally at $node:ident in $ast_tree:ident) => {
        {
            let new_node = $node;
            $(let new_node = find!(rule $id at new_node in $ast_tree).unwrap();)+
            let nodes:Vec<u32> = find_nodes!(rule at new_node in $ast_tree);
            nodes
        }
    };
}

/// 这个宏返回指定节点下dfs的遍历筛选结果迭代器
#[macro_export] 
macro_rules! find_nodes_by_dfs {
    (rule $id:ident at $node:ident in $ast_tree:ident) => {
        {
            let iter = crate::toolkit::ast_node::find_dfs_rule_ast($ast_tree,$node,$id);
            iter.collect()
        }
    };
}

/// 这个宏返回指定节点直接附属的节点，你必须保证这个节点下只有一个节点
#[macro_export] 
macro_rules! direct_node {
    (at $node:ident in $graph:ident) => {
        {
            $graph.neighbors(NodeIndex::from($node)).next()
            .expect(format!("no direct node of {:?} in {:?}", $graph.node_weight(NodeIndex::from($node)),$graph).as_str()).index() as u32
        }
    };
    (at $node:ident in $graph:ident ret option)=>{
        {
            let node_index_option = $graph.neighbors(NodeIndex::from($node)).next();
            node_index_option.map(|node_index| node_index.index() as u32)
        }
    }
}
#[macro_export] 
macro_rules! direct_nodes{
    (at $node:ident in $graph:ident) => {
        {
            let iter = $graph.neighbors(NodeIndex::from($node)).map(|x| x.index() as u32);
            let mut nodes:Vec<u32> = iter.collect();
            nodes.reverse();
            nodes
        }
    };
}
/// 这个宏返回指定节点的outgoing 边，你必须保证这个节点的出边只有一条
#[macro_export] 
macro_rules! direct_edge {
    (at $node:ident in $graph:ident) => {
        {
            $graph.edges(NodeIndex::from($node)).next()
            .expect(format!("no direct edge of {:?} in {:?}", $graph.node_weight(NodeIndex::from($node)),$graph).as_str()).index() as u32
        }
    };
}
#[macro_export] 
macro_rules! add_edge {
    ($edge_struct:block from  $a:ident to $b:ident in $cfg_graph:ident) => {
        $cfg_graph.add_edge(NodeIndex::from($a), NodeIndex::from($b), $edge_struct ).index() as u32 
    };
    ($a:ident to $b:ident in $ast_tree:ident) => {
        $ast_tree.add_edge(NodeIndex::from($a), NodeIndex::from($b),() ).index() as u32 
    };
    (from $a:ident to $b:ident in $scope_tree:ident) => {
        $scope_tree.add_edge(NodeIndex::from($a), NodeIndex::from($b),() ).index() as u32 
    };
}
#[macro_export] 
macro_rules! add_node {
    ($node_struct:ident to $graph:ident) => {
        $graph.add_node($node_struct ).index() as u32
    };
    ($node_struct:block to $graph:ident) => {
        $graph.add_node($node_struct).index() as u32 
    };
}

#[macro_export] 
macro_rules! add_node_with_edge{
    ($node_struct:ident from $from_node:ident in $graph:ident) => {
        {
            let node_id = $graph.add_node($node_struct ).index() as u32;
            $graph.add_edge(NodeIndex::from($from_node), NodeIndex::from(node_id),());
            node_id
        }
    };
    ($node_struct:ident with edge $edgestruct:ident from $from_node:ident in $graph:ident) => {
        {
            let node_id = $graph.add_node($node_struct ).index() as u32;
            $graph.add_edge(NodeIndex::from($from_node), NodeIndex::from(node_id),$edgestruct );
            node_id
        }
    };
    ($node_struct:block from $from_node:ident in $graph:ident) => {
        {
            let node_id = $graph.add_node($node_struct ).index() as u32;
            $graph.add_edge(NodeIndex::from($from_node), NodeIndex::from(node_id),() );
            node_id
        }
    };
    ($node_struct:block with edge $edgestruct:block from $from_node:ident in $graph:ident) => {
        {
            let node_id = $graph.add_node($node_struct ).index() as u32;
            $graph.add_edge(NodeIndex::from($from_node), NodeIndex::from(node_id),$edgestruct );
            node_id
        }
    };
}
/// add symbol with Some Fields to symtab 
/// 比如说 将一个 I32 类型的 变量符号 添加到 符号表中，并且返回这个symbol在符号表中的 index 
/// 要求 field_value 必须实现 Field trait
/// add_symbol(x with field field_name_A:field_value_A to some_symtab)
#[macro_export] 
macro_rules! add_symbol {
    ($sym:ident $(with field $field_name:ident:$field_value:block)* to $symtab:ident ) => {
        {
            let symidx = $symtab.add($sym);
            $(
                let sym =  $symtab.get_mut(&symidx).unwrap();
                sym.add_field($field_name,Box::new($field_value));
            )?
            symidx
        }
    };
    ($sym:block $(with field $field_name:ident:$field_value:block)* to $symtab:ident ) => {
        {
            let symidx = $symtab.add($sym);
            $(
                let sym =  $symtab.get_mut(&symidx).unwrap();
                sym.add_field($field_name,Box::new($field_value));
            )?
            symidx
        }
    };
    ($sym_name:block of scope $scope:block $(with field $field_name:ident:{$field_value:expr})* to $symtab:ident ) => {
        {
            let mut sym = Symbol::new_verbose($scope,$sym_name);
            $(sym.add_field($field_name,Box::new($field_value));)*
            let symidx = $symtab.add(sym);
            symidx
        }
    };
}
/// add_field({a_name,})
/// 如果发现你想添加的field 已经存在则会直接 panic 
#[macro_export]
macro_rules! add_field {
    ($field_name:ident:{$field:expr} to $symidx:ident in $symtab:ident) => {
        $symtab.get_mut(&$symidx).unwrap().add_field($field_name,Box::new($field));
    };
    ($field_name:ident:{$field:expr} to $sym:ident) => {
        $sym:add_field($field_name,Box::new($field));
    };
}


#[macro_export] 
macro_rules! node {
    (at $node:ident in $graph:ident) => {
        {
            $graph.node_weight(NodeIndex::from($node)).expect("找不到 index 对应的 node ")
        }
    };
    (at $node:block in $graph:ident) => {
        {
            $graph.node_weight(NodeIndex::from($node)).expect("找不到 index 对应的 node ")
        }
    };
}

#[macro_export] 
macro_rules! node_mut {
    (at $node:ident in $graph:ident) => {
        {
            $graph.node_weight_mut(NodeIndex::from($node)).expect("找不到 index 对应的 node ")
        }
    };
}

/// 这个宏返回指定节点直接附属的节点，你必须保证这个节点下只有一个节点
#[macro_export] 
macro_rules! rule_id {
    (at $node:ident in $ast_tree:ident) => {
        {
            if node!(at $node in $ast_tree).is_terminal{
                panic!("can't use rule_id macro to a terminal node")
            }
            node!(at $node in $ast_tree).rule_id
        }
    };
}
#[macro_export] 
macro_rules! term_id {
    (at $node:ident in $ast_tree:ident) => {
        {
            if !node!(at $node in $ast_tree).is_terminal{
                panic!("can't use term_id macro to a rule node")
            }
            (node!(at $node in $ast_tree).rule_id as isize).try_into().expect("无法将此 term_id 转化为 isize 类型")
        }
    };
}
#[macro_export] 
macro_rules! dfs_graph {
    (at $node:ident in $graph:ident for dfs) =>{
        {
            let mut visited:Vec<bool> = vec![false;$graph.node_count()];
            let mut dfs_vec: Vec<u32> = vec![];

            crate::toolkit::etc::dfs($graph, $node,&mut visited,&mut dfs_vec);
            dfs_vec
        }
    };
}
#[macro_export] 
macro_rules! push_instr {
    ($instr:ident to $node:ident for entry in $graph:ident) =>{
        {
            let cfg_entry_node = node_mut!(at $node in $graph);
            if let crate::toolkit::cfg_node::CfgNode::Entry { ast_node:_, text:_, calls_in_func:_, instr } = cfg_entry_node{
                *instr = $instr;
            }
        }
    };
    ($instr:ident to $node:ident in $graph:ident) =>{
        {
            let cfg_node = node_mut!(at $node in $graph);
            match cfg_node {
                CfgNode::Exit {  ast_node, text, instrs } =>{
                    instrs.push($instr);
                }
                CfgNode::Branch {  ast_expr_node: ast_node, text, true_head_tail_nodes:  true_head_tail_nodes, false_head_tail_nodes, instrs } => {
                    instrs.push($instr);
                }
                CfgNode::Gather {} => {
                },
                CfgNode::BasicBlock { ast_nodes, text, instrs } =>{instrs.push($instr);
                }
                CfgNode::ForLoop {  text, ast_before_node, ast_mid_node, ast_after_node, exit_node, body_head_tail_nodes: body_node, instrs } => {
                    instrs.push($instr);
                }
                CfgNode::WhileLoop { ast_expr_node: ast_node, text, exit_node, body_node, instrs } => {
                    instrs.push($instr);
                },
                CfgNode::Switch { ast_expr_node, text, instrs } => {
                    instrs.push($instr);
                },
                _ => panic!("can't push instr to entry or root"),
            }
        }
    };
}

#[macro_export]
macro_rules! add_pass {
    ($pass:ident to $pass_manager:ident) => {
        $pass_manager.add_pass(Box::new($pass));
    };
}
#[macro_export]
macro_rules! add_passes {
    ($first_pass:ident $(then $next_pass:ident)* to $pass_manager:ident) => {
        $pass_manager.add_pass(Box::new($first_pass));
        $($pass_manager.add_pass(Box::new($next_pass));)*
    };
}


#[macro_export]
macro_rules! gen_field_trait_for_structs {
    ($($struct_name:ident),+) => {
        $( 
        impl Field for $struct_name {
            fn as_any(&self) -> &dyn Any {
                self
            }
            fn as_any_mut(&mut self) -> &mut dyn Any {
                self
            }
            fn clone_box(&self)->Box<dyn Field> {
                Box::new(self.clone())
            }
        }
        )*
    };
}