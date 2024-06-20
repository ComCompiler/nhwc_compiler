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
    addi    sp,sp,-41
    sd      ra,33(sp)
    sd      s0,17(sp)
    addi    s0,sp,41
.L10_0:
    xor     a2,a0,a1
    sltiu   a2,a2,1
    bnez    a2, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    ld      ra,33(sp)
    ld      s0,17(sp)
    li      a0, 1
    addi    sp,sp,41
    ret
.branch_false_25:
.L11_0:
    ld      ra,33(sp)
    ld      s0,17(sp)
    li      a0, 0
    addi    sp,sp,41
    ret
    .globl dfs
    .type dfs,@function
dfs:
    li      a6, -158724192
    li      a6, -158724192
    add     sp,a6,sp
    sd      ra,158724184(sp)
    sd      s0,158724168(sp)
    li      a7, 158724192
    li      a7, 158724192
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
    mv      s11, s11
    li      a6, -1
    xor     a7,s11,a6
    sltiu   a7,a7,1
    xori    a7,a7,1
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
    li      s2, 158724184
    add     s2,sp,s2
    ld      ra,0(s2)
    li      s4, 158724168
    add     s4,sp,s4
    ld      s0,0(s4)
    li      s6, 52908268
    add     s6,sp,s6
    lw      a0,0(s6)
    li      s7, 158724192
    li      s7, 158724192
    add     sp,s7,sp
    ret
.branch_false_32:
.L2_0:
    add     s7,a3,a4
    add     s8,a2,s7
    add     s9,a1,s8
    add     s10,a0,s9
    sw      a0,158724160(sp)
    li      a0, 0
    sw      a1,158724152(sp)
    xor     a1,s10,a0
    sltiu   a1,a1,1
    bnez    a1, .branch_true_35
    j       .branch_false_35
.branch_true_35:
    mv      ra, s2
    mv      s0, s4
    li      a0, 1
    li      a0, 158724192
    li      a0, 158724192
    add     sp,a0,sp
    ret
.branch_false_35:
.L3_0:
    li      a0, 0
    sb      a1,52908235(sp)
    mv      a1, a0
    j       .L4_0
