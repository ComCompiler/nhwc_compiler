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
    li      a4, 42
    j       .L2_0
.L2_0:
    li      a6, 100
    slt     a7,a3,a6
    bnez    a7, .branch_true_27
    j       .branch_false_27
.branch_true_27:
    add     a6,a3,a4
    mv      a3, a6
    j       .L3_0
.L3_0:
    li      s1, 99
    slt     s2,s1,a3
    bnez    s2, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    li      s1, 2
    mul     s3,a4,s1
    mv      s4, s3
    j       .L4_0
.L4_0:
    li      s1, 1
    li      s5, 1
    xor     s6,s1,s5
    seqz    s6, s6
    bnez    s6, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    li      s1, 2
    mul     s5,s4,s1
    mv      a3, s5
    sw      s5,4(sp)
    j       .branch_false_36
.branch_false_36:
.branch_false_31:
.branch_false_27:
    sb      a5,39(sp)
    sb      a7,31(sp)
    sw      a4,32(sp)
    j       .while.head_22
.while.exit_22:
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a3,44(sp)
    sw      a0,52(sp)
    lw      a0,44(sp)
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
    lw      a0,4(sp)
    lw      a1,4(sp)
    call    deepWhileBr
    sw      a0,0(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,0(sp)
    lw      a0,0(sp)
    addi    sp,sp,24
    ret
