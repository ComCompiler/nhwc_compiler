use super::symbol_table:: SymbolIndex;


pub trait Pass{
    fn before_pass(&self){}
    fn after_pass(&self){}
    fn visit_function(&self){ }
}
struct PassManager{
    passes : Vec<Box<dyn Pass>>,
    loop_entries :  Vec<SymbolIndex>,
    function_entries : Vec<SymbolIndex>
}