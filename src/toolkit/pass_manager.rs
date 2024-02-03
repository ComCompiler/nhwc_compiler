
pub trait Pass{
    fn before_pass(&self);
    fn after_pass(&self);
    fn before_function(&self){ }
}
struct PassManager{
    passes : Vec<Box<dyn Pass>>
}