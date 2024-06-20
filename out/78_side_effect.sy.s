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
    .globl inc_a
    .type inc_a,@function
inc_a:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,40(sp)
    addi    s0,sp,64
.L4_0:
    la      a0, a
    lw      a1,0(a0)
    mv      a2, a2
    mv      a3, a2
    li      a4, 1
    add     a5,a3,a4
    la      a6, a
    sd      a3,0(a6)
    la      a7, a
    lw      s1,0(a7)
    ld      ra,56(sp)
    ld      s0,40(sp)
    lw      a0,8(sp)
    addi    sp,sp,64
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-184
    sd      ra,176(sp)
    sd      s0,160(sp)
    addi    s0,sp,184
.L0_0:
    li      s2, 5
    mv      s3, s2
    j       .while.head_27
.while.head_27:
    li      s4, 0
    slt     s5,s4,s3
    xori    s5,s5,1
    bnez    s5, .while.body_27
    j       .while.exit_27
.while.body_27:
    sw      s3,152(sp)
    sb      s5,151(sp)
    call    inc_a
    sw      a0,144(sp)
    call    inc_a
    sw      a0,144(sp)
    sw      a0,140(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    mv      s3, s3
    mv      s4, s4
    and     s5,s2,s4
    sb      s2,139(sp)
    sw      s3,144(sp)
    sb      s4,138(sp)
    sb      s5,137(sp)
    call    inc_a
    sw      a0,140(sp)
    sw      a0,133(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    mv      s3, s3
    and     s4,s2,s3
    bnez    s4, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    la      s5, a
    lw      s6,0(s5)
    sb      s2,132(sp)
    sb      s3,137(sp)
    sb      s4,131(sp)
    sw      a0,133(sp)
    mv      a0, a0
    call    putint
    li      a0, 32
    call    putch
    la      a0, b
    lw      s1,0(a0)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    j       .branch_false_30
.branch_false_30:
.L1_0:
    call    inc_a
    sw      a0,108(sp)
    add     s1,a0,a4
    sw      s1,100(sp)
    call    inc_a
    sw      a0,108(sp)
    sw      a0,92(sp)
    mv      s1, s1
    sub     s2,a0,s1
    sw      s1,100(sp)
    sw      s2,84(sp)
    call    inc_a
    sw      a0,92(sp)
    sw      a0,76(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    mv      s3, s3
    mv      s4, s4
    and     s5,s2,s4
    sb      s2,75(sp)
    sw      s3,84(sp)
    sb      s4,74(sp)
    sb      s5,73(sp)
    call    inc_a
    sw      a0,76(sp)
    sw      a0,69(sp)
    li      s1, 14
    slt     s2,a0,s1
    mv      s3, s3
    mv      s4, s4
    bnez    s4, .branch_true_37
    j       .branch_false_37
.branch_true_37:
    la      s5, a
    lw      s6,0(s5)
    sb      s2,68(sp)
    sb      s3,73(sp)
    sb      s4,67(sp)
    sw      a0,69(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    la      a0, b
    lw      s1,0(a0)
    mv      s2, s2
    li      s3, 2
    mul     s4,s2,s3
    la      s5, b
    sd      s4,0(s5)
    j       .L2_0
.branch_false_37:
    sw      s2,52(sp)
    sw      s4,44(sp)
    call    inc_a
    sw      a0,28(sp)
    j       .L2_0
.L2_0:
.L3_0:
    mv      s1, s1
    sub     s2,s1,a4
    j       .while.head_27
.while.exit_27:
    la      s3, a
    lw      s4,0(s3)
    sw      s1,152(sp)
    sw      s2,36(sp)
    sw      a0,28(sp)
    mv      a0, a0
    call    putint
    li      a0, 32
    call    putch
    la      a0, b
    lw      s1,0(a0)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    la      a0, a
    lw      s1,0(a0)
    ld      ra,176(sp)
    ld      s0,160(sp)
    lw      a0,4(sp)
    addi    sp,sp,184
    ret
.section        .data
    .align 4
    .globl b
    .type b,@object
b:
    .word 1
    .align 4
    .globl a
    .type a,@object
a:
    .word -1
