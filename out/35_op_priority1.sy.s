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
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,64(sp)
    addi    s0,sp,88
.L0_0:
    li      a0, 10
    mv      a1, a0
    li      a2, 4
    mv      a3, a2
    li      a4, 2
    mv      a5, a4
    mv      a6, a4
    mul     a7,a1,a3
    sub     s1,a7,a6
    add     s2,a5,s1
    ld      ra,80(sp)
    ld      s0,64(sp)
    mv      a0, s2
    addi    sp,sp,88
    ret
