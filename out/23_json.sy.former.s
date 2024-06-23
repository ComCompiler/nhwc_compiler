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
	.globl	detect_item
	.type	detect_item, @function
detect_item:
	addi	sp, sp, -144
	sd	ra, 136(sp)
	sd	s0, 128(sp)
	addi	s0, sp, 144
	sd	s1, 120(sp)
	sd	s2, 112(sp)
	sd	s3, 104(sp)
	sd	s4, 96(sp)
	sd	s5, 88(sp)
	sd	s6, 80(sp)
	sd	s7, 72(sp)
	sd	s8, 64(sp)
.Ldetect_item$ENTRY:
	mv	s8, a0
	mv	s7, a1
	mv	s5, a2
	la	s1, __const_init.mNull.20
	la	s2, __const_init.mFalse.19
	la	s3, __const_init.mTrue.18
	la	s4, pos
	lw	a0, 0(s4)
	li	a1, 0
	bge	a0, s5, .LBB1_110.352
.LBB1_2.9:
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	lw	a1, 0(s4)
	.word	0x2175cb33	# sh2add	s6, a1, s7
	lw	a0, 0(s6)
	beq	s8, zero, .LBB1_3.14
	j	.LBB1_21.52
.LBB1_3.14:
	li	a1, 123
	beq	a0, a1, .LBB1_4.16
	j	.LBB1_5.18
.LBB1_4.16:
	li	a0, 4
	mv	a1, s7
	mv	a2, s5
	tail	.Ldetect_item$ENTRY
.LBB1_5.18:
	li	a1, 91
	beq	a0, a1, .LBB1_6.20
	j	.LBB1_7.22
.LBB1_6.20:
	li	a0, 3
	mv	a1, s7
	mv	a2, s5
	tail	.Ldetect_item$ENTRY
.LBB1_7.22:
	li	a1, 34
	beq	a0, a1, .LBB1_8.24
	j	.LBB1_9.26
.LBB1_8.24:
	li	a0, 2
	mv	a1, s7
	mv	a2, s5
	tail	.Ldetect_item$ENTRY
.LBB1_9.26:
	call	is_number
	li	a1, 1
	beq	a0, a1, .LBB1_10.29
	j	.LBB1_11.31
.LBB1_10.29:
	li	a0, 1
	mv	a1, s7
	mv	a2, s5
	tail	.Ldetect_item$ENTRY
.LBB1_11.31:
	lw	a2, 0(s6)
	li	a0, 43
	beq	a2, a0, .LBB1_12.34
	j	.LBB1_13.36
.LBB1_12.34:
	li	a0, 1
	mv	a1, s7
	mv	a2, s5
	tail	.Ldetect_item$ENTRY
.LBB1_13.36:
	li	a0, 45
	beq	a2, a0, .LBB1_14.38
	j	.LBB1_15.40
.LBB1_14.38:
	li	a0, 1
	mv	a1, s7
	mv	a2, s5
	tail	.Ldetect_item$ENTRY
.LBB1_15.40:
	li	a0, 116
	beq	a2, a0, .LBB1_16.42
	j	.LBB1_17.44
.LBB1_16.42:
	li	a0, 5
	mv	a1, s7
	mv	a2, s5
	tail	.Ldetect_item$ENTRY
.LBB1_17.44:
	li	a0, 102
	beq	a2, a0, .LBB1_18.46
	j	.LBB1_19.48
.LBB1_18.46:
	li	a0, 6
	mv	a1, s7
	mv	a2, s5
	tail	.Ldetect_item$ENTRY
.LBB1_19.48:
	li	a0, 110
	li	a1, 0
	beq	a2, a0, .LBB1_20.50
	j	.LBB1_110.352
.LBB1_20.50:
	li	a0, 7
	mv	a1, s7
	mv	a2, s5
	tail	.Ldetect_item$ENTRY
.LBB1_21.52:
	addiw	a2, a1, 1
	li	a1, 1
	beq	s8, a1, .LBB1_22.55
	j	.LBB1_48.129
