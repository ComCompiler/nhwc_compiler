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
    .globl func
    .type func,@function
func:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,40(sp)
    addi    s0,sp,64
.L4_0:
    la      a0, a
    lw      a1,0(a0)
    mv      a2, a2
    mv      a3, a2
    li      a4, 1
    mv      a5, a4
    j       .L5_0
.L5_0:
    xor     a6,a5,a3
    sltiu   a6,a6,1
    bnez    a6, .branch_true_22
    j       .branch_false_22
.branch_true_22:
    add     a7,a5,a4
    ld      ra,56(sp)
    ld      s0,40(sp)
    li      a0, 1
    addi    sp,sp,64
    ret
.branch_false_22:
    ld      ra,56(sp)
    ld      s0,40(sp)
    li      a0, 0
    addi    sp,sp,64
    ret
.L6_0:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,40(sp)
    addi    s0,sp,64
.L0_0:
    li      s1, 0
    mv      s2, s1
    mv      s3, s1
    j       .while.head_32
.while.head_32:
    li      s4, 100
    slt     s5,s3,s4
    bnez    s5, .while.body_32
    j       .while.exit_32
.while.body_32:
    sw      s2,32(sp)
    sw      s3,24(sp)
    sb      s5,23(sp)
    call    func
    sw      a0,19(sp)
    xor     s1,a0,a4
    sltiu   s1,s1,1
    bnez    s1, .branch_true_35
    j       .branch_false_35
.branch_true_35:
    mv      s2, s2
    add     s3,s2,a4
    j       .branch_false_35
.branch_false_35:
.L1_0:
    mv      s4, s4
    add     s5,s4,a4
    j       .while.head_32
.while.exit_32:
    li      s6, 100
    slt     s7,s2,s6
    bnez    s7, .branch_true_39
    j       .branch_false_39
.branch_true_39:
    sb      s1,18(sp)
    sw      s2,32(sp)
    sw      s3,12(sp)
    sw      s4,24(sp)
    sw      s5,8(sp)
    sb      s7,7(sp)
    sw      a0,19(sp)
    li      a0, 1
    call    putint
    j       .L2_0
.branch_false_39:
    li      a0, 0
    call    putint
    j       .L2_0
.L2_0:
.L3_0:
    ld      ra,56(sp)
    ld      s0,40(sp)
    li      a0, 0
    addi    sp,sp,64
    ret
.section        .data
    .align 4
    .globl a
    .type a,@object
a:
    .word 7
