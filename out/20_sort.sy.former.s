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
	la	s1, c
	la	s2, b
	la	s3, a
	la	s5, n
	call	quick_read
	mv	s4, a0
	sw	s4, 0(s5)
	li	s5, 0
.LBB1_2.2:
	bne	s5, s4, .LBB1_3.5
	j	.LBB1_4.11
.LBB1_3.5:
	call	quick_read
	addi	a1, s3, 0
	.word	0x20bac5b3	# sh2add	a1, s5, a1
	sw	a0, 0(a1)
	addi	a1, s2, 0
	.word	0x20bac5b3	# sh2add	a1, s5, a1
	sw	a0, 0(a1)
	addi	a1, s1, 0
	.word	0x20bac5b3	# sh2add	a1, s5, a1
	sw	a0, 0(a1)
	addiw	s5, s5, 1
	j	.LBB1_2.2
.LBB1_4.11:
	addi	a0, s3, 0
	call	sortA
	addi	a0, s2, 0
	call	sortB
	addi	a0, s1, 0
	call	sortC
	li	a4, 0
.LBB1_5.15:
	subw	a0, s4, a4
	li	a2, 0
	bne	a0, zero, .LBB1_6.19
	j	.LBB1_7.31
.LBB1_6.19:
	addi	a0, s2, 0
	.word	0x20a745b3	# sh2add	a1, a4, a0
	lw	a3, 0(a1)
	addi	a0, s3, 0
	.word	0x20a74533	# sh2add	a0, a4, a0
	lw	a2, 0(a0)
	subw	a0, a3, a2
	sw	a0, 0(a1)
	addi	a0, s1, 0
	.word	0x20a74533	# sh2add	a0, a4, a0
	lw	a1, 0(a0)
	addw	a1, a1, a2
	subw	a1, a1, a3
	subw	a1, a1, a2
	sw	a1, 0(a0)
	addiw	a4, a4, 1
	j	.LBB1_5.15
.LBB1_7.31:
	subw	a1, a2, s4
	li	a0, -123
	bne	a1, zero, .LBB1_8.35
	j	.LBB1_11.45
.LBB1_8.35:
	addi	a0, s2, 0
	.word	0x20a64533	# sh2add	a0, a2, a0
	lw	a1, 0(a0)
	li	a0, 1
	bne	a1, zero, .LBB1_11.45
.LBB1_9.39:
	addi	a0, s1, 0
	.word	0x20a64533	# sh2add	a0, a2, a0
	lw	a1, 0(a0)
	li	a0, 2
	bne	a1, zero, .LBB1_11.45
.LBB1_10.43:
	addiw	a2, a2, 1
	j	.LBB1_7.31
.LBB1_11.45:
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	ld	s4, 16(sp)
	ld	s5, 8(sp)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
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
.LBB2_2.2:
	li	a1, 48
	blt	a0, a1, .LBB2_4.8
.LBB2_3.6:
	li	a1, 57
	mv	s3, a0
	li	s1, 0
	blt	a1, a0, .LBB2_4.8
	j	.LBB2_7.14
.LBB2_4.8:
	li	a1, 45
	beq	a0, a1, .LBB2_5.10
	j	.LBB2_6.11
.LBB2_5.10:
	li	s2, 1
.LBB2_6.11:
	call	getch
	j	.LBB2_2.2
.LBB2_7.14:
	li	a0, 48
	bge	s3, a0, .LBB2_8.18
	j	.LBB2_10.25
.LBB2_8.18:
	li	a0, 57
	bge	a0, s3, .LBB2_9.20
	j	.LBB2_10.25
.LBB2_9.20:
	call	getch
	li	a1, 10
	mulw	a1, s1, a1
	addw	a1, s3, a1
	addiw	s1, a1, -48
	mv	s3, a0
	j	.LBB2_7.14
.LBB2_10.25:
	bne	s2, zero, .LBB2_11.27
	j	.LBB2_12.29
.LBB2_11.27:
	subw	s1, zero, s1
.LBB2_12.29:
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
	.globl	sortA
	.type	sortA, @function
sortA:
.LsortA$ENTRY:
	la	a1, n
	lw	a7, 0(a1)
	li	a6, 0
.LBB3_2.3:
	blt	a6, a7, .LBB3_3.6
	j	.LBB3_8.20
.LBB3_3.6:
	.word	0x20a84633	# sh2add	a2, a6, a0
	addiw	a6, a6, 1
	mv	a5, a6
