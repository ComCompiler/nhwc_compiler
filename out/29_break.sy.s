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
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L0_0:
    li      a0, 0
    li      a1, 0
    j       .while.head_23
.while.head_23:
    li      a2, 100
    slt     a3,a0,a2
    bnez    a3, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a2, 50
    xor     a4,a0,a2
    seqz    a4, a4
    bnez    a4, .branch_true_26
    j       .branch_false_26
.branch_true_26:
    sb      a4,14(sp)
    j       .while.exit_23
.while.exit_23:
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a1,16(sp)
    sw      a0,20(sp)
    lw      a0,16(sp)
    addi    sp,sp,40
    ret
.branch_false_26:
.L1_0:
    add     a2,a1,a0
    mv      a1, a2
    li      a5, 1
    add     a6,a0,a5
    mv      a0, a6
    sb      a4,14(sp)
    sb      a3,15(sp)
    sw      a6,4(sp)
    sw      a2,8(sp)
    j       .while.head_23
