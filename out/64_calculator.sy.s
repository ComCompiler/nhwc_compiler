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
    .globl isdigit
    .type isdigit,@function
isdigit:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L30_0:
    li      a1, 57
    slt     a2,a0,a1
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
    li      a0, 1
    addi    sp,sp,24
    ret
.branch_false_28:
.L31_0:
    ld      ra,16(sp)
    ld      s0,8(sp)
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
    mul     a5,a2,a0
    li      a6, 1
    sub     a7,a1,a6
    j       .while.head_36
.while.exit_36:
    ld      ra,32(sp)
    ld      s0,24(sp)
    mv      a0, a2
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
    call    getch
    sd      a0,32(sp)
    sw      a0,28(sp)
    mv      a1, a0
    li      a2, 0
    j       .while.head_47
.while.head_47:
    li      a3, 10
    xor     a4,a3,a1
    snez    a4, a4
    li      a5, 13
    xor     a6,a1,a5
    snez    a6, a6
    and     a7,a6,a4
    bnez    a7, .while.body_47
    j       .while.exit_47
.while.body_47:
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a2
    add     s1,s1,s3
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
    sd      a1,0(s1)
    add     s4,a2,s2
    sd      s1,8(sp)
    sd      s3,32(sp)
    sw      s4,4(sp)
    call    getch
    sw      a0,28(sp)
    sw      a0,0(sp)
    j       .while.head_47
.while.exit_47:
    ld      ra,48(sp)
    ld      s0,40(sp)
    mv      a0, a2
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
    li      a4, 1
    add     a5,a3,a4
    la      a6, intt
    sd      a5,0(a6)
    la      a7, intt
    lw      s1,0(a7)
    li      s2, 0
    mul     s4,a4,s3
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,s2
    sd      a0,0(s2)
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
    li      a4, 1
    add     a5,a3,a4
    la      a6, chat
    sd      a5,0(a6)
    la      a7, chat
    lw      s1,0(a7)
    li      s2, 0
    mul     s4,a4,s3
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,s2
    sd      a0,0(s2)
    .globl intpop
    .type intpop,@function
intpop:
    li      a0, -40048
    li      a0, -40048
    add     sp,a0,sp
    sd      ra,40040(sp)
    sd      s0,40032(sp)
    li      a1, 40048
    li      a1, 40048
    add     s0,a1,sp
.L25_0:
    la      a2, intt
    lw      a3,0(a2)
    li      a5, 1
    sub     a6,a4,a5
    la      a7, intt
    sd      a6,0(a7)
    la      s1, intt
    lw      s2,0(s1)
    add     s4,s3,a5
    la      s5, ints
    lw      s6,0(s5)
    li      s7, 0
    mul     s8,a5,s4
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    li      s9, 40040
    add     s9,sp,s9
    ld      ra,0(s9)
    li      s10, 40032
    add     s10,sp,s10
    ld      s0,0(s10)
    lw      a0,4(sp)
    li      a1, 40048
    add     sp,a1,sp
    ret
    .globl chapop
    .type chapop,@function
chapop:
    li      a0, -40048
    li      a0, -40048
    add     sp,a0,sp
    sd      ra,40040(sp)
    sd      s0,40032(sp)
    li      a1, 40048
    li      a1, 40048
    add     s0,a1,sp
.L24_0:
    la      a2, chat
    lw      a3,0(a2)
    li      a5, 1
    sub     a6,a4,a5
    la      a7, chat
    sd      a6,0(a7)
    la      s1, chat
    lw      s2,0(s1)
    add     s4,s3,a5
    la      s5, chas
    lw      s6,0(s5)
    li      s7, 0
    mul     s8,a5,s4
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    li      s9, 40040
    add     s9,sp,s9
    ld      ra,0(s9)
    li      s10, 40032
    add     s10,sp,s10
    ld      s0,0(s10)
    lw      a0,4(sp)
    li      a1, 40048
    add     sp,a1,sp
    ret
    .globl intadd
    .type intadd,@function
intadd:
    li      a1, -80096
    li      a1, -80096
    add     sp,a1,sp
    sd      ra,80088(sp)
    sd      s0,80080(sp)
    li      a2, 80096
    li      a2, 80096
    add     s0,a2,sp
