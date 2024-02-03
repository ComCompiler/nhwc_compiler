use std::any::Any;

use crate::toolkit::{pass_manager::Pass, symbol_field::SymbolField};
#[derive(Debug)]
struct PrintSymbolStruct{
    type_str : String
}

impl SymbolField for PrintSymbolStruct{
    fn as_any(&self) -> &dyn Any {
        self
    }
}


/// 这个结构体，用于存储与Pass 相关的数据
/// 
pub struct PassDemo{
}

impl Pass for PassDemo{
    fn after_pass(&self){
        println!("after pass");
    }
    fn before_pass(&self) {
        println!("before pass ");
    }
    fn before_function(&self) {
        
    }
}

