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
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,48(sp)
    addi    s0,sp,72
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
    li      a7, 1
    add     s1,a1,a7
    j       .while.exit_23
.branch_false_26:
.L1_0:
    add     s2,a2,a1
    add     s3,a1,a7
    j       .while.head_23
.while.exit_23:
    ld      ra,64(sp)
    ld      s0,48(sp)
    mv      a0, a2
    addi    sp,sp,72
    ret
