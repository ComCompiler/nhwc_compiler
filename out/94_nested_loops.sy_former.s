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
	.globl	loop1
	.type	loop1, @function
loop1:
	addi	sp, sp, -96
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
.Lloop1$ENTRY:
	la	s1, arr1
	li	t0, 0
.LBB1_2.3:
	blt	t0, a0, .LBB1_3.6
	j	.LBB1_17.55
.LBB1_3.6:
	addi	a3, s1, 0
	li	a2, 5760
	mul	a2, t0, a2
	add	s2, a3, a2
	li	s11, 0
	blt	t0, a1, .LBB1_4.9
	j	.LBB1_17.55
.LBB1_4.9:
	li	a4, 2
	addi	a3, s2, 0
	li	a2, 2880
	mul	a2, s11, a2
	add	a7, a3, a2
	addw	t2, t0, s11
	li	s9, 0
	blt	s11, a4, .LBB1_5.14
	j	.LBB1_16.53
.LBB1_5.14:
	li	a4, 3
	addi	a3, a7, 0
	li	a2, 960
	mul	a2, s9, a2
	add	a6, a3, a2
	addw	t3, t2, s9
	li	s8, 0
	blt	s9, a4, .LBB1_6.19
	j	.LBB1_15.51
.LBB1_6.19:
	li	a4, 4
	addi	a3, a6, 0
	li	a2, 240
	mul	a2, s8, a2
	add	a5, a3, a2
	addw	t1, t3, s8
	li	s7, 0
	blt	s8, a4, .LBB1_7.24
	j	.LBB1_14.49
.LBB1_7.24:
	li	s3, 5
	addi	a3, a5, 0
	li	a2, 48
	mul	a2, s7, a2
	add	a4, a3, a2
	addw	s10, t1, s7
	li	s6, 0
	blt	s7, s3, .LBB1_8.29
	j	.LBB1_13.47
.LBB1_8.29:
	li	s3, 6
	addi	a2, a4, 0
	.word	0x20cb66b3
	addw	s5, s10, s6
	li	s4, 0
	blt	s6, s3, .LBB1_9.34
	j	.LBB1_12.45
.LBB1_9.34:
	li	a2, 2
	blt	s4, a2, .LBB1_10.37
	j	.LBB1_11.43
.LBB1_10.37:
	addi	a2, a3, 0
	.word	0x20ca4633	# sh2add	a2, s4, a2
	addw	s3, s4, s5
	addw	s3, s3, a0
	addw	s3, s3, a1
	sw	s3, 0(a2)
	addiw	s4, s4, 1
	j	.LBB1_9.34
.LBB1_11.43:
	addiw	s6, s6, 1
	j	.LBB1_8.29
.LBB1_12.45:
	addiw	s7, s7, 1
	j	.LBB1_7.24
.LBB1_13.47:
	addiw	s8, s8, 1
	j	.LBB1_6.19
.LBB1_14.49:
	addiw	s9, s9, 1
	j	.LBB1_5.14
.LBB1_15.51:
	addiw	s11, s11, 1
	j	.LBB1_4.9
.LBB1_16.53:
	addiw	t0, t0, 1
	j	.LBB1_2.3
.LBB1_17.55:
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
	addi	sp, sp, 96
	ret

	.section	.text
	.align	4
	.globl	loop2
	.type	loop2, @function
loop2:
	addi	sp, sp, -96
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
.Lloop2$ENTRY:
	la	a7, arr2
	li	s10, 0
.LBB2_2.1:
	li	a3, 10
	addi	a2, a7, 0
	li	a1, 10752
	mul	a1, s10, a1
	add	s1, a2, a1
	li	s9, 0
	blt	s10, a3, .LBB2_3.5
	j	.LBB2_16.46
.LBB2_3.5:
	li	a3, 2
	addi	a2, s1, 0
	li	a1, 5376
	mul	a1, s9, a1
	add	a6, a2, a1
	addw	s11, s10, s9
	li	s7, 0
	blt	s9, a3, .LBB2_4.10
	j	.LBB2_15.44
.LBB2_4.10:
	li	a3, 3
	addi	a2, a6, 0
	li	a1, 1792
	mul	a1, s7, a1
	add	a5, a2, a1
	li	s6, 0
	blt	s7, a3, .LBB2_5.14
	j	.LBB2_14.42
.LBB2_5.14:
	li	a3, 2
	addi	a2, a5, 0
	li	a1, 896
	mul	a1, s6, a1
	add	a4, a2, a1
	addw	s8, s11, s6
	li	s5, 0
	blt	s6, a3, .LBB2_6.19
	j	.LBB2_13.40