.LBB3_4.9:
	blt	a5, a7, .LBB3_5.12
	j	.LBB3_2.3
.LBB3_5.12:
	lw	a4, 0(a2)
	.word	0x20a7c5b3	# sh2add	a1, a5, a0
	lw	a3, 0(a1)
	blt	a3, a4, .LBB3_6.17
	j	.LBB3_7.18
.LBB3_6.17:
	sw	a3, 0(a2)
	sw	a4, 0(a1)
.LBB3_7.18:
	addiw	a5, a5, 1
	j	.LBB3_4.9
.LBB3_8.20:
	ret

	.section	.text
	.align	4
	.globl	sortB
	.type	sortB, @function
sortB:
	addi	sp, sp, -16
	sd	s1, 8(sp)
.LsortB$ENTRY:
	la	a2, cnt
	la	a1, n
	lw	s1, 0(a1)
	li	a6, -100
	li	a7, 0
.LBB4_2.3:
	li	a3, 0
	li	a5, 0
	blt	a7, s1, .LBB4_3.7
	j	.LBB4_6.18
.LBB4_3.7:
	.word	0x20a8c5b3	# sh2add	a1, a7, a0
	lw	a4, 0(a1)
	addi	a1, a2, 0
	.word	0x20b745b3	# sh2add	a1, a4, a1
	lw	a3, 0(a1)
	addiw	a3, a3, 1
	sw	a3, 0(a1)
	blt	a6, a4, .LBB4_4.14
	j	.LBB4_5.15
.LBB4_4.14:
	mv	a6, a4
.LBB4_5.15:
	addiw	a7, a7, 1
	j	.LBB4_2.3
.LBB4_6.18:
	bge	a6, a5, .LBB4_7.22
	j	.LBB4_11.35
.LBB4_7.22:
	addi	a1, a2, 0
	.word	0x20b7c5b3	# sh2add	a1, a5, a1
	lw	a4, 0(a1)
.LBB4_8.25:
	bne	a4, zero, .LBB4_9.29
	j	.LBB4_10.33
.LBB4_9.29:
	.word	0x20a6c5b3	# sh2add	a1, a3, a0
	sw	a5, 0(a1)
	addiw	a3, a3, 1
	addiw	a4, a4, -1
	j	.LBB4_8.25
.LBB4_10.33:
	addiw	a5, a5, 1
	j	.LBB4_6.18
.LBB4_11.35:
	ld	s1, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	sortC
	.type	sortC, @function
sortC:
	addi	sp, sp, -16
	sd	s1, 8(sp)
.LsortC$ENTRY:
	la	a1, n
	lw	s1, 0(a1)
	li	a7, 0
.LBB5_2.3:
	blt	a7, s1, .LBB5_3.6
	j	.LBB5_9.25
.LBB5_3.6:
	addiw	a6, a7, 1
	mv	a5, a6
	mv	a3, a7
.LBB5_4.8:
	.word	0x20a6c633	# sh2add	a2, a3, a0
	lw	a4, 0(a2)
	blt	a5, s1, .LBB5_5.14
	j	.LBB5_8.22
.LBB5_5.14:
	.word	0x20a7c5b3	# sh2add	a1, a5, a0
	lw	a1, 0(a1)
	blt	a1, a4, .LBB5_6.18
	j	.LBB5_7.19
.LBB5_6.18:
	mv	a3, a5
.LBB5_7.19:
	addiw	a5, a5, 1
	j	.LBB5_4.8
.LBB5_8.22:
	.word	0x20a8c5b3	# sh2add	a1, a7, a0
	lw	a3, 0(a1)
	sw	a4, 0(a1)
	sw	a3, 0(a2)
	mv	a7, a6
	j	.LBB5_2.3
.LBB5_9.25:
	ld	s1, 8(sp)
	addi	sp, sp, 16
	ret

	.globl	a
	.section	.bss
	.type	a, @object
a:
	.zero	400020

	.globl	b
	.section	.bss
	.type	b, @object
b:
	.zero	400020

	.globl	c
	.section	.bss
	.type	c, @object
c:
	.zero	400020

	.globl	cnt
	.section	.bss
	.type	cnt, @object
cnt:
	.zero	1600080

	.globl	maxn
	.section	.data
	.type	maxn, @object
maxn:
	.word	100005

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

	.globl	x
	.section	.bss
	.type	x, @object
x:
	.zero	400020

