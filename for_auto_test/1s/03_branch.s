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
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L0_0:
    li      a0, 1
    li      a1, 2
    li      a2, 3
    li      a3, 4
    li      a4, 5
    li      a5, 6
    j       .L1_0
.L1_0:
    li      a6, 1
    li      a7, 1
    and     s1,a6,a7
    bnez    s1, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    li      a6, 5
    li      a7, 0
    xor     s2,a6,a7
    snez    s2, s2
    li      s3, -2
    xor     s4,s3,a7
    snez    s4, s4
    or      s5,s2,s4
    bnez    s5, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    li      a6, 3
    li      a7, 2
    xor     s3,a6,a7
    seqz    s3, s3
    li      s6, 1
    and     s7,s3,s6
    bnez    s7, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 3
    addi    sp,sp,56
    ret
.branch_false_31:
    li      a6, 0
    li      a7, 0
    xor     s6,a6,a7
    snez    s6, s6
    li      s8, 5
    xor     s9,s8,a6
    snez    s9, s9
    and     s10,s6,s9
    bnez    s10, .branch_true_35
    j       .branch_false_35
.branch_true_35:
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 4
    addi    sp,sp,56
    ret
.branch_false_35:
    li      a6, 3
    li      a7, 2
    slt     s8,a6,a7
    xori    s8,s8,1
    bnez    s8, .branch_true_39
    j       .branch_false_39
.branch_true_39:
    li      a6, 0
    li      a7, 0
    or      s11,a6,a7
    bnez    s11, .branch_true_42
    j       .branch_false_42
.branch_true_42:
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 6
    addi    sp,sp,56
    ret
.branch_false_42:
    li      a6, 3
    li      a7, 6
    sw      a0,36(sp)
    xor     a0,a6,a7
    snez    a0, a0
    bnez    a0, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    li      a6, 22
    li      a7, 10
    sb      a0,4(sp)
    slt     a0,a7,a6
    bnez    a0, .branch_true_49
    j       .branch_false_49
.branch_true_49:
    li      a6, 6
    li      a7, 0
    sb      a0,3(sp)
    xor     a0,a6,a7
    snez    a0, a0
    seqz    a6, a0
    bnez    a6, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    ld      ra,48(sp)
    ld      s0,40(sp)
    sb      a0,2(sp)
    li      a0, 9
    addi    sp,sp,56
    ret
.branch_false_52:
    ld      ra,48(sp)
    ld      s0,40(sp)
    sb      a0,2(sp)
    li      a0, 10
    addi    sp,sp,56
    ret
.L2_0:
.branch_false_49:
    ld      ra,48(sp)
    ld      s0,40(sp)
    sb      a0,3(sp)
    li      a0, 8
    addi    sp,sp,56
    ret
.L3_0:
.branch_false_46:
    ld      ra,48(sp)
    ld      s0,40(sp)
    sb      a0,4(sp)
    li      a0, 7
    addi    sp,sp,56
    ret
.L4_0:
.L5_0:
.branch_false_39:
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 5
    addi    sp,sp,56
    ret
.L6_0:
.L7_0:
.L8_0:
.branch_false_28:
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 2
    addi    sp,sp,56
    ret
.L9_0:
.branch_false_25:
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 1
    addi    sp,sp,56
    ret
.L10_0:
