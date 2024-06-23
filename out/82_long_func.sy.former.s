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
	addi	sp, sp, -96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	addi	s0, sp, 96
	sd	s1, 72(sp)
	sd	s2, 64(sp)
	sd	s3, 56(sp)
	sd	s4, 48(sp)
	sd	s5, 40(sp)
	sd	s6, 32(sp)
	sd	s7, 24(sp)
	sd	s8, 16(sp)
	sd	s9, 8(sp)
	sd	s10, 0(sp)
.Llong_func$ENTRY:
	la	s1, SHIFT_TABLE
	lw	s6, 4(s1)
	lw	s7, 60(s1)
	subw	s5, zero, s7
	li	a0, 1
	li	a1, 0
	li	a4, 2
.LBB1_2.6:
	mv	s8, a1
	mv	a2, s8
	li	a3, 1
	li	a5, 0
	li	a6, 0
	blt	zero, s8, .LBB1_3.11
	j	.LBB1_111.423
.LBB1_3.11:
	li	a1, 16
	blt	a5, a1, .LBB1_4.17
	j	.LBB1_8.33
.LBB1_4.17:
	li	s2, 2
	li	a1, -2147483647
	mul	a1, a1, a2
	srai	a7, a1, 32
	addw	a7, a7, a2
	srliw	a1, a7, 31
	addw	a7, a7, a1
	mulw	a7, a7, s2
	subw	a1, a2, a7
	bne	a1, zero, .LBB1_5.20
	j	.LBB1_7.28
.LBB1_5.20:
	li	s2, 2
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	a7, a1, 32
	addw	a7, a7, a3
	srliw	a1, a7, 31
	addw	a7, a7, a1
	mulw	a7, a7, s2
	subw	a1, a3, a7
	bne	a1, zero, .LBB1_6.23
	j	.LBB1_7.28
.LBB1_6.23:
	addi	a1, s1, 0
	.word	0x20b7c5b3	# sh2add	a1, a5, a1
	lw	a1, 0(a1)
	addw	a6, a6, a1
.LBB1_7.28:
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
	j	.LBB1_3.11
.LBB1_8.33:
	mv	a2, a4
	li	a5, 0
	mv	a1, a0
	bne	a6, zero, .LBB1_9.35
	j	.LBB1_58.224
.LBB1_9.35:
	mv	a6, a2
	mv	a2, a6
	li	a3, 1
	li	s2, 0
	li	a7, 0
	mv	a1, a5
	bne	a6, zero, .LBB1_10.40
	j	.LBB1_58.224
.LBB1_10.40:
	li	a1, 16
	blt	s2, a1, .LBB1_11.46
	j	.LBB1_15.62
.LBB1_11.46:
	li	s4, 2
	li	a1, -2147483647
	mul	a1, a1, a2
	srai	s3, a1, 32
	addw	s3, s3, a2
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s4
	subw	a1, a2, s3
	bne	a1, zero, .LBB1_12.49
	j	.LBB1_14.57
.LBB1_12.49:
	li	s4, 2
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	s3, a1, 32
	addw	s3, s3, a3
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s4
	subw	a1, a3, s3
	bne	a1, zero, .LBB1_13.52
	j	.LBB1_14.57
.LBB1_13.52:
	addi	a1, s1, 0
	.word	0x20b945b3	# sh2add	a1, s2, a1
	lw	a1, 0(a1)
	addw	a7, a7, a1
.LBB1_14.57:
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
	addiw	s2, s2, 1
	j	.LBB1_10.40
.LBB1_15.62:
	mv	a3, a0
	mv	a2, a5
	bne	a7, zero, .LBB1_16.64
	j	.LBB1_35.139
.LBB1_16.64:
	mv	a5, a2
	mv	s2, a3
	mv	a7, a5
	li	s9, 0
	li	a2, 0
	bne	a3, zero, .LBB1_17.68
	j	.LBB1_35.139
.LBB1_17.68:
	li	a1, 16
	li	s4, 0
	li	s3, 0
	blt	s9, a1, .LBB1_18.74
	j	.LBB1_24.93
.LBB1_18.74:
	li	s4, 2
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	s3, a1, 32
	addw	s3, s3, a7
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s4
	subw	s10, a7, s3
	li	s4, 2
	li	a1, -2147483647
	mul	a1, a1, s2
	srai	s3, a1, 32
	addw	s3, s3, s2
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s4
	subw	s3, s2, s3
	addi	a1, s1, 0
	.word	0x20bcc5b3	# sh2add	a1, s9, a1
	lw	a1, 0(a1)
	addw	a1, a2, a1
	bne	s10, zero, .LBB1_19.82
	j	.LBB1_21.85
.LBB1_19.82:
	beq	s3, zero, .LBB1_20.84
	j	.LBB1_23.88
.LBB1_20.84:
	mv	a2, a1
	j	.LBB1_23.88
.LBB1_21.85:
	bne	s3, zero, .LBB1_22.87
	j	.LBB1_23.88
.LBB1_22.87:
	mv	a2, a1
.LBB1_23.88:
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	s3, a1, 32
	addw	s3, s3, a7
	srliw	a1, s3, 31
	addw	a7, s3, a1
	li	a1, -2147483647
	mul	a1, a1, s2
	srai	s3, a1, 32
	addw	s3, s3, s2
	srliw	a1, s3, 31
	addw	s2, s3, a1
	addiw	s9, s9, 1
	j	.LBB1_17.68
.LBB1_24.93:
	li	a1, 16
	blt	s4, a1, .LBB1_25.99
	j	.LBB1_29.115
.LBB1_25.99:
	li	s2, 2
	li	a1, -2147483647
	mul	a1, a1, a5
	srai	a7, a1, 32
	addw	a7, a7, a5
	srliw	a1, a7, 31
	addw	a7, a7, a1
	mulw	a7, a7, s2
	subw	a1, a5, a7
	bne	a1, zero, .LBB1_26.102
	j	.LBB1_28.110
.LBB1_26.102:
	li	s2, 2
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	a7, a1, 32
	addw	a7, a7, a3
	srliw	a1, a7, 31
	addw	a7, a7, a1
	mulw	a7, a7, s2
	subw	a1, a3, a7
	bne	a1, zero, .LBB1_27.105
	j	.LBB1_28.110
.LBB1_27.105:
	addi	a1, s1, 0
	.word	0x20ba45b3	# sh2add	a1, s4, a1
	lw	a1, 0(a1)
	addw	s3, s3, a1
.LBB1_28.110:
	li	a1, -2147483647
	mul	a1, a1, a5
	srai	a7, a1, 32
	addw	a7, a7, a5
	srliw	a1, a7, 31
	addw	a5, a7, a1
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	a7, a1, 32
	addw	a7, a7, a3
	srliw	a1, a7, 31
	addw	a3, a7, a1
	addiw	s4, s4, 1
	j	.LBB1_24.93
.LBB1_29.115:
	mulw	a5, s3, s6
	li	a7, 65535
	li	s3, 0
	li	a3, 0
.LBB1_30.117:
	li	a1, 16
	blt	s3, a1, .LBB1_31.123
	j	.LBB1_16.64
.LBB1_31.123:
	li	s4, 2
	li	a1, -2147483647
	mul	a1, a1, a5
	srai	s2, a1, 32
	addw	s2, s2, a5
	srliw	a1, s2, 31
	addw	s2, s2, a1
	mulw	s2, s2, s4
	subw	a1, a5, s2
	bne	a1, zero, .LBB1_32.126
	j	.LBB1_34.134