.L4_0:
    mv      a0, a0
    sw      a1,52908231(sp)
    li      a1, 0
    sw      a2,158724144(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    xori    a2,a2,1
    bnez    a2, .branch_true_39
    j       .branch_false_39
.branch_true_39:
    li      a1, 1
    sb      a2,52908230(sp)
    sub     a2,a1,a0
    sw      s1,105816184(sp)
    sd      s2,158724184(sp)
    sd      s3,105816200(sp)
    sd      s4,158724168(sp)
    sw      s5,158724112(sp)
    sw      s6,52908268(sp)
    sw      s7,52908260(sp)
    sw      s8,52908252(sp)
    sw      s9,52908244(sp)
    sw      s10,52908236(sp)
    sw      s11,105816192(sp)
    sw      a2,52908224(sp)
    sw      a0,158724160(sp)
    mv      a0, a0
    mv      a1, a1
    mv      a2, a2
    sw      a3,158724136(sp)
    mv      a3, a3
    sw      a4,158724128(sp)
    mv      a4, a4
    sw      a5,158724120(sp)
    li      a5, 1
    call    dfs
    sw      a0,52908220(sp)
    sw      a0,52908220(sp)
    mv      a0, a0
    li      a1, 2
    call    equal
    sw      a0,52908212(sp)
    mv      a1, a1
    sub     a2,a1,a0
    mv      a3, a3
    mul     a4,a2,a3
    mv      a5, a5
    add     s1,a5,a4
    li      s2, 1000000007
    mv      s3, s3
    rem     s3,s1,s2
    j       .branch_false_39
.branch_false_39:
.L5_0:
    mv      s4, s4
    li      s5, 0
    xor     s6,s4,s5
    sltiu   s6,s6,1
    xori    s6,s6,1
    bnez    s6, .branch_true_42
    j       .branch_false_42
.branch_true_42:
    li      s7, 1
    add     s8,a1,s7
    sub     s9,s4,s7
    sw      s1,52908188(sp)
    sw      s3,52908180(sp)
    sw      s4,158724152(sp)
    sb      s6,52908179(sp)
    sw      s8,52908175(sp)
    sw      s9,52908168(sp)
    sw      a0,52908212(sp)
    mv      a0, a0
    sw      a1,158724160(sp)
    mv      a1, a1
    sw      a2,52908204(sp)
    mv      a2, a2
    sw      a3,52908220(sp)
    mv      a3, a3
    sw      a4,52908196(sp)
    mv      a4, a4
    sw      a5,52908231(sp)
    li      a5, 2
    call    dfs
    sw      a0,52908160(sp)
    sw      a0,52908160(sp)
    mv      a0, a0
    li      a1, 3
    call    equal
    sw      a0,52908152(sp)
    mv      a1, a1
    sub     a2,a1,a0
    mv      a3, a3
    mul     a4,a2,a3
    mv      a5, a5
    add     s1,a5,a4
    li      s2, 1000000007
    mv      s3, s3
    rem     s3,s1,s2
    j       .branch_false_42
.branch_false_42:
.L6_0:
    mv      s4, s4
    li      s5, 0
    xor     s6,s4,s5
    sltiu   s6,s6,1
    xori    s6,s6,1
    bnez    s6, .branch_true_45
    j       .branch_false_45
.branch_true_45:
    li      s7, 1
    add     s8,a1,s7
    sub     s9,s4,s7
    sw      s1,52908128(sp)
    sw      s3,52908120(sp)
    sw      s4,158724144(sp)
    sb      s6,52908119(sp)
    sw      s8,52908115(sp)
    sw      s9,52908108(sp)
    sw      a0,52908152(sp)
    mv      a0, a0
    sw      a1,158724152(sp)
    mv      a1, a1
    sw      a2,52908144(sp)
    mv      a2, a2
    sw      a3,52908160(sp)
    mv      a3, a3
    sw      a4,52908136(sp)
    mv      a4, a4
    sw      a5,52908231(sp)
    li      a5, 3
    call    dfs
    sw      a0,52908100(sp)
    sw      a0,52908100(sp)
    mv      a0, a0
    li      a1, 4
    call    equal
    sw      a0,52908092(sp)
    mv      a1, a1
    sub     a2,a1,a0
    mv      a3, a3
    mul     a4,a2,a3
    mv      a5, a5
    add     s1,a5,a4
    li      s2, 1000000007
    mv      s3, s3
    rem     s3,s1,s2
    j       .branch_false_45
.branch_false_45:
.L7_0:
    mv      s4, s4
    li      s5, 0
    xor     s6,s4,s5
    sltiu   s6,s6,1
    xori    s6,s6,1
    bnez    s6, .branch_true_48
    j       .branch_false_48
.branch_true_48:
    li      s7, 1
    add     s8,a1,s7
    sub     s9,s4,s7
    sw      s1,52908068(sp)
    sw      s3,52908060(sp)
    sw      s4,158724136(sp)
    sb      s6,52908059(sp)
    sw      s8,52908055(sp)
    sw      s9,52908048(sp)
    sw      a0,52908092(sp)
    mv      a0, a0
    sw      a1,158724144(sp)
    mv      a1, a1
    sw      a2,52908084(sp)
    mv      a2, a2
    sw      a3,52908100(sp)
    mv      a3, a3
    sw      a4,52908076(sp)
    mv      a4, a4
    sw      a5,52908231(sp)
    li      a5, 4
    call    dfs
    sw      a0,52908040(sp)
    sw      a0,52908040(sp)
    mv      a0, a0
    li      a1, 5
    call    equal
    sw      a0,52908032(sp)
    mv      a1, a1
    sub     a2,a1,a0
    mv      a3, a3
    mul     a4,a2,a3
    mv      a5, a5
    add     s1,a5,a4
    li      s2, 1000000007
    mv      s3, s3
    rem     s3,s1,s2
    j       .branch_false_48
.branch_false_48:
.L8_0:
    mv      s4, s4
    li      s5, 0
    xor     s6,s4,s5
    sltiu   s6,s6,1
    xori    s6,s6,1
    bnez    s6, .branch_true_51
    j       .branch_false_51
.branch_true_51:
    li      s7, 1
    add     s8,a1,s7
    sub     s9,s4,s7
    sw      s1,52908008(sp)
    sw      s3,52908000(sp)
    sw      s4,158724128(sp)
    sb      s6,52907999(sp)
    sw      s8,52907995(sp)
    sw      s9,52907988(sp)
    sw      a0,52908032(sp)
    mv      a0, a0
    sw      a1,158724136(sp)
    mv      a1, a1
    sw      a2,52908024(sp)
    mv      a2, a2
    sw      a3,52908040(sp)
    mv      a3, a3
    sw      a4,52908016(sp)
    mv      a4, a4
    sw      a5,52908231(sp)
    li      a5, 5
    call    dfs
    sw      a0,52907980(sp)
    mv      a1, a1
    mul     a2,a1,a0
    mv      a3, a3
    add     a4,a3,a2
    li      a5, 1000000007
    mv      s1, s1
    rem     s1,a4,a5
    j       .branch_false_51
.branch_false_51:
.L9_0:
    li      s2, 0
    li      s3, 734832
    mv      s4, s4
    mul     s5,s3,s4
    add     s2,s2,s5
    li      s6, 40824
    mv      s7, s7
    mul     s8,s6,s7
    add     s2,s2,s8
    li      s9, 2268
    mv      s10, s10
    mul     s11,s9,s10
    add     s2,s2,s11
    li      a5, 126
    mv      s3, s3
    mul     s5,a5,s3
    add     s2,s2,s5
    li      a5, 7
    mul     s5,a5,a1
    add     s2,s2,s5
    li      a5, 1
    mv      s5, s5
    mul     s6,a5,s5
    add     s2,s2,s6
    slli s2,s2,2
    add     s2,s2,s2
    li      a5, 1000000007
    mv      s6, s6
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
    li      s8, 158724184
    add     s8,sp,s8
    ld      ra,0(s8)
    li      s11, 158724168
    add     s11,sp,s11
    ld      s0,0(s11)
    lw      a0,8(sp)
    sw      a0,52907980(sp)
    li      a0, 158724192
    li      a0, 158724192
    add     sp,a0,sp
    ret
    .globl main
    .type main,@function
main:
    li      a0, -2488
    li      a0, -2488
    add     sp,a0,sp
    sd      ra,2480(sp)
    sd      s0,2464(sp)
    li      a0, 2488
    li      a0, 2488
    add     s0,a0,sp
.L0_0:
    sw      s1,52907956(sp)
    sd      s2,52907944(sp)
    sw      s3,158724136(sp)
    sw      s4,158724160(sp)
    sw      s5,158724120(sp)
    sw      s6,52907936(sp)
    sw      s7,158724152(sp)
    sd      s8,158724184(sp)
    sw      s9,52907928(sp)
    sw      s10,158724144(sp)
    sd      s11,158724168(sp)
    call    getint
    sw      a0,2456(sp)
    mv      s1, a0
    li      s2, 0
    mv      s3, s2
    j       .while.head_60
.while.head_60:
    li      s4, 18
    slt     s5,s3,s4
    bnez    s5, .while.body_60
    j       .while.exit_60
.while.body_60:
    mv      s6, s2
    j       .while.head_64
.while.head_64:
    slt     s7,s6,s4
    bnez    s7, .while.body_64
    j       .while.exit_64
.while.body_64:
    mv      s8, s2
    j       .while.head_68
.while.head_68:
    slt     s9,s8,s4
    bnez    s9, .while.body_68
    j       .while.exit_68
.while.body_68:
    mv      s10, s2
    j       .while.head_72
.while.head_72:
    slt     s11,s10,s4
    bnez    s11, .while.body_72
    j       .while.exit_72
.while.body_72:
    mv      s4, s2
    j       .while.head_76
.while.head_76:
    li      s2, 18
    sw      a0,2456(sp)
    slt     a0,s4,s2
    bnez    a0, .while.body_76
    j       .while.exit_76
.while.body_76:
    li      s2, 0
    sb      a0,2411(sp)
    mv      a0, s2
    j       .while.head_80
.while.head_80:
    li      s2, 7
    sw      a1,158724128(sp)
    slt     a1,a0,s2
    bnez    a1, .while.body_80
    j       .while.exit_80
.while.body_80:
    li      s2, 0
    sw      a0,2404(sp)
    li      a0, 734832
    sb      a1,2403(sp)
    mul     a1,a0,s3
    add     s2,s2,a1
    li      a0, 40824
    mul     a1,a0,s6
    add     s2,s2,a1
    li      a0, 2268
    mul     a1,a0,s8
    add     s2,s2,a1
    li      a0, 126
    mul     a1,a0,s10
    add     s2,s2,a1
    li      a0, 7
    mul     a1,a0,s4
    add     s2,s2,a1
    li      a0, 1
    mv      a1, a1
    sw      a2,52907972(sp)
    mul     a2,a0,a1
    add     s2,s2,a2
    slli s2,s2,2
    add     s2,s2,s2
    li      a0, -1
    sd      a0,0(s2)
    li      a0, 1
    add     a2,a1,a0
    j       .while.head_80
.while.exit_80:
    sw      a1,2404(sp)
    add     a1,s4,a0
    j       .while.head_76
.while.exit_76:
    sw      a1,2380(sp)
    add     a1,s10,a0
    j       .while.head_72
.while.exit_72:
    sw      a1,2372(sp)
    add     a1,s8,a0
    j       .while.head_68
.while.exit_68:
    sw      a1,2364(sp)
    add     a1,s6,a0
    j       .while.head_64
.while.exit_64:
    sw      a1,2356(sp)
    add     a1,s3,a0
    j       .while.head_60
.while.exit_60:
    li      a0, 0
    j       .while.head_91
.while.head_91:
    slt     a0,s3,s1
    bnez    a0, .while.body_91
    j       .while.exit_91
.while.body_91:
    sb      a0,2347(sp)
    li      a0, 0
    sw      a1,2348(sp)
    li      a1, 1
    sw      a2,2388(sp)
    mul     a2,a1,s3
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
    sw      s1,2448(sp)
    sd      s2,2395(sp)
    sw      s3,2440(sp)
    sw      s4,2412(sp)
    sb      s5,2439(sp)
    sw      s6,2432(sp)
    sb      s7,2431(sp)
    sw      s8,2424(sp)
    sb      s9,2423(sp)
    sw      s10,2419(sp)
    sb      s11,2418(sp)
    call    getint
    sd      a0,2336(sp)
    sw      a0,2332(sp)
    mv      s1, s1
    sd      a0,0(s1)
    la      s2, list
    lw      s3,0(s2)
    li      s4, 0
    mv      s5, s5
    mul     s6,a1,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s7, 0
    mv      s8, s8
    mul     s9,a1,s8
    add     s7,s7,s9
    slli s7,s7,2
    add     s7,s7,s7
    la      s10, list
    lw      s11,0(s10)
    li      a1, 0
    li      a2, 1
    mul     s2,a2,s5
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    la      a2, cns
    lw      s3,0(a2)
    li      a2, 0
    li      s3, 1
    mv      s9, s9
    mul     s10,s3,s9
    add     a2,a2,s10
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    mv      s3, s3
    li      s11, 1
    sw      a0,2332(sp)
    add     a0,s3,s11
    sd      a0,0(s7)
    sw      a0,552(sp)
    add     a0,s5,s11
    j       .while.head_91
.while.exit_91:
    la      s11, cns
    sw      a0,544(sp)
    lw      a0,0(s11)
    li      a0, 0
    li      s11, 1
    sd      a1,672(sp)
    li      a1, 1
    sd      a2,568(sp)
    mul     a2,s11,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    la      a1, cns
    lw      s11,0(a1)
    li      a1, 0
    li      s11, 1
    sd      a0,448(sp)
    li      a0, 2
    sw      a2,536(sp)
    mul     a2,s11,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    la      a0, cns
    lw      s11,0(a0)
    li      a0, 0
    li      s11, 1
    sd      a1,344(sp)
    li      a1, 3
    sw      a2,432(sp)
    mul     a2,s11,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    la      a1, cns
    lw      s11,0(a1)
    li      a1, 0
    li      s11, 1
    sd      a0,240(sp)
    li      a0, 4
    sw      a2,328(sp)
    mul     a2,s11,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    la      a0, cns
    lw      s11,0(a0)
    li      a0, 0
    li      s11, 1
    sd      a1,136(sp)
    li      a1, 5
    sw      a2,224(sp)
    mul     a2,s11,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s1,2336(sp)
    sw      s2,1480(sp)
    sw      s3,560(sp)
    sd      s4,1512(sp)
    sw      s5,2440(sp)
    sw      s6,2324(sp)
    sd      s7,1488(sp)
    sw      s8,1504(sp)
    sw      s9,664(sp)
    sw      s10,656(sp)
    sd      a0,32(sp)
    mv      a0, a0
    mv      a1, a1
    sw      a2,120(sp)
    mv      a2, a2
    sw      a3,52908231(sp)
    mv      a3, a3
    sw      a4,52907964(sp)
    mv      a4, a4
    sd      a5,16(sp)
    li      a5, 0
    call    dfs
    sw      a0,16(sp)
    mv      a1, a0
    sw      a1,8(sp)
    sw      a0,16(sp)
    mv      a0, a0
    call    putint
    li      a0, 2480
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 2464
    add     a1,sp,a1
    ld      s0,0(a1)
    lw      a0,8(sp)
    li      a2, 2488
    li      a2, 2488
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
