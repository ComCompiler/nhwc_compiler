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
    sd      s0,16(sp)
    addi    s0,sp,40
.L0_0:
    li      a0, 10
    mv      a1, a0
    j       .L1_0
.L1_0:
    li      a2, 0
    xor     a3,a1,a2
    sltiu   a3,a3,1
    xori    a3,a3,1
    xori    a4,a3,-1
    mv      a5, a5
    xori    a6,a5,-1
    mv      a7, a7
    xori    s1,a7,-1
    sub     s2,a2,s1
    bnez    s2, .branch_true_21
    j       .branch_false_21
.branch_true_21:
    li      s3, -1
    j       .L2_0
.branch_false_21:
    j       .L2_0
.L2_0:
.L3_0:
    ld      ra,32(sp)
    ld      s0,16(sp)
    mv      a0, a1
    addi    sp,sp,40
    ret
