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
    .globl init
    .type init,@function
init:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L14_0:
    li      a1, 1
    j       .while.head_23
.while.head_23:
    mul     a2,a0,a0
    li      a3, 1
    add     a4,a2,a3
    slt     a5,a4,a1
    xori    a5,a5,1
    bnez    a5, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a3, 0
    li      a6, 1
    mul     a7,a6,a1
    add     a3,a3,a7
    slli a3,a3,2
    la      s1, array
    add     a3,a3,s1
    li      s2, -1
    sw      s2,0(a3)
    add     s3,a1,a6
    mv      a1, s3
    sw      a2,28(sp)
    sw      s3,4(sp)
    sd      a3,8(sp)
    sw      a4,24(sp)
    sb      a5,23(sp)
    j       .while.head_23
.while.exit_23:
    ld      ra,48(sp)
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
    .globl findfa
    .type findfa,@function
findfa:
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
.L12_0:
    li      a1, 0
    li      a2, 1
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,2
    la      a4, array
    add     a1,a1,a4
    lw      a5,0(a1)
    xor     a6,a5,a0
    seqz    a6, a6
    bnez    a6, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a0,60(sp)
    lw      a0,60(sp)
    addi    sp,sp,80
    ret
.branch_false_31:
    li      a2, 0
    li      a3, 1
    mul     a4,a3,a0
    add     a2,a2,a4
    slli a2,a2,2
    la      a7, array
    add     a2,a2,a7
    li      s1, 0
    mul     s2,a3,a0
    add     s1,s1,s2
    slli s1,s1,2
    la      s3, array
    add     s1,s1,s3
    lw      s4,0(s1)
    sd      s1,24(sp)
    sw      s4,20(sp)
    sw      a0,60(sp)
    sd      a1,48(sp)
    sd      a2,32(sp)
    sw      a5,44(sp)
    sb      a6,43(sp)
    lw      a0,20(sp)
    call    findfa
    sw      a0,16(sp)
    ld      a1,32(sp)
    sw      a0,0(a1)
    li      a2, 0
    li      a3, 1
    lw      a4,60(sp)
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    la      a6, array
    add     a2,a2,a6
    lw      a7,0(a2)
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a7,4(sp)
    sw      a0,16(sp)
    lw      a0,4(sp)
    addi    sp,sp,80
    ret
.L13_0:
    .globl mmerge
    .type mmerge,@function
mmerge:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L10_0:
    sw      a0,36(sp)
    sw      a1,32(sp)
    lw      a0,36(sp)
    call    findfa
    sw      a0,28(sp)
    mv      a1, a0
    sw      a0,28(sp)
    sw      a1,24(sp)
    lw      a0,32(sp)
    call    findfa
    sw      a0,20(sp)
    mv      a1, a0
    j       .L11_0
.L11_0:
    lw      a2,24(sp)
    xor     a3,a2,a1
    snez    a3, a3
    bnez    a3, .branch_true_42
    j       .branch_false_42
.branch_true_42:
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a2
    add     a4,a4,a6
    slli a4,a4,2
    la      a7, array
    add     a4,a4,a7
    sw      a1,0(a4)
    sd      a4,0(sp)
    j       .branch_false_42
.branch_false_42:
    ld      ra,48(sp)
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-336
    sd      ra,328(sp)
    sd      s0,320(sp)
    addi    s0,sp,336
.L0_0:
    li      a0, 1
    j       .while.head_50
.while.head_50:
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    bnez    a2, .while.body_50
    j       .while.exit_50
.while.body_50:
    li      a1, 1
    sub     a3,a0,a1
    mv      a0, a3
    la      a4, n
    li      a5, 4
    sw      a5,0(a4)
    li      a6, 10
    li      a7, 0
    li      s1, 0
    la      s2, n
    lw      s3,0(s2)
    sw      s1,288(sp)
    sw      s3,284(sp)
    sw      a0,316(sp)
    sb      a2,303(sp)
    sw      a3,296(sp)
    sw      a6,312(sp)
    sw      a7,292(sp)
    lw      a0,284(sp)
    call    init
    la      a0, n
    lw      a1,0(a0)
    mul     a2,a1,a1
    li      a3, 1
    add     a4,a2,a3
    mv      a5, a4
    j       .while.head_60
.while.head_60:
    lw      a0,292(sp)
    lw      a3,312(sp)
    slt     a6,a0,a3
    bnez    a6, .while.body_60
    j       .while.exit_60
