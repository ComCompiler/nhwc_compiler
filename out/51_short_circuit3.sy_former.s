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
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
.Lmain$ENTRY:
	la	s1, d
	la	s2, b
	la	s3, a
	li	a0, 2
	sw	a0, 0(s3)
	li	a0, 3
	sw	a0, 0(s2)
	li	a0, 0
	call	set_a
	bne	a0, zero, .LBB1_2.3
	j	.LBB1_3.5
.LBB1_2.3:
	li	a0, 1
	call	set_b
.LBB1_3.5:
	lw	a0, 0(s3)
	call	putint
	li	a0, 32
	call	putch
	lw	a0, 0(s2)
	call	putint
	li	a0, 32
	call	putch
	li	a0, 2
	sw	a0, 0(s3)
	li	a0, 3
	sw	a0, 0(s2)
	li	a0, 0
	call	set_a
	bne	a0, zero, .LBB1_4.10
	j	.LBB1_5.12
.LBB1_4.10:
	li	a0, 1
	call	set_b
.LBB1_5.12:
	lw	a0, 0(s3)
	call	putint
	li	a0, 32
	call	putch
	lw	a0, 0(s2)
	call	putint
	li	a0, 10
	call	putch
	li	a0, 2
	sw	a0, 0(s1)
	li	a0, 3
	call	set_d
	lw	a0, 0(s1)
	call	putint
	li	a0, 32
	call	putch
	lw	a0, 0(s1)
	call	putint
	li	a0, 10
	call	putch
	li	a0, 65
	call	putch
	li	a0, 68
	call	putch
	li	a0, 70
	call	putch
	li	a0, 10
	call	putch
	li	a0, 67
	call	putch
	li	a0, 73
	call	putch
	li	a0, 74
	call	putch
	beq	zero, zero, .LBB1_6.20
	j	.LBB1_7.21
.LBB1_6.20:
	li	a0, 75
	call	putch
.LBB1_7.21:
	li	a0, 10
	call	putch
	mv	a0, zero
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.section	.text
	.align	4
	.globl	set_a
	.type	set_a, @function
set_a:
.Lset_a$ENTRY:
	la	a1, a
	sw	a0, 0(a1)
	ret

	.section	.text
	.align	4
	.globl	set_b
	.type	set_b, @function
set_b:
.Lset_b$ENTRY:
	la	a1, b
	sw	a0, 0(a1)
	ret

	.section	.text
	.align	4
	.globl	set_d
	.type	set_d, @function
set_d:
.Lset_d$ENTRY:
	la	a1, d
	sw	a0, 0(a1)
	ret

	.globl	a
	.section	.bss
	.type	a, @object
a:
	.zero	4

	.globl	b
	.section	.bss
	.type	b, @object
b:
	.zero	4

	.globl	d
	.section	.bss
	.type	d, @object
d:
	.zero	4

