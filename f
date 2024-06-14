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
    sw      a0,4(sp)
.L23_0:
    lw      s2,4(sp)
    la      s1, a_0
    sd      s2,0(s1)
    la      s1, a_0
    lw      s2,0(s1)
    sw      s2,0(sp)
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
    sw      a0,4(sp)
.L22_0:
    lw      s2,4(sp)
    la      s1, b_0
    sd      s2,0(s1)
    la      s1, b_0
    lw      s2,0(s1)
    sw      s2,0(sp)
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
    sw      a0,4(sp)
.L21_0:
    lw      s2,4(sp)
    la      s1, d_0
    sd      s2,0(s1)
    la      s1, d_0
    lw      s2,0(s1)
    sw      s2,0(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    lw      a0,0(sp)
    addi    sp,sp,24
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-160
    sd      ra,152(sp)
    sd      s0,144(sp)
    addi    s0,sp,160
.L0_0:
    li      s2, 2
    la      s1, a_0
    sd      s2,0(s1)
    li      s2, 3
    la      s1, b_0
    sd      s2,0(s1)
    j       .L1_0
.L1_0:
    li      a0, 1
    call    set_b
    sw      a0,92(sp)
    li      a0, 0
    call    set_a
    sw      a0,88(sp)
    lw      s1,88(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,87(sp)
    lw      s1,92(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,87(sp)
    lb      s1,87(sp)
    lb      s2,86(sp)
    and     s3,s1,s2
    sb      s3,85(sp)
    lb      s1,85(sp)
    bnez    s1, .branch_true_37
    j       .branch_false_37
.branch_false_37:
.L2_0:
    la      s1, a_0
    lw      s2,0(s1)
    sw      s2,140(sp)
    lw      a0,140(sp)
    call    putint
    li      a0, 32
    call    putch
    la      s1, b_0
    lw      s2,0(s1)
    sw      s2,136(sp)
    lw      a0,136(sp)
    call    putint
    li      a0, 32
    call    putch
    li      s2, 2
    la      s1, a_0
    sd      s2,0(s1)
    li      s2, 3
    la      s1, b_0
    sd      s2,0(s1)
    j       .L3_0
.L3_0:
    li      a0, 1
    call    set_b
    sw      a0,80(sp)
    li      a0, 0
    call    set_a
    sw      a0,76(sp)
    lw      s1,76(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,84(sp)
    lw      s1,80(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,84(sp)
    lb      s1,84(sp)
    lb      s2,75(sp)
    and     s3,s1,s2
    sb      s3,74(sp)
    lb      s1,74(sp)
    bnez    s1, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    j       .branch_false_46
.branch_false_46:
.L4_0:
    la      s1, a_0
    lw      s2,0(s1)
    sw      s2,132(sp)
    lw      a0,132(sp)
    call    putint
    li      a0, 32
    call    putch
    la      s1, b_0
    lw      s2,0(s1)
    sw      s2,128(sp)
    lw      a0,128(sp)
    call    putint
    li      a0, 10
    call    putch
    li      s1, 1
    sw      s1,124(sp)
    li      s2, 2
    la      s1, d_0
    sd      s2,0(s1)
    j       .L5_0
.L5_0:
    li      a0, 3
    call    set_d
    sw      a0,68(sp)
    lw      s1,68(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,73(sp)
    li      s1, true
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,73(sp)
    lb      s1,73(sp)
    lb      s2,72(sp)
    and     s3,s1,s2
    sb      s3,67(sp)
    lb      s1,67(sp)
    bnez    s1, .branch_true_55
    j       .branch_false_55
.branch_true_55:
    j       .branch_false_55
.branch_false_55:
.L6_0:
    la      s1, d_0
    lw      s2,0(s1)
    sw      s2,120(sp)
    lw      a0,120(sp)
    call    putint
    li      a0, 32
    call    putch
    j       .L7_0
.L7_0:
    li      a0, 4
    call    set_d
    sw      a0,60(sp)
    lw      s1,60(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,66(sp)
    li      s1, true
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,66(sp)
    lb      s1,66(sp)
    lb      s2,65(sp)
    or      s3,s1,s2
    sb      s3,64(sp)
    lb      s1,64(sp)
    bnez    s1, .branch_true_60
    j       .branch_false_60
.branch_false_60:
.L8_0:
    la      s1, d_0
    lw      s2,0(s1)
    sw      s2,116(sp)
    lw      a0,116(sp)
    call    putint
    li      a0, 10
    call    putch
    j       .L9_0
.L9_0:
    li      s1, 16
    li      s2, 0
    slt     s3,s2,s1
    xori    s3,s3,1
    sb      s3,59(sp)
    lb      s1,59(sp)
    bnez    s1, .branch_true_65
    j       .branch_false_65
.branch_true_65:
    li      a0, 65
    call    putch
    j       .branch_false_65
.branch_false_65:
.L10_0:
    li      s1, 18
    li      s2, 18
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,58(sp)
    lb      s1,58(sp)
    bnez    s1, .branch_true_69
    j       .branch_false_69
.branch_true_69:
    li      a0, 66
    call    putch
    j       .branch_false_69
.branch_false_69:
.L11_0:
    li      s1, 1
    li      s2, 8
    slt     s3,s1,s2
    sb      s3,57(sp)
    lb      s1,57(sp)
    andi    s3,s1,1
    sw      s3,52(sp)
    lw      s1,52(sp)
    li      s2, 1
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,56(sp)
    lb      s1,56(sp)
    bnez    s1, .branch_true_72
    j       .branch_false_72
.branch_true_72:
    li      a0, 67
    call    putch
    j       .branch_false_72
.branch_false_72:
.L12_0:
    li      s1, 3
    li      s2, 4
    slt     s3,s2,s1
    sb      s3,51(sp)
    lb      s1,51(sp)
    andi    s3,s1,1
    sw      s3,44(sp)
    lw      s1,44(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    sb      s3,50(sp)
    lb      s1,50(sp)
    bnez    s1, .branch_true_76
    j       .branch_false_76
.branch_true_76:
    li      a0, 68
    call    putch
    j       .branch_false_76
.branch_false_76:
.L13_0:
    li      s1, 1
    li      s2, false
    xor     s3,s1,s2
    sltiu   s3,s3,1
    sb      s3,49(sp)
    lb      s1,49(sp)
    bnez    s1, .branch_true_80
    j       .branch_false_80
.branch_true_80:
    li      a0, 69
    call    putch
    j       .branch_false_80
.branch_false_80:
.L14_0:
    li      s1, 0
    li      s2, 0
    sub     s3,s1,s2
    sw      s3,40(sp)
    lw      s1,40(sp)
    li      s2, -1
    xor     s3,s1,s2
    sltiu   s3,s3,1
    sb      s3,48(sp)
    lb      s1,48(sp)
    bnez    s1, .branch_true_83
    j       .branch_false_83
.branch_true_83:
    li      a0, 70
    call    putch
    j       .branch_false_83
.branch_false_83:
.L15_0:
    li      a0, 10
    call    putch
    li      s1, 0
    sw      s1,112(sp)
    li      s1, 1
    sw      s1,108(sp)
    li      s1, 2
    sw      s1,104(sp)
    li      s1, 3
    sw      s1,100(sp)
    li      s1, 4
    sw      s1,96(sp)
    j       .while.head_88
.while.head_88:
    lw      s1,112(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,39(sp)
    lw      s1,108(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,39(sp)
    lb      s1,39(sp)
    lb      s2,38(sp)
    and     s3,s1,s2
    sb      s3,37(sp)
    lb      s1,37(sp)
    bnez    s1, .while.body_88
    j       .while.exit_88
.while.body_88:
    li      a0, 32
    call    putch
    j       .while.head_88
.while.exit_88:
    lw      s1,112(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,36(sp)
    lw      s1,108(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,36(sp)
    lb      s1,36(sp)
    lb      s2,35(sp)
    or      s3,s1,s2
    sb      s3,34(sp)
    lb      s1,34(sp)
    bnez    s1, .branch_true_91
    j       .branch_false_91
.branch_true_91:
    li      a0, 67
    call    putch
    j       .branch_false_91
.branch_false_91:
.L16_0:
    lw      s1,108(sp)
    lw      s2,112(sp)
    slt     s3,s1,s2
    xori    s3,s3,1
    sb      s3,33(sp)
    lw      s1,112(sp)
    lw      s2,108(sp)
    slt     s3,s2,s1
    xori    s3,s3,1
    sb      s3,32(sp)
    lb      s1,32(sp)
    lb      s2,33(sp)
    or      s3,s1,s2
    sb      s3,31(sp)
    lb      s1,31(sp)
    bnez    s1, .branch_true_94
    j       .branch_false_94
.branch_true_94:
    li      a0, 72
    call    putch
    j       .branch_false_94
.branch_false_94:
.L17_0:
    lw      s1,96(sp)
    lw      s2,100(sp)
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,30(sp)
    lw      s1,104(sp)
    lw      s2,108(sp)
    slt     s3,s2,s1
    xori    s3,s3,1
    sb      s3,29(sp)
    lb      s1,29(sp)
    lb      s2,30(sp)
    and     s3,s1,s2
    sb      s3,28(sp)
    lb      s1,28(sp)
    bnez    s1, .branch_true_97
    j       .branch_false_97
.branch_true_97:
    li      a0, 73
    call    putch
    j       .branch_false_97
.branch_false_97:
.L18_0:
    lw      s1,96(sp)
    lw      s2,96(sp)
    slt     s3,s2,s1
    xori    s3,s3,1
    sb      s3,27(sp)
    lw      s1,100(sp)
    lw      s2,100(sp)
    slt     s3,s1,s2
    sb      s3,26(sp)
    lw      s1,108(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,25(sp)
    lb      s1,25(sp)
    xori    s3,s1,-1
    sb      s3,24(sp)
    lb      s1,24(sp)
    andi    s3,s1,1
    sw      s3,20(sp)
    lw      s1,112(sp)
    lw      s2,20(sp)
    xor     s3,s1,s2
    sltiu   s3,s3,1
    sb      s3,19(sp)
    lb      s1,19(sp)
    lb      s2,26(sp)
    and     s3,s1,s2
    sb      s3,18(sp)
    lb      s1,18(sp)
    lb      s2,27(sp)
    or      s3,s1,s2
    sb      s3,17(sp)
    lb      s1,17(sp)
    bnez    s1, .branch_true_101
    j       .branch_false_101
.branch_true_101:
    li      a0, 74
    call    putch
    j       .branch_false_101
.branch_false_101:
.L19_0:
    lw      s1,96(sp)
    lw      s2,96(sp)
    slt     s3,s2,s1
    xori    s3,s3,1
    sb      s3,16(sp)
    lw      s1,100(sp)
    lw      s2,100(sp)
    slt     s3,s1,s2
    sb      s3,15(sp)
    lb      s1,15(sp)
    lb      s2,16(sp)
    and     s3,s1,s2
    sb      s3,14(sp)
    lw      s1,108(sp)
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,13(sp)
    lb      s1,13(sp)
    xori    s3,s1,-1
    sb      s3,12(sp)
    lb      s1,12(sp)
    andi    s3,s1,1
    sw      s3,8(sp)
    lw      s1,112(sp)
    lw      s2,8(sp)
    xor     s3,s1,s2
    sltiu   s3,s3,1
    sb      s3,7(sp)
    lb      s1,7(sp)
    lb      s2,14(sp)
    or      s3,s1,s2
    sb      s3,6(sp)
    lb      s1,6(sp)
    bnez    s1, .branch_true_105
    j       .branch_false_105
.branch_true_105:
    li      a0, 75
    call    putch
    j       .branch_false_105
.branch_false_105:
.L20_0:
    li      a0, 10
    call    putch
    ld      ra,152(sp)
    ld      s0,144(sp)
    li      a0, 0
    addi    sp,sp,160
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

