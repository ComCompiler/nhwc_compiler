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
	la	s1, y_1
	la	s2, x_1
	la	s3, y_0
	la	s4, x_0
	la	s6, a
	la	s7, h
	la	s8, w
	call	getint
	sw	a0, 0(s8)
	call	getint
	sw	a0, 0(s7)
.LBB1_2.3:
	lw	a0, 0(s8)
	li	a4, 0
	bne	a0, zero, .LBB1_3.6
	j	.LBB1_19.49
.LBB1_3.6:
	li	a2, 30
	addi	a1, s6, 0
	li	a0, 120
	mul	a0, a4, a0
	add	a1, a1, a0
	li	a3, 0
	li	s9, 1
	blt	a4, a2, .LBB1_4.10
	j	.LBB1_7.18
.LBB1_4.10:
	li	a0, 30
	blt	a3, a0, .LBB1_5.13
	j	.LBB1_6.16
.LBB1_5.13:
	addi	a0, a1, 0
	.word	0x20a6c533	# sh2add	a0, a3, a0
	li	a2, 1
	sw	a2, 0(a0)
	addiw	a3, a3, 1
	j	.LBB1_4.10
.LBB1_6.16:
	addiw	a4, a4, 1
	j	.LBB1_3.6
.LBB1_7.18:
	lw	a2, 0(s7)
	addi	a1, s6, 0
	li	a0, 120
	mul	a0, s9, a0
	add	s5, a1, a0
	li	s10, 1
	bge	a2, s9, .LBB1_8.23
	j	.LBB1_15.39
.LBB1_8.23:
	lw	a0, 0(s8)
	bge	a0, s10, .LBB1_9.27
	j	.LBB1_14.37
.LBB1_9.27:
	call	getint
	addi	a1, s5, 0
	.word	0x20bd45b3	# sh2add	a1, s10, a1
	sw	a0, 0(a1)
	li	a1, 2
	beq	a0, a1, .LBB1_10.31
	j	.LBB1_11.32
.LBB1_10.31:
	sw	s9, 0(s4)
	sw	s10, 0(s3)
	j	.LBB1_13.35
.LBB1_11.32:
	li	a1, 3
	beq	a0, a1, .LBB1_12.34
	j	.LBB1_13.35
.LBB1_12.34:
	sw	s9, 0(s2)
	sw	s10, 0(s1)
.LBB1_13.35:
	addiw	s10, s10, 1
	j	.LBB1_8.23
.LBB1_14.37:
	addiw	s9, s9, 1
	j	.LBB1_7.18
.LBB1_15.39:
	lw	a0, 0(s4)
	lw	a1, 0(s3)
	li	a2, 1
	call	search
	li	a1, 10
	bge	a1, a0, .LBB1_16.44
	j	.LBB1_17.45
.LBB1_16.44:
	call	putint
	li	a0, 10
	call	putch
	j	.LBB1_18.46
.LBB1_17.45:
	li	a0, -1
	call	putint
	li	a0, 10
	call	putch
.LBB1_18.46:
	call	getint
	sw	a0, 0(s8)
	call	getint
	sw	a0, 0(s7)
	j	.LBB1_2.3
.LBB1_19.49:
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
	.globl	search
	.type	search, @function
search:
	addi	sp, sp, -112
	sd	ra, 104(sp)
	sd	s0, 96(sp)
	addi	s0, sp, 112
	sd	s1, 88(sp)
	sd	s2, 80(sp)
	sd	s3, 72(sp)
	sd	s4, 64(sp)
	sd	s5, 56(sp)
	sd	s6, 48(sp)
	sd	s7, 40(sp)
	sd	s8, 32(sp)
	sd	s9, 24(sp)
	sd	s10, 16(sp)
	sd	s11, 8(sp)
.Lsearch$ENTRY:
	mv	s4, a0
	mv	s5, a1
	la	s2, a
	la	s3, step
	la	a0, w
	la	a1, h
	la	a3, y_1
	la	a4, x_1
	li	a5, 10
	lw	s7, 0(a4)
	lw	s9, 0(a3)
	lw	a1, 0(a1)
	addiw	a1, a1, 1
	# spill i32 %10
	sw	a1, 0(sp)
	lw	a0, 0(a0)
	addiw	s11, a0, 1
	addiw	s10, a2, 1
	li	a6, 0
	li	a1, 1073741824
	li	a0, 1073741824
	blt	a5, a2, .LBB2_19.62
