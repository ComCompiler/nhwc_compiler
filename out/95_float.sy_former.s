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
	.globl	assert
	.type	assert, @function
assert:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Lassert$ENTRY:
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB1_2.4
	j	.LBB1_3.5
.LBB1_2.4:
	call	error
	j	.LBB1_4.6
.LBB1_3.5:
	call	ok
.LBB1_4.6:
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	assert_not
	.type	assert_not, @function
assert_not:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Lassert_not$ENTRY:
	bne	a0, zero, .LBB2_2.3
	j	.LBB2_3.4
.LBB2_2.3:
	call	error
	j	.LBB2_4.5
.LBB2_3.4:
	call	ok
.LBB2_4.5:
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	circle_area
	.type	circle_area, @function
circle_area:
.Lcircle_area$ENTRY:
	fcvt.s.w	fa3, a0
	fcvt.s.w	fa1, a0
	mulw	a1, a0, a0
	fcvt.s.w	fa2, a1
	li	a1, 1078530011
	fmv.w.x	fa0, a1
	fmul.s	fa0, fa0, fa3
	fmul.s	fa1, fa0, fa1
	li	a1, 1078530011
	fmv.w.x	fa0, a1
	fmul.s	fa0, fa2, fa0
	fadd.s	fa1, fa1, fa0
	li	a1, 1073741824
	fmv.w.x	fa0, a1
	fdiv.s	fa0, fa1, fa0
	ret

	.section	.text
	.align	4
	.globl	error
	.type	error, @function
error:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Lerror$ENTRY:
	li	a0, 101
	call	putch
	li	a0, 114
	call	putch
	li	a0, 114
	call	putch
	li	a0, 111
	call	putch
	li	a0, 114
	call	putch
	li	a0, 10
	call	putch
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	float_abs
	.type	float_abs, @function
float_abs:
.Lfloat_abs$ENTRY:
	fmv.w.x	fa2, zero
	flt.s	a1, fa0, fa2
	bne	a1, zero, .LBB5_2.3
	j	.LBB5_3.5
.LBB5_2.3:
	fneg.s	fa1, fa0
	fmv.d	fa0, fa1
.LBB5_3.5:
	ret

	.section	.text
	.align	4
	.globl	float_eq
	.type	float_eq, @function
float_eq:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Lfloat_eq$ENTRY:
	fsub.s	fa0, fa0, fa1
	call	float_abs
	li	a0, 897988541
	fmv.w.x	fa1, a0
	flt.s	a1, fa0, fa1
	li	a0, 0
	bne	a1, zero, .LBB6_2.6
	j	.LBB6_3.8
.LBB6_2.6:
	li	a0, 1065353216
	fmv.w.x	fa1, a0
	fcvt.w.s	a0, fa1, rtz
.LBB6_3.8:
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
	addi	sp, sp, -96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	addi	s0, sp, 96
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
.Lmain$ENTRY:
	la	s1, __const_init.arr.0
	li	a0, 1033895936
	fmv.w.x	fa0, a0
	li	a0, -956241920
	fmv.w.x	fa1, a0
	call	float_eq
	call	assert_not
	li	a0, 1119752446
	fmv.w.x	fa0, a0
	li	a0, 1107966695
	fmv.w.x	fa1, a0
	call	float_eq
	call	assert_not
	li	a0, 1107966695
	fmv.w.x	fa0, a0
	li	a0, 1107966695
	fmv.w.x	fa1, a0
	call	float_eq
	call	assert
	li	a0, 5
	call	circle_area
	fmv.d	fa1, fa0
	call	float_eq
	call	assert
	li	a0, 1130954752
	fmv.w.x	fa0, a0
	li	a0, 1166012416
	fmv.w.x	fa1, a0
	call	float_eq
	call	assert_not
	call	ok
	call	ok
	call	ok
	addi	s2, sp, 0
	addi	a1, s1, 0
	mv	a0, s2
	li	a2, 40
	call	memcpy
	mv	a0, s2
	call	getfarray
	mv	s4, a0
	li	s1, 0
	li	s5, 1
.LBB7_2.11:
	li	a0, 1000000000
	blt	s5, a0, .LBB7_3.15
	j	.LBB7_4.29
.LBB7_3.15:
	call	getfloat
	fcvt.w.s	s3, fa0, rtz
	addi	a0, sp, 0
	.word	0x20a4c533	# sh2add	a0, s1, a0
	flw	fa1, 0(a0)
	fadd.s	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	li	a0, 1078530011
	fmv.w.x	fa1, a0
	fmul.s	fa1, fa1, fa0
	fmul.s	fa0, fa1, fa0
	call	putfloat
	li	a0, 32
	call	putch
	mv	a0, s3
	call	circle_area
	fcvt.w.s	a0, fa0, rtz
	call	putint
	li	a0, 10
	call	putch
	fcvt.s.w	fa1, s5
	li	a0, 1092616192
	fmv.w.x	fa0, a0
	fmul.s	fa0, fa1, fa0
	fcvt.w.s	s5, fa0, rtz
	addiw	s1, s1, 1
	j	.LBB7_2.11
.LBB7_4.29:
	mv	a0, s4
	mv	a1, s2
	call	putfarray
	mv	a0, zero
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s0, 80(sp)
	ld	ra, 88(sp)
	addi	sp, sp, 96
	ret

	.section	.text
	.align	4
	.globl	ok
	.type	ok, @function
ok:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
.Lok$ENTRY:
	li	a0, 111
	call	putch
	li	a0, 107
	call	putch
	li	a0, 10
	call	putch
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret

	.globl	CONV1
	.section	.data
	.type	CONV1, @object
CONV1:
	.word	0x43690000                        # float 233

	.globl	CONV2
	.section	.data
	.type	CONV2, @object
CONV2:
	.word	0x457ff000                        # float 4095

	.globl	EPS
	.section	.data
	.type	EPS, @object
EPS:
	.word	0x358637bd                        # float 0.000001

	.globl	EVAL1
	.section	.data
	.type	EVAL1, @object
EVAL1:
	.word	0x42be10fe                        # float 95.03319

	.globl	EVAL2
	.section	.data
	.type	EVAL2, @object
EVAL2:
	.word	0x420a3ae7                        # float 34.55752

	.globl	EVAL3
	.section	.data
	.type	EVAL3, @object
EVAL3:
	.word	0x420a3ae7                        # float 34.55752

	.globl	FACT
	.section	.data
	.type	FACT, @object
FACT:
	.word	0xc700e800                        # float -33000

	.globl	FIVE
	.section	.data
	.type	FIVE, @object
FIVE:
	.word	5

	.globl	HEX2
	.section	.data
	.type	HEX2, @object
HEX2:
	.word	0x3da00000                        # float 0.078125

	.globl	MAX
	.section	.data
	.type	MAX, @object
MAX:
	.word	1000000000

	.globl	PI
	.section	.data
	.type	PI, @object
PI:
	.word	0x40490fdb                        # float 3.1415927

	.globl	PI_HEX
	.section	.data
	.type	PI_HEX, @object
PI_HEX:
	.word	0x40490fdb                        # float 3.1415927

	.globl	RADIUS
	.section	.data
	.type	RADIUS, @object
RADIUS:
	.word	0x40b00000                        # float 5.5

	.globl	THREE
	.section	.data
	.type	THREE, @object
THREE:
	.word	3

	.globl	TWO
	.section	.data
	.type	TWO, @object
TWO:
	.word	2

	.section	.data
	.type	__const_init.arr.0, @object
__const_init.arr.0:
	.word	0x3f800000                        # float 1
	.word	0x40000000                        # float 2
	.zero	32