.L23_0:
    la      a3, intt
    lw      a4,0(a3)
    li      a5, 0
    li      a6, 1
    mul     s1,a6,a7
    add     a5,a5,s1
    slli a5,a5,2
    add     a5,a5,a5
    la      s2, intt
    lw      s3,0(s2)
    la      s4, ints
    lw      s5,0(s4)
    li      s6, 0
    mul     s8,a6,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s10, 10
    mul     s11,s9,s10
    sd      s11,0(a5)
    la      a1, intt
    lw      a2,0(a1)
    li      a1, 0
    mul     a3,a6,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,a1
    la      a3, intt
    lw      a4,0(a3)
    la      a3, ints
    lw      a4,0(a3)
    li      a3, 0
    mul     s1,a6,a4
    add     a3,a3,s1
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
    add     s2,a6,a0
    sd      s2,0(a1)
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
    sd      a0,0(a1)
    la      a2, ii
    lw      a3,0(a2)
    li      a4, 0
    li      a5, 1
    mul     a7,a5,a6
    add     a4,a4,a7
    slli a4,a4,2
    add     a4,a4,a4
    li      s1, 32
    sd      s1,0(a4)
    la      s2, ii
    lw      s3,0(s2)
    add     s5,s4,a5
    li      s6, 0
    mul     s7,a5,s5
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,s6
    la      s8, c
    lw      s9,0(s8)
    sd      s10,0(s6)
    la      s11, ii
    lw      a1,0(s11)
    li      a2, 2
    add     a3,a1,a2
    la      a2, ii
    sd      a3,0(a2)
    j       .L21_0
.L21_0:
    la      a2, chat
    lw      a5,0(a2)
    li      a5, 0
    xor     a7,a2,a5
    seqz    a7, a7
    bnez    a7, .branch_true_83
    j       .branch_false_83
.branch_true_83:
    ld      ra,64(sp)
    ld      s0,56(sp)
    li      a0, 0
    addi    sp,sp,72
    ret
.branch_false_83:
.L22_0:
    ld      ra,64(sp)
    ld      s0,56(sp)
    li      a0, 1
    addi    sp,sp,72
    ret
    .globl main
    .type main,@function
main:
    li      a0, -1161000
    li      a0, -1161000
    add     sp,a0,sp
    sd      ra,1160992(sp)
    sd      s0,1160984(sp)
    li      a1, 1161000
    li      a1, 1161000
    add     s0,a1,sp
.L0_0:
    la      a2, intt
    li      a3, 0
    sd      a3,0(a2)
    la      a4, chat
    sd      a3,0(a4)
    la      a5, get
    lw      a6,0(a5)
    call    getstr
    sw      a0,1120980(sp)
    mv      a7, a0
    j       .while.head_92
.while.head_92:
    la      s1, i
    lw      s2,0(s1)
    slt     s4,s3,a7
    bnez    s4, .while.body_92
    j       .while.exit_92
.while.body_92:
    la      s5, i
    lw      s6,0(s5)
    la      s7, get
    lw      s8,0(s7)
    li      s9, 0
    li      s10, 1
    mul     a1,s10,s11
    add     s9,s9,a1
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    sw      s3,1120972(sp)
    sb      s4,1120971(sp)
    sd      s9,1080952(sp)
    sw      s11,1120964(sp)
    sw      a0,1120980(sp)
    call    isdigit
    sw      a0,1080944(sp)
    li      s1, 1
    xor     s2,a0,s1
    seqz    s2, s2
    bnez    s2, .branch_true_95
    j       .branch_false_95
.branch_true_95:
    la      s3, ii
    lw      s4,0(s3)
    li      s5, 0
    mul     s7,s1,s6
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,s5
    la      s8, i
    lw      s9,0(s8)
    la      s10, get
    lw      s11,0(s10)
    li      a2, 0
    mul     a4,s1,a3
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    sd      a5,0(s5)
    la      a6, ii
    lw      s1,0(a6)
    li      s1, 1
    add     s3,a6,s1
    la      s1, ii
    sd      s3,0(s1)
    j       .L9_0
.branch_false_95:
    la      s1, i
    lw      s4,0(s1)
    la      s1, get
    lw      s4,0(s1)
    li      s1, 0
    li      s4, 1
    mul     s8,s4,s7
    add     s1,s1,s8
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    li      s9, 40
    xor     s10,s4,s9
    seqz    s10, s10
    bnez    s10, .branch_true_101
    j       .branch_false_101
