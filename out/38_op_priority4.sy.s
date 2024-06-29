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
    addi    sp,sp,-112
    sd      ra,104(sp)
    sd      s0,96(sp)
    addi    s0,sp,112
.L0_0:
    call    getint
    sw      a0,92(sp)
    la      a1, a
    sw      a0,0(a1)
    sw      a0,92(sp)
    call    getint
    sw      a0,88(sp)
    la      a1, b
    sw      a0,0(a1)
    sw      a0,88(sp)
    call    getint
    sw      a0,84(sp)
    la      a1, c
    sw      a0,0(a1)
    sw      a0,84(sp)
    call    getint
    sw      a0,80(sp)
    la      a1, d
    sw      a0,0(a1)
    sw      a0,80(sp)
    call    getint
    sw      a0,76(sp)
    la      a1, e
    sw      a0,0(a1)
    li      a2, 0
    j       .L1_0
.L1_0:
    la      a1, d
    lw      a3,0(a1)
    la      a4, e
    lw      a5,0(a4)
    add     a6,a5,a3
    la      a7, c
    lw      s1,0(a7)
    la      s2, b
    lw      s3,0(s2)
    la      s4, a
    lw      s5,0(s4)
    add     s6,s5,s3
    add     s7,s6,s1
    xor     s8,s7,a6
    seqz    s8, s8
    mul     s9,s5,s3
    div     s10,s9,s1
    xor     s11,s10,a6
    seqz    s11, s11
    or      a1,s11,s8
    div     a4,s5,s1
    sub     a7,a3,a4
    mul     s2,s3,s1
    sub     s4,s5,s2
    sw      a0,76(sp)
    xor     a0,s4,a7
    snez    a0, a0
    sw      a2,72(sp)
    or      a2,a0,a1
    sw      s5,48(sp)
    bnez    a2, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    li      s5, 1
    sw      s5,72(sp)
    j       .branch_false_30
.branch_false_30:
.L2_0:
    ld      ra,104(sp)
    ld      s0,96(sp)
    sb      a0,7(sp)
    lw      a0,72(sp)
    addi    sp,sp,112
    ret
.section ___var
    .data
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
