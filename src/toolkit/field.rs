use std::{any::Any, collections::HashMap, fmt::Debug, ops::{Add, BitAnd, BitOr, Div, Mul, Not, Rem, Sub}};

use ahash::AHashMap;
use strum_macros::EnumIs;
use anyhow::*;

use super::ast_node::AstTree;
use super::symtab::SymIdx;
use crate::node;

pub type Fields = HashMap<&'static str, Box<dyn Field>>;

/// 你实现的类型必须继承这个 trait
pub trait Field: Any + Debug {
    fn as_any(&self) -> &dyn Any;
    fn as_any_move(self) -> Box<dyn Any>;
    fn as_any_mut(&mut self) -> &mut dyn Any;
    fn clone_box(&self) -> Box<dyn Field>;
    fn as_field_move(self) -> Box<dyn Field>;
}
// if you implement this 会栈溢出，很神奇
impl<T:Clone+Any+Debug> Field for Vec<T>{
    fn as_any(&self) -> &dyn std::any::Any {
        self
    }
    fn as_any_move(self) -> Box<dyn std::any::Any>{
        Box::new(self)
    }
    fn as_any_mut(&mut self) -> &mut dyn std::any::Any {
        self
    }
    fn as_field_move(self) -> Box<dyn Field>{
        Box::new(self)
    }
    fn clone_box(&self)->Box<dyn crate::toolkit::field::Field> {
        Box::new(self.clone())
    }
}
impl<T:Clone+Any+Debug> Field for Option<T>{
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
    
    fn as_field_move(self) -> Box<dyn Field>{
        Box::new(self)
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, EnumIs)]
pub enum Value {
    I32(Option<i32>),
    F32(Option<f32>),
    I1(Option<bool>),
    Void,
    Fn { arg_syms:Vec<SymIdx>, ret_sym:SymIdx },
    Array {
        value_map:ArrayMap,
        dims:Vec<u32>,
        ele_type:Type,
    }
    // // 这个类型用来表示不确定的值或其代数表达式
    // // 例如 int a = getint() 由于 a取决于用户输入，那么我们不能直接使用 a的值，只能用一个代数符号表示
    // // Unsure {},
}
#[derive(Clone)]
pub struct ArrayMap{
    map:AHashMap<Vec<u32>,Value>
    
}
impl ArrayMap{
    pub fn new()->Self{
        Self { map: AHashMap::new() }
    }
}
impl Debug for ArrayMap{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let mut text = String::new();
        for (k,v) in self.map.iter(){
            let s:String  = k.iter().map(|&dim_index| format!("[{}]",dim_index)).collect();
            text += format!("{} ={:?}",s,v).as_str();
        }
        write!(f,"{}",text)
    }
}
impl PartialEq for ArrayMap{
    fn eq(&self, other: &Self) -> bool {
        self.map == other.map
    }
} 
impl PartialOrd for ArrayMap{
    fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering> {
        panic!("不能比较 array {:?} 和 array {:?} 类型",self, other);
    }
}

#[derive(Clone,EnumIs,PartialOrd,PartialEq)]
pub enum Type {
    I32,
    F32,
    I1,
    Void,
    Label,
    Array{
        dims:Vec<u32>,
        ty:Box<Type>,
    },
    Fn { arg_syms:Vec<SymIdx>, ret_sym:SymIdx },
}
impl Clone for Box<dyn Field> {
    fn clone(&self) -> Box<dyn Field> { self.clone_box() }
}