.branch_true_101:
    sd      s1,1000880(sp)
    sb      s2,1080943(sp)
    sw      s3,1040900(sp)
    sw      s4,1000876(sp)
    sd      s5,1080928(sp)
    sw      s6,1080936(sp)
    sw      s7,1040888(sp)
    sw      s8,1040884(sp)
    sb      s10,1000875(sp)
    sw      a0,1080944(sp)
    li      a0, 40
    call    chapush
    j       .branch_false_101
.branch_false_101:
.L1_0:
    la      a0, i
    lw      s1,0(a0)
    la      s2, get
    lw      s3,0(s2)
    li      s4, 0
    li      s5, 1
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s9, 94
    xor     s10,s8,s9
    seqz    s10, s10
    bnez    s10, .branch_true_104
    j       .branch_false_104
.branch_true_104:
    sd      s4,960856(sp)
    sw      s6,1000868(sp)
    sw      s7,1000864(sp)
    sw      s8,960852(sp)
    sb      s10,960851(sp)
    li      a0, 94
    call    chapush
    j       .branch_false_104
.branch_false_104:
.L2_0:
    la      a0, i
    lw      s1,0(a0)
    la      s2, get
    lw      s3,0(s2)
    li      s4, 0
    li      s5, 1
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s9, 41
    xor     s10,s8,s9
    seqz    s10, s10
    bnez    s10, .branch_true_107
    j       .branch_false_107
.branch_true_107:
    sd      s4,920832(sp)
    sw      s6,960844(sp)
    sw      s7,960840(sp)
    sw      s8,920828(sp)
    sb      s10,920827(sp)
    call    chapop
    sw      a0,920820(sp)
    la      s1, c
    sd      a0,0(s1)
    j       .while.head_111
.while.head_111:
    la      s2, c
    lw      s3,0(s2)
    li      s5, 40
    xor     s6,s4,s5
    snez    s6, s6
    bnez    s6, .while.body_111
    j       .while.exit_111
.while.body_111:
    la      s7, ii
    lw      s8,0(s7)
    li      s9, 0
    li      s10, 1
    mul     s1,s10,s11
    add     s9,s9,s1
    slli s9,s9,2
    add     s9,s9,s9
    li      s1, 32
    sd      s1,0(s9)
    la      s1, ii
    lw      s2,0(s1)
    add     s2,s1,s10
    li      s3, 0
    mul     s5,s10,s2
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,s3
    la      s5, c
    lw      s7,0(s5)
    sd      s5,0(s3)
    la      s7, ii
    lw      s8,0(s7)
    li      s8, 2
    add     s10,s7,s8
    la      s8, ii
    sd      s10,0(s8)
    sw      s1,920796(sp)
    sw      s2,920792(sp)
    sd      s3,920784(sp)
    sw      s4,920816(sp)
    sw      s5,920780(sp)
    sb      s6,920815(sp)
    sw      s7,920776(sp)
    sd      s9,920800(sp)
    sw      s10,920772(sp)
    sw      s11,920808(sp)
    call    chapop
    sw      a0,920820(sp)
    sw      a0,920768(sp)
    la      s1, c
    sd      a0,0(s1)
    j       .while.head_111
.while.exit_111:
.L3_0:
    la      s2, i
    lw      s3,0(s2)
    la      s4, get
    lw      s5,0(s4)
    li      s6, 0
    li      s7, 1
    mul     s9,s7,s8
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s11, 43
    xor     s1,s10,s11
    seqz    s1, s1
    bnez    s1, .branch_true_118
    j       .branch_false_118
.while.head_121:
    la      s2, chat
    lw      s3,0(s2)
    la      s2, chas
    lw      s3,0(s2)
    li      s2, 0
    mul     s4,s7,s3
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    li      s5, 94
    xor     s11,s5,s7
    seqz    s11, s11
    li      s5, 37
    sw      a0,920768(sp)
    xor     a0,s5,s7
    seqz    a0, a0
    li      s5, 47
    sb      a0,840722(sp)
    xor     a0,s5,s7
    seqz    a0, a0
    sb      a0,840720(sp)
    li      a0, 42
    sw      a1,1120960(sp)
    xor     a1,a0,s7
    seqz    a1, a1
    sb      a0,840719(sp)
    li      a0, 45
    sb      a1,840718(sp)
    xor     a1,a0,s7
    seqz    a1, a1
    sb      a0,840717(sp)
    li      a0, 43
    sb      a1,840716(sp)
    xor     a1,s7,a0
    seqz    a1, a1
    sb      a0,840715(sp)
    bnez    a0, .while.body_121
    j       .while.exit_121
