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
	.globl	add_edge
	.type	add_edge, @function
add_edge:
	addi	sp, sp, -16
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.Ladd_edge$ENTRY:
	la	a3, next
	la	a4, head
	la	a6, to
	la	a7, cnt
	lw	s2, 0(a7)
	addi	a2, a6, 0
	.word	0x20c94633	# sh2add	a2, s2, a2
	sw	a1, 0(a2)
	addi	a2, a4, 0
	.word	0x20c547b3	# sh2add	a5, a0, a2
	lw	s1, 0(a5)
	addi	a2, a3, 0
	.word	0x20c94633	# sh2add	a2, s2, a2
	sw	s1, 0(a2)
	sw	s2, 0(a5)
	addiw	a5, s2, 1
	sw	a5, 0(a7)
	addi	a2, a6, 0
	.word	0x20c7c633	# sh2add	a2, a5, a2
	sw	a0, 0(a2)
	addi	a2, a4, 0
	.word	0x20c5c633	# sh2add	a2, a1, a2
	lw	a4, 0(a2)
	addi	a1, a3, 0
	.word	0x20b7c5b3	# sh2add	a1, a5, a1
	sw	a4, 0(a1)
	sw	a5, 0(a2)
	addiw	a1, s2, 2
	sw	a1, 0(a7)
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	init
	.type	init, @function
init:
.Linit$ENTRY:
	la	a2, head
	li	a4, 0
.LBB2_2.1:
	li	a1, 1005
	blt	a4, a1, .LBB2_3.4
	j	.LBB2_4.7
.LBB2_3.4:
	addi	a1, a2, 0
	.word	0x20b745b3	# sh2add	a1, a4, a1
	li	a3, -1
	sw	a3, 0(a1)
	addiw	a4, a4, 1
	j	.LBB2_2.1
.LBB2_4.7:
	ret

	.section	.text
	.align	4
	.globl	inqueue
	.type	inqueue, @function
inqueue:
.Linqueue$ENTRY:
	la	a1, que
	la	a2, tail
	la	a3, inq
	addi	a3, a3, 0
	.word	0x20d546b3	# sh2add	a3, a0, a3
	li	a4, 1
	sw	a4, 0(a3)
	lw	a3, 0(a2)
	addiw	a3, a3, 1
	sw	a3, 0(a2)
	addi	a1, a1, 0
	.word	0x20b6c5b3	# sh2add	a1, a3, a1
	sw	a0, 0(a1)
	ret

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
	sd	s2, 0(sp)
.Lmain$ENTRY:
	la	s1, m
	la	s2, n
	call	quick_read
	sw	a0, 0(s2)
	call	quick_read
	sw	a0, 0(s1)
	call	init
.LBB4_2.3:
	lw	a0, 0(s1)
	bne	a0, zero, .LBB4_3.6
	j	.LBB4_11.27
.LBB4_3.6:
	call	getch
.LBB4_4.8:
	li	a1, 81
	bne	a0, a1, .LBB4_5.11
	j	.LBB4_7.15
.LBB4_5.11:
	li	a1, 85
	bne	a0, a1, .LBB4_6.13
	j	.LBB4_7.15
.LBB4_6.13:
	call	getch
	j	.LBB4_4.8
.LBB4_7.15:
	li	a1, 81
	beq	a0, a1, .LBB4_8.17
	j	.LBB4_9.21
.LBB4_8.17:
	call	quick_read
	mv	s2, a0
	call	quick_read
	mv	a1, a0
	mv	a0, s2
	call	same
	call	putint
	li	a0, 10
	call	putch
	j	.LBB4_10.24
.LBB4_9.21:
	call	quick_read
	mv	s2, a0
	call	quick_read
	mv	a1, a0
	mv	a0, s2
	call	add_edge
.LBB4_10.24:
	lw	a0, 0(s1)
	addiw	a0, a0, -1
	sw	a0, 0(s1)
	j	.LBB4_2.3
.LBB4_11.27:
	mv	a0, zero
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	pop_queue
	.type	pop_queue, @function
pop_queue:
.Lpop_queue$ENTRY:
	la	a0, que
	la	a1, h
	lw	a2, 0(a1)
	addiw	a2, a2, 1
	sw	a2, 0(a1)
	addi	a0, a0, 0
	.word	0x20a64533	# sh2add	a0, a2, a0
	lw	a0, 0(a0)
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
.LBB6_2.2:
	li	a1, 48
	blt	a0, a1, .LBB6_4.8
