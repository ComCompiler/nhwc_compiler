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
	.globl	FourWhile
	.type	FourWhile, @function
FourWhile:
.LFourWhile$ENTRY:
	li	a1, 10
	li	a2, 7
	li	a3, 6
	li	a4, 5
.LBB1_2.1:
	li	a0, 20
	blt	a4, a0, .LBB1_3.7
	j	.LBB1_10.30
.LBB1_3.7:
	li	a0, 10
	blt	a3, a0, .LBB1_4.12
	j	.LBB1_9.27
.LBB1_4.12:
	li	a0, 7
	beq	a2, a0, .LBB1_5.16
	j	.LBB1_8.24
.LBB1_5.16:
	li	a0, 20
	blt	a1, a0, .LBB1_6.19
	j	.LBB1_7.21
.LBB1_6.19:
	addiw	a1, a1, 3
	j	.LBB1_5.16
.LBB1_7.21:
	addiw	a2, a2, -1
	addiw	a1, a1, -1
	j	.LBB1_4.12
.LBB1_8.24:
	addiw	a3, a3, 1
	addiw	a2, a2, 1
	j	.LBB1_3.7
.LBB1_9.27:
	addiw	a4, a4, 3
	addiw	a3, a3, -2
	j	.LBB1_2.1
.LBB1_10.30:
	addw	a0, a1, a3
	addw	a0, a0, a2
	addw	a0, a0, a4
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
.Lmain$ENTRY:
	tail	FourWhile

