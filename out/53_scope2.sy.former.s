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
	la	s1, k
	li	a0, 3389
	sw	a0, 0(s1)
	li	a0, 3390
	sw	a0, 0(s1)
	li	a1, 112
.LBB1_2.1:
	mv	a0, a1
	li	a1, 10
	blt	a1, a0, .LBB1_3.4
	j	.LBB1_5.9
.LBB1_3.4:
	addiw	a1, a0, -88
	li	a2, 1000
	blt	a1, a2, .LBB1_4.7
	j	.LBB1_2.1
.LBB1_4.7:
	addiw	a1, a0, -76
	j	.LBB1_2.1
.LBB1_5.9:
	call	putint
	lw	a0, 0(s1)
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.globl	k
	.section	.bss
	.type	k, @object
k:
	.zero	4

