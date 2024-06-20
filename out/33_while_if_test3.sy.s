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
    .globl deepWhileBr
    .type deepWhileBr,@function
deepWhileBr:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
.L1_0:
    add     a2,a0,a1
    mv      a3, a2
    j       .while.head_22
.while.head_22:
    li      a4, 75
    slt     a5,a3,a4
    bnez    a5, .while.body_22
    j       .while.exit_22
.while.body_22:
    li      a6, 42
    j       .L2_0
.L2_0:
    li      a7, 100
    slt     s1,a3,a7
    bnez    s1, .branch_true_27
    j       .branch_false_27
.branch_true_27:
    add     s2,a3,a6
    j       .L3_0
.L3_0:
    li      s3, 99
    slt     s4,s3,a3
    bnez    s4, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    li      s5, 2
    mul     s6,a6,s5
    mv      s7, s6
    j       .L4_0
.L4_0:
    li      s8, 1
    li      s9, 1
    xor     s10,s8,s9
    seqz    s10, s10
    bnez    s10, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    mul     s11,s7,s5
    j       .branch_false_36
.branch_false_36:
.branch_false_31:
.branch_false_27:
    j       .while.head_22
.while.exit_22:
    ld      ra,64(sp)
    ld      s0,56(sp)
    mv      a0, a3
    addi    sp,sp,72
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    li      a0, 2
    sw      a0,4(sp)
    call    deepWhileBr
    sw      a0,0(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
