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
    .globl equal
    .type equal,@function
equal:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L10_0:
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    ld      ra,24(sp)
    ld      s0,16(sp)
    li      a0, 1
    addi    sp,sp,32
    ret
.branch_false_25:
.L11_0:
    ld      ra,24(sp)
    ld      s0,16(sp)
    li      a0, 0
    addi    sp,sp,32
    ret
    .globl dfs
    .type dfs,@function
dfs:
    li      a6, -158724008
    li      a6, -158724008
    add     sp,a6,sp
    sd      ra,158724000(sp)
    sd      s0,158723992(sp)
    li      a7, 158724008
    li      a7, 158724008
    add     s0,a7,sp
.L1_0:
    la      s1, dp
    lw      s2,0(s1)
    li      s3, 0
    li      s4, 734832
    mul     s5,s4,a0
    add     s3,s3,s5
    li      s6, 40824
    add     s3,s3,s5
    li      s7, 2268
    add     s3,s3,s5
    li      s8, 126
    add     s3,s3,s5
    li      s9, 7
    add     s3,s3,s5
    li      s10, 1
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      a6, -1
    xor     a7,s11,a6
    snez    a7, a7
    bnez    a7, .branch_true_32
    j       .branch_false_32
.branch_true_32:
    la      a6, dp
    lw      s1,0(a6)
    li      a6, 0
    mul     s1,s4,a0
    add     a6,a6,s1
    add     a6,a6,s1
    add     a6,a6,s1
    add     a6,a6,s1
    add     a6,a6,s1
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    li      s2, 158724000
    add     s2,sp,s2
    ld      ra,0(s2)
    li      s4, 158723992
    add     s4,sp,s4
    ld      s0,0(s4)
    li      s6, 52908132
    add     s6,sp,s6
    lw      a0,0(s6)
    li      s7, 158724008
    li      s7, 158724008
    add     sp,s7,sp
    ret
.branch_false_32:
.L2_0:
    add     s7,a3,a4
    add     s8,a2,s7
    add     s9,a1,s8
    add     s10,a0,s9
    sw      a0,158723988(sp)
    li      a0, 0
    sw      a1,158723984(sp)
    xor     a1,s10,a0
    seqz    a1, a1
    bnez    a1, .branch_true_35
    j       .branch_false_35
.branch_true_35:
    mv      ra, s2
    mv      s0, s4
    li      a0, 1
    li      a0, 158724008
    li      a0, 158724008
    add     sp,a0,sp
    ret
.branch_false_35:
.L3_0:
    li      a0, 0
    j       .L4_0
.L4_0:
    sw      a0,52908108(sp)
    sb      a1,52908115(sp)
    li      a1, 0
    sw      a2,158723980(sp)
    xor     a2,a0,a1
    snez    a2, a2
    bnez    a2, .branch_true_39
    j       .branch_false_39
.branch_true_39:
    li      a1, 1
    sb      a2,52908107(sp)
    sub     a2,a1,a0
    sw      s1,105816044(sp)
    sd      s2,158724000(sp)
    sd      s3,105816056(sp)
    sd      s4,158723992(sp)
    sw      s5,158723964(sp)
    sw      s6,52908132(sp)
    sw      s7,52908128(sp)
    sw      s8,52908124(sp)
    sw      s9,52908120(sp)
    sw      s10,52908116(sp)
    sw      s11,105816052(sp)
    sw      a2,52908100(sp)
    sw      a0,158723988(sp)
    sw      a3,158723976(sp)
    sw      a4,158723972(sp)
    sw      a5,158723968(sp)
    li      a5, 1
    call    dfs
    sw      a0,52908096(sp)
    sw      a0,52908096(sp)
    li      a1, 2
    call    equal
    sw      a0,52908092(sp)
    sub     a2,a1,a0
    mul     a4,a2,a3
    add     s1,a5,a4
    li      s2, 1000000007
    rem     s3,s1,s2
    j       .branch_false_39
.branch_false_39:
.L5_0:
    li      s5, 0
    xor     s6,s4,s5
    snez    s6, s6
    bnez    s6, .branch_true_42
    j       .branch_false_42
