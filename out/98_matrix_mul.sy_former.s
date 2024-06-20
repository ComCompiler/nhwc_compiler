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
.Lmain$ENTRY:
	la	a0, L
	la	a1, M
	la	s2, N
	li	a2, 3
	sw	a2, 0(s2)
	li	a2, 3
	sw	a2, 0(a1)
	li	a1, 3
	sw	a1, 0(a0)
	li	a1, 0
.LBB1_2.10:
	li	a0, 3
	blt	a1, a0, .LBB1_3.13
	j	.LBB1_4.27
.LBB1_3.13:
	fcvt.s.w	fa0, a1
	addi	a0, sp, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	fsw	fa0, 0(a0)
	fcvt.s.w	fa0, a1
	addi	a0, sp, 12
	.word	0x20a5c533	# sh2add	a0, a1, a0
	fsw	fa0, 0(a0)
	fcvt.s.w	fa0, a1
	addi	a0, sp, 24
	.word	0x20a5c533	# sh2add	a0, a1, a0
	fsw	fa0, 0(a0)
	fcvt.s.w	fa0, a1
	addi	a0, sp, 36
	.word	0x20a5c533	# sh2add	a0, a1, a0
	fsw	fa0, 0(a0)
	fcvt.s.w	fa0, a1
	addi	a0, sp, 48
	.word	0x20a5c533	# sh2add	a0, a1, a0
	fsw	fa0, 0(a0)
	fcvt.s.w	fa0, a1
	addi	a0, sp, 60
	.word	0x20a5c533	# sh2add	a0, a1, a0
	fsw	fa0, 0(a0)
	addiw	a1, a1, 1
	j	.LBB1_2.10
.LBB1_4.27:
	addi	a0, sp, 0
	addi	a1, sp, 12
	addi	a2, sp, 24
	addi	a3, sp, 36
	addi	a4, sp, 48
	addi	a5, sp, 60
	addi	a6, sp, 72
	addi	a7, sp, 96
	addi	s1, sp, 108
	sd	s1, -16(sp)
	addi	sp, sp, -16
	call	mul
	addi	sp, sp, 16
	mv	s1, a0
.LBB1_5.38:
	lw	a0, 0(s2)
	blt	s1, a0, .LBB1_6.42
	j	.LBB1_7.47
.LBB1_6.42:
	addi	a0, sp, 72
	.word	0x20a4c533	# sh2add	a0, s1, a0
	flw	fa0, 0(a0)
	fcvt.w.s	a0, fa0, rtz
	call	putint
	addiw	s1, s1, 1
	j	.LBB1_5.38
.LBB1_7.47:
	li	a0, 10
	call	putch
	li	s1, 0
.LBB1_8.48:
	lw	a0, 0(s2)
	blt	s1, a0, .LBB1_9.52
	j	.LBB1_10.57
.LBB1_9.52:
	addi	a0, sp, 96
	.word	0x20a4c533	# sh2add	a0, s1, a0
	flw	fa0, 0(a0)
	fcvt.w.s	a0, fa0, rtz
	call	putint
	addiw	s1, s1, 1
	j	.LBB1_8.48
.LBB1_10.57:
	li	a0, 10
	call	putch
	li	s1, 0
.LBB1_11.58:
	lw	a0, 0(s2)
	blt	s1, a0, .LBB1_12.62
	j	.LBB1_13.67
.LBB1_12.62:
	addi	a0, sp, 108
	.word	0x20a4c533	# sh2add	a0, s1, a0
	flw	fa0, 0(a0)
	fcvt.w.s	a0, fa0, rtz
	call	putint
	addiw	s1, s1, 1
	j	.LBB1_11.58
.LBB1_13.67:
	li	a0, 10
	call	putch
	mv	a0, zero
	ld	s1, 136(sp)
	ld	s2, 128(sp)
	ld	s0, 144(sp)
	ld	ra, 152(sp)
	addi	sp, sp, 160
	ret

	.section	.text
	.align	4
	.globl	mul
	.type	mul, @function
