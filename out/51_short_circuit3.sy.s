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


.section        .text
    .align 4
    .globl set_a
    .type set_a,@function
set_a:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L23_0:
    la      a1, a
    sd      a0,0(a1)
    la      a2, a
    lw      a3,0(a2)
    ld      ra,40(sp)
    ld      s0,24(sp)
    lw      a0,8(sp)
    addi    sp,sp,48
    ret
    .globl set_b
    .type set_b,@function
set_b:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L22_0:
    la      a4, b
    sd      a0,0(a4)
    la      a5, b
    lw      a6,0(a5)
    ld      ra,40(sp)
    ld      s0,24(sp)
    lw      a0,8(sp)
    addi    sp,sp,48
    ret
    .globl set_d
    .type set_d,@function
set_d:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L21_0:
    la      a7, d
    sd      a0,0(a7)
    la      s1, d
    lw      s2,0(s1)
    ld      ra,40(sp)
    ld      s0,24(sp)
    lw      a0,8(sp)
    addi    sp,sp,48
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-224
    sd      ra,216(sp)
    sd      s0,200(sp)
    addi    s0,sp,224
.L0_0:
    la      s3, a
    li      s4, 2
    sd      s4,0(s3)
    la      s5, b
    li      s6, 3
    sd      s6,0(s5)
    j       .L1_0
