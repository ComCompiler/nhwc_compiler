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
    .globl quick_read
    .type quick_read,@function
quick_read:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
.L8_0:
    call    getch
    sw      a0,52(sp)
    mv      a1, a0
    li      a2, 0
    li      a3, 0
    j       .while.head_22
.while.head_22:
    li      a4, 57
    slt     a5,a4,a1
    li      a6, 48
    slt     a7,a1,a6
    or      s1,a7,a5
    bnez    s1, .while.body_22
    j       .while.exit_22
.while.body_22:
    li      a4, 45
    xor     a6,a1,a4
    seqz    a6, a6
    bnez    a6, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    li      a3, 1
    j       .branch_false_25
.branch_false_25:
.L9_0:
    sb      s1,37(sp)
    sw      a0,52(sp)
    sw      a1,48(sp)
    sw      a2,44(sp)
    sw      a3,40(sp)
    sb      a5,39(sp)
    sb      a6,36(sp)
    sb      a7,38(sp)
    call    getch
    sw      a0,32(sp)
    mv      a1, a0
    sw      a0,32(sp)
    lw      a3,40(sp)
    lw      a2,44(sp)
    lw      a0,52(sp)
    j       .while.head_22
.while.exit_22:
    li      a4, 57
    slt     a6,a4,a1
    xori    a6,a6,1
    li      s2, 48
    slt     s3,a1,s2
    xori    s3,s3,1
    and     s4,s3,a6
    bnez    s4, .while.body_29
    j       .while.exit_29
.while.body_29:
    li      a4, 10
    mul     s2,a2,a4
    add     s5,s2,a1
    li      s6, 48
    sub     s7,s5,s6
    mv      a2, s7
    sb      s1,37(sp)
    sw      s2,24(sp)
    sb      s3,30(sp)
    sb      s4,29(sp)
    sw      s5,20(sp)
    sw      s7,16(sp)
    sw      a0,52(sp)
    sw      a1,48(sp)
    sw      a2,44(sp)
    sw      a3,40(sp)
    sb      a5,39(sp)
    sb      a6,31(sp)
    sb      a7,38(sp)
    call    getch
    sw      a0,12(sp)
    mv      a1, a0
    sw      a0,12(sp)
    lb      a7,38(sp)
    lw      a3,40(sp)
    lw      a2,44(sp)
    lw      a0,52(sp)
    lb      a5,39(sp)
    lb      s1,37(sp)
    j       .while.exit_22
.while.exit_29:
    li      a4, 0
    xor     s2,a3,a4
    snez    s2, s2
    bnez    s2, .branch_true_34
    j       .branch_false_34
.branch_true_34:
    li      a4, 0
    sub     s5,a4,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s5,4(sp)
    sw      a0,52(sp)
    lw      a0,4(sp)
    addi    sp,sp,72
    ret
.branch_false_34:
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a2,44(sp)
    sw      a0,52(sp)
    lw      a0,44(sp)
    addi    sp,sp,72
    ret
.L10_0:
    .globl init
    .type init,@function
init:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L7_0:
    li      a0, 1
    j       .while.head_41
.while.head_41:
    la      a1, n
    lw      a2,0(a1)
    slt     a3,a2,a0
    xori    a3,a3,1
    bnez    a3, .while.body_41
    j       .while.exit_41
.while.body_41:
    li      a1, 0
    mul     a5,a4,a0
    add     a1,a1,a5
    slli a1,a1,2
    la      a6, fa
    add     a1,a1,a6
    sw      a0,0(a1)
    add     a7,a0,a4
    mv      a0, a7
    sb      a3,23(sp)
    sd      a1,8(sp)
    sw      a7,4(sp)
    sw      a2,24(sp)
    j       .while.head_41
.while.exit_41:
    ld      ra,40(sp)
    ld      s0,32(sp)
    addi    sp,sp,48
    ret
    .globl find
    .type find,@function
find:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
.L5_0:
    li      a1, 0
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,2
    la      a4, fa
    add     a1,a1,a4
    lw      a5,0(a1)
    xor     a6,a5,a0
    seqz    a6, a6
    bnez    a6, .branch_true_49
    j       .branch_false_49
.branch_true_49:
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a0,52(sp)
    lw      a0,52(sp)
    addi    sp,sp,72
    ret
.branch_false_49:
    li      a2, 0
    mul     a4,a3,a0
    add     a2,a2,a4
    slli a2,a2,2
    la      a7, fa
    add     a2,a2,a7
    lw      s1,0(a2)
    sw      s1,20(sp)
    sw      a0,52(sp)
    sd      a1,40(sp)
    sd      a2,24(sp)
    sw      a5,36(sp)
    sb      a6,35(sp)
    lw      a0,20(sp)
    call    find
    sw      a0,16(sp)
    mv      a1, a0
    li      a2, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    la      a6, fa
    add     a2,a2,a6
    sw      a1,0(a2)
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a1,12(sp)
    sw      a0,16(sp)
    lw      a0,12(sp)
    addi    sp,sp,72
    ret
