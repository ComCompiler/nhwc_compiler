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
	addi	sp, sp, -160
	sd	ra, 152(sp)
	sd	s0, 144(sp)
	addi	s0, sp, 160
	sd	s1, 136(sp)
	sd	s2, 128(sp)
	sd	s3, 120(sp)
	sd	s4, 112(sp)
	sd	s5, 104(sp)
.Lmain$ENTRY:
	call	getint
	addi	s2, sp, 0
	mv	s4, a0
.LBB1_2.4:
	li	s3, 0
	blt	zero, s4, .LBB1_3.7
	j	.LBB1_11.27
.LBB1_3.7:
	li	a2, 5
	addi	a1, sp, 0
	li	a0, 20
	mul	a0, s3, a0
	add	s1, a1, a0
	li	s5, 0
	blt	s3, a2, .LBB1_4.11
	j	.LBB1_7.20
.LBB1_4.11:
	li	a0, 5
	blt	s5, a0, .LBB1_5.14
	j	.LBB1_6.18
.LBB1_5.14:
	call	getint
	addi	a1, s1, 0
	.word	0x20bac5b3	# sh2add	a1, s5, a1
	sw	a0, 0(a1)
	addiw	s5, s5, 1
	j	.LBB1_4.11
.LBB1_6.18:
	addiw	s3, s3, 1
	j	.LBB1_3.7
.LBB1_7.20:
	mv	a0, s2
	call	model
	bne	a0, zero, .LBB1_8.23
	j	.LBB1_9.24
.LBB1_8.23:
	li	a0, 99
	call	putch
	li	a0, 97
	call	putch
	li	a0, 116
	call	putch
	li	a0, 10
	call	putch
	j	.LBB1_10.25
.LBB1_9.24:
	li	a0, 100
	call	putch
	li	a0, 111
	call	putch
	li	a0, 103
	call	putch
	li	a0, 10
	call	putch
.LBB1_10.25:
	addiw	s4, s4, -1
	j	.LBB1_2.4
.LBB1_11.27:
	mv	a0, zero
	ld	s1, 136(sp)
	ld	s2, 128(sp)
	ld	s3, 120(sp)
	ld	s4, 112(sp)
	ld	s5, 104(sp)
	ld	s0, 144(sp)
	ld	ra, 152(sp)
	addi	sp, sp, 160
	ret

	.section	.text
	.align	4
	.globl	model
	.type	model, @function
model:
	addi	sp, sp, -192
	sd	ra, 184(sp)
	sd	s0, 176(sp)
	addi	s0, sp, 192
	sd	s1, 168(sp)
	sd	s2, 160(sp)
	sd	s3, 152(sp)
	sd	s4, 144(sp)
	sd	s5, 136(sp)
	sd	s6, 128(sp)
	sd	s7, 120(sp)
	sd	s8, 112(sp)
	sd	s9, 104(sp)
	sd	s10, 96(sp)
	sd	s11, 88(sp)
