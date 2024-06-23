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
	.globl	deepWhileBr
	.type	deepWhileBr, @function
deepWhileBr:
.LdeepWhileBr$ENTRY:
	addw	a0, a0, a1
.LBB1_2.4:
	li	a1, 75
	blt	a0, a1, .LBB1_3.7
	j	.LBB1_6.13
.LBB1_3.7:
	li	a1, 100
	blt	a0, a1, .LBB1_4.9
	j	.LBB1_2.4
.LBB1_4.9:
	addiw	a0, a0, 42
	li	a1, 99
	blt	a1, a0, .LBB1_5.12
	j	.LBB1_2.4
.LBB1_5.12:
	li	a0, 168
	j	.LBB1_2.4
.LBB1_6.13:
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
.Lmain$ENTRY:
	li	a0, 2
	li	a1, 2
	tail	deepWhileBr

