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
	.globl	chapop
	.type	chapop, @function
chapop:
.Lchapop$ENTRY:
	la	a0, chas
	la	a1, chat
	lw	a3, 0(a1)
	addiw	a2, a3, -1
	sw	a2, 0(a1)
	addiw	a1, a3, 0
	addi	a0, a0, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a0, 0(a0)
	ret

	.section	.text
	.align	4
	.globl	chapush
	.type	chapush, @function
chapush:
.Lchapush$ENTRY:
	la	a1, chas
	la	a2, chat
	lw	a3, 0(a2)
	addiw	a3, a3, 1
	sw	a3, 0(a2)
	addi	a1, a1, 0
	.word	0x20b6c5b3	# sh2add	a1, a3, a1
	sw	a0, 0(a1)
	ret

	.section	.text
	.align	4
	.globl	find
	.type	find, @function
find:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
.Lfind$ENTRY:
	la	s1, chat
	la	s2, get2
	la	s3, ii
	la	s4, c
	call	chapop
	sw	a0, 0(s4)
	lw	a3, 0(s3)
	addi	a1, s2, 0
	.word	0x20b6c5b3	# sh2add	a1, a3, a1
	li	a2, 32
	sw	a2, 0(a1)
	addiw	a2, a3, 1
	addi	a1, s2, 0
	.word	0x20b645b3	# sh2add	a1, a2, a1
	sw	a0, 0(a1)
	addiw	a0, a3, 2
	sw	a0, 0(s3)
	lw	a1, 0(s1)
	li	a0, 0
	beq	a1, zero, .LBB3_3.10
.LBB3_2.9:
	li	a0, 1
.LBB3_3.10:
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s4, 0(sp)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret

	.section	.text
	.align	4
	.globl	getstr
	.type	getstr, @function
getstr:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	s1, 8(sp)
	sd	s2, 0(sp)
.Lgetstr$ENTRY:
	mv	s1, a0
	call	getch
	li	s2, 0
.LBB4_2.3:
	li	a1, 13
	bne	a0, a1, .LBB4_3.7
	j	.LBB4_5.13
.LBB4_3.7:
	li	a1, 10
	bne	a0, a1, .LBB4_4.9
	j	.LBB4_5.13
.LBB4_4.9:
	.word	0x209945b3	# sh2add	a1, s2, s1
	sw	a0, 0(a1)
	call	getch
	addiw	s2, s2, 1
	j	.LBB4_2.3
.LBB4_5.13:
	mv	a0, s2
	ld	s1, 8(sp)
	ld	s2, 0(sp)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret

	.section	.text
	.align	4
	.globl	intadd
	.type	intadd, @function
intadd:
.Lintadd$ENTRY:
	la	a1, ints
	la	a2, intt
	lw	a2, 0(a2)
	addi	a1, a1, 0
	.word	0x20b645b3	# sh2add	a1, a2, a1
	lw	a3, 0(a1)
	li	a2, 10
	mulw	a2, a3, a2
	sw	a2, 0(a1)
	addw	a2, a2, a0
	sw	a2, 0(a1)
	ret

	.section	.text
	.align	4
	.globl	intpop
	.type	intpop, @function
intpop:
.Lintpop$ENTRY:
	la	a0, ints
	la	a1, intt
	lw	a3, 0(a1)
	addiw	a2, a3, -1
	sw	a2, 0(a1)
	addiw	a1, a3, 0
	addi	a0, a0, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a0, 0(a0)
	ret

	.section	.text
	.align	4
	.globl	intpush
	.type	intpush, @function
intpush:
.Lintpush$ENTRY:
	la	a1, ints
	la	a2, intt
	lw	a3, 0(a2)
	addiw	a3, a3, 1
	sw	a3, 0(a2)
	addi	a1, a1, 0
	.word	0x20b6c5b3	# sh2add	a1, a3, a1
	sw	a0, 0(a1)
	ret

	.section	.text
	.align	4
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.Lisdigit$ENTRY:
	li	a1, 48
	bge	a0, a1, .LBB8_2.3
	j	.LBB8_3.5
.LBB8_2.3:
	li	a2, 57
	li	a1, 1
	bge	a2, a0, .LBB8_4.6
.LBB8_3.5:
	li	a1, 0
.LBB8_4.6:
	mv	a0, a1
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
	addi	sp, sp, -128
	sd	ra, 120(sp)
	sd	s0, 112(sp)
	addi	s0, sp, 128
	sd	s1, 104(sp)
	sd	s2, 96(sp)
	sd	s3, 88(sp)
	sd	s4, 80(sp)
	sd	s5, 72(sp)
	sd	s6, 64(sp)
	sd	s7, 56(sp)
	sd	s8, 48(sp)
	sd	s9, 40(sp)
	sd	s10, 32(sp)
	sd	s11, 24(sp)
