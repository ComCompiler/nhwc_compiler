use crate::NodeIndex;
use crate::node;
use std::fmt::Debug;
use super::ast_node::AstTree;
#[derive(Clone)]
pub enum CfgEdge{
    Conditioned{
        // 这里对应的是 Expr ast node 的条件
        ast_node: u32 ,
        text: String
    },
    Else{ }, Direct{ },
    After{
        ast_node :u32 ,
        text: String
    }

}
impl CfgEdge{
    pub fn load_ast_node_text(&mut self,ast_tree :&AstTree)->&str {
        match self {
            CfgEdge::Conditioned { ast_node:ptr_ast_node, text } =>{ 
                let  ast_node = * ptr_ast_node ;
                *text =node!(at ast_node in ast_tree).text.clone(); 
                text.as_str()
            }
            CfgEdge::Else {  } => "",
            CfgEdge::Direct {  } => "",
            CfgEdge::After { ast_node:ptr_ast_node, text } => { 
                let  ast_node = * ptr_ast_node ;
                *text =node!(at ast_node in ast_tree).text.clone(); 
                text.as_str()
            }
        }
    }
}
impl Debug for CfgEdge{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            CfgEdge::Conditioned {  ast_node: ast_node_idx, text } =>{
                let _ast_node = *ast_node_idx;
                write!(f,"{} \n{}",ast_node_idx, text)},
            CfgEdge::Else {} =>
                write!(f,"Else"),
            CfgEdge::Direct {} =>
                write!(f,""),
            CfgEdge::After { ast_node:_, text } => write!(f,"{}",text),
        }
    }
}