.LBB6_3.6:
	li	a1, 57
	mv	s3, a0
	li	s1, 0
	blt	a1, a0, .LBB6_4.8
	j	.LBB6_7.14
.LBB6_4.8:
	li	a1, 45
	beq	a0, a1, .LBB6_5.10
	j	.LBB6_6.11
.LBB6_5.10:
	li	s2, 1
.LBB6_6.11:
	call	getch
	j	.LBB6_2.2
.LBB6_7.14:
	li	a0, 48
	bge	s3, a0, .LBB6_8.18
	j	.LBB6_10.25
.LBB6_8.18:
	li	a0, 57
	bge	a0, s3, .LBB6_9.20
	j	.LBB6_10.25
.LBB6_9.20:
	call	getch
	li	a1, 10
	mulw	a1, s1, a1
	addiw	a1, a1, -48
	addw	s1, a1, s3
	mv	s3, a0
	j	.LBB6_7.14
.LBB6_10.25:
	bne	s2, zero, .LBB6_11.27
	j	.LBB6_12.29
.LBB6_11.27:
	subw	s1, zero, s1
.LBB6_12.29:
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
	sd	s10, 0(sp)
.Lsame$ENTRY:
	mv	s10, a1
	la	s1, que
	la	s2, next
	la	s3, inq
	la	s4, to
	la	s5, head
	la	s6, tail
	la	s7, h
	sw	zero, 0(s7)
	sw	zero, 0(s6)
	call	inqueue
	li	s9, 0
.LBB7_2.3:
	lw	a0, 0(s7)
	lw	a3, 0(s6)
	li	a2, 0
	blt	a0, a3, .LBB7_3.8
	j	.LBB7_10.30
.LBB7_3.8:
	call	pop_queue
	beq	a0, s10, .LBB7_4.11
	j	.LBB7_5.12
.LBB7_4.11:
	li	s9, 1
.LBB7_5.12:
	addi	a1, s5, 0
	.word	0x20b54533	# sh2add	a0, a0, a1
	lw	s8, 0(a0)
.LBB7_6.16:
	li	a0, -1
	bne	s8, a0, .LBB7_7.19
	j	.LBB7_2.3
.LBB7_7.19:
	addi	a0, s4, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	a0, 0(a0)
	addi	a1, s3, 0
	.word	0x20b545b3	# sh2add	a1, a0, a1
	lw	a1, 0(a1)
	xori	a1, a1, 0
	sltu	a1, zero, a1
	xori	a1, a1, 1
	bne	a1, zero, .LBB7_8.26
	j	.LBB7_9.27
.LBB7_8.26:
	call	inqueue
.LBB7_9.27:
	addi	a0, s2, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	s8, 0(a0)
	j	.LBB7_6.16
.LBB7_10.30:
	bge	a3, a2, .LBB7_11.33
	j	.LBB7_12.38
.LBB7_11.33:
	addi	a0, s1, 0
	.word	0x20a64533	# sh2add	a0, a2, a0
	lw	a1, 0(a0)
	addi	a0, s3, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	sw	zero, 0(a0)
	addiw	a2, a2, 1
	j	.LBB7_10.30
.LBB7_12.38:
	mv	a0, s9
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	ld	s10, 0(sp)
	ld	s0, 80(sp)
	ld	ra, 88(sp)
	addi	sp, sp, 96
	ret

	.globl	cnt
	.section	.bss
	.type	cnt, @object
cnt:
	.zero	4

	.globl	h
	.section	.bss
	.type	h, @object
h:
	.zero	4

	.globl	head
	.section	.bss
	.type	head, @object
head:
	.zero	4020

	.globl	inq
	.section	.bss
	.type	inq, @object
inq:
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
	.word	5005

	.globl	maxn
	.section	.data
	.type	maxn, @object
maxn:
	.word	1005

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

	.globl	next
	.section	.bss
	.type	next, @object
next:
	.zero	20020

	.globl	que
	.section	.bss
	.type	que, @object
que:
	.zero	4020

	.globl	tail
	.section	.bss
	.type	tail, @object
tail:
	.zero	4

	.globl	to
	.section	.bss
	.type	to, @object
to:
	.zero	20020

