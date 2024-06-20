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
	.globl	f1
	.type	f1, @function
f1:
.Lf1$ENTRY:
	la	a3, a
	li	a1, 4000
	sw	a1, 20(a3)
	addi	a2, a3, 0
	li	a1, 16000
	add	a1, a2, a1
	li	a2, 3
	sw	a2, 0(a1)
	addi	a2, a3, 0
	li	a1, 16380
	add	a1, a2, a1
	li	a2, 7
	sw	a2, 0(a1)
	addi	a2, a3, 0
	li	a1, 8864
	add	a1, a2, a1
	lw	a1, 0(a1)
	addiw	a1, a1, 9
	sw	a1, 28(a0)
	lw	a1, 20(a3)
	addi	a0, a3, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a0, 0(a0)
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)
	sd	s0, 2016(sp)
	addi	s0, sp, 2032
	sd	s1, 2008(sp)
	sd	s2, 2000(sp)
	li	t0, -30768
	add	sp, sp, t0
.Lmain$ENTRY:
	li	a0, 16384
	add	s2, sp, a0
	la	s1, __const_init.c.1
	la	a1, __const_init.b.0
	addi	a0, sp, 0
	addi	a1, a1, 0
	li	a2, 16384
	call	memcpy
	addi	a0, s2, 0
	addi	a1, s1, 0
	li	a2, 16384
	call	memcpy
	addi	a0, s2, 0
	call	f1
	call	putint
	li	a0, 10
	call	putch
	lw	a0, 32(s2)
	addi	sp, s0, -2032
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	ret

	.section	.data
	.type	__const_init.b.0, @object
__const_init.b.0:
	.zero	4096
	.word	1
	.zero	4092
	.word	2
	.word	3
	.zero	4088
	.word	4
	.word	5
	.word	6
	.zero	4084

	.section	.data
	.type	__const_init.c.1, @object
__const_init.c.1:
	.word	1
	.word	2
	.zero	8
	.word	3
	.word	4
	.zero	16360

	.globl	a
	.section	.bss
	.type	a, @object
a:
	.zero	16384