.while.body_60:
    sw      a0,292(sp)
    sw      a1,280(sp)
    sw      a2,276(sp)
    sw      a3,312(sp)
    sw      a4,272(sp)
    sw      a5,268(sp)
    sb      a6,267(sp)
    call    getint
    sw      a0,260(sp)
    mv      a1, a0
    sw      a0,260(sp)
    sw      a1,308(sp)
    call    getint
    sw      a0,256(sp)
    mv      a1, a0
    j       .L1_0
.L1_0:
    lw      a2,288(sp)
    li      a3, 0
    xor     a4,a2,a3
    snez    a4, a4
    seqz    a5, a4
    bnez    a5, .branch_true_65
    j       .branch_false_65
.branch_true_65:
    lw      a3,308(sp)
    li      a6, 1
    sub     a7,a3,a6
    la      s1, n
    lw      s2,0(s1)
    mul     s3,s2,a7
    add     s4,s3,a1
    mv      s5, s4
    li      s6, 0
    mul     s7,a6,s5
    add     s6,s6,s7
    slli s6,s6,2
    la      s8, array
    add     s6,s6,s8
    sw      s5,0(s6)
    j       .L2_0
.L2_0:
    li      a6, 1
    xor     s1,a3,a6
    seqz    s1, s1
    bnez    s1, .branch_true_70
    j       .branch_false_70
.branch_true_70:
    li      a6, 0
    li      s7, 1
    li      s8, 0
    mul     s9,s7,s8
    add     a6,a6,s9
    slli a6,a6,2
    la      s10, array
    add     a6,a6,s10
    sw      s8,0(a6)
    sb      s1,223(sp)
    sw      s2,244(sp)
    sw      s3,240(sp)
    sw      s4,236(sp)
    sw      s5,232(sp)
    sd      s6,224(sp)
    sw      a0,256(sp)
    sw      a1,304(sp)
    sw      a2,288(sp)
    sw      a3,308(sp)
    sb      a4,255(sp)
    sb      a5,254(sp)
    sd      a6,208(sp)
    sw      a7,248(sp)
    lw      a0,232(sp)
    li      a1, 0
    call    mmerge
    lw      a3,308(sp)
    lw      a0,256(sp)
    lw      a7,248(sp)
    lw      s2,244(sp)
    lw      a2,288(sp)
    lb      a4,255(sp)
    lw      s3,240(sp)
    lw      a1,304(sp)
    lw      s4,236(sp)
    lb      s1,223(sp)
    ld      s6,224(sp)
    lb      a5,254(sp)
    lw      s5,232(sp)
    j       .branch_false_70
.branch_false_70:
.L3_0:
    la      a6, n
    lw      s7,0(a6)
    xor     s8,a3,s7
    seqz    s8, s8
    bnez    s8, .branch_true_75
    j       .branch_false_75
.branch_true_75:
    li      a6, 0
    li      s9, 1
    lw      s10,268(sp)
    mul     s11,s9,s10
    add     a6,a6,s11
    slli a6,a6,2
    la      s9, array
    add     a6,a6,s9
    sw      s10,0(a6)
    sb      s1,223(sp)
    sw      s2,244(sp)
    sw      s3,240(sp)
    sw      s4,236(sp)
    sw      s5,232(sp)
    sd      s6,224(sp)
    sw      s7,204(sp)
    sb      s8,203(sp)
    sw      s10,268(sp)
    sw      a0,256(sp)
    sw      a1,304(sp)
    sw      a2,288(sp)
    sw      a3,308(sp)
    sb      a4,255(sp)
    sb      a5,254(sp)
    sd      a6,192(sp)
    sw      a7,248(sp)
    lw      a0,232(sp)
    lw      a1,268(sp)
    call    mmerge
    lw      a3,308(sp)
    lw      a0,256(sp)
    lw      a7,248(sp)
    lw      s2,244(sp)
    lw      a2,288(sp)
    lb      a4,255(sp)
    lw      s3,240(sp)
    lw      a1,304(sp)
    lw      s4,236(sp)
    lb      s1,223(sp)
    ld      s6,224(sp)
    lb      a5,254(sp)
    lw      s5,232(sp)
    lw      s7,204(sp)
    lb      s8,203(sp)
    j       .branch_false_75
.branch_false_75:
.L4_0:
    li      a6, 1
    add     s9,s5,a6
    li      s10, 0
    mul     s11,a6,s9
    add     s10,s10,s11
    slli s10,s10,2
    la      a6, array
    add     s10,s10,a6
    lw      a6,0(s10)
    li      s11, -1
    sw      a0,256(sp)
    xor     a0,a6,s11
    snez    a0, a0
    la      s11, n
    sb      a0,171(sp)
    lw      a0,0(s11)
    slt     s11,a1,a0
    sw      a0,164(sp)
    lb      a0,171(sp)
    sw      a1,304(sp)
    and     a1,s11,a0
    sw      a3,308(sp)
    bnez    a1, .branch_true_80
    j       .branch_false_80
