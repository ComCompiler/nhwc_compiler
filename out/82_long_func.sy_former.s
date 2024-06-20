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
	.globl	long_func
	.type	long_func, @function
long_func:
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
.Llong_func$ENTRY:
	la	s1, SHIFT_TABLE
	lw	s6, 4(s1)
	lw	s7, 60(s1)
	subw	a1, zero, s7
	li	a0, 65536
	addw	s5, a1, a0
	li	a0, 1
	li	a1, 0
	li	a4, 2
.LBB1_2.7:
	mv	s8, a1
	mv	a2, s8
	li	a3, 1
	li	a5, 0
	li	a6, 0
	blt	zero, s8, .LBB1_3.12
	j	.LBB1_111.423
.LBB1_3.12:
	li	a1, 16
	blt	a5, a1, .LBB1_4.18
	j	.LBB1_8.34
.LBB1_4.18:
	li	s2, 2
	li	a1, -2147483647
	mul	a1, a1, a2
	srai	a7, a1, 32
	addw	a7, a7, a2
	srliw	a1, a7, 31
	addw	a7, a7, a1
	mulw	a7, a7, s2
	subw	a1, a2, a7
	bne	a1, zero, .LBB1_5.21
	j	.LBB1_7.29
.LBB1_5.21:
	li	s2, 2
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	a7, a1, 32
	addw	a7, a7, a3
	srliw	a1, a7, 31
	addw	a7, a7, a1
	mulw	a7, a7, s2
	subw	a1, a3, a7
	bne	a1, zero, .LBB1_6.24
	j	.LBB1_7.29
.LBB1_6.24:
	addi	a1, s1, 0
	.word	0x20b7c5b3	# sh2add	a1, a5, a1
	lw	a1, 0(a1)
	addw	a6, a6, a1
.LBB1_7.29:
	li	a1, -2147483647
	mul	a1, a1, a2
	srai	a7, a1, 32
	addw	a7, a7, a2
	srliw	a1, a7, 31
	addw	a2, a7, a1
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	a7, a1, 32
	addw	a7, a7, a3
	srliw	a1, a7, 31
	addw	a3, a7, a1
	addiw	a5, a5, 1
	j	.LBB1_3.12
.LBB1_8.34:
	mv	a2, a4
	li	a5, 0
	mv	a1, a0
	bne	a6, zero, .LBB1_9.36
	j	.LBB1_58.224
.LBB1_9.36:
	mv	s2, a2
	mv	a2, s2
	li	a3, 1
	li	a7, 0
	li	a6, 0
	mv	a1, a5
	bne	s2, zero, .LBB1_10.41
	j	.LBB1_58.224
.LBB1_10.41:
	li	a1, 16
	blt	a7, a1, .LBB1_11.47
	j	.LBB1_15.63
.LBB1_11.47:
	li	s4, 2
	li	a1, -2147483647
	mul	a1, a1, a2
	srai	s3, a1, 32
	addw	s3, s3, a2
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s4
	subw	a1, a2, s3
	bne	a1, zero, .LBB1_12.50
	j	.LBB1_14.58
.LBB1_12.50:
	li	s4, 2
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	s3, a1, 32
	addw	s3, s3, a3
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s4
	subw	a1, a3, s3
	bne	a1, zero, .LBB1_13.53
	j	.LBB1_14.58
.LBB1_13.53:
	addi	a1, s1, 0
	.word	0x20b8c5b3	# sh2add	a1, a7, a1
	lw	a1, 0(a1)
	addw	a6, a6, a1
.LBB1_14.58:
	li	a1, -2147483647
	mul	a1, a1, a2
	srai	s3, a1, 32
	addw	s3, s3, a2
	srliw	a1, s3, 31
	addw	a2, s3, a1
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	s3, a1, 32
	addw	s3, s3, a3
	srliw	a1, s3, 31
	addw	a3, s3, a1
	addiw	a7, a7, 1
	j	.LBB1_10.41
.LBB1_15.63:
	mv	a3, a0
	mv	a2, a5
	bne	a6, zero, .LBB1_16.65
	j	.LBB1_35.140
.LBB1_16.65:
	mv	a5, a2
	mv	a7, a3
	mv	a6, a5
	li	s4, 0
	li	a2, 0
	bne	a3, zero, .LBB1_17.69
	j	.LBB1_35.140
.LBB1_17.69:
	li	a1, 16
	li	s9, 0
	li	s3, 0
	blt	s4, a1, .LBB1_18.75
	j	.LBB1_24.94
.LBB1_18.75:
	li	s9, 2
	li	a1, -2147483647
	mul	a1, a1, a6
	srai	s3, a1, 32
	addw	s3, s3, a6
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s9
	subw	s10, a6, s3
	li	s9, 2
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	s3, a1, 32
	addw	s3, s3, a7
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s9
	subw	s3, a7, s3
	addi	a1, s1, 0
	.word	0x20ba45b3	# sh2add	a1, s4, a1
	lw	a1, 0(a1)
	addw	a1, a2, a1
	bne	s10, zero, .LBB1_19.83
	j	.LBB1_21.86
.LBB1_19.83:
	beq	s3, zero, .LBB1_20.85
	j	.LBB1_23.89
.LBB1_20.85:
	mv	a2, a1
	j	.LBB1_23.89
.LBB1_21.86:
	bne	s3, zero, .LBB1_22.88
	j	.LBB1_23.89
.LBB1_22.88:
	mv	a2, a1
.LBB1_23.89:
	li	a1, -2147483647
	mul	a1, a1, a6
	srai	s3, a1, 32
	addw	s3, s3, a6
	srliw	a1, s3, 31
	addw	a6, s3, a1
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	s3, a1, 32
	addw	s3, s3, a7
	srliw	a1, s3, 31
	addw	a7, s3, a1
	addiw	s4, s4, 1
	j	.LBB1_17.69
.LBB1_24.94:
	li	a1, 16
	blt	s9, a1, .LBB1_25.100
	j	.LBB1_29.116
.LBB1_25.100:
	li	a7, 2
	li	a1, -2147483647
	mul	a1, a1, a5
	srai	a6, a1, 32
	addw	a6, a6, a5
	srliw	a1, a6, 31
	addw	a6, a6, a1
	mulw	a6, a6, a7
	subw	a1, a5, a6
	bne	a1, zero, .LBB1_26.103
	j	.LBB1_28.111
.LBB1_26.103:
	li	a7, 2
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	a6, a1, 32
	addw	a6, a6, a3
	srliw	a1, a6, 31
	addw	a6, a6, a1
	mulw	a6, a6, a7
	subw	a1, a3, a6
	bne	a1, zero, .LBB1_27.106
	j	.LBB1_28.111
.LBB1_27.106:
	addi	a1, s1, 0
	.word	0x20bcc5b3	# sh2add	a1, s9, a1
	lw	a1, 0(a1)
	addw	s3, s3, a1
.LBB1_28.111:
	li	a1, -2147483647
	mul	a1, a1, a5
	srai	a6, a1, 32
	addw	a6, a6, a5
	srliw	a1, a6, 31
	addw	a5, a6, a1
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	a6, a1, 32
	addw	a6, a6, a3
	srliw	a1, a6, 31
	addw	a3, a6, a1
	addiw	s9, s9, 1
	j	.LBB1_24.94
.LBB1_29.116:
	mulw	a5, s3, s6
	li	a6, 65535
	li	a7, 0
	li	a3, 0
.LBB1_30.118:
	li	a1, 16
	blt	a7, a1, .LBB1_31.124
	j	.LBB1_16.65
.LBB1_31.124:
	li	s4, 2
	li	a1, -2147483647
	mul	a1, a1, a5
	srai	s3, a1, 32
	addw	s3, s3, a5
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s4
	subw	a1, a5, s3
	bne	a1, zero, .LBB1_32.127
	j	.LBB1_34.135
.LBB1_32.127:
	li	s4, 2
	li	a1, -2147483647
	mul	a1, a1, a6
	srai	s3, a1, 32
	addw	s3, s3, a6
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s4
	subw	a1, a6, s3
	bne	a1, zero, .LBB1_33.130
	j	.LBB1_34.135
.LBB1_33.130:
	addi	a1, s1, 0
	.word	0x20b8c5b3	# sh2add	a1, a7, a1
	lw	a1, 0(a1)
	addw	a3, a3, a1
.LBB1_34.135:
	li	a1, -2147483647
	mul	a1, a1, a5
	srai	s3, a1, 32
	addw	s3, s3, a5
	srliw	a1, s3, 31
	addw	a5, s3, a1
	li	a1, -2147483647
	mul	a1, a1, a6
	srai	s3, a1, 32
	addw	s3, s3, a6
	srliw	a1, s3, 31
	addw	a6, s3, a1
	addiw	a7, a7, 1
	j	.LBB1_30.118
.LBB1_35.140:
	mv	a2, a0
.LBB1_36.142:
	mv	a6, a2
	mv	a3, a0
	li	s9, 0
	li	a7, 0
	bne	a2, zero, .LBB1_37.146
	j	.LBB1_55.217
.LBB1_37.146:
	li	a1, 16
	li	s4, 0
	li	s3, 0
	blt	s9, a1, .LBB1_38.152
	j	.LBB1_44.171
.LBB1_38.152:
	li	s4, 2
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	s3, a1, 32
	addw	s3, s3, a3
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s4
	subw	s10, a3, s3
	li	s4, 2
	li	a1, -2147483647
	mul	a1, a1, a6
	srai	s3, a1, 32
	addw	s3, s3, a6
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s4
	subw	s3, a6, s3
	addi	a1, s1, 0
	.word	0x20bcc5b3	# sh2add	a1, s9, a1
	lw	a1, 0(a1)
	addw	a1, a7, a1
	bne	s10, zero, .LBB1_39.160
	j	.LBB1_41.163
.LBB1_39.160:
	beq	s3, zero, .LBB1_40.162
	j	.LBB1_43.166
.LBB1_40.162:
	mv	a7, a1
	j	.LBB1_43.166
.LBB1_41.163:
	bne	s3, zero, .LBB1_42.165
	j	.LBB1_43.166
.LBB1_42.165:
	mv	a7, a1
.LBB1_43.166:
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	s3, a1, 32
	addw	s3, s3, a3
	srliw	a1, s3, 31
	addw	a3, s3, a1
	li	a1, -2147483647
	mul	a1, a1, a6
	srai	s3, a1, 32
	addw	s3, s3, a6
	srliw	a1, s3, 31
	addw	a6, s3, a1
	addiw	s9, s9, 1
	j	.LBB1_37.146
