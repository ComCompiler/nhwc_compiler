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
	addi	sp, sp, -96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	addi	s0, sp, 96
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
	sd	s6, 32(sp)
	sd	s7, 24(sp)
	sd	s8, 16(sp)
	sd	s9, 8(sp)
	sd	s10, 0(sp)
.Lmain$ENTRY:
	la	s1, res
	la	s2, b
	la	s4, n2
	la	s5, m2
	la	s3, a
	la	s7, n1
	la	s8, m1
	call	getint
	sw	a0, 0(s8)
	call	getint
	sw	a0, 0(s7)
	li	s10, 0
.LBB1_2.3:
	lw	a2, 0(s8)
	addi	a1, s3, 0
	li	a0, 400
	mul	a0, s10, a0
	add	s6, a1, a0
	li	s9, 0
	blt	s10, a2, .LBB1_3.8
	j	.LBB1_6.18
.LBB1_3.8:
	lw	a0, 0(s7)
	blt	s9, a0, .LBB1_4.12
	j	.LBB1_5.16
.LBB1_4.12:
	call	getint
	addi	a1, s6, 0
	.word	0x20bcc5b3	# sh2add	a1, s9, a1
	sw	a0, 0(a1)
	addiw	s9, s9, 1
	j	.LBB1_3.8
.LBB1_5.16:
	addiw	s10, s10, 1
	j	.LBB1_2.3
.LBB1_6.18:
	call	getint
	sw	a0, 0(s5)
	call	getint
	sw	a0, 0(s4)
	li	s7, 0
.LBB1_7.21:
	lw	a2, 0(s5)
	addi	a1, s2, 0
	li	a0, 400
	mul	a0, s7, a0
	add	s3, a1, a0
	li	s6, 0
	blt	s7, a2, .LBB1_8.26
	j	.LBB1_11.36
.LBB1_8.26:
	lw	a0, 0(s4)
	blt	s6, a0, .LBB1_9.30
	j	.LBB1_10.34
.LBB1_9.30:
	call	getint
	addi	a1, s3, 0
	.word	0x20bb45b3	# sh2add	a1, s6, a1
	sw	a0, 0(a1)
	addiw	s6, s6, 1
	j	.LBB1_8.26
.LBB1_10.34:
	addiw	s7, s7, 1
	j	.LBB1_7.21
.LBB1_11.36:
	call	matrix_multiply
	li	s5, 0
.LBB1_12.37:
	lw	a2, 0(s8)
	addi	a1, s1, 0
	li	a0, 400
	mul	a0, s5, a0
	add	s2, a1, a0
	li	s3, 0
	blt	s5, a2, .LBB1_13.42
	j	.LBB1_16.52
.LBB1_13.42:
	lw	a0, 0(s4)
	blt	s3, a0, .LBB1_14.46
	j	.LBB1_15.50
.LBB1_14.46:
	addi	a0, s2, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	call	putint
	li	a0, 32
	call	putch
	addiw	s3, s3, 1
	j	.LBB1_13.42
.LBB1_15.50:
	li	a0, 10
	call	putch
	addiw	s5, s5, 1
	j	.LBB1_12.37
.LBB1_16.52:
	mv	a0, zero
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	ld	s10, 0(sp)
	ld	s0, 80(sp)
	ld	ra, 88(sp)
	addi	sp, sp, 96
	ret

	.section	.text
	.align	4
	.globl	matrix_multiply
	.type	matrix_multiply, @function
matrix_multiply:
	addi	sp, sp, -80
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
	sd	s6, 32(sp)
	sd	s7, 24(sp)
	sd	s8, 16(sp)
	sd	s9, 8(sp)
.Lmatrix_multiply$ENTRY:
	la	a3, b
	la	a5, a
	la	a7, res
	la	a1, n1
	la	a2, n2
	la	a4, m1
	lw	s6, 0(a4)
	lw	s8, 0(a2)
	lw	s9, 0(a1)
	li	s3, 0
.LBB2_2.4:
	addi	a2, a7, 0
	li	a1, 400
	mul	a1, s3, a1
	add	s1, a2, a1
	addi	a2, a5, 0
	li	a1, 400
	mul	a1, s3, a1
	add	a6, a2, a1
	li	s2, 0
	blt	s3, s6, .LBB2_3.9
	j	.LBB2_8.30
.LBB2_3.9:
	addi	a1, s1, 0
	.word	0x20b94733	# sh2add	a4, s2, a1
	li	s7, 0
	blt	s2, s8, .LBB2_4.13
	j	.LBB2_7.28
.LBB2_4.13:
	blt	s7, s9, .LBB2_5.16
	j	.LBB2_6.26
.LBB2_5.16:
	lw	s5, 0(a4)
	addi	a1, a6, 0
	.word	0x20bbc5b3	# sh2add	a1, s7, a1
	lw	s4, 0(a1)
	addi	a2, a3, 0
	li	a1, 400
	mul	a1, s7, a1
	add	a1, a2, a1
	addi	a1, a1, 0
	.word	0x20b945b3	# sh2add	a1, s2, a1
	lw	a1, 0(a1)
	mulw	a1, s4, a1
	addw	a1, s5, a1
	sw	a1, 0(a4)
	addiw	s7, s7, 1
	j	.LBB2_4.13
.LBB2_6.26:
	addiw	s2, s2, 1
	j	.LBB2_3.9
.LBB2_7.28:
	addiw	s3, s3, 1
	j	.LBB2_2.4
.LBB2_8.30:
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	addi	sp, sp, 80
	ret

	.globl	MAX_SIZE
	.section	.data
	.type	MAX_SIZE, @object
MAX_SIZE:
	.word	100

	.globl	a
	.section	.bss
	.type	a, @object
a:
	.zero	40000

	.globl	b
	.section	.bss
	.type	b, @object
b:
	.zero	40000

	.globl	m1
	.section	.bss
	.type	m1, @object
m1:
	.zero	4

	.globl	m2
	.section	.bss
	.type	m2, @object
m2:
	.zero	4

	.globl	n1
	.section	.bss
	.type	n1, @object
n1:
	.zero	4

	.globl	n2
	.section	.bss
	.type	n2, @object
n2:
	.zero	4

	.globl	res
	.section	.bss
	.type	res, @object
res:
	.zero	40000

