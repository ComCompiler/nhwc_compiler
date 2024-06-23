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
	.globl	add
	.type	add, @function
add:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Ladd$ENTRY:
	la	a2, k
	lw	a2, 0(a2)
	call	add_impl
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	add_impl
	.type	add_impl, @function
add_impl:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Ladd_impl$ENTRY:
	lw	a3, 0(a0)
	beq	a2, zero, .LBB2_2.7
	j	.LBB2_3.11
.LBB2_2.7:
	lw	a1, 0(a1)
	addw	a1, a3, a1
	sw	a1, 0(a0)
	j	.LBB2_4.14
.LBB2_3.11:
	slliw	a3, a3, 1
	sw	a3, 0(a0)
	addiw	a2, a2, -1
	call	add_impl
.LBB2_4.14:
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	inc
	.type	inc, @function
inc:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Linc$ENTRY:
	la	a1, k
	lw	a1, 0(a1)
	call	inc_impl
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	inc_impl
	.type	inc_impl, @function
inc_impl:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Linc_impl$ENTRY:
	lw	a2, 0(a0)
	beq	a1, zero, .LBB4_2.6
	j	.LBB4_3.8
.LBB4_2.6:
	addiw	a1, a2, 1
	sw	a1, 0(a0)
	j	.LBB4_4.11
.LBB4_3.8:
	slliw	a2, a2, 1
	sw	a2, 0(a0)
	addiw	a1, a1, -1
	call	inc_impl
.LBB4_4.11:
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
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
.Lmain$ENTRY:
	la	s1, i
	la	s2, k
	la	a1, __const_init.z.0
	addi	a0, sp, 8
	addi	a1, a1, 0
	li	a2, 8
	call	memcpy
	call	getint
	sw	a0, 0(s2)
	call	getint
	addi	s5, sp, 4
	sw	a0, 4(sp)
	addi	s4, sp, 8
	mv	a0, s4
	call	getarray
	addi	s3, sp, 0
	addi	s2, s1, 0
.LBB5_2.15:
	lw	a0, 4(sp)
	bne	a0, zero, .LBB5_3.18
	j	.LBB5_7.32
.LBB5_3.18:
	lw	a0, 8(sp)
	sw	a0, 0(sp)
.LBB5_4.20:
	lw	a1, 0(sp)
	li	a0, 5
	blt	a1, a0, .LBB5_5.23
	j	.LBB5_6.28
.LBB5_5.23:
	lw	a0, 0(s1)
	call	putint
	lw	a0, 0(sp)
	call	putint
	lw	a0, 4(sp)
	call	putint
	lw	a0, 8(sp)
	call	putint
	mv	a0, s4
	mv	a1, s5
	call	add
	mv	a0, s3
	mv	a1, s5
	call	add
	mv	a0, s4
	mv	a1, s5
	call	sub
	j	.LBB5_4.20
.LBB5_6.28:
	mv	a0, s2
	call	inc
	mv	a0, s2
	mv	a1, s4
	call	add
	lw	a1, 0(s1)
	lw	a0, 12(sp)
	beq	a1, a0, .LBB5_7.32
	j	.LBB5_2.15
.LBB5_7.32:
	li	a0, 10
	call	putch
	mv	a0, zero
	ld	s1, 56(sp)
	ld	s2, 48(sp)
	ld	s3, 40(sp)
	ld	s4, 32(sp)
	ld	s5, 24(sp)
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret

	.section	.text
	.align	4
	.globl	sub
	.type	sub, @function
sub:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Lsub$ENTRY:
	la	a2, k
	lw	a2, 0(a2)
	call	sub_impl
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	sub_impl
	.type	sub_impl, @function
sub_impl:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Lsub_impl$ENTRY:
	lw	a3, 0(a0)
	beq	a2, zero, .LBB7_2.7
	j	.LBB7_3.11
.LBB7_2.7:
	lw	a1, 0(a1)
	subw	a1, a3, a1
	sw	a1, 0(a0)
	j	.LBB7_4.14
.LBB7_3.11:
	slliw	a3, a3, 1
	sw	a3, 0(a0)
	addiw	a2, a2, -1
	call	sub_impl
.LBB7_4.14:
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.data
	.type	__const_init.z.0, @object
__const_init.z.0:
	.word	4294967295
	.zero	4

	.globl	i
	.section	.bss
	.type	i, @object
i:
	.zero	4

	.globl	k
	.section	.bss
	.type	k, @object
k:
	.zero	4

