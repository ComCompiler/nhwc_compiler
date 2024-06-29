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
.branch_true_23:
    li      a2, 2
    xor     a4,a1,a2
    seqz    a4, a4
    bnez    a4, .while.body_26
    j       .while.exit_26
.while.body_26:
    li      a2, 2
    add     a5,a1,a2
    mv      a1, a5
    sb      a4,22(sp)
    sw      a5,16(sp)
    j       .branch_true_23
.while.exit_26:
    li      a2, 25
    add     a5,a1,a2
    mv      a1, a5
    j       .while.exit_31
.branch_false_23:
    li      a2, 5
    slt     a4,a0,a2
    bnez    a4, .while.body_31
    sb      a4,11(sp)
    lb      a4,22(sp)
    lw      a5,12(sp)
    j       .while.exit_31
.while.body_31:
    li      a2, 2
    mul     a5,a1,a2
    mv      a1, a5
    li      a6, 1
    add     a7,a0,a6
    mv      a0, a7
    sb      a4,11(sp)
    sw      a5,4(sp)
    sw      a7,0(sp)
    j       .branch_false_23
.while.exit_31:
.L3_0:
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a1,24(sp)
    sw      a0,28(sp)
    lw      a0,24(sp)
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
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,24
    ret
