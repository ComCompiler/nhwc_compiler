use std::{any::Any, collections::HashMap, fmt::Debug};

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
    I32,U32
}
impl Field for DataType {
    fn as_any(&self) -> &dyn Any {
        self
    }
    // fn as_any<'a>(&'a self) -> {
    //     &self
    // }
}
