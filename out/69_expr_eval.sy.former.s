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
	.globl	eval
	.type	eval, @function
eval:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)
	sd	s0, 2016(sp)
	addi	s0, sp, 2032
	sd	s1, 2008(sp)
	sd	s2, 2000(sp)
	sd	s3, 1992(sp)
	sd	s4, 1984(sp)
	sd	s5, 1976(sp)
	sd	s6, 1968(sp)
	sd	s7, 1960(sp)
	sd	s8, 1952(sp)
	sd	s9, 1944(sp)
	addi	sp, sp, -112
.Leval$ENTRY:
	la	s1, other
	la	s2, num
	la	s3, cur_token
	addi	s5, sp, 0
	mv	a0, s5
	li	a1, 0
	li	a2, 1024
	call	memset
	addi	s4, sp, 1024
	mv	a0, s4
	li	a1, 0
	li	a2, 1024
	call	memset
	lw	a0, 0(s3)
	bne	a0, zero, .LBB1_2.7
	j	.LBB1_3.9
.LBB1_2.7:
	addi	sp, sp, 112
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s3, 1992(sp)
	ld	s4, 1984(sp)
	ld	s5, 1976(sp)
	ld	s6, 1968(sp)
	ld	s7, 1960(sp)
	ld	s8, 1952(sp)
	ld	s9, 1944(sp)
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	tail	panic
.LBB1_3.9:
	lw	a1, 0(s2)
	mv	a0, s5
	call	stack_push
	call	next_token
.LBB1_4.12:
	lw	a1, 0(s3)
	li	a0, 1
	beq	a1, a0, .LBB1_5.15
	j	.LBB1_13.42
.LBB1_5.15:
	lw	s9, 0(s1)
	mv	a0, s9
	call	get_op_prec
	mv	s8, a0
	xori	a0, s8, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB1_13.42
.LBB1_6.20:
	call	next_token
.LBB1_7.22:
	mv	a0, s4
	call	stack_size
	bne	a0, zero, .LBB1_8.25
	j	.LBB1_10.34
.LBB1_8.25:
	mv	a0, s4
	call	stack_peek
	call	get_op_prec
	bge	a0, s8, .LBB1_9.29
	j	.LBB1_10.34
.LBB1_9.29:
	mv	a0, s4
	call	stack_pop
	mv	s7, a0
	mv	a0, s5
	call	stack_pop
	mv	s6, a0
	mv	a0, s5
	call	stack_pop
	mv	a1, a0
	mv	a0, s7
	mv	a2, s6
	call	eval_op
	mv	a1, a0
	mv	a0, s5
	call	stack_push
	j	.LBB1_7.22
.LBB1_10.34:
	mv	a0, s4
	mv	a1, s9
	call	stack_push
	lw	a0, 0(s3)
	bne	a0, zero, .LBB1_11.37
	j	.LBB1_12.39
.LBB1_11.37:
	addi	sp, sp, 112
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s3, 1992(sp)
	ld	s4, 1984(sp)
	ld	s5, 1976(sp)
	ld	s6, 1968(sp)
	ld	s7, 1960(sp)
	ld	s8, 1952(sp)
	ld	s9, 1944(sp)
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	tail	panic
.LBB1_12.39:
	lw	a1, 0(s2)
	mv	a0, s5
	call	stack_push
	call	next_token
	j	.LBB1_4.12
.LBB1_13.42:
	call	next_token
.LBB1_14.44:
	mv	a0, s4
	call	stack_size
	bne	a0, zero, .LBB1_15.47
	j	.LBB1_16.52
.LBB1_15.47:
	mv	a0, s4
	call	stack_pop
	mv	s2, a0
	mv	a0, s5
	call	stack_pop
	mv	s1, a0
	mv	a0, s5
	call	stack_pop
	mv	a1, a0
	mv	a0, s2
	mv	a2, s1
	call	eval_op
	mv	a1, a0
	mv	a0, s5
	call	stack_push
	j	.LBB1_14.44
