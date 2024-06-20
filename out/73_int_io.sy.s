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
    .globl my_getint
    .type my_getint,@function
my_getint:
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,64(sp)
    addi    s0,sp,88
.L0_0:
    li      a0, 0
    mv      a1, a0
    j       .while.head_20
.while.head_20:
    li      a2, 1
    xor     a3,a2,a0
    sltiu   a3,a3,1
    xori    a3,a3,1
    bnez    a3, .while.body_20
    j       .while.exit_20
.while.body_20:
    call    getch
    sw      a0,43(sp)
    li      a4, 48
    sub     a5,a0,a4
    mv      a6, a5
    j       .L1_0
.L1_0:
    li      a7, 9
    slt     s1,a6,a7
    li      s2, 0
    slt     s3,a6,s2
    mv      s4, s4
    bnez    s4, .branch_true_24
    j       .branch_false_24
.branch_true_24:
    j       .while.exit_20
.branch_false_24:
    j       .while.exit_20
.while.exit_20:
    j       .while.head_31
.while.head_31:
    xor     s5,a2,s2
    sltiu   s5,s5,1
    xori    s5,s5,1
    bnez    s5, .while.body_31
    j       .while.exit_31
.while.body_31:
    sb      s1,35(sp)
    sb      s3,34(sp)
    sb      s4,33(sp)
    sb      s5,32(sp)
    call    getch
    sw      a0,43(sp)
    sw      a0,24(sp)
    sub     s1,a0,a4
    j       .L2_0
.L2_0:
    slt     s2,a7,a6
    xori    s2,s2,1
    li      s3, 0
    slt     s4,s3,a6
    xori    s4,s4,1
    and     s5,s4,s2
    bnez    s5, .branch_true_35
    j       .branch_false_35
.branch_true_35:
    li      s6, 10
    mul     s7,a1,s6
    add     s8,s7,a6
.branch_false_35:
    j       .while.exit_31
.while.exit_31:
    ld      ra,80(sp)
    ld      s0,64(sp)
    mv      a0, a1
    addi    sp,sp,88
    ret
.section        .data
    .align 4
    .globl ascii_0
    .type ascii_0,@object
ascii_0:
    .word 48
