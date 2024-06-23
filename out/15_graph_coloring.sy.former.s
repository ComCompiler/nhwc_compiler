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
	.globl	graphColoring
	.type	graphColoring, @function
graphColoring:
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	addi	s0, sp, 64
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
	sd	s6, 0(sp)
.LgraphColoring$ENTRY:
	mv	s4, a1
	mv	s1, a0
	mv	s2, a3
	li	a0, 4
	.word	0x212649b3	# sh2add	s3, a2, s2
	addiw	s6, a2, 1
	li	s5, 1
	beq	a2, a0, .LBB1_2.8
	j	.LBB1_4.12
.LBB1_2.8:
	mv	a0, s1
	mv	a1, s2
	call	isSafe
	li	a1, 0
	bne	a0, zero, .LBB1_3.11
	j	.LBB1_7.20
.LBB1_3.11:
	mv	a0, s2
	call	printSolution
	li	a1, 1
	j	.LBB1_7.20
.LBB1_4.12:
	li	a1, 0
	bge	s4, s5, .LBB1_5.15
	j	.LBB1_7.20
.LBB1_5.15:
	sw	s5, 0(s3)
	mv	a0, s1
	mv	a1, s4
	mv	a2, s6
	mv	a3, s2
	call	graphColoring
	li	a1, 1
	bne	a0, zero, .LBB1_7.20
.LBB1_6.18:
	sw	zero, 0(s3)
	addiw	s5, s5, 1
	j	.LBB1_4.12
.LBB1_7.20:
	mv	a0, a1
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	ld	s4, 16(sp)
	ld	s5, 8(sp)
	ld	s6, 0(sp)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret

	.section	.text
	.align	4
	.globl	isSafe
	.type	isSafe, @function
isSafe:
.LisSafe$ENTRY:
	li	a7, 0
.LBB2_2.3:
	li	a3, 4
	li	a2, 1
	blt	a7, a3, .LBB2_3.6
	j	.LBB2_8.24
.LBB2_3.6:
	slli	a2, a7, 4
	add	a3, a0, a2
	.word	0x20b8c633	# sh2add	a2, a7, a1
	lw	a6, 0(a2)
	addiw	a7, a7, 1
	mv	a5, a7
.LBB2_4.11:
	li	a2, 4
	blt	a5, a2, .LBB2_5.14
	j	.LBB2_2.3
.LBB2_5.14:
	addi	a2, a3, 0
	.word	0x20c7c633	# sh2add	a2, a5, a2
	lw	a2, 0(a2)
	bne	a2, zero, .LBB2_6.18
	j	.LBB2_7.22
.LBB2_6.18:
	.word	0x20b7c633	# sh2add	a2, a5, a1
	lw	a4, 0(a2)
	li	a2, 0
	beq	a4, a6, .LBB2_8.24
.LBB2_7.22:
	addiw	a5, a5, 1
	j	.LBB2_4.11
.LBB2_8.24:
	mv	a0, a2
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
.Lmain$ENTRY:
	la	a0, __const_init.graph.0
	addi	s1, sp, 0
	addi	a1, a0, 0
	mv	a0, s1
	li	a2, 64
	call	memcpy
	li	a1, 0
.LBB3_2.5:
	li	a0, 4
	blt	a1, a0, .LBB3_3.8
	j	.LBB3_4.11
.LBB3_3.8:
	addi	a0, sp, 64
	.word	0x20a5c533	# sh2add	a0, a1, a0
	sw	zero, 0(a0)
	addiw	a1, a1, 1
	j	.LBB3_2.5
.LBB3_4.11:
	addi	a3, sp, 64
	mv	a0, s1
	li	a1, 3
	li	a2, 0
	call	graphColoring
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB3_5.16
	j	.LBB3_6.17
.LBB3_5.16:
	call	printMessage
.LBB3_6.17:
	mv	a0, zero
	ld	s1, 88(sp)
	ld	s0, 96(sp)
	ld	ra, 104(sp)
	addi	sp, sp, 112
	ret

	.section	.text
	.align	4
	.globl	printMessage
	.type	printMessage, @function
printMessage:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.LprintMessage$ENTRY:
	li	a0, 78
	call	putch
	li	a0, 111
	call	putch
	li	a0, 116
	call	putch
	li	a0, 32
	call	putch
	li	a0, 101
	call	putch
	li	a0, 120
	call	putch
	li	a0, 105
	call	putch
	li	a0, 115
	call	putch
	li	a0, 116
	call	putch
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	printSolution
	.type	printSolution, @function
printSolution:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.LprintSolution$ENTRY:
	mv	s1, a0
	li	s2, 0
.LBB5_2.2:
	li	a0, 4
	blt	s2, a0, .LBB5_3.5
	j	.LBB5_4.9
.LBB5_3.5:
	.word	0x20994533	# sh2add	a0, s2, s1
	lw	a0, 0(a0)
	call	putint
	li	a0, 32
	call	putch
	addiw	s2, s2, 1
	j	.LBB5_2.2
.LBB5_4.9:
	li	a0, 10
	call	putch
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.globl	LF
	.section	.data
	.type	LF, @object
LF:
	.word	10

	.globl	V
	.section	.data
	.type	V, @object
V:
	.word	4

	.section	.data
	.type	__const_init.graph.0, @object
__const_init.graph.0:
	.zero	4
	.word	1
	.word	1
	.word	1
	.word	1
	.zero	4
	.word	1
	.zero	4
	.word	1
	.word	1
	.zero	4
	.word	1
	.word	1
	.zero	4
	.word	1
	.zero	4

	.globl	space
	.section	.data
	.type	space, @object
space:
	.word	32

