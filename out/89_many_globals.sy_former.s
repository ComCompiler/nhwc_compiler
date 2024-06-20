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
	addi	sp, sp, -384
	sd	ra, 376(sp)
	sd	s0, 368(sp)
	addi	s0, sp, 384
	sd	s1, 360(sp)
	sd	s2, 352(sp)
	sd	s3, 344(sp)
	sd	s4, 336(sp)
	sd	s5, 328(sp)
	sd	s6, 320(sp)
	sd	s7, 312(sp)
	sd	s8, 304(sp)
	sd	s9, 296(sp)
	sd	s10, 288(sp)
	sd	s11, 280(sp)
.Lmain$ENTRY:
	la	s1, a39
	la	s2, a38
	la	s3, a37
	la	s4, a36
	la	s8, a35
	la	s7, a34
	la	s6, a33
	la	s5, a32
	la	s11, a31
	la	s10, a30
	la	s9, a29
	la	a0, a28
	# spill i64 %54
	sd	a0, 248(sp)
	la	a0, a27
	# spill i64 %52
	sd	a0, 240(sp)
	la	a0, a26
	# spill i64 %50
	sd	a0, 232(sp)
	la	a0, a25
	# spill i64 %48
	sd	a0, 224(sp)
	la	a0, a24
	# spill i64 %46
	sd	a0, 216(sp)
	la	a0, a23
	# spill i64 %44
	sd	a0, 208(sp)
	la	a0, a22
	# spill i64 %42
	sd	a0, 200(sp)
	la	a0, a21
	# spill i64 %40
	sd	a0, 192(sp)
	la	a0, a20
	# spill i64 %39
	sd	a0, 184(sp)
	la	a0, a19
	# spill i64 %37
	sd	a0, 176(sp)
	la	a0, a18
	# spill i64 %35
	sd	a0, 168(sp)
	la	a0, a17
	# spill i64 %33
	sd	a0, 160(sp)
	la	a0, a16
	# spill i64 %31
	sd	a0, 152(sp)
	la	a0, a15
	# spill i64 %29
	sd	a0, 144(sp)
	la	a0, a14
	# spill i64 %27
	sd	a0, 136(sp)
	la	a0, a13
	# spill i64 %25
	sd	a0, 128(sp)
	la	a0, a12
	# spill i64 %23
	sd	a0, 120(sp)
	la	a0, a11
	# spill i64 %21
	sd	a0, 112(sp)
	la	a0, a10
	# spill i64 %20
	sd	a0, 104(sp)
	la	a0, a9
	# spill i64 %18
	sd	a0, 96(sp)
	la	a0, a8
	# spill i64 %16
	sd	a0, 88(sp)
	la	a0, a7
	# spill i64 %14
	sd	a0, 80(sp)
	la	a0, a6
	# spill i64 %12
	sd	a0, 72(sp)
	la	a0, a5
	# spill i64 %10
	sd	a0, 64(sp)
	la	a0, a4
	# spill i64 %8
	sd	a0, 56(sp)
	la	a0, a3
	# spill i64 %6
	sd	a0, 48(sp)
	la	a0, a2
	# spill i64 %4
	sd	a0, 40(sp)
	la	a0, a1
	# spill i64 %2
	sd	a0, 32(sp)
	la	a0, a0
	# spill i64 %1
	sd	a0, 24(sp)
	# reload i64 %1
	ld	a0, 24(sp)
	sw	zero, 0(a0)
	li	a1, 1
	# reload i64 %2
	ld	a0, 32(sp)
	sw	a1, 0(a0)
	li	a1, 2
	# reload i64 %4
	ld	a0, 40(sp)
	sw	a1, 0(a0)
	li	a1, 3
	# reload i64 %6
	ld	a0, 48(sp)
	sw	a1, 0(a0)
	li	a1, 4
	# reload i64 %8
	ld	a0, 56(sp)
	sw	a1, 0(a0)
	li	a1, 5
	# reload i64 %10
	ld	a0, 64(sp)
	sw	a1, 0(a0)
	li	a1, 6
	# reload i64 %12
	ld	a0, 72(sp)
	sw	a1, 0(a0)
	li	a1, 7
	# reload i64 %14
	ld	a0, 80(sp)
	sw	a1, 0(a0)
	li	a1, 8
	# reload i64 %16
	ld	a0, 88(sp)
	sw	a1, 0(a0)
	li	a1, 9
	# reload i64 %18
	ld	a0, 96(sp)
	sw	a1, 0(a0)
	# reload i64 %20
	ld	a0, 104(sp)
	sw	zero, 0(a0)
	li	a1, 1
	# reload i64 %21
	ld	a0, 112(sp)
	sw	a1, 0(a0)
	li	a1, 2
	# reload i64 %23
	ld	a0, 120(sp)
	sw	a1, 0(a0)
	li	a1, 3
	# reload i64 %25
	ld	a0, 128(sp)
	sw	a1, 0(a0)
	li	a1, 4
	# reload i64 %27
	ld	a0, 136(sp)
	sw	a1, 0(a0)
	li	a1, 5
	# reload i64 %29
	ld	a0, 144(sp)
	sw	a1, 0(a0)
	li	a1, 6
	# reload i64 %31
	ld	a0, 152(sp)
	sw	a1, 0(a0)
	li	a1, 7
	# reload i64 %33
	ld	a0, 160(sp)
	sw	a1, 0(a0)
	li	a1, 8
	# reload i64 %35
	ld	a0, 168(sp)
	sw	a1, 0(a0)
	li	a1, 9
	# reload i64 %37
	ld	a0, 176(sp)
	sw	a1, 0(a0)
	# reload i64 %39
	ld	a0, 184(sp)
	sw	zero, 0(a0)
	li	a1, 1
	# reload i64 %40
	ld	a0, 192(sp)
	sw	a1, 0(a0)
	li	a1, 2
	# reload i64 %42
	ld	a0, 200(sp)
	sw	a1, 0(a0)
	li	a1, 3
	# reload i64 %44
	ld	a0, 208(sp)
	sw	a1, 0(a0)
	li	a1, 4
	# reload i64 %46
	ld	a0, 216(sp)
	sw	a1, 0(a0)
	li	a1, 5
	# reload i64 %48
	ld	a0, 224(sp)
	sw	a1, 0(a0)
	li	a1, 6
	# reload i64 %50
	ld	a0, 232(sp)
	sw	a1, 0(a0)
	li	a1, 7
	# reload i64 %52
	ld	a0, 240(sp)
	sw	a1, 0(a0)
	li	a1, 8
	# reload i64 %54
	ld	a0, 248(sp)
	sw	a1, 0(a0)
	li	a0, 9
	sw	a0, 0(s9)
	sw	zero, 0(s10)
	li	a0, 1
	sw	a0, 0(s11)
	li	a0, 4
	sw	a0, 0(s5)
	li	a0, 5
	sw	a0, 0(s6)
	li	a0, 6
	sw	a0, 0(s7)
	li	a0, 7
	sw	a0, 0(s8)
	li	a0, 8
	sw	a0, 0(s4)
	li	a0, 9
	sw	a0, 0(s3)
	sw	zero, 0(s2)
	li	a0, 1
	sw	a0, 0(s1)
	li	a0, 0
	li	a1, 1
	li	a2, 2
	li	a3, 3
	li	a4, 4
	li	a5, 5
	li	a6, 6
	li	a7, 7
	call	testParam8
	# reload i64 %1
	ld	a1, 24(sp)
	sw	a0, 0(a1)
	call	putint
	lw	a0, 0(s5)
	lw	a1, 0(s6)
	lw	a2, 0(s7)
	lw	a3, 0(s8)
	lw	a4, 0(s4)
	lw	a5, 0(s3)
	lw	a6, 0(s2)
	lw	a7, 0(s1)
	# reload i64 %16
	ld	s1, 88(sp)
	lw	s7, 0(s1)
	# reload i64 %18
	ld	s1, 96(sp)
	lw	s8, 0(s1)
	# reload i64 %20
	ld	s1, 104(sp)
	lw	s6, 0(s1)
	# reload i64 %21
	ld	s1, 112(sp)
	lw	s5, 0(s1)
	# reload i64 %23
	ld	s1, 120(sp)
	lw	s4, 0(s1)
	# reload i64 %25
	ld	s1, 128(sp)
	lw	s3, 0(s1)
	# reload i64 %27
	ld	s1, 136(sp)
	lw	s2, 0(s1)
	# reload i64 %29
	ld	s1, 144(sp)
	lw	s1, 0(s1)
	sd	s7, -64(sp)
	sd	s8, -56(sp)
	sd	s6, -48(sp)
	sd	s5, -40(sp)
	sd	s4, -32(sp)
	sd	s3, -24(sp)
	sd	s2, -16(sp)
	sd	s1, -8(sp)
	addi	sp, sp, -64
	call	testParam16
	addi	sp, sp, 64
	# reload i64 %1
	ld	a1, 24(sp)
	sw	a0, 0(a1)
	call	putint
	# reload i64 %1
	ld	a0, 24(sp)
	lw	a0, 0(a0)
	# reload i64 %2
	ld	a1, 32(sp)
	lw	a1, 0(a1)
	# reload i64 %4
	ld	a2, 40(sp)
	lw	a2, 0(a2)
	# reload i64 %6
	ld	a3, 48(sp)
	lw	a3, 0(a3)
	# reload i64 %8
	ld	a4, 56(sp)
	lw	a4, 0(a4)
	# reload i64 %10
	ld	a5, 64(sp)
	lw	a5, 0(a5)
	# reload i64 %12
	ld	a6, 72(sp)
	lw	a6, 0(a6)
	# reload i64 %14
	ld	a7, 80(sp)
	lw	a7, 0(a7)
	# reload i64 %16
	ld	s1, 88(sp)
	lw	s1, 0(s1)
	# spill i32 %102
	sw	s1, 256(sp)
	# reload i64 %18
	ld	s1, 96(sp)
	lw	s1, 0(s1)
	# spill i32 %103
	sw	s1, 260(sp)
	# reload i64 %20
	ld	s1, 104(sp)
	lw	s1, 0(s1)
	# spill i32 %104
	sw	s1, 264(sp)
	# reload i64 %21
	ld	s1, 112(sp)
	lw	s1, 0(s1)
	# spill i32 %105
	sw	s1, 268(sp)
	# reload i64 %23
	ld	s1, 120(sp)
	lw	s4, 0(s1)
	# reload i64 %25
	ld	s1, 128(sp)
	lw	s5, 0(s1)
	# reload i64 %27
	ld	s1, 136(sp)
	lw	s6, 0(s1)
	# reload i64 %29
	ld	s1, 144(sp)
	lw	s7, 0(s1)
	# reload i64 %31
	ld	s1, 152(sp)
	lw	s8, 0(s1)
	# reload i64 %33
	ld	s1, 160(sp)
	lw	t0, 0(s1)
	# reload i64 %35
	ld	s1, 168(sp)
	lw	t1, 0(s1)
	# reload i64 %37
	ld	s1, 176(sp)
	lw	t2, 0(s1)
	# reload i64 %39
	ld	s1, 184(sp)
	lw	t3, 0(s1)
	# reload i64 %40
	ld	s1, 192(sp)
	lw	t4, 0(s1)
	# reload i64 %42
	ld	s1, 200(sp)
	lw	t5, 0(s1)
	# reload i64 %44
	ld	s1, 208(sp)
	lw	s1, 0(s1)
	# spill i32 %117
	sw	s1, 0(sp)
	# reload i64 %46
	ld	s1, 216(sp)
	lw	s1, 0(s1)
	# spill i32 %118
	sw	s1, 4(sp)
	# reload i64 %48
	ld	s1, 224(sp)
	lw	s1, 0(s1)
	# spill i32 %119
	sw	s1, 8(sp)
	# reload i64 %50
	ld	s1, 232(sp)
	lw	s1, 0(s1)
	# spill i32 %120
	sw	s1, 12(sp)
	# reload i64 %52
	ld	s1, 240(sp)
	lw	s1, 0(s1)
	# spill i32 %121
	sw	s1, 16(sp)
	# reload i64 %54
	ld	s1, 248(sp)
	lw	s1, 0(s1)
	# spill i32 %122
	sw	s1, 20(sp)
	lw	s9, 0(s9)
	lw	s3, 0(s10)
	lw	s2, 0(s11)
	# reload i32 %102
	lw	s1, 256(sp)
	sd	s1, -192(sp)
	# reload i32 %103
	lw	s1, 260(sp)
	sd	s1, -184(sp)
	# reload i32 %104
	lw	s1, 264(sp)
	sd	s1, -176(sp)
	# reload i32 %105
	lw	s1, 268(sp)
	sd	s1, -168(sp)
	sd	s4, -160(sp)
	sd	s5, -152(sp)
	sd	s6, -144(sp)
	sd	s7, -136(sp)
	sd	s8, -128(sp)
	sd	t0, -120(sp)
	sd	t1, -112(sp)
	sd	t2, -104(sp)
	sd	t3, -96(sp)
	sd	t4, -88(sp)
	sd	t5, -80(sp)
	# reload i32 %117
	lw	s1, 0(sp)
	sd	s1, -72(sp)
	# reload i32 %118
	lw	s1, 4(sp)
	sd	s1, -64(sp)
	# reload i32 %119
	lw	s1, 8(sp)
	sd	s1, -56(sp)
	# reload i32 %120
	lw	s1, 12(sp)
	sd	s1, -48(sp)
	# reload i32 %121
	lw	s1, 16(sp)
	sd	s1, -40(sp)
	# reload i32 %122
	lw	s1, 20(sp)
	sd	s1, -32(sp)
	sd	s9, -24(sp)
	sd	s3, -16(sp)
	sd	s2, -8(sp)
	addi	sp, sp, -192
	call	testParam32
	addi	sp, sp, 192
	# reload i64 %1
	ld	a1, 24(sp)
	sw	a0, 0(a1)
	call	putint
	mv	a0, zero
	ld	s1, 360(sp)
	ld	s2, 352(sp)
	ld	s3, 344(sp)
	ld	s4, 336(sp)
	ld	s5, 328(sp)
	ld	s6, 320(sp)
	ld	s7, 312(sp)
	ld	s8, 304(sp)
	ld	s9, 296(sp)
	ld	s10, 288(sp)
	ld	s11, 280(sp)
	ld	s0, 368(sp)
	ld	ra, 376(sp)
	addi	sp, sp, 384
	ret

	.section	.text
	.align	4
	.globl	testParam16
	.type	testParam16, @function
