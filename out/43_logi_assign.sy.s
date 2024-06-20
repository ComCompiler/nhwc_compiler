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
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L0_0:
    call    getint
    sw      a0,28(sp)
    la      a1, a
    sd      a0,0(a1)
    call    getint
    sw      a0,28(sp)
    sw      a0,24(sp)
    la      a2, b
    sd      a0,0(a2)
    j       .L1_0
.L1_0:
    la      a3, a
    lw      a4,0(a3)
    li      a5, 3
    xor     a7,a5,a6
    snez    a7, a7
    la      s1, b
    lw      s2,0(s1)
    xor     s4,a6,s3
    seqz    s4, s4
    and     s5,s4,a7
    bnez    s5, .branch_true_24
    j       .branch_false_24
.branch_true_24:
    li      s6, 1
    j       .L2_0
.branch_false_24:
    j       .L2_0
.L2_0:
.L3_0:
    ld      ra,40(sp)
    ld      s0,32(sp)
    mv      a0, s6
    addi    sp,sp,48
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
