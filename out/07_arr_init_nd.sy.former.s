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
	addi	sp, sp, -464
	sd	ra, 456(sp)
	sd	s0, 448(sp)
	addi	s0, sp, 464
	sd	s1, 440(sp)
	sd	s2, 432(sp)
	sd	s3, 424(sp)
	sd	s4, 416(sp)
	sd	s5, 408(sp)
.Lmain$ENTRY:
	la	s1, __const_init.i.34
	la	s2, __const_init.g.33
	la	s3, __const_init.e.32
	la	s4, __const_init.d.31
	la	s5, __const_init.c.30
	addi	a0, sp, 0
	li	a1, 0
	li	a2, 60
	call	memset
	addi	a0, sp, 60
	addi	a1, s5, 0
	li	a2, 60
	call	memcpy
	addi	a0, sp, 120
	addi	a1, s4, 0
	li	a2, 60
	call	memcpy
	addi	a0, sp, 180
	addi	a1, s3, 0
	li	a2, 60
	call	memcpy
	addi	a0, sp, 240
	addi	a1, s2, 0
	li	a2, 60
	call	memcpy
	addi	a0, sp, 300
	addi	a1, s1, 0
	li	a2, 96
	call	memcpy
	li	a0, 4
	ld	s1, 440(sp)
	ld	s2, 432(sp)
	ld	s3, 424(sp)
	ld	s4, 416(sp)
	ld	s5, 408(sp)
	ld	s0, 448(sp)
	ld	ra, 456(sp)
	addi	sp, sp, 464
	ret

	.section	.data
	.type	__const_init.c.30, @object
__const_init.c.30:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

	.section	.data
	.type	__const_init.d.31, @object
__const_init.d.31:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

	.section	.data
	.type	__const_init.e.32, @object
__const_init.e.32:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

	.section	.data
	.type	__const_init.g.33, @object
__const_init.g.33:
	.word	1
	.word	2
	.word	3
	.word	4
	.zero	8
	.word	7
	.zero	8
	.word	10
	.word	11
	.word	12
	.zero	12

	.section	.data
	.type	__const_init.i.34, @object
__const_init.i.34:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.zero	76

