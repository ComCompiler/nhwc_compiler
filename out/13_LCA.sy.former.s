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
	.globl	LCA
	.type	LCA, @function
LCA:
.LLCA$ENTRY:
	la	a3, f
	la	a5, dep
	addi	a2, a5, 0
	.word	0x20c54633	# sh2add	a2, a0, a2
	lw	a6, 0(a2)
	addi	a2, a5, 0
	.word	0x20c5c633	# sh2add	a2, a1, a2
	lw	a2, 0(a2)
	mv	a4, a1
	blt	a6, a2, .LBB1_2.8
	j	.LBB1_3.9
.LBB1_2.8:
	mv	a4, a0
	mv	a0, a1
.LBB1_3.9:
	addi	a1, a5, 0
	.word	0x20b745b3	# sh2add	a1, a4, a1
	lw	a7, 0(a1)
	li	a6, 19
.LBB1_4.14:
	addi	a1, a5, 0
	.word	0x20b545b3	# sh2add	a1, a0, a1
	lw	a1, 0(a1)
	blt	a7, a1, .LBB1_5.20
	j	.LBB1_9.33
.LBB1_5.20:
	addi	a2, a3, 0
	li	a1, 80
	mul	a1, a0, a1
	add	a1, a2, a1
	addi	a1, a1, 0
	.word	0x20b845b3	# sh2add	a1, a6, a1
	lw	a2, 0(a1)
	bne	a2, zero, .LBB1_6.25
	j	.LBB1_8.30
.LBB1_6.25:
	addi	a1, a5, 0
	.word	0x20b645b3	# sh2add	a1, a2, a1
	lw	a1, 0(a1)
	bge	a1, a7, .LBB1_7.29
	j	.LBB1_8.30
.LBB1_7.29:
	mv	a0, a2
.LBB1_8.30:
	addiw	a6, a6, -1
	j	.LBB1_4.14
.LBB1_9.33:
	li	a6, 19
	mv	a1, a0
	beq	a0, a4, .LBB1_15.56
.LBB1_10.35:
	addi	a2, a3, 0
	li	a1, 80
	mul	a1, a0, a1
	add	a1, a2, a1
	bge	a6, zero, .LBB1_11.41
	j	.LBB1_14.53
.LBB1_11.41:
	addi	a1, a1, 0
	.word	0x20b845b3	# sh2add	a1, a6, a1
	lw	a5, 0(a1)
	addi	a2, a3, 0
	li	a1, 80
	mul	a1, a4, a1
	add	a1, a2, a1
	addi	a1, a1, 0
	.word	0x20b845b3	# sh2add	a1, a6, a1
	lw	a1, 0(a1)
	bne	a5, a1, .LBB1_12.48
	j	.LBB1_13.49
.LBB1_12.48:
	mv	a4, a1
	mv	a0, a5
.LBB1_13.49:
	addiw	a6, a6, -1
	j	.LBB1_10.35
.LBB1_14.53:
	lw	a1, 0(a1)
.LBB1_15.56:
	mv	a0, a1
	ret

	.section	.text
	.align	4
	.globl	add_edge
	.type	add_edge, @function
add_edge:
.Ladd_edge$ENTRY:
	la	a2, f
	la	a3, head
	la	a4, next
	la	a5, to
	la	a6, cnt
	lw	a7, 0(a6)
	addi	a5, a5, 0
	.word	0x20f8c7b3	# sh2add	a5, a7, a5
	sw	a1, 0(a5)
	addi	a4, a4, 0
	.word	0x20e8c733	# sh2add	a4, a7, a4
	addi	a3, a3, 0
	.word	0x20d546b3	# sh2add	a3, a0, a3
	lw	a5, 0(a3)
	sw	a5, 0(a4)
	sw	a7, 0(a3)
	addiw	a3, a7, 1
	sw	a3, 0(a6)
	addi	a3, a2, 0
	li	a2, 80
	mul	a2, a1, a2
	add	a1, a3, a2
	sw	a0, 0(a1)
	ret

	.section	.text
	.align	4
	.globl	init
	.type	init, @function
init:
.Linit$ENTRY:
	la	a2, head
	la	a1, n
	la	a3, dep
	li	a4, 1061109567
	sw	a4, 0(a3)
	lw	a5, 0(a1)
	li	a4, 1
.LBB3_2.3:
	bge	a5, a4, .LBB3_3.6
	j	.LBB3_4.9
.LBB3_3.6:
	addi	a1, a2, 0
	.word	0x20b745b3	# sh2add	a1, a4, a1
	li	a3, -1
	sw	a3, 0(a1)
	addiw	a4, a4, 1
	j	.LBB3_2.3
.LBB3_4.9:
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Lmain$ENTRY:
	la	s1, m
	la	s2, n
	call	quick_read
	mv	s4, a0
	sw	s4, 0(s2)
	call	quick_read
	sw	a0, 0(s1)
	call	init
	li	s3, 1
