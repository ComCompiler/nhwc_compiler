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
	.globl	dfs
	.type	dfs, @function
dfs:
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
.Ldfs$ENTRY:
	mv	s9, a5
	mv	s3, a4
	mv	s4, a3
	mv	s7, a2
	mv	s6, a1
	mv	s5, a0
	la	a0, dp
	addi	a1, a0, 0
	li	a0, 2939328
	mul	a0, s5, a0
	add	a0, a1, a0
	addi	a1, a0, 0
	li	a0, 163296
	mul	a0, s6, a0
	add	a0, a1, a0
	addi	a1, a0, 0
	li	a0, 9072
	mul	a0, s7, a0
	add	a0, a1, a0
	addi	a1, a0, 0
	li	a0, 504
	mul	a0, s4, a0
	add	a0, a1, a0
	addi	a1, a0, 0
	li	a0, 28
	mul	a0, s3, a0
	add	a0, a1, a0
	addi	a0, a0, 0
	.word	0x20acc4b3	# sh2add	s1, s9, a0
	lw	a0, 0(s1)
	li	a1, -1
	bne	a0, a1, .LBB1_14.80
.LBB1_2.15:
	addw	a0, s3, s7
	addw	a0, a0, s4
	addw	a0, a0, s6
	addw	a1, a0, s5
	li	a0, 1
	beq	a1, zero, .LBB1_14.80
.LBB1_3.21:
	li	s2, 0
	bne	s5, zero, .LBB1_4.23
	j	.LBB1_5.31
.LBB1_4.23:
	addiw	a0, s5, -1
	mv	a1, s6
	mv	a2, s7
	mv	a3, s4
	mv	a4, s3
	li	a5, 1
	call	dfs
	mv	s2, a0
	mv	a0, s9
	li	a1, 2
	call	equal
	subw	a0, s5, a0
	mulw	a0, a0, s2
	addiw	a3, a0, 0
	li	a2, 1000000007
	li	a0, 1152921497
	mul	a0, a0, a3
	srai	a1, a0, 32
	sraiw	a1, a1, 28
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	s2, a3, a1
.LBB1_5.31:
	bne	s6, zero, .LBB1_6.34
	j	.LBB1_7.43
.LBB1_6.34:
	addiw	a1, s6, -1
	addiw	a0, s5, 1
	mv	a2, s7
	mv	a3, s4
	mv	a4, s3
	li	a5, 2
	call	dfs
	mv	s8, a0
	mv	a0, s9
	li	a1, 3
	call	equal
	subw	a0, s6, a0
	mulw	a0, a0, s8
	addw	a3, s2, a0
	li	a2, 1000000007
	li	a0, 1152921497
	mul	a0, a0, a3
	srai	a1, a0, 32
	sraiw	a1, a1, 28
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	s2, a3, a1
.LBB1_7.43:
	bne	s7, zero, .LBB1_8.46
	j	.LBB1_9.55
.LBB1_8.46:
	addiw	a2, s7, -1
	addiw	a1, s6, 1
	mv	a0, s5
	mv	a3, s4
	mv	a4, s3
	li	a5, 3
	call	dfs
	mv	s8, a0
	mv	a0, s9
	li	a1, 4
	call	equal
	subw	a0, s7, a0
	mulw	a0, a0, s8
	addw	a3, s2, a0
	li	a2, 1000000007
	li	a0, 1152921497
	mul	a0, a0, a3
	srai	a1, a0, 32
	sraiw	a1, a1, 28
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	s2, a3, a1
.LBB1_9.55:
	bne	s4, zero, .LBB1_10.58
	j	.LBB1_11.67
.LBB1_10.58:
	addiw	a3, s4, -1
	addiw	a2, s7, 1
	mv	a0, s5
	mv	a1, s6
	mv	a4, s3
	li	a5, 4
	call	dfs
	mv	s8, a0
	mv	a0, s9
	li	a1, 5
	call	equal
	subw	a0, s4, a0
	mulw	a0, a0, s8
	addw	a3, s2, a0
	li	a2, 1000000007
	li	a0, 1152921497
	mul	a0, a0, a3
	srai	a1, a0, 32
	sraiw	a1, a1, 28
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	s2, a3, a1
.LBB1_11.67:
	bne	s3, zero, .LBB1_12.70
	j	.LBB1_13.77
.LBB1_12.70:
	addiw	a4, s3, -1
	addiw	a3, s4, 1
	mv	a0, s5
	mv	a1, s6
	mv	a2, s7
	li	a5, 5
	call	dfs
	mulw	a0, s3, a0
	addw	a3, s2, a0
	li	a2, 1000000007
	li	a0, 1152921497
	mul	a0, a0, a3
	srai	a1, a0, 32
	sraiw	a1, a1, 28
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	s2, a3, a1
.LBB1_13.77:
	li	a2, 1000000007
	li	a0, 1152921497
	mul	a0, a0, s2
	srai	a1, a0, 32
	sraiw	a1, a1, 28
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	a0, s2, a1
	sw	a0, 0(s1)