.LBB1_16.52:
	mv	a0, s5
	addi	sp, sp, 112
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s3, 1992(sp)
	ld	s4, 1984(sp)
	ld	s5, 1976(sp)
	ld	s6, 1968(sp)
	ld	s7, 1960(sp)
	ld	s8, 1952(sp)
	ld	s9, 1944(sp)
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	tail	stack_peek

	.section	.text
	.align	4
	.globl	eval_op
	.type	eval_op, @function
eval_op:
.Leval_op$ENTRY:
	li	a3, 43
	beq	a0, a3, .LBB2_2.5
	j	.LBB2_3.7
.LBB2_2.5:
	addw	a3, a1, a2
	j	.LBB2_11.23
.LBB2_3.7:
	li	a3, 45
	beq	a0, a3, .LBB2_4.9
	j	.LBB2_5.11
.LBB2_4.9:
	subw	a3, a1, a2
	j	.LBB2_11.23
.LBB2_5.11:
	li	a3, 42
	beq	a0, a3, .LBB2_6.13
	j	.LBB2_7.15
.LBB2_6.13:
	mulw	a3, a1, a2
	j	.LBB2_11.23
.LBB2_7.15:
	li	a3, 47
	beq	a0, a3, .LBB2_8.17
	j	.LBB2_9.19
.LBB2_8.17:
	divw	a3, a1, a2
	j	.LBB2_11.23
.LBB2_9.19:
	li	a4, 37
	li	a3, 0
	beq	a0, a4, .LBB2_10.21
	j	.LBB2_11.23
.LBB2_10.21:
	remw	a3, a1, a2
.LBB2_11.23:
	mv	a0, a3
	ret

	.section	.text
	.align	4
	.globl	get_op_prec
	.type	get_op_prec, @function
get_op_prec:
.Lget_op_prec$ENTRY:
	li	a2, 43
	li	a1, 10
	beq	a0, a2, .LBB3_7.12
.LBB3_2.3:
	li	a2, 45
	li	a1, 10
	beq	a0, a2, .LBB3_7.12
.LBB3_3.5:
	li	a2, 42
	li	a1, 20
	beq	a0, a2, .LBB3_7.12
.LBB3_4.7:
	li	a2, 47
	li	a1, 20
	beq	a0, a2, .LBB3_7.12
.LBB3_5.9:
	li	a2, 37
	li	a1, 20
	beq	a0, a2, .LBB3_7.12
.LBB3_6.11:
	li	a1, 0
.LBB3_7.12:
	mv	a0, a1
	ret

	.section	.text
	.align	4
	.globl	is_num
	.type	is_num, @function
is_num:
.Lis_num$ENTRY:
	li	a1, 48
	bge	a0, a1, .LBB4_2.3
	j	.LBB4_3.5
.LBB4_2.3:
	li	a2, 57
	li	a1, 1
	bge	a2, a0, .LBB4_4.6
.LBB4_3.5:
	li	a1, 0
.LBB4_4.6:
	mv	a0, a1
	ret

	.section	.text
	.align	4
	.globl	is_space
	.type	is_space, @function
is_space:
.Lis_space$ENTRY:
	li	a2, 32
	li	a1, 1
	beq	a0, a2, .LBB5_4.6
.LBB5_2.3:
	li	a2, 10
	li	a1, 1
	beq	a0, a2, .LBB5_4.6
.LBB5_3.5:
	li	a1, 0
.LBB5_4.6:
	mv	a0, a1
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
	call	getint
	mv	s1, a0
	call	getch
	call	next_token
.LBB6_2.4:
	bne	s1, zero, .LBB6_3.7
	j	.LBB6_4.10
.LBB6_3.7:
	call	eval
	call	putint
	li	a0, 10
	call	putch
	addiw	s1, s1, -1
	j	.LBB6_2.4
