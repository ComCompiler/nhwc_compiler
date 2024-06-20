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
	.globl	func
	.type	func, @function
func:
	addi	sp, sp, -80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	addi	s0, sp, 80
	sd	s1, 56(sp)
	sd	s2, 48(sp)
	sd	s3, 40(sp)
	sd	s4, 32(sp)
	sd	s5, 24(sp)
	sd	s6, 16(sp)
	sd	s7, 8(sp)
	sd	s8, 0(sp)
.Lfunc$ENTRY:
	mv	s4, a7
	mv	s5, a5
	mv	s6, a4
	mv	s1, a6
	mv	s8, a2
	mv	s2, a3
	li	a2, 236
	mul	a2, a0, a2
	add	s3, a1, a2
	li	s7, 0
.LBB1_2.11:
	li	a0, 10
	blt	s7, a0, .LBB1_3.14
	j	.LBB1_4.18
.LBB1_3.14:
	addi	a0, s3, 0
	.word	0x20abc533	# sh2add	a0, s7, a0
	lw	a0, 0(a0)
	call	putint
	addiw	s7, s7, 1
	j	.LBB1_2.11
.LBB1_4.18:
	li	a0, 10
	call	putch
	.word	0x212c4533	# sh2add	a0, s8, s2
	lw	a0, 0(a0)
	call	putint
	li	a0, 10
	call	putch
	ld	a5, 0(s0)
.LBB1_5.21:
	li	a0, 10
	blt	a5, a0, .LBB1_6.25
	j	.LBB1_7.31
.LBB1_6.25:
	.word	0x2097c5b3	# sh2add	a1, a5, s1
	li	a0, 128875
	mulw	a4, s4, a0
	li	a3, 3724
	li	a0, -1932965947
	mul	a0, a0, a4
	srai	a2, a0, 32
	addw	a2, a2, a4
	sraiw	a2, a2, 11
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a0, a4, a2
	sw	a0, 0(a1)
	addiw	a5, a5, 1
	addiw	s4, s4, 7
	j	.LBB1_5.21
.LBB1_7.31:
	addw	a0, s6, s5
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s3, 40(sp)
	ld	s4, 32(sp)
	ld	s5, 24(sp)
	ld	s6, 16(sp)
	ld	s7, 8(sp)
	ld	s8, 0(sp)
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
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
	sd	s3, 1992(sp)
	li	t0, -26864
	add	sp, sp, t0
.Lmain$ENTRY:
	li	a0, 16384
	add	s2, sp, a0
	addi	a0, sp, 0
	li	a1, 0
	li	a2, 16348
	call	memset
	addi	s1, s2, -36
	mv	a0, s1
	li	a1, 0
	li	a2, 12508
	call	memset
	addi	a1, sp, 0
	li	a0, 4556
	add	a3, a1, a0
	li	a0, 6
	sw	a0, 4(a3)
	li	a0, 7
	sw	a0, 12(a3)
	li	a0, 4
	sw	a0, 16(a3)
	li	a0, 9
	sw	a0, 28(a3)
	li	a0, 11
	sw	a0, 44(a3)
	li	a0, 1
	sw	a0, 1384(s2)
	li	a0, 2
	sw	a0, 1388(s2)
	li	a0, 3
	sw	a0, 1392(s2)
	li	a0, 9
	sw	a0, 1416(s2)
	lw	a4, 1392(s2)
	addi	a6, s2, 1380
	lw	a5, 1380(s2)
	addi	a1, s2, -36
	li	a0, 8024
	add	a0, a1, a0
	lw	a7, 16(a0)
	addi	a1, s2, -36
	li	a0, 12036
	add	a0, a1, a0
	lw	s3, 72(a0)
	lw	a0, 4(a3)
	lw	a2, 12(a3)
	addi	a3, a3, 0
	mv	a1, s1
	sd	s3, -16(sp)
	addi	sp, sp, -16
	call	func
	addi	sp, sp, 16
	li	a1, 3
	mulw	s1, a0, a1
.LBB2_2.30:
	bge	s1, zero, .LBB2_3.33
	j	.LBB2_4.37
.LBB2_3.33:
	addi	a0, s2, 1380
	.word	0x20a4c533	# sh2add	a0, s1, a0
	lw	a0, 0(a0)
	call	putint
	li	a0, 32
	call	putch
	addiw	s1, s1, -1
	j	.LBB2_2.30
.LBB2_4.37:
	li	a0, 10
	call	putch
	mv	a0, zero
	addi	sp, s0, -2032
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s3, 1992(sp)
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	ret

