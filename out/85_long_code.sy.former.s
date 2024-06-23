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
	.globl	QuickSort
	.type	QuickSort, @function
QuickSort:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.LQuickSort$ENTRY:
	mv	s1, a0
	mv	s2, a2
	blt	a1, s2, .LBB1_2.5
	j	.LBB1_14.40
.LBB1_2.5:
	.word	0x2095c533	# sh2add	a0, a1, s1
	lw	s4, 0(a0)
	addiw	a7, s4, -1
	mv	a5, s2
	mv	a6, a1
.LBB1_3.9:
	.word	0x20984533	# sh2add	a0, a6, s1
	addiw	s3, a6, 1
	mv	a3, a5
	blt	a6, a5, .LBB1_4.15
	j	.LBB1_13.36
.LBB1_4.15:
	mv	a5, a3
	.word	0x2097c633	# sh2add	a2, a5, s1
	lw	a4, 0(a2)
	addiw	a3, a5, -1
	blt	a6, a5, .LBB1_5.21
	j	.LBB1_6.23
.LBB1_5.21:
	blt	a7, a4, .LBB1_4.15
.LBB1_6.23:
	blt	a6, a5, .LBB1_7.24
	j	.LBB1_8.25
.LBB1_7.24:
	sw	a4, 0(a0)
	mv	a6, s3
.LBB1_8.25:
	.word	0x20984533	# sh2add	a0, a6, s1
	lw	a0, 0(a0)
	blt	a6, a5, .LBB1_9.30
	j	.LBB1_11.34
.LBB1_9.30:
	blt	a0, s4, .LBB1_10.32
	j	.LBB1_11.34
.LBB1_10.32:
	addiw	a6, a6, 1
	j	.LBB1_8.25
.LBB1_11.34:
	blt	a6, a5, .LBB1_12.35
	j	.LBB1_3.9
.LBB1_12.35:
	sw	a0, 0(a2)
	mv	a5, a3
	j	.LBB1_3.9
.LBB1_13.36:
	sw	s4, 0(a0)
	addiw	a2, a6, -1
	mv	a0, s1
	call	QuickSort
	mv	a0, s1
	mv	a1, s3
	mv	a2, s2
	call	QuickSort
