use std::{any::{Any, TypeId}, fmt::Debug};

use petgraph::visit::Data;

/// 你实现的类型必须继承这个 trait 
pub trait SymbolField : Any + Debug{
    fn as_any(&self) -> &dyn Any{
        &self
    }
}

#[derive(Debug)]
pub enum DataType{
    I32,U32
}
impl SymbolField for DataType {

}
