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
    or      s9,s8,s6
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
    sw      a0,76(sp)
    sw      a1,72(sp)
    sw      a2,68(sp)
    sw      a3,64(sp)
    sw      a4,60(sp)
    sw      a6,56(sp)
    lw      a0,60(sp)
    call    putint
    lw      a3,64(sp)
    lw      a2,68(sp)
    lw      a0,76(sp)
    lw      a4,60(sp)
    lb      s3,51(sp)
    lw      a6,56(sp)
    lw      s1,52(sp)
    lb      s9,34(sp)
    lb      s6,42(sp)
    lw      s7,36(sp)
    lw      a1,72(sp)
    lb      s8,35(sp)
    lw      s4,44(sp)
    lb      s5,43(sp)
    j       .branch_false_29
.branch_false_29:
.L2_0:
    li      a5, 2
    add     a7,a2,a5
    rem     s2,a7,a5
    li      s10, 0
    xor     s11,s2,s10
    snez    s11, s11
    sub     a5,a0,a1
    sw      a0,76(sp)
    xor     a0,a5,s10
    snez    a0, a0
    and     s10,a0,s11
    sb      a0,15(sp)
    li      a0, 2
    sw      a1,72(sp)
    rem     a1,a3,a0
    li      a0, 67
    sw      a2,68(sp)
    add     a2,a1,a0
    li      a0, 0
    sw      a1,8(sp)
    slt     a1,a2,a0
    or      a0,a1,s10
    sw      a3,64(sp)
    bnez    a0, .branch_true_33
    j       .branch_false_33
.branch_true_33:
    li      a4, 4
    sw      s1,52(sp)
    sw      s2,24(sp)
    sb      s3,51(sp)
    sw      s4,44(sp)
    sb      s5,43(sp)
    sb      s6,42(sp)
    sw      s7,36(sp)
    sb      s8,35(sp)
    sb      s9,34(sp)
    sb      s10,14(sp)
    sb      s11,23(sp)
    sb      a0,2(sp)
    sb      a1,3(sp)
    sw      a2,4(sp)
    sw      a4,60(sp)
    sw      a5,16(sp)
    sw      a6,56(sp)
    sw      a7,28(sp)
    lw      a0,60(sp)
    call    putint
    lw      a2,4(sp)
    lb      s11,23(sp)
    lw      s2,24(sp)
    lw      a7,28(sp)
    lb      a0,2(sp)
    lb      s10,14(sp)
    lw      a4,60(sp)
    lb      s3,51(sp)
    lw      a6,56(sp)
    lw      s1,52(sp)
    lb      s9,34(sp)
    lb      s6,42(sp)
    lw      s7,36(sp)
    lb      a1,3(sp)
    lw      a5,16(sp)
    lb      s8,35(sp)
    lw      s4,44(sp)
    lb      s5,43(sp)
    j       .branch_false_33
.branch_false_33:
.L3_0:
    ld      ra,88(sp)
    ld      s0,80(sp)
    sb      a0,2(sp)
    li      a0, 0
    addi    sp,sp,96
    ret
