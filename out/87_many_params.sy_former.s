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
	addi	sp, sp, -448
	sd	ra, 440(sp)
	sd	s0, 432(sp)
	addi	s0, sp, 448
	sd	s1, 424(sp)
	sd	s2, 416(sp)
	sd	s3, 408(sp)
	sd	s4, 400(sp)
	sd	s5, 392(sp)
	sd	s6, 384(sp)
	sd	s7, 376(sp)
	sd	s8, 368(sp)
	sd	s9, 360(sp)
	sd	s10, 352(sp)
	sd	s11, 344(sp)
.Lmain$ENTRY:
	la	a1, __const_init.arr.0
	addi	a0, sp, 0
	addi	a1, a1, 0
	li	a2, 256
	call	memcpy
	call	getint
	mv	s2, a0
	call	getint
	mv	s3, a0
	call	getint
	mv	s4, a0
	call	getint
	# spill i32 %10
	sw	a0, 256(sp)
	call	getint
	# spill i32 %11
	sw	a0, 260(sp)
	call	getint
	# spill i32 %12
	sw	a0, 264(sp)
	call	getint
	# spill i32 %13
	sw	a0, 268(sp)
	call	getint
	# spill i32 %14
	sw	a0, 272(sp)
	call	getint
	mv	s5, a0
	call	getint
	mv	s6, a0
	call	getint
	mv	s7, a0
	call	getint
	mv	s8, a0
	call	getint
	mv	s9, a0
	call	getint
	mv	s10, a0
	call	getint
	mv	s11, a0
	call	getint
	mv	s1, a0
	addi	a0, sp, 0
	# spill i64 %23
	sd	a0, 280(sp)
	mv	a0, s2
	mv	a1, s3
	mv	a2, s4
	# reload i32 %10
	lw	a3, 256(sp)
	# reload i32 %11
	lw	a4, 260(sp)
	# reload i32 %12
	lw	a5, 264(sp)
	# reload i32 %13
	lw	a6, 268(sp)
	# reload i32 %14
	lw	a7, 272(sp)
	sd	s5, -64(sp)
	sd	s6, -56(sp)
	sd	s7, -48(sp)
	sd	s8, -40(sp)
	sd	s9, -32(sp)
	sd	s10, -24(sp)
	sd	s11, -16(sp)
	sd	s1, -8(sp)
	addi	sp, sp, -64
	call	param16
	addi	sp, sp, 64
	sw	a0, 0(sp)
	li	a3, 1
.LBB1_2.22:
	li	a0, 32
	blt	a3, a0, .LBB1_3.25
	j	.LBB1_4.38
.LBB1_3.25:
	addiw	a1, a3, -1
	addi	a0, sp, 0
	.word	0x20a5e5b3
	lw	a2, 4(a1)
	addi	a0, sp, 0
	.word	0x20a6e533
	addiw	a2, a2, -1
	sw	a2, 0(a0)
	lw	a1, 0(a1)
	addiw	a1, a1, -2
	sw	a1, 4(a0)
	addiw	a3, a3, 1
	j	.LBB1_2.22
