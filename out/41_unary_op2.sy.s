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
    li      a0, 070
    li      a1, 0x4
    li      a2, -4
    add     a3,a1,a2
    sub     a4,a0,a3
    j       .L1_0
.L1_0:
    li      a5, 0
    xor     a6,a0,a5
    snez    a6, a6
    xori    a7,a6,-1
    xori    s2,s1,-1
    xori    s4,s3,-1
    sub     s5,a5,s4
    bnez    s5, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    j       .L2_0
.branch_false_23:
    add     s6,a5,a1
    j       .L2_0
.L2_0:
.L3_0:
    sb      s1,13(sp)
    sb      s2,12(sp)
    sb      s3,11(sp)
    sb      s4,10(sp)
    sb      s5,9(sp)
    sw      s6,4(sp)
    sw      a0,28(sp)
    call    putint
    ld      ra,40(sp)
    ld      s0,32(sp)
    li      a0, 0
    addi    sp,sp,48
    ret
