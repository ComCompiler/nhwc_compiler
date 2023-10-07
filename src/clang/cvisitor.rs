#![allow(nonstandard_style)]
// Generated from ./C.g4 by ANTLR 4.8
use antlr_rust::tree::{ParseTreeVisitor,ParseTreeVisitorCompat};
use super::cparser::*;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link CParser}.
 */
pub trait CVisitor<'input>: ParseTreeVisitor<'input,CParserContextType>{
	/**
	 * Visit a parse tree produced by {@link CParser#primaryExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_primaryExpression(&mut self, ctx: &PrimaryExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#genericSelection}.
	 * @param ctx the parse tree
	 */
	fn visit_genericSelection(&mut self, ctx: &GenericSelectionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#genericAssocList}.
	 * @param ctx the parse tree
	 */
	fn visit_genericAssocList(&mut self, ctx: &GenericAssocListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#genericAssociation}.
	 * @param ctx the parse tree
	 */
	fn visit_genericAssociation(&mut self, ctx: &GenericAssociationContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#postfixExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_postfixExpression(&mut self, ctx: &PostfixExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#argumentExpressionList}.
	 * @param ctx the parse tree
	 */
	fn visit_argumentExpressionList(&mut self, ctx: &ArgumentExpressionListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#unaryExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_unaryExpression(&mut self, ctx: &UnaryExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#unaryOperator}.
	 * @param ctx the parse tree
	 */
	fn visit_unaryOperator(&mut self, ctx: &UnaryOperatorContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#castExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_castExpression(&mut self, ctx: &CastExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#multiplicativeExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_multiplicativeExpression(&mut self, ctx: &MultiplicativeExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#additiveExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_additiveExpression(&mut self, ctx: &AdditiveExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#shiftExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_shiftExpression(&mut self, ctx: &ShiftExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#relationalExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_relationalExpression(&mut self, ctx: &RelationalExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#equalityExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_equalityExpression(&mut self, ctx: &EqualityExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#andExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_andExpression(&mut self, ctx: &AndExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#exclusiveOrExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_exclusiveOrExpression(&mut self, ctx: &ExclusiveOrExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#inclusiveOrExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_inclusiveOrExpression(&mut self, ctx: &InclusiveOrExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#logicalAndExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_logicalAndExpression(&mut self, ctx: &LogicalAndExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#logicalOrExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_logicalOrExpression(&mut self, ctx: &LogicalOrExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#conditionalExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_conditionalExpression(&mut self, ctx: &ConditionalExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#assignmentExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_assignmentExpression(&mut self, ctx: &AssignmentExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#assignmentOperator}.
	 * @param ctx the parse tree
	 */
	fn visit_assignmentOperator(&mut self, ctx: &AssignmentOperatorContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#expression}.
	 * @param ctx the parse tree
	 */
	fn visit_expression(&mut self, ctx: &ExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#constantExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_constantExpression(&mut self, ctx: &ConstantExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#declaration}.
	 * @param ctx the parse tree
	 */
	fn visit_declaration(&mut self, ctx: &DeclarationContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#declarationSpecifiers}.
	 * @param ctx the parse tree
	 */
	fn visit_declarationSpecifiers(&mut self, ctx: &DeclarationSpecifiersContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#declarationSpecifiers2}.
	 * @param ctx the parse tree
	 */
	fn visit_declarationSpecifiers2(&mut self, ctx: &DeclarationSpecifiers2Context<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#declarationSpecifier}.
	 * @param ctx the parse tree
	 */
	fn visit_declarationSpecifier(&mut self, ctx: &DeclarationSpecifierContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#initDeclaratorList}.
	 * @param ctx the parse tree
	 */
	fn visit_initDeclaratorList(&mut self, ctx: &InitDeclaratorListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#initDeclarator}.
	 * @param ctx the parse tree
	 */
	fn visit_initDeclarator(&mut self, ctx: &InitDeclaratorContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#storageClassSpecifier}.
	 * @param ctx the parse tree
	 */
	fn visit_storageClassSpecifier(&mut self, ctx: &StorageClassSpecifierContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#typeSpecifier}.
	 * @param ctx the parse tree
	 */
	fn visit_typeSpecifier(&mut self, ctx: &TypeSpecifierContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#structOrUnionSpecifier}.
	 * @param ctx the parse tree
	 */
	fn visit_structOrUnionSpecifier(&mut self, ctx: &StructOrUnionSpecifierContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#structOrUnion}.
	 * @param ctx the parse tree
	 */
	fn visit_structOrUnion(&mut self, ctx: &StructOrUnionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#structDeclarationList}.
	 * @param ctx the parse tree
	 */
	fn visit_structDeclarationList(&mut self, ctx: &StructDeclarationListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#structDeclaration}.
	 * @param ctx the parse tree
	 */
	fn visit_structDeclaration(&mut self, ctx: &StructDeclarationContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#specifierQualifierList}.
	 * @param ctx the parse tree
	 */
	fn visit_specifierQualifierList(&mut self, ctx: &SpecifierQualifierListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#structDeclaratorList}.
	 * @param ctx the parse tree
	 */
	fn visit_structDeclaratorList(&mut self, ctx: &StructDeclaratorListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#structDeclarator}.
	 * @param ctx the parse tree
	 */
	fn visit_structDeclarator(&mut self, ctx: &StructDeclaratorContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#enumSpecifier}.
	 * @param ctx the parse tree
	 */
	fn visit_enumSpecifier(&mut self, ctx: &EnumSpecifierContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#enumeratorList}.
	 * @param ctx the parse tree
	 */
	fn visit_enumeratorList(&mut self, ctx: &EnumeratorListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#enumerator}.
	 * @param ctx the parse tree
	 */
	fn visit_enumerator(&mut self, ctx: &EnumeratorContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#enumerationConstant}.
	 * @param ctx the parse tree
	 */
	fn visit_enumerationConstant(&mut self, ctx: &EnumerationConstantContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#atomicTypeSpecifier}.
	 * @param ctx the parse tree
	 */
	fn visit_atomicTypeSpecifier(&mut self, ctx: &AtomicTypeSpecifierContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#typeQualifier}.
	 * @param ctx the parse tree
	 */
	fn visit_typeQualifier(&mut self, ctx: &TypeQualifierContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#functionSpecifier}.
	 * @param ctx the parse tree
	 */
	fn visit_functionSpecifier(&mut self, ctx: &FunctionSpecifierContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#alignmentSpecifier}.
	 * @param ctx the parse tree
	 */
	fn visit_alignmentSpecifier(&mut self, ctx: &AlignmentSpecifierContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#declarator}.
	 * @param ctx the parse tree
	 */
	fn visit_declarator(&mut self, ctx: &DeclaratorContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#directDeclarator}.
	 * @param ctx the parse tree
	 */
	fn visit_directDeclarator(&mut self, ctx: &DirectDeclaratorContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#vcSpecificModifer}.
	 * @param ctx the parse tree
	 */
	fn visit_vcSpecificModifer(&mut self, ctx: &VcSpecificModiferContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#gccDeclaratorExtension}.
	 * @param ctx the parse tree
	 */
	fn visit_gccDeclaratorExtension(&mut self, ctx: &GccDeclaratorExtensionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#gccAttributeSpecifier}.
	 * @param ctx the parse tree
	 */
	fn visit_gccAttributeSpecifier(&mut self, ctx: &GccAttributeSpecifierContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#gccAttributeList}.
	 * @param ctx the parse tree
	 */
	fn visit_gccAttributeList(&mut self, ctx: &GccAttributeListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#gccAttribute}.
	 * @param ctx the parse tree
	 */
	fn visit_gccAttribute(&mut self, ctx: &GccAttributeContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#nestedParenthesesBlock}.
	 * @param ctx the parse tree
	 */
	fn visit_nestedParenthesesBlock(&mut self, ctx: &NestedParenthesesBlockContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#pointer}.
	 * @param ctx the parse tree
	 */
	fn visit_pointer(&mut self, ctx: &PointerContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#typeQualifierList}.
	 * @param ctx the parse tree
	 */
	fn visit_typeQualifierList(&mut self, ctx: &TypeQualifierListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#parameterTypeList}.
	 * @param ctx the parse tree
	 */
	fn visit_parameterTypeList(&mut self, ctx: &ParameterTypeListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#parameterList}.
	 * @param ctx the parse tree
	 */
	fn visit_parameterList(&mut self, ctx: &ParameterListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#parameterDeclaration}.
	 * @param ctx the parse tree
	 */
	fn visit_parameterDeclaration(&mut self, ctx: &ParameterDeclarationContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#identifierList}.
	 * @param ctx the parse tree
	 */
	fn visit_identifierList(&mut self, ctx: &IdentifierListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#typeName}.
	 * @param ctx the parse tree
	 */
	fn visit_typeName(&mut self, ctx: &TypeNameContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#abstractDeclarator}.
	 * @param ctx the parse tree
	 */
	fn visit_abstractDeclarator(&mut self, ctx: &AbstractDeclaratorContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#directAbstractDeclarator}.
	 * @param ctx the parse tree
	 */
	fn visit_directAbstractDeclarator(&mut self, ctx: &DirectAbstractDeclaratorContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#typedefName}.
	 * @param ctx the parse tree
	 */
	fn visit_typedefName(&mut self, ctx: &TypedefNameContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#initializer}.
	 * @param ctx the parse tree
	 */
	fn visit_initializer(&mut self, ctx: &InitializerContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#initializerList}.
	 * @param ctx the parse tree
	 */
	fn visit_initializerList(&mut self, ctx: &InitializerListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#designation}.
	 * @param ctx the parse tree
	 */
	fn visit_designation(&mut self, ctx: &DesignationContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#designatorList}.
	 * @param ctx the parse tree
	 */
	fn visit_designatorList(&mut self, ctx: &DesignatorListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#designator}.
	 * @param ctx the parse tree
	 */
	fn visit_designator(&mut self, ctx: &DesignatorContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#staticAssertDeclaration}.
	 * @param ctx the parse tree
	 */
	fn visit_staticAssertDeclaration(&mut self, ctx: &StaticAssertDeclarationContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#statement}.
	 * @param ctx the parse tree
	 */
	fn visit_statement(&mut self, ctx: &StatementContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#labeledStatement}.
	 * @param ctx the parse tree
	 */
	fn visit_labeledStatement(&mut self, ctx: &LabeledStatementContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#compoundStatement}.
	 * @param ctx the parse tree
	 */
	fn visit_compoundStatement(&mut self, ctx: &CompoundStatementContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#blockItemList}.
	 * @param ctx the parse tree
	 */
	fn visit_blockItemList(&mut self, ctx: &BlockItemListContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#blockItem}.
	 * @param ctx the parse tree
	 */
	fn visit_blockItem(&mut self, ctx: &BlockItemContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#expressionStatement}.
	 * @param ctx the parse tree
	 */
	fn visit_expressionStatement(&mut self, ctx: &ExpressionStatementContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#selectionStatement}.
	 * @param ctx the parse tree
	 */
	fn visit_selectionStatement(&mut self, ctx: &SelectionStatementContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	fn visit_iterationStatement(&mut self, ctx: &IterationStatementContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#forCondition}.
	 * @param ctx the parse tree
	 */
	fn visit_forCondition(&mut self, ctx: &ForConditionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#forDeclaration}.
	 * @param ctx the parse tree
	 */
	fn visit_forDeclaration(&mut self, ctx: &ForDeclarationContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#forExpression}.
	 * @param ctx the parse tree
	 */
	fn visit_forExpression(&mut self, ctx: &ForExpressionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	fn visit_jumpStatement(&mut self, ctx: &JumpStatementContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#compilationUnit}.
	 * @param ctx the parse tree
	 */
	fn visit_compilationUnit(&mut self, ctx: &CompilationUnitContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#translationUnit}.
	 * @param ctx the parse tree
	 */
	fn visit_translationUnit(&mut self, ctx: &TranslationUnitContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#externalDeclaration}.
	 * @param ctx the parse tree
	 */
	fn visit_externalDeclaration(&mut self, ctx: &ExternalDeclarationContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#functionDefinition}.
	 * @param ctx the parse tree
	 */
	fn visit_functionDefinition(&mut self, ctx: &FunctionDefinitionContext<'input>) { self.visit_children(ctx) }

	/**
	 * Visit a parse tree produced by {@link CParser#declarationList}.
	 * @param ctx the parse tree
	 */
	fn visit_declarationList(&mut self, ctx: &DeclarationListContext<'input>) { self.visit_children(ctx) }

}

pub trait CVisitorCompat<'input>:ParseTreeVisitorCompat<'input, Node= CParserContextType>{
	/**
	 * Visit a parse tree produced by {@link CParser#primaryExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_primaryExpression(&mut self, ctx: &PrimaryExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#genericSelection}.
	 * @param ctx the parse tree
	 */
		fn visit_genericSelection(&mut self, ctx: &GenericSelectionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#genericAssocList}.
	 * @param ctx the parse tree
	 */
		fn visit_genericAssocList(&mut self, ctx: &GenericAssocListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#genericAssociation}.
	 * @param ctx the parse tree
	 */
		fn visit_genericAssociation(&mut self, ctx: &GenericAssociationContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#postfixExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_postfixExpression(&mut self, ctx: &PostfixExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#argumentExpressionList}.
	 * @param ctx the parse tree
	 */
		fn visit_argumentExpressionList(&mut self, ctx: &ArgumentExpressionListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#unaryExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_unaryExpression(&mut self, ctx: &UnaryExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#unaryOperator}.
	 * @param ctx the parse tree
	 */
		fn visit_unaryOperator(&mut self, ctx: &UnaryOperatorContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#castExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_castExpression(&mut self, ctx: &CastExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#multiplicativeExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_multiplicativeExpression(&mut self, ctx: &MultiplicativeExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#additiveExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_additiveExpression(&mut self, ctx: &AdditiveExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#shiftExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_shiftExpression(&mut self, ctx: &ShiftExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#relationalExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_relationalExpression(&mut self, ctx: &RelationalExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#equalityExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_equalityExpression(&mut self, ctx: &EqualityExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#andExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_andExpression(&mut self, ctx: &AndExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#exclusiveOrExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_exclusiveOrExpression(&mut self, ctx: &ExclusiveOrExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#inclusiveOrExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_inclusiveOrExpression(&mut self, ctx: &InclusiveOrExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#logicalAndExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_logicalAndExpression(&mut self, ctx: &LogicalAndExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#logicalOrExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_logicalOrExpression(&mut self, ctx: &LogicalOrExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#conditionalExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_conditionalExpression(&mut self, ctx: &ConditionalExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#assignmentExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_assignmentExpression(&mut self, ctx: &AssignmentExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#assignmentOperator}.
	 * @param ctx the parse tree
	 */
		fn visit_assignmentOperator(&mut self, ctx: &AssignmentOperatorContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#expression}.
	 * @param ctx the parse tree
	 */
		fn visit_expression(&mut self, ctx: &ExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#constantExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_constantExpression(&mut self, ctx: &ConstantExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#declaration}.
	 * @param ctx the parse tree
	 */
		fn visit_declaration(&mut self, ctx: &DeclarationContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#declarationSpecifiers}.
	 * @param ctx the parse tree
	 */
		fn visit_declarationSpecifiers(&mut self, ctx: &DeclarationSpecifiersContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#declarationSpecifiers2}.
	 * @param ctx the parse tree
	 */
		fn visit_declarationSpecifiers2(&mut self, ctx: &DeclarationSpecifiers2Context<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#declarationSpecifier}.
	 * @param ctx the parse tree
	 */
		fn visit_declarationSpecifier(&mut self, ctx: &DeclarationSpecifierContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#initDeclaratorList}.
	 * @param ctx the parse tree
	 */
		fn visit_initDeclaratorList(&mut self, ctx: &InitDeclaratorListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#initDeclarator}.
	 * @param ctx the parse tree
	 */
		fn visit_initDeclarator(&mut self, ctx: &InitDeclaratorContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#storageClassSpecifier}.
	 * @param ctx the parse tree
	 */
		fn visit_storageClassSpecifier(&mut self, ctx: &StorageClassSpecifierContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#typeSpecifier}.
	 * @param ctx the parse tree
	 */
		fn visit_typeSpecifier(&mut self, ctx: &TypeSpecifierContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#structOrUnionSpecifier}.
	 * @param ctx the parse tree
	 */
		fn visit_structOrUnionSpecifier(&mut self, ctx: &StructOrUnionSpecifierContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#structOrUnion}.
	 * @param ctx the parse tree
	 */
		fn visit_structOrUnion(&mut self, ctx: &StructOrUnionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#structDeclarationList}.
	 * @param ctx the parse tree
	 */
		fn visit_structDeclarationList(&mut self, ctx: &StructDeclarationListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#structDeclaration}.
	 * @param ctx the parse tree
	 */
		fn visit_structDeclaration(&mut self, ctx: &StructDeclarationContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#specifierQualifierList}.
	 * @param ctx the parse tree
	 */
		fn visit_specifierQualifierList(&mut self, ctx: &SpecifierQualifierListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#structDeclaratorList}.
	 * @param ctx the parse tree
	 */
		fn visit_structDeclaratorList(&mut self, ctx: &StructDeclaratorListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#structDeclarator}.
	 * @param ctx the parse tree
	 */
		fn visit_structDeclarator(&mut self, ctx: &StructDeclaratorContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#enumSpecifier}.
	 * @param ctx the parse tree
	 */
		fn visit_enumSpecifier(&mut self, ctx: &EnumSpecifierContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#enumeratorList}.
	 * @param ctx the parse tree
	 */
		fn visit_enumeratorList(&mut self, ctx: &EnumeratorListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#enumerator}.
	 * @param ctx the parse tree
	 */
		fn visit_enumerator(&mut self, ctx: &EnumeratorContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#enumerationConstant}.
	 * @param ctx the parse tree
	 */
		fn visit_enumerationConstant(&mut self, ctx: &EnumerationConstantContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#atomicTypeSpecifier}.
	 * @param ctx the parse tree
	 */
		fn visit_atomicTypeSpecifier(&mut self, ctx: &AtomicTypeSpecifierContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#typeQualifier}.
	 * @param ctx the parse tree
	 */
		fn visit_typeQualifier(&mut self, ctx: &TypeQualifierContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#functionSpecifier}.
	 * @param ctx the parse tree
	 */
		fn visit_functionSpecifier(&mut self, ctx: &FunctionSpecifierContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#alignmentSpecifier}.
	 * @param ctx the parse tree
	 */
		fn visit_alignmentSpecifier(&mut self, ctx: &AlignmentSpecifierContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#declarator}.
	 * @param ctx the parse tree
	 */
		fn visit_declarator(&mut self, ctx: &DeclaratorContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#directDeclarator}.
	 * @param ctx the parse tree
	 */
		fn visit_directDeclarator(&mut self, ctx: &DirectDeclaratorContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#vcSpecificModifer}.
	 * @param ctx the parse tree
	 */
		fn visit_vcSpecificModifer(&mut self, ctx: &VcSpecificModiferContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#gccDeclaratorExtension}.
	 * @param ctx the parse tree
	 */
		fn visit_gccDeclaratorExtension(&mut self, ctx: &GccDeclaratorExtensionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#gccAttributeSpecifier}.
	 * @param ctx the parse tree
	 */
		fn visit_gccAttributeSpecifier(&mut self, ctx: &GccAttributeSpecifierContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#gccAttributeList}.
	 * @param ctx the parse tree
	 */
		fn visit_gccAttributeList(&mut self, ctx: &GccAttributeListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#gccAttribute}.
	 * @param ctx the parse tree
	 */
		fn visit_gccAttribute(&mut self, ctx: &GccAttributeContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#nestedParenthesesBlock}.
	 * @param ctx the parse tree
	 */
		fn visit_nestedParenthesesBlock(&mut self, ctx: &NestedParenthesesBlockContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#pointer}.
	 * @param ctx the parse tree
	 */
		fn visit_pointer(&mut self, ctx: &PointerContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#typeQualifierList}.
	 * @param ctx the parse tree
	 */
		fn visit_typeQualifierList(&mut self, ctx: &TypeQualifierListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#parameterTypeList}.
	 * @param ctx the parse tree
	 */
		fn visit_parameterTypeList(&mut self, ctx: &ParameterTypeListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#parameterList}.
	 * @param ctx the parse tree
	 */
		fn visit_parameterList(&mut self, ctx: &ParameterListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#parameterDeclaration}.
	 * @param ctx the parse tree
	 */
		fn visit_parameterDeclaration(&mut self, ctx: &ParameterDeclarationContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#identifierList}.
	 * @param ctx the parse tree
	 */
		fn visit_identifierList(&mut self, ctx: &IdentifierListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#typeName}.
	 * @param ctx the parse tree
	 */
		fn visit_typeName(&mut self, ctx: &TypeNameContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#abstractDeclarator}.
	 * @param ctx the parse tree
	 */
		fn visit_abstractDeclarator(&mut self, ctx: &AbstractDeclaratorContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#directAbstractDeclarator}.
	 * @param ctx the parse tree
	 */
		fn visit_directAbstractDeclarator(&mut self, ctx: &DirectAbstractDeclaratorContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#typedefName}.
	 * @param ctx the parse tree
	 */
		fn visit_typedefName(&mut self, ctx: &TypedefNameContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#initializer}.
	 * @param ctx the parse tree
	 */
		fn visit_initializer(&mut self, ctx: &InitializerContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#initializerList}.
	 * @param ctx the parse tree
	 */
		fn visit_initializerList(&mut self, ctx: &InitializerListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#designation}.
	 * @param ctx the parse tree
	 */
		fn visit_designation(&mut self, ctx: &DesignationContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#designatorList}.
	 * @param ctx the parse tree
	 */
		fn visit_designatorList(&mut self, ctx: &DesignatorListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#designator}.
	 * @param ctx the parse tree
	 */
		fn visit_designator(&mut self, ctx: &DesignatorContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#staticAssertDeclaration}.
	 * @param ctx the parse tree
	 */
		fn visit_staticAssertDeclaration(&mut self, ctx: &StaticAssertDeclarationContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#statement}.
	 * @param ctx the parse tree
	 */
		fn visit_statement(&mut self, ctx: &StatementContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#labeledStatement}.
	 * @param ctx the parse tree
	 */
		fn visit_labeledStatement(&mut self, ctx: &LabeledStatementContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#compoundStatement}.
	 * @param ctx the parse tree
	 */
		fn visit_compoundStatement(&mut self, ctx: &CompoundStatementContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#blockItemList}.
	 * @param ctx the parse tree
	 */
		fn visit_blockItemList(&mut self, ctx: &BlockItemListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#blockItem}.
	 * @param ctx the parse tree
	 */
		fn visit_blockItem(&mut self, ctx: &BlockItemContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#expressionStatement}.
	 * @param ctx the parse tree
	 */
		fn visit_expressionStatement(&mut self, ctx: &ExpressionStatementContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#selectionStatement}.
	 * @param ctx the parse tree
	 */
		fn visit_selectionStatement(&mut self, ctx: &SelectionStatementContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
		fn visit_iterationStatement(&mut self, ctx: &IterationStatementContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#forCondition}.
	 * @param ctx the parse tree
	 */
		fn visit_forCondition(&mut self, ctx: &ForConditionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#forDeclaration}.
	 * @param ctx the parse tree
	 */
		fn visit_forDeclaration(&mut self, ctx: &ForDeclarationContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#forExpression}.
	 * @param ctx the parse tree
	 */
		fn visit_forExpression(&mut self, ctx: &ForExpressionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
		fn visit_jumpStatement(&mut self, ctx: &JumpStatementContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#compilationUnit}.
	 * @param ctx the parse tree
	 */
		fn visit_compilationUnit(&mut self, ctx: &CompilationUnitContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#translationUnit}.
	 * @param ctx the parse tree
	 */
		fn visit_translationUnit(&mut self, ctx: &TranslationUnitContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#externalDeclaration}.
	 * @param ctx the parse tree
	 */
		fn visit_externalDeclaration(&mut self, ctx: &ExternalDeclarationContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#functionDefinition}.
	 * @param ctx the parse tree
	 */
		fn visit_functionDefinition(&mut self, ctx: &FunctionDefinitionContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

	/**
	 * Visit a parse tree produced by {@link CParser#declarationList}.
	 * @param ctx the parse tree
	 */
		fn visit_declarationList(&mut self, ctx: &DeclarationListContext<'input>) -> Self::Return {
			self.visit_children(ctx)
		}

}

impl<'input,T> CVisitor<'input> for T
where
	T: CVisitorCompat<'input>
{
	fn visit_primaryExpression(&mut self, ctx: &PrimaryExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_primaryExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_genericSelection(&mut self, ctx: &GenericSelectionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_genericSelection(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_genericAssocList(&mut self, ctx: &GenericAssocListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_genericAssocList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_genericAssociation(&mut self, ctx: &GenericAssociationContext<'input>){
		let result = <Self as CVisitorCompat>::visit_genericAssociation(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_postfixExpression(&mut self, ctx: &PostfixExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_postfixExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_argumentExpressionList(&mut self, ctx: &ArgumentExpressionListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_argumentExpressionList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_unaryExpression(&mut self, ctx: &UnaryExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_unaryExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_unaryOperator(&mut self, ctx: &UnaryOperatorContext<'input>){
		let result = <Self as CVisitorCompat>::visit_unaryOperator(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_castExpression(&mut self, ctx: &CastExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_castExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_multiplicativeExpression(&mut self, ctx: &MultiplicativeExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_multiplicativeExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_additiveExpression(&mut self, ctx: &AdditiveExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_additiveExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_shiftExpression(&mut self, ctx: &ShiftExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_shiftExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_relationalExpression(&mut self, ctx: &RelationalExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_relationalExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_equalityExpression(&mut self, ctx: &EqualityExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_equalityExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_andExpression(&mut self, ctx: &AndExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_andExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_exclusiveOrExpression(&mut self, ctx: &ExclusiveOrExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_exclusiveOrExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_inclusiveOrExpression(&mut self, ctx: &InclusiveOrExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_inclusiveOrExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_logicalAndExpression(&mut self, ctx: &LogicalAndExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_logicalAndExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_logicalOrExpression(&mut self, ctx: &LogicalOrExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_logicalOrExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_conditionalExpression(&mut self, ctx: &ConditionalExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_conditionalExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_assignmentExpression(&mut self, ctx: &AssignmentExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_assignmentExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_assignmentOperator(&mut self, ctx: &AssignmentOperatorContext<'input>){
		let result = <Self as CVisitorCompat>::visit_assignmentOperator(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_expression(&mut self, ctx: &ExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_expression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_constantExpression(&mut self, ctx: &ConstantExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_constantExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_declaration(&mut self, ctx: &DeclarationContext<'input>){
		let result = <Self as CVisitorCompat>::visit_declaration(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_declarationSpecifiers(&mut self, ctx: &DeclarationSpecifiersContext<'input>){
		let result = <Self as CVisitorCompat>::visit_declarationSpecifiers(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_declarationSpecifiers2(&mut self, ctx: &DeclarationSpecifiers2Context<'input>){
		let result = <Self as CVisitorCompat>::visit_declarationSpecifiers2(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_declarationSpecifier(&mut self, ctx: &DeclarationSpecifierContext<'input>){
		let result = <Self as CVisitorCompat>::visit_declarationSpecifier(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_initDeclaratorList(&mut self, ctx: &InitDeclaratorListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_initDeclaratorList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_initDeclarator(&mut self, ctx: &InitDeclaratorContext<'input>){
		let result = <Self as CVisitorCompat>::visit_initDeclarator(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_storageClassSpecifier(&mut self, ctx: &StorageClassSpecifierContext<'input>){
		let result = <Self as CVisitorCompat>::visit_storageClassSpecifier(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_typeSpecifier(&mut self, ctx: &TypeSpecifierContext<'input>){
		let result = <Self as CVisitorCompat>::visit_typeSpecifier(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_structOrUnionSpecifier(&mut self, ctx: &StructOrUnionSpecifierContext<'input>){
		let result = <Self as CVisitorCompat>::visit_structOrUnionSpecifier(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_structOrUnion(&mut self, ctx: &StructOrUnionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_structOrUnion(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_structDeclarationList(&mut self, ctx: &StructDeclarationListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_structDeclarationList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_structDeclaration(&mut self, ctx: &StructDeclarationContext<'input>){
		let result = <Self as CVisitorCompat>::visit_structDeclaration(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_specifierQualifierList(&mut self, ctx: &SpecifierQualifierListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_specifierQualifierList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_structDeclaratorList(&mut self, ctx: &StructDeclaratorListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_structDeclaratorList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_structDeclarator(&mut self, ctx: &StructDeclaratorContext<'input>){
		let result = <Self as CVisitorCompat>::visit_structDeclarator(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_enumSpecifier(&mut self, ctx: &EnumSpecifierContext<'input>){
		let result = <Self as CVisitorCompat>::visit_enumSpecifier(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_enumeratorList(&mut self, ctx: &EnumeratorListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_enumeratorList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_enumerator(&mut self, ctx: &EnumeratorContext<'input>){
		let result = <Self as CVisitorCompat>::visit_enumerator(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_enumerationConstant(&mut self, ctx: &EnumerationConstantContext<'input>){
		let result = <Self as CVisitorCompat>::visit_enumerationConstant(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_atomicTypeSpecifier(&mut self, ctx: &AtomicTypeSpecifierContext<'input>){
		let result = <Self as CVisitorCompat>::visit_atomicTypeSpecifier(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_typeQualifier(&mut self, ctx: &TypeQualifierContext<'input>){
		let result = <Self as CVisitorCompat>::visit_typeQualifier(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_functionSpecifier(&mut self, ctx: &FunctionSpecifierContext<'input>){
		let result = <Self as CVisitorCompat>::visit_functionSpecifier(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_alignmentSpecifier(&mut self, ctx: &AlignmentSpecifierContext<'input>){
		let result = <Self as CVisitorCompat>::visit_alignmentSpecifier(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_declarator(&mut self, ctx: &DeclaratorContext<'input>){
		let result = <Self as CVisitorCompat>::visit_declarator(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_directDeclarator(&mut self, ctx: &DirectDeclaratorContext<'input>){
		let result = <Self as CVisitorCompat>::visit_directDeclarator(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_vcSpecificModifer(&mut self, ctx: &VcSpecificModiferContext<'input>){
		let result = <Self as CVisitorCompat>::visit_vcSpecificModifer(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_gccDeclaratorExtension(&mut self, ctx: &GccDeclaratorExtensionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_gccDeclaratorExtension(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_gccAttributeSpecifier(&mut self, ctx: &GccAttributeSpecifierContext<'input>){
		let result = <Self as CVisitorCompat>::visit_gccAttributeSpecifier(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_gccAttributeList(&mut self, ctx: &GccAttributeListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_gccAttributeList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_gccAttribute(&mut self, ctx: &GccAttributeContext<'input>){
		let result = <Self as CVisitorCompat>::visit_gccAttribute(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_nestedParenthesesBlock(&mut self, ctx: &NestedParenthesesBlockContext<'input>){
		let result = <Self as CVisitorCompat>::visit_nestedParenthesesBlock(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_pointer(&mut self, ctx: &PointerContext<'input>){
		let result = <Self as CVisitorCompat>::visit_pointer(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_typeQualifierList(&mut self, ctx: &TypeQualifierListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_typeQualifierList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_parameterTypeList(&mut self, ctx: &ParameterTypeListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_parameterTypeList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_parameterList(&mut self, ctx: &ParameterListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_parameterList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_parameterDeclaration(&mut self, ctx: &ParameterDeclarationContext<'input>){
		let result = <Self as CVisitorCompat>::visit_parameterDeclaration(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_identifierList(&mut self, ctx: &IdentifierListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_identifierList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_typeName(&mut self, ctx: &TypeNameContext<'input>){
		let result = <Self as CVisitorCompat>::visit_typeName(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_abstractDeclarator(&mut self, ctx: &AbstractDeclaratorContext<'input>){
		let result = <Self as CVisitorCompat>::visit_abstractDeclarator(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_directAbstractDeclarator(&mut self, ctx: &DirectAbstractDeclaratorContext<'input>){
		let result = <Self as CVisitorCompat>::visit_directAbstractDeclarator(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_typedefName(&mut self, ctx: &TypedefNameContext<'input>){
		let result = <Self as CVisitorCompat>::visit_typedefName(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_initializer(&mut self, ctx: &InitializerContext<'input>){
		let result = <Self as CVisitorCompat>::visit_initializer(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_initializerList(&mut self, ctx: &InitializerListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_initializerList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_designation(&mut self, ctx: &DesignationContext<'input>){
		let result = <Self as CVisitorCompat>::visit_designation(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_designatorList(&mut self, ctx: &DesignatorListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_designatorList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_designator(&mut self, ctx: &DesignatorContext<'input>){
		let result = <Self as CVisitorCompat>::visit_designator(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_staticAssertDeclaration(&mut self, ctx: &StaticAssertDeclarationContext<'input>){
		let result = <Self as CVisitorCompat>::visit_staticAssertDeclaration(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_statement(&mut self, ctx: &StatementContext<'input>){
		let result = <Self as CVisitorCompat>::visit_statement(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_labeledStatement(&mut self, ctx: &LabeledStatementContext<'input>){
		let result = <Self as CVisitorCompat>::visit_labeledStatement(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_compoundStatement(&mut self, ctx: &CompoundStatementContext<'input>){
		let result = <Self as CVisitorCompat>::visit_compoundStatement(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_blockItemList(&mut self, ctx: &BlockItemListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_blockItemList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_blockItem(&mut self, ctx: &BlockItemContext<'input>){
		let result = <Self as CVisitorCompat>::visit_blockItem(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_expressionStatement(&mut self, ctx: &ExpressionStatementContext<'input>){
		let result = <Self as CVisitorCompat>::visit_expressionStatement(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_selectionStatement(&mut self, ctx: &SelectionStatementContext<'input>){
		let result = <Self as CVisitorCompat>::visit_selectionStatement(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_iterationStatement(&mut self, ctx: &IterationStatementContext<'input>){
		let result = <Self as CVisitorCompat>::visit_iterationStatement(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_forCondition(&mut self, ctx: &ForConditionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_forCondition(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_forDeclaration(&mut self, ctx: &ForDeclarationContext<'input>){
		let result = <Self as CVisitorCompat>::visit_forDeclaration(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_forExpression(&mut self, ctx: &ForExpressionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_forExpression(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_jumpStatement(&mut self, ctx: &JumpStatementContext<'input>){
		let result = <Self as CVisitorCompat>::visit_jumpStatement(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_compilationUnit(&mut self, ctx: &CompilationUnitContext<'input>){
		let result = <Self as CVisitorCompat>::visit_compilationUnit(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_translationUnit(&mut self, ctx: &TranslationUnitContext<'input>){
		let result = <Self as CVisitorCompat>::visit_translationUnit(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_externalDeclaration(&mut self, ctx: &ExternalDeclarationContext<'input>){
		let result = <Self as CVisitorCompat>::visit_externalDeclaration(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_functionDefinition(&mut self, ctx: &FunctionDefinitionContext<'input>){
		let result = <Self as CVisitorCompat>::visit_functionDefinition(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

	fn visit_declarationList(&mut self, ctx: &DeclarationListContext<'input>){
		let result = <Self as CVisitorCompat>::visit_declarationList(self, ctx);
        *<Self as ParseTreeVisitorCompat>::temp_result(self) = result;
	}

}