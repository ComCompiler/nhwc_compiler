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
    addi    sp,sp,-35
    sd      ra,27(sp)
    sd      s0,11(sp)
    addi    s0,sp,35
.L30_0:
    li      a1, 57
    slt     a2,a1,a0
    xori    a2,a2,1
    li      a3, 48
    slt     a4,a3,a0
    xori    a4,a4,1
    and     a5,a4,a2
    bnez    a5, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    ld      ra,27(sp)
    ld      s0,11(sp)
    li      a0, 1
    addi    sp,sp,35
    ret
.branch_false_28:
.L31_0:
    ld      ra,27(sp)
    ld      s0,11(sp)
    li      a0, 0
    addi    sp,sp,35
    ret
    .globl power
    .type power,@function
power:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,40(sp)
    addi    s0,sp,64
.L29_0:
    li      a6, 1
    mv      a7, a6
    j       .while.head_36
.while.head_36:
    li      s1, 0
    xor     s2,a1,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .while.body_36
    j       .while.exit_36
.while.body_36:
    mul     s3,a7,a0
    sub     s4,a1,a6
    j       .while.head_36
.while.exit_36:
    ld      ra,56(sp)
    ld      s0,40(sp)
    mv      a0, a7
    addi    sp,sp,64
    ret
    .globl getstr
    .type getstr,@function
getstr:
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,72(sp)
    addi    s0,sp,96
.L28_0:
    sb      s2,15(sp)
    sw      s3,8(sp)
    sw      s4,4(sp)
    call    getch
    sd      a0,56(sp)
    sw      a0,48(sp)
    mv      s1, a0
    li      s2, 0
    mv      s3, s2
    j       .while.head_47
.while.head_47:
    li      s4, 10
    xor     s5,s4,s1
    sltiu   s5,s5,1
    xori    s5,s5,1
    li      s6, 13
    xor     s7,s1,s6
    sltiu   s7,s7,1
    xori    s7,s7,1
    and     s8,s7,s5
    bnez    s8, .while.body_47
    j       .while.exit_47
.while.body_47:
    li      s9, 0
    mul     s10,a6,s3
    add     s9,s9,s10
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
    sd      s1,0(s9)
    add     s11,s3,a6
    sw      s1,40(sp)
    sw      s3,32(sp)
    sb      s5,31(sp)
    sb      s7,30(sp)
    sb      s8,29(sp)
    sd      s9,16(sp)
    sd      s10,56(sp)
    sw      s11,12(sp)
    call    getch
    sw      a0,48(sp)
    sw      a0,4(sp)
    mv      s1, a0
    j       .while.head_47
.while.exit_47:
    ld      ra,88(sp)
    ld      s0,72(sp)
    lw      a0,32(sp)
    addi    sp,sp,96
    ret
    .globl intpush
    .type intpush,@function
intpush:
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,56(sp)
    addi    s0,sp,80
.L27_0:
    la      s2, intt
    lw      s3,0(s2)
    mv      s4, s4
    add     s5,s4,a6
    la      s6, intt
    sd      s5,0(s6)
    la      s7, intt
    lw      s8,0(s7)
    li      s9, 0
    mv      s10, s10
    mul     s11,a6,s10
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,s9
    sd      a0,0(s9)
    .globl chapush
    .type chapush,@function
chapush:
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,56(sp)
    addi    s0,sp,80
.L26_0:
    la      a3, chat
    lw      a6,0(a3)
    mv      a3, a3
    li      a6, 1
    add     s2,a3,a6
    la      a6, chat
    sd      s2,0(a6)
    la      a6, chat
    lw      s3,0(a6)
    li      a6, 0
    li      s3, 1
    mv      s6, s6
    mul     s7,s3,s6
    add     a6,a6,s7
    slli a6,a6,2
    add     a6,a6,a6
    sd      a0,0(a6)
    .globl intpop
    .type intpop,@function
intpop:
    li      s3, -40088
    li      s3, -40088
    add     sp,s3,sp
    sd      ra,40080(sp)
    sd      s0,40064(sp)
    li      s3, 40088
    li      s3, 40088
    add     s0,s3,sp