.Lmodel$ENTRY:
	lw	a1, 0(a0)
	# spill i32 %5
	sw	a1, 0(sp)
	lw	a1, 4(a0)
	# spill i32 %8
	sw	a1, 4(sp)
	lw	a1, 8(a0)
	# spill i32 %11
	sw	a1, 8(sp)
	lw	a1, 12(a0)
	# spill i32 %14
	sw	a1, 12(sp)
	lw	s3, 16(a0)
	lw	s4, 20(a0)
	lw	a1, 24(a0)
	# spill i32 %24
	sw	a1, 16(sp)
	lw	a1, 28(a0)
	# spill i32 %27
	sw	a1, 20(sp)
	lw	s5, 32(a0)
	lw	a1, 36(a0)
	# spill i32 %33
	sw	a1, 24(sp)
	lw	a1, 40(a0)
	# spill i32 %37
	sw	a1, 28(sp)
	lw	a1, 44(a0)
	# spill i32 %40
	sw	a1, 32(sp)
	lw	a1, 48(a0)
	# spill i32 %43
	sw	a1, 36(sp)
	lw	a1, 52(a0)
	# spill i32 %46
	sw	a1, 40(sp)
	lw	s2, 56(a0)
	lw	a1, 60(a0)
	# spill i32 %53
	sw	a1, 44(sp)
	lw	a1, 64(a0)
	# spill i32 %56
	sw	a1, 48(sp)
	lw	a1, 68(a0)
	# spill i32 %59
	sw	a1, 52(sp)
	lw	a1, 72(a0)
	# spill i32 %62
	sw	a1, 56(sp)
	lw	a1, 76(a0)
	# spill i32 %65
	sw	a1, 60(sp)
	lw	s1, 80(a0)
	lw	a1, 84(a0)
	# spill i32 %72
	sw	a1, 64(sp)
	lw	a1, 88(a0)
	# spill i32 %75
	sw	a1, 68(sp)
	lw	a1, 92(a0)
	# spill i32 %78
	sw	a1, 72(sp)
	lw	a0, 96(a0)
	# spill i32 %81
	sw	a0, 76(sp)
	li	a1, 116
	# reload i32 %56
	lw	a0, 48(sp)
	mulw	a2, a0, a1
	li	a1, 39
	# reload i32 %59
	lw	a0, 52(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 76
	# reload i32 %8
	lw	a0, 4(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -5
	mulw	a0, s5, a0
	addw	a2, a1, a0
	li	a1, 102
	# reload i32 %40
	lw	a0, 32(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 29
	# reload i32 %14
	lw	a0, 12(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -6
	# reload i32 %78
	lw	a0, 72(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 96
	mulw	a0, s4, a0
	addw	a2, a1, a0
	li	a1, 6
	# reload i32 %43
	lw	a0, 36(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 120
	# reload i32 %72
	lw	a0, 64(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -70
	# reload i32 %11
	lw	a0, 8(sp)
	mulw	a0, a0, a1
	# spill i32 %111
	sw	a0, 80(sp)
	# reload i32 %111
	lw	a0, 80(sp)
	addw	a2, a2, a0
	li	a1, -34
	# reload i32 %37
	lw	a0, 28(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 52
	# reload i32 %24
	lw	a0, 16(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 34
	# reload i32 %33
	lw	a0, 24(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 110
	# reload i32 %53
	lw	a0, 44(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -63
	# reload i32 %62
	lw	a0, 56(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 65
	mulw	s7, s1, a0
	addw	a2, a1, s7
	li	a1, -68
	# reload i32 %27
	lw	a0, 20(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -38
	# reload i32 %46
	lw	a0, 40(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 94
	# reload i32 %81
	lw	a0, 76(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 27
	mulw	a0, s2, a0
	addw	a2, a1, a0
	li	a1, -39
	# reload i32 %75
	lw	a0, 68(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 26
	# reload i32 %5
	lw	a0, 0(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -99
	# reload i32 %65
	lw	a0, 60(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -95
	mulw	a0, s3, a0
	addw	a0, a1, a0
	call	relu_reg
	li	a1, 127
	mulw	s8, a0, a1
	li	a1, 68
	# reload i32 %8
	lw	a0, 4(sp)
	mulw	a1, a0, a1
	li	a0, -112
	mulw	a0, s1, a0
	addw	a2, a0, a1
	li	a1, -116
	# reload i32 %72
	lw	a0, 64(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -15
	mulw	s6, s4, a0
	addw	a2, a1, s6
	li	a1, 55
	# reload i32 %24
	lw	a0, 16(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -13
	mulw	a0, s5, a0
	addw	a2, a1, a0
	li	a1, 114
	# reload i32 %53
	lw	a0, 44(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -50
	# reload i32 %65
	lw	a0, 60(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 101
	# reload i32 %27
	lw	a0, 20(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -10
	# reload i32 %59
	lw	a0, 52(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 112
	# reload i32 %56
	lw	a0, 48(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -62
	# reload i32 %33
	lw	a0, 24(sp)
	mulw	a0, a0, a1
	# spill i32 %191
	sw	a0, 84(sp)
	# reload i32 %191
	lw	a0, 84(sp)
	addw	a1, a2, a0
	li	a0, 112
	mulw	a0, s2, a0
	addw	a2, a1, a0
	li	a1, 114
	# reload i32 %40
	lw	a0, 32(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -21
	# reload i32 %46
	lw	a0, 40(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -54
	# reload i32 %75
	lw	a0, 68(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -16
	# reload i32 %62
	lw	a0, 56(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 82
	# reload i32 %78
	lw	a0, 72(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -72
	# reload i32 %81
	lw	a0, 76(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 121
	mulw	a0, s3, a0
	addw	a2, a1, a0
	li	a1, 81
	# reload i32 %5
	lw	a0, 0(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	# reload i32 %37
	lw	a0, 28(sp)
	slliw	a0, a0, 6
	addw	a2, a1, a0
	li	a1, 38
	# reload i32 %43
	lw	a0, 36(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -102
	# reload i32 %11
	lw	a0, 8(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -74
	# reload i32 %14
	lw	a0, 12(sp)
	mulw	a0, a0, a1
	addw	a0, a2, a0
	call	relu_reg
	slliw	a0, a0, 5
	addw	s10, s8, a0
	li	a1, -32
	# reload i32 %72
	lw	a0, 64(sp)
	mulw	a1, a0, a1
	li	a0, 125
	mulw	s8, s5, a0
	addw	a2, a1, s8
	li	a1, 118
	# reload i32 %81
	lw	a0, 76(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -31
	mulw	a0, s2, a0
	addw	a1, a1, a0
	li	a0, 72
	mulw	a0, s3, a0
	addw	a2, a1, a0
	li	a1, -30
	# reload i32 %24
	lw	a0, 16(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 11
	# reload i32 %62
	lw	a0, 56(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 12
	# reload i32 %27
	lw	a0, 20(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 83
	# reload i32 %56
	lw	a0, 48(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 95
	# reload i32 %78
	lw	a0, 72(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 110
	# reload i32 %46
	lw	a0, 40(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -63
	# reload i32 %8
	lw	a0, 4(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -65
	# reload i32 %37
	lw	a0, 28(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -117
	# reload i32 %75
	lw	a0, 68(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -67
	# reload i32 %40
	lw	a0, 32(sp)
	mulw	s9, a0, a1
	addw	a2, a2, s9
	li	a1, -23
	# reload i32 %5
	lw	a0, 0(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 50
	# reload i32 %14
	lw	a0, 12(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 85
	mulw	a0, s4, a0
	addw	a2, a1, a0
	li	a1, 49
	# reload i32 %11
	lw	a0, 8(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -123
	# reload i32 %53
	lw	a0, 44(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 122
	# reload i32 %59
	lw	a0, 52(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -23
	# reload i32 %65
	lw	a0, 60(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -117
	# reload i32 %33
	lw	a0, 24(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 125
	# reload i32 %43
	lw	a0, 36(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -47
	mulw	a0, s1, a0
	addw	a0, a1, a0
	call	relu_reg
	li	a1, -106
	mulw	a0, a0, a1
	addw	s10, s10, a0
	li	a1, -18
	# reload i32 %11
	lw	a0, 8(sp)
	mulw	a1, a0, a1
	li	a0, -94
	mulw	a0, s5, a0
	addw	a2, a1, a0
	li	a1, -100
	# reload i32 %72
	lw	a0, 64(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 105
	mulw	a0, s2, a0
	addw	a2, a1, a0
	li	a1, -125
	# reload i32 %81
	lw	a0, 76(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -21
	# reload i32 %40
	lw	a0, 32(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -4
	# reload i32 %24
	lw	a0, 16(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 87
	# reload i32 %56
	lw	a0, 48(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -106
	# reload i32 %62
	lw	a0, 56(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 29
	# reload i32 %59
	lw	a0, 52(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 47
	mulw	a0, s4, a0
	addw	a2, a1, a0
	li	a1, -121
	# reload i32 %33
	lw	a0, 24(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -106
	# reload i32 %5
	lw	a0, 0(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -43
	# reload i32 %46
	lw	a0, 40(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -42
	# reload i32 %53
	lw	a0, 44(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -31
	# reload i32 %65
	lw	a0, 60(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -110
	mulw	a0, s1, a0
	addw	a1, a1, a0
	li	a0, -8
	mulw	a0, s3, a0
	addw	a2, a1, a0
	li	a1, -22
	# reload i32 %75
	lw	a0, 68(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -75
	# reload i32 %78
	lw	a0, 72(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 126
	# reload i32 %8
	lw	a0, 4(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 7
	# reload i32 %37
	lw	a0, 28(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -31
	# reload i32 %14
	lw	a0, 12(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 67
	# reload i32 %27
	lw	a0, 20(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -60
	# reload i32 %43
	lw	a0, 36(sp)
	mulw	a0, a0, a1
	addw	a0, a2, a0
	call	relu_reg
	li	a1, 77
	mulw	a0, a0, a1
	addw	s10, s10, a0
	li	a0, -30
	mulw	a2, s4, a0
	li	a1, -33
	# reload i32 %53
	lw	a0, 44(sp)
	mulw	a0, a0, a1
	addw	a2, a0, a2
	li	a1, -8
	# reload i32 %24
	lw	a0, 16(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	slliw	a0, s5, 1
	addw	a1, a1, a0
	li	a0, -79
	mulw	a0, s1, a0
	addw	a2, a1, a0
	li	a1, 15
	# reload i32 %46
	lw	a0, 40(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 14
	# reload i32 %56
	lw	a0, 48(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 55
	mulw	a0, s2, a0
	addw	a2, a1, a0
	li	a1, 67
	# reload i32 %62
	lw	a0, 56(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 48
	# reload i32 %72
	lw	a0, 64(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 66
	# reload i32 %81
	lw	a0, 76(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -90
	# reload i32 %14
	lw	a0, 12(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 52
	# reload i32 %43
	lw	a0, 36(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -15
	# reload i32 %78
	lw	a0, 72(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 59
	# reload i32 %40
	lw	a0, 32(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 86
	# reload i32 %65
	lw	a0, 60(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -6
	mulw	a0, s3, a0
	addw	a2, a1, a0
	li	a1, -13
	# reload i32 %75
	lw	a0, 68(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 15
	# reload i32 %5
	lw	a0, 0(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 81
	# reload i32 %27
	lw	a0, 20(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -77
	# reload i32 %8
	lw	a0, 4(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -110
	# reload i32 %33
	lw	a0, 24(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -95
	# reload i32 %37
	lw	a0, 28(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 58
	# reload i32 %59
	lw	a0, 52(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 66
	# reload i32 %11
	lw	a0, 8(sp)
	mulw	a0, a0, a1
	addw	a0, a2, a0
	call	relu_reg
	li	a1, -95
	mulw	a0, a0, a1
	addw	s11, s10, a0
	li	a1, 30
	# reload i32 %14
	lw	a0, 12(sp)
	mulw	a1, a0, a1
	li	a0, 107
	mulw	a0, s2, a0
	addw	a1, a1, a0
	li	a0, -2
	mulw	a0, s3, a0
	addw	a2, a1, a0
	li	a1, 24
	# reload i32 %53
	lw	a0, 44(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 97
	# reload i32 %72
	lw	a0, 64(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 67
	# reload i32 %11
	lw	a0, 8(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 83
	# reload i32 %75
	lw	a0, 68(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 46
	# reload i32 %78
	lw	a0, 72(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -84
	# reload i32 %81
	lw	a0, 76(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -96
	# reload i32 %59
	lw	a0, 52(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 18
	mulw	a0, s5, a0
	addw	a2, a1, a0
	li	a1, 104
	# reload i32 %37
	lw	a0, 28(sp)
	mulw	a0, a0, a1
	addw	a0, a2, a0
	addw	a2, a0, s7
	li	a1, -119
	# reload i32 %40
	lw	a0, 32(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -7
	# reload i32 %43
	lw	a0, 36(sp)
	mulw	s7, a0, a1
	addw	a2, a2, s7
	li	a1, 33
	# reload i32 %5
	lw	a0, 0(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 120
	# reload i32 %24
	lw	a0, 16(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 82
	# reload i32 %8
	lw	a0, 4(sp)
	mulw	s10, a0, a1
	addw	a2, a2, s10
	li	a1, 82
	# reload i32 %56
	lw	a0, 48(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 5
	# reload i32 %33
	lw	a0, 24(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -13
	# reload i32 %27
	lw	a0, 20(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 71
	# reload i32 %46
	lw	a0, 40(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -104
	# reload i32 %62
	lw	a0, 56(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -121
	# reload i32 %65
	lw	a0, 60(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 65
	mulw	a0, s4, a0
	addw	a0, a1, a0
	call	relu_reg
	li	a1, -50
	mulw	a0, a0, a1
	addw	s11, s11, a0
	li	a1, -120
	# reload i32 %24
	lw	a0, 16(sp)
	mulw	a1, a0, a1
	li	a0, 110
	mulw	a0, s1, a0
	addw	a2, a1, a0
	li	a1, -111
	# reload i32 %37
	lw	a0, 28(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 47
	# reload i32 %72
	lw	a0, 64(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 46
	# reload i32 %81
	lw	a0, 76(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 80
	# reload i32 %78
	lw	a0, 72(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 34
	# reload i32 %53
	lw	a0, 44(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -59
	mulw	a0, s5, a0
	addw	a2, a1, a0
	li	a1, 47
	# reload i32 %33
	lw	a0, 24(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 47
	# reload i32 %62
	lw	a0, 56(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 113
	# reload i32 %65
	lw	a0, 60(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -4
	# reload i32 %75
	lw	a0, 68(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 23
	# reload i32 %8
	lw	a0, 4(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -39
	# reload i32 %56
	lw	a0, 48(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -103
	# reload i32 %14
	lw	a0, 12(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 65
	# reload i32 %59
	lw	a0, 52(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 85
	# reload i32 %5
	lw	a0, 0(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -82
	# reload i32 %11
	lw	a0, 8(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -106
	# reload i32 %43
	lw	a0, 36(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	slliw	a0, s4, 6
	addw	a2, a1, a0
	li	a1, 50
	# reload i32 %27
	lw	a0, 20(sp)
	mulw	a0, a0, a1
	addw	a0, a2, a0
	addw	a1, a0, s9
	li	a0, -102
	mulw	a0, s2, a0
	addw	a2, a1, a0
	li	a1, -75
	# reload i32 %46
	lw	a0, 40(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -123
	mulw	a0, s3, a0
	addw	a0, a1, a0
	call	relu_reg
	li	a1, 39
	mulw	a0, a0, a1
	addw	s9, s11, a0
	li	a1, 66
	# reload i32 %37
	lw	a0, 28(sp)
	mulw	a2, a0, a1
	li	a1, 5
	# reload i32 %56
	lw	a0, 48(sp)
	mulw	a0, a0, a1
	addw	a2, a0, a2
	li	a1, -93
	# reload i32 %65
	lw	a0, 60(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	# reload i32 %5
	lw	a0, 0(sp)
	slliw	a0, a0, 3
	addw	a2, a1, a0
	li	a1, -114
	# reload i32 %46
	lw	a0, 40(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 59
	mulw	a0, s2, a0
	addw	a2, a1, a0
	li	a1, -124
	# reload i32 %81
	lw	a0, 76(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -101
	# reload i32 %43
	lw	a0, 36(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -63
	mulw	a0, s4, a0
	addw	a2, a1, a0
	li	a1, -70
	# reload i32 %27
	lw	a0, 20(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 79
	# reload i32 %72
	lw	a0, 64(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -104
	# reload i32 %11
	lw	a0, 8(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 15
	mulw	a0, s1, a0
	addw	a2, a1, a0
	li	a1, 116
	# reload i32 %62
	lw	a0, 56(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 3
	# reload i32 %75
	lw	a0, 68(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 49
	# reload i32 %78
	lw	a0, 72(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -16
	# reload i32 %24
	lw	a0, 16(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 101
	# reload i32 %14
	lw	a0, 12(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -116
	mulw	a0, s3, a0
	addw	a0, a1, a0
	addw	a2, a0, s10
	li	a1, -96
	# reload i32 %40
	lw	a0, 32(sp)
	mulw	a0, a0, a1
	addw	a0, a2, a0
	addw	a2, a0, s8
	li	a1, 75
	# reload i32 %33
	lw	a0, 24(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -95
	# reload i32 %59
	lw	a0, 52(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 12
	# reload i32 %53
	lw	a0, 44(sp)
	mulw	a0, a0, a1
	addw	a0, a2, a0
	call	relu_reg
	li	a1, -3
	mulw	a0, a0, a1
	addw	s8, s9, a0
	li	a1, -29
	# reload i32 %5
	lw	a0, 0(sp)
	mulw	a2, a0, a1
	li	a1, 37
	# reload i32 %27
	lw	a0, 20(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 37
	# reload i32 %46
	lw	a0, 40(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	# reload i32 %191
	lw	a0, 84(sp)
	addw	a2, a1, a0
	li	a1, -87
	# reload i32 %56
	lw	a0, 48(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 36
	mulw	a0, s5, a0
	addw	a2, a1, a0
	li	a1, 71
	# reload i32 %62
	lw	a0, 56(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 37
	# reload i32 %72
	lw	a0, 64(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -75
	# reload i32 %59
	lw	a0, 52(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -125
	# reload i32 %37
	lw	a0, 28(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -103
	# reload i32 %75
	lw	a0, 68(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -32
	# reload i32 %24
	lw	a0, 16(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -46
	# reload i32 %40
	lw	a0, 32(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -70
	# reload i32 %43
	lw	a0, 36(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 53
	mulw	a0, s1, a0
	addw	a1, a1, a0
	li	a0, -90
	mulw	a0, s3, a0
	addw	a2, a1, a0
	li	a1, 7
	# reload i32 %8
	lw	a0, 4(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	# reload i32 %111
	lw	a0, 80(sp)
	addw	a2, a1, a0
	li	a1, -114
	# reload i32 %81
	lw	a0, 76(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, -73
	mulw	a0, s2, a0
	addw	a2, a1, a0
	li	a1, 38
	# reload i32 %14
	lw	a0, 12(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -13
	# reload i32 %78
	lw	a0, 72(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -34
	# reload i32 %53
	lw	a0, 44(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -77
	# reload i32 %65
	lw	a0, 60(sp)
	mulw	a0, a0, a1
	addw	a0, a2, a0
	addw	a0, a0, s6
	call	relu_reg
	li	a1, -23
	mulw	a0, a0, a1
	addw	s6, s8, a0
	li	a1, 75
	# reload i32 %27
	lw	a0, 20(sp)
	mulw	a2, a0, a1
	li	a1, -49
	# reload i32 %78
	lw	a0, 72(sp)
	mulw	a0, a0, a1
	addw	a2, a0, a2
	li	a1, -51
	# reload i32 %33
	lw	a0, 24(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -68
	# reload i32 %59
	lw	a0, 52(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 36
	# reload i32 %75
	lw	a0, 68(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -74
	# reload i32 %40
	lw	a0, 32(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -77
	# reload i32 %24
	lw	a0, 16(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -122
	# reload i32 %46
	lw	a0, 40(sp)
	mulw	a0, a0, a1
	addw	a0, a2, a0
	addw	a2, a0, s7
	li	a1, 42
	# reload i32 %8
	lw	a0, 4(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 109
	# reload i32 %37
	lw	a0, 28(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 47
	# reload i32 %53
	lw	a0, 44(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 22
	# reload i32 %56
	lw	a0, 48(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 38
	# reload i32 %62
	lw	a0, 56(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 29
	# reload i32 %65
	lw	a0, 60(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 67
	# reload i32 %5
	lw	a0, 0(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -121
	# reload i32 %72
	lw	a0, 64(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 41
	# reload i32 %11
	lw	a0, 8(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, 85
	# reload i32 %81
	lw	a0, 76(sp)
	mulw	a0, a0, a1
	addw	a2, a2, a0
	li	a1, -123
	# reload i32 %14
	lw	a0, 12(sp)
	mulw	a0, a0, a1
	addw	a1, a2, a0
	li	a0, 67
	mulw	a0, s2, a0
	addw	a1, a1, a0
	li	a0, 115
	mulw	a0, s1, a0
	addw	a1, a1, a0
	li	a0, -92
	mulw	a0, s3, a0
	addw	a1, a1, a0
	li	a0, 10
	mulw	a0, s4, a0
	addw	a1, a1, a0
	li	a0, 96
	mulw	a0, s5, a0
	addw	a0, a1, a0
	call	relu_reg
	li	a1, 46
	mulw	a0, a0, a1
	addw	a1, s6, a0
	li	a0, 1
	blt	zero, a1, .LBB2_3.570
.LBB2_2.569:
	li	a0, 0
.LBB2_3.570:
	ld	s1, 168(sp)
	ld	s2, 160(sp)
	ld	s3, 152(sp)
	ld	s4, 144(sp)
	ld	s5, 136(sp)
	ld	s6, 128(sp)
	ld	s7, 120(sp)
	ld	s8, 112(sp)
	ld	s9, 104(sp)
	ld	s10, 96(sp)
	ld	s11, 88(sp)
	ld	s0, 176(sp)
	ld	ra, 184(sp)
	addi	sp, sp, 192
	ret

	.section	.text
	.align	4
	.globl	relu_reg
	.type	relu_reg, @function
relu_reg:
.Lrelu_reg$ENTRY:
	li	a2, 127
	li	a1, 127
	blt	a2, a0, .LBB3_4.6
.LBB3_2.3:
	li	a1, 0
	blt	a0, zero, .LBB3_4.6
.LBB3_3.5:
	mv	a1, a0
.LBB3_4.6:
	mv	a0, a1
	ret

