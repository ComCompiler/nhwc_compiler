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
	.globl	doubleWhile
	.type	doubleWhile, @function
doubleWhile:
.LdoubleWhile$ENTRY:
	li	a0, 7
	li	a2, 5
.LBB1_2.1:
	li	a1, 100
	blt	a2, a1, .LBB1_3.5
	j	.LBB1_6.13
.LBB1_3.5:
	li	a1, 100
	blt	a0, a1, .LBB1_4.8
	j	.LBB1_5.10
.LBB1_4.8:
	addiw	a0, a0, 6
	j	.LBB1_3.5
.LBB1_5.10:
	addiw	a2, a2, 30
	addiw	a0, a0, -100
	j	.LBB1_2.1
.LBB1_6.13:
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
.Lmain$ENTRY:
	tail	doubleWhile

