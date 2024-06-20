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
    .globl ifElseIf
    .type ifElseIf,@function
ifElseIf:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,40(sp)
    addi    s0,sp,64
.L1_0:
    li      a0, 5
    mv      a1, a0
    li      a2, 10
    mv      a3, a2
    j       .L2_0
.L2_0:
    li      a4, 0xb
    xor     a5,a3,a4
    sltiu   a5,a5,1
    li      a6, 6
    xor     a7,a1,a6
    sltiu   a7,a7,1
    mv      s1, s1
    bnez    s1, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    ld      ra,56(sp)
    ld      s0,40(sp)
    mv      a0, a1
    addi    sp,sp,64
    ret
.branch_false_23:
    li      s2, 1
    xor     s3,a1,s2
    sltiu   s3,s3,1
    xor     s4,a3,a2
    sltiu   s4,s4,1
    and     s5,s4,s3
    bnez    s5, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    li      s6, 25
    j       .L4_0
.branch_false_28:
    li      s7, -5
    xor     s8,a1,s7
    sltiu   s8,s8,1
    xor     s9,a3,a2
    sltiu   s9,s9,1
    and     s10,s9,s8
    bnez    s10, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    li      s11, 15
    add     a0,a1,s11
    j       .L3_0
.branch_false_31:
    li      a2, 0
    sub     a4,a2,a1
    j       .L3_0
.L3_0:
.L4_0:
.L5_0:
.L6_0:
    ld      ra,56(sp)
    ld      s0,40(sp)
    mv      a0, a1
    addi    sp,sp,64
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,40
.L0_0:
    sb      s1,21(sp)
    sb      s3,20(sp)
    sb      s4,19(sp)
    sb      s5,18(sp)
    sb      s8,17(sp)
    sb      s9,16(sp)
    sb      s10,15(sp)
    call    ifElseIf
    sw      a0,11(sp)
    sw      a0,8(sp)
    sw      a0,8(sp)
    mv      a0, a0
    call    putint
    ld      ra,32(sp)
    ld      s0,16(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
