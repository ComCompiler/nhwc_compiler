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
    li      a2, 5
    xor     a4,a0,a2
    seqz    a4, a4
    bnez    a4, .branch_true_26
    j       .branch_false_26
.branch_true_26:
    li      a1, 25
    j       .L3_0
.branch_false_26:
    li      a2, 10
    xor     a5,a0,a2
    seqz    a5, a5
    bnez    a5, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    li      a1, 42
    j       .L2_0
.branch_false_30:
    li      a2, 2
    mul     a6,a0,a2
    mv      a1, a6
    sw      a6,0(sp)
    j       .L2_0
.L2_0:
.L3_0:
.L4_0:
    li      a2, 1
    add     a5,a0,a2
    mv      a0, a5
    sw      a5,8(sp)
    sb      a3,15(sp)
    sb      a4,14(sp)
    j       .while.head_23
.while.exit_23:
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a1,16(sp)
    sw      a0,20(sp)
    lw      a0,16(sp)
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
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,24
    ret