testParam16:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.LtestParam16$ENTRY:
	addw	a2, a0, a2
	ld	a0, 24(s0)
	addw	a2, a2, a0
	ld	a0, 56(s0)
	addw	a2, a2, a0
	ld	a0, 48(s0)
	addw	a0, a2, a0
	subw	a2, a0, a6
	ld	a0, 32(s0)
	addw	a0, a2, a0
	addw	a0, a0, a1
	subw	a0, a0, a5
	subw	a0, a0, a7
	subw	a1, a0, a4
	ld	a0, 40(s0)
	addw	a1, a1, a0
	ld	a0, 0(s0)
	addw	a1, a1, a0
	ld	a0, 16(s0)
	addw	a0, a1, a0
	subw	a1, a0, a3
	ld	a0, 8(s0)
	addw	a0, a1, a0
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	testParam32
	.type	testParam32, @function
testParam32:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
.LtestParam32$ENTRY:
	ld	s1, 80(s0)
	subw	s1, a5, s1
	ld	a5, 88(s0)
	subw	s1, s1, a5
	ld	a5, 40(s0)
	addw	a5, s1, a5
	addw	a5, a5, a4
	ld	a4, 112(s0)
	subw	a5, a5, a4
	ld	a4, 104(s0)
	subw	a5, a5, a4
	ld	a4, 136(s0)
	addw	a5, a5, a4
	ld	a4, 152(s0)
	addw	a4, a5, a4
	addw	a4, a4, a1
	ld	a1, 0(s0)
	addw	a4, a4, a1
	ld	a1, 96(s0)
	subw	a4, a4, a1
	ld	a1, 48(s0)
	addw	a1, a4, a1
	addw	a4, a1, a7
	ld	a1, 72(s0)
	addw	a4, a4, a1
	ld	a1, 64(s0)
	addw	a4, a4, a1
	ld	a1, 8(s0)
	addw	a4, a4, a1
	ld	a1, 120(s0)
	addw	a4, a4, a1
	ld	a1, 160(s0)
	addw	a4, a4, a1
	ld	a1, 168(s0)
	addw	a4, a4, a1
	ld	a1, 176(s0)
	addw	a4, a4, a1
	ld	a1, 24(s0)
	addw	a1, a4, a1
	addw	a2, a1, a2
	ld	a1, 32(s0)
	addw	a2, a2, a1
	ld	a1, 144(s0)
	addw	a2, a2, a1
	ld	a1, 56(s0)
	addw	a1, a2, a1
	addw	a1, a1, a6
	addw	a2, a1, a3
	ld	a1, 128(s0)
	addw	a2, a2, a1
	ld	a1, 184(s0)
	addw	a1, a2, a1
	addw	a1, a1, a0
	ld	a0, 16(s0)
	addw	a0, a1, a0
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	testParam8
	.type	testParam8, @function
