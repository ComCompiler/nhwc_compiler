	.file	"demo_fibonacci.c"
	.option nopic
	.attribute arch, "rv32e1p9"
	.attribute unaligned_access, 0
	.attribute stack_align, 4
	.text
	.align	2
	.globl	Fibo
	.type	Fibo, @function
Fibo:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	addi	s0,sp,16
	sw	a0,-16(s0)
	lw	a5,-16(s0)
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	lw	a4,-16(s0)
	li	a5,1
	bne	a4,a5,.L4
	li	a5,1
	j	.L3
.L4:
	lw	a5,-16(s0)
	addi	a5,a5,-1
	mv	a0,a5
	call	Fibo
	mv	s1,a0
	lw	a5,-16(s0)
	addi	a5,a5,-2
	mv	a0,a5
	call	Fibo
	mv	a5,a0
	add	a5,s1,a5
.L3:
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	addi	sp,sp,16
	jr	ra
	.size	Fibo, .-Fibo
	.globl	m
	.section	.sbss,"aw",@nobits
	.align	2
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	li	a0,6
	call	Fibo
	sw	a0,-16(s0)
	lui	a5,%hi(m)
	lw	a5,%lo(m)(a5)
	addi	a4,a5,1
	lui	a5,%hi(m)
	sw	a4,%lo(m)(a5)
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
