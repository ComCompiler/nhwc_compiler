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
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,40(sp)
    addi    s0,sp,64
.L0_0:
    li      a0, 0
    mv      a1, a0
    mv      a2, a0
    j       .while.head_23
.while.head_23:
    li      a3, 100
    slt     a4,a1,a3
    bnez    a4, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a5, 50
    xor     a6,a1,a5
    sltiu   a6,a6,1
    bnez    a6, .branch_true_26
    j       .branch_false_26
.branch_true_26:
    j       .while.exit_23
.while.exit_23:
    ld      ra,56(sp)
    ld      s0,40(sp)
    mv      a0, a2
    addi    sp,sp,64
    ret
.branch_false_26:
.L1_0:
    add     a7,a2,a1
    li      s1, 1
    add     s2,a1,s1
    j       .while.head_23