impl Value {
    pub fn new_i32(value:i32) -> Self { Value::I32(Some(value)) }
    pub fn new_f32(value:f32) -> Self { Value::F32(Some(value)) }
    pub fn new_unsure_from_specific_type(specified_ty:&Type) -> Self {
        match specified_ty{
            Type::I32 => Value::I32(None),
            Type::F32 => Value::F32(None),
            Type::I1 => Value::I1(None),
            Type::Void => Value::Void,
            Type::Label => todo!(),
            Type::Array { dims: _, ty } => Value::Array { value_map: ArrayMap::new(), dims: vec![], ele_type: *ty.clone()},
            Type::Fn { arg_syms: _, ret_sym: _ } => todo!(),
        }
    }
    pub fn is_unsure(){

    }
    pub fn new_i1(value:bool) -> Self { Value::I1(Some(value)) }
    pub fn new_void() -> Self { Value::Void }
    pub fn to_specific_type(&self,ty:&Type) -> Result<Value>{
        match (&self,&ty) {
            (Value::I32(v), Type::I32) => Ok(Value::new_i32(v.context("没毛病")? as i32)),
            (Value::I32(v), Type::F32) => Ok(Value::new_f32(v.context("I32 to F32 but not a i32")? as f32)),
            (Value::I32(_v), Type::I1) => todo!(),
            (Value::I32(_v), Type::Void) => todo!(),
            (Value::I32(_v), Type::Label) => todo!(),
            (Value::F32(_v), Type::I32) => todo!(),
            (Value::F32(v), Type::F32) => Ok(Value::new_f32(v.context("没毛病")? as f32)),
            (Value::F32(_v), Type::I1) => todo!(),
            (Value::F32(_v), Type::Void) => todo!(),
            (Value::F32(_v), Type::Label) => todo!(),
            (Value::I1(v), Type::I32) => Ok(Value::new_i32(v.context("I32 to I1 but not a i1")?.into())),
            (Value::I1(v), Type::F32) => Ok(Value::new_f32(v.context("F32 to I1 but not a f32")?.into())),
            (Value::I1(v), Type::I1) => Ok(Value::new_i1(v.context("没毛病")?.into())),
            (Value::Void, t) => Err(anyhow!("void 类型不能转化为 {:?} 类型",t)),
            (Value::Fn { arg_syms: _, ret_sym: _ }, _t) => todo!(),
            _ => Err(anyhow!("不能将 {:?} 转化为 {:?}",self,ty )),
        }
    }
    // pub fn as_specific_type(self) -> Self {

    // }
    pub fn from_string_with_specific_type(s:&String,ty:&Type)->Result<Value>{
        Ok(match &ty{
            Type::I32 => Value::new_i32(s.parse().with_context(||format!("when parsing {}",s))?),
            Type::F32 => Value::new_f32(s.parse().with_context(||format!("when parsing {}",s))?),
            Type::I1 => Value::new_i1(s.parse().with_context(||format!("when parsing {}",s))?),
            Type::Void => Err(anyhow!("不能从string 转化为 Void 类型的value"))?,
            Type::Label => Err(anyhow!("不能从string 转化为 Label 类型的value"))?,
            Type::Fn { arg_syms: _, ret_sym: _ } => Err(anyhow!("不能从string 转化为 Fn 类型的value"))?,
            // Type::Unsure {  } => Err(anyhow!("不能从string 转化为 Unsure 类型的value"))?,
            Type::Array { dims: _, ty: _ } => todo!(),
        })
    }
    pub fn to_type(&self)->Type{
        match self{
            Value::I32(_) => Type::I32,
            Value::F32(_) => Type::F32,
            Value::I1(_) => Type::I1,
            Value::Void => Type::Void,
            Value::Fn { arg_syms, ret_sym } => Type::Fn { arg_syms: arg_syms.clone(), ret_sym: ret_sym.clone() },
            Value::Array { value_map: _, dims , ele_type } => Type::Array { dims: dims.clone(), ty:Box::new(ele_type.clone())  },
            // Value::Unsure {  } => Type::Unsure {  },
        }
    }
    pub fn adapt(&self, value2:&Value) -> Result<Type> {
        Type::adapt(&self.to_type() ,&value2.to_type())
    }
}
impl Type {
    /// 这个函数接受一个ast_node 和 ast_tree 通过识别 ast_node 来完成基本类型的识别  
    /// 但是无法识别数组类型(只能识别数组的元素类型)
    pub fn new(ast_node:u32, ast_tree:&AstTree) -> Self {
        // 在asttree中找到node的u32所在节点的类型,返回I32或F32
        let text = node!(at ast_node in ast_tree).text.as_str();
        match text {
            "int" => Type::I32,
            "float" => Type::F32,
            "bool" => Type::I1,
            "double" => Type::F32,
            "void" => Type::Void,
            _ => panic!("text中类型错误 找到不支持的类型 {}", text),
        }
    }
    /// 这个函数接受一个元素类型和各个维度的大小来构建一个数组类型
    /// 但是禁止创建数组的数组
    pub fn new_array(ele_ty:Type,dims:Vec<u32>)->Result<Self>{
        match &ele_ty{
            Type::Fn { arg_syms: _, ret_sym: _ } => Err(anyhow!("无法新建函数类型的数组"))?,
            _=>{}
        }
        Ok(Type::Array { dims: dims, ty: Box::new(ele_ty) })
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
            Type::Array { dims: _, ty: _ } => todo!(),
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
            // Type::Unsure {  } => write!(f, "unsure"),
            Type::Array { dims, ty } => write!(f,"{:?}{:?}",ty,dims),
        }
    }
}
impl Type {
    pub fn adapt(ty1:&Type, ty2:&Type) -> Result<Self> {
        match (ty1, ty2) {
            (Type::I32, Type::I32) => Ok(Type::I32),
            (Type::I32, Type::F32) => Ok(Type::F32),
            (Type::F32, Type::I32) => Ok(Type::F32),
            (Type::F32, Type::F32) => Ok(Type::F32),
            (Type::I32, Type::I1) => Ok(Type::I32),
            (Type::F32, Type::I1) => Ok(Type::F32),
            (Type::I1, Type::I32) => Ok(Type::I32),
            (Type::I1, Type::F32) => Ok(Type::F32),
            (Type::I1, Type::I1) => Ok(Type::I1),
            _ => {
                Err(anyhow!("{:?}和{:?}不能进行兼容", ty1, ty2))
            }
        }
    }
}
impl Add for Value{
    type Output=Result<Value>;

