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
	subw	a1, zero, zero
	li	a0, -1
	bne	a1, zero, .LBB1_3.5
.LBB1_2.4:
	li	a0, 0
.LBB1_3.5:
	ret

