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
    li      a4, 3
    add     a6,a0,a4
    mv      a0, a6
    j       .while.head_35
.while.head_35:
    li      a4, 10
    slt     a7,a1,a4
    bnez    a7, .while.body_35
    j       .while.exit_35
.while.body_35:
    li      a4, 1
    add     s1,a1,a4
    mv      a1, s1
    j       .while.head_39
.while.head_39:
    li      a4, 7
    xor     s2,a2,a4
    seqz    s2, s2
    bnez    s2, .while.body_39
    j       .while.exit_39
.while.body_39:
    li      a4, 1
    sub     s3,a2,a4
    mv      a2, s3
    j       .while.head_43
.while.head_43:
    li      a4, 20
    slt     s4,a3,a4
    bnez    s4, .while.body_43
    j       .while.exit_43
.while.body_43:
    li      a4, 3
    add     s5,a3,a4
    mv      a3, s5
    j       .while.head_47
.while.head_47:
    la      a4, e
    lw      s6,0(a4)
    li      s7, 1
    slt     s8,s7,s6
    bnez    s8, .while.body_47
    j       .while.exit_47
.while.body_47:
    la      a4, e
    lw      s7,0(a4)
    li      s9, 1
    sub     s10,s7,s9
    la      s11, e
    sw      s10,0(s11)
    j       .while.head_51
.while.head_51:
    la      a4, f
    lw      s9,0(a4)
    li      s11, 2
    slt     a4,s11,s9
    bnez    a4, .while.body_51
    j       .while.exit_51
.while.body_51:
    la      s11, f
    sw      a0,196(sp)
    lw      a0,0(s11)
    li      s11, 2
    sw      a1,192(sp)
    sub     a1,a0,s11
    la      s11, f
    sw      a1,0(s11)
    j       .while.head_55
.while.head_55:
    la      s11, g
    sw      a0,124(sp)
    lw      a0,0(s11)
    li      s11, 3
    sw      a1,120(sp)
    slt     a1,a0,s11
    bnez    a1, .while.body_55
    j       .while.exit_55
.while.body_55:
    la      s11, g
    sw      a0,116(sp)
    lw      a0,0(s11)
    li      s11, 10
    sb      a1,115(sp)
    add     a1,a0,s11
    la      s11, g
    sw      a1,0(s11)
    j       .while.head_59
.while.head_59:
    la      s11, h
    sw      a0,108(sp)
    lw      a0,0(s11)
    li      s11, 10
    sw      a1,104(sp)
    slt     a1,a0,s11
    bnez    a1, .while.body_59
    j       .while.exit_59
.while.body_59:
    la      s11, h
    sw      a0,100(sp)
    lw      a0,0(s11)
    li      s11, 8
    sb      a1,99(sp)
    add     a1,a0,s11
    la      s11, h
    sw      a1,0(s11)
    sw      a0,92(sp)
    sw      a1,88(sp)
    lw      a0,108(sp)
    lw      a1,104(sp)
    j       .while.head_59
.while.exit_59:
    la      s11, h
    sw      a0,100(sp)
    lw      a0,0(s11)
    li      s11, 1
    sb      a1,99(sp)
    sub     a1,a0,s11
    la      s11, h
    sw      a1,0(s11)
    sw      a0,84(sp)
    sw      a1,80(sp)
    lw      a0,124(sp)
    lw      a1,120(sp)
    j       .while.head_55
.while.exit_55:
    la      s11, g
    sw      a0,116(sp)
    lw      a0,0(s11)
    li      s11, 8
    sb      a1,115(sp)
    sub     a1,a0,s11
    la      s11, g
    sw      a1,0(s11)
    sw      s9,132(sp)
    sw      a0,76(sp)
    sw      a1,72(sp)
    sb      a4,131(sp)
    lw      a0,196(sp)
    lw      a1,192(sp)
    j       .while.head_51
.while.exit_51:
    la      s11, f
    sw      a0,196(sp)
    lw      a0,0(s11)
    li      s11, 1
    sw      a1,192(sp)
    add     a1,a0,s11
    la      s11, f
    sw      a1,0(s11)
    sw      s9,132(sp)
    sw      a0,68(sp)
    sw      s6,148(sp)
    sw      s10,136(sp)
    sw      s7,140(sp)
    sw      a1,64(sp)
    sb      s8,147(sp)
    sb      a4,131(sp)
    lw      a0,196(sp)
    lw      a1,192(sp)
    j       .while.head_47
.while.exit_47:
    la      a4, e
    lw      s7,0(a4)
    li      s9, 1
    add     s10,s7,s9
    la      s11, e
    sw      s10,0(s11)
    sw      s6,148(sp)
    sw      s10,56(sp)
    sw      s5,152(sp)
    sw      s7,60(sp)
    sb      s4,159(sp)
    sb      s8,147(sp)
    j       .while.head_43
.while.exit_43:
    li      a4, 1
    sub     s5,a3,a4
    mv      a3, s5
    sw      s3,160(sp)
    sw      s5,52(sp)
    sb      s2,167(sp)
    sb      s4,159(sp)
    j       .while.head_39
.while.exit_39:
    li      a4, 1
    add     s3,a2,a4
    mv      a2, s3
    sw      s3,48(sp)
    sw      s1,168(sp)
    sb      s2,167(sp)
    sb      a7,175(sp)
    j       .while.head_35
.while.exit_35:
    li      a4, 2
    sub     s1,a1,a4
    mv      a1, s1
    sw      s1,44(sp)
    sb      a7,175(sp)
    sw      a6,176(sp)
    sb      a5,183(sp)
    j       .while.head_31
.while.exit_31:
    la      a4, h
    lw      a6,0(a4)
    la      a7, g
    lw      s1,0(a7)
    la      s2, e
    lw      s3,0(s2)
    add     s4,s3,a3
    sub     s5,s4,s1
    add     s6,s5,a6
    add     s7,a1,a3
    add     s8,a0,s7
    add     s9,s8,a2
    sub     s10,s9,s6
    ld      ra,208(sp)
    ld      s0,200(sp)
    sw      s10,4(sp)
    sw      a0,196(sp)
    lw      a0,4(sp)
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
    sw      a1,0(a0)
    la      a2, h
    li      a3, 2
    sw      a3,0(a2)
    la      a4, e
    li      a5, 4
    sw      a5,0(a4)
    la      a6, f
    li      a7, 6
    sw      a7,0(a6)
    call    EightWhile
    sw      a0,4(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,24
    ret
.section ___var
    .data
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