    fn add(self, rhs: Self) -> Self::Output {
        let pub_ty=self.adapt(&rhs).with_context(||format!("无法得出{:?} 和 {:?}的兼容类型",self,rhs))?;
        let l_val=self.to_specific_type(&pub_ty)?;
        let r_val=rhs.to_specific_type(&pub_ty)?;
        match (l_val,r_val) {
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Ok(Value::new_i32(v1+v2)),
            (Value::F32(Some(v1)), Value::F32(Some(v2))) => Ok(Value::new_f32(v1+v2)),
            (Value::I1(Some(_v1)), Value::I1(Some(_v2))) => Err(anyhow!("I1 类型进行相加")),
            (Value::Void, Value::Void) => Err(anyhow!("Void 类型进行相加")),
            (_,_) => Err(anyhow!("不同类型相加")),
        }
    }
}
impl Sub for Value{
    type Output=Result<Value>;

    fn sub(self, rhs: Self) -> Self::Output {
        let pub_ty=self.adapt(&rhs).with_context(||format!("无法得出{:?} 和 {:?}的兼容类型",self,rhs))?;
        let l_val=self.to_specific_type(&pub_ty)?;
        let r_val=rhs.to_specific_type(&pub_ty)?;
        match (l_val,r_val) {
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Ok(Value::new_i32(v1 - v2)),
            (Value::F32(Some(v1)), Value::F32(Some(v2))) => Ok(Value::new_f32(v1 - v2)),
            (Value::I1(Some(_v1)), Value::I1(Some(_v2))) => Err(anyhow!("I1 类型进行相减")),
            (Value::Void, Value::Void) => Err(anyhow!("Void 类型进行相减")),
            (_,_) => Err(anyhow!("不同类型相减")),
        }
    }
}
impl Mul for Value{
    type Output = Result<Value>;

    fn mul(self, rhs: Self) -> Self::Output {
        let pub_ty=self.adapt(&rhs).with_context(||format!("无法得出{:?} 和 {:?}的兼容类型",self,rhs))?;
        let l_val=self.to_specific_type(&pub_ty)?;
        let r_val=rhs.to_specific_type(&pub_ty)?;
        match (l_val,r_val) {
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Ok(Value::new_i32(v1 * v2)),
            (Value::F32(Some(v1)), Value::F32(Some(v2))) => Ok(Value::new_f32(v1 * v2)),
            (Value::I1(Some(_v1)), Value::I1(Some(_v2))) => Err(anyhow!("I1 类型进行相乘")),
            (Value::Void, Value::Void) => Err(anyhow!("Void 类型进行相乘")),
            (_,_) => Err(anyhow!("不同类型相乘")),
        }
    }
}
impl Div for Value{
    type Output = Result<Value>;

