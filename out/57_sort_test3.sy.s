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
    addi    sp,sp,-304
    sd      ra,296(sp)
    sd      s0,280(sp)
    addi    s0,sp,304
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
    mv      s1, s1
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
    mv      s6, s6
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
    sd      a0,264(sp)
    li      a0, 1
    sw      a1,256(sp)
    mul     a1,a0,a4
    add     a7,a7,a1
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
    li      a0, 0
    sd      a1,264(sp)
    li      a1, 1
    sw      a2,248(sp)
    mul     a2,a1,a5
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a7)
    sd      a0,152(sp)
    li      a0, 1
    sw      a1,144(sp)
    add     a1,a4,a0
    j       .branch_false_37
.branch_false_37:
.while.head_42:
    li      a0, 0
    sw      a1,136(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,120(sp)
    slt     a0,a1,s2
    sb      a0,111(sp)
    slt     a0,a4,a5
    sw      a1,112(sp)
    mv      a1, a1
    sd      a2,264(sp)
    and     a2,a0,a1
    bnez    a2, .while.body_42
    j       .while.exit_42
.while.body_42:
    sb      a0,110(sp)
    li      a0, 1
    sb      a1,111(sp)
    add     a1,a4,a0
    j       .while.head_42
.while.exit_42:
    slt     a0,a4,a5
    bnez    a0, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    sb      a0,104(sp)
    li      a0, 0
    sw      a1,105(sp)
    li      a1, 1
    sb      a2,109(sp)
    mul     a2,a1,a5
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,88(sp)
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,80(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,88(sp)
    li      a0, 1
    sw      a1,72(sp)
    sub     a1,a5,a0
    j       .branch_false_46
.branch_false_46:
    j       .while.head_30
.while.exit_30:
    li      a0, 0
    sw      a1,64(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s2,0(a0)
    sd      a0,48(sp)
    sub     a0,a4,a1
    mv      a1, a0
    sw      s1,208(sp)
    sw      s2,228(sp)
    sb      s3,207(sp)
    sw      s4,203(sp)
    sd      s5,192(sp)
    sw      s6,184(sp)
    sb      s7,183(sp)
    sb      s8,182(sp)
    sb      s9,181(sp)
    sw      s10,177(sp)
    sb      s11,176(sp)
    sd      a2,264(sp)
    sw      a0,32(sp)
    mv      a0, a0
    sw      a1,40(sp)
    mv      a1, a1
    mv      a2, a2
    call    QuickSort
    sw      a0,24(sp)
    mv      a1, a0
    li      a2, 1
    add     s1,a4,a2
    sw      s1,16(sp)
    sw      a0,24(sp)
    mv      a0, a0
    sw      a1,40(sp)
    mv      a1, a1
    mv      a2, a2
    call    QuickSort
    sw      a0,8(sp)
    mv      a1, a0
    j       .branch_false_21
.branch_false_21:
.L2_0:
    ld      ra,296(sp)
    ld      s0,280(sp)
    li      a0, 0
    addi    sp,sp,304
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-296
    sd      ra,288(sp)
    sd      s0,272(sp)
    addi    s0,sp,296
.L0_0:
    la      a2, n
    li      s1, 10
    sd      s1,0(a2)
    li      s2, 0
    li      s3, 1
    li      s4, 0
    mul     s5,s3,s4
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    li      s6, 4
    sd      s6,0(s2)
    li      s7, 0
    li      s8, 1
    add     s7,s7,s5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    li      s9, 3
    sd      s9,0(s7)
    li      s10, 0
    li      s11, 2
    add     s10,s10,s5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    li      a2, 9
    sd      a2,0(s10)
    li      a2, 0
    add     a2,a2,s5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    sd      s11,0(a2)
    li      s1, 0
    add     s1,s1,s5
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    sd      s4,0(s1)
    li      s3, 0
    li      s4, 5
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    sd      s8,0(s3)
    li      s4, 0
    li      s6, 6
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    sd      s6,0(s4)
    li      s6, 0
    li      s9, 7
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s8, 5
    sd      s8,0(s6)
    li      s8, 0
    li      s9, 1
    li      s11, 8
    add     s8,s8,s5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      s9, 7
    sd      s9,0(s8)
    li      s9, 0
    li      s11, 1
    sw      a0,8(sp)
    li      a0, 9
    add     s9,s9,s5
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    li      a0, 8
    sd      a0,0(s9)
    li      a0, 0
    mv      s11, a0
    li      a0, 9
    sw      a1,40(sp)
    mv      a1, a0
    sd      s1,152(sp)
    sd      s2,216(sp)
    sd      s3,136(sp)
    sd      s4,120(sp)
    sw      s5,264(sp)
    sd      s6,104(sp)
    sd      s7,200(sp)
    sd      s8,88(sp)
    sd      s9,72(sp)
    sd      s10,184(sp)
    sw      s11,64(sp)
    mv      a0, a0
    sw      a1,56(sp)
    mv      a1, a1
    sd      a2,168(sp)
    mv      a2, a2
    call    QuickSort
    sw      a0,48(sp)
    mv      a1, a0
    j       .while.head_77
.while.head_77:
    la      a2, n
    lw      s1,0(a2)
    mv      s2, s2
    slt     s3,a1,s2
    bnez    s3, .while.body_77
    j       .while.exit_77
.while.body_77:
    li      s4, 0
    li      s5, 1
    mul     s6,s5,a1
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    mv      s7, s7
    mv      s8, s7
    sw      s2,40(sp)
    sb      s3,39(sp)
    sd      s4,16(sp)
    sw      s6,264(sp)
    sw      s7,8(sp)
    sw      s8,32(sp)
    sw      a0,48(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    mv      s1, a0
    sw      s1,32(sp)
    mv      a0, a0
    call    putch
    li      a0, 1
    add     s1,a1,a0
    j       .while.head_77
.while.exit_77:
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
