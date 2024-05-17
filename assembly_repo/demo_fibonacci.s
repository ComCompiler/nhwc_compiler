	.text
	.file	"demo_fibonacci.c"
	.globl	Fibo                    # -- Begin function Fibo
	.p2align	2
	.type	Fibo,@function
Fibo:                                   # @Fibo
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	bnez	a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	sw	zero, -16(s0)
	j	.LBB0_5
.LBB0_2:
	lw	a0, -20(s0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	addi	a0, zero, 1
	sw	a0, -16(s0)
	j	.LBB0_5
.LBB0_4:
	lw	a0, -20(s0)
	addi	a0, a0, -1
	call	Fibo
	mv	s1, a0
	lw	a0, -20(s0)
	addi	a0, a0, -2
	call	Fibo
	add	a0, s1, a0
	sw	a0, -16(s0)
	j	.LBB0_5
.LBB0_5:
	lw	a0, -16(s0)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	Fibo, .Lfunc_end0-Fibo
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	addi	a0, zero, 6
	call	Fibo
	sw	a0, -12(s0)
	lui	a0, %hi(m)
	lw	a1, %lo(m)(a0)
	addi	a1, a1, 1
	sw	a1, %lo(m)(a0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	m,@object               # @m
	.section	.sbss,"aw",@nobits
	.globl	m
	.p2align	2
m:
	.word	0                       # 0x0
	.size	m, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
