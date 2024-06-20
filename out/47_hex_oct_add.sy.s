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
    li      a0, 0xf
    mv      a1, a0
    li      a2, 0xc
    mv      a3, a2
    li      a4, 075
    add     a5,a3,a4
    add     a6,a1,a5
    ld      ra,56(sp)
    ld      s0,40(sp)
    mv      a0, a6
    addi    sp,sp,64
    ret