.LBB1_32.126:
	li	s4, 2
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	s2, a1, 32
	addw	s2, s2, a7
	srliw	a1, s2, 31
	addw	s2, s2, a1
	mulw	s2, s2, s4
	subw	a1, a7, s2
	bne	a1, zero, .LBB1_33.129
	j	.LBB1_34.134
.LBB1_33.129:
	addi	a1, s1, 0
	.word	0x20b9c5b3	# sh2add	a1, s3, a1
	lw	a1, 0(a1)
	addw	a3, a3, a1
.LBB1_34.134:
	li	a1, -2147483647
	mul	a1, a1, a5
	srai	s2, a1, 32
	addw	s2, s2, a5
	srliw	a1, s2, 31
	addw	a5, s2, a1
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	s2, a1, 32
	addw	s2, s2, a7
	srliw	a1, s2, 31
	addw	a7, s2, a1
	addiw	s3, s3, 1
	j	.LBB1_30.117
.LBB1_35.139:
	mv	a2, a0
.LBB1_36.141:
	mv	a7, a2
	mv	a3, a0
	li	s9, 0
	li	s2, 0
	bne	a2, zero, .LBB1_37.145
	j	.LBB1_55.216
.LBB1_37.145:
	li	a1, 16
	li	s4, 0
	li	s3, 0
	blt	s9, a1, .LBB1_38.151
	j	.LBB1_44.170
.LBB1_38.151:
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
	mul	a1, a1, a7
	srai	s3, a1, 32
	addw	s3, s3, a7
	srliw	a1, s3, 31
	addw	s3, s3, a1
	mulw	s3, s3, s4
	subw	s3, a7, s3
	addi	a1, s1, 0
	.word	0x20bcc5b3	# sh2add	a1, s9, a1
	lw	a1, 0(a1)
	addw	a1, s2, a1
	bne	s10, zero, .LBB1_39.159
	j	.LBB1_41.162
.LBB1_39.159:
	beq	s3, zero, .LBB1_40.161
	j	.LBB1_43.165
.LBB1_40.161:
	mv	s2, a1
	j	.LBB1_43.165
.LBB1_41.162:
	bne	s3, zero, .LBB1_42.164
	j	.LBB1_43.165
.LBB1_42.164:
	mv	s2, a1
.LBB1_43.165:
	li	a1, -2147483647
	mul	a1, a1, a3
	srai	s3, a1, 32
	addw	s3, s3, a3
	srliw	a1, s3, 31
	addw	a3, s3, a1
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	s3, a1, 32
	addw	s3, s3, a7
	srliw	a1, s3, 31
	addw	a7, s3, a1
	addiw	s9, s9, 1
	j	.LBB1_37.145
.LBB1_44.170:
	li	a1, 16
	blt	s4, a1, .LBB1_45.176
	j	.LBB1_49.192
.LBB1_45.176:
	li	a7, 2
	li	a1, -2147483647
	mul	a1, a1, a0
	srai	a3, a1, 32
	addw	a3, a3, a0
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a7
	subw	a1, a0, a3
	bne	a1, zero, .LBB1_46.179
	j	.LBB1_48.187
.LBB1_46.179:
	li	a7, 2
	li	a1, -2147483647
	mul	a1, a1, a2
	srai	a3, a1, 32
	addw	a3, a3, a2
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a7
	subw	a1, a2, a3
	bne	a1, zero, .LBB1_47.182
	j	.LBB1_48.187
.LBB1_47.182:
	addi	a1, s1, 0
	.word	0x20ba45b3	# sh2add	a1, s4, a1
	lw	a1, 0(a1)
	addw	s3, s3, a1
.LBB1_48.187:
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
	j	.LBB1_44.170
.LBB1_49.192:
	mulw	a1, s3, s6
	li	a3, 65535
	li	s4, 0
	li	a2, 0
.LBB1_50.194:
	li	a7, 16
	mv	a0, s2
	blt	s4, a7, .LBB1_51.200
	j	.LBB1_36.141
.LBB1_51.200:
	li	s3, 2
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a7, a0, 32
	addw	a7, a7, a1
	srliw	a0, a7, 31
	addw	a7, a7, a0
	mulw	a7, a7, s3
	subw	a0, a1, a7
	bne	a0, zero, .LBB1_52.203
	j	.LBB1_54.211
.LBB1_52.203:
	li	s3, 2
	li	a0, -2147483647
	mul	a0, a0, a3
	srai	a7, a0, 32
	addw	a7, a7, a3
	srliw	a0, a7, 31
	addw	a7, a7, a0
	mulw	a7, a7, s3
	subw	a0, a3, a7
	bne	a0, zero, .LBB1_53.206
	j	.LBB1_54.211
.LBB1_53.206:
	addi	a0, s1, 0
	.word	0x20aa4533	# sh2add	a0, s4, a0
	lw	a0, 0(a0)
	addw	a2, a2, a0
.LBB1_54.211:
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a7, a0, 32
	addw	a7, a7, a1
	srliw	a0, a7, 31
	addw	a1, a7, a0
	li	a0, -2147483647
	mul	a0, a0, a3
	srai	a7, a0, 32
	addw	a7, a7, a3
	srliw	a0, a7, 31
	addw	a3, a7, a0
	addiw	s4, s4, 1
	j	.LBB1_50.194
.LBB1_55.216:
	li	a1, 32767
	divw	a2, a6, s6
	blt	a1, a6, .LBB1_56.219
	j	.LBB1_57.222
.LBB1_56.219:
	li	a1, 65536
	addw	a1, a2, a1
	subw	a2, a1, s7
.LBB1_57.222:
	j	.LBB1_9.35
.LBB1_58.224:
	mv	a3, a1
	mv	a0, a4
	mv	s9, a4
	li	a4, 0
.LBB1_59.226:
	mv	s2, a0
	mv	s3, s2
	li	a6, 1
	li	a7, 0
	li	a5, 0
	bne	s2, zero, .LBB1_60.231
	j	.LBB1_108.415
.LBB1_60.231:
	li	a0, 16
	blt	a7, a0, .LBB1_61.237
	j	.LBB1_65.253
.LBB1_61.237:
	li	a2, 2
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a1, a0, 32
	addw	a1, a1, s3
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	a0, s3, a1
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
	mul	a0, a0, s3
	srai	a1, a0, 32
	addw	a1, a1, s3
	srliw	a0, a1, 31
	addw	s3, a1, a0
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
	mv	s4, a2
	mv	a7, a4
	li	s10, 0
	li	a1, 0
	bne	a2, zero, .LBB1_67.259
	j	.LBB1_85.330
.LBB1_67.259:
	li	a0, 16
	li	s3, 0
	li	a6, 0
	blt	s10, a0, .LBB1_68.265
	j	.LBB1_74.284
.LBB1_68.265:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a5, a0, 32
	addw	a5, a5, a7
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	s3, a7, a5
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s4
	srai	a5, a0, 32
	addw	a5, a5, s4
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	a5, s4, a5
	addi	a0, s1, 0
	.word	0x20ad4533	# sh2add	a0, s10, a0
	lw	a0, 0(a0)
	addw	a0, a1, a0
	bne	s3, zero, .LBB1_69.273
	j	.LBB1_71.276
.LBB1_69.273:
	beq	a5, zero, .LBB1_70.275
	j	.LBB1_73.279
.LBB1_70.275:
	mv	a1, a0
	j	.LBB1_73.279
