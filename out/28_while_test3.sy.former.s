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
	.globl	EightWhile
	.type	EightWhile, @function
EightWhile:
	addi	sp, sp, -16
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.LEightWhile$ENTRY:
	la	a0, h
	la	a1, g
	la	a2, f
	la	a3, e
	li	s2, 10
	li	s1, 7
	li	a7, 6
	li	a6, 5
.LBB1_2.1:
	li	a4, 20
	blt	a6, a4, .LBB1_3.7
	j	.LBB1_21.57
.LBB1_3.7:
	li	a4, 10
	blt	a7, a4, .LBB1_4.12
	j	.LBB1_20.54
.LBB1_4.12:
	li	a4, 7
	beq	s1, a4, .LBB1_5.16
	j	.LBB1_19.51
.LBB1_5.16:
	li	a4, 20
	blt	s2, a4, .LBB1_6.19
	j	.LBB1_18.48
.LBB1_6.19:
	lw	a5, 0(a3)
	li	a4, 1
	blt	a4, a5, .LBB1_7.22
	j	.LBB1_17.45
.LBB1_7.22:
	addiw	a4, a5, -1
	sw	a4, 0(a3)
.LBB1_8.24:
	lw	a5, 0(a2)
	li	a4, 2
	blt	a4, a5, .LBB1_9.27
	j	.LBB1_16.43
.LBB1_9.27:
	addiw	a4, a5, -2
	sw	a4, 0(a2)
.LBB1_10.29:
	lw	a5, 0(a1)
	li	a4, 3
	blt	a5, a4, .LBB1_11.32
	j	.LBB1_15.41
.LBB1_11.32:
	addiw	a4, a5, 10
	sw	a4, 0(a1)
.LBB1_12.34:
	lw	a5, 0(a0)
	li	a4, 10
	blt	a5, a4, .LBB1_13.37
	j	.LBB1_14.39
.LBB1_13.37:
	addiw	a4, a5, 8
	sw	a4, 0(a0)
	j	.LBB1_12.34
.LBB1_14.39:
	addiw	a4, a5, -1
	sw	a4, 0(a0)
	j	.LBB1_10.29
.LBB1_15.41:
	addiw	a4, a5, -8
	sw	a4, 0(a1)
	j	.LBB1_8.24
.LBB1_16.43:
	addiw	a4, a5, 1
	sw	a4, 0(a2)
	j	.LBB1_6.19
.LBB1_17.45:
	addiw	a4, a5, 1
	sw	a4, 0(a3)
	addiw	s2, s2, 3
	j	.LBB1_5.16
.LBB1_18.48:
	addiw	s1, s1, -1
	addiw	s2, s2, -1
	j	.LBB1_4.12
.LBB1_19.51:
	addiw	a7, a7, 1
	addiw	s1, s1, 1
	j	.LBB1_3.7
.LBB1_20.54:
	addiw	a6, a6, 3
	addiw	a7, a7, -2
	j	.LBB1_2.1
.LBB1_21.57:
	addw	a2, a7, s1
	addw	a2, a2, a6
	lw	a0, 0(a0)
	subw	a2, a2, a0
	lw	a0, 0(a1)
	addw	a1, a2, a0
	lw	a0, 0(a3)
	subw	a0, a1, a0
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
.Lmain$ENTRY:
	la	a0, f
	la	a1, e
	la	a2, h
	la	a3, g
	li	a4, 1
	sw	a4, 0(a3)
	li	a3, 2
	sw	a3, 0(a2)
	li	a2, 4
	sw	a2, 0(a1)
	li	a1, 6
	sw	a1, 0(a0)
	tail	EightWhile

	.globl	e
	.section	.bss
	.type	e, @object
e:
	.zero	4

	.globl	f
	.section	.bss
	.type	f, @object
f:
	.zero	4

	.globl	g
	.section	.bss
	.type	g, @object
g:
	.zero	4

	.globl	h
	.section	.bss
	.type	h, @object
h:
	.zero	4

