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
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L0_0:
    li      a0, 10
    li      a1, 4
    li      a2, 2
    li      a3, 2
    sub     a4,a1,a3
    add     a5,a2,a0
    mul     a6,a5,a4
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a6,4(sp)
    sw      a0,28(sp)
    lw      a0,4(sp)
    addi    sp,sp,48
    ret
