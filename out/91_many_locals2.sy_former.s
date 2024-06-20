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
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
.Lmain$ENTRY:
	call	getint
	mv	s1, a0
.LBB1_2.2:
	li	a0, 5
	beq	s1, a0, .LBB1_3.5
	j	.LBB1_4.7
.LBB1_3.5:
	addiw	s1, s1, 1
	j	.LBB1_2.2
.LBB1_4.7:
	li	a0, 0
	call	putint
	li	a0, 1
	call	putint
	li	a0, 2
	call	putint
	li	a0, 3
	call	putint
	li	a0, 4
	call	putint
	li	a0, 5
	call	putint
	li	a0, 6
	call	putint
	li	a0, 7
	call	putint
	li	a0, 8
	call	putint
	li	a0, 9
	call	putint
	li	a0, 10
	call	putint
	li	a0, 11
	call	putint
	li	a0, 12
	call	putint
	li	a0, 13
	call	putint
	li	a0, 14
	call	putint
	li	a0, 15
	call	putint
	li	a0, 16
	call	putint
	li	a0, 17
	call	putint
	li	a0, 18
	call	putint
	li	a0, 19
	call	putint
	li	a0, 20
	call	putint
	li	a0, 21
	call	putint
	li	a0, 22
	call	putint
	li	a0, 23
	call	putint
	li	a0, 24
	call	putint
	li	a0, 25
	call	putint
	li	a0, 26
	call	putint
	li	a0, 27
	call	putint
	li	a0, 28
	call	putint
	li	a0, 29
	call	putint
	li	a0, 10
	call	putch
	mv	a0, s1
	call	putint
	li	a0, 10
	call	putch
	li	a0, 25
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

