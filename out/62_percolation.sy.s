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
    li      a6, 0
    mul     a7,a3,a1
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,a6
    li      s1, -1
    sd      s1,0(a6)
    add     s2,a1,a3
    j       .while.head_23
.while.exit_23:
    .globl findfa
    .type findfa,@function
findfa:
    addi    sp,sp,-1400
    sd      ra,1392(sp)
    sd      s0,1384(sp)
    addi    s0,sp,1400
.L12_0:
    la      a1, array
    lw      a2,0(a1)
    li      a3, 0
    li      a4, 1
    mul     a5,a4,a0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
    xor     a7,a6,a0
    seqz    a7, a7
    bnez    a7, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    ld      ra,1392(sp)
    ld      s0,1384(sp)
    addi    sp,sp,1400
    ret
.branch_false_31:
    li      s1, 0
    mul     s2,a4,a0
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
    la      s3, array
    lw      s4,0(s3)
    li      s5, 0
    mul     s6,a4,a0
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    sd      s1,912(sp)
    sd      s5,464(sp)
    sw      s6,908(sp)
    sw      a0,1380(sp)
    call    findfa
    sw      a0,456(sp)
    sd      a0,0(s1)
    la      s2, array
    lw      s3,0(s2)
    li      s4, 0
    mul     s6,a4,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    ld      ra,1392(sp)
    ld      s0,1384(sp)
    lw      a0,4(sp)
    addi    sp,sp,1400
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
    call    findfa
    sw      a0,28(sp)
    mv      a2, a0
    sw      a1,32(sp)
    sw      a0,28(sp)
    call    findfa
    sw      a0,20(sp)
    mv      a1, a0
    j       .L11_0
.L11_0:
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
    add     a4,a4,a4
    sd      a1,0(a4)
    j       .branch_false_42
.branch_false_42:
    .globl main
    .type main,@function
main:
    li      a0, -2976
    li      a0, -2976
    add     sp,a0,sp
    sd      ra,2968(sp)
    sd      s0,2960(sp)
    li      a1, 2976
    li      a1, 2976
    add     s0,a1,sp
.L0_0:
    li      a2, 1
    j       .while.head_50
.while.head_50:
    li      a3, 0
    xor     a4,a2,a3
    snez    a4, a4
    bnez    a4, .while.body_50
    j       .while.exit_50
.while.body_50:
    li      a5, 1
    sub     a6,a2,a5
    la      a7, n
    li      s1, 4
    sd      s1,0(a7)
    li      s2, 10
    li      s3, 0
    li      s4, 0
    la      s5, n
    lw      s6,0(s5)
    sw      s2,2952(sp)
    sw      s3,2932(sp)
    sw      s4,2928(sp)
    call    init
    la      a0, n
    lw      s1,0(a0)
    mul     s3,s2,s2
    add     s4,s3,a5
    mv      s5, s4
    j       .while.head_60
.while.head_60:
    slt     s8,s6,s7
    bnez    s8, .while.body_60
    j       .while.exit_60
.while.body_60:
    sw      s2,2920(sp)
    sw      s3,2916(sp)
    sw      s4,2912(sp)
    sw      s5,2908(sp)
    sw      s6,2932(sp)
    sw      s7,2952(sp)
    sb      s8,2907(sp)
    call    getint
    sw      a0,2900(sp)
    mv      s1, a0
    sw      s1,2948(sp)
    call    getint
    sw      a0,2900(sp)
    sw      a0,2896(sp)
    mv      s1, a0
    j       .L1_0
.L1_0:
    xor     s3,s2,a3
    snez    s3, s3
    xori    s4,s3,-1
    bnez    s4, .branch_true_65
    j       .branch_false_65
.branch_true_65:
    sub     s6,s5,a5
    la      s7, n
    lw      s8,0(s7)
    mul     s10,s9,s6
    add     s11,s10,s1
    mv      a1, s11
    li      a3, 0
    mul     a7,a5,a1
    add     a3,a3,a7
    slli a3,a3,2
    add     a3,a3,a3
    sd      a1,0(a3)
    j       .L2_0
