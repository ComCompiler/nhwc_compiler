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
	.globl	find
	.type	find, @function
find:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
.Lfind$ENTRY:
	la	a1, parent
	addi	a1, a1, 0
	.word	0x20b544b3	# sh2add	s1, a0, a1
	lw	a1, 0(s1)
	beq	a1, a0, .LBB1_3.7
.LBB1_2.5:
	mv	a0, a1
	call	find
	sw	a0, 0(s1)
.LBB1_3.7:
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	addi	s0, sp, 64
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
.Lmain$ENTRY:
	la	s1, parent
	call	getint
	mv	s2, a0
	call	getint
	mv	s5, a0
	li	a1, 0
.LBB2_2.3:
	li	s4, 0
	blt	a1, s2, .LBB2_3.6
	j	.LBB2_4.9
.LBB2_3.6:
	addi	a0, s1, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	sw	a1, 0(a0)
	addiw	a1, a1, 1
	j	.LBB2_2.3
.LBB2_4.9:
	li	a0, 0
	li	a2, 0
	blt	s4, s5, .LBB2_5.12
	j	.LBB2_6.16
.LBB2_5.12:
	call	getint
	mv	s3, a0
	call	getint
	mv	a1, a0
	mv	a0, s3
	call	merge
	addiw	s4, s4, 1
	j	.LBB2_4.9
.LBB2_6.16:
	blt	a2, s2, .LBB2_7.20
	j	.LBB2_10.29
.LBB2_7.20:
	addi	a1, s1, 0
	.word	0x20b645b3	# sh2add	a1, a2, a1
	lw	a1, 0(a1)
	beq	a1, a2, .LBB2_8.24
	j	.LBB2_9.26
.LBB2_8.24:
	addiw	a0, a0, 1
.LBB2_9.26:
	addiw	a2, a2, 1
	j	.LBB2_6.16
.LBB2_10.29:
	call	putint
	mv	a0, zero
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
	.globl	merge
	.type	merge, @function
merge:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
.Lmerge$ENTRY:
	mv	s2, a1
	la	s1, parent
	call	find
	mv	s3, a0
	mv	a0, s2
	call	find
	bne	s3, a0, .LBB3_2.6
	j	.LBB3_3.8
.LBB3_2.6:
	addi	a1, s1, 0
	.word	0x20b545b3	# sh2add	a1, a0, a1
	sw	s3, 0(a1)
.LBB3_3.8:
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.globl	maxN
	.section	.data
	.type	maxN, @object
maxN:
	.word	1005

	.globl	parent
	.section	.bss
	.type	parent, @object
parent:
	.zero	4020

