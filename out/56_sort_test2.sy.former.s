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
	.globl	insertsort
	.type	insertsort, @function
insertsort:
.Linsertsort$ENTRY:
	la	a1, n
	lw	a7, 0(a1)
	li	a6, 1
.LBB1_2.3:
	blt	a6, a7, .LBB1_3.6
	j	.LBB1_8.23
.LBB1_3.6:
	.word	0x20a845b3	# sh2add	a1, a6, a0
	lw	a5, 0(a1)
	addiw	a4, a6, -1
.LBB1_4.10:
	li	a3, -1
	addiw	a1, a4, 1
	.word	0x20a5c633	# sh2add	a2, a1, a0
	blt	a3, a4, .LBB1_5.15
	j	.LBB1_7.21
.LBB1_5.15:
	.word	0x20a745b3	# sh2add	a1, a4, a0
	lw	a1, 0(a1)
	blt	a5, a1, .LBB1_6.19
	j	.LBB1_7.21
.LBB1_6.19:
	sw	a1, 0(a2)
	addiw	a4, a4, -1
	j	.LBB1_4.10
.LBB1_7.21:
	sw	a5, 0(a2)
	addiw	a6, a6, 1
	j	.LBB1_2.3
.LBB1_8.23:
	mv	a0, zero
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
	call	insertsort
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