.LBB1_44.171:
	li	a1, 16
	blt	s4, a1, .LBB1_45.177
	j	.LBB1_49.193
.LBB1_45.177:
	li	a6, 2
	li	a1, -2147483647
	mul	a1, a1, a0
	srai	a3, a1, 32
	addw	a3, a3, a0
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a6
	subw	a1, a0, a3
	bne	a1, zero, .LBB1_46.180
	j	.LBB1_48.188
.LBB1_46.180:
	li	a6, 2
	li	a1, -2147483647
	mul	a1, a1, a2
	srai	a3, a1, 32
	addw	a3, a3, a2
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a6
	subw	a1, a2, a3
	bne	a1, zero, .LBB1_47.183
	j	.LBB1_48.188
.LBB1_47.183:
	addi	a1, s1, 0
	.word	0x20ba45b3	# sh2add	a1, s4, a1
	lw	a1, 0(a1)
	addw	s3, s3, a1
.LBB1_48.188:
	li	a1, -2147483647
	mul	a1, a1, a0
	srai	a1, a1, 32
	addw	a1, a1, a0
	srliw	a0, a1, 31
	addw	a0, a1, a0
	li	a1, -2147483647
	mul	a1, a1, a2
	srai	a3, a1, 32
	addw	a3, a3, a2
	srliw	a1, a3, 31
	addw	a2, a3, a1
	addiw	s4, s4, 1
	j	.LBB1_44.171
.LBB1_49.193:
	mulw	a1, s3, s6
	li	a3, 65535
	li	s4, 0
	li	a2, 0
.LBB1_50.195:
	li	a6, 16
	mv	a0, a7
	blt	s4, a6, .LBB1_51.201
	j	.LBB1_36.142
.LBB1_51.201:
	li	s3, 2
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a6, a0, 32
	addw	a6, a6, a1
	srliw	a0, a6, 31
	addw	a6, a6, a0
	mulw	a6, a6, s3
	subw	a0, a1, a6
	bne	a0, zero, .LBB1_52.204
	j	.LBB1_54.212
.LBB1_52.204:
	li	s3, 2
	li	a0, -2147483647
	mul	a0, a0, a3
	srai	a6, a0, 32
	addw	a6, a6, a3
	srliw	a0, a6, 31
	addw	a6, a6, a0
	mulw	a6, a6, s3
	subw	a0, a3, a6
	bne	a0, zero, .LBB1_53.207
	j	.LBB1_54.212
.LBB1_53.207:
	addi	a0, s1, 0
	.word	0x20aa4533	# sh2add	a0, s4, a0
	lw	a0, 0(a0)
	addw	a2, a2, a0
.LBB1_54.212:
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a6, a0, 32
	addw	a6, a6, a1
	srliw	a0, a6, 31
	addw	a1, a6, a0
	li	a0, -2147483647
	mul	a0, a0, a3
	srai	a6, a0, 32
	addw	a6, a6, a3
	srliw	a0, a6, 31
	addw	a3, a6, a0
	addiw	s4, s4, 1
	j	.LBB1_50.195
.LBB1_55.217:
	li	a1, 32767
	divw	a2, s2, s6
	blt	a1, s2, .LBB1_56.220
	j	.LBB1_57.222
.LBB1_56.220:
	addw	a2, s5, a2
.LBB1_57.222:
	j	.LBB1_9.36
.LBB1_58.224:
	mv	a3, a1
	mv	a0, a4
	mv	s9, a4
	li	a4, 0
.LBB1_59.226:
	mv	s3, a0
	mv	s2, s3
	li	a6, 1
	li	a7, 0
	li	a5, 0
	bne	s3, zero, .LBB1_60.231
	j	.LBB1_108.415
.LBB1_60.231:
	li	a0, 16
	blt	a7, a0, .LBB1_61.237
	j	.LBB1_65.253
.LBB1_61.237:
	li	a2, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a1, a0, 32
	addw	a1, a1, s2
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	a0, s2, a1
	bne	a0, zero, .LBB1_62.240
	j	.LBB1_64.248
.LBB1_62.240:
	li	a2, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	a0, a6, a1
	bne	a0, zero, .LBB1_63.243
	j	.LBB1_64.248
.LBB1_63.243:
	addi	a0, s1, 0
	.word	0x20a8c533	# sh2add	a0, a7, a0
	lw	a0, 0(a0)
	addw	a5, a5, a0
.LBB1_64.248:
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a1, a0, 32
	addw	a1, a1, s2
	srliw	a0, a1, 31
	addw	s2, a1, a0
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a6, a1, a0
	addiw	a7, a7, 1
	j	.LBB1_60.231
.LBB1_65.253:
	mv	a2, s9
	mv	a1, a4
	bne	a5, zero, .LBB1_66.255
	j	.LBB1_85.330
.LBB1_66.255:
	mv	a4, a1
	mv	a6, a2
	mv	a5, a4
	li	s4, 0
	li	a1, 0
	bne	a2, zero, .LBB1_67.259
	j	.LBB1_85.330
.LBB1_67.259:
	li	a0, 16
	li	s2, 0
	li	a7, 0
	blt	s4, a0, .LBB1_68.265
	j	.LBB1_74.284
.LBB1_68.265:
	li	s2, 2
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a7, a0, 32
	addw	a7, a7, a5
	srliw	a0, a7, 31
	addw	a7, a7, a0
	mulw	a7, a7, s2
	subw	s10, a5, a7
	li	s2, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a7, a0, 32
	addw	a7, a7, a6
	srliw	a0, a7, 31
	addw	a7, a7, a0
	mulw	a7, a7, s2
	subw	a7, a6, a7
	addi	a0, s1, 0
	.word	0x20aa4533	# sh2add	a0, s4, a0
	lw	a0, 0(a0)
	addw	a0, a1, a0
	bne	s10, zero, .LBB1_69.273
	j	.LBB1_71.276
.LBB1_69.273:
	beq	a7, zero, .LBB1_70.275
	j	.LBB1_73.279
.LBB1_70.275:
	mv	a1, a0
	j	.LBB1_73.279
.LBB1_71.276:
	bne	a7, zero, .LBB1_72.278
	j	.LBB1_73.279
.LBB1_72.278:
	mv	a1, a0
.LBB1_73.279:
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a7, a0, 32
	addw	a7, a7, a5
	srliw	a0, a7, 31
	addw	a5, a7, a0
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a7, a0, 32
	addw	a7, a7, a6
	srliw	a0, a7, 31
	addw	a6, a7, a0
	addiw	s4, s4, 1
	j	.LBB1_67.259
.LBB1_74.284:
	li	a0, 16
	blt	s2, a0, .LBB1_75.290
	j	.LBB1_79.306
.LBB1_75.290:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a4
	srai	a5, a0, 32
	addw	a5, a5, a4
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	a0, a4, a5
	bne	a0, zero, .LBB1_76.293
	j	.LBB1_78.301
.LBB1_76.293:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a2
	srai	a5, a0, 32
	addw	a5, a5, a2
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	a0, a2, a5
	bne	a0, zero, .LBB1_77.296
	j	.LBB1_78.301
.LBB1_77.296:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a7, a7, a0
.LBB1_78.301:
	li	a0, -2147483647
	mul	a0, a0, a4
	srai	a5, a0, 32
	addw	a5, a5, a4
	srliw	a0, a5, 31
	addw	a4, a5, a0
	li	a0, -2147483647
	mul	a0, a0, a2
	srai	a5, a0, 32
	addw	a5, a5, a2
	srliw	a0, a5, 31
	addw	a2, a5, a0
	addiw	s2, s2, 1
	j	.LBB1_74.284
.LBB1_79.306:
	mulw	a5, a7, s6
	li	a6, 65535
	li	s2, 0
	li	a2, 0
.LBB1_80.308:
	li	a0, 16
	blt	s2, a0, .LBB1_81.314
	j	.LBB1_66.255
.LBB1_81.314:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a4, a0, 32
	addw	a4, a4, a5
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a7
	subw	a0, a5, a4
	bne	a0, zero, .LBB1_82.317
	j	.LBB1_84.325
.LBB1_82.317:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a4, a0, 32
	addw	a4, a4, a6
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a7
	subw	a0, a6, a4
	bne	a0, zero, .LBB1_83.320
	j	.LBB1_84.325
.LBB1_83.320:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a2, a2, a0
.LBB1_84.325:
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a4, a0, 32
	addw	a4, a4, a5
	srliw	a0, a4, 31
	addw	a5, a4, a0
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a4, a0, 32
	addw	a4, a4, a6
	srliw	a0, a4, 31
	addw	a6, a4, a0
	addiw	s2, s2, 1
	j	.LBB1_80.308
.LBB1_85.330:
	mv	a1, s9
.LBB1_86.332:
	mv	s4, a1
	mv	s10, s9
	li	a6, 0
	li	s2, 0
	bne	a1, zero, .LBB1_87.336
	j	.LBB1_105.407
.LBB1_87.336:
	li	a0, 16
	li	a7, 0
	li	a5, 0
	blt	a6, a0, .LBB1_88.342
	j	.LBB1_94.361
.LBB1_88.342:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s10
	srai	a2, a0, 32
	addw	a2, a2, s10
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a7, s10, a2
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s4
	srai	a2, a0, 32
	addw	a2, a2, s4
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a2, s4, a2
	addi	a0, s1, 0
	.word	0x20a84533	# sh2add	a0, a6, a0
	lw	a0, 0(a0)
	addw	a0, s2, a0
	bne	a7, zero, .LBB1_89.350
	j	.LBB1_91.353
.LBB1_89.350:
	beq	a2, zero, .LBB1_90.352
	j	.LBB1_93.356
.LBB1_90.352:
	mv	s2, a0
	j	.LBB1_93.356
.LBB1_91.353:
	bne	a2, zero, .LBB1_92.355
	j	.LBB1_93.356
.LBB1_92.355:
	mv	s2, a0
.LBB1_93.356:
	li	a0, -2147483647
	mul	a0, a0, s10
	srai	a2, a0, 32
	addw	a2, a2, s10
	srliw	a0, a2, 31
	addw	s10, a2, a0
	li	a0, -2147483647
	mul	a0, a0, s4
	srai	a2, a0, 32
	addw	a2, a2, s4
	srliw	a0, a2, 31
	addw	s4, a2, a0
	addiw	a6, a6, 1
	j	.LBB1_87.336
