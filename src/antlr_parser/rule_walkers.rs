
use std::{any::Any, cell::RefCell, mem, rc::Rc};
use crate::{antlr_parser::{self, clexer::ruleNames, cvisitor::CVisitorCompat}, toolkit::ast_node::AstNode};



use antlr_parser::{clistener::CListener, cparser::CParserContextType};
use antlr_rust::{parser::ParserNodeType, parser_rule_context::ParserRuleContext, rule_context::CustomRuleContext, token::Token, tree::{LeafNode, ParseTree, ParseTreeListener, ParseTreeVisitorCompat, TerminalNode}};
use petgraph::Graph;
/*

这个文件的所有代码都用于将 antlr 生成的 AST 转化为 petgraph 的 图
因为我们后期都使用的是 petgraph 的图，一般不需要再次调用这个文件中的代码了。

*/
pub type ParserContext<'input> = <CParserContextType as antlr_rust::parser::ParserNodeType<'input>>::Type;
pub type ASTGraphRcCell= Rc<RefCell<Graph<AstNode,(), petgraph::Directed>>>; 
pub struct TerminalOnlyListener<S>{
    pub st : S,  // status passing through the tree 
    pub visit_term_f: Box<dyn FnMut(& ParserContext,&mut S)->()>,
}

impl<'input,S> ParseTreeListener<'input,CParserContextType> for TerminalOnlyListener<S>{
    fn visit_terminal(&mut self, _node: &antlr_rust::tree::TerminalNode<'input, CParserContextType>) {
        (*self.visit_term_f)(_node,&mut self.st);
    }
    fn visit_error_node(&mut self, _node: &antlr_rust::tree::ErrorNode<'input, CParserContextType>) {
    }
}
impl<'input,S> CListener<'input> for TerminalOnlyListener<S>{ }

pub struct TerminalRuleListener<S>{
    pub st : S,  // status passing through the tree 
    // pub visit_term_f: Box<dyn FnMut(& ParserContext,&mut S)->()>,
    pub enter_rule_f: Box<dyn FnMut(& ParserContext,&mut S,bool,usize)->()>,
    pub exit_rule_f: Box<dyn FnMut(& ParserContext,&mut S,bool,usize)->()>
}
impl<'input,S> ParseTreeListener<'input,CParserContextType> for TerminalRuleListener<S>{
    fn visit_terminal(&mut self, ctx: &antlr_rust::tree::TerminalNode<'input, CParserContextType>) {
        // println!("token type  {}", ctx.symbol.get_token_type(),);
        // 如果 token type = -1 那么，这是个 EOF 标记
        if ctx.symbol.get_token_type() != -1 {
            (*self.enter_rule_f)(ctx,&mut self.st,true,(ctx.symbol.get_token_type()) as usize);
            (*self.exit_rule_f)(ctx,&mut self.st,true,(ctx.symbol.get_token_type()) as usize);
        }
    }
    fn visit_error_node(&mut self, _node: &antlr_rust::tree::ErrorNode<'input, CParserContextType>) {
    }
    fn enter_every_rule(&mut self, ctx: &<CParserContextType as ParserNodeType>::Type) {
        (*self.enter_rule_f)(ctx,&mut self.st,false,ctx.get_rule_index());
    }
    fn exit_every_rule(&mut self, ctx: &<CParserContextType as ParserNodeType>::Type) {
        (*self.exit_rule_f)(ctx,&mut self.st,false,ctx.get_rule_index());
    }
}
impl<'input,S> CListener<'input> for TerminalRuleListener<S>{ }




pub struct RuleOnlyListener<S>{
    pub st : S,  // status passing through the tree 
    pub enter_rule_f: Box<dyn FnMut(& ParserContext,&mut S)->()>,
    pub exit_rule_f: Box<dyn FnMut(& ParserContext,&mut S)->()>
}

impl<'input,S> ParseTreeListener<'input,CParserContextType> for RuleOnlyListener<S>{
    fn visit_terminal(&mut self, node: &TerminalNode<'input, CParserContextType>) {
     }

    fn visit_error_node(&mut self, _node: &antlr_rust::tree::ErrorNode<'input, CParserContextType>) {}

    fn enter_every_rule(&mut self, _ctx: &ParserContext<'input>) {
        (*self.enter_rule_f)(_ctx,&mut self.st);
    }
    fn exit_every_rule(&mut self, _ctx: &ParserContext) {
        (*self.exit_rule_f)(_ctx,&mut self.st);
    }
}
impl<'input,S> CListener<'input> for RuleOnlyListener<S>{ }

pub struct RuleOnlyVisitor<S:Default>{
    pub st : S,  // status passing through the tree 
    pub visit_f: Box<dyn FnMut(& ParserContext,&mut S)->()>
}

impl<'input,S:Default> ParseTreeVisitorCompat<'input> for RuleOnlyVisitor<S>{
    type Node = CParserContextType;
    type Return=S;
    /// 这个专门是为自动生成的CVisitor 准备的，你可以不用动这个 毕竟你不想存储状态
    fn temp_result(&mut self) -> &mut Self::Return {
        &mut self.st
    }
    /// 这里 take 把st的值整个铲出去了
    fn visit(&mut self, node: &<Self::Node as ParserNodeType<'input>>::Type) -> Self::Return {
        (*self.visit_f)(node,&mut self.st);
        mem::take(self.temp_result())
    }
    // 这里aggregate_results 就不用做更改了
}

impl<'input,S:Default> CVisitorCompat<'input> for RuleOnlyVisitor<S>{
    
}



