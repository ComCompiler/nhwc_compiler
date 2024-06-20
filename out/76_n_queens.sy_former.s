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
	.globl	f
	.type	f, @function
f:
	addi	sp, sp, -112
	sd	ra, 104(sp)
	sd	s0, 96(sp)
	addi	s0, sp, 112
	sd	s1, 88(sp)
	sd	s2, 80(sp)
	sd	s3, 72(sp)
	sd	s4, 64(sp)
	sd	s5, 56(sp)
	sd	s6, 48(sp)
	sd	s7, 40(sp)
	sd	s8, 32(sp)
	sd	s9, 24(sp)
	sd	s10, 16(sp)
	sd	s11, 8(sp)
.Lf$ENTRY:
	mv	s10, a0
	la	s1, line2
	la	s3, line1
	la	s5, row
	la	a1, ans
	la	a2, n
	lw	s9, 0(a2)
	addw	s11, s9, s10
	addi	a1, a1, 0
	.word	0x20bd4bb3	# sh2add	s7, s10, a1
	addiw	a1, s10, 1
	# spill i32 %9
	sw	a1, 0(sp)
	li	a1, 1
.LBB1_2.7:
	mv	s8, a1
	bge	s9, s8, .LBB1_3.10
	j	.LBB1_10.30
.LBB1_3.10:
	addi	a1, s5, 0
	.word	0x20bc4b33	# sh2add	s6, s8, a1
	lw	a5, 0(s6)
	li	a4, 1
	addw	a2, s10, s8
	addi	a1, s3, 0
	.word	0x20b64a33	# sh2add	s4, a2, a1
	lw	a3, 0(s4)
	subw	a2, s11, s8
	addi	a1, s1, 0
	.word	0x20b64933	# sh2add	s2, a2, a1
	lw	a1, 0(s2)
	bne	a5, a4, .LBB1_4.20
	j	.LBB1_9.28
.LBB1_4.20:
	beq	a3, zero, .LBB1_5.22
	j	.LBB1_9.28
.LBB1_5.22:
	xori	a1, a1, 0
	sltu	a1, zero, a1
	xori	a1, a1, 1
	bne	a1, zero, .LBB1_6.25
	j	.LBB1_9.28
.LBB1_6.25:
	sw	s8, 0(s7)
	beq	s10, s9, .LBB1_7.26
	j	.LBB1_8.27
.LBB1_7.26:
	call	printans
.LBB1_8.27:
	li	a0, 1
	sw	a0, 0(s6)
	li	a0, 1
	sw	a0, 0(s4)
	li	a0, 1
	sw	a0, 0(s2)
	# reload i32 %9
	lw	a0, 0(sp)
	call	f
	sw	zero, 0(s6)
	sw	zero, 0(s4)
	sw	zero, 0(s2)
.LBB1_9.28:
	addiw	a1, s8, 1
	j	.LBB1_2.7
.LBB1_10.30:
	ld	s1, 88(sp)
	ld	s2, 80(sp)
	ld	s3, 72(sp)
	ld	s4, 64(sp)
	ld	s5, 56(sp)
	ld	s6, 48(sp)
	ld	s7, 40(sp)
	ld	s8, 32(sp)
	ld	s9, 24(sp)
	ld	s10, 16(sp)
	ld	s11, 8(sp)
	ld	s0, 96(sp)
	ld	ra, 104(sp)
	addi	sp, sp, 112
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
	la	s1, sum
	la	s2, n
	call	getint
	mv	s3, a0
.LBB2_2.2:
	blt	zero, s3, .LBB2_3.5
	j	.LBB2_4.8
.LBB2_3.5:
	call	getint
	sw	a0, 0(s2)
	li	a0, 1
	call	f
	addiw	s3, s3, -1
	j	.LBB2_2.2
.LBB2_4.8:
	lw	a0, 0(s1)
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.section	.text
	.align	4
	.globl	printans
	.type	printans, @function
printans:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
.Lprintans$ENTRY:
	la	s1, ans
	la	s2, n
	la	a1, sum
	lw	a2, 0(a1)
	addiw	a2, a2, 1
	sw	a2, 0(a1)
	li	s3, 1
.LBB3_2.3:
	lw	a1, 0(s2)
	bge	a1, s3, .LBB3_3.7
	j	.LBB3_6.15
.LBB3_3.7:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	call	putint
	lw	a0, 0(s2)
	beq	s3, a0, .LBB3_4.12
	j	.LBB3_5.13
.LBB3_4.12:
	li	a0, 10
	call	putch
	j	.LBB3_6.15
.LBB3_5.13:
	li	a0, 32
	call	putch
	addiw	s3, s3, 1
	j	.LBB3_2.3
.LBB3_6.15:
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.globl	ans
	.section	.bss
	.type	ans, @object
ans:
	.zero	200

	.globl	line1
	.section	.bss
	.type	line1, @object
line1:
	.zero	200

	.globl	line2
	.section	.bss
	.type	line2, @object
line2:
	.zero	400

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

	.globl	row
	.section	.bss
	.type	row, @object
row:
	.zero	200

	.globl	sum
	.section	.bss
	.type	sum, @object
sum:
	.zero	4

