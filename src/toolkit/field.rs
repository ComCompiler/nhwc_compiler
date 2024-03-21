use std::{any::Any, collections::HashMap, fmt::Debug};

use petgraph::visit::Data;

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
pub enum DataType{
    I32(Option<i32>),U32(Option<u32>),U8(Option<u8>)
}
impl Field for DataType {
    fn as_any(&self) -> &dyn Any {
        self
    }
    // fn as_any<'a>(&'a self) -> {
    //     &self
    // }
}
impl DataType{
    pub fn new_i32(value:i32) -> Self{
        DataType::I32(Some(value))
    }
    pub fn new_u32(value:u32) -> Self{
        DataType::U32(Some(value))
    }
    pub fn new_u8(value:u8) -> Self{
        DataType::U8(Some(value))
    }
}
