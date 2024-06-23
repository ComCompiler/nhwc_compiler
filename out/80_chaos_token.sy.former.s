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
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	addi	s0, sp, 64
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
.Lmain$ENTRY:
	la	s1, N4__mE___
	la	s2, RET
	la	s3, saY_HeI10_To
	la	a0, __HELLO
	addi	a0, a0, 0
	call	putstr
	addi	s3, s3, 0
	addi	s2, s2, 0
	li	s4, 0
.LBB1_2.5:
	li	a0, 715827883
	mul	a0, a0, s4
	srai	a1, a0, 32
	srliw	a0, a1, 31
	addw	a3, a1, a0
	li	a2, 6
	li	a0, 715827883
	mul	a0, a0, s4
	srai	a1, a0, 32
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	s5, s4, a1
	bne	a3, s5, .LBB1_3.10
	j	.LBB1_4.19
.LBB1_3.10:
	addi	a1, s1, 0
	li	a0, 200
	mul	a0, a3, a0
	add	a0, a1, a0
	addi	a0, a0, 0
	call	putstr
	mv	a0, s3
	call	putstr
	addi	a1, s1, 0
	li	a0, 200
	mul	a0, s5, a0
	add	a0, a1, a0
	addi	a0, a0, 0
	call	putstr
	mv	a0, s2
	call	putstr
.LBB1_4.19:
	li	a0, 17
	mulw	a0, s4, a0
	addiw	a3, a0, 23
	li	a2, 32
	li	a0, -2147483647
	mul	a0, a0, a3
	srai	a1, a0, 32
	addw	a1, a1, a3
	sraiw	a1, a1, 4
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	s4, a3, a1
	beq	s4, zero, .LBB1_5.24
	j	.LBB1_2.5
.LBB1_5.24:
	mv	a0, zero
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
	.globl	putstr
	.type	putstr, @function
putstr:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.Lputstr$ENTRY:
	mv	s1, a0
	li	s2, 0
.LBB2_2.2:
	.word	0x20994533	# sh2add	a0, s2, s1
	lw	a0, 0(a0)
	bne	a0, zero, .LBB2_3.7
	j	.LBB2_4.9
.LBB2_3.7:
	call	putch
	addiw	s2, s2, 1
	j	.LBB2_2.2
.LBB2_4.9:
	mv	a0, s2
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.globl	N4__mE___
	.section	.data
	.type	N4__mE___, @object
N4__mE___:
	.word	83
	.word	97
	.word	97
	.word	98
	.word	97
	.word	114
	.word	117
	.zero	172
	.word	75
	.word	97
	.word	98
	.word	97
	.word	110
	.zero	180
	.word	72
	.word	97
	.word	115
	.word	104
	.word	105
	.word	98
	.word	105
	.word	114
	.word	111
	.word	107
	.word	111
	.word	117
	.zero	152
	.word	65
	.word	114
	.word	97
	.word	105
	.word	103
	.word	117
	.word	109
	.word	97
	.zero	168
	.word	72
	.word	117
	.word	110
	.word	98
	.word	111
	.word	114
	.word	117
	.word	116
	.word	111
	.word	32
	.word	80
	.word	101
	.word	110
	.word	103
	.word	105
	.word	110
	.zero	136
	.word	84
	.word	97
	.word	105
	.word	114
	.word	105
	.word	107
	.word	117
	.word	32
	.word	79
	.word	111
	.word	107
	.word	97
	.word	109
	.word	105
	.zero	144

	.globl	RET
	.section	.data
	.type	RET, @object
RET:
	.word	10
	.zero	16

	.globl	__HELLO
	.section	.data
	.type	__HELLO, @object
__HELLO:
	.word	87
	.word	101
	.word	108
	.word	99
	.word	111
	.word	109
	.word	101
	.word	32
	.word	116
	.word	111
	.word	32
	.word	116
	.word	104
	.word	101
	.word	32
	.word	74
	.word	97
	.word	112
	.word	97
	.word	114
	.word	105
	.word	32
	.word	80
	.word	97
	.word	114
	.word	107
	.word	33
	.word	10
	.zero	288

	.globl	saY_HeI10_To
	.section	.data
	.type	saY_HeI10_To, @object
saY_HeI10_To:
	.word	32
	.word	115
	.word	97
	.word	121
	.word	115
	.word	32
	.word	104
	.word	101
	.word	108
	.word	108
	.word	111
	.word	32
	.word	116
	.word	111
	.word	32
	.zero	100

