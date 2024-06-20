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
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L0_0:
    li      a0, 0xf
    li      a1, 0xc
    li      a2, 075
    add     a3,a1,a2
    add     a4,a0,a3
    ld      ra,24(sp)
    ld      s0,16(sp)
    mv      a0, a4
    addi    sp,sp,32
    ret
