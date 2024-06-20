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
    addi    sp,sp,-112
    sd      ra,104(sp)
    sd      s0,96(sp)
    addi    s0,sp,112
.L0_0:
    call    getint
    sw      a0,92(sp)
    la      a1, a
    sd      a0,0(a1)
    call    getint
    sw      a0,92(sp)
    sw      a0,88(sp)
    la      a2, b
    sd      a0,0(a2)
    call    getint
    sw      a0,88(sp)
    sw      a0,84(sp)
    la      a3, c
    sd      a0,0(a3)
    call    getint
    sw      a0,84(sp)
    sw      a0,80(sp)
    la      a4, d
    sd      a0,0(a4)
    call    getint
    sw      a0,80(sp)
    sw      a0,76(sp)
    la      a5, e
    sd      a0,0(a5)
    li      a6, 0
    j       .L1_0
.L1_0:
    la      a7, d
    lw      s1,0(a7)
    la      s2, e
    lw      s3,0(s2)
    add     s6,s4,s5
    la      s7, a
    lw      s8,0(s7)
    la      s9, c
    lw      s10,0(s9)
    la      s11, b
    lw      a1,0(s11)
    add     a3,a1,a2
    add     a5,a3,a4
    xor     a7,a5,s6
    seqz    a7, a7
    mul     s1,a4,a1
    div     s2,s1,a2
    xor     s3,s2,s6
    seqz    s3, s3
    div     s7,a4,a2
    sub     s8,s5,s7
    mul     s9,a1,a2
    sub     s10,a4,s9
    xor     s11,s10,s8
    snez    s11, s11
    sw      a0,76(sp)
    sb      a0,26(sp)
    bnez    a0, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    j       .branch_false_30
.branch_false_30:
.L2_0:
    ld      ra,104(sp)
    ld      s0,96(sp)
    mv      a0, a6
    addi    sp,sp,112
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