.LBB1_71.276:
	bne	a5, zero, .LBB1_72.278
	j	.LBB1_73.279
.LBB1_72.278:
	mv	a1, a0
.LBB1_73.279:
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a5, a0, 32
	addw	a5, a5, a7
	srliw	a0, a5, 31
	addw	a7, a5, a0
	li	a0, -2147483647
	mul	a0, a0, s4
	srai	a5, a0, 32
	addw	a5, a5, s4
	srliw	a0, a5, 31
	addw	s4, a5, a0
	addiw	s10, s10, 1
	j	.LBB1_67.259
.LBB1_74.284:
	li	a0, 16
	blt	s3, a0, .LBB1_75.290
	j	.LBB1_79.306
.LBB1_75.290:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a4
	srai	a5, a0, 32
	addw	a5, a5, a4
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, a4, a5
	bne	a0, zero, .LBB1_76.293
	j	.LBB1_78.301
.LBB1_76.293:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a2
	srai	a5, a0, 32
	addw	a5, a5, a2
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, a2, a5
	bne	a0, zero, .LBB1_77.296
	j	.LBB1_78.301
.LBB1_77.296:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	a6, a6, a0
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
	addiw	s3, s3, 1
	j	.LBB1_74.284
.LBB1_79.306:
	mulw	s3, a6, s6
	li	a6, 65535
	li	a7, 0
	li	a2, 0
.LBB1_80.308:
	li	a0, 16
	blt	a7, a0, .LBB1_81.314
	j	.LBB1_66.255
.LBB1_81.314:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a4, a0, 32
	addw	a4, a4, s3
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a5
	subw	a0, s3, a4
	bne	a0, zero, .LBB1_82.317
	j	.LBB1_84.325
.LBB1_82.317:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a4, a0, 32
	addw	a4, a4, a6
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a5
	subw	a0, a6, a4
	bne	a0, zero, .LBB1_83.320
	j	.LBB1_84.325
.LBB1_83.320:
	addi	a0, s1, 0
	.word	0x20a8c533	# sh2add	a0, a7, a0
	lw	a0, 0(a0)
	addw	a2, a2, a0
.LBB1_84.325:
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a4, a0, 32
	addw	a4, a4, s3
	srliw	a0, a4, 31
	addw	s3, a4, a0
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a4, a0, 32
	addw	a4, a4, a6
	srliw	a0, a4, 31
	addw	a6, a4, a0
	addiw	a7, a7, 1
	j	.LBB1_80.308
.LBB1_85.330:
	mv	a1, s9
.LBB1_86.332:
	mv	s4, a1
	mv	s10, s9
	li	a6, 0
	li	a7, 0
	bne	a1, zero, .LBB1_87.336
	j	.LBB1_105.407
.LBB1_87.336:
	li	a0, 16
	li	s3, 0
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
	subw	s3, s10, a2
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
	addw	a0, a7, a0
	bne	s3, zero, .LBB1_89.350
	j	.LBB1_91.353
.LBB1_89.350:
	beq	a2, zero, .LBB1_90.352
	j	.LBB1_93.356
.LBB1_90.352:
	mv	a7, a0
	j	.LBB1_93.356
.LBB1_91.353:
	bne	a2, zero, .LBB1_92.355
	j	.LBB1_93.356
.LBB1_92.355:
	mv	a7, a0
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
	blt	s3, a0, .LBB1_95.367
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
	.word	0x20a9c533	# sh2add	a0, s3, a0
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
	addiw	s3, s3, 1
	j	.LBB1_94.361
.LBB1_99.383:
	mulw	s3, a5, s6
	li	a6, 65535
	li	s4, 0
	li	a1, 0
.LBB1_100.385:
	li	a0, 16
	mv	s9, a7
	blt	s4, a0, .LBB1_101.391
	j	.LBB1_86.332
.LBB1_101.391:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a2, a0, 32
	addw	a2, a2, s3
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a0, s3, a2
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
	mul	a0, a0, s3
	srai	a2, a0, 32
	addw	a2, a2, s3
	srliw	a0, a2, 31
	addw	s3, a2, a0
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
	divw	a0, s2, s6
	blt	a1, s2, .LBB1_106.410
	j	.LBB1_107.413
.LBB1_106.410:
	addw	a1, s5, a0
	li	a0, 65536
	addw	a0, a1, a0
.LBB1_107.413:
	j	.LBB1_59.226
.LBB1_108.415:
	li	a0, 32767
	divw	a1, s8, s6
	blt	a0, s8, .LBB1_109.418
	j	.LBB1_110.421
.LBB1_109.418:
	addw	a1, s5, a1
	li	a0, 65536
	addw	a1, a1, a0
.LBB1_110.421:
	mv	a0, a3
	j	.LBB1_2.6
.LBB1_111.423:
	call	putint
	li	a0, 10
	call	putch
	lw	s6, 4(s1)
	lw	a1, 60(s1)
	subw	s9, zero, a1
	li	a0, 65536
	subw	s8, a0, a1
	li	a0, 1
	li	a3, 1
	li	a1, 2
.LBB1_112.428:
	mv	a2, a1
	mv	s7, a3
	mv	s2, s7
	li	a6, 1
	li	a7, 0
	li	a4, 0
	blt	zero, s7, .LBB1_113.433
	j	.LBB1_221.844
.LBB1_113.433:
	li	a1, 16
	blt	a7, a1, .LBB1_114.439
	j	.LBB1_118.455
.LBB1_114.439:
	li	a5, 2
	li	a1, -2147483647
	mul	a1, a1, s2
	srai	a3, a1, 32
	addw	a3, a3, s2
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a5
	subw	a1, s2, a3
	bne	a1, zero, .LBB1_115.442
	j	.LBB1_117.450
.LBB1_115.442:
	li	a5, 2
	li	a1, -2147483647
	mul	a1, a1, a6
	srai	a3, a1, 32
	addw	a3, a3, a6
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a5
	subw	a1, a6, a3
	bne	a1, zero, .LBB1_116.445
	j	.LBB1_117.450
.LBB1_116.445:
	addi	a1, s1, 0
	.word	0x20b8c5b3	# sh2add	a1, a7, a1
	lw	a1, 0(a1)
	addw	a4, a4, a1
.LBB1_117.450:
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
	j	.LBB1_113.433
.LBB1_118.455:
	mv	a3, a2
	li	a5, 0
	mv	a1, a0
	bne	a4, zero, .LBB1_119.457
	j	.LBB1_168.646
.LBB1_119.457:
	mv	a4, a0
	mv	s4, a3
	mv	a1, a5
	mv	s2, s4
	li	a7, 1
	li	s3, 0
	li	a5, 0
	bne	s4, zero, .LBB1_120.462
	j	.LBB1_168.646
.LBB1_120.462:
	li	a0, 16
	blt	s3, a0, .LBB1_121.468
	j	.LBB1_125.484
.LBB1_121.468:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a3, a0, 32
	addw	a3, a3, s2
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a6
	subw	a0, s2, a3
	bne	a0, zero, .LBB1_122.471
	j	.LBB1_124.479
.LBB1_122.471:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a3, a0, 32
	addw	a3, a3, a7
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a6
	subw	a0, a7, a3
	bne	a0, zero, .LBB1_123.474
	j	.LBB1_124.479
