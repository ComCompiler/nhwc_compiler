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
	.globl	interpret
	.type	interpret, @function
interpret:
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	addi	s0, sp, 64
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
.Linterpret$ENTRY:
	mv	s4, a0
	la	s1, tape
	la	s3, ptr
	li	s5, 0
.LBB1_2.2:
	.word	0x214ac5b3	# sh2add	a1, s5, s4
	lw	a3, 0(a1)
	bne	a3, zero, .LBB1_3.7
	j	.LBB1_23.55
.LBB1_3.7:
	lw	a2, 0(s3)
	addi	a1, s1, 0
	.word	0x20b64933	# sh2add	s2, a2, a1
	lw	a4, 0(s2)
	li	a1, 62
	beq	a3, a1, .LBB1_4.12
	j	.LBB1_5.14
.LBB1_4.12:
	addiw	a1, a2, 1
	sw	a1, 0(s3)
	mv	a1, s5
	j	.LBB1_22.52
.LBB1_5.14:
	li	a1, 60
	beq	a3, a1, .LBB1_6.16
	j	.LBB1_7.18
.LBB1_6.16:
	addiw	a1, a2, -1
	sw	a1, 0(s3)
	mv	a1, s5
	j	.LBB1_22.52
.LBB1_7.18:
	li	a1, 43
	beq	a3, a1, .LBB1_8.20
	j	.LBB1_9.22
.LBB1_8.20:
	addiw	a1, a4, 1
	sw	a1, 0(s2)
	mv	a1, s5
	j	.LBB1_22.52
.LBB1_9.22:
	li	a1, 45
	beq	a3, a1, .LBB1_10.24
	j	.LBB1_11.26
.LBB1_10.24:
	addiw	a1, a4, -1
	sw	a1, 0(s2)
	mv	a1, s5
	j	.LBB1_22.52
.LBB1_11.26:
	li	a1, 46
	beq	a3, a1, .LBB1_12.28
	j	.LBB1_13.29
.LBB1_12.28:
	mv	a0, a4
	call	putch
	mv	a1, s5
	j	.LBB1_22.52
.LBB1_13.29:
	li	a1, 44
	beq	a3, a1, .LBB1_14.31
	j	.LBB1_15.33
.LBB1_14.31:
	call	getch
	sw	a0, 0(s2)
	mv	a1, s5
	j	.LBB1_22.52
.LBB1_15.33:
	li	a2, 93
	mv	a1, s5
	beq	a3, a2, .LBB1_16.35
	j	.LBB1_22.52
.LBB1_16.35:
	li	a3, 1
	mv	a1, s5
	bne	a4, zero, .LBB1_17.37
	j	.LBB1_22.52
.LBB1_17.37:
	mv	a1, s5
	blt	zero, a3, .LBB1_18.41
	j	.LBB1_22.52
.LBB1_18.41:
	addiw	s5, s5, -1
	.word	0x214ac5b3	# sh2add	a1, s5, s4
	lw	a2, 0(a1)
	li	a1, 91
	beq	a2, a1, .LBB1_19.46
	j	.LBB1_20.48
.LBB1_19.46:
	addiw	a3, a3, -1
	j	.LBB1_17.37
.LBB1_20.48:
	li	a1, 93
	beq	a2, a1, .LBB1_21.50
	j	.LBB1_17.37
.LBB1_21.50:
	addiw	a3, a3, 1
	j	.LBB1_17.37
.LBB1_22.52:
	addiw	s5, a1, 1
	j	.LBB1_2.2
.LBB1_23.55:
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	ld	s4, 16(sp)
	ld	s5, 8(sp)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
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
	la	s1, program
	call	read_program
	addi	a0, s1, 0
	call	interpret
	mv	a0, zero
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	read_program
	.type	read_program, @function
read_program:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Lread_program$ENTRY:
	la	s1, program
	call	getint
	mv	s4, a0
	li	s3, 0
.LBB3_2.2:
	addi	a1, s1, 0
	.word	0x20b9c933	# sh2add	s2, s3, a1
	blt	s3, s4, .LBB3_3.6
	j	.LBB3_4.9
.LBB3_3.6:
	call	getch
	sw	a0, 0(s2)
	addiw	s3, s3, 1
	j	.LBB3_2.2
.LBB3_4.9:
	sw	zero, 0(s2)
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s4, 0(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.globl	BUFFER_LEN
	.section	.data
	.type	BUFFER_LEN, @object
BUFFER_LEN:
	.word	32768

	.globl	TAPE_LEN
	.section	.data
	.type	TAPE_LEN, @object
TAPE_LEN:
	.word	65536

	.globl	program
	.section	.bss
	.type	program, @object
program:
	.zero	131072

	.globl	ptr
	.section	.bss
	.type	ptr, @object
ptr:
	.zero	4

	.globl	tape
	.section	.bss
	.type	tape, @object
tape:
	.zero	262144

