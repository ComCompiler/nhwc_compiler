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
	.globl	f1
	.type	f1, @function
f1:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Lf1$ENTRY:
	la	s1, sum
	lw	a1, 0(s1)
	addw	s4, a1, a0
	sw	s4, 0(s1)
	call	getA
	mv	s3, a0
	addw	s2, s4, s3
	sw	s2, 0(s1)
	call	getA
	addw	a1, s2, a0
	sw	a1, 0(s1)
	slliw	a1, s3, 1
	addw	a1, s4, a1
	addw	a1, a1, a0
	sw	a1, 0(s1)
	li	a1, 3
	mulw	a1, s3, a1
	addw	a1, s4, a1
	addw	a1, a1, a0
	sw	a1, 0(s1)
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
	.globl	f2
	.type	f2, @function
f2:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
.Lf2$ENTRY:
	la	a0, a
	la	s1, sum
	lw	s3, 0(s1)
	lw	s2, 0(a0)
	addw	a0, s3, s2
	sw	a0, 0(s1)
	call	getA
	slliw	a1, s2, 1
	addw	a1, s3, a1
	sw	a1, 0(s1)
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.section	.text
	.align	4
	.globl	f3
	.type	f3, @function
f3:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Lf3$ENTRY:
	la	s1, sum
	call	getA
	mv	s4, a0
	lw	s3, 0(s1)
	addw	a0, s3, s4
	sw	a0, 0(s1)
	call	getA
	mv	s2, a0
	addw	a0, s4, s2
	addw	a0, a0, s3
	sw	a0, 0(s1)
	call	getA
	slliw	a1, s2, 1
	addw	a1, s4, a1
	addw	a1, a1, s3
	sw	a1, 0(s1)
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
	.globl	getA
	.type	getA, @function
getA:
.LgetA$ENTRY:
	la	a1, count
	lw	a0, 0(a1)
	addiw	a0, a0, 1
	sw	a0, 0(a1)
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
	la	s1, a
	la	s2, sum
	sw	zero, 0(s2)
	call	getA
	sw	a0, 0(s1)
	addiw	a0, a0, 0
	sw	a0, 0(s2)
	call	getA
	mv	s3, a0
	mv	a0, s3
	call	f1
	call	f2
	call	f3
	mv	a0, s3
	call	f1
	call	f2
	call	f3
	call	getA
	mv	a0, s3
	call	f1
	call	f2
	call	f3
	call	getA
	call	getA
	call	f1
	call	f2
	call	f3
	call	getA
	call	f1
	call	f2
	call	f3
	call	getA
	call	f1
	call	f2
	call	f3
	mv	a0, s3
	call	f1
	call	f2
	call	f3
	li	s4, 0
.LBB5_2.9:
	li	a0, 3
	blt	s4, a0, .LBB5_3.13
	j	.LBB5_6.20
.LBB5_3.13:
	mv	a0, s3
	call	f1
	call	f2
	call	f3
	addiw	s1, s4, 1
	li	a0, 1
	beq	s4, a0, .LBB5_4.16
	j	.LBB5_5.18
.LBB5_4.16:
	call	getA
	call	f1
	call	f2
	call	f3
	mv	s4, s1
	j	.LBB5_2.9
.LBB5_5.18:
	mv	a0, s3
	call	f1
	call	f2
	call	f3
	call	getA
	mv	s4, s1
	mv	s3, a0
	j	.LBB5_2.9
.LBB5_6.20:
	lw	a0, 0(s2)
	call	putint
	mv	a0, zero
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s4, 0(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.globl	a
	.section	.bss
	.type	a, @object
a:
	.zero	4

	.globl	count
	.section	.bss
	.type	count, @object
count:
	.zero	4

	.globl	sum
	.section	.bss
	.type	sum, @object
sum:
	.zero	4

