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
    lw      a0,28(sp)
    lw      a2,20(sp)
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
    .globl intpop
    .type intpop,@function
intpop:
    li      a0, -40048
    li      a0, -40048
    add     sp,a0,sp
    li      a1, 40040
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 40032
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 40048
    li      a3, 40048
    add     s0,a3,sp
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
    la      s1, ints
    lw      s2,0(s1)
    li      s3, 0
    mul     s4,a2,a7
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,16
    lw      s5,0(s3)
    li      s6, 40040
    add     s6,sp,s6
    ld      ra,0(s6)
    li      s7, 40032
    add     s7,sp,s7
    ld      s0,0(s7)
    sw      s5,4(sp)
    lw      a0,4(sp)
    li      s5, 40048
    li      s5, 40048
    add     sp,s5,sp
    ret
    .globl chapop
    .type chapop,@function
chapop:
    li      a0, -40048
    li      a0, -40048
    add     sp,a0,sp
    li      a1, 40040
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 40032
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 40048
    li      a3, 40048
    add     s0,a3,sp
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
    la      s1, chas
    lw      s2,0(s1)
    li      s3, 0
    mul     s4,a2,a7
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,16
    lw      s5,0(s3)
    li      s6, 40040
    add     s6,sp,s6
    ld      ra,0(s6)
    li      s7, 40032
    add     s7,sp,s7
    ld      s0,0(s7)
    sw      s5,4(sp)
    lw      a0,4(sp)
    li      s5, 40048
    li      s5, 40048
    add     sp,s5,sp
    ret
    .globl intadd
    .type intadd,@function
intadd:
    li      a1, -80096
    li      a1, -80096
    add     sp,a1,sp
    li      a2, 80088
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 80080
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 80096
    li      a4, 80096
    add     s0,a4,sp
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
    la      s2, ints
    lw      s3,0(s2)
    li      s4, 0
    mul     s5,a4,s1
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    li      s6, 40060
    li      s6, 40060
    add     s4,s6,s4
    lw      s7,0(s4)
    li      s8, 10
    mul     s9,s7,s8
    sw      s9,0(a3)
    la      s10, intt
    lw      s11,0(s10)
    li      a1, 0
    mul     a5,a4,s11
    add     a1,a1,a5
    slli a1,a1,2
    la      a4, ints
    add     a1,a1,a4
    la      a4, intt
    lw      a5,0(a4)
    la      a4, ints
    lw      a6,0(a4)
    li      a4, 0
    li      a7, 1
    mul     s2,a7,a5
    add     a4,a4,s2
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,20
    lw      a7,0(a4)
    add     s2,a7,a0
    sw      s2,0(a1)
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
    li      a0, -2121552
    li      a0, -2121552
    add     sp,a0,sp
    li      a1, 2121544
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 2121536
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 2121552
    li      a3, 2121552
    add     s0,a3,sp
.L0_0:
    la      a0, intt
    li      a1, 0
    sw      a1,0(a0)
    la      a2, chat
    sw      a1,0(a2)
    la      a3, get
    lw      a4,0(a3)
    li      a0, 2081536
    add     a0,sp,a0
    sw      a4,0(a0)
    li      a1, 2081536
    add     a1,sp,a1
    lw      a0,0(a1)
    call    getstr
    li      a0, 2081532
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a2, a0
    j       .while.head_92
.while.head_92:
    la      a3, i
    lw      a4,0(a3)
    slt     a5,a4,a2
    bnez    a5, .while.body_92
    j       .while.exit_92
.while.body_92:
    la      a3, i
    lw      a6,0(a3)
    la      a7, get
    lw      s1,0(a7)
    li      s2, 0
    li      s3, 1
    mul     s4,s3,a6
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    li      s5, 2041516
    li      s5, 2041516
    add     s2,s5,s2
    lw      s6,0(s2)
    add     s5,sp,s5
    sw      s1,0(s5)
    li      s1, 2041504
    add     s1,sp,s1
    sd      s2,0(s1)
    li      s2, 2041500
    add     s2,sp,s2
    sw      s6,0(s2)
    li      a0, 2081532
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2081536
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2081528
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 2081524
    add     a2,sp,a2
    sw      a4,0(a2)
    li      a3, 2081523
    add     a3,sp,a3
    sb      a5,0(a3)
    li      a4, 2081516
    add     a4,sp,a4
    sw      a6,0(a4)
    li      a5, 2041500
    add     a5,sp,a5
    lw      a0,0(a5)
    call    isdigit
    li      a0, 2041496
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a6, 1
    xor     a7,a0,a6
    seqz    a7, a7
    bnez    a7, .branch_true_95
    j       .branch_false_95
.branch_true_95:
    la      a1, ii
    lw      a2,0(a1)
    li      a3, 0
    li      a4, 1
    mul     a6,a4,a2
    add     a3,a3,a6
    slli a3,a3,2
    la      s1, get2
    add     a3,a3,s1
    la      s2, i
    lw      s3,0(s2)
    la      s4, get
    lw      s5,0(s4)
    li      s6, 0
    mul     s7,a4,s3
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,sp
    li      s8, 2001476
    li      s8, 2001476
    add     s6,s8,s6
    lw      s9,0(s6)
    sw      s9,0(a3)
    la      s10, ii
    lw      s11,0(s10)
    add     a1,s11,a4
    la      a4, ii
    sw      a1,0(a4)
    j       .L9_0
.branch_false_95:
    la      a1, i
    lw      a2,0(a1)
    la      a3, get
    lw      a4,0(a3)
    li      a6, 0
    li      s1, 1
    mul     s2,s1,a2
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    li      s3, 1961440
    li      s3, 1961440
    add     a6,s3,a6
    lw      s4,0(a6)
    li      s5, 40
    xor     s6,s4,s5
    seqz    s6, s6
    bnez    s6, .branch_true_101
    j       .branch_false_101
.branch_true_101:
    li      a1, 1961428
    add     a1,sp,a1
    sw      s4,0(a1)
    li      a3, 1961427
    add     a3,sp,a3
    sb      s6,0(a3)
    li      a0, 2041496
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2001440
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a1, 1961440
    add     a1,sp,a1
    sw      a4,0(a1)
    li      a2, 2041500
    add     a2,sp,a2
    sw      a5,0(a2)
    li      a3, 1961432
    add     a3,sp,a3
    sd      a6,0(a3)
    li      a4, 2041495
    add     a4,sp,a4
    sb      a7,0(a4)
    li      a0, 40
    call    chapush
    li      a1, 2041496
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    lw      a4,0(a2)
    li      a3, 2041495
    add     a3,sp,a3
    lb      a7,0(a3)
    li      a1, 2041496
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1961440
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a5, 2001440
    add     a5,sp,a5
    lw      a2,0(a5)
    li      a6, 1961428
    add     a6,sp,a6
    lw      s4,0(a6)
    li      a5, 2001440
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s1, 2041500
    add     s1,sp,s1
    lw      a5,0(s1)
    li      a6, 1961428
    add     a6,sp,a6
    sw      a6,0(a6)
    li      s2, 1961432
    add     s2,sp,s2
    ld      a6,0(s2)
    li      a3, 2041495
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 1961427
    add     a3,sp,a3
    lb      s6,0(a3)
    li      s1, 2041500
    add     s1,sp,s1
    sw      s1,0(s1)
    j       .branch_false_101
.branch_false_101:
.L1_0:
    la      a1, i
    lw      a3,0(a1)
    la      s1, get
    lw      s2,0(s1)
    li      s3, 0
    li      s5, 1
    mul     s7,s5,a3
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,sp
    li      s8, 1921420
    li      s8, 1921420
    add     s3,s8,s3
    lw      s9,0(s3)
    li      s10, 94
    xor     s11,s9,s10
    seqz    s11, s11
    bnez    s11, .branch_true_104
    j       .branch_false_104
.branch_true_104:
    li      a1, 1921420
    add     a1,sp,a1
    sw      s2,0(a1)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s3,0(s1)
    li      s2, 1961428
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 1961427
    add     s3,sp,s3
    sb      s6,0(s3)
    li      s4, 1921404
    add     s4,sp,s4
    sw      s9,0(s4)
    li      s5, 1921403
    add     s5,sp,s5
    sb      s11,0(s5)
    li      a0, 2041496
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2001440
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a1, 1961420
    add     a1,sp,a1
    sw      a3,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    sw      a4,0(a2)
    li      a3, 2041500
    add     a3,sp,a3
    sw      a5,0(a3)
    li      a4, 1961432
    add     a4,sp,a4
    sd      a6,0(a4)
    li      a5, 2041495
    add     a5,sp,a5
    sb      a7,0(a5)
    li      a0, 94
    call    chapush
    li      a0, 1921420
    add     a0,sp,a0
    lw      s2,0(a0)
    li      a0, 1921420
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 2041496
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    lw      a4,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    lw      s9,0(a3)
    li      a5, 2041495
    add     a5,sp,a5
    lb      a7,0(a5)
    li      a1, 2041496
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1961440
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a6, 2001440
    add     a6,sp,a6
    lw      a2,0(a6)
    li      s1, 1961428
    add     s1,sp,s1
    lw      s4,0(s1)
    li      a5, 2041495
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s3, 2041500
    add     s3,sp,s3
    lw      a5,0(s3)
    li      a6, 2001440
    add     a6,sp,a6
    sw      a6,0(a6)
    li      s5, 1961432
    add     s5,sp,s5
    ld      a6,0(s5)
    li      s5, 1961432
    add     s5,sp,s5
    sd      s5,0(s5)
    li      a3, 1921404
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s5, 1961420
    add     s5,sp,s5
    lw      a3,0(s5)
    li      s7, 1961427
    add     s7,sp,s7
    lb      s6,0(s7)
    li      s3, 2041500
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s8, 1921408
    add     s8,sp,s8
    ld      s3,0(s8)
    li      s10, 1921403
    add     s10,sp,s10
    lb      s11,0(s10)
    li      s1, 1961428
    add     s1,sp,s1
    sw      s1,0(s1)
    j       .branch_false_104
.branch_false_104:
.L2_0:
    la      a1, i
    lw      s1,0(a1)
    la      s5, get
    lw      s7,0(s5)
    li      s8, 0
    li      s10, 1
    mul     a1,s10,s1
    add     s8,s8,a1
    slli s8,s8,2
    add     s8,s8,sp
    li      a1, 1881396
    li      a1, 1881396
    add     s8,a1,s8
    lw      a1,0(s8)
    li      s5, 41
    xor     s10,a1,s5
    seqz    s10, s10
    bnez    s10, .branch_true_107
    j       .branch_false_107
.branch_true_107:
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1921420
    add     s1,sp,s1
    sw      s2,0(s1)
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
    li      s3, 1961428
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 1961427
    add     s4,sp,s4
    sb      s6,0(s4)
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
    li      a0, 2041496
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1881380
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2001440
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 1961420
    add     a2,sp,a2
    sw      a3,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
    call    chapop
    li      a0, 1881372
    add     a0,sp,a0
    sw      a0,0(a0)
    la      a7, c
    sw      a0,0(a7)
    j       .while.head_111
