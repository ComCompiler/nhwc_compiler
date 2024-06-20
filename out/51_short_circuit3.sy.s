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
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L23_0:
    la      a1, a
    sd      a0,0(a1)
    la      a2, a
    lw      a3,0(a2)
    ld      ra,16(sp)
    ld      s0,8(sp)
    lw      a0,0(sp)
    addi    sp,sp,24
    ret
    .globl set_b
    .type set_b,@function
set_b:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L22_0:
    la      a1, b
    sd      a0,0(a1)
    la      a2, b
    lw      a3,0(a2)
    ld      ra,16(sp)
    ld      s0,8(sp)
    lw      a0,0(sp)
    addi    sp,sp,24
    ret
    .globl set_d
    .type set_d,@function
set_d:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L21_0:
    la      a1, d
    sd      a0,0(a1)
    la      a2, d
    lw      a3,0(a2)
    ld      ra,16(sp)
    ld      s0,8(sp)
    lw      a0,0(sp)
    addi    sp,sp,24
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-168
    sd      ra,160(sp)
    sd      s0,152(sp)
    addi    s0,sp,168
.L0_0:
    la      a0, a
    li      a1, 2
    sd      a1,0(a0)
    la      a2, b
    li      a3, 3
    sd      a3,0(a2)
    j       .L1_0
.L1_0:
    li      a0, 1
    call    set_b
    sw      a0,148(sp)
    sw      a0,148(sp)
    li      a0, 0
    call    set_a
    sw      a0,144(sp)
    li      a4, 0
    xor     a5,a0,a4
    snez    a5, a5
    and     s1,a5,a7
    bnez    s1, .branch_true_37
    j       .branch_false_37
.branch_false_37:
.L2_0:
    la      s2, a
    lw      s3,0(s2)
    sb      s1,141(sp)
    sw      a0,144(sp)
    call    putint
    li      a0, 32
    call    putch
    la      a0, b
    lw      s1,0(a0)
    call    putint
    li      a0, 32
    call    putch
    la      a0, a
    sd      a1,0(a0)
    la      s1, b
    sd      a3,0(s1)
    j       .L3_0
.L3_0:
    li      a0, 1
    call    set_b
    sw      a0,128(sp)
    sw      a0,128(sp)
    li      a0, 0
    call    set_a
    sw      a0,124(sp)
    xor     s1,a0,a4
    snez    s1, s1
    and     s4,s1,s3
    bnez    s4, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    j       .branch_false_46
.branch_false_46:
.L4_0:
    la      s5, a
    lw      s6,0(s5)
    sb      s1,123(sp)
    sw      s2,128(sp)
    sb      s3,122(sp)
    sb      s4,121(sp)
    sw      a0,124(sp)
    call    putint
    li      a0, 32
    call    putch
    la      a0, b
    lw      s1,0(a0)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 1
    la      s1, d
    sd      a1,0(s1)
    j       .L5_0
.L5_0:
    sw      a0,108(sp)
    li      a0, 3
    call    set_d
    sw      a0,104(sp)
    xor     s1,a0,a4
    snez    s1, s1
    li      s2, true
    and     s3,s1,s2
    bnez    s3, .branch_true_55
    j       .branch_false_55
.branch_true_55:
    j       .branch_false_55
.branch_false_55:
.L6_0:
    la      s4, d
    lw      s5,0(s4)
    sb      s1,103(sp)
    sb      s3,102(sp)
    sw      a0,104(sp)
    call    putint
    li      a0, 32
    call    putch
    j       .L7_0
.L7_0:
    li      a0, 4
    call    set_d
    sw      a0,92(sp)
    xor     s1,a0,a4
    snez    s1, s1
    li      s2, true
    or      s3,s1,s2
    bnez    s4, .branch_true_60
    j       .branch_false_60
.branch_false_60:
.L8_0:
    la      s5, d
    lw      s6,0(s5)
    sb      s1,91(sp)
    sb      s4,90(sp)
    sw      a0,92(sp)
    call    putint
    li      a0, 10
    call    putch
    j       .L9_0
.L9_0:
    li      a0, 16
    slt     s1,a0,a4
    xori    s1,s1,1
    bnez    s1, .branch_true_65
    j       .branch_false_65
.branch_true_65:
    sb      s1,83(sp)
    li      a0, 65
    call    putch
    j       .branch_false_65
.branch_false_65:
.L10_0:
    li      a0, 18
    li      s1, 18
    xor     s2,a0,s1
    snez    s2, s2
    bnez    s2, .branch_true_69
    j       .branch_false_69
.branch_true_69:
    sb      s2,82(sp)
    li      a0, 66
    call    putch
    j       .branch_false_69
.branch_false_69:
.L11_0:
    li      a0, true
    andi    s1,a0,1
    li      s3, 1
    xor     s4,s2,s3
    snez    s4, s4
    bnez    s4, .branch_true_72
    j       .branch_false_72
.branch_true_72:
    sw      s2,76(sp)
    sb      s4,75(sp)
    li      a0, 67
    call    putch
    j       .branch_false_72
.branch_false_72:
.L12_0:
    li      a0, false
    andi    s1,a0,1
    xor     s3,a4,s2
    seqz    s3, s3
    bnez    s3, .branch_true_76
    j       .branch_false_76