.LBB2_2.12:
	mv	s6, a1
	li	a1, 4
	addi	a0, s3, 0
	.word	0x20a86533
	lw	a7, 0(a0)
	lw	a5, 4(a0)
	mv	a4, s5
	mv	a3, s4
	li	a2, 0
	blt	a6, a1, .LBB2_3.21
	j	.LBB2_17.59
.LBB2_3.21:
	addi	a1, s2, 0
	li	a0, 120
	mul	a0, a3, a0
	add	a0, a1, a0
	addi	a0, a0, 0
	.word	0x20a744b3	# sh2add	s1, a4, a0
	lw	a1, 0(s1)
	li	a0, 1
	bne	a1, a0, .LBB2_4.31
	j	.LBB2_7.37
.LBB2_4.31:
	beq	a3, s7, .LBB2_5.32
	j	.LBB2_6.33
.LBB2_5.32:
	beq	a4, s9, .LBB2_7.37
.LBB2_6.33:
	addw	a3, a3, a7
	addw	a4, a4, a5
	addiw	a2, a2, 1
	j	.LBB2_3.21
.LBB2_7.37:
	beq	a3, s7, .LBB2_8.38
	j	.LBB2_9.39
.LBB2_8.38:
	li	a0, 1
	beq	a4, s9, .LBB2_19.62
.LBB2_9.39:
	li	a0, 1
	addiw	s8, a6, 1
	mv	a6, s8
	mv	a1, s6
	bge	a0, a2, .LBB2_2.12
.LBB2_10.42:
	mv	a6, s8
	mv	a1, s6
	beq	a3, zero, .LBB2_2.12
.LBB2_11.44:
	mv	a6, s8
	mv	a1, s6
	# reload i32 %10
	lw	a0, 0(sp)
	beq	a3, a0, .LBB2_2.12
.LBB2_12.46:
	mv	a6, s8
	mv	a1, s6
	beq	a4, zero, .LBB2_2.12
.LBB2_13.48:
	mv	a6, s8
	mv	a1, s6
	beq	a4, s11, .LBB2_2.12
.LBB2_14.50:
	sw	zero, 0(s1)
	subw	a0, a3, a7
	subw	a1, a4, a5
	mv	a2, s10
	call	search
	addiw	a0, a0, 1
	mv	a1, s6
	blt	a0, s6, .LBB2_15.56
	j	.LBB2_16.57
.LBB2_15.56:
	mv	a1, a0
.LBB2_16.57:
	li	a0, 1
	sw	a0, 0(s1)
	mv	a6, s8
	j	.LBB2_2.12
.LBB2_17.59:
	li	a1, 10
	li	a0, 1073741824
	blt	a1, s6, .LBB2_19.62
.LBB2_18.61:
	mv	a0, s6
.LBB2_19.62:
	ld	s1, 88(sp)
	ld	s2, 80(sp)
	ld	s3, 72(sp)
	ld	s4, 64(sp)
	ld	s5, 56(sp)
	ld	s6, 48(sp)
	ld	s7, 40(sp)
	ld	s8, 32(sp)
	ld	s9, 24(sp)
	ld	s10, 16(sp)
	ld	s11, 8(sp)
	ld	s0, 96(sp)
	ld	ra, 104(sp)
	addi	sp, sp, 112
	ret

	.globl	INF
	.section	.data
	.type	INF, @object
INF:
	.word	1073741824

	.globl	a
	.section	.bss
	.type	a, @object
a:
	.zero	3600

	.globl	h
	.section	.bss
	.type	h, @object
h:
	.zero	4

	.globl	step
	.section	.data
	.type	step, @object
step:
	.word	1
	.zero	4
	.word	4294967295
	.zero	8
	.word	1
	.zero	4
	.word	4294967295

	.globl	w
	.section	.bss
	.type	w, @object
w:
	.zero	4

	.globl	x_0
	.section	.bss
	.type	x_0, @object
x_0:
	.zero	4

	.globl	x_1
	.section	.bss
	.type	x_1, @object
x_1:
	.zero	4

	.globl	y_0
	.section	.bss
	.type	y_0, @object
y_0:
	.zero	4

	.globl	y_1
	.section	.bss
	.type	y_1, @object
y_1:
	.zero	4