.LBB2_6.19:
	li	s2, 4
	addi	a2, a4, 0
	li	a1, 224
	mul	a1, s5, a1
	add	a3, a2, a1
	li	s4, 0
	blt	s5, s2, .LBB2_7.23
	j	.LBB2_12.38
.LBB2_7.23:
	li	s2, 8
	addi	a2, a3, 0
	li	a1, 28
	mul	a1, s4, a1
	add	a2, a2, a1
	li	s3, 0
	blt	s4, s2, .LBB2_8.27
	j	.LBB2_11.36
.LBB2_8.27:
	li	a1, 7
	blt	s3, a1, .LBB2_9.30
	j	.LBB2_10.34
.LBB2_9.30:
	addi	a1, a2, 0
	.word	0x20b9c5b3	# sh2add	a1, s3, a1
	addw	s2, s8, s3
	sw	s2, 0(a1)
	addiw	s3, s3, 1
	j	.LBB2_8.27
.LBB2_10.34:
	addiw	s4, s4, 1
	j	.LBB2_7.23
.LBB2_11.36:
	addiw	s5, s5, 1
	j	.LBB2_6.19
.LBB2_12.38:
	addiw	s6, s6, 1
	j	.LBB2_5.14
.LBB2_13.40:
	addiw	s7, s7, 1
	j	.LBB2_4.10
.LBB2_14.42:
	addiw	s9, s9, 1
	j	.LBB2_3.5
.LBB2_15.44:
	addiw	s10, s10, 1
	j	.LBB2_2.1
.LBB2_16.46:
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
	addi	sp, sp, 96
	ret

	.section	.text
	.align	4
	.globl	loop3
	.type	loop3, @function
loop3:
	addi	sp, sp, -144
	sd	s1, 136(sp)
	sd	s2, 128(sp)
	sd	s3, 120(sp)
	sd	s4, 112(sp)
	sd	s5, 104(sp)
	sd	s6, 96(sp)
	sd	s7, 88(sp)
	sd	s8, 80(sp)
	sd	s9, 72(sp)
	sd	s10, 64(sp)
	sd	s11, 56(sp)
.Lloop3$ENTRY:
	la	s11, arr2
	la	t1, arr1
	li	s4, 0
	li	s2, 0
.LBB3_2.8:
	# spill i32 %2
	sw	s2, 0(sp)
	li	s6, 10
	addi	s1, t1, 0
	li	a7, 5760
	mul	a7, s2, a7
	add	t2, s1, a7
	addi	s1, s11, 0
	li	a7, 10752
	mul	a7, s2, a7
	add	t0, s1, a7
	mv	s5, s4
	li	s3, 0
	mv	a7, s4
	blt	s2, s6, .LBB3_3.14
	j	.LBB3_16.82
.LBB3_3.14:
	# spill i32 %13
	sw	s3, 4(sp)
	li	s6, 100
	addi	s1, t2, 0
	li	a7, 2880
	mul	a7, s3, a7
	add	s10, s1, a7
	addi	s1, t0, 0
	li	a7, 5376
	mul	a7, s3, a7
	add	s9, s1, a7
	mv	t3, s5
	li	s2, 0
	mv	s4, s5
	blt	s3, s6, .LBB3_4.20
	j	.LBB3_15.78
.LBB3_4.20:
	# spill i32 %22
	sw	s2, 8(sp)
	li	s6, 1000
	addi	s1, s10, 0
	li	a7, 960
	mul	a7, s2, a7
	add	s8, s1, a7
	addi	s1, s9, 0
	li	a7, 1792
	mul	a7, s2, a7
	add	s7, s1, a7
	mv	s4, t3
	li	s3, 0
	mv	s5, t3
	blt	s2, s6, .LBB3_5.26
	j	.LBB3_14.74
.LBB3_5.26:
	# spill i32 %31
	sw	s3, 12(sp)
	li	t4, 10000
	addi	s1, s8, 0
	li	a7, 240
	mul	a7, s3, a7
	add	s6, s1, a7
	addi	s1, s7, 0
	li	a7, 896
	mul	a7, s3, a7
	add	s5, s1, a7
	li	s2, 0
	mv	t3, s4
	blt	s3, t4, .LBB3_6.32
	j	.LBB3_13.70
.LBB3_6.32:
	# spill i32 %40
	sw	s2, 32(sp)
	mv	t4, s4
	li	t3, 100000
	addi	s1, s6, 0
	li	a7, 48
	mul	a7, s2, a7
	add	s4, s1, a7
	addi	s1, s5, 0
	li	a7, 224
	mul	a7, s2, a7
	add	s3, s1, a7
	li	s1, 0
	mv	a7, t4
	blt	s2, t3, .LBB3_7.38
	j	.LBB3_12.66
