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
    .globl my_getint
    .type my_getint,@function
my_getint:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,48(sp)
    addi    s0,sp,64
.L2_0:
    li      a0, 0
    j       .while.head_21
.while.head_21:
    li      a1, 1
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
    bnez    a3, .while.body_21
    j       .while.exit_21
.while.body_21:
    sw      a0,44(sp)
    sb      a3,39(sp)
    call    getch
    sw      a0,32(sp)
    li      a1, 48
    sub     a2,a0,a1
    mv      a3, a2
    j       .L3_0
.L3_0:
    li      a1, 9
    slt     a4,a1,a3
    li      a5, 0
    slt     a6,a3,a5
    or      a7,a6,a4
    bnez    a7, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    sw      a3,40(sp)
    sb      a7,25(sp)
    sb      a4,27(sp)
    sw      a0,32(sp)
    sw      a2,28(sp)
    sb      a6,26(sp)
    lb      a3,39(sp)
    lw      a0,44(sp)
    j       .while.exit_21
.branch_false_25:
    sw      a3,40(sp)
    sb      a7,25(sp)
    sb      a4,27(sp)
    sw      a0,32(sp)
    sw      a2,28(sp)
    sb      a6,26(sp)
    lb      a3,39(sp)
    lw      a0,44(sp)
    j       .while.exit_21
.while.exit_21:
    lw      a1,40(sp)
    mv      a0, a1
    j       .while.head_32
.while.head_32:
    li      a2, 1
    li      a4, 0
    xor     a5,a2,a4
    snez    a5, a5
    bnez    a5, .while.body_32
    j       .while.exit_32
.while.body_32:
    sw      a0,44(sp)
    sw      a1,40(sp)
    sb      a3,39(sp)
    sb      a5,24(sp)
    call    getch
    sw      a0,20(sp)
    li      a1, 48
    sub     a2,a0,a1
    mv      a3, a2
    j       .L4_0
.L4_0:
    li      a1, 9
    slt     a4,a1,a3
    xori    a4,a4,1
    li      a5, 0
    slt     a6,a3,a5
    xori    a6,a6,1
    and     a7,a6,a4
    bnez    a7, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    lw      a1,44(sp)
    li      a5, 10
    mul     s1,a1,a5
    add     s2,s1,a3
    mv      a1, s2
.branch_false_36:
    sw      a3,40(sp)
    sb      a7,13(sp)
    sb      a4,15(sp)
    sw      a0,20(sp)
    sw      a2,16(sp)
    sb      a6,14(sp)
    lb      a3,39(sp)
    lw      a0,44(sp)
    lw      a1,40(sp)
    lb      a5,24(sp)
    j       .while.exit_32
.while.exit_32:
    ld      ra,56(sp)
    ld      s0,48(sp)
    sw      a0,44(sp)
    lw      a0,44(sp)
    addi    sp,sp,64
    ret
    .globl my_putint
    .type my_putint,@function
my_putint:
    addi    sp,sp,-144
    sd      ra,136(sp)
    sd      s0,128(sp)
    addi    s0,sp,144
.L1_0:
    li      a1, 0
    j       .while.head_47
.while.head_47:
    li      a2, 0
    slt     a3,a2,a0
    bnez    a3, .while.body_47
    j       .while.exit_47
.while.body_47:
    li      a2, 0
    li      a4, 1
    mul     a5,a4,a1
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,60
    li      a6, 10
    rem     a7,a0,a6
    li      s1, 48
    add     s2,a7,s1
    sw      s2,0(a2)
    div     s3,a0,a6
    mv      a0, s3
    add     s4,a1,a4
    mv      a1, s4
    sw      s3,28(sp)
    sd      a2,40(sp)
    sw      s2,32(sp)
    sw      s4,24(sp)
    sb      a3,55(sp)
    sw      a7,36(sp)
    j       .while.head_47
.while.exit_47:
    li      a2, 0
    slt     a4,a2,a1
    bnez    a4, .while.body_53
    j       .while.exit_53
.while.body_53:
    li      a2, 1
    sub     a5,a1,a2
    mv      a1, a5
    li      a6, 0
    mul     a7,a2,a1
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,60
    lw      s1,0(a6)
    sw      s1,4(sp)
    sw      a0,124(sp)
    sw      a1,56(sp)
    sb      a3,55(sp)
    sb      a4,23(sp)
    sw      a5,16(sp)
    sd      a6,8(sp)
    lw      a0,4(sp)
    call    putch
    lw      a0,124(sp)
    lb      a3,55(sp)
    lw      a1,56(sp)
    j       .while.exit_47
.while.exit_53:
    ld      ra,136(sp)
    ld      s0,128(sp)
    addi    sp,sp,144
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L0_0:
    call    my_getint
    sw      a0,20(sp)
    mv      a1, a0
    j       .while.head_61
.while.head_61:
    li      a2, 0
    slt     a3,a2,a1
    bnez    a3, .while.body_61
    j       .while.exit_61
.while.body_61:
    sw      a0,20(sp)
    sw      a1,16(sp)
    sb      a3,15(sp)
    call    my_getint
    sw      a0,8(sp)
    mv      a1, a0
    sw      a0,8(sp)
    sw      a1,4(sp)
    lw      a0,4(sp)
    call    my_putint
    li      a0, 10
    call    putch
    lw      a0,16(sp)
    li      a1, 1
    sub     a2,a0,a1
    mv      a0, a2
    sw      a0,16(sp)
    sw      a2,0(sp)
    lw      a1,16(sp)
    lw      a0,20(sp)
    j       .while.head_61
.while.exit_61:
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,20(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
.section ___var
    .data
    .align 4
    .globl ascii_0
    .type ascii_0,@object
ascii_0:
    .word 48
