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
	.globl	hanoi
	.type	hanoi, @function
hanoi:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Lhanoi$ENTRY:
	mv	s1, a2
	mv	s3, a3
	mv	s4, a1
	li	a1, 1
	beq	a0, a1, .LBB1_2.6
	j	.LBB1_3.7
.LBB1_2.6:
	mv	a0, s4
	mv	a1, s3
	call	move
	j	.LBB1_4.9
.LBB1_3.7:
	addiw	s2, a0, -1
	mv	a0, s2
	mv	a1, s4
	mv	a2, s3
	mv	a3, s1
	call	hanoi
	mv	a0, s4
	mv	a1, s3
	call	move
	mv	a0, s2
	mv	a1, s1
	mv	a2, s4
	mv	a3, s3
	call	hanoi
.LBB1_4.9:
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
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
.Lmain$ENTRY:
	call	getint
	mv	s1, a0
.LBB2_2.2:
	blt	zero, s1, .LBB2_3.5
	j	.LBB2_4.8
.LBB2_3.5:
	call	getint
	li	a1, 1
	li	a2, 2
	li	a3, 3
	call	hanoi
	li	a0, 10
	call	putch
	addiw	s1, s1, -1
	j	.LBB2_2.2
.LBB2_4.8:
	mv	a0, zero
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	move
	.type	move, @function
move:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
.Lmove$ENTRY:
	mv	s1, a1
	call	putint
	li	a0, 32
	call	putch
	mv	a0, s1
	call	putint
	li	a0, 44
	call	putch
	li	a0, 32
	call	putch
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

