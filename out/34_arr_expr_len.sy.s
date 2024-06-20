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
    li      a0, 0
    mv      a1, a0
    mv      a2, a0
    j       .while.head_22
.while.head_22:
    li      a3, 6
    slt     a4,a1,a3
    bnez    a4, .while.body_22
    j       .while.exit_22
.while.body_22:
    la      a5, arr
    lw      a6,0(a5)
    li      a7, 0
    li      s1, 1
    mul     s2,s1,a1
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    mv      s3, s3
    add     s4,a2,s3
    add     s5,a1,s1
    j       .while.head_22
.while.exit_22:
    ld      ra,104(sp)
    ld      s0,88(sp)
    mv      a0, a2
    addi    sp,sp,112
    ret
.section        .data
    .align 4
    .globl arr
    .type arr,@object
arr:
    .word 1
    .word 2
    .word 33
    .word 4
    .word 5
    .word 6
    .zero 19
    .align 4
    .globl N
    .type N,@object
N:
    .word -1
