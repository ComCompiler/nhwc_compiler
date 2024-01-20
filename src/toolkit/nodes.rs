use std::fmt::Debug;

use crate::clang::cparser::ruleNames;

pub struct ASTNode {
    pub rule_id : usize,
    pub text : String,
}
impl ASTNode { 
    pub fn new(rule_id : usize, text:String) -> Self{
        Self{ rule_id,text }
    }
}

impl Debug for ASTNode{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{} {}",ruleNames[self.rule_id],self.text)
    }
}
