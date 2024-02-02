pub enum Instruction{
    Add{
        a : SymbolIndex ,
        b : SymbolIndex ,
    },
    Mul{
        a : SymbolIndex ,
        b : SymbolIndex ,
    },
    Div{
        a : SymbolIndex ,
        b : SymbolIndex ,
    },
    Sub{
        a : SymbolIndex ,
        b : SymbolIndex ,
    },
    Assign{
        a : SymbolIndex ,
        b : Box<Instruction> ,
    },
    Jump{
        des_label : u32 , // 这是 cfg blcok 的 索引
    },
    Ret{
        ret_sym : SymbolIndex , // 这是返回的类型
    },
    Br{
        t1 : u32 ,
        t2 : u32 ,
    },
    Load{
        des: SymbolIndex, 
        src: SymbolIndex,
    },
    Store{
        des: SymbolIndex, 
        src: SymbolIndex,
    }
}