.Lmain$ENTRY:
	la	s1, ints
	la	s2, chas
	la	s3, c
	la	s9, get2
	la	s11, ii
	la	a0, i
	# spill i64 %7
	sd	a0, 8(sp)
	la	s7, get
	la	s4, chat
	la	a0, intt
	sw	zero, 0(a0)
	sw	zero, 0(s4)
	addi	a0, s7, 0
	call	getstr
	mv	s6, a0
.LBB9_2.3:
	# reload i64 %7
	ld	a0, 8(sp)
	lw	s8, 0(a0)
	blt	s8, s6, .LBB9_3.6
	j	.LBB9_54.134
.LBB9_3.6:
	addi	a0, s7, 0
	.word	0x20ac4533	# sh2add	a0, s8, a0
	lw	s10, 0(a0)
	mv	a0, s10
	call	isdigit
	li	a1, 1
	beq	a0, a1, .LBB9_4.11
	j	.LBB9_5.15
.LBB9_4.11:
	lw	a1, 0(s11)
	addi	a0, s9, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	sw	s10, 0(a0)
	addiw	a0, a1, 1
	sw	a0, 0(s11)
	j	.LBB9_53.132
.LBB9_5.15:
	li	a0, 40
	beq	s10, a0, .LBB9_6.17
	j	.LBB9_7.18
.LBB9_6.17:
	li	a0, 40
	call	chapush
.LBB9_7.18:
	li	a0, 94
	beq	s10, a0, .LBB9_8.20
	j	.LBB9_9.21
.LBB9_8.20:
	li	a0, 94
	call	chapush
.LBB9_9.21:
	li	a0, 41
	beq	s10, a0, .LBB9_10.23
	j	.LBB9_13.35
.LBB9_10.23:
	call	chapop
	sw	a0, 0(s3)
.LBB9_11.25:
	lw	a3, 0(s3)
	li	a0, 40
	bne	a3, a0, .LBB9_12.28
	j	.LBB9_13.35
.LBB9_12.28:
	lw	a2, 0(s11)
	addi	a0, s9, 0
	.word	0x20a64533	# sh2add	a0, a2, a0
	li	a1, 32
	sw	a1, 0(a0)
	addiw	a1, a2, 1
	addi	a0, s9, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	sw	a3, 0(a0)
	addiw	a0, a2, 2
	sw	a0, 0(s11)
	call	chapop
	sw	a0, 0(s3)
	j	.LBB9_11.25
.LBB9_13.35:
	li	a0, 43
	beq	s10, a0, .LBB9_14.37
	j	.LBB9_22.56
.LBB9_14.37:
	lw	a1, 0(s4)
	addi	a0, s2, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a1, 0(a0)
	li	a0, 43
	beq	a1, a0, .LBB9_20.52
.LBB9_15.42:
	li	a0, 45
	beq	a1, a0, .LBB9_20.52
.LBB9_16.44:
	li	a0, 42
	beq	a1, a0, .LBB9_20.52
.LBB9_17.46:
	li	a0, 47
	beq	a1, a0, .LBB9_20.52
.LBB9_18.48:
	li	a0, 37
	beq	a1, a0, .LBB9_20.52
.LBB9_19.50:
	li	a0, 94
	beq	a1, a0, .LBB9_20.52
	j	.LBB9_21.55
.LBB9_20.52:
	call	find
	beq	a0, zero, .LBB9_21.55
	j	.LBB9_14.37
.LBB9_21.55:
	li	a0, 43
	call	chapush
.LBB9_22.56:
	li	a0, 45
	beq	s10, a0, .LBB9_23.58
	j	.LBB9_31.77
.LBB9_23.58:
	lw	a1, 0(s4)
	addi	a0, s2, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a1, 0(a0)
	li	a0, 43
	beq	a1, a0, .LBB9_29.73
.LBB9_24.63:
	li	a0, 45
	beq	a1, a0, .LBB9_29.73
.LBB9_25.65:
	li	a0, 42
	beq	a1, a0, .LBB9_29.73
.LBB9_26.67:
	li	a0, 47
	beq	a1, a0, .LBB9_29.73
.LBB9_27.69:
	li	a0, 37
	beq	a1, a0, .LBB9_29.73
.LBB9_28.71:
	li	a0, 94
	beq	a1, a0, .LBB9_29.73
	j	.LBB9_30.76
.LBB9_29.73:
	call	find
	beq	a0, zero, .LBB9_30.76
	j	.LBB9_23.58
.LBB9_30.76:
	li	a0, 45
	call	chapush
.LBB9_31.77:
	li	a0, 42
	beq	s10, a0, .LBB9_32.79
	j	.LBB9_38.94
