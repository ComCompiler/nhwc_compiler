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
	.globl	deepWhileBr
	.type	deepWhileBr, @function
deepWhileBr:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.LdeepWhileBr$ENTRY:
	mv	s1, a1
	mv	s2, a0
	li	a0, 0
	call	get_one
	li	a3, 1
	addw	a2, s2, s1
.LBB1_2.6:
	li	a1, 75
	blt	a2, a1, .LBB1_3.9
	j	.LBB1_7.16
.LBB1_3.9:
	li	a1, 100
	blt	a2, a1, .LBB1_4.11
	j	.LBB1_2.6
.LBB1_4.11:
	addiw	a2, a2, 42
	li	a1, 99
	blt	a1, a2, .LBB1_5.14
	j	.LBB1_2.6
.LBB1_5.14:
	beq	a0, a3, .LBB1_6.15
	j	.LBB1_2.6
.LBB1_6.15:
	li	a2, 168
	j	.LBB1_2.6
.LBB1_7.16:
	mv	a0, a2
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	get_one
	.type	get_one, @function
get_one:
.Lget_one$ENTRY:
	li	a0, 1
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Lmain$ENTRY:
	li	a0, 2
	li	a1, 2
	call	deepWhileBr
	call	putint
	mv	a0, zero
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