.L6_0:
    .globl same
    .type same,@function
same:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L3_0:
    sw      a0,20(sp)
    sw      a1,16(sp)
    lw      a0,16(sp)
    call    find
    sw      a0,12(sp)
    sw      a0,12(sp)
    lw      a0,20(sp)
    call    find
    sw      a0,8(sp)
    lw      a1,12(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_59
    j       .branch_false_59
.branch_true_59:
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,8(sp)
    li      a0, 1
    addi    sp,sp,40
    ret
.branch_false_59:
.L4_0:
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,8(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-112
    sd      ra,104(sp)
    sd      s0,96(sp)
    addi    s0,sp,112
.L0_0:
    call    quick_read
    sw      a0,92(sp)
    la      a1, n
    sw      a0,0(a1)
    sw      a0,92(sp)
    call    quick_read
    sw      a0,88(sp)
    la      a1, m
    sw      a0,0(a1)
    sw      a0,88(sp)
    call    init
    j       .while.head_68
.while.head_68:
    la      a0, m
    lw      a1,0(a0)
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
    bnez    a3, .while.body_68
    j       .while.exit_68
.while.body_68:
    sw      a1,84(sp)
    sb      a3,83(sp)
    call    getch
    sw      a0,76(sp)
    mv      a1, a0
    j       .while.head_72
.while.head_72:
    li      a2, 85
    xor     a3,a1,a2
    snez    a3, a3
    li      a4, 81
    xor     a5,a1,a4
    snez    a5, a5
    and     a6,a5,a3
    bnez    a6, .while.body_72
    j       .while.exit_72
.while.body_72:
    sw      a0,76(sp)
    sw      a1,72(sp)
    sb      a3,71(sp)
    sb      a5,70(sp)
    sb      a6,69(sp)
    call    getch
    sw      a0,64(sp)
    mv      a1, a0
    sw      a0,64(sp)
    lw      a0,76(sp)
    j       .while.head_72
.while.exit_72:
    li      a2, 81
    xor     a4,a1,a2
    seqz    a4, a4
    bnez    a4, .branch_true_76
    j       .branch_false_76
.branch_true_76:
    sw      a0,76(sp)
    sw      a1,72(sp)
    sb      a3,71(sp)
    sb      a4,63(sp)
    sb      a5,70(sp)
    sb      a6,69(sp)
    call    quick_read
    sw      a0,56(sp)
    mv      a1, a0
    sw      a0,56(sp)
    sw      a1,52(sp)
    call    quick_read
    sw      a0,48(sp)
    mv      a1, a0
    sw      a0,48(sp)
    sw      a1,44(sp)
    lw      a0,52(sp)
    lw      a1,44(sp)
    call    same
    sw      a0,40(sp)
    sw      a0,40(sp)
    lw      a0,40(sp)
    call    putint
    li      a0, 10
    call    putch
    j       .L1_0
.branch_false_76:
    sw      a0,76(sp)
    sw      a1,72(sp)
    sb      a3,71(sp)
    sb      a4,63(sp)
    sb      a5,70(sp)
    sb      a6,69(sp)
    call    quick_read
    sw      a0,28(sp)
    sw      a0,28(sp)
    lw      a0,28(sp)
    call    find
    sw      a0,24(sp)
    mv      a1, a0
    sw      a0,24(sp)
    sw      a1,20(sp)
    call    quick_read
    sw      a0,16(sp)
    sw      a0,16(sp)
    lw      a0,16(sp)
    call    find
    sw      a0,12(sp)
    mv      a1, a0
    li      a2, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    la      a6, fa
    add     a2,a2,a6
    sw      a1,0(a2)
    sw      a0,12(sp)
    sw      a1,8(sp)
    sw      a4,20(sp)
    sd      a2,0(sp)
    j       .L1_0
.L1_0:
.L2_0:
    la      a0, m
    lw      a1,0(a0)
    li      a2, 1
    sub     a3,a1,a2
    la      a4, m
    sw      a3,0(a4)
    sw      a3,32(sp)
    sw      a1,36(sp)
    j       .while.head_68
.while.exit_68:
    ld      ra,104(sp)
    ld      s0,96(sp)
    li      a0, 0
    addi    sp,sp,112
    ret
.section ___var
    .data
    .align 4
    .globl fa
    .type fa,@object
fa:
    .zero 400020
    .align 4
    .globl m
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
