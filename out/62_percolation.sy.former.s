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
	.globl	findfa
	.type	findfa, @function
findfa:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
.Lfindfa$ENTRY:
	la	a1, array
	addi	a1, a1, 0
	.word	0x20b544b3	# sh2add	s1, a0, a1
	lw	a1, 0(s1)
	beq	a1, a0, .LBB1_3.7
.LBB1_2.5:
	mv	a0, a1
	call	findfa
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
	la	a2, array
	mulw	a1, a0, a0
	addiw	a5, a1, 1
	li	a4, 1
.LBB2_2.4:
	bge	a5, a4, .LBB2_3.7
	j	.LBB2_4.10
.LBB2_3.7:
	addi	a1, a2, 0
	.word	0x20b745b3	# sh2add	a1, a4, a1
	li	a3, -1
	sw	a3, 0(a1)
	addiw	a4, a4, 1
	j	.LBB2_2.4
.LBB2_4.10:
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
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
.Lmain$ENTRY:
	la	s1, n
	la	s2, array
	li	a0, 4
	slliw	a0, a0, 2
	addiw	s5, a0, 1
	addi	a0, s2, 0
	.word	0x20aac9b3	# sh2add	s3, s5, a0
	li	s4, 1
.LBB3_2.5:
	mv	s6, s4
	bne	s6, zero, .LBB3_3.8
	j	.LBB3_29.78
.LBB3_3.8:
	li	a0, 4
	sw	a0, 0(s1)
	li	a0, 4
	call	init
	li	a1, 0
	li	a0, 0
.LBB3_4.9:
	mv	s4, a0
	mv	s8, a1
	li	a1, 10
	xori	a0, s8, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	# spill i32 %18
	sw	a0, 0(sp)
	blt	s4, a1, .LBB3_5.15
	j	.LBB3_27.75
.LBB3_5.15:
	call	getint
	mv	s9, a0
	call	getint
	mv	s11, a0
	lw	s10, 0(s1)
	addiw	s7, s4, 1
	mv	a1, s8
	# reload i32 %18
	lw	a0, 0(sp)
	bne	a0, zero, .LBB3_6.20
	j	.LBB3_26.73
.LBB3_6.20:
	addiw	a0, s9, -1
	mulw	a0, s10, a0
	addw	s4, a0, s11
	addi	a0, s2, 0
	.word	0x20aa4533	# sh2add	a0, s4, a0
	sw	s4, 0(a0)
	li	a0, 1
	beq	s9, a0, .LBB3_7.26
	j	.LBB3_8.27
.LBB3_7.26:
	sw	zero, 0(s2)
	mv	a0, s4
	li	a1, 0
	call	mmerge
.LBB3_8.27:
	beq	s9, s10, .LBB3_9.29
	j	.LBB3_10.30
.LBB3_9.29:
	sw	s5, 0(s3)
	mv	a0, s4
	mv	a1, s5
	call	mmerge
.LBB3_10.30:
	addiw	a1, s4, 1
	addi	a0, s2, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a2, 0(a0)
	blt	s11, s10, .LBB3_11.35
	j	.LBB3_13.38
.LBB3_11.35:
	li	a0, -1
	bne	a2, a0, .LBB3_12.37
	j	.LBB3_13.38
.LBB3_12.37:
	mv	a0, s4
	call	mmerge
.LBB3_13.38:
	li	a3, 1
	addiw	a1, s4, -1
	addi	a0, s2, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a2, 0(a0)
	blt	a3, s11, .LBB3_14.43
	j	.LBB3_16.46
.LBB3_14.43:
	li	a0, -1
	bne	a2, a0, .LBB3_15.45
	j	.LBB3_16.46
.LBB3_15.45:
	mv	a0, s4
	call	mmerge
.LBB3_16.46:
	addw	a1, s4, s10
	addi	a0, s2, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a2, 0(a0)
	blt	s9, s10, .LBB3_17.51
	j	.LBB3_19.54
.LBB3_17.51:
	li	a0, -1
	bne	a2, a0, .LBB3_18.53
	j	.LBB3_19.54
.LBB3_18.53:
	mv	a0, s4
	call	mmerge
.LBB3_19.54:
	li	a3, 1
	subw	a1, s4, s10
	addi	a0, s2, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a2, 0(a0)
	blt	a3, s9, .LBB3_20.59
	j	.LBB3_22.62
.LBB3_20.59:
	li	a0, -1
	bne	a2, a0, .LBB3_21.61
	j	.LBB3_22.62
.LBB3_21.61:
	mv	a0, s4
	call	mmerge
.LBB3_22.62:
	lw	a3, 0(s2)
	li	a0, -1
	lw	a2, 0(s3)
	mv	a1, s8
	bne	a3, a0, .LBB3_23.66
	j	.LBB3_26.73
.LBB3_23.66:
	li	a0, -1
	mv	a1, s8
	bne	a2, a0, .LBB3_24.68
	j	.LBB3_26.73
.LBB3_24.68:
	li	a0, 0
	call	findfa
	mv	s4, a0
	mv	a0, s5
	call	findfa
	mv	a1, s8
	beq	s4, a0, .LBB3_25.72
	j	.LBB3_26.73
.LBB3_25.72:
	mv	a0, s7
	call	putint
	li	a0, 10
	call	putch
	li	a1, 1
.LBB3_26.73:
	mv	a0, s7
	j	.LBB3_4.9
.LBB3_27.75:
	addiw	s4, s6, -1
	# reload i32 %18
	lw	a0, 0(sp)
	bne	a0, zero, .LBB3_28.77
	j	.LBB3_2.5
.LBB3_28.77:
	li	a0, -1
	call	putint
	li	a0, 10
	call	putch
	j	.LBB3_2.5
.LBB3_29.78:
	mv	a0, zero
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
	.globl	mmerge
	.type	mmerge, @function
mmerge:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
.Lmmerge$ENTRY:
	mv	s2, a1
	la	s1, array
	call	findfa
	mv	s3, a0
	mv	a0, s2
	call	findfa
	bne	s3, a0, .LBB4_2.6
	j	.LBB4_3.8
.LBB4_2.6:
	addi	a1, s1, 0
	.word	0x20b9c5b3	# sh2add	a1, s3, a1
	sw	a0, 0(a1)
.LBB4_3.8:
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.globl	array
	.section	.bss
	.type	array, @object
array:
	.zero	440

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