.L2_0:
    xor     a7,s5,a5
    seqz    a7, a7
    bnez    a7, .branch_true_70
    j       .branch_false_70
.branch_true_70:
    li      a5, 0
    li      s7, 1
    li      s8, 0
    sw      a0,2896(sp)
    mul     a0,s7,s8
    add     a5,a5,a0
    slli a5,a5,2
    add     a5,a5,a5
    sd      s8,0(a5)
    sw      s1,2944(sp)
    sw      s2,2928(sp)
    sb      s3,2895(sp)
    sb      s4,2894(sp)
    sw      s5,2948(sp)
    sw      s6,2888(sp)
    sw      s9,2884(sp)
    sw      s10,2880(sp)
    sw      s11,2876(sp)
    sw      a1,2872(sp)
    li      a1, 0
    call    mmerge
    j       .branch_false_70
.branch_false_70:
.L3_0:
    la      a0, n
    lw      a1,0(a0)
    xor     s3,s1,s2
    seqz    s3, s3
    bnez    s3, .branch_true_75
    j       .branch_false_75
.branch_true_75:
    li      s4, 0
    li      s5, 1
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,s4
    sd      s6,0(s4)
    sw      s1,2948(sp)
    sw      s2,2844(sp)
    sb      s3,2843(sp)
    sd      s4,2832(sp)
    sw      s6,2908(sp)
    call    mmerge
    j       .branch_false_75
.branch_false_75:
.L4_0:
    li      a1, 1
    add     s1,a0,a1
    la      s2, array
    lw      s3,0(s2)
    li      s4, 0
    mul     s5,a1,s1
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s7, -1
    xor     s8,s6,s7
    snez    s8, s8
    la      s9, n
    lw      s10,0(s9)
    slt     s2,s11,a1
    and     s3,s2,s8
    bnez    s3, .branch_true_80
    j       .branch_false_80
.branch_true_80:
    li      s7, 1
    add     s9,a0,s7
    sw      s1,2828(sp)
    sb      s2,2363(sp)
    sb      s3,2362(sp)
    sd      s4,2376(sp)
    sw      s5,2824(sp)
    sw      s6,2372(sp)
    sb      s8,2371(sp)
    sw      s9,2356(sp)
    sw      s11,2944(sp)
    sw      a0,2872(sp)
    sw      a1,2364(sp)
    call    mmerge
    j       .branch_false_80
.branch_false_80:
.L5_0:
    li      a1, 1
    sub     s1,a0,a1
    la      s2, array
    lw      s3,0(s2)
    li      s4, 0
    mul     s5,a1,s1
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s7, -1
    xor     s8,s6,s7
    snez    s8, s8
    slt     s10,a1,s9
    and     s11,s10,s8
    bnez    s11, .branch_true_84
    j       .branch_false_84
.branch_true_84:
    sub     s2,a0,a1
    sw      s1,2352(sp)
    sw      s2,1892(sp)
    sd      s4,1904(sp)
    sw      s5,2348(sp)
    sw      s6,1900(sp)
    sb      s8,1899(sp)
    sw      s9,2944(sp)
    sb      s10,1898(sp)
    sb      s11,1897(sp)
    sw      a0,2872(sp)
    call    mmerge
    j       .branch_false_84
.branch_false_84:
.L6_0:
    la      a0, n
    lw      a1,0(a0)
    add     s3,s1,s2
    la      s4, array
    lw      s5,0(s4)
    li      s6, 0
    li      s7, 1
    mul     s8,s7,s3
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s10, -1
    xor     s11,s9,s10
    snez    s11, s11
    slt     a1,a0,s2
    and     s4,a1,s11
    bnez    s4, .branch_true_88
    j       .branch_false_88