.LBB1_123.474:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	a5, a5, a0
.LBB1_124.479:
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a3, a0, 32
	addw	a3, a3, s2
	srliw	a0, a3, 31
	addw	s2, a3, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a3, a0, 32
	addw	a3, a3, a7
	srliw	a0, a3, 31
	addw	a7, a3, a0
	addiw	s3, s3, 1
	j	.LBB1_120.462
.LBB1_125.484:
	mv	s2, a4
	mv	a3, a1
	bne	a5, zero, .LBB1_126.486
	j	.LBB1_145.561
.LBB1_126.486:
	mv	a3, a1
	mv	a7, s2
	mv	s10, a3
	li	s5, 0
	li	a1, 0
	bne	s2, zero, .LBB1_127.490
	j	.LBB1_145.561
.LBB1_127.490:
	li	a0, 16
	li	s3, 0
	li	a6, 0
	blt	s5, a0, .LBB1_128.496
	j	.LBB1_134.515
.LBB1_128.496:
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
	bne	s3, zero, .LBB1_129.504
	j	.LBB1_131.507
.LBB1_129.504:
	beq	a5, zero, .LBB1_130.506
	j	.LBB1_133.510
.LBB1_130.506:
	mv	a1, a0
	j	.LBB1_133.510
.LBB1_131.507:
	bne	a5, zero, .LBB1_132.509
	j	.LBB1_133.510
.LBB1_132.509:
	mv	a1, a0
.LBB1_133.510:
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
	j	.LBB1_127.490
.LBB1_134.515:
	li	a0, 16
	blt	s3, a0, .LBB1_135.521
	j	.LBB1_139.537
.LBB1_135.521:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a3
	srai	a5, a0, 32
	addw	a5, a5, a3
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, a3, a5
	bne	a0, zero, .LBB1_136.524
	j	.LBB1_138.532
.LBB1_136.524:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a5, a0, 32
	addw	a5, a5, s2
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, s2, a5
	bne	a0, zero, .LBB1_137.527
	j	.LBB1_138.532
.LBB1_137.527:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	a6, a6, a0
.LBB1_138.532:
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
	j	.LBB1_134.515
.LBB1_139.537:
	mulw	a7, a6, s6
	li	a6, 65535
	li	s3, 0
	li	s2, 0
.LBB1_140.539:
	li	a0, 16
	blt	s3, a0, .LBB1_141.545
	j	.LBB1_126.486
.LBB1_141.545:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a3, a0, 32
	addw	a3, a3, a7
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a5
	subw	a0, a7, a3
	bne	a0, zero, .LBB1_142.548
	j	.LBB1_144.556
.LBB1_142.548:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a3, a0, 32
	addw	a3, a3, a6
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a5
	subw	a0, a6, a3
	bne	a0, zero, .LBB1_143.551
	j	.LBB1_144.556
.LBB1_143.551:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	s2, s2, a0
.LBB1_144.556:
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
	j	.LBB1_140.539
.LBB1_145.561:
	mv	a5, a3
	mv	a7, a4
	mv	a0, a4
.LBB1_146.563:
	mv	a6, a7
	mv	s10, a0
	li	s5, 0
	li	s3, 0
	bne	a7, zero, .LBB1_147.567
	j	.LBB1_165.638
.LBB1_147.567:
	li	a1, 16
	li	s2, 0
	li	a4, 0
	blt	s5, a1, .LBB1_148.573
	j	.LBB1_154.592
.LBB1_148.573:
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
	bne	s2, zero, .LBB1_149.581
	j	.LBB1_151.584
.LBB1_149.581:
	beq	a3, zero, .LBB1_150.583
	j	.LBB1_153.587
.LBB1_150.583:
	mv	s3, a1
	j	.LBB1_153.587
.LBB1_151.584:
	bne	a3, zero, .LBB1_152.586
	j	.LBB1_153.587
.LBB1_152.586:
	mv	s3, a1
.LBB1_153.587:
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
	j	.LBB1_147.567
.LBB1_154.592:
	li	a1, 16
	blt	s2, a1, .LBB1_155.598
	j	.LBB1_159.614
.LBB1_155.598:
	li	a6, 2
	li	a1, -2147483647
	mul	a1, a1, a0
	srai	a3, a1, 32
	addw	a3, a3, a0
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a6
	subw	a1, a0, a3
	bne	a1, zero, .LBB1_156.601
	j	.LBB1_158.609
.LBB1_156.601:
	li	a6, 2
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	a3, a1, 32
	addw	a3, a3, a7
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a6
	subw	a1, a7, a3
	bne	a1, zero, .LBB1_157.604
	j	.LBB1_158.609
.LBB1_157.604:
	addi	a1, s1, 0
	.word	0x20b945b3	# sh2add	a1, s2, a1
	lw	a1, 0(a1)
	addw	a4, a4, a1
.LBB1_158.609:
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
	j	.LBB1_154.592
.LBB1_159.614:
	mulw	a6, a4, s6
	li	a4, 65535
	li	s2, 0
	li	a7, 0
.LBB1_160.616:
	li	a1, 16
	mv	a0, s3
	blt	s2, a1, .LBB1_161.622
	j	.LBB1_146.563
.LBB1_161.622:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a3
	subw	a0, a6, a1
	bne	a0, zero, .LBB1_162.625
	j	.LBB1_164.633
.LBB1_162.625:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a4
	srai	a1, a0, 32
	addw	a1, a1, a4
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a3
	subw	a0, a4, a1
	bne	a0, zero, .LBB1_163.628
	j	.LBB1_164.633
.LBB1_163.628:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a7, a7, a0
.LBB1_164.633:
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
	j	.LBB1_160.616
.LBB1_165.638:
	li	a1, 32767
	divw	a3, s4, s6
	blt	a1, s4, .LBB1_166.641
	j	.LBB1_167.644
.LBB1_166.641:
	addw	a3, s9, a3
	li	a1, 65536
	addw	a3, a3, a1
.LBB1_167.644:
	j	.LBB1_119.457
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
	j	.LBB1_218.837
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
	j	.LBB1_217.835
.LBB1_216.832:
	addw	a2, s9, a0
	li	a0, 65536
	addw	a0, a2, a0
.LBB1_217.835:
	mv	a2, s5
	j	.LBB1_169.648
.LBB1_218.837:
	li	a0, 32767
	divw	a3, s7, s6
	blt	a0, s7, .LBB1_219.840
	j	.LBB1_220.842
.LBB1_219.840:
	addw	a3, s8, a3
.LBB1_220.842:
	mv	a0, a4
	j	.LBB1_112.428
.LBB1_221.844:
	call	putint
	li	a0, 10
	call	putch
	li	a0, 2
.LBB1_222.845:
	mv	s5, a0
	li	a4, 16
	lw	s10, 4(s1)
	lw	s7, 60(s1)
	subw	s8, zero, s7
	mv	a3, s5
	li	a0, 1
	li	a2, 2
	li	a1, 0
	blt	s5, a4, .LBB1_223.851
	j	.LBB1_333.1270
.LBB1_223.851:
	mv	a5, a2
	mv	s7, a3
	mv	a7, s7
	li	a6, 1
	li	s2, 0
	li	a3, 0
	blt	zero, s7, .LBB1_224.856
	j	.LBB1_332.1268
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
	mul	a1, a1, a6
	srai	a2, a1, 32
	addw	a2, a2, a6
	srliw	a1, a2, 31
	addw	a2, a2, a1
	mulw	a2, a2, a4
	subw	a1, a6, a2
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
	mul	a1, a1, a6
	srai	a2, a1, 32
	addw	a2, a2, a6
	srliw	a1, a2, 31
	addw	a6, a2, a1
	addiw	s2, s2, 1
	j	.LBB1_224.856
