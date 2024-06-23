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
	.globl	f
	.type	f, @function
f:
.Lf$ENTRY:
	la	a2, array
	la	a3, sum
	lw	a4, 0(a3)
	addiw	a4, a4, 1
	sw	a4, 0(a3)
	li	a3, 0
	bge	a0, a1, .LBB1_5.17
.LBB1_2.6:
	li	a1, 20
	li	a3, 0
	bge	a0, a1, .LBB1_5.17
.LBB1_3.8:
	addi	a1, a2, 0
	.word	0x20b545b3	# sh2add	a1, a0, a1
	li	a3, 1
	sw	a3, 0(a1)
	lw	a3, 0(a2)
	addiw	a4, a0, -1
	addi	a1, a2, 0
	.word	0x20b745b3	# sh2add	a1, a4, a1
	lw	a1, 0(a1)
	beq	a0, zero, .LBB1_5.17
.LBB1_4.16:
	mv	a3, a1
.LBB1_5.17:
	mv	a0, a3
	ret

	.section	.text
	.align	4
	.globl	g
	.type	g, @function
g:
.Lg$ENTRY:
	la	a2, array
	la	a3, sum
	lw	a4, 0(a3)
	addiw	a4, a4, 2
	sw	a4, 0(a3)
	li	a3, 1
	bge	a0, a1, .LBB2_5.17
.LBB2_2.6:
	li	a1, 20
	li	a3, 1
	bge	a0, a1, .LBB2_5.17
.LBB2_3.8:
	addi	a1, a2, 0
	.word	0x20b545b3	# sh2add	a1, a0, a1
	sw	zero, 0(a1)
	lw	a3, 0(a2)
	addiw	a4, a0, -1
	addi	a1, a2, 0
	.word	0x20b745b3	# sh2add	a1, a4, a1
	lw	a1, 0(a1)
	beq	a0, zero, .LBB2_5.17
.LBB2_4.16:
	mv	a3, a1
.LBB2_5.17:
	mv	a0, a3
	ret

	.section	.text
	.align	4
	.globl	h
	.type	h, @function
h:
.Lh$ENTRY:
	la	a1, array
	la	a2, sum
	lw	a3, 0(a2)
	addiw	a3, a3, 3
	sw	a3, 0(a2)
	li	a2, 0
	blt	a0, zero, .LBB3_4.10
.LBB3_2.5:
	li	a3, 20
	li	a2, 0
	bge	a0, a3, .LBB3_4.10
.LBB3_3.7:
	addi	a1, a1, 0
	.word	0x20b54533	# sh2add	a0, a0, a1
	lw	a2, 0(a0)
.LBB3_4.10:
	mv	a0, a2
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
.Lmain$ENTRY:
	la	s1, sum
	li	s2, 0
.LBB4_2.1:
	li	a0, 20
	li	s3, 0
	blt	s2, a0, .LBB4_3.4
	j	.LBB4_24.65
.LBB4_3.4:
	li	a0, 0
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_4.7
	j	.LBB4_23.63
.LBB4_4.7:
	li	a0, 1
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_5.10
	j	.LBB4_23.63
.LBB4_5.10:
	li	a0, 2
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_6.13
	j	.LBB4_23.63
.LBB4_6.13:
	li	a0, 3
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_7.16
	j	.LBB4_23.63
.LBB4_7.16:
	li	a0, 4
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_8.19
	j	.LBB4_23.63
.LBB4_8.19:
	li	a0, 5
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_9.22
	j	.LBB4_23.63
.LBB4_9.22:
	li	a0, 6
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_10.25
	j	.LBB4_23.63
.LBB4_10.25:
	li	a0, 7
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_11.28
	j	.LBB4_23.63
.LBB4_11.28:
	li	a0, 8
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_12.31
	j	.LBB4_23.63
.LBB4_12.31:
	li	a0, 9
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_13.34
	j	.LBB4_23.63
.LBB4_13.34:
	li	a0, 10
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_14.37
	j	.LBB4_23.63
.LBB4_14.37:
	li	a0, 11
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_15.40
	j	.LBB4_23.63
.LBB4_15.40:
	li	a0, 12
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_16.43
	j	.LBB4_23.63
.LBB4_16.43:
	li	a0, 13
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_17.46
	j	.LBB4_23.63
.LBB4_17.46:
	li	a0, 14
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_18.49
	j	.LBB4_23.63
.LBB4_18.49:
	li	a0, 15
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_19.52
	j	.LBB4_23.63
.LBB4_19.52:
	li	a0, 16
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_20.55
	j	.LBB4_23.63
.LBB4_20.55:
	li	a0, 17
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_21.58
	j	.LBB4_23.63
.LBB4_21.58:
	li	a0, 18
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_22.61
	j	.LBB4_23.63
.LBB4_22.61:
	li	a0, 19
	mv	a1, s2
	call	f
