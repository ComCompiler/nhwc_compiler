use anyhow::{Result,Context,anyhow};
use strum_macros::EnumIs;
use std::fmt::Debug;
use std::ops::Index;
use std::slice::Iter;
use std::vec;
use delegate::delegate;

use petgraph::stable_graph::StableDiGraph;

use super::rv64_instr::{RV64Instr};
use super::symtab::{SymIdx, SymTab, SymTabEdge, SymTabGraph};
use crate::toolkit::cfg_edge::CfgEdge;
use crate::toolkit::field::Field;
use crate::{instr, toolkit::ast_node::AstTree};
use crate::{ reg_field_for_struct, node};

use super::field::Fields;
use super::nhwc_instr::{InstrSlab, NhwcInstr, NhwcInstrType};

//use crate::toolkit::ast_node::AstNode;
pub static CFG_ROOT:u32 = 0;

pub type CfgGraph = StableDiGraph<CfgNode, CfgEdge, u32>;
/* 用于指示这个cfg_node 的类型 */
/* jump determinant 例如 branch 类型的cfg_node 会产生一个变量指示 之后究竟是往 IfTrue 边 走 还是往 IfFalse 边走，因此需要加入这个字段
用于存储这个变量的 symidx */
reg_field_for_struct!(
    CfgNode
    { 
        JUMP_DET:SymIdx, 
    }
    with_fields info);

#[derive(Clone, Debug, EnumIs)]
pub enum CfgNodeType {
    Entry {
        ast_node:u32,
        //f 里面调用 函数 c
        //就往 calls in func 里面加入c
        calls_in_func:Vec<u32>,
    },
    Exit {
        ast_node:u32,
    },
    Branch {
        ast_expr_node:u32,
        // op_true_head_tail_nodes: Option<(u32, u32)>,
        // op_false_head_tail_nodes: Option<(u32, u32)>,
    },
    Switch {
        ast_expr_node:u32,
    },
    ForLoop {
        ast_before_node:u32,
        ast_mid_node:u32,
        ast_after_node:u32,
        // exit_node: Option<u32>,
        // op_body_head_tail_nodes: Option<(u32, u32)>,
    },
    WhileLoop {
        ast_expr_node:u32,
        // exit_node: Option<u32>,
        // body_node: Option<(u32, u32)>,
    },
    Gather {},
    BasicBlock {
        ast_nodes:Vec<u32>,
    },
    Root {
        static_ast_nodes:Vec<u32>,
    },
}

#[derive(Clone)]
pub struct CfgNode {
    pub cfg_node_type:CfgNodeType,

    pub op_label_instr:Option<usize>,
    pub phi_instrs:InstrList,
    pub instrs:InstrList,
    pub op_jump_instr:Option<usize>,

    /// currently to be riscv instr 
    pub asms:InstrSlab<RV64Instr>,

    pub text:String,
    pub info:Fields,
    // instructions of this basic block (第二步才生成这个 instrs)
}
#[derive(Clone)]
pub struct InstrList{
    pub instr_vec:Vec<usize>,
    pub outdated:bool
}
impl InstrList{
    delegate!{
        to self.instr_vec {
            pub fn iter(&self)->Iter<usize>;
            pub fn pop(&mut self) -> Option<usize>;
            pub fn len(&self) -> usize;
            pub fn get(&self,idx:usize) -> Option<&usize>;
        }
    }
    pub fn push(&mut self,instr:usize){
        self.instr_vec.push(instr);
        self.outdated = true;
    }
    pub fn insert(&mut self,idx:usize,instr:usize){
        self.instr_vec.insert(idx, instr);
    }
    /// 删除在 vec 中下标为 idx 的 instr 索引
    pub fn remove(&mut self,idx:usize){
        self.instr_vec.remove(idx);
        self.outdated = true;
    }
    pub fn new()->Self{
        Self{
            instr_vec: vec![],
            outdated: false,
        }
    }
}
impl Index<usize> for InstrList{
    type Output=usize;

