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
    .globl func
    .type func,@function
func:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L4_0:
    la      a0, a
    lw      a1,0(a0)
    mv      a3, a2
    li      a4, 1
    j       .L5_0
.L5_0:
    xor     a5,a4,a3
    seqz    a5, a5
    bnez    a5, .branch_true_22
    j       .branch_false_22
.branch_true_22:
    li      a6, 1
    add     a7,a4,a6
    ld      ra,32(sp)
    ld      s0,24(sp)
    li      a0, 1
    addi    sp,sp,40
    ret
.branch_false_22:
    ld      ra,32(sp)
    ld      s0,24(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
.L6_0:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L0_0:
    li      a0, 0
    li      a1, 0
    j       .while.head_32
.while.head_32:
    li      a2, 100
    slt     a3,a1,a2
    bnez    a3, .while.body_32
    j       .while.exit_32
.while.body_32:
    call    func
    sw      a0,28(sp)
    sw      a0,16(sp)
    li      a4, 1
    xor     a5,a0,a4
    seqz    a5, a5
    bnez    a5, .branch_true_35
    j       .branch_false_35
.branch_true_35:
    add     a7,a6,a4
    j       .branch_false_35
.branch_false_35:
.L1_0:
    add     s1,a1,a4
    j       .while.head_32
.while.exit_32:
    slt     s2,a6,a2
    bnez    s2, .branch_true_39
    j       .branch_false_39
.branch_true_39:
    sw      s1,4(sp)
    sb      s2,3(sp)
    sw      a0,16(sp)
    li      a0, 1
    call    putint
    j       .L2_0
.branch_false_39:
    li      a0, 0
    call    putint
    j       .L2_0
.L2_0:
.L3_0:
    ld      ra,40(sp)
    ld      s0,32(sp)
    li      a0, 0
    addi    sp,sp,48
    ret
.section        .data
    .align 4
    .globl a
    .type a,@object
a:
    .word 7
