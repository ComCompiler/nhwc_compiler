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
    .globl whileIf
    .type whileIf,@function
whileIf:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L1_0:
    li      a0, 0
    li      a1, 0
    j       .while.head_23
.while.head_23:
    li      a2, 100
    slt     a3,a0,a2
    bnez    a3, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a4, 5
    xor     a5,a0,a4
    seqz    a5, a5
    bnez    a5, .branch_true_26
    j       .branch_false_26
.branch_true_26:
    j       .L3_0
.branch_false_26:
    li      a6, 10
    xor     a7,a0,a6
    seqz    a7, a7
    bnez    a7, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    j       .L2_0
.branch_false_30:
    li      s1, 2
    mul     s2,a0,s1
    j       .L2_0
.L2_0:
.L3_0:
.L4_0:
    li      s3, 1
    add     s4,a0,s3
    j       .while.head_23
.while.exit_23:
    ld      ra,32(sp)
    ld      s0,24(sp)
    mv      a0, a1
    addi    sp,sp,40
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    call    whileIf
    sw      a0,4(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
