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
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
.L0_0:
    li      a0, 0
    j       .L1_0
.L1_0:
    la      a1, d
    lw      a2,0(a1)
    la      a3, c
    lw      a4,0(a3)
    la      a5, a
    lw      a6,0(a5)
    div     s2,a7,s1
    sub     s4,s2,s3
    la      s5, b
    lw      s6,0(s5)
    mul     s8,s7,s1
    sub     s9,s8,a7
    xor     s10,s9,s4
    seqz    s10, s10
    la      s11, e
    lw      a1,0(s11)
    add     a2,a1,s3
    add     a3,a7,s7
    mul     a4,a3,a7
    add     a5,a4,s1
    slt     a6,a2,a5
    xori    a6,a6,1
    mul     s5,a7,s7
    div     s6,s5,s1
    xor     s11,s6,a2
    seqz    s11, s11
    sw      a0,76(sp)
    and     a0,s11,a6
    sb      a0,6(sp)
    bnez    a0, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    sb      a0,5(sp)
    li      a0, 1
    j       .branch_false_25
.branch_false_25:
.L2_0:
    sw      s1,68(sp)
    sw      s2,60(sp)
    sw      s3,72(sp)
    sw      s4,56(sp)
    sw      s5,12(sp)
    sw      s6,8(sp)
    sw      s7,52(sp)
    sw      s8,48(sp)
    sw      s9,44(sp)
    sb      s10,43(sp)
    sb      s11,7(sp)
    sw      a0,76(sp)
    call    putint
    ld      ra,88(sp)
    ld      s0,80(sp)
    lw      a0,76(sp)
    addi    sp,sp,96
    ret
.section        .data
    .align 4
    .globl e
    .type e,@object
e:
    .word 4
    .align 4
    .globl d
    .type d,@object
d:
    .word 2
    .align 4
    .globl c
    .type c,@object
c:
    .word 1
    .align 4
    .globl b
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
    .type a,@object
a:
    .word 1
