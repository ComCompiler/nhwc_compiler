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
	.globl	add_node
	.type	add_node, @function
add_node:
	addi	sp, sp, -32
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
.Ladd_node$ENTRY:
	la	a5, rev
	la	s1, cap
	la	s2, to
	la	s3, size
	addi	a3, s3, 0
	.word	0x20d54833	# sh2add	a6, a0, a3
	lw	a7, 0(a6)
	addi	a4, s2, 0
	li	a3, 40
	mul	a3, a0, a3
	add	a3, a4, a3
	addi	a3, a3, 0
	.word	0x20d8c6b3	# sh2add	a3, a7, a3
	sw	a1, 0(a3)
	addi	a4, s1, 0
	li	a3, 40
	mul	a3, a0, a3
	add	a3, a4, a3
	addi	a3, a3, 0
	.word	0x20d8c6b3	# sh2add	a3, a7, a3
	sw	a2, 0(a3)
	addi	a3, a5, 0
	li	a2, 40
	mul	a2, a0, a2
	add	a2, a3, a2
	addi	a2, a2, 0
	.word	0x20c8c6b3	# sh2add	a3, a7, a2
	addi	a2, s3, 0
	.word	0x20c5c733	# sh2add	a4, a1, a2
	lw	s3, 0(a4)
	sw	s3, 0(a3)
	addi	a3, s2, 0
	li	a2, 40
	mul	a2, a1, a2
	add	a2, a3, a2
	addi	a2, a2, 0
	.word	0x20c9c633	# sh2add	a2, s3, a2
	sw	a0, 0(a2)
	addi	a3, s1, 0
	li	a2, 40
	mul	a2, a1, a2
	add	a2, a3, a2
	addi	a2, a2, 0
	.word	0x20c9c633	# sh2add	a2, s3, a2
	sw	zero, 0(a2)
	addi	a3, a5, 0
	li	a2, 40
	mul	a2, a1, a2
	add	a1, a3, a2
	addi	a1, a1, 0
	.word	0x20b9c5b3	# sh2add	a1, s3, a1
	sw	a7, 0(a1)
	addiw	a1, a7, 1
	sw	a1, 0(a6)
	lw	a1, 0(a4)
	addiw	a1, a1, 1
	sw	a1, 0(a4)
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	dfs
	.type	dfs, @function
dfs:
	addi	sp, sp, -112
	sd	ra, 104(sp)
	sd	s0, 96(sp)
	addi	s0, sp, 112
	sd	s1, 88(sp)
	sd	s2, 80(sp)
	sd	s3, 72(sp)
	sd	s4, 64(sp)
	sd	s5, 56(sp)
	sd	s6, 48(sp)
	sd	s7, 40(sp)
	sd	s8, 32(sp)
	sd	s9, 24(sp)
	sd	s10, 16(sp)
	sd	s11, 8(sp)
.Ldfs$ENTRY:
	mv	s8, a2
	mv	s10, a1
	mv	s9, a0
	la	s1, rev
	la	s3, cap
	la	a1, to
	la	a2, size
	la	s6, used
	mv	a0, s8
	beq	s9, s10, .LBB2_10.42
.LBB2_2.5:
	addi	a0, s6, 0
	.word	0x20acc533	# sh2add	a0, s9, a0
	li	a3, 1
	sw	a3, 0(a0)
	addi	a0, a2, 0
	.word	0x20acc533	# sh2add	a0, s9, a0
	lw	a0, 0(a0)
	# spill i32 %11
	sw	a0, 0(sp)
	addi	a1, a1, 0
	li	a0, 40
	mul	a0, s9, a0
	add	s5, a1, a0
	addi	a1, s3, 0
	li	a0, 40
	mul	a0, s9, a0
	add	s4, a1, a0
	li	a1, 0
.LBB2_3.11:
	mv	s11, a1
	li	a0, 0
	# reload i32 %11
	lw	a1, 0(sp)
	blt	s11, a1, .LBB2_4.14
	j	.LBB2_10.42
.LBB2_4.14:
	addi	a0, s5, 0
	.word	0x20adc533	# sh2add	a0, s11, a0
	lw	s7, 0(a0)
	addi	a0, s6, 0
	.word	0x20abc533	# sh2add	a0, s7, a0
	lw	a2, 0(a0)
	addi	a0, s4, 0
	.word	0x20adc933	# sh2add	s2, s11, a0
	lw	a0, 0(s2)
	addiw	a1, s11, 1
	# spill i32 %32
	sw	a1, 4(sp)
	bne	a2, zero, .LBB2_3.11