.LBB1_229.878:
	mv	a2, a5
	li	a4, 0
	mv	a1, a0
	bne	a3, zero, .LBB1_230.880
	j	.LBB1_279.1069
.LBB1_230.880:
	mv	a3, a0
	mv	s4, a2
	mv	a2, a4
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
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s3
	srai	a1, a0, 32
	addw	a1, a1, s3
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a6
	subw	a0, s3, a1
	bne	a0, zero, .LBB1_233.894
	j	.LBB1_235.902
.LBB1_233.894:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a6
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
	mv	s2, a3
	mv	a1, a2
	bne	a4, zero, .LBB1_237.909
	j	.LBB1_256.984
.LBB1_237.909:
	mv	a1, a2
	mv	a7, s2
	mv	s9, a1
	li	s6, 0
	li	a2, 0
	bne	s2, zero, .LBB1_238.913
	j	.LBB1_256.984
.LBB1_238.913:
	li	a0, 16
	li	s3, 0
	li	a6, 0
	blt	s6, a0, .LBB1_239.919
	j	.LBB1_245.938
.LBB1_239.919:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a4, a0, 32
	addw	a4, a4, s9
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a6
	subw	s3, s9, a4
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
	.word	0x20ab4533	# sh2add	a0, s6, a0
	lw	a0, 0(a0)
	addw	a0, a2, a0
	bne	s3, zero, .LBB1_240.927
	j	.LBB1_242.930
.LBB1_240.927:
	beq	a4, zero, .LBB1_241.929
	j	.LBB1_244.933
.LBB1_241.929:
	mv	a2, a0
	j	.LBB1_244.933
.LBB1_242.930:
	bne	a4, zero, .LBB1_243.932
	j	.LBB1_244.933
.LBB1_243.932:
	mv	a2, a0
.LBB1_244.933:
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a4, a0, 32
	addw	a4, a4, s9
	srliw	a0, a4, 31
	addw	s9, a4, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a4, a0, 32
	addw	a4, a4, a7
	srliw	a0, a4, 31
	addw	a7, a4, a0
	addiw	s6, s6, 1
	j	.LBB1_238.913
.LBB1_245.938:
	li	a0, 16
	blt	s3, a0, .LBB1_246.944
	j	.LBB1_250.960
.LBB1_246.944:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a4, a0, 32
	addw	a4, a4, a1
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a7
	subw	a0, a1, a4
	bne	a0, zero, .LBB1_247.947
	j	.LBB1_249.955
.LBB1_247.947:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a4, a0, 32
	addw	a4, a4, s2
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a7
	subw	a0, s2, a4
	bne	a0, zero, .LBB1_248.950
	j	.LBB1_249.955
.LBB1_248.950:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	a6, a6, a0
.LBB1_249.955:
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a4, a0, 32
	addw	a4, a4, a1
	srliw	a0, a4, 31
	addw	a1, a4, a0
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a4, a0, 32
	addw	a4, a4, s2
	srliw	a0, a4, 31
	addw	s2, a4, a0
	addiw	s3, s3, 1
	j	.LBB1_245.938
.LBB1_250.960:
	mulw	a7, a6, s10
	li	a6, 65535
	li	s3, 0
	li	s2, 0
.LBB1_251.962:
	li	a0, 16
	blt	s3, a0, .LBB1_252.968
	j	.LBB1_237.909
.LBB1_252.968:
	li	a4, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a4
	subw	a0, a7, a1
	bne	a0, zero, .LBB1_253.971
	j	.LBB1_255.979
.LBB1_253.971:
	li	a4, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a4
	subw	a0, a6, a1
	bne	a0, zero, .LBB1_254.974
	j	.LBB1_255.979
.LBB1_254.974:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	s2, s2, a0
.LBB1_255.979:
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
	j	.LBB1_251.962
.LBB1_256.984:
	mv	a4, a1
	mv	s2, a3
	mv	a2, a3
.LBB1_257.986:
	mv	a0, a2
	mv	a7, s2
	mv	s9, a0
	li	s6, 0
	li	a2, 0
	bne	s2, zero, .LBB1_258.990
	j	.LBB1_276.1061
.LBB1_258.990:
	li	a1, 16
	li	s3, 0
	li	a6, 0
	blt	s6, a1, .LBB1_259.996
	j	.LBB1_265.1015
.LBB1_259.996:
	li	a6, 2
	li	a1, -2147483647
	mul	a1, a1, s9
	srai	a3, a1, 32
	addw	a3, a3, s9
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a6
	subw	s3, s9, a3
	li	a6, 2
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	a3, a1, 32
	addw	a3, a3, a7
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a6
	subw	a3, a7, a3
	addi	a1, s1, 0
	.word	0x20bb45b3	# sh2add	a1, s6, a1
	lw	a1, 0(a1)
	addw	a1, a2, a1
	bne	s3, zero, .LBB1_260.1004
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
	mul	a1, a1, s9
	srai	a3, a1, 32
	addw	a3, a3, s9
	srliw	a1, a3, 31
	addw	s9, a3, a1
	li	a1, -2147483647
	mul	a1, a1, a7
	srai	a3, a1, 32
	addw	a3, a3, a7
	srliw	a1, a3, 31
	addw	a7, a3, a1
	addiw	s6, s6, 1
	j	.LBB1_258.990
.LBB1_265.1015:
	li	a1, 16
	blt	s3, a1, .LBB1_266.1021
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
	mul	a1, a1, s2
	srai	a3, a1, 32
	addw	a3, a3, s2
	srliw	a1, a3, 31
	addw	a3, a3, a1
	mulw	a3, a3, a7
	subw	a1, s2, a3
	bne	a1, zero, .LBB1_268.1027
	j	.LBB1_269.1032
.LBB1_268.1027:
	addi	a1, s1, 0
	.word	0x20b9c5b3	# sh2add	a1, s3, a1
	lw	a1, 0(a1)
	addw	a6, a6, a1
.LBB1_269.1032:
	li	a1, -2147483647
	mul	a1, a1, a0
	srai	a1, a1, 32
	addw	a1, a1, a0
	srliw	a0, a1, 31
	addw	a0, a1, a0
	li	a1, -2147483647
	mul	a1, a1, s2
	srai	a3, a1, 32
	addw	a3, a3, s2
	srliw	a1, a3, 31
	addw	s2, a3, a1
	addiw	s3, s3, 1
	j	.LBB1_265.1015
.LBB1_270.1037:
	mulw	a7, a6, s10
	li	a6, 65535
	li	s3, 0
	li	s2, 0
.LBB1_271.1039:
	li	a0, 16
	blt	s3, a0, .LBB1_272.1045
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
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a3
	subw	a0, a6, a1
	bne	a0, zero, .LBB1_274.1051
	j	.LBB1_275.1056
.LBB1_274.1051:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	s2, s2, a0
.LBB1_275.1056:
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
	j	.LBB1_271.1039
.LBB1_276.1061:
	li	a1, 32767
	divw	a2, s4, s10
	blt	a1, s4, .LBB1_277.1064
	j	.LBB1_278.1067
.LBB1_277.1064:
	addw	a2, s8, a2
	li	a1, 65536
	addw	a2, a2, a1
.LBB1_278.1067:
	j	.LBB1_230.880
.LBB1_279.1069:
	mv	a4, a1
	mv	a0, a5
	mv	s6, a5
	li	a2, 0
