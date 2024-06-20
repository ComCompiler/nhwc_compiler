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
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,56(sp)
    addi    s0,sp,80
.L14_0:
    li      a1, 1
    mv      a2, a1
    j       .while.head_23
.while.head_23:
    mul     a3,a0,a0
    add     a4,a3,a1
    slt     a5,a2,a4
    xori    a5,a5,1
    bnez    a5, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a6, 0
    mul     a7,a1,a2
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,a6
    li      s1, -1
    sd      s1,0(a6)
    add     s2,a2,a1
    j       .while.head_23
.while.exit_23:
    .globl findfa
    .type findfa,@function
findfa:
    addi    sp,sp,-1456
    sd      ra,1448(sp)
    sd      s0,1432(sp)
    addi    s0,sp,1456
.L12_0:
    la      s3, array
    lw      s4,0(s3)
    li      s5, 0
    mul     s6,a1,a0
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    mv      s7, s7
    xor     s8,s7,a0
    sltiu   s8,s8,1
    bnez    s8, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    ld      ra,1448(sp)
    ld      s0,1432(sp)
    mv      a0, a0
    addi    sp,sp,1456
    ret
.branch_false_31:
    li      s9, 0
    mul     s10,a1,a0
    add     s9,s9,s10
    slli s9,s9,2
    add     s9,s9,s9
    la      s11, array
    lw      a1,0(s11)
    li      a1, 0
    li      a7, 1
    mul     s1,a7,a0
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      s1,936(sp)
    sw      s2,0(sp)
    sd      s5,968(sp)
    sw      s6,1416(sp)
    sw      s7,960(sp)
    sb      s8,959(sp)
    sd      s9,944(sp)
    sw      a0,1424(sp)
    mv      a0, a0
    call    findfa
    sw      a0,476(sp)
    mv      s1, s1
    sd      a0,0(s1)
    la      s2, array
    lw      s3,0(s2)
    li      s4, 0
    mv      s5, s5
    mul     s6,a7,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    ld      ra,1448(sp)
    ld      s0,1432(sp)
    lw      a0,8(sp)
    addi    sp,sp,1456
    ret
.L13_0:
    .globl mmerge
    .type mmerge,@function
mmerge:
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,64(sp)
    addi    s0,sp,88
.L10_0:
    sd      s1,944(sp)
    sd      s4,16(sp)
    sw      s5,1424(sp)
    sw      s6,468(sp)
    sw      a0,56(sp)
    mv      a0, a0
    call    findfa
    sw      a0,40(sp)
    mv      s1, a0
    sw      s1,32(sp)
    sw      a1,48(sp)
    sw      a0,40(sp)
    mv      a0, a0
    call    findfa
    sw      a0,24(sp)
    mv      a1, a0
    j       .L11_0
.L11_0:
    mv      s1, s1
    xor     s2,s1,a1
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .branch_true_42
    j       .branch_false_42
.branch_true_42:
    li      s3, 0
    mul     s4,a7,s1
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,s3
    sd      a1,0(s3)
    j       .branch_false_42
.branch_false_42:
    .globl main
    .type main,@function
main:
    li      s5, -3144
    li      s5, -3144
    add     sp,s5,sp
    sd      ra,3136(sp)
    sd      s0,3120(sp)
    li      s6, 3144
    li      s6, 3144
    add     s0,s6,sp
.L0_0:
    mv      s7, a7
    j       .while.head_50
.while.head_50:
    li      s8, 0
    xor     s9,s7,s8
    sltiu   s9,s9,1
    xori    s9,s9,1
    bnez    s9, .while.body_50
    j       .while.exit_50
.while.body_50:
    sub     s10,s7,a7
    la      s11, n
    li      a7, 4
    sd      a7,0(s11)
    li      a7, 10
    mv      s4, a7
    mv      a7, s8
    mv      s5, s8
    la      s6, n
    lw      s8,0(s6)
    sw      s1,32(sp)
    sb      s2,15(sp)
    sd      s3,7(sp)
    sw      s4,3104(sp)
    sw      s5,3068(sp)
    sw      s7,3112(sp)
    sb      s9,3087(sp)
    sw      s10,3083(sp)
    sw      a0,24(sp)
    mv      a0, a0
    call    init
    la      a0, n
    lw      s1,0(a0)
    mv      s2, s2
    mul     s3,s2,s2
    li      s4, 1
    add     s5,s3,s4
    mv      s6, s5
    j       .while.head_60
.while.head_60:
    mv      s7, s7
    slt     s8,a7,s7
    bnez    s8, .while.body_60
    j       .while.exit_60
