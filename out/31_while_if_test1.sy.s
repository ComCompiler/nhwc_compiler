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
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,32(sp)
    addi    s0,sp,56
.L1_0:
    li      a0, 0
    mv      a1, a0
    mv      a2, a0
    j       .while.head_23
.while.head_23:
    li      a3, 100
    slt     a4,a1,a3
    bnez    a4, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a5, 5
    xor     a6,a1,a5
    sltiu   a6,a6,1
    bnez    a6, .branch_true_26
    j       .branch_false_26
.branch_true_26:
    li      a7, 25
    j       .L3_0
.branch_false_26:
    li      s1, 10
    xor     s2,a1,s1
    sltiu   s2,s2,1
    bnez    s2, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    li      s3, 42
    j       .L2_0
.branch_false_30:
    li      s4, 2
    mul     s5,a1,s4
    j       .L2_0
.L2_0:
.L3_0:
.L4_0:
    li      s6, 1
    add     s7,a1,s6
    j       .while.head_23
.while.exit_23:
    ld      ra,48(sp)
    ld      s0,32(sp)
    mv      a0, a2
    addi    sp,sp,56
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,40
.L0_0:
    sb      s2,7(sp)
    sw      s5,3(sp)
    sw      s7,8(sp)
    call    whileIf
    sw      a0,8(sp)
    ld      ra,32(sp)
    ld      s0,16(sp)
    mv      a0, a0
    addi    sp,sp,40
    ret
