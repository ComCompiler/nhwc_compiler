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


.section ___func
    .text
    .align 4
    .globl long_array
    .type long_array,@function
long_array:
    li      a1, -120368
    li      a1, -120368
    add     sp,a1,sp
    li      a2, 120360
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 120352
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 120368
    li      a4, 120368
    add     s0,a4,sp
.L1_0:
    li      a1, 0
    j       .while.head_25
.while.head_25:
    li      a2, 10000
    slt     a3,a1,a2
    bnez    a3, .while.body_25
    j       .while.exit_25
.while.body_25:
    li      a2, 0
    li      a4, 1
    mul     a5,a4,a1
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    li      a6, 80348
    li      a6, 80348
    add     a2,a6,a2
    mul     a7,a1,a1
    li      s1, 10
    rem     s2,a7,s1
    sw      s2,0(a2)
    add     s3,a1,a4
    mv      a1, s3
    sd      a2,328(sp)
    sw      s3,316(sp)
    sw      a7,324(sp)
    sb      a3,343(sp)
    sw      s2,320(sp)
    j       .while.head_25
.while.exit_25:
    li      a1, 0
    j       .while.head_31
.while.head_31:
    li      a2, 10000
    slt     a4,a1,a2
    bnez    a4, .while.body_31
    j       .while.exit_31
.while.body_31:
    li      a2, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    li      a7, 40348
    li      a7, 40348
    add     a2,a7,a2
    li      s1, 0
    mul     s2,a5,a1
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    li      s3, 80348
    li      s3, 80348
    add     s1,s3,s1
    lw      s4,0(s1)
    mul     s5,s4,s4
    li      s6, 10
    rem     s7,s5,s6
    sw      s7,0(a2)
    add     s8,a1,a5
    mv      a1, s8
    sw      s5,288(sp)
    sb      a4,315(sp)
    sd      s1,296(sp)
    sw      s4,292(sp)
    sd      a2,304(sp)
    sw      s7,284(sp)
    sw      s8,280(sp)
    j       .while.head_31
.while.exit_31:
    li      a1, 0
    j       .while.head_37
.while.head_37:
    li      a2, 10000
    slt     a5,a1,a2
    bnez    a5, .while.body_37
    j       .while.exit_37
.while.body_37:
    li      a2, 0
    li      a6, 1
    mul     a7,a6,a1
    add     a2,a2,a7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,348
    li      s1, 0
    mul     s2,a6,a1
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    li      s3, 80348
    li      s3, 80348
    add     s1,s3,s1
    lw      s4,0(s1)
    li      s5, 0
    mul     s6,a6,a1
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    li      s7, 40348
    li      s7, 40348
    add     s5,s7,s5
    lw      s8,0(s5)
    mul     s9,s8,s8
    li      s10, 100
    rem     s11,s9,s10
    add     a6,s11,s4
    sw      a6,0(a2)
    li      a7, 1
    add     s2,a1,a7
    mv      a1, s2
    sd      s5,240(sp)
    sd      s1,256(sp)
    sw      a6,224(sp)
    sb      a5,279(sp)
    sw      s4,252(sp)
    sd      a2,264(sp)
    sw      s11,228(sp)
    sw      s2,220(sp)
    sw      s9,232(sp)
    sw      s8,236(sp)
    j       .while.head_37
.while.exit_37:
    li      a2, 0
    li      a1, 0
    j       .while.head_44
.while.head_44:
    li      a6, 10000
    slt     a7,a1,a6
    bnez    a7, .while.body_44
    j       .while.exit_44
.while.body_44:
    li      a6, 10
    slt     s1,a1,a6
    bnez    s1, .branch_true_47
    j       .branch_false_47
.branch_true_47:
    li      a6, 0
    li      s2, 1
    mul     s3,s2,a1
    add     a6,a6,s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,348
    lw      s4,0(a6)
    add     s5,a2,s4
    li      s6, 1333
    rem     s7,s5,s6
    mv      a2, s7
    sb      s1,214(sp)
    sw      s4,196(sp)
    sw      s5,192(sp)
    sw      s7,188(sp)
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,344(sp)
    sw      a2,216(sp)
    sb      a3,343(sp)
    sb      a4,315(sp)
    sb      a5,279(sp)
    sd      a6,200(sp)
    sb      a7,215(sp)
    lw      a0,216(sp)
    call    putint
    j       .L5_0
.branch_false_47:
    li      a6, 20
    slt     s2,a1,a6
    bnez    s2, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    li      a6, 5000
    j       .while.head_56
.while.head_56:
    li      s3, 10000
    slt     s4,a6,s3
    bnez    s4, .while.body_56
    j       .while.exit_56
.while.body_56:
    li      s3, 0
    li      s5, 1
    mul     s6,s5,a6
    add     s3,s3,s6
    slli s3,s3,2
    add     s3,s3,sp
    li      s7, 80348
    li      s7, 80348
    add     s3,s7,s3
    lw      s8,0(s3)
    li      s9, 0
    mul     s10,s5,a1
    add     s9,s9,s10
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,348
    lw      s11,0(s9)
    add     s5,a2,s11
    sub     s6,s5,s8
    mv      a2, s6
    li      s7, 1
    add     s10,a6,s7
    mv      a6, s10
    sw      s5,136(sp)
    sw      s10,128(sp)
    sw      s6,132(sp)
    sb      s4,175(sp)
    sd      s3,160(sp)
    sw      s11,140(sp)
    sd      s9,144(sp)
    sw      s8,156(sp)
    j       .while.head_56
