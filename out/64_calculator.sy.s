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
    .globl isdigit
    .type isdigit,@function
isdigit:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L30_0:
    li      a1, 57
    slt     a2,a1,a0
    xori    a2,a2,1
    li      a3, 48
    slt     a4,a0,a3
    xori    a4,a4,1
    and     a5,a4,a2
    bnez    a5, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
.branch_false_28:
.L31_0:
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
    .globl power
    .type power,@function
power:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L29_0:
    li      a2, 1
    j       .while.head_36
.while.head_36:
    li      a3, 0
    xor     a4,a1,a3
    snez    a4, a4
    bnez    a4, .while.body_36
    j       .while.exit_36
.while.body_36:
    mul     a3,a2,a0
    mv      a2, a3
    li      a5, 1
    sub     a6,a1,a5
    mv      a1, a6
    sw      a6,0(sp)
    sb      a4,11(sp)
    sw      a3,4(sp)
    j       .while.head_36
.while.exit_36:
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a2,12(sp)
    sw      a0,20(sp)
    lw      a0,12(sp)
    addi    sp,sp,40
    ret
    .globl getstr
    .type getstr,@function
getstr:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L28_0:
    sd      a0,32(sp)
    call    getch
    sw      a0,28(sp)
    mv      a1, a0
    li      a2, 0
    j       .while.head_47
.while.head_47:
    li      a3, 10
    xor     a4,a1,a3
    snez    a4, a4
    li      a5, 13
    xor     a6,a1,a5
    snez    a6, a6
    and     a7,a6,a4
    bnez    a7, .while.body_47
    j       .while.exit_47
.while.body_47:
    li      a3, 0
    li      a5, 1
    mul     s1,a5,a2
    add     a3,a3,s1
    slli a3,a3,2
    ld      s2,32(sp)
    add     a3,a3,s2
    sw      a1,0(a3)
    add     s3,a2,a5
    mv      a2, s3
    sd      s2,32(sp)
    sw      s3,4(sp)
    sw      a0,28(sp)
    sw      a1,24(sp)
    sw      a2,20(sp)
    sd      a3,8(sp)
    sb      a4,19(sp)
    sb      a6,18(sp)
    sb      a7,17(sp)
    call    getch
    sw      a0,0(sp)
    mv      a1, a0
    sw      a0,0(sp)
    lw      a2,20(sp)
    lw      a0,28(sp)
    j       .while.head_47
.while.exit_47:
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a2,20(sp)
    sw      a0,28(sp)
    lw      a0,20(sp)
    addi    sp,sp,56
    ret
    .globl intpush
    .type intpush,@function
intpush:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L27_0:
    la      a1, intt
    lw      a2,0(a1)
    li      a3, 1
    add     a4,a2,a3
    la      a5, intt
    sw      a4,0(a5)
    la      a6, intt
    lw      a7,0(a6)
    li      s1, 0
    mul     s2,a3,a7
    add     s1,s1,s2
    slli s1,s1,2
    la      s3, ints
    add     s1,s1,s3
    sw      a0,0(s1)
    ld      ra,32(sp)
    ld      s0,24(sp)
    addi    sp,sp,40
    ret
    .globl chapush
    .type chapush,@function
chapush:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L26_0:
    la      a1, chat
    lw      a2,0(a1)
    li      a3, 1
    add     a4,a2,a3
    la      a5, chat
    sw      a4,0(a5)
    la      a6, chat
    lw      a7,0(a6)
    li      s1, 0
    mul     s2,a3,a7
    add     s1,s1,s2
    slli s1,s1,2
    la      s3, chas
    add     s1,s1,s3
    sw      a0,0(s1)
    ld      ra,32(sp)
    ld      s0,24(sp)
    addi    sp,sp,40
    ret
    .globl intpop
    .type intpop,@function
intpop:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L25_0:
    la      a0, intt
    lw      a1,0(a0)
    li      a2, 1
    sub     a3,a1,a2
    la      a4, intt
    sw      a3,0(a4)
    la      a5, intt
    lw      a6,0(a5)
    add     a7,a6,a2
    li      s1, 0
    mul     s2,a2,a7
    add     s1,s1,s2
    slli s1,s1,2
    la      s3, ints
    add     s1,s1,s3
    lw      s4,0(s1)
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      s4,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,48
    ret
    .globl chapop
    .type chapop,@function
chapop:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L24_0:
    la      a0, chat
    lw      a1,0(a0)
    li      a2, 1
    sub     a3,a1,a2
    la      a4, chat
    sw      a3,0(a4)
    la      a5, chat
    lw      a6,0(a5)
    add     a7,a6,a2
    li      s1, 0
    mul     s2,a2,a7
    add     s1,s1,s2
    slli s1,s1,2
    la      s3, chas
    add     s1,s1,s3
    lw      s4,0(s1)
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      s4,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,48
    ret
    .globl intadd
    .type intadd,@function
intadd:
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
.L23_0:
    la      a1, intt
    lw      a2,0(a1)
    li      a3, 0
    li      a4, 1
    mul     a5,a4,a2
    add     a3,a3,a5
    slli a3,a3,2
    la      a6, ints
    add     a3,a3,a6
    la      a7, intt
    lw      s1,0(a7)
    li      s2, 0
    mul     s3,a4,s1
    add     s2,s2,s3
    slli s2,s2,2
    la      s4, ints
    add     s2,s2,s4
    lw      s5,0(s2)
    li      s6, 10
    mul     s7,s5,s6
    sw      s7,0(a3)
    la      s8, intt
    lw      s9,0(s8)
    li      s10, 0
    mul     s11,a4,s9
    add     s10,s10,s11
    slli s10,s10,2
    la      a1, ints
    add     s10,s10,a1
    la      a1, intt
    lw      a4,0(a1)
    li      a1, 0
    li      a5, 1
    mul     a6,a5,a4
    add     a1,a1,a6
    slli a1,a1,2
    la      a5, ints
    add     a1,a1,a5
    lw      a5,0(a1)
    add     a6,a5,a0
    sw      a6,0(s10)
    ld      ra,88(sp)
    ld      s0,80(sp)
    addi    sp,sp,96
    ret
    .globl find
    .type find,@function
find:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
.L20_0:
    call    chapop
    sw      a0,52(sp)
    la      a1, c
    sw      a0,0(a1)
    la      a2, ii
    lw      a3,0(a2)
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a3
    add     a4,a4,a6
    slli a4,a4,2
    la      a7, get2
    add     a4,a4,a7
    li      s1, 32
    sw      s1,0(a4)
    la      s2, ii
    lw      s3,0(s2)
    add     s4,s3,a5
    li      s5, 0
    mul     s6,a5,s4
    add     s5,s5,s6
    slli s5,s5,2
    la      s7, get2
    add     s5,s5,s7
    la      s8, c
    lw      s9,0(s8)
    sw      s9,0(s5)
    la      s10, ii
    lw      s11,0(s10)
    li      a1, 2
    add     a2,s11,a1
    la      a1, ii
    sw      a2,0(a1)
    j       .L21_0
