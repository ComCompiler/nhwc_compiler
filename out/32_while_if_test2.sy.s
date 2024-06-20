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
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L1_0:
    li      a0, 0
    li      a1, 3
    j       .L2_0
.L2_0:
    li      a2, 5
    xor     a3,a0,a2
    seqz    a3, a3
    bnez    a3, .branch_true_23
    j       .branch_false_23
.while.head_26:
    li      a4, 2
    xor     a5,a1,a4
    seqz    a5, a5
    bnez    a5, .while.body_26
    j       .while.exit_26
.while.body_26:
    add     a6,a1,a4
    j       .while.head_26
.while.exit_26:
    li      a7, 25
    add     s1,a1,a7
    j       .while.exit_31
.while.head_31:
    slt     s2,a0,a2
    bnez    s2, .while.body_31
    j       .while.exit_31
.while.body_31:
    mul     s3,a1,a4
    li      s4, 1
    add     s5,a0,s4
    j       .while.head_31
.while.exit_31:
.L3_0:
    ld      ra,40(sp)
    ld      s0,32(sp)
    mv      a0, a1
    addi    sp,sp,48
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    call    ifWhile
    sw      a0,4(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