.while.head_111:
    la      a1, c
    lw      a2,0(a1)
    li      a3, 40
    xor     a4,a2,a3
    snez    a4, a4
    bnez    a4, .while.body_111
    li      a0, 1881372
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1881367
    add     a0,sp,a0
    sb      a4,0(a0)
    li      a1, 1881368
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 1921420
    add     a2,sp,a2
    lw      s2,0(a2)
    li      a3, 2041496
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a5, 1961440
    add     a5,sp,a5
    lw      a4,0(a5)
    li      a6, 1921404
    add     a6,sp,a6
    lw      s9,0(a6)
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
    li      s3, 1881396
    add     s3,sp,s3
    lw      s7,0(s3)
    li      s4, 1881380
    add     s4,sp,s4
    lw      a1,0(s4)
    li      s5, 1881384
    add     s5,sp,s5
    ld      s8,0(s5)
    li      a2, 1921420
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s6, 2001440
    add     s6,sp,s6
    lw      a2,0(s6)
    li      s4, 1881380
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s10, 1961428
    add     s10,sp,s10
    lw      s4,0(s10)
    li      s10, 1961428
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 1881379
    add     s11,sp,s11
    lb      s10,0(s11)
    li      a5, 1961440
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a3, 2041496
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 2041500
    add     a3,sp,a3
    lw      a5,0(a3)
    li      a6, 1921404
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a3, 2041500
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1961432
    add     a3,sp,a3
    ld      a6,0(a3)
    li      s5, 1881384
    add     s5,sp,s5
    sd      s5,0(s5)
    li      a3, 1961432
    add     a3,sp,a3
    sd      a3,0(a3)
    li      s5, 1961420
    add     s5,sp,s5
    lw      a3,0(s5)
    li      s6, 2001440
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s1, 2041495
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 1961427
    add     s1,sp,s1
    lb      s6,0(s1)
    li      s3, 1881396
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s1, 1961427
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    ld      s3,0(s1)
    li      s11, 1881379
    add     s11,sp,s11
    sb      s11,0(s11)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s1, 1921403
    add     s1,sp,s1
    lb      s11,0(s1)
    li      s1, 1921403
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s5, 1961420
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s5, 1921396
    add     s5,sp,s5
    lw      s1,0(s5)
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
    li      s1, 1881348
    add     s1,sp,s1
    sw      s4,0(s1)
    li      s2, 1881344
    add     s2,sp,s2
    sw      s5,0(s2)
    li      s3, 1881336
    add     s3,sp,s3
    sd      s6,0(s3)
    li      s4, 1881332
    add     s4,sp,s4
    sw      s10,0(s4)
    li      a0, 1881372
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1881328
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 1881368
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 1881360
    add     a2,sp,a2
    sw      a3,0(a2)
    li      a3, 1881367
    add     a3,sp,a3
    sb      a4,0(a3)
    li      a4, 1881352
    add     a4,sp,a4
    sd      a5,0(a4)
    li      a5, 1881324
    add     a5,sp,a5
    sw      a7,0(a5)
    call    chapop
    li      a0, 1881320
    add     a0,sp,a0
    sw      a0,0(a0)
    la      a6, c
    sw      a0,0(a6)
    li      a0, 1881320
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 1881372
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 1881372
    add     a1,sp,a1
    sw      a1,0(a1)
    j       .while.head_111
.branch_false_107:
.L3_0:
    la      s5, i
    li      a0, 2041496
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(s5)
    la      s5, get
    li      a0, 1881316
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(s5)
    li      s5, 0
    li      a0, 1841316
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1881380
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a2, 2001440
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    add     s5,s5,a2
    slli s5,s5,2
    add     s5,s5,sp
    li      a0, 1841316
    li      a0, 1841316
    add     s5,a0,s5
    lw      a0,0(s5)
    li      a2, 43
    li      a1, 1881316
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_118
    j       .branch_false_118
.branch_true_118:
    la      a2, chat
    li      a0, 1841300
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    la      a2, chas
    li      a0, 1841292
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    li      a2, 0
    li      a0, 1801292
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1841299
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a3, 1961420
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    li      a0, 1801292
    li      a0, 1801292
    add     a2,a0,a2
    lw      a0,0(a2)
    li      a3, 94
    li      a1, 1841292
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    seqz    a1, a1
    la      a3, chat
    li      a0, 1801276
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    la      a3, chas
    li      a0, 1801268
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    li      a3, 0
    li      a0, 1761268
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1801275
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a2, 1801280
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    li      a0, 1761268
    li      a0, 1761268
    add     a3,a0,a3
    lw      a0,0(a3)
    li      a2, 37
    li      a1, 1801268
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    seqz    a1, a1
    add     a2,sp,a2
    lb      a2,0(a2)
    li      a0, 1761252
    add     a0,sp,a0
    sw      a0,0(a0)
    la      a0, chat
    li      a1, 1761251
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 1761244
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1721244
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1801275
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 1761256
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 1721244
    li      a1, 1721244
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 47
    li      a0, 1721232
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 1721227
    add     a0,sp,a0
    sb      a0,0(a0)
    la      a0, chat
    li      a1, 1721228
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 1721220
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1681220
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1761244
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 1761250
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 1681220
    li      a1, 1681220
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 42
    li      a0, 1681208
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 1681203
    add     a0,sp,a0
    sb      a0,0(a0)
    la      a0, chat
    li      a1, 1681204
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 1681196
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1641196
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1721220
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 1721226
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 1641196
    li      a1, 1641196
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 45
    li      a0, 1641184
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 1641179
    add     a0,sp,a0
    sb      a0,0(a0)
    la      a0, chat
    li      a1, 1641180
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 1641172
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1601172
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1681196
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 1681202
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 1601172
    li      a1, 1601172
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 43
    li      a0, 1601160
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 1601155
    add     a0,sp,a0
    sb      a0,0(a0)
    add     a0,sp,a0
    lb      a0,0(a0)
    li      s2, 1921420
    add     s2,sp,s2
    sw      s2,0(s2)
    bnez    a0, .while.body_121
    j       .while.exit_121
.while.body_121:
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s3,0(s1)
    li      s2, 1961428
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 1841304
    add     s3,sp,s3
    sd      s5,0(s3)
    li      s4, 1961427
    add     s4,sp,s4
    sb      s6,0(s4)
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
    li      a0, 1601154
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1601156
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 1641172
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 1641178
    add     a2,sp,a2
    sb      a3,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
    call    find
    li      a0, 1601148
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a7, 0
    xor     s10,a0,a7
    seqz    s10, s10
    bnez    s10, .branch_true_124
    j       .branch_false_124
.branch_true_124:
    li      a0, 1601148
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1601147
    add     a0,sp,a0
    sb      s10,0(a0)
    li      a1, 1601154
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    lw      a4,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    lw      s9,0(a3)
    li      a5, 2041495
    add     a5,sp,a5
    lb      a7,0(a5)
    li      a6, 1881396
    add     a6,sp,a6
    lw      s7,0(a6)
    li      a1, 1601154
    add     a1,sp,a1
    sb      a1,0(a1)
    li      s1, 1601156
    add     s1,sp,s1
    lw      a1,0(s1)
    li      s2, 1881384
    add     s2,sp,s2
    ld      s8,0(s2)
    li      a2, 1961440
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s3, 1641172
    add     s3,sp,s3
    lw      a2,0(s3)
    li      s5, 1961428
    add     s5,sp,s5
    lw      s4,0(s5)
    li      s6, 1881379
    add     s6,sp,s6
    lb      s10,0(s6)
    li      a5, 2041495
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s11, 2041500
    add     s11,sp,s11
    lw      a5,0(s11)
    li      a6, 1881396
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a3, 1921404
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1961432
    add     a3,sp,a3
    ld      a6,0(a3)
    li      s5, 1961428
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 1961432
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    sd      a3,0(a3)
    li      s1, 1601156
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1641178
    add     s1,sp,s1
    lb      a3,0(s1)
    li      s6, 1881379
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s1, 1641178
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 1961427
    add     s1,sp,s1
    lb      s6,0(s1)
    li      s3, 1641172
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s1, 1961427
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    ld      s3,0(s1)
    li      s11, 2041500
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s1, 1921403
    add     s1,sp,s1
    lb      s11,0(s1)
    li      s1, 1921403
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 1881384
    add     s2,sp,s2
    sd      s2,0(s2)
    li      s2, 1921396
    add     s2,sp,s2
    lw      s1,0(s2)
    j       .while.exit_121
.while.exit_121:
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s3,0(s1)
    li      s2, 1961428
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 1841304
    add     s3,sp,s3
    sd      s5,0(s3)
    li      s4, 1961427
    add     s4,sp,s4
    sb      s6,0(s4)
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
    li      a0, 1601154
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1601156
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 1641172
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 1641178
    add     a2,sp,a2
    sb      a3,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
    li      a0, 43
    call    chapush
    li      a0, 1921420
    add     a0,sp,a0
    lw      s2,0(a0)
    li      a0, 1921420
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 1841300
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    lw      a4,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    lw      s9,0(a3)
    li      a5, 2041495
    add     a5,sp,a5
    lb      a7,0(a5)
    li      a6, 1881396
    add     a6,sp,a6
    lw      s7,0(a6)
    li      a1, 1841300
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s1, 1841299
    add     s1,sp,s1
    lb      a1,0(s1)
    li      s3, 1881384
    add     s3,sp,s3
    ld      s8,0(s3)
    li      a2, 1961440
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1961428
    add     a2,sp,a2
    lw      s4,0(a2)
    li      s5, 1881379
    add     s5,sp,s5
    lb      s10,0(s5)
    li      a5, 2041495
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s6, 2041500
    add     s6,sp,s6
    lw      a5,0(s6)
    li      a6, 1881396
    add     a6,sp,a6
    sw      a6,0(a6)
    li      s11, 1961432
    add     s11,sp,s11
    ld      a6,0(s11)
    li      s5, 1881379
    add     s5,sp,s5
    sb      s5,0(s5)
    li      a2, 1961428
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1961420
    add     a2,sp,a2
    lw      a3,0(a2)
    li      s6, 2041500
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a2, 1961420
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1961427
    add     a2,sp,a2
    lb      s6,0(a2)
    li      s3, 1881384
    add     s3,sp,s3
    sd      s3,0(s3)
    li      a2, 1961427
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1921408
    add     a2,sp,a2
    ld      s3,0(a2)
    li      s11, 1961432
    add     s11,sp,s11
    sd      s11,0(s11)
    li      a2, 1921408
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1921403
    add     a2,sp,a2
    lb      s11,0(a2)
    li      s1, 1841299
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a2, 1921403
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1921396
    add     a2,sp,a2
    lw      s1,0(a2)
    j       .branch_false_118
.branch_false_124:
    li      a0, 1601148
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1601147
    add     a0,sp,a0
    sb      s10,0(a0)
    li      a1, 1921420
    add     a1,sp,a1
    lw      s2,0(a1)
    li      a2, 1841300
    add     a2,sp,a2
    lw      a0,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    lw      a4,0(a3)
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    lb      a7,0(a6)
    li      s1, 1881396
    add     s1,sp,s1
    lw      s7,0(s1)
    li      a1, 1921420
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s3, 1841299
    add     s3,sp,s3
    lb      a1,0(s3)
    li      s4, 1881384
    add     s4,sp,s4
    ld      s8,0(s4)
    li      a2, 1841300
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1881384
    add     a2,sp,a2
    sd      s4,0(a2)
    li      s5, 1961428
    add     s5,sp,s5
    lw      s4,0(s5)
    li      s6, 1881379
    add     s6,sp,s6
    lb      s10,0(s6)
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s11, 2041500
    add     s11,sp,s11
    lw      a5,0(s11)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a6,0(a6)
    li      a2, 1961432
    add     a2,sp,a2
    ld      a6,0(a2)
    li      s5, 1961428
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a2, 1961432
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1961420
    add     a2,sp,a2
    lw      a3,0(a2)
    li      s6, 1881379
    add     s6,sp,s6
    sb      s6,0(s6)
    li      a2, 1961420
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1961427
    add     a2,sp,a2
    lb      s6,0(a2)
    li      s3, 1841299
    add     s3,sp,s3
    sb      s3,0(s3)
    li      a2, 1961427
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1921408
    add     a2,sp,a2
    ld      s3,0(a2)
    li      s11, 2041500
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a2, 1921408
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1921403
    add     a2,sp,a2
    lb      s11,0(a2)
    li      s1, 1881396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a2, 1921403
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1921396
    add     a2,sp,a2
    lw      s1,0(a2)
    j       .branch_true_118
