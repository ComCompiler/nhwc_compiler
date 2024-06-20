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
	call	select_sort
	mv	s2, a0
.LBB1_2.13:
	lw	a0, 0(s1)
	blt	s2, a0, .LBB1_3.17
	j	.LBB1_4.21
.LBB1_3.17:
	addi	a0, sp, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	call	putint
	li	a0, 10
	call	putch
	addiw	s2, s2, 1
	j	.LBB1_2.13
.LBB1_4.21:
	mv	a0, zero
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret

	.section	.text
	.align	4
	.globl	select_sort
	.type	select_sort, @function
select_sort:
	addi	sp, sp, -16
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.Lselect_sort$ENTRY:
	addiw	s2, a1, -1
	li	a4, 0
.LBB2_2.4:
	mv	s1, a4
	blt	s1, s2, .LBB2_3.7
	j	.LBB2_10.28
.LBB2_3.7:
	addiw	a4, s1, 1
	mv	a5, s1
	mv	a7, a4
.LBB2_4.9:
	.word	0x20a7c6b3	# sh2add	a3, a5, a0
	lw	a6, 0(a3)
	blt	a7, a1, .LBB2_5.15
	j	.LBB2_8.23
.LBB2_5.15:
	.word	0x20a8c633	# sh2add	a2, a7, a0
	lw	a2, 0(a2)
	blt	a2, a6, .LBB2_6.19
	j	.LBB2_7.20
.LBB2_6.19:
	mv	a5, a7
.LBB2_7.20:
	addiw	a7, a7, 1
	j	.LBB2_4.9
.LBB2_8.23:
	bne	a5, s1, .LBB2_9.25
	j	.LBB2_2.4
.LBB2_9.25:
	.word	0x20a4c633	# sh2add	a2, s1, a0
	lw	a5, 0(a2)
	sw	a5, 0(a3)
	sw	a6, 0(a2)
	j	.LBB2_2.4
.LBB2_10.28:
	mv	a0, zero
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	addi	sp, sp, 16
	ret

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

