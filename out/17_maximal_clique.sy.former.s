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
	.globl	is_clique
	.type	is_clique, @function
is_clique:
.Lis_clique$ENTRY:
	la	a3, graph
	la	a4, store
	li	a7, 1
.LBB1_2.2:
	li	a1, 1
	blt	a7, a0, .LBB1_3.5
	j	.LBB1_7.21
.LBB1_3.5:
	addi	a1, a4, 0
	.word	0x20b8c5b3	# sh2add	a1, a7, a1
	lw	a5, 0(a1)
	addi	a2, a3, 0
	li	a1, 120
	mul	a1, a5, a1
	add	a2, a2, a1
	addiw	a7, a7, 1
	mv	a6, a7
.LBB1_4.10:
	blt	a6, a0, .LBB1_5.13
	j	.LBB1_2.2
.LBB1_5.13:
	addi	a1, a4, 0
	.word	0x20b845b3	# sh2add	a1, a6, a1
	lw	a5, 0(a1)
	addi	a1, a2, 0
	.word	0x20b7c5b3	# sh2add	a1, a5, a1
	lw	a5, 0(a1)
	li	a1, 0
	beq	a5, zero, .LBB1_7.21
.LBB1_6.19:
	addiw	a6, a6, 1
	j	.LBB1_4.10
.LBB1_7.21:
	mv	a0, a1
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
	sd	s4, 1984(sp)
	li	t0, -2816
	add	sp, sp, t0
.Lmain$ENTRY:
	la	s1, graph
	la	s3, m
	la	s2, n
	call	getint
	sw	a0, 0(s2)
	call	getint
	sw	a0, 0(s3)
	li	s4, 0
.LBB2_2.4:
	lw	a5, 0(s3)
	li	a4, 0
	blt	s4, a5, .LBB2_3.8
	j	.LBB2_4.15
.LBB2_3.8:
	call	getint
	addi	a1, sp, 0
	.word	0x20ba6933
	sw	a0, 0(s2)
	call	getint
	sw	a0, 4(s2)
	addiw	s4, s4, 1
	j	.LBB2_2.4
.LBB2_4.15:
	blt	a4, a5, .LBB2_5.18
	j	.LBB2_6.29
.LBB2_5.18:
	addi	a0, sp, 0
	.word	0x20a76533
	lw	a3, 4(a0)
	lw	a2, 0(a0)
	addi	a1, s1, 0
	li	a0, 120
	mul	a0, a2, a0
	add	a0, a1, a0
	addi	a0, a0, 0
	.word	0x20a6c533	# sh2add	a0, a3, a0
	li	a1, 1
	sw	a1, 0(a0)
	addi	a1, s1, 0
	li	a0, 120
	mul	a0, a3, a0
	add	a0, a1, a0
	addi	a0, a0, 0
	.word	0x20a64533	# sh2add	a0, a2, a0
	li	a1, 1
	sw	a1, 0(a0)
	addiw	a4, a4, 1
	j	.LBB2_4.15
.LBB2_6.29:
	li	a0, 0
	li	a1, 1
	call	maxCliques
	call	putint
	mv	a0, zero
	addi	sp, s0, -2032
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s3, 1992(sp)
	ld	s4, 1984(sp)
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	ret

	.section	.text
	.align	4
	.globl	maxCliques
	.type	maxCliques, @function
maxCliques:
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
.LmaxCliques$ENTRY:
	mv	s5, a1
	la	a0, store
	la	a1, n
	lw	s6, 0(a1)
	addi	a0, a0, 0
	.word	0x20aac4b3	# sh2add	s1, s5, a0
	addiw	s4, s5, 1
	li	s3, 1
	li	s2, 0
.LBB3_2.6:
	bge	s6, s3, .LBB3_3.10
	j	.LBB3_9.24
.LBB3_3.10:
	sw	s3, 0(s1)
	mv	a0, s4
	call	is_clique
	bne	a0, zero, .LBB3_4.13
	j	.LBB3_8.21
.LBB3_4.13:
	blt	s2, s5, .LBB3_5.15
	j	.LBB3_6.16
.LBB3_5.15:
	mv	s2, s5
.LBB3_6.16:
	mv	a0, s3
	mv	a1, s4
	call	maxCliques
	blt	s2, a0, .LBB3_7.20
	j	.LBB3_8.21
.LBB3_7.20:
	mv	s2, a0
.LBB3_8.21:
	addiw	s3, s3, 1
	j	.LBB3_2.6
.LBB3_9.24:
	mv	a0, s2
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

	.globl	graph
	.section	.bss
	.type	graph, @object
graph:
	.zero	3600

	.globl	m
	.section	.bss
	.type	m, @object
m:
	.zero	4

	.globl	maxM
	.section	.data
	.type	maxM, @object
maxM:
	.word	600

	.globl	maxN
	.section	.data
	.type	maxN, @object
maxN:
	.word	30

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

	.globl	store
	.section	.bss
	.type	store, @object
store:
	.zero	120

