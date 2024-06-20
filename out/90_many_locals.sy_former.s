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
	.globl	foo
	.type	foo, @function
foo:
	addi	sp, sp, -80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	addi	s0, sp, 80
.Lfoo$ENTRY:
	la	a0, __const_init.arr.30
	addi	a1, a0, 0
	addi	a0, sp, 0
	li	a2, 64
	call	memcpy
	lw	a0, 12(sp)
	addiw	a0, a0, 71
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
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
.Lmain$ENTRY:
	call	foo
	mv	s1, a0
	call	foo
	addiw	a1, s1, 35
	addw	a0, a1, a0
	addiw	a0, a0, 71
	call	putint
	li	a0, 10
	call	putch
	mv	a0, zero
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.data
	.type	__const_init.arr.30, @object
__const_init.arr.30:
	.zero	4
	.word	1
	.word	2
	.word	3
	.zero	4
	.word	1
	.word	2
	.word	3
	.zero	4
	.word	1
	.word	2
	.word	3
	.zero	4
	.word	1
	.word	2
	.word	3

