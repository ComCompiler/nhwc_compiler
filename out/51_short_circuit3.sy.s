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
    .globl set_a
    .type set_a,@function
set_a:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L23_0:
    la      a1, a
    sw      a0,0(a1)
    la      a2, a
    lw      a3,0(a2)
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a3,0(sp)
    sw      a0,4(sp)
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
    sw      a0,0(a1)
    la      a2, b
    lw      a3,0(a2)
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a3,0(sp)
    sw      a0,4(sp)
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
    sw      a0,0(a1)
    la      a2, d
    lw      a3,0(a2)
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a3,0(sp)
    sw      a0,4(sp)
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
    sw      a1,0(a0)
    la      a2, b
    li      a3, 3
    sw      a3,0(a2)
    j       .L1_0
.L1_0:
    li      a0, 1
    call    set_b
    sw      a0,148(sp)
    sw      a0,148(sp)
    li      a0, 0
    call    set_a
    sw      a0,144(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    lw      a3,148(sp)
    xor     a2,a3,a1
    snez    a2, a2
    lb      a4,142(sp)
    and     a5,a2,a4
    j       .branch_true_37
.branch_true_37:
.L2_0:
    la      a1, a
    lw      a6,0(a1)
    sw      a0,144(sp)
    sb      a2,143(sp)
    sw      a3,148(sp)
    sb      a4,142(sp)
    sb      a5,141(sp)
    sw      a6,136(sp)
    lw      a0,136(sp)
    call    putint
    li      a0, 32
    call    putch
    la      a0, b
    lw      a1,0(a0)
    sw      a1,132(sp)
    lw      a0,132(sp)
    call    putint
    li      a0, 32
    call    putch
    la      a0, a
    li      a1, 2
    sw      a1,0(a0)
    la      a2, b
    li      a3, 3
    sw      a3,0(a2)
    j       .L3_0
.L3_0:
    li      a0, 1
    call    set_b
    sw      a0,128(sp)
    sw      a0,128(sp)
    li      a0, 0
    call    set_a
    sw      a0,124(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    lw      a3,128(sp)
    xor     a2,a3,a1
    snez    a2, a2
    lb      a4,122(sp)
    and     a5,a2,a4
    bnez    a5, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    j       .branch_false_46
.branch_false_46:
.L4_0:
    la      a1, a
    lw      a6,0(a1)
    sw      a0,124(sp)
    sb      a2,123(sp)
    sw      a3,128(sp)
    sb      a4,122(sp)
    sb      a5,121(sp)
    sw      a6,116(sp)
    lw      a0,116(sp)
    call    putint
    li      a0, 32
    call    putch
    la      a0, b
    lw      a1,0(a0)
    sw      a1,112(sp)
    lw      a0,112(sp)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 1
    la      a1, d
    li      a2, 2
    sw      a2,0(a1)
    j       .L5_0
.L5_0:
    sw      a0,108(sp)
    li      a0, 3
    call    set_d
    sw      a0,104(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    li      a3, 1
    and     a4,a2,a3
    bnez    a4, .branch_true_55
    j       .branch_false_55
.branch_true_55:
    j       .branch_false_55
.branch_false_55:
.L6_0:
    la      a1, d
    lw      a3,0(a1)
    sw      a0,104(sp)
    sb      a2,103(sp)
    sw      a3,96(sp)
    sb      a4,102(sp)
    lw      a0,96(sp)
    call    putint
    li      a0, 32
    call    putch
    j       .L7_0
.L7_0:
    li      a0, 4
    call    set_d
    sw      a0,92(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    li      a3, 1
    or      a4,a2,a3
    j       .branch_true_60
.branch_true_60:
.L8_0:
    la      a1, d
    lw      a3,0(a1)
    sw      a0,92(sp)
    sb      a2,91(sp)
    sw      a3,84(sp)
    sb      a4,90(sp)
    lw      a0,84(sp)
    call    putint
    li      a0, 10
    call    putch
    j       .L9_0
.L9_0:
    li      a0, 16
    li      a1, 0
    slt     a2,a0,a1
    xori    a2,a2,1
    bnez    a2, .branch_true_65
    j       .branch_false_65
.branch_true_65:
    sb      a2,83(sp)
    li      a0, 65
    call    putch
    lb      a2,83(sp)
    j       .branch_false_65
.branch_false_65:
.L10_0:
    li      a0, 18
    li      a1, 18
    xor     a3,a0,a1
    snez    a3, a3
    bnez    a3, .branch_true_69
    j       .branch_false_69
.branch_true_69:
    sb      a2,83(sp)
    sb      a3,82(sp)
    li      a0, 66
    call    putch
    lb      a3,82(sp)
    lb      a2,83(sp)
    j       .branch_false_69
.branch_false_69:
.L11_0:
    li      a0, 1
    andi    a1,a0,1
    li      a4, 1
    xor     a5,a1,a4
    snez    a5, a5
    bnez    a5, .branch_true_72
    j       .branch_false_72
.branch_true_72:
    sw      a1,76(sp)
    sb      a2,83(sp)
    sb      a3,82(sp)
    sb      a5,75(sp)
    li      a0, 67
    call    putch
    lb      a3,82(sp)
    lb      a5,75(sp)
    lw      a1,76(sp)
    lb      a2,83(sp)
    j       .branch_false_72
.branch_false_72:
.L12_0:
    li      a0, 0
    andi    a4,a0,1
    li      a6, 0
    xor     a7,a6,a4
    seqz    a7, a7
    bnez    a7, .branch_true_76
    j       .branch_false_76
.branch_true_76:
    sw      a1,76(sp)
    sb      a2,83(sp)
    sb      a3,82(sp)
    sw      a4,68(sp)
    sb      a5,75(sp)
    sb      a7,67(sp)
    li      a0, 68
    call    putch
    lb      a3,82(sp)
    lb      a5,75(sp)
    lw      a1,76(sp)
    lb      a7,67(sp)
    lw      a4,68(sp)
    lb      a2,83(sp)
    j       .branch_false_76
.branch_false_76:
.L13_0:
    li      a0, 0
    andi    a6,a0,1
    li      s1, 1
    xor     s2,s1,a6
    seqz    s2, s2
    bnez    s2, .branch_true_80
    j       .branch_false_80
.branch_true_80:
    sb      s2,59(sp)
    sw      a1,76(sp)
    sb      a2,83(sp)
    sb      a3,82(sp)
    sw      a4,68(sp)
    sb      a5,75(sp)
    sw      a6,60(sp)
    sb      a7,67(sp)
    li      a0, 69
    call    putch
    lb      a3,82(sp)
    lb      a5,75(sp)
    lw      a6,60(sp)
    lw      a1,76(sp)
    lb      a7,67(sp)
    lw      a4,68(sp)
    lb      a2,83(sp)
    lb      s2,59(sp)
    j       .branch_false_80
.branch_false_80:
.L14_0:
    li      a0, -1
    li      s1, 1
    xor     s3,a0,s1
    seqz    s3, s3
    bnez    s3, .branch_true_83
    j       .branch_false_83
.branch_true_83:
    sb      s2,59(sp)
    sb      s3,58(sp)
    sw      a1,76(sp)
    sb      a2,83(sp)
    sb      a3,82(sp)
    sw      a4,68(sp)
    sb      a5,75(sp)
    sw      a6,60(sp)
    sb      a7,67(sp)
    li      a0, 70
    call    putch
    lb      a3,82(sp)
    lb      a5,75(sp)
    lw      a6,60(sp)
    lw      a1,76(sp)
    lb      a7,67(sp)
    lw      a4,68(sp)
    lb      a2,83(sp)
    lb      s2,59(sp)
    lb      s3,58(sp)
    j       .branch_false_83
.branch_false_83:
.L15_0:
    sb      s2,59(sp)
    sb      s3,58(sp)
    sw      a1,76(sp)
    sb      a2,83(sp)
    sb      a3,82(sp)
    sw      a4,68(sp)
    sb      a5,75(sp)
    sw      a6,60(sp)
    sb      a7,67(sp)
    li      a0, 10
    call    putch
    li      a0, 0
    li      a1, 1
    li      a2, 2
    li      a3, 3
    li      a4, 4
    j       .while.head_88
.while.head_88:
    li      a5, 0
    xor     a6,a0,a5
    snez    a6, a6
    xor     a6,a1,a5
    snez    a6, a6
    lb      a7,34(sp)
    and     s1,a6,a7
    bnez    s1, .while.body_88
    j       .while.exit_88
.while.body_88:
    sb      s1,33(sp)
    sw      a0,52(sp)
    sw      a1,48(sp)
    sw      a2,44(sp)
    sw      a3,40(sp)
    sw      a4,36(sp)
    sb      a6,35(sp)
    sb      a7,34(sp)
    li      a0, 32
    call    putch
    lw      a3,40(sp)
    lw      a0,52(sp)
    lw      a1,48(sp)
    lw      a4,36(sp)
    lw      a2,44(sp)
    j       .while.head_88
.while.exit_88:
    li      a5, 0
    xor     s2,a0,a5
    snez    s2, s2
    xor     s2,a1,a5
    snez    s2, s2
    lb      s3,31(sp)
    or      s4,s2,s3
    bnez    s4, .branch_true_91
    j       .branch_false_91
.branch_true_91:
    sb      s1,33(sp)
    sb      s2,32(sp)
    sb      s3,31(sp)
    sb      s4,30(sp)
    sw      a0,52(sp)
    sw      a1,48(sp)
    sw      a2,44(sp)
    sw      a3,40(sp)
    sw      a4,36(sp)
    sb      a6,35(sp)
    sb      a7,34(sp)
    li      a0, 67
    call    putch
    lw      a3,40(sp)
    lb      s4,30(sp)
    lb      a6,35(sp)
    lw      a0,52(sp)
    lw      a1,48(sp)
    lb      a7,34(sp)
    lw      a4,36(sp)
    lw      a2,44(sp)
    lb      s1,33(sp)
    lb      s2,32(sp)
    lb      s3,31(sp)
    j       .branch_false_91
.branch_false_91:
.L16_0:
    slt     a5,a0,a1
    xori    a5,a5,1
    slt     s5,a0,a1
    xori    s5,s5,1
    or      s6,s5,a5
    bnez    s6, .branch_true_94
    j       .branch_false_94
.branch_true_94:
    sb      s1,33(sp)
    sb      s2,32(sp)
    sb      s3,31(sp)
    sb      s4,30(sp)
    sb      s5,28(sp)
    sb      s6,27(sp)
    sw      a0,52(sp)
    sw      a1,48(sp)
    sw      a2,44(sp)
    sw      a3,40(sp)
    sw      a4,36(sp)
    sb      a5,29(sp)
    sb      a6,35(sp)
    sb      a7,34(sp)
    li      a0, 72
    call    putch
    lb      s5,28(sp)
    lw      a3,40(sp)
    lb      a5,29(sp)
    lb      s4,30(sp)
    lb      a6,35(sp)
    lb      s6,27(sp)
    lw      a0,52(sp)
    lw      a1,48(sp)
    lb      a7,34(sp)
    lw      a4,36(sp)
    lw      a2,44(sp)
    lb      s1,33(sp)
    lb      s2,32(sp)
    lb      s3,31(sp)
    j       .branch_false_94
.branch_false_94:
.L17_0:
    xor     s7,a4,a3
    snez    s7, s7
    slt     s8,a2,a1
    xori    s8,s8,1
    and     s9,s8,s7
    bnez    s9, .branch_true_97
    j       .branch_false_97
.branch_true_97:
    sb      s1,33(sp)
    sb      s2,32(sp)
    sb      s3,31(sp)
    sb      s4,30(sp)
    sb      s5,28(sp)
    sb      s6,27(sp)
    sb      s7,26(sp)
    sb      s8,25(sp)
    sb      s9,24(sp)
    sw      a0,52(sp)
    sw      a1,48(sp)
    sw      a2,44(sp)
    sw      a3,40(sp)
    sw      a4,36(sp)
    sb      a5,29(sp)
    sb      a6,35(sp)
    sb      a7,34(sp)
    li      a0, 73
    call    putch
    lb      s5,28(sp)
    lw      a3,40(sp)
    lb      s7,26(sp)
    lb      a5,29(sp)
    lb      s9,24(sp)
    lb      s4,30(sp)
    lb      a6,35(sp)
    lb      s6,27(sp)
    lw      a0,52(sp)
    lw      a1,48(sp)
    lb      a7,34(sp)
    lw      a4,36(sp)
    lb      s8,25(sp)
    lw      a2,44(sp)
    lb      s1,33(sp)
    lb      s2,32(sp)
    lb      s3,31(sp)
    j       .branch_false_97
.branch_false_97:
.L18_0:
    slt     s10,a4,a4
    xori    s10,s10,1
    slt     s11,a3,a3
    sw      a0,52(sp)
    li      a0, 0
    sw      a2,44(sp)
    xor     a2,a1,a0
    snez    a2, a2
    seqz    a0, a2
    sw      a1,48(sp)
    andi    a1,a0,1
    sb      a0,20(sp)
    lw      a0,52(sp)
    sb      a2,21(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    sw      a0,52(sp)
    and     a0,a2,s11
    sw      a1,16(sp)
    or      a1,a0,s10
    sb      s5,28(sp)
    bnez    a1, .branch_true_101
    j       .branch_false_101
.branch_true_101:
    sb      s1,33(sp)
    sb      s2,32(sp)
    sb      s3,31(sp)
    sb      s4,30(sp)
    sb      s6,27(sp)
    sb      s7,26(sp)
    sb      s8,25(sp)
    sb      s9,24(sp)
    sb      s10,23(sp)
    sb      s11,22(sp)
    sb      a0,14(sp)
    sb      a1,13(sp)
    sb      a2,15(sp)
    sw      a3,40(sp)
    sw      a4,36(sp)
    sb      a5,29(sp)
    sb      a6,35(sp)
    sb      a7,34(sp)
    li      a0, 74
    call    putch
    lb      s10,23(sp)
    lw      a3,40(sp)
    lb      s7,26(sp)
    lb      a5,29(sp)
    lb      s9,24(sp)
    lb      s4,30(sp)
    lb      a6,35(sp)
    lb      s6,27(sp)
    lb      a0,14(sp)
    lb      a1,13(sp)
    lb      a7,34(sp)
    lw      a4,36(sp)
    lb      s11,22(sp)
    lb      s8,25(sp)
    lb      a2,15(sp)
    lb      s1,33(sp)
    lb      s2,32(sp)
    lb      s3,31(sp)
    j       .branch_false_101
.branch_false_101:
.L19_0:
    slt     s5,a4,a4
    xori    s5,s5,1
    sb      a0,14(sp)
    slt     a0,a3,a3
    sb      a1,13(sp)
    and     a1,a0,s5
    sb      a0,11(sp)
    lw      a0,48(sp)
    sb      a1,10(sp)
    li      a1, 0
    sb      a2,15(sp)
    xor     a2,a0,a1
    snez    a2, a2
    seqz    a1, a2
    sw      a0,48(sp)
    andi    a0,a1,1
    sw      a0,4(sp)
    lw      a0,52(sp)
    sb      a1,8(sp)
    lw      a1,4(sp)
    sb      a2,9(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    sw      a0,52(sp)
    lb      a0,10(sp)
    sw      a1,4(sp)
    or      a1,a2,a0
    sb      s5,12(sp)
    bnez    a1, .branch_true_105
    j       .branch_false_105
.branch_true_105:
    sb      s1,33(sp)
    sb      s2,32(sp)
    sb      s3,31(sp)
    sb      s4,30(sp)
    sb      s6,27(sp)
    sb      s7,26(sp)
    sb      s8,25(sp)
    sb      s9,24(sp)
    sb      s10,23(sp)
    sb      s11,22(sp)
    sb      a0,10(sp)
    sb      a1,2(sp)
    sb      a2,3(sp)
    sw      a3,40(sp)
    sw      a4,36(sp)
    sb      a5,29(sp)
    sb      a6,35(sp)
    sb      a7,34(sp)
    li      a0, 75
    call    putch
    lb      s10,23(sp)
    lw      a3,40(sp)
    lb      s7,26(sp)
    lb      a5,29(sp)
    lb      s9,24(sp)
    lb      s4,30(sp)
    lb      a6,35(sp)
    lb      s6,27(sp)
    lb      a0,10(sp)
    lb      a1,2(sp)
    lb      a7,34(sp)
    lw      a4,36(sp)
    lb      s11,22(sp)
    lb      s8,25(sp)
    lb      a2,3(sp)
    lb      s1,33(sp)
    lb      s2,32(sp)
    lb      s3,31(sp)
    j       .branch_false_105
.branch_false_105:
.L20_0:
    sb      s1,33(sp)
    sb      s2,32(sp)
    sb      s3,31(sp)
    sb      s4,30(sp)
    sb      s6,27(sp)
    sb      s7,26(sp)
    sb      s8,25(sp)
    sb      s9,24(sp)
    sb      s10,23(sp)
    sb      s11,22(sp)
    sb      a0,10(sp)
    sb      a1,2(sp)
    sb      a2,3(sp)
    sw      a3,40(sp)
    sw      a4,36(sp)
    sb      a5,29(sp)
    sb      a6,35(sp)
    sb      a7,34(sp)
    li      a0, 10
    call    putch
    ld      ra,160(sp)
    ld      s0,152(sp)
    li      a0, 0
    addi    sp,sp,168
    ret
.section ___var
    .data
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
