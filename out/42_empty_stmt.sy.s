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
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,32(sp)
    addi    s0,sp,56
.L0_0:
    li      a0, 10
    mv      a1, a0
    li      a2, 2
    mul     a3,a1,a2
    li      a4, 1
    add     a5,a3,a4
    ld      ra,48(sp)
    ld      s0,32(sp)
    mv      a0, a5
    addi    sp,sp,56
    ret
