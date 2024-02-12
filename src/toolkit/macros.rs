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
            let mut iter  = crate::toolkit::ast_node::find_neighbors_rule_ast($ast_tree,$node,$id);
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
    (symbol $symbol_name:ident at $scope_node:ident  in $symtab:ident) => {
        {
            $symtab.get_verbose($symbol_name , $scope_node)
        }
    };
    (term $term_name:ident at $node:ident in $ast_tree:ident) => {
        {
            let mut iter  = crate::toolkit::ast_node::find_neighbors_term_ast($ast_tree,$node,$term_name);
            iter.next()
        }
    };
    (field $field_id:ident as $field_type:ident in $symbol:ident) => {
        {
            {
                let field = $symbol.get_field(stringify!($field_id)).unwrap();
                match field.as_any().downcast_mut::<$field_type>(){
                    Some(data_type) => {
                        data_type
                    },
                    None => panic!(concat!("这个field ",stringify!(field_id), "不是",stringify!($field_type), "类型")),
                }
            }
        }
    };
    (mut field $field_id:ident as $field_type:ident in $symbol:ident) => {
        {
            {
                let field = $symbol.get_field_mut(stringify!($field_id)).unwrap();
                match field.as_any().downcast_mut::<$field_type>(){
                    Some(data_type) => {
                        data_type
                    },
                    None => panic!(concat!("这个field ",stringify!(field_id), "不是",stringify!($field_type), "类型")),
                }
            }
        }
    }
    
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
            let iter = crate::toolkit::ast_node::find_neighbors_rule_ast($ast_tree,$node,$id);
            iter.collect()
        }
    };
    (rule $($id:ident)then+ finally $fin_id:ident at $node:ident in $ast_tree:ident) => {
        {
            let new_node = $node;
            $(let new_node = find!(rule $id at new_node in $ast_tree).unwrap();)+
            find_nodes!(rule $fin_id at new_node in $ast_tree)
        }
    };

}

/// 这个宏返回指定节点下dfs的遍历筛选结果迭代器
#[macro_export] 
macro_rules! find_nodes_by_dfs {
    (rule $id:ident at $node:ident in $ast_tree:ident) => {
        {
            let iter = crate::toolkit::ast_node::find_dfs_ast($ast_tree,$node,$id);
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
}
#[macro_export] 
macro_rules! add_node {
    ($node_struct:ident to $graph:ident) => {
        $graph.add_node($node_struct ).index() as u32
    };
}


#[macro_export] 
macro_rules! node {
    (at $node:ident in $graph:ident) => {
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
            node!(at $node in $ast_tree).rule_id
        }
    };
}
