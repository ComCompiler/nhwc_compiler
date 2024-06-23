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
	.globl	MAX
	.type	MAX, @function
MAX:
.LMAX$ENTRY:
	beq	a0, a1, .LBB1_4.7
.LBB1_2.4:
	blt	a1, a0, .LBB1_4.7
.LBB1_3.6:
	mv	a0, a1
.LBB1_4.7:
	ret

	.section	.text
	.align	4
	.globl	longest_common_subseq
	.type	longest_common_subseq, @function
longest_common_subseq:
	addi	sp, sp, -1120
	sd	ra, 1112(sp)
	sd	s0, 1104(sp)
	addi	s0, sp, 1120
	sd	s1, 1096(sp)
	sd	s2, 1088(sp)
	sd	s3, 1080(sp)
	sd	s4, 1072(sp)
	sd	s5, 1064(sp)
	sd	s6, 1056(sp)
	sd	s7, 1048(sp)
	sd	s8, 1040(sp)
	sd	s9, 1032(sp)
	sd	s10, 1024(sp)
.Llongest_common_subseq$ENTRY:
	mv	s2, a2
	mv	s8, a3
	mv	s5, a0
	mv	s10, a1
	addi	a0, sp, 0
	li	a1, 0
	li	a2, 1024
	call	memset
	li	s7, 1
.LBB2_2.7:
	addiw	a2, s7, -1
	.word	0x21564b33	# sh2add	s6, a2, s5
	addi	a1, sp, 0
	slli	a0, s7, 6
	add	s4, a1, a0
	addi	a1, sp, 0
	slli	a0, a2, 6
	add	s3, a1, a0
	li	s9, 1
	bge	s10, s7, .LBB2_3.14
	j	.LBB2_9.38
.LBB2_3.14:
	bge	s8, s9, .LBB2_4.17
	j	.LBB2_8.36
.LBB2_4.17:
	lw	a3, 0(s6)
	addiw	a2, s9, -1
	.word	0x21264533	# sh2add	a0, a2, s2
	lw	a1, 0(a0)
	addi	a0, s4, 0
	.word	0x20acc4b3	# sh2add	s1, s9, a0
	beq	a3, a1, .LBB2_5.24
	j	.LBB2_6.28
.LBB2_5.24:
	addi	a0, s3, 0
	.word	0x20a64533	# sh2add	a0, a2, a0
	lw	a0, 0(a0)
	addiw	a0, a0, 1
	sw	a0, 0(s1)
	j	.LBB2_7.34
.LBB2_6.28:
	addi	a0, s3, 0
	.word	0x20acc533	# sh2add	a0, s9, a0
	lw	a0, 0(a0)
	addi	a1, s4, 0
	.word	0x20b645b3	# sh2add	a1, a2, a1
	lw	a1, 0(a1)
	call	MAX
	sw	a0, 0(s1)
.LBB2_7.34:
	addiw	s9, s9, 1
	j	.LBB2_3.14
.LBB2_8.36:
	addiw	s7, s7, 1
	j	.LBB2_2.7
.LBB2_9.38:
	addi	a1, sp, 0
	slli	a0, s10, 6
	add	a0, a1, a0
	addi	a0, a0, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	a0, 0(a0)
	ld	s1, 1096(sp)
	ld	s2, 1088(sp)
	ld	s3, 1080(sp)
	ld	s4, 1072(sp)
	ld	s5, 1064(sp)
	ld	s6, 1056(sp)
	ld	s7, 1048(sp)
	ld	s8, 1040(sp)
	ld	s9, 1032(sp)
	ld	s10, 1024(sp)
	ld	s0, 1104(sp)
	ld	ra, 1112(sp)
	addi	sp, sp, 1120
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
	sd	s3, 120(sp)
.Lmain$ENTRY:
	la	s1, __const_init.B.1
	la	a0, __const_init.A.0
	addi	s3, sp, 0
	addi	a1, a0, 0
	mv	a0, s3
	li	a2, 60
	call	memcpy
	addi	s2, sp, 60
	addi	a1, s1, 0
	mv	a0, s2
	li	a2, 52
	call	memcpy
	mv	a0, s3
	li	a1, 15
	call	max_sum_nonadjacent
	call	putint
	li	a0, 10
	call	putch
	mv	a0, s3
	li	a1, 15
	mv	a2, s2
	li	a3, 13
	call	longest_common_subseq
	call	putint
	li	a0, 10
	call	putch
	mv	a0, zero
	ld	s1, 136(sp)
	ld	s2, 128(sp)
	ld	s3, 120(sp)
	ld	s0, 144(sp)
	ld	ra, 152(sp)
	addi	sp, sp, 160
	ret

	.section	.text
	.align	4
	.globl	max_sum_nonadjacent
	.type	max_sum_nonadjacent, @function
max_sum_nonadjacent:
	addi	sp, sp, -112
	sd	ra, 104(sp)
	sd	s0, 96(sp)
	addi	s0, sp, 112
	sd	s1, 88(sp)
	sd	s2, 80(sp)
	sd	s3, 72(sp)
	sd	s4, 64(sp)
.Lmax_sum_nonadjacent$ENTRY:
	mv	s4, a1
	mv	s2, a0
	addi	a0, sp, 0
	li	a1, 0
	li	a2, 64
	call	memset
	lw	a0, 0(s2)
	sw	a0, 0(sp)
	lw	a1, 4(s2)
	call	MAX
	sw	a0, 4(sp)
	li	s3, 2
.LBB4_2.11:
	blt	s3, s4, .LBB4_3.14
	j	.LBB4_4.27
.LBB4_3.14:
	.word	0x2129c533	# sh2add	a0, s3, s2
	lw	a3, 0(a0)
	addiw	a1, s3, -2
	addi	a0, sp, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a2, 0(a0)
	addiw	a1, s3, -1
	addi	a0, sp, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a1, 0(a0)
	addi	a0, sp, 0
	.word	0x20a9c4b3	# sh2add	s1, s3, a0
	addw	a0, a2, a3
	call	MAX
	sw	a0, 0(s1)
	addiw	s3, s3, 1
	j	.LBB4_2.11
.LBB4_4.27:
	addiw	a1, s4, -1
	addi	a0, sp, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a0, 0(a0)
	ld	s1, 88(sp)
	ld	s2, 80(sp)
	ld	s3, 72(sp)
	ld	s4, 64(sp)
	ld	s0, 96(sp)
	ld	ra, 104(sp)
	addi	sp, sp, 112
	ret

	.section	.data
	.type	__const_init.A.0, @object
__const_init.A.0:
	.word	8
	.word	7
	.word	4
	.word	1
	.word	2
	.word	7
	.zero	4
	.word	1
	.word	9
	.word	3
	.word	4
	.word	8
	.word	3
	.word	7
	.zero	4

	.section	.data
	.type	__const_init.B.1, @object
__const_init.B.1:
	.word	3
	.word	9
	.word	7
	.word	1
	.word	4
	.word	2
	.word	4
	.word	3
	.word	6
	.word	8
	.zero	4
	.word	1
	.word	5

