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
    li      a0, 5
    li      a1, 5
    li      a2, 1
    li      a3, -2
    li      a4, 2
    j       .L1_0
.L1_0:
    li      a5, 3
    add     a6,a2,a5
    li      a7, 2
    rem     s1,a6,a7
    li      s2, 0
    xor     s3,s1,s2
    snez    s3, s3
    sub     s4,a0,a1
    xor     s5,s4,s2
    snez    s5, s5
    and     s6,s5,s3
    div     s7,a7,a3
    slt     s8,s7,s2
    bnez    s9, .branch_true_29
    j       .branch_false_29
.branch_true_29:
    sw      s1,52(sp)
    sb      s3,51(sp)
    sw      s4,44(sp)
    sb      s5,43(sp)
    sb      s6,42(sp)
    sw      s7,36(sp)
    sb      s8,35(sp)
    sb      s9,34(sp)
    sw      a4,60(sp)
    sw      a0,76(sp)
    call    putint
    j       .branch_false_29
.branch_false_29:
.L2_0:
    add     a0,a2,a7
    rem     a4,a0,a7
    li      s1, 0
    xor     s2,a4,s1
    snez    s2, s2
    sub     s4,s3,a1
    xor     s5,s4,s1
    snez    s5, s5
    and     s6,s5,s2
    rem     s7,a3,a7
    li      s8, 67
    add     s9,s7,s8
    slt     s10,s9,s1
    bnez    s11, .branch_true_33
    j       .branch_false_33
.branch_true_33:
    li      a5, 4
    sb      s2,23(sp)
    sw      s3,76(sp)
    sw      s4,16(sp)
    sb      s5,15(sp)
    sb      s6,14(sp)
    sw      s7,8(sp)
    sw      s9,4(sp)
    sb      s10,3(sp)
    sb      s11,2(sp)
    sw      a5,60(sp)
    sw      a0,28(sp)
    call    putint
    j       .branch_false_33
.branch_false_33:
.L3_0:
    ld      ra,88(sp)
    ld      s0,80(sp)
    li      a0, 0
    addi    sp,sp,96
    ret
