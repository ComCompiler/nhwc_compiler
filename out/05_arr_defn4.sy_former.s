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
	addi	sp, sp, -208
	sd	ra, 200(sp)
	sd	s0, 192(sp)
	addi	s0, sp, 208
	sd	s1, 184(sp)
	sd	s2, 176(sp)
	sd	s3, 168(sp)
.Lmain$ENTRY:
	la	s1, __const_init.e.33
	la	s2, __const_init.d.32
	la	s3, __const_init.c.31
	la	a1, __const_init.a.30
	addi	a0, sp, 0
	addi	a1, a1, 0
	li	a2, 32
	call	memcpy
	addi	a0, sp, 32
	li	a1, 0
	li	a2, 32
	call	memset
	addi	a0, sp, 64
	addi	a1, s3, 0
	li	a2, 32
	call	memcpy
	addi	a0, sp, 96
	addi	a1, s2, 0
	li	a2, 32
	call	memcpy
	lw	a0, 24(sp)
	sw	a0, 120(sp)
	addi	a0, sp, 128
	addi	a1, s1, 0
	li	a2, 32
	call	memcpy
	lw	a0, 116(sp)
	sw	a0, 128(sp)
	lw	a0, 84(sp)
	sw	a0, 132(sp)
	li	a0, 3
	ld	s1, 184(sp)
	ld	s2, 176(sp)
	ld	s3, 168(sp)
	ld	s0, 192(sp)
	ld	ra, 200(sp)
	addi	sp, sp, 208
	ret

	.section	.data
	.type	__const_init.a.30, @object
__const_init.a.30:
	.word	1
	.word	2
	.word	3
	.word	4
	.zero	8
	.word	7
	.zero	4

	.section	.data
	.type	__const_init.c.31, @object
__const_init.c.31:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8

	.section	.data
	.type	__const_init.d.32, @object
__const_init.d.32:
	.word	1
	.word	2
	.word	3
	.zero	4
	.word	5
	.zero	8
	.word	8

	.section	.data
	.type	__const_init.e.33, @object
__const_init.e.33:
	.zero	8
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8