.branch_false_118:
.L4_0:
    la      a2, i
    li      a0, 1841300
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    la      a2, get
    li      a0, 1601140
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    li      a2, 0
    li      a0, 1561140
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1841299
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a3, 1961420
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    li      a0, 1561140
    li      a0, 1561140
    add     a2,a0,a2
    lw      a0,0(a2)
    li      a3, 45
    li      a1, 1601140
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    seqz    a1, a1
    bnez    a1, .branch_true_128
    j       .branch_false_128
.branch_true_128:
    la      a3, chat
    li      a0, 1561124
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    la      a3, chas
    li      a0, 1561116
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    li      a3, 0
    li      a0, 1521116
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1561123
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a2, 1561128
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    li      a0, 1521116
    li      a0, 1521116
    add     a3,a0,a3
    lw      a0,0(a3)
    li      a2, 94
    li      a1, 1561116
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    seqz    a1, a1
    la      a2, chat
    li      a0, 1521100
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    la      a2, chas
    li      a0, 1521092
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    li      a2, 0
    li      a0, 1481092
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1521099
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a3, 1521104
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    li      a0, 1481092
    li      a0, 1481092
    add     a2,a0,a2
    lw      a0,0(a2)
    li      a3, 37
    li      a1, 1521092
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    seqz    a1, a1
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 1481076
    add     a0,sp,a0
    sw      a0,0(a0)
    la      a0, chat
    li      a1, 1481075
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 1481068
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1441068
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1481080
    add     a2,sp,a2
    sd      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 1521099
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 1441068
    li      a1, 1441068
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 47
    li      a0, 1441056
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 1441051
    add     a0,sp,a0
    sb      a0,0(a0)
    la      a0, chat
    li      a1, 1441052
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 1441044
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1401044
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1481068
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 1481074
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 1401044
    li      a1, 1401044
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 42
    li      a0, 1401032
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 1401027
    add     a0,sp,a0
    sb      a0,0(a0)
    la      a0, chat
    li      a1, 1401028
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 1401020
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1361020
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1441044
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 1441050
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 1361020
    li      a1, 1361020
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 45
    li      a0, 1361008
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 1361003
    add     a0,sp,a0
    sb      a0,0(a0)
    la      a0, chat
    li      a1, 1361004
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 1360996
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1320996
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1401020
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 1401026
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 1320996
    li      a1, 1320996
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 43
    li      a0, 1320984
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 1320979
    add     a0,sp,a0
    sb      a0,0(a0)
    add     a0,sp,a0
    lb      a0,0(a0)
    li      s2, 1921420
    add     s2,sp,s2
    sw      s2,0(s2)
    bnez    a0, .while.body_131
    j       .while.exit_131
.while.body_131:
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s3,0(s1)
    li      s2, 1961428
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 1841304
    add     s3,sp,s3
    sd      s5,0(s3)
    li      s4, 1961427
    add     s4,sp,s4
    sb      s6,0(s4)
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
    li      a0, 1320978
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1320980
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 1360996
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 1361002
    add     a2,sp,a2
    sb      a3,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
    call    find
    li      a0, 1320972
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a7, 0
    xor     s10,a0,a7
    seqz    s10, s10
    bnez    s10, .branch_true_134
    j       .branch_false_134
.branch_true_134:
    li      a0, 1320972
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1320971
    add     a0,sp,a0
    sb      s10,0(a0)
    li      a1, 1320978
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    lw      a4,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    lw      s9,0(a3)
    li      a5, 2041495
    add     a5,sp,a5
    lb      a7,0(a5)
    li      a6, 1881396
    add     a6,sp,a6
    lw      s7,0(a6)
    li      a1, 1320978
    add     a1,sp,a1
    sb      a1,0(a1)
    li      s1, 1320980
    add     s1,sp,s1
    lw      a1,0(s1)
    li      s2, 1881384
    add     s2,sp,s2
    ld      s8,0(s2)
    li      a2, 1961440
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s3, 1360996
    add     s3,sp,s3
    lw      a2,0(s3)
    li      s5, 1961428
    add     s5,sp,s5
    lw      s4,0(s5)
    li      s6, 1881379
    add     s6,sp,s6
    lb      s10,0(s6)
    li      a5, 2041495
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s11, 2041500
    add     s11,sp,s11
    lw      a5,0(s11)
    li      a6, 1881396
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a3, 1921404
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1961432
    add     a3,sp,a3
    ld      a6,0(a3)
    li      s5, 1961428
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 1961432
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    sd      a3,0(a3)
    li      s1, 1320980
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1361002
    add     s1,sp,s1
    lb      a3,0(s1)
    li      s6, 1881379
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s1, 1361002
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 1961427
    add     s1,sp,s1
    lb      s6,0(s1)
    li      s3, 1360996
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s1, 1961427
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    ld      s3,0(s1)
    li      s11, 2041500
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s1, 1921403
    add     s1,sp,s1
    lb      s11,0(s1)
    li      s1, 1921403
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 1881384
    add     s2,sp,s2
    sd      s2,0(s2)
    li      s2, 1921396
    add     s2,sp,s2
    lw      s1,0(s2)
    j       .while.exit_131
.while.exit_131:
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s3,0(s1)
    li      s2, 1961428
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 1841304
    add     s3,sp,s3
    sd      s5,0(s3)
    li      s4, 1961427
    add     s4,sp,s4
    sb      s6,0(s4)
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
    li      a0, 1320978
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1320980
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 1360996
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 1361002
    add     a2,sp,a2
    sb      a3,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
    li      a0, 45
    call    chapush
    li      a0, 1921420
    add     a0,sp,a0
    lw      s2,0(a0)
    li      a0, 1921420
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 1561124
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    lw      a4,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    lw      s9,0(a3)
    li      a5, 2041495
    add     a5,sp,a5
    lb      a7,0(a5)
    li      a6, 1881396
    add     a6,sp,a6
    lw      s7,0(a6)
    li      a1, 1561124
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s1, 1561123
    add     s1,sp,s1
    lb      a1,0(s1)
    li      s3, 1881384
    add     s3,sp,s3
    ld      s8,0(s3)
    li      a2, 1961440
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s4, 1561128
    add     s4,sp,s4
    ld      a2,0(s4)
    li      s4, 1561128
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s5, 1961428
    add     s5,sp,s5
    lw      s4,0(s5)
    li      s6, 1881379
    add     s6,sp,s6
    lb      s10,0(s6)
    li      a5, 2041495
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s11, 2041500
    add     s11,sp,s11
    lw      a5,0(s11)
    li      a6, 1881396
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a3, 1921404
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1961432
    add     a3,sp,a3
    ld      a6,0(a3)
    li      s5, 1961428
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 1961432
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1881379
    add     a3,sp,a3
    sb      s6,0(a3)
    li      a3, 1961427
    add     a3,sp,a3
    lb      s6,0(a3)
    li      s3, 1881384
    add     s3,sp,s3
    sd      s3,0(s3)
    li      a3, 1961427
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 1921408
    add     a3,sp,a3
    ld      s3,0(a3)
    li      s11, 2041500
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a3, 1921408
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1921403
    add     a3,sp,a3
    lb      s11,0(a3)
    li      s1, 1561123
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a3, 1921403
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 1921396
    add     a3,sp,a3
    lw      s1,0(a3)
    j       .branch_false_128
.branch_false_134:
    li      a0, 1320972
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1320971
    add     a0,sp,a0
    sb      s10,0(a0)
    li      a1, 1921420
    add     a1,sp,a1
    lw      s2,0(a1)
    li      a2, 1561124
    add     a2,sp,a2
    lw      a0,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    lw      a4,0(a3)
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    lb      a7,0(a6)
    li      s1, 1881396
    add     s1,sp,s1
    lw      s7,0(s1)
    li      a1, 1921420
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s3, 1561123
    add     s3,sp,s3
    lb      a1,0(s3)
    li      s4, 1881384
    add     s4,sp,s4
    ld      s8,0(s4)
    li      a2, 1561124
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s5, 1561128
    add     s5,sp,s5
    ld      a2,0(s5)
    li      s4, 1881384
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s6, 1961428
    add     s6,sp,s6
    lw      s4,0(s6)
    li      s11, 1881379
    add     s11,sp,s11
    lb      s10,0(s11)
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 2041500
    add     a3,sp,a3
    lw      a5,0(a3)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a6,0(a6)
    li      a3, 2041500
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1961432
    add     a3,sp,a3
    ld      a6,0(a3)
    li      s5, 1561128
    add     s5,sp,s5
    sd      s5,0(s5)
    li      a3, 1961432
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1961428
    add     a3,sp,a3
    sw      s6,0(a3)
    li      a3, 1961427
    add     a3,sp,a3
    lb      s6,0(a3)
    li      s3, 1561123
    add     s3,sp,s3
    sb      s3,0(s3)
    li      a3, 1961427
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 1921408
    add     a3,sp,a3
    ld      s3,0(a3)
    li      s11, 1881379
    add     s11,sp,s11
    sb      s11,0(s11)
    li      a3, 1921408
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1921403
    add     a3,sp,a3
    lb      s11,0(a3)
    li      s1, 1881396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a3, 1921403
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 1921396
    add     a3,sp,a3
    lw      s1,0(a3)
    j       .branch_true_128
.branch_false_128:
.L5_0:
    la      a3, i
    li      a0, 1561124
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    la      a3, get
    li      a0, 1320964
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    li      a3, 0
    li      a0, 1280964
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1561123
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a2, 1561128
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    li      a0, 1280964
    li      a0, 1280964
    add     a3,a0,a3
    lw      a0,0(a3)
    li      a2, 42
    li      a1, 1320964
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_138
    j       .branch_false_138
.branch_true_138:
    la      a2, chat
    li      a0, 1280948
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    la      a2, chas
    li      a0, 1280940
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    li      a2, 0
    li      a0, 1240940
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1280947
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a3, 1280952
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    li      a0, 1240940
    li      a0, 1240940
    add     a2,a0,a2
    lw      a0,0(a2)
    li      a3, 94
    li      a1, 1280940
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    seqz    a1, a1
    la      a3, chat
    li      a0, 1240924
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    la      a3, chas
    li      a0, 1240916
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    li      a3, 0
    li      a0, 1200916
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1240923
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a2, 1240928
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    li      a0, 1200916
    li      a0, 1200916
    add     a3,a0,a3
    lw      a0,0(a3)
    li      a2, 37
    li      a1, 1240916
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    seqz    a1, a1
    add     a2,sp,a2
    lb      a2,0(a2)
    li      a0, 1200900
    add     a0,sp,a0
    sw      a0,0(a0)
    la      a0, chat
    li      a1, 1200899
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 1200892
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1160892
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1240923
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 1200904
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 1160892
    li      a1, 1160892
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 47
    li      a0, 1160880
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 1160875
    add     a0,sp,a0
    sb      a0,0(a0)
    la      a0, chat
    li      a1, 1160876
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 1160868
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1120868
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1200892
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 1200898
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 1120868
    li      a1, 1120868
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 42
    li      a0, 1120856
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 1120851
    add     a0,sp,a0
    sb      a0,0(a0)
    add     a0,sp,a0
    lb      a0,0(a0)
    li      s2, 1921420
    add     s2,sp,s2
    sw      s2,0(s2)
    bnez    a0, .while.body_141
    j       .while.exit_141
