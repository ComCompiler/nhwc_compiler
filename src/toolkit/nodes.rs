use std::fmt::Debug;

use crate::clang::{cparser::ruleNames};
pub struct Node {
    pub rule_id : usize,
    pub text : String,
}
impl Node { 
    pub fn new(rule_id : usize, text:String) -> Self{
        Self{ rule_id,text }
    }
}

impl Debug for Node{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{} {}",ruleNames[self.rule_id],self.text)
    }
}
