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
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
    li      s1, 0
    sw      s1,36(sp)
.while.head_20:
    li      s1, 1
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,31(sp)
    lb      s1,31(sp)
    bnez    s1, .while.body_20
    j       .while.exit_20
.while.body_20:
    call    getch
    sw      a0,4(sp)
    lw      s1,4(sp)
    li      s2, 48
    sub     s3,s1,s2
    sw      s3,0(sp)
    lw      s1,0(sp)
    sw      s1,32(sp)
    lw      s1,32(sp)
    li      s2, 9
    slt     s3,s2,s1
    sb      s3,18(sp)
    lw      s1,32(sp)
    li      s2, 0
    slt     s3,s1,s2
    sb      s3,17(sp)
    lb      s1,17(sp)
    lb      s2,18(sp)
    or      s3,s1,s2
    sb      s3,16(sp)
    lb      s1,16(sp)
    bnez    s1, .branch_true_24
    j       .branch_false_24
.branch_true_24:
    j       .while.exit_20
.branch_false_24:
    j       .while.exit_20
.while.exit_20:
    lw      s1,32(sp)
    sw      s1,36(sp)
.while.head_31:
    li      s1, 1
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sb      s3,30(sp)
    lb      s1,30(sp)
    bnez    s1, .while.body_31
    j       .while.exit_31
.while.body_31:
    call    getch
    sw      a0,24(sp)
    lw      s1,24(sp)
    li      s2, 48
    sub     s3,s1,s2
    sw      s3,20(sp)
    lw      s1,20(sp)
    sw      s1,32(sp)
    lw      s1,32(sp)
    li      s2, 9
    slt     s3,s1,s2
    xori    s3,s3,1
    sb      s3,29(sp)
    lw      s1,32(sp)
    li      s2, 0
    slt     s3,s2,s1
    xori    s3,s3,1
    sb      s3,28(sp)
    lb      s1,28(sp)
    lb      s2,29(sp)
    and     s3,s1,s2
    sb      s3,19(sp)
    lb      s1,19(sp)
    bnez    s1, .branch_true_35
    j       .branch_false_35
.branch_true_35:
    lw      s1,36(sp)
    li      s2, 10
    mul     s3,s1,s2
    sw      s3,12(sp)
    lw      s1,12(sp)
    lw      s2,32(sp)
    add     s3,s1,s2
    sw      s3,8(sp)
    lw      s1,8(sp)
    sw      s1,36(sp)
.branch_false_35:
    j       .while.exit_31
.while.exit_31:
    ld      ra,48(sp)
    ld      s0,40(sp)
    lw      a0,36(sp)
    addi    sp,sp,56
    ret
.section        .data
    .align 4
    .globl ascii_0
    .type ascii_0,@object
ascii_0:
    .word 48