.branch_true_42:
    li      s7, 1
    add     s8,a1,s7
    sub     s9,s4,s7
    sw      s1,52908080(sp)
    sw      s3,52908076(sp)
    sw      s4,158723984(sp)
    sb      s6,52908075(sp)
    sw      s8,52908068(sp)
    sw      s9,52908064(sp)
    sw      a0,52908092(sp)
    sw      a1,158723988(sp)
    sw      a2,52908088(sp)
    sw      a3,52908096(sp)
    sw      a4,52908084(sp)
    sw      a5,52908108(sp)
    li      a5, 2
    call    dfs
    sw      a0,52908060(sp)
    sw      a0,52908060(sp)
    li      a1, 3
    call    equal
    sw      a0,52908056(sp)
    sub     a2,a1,a0
    mul     a4,a2,a3
    add     s1,a5,a4
    li      s2, 1000000007
    rem     s3,s1,s2
    j       .branch_false_42
.branch_false_42:
.L6_0:
    li      s5, 0
    xor     s6,s4,s5
    snez    s6, s6
    bnez    s6, .branch_true_45
    j       .branch_false_45
.branch_true_45:
    li      s7, 1
    add     s8,a1,s7
    sub     s9,s4,s7
    sw      s1,52908044(sp)
    sw      s3,52908040(sp)
    sw      s4,158723980(sp)
    sb      s6,52908039(sp)
    sw      s8,52908032(sp)
    sw      s9,52908028(sp)
    sw      a0,52908056(sp)
    sw      a1,158723984(sp)
    sw      a2,52908052(sp)
    sw      a3,52908060(sp)
    sw      a4,52908048(sp)
    sw      a5,52908108(sp)
    li      a5, 3
    call    dfs
    sw      a0,52908024(sp)
    sw      a0,52908024(sp)
    li      a1, 4
    call    equal
    sw      a0,52908020(sp)
    sub     a2,a1,a0
    mul     a4,a2,a3
    add     s1,a5,a4
    li      s2, 1000000007
    rem     s3,s1,s2
    j       .branch_false_45
.branch_false_45:
.L7_0:
    li      s5, 0
    xor     s6,s4,s5
    snez    s6, s6
    bnez    s6, .branch_true_48
    j       .branch_false_48
.branch_true_48:
    li      s7, 1
    add     s8,a1,s7
    sub     s9,s4,s7
    sw      s1,52908008(sp)
    sw      s3,52908004(sp)
    sw      s4,158723976(sp)
    sb      s6,52908003(sp)
    sw      s8,52907996(sp)
    sw      s9,52907992(sp)
    sw      a0,52908020(sp)
    sw      a1,158723980(sp)
    sw      a2,52908016(sp)
    sw      a3,52908024(sp)
    sw      a4,52908012(sp)
    sw      a5,52908108(sp)
    li      a5, 4
    call    dfs
    sw      a0,52907988(sp)
    sw      a0,52907988(sp)
    li      a1, 5
    call    equal
    sw      a0,52907984(sp)
    sub     a2,a1,a0
    mul     a4,a2,a3
    add     s1,a5,a4
    li      s2, 1000000007
    rem     s3,s1,s2
    j       .branch_false_48
.branch_false_48:
.L8_0:
    li      s5, 0
    xor     s6,s4,s5
    snez    s6, s6
    bnez    s6, .branch_true_51
    j       .branch_false_51
.branch_true_51:
    li      s7, 1
    add     s8,a1,s7
    sub     s9,s4,s7
    sw      s1,52907972(sp)
    sw      s3,52907968(sp)
    sw      s4,158723972(sp)
    sb      s6,52907967(sp)
    sw      s8,52907960(sp)
    sw      s9,52907956(sp)
    sw      a0,52907984(sp)
    sw      a1,158723976(sp)
    sw      a2,52907980(sp)
    sw      a3,52907988(sp)
    sw      a4,52907976(sp)
    sw      a5,52908108(sp)
    li      a5, 5
    call    dfs
    sw      a0,52907952(sp)
    mul     a2,a1,a0
    add     a4,a3,a2
    li      a5, 1000000007
    rem     s1,a4,a5
    j       .branch_false_51
