
#[derive(Debug)]
pub enum SymbolField{
    StringField(String),
    U32Field(u32),
    I32Field(i32),
    StringVecField(Vec<String>),
    U32VecField(Vec<u32>),
    I32VecField(Vec<i32>),
}

