use std::{any::{Any, TypeId}, fmt::Debug};

use petgraph::visit::Data;

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