.while.body_121:
    sb      s1,880747(sp)
    sd      s2,840728(sp)
    sw      s3,880740(sp)
    sw      s4,880736(sp)
    sb      s5,840721(sp)
    sd      s6,880752(sp)
    sw      s7,840724(sp)
    sw      s8,920764(sp)
    sw      s9,920760(sp)
    sw      s10,880748(sp)
    sb      s11,840723(sp)
    call    find
    sb      a0,840713(sp)
    sw      a0,840708(sp)
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
    bnez    s2, .branch_true_124
    j       .branch_false_124
.branch_true_124:
    j       .while.exit_121
.while.exit_121:
    sb      s2,840707(sp)
    sw      a0,840708(sp)
    li      a0, 43
    call    chapush
    j       .branch_false_118
.branch_false_124:
    j       .while.head_121
.branch_false_118:
.L4_0:
    la      a0, i
    lw      s1,0(a0)
    la      s2, get
    lw      s3,0(s2)
    li      s4, 0
    li      s5, 1
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s9, 45
    xor     s10,s8,s9
    seqz    s10, s10
    bnez    s10, .branch_true_128
    j       .branch_false_128
.while.head_131:
    la      s11, chat
    lw      a0,0(s11)
    la      a0, chas
    lw      s1,0(a0)
    li      a0, 0
    mul     s2,s5,s1
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s3, 94
    xor     s9,s3,s5
    seqz    s9, s9
    li      s3, 37
    xor     s11,s3,s5
    seqz    s11, s11
    li      s3, 47
    sd      a0,760664(sp)
    xor     a0,s3,s5
    seqz    a0, a0
    sb      a0,760656(sp)
    li      a0, 42
    sb      a1,840714(sp)
    xor     a1,a0,s5
    seqz    a1, a1
    sb      a0,760655(sp)
    li      a0, 45
    sb      a1,760654(sp)
    xor     a1,a0,s5
    seqz    a1, a1
    sb      a0,760653(sp)
    li      a0, 43
    sb      a1,760652(sp)
    xor     a1,s5,a0
    seqz    a1, a1
    sb      a0,760651(sp)
    bnez    a0, .while.body_131
    j       .while.exit_131
.while.body_131:
    sw      s1,800676(sp)
    sw      s2,800672(sp)
    sb      s3,760657(sp)
    sd      s4,800688(sp)
    sw      s5,760660(sp)
    sw      s6,840700(sp)
    sw      s7,840696(sp)
    sw      s8,800684(sp)
    sb      s9,760659(sp)
    sb      s10,800683(sp)
    sb      s11,760658(sp)
    call    find
    sb      a0,760649(sp)
    sw      a0,760644(sp)
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
    bnez    s2, .branch_true_134
    j       .branch_false_134
.branch_true_134:
    j       .while.exit_131
.while.exit_131:
    sb      s2,760643(sp)
    sw      a0,760644(sp)
    li      a0, 45
    call    chapush
    j       .branch_false_128
.branch_false_134:
    j       .while.head_131
.branch_false_128:
.L5_0:
    la      a0, i
    lw      s1,0(a0)
    la      s2, get
    lw      s3,0(s2)
    li      s4, 0
    li      s5, 1
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s9, 42
    xor     s10,s8,s9
    seqz    s10, s10
    bnez    s10, .branch_true_138
    j       .branch_false_138
.while.head_141:
    la      s11, chat
    lw      a0,0(s11)
    la      a0, chas
    lw      s1,0(a0)
    li      a0, 0
    mul     s2,s5,s1
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s3, 94
    xor     s9,s3,s5
    seqz    s9, s9
    li      s3, 37
    xor     s11,s3,s5
    seqz    s11, s11
    li      s3, 47
    sd      a0,680600(sp)
    xor     a0,s3,s5
    seqz    a0, a0
    sb      a0,680592(sp)
    li      a0, 42
    sb      a1,760650(sp)
    xor     a1,s5,a0
    seqz    a1, a1
    sb      a0,680591(sp)
    bnez    a0, .while.body_141
    j       .while.exit_141
