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
	.globl	long_array
	.type	long_array, @function
long_array:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)
	sd	s0, 2016(sp)
	addi	s0, sp, 2032
	sd	s1, 2008(sp)
	sd	s2, 2000(sp)
	sd	s3, 1992(sp)
	sd	s4, 1984(sp)
	sd	s5, 1976(sp)
	li	t0, -118032
	add	sp, sp, t0
.Llong_array$ENTRY:
	mv	s3, a0
	li	a0, 40960
	add	s2, sp, a0
	li	a0, 81920
	add	s1, sp, a0
	li	a5, 0
.LBB1_2.5:
	li	a0, 10000
	li	a6, 0
	blt	a5, a0, .LBB1_3.8
	j	.LBB1_4.13
.LBB1_3.8:
	addi	a0, sp, 0
	.word	0x20a7c5b3	# sh2add	a1, a5, a0
	mulw	a4, a5, a5
	li	a3, 10
	li	a0, 1717986919
	mul	a0, a0, a4
	srai	a2, a0, 32
	sraiw	a2, a2, 2
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a0, a4, a2
	sw	a0, 0(a1)
	addiw	a5, a5, 1
	j	.LBB1_2.5
.LBB1_4.13:
	li	a0, 10000
	li	a5, 0
	blt	a6, a0, .LBB1_5.16
	j	.LBB1_6.23
.LBB1_5.16:
	addi	a0, s2, -960
	.word	0x20a845b3	# sh2add	a1, a6, a0
	addi	a0, sp, 0
	.word	0x20a84533	# sh2add	a0, a6, a0
	lw	a0, 0(a0)
	mulw	a4, a0, a0
	li	a3, 10
	li	a0, 1717986919
	mul	a0, a0, a4
	srai	a2, a0, 32
	sraiw	a2, a2, 2
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a0, a4, a2
	sw	a0, 0(a1)
	addiw	a6, a6, 1
	j	.LBB1_4.13
.LBB1_6.23:
	li	a0, 10000
	li	s4, 0
	li	s5, 0
	blt	a5, a0, .LBB1_7.26
	j	.LBB1_8.36
.LBB1_7.26:
	addi	a0, s1, -1920
	.word	0x20a7c5b3	# sh2add	a1, a5, a0
	addi	a0, s2, -960
	.word	0x20a7c533	# sh2add	a0, a5, a0
	lw	a0, 0(a0)
	mulw	a4, a0, a0
	li	a3, 100
	li	a0, 1374389535
	mul	a0, a0, a4
	srai	a2, a0, 32
	sraiw	a2, a2, 5
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a2, a4, a2
	addi	a0, sp, 0
	.word	0x20a7c533	# sh2add	a0, a5, a0
	lw	a0, 0(a0)
	addw	a0, a2, a0
	sw	a0, 0(a1)
	addiw	a5, a5, 1
	j	.LBB1_6.23
.LBB1_8.36:
	li	a0, 10000
	blt	s5, a0, .LBB1_9.40
	j	.LBB1_23.93
.LBB1_9.40:
	li	a1, 10
	addi	a0, s1, -1920
	.word	0x20aac533	# sh2add	a0, s5, a0
	lw	a3, 0(a0)
	blt	s5, a1, .LBB1_10.44
	j	.LBB1_11.47
.LBB1_10.44:
	addw	a3, s4, a3
	li	a2, 1333
	li	a0, 824839931
	mul	a0, a0, a3
	srai	a1, a0, 32
	sraiw	a1, a1, 8
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	s4, a3, a1
	mv	a0, s4
	call	putint
	j	.LBB1_22.90
.LBB1_11.47:
	li	a0, 20
	li	a2, 5000
	blt	s5, a0, .LBB1_12.49
	j	.LBB1_15.60
.LBB1_12.49:
	li	a0, 10000
	blt	a2, a0, .LBB1_13.53
	j	.LBB1_14.59
.LBB1_13.53:
	addw	a1, s4, a3
	addi	a0, sp, 0
	.word	0x20a64533	# sh2add	a0, a2, a0
	lw	a0, 0(a0)
	subw	s4, a1, a0
	addiw	a2, a2, 1
	j	.LBB1_12.49
.LBB1_14.59:
	mv	a0, s4
	call	putint
	j	.LBB1_22.90
.LBB1_15.60:
	li	a1, 30
	addi	a0, s2, -960
	.word	0x20aac533	# sh2add	a0, s5, a0
	lw	a6, 0(a0)
	addi	a0, sp, 0
	.word	0x20aac533	# sh2add	a0, s5, a0
	lw	a5, 0(a0)
	li	a4, 5000
	blt	s5, a1, .LBB1_16.66
	j	.LBB1_21.86
.LBB1_16.66:
	li	a0, 10000
	blt	a4, a0, .LBB1_17.70
	j	.LBB1_20.85
.LBB1_17.70:
	li	a0, 2233
	blt	a0, a4, .LBB1_18.72
	j	.LBB1_19.78
.LBB1_18.72:
	addi	a0, sp, 0
	.word	0x20a74533	# sh2add	a0, a4, a0
	lw	a0, 0(a0)
	subw	a0, a6, a0
	addw	s4, a0, s4
	addiw	a4, a4, 1
	j	.LBB1_16.66
.LBB1_19.78:
	addw	a1, a5, s4
	addi	a0, s1, -1920
	.word	0x20a74533	# sh2add	a0, a4, a0
	lw	a0, 0(a0)
	addw	a3, a1, a0
	li	a2, 13333
	li	a0, 329861735
	mul	a0, a0, a3
	srai	a1, a0, 32
	sraiw	a1, a1, 10
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	s4, a3, a1
	addiw	a4, a4, 2
	j	.LBB1_16.66
.LBB1_20.85:
	mv	a0, s4
	call	putint
	j	.LBB1_22.90
.LBB1_21.86:
	mulw	a0, a3, s3
	addw	a3, s4, a0
	li	a2, 99988
	li	a0, 1407543789
	mul	a0, a0, a3
	srai	a1, a0, 32
	sraiw	a1, a1, 15
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	s4, a3, a1
.LBB1_22.90:
	addiw	s5, s5, 1
	j	.LBB1_8.36
.LBB1_23.93:
	mv	a0, s4
	addi	sp, s0, -2032
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s3, 1992(sp)
	ld	s4, 1984(sp)
	ld	s5, 1976(sp)
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
.Lmain$ENTRY:
	li	a0, 9
	tail	long_array

	.globl	N
	.section	.data
	.type	N, @object
N:
	.word	10000

