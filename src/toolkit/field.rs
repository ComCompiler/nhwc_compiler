use std::{any::Any, collections::HashMap, fmt::Debug};

use petgraph::visit::Data;

use crate::{find, node};
use crate::NodeIndex;
use super::ast_node::AstTree;

pub type Fields =  HashMap<&'static str,Box<dyn Field>>;


pub trait FieldsOwner{
    fn add_field(&mut self,key :&'static str,sf:Box<dyn Field>);
    fn remove_field(&mut self, field_name : &'static str);
    fn get_field(&self,key: &str) -> Option<&Box<dyn Field>>;
    fn get_field_mut(&mut self,key: &str) -> Option<&mut Box< dyn Field>>;
}

/// 你实现的类型必须继承这个 trait 
pub trait Field : Any + Debug {
    fn as_any(&self) -> &dyn Any;
}


#[derive(Debug,Clone)]
pub enum Value{
    I32(Option<i32>),F32(Option<f32>)
}
#[derive(Clone)]
pub enum Type{
    I32,F32
}
impl Field for Value {
    fn as_any(&self) -> &dyn Any {
        self
    }
    // fn as_any<'a>(&'a self) -> {
    //     &self
    // }
}
impl Value{
    pub fn new_i32(value:i32) -> Self{
        Value::I32(Some(value))
    }
    pub fn new_f32(value:f32) -> Self{
        Value::F32(Some(value))
    }
}
impl Type{
    pub fn new(node:u32,ast_tree:&AstTree) -> Self{
        // 在asttree中找到node的u32所在节点的类型,返回I32或F32
        let text = node!(at node in ast_tree).text.as_str();
        match text {
            "int" => Type::I32,
            "float" => Type::F32,
            _ => panic!("text中类型错误"),
        }
    }
}

impl Debug for Type{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Type::I32 => write!(f,"i32"),
            Type::F32 => write!(f,"f32"),
        }
    }
}