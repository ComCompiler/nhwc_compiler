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
    li      a0, 3
    li      a1, 9
    li      a2, 3
    li      fa1, 814313567
    fmv.s   fa0, fa1
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    addi    sp,sp,32
    ret