.LBB1_4.38:
	addi	a1, sp, 8
	addi	a2, sp, 16
	addi	a3, sp, 24
	addi	a4, sp, 32
	addi	a5, sp, 40
	addi	a6, sp, 48
	addi	a7, sp, 56
	addi	a0, sp, 64
	# spill i64 %77
	sd	a0, 288(sp)
	addi	a0, sp, 72
	# spill i64 %81
	sd	a0, 296(sp)
	addi	a0, sp, 80
	# spill i64 %85
	sd	a0, 304(sp)
	addi	a0, sp, 88
	# spill i64 %89
	sd	a0, 312(sp)
	addi	a0, sp, 96
	# spill i64 %93
	sd	a0, 320(sp)
	addi	a0, sp, 104
	# spill i64 %97
	sd	a0, 328(sp)
	addi	t3, sp, 112
	addi	t4, sp, 120
	addi	t5, sp, 128
	addi	t6, sp, 136
	addi	a0, sp, 144
	# spill i64 %117
	sd	a0, 336(sp)
	addi	t2, sp, 152
	addi	t1, sp, 160
	addi	t0, sp, 168
	addi	s11, sp, 176
	addi	s10, sp, 184
	addi	s9, sp, 192
	addi	s8, sp, 200
	addi	s7, sp, 208
	addi	s6, sp, 216
	addi	s5, sp, 224
	addi	s4, sp, 232
	addi	s3, sp, 240
	addi	s2, sp, 248
	# reload i64 %23
	ld	a0, 280(sp)
	# reload i64 %77
	ld	s1, 288(sp)
	sd	s1, -192(sp)
	# reload i64 %81
	ld	s1, 296(sp)
	sd	s1, -184(sp)
	# reload i64 %85
	ld	s1, 304(sp)
	sd	s1, -176(sp)
	# reload i64 %89
	ld	s1, 312(sp)
	sd	s1, -168(sp)
	# reload i64 %93
	ld	s1, 320(sp)
	sd	s1, -160(sp)
	# reload i64 %97
	ld	s1, 328(sp)
	sd	s1, -152(sp)
	sd	t3, -144(sp)
	sd	t4, -136(sp)
	sd	t5, -128(sp)
	sd	t6, -120(sp)
	# reload i64 %117
	ld	s1, 336(sp)
	sd	s1, -112(sp)
	sd	t2, -104(sp)
	sd	t1, -96(sp)
	sd	t0, -88(sp)
	sd	s11, -80(sp)
	sd	s10, -72(sp)
	sd	s9, -64(sp)
	sd	s8, -56(sp)
	sd	s7, -48(sp)
	sd	s6, -40(sp)
	sd	s5, -32(sp)
	sd	s4, -24(sp)
	sd	s3, -16(sp)
	sd	s2, -8(sp)
	addi	sp, sp, -192
	call	param32_arr
	addi	sp, sp, 192
	call	putint
	li	a0, 10
	call	putch
	mv	a0, zero
	ld	s1, 424(sp)
	ld	s2, 416(sp)
	ld	s3, 408(sp)
	ld	s4, 400(sp)
	ld	s5, 392(sp)
	ld	s6, 384(sp)
	ld	s7, 376(sp)
	ld	s8, 368(sp)
	ld	s9, 360(sp)
	ld	s10, 352(sp)
	ld	s11, 344(sp)
	ld	s0, 432(sp)
	ld	ra, 440(sp)
	addi	sp, sp, 448
	ret

	.section	.text
	.align	4
	.globl	param16
	.type	param16, @function
