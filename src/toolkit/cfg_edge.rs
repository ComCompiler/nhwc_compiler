use crate::NodeIndex;
use crate::node;
use std::fmt::Debug;
use super::ast_node::AstTree;
use super::{ast_node, cfg_node::GetText};

pub enum CfgEdge{
    Conditioned{
        // 这里对应的是 Expr ast node 的条件
        ast_node: u32 ,
        text: String
    },
    Else{

    },
    Direct{
        
    }
}
impl GetText for CfgEdge{
    fn get_text(&self)-> Option<&str> {
        match self {
            CfgEdge::Conditioned { ast_node:ptr_ast_node, text } =>{ let  ast_node = * ptr_ast_node ;
                Some(text.as_str())
            }
            CfgEdge::Else {  } => None,
            CfgEdge::Direct {  } => None,
        }
    }
}
impl CfgEdge{
    fn load_ast_node_text(&mut self,ast_tree :&AstTree)->&str {
        match self {
            CfgEdge::Conditioned { ast_node:ptr_ast_node, text } =>{ let  ast_node = * ptr_ast_node ;
                *text =node!(at ast_node in ast_tree).text.clone(); 
                text.as_str()
            }
            CfgEdge::Else {  } => "",
            CfgEdge::Direct {  } => "",
        }
    }
}
impl Debug for CfgEdge{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self{
            CfgEdge::Conditioned {  ast_node: ast_node_idx, text } =>{
                let ast_node = *ast_node_idx;
                write!(f,"{} {} \n{}","Entry",ast_node_idx, text)},
            CfgEdge::Else {} =>
                write!(f,""),
            CfgEdge::Direct {} =>
                write!(f,""),
        }
    }
}


