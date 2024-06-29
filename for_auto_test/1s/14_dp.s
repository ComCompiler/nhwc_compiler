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
    addi    sp,sp,-352
    sd      ra,344(sp)
    sd      s0,336(sp)
    addi    s0,sp,352
.L0_0:
    call    getint
    sw      a0,312(sp)
    mv      a1, a0
    sw      a0,312(sp)
    sw      a1,332(sp)
    call    getint
    sw      a0,308(sp)
    mv      a1, a0
    li      a2, 1
    j       .while.head_24
.while.head_24:
    lw      a3,332(sp)
    slt     a4,a3,a2
    xori    a4,a4,1
    bnez    a4, .while.body_24
    j       .while.exit_24
.while.body_24:
    sw      a0,308(sp)
    sw      a1,328(sp)
    sw      a2,320(sp)
    sw      a3,332(sp)
    sb      a4,307(sp)
    call    getint
    sw      a0,300(sp)
    mv      a1, a0
    li      a2, 2
    rem     a3,a1,a2
    li      a4, 0
    mul     a7,a5,a6
    add     a4,a4,a7
    slli a4,a4,2
    la      s1, t
    add     a4,a4,s1
    sw      a5,0(a4)
    li      s2, 0
    mul     s3,a5,a6
    add     s2,s2,s3
    slli s2,s2,2
    la      s4, dp
    add     s2,s2,s4
    li      s5, 0
    mul     s6,a5,a6
    add     s5,s5,s6
    slli s5,s5,2
    la      s7, t
    add     s5,s5,s7
    lw      s8,0(s5)
    sub     s9,a6,a5
    li      s10, 0
    mul     s11,a5,s9
    add     s10,s10,s11
    slli s10,s10,2
    la      a2, dp
    add     s10,s10,a2
    lw      a2,0(s10)
    add     a5,a2,s8
    sw      a5,0(s2)
    li      a7, 1
    add     s1,a6,a7
    mv      a6, s1
    sw      a0,300(sp)
    sd      s2,280(sp)
    sd      s5,272(sp)
    sw      s1,244(sp)
    sw      a1,324(sp)
    sw      a6,320(sp)
    sw      s8,268(sp)
    sw      a2,252(sp)
    sd      a4,288(sp)
    sw      a5,248(sp)
    sw      s9,264(sp)
    sw      a3,296(sp)
    sd      s10,256(sp)
    lw      a0,308(sp)
    lw      a1,328(sp)
    lw      a2,320(sp)
    j       .while.head_24
.while.exit_24:
    li      a2, 1
    j       .while.head_32
.while.head_32:
    slt     a5,a3,a2
    xori    a5,a5,1
    bnez    a5, .while.body_32
    j       .while.exit_32
.while.body_32:
    li      a6, 1
    j       .while.head_36
.while.head_36:
    slt     a7,a1,a6
    xori    a7,a7,1
    bnez    a7, .while.body_36
    j       .while.exit_36
.while.body_36:
    li      s1, 1
    add     s2,a6,s1
    li      s3, 2
    rem     s4,s2,s3
    li      s5, 0
    mul     s6,s1,a2
    add     s5,s5,s6
    slli s5,s5,2
    la      s7, t
    add     s5,s5,s7
    lw      s8,0(s5)
    sub     s9,a6,s1
    sub     s10,a2,s1
    li      s11, 0
    mul     s3,s1,s10
    add     s11,s11,s3
    slli s11,s11,2
    la      s1, dp
    add     s11,s11,s1
    lw      s1,0(s11)
    add     s3,s1,s8
    li      s6, 1
    sub     s7,a2,s6
    li      s6, 0
    sw      a0,308(sp)
    sw      a1,328(sp)
    mul     a1,a0,s7
    add     s6,s6,a1
    slli s6,s6,2
    la      a0, dp
    add     s6,s6,a0
    lw      a0,0(s6)
    add     a1,a0,s8
    sw      a0,172(sp)
    slt     a0,s3,a1
    sb      a0,167(sp)
    lb      a0,167(sp)
    bnez    a0, .branch_true_39
    sb      a0,167(sp)
    j       .branch_false_39
