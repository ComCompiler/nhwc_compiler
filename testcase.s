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
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,88(sp)
    addi    s0,sp,104
.L0_0:
    li      a0, 0
    li      a1, 0
    j       .while.head_21
.while.head_21:
    li      a2, 20
    slt     a3,a0,a2
    bnez    a3, .while.body_21
    j       .while.exit_21
.while.body_21:
    li      a2, 0
    j       .while.head_25
.while.head_25:
    li      a4, 10
    slt     a5,a2,a4
    bnez    a5, .while.body_25
    j       .while.exit_25
.while.body_25:
    li      a4, 0
    j       .while.head_29
.while.head_29:
    li      a6, 5
    slt     a7,a4,a6
    bnez    a7, .while.body_29
    j       .while.exit_29
.while.body_29:
    li      a6, 0
    j       .while.head_33
.while.head_33:
    li      s1, 3
    slt     s2,a6,s1
    bnez    s2, .while.body_33
    j       .while.exit_33
.while.body_33:
    li      s1, 1
    ADDW    s3,a6,s1
    sw      a6,56(sp)
    li      a6, 3
    slt     s4,s3,a6
    xori    s4,s4,1
    sw      s3,20(sp)
    bnez    s4, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    lw      a6,56(sp)
    li      s1, 0
    xor     s3,a6,s1
    snez    s3, s3
    sw      a6,56(sp)
    sb      s3,17(sp)
    lb      a6,17(sp)
    sb      a6,17(sp)
    lb      a6,17(sp)
    bnez    a6, .branch_true_38
    sb      a6,17(sp)
    j       .branch_false_38
.branch_true_38:
    lb      a6,17(sp)
    sb      a6,17(sp)
    lb      a6,17(sp)
    bnez    a6, .branch_short_circuit_c_true_218
    sb      a6,17(sp)
    j       .branch_short_circuit_p_false_218
.branch_short_circuit_c_true_218:
    lw      a6,56(sp)
    li      s1, -1
    subw    s3,a6,s1
    sw      a6,56(sp)
    sw      s3,8(sp)
    lw      a6,8(sp)
    li      s1, 3
    slt     s3,a6,s1
    xori    s3,s3,1
    sw      a6,8(sp)
    sb      s3,7(sp)
    lb      a6,7(sp)
    sb      a6,7(sp)
    lb      a6,7(sp)
    bnez    a6, .branch_true_42
    sb      a6,7(sp)
    j       .branch_false_42
.branch_true_42:
    lw      a6,56(sp)
    sb      s4,19(sp)
    j       .while.exit_33
.while.exit_33:
    j       .while.body_62
.while.body_62:
    j       .while.body_65
.while.body_65:
    j       .while.exit_65
.while.exit_65:
    j       .while.exit_62
.while.exit_62:
    li      s1, 1
    ADDW    s3,a4,s1
    sw      a4,68(sp)
    mv      a4, s3
    sw      s3,52(sp)
    sb      s2,28(sp)
    sb      a7,29(sp)
    sw      a6,56(sp)
    j       .while.head_29
.branch_false_42:
    j       .branch_short_circuit_c_false_218
.branch_short_circuit_c_false_218:
    j       .branch_false_38
.branch_false_38:
    j       .branch_false_36
.branch_false_36:
    j       .L1_0
.L1_0:
    li      a6, 0
    sw      a6,48(sp)
    j       .while.head_53
.while.head_53:
    lw      a6,48(sp)
    li      s1, 2
    slt     s3,a6,s1
    sw      a6,48(sp)
    sb      s3,18(sp)
    lb      a6,18(sp)
    sb      a6,18(sp)
    lb      a6,18(sp)
    bnez    a6, .while.body_53
    sb      a6,18(sp)
    j       .while.exit_53
.while.body_53:
    lw      a6,48(sp)
    li      s1, 1
    ADDW    s3,a6,s1
    sw      a6,48(sp)
    sw      s3,36(sp)
    lw      a6,36(sp)
    mv      s1, a6
    sw      a6,36(sp)
    sw      s1,48(sp)
    j       .while.head_53
.while.exit_53:
    li      a6, 1
    ADDW    s1,a1,a6
    sw      a1,84(sp)
    lw      a1,20(sp)
    mv      a6, a1
    sw      a1,20(sp)
    sw      a6,56(sp)
    mv      a1, s1
    sw      s1,40(sp)
    sb      s2,28(sp)
    lw      a6,56(sp)
    sb      s4,19(sp)
    j       .while.head_33
.branch_short_circuit_p_false_218:
    lb      a6,17(sp)
    seqz    s1, a6
    sb      a6,17(sp)
    sb      s1,15(sp)
    lb      a6,15(sp)
    sb      a6,15(sp)
    lb      a6,15(sp)
    bnez    a6, .branch_short_circuit_c_true_218
    sb      a6,15(sp)
    j       .branch_short_circuit_c_false_218
.while.exit_29:
    li      a6, 1
    ADDW    s1,a2,a6
    mv      a2, s1
    sw      a4,68(sp)
    sb      a5,30(sp)
    sb      a7,29(sp)
    sw      s1,64(sp)
    j       .while.head_25
.while.exit_25:
    li      a4, 1
    ADDW    a6,a0,a4
    mv      a0, a6
    sb      a3,31(sp)
    sb      a5,30(sp)
    sw      a6,72(sp)
    sw      a2,76(sp)
    j       .while.head_21
.while.exit_21:
    ld      ra,96(sp)
    ld      s0,88(sp)
    sw      a1,84(sp)
    sw      a0,80(sp)
    lw      a0,84(sp)
    addi    sp,sp,104
    ret
