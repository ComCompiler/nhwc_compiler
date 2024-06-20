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
    .globl bubblesort
    .type bubblesort,@function
bubblesort:
    addi    sp,sp,-160
    sd      ra,152(sp)
    sd      s0,144(sp)
    addi    s0,sp,160
.L1_0:
    li      a1, 0
    j       .while.head_24
.while.head_24:
    la      a2, n
    lw      a3,0(a2)
    li      a5, 1
    sub     a6,a4,a5
    slt     a7,a1,a6
    bnez    a7, .while.body_24
    j       .while.exit_24
.while.body_24:
    li      s1, 0
    j       .while.head_28
.while.head_28:
    sub     s2,a1,a5
    la      s3, n
    lw      s4,0(s3)
    sub     s6,s5,s2
    slt     s7,s1,s6
    bnez    s7, .while.body_28
    j       .while.exit_28
.while.body_28:
    add     s8,s1,a5
    li      s9, 0
    add     s9,s9,a0
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
    li      s10, 0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
    slt     a3,a2,s11
    bnez    a3, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    add     s3,s1,a5
    li      a5, 0
    li      s4, 1
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
    sd      a0,136(sp)
    mv      a0, s4
    sw      a0,60(sp)
    li      a0, 1
    sw      a1,132(sp)
    add     a1,s1,a0
    li      a0, 0
    sw      a1,40(sp)
    li      a1, 1
    sw      a2,84(sp)
    sb      a3,67(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,32(sp)
    li      a0, 1
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
    j       .branch_false_31
.branch_false_31:
.L2_0:
    sd      a0,8(sp)
    li      a0, 1
    sw      a1,60(sp)
    add     a1,s1,a0
    j       .while.head_28
.while.exit_28:
    sw      a1,4(sp)
    li      a1, 1
    sw      a2,40(sp)
    add     a2,a0,a1
    j       .while.head_24
.while.exit_24:
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
    sd      s3,96(sp)
    sd      s6,88(sp)
    sd      s7,80(sp)
    sd      s8,72(sp)
    sd      s10,64(sp)
    sw      a5,156(sp)
    sd      a0,56(sp)
    call    bubblesort
    sw      a0,32(sp)
    mv      a5, a0
    j       .while.head_57
.while.head_57:
    la      s1, n
    lw      s2,0(s1)
    slt     s4,a5,s3
    bnez    s4, .while.body_57
    j       .while.exit_57
.while.body_57:
    li      s5, 0
    li      s6, 1
    mul     s7,s6,a5
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    mv      s9, s8
    sw      s3,28(sp)
    sb      s4,27(sp)
    sd      s5,8(sp)
    sw      s7,156(sp)
    sw      s8,4(sp)
    sw      s9,20(sp)
    sw      a0,32(sp)
    call    putint
    li      a0, 10
    sw      a0,20(sp)
    call    putch
    li      a0, 1
    add     s1,a5,a0
    j       .while.head_57
.while.exit_57:
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
