# Built-in library
    .text
    .align 4
    .globl starttime
    .type starttime, @function
starttime:
    mv a0, zero
    tail _sysy_starttime

    .text
    .align 4
    .globl stoptime
    .type stoptime, @function
stoptime:
    mv a0, zero
    tail _sysy_stoptime

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
.Lmain$ENTRY:
	tail	whileIf

	.section	.text
	.align	4
	.globl	whileIf
	.type	whileIf, @function
whileIf:
.LwhileIf$ENTRY:
	li	a0, 0
	li	a2, 0
.LBB2_2.1:
	li	a1, 100
	blt	a2, a1, .LBB2_3.5
	j	.LBB2_7.14
.LBB2_3.5:
	li	a1, 5
	li	a0, 25
	beq	a2, a1, .LBB2_6.11
.LBB2_4.7:
	li	a1, 10
	li	a0, 42
	beq	a2, a1, .LBB2_6.11
.LBB2_5.9:
	slliw	a0, a2, 1
.LBB2_6.11:
	addiw	a2, a2, 1
	j	.LBB2_2.1
.LBB2_7.14:
	ret

