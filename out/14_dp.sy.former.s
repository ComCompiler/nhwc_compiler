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
	addi	sp, sp, -80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	addi	s0, sp, 80
	sd	s1, 56(sp)
	sd	s2, 48(sp)
	sd	s3, 40(sp)
	sd	s4, 32(sp)
	sd	s5, 24(sp)
	sd	s6, 16(sp)
	sd	s7, 8(sp)
	sd	s8, 0(sp)
.Lmain$ENTRY:
	la	s1, t
	la	s2, dp
	call	getint
	mv	s5, a0
	call	getint
	mv	s4, a0
	addi	a1, s2, 0
	li	a0, 140
	mul	a0, s5, a0
	add	s3, a1, a0
	li	s6, 1
.LBB1_2.4:
	li	a7, 1
	bge	s5, s6, .LBB1_3.7
	j	.LBB1_4.22
.LBB1_3.7:
	call	getint
	li	a3, 2
	li	a1, -2147483647
	mul	a1, a1, a0
	srai	a2, a1, 32
	addw	a2, a2, a0
	srliw	a1, a2, 31
	addw	a2, a2, a1
	mulw	a2, a2, a3
	subw	a1, a0, a2
	addi	a0, s1, 0
	.word	0x20ab6633
	addi	a0, a2, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	li	a1, 1
	sw	a1, 0(a0)
	addiw	a3, s6, -1
	addi	a1, s2, 0
	li	a0, 140
	mul	a0, a3, a0
	add	a0, a1, a0
	lw	a3, 0(a0)
	addi	a1, s2, 0
	li	a0, 140
	mul	a0, s6, a0
	add	a0, a1, a0
	lw	a1, 4(a2)
	addw	a1, a3, a1
	sw	a1, 0(a0)
	addiw	s6, s6, 1
	j	.LBB1_2.4
.LBB1_4.22:
	addiw	a2, a7, -1
	addi	a1, s2, 0
	li	a0, 140
	mul	a0, a2, a0
	add	a4, a1, a0
	addi	a0, s1, 0
	.word	0x20a8e6b3
	addi	a1, s2, 0
	li	a0, 140
	mul	a0, a7, a0
	add	a2, a1, a0
	li	s8, 1
	li	a0, 0
	li	a5, 0
	bge	s5, a7, .LBB1_5.29
	j	.LBB1_10.50
.LBB1_5.29:
	bge	s4, s8, .LBB1_6.32
	j	.LBB1_9.48
.LBB1_6.32:
	addi	a0, a2, 0
	.word	0x20ac45b3	# sh2add	a1, s8, a0
	addiw	a5, s8, -1
	addi	a0, a4, 0
	.word	0x20a7c533	# sh2add	a0, a5, a0
	lw	s7, 0(a0)
	addiw	s6, s8, 1
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s6
	srai	a5, a0, 32
	addw	a5, a5, s6
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	a5, s6, a5
	addi	a0, a3, 0
	.word	0x20a7c533	# sh2add	a0, a5, a0
	lw	a6, 0(a0)
	addw	a5, s7, a6
	addi	a0, a4, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	a0, 0(a0)
	addw	a0, a0, a6
	blt	a5, a0, .LBB1_7.46
	j	.LBB1_8.47
.LBB1_7.46:
	sw	a0, 0(a1)
	mv	s8, s6
	j	.LBB1_5.29
.LBB1_8.47:
	sw	a5, 0(a1)
	mv	s8, s6
	j	.LBB1_5.29
.LBB1_9.48:
	addiw	a7, a7, 1
	j	.LBB1_4.22
.LBB1_10.50:
	bge	s4, a5, .LBB1_11.54
	j	.LBB1_14.62
.LBB1_11.54:
	addi	a1, s3, 0
	.word	0x20b7c5b3	# sh2add	a1, a5, a1
	lw	a1, 0(a1)
	blt	a0, a1, .LBB1_12.58
	j	.LBB1_13.59
.LBB1_12.58:
	mv	a0, a1
.LBB1_13.59:
	addiw	a5, a5, 1
	j	.LBB1_10.50
.LBB1_14.62:
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s3, 40(sp)
	ld	s4, 32(sp)
	ld	s5, 24(sp)
	ld	s6, 16(sp)
	ld	s7, 8(sp)
	ld	s8, 0(sp)
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret

	.globl	dp
	.section	.bss
	.type	dp, @object
dp:
	.zero	140700

	.globl	t
	.section	.bss
	.type	t, @object
t:
	.zero	8040