.branch_true_76:
    sw      s2,68(sp)
    sb      s3,67(sp)
    li      a0, 68
    call    putch
    j       .branch_false_76
.branch_false_76:
.L13_0:
    li      a0, 0x66
    li      s1, 077
    slt     s2,s1,a0
    xori    s2,s2,1
    li      s3, 1
    xor     s5,s3,s4
    seqz    s5, s5
    bnez    s5, .branch_true_80
    j       .branch_false_80
.branch_true_80:
    sb      s2,66(sp)
    sw      s4,60(sp)
    sb      s5,59(sp)
    li      a0, 69
    call    putch
    j       .branch_false_80
.branch_false_80:
.L14_0:
    li      a0, -1
    li      s1, 1
    xor     s2,a0,s1
    seqz    s2, s2
    bnez    s2, .branch_true_83
    j       .branch_false_83
.branch_true_83:
    sb      s2,58(sp)
    li      a0, 70
    call    putch
    j       .branch_false_83
.branch_false_83:
.L15_0:
    li      a0, 10
    call    putch
    li      a0, 0
    li      s1, 1
    li      s2, 2
    li      s3, 3
    li      s4, 4
    j       .while.head_88
.while.head_88:
    xor     s5,a0,a4
    snez    s5, s5
    and     s7,s5,s6
    bnez    s7, .while.body_88
    j       .while.exit_88
.while.body_88:
    sw      s1,48(sp)
    sw      s2,44(sp)
    sw      s3,40(sp)
    sw      s4,36(sp)
    sb      s5,35(sp)
    sb      s6,34(sp)
    sb      s7,33(sp)
    sw      a0,52(sp)
    li      a0, 32
    call    putch
    j       .while.head_88
.while.exit_88:
    xor     s1,a0,a4
    snez    s1, s1
    bnez    s4, .branch_true_91
    j       .branch_false_91
.branch_true_91:
    sb      s1,32(sp)
    sw      s2,48(sp)
    sb      s3,31(sp)
    sb      s4,30(sp)
    sw      a0,52(sp)
    li      a0, 67
    call    putch
    j       .branch_false_91
.branch_false_91:
.L16_0:
    slt     s2,s1,a0
    xori    s2,s2,1
    slt     s3,s1,a0
    xori    s3,s3,1
    bnez    s4, .branch_true_94
    j       .branch_false_94
.branch_true_94:
    sw      s1,52(sp)
    sb      s2,29(sp)
    sb      s3,28(sp)
    sb      s4,27(sp)
    sw      a0,48(sp)
    li      a0, 72
    call    putch
    j       .branch_false_94
.branch_false_94:
.L17_0:
    xor     s2,a0,s1
    snez    s2, s2
    slt     s5,s3,s4
    xori    s5,s5,1
    and     s6,s5,s2
    bnez    s6, .branch_true_97
    j       .branch_false_97
.branch_true_97:
    sw      s1,40(sp)
    sb      s2,26(sp)
    sw      s3,44(sp)
    sw      s4,48(sp)
    sb      s5,25(sp)
    sb      s6,24(sp)
    sw      a0,36(sp)
    li      a0, 73
    call    putch
    j       .branch_false_97
.branch_false_97:
.L18_0:
    slt     s1,a0,a0
    xori    s1,s1,1
    slt     s3,s2,s2
    xor     s5,s4,a4
    snez    s5, s5
    xori    s6,s5,-1
    xor     s9,s7,s8
    seqz    s9, s9
    and     s10,s9,s3
    bnez    s11, .branch_true_101
    j       .branch_false_101
.branch_true_101:
    sb      s1,23(sp)
    sw      s2,40(sp)
    sb      s3,22(sp)
    sw      s4,48(sp)
    sb      s5,21(sp)
    sb      s6,20(sp)
    sw      s7,52(sp)
    sw      s8,16(sp)
    sb      s9,15(sp)
    sb      s10,14(sp)
    sb      s11,13(sp)
    sw      a0,36(sp)
    li      a0, 74
    call    putch
    j       .branch_false_101
.branch_false_101:
.L19_0:
    slt     s1,a0,a0
    xori    s1,s1,1
    slt     s3,s2,s2
    and     s4,s3,s1
    xor     s6,s5,a4
    snez    s6, s6
    xori    s7,s6,-1
    xor     s10,s8,s9
    seqz    s10, s10
    bnez    s11, .branch_true_105
    j       .branch_false_105
.branch_true_105:
    sb      s1,12(sp)
    sw      s2,40(sp)
    sb      s3,11(sp)
    sb      s4,10(sp)
    sw      s5,48(sp)
    sb      s6,9(sp)
    sb      s7,8(sp)
    sw      s8,52(sp)
    sw      s9,4(sp)
    sb      s10,3(sp)
    sb      s11,2(sp)
    sw      a0,36(sp)
    li      a0, 75
    call    putch
    j       .branch_false_105
.branch_false_105:
.L20_0:
    li      a0, 10
    call    putch
    ld      ra,160(sp)
    ld      s0,152(sp)
    li      a0, 0
    addi    sp,sp,168
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
