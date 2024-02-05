use std::fmt::Debug;

use petgraph::{adj::NodeIndex, graph::DiGraph, stable_graph::{StableDiGraph, StableGraph}, visit::Bfs};

use crate::antlr_parser::cparser::ruleNames;
use petgraph::visit::{Dfs, Walker};
pub type AstTree = StableDiGraph<AstNode,(),u32>;

#[derive(Clone)]
pub struct AstNode {
    pub rule_id : usize,
    pub node_index : u32,
    pub text : String,
}
impl AstNode { 
    pub fn new(rule_id : usize, text:String) -> Self{
        Self{ rule_id, node_index:0 ,text  }
    }
}

impl Debug for AstNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{} {} {}",ruleNames[self.rule_id],self.text, self.node_index)
    }
}


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
            let mut iter  = crate::toolkit::ast_node::find_neighbors_ast($ast_tree,$node,$id);
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
    (symbol $symbol_name:ident at $scope_depth:ident  in $symtab:ident) => {
        {
            $symtab.get_verbose($symbol_name , $scope_depth)
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
            let iter = crate::toolkit::ast_node::find_neighbors_ast($ast_tree,$node,$id);
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
/// 返回 start 所有子节点以dfs序返回的特定rule_id 的迭代器
pub fn find_dfs_ast<'a>(ast_tree:&'a AstTree,start:NodeIndex,target_rule_id: usize) -> impl Iterator<Item = u32> + 'a{
    // let ast_tree = &*ast_tree_rc.borrow();
    let dfs = Dfs::new(ast_tree, NodeIndex::from(start));
    let dfs_iter= dfs.iter(ast_tree);
    let dfs_iter = dfs_iter.map(|x|x.index() as u32);
    let dfs_iter = dfs_iter.filter(move |x| ->bool {
        let ast_tree_2 = &*ast_tree;
        let ast_node =ast_tree_2.node_weight(NodeIndex::from(*x));
        ast_node.unwrap().rule_id ==  target_rule_id
    });
    dfs_iter
}

pub fn find_bfs_ast<'a>(ast_tree:&'a AstTree,start:NodeIndex,target_rule_id: usize) -> impl Iterator<Item = u32> + 'a{
    // let ast_tree = &*ast_tree_rc.borrow();
    let bfs = Bfs::new(ast_tree, NodeIndex::from(start));
    let bfs_iter= bfs.iter(ast_tree);
    let bfs_iter = bfs_iter.map(|x|x.index() as u32);
    let bfs_iter = bfs_iter.filter(move |x| ->bool {
        let ast_tree_2 = &*ast_tree;
        let ast_node =ast_tree_2.node_weight(NodeIndex::from(*x));
        ast_node.unwrap().rule_id ==  target_rule_id
    });
    bfs_iter
}


/// 返回 start 下一层特定rule_id 的迭代器
pub fn find_neighbors_ast<'a>(ast_tree:&'a AstTree,start:NodeIndex,target_rule_id: usize) ->impl Iterator<Item = u32> + 'a {
    let ns = ast_tree.neighbors(NodeIndex::from(start));
    ns.map(|x| x.index() as u32).filter(move |x| ast_tree.node_weight(NodeIndex::from(*x)).unwrap().rule_id == target_rule_id )
}