.while.body_141:
    sw      s1,720612(sp)
    sw      s2,720608(sp)
    sb      s3,680593(sp)
    sd      s4,720624(sp)
    sw      s5,680596(sp)
    sw      s6,760636(sp)
    sw      s7,760632(sp)
    sw      s8,720620(sp)
    sb      s9,680595(sp)
    sb      s10,720619(sp)
    sb      s11,680594(sp)
    call    find
    sb      a0,680589(sp)
    sw      a0,680584(sp)
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
    bnez    s2, .branch_true_144
    j       .branch_false_144
.branch_true_144:
    j       .while.exit_141
.while.exit_141:
    sb      s2,680583(sp)
    sw      a0,680584(sp)
    li      a0, 42
    call    chapush
    j       .branch_false_138
.branch_false_144:
    j       .while.head_141
.branch_false_138:
.L6_0:
    la      a0, i
    lw      s1,0(a0)
    la      s2, get
    lw      s3,0(s2)
    li      s4, 0
    li      s5, 1
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s9, 47
    xor     s10,s8,s9
    seqz    s10, s10
    bnez    s10, .branch_true_148
    j       .branch_false_148
.while.head_151:
    la      s11, chat
    lw      a0,0(s11)
    la      a0, chas
    lw      s1,0(a0)
    li      a0, 0
    mul     s2,s5,s1
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s3, 94
    xor     s9,s3,s5
    seqz    s9, s9
    li      s3, 37
    xor     s11,s3,s5
    seqz    s11, s11
    li      s3, 47
    sd      a0,600544(sp)
    xor     a0,s3,s5
    seqz    a0, a0
    sb      a0,600536(sp)
    li      a0, 42
    sb      a1,680590(sp)
    xor     a1,s5,a0
    seqz    a1, a1
    sb      a0,600535(sp)
    bnez    a0, .while.body_151
    j       .while.exit_151
.while.body_151:
    sw      s1,640556(sp)
    sw      s2,640552(sp)
    sb      s3,600537(sp)
    sd      s4,640568(sp)
    sw      s5,600540(sp)
    sw      s6,680576(sp)
    sw      s7,680572(sp)
    sw      s8,640564(sp)
    sb      s9,600539(sp)
    sb      s10,640563(sp)
    sb      s11,600538(sp)
    call    find
    sb      a0,600533(sp)
    sw      a0,600528(sp)
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
    bnez    s2, .branch_true_154
    j       .branch_false_154
.branch_true_154:
    j       .while.exit_151
.while.exit_151:
    sb      s2,600527(sp)
    sw      a0,600528(sp)
    li      a0, 47
    call    chapush
    j       .branch_false_148
.branch_false_154:
    j       .while.head_151
.branch_false_148:
.L7_0:
    la      a0, i
    lw      s1,0(a0)
    la      s2, get
    lw      s3,0(s2)
    li      s4, 0
    li      s5, 1
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s9, 37
    xor     s10,s8,s9
    seqz    s10, s10
    bnez    s10, .branch_true_158
    j       .branch_false_158
.while.head_161:
    la      s11, chat
    lw      a0,0(s11)
    la      a0, chas
    lw      s1,0(a0)
    li      a0, 0
    mul     s2,s5,s1
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s3, 94
    xor     s9,s3,s5
    seqz    s9, s9
    li      s3, 37
    xor     s11,s3,s5
    seqz    s11, s11
    li      s3, 47
    sd      a0,520488(sp)
    xor     a0,s3,s5
    seqz    a0, a0
    sb      a0,520480(sp)
    li      a0, 42
    sb      a1,600534(sp)
    xor     a1,s5,a0
    seqz    a1, a1
    sb      a0,520479(sp)
    bnez    a0, .while.body_161
    j       .while.exit_161
