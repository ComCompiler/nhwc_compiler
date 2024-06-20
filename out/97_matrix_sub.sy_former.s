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
	addi	sp, sp, -144
	sd	ra, 136(sp)
	sd	s0, 128(sp)
	addi	s0, sp, 144
	sd	s1, 120(sp)
.Lmain$ENTRY:
	la	a0, L
	la	a1, M
	la	a2, N
	li	a3, 3
	sw	a3, 0(a2)
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
	call	sub
	addi	sp, sp, 16
	mv	s1, a0
.LBB1_5.38:
	li	a0, 3
	blt	s1, a0, .LBB1_6.41
	j	.LBB1_7.46
.LBB1_6.41:
	addi	a0, sp, 72
	.word	0x20a4c533	# sh2add	a0, s1, a0
	flw	fa0, 0(a0)
	fcvt.w.s	a0, fa0, rtz
	call	putint
	addiw	s1, s1, 1
	j	.LBB1_5.38
.LBB1_7.46:
	li	a0, 10
	call	putch
	li	s1, 0
.LBB1_8.47:
	li	a0, 3
	blt	s1, a0, .LBB1_9.50
	j	.LBB1_10.55
.LBB1_9.50:
	addi	a0, sp, 96
	.word	0x20a4c533	# sh2add	a0, s1, a0
	flw	fa0, 0(a0)
	fcvt.w.s	a0, fa0, rtz
	call	putint
	addiw	s1, s1, 1
	j	.LBB1_8.47
.LBB1_10.55:
	li	a0, 10
	call	putch
	li	s1, 0
.LBB1_11.56:
	li	a0, 3
	blt	s1, a0, .LBB1_12.59
	j	.LBB1_13.64
.LBB1_12.59:
	addi	a0, sp, 108
	.word	0x20a4c533	# sh2add	a0, s1, a0
	flw	fa0, 0(a0)
	fcvt.w.s	a0, fa0, rtz
	call	putint
	addiw	s1, s1, 1
	j	.LBB1_11.56
.LBB1_13.64:
	li	a0, 10
	call	putch
	mv	a0, zero
	ld	s1, 120(sp)
	ld	s0, 128(sp)
	ld	ra, 136(sp)
	addi	sp, sp, 144
	ret

	.section	.text
	.align	4
	.globl	sub
	.type	sub, @function
sub:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
.Lsub$ENTRY:
	li	s3, 0
.LBB2_2.10:
	li	s1, 3
	blt	s3, s1, .LBB2_3.13
	j	.LBB2_4.33
.LBB2_3.13:
	.word	0x2109c933	# sh2add	s2, s3, a6
	.word	0x20a9c4b3	# sh2add	s1, s3, a0
	flw	fa2, 0(s1)
	.word	0x20d9c4b3	# sh2add	s1, s3, a3
	flw	fa1, 0(s1)
	fsub.s	fa1, fa2, fa1
	fsw	fa1, 0(s2)
	.word	0x2119c933	# sh2add	s2, s3, a7
	.word	0x20b9c4b3	# sh2add	s1, s3, a1
	flw	fa2, 0(s1)
	.word	0x20e9c4b3	# sh2add	s1, s3, a4
	flw	fa1, 0(s1)
	fsub.s	fa1, fa2, fa1
	fsw	fa1, 0(s2)
	ld	s1, 0(s0)
	.word	0x2099c933	# sh2add	s2, s3, s1
	.word	0x20c9c4b3	# sh2add	s1, s3, a2
	flw	fa2, 0(s1)
	.word	0x20f9c4b3	# sh2add	s1, s3, a5
	flw	fa1, 0(s1)
	fsub.s	fa1, fa2, fa1
	fsw	fa1, 0(s2)
	addiw	s3, s3, 1
	j	.LBB2_2.10
.LBB2_4.33:
	mv	a0, zero
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
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

