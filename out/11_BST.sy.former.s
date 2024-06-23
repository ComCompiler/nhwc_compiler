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
	.globl	delete
	.type	delete, @function
delete:
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	addi	s0, sp, 64
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
	sd	s6, 0(sp)
.Ldelete$ENTRY:
	mv	s5, a0
	la	s1, value
	la	a2, right_child
	la	a0, left_child
	addi	a0, a0, 0
	.word	0x20aaca33	# sh2add	s4, s5, a0
	lw	a0, 0(s4)
	addi	a2, a2, 0
	.word	0x20cac9b3	# sh2add	s3, s5, a2
	lw	s6, 0(s3)
	li	a4, -1
	addi	a2, s1, 0
	.word	0x20cac933	# sh2add	s2, s5, a2
	lw	a3, 0(s2)
	li	a2, -1
	beq	s5, a4, .LBB1_13.32
.LBB1_2.10:
	blt	a3, a1, .LBB1_3.12
	j	.LBB1_4.14
.LBB1_3.12:
	mv	a0, s6
	call	delete
	sw	a0, 0(s3)
	mv	a2, s5
	j	.LBB1_13.32
.LBB1_4.14:
	blt	a1, a3, .LBB1_5.16
	j	.LBB1_6.18
.LBB1_5.16:
	call	delete
	sw	a0, 0(s4)
	mv	a2, s5
	j	.LBB1_13.32
.LBB1_6.18:
	li	a3, -1
	li	a1, -1
	beq	a0, a3, .LBB1_7.21
	j	.LBB1_8.22
.LBB1_7.21:
	li	a2, -1
	beq	s6, a1, .LBB1_13.32
.LBB1_8.22:
	beq	a0, a3, .LBB1_10.24
.LBB1_9.23:
	beq	s6, a1, .LBB1_10.24
	j	.LBB1_12.26
.LBB1_10.24:
	mv	a2, s6
	beq	a0, a3, .LBB1_13.32
.LBB1_11.25:
	mv	a2, a0
	j	.LBB1_13.32
.LBB1_12.26:
	mv	a0, s6
	call	find_minimum
	addi	a1, s1, 0
	.word	0x20b54533	# sh2add	a0, a0, a1
	lw	a1, 0(a0)
	sw	a1, 0(s2)
	lw	a1, 0(a0)
	mv	a0, s6
	call	delete
	sw	a0, 0(s3)
	mv	a2, s5
.LBB1_13.32:
	mv	a0, a2
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	ld	s4, 16(sp)
	ld	s5, 8(sp)
	ld	s6, 0(sp)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret

	.section	.text
	.align	4
	.globl	find_minimum
	.type	find_minimum, @function
find_minimum:
.Lfind_minimum$ENTRY:
	la	a1, left_child
	li	a3, -1
	li	a2, -1
	beq	a0, a3, .LBB2_4.9
.LBB2_2.3:
	addi	a1, a1, 0
	.word	0x20b545b3	# sh2add	a1, a0, a1
	lw	a3, 0(a1)
	li	a1, -1
	mv	a2, a0
	bne	a3, a1, .LBB2_3.7
	j	.LBB2_4.9
.LBB2_3.7:
	mv	a0, a3
	tail	.Lfind_minimum$ENTRY
.LBB2_4.9:
	mv	a0, a2
	ret

	.section	.text
	.align	4
	.globl	inorder
	.type	inorder, @function
inorder:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
.Linorder$ENTRY:
	mv	s3, a0
	la	s1, right_child
	la	s2, value
	la	a1, left_child
	li	a2, -1
	bne	s3, a2, .LBB3_2.3
	j	.LBB3_3.10
.LBB3_2.3:
	addi	a0, a1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	call	inorder
	addi	a0, s2, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	call	putint
	li	a0, 32
	call	putch
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	call	inorder
.LBB3_3.10:
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.section	.text
	.align	4
	.globl	insert
	.type	insert, @function
insert:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.Linsert$ENTRY:
	mv	s2, a0
	la	a0, left_child
	la	a2, right_child
	la	a3, value
	li	a4, -1
	beq	s2, a4, .LBB4_2.4
	j	.LBB4_3.6
.LBB4_2.4:
	mv	a0, a1
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	tail	new_node
.LBB4_3.6:
	addi	a3, a3, 0
	.word	0x20d946b3	# sh2add	a3, s2, a3
	lw	a3, 0(a3)
	blt	a3, a1, .LBB4_4.10
	j	.LBB4_5.14