.LBB1_14.80:
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	ld	s0, 80(sp)
	ld	ra, 88(sp)
	addi	sp, sp, 96
	ret

	.section	.text
	.align	4
	.globl	equal
	.type	equal, @function
equal:
.Lequal$ENTRY:
	li	a2, 1
	beq	a0, a1, .LBB2_3.5
.LBB2_2.4:
	li	a2, 0
.LBB2_3.5:
	mv	a0, a2
	ret

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
.Lmain$ENTRY:
	la	s1, cns
	la	s2, list
	la	s3, dp
	call	getint
	mv	s4, a0
	li	s6, 0
.LBB3_2.2:
	li	a2, 18
	addi	a1, s3, 0
	li	a0, 2939328
	mul	a0, s6, a0
	add	a5, a1, a0
	li	s7, 0
	li	s5, 0
	blt	s6, a2, .LBB3_3.6
	j	.LBB3_14.38
.LBB3_3.6:
	li	a2, 18
	addi	a1, a5, 0
	li	a0, 163296
	mul	a0, s7, a0
	add	a4, a1, a0
	li	s9, 0
	blt	s7, a2, .LBB3_4.10
	j	.LBB3_13.36
.LBB3_4.10:
	li	a2, 18
	addi	a1, a4, 0
	li	a0, 9072
	mul	a0, s9, a0
	add	a3, a1, a0
	li	s8, 0
	blt	s9, a2, .LBB3_5.14
	j	.LBB3_12.34
.LBB3_5.14:
	li	a6, 18
	addi	a1, a3, 0
	li	a0, 504
	mul	a0, s8, a0
	add	a2, a1, a0
	li	s5, 0
	blt	s8, a6, .LBB3_6.18
	j	.LBB3_11.32
.LBB3_6.18:
	li	a6, 18
	addi	a1, a2, 0
	li	a0, 28
	mul	a0, s5, a0
	add	a1, a1, a0
	li	a7, 0
	blt	s5, a6, .LBB3_7.22
	j	.LBB3_10.30
.LBB3_7.22:
	li	a0, 7
	blt	a7, a0, .LBB3_8.25
	j	.LBB3_9.28
.LBB3_8.25:
	addi	a0, a1, 0
	.word	0x20a8c533	# sh2add	a0, a7, a0
	li	a6, -1
	sw	a6, 0(a0)
	addiw	a7, a7, 1
	j	.LBB3_7.22
.LBB3_9.28:
	addiw	s5, s5, 1
	j	.LBB3_6.18
.LBB3_10.30:
	addiw	s8, s8, 1
	j	.LBB3_5.14
.LBB3_11.32:
	addiw	s9, s9, 1
	j	.LBB3_4.10
.LBB3_12.34:
	addiw	s7, s7, 1
	j	.LBB3_3.6
.LBB3_13.36:
	addiw	s6, s6, 1
	j	.LBB3_2.2
.LBB3_14.38:
	blt	s5, s4, .LBB3_15.41
	j	.LBB3_16.48
.LBB3_15.41:
	call	getint
	addi	a1, s2, 0
	.word	0x20bac5b3	# sh2add	a1, s5, a1
	sw	a0, 0(a1)
	addi	a1, s1, 0
	.word	0x20b54533	# sh2add	a0, a0, a1
	lw	a1, 0(a0)
	addiw	a1, a1, 1
	sw	a1, 0(a0)
	addiw	s5, s5, 1
	j	.LBB3_14.38
.LBB3_16.48:
	lw	a0, 4(s1)
	lw	a1, 8(s1)
	lw	a2, 12(s1)
	lw	a3, 16(s1)
	lw	a4, 20(s1)
	li	a5, 0
	call	dfs
	mv	s1, a0
	mv	a0, s1
	call	putint
	mv	a0, s1
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	ld	s0, 80(sp)
	ld	ra, 88(sp)
	addi	sp, sp, 96
	ret

	.globl	cns
	.section	.bss
	.type	cns, @object
cns:
	.zero	80

	.globl	dp
	.section	.bss
	.type	dp, @object
dp:
	.zero	52907904

	.globl	list
	.section	.bss
	.type	list, @object
list:
	.zero	800

	.globl	maxn
	.section	.data
	.type	maxn, @object
maxn:
	.word	18

	.globl	mod
	.section	.data
	.type	mod, @object
mod:
	.word	1000000007

