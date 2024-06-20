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
    .globl QuickSort
    .type QuickSort,@function
QuickSort:
    addi    sp,sp,-200
    sd      ra,192(sp)
    sd      s0,184(sp)
    addi    s0,sp,200
.L1_0:
    slt     a3,a1,a2
    bnez    a3, .branch_true_21
    j       .branch_false_21
.branch_true_21:
    mv      a4, a1
    mv      a5, a2
    li      a6, 0
    li      a7, 1
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
    mv      s2, s1
    j       .while.head_30
.while.head_30:
    slt     s3,a4,a5
    bnez    s3, .while.body_30
    j       .while.exit_30
.while.head_33:
    sub     s4,s2,a7
    li      s5, 0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
    slt     s7,s4,s6
    slt     s8,a4,a5
    and     s9,s8,s7
    bnez    s9, .while.body_33
    j       .while.exit_33
.while.body_33:
    sub     s10,a5,a7
    j       .while.head_33
.while.exit_33:
    slt     s11,a4,a5
    bnez    s11, .branch_true_37
    j       .branch_false_37
.branch_true_37:
    li      a7, 0
    sd      a0,176(sp)
    li      a0, 1
    sw      a1,172(sp)
    mul     a1,a0,a4
    add     a7,a7,a1
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
    li      a0, 0
    sd      a1,176(sp)
    li      a1, 1
    sw      a2,168(sp)
    mul     a2,a1,a5
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a7)
    sd      a0,88(sp)
    li      a0, 1
    sw      a1,84(sp)
    add     a1,a4,a0
    j       .branch_false_37
.branch_false_37:
.while.head_42:
    li      a0, 0
    sw      a1,80(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,72(sp)
    slt     a0,a1,s2
    sb      a0,67(sp)
    slt     a0,a4,a5
    sw      a1,68(sp)
    sd      a2,176(sp)
    and     a2,a0,a1
    bnez    a2, .while.body_42
    j       .while.exit_42
.while.body_42:
    sb      a0,66(sp)
    li      a0, 1
    sb      a1,67(sp)
    add     a1,a4,a0
    j       .while.head_42
.while.exit_42:
    slt     a0,a4,a5
    bnez    a0, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    sb      a0,59(sp)
    li      a0, 0
    sw      a1,60(sp)
    li      a1, 1
    sb      a2,65(sp)
    mul     a2,a1,a5
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,48(sp)
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,40(sp)
    sd      a1,0(a0)
    sd      a0,48(sp)
    li      a0, 1
    sw      a1,36(sp)
    sub     a1,a5,a0
    j       .branch_false_46
.branch_false_46:
    j       .while.head_30
.while.exit_30:
    li      a0, 0
    sw      a1,32(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s2,0(a0)
    sd      a0,24(sp)
    sub     a0,a4,a1
    mv      a1, a0
    sw      s1,140(sp)
    sw      s2,152(sp)
    sb      s3,139(sp)
    sw      s4,132(sp)
    sd      s5,120(sp)
    sw      s6,116(sp)
    sb      s7,115(sp)
    sb      s8,114(sp)
    sb      s9,113(sp)
    sw      s10,108(sp)
    sb      s11,107(sp)
    sd      a2,176(sp)
    sw      a0,16(sp)
    sw      a1,20(sp)
    call    QuickSort
    sw      a0,12(sp)
    mv      a1, a0
    li      a2, 1
    add     s1,a4,a2
    sw      s1,8(sp)
    sw      a0,12(sp)
    sw      a1,20(sp)
    call    QuickSort
    sw      a0,4(sp)
    mv      a1, a0
    j       .branch_false_21
.branch_false_21:
.L2_0:
    ld      ra,192(sp)
    ld      s0,184(sp)
    li      a0, 0
    addi    sp,sp,200
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
    sd      s1,0(s8)
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
    li      a3, 8
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
    li      a4, 8
    sd      a4,0(a3)
    li      a4, 0
    li      a6, 9
    sd      s3,96(sp)
    sd      s6,88(sp)
    sd      s7,80(sp)
    sd      s8,72(sp)
    sd      s10,64(sp)
    sw      a5,156(sp)
    sd      a0,56(sp)
    sw      a4,36(sp)
    sd      a1,48(sp)
    sw      a6,32(sp)
    sd      a2,112(sp)
    call    QuickSort
    sw      a0,28(sp)
    mv      a1, a0
    j       .while.head_77
.while.head_77:
    la      a2, n
    lw      a4,0(a2)
    slt     a6,a1,a5
    bnez    a6, .while.body_77
    j       .while.exit_77
.while.body_77:
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a1
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    mv      s5, s4
    sd      s1,8(sp)
    sw      s3,156(sp)
    sw      s4,4(sp)
    sw      s5,16(sp)
    sw      a0,28(sp)
    call    putint
    li      a0, 10
    sw      a0,16(sp)
    call    putch
    li      a0, 1
    add     s1,a1,a0
    j       .while.head_77
.while.exit_77:
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