.LBB1_22.55:
	li	a1, 43
	beq	a0, a1, .LBB1_23.57
	j	.LBB1_24.58
.LBB1_23.57:
	sw	a2, 0(s4)
	j	.LBB1_26.61
.LBB1_24.58:
	li	a1, 45
	beq	a0, a1, .LBB1_25.60
	j	.LBB1_26.61
.LBB1_25.60:
	sw	a2, 0(s4)
.LBB1_26.61:
	lw	a0, 0(s4)
	li	a1, 0
	bge	a0, s5, .LBB1_110.352
.LBB1_27.64:
	.word	0x21754533	# sh2add	a0, a0, s7
	lw	a0, 0(a0)
	call	is_number
	li	a1, 0
	beq	a0, zero, .LBB1_110.352
.LBB1_28.69:
	lw	s3, 0(s4)
	addiw	s2, s3, 1
	.word	0x2179c4b3	# sh2add	s1, s3, s7
	blt	s3, s5, .LBB1_29.74
	j	.LBB1_31.79
.LBB1_29.74:
	lw	a0, 0(s1)
	call	is_number
	li	a1, 1
	bne	a0, a1, .LBB1_31.79
.LBB1_30.78:
	sw	s2, 0(s4)
	j	.LBB1_28.69
.LBB1_31.79:
	lw	a1, 0(s1)
	blt	s3, s5, .LBB1_32.81
	j	.LBB1_37.94
.LBB1_32.81:
	li	a0, 46
	beq	a1, a0, .LBB1_33.83
	j	.LBB1_37.94
.LBB1_33.83:
	sw	s2, 0(s4)
.LBB1_34.84:
	lw	s1, 0(s4)
	blt	s1, s5, .LBB1_35.87
	j	.LBB1_37.94
.LBB1_35.87:
	.word	0x2174c533	# sh2add	a0, s1, s7
	lw	a0, 0(a0)
	call	is_number
	li	a1, 1
	bne	a0, a1, .LBB1_37.94
.LBB1_36.92:
	addiw	a0, s1, 1
	sw	a0, 0(s4)
	j	.LBB1_34.84
.LBB1_37.94:
	lw	a3, 0(s4)
	.word	0x2176c533	# sh2add	a0, a3, s7
	lw	a2, 0(a0)
	li	a1, 1
	blt	a3, s5, .LBB1_38.99
	j	.LBB1_110.352
.LBB1_38.99:
	li	a0, 101
	li	a1, 1
	beq	a2, a0, .LBB1_39.101
	j	.LBB1_110.352
.LBB1_39.101:
	addiw	a0, a3, 1
	sw	a0, 0(s4)
	blt	a0, s5, .LBB1_40.104
	j	.LBB1_42.110
.LBB1_40.104:
	.word	0x21754533	# sh2add	a0, a0, s7
	lw	a1, 0(a0)
	li	a0, 43
	beq	a1, a0, .LBB1_41.108
	j	.LBB1_42.110
.LBB1_41.108:
	addiw	a0, a3, 2
	sw	a0, 0(s4)
.LBB1_42.110:
	lw	a2, 0(s4)
	.word	0x21764533	# sh2add	a0, a2, s7
	lw	a1, 0(a0)
	blt	a2, s5, .LBB1_43.115
	j	.LBB1_45.119
.LBB1_43.115:
	li	a0, 45
	beq	a1, a0, .LBB1_44.117
	j	.LBB1_45.119
.LBB1_44.117:
	addiw	a0, a2, 1
	sw	a0, 0(s4)
.LBB1_45.119:
	lw	s1, 0(s4)
	li	a1, 1
	blt	s1, s5, .LBB1_46.122
	j	.LBB1_110.352
.LBB1_46.122:
	.word	0x2174c533	# sh2add	a0, s1, s7
	lw	a0, 0(a0)
	call	is_number
	li	a2, 1
	li	a1, 1
	bne	a0, a2, .LBB1_110.352
.LBB1_47.127:
	addiw	a0, s1, 1
	sw	a0, 0(s4)
	j	.LBB1_45.119
