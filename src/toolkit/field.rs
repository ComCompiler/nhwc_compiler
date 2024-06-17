use std::{any::Any, collections::{hash_map::Iter, HashMap}, fmt::Debug, ops::{Add, BitAnd, BitOr, Div, Mul, Neg, Not, Rem, Sub}, };

use ahash::AHashMap;
use itertools::Itertools;
use strum_macros::EnumIs;
use anyhow::*;
use regex::{self, Regex};


use super::{ast_node::AstTree, scope_node::ST_ROOT};
use super::symtab::SymIdx;
use crate::{debug_info_blue, debug_info_red, node};

pub type Fields = HashMap<&'static str, Box<dyn Field>>;
pub static TARGET_POINTER_MEM_LEN:usize = 8;

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
    Ref{symidx:SymIdx, ty:Type},
    Void,
    Fn { arg_syms:Vec<SymIdx>, ret_sym:SymIdx },
    Ptr64{pointed_ty:Box<Type>,op_pointed_symidx:Option<SymIdx>,offset:Box<Value>},
    Array {
        value_map:ArrayEleMap,
        dims:Vec<SymIdx>,
        ele_ty:Type,
    },
    Unknown,
    // // 这个类型用来表示不确定的值或其代数表达式
    // // 例如 int a = getint() 由于 a取决于用户输入，那么我们不能直接使用 a的值，只能用一个代数符号表示
    // // Unsure {},
}
#[derive(Clone)]
pub struct ArrayEleMap{
    map:AHashMap<usize,Value>
}
impl ArrayEleMap{
    pub fn new()->Self{
        Self { map: AHashMap::new() }
    }
}
impl ArrayEleMap{
    pub fn get_ele_at(&self,offset:usize)->Result<&Value>{
        match self.map.get(&offset){
            Some(ele) => Ok(ele),
            None => {
                Err(anyhow!("在map:{:?}中找不到元素{}",self,offset))
            },
        }
    }
    pub fn get_mut_ele_from_usize(&mut self,offset:usize) -> Result<&mut Value>{
        match self.map.get_mut(&offset){
            Some(ele) => Ok(ele),
            None => {
                Err(anyhow!("在map中找不到元素{}",offset))
            },
        }
    }
    /// insert element by `Value` type offset
    pub fn insert_ele_by_value_type_offset(&mut self,offset:&Value,val:Value) -> Result<()>{
        let &offset = match &offset{
            Value::I32(Some(i)) => i,
            _ => {
                return Err(anyhow!("add_ele 中 offset 类型不应为 {:?}",val))
            }
        };
        self.map.insert(offset as usize, val);
        Ok(())
    }
    /// insert element by `usize` offset
    pub fn insert_ele(&mut self,offset:usize,val:Value) -> Result<()>{
        self.map.insert(offset, val);
        Ok(())
    }
    pub fn iter(&self) -> Iter<usize,Value>{
        self.map.iter()
    }
}
impl Debug for ArrayEleMap{
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let mut text = String::new();
        for (k,v) in self.map.iter().sorted_by_key(|x| x.0){
            // let s:String  = k.iter().map(|&dim_index| format!("[{}]",dim_index)).collect();
            text += format!("offset {} ={:?}\n",k,v).as_str();
        }
        write!(f,"{}",text)
    }
}
impl PartialEq for ArrayEleMap{
    fn eq(&self, other: &Self) -> bool {
        self.map == other.map
    }
} 
impl PartialOrd for ArrayEleMap{
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
    Ref,
    Ptr64{
        ty:Box<Type>,
    },
    Array{
        dims:Vec<Option<SymIdx>>,
        ele_ty:Box<Type>,
    },
    Fn { arg_syms:Vec<SymIdx>, ret_sym:SymIdx },
    Unknown,
}
impl Clone for Box<dyn Field> {
    fn clone(&self) -> Box<dyn Field> { self.clone_box() }
}

