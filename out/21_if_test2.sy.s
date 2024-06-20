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
    bnez    a6, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    ld      ra,40(sp)
    ld      s0,32(sp)
    addi    sp,sp,48
    ret
.branch_false_23:
    li      a7, 1
    xor     s1,a0,a7
    seqz    s1, s1
    li      s2, 10
    xor     s3,a1,s2
    seqz    s3, s3
    and     s4,s3,s1
    bnez    s4, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    j       .L4_0
.branch_false_28:
    li      s5, -5
    xor     s6,a0,s5
    seqz    s6, s6
    xor     s7,a1,s2
    seqz    s7, s7
    and     s8,s7,s6
    bnez    s8, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    li      s9, 15
    add     s10,a0,s9
    j       .L3_0
.branch_false_31:
    li      s11, 0
    sub     a2,s11,a0
    j       .L3_0
.L3_0:
.L4_0:
.L5_0:
.L6_0:
    ld      ra,40(sp)
    ld      s0,32(sp)
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
    call    putint
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
