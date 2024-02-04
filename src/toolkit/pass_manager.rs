
pub trait Pass{
    fn before_pass(&self){}
    fn after_pass(&self){}
    fn visit_function(&self){ }
}
struct PassManager{
    passes : Vec<Box<dyn Pass>>
}