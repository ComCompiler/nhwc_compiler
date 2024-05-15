	.text
	.file	"sylib.c"
	.globl	getint                  # -- Begin function getint
	.p2align	2
	.type	getint,@function
getint:                                 # @getint
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
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, s0, -12
	call	__isoc99_scanf
	lw	a0, -12(s0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	getint, .Lfunc_end0-getint
	.cfi_endproc
                                        # -- End function
	.globl	getch                   # -- Begin function getch
	.p2align	2
	.type	getch,@function
getch:                                  # @getch
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
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	addi	a1, s0, -9
	call	__isoc99_scanf
	lb	a0, -9(s0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	getch, .Lfunc_end1-getch
	.cfi_endproc
                                        # -- End function
	.globl	getfloat                # -- Begin function getfloat
	.p2align	2
	.type	getfloat,@function
getfloat:                               # @getfloat
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
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	addi	a1, s0, -12
	call	__isoc99_scanf
	lw	a0, -12(s0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	getfloat, .Lfunc_end2-getfloat
	.cfi_endproc
                                        # -- End function
	.globl	getarray                # -- Begin function getarray
	.p2align	2
	.type	getarray,@function
getarray:                               # @getarray
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, s0, -20
	call	__isoc99_scanf
	sw	zero, -24(s0)
	j	.LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	bge	a0, a1, .LBB3_4
	j	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	slli	a1, a1, 2
	add	a1, a0, a1
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	__isoc99_scanf
	j	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB3_1
.LBB3_4:
	lw	a0, -20(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	getarray, .Lfunc_end3-getarray
	.cfi_endproc
                                        # -- End function
	.globl	getfarray               # -- Begin function getfarray
	.p2align	2
	.type	getfarray,@function
getfarray:                              # @getfarray
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, s0, -20
	call	__isoc99_scanf
	sw	zero, -24(s0)
	j	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	bge	a0, a1, .LBB4_4
	j	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	slli	a1, a1, 2
	add	a1, a0, a1
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	__isoc99_scanf
	j	.LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB4_1
.LBB4_4:
	lw	a0, -20(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	getfarray, .Lfunc_end4-getfarray
	.cfi_endproc
                                        # -- End function
	.globl	putint                  # -- Begin function putint
	.p2align	2
	.type	putint,@function
putint:                                 # @putint
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
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	putint, .Lfunc_end5-putint
	.cfi_endproc
                                        # -- End function
	.globl	putch                   # -- Begin function putch
	.p2align	2
	.type	putch,@function
putch:                                  # @putch
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
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end6:
	.size	putch, .Lfunc_end6-putch
	.cfi_endproc
                                        # -- End function
	.globl	putarray                # -- Begin function putarray
	.p2align	2
	.type	putarray,@function
putarray:                               # @putarray
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	printf
	sw	zero, -20(s0)
	j	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	lw	a1, -12(s0)
	bge	a0, a1, .LBB7_4
	j	.LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a1, 0(a0)
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	call	printf
	j	.LBB7_3
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB7_1
.LBB7_4:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	printf
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end7:
	.size	putarray, .Lfunc_end7-putarray
	.cfi_endproc
                                        # -- End function
	.globl	putfloat                # -- Begin function putfloat
	.p2align	2
	.type	putfloat,@function
putfloat:                               # @putfloat
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
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	call	__extendsfdf2
	mv	a2, a0
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	mv	a3, a1
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end8:
	.size	putfloat, .Lfunc_end8-putfloat
	.cfi_endproc
                                        # -- End function
	.globl	putfarray               # -- Begin function putfarray
	.p2align	2
	.type	putfarray,@function
putfarray:                              # @putfarray
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	printf
	sw	zero, -20(s0)
	j	.LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	lw	a1, -12(s0)
	bge	a0, a1, .LBB9_4
	j	.LBB9_2
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	call	__extendsfdf2
	mv	a2, a0
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	mv	a3, a1
	call	printf
	j	.LBB9_3
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB9_1
.LBB9_4:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	printf
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end9:
	.size	putfarray, .Lfunc_end9-putfarray
	.cfi_endproc
                                        # -- End function
	.globl	putf                    # -- Begin function putf
	.p2align	2
	.type	putf,@function
putf:                                   # @putf
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -36
	.cfi_offset s0, -40
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a7, 28(s0)
	sw	a6, 24(s0)
	sw	a5, 20(s0)
	sw	a4, 16(s0)
	sw	a3, 12(s0)
	sw	a2, 8(s0)
	sw	a1, 4(s0)
	sw	a0, -16(s0)
	addi	a0, s0, 4
	sw	a0, -32(s0)
	lui	a0, %hi(stdout)
	lw	a0, %lo(stdout)(a0)
	lw	a1, -16(s0)
	addi	a2, s0, -32
	call	vfprintf
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end10:
	.size	putf, .Lfunc_end10-putf
	.cfi_endproc
                                        # -- End function
	.globl	before_main             # -- Begin function before_main
	.p2align	2
	.type	before_main,@function
before_main:                            # @before_main
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
	sw	zero, -12(s0)
	j	.LBB11_1
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	addi	a1, zero, 1023
	blt	a1, a0, .LBB11_4
	j	.LBB11_2
.LBB11_2:                               #   in Loop: Header=BB11_1 Depth=1
	lw	a0, -12(s0)
	lui	a1, %hi(_sysy_us)
	addi	a1, a1, %lo(_sysy_us)
	slli	a0, a0, 2
	add	a0, a0, a1
	sw	zero, 0(a0)
	lw	a0, -12(s0)
	lui	a1, %hi(_sysy_s)
	addi	a1, a1, %lo(_sysy_s)
	slli	a0, a0, 2
	add	a0, a0, a1
	sw	zero, 0(a0)
	lw	a0, -12(s0)
	lui	a1, %hi(_sysy_m)
	addi	a1, a1, %lo(_sysy_m)
	slli	a0, a0, 2
	add	a0, a0, a1
	sw	zero, 0(a0)
	lw	a0, -12(s0)
	lui	a1, %hi(_sysy_h)
	addi	a1, a1, %lo(_sysy_h)
	slli	a0, a0, 2
	add	a0, a0, a1
	sw	zero, 0(a0)
	j	.LBB11_3
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB11_1
.LBB11_4:
	lui	a0, %hi(_sysy_idx)
	addi	a1, zero, 1
	sw	a1, %lo(_sysy_idx)(a0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end11:
	.size	before_main, .Lfunc_end11-before_main
	.cfi_endproc
                                        # -- End function
	.globl	after_main              # -- Begin function after_main
	.p2align	2
	.type	after_main,@function
after_main:                             # @after_main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	sw	s1, 36(sp)
	sw	s2, 32(sp)
	sw	s3, 28(sp)
	sw	s4, 24(sp)
	sw	s5, 20(sp)
	sw	s6, 16(sp)
	sw	s7, 12(sp)
	sw	s8, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	.cfi_offset s6, -32
	.cfi_offset s7, -36
	.cfi_offset s8, -40
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	addi	a0, zero, 1
	sw	a0, -44(s0)
	j	.LBB12_1
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -44(s0)
	lui	a1, %hi(_sysy_idx)
	lw	a1, %lo(_sysy_idx)(a1)
	bge	a0, a1, .LBB12_4
	j	.LBB12_2
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
	lui	a0, %hi(stderr)
	lw	a0, %lo(stderr)(a0)
	lw	a1, -44(s0)
	lui	a2, %hi(_sysy_l1)
	addi	a2, a2, %lo(_sysy_l1)
	slli	a1, a1, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	lui	a3, %hi(_sysy_l2)
	addi	a3, a3, %lo(_sysy_l2)
	add	a3, a1, a3
	lw	a3, 0(a3)
	lui	s2, %hi(_sysy_h)
	addi	s4, s2, %lo(_sysy_h)
	add	a4, a1, s4
	lw	a4, 0(a4)
	lui	s3, %hi(_sysy_m)
	addi	s6, s3, %lo(_sysy_m)
	add	a5, a1, s6
	lw	a5, 0(a5)
	lui	s5, %hi(_sysy_s)
	addi	s7, s5, %lo(_sysy_s)
	add	s1, a1, s7
	lw	a6, 0(s1)
	lui	s8, %hi(_sysy_us)
	addi	s1, s8, %lo(_sysy_us)
	add	a1, a1, s1
	lw	a7, 0(a1)
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	call	fprintf
	lw	a0, -44(s0)
	slli	a0, a0, 2
	add	a0, a0, s1
	lw	a0, 0(a0)
	lw	a1, %lo(_sysy_us)(s8)
	add	a0, a1, a0
	sw	a0, %lo(_sysy_us)(s8)
	lw	a0, -44(s0)
	slli	a0, a0, 2
	add	a0, a0, s7
	lw	a0, 0(a0)
	lw	a1, %lo(_sysy_s)(s5)
	add	a0, a1, a0
	sw	a0, %lo(_sysy_s)(s5)
	lw	a0, %lo(_sysy_us)(s8)
	lui	a1, 244
	addi	a1, a1, 576
	call	__modsi3
	sw	a0, %lo(_sysy_us)(s8)
	lw	a0, -44(s0)
	slli	a0, a0, 2
	add	a0, a0, s6
	lw	a0, 0(a0)
	lw	a1, %lo(_sysy_m)(s3)
	add	a0, a1, a0
	sw	a0, %lo(_sysy_m)(s3)
	lw	a0, %lo(_sysy_s)(s5)
	addi	a1, zero, 60
	call	__modsi3
	sw	a0, %lo(_sysy_s)(s5)
	lw	a0, -44(s0)
	slli	a0, a0, 2
	add	a0, a0, s4
	lw	a0, 0(a0)
	lw	a1, %lo(_sysy_h)(s2)
	add	a0, a1, a0
	sw	a0, %lo(_sysy_h)(s2)
	lw	a0, %lo(_sysy_m)(s3)
	addi	a1, zero, 60
	call	__modsi3
	sw	a0, %lo(_sysy_m)(s3)
	j	.LBB12_3
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB12_1
.LBB12_4:
	lui	a0, %hi(stderr)
	lw	a0, %lo(stderr)(a0)
	lui	a1, %hi(_sysy_h)
	lw	a2, %lo(_sysy_h)(a1)
	lui	a1, %hi(_sysy_m)
	lw	a3, %lo(_sysy_m)(a1)
	lui	a1, %hi(_sysy_s)
	lw	a4, %lo(_sysy_s)(a1)
	lui	a1, %hi(_sysy_us)
	lw	a5, %lo(_sysy_us)(a1)
	lui	a1, %hi(.L.str.8)
	addi	a1, a1, %lo(.L.str.8)
	call	fprintf
	lw	s8, 8(sp)
	lw	s7, 12(sp)
	lw	s6, 16(sp)
	lw	s5, 20(sp)
	lw	s4, 24(sp)
	lw	s3, 28(sp)
	lw	s2, 32(sp)
	lw	s1, 36(sp)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end12:
	.size	after_main, .Lfunc_end12-after_main
	.cfi_endproc
                                        # -- End function
	.globl	_sysy_starttime         # -- Begin function _sysy_starttime
	.p2align	2
	.type	_sysy_starttime,@function
_sysy_starttime:                        # @_sysy_starttime
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
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	lui	a1, %hi(_sysy_idx)
	lw	a1, %lo(_sysy_idx)(a1)
	lui	a2, %hi(_sysy_l1)
	addi	a2, a2, %lo(_sysy_l1)
	slli	a1, a1, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lui	a0, %hi(_sysy_start)
	addi	a0, a0, %lo(_sysy_start)
	mv	a1, zero
	call	gettimeofday
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end13:
	.size	_sysy_starttime, .Lfunc_end13-_sysy_starttime
	.cfi_endproc
                                        # -- End function
	.globl	_sysy_stoptime          # -- Begin function _sysy_stoptime
	.p2align	2
	.type	_sysy_stoptime,@function
_sysy_stoptime:                         # @_sysy_stoptime
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	sw	s5, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	.cfi_offset s3, -20
	.cfi_offset s4, -24
	.cfi_offset s5, -28
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -32(s0)
	lui	s2, %hi(_sysy_end)
	addi	s4, s2, %lo(_sysy_end)
	mv	a0, s4
	mv	a1, zero
	call	gettimeofday
	lw	a0, -32(s0)
	lui	s3, %hi(_sysy_idx)
	lw	a1, %lo(_sysy_idx)(s3)
	lui	a2, %hi(_sysy_l2)
	addi	a2, a2, %lo(_sysy_l2)
	slli	a1, a1, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, 4(s4)
	lw	a2, %lo(_sysy_end)(s2)
	lui	a1, %hi(_sysy_start)
	addi	s1, a1, %lo(_sysy_start)
	lw	a3, 4(s1)
	lw	a4, %lo(_sysy_start)(a1)
	sltu	a1, a2, a4
	sub	a0, a0, a3
	sub	a1, a0, a1
	sub	a0, a2, a4
	lui	a2, 244
	addi	s2, a2, 576
	mv	a2, s2
	mv	a3, zero
	call	__muldi3
	lw	a1, 8(s4)
	add	a0, a0, a1
	lw	a1, 8(s1)
	sub	a0, a0, a1
	lw	a1, %lo(_sysy_idx)(s3)
	lui	a2, %hi(_sysy_us)
	addi	s4, a2, %lo(_sysy_us)
	slli	a1, a1, 2
	add	a1, a1, s4
	lw	a2, 0(a1)
	add	a0, a2, a0
	sw	a0, 0(a1)
	lw	a0, %lo(_sysy_idx)(s3)
	slli	s1, a0, 2
	add	a0, s1, s4
	lw	a0, 0(a0)
	mv	a1, s2
	call	__divsi3
	lui	a1, %hi(_sysy_s)
	addi	s5, a1, %lo(_sysy_s)
	add	a1, s1, s5
	lw	a2, 0(a1)
	add	a0, a2, a0
	sw	a0, 0(a1)
	lw	a0, %lo(_sysy_idx)(s3)
	slli	a0, a0, 2
	add	s1, a0, s4
	lw	a0, 0(s1)
	mv	a1, s2
	call	__modsi3
	sw	a0, 0(s1)
	lw	a0, %lo(_sysy_idx)(s3)
	slli	s1, a0, 2
	add	a0, s1, s5
	lw	a0, 0(a0)
	addi	a1, zero, 60
	call	__divsi3
	lui	a1, %hi(_sysy_m)
	addi	s2, a1, %lo(_sysy_m)
	add	a1, s1, s2
	lw	a2, 0(a1)
	add	a0, a2, a0
	sw	a0, 0(a1)
	lw	a0, %lo(_sysy_idx)(s3)
	slli	a0, a0, 2
	add	s1, a0, s5
	lw	a0, 0(s1)
	addi	a1, zero, 60
	call	__modsi3
	sw	a0, 0(s1)
	lw	a0, %lo(_sysy_idx)(s3)
	slli	s1, a0, 2
	add	a0, s1, s2
	lw	a0, 0(a0)
	addi	a1, zero, 60
	call	__divsi3
	lui	a1, %hi(_sysy_h)
	addi	a1, a1, %lo(_sysy_h)
	add	a1, s1, a1
	lw	a2, 0(a1)
	add	a0, a2, a0
	sw	a0, 0(a1)
	lw	a0, %lo(_sysy_idx)(s3)
	slli	a0, a0, 2
	add	s1, a0, s2
	lw	a0, 0(s1)
	addi	a1, zero, 60
	call	__modsi3
	sw	a0, 0(s1)
	lw	a0, %lo(_sysy_idx)(s3)
	addi	a0, a0, 1
	sw	a0, %lo(_sysy_idx)(s3)
	lw	s5, 4(sp)
	lw	s4, 8(sp)
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end14:
	.size	_sysy_stoptime, .Lfunc_end14-_sysy_stoptime
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%c"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%a"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d:"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	" %d"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\n"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	" %a"
	.size	.L.str.6, 4

	.type	_sysy_us,@object        # @_sysy_us
	.comm	_sysy_us,4096,16
	.type	_sysy_s,@object         # @_sysy_s
	.comm	_sysy_s,4096,16
	.type	_sysy_m,@object         # @_sysy_m
	.comm	_sysy_m,4096,16
	.type	_sysy_h,@object         # @_sysy_h
	.comm	_sysy_h,4096,16
	.type	_sysy_idx,@object       # @_sysy_idx
	.comm	_sysy_idx,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Timer@%04d-%04d: %dH-%dM-%dS-%dus\n"
	.size	.L.str.7, 35

	.type	_sysy_l1,@object        # @_sysy_l1
	.comm	_sysy_l1,4096,16
	.type	_sysy_l2,@object        # @_sysy_l2
	.comm	_sysy_l2,4096,16
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"TOTAL: %dH-%dM-%dS-%dus\n"
	.size	.L.str.8, 25

	.type	_sysy_start,@object     # @_sysy_start
	.comm	_sysy_start,16,8
	.type	_sysy_end,@object       # @_sysy_end
	.comm	_sysy_end,16,8
	.section	.init_array,"aw",@init_array
	.p2align	2
	.word	before_main
	.section	.fini_array,"aw",@fini_array
	.p2align	2
	.word	after_main
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