.while.exit_56:
    sb      s1,214(sp)
    sb      s2,183(sp)
    sb      s4,175(sp)
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,344(sp)
    sw      a2,216(sp)
    sb      a3,343(sp)
    sb      a4,315(sp)
    sb      a5,279(sp)
    sw      a6,176(sp)
    sb      a7,215(sp)
    lw      a0,216(sp)
    call    putint
    j       .L4_0
.branch_false_52:
    li      a6, 30
    slt     s3,a1,a6
    bnez    s3, .branch_true_62
    j       .branch_false_62
.branch_true_62:
    li      a6, 5000
    j       .while.head_66
.while.head_66:
    li      s4, 10000
    slt     s5,a6,s4
    bnez    s5, .while.body_66
    j       .while.exit_66
.while.body_66:
    li      s4, 2233
    slt     s6,s4,a6
    bnez    s6, .branch_true_69
    j       .branch_false_69
.branch_true_69:
    li      s4, 0
    li      s7, 1
    mul     s8,s7,a6
    add     s4,s4,s8
    slli s4,s4,2
    add     s4,s4,sp
    li      s9, 80348
    li      s9, 80348
    add     s4,s9,s4
    lw      s10,0(s4)
    li      s11, 0
    mul     s8,s7,a1
    add     s11,s11,s8
    slli s11,s11,2
    add     s11,s11,sp
    li      s7, 40348
    li      s7, 40348
    add     s11,s7,s11
    lw      s7,0(s11)
    add     s8,a2,s7
    sub     s9,s8,s10
    mv      a2, s9
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    sw      a1,344(sp)
    add     a1,a6,a0
    mv      a6, a1
    j       .L2_0
.branch_false_69:
    li      s4, 0
    li      s7, 1
    mul     s8,s7,a6
    add     s4,s4,s8
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,348
    lw      s9,0(s4)
    li      s10, 0
    mul     s11,s7,a1
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    li      s7, 80348
    li      s7, 80348
    add     s10,s7,s10
    lw      s7,0(s10)
    add     s8,a2,s7
    add     s11,s8,s9
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13333
    sw      a1,344(sp)
    rem     a1,s11,a0
    mv      a2, a1
    li      a0, 2
    sw      a1,32(sp)
    add     a1,a6,a0
    mv      a6, a1
    sd      s10,48(sp)
    sd      s4,64(sp)
    sw      a1,28(sp)
    sw      s11,36(sp)
    sw      s7,44(sp)
    sw      s9,60(sp)
    sw      s8,40(sp)
    lw      s10,100(sp)
    ld      s4,104(sp)
    lw      a1,72(sp)
    ld      s11,88(sp)
    lw      s7,84(sp)
    lw      s9,76(sp)
    lw      s8,80(sp)
    j       .L2_0
.L2_0:
    sb      s5,119(sp)
    sw      s10,100(sp)
    sb      s6,118(sp)
    sd      s4,104(sp)
    sw      a1,72(sp)
    sd      s11,88(sp)
    sw      s7,84(sp)
    sw      s9,76(sp)
    sw      s8,80(sp)
    li      a1, 120348
    add     a1,sp,a1
    lw      a0,0(a1)
    lw      a1,344(sp)
    j       .while.head_66
.while.exit_66:
    sb      s1,214(sp)
    sb      s2,183(sp)
    sb      s3,127(sp)
    sb      s5,119(sp)
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,344(sp)
    sw      a2,216(sp)
    sb      a3,343(sp)
    sb      a4,315(sp)
    sb      a5,279(sp)
    sw      a6,120(sp)
    sb      a7,215(sp)
    lw      a0,216(sp)
    call    putint
    j       .L3_0
.branch_false_62:
    li      a6, 0
    li      s4, 1
    mul     s5,s4,a1
    add     a6,a6,s5
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,348
    lw      s6,0(a6)
    mul     s7,s6,a0
    add     s8,a2,s7
    li      s9, 99988
    rem     s10,s8,s9
    mv      a2, s10
    sb      a4,315(sp)
    sw      s10,0(sp)
    sb      s1,214(sp)
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    sd      a6,16(sp)
    sw      s6,12(sp)
    sb      a5,279(sp)
    sw      a1,344(sp)
    sw      a2,216(sp)
    sb      s3,127(sp)
    sb      a7,215(sp)
    sb      a3,343(sp)
    sw      s7,8(sp)
    sb      s2,183(sp)
    sw      s8,4(sp)
    j       .L3_0
.L3_0:
.L4_0:
.L5_0:
.L6_0:
    lw      a0,344(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,344(sp)
    sw      a2,184(sp)
    lb      a4,315(sp)
    li      a1, 120348
    add     a1,sp,a1
    lw      a0,0(a1)
    lb      a5,279(sp)
    lw      a1,344(sp)
    lw      a2,216(sp)
    lb      a3,343(sp)
    j       .while.head_44
.while.exit_44:
    li      a6, 120360
    add     a6,sp,a6
    ld      ra,0(a6)
    li      s1, 120352
    add     s1,sp,s1
    ld      s0,0(s1)
    sw      a2,216(sp)
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,216(sp)
    li      a2, 120368
    li      a2, 120368
    add     sp,a2,sp
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    li      a0, 9
    call    long_array
    sw      a0,4(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,24
    ret
.section ___var
    .data
    .align 4
    .globl N
    .type N,@object
N:
    .word 10000
