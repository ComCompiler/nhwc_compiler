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
    .globl if_if_Else
    .type if_if_Else,@function
if_if_Else:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L1_0:
    li      a0, 5
    li      a1, 10
    j       .L2_0
.L2_0:
    li      a2, 5
    xor     a3,a0,a2
    seqz    a3, a3
    bnez    a3, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    li      a4, 10
    xor     a5,a1,a4
    seqz    a5, a5
    bnez    a5, .branch_true_26
    j       .branch_false_26
.branch_true_26:
    j       .branch_false_26
.branch_false_26:
.branch_false_23:
    li      a6, 15
    add     a7,a0,a6
    j       .L3_0
.L3_0:
.L4_0:
    ld      ra,24(sp)
    ld      s0,16(sp)
    addi    sp,sp,32
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    call    if_if_Else
    sw      a0,4(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
