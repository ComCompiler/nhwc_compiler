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
	addi	sp, sp, -304
	sd	ra, 296(sp)
	sd	s0, 288(sp)
	addi	s0, sp, 304
	sd	s1, 280(sp)
	sd	s2, 272(sp)
	sd	s3, 264(sp)
.Lmain$ENTRY:
	la	a1, __const_init.b.30
	addi	a0, sp, 0
	addi	a1, a1, 0
	li	a2, 256
	call	memcpy
	li	s3, 0
.LBB1_2.4:
	li	a2, 4
	addi	a1, sp, 0
	slli	a0, s3, 6
	add	s1, a1, a0
	li	s2, 0
	blt	s3, a2, .LBB1_3.8
	j	.LBB1_6.17
.LBB1_3.8:
	li	a0, 16
	blt	s2, a0, .LBB1_4.11
	j	.LBB1_5.15
.LBB1_4.11:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	call	putint
	li	a0, 32
	call	putch
	addiw	s2, s2, 1
	j	.LBB1_3.8
.LBB1_5.15:
	li	a0, 10
	call	putch
	addiw	s3, s3, 1
	j	.LBB1_2.4
.LBB1_6.17:
	mv	a0, zero
	ld	s1, 280(sp)
	ld	s2, 272(sp)
	ld	s3, 264(sp)
	ld	s0, 288(sp)
	ld	ra, 296(sp)
	addi	sp, sp, 304
	ret

	.section	.data
	.type	__const_init.b.30, @object
__const_init.b.30:
	.word	9
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.zero	232

