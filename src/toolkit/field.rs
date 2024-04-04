use std::{any::Any, collections::HashMap, fmt::Debug};

use petgraph::visit::Data;

use crate::{find, gen_field_trait_for_structs, node};
use crate::NodeIndex;
use super::ast_node::AstTree;
use super::symbol_table::Symidx;

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
    fn as_any_mut(&mut self) -> &mut dyn Any;
    fn clone_box(&self)->Box<dyn Field>;
}


#[derive(Debug,Clone)]
pub enum Value{
    I32(Option<i32>),F32(Option<f32>),I1(Option<bool>)
}
#[derive(Clone)]
pub enum Type{
    I32,F32,I1,
    Fn{
        args_types:Vec<Symidx>,
        ret_type:Option<Symidx>,
    }
}
impl Clone for Box<dyn Field>{
    fn clone(&self) -> Box<dyn Field>{
        self.clone_box()
    }
}

impl Value{
    pub fn new_i32(value:i32) -> Self{
        Value::I32(Some(value))
    }
    pub fn new_f32(value:f32) -> Self{
        Value::F32(Some(value))
    }
    pub fn new_i1(value:bool) -> Self{
        Value::I1(Some(value))
    }
}
impl Type{
    pub fn new(node:u32,ast_tree:&AstTree) -> Self{
        // 在asttree中找到node的u32所在节点的类型,返回I32或F32
        let text = node!(at node in ast_tree).text.as_str();
        match text {
            "int" => Type::I32,
            "float" => Type::F32,
            "bool" => Type::I1,
            _ => panic!("text中类型错误 找到不支持的类型 {}",text),
        }
    }
}

impl Debug for Type{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Type::I32 => write!(f,"i32"),
            Type::F32 => write!(f,"f32"),
            Type::I1 => write!(f,"i1"),
            Type::Fn { args_types, ret_type } => write!(f,"Fn{:?}->{:?}",args_types,ret_type),
        }
    }
}
impl Type{
    pub fn adapt(ty1:&Type,ty2:&Type)->Self{
        match (ty1,ty2){
            (Type::I32, Type::I32) => Type::I32,
            (Type::I32, Type::F32) => Type::F32,
            (Type::F32, Type::I32) => Type::F32,
            (Type::F32, Type::F32) => Type::F32,
            (Type::I32, Type::I1) => todo!(),
            (Type::F32, Type::I1) => todo!(),
            (Type::I1, Type::I32) => todo!(),
            (Type::I1, Type::F32) => todo!(),
            (Type::I1, Type::I1) => Type::I1,
            _ => todo!(),
        }
    }
}
gen_field_trait_for_structs!(Type,Value,UseCounter);
#[derive(Clone)]
pub struct UseCounter{
   pub use_count:u32 
}

impl Debug for UseCounter{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f,"{}",self.use_count)
    }
}