.LBB1_48.129:
	li	a0, 2
	beq	s8, a0, .LBB1_49.131
	j	.LBB1_58.150
.LBB1_49.131:
	sw	a2, 0(s4)
.LBB1_50.132:
	lw	a4, 0(s4)
	addiw	a3, a4, 1
	.word	0x21774533	# sh2add	a0, a4, s7
	lw	a2, 0(a0)
	blt	a4, s5, .LBB1_51.138
	j	.LBB1_55.145
.LBB1_51.138:
	li	a0, 34
	beq	a2, a0, .LBB1_55.145
.LBB1_52.140:
	li	a0, 92
	beq	a2, a0, .LBB1_53.142
	j	.LBB1_54.144
.LBB1_53.142:
	addiw	a0, a4, 2
	sw	a0, 0(s4)
	j	.LBB1_50.132
.LBB1_54.144:
	sw	a3, 0(s4)
	j	.LBB1_50.132
.LBB1_55.145:
	li	a1, 0
	bge	a4, s5, .LBB1_110.352
.LBB1_56.147:
	li	a0, 34
	li	a1, 0
	bne	a2, a0, .LBB1_110.352
.LBB1_57.149:
	sw	a3, 0(s4)
	li	a1, 1
	j	.LBB1_110.352
.LBB1_58.150:
	li	a0, 3
	beq	s8, a0, .LBB1_59.152
	j	.LBB1_70.184
.LBB1_59.152:
	sw	a2, 0(s4)
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	lw	a2, 0(s4)
	blt	a2, s5, .LBB1_60.155
	j	.LBB1_62.161
.LBB1_60.155:
	.word	0x21764533	# sh2add	a0, a2, s7
	lw	a1, 0(a0)
	li	a0, 93
	beq	a1, a0, .LBB1_61.159
	j	.LBB1_62.161
.LBB1_61.159:
	addiw	a0, a2, 1
	sw	a0, 0(s4)
	li	a1, 1
	j	.LBB1_110.352
.LBB1_62.161:
	li	a0, 0
	mv	a1, s7
	mv	a2, s5
	call	detect_item
	li	a1, 0
	beq	a0, zero, .LBB1_110.352
.LBB1_63.164:
	mv	a0, s7
	mv	a1, s5
	call	skip_space
.LBB1_64.165:
	lw	a2, 0(s4)
	.word	0x21764533	# sh2add	a0, a2, s7
	lw	a1, 0(a0)
	li	a0, 44
	beq	a1, a0, .LBB1_65.170
	j	.LBB1_67.175
.LBB1_65.170:
	addiw	a0, a2, 1
	sw	a0, 0(s4)
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	li	a0, 0
	mv	a1, s7
	mv	a2, s5
	call	detect_item
	li	a1, 0
	beq	a0, zero, .LBB1_110.352
.LBB1_66.174:
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	j	.LBB1_64.165
.LBB1_67.175:
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	lw	a3, 0(s4)
	.word	0x2176c533	# sh2add	a0, a3, s7
	lw	a2, 0(a0)
	li	a1, 0
	bge	a3, s5, .LBB1_110.352
.LBB1_68.180:
	li	a0, 93
	li	a1, 0
	bne	a2, a0, .LBB1_110.352
.LBB1_69.182:
	addiw	a0, a3, 1
	sw	a0, 0(s4)
	li	a1, 1
	j	.LBB1_110.352
.LBB1_70.184:
	li	a0, 4
	beq	s8, a0, .LBB1_71.186
	j	.LBB1_88.240
.LBB1_71.186:
	sw	a2, 0(s4)
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	lw	a2, 0(s4)
	blt	a2, s5, .LBB1_72.189
	j	.LBB1_74.195
.LBB1_72.189:
	.word	0x21764533	# sh2add	a0, a2, s7
	lw	a1, 0(a0)
	li	a0, 125
	beq	a1, a0, .LBB1_73.193
	j	.LBB1_74.195
.LBB1_73.193:
	addiw	a0, a2, 1
	sw	a0, 0(s4)
	li	a1, 1
	j	.LBB1_110.352
