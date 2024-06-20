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
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L0_0:
    li      a0, 10
    li      a1, 4
    li      a2, 2
    li      a3, 2
    mul     a4,a0,a1
    sub     a5,a4,a3
    add     a6,a2,a5
    ld      ra,40(sp)
    ld      s0,32(sp)
    mv      a0, a6
    addi    sp,sp,48
    ret
