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
    mul     s1,a7,a1
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,a0
    lw      s2,0(a6)
    mv      s3, s2
    j       .while.head_30
.while.head_30:
    slt     a7,a4,a5
    bnez    a7, .while.body_30
    j       .while.exit_30
.while.body_30:
    li      s1, 1
    sub     s4,s3,s1
    li      s5, 0
    mul     s6,s1,a5
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,a0
    lw      s7,0(s5)
    slt     s8,s4,s7
    slt     s9,a4,a5
    and     s10,s9,s8
    bnez    s10, .while.body_33
    j       .while.exit_33
.while.body_33:
    li      s1, 1
    sub     s6,a5,s1
    mv      a5, s6
    sb      s9,114(sp)
    sd      s5,120(sp)
    sw      s7,116(sp)
    sw      s4,132(sp)
    sb      s8,115(sp)
    sw      s6,108(sp)
    sb      s10,113(sp)
    j       .while.body_30
.while.exit_33:
    slt     s1,a4,a5
    bnez    s1, .branch_true_37
    j       .branch_false_37
.branch_true_37:
    li      s6, 0
    li      s11, 1
    sd      a0,176(sp)
    mul     a0,s11,a4
    add     s6,s6,a0
    slli s6,s6,2
    ld      a0,176(sp)
    add     s6,s6,a0
    li      s11, 0
    sd      a0,176(sp)
    li      a0, 1
    sw      a1,172(sp)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    ld      a0,176(sp)
    add     s11,s11,a0
    lw      a1,0(s11)
    sw      a1,0(s6)
    sd      a0,176(sp)
    li      a0, 1
    sw      a1,84(sp)
    add     a1,a4,a0
    mv      a4, a1
    sw      a1,80(sp)
    sd      s11,88(sp)
    sd      s6,96(sp)
    lw      a1,172(sp)
    ld      a0,176(sp)
    j       .branch_false_37
.branch_false_37:
.while.head_42:
    li      s6, 0
    li      s11, 1
    sd      a0,176(sp)
    mul     a0,s11,a4
    add     s6,s6,a0
    slli s6,s6,2
    ld      a0,176(sp)
    add     s6,s6,a0
    lw      s11,0(s6)
    sd      a0,176(sp)
    slt     a0,s11,s3
    sb      a0,67(sp)
    slt     a0,a4,a5
    sw      a1,172(sp)
    lb      a1,67(sp)
    sw      a2,168(sp)
    and     a2,a0,a1
    sb      s9,114(sp)
    bnez    a2, .while.body_42
    j       .while.exit_42
.while.body_42:
    li      s9, 1
    sb      a0,66(sp)
    add     a0,a4,s9
    mv      a4, a0
    sb      a1,67(sp)
    sw      s11,68(sp)
    sb      a2,65(sp)
    sw      a0,60(sp)
    sd      s6,72(sp)
    lb      s9,114(sp)
    lw      a1,172(sp)
    lw      a2,168(sp)
    ld      a0,176(sp)
    j       .while.head_42
.while.exit_42:
    slt     s9,a4,a5
    sb      s9,59(sp)
    lb      s9,59(sp)
    bnez    s9, .branch_true_46
    sb      s9,59(sp)
    j       .branch_false_46
.branch_true_46:
    li      s9, 0
    sb      a0,66(sp)
    li      a0, 1
    sb      a1,67(sp)
    mul     a1,a0,a5
    add     s9,s9,a1
    slli s9,s9,2
    ld      a0,176(sp)
    add     s9,s9,a0
    li      a1, 0
    sd      a0,176(sp)
    li      a0, 1
    sb      a2,65(sp)
    mul     a2,a0,a4
    add     a1,a1,a2
    slli a1,a1,2
    ld      a0,176(sp)
    add     a1,a1,a0
    lw      a2,0(a1)
    sw      a2,0(s9)
    sd      a0,176(sp)
    li      a0, 1
    sd      a1,40(sp)
    sub     a1,a5,a0
    mv      a5, a1
    sd      s9,48(sp)
    sw      a1,32(sp)
    sw      a2,36(sp)
    lb      a1,67(sp)
    lb      a2,65(sp)
    lb      a0,66(sp)
    j       .branch_false_46
.branch_false_46:
    sd      s5,120(sp)
    sb      a1,67(sp)
    sw      s7,116(sp)
    sb      a7,139(sp)
    sw      s11,68(sp)
    sw      s4,132(sp)
    sb      a2,65(sp)
    sb      a0,66(sp)
    sb      s8,115(sp)
    sb      s1,107(sp)
    sd      s6,72(sp)
    sb      s10,113(sp)
    lw      a1,172(sp)
    lw      a2,168(sp)
    ld      a0,176(sp)
    j       .while.head_30