.LBB1_74.195:
	li	a0, 2
	mv	a1, s7
	mv	a2, s5
	call	detect_item
	li	a1, 0
	beq	a0, zero, .LBB1_110.352
.LBB1_75.198:
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	lw	a3, 0(s4)
	.word	0x2176c533	# sh2add	a0, a3, s7
	lw	a2, 0(a0)
	li	a1, 0
	bge	a3, s5, .LBB1_110.352
.LBB1_76.203:
	li	a0, 58
	li	a1, 0
	bne	a2, a0, .LBB1_110.352
.LBB1_77.205:
	addiw	a0, a3, 1
	sw	a0, 0(s4)
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	li	a0, 0
	mv	a1, s7
	mv	a2, s5
	call	detect_item
	li	a1, 0
	beq	a0, zero, .LBB1_110.352
.LBB1_78.209:
	mv	a0, s7
	mv	a1, s5
	call	skip_space
.LBB1_79.210:
	lw	a2, 0(s4)
	.word	0x21764533	# sh2add	a0, a2, s7
	lw	a1, 0(a0)
	li	a0, 44
	beq	a1, a0, .LBB1_80.215
	j	.LBB1_85.231
.LBB1_80.215:
	addiw	a0, a2, 1
	sw	a0, 0(s4)
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	li	a0, 2
	mv	a1, s7
	mv	a2, s5
	call	detect_item
	li	a1, 0
	beq	a0, zero, .LBB1_110.352
.LBB1_81.219:
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	lw	a3, 0(s4)
	.word	0x2176c533	# sh2add	a0, a3, s7
	lw	a2, 0(a0)
	li	a1, 0
	bge	a3, s5, .LBB1_110.352
.LBB1_82.224:
	li	a0, 58
	li	a1, 0
	bne	a2, a0, .LBB1_110.352
.LBB1_83.226:
	addiw	a0, a3, 1
	sw	a0, 0(s4)
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	li	a0, 0
	mv	a1, s7
	mv	a2, s5
	call	detect_item
	li	a1, 0
	beq	a0, zero, .LBB1_110.352
.LBB1_84.230:
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	j	.LBB1_79.210
.LBB1_85.231:
	mv	a0, s7
	mv	a1, s5
	call	skip_space
	lw	a3, 0(s4)
	.word	0x2176c533	# sh2add	a0, a3, s7
	lw	a2, 0(a0)
	li	a1, 0
	bge	a3, s5, .LBB1_110.352
.LBB1_86.236:
	li	a0, 125
	li	a1, 0
	bne	a2, a0, .LBB1_110.352
.LBB1_87.238:
	addiw	a0, a3, 1
	sw	a0, 0(s4)
	li	a1, 1
	j	.LBB1_110.352
.LBB1_88.240:
	li	a0, 5
	beq	s8, a0, .LBB1_89.242
	j	.LBB1_95.275
.LBB1_89.242:
	addi	a1, s3, 0
	addi	a0, sp, 0
	li	a2, 16
	call	memcpy
	lw	s3, 12(sp)
	lw	s2, 0(s4)
	addiw	s1, s2, 3
	.word	0x2174c533	# sh2add	a0, s1, s7
	lw	a7, 0(a0)
	lw	a6, 8(sp)
	addiw	a0, s2, 2
	.word	0x21754533	# sh2add	a0, a0, s7
	lw	a5, 0(a0)
	lw	a4, 4(sp)
	addiw	a0, s2, 1
	.word	0x21754533	# sh2add	a0, a0, s7
	lw	a3, 0(a0)
	lw	a2, 0(sp)
	.word	0x21794533	# sh2add	a0, s2, s7
	lw	a0, 0(a0)
	li	a1, 0
	bge	s1, s5, .LBB1_110.352
.LBB1_90.265:
	li	a1, 0
	bne	a0, a2, .LBB1_110.352
.LBB1_91.267:
	li	a1, 0
	bne	a3, a4, .LBB1_110.352
.LBB1_92.269:
	li	a1, 0
	bne	a5, a6, .LBB1_110.352
