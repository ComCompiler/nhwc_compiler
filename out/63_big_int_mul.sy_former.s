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
	addi	sp, sp, -544
	sd	ra, 536(sp)
	sd	s0, 528(sp)
	addi	s0, sp, 544
	sd	s1, 520(sp)
.Lmain$ENTRY:
	la	s1, __const_init.mult2.31
	la	a0, __const_init.mult1.30
	addi	a1, a0, 0
	addi	a0, sp, 0
	li	a2, 80
	call	memcpy
	addi	a1, s1, 0
	addi	a0, sp, 80
	li	a2, 80
	call	memcpy
	addi	a0, sp, 360
	li	a1, 0
	li	a2, 160
	call	memset
	li	a2, 0
.LBB1_2.11:
	li	a0, 20
	li	a3, 0
	blt	a2, a0, .LBB1_3.14
	j	.LBB1_4.19
.LBB1_3.14:
	addi	a0, sp, 0
	.word	0x20a64533	# sh2add	a0, a2, a0
	lw	a1, 0(a0)
	addi	a0, sp, 160
	.word	0x20a64533	# sh2add	a0, a2, a0
	sw	a1, 0(a0)
	addiw	a2, a2, 1
	j	.LBB1_2.11
.LBB1_4.19:
	li	a0, 20
	li	a2, 0
	blt	a3, a0, .LBB1_5.22
	j	.LBB1_6.27
.LBB1_5.22:
	addi	a0, sp, 80
	.word	0x20a6c533	# sh2add	a0, a3, a0
	lw	a1, 0(a0)
	addi	a0, sp, 260
	.word	0x20a6c533	# sh2add	a0, a3, a0
	sw	a1, 0(a0)
	addiw	a3, a3, 1
	j	.LBB1_4.19
.LBB1_6.27:
	li	a0, 39
	li	a1, 39
	li	a7, 19
	bge	a0, a2, .LBB1_7.30
	j	.LBB1_8.33
.LBB1_7.30:
	addi	a0, sp, 360
	.word	0x20a64533	# sh2add	a0, a2, a0
	sw	zero, 0(a0)
	addiw	a2, a2, 1
	j	.LBB1_6.27
.LBB1_8.33:
	li	a0, -1
	blt	a0, a7, .LBB1_9.37
	j	.LBB1_16.64
.LBB1_9.37:
	addi	a0, sp, 260
	.word	0x20a8c533	# sh2add	a0, a7, a0
	lw	a6, 0(a0)
	li	a5, 19
.LBB1_10.40:
	li	a0, -1
	blt	a0, a5, .LBB1_11.44
	j	.LBB1_15.61
.LBB1_11.44:
	addiw	a4, a1, -1
	addi	a0, sp, 160
	.word	0x20a7c533	# sh2add	a0, a5, a0
	lw	a0, 0(a0)
	mulw	a2, a6, a0
	addi	a0, sp, 360
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a1, 0(a0)
	addw	a2, a1, a2
	li	a1, 10
	bge	a2, a1, .LBB1_12.53
	j	.LBB1_13.58
.LBB1_12.53:
	sw	a2, 0(a0)
	addi	a0, sp, 360
	.word	0x20a745b3	# sh2add	a1, a4, a0
	lw	a3, 0(a1)
	li	a0, 1717986919
	mul	a0, a0, a2
	srai	a2, a0, 32
	sraiw	a2, a2, 2
	srliw	a0, a2, 31
	addw	a0, a2, a0
	addw	a0, a3, a0
	sw	a0, 0(a1)
	j	.LBB1_14.59
.LBB1_13.58:
	sw	a2, 0(a0)
.LBB1_14.59:
	addiw	a5, a5, -1
	mv	a1, a4
	j	.LBB1_10.40
.LBB1_15.61:
	addiw	a7, a7, -1
	addiw	a1, a1, 19
	j	.LBB1_8.33
.LBB1_16.64:
	lw	a0, 360(sp)
	li	s1, 1
	bne	a0, zero, .LBB1_17.67
	j	.LBB1_18.68
.LBB1_17.67:
	call	putint
	li	s1, 1
.LBB1_18.68:
	li	a0, 39
	bge	a0, s1, .LBB1_19.71
	j	.LBB1_20.75
.LBB1_19.71:
	addi	a0, sp, 360
	.word	0x20a4c533	# sh2add	a0, s1, a0
	lw	a0, 0(a0)
	call	putint
	addiw	s1, s1, 1
	j	.LBB1_18.68
.LBB1_20.75:
	mv	a0, zero
	ld	s1, 520(sp)
	ld	s0, 528(sp)
	ld	ra, 536(sp)
	addi	sp, sp, 544
	ret

	.section	.data
	.type	__const_init.mult1.30, @object
__const_init.mult1.30:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.zero	4
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.zero	4

	.section	.data
	.type	__const_init.mult2.31, @object
__const_init.mult2.31:
	.word	2
	.word	3
	.word	4
	.word	2
	.word	5
	.word	7
	.word	9
	.word	9
	.zero	4
	.word	1
	.word	9
	.word	8
	.word	7
	.word	6
	.word	4
	.word	3
	.word	2
	.word	1
	.word	2
	.word	2

	.globl	len
	.section	.data
	.type	len, @object
len:
	.word	20

