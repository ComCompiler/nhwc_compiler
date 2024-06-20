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
    addi    sp,sp,-344
    sd      ra,336(sp)
    sd      s0,320(sp)
    addi    s0,sp,344
.L0_0:
    li      a0, 2
    mv      a1, a0
    li      a2, 20
    mv      a3, a2
    li      a4, 0
    li      a5, 1
    li      a6, 0
    mul     a7,a5,a6
    add     a4,a4,a7
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    sd      a5,0(a4)
    li      s1, 0
    li      s2, 1
    add     s1,s1,a7
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    sd      a0,0(s1)
    mv      s3, a6
    j       .while.head_23
.while.head_23:
    slt     s4,a1,a2
    bnez    s4, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      s5, 0
    add     s5,s5,a7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    sub     s6,a0,a1
    li      s7, 0
    add     s7,s7,a7
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    sub     s8,a1,s2
    li      s9, 0
    add     s9,s9,a7
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    mv      s10, s10
    mv      s11, s11
    add     a0,s10,s11
    li      a2, 0
    add     a2,a2,a7
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    mv      a5, a5
    add     a6,a5,a0
    sd      a6,0(s5)
    li      s2, 0
    sw      a0,104(sp)
    li      a0, 1
    add     s2,s2,a7
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    mv      a0, a0
    sw      a1,312(sp)
    add     a1,s3,a0
    sw      a0,48(sp)
    li      a0, 0
    sw      a1,40(sp)
    li      a1, 1
    sd      a2,88(sp)
    mv      a2, a2
    add     a0,a0,a7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s1,272(sp)
    sd      s2,56(sp)
    sw      s3,180(sp)
    sb      s4,179(sp)
    sd      s5,171(sp)
    sw      s6,164(sp)
    sd      s7,152(sp)
    sw      s8,136(sp)
    sd      s9,120(sp)
    sw      s10,112(sp)
    sw      s11,144(sp)
    sd      a0,24(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    add     a0,a2,a1
    j       .while.head_23
.while.exit_23:
    ld      ra,336(sp)
    ld      s0,320(sp)
    lw      a0,180(sp)
    addi    sp,sp,344
    ret
