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
    li      a0, 10
    li      a1, 5
    div     a2,a0,a1
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a2,4(sp)
    sw      a0,12(sp)
    lw      a0,4(sp)
    addi    sp,sp,32
    ret
