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
    .globl deepWhileBr
    .type deepWhileBr,@function
deepWhileBr:
    addi    sp,sp,-92
    sd      ra,84(sp)
    sd      s0,68(sp)
    addi    s0,sp,92
.L1_0:
    add     a2,a0,a1
    mv      a3, a2
    j       .while.head_22
.while.head_22:
    li      a4, 75
    slt     a5,a3,a4
    bnez    a5, .while.body_22
    j       .while.exit_22
.while.body_22:
    li      a6, 42
    mv      a7, a6
    j       .L2_0
.L2_0:
    li      s1, 100
    slt     s2,a3,s1
    bnez    s2, .branch_true_27
    j       .branch_false_27
.branch_true_27:
    add     s3,a3,a7
    j       .L3_0
.L3_0:
    li      s4, 99
    slt     s5,s4,a3
    bnez    s5, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    li      s6, 2
    mul     s7,a7,s6
    mv      s8, s7
    j       .L4_0
.L4_0:
    li      s9, 1
    li      s10, 1
    xor     s11,s9,s10
    sltiu   s11,s11,1
    bnez    s11, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    mul     a4,s8,s6
    j       .branch_false_36
.branch_false_36:
.branch_false_31:
.branch_false_27:
    j       .while.head_22
.while.exit_22:
    ld      ra,84(sp)
    ld      s0,68(sp)
    mv      a0, a3
    addi    sp,sp,92
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L0_0:
    mv      a6, s6
    sb      s2,30(sp)
    sw      s3,24(sp)
    sb      s5,23(sp)
    sw      s7,8(sp)
    sw      s8,16(sp)
    sb      s11,7(sp)
    sw      a6,16(sp)
    sw      a0,60(sp)
    mv      a0, a0
    sw      a1,52(sp)
    mv      a1, a1
    call    deepWhileBr
    sw      a0,8(sp)
    ld      ra,40(sp)
    ld      s0,24(sp)
    mv      a0, a0
    addi    sp,sp,48
    ret