.while.body_141:
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s3,0(s1)
    li      s2, 1961428
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 1841304
    add     s3,sp,s3
    sd      s5,0(s3)
    li      s4, 1961427
    add     s4,sp,s4
    sb      s6,0(s4)
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
    li      a0, 1120850
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1120852
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 1160868
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 1160874
    add     a2,sp,a2
    sb      a3,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
    call    find
    li      a0, 1120844
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a7, 0
    xor     s10,a0,a7
    seqz    s10, s10
    bnez    s10, .branch_true_144
    j       .branch_false_144
.branch_true_144:
    li      a0, 1120844
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1120843
    add     a0,sp,a0
    sb      s10,0(a0)
    li      a1, 1120850
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    lw      a4,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    lw      s9,0(a3)
    li      a5, 2041495
    add     a5,sp,a5
    lb      a7,0(a5)
    li      a6, 1881396
    add     a6,sp,a6
    lw      s7,0(a6)
    li      a1, 1120850
    add     a1,sp,a1
    sb      a1,0(a1)
    li      s1, 1120852
    add     s1,sp,s1
    lw      a1,0(s1)
    li      s2, 1881384
    add     s2,sp,s2
    ld      s8,0(s2)
    li      a2, 1961440
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s3, 1160868
    add     s3,sp,s3
    lw      a2,0(s3)
    li      s5, 1961428
    add     s5,sp,s5
    lw      s4,0(s5)
    li      s6, 1881379
    add     s6,sp,s6
    lb      s10,0(s6)
    li      a5, 2041495
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s11, 2041500
    add     s11,sp,s11
    lw      a5,0(s11)
    li      a6, 1881396
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a3, 1921404
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1961432
    add     a3,sp,a3
    ld      a6,0(a3)
    li      s5, 1961428
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 1961432
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    sd      a3,0(a3)
    li      s1, 1120852
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1160874
    add     s1,sp,s1
    lb      a3,0(s1)
    li      s6, 1881379
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s1, 1160874
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 1961427
    add     s1,sp,s1
    lb      s6,0(s1)
    li      s3, 1160868
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s1, 1961427
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    ld      s3,0(s1)
    li      s11, 2041500
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s1, 1921403
    add     s1,sp,s1
    lb      s11,0(s1)
    li      s1, 1921403
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 1881384
    add     s2,sp,s2
    sd      s2,0(s2)
    li      s2, 1921396
    add     s2,sp,s2
    lw      s1,0(s2)
    j       .while.exit_141
.while.exit_141:
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s3,0(s1)
    li      s2, 1961428
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 1841304
    add     s3,sp,s3
    sd      s5,0(s3)
    li      s4, 1961427
    add     s4,sp,s4
    sb      s6,0(s4)
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
    li      a0, 1120850
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1120852
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 1160868
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 1160874
    add     a2,sp,a2
    sb      a3,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
    li      a0, 42
    call    chapush
    li      a0, 1921420
    add     a0,sp,a0
    lw      s2,0(a0)
    li      a0, 1921420
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 1280948
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    lw      a4,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    lw      s9,0(a3)
    li      a5, 2041495
    add     a5,sp,a5
    lb      a7,0(a5)
    li      a6, 1881396
    add     a6,sp,a6
    lw      s7,0(a6)
    li      a1, 1280948
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s1, 1280947
    add     s1,sp,s1
    lb      a1,0(s1)
    li      s3, 1881384
    add     s3,sp,s3
    ld      s8,0(s3)
    li      a2, 1961440
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1961428
    add     a2,sp,a2
    lw      s4,0(a2)
    li      s5, 1881379
    add     s5,sp,s5
    lb      s10,0(s5)
    li      a5, 2041495
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s6, 2041500
    add     s6,sp,s6
    lw      a5,0(s6)
    li      a6, 1881396
    add     a6,sp,a6
    sw      a6,0(a6)
    li      s11, 1961432
    add     s11,sp,s11
    ld      a6,0(s11)
    li      s5, 1881379
    add     s5,sp,s5
    sb      s5,0(s5)
    li      a2, 1961428
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1280952
    add     a2,sp,a2
    ld      a3,0(a2)
    li      s6, 2041500
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a2, 1280952
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1961427
    add     a2,sp,a2
    lb      s6,0(a2)
    li      s3, 1881384
    add     s3,sp,s3
    sd      s3,0(s3)
    li      a2, 1961427
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1921408
    add     a2,sp,a2
    ld      s3,0(a2)
    li      s11, 1961432
    add     s11,sp,s11
    sd      s11,0(s11)
    li      a2, 1921408
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1921403
    add     a2,sp,a2
    lb      s11,0(a2)
    li      s1, 1280947
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a2, 1921403
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1921396
    add     a2,sp,a2
    lw      s1,0(a2)
    j       .branch_false_138
.branch_false_144:
    li      a0, 1120844
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1120843
    add     a0,sp,a0
    sb      s10,0(a0)
    li      a1, 1921420
    add     a1,sp,a1
    lw      s2,0(a1)
    li      a2, 1280948
    add     a2,sp,a2
    lw      a0,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    lw      a4,0(a3)
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    lb      a7,0(a6)
    li      s1, 1881396
    add     s1,sp,s1
    lw      s7,0(s1)
    li      a1, 1921420
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s3, 1280947
    add     s3,sp,s3
    lb      a1,0(s3)
    li      s4, 1881384
    add     s4,sp,s4
    ld      s8,0(s4)
    li      a2, 1280948
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1881384
    add     a2,sp,a2
    sd      s4,0(a2)
    li      s5, 1961428
    add     s5,sp,s5
    lw      s4,0(s5)
    li      s6, 1881379
    add     s6,sp,s6
    lb      s10,0(s6)
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s11, 2041500
    add     s11,sp,s11
    lw      a5,0(s11)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a6,0(a6)
    li      a2, 1961432
    add     a2,sp,a2
    ld      a6,0(a2)
    li      s5, 1961428
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a2, 1961432
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1280952
    add     a2,sp,a2
    ld      a3,0(a2)
    li      s6, 1881379
    add     s6,sp,s6
    sb      s6,0(s6)
    li      a2, 1280952
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1961427
    add     a2,sp,a2
    lb      s6,0(a2)
    li      s3, 1280947
    add     s3,sp,s3
    sb      s3,0(s3)
    li      a2, 1961427
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1921408
    add     a2,sp,a2
    ld      s3,0(a2)
    li      s11, 2041500
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a2, 1921408
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1921403
    add     a2,sp,a2
    lb      s11,0(a2)
    li      s1, 1881396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a2, 1921403
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1921396
    add     a2,sp,a2
    lw      s1,0(a2)
    j       .branch_true_138
.branch_false_138:
.L6_0:
    la      a2, i
    li      a0, 1280948
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    la      a2, get
    li      a0, 1120836
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    li      a2, 0
    li      a0, 1080836
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1280947
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a3, 1280952
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    li      a0, 1080836
    li      a0, 1080836
    add     a2,a0,a2
    lw      a0,0(a2)
    li      a3, 47
    li      a1, 1120836
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    seqz    a1, a1
    bnez    a1, .branch_true_148
    j       .branch_false_148
.branch_true_148:
    la      a3, chat
    li      a0, 1080820
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    la      a3, chas
    li      a0, 1080812
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    li      a3, 0
    li      a0, 1040812
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1080819
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a2, 1080824
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    li      a0, 1040812
    li      a0, 1040812
    add     a3,a0,a3
    lw      a0,0(a3)
    li      a2, 94
    li      a1, 1080812
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    seqz    a1, a1
    la      a2, chat
    li      a0, 1040796
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    la      a2, chas
    li      a0, 1040788
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    li      a2, 0
    li      a0, 1000788
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1040795
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a3, 1040800
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    li      a0, 1000788
    li      a0, 1000788
    add     a2,a0,a2
    lw      a0,0(a2)
    li      a3, 37
    li      a1, 1040788
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    seqz    a1, a1
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 1000772
    add     a0,sp,a0
    sw      a0,0(a0)
    la      a0, chat
    li      a1, 1000771
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 1000764
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 960764
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1000776
    add     a2,sp,a2
    sd      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 1040795
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 960764
    li      a1, 960764
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 47
    li      a0, 960752
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 960747
    add     a0,sp,a0
    sb      a0,0(a0)
    la      a0, chat
    li      a1, 960748
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 960740
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 920740
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1000764
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 1000770
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 920740
    li      a1, 920740
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 42
    li      a0, 920728
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 920723
    add     a0,sp,a0
    sb      a0,0(a0)
    add     a0,sp,a0
    lb      a0,0(a0)
    li      s2, 1921420
    add     s2,sp,s2
    sw      s2,0(s2)
    bnez    a0, .while.body_151
    j       .while.exit_151
.while.body_151:
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s3,0(s1)
    li      s2, 1961428
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 1841304
    add     s3,sp,s3
    sd      s5,0(s3)
    li      s4, 1961427
    add     s4,sp,s4
    sb      s6,0(s4)
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
    li      a0, 920722
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 920724
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 960740
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 960746
    add     a2,sp,a2
    sb      a3,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
    call    find
    li      a0, 920716
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a7, 0
    xor     s10,a0,a7
    seqz    s10, s10
    bnez    s10, .branch_true_154
    j       .branch_false_154
.branch_true_154:
    li      a0, 920716
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 920715
    add     a0,sp,a0
    sb      s10,0(a0)
    li      a1, 920722
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    lw      a4,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    lw      s9,0(a3)
    li      a5, 2041495
    add     a5,sp,a5
    lb      a7,0(a5)
    li      a6, 1881396
    add     a6,sp,a6
    lw      s7,0(a6)
    li      a1, 920722
    add     a1,sp,a1
    sb      a1,0(a1)
    li      s1, 920724
    add     s1,sp,s1
    lw      a1,0(s1)
    li      s2, 1881384
    add     s2,sp,s2
    ld      s8,0(s2)
    li      a2, 1961440
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s3, 960740
    add     s3,sp,s3
    lw      a2,0(s3)
    li      s5, 1961428
    add     s5,sp,s5
    lw      s4,0(s5)
    li      s6, 1881379
    add     s6,sp,s6
    lb      s10,0(s6)
    li      a5, 2041495
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s11, 2041500
    add     s11,sp,s11
    lw      a5,0(s11)
    li      a6, 1881396
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a3, 1921404
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1961432
    add     a3,sp,a3
    ld      a6,0(a3)
    li      s5, 1961428
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 1961432
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    sd      a3,0(a3)
    li      s1, 920724
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 960746
    add     s1,sp,s1
    lb      a3,0(s1)
    li      s6, 1881379
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s1, 960746
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 1961427
    add     s1,sp,s1
    lb      s6,0(s1)
    li      s3, 960740
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s1, 1961427
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    ld      s3,0(s1)
    li      s11, 2041500
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s1, 1921403
    add     s1,sp,s1
    lb      s11,0(s1)
    li      s1, 1921403
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 1881384
    add     s2,sp,s2
    sd      s2,0(s2)
    li      s2, 1921396
    add     s2,sp,s2
    lw      s1,0(s2)
    j       .while.exit_151
