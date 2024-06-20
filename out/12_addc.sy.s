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
    li      a1, 5
    add     a2,a0,a1
    ld      ra,32(sp)
    ld      s0,16(sp)
    mv      a0, a2
    addi    sp,sp,40
    ret
.section        .data
    .align 4
    .globl a
    .type a,@object
a:
    .word 10
