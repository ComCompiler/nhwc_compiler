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
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L0_0:
    li      a0, 0
    li      a1, 0
    j       .while.head_23
.while.head_23:
    li      a2, 100
    slt     a3,a0,a2
    bnez    a3, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a4, 50
    xor     a5,a0,a4
    seqz    a5, a5
    bnez    a5, .branch_true_26
    j       .branch_false_26
.branch_true_26:
    j       .while.exit_23
.while.exit_23:
    ld      ra,32(sp)
    ld      s0,24(sp)
    mv      a0, a1
    addi    sp,sp,40
    ret
.branch_false_26:
.L1_0:
    add     a6,a1,a0
    li      a7, 1
    add     s1,a0,a7
    j       .while.head_23
