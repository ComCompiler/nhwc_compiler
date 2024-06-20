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
    addi    sp,sp,-216
    sd      ra,208(sp)
    sd      s0,200(sp)
    addi    s0,sp,216
.L1_0:
    li      a0, 5
    li      a1, 6
    li      a2, 7
    li      a3, 10
    j       .while.head_31
.while.head_31:
    li      a4, 20
    slt     a5,a0,a4
    bnez    a5, .while.body_31
    j       .while.exit_31
.while.body_31:
    li      a6, 3
    add     a7,a0,a6
    j       .while.head_35
.while.head_35:
    li      s1, 10
    slt     s2,a1,s1
    bnez    s2, .while.body_35
    j       .while.exit_35
.while.body_35:
    li      s3, 1
    add     s4,a1,s3
    j       .while.head_39
.while.head_39:
    li      s5, 7
    xor     s6,a2,s5
    seqz    s6, s6
    bnez    s6, .while.body_39
    j       .while.exit_39
.while.body_39:
    sub     s7,a2,s3
    j       .while.head_43
.while.head_43:
    slt     s8,a3,a4
    bnez    s8, .while.body_43
    j       .while.exit_43
.while.body_43:
    add     s9,a3,a6
    j       .while.head_47
.while.head_47:
    la      s10, e
    lw      s11,0(s10)
    slt     a6,s3,a4
    bnez    a6, .while.body_47
    j       .while.exit_47
.while.body_47:
    la      s1, e
    lw      s3,0(s1)
    li      s3, 1
    sub     s5,s1,s3
    la      s3, e
    sd      s5,0(s3)
    j       .while.head_51
.while.head_51:
    la      s3, f
    lw      s10,0(s3)
    li      s10, 2
    slt     s11,s10,s3
    bnez    s11, .while.body_51
    j       .while.exit_51
.while.body_51:
    la      s10, f
    sw      a0,196(sp)
    lw      a0,0(s10)
    li      s10, 2
    sw      a1,192(sp)
    sub     a1,a0,s10
    la      s10, f
    sd      a1,0(s10)
    j       .while.head_55
.while.head_55:
    la      s10, g
    sw      a0,124(sp)
    lw      a0,0(s10)
    li      s10, 3
    sw      a1,120(sp)
    slt     a1,a0,s10
    bnez    a1, .while.body_55
    j       .while.exit_55
.while.body_55:
    la      s10, g
    sw      a0,116(sp)
    lw      a0,0(s10)
    li      s10, 10
    sb      a1,115(sp)
    add     a1,a0,s10
    la      s10, g
    sd      a1,0(s10)
    j       .while.head_59
.while.head_59:
    la      s10, h
    sw      a0,108(sp)
    lw      a0,0(s10)
    li      s10, 10
    sw      a1,104(sp)
    slt     a1,a0,s10
    bnez    a1, .while.body_59
    j       .while.exit_59
.while.body_59:
    la      s10, h
    sw      a0,100(sp)
    lw      a0,0(s10)
    li      s10, 8
    sb      a1,99(sp)
    add     a1,a0,s10
    la      s10, h
    sd      a1,0(s10)
    j       .while.head_59
.while.exit_59:
    la      s10, h
    sw      a0,92(sp)
    lw      a0,0(s10)
    li      s10, 1
    sw      a1,88(sp)
    sub     a1,a0,s10
    la      s10, h
    sd      a1,0(s10)
    j       .while.head_55
.while.exit_55:
    la      s10, g
    sw      a0,84(sp)
    lw      a0,0(s10)
    li      s10, 8
    sw      a1,80(sp)
    sub     a1,a0,s10
    la      s10, g
    sd      a1,0(s10)
    j       .while.head_51
.while.exit_51:
    la      s10, f
    sw      a0,76(sp)
    lw      a0,0(s10)
    li      s10, 1
    sw      a1,72(sp)
    add     a1,a0,s10
    la      s10, f
    sd      a1,0(s10)
    j       .while.head_47
.while.exit_47:
    la      s10, e
    sw      a0,68(sp)
    lw      a0,0(s10)
    li      s10, 1
    sw      a1,64(sp)
    add     a1,a0,s10
    la      s10, e
    sd      a1,0(s10)
    j       .while.head_43
.while.exit_43:
    li      s10, 1
    sw      a0,60(sp)
    sub     a0,a3,s10
    j       .while.head_39
.while.exit_39:
    sw      a0,52(sp)
    add     a0,a2,s10
    j       .while.head_35
.while.exit_35:
    sw      a0,48(sp)
    li      a0, 2
    sw      a1,56(sp)
    sub     a1,s10,a0
    j       .while.head_31
.while.exit_31:
    la      a0, h
    sw      a1,44(sp)
    lw      a1,0(a0)
    la      a0, g
    lw      a1,0(a0)
    sw      a2,188(sp)
    add     a2,a0,a1
    sw      a0,36(sp)
    sub     a0,a2,a3
    sw      a0,28(sp)
    la      a0, e
    sw      a1,40(sp)
    lw      a1,0(a0)
    sw      a2,32(sp)
    add     a2,a0,a1
    sw      a0,24(sp)
    add     a0,s10,a3
    sw      a1,28(sp)
    sw      a2,20(sp)
    add     a2,a0,a1
    sw      a0,16(sp)
    sw      a1,188(sp)
    add     a1,a0,a2
    sw      a0,196(sp)
    sw      a2,12(sp)
    sub     a2,a1,a0
    ld      ra,208(sp)
    ld      s0,200(sp)
    mv      a0, a2
    addi    sp,sp,216
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    la      a0, g
    li      a1, 1
    sd      a1,0(a0)
    la      a2, h
    li      a3, 2
    sd      a3,0(a2)
    la      a4, e
    li      a5, 4
    sd      a5,0(a4)
    la      a6, f
    li      a7, 6
    sd      a7,0(a6)
    call    EightWhile
    sw      a0,4(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,24
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