.branch_false_51:
.L9_0:
    li      s2, 0
    li      s3, 734832
    mul     s5,s3,s4
    add     s2,s2,s5
    li      s6, 40824
    mul     s8,s6,s7
    add     s2,s2,s8
    li      s9, 2268
    mul     s11,s9,s10
    add     s2,s2,s11
    li      a5, 126
    mul     s5,a5,s3
    add     s2,s2,s5
    li      a5, 7
    mul     s5,a5,a1
    add     s2,s2,s5
    li      a5, 1
    mul     s6,a5,s5
    add     s2,s2,s6
    slli s2,s2,2
    add     s2,s2,s2
    li      a5, 1000000007
    rem     s6,a3,a5
    sd      s6,0(s2)
    la      a5, dp
    lw      s8,0(a5)
    li      a5, 0
    li      s8, 734832
    mul     s9,s8,s4
    add     a5,a5,s9
    li      s8, 40824
    add     a5,a5,s9
    li      s8, 2268
    add     a5,a5,s9
    li      s8, 126
    add     a5,a5,s9
    li      s8, 7
    add     a5,a5,s9
    li      s8, 1
    add     a5,a5,s9
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    li      s8, 158724000
    add     s8,sp,s8
    ld      ra,0(s8)
    li      s11, 158723992
    add     s11,sp,s11
    ld      s0,0(s11)
    lw      a0,4(sp)
    sw      a0,52907952(sp)
    li      a0, 158724008
    li      a0, 158724008
    add     sp,a0,sp
    ret
    .globl main
    .type main,@function
main:
    li      a0, -2360
    li      a0, -2360
    add     sp,a0,sp
    sd      ra,2352(sp)
    sd      s0,2344(sp)
    li      a1, 2360
    li      a1, 2360
    add     s0,a1,sp
.L0_0:
    call    getint
    sw      a0,2340(sp)
    mv      a2, a0
    li      a3, 0
    j       .while.head_60
.while.head_60:
    li      a4, 18
    slt     a5,a3,a4
    bnez    a5, .while.body_60
    j       .while.exit_60
.while.body_60:
    li      a6, 0
    j       .while.head_64
.while.head_64:
    slt     a7,a6,a4
    bnez    a7, .while.body_64
    j       .while.exit_64
.while.body_64:
    li      s1, 0
    j       .while.head_68
.while.head_68:
    slt     s2,s1,a4
    bnez    s2, .while.body_68
    j       .while.exit_68
.while.body_68:
    li      s3, 0
    j       .while.head_72
.while.head_72:
    slt     s4,s3,a4
    bnez    s4, .while.body_72
    j       .while.exit_72
.while.body_72:
    li      s5, 0
    j       .while.head_76
.while.head_76:
    slt     s6,s5,a4
    bnez    s6, .while.body_76
    j       .while.exit_76
.while.body_76:
    li      s7, 0
    j       .while.head_80
.while.head_80:
    li      s8, 7
    slt     s9,s7,s8
    bnez    s9, .while.body_80
    j       .while.exit_80
.while.body_80:
    li      s10, 0
    li      s11, 734832
    mul     a1,s11,a3
    add     s10,s10,a1
    li      a1, 40824
    mul     a4,a1,a6
    add     s10,s10,a4
    li      a1, 2268
    mul     a4,a1,s1
    add     s10,s10,a4
    li      a1, 126
    mul     a4,a1,s3
    add     s10,s10,a4
    mul     a1,s8,s5
    add     s10,s10,a1
    li      a1, 1
    mul     a4,a1,s7
    add     s10,s10,a4
    slli s10,s10,2
    add     s10,s10,s10
    li      a1, -1
    sd      a1,0(s10)
    li      a1, 1
    add     a4,s7,a1
    j       .while.head_80
.while.exit_80:
    add     s8,s5,a1
    j       .while.head_76
.while.exit_76:
    add     s11,s3,a1
    j       .while.head_72
.while.exit_72:
    sw      a0,2340(sp)
    add     a0,s1,a1
    j       .while.head_68
.while.exit_68:
    sw      a0,2264(sp)
    add     a0,a6,a1
    j       .while.head_64
