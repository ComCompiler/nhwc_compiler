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
    addi    sp,sp,-224
    sd      ra,216(sp)
    sd      s0,208(sp)
    addi    s0,sp,224
.L0_0:
    li      a0, 2
    li      a1, 20
    li      a2, 0
    li      a3, 1
    li      a4, 1
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    li      a6, 2
    sd      a6,0(a2)
    li      a7, 0
    li      s1, 0
    add     a7,a7,a5
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    sd      a4,0(a7)
    li      s2, 0
    j       .while.head_23
.while.head_23:
    li      s3, 20
    slt     s4,a0,s3
    bnez    s4, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      s5, 0
    add     s5,s5,a5
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    sub     s6,a6,a0
    li      s7, 0
    add     s7,s7,a5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    sub     s8,a0,a4
    li      s9, 0
    add     s9,s9,a5
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    add     a3,s10,s11
    li      a4, 0
    li      a6, 1
    add     a4,a4,a5
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    add     s1,a6,a3
    sd      s1,0(s5)
    li      s3, 0
    sw      a0,204(sp)
    li      a0, 1
    sw      a1,200(sp)
    add     s3,s3,a5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    sw      a1,204(sp)
    add     a1,s2,a0
    sw      a0,20(sp)
    li      a0, 0
    sw      a1,16(sp)
    li      a1, 1
    sd      a2,192(sp)
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sw      s1,32(sp)
    sw      s2,100(sp)
    sd      s3,24(sp)
    sb      s4,99(sp)
    sd      s5,88(sp)
    sw      s6,84(sp)
    sd      s7,72(sp)
    sw      s8,64(sp)
    sd      s9,56(sp)
    sw      s10,52(sp)
    sw      s11,68(sp)
    sd      a0,8(sp)
    call    putint
    li      a0, 10
    call    putch
    add     a0,a2,a1
    j       .while.head_23
.while.exit_23:
    ld      ra,216(sp)
    ld      s0,208(sp)
    lw      a0,100(sp)
    addi    sp,sp,224
    ret