.while.body_161:
    sw      s1,560500(sp)
    sw      s2,560496(sp)
    sb      s3,520481(sp)
    sd      s4,560512(sp)
    sw      s5,520484(sp)
    sw      s6,600520(sp)
    sw      s7,600516(sp)
    sw      s8,560508(sp)
    sb      s9,520483(sp)
    sb      s10,560507(sp)
    sb      s11,520482(sp)
    call    find
    sb      a0,520477(sp)
    sw      a0,520472(sp)
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
    bnez    s2, .branch_true_164
    j       .branch_false_164
.branch_true_164:
    j       .while.exit_161
.while.exit_161:
    sb      s2,520471(sp)
    sw      a0,520472(sp)
    li      a0, 37
    call    chapush
    j       .branch_false_158
.branch_false_164:
    j       .while.head_161
.branch_false_158:
.L8_0:
    la      a0, ii
    lw      s1,0(a0)
    li      s2, 0
    li      s3, 1
    mul     s5,s3,s4
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,s2
    li      s6, 32
    sd      s6,0(s2)
    la      s7, ii
    lw      s8,0(s7)
    add     s10,s9,s3
    la      s11, ii
    sd      s10,0(s11)
    j       .L9_0
.L9_0:
.L10_0:
    la      a0, i
    lw      s1,0(a0)
    add     s1,a0,s3
    la      s3, i
    sd      s1,0(s3)
    j       .while.head_92
.while.head_171:
    la      s3, chat
    lw      s5,0(s3)
    li      s5, 0
    slt     s6,s5,s3
    bnez    s6, .while.body_171
    j       .while.exit_171
.while.body_171:
    sw      s1,1040892(sp)
    sd      s2,520456(sp)
    sw      s3,520444(sp)
    sw      s4,520464(sp)
    sb      s6,520443(sp)
    sw      s9,520452(sp)
    sw      s10,520448(sp)
    call    chapop
    sw      a0,1040896(sp)
    sw      a0,520436(sp)
    mv      s1, a0
    la      s2, ii
    lw      s3,0(s2)
    li      s4, 0
    li      s5, 1
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,s4
    li      s8, 32
    sd      s8,0(s4)
    la      s9, ii
    lw      s10,0(s9)
    add     s2,s11,s5
    li      s3, 0
    mul     s7,s5,s2
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,s3
    sd      s1,0(s3)
    la      s5, ii
    lw      s7,0(s5)
    li      s7, 2
    add     s8,s5,s7
    la      s7, ii
    sd      s8,0(s7)
    j       .while.head_171
.while.exit_171:
    la      s7, ii
    lw      s9,0(s7)
    li      s7, 0
    li      s9, 1
    sw      a0,520436(sp)
    mul     a0,s9,s10
    add     s7,s7,a0
    slli s7,s7,2
    add     s7,s7,s7
    li      a0, 64
    sd      a0,0(s7)
    la      a0, i
    sd      s9,0(a0)
    j       .while.head_180
.while.head_180:
    la      a0, i
    lw      s9,0(a0)
    la      a0, get2
    lw      s9,0(a0)
    li      a0, 0
    li      s9, 1
    sb      a1,520478(sp)
    sd      a2,1040912(sp)
    mul     a2,s9,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,480360(sp)
    li      a0, 64
    sw      a1,520372(sp)
    xor     a1,s9,a0
    snez    a1, a1
    bnez    a1, .while.body_180
    j       .while.exit_180