.LBB4_4.10:
	addi	a0, a2, 0
	.word	0x20a944b3	# sh2add	s1, s2, a0
	lw	a0, 0(s1)
	call	insert
	sw	a0, 0(s1)
	j	.LBB4_6.18
.LBB4_5.14:
	addi	a0, a0, 0
	.word	0x20a944b3	# sh2add	s1, s2, a0
	lw	a0, 0(s1)
	call	insert
	sw	a0, 0(s1)
.LBB4_6.18:
	mv	a0, s2
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
.Lmain$ENTRY:
	la	a0, now
	sw	zero, 0(a0)
	call	getint
	mv	s3, a0
	xori	a0, s3, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB5_9.25
.LBB5_2.4:
	call	getint
	call	new_node
	mv	s1, a0
	li	s2, 1
.LBB5_3.7:
	blt	s2, s3, .LBB5_4.10
	j	.LBB5_5.14
.LBB5_4.10:
	call	getint
	mv	a1, a0
	mv	a0, s1
	call	insert
	addiw	s2, s2, 1
	j	.LBB5_3.7
.LBB5_5.14:
	mv	a0, s1
	call	inorder
	li	a0, 10
	call	putch
	call	getint
	mv	s3, a0
	li	s2, 0
.LBB5_6.16:
	blt	s2, s3, .LBB5_7.20
	j	.LBB5_8.24
.LBB5_7.20:
	call	getint
	mv	a1, a0
	mv	a0, s1
	call	delete
	addiw	s2, s2, 1
	mv	s1, a0
	j	.LBB5_6.16
.LBB5_8.24:
	mv	a0, s1
	call	inorder
	li	a0, 10
	call	putch
.LBB5_9.25:
	mv	a0, zero
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.section	.text
	.align	4
	.globl	new_node
	.type	new_node, @function
new_node:
.Lnew_node$ENTRY:
	la	a1, right_child
	la	a2, left_child
	la	a3, value
	la	a4, now
	lw	a5, 0(a4)
	addi	a3, a3, 0
	.word	0x20d7c6b3	# sh2add	a3, a5, a3
	sw	a0, 0(a3)
	addi	a0, a2, 0
	.word	0x20a7c533	# sh2add	a0, a5, a0
	li	a2, -1
	sw	a2, 0(a0)
	addi	a0, a1, 0
	.word	0x20a7c533	# sh2add	a0, a5, a0
	li	a1, -1
	sw	a1, 0(a0)
	addiw	a0, a5, 1
	sw	a0, 0(a4)
	addiw	a0, a5, 0
	ret

	.section	.text
	.align	4
	.globl	search
	.type	search, @function
search:
.Lsearch$ENTRY:
	la	a2, left_child
	la	a3, right_child
	la	a4, value
	li	a5, -1
	beq	a0, a5, .LBB7_3.8
.LBB7_2.4:
	addi	a4, a4, 0
	.word	0x20e54733	# sh2add	a4, a0, a4
	lw	a4, 0(a4)
	beq	a4, a1, .LBB7_3.8
	j	.LBB7_4.9
.LBB7_3.8:
	ret
.LBB7_4.9:
	blt	a4, a1, .LBB7_5.11
	j	.LBB7_6.15
.LBB7_5.11:
	addi	a2, a3, 0
	.word	0x20c54533	# sh2add	a0, a0, a2
	lw	a0, 0(a0)
	tail	.Lsearch$ENTRY
.LBB7_6.15:
	addi	a2, a2, 0
	.word	0x20c54533	# sh2add	a0, a0, a2
	lw	a0, 0(a0)
	tail	.Lsearch$ENTRY

	.globl	LF
	.section	.data
	.type	LF, @object
LF:
	.word	10

	.globl	left_child
	.section	.bss
	.type	left_child, @object
left_child:
	.zero	40000

	.globl	maxNode
	.section	.data
	.type	maxNode, @object
maxNode:
	.word	10000

	.globl	now
	.section	.bss
	.type	now, @object
now:
	.zero	4

	.globl	right_child
	.section	.bss
	.type	right_child, @object
right_child:
	.zero	40000

	.globl	space
	.section	.data
	.type	space, @object
space:
	.word	32

	.globl	value
	.section	.bss
	.type	value, @object
value:
	.zero	40000

