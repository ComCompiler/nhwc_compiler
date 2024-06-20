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
	.globl	func
	.type	func, @function
func:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
.Lfunc$ENTRY:
	la	s1, g
	lw	a1, 0(s1)
	addw	a0, a1, a0
	sw	a0, 0(s1)
	call	putint
	lw	a0, 0(s1)
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
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Lmain$ENTRY:
	call	getint
	li	a1, 10
	blt	a1, a0, .LBB2_2.3
	j	.LBB2_3.5
.LBB2_2.3:
	call	func
.LBB2_3.5:
	call	getint
	li	a1, 11
	blt	a1, a0, .LBB2_4.8
	j	.LBB2_5.10
.LBB2_4.8:
	call	func
.LBB2_5.10:
	call	getint
	li	a1, 99
	bge	a1, a0, .LBB2_7.15
.LBB2_6.13:
	call	func
.LBB2_7.15:
	call	getint
	li	a1, 100
	bge	a1, a0, .LBB2_9.20
.LBB2_8.18:
	call	func
.LBB2_9.20:
	li	a0, 99
	call	func
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB2_10.24
	j	.LBB2_11.26
.LBB2_10.24:
	li	a0, 100
	call	func
.LBB2_11.26:
	mv	a0, zero
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.globl	g
	.section	.bss
	.type	g, @object
g:
	.zero	4