.L1_0:
    sw      a0,16(sp)
    li      a0, 1
    call    set_b
    sw      a0,192(sp)
    sw      a0,192(sp)
    li      a0, 0
    call    set_a
    sw      a0,184(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    mv      s3, s3
    mv      s4, s4
    and     s5,s2,s4
    bnez    s5, .branch_true_37
    j       .branch_false_37
.branch_false_37:
.L2_0:
    la      s6, a
    lw      s7,0(s6)
    sb      s2,183(sp)
    sw      s3,192(sp)
    sb      s4,182(sp)
    sb      s5,181(sp)
    sw      a0,184(sp)
    mv      a0, a0
    call    putint
    li      a0, 32
    call    putch
    la      a0, b
    lw      s1,0(a0)
    mv      a0, a0
    call    putint
    li      a0, 32
    call    putch
    la      a0, a
    li      s1, 2
    sd      s1,0(a0)
    la      s2, b
    li      s3, 3
    sd      s3,0(s2)
    j       .L3_0
.L3_0:
    li      a0, 1
    call    set_b
    sw      a0,164(sp)
    sw      a0,164(sp)
    li      a0, 0
    call    set_a
    sw      a0,156(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    mv      s3, s3
    mv      s4, s4
    and     s5,s2,s4
    bnez    s5, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    j       .branch_false_46
.branch_false_46:
.L4_0:
    la      s6, a
    lw      s7,0(s6)
    sb      s2,155(sp)
    sw      s3,164(sp)
    sb      s4,154(sp)
    sb      s5,153(sp)
    sw      a0,156(sp)
    mv      a0, a0
    call    putint
    li      a0, 32
    call    putch
    la      a0, b
    lw      s1,0(a0)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    li      a0, 1
    mv      s1, a0
    la      s2, d
    li      s3, 2
    sd      s3,0(s2)
    j       .L5_0
.L5_0:
    sw      s1,136(sp)
    li      a0, 3
    call    set_d
    sw      a0,128(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    li      s3, true
    and     s4,s2,s3
    bnez    s4, .branch_true_55
    j       .branch_false_55
.branch_true_55:
    j       .branch_false_55
.branch_false_55:
.L6_0:
    la      s5, d
    lw      s6,0(s5)
    sb      s2,127(sp)
    sb      s4,126(sp)
    sw      a0,128(sp)
    mv      a0, a0
    call    putint
    li      a0, 32
    call    putch
    j       .L7_0
.L7_0:
    li      a0, 4
    call    set_d
    sw      a0,112(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    li      s3, true
    or      s4,s2,s3
    mv      s5, s5
    bnez    s5, .branch_true_60
    j       .branch_false_60
.branch_false_60:
.L8_0:
    la      s6, d
    lw      s7,0(s6)
    sb      s2,111(sp)
    sb      s5,110(sp)
    sw      a0,112(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    j       .L9_0
.L9_0:
    li      a0, 16
    li      s1, 0
    slt     s2,s1,a0
    xori    s2,s2,1
    bnez    s2, .branch_true_65
    j       .branch_false_65
.branch_true_65:
    sb      s2,103(sp)
    li      a0, 65
    call    putch
    j       .branch_false_65
.branch_false_65:
.L10_0:
    li      a0, 18
    li      s1, 18
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .branch_true_69
    j       .branch_false_69
.branch_true_69:
    sb      s2,102(sp)
    li      a0, 66
    call    putch
    j       .branch_false_69
.branch_false_69:
.L11_0:
    li      a0, true
    andi    s1,a0,1
    mv      s2, s2
    li      s3, 1
    xor     s4,s2,s3
    sltiu   s4,s4,1
    xori    s4,s4,1
    bnez    s4, .branch_true_72
    j       .branch_false_72
.branch_true_72:
    sw      s2,96(sp)
    sb      s4,95(sp)
    li      a0, 67
    call    putch
    j       .branch_false_72
.branch_false_72:
.L12_0:
    li      a0, false
    andi    s1,a0,1
    li      s2, 0
    mv      s3, s3
    xor     s4,s2,s3
    sltiu   s4,s4,1
    bnez    s4, .branch_true_76
    j       .branch_false_76
.branch_true_76:
    sw      s3,88(sp)
    sb      s4,87(sp)
    li      a0, 68
    call    putch
    j       .branch_false_76
.branch_false_76:
.L13_0:
    li      a0, 0x66
    li      s1, 077
    slt     s2,a0,s1
    xori    s2,s2,1
    li      s3, 1
    mv      s4, s4
    xor     s5,s3,s4
    sltiu   s5,s5,1
    bnez    s5, .branch_true_80
    j       .branch_false_80
.branch_true_80:
    sb      s2,86(sp)
    sw      s4,80(sp)
    sb      s5,79(sp)
    li      a0, 69
    call    putch
    j       .branch_false_80
.branch_false_80:
.L14_0:
    li      a0, -1
    li      s1, 1
    xor     s2,a0,s1
    sltiu   s2,s2,1
    bnez    s2, .branch_true_83
    j       .branch_false_83
.branch_true_83:
    sb      s2,78(sp)
    li      a0, 70
    call    putch
    j       .branch_false_83
.branch_false_83:
.L15_0:
    li      a0, 10
    call    putch
    li      a0, 0
    mv      s1, a0
    li      s2, 1
    mv      s3, s2
    li      s4, 2
    mv      s5, s4
    li      s6, 3
    mv      s7, s6
    li      s8, 4
    mv      s9, s8
    j       .while.head_88
.while.head_88:
    xor     s10,s1,a0
    sltiu   s10,s10,1
    xori    s10,s10,1
    mv      s11, s11
    and     a0,s10,s11
    bnez    a0, .while.body_88
    j       .while.exit_88
.while.body_88:
    sw      s1,72(sp)
    sw      s3,68(sp)
    sw      s5,60(sp)
    sw      s7,52(sp)
    sw      s9,44(sp)
    sb      s10,43(sp)
    sb      s11,42(sp)
    sb      a0,41(sp)
    li      a0, 32
    call    putch
    j       .while.head_88
.while.exit_88:
    mv      a0, a0
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    mv      s3, s3
    mv      s4, s4
    mv      s5, s5
    bnez    s5, .branch_true_91
    j       .branch_false_91
.branch_true_91:
    sb      s2,40(sp)
    sw      s3,68(sp)
    sb      s4,39(sp)
    sb      s5,38(sp)
    sw      a0,72(sp)
    li      a0, 67
    call    putch
    j       .branch_false_91
.branch_false_91:
.L16_0:
    mv      a0, a0
    mv      s1, s1
    slt     s2,a0,s1
    xori    s2,s2,1
    slt     s3,a0,s1
    xori    s3,s3,1
    mv      s4, s4
    bnez    s4, .branch_true_94
    j       .branch_false_94
.branch_true_94:
    sw      s1,72(sp)
    sb      s2,37(sp)
    sb      s3,36(sp)
    sb      s4,35(sp)
    sw      a0,68(sp)
    li      a0, 72
    call    putch
    j       .branch_false_94
.branch_false_94:
.L17_0:
    mv      a0, a0
    mv      s1, s1
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    mv      s3, s3
    mv      s4, s4
    slt     s5,s4,s3
    xori    s5,s5,1
    and     s6,s5,s2
    bnez    s6, .branch_true_97
    j       .branch_false_97
.branch_true_97:
    sw      s1,52(sp)
    sb      s2,34(sp)
    sw      s3,60(sp)
    sw      s4,68(sp)
    sb      s5,33(sp)
    sb      s6,32(sp)
    sw      a0,44(sp)
    li      a0, 73
    call    putch
    j       .branch_false_97
.branch_false_97:
.L18_0:
    mv      a0, a0
    slt     s1,a0,a0
    xori    s1,s1,1
    mv      s2, s2
    slt     s3,s2,s2
    mv      s4, s4
    li      s5, 0
    xor     s6,s4,s5
    sltiu   s6,s6,1
    xori    s6,s6,1
    xori    s7,s6,-1
    mv      s8, s8
    mv      s9, s9
    xor     s10,s8,s9
    sltiu   s10,s10,1
    and     s11,s10,s3
    mv      a1, a1
    bnez    a1, .branch_true_101
    j       .branch_false_101
.branch_true_101:
    sb      s1,31(sp)
    sw      s2,52(sp)
    sb      s3,30(sp)
    sw      s4,68(sp)
    sb      s6,29(sp)
    sb      s7,28(sp)
    sw      s8,72(sp)
    sw      s9,20(sp)
    sb      s10,19(sp)
    sb      s11,18(sp)
    sw      a0,44(sp)
    li      a0, 74
    call    putch
    j       .branch_false_101
.branch_false_101:
.L19_0:
    mv      a0, a0
    slt     s1,a0,a0
    xori    s1,s1,1
    mv      s2, s2
    slt     s3,s2,s2
    and     s4,s3,s1
    mv      s5, s5
    li      s6, 0
    xor     s7,s5,s6
    sltiu   s7,s7,1
    xori    s7,s7,1
    xori    s8,s7,-1
    mv      s9, s9
    mv      s10, s10
    xor     s11,s9,s10
    sltiu   s11,s11,1
    mv      a2, a2
    bnez    a2, .branch_true_105
    j       .branch_false_105
.branch_true_105:
    sb      s1,16(sp)
    sw      s2,52(sp)
    sb      s3,15(sp)
    sb      s4,14(sp)
    sw      s5,68(sp)
    sb      s7,13(sp)
    sb      s8,12(sp)
    sw      s9,72(sp)
    sw      s10,4(sp)
    sb      s11,3(sp)
    sw      a0,44(sp)
    li      a0, 75
    call    putch
    j       .branch_false_105
.branch_false_105:
.L20_0:
    li      a0, 10
    call    putch
    ld      ra,216(sp)
    ld      s0,200(sp)
    li      a0, 0
    addi    sp,sp,224
    ret
.section        .data
    .align 4
    .globl d
    .type d,@object
d:
    .word 0
    .align 4
    .globl b
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
    .type a,@object
a:
    .word 0
