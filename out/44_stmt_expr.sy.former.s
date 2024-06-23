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
	li	a0, 1
	sw	a0, 0(s1)
	li	a2, 0
.LBB1_2.1:
	li	a1, 9
	lw	a0, 0(s1)
	bge	a1, a2, .LBB1_3.5
	j	.LBB1_4.8
.LBB1_3.5:
	slliw	a0, a0, 1
	sw	a0, 0(s1)
	addiw	a2, a2, 1
	j	.LBB1_2.1
.LBB1_4.8:
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

	.globl	n
	.section	.data
	.type	n, @object
n:
	.word	10