    fn div(self, rhs: Self) -> Self::Output {
        let pub_ty=self.adapt(&rhs).with_context(||format!("无法得出{:?} 和 {:?}的兼容类型",self,rhs))?;
        let l_val=self.to_specific_type(&pub_ty)?;
        let r_val=rhs.to_specific_type(&pub_ty)?;
        match (l_val,r_val) {
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Ok(Value::new_i32(v1 / v2)),
            (Value::F32(Some(v1)), Value::F32(Some(v2))) => Ok(Value::new_f32(v1 / v2)),
            (Value::I1(Some(_v1)), Value::I1(Some(_v2))) => Err(anyhow!("I1 类型进行相除")),
            (Value::Void, Value::Void) => Err(anyhow!("Void 类型进行相除")),
            (_,_) => Err(anyhow!("不同类型相除")),
        }
    }
}
impl Rem for Value{
    type Output = Result<Value>;

    fn rem(self, rhs: Self) -> Self::Output {
        let pub_ty=self.adapt(&rhs).with_context(||format!("无法得出{:?} 和 {:?}的兼容类型",self,rhs))?;
        let l_val=self.to_specific_type(&pub_ty)?;
        let r_val=rhs.to_specific_type(&pub_ty)?;
        match (l_val,r_val) {
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Ok(Value::new_i32(v1 % v2)),
            (Value::F32(Some(v1)), Value::F32(Some(v2))) => Ok(Value::new_f32(v1 % v2)),
            (Value::I1(Some(_v1)), Value::I1(Some(_v2))) => Err(anyhow!("I1 类型进行取模运算")),
            (Value::Void, Value::Void) => Err(anyhow!("Void 类型进行取模运算")),
            (_,_) => Err(anyhow!("不同类型进行取模运算")),
        }
    }
}
impl BitAnd for Value{
    type Output = Result<Value>;
    fn bitand(self, rhs: Self) -> Self::Output {
        let pub_ty=self.adapt(&rhs).with_context(||format!("无法得出{:?} 和 {:?}的兼容类型",self,rhs))?;
        let l_val=self.to_specific_type(&pub_ty)?;
        let r_val=rhs.to_specific_type(&pub_ty)?;
        match (l_val,r_val) {
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Ok(Value::new_i32(v1 & v2)),
            (Value::F32(Some(_v1)), Value::F32(Some(_v2))) => Err(anyhow!("F32 类型无法进行按位与运算")),
            (Value::I1(Some(v1)), Value::I1(Some(v2))) => Ok(Value::new_i1(v1 & v2)),
            (Value::Void, Value::Void) => Err(anyhow!("Void 类型无法进行按位与运算")),
            (_,_) => Err(anyhow!("不同类型无法进行按位与运算")),
        }
    }
}
impl BitOr for Value{
    type Output = Result<Value>;
    fn bitor(self, rhs: Self) -> Self::Output {
        let pub_ty=self.adapt(&rhs).with_context(||format!("无法得出{:?} 和 {:?}的兼容类型",self,rhs))?;
        let l_val=self.to_specific_type(&pub_ty)?;
        let r_val=rhs.to_specific_type(&pub_ty)?;
        match (l_val,r_val) {
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Ok(Value::new_i32(v1 | v2)),
            (Value::F32(Some(_v1)), Value::F32(Some(_v2))) => Err(anyhow!("F32 类型无法进行按位或运算")),
            (Value::I1(Some(v1)), Value::I1(Some(v2))) => Ok(Value::new_i1(v1 | v2)),
            (Value::Void, Value::Void) => Err(anyhow!("Void 类型无法进行按位或运算")),
            (_,_) => Err(anyhow!("不同类型无法进行按位或运算")),
        }
    }
}
impl Not for Value{
    type Output = Result<Value>;
    fn not(self) -> Self::Output {
        // let pub_ty=self.adapt(&self)?;
        // let l_val=self.to_specific_type(&pub_ty)?;
        match &self {
            Value::I32(Some(v1)) => Ok(Value::new_i32(!v1)),
            Value::F32(Some(_v1)) => Err(anyhow!("F32 类型无法进行按位非运算")),
            Value::I1(Some(v1)) => Ok(Value::new_i1(!v1)),
            Value::Void => Err(anyhow!("Void 类型无法进行按位非运算")),
            _ => Err(anyhow!("其他类型无法进行按位非运算")),
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
