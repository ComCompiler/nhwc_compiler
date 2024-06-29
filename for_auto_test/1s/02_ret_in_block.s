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
    addi    sp,sp,-144
    sd      ra,136(sp)
    sd      s0,128(sp)
    addi    s0,sp,144
.L0_0:
    li      a0, 893
    li      a1, 716
    li      a2, 837
    li      a3, 128
    add     a4,a2,a3
    mv      a2, a4
    add     a5,a1,a2
    mv      a1, a5
    li      a6, 241
    add     a7,a2,a6
    li      s1, 412
    sub     s2,a7,s1
    mv      a2, s2
    li      s3, 771
    add     s4,a6,s3
    li      s5, 18
    sub     s6,s4,s5
    mv      a6, s6
    li      s7, 66
    add     s8,a6,s7
    mv      s3, s8
    add     s9,a6,a2
    li      s10, 33
    sub     s11,s9,s10
    mv      a6, s11
    li      a3, 55
    sub     s1,a6,a3
    mv      a2, s1
    add     a3,a2,a6
    li      s5, 21
    rem     s7,a3,s5
    ld      ra,136(sp)
    ld      s0,128(sp)
    sw      s7,60(sp)
    sw      a0,124(sp)
    lw      a0,60(sp)
    addi    sp,sp,144
    ret
.L1_0:
    add     a0,a1,a2
    li      s5, 97
    sub     s7,a0,s5
    mv      a2, s7
    sub     s10,a1,a2
    li      s5, 62
    sw      a0,56(sp)
    rem     a0,s10,s5
    mv      a1, a0
    add     s5,a2,a1
    sw      a0,44(sp)
    li      a0, 17
    sw      a1,120(sp)
    rem     a1,s5,a0
    ld      ra,136(sp)
    ld      s0,128(sp)
    sw      a1,36(sp)
    lw      a0,36(sp)
    addi    sp,sp,144
    ret
.L2_0:
    lw      a0,120(sp)
    add     a1,a2,a0
    sw      a0,120(sp)
    li      a0, 13
    sw      a2,116(sp)
    rem     a2,a1,a0
    ld      ra,136(sp)
    ld      s0,128(sp)
    sw      a2,28(sp)
    lw      a0,28(sp)
    addi    sp,sp,144
    ret
.L3_0:
    lw      a0,120(sp)
    lw      a2,124(sp)
    sw      a1,32(sp)
    mul     a1,a0,a2
    sw      a0,120(sp)
    li      a0, 83
    sw      a2,124(sp)
    rem     a2,a1,a0
    mv      a0, a2
    sw      a1,24(sp)
    lw      a1,120(sp)
    sw      a2,20(sp)
    add     a2,a0,a1
    sw      a0,124(sp)
    li      a0, 771
    sw      a1,120(sp)
    sub     a1,a2,a0
    mv      a0, a1
    sw      a0,120(sp)
    lw      a0,124(sp)
    sw      a1,12(sp)
    lw      a1,120(sp)
    sw      a2,16(sp)
    add     a2,a0,a1
    sw      a0,124(sp)
    li      a0, 11
    sw      a1,120(sp)
    rem     a1,a2,a0
    ld      ra,136(sp)
    ld      s0,128(sp)
    sw      a1,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,144
    ret