.LBB9_32.79:
	lw	a1, 0(s4)
	addi	a0, s2, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a1, 0(a0)
	li	a0, 42
	beq	a1, a0, .LBB9_36.90
.LBB9_33.84:
	li	a0, 47
	beq	a1, a0, .LBB9_36.90
.LBB9_34.86:
	li	a0, 37
	beq	a1, a0, .LBB9_36.90
.LBB9_35.88:
	li	a0, 94
	beq	a1, a0, .LBB9_36.90
	j	.LBB9_37.93
.LBB9_36.90:
	call	find
	beq	a0, zero, .LBB9_37.93
	j	.LBB9_32.79
.LBB9_37.93:
	li	a0, 42
	call	chapush
.LBB9_38.94:
	li	a0, 47
	beq	s10, a0, .LBB9_39.96
	j	.LBB9_45.111
.LBB9_39.96:
	lw	a1, 0(s4)
	addi	a0, s2, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a1, 0(a0)
	li	a0, 42
	beq	a1, a0, .LBB9_43.107
.LBB9_40.101:
	li	a0, 47
	beq	a1, a0, .LBB9_43.107
.LBB9_41.103:
	li	a0, 37
	beq	a1, a0, .LBB9_43.107
.LBB9_42.105:
	li	a0, 94
	beq	a1, a0, .LBB9_43.107
	j	.LBB9_44.110
.LBB9_43.107:
	call	find
	beq	a0, zero, .LBB9_44.110
	j	.LBB9_39.96
.LBB9_44.110:
	li	a0, 47
	call	chapush
.LBB9_45.111:
	li	a0, 37
	beq	s10, a0, .LBB9_46.113
	j	.LBB9_52.128
.LBB9_46.113:
	lw	a1, 0(s4)
	addi	a0, s2, 0
	.word	0x20a5c533	# sh2add	a0, a1, a0
	lw	a1, 0(a0)
	li	a0, 42
	beq	a1, a0, .LBB9_50.124
.LBB9_47.118:
	li	a0, 47
	beq	a1, a0, .LBB9_50.124
.LBB9_48.120:
	li	a0, 37
	beq	a1, a0, .LBB9_50.124
.LBB9_49.122:
	li	a0, 94
	beq	a1, a0, .LBB9_50.124
	j	.LBB9_51.127
.LBB9_50.124:
	call	find
	beq	a0, zero, .LBB9_51.127
	j	.LBB9_46.113
.LBB9_51.127:
	li	a0, 37
	call	chapush
.LBB9_52.128:
	lw	a2, 0(s11)
	addi	a0, s9, 0
	.word	0x20a64533	# sh2add	a0, a2, a0
	li	a1, 32
	sw	a1, 0(a0)
	addiw	a0, a2, 1
	sw	a0, 0(s11)
.LBB9_53.132:
	addiw	a1, s8, 1
	# reload i64 %7
	ld	a0, 8(sp)
	sw	a1, 0(a0)
	j	.LBB9_2.3
.LBB9_54.134:
	lw	a1, 0(s4)
	lw	s3, 0(s11)
	addi	a0, s9, 0
	.word	0x20a9c933	# sh2add	s2, s3, a0
	blt	zero, a1, .LBB9_55.139
	j	.LBB9_56.144
.LBB9_55.139:
	call	chapop
	li	a1, 32
	sw	a1, 0(s2)
	addiw	a2, s3, 1
	addi	a1, s9, 0
	.word	0x20b645b3	# sh2add	a1, a2, a1
	sw	a0, 0(a1)
	addiw	a0, s3, 2
	sw	a0, 0(s11)
	j	.LBB9_54.134
.LBB9_56.144:
	li	a0, 64
	sw	a0, 0(s2)
	li	a1, 1
	# reload i64 %7
	ld	a0, 8(sp)
	sw	a1, 0(a0)
.LBB9_57.145:
	mv	s2, s5
	# reload i64 %7
	ld	a0, 8(sp)
	lw	s4, 0(a0)
	addi	a0, s9, 0
	.word	0x20aa4533	# sh2add	a0, s4, a0
	lw	s7, 0(a0)
	li	a0, 64
	bne	s7, a0, .LBB9_58.151
	j	.LBB9_83.209
.LBB9_58.151:
	li	a1, 43
	# spill i32 %157
	sw	a1, 0(sp)
	li	a0, 45
	# spill i32 %159
	sw	a0, 4(sp)
	li	s6, 42
	li	s8, 47
	li	s5, 37
	li	s3, 94
	beq	s7, a1, .LBB9_64.163
.LBB9_59.158:
	# reload i32 %159
	lw	a0, 4(sp)
	beq	s7, a0, .LBB9_64.163
.LBB9_60.159:
	beq	s7, s6, .LBB9_64.163
