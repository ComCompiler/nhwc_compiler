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
    li      a0, 10
    li      a1, 30
    li      a2, -5
    add     a3,a1,a2
    add     a4,a3,a2
    sub     a5,a0,a4
    ld      ra,32(sp)
    ld      s0,24(sp)
    mv      a0, a5
    addi    sp,sp,40
    ret
