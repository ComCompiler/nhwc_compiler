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
    li      s1, 0
    sw      s1,12(sp)
    li      s1, 0
    sw      s1,8(sp)
    j       .L1_0
.L1_0:
.L2_0:
.L3_0:
    j       .L4_0
.L4_0:
.L5_0:
    lw      s1,8(sp)
    lw      s2,12(sp)
    add     s3,s1,s2
    sw      s3,4(sp)
    lw      s1,4(sp)
    sw      s1,8(sp)
    lw      s1,12(sp)
    li      s2, 1
    add     s3,s1,s2
    sw      s3,0(sp)
    lw      s1,0(sp)
    sw      s1,12(sp)
    j       .L1_0
.L6_0:
    ld      ra,24(sp)
    ld      s0,16(sp)
    lw      a0,8(sp)
    addi    sp,sp,32
    ret

