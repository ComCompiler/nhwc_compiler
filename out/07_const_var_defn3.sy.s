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
    sd      s0,24(sp)
    addi    s0,sp,48
.L0_0:
    li      a0, 10
    mv      a1, a0
    li      a2, 5
    mv      a3, a2
    ld      ra,40(sp)
    ld      s0,24(sp)
    li      a0, 5
    addi    sp,sp,48
    ret
