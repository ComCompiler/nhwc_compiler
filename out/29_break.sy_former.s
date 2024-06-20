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
	li	a2, 0
.LBB1_2.1:
	li	a1, 100
	blt	a2, a1, .LBB1_3.5
	j	.LBB1_5.10
.LBB1_3.5:
	li	a1, 50
	beq	a2, a1, .LBB1_5.10
.LBB1_4.7:
	addw	a0, a0, a2
	addiw	a2, a2, 1
	j	.LBB1_2.1
.LBB1_5.10:
	ret