.while.body_180:
    la      a0, i
    sb      a1,480355(sp)
    lw      a1,0(a0)
    la      a0, get2
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,520368(sp)
    sw      a3,1080924(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 94
    sd      a0,440336(sp)
    sw      a2,480348(sp)
    xor     a2,a1,a0
    seqz    a2, a2
    li      a1, 37
    sb      a2,440331(sp)
    xor     a2,a1,a0
    seqz    a2, a2
    sw      a0,440332(sp)
    li      a0, 47
    sb      a1,440331(sp)
    sb      a2,440330(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    sb      a0,440329(sp)
    li      a0, 42
    sb      a2,440328(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    sb      a0,440327(sp)
    li      a0, 45
    sb      a2,440326(sp)
    xor     a2,a0,a1
    seqz    a2, a2
    sb      a0,440325(sp)
    li      a0, 43
    sb      a2,440324(sp)
    xor     a2,a1,a0
    seqz    a2, a2
    sb      a0,440323(sp)
    bnez    a0, .branch_true_183
    j       .branch_false_183
.branch_true_183:
    sw      s1,520432(sp)
    sw      s2,520408(sp)
    sd      s3,520400(sp)
    sd      s4,520416(sp)
    sw      s5,520396(sp)
    sw      s6,520428(sp)
    sd      s7,520376(sp)
    sw      s8,520392(sp)
    sw      s9,480356(sp)
    sw      s10,520388(sp)
    sw      s11,520412(sp)
    call    intpop
    sb      a0,440321(sp)
    sw      a0,440316(sp)
    mv      s1, a0
    sw      s1,440312(sp)
    call    intpop
    sw      a0,440316(sp)
    sw      a0,440308(sp)
    mv      s1, a0
    j       .L11_0
.L11_0:
    la      s2, i
    lw      s3,0(s2)
    la      s4, get2
    lw      s5,0(s4)
    li      s6, 0
    li      s7, 1
    mul     s9,s7,s8
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s11, 43
    xor     s2,s10,s11
    seqz    s2, s2
    bnez    s2, .branch_true_189
    j       .branch_false_189
.branch_true_189:
    add     s4,s3,s1
    mv      s5, s4
    j       .branch_false_189
.branch_false_189:
.L12_0:
    la      s7, i
    lw      s11,0(s7)
    la      s7, get2
    lw      s11,0(s7)
    li      s7, 0
    li      s11, 1
    sw      a0,440308(sp)
    sw      a1,440332(sp)
    mul     a1,s11,a0
    add     s7,s7,a1
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    sw      a0,400272(sp)
    li      a0, 45
    sw      a1,400268(sp)
    xor     a1,s11,a0
    seqz    a1, a1
    bnez    a1, .branch_true_192
    j       .branch_false_192
.branch_true_192:
    sub     a0,s1,s3
    j       .branch_false_192
.branch_false_192:
.L13_0:
    sw      a0,360252(sp)
    la      a0, i
    sb      a1,360259(sp)
    lw      a1,0(a0)
    la      a0, get2
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,440322(sp)
    sw      a3,480344(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,320240(sp)
    li      a0, 42
    sw      a2,360248(sp)
    xor     a2,a1,a0
    seqz    a2, a2
    bnez    a2, .branch_true_195
    j       .branch_false_195
.branch_true_195:
    mul     a0,s3,s1
    j       .branch_false_195
.branch_false_195:
.L14_0:
    sw      a0,320228(sp)
    la      a0, i
    sw      a1,320236(sp)
    lw      a1,0(a0)
    la      a0, get2
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,320235(sp)
    sw      a3,360244(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,280216(sp)
    li      a0, 47
    sw      a2,320224(sp)
    xor     a2,a1,a0
    seqz    a2, a2
    bnez    a2, .branch_true_198
    j       .branch_false_198
.branch_true_198:
    div     a0,s1,s3
    j       .branch_false_198
.branch_false_198:
.L15_0:
    sw      a0,280204(sp)
    la      a0, i
    sw      a1,280212(sp)
    lw      a1,0(a0)
    la      a0, get2
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,280211(sp)
    sw      a3,320220(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,240192(sp)
    li      a0, 37
    sw      a2,280200(sp)
    xor     a2,a1,a0
    seqz    a2, a2
    bnez    a2, .branch_true_201
    j       .branch_false_201
.branch_true_201:
    rem     a0,s1,s3
    j       .branch_false_201
.branch_false_201:
.L16_0:
    sw      a0,240180(sp)
    la      a0, i
    sw      a1,240188(sp)
    lw      a1,0(a0)
    la      a0, get2
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,240187(sp)
    sw      a3,280196(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,200168(sp)
    li      a0, 94
    sw      a2,240176(sp)
    xor     a2,a1,a0
    seqz    a2, a2
    bnez    a2, .branch_true_204
    j       .branch_false_204
.branch_true_204:
    sw      s1,440304(sp)
    sb      s2,400283(sp)
    sw      s3,440312(sp)
    sw      s4,400276(sp)
    sw      s5,440300(sp)
    sd      s6,400288(sp)
    sd      s7,360264(sp)
    sw      s8,440296(sp)
    sw      s9,440292(sp)
    sw      s10,400284(sp)
    sw      s11,360260(sp)
    sw      a1,200164(sp)
    call    power
    sw      a0,200156(sp)
    mv      a1, a0
    j       .branch_false_204
.branch_false_204:
.L17_0:
    sw      a1,440300(sp)
    sw      a0,200156(sp)
    call    intpush
    j       .L18_0
.branch_false_183:
    la      a0, i
    lw      a1,0(a0)
    la      s1, get2
    lw      s2,0(s1)
    li      s3, 0
    li      s4, 1
    mul     s6,s4,s5
    add     s3,s3,s6
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s8, 32
    xor     s9,s7,s8
    snez    s9, s9
    bnez    s9, .branch_true_209
    j       .branch_false_209
.branch_true_209:
    la      s10, i
    lw      s11,0(s10)
    la      a0, get2
    lw      a1,0(a0)
    li      a0, 0
    mul     s1,s4,a1
    add     a0,a0,s1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s4, 48
    sub     s8,s2,s4
    sw      s1,160120(sp)
    sw      s2,120108(sp)
    sd      s3,160136(sp)
    sw      s5,200144(sp)
    sw      s6,200140(sp)
    sw      s7,160132(sp)
    sw      s8,120104(sp)
    sb      s9,160131(sp)
    sd      a0,120112(sp)
    call    intpush
    la      a0, ii
    li      s1, 1
    sd      s1,0(a0)
    j       .while.head_214
.while.head_214:
    la      s2, ii
    lw      s3,0(s2)
    la      s4, i
    lw      s5,0(s4)
    add     s8,s6,s7
    la      s9, get2
    lw      s10,0(s9)
    li      s11, 0
    mul     a0,s1,s8
    add     s11,s11,a0
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    li      s2, 32
    xor     s3,s1,s2
    snez    s3, s3
    bnez    s3, .while.body_214
    j       .while.exit_214
.while.body_214:
    la      s2, ii
    lw      s4,0(s2)
    la      s2, i
    lw      s4,0(s2)
    add     s5,s2,s4
    la      s9, get2
    lw      s10,0(s9)
    li      s9, 0
    li      s10, 1
    sw      a0,120088(sp)
    mul     a0,s10,s5
    add     s9,s9,a0
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    sw      a0,80056(sp)
    li      a0, 48
    sw      a1,160124(sp)
    sub     a1,s10,a0
    sw      s1,80076(sp)
    sw      s2,80064(sp)
    sb      s3,80075(sp)
    sw      s4,80068(sp)
    sw      s5,80060(sp)
    sw      s6,120096(sp)
    sw      s7,120100(sp)
    sw      s8,120092(sp)
    sd      s9,40048(sp)
    sw      s10,40044(sp)
    sd      s11,80080(sp)
    sw      a1,40040(sp)
    call    intadd
    la      a0, ii
    lw      a1,0(a0)
    li      s2, 1
    add     s3,s1,s2
    la      s4, ii
    sd      s3,0(s4)
    j       .while.head_214
.while.exit_214:
    la      s5, ii
    lw      s6,0(s5)
    sub     s8,s7,s2
    la      s9, i
    lw      s10,0(s9)
    add     a0,s11,s8
    la      a1, i
    sd      a0,0(a1)
    j       .branch_false_209
.branch_false_209:
.L18_0:
.L19_0:
    la      a1, i
    lw      s2,0(a1)
    li      s2, 1
    add     s4,a1,s2
    la      s2, i
    sd      s4,0(s2)
    j       .while.head_180
.while.exit_180:
    la      s2, ints
    lw      s5,0(s2)
    li      s2, 0
    li      s5, 1
    li      s6, 1
    mul     s9,s5,s6
    add     s2,s2,s9
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    sw      s1,40036(sp)
    sd      s2,8(sp)
    sw      s3,40032(sp)
    sw      s4,200148(sp)
    sw      s7,40028(sp)
    sw      s8,40024(sp)
    sw      s9,40012(sp)
    sw      s11,40020(sp)
    sw      a0,40016(sp)
    call    putint
    li      a0, 1160992
    add     a0,sp,a0
    ld      ra,0(a0)
    li      s1, 1160984
    add     s1,sp,s1
    ld      s0,0(s1)
    li      a0, 0
    li      s2, 1161000
    li      s2, 1161000
    add     sp,s2,sp
    ret
.section        .data
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
