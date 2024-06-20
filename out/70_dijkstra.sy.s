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
    .globl Dijkstra
    .type Dijkstra,@function
Dijkstra:
    li      a0, -4776
    li      a0, -4776
    add     sp,a0,sp
    sd      ra,4768(sp)
    sd      s0,4760(sp)
    li      a1, 4776
    li      a1, 4776
    add     s0,a1,sp
.L3_0:
    li      a2, 1
    j       .while.head_27
.while.head_27:
    la      a3, n
    lw      a4,0(a3)
    slt     a6,a5,a2
    xori    a6,a6,1
    bnez    a6, .while.body_27
    j       .while.exit_27
.while.body_27:
    li      a7, 0
    li      s1, 1
    mul     s2,s1,a2
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,a7
    la      s3, e
    lw      s4,0(s3)
    li      s5, 0
    li      s6, 16
    mul     s7,s6,s1
    add     s5,s5,s7
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    sd      s8,0(a7)
    li      s9, 0
    mul     s10,s1,a2
    add     s9,s9,s10
    slli s9,s9,2
    add     s9,s9,s9
    li      s11, 0
    sd      s11,0(s9)
    add     a0,a2,s1
    j       .while.head_27
.while.exit_27:
    li      a1, 0
    li      a3, 1
    mul     a4,s1,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,a1
    sd      a3,0(a1)
    j       .while.head_35
.while.head_35:
    la      a3, n
    lw      a4,0(a3)
    sub     a4,a3,s1
    slt     s1,a4,a2
    xori    s1,s1,1
    bnez    s1, .while.body_35
    j       .while.exit_35
.while.body_35:
    li      s2, 65535
    li      s3, 0
    li      s4, 1
    j       .while.head_41
.while.head_41:
    la      s6, n
    lw      s10,0(s6)
    slt     s10,s6,s4
    xori    s10,s10,1
    bnez    s10, .while.body_41
    j       .while.exit_41
