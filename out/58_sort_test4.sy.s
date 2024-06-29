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
    .globl select_sort
    .type select_sort,@function
select_sort:
    addi    sp,sp,-160
    sd      ra,152(sp)
    sd      s0,144(sp)
    addi    s0,sp,160
.L1_0:
    li      a2, 0
    j       .while.head_25
.while.head_25:
    li      a3, 1
    sub     a4,a1,a3
    slt     a5,a2,a4
    bnez    a5, .while.body_25
    j       .while.exit_25
.while.body_25:
    mv      a3, a2
    li      a6, 1
    add     a7,a2,a6
    mv      s1, a7
    j       .while.head_30
.while.head_30:
    slt     a6,s1,a1
    bnez    a6, .while.body_30
    j       .while.exit_30
.while.body_30:
    li      s2, 0
    li      s3, 1
    mul     s4,s3,s1
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,a0
    lw      s5,0(s2)
    li      s6, 0
    mul     s7,s3,a3
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,a0
    lw      s8,0(s6)
    slt     s9,s5,s8
    bnez    s9, .branch_true_33
    j       .branch_false_33
.branch_true_33:
    mv      a3, s1
    j       .branch_false_33
.branch_false_33:
.L2_0:
    li      s3, 1
    add     s4,s1,s3
    mv      s1, s4
    sb      s9,75(sp)
    sb      a6,107(sp)
    sw      s8,76(sp)
    sd      s2,96(sp)
    sw      s4,68(sp)
    sw      s5,92(sp)
    sd      s6,80(sp)
    j       .while.head_30
.while.exit_30:
    xor     s2,a3,a2
    snez    s2, s2
    bnez    s2, .branch_true_38
    j       .branch_false_38
.branch_true_38:
    li      s3, 0
    li      s4, 1
    mul     s5,s4,a3
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,a0
    lw      s6,0(s3)
    mv      s7, s6
    li      s8, 0
    mul     s9,s4,a3
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,a0
    li      s10, 0
    mul     s11,s4,a2
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,a0
    lw      s4,0(s10)
    sw      s4,0(s8)
    li      s5, 0
    li      s9, 1
    mul     s11,s9,a2
    add     s5,s5,s11
    slli s5,s5,2
    add     s5,s5,a0
    sw      s7,0(s5)
    sd      s3,48(sp)
    sd      s8,32(sp)
    sw      s4,20(sp)
    sw      s7,60(sp)
    sd      s10,24(sp)
    sd      s5,8(sp)
    sw      s6,44(sp)
    j       .branch_false_38
.branch_false_38:
.L3_0:
    li      s3, 1
    add     s4,a2,s3
    mv      a2, s4
    sw      a3,120(sp)
    sb      a5,115(sp)
    sb      a6,107(sp)
    sw      s1,124(sp)
    sb      s2,67(sp)
    sw      s4,4(sp)
    sw      a7,108(sp)
    sw      a4,116(sp)
    j       .while.head_25
.while.exit_25:
    ld      ra,152(sp)
    ld      s0,144(sp)
    sd      a0,136(sp)
    li      a0, 0
    addi    sp,sp,160
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-192
    sd      ra,184(sp)
    sd      s0,176(sp)
    addi    s0,sp,192
.L0_0:
    la      a0, n
    li      a1, 10
    sw      a1,0(a0)
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
    li      a6, 4
    sw      a6,0(a2)
    li      a7, 0
    li      s1, 1
    mul     s2,a3,s1
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,136
    li      s3, 3
    sw      s3,0(a7)
    li      s4, 0
    li      s5, 2
    mul     s6,a3,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,136
    li      s7, 9
    sw      s7,0(s4)
    li      s8, 0
    mul     s9,a3,s3
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,136
    sw      s5,0(s8)
    li      s10, 0
    mul     s11,a3,a6
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,136
    sw      a4,0(s10)
    li      a0, 0
    li      a1, 5
    mul     a4,a3,a1
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,136
    sw      a3,0(a0)
    li      a1, 0
    li      a4, 6
    mul     a5,a3,a4
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,136
    sw      a4,0(a1)
    li      a3, 0
    li      a4, 7
    mul     a5,s1,a4
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,136
    li      a4, 5
    sw      a4,0(a3)
    li      a4, 0
    li      a5, 8
    mul     a6,s1,a5
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,136
    li      a5, 7
    sw      a5,0(a4)
    li      a5, 0
    mul     a6,s1,s7
    add     a5,a5,a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,136
    li      a6, 8
    sw      a6,0(a5)
    li      a6, 0
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,136
    la      s2, n
    lw      s3,0(s2)
    sd      s1,40(sp)
    sw      s3,36(sp)
    sd      s4,112(sp)
    sd      s8,104(sp)
    sd      s10,96(sp)
    sd      a0,88(sp)
    sd      a1,80(sp)
    sd      a2,128(sp)
    sd      a3,72(sp)
    sd      a4,64(sp)
    sd      a5,56(sp)
    sw      a6,52(sp)
    sd      a7,120(sp)
    ld      a0,40(sp)
    lw      a1,36(sp)
    call    select_sort
    sw      a0,32(sp)
    mv      a1, a0
    j       .while.head_64
.while.head_64:
    la      a2, n
    lw      a3,0(a2)
    slt     a4,a1,a3
    bnez    a4, .while.body_64
    j       .while.exit_64
.while.body_64:
    li      a2, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
    lw      a7,0(a2)
    mv      s1, a7
    sw      s1,20(sp)
    sw      a0,32(sp)
    sw      a1,52(sp)
    sd      a2,8(sp)
    sw      a3,28(sp)
    sb      a4,27(sp)
    sw      a7,4(sp)
    lw      a0,20(sp)
    call    putint
    li      a0, 10
    sw      a0,20(sp)
    lw      a0,20(sp)
    call    putch
    lw      a0,52(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,0(sp)
    sw      a0,52(sp)
    lw      a0,32(sp)
    lw      a1,52(sp)
    j       .while.head_64
.while.exit_64:
    ld      ra,184(sp)
    ld      s0,176(sp)
    sw      a0,32(sp)
    li      a0, 0
    addi    sp,sp,192
    ret
.section ___var
    .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
