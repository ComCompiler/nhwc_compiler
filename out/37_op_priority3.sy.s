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
    li      a0, 10
    mv      a1, a0
    li      a2, 30
    mv      a3, a2
    li      a4, -5
    add     a5,a3,a4
    add     a6,a5,a4
    sub     a7,a1,a6
    ld      ra,64(sp)
    ld      s0,48(sp)
    mv      a0, a7
    addi    sp,sp,72
    ret
