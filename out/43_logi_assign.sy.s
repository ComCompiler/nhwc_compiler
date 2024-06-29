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
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L0_0:
    call    getint
    sw      a0,28(sp)
    la      a1, a
    sw      a0,0(a1)
    sw      a0,28(sp)
    call    getint
    sw      a0,24(sp)
    la      a1, b
    sw      a0,0(a1)
    j       .L1_0
.L1_0:
    la      a1, a
    lw      a2,0(a1)
    li      a3, 3
    xor     a4,a2,a3
    snez    a4, a4
    la      a5, b
    lw      a6,0(a5)
    xor     a7,a2,a6
    seqz    a7, a7
    and     s1,a7,a4
    bnez    s1, .branch_true_24
    j       .branch_false_24
.branch_true_24:
    li      a1, 1
    j       .L2_0
.branch_false_24:
    li      a1, 0
    j       .L2_0
.L2_0:
.L3_0:
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a1,20(sp)
    sw      a0,24(sp)
    lw      a0,20(sp)
    addi    sp,sp,48
    ret
.section ___var
    .data
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
