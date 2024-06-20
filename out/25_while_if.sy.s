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
    .globl get_one
    .type get_one,@function
get_one:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,40
.L5_0:
    ld      ra,32(sp)
    ld      s0,16(sp)
    li      a0, 1
    addi    sp,sp,40
    ret
    .globl deepWhileBr
    .type deepWhileBr,@function
deepWhileBr:
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,80(sp)
    addi    s0,sp,104
.L1_0:
    add     a2,a0,a1
    mv      a3, a2
    j       .while.head_26
.while.head_26:
    li      a4, 75
    slt     a5,a3,a4
    bnez    a5, .while.body_26
    j       .while.exit_26
.while.body_26:
    li      a6, 42
    mv      a7, a6
    j       .L2_0
.L2_0:
    li      s1, 100
    slt     s2,a3,s1
    bnez    s2, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    add     s3,a3,a7
    j       .L3_0
.L3_0:
    li      s4, 99
    slt     s5,s4,a3
    bnez    s5, .branch_true_35
    j       .branch_false_35
.branch_true_35:
    li      s6, 2
    mul     s7,a7,s6
    mv      s8, s7
    j       .L4_0
.L4_0:
    sb      s2,42(sp)
    sw      s3,36(sp)
    sb      s5,35(sp)
    sw      s7,20(sp)
    sw      s8,28(sp)
    sw      a0,72(sp)
    li      a0, 0
    call    get_one
    sw      a0,12(sp)
    li      s1, 1
    xor     s2,a0,s1
    sltiu   s2,s2,1
    bnez    s2, .branch_true_40
    j       .branch_false_40
.branch_true_40:
    mv      s3, s3
    li      s4, 2
    mul     s5,s3,s4
    j       .branch_false_40
.branch_false_40:
.branch_false_35:
.branch_false_31:
    j       .while.head_26
.while.exit_26:
    ld      ra,96(sp)
    ld      s0,80(sp)
    mv      a0, a3
    addi    sp,sp,104
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L0_0:
    mv      s6, s4
    sb      s2,11(sp)
    sw      s3,28(sp)
    sw      s5,7(sp)
    sw      s6,16(sp)
    sw      a0,12(sp)
    mv      a0, a0
    sw      a1,64(sp)
    mv      a1, a1
    call    deepWhileBr
    sw      a0,8(sp)
    mv      a1, a0
    sw      a1,16(sp)
    sw      a0,8(sp)
    mv      a0, a0
    call    putint
    ld      ra,40(sp)
    ld      s0,24(sp)
    li      a0, 0
    addi    sp,sp,48
    ret