.while.exit_151:
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s3,0(s1)
    li      s2, 1961428
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 1841304
    add     s3,sp,s3
    sd      s5,0(s3)
    li      s4, 1961427
    add     s4,sp,s4
    sb      s6,0(s4)
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
    li      a0, 920722
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 920724
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 960740
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 960746
    add     a2,sp,a2
    sb      a3,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
    li      a0, 47
    call    chapush
    li      a0, 1921420
    add     a0,sp,a0
    lw      s2,0(a0)
    li      a0, 1921420
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 1080820
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    lw      a4,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    lw      s9,0(a3)
    li      a5, 2041495
    add     a5,sp,a5
    lb      a7,0(a5)
    li      a6, 1881396
    add     a6,sp,a6
    lw      s7,0(a6)
    li      a1, 1080820
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s1, 1080819
    add     s1,sp,s1
    lb      a1,0(s1)
    li      s3, 1881384
    add     s3,sp,s3
    ld      s8,0(s3)
    li      a2, 1961440
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s4, 1080824
    add     s4,sp,s4
    ld      a2,0(s4)
    li      s4, 1080824
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s5, 1961428
    add     s5,sp,s5
    lw      s4,0(s5)
    li      s6, 1881379
    add     s6,sp,s6
    lb      s10,0(s6)
    li      a5, 2041495
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s11, 2041500
    add     s11,sp,s11
    lw      a5,0(s11)
    li      a6, 1881396
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a3, 1921404
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1961432
    add     a3,sp,a3
    ld      a6,0(a3)
    li      s5, 1961428
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 1961432
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1881379
    add     a3,sp,a3
    sb      s6,0(a3)
    li      a3, 1961427
    add     a3,sp,a3
    lb      s6,0(a3)
    li      s3, 1881384
    add     s3,sp,s3
    sd      s3,0(s3)
    li      a3, 1961427
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 1921408
    add     a3,sp,a3
    ld      s3,0(a3)
    li      s11, 2041500
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a3, 1921408
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1921403
    add     a3,sp,a3
    lb      s11,0(a3)
    li      s1, 1080819
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a3, 1921403
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 1921396
    add     a3,sp,a3
    lw      s1,0(a3)
    j       .branch_false_148
.branch_false_154:
    li      a0, 920716
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 920715
    add     a0,sp,a0
    sb      s10,0(a0)
    li      a1, 1921420
    add     a1,sp,a1
    lw      s2,0(a1)
    li      a2, 1080820
    add     a2,sp,a2
    lw      a0,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    lw      a4,0(a3)
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    lb      a7,0(a6)
    li      s1, 1881396
    add     s1,sp,s1
    lw      s7,0(s1)
    li      a1, 1921420
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s3, 1080819
    add     s3,sp,s3
    lb      a1,0(s3)
    li      s4, 1881384
    add     s4,sp,s4
    ld      s8,0(s4)
    li      a2, 1080820
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s5, 1080824
    add     s5,sp,s5
    ld      a2,0(s5)
    li      s4, 1881384
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s6, 1961428
    add     s6,sp,s6
    lw      s4,0(s6)
    li      s11, 1881379
    add     s11,sp,s11
    lb      s10,0(s11)
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 2041500
    add     a3,sp,a3
    lw      a5,0(a3)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a6,0(a6)
    li      a3, 2041500
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1961432
    add     a3,sp,a3
    ld      a6,0(a3)
    li      s5, 1080824
    add     s5,sp,s5
    sd      s5,0(s5)
    li      a3, 1961432
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1961428
    add     a3,sp,a3
    sw      s6,0(a3)
    li      a3, 1961427
    add     a3,sp,a3
    lb      s6,0(a3)
    li      s3, 1080819
    add     s3,sp,s3
    sb      s3,0(s3)
    li      a3, 1961427
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 1921408
    add     a3,sp,a3
    ld      s3,0(a3)
    li      s11, 1881379
    add     s11,sp,s11
    sb      s11,0(s11)
    li      a3, 1921408
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1921403
    add     a3,sp,a3
    lb      s11,0(a3)
    li      s1, 1881396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a3, 1921403
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 1921396
    add     a3,sp,a3
    lw      s1,0(a3)
    j       .branch_true_148
.branch_false_148:
.L7_0:
    la      a3, i
    li      a0, 1080820
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    la      a3, get
    li      a0, 920708
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    li      a3, 0
    li      a0, 880708
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1080819
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a2, 1080824
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    li      a0, 880708
    li      a0, 880708
    add     a3,a0,a3
    lw      a0,0(a3)
    li      a2, 37
    li      a1, 920708
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_158
    j       .branch_false_158
.branch_true_158:
    la      a2, chat
    li      a0, 880692
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    la      a2, chas
    li      a0, 880684
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    li      a2, 0
    li      a0, 840684
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 880691
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a3, 880696
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    li      a0, 840684
    li      a0, 840684
    add     a2,a0,a2
    lw      a0,0(a2)
    li      a3, 94
    li      a1, 880684
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    seqz    a1, a1
    la      a3, chat
    li      a0, 840668
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    la      a3, chas
    li      a0, 840660
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    li      a3, 0
    li      a0, 800660
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 840667
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a2, 840672
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    li      a0, 800660
    li      a0, 800660
    add     a3,a0,a3
    lw      a0,0(a3)
    li      a2, 37
    li      a1, 840660
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    seqz    a1, a1
    add     a2,sp,a2
    lb      a2,0(a2)
    li      a0, 800644
    add     a0,sp,a0
    sw      a0,0(a0)
    la      a0, chat
    li      a1, 800643
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 800636
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 760636
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 840667
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 800648
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 760636
    li      a1, 760636
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 47
    li      a0, 760624
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 760619
    add     a0,sp,a0
    sb      a0,0(a0)
    la      a0, chat
    li      a1, 760620
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    la      a0, chas
    li      a1, 760612
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 720612
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 800636
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 800642
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 720612
    li      a1, 720612
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 42
    li      a0, 720600
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 720595
    add     a0,sp,a0
    sb      a0,0(a0)
    add     a0,sp,a0
    lb      a0,0(a0)
    li      s2, 1921420
    add     s2,sp,s2
    sw      s2,0(s2)
    bnez    a0, .while.body_161
    j       .while.exit_161
.while.body_161:
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s3,0(s1)
    li      s2, 1961428
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 1841304
    add     s3,sp,s3
    sd      s5,0(s3)
    li      s4, 1961427
    add     s4,sp,s4
    sb      s6,0(s4)
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
    li      a0, 720594
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 720596
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 760612
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 760618
    add     a2,sp,a2
    sb      a3,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
    call    find
    li      a0, 720588
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a7, 0
    xor     s10,a0,a7
    seqz    s10, s10
    bnez    s10, .branch_true_164
    j       .branch_false_164
.branch_true_164:
    li      a0, 720588
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 720587
    add     a0,sp,a0
    sb      s10,0(a0)
    li      a1, 720594
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    lw      a4,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    lw      s9,0(a3)
    li      a5, 2041495
    add     a5,sp,a5
    lb      a7,0(a5)
    li      a6, 1881396
    add     a6,sp,a6
    lw      s7,0(a6)
    li      a1, 720594
    add     a1,sp,a1
    sb      a1,0(a1)
    li      s1, 720596
    add     s1,sp,s1
    lw      a1,0(s1)
    li      s2, 1881384
    add     s2,sp,s2
    ld      s8,0(s2)
    li      a2, 1961440
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s3, 760612
    add     s3,sp,s3
    lw      a2,0(s3)
    li      s5, 1961428
    add     s5,sp,s5
    lw      s4,0(s5)
    li      s6, 1881379
    add     s6,sp,s6
    lb      s10,0(s6)
    li      a5, 2041495
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s11, 2041500
    add     s11,sp,s11
    lw      a5,0(s11)
    li      a6, 1881396
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a3, 1921404
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1961432
    add     a3,sp,a3
    ld      a6,0(a3)
    li      s5, 1961428
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 1961432
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 1841304
    add     a3,sp,a3
    sd      a3,0(a3)
    li      s1, 720596
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 760618
    add     s1,sp,s1
    lb      a3,0(s1)
    li      s6, 1881379
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s1, 760618
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 1961427
    add     s1,sp,s1
    lb      s6,0(s1)
    li      s3, 760612
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s1, 1961427
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    ld      s3,0(s1)
    li      s11, 2041500
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s1, 1921403
    add     s1,sp,s1
    lb      s11,0(s1)
    li      s1, 1921403
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 1881384
    add     s2,sp,s2
    sd      s2,0(s2)
    li      s2, 1921396
    add     s2,sp,s2
    lw      s1,0(s2)
    j       .while.exit_161
.while.exit_161:
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 1921408
    add     s1,sp,s1
    sd      s3,0(s1)
    li      s2, 1961428
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 1841304
    add     s3,sp,s3
    sd      s5,0(s3)
    li      s4, 1961427
    add     s4,sp,s4
    sb      s6,0(s4)
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
    li      a0, 720594
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 720596
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 760612
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 760618
    add     a2,sp,a2
    sb      a3,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
    li      a0, 37
    call    chapush
    li      a0, 1921420
    add     a0,sp,a0
    lw      s2,0(a0)
    li      a0, 1921420
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 880692
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 1961440
    add     a2,sp,a2
    lw      a4,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    lw      s9,0(a3)
    li      a5, 2041495
    add     a5,sp,a5
    lb      a7,0(a5)
    li      a6, 1881396
    add     a6,sp,a6
    lw      s7,0(a6)
    li      a1, 880692
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s1, 880691
    add     s1,sp,s1
    lb      a1,0(s1)
    li      s3, 1881384
    add     s3,sp,s3
    ld      s8,0(s3)
    li      a2, 1961440
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1961428
    add     a2,sp,a2
    lw      s4,0(a2)
    li      s5, 1881379
    add     s5,sp,s5
    lb      s10,0(s5)
    li      a5, 2041495
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s6, 2041500
    add     s6,sp,s6
    lw      a5,0(s6)
    li      a6, 1881396
    add     a6,sp,a6
    sw      a6,0(a6)
    li      s11, 1961432
    add     s11,sp,s11
    ld      a6,0(s11)
    li      s5, 1881379
    add     s5,sp,s5
    sb      s5,0(s5)
    li      a2, 1961428
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
    li      a3, 1921404
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 880696
    add     a2,sp,a2
    ld      a3,0(a2)
    li      s6, 2041500
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a2, 880696
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1961427
    add     a2,sp,a2
    lb      s6,0(a2)
    li      s3, 1881384
    add     s3,sp,s3
    sd      s3,0(s3)
    li      a2, 1961427
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1921408
    add     a2,sp,a2
    ld      s3,0(a2)
    li      s11, 1961432
    add     s11,sp,s11
    sd      s11,0(s11)
    li      a2, 1921408
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1921403
    add     a2,sp,a2
    lb      s11,0(a2)
    li      s1, 880691
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a2, 1921403
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1921396
    add     a2,sp,a2
    lw      s1,0(a2)
    j       .branch_false_158
