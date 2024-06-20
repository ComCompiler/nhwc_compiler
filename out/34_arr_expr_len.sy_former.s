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
	la	a2, arr
	li	a0, 0
	li	a3, 0
.LBB1_2.1:
	li	a1, 6
	blt	a3, a1, .LBB1_3.5
	j	.LBB1_4.10
.LBB1_3.5:
	addi	a1, a2, 0
	.word	0x20b6c5b3	# sh2add	a1, a3, a1
	lw	a1, 0(a1)
	addw	a0, a0, a1
	addiw	a3, a3, 1
	j	.LBB1_2.1
.LBB1_4.10:
	ret

	.globl	N
	.section	.data
	.type	N, @object
N:
	.word	4294967295

	.globl	arr
	.section	.data
	.type	arr, @object
arr:
	.word	1
	.word	2
	.word	33
	.word	4
	.word	5
	.word	6

