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
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Lmain$ENTRY:
	li	a0, 200
	call	reverse
	mv	a0, zero
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	reverse
	.type	reverse, @function
reverse:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.Lreverse$ENTRY:
	mv	s2, a0
	li	a0, 1
	bge	a0, s2, .LBB2_2.3
	j	.LBB2_3.5
.LBB2_2.3:
	call	getint
	call	putint
	j	.LBB2_4.8
.LBB2_3.5:
	call	getint
	mv	s1, a0
	addiw	a0, s2, -1
	call	reverse
	mv	a0, s1
	call	putint
.LBB2_4.8:
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

