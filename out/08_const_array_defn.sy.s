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
    sd      s0,56(sp)
    addi    s0,sp,80
.L0_0:
    la      a0, a
    lw      a1,0(a0)
    li      a2, 0
    li      a3, 1
    li      a4, 4
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    ld      ra,72(sp)
    ld      s0,56(sp)
    lw      a0,8(sp)
    addi    sp,sp,80
    ret
.section        .data
    .align 4
    .globl a
    .type a,@object
a:
    .word 0
    .word 1
    .word 2
    .word 3
    .word 4
    .zero 16
