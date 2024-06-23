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
	beq	a1, a0, .LBB1_3.7
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
	.globl	init
	.type	init, @function
init:
.Linit$ENTRY:
	la	a2, fa
	la	a1, n
	lw	a4, 0(a1)
	li	a3, 1
.LBB2_2.2:
	bge	a4, a3, .LBB2_3.5
	j	.LBB2_4.8
.LBB2_3.5:
	addi	a1, a2, 0
	.word	0x20b6c5b3	# sh2add	a1, a3, a1
	sw	a3, 0(a1)
	addiw	a3, a3, 1
	j	.LBB2_2.2
.LBB2_4.8:
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
.Lmain$ENTRY:
	la	s1, fa
	la	s2, m
	la	s3, n
	call	quick_read
	sw	a0, 0(s3)
	call	quick_read
	sw	a0, 0(s2)
	call	init
.LBB3_2.3:
	lw	a0, 0(s2)
	bne	a0, zero, .LBB3_3.6
	j	.LBB3_11.30
.LBB3_3.6:
	call	getch
.LBB3_4.8:
	li	a1, 81
	bne	a0, a1, .LBB3_5.11
	j	.LBB3_7.15
.LBB3_5.11:
	li	a1, 85
	bne	a0, a1, .LBB3_6.13
	j	.LBB3_7.15
.LBB3_6.13:
	call	getch
	j	.LBB3_4.8
.LBB3_7.15:
	li	a1, 81
	beq	a0, a1, .LBB3_8.17
	j	.LBB3_9.21
.LBB3_8.17:
	call	quick_read
	mv	s3, a0
	call	quick_read
	mv	a1, a0
	mv	a0, s3
	call	same
	call	putint
	li	a0, 10
	call	putch
	j	.LBB3_10.27
.LBB3_9.21:
	call	quick_read
	call	find
	mv	s3, a0
	call	quick_read
	call	find
	addi	a1, s1, 0
	.word	0x20b9c5b3	# sh2add	a1, s3, a1
	sw	a0, 0(a1)
.LBB3_10.27:
	lw	a0, 0(s2)
	addiw	a0, a0, -1
	sw	a0, 0(s2)
	j	.LBB3_2.3
.LBB3_11.30:
	mv	a0, zero
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
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
	mulw	a1, s1, a1
	addw	a1, s3, a1
	addiw	s1, a1, -48
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

	.globl	fa
	.section	.bss
	.type	fa, @object
fa:
	.zero	400020

	.globl	m
	.section	.bss
	.type	m, @object
m:
	.zero	4

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