.LBB1_280.1071:
	mv	a3, s6
	mv	s4, a0
	mv	s2, s4
	li	a7, 1
	li	s3, 0
	li	a5, 0
	bne	s4, zero, .LBB1_281.1076
	j	.LBB1_329.1260
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
	mv	s2, a3
	mv	a1, a2
	bne	a5, zero, .LBB1_287.1100
	j	.LBB1_306.1175
.LBB1_287.1100:
	mv	a2, a1
	mv	a7, s2
	mv	s9, a2
	li	s6, 0
	li	a1, 0
	bne	s2, zero, .LBB1_288.1104
	j	.LBB1_306.1175
.LBB1_288.1104:
	li	a0, 16
	li	s3, 0
	li	a6, 0
	blt	s6, a0, .LBB1_289.1110
	j	.LBB1_295.1129
.LBB1_289.1110:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a5, a0, 32
	addw	a5, a5, s9
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	s3, s9, a5
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
	.word	0x20ab4533	# sh2add	a0, s6, a0
	lw	a0, 0(a0)
	addw	a0, a1, a0
	bne	s3, zero, .LBB1_290.1118
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
	mul	a0, a0, s9
	srai	a5, a0, 32
	addw	a5, a5, s9
	srliw	a0, a5, 31
	addw	s9, a5, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a5, a0, 32
	addw	a5, a5, a7
	srliw	a0, a5, 31
	addw	a7, a5, a0
	addiw	s6, s6, 1
	j	.LBB1_288.1104
.LBB1_295.1129:
	li	a0, 16
	blt	s3, a0, .LBB1_296.1135
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
	mul	a0, a0, s2
	srai	a5, a0, 32
	addw	a5, a5, s2
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, s2, a5
	bne	a0, zero, .LBB1_298.1141
	j	.LBB1_299.1146
.LBB1_298.1141:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
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
	mul	a0, a0, s2
	srai	a5, a0, 32
	addw	a5, a5, s2
	srliw	a0, a5, 31
	addw	s2, a5, a0
	addiw	s3, s3, 1
	j	.LBB1_295.1129
.LBB1_300.1151:
	mulw	a7, a6, s10
	li	a6, 65535
	li	s3, 0
	li	s2, 0
.LBB1_301.1153:
	li	a0, 16
	blt	s3, a0, .LBB1_302.1159
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
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	s2, s2, a0
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
	addiw	s3, s3, 1
	j	.LBB1_301.1153
.LBB1_306.1175:
	mv	a1, a2
	mv	s2, a3
	mv	s6, a3
.LBB1_307.1177:
	mv	a5, s2
	mv	s9, s6
	li	a7, 0
	li	s3, 0
	bne	s2, zero, .LBB1_308.1181
	j	.LBB1_326.1252
.LBB1_308.1181:
	li	a0, 16
	li	a6, 0
	li	a3, 0
	blt	a7, a0, .LBB1_309.1187
	j	.LBB1_315.1206
.LBB1_309.1187:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a2, a0, 32
	addw	a2, a2, s9
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a6, s9, a2
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
	mul	a0, a0, s9
	srai	a2, a0, 32
	addw	a2, a2, s9
	srliw	a0, a2, 31
	addw	s9, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a5
	srai	a2, a0, 32
	addw	a2, a2, a5
	srliw	a0, a2, 31
	addw	a5, a2, a0
	addiw	a7, a7, 1
	j	.LBB1_308.1181
.LBB1_315.1206:
	li	a0, 16
	blt	a6, a0, .LBB1_316.1212
	j	.LBB1_320.1228
.LBB1_316.1212:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s6
	srai	a2, a0, 32
	addw	a2, a2, s6
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a5
	subw	a0, s6, a2
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
	mul	a0, a0, s6
	srai	a2, a0, 32
	addw	a2, a2, s6
	srliw	a0, a2, 31
	addw	s6, a2, a0
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
	mv	s6, s3
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
	divw	a0, s4, s10
	blt	a2, s4, .LBB1_327.1255
	j	.LBB1_328.1258
.LBB1_327.1255:
	addw	a2, s8, a0
	li	a0, 65536
	addw	a0, a2, a0
.LBB1_328.1258:
	mv	a2, a1
	j	.LBB1_280.1071
.LBB1_329.1260:
	li	a0, 32767
	divw	a3, s7, s10
	blt	a0, s7, .LBB1_330.1263
	j	.LBB1_331.1266
.LBB1_330.1263:
	addw	a1, s8, a3
	li	a0, 65536
	addw	a3, a1, a0
.LBB1_331.1266:
	mv	a0, a4
	j	.LBB1_223.851
.LBB1_332.1268:
	call	putint
	li	a0, 10
	call	putch
	addiw	a0, s5, 1
	j	.LBB1_222.845
.LBB1_333.1270:
	mv	s6, a1
	li	a3, 16
	mv	a2, s6
	li	a6, 1
	li	a1, 2
	li	a0, 0
	blt	s6, a3, .LBB1_334.1273
	j	.LBB1_445.1696
.LBB1_334.1273:
	mv	a4, a1
	mv	s8, a2
	mv	a7, s8
	li	a5, 1
	li	s2, 0
	li	a3, 0
	blt	zero, s8, .LBB1_335.1278
	j	.LBB1_443.1690
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
	mul	a0, a0, a5
	srai	a1, a0, 32
	addw	a1, a1, a5
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a2
	subw	a0, a5, a1
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
	mul	a0, a0, a5
	srai	a1, a0, 32
	addw	a1, a1, a5
	srliw	a0, a1, 31
	addw	a5, a1, a0
	addiw	s2, s2, 1
	j	.LBB1_335.1278
.LBB1_340.1300:
	mv	a1, a4
	li	a2, 0
	mv	a0, a6
	bne	a3, zero, .LBB1_341.1302
	j	.LBB1_390.1491
.LBB1_341.1302:
	mv	a3, a6
	mv	s4, a1
	mv	s3, s4
	li	a7, 1
	li	s2, 0
	li	a5, 0
	mv	a0, a2
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
	srai	a1, a0, 32
	addw	a1, a1, s3
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a6
	subw	a0, s3, a1
	bne	a0, zero, .LBB1_344.1316
	j	.LBB1_346.1324
.LBB1_344.1316:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a6
	subw	a0, a7, a1
	bne	a0, zero, .LBB1_345.1319
	j	.LBB1_346.1324
.LBB1_345.1319:
	addi	a0, s1, 0
	.word	0x20a94533	# sh2add	a0, s2, a0
	lw	a0, 0(a0)
	addw	a5, a5, a0
.LBB1_346.1324:
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
	j	.LBB1_342.1307
.LBB1_347.1329:
	mv	s2, a3
	mv	a1, a2
	bne	a5, zero, .LBB1_348.1331
	j	.LBB1_367.1406
.LBB1_348.1331:
	mv	a1, a2
	mv	a7, s2
	mv	s9, a1
	li	s5, 0
	li	a2, 0
	bne	s2, zero, .LBB1_349.1335
	j	.LBB1_367.1406
.LBB1_349.1335:
	li	a0, 16
	li	s3, 0
	li	a6, 0
	blt	s5, a0, .LBB1_350.1341
	j	.LBB1_356.1360
.LBB1_350.1341:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a5, a0, 32
	addw	a5, a5, s9
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a6
	subw	s3, s9, a5
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
	bne	s3, zero, .LBB1_351.1349
	j	.LBB1_353.1352
