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
    addi    sp,sp,-232
    sd      ra,224(sp)
    sd      s0,208(sp)
    addi    s0,sp,232
.L1_0:
    li      a2, 0
    mv      a3, a2
    j       .while.head_25
.while.head_25:
    li      a4, 1
    sub     a5,a1,a4
    slt     a6,a3,a5
    bnez    a6, .while.body_25
    j       .while.exit_25
.while.body_25:
    mv      a7, a3
    add     s1,a3,a4
    mv      s2, s1
    j       .while.head_30
.while.head_30:
    slt     s3,s2,a1
    bnez    s3, .while.body_30
    j       .while.exit_30
.while.body_30:
    li      s4, 0
    add     s4,s4,a0
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
    li      s5, 0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
    mv      s6, s6
    mv      s7, s7
    slt     s8,s7,s6
    bnez    s8, .branch_true_33
    j       .branch_false_33
.branch_true_33:
    j       .branch_false_33
.branch_false_33:
.L2_0:
    add     s9,s2,a4
    j       .while.head_30
.while.exit_30:
    xor     s10,a7,a3
    sltiu   s10,s10,1
    xori    s10,s10,1
    bnez    s10, .branch_true_38
    j       .branch_false_38
.branch_true_38:
    li      s11, 0
    add     s11,s11,a0
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
    mv      a2, a2
    mv      a4, a2
    sd      a0,192(sp)
    li      a0, 0
    sw      a1,184(sp)
    li      a1, 1
    sw      a2,72(sp)
    mul     a2,a1,a7
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,56(sp)
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,40(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,56(sp)
    li      a0, 0
    sw      a1,32(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a4,0(a0)
    j       .branch_false_38
.branch_false_38:
.L3_0:
    sd      a0,16(sp)
    add     a0,a3,a1
    j       .while.head_25
.while.exit_25:
    ld      ra,224(sp)
    ld      s0,208(sp)
    li      a0, 0
    addi    sp,sp,232
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-296
    sd      ra,288(sp)
    sd      s0,272(sp)
    addi    s0,sp,296
.L0_0:
    la      a1, n
    sw      a0,8(sp)
    li      a0, 10
    sd      a0,0(a1)
    li      a0, 0
    li      a1, 1
    sd      a2,192(sp)
    li      a2, 0
    sw      a3,176(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 4
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 1
    sd      a0,216(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,200(sp)
    li      a1, 2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 9
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,184(sp)
    li      a0, 3
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 2
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,168(sp)
    li      a1, 4
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,152(sp)
    li      a0, 5
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a2,0(a1)
    li      a0, 0
    sd      a1,136(sp)
    li      a1, 6
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,120(sp)
    li      a0, 7
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 5
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,104(sp)
    li      a1, 8
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,88(sp)
    li      a0, 9
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 8
    sd      a0,0(a1)
    li      a0, 0
    mv      a2, a0
    la      a0, n
    sd      a1,72(sp)
    lw      a1,0(a0)
    sw      s1,147(sp)
    sw      s2,168(sp)
    sb      s3,146(sp)
    sd      s4,136(sp)
    sd      s5,120(sp)
    sw      s6,112(sp)
    sw      s7,132(sp)
    sb      s8,111(sp)
    sw      s9,104(sp)
    sb      s10,103(sp)
    sd      s11,80(sp)
    sw      a3,264(sp)
    mv      a0, a0
    mv      a1, a1
    call    select_sort
    sw      a0,48(sp)
    j       .while.head_64
.while.head_64:
    la      a1, n
    lw      a3,0(a1)
    mv      s1, s1
    slt     s2,a2,s1
    bnez    s2, .while.body_64
    j       .while.exit_64
.while.body_64:
    li      s3, 0
    li      s4, 1
    mul     s5,s4,a2
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    mv      s6, s6
    mv      s7, s6
    sw      s1,40(sp)
    sb      s2,39(sp)
    sd      s3,16(sp)
    sw      s5,264(sp)
    sw      s6,8(sp)
    sw      s7,32(sp)
    sw      a0,48(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    mv      s1, a0
    sw      s1,32(sp)
    mv      a0, a0
    call    putch
    li      a0, 1
    add     s1,a2,a0
    j       .while.head_64
.while.exit_64:
    ld      ra,288(sp)
    ld      s0,272(sp)
    li      a0, 0
    addi    sp,sp,296
    ret
.section        .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
