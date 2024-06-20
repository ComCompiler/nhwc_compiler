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
    addi    sp,sp,-184
    sd      ra,176(sp)
    sd      s0,160(sp)
    addi    s0,sp,184
.L0_0:
    call    getint
    sw      a0,152(sp)
    la      a1, a
    sd      a0,0(a1)
    call    getint
    sw      a0,152(sp)
    sw      a0,144(sp)
    la      a2, b
    sd      a0,0(a2)
    call    getint
    sw      a0,144(sp)
    sw      a0,136(sp)
    la      a3, c
    sd      a0,0(a3)
    call    getint
    sw      a0,136(sp)
    sw      a0,128(sp)
    la      a4, d
    sd      a0,0(a4)
    call    getint
    sw      a0,128(sp)
    sw      a0,120(sp)
    la      a5, e
    sd      a0,0(a5)
    li      a6, 0
    mv      a7, a6
    j       .L1_0
.L1_0:
    la      s1, d
    lw      s2,0(s1)
    la      s3, e
    lw      s4,0(s3)
    mv      s5, s5
    mv      s6, s6
    add     s7,s5,s6
    la      s8, a
    lw      s9,0(s8)
    la      s10, c
    lw      s11,0(s10)
    la      a1, b
    lw      a2,0(a1)
    mv      a1, a1
    mv      a2, a2
    add     a3,a1,a2
    mv      a4, a4
    add     a5,a3,a4
    xor     a6,a5,s7
    sltiu   a6,a6,1
    mul     s1,a4,a1
    div     s2,s1,a2
    xor     s3,s2,s7
    sltiu   s3,s3,1
    div     s4,a4,a2
    sub     s8,s6,s4
    mul     s9,a1,a2
    sub     s10,a4,s9
    xor     s11,s10,s8
    sltiu   s11,s11,1
    xori    s11,s11,1
    sw      a0,120(sp)
    mv      a0, a0
    sb      a0,34(sp)
    mv      a0, a0
    bnez    a0, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    sb      a0,2(sp)
    li      a0, 1
    j       .branch_false_30
.branch_false_30:
.L2_0:
    ld      ra,176(sp)
    ld      s0,160(sp)
    mv      a0, a7
    addi    sp,sp,184
    ret
.section        .data
    .align 4
    .globl e
    .type e,@object
e:
    .word 0
    .align 4
    .globl d
    .type d,@object
d:
    .word 0
    .align 4
    .globl c
    .type c,@object
c:
    .word 0
    .align 4
    .globl b
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
    .type a,@object
a:
    .word 0
