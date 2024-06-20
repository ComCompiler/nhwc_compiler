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
	.globl	Dijkstra
	.type	Dijkstra, @function
Dijkstra:
	addi	sp, sp, -64
	sd	s1, 56(sp)
	sd	s2, 48(sp)
	sd	s3, 40(sp)
	sd	s4, 32(sp)
	sd	s5, 24(sp)
	sd	s6, 16(sp)
	sd	s7, 8(sp)
.LDijkstra$ENTRY:
	la	a4, book
	la	a5, dis
	la	a6, e
	la	a1, n
	lw	s1, 0(a1)
	li	a3, 1
.LBB1_2.3:
	bge	s1, a3, .LBB1_3.6
	j	.LBB1_4.12
.LBB1_3.6:
	addi	a1, a5, 0
	.word	0x20b6c633	# sh2add	a2, a3, a1
	addi	a1, a6, 64
	.word	0x20b6c5b3	# sh2add	a1, a3, a1
	lw	a1, 0(a1)
	sw	a1, 0(a2)
	addi	a1, a4, 0
	.word	0x20b6c5b3	# sh2add	a1, a3, a1
	sw	zero, 0(a1)
	addiw	a3, a3, 1
	j	.LBB1_2.3
.LBB1_4.12:
	li	a1, 1
	sw	a1, 4(a4)
	addiw	s7, s1, -1
	li	s6, 1
.LBB1_5.15:
	li	s2, 1
	li	a7, 0
	li	a2, 65535
	bge	s7, s6, .LBB1_6.18
	j	.LBB1_18.58
.LBB1_6.18:
	bge	s1, s2, .LBB1_7.23
	j	.LBB1_11.36
.LBB1_7.23:
	addi	a1, a5, 0
	.word	0x20b945b3	# sh2add	a1, s2, a1
	lw	a3, 0(a1)
	blt	a3, a2, .LBB1_8.27
	j	.LBB1_10.32
.LBB1_8.27:
	addi	a1, a4, 0
	.word	0x20b945b3	# sh2add	a1, s2, a1
	lw	a1, 0(a1)
	beq	a1, zero, .LBB1_9.31
	j	.LBB1_10.32
.LBB1_9.31:
	mv	a7, s2
	mv	a2, a3
.LBB1_10.32:
	addiw	s2, s2, 1
	j	.LBB1_6.18
.LBB1_11.36:
	addi	a1, a4, 0
	.word	0x20b8c5b3	# sh2add	a1, a7, a1
	li	a2, 1
	sw	a2, 0(a1)
	addi	a2, a6, 0
	slli	a1, a7, 6
	add	a3, a2, a1
	addi	a1, a5, 0
	.word	0x20b8c633	# sh2add	a2, a7, a1
	li	s5, 1
.LBB1_12.40:
	bge	s1, s5, .LBB1_13.43
	j	.LBB1_17.56
.LBB1_13.43:
	addi	a1, a3, 0
	.word	0x20bac5b3	# sh2add	a1, s5, a1
	lw	s4, 0(a1)
	li	s3, 65535
	addi	a1, a5, 0
	.word	0x20bac5b3	# sh2add	a1, s5, a1
	lw	s2, 0(a1)
	lw	a7, 0(a2)
	blt	s4, s3, .LBB1_14.50
	j	.LBB1_16.54
.LBB1_14.50:
	addw	a7, a7, s4
	blt	a7, s2, .LBB1_15.53
	j	.LBB1_16.54
.LBB1_15.53:
	sw	a7, 0(a1)
.LBB1_16.54:
	addiw	s5, s5, 1
	j	.LBB1_12.40
.LBB1_17.56:
	addiw	s6, s6, 1
	j	.LBB1_5.15
.LBB1_18.58:
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s3, 40(sp)
	ld	s4, 32(sp)
	ld	s5, 24(sp)
	ld	s6, 16(sp)
	ld	s7, 8(sp)
	addi	sp, sp, 64
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
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
.Lmain$ENTRY:
	la	s1, dis
	la	s2, e
	la	s3, m
	la	s4, n
	call	getint
	sw	a0, 0(s4)
	call	getint
	sw	a0, 0(s3)
	lw	a5, 0(s4)
	li	a4, 1
.LBB2_2.4:
	addi	a1, s2, 0
	slli	a0, a4, 6
	add	a1, a1, a0
	li	a3, 1
	li	s5, 1
	bge	a5, a4, .LBB2_3.8
	j	.LBB2_9.20
.LBB2_3.8:
	bge	a5, a3, .LBB2_4.11
	j	.LBB2_8.18
.LBB2_4.11:
	addi	a0, a1, 0
	.word	0x20a6c533	# sh2add	a0, a3, a0
	beq	a4, a3, .LBB2_5.14
	j	.LBB2_6.15
.LBB2_5.14:
	sw	zero, 0(a0)
	j	.LBB2_7.16
.LBB2_6.15:
	li	a2, 65535
	sw	a2, 0(a0)
.LBB2_7.16:
	addiw	a3, a3, 1
	j	.LBB2_3.8
.LBB2_8.18:
	addiw	a4, a4, 1
	j	.LBB2_2.4
.LBB2_9.20:
	lw	a0, 0(s3)
	bge	a0, s5, .LBB2_10.24
	j	.LBB2_11.31
.LBB2_10.24:
	call	getint
	mv	s7, a0
	call	getint
	mv	s6, a0
	call	getint
	addi	a2, s2, 0
	slli	a1, s7, 6
	add	a1, a2, a1
	addi	a1, a1, 0
	.word	0x20bb45b3	# sh2add	a1, s6, a1
	sw	a0, 0(a1)
	addiw	s5, s5, 1
	j	.LBB2_9.20
.LBB2_11.31:
	call	Dijkstra
	li	s2, 1
.LBB2_12.32:
	lw	a0, 0(s4)
	bge	a0, s2, .LBB2_13.36
	j	.LBB2_14.40
.LBB2_13.36:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	call	putint
	li	a0, 32
	call	putch
	addiw	s2, s2, 1
	j	.LBB2_12.32
.LBB2_14.40:
	li	a0, 10
	call	putch
	mv	a0, zero
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s3, 40(sp)
	ld	s4, 32(sp)
	ld	s5, 24(sp)
	ld	s6, 16(sp)
	ld	s7, 8(sp)
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret

	.globl	INF
	.section	.data
	.type	INF, @object
INF:
	.word	65535

	.globl	book
	.section	.bss
	.type	book, @object
book:
	.zero	64

	.globl	dis
	.section	.bss
	.type	dis, @object
dis:
	.zero	64

	.globl	e
	.section	.bss
	.type	e, @object
e:
	.zero	1024

	.globl	m
	.section	.bss
	.type	m, @object
m:
	.zero	4

	.globl	n
	.section	.bss
	.type	n, @object
n:
	.zero	4

	.globl	v1
	.section	.bss
	.type	v1, @object
v1:
	.zero	4

	.globl	v2
	.section	.bss
	.type	v2, @object
v2:
	.zero	4

	.globl	w
	.section	.bss
	.type	w, @object
w:
	.zero	4

