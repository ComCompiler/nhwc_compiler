use strum_macros::EnumIs;
use derive_new::new;

#[derive(Debug,Clone,EnumIs,new)]
pub enum DjEdge{
    Join{},
    Dom{}
}
