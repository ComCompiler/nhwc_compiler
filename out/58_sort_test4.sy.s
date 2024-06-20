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
    mv      a6, a2
    add     a7,a2,a3
    mv      s1, a7
    j       .while.head_30
.while.head_30:
    slt     s2,s1,a1
    bnez    s2, .while.body_30
    j       .while.exit_30
.while.body_30:
    li      s3, 0
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
    li      s4, 0
    add     s4,s4,a0
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
    slt     s7,s6,s5
    bnez    s7, .branch_true_33
    j       .branch_false_33
.branch_true_33:
    j       .branch_false_33
.branch_false_33:
.L2_0:
    add     s8,s1,a3
    j       .while.head_30
.while.exit_30:
    xor     s9,a6,a2
    snez    s9, s9
    bnez    s9, .branch_true_38
    j       .branch_false_38
.branch_true_38:
    li      s10, 0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
    mv      a3, s11
    sd      a0,136(sp)
    li      a0, 0
    sw      a1,132(sp)
    li      a1, 1
    sw      a2,128(sp)
    mul     a2,a1,a6
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,32(sp)
    li      a0, 1
    sd      a2,136(sp)
    sw      a3,60(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,24(sp)
    sd      a1,0(a0)
    sd      a0,32(sp)
    li      a0, 0
    sw      a1,20(sp)
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    j       .branch_false_38
.branch_false_38:
.L3_0:
    sd      a0,8(sp)
    li      a0, 1
    sw      a1,60(sp)
    add     a1,a2,a0
    j       .while.head_25
.while.exit_25:
    ld      ra,152(sp)
    ld      s0,144(sp)
    li      a0, 0
    addi    sp,sp,160
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-176
    sd      ra,168(sp)
    sd      s0,160(sp)
    addi    s0,sp,176
.L0_0:
    la      a0, n
    li      a1, 10
    sd      a1,0(a0)
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    li      a6, 4
    sd      a6,0(a2)
    li      a7, 0
    li      s1, 1
    add     a7,a7,a5
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    li      s2, 3
    sd      s2,0(a7)
    li      s3, 0
    li      s4, 2
    add     s3,s3,a5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s5, 9
    sd      s5,0(s3)
    li      s6, 0
    add     s6,s6,a5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    sd      s4,0(s6)
    li      s7, 0
    add     s7,s7,a5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    sd      a4,0(s7)
    li      s8, 0
    li      s9, 5
    add     s8,s8,a5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    sd      a3,0(s8)
    li      s10, 0
    li      s11, 6
    add     s10,s10,a5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    sd      s11,0(s10)
    li      a0, 0
    li      a1, 7
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s9,0(a0)
    li      a1, 0
    li      a4, 8
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a3, 7
    sd      a3,0(a1)
    li      a3, 0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
    sd      a4,0(a3)
    li      a4, 0
    la      a6, n
    lw      s1,0(a6)
    sd      s3,96(sp)
    sd      s6,88(sp)
    sd      s7,80(sp)
    sd      s8,72(sp)
    sd      s10,64(sp)
    sw      a5,156(sp)
    sd      a0,56(sp)
    sd      a1,48(sp)
    call    select_sort
    sw      a0,28(sp)
    j       .while.head_64
.while.head_64:
    la      a1, n
    lw      a5,0(a1)
    slt     s2,a4,s1
    bnez    s2, .while.body_64
    j       .while.exit_64
.while.body_64:
    li      s3, 0
    li      s4, 1
    mul     s5,s4,a4
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    mv      s7, s6
    sw      s1,24(sp)
    sb      s2,23(sp)
    sd      s3,8(sp)
    sw      s5,156(sp)
    sw      s6,4(sp)
    sw      s7,16(sp)
    sw      a0,28(sp)
    call    putint
    li      a0, 10
    sw      a0,16(sp)
    call    putch
    li      a0, 1
    add     s1,a4,a0
    j       .while.head_64
.while.exit_64:
    ld      ra,168(sp)
    ld      s0,160(sp)
    li      a0, 0
    addi    sp,sp,176
    ret
.section        .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
