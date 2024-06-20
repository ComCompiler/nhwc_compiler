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
	.globl	add
	.type	add, @function
add:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Ladd$ENTRY:
	la	s1, M
	lw	s4, 0(s1)
	li	s3, 0
.LBB1_2.11:
	blt	s3, s4, .LBB1_3.14
	j	.LBB1_4.34
.LBB1_3.14:
	.word	0x2109c933	# sh2add	s2, s3, a6
	.word	0x20a9c4b3	# sh2add	s1, s3, a0
	flw	fa2, 0(s1)
	.word	0x20d9c4b3	# sh2add	s1, s3, a3
	flw	fa1, 0(s1)
	fadd.s	fa1, fa2, fa1
	fsw	fa1, 0(s2)
	.word	0x2119c933	# sh2add	s2, s3, a7
	.word	0x20b9c4b3	# sh2add	s1, s3, a1
	flw	fa2, 0(s1)
	.word	0x20e9c4b3	# sh2add	s1, s3, a4
	flw	fa1, 0(s1)
	fadd.s	fa1, fa2, fa1
	fsw	fa1, 0(s2)
	ld	s1, 0(s0)
	.word	0x2099c933	# sh2add	s2, s3, s1
	.word	0x20c9c4b3	# sh2add	s1, s3, a2
	flw	fa2, 0(s1)
	.word	0x20f9c4b3	# sh2add	s1, s3, a5
	flw	fa1, 0(s1)
	fadd.s	fa1, fa2, fa1
	fsw	fa1, 0(s2)
	addiw	s3, s3, 1
	j	.LBB1_2.11
.LBB1_4.34:
	mv	a0, zero
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s4, 0(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

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
.LBB2_2.10:
	li	a0, 3
	blt	a1, a0, .LBB2_3.13
	j	.LBB2_4.27
.LBB2_3.13:
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
	j	.LBB2_2.10
.LBB2_4.27:
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
	call	add
	addi	sp, sp, 16
	mv	s1, a0
.LBB2_5.38:
	lw	a0, 0(s2)
	blt	s1, a0, .LBB2_6.42
	j	.LBB2_7.47
.LBB2_6.42:
	addi	a0, sp, 72
	.word	0x20a4c533	# sh2add	a0, s1, a0
	flw	fa0, 0(a0)
	fcvt.w.s	a0, fa0, rtz
	call	putint
	addiw	s1, s1, 1
	j	.LBB2_5.38
.LBB2_7.47:
	li	a0, 10
	call	putch
	li	s1, 0
.LBB2_8.48:
	lw	a0, 0(s2)
	blt	s1, a0, .LBB2_9.52
	j	.LBB2_10.57
.LBB2_9.52:
	addi	a0, sp, 96
	.word	0x20a4c533	# sh2add	a0, s1, a0
	flw	fa0, 0(a0)
	fcvt.w.s	a0, fa0, rtz
	call	putint
	addiw	s1, s1, 1
	j	.LBB2_8.48
.LBB2_10.57:
	li	a0, 10
	call	putch
	li	s1, 0
.LBB2_11.58:
	lw	a0, 0(s2)
	blt	s1, a0, .LBB2_12.62
	j	.LBB2_13.67
.LBB2_12.62:
	addi	a0, sp, 108
	.word	0x20a4c533	# sh2add	a0, s1, a0
	flw	fa0, 0(a0)
	fcvt.w.s	a0, fa0, rtz
	call	putint
	addiw	s1, s1, 1
	j	.LBB2_11.58
.LBB2_13.67:
	li	a0, 10
	call	putch
	mv	a0, zero
	ld	s1, 136(sp)
	ld	s2, 128(sp)
	ld	s0, 144(sp)
	ld	ra, 152(sp)
	addi	sp, sp, 160
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

