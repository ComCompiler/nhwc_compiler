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
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
.Lmain$ENTRY:
	la	a0, d
	la	a1, e
	la	a2, c
	la	a3, b
	la	a4, a
	lw	a6, 0(a4)
	lw	a5, 0(a3)
	mulw	a3, a6, a5
	lw	a4, 0(a2)
	divw	a3, a3, a4
	lw	a1, 0(a1)
	lw	a2, 0(a0)
	addw	a1, a1, a2
	beq	a3, a1, .LBB1_2.10
	j	.LBB1_3.15
.LBB1_2.10:
	addw	a0, a6, a5
	mulw	a0, a6, a0
	addw	a0, a0, a4
	bge	a1, a0, .LBB1_4.21
.LBB1_3.15:
	mulw	a0, a5, a4
	subw	a1, a6, a0
	divw	a0, a6, a4
	subw	a0, a2, a0
	li	s1, 0
	beq	a1, a0, .LBB1_4.21
	j	.LBB1_5.22
.LBB1_4.21:
	li	s1, 1
.LBB1_5.22:
	mv	a0, s1
	call	putint
	mv	a0, s1
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.globl	a
	.section	.data
	.type	a, @object
a:
	.word	1

	.globl	b
	.section	.bss
	.type	b, @object
b:
	.zero	4

	.globl	c
	.section	.data
	.type	c, @object
c:
	.word	1

	.globl	d
	.section	.data
	.type	d, @object
d:
	.word	2

	.globl	e
	.section	.data
	.type	e, @object
e:
	.word	4

