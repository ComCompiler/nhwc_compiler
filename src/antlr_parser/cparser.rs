// Generated from ./C.g4 by ANTLR 4.8
#![allow(dead_code)]
#![allow(non_snake_case)]
#![allow(non_upper_case_globals)]
#![allow(nonstandard_style)]
#![allow(unused_imports)]
#![allow(unused_mut)]
#![allow(unused_braces)]
use antlr_rust::PredictionContextCache;
use antlr_rust::parser::{Parser, BaseParser, ParserRecog, ParserNodeType};
use antlr_rust::token_stream::TokenStream;
use antlr_rust::TokenSource;
use antlr_rust::parser_atn_simulator::ParserATNSimulator;
use antlr_rust::errors::*;
use antlr_rust::rule_context::{BaseRuleContext, CustomRuleContext, RuleContext};
use antlr_rust::recognizer::{Recognizer,Actions};
use antlr_rust::atn_deserializer::ATNDeserializer;
use antlr_rust::dfa::DFA;
use antlr_rust::atn::{ATN, INVALID_ALT};
use antlr_rust::error_strategy::{ErrorStrategy, DefaultErrorStrategy};
use antlr_rust::parser_rule_context::{BaseParserRuleContext, ParserRuleContext,cast,cast_mut};
use antlr_rust::tree::*;
use antlr_rust::token::{TOKEN_EOF,OwningToken,Token};
use antlr_rust::int_stream::EOF;
use antlr_rust::vocabulary::{Vocabulary,VocabularyImpl};
use antlr_rust::token_factory::{CommonTokenFactory,TokenFactory, TokenAware};
use super::clistener::*;
use super::cvisitor::*;

use antlr_rust::lazy_static;
use antlr_rust::{TidAble,TidExt};

use std::marker::PhantomData;
use std::sync::Arc;
use std::rc::Rc;
use std::convert::TryFrom;
use std::cell::RefCell;
use std::ops::{DerefMut, Deref};
use std::borrow::{Borrow,BorrowMut};
use std::any::{Any,TypeId};

		pub const T__0:isize=1; 
		pub const T__1:isize=2; 
		pub const T__2:isize=3; 
		pub const T__3:isize=4; 
		pub const T__4:isize=5; 
		pub const T__5:isize=6; 
		pub const T__6:isize=7; 
		pub const T__7:isize=8; 
		pub const T__8:isize=9; 
		pub const T__9:isize=10; 
		pub const T__10:isize=11; 
		pub const T__11:isize=12; 
		pub const T__12:isize=13; 
		pub const T__13:isize=14; 
		pub const T__14:isize=15; 
		pub const T__15:isize=16; 
		pub const Auto:isize=17; 
		pub const Break:isize=18; 
		pub const Case:isize=19; 
		pub const Char:isize=20; 
		pub const Const:isize=21; 
		pub const Continue:isize=22; 
		pub const Default:isize=23; 
		pub const Do:isize=24; 
		pub const Double:isize=25; 
		pub const Else:isize=26; 
		pub const Enum:isize=27; 
		pub const Extern:isize=28; 
		pub const Float:isize=29; 
		pub const For:isize=30; 
		pub const Goto:isize=31; 
		pub const If:isize=32; 
		pub const Breakpoint:isize=33; 
		pub const Inline:isize=34; 
		pub const Int:isize=35; 
		pub const Long:isize=36; 
		pub const Register:isize=37; 
		pub const Restrict:isize=38; 
		pub const Return:isize=39; 
		pub const Short:isize=40; 
		pub const Signed:isize=41; 
		pub const Sizeof:isize=42; 
		pub const Static:isize=43; 
		pub const Struct:isize=44; 
		pub const Switch:isize=45; 
		pub const Typedef:isize=46; 
		pub const Union:isize=47; 
		pub const Unsigned:isize=48; 
		pub const Void:isize=49; 
		pub const Volatile:isize=50; 
		pub const While:isize=51; 
		pub const Alignas:isize=52; 
		pub const Alignof:isize=53; 
		pub const Atomic:isize=54; 
		pub const Bool:isize=55; 
		pub const Complex:isize=56; 
		pub const Generic:isize=57; 
		pub const Imaginary:isize=58; 
		pub const Noreturn:isize=59; 
		pub const StaticAssert:isize=60; 
		pub const ThreadLocal:isize=61; 
		pub const LeftParen:isize=62; 
		pub const RightParen:isize=63; 
		pub const LeftBracket:isize=64; 
		pub const RightBracket:isize=65; 
		pub const LeftBrace:isize=66; 
		pub const RightBrace:isize=67; 
		pub const Less:isize=68; 
		pub const LessEqual:isize=69; 
		pub const Greater:isize=70; 
		pub const GreaterEqual:isize=71; 
		pub const LeftShift:isize=72; 
		pub const RightShift:isize=73; 
		pub const Plus:isize=74; 
		pub const PlusPlus:isize=75; 
		pub const Minus:isize=76; 
		pub const MinusMinus:isize=77; 
		pub const Star:isize=78; 
		pub const Div:isize=79; 
		pub const Mod:isize=80; 
		pub const And:isize=81; 
		pub const Or:isize=82; 
		pub const AndAnd:isize=83; 
		pub const OrOr:isize=84; 
		pub const Caret:isize=85; 
		pub const Not:isize=86; 
		pub const Tilde:isize=87; 
		pub const Question:isize=88; 
		pub const Colon:isize=89; 
		pub const Semi:isize=90; 
		pub const Comma:isize=91; 
		pub const Assign:isize=92; 
		pub const MulAssign:isize=93; 
		pub const DivAssign:isize=94; 
		pub const ModAssign:isize=95; 
		pub const PlusAssign:isize=96; 
		pub const MinusAssign:isize=97; 
		pub const LeftShiftAssign:isize=98; 
		pub const RightShiftAssign:isize=99; 
		pub const AndAssign:isize=100; 
		pub const XorAssign:isize=101; 
		pub const OrAssign:isize=102; 
		pub const Equal:isize=103; 
		pub const NotEqual:isize=104; 
		pub const Arrow:isize=105; 
		pub const Dot:isize=106; 
		pub const Ellipsis:isize=107; 
		pub const Identifier:isize=108; 
		pub const Constant:isize=109; 
		pub const DigitSequence:isize=110; 
		pub const StringLiteral:isize=111; 
		pub const MultiLineMacro:isize=112; 
		pub const Directive:isize=113; 
		pub const AsmBlock:isize=114; 
		pub const Whitespace:isize=115; 
		pub const Newline:isize=116; 
		pub const BlockComment:isize=117; 
		pub const LineComment:isize=118;
	pub const RULE_primaryExpression:usize = 0; 
	pub const RULE_genericSelection:usize = 1; 
	pub const RULE_genericAssocList:usize = 2; 
	pub const RULE_genericAssociation:usize = 3; 
	pub const RULE_postfixExpression:usize = 4; 
	pub const RULE_argumentExpressionList:usize = 5; 
	pub const RULE_unaryExpression:usize = 6; 
	pub const RULE_unaryOperator:usize = 7; 
	pub const RULE_castExpression:usize = 8; 
	pub const RULE_multiplicativeExpression:usize = 9; 
	pub const RULE_additiveExpression:usize = 10; 
	pub const RULE_shiftExpression:usize = 11; 
	pub const RULE_relationalExpression:usize = 12; 
	pub const RULE_equalityExpression:usize = 13; 
	pub const RULE_andExpression:usize = 14; 
	pub const RULE_exclusiveOrExpression:usize = 15; 
	pub const RULE_inclusiveOrExpression:usize = 16; 
	pub const RULE_logicalAndExpression:usize = 17; 
	pub const RULE_logicalOrExpression:usize = 18; 
	pub const RULE_conditionalExpression:usize = 19; 
	pub const RULE_assignmentExpression:usize = 20; 
	pub const RULE_assignmentOperator:usize = 21; 
	pub const RULE_expression:usize = 22; 
	pub const RULE_constantExpression:usize = 23; 
	pub const RULE_declaration:usize = 24; 
	pub const RULE_declarationSpecifiers:usize = 25; 
	pub const RULE_declarationSpecifiers2:usize = 26; 
	pub const RULE_declarationSpecifier:usize = 27; 
	pub const RULE_initDeclaratorList:usize = 28; 
	pub const RULE_initDeclarator:usize = 29; 
	pub const RULE_storageClassSpecifier:usize = 30; 
	pub const RULE_typeSpecifier:usize = 31; 
	pub const RULE_structOrUnionSpecifier:usize = 32; 
	pub const RULE_structOrUnion:usize = 33; 
	pub const RULE_structDeclarationList:usize = 34; 
	pub const RULE_structDeclaration:usize = 35; 
	pub const RULE_specifierQualifierList:usize = 36; 
	pub const RULE_structDeclaratorList:usize = 37; 
	pub const RULE_structDeclarator:usize = 38; 
	pub const RULE_enumSpecifier:usize = 39; 
	pub const RULE_enumeratorList:usize = 40; 
	pub const RULE_enumerator:usize = 41; 
	pub const RULE_enumerationConstant:usize = 42; 
	pub const RULE_atomicTypeSpecifier:usize = 43; 
	pub const RULE_typeQualifier:usize = 44; 
	pub const RULE_functionSpecifier:usize = 45; 
	pub const RULE_alignmentSpecifier:usize = 46; 
	pub const RULE_declarator:usize = 47; 
	pub const RULE_directDeclarator:usize = 48; 
	pub const RULE_vcSpecificModifer:usize = 49; 
	pub const RULE_nestedParenthesesBlock:usize = 50; 
	pub const RULE_pointer:usize = 51; 
	pub const RULE_typeQualifierList:usize = 52; 
	pub const RULE_parameterTypeList:usize = 53; 
	pub const RULE_parameterList:usize = 54; 
	pub const RULE_parameterDeclaration:usize = 55; 
	pub const RULE_identifierList:usize = 56; 
	pub const RULE_typeName:usize = 57; 
	pub const RULE_abstractDeclarator:usize = 58; 
	pub const RULE_directAbstractDeclarator:usize = 59; 
	pub const RULE_typedefName:usize = 60; 
	pub const RULE_initializer:usize = 61; 
	pub const RULE_initializerList:usize = 62; 
	pub const RULE_designation:usize = 63; 
	pub const RULE_designatorList:usize = 64; 
	pub const RULE_designator:usize = 65; 
	pub const RULE_staticAssertDeclaration:usize = 66; 
	pub const RULE_statement:usize = 67; 
	pub const RULE_labeledStatement:usize = 68; 
	pub const RULE_compoundStatement:usize = 69; 
	pub const RULE_blockItemList:usize = 70; 
	pub const RULE_blockItem:usize = 71; 
	pub const RULE_expressionStatement:usize = 72; 
	pub const RULE_selectionStatement:usize = 73; 
	pub const RULE_ifSelection:usize = 74; 
	pub const RULE_switchSelection:usize = 75; 
	pub const RULE_iterationStatement:usize = 76; 
	pub const RULE_forIterationStatement:usize = 77; 
	pub const RULE_whileIterationStatement:usize = 78; 
	pub const RULE_doWhileIterationStatement:usize = 79; 
	pub const RULE_forCondition:usize = 80; 
	pub const RULE_forDeclaration:usize = 81; 
	pub const RULE_forBeforeExpression:usize = 82; 
	pub const RULE_forAfterExpression:usize = 83; 
	pub const RULE_forMidExpression:usize = 84; 
	pub const RULE_jumpStatement:usize = 85; 
	pub const RULE_breakpointStatement:usize = 86; 
	pub const RULE_breakpointArg:usize = 87; 
	pub const RULE_continueStatement:usize = 88; 
	pub const RULE_breakStatement:usize = 89; 
	pub const RULE_returnStatement:usize = 90; 
	pub const RULE_compilationUnit:usize = 91; 
	pub const RULE_translationUnit:usize = 92; 
	pub const RULE_externalDeclaration:usize = 93; 
	pub const RULE_functionDefinition:usize = 94; 
	pub const RULE_declarationList:usize = 95;
	pub const ruleNames: [&'static str; 96] =  [
		"primaryExpression", "genericSelection", "genericAssocList", "genericAssociation", 
		"postfixExpression", "argumentExpressionList", "unaryExpression", "unaryOperator", 
		"castExpression", "multiplicativeExpression", "additiveExpression", "shiftExpression", 
		"relationalExpression", "equalityExpression", "andExpression", "exclusiveOrExpression", 
		"inclusiveOrExpression", "logicalAndExpression", "logicalOrExpression", 
		"conditionalExpression", "assignmentExpression", "assignmentOperator", 
		"expression", "constantExpression", "declaration", "declarationSpecifiers", 
		"declarationSpecifiers2", "declarationSpecifier", "initDeclaratorList", 
		"initDeclarator", "storageClassSpecifier", "typeSpecifier", "structOrUnionSpecifier", 
		"structOrUnion", "structDeclarationList", "structDeclaration", "specifierQualifierList", 
		"structDeclaratorList", "structDeclarator", "enumSpecifier", "enumeratorList", 
		"enumerator", "enumerationConstant", "atomicTypeSpecifier", "typeQualifier", 
		"functionSpecifier", "alignmentSpecifier", "declarator", "directDeclarator", 
		"vcSpecificModifer", "nestedParenthesesBlock", "pointer", "typeQualifierList", 
		"parameterTypeList", "parameterList", "parameterDeclaration", "identifierList", 
		"typeName", "abstractDeclarator", "directAbstractDeclarator", "typedefName", 
		"initializer", "initializerList", "designation", "designatorList", "designator", 
		"staticAssertDeclaration", "statement", "labeledStatement", "compoundStatement", 
		"blockItemList", "blockItem", "expressionStatement", "selectionStatement", 
		"ifSelection", "switchSelection", "iterationStatement", "forIterationStatement", 
		"whileIterationStatement", "doWhileIterationStatement", "forCondition", 
		"forDeclaration", "forBeforeExpression", "forAfterExpression", "forMidExpression", 
		"jumpStatement", "breakpointStatement", "breakpointArg", "continueStatement", 
		"breakStatement", "returnStatement", "compilationUnit", "translationUnit", 
		"externalDeclaration", "functionDefinition", "declarationList"
	];


	pub const _LITERAL_NAMES: [Option<&'static str>;108] = [
		None, Some("'__m128'"), Some("'__m128d'"), Some("'__m128i'"), Some("'__extension__'"), 
		Some("'__typeof__'"), Some("'__inline__'"), Some("'__stdcall'"), Some("'__declspec'"), 
		Some("'__cdecl'"), Some("'__clrcall'"), Some("'__fastcall'"), Some("'__thiscall'"), 
		Some("'__vectorcall'"), Some("'__asm'"), Some("'__asm__'"), Some("'__volatile__'"), 
		Some("'auto'"), Some("'break'"), Some("'case'"), Some("'char'"), Some("'const'"), 
		Some("'continue'"), Some("'default'"), Some("'do'"), Some("'double'"), 
		Some("'else'"), Some("'enum'"), Some("'extern'"), Some("'float'"), Some("'for'"), 
		Some("'goto'"), Some("'if'"), Some("'breakpoint'"), Some("'inline'"), 
		Some("'int'"), Some("'long'"), Some("'register'"), Some("'restrict'"), 
		Some("'return'"), Some("'short'"), Some("'signed'"), Some("'sizeof'"), 
		Some("'static'"), Some("'struct'"), Some("'switch'"), Some("'typedef'"), 
		Some("'union'"), Some("'unsigned'"), Some("'void'"), Some("'volatile'"), 
		Some("'while'"), Some("'_Alignas'"), Some("'_Alignof'"), Some("'_Atomic'"), 
		Some("'_Bool'"), Some("'_Complex'"), Some("'_Generic'"), Some("'_Imaginary'"), 
		Some("'_Noreturn'"), Some("'_Static_assert'"), Some("'_Thread_local'"), 
		Some("'('"), Some("')'"), Some("'['"), Some("']'"), Some("'{'"), Some("'}'"), 
		Some("'<'"), Some("'<='"), Some("'>'"), Some("'>='"), Some("'<<'"), Some("'>>'"), 
		Some("'+'"), Some("'++'"), Some("'-'"), Some("'--'"), Some("'*'"), Some("'/'"), 
		Some("'%'"), Some("'&'"), Some("'|'"), Some("'&&'"), Some("'||'"), Some("'^'"), 
		Some("'!'"), Some("'~'"), Some("'?'"), Some("':'"), Some("';'"), Some("','"), 
		Some("'='"), Some("'*='"), Some("'/='"), Some("'%='"), Some("'+='"), Some("'-='"), 
		Some("'<<='"), Some("'>>='"), Some("'&='"), Some("'^='"), Some("'|='"), 
		Some("'=='"), Some("'!='"), Some("'->'"), Some("'.'"), Some("'...'")
	];
	pub const _SYMBOLIC_NAMES: [Option<&'static str>;119]  = [
		None, None, None, None, None, None, None, None, None, None, None, None, 
		None, None, None, None, None, Some("Auto"), Some("Break"), Some("Case"), 
		Some("Char"), Some("Const"), Some("Continue"), Some("Default"), Some("Do"), 
		Some("Double"), Some("Else"), Some("Enum"), Some("Extern"), Some("Float"), 
		Some("For"), Some("Goto"), Some("If"), Some("Breakpoint"), Some("Inline"), 
		Some("Int"), Some("Long"), Some("Register"), Some("Restrict"), Some("Return"), 
		Some("Short"), Some("Signed"), Some("Sizeof"), Some("Static"), Some("Struct"), 
		Some("Switch"), Some("Typedef"), Some("Union"), Some("Unsigned"), Some("Void"), 
		Some("Volatile"), Some("While"), Some("Alignas"), Some("Alignof"), Some("Atomic"), 
		Some("Bool"), Some("Complex"), Some("Generic"), Some("Imaginary"), Some("Noreturn"), 
		Some("StaticAssert"), Some("ThreadLocal"), Some("LeftParen"), Some("RightParen"), 
		Some("LeftBracket"), Some("RightBracket"), Some("LeftBrace"), Some("RightBrace"), 
		Some("Less"), Some("LessEqual"), Some("Greater"), Some("GreaterEqual"), 
		Some("LeftShift"), Some("RightShift"), Some("Plus"), Some("PlusPlus"), 
		Some("Minus"), Some("MinusMinus"), Some("Star"), Some("Div"), Some("Mod"), 
		Some("And"), Some("Or"), Some("AndAnd"), Some("OrOr"), Some("Caret"), 
		Some("Not"), Some("Tilde"), Some("Question"), Some("Colon"), Some("Semi"), 
		Some("Comma"), Some("Assign"), Some("MulAssign"), Some("DivAssign"), Some("ModAssign"), 
		Some("PlusAssign"), Some("MinusAssign"), Some("LeftShiftAssign"), Some("RightShiftAssign"), 
		Some("AndAssign"), Some("XorAssign"), Some("OrAssign"), Some("Equal"), 
		Some("NotEqual"), Some("Arrow"), Some("Dot"), Some("Ellipsis"), Some("Identifier"), 
		Some("Constant"), Some("DigitSequence"), Some("StringLiteral"), Some("MultiLineMacro"), 
		Some("Directive"), Some("AsmBlock"), Some("Whitespace"), Some("Newline"), 
		Some("BlockComment"), Some("LineComment")
	];
	lazy_static!{
	    static ref _shared_context_cache: Arc<PredictionContextCache> = Arc::new(PredictionContextCache::new());
		static ref VOCABULARY: Box<dyn Vocabulary> = Box::new(VocabularyImpl::new(_LITERAL_NAMES.iter(), _SYMBOLIC_NAMES.iter(), None));
	}


type BaseParserType<'input, I> =
	BaseParser<'input,CParserExt<'input>, I, CParserContextType , dyn CListener<'input> + 'input >;

type TokenType<'input> = <LocalTokenFactory<'input> as TokenFactory<'input>>::Tok;
pub type LocalTokenFactory<'input> = CommonTokenFactory;

pub type CTreeWalker<'input,'a> =
	ParseTreeWalker<'input, 'a, CParserContextType , dyn CListener<'input> + 'a>;

/// Parser for C grammar
pub struct CParser<'input,I,H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	base:BaseParserType<'input,I>,
	interpreter:Arc<ParserATNSimulator>,
	_shared_context_cache: Box<PredictionContextCache>,
    pub err_handler: H,
}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn get_serialized_atn() -> &'static str { _serializedATN }

    pub fn set_error_strategy(&mut self, strategy: H) {
        self.err_handler = strategy
    }

    pub fn with_strategy(input: I, strategy: H) -> Self {
		antlr_rust::recognizer::check_version("0","3");
		let interpreter = Arc::new(ParserATNSimulator::new(
			_ATN.clone(),
			_decision_to_DFA.clone(),
			_shared_context_cache.clone(),
		));
		Self {
			base: BaseParser::new_base_parser(
				input,
				Arc::clone(&interpreter),
				CParserExt{
					_pd: Default::default(),
				}
			),
			interpreter,
            _shared_context_cache: Box::new(PredictionContextCache::new()),
            err_handler: strategy,
        }
    }

}

type DynStrategy<'input,I> = Box<dyn ErrorStrategy<'input,BaseParserType<'input,I>> + 'input>;

impl<'input, I> CParser<'input, I, DynStrategy<'input,I>>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
{
    pub fn with_dyn_strategy(input: I) -> Self{
    	Self::with_strategy(input,Box::new(DefaultErrorStrategy::new()))
    }
}

impl<'input, I> CParser<'input, I, DefaultErrorStrategy<'input,CParserContextType>>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
{
    pub fn new(input: I) -> Self{
    	Self::with_strategy(input,DefaultErrorStrategy::new())
    }
}

/// Trait for monomorphized trait object that corresponds to the nodes of parse tree generated for CParser
pub trait CParserContext<'input>:
	for<'x> Listenable<dyn CListener<'input> + 'x > + 
	for<'x> Visitable<dyn CVisitor<'input> + 'x > + 
	ParserRuleContext<'input, TF=LocalTokenFactory<'input>, Ctx=CParserContextType>
{}

antlr_rust::coerce_from!{ 'input : CParserContext<'input> }

impl<'input, 'x, T> VisitableDyn<T> for dyn CParserContext<'input> + 'input
where
    T: CVisitor<'input> + 'x,
{
    fn accept_dyn(&self, visitor: &mut T) {
        self.accept(visitor as &mut (dyn CVisitor<'input> + 'x))
    }
}

impl<'input> CParserContext<'input> for TerminalNode<'input,CParserContextType> {}
impl<'input> CParserContext<'input> for ErrorNode<'input,CParserContextType> {}

antlr_rust::tid! { impl<'input> TidAble<'input> for dyn CParserContext<'input> + 'input }

antlr_rust::tid! { impl<'input> TidAble<'input> for dyn CListener<'input> + 'input }

pub struct CParserContextType;
antlr_rust::tid!{CParserContextType}

impl<'input> ParserNodeType<'input> for CParserContextType{
	type TF = LocalTokenFactory<'input>;
	type Type = dyn CParserContext<'input> + 'input;
}

impl<'input, I, H> Deref for CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
    type Target = BaseParserType<'input,I>;

    fn deref(&self) -> &Self::Target {
        &self.base
    }
}

impl<'input, I, H> DerefMut for CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.base
    }
}

pub struct CParserExt<'input>{
	_pd: PhantomData<&'input str>,
}

impl<'input> CParserExt<'input>{
}
antlr_rust::tid! { CParserExt<'a> }

impl<'input> TokenAware<'input> for CParserExt<'input>{
	type TF = LocalTokenFactory<'input>;
}

impl<'input,I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>> ParserRecog<'input, BaseParserType<'input,I>> for CParserExt<'input>{}

impl<'input,I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>> Actions<'input, BaseParserType<'input,I>> for CParserExt<'input>{
	fn get_grammar_file_name(&self) -> & str{ "C.g4"}

   	fn get_rule_names(&self) -> &[& str] {&ruleNames}

   	fn get_vocabulary(&self) -> &dyn Vocabulary { &**VOCABULARY }
	fn sempred(_localctx: Option<&(dyn CParserContext<'input> + 'input)>, rule_index: isize, pred_index: isize,
			   recog:&mut BaseParserType<'input,I>
	)->bool{
		match rule_index {
					4 => CParser::<'input,I,_>::postfixExpression_sempred(_localctx.and_then(|x|x.downcast_ref()), pred_index, recog),
					48 => CParser::<'input,I,_>::directDeclarator_sempred(_localctx.and_then(|x|x.downcast_ref()), pred_index, recog),
					59 => CParser::<'input,I,_>::directAbstractDeclarator_sempred(_localctx.and_then(|x|x.downcast_ref()), pred_index, recog),
			_ => true
		}
	}
}

impl<'input, I> CParser<'input, I, DefaultErrorStrategy<'input,CParserContextType>>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
{
	fn postfixExpression_sempred(_localctx: Option<&PostfixExpressionContext<'input>>, pred_index:isize,
						recog:&mut <Self as Deref>::Target
		) -> bool {
		match pred_index {
				0=>{
					recog.precpred(None, 2)
				}
			_ => true
		}
	}
	fn directDeclarator_sempred(_localctx: Option<&DirectDeclaratorContext<'input>>, pred_index:isize,
						recog:&mut <Self as Deref>::Target
		) -> bool {
		match pred_index {
				1=>{
					recog.precpred(None, 7)
				}
				2=>{
					recog.precpred(None, 6)
				}
				3=>{
					recog.precpred(None, 5)
				}
				4=>{
					recog.precpred(None, 4)
				}
			_ => true
		}
	}
	fn directAbstractDeclarator_sempred(_localctx: Option<&DirectAbstractDeclaratorContext<'input>>, pred_index:isize,
						recog:&mut <Self as Deref>::Target
		) -> bool {
		match pred_index {
				5=>{
					recog.precpred(None, 5)
				}
				6=>{
					recog.precpred(None, 4)
				}
				7=>{
					recog.precpred(None, 3)
				}
				8=>{
					recog.precpred(None, 2)
				}
				9=>{
					recog.precpred(None, 1)
				}
			_ => true
		}
	}
}
//------------------- primaryExpression ----------------
pub type PrimaryExpressionContextAll<'input> = PrimaryExpressionContext<'input>;


pub type PrimaryExpressionContext<'input> = BaseParserRuleContext<'input,PrimaryExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct PrimaryExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for PrimaryExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for PrimaryExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_primaryExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_primaryExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for PrimaryExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_primaryExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for PrimaryExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_primaryExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_primaryExpression }
}
antlr_rust::tid!{PrimaryExpressionContextExt<'a>}

impl<'input> PrimaryExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<PrimaryExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,PrimaryExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait PrimaryExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<PrimaryExpressionContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Identifier
/// Returns `None` if there is no child corresponding to token Identifier
fn Identifier(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, 0)
}
/// Retrieves first TerminalNode corresponding to token Constant
/// Returns `None` if there is no child corresponding to token Constant
fn Constant(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Constant, 0)
}
/// Retrieves all `TerminalNode`s corresponding to token StringLiteral in current rule
fn StringLiteral_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token StringLiteral, starting from 0.
/// Returns `None` if number of children corresponding to token StringLiteral is less or equal than `i`.
fn StringLiteral(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(StringLiteral, i)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn expression(&self) -> Option<Rc<ExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}

}

impl<'input> PrimaryExpressionContextAttrs<'input> for PrimaryExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn primaryExpression(&mut self,)
	-> Result<Rc<PrimaryExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = PrimaryExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 0, RULE_primaryExpression);
        let mut _localctx: Rc<PrimaryExpressionContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			let mut _alt: isize;
			recog.base.set_state(203);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 Identifier 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					recog.base.set_state(192);
					recog.base.match_token(Identifier,&mut recog.err_handler)?;

					}
				}

			 Constant 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					recog.base.set_state(193);
					recog.base.match_token(Constant,&mut recog.err_handler)?;

					}
				}

			 StringLiteral 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 3);
					recog.base.enter_outer_alt(None, 3);
					{
					recog.base.set_state(195); 
					recog.err_handler.sync(&mut recog.base)?;
					_alt = 1;
					loop {
						match _alt {
						    x if x == 1=>
							{
							{
							recog.base.set_state(194);
							recog.base.match_token(StringLiteral,&mut recog.err_handler)?;

							}
							}

						_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
						}
						recog.base.set_state(197); 
						recog.err_handler.sync(&mut recog.base)?;
						_alt = recog.interpreter.adaptive_predict(0,&mut recog.base)?;
						if _alt==2 || _alt==INVALID_ALT { break }
					}
					}
				}

			 LeftParen 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 4);
					recog.base.enter_outer_alt(None, 4);
					{
					recog.base.set_state(199);
					recog.base.match_token(LeftParen,&mut recog.err_handler)?;

					/*InvokeRule expression*/
					recog.base.set_state(200);
					recog.expression()?;

					recog.base.set_state(201);
					recog.base.match_token(RightParen,&mut recog.err_handler)?;

					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- genericSelection ----------------
pub type GenericSelectionContextAll<'input> = GenericSelectionContext<'input>;


pub type GenericSelectionContext<'input> = BaseParserRuleContext<'input,GenericSelectionContextExt<'input>>;

#[derive(Clone)]
pub struct GenericSelectionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for GenericSelectionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for GenericSelectionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_genericSelection(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_genericSelection(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for GenericSelectionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_genericSelection(self);
	}
}

impl<'input> CustomRuleContext<'input> for GenericSelectionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_genericSelection }
	//fn type_rule_index() -> usize where Self: Sized { RULE_genericSelection }
}
antlr_rust::tid!{GenericSelectionContextExt<'a>}

impl<'input> GenericSelectionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<GenericSelectionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,GenericSelectionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait GenericSelectionContextAttrs<'input>: CParserContext<'input> + BorrowMut<GenericSelectionContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Generic
/// Returns `None` if there is no child corresponding to token Generic
fn Generic(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Generic, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn assignmentExpression(&self) -> Option<Rc<AssignmentExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Comma
/// Returns `None` if there is no child corresponding to token Comma
fn Comma(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, 0)
}
fn genericAssocList(&self) -> Option<Rc<GenericAssocListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}

}

impl<'input> GenericSelectionContextAttrs<'input> for GenericSelectionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn genericSelection(&mut self,)
	-> Result<Rc<GenericSelectionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = GenericSelectionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 2, RULE_genericSelection);
        let mut _localctx: Rc<GenericSelectionContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(205);
			recog.base.match_token(Generic,&mut recog.err_handler)?;

			recog.base.set_state(206);
			recog.base.match_token(LeftParen,&mut recog.err_handler)?;

			/*InvokeRule assignmentExpression*/
			recog.base.set_state(207);
			recog.assignmentExpression()?;

			recog.base.set_state(208);
			recog.base.match_token(Comma,&mut recog.err_handler)?;

			/*InvokeRule genericAssocList*/
			recog.base.set_state(209);
			recog.genericAssocList()?;

			recog.base.set_state(210);
			recog.base.match_token(RightParen,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- genericAssocList ----------------
pub type GenericAssocListContextAll<'input> = GenericAssocListContext<'input>;


pub type GenericAssocListContext<'input> = BaseParserRuleContext<'input,GenericAssocListContextExt<'input>>;

#[derive(Clone)]
pub struct GenericAssocListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for GenericAssocListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for GenericAssocListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_genericAssocList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_genericAssocList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for GenericAssocListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_genericAssocList(self);
	}
}

impl<'input> CustomRuleContext<'input> for GenericAssocListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_genericAssocList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_genericAssocList }
}
antlr_rust::tid!{GenericAssocListContextExt<'a>}

impl<'input> GenericAssocListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<GenericAssocListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,GenericAssocListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait GenericAssocListContextAttrs<'input>: CParserContext<'input> + BorrowMut<GenericAssocListContextExt<'input>>{

fn genericAssociation_all(&self) ->  Vec<Rc<GenericAssociationContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn genericAssociation(&self, i: usize) -> Option<Rc<GenericAssociationContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Comma in current rule
fn Comma_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Comma, starting from 0.
/// Returns `None` if number of children corresponding to token Comma is less or equal than `i`.
fn Comma(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, i)
}

}

impl<'input> GenericAssocListContextAttrs<'input> for GenericAssocListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn genericAssocList(&mut self,)
	-> Result<Rc<GenericAssocListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = GenericAssocListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 4, RULE_genericAssocList);
        let mut _localctx: Rc<GenericAssocListContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule genericAssociation*/
			recog.base.set_state(212);
			recog.genericAssociation()?;

			recog.base.set_state(217);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==Comma {
				{
				{
				recog.base.set_state(213);
				recog.base.match_token(Comma,&mut recog.err_handler)?;

				/*InvokeRule genericAssociation*/
				recog.base.set_state(214);
				recog.genericAssociation()?;

				}
				}
				recog.base.set_state(219);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- genericAssociation ----------------
pub type GenericAssociationContextAll<'input> = GenericAssociationContext<'input>;


pub type GenericAssociationContext<'input> = BaseParserRuleContext<'input,GenericAssociationContextExt<'input>>;

#[derive(Clone)]
pub struct GenericAssociationContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for GenericAssociationContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for GenericAssociationContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_genericAssociation(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_genericAssociation(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for GenericAssociationContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_genericAssociation(self);
	}
}

impl<'input> CustomRuleContext<'input> for GenericAssociationContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_genericAssociation }
	//fn type_rule_index() -> usize where Self: Sized { RULE_genericAssociation }
}
antlr_rust::tid!{GenericAssociationContextExt<'a>}

impl<'input> GenericAssociationContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<GenericAssociationContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,GenericAssociationContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait GenericAssociationContextAttrs<'input>: CParserContext<'input> + BorrowMut<GenericAssociationContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Colon
/// Returns `None` if there is no child corresponding to token Colon
fn Colon(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Colon, 0)
}
fn assignmentExpression(&self) -> Option<Rc<AssignmentExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn typeName(&self) -> Option<Rc<TypeNameContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Default
/// Returns `None` if there is no child corresponding to token Default
fn Default(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Default, 0)
}

}

impl<'input> GenericAssociationContextAttrs<'input> for GenericAssociationContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn genericAssociation(&mut self,)
	-> Result<Rc<GenericAssociationContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = GenericAssociationContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 6, RULE_genericAssociation);
        let mut _localctx: Rc<GenericAssociationContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(222);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 T__0 | T__1 | T__2 | T__3 | T__4 | Char | Const | Double | Enum | Float |
			 Int | Long | Restrict | Short | Signed | Struct | Union | Unsigned |
			 Void | Volatile | Atomic | Bool | Complex | Identifier 
				=> {
					{
					/*InvokeRule typeName*/
					recog.base.set_state(220);
					recog.typeName()?;

					}
				}

			 Default 
				=> {
					{
					recog.base.set_state(221);
					recog.base.match_token(Default,&mut recog.err_handler)?;

					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			recog.base.set_state(224);
			recog.base.match_token(Colon,&mut recog.err_handler)?;

			/*InvokeRule assignmentExpression*/
			recog.base.set_state(225);
			recog.assignmentExpression()?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- postfixExpression ----------------
pub type PostfixExpressionContextAll<'input> = PostfixExpressionContext<'input>;


pub type PostfixExpressionContext<'input> = BaseParserRuleContext<'input,PostfixExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct PostfixExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for PostfixExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for PostfixExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_postfixExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_postfixExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for PostfixExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_postfixExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for PostfixExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_postfixExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_postfixExpression }
}
antlr_rust::tid!{PostfixExpressionContextExt<'a>}

impl<'input> PostfixExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<PostfixExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,PostfixExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait PostfixExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<PostfixExpressionContextExt<'input>>{

fn primaryExpression(&self) -> Option<Rc<PrimaryExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn postfixExpression(&self) -> Option<Rc<PostfixExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token LeftBracket
/// Returns `None` if there is no child corresponding to token LeftBracket
fn LeftBracket(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftBracket, 0)
}
fn expression(&self) -> Option<Rc<ExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightBracket
/// Returns `None` if there is no child corresponding to token RightBracket
fn RightBracket(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightBracket, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn argumentExpressionList(&self) -> Option<Rc<ArgumentExpressionListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
/// Retrieves first TerminalNode corresponding to token Identifier
/// Returns `None` if there is no child corresponding to token Identifier
fn Identifier(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, 0)
}
/// Retrieves first TerminalNode corresponding to token PlusPlus
/// Returns `None` if there is no child corresponding to token PlusPlus
fn PlusPlus(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(PlusPlus, 0)
}
/// Retrieves first TerminalNode corresponding to token MinusMinus
/// Returns `None` if there is no child corresponding to token MinusMinus
fn MinusMinus(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(MinusMinus, 0)
}
/// Retrieves first TerminalNode corresponding to token Dot
/// Returns `None` if there is no child corresponding to token Dot
fn Dot(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Dot, 0)
}
/// Retrieves first TerminalNode corresponding to token Arrow
/// Returns `None` if there is no child corresponding to token Arrow
fn Arrow(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Arrow, 0)
}

}

impl<'input> PostfixExpressionContextAttrs<'input> for PostfixExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn  postfixExpression(&mut self,)
	-> Result<Rc<PostfixExpressionContextAll<'input>>,ANTLRError> {
		self.postfixExpression_rec(0)
	}

	fn postfixExpression_rec(&mut self, _p: isize)
	-> Result<Rc<PostfixExpressionContextAll<'input>>,ANTLRError> {
		let recog = self;
		let _parentctx = recog.ctx.take();
		let _parentState = recog.base.get_state();
		let mut _localctx = PostfixExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
		recog.base.enter_recursion_rule(_localctx.clone(), 8, RULE_postfixExpression, _p);
	    let mut _localctx: Rc<PostfixExpressionContextAll> = _localctx;
        let mut _prevctx = _localctx.clone();
		let _startState = 8;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {
			let mut _alt: isize;
			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			{
			/*InvokeRule primaryExpression*/
			recog.base.set_state(228);
			recog.primaryExpression()?;

			}

			let tmp = recog.input.lt(-1).cloned();
			recog.ctx.as_ref().unwrap().set_stop(tmp);
			recog.base.set_state(247);
			recog.err_handler.sync(&mut recog.base)?;
			_alt = recog.interpreter.adaptive_predict(5,&mut recog.base)?;
			while { _alt!=2 && _alt!=INVALID_ALT } {
				if _alt==1 {
					recog.trigger_exit_rule_event();
					_prevctx = _localctx.clone();
					{
					{
					/*recRuleAltStartAction*/
					let mut tmp = PostfixExpressionContextExt::new(_parentctx.clone(), _parentState);
					recog.push_new_recursion_context(tmp.clone(), _startState, RULE_postfixExpression);
					_localctx = tmp;
					recog.base.set_state(230);
					if !({recog.precpred(None, 2)}) {
						Err(FailedPredicateError::new(&mut recog.base, Some("recog.precpred(None, 2)".to_owned()), None))?;
					}
					recog.base.set_state(243);
					recog.err_handler.sync(&mut recog.base)?;
					match recog.base.input.la(1) {
					 LeftBracket 
						=> {
							{
							recog.base.set_state(231);
							recog.base.match_token(LeftBracket,&mut recog.err_handler)?;

							/*InvokeRule expression*/
							recog.base.set_state(232);
							recog.expression()?;

							recog.base.set_state(233);
							recog.base.match_token(RightBracket,&mut recog.err_handler)?;

							}
						}

					 LeftParen 
						=> {
							{
							recog.base.set_state(235);
							recog.base.match_token(LeftParen,&mut recog.err_handler)?;

							/*InvokeRule argumentExpressionList*/
							recog.base.set_state(236);
							recog.argumentExpressionList()?;

							recog.base.set_state(237);
							recog.base.match_token(RightParen,&mut recog.err_handler)?;

							}
						}

					 Arrow | Dot 
						=> {
							{
							recog.base.set_state(239);
							_la = recog.base.input.la(1);
							if { !(_la==Arrow || _la==Dot) } {
								recog.err_handler.recover_inline(&mut recog.base)?;

							}
							else {
								if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
								recog.err_handler.report_match(&mut recog.base);
								recog.base.consume(&mut recog.err_handler);
							}
							recog.base.set_state(240);
							recog.base.match_token(Identifier,&mut recog.err_handler)?;

							}
						}

					 PlusPlus 
						=> {
							{
							recog.base.set_state(241);
							recog.base.match_token(PlusPlus,&mut recog.err_handler)?;

							}
						}

					 MinusMinus 
						=> {
							{
							recog.base.set_state(242);
							recog.base.match_token(MinusMinus,&mut recog.err_handler)?;

							}
						}

						_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
					}
					}
					} 
				}
				recog.base.set_state(249);
				recog.err_handler.sync(&mut recog.base)?;
				_alt = recog.interpreter.adaptive_predict(5,&mut recog.base)?;
			}
			}
			Ok(())
		})();
		match result {
		Ok(_) => {},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re)=>{
			//_localctx.exception = re;
			recog.err_handler.report_error(&mut recog.base, re);
	        recog.err_handler.recover(&mut recog.base, re)?;}
		}
		recog.base.unroll_recursion_context(_parentctx);

		Ok(_localctx)
	}
}
//------------------- argumentExpressionList ----------------
pub type ArgumentExpressionListContextAll<'input> = ArgumentExpressionListContext<'input>;


pub type ArgumentExpressionListContext<'input> = BaseParserRuleContext<'input,ArgumentExpressionListContextExt<'input>>;

#[derive(Clone)]
pub struct ArgumentExpressionListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ArgumentExpressionListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ArgumentExpressionListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_argumentExpressionList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_argumentExpressionList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ArgumentExpressionListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_argumentExpressionList(self);
	}
}

impl<'input> CustomRuleContext<'input> for ArgumentExpressionListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_argumentExpressionList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_argumentExpressionList }
}
antlr_rust::tid!{ArgumentExpressionListContextExt<'a>}

impl<'input> ArgumentExpressionListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ArgumentExpressionListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ArgumentExpressionListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ArgumentExpressionListContextAttrs<'input>: CParserContext<'input> + BorrowMut<ArgumentExpressionListContextExt<'input>>{

fn assignmentExpression_all(&self) ->  Vec<Rc<AssignmentExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn assignmentExpression(&self, i: usize) -> Option<Rc<AssignmentExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Comma in current rule
fn Comma_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Comma, starting from 0.
/// Returns `None` if number of children corresponding to token Comma is less or equal than `i`.
fn Comma(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, i)
}

}

impl<'input> ArgumentExpressionListContextAttrs<'input> for ArgumentExpressionListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn argumentExpressionList(&mut self,)
	-> Result<Rc<ArgumentExpressionListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ArgumentExpressionListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 10, RULE_argumentExpressionList);
        let mut _localctx: Rc<ArgumentExpressionListContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(259);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 Sizeof | Alignof | LeftParen | Plus | PlusPlus | Minus | MinusMinus |
			 Star | And | Not | Tilde | Identifier | Constant | DigitSequence | StringLiteral 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule assignmentExpression*/
					recog.base.set_state(250);
					recog.assignmentExpression()?;

					recog.base.set_state(255);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					while _la==Comma {
						{
						{
						recog.base.set_state(251);
						recog.base.match_token(Comma,&mut recog.err_handler)?;

						/*InvokeRule assignmentExpression*/
						recog.base.set_state(252);
						recog.assignmentExpression()?;

						}
						}
						recog.base.set_state(257);
						recog.err_handler.sync(&mut recog.base)?;
						_la = recog.base.input.la(1);
					}
					}
				}

			 RightParen 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- unaryExpression ----------------
pub type UnaryExpressionContextAll<'input> = UnaryExpressionContext<'input>;


pub type UnaryExpressionContext<'input> = BaseParserRuleContext<'input,UnaryExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct UnaryExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for UnaryExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for UnaryExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_unaryExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_unaryExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for UnaryExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_unaryExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for UnaryExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_unaryExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_unaryExpression }
}
antlr_rust::tid!{UnaryExpressionContextExt<'a>}

impl<'input> UnaryExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<UnaryExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,UnaryExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait UnaryExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<UnaryExpressionContextExt<'input>>{

fn postfixExpression(&self) -> Option<Rc<PostfixExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn unaryOperator(&self) -> Option<Rc<UnaryOperatorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn castExpression(&self) -> Option<Rc<CastExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn typeName(&self) -> Option<Rc<TypeNameContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
/// Retrieves first TerminalNode corresponding to token Sizeof
/// Returns `None` if there is no child corresponding to token Sizeof
fn Sizeof(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Sizeof, 0)
}
/// Retrieves first TerminalNode corresponding to token Alignof
/// Returns `None` if there is no child corresponding to token Alignof
fn Alignof(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Alignof, 0)
}

}

impl<'input> UnaryExpressionContextAttrs<'input> for UnaryExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn unaryExpression(&mut self,)
	-> Result<Rc<UnaryExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = UnaryExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 12, RULE_unaryExpression);
        let mut _localctx: Rc<UnaryExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(270);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 LeftParen | Identifier | Constant | StringLiteral 
				=> {
					{
					/*InvokeRule postfixExpression*/
					recog.base.set_state(261);
					recog.postfixExpression_rec(0)?;

					}
				}

			 Plus | PlusPlus | Minus | MinusMinus | Star | And | Not | Tilde 
				=> {
					{
					/*InvokeRule unaryOperator*/
					recog.base.set_state(262);
					recog.unaryOperator()?;

					/*InvokeRule castExpression*/
					recog.base.set_state(263);
					recog.castExpression()?;

					}
				}

			 Sizeof | Alignof 
				=> {
					{
					recog.base.set_state(265);
					_la = recog.base.input.la(1);
					if { !(_la==Sizeof || _la==Alignof) } {
						recog.err_handler.recover_inline(&mut recog.base)?;

					}
					else {
						if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
						recog.err_handler.report_match(&mut recog.base);
						recog.base.consume(&mut recog.err_handler);
					}
					recog.base.set_state(266);
					recog.base.match_token(LeftParen,&mut recog.err_handler)?;

					/*InvokeRule typeName*/
					recog.base.set_state(267);
					recog.typeName()?;

					recog.base.set_state(268);
					recog.base.match_token(RightParen,&mut recog.err_handler)?;

					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- unaryOperator ----------------
pub type UnaryOperatorContextAll<'input> = UnaryOperatorContext<'input>;


pub type UnaryOperatorContext<'input> = BaseParserRuleContext<'input,UnaryOperatorContextExt<'input>>;

#[derive(Clone)]
pub struct UnaryOperatorContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for UnaryOperatorContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for UnaryOperatorContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_unaryOperator(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_unaryOperator(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for UnaryOperatorContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_unaryOperator(self);
	}
}

impl<'input> CustomRuleContext<'input> for UnaryOperatorContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_unaryOperator }
	//fn type_rule_index() -> usize where Self: Sized { RULE_unaryOperator }
}
antlr_rust::tid!{UnaryOperatorContextExt<'a>}

impl<'input> UnaryOperatorContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<UnaryOperatorContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,UnaryOperatorContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait UnaryOperatorContextAttrs<'input>: CParserContext<'input> + BorrowMut<UnaryOperatorContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token And
/// Returns `None` if there is no child corresponding to token And
fn And(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(And, 0)
}
/// Retrieves first TerminalNode corresponding to token Star
/// Returns `None` if there is no child corresponding to token Star
fn Star(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Star, 0)
}
/// Retrieves first TerminalNode corresponding to token Plus
/// Returns `None` if there is no child corresponding to token Plus
fn Plus(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Plus, 0)
}
/// Retrieves first TerminalNode corresponding to token Minus
/// Returns `None` if there is no child corresponding to token Minus
fn Minus(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Minus, 0)
}
/// Retrieves first TerminalNode corresponding to token Tilde
/// Returns `None` if there is no child corresponding to token Tilde
fn Tilde(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Tilde, 0)
}
/// Retrieves first TerminalNode corresponding to token Not
/// Returns `None` if there is no child corresponding to token Not
fn Not(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Not, 0)
}
/// Retrieves first TerminalNode corresponding to token PlusPlus
/// Returns `None` if there is no child corresponding to token PlusPlus
fn PlusPlus(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(PlusPlus, 0)
}
/// Retrieves first TerminalNode corresponding to token MinusMinus
/// Returns `None` if there is no child corresponding to token MinusMinus
fn MinusMinus(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(MinusMinus, 0)
}

}

impl<'input> UnaryOperatorContextAttrs<'input> for UnaryOperatorContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn unaryOperator(&mut self,)
	-> Result<Rc<UnaryOperatorContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = UnaryOperatorContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 14, RULE_unaryOperator);
        let mut _localctx: Rc<UnaryOperatorContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(272);
			_la = recog.base.input.la(1);
			if { !(((((_la - 74)) & !0x3f) == 0 && ((1usize << (_la - 74)) & ((1usize << (Plus - 74)) | (1usize << (PlusPlus - 74)) | (1usize << (Minus - 74)) | (1usize << (MinusMinus - 74)) | (1usize << (Star - 74)) | (1usize << (And - 74)) | (1usize << (Not - 74)) | (1usize << (Tilde - 74)))) != 0)) } {
				recog.err_handler.recover_inline(&mut recog.base)?;

			}
			else {
				if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
				recog.err_handler.report_match(&mut recog.base);
				recog.base.consume(&mut recog.err_handler);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- castExpression ----------------
pub type CastExpressionContextAll<'input> = CastExpressionContext<'input>;


pub type CastExpressionContext<'input> = BaseParserRuleContext<'input,CastExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct CastExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for CastExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for CastExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_castExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_castExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for CastExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_castExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for CastExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_castExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_castExpression }
}
antlr_rust::tid!{CastExpressionContextExt<'a>}

impl<'input> CastExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<CastExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,CastExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait CastExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<CastExpressionContextExt<'input>>{

fn unaryExpression(&self) -> Option<Rc<UnaryExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> CastExpressionContextAttrs<'input> for CastExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn castExpression(&mut self,)
	-> Result<Rc<CastExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = CastExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 16, RULE_castExpression);
        let mut _localctx: Rc<CastExpressionContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule unaryExpression*/
			recog.base.set_state(274);
			recog.unaryExpression()?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- multiplicativeExpression ----------------
pub type MultiplicativeExpressionContextAll<'input> = MultiplicativeExpressionContext<'input>;


pub type MultiplicativeExpressionContext<'input> = BaseParserRuleContext<'input,MultiplicativeExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct MultiplicativeExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for MultiplicativeExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for MultiplicativeExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_multiplicativeExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_multiplicativeExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for MultiplicativeExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_multiplicativeExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for MultiplicativeExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_multiplicativeExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_multiplicativeExpression }
}
antlr_rust::tid!{MultiplicativeExpressionContextExt<'a>}

impl<'input> MultiplicativeExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<MultiplicativeExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,MultiplicativeExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait MultiplicativeExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<MultiplicativeExpressionContextExt<'input>>{

fn castExpression_all(&self) ->  Vec<Rc<CastExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn castExpression(&self, i: usize) -> Option<Rc<CastExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Star in current rule
fn Star_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Star, starting from 0.
/// Returns `None` if number of children corresponding to token Star is less or equal than `i`.
fn Star(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Star, i)
}
/// Retrieves all `TerminalNode`s corresponding to token Div in current rule
fn Div_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Div, starting from 0.
/// Returns `None` if number of children corresponding to token Div is less or equal than `i`.
fn Div(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Div, i)
}
/// Retrieves all `TerminalNode`s corresponding to token Mod in current rule
fn Mod_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Mod, starting from 0.
/// Returns `None` if number of children corresponding to token Mod is less or equal than `i`.
fn Mod(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Mod, i)
}

}

impl<'input> MultiplicativeExpressionContextAttrs<'input> for MultiplicativeExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn multiplicativeExpression(&mut self,)
	-> Result<Rc<MultiplicativeExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = MultiplicativeExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 18, RULE_multiplicativeExpression);
        let mut _localctx: Rc<MultiplicativeExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule castExpression*/
			recog.base.set_state(276);
			recog.castExpression()?;

			recog.base.set_state(281);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while ((((_la - 78)) & !0x3f) == 0 && ((1usize << (_la - 78)) & ((1usize << (Star - 78)) | (1usize << (Div - 78)) | (1usize << (Mod - 78)))) != 0) {
				{
				{
				recog.base.set_state(277);
				_la = recog.base.input.la(1);
				if { !(((((_la - 78)) & !0x3f) == 0 && ((1usize << (_la - 78)) & ((1usize << (Star - 78)) | (1usize << (Div - 78)) | (1usize << (Mod - 78)))) != 0)) } {
					recog.err_handler.recover_inline(&mut recog.base)?;

				}
				else {
					if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
					recog.err_handler.report_match(&mut recog.base);
					recog.base.consume(&mut recog.err_handler);
				}
				/*InvokeRule castExpression*/
				recog.base.set_state(278);
				recog.castExpression()?;

				}
				}
				recog.base.set_state(283);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- additiveExpression ----------------
pub type AdditiveExpressionContextAll<'input> = AdditiveExpressionContext<'input>;


pub type AdditiveExpressionContext<'input> = BaseParserRuleContext<'input,AdditiveExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct AdditiveExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for AdditiveExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for AdditiveExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_additiveExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_additiveExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for AdditiveExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_additiveExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for AdditiveExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_additiveExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_additiveExpression }
}
antlr_rust::tid!{AdditiveExpressionContextExt<'a>}

impl<'input> AdditiveExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<AdditiveExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,AdditiveExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait AdditiveExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<AdditiveExpressionContextExt<'input>>{

fn multiplicativeExpression_all(&self) ->  Vec<Rc<MultiplicativeExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn multiplicativeExpression(&self, i: usize) -> Option<Rc<MultiplicativeExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Plus in current rule
fn Plus_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Plus, starting from 0.
/// Returns `None` if number of children corresponding to token Plus is less or equal than `i`.
fn Plus(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Plus, i)
}
/// Retrieves all `TerminalNode`s corresponding to token Minus in current rule
fn Minus_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Minus, starting from 0.
/// Returns `None` if number of children corresponding to token Minus is less or equal than `i`.
fn Minus(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Minus, i)
}

}

impl<'input> AdditiveExpressionContextAttrs<'input> for AdditiveExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn additiveExpression(&mut self,)
	-> Result<Rc<AdditiveExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = AdditiveExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 20, RULE_additiveExpression);
        let mut _localctx: Rc<AdditiveExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule multiplicativeExpression*/
			recog.base.set_state(284);
			recog.multiplicativeExpression()?;

			recog.base.set_state(289);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==Plus || _la==Minus {
				{
				{
				recog.base.set_state(285);
				_la = recog.base.input.la(1);
				if { !(_la==Plus || _la==Minus) } {
					recog.err_handler.recover_inline(&mut recog.base)?;

				}
				else {
					if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
					recog.err_handler.report_match(&mut recog.base);
					recog.base.consume(&mut recog.err_handler);
				}
				/*InvokeRule multiplicativeExpression*/
				recog.base.set_state(286);
				recog.multiplicativeExpression()?;

				}
				}
				recog.base.set_state(291);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- shiftExpression ----------------
pub type ShiftExpressionContextAll<'input> = ShiftExpressionContext<'input>;


pub type ShiftExpressionContext<'input> = BaseParserRuleContext<'input,ShiftExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct ShiftExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ShiftExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ShiftExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_shiftExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_shiftExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ShiftExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_shiftExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for ShiftExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_shiftExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_shiftExpression }
}
antlr_rust::tid!{ShiftExpressionContextExt<'a>}

impl<'input> ShiftExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ShiftExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ShiftExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ShiftExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<ShiftExpressionContextExt<'input>>{

fn additiveExpression_all(&self) ->  Vec<Rc<AdditiveExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn additiveExpression(&self, i: usize) -> Option<Rc<AdditiveExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token LeftShift in current rule
fn LeftShift_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token LeftShift, starting from 0.
/// Returns `None` if number of children corresponding to token LeftShift is less or equal than `i`.
fn LeftShift(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftShift, i)
}
/// Retrieves all `TerminalNode`s corresponding to token RightShift in current rule
fn RightShift_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token RightShift, starting from 0.
/// Returns `None` if number of children corresponding to token RightShift is less or equal than `i`.
fn RightShift(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightShift, i)
}

}

impl<'input> ShiftExpressionContextAttrs<'input> for ShiftExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn shiftExpression(&mut self,)
	-> Result<Rc<ShiftExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ShiftExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 22, RULE_shiftExpression);
        let mut _localctx: Rc<ShiftExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule additiveExpression*/
			recog.base.set_state(292);
			recog.additiveExpression()?;

			recog.base.set_state(297);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==LeftShift || _la==RightShift {
				{
				{
				recog.base.set_state(293);
				_la = recog.base.input.la(1);
				if { !(_la==LeftShift || _la==RightShift) } {
					recog.err_handler.recover_inline(&mut recog.base)?;

				}
				else {
					if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
					recog.err_handler.report_match(&mut recog.base);
					recog.base.consume(&mut recog.err_handler);
				}
				/*InvokeRule additiveExpression*/
				recog.base.set_state(294);
				recog.additiveExpression()?;

				}
				}
				recog.base.set_state(299);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- relationalExpression ----------------
pub type RelationalExpressionContextAll<'input> = RelationalExpressionContext<'input>;


pub type RelationalExpressionContext<'input> = BaseParserRuleContext<'input,RelationalExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct RelationalExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for RelationalExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for RelationalExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_relationalExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_relationalExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for RelationalExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_relationalExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for RelationalExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_relationalExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_relationalExpression }
}
antlr_rust::tid!{RelationalExpressionContextExt<'a>}

impl<'input> RelationalExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<RelationalExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,RelationalExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait RelationalExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<RelationalExpressionContextExt<'input>>{

fn shiftExpression_all(&self) ->  Vec<Rc<ShiftExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn shiftExpression(&self, i: usize) -> Option<Rc<ShiftExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Less in current rule
fn Less_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Less, starting from 0.
/// Returns `None` if number of children corresponding to token Less is less or equal than `i`.
fn Less(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Less, i)
}
/// Retrieves all `TerminalNode`s corresponding to token Greater in current rule
fn Greater_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Greater, starting from 0.
/// Returns `None` if number of children corresponding to token Greater is less or equal than `i`.
fn Greater(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Greater, i)
}
/// Retrieves all `TerminalNode`s corresponding to token LessEqual in current rule
fn LessEqual_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token LessEqual, starting from 0.
/// Returns `None` if number of children corresponding to token LessEqual is less or equal than `i`.
fn LessEqual(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LessEqual, i)
}
/// Retrieves all `TerminalNode`s corresponding to token GreaterEqual in current rule
fn GreaterEqual_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token GreaterEqual, starting from 0.
/// Returns `None` if number of children corresponding to token GreaterEqual is less or equal than `i`.
fn GreaterEqual(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(GreaterEqual, i)
}

}

impl<'input> RelationalExpressionContextAttrs<'input> for RelationalExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn relationalExpression(&mut self,)
	-> Result<Rc<RelationalExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = RelationalExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 24, RULE_relationalExpression);
        let mut _localctx: Rc<RelationalExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule shiftExpression*/
			recog.base.set_state(300);
			recog.shiftExpression()?;

			recog.base.set_state(305);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while ((((_la - 68)) & !0x3f) == 0 && ((1usize << (_la - 68)) & ((1usize << (Less - 68)) | (1usize << (LessEqual - 68)) | (1usize << (Greater - 68)) | (1usize << (GreaterEqual - 68)))) != 0) {
				{
				{
				recog.base.set_state(301);
				_la = recog.base.input.la(1);
				if { !(((((_la - 68)) & !0x3f) == 0 && ((1usize << (_la - 68)) & ((1usize << (Less - 68)) | (1usize << (LessEqual - 68)) | (1usize << (Greater - 68)) | (1usize << (GreaterEqual - 68)))) != 0)) } {
					recog.err_handler.recover_inline(&mut recog.base)?;

				}
				else {
					if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
					recog.err_handler.report_match(&mut recog.base);
					recog.base.consume(&mut recog.err_handler);
				}
				/*InvokeRule shiftExpression*/
				recog.base.set_state(302);
				recog.shiftExpression()?;

				}
				}
				recog.base.set_state(307);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- equalityExpression ----------------
pub type EqualityExpressionContextAll<'input> = EqualityExpressionContext<'input>;


pub type EqualityExpressionContext<'input> = BaseParserRuleContext<'input,EqualityExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct EqualityExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for EqualityExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for EqualityExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_equalityExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_equalityExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for EqualityExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_equalityExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for EqualityExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_equalityExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_equalityExpression }
}
antlr_rust::tid!{EqualityExpressionContextExt<'a>}

impl<'input> EqualityExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<EqualityExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,EqualityExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait EqualityExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<EqualityExpressionContextExt<'input>>{

fn relationalExpression_all(&self) ->  Vec<Rc<RelationalExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn relationalExpression(&self, i: usize) -> Option<Rc<RelationalExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Equal in current rule
fn Equal_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Equal, starting from 0.
/// Returns `None` if number of children corresponding to token Equal is less or equal than `i`.
fn Equal(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Equal, i)
}
/// Retrieves all `TerminalNode`s corresponding to token NotEqual in current rule
fn NotEqual_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token NotEqual, starting from 0.
/// Returns `None` if number of children corresponding to token NotEqual is less or equal than `i`.
fn NotEqual(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(NotEqual, i)
}

}

impl<'input> EqualityExpressionContextAttrs<'input> for EqualityExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn equalityExpression(&mut self,)
	-> Result<Rc<EqualityExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = EqualityExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 26, RULE_equalityExpression);
        let mut _localctx: Rc<EqualityExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule relationalExpression*/
			recog.base.set_state(308);
			recog.relationalExpression()?;

			recog.base.set_state(313);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==Equal || _la==NotEqual {
				{
				{
				recog.base.set_state(309);
				_la = recog.base.input.la(1);
				if { !(_la==Equal || _la==NotEqual) } {
					recog.err_handler.recover_inline(&mut recog.base)?;

				}
				else {
					if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
					recog.err_handler.report_match(&mut recog.base);
					recog.base.consume(&mut recog.err_handler);
				}
				/*InvokeRule relationalExpression*/
				recog.base.set_state(310);
				recog.relationalExpression()?;

				}
				}
				recog.base.set_state(315);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- andExpression ----------------
pub type AndExpressionContextAll<'input> = AndExpressionContext<'input>;


pub type AndExpressionContext<'input> = BaseParserRuleContext<'input,AndExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct AndExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for AndExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for AndExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_andExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_andExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for AndExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_andExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for AndExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_andExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_andExpression }
}
antlr_rust::tid!{AndExpressionContextExt<'a>}

impl<'input> AndExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<AndExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,AndExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait AndExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<AndExpressionContextExt<'input>>{

fn equalityExpression_all(&self) ->  Vec<Rc<EqualityExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn equalityExpression(&self, i: usize) -> Option<Rc<EqualityExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token And in current rule
fn And_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token And, starting from 0.
/// Returns `None` if number of children corresponding to token And is less or equal than `i`.
fn And(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(And, i)
}

}

impl<'input> AndExpressionContextAttrs<'input> for AndExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn andExpression(&mut self,)
	-> Result<Rc<AndExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = AndExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 28, RULE_andExpression);
        let mut _localctx: Rc<AndExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule equalityExpression*/
			recog.base.set_state(316);
			recog.equalityExpression()?;

			recog.base.set_state(321);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==And {
				{
				{
				recog.base.set_state(317);
				recog.base.match_token(And,&mut recog.err_handler)?;

				/*InvokeRule equalityExpression*/
				recog.base.set_state(318);
				recog.equalityExpression()?;

				}
				}
				recog.base.set_state(323);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- exclusiveOrExpression ----------------
pub type ExclusiveOrExpressionContextAll<'input> = ExclusiveOrExpressionContext<'input>;


pub type ExclusiveOrExpressionContext<'input> = BaseParserRuleContext<'input,ExclusiveOrExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct ExclusiveOrExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ExclusiveOrExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ExclusiveOrExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_exclusiveOrExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_exclusiveOrExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ExclusiveOrExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_exclusiveOrExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for ExclusiveOrExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_exclusiveOrExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_exclusiveOrExpression }
}
antlr_rust::tid!{ExclusiveOrExpressionContextExt<'a>}

impl<'input> ExclusiveOrExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ExclusiveOrExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ExclusiveOrExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ExclusiveOrExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<ExclusiveOrExpressionContextExt<'input>>{

fn andExpression_all(&self) ->  Vec<Rc<AndExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn andExpression(&self, i: usize) -> Option<Rc<AndExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Caret in current rule
fn Caret_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Caret, starting from 0.
/// Returns `None` if number of children corresponding to token Caret is less or equal than `i`.
fn Caret(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Caret, i)
}

}

impl<'input> ExclusiveOrExpressionContextAttrs<'input> for ExclusiveOrExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn exclusiveOrExpression(&mut self,)
	-> Result<Rc<ExclusiveOrExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ExclusiveOrExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 30, RULE_exclusiveOrExpression);
        let mut _localctx: Rc<ExclusiveOrExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule andExpression*/
			recog.base.set_state(324);
			recog.andExpression()?;

			recog.base.set_state(329);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==Caret {
				{
				{
				recog.base.set_state(325);
				recog.base.match_token(Caret,&mut recog.err_handler)?;

				/*InvokeRule andExpression*/
				recog.base.set_state(326);
				recog.andExpression()?;

				}
				}
				recog.base.set_state(331);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- inclusiveOrExpression ----------------
pub type InclusiveOrExpressionContextAll<'input> = InclusiveOrExpressionContext<'input>;


pub type InclusiveOrExpressionContext<'input> = BaseParserRuleContext<'input,InclusiveOrExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct InclusiveOrExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for InclusiveOrExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for InclusiveOrExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_inclusiveOrExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_inclusiveOrExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for InclusiveOrExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_inclusiveOrExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for InclusiveOrExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_inclusiveOrExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_inclusiveOrExpression }
}
antlr_rust::tid!{InclusiveOrExpressionContextExt<'a>}

impl<'input> InclusiveOrExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<InclusiveOrExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,InclusiveOrExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait InclusiveOrExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<InclusiveOrExpressionContextExt<'input>>{

fn exclusiveOrExpression_all(&self) ->  Vec<Rc<ExclusiveOrExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn exclusiveOrExpression(&self, i: usize) -> Option<Rc<ExclusiveOrExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Or in current rule
fn Or_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Or, starting from 0.
/// Returns `None` if number of children corresponding to token Or is less or equal than `i`.
fn Or(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Or, i)
}

}

impl<'input> InclusiveOrExpressionContextAttrs<'input> for InclusiveOrExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn inclusiveOrExpression(&mut self,)
	-> Result<Rc<InclusiveOrExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = InclusiveOrExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 32, RULE_inclusiveOrExpression);
        let mut _localctx: Rc<InclusiveOrExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule exclusiveOrExpression*/
			recog.base.set_state(332);
			recog.exclusiveOrExpression()?;

			recog.base.set_state(337);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==Or {
				{
				{
				recog.base.set_state(333);
				recog.base.match_token(Or,&mut recog.err_handler)?;

				/*InvokeRule exclusiveOrExpression*/
				recog.base.set_state(334);
				recog.exclusiveOrExpression()?;

				}
				}
				recog.base.set_state(339);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- logicalAndExpression ----------------
pub type LogicalAndExpressionContextAll<'input> = LogicalAndExpressionContext<'input>;


pub type LogicalAndExpressionContext<'input> = BaseParserRuleContext<'input,LogicalAndExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct LogicalAndExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for LogicalAndExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for LogicalAndExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_logicalAndExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_logicalAndExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for LogicalAndExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_logicalAndExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for LogicalAndExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_logicalAndExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_logicalAndExpression }
}
antlr_rust::tid!{LogicalAndExpressionContextExt<'a>}

impl<'input> LogicalAndExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<LogicalAndExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,LogicalAndExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait LogicalAndExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<LogicalAndExpressionContextExt<'input>>{

fn inclusiveOrExpression_all(&self) ->  Vec<Rc<InclusiveOrExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn inclusiveOrExpression(&self, i: usize) -> Option<Rc<InclusiveOrExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token AndAnd in current rule
fn AndAnd_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token AndAnd, starting from 0.
/// Returns `None` if number of children corresponding to token AndAnd is less or equal than `i`.
fn AndAnd(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(AndAnd, i)
}

}

impl<'input> LogicalAndExpressionContextAttrs<'input> for LogicalAndExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn logicalAndExpression(&mut self,)
	-> Result<Rc<LogicalAndExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = LogicalAndExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 34, RULE_logicalAndExpression);
        let mut _localctx: Rc<LogicalAndExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule inclusiveOrExpression*/
			recog.base.set_state(340);
			recog.inclusiveOrExpression()?;

			recog.base.set_state(345);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==AndAnd {
				{
				{
				recog.base.set_state(341);
				recog.base.match_token(AndAnd,&mut recog.err_handler)?;

				/*InvokeRule inclusiveOrExpression*/
				recog.base.set_state(342);
				recog.inclusiveOrExpression()?;

				}
				}
				recog.base.set_state(347);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- logicalOrExpression ----------------
pub type LogicalOrExpressionContextAll<'input> = LogicalOrExpressionContext<'input>;


pub type LogicalOrExpressionContext<'input> = BaseParserRuleContext<'input,LogicalOrExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct LogicalOrExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for LogicalOrExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for LogicalOrExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_logicalOrExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_logicalOrExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for LogicalOrExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_logicalOrExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for LogicalOrExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_logicalOrExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_logicalOrExpression }
}
antlr_rust::tid!{LogicalOrExpressionContextExt<'a>}

impl<'input> LogicalOrExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<LogicalOrExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,LogicalOrExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait LogicalOrExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<LogicalOrExpressionContextExt<'input>>{

fn logicalAndExpression_all(&self) ->  Vec<Rc<LogicalAndExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn logicalAndExpression(&self, i: usize) -> Option<Rc<LogicalAndExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token OrOr in current rule
fn OrOr_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token OrOr, starting from 0.
/// Returns `None` if number of children corresponding to token OrOr is less or equal than `i`.
fn OrOr(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(OrOr, i)
}

}

impl<'input> LogicalOrExpressionContextAttrs<'input> for LogicalOrExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn logicalOrExpression(&mut self,)
	-> Result<Rc<LogicalOrExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = LogicalOrExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 36, RULE_logicalOrExpression);
        let mut _localctx: Rc<LogicalOrExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule logicalAndExpression*/
			recog.base.set_state(348);
			recog.logicalAndExpression()?;

			recog.base.set_state(353);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==OrOr {
				{
				{
				recog.base.set_state(349);
				recog.base.match_token(OrOr,&mut recog.err_handler)?;

				/*InvokeRule logicalAndExpression*/
				recog.base.set_state(350);
				recog.logicalAndExpression()?;

				}
				}
				recog.base.set_state(355);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- conditionalExpression ----------------
pub type ConditionalExpressionContextAll<'input> = ConditionalExpressionContext<'input>;


pub type ConditionalExpressionContext<'input> = BaseParserRuleContext<'input,ConditionalExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct ConditionalExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ConditionalExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ConditionalExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_conditionalExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_conditionalExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ConditionalExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_conditionalExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for ConditionalExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_conditionalExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_conditionalExpression }
}
antlr_rust::tid!{ConditionalExpressionContextExt<'a>}

impl<'input> ConditionalExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ConditionalExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ConditionalExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ConditionalExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<ConditionalExpressionContextExt<'input>>{

fn logicalOrExpression(&self) -> Option<Rc<LogicalOrExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Question
/// Returns `None` if there is no child corresponding to token Question
fn Question(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Question, 0)
}
fn expression(&self) -> Option<Rc<ExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Colon
/// Returns `None` if there is no child corresponding to token Colon
fn Colon(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Colon, 0)
}
fn conditionalExpression(&self) -> Option<Rc<ConditionalExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> ConditionalExpressionContextAttrs<'input> for ConditionalExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn conditionalExpression(&mut self,)
	-> Result<Rc<ConditionalExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ConditionalExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 38, RULE_conditionalExpression);
        let mut _localctx: Rc<ConditionalExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule logicalOrExpression*/
			recog.base.set_state(356);
			recog.logicalOrExpression()?;

			recog.base.set_state(362);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if _la==Question {
				{
				recog.base.set_state(357);
				recog.base.match_token(Question,&mut recog.err_handler)?;

				/*InvokeRule expression*/
				recog.base.set_state(358);
				recog.expression()?;

				recog.base.set_state(359);
				recog.base.match_token(Colon,&mut recog.err_handler)?;

				/*InvokeRule conditionalExpression*/
				recog.base.set_state(360);
				recog.conditionalExpression()?;

				}
			}

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- assignmentExpression ----------------
pub type AssignmentExpressionContextAll<'input> = AssignmentExpressionContext<'input>;


pub type AssignmentExpressionContext<'input> = BaseParserRuleContext<'input,AssignmentExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct AssignmentExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for AssignmentExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for AssignmentExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_assignmentExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_assignmentExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for AssignmentExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_assignmentExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for AssignmentExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_assignmentExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_assignmentExpression }
}
antlr_rust::tid!{AssignmentExpressionContextExt<'a>}

impl<'input> AssignmentExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<AssignmentExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,AssignmentExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait AssignmentExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<AssignmentExpressionContextExt<'input>>{

fn conditionalExpression(&self) -> Option<Rc<ConditionalExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn unaryExpression(&self) -> Option<Rc<UnaryExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn assignmentOperator(&self) -> Option<Rc<AssignmentOperatorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn assignmentExpression(&self) -> Option<Rc<AssignmentExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token DigitSequence
/// Returns `None` if there is no child corresponding to token DigitSequence
fn DigitSequence(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(DigitSequence, 0)
}

}

impl<'input> AssignmentExpressionContextAttrs<'input> for AssignmentExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn assignmentExpression(&mut self,)
	-> Result<Rc<AssignmentExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = AssignmentExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 40, RULE_assignmentExpression);
        let mut _localctx: Rc<AssignmentExpressionContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(370);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(20,&mut recog.base)? {
				1 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule conditionalExpression*/
					recog.base.set_state(364);
					recog.conditionalExpression()?;

					}
				}
			,
				2 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					/*InvokeRule unaryExpression*/
					recog.base.set_state(365);
					recog.unaryExpression()?;

					/*InvokeRule assignmentOperator*/
					recog.base.set_state(366);
					recog.assignmentOperator()?;

					/*InvokeRule assignmentExpression*/
					recog.base.set_state(367);
					recog.assignmentExpression()?;

					}
				}
			,
				3 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 3);
					recog.base.enter_outer_alt(None, 3);
					{
					recog.base.set_state(369);
					recog.base.match_token(DigitSequence,&mut recog.err_handler)?;

					}
				}

				_ => {}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- assignmentOperator ----------------
pub type AssignmentOperatorContextAll<'input> = AssignmentOperatorContext<'input>;


pub type AssignmentOperatorContext<'input> = BaseParserRuleContext<'input,AssignmentOperatorContextExt<'input>>;

#[derive(Clone)]
pub struct AssignmentOperatorContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for AssignmentOperatorContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for AssignmentOperatorContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_assignmentOperator(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_assignmentOperator(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for AssignmentOperatorContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_assignmentOperator(self);
	}
}

impl<'input> CustomRuleContext<'input> for AssignmentOperatorContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_assignmentOperator }
	//fn type_rule_index() -> usize where Self: Sized { RULE_assignmentOperator }
}
antlr_rust::tid!{AssignmentOperatorContextExt<'a>}

impl<'input> AssignmentOperatorContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<AssignmentOperatorContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,AssignmentOperatorContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait AssignmentOperatorContextAttrs<'input>: CParserContext<'input> + BorrowMut<AssignmentOperatorContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Assign
/// Returns `None` if there is no child corresponding to token Assign
fn Assign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Assign, 0)
}
/// Retrieves first TerminalNode corresponding to token MulAssign
/// Returns `None` if there is no child corresponding to token MulAssign
fn MulAssign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(MulAssign, 0)
}
/// Retrieves first TerminalNode corresponding to token DivAssign
/// Returns `None` if there is no child corresponding to token DivAssign
fn DivAssign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(DivAssign, 0)
}
/// Retrieves first TerminalNode corresponding to token ModAssign
/// Returns `None` if there is no child corresponding to token ModAssign
fn ModAssign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(ModAssign, 0)
}
/// Retrieves first TerminalNode corresponding to token PlusAssign
/// Returns `None` if there is no child corresponding to token PlusAssign
fn PlusAssign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(PlusAssign, 0)
}
/// Retrieves first TerminalNode corresponding to token MinusAssign
/// Returns `None` if there is no child corresponding to token MinusAssign
fn MinusAssign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(MinusAssign, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftShiftAssign
/// Returns `None` if there is no child corresponding to token LeftShiftAssign
fn LeftShiftAssign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftShiftAssign, 0)
}
/// Retrieves first TerminalNode corresponding to token RightShiftAssign
/// Returns `None` if there is no child corresponding to token RightShiftAssign
fn RightShiftAssign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightShiftAssign, 0)
}
/// Retrieves first TerminalNode corresponding to token AndAssign
/// Returns `None` if there is no child corresponding to token AndAssign
fn AndAssign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(AndAssign, 0)
}
/// Retrieves first TerminalNode corresponding to token XorAssign
/// Returns `None` if there is no child corresponding to token XorAssign
fn XorAssign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(XorAssign, 0)
}
/// Retrieves first TerminalNode corresponding to token OrAssign
/// Returns `None` if there is no child corresponding to token OrAssign
fn OrAssign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(OrAssign, 0)
}

}

impl<'input> AssignmentOperatorContextAttrs<'input> for AssignmentOperatorContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn assignmentOperator(&mut self,)
	-> Result<Rc<AssignmentOperatorContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = AssignmentOperatorContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 42, RULE_assignmentOperator);
        let mut _localctx: Rc<AssignmentOperatorContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(372);
			_la = recog.base.input.la(1);
			if { !(((((_la - 92)) & !0x3f) == 0 && ((1usize << (_la - 92)) & ((1usize << (Assign - 92)) | (1usize << (MulAssign - 92)) | (1usize << (DivAssign - 92)) | (1usize << (ModAssign - 92)) | (1usize << (PlusAssign - 92)) | (1usize << (MinusAssign - 92)) | (1usize << (LeftShiftAssign - 92)) | (1usize << (RightShiftAssign - 92)) | (1usize << (AndAssign - 92)) | (1usize << (XorAssign - 92)) | (1usize << (OrAssign - 92)))) != 0)) } {
				recog.err_handler.recover_inline(&mut recog.base)?;

			}
			else {
				if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
				recog.err_handler.report_match(&mut recog.base);
				recog.base.consume(&mut recog.err_handler);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- expression ----------------
pub type ExpressionContextAll<'input> = ExpressionContext<'input>;


pub type ExpressionContext<'input> = BaseParserRuleContext<'input,ExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct ExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_expression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_expression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_expression(self);
	}
}

impl<'input> CustomRuleContext<'input> for ExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_expression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_expression }
}
antlr_rust::tid!{ExpressionContextExt<'a>}

impl<'input> ExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<ExpressionContextExt<'input>>{

fn assignmentExpression_all(&self) ->  Vec<Rc<AssignmentExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn assignmentExpression(&self, i: usize) -> Option<Rc<AssignmentExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Comma in current rule
fn Comma_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Comma, starting from 0.
/// Returns `None` if number of children corresponding to token Comma is less or equal than `i`.
fn Comma(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, i)
}

}

impl<'input> ExpressionContextAttrs<'input> for ExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn expression(&mut self,)
	-> Result<Rc<ExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 44, RULE_expression);
        let mut _localctx: Rc<ExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule assignmentExpression*/
			recog.base.set_state(374);
			recog.assignmentExpression()?;

			recog.base.set_state(379);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==Comma {
				{
				{
				recog.base.set_state(375);
				recog.base.match_token(Comma,&mut recog.err_handler)?;

				/*InvokeRule assignmentExpression*/
				recog.base.set_state(376);
				recog.assignmentExpression()?;

				}
				}
				recog.base.set_state(381);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- constantExpression ----------------
pub type ConstantExpressionContextAll<'input> = ConstantExpressionContext<'input>;


pub type ConstantExpressionContext<'input> = BaseParserRuleContext<'input,ConstantExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct ConstantExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ConstantExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ConstantExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_constantExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_constantExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ConstantExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_constantExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for ConstantExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_constantExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_constantExpression }
}
antlr_rust::tid!{ConstantExpressionContextExt<'a>}

impl<'input> ConstantExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ConstantExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ConstantExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ConstantExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<ConstantExpressionContextExt<'input>>{

fn conditionalExpression(&self) -> Option<Rc<ConditionalExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> ConstantExpressionContextAttrs<'input> for ConstantExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn constantExpression(&mut self,)
	-> Result<Rc<ConstantExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ConstantExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 46, RULE_constantExpression);
        let mut _localctx: Rc<ConstantExpressionContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule conditionalExpression*/
			recog.base.set_state(382);
			recog.conditionalExpression()?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- declaration ----------------
pub type DeclarationContextAll<'input> = DeclarationContext<'input>;


pub type DeclarationContext<'input> = BaseParserRuleContext<'input,DeclarationContextExt<'input>>;

#[derive(Clone)]
pub struct DeclarationContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for DeclarationContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for DeclarationContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_declaration(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_declaration(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for DeclarationContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_declaration(self);
	}
}

impl<'input> CustomRuleContext<'input> for DeclarationContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_declaration }
	//fn type_rule_index() -> usize where Self: Sized { RULE_declaration }
}
antlr_rust::tid!{DeclarationContextExt<'a>}

impl<'input> DeclarationContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<DeclarationContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,DeclarationContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait DeclarationContextAttrs<'input>: CParserContext<'input> + BorrowMut<DeclarationContextExt<'input>>{

fn declarationSpecifiers(&self) -> Option<Rc<DeclarationSpecifiersContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn initDeclaratorList(&self) -> Option<Rc<InitDeclaratorListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Semi
/// Returns `None` if there is no child corresponding to token Semi
fn Semi(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Semi, 0)
}
fn staticAssertDeclaration(&self) -> Option<Rc<StaticAssertDeclarationContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> DeclarationContextAttrs<'input> for DeclarationContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn declaration(&mut self,)
	-> Result<Rc<DeclarationContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = DeclarationContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 48, RULE_declaration);
        let mut _localctx: Rc<DeclarationContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(389);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 T__0 | T__1 | T__2 | T__3 | T__4 | T__5 | T__6 | T__7 | Auto | Char |
			 Const | Double | Enum | Extern | Float | Inline | Int | Long | Register |
			 Restrict | Short | Signed | Static | Struct | Typedef | Union | Unsigned |
			 Void | Volatile | Alignas | Atomic | Bool | Complex | Noreturn | ThreadLocal |
			 Identifier 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule declarationSpecifiers*/
					recog.base.set_state(384);
					recog.declarationSpecifiers()?;

					/*InvokeRule initDeclaratorList*/
					recog.base.set_state(385);
					recog.initDeclaratorList()?;

					recog.base.set_state(386);
					recog.base.match_token(Semi,&mut recog.err_handler)?;

					}
				}

			 StaticAssert 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					/*InvokeRule staticAssertDeclaration*/
					recog.base.set_state(388);
					recog.staticAssertDeclaration()?;

					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- declarationSpecifiers ----------------
pub type DeclarationSpecifiersContextAll<'input> = DeclarationSpecifiersContext<'input>;


pub type DeclarationSpecifiersContext<'input> = BaseParserRuleContext<'input,DeclarationSpecifiersContextExt<'input>>;

#[derive(Clone)]
pub struct DeclarationSpecifiersContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for DeclarationSpecifiersContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for DeclarationSpecifiersContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_declarationSpecifiers(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_declarationSpecifiers(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for DeclarationSpecifiersContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_declarationSpecifiers(self);
	}
}

impl<'input> CustomRuleContext<'input> for DeclarationSpecifiersContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_declarationSpecifiers }
	//fn type_rule_index() -> usize where Self: Sized { RULE_declarationSpecifiers }
}
antlr_rust::tid!{DeclarationSpecifiersContextExt<'a>}

impl<'input> DeclarationSpecifiersContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<DeclarationSpecifiersContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,DeclarationSpecifiersContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait DeclarationSpecifiersContextAttrs<'input>: CParserContext<'input> + BorrowMut<DeclarationSpecifiersContextExt<'input>>{

fn declarationSpecifier_all(&self) ->  Vec<Rc<DeclarationSpecifierContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn declarationSpecifier(&self, i: usize) -> Option<Rc<DeclarationSpecifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}

}

impl<'input> DeclarationSpecifiersContextAttrs<'input> for DeclarationSpecifiersContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn declarationSpecifiers(&mut self,)
	-> Result<Rc<DeclarationSpecifiersContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = DeclarationSpecifiersContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 50, RULE_declarationSpecifiers);
        let mut _localctx: Rc<DeclarationSpecifiersContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			let mut _alt: isize;
			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(392); 
			recog.err_handler.sync(&mut recog.base)?;
			_alt = 1;
			loop {
				match _alt {
				    x if x == 1=>
					{
					{
					/*InvokeRule declarationSpecifier*/
					recog.base.set_state(391);
					recog.declarationSpecifier()?;

					}
					}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
				}
				recog.base.set_state(394); 
				recog.err_handler.sync(&mut recog.base)?;
				_alt = recog.interpreter.adaptive_predict(23,&mut recog.base)?;
				if _alt==2 || _alt==INVALID_ALT { break }
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- declarationSpecifiers2 ----------------
pub type DeclarationSpecifiers2ContextAll<'input> = DeclarationSpecifiers2Context<'input>;


pub type DeclarationSpecifiers2Context<'input> = BaseParserRuleContext<'input,DeclarationSpecifiers2ContextExt<'input>>;

#[derive(Clone)]
pub struct DeclarationSpecifiers2ContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for DeclarationSpecifiers2Context<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for DeclarationSpecifiers2Context<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_declarationSpecifiers2(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_declarationSpecifiers2(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for DeclarationSpecifiers2Context<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_declarationSpecifiers2(self);
	}
}

impl<'input> CustomRuleContext<'input> for DeclarationSpecifiers2ContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_declarationSpecifiers2 }
	//fn type_rule_index() -> usize where Self: Sized { RULE_declarationSpecifiers2 }
}
antlr_rust::tid!{DeclarationSpecifiers2ContextExt<'a>}

impl<'input> DeclarationSpecifiers2ContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<DeclarationSpecifiers2ContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,DeclarationSpecifiers2ContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait DeclarationSpecifiers2ContextAttrs<'input>: CParserContext<'input> + BorrowMut<DeclarationSpecifiers2ContextExt<'input>>{

fn declarationSpecifier_all(&self) ->  Vec<Rc<DeclarationSpecifierContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn declarationSpecifier(&self, i: usize) -> Option<Rc<DeclarationSpecifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}

}

impl<'input> DeclarationSpecifiers2ContextAttrs<'input> for DeclarationSpecifiers2Context<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn declarationSpecifiers2(&mut self,)
	-> Result<Rc<DeclarationSpecifiers2ContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = DeclarationSpecifiers2ContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 52, RULE_declarationSpecifiers2);
        let mut _localctx: Rc<DeclarationSpecifiers2ContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(397); 
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			loop {
				{
				{
				/*InvokeRule declarationSpecifier*/
				recog.base.set_state(396);
				recog.declarationSpecifier()?;

				}
				}
				recog.base.set_state(399); 
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
				if !((((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__0) | (1usize << T__1) | (1usize << T__2) | (1usize << T__3) | (1usize << T__4) | (1usize << T__5) | (1usize << T__6) | (1usize << T__7) | (1usize << Auto) | (1usize << Char) | (1usize << Const) | (1usize << Double) | (1usize << Enum) | (1usize << Extern) | (1usize << Float))) != 0) || ((((_la - 34)) & !0x3f) == 0 && ((1usize << (_la - 34)) & ((1usize << (Inline - 34)) | (1usize << (Int - 34)) | (1usize << (Long - 34)) | (1usize << (Register - 34)) | (1usize << (Restrict - 34)) | (1usize << (Short - 34)) | (1usize << (Signed - 34)) | (1usize << (Static - 34)) | (1usize << (Struct - 34)) | (1usize << (Typedef - 34)) | (1usize << (Union - 34)) | (1usize << (Unsigned - 34)) | (1usize << (Void - 34)) | (1usize << (Volatile - 34)) | (1usize << (Alignas - 34)) | (1usize << (Atomic - 34)) | (1usize << (Bool - 34)) | (1usize << (Complex - 34)) | (1usize << (Noreturn - 34)) | (1usize << (ThreadLocal - 34)))) != 0) || _la==Identifier) {break}
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- declarationSpecifier ----------------
pub type DeclarationSpecifierContextAll<'input> = DeclarationSpecifierContext<'input>;


pub type DeclarationSpecifierContext<'input> = BaseParserRuleContext<'input,DeclarationSpecifierContextExt<'input>>;

#[derive(Clone)]
pub struct DeclarationSpecifierContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for DeclarationSpecifierContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for DeclarationSpecifierContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_declarationSpecifier(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_declarationSpecifier(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for DeclarationSpecifierContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_declarationSpecifier(self);
	}
}

impl<'input> CustomRuleContext<'input> for DeclarationSpecifierContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_declarationSpecifier }
	//fn type_rule_index() -> usize where Self: Sized { RULE_declarationSpecifier }
}
antlr_rust::tid!{DeclarationSpecifierContextExt<'a>}

impl<'input> DeclarationSpecifierContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<DeclarationSpecifierContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,DeclarationSpecifierContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait DeclarationSpecifierContextAttrs<'input>: CParserContext<'input> + BorrowMut<DeclarationSpecifierContextExt<'input>>{

fn storageClassSpecifier(&self) -> Option<Rc<StorageClassSpecifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn typeSpecifier(&self) -> Option<Rc<TypeSpecifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn typeQualifier(&self) -> Option<Rc<TypeQualifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn functionSpecifier(&self) -> Option<Rc<FunctionSpecifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn alignmentSpecifier(&self) -> Option<Rc<AlignmentSpecifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> DeclarationSpecifierContextAttrs<'input> for DeclarationSpecifierContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn declarationSpecifier(&mut self,)
	-> Result<Rc<DeclarationSpecifierContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = DeclarationSpecifierContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 54, RULE_declarationSpecifier);
        let mut _localctx: Rc<DeclarationSpecifierContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(406);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(25,&mut recog.base)? {
				1 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule storageClassSpecifier*/
					recog.base.set_state(401);
					recog.storageClassSpecifier()?;

					}
				}
			,
				2 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					/*InvokeRule typeSpecifier*/
					recog.base.set_state(402);
					recog.typeSpecifier()?;

					}
				}
			,
				3 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 3);
					recog.base.enter_outer_alt(None, 3);
					{
					/*InvokeRule typeQualifier*/
					recog.base.set_state(403);
					recog.typeQualifier()?;

					}
				}
			,
				4 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 4);
					recog.base.enter_outer_alt(None, 4);
					{
					/*InvokeRule functionSpecifier*/
					recog.base.set_state(404);
					recog.functionSpecifier()?;

					}
				}
			,
				5 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 5);
					recog.base.enter_outer_alt(None, 5);
					{
					/*InvokeRule alignmentSpecifier*/
					recog.base.set_state(405);
					recog.alignmentSpecifier()?;

					}
				}

				_ => {}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- initDeclaratorList ----------------
pub type InitDeclaratorListContextAll<'input> = InitDeclaratorListContext<'input>;


pub type InitDeclaratorListContext<'input> = BaseParserRuleContext<'input,InitDeclaratorListContextExt<'input>>;

#[derive(Clone)]
pub struct InitDeclaratorListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for InitDeclaratorListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for InitDeclaratorListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_initDeclaratorList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_initDeclaratorList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for InitDeclaratorListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_initDeclaratorList(self);
	}
}

impl<'input> CustomRuleContext<'input> for InitDeclaratorListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_initDeclaratorList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_initDeclaratorList }
}
antlr_rust::tid!{InitDeclaratorListContextExt<'a>}

impl<'input> InitDeclaratorListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<InitDeclaratorListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,InitDeclaratorListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait InitDeclaratorListContextAttrs<'input>: CParserContext<'input> + BorrowMut<InitDeclaratorListContextExt<'input>>{

fn initDeclarator_all(&self) ->  Vec<Rc<InitDeclaratorContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn initDeclarator(&self, i: usize) -> Option<Rc<InitDeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Comma in current rule
fn Comma_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Comma, starting from 0.
/// Returns `None` if number of children corresponding to token Comma is less or equal than `i`.
fn Comma(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, i)
}

}

impl<'input> InitDeclaratorListContextAttrs<'input> for InitDeclaratorListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn initDeclaratorList(&mut self,)
	-> Result<Rc<InitDeclaratorListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = InitDeclaratorListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 56, RULE_initDeclaratorList);
        let mut _localctx: Rc<InitDeclaratorListContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule initDeclarator*/
			recog.base.set_state(408);
			recog.initDeclarator()?;

			recog.base.set_state(413);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==Comma {
				{
				{
				recog.base.set_state(409);
				recog.base.match_token(Comma,&mut recog.err_handler)?;

				/*InvokeRule initDeclarator*/
				recog.base.set_state(410);
				recog.initDeclarator()?;

				}
				}
				recog.base.set_state(415);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- initDeclarator ----------------
pub type InitDeclaratorContextAll<'input> = InitDeclaratorContext<'input>;


pub type InitDeclaratorContext<'input> = BaseParserRuleContext<'input,InitDeclaratorContextExt<'input>>;

#[derive(Clone)]
pub struct InitDeclaratorContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for InitDeclaratorContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for InitDeclaratorContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_initDeclarator(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_initDeclarator(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for InitDeclaratorContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_initDeclarator(self);
	}
}

impl<'input> CustomRuleContext<'input> for InitDeclaratorContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_initDeclarator }
	//fn type_rule_index() -> usize where Self: Sized { RULE_initDeclarator }
}
antlr_rust::tid!{InitDeclaratorContextExt<'a>}

impl<'input> InitDeclaratorContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<InitDeclaratorContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,InitDeclaratorContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait InitDeclaratorContextAttrs<'input>: CParserContext<'input> + BorrowMut<InitDeclaratorContextExt<'input>>{

fn declarator(&self) -> Option<Rc<DeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Assign
/// Returns `None` if there is no child corresponding to token Assign
fn Assign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Assign, 0)
}
fn initializer(&self) -> Option<Rc<InitializerContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> InitDeclaratorContextAttrs<'input> for InitDeclaratorContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn initDeclarator(&mut self,)
	-> Result<Rc<InitDeclaratorContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = InitDeclaratorContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 58, RULE_initDeclarator);
        let mut _localctx: Rc<InitDeclaratorContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule declarator*/
			recog.base.set_state(416);
			recog.declarator()?;

			recog.base.set_state(419);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if _la==Assign {
				{
				recog.base.set_state(417);
				recog.base.match_token(Assign,&mut recog.err_handler)?;

				/*InvokeRule initializer*/
				recog.base.set_state(418);
				recog.initializer()?;

				}
			}

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- storageClassSpecifier ----------------
pub type StorageClassSpecifierContextAll<'input> = StorageClassSpecifierContext<'input>;


pub type StorageClassSpecifierContext<'input> = BaseParserRuleContext<'input,StorageClassSpecifierContextExt<'input>>;

#[derive(Clone)]
pub struct StorageClassSpecifierContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for StorageClassSpecifierContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for StorageClassSpecifierContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_storageClassSpecifier(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_storageClassSpecifier(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for StorageClassSpecifierContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_storageClassSpecifier(self);
	}
}

impl<'input> CustomRuleContext<'input> for StorageClassSpecifierContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_storageClassSpecifier }
	//fn type_rule_index() -> usize where Self: Sized { RULE_storageClassSpecifier }
}
antlr_rust::tid!{StorageClassSpecifierContextExt<'a>}

impl<'input> StorageClassSpecifierContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<StorageClassSpecifierContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,StorageClassSpecifierContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait StorageClassSpecifierContextAttrs<'input>: CParserContext<'input> + BorrowMut<StorageClassSpecifierContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Typedef
/// Returns `None` if there is no child corresponding to token Typedef
fn Typedef(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Typedef, 0)
}
/// Retrieves first TerminalNode corresponding to token Extern
/// Returns `None` if there is no child corresponding to token Extern
fn Extern(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Extern, 0)
}
/// Retrieves first TerminalNode corresponding to token Static
/// Returns `None` if there is no child corresponding to token Static
fn Static(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Static, 0)
}
/// Retrieves first TerminalNode corresponding to token ThreadLocal
/// Returns `None` if there is no child corresponding to token ThreadLocal
fn ThreadLocal(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(ThreadLocal, 0)
}
/// Retrieves first TerminalNode corresponding to token Auto
/// Returns `None` if there is no child corresponding to token Auto
fn Auto(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Auto, 0)
}
/// Retrieves first TerminalNode corresponding to token Register
/// Returns `None` if there is no child corresponding to token Register
fn Register(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Register, 0)
}

}

impl<'input> StorageClassSpecifierContextAttrs<'input> for StorageClassSpecifierContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn storageClassSpecifier(&mut self,)
	-> Result<Rc<StorageClassSpecifierContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = StorageClassSpecifierContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 60, RULE_storageClassSpecifier);
        let mut _localctx: Rc<StorageClassSpecifierContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(421);
			_la = recog.base.input.la(1);
			if { !(_la==Auto || _la==Extern || ((((_la - 37)) & !0x3f) == 0 && ((1usize << (_la - 37)) & ((1usize << (Register - 37)) | (1usize << (Static - 37)) | (1usize << (Typedef - 37)) | (1usize << (ThreadLocal - 37)))) != 0)) } {
				recog.err_handler.recover_inline(&mut recog.base)?;

			}
			else {
				if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
				recog.err_handler.report_match(&mut recog.base);
				recog.base.consume(&mut recog.err_handler);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- typeSpecifier ----------------
pub type TypeSpecifierContextAll<'input> = TypeSpecifierContext<'input>;


pub type TypeSpecifierContext<'input> = BaseParserRuleContext<'input,TypeSpecifierContextExt<'input>>;

#[derive(Clone)]
pub struct TypeSpecifierContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for TypeSpecifierContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for TypeSpecifierContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_typeSpecifier(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_typeSpecifier(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for TypeSpecifierContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_typeSpecifier(self);
	}
}

impl<'input> CustomRuleContext<'input> for TypeSpecifierContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_typeSpecifier }
	//fn type_rule_index() -> usize where Self: Sized { RULE_typeSpecifier }
}
antlr_rust::tid!{TypeSpecifierContextExt<'a>}

impl<'input> TypeSpecifierContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<TypeSpecifierContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,TypeSpecifierContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait TypeSpecifierContextAttrs<'input>: CParserContext<'input> + BorrowMut<TypeSpecifierContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Void
/// Returns `None` if there is no child corresponding to token Void
fn Void(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Void, 0)
}
/// Retrieves first TerminalNode corresponding to token Char
/// Returns `None` if there is no child corresponding to token Char
fn Char(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Char, 0)
}
/// Retrieves first TerminalNode corresponding to token Short
/// Returns `None` if there is no child corresponding to token Short
fn Short(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Short, 0)
}
/// Retrieves first TerminalNode corresponding to token Int
/// Returns `None` if there is no child corresponding to token Int
fn Int(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Int, 0)
}
/// Retrieves first TerminalNode corresponding to token Long
/// Returns `None` if there is no child corresponding to token Long
fn Long(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Long, 0)
}
/// Retrieves first TerminalNode corresponding to token Float
/// Returns `None` if there is no child corresponding to token Float
fn Float(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Float, 0)
}
/// Retrieves first TerminalNode corresponding to token Double
/// Returns `None` if there is no child corresponding to token Double
fn Double(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Double, 0)
}
/// Retrieves first TerminalNode corresponding to token Signed
/// Returns `None` if there is no child corresponding to token Signed
fn Signed(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Signed, 0)
}
/// Retrieves first TerminalNode corresponding to token Unsigned
/// Returns `None` if there is no child corresponding to token Unsigned
fn Unsigned(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Unsigned, 0)
}
/// Retrieves first TerminalNode corresponding to token Bool
/// Returns `None` if there is no child corresponding to token Bool
fn Bool(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Bool, 0)
}
/// Retrieves first TerminalNode corresponding to token Complex
/// Returns `None` if there is no child corresponding to token Complex
fn Complex(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Complex, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
fn atomicTypeSpecifier(&self) -> Option<Rc<AtomicTypeSpecifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn structOrUnionSpecifier(&self) -> Option<Rc<StructOrUnionSpecifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn enumSpecifier(&self) -> Option<Rc<EnumSpecifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn typedefName(&self) -> Option<Rc<TypedefNameContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn constantExpression(&self) -> Option<Rc<ConstantExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> TypeSpecifierContextAttrs<'input> for TypeSpecifierContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn typeSpecifier(&mut self,)
	-> Result<Rc<TypeSpecifierContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = TypeSpecifierContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 62, RULE_typeSpecifier);
        let mut _localctx: Rc<TypeSpecifierContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(450);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 Void 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					recog.base.set_state(423);
					recog.base.match_token(Void,&mut recog.err_handler)?;

					}
				}

			 Char 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					recog.base.set_state(424);
					recog.base.match_token(Char,&mut recog.err_handler)?;

					}
				}

			 Short 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 3);
					recog.base.enter_outer_alt(None, 3);
					{
					recog.base.set_state(425);
					recog.base.match_token(Short,&mut recog.err_handler)?;

					}
				}

			 Int 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 4);
					recog.base.enter_outer_alt(None, 4);
					{
					recog.base.set_state(426);
					recog.base.match_token(Int,&mut recog.err_handler)?;

					}
				}

			 Long 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 5);
					recog.base.enter_outer_alt(None, 5);
					{
					recog.base.set_state(427);
					recog.base.match_token(Long,&mut recog.err_handler)?;

					}
				}

			 Float 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 6);
					recog.base.enter_outer_alt(None, 6);
					{
					recog.base.set_state(428);
					recog.base.match_token(Float,&mut recog.err_handler)?;

					}
				}

			 Double 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 7);
					recog.base.enter_outer_alt(None, 7);
					{
					recog.base.set_state(429);
					recog.base.match_token(Double,&mut recog.err_handler)?;

					}
				}

			 Signed 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 8);
					recog.base.enter_outer_alt(None, 8);
					{
					recog.base.set_state(430);
					recog.base.match_token(Signed,&mut recog.err_handler)?;

					}
				}

			 Unsigned 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 9);
					recog.base.enter_outer_alt(None, 9);
					{
					recog.base.set_state(431);
					recog.base.match_token(Unsigned,&mut recog.err_handler)?;

					}
				}

			 Bool 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 10);
					recog.base.enter_outer_alt(None, 10);
					{
					recog.base.set_state(432);
					recog.base.match_token(Bool,&mut recog.err_handler)?;

					}
				}

			 Complex 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 11);
					recog.base.enter_outer_alt(None, 11);
					{
					recog.base.set_state(433);
					recog.base.match_token(Complex,&mut recog.err_handler)?;

					}
				}

			 T__0 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 12);
					recog.base.enter_outer_alt(None, 12);
					{
					recog.base.set_state(434);
					recog.base.match_token(T__0,&mut recog.err_handler)?;

					}
				}

			 T__1 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 13);
					recog.base.enter_outer_alt(None, 13);
					{
					recog.base.set_state(435);
					recog.base.match_token(T__1,&mut recog.err_handler)?;

					}
				}

			 T__2 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 14);
					recog.base.enter_outer_alt(None, 14);
					{
					recog.base.set_state(436);
					recog.base.match_token(T__2,&mut recog.err_handler)?;

					}
				}

			 T__3 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 15);
					recog.base.enter_outer_alt(None, 15);
					{
					recog.base.set_state(437);
					recog.base.match_token(T__3,&mut recog.err_handler)?;

					recog.base.set_state(438);
					recog.base.match_token(LeftParen,&mut recog.err_handler)?;

					recog.base.set_state(439);
					_la = recog.base.input.la(1);
					if { !((((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__0) | (1usize << T__1) | (1usize << T__2))) != 0)) } {
						recog.err_handler.recover_inline(&mut recog.base)?;

					}
					else {
						if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
						recog.err_handler.report_match(&mut recog.base);
						recog.base.consume(&mut recog.err_handler);
					}
					recog.base.set_state(440);
					recog.base.match_token(RightParen,&mut recog.err_handler)?;

					}
				}

			 Atomic 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 16);
					recog.base.enter_outer_alt(None, 16);
					{
					/*InvokeRule atomicTypeSpecifier*/
					recog.base.set_state(441);
					recog.atomicTypeSpecifier()?;

					}
				}

			 Struct | Union 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 17);
					recog.base.enter_outer_alt(None, 17);
					{
					/*InvokeRule structOrUnionSpecifier*/
					recog.base.set_state(442);
					recog.structOrUnionSpecifier()?;

					}
				}

			 Enum 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 18);
					recog.base.enter_outer_alt(None, 18);
					{
					/*InvokeRule enumSpecifier*/
					recog.base.set_state(443);
					recog.enumSpecifier()?;

					}
				}

			 Identifier 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 19);
					recog.base.enter_outer_alt(None, 19);
					{
					/*InvokeRule typedefName*/
					recog.base.set_state(444);
					recog.typedefName()?;

					}
				}

			 T__4 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 20);
					recog.base.enter_outer_alt(None, 20);
					{
					recog.base.set_state(445);
					recog.base.match_token(T__4,&mut recog.err_handler)?;

					recog.base.set_state(446);
					recog.base.match_token(LeftParen,&mut recog.err_handler)?;

					/*InvokeRule constantExpression*/
					recog.base.set_state(447);
					recog.constantExpression()?;

					recog.base.set_state(448);
					recog.base.match_token(RightParen,&mut recog.err_handler)?;

					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- structOrUnionSpecifier ----------------
pub type StructOrUnionSpecifierContextAll<'input> = StructOrUnionSpecifierContext<'input>;


pub type StructOrUnionSpecifierContext<'input> = BaseParserRuleContext<'input,StructOrUnionSpecifierContextExt<'input>>;

#[derive(Clone)]
pub struct StructOrUnionSpecifierContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for StructOrUnionSpecifierContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for StructOrUnionSpecifierContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_structOrUnionSpecifier(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_structOrUnionSpecifier(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for StructOrUnionSpecifierContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_structOrUnionSpecifier(self);
	}
}

impl<'input> CustomRuleContext<'input> for StructOrUnionSpecifierContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_structOrUnionSpecifier }
	//fn type_rule_index() -> usize where Self: Sized { RULE_structOrUnionSpecifier }
}
antlr_rust::tid!{StructOrUnionSpecifierContextExt<'a>}

impl<'input> StructOrUnionSpecifierContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<StructOrUnionSpecifierContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,StructOrUnionSpecifierContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait StructOrUnionSpecifierContextAttrs<'input>: CParserContext<'input> + BorrowMut<StructOrUnionSpecifierContextExt<'input>>{

fn structOrUnion(&self) -> Option<Rc<StructOrUnionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token LeftBrace
/// Returns `None` if there is no child corresponding to token LeftBrace
fn LeftBrace(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftBrace, 0)
}
fn structDeclarationList(&self) -> Option<Rc<StructDeclarationListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightBrace
/// Returns `None` if there is no child corresponding to token RightBrace
fn RightBrace(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightBrace, 0)
}
/// Retrieves first TerminalNode corresponding to token Identifier
/// Returns `None` if there is no child corresponding to token Identifier
fn Identifier(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, 0)
}

}

impl<'input> StructOrUnionSpecifierContextAttrs<'input> for StructOrUnionSpecifierContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn structOrUnionSpecifier(&mut self,)
	-> Result<Rc<StructOrUnionSpecifierContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = StructOrUnionSpecifierContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 64, RULE_structOrUnionSpecifier);
        let mut _localctx: Rc<StructOrUnionSpecifierContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(463);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(30,&mut recog.base)? {
				1 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule structOrUnion*/
					recog.base.set_state(452);
					recog.structOrUnion()?;

					recog.base.set_state(454);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if _la==Identifier {
						{
						recog.base.set_state(453);
						recog.base.match_token(Identifier,&mut recog.err_handler)?;

						}
					}

					recog.base.set_state(456);
					recog.base.match_token(LeftBrace,&mut recog.err_handler)?;

					/*InvokeRule structDeclarationList*/
					recog.base.set_state(457);
					recog.structDeclarationList()?;

					recog.base.set_state(458);
					recog.base.match_token(RightBrace,&mut recog.err_handler)?;

					}
				}
			,
				2 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					/*InvokeRule structOrUnion*/
					recog.base.set_state(460);
					recog.structOrUnion()?;

					recog.base.set_state(461);
					recog.base.match_token(Identifier,&mut recog.err_handler)?;

					}
				}

				_ => {}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- structOrUnion ----------------
pub type StructOrUnionContextAll<'input> = StructOrUnionContext<'input>;


pub type StructOrUnionContext<'input> = BaseParserRuleContext<'input,StructOrUnionContextExt<'input>>;

#[derive(Clone)]
pub struct StructOrUnionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for StructOrUnionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for StructOrUnionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_structOrUnion(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_structOrUnion(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for StructOrUnionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_structOrUnion(self);
	}
}

impl<'input> CustomRuleContext<'input> for StructOrUnionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_structOrUnion }
	//fn type_rule_index() -> usize where Self: Sized { RULE_structOrUnion }
}
antlr_rust::tid!{StructOrUnionContextExt<'a>}

impl<'input> StructOrUnionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<StructOrUnionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,StructOrUnionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait StructOrUnionContextAttrs<'input>: CParserContext<'input> + BorrowMut<StructOrUnionContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Struct
/// Returns `None` if there is no child corresponding to token Struct
fn Struct(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Struct, 0)
}
/// Retrieves first TerminalNode corresponding to token Union
/// Returns `None` if there is no child corresponding to token Union
fn Union(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Union, 0)
}

}

impl<'input> StructOrUnionContextAttrs<'input> for StructOrUnionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn structOrUnion(&mut self,)
	-> Result<Rc<StructOrUnionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = StructOrUnionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 66, RULE_structOrUnion);
        let mut _localctx: Rc<StructOrUnionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(465);
			_la = recog.base.input.la(1);
			if { !(_la==Struct || _la==Union) } {
				recog.err_handler.recover_inline(&mut recog.base)?;

			}
			else {
				if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
				recog.err_handler.report_match(&mut recog.base);
				recog.base.consume(&mut recog.err_handler);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- structDeclarationList ----------------
pub type StructDeclarationListContextAll<'input> = StructDeclarationListContext<'input>;


pub type StructDeclarationListContext<'input> = BaseParserRuleContext<'input,StructDeclarationListContextExt<'input>>;

#[derive(Clone)]
pub struct StructDeclarationListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for StructDeclarationListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for StructDeclarationListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_structDeclarationList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_structDeclarationList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for StructDeclarationListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_structDeclarationList(self);
	}
}

impl<'input> CustomRuleContext<'input> for StructDeclarationListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_structDeclarationList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_structDeclarationList }
}
antlr_rust::tid!{StructDeclarationListContextExt<'a>}

impl<'input> StructDeclarationListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<StructDeclarationListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,StructDeclarationListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait StructDeclarationListContextAttrs<'input>: CParserContext<'input> + BorrowMut<StructDeclarationListContextExt<'input>>{

fn structDeclaration_all(&self) ->  Vec<Rc<StructDeclarationContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn structDeclaration(&self, i: usize) -> Option<Rc<StructDeclarationContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}

}

impl<'input> StructDeclarationListContextAttrs<'input> for StructDeclarationListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn structDeclarationList(&mut self,)
	-> Result<Rc<StructDeclarationListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = StructDeclarationListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 68, RULE_structDeclarationList);
        let mut _localctx: Rc<StructDeclarationListContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(468); 
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			loop {
				{
				{
				/*InvokeRule structDeclaration*/
				recog.base.set_state(467);
				recog.structDeclaration()?;

				}
				}
				recog.base.set_state(470); 
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
				if !((((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__0) | (1usize << T__1) | (1usize << T__2) | (1usize << T__3) | (1usize << T__4) | (1usize << Char) | (1usize << Const) | (1usize << Double) | (1usize << Enum) | (1usize << Float))) != 0) || ((((_la - 35)) & !0x3f) == 0 && ((1usize << (_la - 35)) & ((1usize << (Int - 35)) | (1usize << (Long - 35)) | (1usize << (Restrict - 35)) | (1usize << (Short - 35)) | (1usize << (Signed - 35)) | (1usize << (Struct - 35)) | (1usize << (Union - 35)) | (1usize << (Unsigned - 35)) | (1usize << (Void - 35)) | (1usize << (Volatile - 35)) | (1usize << (Atomic - 35)) | (1usize << (Bool - 35)) | (1usize << (Complex - 35)) | (1usize << (StaticAssert - 35)))) != 0) || _la==Identifier) {break}
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- structDeclaration ----------------
pub type StructDeclarationContextAll<'input> = StructDeclarationContext<'input>;


pub type StructDeclarationContext<'input> = BaseParserRuleContext<'input,StructDeclarationContextExt<'input>>;

#[derive(Clone)]
pub struct StructDeclarationContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for StructDeclarationContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for StructDeclarationContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_structDeclaration(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_structDeclaration(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for StructDeclarationContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_structDeclaration(self);
	}
}

impl<'input> CustomRuleContext<'input> for StructDeclarationContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_structDeclaration }
	//fn type_rule_index() -> usize where Self: Sized { RULE_structDeclaration }
}
antlr_rust::tid!{StructDeclarationContextExt<'a>}

impl<'input> StructDeclarationContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<StructDeclarationContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,StructDeclarationContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait StructDeclarationContextAttrs<'input>: CParserContext<'input> + BorrowMut<StructDeclarationContextExt<'input>>{

fn specifierQualifierList(&self) -> Option<Rc<SpecifierQualifierListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn structDeclaratorList(&self) -> Option<Rc<StructDeclaratorListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Semi
/// Returns `None` if there is no child corresponding to token Semi
fn Semi(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Semi, 0)
}
fn staticAssertDeclaration(&self) -> Option<Rc<StaticAssertDeclarationContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> StructDeclarationContextAttrs<'input> for StructDeclarationContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn structDeclaration(&mut self,)
	-> Result<Rc<StructDeclarationContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = StructDeclarationContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 70, RULE_structDeclaration);
        let mut _localctx: Rc<StructDeclarationContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(480);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(32,&mut recog.base)? {
				1 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule specifierQualifierList*/
					recog.base.set_state(472);
					recog.specifierQualifierList()?;

					/*InvokeRule structDeclaratorList*/
					recog.base.set_state(473);
					recog.structDeclaratorList()?;

					recog.base.set_state(474);
					recog.base.match_token(Semi,&mut recog.err_handler)?;

					}
				}
			,
				2 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					/*InvokeRule specifierQualifierList*/
					recog.base.set_state(476);
					recog.specifierQualifierList()?;

					recog.base.set_state(477);
					recog.base.match_token(Semi,&mut recog.err_handler)?;

					}
				}
			,
				3 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 3);
					recog.base.enter_outer_alt(None, 3);
					{
					/*InvokeRule staticAssertDeclaration*/
					recog.base.set_state(479);
					recog.staticAssertDeclaration()?;

					}
				}

				_ => {}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- specifierQualifierList ----------------
pub type SpecifierQualifierListContextAll<'input> = SpecifierQualifierListContext<'input>;


pub type SpecifierQualifierListContext<'input> = BaseParserRuleContext<'input,SpecifierQualifierListContextExt<'input>>;

#[derive(Clone)]
pub struct SpecifierQualifierListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for SpecifierQualifierListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for SpecifierQualifierListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_specifierQualifierList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_specifierQualifierList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for SpecifierQualifierListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_specifierQualifierList(self);
	}
}

impl<'input> CustomRuleContext<'input> for SpecifierQualifierListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_specifierQualifierList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_specifierQualifierList }
}
antlr_rust::tid!{SpecifierQualifierListContextExt<'a>}

impl<'input> SpecifierQualifierListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<SpecifierQualifierListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,SpecifierQualifierListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait SpecifierQualifierListContextAttrs<'input>: CParserContext<'input> + BorrowMut<SpecifierQualifierListContextExt<'input>>{

fn typeSpecifier(&self) -> Option<Rc<TypeSpecifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn typeQualifier(&self) -> Option<Rc<TypeQualifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn specifierQualifierList(&self) -> Option<Rc<SpecifierQualifierListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> SpecifierQualifierListContextAttrs<'input> for SpecifierQualifierListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn specifierQualifierList(&mut self,)
	-> Result<Rc<SpecifierQualifierListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = SpecifierQualifierListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 72, RULE_specifierQualifierList);
        let mut _localctx: Rc<SpecifierQualifierListContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(484);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(33,&mut recog.base)? {
				1 =>{
					{
					/*InvokeRule typeSpecifier*/
					recog.base.set_state(482);
					recog.typeSpecifier()?;

					}
				}
			,
				2 =>{
					{
					/*InvokeRule typeQualifier*/
					recog.base.set_state(483);
					recog.typeQualifier()?;

					}
				}

				_ => {}
			}
			recog.base.set_state(487);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(34,&mut recog.base)? {
				x if x == 1=>{
					{
					/*InvokeRule specifierQualifierList*/
					recog.base.set_state(486);
					recog.specifierQualifierList()?;

					}
				}

				_ => {}
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- structDeclaratorList ----------------
pub type StructDeclaratorListContextAll<'input> = StructDeclaratorListContext<'input>;


pub type StructDeclaratorListContext<'input> = BaseParserRuleContext<'input,StructDeclaratorListContextExt<'input>>;

#[derive(Clone)]
pub struct StructDeclaratorListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for StructDeclaratorListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for StructDeclaratorListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_structDeclaratorList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_structDeclaratorList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for StructDeclaratorListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_structDeclaratorList(self);
	}
}

impl<'input> CustomRuleContext<'input> for StructDeclaratorListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_structDeclaratorList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_structDeclaratorList }
}
antlr_rust::tid!{StructDeclaratorListContextExt<'a>}

impl<'input> StructDeclaratorListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<StructDeclaratorListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,StructDeclaratorListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait StructDeclaratorListContextAttrs<'input>: CParserContext<'input> + BorrowMut<StructDeclaratorListContextExt<'input>>{

fn structDeclarator_all(&self) ->  Vec<Rc<StructDeclaratorContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn structDeclarator(&self, i: usize) -> Option<Rc<StructDeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Comma in current rule
fn Comma_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Comma, starting from 0.
/// Returns `None` if number of children corresponding to token Comma is less or equal than `i`.
fn Comma(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, i)
}

}

impl<'input> StructDeclaratorListContextAttrs<'input> for StructDeclaratorListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn structDeclaratorList(&mut self,)
	-> Result<Rc<StructDeclaratorListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = StructDeclaratorListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 74, RULE_structDeclaratorList);
        let mut _localctx: Rc<StructDeclaratorListContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule structDeclarator*/
			recog.base.set_state(489);
			recog.structDeclarator()?;

			recog.base.set_state(494);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==Comma {
				{
				{
				recog.base.set_state(490);
				recog.base.match_token(Comma,&mut recog.err_handler)?;

				/*InvokeRule structDeclarator*/
				recog.base.set_state(491);
				recog.structDeclarator()?;

				}
				}
				recog.base.set_state(496);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- structDeclarator ----------------
pub type StructDeclaratorContextAll<'input> = StructDeclaratorContext<'input>;


pub type StructDeclaratorContext<'input> = BaseParserRuleContext<'input,StructDeclaratorContextExt<'input>>;

#[derive(Clone)]
pub struct StructDeclaratorContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for StructDeclaratorContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for StructDeclaratorContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_structDeclarator(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_structDeclarator(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for StructDeclaratorContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_structDeclarator(self);
	}
}

impl<'input> CustomRuleContext<'input> for StructDeclaratorContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_structDeclarator }
	//fn type_rule_index() -> usize where Self: Sized { RULE_structDeclarator }
}
antlr_rust::tid!{StructDeclaratorContextExt<'a>}

impl<'input> StructDeclaratorContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<StructDeclaratorContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,StructDeclaratorContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait StructDeclaratorContextAttrs<'input>: CParserContext<'input> + BorrowMut<StructDeclaratorContextExt<'input>>{

fn declarator(&self) -> Option<Rc<DeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Colon
/// Returns `None` if there is no child corresponding to token Colon
fn Colon(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Colon, 0)
}
fn constantExpression(&self) -> Option<Rc<ConstantExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> StructDeclaratorContextAttrs<'input> for StructDeclaratorContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn structDeclarator(&mut self,)
	-> Result<Rc<StructDeclaratorContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = StructDeclaratorContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 76, RULE_structDeclarator);
        let mut _localctx: Rc<StructDeclaratorContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(503);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(37,&mut recog.base)? {
				1 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule declarator*/
					recog.base.set_state(497);
					recog.declarator()?;

					}
				}
			,
				2 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					recog.base.set_state(499);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if (((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__6) | (1usize << T__8) | (1usize << T__9) | (1usize << T__10) | (1usize << T__11) | (1usize << T__12))) != 0) || ((((_la - 62)) & !0x3f) == 0 && ((1usize << (_la - 62)) & ((1usize << (LeftParen - 62)) | (1usize << (Star - 62)) | (1usize << (Caret - 62)))) != 0) || _la==Identifier {
						{
						/*InvokeRule declarator*/
						recog.base.set_state(498);
						recog.declarator()?;

						}
					}

					recog.base.set_state(501);
					recog.base.match_token(Colon,&mut recog.err_handler)?;

					/*InvokeRule constantExpression*/
					recog.base.set_state(502);
					recog.constantExpression()?;

					}
				}

				_ => {}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- enumSpecifier ----------------
pub type EnumSpecifierContextAll<'input> = EnumSpecifierContext<'input>;


pub type EnumSpecifierContext<'input> = BaseParserRuleContext<'input,EnumSpecifierContextExt<'input>>;

#[derive(Clone)]
pub struct EnumSpecifierContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for EnumSpecifierContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for EnumSpecifierContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_enumSpecifier(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_enumSpecifier(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for EnumSpecifierContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_enumSpecifier(self);
	}
}

impl<'input> CustomRuleContext<'input> for EnumSpecifierContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_enumSpecifier }
	//fn type_rule_index() -> usize where Self: Sized { RULE_enumSpecifier }
}
antlr_rust::tid!{EnumSpecifierContextExt<'a>}

impl<'input> EnumSpecifierContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<EnumSpecifierContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,EnumSpecifierContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait EnumSpecifierContextAttrs<'input>: CParserContext<'input> + BorrowMut<EnumSpecifierContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Enum
/// Returns `None` if there is no child corresponding to token Enum
fn Enum(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Enum, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftBrace
/// Returns `None` if there is no child corresponding to token LeftBrace
fn LeftBrace(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftBrace, 0)
}
fn enumeratorList(&self) -> Option<Rc<EnumeratorListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightBrace
/// Returns `None` if there is no child corresponding to token RightBrace
fn RightBrace(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightBrace, 0)
}
/// Retrieves first TerminalNode corresponding to token Identifier
/// Returns `None` if there is no child corresponding to token Identifier
fn Identifier(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, 0)
}
/// Retrieves first TerminalNode corresponding to token Comma
/// Returns `None` if there is no child corresponding to token Comma
fn Comma(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, 0)
}

}

impl<'input> EnumSpecifierContextAttrs<'input> for EnumSpecifierContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn enumSpecifier(&mut self,)
	-> Result<Rc<EnumSpecifierContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = EnumSpecifierContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 78, RULE_enumSpecifier);
        let mut _localctx: Rc<EnumSpecifierContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(518);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(40,&mut recog.base)? {
				1 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					recog.base.set_state(505);
					recog.base.match_token(Enum,&mut recog.err_handler)?;

					recog.base.set_state(507);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if _la==Identifier {
						{
						recog.base.set_state(506);
						recog.base.match_token(Identifier,&mut recog.err_handler)?;

						}
					}

					recog.base.set_state(509);
					recog.base.match_token(LeftBrace,&mut recog.err_handler)?;

					/*InvokeRule enumeratorList*/
					recog.base.set_state(510);
					recog.enumeratorList()?;

					recog.base.set_state(512);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if _la==Comma {
						{
						recog.base.set_state(511);
						recog.base.match_token(Comma,&mut recog.err_handler)?;

						}
					}

					recog.base.set_state(514);
					recog.base.match_token(RightBrace,&mut recog.err_handler)?;

					}
				}
			,
				2 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					recog.base.set_state(516);
					recog.base.match_token(Enum,&mut recog.err_handler)?;

					recog.base.set_state(517);
					recog.base.match_token(Identifier,&mut recog.err_handler)?;

					}
				}

				_ => {}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- enumeratorList ----------------
pub type EnumeratorListContextAll<'input> = EnumeratorListContext<'input>;


pub type EnumeratorListContext<'input> = BaseParserRuleContext<'input,EnumeratorListContextExt<'input>>;

#[derive(Clone)]
pub struct EnumeratorListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for EnumeratorListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for EnumeratorListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_enumeratorList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_enumeratorList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for EnumeratorListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_enumeratorList(self);
	}
}

impl<'input> CustomRuleContext<'input> for EnumeratorListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_enumeratorList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_enumeratorList }
}
antlr_rust::tid!{EnumeratorListContextExt<'a>}

impl<'input> EnumeratorListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<EnumeratorListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,EnumeratorListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait EnumeratorListContextAttrs<'input>: CParserContext<'input> + BorrowMut<EnumeratorListContextExt<'input>>{

fn enumerator_all(&self) ->  Vec<Rc<EnumeratorContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn enumerator(&self, i: usize) -> Option<Rc<EnumeratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Comma in current rule
fn Comma_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Comma, starting from 0.
/// Returns `None` if number of children corresponding to token Comma is less or equal than `i`.
fn Comma(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, i)
}

}

impl<'input> EnumeratorListContextAttrs<'input> for EnumeratorListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn enumeratorList(&mut self,)
	-> Result<Rc<EnumeratorListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = EnumeratorListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 80, RULE_enumeratorList);
        let mut _localctx: Rc<EnumeratorListContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			let mut _alt: isize;
			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule enumerator*/
			recog.base.set_state(520);
			recog.enumerator()?;

			recog.base.set_state(525);
			recog.err_handler.sync(&mut recog.base)?;
			_alt = recog.interpreter.adaptive_predict(41,&mut recog.base)?;
			while { _alt!=2 && _alt!=INVALID_ALT } {
				if _alt==1 {
					{
					{
					recog.base.set_state(521);
					recog.base.match_token(Comma,&mut recog.err_handler)?;

					/*InvokeRule enumerator*/
					recog.base.set_state(522);
					recog.enumerator()?;

					}
					} 
				}
				recog.base.set_state(527);
				recog.err_handler.sync(&mut recog.base)?;
				_alt = recog.interpreter.adaptive_predict(41,&mut recog.base)?;
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- enumerator ----------------
pub type EnumeratorContextAll<'input> = EnumeratorContext<'input>;


pub type EnumeratorContext<'input> = BaseParserRuleContext<'input,EnumeratorContextExt<'input>>;

#[derive(Clone)]
pub struct EnumeratorContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for EnumeratorContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for EnumeratorContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_enumerator(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_enumerator(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for EnumeratorContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_enumerator(self);
	}
}

impl<'input> CustomRuleContext<'input> for EnumeratorContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_enumerator }
	//fn type_rule_index() -> usize where Self: Sized { RULE_enumerator }
}
antlr_rust::tid!{EnumeratorContextExt<'a>}

impl<'input> EnumeratorContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<EnumeratorContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,EnumeratorContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait EnumeratorContextAttrs<'input>: CParserContext<'input> + BorrowMut<EnumeratorContextExt<'input>>{

fn enumerationConstant(&self) -> Option<Rc<EnumerationConstantContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Assign
/// Returns `None` if there is no child corresponding to token Assign
fn Assign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Assign, 0)
}
fn constantExpression(&self) -> Option<Rc<ConstantExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> EnumeratorContextAttrs<'input> for EnumeratorContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn enumerator(&mut self,)
	-> Result<Rc<EnumeratorContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = EnumeratorContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 82, RULE_enumerator);
        let mut _localctx: Rc<EnumeratorContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule enumerationConstant*/
			recog.base.set_state(528);
			recog.enumerationConstant()?;

			recog.base.set_state(531);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if _la==Assign {
				{
				recog.base.set_state(529);
				recog.base.match_token(Assign,&mut recog.err_handler)?;

				/*InvokeRule constantExpression*/
				recog.base.set_state(530);
				recog.constantExpression()?;

				}
			}

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- enumerationConstant ----------------
pub type EnumerationConstantContextAll<'input> = EnumerationConstantContext<'input>;


pub type EnumerationConstantContext<'input> = BaseParserRuleContext<'input,EnumerationConstantContextExt<'input>>;

#[derive(Clone)]
pub struct EnumerationConstantContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for EnumerationConstantContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for EnumerationConstantContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_enumerationConstant(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_enumerationConstant(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for EnumerationConstantContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_enumerationConstant(self);
	}
}

impl<'input> CustomRuleContext<'input> for EnumerationConstantContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_enumerationConstant }
	//fn type_rule_index() -> usize where Self: Sized { RULE_enumerationConstant }
}
antlr_rust::tid!{EnumerationConstantContextExt<'a>}

impl<'input> EnumerationConstantContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<EnumerationConstantContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,EnumerationConstantContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait EnumerationConstantContextAttrs<'input>: CParserContext<'input> + BorrowMut<EnumerationConstantContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Identifier
/// Returns `None` if there is no child corresponding to token Identifier
fn Identifier(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, 0)
}

}

impl<'input> EnumerationConstantContextAttrs<'input> for EnumerationConstantContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn enumerationConstant(&mut self,)
	-> Result<Rc<EnumerationConstantContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = EnumerationConstantContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 84, RULE_enumerationConstant);
        let mut _localctx: Rc<EnumerationConstantContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(533);
			recog.base.match_token(Identifier,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- atomicTypeSpecifier ----------------
pub type AtomicTypeSpecifierContextAll<'input> = AtomicTypeSpecifierContext<'input>;


pub type AtomicTypeSpecifierContext<'input> = BaseParserRuleContext<'input,AtomicTypeSpecifierContextExt<'input>>;

#[derive(Clone)]
pub struct AtomicTypeSpecifierContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for AtomicTypeSpecifierContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for AtomicTypeSpecifierContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_atomicTypeSpecifier(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_atomicTypeSpecifier(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for AtomicTypeSpecifierContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_atomicTypeSpecifier(self);
	}
}

impl<'input> CustomRuleContext<'input> for AtomicTypeSpecifierContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_atomicTypeSpecifier }
	//fn type_rule_index() -> usize where Self: Sized { RULE_atomicTypeSpecifier }
}
antlr_rust::tid!{AtomicTypeSpecifierContextExt<'a>}

impl<'input> AtomicTypeSpecifierContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<AtomicTypeSpecifierContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,AtomicTypeSpecifierContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait AtomicTypeSpecifierContextAttrs<'input>: CParserContext<'input> + BorrowMut<AtomicTypeSpecifierContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Atomic
/// Returns `None` if there is no child corresponding to token Atomic
fn Atomic(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Atomic, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn typeName(&self) -> Option<Rc<TypeNameContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}

}

impl<'input> AtomicTypeSpecifierContextAttrs<'input> for AtomicTypeSpecifierContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn atomicTypeSpecifier(&mut self,)
	-> Result<Rc<AtomicTypeSpecifierContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = AtomicTypeSpecifierContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 86, RULE_atomicTypeSpecifier);
        let mut _localctx: Rc<AtomicTypeSpecifierContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(535);
			recog.base.match_token(Atomic,&mut recog.err_handler)?;

			recog.base.set_state(536);
			recog.base.match_token(LeftParen,&mut recog.err_handler)?;

			/*InvokeRule typeName*/
			recog.base.set_state(537);
			recog.typeName()?;

			recog.base.set_state(538);
			recog.base.match_token(RightParen,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- typeQualifier ----------------
pub type TypeQualifierContextAll<'input> = TypeQualifierContext<'input>;


pub type TypeQualifierContext<'input> = BaseParserRuleContext<'input,TypeQualifierContextExt<'input>>;

#[derive(Clone)]
pub struct TypeQualifierContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for TypeQualifierContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for TypeQualifierContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_typeQualifier(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_typeQualifier(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for TypeQualifierContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_typeQualifier(self);
	}
}

impl<'input> CustomRuleContext<'input> for TypeQualifierContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_typeQualifier }
	//fn type_rule_index() -> usize where Self: Sized { RULE_typeQualifier }
}
antlr_rust::tid!{TypeQualifierContextExt<'a>}

impl<'input> TypeQualifierContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<TypeQualifierContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,TypeQualifierContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait TypeQualifierContextAttrs<'input>: CParserContext<'input> + BorrowMut<TypeQualifierContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Const
/// Returns `None` if there is no child corresponding to token Const
fn Const(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Const, 0)
}
/// Retrieves first TerminalNode corresponding to token Restrict
/// Returns `None` if there is no child corresponding to token Restrict
fn Restrict(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Restrict, 0)
}
/// Retrieves first TerminalNode corresponding to token Volatile
/// Returns `None` if there is no child corresponding to token Volatile
fn Volatile(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Volatile, 0)
}
/// Retrieves first TerminalNode corresponding to token Atomic
/// Returns `None` if there is no child corresponding to token Atomic
fn Atomic(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Atomic, 0)
}

}

impl<'input> TypeQualifierContextAttrs<'input> for TypeQualifierContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn typeQualifier(&mut self,)
	-> Result<Rc<TypeQualifierContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = TypeQualifierContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 88, RULE_typeQualifier);
        let mut _localctx: Rc<TypeQualifierContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(540);
			_la = recog.base.input.la(1);
			if { !(_la==Const || ((((_la - 38)) & !0x3f) == 0 && ((1usize << (_la - 38)) & ((1usize << (Restrict - 38)) | (1usize << (Volatile - 38)) | (1usize << (Atomic - 38)))) != 0)) } {
				recog.err_handler.recover_inline(&mut recog.base)?;

			}
			else {
				if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
				recog.err_handler.report_match(&mut recog.base);
				recog.base.consume(&mut recog.err_handler);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- functionSpecifier ----------------
pub type FunctionSpecifierContextAll<'input> = FunctionSpecifierContext<'input>;


pub type FunctionSpecifierContext<'input> = BaseParserRuleContext<'input,FunctionSpecifierContextExt<'input>>;

#[derive(Clone)]
pub struct FunctionSpecifierContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for FunctionSpecifierContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for FunctionSpecifierContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_functionSpecifier(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_functionSpecifier(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for FunctionSpecifierContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_functionSpecifier(self);
	}
}

impl<'input> CustomRuleContext<'input> for FunctionSpecifierContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_functionSpecifier }
	//fn type_rule_index() -> usize where Self: Sized { RULE_functionSpecifier }
}
antlr_rust::tid!{FunctionSpecifierContextExt<'a>}

impl<'input> FunctionSpecifierContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<FunctionSpecifierContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,FunctionSpecifierContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait FunctionSpecifierContextAttrs<'input>: CParserContext<'input> + BorrowMut<FunctionSpecifierContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Inline
/// Returns `None` if there is no child corresponding to token Inline
fn Inline(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Inline, 0)
}
/// Retrieves first TerminalNode corresponding to token Noreturn
/// Returns `None` if there is no child corresponding to token Noreturn
fn Noreturn(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Noreturn, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
/// Retrieves first TerminalNode corresponding to token Identifier
/// Returns `None` if there is no child corresponding to token Identifier
fn Identifier(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, 0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}

}

impl<'input> FunctionSpecifierContextAttrs<'input> for FunctionSpecifierContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn functionSpecifier(&mut self,)
	-> Result<Rc<FunctionSpecifierContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = FunctionSpecifierContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 90, RULE_functionSpecifier);
        let mut _localctx: Rc<FunctionSpecifierContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(550);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 Inline 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					recog.base.set_state(542);
					recog.base.match_token(Inline,&mut recog.err_handler)?;

					}
				}

			 Noreturn 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					recog.base.set_state(543);
					recog.base.match_token(Noreturn,&mut recog.err_handler)?;

					}
				}

			 T__5 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 3);
					recog.base.enter_outer_alt(None, 3);
					{
					recog.base.set_state(544);
					recog.base.match_token(T__5,&mut recog.err_handler)?;

					}
				}

			 T__6 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 4);
					recog.base.enter_outer_alt(None, 4);
					{
					recog.base.set_state(545);
					recog.base.match_token(T__6,&mut recog.err_handler)?;

					}
				}

			 T__7 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 5);
					recog.base.enter_outer_alt(None, 5);
					{
					recog.base.set_state(546);
					recog.base.match_token(T__7,&mut recog.err_handler)?;

					recog.base.set_state(547);
					recog.base.match_token(LeftParen,&mut recog.err_handler)?;

					recog.base.set_state(548);
					recog.base.match_token(Identifier,&mut recog.err_handler)?;

					recog.base.set_state(549);
					recog.base.match_token(RightParen,&mut recog.err_handler)?;

					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- alignmentSpecifier ----------------
pub type AlignmentSpecifierContextAll<'input> = AlignmentSpecifierContext<'input>;


pub type AlignmentSpecifierContext<'input> = BaseParserRuleContext<'input,AlignmentSpecifierContextExt<'input>>;

#[derive(Clone)]
pub struct AlignmentSpecifierContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for AlignmentSpecifierContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for AlignmentSpecifierContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_alignmentSpecifier(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_alignmentSpecifier(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for AlignmentSpecifierContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_alignmentSpecifier(self);
	}
}

impl<'input> CustomRuleContext<'input> for AlignmentSpecifierContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_alignmentSpecifier }
	//fn type_rule_index() -> usize where Self: Sized { RULE_alignmentSpecifier }
}
antlr_rust::tid!{AlignmentSpecifierContextExt<'a>}

impl<'input> AlignmentSpecifierContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<AlignmentSpecifierContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,AlignmentSpecifierContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait AlignmentSpecifierContextAttrs<'input>: CParserContext<'input> + BorrowMut<AlignmentSpecifierContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Alignas
/// Returns `None` if there is no child corresponding to token Alignas
fn Alignas(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Alignas, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
fn typeName(&self) -> Option<Rc<TypeNameContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn constantExpression(&self) -> Option<Rc<ConstantExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> AlignmentSpecifierContextAttrs<'input> for AlignmentSpecifierContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn alignmentSpecifier(&mut self,)
	-> Result<Rc<AlignmentSpecifierContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = AlignmentSpecifierContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 92, RULE_alignmentSpecifier);
        let mut _localctx: Rc<AlignmentSpecifierContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(552);
			recog.base.match_token(Alignas,&mut recog.err_handler)?;

			recog.base.set_state(553);
			recog.base.match_token(LeftParen,&mut recog.err_handler)?;

			recog.base.set_state(556);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(44,&mut recog.base)? {
				1 =>{
					{
					/*InvokeRule typeName*/
					recog.base.set_state(554);
					recog.typeName()?;

					}
				}
			,
				2 =>{
					{
					/*InvokeRule constantExpression*/
					recog.base.set_state(555);
					recog.constantExpression()?;

					}
				}

				_ => {}
			}
			recog.base.set_state(558);
			recog.base.match_token(RightParen,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- declarator ----------------
pub type DeclaratorContextAll<'input> = DeclaratorContext<'input>;


pub type DeclaratorContext<'input> = BaseParserRuleContext<'input,DeclaratorContextExt<'input>>;

#[derive(Clone)]
pub struct DeclaratorContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for DeclaratorContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for DeclaratorContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_declarator(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_declarator(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for DeclaratorContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_declarator(self);
	}
}

impl<'input> CustomRuleContext<'input> for DeclaratorContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_declarator }
	//fn type_rule_index() -> usize where Self: Sized { RULE_declarator }
}
antlr_rust::tid!{DeclaratorContextExt<'a>}

impl<'input> DeclaratorContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<DeclaratorContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,DeclaratorContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait DeclaratorContextAttrs<'input>: CParserContext<'input> + BorrowMut<DeclaratorContextExt<'input>>{

fn directDeclarator(&self) -> Option<Rc<DirectDeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn pointer(&self) -> Option<Rc<PointerContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> DeclaratorContextAttrs<'input> for DeclaratorContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn declarator(&mut self,)
	-> Result<Rc<DeclaratorContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = DeclaratorContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 94, RULE_declarator);
        let mut _localctx: Rc<DeclaratorContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(561);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if _la==Star || _la==Caret {
				{
				/*InvokeRule pointer*/
				recog.base.set_state(560);
				recog.pointer()?;

				}
			}

			/*InvokeRule directDeclarator*/
			recog.base.set_state(563);
			recog.directDeclarator_rec(0)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- directDeclarator ----------------
pub type DirectDeclaratorContextAll<'input> = DirectDeclaratorContext<'input>;


pub type DirectDeclaratorContext<'input> = BaseParserRuleContext<'input,DirectDeclaratorContextExt<'input>>;

#[derive(Clone)]
pub struct DirectDeclaratorContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for DirectDeclaratorContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for DirectDeclaratorContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_directDeclarator(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_directDeclarator(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for DirectDeclaratorContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_directDeclarator(self);
	}
}

impl<'input> CustomRuleContext<'input> for DirectDeclaratorContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_directDeclarator }
	//fn type_rule_index() -> usize where Self: Sized { RULE_directDeclarator }
}
antlr_rust::tid!{DirectDeclaratorContextExt<'a>}

impl<'input> DirectDeclaratorContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<DirectDeclaratorContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,DirectDeclaratorContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait DirectDeclaratorContextAttrs<'input>: CParserContext<'input> + BorrowMut<DirectDeclaratorContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Identifier
/// Returns `None` if there is no child corresponding to token Identifier
fn Identifier(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn declarator(&self) -> Option<Rc<DeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
/// Retrieves first TerminalNode corresponding to token Colon
/// Returns `None` if there is no child corresponding to token Colon
fn Colon(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Colon, 0)
}
/// Retrieves first TerminalNode corresponding to token DigitSequence
/// Returns `None` if there is no child corresponding to token DigitSequence
fn DigitSequence(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(DigitSequence, 0)
}
fn vcSpecificModifer(&self) -> Option<Rc<VcSpecificModiferContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn directDeclarator(&self) -> Option<Rc<DirectDeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token LeftBracket
/// Returns `None` if there is no child corresponding to token LeftBracket
fn LeftBracket(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftBracket, 0)
}
/// Retrieves first TerminalNode corresponding to token RightBracket
/// Returns `None` if there is no child corresponding to token RightBracket
fn RightBracket(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightBracket, 0)
}
fn typeQualifierList(&self) -> Option<Rc<TypeQualifierListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn assignmentExpression(&self) -> Option<Rc<AssignmentExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Star
/// Returns `None` if there is no child corresponding to token Star
fn Star(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Star, 0)
}
fn parameterTypeList(&self) -> Option<Rc<ParameterTypeListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn identifierList(&self) -> Option<Rc<IdentifierListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> DirectDeclaratorContextAttrs<'input> for DirectDeclaratorContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn  directDeclarator(&mut self,)
	-> Result<Rc<DirectDeclaratorContextAll<'input>>,ANTLRError> {
		self.directDeclarator_rec(0)
	}

	fn directDeclarator_rec(&mut self, _p: isize)
	-> Result<Rc<DirectDeclaratorContextAll<'input>>,ANTLRError> {
		let recog = self;
		let _parentctx = recog.ctx.take();
		let _parentState = recog.base.get_state();
		let mut _localctx = DirectDeclaratorContextExt::new(_parentctx.clone(), recog.base.get_state());
		recog.base.enter_recursion_rule(_localctx.clone(), 96, RULE_directDeclarator, _p);
	    let mut _localctx: Rc<DirectDeclaratorContextAll> = _localctx;
        let mut _prevctx = _localctx.clone();
		let _startState = 96;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {
			let mut _alt: isize;
			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(582);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(46,&mut recog.base)? {
				1 =>{
					{
					recog.base.set_state(566);
					recog.base.match_token(Identifier,&mut recog.err_handler)?;

					}
				}
			,
				2 =>{
					{
					recog.base.set_state(567);
					recog.base.match_token(LeftParen,&mut recog.err_handler)?;

					/*InvokeRule declarator*/
					recog.base.set_state(568);
					recog.declarator()?;

					recog.base.set_state(569);
					recog.base.match_token(RightParen,&mut recog.err_handler)?;

					}
				}
			,
				3 =>{
					{
					recog.base.set_state(571);
					recog.base.match_token(Identifier,&mut recog.err_handler)?;

					recog.base.set_state(572);
					recog.base.match_token(Colon,&mut recog.err_handler)?;

					recog.base.set_state(573);
					recog.base.match_token(DigitSequence,&mut recog.err_handler)?;

					}
				}
			,
				4 =>{
					{
					/*InvokeRule vcSpecificModifer*/
					recog.base.set_state(574);
					recog.vcSpecificModifer()?;

					recog.base.set_state(575);
					recog.base.match_token(Identifier,&mut recog.err_handler)?;

					}
				}
			,
				5 =>{
					{
					recog.base.set_state(577);
					recog.base.match_token(LeftParen,&mut recog.err_handler)?;

					/*InvokeRule vcSpecificModifer*/
					recog.base.set_state(578);
					recog.vcSpecificModifer()?;

					/*InvokeRule declarator*/
					recog.base.set_state(579);
					recog.declarator()?;

					recog.base.set_state(580);
					recog.base.match_token(RightParen,&mut recog.err_handler)?;

					}
				}

				_ => {}
			}

			let tmp = recog.input.lt(-1).cloned();
			recog.ctx.as_ref().unwrap().set_stop(tmp);
			recog.base.set_state(613);
			recog.err_handler.sync(&mut recog.base)?;
			_alt = recog.interpreter.adaptive_predict(52,&mut recog.base)?;
			while { _alt!=2 && _alt!=INVALID_ALT } {
				if _alt==1 {
					recog.trigger_exit_rule_event();
					_prevctx = _localctx.clone();
					{
					recog.base.set_state(611);
					recog.err_handler.sync(&mut recog.base)?;
					match  recog.interpreter.adaptive_predict(51,&mut recog.base)? {
						1 =>{
							{
							/*recRuleAltStartAction*/
							let mut tmp = DirectDeclaratorContextExt::new(_parentctx.clone(), _parentState);
							recog.push_new_recursion_context(tmp.clone(), _startState, RULE_directDeclarator);
							_localctx = tmp;
							recog.base.set_state(584);
							if !({recog.precpred(None, 7)}) {
								Err(FailedPredicateError::new(&mut recog.base, Some("recog.precpred(None, 7)".to_owned()), None))?;
							}
							recog.base.set_state(585);
							recog.base.match_token(LeftBracket,&mut recog.err_handler)?;

							recog.base.set_state(587);
							recog.err_handler.sync(&mut recog.base)?;
							_la = recog.base.input.la(1);
							if _la==Const || ((((_la - 38)) & !0x3f) == 0 && ((1usize << (_la - 38)) & ((1usize << (Restrict - 38)) | (1usize << (Volatile - 38)) | (1usize << (Atomic - 38)))) != 0) {
								{
								/*InvokeRule typeQualifierList*/
								recog.base.set_state(586);
								recog.typeQualifierList()?;

								}
							}

							recog.base.set_state(590);
							recog.err_handler.sync(&mut recog.base)?;
							_la = recog.base.input.la(1);
							if ((((_la - 42)) & !0x3f) == 0 && ((1usize << (_la - 42)) & ((1usize << (Sizeof - 42)) | (1usize << (Alignof - 42)) | (1usize << (LeftParen - 42)))) != 0) || ((((_la - 74)) & !0x3f) == 0 && ((1usize << (_la - 74)) & ((1usize << (Plus - 74)) | (1usize << (PlusPlus - 74)) | (1usize << (Minus - 74)) | (1usize << (MinusMinus - 74)) | (1usize << (Star - 74)) | (1usize << (And - 74)) | (1usize << (Not - 74)) | (1usize << (Tilde - 74)))) != 0) || ((((_la - 108)) & !0x3f) == 0 && ((1usize << (_la - 108)) & ((1usize << (Identifier - 108)) | (1usize << (Constant - 108)) | (1usize << (DigitSequence - 108)) | (1usize << (StringLiteral - 108)))) != 0) {
								{
								/*InvokeRule assignmentExpression*/
								recog.base.set_state(589);
								recog.assignmentExpression()?;

								}
							}

							recog.base.set_state(592);
							recog.base.match_token(RightBracket,&mut recog.err_handler)?;

							}
						}
					,
						2 =>{
							{
							/*recRuleAltStartAction*/
							let mut tmp = DirectDeclaratorContextExt::new(_parentctx.clone(), _parentState);
							recog.push_new_recursion_context(tmp.clone(), _startState, RULE_directDeclarator);
							_localctx = tmp;
							recog.base.set_state(593);
							if !({recog.precpred(None, 6)}) {
								Err(FailedPredicateError::new(&mut recog.base, Some("recog.precpred(None, 6)".to_owned()), None))?;
							}
							recog.base.set_state(594);
							recog.base.match_token(LeftBracket,&mut recog.err_handler)?;

							recog.base.set_state(596);
							recog.err_handler.sync(&mut recog.base)?;
							_la = recog.base.input.la(1);
							if _la==Const || ((((_la - 38)) & !0x3f) == 0 && ((1usize << (_la - 38)) & ((1usize << (Restrict - 38)) | (1usize << (Volatile - 38)) | (1usize << (Atomic - 38)))) != 0) {
								{
								/*InvokeRule typeQualifierList*/
								recog.base.set_state(595);
								recog.typeQualifierList()?;

								}
							}

							recog.base.set_state(598);
							recog.base.match_token(Star,&mut recog.err_handler)?;

							recog.base.set_state(599);
							recog.base.match_token(RightBracket,&mut recog.err_handler)?;

							}
						}
					,
						3 =>{
							{
							/*recRuleAltStartAction*/
							let mut tmp = DirectDeclaratorContextExt::new(_parentctx.clone(), _parentState);
							recog.push_new_recursion_context(tmp.clone(), _startState, RULE_directDeclarator);
							_localctx = tmp;
							recog.base.set_state(600);
							if !({recog.precpred(None, 5)}) {
								Err(FailedPredicateError::new(&mut recog.base, Some("recog.precpred(None, 5)".to_owned()), None))?;
							}
							recog.base.set_state(601);
							recog.base.match_token(LeftParen,&mut recog.err_handler)?;

							/*InvokeRule parameterTypeList*/
							recog.base.set_state(602);
							recog.parameterTypeList()?;

							recog.base.set_state(603);
							recog.base.match_token(RightParen,&mut recog.err_handler)?;

							}
						}
					,
						4 =>{
							{
							/*recRuleAltStartAction*/
							let mut tmp = DirectDeclaratorContextExt::new(_parentctx.clone(), _parentState);
							recog.push_new_recursion_context(tmp.clone(), _startState, RULE_directDeclarator);
							_localctx = tmp;
							recog.base.set_state(605);
							if !({recog.precpred(None, 4)}) {
								Err(FailedPredicateError::new(&mut recog.base, Some("recog.precpred(None, 4)".to_owned()), None))?;
							}
							recog.base.set_state(606);
							recog.base.match_token(LeftParen,&mut recog.err_handler)?;

							recog.base.set_state(608);
							recog.err_handler.sync(&mut recog.base)?;
							_la = recog.base.input.la(1);
							if _la==Identifier {
								{
								/*InvokeRule identifierList*/
								recog.base.set_state(607);
								recog.identifierList()?;

								}
							}

							recog.base.set_state(610);
							recog.base.match_token(RightParen,&mut recog.err_handler)?;

							}
						}

						_ => {}
					}
					} 
				}
				recog.base.set_state(615);
				recog.err_handler.sync(&mut recog.base)?;
				_alt = recog.interpreter.adaptive_predict(52,&mut recog.base)?;
			}
			}
			Ok(())
		})();
		match result {
		Ok(_) => {},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re)=>{
			//_localctx.exception = re;
			recog.err_handler.report_error(&mut recog.base, re);
	        recog.err_handler.recover(&mut recog.base, re)?;}
		}
		recog.base.unroll_recursion_context(_parentctx);

		Ok(_localctx)
	}
}
//------------------- vcSpecificModifer ----------------
pub type VcSpecificModiferContextAll<'input> = VcSpecificModiferContext<'input>;


pub type VcSpecificModiferContext<'input> = BaseParserRuleContext<'input,VcSpecificModiferContextExt<'input>>;

#[derive(Clone)]
pub struct VcSpecificModiferContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for VcSpecificModiferContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for VcSpecificModiferContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_vcSpecificModifer(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_vcSpecificModifer(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for VcSpecificModiferContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_vcSpecificModifer(self);
	}
}

impl<'input> CustomRuleContext<'input> for VcSpecificModiferContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_vcSpecificModifer }
	//fn type_rule_index() -> usize where Self: Sized { RULE_vcSpecificModifer }
}
antlr_rust::tid!{VcSpecificModiferContextExt<'a>}

impl<'input> VcSpecificModiferContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<VcSpecificModiferContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,VcSpecificModiferContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait VcSpecificModiferContextAttrs<'input>: CParserContext<'input> + BorrowMut<VcSpecificModiferContextExt<'input>>{


}

impl<'input> VcSpecificModiferContextAttrs<'input> for VcSpecificModiferContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn vcSpecificModifer(&mut self,)
	-> Result<Rc<VcSpecificModiferContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = VcSpecificModiferContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 98, RULE_vcSpecificModifer);
        let mut _localctx: Rc<VcSpecificModiferContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(616);
			_la = recog.base.input.la(1);
			if { !((((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__6) | (1usize << T__8) | (1usize << T__9) | (1usize << T__10) | (1usize << T__11) | (1usize << T__12))) != 0)) } {
				recog.err_handler.recover_inline(&mut recog.base)?;

			}
			else {
				if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
				recog.err_handler.report_match(&mut recog.base);
				recog.base.consume(&mut recog.err_handler);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- nestedParenthesesBlock ----------------
pub type NestedParenthesesBlockContextAll<'input> = NestedParenthesesBlockContext<'input>;


pub type NestedParenthesesBlockContext<'input> = BaseParserRuleContext<'input,NestedParenthesesBlockContextExt<'input>>;

#[derive(Clone)]
pub struct NestedParenthesesBlockContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for NestedParenthesesBlockContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for NestedParenthesesBlockContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_nestedParenthesesBlock(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_nestedParenthesesBlock(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for NestedParenthesesBlockContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_nestedParenthesesBlock(self);
	}
}

impl<'input> CustomRuleContext<'input> for NestedParenthesesBlockContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_nestedParenthesesBlock }
	//fn type_rule_index() -> usize where Self: Sized { RULE_nestedParenthesesBlock }
}
antlr_rust::tid!{NestedParenthesesBlockContextExt<'a>}

impl<'input> NestedParenthesesBlockContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<NestedParenthesesBlockContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,NestedParenthesesBlockContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait NestedParenthesesBlockContextAttrs<'input>: CParserContext<'input> + BorrowMut<NestedParenthesesBlockContextExt<'input>>{

/// Retrieves all `TerminalNode`s corresponding to token LeftParen in current rule
fn LeftParen_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token LeftParen, starting from 0.
/// Returns `None` if number of children corresponding to token LeftParen is less or equal than `i`.
fn LeftParen(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, i)
}
fn nestedParenthesesBlock_all(&self) ->  Vec<Rc<NestedParenthesesBlockContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn nestedParenthesesBlock(&self, i: usize) -> Option<Rc<NestedParenthesesBlockContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token RightParen in current rule
fn RightParen_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token RightParen, starting from 0.
/// Returns `None` if number of children corresponding to token RightParen is less or equal than `i`.
fn RightParen(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, i)
}

}

impl<'input> NestedParenthesesBlockContextAttrs<'input> for NestedParenthesesBlockContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn nestedParenthesesBlock(&mut self,)
	-> Result<Rc<NestedParenthesesBlockContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = NestedParenthesesBlockContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 100, RULE_nestedParenthesesBlock);
        let mut _localctx: Rc<NestedParenthesesBlockContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(625);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while (((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__0) | (1usize << T__1) | (1usize << T__2) | (1usize << T__3) | (1usize << T__4) | (1usize << T__5) | (1usize << T__6) | (1usize << T__7) | (1usize << T__8) | (1usize << T__9) | (1usize << T__10) | (1usize << T__11) | (1usize << T__12) | (1usize << T__13) | (1usize << T__14) | (1usize << T__15) | (1usize << Auto) | (1usize << Break) | (1usize << Case) | (1usize << Char) | (1usize << Const) | (1usize << Continue) | (1usize << Default) | (1usize << Do) | (1usize << Double) | (1usize << Else) | (1usize << Enum) | (1usize << Extern) | (1usize << Float) | (1usize << For) | (1usize << Goto))) != 0) || ((((_la - 32)) & !0x3f) == 0 && ((1usize << (_la - 32)) & ((1usize << (If - 32)) | (1usize << (Breakpoint - 32)) | (1usize << (Inline - 32)) | (1usize << (Int - 32)) | (1usize << (Long - 32)) | (1usize << (Register - 32)) | (1usize << (Restrict - 32)) | (1usize << (Return - 32)) | (1usize << (Short - 32)) | (1usize << (Signed - 32)) | (1usize << (Sizeof - 32)) | (1usize << (Static - 32)) | (1usize << (Struct - 32)) | (1usize << (Switch - 32)) | (1usize << (Typedef - 32)) | (1usize << (Union - 32)) | (1usize << (Unsigned - 32)) | (1usize << (Void - 32)) | (1usize << (Volatile - 32)) | (1usize << (While - 32)) | (1usize << (Alignas - 32)) | (1usize << (Alignof - 32)) | (1usize << (Atomic - 32)) | (1usize << (Bool - 32)) | (1usize << (Complex - 32)) | (1usize << (Generic - 32)) | (1usize << (Imaginary - 32)) | (1usize << (Noreturn - 32)) | (1usize << (StaticAssert - 32)) | (1usize << (ThreadLocal - 32)) | (1usize << (LeftParen - 32)))) != 0) || ((((_la - 64)) & !0x3f) == 0 && ((1usize << (_la - 64)) & ((1usize << (LeftBracket - 64)) | (1usize << (RightBracket - 64)) | (1usize << (LeftBrace - 64)) | (1usize << (RightBrace - 64)) | (1usize << (Less - 64)) | (1usize << (LessEqual - 64)) | (1usize << (Greater - 64)) | (1usize << (GreaterEqual - 64)) | (1usize << (LeftShift - 64)) | (1usize << (RightShift - 64)) | (1usize << (Plus - 64)) | (1usize << (PlusPlus - 64)) | (1usize << (Minus - 64)) | (1usize << (MinusMinus - 64)) | (1usize << (Star - 64)) | (1usize << (Div - 64)) | (1usize << (Mod - 64)) | (1usize << (And - 64)) | (1usize << (Or - 64)) | (1usize << (AndAnd - 64)) | (1usize << (OrOr - 64)) | (1usize << (Caret - 64)) | (1usize << (Not - 64)) | (1usize << (Tilde - 64)) | (1usize << (Question - 64)) | (1usize << (Colon - 64)) | (1usize << (Semi - 64)) | (1usize << (Comma - 64)) | (1usize << (Assign - 64)) | (1usize << (MulAssign - 64)) | (1usize << (DivAssign - 64)) | (1usize << (ModAssign - 64)))) != 0) || ((((_la - 96)) & !0x3f) == 0 && ((1usize << (_la - 96)) & ((1usize << (PlusAssign - 96)) | (1usize << (MinusAssign - 96)) | (1usize << (LeftShiftAssign - 96)) | (1usize << (RightShiftAssign - 96)) | (1usize << (AndAssign - 96)) | (1usize << (XorAssign - 96)) | (1usize << (OrAssign - 96)) | (1usize << (Equal - 96)) | (1usize << (NotEqual - 96)) | (1usize << (Arrow - 96)) | (1usize << (Dot - 96)) | (1usize << (Ellipsis - 96)) | (1usize << (Identifier - 96)) | (1usize << (Constant - 96)) | (1usize << (DigitSequence - 96)) | (1usize << (StringLiteral - 96)) | (1usize << (MultiLineMacro - 96)) | (1usize << (Directive - 96)) | (1usize << (AsmBlock - 96)) | (1usize << (Whitespace - 96)) | (1usize << (Newline - 96)) | (1usize << (BlockComment - 96)) | (1usize << (LineComment - 96)))) != 0) {
				{
				recog.base.set_state(623);
				recog.err_handler.sync(&mut recog.base)?;
				match recog.base.input.la(1) {
				 T__0 | T__1 | T__2 | T__3 | T__4 | T__5 | T__6 | T__7 | T__8 | T__9 |
				 T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | Auto | Break | Case |
				 Char | Const | Continue | Default | Do | Double | Else | Enum | Extern |
				 Float | For | Goto | If | Breakpoint | Inline | Int | Long | Register |
				 Restrict | Return | Short | Signed | Sizeof | Static | Struct | Switch |
				 Typedef | Union | Unsigned | Void | Volatile | While | Alignas | Alignof |
				 Atomic | Bool | Complex | Generic | Imaginary | Noreturn | StaticAssert |
				 ThreadLocal | LeftBracket | RightBracket | LeftBrace | RightBrace |
				 Less | LessEqual | Greater | GreaterEqual | LeftShift | RightShift |
				 Plus | PlusPlus | Minus | MinusMinus | Star | Div | Mod | And | Or |
				 AndAnd | OrOr | Caret | Not | Tilde | Question | Colon | Semi | Comma |
				 Assign | MulAssign | DivAssign | ModAssign | PlusAssign | MinusAssign |
				 LeftShiftAssign | RightShiftAssign | AndAssign | XorAssign | OrAssign |
				 Equal | NotEqual | Arrow | Dot | Ellipsis | Identifier | Constant |
				 DigitSequence | StringLiteral | MultiLineMacro | Directive | AsmBlock |
				 Whitespace | Newline | BlockComment | LineComment 
					=> {
						{
						recog.base.set_state(618);
						_la = recog.base.input.la(1);
						if { _la <= 0 || (_la==LeftParen || _la==RightParen) } {
							recog.err_handler.recover_inline(&mut recog.base)?;

						}
						else {
							if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
							recog.err_handler.report_match(&mut recog.base);
							recog.base.consume(&mut recog.err_handler);
						}
						}
					}

				 LeftParen 
					=> {
						{
						recog.base.set_state(619);
						recog.base.match_token(LeftParen,&mut recog.err_handler)?;

						/*InvokeRule nestedParenthesesBlock*/
						recog.base.set_state(620);
						recog.nestedParenthesesBlock()?;

						recog.base.set_state(621);
						recog.base.match_token(RightParen,&mut recog.err_handler)?;

						}
					}

					_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
				}
				}
				recog.base.set_state(627);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- pointer ----------------
pub type PointerContextAll<'input> = PointerContext<'input>;


pub type PointerContext<'input> = BaseParserRuleContext<'input,PointerContextExt<'input>>;

#[derive(Clone)]
pub struct PointerContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for PointerContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for PointerContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_pointer(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_pointer(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for PointerContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_pointer(self);
	}
}

impl<'input> CustomRuleContext<'input> for PointerContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_pointer }
	//fn type_rule_index() -> usize where Self: Sized { RULE_pointer }
}
antlr_rust::tid!{PointerContextExt<'a>}

impl<'input> PointerContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<PointerContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,PointerContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait PointerContextAttrs<'input>: CParserContext<'input> + BorrowMut<PointerContextExt<'input>>{

/// Retrieves all `TerminalNode`s corresponding to token Star in current rule
fn Star_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Star, starting from 0.
/// Returns `None` if number of children corresponding to token Star is less or equal than `i`.
fn Star(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Star, i)
}
/// Retrieves all `TerminalNode`s corresponding to token Caret in current rule
fn Caret_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Caret, starting from 0.
/// Returns `None` if number of children corresponding to token Caret is less or equal than `i`.
fn Caret(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Caret, i)
}
fn typeQualifierList_all(&self) ->  Vec<Rc<TypeQualifierListContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn typeQualifierList(&self, i: usize) -> Option<Rc<TypeQualifierListContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}

}

impl<'input> PointerContextAttrs<'input> for PointerContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn pointer(&mut self,)
	-> Result<Rc<PointerContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = PointerContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 102, RULE_pointer);
        let mut _localctx: Rc<PointerContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(632); 
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			loop {
				{
				{
				recog.base.set_state(628);
				_la = recog.base.input.la(1);
				if { !(_la==Star || _la==Caret) } {
					recog.err_handler.recover_inline(&mut recog.base)?;

				}
				else {
					if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
					recog.err_handler.report_match(&mut recog.base);
					recog.base.consume(&mut recog.err_handler);
				}
				recog.base.set_state(630);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
				if _la==Const || ((((_la - 38)) & !0x3f) == 0 && ((1usize << (_la - 38)) & ((1usize << (Restrict - 38)) | (1usize << (Volatile - 38)) | (1usize << (Atomic - 38)))) != 0) {
					{
					/*InvokeRule typeQualifierList*/
					recog.base.set_state(629);
					recog.typeQualifierList()?;

					}
				}

				}
				}
				recog.base.set_state(634); 
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
				if !(_la==Star || _la==Caret) {break}
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- typeQualifierList ----------------
pub type TypeQualifierListContextAll<'input> = TypeQualifierListContext<'input>;


pub type TypeQualifierListContext<'input> = BaseParserRuleContext<'input,TypeQualifierListContextExt<'input>>;

#[derive(Clone)]
pub struct TypeQualifierListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for TypeQualifierListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for TypeQualifierListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_typeQualifierList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_typeQualifierList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for TypeQualifierListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_typeQualifierList(self);
	}
}

impl<'input> CustomRuleContext<'input> for TypeQualifierListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_typeQualifierList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_typeQualifierList }
}
antlr_rust::tid!{TypeQualifierListContextExt<'a>}

impl<'input> TypeQualifierListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<TypeQualifierListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,TypeQualifierListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait TypeQualifierListContextAttrs<'input>: CParserContext<'input> + BorrowMut<TypeQualifierListContextExt<'input>>{

fn typeQualifier_all(&self) ->  Vec<Rc<TypeQualifierContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn typeQualifier(&self, i: usize) -> Option<Rc<TypeQualifierContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}

}

impl<'input> TypeQualifierListContextAttrs<'input> for TypeQualifierListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn typeQualifierList(&mut self,)
	-> Result<Rc<TypeQualifierListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = TypeQualifierListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 104, RULE_typeQualifierList);
        let mut _localctx: Rc<TypeQualifierListContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(637); 
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			loop {
				{
				{
				/*InvokeRule typeQualifier*/
				recog.base.set_state(636);
				recog.typeQualifier()?;

				}
				}
				recog.base.set_state(639); 
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
				if !(_la==Const || ((((_la - 38)) & !0x3f) == 0 && ((1usize << (_la - 38)) & ((1usize << (Restrict - 38)) | (1usize << (Volatile - 38)) | (1usize << (Atomic - 38)))) != 0)) {break}
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- parameterTypeList ----------------
pub type ParameterTypeListContextAll<'input> = ParameterTypeListContext<'input>;


pub type ParameterTypeListContext<'input> = BaseParserRuleContext<'input,ParameterTypeListContextExt<'input>>;

#[derive(Clone)]
pub struct ParameterTypeListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ParameterTypeListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ParameterTypeListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_parameterTypeList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_parameterTypeList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ParameterTypeListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_parameterTypeList(self);
	}
}

impl<'input> CustomRuleContext<'input> for ParameterTypeListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_parameterTypeList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_parameterTypeList }
}
antlr_rust::tid!{ParameterTypeListContextExt<'a>}

impl<'input> ParameterTypeListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ParameterTypeListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ParameterTypeListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ParameterTypeListContextAttrs<'input>: CParserContext<'input> + BorrowMut<ParameterTypeListContextExt<'input>>{

fn parameterList(&self) -> Option<Rc<ParameterListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Comma
/// Returns `None` if there is no child corresponding to token Comma
fn Comma(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, 0)
}
/// Retrieves first TerminalNode corresponding to token Ellipsis
/// Returns `None` if there is no child corresponding to token Ellipsis
fn Ellipsis(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Ellipsis, 0)
}

}

impl<'input> ParameterTypeListContextAttrs<'input> for ParameterTypeListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn parameterTypeList(&mut self,)
	-> Result<Rc<ParameterTypeListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ParameterTypeListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 106, RULE_parameterTypeList);
        let mut _localctx: Rc<ParameterTypeListContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule parameterList*/
			recog.base.set_state(641);
			recog.parameterList()?;

			recog.base.set_state(644);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if _la==Comma {
				{
				recog.base.set_state(642);
				recog.base.match_token(Comma,&mut recog.err_handler)?;

				recog.base.set_state(643);
				recog.base.match_token(Ellipsis,&mut recog.err_handler)?;

				}
			}

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- parameterList ----------------
pub type ParameterListContextAll<'input> = ParameterListContext<'input>;


pub type ParameterListContext<'input> = BaseParserRuleContext<'input,ParameterListContextExt<'input>>;

#[derive(Clone)]
pub struct ParameterListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ParameterListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ParameterListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_parameterList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_parameterList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ParameterListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_parameterList(self);
	}
}

impl<'input> CustomRuleContext<'input> for ParameterListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_parameterList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_parameterList }
}
antlr_rust::tid!{ParameterListContextExt<'a>}

impl<'input> ParameterListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ParameterListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ParameterListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ParameterListContextAttrs<'input>: CParserContext<'input> + BorrowMut<ParameterListContextExt<'input>>{

fn parameterDeclaration_all(&self) ->  Vec<Rc<ParameterDeclarationContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn parameterDeclaration(&self, i: usize) -> Option<Rc<ParameterDeclarationContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Comma in current rule
fn Comma_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Comma, starting from 0.
/// Returns `None` if number of children corresponding to token Comma is less or equal than `i`.
fn Comma(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, i)
}

}

impl<'input> ParameterListContextAttrs<'input> for ParameterListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn parameterList(&mut self,)
	-> Result<Rc<ParameterListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ParameterListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 108, RULE_parameterList);
        let mut _localctx: Rc<ParameterListContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			let mut _alt: isize;
			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule parameterDeclaration*/
			recog.base.set_state(646);
			recog.parameterDeclaration()?;

			recog.base.set_state(651);
			recog.err_handler.sync(&mut recog.base)?;
			_alt = recog.interpreter.adaptive_predict(59,&mut recog.base)?;
			while { _alt!=2 && _alt!=INVALID_ALT } {
				if _alt==1 {
					{
					{
					recog.base.set_state(647);
					recog.base.match_token(Comma,&mut recog.err_handler)?;

					/*InvokeRule parameterDeclaration*/
					recog.base.set_state(648);
					recog.parameterDeclaration()?;

					}
					} 
				}
				recog.base.set_state(653);
				recog.err_handler.sync(&mut recog.base)?;
				_alt = recog.interpreter.adaptive_predict(59,&mut recog.base)?;
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- parameterDeclaration ----------------
pub type ParameterDeclarationContextAll<'input> = ParameterDeclarationContext<'input>;


pub type ParameterDeclarationContext<'input> = BaseParserRuleContext<'input,ParameterDeclarationContextExt<'input>>;

#[derive(Clone)]
pub struct ParameterDeclarationContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ParameterDeclarationContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ParameterDeclarationContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_parameterDeclaration(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_parameterDeclaration(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ParameterDeclarationContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_parameterDeclaration(self);
	}
}

impl<'input> CustomRuleContext<'input> for ParameterDeclarationContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_parameterDeclaration }
	//fn type_rule_index() -> usize where Self: Sized { RULE_parameterDeclaration }
}
antlr_rust::tid!{ParameterDeclarationContextExt<'a>}

impl<'input> ParameterDeclarationContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ParameterDeclarationContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ParameterDeclarationContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ParameterDeclarationContextAttrs<'input>: CParserContext<'input> + BorrowMut<ParameterDeclarationContextExt<'input>>{

fn declarationSpecifiers(&self) -> Option<Rc<DeclarationSpecifiersContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn declarator(&self) -> Option<Rc<DeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn declarationSpecifiers2(&self) -> Option<Rc<DeclarationSpecifiers2ContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn abstractDeclarator(&self) -> Option<Rc<AbstractDeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> ParameterDeclarationContextAttrs<'input> for ParameterDeclarationContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn parameterDeclaration(&mut self,)
	-> Result<Rc<ParameterDeclarationContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ParameterDeclarationContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 110, RULE_parameterDeclaration);
        let mut _localctx: Rc<ParameterDeclarationContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(661);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(61,&mut recog.base)? {
				1 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule declarationSpecifiers*/
					recog.base.set_state(654);
					recog.declarationSpecifiers()?;

					/*InvokeRule declarator*/
					recog.base.set_state(655);
					recog.declarator()?;

					}
				}
			,
				2 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					/*InvokeRule declarationSpecifiers2*/
					recog.base.set_state(657);
					recog.declarationSpecifiers2()?;

					recog.base.set_state(659);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if ((((_la - 62)) & !0x3f) == 0 && ((1usize << (_la - 62)) & ((1usize << (LeftParen - 62)) | (1usize << (LeftBracket - 62)) | (1usize << (Star - 62)) | (1usize << (Caret - 62)))) != 0) {
						{
						/*InvokeRule abstractDeclarator*/
						recog.base.set_state(658);
						recog.abstractDeclarator()?;

						}
					}

					}
				}

				_ => {}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- identifierList ----------------
pub type IdentifierListContextAll<'input> = IdentifierListContext<'input>;


pub type IdentifierListContext<'input> = BaseParserRuleContext<'input,IdentifierListContextExt<'input>>;

#[derive(Clone)]
pub struct IdentifierListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for IdentifierListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for IdentifierListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_identifierList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_identifierList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for IdentifierListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_identifierList(self);
	}
}

impl<'input> CustomRuleContext<'input> for IdentifierListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_identifierList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_identifierList }
}
antlr_rust::tid!{IdentifierListContextExt<'a>}

impl<'input> IdentifierListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<IdentifierListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,IdentifierListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait IdentifierListContextAttrs<'input>: CParserContext<'input> + BorrowMut<IdentifierListContextExt<'input>>{

/// Retrieves all `TerminalNode`s corresponding to token Identifier in current rule
fn Identifier_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Identifier, starting from 0.
/// Returns `None` if number of children corresponding to token Identifier is less or equal than `i`.
fn Identifier(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, i)
}
/// Retrieves all `TerminalNode`s corresponding to token Comma in current rule
fn Comma_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Comma, starting from 0.
/// Returns `None` if number of children corresponding to token Comma is less or equal than `i`.
fn Comma(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, i)
}

}

impl<'input> IdentifierListContextAttrs<'input> for IdentifierListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn identifierList(&mut self,)
	-> Result<Rc<IdentifierListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = IdentifierListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 112, RULE_identifierList);
        let mut _localctx: Rc<IdentifierListContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(663);
			recog.base.match_token(Identifier,&mut recog.err_handler)?;

			recog.base.set_state(668);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while _la==Comma {
				{
				{
				recog.base.set_state(664);
				recog.base.match_token(Comma,&mut recog.err_handler)?;

				recog.base.set_state(665);
				recog.base.match_token(Identifier,&mut recog.err_handler)?;

				}
				}
				recog.base.set_state(670);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- typeName ----------------
pub type TypeNameContextAll<'input> = TypeNameContext<'input>;


pub type TypeNameContext<'input> = BaseParserRuleContext<'input,TypeNameContextExt<'input>>;

#[derive(Clone)]
pub struct TypeNameContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for TypeNameContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for TypeNameContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_typeName(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_typeName(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for TypeNameContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_typeName(self);
	}
}

impl<'input> CustomRuleContext<'input> for TypeNameContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_typeName }
	//fn type_rule_index() -> usize where Self: Sized { RULE_typeName }
}
antlr_rust::tid!{TypeNameContextExt<'a>}

impl<'input> TypeNameContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<TypeNameContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,TypeNameContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait TypeNameContextAttrs<'input>: CParserContext<'input> + BorrowMut<TypeNameContextExt<'input>>{

fn specifierQualifierList(&self) -> Option<Rc<SpecifierQualifierListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn abstractDeclarator(&self) -> Option<Rc<AbstractDeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> TypeNameContextAttrs<'input> for TypeNameContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn typeName(&mut self,)
	-> Result<Rc<TypeNameContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = TypeNameContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 114, RULE_typeName);
        let mut _localctx: Rc<TypeNameContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule specifierQualifierList*/
			recog.base.set_state(671);
			recog.specifierQualifierList()?;

			recog.base.set_state(673);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if ((((_la - 62)) & !0x3f) == 0 && ((1usize << (_la - 62)) & ((1usize << (LeftParen - 62)) | (1usize << (LeftBracket - 62)) | (1usize << (Star - 62)) | (1usize << (Caret - 62)))) != 0) {
				{
				/*InvokeRule abstractDeclarator*/
				recog.base.set_state(672);
				recog.abstractDeclarator()?;

				}
			}

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- abstractDeclarator ----------------
pub type AbstractDeclaratorContextAll<'input> = AbstractDeclaratorContext<'input>;


pub type AbstractDeclaratorContext<'input> = BaseParserRuleContext<'input,AbstractDeclaratorContextExt<'input>>;

#[derive(Clone)]
pub struct AbstractDeclaratorContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for AbstractDeclaratorContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for AbstractDeclaratorContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_abstractDeclarator(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_abstractDeclarator(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for AbstractDeclaratorContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_abstractDeclarator(self);
	}
}

impl<'input> CustomRuleContext<'input> for AbstractDeclaratorContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_abstractDeclarator }
	//fn type_rule_index() -> usize where Self: Sized { RULE_abstractDeclarator }
}
antlr_rust::tid!{AbstractDeclaratorContextExt<'a>}

impl<'input> AbstractDeclaratorContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<AbstractDeclaratorContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,AbstractDeclaratorContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait AbstractDeclaratorContextAttrs<'input>: CParserContext<'input> + BorrowMut<AbstractDeclaratorContextExt<'input>>{

fn pointer(&self) -> Option<Rc<PointerContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn directAbstractDeclarator(&self) -> Option<Rc<DirectAbstractDeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> AbstractDeclaratorContextAttrs<'input> for AbstractDeclaratorContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn abstractDeclarator(&mut self,)
	-> Result<Rc<AbstractDeclaratorContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = AbstractDeclaratorContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 116, RULE_abstractDeclarator);
        let mut _localctx: Rc<AbstractDeclaratorContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(680);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(65,&mut recog.base)? {
				1 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule pointer*/
					recog.base.set_state(675);
					recog.pointer()?;

					}
				}
			,
				2 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					recog.base.set_state(677);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if _la==Star || _la==Caret {
						{
						/*InvokeRule pointer*/
						recog.base.set_state(676);
						recog.pointer()?;

						}
					}

					/*InvokeRule directAbstractDeclarator*/
					recog.base.set_state(679);
					recog.directAbstractDeclarator_rec(0)?;

					}
				}

				_ => {}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- directAbstractDeclarator ----------------
pub type DirectAbstractDeclaratorContextAll<'input> = DirectAbstractDeclaratorContext<'input>;


pub type DirectAbstractDeclaratorContext<'input> = BaseParserRuleContext<'input,DirectAbstractDeclaratorContextExt<'input>>;

#[derive(Clone)]
pub struct DirectAbstractDeclaratorContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for DirectAbstractDeclaratorContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for DirectAbstractDeclaratorContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_directAbstractDeclarator(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_directAbstractDeclarator(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for DirectAbstractDeclaratorContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_directAbstractDeclarator(self);
	}
}

impl<'input> CustomRuleContext<'input> for DirectAbstractDeclaratorContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_directAbstractDeclarator }
	//fn type_rule_index() -> usize where Self: Sized { RULE_directAbstractDeclarator }
}
antlr_rust::tid!{DirectAbstractDeclaratorContextExt<'a>}

impl<'input> DirectAbstractDeclaratorContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<DirectAbstractDeclaratorContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,DirectAbstractDeclaratorContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait DirectAbstractDeclaratorContextAttrs<'input>: CParserContext<'input> + BorrowMut<DirectAbstractDeclaratorContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn abstractDeclarator(&self) -> Option<Rc<AbstractDeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftBracket
/// Returns `None` if there is no child corresponding to token LeftBracket
fn LeftBracket(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftBracket, 0)
}
/// Retrieves first TerminalNode corresponding to token RightBracket
/// Returns `None` if there is no child corresponding to token RightBracket
fn RightBracket(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightBracket, 0)
}
fn typeQualifierList(&self) -> Option<Rc<TypeQualifierListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn assignmentExpression(&self) -> Option<Rc<AssignmentExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Static
/// Returns `None` if there is no child corresponding to token Static
fn Static(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Static, 0)
}
/// Retrieves first TerminalNode corresponding to token Star
/// Returns `None` if there is no child corresponding to token Star
fn Star(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Star, 0)
}
fn parameterTypeList(&self) -> Option<Rc<ParameterTypeListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn directAbstractDeclarator(&self) -> Option<Rc<DirectAbstractDeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> DirectAbstractDeclaratorContextAttrs<'input> for DirectAbstractDeclaratorContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn  directAbstractDeclarator(&mut self,)
	-> Result<Rc<DirectAbstractDeclaratorContextAll<'input>>,ANTLRError> {
		self.directAbstractDeclarator_rec(0)
	}

	fn directAbstractDeclarator_rec(&mut self, _p: isize)
	-> Result<Rc<DirectAbstractDeclaratorContextAll<'input>>,ANTLRError> {
		let recog = self;
		let _parentctx = recog.ctx.take();
		let _parentState = recog.base.get_state();
		let mut _localctx = DirectAbstractDeclaratorContextExt::new(_parentctx.clone(), recog.base.get_state());
		recog.base.enter_recursion_rule(_localctx.clone(), 118, RULE_directAbstractDeclarator, _p);
	    let mut _localctx: Rc<DirectAbstractDeclaratorContextAll> = _localctx;
        let mut _prevctx = _localctx.clone();
		let _startState = 118;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {
			let mut _alt: isize;
			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(717);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(70,&mut recog.base)? {
				1 =>{
					{
					recog.base.set_state(683);
					recog.base.match_token(LeftParen,&mut recog.err_handler)?;

					/*InvokeRule abstractDeclarator*/
					recog.base.set_state(684);
					recog.abstractDeclarator()?;

					recog.base.set_state(685);
					recog.base.match_token(RightParen,&mut recog.err_handler)?;

					}
				}
			,
				2 =>{
					{
					recog.base.set_state(687);
					recog.base.match_token(LeftBracket,&mut recog.err_handler)?;

					recog.base.set_state(689);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if _la==Const || ((((_la - 38)) & !0x3f) == 0 && ((1usize << (_la - 38)) & ((1usize << (Restrict - 38)) | (1usize << (Volatile - 38)) | (1usize << (Atomic - 38)))) != 0) {
						{
						/*InvokeRule typeQualifierList*/
						recog.base.set_state(688);
						recog.typeQualifierList()?;

						}
					}

					recog.base.set_state(692);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if ((((_la - 42)) & !0x3f) == 0 && ((1usize << (_la - 42)) & ((1usize << (Sizeof - 42)) | (1usize << (Alignof - 42)) | (1usize << (LeftParen - 42)))) != 0) || ((((_la - 74)) & !0x3f) == 0 && ((1usize << (_la - 74)) & ((1usize << (Plus - 74)) | (1usize << (PlusPlus - 74)) | (1usize << (Minus - 74)) | (1usize << (MinusMinus - 74)) | (1usize << (Star - 74)) | (1usize << (And - 74)) | (1usize << (Not - 74)) | (1usize << (Tilde - 74)))) != 0) || ((((_la - 108)) & !0x3f) == 0 && ((1usize << (_la - 108)) & ((1usize << (Identifier - 108)) | (1usize << (Constant - 108)) | (1usize << (DigitSequence - 108)) | (1usize << (StringLiteral - 108)))) != 0) {
						{
						/*InvokeRule assignmentExpression*/
						recog.base.set_state(691);
						recog.assignmentExpression()?;

						}
					}

					recog.base.set_state(694);
					recog.base.match_token(RightBracket,&mut recog.err_handler)?;

					}
				}
			,
				3 =>{
					{
					recog.base.set_state(695);
					recog.base.match_token(LeftBracket,&mut recog.err_handler)?;

					recog.base.set_state(696);
					recog.base.match_token(Static,&mut recog.err_handler)?;

					recog.base.set_state(698);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if _la==Const || ((((_la - 38)) & !0x3f) == 0 && ((1usize << (_la - 38)) & ((1usize << (Restrict - 38)) | (1usize << (Volatile - 38)) | (1usize << (Atomic - 38)))) != 0) {
						{
						/*InvokeRule typeQualifierList*/
						recog.base.set_state(697);
						recog.typeQualifierList()?;

						}
					}

					/*InvokeRule assignmentExpression*/
					recog.base.set_state(700);
					recog.assignmentExpression()?;

					recog.base.set_state(701);
					recog.base.match_token(RightBracket,&mut recog.err_handler)?;

					}
				}
			,
				4 =>{
					{
					recog.base.set_state(703);
					recog.base.match_token(LeftBracket,&mut recog.err_handler)?;

					/*InvokeRule typeQualifierList*/
					recog.base.set_state(704);
					recog.typeQualifierList()?;

					recog.base.set_state(705);
					recog.base.match_token(Static,&mut recog.err_handler)?;

					/*InvokeRule assignmentExpression*/
					recog.base.set_state(706);
					recog.assignmentExpression()?;

					recog.base.set_state(707);
					recog.base.match_token(RightBracket,&mut recog.err_handler)?;

					}
				}
			,
				5 =>{
					{
					recog.base.set_state(709);
					recog.base.match_token(LeftBracket,&mut recog.err_handler)?;

					recog.base.set_state(710);
					recog.base.match_token(Star,&mut recog.err_handler)?;

					recog.base.set_state(711);
					recog.base.match_token(RightBracket,&mut recog.err_handler)?;

					}
				}
			,
				6 =>{
					{
					recog.base.set_state(712);
					recog.base.match_token(LeftParen,&mut recog.err_handler)?;

					recog.base.set_state(714);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if (((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__0) | (1usize << T__1) | (1usize << T__2) | (1usize << T__3) | (1usize << T__4) | (1usize << T__5) | (1usize << T__6) | (1usize << T__7) | (1usize << Auto) | (1usize << Char) | (1usize << Const) | (1usize << Double) | (1usize << Enum) | (1usize << Extern) | (1usize << Float))) != 0) || ((((_la - 34)) & !0x3f) == 0 && ((1usize << (_la - 34)) & ((1usize << (Inline - 34)) | (1usize << (Int - 34)) | (1usize << (Long - 34)) | (1usize << (Register - 34)) | (1usize << (Restrict - 34)) | (1usize << (Short - 34)) | (1usize << (Signed - 34)) | (1usize << (Static - 34)) | (1usize << (Struct - 34)) | (1usize << (Typedef - 34)) | (1usize << (Union - 34)) | (1usize << (Unsigned - 34)) | (1usize << (Void - 34)) | (1usize << (Volatile - 34)) | (1usize << (Alignas - 34)) | (1usize << (Atomic - 34)) | (1usize << (Bool - 34)) | (1usize << (Complex - 34)) | (1usize << (Noreturn - 34)) | (1usize << (ThreadLocal - 34)))) != 0) || _la==Identifier {
						{
						/*InvokeRule parameterTypeList*/
						recog.base.set_state(713);
						recog.parameterTypeList()?;

						}
					}

					recog.base.set_state(716);
					recog.base.match_token(RightParen,&mut recog.err_handler)?;

					}
				}

				_ => {}
			}

			let tmp = recog.input.lt(-1).cloned();
			recog.ctx.as_ref().unwrap().set_stop(tmp);
			recog.base.set_state(756);
			recog.err_handler.sync(&mut recog.base)?;
			_alt = recog.interpreter.adaptive_predict(76,&mut recog.base)?;
			while { _alt!=2 && _alt!=INVALID_ALT } {
				if _alt==1 {
					recog.trigger_exit_rule_event();
					_prevctx = _localctx.clone();
					{
					recog.base.set_state(754);
					recog.err_handler.sync(&mut recog.base)?;
					match  recog.interpreter.adaptive_predict(75,&mut recog.base)? {
						1 =>{
							{
							/*recRuleAltStartAction*/
							let mut tmp = DirectAbstractDeclaratorContextExt::new(_parentctx.clone(), _parentState);
							recog.push_new_recursion_context(tmp.clone(), _startState, RULE_directAbstractDeclarator);
							_localctx = tmp;
							recog.base.set_state(719);
							if !({recog.precpred(None, 5)}) {
								Err(FailedPredicateError::new(&mut recog.base, Some("recog.precpred(None, 5)".to_owned()), None))?;
							}
							recog.base.set_state(720);
							recog.base.match_token(LeftBracket,&mut recog.err_handler)?;

							recog.base.set_state(722);
							recog.err_handler.sync(&mut recog.base)?;
							_la = recog.base.input.la(1);
							if _la==Const || ((((_la - 38)) & !0x3f) == 0 && ((1usize << (_la - 38)) & ((1usize << (Restrict - 38)) | (1usize << (Volatile - 38)) | (1usize << (Atomic - 38)))) != 0) {
								{
								/*InvokeRule typeQualifierList*/
								recog.base.set_state(721);
								recog.typeQualifierList()?;

								}
							}

							recog.base.set_state(725);
							recog.err_handler.sync(&mut recog.base)?;
							_la = recog.base.input.la(1);
							if ((((_la - 42)) & !0x3f) == 0 && ((1usize << (_la - 42)) & ((1usize << (Sizeof - 42)) | (1usize << (Alignof - 42)) | (1usize << (LeftParen - 42)))) != 0) || ((((_la - 74)) & !0x3f) == 0 && ((1usize << (_la - 74)) & ((1usize << (Plus - 74)) | (1usize << (PlusPlus - 74)) | (1usize << (Minus - 74)) | (1usize << (MinusMinus - 74)) | (1usize << (Star - 74)) | (1usize << (And - 74)) | (1usize << (Not - 74)) | (1usize << (Tilde - 74)))) != 0) || ((((_la - 108)) & !0x3f) == 0 && ((1usize << (_la - 108)) & ((1usize << (Identifier - 108)) | (1usize << (Constant - 108)) | (1usize << (DigitSequence - 108)) | (1usize << (StringLiteral - 108)))) != 0) {
								{
								/*InvokeRule assignmentExpression*/
								recog.base.set_state(724);
								recog.assignmentExpression()?;

								}
							}

							recog.base.set_state(727);
							recog.base.match_token(RightBracket,&mut recog.err_handler)?;

							}
						}
					,
						2 =>{
							{
							/*recRuleAltStartAction*/
							let mut tmp = DirectAbstractDeclaratorContextExt::new(_parentctx.clone(), _parentState);
							recog.push_new_recursion_context(tmp.clone(), _startState, RULE_directAbstractDeclarator);
							_localctx = tmp;
							recog.base.set_state(728);
							if !({recog.precpred(None, 4)}) {
								Err(FailedPredicateError::new(&mut recog.base, Some("recog.precpred(None, 4)".to_owned()), None))?;
							}
							recog.base.set_state(729);
							recog.base.match_token(LeftBracket,&mut recog.err_handler)?;

							recog.base.set_state(730);
							recog.base.match_token(Static,&mut recog.err_handler)?;

							recog.base.set_state(732);
							recog.err_handler.sync(&mut recog.base)?;
							_la = recog.base.input.la(1);
							if _la==Const || ((((_la - 38)) & !0x3f) == 0 && ((1usize << (_la - 38)) & ((1usize << (Restrict - 38)) | (1usize << (Volatile - 38)) | (1usize << (Atomic - 38)))) != 0) {
								{
								/*InvokeRule typeQualifierList*/
								recog.base.set_state(731);
								recog.typeQualifierList()?;

								}
							}

							/*InvokeRule assignmentExpression*/
							recog.base.set_state(734);
							recog.assignmentExpression()?;

							recog.base.set_state(735);
							recog.base.match_token(RightBracket,&mut recog.err_handler)?;

							}
						}
					,
						3 =>{
							{
							/*recRuleAltStartAction*/
							let mut tmp = DirectAbstractDeclaratorContextExt::new(_parentctx.clone(), _parentState);
							recog.push_new_recursion_context(tmp.clone(), _startState, RULE_directAbstractDeclarator);
							_localctx = tmp;
							recog.base.set_state(737);
							if !({recog.precpred(None, 3)}) {
								Err(FailedPredicateError::new(&mut recog.base, Some("recog.precpred(None, 3)".to_owned()), None))?;
							}
							recog.base.set_state(738);
							recog.base.match_token(LeftBracket,&mut recog.err_handler)?;

							/*InvokeRule typeQualifierList*/
							recog.base.set_state(739);
							recog.typeQualifierList()?;

							recog.base.set_state(740);
							recog.base.match_token(Static,&mut recog.err_handler)?;

							/*InvokeRule assignmentExpression*/
							recog.base.set_state(741);
							recog.assignmentExpression()?;

							recog.base.set_state(742);
							recog.base.match_token(RightBracket,&mut recog.err_handler)?;

							}
						}
					,
						4 =>{
							{
							/*recRuleAltStartAction*/
							let mut tmp = DirectAbstractDeclaratorContextExt::new(_parentctx.clone(), _parentState);
							recog.push_new_recursion_context(tmp.clone(), _startState, RULE_directAbstractDeclarator);
							_localctx = tmp;
							recog.base.set_state(744);
							if !({recog.precpred(None, 2)}) {
								Err(FailedPredicateError::new(&mut recog.base, Some("recog.precpred(None, 2)".to_owned()), None))?;
							}
							recog.base.set_state(745);
							recog.base.match_token(LeftBracket,&mut recog.err_handler)?;

							recog.base.set_state(746);
							recog.base.match_token(Star,&mut recog.err_handler)?;

							recog.base.set_state(747);
							recog.base.match_token(RightBracket,&mut recog.err_handler)?;

							}
						}
					,
						5 =>{
							{
							/*recRuleAltStartAction*/
							let mut tmp = DirectAbstractDeclaratorContextExt::new(_parentctx.clone(), _parentState);
							recog.push_new_recursion_context(tmp.clone(), _startState, RULE_directAbstractDeclarator);
							_localctx = tmp;
							recog.base.set_state(748);
							if !({recog.precpred(None, 1)}) {
								Err(FailedPredicateError::new(&mut recog.base, Some("recog.precpred(None, 1)".to_owned()), None))?;
							}
							recog.base.set_state(749);
							recog.base.match_token(LeftParen,&mut recog.err_handler)?;

							recog.base.set_state(751);
							recog.err_handler.sync(&mut recog.base)?;
							_la = recog.base.input.la(1);
							if (((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__0) | (1usize << T__1) | (1usize << T__2) | (1usize << T__3) | (1usize << T__4) | (1usize << T__5) | (1usize << T__6) | (1usize << T__7) | (1usize << Auto) | (1usize << Char) | (1usize << Const) | (1usize << Double) | (1usize << Enum) | (1usize << Extern) | (1usize << Float))) != 0) || ((((_la - 34)) & !0x3f) == 0 && ((1usize << (_la - 34)) & ((1usize << (Inline - 34)) | (1usize << (Int - 34)) | (1usize << (Long - 34)) | (1usize << (Register - 34)) | (1usize << (Restrict - 34)) | (1usize << (Short - 34)) | (1usize << (Signed - 34)) | (1usize << (Static - 34)) | (1usize << (Struct - 34)) | (1usize << (Typedef - 34)) | (1usize << (Union - 34)) | (1usize << (Unsigned - 34)) | (1usize << (Void - 34)) | (1usize << (Volatile - 34)) | (1usize << (Alignas - 34)) | (1usize << (Atomic - 34)) | (1usize << (Bool - 34)) | (1usize << (Complex - 34)) | (1usize << (Noreturn - 34)) | (1usize << (ThreadLocal - 34)))) != 0) || _la==Identifier {
								{
								/*InvokeRule parameterTypeList*/
								recog.base.set_state(750);
								recog.parameterTypeList()?;

								}
							}

							recog.base.set_state(753);
							recog.base.match_token(RightParen,&mut recog.err_handler)?;

							}
						}

						_ => {}
					}
					} 
				}
				recog.base.set_state(758);
				recog.err_handler.sync(&mut recog.base)?;
				_alt = recog.interpreter.adaptive_predict(76,&mut recog.base)?;
			}
			}
			Ok(())
		})();
		match result {
		Ok(_) => {},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re)=>{
			//_localctx.exception = re;
			recog.err_handler.report_error(&mut recog.base, re);
	        recog.err_handler.recover(&mut recog.base, re)?;}
		}
		recog.base.unroll_recursion_context(_parentctx);

		Ok(_localctx)
	}
}
//------------------- typedefName ----------------
pub type TypedefNameContextAll<'input> = TypedefNameContext<'input>;


pub type TypedefNameContext<'input> = BaseParserRuleContext<'input,TypedefNameContextExt<'input>>;

#[derive(Clone)]
pub struct TypedefNameContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for TypedefNameContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for TypedefNameContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_typedefName(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_typedefName(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for TypedefNameContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_typedefName(self);
	}
}

impl<'input> CustomRuleContext<'input> for TypedefNameContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_typedefName }
	//fn type_rule_index() -> usize where Self: Sized { RULE_typedefName }
}
antlr_rust::tid!{TypedefNameContextExt<'a>}

impl<'input> TypedefNameContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<TypedefNameContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,TypedefNameContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait TypedefNameContextAttrs<'input>: CParserContext<'input> + BorrowMut<TypedefNameContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Identifier
/// Returns `None` if there is no child corresponding to token Identifier
fn Identifier(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, 0)
}

}

impl<'input> TypedefNameContextAttrs<'input> for TypedefNameContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn typedefName(&mut self,)
	-> Result<Rc<TypedefNameContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = TypedefNameContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 120, RULE_typedefName);
        let mut _localctx: Rc<TypedefNameContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(759);
			recog.base.match_token(Identifier,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- initializer ----------------
pub type InitializerContextAll<'input> = InitializerContext<'input>;


pub type InitializerContext<'input> = BaseParserRuleContext<'input,InitializerContextExt<'input>>;

#[derive(Clone)]
pub struct InitializerContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for InitializerContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for InitializerContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_initializer(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_initializer(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for InitializerContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_initializer(self);
	}
}

impl<'input> CustomRuleContext<'input> for InitializerContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_initializer }
	//fn type_rule_index() -> usize where Self: Sized { RULE_initializer }
}
antlr_rust::tid!{InitializerContextExt<'a>}

impl<'input> InitializerContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<InitializerContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,InitializerContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait InitializerContextAttrs<'input>: CParserContext<'input> + BorrowMut<InitializerContextExt<'input>>{

fn assignmentExpression(&self) -> Option<Rc<AssignmentExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token LeftBrace
/// Returns `None` if there is no child corresponding to token LeftBrace
fn LeftBrace(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftBrace, 0)
}
fn initializerList(&self) -> Option<Rc<InitializerListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightBrace
/// Returns `None` if there is no child corresponding to token RightBrace
fn RightBrace(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightBrace, 0)
}
/// Retrieves first TerminalNode corresponding to token Comma
/// Returns `None` if there is no child corresponding to token Comma
fn Comma(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, 0)
}

}

impl<'input> InitializerContextAttrs<'input> for InitializerContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn initializer(&mut self,)
	-> Result<Rc<InitializerContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = InitializerContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 122, RULE_initializer);
        let mut _localctx: Rc<InitializerContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(769);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 Sizeof | Alignof | LeftParen | Plus | PlusPlus | Minus | MinusMinus |
			 Star | And | Not | Tilde | Identifier | Constant | DigitSequence | StringLiteral 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule assignmentExpression*/
					recog.base.set_state(761);
					recog.assignmentExpression()?;

					}
				}

			 LeftBrace 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					recog.base.set_state(762);
					recog.base.match_token(LeftBrace,&mut recog.err_handler)?;

					/*InvokeRule initializerList*/
					recog.base.set_state(763);
					recog.initializerList()?;

					recog.base.set_state(765);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if _la==Comma {
						{
						recog.base.set_state(764);
						recog.base.match_token(Comma,&mut recog.err_handler)?;

						}
					}

					recog.base.set_state(767);
					recog.base.match_token(RightBrace,&mut recog.err_handler)?;

					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- initializerList ----------------
pub type InitializerListContextAll<'input> = InitializerListContext<'input>;


pub type InitializerListContext<'input> = BaseParserRuleContext<'input,InitializerListContextExt<'input>>;

#[derive(Clone)]
pub struct InitializerListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for InitializerListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for InitializerListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_initializerList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_initializerList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for InitializerListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_initializerList(self);
	}
}

impl<'input> CustomRuleContext<'input> for InitializerListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_initializerList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_initializerList }
}
antlr_rust::tid!{InitializerListContextExt<'a>}

impl<'input> InitializerListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<InitializerListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,InitializerListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait InitializerListContextAttrs<'input>: CParserContext<'input> + BorrowMut<InitializerListContextExt<'input>>{

fn initializer_all(&self) ->  Vec<Rc<InitializerContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn initializer(&self, i: usize) -> Option<Rc<InitializerContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
fn designation_all(&self) ->  Vec<Rc<DesignationContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn designation(&self, i: usize) -> Option<Rc<DesignationContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Comma in current rule
fn Comma_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Comma, starting from 0.
/// Returns `None` if number of children corresponding to token Comma is less or equal than `i`.
fn Comma(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, i)
}

}

impl<'input> InitializerListContextAttrs<'input> for InitializerListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn initializerList(&mut self,)
	-> Result<Rc<InitializerListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = InitializerListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 124, RULE_initializerList);
        let mut _localctx: Rc<InitializerListContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			let mut _alt: isize;
			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(772);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if _la==LeftBracket || _la==Dot {
				{
				/*InvokeRule designation*/
				recog.base.set_state(771);
				recog.designation()?;

				}
			}

			/*InvokeRule initializer*/
			recog.base.set_state(774);
			recog.initializer()?;

			recog.base.set_state(782);
			recog.err_handler.sync(&mut recog.base)?;
			_alt = recog.interpreter.adaptive_predict(81,&mut recog.base)?;
			while { _alt!=2 && _alt!=INVALID_ALT } {
				if _alt==1 {
					{
					{
					recog.base.set_state(775);
					recog.base.match_token(Comma,&mut recog.err_handler)?;

					recog.base.set_state(777);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if _la==LeftBracket || _la==Dot {
						{
						/*InvokeRule designation*/
						recog.base.set_state(776);
						recog.designation()?;

						}
					}

					/*InvokeRule initializer*/
					recog.base.set_state(779);
					recog.initializer()?;

					}
					} 
				}
				recog.base.set_state(784);
				recog.err_handler.sync(&mut recog.base)?;
				_alt = recog.interpreter.adaptive_predict(81,&mut recog.base)?;
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- designation ----------------
pub type DesignationContextAll<'input> = DesignationContext<'input>;


pub type DesignationContext<'input> = BaseParserRuleContext<'input,DesignationContextExt<'input>>;

#[derive(Clone)]
pub struct DesignationContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for DesignationContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for DesignationContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_designation(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_designation(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for DesignationContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_designation(self);
	}
}

impl<'input> CustomRuleContext<'input> for DesignationContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_designation }
	//fn type_rule_index() -> usize where Self: Sized { RULE_designation }
}
antlr_rust::tid!{DesignationContextExt<'a>}

impl<'input> DesignationContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<DesignationContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,DesignationContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait DesignationContextAttrs<'input>: CParserContext<'input> + BorrowMut<DesignationContextExt<'input>>{

fn designatorList(&self) -> Option<Rc<DesignatorListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Assign
/// Returns `None` if there is no child corresponding to token Assign
fn Assign(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Assign, 0)
}

}

impl<'input> DesignationContextAttrs<'input> for DesignationContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn designation(&mut self,)
	-> Result<Rc<DesignationContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = DesignationContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 126, RULE_designation);
        let mut _localctx: Rc<DesignationContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule designatorList*/
			recog.base.set_state(785);
			recog.designatorList()?;

			recog.base.set_state(786);
			recog.base.match_token(Assign,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- designatorList ----------------
pub type DesignatorListContextAll<'input> = DesignatorListContext<'input>;


pub type DesignatorListContext<'input> = BaseParserRuleContext<'input,DesignatorListContextExt<'input>>;

#[derive(Clone)]
pub struct DesignatorListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for DesignatorListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for DesignatorListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_designatorList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_designatorList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for DesignatorListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_designatorList(self);
	}
}

impl<'input> CustomRuleContext<'input> for DesignatorListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_designatorList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_designatorList }
}
antlr_rust::tid!{DesignatorListContextExt<'a>}

impl<'input> DesignatorListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<DesignatorListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,DesignatorListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait DesignatorListContextAttrs<'input>: CParserContext<'input> + BorrowMut<DesignatorListContextExt<'input>>{

fn designator_all(&self) ->  Vec<Rc<DesignatorContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn designator(&self, i: usize) -> Option<Rc<DesignatorContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}

}

impl<'input> DesignatorListContextAttrs<'input> for DesignatorListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn designatorList(&mut self,)
	-> Result<Rc<DesignatorListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = DesignatorListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 128, RULE_designatorList);
        let mut _localctx: Rc<DesignatorListContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(789); 
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			loop {
				{
				{
				/*InvokeRule designator*/
				recog.base.set_state(788);
				recog.designator()?;

				}
				}
				recog.base.set_state(791); 
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
				if !(_la==LeftBracket || _la==Dot) {break}
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- designator ----------------
pub type DesignatorContextAll<'input> = DesignatorContext<'input>;


pub type DesignatorContext<'input> = BaseParserRuleContext<'input,DesignatorContextExt<'input>>;

#[derive(Clone)]
pub struct DesignatorContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for DesignatorContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for DesignatorContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_designator(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_designator(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for DesignatorContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_designator(self);
	}
}

impl<'input> CustomRuleContext<'input> for DesignatorContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_designator }
	//fn type_rule_index() -> usize where Self: Sized { RULE_designator }
}
antlr_rust::tid!{DesignatorContextExt<'a>}

impl<'input> DesignatorContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<DesignatorContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,DesignatorContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait DesignatorContextAttrs<'input>: CParserContext<'input> + BorrowMut<DesignatorContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token LeftBracket
/// Returns `None` if there is no child corresponding to token LeftBracket
fn LeftBracket(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftBracket, 0)
}
fn constantExpression(&self) -> Option<Rc<ConstantExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightBracket
/// Returns `None` if there is no child corresponding to token RightBracket
fn RightBracket(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightBracket, 0)
}
/// Retrieves first TerminalNode corresponding to token Dot
/// Returns `None` if there is no child corresponding to token Dot
fn Dot(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Dot, 0)
}
/// Retrieves first TerminalNode corresponding to token Identifier
/// Returns `None` if there is no child corresponding to token Identifier
fn Identifier(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, 0)
}

}

impl<'input> DesignatorContextAttrs<'input> for DesignatorContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn designator(&mut self,)
	-> Result<Rc<DesignatorContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = DesignatorContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 130, RULE_designator);
        let mut _localctx: Rc<DesignatorContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(799);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 LeftBracket 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					recog.base.set_state(793);
					recog.base.match_token(LeftBracket,&mut recog.err_handler)?;

					/*InvokeRule constantExpression*/
					recog.base.set_state(794);
					recog.constantExpression()?;

					recog.base.set_state(795);
					recog.base.match_token(RightBracket,&mut recog.err_handler)?;

					}
				}

			 Dot 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					recog.base.set_state(797);
					recog.base.match_token(Dot,&mut recog.err_handler)?;

					recog.base.set_state(798);
					recog.base.match_token(Identifier,&mut recog.err_handler)?;

					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- staticAssertDeclaration ----------------
pub type StaticAssertDeclarationContextAll<'input> = StaticAssertDeclarationContext<'input>;


pub type StaticAssertDeclarationContext<'input> = BaseParserRuleContext<'input,StaticAssertDeclarationContextExt<'input>>;

#[derive(Clone)]
pub struct StaticAssertDeclarationContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for StaticAssertDeclarationContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for StaticAssertDeclarationContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_staticAssertDeclaration(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_staticAssertDeclaration(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for StaticAssertDeclarationContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_staticAssertDeclaration(self);
	}
}

impl<'input> CustomRuleContext<'input> for StaticAssertDeclarationContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_staticAssertDeclaration }
	//fn type_rule_index() -> usize where Self: Sized { RULE_staticAssertDeclaration }
}
antlr_rust::tid!{StaticAssertDeclarationContextExt<'a>}

impl<'input> StaticAssertDeclarationContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<StaticAssertDeclarationContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,StaticAssertDeclarationContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait StaticAssertDeclarationContextAttrs<'input>: CParserContext<'input> + BorrowMut<StaticAssertDeclarationContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token StaticAssert
/// Returns `None` if there is no child corresponding to token StaticAssert
fn StaticAssert(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(StaticAssert, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn constantExpression(&self) -> Option<Rc<ConstantExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Comma
/// Returns `None` if there is no child corresponding to token Comma
fn Comma(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, 0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
/// Retrieves first TerminalNode corresponding to token Semi
/// Returns `None` if there is no child corresponding to token Semi
fn Semi(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Semi, 0)
}
/// Retrieves all `TerminalNode`s corresponding to token StringLiteral in current rule
fn StringLiteral_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token StringLiteral, starting from 0.
/// Returns `None` if number of children corresponding to token StringLiteral is less or equal than `i`.
fn StringLiteral(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(StringLiteral, i)
}

}

impl<'input> StaticAssertDeclarationContextAttrs<'input> for StaticAssertDeclarationContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn staticAssertDeclaration(&mut self,)
	-> Result<Rc<StaticAssertDeclarationContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = StaticAssertDeclarationContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 132, RULE_staticAssertDeclaration);
        let mut _localctx: Rc<StaticAssertDeclarationContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(801);
			recog.base.match_token(StaticAssert,&mut recog.err_handler)?;

			recog.base.set_state(802);
			recog.base.match_token(LeftParen,&mut recog.err_handler)?;

			/*InvokeRule constantExpression*/
			recog.base.set_state(803);
			recog.constantExpression()?;

			recog.base.set_state(804);
			recog.base.match_token(Comma,&mut recog.err_handler)?;

			recog.base.set_state(806); 
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			loop {
				{
				{
				recog.base.set_state(805);
				recog.base.match_token(StringLiteral,&mut recog.err_handler)?;

				}
				}
				recog.base.set_state(808); 
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
				if !(_la==StringLiteral) {break}
			}
			recog.base.set_state(810);
			recog.base.match_token(RightParen,&mut recog.err_handler)?;

			recog.base.set_state(811);
			recog.base.match_token(Semi,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- statement ----------------
pub type StatementContextAll<'input> = StatementContext<'input>;


pub type StatementContext<'input> = BaseParserRuleContext<'input,StatementContextExt<'input>>;

#[derive(Clone)]
pub struct StatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for StatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for StatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_statement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_statement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for StatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_statement(self);
	}
}

impl<'input> CustomRuleContext<'input> for StatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_statement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_statement }
}
antlr_rust::tid!{StatementContextExt<'a>}

impl<'input> StatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<StatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,StatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait StatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<StatementContextExt<'input>>{

fn labeledStatement(&self) -> Option<Rc<LabeledStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn compoundStatement(&self) -> Option<Rc<CompoundStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn expressionStatement(&self) -> Option<Rc<ExpressionStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn selectionStatement(&self) -> Option<Rc<SelectionStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn iterationStatement(&self) -> Option<Rc<IterationStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn jumpStatement(&self) -> Option<Rc<JumpStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn breakpointStatement(&self) -> Option<Rc<BreakpointStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
/// Retrieves first TerminalNode corresponding to token Semi
/// Returns `None` if there is no child corresponding to token Semi
fn Semi(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Semi, 0)
}
/// Retrieves first TerminalNode corresponding to token Volatile
/// Returns `None` if there is no child corresponding to token Volatile
fn Volatile(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Volatile, 0)
}
fn logicalOrExpression_all(&self) ->  Vec<Rc<LogicalOrExpressionContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn logicalOrExpression(&self, i: usize) -> Option<Rc<LogicalOrExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Colon in current rule
fn Colon_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Colon, starting from 0.
/// Returns `None` if number of children corresponding to token Colon is less or equal than `i`.
fn Colon(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Colon, i)
}
/// Retrieves all `TerminalNode`s corresponding to token Comma in current rule
fn Comma_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Comma, starting from 0.
/// Returns `None` if number of children corresponding to token Comma is less or equal than `i`.
fn Comma(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, i)
}

}

impl<'input> StatementContextAttrs<'input> for StatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn statement(&mut self,)
	-> Result<Rc<StatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = StatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 134, RULE_statement);
        let mut _localctx: Rc<StatementContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(851);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(90,&mut recog.base)? {
				1 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule labeledStatement*/
					recog.base.set_state(813);
					recog.labeledStatement()?;

					}
				}
			,
				2 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					/*InvokeRule compoundStatement*/
					recog.base.set_state(814);
					recog.compoundStatement()?;

					}
				}
			,
				3 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 3);
					recog.base.enter_outer_alt(None, 3);
					{
					/*InvokeRule expressionStatement*/
					recog.base.set_state(815);
					recog.expressionStatement()?;

					}
				}
			,
				4 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 4);
					recog.base.enter_outer_alt(None, 4);
					{
					/*InvokeRule selectionStatement*/
					recog.base.set_state(816);
					recog.selectionStatement()?;

					}
				}
			,
				5 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 5);
					recog.base.enter_outer_alt(None, 5);
					{
					/*InvokeRule iterationStatement*/
					recog.base.set_state(817);
					recog.iterationStatement()?;

					}
				}
			,
				6 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 6);
					recog.base.enter_outer_alt(None, 6);
					{
					/*InvokeRule jumpStatement*/
					recog.base.set_state(818);
					recog.jumpStatement()?;

					}
				}
			,
				7 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 7);
					recog.base.enter_outer_alt(None, 7);
					{
					/*InvokeRule breakpointStatement*/
					recog.base.set_state(819);
					recog.breakpointStatement()?;

					}
				}
			,
				8 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 8);
					recog.base.enter_outer_alt(None, 8);
					{
					recog.base.set_state(820);
					_la = recog.base.input.la(1);
					if { !(_la==T__13 || _la==T__14) } {
						recog.err_handler.recover_inline(&mut recog.base)?;

					}
					else {
						if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
						recog.err_handler.report_match(&mut recog.base);
						recog.base.consume(&mut recog.err_handler);
					}
					recog.base.set_state(821);
					_la = recog.base.input.la(1);
					if { !(_la==T__15 || _la==Volatile) } {
						recog.err_handler.recover_inline(&mut recog.base)?;

					}
					else {
						if  recog.base.input.la(1)==TOKEN_EOF { recog.base.matched_eof = true };
						recog.err_handler.report_match(&mut recog.base);
						recog.base.consume(&mut recog.err_handler);
					}
					recog.base.set_state(822);
					recog.base.match_token(LeftParen,&mut recog.err_handler)?;

					recog.base.set_state(831);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if ((((_la - 42)) & !0x3f) == 0 && ((1usize << (_la - 42)) & ((1usize << (Sizeof - 42)) | (1usize << (Alignof - 42)) | (1usize << (LeftParen - 42)))) != 0) || ((((_la - 74)) & !0x3f) == 0 && ((1usize << (_la - 74)) & ((1usize << (Plus - 74)) | (1usize << (PlusPlus - 74)) | (1usize << (Minus - 74)) | (1usize << (MinusMinus - 74)) | (1usize << (Star - 74)) | (1usize << (And - 74)) | (1usize << (Not - 74)) | (1usize << (Tilde - 74)))) != 0) || ((((_la - 108)) & !0x3f) == 0 && ((1usize << (_la - 108)) & ((1usize << (Identifier - 108)) | (1usize << (Constant - 108)) | (1usize << (StringLiteral - 108)))) != 0) {
						{
						/*InvokeRule logicalOrExpression*/
						recog.base.set_state(823);
						recog.logicalOrExpression()?;

						recog.base.set_state(828);
						recog.err_handler.sync(&mut recog.base)?;
						_la = recog.base.input.la(1);
						while _la==Comma {
							{
							{
							recog.base.set_state(824);
							recog.base.match_token(Comma,&mut recog.err_handler)?;

							/*InvokeRule logicalOrExpression*/
							recog.base.set_state(825);
							recog.logicalOrExpression()?;

							}
							}
							recog.base.set_state(830);
							recog.err_handler.sync(&mut recog.base)?;
							_la = recog.base.input.la(1);
						}
						}
					}

					recog.base.set_state(846);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					while _la==Colon {
						{
						{
						recog.base.set_state(833);
						recog.base.match_token(Colon,&mut recog.err_handler)?;

						recog.base.set_state(842);
						recog.err_handler.sync(&mut recog.base)?;
						_la = recog.base.input.la(1);
						if ((((_la - 42)) & !0x3f) == 0 && ((1usize << (_la - 42)) & ((1usize << (Sizeof - 42)) | (1usize << (Alignof - 42)) | (1usize << (LeftParen - 42)))) != 0) || ((((_la - 74)) & !0x3f) == 0 && ((1usize << (_la - 74)) & ((1usize << (Plus - 74)) | (1usize << (PlusPlus - 74)) | (1usize << (Minus - 74)) | (1usize << (MinusMinus - 74)) | (1usize << (Star - 74)) | (1usize << (And - 74)) | (1usize << (Not - 74)) | (1usize << (Tilde - 74)))) != 0) || ((((_la - 108)) & !0x3f) == 0 && ((1usize << (_la - 108)) & ((1usize << (Identifier - 108)) | (1usize << (Constant - 108)) | (1usize << (StringLiteral - 108)))) != 0) {
							{
							/*InvokeRule logicalOrExpression*/
							recog.base.set_state(834);
							recog.logicalOrExpression()?;

							recog.base.set_state(839);
							recog.err_handler.sync(&mut recog.base)?;
							_la = recog.base.input.la(1);
							while _la==Comma {
								{
								{
								recog.base.set_state(835);
								recog.base.match_token(Comma,&mut recog.err_handler)?;

								/*InvokeRule logicalOrExpression*/
								recog.base.set_state(836);
								recog.logicalOrExpression()?;

								}
								}
								recog.base.set_state(841);
								recog.err_handler.sync(&mut recog.base)?;
								_la = recog.base.input.la(1);
							}
							}
						}

						}
						}
						recog.base.set_state(848);
						recog.err_handler.sync(&mut recog.base)?;
						_la = recog.base.input.la(1);
					}
					recog.base.set_state(849);
					recog.base.match_token(RightParen,&mut recog.err_handler)?;

					recog.base.set_state(850);
					recog.base.match_token(Semi,&mut recog.err_handler)?;

					}
				}

				_ => {}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- labeledStatement ----------------
pub type LabeledStatementContextAll<'input> = LabeledStatementContext<'input>;


pub type LabeledStatementContext<'input> = BaseParserRuleContext<'input,LabeledStatementContextExt<'input>>;

#[derive(Clone)]
pub struct LabeledStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for LabeledStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for LabeledStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_labeledStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_labeledStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for LabeledStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_labeledStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for LabeledStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_labeledStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_labeledStatement }
}
antlr_rust::tid!{LabeledStatementContextExt<'a>}

impl<'input> LabeledStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<LabeledStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,LabeledStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait LabeledStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<LabeledStatementContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Identifier
/// Returns `None` if there is no child corresponding to token Identifier
fn Identifier(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, 0)
}
/// Retrieves first TerminalNode corresponding to token Colon
/// Returns `None` if there is no child corresponding to token Colon
fn Colon(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Colon, 0)
}
fn statement(&self) -> Option<Rc<StatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Case
/// Returns `None` if there is no child corresponding to token Case
fn Case(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Case, 0)
}
fn constantExpression(&self) -> Option<Rc<ConstantExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Default
/// Returns `None` if there is no child corresponding to token Default
fn Default(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Default, 0)
}

}

impl<'input> LabeledStatementContextAttrs<'input> for LabeledStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn labeledStatement(&mut self,)
	-> Result<Rc<LabeledStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = LabeledStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 136, RULE_labeledStatement);
        let mut _localctx: Rc<LabeledStatementContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(864);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 Identifier 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					recog.base.set_state(853);
					recog.base.match_token(Identifier,&mut recog.err_handler)?;

					recog.base.set_state(854);
					recog.base.match_token(Colon,&mut recog.err_handler)?;

					/*InvokeRule statement*/
					recog.base.set_state(855);
					recog.statement()?;

					}
				}

			 Case 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					recog.base.set_state(856);
					recog.base.match_token(Case,&mut recog.err_handler)?;

					/*InvokeRule constantExpression*/
					recog.base.set_state(857);
					recog.constantExpression()?;

					recog.base.set_state(858);
					recog.base.match_token(Colon,&mut recog.err_handler)?;

					/*InvokeRule statement*/
					recog.base.set_state(859);
					recog.statement()?;

					}
				}

			 Default 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 3);
					recog.base.enter_outer_alt(None, 3);
					{
					recog.base.set_state(861);
					recog.base.match_token(Default,&mut recog.err_handler)?;

					recog.base.set_state(862);
					recog.base.match_token(Colon,&mut recog.err_handler)?;

					/*InvokeRule statement*/
					recog.base.set_state(863);
					recog.statement()?;

					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- compoundStatement ----------------
pub type CompoundStatementContextAll<'input> = CompoundStatementContext<'input>;


pub type CompoundStatementContext<'input> = BaseParserRuleContext<'input,CompoundStatementContextExt<'input>>;

#[derive(Clone)]
pub struct CompoundStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for CompoundStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for CompoundStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_compoundStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_compoundStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for CompoundStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_compoundStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for CompoundStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_compoundStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_compoundStatement }
}
antlr_rust::tid!{CompoundStatementContextExt<'a>}

impl<'input> CompoundStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<CompoundStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,CompoundStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait CompoundStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<CompoundStatementContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token LeftBrace
/// Returns `None` if there is no child corresponding to token LeftBrace
fn LeftBrace(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftBrace, 0)
}
fn blockItemList(&self) -> Option<Rc<BlockItemListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightBrace
/// Returns `None` if there is no child corresponding to token RightBrace
fn RightBrace(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightBrace, 0)
}

}

impl<'input> CompoundStatementContextAttrs<'input> for CompoundStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn compoundStatement(&mut self,)
	-> Result<Rc<CompoundStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = CompoundStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 138, RULE_compoundStatement);
        let mut _localctx: Rc<CompoundStatementContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(866);
			recog.base.match_token(LeftBrace,&mut recog.err_handler)?;

			/*InvokeRule blockItemList*/
			recog.base.set_state(867);
			recog.blockItemList()?;

			recog.base.set_state(868);
			recog.base.match_token(RightBrace,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- blockItemList ----------------
pub type BlockItemListContextAll<'input> = BlockItemListContext<'input>;


pub type BlockItemListContext<'input> = BaseParserRuleContext<'input,BlockItemListContextExt<'input>>;

#[derive(Clone)]
pub struct BlockItemListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for BlockItemListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for BlockItemListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_blockItemList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_blockItemList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for BlockItemListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_blockItemList(self);
	}
}

impl<'input> CustomRuleContext<'input> for BlockItemListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_blockItemList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_blockItemList }
}
antlr_rust::tid!{BlockItemListContextExt<'a>}

impl<'input> BlockItemListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<BlockItemListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,BlockItemListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait BlockItemListContextAttrs<'input>: CParserContext<'input> + BorrowMut<BlockItemListContextExt<'input>>{

fn blockItem_all(&self) ->  Vec<Rc<BlockItemContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn blockItem(&self, i: usize) -> Option<Rc<BlockItemContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}

}

impl<'input> BlockItemListContextAttrs<'input> for BlockItemListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn blockItemList(&mut self,)
	-> Result<Rc<BlockItemListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = BlockItemListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 140, RULE_blockItemList);
        let mut _localctx: Rc<BlockItemListContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(873);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			while (((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__0) | (1usize << T__1) | (1usize << T__2) | (1usize << T__3) | (1usize << T__4) | (1usize << T__5) | (1usize << T__6) | (1usize << T__7) | (1usize << T__13) | (1usize << T__14) | (1usize << Auto) | (1usize << Break) | (1usize << Case) | (1usize << Char) | (1usize << Const) | (1usize << Continue) | (1usize << Default) | (1usize << Do) | (1usize << Double) | (1usize << Enum) | (1usize << Extern) | (1usize << Float) | (1usize << For))) != 0) || ((((_la - 32)) & !0x3f) == 0 && ((1usize << (_la - 32)) & ((1usize << (If - 32)) | (1usize << (Breakpoint - 32)) | (1usize << (Inline - 32)) | (1usize << (Int - 32)) | (1usize << (Long - 32)) | (1usize << (Register - 32)) | (1usize << (Restrict - 32)) | (1usize << (Return - 32)) | (1usize << (Short - 32)) | (1usize << (Signed - 32)) | (1usize << (Sizeof - 32)) | (1usize << (Static - 32)) | (1usize << (Struct - 32)) | (1usize << (Switch - 32)) | (1usize << (Typedef - 32)) | (1usize << (Union - 32)) | (1usize << (Unsigned - 32)) | (1usize << (Void - 32)) | (1usize << (Volatile - 32)) | (1usize << (While - 32)) | (1usize << (Alignas - 32)) | (1usize << (Alignof - 32)) | (1usize << (Atomic - 32)) | (1usize << (Bool - 32)) | (1usize << (Complex - 32)) | (1usize << (Noreturn - 32)) | (1usize << (StaticAssert - 32)) | (1usize << (ThreadLocal - 32)) | (1usize << (LeftParen - 32)))) != 0) || ((((_la - 66)) & !0x3f) == 0 && ((1usize << (_la - 66)) & ((1usize << (LeftBrace - 66)) | (1usize << (Plus - 66)) | (1usize << (PlusPlus - 66)) | (1usize << (Minus - 66)) | (1usize << (MinusMinus - 66)) | (1usize << (Star - 66)) | (1usize << (And - 66)) | (1usize << (Not - 66)) | (1usize << (Tilde - 66)) | (1usize << (Semi - 66)))) != 0) || ((((_la - 108)) & !0x3f) == 0 && ((1usize << (_la - 108)) & ((1usize << (Identifier - 108)) | (1usize << (Constant - 108)) | (1usize << (DigitSequence - 108)) | (1usize << (StringLiteral - 108)))) != 0) {
				{
				{
				/*InvokeRule blockItem*/
				recog.base.set_state(870);
				recog.blockItem()?;

				}
				}
				recog.base.set_state(875);
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- blockItem ----------------
pub type BlockItemContextAll<'input> = BlockItemContext<'input>;


pub type BlockItemContext<'input> = BaseParserRuleContext<'input,BlockItemContextExt<'input>>;

#[derive(Clone)]
pub struct BlockItemContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for BlockItemContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for BlockItemContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_blockItem(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_blockItem(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for BlockItemContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_blockItem(self);
	}
}

impl<'input> CustomRuleContext<'input> for BlockItemContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_blockItem }
	//fn type_rule_index() -> usize where Self: Sized { RULE_blockItem }
}
antlr_rust::tid!{BlockItemContextExt<'a>}

impl<'input> BlockItemContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<BlockItemContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,BlockItemContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait BlockItemContextAttrs<'input>: CParserContext<'input> + BorrowMut<BlockItemContextExt<'input>>{

fn statement(&self) -> Option<Rc<StatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn declaration(&self) -> Option<Rc<DeclarationContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> BlockItemContextAttrs<'input> for BlockItemContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn blockItem(&mut self,)
	-> Result<Rc<BlockItemContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = BlockItemContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 142, RULE_blockItem);
        let mut _localctx: Rc<BlockItemContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(878);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(93,&mut recog.base)? {
				1 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule statement*/
					recog.base.set_state(876);
					recog.statement()?;

					}
				}
			,
				2 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					/*InvokeRule declaration*/
					recog.base.set_state(877);
					recog.declaration()?;

					}
				}

				_ => {}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- expressionStatement ----------------
pub type ExpressionStatementContextAll<'input> = ExpressionStatementContext<'input>;


pub type ExpressionStatementContext<'input> = BaseParserRuleContext<'input,ExpressionStatementContextExt<'input>>;

#[derive(Clone)]
pub struct ExpressionStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ExpressionStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ExpressionStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_expressionStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_expressionStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ExpressionStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_expressionStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for ExpressionStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_expressionStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_expressionStatement }
}
antlr_rust::tid!{ExpressionStatementContextExt<'a>}

impl<'input> ExpressionStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ExpressionStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ExpressionStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ExpressionStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<ExpressionStatementContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Semi
/// Returns `None` if there is no child corresponding to token Semi
fn Semi(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Semi, 0)
}
fn expression(&self) -> Option<Rc<ExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> ExpressionStatementContextAttrs<'input> for ExpressionStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn expressionStatement(&mut self,)
	-> Result<Rc<ExpressionStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ExpressionStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 144, RULE_expressionStatement);
        let mut _localctx: Rc<ExpressionStatementContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(881);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if ((((_la - 42)) & !0x3f) == 0 && ((1usize << (_la - 42)) & ((1usize << (Sizeof - 42)) | (1usize << (Alignof - 42)) | (1usize << (LeftParen - 42)))) != 0) || ((((_la - 74)) & !0x3f) == 0 && ((1usize << (_la - 74)) & ((1usize << (Plus - 74)) | (1usize << (PlusPlus - 74)) | (1usize << (Minus - 74)) | (1usize << (MinusMinus - 74)) | (1usize << (Star - 74)) | (1usize << (And - 74)) | (1usize << (Not - 74)) | (1usize << (Tilde - 74)))) != 0) || ((((_la - 108)) & !0x3f) == 0 && ((1usize << (_la - 108)) & ((1usize << (Identifier - 108)) | (1usize << (Constant - 108)) | (1usize << (DigitSequence - 108)) | (1usize << (StringLiteral - 108)))) != 0) {
				{
				/*InvokeRule expression*/
				recog.base.set_state(880);
				recog.expression()?;

				}
			}

			recog.base.set_state(883);
			recog.base.match_token(Semi,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- selectionStatement ----------------
pub type SelectionStatementContextAll<'input> = SelectionStatementContext<'input>;


pub type SelectionStatementContext<'input> = BaseParserRuleContext<'input,SelectionStatementContextExt<'input>>;

#[derive(Clone)]
pub struct SelectionStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for SelectionStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for SelectionStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_selectionStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_selectionStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for SelectionStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_selectionStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for SelectionStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_selectionStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_selectionStatement }
}
antlr_rust::tid!{SelectionStatementContextExt<'a>}

impl<'input> SelectionStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<SelectionStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,SelectionStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait SelectionStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<SelectionStatementContextExt<'input>>{

fn ifSelection(&self) -> Option<Rc<IfSelectionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn switchSelection(&self) -> Option<Rc<SwitchSelectionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> SelectionStatementContextAttrs<'input> for SelectionStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn selectionStatement(&mut self,)
	-> Result<Rc<SelectionStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = SelectionStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 146, RULE_selectionStatement);
        let mut _localctx: Rc<SelectionStatementContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(887);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 If 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule ifSelection*/
					recog.base.set_state(885);
					recog.ifSelection()?;

					}
				}

			 Switch 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					/*InvokeRule switchSelection*/
					recog.base.set_state(886);
					recog.switchSelection()?;

					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- ifSelection ----------------
pub type IfSelectionContextAll<'input> = IfSelectionContext<'input>;


pub type IfSelectionContext<'input> = BaseParserRuleContext<'input,IfSelectionContextExt<'input>>;

#[derive(Clone)]
pub struct IfSelectionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for IfSelectionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for IfSelectionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_ifSelection(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_ifSelection(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for IfSelectionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_ifSelection(self);
	}
}

impl<'input> CustomRuleContext<'input> for IfSelectionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_ifSelection }
	//fn type_rule_index() -> usize where Self: Sized { RULE_ifSelection }
}
antlr_rust::tid!{IfSelectionContextExt<'a>}

impl<'input> IfSelectionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<IfSelectionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,IfSelectionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait IfSelectionContextAttrs<'input>: CParserContext<'input> + BorrowMut<IfSelectionContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token If
/// Returns `None` if there is no child corresponding to token If
fn If(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(If, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn expression(&self) -> Option<Rc<ExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
fn statement_all(&self) ->  Vec<Rc<StatementContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn statement(&self, i: usize) -> Option<Rc<StatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves first TerminalNode corresponding to token Else
/// Returns `None` if there is no child corresponding to token Else
fn Else(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Else, 0)
}

}

impl<'input> IfSelectionContextAttrs<'input> for IfSelectionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn ifSelection(&mut self,)
	-> Result<Rc<IfSelectionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = IfSelectionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 148, RULE_ifSelection);
        let mut _localctx: Rc<IfSelectionContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(889);
			recog.base.match_token(If,&mut recog.err_handler)?;

			recog.base.set_state(890);
			recog.base.match_token(LeftParen,&mut recog.err_handler)?;

			/*InvokeRule expression*/
			recog.base.set_state(891);
			recog.expression()?;

			recog.base.set_state(892);
			recog.base.match_token(RightParen,&mut recog.err_handler)?;

			/*InvokeRule statement*/
			recog.base.set_state(893);
			recog.statement()?;

			recog.base.set_state(896);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(96,&mut recog.base)? {
				x if x == 1=>{
					{
					recog.base.set_state(894);
					recog.base.match_token(Else,&mut recog.err_handler)?;

					/*InvokeRule statement*/
					recog.base.set_state(895);
					recog.statement()?;

					}
				}

				_ => {}
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- switchSelection ----------------
pub type SwitchSelectionContextAll<'input> = SwitchSelectionContext<'input>;


pub type SwitchSelectionContext<'input> = BaseParserRuleContext<'input,SwitchSelectionContextExt<'input>>;

#[derive(Clone)]
pub struct SwitchSelectionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for SwitchSelectionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for SwitchSelectionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_switchSelection(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_switchSelection(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for SwitchSelectionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_switchSelection(self);
	}
}

impl<'input> CustomRuleContext<'input> for SwitchSelectionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_switchSelection }
	//fn type_rule_index() -> usize where Self: Sized { RULE_switchSelection }
}
antlr_rust::tid!{SwitchSelectionContextExt<'a>}

impl<'input> SwitchSelectionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<SwitchSelectionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,SwitchSelectionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait SwitchSelectionContextAttrs<'input>: CParserContext<'input> + BorrowMut<SwitchSelectionContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Switch
/// Returns `None` if there is no child corresponding to token Switch
fn Switch(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Switch, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn expression(&self) -> Option<Rc<ExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
fn statement(&self) -> Option<Rc<StatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> SwitchSelectionContextAttrs<'input> for SwitchSelectionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn switchSelection(&mut self,)
	-> Result<Rc<SwitchSelectionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = SwitchSelectionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 150, RULE_switchSelection);
        let mut _localctx: Rc<SwitchSelectionContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(898);
			recog.base.match_token(Switch,&mut recog.err_handler)?;

			recog.base.set_state(899);
			recog.base.match_token(LeftParen,&mut recog.err_handler)?;

			/*InvokeRule expression*/
			recog.base.set_state(900);
			recog.expression()?;

			recog.base.set_state(901);
			recog.base.match_token(RightParen,&mut recog.err_handler)?;

			/*InvokeRule statement*/
			recog.base.set_state(902);
			recog.statement()?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- iterationStatement ----------------
pub type IterationStatementContextAll<'input> = IterationStatementContext<'input>;


pub type IterationStatementContext<'input> = BaseParserRuleContext<'input,IterationStatementContextExt<'input>>;

#[derive(Clone)]
pub struct IterationStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for IterationStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for IterationStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_iterationStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_iterationStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for IterationStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_iterationStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for IterationStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_iterationStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_iterationStatement }
}
antlr_rust::tid!{IterationStatementContextExt<'a>}

impl<'input> IterationStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<IterationStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,IterationStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait IterationStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<IterationStatementContextExt<'input>>{

fn whileIterationStatement(&self) -> Option<Rc<WhileIterationStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn doWhileIterationStatement(&self) -> Option<Rc<DoWhileIterationStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn forIterationStatement(&self) -> Option<Rc<ForIterationStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> IterationStatementContextAttrs<'input> for IterationStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn iterationStatement(&mut self,)
	-> Result<Rc<IterationStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = IterationStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 152, RULE_iterationStatement);
        let mut _localctx: Rc<IterationStatementContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(907);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 While 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule whileIterationStatement*/
					recog.base.set_state(904);
					recog.whileIterationStatement()?;

					}
				}

			 Do 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					/*InvokeRule doWhileIterationStatement*/
					recog.base.set_state(905);
					recog.doWhileIterationStatement()?;

					}
				}

			 For 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 3);
					recog.base.enter_outer_alt(None, 3);
					{
					/*InvokeRule forIterationStatement*/
					recog.base.set_state(906);
					recog.forIterationStatement()?;

					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- forIterationStatement ----------------
pub type ForIterationStatementContextAll<'input> = ForIterationStatementContext<'input>;


pub type ForIterationStatementContext<'input> = BaseParserRuleContext<'input,ForIterationStatementContextExt<'input>>;

#[derive(Clone)]
pub struct ForIterationStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ForIterationStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ForIterationStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_forIterationStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_forIterationStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ForIterationStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_forIterationStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for ForIterationStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_forIterationStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_forIterationStatement }
}
antlr_rust::tid!{ForIterationStatementContextExt<'a>}

impl<'input> ForIterationStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ForIterationStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ForIterationStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ForIterationStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<ForIterationStatementContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token For
/// Returns `None` if there is no child corresponding to token For
fn For(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(For, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn forCondition(&self) -> Option<Rc<ForConditionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
fn statement(&self) -> Option<Rc<StatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> ForIterationStatementContextAttrs<'input> for ForIterationStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn forIterationStatement(&mut self,)
	-> Result<Rc<ForIterationStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ForIterationStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 154, RULE_forIterationStatement);
        let mut _localctx: Rc<ForIterationStatementContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(909);
			recog.base.match_token(For,&mut recog.err_handler)?;

			recog.base.set_state(910);
			recog.base.match_token(LeftParen,&mut recog.err_handler)?;

			/*InvokeRule forCondition*/
			recog.base.set_state(911);
			recog.forCondition()?;

			recog.base.set_state(912);
			recog.base.match_token(RightParen,&mut recog.err_handler)?;

			/*InvokeRule statement*/
			recog.base.set_state(913);
			recog.statement()?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- whileIterationStatement ----------------
pub type WhileIterationStatementContextAll<'input> = WhileIterationStatementContext<'input>;


pub type WhileIterationStatementContext<'input> = BaseParserRuleContext<'input,WhileIterationStatementContextExt<'input>>;

#[derive(Clone)]
pub struct WhileIterationStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for WhileIterationStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for WhileIterationStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_whileIterationStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_whileIterationStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for WhileIterationStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_whileIterationStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for WhileIterationStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_whileIterationStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_whileIterationStatement }
}
antlr_rust::tid!{WhileIterationStatementContextExt<'a>}

impl<'input> WhileIterationStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<WhileIterationStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,WhileIterationStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait WhileIterationStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<WhileIterationStatementContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token While
/// Returns `None` if there is no child corresponding to token While
fn While(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(While, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn expression(&self) -> Option<Rc<ExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
fn statement(&self) -> Option<Rc<StatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> WhileIterationStatementContextAttrs<'input> for WhileIterationStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn whileIterationStatement(&mut self,)
	-> Result<Rc<WhileIterationStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = WhileIterationStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 156, RULE_whileIterationStatement);
        let mut _localctx: Rc<WhileIterationStatementContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(915);
			recog.base.match_token(While,&mut recog.err_handler)?;

			recog.base.set_state(916);
			recog.base.match_token(LeftParen,&mut recog.err_handler)?;

			/*InvokeRule expression*/
			recog.base.set_state(917);
			recog.expression()?;

			recog.base.set_state(918);
			recog.base.match_token(RightParen,&mut recog.err_handler)?;

			/*InvokeRule statement*/
			recog.base.set_state(919);
			recog.statement()?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- doWhileIterationStatement ----------------
pub type DoWhileIterationStatementContextAll<'input> = DoWhileIterationStatementContext<'input>;


pub type DoWhileIterationStatementContext<'input> = BaseParserRuleContext<'input,DoWhileIterationStatementContextExt<'input>>;

#[derive(Clone)]
pub struct DoWhileIterationStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for DoWhileIterationStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for DoWhileIterationStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_doWhileIterationStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_doWhileIterationStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for DoWhileIterationStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_doWhileIterationStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for DoWhileIterationStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_doWhileIterationStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_doWhileIterationStatement }
}
antlr_rust::tid!{DoWhileIterationStatementContextExt<'a>}

impl<'input> DoWhileIterationStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<DoWhileIterationStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,DoWhileIterationStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait DoWhileIterationStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<DoWhileIterationStatementContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Do
/// Returns `None` if there is no child corresponding to token Do
fn Do(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Do, 0)
}
fn statement(&self) -> Option<Rc<StatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token While
/// Returns `None` if there is no child corresponding to token While
fn While(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(While, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
fn expression(&self) -> Option<Rc<ExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
/// Retrieves first TerminalNode corresponding to token Semi
/// Returns `None` if there is no child corresponding to token Semi
fn Semi(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Semi, 0)
}

}

impl<'input> DoWhileIterationStatementContextAttrs<'input> for DoWhileIterationStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn doWhileIterationStatement(&mut self,)
	-> Result<Rc<DoWhileIterationStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = DoWhileIterationStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 158, RULE_doWhileIterationStatement);
        let mut _localctx: Rc<DoWhileIterationStatementContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(921);
			recog.base.match_token(Do,&mut recog.err_handler)?;

			/*InvokeRule statement*/
			recog.base.set_state(922);
			recog.statement()?;

			recog.base.set_state(923);
			recog.base.match_token(While,&mut recog.err_handler)?;

			recog.base.set_state(924);
			recog.base.match_token(LeftParen,&mut recog.err_handler)?;

			/*InvokeRule expression*/
			recog.base.set_state(925);
			recog.expression()?;

			recog.base.set_state(926);
			recog.base.match_token(RightParen,&mut recog.err_handler)?;

			recog.base.set_state(927);
			recog.base.match_token(Semi,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- forCondition ----------------
pub type ForConditionContextAll<'input> = ForConditionContext<'input>;


pub type ForConditionContext<'input> = BaseParserRuleContext<'input,ForConditionContextExt<'input>>;

#[derive(Clone)]
pub struct ForConditionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ForConditionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ForConditionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_forCondition(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_forCondition(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ForConditionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_forCondition(self);
	}
}

impl<'input> CustomRuleContext<'input> for ForConditionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_forCondition }
	//fn type_rule_index() -> usize where Self: Sized { RULE_forCondition }
}
antlr_rust::tid!{ForConditionContextExt<'a>}

impl<'input> ForConditionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ForConditionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ForConditionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ForConditionContextAttrs<'input>: CParserContext<'input> + BorrowMut<ForConditionContextExt<'input>>{

fn forBeforeExpression(&self) -> Option<Rc<ForBeforeExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves all `TerminalNode`s corresponding to token Semi in current rule
fn Semi_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Semi, starting from 0.
/// Returns `None` if number of children corresponding to token Semi is less or equal than `i`.
fn Semi(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Semi, i)
}
fn forMidExpression(&self) -> Option<Rc<ForMidExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn forAfterExpression(&self) -> Option<Rc<ForAfterExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> ForConditionContextAttrs<'input> for ForConditionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn forCondition(&mut self,)
	-> Result<Rc<ForConditionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ForConditionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 160, RULE_forCondition);
        let mut _localctx: Rc<ForConditionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule forBeforeExpression*/
			recog.base.set_state(929);
			recog.forBeforeExpression()?;

			recog.base.set_state(930);
			recog.base.match_token(Semi,&mut recog.err_handler)?;

			recog.base.set_state(932);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if ((((_la - 42)) & !0x3f) == 0 && ((1usize << (_la - 42)) & ((1usize << (Sizeof - 42)) | (1usize << (Alignof - 42)) | (1usize << (LeftParen - 42)))) != 0) || ((((_la - 74)) & !0x3f) == 0 && ((1usize << (_la - 74)) & ((1usize << (Plus - 74)) | (1usize << (PlusPlus - 74)) | (1usize << (Minus - 74)) | (1usize << (MinusMinus - 74)) | (1usize << (Star - 74)) | (1usize << (And - 74)) | (1usize << (Not - 74)) | (1usize << (Tilde - 74)))) != 0) || ((((_la - 108)) & !0x3f) == 0 && ((1usize << (_la - 108)) & ((1usize << (Identifier - 108)) | (1usize << (Constant - 108)) | (1usize << (DigitSequence - 108)) | (1usize << (StringLiteral - 108)))) != 0) {
				{
				/*InvokeRule forMidExpression*/
				recog.base.set_state(931);
				recog.forMidExpression()?;

				}
			}

			recog.base.set_state(934);
			recog.base.match_token(Semi,&mut recog.err_handler)?;

			recog.base.set_state(936);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if ((((_la - 42)) & !0x3f) == 0 && ((1usize << (_la - 42)) & ((1usize << (Sizeof - 42)) | (1usize << (Alignof - 42)) | (1usize << (LeftParen - 42)))) != 0) || ((((_la - 74)) & !0x3f) == 0 && ((1usize << (_la - 74)) & ((1usize << (Plus - 74)) | (1usize << (PlusPlus - 74)) | (1usize << (Minus - 74)) | (1usize << (MinusMinus - 74)) | (1usize << (Star - 74)) | (1usize << (And - 74)) | (1usize << (Not - 74)) | (1usize << (Tilde - 74)))) != 0) || ((((_la - 108)) & !0x3f) == 0 && ((1usize << (_la - 108)) & ((1usize << (Identifier - 108)) | (1usize << (Constant - 108)) | (1usize << (DigitSequence - 108)) | (1usize << (StringLiteral - 108)))) != 0) {
				{
				/*InvokeRule forAfterExpression*/
				recog.base.set_state(935);
				recog.forAfterExpression()?;

				}
			}

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- forDeclaration ----------------
pub type ForDeclarationContextAll<'input> = ForDeclarationContext<'input>;


pub type ForDeclarationContext<'input> = BaseParserRuleContext<'input,ForDeclarationContextExt<'input>>;

#[derive(Clone)]
pub struct ForDeclarationContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ForDeclarationContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ForDeclarationContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_forDeclaration(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_forDeclaration(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ForDeclarationContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_forDeclaration(self);
	}
}

impl<'input> CustomRuleContext<'input> for ForDeclarationContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_forDeclaration }
	//fn type_rule_index() -> usize where Self: Sized { RULE_forDeclaration }
}
antlr_rust::tid!{ForDeclarationContextExt<'a>}

impl<'input> ForDeclarationContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ForDeclarationContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ForDeclarationContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ForDeclarationContextAttrs<'input>: CParserContext<'input> + BorrowMut<ForDeclarationContextExt<'input>>{

fn declarationSpecifiers(&self) -> Option<Rc<DeclarationSpecifiersContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn initDeclaratorList(&self) -> Option<Rc<InitDeclaratorListContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> ForDeclarationContextAttrs<'input> for ForDeclarationContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn forDeclaration(&mut self,)
	-> Result<Rc<ForDeclarationContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ForDeclarationContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 162, RULE_forDeclaration);
        let mut _localctx: Rc<ForDeclarationContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule declarationSpecifiers*/
			recog.base.set_state(938);
			recog.declarationSpecifiers()?;

			recog.base.set_state(940);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if (((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__6) | (1usize << T__8) | (1usize << T__9) | (1usize << T__10) | (1usize << T__11) | (1usize << T__12))) != 0) || ((((_la - 62)) & !0x3f) == 0 && ((1usize << (_la - 62)) & ((1usize << (LeftParen - 62)) | (1usize << (Star - 62)) | (1usize << (Caret - 62)))) != 0) || _la==Identifier {
				{
				/*InvokeRule initDeclaratorList*/
				recog.base.set_state(939);
				recog.initDeclaratorList()?;

				}
			}

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- forBeforeExpression ----------------
pub type ForBeforeExpressionContextAll<'input> = ForBeforeExpressionContext<'input>;


pub type ForBeforeExpressionContext<'input> = BaseParserRuleContext<'input,ForBeforeExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct ForBeforeExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ForBeforeExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ForBeforeExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_forBeforeExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_forBeforeExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ForBeforeExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_forBeforeExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for ForBeforeExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_forBeforeExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_forBeforeExpression }
}
antlr_rust::tid!{ForBeforeExpressionContextExt<'a>}

impl<'input> ForBeforeExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ForBeforeExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ForBeforeExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ForBeforeExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<ForBeforeExpressionContextExt<'input>>{

fn forDeclaration(&self) -> Option<Rc<ForDeclarationContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn expression(&self) -> Option<Rc<ExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> ForBeforeExpressionContextAttrs<'input> for ForBeforeExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn forBeforeExpression(&mut self,)
	-> Result<Rc<ForBeforeExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ForBeforeExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 164, RULE_forBeforeExpression);
        let mut _localctx: Rc<ForBeforeExpressionContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(946);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(102,&mut recog.base)? {
				1 =>{
					{
					/*InvokeRule forDeclaration*/
					recog.base.set_state(942);
					recog.forDeclaration()?;

					}
				}
			,
				2 =>{
					{
					recog.base.set_state(944);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if ((((_la - 42)) & !0x3f) == 0 && ((1usize << (_la - 42)) & ((1usize << (Sizeof - 42)) | (1usize << (Alignof - 42)) | (1usize << (LeftParen - 42)))) != 0) || ((((_la - 74)) & !0x3f) == 0 && ((1usize << (_la - 74)) & ((1usize << (Plus - 74)) | (1usize << (PlusPlus - 74)) | (1usize << (Minus - 74)) | (1usize << (MinusMinus - 74)) | (1usize << (Star - 74)) | (1usize << (And - 74)) | (1usize << (Not - 74)) | (1usize << (Tilde - 74)))) != 0) || ((((_la - 108)) & !0x3f) == 0 && ((1usize << (_la - 108)) & ((1usize << (Identifier - 108)) | (1usize << (Constant - 108)) | (1usize << (DigitSequence - 108)) | (1usize << (StringLiteral - 108)))) != 0) {
						{
						/*InvokeRule expression*/
						recog.base.set_state(943);
						recog.expression()?;

						}
					}

					}
				}

				_ => {}
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- forAfterExpression ----------------
pub type ForAfterExpressionContextAll<'input> = ForAfterExpressionContext<'input>;


pub type ForAfterExpressionContext<'input> = BaseParserRuleContext<'input,ForAfterExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct ForAfterExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ForAfterExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ForAfterExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_forAfterExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_forAfterExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ForAfterExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_forAfterExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for ForAfterExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_forAfterExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_forAfterExpression }
}
antlr_rust::tid!{ForAfterExpressionContextExt<'a>}

impl<'input> ForAfterExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ForAfterExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ForAfterExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ForAfterExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<ForAfterExpressionContextExt<'input>>{

fn expression(&self) -> Option<Rc<ExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> ForAfterExpressionContextAttrs<'input> for ForAfterExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn forAfterExpression(&mut self,)
	-> Result<Rc<ForAfterExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ForAfterExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 166, RULE_forAfterExpression);
        let mut _localctx: Rc<ForAfterExpressionContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule expression*/
			recog.base.set_state(948);
			recog.expression()?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- forMidExpression ----------------
pub type ForMidExpressionContextAll<'input> = ForMidExpressionContext<'input>;


pub type ForMidExpressionContext<'input> = BaseParserRuleContext<'input,ForMidExpressionContextExt<'input>>;

#[derive(Clone)]
pub struct ForMidExpressionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ForMidExpressionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ForMidExpressionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_forMidExpression(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_forMidExpression(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ForMidExpressionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_forMidExpression(self);
	}
}

impl<'input> CustomRuleContext<'input> for ForMidExpressionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_forMidExpression }
	//fn type_rule_index() -> usize where Self: Sized { RULE_forMidExpression }
}
antlr_rust::tid!{ForMidExpressionContextExt<'a>}

impl<'input> ForMidExpressionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ForMidExpressionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ForMidExpressionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ForMidExpressionContextAttrs<'input>: CParserContext<'input> + BorrowMut<ForMidExpressionContextExt<'input>>{

fn expression(&self) -> Option<Rc<ExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> ForMidExpressionContextAttrs<'input> for ForMidExpressionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn forMidExpression(&mut self,)
	-> Result<Rc<ForMidExpressionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ForMidExpressionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 168, RULE_forMidExpression);
        let mut _localctx: Rc<ForMidExpressionContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule expression*/
			recog.base.set_state(950);
			recog.expression()?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- jumpStatement ----------------
pub type JumpStatementContextAll<'input> = JumpStatementContext<'input>;


pub type JumpStatementContext<'input> = BaseParserRuleContext<'input,JumpStatementContextExt<'input>>;

#[derive(Clone)]
pub struct JumpStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for JumpStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for JumpStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_jumpStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_jumpStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for JumpStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_jumpStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for JumpStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_jumpStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_jumpStatement }
}
antlr_rust::tid!{JumpStatementContextExt<'a>}

impl<'input> JumpStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<JumpStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,JumpStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait JumpStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<JumpStatementContextExt<'input>>{

fn continueStatement(&self) -> Option<Rc<ContinueStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn breakStatement(&self) -> Option<Rc<BreakStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn returnStatement(&self) -> Option<Rc<ReturnStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> JumpStatementContextAttrs<'input> for JumpStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn jumpStatement(&mut self,)
	-> Result<Rc<JumpStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = JumpStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 170, RULE_jumpStatement);
        let mut _localctx: Rc<JumpStatementContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(955);
			recog.err_handler.sync(&mut recog.base)?;
			match recog.base.input.la(1) {
			 Continue 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule continueStatement*/
					recog.base.set_state(952);
					recog.continueStatement()?;

					}
				}

			 Break 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					/*InvokeRule breakStatement*/
					recog.base.set_state(953);
					recog.breakStatement()?;

					}
				}

			 Return 
				=> {
					//recog.base.enter_outer_alt(_localctx.clone(), 3);
					recog.base.enter_outer_alt(None, 3);
					{
					/*InvokeRule returnStatement*/
					recog.base.set_state(954);
					recog.returnStatement()?;

					}
				}

				_ => Err(ANTLRError::NoAltError(NoViableAltError::new(&mut recog.base)))?
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- breakpointStatement ----------------
pub type BreakpointStatementContextAll<'input> = BreakpointStatementContext<'input>;


pub type BreakpointStatementContext<'input> = BaseParserRuleContext<'input,BreakpointStatementContextExt<'input>>;

#[derive(Clone)]
pub struct BreakpointStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for BreakpointStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for BreakpointStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_breakpointStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_breakpointStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for BreakpointStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_breakpointStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for BreakpointStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_breakpointStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_breakpointStatement }
}
antlr_rust::tid!{BreakpointStatementContextExt<'a>}

impl<'input> BreakpointStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<BreakpointStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,BreakpointStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait BreakpointStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<BreakpointStatementContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Breakpoint
/// Returns `None` if there is no child corresponding to token Breakpoint
fn Breakpoint(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Breakpoint, 0)
}
/// Retrieves first TerminalNode corresponding to token Identifier
/// Returns `None` if there is no child corresponding to token Identifier
fn Identifier(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, 0)
}
/// Retrieves first TerminalNode corresponding to token Semi
/// Returns `None` if there is no child corresponding to token Semi
fn Semi(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Semi, 0)
}
/// Retrieves first TerminalNode corresponding to token LeftParen
/// Returns `None` if there is no child corresponding to token LeftParen
fn LeftParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(LeftParen, 0)
}
/// Retrieves first TerminalNode corresponding to token RightParen
/// Returns `None` if there is no child corresponding to token RightParen
fn RightParen(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(RightParen, 0)
}
fn breakpointArg_all(&self) ->  Vec<Rc<BreakpointArgContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn breakpointArg(&self, i: usize) -> Option<Rc<BreakpointArgContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}
/// Retrieves all `TerminalNode`s corresponding to token Comma in current rule
fn Comma_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Comma, starting from 0.
/// Returns `None` if number of children corresponding to token Comma is less or equal than `i`.
fn Comma(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Comma, i)
}

}

impl<'input> BreakpointStatementContextAttrs<'input> for BreakpointStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn breakpointStatement(&mut self,)
	-> Result<Rc<BreakpointStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = BreakpointStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 172, RULE_breakpointStatement);
        let mut _localctx: Rc<BreakpointStatementContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(978);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(106,&mut recog.base)? {
				1 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					recog.base.set_state(957);
					recog.base.match_token(Breakpoint,&mut recog.err_handler)?;

					recog.base.set_state(958);
					recog.base.match_token(Identifier,&mut recog.err_handler)?;

					recog.base.set_state(961);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					if _la==LeftParen {
						{
						recog.base.set_state(959);
						recog.base.match_token(LeftParen,&mut recog.err_handler)?;

						recog.base.set_state(960);
						recog.base.match_token(RightParen,&mut recog.err_handler)?;

						}
					}

					recog.base.set_state(963);
					recog.base.match_token(Semi,&mut recog.err_handler)?;

					}
				}
			,
				2 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					recog.base.set_state(964);
					recog.base.match_token(Breakpoint,&mut recog.err_handler)?;

					recog.base.set_state(965);
					recog.base.match_token(Identifier,&mut recog.err_handler)?;

					recog.base.set_state(966);
					recog.base.match_token(LeftParen,&mut recog.err_handler)?;

					/*InvokeRule breakpointArg*/
					recog.base.set_state(967);
					recog.breakpointArg()?;

					recog.base.set_state(972);
					recog.err_handler.sync(&mut recog.base)?;
					_la = recog.base.input.la(1);
					while _la==Comma {
						{
						{
						recog.base.set_state(968);
						recog.base.match_token(Comma,&mut recog.err_handler)?;

						/*InvokeRule breakpointArg*/
						recog.base.set_state(969);
						recog.breakpointArg()?;

						}
						}
						recog.base.set_state(974);
						recog.err_handler.sync(&mut recog.base)?;
						_la = recog.base.input.la(1);
					}
					recog.base.set_state(975);
					recog.base.match_token(RightParen,&mut recog.err_handler)?;

					recog.base.set_state(976);
					recog.base.match_token(Semi,&mut recog.err_handler)?;

					}
				}

				_ => {}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- breakpointArg ----------------
pub type BreakpointArgContextAll<'input> = BreakpointArgContext<'input>;


pub type BreakpointArgContext<'input> = BaseParserRuleContext<'input,BreakpointArgContextExt<'input>>;

#[derive(Clone)]
pub struct BreakpointArgContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for BreakpointArgContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for BreakpointArgContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_breakpointArg(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_breakpointArg(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for BreakpointArgContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_breakpointArg(self);
	}
}

impl<'input> CustomRuleContext<'input> for BreakpointArgContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_breakpointArg }
	//fn type_rule_index() -> usize where Self: Sized { RULE_breakpointArg }
}
antlr_rust::tid!{BreakpointArgContextExt<'a>}

impl<'input> BreakpointArgContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<BreakpointArgContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,BreakpointArgContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait BreakpointArgContextAttrs<'input>: CParserContext<'input> + BorrowMut<BreakpointArgContextExt<'input>>{

/// Retrieves all `TerminalNode`s corresponding to token Identifier in current rule
fn Identifier_all(&self) -> Vec<Rc<TerminalNode<'input,CParserContextType>>>  where Self:Sized{
	self.children_of_type()
}
/// Retrieves 'i's TerminalNode corresponding to token Identifier, starting from 0.
/// Returns `None` if number of children corresponding to token Identifier is less or equal than `i`.
fn Identifier(&self, i: usize) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Identifier, i)
}
/// Retrieves first TerminalNode corresponding to token Dot
/// Returns `None` if there is no child corresponding to token Dot
fn Dot(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Dot, 0)
}

}

impl<'input> BreakpointArgContextAttrs<'input> for BreakpointArgContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn breakpointArg(&mut self,)
	-> Result<Rc<BreakpointArgContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = BreakpointArgContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 174, RULE_breakpointArg);
        let mut _localctx: Rc<BreakpointArgContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(980);
			recog.base.match_token(Identifier,&mut recog.err_handler)?;

			recog.base.set_state(983);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if _la==Dot {
				{
				recog.base.set_state(981);
				recog.base.match_token(Dot,&mut recog.err_handler)?;

				recog.base.set_state(982);
				recog.base.match_token(Identifier,&mut recog.err_handler)?;

				}
			}

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- continueStatement ----------------
pub type ContinueStatementContextAll<'input> = ContinueStatementContext<'input>;


pub type ContinueStatementContext<'input> = BaseParserRuleContext<'input,ContinueStatementContextExt<'input>>;

#[derive(Clone)]
pub struct ContinueStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ContinueStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ContinueStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_continueStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_continueStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ContinueStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_continueStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for ContinueStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_continueStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_continueStatement }
}
antlr_rust::tid!{ContinueStatementContextExt<'a>}

impl<'input> ContinueStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ContinueStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ContinueStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ContinueStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<ContinueStatementContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Continue
/// Returns `None` if there is no child corresponding to token Continue
fn Continue(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Continue, 0)
}
/// Retrieves first TerminalNode corresponding to token Semi
/// Returns `None` if there is no child corresponding to token Semi
fn Semi(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Semi, 0)
}

}

impl<'input> ContinueStatementContextAttrs<'input> for ContinueStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn continueStatement(&mut self,)
	-> Result<Rc<ContinueStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ContinueStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 176, RULE_continueStatement);
        let mut _localctx: Rc<ContinueStatementContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(985);
			recog.base.match_token(Continue,&mut recog.err_handler)?;

			recog.base.set_state(986);
			recog.base.match_token(Semi,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- breakStatement ----------------
pub type BreakStatementContextAll<'input> = BreakStatementContext<'input>;


pub type BreakStatementContext<'input> = BaseParserRuleContext<'input,BreakStatementContextExt<'input>>;

#[derive(Clone)]
pub struct BreakStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for BreakStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for BreakStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_breakStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_breakStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for BreakStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_breakStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for BreakStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_breakStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_breakStatement }
}
antlr_rust::tid!{BreakStatementContextExt<'a>}

impl<'input> BreakStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<BreakStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,BreakStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait BreakStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<BreakStatementContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Break
/// Returns `None` if there is no child corresponding to token Break
fn Break(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Break, 0)
}
/// Retrieves first TerminalNode corresponding to token Semi
/// Returns `None` if there is no child corresponding to token Semi
fn Semi(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Semi, 0)
}

}

impl<'input> BreakStatementContextAttrs<'input> for BreakStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn breakStatement(&mut self,)
	-> Result<Rc<BreakStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = BreakStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 178, RULE_breakStatement);
        let mut _localctx: Rc<BreakStatementContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(988);
			recog.base.match_token(Break,&mut recog.err_handler)?;

			recog.base.set_state(989);
			recog.base.match_token(Semi,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- returnStatement ----------------
pub type ReturnStatementContextAll<'input> = ReturnStatementContext<'input>;


pub type ReturnStatementContext<'input> = BaseParserRuleContext<'input,ReturnStatementContextExt<'input>>;

#[derive(Clone)]
pub struct ReturnStatementContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ReturnStatementContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ReturnStatementContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_returnStatement(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_returnStatement(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ReturnStatementContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_returnStatement(self);
	}
}

impl<'input> CustomRuleContext<'input> for ReturnStatementContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_returnStatement }
	//fn type_rule_index() -> usize where Self: Sized { RULE_returnStatement }
}
antlr_rust::tid!{ReturnStatementContextExt<'a>}

impl<'input> ReturnStatementContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ReturnStatementContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ReturnStatementContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ReturnStatementContextAttrs<'input>: CParserContext<'input> + BorrowMut<ReturnStatementContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token Return
/// Returns `None` if there is no child corresponding to token Return
fn Return(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Return, 0)
}
/// Retrieves first TerminalNode corresponding to token Semi
/// Returns `None` if there is no child corresponding to token Semi
fn Semi(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Semi, 0)
}
fn expression(&self) -> Option<Rc<ExpressionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> ReturnStatementContextAttrs<'input> for ReturnStatementContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn returnStatement(&mut self,)
	-> Result<Rc<ReturnStatementContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ReturnStatementContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 180, RULE_returnStatement);
        let mut _localctx: Rc<ReturnStatementContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(991);
			recog.base.match_token(Return,&mut recog.err_handler)?;

			recog.base.set_state(993);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if ((((_la - 42)) & !0x3f) == 0 && ((1usize << (_la - 42)) & ((1usize << (Sizeof - 42)) | (1usize << (Alignof - 42)) | (1usize << (LeftParen - 42)))) != 0) || ((((_la - 74)) & !0x3f) == 0 && ((1usize << (_la - 74)) & ((1usize << (Plus - 74)) | (1usize << (PlusPlus - 74)) | (1usize << (Minus - 74)) | (1usize << (MinusMinus - 74)) | (1usize << (Star - 74)) | (1usize << (And - 74)) | (1usize << (Not - 74)) | (1usize << (Tilde - 74)))) != 0) || ((((_la - 108)) & !0x3f) == 0 && ((1usize << (_la - 108)) & ((1usize << (Identifier - 108)) | (1usize << (Constant - 108)) | (1usize << (DigitSequence - 108)) | (1usize << (StringLiteral - 108)))) != 0) {
				{
				/*InvokeRule expression*/
				recog.base.set_state(992);
				recog.expression()?;

				}
			}

			recog.base.set_state(995);
			recog.base.match_token(Semi,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- compilationUnit ----------------
pub type CompilationUnitContextAll<'input> = CompilationUnitContext<'input>;


pub type CompilationUnitContext<'input> = BaseParserRuleContext<'input,CompilationUnitContextExt<'input>>;

#[derive(Clone)]
pub struct CompilationUnitContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for CompilationUnitContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for CompilationUnitContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_compilationUnit(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_compilationUnit(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for CompilationUnitContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_compilationUnit(self);
	}
}

impl<'input> CustomRuleContext<'input> for CompilationUnitContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_compilationUnit }
	//fn type_rule_index() -> usize where Self: Sized { RULE_compilationUnit }
}
antlr_rust::tid!{CompilationUnitContextExt<'a>}

impl<'input> CompilationUnitContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<CompilationUnitContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,CompilationUnitContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait CompilationUnitContextAttrs<'input>: CParserContext<'input> + BorrowMut<CompilationUnitContextExt<'input>>{

/// Retrieves first TerminalNode corresponding to token EOF
/// Returns `None` if there is no child corresponding to token EOF
fn EOF(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(EOF, 0)
}
fn translationUnit(&self) -> Option<Rc<TranslationUnitContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> CompilationUnitContextAttrs<'input> for CompilationUnitContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn compilationUnit(&mut self,)
	-> Result<Rc<CompilationUnitContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = CompilationUnitContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 182, RULE_compilationUnit);
        let mut _localctx: Rc<CompilationUnitContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(998);
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			if (((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__0) | (1usize << T__1) | (1usize << T__2) | (1usize << T__3) | (1usize << T__4) | (1usize << T__5) | (1usize << T__6) | (1usize << T__7) | (1usize << Auto) | (1usize << Char) | (1usize << Const) | (1usize << Double) | (1usize << Enum) | (1usize << Extern) | (1usize << Float))) != 0) || ((((_la - 34)) & !0x3f) == 0 && ((1usize << (_la - 34)) & ((1usize << (Inline - 34)) | (1usize << (Int - 34)) | (1usize << (Long - 34)) | (1usize << (Register - 34)) | (1usize << (Restrict - 34)) | (1usize << (Short - 34)) | (1usize << (Signed - 34)) | (1usize << (Static - 34)) | (1usize << (Struct - 34)) | (1usize << (Typedef - 34)) | (1usize << (Union - 34)) | (1usize << (Unsigned - 34)) | (1usize << (Void - 34)) | (1usize << (Volatile - 34)) | (1usize << (Alignas - 34)) | (1usize << (Atomic - 34)) | (1usize << (Bool - 34)) | (1usize << (Complex - 34)) | (1usize << (Noreturn - 34)) | (1usize << (StaticAssert - 34)) | (1usize << (ThreadLocal - 34)))) != 0) || _la==Semi || _la==Identifier {
				{
				/*InvokeRule translationUnit*/
				recog.base.set_state(997);
				recog.translationUnit()?;

				}
			}

			recog.base.set_state(1000);
			recog.base.match_token(EOF,&mut recog.err_handler)?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- translationUnit ----------------
pub type TranslationUnitContextAll<'input> = TranslationUnitContext<'input>;


pub type TranslationUnitContext<'input> = BaseParserRuleContext<'input,TranslationUnitContextExt<'input>>;

#[derive(Clone)]
pub struct TranslationUnitContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for TranslationUnitContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for TranslationUnitContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_translationUnit(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_translationUnit(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for TranslationUnitContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_translationUnit(self);
	}
}

impl<'input> CustomRuleContext<'input> for TranslationUnitContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_translationUnit }
	//fn type_rule_index() -> usize where Self: Sized { RULE_translationUnit }
}
antlr_rust::tid!{TranslationUnitContextExt<'a>}

impl<'input> TranslationUnitContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<TranslationUnitContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,TranslationUnitContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait TranslationUnitContextAttrs<'input>: CParserContext<'input> + BorrowMut<TranslationUnitContextExt<'input>>{

fn externalDeclaration_all(&self) ->  Vec<Rc<ExternalDeclarationContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn externalDeclaration(&self, i: usize) -> Option<Rc<ExternalDeclarationContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}

}

impl<'input> TranslationUnitContextAttrs<'input> for TranslationUnitContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn translationUnit(&mut self,)
	-> Result<Rc<TranslationUnitContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = TranslationUnitContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 184, RULE_translationUnit);
        let mut _localctx: Rc<TranslationUnitContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(1003); 
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			loop {
				{
				{
				/*InvokeRule externalDeclaration*/
				recog.base.set_state(1002);
				recog.externalDeclaration()?;

				}
				}
				recog.base.set_state(1005); 
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
				if !((((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__0) | (1usize << T__1) | (1usize << T__2) | (1usize << T__3) | (1usize << T__4) | (1usize << T__5) | (1usize << T__6) | (1usize << T__7) | (1usize << Auto) | (1usize << Char) | (1usize << Const) | (1usize << Double) | (1usize << Enum) | (1usize << Extern) | (1usize << Float))) != 0) || ((((_la - 34)) & !0x3f) == 0 && ((1usize << (_la - 34)) & ((1usize << (Inline - 34)) | (1usize << (Int - 34)) | (1usize << (Long - 34)) | (1usize << (Register - 34)) | (1usize << (Restrict - 34)) | (1usize << (Short - 34)) | (1usize << (Signed - 34)) | (1usize << (Static - 34)) | (1usize << (Struct - 34)) | (1usize << (Typedef - 34)) | (1usize << (Union - 34)) | (1usize << (Unsigned - 34)) | (1usize << (Void - 34)) | (1usize << (Volatile - 34)) | (1usize << (Alignas - 34)) | (1usize << (Atomic - 34)) | (1usize << (Bool - 34)) | (1usize << (Complex - 34)) | (1usize << (Noreturn - 34)) | (1usize << (StaticAssert - 34)) | (1usize << (ThreadLocal - 34)))) != 0) || _la==Semi || _la==Identifier) {break}
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- externalDeclaration ----------------
pub type ExternalDeclarationContextAll<'input> = ExternalDeclarationContext<'input>;


pub type ExternalDeclarationContext<'input> = BaseParserRuleContext<'input,ExternalDeclarationContextExt<'input>>;

#[derive(Clone)]
pub struct ExternalDeclarationContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for ExternalDeclarationContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for ExternalDeclarationContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_externalDeclaration(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_externalDeclaration(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for ExternalDeclarationContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_externalDeclaration(self);
	}
}

impl<'input> CustomRuleContext<'input> for ExternalDeclarationContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_externalDeclaration }
	//fn type_rule_index() -> usize where Self: Sized { RULE_externalDeclaration }
}
antlr_rust::tid!{ExternalDeclarationContextExt<'a>}

impl<'input> ExternalDeclarationContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<ExternalDeclarationContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,ExternalDeclarationContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait ExternalDeclarationContextAttrs<'input>: CParserContext<'input> + BorrowMut<ExternalDeclarationContextExt<'input>>{

fn functionDefinition(&self) -> Option<Rc<FunctionDefinitionContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn declaration(&self) -> Option<Rc<DeclarationContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
/// Retrieves first TerminalNode corresponding to token Semi
/// Returns `None` if there is no child corresponding to token Semi
fn Semi(&self) -> Option<Rc<TerminalNode<'input,CParserContextType>>> where Self:Sized{
	self.get_token(Semi, 0)
}

}

impl<'input> ExternalDeclarationContextAttrs<'input> for ExternalDeclarationContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn externalDeclaration(&mut self,)
	-> Result<Rc<ExternalDeclarationContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = ExternalDeclarationContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 186, RULE_externalDeclaration);
        let mut _localctx: Rc<ExternalDeclarationContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			recog.base.set_state(1010);
			recog.err_handler.sync(&mut recog.base)?;
			match  recog.interpreter.adaptive_predict(111,&mut recog.base)? {
				1 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 1);
					recog.base.enter_outer_alt(None, 1);
					{
					/*InvokeRule functionDefinition*/
					recog.base.set_state(1007);
					recog.functionDefinition()?;

					}
				}
			,
				2 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 2);
					recog.base.enter_outer_alt(None, 2);
					{
					/*InvokeRule declaration*/
					recog.base.set_state(1008);
					recog.declaration()?;

					}
				}
			,
				3 =>{
					//recog.base.enter_outer_alt(_localctx.clone(), 3);
					recog.base.enter_outer_alt(None, 3);
					{
					recog.base.set_state(1009);
					recog.base.match_token(Semi,&mut recog.err_handler)?;

					}
				}

				_ => {}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- functionDefinition ----------------
pub type FunctionDefinitionContextAll<'input> = FunctionDefinitionContext<'input>;


pub type FunctionDefinitionContext<'input> = BaseParserRuleContext<'input,FunctionDefinitionContextExt<'input>>;

#[derive(Clone)]
pub struct FunctionDefinitionContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for FunctionDefinitionContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for FunctionDefinitionContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_functionDefinition(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_functionDefinition(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for FunctionDefinitionContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_functionDefinition(self);
	}
}

impl<'input> CustomRuleContext<'input> for FunctionDefinitionContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_functionDefinition }
	//fn type_rule_index() -> usize where Self: Sized { RULE_functionDefinition }
}
antlr_rust::tid!{FunctionDefinitionContextExt<'a>}

impl<'input> FunctionDefinitionContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<FunctionDefinitionContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,FunctionDefinitionContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait FunctionDefinitionContextAttrs<'input>: CParserContext<'input> + BorrowMut<FunctionDefinitionContextExt<'input>>{

fn declarationSpecifiers(&self) -> Option<Rc<DeclarationSpecifiersContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn declarator(&self) -> Option<Rc<DeclaratorContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}
fn compoundStatement(&self) -> Option<Rc<CompoundStatementContextAll<'input>>> where Self:Sized{
	self.child_of_type(0)
}

}

impl<'input> FunctionDefinitionContextAttrs<'input> for FunctionDefinitionContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn functionDefinition(&mut self,)
	-> Result<Rc<FunctionDefinitionContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = FunctionDefinitionContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 188, RULE_functionDefinition);
        let mut _localctx: Rc<FunctionDefinitionContextAll> = _localctx;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			/*InvokeRule declarationSpecifiers*/
			recog.base.set_state(1012);
			recog.declarationSpecifiers()?;

			/*InvokeRule declarator*/
			recog.base.set_state(1013);
			recog.declarator()?;

			/*InvokeRule compoundStatement*/
			recog.base.set_state(1014);
			recog.compoundStatement()?;

			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}
//------------------- declarationList ----------------
pub type DeclarationListContextAll<'input> = DeclarationListContext<'input>;


pub type DeclarationListContext<'input> = BaseParserRuleContext<'input,DeclarationListContextExt<'input>>;

#[derive(Clone)]
pub struct DeclarationListContextExt<'input>{
ph:PhantomData<&'input str>
}

impl<'input> CParserContext<'input> for DeclarationListContext<'input>{}

impl<'input,'a> Listenable<dyn CListener<'input> + 'a> for DeclarationListContext<'input>{
		fn enter(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.enter_every_rule(self);
			listener.enter_declarationList(self);
		}
		fn exit(&self,listener: &mut (dyn CListener<'input> + 'a)) {
			listener.exit_declarationList(self);
			listener.exit_every_rule(self);
		}
}

impl<'input,'a> Visitable<dyn CVisitor<'input> + 'a> for DeclarationListContext<'input>{
	fn accept(&self,visitor: &mut (dyn CVisitor<'input> + 'a)) {
		visitor.visit_declarationList(self);
	}
}

impl<'input> CustomRuleContext<'input> for DeclarationListContextExt<'input>{
	type TF = LocalTokenFactory<'input>;
	type Ctx = CParserContextType;
	fn get_rule_index(&self) -> usize { RULE_declarationList }
	//fn type_rule_index() -> usize where Self: Sized { RULE_declarationList }
}
antlr_rust::tid!{DeclarationListContextExt<'a>}

impl<'input> DeclarationListContextExt<'input>{
	fn new(parent: Option<Rc<dyn CParserContext<'input> + 'input > >, invoking_state: isize) -> Rc<DeclarationListContextAll<'input>> {
		Rc::new(
			BaseParserRuleContext::new_parser_ctx(parent, invoking_state,DeclarationListContextExt{
				ph:PhantomData
			}),
		)
	}
}

pub trait DeclarationListContextAttrs<'input>: CParserContext<'input> + BorrowMut<DeclarationListContextExt<'input>>{

fn declaration_all(&self) ->  Vec<Rc<DeclarationContextAll<'input>>> where Self:Sized{
	self.children_of_type()
}
fn declaration(&self, i: usize) -> Option<Rc<DeclarationContextAll<'input>>> where Self:Sized{
	self.child_of_type(i)
}

}

impl<'input> DeclarationListContextAttrs<'input> for DeclarationListContext<'input>{}

impl<'input, I, H> CParser<'input, I, H>
where
    I: TokenStream<'input, TF = LocalTokenFactory<'input> > + TidAble<'input>,
    H: ErrorStrategy<'input,BaseParserType<'input,I>>
{
	pub fn declarationList(&mut self,)
	-> Result<Rc<DeclarationListContextAll<'input>>,ANTLRError> {
		let mut recog = self;
		let _parentctx = recog.ctx.take();
		let mut _localctx = DeclarationListContextExt::new(_parentctx.clone(), recog.base.get_state());
        recog.base.enter_rule(_localctx.clone(), 190, RULE_declarationList);
        let mut _localctx: Rc<DeclarationListContextAll> = _localctx;
		let mut _la: isize = -1;
		let result: Result<(), ANTLRError> = (|| {

			//recog.base.enter_outer_alt(_localctx.clone(), 1);
			recog.base.enter_outer_alt(None, 1);
			{
			recog.base.set_state(1017); 
			recog.err_handler.sync(&mut recog.base)?;
			_la = recog.base.input.la(1);
			loop {
				{
				{
				/*InvokeRule declaration*/
				recog.base.set_state(1016);
				recog.declaration()?;

				}
				}
				recog.base.set_state(1019); 
				recog.err_handler.sync(&mut recog.base)?;
				_la = recog.base.input.la(1);
				if !((((_la) & !0x3f) == 0 && ((1usize << _la) & ((1usize << T__0) | (1usize << T__1) | (1usize << T__2) | (1usize << T__3) | (1usize << T__4) | (1usize << T__5) | (1usize << T__6) | (1usize << T__7) | (1usize << Auto) | (1usize << Char) | (1usize << Const) | (1usize << Double) | (1usize << Enum) | (1usize << Extern) | (1usize << Float))) != 0) || ((((_la - 34)) & !0x3f) == 0 && ((1usize << (_la - 34)) & ((1usize << (Inline - 34)) | (1usize << (Int - 34)) | (1usize << (Long - 34)) | (1usize << (Register - 34)) | (1usize << (Restrict - 34)) | (1usize << (Short - 34)) | (1usize << (Signed - 34)) | (1usize << (Static - 34)) | (1usize << (Struct - 34)) | (1usize << (Typedef - 34)) | (1usize << (Union - 34)) | (1usize << (Unsigned - 34)) | (1usize << (Void - 34)) | (1usize << (Volatile - 34)) | (1usize << (Alignas - 34)) | (1usize << (Atomic - 34)) | (1usize << (Bool - 34)) | (1usize << (Complex - 34)) | (1usize << (Noreturn - 34)) | (1usize << (StaticAssert - 34)) | (1usize << (ThreadLocal - 34)))) != 0) || _la==Identifier) {break}
			}
			}
			Ok(())
		})();
		match result {
		Ok(_)=>{},
        Err(e @ ANTLRError::FallThrough(_)) => return Err(e),
		Err(ref re) => {
				//_localctx.exception = re;
				recog.err_handler.report_error(&mut recog.base, re);
				recog.err_handler.recover(&mut recog.base, re)?;
			}
		}
		recog.base.exit_rule();

		Ok(_localctx)
	}
}

lazy_static! {
    static ref _ATN: Arc<ATN> =
        Arc::new(ATNDeserializer::new(None).deserialize(_serializedATN.chars()));
    static ref _decision_to_DFA: Arc<Vec<antlr_rust::RwLock<DFA>>> = {
        let mut dfa = Vec::new();
        let size = _ATN.decision_to_state.len();
        for i in 0..size {
            dfa.push(DFA::new(
                _ATN.clone(),
                _ATN.get_decision_state(i),
                i as isize,
            ).into())
        }
        Arc::new(dfa)
    };
}



const _serializedATN:&'static str =
	"\x03\u{608b}\u{a72a}\u{8133}\u{b9ed}\u{417c}\u{3be7}\u{7786}\u{5964}\x03\
	\x78\u{400}\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04\x09\x04\x04\x05\x09\
	\x05\x04\x06\x09\x06\x04\x07\x09\x07\x04\x08\x09\x08\x04\x09\x09\x09\x04\
	\x0a\x09\x0a\x04\x0b\x09\x0b\x04\x0c\x09\x0c\x04\x0d\x09\x0d\x04\x0e\x09\
	\x0e\x04\x0f\x09\x0f\x04\x10\x09\x10\x04\x11\x09\x11\x04\x12\x09\x12\x04\
	\x13\x09\x13\x04\x14\x09\x14\x04\x15\x09\x15\x04\x16\x09\x16\x04\x17\x09\
	\x17\x04\x18\x09\x18\x04\x19\x09\x19\x04\x1a\x09\x1a\x04\x1b\x09\x1b\x04\
	\x1c\x09\x1c\x04\x1d\x09\x1d\x04\x1e\x09\x1e\x04\x1f\x09\x1f\x04\x20\x09\
	\x20\x04\x21\x09\x21\x04\x22\x09\x22\x04\x23\x09\x23\x04\x24\x09\x24\x04\
	\x25\x09\x25\x04\x26\x09\x26\x04\x27\x09\x27\x04\x28\x09\x28\x04\x29\x09\
	\x29\x04\x2a\x09\x2a\x04\x2b\x09\x2b\x04\x2c\x09\x2c\x04\x2d\x09\x2d\x04\
	\x2e\x09\x2e\x04\x2f\x09\x2f\x04\x30\x09\x30\x04\x31\x09\x31\x04\x32\x09\
	\x32\x04\x33\x09\x33\x04\x34\x09\x34\x04\x35\x09\x35\x04\x36\x09\x36\x04\
	\x37\x09\x37\x04\x38\x09\x38\x04\x39\x09\x39\x04\x3a\x09\x3a\x04\x3b\x09\
	\x3b\x04\x3c\x09\x3c\x04\x3d\x09\x3d\x04\x3e\x09\x3e\x04\x3f\x09\x3f\x04\
	\x40\x09\x40\x04\x41\x09\x41\x04\x42\x09\x42\x04\x43\x09\x43\x04\x44\x09\
	\x44\x04\x45\x09\x45\x04\x46\x09\x46\x04\x47\x09\x47\x04\x48\x09\x48\x04\
	\x49\x09\x49\x04\x4a\x09\x4a\x04\x4b\x09\x4b\x04\x4c\x09\x4c\x04\x4d\x09\
	\x4d\x04\x4e\x09\x4e\x04\x4f\x09\x4f\x04\x50\x09\x50\x04\x51\x09\x51\x04\
	\x52\x09\x52\x04\x53\x09\x53\x04\x54\x09\x54\x04\x55\x09\x55\x04\x56\x09\
	\x56\x04\x57\x09\x57\x04\x58\x09\x58\x04\x59\x09\x59\x04\x5a\x09\x5a\x04\
	\x5b\x09\x5b\x04\x5c\x09\x5c\x04\x5d\x09\x5d\x04\x5e\x09\x5e\x04\x5f\x09\
	\x5f\x04\x60\x09\x60\x04\x61\x09\x61\x03\x02\x03\x02\x03\x02\x06\x02\u{c6}\
	\x0a\x02\x0d\x02\x0e\x02\u{c7}\x03\x02\x03\x02\x03\x02\x03\x02\x05\x02\u{ce}\
	\x0a\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x04\
	\x03\x04\x03\x04\x07\x04\u{da}\x0a\x04\x0c\x04\x0e\x04\u{dd}\x0b\x04\x03\
	\x05\x03\x05\x05\x05\u{e1}\x0a\x05\x03\x05\x03\x05\x03\x05\x03\x06\x03\x06\
	\x03\x06\x03\x06\x03\x06\x03\x06\x03\x06\x03\x06\x03\x06\x03\x06\x03\x06\
	\x03\x06\x03\x06\x03\x06\x03\x06\x03\x06\x05\x06\u{f6}\x0a\x06\x07\x06\u{f8}\
	\x0a\x06\x0c\x06\x0e\x06\u{fb}\x0b\x06\x03\x07\x03\x07\x03\x07\x07\x07\u{100}\
	\x0a\x07\x0c\x07\x0e\x07\u{103}\x0b\x07\x03\x07\x05\x07\u{106}\x0a\x07\x03\
	\x08\x03\x08\x03\x08\x03\x08\x03\x08\x03\x08\x03\x08\x03\x08\x03\x08\x05\
	\x08\u{111}\x0a\x08\x03\x09\x03\x09\x03\x0a\x03\x0a\x03\x0b\x03\x0b\x03\
	\x0b\x07\x0b\u{11a}\x0a\x0b\x0c\x0b\x0e\x0b\u{11d}\x0b\x0b\x03\x0c\x03\x0c\
	\x03\x0c\x07\x0c\u{122}\x0a\x0c\x0c\x0c\x0e\x0c\u{125}\x0b\x0c\x03\x0d\x03\
	\x0d\x03\x0d\x07\x0d\u{12a}\x0a\x0d\x0c\x0d\x0e\x0d\u{12d}\x0b\x0d\x03\x0e\
	\x03\x0e\x03\x0e\x07\x0e\u{132}\x0a\x0e\x0c\x0e\x0e\x0e\u{135}\x0b\x0e\x03\
	\x0f\x03\x0f\x03\x0f\x07\x0f\u{13a}\x0a\x0f\x0c\x0f\x0e\x0f\u{13d}\x0b\x0f\
	\x03\x10\x03\x10\x03\x10\x07\x10\u{142}\x0a\x10\x0c\x10\x0e\x10\u{145}\x0b\
	\x10\x03\x11\x03\x11\x03\x11\x07\x11\u{14a}\x0a\x11\x0c\x11\x0e\x11\u{14d}\
	\x0b\x11\x03\x12\x03\x12\x03\x12\x07\x12\u{152}\x0a\x12\x0c\x12\x0e\x12\
	\u{155}\x0b\x12\x03\x13\x03\x13\x03\x13\x07\x13\u{15a}\x0a\x13\x0c\x13\x0e\
	\x13\u{15d}\x0b\x13\x03\x14\x03\x14\x03\x14\x07\x14\u{162}\x0a\x14\x0c\x14\
	\x0e\x14\u{165}\x0b\x14\x03\x15\x03\x15\x03\x15\x03\x15\x03\x15\x03\x15\
	\x05\x15\u{16d}\x0a\x15\x03\x16\x03\x16\x03\x16\x03\x16\x03\x16\x03\x16\
	\x05\x16\u{175}\x0a\x16\x03\x17\x03\x17\x03\x18\x03\x18\x03\x18\x07\x18\
	\u{17c}\x0a\x18\x0c\x18\x0e\x18\u{17f}\x0b\x18\x03\x19\x03\x19\x03\x1a\x03\
	\x1a\x03\x1a\x03\x1a\x03\x1a\x05\x1a\u{188}\x0a\x1a\x03\x1b\x06\x1b\u{18b}\
	\x0a\x1b\x0d\x1b\x0e\x1b\u{18c}\x03\x1c\x06\x1c\u{190}\x0a\x1c\x0d\x1c\x0e\
	\x1c\u{191}\x03\x1d\x03\x1d\x03\x1d\x03\x1d\x03\x1d\x05\x1d\u{199}\x0a\x1d\
	\x03\x1e\x03\x1e\x03\x1e\x07\x1e\u{19e}\x0a\x1e\x0c\x1e\x0e\x1e\u{1a1}\x0b\
	\x1e\x03\x1f\x03\x1f\x03\x1f\x05\x1f\u{1a6}\x0a\x1f\x03\x20\x03\x20\x03\
	\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\
	\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\
	\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\x21\x03\x21\x05\
	\x21\u{1c5}\x0a\x21\x03\x22\x03\x22\x05\x22\u{1c9}\x0a\x22\x03\x22\x03\x22\
	\x03\x22\x03\x22\x03\x22\x03\x22\x03\x22\x05\x22\u{1d2}\x0a\x22\x03\x23\
	\x03\x23\x03\x24\x06\x24\u{1d7}\x0a\x24\x0d\x24\x0e\x24\u{1d8}\x03\x25\x03\
	\x25\x03\x25\x03\x25\x03\x25\x03\x25\x03\x25\x03\x25\x05\x25\u{1e3}\x0a\
	\x25\x03\x26\x03\x26\x05\x26\u{1e7}\x0a\x26\x03\x26\x05\x26\u{1ea}\x0a\x26\
	\x03\x27\x03\x27\x03\x27\x07\x27\u{1ef}\x0a\x27\x0c\x27\x0e\x27\u{1f2}\x0b\
	\x27\x03\x28\x03\x28\x05\x28\u{1f6}\x0a\x28\x03\x28\x03\x28\x05\x28\u{1fa}\
	\x0a\x28\x03\x29\x03\x29\x05\x29\u{1fe}\x0a\x29\x03\x29\x03\x29\x03\x29\
	\x05\x29\u{203}\x0a\x29\x03\x29\x03\x29\x03\x29\x03\x29\x05\x29\u{209}\x0a\
	\x29\x03\x2a\x03\x2a\x03\x2a\x07\x2a\u{20e}\x0a\x2a\x0c\x2a\x0e\x2a\u{211}\
	\x0b\x2a\x03\x2b\x03\x2b\x03\x2b\x05\x2b\u{216}\x0a\x2b\x03\x2c\x03\x2c\
	\x03\x2d\x03\x2d\x03\x2d\x03\x2d\x03\x2d\x03\x2e\x03\x2e\x03\x2f\x03\x2f\
	\x03\x2f\x03\x2f\x03\x2f\x03\x2f\x03\x2f\x03\x2f\x05\x2f\u{229}\x0a\x2f\
	\x03\x30\x03\x30\x03\x30\x03\x30\x05\x30\u{22f}\x0a\x30\x03\x30\x03\x30\
	\x03\x31\x05\x31\u{234}\x0a\x31\x03\x31\x03\x31\x03\x32\x03\x32\x03\x32\
	\x03\x32\x03\x32\x03\x32\x03\x32\x03\x32\x03\x32\x03\x32\x03\x32\x03\x32\
	\x03\x32\x03\x32\x03\x32\x03\x32\x03\x32\x05\x32\u{249}\x0a\x32\x03\x32\
	\x03\x32\x03\x32\x05\x32\u{24e}\x0a\x32\x03\x32\x05\x32\u{251}\x0a\x32\x03\
	\x32\x03\x32\x03\x32\x03\x32\x05\x32\u{257}\x0a\x32\x03\x32\x03\x32\x03\
	\x32\x03\x32\x03\x32\x03\x32\x03\x32\x03\x32\x03\x32\x03\x32\x05\x32\u{263}\
	\x0a\x32\x03\x32\x07\x32\u{266}\x0a\x32\x0c\x32\x0e\x32\u{269}\x0b\x32\x03\
	\x33\x03\x33\x03\x34\x03\x34\x03\x34\x03\x34\x03\x34\x07\x34\u{272}\x0a\
	\x34\x0c\x34\x0e\x34\u{275}\x0b\x34\x03\x35\x03\x35\x05\x35\u{279}\x0a\x35\
	\x06\x35\u{27b}\x0a\x35\x0d\x35\x0e\x35\u{27c}\x03\x36\x06\x36\u{280}\x0a\
	\x36\x0d\x36\x0e\x36\u{281}\x03\x37\x03\x37\x03\x37\x05\x37\u{287}\x0a\x37\
	\x03\x38\x03\x38\x03\x38\x07\x38\u{28c}\x0a\x38\x0c\x38\x0e\x38\u{28f}\x0b\
	\x38\x03\x39\x03\x39\x03\x39\x03\x39\x03\x39\x05\x39\u{296}\x0a\x39\x05\
	\x39\u{298}\x0a\x39\x03\x3a\x03\x3a\x03\x3a\x07\x3a\u{29d}\x0a\x3a\x0c\x3a\
	\x0e\x3a\u{2a0}\x0b\x3a\x03\x3b\x03\x3b\x05\x3b\u{2a4}\x0a\x3b\x03\x3c\x03\
	\x3c\x05\x3c\u{2a8}\x0a\x3c\x03\x3c\x05\x3c\u{2ab}\x0a\x3c\x03\x3d\x03\x3d\
	\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x05\x3d\u{2b4}\x0a\x3d\x03\x3d\
	\x05\x3d\u{2b7}\x0a\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x05\x3d\u{2bd}\x0a\
	\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\
	\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x05\x3d\u{2cd}\x0a\x3d\x03\
	\x3d\x05\x3d\u{2d0}\x0a\x3d\x03\x3d\x03\x3d\x03\x3d\x05\x3d\u{2d5}\x0a\x3d\
	\x03\x3d\x05\x3d\u{2d8}\x0a\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\
	\x05\x3d\u{2df}\x0a\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\
	\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\x03\x3d\
	\x03\x3d\x03\x3d\x05\x3d\u{2f2}\x0a\x3d\x03\x3d\x07\x3d\u{2f5}\x0a\x3d\x0c\
	\x3d\x0e\x3d\u{2f8}\x0b\x3d\x03\x3e\x03\x3e\x03\x3f\x03\x3f\x03\x3f\x03\
	\x3f\x05\x3f\u{300}\x0a\x3f\x03\x3f\x03\x3f\x05\x3f\u{304}\x0a\x3f\x03\x40\
	\x05\x40\u{307}\x0a\x40\x03\x40\x03\x40\x03\x40\x05\x40\u{30c}\x0a\x40\x03\
	\x40\x07\x40\u{30f}\x0a\x40\x0c\x40\x0e\x40\u{312}\x0b\x40\x03\x41\x03\x41\
	\x03\x41\x03\x42\x06\x42\u{318}\x0a\x42\x0d\x42\x0e\x42\u{319}\x03\x43\x03\
	\x43\x03\x43\x03\x43\x03\x43\x03\x43\x05\x43\u{322}\x0a\x43\x03\x44\x03\
	\x44\x03\x44\x03\x44\x03\x44\x06\x44\u{329}\x0a\x44\x0d\x44\x0e\x44\u{32a}\
	\x03\x44\x03\x44\x03\x44\x03\x45\x03\x45\x03\x45\x03\x45\x03\x45\x03\x45\
	\x03\x45\x03\x45\x03\x45\x03\x45\x03\x45\x03\x45\x03\x45\x07\x45\u{33d}\
	\x0a\x45\x0c\x45\x0e\x45\u{340}\x0b\x45\x05\x45\u{342}\x0a\x45\x03\x45\x03\
	\x45\x03\x45\x03\x45\x07\x45\u{348}\x0a\x45\x0c\x45\x0e\x45\u{34b}\x0b\x45\
	\x05\x45\u{34d}\x0a\x45\x07\x45\u{34f}\x0a\x45\x0c\x45\x0e\x45\u{352}\x0b\
	\x45\x03\x45\x03\x45\x05\x45\u{356}\x0a\x45\x03\x46\x03\x46\x03\x46\x03\
	\x46\x03\x46\x03\x46\x03\x46\x03\x46\x03\x46\x03\x46\x03\x46\x05\x46\u{363}\
	\x0a\x46\x03\x47\x03\x47\x03\x47\x03\x47\x03\x48\x07\x48\u{36a}\x0a\x48\
	\x0c\x48\x0e\x48\u{36d}\x0b\x48\x03\x49\x03\x49\x05\x49\u{371}\x0a\x49\x03\
	\x4a\x05\x4a\u{374}\x0a\x4a\x03\x4a\x03\x4a\x03\x4b\x03\x4b\x05\x4b\u{37a}\
	\x0a\x4b\x03\x4c\x03\x4c\x03\x4c\x03\x4c\x03\x4c\x03\x4c\x03\x4c\x05\x4c\
	\u{383}\x0a\x4c\x03\x4d\x03\x4d\x03\x4d\x03\x4d\x03\x4d\x03\x4d\x03\x4e\
	\x03\x4e\x03\x4e\x05\x4e\u{38e}\x0a\x4e\x03\x4f\x03\x4f\x03\x4f\x03\x4f\
	\x03\x4f\x03\x4f\x03\x50\x03\x50\x03\x50\x03\x50\x03\x50\x03\x50\x03\x51\
	\x03\x51\x03\x51\x03\x51\x03\x51\x03\x51\x03\x51\x03\x51\x03\x52\x03\x52\
	\x03\x52\x05\x52\u{3a7}\x0a\x52\x03\x52\x03\x52\x05\x52\u{3ab}\x0a\x52\x03\
	\x53\x03\x53\x05\x53\u{3af}\x0a\x53\x03\x54\x03\x54\x05\x54\u{3b3}\x0a\x54\
	\x05\x54\u{3b5}\x0a\x54\x03\x55\x03\x55\x03\x56\x03\x56\x03\x57\x03\x57\
	\x03\x57\x05\x57\u{3be}\x0a\x57\x03\x58\x03\x58\x03\x58\x03\x58\x05\x58\
	\u{3c4}\x0a\x58\x03\x58\x03\x58\x03\x58\x03\x58\x03\x58\x03\x58\x03\x58\
	\x07\x58\u{3cd}\x0a\x58\x0c\x58\x0e\x58\u{3d0}\x0b\x58\x03\x58\x03\x58\x03\
	\x58\x05\x58\u{3d5}\x0a\x58\x03\x59\x03\x59\x03\x59\x05\x59\u{3da}\x0a\x59\
	\x03\x5a\x03\x5a\x03\x5a\x03\x5b\x03\x5b\x03\x5b\x03\x5c\x03\x5c\x05\x5c\
	\u{3e4}\x0a\x5c\x03\x5c\x03\x5c\x03\x5d\x05\x5d\u{3e9}\x0a\x5d\x03\x5d\x03\
	\x5d\x03\x5e\x06\x5e\u{3ee}\x0a\x5e\x0d\x5e\x0e\x5e\u{3ef}\x03\x5f\x03\x5f\
	\x03\x5f\x05\x5f\u{3f5}\x0a\x5f\x03\x60\x03\x60\x03\x60\x03\x60\x03\x61\
	\x06\x61\u{3fc}\x0a\x61\x0d\x61\x0e\x61\u{3fd}\x03\x61\x02\x05\x0a\x62\x78\
	\x62\x02\x04\x06\x08\x0a\x0c\x0e\x10\x12\x14\x16\x18\x1a\x1c\x1e\x20\x22\
	\x24\x26\x28\x2a\x2c\x2e\x30\x32\x34\x36\x38\x3a\x3c\x3e\x40\x42\x44\x46\
	\x48\x4a\x4c\x4e\x50\x52\x54\x56\x58\x5a\x5c\x5e\x60\x62\x64\x66\x68\x6a\
	\x6c\x6e\x70\x72\x74\x76\x78\x7a\x7c\x7e\u{80}\u{82}\u{84}\u{86}\u{88}\u{8a}\
	\u{8c}\u{8e}\u{90}\u{92}\u{94}\u{96}\u{98}\u{9a}\u{9c}\u{9e}\u{a0}\u{a2}\
	\u{a4}\u{a6}\u{a8}\u{aa}\u{ac}\u{ae}\u{b0}\u{b2}\u{b4}\u{b6}\u{b8}\u{ba}\
	\u{bc}\u{be}\u{c0}\x02\x14\x03\x02\x6b\x6c\x04\x02\x2c\x2c\x37\x37\x05\x02\
	\x4c\x50\x53\x53\x58\x59\x03\x02\x50\x52\x04\x02\x4c\x4c\x4e\x4e\x03\x02\
	\x4a\x4b\x03\x02\x46\x49\x03\x02\x69\x6a\x03\x02\x5e\x68\x08\x02\x13\x13\
	\x1e\x1e\x27\x27\x2d\x2d\x30\x30\x3f\x3f\x03\x02\x03\x05\x04\x02\x2e\x2e\
	\x31\x31\x06\x02\x17\x17\x28\x28\x34\x34\x38\x38\x04\x02\x09\x09\x0b\x0f\
	\x03\x02\x40\x41\x04\x02\x50\x50\x57\x57\x03\x02\x10\x11\x04\x02\x12\x12\
	\x34\x34\x02\u{446}\x02\u{cd}\x03\x02\x02\x02\x04\u{cf}\x03\x02\x02\x02\
	\x06\u{d6}\x03\x02\x02\x02\x08\u{e0}\x03\x02\x02\x02\x0a\u{e5}\x03\x02\x02\
	\x02\x0c\u{105}\x03\x02\x02\x02\x0e\u{110}\x03\x02\x02\x02\x10\u{112}\x03\
	\x02\x02\x02\x12\u{114}\x03\x02\x02\x02\x14\u{116}\x03\x02\x02\x02\x16\u{11e}\
	\x03\x02\x02\x02\x18\u{126}\x03\x02\x02\x02\x1a\u{12e}\x03\x02\x02\x02\x1c\
	\u{136}\x03\x02\x02\x02\x1e\u{13e}\x03\x02\x02\x02\x20\u{146}\x03\x02\x02\
	\x02\x22\u{14e}\x03\x02\x02\x02\x24\u{156}\x03\x02\x02\x02\x26\u{15e}\x03\
	\x02\x02\x02\x28\u{166}\x03\x02\x02\x02\x2a\u{174}\x03\x02\x02\x02\x2c\u{176}\
	\x03\x02\x02\x02\x2e\u{178}\x03\x02\x02\x02\x30\u{180}\x03\x02\x02\x02\x32\
	\u{187}\x03\x02\x02\x02\x34\u{18a}\x03\x02\x02\x02\x36\u{18f}\x03\x02\x02\
	\x02\x38\u{198}\x03\x02\x02\x02\x3a\u{19a}\x03\x02\x02\x02\x3c\u{1a2}\x03\
	\x02\x02\x02\x3e\u{1a7}\x03\x02\x02\x02\x40\u{1c4}\x03\x02\x02\x02\x42\u{1d1}\
	\x03\x02\x02\x02\x44\u{1d3}\x03\x02\x02\x02\x46\u{1d6}\x03\x02\x02\x02\x48\
	\u{1e2}\x03\x02\x02\x02\x4a\u{1e6}\x03\x02\x02\x02\x4c\u{1eb}\x03\x02\x02\
	\x02\x4e\u{1f9}\x03\x02\x02\x02\x50\u{208}\x03\x02\x02\x02\x52\u{20a}\x03\
	\x02\x02\x02\x54\u{212}\x03\x02\x02\x02\x56\u{217}\x03\x02\x02\x02\x58\u{219}\
	\x03\x02\x02\x02\x5a\u{21e}\x03\x02\x02\x02\x5c\u{228}\x03\x02\x02\x02\x5e\
	\u{22a}\x03\x02\x02\x02\x60\u{233}\x03\x02\x02\x02\x62\u{248}\x03\x02\x02\
	\x02\x64\u{26a}\x03\x02\x02\x02\x66\u{273}\x03\x02\x02\x02\x68\u{27a}\x03\
	\x02\x02\x02\x6a\u{27f}\x03\x02\x02\x02\x6c\u{283}\x03\x02\x02\x02\x6e\u{288}\
	\x03\x02\x02\x02\x70\u{297}\x03\x02\x02\x02\x72\u{299}\x03\x02\x02\x02\x74\
	\u{2a1}\x03\x02\x02\x02\x76\u{2aa}\x03\x02\x02\x02\x78\u{2cf}\x03\x02\x02\
	\x02\x7a\u{2f9}\x03\x02\x02\x02\x7c\u{303}\x03\x02\x02\x02\x7e\u{306}\x03\
	\x02\x02\x02\u{80}\u{313}\x03\x02\x02\x02\u{82}\u{317}\x03\x02\x02\x02\u{84}\
	\u{321}\x03\x02\x02\x02\u{86}\u{323}\x03\x02\x02\x02\u{88}\u{355}\x03\x02\
	\x02\x02\u{8a}\u{362}\x03\x02\x02\x02\u{8c}\u{364}\x03\x02\x02\x02\u{8e}\
	\u{36b}\x03\x02\x02\x02\u{90}\u{370}\x03\x02\x02\x02\u{92}\u{373}\x03\x02\
	\x02\x02\u{94}\u{379}\x03\x02\x02\x02\u{96}\u{37b}\x03\x02\x02\x02\u{98}\
	\u{384}\x03\x02\x02\x02\u{9a}\u{38d}\x03\x02\x02\x02\u{9c}\u{38f}\x03\x02\
	\x02\x02\u{9e}\u{395}\x03\x02\x02\x02\u{a0}\u{39b}\x03\x02\x02\x02\u{a2}\
	\u{3a3}\x03\x02\x02\x02\u{a4}\u{3ac}\x03\x02\x02\x02\u{a6}\u{3b4}\x03\x02\
	\x02\x02\u{a8}\u{3b6}\x03\x02\x02\x02\u{aa}\u{3b8}\x03\x02\x02\x02\u{ac}\
	\u{3bd}\x03\x02\x02\x02\u{ae}\u{3d4}\x03\x02\x02\x02\u{b0}\u{3d6}\x03\x02\
	\x02\x02\u{b2}\u{3db}\x03\x02\x02\x02\u{b4}\u{3de}\x03\x02\x02\x02\u{b6}\
	\u{3e1}\x03\x02\x02\x02\u{b8}\u{3e8}\x03\x02\x02\x02\u{ba}\u{3ed}\x03\x02\
	\x02\x02\u{bc}\u{3f4}\x03\x02\x02\x02\u{be}\u{3f6}\x03\x02\x02\x02\u{c0}\
	\u{3fb}\x03\x02\x02\x02\u{c2}\u{ce}\x07\x6e\x02\x02\u{c3}\u{ce}\x07\x6f\
	\x02\x02\u{c4}\u{c6}\x07\x71\x02\x02\u{c5}\u{c4}\x03\x02\x02\x02\u{c6}\u{c7}\
	\x03\x02\x02\x02\u{c7}\u{c5}\x03\x02\x02\x02\u{c7}\u{c8}\x03\x02\x02\x02\
	\u{c8}\u{ce}\x03\x02\x02\x02\u{c9}\u{ca}\x07\x40\x02\x02\u{ca}\u{cb}\x05\
	\x2e\x18\x02\u{cb}\u{cc}\x07\x41\x02\x02\u{cc}\u{ce}\x03\x02\x02\x02\u{cd}\
	\u{c2}\x03\x02\x02\x02\u{cd}\u{c3}\x03\x02\x02\x02\u{cd}\u{c5}\x03\x02\x02\
	\x02\u{cd}\u{c9}\x03\x02\x02\x02\u{ce}\x03\x03\x02\x02\x02\u{cf}\u{d0}\x07\
	\x3b\x02\x02\u{d0}\u{d1}\x07\x40\x02\x02\u{d1}\u{d2}\x05\x2a\x16\x02\u{d2}\
	\u{d3}\x07\x5d\x02\x02\u{d3}\u{d4}\x05\x06\x04\x02\u{d4}\u{d5}\x07\x41\x02\
	\x02\u{d5}\x05\x03\x02\x02\x02\u{d6}\u{db}\x05\x08\x05\x02\u{d7}\u{d8}\x07\
	\x5d\x02\x02\u{d8}\u{da}\x05\x08\x05\x02\u{d9}\u{d7}\x03\x02\x02\x02\u{da}\
	\u{dd}\x03\x02\x02\x02\u{db}\u{d9}\x03\x02\x02\x02\u{db}\u{dc}\x03\x02\x02\
	\x02\u{dc}\x07\x03\x02\x02\x02\u{dd}\u{db}\x03\x02\x02\x02\u{de}\u{e1}\x05\
	\x74\x3b\x02\u{df}\u{e1}\x07\x19\x02\x02\u{e0}\u{de}\x03\x02\x02\x02\u{e0}\
	\u{df}\x03\x02\x02\x02\u{e1}\u{e2}\x03\x02\x02\x02\u{e2}\u{e3}\x07\x5b\x02\
	\x02\u{e3}\u{e4}\x05\x2a\x16\x02\u{e4}\x09\x03\x02\x02\x02\u{e5}\u{e6}\x08\
	\x06\x01\x02\u{e6}\u{e7}\x05\x02\x02\x02\u{e7}\u{f9}\x03\x02\x02\x02\u{e8}\
	\u{f5}\x0c\x04\x02\x02\u{e9}\u{ea}\x07\x42\x02\x02\u{ea}\u{eb}\x05\x2e\x18\
	\x02\u{eb}\u{ec}\x07\x43\x02\x02\u{ec}\u{f6}\x03\x02\x02\x02\u{ed}\u{ee}\
	\x07\x40\x02\x02\u{ee}\u{ef}\x05\x0c\x07\x02\u{ef}\u{f0}\x07\x41\x02\x02\
	\u{f0}\u{f6}\x03\x02\x02\x02\u{f1}\u{f2}\x09\x02\x02\x02\u{f2}\u{f6}\x07\
	\x6e\x02\x02\u{f3}\u{f6}\x07\x4d\x02\x02\u{f4}\u{f6}\x07\x4f\x02\x02\u{f5}\
	\u{e9}\x03\x02\x02\x02\u{f5}\u{ed}\x03\x02\x02\x02\u{f5}\u{f1}\x03\x02\x02\
	\x02\u{f5}\u{f3}\x03\x02\x02\x02\u{f5}\u{f4}\x03\x02\x02\x02\u{f6}\u{f8}\
	\x03\x02\x02\x02\u{f7}\u{e8}\x03\x02\x02\x02\u{f8}\u{fb}\x03\x02\x02\x02\
	\u{f9}\u{f7}\x03\x02\x02\x02\u{f9}\u{fa}\x03\x02\x02\x02\u{fa}\x0b\x03\x02\
	\x02\x02\u{fb}\u{f9}\x03\x02\x02\x02\u{fc}\u{101}\x05\x2a\x16\x02\u{fd}\
	\u{fe}\x07\x5d\x02\x02\u{fe}\u{100}\x05\x2a\x16\x02\u{ff}\u{fd}\x03\x02\
	\x02\x02\u{100}\u{103}\x03\x02\x02\x02\u{101}\u{ff}\x03\x02\x02\x02\u{101}\
	\u{102}\x03\x02\x02\x02\u{102}\u{106}\x03\x02\x02\x02\u{103}\u{101}\x03\
	\x02\x02\x02\u{104}\u{106}\x03\x02\x02\x02\u{105}\u{fc}\x03\x02\x02\x02\
	\u{105}\u{104}\x03\x02\x02\x02\u{106}\x0d\x03\x02\x02\x02\u{107}\u{111}\
	\x05\x0a\x06\x02\u{108}\u{109}\x05\x10\x09\x02\u{109}\u{10a}\x05\x12\x0a\
	\x02\u{10a}\u{111}\x03\x02\x02\x02\u{10b}\u{10c}\x09\x03\x02\x02\u{10c}\
	\u{10d}\x07\x40\x02\x02\u{10d}\u{10e}\x05\x74\x3b\x02\u{10e}\u{10f}\x07\
	\x41\x02\x02\u{10f}\u{111}\x03\x02\x02\x02\u{110}\u{107}\x03\x02\x02\x02\
	\u{110}\u{108}\x03\x02\x02\x02\u{110}\u{10b}\x03\x02\x02\x02\u{111}\x0f\
	\x03\x02\x02\x02\u{112}\u{113}\x09\x04\x02\x02\u{113}\x11\x03\x02\x02\x02\
	\u{114}\u{115}\x05\x0e\x08\x02\u{115}\x13\x03\x02\x02\x02\u{116}\u{11b}\
	\x05\x12\x0a\x02\u{117}\u{118}\x09\x05\x02\x02\u{118}\u{11a}\x05\x12\x0a\
	\x02\u{119}\u{117}\x03\x02\x02\x02\u{11a}\u{11d}\x03\x02\x02\x02\u{11b}\
	\u{119}\x03\x02\x02\x02\u{11b}\u{11c}\x03\x02\x02\x02\u{11c}\x15\x03\x02\
	\x02\x02\u{11d}\u{11b}\x03\x02\x02\x02\u{11e}\u{123}\x05\x14\x0b\x02\u{11f}\
	\u{120}\x09\x06\x02\x02\u{120}\u{122}\x05\x14\x0b\x02\u{121}\u{11f}\x03\
	\x02\x02\x02\u{122}\u{125}\x03\x02\x02\x02\u{123}\u{121}\x03\x02\x02\x02\
	\u{123}\u{124}\x03\x02\x02\x02\u{124}\x17\x03\x02\x02\x02\u{125}\u{123}\
	\x03\x02\x02\x02\u{126}\u{12b}\x05\x16\x0c\x02\u{127}\u{128}\x09\x07\x02\
	\x02\u{128}\u{12a}\x05\x16\x0c\x02\u{129}\u{127}\x03\x02\x02\x02\u{12a}\
	\u{12d}\x03\x02\x02\x02\u{12b}\u{129}\x03\x02\x02\x02\u{12b}\u{12c}\x03\
	\x02\x02\x02\u{12c}\x19\x03\x02\x02\x02\u{12d}\u{12b}\x03\x02\x02\x02\u{12e}\
	\u{133}\x05\x18\x0d\x02\u{12f}\u{130}\x09\x08\x02\x02\u{130}\u{132}\x05\
	\x18\x0d\x02\u{131}\u{12f}\x03\x02\x02\x02\u{132}\u{135}\x03\x02\x02\x02\
	\u{133}\u{131}\x03\x02\x02\x02\u{133}\u{134}\x03\x02\x02\x02\u{134}\x1b\
	\x03\x02\x02\x02\u{135}\u{133}\x03\x02\x02\x02\u{136}\u{13b}\x05\x1a\x0e\
	\x02\u{137}\u{138}\x09\x09\x02\x02\u{138}\u{13a}\x05\x1a\x0e\x02\u{139}\
	\u{137}\x03\x02\x02\x02\u{13a}\u{13d}\x03\x02\x02\x02\u{13b}\u{139}\x03\
	\x02\x02\x02\u{13b}\u{13c}\x03\x02\x02\x02\u{13c}\x1d\x03\x02\x02\x02\u{13d}\
	\u{13b}\x03\x02\x02\x02\u{13e}\u{143}\x05\x1c\x0f\x02\u{13f}\u{140}\x07\
	\x53\x02\x02\u{140}\u{142}\x05\x1c\x0f\x02\u{141}\u{13f}\x03\x02\x02\x02\
	\u{142}\u{145}\x03\x02\x02\x02\u{143}\u{141}\x03\x02\x02\x02\u{143}\u{144}\
	\x03\x02\x02\x02\u{144}\x1f\x03\x02\x02\x02\u{145}\u{143}\x03\x02\x02\x02\
	\u{146}\u{14b}\x05\x1e\x10\x02\u{147}\u{148}\x07\x57\x02\x02\u{148}\u{14a}\
	\x05\x1e\x10\x02\u{149}\u{147}\x03\x02\x02\x02\u{14a}\u{14d}\x03\x02\x02\
	\x02\u{14b}\u{149}\x03\x02\x02\x02\u{14b}\u{14c}\x03\x02\x02\x02\u{14c}\
	\x21\x03\x02\x02\x02\u{14d}\u{14b}\x03\x02\x02\x02\u{14e}\u{153}\x05\x20\
	\x11\x02\u{14f}\u{150}\x07\x54\x02\x02\u{150}\u{152}\x05\x20\x11\x02\u{151}\
	\u{14f}\x03\x02\x02\x02\u{152}\u{155}\x03\x02\x02\x02\u{153}\u{151}\x03\
	\x02\x02\x02\u{153}\u{154}\x03\x02\x02\x02\u{154}\x23\x03\x02\x02\x02\u{155}\
	\u{153}\x03\x02\x02\x02\u{156}\u{15b}\x05\x22\x12\x02\u{157}\u{158}\x07\
	\x55\x02\x02\u{158}\u{15a}\x05\x22\x12\x02\u{159}\u{157}\x03\x02\x02\x02\
	\u{15a}\u{15d}\x03\x02\x02\x02\u{15b}\u{159}\x03\x02\x02\x02\u{15b}\u{15c}\
	\x03\x02\x02\x02\u{15c}\x25\x03\x02\x02\x02\u{15d}\u{15b}\x03\x02\x02\x02\
	\u{15e}\u{163}\x05\x24\x13\x02\u{15f}\u{160}\x07\x56\x02\x02\u{160}\u{162}\
	\x05\x24\x13\x02\u{161}\u{15f}\x03\x02\x02\x02\u{162}\u{165}\x03\x02\x02\
	\x02\u{163}\u{161}\x03\x02\x02\x02\u{163}\u{164}\x03\x02\x02\x02\u{164}\
	\x27\x03\x02\x02\x02\u{165}\u{163}\x03\x02\x02\x02\u{166}\u{16c}\x05\x26\
	\x14\x02\u{167}\u{168}\x07\x5a\x02\x02\u{168}\u{169}\x05\x2e\x18\x02\u{169}\
	\u{16a}\x07\x5b\x02\x02\u{16a}\u{16b}\x05\x28\x15\x02\u{16b}\u{16d}\x03\
	\x02\x02\x02\u{16c}\u{167}\x03\x02\x02\x02\u{16c}\u{16d}\x03\x02\x02\x02\
	\u{16d}\x29\x03\x02\x02\x02\u{16e}\u{175}\x05\x28\x15\x02\u{16f}\u{170}\
	\x05\x0e\x08\x02\u{170}\u{171}\x05\x2c\x17\x02\u{171}\u{172}\x05\x2a\x16\
	\x02\u{172}\u{175}\x03\x02\x02\x02\u{173}\u{175}\x07\x70\x02\x02\u{174}\
	\u{16e}\x03\x02\x02\x02\u{174}\u{16f}\x03\x02\x02\x02\u{174}\u{173}\x03\
	\x02\x02\x02\u{175}\x2b\x03\x02\x02\x02\u{176}\u{177}\x09\x0a\x02\x02\u{177}\
	\x2d\x03\x02\x02\x02\u{178}\u{17d}\x05\x2a\x16\x02\u{179}\u{17a}\x07\x5d\
	\x02\x02\u{17a}\u{17c}\x05\x2a\x16\x02\u{17b}\u{179}\x03\x02\x02\x02\u{17c}\
	\u{17f}\x03\x02\x02\x02\u{17d}\u{17b}\x03\x02\x02\x02\u{17d}\u{17e}\x03\
	\x02\x02\x02\u{17e}\x2f\x03\x02\x02\x02\u{17f}\u{17d}\x03\x02\x02\x02\u{180}\
	\u{181}\x05\x28\x15\x02\u{181}\x31\x03\x02\x02\x02\u{182}\u{183}\x05\x34\
	\x1b\x02\u{183}\u{184}\x05\x3a\x1e\x02\u{184}\u{185}\x07\x5c\x02\x02\u{185}\
	\u{188}\x03\x02\x02\x02\u{186}\u{188}\x05\u{86}\x44\x02\u{187}\u{182}\x03\
	\x02\x02\x02\u{187}\u{186}\x03\x02\x02\x02\u{188}\x33\x03\x02\x02\x02\u{189}\
	\u{18b}\x05\x38\x1d\x02\u{18a}\u{189}\x03\x02\x02\x02\u{18b}\u{18c}\x03\
	\x02\x02\x02\u{18c}\u{18a}\x03\x02\x02\x02\u{18c}\u{18d}\x03\x02\x02\x02\
	\u{18d}\x35\x03\x02\x02\x02\u{18e}\u{190}\x05\x38\x1d\x02\u{18f}\u{18e}\
	\x03\x02\x02\x02\u{190}\u{191}\x03\x02\x02\x02\u{191}\u{18f}\x03\x02\x02\
	\x02\u{191}\u{192}\x03\x02\x02\x02\u{192}\x37\x03\x02\x02\x02\u{193}\u{199}\
	\x05\x3e\x20\x02\u{194}\u{199}\x05\x40\x21\x02\u{195}\u{199}\x05\x5a\x2e\
	\x02\u{196}\u{199}\x05\x5c\x2f\x02\u{197}\u{199}\x05\x5e\x30\x02\u{198}\
	\u{193}\x03\x02\x02\x02\u{198}\u{194}\x03\x02\x02\x02\u{198}\u{195}\x03\
	\x02\x02\x02\u{198}\u{196}\x03\x02\x02\x02\u{198}\u{197}\x03\x02\x02\x02\
	\u{199}\x39\x03\x02\x02\x02\u{19a}\u{19f}\x05\x3c\x1f\x02\u{19b}\u{19c}\
	\x07\x5d\x02\x02\u{19c}\u{19e}\x05\x3c\x1f\x02\u{19d}\u{19b}\x03\x02\x02\
	\x02\u{19e}\u{1a1}\x03\x02\x02\x02\u{19f}\u{19d}\x03\x02\x02\x02\u{19f}\
	\u{1a0}\x03\x02\x02\x02\u{1a0}\x3b\x03\x02\x02\x02\u{1a1}\u{19f}\x03\x02\
	\x02\x02\u{1a2}\u{1a5}\x05\x60\x31\x02\u{1a3}\u{1a4}\x07\x5e\x02\x02\u{1a4}\
	\u{1a6}\x05\x7c\x3f\x02\u{1a5}\u{1a3}\x03\x02\x02\x02\u{1a5}\u{1a6}\x03\
	\x02\x02\x02\u{1a6}\x3d\x03\x02\x02\x02\u{1a7}\u{1a8}\x09\x0b\x02\x02\u{1a8}\
	\x3f\x03\x02\x02\x02\u{1a9}\u{1c5}\x07\x33\x02\x02\u{1aa}\u{1c5}\x07\x16\
	\x02\x02\u{1ab}\u{1c5}\x07\x2a\x02\x02\u{1ac}\u{1c5}\x07\x25\x02\x02\u{1ad}\
	\u{1c5}\x07\x26\x02\x02\u{1ae}\u{1c5}\x07\x1f\x02\x02\u{1af}\u{1c5}\x07\
	\x1b\x02\x02\u{1b0}\u{1c5}\x07\x2b\x02\x02\u{1b1}\u{1c5}\x07\x32\x02\x02\
	\u{1b2}\u{1c5}\x07\x39\x02\x02\u{1b3}\u{1c5}\x07\x3a\x02\x02\u{1b4}\u{1c5}\
	\x07\x03\x02\x02\u{1b5}\u{1c5}\x07\x04\x02\x02\u{1b6}\u{1c5}\x07\x05\x02\
	\x02\u{1b7}\u{1b8}\x07\x06\x02\x02\u{1b8}\u{1b9}\x07\x40\x02\x02\u{1b9}\
	\u{1ba}\x09\x0c\x02\x02\u{1ba}\u{1c5}\x07\x41\x02\x02\u{1bb}\u{1c5}\x05\
	\x58\x2d\x02\u{1bc}\u{1c5}\x05\x42\x22\x02\u{1bd}\u{1c5}\x05\x50\x29\x02\
	\u{1be}\u{1c5}\x05\x7a\x3e\x02\u{1bf}\u{1c0}\x07\x07\x02\x02\u{1c0}\u{1c1}\
	\x07\x40\x02\x02\u{1c1}\u{1c2}\x05\x30\x19\x02\u{1c2}\u{1c3}\x07\x41\x02\
	\x02\u{1c3}\u{1c5}\x03\x02\x02\x02\u{1c4}\u{1a9}\x03\x02\x02\x02\u{1c4}\
	\u{1aa}\x03\x02\x02\x02\u{1c4}\u{1ab}\x03\x02\x02\x02\u{1c4}\u{1ac}\x03\
	\x02\x02\x02\u{1c4}\u{1ad}\x03\x02\x02\x02\u{1c4}\u{1ae}\x03\x02\x02\x02\
	\u{1c4}\u{1af}\x03\x02\x02\x02\u{1c4}\u{1b0}\x03\x02\x02\x02\u{1c4}\u{1b1}\
	\x03\x02\x02\x02\u{1c4}\u{1b2}\x03\x02\x02\x02\u{1c4}\u{1b3}\x03\x02\x02\
	\x02\u{1c4}\u{1b4}\x03\x02\x02\x02\u{1c4}\u{1b5}\x03\x02\x02\x02\u{1c4}\
	\u{1b6}\x03\x02\x02\x02\u{1c4}\u{1b7}\x03\x02\x02\x02\u{1c4}\u{1bb}\x03\
	\x02\x02\x02\u{1c4}\u{1bc}\x03\x02\x02\x02\u{1c4}\u{1bd}\x03\x02\x02\x02\
	\u{1c4}\u{1be}\x03\x02\x02\x02\u{1c4}\u{1bf}\x03\x02\x02\x02\u{1c5}\x41\
	\x03\x02\x02\x02\u{1c6}\u{1c8}\x05\x44\x23\x02\u{1c7}\u{1c9}\x07\x6e\x02\
	\x02\u{1c8}\u{1c7}\x03\x02\x02\x02\u{1c8}\u{1c9}\x03\x02\x02\x02\u{1c9}\
	\u{1ca}\x03\x02\x02\x02\u{1ca}\u{1cb}\x07\x44\x02\x02\u{1cb}\u{1cc}\x05\
	\x46\x24\x02\u{1cc}\u{1cd}\x07\x45\x02\x02\u{1cd}\u{1d2}\x03\x02\x02\x02\
	\u{1ce}\u{1cf}\x05\x44\x23\x02\u{1cf}\u{1d0}\x07\x6e\x02\x02\u{1d0}\u{1d2}\
	\x03\x02\x02\x02\u{1d1}\u{1c6}\x03\x02\x02\x02\u{1d1}\u{1ce}\x03\x02\x02\
	\x02\u{1d2}\x43\x03\x02\x02\x02\u{1d3}\u{1d4}\x09\x0d\x02\x02\u{1d4}\x45\
	\x03\x02\x02\x02\u{1d5}\u{1d7}\x05\x48\x25\x02\u{1d6}\u{1d5}\x03\x02\x02\
	\x02\u{1d7}\u{1d8}\x03\x02\x02\x02\u{1d8}\u{1d6}\x03\x02\x02\x02\u{1d8}\
	\u{1d9}\x03\x02\x02\x02\u{1d9}\x47\x03\x02\x02\x02\u{1da}\u{1db}\x05\x4a\
	\x26\x02\u{1db}\u{1dc}\x05\x4c\x27\x02\u{1dc}\u{1dd}\x07\x5c\x02\x02\u{1dd}\
	\u{1e3}\x03\x02\x02\x02\u{1de}\u{1df}\x05\x4a\x26\x02\u{1df}\u{1e0}\x07\
	\x5c\x02\x02\u{1e0}\u{1e3}\x03\x02\x02\x02\u{1e1}\u{1e3}\x05\u{86}\x44\x02\
	\u{1e2}\u{1da}\x03\x02\x02\x02\u{1e2}\u{1de}\x03\x02\x02\x02\u{1e2}\u{1e1}\
	\x03\x02\x02\x02\u{1e3}\x49\x03\x02\x02\x02\u{1e4}\u{1e7}\x05\x40\x21\x02\
	\u{1e5}\u{1e7}\x05\x5a\x2e\x02\u{1e6}\u{1e4}\x03\x02\x02\x02\u{1e6}\u{1e5}\
	\x03\x02\x02\x02\u{1e7}\u{1e9}\x03\x02\x02\x02\u{1e8}\u{1ea}\x05\x4a\x26\
	\x02\u{1e9}\u{1e8}\x03\x02\x02\x02\u{1e9}\u{1ea}\x03\x02\x02\x02\u{1ea}\
	\x4b\x03\x02\x02\x02\u{1eb}\u{1f0}\x05\x4e\x28\x02\u{1ec}\u{1ed}\x07\x5d\
	\x02\x02\u{1ed}\u{1ef}\x05\x4e\x28\x02\u{1ee}\u{1ec}\x03\x02\x02\x02\u{1ef}\
	\u{1f2}\x03\x02\x02\x02\u{1f0}\u{1ee}\x03\x02\x02\x02\u{1f0}\u{1f1}\x03\
	\x02\x02\x02\u{1f1}\x4d\x03\x02\x02\x02\u{1f2}\u{1f0}\x03\x02\x02\x02\u{1f3}\
	\u{1fa}\x05\x60\x31\x02\u{1f4}\u{1f6}\x05\x60\x31\x02\u{1f5}\u{1f4}\x03\
	\x02\x02\x02\u{1f5}\u{1f6}\x03\x02\x02\x02\u{1f6}\u{1f7}\x03\x02\x02\x02\
	\u{1f7}\u{1f8}\x07\x5b\x02\x02\u{1f8}\u{1fa}\x05\x30\x19\x02\u{1f9}\u{1f3}\
	\x03\x02\x02\x02\u{1f9}\u{1f5}\x03\x02\x02\x02\u{1fa}\x4f\x03\x02\x02\x02\
	\u{1fb}\u{1fd}\x07\x1d\x02\x02\u{1fc}\u{1fe}\x07\x6e\x02\x02\u{1fd}\u{1fc}\
	\x03\x02\x02\x02\u{1fd}\u{1fe}\x03\x02\x02\x02\u{1fe}\u{1ff}\x03\x02\x02\
	\x02\u{1ff}\u{200}\x07\x44\x02\x02\u{200}\u{202}\x05\x52\x2a\x02\u{201}\
	\u{203}\x07\x5d\x02\x02\u{202}\u{201}\x03\x02\x02\x02\u{202}\u{203}\x03\
	\x02\x02\x02\u{203}\u{204}\x03\x02\x02\x02\u{204}\u{205}\x07\x45\x02\x02\
	\u{205}\u{209}\x03\x02\x02\x02\u{206}\u{207}\x07\x1d\x02\x02\u{207}\u{209}\
	\x07\x6e\x02\x02\u{208}\u{1fb}\x03\x02\x02\x02\u{208}\u{206}\x03\x02\x02\
	\x02\u{209}\x51\x03\x02\x02\x02\u{20a}\u{20f}\x05\x54\x2b\x02\u{20b}\u{20c}\
	\x07\x5d\x02\x02\u{20c}\u{20e}\x05\x54\x2b\x02\u{20d}\u{20b}\x03\x02\x02\
	\x02\u{20e}\u{211}\x03\x02\x02\x02\u{20f}\u{20d}\x03\x02\x02\x02\u{20f}\
	\u{210}\x03\x02\x02\x02\u{210}\x53\x03\x02\x02\x02\u{211}\u{20f}\x03\x02\
	\x02\x02\u{212}\u{215}\x05\x56\x2c\x02\u{213}\u{214}\x07\x5e\x02\x02\u{214}\
	\u{216}\x05\x30\x19\x02\u{215}\u{213}\x03\x02\x02\x02\u{215}\u{216}\x03\
	\x02\x02\x02\u{216}\x55\x03\x02\x02\x02\u{217}\u{218}\x07\x6e\x02\x02\u{218}\
	\x57\x03\x02\x02\x02\u{219}\u{21a}\x07\x38\x02\x02\u{21a}\u{21b}\x07\x40\
	\x02\x02\u{21b}\u{21c}\x05\x74\x3b\x02\u{21c}\u{21d}\x07\x41\x02\x02\u{21d}\
	\x59\x03\x02\x02\x02\u{21e}\u{21f}\x09\x0e\x02\x02\u{21f}\x5b\x03\x02\x02\
	\x02\u{220}\u{229}\x07\x24\x02\x02\u{221}\u{229}\x07\x3d\x02\x02\u{222}\
	\u{229}\x07\x08\x02\x02\u{223}\u{229}\x07\x09\x02\x02\u{224}\u{225}\x07\
	\x0a\x02\x02\u{225}\u{226}\x07\x40\x02\x02\u{226}\u{227}\x07\x6e\x02\x02\
	\u{227}\u{229}\x07\x41\x02\x02\u{228}\u{220}\x03\x02\x02\x02\u{228}\u{221}\
	\x03\x02\x02\x02\u{228}\u{222}\x03\x02\x02\x02\u{228}\u{223}\x03\x02\x02\
	\x02\u{228}\u{224}\x03\x02\x02\x02\u{229}\x5d\x03\x02\x02\x02\u{22a}\u{22b}\
	\x07\x36\x02\x02\u{22b}\u{22e}\x07\x40\x02\x02\u{22c}\u{22f}\x05\x74\x3b\
	\x02\u{22d}\u{22f}\x05\x30\x19\x02\u{22e}\u{22c}\x03\x02\x02\x02\u{22e}\
	\u{22d}\x03\x02\x02\x02\u{22f}\u{230}\x03\x02\x02\x02\u{230}\u{231}\x07\
	\x41\x02\x02\u{231}\x5f\x03\x02\x02\x02\u{232}\u{234}\x05\x68\x35\x02\u{233}\
	\u{232}\x03\x02\x02\x02\u{233}\u{234}\x03\x02\x02\x02\u{234}\u{235}\x03\
	\x02\x02\x02\u{235}\u{236}\x05\x62\x32\x02\u{236}\x61\x03\x02\x02\x02\u{237}\
	\u{238}\x08\x32\x01\x02\u{238}\u{249}\x07\x6e\x02\x02\u{239}\u{23a}\x07\
	\x40\x02\x02\u{23a}\u{23b}\x05\x60\x31\x02\u{23b}\u{23c}\x07\x41\x02\x02\
	\u{23c}\u{249}\x03\x02\x02\x02\u{23d}\u{23e}\x07\x6e\x02\x02\u{23e}\u{23f}\
	\x07\x5b\x02\x02\u{23f}\u{249}\x07\x70\x02\x02\u{240}\u{241}\x05\x64\x33\
	\x02\u{241}\u{242}\x07\x6e\x02\x02\u{242}\u{249}\x03\x02\x02\x02\u{243}\
	\u{244}\x07\x40\x02\x02\u{244}\u{245}\x05\x64\x33\x02\u{245}\u{246}\x05\
	\x60\x31\x02\u{246}\u{247}\x07\x41\x02\x02\u{247}\u{249}\x03\x02\x02\x02\
	\u{248}\u{237}\x03\x02\x02\x02\u{248}\u{239}\x03\x02\x02\x02\u{248}\u{23d}\
	\x03\x02\x02\x02\u{248}\u{240}\x03\x02\x02\x02\u{248}\u{243}\x03\x02\x02\
	\x02\u{249}\u{267}\x03\x02\x02\x02\u{24a}\u{24b}\x0c\x09\x02\x02\u{24b}\
	\u{24d}\x07\x42\x02\x02\u{24c}\u{24e}\x05\x6a\x36\x02\u{24d}\u{24c}\x03\
	\x02\x02\x02\u{24d}\u{24e}\x03\x02\x02\x02\u{24e}\u{250}\x03\x02\x02\x02\
	\u{24f}\u{251}\x05\x2a\x16\x02\u{250}\u{24f}\x03\x02\x02\x02\u{250}\u{251}\
	\x03\x02\x02\x02\u{251}\u{252}\x03\x02\x02\x02\u{252}\u{266}\x07\x43\x02\
	\x02\u{253}\u{254}\x0c\x08\x02\x02\u{254}\u{256}\x07\x42\x02\x02\u{255}\
	\u{257}\x05\x6a\x36\x02\u{256}\u{255}\x03\x02\x02\x02\u{256}\u{257}\x03\
	\x02\x02\x02\u{257}\u{258}\x03\x02\x02\x02\u{258}\u{259}\x07\x50\x02\x02\
	\u{259}\u{266}\x07\x43\x02\x02\u{25a}\u{25b}\x0c\x07\x02\x02\u{25b}\u{25c}\
	\x07\x40\x02\x02\u{25c}\u{25d}\x05\x6c\x37\x02\u{25d}\u{25e}\x07\x41\x02\
	\x02\u{25e}\u{266}\x03\x02\x02\x02\u{25f}\u{260}\x0c\x06\x02\x02\u{260}\
	\u{262}\x07\x40\x02\x02\u{261}\u{263}\x05\x72\x3a\x02\u{262}\u{261}\x03\
	\x02\x02\x02\u{262}\u{263}\x03\x02\x02\x02\u{263}\u{264}\x03\x02\x02\x02\
	\u{264}\u{266}\x07\x41\x02\x02\u{265}\u{24a}\x03\x02\x02\x02\u{265}\u{253}\
	\x03\x02\x02\x02\u{265}\u{25a}\x03\x02\x02\x02\u{265}\u{25f}\x03\x02\x02\
	\x02\u{266}\u{269}\x03\x02\x02\x02\u{267}\u{265}\x03\x02\x02\x02\u{267}\
	\u{268}\x03\x02\x02\x02\u{268}\x63\x03\x02\x02\x02\u{269}\u{267}\x03\x02\
	\x02\x02\u{26a}\u{26b}\x09\x0f\x02\x02\u{26b}\x65\x03\x02\x02\x02\u{26c}\
	\u{272}\x0a\x10\x02\x02\u{26d}\u{26e}\x07\x40\x02\x02\u{26e}\u{26f}\x05\
	\x66\x34\x02\u{26f}\u{270}\x07\x41\x02\x02\u{270}\u{272}\x03\x02\x02\x02\
	\u{271}\u{26c}\x03\x02\x02\x02\u{271}\u{26d}\x03\x02\x02\x02\u{272}\u{275}\
	\x03\x02\x02\x02\u{273}\u{271}\x03\x02\x02\x02\u{273}\u{274}\x03\x02\x02\
	\x02\u{274}\x67\x03\x02\x02\x02\u{275}\u{273}\x03\x02\x02\x02\u{276}\u{278}\
	\x09\x11\x02\x02\u{277}\u{279}\x05\x6a\x36\x02\u{278}\u{277}\x03\x02\x02\
	\x02\u{278}\u{279}\x03\x02\x02\x02\u{279}\u{27b}\x03\x02\x02\x02\u{27a}\
	\u{276}\x03\x02\x02\x02\u{27b}\u{27c}\x03\x02\x02\x02\u{27c}\u{27a}\x03\
	\x02\x02\x02\u{27c}\u{27d}\x03\x02\x02\x02\u{27d}\x69\x03\x02\x02\x02\u{27e}\
	\u{280}\x05\x5a\x2e\x02\u{27f}\u{27e}\x03\x02\x02\x02\u{280}\u{281}\x03\
	\x02\x02\x02\u{281}\u{27f}\x03\x02\x02\x02\u{281}\u{282}\x03\x02\x02\x02\
	\u{282}\x6b\x03\x02\x02\x02\u{283}\u{286}\x05\x6e\x38\x02\u{284}\u{285}\
	\x07\x5d\x02\x02\u{285}\u{287}\x07\x6d\x02\x02\u{286}\u{284}\x03\x02\x02\
	\x02\u{286}\u{287}\x03\x02\x02\x02\u{287}\x6d\x03\x02\x02\x02\u{288}\u{28d}\
	\x05\x70\x39\x02\u{289}\u{28a}\x07\x5d\x02\x02\u{28a}\u{28c}\x05\x70\x39\
	\x02\u{28b}\u{289}\x03\x02\x02\x02\u{28c}\u{28f}\x03\x02\x02\x02\u{28d}\
	\u{28b}\x03\x02\x02\x02\u{28d}\u{28e}\x03\x02\x02\x02\u{28e}\x6f\x03\x02\
	\x02\x02\u{28f}\u{28d}\x03\x02\x02\x02\u{290}\u{291}\x05\x34\x1b\x02\u{291}\
	\u{292}\x05\x60\x31\x02\u{292}\u{298}\x03\x02\x02\x02\u{293}\u{295}\x05\
	\x36\x1c\x02\u{294}\u{296}\x05\x76\x3c\x02\u{295}\u{294}\x03\x02\x02\x02\
	\u{295}\u{296}\x03\x02\x02\x02\u{296}\u{298}\x03\x02\x02\x02\u{297}\u{290}\
	\x03\x02\x02\x02\u{297}\u{293}\x03\x02\x02\x02\u{298}\x71\x03\x02\x02\x02\
	\u{299}\u{29e}\x07\x6e\x02\x02\u{29a}\u{29b}\x07\x5d\x02\x02\u{29b}\u{29d}\
	\x07\x6e\x02\x02\u{29c}\u{29a}\x03\x02\x02\x02\u{29d}\u{2a0}\x03\x02\x02\
	\x02\u{29e}\u{29c}\x03\x02\x02\x02\u{29e}\u{29f}\x03\x02\x02\x02\u{29f}\
	\x73\x03\x02\x02\x02\u{2a0}\u{29e}\x03\x02\x02\x02\u{2a1}\u{2a3}\x05\x4a\
	\x26\x02\u{2a2}\u{2a4}\x05\x76\x3c\x02\u{2a3}\u{2a2}\x03\x02\x02\x02\u{2a3}\
	\u{2a4}\x03\x02\x02\x02\u{2a4}\x75\x03\x02\x02\x02\u{2a5}\u{2ab}\x05\x68\
	\x35\x02\u{2a6}\u{2a8}\x05\x68\x35\x02\u{2a7}\u{2a6}\x03\x02\x02\x02\u{2a7}\
	\u{2a8}\x03\x02\x02\x02\u{2a8}\u{2a9}\x03\x02\x02\x02\u{2a9}\u{2ab}\x05\
	\x78\x3d\x02\u{2aa}\u{2a5}\x03\x02\x02\x02\u{2aa}\u{2a7}\x03\x02\x02\x02\
	\u{2ab}\x77\x03\x02\x02\x02\u{2ac}\u{2ad}\x08\x3d\x01\x02\u{2ad}\u{2ae}\
	\x07\x40\x02\x02\u{2ae}\u{2af}\x05\x76\x3c\x02\u{2af}\u{2b0}\x07\x41\x02\
	\x02\u{2b0}\u{2d0}\x03\x02\x02\x02\u{2b1}\u{2b3}\x07\x42\x02\x02\u{2b2}\
	\u{2b4}\x05\x6a\x36\x02\u{2b3}\u{2b2}\x03\x02\x02\x02\u{2b3}\u{2b4}\x03\
	\x02\x02\x02\u{2b4}\u{2b6}\x03\x02\x02\x02\u{2b5}\u{2b7}\x05\x2a\x16\x02\
	\u{2b6}\u{2b5}\x03\x02\x02\x02\u{2b6}\u{2b7}\x03\x02\x02\x02\u{2b7}\u{2b8}\
	\x03\x02\x02\x02\u{2b8}\u{2d0}\x07\x43\x02\x02\u{2b9}\u{2ba}\x07\x42\x02\
	\x02\u{2ba}\u{2bc}\x07\x2d\x02\x02\u{2bb}\u{2bd}\x05\x6a\x36\x02\u{2bc}\
	\u{2bb}\x03\x02\x02\x02\u{2bc}\u{2bd}\x03\x02\x02\x02\u{2bd}\u{2be}\x03\
	\x02\x02\x02\u{2be}\u{2bf}\x05\x2a\x16\x02\u{2bf}\u{2c0}\x07\x43\x02\x02\
	\u{2c0}\u{2d0}\x03\x02\x02\x02\u{2c1}\u{2c2}\x07\x42\x02\x02\u{2c2}\u{2c3}\
	\x05\x6a\x36\x02\u{2c3}\u{2c4}\x07\x2d\x02\x02\u{2c4}\u{2c5}\x05\x2a\x16\
	\x02\u{2c5}\u{2c6}\x07\x43\x02\x02\u{2c6}\u{2d0}\x03\x02\x02\x02\u{2c7}\
	\u{2c8}\x07\x42\x02\x02\u{2c8}\u{2c9}\x07\x50\x02\x02\u{2c9}\u{2d0}\x07\
	\x43\x02\x02\u{2ca}\u{2cc}\x07\x40\x02\x02\u{2cb}\u{2cd}\x05\x6c\x37\x02\
	\u{2cc}\u{2cb}\x03\x02\x02\x02\u{2cc}\u{2cd}\x03\x02\x02\x02\u{2cd}\u{2ce}\
	\x03\x02\x02\x02\u{2ce}\u{2d0}\x07\x41\x02\x02\u{2cf}\u{2ac}\x03\x02\x02\
	\x02\u{2cf}\u{2b1}\x03\x02\x02\x02\u{2cf}\u{2b9}\x03\x02\x02\x02\u{2cf}\
	\u{2c1}\x03\x02\x02\x02\u{2cf}\u{2c7}\x03\x02\x02\x02\u{2cf}\u{2ca}\x03\
	\x02\x02\x02\u{2d0}\u{2f6}\x03\x02\x02\x02\u{2d1}\u{2d2}\x0c\x07\x02\x02\
	\u{2d2}\u{2d4}\x07\x42\x02\x02\u{2d3}\u{2d5}\x05\x6a\x36\x02\u{2d4}\u{2d3}\
	\x03\x02\x02\x02\u{2d4}\u{2d5}\x03\x02\x02\x02\u{2d5}\u{2d7}\x03\x02\x02\
	\x02\u{2d6}\u{2d8}\x05\x2a\x16\x02\u{2d7}\u{2d6}\x03\x02\x02\x02\u{2d7}\
	\u{2d8}\x03\x02\x02\x02\u{2d8}\u{2d9}\x03\x02\x02\x02\u{2d9}\u{2f5}\x07\
	\x43\x02\x02\u{2da}\u{2db}\x0c\x06\x02\x02\u{2db}\u{2dc}\x07\x42\x02\x02\
	\u{2dc}\u{2de}\x07\x2d\x02\x02\u{2dd}\u{2df}\x05\x6a\x36\x02\u{2de}\u{2dd}\
	\x03\x02\x02\x02\u{2de}\u{2df}\x03\x02\x02\x02\u{2df}\u{2e0}\x03\x02\x02\
	\x02\u{2e0}\u{2e1}\x05\x2a\x16\x02\u{2e1}\u{2e2}\x07\x43\x02\x02\u{2e2}\
	\u{2f5}\x03\x02\x02\x02\u{2e3}\u{2e4}\x0c\x05\x02\x02\u{2e4}\u{2e5}\x07\
	\x42\x02\x02\u{2e5}\u{2e6}\x05\x6a\x36\x02\u{2e6}\u{2e7}\x07\x2d\x02\x02\
	\u{2e7}\u{2e8}\x05\x2a\x16\x02\u{2e8}\u{2e9}\x07\x43\x02\x02\u{2e9}\u{2f5}\
	\x03\x02\x02\x02\u{2ea}\u{2eb}\x0c\x04\x02\x02\u{2eb}\u{2ec}\x07\x42\x02\
	\x02\u{2ec}\u{2ed}\x07\x50\x02\x02\u{2ed}\u{2f5}\x07\x43\x02\x02\u{2ee}\
	\u{2ef}\x0c\x03\x02\x02\u{2ef}\u{2f1}\x07\x40\x02\x02\u{2f0}\u{2f2}\x05\
	\x6c\x37\x02\u{2f1}\u{2f0}\x03\x02\x02\x02\u{2f1}\u{2f2}\x03\x02\x02\x02\
	\u{2f2}\u{2f3}\x03\x02\x02\x02\u{2f3}\u{2f5}\x07\x41\x02\x02\u{2f4}\u{2d1}\
	\x03\x02\x02\x02\u{2f4}\u{2da}\x03\x02\x02\x02\u{2f4}\u{2e3}\x03\x02\x02\
	\x02\u{2f4}\u{2ea}\x03\x02\x02\x02\u{2f4}\u{2ee}\x03\x02\x02\x02\u{2f5}\
	\u{2f8}\x03\x02\x02\x02\u{2f6}\u{2f4}\x03\x02\x02\x02\u{2f6}\u{2f7}\x03\
	\x02\x02\x02\u{2f7}\x79\x03\x02\x02\x02\u{2f8}\u{2f6}\x03\x02\x02\x02\u{2f9}\
	\u{2fa}\x07\x6e\x02\x02\u{2fa}\x7b\x03\x02\x02\x02\u{2fb}\u{304}\x05\x2a\
	\x16\x02\u{2fc}\u{2fd}\x07\x44\x02\x02\u{2fd}\u{2ff}\x05\x7e\x40\x02\u{2fe}\
	\u{300}\x07\x5d\x02\x02\u{2ff}\u{2fe}\x03\x02\x02\x02\u{2ff}\u{300}\x03\
	\x02\x02\x02\u{300}\u{301}\x03\x02\x02\x02\u{301}\u{302}\x07\x45\x02\x02\
	\u{302}\u{304}\x03\x02\x02\x02\u{303}\u{2fb}\x03\x02\x02\x02\u{303}\u{2fc}\
	\x03\x02\x02\x02\u{304}\x7d\x03\x02\x02\x02\u{305}\u{307}\x05\u{80}\x41\
	\x02\u{306}\u{305}\x03\x02\x02\x02\u{306}\u{307}\x03\x02\x02\x02\u{307}\
	\u{308}\x03\x02\x02\x02\u{308}\u{310}\x05\x7c\x3f\x02\u{309}\u{30b}\x07\
	\x5d\x02\x02\u{30a}\u{30c}\x05\u{80}\x41\x02\u{30b}\u{30a}\x03\x02\x02\x02\
	\u{30b}\u{30c}\x03\x02\x02\x02\u{30c}\u{30d}\x03\x02\x02\x02\u{30d}\u{30f}\
	\x05\x7c\x3f\x02\u{30e}\u{309}\x03\x02\x02\x02\u{30f}\u{312}\x03\x02\x02\
	\x02\u{310}\u{30e}\x03\x02\x02\x02\u{310}\u{311}\x03\x02\x02\x02\u{311}\
	\x7f\x03\x02\x02\x02\u{312}\u{310}\x03\x02\x02\x02\u{313}\u{314}\x05\u{82}\
	\x42\x02\u{314}\u{315}\x07\x5e\x02\x02\u{315}\u{81}\x03\x02\x02\x02\u{316}\
	\u{318}\x05\u{84}\x43\x02\u{317}\u{316}\x03\x02\x02\x02\u{318}\u{319}\x03\
	\x02\x02\x02\u{319}\u{317}\x03\x02\x02\x02\u{319}\u{31a}\x03\x02\x02\x02\
	\u{31a}\u{83}\x03\x02\x02\x02\u{31b}\u{31c}\x07\x42\x02\x02\u{31c}\u{31d}\
	\x05\x30\x19\x02\u{31d}\u{31e}\x07\x43\x02\x02\u{31e}\u{322}\x03\x02\x02\
	\x02\u{31f}\u{320}\x07\x6c\x02\x02\u{320}\u{322}\x07\x6e\x02\x02\u{321}\
	\u{31b}\x03\x02\x02\x02\u{321}\u{31f}\x03\x02\x02\x02\u{322}\u{85}\x03\x02\
	\x02\x02\u{323}\u{324}\x07\x3e\x02\x02\u{324}\u{325}\x07\x40\x02\x02\u{325}\
	\u{326}\x05\x30\x19\x02\u{326}\u{328}\x07\x5d\x02\x02\u{327}\u{329}\x07\
	\x71\x02\x02\u{328}\u{327}\x03\x02\x02\x02\u{329}\u{32a}\x03\x02\x02\x02\
	\u{32a}\u{328}\x03\x02\x02\x02\u{32a}\u{32b}\x03\x02\x02\x02\u{32b}\u{32c}\
	\x03\x02\x02\x02\u{32c}\u{32d}\x07\x41\x02\x02\u{32d}\u{32e}\x07\x5c\x02\
	\x02\u{32e}\u{87}\x03\x02\x02\x02\u{32f}\u{356}\x05\u{8a}\x46\x02\u{330}\
	\u{356}\x05\u{8c}\x47\x02\u{331}\u{356}\x05\u{92}\x4a\x02\u{332}\u{356}\
	\x05\u{94}\x4b\x02\u{333}\u{356}\x05\u{9a}\x4e\x02\u{334}\u{356}\x05\u{ac}\
	\x57\x02\u{335}\u{356}\x05\u{ae}\x58\x02\u{336}\u{337}\x09\x12\x02\x02\u{337}\
	\u{338}\x09\x13\x02\x02\u{338}\u{341}\x07\x40\x02\x02\u{339}\u{33e}\x05\
	\x26\x14\x02\u{33a}\u{33b}\x07\x5d\x02\x02\u{33b}\u{33d}\x05\x26\x14\x02\
	\u{33c}\u{33a}\x03\x02\x02\x02\u{33d}\u{340}\x03\x02\x02\x02\u{33e}\u{33c}\
	\x03\x02\x02\x02\u{33e}\u{33f}\x03\x02\x02\x02\u{33f}\u{342}\x03\x02\x02\
	\x02\u{340}\u{33e}\x03\x02\x02\x02\u{341}\u{339}\x03\x02\x02\x02\u{341}\
	\u{342}\x03\x02\x02\x02\u{342}\u{350}\x03\x02\x02\x02\u{343}\u{34c}\x07\
	\x5b\x02\x02\u{344}\u{349}\x05\x26\x14\x02\u{345}\u{346}\x07\x5d\x02\x02\
	\u{346}\u{348}\x05\x26\x14\x02\u{347}\u{345}\x03\x02\x02\x02\u{348}\u{34b}\
	\x03\x02\x02\x02\u{349}\u{347}\x03\x02\x02\x02\u{349}\u{34a}\x03\x02\x02\
	\x02\u{34a}\u{34d}\x03\x02\x02\x02\u{34b}\u{349}\x03\x02\x02\x02\u{34c}\
	\u{344}\x03\x02\x02\x02\u{34c}\u{34d}\x03\x02\x02\x02\u{34d}\u{34f}\x03\
	\x02\x02\x02\u{34e}\u{343}\x03\x02\x02\x02\u{34f}\u{352}\x03\x02\x02\x02\
	\u{350}\u{34e}\x03\x02\x02\x02\u{350}\u{351}\x03\x02\x02\x02\u{351}\u{353}\
	\x03\x02\x02\x02\u{352}\u{350}\x03\x02\x02\x02\u{353}\u{354}\x07\x41\x02\
	\x02\u{354}\u{356}\x07\x5c\x02\x02\u{355}\u{32f}\x03\x02\x02\x02\u{355}\
	\u{330}\x03\x02\x02\x02\u{355}\u{331}\x03\x02\x02\x02\u{355}\u{332}\x03\
	\x02\x02\x02\u{355}\u{333}\x03\x02\x02\x02\u{355}\u{334}\x03\x02\x02\x02\
	\u{355}\u{335}\x03\x02\x02\x02\u{355}\u{336}\x03\x02\x02\x02\u{356}\u{89}\
	\x03\x02\x02\x02\u{357}\u{358}\x07\x6e\x02\x02\u{358}\u{359}\x07\x5b\x02\
	\x02\u{359}\u{363}\x05\u{88}\x45\x02\u{35a}\u{35b}\x07\x15\x02\x02\u{35b}\
	\u{35c}\x05\x30\x19\x02\u{35c}\u{35d}\x07\x5b\x02\x02\u{35d}\u{35e}\x05\
	\u{88}\x45\x02\u{35e}\u{363}\x03\x02\x02\x02\u{35f}\u{360}\x07\x19\x02\x02\
	\u{360}\u{361}\x07\x5b\x02\x02\u{361}\u{363}\x05\u{88}\x45\x02\u{362}\u{357}\
	\x03\x02\x02\x02\u{362}\u{35a}\x03\x02\x02\x02\u{362}\u{35f}\x03\x02\x02\
	\x02\u{363}\u{8b}\x03\x02\x02\x02\u{364}\u{365}\x07\x44\x02\x02\u{365}\u{366}\
	\x05\u{8e}\x48\x02\u{366}\u{367}\x07\x45\x02\x02\u{367}\u{8d}\x03\x02\x02\
	\x02\u{368}\u{36a}\x05\u{90}\x49\x02\u{369}\u{368}\x03\x02\x02\x02\u{36a}\
	\u{36d}\x03\x02\x02\x02\u{36b}\u{369}\x03\x02\x02\x02\u{36b}\u{36c}\x03\
	\x02\x02\x02\u{36c}\u{8f}\x03\x02\x02\x02\u{36d}\u{36b}\x03\x02\x02\x02\
	\u{36e}\u{371}\x05\u{88}\x45\x02\u{36f}\u{371}\x05\x32\x1a\x02\u{370}\u{36e}\
	\x03\x02\x02\x02\u{370}\u{36f}\x03\x02\x02\x02\u{371}\u{91}\x03\x02\x02\
	\x02\u{372}\u{374}\x05\x2e\x18\x02\u{373}\u{372}\x03\x02\x02\x02\u{373}\
	\u{374}\x03\x02\x02\x02\u{374}\u{375}\x03\x02\x02\x02\u{375}\u{376}\x07\
	\x5c\x02\x02\u{376}\u{93}\x03\x02\x02\x02\u{377}\u{37a}\x05\u{96}\x4c\x02\
	\u{378}\u{37a}\x05\u{98}\x4d\x02\u{379}\u{377}\x03\x02\x02\x02\u{379}\u{378}\
	\x03\x02\x02\x02\u{37a}\u{95}\x03\x02\x02\x02\u{37b}\u{37c}\x07\x22\x02\
	\x02\u{37c}\u{37d}\x07\x40\x02\x02\u{37d}\u{37e}\x05\x2e\x18\x02\u{37e}\
	\u{37f}\x07\x41\x02\x02\u{37f}\u{382}\x05\u{88}\x45\x02\u{380}\u{381}\x07\
	\x1c\x02\x02\u{381}\u{383}\x05\u{88}\x45\x02\u{382}\u{380}\x03\x02\x02\x02\
	\u{382}\u{383}\x03\x02\x02\x02\u{383}\u{97}\x03\x02\x02\x02\u{384}\u{385}\
	\x07\x2f\x02\x02\u{385}\u{386}\x07\x40\x02\x02\u{386}\u{387}\x05\x2e\x18\
	\x02\u{387}\u{388}\x07\x41\x02\x02\u{388}\u{389}\x05\u{88}\x45\x02\u{389}\
	\u{99}\x03\x02\x02\x02\u{38a}\u{38e}\x05\u{9e}\x50\x02\u{38b}\u{38e}\x05\
	\u{a0}\x51\x02\u{38c}\u{38e}\x05\u{9c}\x4f\x02\u{38d}\u{38a}\x03\x02\x02\
	\x02\u{38d}\u{38b}\x03\x02\x02\x02\u{38d}\u{38c}\x03\x02\x02\x02\u{38e}\
	\u{9b}\x03\x02\x02\x02\u{38f}\u{390}\x07\x20\x02\x02\u{390}\u{391}\x07\x40\
	\x02\x02\u{391}\u{392}\x05\u{a2}\x52\x02\u{392}\u{393}\x07\x41\x02\x02\u{393}\
	\u{394}\x05\u{88}\x45\x02\u{394}\u{9d}\x03\x02\x02\x02\u{395}\u{396}\x07\
	\x35\x02\x02\u{396}\u{397}\x07\x40\x02\x02\u{397}\u{398}\x05\x2e\x18\x02\
	\u{398}\u{399}\x07\x41\x02\x02\u{399}\u{39a}\x05\u{88}\x45\x02\u{39a}\u{9f}\
	\x03\x02\x02\x02\u{39b}\u{39c}\x07\x1a\x02\x02\u{39c}\u{39d}\x05\u{88}\x45\
	\x02\u{39d}\u{39e}\x07\x35\x02\x02\u{39e}\u{39f}\x07\x40\x02\x02\u{39f}\
	\u{3a0}\x05\x2e\x18\x02\u{3a0}\u{3a1}\x07\x41\x02\x02\u{3a1}\u{3a2}\x07\
	\x5c\x02\x02\u{3a2}\u{a1}\x03\x02\x02\x02\u{3a3}\u{3a4}\x05\u{a6}\x54\x02\
	\u{3a4}\u{3a6}\x07\x5c\x02\x02\u{3a5}\u{3a7}\x05\u{aa}\x56\x02\u{3a6}\u{3a5}\
	\x03\x02\x02\x02\u{3a6}\u{3a7}\x03\x02\x02\x02\u{3a7}\u{3a8}\x03\x02\x02\
	\x02\u{3a8}\u{3aa}\x07\x5c\x02\x02\u{3a9}\u{3ab}\x05\u{a8}\x55\x02\u{3aa}\
	\u{3a9}\x03\x02\x02\x02\u{3aa}\u{3ab}\x03\x02\x02\x02\u{3ab}\u{a3}\x03\x02\
	\x02\x02\u{3ac}\u{3ae}\x05\x34\x1b\x02\u{3ad}\u{3af}\x05\x3a\x1e\x02\u{3ae}\
	\u{3ad}\x03\x02\x02\x02\u{3ae}\u{3af}\x03\x02\x02\x02\u{3af}\u{a5}\x03\x02\
	\x02\x02\u{3b0}\u{3b5}\x05\u{a4}\x53\x02\u{3b1}\u{3b3}\x05\x2e\x18\x02\u{3b2}\
	\u{3b1}\x03\x02\x02\x02\u{3b2}\u{3b3}\x03\x02\x02\x02\u{3b3}\u{3b5}\x03\
	\x02\x02\x02\u{3b4}\u{3b0}\x03\x02\x02\x02\u{3b4}\u{3b2}\x03\x02\x02\x02\
	\u{3b5}\u{a7}\x03\x02\x02\x02\u{3b6}\u{3b7}\x05\x2e\x18\x02\u{3b7}\u{a9}\
	\x03\x02\x02\x02\u{3b8}\u{3b9}\x05\x2e\x18\x02\u{3b9}\u{ab}\x03\x02\x02\
	\x02\u{3ba}\u{3be}\x05\u{b2}\x5a\x02\u{3bb}\u{3be}\x05\u{b4}\x5b\x02\u{3bc}\
	\u{3be}\x05\u{b6}\x5c\x02\u{3bd}\u{3ba}\x03\x02\x02\x02\u{3bd}\u{3bb}\x03\
	\x02\x02\x02\u{3bd}\u{3bc}\x03\x02\x02\x02\u{3be}\u{ad}\x03\x02\x02\x02\
	\u{3bf}\u{3c0}\x07\x23\x02\x02\u{3c0}\u{3c3}\x07\x6e\x02\x02\u{3c1}\u{3c2}\
	\x07\x40\x02\x02\u{3c2}\u{3c4}\x07\x41\x02\x02\u{3c3}\u{3c1}\x03\x02\x02\
	\x02\u{3c3}\u{3c4}\x03\x02\x02\x02\u{3c4}\u{3c5}\x03\x02\x02\x02\u{3c5}\
	\u{3d5}\x07\x5c\x02\x02\u{3c6}\u{3c7}\x07\x23\x02\x02\u{3c7}\u{3c8}\x07\
	\x6e\x02\x02\u{3c8}\u{3c9}\x07\x40\x02\x02\u{3c9}\u{3ce}\x05\u{b0}\x59\x02\
	\u{3ca}\u{3cb}\x07\x5d\x02\x02\u{3cb}\u{3cd}\x05\u{b0}\x59\x02\u{3cc}\u{3ca}\
	\x03\x02\x02\x02\u{3cd}\u{3d0}\x03\x02\x02\x02\u{3ce}\u{3cc}\x03\x02\x02\
	\x02\u{3ce}\u{3cf}\x03\x02\x02\x02\u{3cf}\u{3d1}\x03\x02\x02\x02\u{3d0}\
	\u{3ce}\x03\x02\x02\x02\u{3d1}\u{3d2}\x07\x41\x02\x02\u{3d2}\u{3d3}\x07\
	\x5c\x02\x02\u{3d3}\u{3d5}\x03\x02\x02\x02\u{3d4}\u{3bf}\x03\x02\x02\x02\
	\u{3d4}\u{3c6}\x03\x02\x02\x02\u{3d5}\u{af}\x03\x02\x02\x02\u{3d6}\u{3d9}\
	\x07\x6e\x02\x02\u{3d7}\u{3d8}\x07\x6c\x02\x02\u{3d8}\u{3da}\x07\x6e\x02\
	\x02\u{3d9}\u{3d7}\x03\x02\x02\x02\u{3d9}\u{3da}\x03\x02\x02\x02\u{3da}\
	\u{b1}\x03\x02\x02\x02\u{3db}\u{3dc}\x07\x18\x02\x02\u{3dc}\u{3dd}\x07\x5c\
	\x02\x02\u{3dd}\u{b3}\x03\x02\x02\x02\u{3de}\u{3df}\x07\x14\x02\x02\u{3df}\
	\u{3e0}\x07\x5c\x02\x02\u{3e0}\u{b5}\x03\x02\x02\x02\u{3e1}\u{3e3}\x07\x29\
	\x02\x02\u{3e2}\u{3e4}\x05\x2e\x18\x02\u{3e3}\u{3e2}\x03\x02\x02\x02\u{3e3}\
	\u{3e4}\x03\x02\x02\x02\u{3e4}\u{3e5}\x03\x02\x02\x02\u{3e5}\u{3e6}\x07\
	\x5c\x02\x02\u{3e6}\u{b7}\x03\x02\x02\x02\u{3e7}\u{3e9}\x05\u{ba}\x5e\x02\
	\u{3e8}\u{3e7}\x03\x02\x02\x02\u{3e8}\u{3e9}\x03\x02\x02\x02\u{3e9}\u{3ea}\
	\x03\x02\x02\x02\u{3ea}\u{3eb}\x07\x02\x02\x03\u{3eb}\u{b9}\x03\x02\x02\
	\x02\u{3ec}\u{3ee}\x05\u{bc}\x5f\x02\u{3ed}\u{3ec}\x03\x02\x02\x02\u{3ee}\
	\u{3ef}\x03\x02\x02\x02\u{3ef}\u{3ed}\x03\x02\x02\x02\u{3ef}\u{3f0}\x03\
	\x02\x02\x02\u{3f0}\u{bb}\x03\x02\x02\x02\u{3f1}\u{3f5}\x05\u{be}\x60\x02\
	\u{3f2}\u{3f5}\x05\x32\x1a\x02\u{3f3}\u{3f5}\x07\x5c\x02\x02\u{3f4}\u{3f1}\
	\x03\x02\x02\x02\u{3f4}\u{3f2}\x03\x02\x02\x02\u{3f4}\u{3f3}\x03\x02\x02\
	\x02\u{3f5}\u{bd}\x03\x02\x02\x02\u{3f6}\u{3f7}\x05\x34\x1b\x02\u{3f7}\u{3f8}\
	\x05\x60\x31\x02\u{3f8}\u{3f9}\x05\u{8c}\x47\x02\u{3f9}\u{bf}\x03\x02\x02\
	\x02\u{3fa}\u{3fc}\x05\x32\x1a\x02\u{3fb}\u{3fa}\x03\x02\x02\x02\u{3fc}\
	\u{3fd}\x03\x02\x02\x02\u{3fd}\u{3fb}\x03\x02\x02\x02\u{3fd}\u{3fe}\x03\
	\x02\x02\x02\u{3fe}\u{c1}\x03\x02\x02\x02\x73\u{c7}\u{cd}\u{db}\u{e0}\u{f5}\
	\u{f9}\u{101}\u{105}\u{110}\u{11b}\u{123}\u{12b}\u{133}\u{13b}\u{143}\u{14b}\
	\u{153}\u{15b}\u{163}\u{16c}\u{174}\u{17d}\u{187}\u{18c}\u{191}\u{198}\u{19f}\
	\u{1a5}\u{1c4}\u{1c8}\u{1d1}\u{1d8}\u{1e2}\u{1e6}\u{1e9}\u{1f0}\u{1f5}\u{1f9}\
	\u{1fd}\u{202}\u{208}\u{20f}\u{215}\u{228}\u{22e}\u{233}\u{248}\u{24d}\u{250}\
	\u{256}\u{262}\u{265}\u{267}\u{271}\u{273}\u{278}\u{27c}\u{281}\u{286}\u{28d}\
	\u{295}\u{297}\u{29e}\u{2a3}\u{2a7}\u{2aa}\u{2b3}\u{2b6}\u{2bc}\u{2cc}\u{2cf}\
	\u{2d4}\u{2d7}\u{2de}\u{2f1}\u{2f4}\u{2f6}\u{2ff}\u{303}\u{306}\u{30b}\u{310}\
	\u{319}\u{321}\u{32a}\u{33e}\u{341}\u{349}\u{34c}\u{350}\u{355}\u{362}\u{36b}\
	\u{370}\u{373}\u{379}\u{382}\u{38d}\u{3a6}\u{3aa}\u{3ae}\u{3b2}\u{3b4}\u{3bd}\
	\u{3c3}\u{3ce}\u{3d4}\u{3d9}\u{3e3}\u{3e8}\u{3ef}\u{3f4}\u{3fd}";