.branch_true_80:
    li      a3, 1
    sb      a0,171(sp)
    add     a0,s5,a3
    sb      s1,223(sp)
    sw      s2,244(sp)
    sw      s3,240(sp)
    sw      s4,236(sp)
    sw      s5,232(sp)
    sd      s6,224(sp)
    sw      s7,204(sp)
    sb      s8,203(sp)
    sw      s9,188(sp)
    sd      s10,176(sp)
    sb      s11,163(sp)
    sw      a0,156(sp)
    sb      a1,162(sp)
    sw      a2,288(sp)
    sb      a4,255(sp)
    sb      a5,254(sp)
    sw      a6,172(sp)
    sw      a7,248(sp)
    lw      a0,232(sp)
    lw      a1,156(sp)
    call    mmerge
    lb      a0,171(sp)
    lw      a7,248(sp)
    lw      s2,244(sp)
    lw      a2,288(sp)
    lb      a4,255(sp)
    lw      s3,240(sp)
    lw      a6,172(sp)
    lb      s11,163(sp)
    lb      a1,162(sp)
    lw      s4,236(sp)
    lb      s1,223(sp)
    ld      s6,224(sp)
    ld      s10,176(sp)
    lb      a5,254(sp)
    lw      s5,232(sp)
    lw      s7,204(sp)
    lw      s9,188(sp)
    lb      s8,203(sp)
    j       .branch_false_80