mul:
	addi	sp, sp, -80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	addi	s0, sp, 80
	fsd	fs0, 56(sp)
	fsd	fs1, 48(sp)
	fsd	fs2, 40(sp)
	fsd	fs3, 32(sp)
	fsd	fs4, 24(sp)
	fsd	fs5, 16(sp)
	fsd	fs6, 8(sp)
.Lmul$ENTRY:
	flw	fa5, 0(a0)
	flw	fs6, 0(a3)
	fmul.s	fa2, fa5, fs6
	flw	fa4, 4(a0)
	flw	fs5, 0(a4)
	fmul.s	fa1, fa4, fs5
	fadd.s	fa2, fa2, fa1
	flw	fa3, 8(a0)
	flw	fs4, 0(a5)
	fmul.s	fa1, fa3, fs4
	fadd.s	fa1, fa2, fa1
	fsw	fa1, 0(a6)
	flw	fs3, 4(a3)
	fmul.s	fa2, fa5, fs3
	flw	fs2, 4(a4)
	fmul.s	fa1, fa4, fs2
	fadd.s	fa2, fa2, fa1
	flw	fs1, 4(a5)
	fmul.s	fa1, fa3, fs1
	fadd.s	fa1, fa2, fa1
	fsw	fa1, 4(a6)
	flw	fs0, 8(a3)
	fmul.s	fa2, fa5, fs0
	flw	fa7, 8(a4)
	fmul.s	fa1, fa4, fa7
	fadd.s	fa2, fa2, fa1
	flw	fa6, 8(a5)
	fmul.s	fa1, fa3, fa6
	fadd.s	fa1, fa2, fa1
	fsw	fa1, 8(a6)
	flw	fa5, 0(a1)
	fmul.s	fa2, fa5, fs6
	flw	fa4, 4(a1)
	fmul.s	fa1, fa4, fs5
	fadd.s	fa2, fa2, fa1
	flw	fa3, 8(a1)
	fmul.s	fa1, fa3, fs4
	fadd.s	fa1, fa2, fa1
	fsw	fa1, 0(a7)
	fmul.s	fa2, fa5, fs3
	fmul.s	fa1, fa4, fs2
	fadd.s	fa2, fa2, fa1
	fmul.s	fa1, fa3, fs1
	fadd.s	fa1, fa2, fa1
	fsw	fa1, 4(a7)
	fmul.s	fa2, fa5, fs0
	fmul.s	fa1, fa4, fa7
	fadd.s	fa2, fa2, fa1
	fmul.s	fa1, fa3, fa6
	fadd.s	fa1, fa2, fa1
	fsw	fa1, 8(a7)
	ld	a0, 0(s0)
	flw	fa5, 0(a2)
	fmul.s	fa2, fa5, fs6
	flw	fa4, 4(a2)
	fmul.s	fa1, fa4, fs5
	fadd.s	fa2, fa2, fa1
	flw	fa3, 8(a2)
	fmul.s	fa1, fa3, fs4
	fadd.s	fa1, fa2, fa1
	fsw	fa1, 0(a0)
	ld	a0, 0(s0)
	fmul.s	fa2, fa5, fs3
	fmul.s	fa1, fa4, fs2
	fadd.s	fa2, fa2, fa1
	fmul.s	fa1, fa3, fs1
	fadd.s	fa1, fa2, fa1
	fsw	fa1, 4(a0)
	ld	a0, 0(s0)
	fmul.s	fa2, fa5, fs0
	fmul.s	fa1, fa4, fa7
	fadd.s	fa2, fa2, fa1
	fmul.s	fa1, fa3, fa6
	fadd.s	fa1, fa2, fa1
	fsw	fa1, 8(a0)
	mv	a0, zero
	fld	fs0, 56(sp)
	fld	fs1, 48(sp)
	fld	fs2, 40(sp)
	fld	fs3, 32(sp)
	fld	fs4, 24(sp)
	fld	fs5, 16(sp)
	fld	fs6, 8(sp)
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret

	.globl	L
	.section	.bss
	.type	L, @object
L:
	.zero	4

	.globl	M
	.section	.bss
	.type	M, @object
M:
	.zero	4

	.globl	N
	.section	.bss
	.type	N, @object
N:
	.zero	4