.branch_false_164:
    li      a0, 720588
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 720587
    add     a0,sp,a0
    sb      s10,0(a0)
    li      a1, 1921420
    add     a1,sp,a1
    lw      s2,0(a1)
    li      a2, 880692
    add     a2,sp,a2
    lw      a0,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    lw      a4,0(a3)
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
    li      a6, 2041495
    add     a6,sp,a6
    lb      a7,0(a6)
    li      s1, 1881396
    add     s1,sp,s1
    lw      s7,0(s1)
    li      a1, 1921420
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s3, 880691
    add     s3,sp,s3
    lb      a1,0(s3)
    li      s4, 1881384
    add     s4,sp,s4
    ld      s8,0(s4)
    li      a2, 880692
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1881384
    add     a2,sp,a2
    sd      s4,0(a2)
    li      s5, 1961428
    add     s5,sp,s5
    lw      s4,0(s5)
    li      s6, 1881379
    add     s6,sp,s6
    lb      s10,0(s6)
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s11, 2041500
    add     s11,sp,s11
    lw      a5,0(s11)
    li      a6, 2041495
    add     a6,sp,a6
    sb      a6,0(a6)
    li      a2, 1961432
    add     a2,sp,a2
    ld      a6,0(a2)
    li      s5, 1961428
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a2, 1961432
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
    li      a3, 1961440
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 880696
    add     a2,sp,a2
    ld      a3,0(a2)
    li      s6, 1881379
    add     s6,sp,s6
    sb      s6,0(s6)
    li      a2, 880696
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1961427
    add     a2,sp,a2
    lb      s6,0(a2)
    li      s3, 880691
    add     s3,sp,s3
    sb      s3,0(s3)
    li      a2, 1961427
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1921408
    add     a2,sp,a2
    ld      s3,0(a2)
    li      s11, 2041500
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a2, 1921408
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1921403
    add     a2,sp,a2
    lb      s11,0(a2)
    li      s1, 1881396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a2, 1921403
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1921396
    add     a2,sp,a2
    lw      s1,0(a2)
    j       .branch_true_158
.branch_false_158:
.L8_0:
    la      a2, ii
    li      a0, 880692
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    li      a2, 0
    li      a0, 720580
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 880691
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a3, 880696
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    la      a0, get2
    add     a2,a2,a0
    li      a0, 32
    sw      a0,0(a2)
    la      a0, ii
    lw      a3,0(a0)
    li      a0, 1
    li      a1, 720580
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a3,a0
    la      a0, ii
    sw      a1,0(a0)
    li      s2, 1921420
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a0, 1961440
    add     a0,sp,a0
    sw      a4,0(a0)
    li      a4, 1921404
    add     a4,sp,a4
    sw      s9,0(a4)
    li      s2, 1881396
    add     s2,sp,s2
    sw      s7,0(s2)
    li      a1, 720560
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1881384
    add     a1,sp,a1
    sd      s8,0(a1)
    li      a2, 720568
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1961428
    add     a2,sp,a2
    sw      s4,0(a2)
    li      s4, 1881379
    add     s4,sp,s4
    sb      s10,0(s4)
    li      a6, 1961432
    add     a6,sp,a6
    sd      a6,0(a6)
    li      a6, 1841304
    add     a6,sp,a6
    sd      s5,0(a6)
    li      a3, 720564
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1961427
    add     a3,sp,a3
    sb      s6,0(a3)
    li      s3, 1921408
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s3, 1921403
    add     s3,sp,s3
    sb      s11,0(s3)
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 2041496
    add     s1,sp,s1
    lw      a0,0(s1)
    li      a4, 2001460
    add     a4,sp,a4
    lw      s9,0(a4)
    li      s2, 2001452
    add     s2,sp,s2
    lw      a1,0(s2)
    li      s5, 2041488
    add     s5,sp,s5
    lw      a2,0(s5)
    li      a6, 2041488
    add     a6,sp,a6
    sw      s5,0(a6)
    li      s4, 2001476
    add     s4,sp,s4
    lw      s5,0(s4)
    li      s6, 2041480
    add     s6,sp,s6
    ld      a3,0(s6)
    li      s6, 2041480
    add     s6,sp,s6
    sd      s6,0(s6)
    li      s7, 2001464
    add     s7,sp,s7
    ld      s6,0(s7)
    li      s8, 2041476
    add     s8,sp,s8
    lw      s3,0(s8)
    li      s10, 2001456
    add     s10,sp,s10
    lw      s11,0(s10)
    li      s1, 2041496
    add     s1,sp,s1
    sw      s1,0(s1)
    j       .L9_0
.L9_0:
.L10_0:
    la      a4, i
    lw      a6,0(a4)
    li      s1, 1
    add     s2,a6,s1
    la      s4, i
    sw      s2,0(s4)
    li      s2, 2001444
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a0, 2041496
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2001460
    add     a0,sp,a0
    sw      s9,0(a0)
    li      a4, 2041495
    add     a4,sp,a4
    sb      a7,0(a4)
    li      a1, 2001452
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2041488
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 2041500
    add     a2,sp,a2
    sw      a5,0(a2)
    li      a5, 2001448
    add     a5,sp,a5
    sw      a6,0(a5)
    li      a6, 2001476
    add     a6,sp,a6
    sw      s5,0(a6)
    li      a3, 2041480
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 2001464
    add     a3,sp,a3
    sd      s6,0(a3)
    li      a7, 2041476
    add     a7,sp,a7
    sw      s3,0(a7)
    li      s2, 2001456
    add     s2,sp,s2
    sw      s11,0(s2)
    li      s1, 2081532
    add     s1,sp,s1
    lw      a0,0(s1)
    li      a4, 2081536
    add     a4,sp,a4
    lw      a1,0(a4)
    li      a7, 2081528
    add     a7,sp,a7
    lw      a2,0(a7)
    li      a3, 2081532
    add     a3,sp,a3
    sw      s1,0(a3)
    j       .while.head_92
.while.exit_92:
    la      a3, chat
    lw      a6,0(a3)
    li      a7, 0
    slt     s1,a7,a6
    bnez    s1, .while.body_171
    j       .while.exit_171
.while.body_171:
    li      a3, 720555
    add     a3,sp,a3
    sb      s1,0(a3)
    li      a0, 2081532
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2081536
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2081528
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 2081524
    add     a2,sp,a2
    sw      a4,0(a2)
    li      a3, 2081523
    add     a3,sp,a3
    sb      a5,0(a3)
    li      a4, 720556
    add     a4,sp,a4
    sw      a6,0(a4)
    call    chapop
    li      a0, 720548
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a5, a0
    la      a6, ii
    lw      a7,0(a6)
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a7
    add     s1,s1,s3
    slli s1,s1,2
    la      s4, get2
    add     s1,s1,s4
    li      s5, 32
    sw      s5,0(s1)
    la      s6, ii
    lw      s7,0(s6)
    add     s8,s7,s2
    li      s9, 0
    mul     s10,s2,s8
    add     s9,s9,s10
    slli s9,s9,2
    la      s11, get2
    add     s9,s9,s11
    sw      a5,0(s9)
    la      a1, ii
    lw      a2,0(a1)
    li      a1, 2
    add     a3,a2,a1
    la      a1, ii
    sw      a3,0(a1)
    li      a0, 720548
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 720512
    add     a0,sp,a0
    sd      s9,0(a0)
    li      a4, 720540
    add     a4,sp,a4
    sw      a7,0(a4)
    li      a7, 720524
    add     a7,sp,a7
    sw      s7,0(a7)
    li      a1, 720520
    add     a1,sp,a1
    sw      s8,0(a1)
    li      a2, 720508
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 720544
    add     a2,sp,a2
    sw      a5,0(a2)
    li      a3, 720504
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 720528
    add     a3,sp,a3
    sd      s1,0(a3)
    li      a5, 2081532
    add     a5,sp,a5
    lw      a0,0(a5)
    li      a6, 2081524
    add     a6,sp,a6
    lw      a4,0(a6)
    li      a7, 2081536
    add     a7,sp,a7
    lw      a1,0(a7)
    li      s1, 2081528
    add     s1,sp,s1
    lw      a2,0(s1)
    li      a5, 2081532
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s2, 2081523
    add     s2,sp,s2
    lb      a5,0(s2)
    li      a6, 2081524
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a3, 2081528
    add     a3,sp,a3
    sw      s1,0(a3)
    j       .while.exit_92
.while.exit_171:
    la      a3, ii
    lw      a7,0(a3)
    li      s2, 0
    li      s3, 1
    mul     s4,s3,a7
    add     s2,s2,s4
    slli s2,s2,2
    la      s5, get2
    add     s2,s2,s5
    li      s6, 64
    sw      s6,0(s2)
    la      s7, i
    sw      s3,0(s7)
    j       .while.head_180
.while.head_180:
    la      a3, i
    lw      s3,0(a3)
    la      s4, get2
    lw      s5,0(s4)
    li      s6, 0
    li      s7, 1
    mul     s8,s7,s3
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    li      s9, 680484
    li      s9, 680484
    add     s6,s9,s6
    lw      s10,0(s6)
    li      s11, 64
    xor     a3,s10,s11
    snez    a3, a3
    bnez    a3, .while.body_180
    j       .while.exit_180
.while.body_180:
    la      s4, i
    lw      s7,0(s4)
    la      s8, get2
    lw      s9,0(s8)
    li      s11, 0
    li      s4, 1
    mul     s8,s4,s7
    add     s11,s11,s8
    slli s11,s11,2
    add     s11,s11,sp
    li      s4, 640460
    li      s4, 640460
    add     s11,s4,s11
    lw      s4,0(s11)
    li      s8, 94
    li      a0, 2081532
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s4,s8
    seqz    a0, a0
    la      s8, i
    li      a0, 640443
    add     a0,sp,a0
    sb      a0,0(a0)
    lw      a0,0(s8)
    la      s8, get2
    li      a0, 640436
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(s8)
    li      s8, 0
    li      a0, 600436
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2081536
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a2, 2081528
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    add     s8,s8,a2
    slli s8,s8,2
    add     s8,s8,sp
    li      a0, 600436
    li      a0, 600436
    add     s8,a0,s8
    lw      a0,0(s8)
    li      a2, 37
    li      a1, 640436
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    seqz    a1, a1
    add     a2,sp,a2
    lb      a2,0(a2)
    li      a0, 600420
    add     a0,sp,a0
    sw      a0,0(a0)
    la      a0, i
    li      a1, 600419
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
    la      a0, get2
    li      a1, 600412
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 560412
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 640443
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 680467
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 560412
    li      a1, 560412
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 47
    li      a0, 560400
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 560395
    add     a0,sp,a0
    sb      a0,0(a0)
    la      a0, i
    li      a1, 560396
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    la      a0, get2
    li      a1, 560388
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 520388
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 600412
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 600418
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 520388
    li      a1, 520388
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 42
    li      a0, 520376
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 520371
    add     a0,sp,a0
    sb      a0,0(a0)
    la      a0, i
    li      a1, 520372
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    la      a0, get2
    li      a1, 520364
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 480364
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 560388
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 560394
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 480364
    li      a1, 480364
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 45
    li      a0, 480352
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 480347
    add     a0,sp,a0
    sb      a0,0(a0)
    la      a0, i
    li      a1, 480348
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    la      a0, get2
    li      a1, 480340
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 440340
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 520364
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 520370
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 440340
    li      a1, 440340
    add     a0,a1,a0
    lw      a1,0(a0)
    li      a3, 43
    li      a0, 440328
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,a1,a3
    seqz    a0, a0
    add     a3,sp,a3
    lb      a3,0(a3)
    li      a0, 440323
    add     a0,sp,a0
    sb      a0,0(a0)
    add     a0,sp,a0
    lb      a0,0(a0)
    li      s2, 720488
    add     s2,sp,s2
    sd      s2,0(s2)
    bnez    a0, .branch_true_183
    j       .branch_false_183