.L21_0:
    la      a1, chat
    lw      a5,0(a1)
    li      a6, 0
    xor     a7,a5,a6
    seqz    a7, a7
    bnez    a7, .branch_true_83
    j       .branch_false_83
.branch_true_83:
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a0,52(sp)
    li      a0, 0
    addi    sp,sp,72
    ret
.branch_false_83:
.L22_0:
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a0,52(sp)
    li      a0, 1
    addi    sp,sp,72
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-1000
    sd      ra,992(sp)
    sd      s0,984(sp)
    addi    s0,sp,1000
.L0_0:
    la      a0, intt
    li      a1, 0
    sw      a1,0(a0)
    la      a2, chat
    sw      a1,0(a2)
    la      a0, get
    call    getstr
    sw      a0,980(sp)
    mv      a1, a0
    j       .while.head_92
.while.head_92:
    la      a2, i
    lw      a3,0(a2)
    slt     a4,a3,a1
    bnez    a4, .while.body_92
    j       .while.exit_92
.while.body_92:
    la      a2, i
    lw      a5,0(a2)
    li      a6, 0
    li      a7, 1
    mul     s1,a7,a5
    add     a6,a6,s1
    slli a6,a6,2
    la      s2, get
    add     a6,a6,s2
    lw      s3,0(a6)
    sw      s3,948(sp)
    sw      a0,980(sp)
    sw      a1,976(sp)
    sw      a3,972(sp)
    sb      a4,971(sp)
    sw      a5,964(sp)
    sd      a6,952(sp)
    lw      a0,948(sp)
    call    isdigit
    sw      a0,944(sp)
    li      a1, 1
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_95
    j       .branch_false_95
.branch_true_95:
    la      a1, ii
    lw      a3,0(a1)
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a3
    add     a4,a4,a6
    slli a4,a4,2
    la      a7, get2
    add     a4,a4,a7
    la      s1, i
    lw      s2,0(s1)
    li      s3, 0
    mul     s4,a5,s2
    add     s3,s3,s4
    slli s3,s3,2
    la      s5, get
    add     s3,s3,s5
    lw      s6,0(s3)
    sw      s6,0(a4)
    la      s7, ii
    lw      s8,0(s7)
    add     s9,s8,a5
    la      s10, ii
    sw      s9,0(s10)
    j       .L9_0
.branch_false_95:
    la      a1, i
    lw      a3,0(a1)
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a3
    add     a4,a4,a6
    slli a4,a4,2
    la      a7, get
    add     a4,a4,a7
    lw      s1,0(a4)
    li      s2, 40
    xor     s3,s1,s2
    seqz    s3, s3
    bnez    s3, .branch_true_101
    j       .branch_false_101
.branch_true_101:
    sw      s1,876(sp)
    sb      s3,875(sp)
    sw      a0,944(sp)
    sb      a2,943(sp)
    sw      a3,888(sp)
    sd      a4,880(sp)
    li      a0, 40
    call    chapush
    lw      s1,876(sp)
    lw      a3,888(sp)
    lw      a0,944(sp)
    lb      s3,875(sp)
    ld      a4,880(sp)
    lb      a2,943(sp)
    j       .branch_false_101
.branch_false_101:
.L1_0:
    la      a1, i
    lw      a5,0(a1)
    li      a6, 0
    li      a7, 1
    mul     s2,a7,a5
    add     a6,a6,s2
    slli a6,a6,2
    la      s4, get
    add     a6,a6,s4
    lw      s5,0(a6)
    li      s6, 94
    xor     s7,s5,s6
    seqz    s7, s7
    bnez    s7, .branch_true_104
    j       .branch_false_104
