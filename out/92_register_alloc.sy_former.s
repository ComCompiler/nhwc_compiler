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
	.globl	func
	.type	func, @function
func:
	addi	sp, sp, -240
	sd	ra, 232(sp)
	sd	s0, 224(sp)
	addi	s0, sp, 240
	sd	s1, 216(sp)
	sd	s2, 208(sp)
	sd	s3, 200(sp)
	sd	s4, 192(sp)
	sd	s5, 184(sp)
	sd	s6, 176(sp)
	sd	s7, 168(sp)
	sd	s8, 160(sp)
	sd	s9, 152(sp)
	sd	s10, 144(sp)
	sd	s11, 136(sp)
.Lfunc$ENTRY:
	# spill i32 %86
	sw	a0, 16(sp)
	# spill i32 %82
	sw	a1, 12(sp)
	la	s1, a21
	la	s2, a23
	la	s3, a5
	la	s4, a15
	la	s5, a13
	la	s6, a29
	la	s11, a31
	la	s10, a7
	la	s9, a9
	la	s8, a20
	la	s7, a19
	la	a0, a4
	# spill i64 %29
	sd	a0, 120(sp)
	la	a0, a27
	# spill i64 %27
	sd	a0, 112(sp)
	la	a0, a10
	# spill i64 %25
	sd	a0, 104(sp)
	la	a0, a17
	# spill i64 %23
	sd	a0, 96(sp)
	la	a0, a25
	# spill i64 %21
	sd	a0, 88(sp)
	la	a0, a12
	# spill i64 %19
	sd	a0, 80(sp)
	la	a0, a26
	# spill i64 %17
	sd	a0, 72(sp)
	la	a0, a2
	# spill i64 %15
	sd	a0, 64(sp)
	la	a0, a3
	# spill i64 %13
	sd	a0, 56(sp)
	la	a0, a28
	# spill i64 %11
	sd	a0, 48(sp)
	la	a0, a11
	# spill i64 %9
	sd	a0, 40(sp)
	la	a0, a1
	# spill i64 %7
	sd	a0, 32(sp)
	la	a0, a18
	# spill i64 %5
	sd	a0, 24(sp)
	call	getint
	# spill i32 %1
	sw	a0, 0(sp)
	call	getint
	# spill i32 %2
	sw	a0, 4(sp)
	call	getint
	# spill i32 %3
	sw	a0, 8(sp)
	call	getint
	# reload i64 %5
	ld	a1, 24(sp)
	lw	a2, 0(a1)
	# reload i64 %7
	ld	a1, 32(sp)
	lw	a4, 0(a1)
	# reload i64 %9
	ld	a1, 40(sp)
	lw	a5, 0(a1)
	# reload i64 %11
	ld	a1, 48(sp)
	lw	a6, 0(a1)
	# reload i64 %13
	ld	a1, 56(sp)
	lw	a7, 0(a1)
	# reload i64 %15
	ld	a1, 64(sp)
	lw	t0, 0(a1)
	# reload i64 %17
	ld	a1, 72(sp)
	lw	t1, 0(a1)
	# reload i64 %19
	ld	a1, 80(sp)
	lw	t2, 0(a1)
	# reload i64 %21
	ld	a1, 88(sp)
	lw	t3, 0(a1)
	# reload i64 %23
	ld	a1, 96(sp)
	lw	t4, 0(a1)
	# reload i64 %25
	ld	a1, 104(sp)
	lw	t5, 0(a1)
	# reload i64 %27
	ld	a1, 112(sp)
	lw	a3, 0(a1)
	# reload i64 %29
	ld	a1, 120(sp)
	lw	a1, 0(a1)
	lw	s7, 0(s7)
	lw	s8, 0(s8)
	lw	s9, 0(s9)
	addiw	s9, s9, 2
	subw	s8, s9, s8
	addw	s7, s8, s7
	subw	a1, s7, a1
	addw	a1, a1, a3
	addiw	a3, a1, 2
	lw	a1, 0(s10)
	slliw	a1, a1, 1
	addw	a1, a3, a1
	addiw	a3, a1, 11
	# reload i32 %2
	lw	a1, 4(sp)
	addw	a3, a3, a1
	lw	a1, 0(s11)
	slliw	a1, a1, 1
	addw	a1, a3, a1
	addiw	a3, a1, 1
	lw	a1, 0(s6)
	slliw	a1, a1, 1
	addw	a1, a3, a1
	addiw	a1, a1, 3
	subw	a3, a1, t5
	lw	a1, 0(s5)
	slliw	a1, a1, 1
	addw	a1, a3, a1
	addw	a1, a1, t4
	addiw	a1, a1, 4
	addw	a3, a1, t3
	# reload i32 %1
	lw	a1, 0(sp)
	addw	a1, a3, a1
	addiw	a1, a1, 3
	subw	a1, a1, t2
	subw	a1, a1, t1
	subw	a1, a1, t0
	addiw	a1, a1, 2
	addw	a3, a1, a7
	# reload i32 %3
	lw	a1, 8(sp)
	addw	a1, a3, a1
	addiw	a1, a1, 1
	subw	a1, a1, a6
	addiw	a1, a1, 7
	addw	a1, a1, a5
	addiw	a1, a1, 1
	addw	a1, a1, a0
	# reload i32 %82
	lw	a0, 12(sp)
	subw	a0, a1, a0
	addiw	a0, a0, 3
	addw	a1, a0, a4
	# reload i32 %86
	lw	a0, 16(sp)
	addw	a1, a1, a0
	lw	a0, 0(s4)
	slliw	a0, a0, 1
	addw	a0, a1, a0
	addiw	a1, a0, 4
	lw	a0, 0(s3)
	slliw	a0, a0, 1
	addw	a0, a1, a0
	addiw	a1, a0, 6
	lw	a0, 0(s2)
	slliw	a0, a0, 1
	addw	a1, a1, a0
	lw	a0, 0(s1)
	slliw	a0, a0, 1
	addw	a0, a1, a0
	subw	a0, a0, a2
	ld	s1, 216(sp)
	ld	s2, 208(sp)
	ld	s3, 200(sp)
	ld	s4, 192(sp)
	ld	s5, 184(sp)
	ld	s6, 176(sp)
	ld	s7, 168(sp)
	ld	s8, 160(sp)
	ld	s9, 152(sp)
	ld	s10, 144(sp)
	ld	s11, 136(sp)
	ld	s0, 224(sp)
	ld	ra, 232(sp)
	addi	sp, sp, 240
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
.Lmain$ENTRY:
	call	getint
	addiw	a1, a0, 18
	call	func
	mv	s1, a0
	mv	a0, s1
	call	putint
	mv	a0, s1
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.globl	a1
	.section	.data
	.type	a1, @object