.LBB9_61.160:
	beq	s7, s8, .LBB9_64.163
.LBB9_62.161:
	beq	s7, s5, .LBB9_64.163
.LBB9_63.162:
	beq	s7, s3, .LBB9_64.163
	j	.LBB9_77.190
.LBB9_64.163:
	call	intpop
	mv	s4, a0
	call	intpop
	mv	a2, s2
	# reload i32 %157
	lw	a1, 0(sp)
	beq	s7, a1, .LBB9_65.166
	j	.LBB9_66.168
.LBB9_65.166:
	addw	a2, s4, a0
.LBB9_66.168:
	# reload i32 %159
	lw	a1, 4(sp)
	beq	s7, a1, .LBB9_67.170
	j	.LBB9_68.172
.LBB9_67.170:
	subw	a2, a0, s4
.LBB9_68.172:
	beq	s7, s6, .LBB9_69.174
	j	.LBB9_70.176
.LBB9_69.174:
	mulw	a2, s4, a0
.LBB9_70.176:
	beq	s7, s8, .LBB9_71.178
	j	.LBB9_72.180
.LBB9_71.178:
	divw	a2, a0, s4
.LBB9_72.180:
	beq	s7, s5, .LBB9_73.182
	j	.LBB9_74.184
.LBB9_73.182:
	remw	a2, a0, s4
.LBB9_74.184:
	mv	s2, a2
	beq	s7, s3, .LBB9_75.186
	j	.LBB9_76.188
.LBB9_75.186:
	mv	a1, s4
	call	power
	mv	s2, a0
.LBB9_76.188:
	mv	a0, s2
	call	intpush
	j	.LBB9_82.205
.LBB9_77.190:
	li	a0, 32
	bne	s7, a0, .LBB9_78.192
	j	.LBB9_82.205
.LBB9_78.192:
	addiw	a0, s7, -48
	call	intpush
	li	a0, 1
	sw	a0, 0(s11)
.LBB9_79.194:
	lw	s3, 0(s11)
	addw	a2, s4, s3
	addi	a0, s9, 0
	.word	0x20a64533	# sh2add	a0, a2, a0
	lw	a1, 0(a0)
	li	a0, 32
	bne	a1, a0, .LBB9_80.200
	j	.LBB9_81.203
.LBB9_80.200:
	addiw	a0, a1, -48
	call	intadd
	addiw	a0, s3, 1
	sw	a0, 0(s11)
	j	.LBB9_79.194
.LBB9_81.203:
	addiw	a1, a2, -1
	# reload i64 %7
	ld	a0, 8(sp)
	sw	a1, 0(a0)
.LBB9_82.205:
	# reload i64 %7
	ld	a0, 8(sp)
	lw	a1, 0(a0)
	addiw	a1, a1, 1
	sw	a1, 0(a0)
	mv	s5, s2
	j	.LBB9_57.145
.LBB9_83.209:
	lw	a0, 4(s1)
	call	putint
	mv	a0, zero
	ld	s1, 104(sp)
	ld	s2, 96(sp)
	ld	s3, 88(sp)
	ld	s4, 80(sp)
	ld	s5, 72(sp)
	ld	s6, 64(sp)
	ld	s7, 56(sp)
	ld	s8, 48(sp)
	ld	s9, 40(sp)
	ld	s10, 32(sp)
	ld	s11, 24(sp)
	ld	s0, 112(sp)
	ld	ra, 120(sp)
	addi	sp, sp, 128
	ret

	.section	.text
	.align	4
	.globl	power
	.type	power, @function
power:
.Lpower$ENTRY:
	li	a2, 1
.LBB10_2.3:
	bne	a1, zero, .LBB10_3.7
	j	.LBB10_4.10
.LBB10_3.7:
	mulw	a2, a2, a0
	addiw	a1, a1, -1
	j	.LBB10_2.3
.LBB10_4.10:
	mv	a0, a2
	ret

	.globl	c
	.section	.bss
	.type	c, @object
c:
	.zero	4

	.globl	chas
	.section	.bss
	.type	chas, @object
chas:
	.zero	40000

	.globl	chat
	.section	.bss
	.type	chat, @object
chat:
	.zero	4

	.globl	get
	.section	.bss
	.type	get, @object
get:
	.zero	40000

	.globl	get2
	.section	.bss
	.type	get2, @object
get2:
	.zero	40000

	.globl	i
	.section	.bss
	.type	i, @object
i:
	.zero	4

	.globl	ii
	.section	.data
	.type	ii, @object
ii:
	.word	1

	.globl	ints
	.section	.bss
	.type	ints, @object
ints:
	.zero	40000

	.globl	intt
	.section	.bss
	.type	intt, @object
intt:
	.zero	4