.LBB2_5.23:
	# reload i32 %32
	lw	a1, 4(sp)
	bge	zero, a0, .LBB2_3.11
.LBB2_6.25:
	mv	a2, s8
	blt	s8, a0, .LBB2_8.28
.LBB2_7.27:
	mv	a2, a0
.LBB2_8.28:
	mv	a0, s7
	mv	a1, s10
	call	dfs
	# reload i32 %32
	lw	a1, 4(sp)
	blt	zero, a0, .LBB2_9.32
	j	.LBB2_3.11
.LBB2_9.32:
	lw	a1, 0(s2)
	subw	a1, a1, a0
	sw	a1, 0(s2)
	addi	a2, s1, 0
	li	a1, 40
	mul	a1, s9, a1
	add	a1, a2, a1
	addi	a1, a1, 0
	.word	0x20bdc5b3	# sh2add	a1, s11, a1
	lw	a3, 0(a1)
	addi	a2, s3, 0
	li	a1, 40
	mul	a1, s7, a1
	add	a1, a2, a1
	addi	a1, a1, 0
	.word	0x20b6c5b3	# sh2add	a1, a3, a1
	lw	a2, 0(a1)
	addw	a2, a2, a0
	sw	a2, 0(a1)
.LBB2_10.42:
	ld	s1, 88(sp)
	ld	s2, 80(sp)
	ld	s3, 72(sp)
	ld	s4, 64(sp)
	ld	s5, 56(sp)
	ld	s6, 48(sp)
	ld	s7, 40(sp)
	ld	s8, 32(sp)
	ld	s9, 24(sp)
	ld	s10, 16(sp)
	ld	s11, 8(sp)
	ld	s0, 96(sp)
	ld	ra, 104(sp)
	addi	sp, sp, 112
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
	sd	s4, 0(sp)
.Lmain$ENTRY:
	la	s1, size
	call	getint
	mv	s4, a0
	call	getint
	mv	s3, a0
	addi	a0, s1, 0
	li	a1, 0
	li	a2, 10
	call	my_memset
.LBB3_2.4:
	blt	zero, s3, .LBB3_3.7
	j	.LBB3_4.12
.LBB3_3.7:
	call	getint
	mv	s2, a0
	call	getint
	mv	s1, a0
	call	getint
	mv	a2, a0
	mv	a0, s2
	mv	a1, s1
	call	add_node
	addiw	s3, s3, -1
	j	.LBB3_2.4
.LBB3_4.12:
	li	a0, 1
	mv	a1, s4
	call	max_flow
	call	putint
	li	a0, 10
	call	putch
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
	.globl	max_flow
	.type	max_flow, @function
max_flow:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Lmax_flow$ENTRY:
	mv	s3, a1
	mv	s4, a0
	la	a0, used
	addi	s1, a0, 0
	li	s2, 0
.LBB4_2.4:
	mv	a0, s1
	li	a1, 0
	li	a2, 10
	call	my_memset
	mv	a0, s4
	mv	a1, s3
	li	a2, 1879048192
	call	dfs
	beq	a0, zero, .LBB4_4.10
.LBB4_3.8:
	addw	s2, s2, a0
	j	.LBB4_2.4
.LBB4_4.10:
	mv	a0, s2
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
	.globl	my_memset
	.type	my_memset, @function
my_memset:
.Lmy_memset$ENTRY:
	li	a4, 0
.LBB5_2.4:
	blt	a4, a2, .LBB5_3.7
	j	.LBB5_4.10
.LBB5_3.7:
	.word	0x20a746b3	# sh2add	a3, a4, a0
	sw	a1, 0(a3)
	addiw	a4, a4, 1
	j	.LBB5_2.4
.LBB5_4.10:
	ret

	.globl	INF
	.section	.data
	.type	INF, @object
INF:
	.word	1879048192

	.globl	cap
	.section	.bss
	.type	cap, @object
cap:
	.zero	400

	.globl	rev
	.section	.bss
	.type	rev, @object
rev:
	.zero	400

	.globl	size
	.section	.bss
	.type	size, @object
size:
	.zero	40

	.globl	to
	.section	.bss
	.type	to, @object
to:
	.zero	400

	.globl	used
	.section	.bss
	.type	used, @object
used:
	.zero	40