testParam8:
.LtestParam8$ENTRY:
	addw	a0, a0, a3
	addw	a0, a0, a2
	addw	a0, a0, a1
	addw	a0, a0, a4
	addw	a0, a0, a6
	addw	a0, a0, a5
	addw	a0, a0, a7
	ret

	.globl	a0
	.section	.bss
	.type	a0, @object
a0:
	.zero	4

	.globl	a1
	.section	.bss
	.type	a1, @object
a1:
	.zero	4

	.globl	a10
	.section	.bss
	.type	a10, @object
a10:
	.zero	4

	.globl	a11
	.section	.bss
	.type	a11, @object
a11:
	.zero	4

	.globl	a12
	.section	.bss
	.type	a12, @object
a12:
	.zero	4

	.globl	a13
	.section	.bss
	.type	a13, @object
a13:
	.zero	4

	.globl	a14
	.section	.bss
	.type	a14, @object
a14:
	.zero	4

	.globl	a15
	.section	.bss
	.type	a15, @object
a15:
	.zero	4

	.globl	a16
	.section	.bss
	.type	a16, @object
a16:
	.zero	4

	.globl	a17
	.section	.bss
	.type	a17, @object
a17:
	.zero	4

	.globl	a18
	.section	.bss
	.type	a18, @object
