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
.Lfunc$ENTRY:
	la	a0, a
	lw	a2, 0(a0)
	li	a1, 1
	li	a0, 1
	beq	a2, a1, .LBB1_3.4
.LBB1_2.3:
	li	a0, 0
.LBB1_3.4:
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
	sd	s2, 0(sp)
.Lmain$ENTRY:
	li	s2, 0
	li	s1, 0
.LBB2_2.1:
	li	a0, 100
	blt	s2, a0, .LBB2_3.5
	j	.LBB2_6.13
.LBB2_3.5:
	call	func
	li	a1, 1
	beq	a0, a1, .LBB2_4.8
	j	.LBB2_5.10
.LBB2_4.8:
	addiw	s1, s1, 1
.LBB2_5.10:
	addiw	s2, s2, 1
	j	.LBB2_2.1
.LBB2_6.13:
	li	a0, 100
	blt	s1, a0, .LBB2_7.15
	j	.LBB2_8.16
.LBB2_7.15:
	li	a0, 1
	call	putint
	j	.LBB2_9.17
.LBB2_8.16:
	li	a0, 0
	call	putint
.LBB2_9.17:
	mv	a0, zero
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.globl	a
	.section	.data
	.type	a, @object
a:
	.word	7

