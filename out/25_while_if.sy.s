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
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L5_0:
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
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
    j       .while.head_26
.while.head_26:
    li      a4, 75
    slt     a5,a3,a4
    bnez    a5, .while.body_26
    j       .while.exit_26
.while.body_26:
    li      a6, 42
    j       .L2_0
.L2_0:
    li      a7, 100
    slt     s1,a3,a7
    bnez    s1, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    add     s2,a3,a6
    j       .L3_0
.L3_0:
    li      s3, 99
    slt     s4,s3,a3
    bnez    s4, .branch_true_35
    j       .branch_false_35
.branch_true_35:
    li      s5, 2
    mul     s6,a6,s5
    mv      s7, s6
    j       .L4_0
.L4_0:
    sb      s1,31(sp)
    sw      s2,24(sp)
    sb      s4,23(sp)
    sw      s6,12(sp)
    sw      s7,16(sp)
    sw      a0,52(sp)
    li      a0, 0
    call    get_one
    sw      a0,8(sp)
    li      s1, 1
    xor     s2,a0,s1
    seqz    s2, s2
    bnez    s2, .branch_true_40
    j       .branch_false_40
.branch_true_40:
    li      s4, 2
    mul     s5,s3,s4
    j       .branch_false_40
.branch_false_40:
.branch_false_35:
.branch_false_31:
    j       .while.head_26
.while.exit_26:
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
    mv      a1, a0
    sw      a1,4(sp)
    sw      a0,0(sp)
    call    putint
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
