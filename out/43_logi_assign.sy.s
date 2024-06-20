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
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,40(sp)
    addi    s0,sp,64
.L0_0:
    call    getint
    sw      a0,32(sp)
    la      a1, a
    sd      a0,0(a1)
    call    getint
    sw      a0,32(sp)
    sw      a0,24(sp)
    la      a2, b
    sd      a0,0(a2)
    j       .L1_0
.L1_0:
    la      a3, a
    lw      a4,0(a3)
    li      a5, 3
    mv      a6, a6
    xor     a7,a5,a6
    sltiu   a7,a7,1
    xori    a7,a7,1
    la      s1, b
    lw      s2,0(s1)
    mv      s3, s3
    xor     s4,a6,s3
    sltiu   s4,s4,1
    and     s5,s4,a7
    bnez    s5, .branch_true_24
    j       .branch_false_24
.branch_true_24:
    li      s6, 1
    mv      s7, s6
    j       .L2_0
.branch_false_24:
    li      s8, 0
    j       .L2_0
.L2_0:
.L3_0:
    ld      ra,56(sp)
    ld      s0,40(sp)
    mv      a0, s7
    addi    sp,sp,64
    ret
.section        .data
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