.while.exit_30:
    li      s1, 0
    li      s4, 1
    mul     s5,s4,a4
    add     s1,s1,s5
    slli s1,s1,2
    add     s1,s1,a0
    sw      s3,0(s1)
    sub     s6,a4,s4
    mv      s7, s6
    sd      s1,24(sp)
    sw      s2,140(sp)
    sw      s3,152(sp)
    sw      s6,16(sp)
    sw      s7,20(sp)
    sd      a0,176(sp)
    sw      a1,172(sp)
    sw      a2,168(sp)
    sb      a3,167(sp)
    sw      a4,160(sp)
    sw      a5,156(sp)
    sd      a6,144(sp)
    sb      a7,139(sp)
    ld      a0,176(sp)
    lw      a1,172(sp)
    lw      a2,20(sp)
    call    QuickSort
    sw      a0,12(sp)
    mv      a1, a0
    lw      a2,160(sp)
    li      a3, 1
    add     a4,a2,a3
    mv      a1, a4
    sw      a0,12(sp)
    sw      a1,20(sp)
    sw      a2,160(sp)
    sw      a4,8(sp)
    ld      a0,176(sp)
    lw      a1,20(sp)
    lw      a2,168(sp)
    call    QuickSort
    sw      a0,4(sp)
    mv      a1, a0
    sw      a1,20(sp)
    sw      a0,4(sp)
    lw      a1,172(sp)
    lw      a2,168(sp)
    ld      a0,176(sp)
    lb      a3,167(sp)
    j       .branch_false_21
.branch_false_21:
.L2_0:
    ld      ra,192(sp)
    ld      s0,184(sp)
    sd      a0,176(sp)
    li      a0, 0
    addi    sp,sp,200
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-184
    sd      ra,176(sp)
    sd      s0,168(sp)
    addi    s0,sp,184
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
    addi    a2,a2,128
    li      a6, 4
    sw      a6,0(a2)
    li      a7, 0
    li      s1, 1
    mul     s2,a3,s1
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,128
    li      s3, 3
    sw      s3,0(a7)
    li      s4, 0
    li      s5, 2
    mul     s6,s1,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,128
    li      s7, 9
    sw      s7,0(s4)
    li      s8, 0
    mul     s9,s1,s3
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,128
    sw      s5,0(s8)
    li      s10, 0
    mul     s11,s1,a6
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,128
    sw      a4,0(s10)
    li      a0, 0
    li      a1, 5
    mul     a3,s1,a1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,128
    sw      s1,0(a0)
    li      a1, 0
    li      a3, 6
    mul     a4,s1,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,128
    sw      a3,0(a1)
    li      a3, 0
    li      a4, 7
    mul     a5,s1,a4
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,128
    li      a4, 5
    sw      a4,0(a3)
    li      a4, 0
    li      a5, 8
    mul     a6,s1,a5
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,128
    li      a5, 7
    sw      a5,0(a4)
    li      a5, 0
    mul     a6,s1,s7
    add     a5,a5,a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,128
    li      a6, 8
    sw      a6,0(a5)
    li      a6, 0
    li      s1, 9
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,128
    sw      s1,40(sp)
    sd      s2,32(sp)
    sd      s4,104(sp)
    sd      s8,96(sp)
    sd      s10,88(sp)
    sd      a0,80(sp)
    sd      a1,72(sp)
    sd      a2,120(sp)
    sd      a3,64(sp)
    sd      a4,56(sp)
    sd      a5,48(sp)
    sw      a6,44(sp)
    sd      a7,112(sp)
    ld      a0,32(sp)
    lw      a1,44(sp)
    lw      a2,40(sp)
    call    QuickSort
    sw      a0,28(sp)
    mv      a1, a0
    j       .while.head_77
.while.head_77:
    la      a2, n
    lw      a3,0(a2)
    slt     a4,a1,a3
    bnez    a4, .while.body_77
    j       .while.exit_77
.while.body_77:
    li      a2, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
    lw      a7,0(a2)
    mv      s1, a7
    sw      s1,16(sp)
    sw      a0,28(sp)
    sw      a1,44(sp)
    sd      a2,8(sp)
    sw      a3,24(sp)
    sb      a4,23(sp)
    sw      a7,4(sp)
    lw      a0,16(sp)
    call    putint
    li      a0, 10
    sw      a0,16(sp)
    lw      a0,16(sp)
    call    putch
    lw      a0,44(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,44(sp)
    sw      a2,0(sp)
    lw      a1,44(sp)
    lw      a0,28(sp)
    j       .while.head_77
.while.exit_77:
    ld      ra,176(sp)
    ld      s0,168(sp)
    sw      a0,28(sp)
    li      a0, 0
    addi    sp,sp,184
    ret
.section ___var
    .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
