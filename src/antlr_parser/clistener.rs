#![allow(nonstandard_style)]
// Generated from ./C.g4 by ANTLR 4.8
use antlr_rust::tree::ParseTreeListener;
use super::cparser::*;

pub trait CListener<'input> : ParseTreeListener<'input,CParserContextType>{
/**
 * Enter a parse tree produced by {@link CParser#primaryExpression}.
 * @param ctx the parse tree
 */
fn enter_primaryExpression(&mut self, _ctx: &PrimaryExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#primaryExpression}.
 * @param ctx the parse tree
 */
fn exit_primaryExpression(&mut self, _ctx: &PrimaryExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#genericSelection}.
 * @param ctx the parse tree
 */
fn enter_genericSelection(&mut self, _ctx: &GenericSelectionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#genericSelection}.
 * @param ctx the parse tree
 */
fn exit_genericSelection(&mut self, _ctx: &GenericSelectionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#genericAssocList}.
 * @param ctx the parse tree
 */
fn enter_genericAssocList(&mut self, _ctx: &GenericAssocListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#genericAssocList}.
 * @param ctx the parse tree
 */
fn exit_genericAssocList(&mut self, _ctx: &GenericAssocListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#genericAssociation}.
 * @param ctx the parse tree
 */
fn enter_genericAssociation(&mut self, _ctx: &GenericAssociationContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#genericAssociation}.
 * @param ctx the parse tree
 */
fn exit_genericAssociation(&mut self, _ctx: &GenericAssociationContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#postfixExpression}.
 * @param ctx the parse tree
 */
fn enter_postfixExpression(&mut self, _ctx: &PostfixExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#postfixExpression}.
 * @param ctx the parse tree
 */
fn exit_postfixExpression(&mut self, _ctx: &PostfixExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#argumentExpressionList}.
 * @param ctx the parse tree
 */
fn enter_argumentExpressionList(&mut self, _ctx: &ArgumentExpressionListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#argumentExpressionList}.
 * @param ctx the parse tree
 */
fn exit_argumentExpressionList(&mut self, _ctx: &ArgumentExpressionListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#unaryExpression}.
 * @param ctx the parse tree
 */
fn enter_unaryExpression(&mut self, _ctx: &UnaryExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#unaryExpression}.
 * @param ctx the parse tree
 */
fn exit_unaryExpression(&mut self, _ctx: &UnaryExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#unaryOperator}.
 * @param ctx the parse tree
 */
fn enter_unaryOperator(&mut self, _ctx: &UnaryOperatorContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#unaryOperator}.
 * @param ctx the parse tree
 */
fn exit_unaryOperator(&mut self, _ctx: &UnaryOperatorContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#castExpression}.
 * @param ctx the parse tree
 */
fn enter_castExpression(&mut self, _ctx: &CastExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#castExpression}.
 * @param ctx the parse tree
 */
fn exit_castExpression(&mut self, _ctx: &CastExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#multiplicativeExpression}.
 * @param ctx the parse tree
 */
fn enter_multiplicativeExpression(&mut self, _ctx: &MultiplicativeExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#multiplicativeExpression}.
 * @param ctx the parse tree
 */
fn exit_multiplicativeExpression(&mut self, _ctx: &MultiplicativeExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#additiveExpression}.
 * @param ctx the parse tree
 */
fn enter_additiveExpression(&mut self, _ctx: &AdditiveExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#additiveExpression}.
 * @param ctx the parse tree
 */
fn exit_additiveExpression(&mut self, _ctx: &AdditiveExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#shiftExpression}.
 * @param ctx the parse tree
 */
fn enter_shiftExpression(&mut self, _ctx: &ShiftExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#shiftExpression}.
 * @param ctx the parse tree
 */
fn exit_shiftExpression(&mut self, _ctx: &ShiftExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#relationalExpression}.
 * @param ctx the parse tree
 */
fn enter_relationalExpression(&mut self, _ctx: &RelationalExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#relationalExpression}.
 * @param ctx the parse tree
 */
fn exit_relationalExpression(&mut self, _ctx: &RelationalExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#equalityExpression}.
 * @param ctx the parse tree
 */
fn enter_equalityExpression(&mut self, _ctx: &EqualityExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#equalityExpression}.
 * @param ctx the parse tree
 */
fn exit_equalityExpression(&mut self, _ctx: &EqualityExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#andExpression}.
 * @param ctx the parse tree
 */
fn enter_andExpression(&mut self, _ctx: &AndExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#andExpression}.
 * @param ctx the parse tree
 */
fn exit_andExpression(&mut self, _ctx: &AndExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#exclusiveOrExpression}.
 * @param ctx the parse tree
 */
fn enter_exclusiveOrExpression(&mut self, _ctx: &ExclusiveOrExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#exclusiveOrExpression}.
 * @param ctx the parse tree
 */
fn exit_exclusiveOrExpression(&mut self, _ctx: &ExclusiveOrExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#inclusiveOrExpression}.
 * @param ctx the parse tree
 */
fn enter_inclusiveOrExpression(&mut self, _ctx: &InclusiveOrExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#inclusiveOrExpression}.
 * @param ctx the parse tree
 */
fn exit_inclusiveOrExpression(&mut self, _ctx: &InclusiveOrExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#logicalAndExpression}.
 * @param ctx the parse tree
 */
fn enter_logicalAndExpression(&mut self, _ctx: &LogicalAndExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#logicalAndExpression}.
 * @param ctx the parse tree
 */
fn exit_logicalAndExpression(&mut self, _ctx: &LogicalAndExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#logicalOrExpression}.
 * @param ctx the parse tree
 */
fn enter_logicalOrExpression(&mut self, _ctx: &LogicalOrExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#logicalOrExpression}.
 * @param ctx the parse tree
 */
fn exit_logicalOrExpression(&mut self, _ctx: &LogicalOrExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#conditionalExpression}.
 * @param ctx the parse tree
 */
fn enter_conditionalExpression(&mut self, _ctx: &ConditionalExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#conditionalExpression}.
 * @param ctx the parse tree
 */
fn exit_conditionalExpression(&mut self, _ctx: &ConditionalExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#assignmentExpression}.
 * @param ctx the parse tree
 */
fn enter_assignmentExpression(&mut self, _ctx: &AssignmentExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#assignmentExpression}.
 * @param ctx the parse tree
 */
fn exit_assignmentExpression(&mut self, _ctx: &AssignmentExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#assignmentOperator}.
 * @param ctx the parse tree
 */
fn enter_assignmentOperator(&mut self, _ctx: &AssignmentOperatorContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#assignmentOperator}.
 * @param ctx the parse tree
 */
fn exit_assignmentOperator(&mut self, _ctx: &AssignmentOperatorContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#expression}.
 * @param ctx the parse tree
 */
fn enter_expression(&mut self, _ctx: &ExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#expression}.
 * @param ctx the parse tree
 */
fn exit_expression(&mut self, _ctx: &ExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#constantExpression}.
 * @param ctx the parse tree
 */
fn enter_constantExpression(&mut self, _ctx: &ConstantExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#constantExpression}.
 * @param ctx the parse tree
 */
fn exit_constantExpression(&mut self, _ctx: &ConstantExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#declaration}.
 * @param ctx the parse tree
 */
fn enter_declaration(&mut self, _ctx: &DeclarationContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#declaration}.
 * @param ctx the parse tree
 */
fn exit_declaration(&mut self, _ctx: &DeclarationContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#declarationSpecifiers}.
 * @param ctx the parse tree
 */
fn enter_declarationSpecifiers(&mut self, _ctx: &DeclarationSpecifiersContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#declarationSpecifiers}.
 * @param ctx the parse tree
 */
fn exit_declarationSpecifiers(&mut self, _ctx: &DeclarationSpecifiersContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#declarationSpecifiers2}.
 * @param ctx the parse tree
 */
fn enter_declarationSpecifiers2(&mut self, _ctx: &DeclarationSpecifiers2Context<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#declarationSpecifiers2}.
 * @param ctx the parse tree
 */
fn exit_declarationSpecifiers2(&mut self, _ctx: &DeclarationSpecifiers2Context<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#declarationSpecifier}.
 * @param ctx the parse tree
 */
fn enter_declarationSpecifier(&mut self, _ctx: &DeclarationSpecifierContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#declarationSpecifier}.
 * @param ctx the parse tree
 */
fn exit_declarationSpecifier(&mut self, _ctx: &DeclarationSpecifierContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#initDeclaratorList}.
 * @param ctx the parse tree
 */
fn enter_initDeclaratorList(&mut self, _ctx: &InitDeclaratorListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#initDeclaratorList}.
 * @param ctx the parse tree
 */
fn exit_initDeclaratorList(&mut self, _ctx: &InitDeclaratorListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#initDeclarator}.
 * @param ctx the parse tree
 */
fn enter_initDeclarator(&mut self, _ctx: &InitDeclaratorContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#initDeclarator}.
 * @param ctx the parse tree
 */
fn exit_initDeclarator(&mut self, _ctx: &InitDeclaratorContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#storageClassSpecifier}.
 * @param ctx the parse tree
 */
fn enter_storageClassSpecifier(&mut self, _ctx: &StorageClassSpecifierContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#storageClassSpecifier}.
 * @param ctx the parse tree
 */
fn exit_storageClassSpecifier(&mut self, _ctx: &StorageClassSpecifierContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#typeSpecifier}.
 * @param ctx the parse tree
 */
fn enter_typeSpecifier(&mut self, _ctx: &TypeSpecifierContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#typeSpecifier}.
 * @param ctx the parse tree
 */
fn exit_typeSpecifier(&mut self, _ctx: &TypeSpecifierContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#structOrUnionSpecifier}.
 * @param ctx the parse tree
 */
fn enter_structOrUnionSpecifier(&mut self, _ctx: &StructOrUnionSpecifierContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#structOrUnionSpecifier}.
 * @param ctx the parse tree
 */
fn exit_structOrUnionSpecifier(&mut self, _ctx: &StructOrUnionSpecifierContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#structOrUnion}.
 * @param ctx the parse tree
 */
fn enter_structOrUnion(&mut self, _ctx: &StructOrUnionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#structOrUnion}.
 * @param ctx the parse tree
 */
fn exit_structOrUnion(&mut self, _ctx: &StructOrUnionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#structDeclarationList}.
 * @param ctx the parse tree
 */
fn enter_structDeclarationList(&mut self, _ctx: &StructDeclarationListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#structDeclarationList}.
 * @param ctx the parse tree
 */
fn exit_structDeclarationList(&mut self, _ctx: &StructDeclarationListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#structDeclaration}.
 * @param ctx the parse tree
 */
fn enter_structDeclaration(&mut self, _ctx: &StructDeclarationContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#structDeclaration}.
 * @param ctx the parse tree
 */
fn exit_structDeclaration(&mut self, _ctx: &StructDeclarationContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#specifierQualifierList}.
 * @param ctx the parse tree
 */
fn enter_specifierQualifierList(&mut self, _ctx: &SpecifierQualifierListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#specifierQualifierList}.
 * @param ctx the parse tree
 */
fn exit_specifierQualifierList(&mut self, _ctx: &SpecifierQualifierListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#structDeclaratorList}.
 * @param ctx the parse tree
 */
fn enter_structDeclaratorList(&mut self, _ctx: &StructDeclaratorListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#structDeclaratorList}.
 * @param ctx the parse tree
 */
fn exit_structDeclaratorList(&mut self, _ctx: &StructDeclaratorListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#structDeclarator}.
 * @param ctx the parse tree
 */
fn enter_structDeclarator(&mut self, _ctx: &StructDeclaratorContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#structDeclarator}.
 * @param ctx the parse tree
 */
fn exit_structDeclarator(&mut self, _ctx: &StructDeclaratorContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#enumSpecifier}.
 * @param ctx the parse tree
 */
fn enter_enumSpecifier(&mut self, _ctx: &EnumSpecifierContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#enumSpecifier}.
 * @param ctx the parse tree
 */
fn exit_enumSpecifier(&mut self, _ctx: &EnumSpecifierContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#enumeratorList}.
 * @param ctx the parse tree
 */
fn enter_enumeratorList(&mut self, _ctx: &EnumeratorListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#enumeratorList}.
 * @param ctx the parse tree
 */
fn exit_enumeratorList(&mut self, _ctx: &EnumeratorListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#enumerator}.
 * @param ctx the parse tree
 */
fn enter_enumerator(&mut self, _ctx: &EnumeratorContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#enumerator}.
 * @param ctx the parse tree
 */
fn exit_enumerator(&mut self, _ctx: &EnumeratorContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#enumerationConstant}.
 * @param ctx the parse tree
 */
fn enter_enumerationConstant(&mut self, _ctx: &EnumerationConstantContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#enumerationConstant}.
 * @param ctx the parse tree
 */
fn exit_enumerationConstant(&mut self, _ctx: &EnumerationConstantContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#atomicTypeSpecifier}.
 * @param ctx the parse tree
 */
fn enter_atomicTypeSpecifier(&mut self, _ctx: &AtomicTypeSpecifierContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#atomicTypeSpecifier}.
 * @param ctx the parse tree
 */
fn exit_atomicTypeSpecifier(&mut self, _ctx: &AtomicTypeSpecifierContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#typeQualifier}.
 * @param ctx the parse tree
 */
fn enter_typeQualifier(&mut self, _ctx: &TypeQualifierContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#typeQualifier}.
 * @param ctx the parse tree
 */
fn exit_typeQualifier(&mut self, _ctx: &TypeQualifierContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#functionSpecifier}.
 * @param ctx the parse tree
 */
fn enter_functionSpecifier(&mut self, _ctx: &FunctionSpecifierContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#functionSpecifier}.
 * @param ctx the parse tree
 */
fn exit_functionSpecifier(&mut self, _ctx: &FunctionSpecifierContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#alignmentSpecifier}.
 * @param ctx the parse tree
 */
fn enter_alignmentSpecifier(&mut self, _ctx: &AlignmentSpecifierContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#alignmentSpecifier}.
 * @param ctx the parse tree
 */
fn exit_alignmentSpecifier(&mut self, _ctx: &AlignmentSpecifierContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#declarator}.
 * @param ctx the parse tree
 */
fn enter_declarator(&mut self, _ctx: &DeclaratorContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#declarator}.
 * @param ctx the parse tree
 */
fn exit_declarator(&mut self, _ctx: &DeclaratorContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#directDeclarator}.
 * @param ctx the parse tree
 */
fn enter_directDeclarator(&mut self, _ctx: &DirectDeclaratorContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#directDeclarator}.
 * @param ctx the parse tree
 */
fn exit_directDeclarator(&mut self, _ctx: &DirectDeclaratorContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#vcSpecificModifer}.
 * @param ctx the parse tree
 */
fn enter_vcSpecificModifer(&mut self, _ctx: &VcSpecificModiferContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#vcSpecificModifer}.
 * @param ctx the parse tree
 */
fn exit_vcSpecificModifer(&mut self, _ctx: &VcSpecificModiferContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#gccDeclaratorExtension}.
 * @param ctx the parse tree
 */
fn enter_gccDeclaratorExtension(&mut self, _ctx: &GccDeclaratorExtensionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#gccDeclaratorExtension}.
 * @param ctx the parse tree
 */
fn exit_gccDeclaratorExtension(&mut self, _ctx: &GccDeclaratorExtensionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#gccAttributeSpecifier}.
 * @param ctx the parse tree
 */
fn enter_gccAttributeSpecifier(&mut self, _ctx: &GccAttributeSpecifierContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#gccAttributeSpecifier}.
 * @param ctx the parse tree
 */
fn exit_gccAttributeSpecifier(&mut self, _ctx: &GccAttributeSpecifierContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#gccAttributeList}.
 * @param ctx the parse tree
 */
fn enter_gccAttributeList(&mut self, _ctx: &GccAttributeListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#gccAttributeList}.
 * @param ctx the parse tree
 */
fn exit_gccAttributeList(&mut self, _ctx: &GccAttributeListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#gccAttribute}.
 * @param ctx the parse tree
 */
fn enter_gccAttribute(&mut self, _ctx: &GccAttributeContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#gccAttribute}.
 * @param ctx the parse tree
 */
fn exit_gccAttribute(&mut self, _ctx: &GccAttributeContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#nestedParenthesesBlock}.
 * @param ctx the parse tree
 */
fn enter_nestedParenthesesBlock(&mut self, _ctx: &NestedParenthesesBlockContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#nestedParenthesesBlock}.
 * @param ctx the parse tree
 */
fn exit_nestedParenthesesBlock(&mut self, _ctx: &NestedParenthesesBlockContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#pointer}.
 * @param ctx the parse tree
 */
fn enter_pointer(&mut self, _ctx: &PointerContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#pointer}.
 * @param ctx the parse tree
 */
fn exit_pointer(&mut self, _ctx: &PointerContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#typeQualifierList}.
 * @param ctx the parse tree
 */
fn enter_typeQualifierList(&mut self, _ctx: &TypeQualifierListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#typeQualifierList}.
 * @param ctx the parse tree
 */
fn exit_typeQualifierList(&mut self, _ctx: &TypeQualifierListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#parameterTypeList}.
 * @param ctx the parse tree
 */
fn enter_parameterTypeList(&mut self, _ctx: &ParameterTypeListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#parameterTypeList}.
 * @param ctx the parse tree
 */
fn exit_parameterTypeList(&mut self, _ctx: &ParameterTypeListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#parameterList}.
 * @param ctx the parse tree
 */
fn enter_parameterList(&mut self, _ctx: &ParameterListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#parameterList}.
 * @param ctx the parse tree
 */
fn exit_parameterList(&mut self, _ctx: &ParameterListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#parameterDeclaration}.
 * @param ctx the parse tree
 */
fn enter_parameterDeclaration(&mut self, _ctx: &ParameterDeclarationContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#parameterDeclaration}.
 * @param ctx the parse tree
 */
fn exit_parameterDeclaration(&mut self, _ctx: &ParameterDeclarationContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#identifierList}.
 * @param ctx the parse tree
 */
fn enter_identifierList(&mut self, _ctx: &IdentifierListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#identifierList}.
 * @param ctx the parse tree
 */
fn exit_identifierList(&mut self, _ctx: &IdentifierListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#typeName}.
 * @param ctx the parse tree
 */
fn enter_typeName(&mut self, _ctx: &TypeNameContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#typeName}.
 * @param ctx the parse tree
 */
fn exit_typeName(&mut self, _ctx: &TypeNameContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#abstractDeclarator}.
 * @param ctx the parse tree
 */
fn enter_abstractDeclarator(&mut self, _ctx: &AbstractDeclaratorContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#abstractDeclarator}.
 * @param ctx the parse tree
 */
fn exit_abstractDeclarator(&mut self, _ctx: &AbstractDeclaratorContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#directAbstractDeclarator}.
 * @param ctx the parse tree
 */
fn enter_directAbstractDeclarator(&mut self, _ctx: &DirectAbstractDeclaratorContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#directAbstractDeclarator}.
 * @param ctx the parse tree
 */
fn exit_directAbstractDeclarator(&mut self, _ctx: &DirectAbstractDeclaratorContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#typedefName}.
 * @param ctx the parse tree
 */
fn enter_typedefName(&mut self, _ctx: &TypedefNameContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#typedefName}.
 * @param ctx the parse tree
 */
fn exit_typedefName(&mut self, _ctx: &TypedefNameContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#initializer}.
 * @param ctx the parse tree
 */
fn enter_initializer(&mut self, _ctx: &InitializerContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#initializer}.
 * @param ctx the parse tree
 */
fn exit_initializer(&mut self, _ctx: &InitializerContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#initializerList}.
 * @param ctx the parse tree
 */
fn enter_initializerList(&mut self, _ctx: &InitializerListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#initializerList}.
 * @param ctx the parse tree
 */
fn exit_initializerList(&mut self, _ctx: &InitializerListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#designation}.
 * @param ctx the parse tree
 */
fn enter_designation(&mut self, _ctx: &DesignationContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#designation}.
 * @param ctx the parse tree
 */
fn exit_designation(&mut self, _ctx: &DesignationContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#designatorList}.
 * @param ctx the parse tree
 */
fn enter_designatorList(&mut self, _ctx: &DesignatorListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#designatorList}.
 * @param ctx the parse tree
 */
fn exit_designatorList(&mut self, _ctx: &DesignatorListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#designator}.
 * @param ctx the parse tree
 */
fn enter_designator(&mut self, _ctx: &DesignatorContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#designator}.
 * @param ctx the parse tree
 */
fn exit_designator(&mut self, _ctx: &DesignatorContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#staticAssertDeclaration}.
 * @param ctx the parse tree
 */
fn enter_staticAssertDeclaration(&mut self, _ctx: &StaticAssertDeclarationContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#staticAssertDeclaration}.
 * @param ctx the parse tree
 */
fn exit_staticAssertDeclaration(&mut self, _ctx: &StaticAssertDeclarationContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#statement}.
 * @param ctx the parse tree
 */
fn enter_statement(&mut self, _ctx: &StatementContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#statement}.
 * @param ctx the parse tree
 */
fn exit_statement(&mut self, _ctx: &StatementContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#labeledStatement}.
 * @param ctx the parse tree
 */
fn enter_labeledStatement(&mut self, _ctx: &LabeledStatementContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#labeledStatement}.
 * @param ctx the parse tree
 */
fn exit_labeledStatement(&mut self, _ctx: &LabeledStatementContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#compoundStatement}.
 * @param ctx the parse tree
 */
fn enter_compoundStatement(&mut self, _ctx: &CompoundStatementContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#compoundStatement}.
 * @param ctx the parse tree
 */
fn exit_compoundStatement(&mut self, _ctx: &CompoundStatementContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#blockItemList}.
 * @param ctx the parse tree
 */
fn enter_blockItemList(&mut self, _ctx: &BlockItemListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#blockItemList}.
 * @param ctx the parse tree
 */
fn exit_blockItemList(&mut self, _ctx: &BlockItemListContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#blockItem}.
 * @param ctx the parse tree
 */
fn enter_blockItem(&mut self, _ctx: &BlockItemContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#blockItem}.
 * @param ctx the parse tree
 */
fn exit_blockItem(&mut self, _ctx: &BlockItemContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#expressionStatement}.
 * @param ctx the parse tree
 */
fn enter_expressionStatement(&mut self, _ctx: &ExpressionStatementContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#expressionStatement}.
 * @param ctx the parse tree
 */
fn exit_expressionStatement(&mut self, _ctx: &ExpressionStatementContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#selectionStatement}.
 * @param ctx the parse tree
 */
fn enter_selectionStatement(&mut self, _ctx: &SelectionStatementContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#selectionStatement}.
 * @param ctx the parse tree
 */
fn exit_selectionStatement(&mut self, _ctx: &SelectionStatementContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#iterationStatement}.
 * @param ctx the parse tree
 */
fn enter_iterationStatement(&mut self, _ctx: &IterationStatementContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#iterationStatement}.
 * @param ctx the parse tree
 */
fn exit_iterationStatement(&mut self, _ctx: &IterationStatementContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#forIterationStatement}.
 * @param ctx the parse tree
 */
fn enter_forIterationStatement(&mut self, _ctx: &ForIterationStatementContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#forIterationStatement}.
 * @param ctx the parse tree
 */
fn exit_forIterationStatement(&mut self, _ctx: &ForIterationStatementContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#whileIterationStatement}.
 * @param ctx the parse tree
 */
fn enter_whileIterationStatement(&mut self, _ctx: &WhileIterationStatementContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#whileIterationStatement}.
 * @param ctx the parse tree
 */
fn exit_whileIterationStatement(&mut self, _ctx: &WhileIterationStatementContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#doWhileIterationStatement}.
 * @param ctx the parse tree
 */
fn enter_doWhileIterationStatement(&mut self, _ctx: &DoWhileIterationStatementContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#doWhileIterationStatement}.
 * @param ctx the parse tree
 */
fn exit_doWhileIterationStatement(&mut self, _ctx: &DoWhileIterationStatementContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#forCondition}.
 * @param ctx the parse tree
 */
fn enter_forCondition(&mut self, _ctx: &ForConditionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#forCondition}.
 * @param ctx the parse tree
 */
fn exit_forCondition(&mut self, _ctx: &ForConditionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#forDeclaration}.
 * @param ctx the parse tree
 */
fn enter_forDeclaration(&mut self, _ctx: &ForDeclarationContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#forDeclaration}.
 * @param ctx the parse tree
 */
fn exit_forDeclaration(&mut self, _ctx: &ForDeclarationContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#forExpression}.
 * @param ctx the parse tree
 */
fn enter_forExpression(&mut self, _ctx: &ForExpressionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#forExpression}.
 * @param ctx the parse tree
 */
fn exit_forExpression(&mut self, _ctx: &ForExpressionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#jumpStatement}.
 * @param ctx the parse tree
 */
fn enter_jumpStatement(&mut self, _ctx: &JumpStatementContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#jumpStatement}.
 * @param ctx the parse tree
 */
fn exit_jumpStatement(&mut self, _ctx: &JumpStatementContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#compilationUnit}.
 * @param ctx the parse tree
 */
fn enter_compilationUnit(&mut self, _ctx: &CompilationUnitContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#compilationUnit}.
 * @param ctx the parse tree
 */
fn exit_compilationUnit(&mut self, _ctx: &CompilationUnitContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#translationUnit}.
 * @param ctx the parse tree
 */
fn enter_translationUnit(&mut self, _ctx: &TranslationUnitContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#translationUnit}.
 * @param ctx the parse tree
 */
fn exit_translationUnit(&mut self, _ctx: &TranslationUnitContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#externalDeclaration}.
 * @param ctx the parse tree
 */
fn enter_externalDeclaration(&mut self, _ctx: &ExternalDeclarationContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#externalDeclaration}.
 * @param ctx the parse tree
 */
fn exit_externalDeclaration(&mut self, _ctx: &ExternalDeclarationContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#functionDefinition}.
 * @param ctx the parse tree
 */
fn enter_functionDefinition(&mut self, _ctx: &FunctionDefinitionContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#functionDefinition}.
 * @param ctx the parse tree
 */
fn exit_functionDefinition(&mut self, _ctx: &FunctionDefinitionContext<'input>) { }
/**
 * Enter a parse tree produced by {@link CParser#declarationList}.
 * @param ctx the parse tree
 */
fn enter_declarationList(&mut self, _ctx: &DeclarationListContext<'input>) { }
/**
 * Exit a parse tree produced by {@link CParser#declarationList}.
 * @param ctx the parse tree
 */
fn exit_declarationList(&mut self, _ctx: &DeclarationListContext<'input>) { }

}

antlr_rust::coerce_from!{ 'input : CListener<'input> }


