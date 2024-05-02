use std::{any::Any, collections::HashMap, fmt::Debug};

use super::ast_node::AstTree;
use super::symtab::SymIdx;
use crate::{add_field,  node};

pub type Fields = HashMap<&'static str, Box<dyn Field>>;

/// 你实现的类型必须继承这个 trait
pub trait Field: Any + Debug {
    fn as_any(&self) -> &dyn Any;
    fn as_any_move(self) -> Box<dyn Any>;
    fn as_any_mut(&mut self) -> &mut dyn Any;
    fn clone_box(&self) -> Box<dyn Field>;
}
impl<T:Clone+Any+Debug> Field for T{
    fn as_any(&self) -> &dyn std::any::Any {
        self
    }
    fn as_any_move(self) -> Box<dyn std::any::Any>{
        Box::new(self)
    }
    fn as_any_mut(&mut self) -> &mut dyn std::any::Any {
        self
    }
    fn clone_box(&self)->Box<dyn crate::toolkit::field::Field> {
        Box::new(self.clone())
    }
}

#[derive(Debug, Clone)]
pub enum Value {
    I32(Option<i32>),
    F32(Option<f32>),
    I1(Option<bool>),
    Void,
}
#[derive(Clone)]
pub enum Type {
    I32,
    F32,
    I1,
    Void,
    Label,
    Fn { arg_syms:Vec<SymIdx>, ret_sym:SymIdx },
}
impl Clone for Box<dyn Field> {
    fn clone(&self) -> Box<dyn Field> { self.clone_box() }
}

impl Value {
    pub fn new_i32(value:i32) -> Self { Value::I32(Some(value)) }
    pub fn new_f32(value:f32) -> Self { Value::F32(Some(value)) }
    pub fn new_i1(value:bool) -> Self { Value::I1(Some(value)) }
    pub fn new_void() -> Self { Value::Void }
}
impl Type {
    pub fn new(ast_node:u32, ast_tree:&AstTree) -> Self {
        // 在asttree中找到node的u32所在节点的类型,返回I32或F32
        let text = node!(at ast_node in ast_tree).text.as_str();
        match text {
            "int" => Type::I32,
            "float" => Type::F32,
            "bool" => Type::I1,
            "double" => Type::F32,
            _ => panic!("text中类型错误 找到不支持的类型 {}", text),
        }
    }

    pub fn new_from_const(const_str:&String) -> Self {
        if const_str.contains(".") {
            Type::F32
        } else {
            Type::I32
        }
    }
    pub fn can_implicit_trans_to(another_type:&Type) -> bool {
        match another_type {
            Type::I32 => todo!(),
            Type::F32 => todo!(),
            Type::I1 => todo!(),
            Type::Void => todo!(),
            Type::Label => todo!(),
            Type::Fn { arg_syms: _, ret_sym: _ } => todo!(),
        }
    }
}

impl Debug for Type {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Type::I32 => write!(f, "i32"),
            Type::F32 => write!(f, "f32"),
            Type::I1 => write!(f, "i1"),
            Type::Fn { arg_syms: args_types, ret_sym: ret_type } => {
                write!(f, "Fn{:?}->{:?}", args_types, ret_type)
            }
            Type::Void => write!(f, "void"),
            Type::Label => write!(f, "label"),
        }
    }
}
impl Type {
    pub fn adapt(ty1:&Type, ty2:&Type) -> Self {
        match (ty1, ty2) {
            (Type::I32, Type::I32) => Type::I32,
            (Type::I32, Type::F32) => Type::F32,
            (Type::F32, Type::I32) => Type::F32,
            (Type::F32, Type::F32) => Type::F32,
            (Type::I32, Type::I1) => Type::I32,
            (Type::F32, Type::I1) => Type::F32,
            (Type::I1, Type::I32) => Type::I32,
            (Type::I1, Type::F32) => Type::F32,
            (Type::I1, Type::I1) => Type::I1,
            _ => {
                panic!("{:?}和{:?}不能进行兼容", ty1, ty2);
            }
        }
    }
}
#[derive(Clone)]
pub struct UseCounter {
    pub use_count:u32,
}

impl Debug for UseCounter {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result { write!(f, "{}", self.use_count) }
}