.LBB1_351.1349:
	beq	a5, zero, .LBB1_352.1351
	j	.LBB1_355.1355
.LBB1_352.1351:
	mv	a2, a0
	j	.LBB1_355.1355
.LBB1_353.1352:
	bne	a5, zero, .LBB1_354.1354
	j	.LBB1_355.1355
.LBB1_354.1354:
	mv	a2, a0
.LBB1_355.1355:
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a5, a0, 32
	addw	a5, a5, s9
	srliw	a0, a5, 31
	addw	s9, a5, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a5, a0, 32
	addw	a5, a5, a7
	srliw	a0, a5, 31
	addw	a7, a5, a0
	addiw	s5, s5, 1
	j	.LBB1_349.1335
.LBB1_356.1360:
	li	a0, 16
	blt	s3, a0, .LBB1_357.1366
	j	.LBB1_361.1382
.LBB1_357.1366:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a5, a0, 32
	addw	a5, a5, a1
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, a1, a5
	bne	a0, zero, .LBB1_358.1369
	j	.LBB1_360.1377
.LBB1_358.1369:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a5, a0, 32
	addw	a5, a5, s2
	srliw	a0, a5, 31
	addw	a5, a5, a0
	mulw	a5, a5, a7
	subw	a0, s2, a5
	bne	a0, zero, .LBB1_359.1372
	j	.LBB1_360.1377
.LBB1_359.1372:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	a6, a6, a0
.LBB1_360.1377:
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
	j	.LBB1_356.1360
.LBB1_361.1382:
	mulw	a7, a6, s10
	li	a6, 65535
	li	s3, 0
	li	s2, 0
.LBB1_362.1384:
	li	a0, 16
	blt	s3, a0, .LBB1_363.1390
	j	.LBB1_348.1331
.LBB1_363.1390:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a5
	subw	a0, a7, a1
	bne	a0, zero, .LBB1_364.1393
	j	.LBB1_366.1401
.LBB1_364.1393:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a5
	subw	a0, a6, a1
	bne	a0, zero, .LBB1_365.1396
	j	.LBB1_366.1401
.LBB1_365.1396:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	s2, s2, a0
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
	addiw	s3, s3, 1
	j	.LBB1_362.1384
.LBB1_367.1406:
	mv	a2, a1
	mv	s2, a3
	mv	a1, a3
.LBB1_368.1408:
	mv	a6, a1
	mv	a7, s2
	mv	s9, a6
	li	s5, 0
	li	a1, 0
	bne	s2, zero, .LBB1_369.1412
	j	.LBB1_387.1483
.LBB1_369.1412:
	li	a0, 16
	li	s3, 0
	li	a5, 0
	blt	s5, a0, .LBB1_370.1418
	j	.LBB1_376.1437
.LBB1_370.1418:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a3, a0, 32
	addw	a3, a3, s9
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a5
	subw	s3, s9, a3
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a3, a0, 32
	addw	a3, a3, a7
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a5
	subw	a3, a7, a3
	addi	a0, s1, 0
	.word	0x20aac533	# sh2add	a0, s5, a0
	lw	a0, 0(a0)
	addw	a0, a1, a0
	bne	s3, zero, .LBB1_371.1426
	j	.LBB1_373.1429
.LBB1_371.1426:
	beq	a3, zero, .LBB1_372.1428
	j	.LBB1_375.1432
.LBB1_372.1428:
	mv	a1, a0
	j	.LBB1_375.1432
.LBB1_373.1429:
	bne	a3, zero, .LBB1_374.1431
	j	.LBB1_375.1432
.LBB1_374.1431:
	mv	a1, a0
.LBB1_375.1432:
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a3, a0, 32
	addw	a3, a3, s9
	srliw	a0, a3, 31
	addw	s9, a3, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a3, a0, 32
	addw	a3, a3, a7
	srliw	a0, a3, 31
	addw	a7, a3, a0
	addiw	s5, s5, 1
	j	.LBB1_369.1412
.LBB1_376.1437:
	li	a0, 16
	blt	s3, a0, .LBB1_377.1443
	j	.LBB1_381.1459
.LBB1_377.1443:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a3, a0, 32
	addw	a3, a3, a6
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a7
	subw	a0, a6, a3
	bne	a0, zero, .LBB1_378.1446
	j	.LBB1_380.1454
.LBB1_378.1446:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a3, a0, 32
	addw	a3, a3, s2
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a7
	subw	a0, s2, a3
	bne	a0, zero, .LBB1_379.1449
	j	.LBB1_380.1454
.LBB1_379.1449:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	a5, a5, a0
.LBB1_380.1454:
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a3, a0, 32
	addw	a3, a3, a6
	srliw	a0, a3, 31
	addw	a6, a3, a0
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a3, a0, 32
	addw	a3, a3, s2
	srliw	a0, a3, 31
	addw	s2, a3, a0
	addiw	s3, s3, 1
	j	.LBB1_376.1437
.LBB1_381.1459:
	mulw	a7, a5, s10
	li	a6, 65535
	li	s3, 0
	li	s2, 0
.LBB1_382.1461:
	li	a0, 16
	blt	s3, a0, .LBB1_383.1467
	j	.LBB1_368.1408
.LBB1_383.1467:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a3, a0, 32
	addw	a3, a3, a7
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a5
	subw	a0, a7, a3
	bne	a0, zero, .LBB1_384.1470
	j	.LBB1_386.1478
.LBB1_384.1470:
	li	a5, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a3, a0, 32
	addw	a3, a3, a6
	srliw	a0, a3, 31
	addw	a3, a3, a0
	mulw	a3, a3, a5
	subw	a0, a6, a3
	bne	a0, zero, .LBB1_385.1473
	j	.LBB1_386.1478
.LBB1_385.1473:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	s2, s2, a0
.LBB1_386.1478:
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
	j	.LBB1_382.1461
.LBB1_387.1483:
	li	a0, 32767
	divw	a1, s4, s10
	blt	a0, s4, .LBB1_388.1486
	j	.LBB1_389.1489
.LBB1_388.1486:
	li	a0, 65536
	addw	a0, a1, a0
	subw	a1, a0, s7
.LBB1_389.1489:
	j	.LBB1_341.1302
.LBB1_390.1491:
	mv	a5, a0
	mv	a0, a4
	mv	s5, a4
	li	a1, 0
.LBB1_391.1493:
	mv	a3, s5
	mv	s4, a0
	mv	s2, s4
	li	a7, 1
	li	s3, 0
	li	a4, 0
	bne	s4, zero, .LBB1_392.1498
	j	.LBB1_440.1682
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
	addw	a4, a4, a0
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
	mv	s2, a3
	mv	a2, a1
	bne	a4, zero, .LBB1_398.1522
	j	.LBB1_417.1597
.LBB1_398.1522:
	mv	a1, a2
	mv	a7, s2
	mv	s9, a1
	li	s5, 0
	li	a2, 0
	bne	s2, zero, .LBB1_399.1526
	j	.LBB1_417.1597
.LBB1_399.1526:
	li	a0, 16
	li	s3, 0
	li	a6, 0
	blt	s5, a0, .LBB1_400.1532
	j	.LBB1_406.1551
.LBB1_400.1532:
	li	a6, 2
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a4, a0, 32
	addw	a4, a4, s9
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a6
	subw	s3, s9, a4
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
	.word	0x20aac533	# sh2add	a0, s5, a0
	lw	a0, 0(a0)
	addw	a0, a2, a0
	bne	s3, zero, .LBB1_401.1540
	j	.LBB1_403.1543
