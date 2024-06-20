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
	sd	s4, 160(sp)
.Lmain$ENTRY:
	la	s1, __const_init.e.33
	la	s2, __const_init.d.32
	la	s3, __const_init.c.31
	la	s4, __const_init.b.30
	addi	a0, sp, 0
	li	a1, 0
	li	a2, 32
	call	memset
	addi	a0, sp, 32
	addi	a1, s4, 0
	li	a2, 32
	call	memcpy
	addi	a0, sp, 64
	addi	a1, s3, 0
	li	a2, 32
	call	memcpy
	addi	a0, sp, 96
	addi	a1, s2, 0
	li	a2, 32
	call	memcpy
	addi	a0, sp, 128
	addi	a1, s1, 0
	li	a2, 32
	call	memcpy
	lw	a0, 116(sp)
	sw	a0, 128(sp)
	lw	a1, 84(sp)
	sw	a1, 132(sp)
	lw	a0, 128(sp)
	addw	a1, a0, a1
	lw	a0, 156(sp)
	addw	a1, a1, a0
	lw	a0, 16(sp)
	addw	a0, a1, a0
	ld	s1, 184(sp)
	ld	s2, 176(sp)
	ld	s3, 168(sp)
	ld	s4, 160(sp)
	ld	s0, 192(sp)
	ld	ra, 200(sp)
	addi	sp, sp, 208
	ret

	.section	.data
	.type	__const_init.b.30, @object
__const_init.b.30:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8

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
	.zero	4
	.word	7
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