.LBB1_94.361:
	li	a0, 16
	blt	a7, a0, .LBB1_95.367
	j	.LBB1_99.383
.LBB1_95.367:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a2, a0, 32
	addw	a2, a2, s9
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a6
	subw	a0, s9, a2
	bne	a0, zero, .LBB1_96.370
	j	.LBB1_98.378
.LBB1_96.370:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a2, a0, 32
	addw	a2, a2, a1
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a6
	subw	a0, a1, a2
	bne	a0, zero, .LBB1_97.373
	j	.LBB1_98.378
.LBB1_97.373:
	addi	a0, s1, 0
	.word	0x20a8c533	# sh2add	a0, a7, a0
	lw	a0, 0(a0)
	addw	a5, a5, a0
.LBB1_98.378:
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a2, a0, 32
	addw	a2, a2, s9
	srliw	a0, a2, 31
	addw	s9, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a2, a0, 32
	addw	a2, a2, a1
	srliw	a0, a2, 31
	addw	a1, a2, a0
	addiw	a7, a7, 1
	j	.LBB1_94.361
.LBB1_99.383:
	mulw	a7, a5, s6
	li	a6, 65535
	li	s4, 0
	li	a1, 0
.LBB1_100.385:
	li	a0, 16
	mv	s9, s2
	blt	s4, a0, .LBB1_101.391
	j	.LBB1_86.332
.LBB1_101.391:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a0, a7, a2
	bne	a0, zero, .LBB1_102.394
	j	.LBB1_104.402
.LBB1_102.394:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a0, a6, a2
	bne	a0, zero, .LBB1_103.397
	j	.LBB1_104.402
.LBB1_103.397:
	addi	a0, s1, 0
	.word	0x20aa4533	# sh2add	a0, s4, a0
	lw	a0, 0(a0)
	addw	a1, a1, a0
.LBB1_104.402:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a7, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a6, a2, a0
	addiw	s4, s4, 1
	j	.LBB1_100.385
.LBB1_105.407:
	li	a1, 32767
	divw	a0, s3, s6
	blt	a1, s3, .LBB1_106.410
	j	.LBB1_107.413
.LBB1_106.410:
	li	a1, 65536
	addw	a0, a0, a1
	subw	a0, a0, s7
.LBB1_107.413:
	j	.LBB1_59.226
.LBB1_108.415:
	li	a0, 32767
	divw	a1, s8, s6
	blt	a0, s8, .LBB1_109.418
	j	.LBB1_110.421
.LBB1_109.418:
	li	a0, 65536
	addw	a0, a1, a0
	subw	a1, a0, s7
.LBB1_110.421:
	mv	a0, a3
	j	.LBB1_2.7
.LBB1_111.423:
	call	putint
	li	a0, 10
	call	putch
	lw	s6, 4(s1)
	lw	a2, 60(s1)
	subw	a1, zero, a2
	li	a0, 65536
	addw	s9, a1, a0
	li	a0, 65536
	subw	s8, a0, a2
	li	a0, 1
	li	a3, 1
	li	a1, 2
.LBB1_112.429:
	mv	a2, a1
	mv	s7, a3
	mv	s2, s7
	li	a6, 1
	li	a7, 0
	li	a4, 0
	blt	zero, s7, .LBB1_113.434
	j	.LBB1_221.843
.LBB1_113.434:
	li	a1, 16
	blt	a7, a1, .LBB1_114.440
	j	.LBB1_118.456
.LBB1_114.440:
	li	a5, 2
	li	a1, -2147483647
	mul	a1, a1, s2
	srai	a3, a1, 32
	addw	a3, a3, s2
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a5
	subw	a1, s2, a3
	bne	a1, zero, .LBB1_115.443
	j	.LBB1_117.451
.LBB1_115.443:
	li	a5, 2
	li	a1, -2147483647
	mul	a1, a1, a6
	srai	a3, a1, 32
	addw	a3, a3, a6
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a5
	subw	a1, a6, a3
	bne	a1, zero, .LBB1_116.446
	j	.LBB1_117.451
.LBB1_116.446:
	addi	a1, s1, 0
	.word	0x20b8c5b3	# sh2add	a1, a7, a1
	lw	a1, 0(a1)
	addw	a4, a4, a1
.LBB1_117.451:
	li	a1, -2147483647
	mul	a1, a1, s2
	srai	a3, a1, 32
	addw	a3, a3, s2
	srliw	a1, a3, 31
	addw	s2, a3, a1
	li	a1, -2147483647
	mul	a1, a1, a6
	srai	a3, a1, 32
	addw	a3, a3, a6
	srliw	a1, a3, 31
	addw	a6, a3, a1
	addiw	a7, a7, 1
	j	.LBB1_113.434
.LBB1_118.456:
	mv	a3, a2
	li	a5, 0
	mv	a1, a0
	bne	a4, zero, .LBB1_119.458
	j	.LBB1_168.646
.LBB1_119.458:
	mv	a4, a0
	mv	s4, a3
	mv	a1, a5
	mv	s3, s4
	li	a7, 1
	li	s2, 0
	li	a5, 0
	bne	s4, zero, .LBB1_120.463
	j	.LBB1_168.646
.LBB1_120.463:
	li	a0, 16
	blt	s2, a0, .LBB1_121.469
	j	.LBB1_125.485
.LBB1_121.469:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a3, a0, 32
	addw	a3, a3, s3
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a6
	subw	a0, s3, a3
	bne	a0, zero, .LBB1_122.472
	j	.LBB1_124.480
.LBB1_122.472:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a3, a0, 32
	addw	a3, a3, a7
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a6
	subw	a0, a7, a3
	bne	a0, zero, .LBB1_123.475
	j	.LBB1_124.480
.LBB1_123.475:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a5, a5, a0
.LBB1_124.480:
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a3, a0, 32
	addw	a3, a3, s3
	srliw	a0, a3, 31
	addw	s3, a3, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a3, a0, 32
	addw	a3, a3, a7
	srliw	a0, a3, 31
	addw	a7, a3, a0
	addiw	s2, s2, 1
	j	.LBB1_120.463
.LBB1_125.485:
	mv	s2, a4
	mv	a3, a1
	bne	a5, zero, .LBB1_126.487
	j	.LBB1_145.562
.LBB1_126.487:
	mv	a3, a1
	mv	a7, s2
	mv	s10, a3
	li	s5, 0
	li	a1, 0
	bne	s2, zero, .LBB1_127.491
	j	.LBB1_145.562
.LBB1_127.491:
	li	a0, 16
	li	s3, 0
	li	a6, 0
	blt	s5, a0, .LBB1_128.497
	j	.LBB1_134.516
.LBB1_128.497:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s10
	srai	a5, a0, 32
	addw	a5, a5, s10
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	s3, s10, a5
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a5, a0, 32
	addw	a5, a5, a7
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	a5, a7, a5
	addi	a0, s1, 0
	.word	0x20aac533	# sh2add	a0, s5, a0
	lw	a0, 0(a0)
	addw	a0, a1, a0
	bne	s3, zero, .LBB1_129.505
	j	.LBB1_131.508
.LBB1_129.505:
	beq	a5, zero, .LBB1_130.507
	j	.LBB1_133.511
.LBB1_130.507:
	mv	a1, a0
	j	.LBB1_133.511
.LBB1_131.508:
	bne	a5, zero, .LBB1_132.510
	j	.LBB1_133.511
.LBB1_132.510:
	mv	a1, a0
.LBB1_133.511:
	li	a0, -2147483647
	mul	a0, a0, s10
	srai	a5, a0, 32
	addw	a5, a5, s10
	srliw	a0, a5, 31
	addw	s10, a5, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a5, a0, 32
	addw	a5, a5, a7
	srliw	a0, a5, 31
	addw	a7, a5, a0
	addiw	s5, s5, 1
	j	.LBB1_127.491
.LBB1_134.516:
	li	a0, 16
	blt	s3, a0, .LBB1_135.522
	j	.LBB1_139.538
.LBB1_135.522:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a3
	srai	a5, a0, 32
	addw	a5, a5, a3
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, a3, a5
	bne	a0, zero, .LBB1_136.525
	j	.LBB1_138.533
.LBB1_136.525:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a5, a0, 32
	addw	a5, a5, s2
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, s2, a5
	bne	a0, zero, .LBB1_137.528
	j	.LBB1_138.533
.LBB1_137.528:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	a6, a6, a0
.LBB1_138.533:
	li	a0, -2147483647
	mul	a0, a0, a3
	srai	a5, a0, 32
	addw	a5, a5, a3
	srliw	a0, a5, 31
	addw	a3, a5, a0
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a5, a0, 32
	addw	a5, a5, s2
	srliw	a0, a5, 31
	addw	s2, a5, a0
	addiw	s3, s3, 1
	j	.LBB1_134.516
.LBB1_139.538:
	mulw	a7, a6, s6
	li	a6, 65535
	li	s3, 0
	li	s2, 0
.LBB1_140.540:
	li	a0, 16
	blt	s3, a0, .LBB1_141.546
	j	.LBB1_126.487
.LBB1_141.546:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a3, a0, 32
	addw	a3, a3, a7
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a5
	subw	a0, a7, a3
	bne	a0, zero, .LBB1_142.549
	j	.LBB1_144.557
.LBB1_142.549:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a3, a0, 32
	addw	a3, a3, a6
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a5
	subw	a0, a6, a3
	bne	a0, zero, .LBB1_143.552
	j	.LBB1_144.557
.LBB1_143.552:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	s2, s2, a0
.LBB1_144.557:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a3, a0, 32
	addw	a3, a3, a7
	srliw	a0, a3, 31
	addw	a7, a3, a0
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a3, a0, 32
	addw	a3, a3, a6
	srliw	a0, a3, 31
	addw	a6, a3, a0
	addiw	s3, s3, 1
	j	.LBB1_140.540
.LBB1_145.562:
	mv	a5, a3
	mv	a7, a4
	mv	a0, a4
.LBB1_146.564:
	mv	a6, a7
	mv	s10, a0
	li	s5, 0
	li	s3, 0
	bne	a7, zero, .LBB1_147.568
	j	.LBB1_165.639
.LBB1_147.568:
	li	a1, 16
	li	s2, 0
	li	a4, 0
	blt	s5, a1, .LBB1_148.574
	j	.LBB1_154.593
