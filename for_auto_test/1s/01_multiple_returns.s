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
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L0_0:
    li      a0, 8
    li      a1, 12
    add     a2,a0,a1
    mv      a3, a2
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a3,36(sp)
    sw      a0,32(sp)
    lw      a0,36(sp)
    addi    sp,sp,56
    ret
.L1_0:
    li      a0, 9
    lw      a3,36(sp)
    mul     a4,a3,a0
    mv      a3, a4
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a3,36(sp)
    sw      a0,20(sp)
    lw      a0,36(sp)
    addi    sp,sp,56
    ret
.L2_0:
    li      a0, 4
    li      a3, 4
    lw      a5,32(sp)
    sub     a6,a3,a5
    mul     a7,a6,a1
    mv      s1, a7
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      s1,36(sp)
    sw      a0,12(sp)
    lw      a0,36(sp)
    addi    sp,sp,56
    ret
.L3_0:
    ld      ra,48(sp)
    ld      s0,40(sp)
    lw      a0,36(sp)
    addi    sp,sp,56
    ret