.LBB1_93.271:
	li	a1, 0
	bne	a7, s3, .LBB1_110.352
.LBB1_94.273:
	addiw	a0, s2, 4
	sw	a0, 0(s4)
	li	a1, 1
	j	.LBB1_110.352
.LBB1_95.275:
	li	a0, 6
	beq	s8, a0, .LBB1_96.277
	j	.LBB1_103.317
.LBB1_96.277:
	addi	a1, s2, 0
	addi	a0, sp, 16
	li	a2, 20
	call	memcpy
	lw	s8, 32(sp)
	lw	s6, 0(s4)
	addiw	s3, s6, 4
	.word	0x2179c533	# sh2add	a0, s3, s7
	lw	s2, 0(a0)
	lw	s1, 28(sp)
	addiw	a0, s6, 3
	.word	0x21754533	# sh2add	a0, a0, s7
	lw	a7, 0(a0)
	lw	a6, 24(sp)
	addiw	a0, s6, 2
	.word	0x21754533	# sh2add	a0, a0, s7
	lw	a5, 0(a0)
	lw	a4, 20(sp)
	addiw	a0, s6, 1
	.word	0x21754533	# sh2add	a0, a0, s7
	lw	a3, 0(a0)
	lw	a2, 16(sp)
	.word	0x217b4533	# sh2add	a0, s6, s7
	lw	a0, 0(a0)
	li	a1, 0
	bge	s3, s5, .LBB1_110.352
.LBB1_97.305:
	li	a1, 0
	bne	a0, a2, .LBB1_110.352
.LBB1_98.307:
	li	a1, 0
	bne	a3, a4, .LBB1_110.352
.LBB1_99.309:
	li	a1, 0
	bne	a5, a6, .LBB1_110.352
.LBB1_100.311:
	li	a1, 0
	bne	a7, s1, .LBB1_110.352
.LBB1_101.313:
	li	a1, 0
	bne	s2, s8, .LBB1_110.352
.LBB1_102.315:
	addiw	a0, s6, 5
	sw	a0, 0(s4)
	li	a1, 1
	j	.LBB1_110.352
.LBB1_103.317:
	li	a0, 7
	li	a1, 0
	beq	s8, a0, .LBB1_104.319
	j	.LBB1_110.352
.LBB1_104.319:
	addi	a1, s1, 0
	addi	a0, sp, 36
	li	a2, 16
	call	memcpy
	lw	s3, 48(sp)
	lw	s2, 0(s4)
	addiw	s1, s2, 3
	.word	0x2174c533	# sh2add	a0, s1, s7
	lw	a7, 0(a0)
	lw	a6, 44(sp)
	addiw	a0, s2, 2
	.word	0x21754533	# sh2add	a0, a0, s7
	lw	a5, 0(a0)
	lw	a4, 40(sp)
	addiw	a0, s2, 1
	.word	0x21754533	# sh2add	a0, a0, s7
	lw	a3, 0(a0)
	lw	a2, 36(sp)
	.word	0x21794533	# sh2add	a0, s2, s7
	lw	a0, 0(a0)
	li	a1, 0
	bge	s1, s5, .LBB1_110.352
.LBB1_105.342:
	li	a1, 0
	bne	a0, a2, .LBB1_110.352
.LBB1_106.344:
	li	a1, 0
	bne	a3, a4, .LBB1_110.352
.LBB1_107.346:
	li	a1, 0
	bne	a5, a6, .LBB1_110.352
.LBB1_108.348:
	li	a1, 0
	bne	a7, s3, .LBB1_110.352
.LBB1_109.350:
	addiw	a0, s2, 4
	sw	a0, 0(s4)
	li	a1, 1
.LBB1_110.352:
	mv	a0, a1
	ld	s1, 120(sp)
	ld	s2, 112(sp)
	ld	s3, 104(sp)
	ld	s4, 96(sp)
	ld	s5, 88(sp)
	ld	s6, 80(sp)
	ld	s7, 72(sp)
	ld	s8, 64(sp)
	ld	s0, 128(sp)
	ld	ra, 136(sp)
	addi	sp, sp, 144
	ret

	.section	.text
	.align	4
	.globl	is_number
	.type	is_number, @function
