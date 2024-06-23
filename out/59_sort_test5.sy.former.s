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
	.globl	heap_ajust
	.type	heap_ajust, @function
heap_ajust:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Lheap_ajust$ENTRY:
	mv	s1, a0
	mv	s3, a2
	slliw	a0, a1, 1
	addiw	a4, a0, 1
	addiw	s4, s3, 1
.LBB1_2.7:
	blt	a4, s4, .LBB1_3.11
	j	.LBB1_8.32
.LBB1_3.11:
	mv	s2, a4
	blt	a4, s3, .LBB1_4.13
	j	.LBB1_6.21
.LBB1_4.13:
	.word	0x20974533	# sh2add	a0, a4, s1
	lw	a3, 0(a0)
	addiw	a2, a4, 1
	.word	0x20964533	# sh2add	a0, a2, s1
	lw	a0, 0(a0)
	mv	s2, a4
	blt	a3, a0, .LBB1_5.20
	j	.LBB1_6.21
.LBB1_5.20:
	mv	s2, a2
.LBB1_6.21:
	.word	0x2095c533	# sh2add	a0, a1, s1
	lw	a2, 0(a0)
	.word	0x20994533	# sh2add	a0, s2, s1
	lw	a0, 0(a0)
	blt	a0, a2, .LBB1_8.32
.LBB1_7.28:
	mv	a0, s1
	mv	a2, s2
	call	swap
	slliw	a0, s2, 1
	addiw	a4, a0, 1
	mv	a1, s2
	j	.LBB1_2.7
.LBB1_8.32:
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
	.globl	heap_sort
	.type	heap_sort, @function
heap_sort:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
.Lheap_sort$ENTRY:
	mv	s1, a0
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a2, a0, 32
	addw	a2, a2, a1
	srliw	a0, a2, 31
	addw	a0, a2, a0
	addiw	s3, a0, -1
	addiw	s2, a1, -1
.LBB2_2.6:
	li	a0, -1
	blt	a0, s3, .LBB2_3.9
	j	.LBB2_4.12
.LBB2_3.9:
	mv	a0, s1
	mv	a1, s3
	mv	a2, s2
	call	heap_ajust
	addiw	s3, s3, -1
	j	.LBB2_2.6
.LBB2_4.12:
	blt	zero, s2, .LBB2_5.15
	j	.LBB2_6.19
.LBB2_5.15:
	mv	a0, s1
	li	a1, 0
	mv	a2, s2
	call	swap
	addiw	s2, s2, -1
	mv	a0, s1
	li	a1, 0
	mv	a2, s2
	call	heap_ajust
	j	.LBB2_4.12
.LBB2_6.19:
	mv	a0, zero
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
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
	li	a1, 10
	call	heap_sort
	mv	s2, a0
.LBB3_2.13:
	lw	a0, 0(s1)
	blt	s2, a0, .LBB3_3.17
	j	.LBB3_4.21
.LBB3_3.17:
	addi	a0, sp, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	call	putint
	li	a0, 10
	call	putch
	addiw	s2, s2, 1
	j	.LBB3_2.13
.LBB3_4.21:
	mv	a0, zero
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret

	.section	.text
	.align	4
	.globl	swap
	.type	swap, @function
swap:
.Lswap$ENTRY:
	.word	0x20a5c5b3	# sh2add	a1, a1, a0
	lw	a3, 0(a1)
	.word	0x20a64533	# sh2add	a0, a2, a0
	lw	a2, 0(a0)
	sw	a2, 0(a1)
	sw	a3, 0(a0)
	mv	a0, zero
	ret

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

