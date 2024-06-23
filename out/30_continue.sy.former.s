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
	li	a0, 0
	li	a1, 0
.LBB1_2.1:
	mv	a3, a1
	li	a1, 100
	blt	a3, a1, .LBB1_3.5
	j	.LBB1_5.10
.LBB1_3.5:
	li	a2, 50
	addiw	a1, a3, 1
	beq	a3, a2, .LBB1_2.1
.LBB1_4.8:
	addw	a0, a0, a3
	j	.LBB1_2.1
.LBB1_5.10:
	ret

