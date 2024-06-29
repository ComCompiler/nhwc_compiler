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
    addi    sp,sp,-240
    sd      ra,232(sp)
    sd      s0,224(sp)
    addi    s0,sp,240
.L0_0:
    li      a0, 2
    li      a1, 20
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,112
    sw      a0,220(sp)
    sw      a1,216(sp)
    sd      a2,208(sp)
    ld      a0,208(sp)
    li      a1, 0
    li      a2, 80
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 1
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,112
    li      a4, 2
    sw      a4,0(a0)
    li      a5, 0
    li      a6, 0
    mul     a7,a1,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,112
    sw      a1,0(a5)
    li      s1, 0
    j       .while.head_23
.while.head_23:
    lw      a1,220(sp)
    li      a2, 20
    slt     a3,a1,a2
    bnez    a3, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a2, 0
    li      a4, 1
    mul     a6,a4,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,112
    li      a7, 2
    sub     s2,a1,a7
    li      s3, 0
    mul     s4,a4,s2
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,112
    lw      s5,0(s3)
    sub     s6,a1,a4
    li      s7, 0
    mul     s8,a4,s6
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,112
    lw      s9,0(s7)
    li      s10, 0
    mul     s11,a4,a1
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,112
    lw      a4,0(s10)
    add     a6,a4,s9
    add     a7,a6,s5
    sw      a7,0(a2)
    li      s4, 0
    li      s8, 1
    mul     s11,s8,a1
    add     s4,s4,s11
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,112
    lw      s8,0(s4)
    add     s11,s1,s8
    mv      s1, s11
    sd      a0,200(sp)
    li      a0, 0
    sw      a1,220(sp)
    li      a1, 1
    sd      a2,96(sp)
    lw      a2,220(sp)
    sb      a3,107(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,112
    lw      a1,0(a0)
    sw      s1,108(sp)
    sw      s2,92(sp)
    sd      s3,80(sp)
    sd      s4,24(sp)
    sw      s5,76(sp)
    sw      s6,72(sp)
    sd      s7,64(sp)
    sw      s8,20(sp)
    sw      s9,60(sp)
    sd      s10,48(sp)
    sw      s11,16(sp)
    sd      a0,8(sp)
    sw      a1,4(sp)
    sw      a2,220(sp)
    sw      a4,44(sp)
    sd      a5,192(sp)
    sw      a6,40(sp)
    sw      a7,36(sp)
    lw      a0,4(sp)
    call    putint
    li      a0, 10
    call    putch
    lw      a0,220(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,220(sp)
    sw      a2,0(sp)
    lw      s1,108(sp)
    ld      a0,200(sp)
    ld      a5,192(sp)
    j       .while.head_23
.while.exit_23:
    ld      ra,232(sp)
    ld      s0,224(sp)
    sw      s1,108(sp)
    sd      a0,200(sp)
    lw      a0,108(sp)
    addi    sp,sp,240
    ret
