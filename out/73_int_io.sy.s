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
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,48(sp)
    addi    s0,sp,64
.L0_0:
    li      a0, 0
    j       .while.head_20
.while.head_20:
    li      a1, 1
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
    bnez    a3, .while.body_20
    j       .while.exit_20
.while.body_20:
    call    getch
    sw      a0,44(sp)
    sw      a0,32(sp)
    li      a4, 48
    sub     a5,a0,a4
    mv      a6, a5
    j       .L1_0
.L1_0:
    li      a7, 9
    slt     s1,a6,a7
    slt     s2,a6,a2
    bnez    s3, .branch_true_24
    j       .branch_false_24
.branch_true_24:
    j       .while.exit_20
.branch_false_24:
    j       .while.exit_20
.while.exit_20:
    mv      s4, a6
    j       .while.head_31
.while.head_31:
    xor     s5,a1,a2
    snez    s5, s5
    bnez    s5, .while.body_31
    j       .while.exit_31
.while.body_31:
    sb      s1,27(sp)
    sb      s2,26(sp)
    sb      s3,25(sp)
    sw      s4,44(sp)
    sb      s5,24(sp)
    call    getch
    sw      a0,32(sp)
    sw      a0,20(sp)
    sub     s1,a0,a4
    j       .L2_0
.L2_0:
    slt     s2,a6,a7
    xori    s2,s2,1
    slt     s3,a6,a2
    xori    s3,s3,1
    and     s4,s3,s2
    bnez    s4, .branch_true_35
    j       .branch_false_35
.branch_true_35:
    li      s6, 10
    mul     s7,s5,s6
    add     s8,s7,a6
.branch_false_35:
    j       .while.exit_31
.while.exit_31:
    ld      ra,56(sp)
    ld      s0,48(sp)
    mv      a0, s5
    addi    sp,sp,64
    ret
.section        .data
    .align 4
    .globl ascii_0
    .type ascii_0,@object
ascii_0:
    .word 48