.LBB1_148.574:
	li	a4, 2
	li	a1, -2147483647
	mul	a1, a1, s10
	srai	a3, a1, 32
	addw	a3, a3, s10
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a4
	subw	s2, s10, a3
	li	a4, 2
	li	a1, -2147483647
	mul	a1, a1, a6
	srai	a3, a1, 32
	addw	a3, a3, a6
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a4
	subw	a3, a6, a3
	addi	a1, s1, 0
	.word	0x20bac5b3	# sh2add	a1, s5, a1
	lw	a1, 0(a1)
	addw	a1, s3, a1
	bne	s2, zero, .LBB1_149.582
	j	.LBB1_151.585
.LBB1_149.582:
	beq	a3, zero, .LBB1_150.584
	j	.LBB1_153.588
.LBB1_150.584:
	mv	s3, a1
	j	.LBB1_153.588
.LBB1_151.585:
	bne	a3, zero, .LBB1_152.587
	j	.LBB1_153.588
.LBB1_152.587:
	mv	s3, a1
.LBB1_153.588:
	li	a1, -2147483647
	mul	a1, a1, s10
	srai	a3, a1, 32
	addw	a3, a3, s10
	srliw	a1, a3, 31
	addw	s10, a3, a1
	li	a1, -2147483647
	mul	a1, a1, a6
	srai	a3, a1, 32
	addw	a3, a3, a6
	srliw	a1, a3, 31
	addw	a6, a3, a1
	addiw	s5, s5, 1
	j	.LBB1_147.568
.LBB1_154.593:
	li	a1, 16
	blt	s2, a1, .LBB1_155.599
	j	.LBB1_159.615
.LBB1_155.599:
	li	a6, 2
	li	a1, -2147483647
	mul	a1, a1, a0
	srai	a3, a1, 32
	addw	a3, a3, a0
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a6
	subw	a1, a0, a3
	bne	a1, zero, .LBB1_156.602
	j	.LBB1_158.610
.LBB1_156.602:
	li	a6, 2
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	a3, a1, 32
	addw	a3, a3, a7
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a6
	subw	a1, a7, a3
	bne	a1, zero, .LBB1_157.605
	j	.LBB1_158.610
.LBB1_157.605:
	addi	a1, s1, 0
	.word	0x20b945b3	# sh2add	a1, s2, a1
	lw	a1, 0(a1)
	addw	a4, a4, a1
.LBB1_158.610:
	li	a1, -2147483647
	mul	a1, a1, a0
	srai	a1, a1, 32
	addw	a1, a1, a0
	srliw	a0, a1, 31
	addw	a0, a1, a0
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	a3, a1, 32
	addw	a3, a3, a7
	srliw	a1, a3, 31
	addw	a7, a3, a1
	addiw	s2, s2, 1
	j	.LBB1_154.593
.LBB1_159.615:
	mulw	a6, a4, s6
	li	a4, 65535
	li	s2, 0
	li	a7, 0
.LBB1_160.617:
	li	a1, 16
	mv	a0, s3
	blt	s2, a1, .LBB1_161.623
	j	.LBB1_146.564
.LBB1_161.623:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a3
	subw	a0, a6, a1
	bne	a0, zero, .LBB1_162.626
	j	.LBB1_164.634
.LBB1_162.626:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a4
	srai	a1, a0, 32
	addw	a1, a1, a4
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a3
	subw	a0, a4, a1
	bne	a0, zero, .LBB1_163.629
	j	.LBB1_164.634
.LBB1_163.629:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a7, a7, a0
.LBB1_164.634:
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a6, a1, a0
	li	a0, -2147483647
	mul	a0, a0, a4
	srai	a1, a0, 32
	addw	a1, a1, a4
	srliw	a0, a1, 31
	addw	a4, a1, a0
	addiw	s2, s2, 1
	j	.LBB1_160.617
.LBB1_165.639:
	li	a1, 32767
	divw	a3, s4, s6
	blt	a1, s4, .LBB1_166.642
	j	.LBB1_167.644
.LBB1_166.642:
	addw	a3, s9, a3
.LBB1_167.644:
	j	.LBB1_119.458
.LBB1_168.646:
	mv	a4, a1
	mv	a0, a2
	li	a1, 0
.LBB1_169.648:
	mv	a3, a2
	mv	s4, a0
	mv	s2, s4
	li	a7, 1
	li	s3, 0
	li	a5, 0
	bne	s4, zero, .LBB1_170.653
	j	.LBB1_218.836
.LBB1_170.653:
	li	a0, 16
	blt	s3, a0, .LBB1_171.659
	j	.LBB1_175.675
.LBB1_171.659:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a2, a0, 32
	addw	a2, a2, s2
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a6
	subw	a0, s2, a2
	bne	a0, zero, .LBB1_172.662
	j	.LBB1_174.670
.LBB1_172.662:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a6
	subw	a0, a7, a2
	bne	a0, zero, .LBB1_173.665
	j	.LBB1_174.670
.LBB1_173.665:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	a5, a5, a0
.LBB1_174.670:
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a2, a0, 32
	addw	a2, a2, s2
	srliw	a0, a2, 31
	addw	s2, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a7, a2, a0
	addiw	s3, s3, 1
	j	.LBB1_170.653
.LBB1_175.675:
	mv	s2, a3
	mv	a2, a1
	bne	a5, zero, .LBB1_176.677
	j	.LBB1_195.752
.LBB1_176.677:
	mv	a1, a2
	mv	a7, s2
	mv	s10, a1
	li	s5, 0
	li	a2, 0
	bne	s2, zero, .LBB1_177.681
	j	.LBB1_195.752
.LBB1_177.681:
	li	a0, 16
	li	s3, 0
	li	a6, 0
	blt	s5, a0, .LBB1_178.687
	j	.LBB1_184.706
.LBB1_178.687:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s10
	srai	a5, a0, 32
	addw	a5, a5, s10
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	s3, s10, a5
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a5, a0, 32
	addw	a5, a5, a7
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	a5, a7, a5
	addi	a0, s1, 0
	.word	0x20aac533	# sh2add	a0, s5, a0
	lw	a0, 0(a0)
	addw	a0, a2, a0
	bne	s3, zero, .LBB1_179.695
	j	.LBB1_181.698
.LBB1_179.695:
	beq	a5, zero, .LBB1_180.697
	j	.LBB1_183.701
.LBB1_180.697:
	mv	a2, a0
	j	.LBB1_183.701
.LBB1_181.698:
	bne	a5, zero, .LBB1_182.700
	j	.LBB1_183.701
.LBB1_182.700:
	mv	a2, a0
.LBB1_183.701:
	li	a0, -2147483647
	mul	a0, a0, s10
	srai	a5, a0, 32
	addw	a5, a5, s10
	srliw	a0, a5, 31
	addw	s10, a5, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a5, a0, 32
	addw	a5, a5, a7
	srliw	a0, a5, 31
	addw	a7, a5, a0
	addiw	s5, s5, 1
	j	.LBB1_177.681
.LBB1_184.706:
	li	a0, 16
	blt	s3, a0, .LBB1_185.712
	j	.LBB1_189.728
.LBB1_185.712:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a5, a0, 32
	addw	a5, a5, a1
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, a1, a5
	bne	a0, zero, .LBB1_186.715
	j	.LBB1_188.723
.LBB1_186.715:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a5, a0, 32
	addw	a5, a5, s2
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, s2, a5
	bne	a0, zero, .LBB1_187.718
	j	.LBB1_188.723
.LBB1_187.718:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	a6, a6, a0
.LBB1_188.723:
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a5, a0, 32
	addw	a5, a5, a1
	srliw	a0, a5, 31
	addw	a1, a5, a0
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a5, a0, 32
	addw	a5, a5, s2
	srliw	a0, a5, 31
	addw	s2, a5, a0
	addiw	s3, s3, 1
	j	.LBB1_184.706
.LBB1_189.728:
	mulw	a7, a6, s6
	li	a6, 65535
	li	s3, 0
	li	s2, 0
.LBB1_190.730:
	li	a0, 16
	blt	s3, a0, .LBB1_191.736
	j	.LBB1_176.677
.LBB1_191.736:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a5
	subw	a0, a7, a1
	bne	a0, zero, .LBB1_192.739
	j	.LBB1_194.747
.LBB1_192.739:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a5
	subw	a0, a6, a1
	bne	a0, zero, .LBB1_193.742
	j	.LBB1_194.747
.LBB1_193.742:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	s2, s2, a0
.LBB1_194.747:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a7, a1, a0
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a6, a1, a0
	addiw	s3, s3, 1
	j	.LBB1_190.730
.LBB1_195.752:
	mv	s2, a3
	mv	s5, a3
.LBB1_196.754:
	mv	a5, s2
	mv	s10, s5
	li	a7, 0
	li	s3, 0
	bne	s2, zero, .LBB1_197.758
	j	.LBB1_215.829
.LBB1_197.758:
	li	a0, 16
	li	a6, 0
	li	a3, 0
	blt	a7, a0, .LBB1_198.764
	j	.LBB1_204.783
.LBB1_198.764:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, s10
	srai	a2, a0, 32
	addw	a2, a2, s10
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a6, s10, a2
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a2, a5, a2
	addi	a0, s1, 0
	.word	0x20a8c533	# sh2add	a0, a7, a0
	lw	a0, 0(a0)
	addw	a0, s3, a0
	bne	a6, zero, .LBB1_199.772
	j	.LBB1_201.775
.LBB1_199.772:
	beq	a2, zero, .LBB1_200.774
	j	.LBB1_203.778
.LBB1_200.774:
	mv	s3, a0
	j	.LBB1_203.778
.LBB1_201.775:
	bne	a2, zero, .LBB1_202.777
	j	.LBB1_203.778
.LBB1_202.777:
	mv	s3, a0
.LBB1_203.778:
	li	a0, -2147483647
	mul	a0, a0, s10
	srai	a2, a0, 32
	addw	a2, a2, s10
	srliw	a0, a2, 31
	addw	s10, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a5, a2, a0
	addiw	a7, a7, 1
	j	.LBB1_197.758
.LBB1_204.783:
	li	a0, 16
	blt	a6, a0, .LBB1_205.789
	j	.LBB1_209.805
.LBB1_205.789:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s5
	srai	a2, a0, 32
	addw	a2, a2, s5
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a0, s5, a2
	bne	a0, zero, .LBB1_206.792
	j	.LBB1_208.800
.LBB1_206.792:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a2, a0, 32
	addw	a2, a2, s2
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a0, s2, a2
	bne	a0, zero, .LBB1_207.795
	j	.LBB1_208.800
.LBB1_207.795:
	addi	a0, s1, 0
	.word	0x20a84533	# sh2add	a0, a6, a0
	lw	a0, 0(a0)
	addw	a3, a3, a0