.LBB6_4.10:
	mv	a0, zero
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	next_char
	.type	next_char, @function
next_char:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
.Lnext_char$ENTRY:
	la	s1, last_char
	call	getch
	sw	a0, 0(s1)
	ld	s1, 8(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	next_token
	.type	next_token, @function
next_token:
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	addi	s0, sp, 64
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
.Lnext_token$ENTRY:
	la	s1, other
	la	s2, cur_token
	la	s3, num
	la	s4, last_char
.LBB8_2.1:
	lw	s5, 0(s4)
	mv	a0, s5
	call	is_space
	bne	a0, zero, .LBB8_3.5
	j	.LBB8_4.7
.LBB8_3.5:
	call	next_char
	j	.LBB8_2.1
.LBB8_4.7:
	mv	a0, s5
	call	is_num
	bne	a0, zero, .LBB8_5.10
	j	.LBB8_9.23
.LBB8_5.10:
	addiw	a0, s5, -48
	sw	a0, 0(s3)
.LBB8_6.12:
	call	next_char
	call	is_num
	bne	a0, zero, .LBB8_7.16
	j	.LBB8_8.22
.LBB8_7.16:
	lw	a2, 0(s3)
	lw	a0, 0(s4)
	addiw	a1, a0, -48
	li	a0, 10
	mulw	a0, a2, a0
	addw	a0, a1, a0
	sw	a0, 0(s3)
	j	.LBB8_6.12
.LBB8_8.22:
	sw	zero, 0(s2)
	j	.LBB8_10.25
.LBB8_9.23:
	sw	s5, 0(s1)
	call	next_char
	li	a0, 1
	sw	a0, 0(s2)
.LBB8_10.25:
	lw	a0, 0(s2)
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
	.globl	panic
	.type	panic, @function
panic:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Lpanic$ENTRY:
	li	a0, 112
	call	putch
	li	a0, 97
	call	putch
	li	a0, 110
	call	putch
	li	a0, 105
	call	putch
	li	a0, 99
	call	putch
	li	a0, 33
	call	putch
	li	a0, 10
	call	putch
	li	a0, -1
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	stack_peek
	.type	stack_peek, @function
stack_peek:
.Lstack_peek$ENTRY:
	lw	a1, 0(a0)
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a0, 0(a0)
	ret

	.section	.text
	.align	4
	.globl	stack_pop
	.type	stack_pop, @function
stack_pop:
.Lstack_pop$ENTRY:
	lw	a3, 0(a0)
	.word	0x20a6c5b3	# sh2add	a1, a3, a0
	lw	a2, 0(a1)
	addiw	a1, a3, -1
	sw	a1, 0(a0)
	mv	a0, a2
	ret

	.section	.text
	.align	4
	.globl	stack_push
	.type	stack_push, @function
stack_push:
.Lstack_push$ENTRY:
	lw	a2, 0(a0)
	addiw	a2, a2, 1
	sw	a2, 0(a0)
	.word	0x20a64633	# sh2add	a2, a2, a0
	sw	a1, 0(a2)
	ret

	.section	.text
	.align	4
	.globl	stack_size
	.type	stack_size, @function
stack_size:
.Lstack_size$ENTRY:
	lw	a0, 0(a0)
	ret

	.globl	TOKEN_NUM
	.section	.bss
	.type	TOKEN_NUM, @object
TOKEN_NUM:
	.zero	4

	.globl	TOKEN_OTHER
	.section	.data
	.type	TOKEN_OTHER, @object
TOKEN_OTHER:
	.word	1

	.globl	cur_token
	.section	.bss
	.type	cur_token, @object
cur_token:
	.zero	4

	.globl	last_char
	.section	.data
	.type	last_char, @object
last_char:
	.word	32

	.globl	num
	.section	.bss
	.type	num, @object
num:
	.zero	4

	.globl	other
	.section	.bss
	.type	other, @object
other:
	.zero	4