param16:
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
.Lparam16$ENTRY:
	mv	s9, a7
	mv	s11, a6
	mv	s10, a5
	# spill i32 %16
	sw	a4, 80(sp)
	# spill i32 %13
	sw	a3, 76(sp)
	# spill i32 %10
	sw	a2, 72(sp)
	# spill i32 %7
	sw	a1, 68(sp)
	# spill i32 %4
	sw	a0, 64(sp)
	addi	a5, sp, 0
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	sw	a2, 8(sp)
	sw	a3, 12(sp)
	sw	a4, 16(sp)
	sw	s10, 20(sp)
	sw	s11, 24(sp)
	sw	s9, 28(sp)
	ld	a0, 0(s0)
	sw	a0, 32(sp)
	ld	a0, 8(s0)
	sw	a0, 36(sp)
	ld	a0, 16(s0)
	sw	a0, 40(sp)
	ld	a0, 24(s0)
	sw	a0, 44(sp)
	ld	a0, 32(s0)
	sw	a0, 48(sp)
	ld	a0, 40(s0)
	sw	a0, 52(sp)
	ld	a0, 48(s0)
	sw	a0, 56(sp)
	ld	a0, 56(s0)
	sw	a0, 60(sp)
	mv	a0, a5
	li	a1, 16
	call	sort
	lw	a0, 0(sp)
	lw	a1, 4(sp)
	lw	a2, 8(sp)
	lw	a3, 12(sp)
	lw	a4, 16(sp)
	lw	a5, 20(sp)
	lw	a6, 24(sp)
	lw	a7, 28(sp)
	lw	s8, 32(sp)
	lw	s7, 36(sp)
	lw	s6, 40(sp)
	lw	s5, 44(sp)
	lw	s4, 48(sp)
	lw	s3, 52(sp)
	lw	s2, 56(sp)
	lw	s1, 60(sp)
	sd	s8, -192(sp)
	sd	s7, -184(sp)
	sd	s6, -176(sp)
	sd	s5, -168(sp)
	sd	s4, -160(sp)
	sd	s3, -152(sp)
	sd	s2, -144(sp)
	sd	s1, -136(sp)
	# reload i32 %4
	lw	s1, 64(sp)
	sd	s1, -128(sp)
	# reload i32 %7
	lw	s1, 68(sp)
	sd	s1, -120(sp)
	# reload i32 %10
	lw	s1, 72(sp)
	sd	s1, -112(sp)
	# reload i32 %13
	lw	s1, 76(sp)
	sd	s1, -104(sp)
	# reload i32 %16
	lw	s1, 80(sp)
	sd	s1, -96(sp)
	sd	s10, -88(sp)
	sd	s11, -80(sp)
	sd	s9, -72(sp)
	ld	s1, 0(s0)
	sd	s1, -64(sp)
	ld	s1, 8(s0)
	sd	s1, -56(sp)
	ld	s1, 16(s0)
	sd	s1, -48(sp)
	ld	s1, 24(s0)
	sd	s1, -40(sp)
	ld	s1, 32(s0)
	sd	s1, -32(sp)
	ld	s1, 40(s0)
	sd	s1, -24(sp)
	ld	s1, 48(s0)
	sd	s1, -16(sp)
	ld	s1, 56(s0)
	sd	s1, -8(sp)
	addi	sp, sp, -192
	call	param32_rec
	addi	sp, sp, 192
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
	.globl	param32_arr
	.type	param32_arr, @function