    fn index(&self, index: usize) -> &Self::Output {
        &self.instr_vec[index]
    }
}
impl CfgNode {
    pub fn push_nhwc_instr(&mut self,instr:NhwcInstr,instr_slab:&mut InstrSlab<NhwcInstr>) -> Result<usize>{
        let instr = instr_slab.insert_instr(instr);
        match &instr!(at instr in instr_slab)?.instr_type{
            NhwcInstrType::Label { label_symidx: _ } => if self.op_label_instr.is_none(){ self.op_label_instr = Some(instr)} else {
                Err(anyhow!("label has been added, can't add {:?}",instr!(at instr in instr_slab)?))?
            },
            NhwcInstrType::Phi { lhs: _, rhs: _ } => self.phi_instrs.push(instr),
            NhwcInstrType::Jump { jump_op: _ } => self.op_jump_instr = Some(instr),
            _ => self.instrs.push(instr),
        }
        // $instrslab.get_mut_instr(instr)?.add_cfg_instr_idx(CfgInstrIdx::new($node,cfg_node_struct.instrs.len()-1, false));
        Ok(instr)
    }
    pub fn insert_nhwc_instr(&mut self,instr:NhwcInstr, pos:usize ,instr_slab:&mut InstrSlab<NhwcInstr>) -> Result<usize>{
        let instr = instr_slab.insert_instr(instr);
        match &instr!(at instr in instr_slab)?.instr_type{
            NhwcInstrType::Label { label_symidx: _ } => self.op_label_instr = Some(instr),
            NhwcInstrType::Phi { lhs: _, rhs: _ } => self.phi_instrs.push(instr),
            NhwcInstrType::Jump { jump_op: _ } => self.op_jump_instr = Some(instr),
            _ => self.instrs.insert(pos,instr),
        }
        Ok(instr)
    }
    pub fn load_ast_node_text(&mut self, ast_tree:&AstTree)  -> Result<()>{
        match self.cfg_node_type.clone() {
            CfgNodeType::Entry { ast_node, calls_in_func: _ } => {
                let node_text = node!(at ast_node in ast_tree).text.as_str();
                self.text += node_text;
                self.text += "\n";
            }
            CfgNodeType::Exit { ast_node: _ } => {
                // self.text += node!(at ast_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::Branch {
                ast_expr_node: ast_node,
                // op_true_head_tail_nodes: _true_head_tail_nodes,
                // op_false_head_tail_nodes: _false_head_tail_nodess,
            } => {
                self.text += node!(at ast_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::Gather {} => {}
            CfgNodeType::BasicBlock { ast_nodes } => {
                for ast_node in ast_nodes {
                    let node_text = node!(at ast_node in ast_tree).text.clone();
                    self.text += node_text.as_str();
                    self.text += "\n";
                }
                self.text += "\n";
            }
            CfgNodeType::Root {static_ast_nodes} => {
                for static_node in static_ast_nodes {
                    let node_text = node!(at static_node in ast_tree).text.clone();
                    self.text += node_text.as_str();
                    self.text += "\n";
                }
            }
            CfgNodeType::ForLoop {
                ast_before_node,
                ast_mid_node,
                ast_after_node,
                // exit_node: _,
                // op_body_head_tail_nodes: _body_node,
            } => {
                self.text += node!(at ast_before_node in ast_tree).text.as_str();
                self.text += node!(at ast_mid_node in ast_tree).text.as_str();
                self.text += node!(at ast_after_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::WhileLoop {
                ast_expr_node,
                // exit_node: _,
                // body_node: _,
            } => {
                self.text += node!(at ast_expr_node in ast_tree).text.as_str();
                self.text += "\n";
            }
            CfgNodeType::Switch { ast_expr_node } => {
                self.text += node!(at ast_expr_node in ast_tree).text.as_str();
                self.text += "\n";
            }
        }
        self.text +="\n";
        Ok(())
    }
    pub fn load_instrs_text(&mut self, instr_slab:&InstrSlab<NhwcInstr>) -> Result<()>{
        if let Some(label_instr) = self.op_label_instr {
            self.text += "LabelInstr: \n";
            self.text += format!("{:?} \n", instr!(at label_instr in instr_slab)?).as_str();
        }
        self.text +="\n";
        if self.phi_instrs.len()>0  {self.text += "PhiInstrs: \n\n";}
        for &phi_instr in self.phi_instrs.iter() {
            self.text += format!("{:?} \n", instr!(at phi_instr in instr_slab)?).as_str();
        }
        self.text +="\n";
        if self.instrs.len()>0  {self.text +="Instrs: \n\n";}
        for &instr in self.instrs.iter() {
            self.text += format!("{:?} \n", instr!(at instr in instr_slab)?).as_str();
        }
        self.text +="\n";
        if let Some(label_instr) = self.op_jump_instr {
            self.text += "JumpInstr: \n";
            self.text += format!("{:?} \n", instr!(at label_instr in instr_slab)?).as_str();
        }
        self.text +="\n";
        Ok(())
    }
    pub fn clear_text(&mut self){
        self.text = String::new();
    }
    pub fn new_bb(ast_nodes:Vec<u32>) -> Self { 
        let mut cfg_node_struct = Self { instrs:InstrList::new(), text:String::new(), info:Fields::new(), phi_instrs: InstrList::new(), cfg_node_type: CfgNodeType::BasicBlock { ast_nodes ,},op_label_instr:None, op_jump_instr: None, asms: InstrSlab::new() } ;
        cfg_node_struct.add_def_symidx_instr_tuple_vec(vec![]);
        cfg_node_struct
    }
    pub fn new_gather() -> Self { Self { instrs:InstrList::new(), text:String::new(), info:Fields::new(),cfg_node_type: CfgNodeType::Gather {},op_label_instr:None, phi_instrs: InstrList::new(),  op_jump_instr: None, asms: InstrSlab::new() } }
    pub fn new_root(ast_nodes:Vec<u32>) -> Self { Self { instrs:InstrList::new(), text:String::new(), info:Fields::new(),cfg_node_type:CfgNodeType::Root {static_ast_nodes:ast_nodes},op_label_instr:None, phi_instrs: InstrList::new(),  op_jump_instr: None, asms: InstrSlab::new() } }
    pub fn new_branch(ast_node:u32) -> Self {
        Self { instrs:InstrList::new(), text:String::new(), info:Fields::new(),cfg_node_type:CfgNodeType::Branch { ast_expr_node:ast_node, },op_label_instr:None, phi_instrs: InstrList::new(),  op_jump_instr: None, asms: InstrSlab::new() }
    }
    pub fn new_for( ast_before_node:u32, ast_mid_node:u32, ast_after_node:u32,) -> Self {
        Self {
            text:String::new(),
            instrs:InstrList::new(),
            info:Fields::new(),cfg_node_type:CfgNodeType::ForLoop { ast_before_node, ast_mid_node, ast_after_node, },
            phi_instrs: InstrList::new(),
            op_label_instr: None,
            op_jump_instr: None,
            asms: InstrSlab::new(),
        }
    }
    pub fn new_while(
        ast_expr_node:u32,
    ) -> Self {
        Self { instrs:InstrList::new(), text:String::new(), info:Fields::new(),cfg_node_type:CfgNodeType::WhileLoop { ast_expr_node, }, phi_instrs: InstrList::new(), op_label_instr:None, op_jump_instr: None, asms: InstrSlab::new() }
    }
    pub fn new_switch(ast_expr_node:u32) -> Self { Self { instrs:InstrList::new(), text:String::new(), info:Fields::new(),cfg_node_type:CfgNodeType::Switch { ast_expr_node ,}, phi_instrs: InstrList::new(), op_label_instr: None, op_jump_instr: None, asms: InstrSlab::new() } }
    pub fn new_entry(ast_node:u32, _instr:usize) -> Self {
        Self { instrs:InstrList::new(), text:String::new(), info:Fields::new(),cfg_node_type:CfgNodeType::Entry { ast_node, calls_in_func:vec![] ,}, phi_instrs: InstrList::new(), op_label_instr: None, op_jump_instr: None, asms: InstrSlab::new() }
    }
    pub fn new_exit(ast_node:u32) -> Self { Self { text:String::new(), instrs:InstrList::new(), info:Fields::new(),cfg_node_type:CfgNodeType::Exit { ast_node }, phi_instrs: InstrList::new(), op_label_instr: None,  op_jump_instr: None, asms: InstrSlab::new() } }
    pub fn iter_all_instrs(&self)->impl Iterator<Item=&usize>+'_{
        self.op_label_instr.iter().chain(self.phi_instrs.iter().chain(self.instrs.iter().chain(self.op_jump_instr.iter())))
    }
}
trait CfgNodeTypeTrait {
    // 3元
    fn debug_for_ternary(&self ,f:&mut std::fmt::Formatter<'_>, node_type:String, field:String, n:CfgNode);
    // 4元
    fn debug_for_quaternary(&self, f:&mut std::fmt::Formatter<'_>, node_type:String, field:String, n:CfgNode);
    // 5元
    fn debug_for_quinary(&self, f:&mut std::fmt::Formatter<'_>, node_type:String, field:String, n:CfgNode, ast_node:u32);
}
impl CfgNodeTypeTrait for CfgNodeType {
    fn debug_for_ternary(&self , f:&mut std::fmt::Formatter<'_>, node_type:String, field:String, n:CfgNode) {
        write!(f, "{{ {} \\| {} \\|{:?} }}", node_type, field, n.info);
    }

    fn debug_for_quaternary(&self, f:&mut std::fmt::Formatter<'_>, node_type:String, field:String, n:CfgNode) {
        write!(f, "{{ {{ {} | {} }} \\| {{ {} \\| {:#?} }} }}", node_type, n.text, field, n.info);
    }

    fn debug_for_quinary(&self, f:&mut std::fmt::Formatter<'_>, node_type:String, field:String, n:CfgNode, ast_node:u32) {
        write!(f, "{{ {{{} {} \\| {} }} \\| {{ {} \\| {:#?} }} }}", node_type, ast_node, n.text, field, n.info);
    }
}
impl Debug for CfgNode {
    fn fmt(&self, f:&mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match &self.cfg_node_type {
            // 5元  输出为4格 {{2 | 1} | { 1 | 1}}
            CfgNodeType::Entry { ast_node, calls_in_func: _ } => {
                write!(f, " #{} {} \n {} $ @ # {} \n {:#?} $  ", "Entry\n", ast_node, self.text, "Fields", self.info)
            }
            // 4元  输出为4格 {{1 @ 1} @ { 1 @ 1}}
            CfgNodeType::Exit { ast_node: _ } => {
                write!(f, " # {} \n {} $ @ # {} \n{:#?} $", "Exit\n", self.text, "Fields", self.info)
            }
            // 5元  输出为4格 {{2 @ 1} @ { 1 @ 1}}
            CfgNodeType::Branch {
                ast_expr_node,
                // op_true_head_tail_nodes: _true_head_tail_nodes, op_false_head_tail_nodes: _false_head_tail_nodes,
            } => {
                write!(f,  " # {} {} \n {} $ @ # {} \n {:#?} $ ", "Branch\n", ast_expr_node, self.text, "Fields", self.info)
            }
            // 3元  输出为3格 {1 | 1 | 1}
            CfgNodeType::Gather {} => write!(f, " # {} {} $ @ # {}\n {:#?} $", "Gather\n", self.text ,"Fields", self.info),
            // 4元  输出为4格 {{1 | 1} | { 1 | 1}}
            CfgNodeType::BasicBlock { ast_nodes: _ast_node_idxes } => {
                write!(f, " # {} \n {} $ @ # {} \n{:#?} $", "BasicBlock\n", self.text, "Fields", self.info)
            }
            // 3元  输出为3格 {1 | 1 | 1}
            CfgNodeType::Root {static_ast_nodes: _} => write!(f, " {} {} @ {}\n {:#?} ", "root\n", self.text,"Fields", self.info),
            // 5元  输出为4格 {{2 | 1} | { 1 | 1}}
            CfgNodeType::ForLoop { ast_before_node, ast_mid_node: _, ast_after_node: _ } => {
                write!(f,  " #{} {} \n {} $ @ # {} \n {:#?} $ ", "For\n", ast_before_node, self.text, "Fields", self.info)
            }
            // 5元  输出为4格 {{2 | 1} | { 1 | 1}}
            CfgNodeType::WhileLoop { ast_expr_node } => {
                write!(f,  " #{} {} \n {} $ @ # {} \n {:#?} $ ", "While\n", ast_expr_node, self.text, "Fields", self.info)
            }
            // 5元  输出为4格 {{2 | 1} | { 1 | 1}}
            CfgNodeType::Switch { ast_expr_node } => {
                write!(f,  " #{} {} \n {} $ @ # {} \n {:#?} $ ", "Switch\n", ast_expr_node, self.text, "Fields", self.info)
            }
        }
    }
}
// pub trait DetailedDebug {
//     fn detailed_fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result;
// }
// impl DetailedDebug for CfgNode {
//     fn detailed_fmt(&self,ast_tree :&mut Formatter<'_>) -> std::fmt::Result {
//         match self{
//             CfgNode::Entry {  ast_node: ast_node_idx, text:_, calls_in_func:_, instr } =>
//                 write!(f,"{} {} \n{:?}","Entry",ast_node_idx,instr),
//             CfgNode::Exit {  ast_node: ast_node_idx, text: _ } =>
//                 write!(f,"{} {} ","Exit",ast_node_idx ),
//             CfgNode::Branch {   ast_expr_node: ast_node_idx, text } =>
//                 write!(f,"{} {} \n{}","Branch",ast_node_idx, text),
//             CfgNode::Gather {  } =>
//                 write!(f,"{} ","Gather"),
//             CfgNode::BasicBlock { ast_nodes: _ast_node_idxes, text:_, instrs } =>
//                 write!(f,"{} {:?}","BasicBlock",instrs),
//             CfgNode::Func {  } => write!(f,"{}","root",),
//             CfgNode::ForLoop {   ast_before_node, ast_mid_node: _, ast_after_node: _ } =>
//                 write!(f,"{} {} \n{}","For",ast_before_node, text),
//             CfgNode::WhileLoop { ast_expr_node, text } => write!(f,"{} {} \n{}","While",ast_expr_node, text),
//             CfgNode::Switch { ast_expr_node, text } => write!(f,"{} {} \n{}","Switch",ast_expr_node, text),
//         }
//     }
// }

// pub fn add_cfg_node_on_edge(cfg_graph:CfgGraph, cfg_edge:u32){
//     let mut cfg_node_struct = node_mut!(at cfg_node in cfg_graph);
//     cfg_node_struct
// }



#[derive(Clone,Debug,PartialEq, PartialOrd,Eq,Ord)]
pub struct CfgInstrIdx{
    pub cfg_node:u32,
    pub in_cfg_instr_pos:InCfgNodeInstrPos,
}
#[derive(Clone,Debug,PartialEq, PartialOrd,Eq,Ord)]
pub enum InCfgNodeInstrPos{
    InPhi{
        phi_instr_pos:usize,
    },
    InInstrs{
        instr_pos:usize
    },
    InLabel{
    },
    InJump{
    }
}

impl CfgInstrIdx{
    pub fn get_instr(&self,cfg_graph:&CfgGraph)-> Result<usize>{
        let cfg_node = self.cfg_node;
        let cfg_node_struct = node!(at cfg_node in cfg_graph);
        match &self.in_cfg_instr_pos{
            &InCfgNodeInstrPos::InPhi { phi_instr_pos } => {
                cfg_node_struct.phi_instrs.get(phi_instr_pos).map(|s|*s).ok_or(anyhow!("在 cfg_node:{} 找不到这个phi_instr_pos:{}对应的instruction",cfg_node,phi_instr_pos))
            },
            &InCfgNodeInstrPos::InInstrs { instr_pos } => {
                cfg_node_struct.instrs.get(instr_pos).map(|s|*s).ok_or(anyhow!("在 cfg_node:{} 找不到这个instrs_instr_pos:{}对应的instruction",cfg_node,instr_pos))
            },
            InCfgNodeInstrPos::InLabel {  } => {
                cfg_node_struct.op_label_instr.ok_or(anyhow!("在 cfg_node:{} 没有对应的label_instr",cfg_node))
            },
            InCfgNodeInstrPos::InJump {  } => {
                cfg_node_struct.op_label_instr.ok_or(anyhow!("在 cfg_node:{} 没有对应的jump_instr",cfg_node))
            },
        }
        // 如果找不到，直接抛出Err
    }
    pub fn new(cfg_node:u32,in_cfg_node_instr_pos:InCfgNodeInstrPos)->Self{
        Self { cfg_node,   in_cfg_instr_pos: in_cfg_node_instr_pos  }
    }
}