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
	addi	sp, sp, -432
	sd	ra, 424(sp)
	sd	s0, 416(sp)
	addi	s0, sp, 432
	sd	s1, 408(sp)
.Lmain$ENTRY:
	li	s1, 0
.LBB1_2.2:
	call	getint
	li	a3, 0
	bne	a0, zero, .LBB1_3.6
	j	.LBB1_4.10
.LBB1_3.6:
	call	getint
	addi	a1, sp, 0
	.word	0x20b4c5b3	# sh2add	a1, s1, a1
	sw	a0, 0(a1)
	addiw	s1, s1, 1
	j	.LBB1_2.2
.LBB1_4.10:
	bne	s1, zero, .LBB1_5.14
	j	.LBB1_6.19
.LBB1_5.14:
	addiw	s1, s1, -1
	addi	a0, sp, 0
	.word	0x20a4c533	# sh2add	a0, s1, a0
	lw	a0, 0(a0)
	addw	a3, a3, a0
	j	.LBB1_4.10
.LBB1_6.19:
	li	a2, 79
	li	a0, 1739733589
	mul	a0, a0, a3
	srai	a1, a0, 32
	sraiw	a1, a1, 5
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	a0, a3, a1
	ld	s1, 408(sp)
	ld	s0, 416(sp)
	ld	ra, 424(sp)
	addi	sp, sp, 432
	ret