.while.body_60:
    sw      s2,3052(sp)
    sw      s3,3044(sp)
    sw      s5,3036(sp)
    sw      s6,3028(sp)
    sw      s7,3104(sp)
    sb      s8,3027(sp)
    call    getint
    sw      a0,3023(sp)
    mv      s1, a0
    sw      s1,3096(sp)
    call    getint
    sw      a0,3023(sp)
    sw      a0,3016(sp)
    mv      s1, a0
    j       .L1_0
.L1_0:
    mv      s2, s2
    li      s3, 0
    xor     s4,s2,s3
    sltiu   s4,s4,1
    xori    s4,s4,1
    xori    s5,s4,-1
    bnez    s5, .branch_true_65
    j       .branch_false_65
.branch_true_65:
    mv      s6, s6
    li      s7, 1
    sub     s8,s6,s7
    la      s9, n
    lw      s10,0(s9)
    mv      s11, s11
    mul     s3,s11,s8
    add     s7,s3,s1
    mv      s9, s7
    li      s10, 0
    sw      a0,3016(sp)
    li      a0, 1
    sw      a1,16(sp)
    mul     a1,a0,s9
    add     s10,s10,a1
    slli s10,s10,2
    add     s10,s10,s10
    sd      s9,0(s10)
    j       .L2_0
.L2_0:
    xor     a1,s6,a0
    sltiu   a1,a1,1
    bnez    a1, .branch_true_70
    j       .branch_false_70
