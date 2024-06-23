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
	sd	s2, 0(sp)
.Lmain$ENTRY:
	la	s1, b
	la	s2, a
	call	getint
	sw	a0, 0(s2)
	call	getint
	sw	a0, 0(s1)
	lw	a2, 0(s2)
	beq	a2, a0, .LBB1_2.5
	j	.LBB1_3.7
.LBB1_2.5:
	li	a1, 3
	li	a0, 1
	bne	a2, a1, .LBB1_4.8
.LBB1_3.7:
	li	a0, 0
.LBB1_4.8:
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.globl	a
	.section	.bss
	.type	a, @object
a:
	.zero	4

	.globl	b
	.section	.bss
	.type	b, @object
b:
	.zero	4

