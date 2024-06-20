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
    addi    sp,sp,-264
    sd      ra,256(sp)
    sd      s0,240(sp)
    addi    s0,sp,264
.L20_0:
    li      a1, 0
    mv      a2, a1
    j       .while.head_24
.while.head_24:
    la      a3, n
    lw      a4,0(a3)
    mv      a5, a5
    li      a6, 1
    sub     a7,a5,a6
    slt     s1,a2,a7
    bnez    s1, .while.body_24
    j       .while.exit_24
.while.body_24:
    mv      s2, a1
    j       .while.head_28
.while.head_28:
    sub     s3,a2,a6
    la      s4, n
    lw      s5,0(s4)
    mv      s6, s6
    sub     s7,s6,s3
    slt     s8,s2,s7
    bnez    s8, .while.body_28
    j       .while.exit_28
.while.body_28:
    add     s9,s2,a6
    li      s10, 0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
    li      s11, 0
    add     s11,s11,a0
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
    mv      a1, a1
    mv      a3, a3
    slt     a4,a3,a1
    bnez    a4, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    add     s4,s2,a6
    li      a6, 0
    li      s5, 1
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
    mv      s5, s5
    sd      a0,224(sp)
    mv      a0, s5
    sw      a0,112(sp)
    li      a0, 1
    sw      a1,120(sp)
    add     a1,s2,a0
    li      a0, 0
    sw      a1,80(sp)
    li      a1, 1
    sw      a2,216(sp)
    mv      a2, a2
    sw      a3,144(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,64(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,48(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,64(sp)
    li      a0, 0
    sw      a1,40(sp)
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    j       .branch_false_31
.branch_false_31:
.L21_0:
    sd      a0,24(sp)
    li      a0, 1
    sw      a1,112(sp)
    add     a1,s2,a0
    j       .while.head_28
.while.exit_28:
    mv      a0, a0
    sw      a1,16(sp)
    li      a1, 1
    sw      a2,80(sp)
    add     a2,a0,a1
    j       .while.head_24
.while.exit_24:
    ld      ra,256(sp)
    ld      s0,240(sp)
    li      a0, 0
    addi    sp,sp,264
    ret
    .globl insertsort
    .type insertsort,@function
insertsort:
    addi    sp,sp,-208
    sd      ra,200(sp)
    sd      s0,184(sp)
    addi    s0,sp,208
.L19_0:
    sd      a0,168(sp)
    mv      a0, a1
    j       .while.head_46
.while.head_46:
    la      a1, n
    sw      a0,160(sp)
    lw      a0,0(a1)
    mv      a0, a0
    mv      a1, a1
    sw      a2,8(sp)
    slt     a2,a0,a1
    bnez    a2, .while.body_46
    j       .while.exit_46
.while.body_46:
    sw      a0,160(sp)
    li      a0, 0
    sw      a1,152(sp)
    li      a1, 1
    sb      a2,151(sp)
    mv      a2, a2
    sd      a3,224(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,128(sp)
    mv      a0, a1
    sw      a0,144(sp)
    li      a0, 1
    sw      a1,120(sp)
    sub     a1,a2,a0
    mv      a0, a1
    j       .while.head_53
.while.head_53:
    sw      a0,116(sp)
    li      a0, 0
    sw      a1,108(sp)
    li      a1, 1
    sw      a2,160(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,96(sp)
    mv      a0, a0
    sw      a2,116(sp)
    slt     a2,a1,a0
    sw      a0,88(sp)
    mv      a0, a0
    sw      a1,144(sp)
    li      a1, -1
    sb      a2,87(sp)
    slt     a2,a1,a0
    mv      a1, a1
    sw      a0,116(sp)
    and     a0,a2,a1
    bnez    a0, .while.body_53
    j       .while.exit_53
.while.body_53:
    sb      a0,85(sp)
    mv      a0, a0
    sb      a1,87(sp)
    li      a1, 1
    sb      a2,86(sp)
    add     a2,a0,a1
    li      a1, 0
    sw      a0,116(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,64(sp)
    li      a1, 1
    sw      a2,80(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,48(sp)
    mv      a0, a0
    sd      a0,0(a1)
    sw      a0,44(sp)
    li      a0, 1
    sd      a1,64(sp)
    sub     a1,a2,a0
    j       .while.head_53
.while.exit_53:
    sw      a1,36(sp)
    add     a1,a2,a0
    li      a0, 0
    sw      a1,28(sp)
    li      a1, 1
    sw      a2,116(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,16(sp)
    mv      a0, a0
    sw      a1,144(sp)
    li      a1, 1
    sw      a2,28(sp)
    add     a2,a0,a1
    j       .while.head_46
.while.exit_46:
    ld      ra,200(sp)
    ld      s0,184(sp)
    li      a0, 0
    addi    sp,sp,208
    ret
    .globl QuickSort
    .type QuickSort,@function
QuickSort:
    addi    sp,sp,-304
    sd      ra,296(sp)
    sd      s0,280(sp)
    addi    s0,sp,304
.L17_0:
    sd      a0,264(sp)
    slt     a0,a1,a2
    bnez    a0, .branch_true_64
    j       .branch_false_64
.branch_true_64:
    sb      a0,247(sp)
    mv      a0, a1
    sw      a0,240(sp)
    mv      a0, a2
    sw      a0,236(sp)
    li      a0, 0
    sw      a1,256(sp)
    li      a1, 1
    sw      a2,248(sp)
    mv      a2, a2
    sd      a3,168(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,216(sp)
    mv      a0, a1
    j       .while.head_73
.while.head_73:
    sw      a0,228(sp)
    mv      a0, a0
    sw      a1,208(sp)
    mv      a1, a1
    sw      a2,256(sp)
    slt     a2,a0,a1
    bnez    a2, .while.body_73
    j       .while.exit_73
.while.head_76:
    sw      a0,240(sp)
    mv      a0, a0
    sw      a1,236(sp)
    li      a1, 1
    sb      a2,207(sp)
    sub     a2,a0,a1
    li      a1, 0
    sw      a0,228(sp)
    li      a0, 1
    sw      a2,203(sp)
    mv      a2, a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,192(sp)
    mv      a1, a1
    sw      a2,236(sp)
    slt     a2,a1,a0
    sw      a0,184(sp)
    mv      a0, a0
    sw      a1,203(sp)
    mv      a1, a1
    sb      a2,183(sp)
    slt     a2,a0,a1
    sw      a0,240(sp)
    mv      a0, a0
    sw      a1,236(sp)
    and     a1,a2,a0
    bnez    a1, .while.body_76
    j       .while.exit_76
.while.body_76:
    sb      a0,183(sp)
    mv      a0, a0
    sb      a1,181(sp)
    li      a1, 1
    sb      a2,182(sp)
    sub     a2,a0,a1
    j       .while.head_76
.while.exit_76:
    mv      a1, a1
    sw      a2,177(sp)
    slt     a2,a1,a0
    bnez    a2, .branch_true_80
    j       .branch_false_80
.branch_true_80:
    sw      a0,236(sp)
    li      a0, 0
    sw      a1,240(sp)
    li      a1, 1
    sb      a2,176(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,160(sp)
    li      a0, 1
    sw      a2,240(sp)
    mv      a2, a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,152(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,160(sp)
    mv      a0, a0
    sw      a1,144(sp)
    li      a1, 1
    sw      a2,236(sp)
    add     a2,a0,a1
    j       .branch_false_80
.branch_false_80:
.while.head_85:
    li      a1, 0
    sw      a0,240(sp)
    li      a0, 1
    sw      a2,136(sp)
    mv      a2, a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,120(sp)
    mv      a1, a1
    sw      a2,240(sp)
    slt     a2,a0,a1
    sw      a0,112(sp)
    mv      a0, a0
    sw      a1,228(sp)
    mv      a1, a1
    sb      a2,111(sp)
    slt     a2,a0,a1
    sw      a0,240(sp)
    mv      a0, a0
    sw      a1,236(sp)
    and     a1,a2,a0
    bnez    a1, .while.body_85
    j       .while.exit_85
.while.body_85:
    sb      a0,111(sp)
    mv      a0, a0
    sb      a1,109(sp)
    li      a1, 1
    sb      a2,110(sp)
    add     a2,a0,a1
    j       .while.head_85
.while.exit_85:
    mv      a1, a1
    sw      a2,105(sp)
    slt     a2,a0,a1
    bnez    a2, .branch_true_89
    j       .branch_false_89
.branch_true_89:
    sw      a0,240(sp)
    li      a0, 0
    sw      a1,236(sp)
    li      a1, 1
    sb      a2,104(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,88(sp)
    li      a0, 1
    sw      a2,236(sp)
    mv      a2, a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,80(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,88(sp)
    mv      a0, a0
    sw      a1,72(sp)
    li      a1, 1
    sw      a2,240(sp)
    sub     a2,a0,a1
    j       .branch_false_89
.branch_false_89:
    j       .while.head_73
.while.exit_73:
    li      a1, 0
    sw      a0,236(sp)
    li      a0, 1
    sw      a2,64(sp)
    mv      a2, a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a0,0(a1)
    sw      a0,228(sp)
    li      a0, 1
    sd      a1,48(sp)
    sub     a1,a2,a0
    mv      a0, a1
    sb      s1,191(sp)
    sw      s2,208(sp)
    sw      s3,184(sp)
    sw      s4,108(sp)
    sw      s5,88(sp)
    sw      s6,180(sp)
    sw      s7,172(sp)
    sb      s8,171(sp)
    sw      s9,167(sp)
    sd      s10,152(sp)
    sd      s11,128(sp)
    sd      a3,264(sp)
    sw      a0,40(sp)
    mv      a0, a0
    sw      a1,32(sp)
    mv      a1, a1
    sw      a2,240(sp)
    mv      a2, a2
    call    QuickSort
    sw      a0,24(sp)
    mv      a1, a0
    mv      a2, a2
    li      a3, 1
    add     s1,a2,a3
    sw      s1,16(sp)
    sw      a0,24(sp)
    mv      a0, a0
    sw      a1,40(sp)
    mv      a1, a1
    sw      a2,240(sp)
    mv      a2, a2
    call    QuickSort
    sw      a0,8(sp)
    mv      a1, a0
    j       .branch_false_64
.branch_false_64:
.L18_0:
    ld      ra,296(sp)
    ld      s0,280(sp)
    li      a0, 0
    addi    sp,sp,304
    ret
    .globl getMid
    .type getMid,@function
getMid:
    addi    sp,sp,-192
    sd      ra,184(sp)
    sd      s0,168(sp)
    addi    s0,sp,192
.L14_0:
    j       .L15_0
.L15_0:
    la      a2, n
    lw      s1,0(a2)
    mv      s2, s2
    li      s3, 2
    mv      s4, s4
    rem     s4,s2,s3
    li      s5, 0
    xor     s6,s4,s5
    sltiu   s6,s6,1
    bnez    s6, .branch_true_105
    j       .branch_false_105
.branch_true_105:
    la      s7, n
    lw      s8,0(s7)
    mv      s9, s9
    div     s10,s9,s3
    mv      s11, s10
    sub     a2,s11,a3
    li      a3, 0
    li      s1, 1
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
    li      s1, 0
    li      s3, 1
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
    mv      s3, s3
    mv      s5, s5
    add     s7,s3,s5
    li      s8, 2
    sd      a0,152(sp)
    div     a0,s7,s8
    ld      ra,184(sp)
    ld      s0,168(sp)
    mv      a0, a0
    addi    sp,sp,192
    ret
.branch_false_105:
    la      s8, n
    sw      a0,48(sp)
    lw      a0,0(s8)
    mv      a0, a0
    li      s8, 2
    sw      a1,40(sp)
    div     a1,a0,s8
    li      s8, 0
    sw      a0,40(sp)
    li      a0, 1
    sw      a1,32(sp)
    mul     a1,a0,s11
    add     s8,s8,a1
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
    ld      ra,184(sp)
    ld      s0,168(sp)
    lw      a0,8(sp)
    addi    sp,sp,192
    ret
.L16_0:
    .globl getMost
    .type getMost,@function
getMost:
    sd      a0,4184(sp)
    li      a0, -4224
    li      a0, -4224
    add     sp,a0,sp
    sd      ra,4216(sp)
    sd      s0,4200(sp)
    li      a0, 4224
    li      a0, 4224
    add     s0,a0,sp
.L11_0:
    li      a0, 0
    sd      a1,152(sp)
    mv      a1, a0
    j       .while.head_119
.while.head_119:
    li      a0, 1000
    sw      a2,108(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_119
    j       .while.exit_119
.while.body_119:
    li      a0, 0
    sw      a1,172(sp)
    li      a1, 1
    sb      a2,171(sp)
    mv      a2, a2
    sd      a3,96(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 1
    sd      a0,160(sp)
    add     a0,a2,a1
    j       .while.head_119
.while.exit_119:
    li      a1, 0
    sw      a0,156(sp)
    mv      a0, a1
    j       .while.head_128
.while.head_128:
    la      a1, n
    sw      a0,148(sp)
    lw      a0,0(a1)
    mv      a0, a0
    slt     a1,a2,a0
    bnez    a1, .while.body_128
    j       .while.exit_128
.while.body_128:
    sw      a0,132(sp)
    li      a0, 0
    sb      a1,131(sp)
    li      a1, 1
    sw      a3,4176(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,112(sp)
    mv      a0, a1
    sw      a0,127(sp)
    li      a0, 0
    sw      a1,104(sp)
    li      a1, 1
    sw      a2,172(sp)
    mv      a2, a2
    sd      a3,4184(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,88(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,72(sp)
    li      a1, 1
    sw      a2,127(sp)
    add     a2,a0,a1
    mv      a1, a1
    sd      a2,0(a1)
    j       .L12_0
.L12_0:
    sw      a0,64(sp)
    li      a0, 0
    sd      a1,88(sp)
    li      a1, 1
    sw      a2,56(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,40(sp)
    mv      a0, a0
    sw      a2,127(sp)
    slt     a2,a0,a1
    bnez    a2, .branch_true_134
    j       .branch_false_134
.branch_true_134:
    sw      a0,148(sp)
    li      a0, 0
    sw      a1,32(sp)
    li      a1, 1
    sb      a2,31(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,16(sp)
    mv      a0, a1
    sw      a0,148(sp)
    mv      a0, a2
    j       .branch_false_134
.branch_false_134:
.L13_0:
    sw      a0,140(sp)
    mv      a0, a0
    sw      a1,12(sp)
    li      a1, 1
    sw      a2,127(sp)
    add     a2,a0,a1
    j       .while.head_128
.while.exit_128:
    li      a1, 4216
    add     a1,sp,a1
    ld      ra,0(a1)
    sw      a0,172(sp)
    li      a0, 4200
    add     a0,sp,a0
    ld      s0,0(a0)
    lw      a0,140(sp)
    sd      a0,4200(sp)
    li      a0, 4224
    li      a0, 4224
    add     sp,a0,sp
    ret
    .globl revert
    .type revert,@function
revert:
    addi    sp,sp,-160
    sd      ra,152(sp)
    sd      s0,136(sp)
    addi    s0,sp,160
.L10_0:
    sd      a0,120(sp)
    li      a0, 0
    sd      a1,4216(sp)
    mv      a1, a0
    sw      a1,104(sp)
    mv      a1, a0
    j       .while.head_149
.while.head_149:
    mv      a0, a0
    sw      a2,4(sp)
    slt     a2,a0,a1
    bnez    a2, .while.body_149
    j       .while.exit_149
.while.body_149:
    sw      a0,104(sp)
    li      a0, 0
    sw      a1,96(sp)
    li      a1, 1
    sb      a2,95(sp)
    mv      a2, a2
    sw      a3,4176(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,80(sp)
    mv      a0, a1
    sw      a0,112(sp)
    li      a0, 0
    sw      a1,72(sp)
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,64(sp)
    li      a0, 1
    sw      a2,104(sp)
    mv      a2, a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,48(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,64(sp)
    li      a0, 0
    sw      a1,40(sp)
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,24(sp)
    mv      a0, a0
    sw      a1,112(sp)
    li      a1, 1
    sw      a2,96(sp)
    add     a2,a0,a1
    mv      a1, a1
    sw      a0,104(sp)
    li      a0, 1
    sw      a2,16(sp)
    sub     a2,a1,a0
    j       .while.head_149
.while.exit_149:
    ld      ra,152(sp)
    ld      s0,136(sp)
    li      a0, 0
    addi    sp,sp,160
    ret
    .globl arrCopy
    .type arrCopy,@function
arrCopy:
    addi    sp,sp,-120
    sd      ra,112(sp)
    sd      s0,96(sp)
    addi    s0,sp,120
.L9_0:
    sd      a0,80(sp)
    li      a0, 0
    sd      a1,64(sp)
    mv      a1, a0
    j       .while.head_163
.while.head_163:
    la      a0, n
    sw      a1,56(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,8(sp)
    slt     a2,a0,a1
    bnez    a2, .while.body_163
    j       .while.exit_163
.while.body_163:
    sw      a0,56(sp)
    li      a0, 0
    sw      a1,48(sp)
    li      a1, 1
    sb      a2,47(sp)
    mv      a2, a2
    sd      a3,120(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,32(sp)
    li      a0, 1
    sd      a3,64(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,16(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,32(sp)
    li      a0, 1
    sw      a1,12(sp)
    add     a1,a2,a0
    j       .while.head_163
.while.exit_163:
    ld      ra,112(sp)
    ld      s0,96(sp)
    li      a0, 0
    addi    sp,sp,120
    ret
    .globl calSum
    .type calSum,@function
calSum:
    addi    sp,sp,-152
    sd      ra,144(sp)
    sd      s0,128(sp)
    addi    s0,sp,152
.L5_0:
    sd      a0,112(sp)
    li      a0, 0
    sw      a1,104(sp)
    mv      a1, a0
    sw      a1,96(sp)
    mv      a1, a0
    j       .while.head_176
.while.head_176:
    la      a0, n
    sw      a1,88(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,56(sp)
    slt     a2,a0,a1
    bnez    a2, .while.body_176
    j       .while.exit_176
.while.body_176:
    sw      a0,88(sp)
    li      a0, 0
    sw      a1,80(sp)
    li      a1, 1
    sb      a2,79(sp)
    mv      a2, a2
    sd      a3,80(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,64(sp)
    mv      a0, a0
    sw      a2,88(sp)
    add     a2,a1,a0
    j       .L6_0
.L6_0:
    sw      a0,60(sp)
    li      a0, 1
    sw      a1,96(sp)
    mv      a1, a1
    sw      a2,52(sp)
    sub     a2,a0,a1
    mv      a0, a0
    sw      a2,44(sp)
    mv      a2, a2
    rem     a2,a0,a1
    sw      a0,88(sp)
    mv      a0, a0
    sw      a1,104(sp)
    xor     a1,a2,a0
    sltiu   a1,a1,1
    xori    a1,a1,1
    bnez    a1, .branch_true_180
    j       .branch_false_180
.branch_true_180:
    sw      a0,44(sp)
    li      a0, 0
    sb      a1,35(sp)
    li      a1, 1
    sw      a2,36(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    j       .L7_0
.branch_false_180:
    li      a1, 0
    sd      a0,27(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a0,0(a1)
    sw      a0,96(sp)
    li      a0, 0
    sd      a1,8(sp)
    mv      a1, a0
    j       .L7_0
.L7_0:
.L8_0:
    li      a0, 1
    sw      a1,96(sp)
    add     a1,a2,a0
    j       .while.head_176
.while.exit_176:
    ld      ra,144(sp)
    ld      s0,128(sp)
    li      a0, 0
    addi    sp,sp,152
    ret
    .globl avgPooling
    .type avgPooling,@function
avgPooling:
    addi    sp,sp,-336
    sd      ra,328(sp)
    sd      s0,312(sp)
    addi    s0,sp,336
.L1_0:
    sd      a0,296(sp)
    li      a0, 0
    sw      a1,288(sp)
    mv      a1, a0
    sw      a1,272(sp)
    mv      a1, a0
    j       .while.head_197
.while.head_197:
    la      a0, n
    sw      a1,280(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,88(sp)
    slt     a2,a0,a1
    bnez    a2, .while.body_197
    j       .while.exit_197
.while.body_197:
    sw      a0,272(sp)
    mv      a0, a0
    sw      a1,256(sp)
    li      a1, 1
    sb      a2,255(sp)
    sub     a2,a0,a1
    mv      a1, a1
    sw      a0,288(sp)
    slt     a0,a1,a2
    bnez    a0, .branch_true_200
    j       .branch_false_200
.branch_true_200:
    sb      a0,250(sp)
    li      a0, 0
    sw      a1,272(sp)
    li      a1, 1
    sw      a2,251(sp)
    mv      a2, a2
    sd      a3,112(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,240(sp)
    mv      a0, a0
    sw      a2,272(sp)
    add     a2,a1,a0
    j       .L3_0
.branch_false_200:
    sw      a0,236(sp)
    mv      a0, a0
    sw      a1,280(sp)
    li      a1, 1
    sw      a2,228(sp)
    sub     a2,a0,a1
    mv      a1, a1
    sw      a0,288(sp)
    xor     a0,a1,a2
    sltiu   a0,a0,1
    bnez    a0, .branch_true_204
    j       .branch_false_204
.branch_true_204:
    sb      a0,211(sp)
    li      a0, 0
    sw      a1,272(sp)
    li      a1, 1
    sw      a2,212(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    mv      a2, a1
    sd      a0,200(sp)
    li      a0, 0
    sw      a1,192(sp)
    li      a1, 1
    sw      a2,264(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    mv      a2, a2
    sd      a0,184(sp)
    div     a0,a1,a2
    sw      a0,176(sp)
    mv      a0, a0
    sw      a1,280(sp)
    mv      a1, a1
    sd      a1,0(a0)
    j       .L2_0
.branch_false_204:
    sd      a0,184(sp)
    li      a0, 0
    sw      a1,176(sp)
    li      a1, 1
    sw      a2,288(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,160(sp)
    mv      a0, a0
    sw      a2,272(sp)
    sub     a2,a1,a0
    sw      a0,264(sp)
    mv      a0, a0
    sw      a1,152(sp)
    add     a1,a0,a2
    sw      a0,280(sp)
    mv      a0, a0
    sw      a1,136(sp)
    li      a1, 1
    sw      a2,144(sp)
    add     a2,a0,a1
    mv      a1, a1
    sw      a0,288(sp)
    sub     a0,a1,a2
    sw      a0,120(sp)
    li      a0, 0
    sw      a1,272(sp)
    li      a1, 1
    sw      a2,128(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,104(sp)
    mv      a0, a1
    sw      a0,264(sp)
    mv      a0, a0
    sw      a1,96(sp)
    li      a1, 1
    sw      a2,120(sp)
    add     a2,a0,a1
    mv      a1, a1
    sw      a0,288(sp)
    sub     a0,a1,a2
    sw      a0,80(sp)
    li      a0, 0
    sw      a1,272(sp)
    li      a1, 1
    sw      a2,88(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,64(sp)
    mv      a0, a0
    sw      a2,80(sp)
    div     a2,a1,a0
    sw      a0,288(sp)
    mv      a0, a0
    sd      a2,0(a0)
    j       .L2_0
.L2_0:
.L3_0:
.L4_0:
    sd      a0,64(sp)
    mv      a0, a0
    sw      a1,280(sp)
    li      a1, 1
    sw      a2,56(sp)
    add     a2,a0,a1
    j       .while.head_197
.while.exit_197:
    mv      a1, a1
    sw      a0,272(sp)
    li      a0, 1
    sw      a2,220(sp)
    add     a2,a1,a0
    la      a0, n
    sw      a1,288(sp)
    lw      a1,0(a0)
    mv      a0, a0
    sub     a1,a0,a2
    sw      a0,40(sp)
    mv      a0, a1
    j       .while.head_215
.while.head_215:
    sw      a0,272(sp)
    la      a0, n
    sw      a1,32(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,48(sp)
    slt     a2,a0,a1
    bnez    a2, .while.body_215
    j       .while.exit_215
.while.body_215:
    sw      a0,272(sp)
    li      a0, 0
    sw      a1,24(sp)
    li      a1, 1
    sb      a2,23(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 1
    sd      a0,8(sp)
    add     a0,a2,a1
    j       .while.head_215
.while.exit_215:
    ld      ra,328(sp)
    ld      s0,312(sp)
    li      a0, 0
    addi    sp,sp,336
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-1112
    sd      ra,1104(sp)
    sd      s0,1088(sp)
    addi    s0,sp,1112
.L0_0:
    la      a1, n
    sw      a0,0(sp)
    li      a0, 32
    sd      a0,0(a1)
    li      a0, 0
    li      a1, 1
    sw      a2,272(sp)
    li      a2, 0
    sd      a3,296(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 1
    sd      a0,808(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 23
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,792(sp)
    li      a1, 2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 89
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,776(sp)
    li      a0, 3
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 26
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,760(sp)
    li      a1, 4
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 282
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,744(sp)
    li      a0, 5
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 254
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,728(sp)
    li      a1, 6
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 27
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,712(sp)
    li      a0, 7
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 5
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,696(sp)
    li      a1, 8
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 83
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,680(sp)
    li      a0, 9
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 273
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,664(sp)
    li      a1, 10
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 574
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,648(sp)
    li      a0, 11
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 905
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,632(sp)
    li      a1, 12
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 354
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,616(sp)
    li      a0, 13
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 657
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,600(sp)
    li      a1, 14
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 935
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,584(sp)
    li      a0, 15
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 264
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,568(sp)
    li      a1, 16
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 639
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,552(sp)
    li      a0, 17
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 459
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,536(sp)
    li      a1, 18
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 29
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,520(sp)
    li      a0, 19
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 68
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,504(sp)
    li      a1, 20
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 929
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,488(sp)
    li      a0, 21
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 756
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,472(sp)
    li      a1, 22
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 452
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,456(sp)
    li      a0, 23
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 279
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,440(sp)
    li      a1, 24
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 58
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,424(sp)
    li      a0, 25
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 87
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,408(sp)
    li      a1, 26
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 96
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,392(sp)
    li      a0, 27
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 36
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,376(sp)
    li      a1, 28
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 39
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,360(sp)
    li      a0, 29
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 28
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,344(sp)
    li      a1, 30
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a2,0(a0)
    li      a1, 0
    sd      a0,328(sp)
    li      a0, 31
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 290
    sd      a0,0(a1)
    sd      s1,72(sp)
    sw      s2,136(sp)
    sw      s3,64(sp)
    sw      s4,128(sp)
    sw      s5,88(sp)
    sb      s6,127(sp)
    sw      s7,56(sp)
    sd      s8,16(sp)
    sw      s9,123(sp)
    sw      s10,116(sp)
    sw      s11,144(sp)
    sw      a3,1080(sp)
    mv      a0, a0
    sd      a1,312(sp)
    mv      a1, a1
    call    arrCopy
    sw      a0,296(sp)
    mv      a1, a0
    sw      a0,296(sp)
    mv      a0, a0
    call    revert
    sw      a0,288(sp)
    li      a3, 0
    mv      s1, a3
    j       .while.head_263
.while.head_263:
    li      s2, 32
    slt     s3,s1,s2
    bnez    s3, .while.body_263
    j       .while.exit_263
.while.body_263:
    li      s4, 0
    mul     s5,a2,s1
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    mv      s6, s6
    sw      s1,280(sp)
    sb      s3,279(sp)
    sd      s4,271(sp)
    sw      s5,948(sp)
    sw      s6,264(sp)
    sw      a1,304(sp)
    sw      a0,288(sp)
    mv      a0, a0
    call    putint
    mv      a0, a0
    add     a1,a0,a2
    j       .while.head_263
.while.exit_263:
    sw      a0,280(sp)
    mv      a0, a0
    call    bubblesort
    sw      a0,248(sp)
    mv      s1, a0
    mv      s2, a3
    j       .while.head_271
.while.head_271:
    li      s3, 32
    slt     s4,s2,s3
    bnez    s4, .while.body_271
    j       .while.exit_271
.while.body_271:
    li      s5, 0
    mul     s6,a2,s2
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    mv      s7, s7
    sw      s1,304(sp)
    sw      s2,280(sp)
    sb      s4,247(sp)
    sd      s5,239(sp)
    sw      s6,948(sp)
    sw      s7,232(sp)
    sw      a0,248(sp)
    mv      a0, a0
    call    putint
    mv      a0, a0
    add     s1,a0,a2
    j       .while.head_271
.while.exit_271:
    sw      s1,224(sp)
    sw      a0,280(sp)
    mv      a0, a0
    call    getMid
    sw      a0,216(sp)
    mv      s1, a0
    sw      s1,304(sp)
    sw      a0,216(sp)
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    getMost
    sw      a0,208(sp)
    mv      s1, a0
    sw      s1,304(sp)
    sw      a0,208(sp)
    mv      a0, a0
    call    putint
    mv      a0, a0
    sw      a1,256(sp)
    mv      a1, a1
    call    arrCopy
    sw      a0,200(sp)
    mv      a1, a0
    sw      a0,200(sp)
    mv      a0, a0
    call    bubblesort
    sw      a0,192(sp)
    mv      s1, a3
    j       .while.head_284
.while.head_284:
    li      s2, 32
    slt     s3,s1,s2
    bnez    s3, .while.body_284
    j       .while.exit_284
.while.body_284:
    li      s4, 0
    mul     s5,a2,s1
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    mv      s6, s6
    sw      s1,280(sp)
    sb      s3,191(sp)
    sd      s4,176(sp)
    sw      s5,948(sp)
    sw      s6,172(sp)
    sw      a1,304(sp)
    sw      a0,192(sp)
    mv      a0, a0
    call    putint
    mv      a0, a0
    add     a1,a0,a2
    j       .while.head_284
.while.exit_284:
    sw      a0,280(sp)
    mv      a0, a0
    sw      a1,164(sp)
    mv      a1, a1
    call    arrCopy
    sw      a0,156(sp)
    mv      a1, a0
    sw      a0,156(sp)
    mv      a0, a0
    call    insertsort
    sw      a0,148(sp)
    mv      s1, a3
    j       .while.head_293
.while.head_293:
    li      s2, 32
    slt     s3,s1,s2
    bnez    s3, .while.body_293
    j       .while.exit_293
.while.body_293:
    li      s4, 0
    mul     s5,a2,s1
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    mv      s6, s6
    sw      s1,280(sp)
    sb      s3,147(sp)
    sd      s4,139(sp)
    sw      s5,948(sp)
    sw      s6,132(sp)
    sw      a1,304(sp)
    sw      a0,148(sp)
    mv      a0, a0
    call    putint
    mv      a0, a0
    add     a1,a0,a2
    j       .while.head_293
.while.exit_293:
    sw      a0,280(sp)
    mv      a0, a0
    sw      a1,124(sp)
    mv      a1, a1
    call    arrCopy
    sw      a0,116(sp)
    mv      a1, a0
    mv      s1, a3
    li      s2, 31
    sw      s1,280(sp)
    sw      a0,116(sp)
    mv      a0, a0
    sw      a1,304(sp)
    mv      a1, a1
    mv      a2, a2
    call    QuickSort
    sw      a0,108(sp)
    mv      a1, a0
    j       .while.head_303
.while.head_303:
    mv      a2, a2
    li      s1, 32
    slt     s2,a2,s1
    bnez    s2, .while.body_303
    j       .while.exit_303
.while.body_303:
    li      s3, 0
    li      s4, 1
    mul     s5,s4,a2
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    mv      s6, s6
    sb      s2,107(sp)
    sd      s3,96(sp)
    sw      s5,948(sp)
    sw      s6,92(sp)
    sw      a1,304(sp)
    sw      a0,108(sp)
    mv      a0, a0
    call    putint
    li      a0, 1
    add     a1,a2,a0
    j       .while.head_303
.while.exit_303:
    mv      a0, a0
    sw      a1,84(sp)
    mv      a1, a1
    call    arrCopy
    sw      a0,76(sp)
    mv      a1, a0
    sw      a0,76(sp)
    mv      a0, a0
    sw      a1,304(sp)
    li      a1, 4
    call    calSum
    sw      a0,68(sp)
    mv      a1, a0
    j       .while.head_312
.while.head_312:
    li      s1, 32
    slt     s2,a2,s1
    bnez    s2, .while.body_312
    j       .while.exit_312
.while.body_312:
    li      s3, 0
    li      s4, 1
    mul     s5,s4,a2
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    mv      s6, s6
    sb      s2,67(sp)
    sd      s3,56(sp)
    sw      s5,948(sp)
    sw      s6,48(sp)
    sw      a1,304(sp)
    sw      a0,68(sp)
    mv      a0, a0
    call    putint
    li      a0, 1
    add     a1,a2,a0
    j       .while.head_312
.while.exit_312:
    mv      a0, a0
    sw      a1,44(sp)
    mv      a1, a1
    call    arrCopy
    sw      a0,36(sp)
    mv      a1, a0
    sw      a0,36(sp)
    mv      a0, a0
    sw      a1,304(sp)
    li      a1, 3
    call    avgPooling
    sw      a0,28(sp)
    mv      a1, a0
    j       .while.head_321
.while.head_321:
    li      s1, 32
    slt     s2,a2,s1
    bnez    s2, .while.body_321
    j       .while.exit_321
.while.body_321:
    li      s3, 0
    li      s4, 1
    mul     s5,s4,a2
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    mv      s6, s6
    sb      s2,27(sp)
    sd      s3,16(sp)
    sw      s5,948(sp)
    sw      s6,12(sp)
    sw      a1,304(sp)
    sw      a0,28(sp)
    mv      a0, a0
    call    putint
    li      a0, 1
    add     a1,a2,a0
    j       .while.head_321
.while.exit_321:
    ld      ra,1104(sp)
    ld      s0,1088(sp)
    li      a0, 0
    addi    sp,sp,1112
    ret
.section        .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
