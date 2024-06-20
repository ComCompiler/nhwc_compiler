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
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.Lmain$ENTRY:
	la	a0, buf
	addi	s1, a0, 0
	mv	a0, s1
	call	getarray
	mv	s2, a0
	li	a0, 0
	mv	a1, s2
	call	merge_sort
	mv	a0, s2
	mv	a1, s1
	call	putarray
	mv	a0, zero
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	merge_sort
	.type	merge_sort, @function
merge_sort:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Lmerge_sort$ENTRY:
	mv	s3, a1
	mv	s1, a0
	la	s2, buf
	addiw	a1, s1, 1
	bge	a1, s3, .LBB2_15.60
.LBB2_2.5:
	addw	a2, s1, s3
	li	a0, -2147483647
	mul	a0, a0, a2
	srai	a1, a0, 32
	addw	a1, a1, a2
	srliw	a0, a1, 31
	addw	s4, a1, a0
	mv	a0, s1
	mv	a1, s4
	call	merge_sort
	mv	a0, s4
	mv	a1, s3
	call	merge_sort
	mv	a2, s1
	mv	a4, s4
	mv	a5, s1
.LBB2_3.10:
	blt	a5, s4, .LBB2_4.15
	j	.LBB2_9.32
.LBB2_4.15:
	blt	a4, s3, .LBB2_5.17
	j	.LBB2_9.32
.LBB2_5.17:
	addi	a1, s2, 0
	.word	0x20b7c5b3	# sh2add	a1, a5, a1
	lw	a6, 0(a1)
	addi	a1, s2, 0
	.word	0x20b745b3	# sh2add	a1, a4, a1
	lw	a3, 0(a1)
	addi	a1, s2, 400
	.word	0x20b645b3	# sh2add	a1, a2, a1
	blt	a6, a3, .LBB2_6.24
	j	.LBB2_7.26
.LBB2_6.24:
	sw	a6, 0(a1)
	addiw	a5, a5, 1
	j	.LBB2_8.28
.LBB2_7.26:
	sw	a3, 0(a1)
	addiw	a4, a4, 1
.LBB2_8.28:
	addiw	a2, a2, 1
	j	.LBB2_3.10
.LBB2_9.32:
	blt	a5, s4, .LBB2_10.36
	j	.LBB2_11.42
.LBB2_10.36:
	addi	a1, s2, 0
	.word	0x20b7c5b3	# sh2add	a1, a5, a1
	lw	a3, 0(a1)
	addi	a1, s2, 400
	.word	0x20b645b3	# sh2add	a1, a2, a1
	sw	a3, 0(a1)
	addiw	a5, a5, 1
	addiw	a2, a2, 1
	j	.LBB2_9.32
.LBB2_11.42:
	blt	a4, s3, .LBB2_12.46
	j	.LBB2_13.52
.LBB2_12.46:
	addi	a1, s2, 0
	.word	0x20b745b3	# sh2add	a1, a4, a1
	lw	a3, 0(a1)
	addi	a1, s2, 400
	.word	0x20b645b3	# sh2add	a1, a2, a1
	sw	a3, 0(a1)
	addiw	a4, a4, 1
	addiw	a2, a2, 1
	j	.LBB2_11.42
.LBB2_13.52:
	blt	s1, s3, .LBB2_14.55
	j	.LBB2_15.60
.LBB2_14.55:
	addi	a1, s2, 400
	.word	0x20b4c5b3	# sh2add	a1, s1, a1
	lw	a2, 0(a1)
	addi	a1, s2, 0
	.word	0x20b4c5b3	# sh2add	a1, s1, a1
	sw	a2, 0(a1)
	addiw	s1, s1, 1
	j	.LBB2_13.52
.LBB2_15.60:
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s4, 0(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.globl	buf
	.section	.bss
	.type	buf, @object
buf:
	.zero	800