.branch_true_183:
    li      s1, 720555
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 720484
    add     s1,sp,s1
    sw      s3,0(s1)
    li      s2, 640444
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 680484
    add     s3,sp,s3
    sw      s5,0(s3)
    li      s4, 680472
    add     s4,sp,s4
    sd      s6,0(s4)
    li      s5, 680460
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 600424
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 640460
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 680468
    add     s8,sp,s8
    sw      s10,0(s8)
    li      s9, 640448
    add     s9,sp,s9
    sd      s11,0(s9)
    li      a0, 440322
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 440324
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 480340
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 480346
    add     a2,sp,a2
    sb      a3,0(a2)
    li      a3, 2081524
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2081523
    add     a4,sp,a4
    sb      a5,0(a4)
    li      a5, 720556
    add     a5,sp,a5
    sw      a6,0(a5)
    li      a6, 720500
    add     a6,sp,a6
    sw      a7,0(a6)
    call    intpop
    li      a0, 440316
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a7, a0
    li      a0, 440316
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 440312
    add     a0,sp,a0
    sw      a7,0(a0)
    call    intpop
    li      a0, 440308
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a1, a0
    j       .L11_0
.L11_0:
    la      a2, i
    lw      a3,0(a2)
    la      a4, get2
    lw      a5,0(a4)
    li      a6, 0
    li      a7, 1
    mul     s1,a7,a3
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    li      s2, 400296
    li      s2, 400296
    add     a6,s2,a6
    lw      s3,0(a6)
    li      s4, 43
    xor     s5,s3,s4
    seqz    s5, s5
    bnez    s5, .branch_true_189
    j       .branch_false_189
.branch_true_189:
    add     a2,sp,a2
    lw      a2,0(a2)
    add     a4,a2,a1
    mv      a7, a4
    li      a4, 400276
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 440300
    add     a4,sp,a4
    sw      a7,0(a4)
    li      a2, 440312
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .branch_false_189
.branch_false_189:
.L12_0:
    la      a2, i
    lw      a4,0(a2)
    la      a7, get2
    lw      s1,0(a7)
    li      s2, 0
    li      s4, 1
    mul     s6,s4,a4
    add     s2,s2,s6
    slli s2,s2,2
    add     s2,s2,sp
    li      s7, 360272
    li      s7, 360272
    add     s2,s7,s2
    lw      s8,0(s2)
    li      s9, 45
    xor     s10,s8,s9
    seqz    s10, s10
    bnez    s10, .branch_true_192
    j       .branch_false_192
.branch_true_192:
    add     a2,sp,a2
    lw      a2,0(a2)
    sub     a7,a1,a2
    mv      s4, a7
    li      a7, 360252
    add     a7,sp,a7
    sw      a7,0(a7)
    li      a2, 440312
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 440300
    add     a2,sp,a2
    sw      s4,0(a2)
    j       .branch_false_192
.branch_false_192:
.L13_0:
    la      a2, i
    lw      a7,0(a2)
    la      s4, get2
    lw      s6,0(s4)
    li      s7, 0
    li      s9, 1
    mul     s11,s9,a7
    add     s7,s7,s11
    slli s7,s7,2
    add     s7,s7,sp
    li      a2, 320248
    li      a2, 320248
    add     s7,a2,s7
    lw      a2,0(s7)
    li      s4, 42
    xor     s9,a2,s4
    seqz    s9, s9
    bnez    s9, .branch_true_195
    j       .branch_false_195
.branch_true_195:
    add     s4,sp,s4
    lw      s4,0(s4)
    mul     s11,s4,a1
    li      a0, 440308
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s11
    li      a0, 440300
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 440312
    add     a0,sp,a0
    sw      s4,0(a0)
    li      s4, 320228
    add     s4,sp,s4
    sw      s11,0(s4)
    li      s11, 440308
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s4, 440308
    add     s4,sp,s4
    sw      s11,0(s4)
    j       .branch_false_195
.branch_false_195:
.L14_0:
    la      s4, i
    lw      s11,0(s4)
    la      s4, get2
    li      a0, 440308
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(s4)
    li      s4, 0
    li      a0, 280224
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 440304
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,s11
    add     s4,s4,a1
    slli s4,s4,2
    add     s4,s4,sp
    li      a0, 280224
    li      a0, 280224
    add     s4,a0,s4
    lw      a0,0(s4)
    li      a1, 47
    li      a2, 320236
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_198
    j       .branch_false_198
.branch_true_198:
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a0, 280212
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,sp,a0
    lw      a0,0(a0)
    li      a2, 280211
    add     a2,sp,a2
    sb      a2,0(a2)
    div     a2,a1,a0
    li      a0, 440312
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a2
    li      a0, 440300
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 440304
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 280204
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 280212
    add     a2,sp,a2
    lw      a0,0(a2)
    li      a1, 280212
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a1, 280211
    add     a1,sp,a1
    lb      a2,0(a1)
    j       .branch_false_198
.branch_false_198:
.L15_0:
    la      a1, i
    li      a0, 280212
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
    la      a1, get2
    li      a0, 280200
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
    li      a1, 0
    li      a0, 240200
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 280211
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,sp,a2
    lw      a2,0(a2)
    li      a3, 440296
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    li      a0, 240200
    li      a0, 240200
    add     a1,a0,a1
    lw      a0,0(a1)
    li      a3, 37
    li      a1, 240192
    add     a1,sp,a1
    sd      a1,0(a1)
    xor     a1,a0,a3
    seqz    a1, a1
    bnez    a1, .branch_true_201
    j       .branch_false_201
.branch_true_201:
    add     a3,sp,a3
    lw      a3,0(a3)
    li      a0, 240188
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,sp,a0
    lw      a0,0(a0)
    li      a1, 240187
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    rem     a1,a3,a0
    li      a0, 440312
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
    li      a0, 440300
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 240180
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 440304
    add     a1,sp,a1
    sw      a3,0(a1)
    li      a3, 240188
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a2, 280200
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 240187
    add     a2,sp,a2
    lb      a1,0(a2)
    li      a2, 240187
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 240188
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 280200
    add     a3,sp,a3
    lw      a2,0(a3)
    li      a3, 280200
    add     a3,sp,a3
    sw      a3,0(a3)
    j       .branch_false_201
.branch_false_201:
.L16_0:
    la      a3, i
    li      a0, 240188
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    la      a3, get2
    li      a0, 240176
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a3)
    li      a3, 0
    li      a0, 200176
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 240187
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a2, 280200
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    li      a0, 200176
    li      a0, 200176
    add     a3,a0,a3
    lw      a0,0(a3)
    li      a2, 94
    li      a1, 240176
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_204
    j       .branch_false_204
.branch_true_204:
    li      a2, 360272
    add     a2,sp,a2
    sw      s1,0(a2)
    li      s1, 360264
    add     s1,sp,s1
    sd      s2,0(s1)
    li      s2, 400284
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 280216
    add     s3,sp,s3
    sd      s4,0(s3)
    li      s4, 400283
    add     s4,sp,s4
    sb      s5,0(s4)
    li      s5, 320248
    add     s5,sp,s5
    sw      s6,0(s5)
    li      s6, 320240
    add     s6,sp,s6
    sd      s7,0(s6)
    li      s7, 360260
    add     s7,sp,s7
    sw      s8,0(s7)
    li      s8, 320235
    add     s8,sp,s8
    sb      s9,0(s8)
    li      s9, 360259
    add     s9,sp,s9
    sb      s10,0(s9)
    li      s10, 320224
    add     s10,sp,s10
    sw      s11,0(s10)
    li      a0, 200164
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 200163
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 200168
    add     a1,sp,a1
    sd      a3,0(a1)
    li      a2, 400272
    add     a2,sp,a2
    sw      a4,0(a2)
    li      a3, 400296
    add     a3,sp,a3
    sw      a5,0(a3)
    li      a4, 400288
    add     a4,sp,a4
    sd      a6,0(a4)
    li      a5, 360248
    add     a5,sp,a5
    sw      a7,0(a5)
    li      a6, 440304
    add     a6,sp,a6
    lw      a0,0(a6)
    li      a7, 440312
    add     a7,sp,a7
    lw      a1,0(a7)
    call    power
    li      a0, 200156
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a1, a0
    li      a0, 200156
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 440312
    add     a0,sp,a0
    sw      a7,0(a0)
    li      a1, 440300
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 440304
    add     a1,sp,a1
    sw      a6,0(a1)
    li      a2, 360264
    add     a2,sp,a2
    ld      s2,0(a2)
    li      a3, 200164
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a5, 400272
    add     a5,sp,a5
    lw      a4,0(a5)
    li      a6, 320235
    add     a6,sp,a6
    lb      s9,0(a6)
    li      s1, 360248
    add     s1,sp,s1
    lw      a7,0(s1)
    li      s3, 320240
    add     s3,sp,s3
    ld      s7,0(s3)
    li      s4, 200163
    add     s4,sp,s4
    lb      a1,0(s4)
    li      s5, 360260
    add     s5,sp,s5
    lw      s8,0(s5)
    li      a2, 360264
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 200163
    add     a2,sp,a2
    sb      s4,0(a2)
    li      s6, 280216
    add     s6,sp,s6
    ld      s4,0(s6)
    li      s11, 360259
    add     s11,sp,s11
    lb      s10,0(s11)
    li      a5, 400272
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a2, 400296
    add     a2,sp,a2
    lw      a5,0(a2)
    li      a6, 320235
    add     a6,sp,a6
    sb      a6,0(a6)
    li      a2, 400296
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 400288
    add     a2,sp,a2
    ld      a6,0(a2)
    li      s5, 360260
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a2, 400288
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 400283
    add     a2,sp,a2
    lb      s5,0(a2)
    li      a3, 200164
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a2, 400283
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 200168
    add     a2,sp,a2
    ld      a3,0(a2)
    li      s6, 280216
    add     s6,sp,s6
    sd      s6,0(s6)
    li      a2, 200168
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 320248
    add     a2,sp,a2
    lw      s6,0(a2)
    li      s3, 320240
    add     s3,sp,s3
    sd      s3,0(s3)
    li      a2, 320248
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 400284
    add     a2,sp,a2
    lw      s3,0(a2)
    li      s11, 360259
    add     s11,sp,s11
    sb      s11,0(s11)
    li      a2, 400284
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 320224
    add     a2,sp,a2
    lw      s11,0(a2)
    li      s1, 360248
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a2, 320224
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 360272
    add     a2,sp,a2
    lw      s1,0(a2)
    j       .branch_false_204
.branch_false_204:
.L17_0:
    li      a2, 360272
    add     a2,sp,a2
    sw      s1,0(a2)
    li      s1, 360264
    add     s1,sp,s1
    sd      s2,0(s1)
    li      s2, 400284
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 280216
    add     s3,sp,s3
    sd      s4,0(s3)
    li      s4, 400283
    add     s4,sp,s4
    sb      s5,0(s4)
    li      s5, 320248
    add     s5,sp,s5
    sw      s6,0(s5)
    li      s6, 320240
    add     s6,sp,s6
    sd      s7,0(s6)
    li      s7, 360260
    add     s7,sp,s7
    sw      s8,0(s7)
    li      s8, 320235
    add     s8,sp,s8
    sb      s9,0(s8)
    li      s9, 360259
    add     s9,sp,s9
    sb      s10,0(s9)
    li      s10, 320224
    add     s10,sp,s10
    sw      s11,0(s10)
    li      a0, 200164
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 200163
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 200168
    add     a1,sp,a1
    sd      a3,0(a1)
    li      a2, 400272
    add     a2,sp,a2
    sw      a4,0(a2)
    li      a3, 400296
    add     a3,sp,a3
    sw      a5,0(a3)
    li      a4, 400288
    add     a4,sp,a4
    sd      a6,0(a4)
    li      a5, 360248
    add     a5,sp,a5
    sw      a7,0(a5)
    li      a6, 440300
    add     a6,sp,a6
    lw      a0,0(a6)
    call    intpush
    j       .L18_0
