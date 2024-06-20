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
	.globl	ifWhile
	.type	ifWhile, @function
ifWhile:
.LifWhile$ENTRY:
	li	a0, 3
	li	a2, 0
.LBB1_2.1:
	li	a1, 5
	blt	a2, a1, .LBB1_3.5
	j	.LBB1_4.8
.LBB1_3.5:
	addiw	a2, a2, 1
	slliw	a0, a0, 1
	j	.LBB1_2.1
.LBB1_4.8:
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
.Lmain$ENTRY:
	tail	ifWhile

