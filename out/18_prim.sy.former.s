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
	.globl	find
	.type	find, @function
find:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
.Lfind$ENTRY:
	la	a1, fa
	addi	a1, a1, 0
	.word	0x20b544b3	# sh2add	s1, a0, a1
	lw	a1, 0(s1)
	beq	a0, a1, .LBB1_3.7
.LBB1_2.5:
	mv	a0, a1
	call	find
	sw	a0, 0(s1)
.LBB1_3.7:
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

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
	la	s1, c
	la	s2, v
	la	s3, u
	call	quick_read
	call	quick_read
	mv	s5, a0
	li	s4, 0
.LBB2_2.3:
	blt	s4, s5, .LBB2_3.6
	j	.LBB2_4.14
.LBB2_3.6:
	call	quick_read
	addi	a1, s3, 0
	.word	0x20ba45b3	# sh2add	a1, s4, a1
	sw	a0, 0(a1)
	call	quick_read
	addi	a1, s2, 0
	.word	0x20ba45b3	# sh2add	a1, s4, a1
	sw	a0, 0(a1)
	call	quick_read
	addi	a1, s1, 0
	.word	0x20ba45b3	# sh2add	a1, s4, a1
	sw	a0, 0(a1)
	addiw	s4, s4, 1
	j	.LBB2_2.3
.LBB2_4.14:
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	ld	s4, 16(sp)
	ld	s5, 8(sp)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	tail	prim

	.section	.text
	.align	4
	.globl	prim
	.type	prim, @function
prim:
	addi	sp, sp, -96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	addi	s0, sp, 96
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
	sd	s6, 32(sp)
	sd	s7, 24(sp)
	sd	s8, 16(sp)
	sd	s9, 8(sp)
.Lprim$ENTRY:
	la	s1, fa
	la	s2, v
	la	s3, u
	la	s5, c
	la	a0, n
	la	a1, m
	lw	s4, 0(a1)
	lw	a7, 0(a0)
	li	s9, 0
.LBB3_2.3:
	li	a1, 1
	blt	s9, s4, .LBB3_3.6
	j	.LBB3_8.28
.LBB3_3.6:
	addi	a0, s5, 0
	.word	0x20acc733	# sh2add	a4, s9, a0
	addi	a0, s3, 0
	.word	0x20acc6b3	# sh2add	a3, s9, a0
	addi	a0, s2, 0
	.word	0x20acc633	# sh2add	a2, s9, a0
	addiw	s9, s9, 1
	mv	s8, s9
.LBB3_4.11:
	blt	s8, s4, .LBB3_5.14
	j	.LBB3_2.3
.LBB3_5.14:
	lw	s7, 0(a4)
	addi	a0, s5, 0
	.word	0x20ac45b3	# sh2add	a1, s8, a0
	lw	s6, 0(a1)
	blt	s6, s7, .LBB3_6.19
	j	.LBB3_7.26
.LBB3_6.19:
	lw	a6, 0(a3)
	addi	a0, s3, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	a5, 0(a0)
	sw	a5, 0(a3)
	sw	a6, 0(a0)
	lw	a6, 0(a2)
	addi	a0, s2, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	a5, 0(a0)
	sw	a5, 0(a2)
	sw	a6, 0(a0)
	sw	s6, 0(a4)
	sw	s7, 0(a1)
.LBB3_7.26:
	addiw	s8, s8, 1
	j	.LBB3_4.11
.LBB3_8.28:
	li	s6, 0
	li	s7, 0
	bge	a7, a1, .LBB3_9.31
	j	.LBB3_10.34
.LBB3_9.31:
	addi	a0, s1, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	sw	a1, 0(a0)
	addiw	a1, a1, 1
	j	.LBB3_8.28
.LBB3_10.34:
	blt	s7, s4, .LBB3_11.38
	j	.LBB3_13.52
.LBB3_11.38:
	addi	a0, s3, 0
	.word	0x20abc533	# sh2add	a0, s7, a0
	lw	s9, 0(a0)
	addi	a0, s2, 0
	.word	0x20abc533	# sh2add	a0, s7, a0
	lw	s8, 0(a0)
	mv	a0, s9
	mv	a1, s8
	call	same
	bne	a0, zero, .LBB3_10.34
.LBB3_12.45:
	mv	a0, s9
	call	find
	addi	a1, s1, 0
	.word	0x20b54533	# sh2add	a0, a0, a1
	sw	s8, 0(a0)
	addi	a0, s5, 0
	.word	0x20abc533	# sh2add	a0, s7, a0
	lw	a0, 0(a0)
	addw	s6, s6, a0
	addiw	s7, s7, 1
	j	.LBB3_10.34
.LBB3_13.52:
	mv	a0, s6
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	ld	s0, 80(sp)
	ld	ra, 88(sp)
	addi	sp, sp, 96
	ret

	.section	.text
	.align	4
	.globl	quick_read
	.type	quick_read, @function
quick_read:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
.Lquick_read$ENTRY:
	call	getch
	li	s2, 0
.LBB4_2.2:
	li	a1, 48
	blt	a0, a1, .LBB4_4.8
.LBB4_3.6:
	li	a1, 57
	mv	s3, a0
	li	s1, 0
	blt	a1, a0, .LBB4_4.8
	j	.LBB4_7.14
.LBB4_4.8:
	li	a1, 45
	beq	a0, a1, .LBB4_5.10
	j	.LBB4_6.11
.LBB4_5.10:
	li	s2, 1
.LBB4_6.11:
	call	getch
	j	.LBB4_2.2
.LBB4_7.14:
	li	a0, 48
	bge	s3, a0, .LBB4_8.18
	j	.LBB4_10.25
.LBB4_8.18:
	li	a0, 57
	bge	a0, s3, .LBB4_9.20
	j	.LBB4_10.25
.LBB4_9.20:
	call	getch
	li	a1, 10
	mulw	a2, s1, a1
	addiw	a1, s3, -48
	addw	s1, a1, a2
	mv	s3, a0
	j	.LBB4_7.14
.LBB4_10.25:
	bne	s2, zero, .LBB4_11.27
	j	.LBB4_12.29
.LBB4_11.27:
	subw	s1, zero, s1
.LBB4_12.29:
	mv	a0, s1
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.section	.text
	.align	4
	.globl	same
	.type	same, @function
same:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.Lsame$ENTRY:
	mv	s1, a1
	call	find
	mv	s2, a0
	mv	a0, s1
	call	find
	li	a1, 1
	beq	s2, a0, .LBB5_3.7
.LBB5_2.6:
	li	a1, 0
.LBB5_3.7:
	mv	a0, a1
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.globl	c
	.section	.bss
	.type	c, @object
c:
	.zero	4020

	.globl	fa
	.section	.bss
	.type	fa, @object
fa:
	.zero	4020

	.globl	m
	.section	.bss
	.type	m, @object
m:
	.zero	4

	.globl	maxm
	.section	.data
	.type	maxm, @object
maxm:
	.word	1005

	.globl	maxn
	.section	.data
	.type	maxn, @object
maxn:
	.word	105

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

	.globl	u
	.section	.bss
	.type	u, @object
u:
	.zero	4020

	.globl	v
	.section	.bss
	.type	v, @object
v:
	.zero	4020