.while.exit_64:
    sw      a0,2260(sp)
    add     a0,a3,a1
    j       .while.head_60
.while.exit_60:
    j       .while.head_91
.while.head_91:
    slt     a1,a3,a2
    bnez    a1, .while.body_91
    j       .while.exit_91
.while.body_91:
    sw      a0,2256(sp)
    li      a0, 0
    sb      a1,2255(sp)
    li      a1, 1
    sw      a2,2336(sp)
    mul     a2,a1,a3
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
    sw      s1,2316(sp)
    sb      s2,2315(sp)
    sw      s3,2308(sp)
    sb      s4,2307(sp)
    sw      s5,2300(sp)
    sb      s6,2299(sp)
    sw      s7,2292(sp)
    sw      s8,2272(sp)
    sb      s9,2291(sp)
    sd      s10,2280(sp)
    sw      s11,2268(sp)
    call    getint
    sd      a0,2240(sp)
    sw      a0,2236(sp)
    sd      a0,0(s1)
    la      s2, list
    lw      s3,0(s2)
    li      s4, 0
    mul     s5,a1,a3
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s6, 0
    mul     s8,a1,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,s6
    la      s9, list
    lw      s10,0(s9)
    li      s11, 0
    mul     a2,a1,a3
    add     s11,s11,a2
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    la      a1, cns
    lw      s2,0(a1)
    li      a1, 0
    li      s2, 1
    mul     s8,s2,s3
    add     a1,a1,s8
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      s9, 1
    add     s10,s2,s9
    sd      s10,0(s6)
    sw      a0,2236(sp)
    add     a0,a3,s9
    j       .while.head_91
.while.exit_91:
    la      s9, cns
    sw      a0,492(sp)
    lw      a0,0(s9)
    li      a0, 0
    li      s9, 1
    sd      a1,504(sp)
    li      a1, 1
    sw      a2,1404(sp)
    mul     a2,s9,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    la      a1, cns
    lw      s9,0(a1)
    li      a1, 0
    li      s9, 1
    sd      a0,400(sp)
    li      a0, 2
    sw      a2,488(sp)
    mul     a2,s9,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    la      a0, cns
    lw      s9,0(a0)
    li      a0, 0
    li      s9, 1
    sd      a1,304(sp)
    li      a1, 3
    sw      a2,392(sp)
    mul     a2,s9,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    la      a1, cns
    lw      s9,0(a1)
    li      a1, 0
    li      s9, 1
    sd      a0,208(sp)
    li      a0, 4
    sw      a2,296(sp)
    mul     a2,s9,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    la      a0, cns
    lw      s9,0(a0)
    li      a0, 0
    li      s9, 1
    sd      a1,112(sp)
    li      a1, 5
    sw      a2,200(sp)
    mul     a2,s9,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s1,2240(sp)
    sw      s2,500(sp)
    sw      s3,596(sp)
    sd      s4,1424(sp)
    sw      s5,2232(sp)
    sd      s6,1408(sp)
    sw      s7,1420(sp)
    sw      s8,592(sp)
    sw      s10,496(sp)
    sd      s11,600(sp)
    sd      a0,16(sp)
    sw      a2,104(sp)
    sw      a3,2332(sp)
    sw      a4,2276(sp)
    sb      a5,2331(sp)
    li      a5, 0
    call    dfs
    sw      a0,8(sp)
    mv      a1, a0
    sw      a1,4(sp)
    sw      a0,8(sp)
    call    putint
    li      a0, 2352
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 2344
    add     a1,sp,a1
    ld      s0,0(a1)
    lw      a0,4(sp)
    li      a2, 2360
    li      a2, 2360
    add     sp,a2,sp
    ret
.section        .data
    .align 4
    .globl cns
    .type cns,@object
cns:
    .zero 80
    .align 4
    .globl list
    .type list,@object
list:
    .zero 800
    .align 4
    .globl dp
    .type dp,@object
dp:
    .zero 52907904
    .align 4
    .globl mod
    .type mod,@object
mod:
    .word 1000000007
    .align 4
    .globl maxn
    .type maxn,@object
maxn:
    .word 18
