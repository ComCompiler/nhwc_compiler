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
	.globl	my_getint
	.type	my_getint, @function
my_getint:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
.Lmy_getint$ENTRY:
.LBB1_2.1:
	call	getch
	addiw	s1, a0, -48
	blt	s1, zero, .LBB1_2.1
.LBB1_3.5:
	li	a0, 9
	blt	a0, s1, .LBB1_2.1
.LBB1_4.7:
	call	getch
	addiw	a1, a0, -48
	bge	a1, zero, .LBB1_5.12
	j	.LBB1_7.17
.LBB1_5.12:
	li	a0, 9
	bge	a0, a1, .LBB1_6.14
	j	.LBB1_7.17
.LBB1_6.14:
	li	a0, 10
	mulw	a0, s1, a0
	addw	s1, a0, a1
	j	.LBB1_4.7
.LBB1_7.17:
	mv	a0, s1
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.globl	ascii_0
	.section	.data
	.type	ascii_0, @object
ascii_0:
	.word	48