.LBB1_208.800:
	li	a0, -2147483647
	mul	a0, a0, s5
	srai	a2, a0, 32
	addw	a2, a2, s5
	srliw	a0, a2, 31
	addw	s5, a2, a0
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a2, a0, 32
	addw	a2, a2, s2
	srliw	a0, a2, 31
	addw	s2, a2, a0
	addiw	a6, a6, 1
	j	.LBB1_204.783
.LBB1_209.805:
	mulw	a6, a3, s6
	li	a5, 65535
	li	a7, 0
	li	s2, 0
.LBB1_210.807:
	li	a0, 16
	mv	s5, s3
	blt	a7, a0, .LBB1_211.813
	j	.LBB1_196.754
.LBB1_211.813:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a0, a6, a2
	bne	a0, zero, .LBB1_212.816
	j	.LBB1_214.824
.LBB1_212.816:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a0, a5, a2
	bne	a0, zero, .LBB1_213.819
	j	.LBB1_214.824
.LBB1_213.819:
	addi	a0, s1, 0
	.word	0x20a8c533	# sh2add	a0, a7, a0
	lw	a0, 0(a0)
	addw	s2, s2, a0
.LBB1_214.824:
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a6, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a5, a2, a0
	addiw	a7, a7, 1
	j	.LBB1_210.807
.LBB1_215.829:
	li	a2, 32767
	divw	a0, s4, s6
	blt	a2, s4, .LBB1_216.832
	j	.LBB1_217.834
.LBB1_216.832:
	addw	a0, s9, a0
.LBB1_217.834:
	mv	a2, s5
	j	.LBB1_169.648
.LBB1_218.836:
	li	a0, 32767
	divw	a3, s7, s6
	blt	a0, s7, .LBB1_219.839
	j	.LBB1_220.841
.LBB1_219.839:
	addw	a3, s8, a3
.LBB1_220.841:
	mv	a0, a4
	j	.LBB1_112.429
.LBB1_221.843:
	call	putint
	li	a0, 10
	call	putch
	li	a0, 2
.LBB1_222.844:
	mv	s6, a0
	li	a4, 16
	lw	s10, 4(s1)
	lw	a1, 60(s1)
	subw	s11, zero, a1
	li	a0, 65536
	subw	s7, a0, a1
	mv	a3, s6
	li	a0, 1
	li	a2, 2
	li	a1, 0
	blt	s6, a4, .LBB1_223.851
	j	.LBB1_333.1269
.LBB1_223.851:
	mv	a6, a2
	mv	s9, a3
	mv	a7, s9
	li	a5, 1
	li	s2, 0
	li	a3, 0
	blt	zero, s9, .LBB1_224.856
	j	.LBB1_332.1267
.LBB1_224.856:
	li	a1, 16
	blt	s2, a1, .LBB1_225.862
	j	.LBB1_229.878
.LBB1_225.862:
	li	a4, 2
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	a2, a1, 32
	addw	a2, a2, a7
	srliw	a1, a2, 31
	addw	a2, a2, a1
	mulw	a2, a2, a4
	subw	a1, a7, a2
	bne	a1, zero, .LBB1_226.865
	j	.LBB1_228.873
.LBB1_226.865:
	li	a4, 2
	li	a1, -2147483647
	mul	a1, a1, a5
	srai	a2, a1, 32
	addw	a2, a2, a5
	srliw	a1, a2, 31
	addw	a2, a2, a1
	mulw	a2, a2, a4
	subw	a1, a5, a2
	bne	a1, zero, .LBB1_227.868
	j	.LBB1_228.873
.LBB1_227.868:
	addi	a1, s1, 0
	.word	0x20b945b3	# sh2add	a1, s2, a1
	lw	a1, 0(a1)
	addw	a3, a3, a1
.LBB1_228.873:
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	a2, a1, 32
	addw	a2, a2, a7
	srliw	a1, a2, 31
	addw	a7, a2, a1
	li	a1, -2147483647
	mul	a1, a1, a5
	srai	a2, a1, 32
	addw	a2, a2, a5
	srliw	a1, a2, 31
	addw	a5, a2, a1
	addiw	s2, s2, 1
	j	.LBB1_224.856
.LBB1_229.878:
	mv	a4, a6
	li	a2, 0
	mv	a1, a0
	bne	a3, zero, .LBB1_230.880
	j	.LBB1_279.1069
.LBB1_230.880:
	mv	a3, a0
	mv	s4, a4
	mv	s3, s4
	li	a7, 1
	li	s2, 0
	li	a4, 0
	mv	a1, a2
	bne	s4, zero, .LBB1_231.885
	j	.LBB1_279.1069
.LBB1_231.885:
	li	a0, 16
	blt	s2, a0, .LBB1_232.891
	j	.LBB1_236.907
.LBB1_232.891:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a1, a0, 32
	addw	a1, a1, s3
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a5
	subw	a0, s3, a1
	bne	a0, zero, .LBB1_233.894
	j	.LBB1_235.902
.LBB1_233.894:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a5
	subw	a0, a7, a1
	bne	a0, zero, .LBB1_234.897
	j	.LBB1_235.902
.LBB1_234.897:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a4, a4, a0
.LBB1_235.902:
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a1, a0, 32
	addw	a1, a1, s3
	srliw	a0, a1, 31
	addw	s3, a1, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a7, a1, a0
	addiw	s2, s2, 1
	j	.LBB1_231.885
.LBB1_236.907:
	mv	s3, a3
	mv	a1, a2
	bne	a4, zero, .LBB1_237.909
	j	.LBB1_256.984
.LBB1_237.909:
	mv	a2, a1
	mv	a7, s3
	mv	s5, a2
	li	s8, 0
	li	a1, 0
	bne	s3, zero, .LBB1_238.913
	j	.LBB1_256.984
.LBB1_238.913:
	li	a0, 16
	li	s2, 0
	li	a5, 0
	blt	s8, a0, .LBB1_239.919
	j	.LBB1_245.938
.LBB1_239.919:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s5
	srai	a4, a0, 32
	addw	a4, a4, s5
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a5
	subw	s2, s5, a4
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a4, a0, 32
	addw	a4, a4, a7
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a5
	subw	a4, a7, a4
	addi	a0, s1, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	a0, 0(a0)
	addw	a0, a1, a0
	bne	s2, zero, .LBB1_240.927
	j	.LBB1_242.930
.LBB1_240.927:
	beq	a4, zero, .LBB1_241.929
	j	.LBB1_244.933
.LBB1_241.929:
	mv	a1, a0
	j	.LBB1_244.933
.LBB1_242.930:
	bne	a4, zero, .LBB1_243.932
	j	.LBB1_244.933
.LBB1_243.932:
	mv	a1, a0
.LBB1_244.933:
	li	a0, -2147483647
	mul	a0, a0, s5
	srai	a4, a0, 32
	addw	a4, a4, s5
	srliw	a0, a4, 31
	addw	s5, a4, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a4, a0, 32
	addw	a4, a4, a7
	srliw	a0, a4, 31
	addw	a7, a4, a0
	addiw	s8, s8, 1
	j	.LBB1_238.913
.LBB1_245.938:
	li	a0, 16
	blt	s2, a0, .LBB1_246.944
	j	.LBB1_250.960
.LBB1_246.944:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a2
	srai	a4, a0, 32
	addw	a4, a4, a2
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a7
	subw	a0, a2, a4
	bne	a0, zero, .LBB1_247.947
	j	.LBB1_249.955
.LBB1_247.947:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a4, a0, 32
	addw	a4, a4, s3
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a7
	subw	a0, s3, a4
	bne	a0, zero, .LBB1_248.950
	j	.LBB1_249.955
.LBB1_248.950:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a5, a5, a0
.LBB1_249.955:
	li	a0, -2147483647
	mul	a0, a0, a2
	srai	a4, a0, 32
	addw	a4, a4, a2
	srliw	a0, a4, 31
	addw	a2, a4, a0
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a4, a0, 32
	addw	a4, a4, s3
	srliw	a0, a4, 31
	addw	s3, a4, a0
	addiw	s2, s2, 1
	j	.LBB1_245.938
.LBB1_250.960:
	mulw	a7, a5, s10
	li	a5, 65535
	li	s2, 0
	li	s3, 0
.LBB1_251.962:
	li	a0, 16
	blt	s2, a0, .LBB1_252.968
	j	.LBB1_237.909
.LBB1_252.968:
	li	a4, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a4
	subw	a0, a7, a2
	bne	a0, zero, .LBB1_253.971
	j	.LBB1_255.979
.LBB1_253.971:
	li	a4, 2
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a4
	subw	a0, a5, a2
	bne	a0, zero, .LBB1_254.974
	j	.LBB1_255.979
.LBB1_254.974:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	s3, s3, a0
.LBB1_255.979:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a7, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a5, a2, a0
	addiw	s2, s2, 1
	j	.LBB1_251.962
.LBB1_256.984:
	mv	a5, a2
	mv	s3, a3
	mv	a2, a3
.LBB1_257.986:
	mv	a0, a2
	mv	a7, s3
	mv	s5, a0
	li	s8, 0
	li	a2, 0
	bne	s3, zero, .LBB1_258.990
	j	.LBB1_276.1061
.LBB1_258.990:
	li	a1, 16
	li	s2, 0
	li	a4, 0
	blt	s8, a1, .LBB1_259.996
	j	.LBB1_265.1015
.LBB1_259.996:
	li	a4, 2
	li	a1, -2147483647
	mul	a1, a1, s5
	srai	a3, a1, 32
	addw	a3, a3, s5
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a4
	subw	s2, s5, a3
	li	a4, 2
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	a3, a1, 32
	addw	a3, a3, a7
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a4
	subw	a3, a7, a3
	addi	a1, s1, 0
	.word	0x20bc45b3	# sh2add	a1, s8, a1
	lw	a1, 0(a1)
	addw	a1, a2, a1
	bne	s2, zero, .LBB1_260.1004
	j	.LBB1_262.1007
.LBB1_260.1004:
	beq	a3, zero, .LBB1_261.1006
	j	.LBB1_264.1010
.LBB1_261.1006:
	mv	a2, a1
	j	.LBB1_264.1010
.LBB1_262.1007:
	bne	a3, zero, .LBB1_263.1009
	j	.LBB1_264.1010
.LBB1_263.1009:
	mv	a2, a1