.LBB1_14.40:
	mv	a0, zero
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s4, 0(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.section	.text
	.align	4
	.globl	arrCopy
	.type	arrCopy, @function
arrCopy:
.LarrCopy$ENTRY:
	la	a2, n
	lw	a5, 0(a2)
	li	a4, 0
.LBB2_2.4:
	blt	a4, a5, .LBB2_3.7
	j	.LBB2_4.12
.LBB2_3.7:
	.word	0x20b746b3	# sh2add	a3, a4, a1
	.word	0x20a74633	# sh2add	a2, a4, a0
	lw	a2, 0(a2)
	sw	a2, 0(a3)
	addiw	a4, a4, 1
	j	.LBB2_2.4
.LBB2_4.12:
	mv	a0, zero
	ret

	.section	.text
	.align	4
	.globl	avgPooling
	.type	avgPooling, @function
avgPooling:
	addi	sp, sp, -16
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.LavgPooling$ENTRY:
	la	a2, n
	lw	s1, 0(a2)
	addiw	s2, a1, -1
	li	a7, 0
	li	a5, 0
.LBB3_2.6:
	blt	a7, s1, .LBB3_3.11
	j	.LBB3_8.31
.LBB3_3.11:
	addiw	a6, a7, 1
	.word	0x20a8c633	# sh2add	a2, a7, a0
	lw	a2, 0(a2)
	addw	a3, a5, a2
	blt	a7, s2, .LBB3_7.28
.LBB3_4.17:
	beq	a7, s2, .LBB3_5.19
	j	.LBB3_6.22
.LBB3_5.19:
	lw	a4, 0(a0)
	divw	a2, a5, a1
	sw	a2, 0(a0)
	mv	a3, a5
	j	.LBB3_7.28
.LBB3_6.22:
	subw	a2, a6, a1
	.word	0x20a64633	# sh2add	a2, a2, a0
	lw	a5, 0(a2)
	subw	a3, a3, a4
	divw	a4, a3, a1
	sw	a4, 0(a2)
	mv	a4, a5
.LBB3_7.28:
	mv	a5, a3
	mv	a7, a6
	j	.LBB3_2.6
.LBB3_8.31:
	subw	a1, zero, a1
	addw	a1, a1, s1
	addiw	a2, a1, 1
.LBB3_9.35:
	blt	a2, s1, .LBB3_10.38
	j	.LBB3_11.41
.LBB3_10.38:
	.word	0x20a645b3	# sh2add	a1, a2, a0
	sw	zero, 0(a1)
	addiw	a2, a2, 1
	j	.LBB3_9.35
.LBB3_11.41:
	mv	a0, zero
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	bubblesort
	.type	bubblesort, @function
bubblesort:
	addi	sp, sp, -16
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.Lbubblesort$ENTRY:
	la	a1, n
	lw	s2, 0(a1)
	addiw	s1, s2, -1
	li	a7, 0
.LBB4_2.4:
	subw	a1, zero, a7
	addiw	a1, a1, -1
	addw	a6, a1, s2
	li	a5, 0
	blt	a7, s1, .LBB4_3.10
	j	.LBB4_7.23
.LBB4_3.10:
	blt	a5, a6, .LBB4_4.13
	j	.LBB4_6.21
.LBB4_4.13:
	.word	0x20a7c633	# sh2add	a2, a5, a0
	lw	a4, 0(a2)
	addiw	a5, a5, 1
	.word	0x20a7c5b3	# sh2add	a1, a5, a0
	lw	a3, 0(a1)
	blt	a3, a4, .LBB4_5.20
	j	.LBB4_3.10
.LBB4_5.20:
	sw	a4, 0(a1)
	sw	a3, 0(a2)
	j	.LBB4_3.10
.LBB4_6.21:
	addiw	a7, a7, 1
	j	.LBB4_2.4
.LBB4_7.23:
	mv	a0, zero
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	calSum
	.type	calSum, @function
calSum:
.LcalSum$ENTRY:
	la	a2, n
	lw	a7, 0(a2)
	addiw	a6, a1, -1
	li	a5, 0
	li	a4, 0
.LBB5_2.5:
	blt	a5, a7, .LBB5_3.9
	j	.LBB5_7.20
.LBB5_3.9:
	.word	0x20a7c633	# sh2add	a2, a5, a0
	lw	a3, 0(a2)
	addw	a4, a4, a3
	remw	a3, a5, a1
	bne	a3, a6, .LBB5_4.15
	j	.LBB5_5.16
.LBB5_4.15:
	sw	zero, 0(a2)
	j	.LBB5_6.17
.LBB5_5.16:
	sw	a4, 0(a2)
	li	a4, 0
.LBB5_6.17:
	addiw	a5, a5, 1
	j	.LBB5_2.5
.LBB5_7.20:
	mv	a0, zero
	ret

	.section	.text
	.align	4
	.globl	getMid
	.type	getMid, @function
getMid:
.LgetMid$ENTRY:
	la	a1, n
	lw	a4, 0(a1)
	li	a3, 2
	li	a1, -2147483647
	mul	a1, a1, a4
	srai	a2, a1, 32
	addw	a2, a2, a4
	srliw	a1, a2, 31
	addw	a2, a2, a1
	mulw	a2, a2, a3
	subw	a3, a4, a2
	li	a1, -2147483647
	mul	a1, a1, a4
	srai	a2, a1, 32
	addw	a2, a2, a4
	srliw	a1, a2, 31
	addw	a2, a2, a1
	.word	0x20a645b3	# sh2add	a1, a2, a0
	lw	a1, 0(a1)
	beq	a3, zero, .LBB6_2.8
	j	.LBB6_3.14
.LBB6_2.8:
	addiw	a2, a2, -1
	.word	0x20a64533	# sh2add	a0, a2, a0
	lw	a0, 0(a0)
	addw	a2, a1, a0
	li	a0, -2147483647
	mul	a0, a0, a2
	srai	a1, a0, 32
	addw	a1, a1, a2
	srliw	a0, a1, 31
	addw	a1, a1, a0
.LBB6_3.14:
	mv	a0, a1
	ret

	.section	.text
	.align	4
	.globl	getMost
	.type	getMost, @function
getMost:
	addi	sp, sp, -2032
	addi	sp, sp, -1968
.LgetMost$ENTRY:
	la	a1, n
	lw	a7, 0(a1)
	li	a4, 0
.LBB7_2.4:
	li	a1, 1000
	li	a3, 0
	li	a6, 0
	blt	a4, a1, .LBB7_3.7
	j	.LBB7_4.10
.LBB7_3.7:
	addi	a1, sp, 0
	.word	0x20b745b3	# sh2add	a1, a4, a1
	sw	zero, 0(a1)
	addiw	a4, a4, 1
	j	.LBB7_2.4
.LBB7_4.10:
	blt	a6, a7, .LBB7_5.15
	j	.LBB7_8.27
.LBB7_5.15:
	.word	0x20a845b3	# sh2add	a1, a6, a0
	lw	a5, 0(a1)
	addi	a1, sp, 0
	.word	0x20b7c5b3	# sh2add	a1, a5, a1
	lw	a4, 0(a1)
	addiw	a4, a4, 1
	sw	a4, 0(a1)
	blt	a3, a4, .LBB7_6.22
	j	.LBB7_7.23
.LBB7_6.22:
	mv	a2, a5
	mv	a3, a4
.LBB7_7.23:
	addiw	a6, a6, 1
	j	.LBB7_4.10
.LBB7_8.27:
	mv	a0, a2
	addi	sp, sp, 1968
	addi	sp, sp, 2032
	ret

	.section	.text
	.align	4
	.globl	insertsort
	.type	insertsort, @function
insertsort:
.Linsertsort$ENTRY:
	la	a1, n
	lw	a7, 0(a1)
	li	a6, 1
.LBB8_2.3:
	blt	a6, a7, .LBB8_3.6
	j	.LBB8_8.23
.LBB8_3.6:
	.word	0x20a845b3	# sh2add	a1, a6, a0
	lw	a5, 0(a1)
	addiw	a4, a6, -1
.LBB8_4.10:
	li	a3, -1
	addiw	a1, a4, 1
	.word	0x20a5c633	# sh2add	a2, a1, a0
	blt	a3, a4, .LBB8_5.15
	j	.LBB8_7.21
.LBB8_5.15:
	.word	0x20a745b3	# sh2add	a1, a4, a0
	lw	a1, 0(a1)
	blt	a5, a1, .LBB8_6.19
	j	.LBB8_7.21
.LBB8_6.19:
	sw	a1, 0(a2)
	addiw	a4, a4, -1
	j	.LBB8_4.10
.LBB8_7.21:
	sw	a5, 0(a2)
	addiw	a6, a6, 1
	j	.LBB8_2.3
.LBB8_8.23:
	mv	a0, zero
	ret

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
	la	a0, n
	li	a1, 32
	sw	a1, 0(a0)
	addi	s2, sp, 0
	li	a0, 7
	sw	a0, 0(sp)
	li	a0, 23
	sw	a0, 4(sp)
	li	a0, 89
	sw	a0, 8(sp)
	li	a0, 26
	sw	a0, 12(sp)
	li	a0, 282
	sw	a0, 16(sp)
	li	a0, 254
	sw	a0, 20(sp)
	li	a0, 27
	sw	a0, 24(sp)
	li	a0, 5
	sw	a0, 28(sp)
	li	a0, 83
	sw	a0, 32(sp)
	li	a0, 273
	sw	a0, 36(sp)
	li	a0, 574
	sw	a0, 40(sp)
	li	a0, 905
	sw	a0, 44(sp)
	li	a0, 354
	sw	a0, 48(sp)
	li	a0, 657
	sw	a0, 52(sp)
	li	a0, 935
	sw	a0, 56(sp)
	li	a0, 264
	sw	a0, 60(sp)
	li	a0, 639
	sw	a0, 64(sp)
	li	a0, 459
	sw	a0, 68(sp)
	li	a0, 29
	sw	a0, 72(sp)
	li	a0, 68
	sw	a0, 76(sp)
	li	a0, 929
	sw	a0, 80(sp)
	li	a0, 756
	sw	a0, 84(sp)
	li	a0, 452
	sw	a0, 88(sp)
	li	a0, 279
	sw	a0, 92(sp)
	li	a0, 58
	sw	a0, 96(sp)
	li	a0, 87
	sw	a0, 100(sp)
	li	a0, 96
	sw	a0, 104(sp)
	li	a0, 36
	sw	a0, 108(sp)
	li	a0, 39
	sw	a0, 112(sp)
	li	a0, 28
	sw	a0, 116(sp)
	li	a0, 1
	sw	a0, 120(sp)
	li	a0, 290
	sw	a0, 124(sp)
	addi	s1, sp, 128
	mv	a0, s2
	mv	a1, s1
	call	arrCopy
	mv	a0, s1
	call	revert
	li	s3, 0
.LBB9_2.38:
	li	a0, 32
	blt	s3, a0, .LBB9_3.41
	j	.LBB9_4.45
.LBB9_3.41:
	addi	a0, sp, 128
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	call	putint
	addiw	s3, s3, 1
	j	.LBB9_2.38
.LBB9_4.45:
	mv	a0, s1
	call	bubblesort
	li	s3, 0
.LBB9_5.47:
	li	a0, 32
	blt	s3, a0, .LBB9_6.50
	j	.LBB9_7.54
.LBB9_6.50:
	addi	a0, sp, 128
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	call	putint
	addiw	s3, s3, 1
	j	.LBB9_5.47
.LBB9_7.54:
	mv	a0, s1
	call	getMid
	call	putint
	mv	a0, s1
	call	getMost
	call	putint
	mv	a0, s2
	mv	a1, s1
	call	arrCopy
	mv	a0, s1
	call	bubblesort
	li	s3, 0
.LBB9_8.59:
	li	a0, 32
	blt	s3, a0, .LBB9_9.62
	j	.LBB9_10.66
.LBB9_9.62:
	addi	a0, sp, 128
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	call	putint
	addiw	s3, s3, 1
	j	.LBB9_8.59
.LBB9_10.66:
	mv	a0, s2
	mv	a1, s1
	call	arrCopy
	mv	a0, s1
	call	insertsort
	li	s3, 0
.LBB9_11.69:
	li	a0, 32
	blt	s3, a0, .LBB9_12.72
	j	.LBB9_13.76
.LBB9_12.72:
	addi	a0, sp, 128
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	call	putint
	addiw	s3, s3, 1
	j	.LBB9_11.69
.LBB9_13.76:
	mv	a0, s2
	mv	a1, s1
	call	arrCopy
	mv	a0, s1
	li	a1, 0
	li	a2, 31
	call	QuickSort
	li	s3, 0
.LBB9_14.79:
	li	a0, 32
	blt	s3, a0, .LBB9_15.82
	j	.LBB9_16.86
.LBB9_15.82:
	addi	a0, sp, 128
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	call	putint
	addiw	s3, s3, 1
	j	.LBB9_14.79
.LBB9_16.86:
	mv	a0, s2
	mv	a1, s1
	call	arrCopy
	mv	a0, s1
	li	a1, 4
	call	calSum
	li	s3, 0
.LBB9_17.89:
	li	a0, 32
	blt	s3, a0, .LBB9_18.92
	j	.LBB9_19.96
.LBB9_18.92:
	addi	a0, sp, 128
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	call	putint
	addiw	s3, s3, 1
	j	.LBB9_17.89
.LBB9_19.96:
	mv	a0, s2
	mv	a1, s1
	call	arrCopy
	mv	a0, s1
	li	a1, 3
	call	avgPooling
	li	s1, 0
.LBB9_20.99:
	li	a0, 32
	blt	s1, a0, .LBB9_21.102
	j	.LBB9_22.106
.LBB9_21.102:
	addi	a0, sp, 128
	.word	0x20a4c533	# sh2add	a0, s1, a0
	lw	a0, 0(a0)
	call	putint
	addiw	s1, s1, 1
	j	.LBB9_20.99
.LBB9_22.106:
	mv	a0, zero
	ld	s1, 280(sp)
	ld	s2, 272(sp)
	ld	s3, 264(sp)
	ld	s0, 288(sp)
	ld	ra, 296(sp)
	addi	sp, sp, 304
	ret

	.section	.text
	.align	4
	.globl	revert
	.type	revert, @function
revert:
.Lrevert$ENTRY:
	li	a5, 0
	li	a6, 0
.LBB10_2.2:
	blt	a6, a5, .LBB10_3.6
	j	.LBB10_4.13
.LBB10_3.6:
	.word	0x20a84633	# sh2add	a2, a6, a0
	lw	a4, 0(a2)
	.word	0x20a7c5b3	# sh2add	a1, a5, a0
	lw	a3, 0(a1)
	sw	a3, 0(a2)
	sw	a4, 0(a1)
	addiw	a6, a6, 1
	addiw	a5, a5, -1
	j	.LBB10_2.2
.LBB10_4.13:
	mv	a0, zero
	ret

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