.branch_false_183:
    la      s2, i
    li      a0, 440322
    add     a0,sp,a0
    sb      a0,0(a0)
    lw      a0,0(s2)
    la      s2, get2
    li      a0, 200144
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(s2)
    li      s2, 0
    li      a0, 160144
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 440324
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a2, 480340
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    add     s2,s2,a2
    slli s2,s2,2
    add     s2,s2,sp
    li      a0, 160144
    li      a0, 160144
    add     s2,a0,s2
    lw      a0,0(s2)
    li      a2, 32
    li      a1, 200144
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_209
    j       .branch_false_209
.branch_true_209:
    la      a2, i
    li      a0, 160132
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    la      a2, get2
    li      a0, 160124
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a2)
    li      a2, 0
    li      a0, 120124
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 160131
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,sp,a1
    lw      a1,0(a1)
    li      a3, 480346
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    li      a0, 120124
    li      a0, 120124
    add     a2,a0,a2
    lw      a0,0(a2)
    li      a3, 48
    li      a1, 160124
    add     a1,sp,a1
    sw      a1,0(a1)
    sub     a1,a0,a3
    li      s1, 720555
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 160136
    add     s1,sp,s1
    sd      s2,0(s1)
    li      s2, 720484
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 640444
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 680484
    add     s4,sp,s4
    sw      s5,0(s4)
    li      s5, 680472
    add     s5,sp,s5
    sd      s6,0(s5)
    li      s6, 680460
    add     s6,sp,s6
    sw      s7,0(s6)
    li      s7, 600424
    add     s7,sp,s7
    sd      s8,0(s7)
    li      s8, 640460
    add     s8,sp,s8
    sw      s9,0(s8)
    li      s9, 680468
    add     s9,sp,s9
    sw      s10,0(s9)
    li      s10, 640448
    add     s10,sp,s10
    sd      s11,0(s10)
    li      a0, 120108
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 120104
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 120112
    add     a1,sp,a1
    sd      a2,0(a1)
    li      a2, 2081524
    add     a2,sp,a2
    sw      a4,0(a2)
    li      a3, 2081523
    add     a3,sp,a3
    sb      a5,0(a3)
    li      a4, 720556
    add     a4,sp,a4
    sw      a6,0(a4)
    li      a5, 720500
    add     a5,sp,a5
    sw      a7,0(a5)
    li      a6, 120104
    add     a6,sp,a6
    lw      a0,0(a6)
    call    intpush
    la      a0, ii
    li      a7, 1
    sw      a7,0(a0)
    j       .while.head_214
.while.head_214:
    la      a0, ii
    lw      a1,0(a0)
    la      a2, i
    lw      a3,0(a2)
    add     a4,a3,a1
    la      a5, get2
    lw      a7,0(a5)
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a4
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,sp
    li      s4, 80092
    li      s4, 80092
    add     s1,s4,s1
    lw      s5,0(s1)
    li      s6, 32
    xor     s7,s5,s6
    snez    s7, s7
    bnez    s7, .while.body_214
    j       .while.exit_214
.while.body_214:
    la      a0, ii
    lw      a2,0(a0)
    la      a5, i
    lw      s2,0(a5)
    add     s3,s2,a2
    la      s4, get2
    lw      s6,0(s4)
    li      s8, 0
    li      s9, 1
    mul     s10,s9,s3
    add     s8,s8,s10
    slli s8,s8,2
    add     s8,s8,sp
    li      s11, 40060
    li      s11, 40060
    add     s8,s11,s8
    lw      a0,0(s8)
    li      a5, 48
    sub     s4,a0,a5
    li      s1, 80080
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s1, 80064
    add     s1,sp,s1
    sw      s2,0(s1)
    li      s2, 80060
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 40040
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 80076
    add     s4,sp,s4
    sw      s5,0(s4)
    add     s11,sp,s11
    sw      s6,0(s11)
    li      s5, 80075
    add     s5,sp,s5
    sb      s7,0(s5)
    li      s6, 40048
    add     s6,sp,s6
    sd      s8,0(s6)
    li      a0, 40044
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 120100
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 80068
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 120096
    add     a2,sp,a2
    sw      a3,0(a2)
    li      a3, 120092
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 120104
    add     a4,sp,a4
    sw      a6,0(a4)
    li      a5, 80092
    add     a5,sp,a5
    sw      a7,0(a5)
    li      a6, 40040
    add     a6,sp,a6
    lw      a0,0(a6)
    call    intadd
    la      a0, ii
    lw      a7,0(a0)
    li      s7, 1
    add     s8,a7,s7
    la      s9, ii
    sw      s8,0(s9)
    li      a0, 40036
    add     a0,sp,a0
    sw      a7,0(a0)
    li      a1, 40032
    add     a1,sp,a1
    sw      s8,0(a1)
    add     s3,sp,s3
    sw      a6,0(s3)
    li      a0, 120104
    add     a0,sp,a0
    lw      a6,0(a0)
    j       .while.head_214
.while.exit_214:
    la      a0, ii
    lw      a2,0(a0)
    la      a5, i
    lw      s2,0(a5)
    add     s3,s2,a2
    li      s4, 1
    sub     s6,s3,s4
    la      s8, i
    sw      s6,0(s8)
    li      s2, 40024
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a0, 120092
    add     a0,sp,a0
    sw      a4,0(a0)
    li      a4, 80092
    add     a4,sp,a4
    sw      a7,0(a4)
    li      a7, 80075
    add     a7,sp,a7
    sb      s7,0(a7)
    li      a1, 120100
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 40028
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 120104
    add     a2,sp,a2
    sw      a6,0(a2)
    li      a5, 80076
    add     a5,sp,a5
    sw      s5,0(a5)
    li      a3, 120096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 40016
    add     a3,sp,a3
    sw      s6,0(a3)
    li      a6, 40020
    add     a6,sp,a6
    sw      s3,0(a6)
    li      s1, 80080
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s1, 160136
    add     s1,sp,s1
    ld      s2,0(s1)
    li      s3, 160132
    add     s3,sp,s3
    lw      a0,0(s3)
    li      s4, 2081524
    add     s4,sp,s4
    lw      a4,0(s4)
    li      s5, 640460
    add     s5,sp,s5
    lw      s9,0(s5)
    li      s6, 720500
    add     s6,sp,s6
    lw      a7,0(s6)
    li      s8, 680460
    add     s8,sp,s8
    lw      s7,0(s8)
    li      s10, 160131
    add     s10,sp,s10
    lb      a1,0(s10)
    li      s8, 680460
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s11, 600424
    add     s11,sp,s11
    ld      s8,0(s11)
    li      a2, 2081524
    add     a2,sp,a2
    sw      s4,0(a2)
    li      a2, 640444
    add     a2,sp,a2
    lw      s4,0(a2)
    li      s10, 160131
    add     s10,sp,s10
    sb      s10,0(s10)
    li      a3, 680468
    add     a3,sp,a3
    lw      s10,0(a3)
    li      a6, 2081523
    add     a6,sp,a6
    lb      a5,0(a6)
    li      a6, 2081523
    add     a6,sp,a6
    sb      a6,0(a6)
    li      a2, 640444
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 720556
    add     a2,sp,a2
    lw      a6,0(a2)
    li      s5, 640460
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a2, 720556
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 680484
    add     a2,sp,a2
    lw      s5,0(a2)
    li      a3, 680468
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a2, 680484
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 480346
    add     a2,sp,a2
    lb      a3,0(a2)
    li      s6, 720500
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a2, 480346
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 680472
    add     a2,sp,a2
    ld      s6,0(a2)
    li      s3, 160132
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a2, 680472
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 720484
    add     a2,sp,a2
    lw      s3,0(a2)
    li      s11, 600424
    add     s11,sp,s11
    sd      s11,0(s11)
    li      a2, 720484
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 640448
    add     a2,sp,a2
    ld      s11,0(a2)
    li      s1, 160136
    add     s1,sp,s1
    sd      s1,0(s1)
    li      a2, 640448
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 720555
    add     a2,sp,a2
    lb      s1,0(a2)
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
    li      a0, 200152
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 440300
    add     a1,sp,a1
    sw      a6,0(a1)
    li      a2, 200148
    add     a2,sp,a2
    sw      a3,0(a2)
    li      a3, 720488
    add     a3,sp,a3
    ld      s2,0(a3)
    li      a4, 2081532
    add     a4,sp,a4
    lw      a0,0(a4)
    li      a4, 2081532
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a5, 2081524
    add     a5,sp,a5
    lw      a4,0(a5)
    li      a6, 720500
    add     a6,sp,a6
    lw      a7,0(a6)
    li      s1, 2081536
    add     s1,sp,s1
    lw      a1,0(s1)
    li      s3, 2081528
    add     s3,sp,s3
    lw      a2,0(s3)
    li      a5, 2081524
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s4, 2081523
    add     s4,sp,s4
    lb      a5,0(s4)
    li      a6, 720500
    add     a6,sp,a6
    sw      a6,0(a6)
    li      s5, 720556
    add     s5,sp,s5
    lw      a6,0(s5)
    li      s5, 720556
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 720488
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 2081528
    add     a3,sp,a3
    sw      s3,0(a3)
    li      s1, 2081536
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s3, 720555
    add     s3,sp,s3
    lb      s1,0(s3)
    j       .while.head_180
.while.exit_180:
    la      s4, ints
    lw      s7,0(s4)
    li      s8, 0
    li      s9, 1
    li      s11, 1
    mul     s4,s9,s11
    add     s8,s8,s4
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,16
    lw      s4,0(s8)
    li      s1, 720555
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s1, 720488
    add     s1,sp,s1
    sd      s2,0(s1)
    li      s2, 720484
    add     s2,sp,s2
    sw      s3,0(s2)
    sw      s4,4(sp)
    li      s3, 680484
    add     s3,sp,s3
    sw      s5,0(s3)
    li      s4, 680472
    add     s4,sp,s4
    sd      s6,0(s4)
    sw      s7,16(sp)
    sd      s8,8(sp)
    li      s5, 680468
    add     s5,sp,s5
    sw      s10,0(s5)
    li      a0, 2081532
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2081536
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2081528
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 680467
    add     a2,sp,a2
    sb      a3,0(a2)
    li      a3, 2081524
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 2081523
    add     a4,sp,a4
    sb      a5,0(a4)
    li      a5, 720556
    add     a5,sp,a5
    sw      a6,0(a5)
    li      a6, 720500
    add     a6,sp,a6
    sw      a7,0(a6)
    lw      a0,4(sp)
    call    putint
    li      a0, 2121544
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a7, 2121536
    add     a7,sp,a7
    ld      s0,0(a7)
    li      a0, 2121544
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    li      s6, 2121552
    li      s6, 2121552
    add     sp,s6,sp
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