param32_arr:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.Lparam32_arr$ENTRY:
	ld	s1, 56(s0)
	lw	s2, 4(s1)
	ld	s1, 168(s0)
	lw	s1, 4(s1)
	addw	s2, s2, s1
	ld	s1, 80(s0)
	lw	s1, 0(s1)
	addw	s2, s2, s1
	ld	s1, 168(s0)
	lw	s1, 0(s1)
	addw	s2, s2, s1
	lw	s1, 0(a3)
	addw	s2, s2, s1
	lw	s1, 0(a6)
	addw	s2, s2, s1
	ld	s1, 104(s0)
	lw	s1, 4(s1)
	addw	s2, s2, s1
	ld	s1, 144(s0)
	lw	s1, 4(s1)
	addw	s2, s2, s1
	ld	s1, 176(s0)
	lw	s1, 4(s1)
	addw	s2, s2, s1
	ld	s1, 8(s0)
	lw	s1, 0(s1)
	addw	s2, s2, s1
	ld	s1, 112(s0)
	lw	s1, 4(s1)
	addw	s2, s2, s1
	ld	s1, 128(s0)
	lw	s1, 4(s1)
	addw	s2, s2, s1
	ld	s1, 136(s0)
	lw	s1, 4(s1)
	addw	s2, s2, s1
	ld	s1, 64(s0)
	lw	s1, 4(s1)
	addw	s2, s2, s1
	lw	s1, 0(a2)
	addw	s2, s2, s1
	ld	s1, 152(s0)
	lw	s1, 0(s1)
	addw	s2, s2, s1
	ld	s1, 16(s0)
	lw	s1, 0(s1)
	addw	s2, s2, s1
	ld	s1, 160(s0)
	lw	s1, 0(s1)
	addw	s2, s2, s1
	ld	s1, 56(s0)
	lw	s1, 0(s1)
	addw	s2, s2, s1
	lw	s1, 4(a4)
	addw	s2, s2, s1
	ld	s1, 120(s0)
	lw	s1, 0(s1)
	addw	s2, s2, s1
	ld	s1, 160(s0)
	lw	s1, 4(s1)
	addw	s2, s2, s1
	lw	s1, 0(a0)
	addw	s1, s2, s1
	lw	a3, 4(a3)
	addw	a3, s1, a3
	lw	a0, 4(a0)
	addw	a3, a3, a0
	ld	a0, 40(s0)
	lw	a0, 4(a0)
	addw	a3, a3, a0
	lw	a0, 4(a2)
	addw	a2, a3, a0
	ld	a0, 152(s0)
	lw	a0, 4(a0)
	addw	a2, a2, a0
	ld	a0, 144(s0)
	lw	a0, 0(a0)
	addw	a2, a2, a0
	ld	a0, 80(s0)
	lw	a0, 4(a0)
	addw	a2, a2, a0
	ld	a0, 24(s0)
	lw	a0, 4(a0)
	addw	a2, a2, a0
	ld	a0, 72(s0)
	lw	a0, 0(a0)
	addw	a2, a2, a0
	lw	a0, 0(a4)
	addw	a2, a2, a0
	ld	a0, 48(s0)
	lw	a0, 0(a0)
	addw	a2, a2, a0
	ld	a0, 48(s0)
	lw	a0, 4(a0)
	addw	a2, a2, a0
	lw	a0, 0(a5)
	addw	a2, a2, a0
	ld	a0, 88(s0)
	lw	a0, 4(a0)
	addw	a2, a2, a0
	ld	a0, 32(s0)
	lw	a0, 4(a0)
	addw	a2, a2, a0
	lw	a0, 0(a1)
	addw	a2, a2, a0
	ld	a0, 32(s0)
	lw	a0, 0(a0)
	addw	a2, a2, a0
	ld	a0, 24(s0)
	lw	a0, 0(a0)
	addw	a2, a2, a0
	lw	a0, 4(a6)
	addw	a2, a2, a0
	ld	a0, 64(s0)
	lw	a0, 0(a0)
	addw	a2, a2, a0
	ld	a0, 120(s0)
	lw	a0, 4(a0)
	addw	a2, a2, a0
	ld	a0, 40(s0)
	lw	a0, 0(a0)
	addw	a2, a2, a0
	ld	a0, 96(s0)
	lw	a0, 4(a0)
	addw	a2, a2, a0
	ld	a0, 0(s0)
	lw	a0, 4(a0)
	addw	a2, a2, a0
	ld	a0, 176(s0)
	lw	a0, 0(a0)
	addw	a2, a2, a0
	lw	a0, 4(a1)
	addw	a1, a2, a0
	lw	a0, 4(a7)
	addw	a1, a1, a0
	ld	a0, 0(s0)
	lw	a0, 0(a0)
	addw	a1, a1, a0
	ld	a0, 88(s0)
	lw	a0, 0(a0)
	addw	a1, a1, a0
	lw	a0, 0(a7)
	addw	a1, a1, a0
	ld	a0, 128(s0)
	lw	a0, 0(a0)
	addw	a1, a1, a0
	ld	a0, 184(s0)
	lw	a0, 4(a0)
	addw	a1, a1, a0
	ld	a0, 136(s0)
	lw	a0, 0(a0)
	addw	a1, a1, a0
	lw	a0, 4(a5)
	addw	a1, a1, a0
	ld	a0, 72(s0)
	lw	a0, 4(a0)
	addw	a1, a1, a0
	ld	a0, 96(s0)
	lw	a0, 0(a0)
	addw	a1, a1, a0
	ld	a0, 184(s0)
	lw	a0, 0(a0)
	addw	a1, a1, a0
	ld	a0, 104(s0)
	lw	a0, 0(a0)
	addw	a1, a1, a0
	ld	a0, 16(s0)
	lw	a0, 4(a0)
	addw	a1, a1, a0
	ld	a0, 112(s0)
	lw	a0, 0(a0)
	addw	a1, a1, a0
	ld	a0, 8(s0)
	lw	a0, 4(a0)
	addw	a0, a1, a0
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	param32_rec
	.type	param32_rec, @function