.while.body_41:
    la      s11, book
    sw      a0,3684(sp)
    lw      a0,0(s11)
    li      a0, 0
    li      s11, 1
    sd      a1,3672(sp)
    mul     a1,s11,s4
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,3568(sp)
    li      a0, 0
    sw      a1,3636(sp)
    xor     a1,s11,a0
    seqz    a1, a1
    la      a0, dis
    sb      a1,3563(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,4756(sp)
    mul     a2,a1,s4
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,3488(sp)
    slt     a0,a1,s2
    sw      a1,3484(sp)
    sw      a2,3556(sp)
    and     a2,a0,a1
    bnez    a2, .branch_true_44
    j       .branch_false_44
.branch_true_44:
    sb      a0,3483(sp)
    la      a0, dis
    sb      a1,3563(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,3482(sp)
    mul     a2,a1,s4
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    j       .branch_false_44
.branch_false_44:
.L4_0:
    sd      a0,3408(sp)
    li      a0, 1
    sw      a1,3404(sp)
    add     a1,s4,a0
    j       .while.head_41
.while.exit_41:
    li      a0, 0
    sw      a1,3400(sp)
    li      a1, 1
    sw      a2,3476(sp)
    mul     a2,a1,s3
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a1, 1
    j       .while.head_52
.while.head_52:
    la      a2, n
    sd      a0,3392(sp)
    lw      a0,0(a2)
    slt     a2,a0,a1
    xori    a2,a2,1
    bnez    a2, .while.body_52
    j       .while.exit_52
.while.body_52:
    sw      a0,3384(sp)
    la      a0, e
    sw      a1,3388(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 16
    sb      a2,3383(sp)
    mul     a2,a1,s3
    add     a0,a0,a2
    li      a1, 1
    sw      a2,3376(sp)
    sw      a3,3668(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,2344(sp)
    li      a0, 65535
    sw      a2,3388(sp)
    slt     a2,a1,a0
    bnez    a2, .branch_true_55
    j       .branch_false_55
.branch_true_55:
    la      a0, e
    sw      a1,2340(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 16
    sb      a2,2339(sp)
    mul     a2,a1,s3
    add     a0,a0,a2
    li      a1, 1
    sw      a2,2332(sp)
    sw      a3,3376(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    la      a1, dis
    sd      a0,1304(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 1
    sw      a2,3388(sp)
    mul     a2,a1,s3
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,1224(sp)
    sw      a2,1296(sp)
    add     a2,a1,a0
    sw      a0,1300(sp)
    la      a0, dis
    sw      a1,1220(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,1216(sp)
    sw      a3,2332(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,1144(sp)
    sw      a2,3388(sp)
    slt     a2,a0,a1
    bnez    a2, .branch_true_58
    j       .branch_false_58
.branch_true_58:
    sw      a0,1216(sp)
    li      a0, 0
    sw      a1,1140(sp)
    li      a1, 1
    sb      a2,1139(sp)
    sw      a3,1212(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, e
    lw      a3,0(a1)
    li      a1, 0
    li      a3, 16
    sd      a0,1128(sp)
    mul     a0,a3,s3
    add     a1,a1,a0
    li      a3, 1
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    la      a3, dis
    sw      a0,1124(sp)
    lw      a0,0(a3)
    li      a0, 0
    li      a3, 1
    sd      a1,96(sp)
    mul     a1,a3,s3
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,16(sp)
    sw      a1,88(sp)
    add     a1,a3,a0
    sw      a0,92(sp)
    sd      a1,0(a0)
    j       .branch_false_58
.branch_false_58:
.branch_false_55:
.L5_0:
    sd      a0,1128(sp)
    li      a0, 1
    sw      a1,8(sp)
    add     a1,a2,a0
    j       .while.head_52
.while.exit_52:
    sw      a1,4(sp)
    li      a1, 1
    sw      a2,3388(sp)
    add     a2,a0,a1
    j       .while.head_35
.while.exit_35:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-208
    sd      ra,200(sp)
    sd      s0,192(sp)
    addi    s0,sp,208
.L0_0:
    call    getint
    sw      a0,184(sp)
    la      a1, n
    sd      a0,0(a1)
    call    getint
    sw      a0,184(sp)
    sw      a0,180(sp)
    la      a2, m
    sd      a0,0(a2)
    li      a3, 1
    j       .while.head_70
.while.head_70:
    la      a4, n
    lw      a5,0(a4)
    slt     a7,a6,a3
    xori    a7,a7,1
    bnez    a7, .while.body_70
    j       .while.exit_70
.while.body_70:
    li      s1, 1
    j       .while.head_74
.while.head_74:
    la      s2, n
    lw      s3,0(s2)
    slt     s5,s4,s1
    xori    s5,s5,1
    bnez    s5, .while.body_74
    j       .while.exit_74
.while.body_74:
    xor     s6,a3,s1
    seqz    s6, s6
    bnez    s6, .branch_true_77
    j       .branch_false_77
.branch_true_77:
    li      s7, 0
    li      s8, 16
    mul     s9,s8,a3
    add     s7,s7,s9
    li      s10, 1
    mul     s11,s10,s1
    add     s7,s7,s11
    slli s7,s7,2
    add     s7,s7,s7
    li      a1, 0
    sd      a1,0(s7)
    j       .L1_0
.branch_false_77:
    li      a1, 0
    mul     a2,s8,a3
    add     a1,a1,a2
    mul     a2,s10,s1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,a1
    li      a2, 65535
    sd      a2,0(a1)
    j       .L1_0
.L1_0:
.L2_0:
    add     a2,s1,s10
    j       .while.head_74
.while.exit_74:
    add     a4,a3,s10
    j       .while.head_70
.while.exit_70:
    j       .while.head_84
.while.head_84:
    la      a5, m
    lw      s2,0(a5)
    slt     s2,a5,a3
    xori    s2,s2,1
    bnez    s2, .while.body_84
    j       .while.exit_84
.while.body_84:
    sw      s1,168(sp)
    sb      s2,127(sp)
    sw      s4,164(sp)
    sb      s5,163(sp)
    sb      s6,162(sp)
    sd      s7,152(sp)
    call    getint
    sw      a0,180(sp)
    sw      a0,120(sp)
    mv      s1, a0
    sw      s1,116(sp)
    call    getint
    sw      a0,120(sp)
    sw      a0,112(sp)
    mv      s1, a0
    li      s2, 0
    li      s3, 16
    mul     s5,s3,s4
    add     s2,s2,s5
    li      s6, 1
    mul     s7,s6,s1
    add     s2,s2,s7
    slli s2,s2,2
    add     s2,s2,s2
    sw      s1,108(sp)
    sd      s2,96(sp)
    sw      s4,116(sp)
    call    getint
    sw      a0,112(sp)
    sw      a0,92(sp)
    sd      a0,0(s1)
    li      s2, 1
    add     s3,a3,s2
    j       .while.head_84
.while.exit_84:
    sd      s1,96(sp)
    sw      s3,88(sp)
    call    Dijkstra
    j       .while.head_92
.while.head_92:
    la      s1, n
    lw      s2,0(s1)
    slt     s4,s3,a3
    xori    s4,s4,1
    bnez    s4, .while.body_92
    j       .while.exit_92
.while.body_92:
    la      s5, dis
    lw      s6,0(s5)
    li      s7, 0
    li      s8, 1
    mul     s9,s8,a3
    add     s7,s7,s9
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    sw      s3,84(sp)
    sb      s4,83(sp)
    sd      s7,8(sp)
    sw      s9,76(sp)
    sw      a0,92(sp)
    call    putint
    li      a0, 32
    call    putch
    li      a0, 1
    add     s1,a3,a0
    j       .while.head_92
.while.exit_92:
    sw      s1,0(sp)
    li      a0, 10
    call    putch
    ld      ra,200(sp)
    ld      s0,192(sp)
    li      a0, 0
    addi    sp,sp,208
    ret
.section        .data
    .align 4
    .globl w
    .type w,@object
w:
    .word 0
    .align 4
    .globl v2
    .type v2,@object
v2:
    .word 0
    .align 4
    .globl v1
    .type v1,@object
v1:
    .word 0
    .align 4
    .globl m
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
    .align 4
    .globl dis
    .type dis,@object
dis:
    .zero 64
    .align 4
    .globl book
    .type book,@object
book:
    .zero 64
    .align 4
    .globl e
    .type e,@object
e:
    .zero 1024
    .align 4
    .globl INF
    .type INF,@object
INF:
    .word 65535