.branch_true_39:
    li      a0, 0
    sw      a1,168(sp)
    sw      a3,332(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, dp
    add     a0,a0,a1
    li      a1, 1
    add     a3,a6,a1
    li      a1, 2
    sd      a0,152(sp)
    rem     a0,a3,a1
    li      a1, 0
    sw      a0,144(sp)
    sw      a3,148(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    la      a0, t
    add     a1,a1,a0
    lw      a0,0(a1)
    li      a3, 1
    sw      a0,132(sp)
    sub     a0,a2,a3
    li      a3, 0
    sw      a0,128(sp)
    sd      a1,136(sp)
    sw      a2,320(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    la      a0, dp
    add     a3,a3,a0
    lw      a0,0(a3)
    lw      a2,132(sp)
    sw      a1,128(sp)
    add     a1,a0,a2
    sw      a0,116(sp)
    ld      a0,152(sp)
    sw      a1,0(a0)
    sd      a0,152(sp)
    j       .L1_0
.branch_false_39:
    li      a0, 0
    sw      a1,168(sp)
    sw      a3,332(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, dp
    add     a0,a0,a1
    li      a1, 1
    add     a3,a6,a1
    li      a1, 2
    sd      a0,96(sp)
    rem     a0,a3,a1
    li      a1, 0
    sw      a0,88(sp)
    sw      a3,92(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    la      a0, t
    add     a1,a1,a0
    lw      a0,0(a1)
    li      a3, 1
    sw      a0,76(sp)
    sub     a0,a6,a3
    sw      a0,72(sp)
    sub     a0,a2,a3
    li      a3, 0
    sw      a0,68(sp)
    sd      a1,80(sp)
    sw      a2,320(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    la      a0, dp
    add     a3,a3,a0
    lw      a0,0(a3)
    lw      a2,76(sp)
    sw      a1,68(sp)
    add     a1,a0,a2
    sw      a0,52(sp)
    ld      a0,96(sp)
    sw      a1,0(a0)
    sd      a0,96(sp)
    sw      a1,48(sp)
    sw      a2,76(sp)
    sd      a3,56(sp)
    lw      a1,112(sp)
    lw      a2,132(sp)
    ld      a3,120(sp)
    j       .L1_0
.L1_0:
.L2_0:
    li      a0, 1
    sw      a1,112(sp)
    add     a1,a6,a0
    mv      a6, a1
    sw      s7,188(sp)
    sw      s2,236(sp)
    sw      s4,232(sp)
    sd      s5,224(sp)
    sw      s1,196(sp)
    sd      s6,176(sp)
    sw      a1,108(sp)
    sw      s3,192(sp)
    sw      s8,220(sp)
    sb      a7,242(sp)
    sd      s11,200(sp)
    sw      a2,132(sp)
    sw      s9,216(sp)
    sd      a3,120(sp)
    sw      s10,212(sp)
    lw      a0,308(sp)
    lw      a1,328(sp)
    lw      a2,320(sp)
    lw      a3,332(sp)
    j       .while.head_36
.while.exit_36:
    li      s1, 1
    add     s2,a2,s1
    mv      a2, s2
    sw      s2,44(sp)
    sw      a6,316(sp)
    sb      a7,242(sp)
    sb      a5,243(sp)
    j       .while.head_32
.while.exit_32:
    li      a6, 0
    li      a7, 0
    j       .while.head_49
.while.head_49:
    slt     s1,a1,a7
    xori    s1,s1,1
    bnez    s1, .while.body_49
    j       .while.exit_49
.while.body_49:
    li      s2, 0
    mul     s4,s3,a3
    add     s2,s2,s4
    slli s2,s2,2
    la      s5, dp
    add     s2,s2,s5
    lw      s6,0(s2)
    slt     s7,a6,s6
    bnez    s7, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    li      s3, 0
    mul     s5,s4,a3
    add     s3,s3,s5
    slli s3,s3,2
    la      s8, dp
    add     s3,s3,s8
    lw      s9,0(s3)
    mv      a6, s9
    sd      s3,8(sp)
    sw      s9,4(sp)
    j       .branch_false_52
.branch_false_52:
.L3_0:
    li      s3, 1
    add     s4,a7,s3
    mv      a7, s4
    sb      s7,19(sp)
    sd      s2,24(sp)
    sw      s4,0(sp)
    sb      s1,39(sp)
    sw      s6,20(sp)
    j       .while.head_49
.while.exit_49:
    ld      ra,344(sp)
    ld      s0,336(sp)
    sw      a6,40(sp)
    sw      a0,308(sp)
    lw      a0,40(sp)
    addi    sp,sp,352
    ret
.section ___var
    .data
    .align 4
    .globl dp
    .type dp,@object
dp:
    .word 0
    .zero 140700
    .align 4
    .globl t
    .type t,@object
t:
    .word 0
    .zero 8040
