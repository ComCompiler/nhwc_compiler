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
    li      a0, 0
    li      a1, 0
    j       .while.head_22
.while.head_22:
    li      a2, 6
    slt     a3,a0,a2
    bnez    a3, .while.body_22
    j       .while.exit_22
.while.body_22:
    la      a4, arr
    lw      a5,0(a4)
    li      a6, 0
    li      a7, 1
    mul     s1,a7,a0
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    add     s3,a1,s2
    add     s4,a0,a7
    j       .while.head_22
.while.exit_22:
    ld      ra,72(sp)
    ld      s0,64(sp)
    mv      a0, a1
    addi    sp,sp,80
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