.L25_0:
    la      s3, intt
    lw      s7,0(s3)
    mv      s3, s3
    li      s7, 1
    sub     s8,s3,s7
    la      s7, intt
    sd      s8,0(s7)
    la      s7, intt
    lw      s11,0(s7)
    mv      s7, s7
    li      s11, 1
    sw      a0,48(sp)
    add     a0,s7,s11
    la      s11, ints
    sw      a0,40032(sp)
    lw      a0,0(s11)
    li      a0, 0
    li      s11, 1
    sw      a1,24(sp)
    mv      a1, a1
    sb      a2,2(sp)
    mul     a2,s11,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s11, 40080
    add     s11,sp,s11
    ld      ra,0(s11)
    sd      a0,16(sp)
    li      a0, 40064
    add     a0,sp,a0
    ld      s0,0(a0)
    lw      a0,8(sp)
    sd      a0,40064(sp)
    li      a0, 40088
    li      a0, 40088
    add     sp,a0,sp
    ret
    .globl chapop
    .type chapop,@function
chapop:
    li      a0, -40088
    li      a0, -40088
    add     sp,a0,sp
    sd      ra,40080(sp)
    sd      s0,40064(sp)
    li      a0, 40088
    li      a0, 40088
    add     s0,a0,sp
.L24_0:
    la      a0, chat
    sw      a1,40032(sp)
    lw      a1,0(a0)
    mv      a0, a0
    li      a1, 1
    sw      a2,40024(sp)
    sub     a2,a0,a1
    la      a1, chat
    sd      a2,0(a1)
    la      a1, chat
    sw      a0,40056(sp)
    lw      a0,0(a1)
    mv      a0, a0
    li      a1, 1
    sw      a2,40048(sp)
    add     a2,a0,a1
    la      a1, chas
    sw      a0,40040(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 1
    sw      a3,40(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 40080
    add     a1,sp,a1
    ld      ra,0(a1)
    sd      a0,16(sp)
    li      a0, 40064
    add     a0,sp,a0
    ld      s0,0(a0)
    lw      a0,8(sp)
    sd      a0,40064(sp)
    li      a0, 40088
    li      a0, 40088
    add     sp,a0,sp
    ret
    .globl intadd
    .type intadd,@function
intadd:
    sw      a0,80136(sp)
    li      a0, -80168
    li      a0, -80168
    add     sp,a0,sp
    sd      ra,80160(sp)
    sd      s0,80144(sp)
    li      a0, 80168
    li      a0, 80168
    add     s0,a0,sp
.L23_0:
    la      a0, intt
    sd      a1,40080(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,40032(sp)
    mv      a2, a2
    sw      a3,40024(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, intt
    lw      a3,0(a1)
    la      a1, ints
    lw      a3,0(a1)
    li      a1, 0
    li      a3, 1
    sd      a0,80112(sp)
    mv      a0, a0
    sw      a2,80128(sp)
    mul     a2,a3,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a3, a3
    sw      a0,80104(sp)
    li      a0, 10
    sd      a1,40088(sp)
    mul     a1,a3,a0
    mv      a0, a0
    sd      a1,0(a0)
    sd      a0,80112(sp)
    la      a0, intt
    sw      a1,40072(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,80096(sp)
    mv      a2, a2
    sw      a3,40080(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, intt
    lw      a3,0(a1)
    la      a1, ints
    lw      a3,0(a1)
    li      a1, 0
    li      a3, 1
    sd      a0,40048(sp)
    mv      a0, a0
    sw      a2,40064(sp)
    mul     a2,a3,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a3, a3
    sw      a0,40040(sp)
    mv      a0, a0
    sd      a1,24(sp)
    add     a1,a3,a0
    sw      a0,80136(sp)
    mv      a0, a0
    sd      a1,0(a0)
    .globl find
    .type find,@function
find:
    addi    sp,sp,-121
    sd      ra,113(sp)
    sd      s0,97(sp)
    addi    s0,sp,121
.L20_0:
    sw      s1,40(sp)
    sw      s2,32(sp)
    sw      s3,40056(sp)
    sw      s4,40(sp)
    sw      s5,32(sp)
    sw      s6,24(sp)
    sw      s7,40040(sp)
    sw      s8,40048(sp)
    sd      s9,8(sp)
    sw      s10,24(sp)
    sd      s11,40080(sp)
    call    chapop
    sd      a0,40048(sp)
    sw      a0,89(sp)
    la      s1, c
    sd      a0,0(s1)
    la      s2, ii
    lw      s3,0(s2)
    li      s4, 0
    li      s5, 1
    mv      s6, s6
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,s4
    li      s8, 32
    sd      s8,0(s4)
    la      s9, ii
    lw      s10,0(s9)
    mv      s11, s11
    add     s1,s11,s5
    li      s2, 0
    mul     s3,s5,s1
    add     s2,s2,s3
    slli s2,s2,2
    add     s2,s2,s2
    la      s3, c
    lw      s5,0(s3)
    mv      s3, s3
    sd      s3,0(s2)
    la      s5, ii
    lw      s7,0(s5)
    mv      s5, s5
    li      s7, 2
    add     s8,s5,s7
    la      s7, ii
    sd      s8,0(s7)
    j       .L21_0
.L21_0:
    la      s7, chat
    lw      s9,0(s7)
    mv      s7, s7
    li      s9, 0
    xor     s10,s7,s9
    sltiu   s10,s10,1
    bnez    s10, .branch_true_83
    j       .branch_false_83
.branch_true_83:
    ld      ra,113(sp)
    ld      s0,97(sp)
    li      a0, 0
    addi    sp,sp,121
    ret
.branch_false_83:
.L22_0:
    ld      ra,113(sp)
    ld      s0,97(sp)
    li      a0, 1
    addi    sp,sp,121
    ret
    .globl main
    .type main,@function
main:
    li      s9, -1161504
    li      s9, -1161504
    add     sp,s9,sp
    sd      ra,1161496(sp)
    sd      s0,1161480(sp)
    li      s9, 1161504
    li      s9, 1161504
    add     s0,s9,sp
.L0_0:
    la      s9, intt
    sw      a0,89(sp)
    li      a0, 0
    sd      a0,0(s9)
    la      a0, chat
    li      s9, 0
    sd      s9,0(a0)
    la      a0, get
    lw      s9,0(a0)
    sw      s1,49(sp)
    sd      s2,33(sp)
    sw      s3,25(sp)
    sd      s4,65(sp)
    sw      s5,17(sp)
    sw      s6,81(sp)
    sw      s7,1(sp)
    sw      s8,9(sp)
    sb      s10,0(sp)
    sw      s11,57(sp)
    mv      a0, a0
    call    getstr
    sw      a0,1121468(sp)
    mv      s1, a0
    j       .while.head_92
.while.head_92:
    la      s2, i
    lw      s3,0(s2)
    mv      s4, s4
    slt     s5,s4,s1
    bnez    s5, .while.body_92
    j       .while.exit_92
.while.body_92:
    la      s6, i
    lw      s7,0(s6)
    la      s8, get
    lw      s9,0(s8)
    li      s10, 0
    li      s11, 1
    mv      s2, s2
    mul     s3,s11,s2
    add     s10,s10,s3
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    sw      s1,1121460(sp)
    sw      s2,1121447(sp)
    sw      s3,1121440(sp)
    sw      s4,1121452(sp)
    sb      s5,1121451(sp)
    sd      s10,1081432(sp)
    sw      a0,1121468(sp)
    mv      a0, a0
    call    isdigit
    sw      a0,1081416(sp)
    li      s1, 1
    xor     s2,a0,s1
    sltiu   s2,s2,1
    bnez    s2, .branch_true_95
    j       .branch_false_95
.branch_true_95:
    la      s3, ii
    lw      s4,0(s3)
    li      s5, 0
    mv      s6, s6
    mul     s7,s1,s6
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,s5
    la      s8, i
    lw      s9,0(s8)
    la      s10, get
    lw      s11,0(s10)
    li      s1, 0
    li      s3, 1
    mv      s4, s4
    mul     s7,s3,s4
    add     s1,s1,s7
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    mv      s3, s3
    sd      s3,0(s5)
    la      s8, ii
    lw      s9,0(s8)
    mv      s8, s8
    li      s9, 1
    add     s10,s8,s9
    la      s9, ii
    sd      s10,0(s9)
    j       .L9_0
.branch_false_95:
    la      s9, i
    lw      s11,0(s9)
    la      s9, get
    lw      s11,0(s9)
    li      s9, 0
    li      s11, 1
    sw      a0,1081416(sp)
    mv      a0, a0
    sw      a1,8(sp)
    mul     a1,s11,a0
    add     s9,s9,a1
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    mv      s11, s11
    sw      a0,1041328(sp)
    li      a0, 40
    sw      a1,1041320(sp)
    xor     a1,s11,a0
    sltiu   a1,a1,1
    bnez    a1, .branch_true_101
    j       .branch_false_101
.branch_true_101:
    sd      s1,1041376(sp)
    sb      s2,1081415(sp)
    sw      s3,1041368(sp)
    sw      s4,1081392(sp)
    sd      s5,1081400(sp)
    sw      s6,1081408(sp)
    sw      s7,1081384(sp)
    sw      s8,1041360(sp)
    sd      s9,1001312(sp)
    sw      s10,1041352(sp)
    sw      s11,1001304(sp)
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
    mv      s6, s6
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    mv      s8, s8
    li      s9, 94
    xor     s10,s8,s9
    sltiu   s10,s10,1
    bnez    s10, .branch_true_104
    j       .branch_false_104
.branch_true_104:
    sd      s4,961280(sp)
    sw      s6,1001296(sp)
    sw      s7,1001292(sp)
    sw      s8,961272(sp)
    sb      s10,961271(sp)
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
    mv      s6, s6
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    mv      s8, s8
    li      s9, 41
    xor     s10,s8,s9
    sltiu   s10,s10,1
    bnez    s10, .branch_true_107
    j       .branch_false_107
.branch_true_107:
    sd      s4,921248(sp)
    sw      s6,961264(sp)
    sw      s7,961260(sp)
    sw      s8,921240(sp)
    sb      s10,921239(sp)
    call    chapop
    sw      a0,921232(sp)
    la      s1, c
    sd      a0,0(s1)
    j       .while.head_111
.while.head_111:
    la      s2, c
    lw      s3,0(s2)
    mv      s4, s4
    li      s5, 40
    xor     s6,s4,s5
    sltiu   s6,s6,1
    xori    s6,s6,1
    bnez    s6, .while.body_111
    j       .while.exit_111
.while.body_111:
    la      s7, ii
    lw      s8,0(s7)
    li      s9, 0
    li      s10, 1
    mv      s11, s11
    mul     s1,s10,s11
    add     s9,s9,s1
    slli s9,s9,2
    add     s9,s9,s9
    li      s1, 32
    sd      s1,0(s9)
    la      s1, ii
    lw      s2,0(s1)
    mv      s1, s1
    add     s2,s1,s10
    li      s3, 0
    mul     s5,s10,s2
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,s3
    la      s5, c
    lw      s7,0(s5)
    mv      s5, s5
    sd      s5,0(s3)
    la      s7, ii
    lw      s8,0(s7)
    mv      s7, s7
    li      s8, 2
    add     s10,s7,s8
    la      s8, ii
    sd      s10,0(s8)
    sw      s1,921204(sp)
    sw      s2,921196(sp)
    sd      s3,921184(sp)
    sw      s4,921228(sp)
    sw      s5,921176(sp)
    sb      s6,921227(sp)
    sw      s7,921168(sp)
    sd      s9,921212(sp)
    sw      s10,921160(sp)
    sw      s11,921220(sp)
    call    chapop
    sw      a0,921232(sp)
    sw      a0,921152(sp)
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
    mv      s8, s8
    mul     s9,s7,s8
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    mv      s10, s10
    li      s11, 43
    xor     s1,s10,s11
    sltiu   s1,s1,1
    bnez    s1, .branch_true_118
    j       .branch_false_118
.while.head_121:
    la      s2, chat
    lw      s3,0(s2)
    la      s2, chas
    lw      s3,0(s2)
    li      s2, 0
    mv      s3, s3
    mul     s4,s7,s3
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    li      s5, 94
    mv      s7, s7
    xor     s11,s5,s7
    sltiu   s11,s11,1
    li      s5, 37
    sw      a0,921152(sp)
    xor     a0,s5,s7
    sltiu   a0,a0,1
    li      s5, 47
    sb      a0,841086(sp)
    xor     a0,s5,s7
    sltiu   a0,a0,1
    mv      s5, s5
    sb      a0,841084(sp)
    li      a0, 42
    sb      a1,1001303(sp)
    xor     a1,a0,s7
    sltiu   a1,a1,1
    mv      a0, a0
    sb      a0,841083(sp)
    li      a0, 45
    sb      a1,841082(sp)
    xor     a1,a0,s7
    sltiu   a1,a1,1
    mv      a0, a0
    sb      a0,841081(sp)
    li      a0, 43
    sb      a1,841080(sp)
    xor     a1,s7,a0
    sltiu   a1,a1,1
    mv      a0, a0
    sb      a0,841079(sp)
    mv      a0, a0
    bnez    a0, .while.body_121
    j       .while.exit_121
.while.body_121:
    sb      s1,881119(sp)
    sd      s2,841096(sp)
    sw      s3,881115(sp)
    sw      s4,881108(sp)
    sb      s5,841085(sp)
    sd      s6,881128(sp)
    sw      s7,841088(sp)
    sw      s8,921144(sp)
    sw      s9,921136(sp)
    sw      s10,881120(sp)
    sb      s11,841087(sp)
    call    find
    sb      a0,841077(sp)
    sw      a0,841072(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    bnez    s2, .branch_true_124
    j       .branch_false_124
.branch_true_124:
    j       .while.exit_121
.while.exit_121:
    sb      s2,841071(sp)
    sw      a0,841072(sp)
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
    mv      s6, s6
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    mv      s8, s8
    li      s9, 45
    xor     s10,s8,s9
    sltiu   s10,s10,1
    bnez    s10, .branch_true_128
    j       .branch_false_128
.while.head_131:
    la      s11, chat
    lw      a0,0(s11)
    la      a0, chas
    lw      s1,0(a0)
    li      a0, 0
    mv      s1, s1
    mul     s2,s5,s1
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s3, 94
    mv      s5, s5
    xor     s9,s3,s5
    sltiu   s9,s9,1
    li      s3, 37
    xor     s11,s3,s5
    sltiu   s11,s11,1
    li      s3, 47
    sd      a0,761016(sp)
    xor     a0,s3,s5
    sltiu   a0,a0,1
    mv      s3, s3
    sb      a0,761004(sp)
    li      a0, 42
    sb      a1,841078(sp)
    xor     a1,a0,s5
    sltiu   a1,a1,1
    mv      a0, a0
    sb      a0,761003(sp)
    li      a0, 45
    sb      a1,761002(sp)
    xor     a1,a0,s5
    sltiu   a1,a1,1
    mv      a0, a0
    sb      a0,761001(sp)
    li      a0, 43
    sb      a1,761000(sp)
    xor     a1,s5,a0
    sltiu   a1,a1,1
    mv      a0, a0
    sb      a0,760999(sp)
    mv      a0, a0
    bnez    a0, .while.body_131
    j       .while.exit_131
.while.body_131:
    sw      s1,801032(sp)
    sw      s2,801028(sp)
    sb      s3,761005(sp)
    sd      s4,801048(sp)
    sw      s5,761008(sp)
    sw      s6,841064(sp)
    sw      s7,841056(sp)
    sw      s8,801040(sp)
    sb      s9,761007(sp)
    sb      s10,801039(sp)
    sb      s11,761006(sp)
    call    find
    sb      a0,760997(sp)
    sw      a0,760993(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    bnez    s2, .branch_true_134
    j       .branch_false_134
.branch_true_134:
    j       .while.exit_131
.while.exit_131:
    sb      s2,760992(sp)
    sw      a0,760993(sp)
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
    mv      s6, s6
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    mv      s8, s8
    li      s9, 42
    xor     s10,s8,s9
    sltiu   s10,s10,1
    bnez    s10, .branch_true_138
    j       .branch_false_138
.while.head_141:
    la      s11, chat
    lw      a0,0(s11)
    la      a0, chas
    lw      s1,0(a0)
    li      a0, 0
    mv      s1, s1
    mul     s2,s5,s1
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s3, 94
    mv      s5, s5
    xor     s9,s3,s5
    sltiu   s9,s9,1
    li      s3, 37
    xor     s11,s3,s5
    sltiu   s11,s11,1
    li      s3, 47
    sd      a0,680936(sp)
    xor     a0,s3,s5
    sltiu   a0,a0,1
    mv      s3, s3
    sb      a0,680924(sp)
    li      a0, 42
    sb      a1,760998(sp)
    xor     a1,s5,a0
    sltiu   a1,a1,1
    mv      a0, a0
    sb      a0,680923(sp)
    mv      a0, a0
    bnez    a0, .while.body_141
    j       .while.exit_141
.while.body_141:
    sw      s1,720952(sp)
    sw      s2,720948(sp)
    sb      s3,680925(sp)
    sd      s4,720968(sp)
    sw      s5,680928(sp)
    sw      s6,760984(sp)
    sw      s7,760980(sp)
    sw      s8,720960(sp)
    sb      s9,680927(sp)
    sb      s10,720959(sp)
    sb      s11,680926(sp)
    call    find
    sb      a0,680921(sp)
    sw      a0,680917(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    bnez    s2, .branch_true_144
    j       .branch_false_144
.branch_true_144:
    j       .while.exit_141
.while.exit_141:
    sb      s2,680916(sp)
    sw      a0,680917(sp)
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
    mv      s6, s6
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    mv      s8, s8
    li      s9, 47
    xor     s10,s8,s9
    sltiu   s10,s10,1
    bnez    s10, .branch_true_148
    j       .branch_false_148
.while.head_151:
    la      s11, chat
    lw      a0,0(s11)
    la      a0, chas
    lw      s1,0(a0)
    li      a0, 0
    mv      s1, s1
    mul     s2,s5,s1
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s3, 94
    mv      s5, s5
    xor     s9,s3,s5
    sltiu   s9,s9,1
    li      s3, 37
    xor     s11,s3,s5
    sltiu   s11,s11,1
    li      s3, 47
    sd      a0,600864(sp)
    xor     a0,s3,s5
    sltiu   a0,a0,1
    mv      s3, s3
    sb      a0,600852(sp)
    li      a0, 42
    sb      a1,680922(sp)
    xor     a1,s5,a0
    sltiu   a1,a1,1
    mv      a0, a0
    sb      a0,600851(sp)
    mv      a0, a0
    bnez    a0, .while.body_151
    j       .while.exit_151
.while.body_151:
    sw      s1,640880(sp)
    sw      s2,640876(sp)
    sb      s3,600853(sp)
    sd      s4,640896(sp)
    sw      s5,600856(sp)
    sw      s6,680908(sp)
    sw      s7,680904(sp)
    sw      s8,640888(sp)
    sb      s9,600855(sp)
    sb      s10,640887(sp)
    sb      s11,600854(sp)
    call    find
    sb      a0,600849(sp)
    sw      a0,600845(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    bnez    s2, .branch_true_154
    j       .branch_false_154
.branch_true_154:
    j       .while.exit_151
.while.exit_151:
    sb      s2,600844(sp)
    sw      a0,600845(sp)
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
    mv      s6, s6
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    mv      s8, s8
    li      s9, 37
    xor     s10,s8,s9
    sltiu   s10,s10,1
    bnez    s10, .branch_true_158
    j       .branch_false_158
.while.head_161:
    la      s11, chat
    lw      a0,0(s11)
    la      a0, chas
    lw      s1,0(a0)
    li      a0, 0
    mv      s1, s1
    mul     s2,s5,s1
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s3, 94
    mv      s5, s5
    xor     s9,s3,s5
    sltiu   s9,s9,1
    li      s3, 37
    xor     s11,s3,s5
    sltiu   s11,s11,1
    li      s3, 47
    sd      a0,520792(sp)
    xor     a0,s3,s5
    sltiu   a0,a0,1
    mv      s3, s3
    sb      a0,520780(sp)
    li      a0, 42
    sb      a1,600850(sp)
    xor     a1,s5,a0
    sltiu   a1,a1,1
    mv      a0, a0
    sb      a0,520779(sp)
    mv      a0, a0
    bnez    a0, .while.body_161
    j       .while.exit_161
.while.body_161:
    sw      s1,560808(sp)
    sw      s2,560804(sp)
    sb      s3,520781(sp)
    sd      s4,560824(sp)
    sw      s5,520784(sp)
    sw      s6,600836(sp)
    sw      s7,600832(sp)
    sw      s8,560816(sp)
    sb      s9,520783(sp)
    sb      s10,560815(sp)
    sb      s11,520782(sp)
    call    find
    sb      a0,520777(sp)
    sw      a0,520773(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    bnez    s2, .branch_true_164
    j       .branch_false_164
.branch_true_164:
    j       .while.exit_161
.while.exit_161:
    sb      s2,520772(sp)
    sw      a0,520773(sp)
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
    mv      s4, s4
    mul     s5,s3,s4
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,s2
    li      s6, 32
    sd      s6,0(s2)
    la      s7, ii
    lw      s8,0(s7)
    mv      s9, s9
    add     s10,s9,s3
    la      s11, ii
    sd      s10,0(s11)
    j       .L9_0
.L9_0:
.L10_0:
    la      a0, i
    lw      s1,0(a0)
    mv      a0, a0
    add     s1,a0,s3
    la      s3, i
    sd      s1,0(s3)
    j       .while.head_92
.while.head_171:
    la      s3, chat
    lw      s5,0(s3)
    mv      s3, s3
    li      s5, 0
    slt     s6,s5,s3
    bnez    s6, .while.body_171
    j       .while.exit_171
.while.body_171:
    sw      s1,1041336(sp)
    sd      s2,520752(sp)
    sw      s3,520732(sp)
    sw      s4,520764(sp)
    sb      s6,520731(sp)
    sw      s9,520744(sp)
    sw      s10,520740(sp)
    call    chapop
    sw      a0,1041344(sp)
    sw      a0,520727(sp)
    mv      s1, a0
    la      s2, ii
    lw      s3,0(s2)
    li      s4, 0
    li      s5, 1
    mv      s6, s6
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,s4
    li      s8, 32
    sd      s8,0(s4)
    la      s9, ii
    lw      s10,0(s9)
    mv      s11, s11
    add     s2,s11,s5
    li      s3, 0
    mul     s7,s5,s2
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,s3
    sd      s1,0(s3)
    la      s5, ii
    lw      s7,0(s5)
    mv      s5, s5
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
    mv      s10, s10
    sw      a0,520727(sp)
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
    sb      a1,520778(sp)
    mv      a1, a1
    sw      a2,40032(sp)
    mul     a2,s9,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      s9, s9
    sd      a0,480600(sp)
    li      a0, 64
    sw      a1,520616(sp)
    xor     a1,s9,a0
    sltiu   a1,a1,1
    xori    a1,a1,1
    bnez    a1, .while.body_180
    j       .while.exit_180
.while.body_180:
    la      a0, i
    sb      a1,480591(sp)
    lw      a1,0(a0)
    la      a0, get2
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,520608(sp)
    mv      a2, a2
    sw      a3,16(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 94
    sd      a0,440568(sp)
    mv      a0, a0
    sw      a2,480584(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    li      a1, 37
    sb      a2,440559(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    mv      a1, a1
    sw      a0,440560(sp)
    li      a0, 47
    sb      a1,440559(sp)
    mv      a1, a1
    sb      a2,440558(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    mv      a0, a0
    sb      a0,440557(sp)
    li      a0, 42
    sb      a2,440556(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    mv      a0, a0
    sb      a0,440555(sp)
    li      a0, 45
    sb      a2,440554(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    mv      a0, a0
    sb      a0,440553(sp)
    li      a0, 43
    sb      a2,440552(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    mv      a0, a0
    sb      a0,440551(sp)
    mv      a0, a0
    bnez    a0, .branch_true_183
    j       .branch_false_183
.branch_true_183:
    sw      s1,520720(sp)
    sw      s2,520680(sp)
    sd      s3,520664(sp)
    sd      s4,520696(sp)
    sw      s5,520656(sp)
    sw      s6,520712(sp)
    sd      s7,520624(sp)
    sw      s8,520648(sp)
    sw      s9,480592(sp)
    sw      s10,520640(sp)
    sw      s11,520688(sp)
    call    intpop
    sb      a0,440549(sp)
    sw      a0,440545(sp)
    mv      s1, a0
    sw      s1,440540(sp)
    call    intpop
    sw      a0,440545(sp)
    sw      a0,440532(sp)
    mv      s1, a0
    j       .L11_0
.L11_0:
    la      s2, i
    lw      s3,0(s2)
    la      s4, get2
    lw      s5,0(s4)
    li      s6, 0
    li      s7, 1
    mv      s8, s8
    mul     s9,s7,s8
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    mv      s10, s10
    li      s11, 43
    xor     s2,s10,s11
    sltiu   s2,s2,1
    bnez    s2, .branch_true_189
    j       .branch_false_189
.branch_true_189:
    mv      s3, s3
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
    sw      a0,440532(sp)
    mv      a0, a0
    sw      a1,440560(sp)
    mul     a1,s11,a0
    add     s7,s7,a1
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    mv      s11, s11
    sw      a0,400468(sp)
    li      a0, 45
    sw      a1,400460(sp)
    xor     a1,s11,a0
    sltiu   a1,a1,1
    bnez    a1, .branch_true_192
    j       .branch_false_192
.branch_true_192:
    sub     a0,s1,s3
    j       .branch_false_192
.branch_false_192:
.L13_0:
    sw      a0,360435(sp)
    la      a0, i
    sb      a1,360439(sp)
    lw      a1,0(a0)
    la      a0, get2
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,440550(sp)
    mv      a2, a2
    sw      a3,480580(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,320408(sp)
    li      a0, 42
    sw      a2,360428(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    bnez    a2, .branch_true_195
    j       .branch_false_195
.branch_true_195:
    mul     a0,s3,s1
    j       .branch_false_195
.branch_false_195:
.L14_0:
    sw      a0,320392(sp)
    la      a0, i
    sw      a1,320400(sp)
    lw      a1,0(a0)
    la      a0, get2
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,320399(sp)
    mv      a2, a2
    sw      a3,360420(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,280368(sp)
    li      a0, 47
    sw      a2,320388(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    bnez    a2, .branch_true_198
    j       .branch_false_198
.branch_true_198:
    div     a0,s1,s3
    j       .branch_false_198
.branch_false_198:
.L15_0:
    sw      a0,280355(sp)
    la      a0, i
    sw      a1,280360(sp)
    lw      a1,0(a0)
    la      a0, get2
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,280359(sp)
    mv      a2, a2
    sw      a3,320380(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,240328(sp)
    li      a0, 37
    sw      a2,280348(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    bnez    a2, .branch_true_201
    j       .branch_false_201
.branch_true_201:
    mv      a0, a0
    rem     a0,s1,s3
    j       .branch_false_201
.branch_false_201:
.L16_0:
    sw      a0,240312(sp)
    la      a0, i
    sw      a1,240320(sp)
    lw      a1,0(a0)
    la      a0, get2
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,240319(sp)
    mv      a2, a2
    sw      a3,280340(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,200288(sp)
    li      a0, 94
    sw      a2,240308(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    bnez    a2, .branch_true_204
    j       .branch_false_204
.branch_true_204:
    sw      s1,440524(sp)
    sb      s2,400479(sp)
    sw      s3,440540(sp)
    sw      s4,400472(sp)
    sw      s5,440516(sp)
    sd      s6,400488(sp)
    sd      s7,360448(sp)
    sw      s8,440508(sp)
    sw      s9,440500(sp)
    sw      s10,400480(sp)
    sw      s11,360440(sp)
    mv      a0, a0
    sw      a1,200280(sp)
    mv      a1, a1
    call    power
    sw      a0,200275(sp)
    mv      a1, a0
    j       .branch_false_204
.branch_false_204:
.L17_0:
    sw      a1,440516(sp)
    sw      a0,200275(sp)
    mv      a0, a0
    call    intpush
    j       .L18_0
.branch_false_183:
    la      a0, i
    lw      a1,0(a0)
    la      s1, get2
    lw      s2,0(s1)
    li      s3, 0
    li      s4, 1
    mv      s5, s5
    mul     s6,s4,s5
    add     s3,s3,s6
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    mv      s7, s7
    li      s8, 32
    xor     s9,s7,s8
    sltiu   s9,s9,1
    xori    s9,s9,1
    bnez    s9, .branch_true_209
    j       .branch_false_209
.branch_true_209:
    la      s10, i
    lw      s11,0(s10)
    la      a0, get2
    lw      a1,0(a0)
    li      a0, 0
    mv      a1, a1
    mul     s1,s4,a1
    add     a0,a0,s1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      s2, s2
    li      s4, 48
    sub     s8,s2,s4
    sw      s1,160212(sp)
    sw      s2,120192(sp)
    sd      s3,160232(sp)
    sw      s5,200252(sp)
    sw      s6,200244(sp)
    sw      s7,160224(sp)
    sw      s8,120184(sp)
    sb      s9,160223(sp)
    sd      a0,120200(sp)
    mv      a0, a0
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
    mv      s6, s6
    mv      s7, s7
    add     s8,s6,s7
    la      s9, get2
    lw      s10,0(s9)
    li      s11, 0
    mul     a0,s1,s8
    add     s11,s11,a0
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    mv      s1, s1
    li      s2, 32
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    bnez    s3, .while.body_214
    j       .while.exit_214
.while.body_214:
    la      s2, ii
    lw      s4,0(s2)
    la      s2, i
    lw      s4,0(s2)
    mv      s2, s2
    mv      s4, s4
    add     s5,s2,s4
    la      s9, get2
    lw      s10,0(s9)
    li      s9, 0
    li      s10, 1
    sw      a0,120152(sp)
    mul     a0,s10,s5
    add     s9,s9,a0
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    mv      s10, s10
    sw      a0,80108(sp)
    li      a0, 48
    sw      a1,160216(sp)
    sub     a1,s10,a0
    sw      s1,80136(sp)
    sw      s2,80124(sp)
    sb      s3,80135(sp)
    sw      s4,80131(sp)
    sw      s5,80116(sp)
    sw      s6,120168(sp)
    sw      s7,120176(sp)
    sw      s8,120160(sp)
    sd      s9,40096(sp)
    sw      s10,40088(sp)
    sd      s11,80144(sp)
    sw      a1,40080(sp)
    mv      a0, a0
    call    intadd
    la      a0, ii
    lw      a1,0(a0)
    mv      s1, s1
    li      s2, 1
    add     s3,s1,s2
    la      s4, ii
    sd      s3,0(s4)
    j       .while.head_214
.while.exit_214:
    la      s5, ii
    lw      s6,0(s5)
    mv      s7, s7
    sub     s8,s7,s2
    la      s9, i
    lw      s10,0(s9)
    mv      s11, s11
    add     a0,s11,s8
    la      a1, i
    sd      a0,0(a1)
    j       .branch_false_209
.branch_false_209:
.L18_0:
.L19_0:
    la      a1, i
    lw      s2,0(a1)
    mv      a1, a1
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
    sw      s1,40072(sp)
    sd      s2,16(sp)
    sw      s3,40064(sp)
    sw      s4,200260(sp)
    sw      s7,40056(sp)
    sw      s8,40048(sp)
    sw      s9,40024(sp)
    sw      s11,40040(sp)
    sw      a0,40032(sp)
    mv      a0, a0
    call    putint
    li      a0, 1161496
    add     a0,sp,a0
    ld      ra,0(a0)
    li      s1, 1161480
    add     s1,sp,s1
    ld      s0,0(s1)
    li      a0, 0
    li      s2, 1161504
    li      s2, 1161504
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