a1:
	.word	1

	.globl	a10
	.section	.data
	.type	a10, @object
a10:
	.word	10

	.globl	a11
	.section	.data
	.type	a11, @object
a11:
	.word	11

	.globl	a12
	.section	.data
	.type	a12, @object
a12:
	.word	12

	.globl	a13
	.section	.data
	.type	a13, @object
a13:
	.word	13

	.globl	a14
	.section	.data
	.type	a14, @object
a14:
	.word	14

	.globl	a15
	.section	.data
	.type	a15, @object
a15:
	.word	15

	.globl	a16
	.section	.data
	.type	a16, @object
a16:
	.word	16

	.globl	a17
	.section	.data
	.type	a17, @object
a17:
	.word	1

	.globl	a18
	.section	.data
	.type	a18, @object
a18:
	.word	2

	.globl	a19
	.section	.data
	.type	a19, @object
a19:
	.word	3

	.globl	a2
	.section	.data
	.type	a2, @object
a2:
	.word	2

	.globl	a20
	.section	.data
	.type	a20, @object
a20:
	.word	4

	.globl	a21
	.section	.data
	.type	a21, @object
a21:
	.word	5

	.globl	a22
	.section	.data
	.type	a22, @object
a22:
	.word	6

	.globl	a23
	.section	.data
	.type	a23, @object
a23:
	.word	7

	.globl	a24
	.section	.data
	.type	a24, @object
a24:
	.word	8

	.globl	a25
	.section	.data
	.type	a25, @object
a25:
	.word	9

	.globl	a26
	.section	.data
	.type	a26, @object
a26:
	.word	10

	.globl	a27
	.section	.data
	.type	a27, @object
a27:
	.word	11

	.globl	a28
	.section	.data
	.type	a28, @object
a28:
	.word	12

	.globl	a29
	.section	.data
	.type	a29, @object
a29:
	.word	13

	.globl	a3
	.section	.data
	.type	a3, @object
a3:
	.word	3

	.globl	a30
	.section	.data
	.type	a30, @object
a30:
	.word	14

	.globl	a31
	.section	.data
	.type	a31, @object
a31:
	.word	15

	.globl	a32
	.section	.data
	.type	a32, @object
a32:
	.word	16

	.globl	a4
	.section	.data
	.type	a4, @object
a4:
	.word	4

	.globl	a5
	.section	.data
	.type	a5, @object
a5:
	.word	5

	.globl	a6
	.section	.data
	.type	a6, @object
a6:
	.word	6

	.globl	a7
	.section	.data
	.type	a7, @object
a7:
	.word	7

	.globl	a8
	.section	.data
	.type	a8, @object
a8:
	.word	8

	.globl	a9
	.section	.data
	.type	a9, @object
a9:
	.word	9