.LBB4_23.63:
	addiw	s2, s2, 1
	j	.LBB4_2.1
.LBB4_24.65:
	li	a0, 20
	li	s2, 1
	blt	s3, a0, .LBB4_25.68
	j	.LBB4_46.129
.LBB4_25.68:
	li	a0, 0
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_26.71:
	li	a0, 1
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_27.74:
	li	a0, 2
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_28.77:
	li	a0, 3
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_29.80:
	li	a0, 4
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_30.83:
	li	a0, 5
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_31.86:
	li	a0, 6
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_32.89:
	li	a0, 7
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_33.92:
	li	a0, 8
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_34.95:
	li	a0, 9
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_35.98:
	li	a0, 10
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_36.101:
	li	a0, 11
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_37.104:
	li	a0, 12
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_38.107:
	li	a0, 13
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_39.110:
	li	a0, 14
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_40.113:
	li	a0, 15
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_41.116:
	li	a0, 16
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_42.119:
	li	a0, 17
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_43.122:
	li	a0, 18
	mv	a1, s3
	call	g
	bne	a0, zero, .LBB4_45.127
.LBB4_44.125:
	li	a0, 19
	mv	a1, s3
	call	g
.LBB4_45.127:
	addiw	s3, s3, 1
	j	.LBB4_24.65
.LBB4_46.129:
	li	a0, 20
	blt	s2, a0, .LBB4_47.132
	j	.LBB4_49.138
.LBB4_47.132:
	addiw	a0, s2, -1
	mv	a1, s2
	call	f
	bne	a0, zero, .LBB4_48.136
	j	.LBB4_49.138
.LBB4_48.136:
	addiw	s2, s2, 1
	j	.LBB4_46.129
.LBB4_49.138:
	li	a0, 0
	call	h
	bne	a0, zero, .LBB4_50.141
	j	.LBB4_51.144
.LBB4_50.141:
	li	a0, 1
	call	h
	bne	a0, zero, .LBB4_53.150
.LBB4_51.144:
	li	a0, 2
	call	h
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB4_53.150
.LBB4_52.148:
	li	a0, 3
	call	h
.LBB4_53.150:
	li	a0, 4
	call	h
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB4_58.166
.LBB4_54.154:
	li	a0, 5
	call	h
	bne	a0, zero, .LBB4_55.157
	j	.LBB4_57.164
.LBB4_55.157:
	li	a0, 6
	call	h
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB4_56.161
	j	.LBB4_57.164
.LBB4_56.161:
	li	a0, 7
	call	h
	bne	a0, zero, .LBB4_58.166
.LBB4_57.164:
	li	a0, 8
	call	h
.LBB4_58.166:
	li	a0, 9
	call	h
	bne	a0, zero, .LBB4_59.169
	j	.LBB4_60.173
.LBB4_59.169:
	li	a0, 10
	call	h
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB4_65.190
.LBB4_60.173:
	li	a0, 11
	call	h
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB4_65.190
.LBB4_61.177:
	li	a0, 12
	call	h
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB4_65.190
.LBB4_62.181:
	li	a0, 13
	call	h
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB4_65.190
.LBB4_63.185:
	li	a0, 14
	call	h
	bne	a0, zero, .LBB4_64.188
	j	.LBB4_65.190
.LBB4_64.188:
	li	a0, 15
	call	h
.LBB4_65.190:
	li	a0, 0
	call	h
	bne	a0, zero, .LBB4_66.193
	j	.LBB4_69.204
.LBB4_66.193:
	li	a0, 2
	call	h
	bne	a0, zero, .LBB4_67.196
	j	.LBB4_69.204
.LBB4_67.196:
	li	a0, 3
	call	h
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB4_68.200
	j	.LBB4_69.204
.LBB4_68.200:
	li	a0, 4
	call	h
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB4_73.217
.LBB4_69.204:
	li	a0, 5
	call	h
	bne	a0, zero, .LBB4_73.217
.LBB4_70.207:
	li	a0, 6
	call	h
	bne	a0, zero, .LBB4_71.210
	j	.LBB4_72.214
.LBB4_71.210:
	li	a0, 7
	call	h
	xori	a0, a0, 0
	sltu	a0, zero, a0
	xori	a0, a0, 1
	bne	a0, zero, .LBB4_73.217
.LBB4_72.214:
	li	a0, 8
	call	h
	li	a1, 0
	bne	a0, zero, .LBB4_73.217
	j	.LBB4_74.218
.LBB4_73.217:
	li	a1, 1
.LBB4_74.218:
	lw	a0, 0(s1)
	addw	a0, a0, a1
	call	putint
	mv	a0, zero
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.globl	array
	.section	.bss
	.type	array, @object
array:
	.zero	80

	.globl	sum
	.section	.bss
	.type	sum, @object
sum:
	.zero	4