.LBB1_264.1010:
	li	a1, -2147483647
	mul	a1, a1, s5
	srai	a3, a1, 32
	addw	a3, a3, s5
	srliw	a1, a3, 31
	addw	s5, a3, a1
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	a3, a1, 32
	addw	a3, a3, a7
	srliw	a1, a3, 31
	addw	a7, a3, a1
	addiw	s8, s8, 1
	j	.LBB1_258.990
.LBB1_265.1015:
	li	a1, 16
	blt	s2, a1, .LBB1_266.1021
	j	.LBB1_270.1037
.LBB1_266.1021:
	li	a7, 2
	li	a1, -2147483647
	mul	a1, a1, a0
	srai	a3, a1, 32
	addw	a3, a3, a0
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a7
	subw	a1, a0, a3
	bne	a1, zero, .LBB1_267.1024
	j	.LBB1_269.1032
.LBB1_267.1024:
	li	a7, 2
	li	a1, -2147483647
	mul	a1, a1, s3
	srai	a3, a1, 32
	addw	a3, a3, s3
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a7
	subw	a1, s3, a3
	bne	a1, zero, .LBB1_268.1027
	j	.LBB1_269.1032
.LBB1_268.1027:
	addi	a1, s1, 0
	.word	0x20b945b3	# sh2add	a1, s2, a1
	lw	a1, 0(a1)
	addw	a4, a4, a1
.LBB1_269.1032:
	li	a1, -2147483647
	mul	a1, a1, a0
	srai	a1, a1, 32
	addw	a1, a1, a0
	srliw	a0, a1, 31
	addw	a0, a1, a0
	li	a1, -2147483647
	mul	a1, a1, s3
	srai	a3, a1, 32
	addw	a3, a3, s3
	srliw	a1, a3, 31
	addw	s3, a3, a1
	addiw	s2, s2, 1
	j	.LBB1_265.1015
.LBB1_270.1037:
	mulw	a7, a4, s10
	li	a4, 65535
	li	s2, 0
	li	s3, 0
.LBB1_271.1039:
	li	a0, 16
	blt	s2, a0, .LBB1_272.1045
	j	.LBB1_257.986
.LBB1_272.1045:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a3
	subw	a0, a7, a1
	bne	a0, zero, .LBB1_273.1048
	j	.LBB1_275.1056
.LBB1_273.1048:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a4
	srai	a1, a0, 32
	addw	a1, a1, a4
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a3
	subw	a0, a4, a1
	bne	a0, zero, .LBB1_274.1051
	j	.LBB1_275.1056
.LBB1_274.1051:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	s3, s3, a0
.LBB1_275.1056:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a7, a1, a0
	li	a0, -2147483647
	mul	a0, a0, a4
	srai	a1, a0, 32
	addw	a1, a1, a4
	srliw	a0, a1, 31
	addw	a4, a1, a0
	addiw	s2, s2, 1
	j	.LBB1_271.1039
.LBB1_276.1061:
	li	a1, 32767
	divw	a4, s4, s10
	blt	a1, s4, .LBB1_277.1064
	j	.LBB1_278.1067
.LBB1_277.1064:
	addw	a2, s11, a4
	li	a1, 65536
	addw	a4, a2, a1
.LBB1_278.1067:
	mv	a2, a5
	j	.LBB1_230.880
.LBB1_279.1069:
	mv	a4, a1
	mv	a0, a6
	mv	s4, a6
	li	a2, 0
.LBB1_280.1071:
	mv	a3, s4
	mv	s5, a0
	mv	s2, s5
	li	a7, 1
	li	s3, 0
	li	a5, 0
	bne	s5, zero, .LBB1_281.1076
	j	.LBB1_329.1259
.LBB1_281.1076:
	li	a0, 16
	blt	s3, a0, .LBB1_282.1082
	j	.LBB1_286.1098
.LBB1_282.1082:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a1, a0, 32
	addw	a1, a1, s2
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a6
	subw	a0, s2, a1
	bne	a0, zero, .LBB1_283.1085
	j	.LBB1_285.1093
.LBB1_283.1085:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a6
	subw	a0, a7, a1
	bne	a0, zero, .LBB1_284.1088
	j	.LBB1_285.1093
.LBB1_284.1088:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	a5, a5, a0
.LBB1_285.1093:
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a1, a0, 32
	addw	a1, a1, s2
	srliw	a0, a1, 31
	addw	s2, a1, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a7, a1, a0
	addiw	s3, s3, 1
	j	.LBB1_281.1076
.LBB1_286.1098:
	mv	s3, a3
	mv	a1, a2
	bne	a5, zero, .LBB1_287.1100
	j	.LBB1_306.1175
.LBB1_287.1100:
	mv	a2, a1
	mv	a7, s3
	mv	s4, a2
	li	s8, 0
	li	a1, 0
	bne	s3, zero, .LBB1_288.1104
	j	.LBB1_306.1175
.LBB1_288.1104:
	li	a0, 16
	li	s2, 0
	li	a6, 0
	blt	s8, a0, .LBB1_289.1110
	j	.LBB1_295.1129
.LBB1_289.1110:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s4
	srai	a5, a0, 32
	addw	a5, a5, s4
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	s2, s4, a5
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a5, a0, 32
	addw	a5, a5, a7
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	a5, a7, a5
	addi	a0, s1, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	a0, 0(a0)
	addw	a0, a1, a0
	bne	s2, zero, .LBB1_290.1118
	j	.LBB1_292.1121
.LBB1_290.1118:
	beq	a5, zero, .LBB1_291.1120
	j	.LBB1_294.1124
.LBB1_291.1120:
	mv	a1, a0
	j	.LBB1_294.1124
.LBB1_292.1121:
	bne	a5, zero, .LBB1_293.1123
	j	.LBB1_294.1124
.LBB1_293.1123:
	mv	a1, a0
.LBB1_294.1124:
	li	a0, -2147483647
	mul	a0, a0, s4
	srai	a5, a0, 32
	addw	a5, a5, s4
	srliw	a0, a5, 31
	addw	s4, a5, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a5, a0, 32
	addw	a5, a5, a7
	srliw	a0, a5, 31
	addw	a7, a5, a0
	addiw	s8, s8, 1
	j	.LBB1_288.1104
.LBB1_295.1129:
	li	a0, 16
	blt	s2, a0, .LBB1_296.1135
	j	.LBB1_300.1151
.LBB1_296.1135:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a2
	srai	a5, a0, 32
	addw	a5, a5, a2
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, a2, a5
	bne	a0, zero, .LBB1_297.1138
	j	.LBB1_299.1146
.LBB1_297.1138:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a5, a0, 32
	addw	a5, a5, s3
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, s3, a5
	bne	a0, zero, .LBB1_298.1141
	j	.LBB1_299.1146
.LBB1_298.1141:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a6, a6, a0
.LBB1_299.1146:
	li	a0, -2147483647
	mul	a0, a0, a2
	srai	a5, a0, 32
	addw	a5, a5, a2
	srliw	a0, a5, 31
	addw	a2, a5, a0
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a5, a0, 32
	addw	a5, a5, s3
	srliw	a0, a5, 31
	addw	s3, a5, a0
	addiw	s2, s2, 1
	j	.LBB1_295.1129
.LBB1_300.1151:
	mulw	a7, a6, s10
	li	a6, 65535
	li	s2, 0
	li	s3, 0
.LBB1_301.1153:
	li	a0, 16
	blt	s2, a0, .LBB1_302.1159
	j	.LBB1_287.1100
.LBB1_302.1159:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a0, a7, a2
	bne	a0, zero, .LBB1_303.1162
	j	.LBB1_305.1170
.LBB1_303.1162:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a0, a6, a2
	bne	a0, zero, .LBB1_304.1165
	j	.LBB1_305.1170
.LBB1_304.1165:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	s3, s3, a0
.LBB1_305.1170:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a7, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a6, a2, a0
	addiw	s2, s2, 1
	j	.LBB1_301.1153
.LBB1_306.1175:
	mv	a1, a2
	mv	s2, a3
	mv	s4, a3
.LBB1_307.1177:
	mv	a5, s2
	mv	a7, s4
	li	s8, 0
	li	s3, 0
	bne	s2, zero, .LBB1_308.1181
	j	.LBB1_326.1252
.LBB1_308.1181:
	li	a0, 16
	li	a6, 0
	li	a3, 0
	blt	s8, a0, .LBB1_309.1187
	j	.LBB1_315.1206
.LBB1_309.1187:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a6, a7, a2
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a2, a5, a2
	addi	a0, s1, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	a0, 0(a0)
	addw	a0, s3, a0
	bne	a6, zero, .LBB1_310.1195
	j	.LBB1_312.1198
.LBB1_310.1195:
	beq	a2, zero, .LBB1_311.1197
	j	.LBB1_314.1201
.LBB1_311.1197:
	mv	s3, a0
	j	.LBB1_314.1201
.LBB1_312.1198:
	bne	a2, zero, .LBB1_313.1200
	j	.LBB1_314.1201
.LBB1_313.1200:
	mv	s3, a0
.LBB1_314.1201:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a7, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a5, a2, a0
	addiw	s8, s8, 1
	j	.LBB1_308.1181
.LBB1_315.1206:
	li	a0, 16
	blt	a6, a0, .LBB1_316.1212
	j	.LBB1_320.1228
.LBB1_316.1212:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s4
	srai	a2, a0, 32
	addw	a2, a2, s4
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a0, s4, a2
	bne	a0, zero, .LBB1_317.1215
	j	.LBB1_319.1223
.LBB1_317.1215:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a2, a0, 32
	addw	a2, a2, s2
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a0, s2, a2
	bne	a0, zero, .LBB1_318.1218
	j	.LBB1_319.1223
.LBB1_318.1218:
	addi	a0, s1, 0
	.word	0x20a84533	# sh2add	a0, a6, a0
	lw	a0, 0(a0)
	addw	a3, a3, a0
.LBB1_319.1223:
	li	a0, -2147483647
	mul	a0, a0, s4
	srai	a2, a0, 32
	addw	a2, a2, s4
	srliw	a0, a2, 31
	addw	s4, a2, a0
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a2, a0, 32
	addw	a2, a2, s2
	srliw	a0, a2, 31
	addw	s2, a2, a0
	addiw	a6, a6, 1
	j	.LBB1_315.1206
.LBB1_320.1228:
	mulw	a6, a3, s10
	li	a5, 65535
	li	a7, 0
	li	s2, 0
.LBB1_321.1230:
	li	a0, 16
	mv	s4, s3
	blt	a7, a0, .LBB1_322.1236
	j	.LBB1_307.1177
