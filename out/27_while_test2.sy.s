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
    .globl FourWhile
    .type FourWhile,@function
FourWhile:
    addi    sp,sp,-136
    sd      ra,128(sp)
    sd      s0,112(sp)
    addi    s0,sp,136
.L1_0:
    li      a0, 5
    mv      a1, a0
    li      a2, 6
    mv      a3, a2
    li      a4, 7
    mv      a5, a4
    li      a6, 10
    mv      a7, a6
    j       .while.head_27
.while.head_27:
    li      s1, 20
    slt     s2,a1,s1
    bnez    s2, .while.body_27
    j       .while.exit_27
.while.body_27:
    li      s3, 3
    add     s4,a1,s3
    j       .while.head_31
.while.head_31:
    slt     s5,a3,a6
    bnez    s5, .while.body_31
    j       .while.exit_31
.while.body_31:
    li      s6, 1
    add     s7,a3,s6
    j       .while.head_35
.while.head_35:
    xor     s8,a5,a4
    sltiu   s8,s8,1
    bnez    s8, .while.body_35
    j       .while.exit_35
.while.body_35:
    sub     s9,a5,s6
    j       .while.head_39
.while.head_39:
    slt     s10,a7,s1
    bnez    s10, .while.body_39
    j       .while.exit_39
.while.body_39:
    add     s11,a7,s3
    j       .while.head_39
.while.exit_39:
    sub     a0,a7,s6
    j       .while.head_35
.while.exit_35:
    add     a2,a5,s6
    j       .while.head_31
.while.exit_31:
    li      a4, 2
    sub     a6,a3,a4
    j       .while.head_27
.while.exit_27:
    add     a4,a3,a7
    add     s1,a4,a5
    add     s3,a1,s1
    ld      ra,128(sp)
    ld      s0,112(sp)
    mv      a0, s3
    addi    sp,sp,136
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,40
.L0_0:
    sw      s1,16(sp)
    sb      s2,79(sp)
    sw      s3,8(sp)
    sw      s4,75(sp)
    sb      s5,74(sp)
    sw      s7,68(sp)
    sb      s8,67(sp)
    sw      s9,60(sp)
    sb      s10,59(sp)
    sw      s11,55(sp)
    call    FourWhile
    sw      a0,48(sp)
    sw      a0,8(sp)
    ld      ra,32(sp)
    ld      s0,16(sp)
    mv      a0, a0
    addi    sp,sp,40
    ret