.LBB4_2.3:
	bne	s3, s4, .LBB4_3.6
	j	.LBB4_4.10
.LBB4_3.6:
	call	quick_read
	mv	s2, a0
	call	quick_read
	mv	a1, a0
	mv	a0, s2
	call	add_edge
	addiw	s3, s3, 1
	j	.LBB4_2.3
.LBB4_4.10:
	li	a0, 1
	li	a1, 1
	call	tree
.LBB4_5.11:
	lw	a0, 0(s1)
	bne	a0, zero, .LBB4_6.14
	j	.LBB4_7.20
.LBB4_6.14:
	call	quick_read
	mv	s2, a0
	call	quick_read
	mv	a1, a0
	mv	a0, s2
	call	LCA
	call	putint
	li	a0, 10
	call	putch
	lw	a0, 0(s1)
	addiw	a0, a0, -1
	sw	a0, 0(s1)
	j	.LBB4_5.11
.LBB4_7.20:
	mv	a0, zero
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s4, 0(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
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
.LBB5_2.2:
	li	a1, 48
	blt	a0, a1, .LBB5_4.8
.LBB5_3.6:
	li	a1, 57
	mv	s3, a0
	li	s1, 0
	blt	a1, a0, .LBB5_4.8
	j	.LBB5_7.14
.LBB5_4.8:
	li	a1, 45
	beq	a0, a1, .LBB5_5.10
	j	.LBB5_6.11
.LBB5_5.10:
	li	s2, 1
.LBB5_6.11:
	call	getch
	j	.LBB5_2.2
.LBB5_7.14:
	li	a0, 48
	bge	s3, a0, .LBB5_8.18
	j	.LBB5_10.25
.LBB5_8.18:
	li	a0, 57
	bge	a0, s3, .LBB5_9.20
	j	.LBB5_10.25
.LBB5_9.20:
	call	getch
	addiw	a2, s3, -48
	li	a1, 10
	mulw	a1, s1, a1
	addw	s1, a2, a1
	mv	s3, a0
	j	.LBB5_7.14
.LBB5_10.25:
	bne	s2, zero, .LBB5_11.27
	j	.LBB5_12.29
.LBB5_11.27:
	subw	s1, zero, s1
.LBB5_12.29:
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
	.globl	tree
	.type	tree, @function
tree:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Ltree$ENTRY:
	la	s1, next
	la	s2, to
	la	a2, head
	la	a5, f
	la	a3, dep
	addi	a3, a3, 0
	.word	0x20d546b3	# sh2add	a3, a0, a3
	sw	a1, 0(a3)
	addi	a4, a5, 0
	li	a3, 80
	mul	a3, a0, a3
	add	a6, a4, a3
	li	s3, 0
.LBB6_2.5:
	addi	a3, a6, 0
	.word	0x20d9c6b3	# sh2add	a3, s3, a3
	lw	a7, 0(a3)
	bne	a7, zero, .LBB6_3.10
	j	.LBB6_4.16
.LBB6_3.10:
	addi	a4, a5, 0
	li	a3, 80
	mul	a3, a7, a3
	add	a3, a4, a3
	addi	a3, a3, 0
	.word	0x20d9c6b3	# sh2add	a3, s3, a3
	lw	a4, 0(a3)
	addiw	s3, s3, 1
	addi	a3, a6, 0
	.word	0x20d9c6b3	# sh2add	a3, s3, a3
	sw	a4, 0(a3)
	j	.LBB6_2.5
.LBB6_4.16:
	addi	a2, a2, 0
	.word	0x20c54633	# sh2add	a2, a0, a2
	lw	s3, 0(a2)
	addiw	s4, a1, 1
.LBB6_5.20:
	li	a1, -1
	bne	s3, a1, .LBB6_6.23
	j	.LBB6_7.28
.LBB6_6.23:
	addi	a0, s2, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	mv	a1, s4
	call	tree
	addi	a1, s1, 0
	.word	0x20b9c5b3	# sh2add	a1, s3, a1
	lw	s3, 0(a1)
	j	.LBB6_5.20
.LBB6_7.28:
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s4, 0(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.globl	cnt
	.section	.bss
	.type	cnt, @object
cnt:
	.zero	4

	.globl	dep
	.section	.bss
	.type	dep, @object
dep:
	.zero	40020

	.globl	f
	.section	.bss
	.type	f, @object
f:
	.zero	800400

	.globl	head
	.section	.bss
	.type	head, @object
head:
	.zero	40020

	.globl	m
	.section	.bss
	.type	m, @object
m:
	.zero	4

	.globl	maxn
	.section	.data
	.type	maxn, @object
maxn:
	.word	10005

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

	.globl	next
	.section	.bss
	.type	next, @object
next:
	.zero	40020

	.globl	to
	.section	.bss
	.type	to, @object
to:
	.zero	40020