impl Value {
    pub fn new_ref(symidx:SymIdx, ty:Type) -> Self{
        Self::Ref { symidx, ty }
    }
    pub fn logical_or(&self,val:&Value) -> Result<Value>{
        Ok(match (self,val){
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Value::new_i1((*v1!=0)||(*v2!=0)),
            (Value::I32(Some(v1)), Value::I1(Some(v2))) => Value::new_i1((*v1!=0)||*v2),
            (Value::I1(Some(v1)), Value::I32(Some(v2))) => Value::new_i1(*v1||(*v2!=0)),
            (Value::I1(Some(v1)), Value::I1(Some(v2))) => Value::new_i1(*v1||*v2),
            _ => {
                return Err(anyhow!("can't logical or {self:?} with {val:?}"))
            }
        })
    }
    pub fn logical_and(&self,val:&Value) -> Result<Value>{
        Ok(match (self,val){
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Value::new_i1((*v1!=0)&&(*v2!=0)),
            (Value::I32(Some(v1)), Value::I1(Some(v2))) => Value::new_i1((*v1!=0)&&*v2),
            (Value::I1(Some(v1)), Value::I32(Some(v2))) => Value::new_i1(*v1&&(*v2!=0)),
            (Value::I1(Some(v1)), Value::I1(Some(v2))) => Value::new_i1(*v1&&*v2),
            _ => {
                return Err(anyhow!("can't logical and {self:?} with {val:?}"))
            }
        })
    }
    pub fn logical_eq(&self, val:&Value) -> Result<Value>{
        Ok(match (self,val){
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Value::new_i1(*v1==*v2),
            (Value::I1(Some(v1)), Value::I1(Some(v2))) => Value::new_i1(*v1==*v2),
            (Value::F32(Some(v1)), Value::F32(Some(v2))) => Value::new_i1(*v1==*v2),
            _ => {
                return Err(anyhow!("can't logical eq {self:?} with {val:?}"))
            }
        })
    }
    pub fn logical_neq(&self, val:&Value) -> Result<Value>{
        Ok(match (self,val){
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Value::new_i1(*v1!=*v2),
            (Value::I1(Some(v1)), Value::I1(Some(v2))) => Value::new_i1(*v1!=*v2),
            (Value::F32(Some(v1)), Value::F32(Some(v2))) => Value::new_i1(*v1!=*v2),
            _ => {
                return Err(anyhow!("can't logical neq {self:?} with {val:?}"))
            }
        })
    }
    pub fn less_than(&self,val:&Value) -> Result<Value>{
        Ok(match (self,val){
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Value::new_i1(*v1<*v2),
            (Value::I32(Some(v1)), Value::F32(Some(v2))) => Value::new_i1((*v1 as f32)<*v2),
            (Value::F32(Some(v1)), Value::I32(Some(v2))) => Value::new_i1(*v1<(*v2 as f32)),
            (Value::F32(Some(v1)), Value::F32(Some(v2))) => Value::new_i1(*v1<*v2),
            _ => {
                return Err(anyhow!("can't lessthan {self:?} with {val:?}"))
            }
        })
    }
    pub fn greater_than(&self,val:&Value) -> Result<Value>{
        Ok(match (self,val){
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Value::new_i1(*v1>*v2),
            (Value::I32(Some(v1)), Value::F32(Some(v2))) => Value::new_i1((*v1 as f32)>*v2),
            (Value::F32(Some(v1)), Value::I32(Some(v2))) => Value::new_i1(*v1>(*v2 as f32)),
            (Value::F32(Some(v1)), Value::F32(Some(v2))) => Value::new_i1(*v1>*v2),
            _ => {
                return Err(anyhow!("can't lessthan {self:?} with {val:?}"))
            }
        })
    }
    pub fn less_than_or_equal(&self,val:&Value) -> Result<Value>{
        Ok(match (self,val){
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Value::new_i1(*v1<=*v2),
            (Value::I32(Some(v1)), Value::F32(Some(v2))) => Value::new_i1((*v1 as f32)<=*v2),
            (Value::F32(Some(v1)), Value::I32(Some(v2))) => Value::new_i1(*v1<=(*v2 as f32)),
            (Value::F32(Some(v1)), Value::F32(Some(v2))) => Value::new_i1(*v1<=*v2),
            _ => {
                return Err(anyhow!("can't lessthan {self:?} with {val:?}"))
            }
        })
    }
    pub fn greater_than_or_equal(&self,val:&Value) -> Result<Value>{
        Ok(match (self,val){
            (Value::I32(Some(v1)), Value::I32(Some(v2))) => Value::new_i1(*v1>=*v2),
            (Value::I32(Some(v1)), Value::F32(Some(v2))) => Value::new_i1((*v1 as f32)>=*v2),
            (Value::F32(Some(v1)), Value::I32(Some(v2))) => Value::new_i1(*v1>=(*v2 as f32)),
            (Value::F32(Some(v1)), Value::F32(Some(v2))) => Value::new_i1(*v1>=*v2),
            _ => {
                return Err(anyhow!("can't lessthan {self:?} with {val:?}"))
            }
        })
    }
    pub fn new_i32(value:i32) -> Self { Value::I32(Some(value)) }
    pub fn new_f32(value:f32) -> Self { Value::F32(Some(value)) }
    pub fn new_unsure_from_specific_type(specified_ty:&Type) -> Self {
        match specified_ty{
            Type::I32 => Value::I32(None),
            Type::F32 => Value::F32(None),
            Type::I1 => Value::I1(None),
            Type::Void => Value::Void,
            Type::Label => todo!(),
            Type::Array { dims, ele_ty } => Value::Array { value_map: ArrayEleMap::new(), dims:unwrap_vec(dims), ele_ty: *ele_ty.clone()},
            Type::Fn { arg_syms, ret_sym } => {
                Value::Fn { arg_syms: arg_syms.clone(), ret_sym: ret_sym.clone() }
            },
            Type::Ptr64 { ty: _ } => {
                 Value::Ptr64 { op_pointed_symidx: None, offset: Box::new(Value::new_unsure_from_specific_type(&Type::I32)), pointed_ty: Box::new(specified_ty.clone()) }
            },
            Type::Unknown => {
                Value::Unknown
            },
            Type::Ref => {
                Value::Unknown
            },
        }
    }
    pub fn new_ptr64_from_array_with_offset(array_symidx:SymIdx,pointed_ty:Type,offset:Value) -> Self{
        Value::Ptr64 { pointed_ty:Box::new(pointed_ty), op_pointed_symidx: Some(array_symidx), offset:Box::new(offset) }
    }
    pub fn new_ptr64_to_variable(pointed_symidx:SymIdx,pointed_ty:Type) -> Self{
        Value::Ptr64 { pointed_ty:Box::new(pointed_ty), op_pointed_symidx: Some(pointed_symidx), offset:Box::new(Value::I32(None)) }
    }
    pub fn is_unsure(&self)->Result<bool>{
        match self{
            Value::I32(op) => Ok(op.is_none()),
            Value::F32(op) => Ok(op.is_none()),
            Value::I1(op) => Ok(op.is_none()),
            _ => Err(anyhow!("无法确认 value:{:?} 是否 unsure ",self)),
        }
    }
    pub fn new_i1(value:bool) -> Self { Value::I1(Some(value)) }
    pub fn new_void() -> Self { Value::Void }
    pub fn new_array(value_map:ArrayEleMap, dims:Vec<SymIdx>, ele_ty: Type) -> Self{
        Value::Array { value_map, dims, ele_ty }
    }
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
            Type::Array { dims, ele_ty} => Value::new_array(ArrayEleMap::new(), unwrap_vec(dims), *ele_ty.clone()),
            Type::Ptr64 { ty: _ } => Err(anyhow!("不能从string 转化为 Ptr64 类型的value"))?,
            Type::Ref => Err(anyhow!("不能从string 转化为 Ref 类型的value"))?,
            Type::Unknown => Err(anyhow!("不能从string 转化为 Unknown 类型的value"))?,
        })
    }
    pub fn to_type(&self)->Type{
        match self{
            Value::I32(_) => Type::I32,
            Value::F32(_) => Type::F32,
            Value::I1(_) => Type::I1,
            Value::Void => Type::Void,
            Value::Fn { arg_syms, ret_sym } => Type::Fn { arg_syms: arg_syms.clone(), ret_sym: ret_sym.clone() },
            Value::Array { value_map: _, dims , ele_ty: ele_type } => Type::Array { dims: dims.clone().into_iter().map(|x| Some(x)).collect_vec(), ele_ty:Box::new(ele_type.clone())  },
            Value::Ptr64 { pointed_ty: ty, op_pointed_symidx: _, offset: _  } => Type::Ptr64 { ty: Box::new(*ty.clone()) },
            Value::Ref{ symidx, ty } => Type::Ref,
            Value::Unknown => Type::Unknown,
            // Value::Unsure {  } => Type::Unsure {  },
        }
    }
    pub fn adapt(&self, value2:&Value) -> Result<Type> {
        Type::arith_adapt(&self.to_type() ,&value2.to_type())
    }

    pub fn from_symidx(symidx:&SymIdx) -> Result<Value>{
        Ok(Self::from_string_with_specific_type(&symidx.symbol_name, &Type::new_from_const_str(&symidx.symbol_name))?)
    }
    pub fn to_symidx(&self)->Result<SymIdx>{
        match self{
            Value::I32(op_i32) => {
                if let Some(i32_value) = op_i32{
                    Ok(SymIdx::new(ST_ROOT,i32_value.to_string()))
                }else{
                    Err(anyhow!("i32 {:?} unsure 无法转化为 symidx",self))
                }
            },
            Value::F32(op_f32) => {
                if let Some(f32_value) = op_f32{
                    let mut f32_str = f32_value.to_string();
                    if !f32_str.contains("."){
                        f32_str.push('.');
                    }
                    Ok(SymIdx::new(ST_ROOT,f32_str))
                }else{
                    Err(anyhow!("f32 {:?} unsure 无法转化为 symidx",self))
                }

            },
            Value::Ref { symidx, ty } => {
                Ok(symidx.clone())
            },
            Value::I1(op_i1) => {
                if let Some(i1_value) = op_i1{
                    match i1_value{
                        true => {
                            Ok(SymIdx::new(ST_ROOT, "true".to_string()))
                        },
                        false => {
                            Ok(SymIdx::new(ST_ROOT,"false".to_string()))
                        },
                    }
                }else{
                    Err(anyhow!("f1 {:?} unsure 无法转化为 symidx",self))
                }
            }
            _ => Err(anyhow!("{:?}无法转化为 symidx",self))
        }
    }
    pub fn index_array(&self,offset:usize) -> Result<Value> {
        match self{
            Value::Array { value_map, dims: _, ele_ty: _ } => {
                value_map.get_ele_at(offset).cloned()
            },
            _ => {
                Err(anyhow!("index_array 无法对 非数组类型 使用 {:?}",&self))
            }
        }
    }
    pub fn get_ele_size(&self) -> Result<usize>{
        self.to_type().get_ele_size()
    }
    pub fn get_mem_len(&self) -> Result<usize>{
        self.to_type().get_mem_len()
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
    pub fn new_array_dims_known(ele_ty:Type,dims:Vec<SymIdx>)->Result<Self>{
        match &ele_ty{
            Type::Fn { arg_syms: _, ret_sym: _ } => Err(anyhow!("无法新建函数类型的数组"))?,
            _=>{}
        }
        Ok(Type::Array { dims:dims.into_iter().map(|x| Some(x)).collect_vec(), ele_ty: Box::new(ele_ty) })
    }
    pub fn new_array_dims_may_unknown(ele_ty:Type,dims:Vec<Option<SymIdx>>)->Result<Self>{
        match &ele_ty{
            Type::Fn { arg_syms: _, ret_sym: _ } => Err(anyhow!("无法新建函数类型的数组"))?,
            _=>{}
        }
        Ok(Type::Array { dims, ele_ty: Box::new(ele_ty) })
    }
    pub fn suits(&self, another_type:&Type) -> bool{
        match (self,another_type){
            (Type::Array { dims, ele_ty },Type::Array { dims:dims2, ele_ty:ele_ty2 }) => {
                dims.len() == dims2.len() && ele_ty == ele_ty2
            },
            (Type::Array { dims, ele_ty },Type::Ptr64 { ty }) if !ty.is_array() => {
                ele_ty == ty && dims.len()==1
            },
            (Type::Array { dims, ele_ty },Type::Ptr64 { ty }) if ty.is_array() => {
                match ty.as_ref(){
                    Type::Array { dims: another_dims, ele_ty } => {
                        ele_ty.as_ref() == &ty.get_ele_ty() && another_dims.len()==  dims.len() -1
                    },
                    _ =>panic!()
                }
            },
            _ => {
                self == another_type
            }
        }
    }
    /// get align of the type, it will return ele align if it is a array
    pub fn get_align(&self)->Result<usize>{
        match &self{
            Type::I32 => Ok(4),
            Type::F32 => Ok(4),
            Type::I1 => Ok(1),
            Type::Void => Err(anyhow!("can't get alignment of void type {:?}",self)),
            Type::Label => Err(anyhow!("can't get alignment of label type {:?}",self)),
            Type::Array { dims: _, ele_ty: ty } => Ok(ty.get_align()?),
            Type::Fn { arg_syms: _, ret_sym: _ } =>Err(anyhow!("can't get alignment of func type {:?}",self)),
            Type::Ptr64 { ty: _ } => Ok(8),
            Type::Ref => Err(anyhow!("can't get align of Ref ty")),
            Type::Unknown => Err(anyhow!("can't get align of unknown")),
        }
    }

    /// return the size of element if it is an array or else its size 
    pub fn get_ele_size(&self) -> Result<usize>{
        match &self{
            Type::Array { dims: _, ele_ty } => {
                ele_ty.get_mem_len()
            },
            _ => {
                self.get_mem_len()
            }
        }
    }
    pub fn get_ele_ty(&self) -> Type{
        match &self{
            Type::Array { dims: _, ele_ty } => {
                *ele_ty.clone()
            },
            _ => {
                self.clone()
            }
        }

    }

    pub fn push_dim(&mut self,dim_symidx:SymIdx)->Result<()>{
        match self{
            Type::Fn { arg_syms: _, ret_sym: _ } => Err(anyhow!("无法新建函数类型的数组"))?,
            Type::Void => Err(anyhow!("无法新建void类型的数组"))?,
            Type::Label => Err(anyhow!("无法新建label类型的数组"))?,
            Type::I32 => *self = Type::new_array_dims_known(self.clone(), vec![dim_symidx])?,
            Type::F32 => *self =Type::new_array_dims_known(self.clone(), vec![dim_symidx])?,
            Type::I1 => *self =Type::new_array_dims_known(self.clone(), vec![dim_symidx])?,
            Type::Array { dims, ele_ty: _ty } => {
                dims.push(Some(dim_symidx));
            },
            Type::Ptr64 { ty } => {
                ty.push_dim(dim_symidx)?;
            }
            Type::Ref => todo!(),
            Type::Unknown => todo!(),
        }
        Ok(())
    }

    pub fn pop_dim(&mut self)->Result<()>{
        if self.is_ptr_64(){
            *self = self.ptr2arr()?
        };
        match self{
            Type::Array { dims, ele_ty: ty } => {
                if dims.len()>1{
                    dims.remove(0);
                }else{
                    *self = *ty.clone();
                    // debug_info_red!("after popped dim : {:?}",self)
                }
            },
            Type::Ptr64 { ty } => {
                ty.pop_dim()?;
            },
            _ => {return Err(anyhow!("{:?} 无法 pop_dim ",self))}
        }
        Ok(())
    }
    pub fn ptr2arr(&self) -> Result<Type>{
        match self{
            Type::Ptr64 { ty } => {
                Ok(Type::Array { dims: 
                    match self{
                        Type::Array { dims, ele_ty } => {
                            let mut dims = dims.clone();
                            dims.insert(0, None);
                            dims
                        },
                        _=>{
                            vec![None]
                        }
                    }
                    , ele_ty: Box::new(ty.get_ele_ty())
                    })
            },
            _ => {
                Err(anyhow!(("you can only transform a ptr 2 arr")))
            }
        }
    }

    /// self could be an array or ptr
    pub fn get_array_dim_weight_vec(&self)->Result<Vec<SymIdx>>{
        let ty = if self.is_ptr_64(){
            self.ptr2arr()?
        }else {
            self.clone()
        };
        match ty{
            Self::Array { dims, ele_ty: _ty }=>{
                let mut v1 = Value::new_i32(1);
                let mut weighted_dims = vec![v1.to_symidx()?];
                for dim_symidx in dims.get(1..dims.len()).unwrap().iter().rev(){
                    let v2 = Value::from_string_with_specific_type(&dim_symidx.as_ref().unwrap().symbol_name, &Type::I32)?;
                    debug_info_blue!(" v2 is  {:?}",v2);
                    v1 = (v1*v2)?;
                    weighted_dims.push(v1.to_symidx()?)
                }
                weighted_dims.reverse();
                debug_info_blue!("weight vec calcuated is {:?}",weighted_dims);
                Ok(weighted_dims)
            },
            _=> {Err(anyhow!("get_array_dim_weight_vec 仅能对 array type 使用，无法根据给定type:{:?}给出",self))}
        }

    }

    pub fn new_from_const_str(const_str:&String) -> Self {
        if const_str.contains("true") || const_str.contains("false"){
            Type::I1
        }else if const_str.contains(".") && (const_str.chars().next().map_or(false, |x|x.is_numeric()|| x=='-')) {
            Type::F32
        } else if const_str.chars().next().map_or(false, |x|x.is_numeric() || x=='-'){
            Type::I32
        }else if const_str.starts_with("{"){
            Type::Array { dims: vec!(), ele_ty: Box::new(Type::Unknown) }
        }else{
            Type::Unknown
        } 
    }

    pub fn new_from_string(ty_str:&str) -> Result<Self>{
        match ty_str{
            "i32" => {
                Ok(Type::I32)
            },
            "f32" => {
                Ok(Type::F32)
            },
            _ => {
                let re = Regex::new(r"^array:(\w+)((?:\[\d+\])+)").unwrap();
                // 匹配输入字符串
                    // 提取维度
                if let Some(captures) = re.captures(ty_str) {
                    let ele_ty = Box::new(Type::new_from_string(&captures[1])?);
                    let dims = captures[2]
                        .split(|c| c == '[' || c == ']')
                        .map(|s| SymIdx::new(ST_ROOT,s.to_string())).into_iter()
                        .collect_vec();
                    Ok(Type::Array { dims:dims.into_iter().map(|x| Some(x)).collect_vec(), ele_ty  })
                } else {
                    Err(anyhow!("无法识别为 type: {:?}",ty_str))
                }
            }
        }
    }
    /// return the length of ty if it's an array or else 1
    pub fn get_ele_len(&self) -> Result<usize>{
        match self{
            Type::Array { dims, ele_ty: _ } => {
                let array_size:usize = dims.iter()
                    .map(|d|{let ans:usize = d.as_ref().unwrap().symbol_name.parse().unwrap();ans}).product() ;
                Ok(array_size)
            },
            _ => {
                Ok(1)
            }
        }
    }

    pub fn get_mem_len(&self)->Result<usize>{
        match &self{
            Type::I32 => Ok(4),
            Type::F32 => Ok(4),
            Type::I1 => Ok(1),
            Type::Void => todo!(),
            Type::Label => todo!(),
            Type::Array { dims: _, ele_ty: ty } => Ok(self.get_ele_len()?*self.get_ele_size()?),
            Type::Fn { arg_syms: _, ret_sym: _ } => todo!(),
            Type::Ptr64 { ty: _ } => Ok(TARGET_POINTER_MEM_LEN),
            Type::Ref => Err(anyhow!("can't get mem_len of Ref")),
            Type::Unknown =>Err(anyhow!("can't get mem_len of Unknown")),
        }
    }
    pub fn arith_adapt(ty1:&Type, ty2:&Type) -> Result<Self> {
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
            (Type::Ptr64 { ty:ty1 }, Type::Ptr64 { ty:ty2 }) => Type::arith_adapt(ty1, ty2),
            (Type::Ptr64 { ty:ty1 },  ty2) => Type::arith_adapt(ty1, ty2),
            (ty1, Type::Ptr64 { ty:ty2 }) => Type::arith_adapt(ty1, ty2),
            _ => {
                Err(anyhow!("{:?}和{:?}不能进行兼容", ty1, ty2))
            }
        }
    }
    pub fn to_ref_ptr_type(&self) -> Result<Self>{
        match self{
            Type::I32 => Ok(Type::Ptr64 { ty: Box::new(Type::I32)}),
            Type::F32 => Ok(Type::Ptr64 { ty: Box::new(Type::F32)}),
            Type::I1 => Ok(Type::Ptr64 { ty: Box::new(Type::I1)}),
            Type::Void => Ok(Type::Ptr64 { ty: Box::new(Type::Void)}),
            Type::Label => todo!(),
            Type::Ptr64 { ty: _ } => Ok(Type::Ptr64 { ty: Box::new(self.clone())}),
            Type::Array { dims: _, ele_ty: _ty } => Ok({let mut poped_array = self.clone();poped_array.pop_dim()?;Type::Ptr64 { ty: Box::new(poped_array)}}),
            Type::Fn { arg_syms: _, ret_sym: _ } => Ok(Type::Ptr64 { ty: Box::new(self.clone())}),
            Type::Ref => Err(anyhow!("ref type can't trans to ptr type")),
            Type::Unknown => todo!(),
        }
    }
    pub fn to_deref_ptr_type(&self) -> Result<Self>{
        match self{
            Type::I32 => return Err(anyhow!("{:?}无法被deref_type",self)),
            Type::F32 => return Err(anyhow!("{:?}无法被deref_type",self)),
            Type::I1 => return Err(anyhow!("{:?}无法被deref_type",self)),
            Type::Label => return Err(anyhow!("{:?}无法被deref_type",self)),
            Type::Void => return Err(anyhow!("{:?}无法被deref_type",self)),
            Type::Ptr64 { ty } => Ok(*ty.clone()),
            Type::Array { dims: _, ele_ty: _ty } => return Err(anyhow!("{:?}无法被deref_type",self)),
            Type::Fn { arg_syms: _, ret_sym: _ } => return Err(anyhow!("{:?}无法被deref_type",self)),
            _ => {
                Err(anyhow!("can't trans to ref"))
            }
        }
    }
    // pub fn type_when_use(&self) -> Self{
    //     match self{
    //         Type::I32 => Type::Ptr64 { ty: Box::new(Type::I32)},
    //         Type::F32 => Type::Ptr64 { ty: Box::new(Type::F32)},
    //         Type::I1 => Type::Ptr64 { ty: Box::new(Type::I1)},
    //         Type::Void => todo!(),
    //         Type::Label => todo!(),
    //         Type::Ptr64 { ty } => Type::Ptr64 { ty: Box::new(self.clone())},
    //         Type::Array { dims, ty } => Type::Ptr64 { ty: Box::new(self.clone())},
    //         Type::Fn { arg_syms, ret_sym } => Type::Ptr64 { ty: Box::new(self.clone())},
    //     }
    // }
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
            Type::Array { dims, ele_ty: ty } => write!(f,"Array:{:?}:{:?}",ty,dims),
            Type::Ptr64 { ty } => write!(f,"ptr->{:?}",ty),
            Type::Ref => write!(f,"ref"),
            Type::Unknown => write!(f,"unknown"),
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
            (Value::F32(Some(v1)), Value::I32(Some(v2))) => Ok(Value::new_f32(v1 + (v2 as f32))),
            (Value::I32(Some(v1)), Value::F32(Some(v2))) => Ok(Value::new_f32((v1 as f32) + v2)),
            (Value::I1(Some(_v1)), Value::I1(Some(_v2))) => Err(anyhow!("I1 can't add")),
            (Value::Void, Value::Void) => Err(anyhow!("Void can't add")),
            (_,_) => Err(anyhow!("can't add")),
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
            (Value::F32(Some(v1)), Value::I32(Some(v2))) => Ok(Value::new_f32(v1 - (v2 as f32))),
            (Value::I32(Some(v1)), Value::F32(Some(v2))) => Ok(Value::new_f32((v1 as f32) - v2)),
            (Value::I1(Some(_v1)), Value::I1(Some(_v2))) => Err(anyhow!("I1 can't sub")),
            (Value::Void, Value::Void) => Err(anyhow!("Void can't sub")),
            (_,_) => Err(anyhow!("can't sub")),
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
            (Value::F32(Some(v1)), Value::I32(Some(v2))) => Ok(Value::new_f32(v1 * (v2 as f32))),
            (Value::I32(Some(v1)), Value::F32(Some(v2))) => Ok(Value::new_f32((v1 as f32) * v2)),
            (Value::I1(Some(_v1)), Value::I1(Some(_v2))) => Err(anyhow!("I1 can't mul")),
            (Value::Void, Value::Void) => Err(anyhow!("Void can't mul")),
            (_,_) => Err(anyhow!("can't mul")),
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
            (Value::F32(Some(v1)), Value::I32(Some(v2))) => Ok(Value::new_f32(v1 / (v2 as f32))),
            (Value::I32(Some(v1)), Value::F32(Some(v2))) => Ok(Value::new_f32((v1 as f32) / v2)),
            (Value::I1(Some(_v1)), Value::I1(Some(_v2))) => Err(anyhow!("I1 can't div")),
            (Value::Void, Value::Void) => Err(anyhow!("Void can't div")),
            (_,_) => Err(anyhow!("can't div")),
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
            (Value::I1(Some(_v1)), Value::I1(Some(_v2))) => Err(anyhow!("I1 can't Rem")),
            (Value::Void, Value::Void) => Err(anyhow!("Void can't Rem")),
            (_,_) => Err(anyhow!("can't rem")),
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
            (Value::F32(Some(_v1)), Value::F32(Some(_v2))) => Err(anyhow!("F32 can't bitand")),
            (Value::I1(Some(v1)), Value::I1(Some(v2))) => Ok(Value::new_i1(v1 & v2)),
            (Value::Void, Value::Void) => Err(anyhow!("Void can't bitand")),
            (_,_) => Err(anyhow!("can't bitand")),
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
            (Value::F32(Some(_v1)), Value::F32(Some(_v2))) => Err(anyhow!("F32 can't bitor")),
            (Value::I1(Some(v1)), Value::I1(Some(v2))) => Ok(Value::new_i1(v1 | v2)),
            (Value::Void, Value::Void) => Err(anyhow!("Void can't bitor")),
            (_,_) => Err(anyhow!("can't bitor ")),
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
            Value::F32(Some(_v1)) => Err(anyhow!("F32 can't logical not")),
            Value::I1(Some(v1)) => Ok(Value::new_i1(!v1)),
            Value::Void => Err(anyhow!("Void can't logical not")),
            _ => Err(anyhow!("can't logical not")),
        }
    }
}
impl Neg for Value{
    type Output = Result<Value>;
    
    fn neg(self) -> Self::Output {
        match &self {
            Value::I32(Some(v1)) => Ok(Value::new_i32(-v1)),
            Value::F32(Some(v1)) => Ok(Value::new_f32(-v1)),
            Value::I1(Some(v1)) => Err(anyhow!("I1 can't neg")),
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

pub fn unwrap_vec<T:Clone>(v:&Vec<Option<T>>)  -> Vec<T>{
    v.clone().into_iter().map(|x| x.unwrap()).collect_vec()
}