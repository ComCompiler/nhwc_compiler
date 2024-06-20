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
    .globl main
    .type main,@function
main:
    addi    sp,sp,-112
    sd      ra,104(sp)
    sd      s0,88(sp)
    addi    s0,sp,112
.L0_0:
    la      a0, k
    li      a1, 3389
    sd      a1,0(a0)
    j       .L1_0
.L1_0:
    la      a2, k
    lw      a3,0(a2)
    mv      a4, a4
    li      a5, 10000
    slt     a6,a4,a5
    bnez    a6, .branch_true_21
    j       .branch_false_21
.branch_true_21:
    la      a7, k
    lw      s1,0(a7)
    mv      s2, s2
    li      s3, 1
    add     s4,s2,s3
    la      s5, k
    sd      s4,0(s5)
    li      s6, 112
    mv      s7, s6
    j       .while.head_26
.while.head_26:
    li      s8, 10
    slt     s9,s8,s7
    bnez    s9, .while.body_26
    j       .while.exit_26
.while.body_26:
    li      s10, 88
    sub     s11,s7,s10
    j       .L2_0
.L2_0:
    li      a0, 1000
    slt     a1,s7,a0
    bnez    a1, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    li      a0, 9
    mv      a2, a0
    li      a0, 11
    mv      a3, a0
    sub     a0,s7,a2
    li      a5, 11
    mv      a7, a5
    add     a5,a7,a3
    add     s1,s7,a5
    j       .branch_false_30
.branch_false_30:
    j       .while.head_26
.while.exit_26:
    sw      s1,12(sp)
    sw      s2,72(sp)
    sw      s4,68(sp)
    sw      s7,60(sp)
    sb      s9,59(sp)
    sw      s11,55(sp)
    sw      a0,36(sp)
    mv      a0, a0
    call    putint
    j       .branch_false_21
.branch_false_21:
.L3_0:
    la      a0, k
    lw      s1,0(a0)
    ld      ra,104(sp)
    ld      s0,88(sp)
    lw      a0,4(sp)
    addi    sp,sp,112
    ret
.section        .data
    .align 4
    .globl k
    .type k,@object
k:
    .word 0
