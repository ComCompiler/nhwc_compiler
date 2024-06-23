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
	.globl	KMP
	.type	KMP, @function
KMP:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)
	sd	s0, 2016(sp)
	addi	s0, sp, 2032
	sd	s1, 2008(sp)
	sd	s2, 2000(sp)
	li	t0, -14384
	add	sp, sp, t0
.LKMP$ENTRY:
	mv	s1, a1
	mv	s2, a0
	addi	a1, sp, 0
	mv	a0, s2
	call	get_next
	li	a4, 0
	li	a2, 0
.LBB1_2.5:
	.word	0x20974533	# sh2add	a0, a4, s1
	lw	a3, 0(a0)
	li	a0, -1
	bne	a3, zero, .LBB1_3.11
	j	.LBB1_7.28
.LBB1_3.11:
	.word	0x21264533	# sh2add	a0, a2, s2
	lw	a1, 0(a0)
	addiw	a0, a4, 1
	beq	a1, a3, .LBB1_4.16
	j	.LBB1_5.22
.LBB1_4.16:
	addiw	a2, a2, 1
	.word	0x212645b3	# sh2add	a1, a2, s2
	lw	a1, 0(a1)
	xori	a1, a1, 0
	sltu	a1, zero, a1
	xori	a1, a1, 1
	mv	a4, a0
	bne	a1, zero, .LBB1_7.28
	j	.LBB1_2.5
.LBB1_5.22:
	addi	a1, sp, 0
	.word	0x20b645b3	# sh2add	a1, a2, a1
	lw	a2, 0(a1)
	li	a1, -1
	beq	a2, a1, .LBB1_6.26
	j	.LBB1_2.5
.LBB1_6.26:
	addiw	a2, a2, 1
	mv	a4, a0
	j	.LBB1_2.5
.LBB1_7.28:
	addi	sp, s0, -2032
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	ret

	.section	.text
	.align	4
	.globl	get_next
	.type	get_next, @function
get_next:
.Lget_next$ENTRY:
	li	a2, -1
	sw	a2, 0(a1)
	li	a3, -1
	li	a5, 0
.LBB2_2.4:
	.word	0x20a7c633	# sh2add	a2, a5, a0
	lw	a4, 0(a2)
	bne	a4, zero, .LBB2_3.10
	j	.LBB2_7.23
.LBB2_3.10:
	li	a2, -1
	beq	a3, a2, .LBB2_5.16
.LBB2_4.12:
	.word	0x20a6c633	# sh2add	a2, a3, a0
	lw	a2, 0(a2)
	beq	a4, a2, .LBB2_5.16
	j	.LBB2_6.20
.LBB2_5.16:
	addiw	a3, a3, 1
	addiw	a5, a5, 1
	.word	0x20b7c633	# sh2add	a2, a5, a1
	sw	a3, 0(a2)
	j	.LBB2_2.4
.LBB2_6.20:
	.word	0x20b6c633	# sh2add	a2, a3, a1
	lw	a3, 0(a2)
	j	.LBB2_2.4
.LBB2_7.23:
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
	add	s1, sp, a0
	addi	s2, sp, 0
	mv	a0, s2
	call	read_str
	addi	s1, s1, 0
	mv	a0, s1
	call	read_str
	mv	a0, s2
	mv	a1, s1
	call	KMP
	call	putint
	li	a0, 10
	call	putch
	mv	a0, zero
	addi	sp, s0, -2032
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	ret

	.section	.text
	.align	4
	.globl	read_str
	.type	read_str, @function
read_str:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.Lread_str$ENTRY:
	mv	s1, a0
	li	s2, 0
.LBB4_2.2:
	call	getch
	.word	0x209945b3	# sh2add	a1, s2, s1
	sw	a0, 0(a1)
	li	a2, 10
	beq	a0, a2, .LBB4_4.9
.LBB4_3.7:
	addiw	s2, s2, 1
	j	.LBB4_2.2
.LBB4_4.9:
	sw	zero, 0(a1)
	mv	a0, s2
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

