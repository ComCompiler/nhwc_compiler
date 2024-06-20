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
    li      a0, 5
    mv      a1, a0
    la      a2, b
    lw      a3,0(a2)
    mv      a4, a4
    add     a5,a1,a4
    ld      ra,48(sp)
    ld      s0,32(sp)
    mv      a0, a5
    addi    sp,sp,56
    ret
.section        .data
    .align 4
    .globl b
    .type b,@object
b:
    .word 5
    .align 4
    .globl a
    .type a,@object
a:
    .word 3