.branch_false_80:
.L5_0:
    li      a3, 1
    sb      a0,171(sp)
    sub     a0,s5,a3
    li      a3, 0
    sw      a0,152(sp)
    li      a0, 1
    sb      a1,162(sp)
    lw      a1,152(sp)
    sw      a2,288(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    la      a0, array
    add     a3,a3,a0
    lw      a0,0(a3)
    li      a2, -1
    sw      a1,152(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,304(sp)
    sw      a0,140(sp)
    li      a0, 1
    sb      a1,139(sp)
    slt     a1,a0,a2
    lb      a0,139(sp)
    sw      a2,304(sp)
    and     a2,a1,a0
    sd      a3,144(sp)
    bnez    a2, .branch_true_84
    j       .branch_false_84
.branch_true_84:
    li      a3, 1
    sb      a0,139(sp)
    sub     a0,s5,a3
    sb      s1,223(sp)
    sw      s2,244(sp)
    sw      s3,240(sp)
    sw      s4,236(sp)
    sw      s5,232(sp)
    sd      s6,224(sp)
    sw      s7,204(sp)
    sb      s8,203(sp)
    sw      s9,188(sp)
    sd      s10,176(sp)
    sb      s11,163(sp)
    sw      a0,132(sp)
    sb      a1,138(sp)
    sb      a2,137(sp)
    sb      a4,255(sp)
    sb      a5,254(sp)
    sw      a6,172(sp)
    sw      a7,248(sp)
    lw      a0,232(sp)
    lw      a1,132(sp)
    call    mmerge
    lb      a0,139(sp)
    lw      a7,248(sp)
    lw      s2,244(sp)
    lb      a2,137(sp)
    lb      a4,255(sp)
    lw      s3,240(sp)
    lw      a6,172(sp)
    lb      s11,163(sp)
    lb      a1,138(sp)
    lw      s4,236(sp)
    lb      s1,223(sp)
    ld      s6,224(sp)
    ld      s10,176(sp)
    lb      a5,254(sp)
    lw      s5,232(sp)
    lw      s7,204(sp)
    lw      s9,188(sp)
    lb      s8,203(sp)
    j       .branch_false_84
.branch_false_84:
.L6_0:
    la      a3, n
    sb      a0,139(sp)
    lw      a0,0(a3)
    add     a3,s5,a0
    sw      a0,128(sp)
    li      a0, 0
    sb      a1,138(sp)
    li      a1, 1
    sb      a2,137(sp)
    mul     a2,a1,a3
    add     a0,a0,a2
    slli a0,a0,2
    la      a1, array
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a2, -1
    sd      a0,112(sp)
    xor     a0,a1,a2
    snez    a0, a0
    lw      a2,308(sp)
    sb      a0,107(sp)
    lw      a0,128(sp)
    sw      a1,108(sp)
    slt     a1,a2,a0
    sw      a0,128(sp)
    lb      a0,107(sp)
    sw      a2,308(sp)
    and     a2,a1,a0
    sw      a3,124(sp)
    bnez    a2, .branch_true_88
    j       .branch_false_88
.branch_true_88:
    la      a3, n
    sb      a0,107(sp)
    lw      a0,0(a3)
    add     a3,s5,a0
    sb      s1,223(sp)
    sw      s2,244(sp)
    sw      s3,240(sp)
    sw      s4,236(sp)
    sw      s5,232(sp)
    sd      s6,224(sp)
    sw      s7,204(sp)
    sb      s8,203(sp)
    sw      s9,188(sp)
    sd      s10,176(sp)
    sb      s11,163(sp)
    sw      a0,100(sp)
    sb      a1,106(sp)
    sb      a2,105(sp)
    sw      a3,96(sp)
    sb      a4,255(sp)
    sb      a5,254(sp)
    sw      a6,172(sp)
    sw      a7,248(sp)
    lw      a0,232(sp)
    lw      a1,96(sp)
    call    mmerge
    lb      a0,107(sp)
    lw      a7,248(sp)
    lw      s2,244(sp)
    lb      a2,105(sp)
    lb      a4,255(sp)
    lw      s3,240(sp)
    lw      a6,172(sp)
    lb      s11,163(sp)
    lb      a1,106(sp)
    lw      s4,236(sp)
    lb      s1,223(sp)
    ld      s6,224(sp)
    ld      s10,176(sp)
    lb      a5,254(sp)
    lw      s5,232(sp)
    lw      s7,204(sp)
    lw      s9,188(sp)
    lb      s8,203(sp)
    j       .branch_false_88
.branch_false_88:
.L7_0:
    la      a3, n
    sb      a0,107(sp)
    lw      a0,0(a3)
    sub     a3,s5,a0
    sw      a0,92(sp)
    li      a0, 0
    sb      a1,106(sp)
    li      a1, 1
    sb      a2,105(sp)
    mul     a2,a1,a3
    add     a0,a0,a2
    slli a0,a0,2
    la      a1, array
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a2, -1
    sd      a0,80(sp)
    xor     a0,a1,a2
    snez    a0, a0
    lw      a2,308(sp)
    sb      a0,75(sp)
    li      a0, 1
    sw      a1,76(sp)
    slt     a1,a0,a2
    lb      a0,75(sp)
    sw      a2,308(sp)
    and     a2,a1,a0
    sw      a3,88(sp)
    bnez    a2, .branch_true_92
    j       .branch_false_92
.branch_true_92:
    la      a3, n
    sb      a0,75(sp)
    lw      a0,0(a3)
    sub     a3,s5,a0
    sb      s1,223(sp)
    sw      s2,244(sp)
    sw      s3,240(sp)
    sw      s4,236(sp)
    sw      s5,232(sp)
    sd      s6,224(sp)
    sw      s7,204(sp)
    sb      s8,203(sp)
    sw      s9,188(sp)
    sd      s10,176(sp)
    sb      s11,163(sp)
    sw      a0,68(sp)
    sb      a1,74(sp)
    sb      a2,73(sp)
    sw      a3,64(sp)
    sb      a4,255(sp)
    sb      a5,254(sp)
    sw      a6,172(sp)
    sw      a7,248(sp)
    lw      a0,232(sp)
    lw      a1,64(sp)
    call    mmerge
    lb      a0,75(sp)
    lw      a7,248(sp)
    lw      s2,244(sp)
    lb      a2,73(sp)
    lb      a4,255(sp)
    lw      s3,240(sp)
    lw      a6,172(sp)
    lb      s11,163(sp)
    lb      a1,74(sp)
    lw      s4,236(sp)
    lb      s1,223(sp)
    ld      s6,224(sp)
    ld      s10,176(sp)
    lb      a5,254(sp)
    lw      s5,232(sp)
    lw      s7,204(sp)
    lw      s9,188(sp)
    lb      s8,203(sp)
    j       .branch_false_92
.branch_false_92:
.L8_0:
    sb      s1,223(sp)
    sw      s2,244(sp)
    sw      s3,240(sp)
    sw      s4,236(sp)
    sw      s5,232(sp)
    sd      s6,224(sp)
    sw      s7,204(sp)
    sb      s8,203(sp)
    sw      s9,188(sp)
    sd      s10,176(sp)
    sb      s11,163(sp)
    sb      a0,75(sp)
    sb      a1,74(sp)
    sb      a2,73(sp)
    sb      a4,255(sp)
    sb      a5,254(sp)
    sw      a6,172(sp)
    sw      a7,248(sp)
    lw      a0,268(sp)
    call    findfa
    sw      a0,60(sp)
    sw      a0,60(sp)
    li      a0, 0
    call    findfa
    sw      a0,56(sp)
    lw      a1,60(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    li      a3, 0
    li      a4, 1
    lw      a5,268(sp)
    mul     a6,a4,a5
    add     a3,a3,a6
    slli a3,a3,2
    la      a7, array
    add     a3,a3,a7
    lw      s1,0(a3)
    li      s2, -1
    xor     s3,s1,s2
    snez    s3, s3
    and     s4,s3,a2
    li      s5, 0
    li      s6, 0
    mul     s7,a4,s6
    add     s5,s5,s7
    slli s5,s5,2
    la      s8, array
    add     s5,s5,s8
    lw      s9,0(s5)
    xor     s10,s9,s2
    snez    s10, s10
    and     s11,s10,s4
    bnez    s11, .branch_true_96
    j       .branch_false_96
.branch_true_96:
    li      a4, 1
    lw      a6,292(sp)
    li      a7, 1
    add     s2,a6,a7
    mv      s6, s2
    sw      s1,36(sp)
    sw      s2,12(sp)
    sb      s3,35(sp)
    sb      s4,34(sp)
    sd      s5,24(sp)
    sw      s6,8(sp)
    sw      s9,20(sp)
    sb      s10,19(sp)
    sb      s11,18(sp)
    sw      a0,56(sp)
    sw      a1,60(sp)
    sb      a2,55(sp)
    sd      a3,40(sp)
    sw      a4,288(sp)
    sw      a5,268(sp)
    sw      a6,292(sp)
    lw      a0,8(sp)
    call    putint
    li      a0, 10
    call    putch
    ld      a3,40(sp)
    lw      a0,56(sp)
    lb      a2,55(sp)
    lb      s3,35(sp)
    lb      s11,18(sp)
    lw      a1,60(sp)
    lb      s4,34(sp)
    lw      s1,36(sp)
    lb      s10,19(sp)
    lw      a5,268(sp)
    ld      s5,24(sp)
    lw      s9,20(sp)
    j       .branch_false_96
.branch_false_96:
.branch_false_65:
.L9_0:
    lw      a3,292(sp)
    li      a6, 1
    add     a7,a3,a6
    mv      a3, a7
    sw      a3,292(sp)
    sw      a0,256(sp)
    sw      a7,4(sp)
    sw      a2,288(sp)
    sb      a4,255(sp)
    sw      a1,304(sp)
    sb      a5,254(sp)
    lw      a2,276(sp)
    lw      a4,272(sp)
    lw      a1,280(sp)
    lw      a5,268(sp)
    j       .while.head_60
.while.exit_60:
    lw      a7,288(sp)
    li      s1, 0
    xor     s2,a7,s1
    snez    s2, s2
    seqz    s3, s2
    bnez    s3, .branch_true_104
    j       .branch_false_104
.branch_true_104:
    sb      s2,3(sp)
    sb      s3,2(sp)
    sw      a0,292(sp)
    sw      a1,280(sp)
    sw      a2,276(sp)
    sw      a3,312(sp)
    sw      a4,272(sp)
    sw      a5,268(sp)
    sb      a6,267(sp)
    sw      a7,288(sp)
    li      a0, -1
    call    putint
    li      a0, 10
    call    putch
    lw      a3,312(sp)
    lw      a0,292(sp)
    lw      a7,288(sp)
    lb      s2,3(sp)
    lw      a2,276(sp)
    lw      a4,272(sp)
    lb      s3,2(sp)
    lb      a6,267(sp)
    lw      a1,280(sp)
    lw      a5,268(sp)
    j       .branch_false_104
.branch_false_104:
    sw      a3,312(sp)
    sw      a0,292(sp)
    sw      a7,288(sp)
    sb      s2,3(sp)
    sw      a2,276(sp)
    sw      a4,272(sp)
    sb      s3,2(sp)
    sb      a6,267(sp)
    sw      a1,280(sp)
    sw      a5,268(sp)
    lw      a0,316(sp)
    j       .while.head_50
.while.exit_50:
    ld      ra,328(sp)
    ld      s0,320(sp)
    sw      a0,316(sp)
    li      a0, 0
    addi    sp,sp,336
    ret
.section ___var
    .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
    .align 4
    .globl array
    .type array,@object
array:
    .zero 440
