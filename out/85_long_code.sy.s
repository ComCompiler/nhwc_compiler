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
    .globl bubblesort
    .type bubblesort,@function
bubblesort:
    addi    sp,sp,-160
    sd      ra,152(sp)
    sd      s0,144(sp)
    addi    s0,sp,160
.L20_0:
    li      a1, 0
    j       .while.head_24
.while.head_24:
    la      a2, n
    lw      a3,0(a2)
    li      a4, 1
    sub     a5,a3,a4
    slt     a6,a1,a5
    bnez    a6, .while.body_24
    j       .while.exit_24
.while.body_24:
    li      a2, 0
    j       .while.head_28
.while.head_28:
    la      a4, n
    lw      a7,0(a4)
    sub     s1,a7,a1
    li      s2, 1
    sub     s3,s1,s2
    slt     s4,a2,s3
    bnez    s4, .while.body_28
    j       .while.exit_28
.while.body_28:
    li      a4, 1
    add     s2,a2,a4
    li      s5, 0
    mul     s6,a4,s2
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,a0
    lw      s7,0(s5)
    li      s8, 0
    mul     s9,a4,a2
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,a0
    lw      s10,0(s8)
    slt     s11,s7,s10
    bnez    s11, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    li      a4, 1
    add     s6,a2,a4
    li      s9, 0
    sd      a0,136(sp)
    mul     a0,a4,s6
    add     s9,s9,a0
    slli s9,s9,2
    ld      a0,136(sp)
    add     s9,s9,a0
    lw      a4,0(s9)
    sd      a0,136(sp)
    mv      a0, a4
    sw      a0,60(sp)
    li      a0, 1
    sw      a1,132(sp)
    add     a1,a2,a0
    li      a0, 0
    sw      a1,40(sp)
    li      a1, 1
    sw      a2,128(sp)
    lw      a2,40(sp)
    sw      a3,124(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,136(sp)
    add     a0,a0,a1
    li      a3, 0
    sd      a0,32(sp)
    li      a0, 1
    sd      a1,136(sp)
    lw      a1,128(sp)
    sw      a2,40(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,136(sp)
    add     a3,a3,a0
    lw      a2,0(a3)
    sd      a0,136(sp)
    ld      a0,32(sp)
    sw      a2,0(a0)
    sd      a0,32(sp)
    li      a0, 0
    sw      a1,128(sp)
    li      a1, 1
    sw      a2,20(sp)
    lw      a2,128(sp)
    sd      a3,24(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,136(sp)
    add     a0,a0,a1
    lw      a3,60(sp)
    sw      a3,0(a0)
    sd      a1,136(sp)
    sd      a0,8(sp)
    sd      s9,48(sp)
    sw      a4,44(sp)
    sw      a3,60(sp)
    sw      s6,56(sp)
    lw      a1,132(sp)
    ld      a0,136(sp)
    lw      a3,124(sp)
    j       .branch_false_31
.branch_false_31:
.L21_0:
    li      a4, 1
    add     s6,a2,a4
    mv      a2, s6
    sd      s8,72(sp)
    sw      s6,4(sp)
    sw      s2,96(sp)
    sw      s7,84(sp)
    sw      s1,108(sp)
    sw      s3,104(sp)
    sb      s4,103(sp)
    sw      a7,112(sp)
    sb      s11,67(sp)
    sd      s5,88(sp)
    sw      s10,68(sp)
    j       .while.head_28
.while.exit_28:
    li      a4, 1
    add     s2,a1,a4
    mv      a1, s2
    sb      a6,119(sp)
    sw      a3,124(sp)
    sw      s2,0(sp)
    sw      s1,108(sp)
    sw      a5,120(sp)
    sw      s3,104(sp)
    sb      s4,103(sp)
    sw      a7,112(sp)
    sw      a2,128(sp)
    j       .while.head_24
.while.exit_24:
    ld      ra,152(sp)
    ld      s0,144(sp)
    sd      a0,136(sp)
    li      a0, 0
    addi    sp,sp,160
    ret
    .globl insertsort
    .type insertsort,@function
insertsort:
    addi    sp,sp,-136
    sd      ra,128(sp)
    sd      s0,120(sp)
    addi    s0,sp,136
.L19_0:
    li      a1, 1
    j       .while.head_46
.while.head_46:
    la      a2, n
    lw      a3,0(a2)
    slt     a4,a1,a3
    bnez    a4, .while.body_46
    j       .while.exit_46
.while.body_46:
    li      a2, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,a0
    lw      a7,0(a2)
    mv      s1, a7
    sub     s2,a1,a5
    mv      s3, s2
    j       .while.head_53
.while.head_53:
    li      a5, 0
    li      a6, 1
    mul     s4,a6,s3
    add     a5,a5,s4
    slli a5,a5,2
    add     a5,a5,a0
    lw      s5,0(a5)
    slt     s6,s1,s5
    li      s7, -1
    slt     s8,s7,s3
    and     s9,s8,s6
    bnez    s9, .while.body_53
    j       .while.exit_53
.while.body_53:
    li      a6, 1
    add     s4,s3,a6
    li      s7, 0
    mul     s10,a6,s4
    add     s7,s7,s10
    slli s7,s7,2
    add     s7,s7,a0
    li      s11, 0
    mul     s10,a6,s3
    add     s11,s11,s10
    slli s11,s11,2
    add     s11,s11,a0
    lw      a6,0(s11)
    sw      a6,0(s7)
    li      s10, 1
    sd      a0,112(sp)
    sub     a0,s3,s10
    mv      s3, a0
    sw      s4,52(sp)
    sb      s6,59(sp)
    sd      s11,32(sp)
    sw      s5,60(sp)
    sd      s7,40(sp)
    sb      s9,57(sp)
    sb      s8,58(sp)
    sd      a5,64(sp)
    sw      a0,24(sp)
    sw      a6,28(sp)
    ld      a0,112(sp)
    j       .while.head_53
.while.exit_53:
    li      a6, 1
    add     s4,s3,a6
    li      s7, 0
    mul     s10,a6,s4
    add     s7,s7,s10
    slli s7,s7,2
    add     s7,s7,a0
    sw      s1,0(s7)
    add     s11,a1,a6
    mv      a1, s11
    sw      s4,20(sp)
    sb      s6,59(sp)
    sw      s11,4(sp)
    sw      s1,96(sp)
    sw      a3,104(sp)
    sw      s5,60(sp)
    sw      s2,76(sp)
    sd      s7,8(sp)
    sb      s9,57(sp)
    sb      s8,58(sp)
    sd      a2,88(sp)
    sd      a5,64(sp)
    sb      a4,103(sp)
    sw      s3,80(sp)
    sw      a7,84(sp)
    j       .while.head_46
.while.exit_46:
    ld      ra,128(sp)
    ld      s0,120(sp)
    sd      a0,112(sp)
    li      a0, 0
    addi    sp,sp,136
    ret
    .globl QuickSort
    .type QuickSort,@function
QuickSort:
    addi    sp,sp,-200
    sd      ra,192(sp)
    sd      s0,184(sp)
    addi    s0,sp,200
.L17_0:
    slt     a3,a1,a2
    bnez    a3, .branch_true_64
    j       .branch_false_64
.branch_true_64:
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
    j       .while.head_73
.while.head_73:
    slt     a7,a4,a5
    bnez    a7, .while.body_73
    j       .while.exit_73
.while.body_73:
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
    bnez    s10, .while.body_76
    j       .while.exit_76
.while.body_76:
    li      s1, 1
    sub     s6,a5,s1
    mv      a5, s6
    sb      s10,113(sp)
    sb      s9,114(sp)
    sw      s7,116(sp)
    sw      s6,108(sp)
    sw      s4,132(sp)
    sb      s8,115(sp)
    sd      s5,120(sp)
    j       .while.body_73
.while.exit_76:
    slt     s1,a4,a5
    bnez    s1, .branch_true_80
    j       .branch_false_80
.branch_true_80:
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
    sd      s11,88(sp)
    sd      s6,96(sp)
    sw      a1,80(sp)
    lw      a1,172(sp)
    ld      a0,176(sp)
    j       .branch_false_80
.branch_false_80:
.while.head_85:
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
    sb      a7,139(sp)
    bnez    a2, .while.body_85
    j       .while.exit_85
.while.body_85:
    li      a7, 1
    sb      a0,66(sp)
    add     a0,a4,a7
    mv      a4, a0
    sw      s11,68(sp)
    sd      s6,72(sp)
    sb      a1,67(sp)
    sb      a2,65(sp)
    sw      a0,60(sp)
    lb      a7,139(sp)
    lw      a1,172(sp)
    lw      a2,168(sp)
    ld      a0,176(sp)
    j       .while.head_85
.while.exit_85:
    slt     a7,a4,a5
    sb      a7,59(sp)
    lb      a7,59(sp)
    bnez    a7, .branch_true_89
    sb      a7,59(sp)
    j       .branch_false_89
.branch_true_89:
    li      a7, 0
    sb      a0,66(sp)
    li      a0, 1
    sb      a1,67(sp)
    mul     a1,a0,a5
    add     a7,a7,a1
    slli a7,a7,2
    ld      a0,176(sp)
    add     a7,a7,a0
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
    sw      a2,0(a7)
    sd      a0,176(sp)
    li      a0, 1
    sd      a1,40(sp)
    sub     a1,a5,a0
    mv      a5, a1
    sd      a7,48(sp)
    sw      a1,32(sp)
    sw      a2,36(sp)
    lb      a1,67(sp)
    lb      a2,65(sp)
    lb      a0,66(sp)
    j       .branch_false_89
.branch_false_89:
    sb      s10,113(sp)
    sw      s11,68(sp)
    sb      s9,114(sp)
    sw      s7,116(sp)
    sb      s1,107(sp)
    sd      s6,72(sp)
    sw      s4,132(sp)
    sb      a1,67(sp)
    sb      a2,65(sp)
    sb      s8,115(sp)
    sb      a0,66(sp)
    sd      s5,120(sp)
    lw      a1,172(sp)
    lw      a2,168(sp)
    ld      a0,176(sp)
    j       .while.head_73
.while.exit_73:
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
    j       .branch_false_64
.branch_false_64:
.L18_0:
    ld      ra,192(sp)
    ld      s0,184(sp)
    sd      a0,176(sp)
    li      a0, 0
    addi    sp,sp,200
    ret
    .globl getMid
    .type getMid,@function
getMid:
    addi    sp,sp,-120
    sd      ra,112(sp)
    sd      s0,104(sp)
    addi    s0,sp,120
.L14_0:
    j       .L15_0
.L15_0:
    la      a1, n
    lw      a2,0(a1)
    li      a3, 2
    rem     a4,a2,a3
    li      a5, 0
    xor     a6,a4,a5
    seqz    a6, a6
    bnez    a6, .branch_true_105
    j       .branch_false_105
.branch_true_105:
    la      a1, n
    lw      a3,0(a1)
    li      a5, 2
    div     a7,a3,a5
    mv      s1, a7
    li      s2, 1
    sub     s3,s1,s2
    li      s4, 0
    mul     s5,s2,s3
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,a0
    lw      s6,0(s4)
    li      s7, 0
    mul     s8,s2,s1
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,a0
    lw      s9,0(s7)
    add     s10,s9,s6
    div     s11,s10,a5
    ld      ra,112(sp)
    ld      s0,104(sp)
    sw      s11,28(sp)
    sd      a0,96(sp)
    lw      a0,28(sp)
    addi    sp,sp,120
    ret
.branch_false_105:
    la      a1, n
    lw      a3,0(a1)
    li      a5, 2
    div     a7,a3,a5
    mv      s1, a7
    li      s2, 0
    li      s3, 1
    mul     s4,s3,s1
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,a0
    lw      s5,0(s2)
    ld      ra,112(sp)
    ld      s0,104(sp)
    sw      s5,4(sp)
    sd      a0,96(sp)
    lw      a0,4(sp)
    addi    sp,sp,120
    ret
.L16_0:
    .globl getMost
    .type getMost,@function
getMost:
    li      a1, -4136
    li      a1, -4136
    add     sp,a1,sp
    li      a2, 4128
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 4120
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 4136
    li      a4, 4136
    add     s0,a4,sp
.L11_0:
    li      a1, 0
    j       .while.head_119
.while.head_119:
    li      a2, 1000
    slt     a3,a1,a2
    bnez    a3, .while.body_119
    j       .while.exit_119
.while.body_119:
    li      a2, 0
    li      a4, 1
    mul     a5,a4,a1
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,112
    li      a6, 0
    sw      a6,0(a2)
    add     a7,a1,a4
    mv      a1, a7
    sd      a2,96(sp)
    sw      a7,92(sp)
    sb      a3,107(sp)
    j       .while.head_119
.while.exit_119:
    li      a1, 0
    li      a2, 0
    j       .while.head_128
.while.head_128:
    la      a4, n
    lw      a5,0(a4)
    slt     a6,a1,a5
    bnez    a6, .while.body_128
    j       .while.exit_128
.while.body_128:
    li      a4, 0
    li      a7, 1
    mul     s1,a7,a1
    add     a4,a4,s1
    slli a4,a4,2
    add     a4,a4,a0
    lw      s2,0(a4)
    mv      s3, s2
    li      s4, 0
    mul     s5,a7,s3
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,112
    li      s6, 0
    mul     s7,a7,s3
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,112
    lw      s8,0(s6)
    add     s9,s8,a7
    sw      s9,0(s4)
    j       .L12_0
.L12_0:
    li      a7, 0
    li      s1, 1
    mul     s5,s1,s3
    add     a7,a7,s5
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,112
    lw      s7,0(a7)
    slt     s10,a2,s7
    bnez    s10, .branch_true_134
    j       .branch_false_134
.branch_true_134:
    li      s1, 0
    li      s5, 1
    mul     s11,s5,s3
    add     s1,s1,s11
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,112
    lw      s5,0(s1)
    mv      a2, s5
    mv      s11, s3
    sd      s1,8(sp)
    sw      s11,84(sp)
    sw      s5,4(sp)
    j       .branch_false_134
.branch_false_134:
.L13_0:
    li      s1, 1
    add     s5,a1,s1
    mv      a1, s5
    sb      s10,19(sp)
    sd      s6,40(sp)
    sw      a5,80(sp)
    sd      a7,24(sp)
    sw      s8,36(sp)
    sw      s9,32(sp)
    sw      s7,20(sp)
    sw      s2,60(sp)
    sb      a6,79(sp)
    sw      s3,72(sp)
    sd      a4,64(sp)
    sd      s4,48(sp)
    sw      s5,0(sp)
    j       .while.head_128
.while.exit_128:
    li      a4, 4128
    add     a4,sp,a4
    ld      ra,0(a4)
    li      a7, 4120
    add     a7,sp,a7
    ld      s0,0(a7)
    li      a0, 4112
    add     a0,sp,a0
    sd      a0,0(a0)
    lw      a0,84(sp)
    li      s1, 4136
    li      s1, 4136
    add     sp,s1,sp
    ret
    .globl revert
    .type revert,@function
revert:
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
.L10_0:
    li      a1, 0
    li      a2, 0
    j       .while.head_149
.while.head_149:
    slt     a3,a1,a2
    bnez    a3, .while.body_149
    j       .while.exit_149
.while.body_149:
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,a0
    lw      a7,0(a4)
    mv      s1, a7
    li      s2, 0
    mul     s3,a5,a1
    add     s2,s2,s3
    slli s2,s2,2
    add     s2,s2,a0
    li      s4, 0
    mul     s5,a5,a2
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,a0
    lw      s6,0(s4)
    sw      s6,0(s2)
    li      s7, 0
    mul     s8,a5,a2
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,a0
    sw      s1,0(s7)
    add     s9,a1,a5
    mv      a1, s9
    sub     s10,a2,a5
    mv      a2, s10
    sd      s4,24(sp)
    sb      a3,59(sp)
    sd      a4,48(sp)
    sw      s10,0(sp)
    sd      s2,32(sp)
    sw      s6,20(sp)
    sw      a7,44(sp)
    sd      s7,8(sp)
    sw      s9,4(sp)
    sw      s1,68(sp)
    j       .while.head_149
.while.exit_149:
    ld      ra,88(sp)
    ld      s0,80(sp)
    sd      a0,72(sp)
    li      a0, 0
    addi    sp,sp,96
    ret
    .globl arrCopy
    .type arrCopy,@function
arrCopy:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
.L9_0:
    li      a2, 0
    j       .while.head_163
.while.head_163:
    la      a3, n
    lw      a4,0(a3)
    slt     a5,a2,a4
    bnez    a5, .while.body_163
    j       .while.exit_163
.while.body_163:
    li      a3, 0
    li      a6, 1
    mul     a7,a6,a2
    add     a3,a3,a7
    slli a3,a3,2
    add     a3,a3,a1
    li      s1, 0
    mul     s2,a6,a2
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,a0
    lw      s3,0(s1)
    sw      s3,0(a3)
    add     s4,a2,a6
    mv      a2, s4
    sw      s4,0(sp)
    sb      a5,31(sp)
    sd      a3,16(sp)
    sd      s1,8(sp)
    sw      s3,4(sp)
    sw      a4,32(sp)
    j       .while.head_163
.while.exit_163:
    ld      ra,64(sp)
    ld      s0,56(sp)
    sd      a0,48(sp)
    li      a0, 0
    addi    sp,sp,72
    ret
    .globl calSum
    .type calSum,@function
calSum:
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,88(sp)
    addi    s0,sp,104
.L5_0:
    li      a2, 0
    li      a3, 0
    j       .while.head_176
.while.head_176:
    la      a4, n
    lw      a5,0(a4)
    slt     a6,a3,a5
    bnez    a6, .while.body_176
    j       .while.exit_176
.while.body_176:
    li      a4, 0
    li      a7, 1
    mul     s1,a7,a3
    add     a4,a4,s1
    slli a4,a4,2
    add     a4,a4,a0
    lw      s2,0(a4)
    add     s3,a2,s2
    mv      a2, s3
    j       .L6_0
.L6_0:
    li      a7, 1
    sub     s1,a1,a7
    rem     s4,a3,a1
    xor     s5,s4,s1
    snez    s5, s5
    bnez    s5, .branch_true_180
    j       .branch_false_180
.branch_true_180:
    li      a7, 0
    li      s6, 1
    mul     s7,s6,a3
    add     a7,a7,s7
    slli a7,a7,2
    add     a7,a7,a0
    li      s8, 0
    sw      s8,0(a7)
    j       .L7_0
.branch_false_180:
    li      a7, 0
    li      s6, 1
    mul     s7,s6,a3
    add     a7,a7,s7
    slli a7,a7,2
    add     a7,a7,a0
    sw      a2,0(a7)
    li      a2, 0
    sd      a7,0(sp)
    ld      a7,16(sp)
    j       .L7_0
.L7_0:
.L8_0:
    li      s6, 1
    add     s7,a3,s6
    mv      a3, s7
    sd      a7,16(sp)
    sb      a6,63(sp)
    sw      s7,12(sp)
    sw      s4,32(sp)
    sw      s1,36(sp)
    sd      a4,48(sp)
    sw      a5,64(sp)
    sw      s3,40(sp)
    sw      s2,44(sp)
    sb      s5,31(sp)
    j       .while.head_176
.while.exit_176:
    ld      ra,96(sp)
    ld      s0,88(sp)
    sd      a0,80(sp)
    li      a0, 0
    addi    sp,sp,104
    ret
    .globl avgPooling
    .type avgPooling,@function
avgPooling:
    addi    sp,sp,-224
    sd      ra,216(sp)
    sd      s0,208(sp)
    addi    s0,sp,224
.L1_0:
    li      a2, 0
    li      a3, 0
    j       .while.head_197
.while.head_197:
    la      a4, n
    lw      a5,0(a4)
    slt     a6,a2,a5
    bnez    a6, .while.body_197
    j       .while.exit_197
.while.body_197:
    li      a4, 1
    sub     a7,a1,a4
    slt     s1,a2,a7
    bnez    s1, .branch_true_200
    j       .branch_false_200
.branch_true_200:
    li      a4, 0
    li      s2, 1
    mul     s3,s2,a2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,a0
    lw      s4,0(a4)
    add     s5,a3,s4
    mv      a3, s5
    j       .L3_0
.branch_false_200:
    li      a4, 1
    sub     s2,a1,a4
    xor     s3,a2,s2
    seqz    s3, s3
    bnez    s3, .branch_true_204
    j       .branch_false_204
.branch_true_204:
    li      a4, 0
    li      s4, 1
    li      s5, 0
    mul     s6,s4,s5
    add     a4,a4,s6
    slli a4,a4,2
    add     a4,a4,a0
    lw      s7,0(a4)
    mv      s8, s7
    li      s9, 0
    mul     s10,s4,s5
    add     s9,s9,s10
    slli s9,s9,2
    add     s9,s9,a0
    div     s11,a3,a1
    sw      s11,0(s9)
    j       .L2_0
.branch_false_204:
    li      a4, 0
    li      s4, 1
    mul     s5,s4,a2
    add     a4,a4,s5
    slli a4,a4,2
    add     a4,a4,a0
    lw      s6,0(a4)
    add     s7,a3,s6
    lw      s8,184(sp)
    sub     s9,s7,s8
    mv      a3, s9
    sub     s10,a2,a1
    add     s11,s10,s4
    li      s4, 0
    li      s5, 1
    sd      a0,200(sp)
    mul     a0,s5,s11
    add     s4,s4,a0
    slli s4,s4,2
    ld      a0,200(sp)
    add     s4,s4,a0
    lw      s5,0(s4)
    mv      s8, s5
    sd      a0,200(sp)
    sub     a0,a2,a1
    sw      a1,196(sp)
    li      a1, 1
    sw      a2,188(sp)
    add     a2,a0,a1
    li      a1, 0
    sw      a0,56(sp)
    li      a0, 1
    sw      a3,192(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    ld      a0,200(sp)
    add     a1,a1,a0
    lw      a3,192(sp)
    sd      a0,200(sp)
    lw      a0,196(sp)
    sd      a1,40(sp)
    div     a1,a3,a0
    sw      a0,196(sp)
    ld      a0,40(sp)
    sw      a1,0(a0)
    sw      a1,36(sp)
    sd      s4,64(sp)
    sw      s5,60(sp)
    sd      a4,96(sp)
    sw      s11,76(sp)
    sd      a0,40(sp)
    sw      s7,88(sp)
    sw      a2,52(sp)
    sw      s9,84(sp)
    sw      s10,80(sp)
    sw      s6,92(sp)
    lw      a1,196(sp)
    ld      a4,128(sp)
    lw      s11,108(sp)
    ld      a0,200(sp)
    lw      s7,124(sp)
    lw      a2,188(sp)
    ld      s9,112(sp)
    j       .L2_0
.L2_0:
.L3_0:
.L4_0:
    li      s2, 1
    add     s3,a2,s2
    mv      a2, s3
    sw      s3,148(sp)
    sw      s4,156(sp)
    sb      a6,179(sp)
    sw      s5,152(sp)
    sb      s1,171(sp)
    sd      a4,160(sp)
    sw      a7,172(sp)
    sw      a5,180(sp)
    j       .while.head_197
.while.exit_197:
    la      a4, n
    lw      a7,0(a4)
    sub     s1,a7,a1
    li      s2, 1
    add     s3,s1,s2
    mv      a2, s3
    j       .while.head_215
.while.head_215:
    la      a4, n
    lw      s2,0(a4)
    slt     s4,a2,s2
    bnez    s4, .while.body_215
    j       .while.exit_215
.while.body_215:
    li      a4, 0
    li      s5, 1
    mul     s6,s5,a2
    add     a4,a4,s6
    slli a4,a4,2
    add     a4,a4,a0
    li      s7, 0
    sw      s7,0(a4)
    add     s8,a2,s5
    mv      a2, s8
    sw      s8,4(sp)
    sb      s4,19(sp)
    sw      s2,20(sp)
    sd      a4,8(sp)
    j       .while.head_215
.while.exit_215:
    ld      ra,216(sp)
    ld      s0,208(sp)
    sd      a0,200(sp)
    li      a0, 0
    addi    sp,sp,224
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-944
    sd      ra,936(sp)
    sd      s0,928(sp)
    addi    s0,sp,944
.L0_0:
    la      a0, n
    li      a1, 32
    sw      a1,0(a0)
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,800
    li      a6, 7
    sw      a6,0(a2)
    li      a7, 0
    li      s1, 1
    mul     s2,a3,s1
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,800
    li      s3, 23
    sw      s3,0(a7)
    li      s4, 0
    li      s5, 2
    mul     s6,s1,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,800
    li      s7, 89
    sw      s7,0(s4)
    li      s8, 0
    li      s9, 3
    mul     s10,s1,s9
    add     s8,s8,s10
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,800
    li      s11, 26
    sw      s11,0(s8)
    li      a0, 0
    li      a1, 4
    mul     a3,s1,a1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,800
    li      a1, 282
    sw      a1,0(a0)
    li      a1, 0
    li      a3, 5
    mul     a4,s1,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,800
    li      a3, 254
    sw      a3,0(a1)
    li      a3, 0
    li      a4, 6
    mul     a5,s1,a4
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,800
    li      a4, 27
    sw      a4,0(a3)
    li      a4, 0
    mul     a5,s1,a6
    add     a4,a4,a5
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,800
    li      a5, 5
    sw      a5,0(a4)
    li      a5, 0
    li      a6, 8
    mul     s2,s1,a6
    add     a5,a5,s2
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,800
    li      a6, 83
    sw      a6,0(a5)
    li      a6, 0
    li      s2, 9
    mul     s3,s1,s2
    add     a6,a6,s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,800
    li      s1, 273
    sw      s1,0(a6)
    li      s1, 0
    li      s2, 1
    li      s3, 10
    mul     s5,s2,s3
    add     s1,s1,s5
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,800
    li      s2, 574
    sw      s2,0(s1)
    li      s2, 0
    li      s3, 1
    li      s5, 11
    mul     s6,s3,s5
    add     s2,s2,s6
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,800
    li      s3, 905
    sw      s3,0(s2)
    li      s3, 0
    li      s5, 1
    li      s6, 12
    mul     s7,s5,s6
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,800
    li      s5, 354
    sw      s5,0(s3)
    li      s5, 0
    li      s6, 1
    li      s7, 13
    mul     s9,s6,s7
    add     s5,s5,s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,800
    li      s6, 657
    sw      s6,0(s5)
    li      s6, 0
    li      s7, 1
    li      s9, 14
    mul     s10,s7,s9
    add     s6,s6,s10
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,800
    li      s7, 935
    sw      s7,0(s6)
    li      s7, 0
    li      s9, 1
    li      s10, 15
    mul     s11,s9,s10
    add     s7,s7,s11
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,800
    li      s9, 264
    sw      s9,0(s7)
    li      s9, 0
    li      s10, 1
    li      s11, 16
    sd      a0,632(sp)
    mul     a0,s10,s11
    add     s9,s9,a0
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,800
    li      a0, 639
    sw      a0,0(s9)
    li      a0, 0
    li      s11, 17
    sd      a1,624(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,800
    li      a1, 459
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 18
    sd      a0,528(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,800
    li      a0, 29
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 19
    sd      a1,520(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,800
    li      a1, 68
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 20
    sd      a0,512(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,800
    li      a0, 929
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 21
    sd      a1,504(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,800
    li      a1, 756
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 22
    sd      a0,496(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,800
    li      a0, 452
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 23
    sd      a1,488(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,800
    li      a1, 279
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 24
    sd      a0,480(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,800
    li      a0, 58
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 25
    sd      a1,472(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,800
    li      a1, 87
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 26
    sd      a0,464(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,800
    li      a0, 96
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 27
    sd      a1,456(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,800
    li      a1, 36
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 28
    sd      a0,448(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,800
    li      a0, 39
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 29
    sd      a1,440(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,800
    li      a1, 28
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 30
    sd      a0,432(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,800
    sw      s10,0(a1)
    li      a0, 0
    li      s11, 31
    sd      a1,424(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,800
    li      a1, 290
    sw      a1,0(a0)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,800
    li      s10, 0
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,672
    sd      s1,584(sp)
    sd      s2,576(sp)
    sd      s3,568(sp)
    sd      s4,648(sp)
    sd      s5,560(sp)
    sd      s6,552(sp)
    sd      s7,544(sp)
    sd      s8,640(sp)
    sd      s9,536(sp)
    sd      s10,392(sp)
    sd      a0,416(sp)
    sd      a1,400(sp)
    sd      a2,664(sp)
    sd      a3,616(sp)
    sd      a4,608(sp)
    sd      a5,600(sp)
    sd      a6,592(sp)
    sd      a7,656(sp)
    ld      a0,400(sp)
    ld      a1,392(sp)
    call    arrCopy
    sw      a0,388(sp)
    mv      a1, a0
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,672
    sw      a0,388(sp)
    sw      a1,412(sp)
    sd      a2,376(sp)
    ld      a0,376(sp)
    call    revert
    sw      a0,372(sp)
    mv      a1, a0
    li      a2, 0
    j       .while.head_263
.while.head_263:
    li      a3, 32
    slt     a4,a2,a3
    bnez    a4, .while.body_263
    j       .while.exit_263
.while.body_263:
    li      a3, 0
    li      a5, 1
    mul     a6,a5,a2
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,672
    lw      a7,0(a3)
    mv      a1, a7
    sw      a0,372(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,352(sp)
    sb      a4,367(sp)
    sw      a7,348(sp)
    lw      a0,412(sp)
    call    putint
    lw      a0,368(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,344(sp)
    sw      a0,368(sp)
    lw      a2,368(sp)
    lw      a1,412(sp)
    lw      a0,372(sp)
    j       .while.head_263
.while.exit_263:
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,672
    sw      a0,372(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,336(sp)
    sb      a4,367(sp)
    ld      a0,336(sp)
    call    bubblesort
    sw      a0,332(sp)
    mv      a1, a0
    li      a2, 0
    j       .while.head_271
.while.head_271:
    li      a3, 32
    slt     a4,a2,a3
    bnez    a4, .while.body_271
    j       .while.exit_271
.while.body_271:
    li      a3, 0
    li      a5, 1
    mul     a6,a5,a2
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,672
    lw      a7,0(a3)
    mv      a1, a7
    sw      a0,332(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,320(sp)
    sb      a4,331(sp)
    sw      a7,316(sp)
    lw      a0,412(sp)
    call    putint
    lw      a0,368(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,312(sp)
    sw      a0,368(sp)
    lw      a2,368(sp)
    lw      a1,412(sp)
    lw      a0,332(sp)
    j       .while.head_271
.while.exit_271:
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,672
    sw      a0,332(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,304(sp)
    sb      a4,331(sp)
    ld      a0,304(sp)
    call    getMid
    sw      a0,300(sp)
    mv      a1, a0
    sw      a0,300(sp)
    sw      a1,412(sp)
    lw      a0,412(sp)
    call    putint
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,672
    sd      a0,288(sp)
    ld      a0,288(sp)
    call    getMost
    sw      a0,284(sp)
    mv      a1, a0
    sw      a0,284(sp)
    sw      a1,412(sp)
    lw      a0,412(sp)
    call    putint
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,800
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,672
    sd      a0,272(sp)
    sd      a1,264(sp)
    ld      a0,272(sp)
    ld      a1,264(sp)
    call    arrCopy
    sw      a0,260(sp)
    mv      a1, a0
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,672
    sw      a0,260(sp)
    sw      a1,412(sp)
    sd      a2,248(sp)
    ld      a0,248(sp)
    call    bubblesort
    sw      a0,244(sp)
    mv      a1, a0
    li      a2, 0
    j       .while.head_284
.while.head_284:
    li      a3, 32
    slt     a4,a2,a3
    bnez    a4, .while.body_284
    j       .while.exit_284
.while.body_284:
    li      a3, 0
    li      a5, 1
    mul     a6,a5,a2
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,672
    lw      a7,0(a3)
    mv      a1, a7
    sw      a0,244(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,232(sp)
    sb      a4,243(sp)
    sw      a7,228(sp)
    lw      a0,412(sp)
    call    putint
    lw      a0,368(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,224(sp)
    sw      a0,368(sp)
    lw      a2,368(sp)
    lw      a1,412(sp)
    lw      a0,244(sp)
    j       .while.head_284
.while.exit_284:
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,800
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,672
    sw      a0,244(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,216(sp)
    sb      a4,243(sp)
    sd      a5,208(sp)
    ld      a0,216(sp)
    ld      a1,208(sp)
    call    arrCopy
    sw      a0,204(sp)
    mv      a1, a0
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,672
    sw      a0,204(sp)
    sw      a1,412(sp)
    sd      a2,192(sp)
    ld      a0,192(sp)
    call    insertsort
    sw      a0,188(sp)
    mv      a1, a0
    li      a2, 0
    j       .while.head_293
.while.head_293:
    li      a3, 32
    slt     a4,a2,a3
    bnez    a4, .while.body_293
    j       .while.exit_293
.while.body_293:
    li      a3, 0
    li      a5, 1
    mul     a6,a5,a2
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,672
    lw      a7,0(a3)
    mv      a1, a7
    sw      a0,188(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,176(sp)
    sb      a4,187(sp)
    sw      a7,172(sp)
    lw      a0,412(sp)
    call    putint
    lw      a0,368(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,168(sp)
    sw      a0,368(sp)
    lw      a2,368(sp)
    lw      a1,412(sp)
    lw      a0,188(sp)
    j       .while.head_293
.while.exit_293:
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,800
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,672
    sw      a0,188(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,160(sp)
    sb      a4,187(sp)
    sd      a5,152(sp)
    ld      a0,160(sp)
    ld      a1,152(sp)
    call    arrCopy
    sw      a0,148(sp)
    mv      a1, a0
    li      a2, 0
    li      a1, 31
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,672
    sw      a0,148(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,136(sp)
    ld      a0,136(sp)
    lw      a1,368(sp)
    lw      a2,412(sp)
    call    QuickSort
    sw      a0,132(sp)
    mv      a1, a0
    j       .while.head_303
.while.head_303:
    lw      a2,368(sp)
    li      a3, 32
    slt     a4,a2,a3
    bnez    a4, .while.body_303
    j       .while.exit_303
.while.body_303:
    li      a3, 0
    li      a5, 1
    mul     a6,a5,a2
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,672
    lw      a7,0(a3)
    mv      a1, a7
    sw      a0,132(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,120(sp)
    sb      a4,131(sp)
    sw      a7,116(sp)
    lw      a0,412(sp)
    call    putint
    lw      a0,368(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,112(sp)
    sw      a0,368(sp)
    lw      a1,412(sp)
    lw      a0,132(sp)
    j       .while.head_303
.while.exit_303:
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,800
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,672
    sw      a0,132(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,104(sp)
    sb      a4,131(sp)
    sd      a5,96(sp)
    ld      a0,104(sp)
    ld      a1,96(sp)
    call    arrCopy
    sw      a0,92(sp)
    mv      a1, a0
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,672
    sw      a0,92(sp)
    sw      a1,412(sp)
    sd      a2,80(sp)
    ld      a0,80(sp)
    li      a1, 4
    call    calSum
    sw      a0,76(sp)
    mv      a1, a0
    li      a2, 0
    j       .while.head_312
.while.head_312:
    li      a3, 32
    slt     a4,a2,a3
    bnez    a4, .while.body_312
    j       .while.exit_312
.while.body_312:
    li      a3, 0
    li      a5, 1
    mul     a6,a5,a2
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,672
    lw      a7,0(a3)
    mv      a1, a7
    sw      a0,76(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,64(sp)
    sb      a4,75(sp)
    sw      a7,60(sp)
    lw      a0,412(sp)
    call    putint
    lw      a0,368(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,56(sp)
    sw      a0,368(sp)
    lw      a2,368(sp)
    lw      a1,412(sp)
    lw      a0,76(sp)
    j       .while.head_312
.while.exit_312:
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,800
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,672
    sw      a0,76(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,48(sp)
    sb      a4,75(sp)
    sd      a5,40(sp)
    ld      a0,48(sp)
    ld      a1,40(sp)
    call    arrCopy
    sw      a0,36(sp)
    mv      a1, a0
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,672
    sw      a0,36(sp)
    sw      a1,412(sp)
    sd      a2,24(sp)
    ld      a0,24(sp)
    li      a1, 3
    call    avgPooling
    sw      a0,20(sp)
    mv      a1, a0
    li      a2, 0
    j       .while.head_321
.while.head_321:
    li      a3, 32
    slt     a4,a2,a3
    bnez    a4, .while.body_321
    j       .while.exit_321
.while.body_321:
    li      a3, 0
    li      a5, 1
    mul     a6,a5,a2
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,672
    lw      a7,0(a3)
    mv      a1, a7
    sw      a0,20(sp)
    sw      a1,412(sp)
    sw      a2,368(sp)
    sd      a3,8(sp)
    sb      a4,19(sp)
    sw      a7,4(sp)
    lw      a0,412(sp)
    call    putint
    lw      a0,368(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,0(sp)
    sw      a0,368(sp)
    lw      a2,368(sp)
    lw      a1,412(sp)
    lw      a0,20(sp)
    j       .while.head_321
.while.exit_321:
    ld      ra,936(sp)
    ld      s0,928(sp)
    sw      a0,20(sp)
    li      a0, 0
    addi    sp,sp,944
    ret
.section ___var
    .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