.LBB3_7.38:
	mv	t3, s1
	# spill i32 %49
	sw	t3, 40(sp)
	mv	t5, t4
	li	t4, 1000000
	# spill i32 %50
	sw	t4, 16(sp)
	addi	a7, s4, 0
	.word	0x211e6933
	addi	s1, s3, 0
	li	a7, 28
	mul	a7, t3, a7
	add	s1, s1, a7
	mv	t6, t5
	li	a7, 0
	blt	t3, t4, .LBB3_8.44
	j	.LBB3_11.62
.LBB3_8.44:
	# spill i32 %57
	sw	a7, 36(sp)
	mv	t4, t6
	li	t3, 10000000
	# spill i32 %58
	sw	t3, 20(sp)
	blt	a7, t3, .LBB3_9.48
	j	.LBB3_10.58
.LBB3_9.48:
	li	t3, 817
	# spill i32 %61
	sw	t3, 24(sp)
	li	a7, -1603384363
	mul	a7, a7, t4
	srai	t5, a7, 32
	addw	t5, t5, t4
	sraiw	t5, t5, 9
	srliw	a7, t5, 31
	# spill i32 %64
	sw	a7, 28(sp)
	addw	t5, t5, a7
	mulw	t5, t5, t3
	subw	t4, t4, t5
	addi	a7, s1, 0
	# reload i32 %57
	lw	t3, 36(sp)
	.word	0x211e48b3	# sh2add	a7, t3, a7
	lw	a7, 0(a7)
	addw	t4, a7, t4
	addi	a7, s2, 0
	.word	0x211e48b3	# sh2add	a7, t3, a7
	lw	a7, 0(a7)
	addw	t4, t4, a7
	addiw	a7, t3, 1
	mv	t6, t4
	bge	a7, a6, .LBB3_10.58
	j	.LBB3_8.44
.LBB3_10.58:
	# reload i32 %49
	lw	a7, 40(sp)
	addiw	s1, a7, 1
	mv	t5, t4
	bge	s1, a5, .LBB3_11.62
	j	.LBB3_7.38
.LBB3_11.62:
	mv	s4, t5
	# reload i32 %40
	lw	a7, 32(sp)
	addiw	s2, a7, 1
	mv	a7, s4
	bge	s2, a4, .LBB3_12.66
	j	.LBB3_6.32
.LBB3_12.66:
	mv	s4, a7
	# reload i32 %31
	lw	a7, 12(sp)
	addiw	s3, a7, 1
	mv	t3, s4
	bge	s3, a3, .LBB3_13.70
	j	.LBB3_5.26
.LBB3_13.70:
	# reload i32 %22
	lw	a7, 8(sp)
	addiw	s2, a7, 1
	mv	s5, t3
	bge	s2, a2, .LBB3_14.74
	j	.LBB3_4.20
.LBB3_14.74:
	# reload i32 %13
	lw	a7, 4(sp)
	addiw	s3, a7, 1
	mv	s4, s5
	bge	s3, a1, .LBB3_15.78
	j	.LBB3_3.14
.LBB3_15.78:
	# reload i32 %2
	lw	a7, 0(sp)
	addiw	s2, a7, 1
	mv	a7, s4
	bge	s2, a0, .LBB3_16.82
	j	.LBB3_2.8
.LBB3_16.82:
	mv	a0, a7
	ld	s1, 136(sp)
	ld	s2, 128(sp)
	ld	s3, 120(sp)
	ld	s4, 112(sp)
	ld	s5, 104(sp)
	ld	s6, 96(sp)
	ld	s7, 88(sp)
	ld	s8, 80(sp)
	ld	s9, 72(sp)
	ld	s10, 64(sp)
	ld	s11, 56(sp)
	addi	sp, sp, 144
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
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
.Lmain$ENTRY:
	call	getint
	mv	s9, a0
	call	getint
	mv	s8, a0
	call	getint
	mv	s7, a0
	call	getint
	mv	s6, a0
	call	getint
	mv	s5, a0
	call	getint
	mv	s4, a0
	call	getint
	mv	s3, a0
	call	getint
	mv	s2, a0
	call	getint
	mv	s1, a0
	mv	a0, s9
	mv	a1, s8
	call	loop1
	call	loop2
	mv	a0, s7
	mv	a1, s6
	mv	a2, s5
	mv	a3, s4
	mv	a4, s3
	mv	a5, s2
	mv	a6, s1
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
	tail	loop3

	.globl	arr1
	.section	.bss
	.type	arr1, @object
arr1:
	.zero	57600

	.globl	arr2
	.section	.bss
	.type	arr2, @object
arr2:
	.zero	107520

