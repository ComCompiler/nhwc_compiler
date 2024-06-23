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
	.globl	inc_a
	.type	inc_a, @function
inc_a:
.Linc_a$ENTRY:
	la	a1, a
	lw	a0, 0(a1)
	addiw	a0, a0, 1
	sw	a0, 0(a1)
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
	la	s1, b
	la	s2, a
	li	s4, 5
.LBB2_2.1:
	bge	s4, zero, .LBB2_3.4
	j	.LBB2_13.36
.LBB2_3.4:
	call	inc_a
	bne	a0, zero, .LBB2_4.7
	j	.LBB2_7.16
.LBB2_4.7:
	call	inc_a
	bne	a0, zero, .LBB2_5.10
	j	.LBB2_7.16
.LBB2_5.10:
	call	inc_a
	bne	a0, zero, .LBB2_6.13
	j	.LBB2_7.16
.LBB2_6.13:
	lw	a0, 0(s2)
	call	putint
	li	a0, 32
	call	putch
	lw	a0, 0(s1)
	call	putint
	li	a0, 10
	call	putch
.LBB2_7.16:
	call	inc_a
	li	a1, 14
	blt	a0, a1, .LBB2_10.28
.LBB2_8.19:
	call	inc_a
	bne	a0, zero, .LBB2_9.22
	j	.LBB2_11.32
.LBB2_9.22:
	call	inc_a
	mv	s3, a0
	call	inc_a
	subw	a0, s3, a0
	addiw	a0, a0, 1
	bne	a0, zero, .LBB2_10.28
	j	.LBB2_11.32
.LBB2_10.28:
	lw	a0, 0(s2)
	call	putint
	li	a0, 10
	call	putch
	lw	a0, 0(s1)
	slliw	a0, a0, 1
	sw	a0, 0(s1)
	j	.LBB2_12.34
.LBB2_11.32:
	call	inc_a
.LBB2_12.34:
	addiw	s4, s4, -1
	j	.LBB2_2.1
.LBB2_13.36:
	lw	a0, 0(s2)
	call	putint
	li	a0, 32
	call	putch
	lw	a0, 0(s1)
	call	putint
	li	a0, 10
	call	putch
	lw	a0, 0(s2)
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s4, 0(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.globl	a
	.section	.data
	.type	a, @object
a:
	.word	4294967295

	.globl	b
	.section	.data
	.type	b, @object
b:
	.word	1

