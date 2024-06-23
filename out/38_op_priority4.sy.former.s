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
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	addi	s0, sp, 64
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
.Lmain$ENTRY:
	la	s1, e
	la	s2, d
	la	s3, c
	la	s4, b
	la	s5, a
	call	getint
	sw	a0, 0(s5)
	call	getint
	sw	a0, 0(s4)
	call	getint
	sw	a0, 0(s3)
	call	getint
	sw	a0, 0(s2)
	call	getint
	sw	a0, 0(s1)
	lw	a6, 0(s4)
	lw	a5, 0(s3)
	mulw	a1, a6, a5
	lw	a4, 0(s5)
	subw	a3, a4, a1
	lw	a2, 0(s2)
	divw	a1, a4, a5
	subw	a1, a2, a1
	bne	a3, a1, .LBB1_4.24
.LBB1_2.15:
	mulw	a1, a4, a6
	divw	a1, a1, a5
	addw	a2, a0, a2
	beq	a1, a2, .LBB1_4.24
.LBB1_3.20:
	addw	a0, a4, a5
	addw	a1, a0, a6
	li	a0, 0
	beq	a1, a2, .LBB1_4.24
	j	.LBB1_5.25
.LBB1_4.24:
	li	a0, 1
.LBB1_5.25:
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	ld	s4, 16(sp)
	ld	s5, 8(sp)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret

	.globl	a
	.section	.bss
	.type	a, @object
a:
	.zero	4

	.globl	b
	.section	.bss
	.type	b, @object
b:
	.zero	4

	.globl	c
	.section	.bss
	.type	c, @object
c:
	.zero	4

	.globl	d
	.section	.bss
	.type	d, @object
d:
	.zero	4

	.globl	e
	.section	.bss
	.type	e, @object
e:
	.zero	4