.branch_true_104:
    sw      s1,876(sp)
    sb      s3,875(sp)
    sw      s5,852(sp)
    sb      s7,851(sp)
    sw      a0,944(sp)
    sb      a2,943(sp)
    sw      a3,888(sp)
    sd      a4,880(sp)
    sw      a5,868(sp)
    sd      a6,856(sp)
    li      a0, 94
    call    chapush
    lw      s1,876(sp)
    lw      s5,852(sp)
    lw      a3,888(sp)
    lw      a5,868(sp)
    lw      a0,944(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lb      a2,943(sp)
    j       .branch_false_104
.branch_false_104:
.L2_0:
    la      a1, i
    lw      a7,0(a1)
    li      s2, 0
    li      s4, 1
    mul     s6,s4,a7
    add     s2,s2,s6
    slli s2,s2,2
    la      s8, get
    add     s2,s2,s8
    lw      s9,0(s2)
    li      s10, 41
    xor     s11,s9,s10
    seqz    s11, s11
    bnez    s11, .branch_true_107
    j       .branch_false_107
.branch_true_107:
    sw      s1,876(sp)
    sd      s2,832(sp)
    sb      s3,875(sp)
    sw      s5,852(sp)
    sb      s7,851(sp)
    sw      s9,828(sp)
    sb      s11,827(sp)
    sw      a0,944(sp)
    sb      a2,943(sp)
    sw      a3,888(sp)
    sd      a4,880(sp)
    sw      a5,868(sp)
    sd      a6,856(sp)
    sw      a7,844(sp)
    call    chapop
    sw      a0,820(sp)
    la      a1, c
    sw      a0,0(a1)
    j       .while.head_111
.while.head_111:
    la      a1, c
    lw      a2,0(a1)
    li      a3, 40
    xor     a4,a2,a3
    snez    a4, a4
    bnez    a4, .while.body_111
    sw      a0,820(sp)
    sb      a4,815(sp)
    sw      a2,816(sp)
    lw      s1,876(sp)
    lw      s5,852(sp)
    lw      a3,888(sp)
    lw      a5,868(sp)
    lw      a0,944(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    lb      a2,943(sp)
    j       .branch_false_107
.while.body_111:
    la      a1, ii
    lw      a3,0(a1)
    li      a5, 0
    li      a6, 1
    mul     a7,a6,a3
    add     a5,a5,a7
    slli a5,a5,2
    la      s1, get2
    add     a5,a5,s1
    li      s2, 32
    sw      s2,0(a5)
    la      s3, ii
    lw      s4,0(s3)
    add     s5,s4,a6
    li      s6, 0
    mul     s7,a6,s5
    add     s6,s6,s7
    slli s6,s6,2
    la      s8, get2
    add     s6,s6,s8
    la      s9, c
    lw      s10,0(s9)
    sw      s10,0(s6)
    la      s11, ii
    lw      a1,0(s11)
    li      a6, 2
    add     a7,a1,a6
    la      a6, ii
    sw      a7,0(a6)
    sw      s4,796(sp)
    sw      s5,792(sp)
    sd      s6,784(sp)
    sw      s10,780(sp)
    sw      a0,820(sp)
    sw      a1,776(sp)
    sw      a2,816(sp)
    sw      a3,808(sp)
    sb      a4,815(sp)
    sd      a5,800(sp)
    sw      a7,772(sp)
    call    chapop
    sw      a0,768(sp)
    la      a1, c
    sw      a0,0(a1)
    sw      a0,768(sp)
    lw      a0,820(sp)
    j       .while.head_111
.branch_false_107:
.L3_0:
    la      a1, i
    lw      s4,0(a1)
    li      s6, 0
    li      s8, 1
    mul     s10,s8,s4
    add     s6,s6,s10
    slli s6,s6,2
    la      a1, get
    add     s6,s6,a1
    lw      a1,0(s6)
    li      s8, 43
    xor     s10,a1,s8
    seqz    s10, s10
    bnez    s10, .branch_true_118
    j       .branch_false_118
.branch_true_118:
    la      s8, chat
    sw      a0,944(sp)
    lw      a0,0(s8)
    li      s8, 0
    sw      a0,740(sp)
    li      a0, 1
    sw      a1,748(sp)
    lw      a1,740(sp)
    sb      a2,943(sp)
    mul     a2,a0,a1
    add     s8,s8,a2
    slli s8,s8,2
    la      a0, chas
    add     s8,s8,a0
    lw      a0,0(s8)
    li      a2, 94
    sw      a1,740(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    li      a2, 37
    sb      a1,723(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    lb      a2,723(sp)
    sw      a0,724(sp)
    or      a0,a1,a2
    sb      a0,721(sp)
    lw      a0,724(sp)
    sb      a1,722(sp)
    li      a1, 47
    sb      a2,723(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,721(sp)
    sw      a0,724(sp)
    or      a0,a2,a1
    sb      a0,719(sp)
    lw      a0,724(sp)
    sb      a1,721(sp)
    li      a1, 42
    sb      a2,720(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,719(sp)
    sw      a0,724(sp)
    or      a0,a2,a1
    sb      a0,717(sp)
    lw      a0,724(sp)
    sb      a1,719(sp)
    li      a1, 45
    sb      a2,718(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,717(sp)
    sw      a0,724(sp)
    or      a0,a2,a1
    sb      a0,715(sp)
    lw      a0,724(sp)
    sb      a1,717(sp)
    li      a1, 43
    sb      a2,716(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,715(sp)
    sw      a0,724(sp)
    or      a0,a2,a1
    sw      s1,876(sp)
    bnez    a0, .while.body_121
    j       .while.exit_121
.while.body_121:
    sd      s2,832(sp)
    sb      s3,875(sp)
    sw      s4,764(sp)
    sw      s5,852(sp)
    sd      s6,752(sp)
    sb      s7,851(sp)
    sd      s8,728(sp)
    sw      s9,828(sp)
    sb      s10,747(sp)
    sb      s11,827(sp)
    sb      a0,713(sp)
    sb      a1,715(sp)
    sb      a2,714(sp)
    sw      a3,888(sp)
    sd      a4,880(sp)
    sw      a5,868(sp)
    sd      a6,856(sp)
    sw      a7,844(sp)
    call    find
    sw      a0,708(sp)
    li      a1, 0
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_124
    j       .branch_false_124
.branch_true_124:
    sw      a0,708(sp)
    sb      a2,707(sp)
    lw      s5,852(sp)
    lw      a3,888(sp)
    ld      s8,728(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,715(sp)
    lb      a0,713(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    lb      a2,714(sp)
    j       .while.exit_121
.while.exit_121:
    sd      s2,832(sp)
    sb      s3,875(sp)
    sw      s4,764(sp)
    sw      s5,852(sp)
    sd      s6,752(sp)
    sb      s7,851(sp)
    sd      s8,728(sp)
    sw      s9,828(sp)
    sb      s10,747(sp)
    sb      s11,827(sp)
    sb      a0,713(sp)
    sb      a1,715(sp)
    sb      a2,714(sp)
    sw      a3,888(sp)
    sd      a4,880(sp)
    sw      a5,868(sp)
    sd      a6,856(sp)
    sw      a7,844(sp)
    li      a0, 43
    call    chapush
    lw      s1,876(sp)
    lw      s5,852(sp)
    lw      a3,888(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lw      a1,748(sp)
    lw      a0,944(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    lb      a2,943(sp)
    j       .branch_false_118
.branch_false_124:
    sw      a0,708(sp)
    sb      a2,707(sp)
    lw      s1,876(sp)
    lw      s5,852(sp)
    lw      a3,888(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lw      a1,748(sp)
    lw      a0,944(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    lb      a2,943(sp)
    j       .branch_true_118
.branch_false_118:
.L4_0:
    la      s8, i
    sw      a0,944(sp)
    lw      a0,0(s8)
    li      s8, 0
    sw      a0,700(sp)
    li      a0, 1
    sw      a1,748(sp)
    lw      a1,700(sp)
    sb      a2,943(sp)
    mul     a2,a0,a1
    add     s8,s8,a2
    slli s8,s8,2
    la      a0, get
    add     s8,s8,a0
    lw      a0,0(s8)
    li      a2, 45
    sw      a1,700(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_128
    j       .branch_false_128
.branch_true_128:
    la      a2, chat
    sw      a0,684(sp)
    lw      a0,0(a2)
    li      a2, 0
    sw      a0,676(sp)
    li      a0, 1
    sb      a1,683(sp)
    lw      a1,676(sp)
    sw      a3,888(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    la      a0, chas
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a3, 94
    sw      a1,676(sp)
    xor     a1,a0,a3
    seqz    a1, a1
    li      a3, 37
    sb      a1,659(sp)
    xor     a1,a0,a3
    seqz    a1, a1
    lb      a3,659(sp)
    sw      a0,660(sp)
    or      a0,a1,a3
    sb      a0,657(sp)
    lw      a0,660(sp)
    sb      a1,658(sp)
    li      a1, 47
    sd      a2,664(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,657(sp)
    sw      a0,660(sp)
    or      a0,a2,a1
    sb      a0,655(sp)
    lw      a0,660(sp)
    sb      a1,657(sp)
    li      a1, 42
    sb      a2,656(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,655(sp)
    sw      a0,660(sp)
    or      a0,a2,a1
    sb      a0,653(sp)
    lw      a0,660(sp)
    sb      a1,655(sp)
    li      a1, 45
    sb      a2,654(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,653(sp)
    sw      a0,660(sp)
    or      a0,a2,a1
    sb      a0,651(sp)
    lw      a0,660(sp)
    sb      a1,653(sp)
    li      a1, 43
    sb      a2,652(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,651(sp)
    sw      a0,660(sp)
    or      a0,a2,a1
    sw      s1,876(sp)
    bnez    a0, .while.body_131
    j       .while.exit_131
.while.body_131:
    sd      s2,832(sp)
    sb      s3,875(sp)
    sw      s4,764(sp)
    sw      s5,852(sp)
    sd      s6,752(sp)
    sb      s7,851(sp)
    sd      s8,688(sp)
    sw      s9,828(sp)
    sb      s10,747(sp)
    sb      s11,827(sp)
    sb      a0,649(sp)
    sb      a1,651(sp)
    sb      a2,650(sp)
    sb      a3,659(sp)
    sd      a4,880(sp)
    sw      a5,868(sp)
    sd      a6,856(sp)
    sw      a7,844(sp)
    call    find
    sw      a0,644(sp)
    li      a1, 0
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_134
    j       .branch_false_134
.branch_true_134:
    sw      a0,644(sp)
    sb      a2,643(sp)
    lw      s5,852(sp)
    lb      a3,659(sp)
    ld      s8,688(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,651(sp)
    lb      a0,649(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    lb      a2,650(sp)
    j       .while.exit_131
.while.exit_131:
    sd      s2,832(sp)
    sb      s3,875(sp)
    sw      s4,764(sp)
    sw      s5,852(sp)
    sd      s6,752(sp)
    sb      s7,851(sp)
    sd      s8,688(sp)
    sw      s9,828(sp)
    sb      s10,747(sp)
    sb      s11,827(sp)
    sb      a0,649(sp)
    sb      a1,651(sp)
    sb      a2,650(sp)
    sb      a3,659(sp)
    sd      a4,880(sp)
    sw      a5,868(sp)
    sd      a6,856(sp)
    sw      a7,844(sp)
    li      a0, 45
    call    chapush
    lw      s1,876(sp)
    lw      s5,852(sp)
    lw      a3,888(sp)
    ld      s8,688(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,683(sp)
    lw      a0,684(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    j       .branch_false_128
.branch_false_134:
    sw      a0,644(sp)
    sb      a2,643(sp)
    lw      s1,876(sp)
    lw      s5,852(sp)
    lw      a3,888(sp)
    ld      s8,688(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,683(sp)
    lw      a0,684(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    j       .branch_true_128
.branch_false_128:
.L5_0:
    la      a2, i
    sw      a0,684(sp)
    lw      a0,0(a2)
    li      a2, 0
    sw      a0,636(sp)
    li      a0, 1
    sb      a1,683(sp)
    lw      a1,636(sp)
    sw      a3,888(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    la      a0, get
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a3, 42
    sw      a1,636(sp)
    xor     a1,a0,a3
    seqz    a1, a1
    bnez    a1, .branch_true_138
    j       .branch_false_138
.branch_true_138:
    la      a3, chat
    sw      a0,620(sp)
    lw      a0,0(a3)
    li      a3, 0
    sw      a0,612(sp)
    li      a0, 1
    sb      a1,619(sp)
    lw      a1,612(sp)
    sd      a2,624(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    la      a0, chas
    add     a3,a3,a0
    lw      a0,0(a3)
    li      a2, 94
    sw      a1,612(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    li      a2, 37
    sb      a1,595(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    lb      a2,595(sp)
    sw      a0,596(sp)
    or      a0,a1,a2
    sb      a0,593(sp)
    lw      a0,596(sp)
    sb      a1,594(sp)
    li      a1, 47
    sb      a2,595(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,593(sp)
    sw      a0,596(sp)
    or      a0,a2,a1
    sb      a0,591(sp)
    lw      a0,596(sp)
    sb      a1,593(sp)
    li      a1, 42
    sb      a2,592(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,591(sp)
    sw      a0,596(sp)
    or      a0,a2,a1
    sw      s1,876(sp)
    bnez    a0, .while.body_141
    j       .while.exit_141
.while.body_141:
    sd      s2,832(sp)
    sb      s3,875(sp)
    sw      s4,764(sp)
    sw      s5,852(sp)
    sd      s6,752(sp)
    sb      s7,851(sp)
    sd      s8,688(sp)
    sw      s9,828(sp)
    sb      s10,747(sp)
    sb      s11,827(sp)
    sb      a0,589(sp)
    sb      a1,591(sp)
    sb      a2,590(sp)
    sd      a3,600(sp)
    sd      a4,880(sp)
    sw      a5,868(sp)
    sd      a6,856(sp)
    sw      a7,844(sp)
    call    find
    sw      a0,584(sp)
    li      a1, 0
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_144
    j       .branch_false_144
.branch_true_144:
    sw      a0,584(sp)
    sb      a2,583(sp)
    lw      s5,852(sp)
    ld      a3,600(sp)
    ld      s8,688(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,591(sp)
    lb      a0,589(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    lb      a2,590(sp)
    j       .while.exit_141
.while.exit_141:
    sd      s2,832(sp)
    sb      s3,875(sp)
    sw      s4,764(sp)
    sw      s5,852(sp)
    sd      s6,752(sp)
    sb      s7,851(sp)
    sd      s8,688(sp)
    sw      s9,828(sp)
    sb      s10,747(sp)
    sb      s11,827(sp)
    sb      a0,589(sp)
    sb      a1,591(sp)
    sb      a2,590(sp)
    sd      a3,600(sp)
    sd      a4,880(sp)
    sw      a5,868(sp)
    sd      a6,856(sp)
    sw      a7,844(sp)
    li      a0, 42
    call    chapush
    lw      s1,876(sp)
    lw      s5,852(sp)
    ld      s8,688(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,619(sp)
    lw      a0,620(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    ld      a2,624(sp)
    j       .branch_false_138
.branch_false_144:
    sw      a0,584(sp)
    sb      a2,583(sp)
    lw      s1,876(sp)
    lw      s5,852(sp)
    ld      s8,688(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,619(sp)
    lw      a0,620(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    ld      a2,624(sp)
    j       .branch_true_138
.branch_false_138:
.L6_0:
    la      a3, i
    sw      a0,620(sp)
    lw      a0,0(a3)
    li      a3, 0
    sw      a0,576(sp)
    li      a0, 1
    sb      a1,619(sp)
    lw      a1,576(sp)
    sd      a2,624(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    la      a0, get
    add     a3,a3,a0
    lw      a0,0(a3)
    li      a2, 47
    sw      a1,576(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_148
    j       .branch_false_148
.branch_true_148:
    la      a2, chat
    sw      a0,564(sp)
    lw      a0,0(a2)
    li      a2, 0
    sw      a0,556(sp)
    li      a0, 1
    sb      a1,563(sp)
    lw      a1,556(sp)
    sd      a3,568(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    la      a0, chas
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a3, 94
    sw      a1,556(sp)
    xor     a1,a0,a3
    seqz    a1, a1
    li      a3, 37
    sb      a1,539(sp)
    xor     a1,a0,a3
    seqz    a1, a1
    lb      a3,539(sp)
    sw      a0,540(sp)
    or      a0,a1,a3
    sb      a0,537(sp)
    lw      a0,540(sp)
    sb      a1,538(sp)
    li      a1, 47
    sd      a2,544(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,537(sp)
    sw      a0,540(sp)
    or      a0,a2,a1
    sb      a0,535(sp)
    lw      a0,540(sp)
    sb      a1,537(sp)
    li      a1, 42
    sb      a2,536(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,535(sp)
    sw      a0,540(sp)
    or      a0,a2,a1
    sw      s1,876(sp)
    bnez    a0, .while.body_151
    j       .while.exit_151
.while.body_151:
    sd      s2,832(sp)
    sb      s3,875(sp)
    sw      s4,764(sp)
    sw      s5,852(sp)
    sd      s6,752(sp)
    sb      s7,851(sp)
    sd      s8,688(sp)
    sw      s9,828(sp)
    sb      s10,747(sp)
    sb      s11,827(sp)
    sb      a0,533(sp)
    sb      a1,535(sp)
    sb      a2,534(sp)
    sb      a3,539(sp)
    sd      a4,880(sp)
    sw      a5,868(sp)
    sd      a6,856(sp)
    sw      a7,844(sp)
    call    find
    sw      a0,528(sp)
    li      a1, 0
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_154
    j       .branch_false_154
.branch_true_154:
    sw      a0,528(sp)
    sb      a2,527(sp)
    lw      s5,852(sp)
    lb      a3,539(sp)
    ld      s8,688(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,535(sp)
    lb      a0,533(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    lb      a2,534(sp)
    j       .while.exit_151
.while.exit_151:
    sd      s2,832(sp)
    sb      s3,875(sp)
    sw      s4,764(sp)
    sw      s5,852(sp)
    sd      s6,752(sp)
    sb      s7,851(sp)
    sd      s8,688(sp)
    sw      s9,828(sp)
    sb      s10,747(sp)
    sb      s11,827(sp)
    sb      a0,533(sp)
    sb      a1,535(sp)
    sb      a2,534(sp)
    sb      a3,539(sp)
    sd      a4,880(sp)
    sw      a5,868(sp)
    sd      a6,856(sp)
    sw      a7,844(sp)
    li      a0, 47
    call    chapush
    lw      s1,876(sp)
    lw      s5,852(sp)
    ld      a3,568(sp)
    ld      s8,688(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,563(sp)
    lw      a0,564(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    j       .branch_false_148
.branch_false_154:
    sw      a0,528(sp)
    sb      a2,527(sp)
    lw      s1,876(sp)
    lw      s5,852(sp)
    ld      a3,568(sp)
    ld      s8,688(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,563(sp)
    lw      a0,564(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    j       .branch_true_148
.branch_false_148:
.L7_0:
    la      a2, i
    sw      a0,564(sp)
    lw      a0,0(a2)
    li      a2, 0
    sw      a0,520(sp)
    li      a0, 1
    sb      a1,563(sp)
    lw      a1,520(sp)
    sd      a3,568(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    la      a0, get
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a3, 37
    sw      a1,520(sp)
    xor     a1,a0,a3
    seqz    a1, a1
    bnez    a1, .branch_true_158
    j       .branch_false_158
.branch_true_158:
    la      a3, chat
    sw      a0,508(sp)
    lw      a0,0(a3)
    li      a3, 0
    sw      a0,500(sp)
    li      a0, 1
    sb      a1,507(sp)
    lw      a1,500(sp)
    sd      a2,512(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    la      a0, chas
    add     a3,a3,a0
    lw      a0,0(a3)
    li      a2, 94
    sw      a1,500(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    li      a2, 37
    sb      a1,483(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    lb      a2,483(sp)
    sw      a0,484(sp)
    or      a0,a1,a2
    sb      a0,481(sp)
    lw      a0,484(sp)
    sb      a1,482(sp)
    li      a1, 47
    sb      a2,483(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,481(sp)
    sw      a0,484(sp)
    or      a0,a2,a1
    sb      a0,479(sp)
    lw      a0,484(sp)
    sb      a1,481(sp)
    li      a1, 42
    sb      a2,480(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    lb      a1,479(sp)
    sw      a0,484(sp)
    or      a0,a2,a1
    sw      s1,876(sp)
    bnez    a0, .while.body_161
    j       .while.exit_161
.while.body_161:
    sd      s2,832(sp)
    sb      s3,875(sp)
    sw      s4,764(sp)
    sw      s5,852(sp)
    sd      s6,752(sp)
    sb      s7,851(sp)
    sd      s8,688(sp)
    sw      s9,828(sp)
    sb      s10,747(sp)
    sb      s11,827(sp)
    sb      a0,477(sp)
    sb      a1,479(sp)
    sb      a2,478(sp)
    sd      a3,488(sp)
    sd      a4,880(sp)
    sw      a5,868(sp)
    sd      a6,856(sp)
    sw      a7,844(sp)
    call    find
    sw      a0,472(sp)
    li      a1, 0
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_164
    j       .branch_false_164
.branch_true_164:
    sw      a0,472(sp)
    sb      a2,471(sp)
    lw      s5,852(sp)
    ld      a3,488(sp)
    ld      s8,688(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,479(sp)
    lb      a0,477(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    lb      a2,478(sp)
    j       .while.exit_161
.while.exit_161:
    sd      s2,832(sp)
    sb      s3,875(sp)
    sw      s4,764(sp)
    sw      s5,852(sp)
    sd      s6,752(sp)
    sb      s7,851(sp)
    sd      s8,688(sp)
    sw      s9,828(sp)
    sb      s10,747(sp)
    sb      s11,827(sp)
    sb      a0,477(sp)
    sb      a1,479(sp)
    sb      a2,478(sp)
    sd      a3,488(sp)
    sd      a4,880(sp)
    sw      a5,868(sp)
    sd      a6,856(sp)
    sw      a7,844(sp)
    li      a0, 37
    call    chapush
    lw      s1,876(sp)
    lw      s5,852(sp)
    ld      s8,688(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,507(sp)
    lw      a0,508(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    ld      a2,512(sp)
    j       .branch_false_158
.branch_false_164:
    sw      a0,472(sp)
    sb      a2,471(sp)
    lw      s1,876(sp)
    lw      s5,852(sp)
    ld      s8,688(sp)
    lw      a5,868(sp)
    lw      s4,764(sp)
    lb      s10,747(sp)
    ld      s6,752(sp)
    lb      a1,507(sp)
    lw      a0,508(sp)
    lb      s3,875(sp)
    ld      a6,856(sp)
    lb      s11,827(sp)
    lw      a7,844(sp)
    ld      s2,832(sp)
    lb      s7,851(sp)
    ld      a4,880(sp)
    lw      s9,828(sp)
    ld      a2,512(sp)
    j       .branch_true_158
.branch_false_158:
.L8_0:
    la      a3, ii
    sw      a0,508(sp)
    lw      a0,0(a3)
    li      a3, 0
    sw      a0,464(sp)
    li      a0, 1
    sb      a1,507(sp)
    lw      a1,464(sp)
    sd      a2,512(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    la      a0, get2
    add     a3,a3,a0
    li      a0, 32
    sw      a0,0(a3)
    la      a0, ii
    lw      a2,0(a0)
    li      a0, 1
    sw      a1,464(sp)
    add     a1,a2,a0
    la      a0, ii
    sw      a1,0(a0)
    sw      s1,876(sp)
    sw      s5,852(sp)
    sd      a3,456(sp)
    sd      s8,688(sp)
    sw      a5,868(sp)
    sw      s4,764(sp)
    sb      s10,747(sp)
    sd      s6,752(sp)
    sw      a1,448(sp)
    sb      s3,875(sp)
    sd      a6,856(sp)
    sb      s11,827(sp)
    sw      a7,844(sp)
    sd      s2,832(sp)
    sb      s7,851(sp)
    sd      a4,880(sp)
    sw      s9,828(sp)
    sw      a2,452(sp)
    lw      a3,936(sp)
    lw      s8,904(sp)
    lw      s6,908(sp)
    lw      a0,944(sp)
    ld      s3,912(sp)
    lw      s2,924(sp)
    ld      a4,928(sp)
    lw      s9,900(sp)
    lb      a2,943(sp)
    j       .L9_0
.L9_0:
.L10_0:
    la      a1, i
    lw      a5,0(a1)
    li      a6, 1
    add     a7,a5,a6
    la      s1, i
    sw      a7,0(s1)
    sw      a3,936(sp)
    sw      s8,904(sp)
    sw      a5,896(sp)
    sw      s6,908(sp)
    sw      a0,944(sp)
    sd      s3,912(sp)
    sw      a7,892(sp)
    sw      s2,924(sp)
    sd      a4,928(sp)
    sw      s9,900(sp)
    sb      a2,943(sp)
    lw      a1,976(sp)
    lw      a0,980(sp)
    j       .while.head_92
.while.exit_92:
    la      a2, chat
    lw      a5,0(a2)
    li      a6, 0
    slt     a7,a6,a5
    bnez    a7, .while.body_171
    j       .while.exit_171
.while.body_171:
    sw      a0,980(sp)
    sw      a1,976(sp)
    sw      a3,972(sp)
    sb      a4,971(sp)
    sw      a5,444(sp)
    sb      a7,443(sp)
    call    chapop
    sw      a0,436(sp)
    mv      a1, a0
    la      a2, ii
    lw      a3,0(a2)
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a3
    add     a4,a4,a6
    slli a4,a4,2
    la      a7, get2
    add     a4,a4,a7
    li      s1, 32
    sw      s1,0(a4)
    la      s2, ii
    lw      s3,0(s2)
    add     s4,s3,a5
    li      s5, 0
    mul     s6,a5,s4
    add     s5,s5,s6
    slli s5,s5,2
    la      s7, get2
    add     s5,s5,s7
    sw      a1,0(s5)
    la      s8, ii
    lw      s9,0(s8)
    li      s10, 2
    add     s11,s9,s10
    la      a2, ii
    sw      s11,0(a2)
    sd      s5,400(sp)
    sw      a3,428(sp)
    sw      s4,408(sp)
    sw      a1,432(sp)
    sw      a0,436(sp)
    sw      s3,412(sp)
    sw      s11,392(sp)
    sd      a4,416(sp)
    sw      s9,396(sp)
    lw      a3,972(sp)
    lw      a1,976(sp)
    lw      a0,980(sp)
    lb      a4,971(sp)
    j       .while.exit_92
.while.exit_171:
    la      a2, ii
    lw      a6,0(a2)
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a6
    add     s1,s1,s3
    slli s1,s1,2
    la      s4, get2
    add     s1,s1,s4
    li      s5, 64
    sw      s5,0(s1)
    la      s6, i
    sw      s2,0(s6)
    j       .while.head_180
.while.head_180:
    la      a2, i
    lw      s2,0(a2)
    li      s3, 0
    li      s4, 1
    mul     s5,s4,s2
    add     s3,s3,s5
    slli s3,s3,2
    la      s6, get2
    add     s3,s3,s6
    lw      s7,0(s3)
    li      s8, 64
    xor     s9,s7,s8
    snez    s9, s9
    bnez    s9, .while.body_180
    j       .while.exit_180
.while.body_180:
    la      a2, i
    lw      s4,0(a2)
    li      s5, 0
    li      s6, 1
    mul     s8,s6,s4
    add     s5,s5,s8
    slli s5,s5,2
    la      s10, get2
    add     s5,s5,s10
    lw      s11,0(s5)
    li      a2, 94
    xor     s6,s11,a2
    seqz    s6, s6
    li      a2, 37
    xor     s8,s11,a2
    seqz    s8, s8
    or      a2,s8,s6
    li      s10, 47
    sw      a0,980(sp)
    xor     a0,s11,s10
    seqz    a0, a0
    or      s10,a0,a2
    sb      a0,328(sp)
    li      a0, 42
    sw      a1,976(sp)
    xor     a1,s11,a0
    seqz    a1, a1
    or      a0,a1,s10
    sb      a0,325(sp)
    li      a0, 45
    sb      a1,326(sp)
    xor     a1,s11,a0
    seqz    a1, a1
    lb      a0,325(sp)
    sb      a2,329(sp)
    or      a2,a1,a0
    sb      a0,325(sp)
    li      a0, 43
    sb      a1,324(sp)
    xor     a1,s11,a0
    seqz    a1, a1
    or      a0,a1,a2
    sd      s1,376(sp)
    bnez    a0, .branch_true_183
    j       .branch_false_183
.branch_true_183:
    sw      s2,372(sp)
    sd      s3,360(sp)
    sw      s4,348(sp)
    sd      s5,336(sp)
    sb      s6,331(sp)
    sw      s7,356(sp)
    sb      s8,330(sp)
    sb      s9,355(sp)
    sb      s10,327(sp)
    sw      s11,332(sp)
    sb      a0,321(sp)
    sb      a1,322(sp)
    sb      a2,323(sp)
    sw      a3,972(sp)
    sb      a4,971(sp)
    sw      a5,444(sp)
    sw      a6,388(sp)
    sb      a7,443(sp)
    call    intpop
    sw      a0,316(sp)
    mv      a1, a0
    sw      a0,316(sp)
    sw      a1,312(sp)
    call    intpop
    sw      a0,308(sp)
    mv      a1, a0
    j       .L11_0
.L11_0:
    la      a2, i
    lw      a3,0(a2)
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a3
    add     a4,a4,a6
    slli a4,a4,2
    la      a7, get2
    add     a4,a4,a7
    lw      s1,0(a4)
    li      s2, 43
    xor     s3,s1,s2
    seqz    s3, s3
    bnez    s3, .branch_true_189
    j       .branch_false_189
.branch_true_189:
    lw      a2,312(sp)
    add     a5,a2,a1
    mv      a6, a5
    sw      a5,276(sp)
    sw      a6,300(sp)
    sw      a2,312(sp)
    j       .branch_false_189
.branch_false_189:
.L12_0:
    la      a2, i
    lw      a5,0(a2)
    li      a6, 0
    li      a7, 1
    mul     s2,a7,a5
    add     a6,a6,s2
    slli a6,a6,2
    la      s4, get2
    add     a6,a6,s4
    lw      s5,0(a6)
    li      s6, 45
    xor     s7,s5,s6
    seqz    s7, s7
    bnez    s7, .branch_true_192
    j       .branch_false_192
.branch_true_192:
    lw      a2,312(sp)
    sub     a7,a1,a2
    mv      s2, a7
    sw      a7,252(sp)
    sw      s2,300(sp)
    sw      a2,312(sp)
    j       .branch_false_192
.branch_false_192:
.L13_0:
    la      a2, i
    lw      a7,0(a2)
    li      s2, 0
    li      s4, 1
    mul     s6,s4,a7
    add     s2,s2,s6
    slli s2,s2,2
    la      s8, get2
    add     s2,s2,s8
    lw      s9,0(s2)
    li      s10, 42
    xor     s11,s9,s10
    seqz    s11, s11
    bnez    s11, .branch_true_195
    j       .branch_false_195
.branch_true_195:
    lw      a2,312(sp)
    mul     s4,a2,a1
    mv      s6, s4
    sw      s4,228(sp)
    sw      s6,300(sp)
    sw      a2,312(sp)
    j       .branch_false_195
.branch_false_195:
.L14_0:
    la      a2, i
    lw      s4,0(a2)
    li      s6, 0
    li      s8, 1
    mul     s10,s8,s4
    add     s6,s6,s10
    slli s6,s6,2
    la      a2, get2
    add     s6,s6,a2
    lw      a2,0(s6)
    li      s8, 47
    xor     s10,a2,s8
    seqz    s10, s10
    bnez    s10, .branch_true_198
    j       .branch_false_198
.branch_true_198:
    lw      s8,312(sp)
    sw      a0,308(sp)
    div     a0,a1,s8
    sw      a1,304(sp)
    mv      a1, a0
    sw      s8,312(sp)
    sw      a1,300(sp)
    sw      a0,204(sp)
    lw      a1,304(sp)
    lw      a0,308(sp)
    j       .branch_false_198
.branch_false_198:
.L15_0:
    la      s8, i
    sw      a0,308(sp)
    lw      a0,0(s8)
    li      s8, 0
    sw      a0,200(sp)
    li      a0, 1
    sw      a1,304(sp)
    lw      a1,200(sp)
    sw      a2,212(sp)
    mul     a2,a0,a1
    add     s8,s8,a2
    slli s8,s8,2
    la      a0, get2
    add     s8,s8,a0
    lw      a0,0(s8)
    li      a2, 37
    sw      a1,200(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_201
    j       .branch_false_201
.branch_true_201:
    lw      a2,304(sp)
    sw      a0,188(sp)
    lw      a0,312(sp)
    sb      a1,187(sp)
    rem     a1,a2,a0
    sw      a0,312(sp)
    mv      a0, a1
    sw      a1,180(sp)
    sw      a0,300(sp)
    sw      a2,304(sp)
    lb      a1,187(sp)
    lw      a0,188(sp)
    j       .branch_false_201
.branch_false_201:
.L16_0:
    la      a2, i
    sw      a0,188(sp)
    lw      a0,0(a2)
    li      a2, 0
    sw      a0,176(sp)
    li      a0, 1
    sb      a1,187(sp)
    lw      a1,176(sp)
    sw      a3,296(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    la      a0, get2
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a3, 94
    sw      a1,176(sp)
    xor     a1,a0,a3
    seqz    a1, a1
    bnez    a1, .branch_true_204
    j       .branch_false_204
.branch_true_204:
    sw      s1,284(sp)
    sd      s2,240(sp)
    sb      s3,283(sp)
    sw      s4,224(sp)
    sw      s5,260(sp)
    sd      s6,216(sp)
    sb      s7,259(sp)
    sd      s8,192(sp)
    sw      s9,236(sp)
    sb      s10,211(sp)
    sb      s11,235(sp)
    sw      a0,164(sp)
    sb      a1,163(sp)
    sd      a2,168(sp)
    sd      a4,288(sp)
    sw      a5,272(sp)
    sd      a6,264(sp)
    sw      a7,248(sp)
    lw      a0,304(sp)
    lw      a1,312(sp)
    call    power
    sw      a0,156(sp)
    mv      a1, a0
    sw      a1,300(sp)
    sw      a0,156(sp)
    lw      s1,284(sp)
    lw      s5,260(sp)
    ld      s8,192(sp)
    lw      a5,272(sp)
    lw      s4,224(sp)
    lb      s10,211(sp)
    ld      s6,216(sp)
    lb      a1,163(sp)
    lw      a0,164(sp)
    lb      s3,283(sp)
    ld      a6,264(sp)
    lb      s11,235(sp)
    lw      a7,248(sp)
    ld      s2,240(sp)
    lb      s7,259(sp)
    ld      a4,288(sp)
    lw      s9,236(sp)
    ld      a2,168(sp)
    j       .branch_false_204
.branch_false_204:
.L17_0:
    sw      s1,284(sp)
    sd      s2,240(sp)
    sb      s3,283(sp)
    sw      s4,224(sp)
    sw      s5,260(sp)
    sd      s6,216(sp)
    sb      s7,259(sp)
    sd      s8,192(sp)
    sw      s9,236(sp)
    sb      s10,211(sp)
    sb      s11,235(sp)
    sw      a0,164(sp)
    sb      a1,163(sp)
    sd      a2,168(sp)
    sd      a4,288(sp)
    sw      a5,272(sp)
    sd      a6,264(sp)
    sw      a7,248(sp)
    lw      a0,300(sp)
    call    intpush
    j       .L18_0
.branch_false_183:
    la      s1, i
    sb      a0,321(sp)
    lw      a0,0(s1)
    li      s1, 0
    sw      a0,144(sp)
    li      a0, 1
    sb      a1,322(sp)
    lw      a1,144(sp)
    sb      a2,323(sp)
    mul     a2,a0,a1
    add     s1,s1,a2
    slli s1,s1,2
    la      a0, get2
    add     s1,s1,a0
    lw      a0,0(s1)
    li      a2, 32
    sw      a1,144(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_209
    j       .branch_false_209
.branch_true_209:
    la      a2, i
    sw      a0,132(sp)
    lw      a0,0(a2)
    li      a2, 0
    sw      a0,124(sp)
    li      a0, 1
    sb      a1,131(sp)
    lw      a1,124(sp)
    sw      a3,972(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    la      a0, get2
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a3, 48
    sw      a1,124(sp)
    sub     a1,a0,a3
    sd      s1,136(sp)
    sw      s2,372(sp)
    sd      s3,360(sp)
    sw      s4,348(sp)
    sd      s5,336(sp)
    sb      s6,331(sp)
    sw      s7,356(sp)
    sb      s8,330(sp)
    sb      s9,355(sp)
    sb      s10,327(sp)
    sw      s11,332(sp)
    sw      a0,108(sp)
    sw      a1,104(sp)
    sd      a2,112(sp)
    sb      a4,971(sp)
    sw      a5,444(sp)
    sw      a6,388(sp)
    sb      a7,443(sp)
    lw      a0,104(sp)
    call    intpush
    la      a0, ii
    li      a1, 1
    sw      a1,0(a0)
    j       .while.head_214
.while.head_214:
    la      a0, ii
    lw      a1,0(a0)
    la      a2, i
    lw      a3,0(a2)
    add     a4,a3,a1
    li      a5, 0
    li      a6, 1
    mul     a7,a6,a4
    add     a5,a5,a7
    slli a5,a5,2
    la      s1, get2
    add     a5,a5,s1
    lw      s2,0(a5)
    li      s3, 32
    xor     s4,s2,s3
    snez    s4, s4
    bnez    s4, .while.body_214
    j       .while.exit_214
.while.body_214:
    la      a0, ii
    lw      a2,0(a0)
    la      a6, i
    lw      a7,0(a6)
    add     s1,a7,a2
    li      s3, 0
    li      s5, 1
    mul     s6,s5,s1
    add     s3,s3,s6
    slli s3,s3,2
    la      s7, get2
    add     s3,s3,s7
    lw      s8,0(s3)
    li      s9, 48
    sub     s10,s8,s9
    sw      s1,60(sp)
    sw      s2,76(sp)
    sd      s3,48(sp)
    sb      s4,75(sp)
    sw      s8,44(sp)
    sw      s10,40(sp)
    sw      a1,100(sp)
    sw      a2,68(sp)
    sw      a3,96(sp)
    sw      a4,92(sp)
    sd      a5,80(sp)
    sw      a7,64(sp)
    lw      a0,40(sp)
    call    intadd
    la      a0, ii
    lw      a1,0(a0)
    li      a2, 1
    add     a3,a1,a2
    la      a4, ii
    sw      a3,0(a4)
    sw      a3,32(sp)
    sw      a1,36(sp)
    j       .while.head_214
.while.exit_214:
    la      a0, ii
    lw      a2,0(a0)
    la      a6, i
    lw      a7,0(a6)
    add     s1,a7,a2
    li      s3, 1
    sub     s5,s1,s3
    la      s6, i
    sw      s5,0(s6)
    sw      s1,20(sp)
    sw      s5,16(sp)
    sw      a3,96(sp)
    sd      a5,80(sp)
    sb      s4,75(sp)
    sw      a1,100(sp)
    sw      a7,24(sp)
    sw      s2,76(sp)
    sw      a4,92(sp)
    sw      a2,28(sp)
    ld      s1,136(sp)
    ld      s5,336(sp)
    lw      a3,972(sp)
    lb      s8,330(sp)
    lw      a5,444(sp)
    lw      s4,348(sp)
    lb      s10,327(sp)
    lb      s6,331(sp)
    lb      a1,131(sp)
    lw      a0,132(sp)
    ld      s3,360(sp)
    lw      a6,388(sp)
    lw      s11,332(sp)
    lb      a7,443(sp)
    lw      s2,372(sp)
    lw      s7,356(sp)
    lb      a4,971(sp)
    lb      s9,355(sp)
    j       .branch_false_209
.branch_false_209:
.L18_0:
.L19_0:
    la      a0, i
    lw      a1,0(a0)
    li      a2, 1
    add     a3,a1,a2
    la      a4, i
    sw      a3,0(a4)
    sw      a3,148(sp)
    sw      a1,152(sp)
    ld      s1,376(sp)
    lw      a3,972(sp)
    lw      a5,444(sp)
    lw      a1,976(sp)
    lw      a0,980(sp)
    lw      a6,388(sp)
    lb      a7,443(sp)
    lb      a4,971(sp)
    j       .while.head_180
.while.exit_180:
    li      a2, 0
    li      s4, 1
    li      s5, 1
    mul     s6,s4,s5
    add     a2,a2,s6
    slli a2,a2,2
    la      s8, ints
    add     a2,a2,s8
    lw      s10,0(a2)
    sd      s1,376(sp)
    sw      s2,372(sp)
    sd      s3,360(sp)
    sw      s7,356(sp)
    sb      s9,355(sp)
    sw      s10,4(sp)
    sw      a0,980(sp)
    sw      a1,976(sp)
    sd      a2,8(sp)
    sw      a3,972(sp)
    sb      a4,971(sp)
    sw      a5,444(sp)
    sw      a6,388(sp)
    sb      a7,443(sp)
    lw      a0,4(sp)
    call    putint
    ld      ra,992(sp)
    ld      s0,984(sp)
    li      a0, 0
    addi    sp,sp,1000
    ret
.section ___var
    .data
    .align 4
    .globl get2
    .type get2,@object
get2:
    .zero 40000
    .align 4
    .globl get
    .type get,@object
get:
    .zero 40000
    .align 4
    .globl c
    .type c,@object
c:
    .word 0
    .align 4
    .globl ii
    .type ii,@object
ii:
    .word 1
    .align 4
    .globl i
    .type i,@object
i:
    .word 0
    .align 4
    .globl chat
    .type chat,@object
chat:
    .word 0
    .align 4
    .globl chas
    .type chas,@object
chas:
    .zero 40000
    .align 4
    .globl intt
    .type intt,@object
intt:
    .word 0
    .align 4
    .globl ints
    .type ints,@object
ints:
    .zero 40000