a18:
	.zero	4

	.globl	a19
	.section	.bss
	.type	a19, @object
a19:
	.zero	4

	.globl	a2
	.section	.bss
	.type	a2, @object
a2:
	.zero	4

	.globl	a20
	.section	.bss
	.type	a20, @object
a20:
	.zero	4

	.globl	a21
	.section	.bss
	.type	a21, @object
a21:
	.zero	4

	.globl	a22
	.section	.bss
	.type	a22, @object
a22:
	.zero	4

	.globl	a23
	.section	.bss
	.type	a23, @object
a23:
	.zero	4

	.globl	a24
	.section	.bss
	.type	a24, @object
a24:
	.zero	4

	.globl	a25
	.section	.bss
	.type	a25, @object
a25:
	.zero	4

	.globl	a26
	.section	.bss
	.type	a26, @object
a26:
	.zero	4

	.globl	a27
	.section	.bss
	.type	a27, @object
a27:
	.zero	4

	.globl	a28
	.section	.bss
	.type	a28, @object
a28:
	.zero	4

	.globl	a29
	.section	.bss
	.type	a29, @object
a29:
	.zero	4

	.globl	a3
	.section	.bss
	.type	a3, @object
a3:
	.zero	4

	.globl	a30
	.section	.bss
	.type	a30, @object