is_number:
.Lis_number$ENTRY:
	li	a2, 48
	li	a1, 0
	bge	a0, a2, .LBB2_2.3
	j	.LBB2_4.6
.LBB2_2.3:
	li	a2, 57
	li	a1, 1
	bge	a2, a0, .LBB2_4.6
.LBB2_3.5:
	li	a1, 0
.LBB2_4.6:
	mv	a0, a1
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
	la	s1, buffer
	call	getch
	li	s3, 0
.LBB3_2.2:
	li	a1, 35
	bne	a0, a1, .LBB3_3.6
	j	.LBB3_4.10
.LBB3_3.6:
	addi	a1, s1, 0
	.word	0x20b9c5b3	# sh2add	a1, s3, a1
	sw	a0, 0(a1)
	call	getch
	addiw	s3, s3, 1
	j	.LBB3_2.2
.LBB3_4.10:
	addi	s1, s1, 0
	mv	a0, s1
	mv	a1, s3
	call	skip_space
	li	a0, 0
	mv	a1, s1
	mv	a2, s3
	call	detect_item
	mv	s2, a0
	mv	a0, s1
	mv	a1, s3
	call	skip_space
	bne	s2, zero, .LBB3_5.14
	j	.LBB3_6.15
.LBB3_5.14:
	li	a0, 111
	call	putch
	li	a0, 107
	call	putch
	li	a0, 10
	call	putch
	li	a0, 0
	j	.LBB3_7.16
.LBB3_6.15:
	li	a0, 110
	call	putch
	li	a0, 111
	call	putch
	li	a0, 116
	call	putch
	li	a0, 32
	call	putch
	li	a0, 111
	call	putch
	li	a0, 107
	call	putch
	li	a0, 10
	call	putch
	li	a0, 1
.LBB3_7.16:
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.section	.text
	.align	4
	.globl	skip_space
	.type	skip_space, @function
skip_space:
.Lskip_space$ENTRY:
	la	a3, pos
.LBB4_2.3:
	lw	a4, 0(a3)
	bge	a4, a1, .LBB4_11.21
.LBB4_3.6:
	.word	0x20a74633	# sh2add	a2, a4, a0
	lw	a5, 0(a2)
	li	a2, 32
	addiw	a4, a4, 1
	beq	a5, a2, .LBB4_4.11
	j	.LBB4_5.12
.LBB4_4.11:
	sw	a4, 0(a3)
	j	.LBB4_2.3
.LBB4_5.12:
	li	a2, 9
	beq	a5, a2, .LBB4_6.14
	j	.LBB4_7.15
.LBB4_6.14:
	sw	a4, 0(a3)
	j	.LBB4_2.3
.LBB4_7.15:
	li	a2, 10
	beq	a5, a2, .LBB4_8.17
	j	.LBB4_9.18
.LBB4_8.17:
	sw	a4, 0(a3)
	j	.LBB4_2.3
.LBB4_9.18:
	li	a2, 13
	beq	a5, a2, .LBB4_10.20
	j	.LBB4_11.21
.LBB4_10.20:
	sw	a4, 0(a3)
	j	.LBB4_2.3
.LBB4_11.21:
	ret

	.section	.data
	.type	__const_init.mFalse.19, @object
__const_init.mFalse.19:
	.word	102
	.word	97
	.word	108
	.word	115
	.word	101

	.section	.data
	.type	__const_init.mNull.20, @object
__const_init.mNull.20:
	.word	110
	.word	117
	.word	108
	.word	108

	.section	.data
	.type	__const_init.mTrue.18, @object
__const_init.mTrue.18:
	.word	116
	.word	114
	.word	117
	.word	101

	.globl	buffer
	.section	.bss
	.type	buffer, @object
buffer:
	.zero	200000000

	.globl	pos
	.section	.bss
	.type	pos, @object
pos:
	.zero	4

