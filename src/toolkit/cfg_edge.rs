use crate::NodeIndex;
use crate::node;
use std::fmt::Debug;
use super::ast_node::AstTree;
#[derive(Clone)]
pub struct CfgEdge{
    cfg_edge_type:CfgEdgeType,
    text: String
}
#[derive(Clone)]
pub enum CfgEdgeType{
    IfFalse{ }, Direct{ },
    IfTrue{ },
    BodyHead{ },
    BodyTail{ },
    If2Gather{},
}
impl CfgEdge{
    pub fn load_ast_node_text(&mut self,ast_tree :&AstTree){
        match self.cfg_edge_type {
            CfgEdgeType::IfTrue {} => self.text += "True",
            CfgEdgeType::IfFalse {} => self.text += "False",
            CfgEdgeType::Direct {} => self.text += "Direct",
            CfgEdgeType::BodyTail {} => self.text += "BodyTail",
            CfgEdgeType::BodyHead {} => self.text += "BodyHead",
            CfgEdgeType::If2Gather{} => self.text += "If2Gather",
        }
    }
}
impl CfgEdgeType{
    pub fn to_cfg_edge(self) -> CfgEdge{
        CfgEdge { cfg_edge_type: self, text: String::new() }
    }
}
impl Debug for CfgEdge{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{}",self.text)
    }
}
   