.LBB1_322.1236:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a0, a6, a2
	bne	a0, zero, .LBB1_323.1239
	j	.LBB1_325.1247
.LBB1_323.1239:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a0, a5, a2
	bne	a0, zero, .LBB1_324.1242
	j	.LBB1_325.1247
.LBB1_324.1242:
	addi	a0, s1, 0
	.word	0x20a8c533	# sh2add	a0, a7, a0
	lw	a0, 0(a0)
	addw	s2, s2, a0
.LBB1_325.1247:
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a6, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a5, a2, a0
	addiw	a7, a7, 1
	j	.LBB1_321.1230
.LBB1_326.1252:
	li	a2, 32767
	divw	a0, s5, s10
	blt	a2, s5, .LBB1_327.1255
	j	.LBB1_328.1257
.LBB1_327.1255:
	addw	a0, s7, a0
.LBB1_328.1257:
	mv	a2, a1
	j	.LBB1_280.1071
.LBB1_329.1259:
	li	a0, 32767
	divw	a3, s9, s10
	blt	a0, s9, .LBB1_330.1262
	j	.LBB1_331.1265
.LBB1_330.1262:
	addw	a1, s11, a3
	li	a0, 65536
	addw	a3, a1, a0
.LBB1_331.1265:
	mv	a0, a4
	j	.LBB1_223.851
.LBB1_332.1267:
	call	putint
	li	a0, 10
	call	putch
	addiw	a0, s6, 1
	j	.LBB1_222.844
.LBB1_333.1269:
	mv	s6, a1
	li	a3, 16
	li	a0, 65536
	addw	s7, s11, a0
	mv	a2, s6
	li	a6, 1
	li	a1, 2
	li	a0, 0
	blt	s6, a3, .LBB1_334.1273
	j	.LBB1_445.1695
.LBB1_334.1273:
	mv	a5, a1
	mv	s9, a2
	mv	a7, s9
	li	a4, 1
	li	s2, 0
	li	a3, 0
	blt	zero, s9, .LBB1_335.1278
	j	.LBB1_443.1689
.LBB1_335.1278:
	li	a0, 16
	blt	s2, a0, .LBB1_336.1284
	j	.LBB1_340.1300
.LBB1_336.1284:
	li	a2, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	a0, a7, a1
	bne	a0, zero, .LBB1_337.1287
	j	.LBB1_339.1295
.LBB1_337.1287:
	li	a2, 2
	li	a0, -2147483647
	mul	a0, a0, a4
	srai	a1, a0, 32
	addw	a1, a1, a4
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	a0, a4, a1
	bne	a0, zero, .LBB1_338.1290
	j	.LBB1_339.1295
.LBB1_338.1290:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a3, a3, a0
.LBB1_339.1295:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a7, a1, a0
	li	a0, -2147483647
	mul	a0, a0, a4
	srai	a1, a0, 32
	addw	a1, a1, a4
	srliw	a0, a1, 31
	addw	a4, a1, a0
	addiw	s2, s2, 1
	j	.LBB1_335.1278
.LBB1_340.1300:
	mv	a2, a5
	li	a1, 0
	mv	a0, a6
	bne	a3, zero, .LBB1_341.1302
	j	.LBB1_390.1491
.LBB1_341.1302:
	mv	a3, a6
	mv	s4, a2
	mv	s3, s4
	li	a7, 1
	li	s2, 0
	li	a4, 0
	mv	a0, a1
	bne	s4, zero, .LBB1_342.1307
	j	.LBB1_390.1491
.LBB1_342.1307:
	li	a0, 16
	blt	s2, a0, .LBB1_343.1313
	j	.LBB1_347.1329
.LBB1_343.1313:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a2, a0, 32
	addw	a2, a2, s3
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a6
	subw	a0, s3, a2
	bne	a0, zero, .LBB1_344.1316
	j	.LBB1_346.1324
.LBB1_344.1316:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a6
	subw	a0, a7, a2
	bne	a0, zero, .LBB1_345.1319
	j	.LBB1_346.1324
.LBB1_345.1319:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a4, a4, a0
.LBB1_346.1324:
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a2, a0, 32
	addw	a2, a2, s3
	srliw	a0, a2, 31
	addw	s3, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a7, a2, a0
	addiw	s2, s2, 1
	j	.LBB1_342.1307
.LBB1_347.1329:
	mv	s3, a3
	mv	a2, a1
	bne	a4, zero, .LBB1_348.1331
	j	.LBB1_367.1406
.LBB1_348.1331:
	mv	a1, a2
	mv	a7, s3
	mv	s5, a1
	li	s8, 0
	li	a2, 0
	bne	s3, zero, .LBB1_349.1335
	j	.LBB1_367.1406
.LBB1_349.1335:
	li	a0, 16
	li	s2, 0
	li	a6, 0
	blt	s8, a0, .LBB1_350.1341
	j	.LBB1_356.1360
.LBB1_350.1341:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s5
	srai	a4, a0, 32
	addw	a4, a4, s5
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a6
	subw	s2, s5, a4
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a4, a0, 32
	addw	a4, a4, a7
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a6
	subw	a4, a7, a4
	addi	a0, s1, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	a0, 0(a0)
	addw	a0, a2, a0
	bne	s2, zero, .LBB1_351.1349
	j	.LBB1_353.1352
.LBB1_351.1349:
	beq	a4, zero, .LBB1_352.1351
	j	.LBB1_355.1355
.LBB1_352.1351:
	mv	a2, a0
	j	.LBB1_355.1355
.LBB1_353.1352:
	bne	a4, zero, .LBB1_354.1354
	j	.LBB1_355.1355
.LBB1_354.1354:
	mv	a2, a0
.LBB1_355.1355:
	li	a0, -2147483647
	mul	a0, a0, s5
	srai	a4, a0, 32
	addw	a4, a4, s5
	srliw	a0, a4, 31
	addw	s5, a4, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a4, a0, 32
	addw	a4, a4, a7
	srliw	a0, a4, 31
	addw	a7, a4, a0
	addiw	s8, s8, 1
	j	.LBB1_349.1335
.LBB1_356.1360:
	li	a0, 16
	blt	s2, a0, .LBB1_357.1366
	j	.LBB1_361.1382
.LBB1_357.1366:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a4, a0, 32
	addw	a4, a4, a1
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a7
	subw	a0, a1, a4
	bne	a0, zero, .LBB1_358.1369
	j	.LBB1_360.1377
.LBB1_358.1369:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a4, a0, 32
	addw	a4, a4, s3
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a7
	subw	a0, s3, a4
	bne	a0, zero, .LBB1_359.1372
	j	.LBB1_360.1377
.LBB1_359.1372:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a6, a6, a0
.LBB1_360.1377:
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a4, a0, 32
	addw	a4, a4, a1
	srliw	a0, a4, 31
	addw	a1, a4, a0
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a4, a0, 32
	addw	a4, a4, s3
	srliw	a0, a4, 31
	addw	s3, a4, a0
	addiw	s2, s2, 1
	j	.LBB1_356.1360
.LBB1_361.1382:
	mulw	a7, a6, s10
	li	a6, 65535
	li	s2, 0
	li	s3, 0
.LBB1_362.1384:
	li	a0, 16
	blt	s2, a0, .LBB1_363.1390
	j	.LBB1_348.1331
.LBB1_363.1390:
	li	a4, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a4
	subw	a0, a7, a1
	bne	a0, zero, .LBB1_364.1393
	j	.LBB1_366.1401
.LBB1_364.1393:
	li	a4, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a4
	subw	a0, a6, a1
	bne	a0, zero, .LBB1_365.1396
	j	.LBB1_366.1401
.LBB1_365.1396:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	s3, s3, a0
.LBB1_366.1401:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a7, a1, a0
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a6, a1, a0
	addiw	s2, s2, 1
	j	.LBB1_362.1384
.LBB1_367.1406:
	mv	a4, a1
	mv	s3, a3
	mv	a1, a3
.LBB1_368.1408:
	mv	a6, a1
	mv	a7, s3
	mv	s5, a6
	li	s8, 0
	li	a1, 0
	bne	s3, zero, .LBB1_369.1412
	j	.LBB1_387.1483
.LBB1_369.1412:
	li	a0, 16
	li	s2, 0
	li	a3, 0
	blt	s8, a0, .LBB1_370.1418
	j	.LBB1_376.1437
.LBB1_370.1418:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, s5
	srai	a2, a0, 32
	addw	a2, a2, s5
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	s2, s5, a2
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a2, a7, a2
	addi	a0, s1, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	a0, 0(a0)
	addw	a0, a1, a0
	bne	s2, zero, .LBB1_371.1426
	j	.LBB1_373.1429
.LBB1_371.1426:
	beq	a2, zero, .LBB1_372.1428
	j	.LBB1_375.1432
.LBB1_372.1428:
	mv	a1, a0
	j	.LBB1_375.1432
.LBB1_373.1429:
	bne	a2, zero, .LBB1_374.1431
	j	.LBB1_375.1432
.LBB1_374.1431:
	mv	a1, a0
.LBB1_375.1432:
	li	a0, -2147483647
	mul	a0, a0, s5
	srai	a2, a0, 32
	addw	a2, a2, s5
	srliw	a0, a2, 31
	addw	s5, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a7, a2, a0
	addiw	s8, s8, 1
	j	.LBB1_369.1412
.LBB1_376.1437:
	li	a0, 16
	blt	s2, a0, .LBB1_377.1443
	j	.LBB1_381.1459
.LBB1_377.1443:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a7
	subw	a0, a6, a2
	bne	a0, zero, .LBB1_378.1446
	j	.LBB1_380.1454
.LBB1_378.1446:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a2, a0, 32
	addw	a2, a2, s3
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a7
	subw	a0, s3, a2
	bne	a0, zero, .LBB1_379.1449
	j	.LBB1_380.1454
.LBB1_379.1449:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a3, a3, a0
.LBB1_380.1454:
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a6, a2, a0
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a2, a0, 32
	addw	a2, a2, s3
	srliw	a0, a2, 31
	addw	s3, a2, a0
	addiw	s2, s2, 1
	j	.LBB1_376.1437
.LBB1_381.1459:
	mulw	a7, a3, s10
	li	a6, 65535
	li	s2, 0
	li	s3, 0
.LBB1_382.1461:
	li	a0, 16
	blt	s2, a0, .LBB1_383.1467
	j	.LBB1_368.1408
