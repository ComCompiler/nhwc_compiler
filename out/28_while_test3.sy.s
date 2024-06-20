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
    .globl EightWhile
    .type EightWhile,@function
EightWhile:
    addi    sp,sp,-336
    sd      ra,328(sp)
    sd      s0,312(sp)
    addi    s0,sp,336
.L1_0:
    li      a0, 5
    mv      a1, a0
    li      a2, 6
    mv      a3, a2
    li      a4, 7
    mv      a5, a4
    li      a6, 10
    mv      a7, a6
    j       .while.head_31
.while.head_31:
    li      s1, 20
    slt     s2,a1,s1
    bnez    s2, .while.body_31
    j       .while.exit_31
.while.body_31:
    li      s3, 3
    add     s4,a1,s3
    j       .while.head_35
.while.head_35:
    slt     s5,a3,a6
    bnez    s5, .while.body_35
    j       .while.exit_35
.while.body_35:
    li      s6, 1
    add     s7,a3,s6
    j       .while.head_39
.while.head_39:
    xor     s8,a5,a4
    sltiu   s8,s8,1
    bnez    s8, .while.body_39
    j       .while.exit_39
.while.body_39:
    sub     s9,a5,s6
    j       .while.head_43
.while.head_43:
    slt     s10,a7,s1
    bnez    s10, .while.body_43
    j       .while.exit_43
.while.body_43:
    add     s11,a7,s3
    j       .while.head_47
.while.head_47:
    la      a0, e
    lw      a2,0(a0)
    mv      a0, a0
    slt     a2,s6,a0
    bnez    a2, .while.body_47
    j       .while.exit_47
.while.body_47:
    la      a4, e
    lw      a6,0(a4)
    mv      a4, a4
    sub     a6,a4,s6
    la      s1, e
    sd      a6,0(s1)
    j       .while.head_51
.while.head_51:
    la      s1, f
    lw      s3,0(s1)
    mv      s1, s1
    li      s3, 2
    slt     s6,s3,s1
    bnez    s6, .while.body_51
    j       .while.exit_51
.while.body_51:
    la      s3, f
    sw      a0,248(sp)
    lw      a0,0(s3)
    mv      a0, a0
    li      s3, 2
    sw      a1,304(sp)
    sub     a1,a0,s3
    la      s3, f
    sd      a1,0(s3)
    j       .while.head_55
.while.head_55:
    la      s3, g
    sw      a0,220(sp)
    lw      a0,0(s3)
    mv      a0, a0
    li      s3, 3
    sw      a1,216(sp)
    slt     a1,a0,s3
    bnez    a1, .while.body_55
    j       .while.exit_55
.while.body_55:
    la      s3, g
    sw      a0,208(sp)
    lw      a0,0(s3)
    mv      a0, a0
    li      s3, 10
    sb      a1,207(sp)
    add     a1,a0,s3
    la      s3, g
    sd      a1,0(s3)
    j       .while.head_59
.while.head_59:
    la      s3, h
    sw      a0,203(sp)
    lw      a0,0(s3)
    mv      a0, a0
    li      s3, 10
    sw      a1,196(sp)
    slt     a1,a0,s3
    bnez    a1, .while.body_59
    j       .while.exit_59
.while.body_59:
    la      s3, h
    sw      a0,188(sp)
    lw      a0,0(s3)
    mv      a0, a0
    li      s3, 8
    sb      a1,187(sp)
    add     a1,a0,s3
    la      s3, h
    sd      a1,0(s3)
    j       .while.head_59
.while.exit_59:
    la      s3, h
    sw      a0,180(sp)
    lw      a0,0(s3)
    mv      a0, a0
    li      s3, 1
    sw      a1,176(sp)
    sub     a1,a0,s3
    la      s3, h
    sd      a1,0(s3)
    j       .while.head_55
.while.exit_55:
    la      s3, g
    sw      a0,168(sp)
    lw      a0,0(s3)
    mv      a0, a0
    li      s3, 8
    sw      a1,160(sp)
    sub     a1,a0,s3
    la      s3, g
    sd      a1,0(s3)
    j       .while.head_51
.while.exit_51:
    la      s3, f
    sw      a0,152(sp)
    lw      a0,0(s3)
    mv      a0, a0
    li      s3, 1
    sw      a1,144(sp)
    add     a1,a0,s3
    la      s3, f
    sd      a1,0(s3)
    j       .while.head_47
.while.exit_47:
    la      s3, e
    sw      a0,136(sp)
    lw      a0,0(s3)
    mv      a0, a0
    li      s3, 1
    sw      a1,128(sp)
    add     a1,a0,s3
    la      s3, e
    sd      a1,0(s3)
    j       .while.head_43
.while.exit_43:
    li      s3, 1
    sw      a0,120(sp)
    sub     a0,a7,s3
    j       .while.head_39
.while.exit_39:
    sw      a0,104(sp)
    add     a0,a5,s3
    j       .while.head_35
.while.exit_35:
    li      s3, 2
    sw      a0,96(sp)
    sub     a0,a3,s3
    j       .while.head_31
.while.exit_31:
    la      s3, h
    sw      a0,88(sp)
    lw      a0,0(s3)
    la      a0, g
    lw      s3,0(a0)
    mv      a0, a0
    mv      s3, s3
    sw      a1,112(sp)
    add     a1,a0,s3
    sw      a0,72(sp)
    sub     a0,a1,a7
    sw      a0,56(sp)
    la      a0, e
    sw      a1,64(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sb      a2,247(sp)
    add     a2,a0,a1
    sw      a0,48(sp)
    add     a0,a3,a7
    sw      a1,56(sp)
    add     a1,a0,a5
    sw      a0,32(sp)
    mv      a0, a0
    sw      a2,40(sp)
    add     a2,a0,a1
    sw      a0,304(sp)
    mv      a0, a0
    sw      a1,24(sp)
    sub     a1,a2,a0
    ld      ra,328(sp)
    ld      s0,312(sp)
    mv      a0, a1
    addi    sp,sp,336
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,40
.L0_0:
    sw      a0,40(sp)
    la      a0, g
    sw      a1,8(sp)
    li      a1, 1
    sd      a1,0(a0)
    la      a0, h
    li      a1, 2
    sd      a1,0(a0)
    la      a0, e
    li      a1, 4
    sd      a1,0(a0)
    la      a0, f
    li      a1, 6
    sd      a1,0(a0)
    sw      s1,228(sp)
    sb      s2,279(sp)
    sw      s3,80(sp)
    sw      s4,275(sp)
    sb      s5,274(sp)
    sb      s6,227(sp)
    sw      s7,268(sp)
    sb      s8,267(sp)
    sw      s9,260(sp)
    sb      s10,259(sp)
    sw      s11,255(sp)
    call    EightWhile
    sw      a0,8(sp)
    ld      ra,32(sp)
    ld      s0,16(sp)
    mv      a0, a0
    addi    sp,sp,40
    ret
.section        .data
    .align 4
    .globl e
    .type e,@object
e:
    .word 0
    .align 4
    .globl f
    .type f,@object
f:
    .word 0
    .align 4
    .globl h
    .type h,@object
h:
    .word 0
    .align 4
    .globl g
    .type g,@object
g:
    .word 0