.branch_true_88:
    la      s5, n
    lw      s7,0(s5)
    add     s7,s1,s5
    sw      s1,2872(sp)
    sw      s2,1888(sp)
    sw      s3,1884(sp)
    sb      s4,1425(sp)
    sw      s5,1420(sp)
    sd      s6,1432(sp)
    sw      s7,1416(sp)
    sw      s8,1880(sp)
    sw      s9,1428(sp)
    sb      s11,1427(sp)
    sw      a0,2948(sp)
    sb      a1,1426(sp)
    call    mmerge
    j       .branch_false_88
.branch_false_88:
.L7_0:
    la      a0, n
    lw      a1,0(a0)
    sub     s3,s1,s2
    la      s4, array
    lw      s5,0(s4)
    li      s6, 0
    li      s7, 1
    mul     s8,s7,s3
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s10, -1
    xor     s11,s9,s10
    snez    s11, s11
    slt     a1,s7,a0
    and     s4,a1,s11
    bnez    s4, .branch_true_92
    j       .branch_false_92
.branch_true_92:
    la      s5, n
    lw      s7,0(s5)
    sub     s7,s1,s5
    sw      s1,2872(sp)
    sw      s2,1412(sp)
    sw      s3,1408(sp)
    sb      s4,953(sp)
    sw      s5,948(sp)
    sd      s6,960(sp)
    sw      s7,944(sp)
    sw      s8,1404(sp)
    sw      s9,956(sp)
    sb      s11,955(sp)
    sw      a0,2948(sp)
    sb      a1,954(sp)
    call    mmerge
    j       .branch_false_92
.branch_false_92:
.L8_0:
    call    findfa
    sw      a0,940(sp)
    sw      a0,940(sp)
    li      a0, 0
    call    findfa
    sw      a0,936(sp)
    xor     s1,a0,a1
    seqz    s1, s1
    la      s2, array
    lw      s3,0(s2)
    li      s4, 0
    li      s5, 1
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s9, -1
    xor     s10,s8,s9
    snez    s10, s10
    and     s11,s10,s1
    la      s2, array
    lw      s3,0(s2)
    li      s2, 0
    li      s3, 0
    mul     s9,s5,s3
    add     s2,s2,s9
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    li      s5, -1
    sw      a0,936(sp)
    xor     a0,s3,s5
    snez    a0, a0
    and     s5,a0,s11
    bnez    s5, .branch_true_96
    j       .branch_false_96
.branch_true_96:
    sb      a0,19(sp)
    li      a0, 1
    sw      a0,2928(sp)
    sw      a1,940(sp)
    li      a1, 1
    sw      a2,2956(sp)
    add     a2,a0,a1
    mv      a1, a2
    sb      s1,935(sp)
    sd      s2,24(sp)
    sw      s3,20(sp)
    sd      s4,480(sp)
    sb      s5,18(sp)
    sw      s6,2908(sp)
    sw      s7,928(sp)
    sw      s8,476(sp)
    sw      s9,468(sp)
    sb      s10,475(sp)
    sb      s11,474(sp)
    sw      a1,8(sp)
    sw      a0,2932(sp)
    call    putint
    li      a0, 10
    call    putch
    j       .branch_false_96
.branch_false_96:
.branch_false_65:
.L9_0:
    li      a1, 1
    add     s1,a0,a1
    j       .while.head_60
.while.exit_60:
    li      s3, 0
    xor     s4,s2,s3
    snez    s4, s4
    xori    s5,s4,-1
    bnez    s5, .branch_true_104
    j       .branch_false_104
.branch_true_104:
    sw      s1,4(sp)
    sw      s2,2928(sp)
    sb      s4,3(sp)
    sb      s5,2(sp)
    sw      a0,2932(sp)
    li      a0, -1
    call    putint
    li      a0, 10
    call    putch
    j       .branch_false_104
.branch_false_104:
    j       .while.head_50
.while.exit_50:
    li      a0, 2968
    add     a0,sp,a0
    ld      ra,0(a0)
    li      s1, 2960
    add     s1,sp,s1
    ld      s0,0(s1)
    li      a0, 0
    li      s2, 2976
    li      s2, 2976
    add     sp,s2,sp
    ret
.section        .data
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
