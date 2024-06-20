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
    .globl ifWhile
    .type ifWhile,@function
ifWhile:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,48(sp)
    addi    s0,sp,72
.L1_0:
    li      a0, 0
    mv      a1, a0
    li      a2, 3
    mv      a3, a2
    j       .L2_0
.L2_0:
    li      a4, 5
    xor     a5,a1,a4
    sltiu   a5,a5,1
    bnez    a5, .branch_true_23
    j       .branch_false_23
.while.head_26:
    li      a6, 2
    xor     a7,a3,a6
    sltiu   a7,a7,1
    bnez    a7, .while.body_26
    j       .while.exit_26
.while.body_26:
    add     s1,a3,a6
    j       .while.head_26
.while.exit_26:
    li      s2, 25
    add     s3,a3,s2
    j       .while.exit_31
.while.head_31:
    slt     s4,a1,a4
    bnez    s4, .while.body_31
    j       .while.exit_31
.while.body_31:
    mul     s5,a3,a6
    li      s6, 1
    add     s7,a1,s6
    j       .while.head_31
.while.exit_31:
.L3_0:
    ld      ra,64(sp)
    ld      s0,48(sp)
    mv      a0, a3
    addi    sp,sp,72
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,40
.L0_0:
    sw      s1,24(sp)
    sw      s3,16(sp)
    sb      s4,15(sp)
    sw      s5,8(sp)
    sw      s7,4(sp)
    call    ifWhile
    sw      a0,8(sp)
    ld      ra,32(sp)
    ld      s0,16(sp)
    mv      a0, a0
    addi    sp,sp,40
    ret
