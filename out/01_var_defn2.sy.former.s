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
	la	a0, b
	lw	a0, 0(a0)
	addiw	a0, a0, 5
	ret

	.globl	a
	.section	.data
	.type	a, @object
a:
	.word	3

	.globl	b
	.section	.data
	.type	b, @object
b:
	.word	5

