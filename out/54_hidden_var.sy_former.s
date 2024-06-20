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
	addi	sp, sp, -256
	sd	ra, 248(sp)
	sd	s0, 240(sp)
	addi	s0, sp, 256
	sd	s1, 232(sp)
	sd	s2, 224(sp)
	sd	s3, 216(sp)
	sd	s4, 208(sp)
.Lmain$ENTRY:
	la	s1, b
	la	s2, __const_init.c.33
	la	s3, __const_init.c.32
	la	s4, c
	li	a0, 3
	call	putint
	li	a0, 3
	call	putint
	li	a0, 1
	call	putint
	li	a0, 10
	call	putch
	li	a0, 1
	call	putint
	li	a0, 10
	call	putch
	li	a0, 1
	sw	a0, 8(s4)
	addi	a1, s3, 0
	addi	a0, sp, 0
	li	a2, 64
	call	memcpy
	lw	a0, 8(s4)
	bne	a0, zero, .LBB1_2.8
	j	.LBB1_3.19
.LBB1_2.8:
	addi	a1, s2, 0
	addi	a0, sp, 64
	li	a2, 140
	call	memcpy
	lw	a0, 104(sp)
	call	putint
	lw	a0, 108(sp)
	call	putint
	lw	a0, 112(sp)
	call	putint
.LBB1_3.19:
	li	a0, 10
	call	putch
	lw	a0, 0(s1)
	call	putint
	li	a0, 10
	call	putch
	lw	a0, 0(s4)
	call	putint
	lw	a0, 4(s4)
	call	putint
	lw	a0, 8(s4)
	call	putint
	lw	a0, 12(s4)
	call	putint
	li	a0, 10
	call	putch
	mv	a0, zero
	ld	s1, 232(sp)
	ld	s2, 224(sp)
	ld	s3, 216(sp)
	ld	s4, 208(sp)
	ld	s0, 240(sp)
	ld	ra, 248(sp)
	addi	sp, sp, 256
	ret

	.section	.data
	.type	__const_init.c.32, @object
__const_init.c.32:
	.zero	4
	.word	9
	.zero	24
	.word	8
	.word	3
	.zero	24

	.section	.data
	.type	__const_init.c.33, @object
__const_init.c.33:
	.zero	40
	.word	2
	.word	1
	.word	8
	.zero	88

	.globl	b
	.section	.data
	.type	b, @object
b:
	.word	5

	.globl	c
	.section	.data
	.type	c, @object
c:
	.word	6
	.word	7
	.word	8
	.word	9