.LBB1_383.1467:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a0, a7, a2
	bne	a0, zero, .LBB1_384.1470
	j	.LBB1_386.1478
.LBB1_384.1470:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a0, a6, a2
	bne	a0, zero, .LBB1_385.1473
	j	.LBB1_386.1478
.LBB1_385.1473:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	s3, s3, a0
.LBB1_386.1478:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a7, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a6, a2, a0
	addiw	s2, s2, 1
	j	.LBB1_382.1461
.LBB1_387.1483:
	li	a0, 32767
	divw	a2, s4, s10
	blt	a0, s4, .LBB1_388.1486
	j	.LBB1_389.1489
.LBB1_388.1486:
	addw	a1, s11, a2
	li	a0, 65536
	addw	a2, a1, a0
.LBB1_389.1489:
	mv	a1, a4
	j	.LBB1_341.1302
.LBB1_390.1491:
	mv	a4, a0
	mv	a0, a5
	mv	s4, a5
	li	a1, 0
.LBB1_391.1493:
	mv	a3, s4
	mv	s5, a0
	mv	s2, s5
	li	a7, 1
	li	s3, 0
	li	a5, 0
	bne	s5, zero, .LBB1_392.1498
	j	.LBB1_440.1681
.LBB1_392.1498:
	li	a0, 16
	blt	s3, a0, .LBB1_393.1504
	j	.LBB1_397.1520
.LBB1_393.1504:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a2, a0, 32
	addw	a2, a2, s2
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a6
	subw	a0, s2, a2
	bne	a0, zero, .LBB1_394.1507
	j	.LBB1_396.1515
.LBB1_394.1507:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a6
	subw	a0, a7, a2
	bne	a0, zero, .LBB1_395.1510
	j	.LBB1_396.1515
.LBB1_395.1510:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	a5, a5, a0
.LBB1_396.1515:
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a2, a0, 32
	addw	a2, a2, s2
	srliw	a0, a2, 31
	addw	s2, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a7, a2, a0
	addiw	s3, s3, 1
	j	.LBB1_392.1498
.LBB1_397.1520:
	mv	s3, a3
	mv	a2, a1
	bne	a5, zero, .LBB1_398.1522
	j	.LBB1_417.1597
.LBB1_398.1522:
	mv	a1, a2
	mv	a7, s3
	mv	s8, a1
	li	s4, 0
	li	a2, 0
	bne	s3, zero, .LBB1_399.1526
	j	.LBB1_417.1597
.LBB1_399.1526:
	li	a0, 16
	li	s2, 0
	li	a6, 0
	blt	s4, a0, .LBB1_400.1532
	j	.LBB1_406.1551
.LBB1_400.1532:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s8
	srai	a5, a0, 32
	addw	a5, a5, s8
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	s2, s8, a5
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a5, a0, 32
	addw	a5, a5, a7
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	a5, a7, a5
	addi	a0, s1, 0
	.word	0x20aa4533	# sh2add	a0, s4, a0
	lw	a0, 0(a0)
	addw	a0, a2, a0
	bne	s2, zero, .LBB1_401.1540
	j	.LBB1_403.1543
.LBB1_401.1540:
	beq	a5, zero, .LBB1_402.1542
	j	.LBB1_405.1546
.LBB1_402.1542:
	mv	a2, a0
	j	.LBB1_405.1546
.LBB1_403.1543:
	bne	a5, zero, .LBB1_404.1545
	j	.LBB1_405.1546
.LBB1_404.1545:
	mv	a2, a0
.LBB1_405.1546:
	li	a0, -2147483647
	mul	a0, a0, s8
	srai	a5, a0, 32
	addw	a5, a5, s8
	srliw	a0, a5, 31
	addw	s8, a5, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a5, a0, 32
	addw	a5, a5, a7
	srliw	a0, a5, 31
	addw	a7, a5, a0
	addiw	s4, s4, 1
	j	.LBB1_399.1526
.LBB1_406.1551:
	li	a0, 16
	blt	s2, a0, .LBB1_407.1557
	j	.LBB1_411.1573
.LBB1_407.1557:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a5, a0, 32
	addw	a5, a5, a1
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, a1, a5
	bne	a0, zero, .LBB1_408.1560
	j	.LBB1_410.1568
.LBB1_408.1560:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a5, a0, 32
	addw	a5, a5, s3
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, s3, a5
	bne	a0, zero, .LBB1_409.1563
	j	.LBB1_410.1568
.LBB1_409.1563:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a6, a6, a0
.LBB1_410.1568:
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a5, a0, 32
	addw	a5, a5, a1
	srliw	a0, a5, 31
	addw	a1, a5, a0
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a5, a0, 32
	addw	a5, a5, s3
	srliw	a0, a5, 31
	addw	s3, a5, a0
	addiw	s2, s2, 1
	j	.LBB1_406.1551
.LBB1_411.1573:
	mulw	a7, a6, s10
	li	a6, 65535
	li	s2, 0
	li	s3, 0
.LBB1_412.1575:
	li	a0, 16
	blt	s2, a0, .LBB1_413.1581
	j	.LBB1_398.1522
.LBB1_413.1581:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a5
	subw	a0, a7, a1
	bne	a0, zero, .LBB1_414.1584
	j	.LBB1_416.1592
.LBB1_414.1584:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a5
	subw	a0, a6, a1
	bne	a0, zero, .LBB1_415.1587
	j	.LBB1_416.1592
.LBB1_415.1587:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	s3, s3, a0
.LBB1_416.1592:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a7, a1, a0
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a6, a1, a0
	addiw	s2, s2, 1
	j	.LBB1_412.1575
.LBB1_417.1597:
	mv	s2, a3
	mv	s4, a3
.LBB1_418.1599:
	mv	a5, s2
	mv	a7, s4
	li	s8, 0
	li	s3, 0
	bne	s2, zero, .LBB1_419.1603
	j	.LBB1_437.1674
.LBB1_419.1603:
	li	a0, 16
	li	a6, 0
	li	a3, 0
	blt	s8, a0, .LBB1_420.1609
	j	.LBB1_426.1628
.LBB1_420.1609:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a6, a7, a2
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a2, a5, a2
	addi	a0, s1, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	a0, 0(a0)
	addw	a0, s3, a0
	bne	a6, zero, .LBB1_421.1617
	j	.LBB1_423.1620
.LBB1_421.1617:
	beq	a2, zero, .LBB1_422.1619
	j	.LBB1_425.1623
.LBB1_422.1619:
	mv	s3, a0
	j	.LBB1_425.1623
.LBB1_423.1620:
	bne	a2, zero, .LBB1_424.1622
	j	.LBB1_425.1623
.LBB1_424.1622:
	mv	s3, a0
.LBB1_425.1623:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a2, a0, 32
	addw	a2, a2, a7
	srliw	a0, a2, 31
	addw	a7, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a5, a2, a0
	addiw	s8, s8, 1
	j	.LBB1_419.1603
.LBB1_426.1628:
	li	a0, 16
	blt	a6, a0, .LBB1_427.1634
	j	.LBB1_431.1650
.LBB1_427.1634:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s4
	srai	a2, a0, 32
	addw	a2, a2, s4
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a0, s4, a2
	bne	a0, zero, .LBB1_428.1637
	j	.LBB1_430.1645
.LBB1_428.1637:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a2, a0, 32
	addw	a2, a2, s2
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a0, s2, a2
	bne	a0, zero, .LBB1_429.1640
	j	.LBB1_430.1645
.LBB1_429.1640:
	addi	a0, s1, 0
	.word	0x20a84533	# sh2add	a0, a6, a0
	lw	a0, 0(a0)
	addw	a3, a3, a0
.LBB1_430.1645:
	li	a0, -2147483647
	mul	a0, a0, s4
	srai	a2, a0, 32
	addw	a2, a2, s4
	srliw	a0, a2, 31
	addw	s4, a2, a0
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a2, a0, 32
	addw	a2, a2, s2
	srliw	a0, a2, 31
	addw	s2, a2, a0
	addiw	a6, a6, 1
	j	.LBB1_426.1628
.LBB1_431.1650:
	mulw	a6, a3, s10
	li	a5, 65535
	li	a7, 0
	li	s2, 0
.LBB1_432.1652:
	li	a0, 16
	mv	s4, s3
	blt	a7, a0, .LBB1_433.1658
	j	.LBB1_418.1599
.LBB1_433.1658:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a0, a6, a2
	bne	a0, zero, .LBB1_434.1661
	j	.LBB1_436.1669
.LBB1_434.1661:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a0, a5, a2
	bne	a0, zero, .LBB1_435.1664
	j	.LBB1_436.1669
.LBB1_435.1664:
	addi	a0, s1, 0
	.word	0x20a8c533	# sh2add	a0, a7, a0
	lw	a0, 0(a0)
	addw	s2, s2, a0
.LBB1_436.1669:
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a2, a0, 32
	addw	a2, a2, a6
	srliw	a0, a2, 31
	addw	a6, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a5, a2, a0
	addiw	a7, a7, 1
	j	.LBB1_432.1652
.LBB1_437.1674:
	li	a2, 32767
	divw	a0, s5, s10
	blt	a2, s5, .LBB1_438.1677
	j	.LBB1_439.1679
.LBB1_438.1677:
	addw	a0, s7, a0
.LBB1_439.1679:
	j	.LBB1_391.1493
.LBB1_440.1681:
	li	a0, 32767
	divw	a2, s9, s10
	blt	a0, s9, .LBB1_441.1684
	j	.LBB1_442.1687
.LBB1_441.1684:
	addw	a2, s11, a2
	li	a0, 65536
	addw	a2, a2, a0
.LBB1_442.1687:
	mv	a6, a4
	j	.LBB1_334.1273
.LBB1_443.1689:
	addi	a0, s1, 0
	.word	0x20ab4533	# sh2add	a0, s6, a0
	lw	a1, 0(a0)
	li	a0, 1
	bne	a1, a6, .LBB1_445.1695
.LBB1_444.1693:
	addiw	a1, s6, 1
	j	.LBB1_333.1269
.LBB1_445.1695:
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
.Lmain$ENTRY:
	tail	long_func

	.globl	SHIFT_TABLE
	.section	.data
	.type	SHIFT_TABLE, @object
SHIFT_TABLE:
	.word	1
	.word	2
	.word	4
	.word	8
	.word	16
	.word	32
	.word	64
	.word	128
	.word	256
	.word	512
	.word	1024
	.word	2048
	.word	4096
	.word	8192
	.word	16384
	.word	32768

