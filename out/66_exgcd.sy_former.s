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
	.globl	exgcd
	.type	exgcd, @function
exgcd:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Lexgcd$ENTRY:
	mv	s3, a0
	mv	s1, a3
	mv	s2, a2
	mv	s4, a1
	beq	s4, zero, .LBB1_2.8
	j	.LBB1_3.9
.LBB1_2.8:
	li	a0, 1
	sw	a0, 0(s2)
	sw	zero, 0(s1)
	j	.LBB1_4.17
.LBB1_3.9:
	remw	a1, s3, s4
	mv	a0, s4
	mv	a2, s2
	mv	a3, s1
	call	exgcd
	lw	a3, 0(s2)
	lw	a2, 0(s1)
	sw	a2, 0(s2)
	divw	a1, s3, s4
	mulw	a1, a1, a2
	subw	a1, a3, a1
	sw	a1, 0(s1)
	mv	s3, a0
.LBB1_4.17:
	mv	a0, s3
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
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
.Lmain$ENTRY:
	la	s1, __const_init.y.1
	la	a0, __const_init.x.0
	addi	s3, sp, 0
	addi	a1, a0, 0
	mv	a0, s3
	li	a2, 4
	call	memcpy
	addi	s2, sp, 4
	addi	a1, s1, 0
	mv	a0, s2
	li	a2, 4
	call	memcpy
	li	a0, 7
	li	a1, 15
	mv	a2, s3
	mv	a3, s2
	call	exgcd
	lw	a3, 0(sp)
	li	a2, 15
	li	a0, -2004318071
	mul	a0, a0, a3
	srai	a1, a0, 32
	addw	a1, a1, a3
	sraiw	a1, a1, 3
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	a0, a3, a1
	addiw	a3, a0, 15
	li	a2, 15
	li	a0, -2004318071
	mul	a0, a0, a3
	srai	a1, a0, 32
	addw	a1, a1, a3
	sraiw	a1, a1, 3
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	a0, a3, a1
	sw	a0, 0(sp)
	call	putint
	mv	a0, zero
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.section	.data
	.type	__const_init.x.0, @object
__const_init.x.0:
	.word	1

	.section	.data
	.type	__const_init.y.1, @object
__const_init.y.1:
	.word	1

