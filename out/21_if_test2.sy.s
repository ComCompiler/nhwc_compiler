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
    .globl ifElseIf
    .type ifElseIf,@function
ifElseIf:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L1_0:
    li      a0, 5
    li      a1, 10
    j       .L2_0
.L2_0:
    li      a2, 0xb
    xor     a3,a1,a2
    seqz    a3, a3
    li      a4, 6
    xor     a5,a0,a4
    seqz    a5, a5
    or      a6,a5,a3
    bnez    a6, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a0,28(sp)
    lw      a0,28(sp)
    addi    sp,sp,48
    ret
.branch_false_23:
    li      a2, 1
    xor     a4,a0,a2
    seqz    a4, a4
    li      a7, 10
    xor     s1,a1,a7
    seqz    s1, s1
    and     s2,s1,a4
    bnez    s2, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    li      a0, 25
    j       .L4_0
.branch_false_28:
    li      a2, -5
    xor     a7,a0,a2
    seqz    a7, a7
    li      s3, 10
    xor     s4,a1,s3
    seqz    s4, s4
    and     s5,s4,a7
    bnez    s5, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    li      a2, 15
    add     s3,a0,a2
    mv      a0, s3
    j       .L3_0
.branch_false_31:
    li      a2, 0
    sub     s3,a2,a0
    mv      a0, s3
    sw      s3,4(sp)
    lw      s3,8(sp)
    j       .L3_0
.L3_0:
.L4_0:
.L5_0:
.L6_0:
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a0,28(sp)
    lw      a0,28(sp)
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
    call    ifElseIf
    sw      a0,4(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    call    putint
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
