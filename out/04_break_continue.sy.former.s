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
	li	a6, 0
	li	a0, 0
.LBB1_2.1:
	li	a1, 20
	li	a7, 0
	blt	a6, a1, .LBB1_3.5
	j	.LBB1_17.41
.LBB1_3.5:
	li	a1, 10
	li	a5, 0
	blt	a7, a1, .LBB1_4.9
	j	.LBB1_16.39
.LBB1_4.9:
	li	a1, 5
	li	a3, 0
	blt	a5, a1, .LBB1_5.13
	j	.LBB1_15.37
.LBB1_5.13:
	li	a1, 3
	blt	a3, a1, .LBB1_6.17
	j	.LBB1_14.35
.LBB1_6.17:
	addiw	a4, a3, 1
	li	a1, 3
	li	a2, 0
	bge	a4, a1, .LBB1_7.20
	j	.LBB1_11.28
.LBB1_7.20:
	xori	a1, a3, 0
	sltu	a1, zero, a1
	li	a2, 0
	bltu	zero, a1, .LBB1_8.22
	j	.LBB1_11.28
.LBB1_8.22:
	bltu	zero, a1, .LBB1_10.25
.LBB1_9.23:
	xori	a1, a1, 1
	li	a2, 0
	bne	a1, zero, .LBB1_10.25
	j	.LBB1_11.28
.LBB1_10.25:
	addiw	a3, a3, 1
	li	a1, 3
	li	a2, 0
	bge	a3, a1, .LBB1_14.35
.LBB1_11.28:
	li	a1, 2
	blt	a2, a1, .LBB1_12.31
	j	.LBB1_13.33
.LBB1_12.31:
	addiw	a2, a2, 1
	j	.LBB1_11.28
.LBB1_13.33:
	addiw	a0, a0, 1
	mv	a3, a4
	j	.LBB1_5.13
.LBB1_14.35:
	addiw	a5, a5, 1
	j	.LBB1_4.9
.LBB1_15.37:
	addiw	a7, a7, 1
	j	.LBB1_3.5
.LBB1_16.39:
	addiw	a6, a6, 1
	j	.LBB1_2.1
.LBB1_17.41:
	ret

