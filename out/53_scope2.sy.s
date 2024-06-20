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
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
.L0_0:
    la      a0, k
    li      a1, 3389
    sd      a1,0(a0)
    j       .L1_0
.L1_0:
    la      a2, k
    lw      a3,0(a2)
    li      a5, 10000
    slt     a6,a4,a5
    bnez    a6, .branch_true_21
    j       .branch_false_21
.branch_true_21:
    la      a7, k
    lw      s1,0(a7)
    li      s3, 1
    add     s4,s2,s3
    la      s5, k
    sd      s4,0(s5)
    li      s6, 112
    j       .while.head_26
.while.head_26:
    li      s7, 10
    slt     s8,s7,s6
    bnez    s8, .while.body_26
    j       .while.exit_26
.while.body_26:
    li      s9, 88
    sub     s10,s6,s9
    j       .L2_0
.L2_0:
    li      s11, 1000
    slt     a0,s6,s11
    bnez    a0, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    li      a1, 9
    li      a2, 11
    sub     a3,s6,a1
    li      a5, 11
    add     a7,a5,a2
    add     s1,s6,a7
    j       .branch_false_30
.branch_false_30:
    j       .while.head_26
.while.exit_26:
    sw      s1,8(sp)
    sw      s2,52(sp)
    sw      s4,48(sp)
    sw      s6,44(sp)
    sb      s8,43(sp)
    sw      s10,36(sp)
    sb      a0,35(sp)
    call    putint
    j       .branch_false_21
.branch_false_21:
.L3_0:
    la      a0, k
    lw      s1,0(a0)
    ld      ra,72(sp)
    ld      s0,64(sp)
    lw      a0,4(sp)
    addi    sp,sp,80
    ret
.section        .data
    .align 4
    .globl k
    .type k,@object
k:
    .word 0
