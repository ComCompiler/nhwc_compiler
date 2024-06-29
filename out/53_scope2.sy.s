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
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
.L0_0:
    la      a0, k
    li      a1, 3389
    sw      a1,0(a0)
    j       .L1_0
.L1_0:
    la      a0, k
    lw      a1,0(a0)
    li      a2, 10000
    slt     a3,a1,a2
    bnez    a3, .branch_true_21
    j       .branch_false_21
.branch_true_21:
    la      a0, k
    lw      a2,0(a0)
    li      a4, 1
    add     a5,a2,a4
    la      a6, k
    sw      a5,0(a6)
    li      a7, 112
    j       .while.head_26
.while.head_26:
    li      a0, 10
    slt     a4,a0,a7
    bnez    a4, .while.body_26
    j       .while.exit_26
.while.body_26:
    li      a0, 88
    sub     a6,a7,a0
    mv      a7, a6
    j       .L2_0
.L2_0:
    li      a0, 1000
    slt     s1,a7,a0
    bnez    s1, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    li      a0, 9
    li      s2, 11
    li      a0, 10
    sub     s3,a7,a0
    mv      a7, s3
    li      s4, 11
    add     s5,a7,s4
    add     s6,s5,s2
    mv      a7, s6
    sw      a0,28(sp)
    sw      s6,8(sp)
    sw      s5,12(sp)
    sw      s3,20(sp)
    sw      s4,16(sp)
    sw      s2,24(sp)
    j       .branch_false_30
.branch_false_30:
    sb      a4,43(sp)
    sw      a6,36(sp)
    sb      s1,35(sp)
    j       .while.head_26
.while.exit_26:
    sw      a1,60(sp)
    sw      a2,52(sp)
    sb      a3,59(sp)
    sb      a4,43(sp)
    sw      a5,48(sp)
    sw      a7,44(sp)
    lw      a0,44(sp)
    call    putint
    lb      a3,59(sp)
    lw      a1,60(sp)
    j       .branch_false_21
.branch_false_21:
.L3_0:
    la      a0, k
    lw      a2,0(a0)
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a2,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,80
    ret
.section ___var
    .data
    .align 4
    .globl k
    .type k,@object
k:
    .word 0
