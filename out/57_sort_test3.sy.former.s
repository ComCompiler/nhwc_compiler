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
	.globl	QuickSort
	.type	QuickSort, @function
QuickSort:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.LQuickSort$ENTRY:
	mv	s1, a0
	mv	s2, a2
	blt	a1, s2, .LBB1_2.5
	j	.LBB1_14.40
.LBB1_2.5:
	.word	0x2095c533	# sh2add	a0, a1, s1
	lw	s4, 0(a0)
	addiw	a7, s4, -1
	mv	a5, s2
	mv	a6, a1
.LBB1_3.9:
	.word	0x20984533	# sh2add	a0, a6, s1
	addiw	s3, a6, 1
	mv	a3, a5
	blt	a6, a5, .LBB1_4.15
	j	.LBB1_13.36
.LBB1_4.15:
	mv	a5, a3
	.word	0x2097c633	# sh2add	a2, a5, s1
	lw	a4, 0(a2)
	addiw	a3, a5, -1
	blt	a6, a5, .LBB1_5.21
	j	.LBB1_6.23
.LBB1_5.21:
	blt	a7, a4, .LBB1_4.15
.LBB1_6.23:
	blt	a6, a5, .LBB1_7.24
	j	.LBB1_8.25
.LBB1_7.24:
	sw	a4, 0(a0)
	mv	a6, s3
.LBB1_8.25:
	.word	0x20984533	# sh2add	a0, a6, s1
	lw	a0, 0(a0)
	blt	a6, a5, .LBB1_9.30
	j	.LBB1_11.34
.LBB1_9.30:
	blt	a0, s4, .LBB1_10.32
	j	.LBB1_11.34
.LBB1_10.32:
	addiw	a6, a6, 1
	j	.LBB1_8.25
.LBB1_11.34:
	blt	a6, a5, .LBB1_12.35
	j	.LBB1_3.9
.LBB1_12.35:
	sw	a0, 0(a2)
	mv	a5, a3
	j	.LBB1_3.9
.LBB1_13.36:
	sw	s4, 0(a0)
	addiw	a2, a6, -1
	mv	a0, s1
	call	QuickSort
	mv	a0, s1
	mv	a1, s3
	mv	a2, s2
	call	QuickSort
.LBB1_14.40:
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
	addi	sp, sp, -80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	addi	s0, sp, 80
	sd	s1, 56(sp)
	sd	s2, 48(sp)
.Lmain$ENTRY:
	la	s1, n
	li	a0, 10
	sw	a0, 0(s1)
	addi	a0, sp, 0
	li	a1, 4
	sw	a1, 0(sp)
	li	a1, 3
	sw	a1, 4(sp)
	li	a1, 9
	sw	a1, 8(sp)
	li	a1, 2
	sw	a1, 12(sp)
	sw	zero, 16(sp)
	li	a1, 1
	sw	a1, 20(sp)
	li	a1, 6
	sw	a1, 24(sp)
	li	a1, 5
	sw	a1, 28(sp)
	li	a1, 7
	sw	a1, 32(sp)
	li	a1, 8
	sw	a1, 36(sp)
	li	a1, 0
	li	a2, 9
	call	QuickSort
	mv	s2, a0
.LBB2_2.13:
	lw	a0, 0(s1)
	blt	s2, a0, .LBB2_3.17
	j	.LBB2_4.21
.LBB2_3.17:
	addi	a0, sp, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	call	putint
	li	a0, 10
	call	putch
	addiw	s2, s2, 1
	j	.LBB2_2.13
.LBB2_4.21:
	mv	a0, zero
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