a30:
	.zero	4

	.globl	a31
	.section	.bss
	.type	a31, @object
a31:
	.zero	4

	.globl	a32
	.section	.bss
	.type	a32, @object
a32:
	.zero	4

	.globl	a33
	.section	.bss
	.type	a33, @object
a33:
	.zero	4

	.globl	a34
	.section	.bss
	.type	a34, @object
a34:
	.zero	4

	.globl	a35
	.section	.bss
	.type	a35, @object
a35:
	.zero	4

	.globl	a36
	.section	.bss
	.type	a36, @object
a36:
	.zero	4

	.globl	a37
	.section	.bss
	.type	a37, @object
a37:
	.zero	4

	.globl	a38
	.section	.bss
	.type	a38, @object
a38:
	.zero	4

	.globl	a39
	.section	.bss
	.type	a39, @object
a39:
	.zero	4

	.globl	a4
	.section	.bss
	.type	a4, @object
a4:
	.zero	4

	.globl	a5
	.section	.bss
	.type	a5, @object
a5:
	.zero	4

	.globl	a6
	.section	.bss
	.type	a6, @object
a6:
	.zero	4

	.globl	a7
	.section	.bss
	.type	a7, @object
a7:
	.zero	4

	.globl	a8
	.section	.bss
	.type	a8, @object
a8:
	.zero	4

	.globl	a9
	.section	.bss
	.type	a9, @object
a9:
	.zero	4

