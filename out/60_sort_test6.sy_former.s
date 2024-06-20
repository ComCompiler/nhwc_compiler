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
	.globl	counting_sort
	.type	counting_sort, @function
counting_sort:
	addi	sp, sp, -48
.Lcounting_sort$ENTRY:
	li	a4, 0
.LBB1_2.5:
	li	a3, 10
	li	a5, 0
	blt	a4, a3, .LBB1_3.8
	j	.LBB1_4.11
.LBB1_3.8:
	addi	a3, sp, 0
	.word	0x20d746b3	# sh2add	a3, a4, a3
	sw	zero, 0(a3)
	addiw	a4, a4, 1
	j	.LBB1_2.5
.LBB1_4.11:
	li	a7, 1
	blt	a5, a2, .LBB1_5.14
	j	.LBB1_6.21
.LBB1_5.14:
	.word	0x20a7c6b3	# sh2add	a3, a5, a0
	lw	a4, 0(a3)
	addi	a3, sp, 0
	.word	0x20d746b3	# sh2add	a3, a4, a3
	lw	a4, 0(a3)
	addiw	a4, a4, 1
	sw	a4, 0(a3)
	addiw	a5, a5, 1
	j	.LBB1_4.11
.LBB1_6.21:
	li	a3, 10
	blt	a7, a3, .LBB1_7.24
	j	.LBB1_8.32
.LBB1_7.24:
	addi	a3, sp, 0
	.word	0x20d8c733	# sh2add	a4, a7, a3
	lw	a6, 0(a4)
	addiw	a5, a7, -1
	addi	a3, sp, 0
	.word	0x20d7c6b3	# sh2add	a3, a5, a3
	lw	a3, 0(a3)
	addw	a3, a6, a3
	sw	a3, 0(a4)
	addiw	a7, a7, 1
	j	.LBB1_6.21
.LBB1_8.32:
	blt	zero, a2, .LBB1_9.35
	j	.LBB1_10.43
.LBB1_9.35:
	addiw	a2, a2, -1
	.word	0x20a646b3	# sh2add	a3, a2, a0
	lw	a5, 0(a3)
	addi	a3, sp, 0
	.word	0x20d7c6b3	# sh2add	a3, a5, a3
	lw	a4, 0(a3)
	addiw	a4, a4, -1
	sw	a4, 0(a3)
	.word	0x20b746b3	# sh2add	a3, a4, a1
	sw	a5, 0(a3)
	j	.LBB1_8.32
.LBB1_10.43:
	mv	a0, zero
	addi	sp, sp, 48
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
	addi	sp, sp, -112
	sd	ra, 104(sp)
	sd	s0, 96(sp)
	addi	s0, sp, 112
	sd	s1, 88(sp)
	sd	s2, 80(sp)
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
	addi	a1, sp, 40
	li	a2, 10
	call	counting_sort
	mv	s2, a0
.LBB2_2.15:
	lw	a0, 0(s1)
	blt	s2, a0, .LBB2_3.19
	j	.LBB2_4.23
.LBB2_3.19:
	addi	a0, sp, 40
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	call	putint
	li	a0, 10
	call	putch
	addiw	s2, s2, 1
	j	.LBB2_2.15
.LBB2_4.23:
	mv	a0, zero
	ld	s1, 88(sp)
	ld	s2, 80(sp)
	ld	s0, 96(sp)
	ld	ra, 104(sp)
	addi	sp, sp, 112
	ret

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

