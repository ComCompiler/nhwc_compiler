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
	.globl	func1
	.type	func1, @function
func1:
.Lfunc1$ENTRY:
	beq	a2, zero, .LBB1_2.5
	j	.LBB1_3.7
.LBB1_2.5:
	mulw	a0, a0, a1
	ret
.LBB1_3.7:
	subw	a1, a1, a2
	li	a2, 0
	tail	.Lfunc1$ENTRY

	.section	.text
	.align	4
	.globl	func2
	.type	func2, @function
func2:
.Lfunc2$ENTRY:
	bne	a1, zero, .LBB2_2.4
	j	.LBB2_3.7
.LBB2_2.4:
	remw	a0, a0, a1
	li	a1, 0
	tail	.Lfunc2$ENTRY
.LBB2_3.7:
	ret

	.section	.text
	.align	4
	.globl	func3
	.type	func3, @function
func3:
.Lfunc3$ENTRY:
	beq	a1, zero, .LBB3_2.4
	j	.LBB3_3.6
.LBB3_2.4:
	addiw	a0, a0, 1
	ret
.LBB3_3.6:
	addw	a0, a0, a1
	li	a1, 0
	tail	.Lfunc3$ENTRY

	.section	.text
	.align	4
	.globl	func4
	.type	func4, @function
func4:
.Lfunc4$ENTRY:
	bne	a0, zero, .LBB4_3.6
.LBB4_2.5:
	mv	a1, a2
.LBB4_3.6:
	mv	a0, a1
	ret

	.section	.text
	.align	4
	.globl	func5
	.type	func5, @function
func5:
.Lfunc5$ENTRY:
	subw	a0, zero, a0
	ret

	.section	.text
	.align	4
	.globl	func6
	.type	func6, @function
func6:
.Lfunc6$ENTRY:
	bne	a0, zero, .LBB6_2.4
	j	.LBB6_3.6
.LBB6_2.4:
	li	a0, 1
	bne	a1, zero, .LBB6_4.7
.LBB6_3.6:
	li	a0, 0
.LBB6_4.7:
	ret

	.section	.text
	.align	4
	.globl	func7
	.type	func7, @function
func7:
.Lfunc7$ENTRY:
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a1, a0, 1
	li	a0, 1
	bne	a1, zero, .LBB7_3.5
.LBB7_2.4:
	li	a0, 0
.LBB7_3.5:
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
	addi	sp, sp, -176
	sd	ra, 168(sp)
	sd	s0, 160(sp)
	addi	s0, sp, 176
	sd	s1, 152(sp)
	sd	s2, 144(sp)
	sd	s3, 136(sp)
	sd	s4, 128(sp)
	sd	s5, 120(sp)
	sd	s6, 112(sp)
	sd	s7, 104(sp)
	sd	s8, 96(sp)
	sd	s9, 88(sp)
	sd	s10, 80(sp)
	sd	s11, 72(sp)
.Lmain$ENTRY:
	call	getint
	mv	s3, a0
	call	getint
	mv	s2, a0
	call	getint
	# spill i32 %4
	sw	a0, 40(sp)
	call	getint
	# spill i32 %5
	sw	a0, 44(sp)
	li	s1, 0
.LBB8_2.6:
	li	a0, 10
	blt	s1, a0, .LBB8_3.9
	j	.LBB8_4.13
.LBB8_3.9:
	call	getint
	addi	a1, sp, 0
	.word	0x20b4c5b3	# sh2add	a1, s1, a1
	sw	a0, 0(a1)
	addiw	s1, s1, 1
	j	.LBB8_2.6
.LBB8_4.13:
	lw	s9, 0(sp)
	lw	a0, 4(sp)
	# spill i32 %18
	sw	a0, 48(sp)
	lw	a0, 8(sp)
	# spill i32 %21
	sw	a0, 52(sp)
	lw	s4, 12(sp)
	lw	s8, 16(sp)
	lw	a0, 20(sp)
	# spill i32 %30
	sw	a0, 56(sp)
	lw	a0, 24(sp)
	# spill i32 %33
	sw	a0, 60(sp)
	lw	s6, 28(sp)
	lw	s7, 32(sp)
	lw	s5, 36(sp)
	mv	a0, s3
	call	func7
	mv	s1, a0
	mv	a0, s2
	call	func5
	mv	a1, a0
	mv	a0, s1
	call	func6
	# reload i32 %4
	lw	a1, 40(sp)
	call	func2
	# reload i32 %5
	lw	a1, 44(sp)
	call	func3
	call	func5
	mv	s10, a0
	# reload i32 %18
	lw	a0, 48(sp)
	call	func5
	mv	s11, a0
	mv	a0, s4
	call	func7
	mv	a1, a0
	# reload i32 %21
	lw	a0, 52(sp)
	call	func6
	mv	s1, a0
	# reload i32 %30
	lw	a0, 56(sp)
	call	func7
	mv	a1, a0
	mv	a0, s8
	call	func2
	mv	a2, a0
	mv	a0, s11
	mv	a1, s1
	call	func4
	# reload i32 %33
	lw	a1, 60(sp)
	call	func3
	mv	a1, s6
	call	func2
	mv	s1, a0
	mv	a0, s5
	call	func7
	mv	a1, a0
	mv	a0, s7
	call	func3
	mv	a1, a0
	mv	a0, s1
	mv	a2, s3
	call	func1
	mv	a2, a0
	mv	a0, s10
	mv	a1, s9
	call	func4
	mv	s1, a0
	# reload i32 %4
	lw	a0, 40(sp)
	call	func7
	# reload i32 %5
	lw	a1, 44(sp)
	call	func3
	mv	a1, a0
	mv	a0, s2
	call	func2
	mv	a1, a0
	mv	a0, s1
	call	func3
	mv	a1, s9
	# reload i32 %18
	lw	a2, 48(sp)
	call	func1
	# reload i32 %21
	lw	a1, 52(sp)
	call	func2
	mv	s2, a0
	# reload i32 %30
	lw	a0, 56(sp)
	call	func5
	mv	a1, a0
	mv	a0, s8
	call	func3
	mv	s1, a0
	# reload i32 %33
	lw	a0, 60(sp)
	call	func5
	mv	a1, a0
	mv	a0, s1
	call	func2
	mv	s1, a0
	mv	a0, s7
	call	func7
	mv	a2, a0
	mv	a0, s1
	mv	a1, s6
	call	func1
	mv	s1, a0
	mv	a0, s5
	call	func5
	mv	a1, a0
	mv	a0, s1
	call	func2
	mv	a1, s3
	call	func3
	mv	a2, a0
	mv	a0, s2
	mv	a1, s4
	call	func1
	ld	s1, 152(sp)
	ld	s2, 144(sp)
	ld	s3, 136(sp)
	ld	s4, 128(sp)
	ld	s5, 120(sp)
	ld	s6, 112(sp)
	ld	s7, 104(sp)
	ld	s8, 96(sp)
	ld	s9, 88(sp)
	ld	s10, 80(sp)
	ld	s11, 72(sp)
	ld	s0, 160(sp)
	ld	ra, 168(sp)
	addi	sp, sp, 176
	ret