.branch_true_70:
    li      a0, 0
    sb      a1,2959(sp)
    li      a1, 1
    sw      a2,40(sp)
    li      a2, 0
    sw      a3,32(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    sd      a2,0(a0)
    sw      s1,3088(sp)
    sw      s2,3068(sp)
    sw      s3,2992(sp)
    sb      s4,3015(sp)
    sb      s5,3014(sp)
    sw      s6,3096(sp)
    sw      s7,2984(sp)
    sw      s8,3008(sp)
    sw      s9,2976(sp)
    sd      s10,2960(sp)
    sw      s11,3000(sp)
    sd      a0,2944(sp)
    mv      a0, a0
    li      a1, 0
    call    mmerge
    j       .branch_false_70
.branch_false_70:
.L3_0:
    la      a0, n
    lw      a1,0(a0)
    mv      s1, s1
    mv      s2, s2
    xor     s3,s1,s2
    sltiu   s3,s3,1
    bnez    s3, .branch_true_75
    j       .branch_false_75
.branch_true_75:
    li      s4, 0
    li      s5, 1
    mv      s6, s6
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,s4
    sd      s6,0(s4)
    sw      s1,3096(sp)
    sw      s2,2940(sp)
    sb      s3,2939(sp)
    sd      s4,2928(sp)
    sw      s6,3028(sp)
    mv      a0, a0
    mv      a1, a1
    call    mmerge
    j       .branch_false_75
.branch_false_75:
.L4_0:
    mv      a0, a0
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
    mv      s6, s6
    li      s7, -1
    xor     s8,s6,s7
    sltiu   s8,s8,1
    xori    s8,s8,1
    la      s9, n
    lw      s10,0(s9)
    mv      s11, s11
    mv      a1, a1
    slt     a2,s11,a1
    and     a3,a2,s8
    bnez    a3, .branch_true_80
    j       .branch_false_80
.branch_true_80:
    li      s2, 1
    add     s3,a0,s2
    sw      s1,2924(sp)
    sw      s3,2444(sp)
    sd      s4,2464(sp)
    sw      s5,2916(sp)
    sw      s6,2456(sp)
    sb      s8,2455(sp)
    sw      s11,3088(sp)
    sw      a0,2976(sp)
    mv      a0, a0
    sw      a1,2451(sp)
    mv      a1, a1
    call    mmerge
    j       .branch_false_80
.branch_false_80:
.L5_0:
    mv      a0, a0
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
    mv      s6, s6
    li      s7, -1
    xor     s8,s6,s7
    sltiu   s8,s8,1
    xori    s8,s8,1
    mv      s9, s9
    slt     s10,a1,s9
    and     s11,s10,s8
    bnez    s11, .branch_true_84
    j       .branch_false_84
.branch_true_84:
    sub     s2,a0,a1
    sw      s1,2436(sp)
    sw      s2,1961(sp)
    sd      s4,1976(sp)
    sw      s5,2428(sp)
    sw      s6,1968(sp)
    sb      s8,1967(sp)
    sw      s9,3088(sp)
    sb      s10,1966(sp)
    sb      s11,1965(sp)
    sw      a0,2976(sp)
    mv      a0, a0
    mv      a1, a1
    call    mmerge
    j       .branch_false_84
.branch_false_84:
.L6_0:
    la      a0, n
    lw      a1,0(a0)
    mv      s1, s1
    mv      s2, s2
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
    mv      s9, s9
    li      s10, -1
    xor     s11,s9,s10
    sltiu   s11,s11,1
    xori    s11,s11,1
    mv      a0, a0
    slt     a1,a0,s2
    and     s4,a1,s11
    bnez    s4, .branch_true_88
    j       .branch_false_88
.branch_true_88:
    la      s5, n
    lw      s7,0(s5)
    mv      s5, s5
    add     s7,s1,s5
    sw      s1,2976(sp)
    sw      s2,1956(sp)
    sw      s3,1948(sp)
    sb      s4,1477(sp)
    sw      s5,1472(sp)
    sd      s6,1488(sp)
    sw      s7,1468(sp)
    sw      s8,1940(sp)
    sw      s9,1480(sp)
    sb      s11,1479(sp)
    sw      a0,3096(sp)
    mv      a0, a0
    sb      a1,1478(sp)
    mv      a1, a1
    call    mmerge
    j       .branch_false_88
.branch_false_88:
.L7_0:
    la      a0, n
    lw      a1,0(a0)
    mv      s1, s1
    mv      s2, s2
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
    mv      s9, s9
    li      s10, -1
    xor     s11,s9,s10
    sltiu   s11,s11,1
    xori    s11,s11,1
    mv      a0, a0
    slt     a1,s7,a0
    and     s4,a1,s11
    bnez    s4, .branch_true_92
    j       .branch_false_92
.branch_true_92:
    la      s5, n
    lw      s7,0(s5)
    mv      s5, s5
    sub     s7,s1,s5
    sw      s1,2976(sp)
    sw      s2,1460(sp)
    sw      s3,1452(sp)
    sb      s4,981(sp)
    sw      s5,976(sp)
    sd      s6,992(sp)
    sw      s7,972(sp)
    sw      s8,1444(sp)
    sw      s9,984(sp)
    sb      s11,983(sp)
    sw      a0,3096(sp)
    mv      a0, a0
    sb      a1,982(sp)
    mv      a1, a1
    call    mmerge
    j       .branch_false_92
.branch_false_92:
.L8_0:
    mv      a0, a0
    call    findfa
    sw      a0,964(sp)
    sw      a0,964(sp)
    li      a0, 0
    call    findfa
    sw      a0,956(sp)
    mv      a1, a1
    xor     s1,a0,a1
    sltiu   s1,s1,1
    la      s2, array
    lw      s3,0(s2)
    li      s4, 0
    li      s5, 1
    mv      s6, s6
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    mv      s8, s8
    li      s9, -1
    xor     s10,s8,s9
    sltiu   s10,s10,1
    xori    s10,s10,1
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
    mv      s3, s3
    li      s5, -1
    sw      a0,956(sp)
    xor     a0,s3,s5
    sltiu   a0,a0,1
    xori    a0,a0,1
    and     s5,a0,s11
    bnez    s5, .branch_true_96
    j       .branch_false_96
.branch_true_96:
    sb      a0,23(sp)
    li      a0, 1
    sw      a1,964(sp)
    mv      a1, a0
    sw      a1,3068(sp)
    add     a1,a7,a0
    mv      a0, a1
    sb      s1,955(sp)
    sd      s2,32(sp)
    sw      s3,24(sp)
    sd      s4,496(sp)
    sb      s5,22(sp)
    sw      s6,3028(sp)
    sw      s7,948(sp)
    sw      s8,488(sp)
    sw      s9,480(sp)
    sb      s10,487(sp)
    sb      s11,486(sp)
    sw      a0,12(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    j       .branch_false_96
.branch_false_96:
.branch_false_65:
.L9_0:
    li      a0, 1
    add     s1,a7,a0
    j       .while.head_60
.while.exit_60:
    mv      s2, s2
    li      s3, 0
    xor     s4,s2,s3
    sltiu   s4,s4,1
    xori    s4,s4,1
    xori    s5,s4,-1
    bnez    s5, .branch_true_104
    j       .branch_false_104
.branch_true_104:
    sw      s1,4(sp)
    sw      s2,3068(sp)
    sb      s4,3(sp)
    sb      s5,2(sp)
    li      a0, -1
    call    putint
    li      a0, 10
    call    putch
    j       .branch_false_104
.branch_false_104:
    j       .while.head_50
.while.exit_50:
    li      a0, 3136
    add     a0,sp,a0
    ld      ra,0(a0)
    li      s1, 3120
    add     s1,sp,s1
    ld      s0,0(s1)
    li      a0, 0
    li      s2, 3144
    li      s2, 3144
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
