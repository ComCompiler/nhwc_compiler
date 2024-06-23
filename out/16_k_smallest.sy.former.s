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
	.globl	findPivot
	.type	findPivot, @function
findPivot:
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	addi	s0, sp, 64
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
.LfindPivot$ENTRY:
	mv	s3, a0
	mv	s4, a1
	la	s1, array
	addi	a0, s1, 0
	.word	0x20aa4533	# sh2add	a0, s4, a0
	lw	s5, 0(a0)
	mv	s2, s3
.LBB1_2.5:
	blt	s3, s4, .LBB1_3.9
	j	.LBB1_6.18
.LBB1_3.9:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	bge	s5, a0, .LBB1_4.13
	j	.LBB1_5.15
.LBB1_4.13:
	mv	a0, s3
	mv	a1, s2
	call	swap
	addiw	s2, s2, 1
.LBB1_5.15:
	addiw	s3, s3, 1
	j	.LBB1_2.5
.LBB1_6.18:
	mv	a0, s2
	mv	a1, s4
	call	swap
	mv	a0, s2
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	ld	s4, 16(sp)
	ld	s5, 8(sp)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret

	.section	.text
	.align	4
	.globl	findSmallest
	.type	findSmallest, @function
findSmallest:
	addi	sp, sp, -80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	addi	s0, sp, 80
	sd	s1, 56(sp)
	sd	s2, 48(sp)
	sd	s3, 40(sp)
	sd	s4, 32(sp)
	sd	s5, 24(sp)
	sd	s6, 16(sp)
	sd	s7, 8(sp)
.LfindSmallest$ENTRY:
	mv	s2, a3
	mv	s4, a2
	mv	s6, a1
	mv	s7, a0
	la	s1, array
	beq	s7, s6, .LBB2_8.22
.LBB2_2.6:
	mv	a0, s7
	mv	a1, s6
	call	findPivot
	mv	s5, a0
	li	s3, 0
	beq	s4, s5, .LBB2_3.9
	j	.LBB2_5.16
.LBB2_3.9:
	blt	s3, s5, .LBB2_4.12
	j	.LBB2_8.22
.LBB2_4.12:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	call	putint
	li	a0, 32
	call	putch
	addiw	s3, s3, 1
	j	.LBB2_3.9
.LBB2_5.16:
	blt	s4, s5, .LBB2_6.18
	j	.LBB2_7.20
.LBB2_6.18:
	addiw	a1, s5, -1
	mv	a0, s7
	mv	a2, s4
	mv	a3, s2
	call	findSmallest
	j	.LBB2_8.22
.LBB2_7.20:
	addiw	a0, s5, 1
	mv	a1, s6
	mv	a2, s4
	mv	a3, s2
	call	findSmallest
.LBB2_8.22:
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s3, 40(sp)
	ld	s4, 32(sp)
	ld	s5, 24(sp)
	ld	s6, 16(sp)
	ld	s7, 8(sp)
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Lmain$ENTRY:
	la	s1, array
	call	getint
	mv	s4, a0
	call	getint
	mv	s3, a0
	li	s2, 0
.LBB3_2.3:
	blt	s2, s4, .LBB3_3.6
	j	.LBB3_4.10
.LBB3_3.6:
	call	getint
	addi	a1, s1, 0
	.word	0x20b945b3	# sh2add	a1, s2, a1
	sw	a0, 0(a1)
	addiw	s2, s2, 1
	j	.LBB3_2.3
.LBB3_4.10:
	addiw	a1, s4, -1
	li	a0, 0
	mv	a2, s3
	mv	a3, s4
	call	findSmallest
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
	.globl	swap
	.type	swap, @function
swap:
.Lswap$ENTRY:
	la	a3, array
	addi	a2, a3, 0
	.word	0x20c54733	# sh2add	a4, a0, a2
	lw	a5, 0(a4)
	addi	a2, a3, 0
	.word	0x20c5c5b3	# sh2add	a1, a1, a2
	lw	a2, 0(a1)
	sw	a2, 0(a4)
	sw	a5, 0(a1)
	ret

	.globl	array
	.section	.bss
	.type	array, @object
array:
	.zero	4000

	.globl	maxN
	.section	.data
	.type	maxN, @object
maxN:
	.word	1000

	.globl	space
	.section	.data
	.type	space, @object
space:
	.word	32

