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
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L0_0:
    li      a0, 10
    j       .L1_0
.L1_0:
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    xori    a3,a2,-1
    xori    a5,a4,-1
    xori    a7,a6,-1
    sub     s1,a1,a7
    bnez    s1, .branch_true_21
    j       .branch_false_21
.branch_true_21:
    j       .L2_0
.branch_false_21:
    j       .L2_0
.L2_0:
.L3_0:
    ld      ra,24(sp)
    ld      s0,16(sp)
    addi    sp,sp,32
    ret
