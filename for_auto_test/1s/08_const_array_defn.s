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


.section ___func
    .text
    .align 4
    .globl main
    .type main,@function
main:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L0_0:
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, a
    add     a0,a0,a4
    lw      a5,0(a0)
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a5,4(sp)
    sd      a0,8(sp)
    lw      a0,4(sp)
    addi    sp,sp,32
    ret
.section ___var
    .data
    .align 4
    .globl a
    .type a,@object
a:
    .word 0
    .word 1
    .word 2
    .word 3
    .word 4
    .zero 4