.LBB1_401.1540:
	beq	a4, zero, .LBB1_402.1542
	j	.LBB1_405.1546
.LBB1_402.1542:
	mv	a2, a0
	j	.LBB1_405.1546
.LBB1_403.1543:
	bne	a4, zero, .LBB1_404.1545
	j	.LBB1_405.1546
.LBB1_404.1545:
	mv	a2, a0
.LBB1_405.1546:
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a4, a0, 32
	addw	a4, a4, s9
	srliw	a0, a4, 31
	addw	s9, a4, a0
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a4, a0, 32
	addw	a4, a4, a7
	srliw	a0, a4, 31
	addw	a7, a4, a0
	addiw	s5, s5, 1
	j	.LBB1_399.1526
.LBB1_406.1551:
	li	a0, 16
	blt	s3, a0, .LBB1_407.1557
	j	.LBB1_411.1573
.LBB1_407.1557:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a4, a0, 32
	addw	a4, a4, a1
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a7
	subw	a0, a1, a4
	bne	a0, zero, .LBB1_408.1560
	j	.LBB1_410.1568
.LBB1_408.1560:
	li	a7, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a4, a0, 32
	addw	a4, a4, s2
	srliw	a0, a4, 31
	addw	a4, a4, a0
	mulw	a4, a4, a7
	subw	a0, s2, a4
	bne	a0, zero, .LBB1_409.1563
	j	.LBB1_410.1568
.LBB1_409.1563:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	a6, a6, a0
.LBB1_410.1568:
	li	a0, -2147483647
	mul	a0, a0, a1
	srai	a4, a0, 32
	addw	a4, a4, a1
	srliw	a0, a4, 31
	addw	a1, a4, a0
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a4, a0, 32
	addw	a4, a4, s2
	srliw	a0, a4, 31
	addw	s2, a4, a0
	addiw	s3, s3, 1
	j	.LBB1_406.1551
.LBB1_411.1573:
	mulw	a7, a6, s10
	li	a6, 65535
	li	s3, 0
	li	s2, 0
.LBB1_412.1575:
	li	a0, 16
	blt	s3, a0, .LBB1_413.1581
	j	.LBB1_398.1522
.LBB1_413.1581:
	li	a4, 2
	li	a0, -2147483647
	mul	a0, a0, a7
	srai	a1, a0, 32
	addw	a1, a1, a7
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a4
	subw	a0, a7, a1
	bne	a0, zero, .LBB1_414.1584
	j	.LBB1_416.1592
.LBB1_414.1584:
	li	a4, 2
	li	a0, -2147483647
	mul	a0, a0, a6
	srai	a1, a0, 32
	addw	a1, a1, a6
	srliw	a0, a1, 31
	addw	a1, a1, a0
	mulw	a1, a1, a4
	subw	a0, a6, a1
	bne	a0, zero, .LBB1_415.1587
	j	.LBB1_416.1592
.LBB1_415.1587:
	addi	a0, s1, 0
	.word	0x20a9c533	# sh2add	a0, s3, a0
	lw	a0, 0(a0)
	addw	s2, s2, a0
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
	addiw	s3, s3, 1
	j	.LBB1_412.1575
.LBB1_417.1597:
	mv	s2, a3
	mv	s5, a3
.LBB1_418.1599:
	mv	a4, s2
	mv	s9, s5
	li	a7, 0
	li	s3, 0
	bne	s2, zero, .LBB1_419.1603
	j	.LBB1_437.1674
.LBB1_419.1603:
	li	a0, 16
	li	a6, 0
	li	a3, 0
	blt	a7, a0, .LBB1_420.1609
	j	.LBB1_426.1628
.LBB1_420.1609:
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, s9
	srai	a2, a0, 32
	addw	a2, a2, s9
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a6, s9, a2
	li	a3, 2
	li	a0, -2147483647
	mul	a0, a0, a4
	srai	a2, a0, 32
	addw	a2, a2, a4
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a2, a4, a2
	addi	a0, s1, 0
	.word	0x20a8c533	# sh2add	a0, a7, a0
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
	mul	a0, a0, s9
	srai	a2, a0, 32
	addw	a2, a2, s9
	srliw	a0, a2, 31
	addw	s9, a2, a0
	li	a0, -2147483647
	mul	a0, a0, a4
	srai	a2, a0, 32
	addw	a2, a2, a4
	srliw	a0, a2, 31
	addw	a4, a2, a0
	addiw	a7, a7, 1
	j	.LBB1_419.1603
.LBB1_426.1628:
	li	a0, 16
	blt	a6, a0, .LBB1_427.1634
	j	.LBB1_431.1650
.LBB1_427.1634:
	li	a4, 2
	li	a0, -2147483647
	mul	a0, a0, s5
	srai	a2, a0, 32
	addw	a2, a2, s5
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a4
	subw	a0, s5, a2
	bne	a0, zero, .LBB1_428.1637
	j	.LBB1_430.1645
.LBB1_428.1637:
	li	a4, 2
	li	a0, -2147483647
	mul	a0, a0, s2
	srai	a2, a0, 32
	addw	a2, a2, s2
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a4
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
	j	.LBB1_426.1628
.LBB1_431.1650:
	mulw	a6, a3, s10
	li	a4, 65535
	li	a7, 0
	li	s2, 0
.LBB1_432.1652:
	li	a0, 16
	mv	s5, s3
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
	mul	a0, a0, a4
	srai	a2, a0, 32
	addw	a2, a2, a4
	srliw	a0, a2, 31
	addw	a2, a2, a0
	mulw	a2, a2, a3
	subw	a0, a4, a2
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
	mul	a0, a0, a4
	srai	a2, a0, 32
	addw	a2, a2, a4
	srliw	a0, a2, 31
	addw	a4, a2, a0
	addiw	a7, a7, 1
	j	.LBB1_432.1652
.LBB1_437.1674:
	li	a2, 32767
	divw	a0, s4, s10
	blt	a2, s4, .LBB1_438.1677
	j	.LBB1_439.1680
.LBB1_438.1677:
	li	a2, 65536
	addw	a0, a0, a2
	subw	a0, a0, s7
.LBB1_439.1680:
	j	.LBB1_391.1493
.LBB1_440.1682:
	li	a0, 32767
	divw	a2, s8, s10
	blt	a0, s8, .LBB1_441.1685
	j	.LBB1_442.1688
.LBB1_441.1685:
	li	a0, 65536
	addw	a0, a2, a0
	subw	a2, a0, s7
.LBB1_442.1688:
	mv	a6, a5
	j	.LBB1_334.1273
.LBB1_443.1690:
	addi	a0, s1, 0
	.word	0x20ab4533	# sh2add	a0, s6, a0
	lw	a1, 0(a0)
	li	a0, 1
	bne	a1, a6, .LBB1_445.1696
.LBB1_444.1694:
	addiw	a1, s6, 1
	j	.LBB1_333.1270
.LBB1_445.1696:
	ld	s1, 72(sp)
	ld	s2, 64(sp)
	ld	s3, 56(sp)
	ld	s4, 48(sp)
	ld	s5, 40(sp)
	ld	s6, 32(sp)
	ld	s7, 24(sp)
	ld	s8, 16(sp)
	ld	s9, 8(sp)
	ld	s10, 0(sp)
	ld	s0, 80(sp)
	ld	ra, 88(sp)
	addi	sp, sp, 96
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

