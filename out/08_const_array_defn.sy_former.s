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
	la	a0, a
	lw	a0, 16(a0)
	ret

	.globl	a
	.section	.data
	.type	a, @object
a:
	.zero	4
	.word	1
	.word	2
	.word	3
	.word	4