param32_rec:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.Lparam32_rec$ENTRY:
	beq	a0, zero, .LBB4_3.39
.LBB4_2.34:
	addiw	a0, a0, -1
	addw	s2, a1, a2
	li	s1, 998244353
	li	a1, 288737297
	mul	a1, a1, s2
	srai	a2, a1, 32
	sraiw	a2, a2, 26
	srliw	a1, a2, 31
	addw	a2, a2, a1
	mulw	a2, a2, s1
	subw	a1, s2, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	mv	a6, a7
	ld	a7, 0(s0)
	ld	s1, 8(s0)
	sd	s1, -192(sp)
	ld	s1, 16(s0)
	sd	s1, -184(sp)
	ld	s1, 24(s0)
	sd	s1, -176(sp)
	ld	s1, 32(s0)
	sd	s1, -168(sp)
	ld	s1, 40(s0)
	sd	s1, -160(sp)
	ld	s1, 48(s0)
	sd	s1, -152(sp)
	ld	s1, 56(s0)
	sd	s1, -144(sp)
	ld	s1, 64(s0)
	sd	s1, -136(sp)
	ld	s1, 72(s0)
	sd	s1, -128(sp)
	ld	s1, 80(s0)
	sd	s1, -120(sp)
	ld	s1, 88(s0)
	sd	s1, -112(sp)
	ld	s1, 96(s0)
	sd	s1, -104(sp)
	ld	s1, 104(s0)
	sd	s1, -96(sp)
	ld	s1, 112(s0)
	sd	s1, -88(sp)
	ld	s1, 120(s0)
	sd	s1, -80(sp)
	ld	s1, 128(s0)
	sd	s1, -72(sp)
	ld	s1, 136(s0)
	sd	s1, -64(sp)
	ld	s1, 144(s0)
	sd	s1, -56(sp)
	ld	s1, 152(s0)
	sd	s1, -48(sp)
	ld	s1, 160(s0)
	sd	s1, -40(sp)
	ld	s1, 168(s0)
	sd	s1, -32(sp)
	ld	s1, 176(s0)
	sd	s1, -24(sp)
	ld	s1, 184(s0)
	sd	s1, -16(sp)
	sd	zero, -8(sp)
	addi	sp, sp, -192
	call	param32_rec
	addi	sp, sp, 192
	mv	a1, a0
.LBB4_3.39:
	mv	a0, a1
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	sort
	.type	sort, @function
sort:
	addi	sp, sp, -16
	sd	s1, 8(sp)
.Lsort$ENTRY:
	addiw	s1, a1, -1
	li	a7, 0
.LBB5_2.4:
	blt	a7, s1, .LBB5_3.7
	j	.LBB5_8.21
.LBB5_3.7:
	.word	0x20a8c6b3	# sh2add	a3, a7, a0
	addiw	a7, a7, 1
	mv	a6, a7
.LBB5_4.10:
	blt	a6, a1, .LBB5_5.13
	j	.LBB5_2.4
.LBB5_5.13:
	lw	a5, 0(a3)
	.word	0x20a84633	# sh2add	a2, a6, a0
	lw	a4, 0(a2)
	blt	a5, a4, .LBB5_6.18
	j	.LBB5_7.19
.LBB5_6.18:
	sw	a4, 0(a3)
	sw	a5, 0(a2)
.LBB5_7.19:
	addiw	a6, a6, 1
	j	.LBB5_4.10
.LBB5_8.21:
	ld	s1, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.data
	.type	__const_init.arr.0, @object
__const_init.arr.0:
	.zero	4
	.word	8848
	.zero	248

