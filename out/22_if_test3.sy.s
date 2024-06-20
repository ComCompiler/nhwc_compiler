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
    .globl ififElse
    .type ififElse,@function
ififElse:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,32(sp)
    addi    s0,sp,56
.L1_0:
    li      a0, 5
    mv      a1, a0
    li      a2, 10
    mv      a3, a2
    j       .L2_0
.L2_0:
    xor     a4,a1,a0
    sltiu   a4,a4,1
    bnez    a4, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    xor     a5,a3,a2
    sltiu   a5,a5,1
    bnez    a5, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    li      a6, 25
    j       .L3_0
.branch_false_25:
    li      a7, 15
    add     s1,a1,a7
    j       .L3_0
.L3_0:
.branch_false_23:
.L4_0:
    ld      ra,48(sp)
    ld      s0,32(sp)
    mv      a0, a1
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
    sw      s1,8(sp)
    call    ififElse
    sw      a0,8(sp)
    ld      ra,32(sp)
    ld      s0,16(sp)
    mv      a0, a0
    addi    sp,sp,40
    ret
