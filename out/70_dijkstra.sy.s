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
    li      a0, -4952
    li      a0, -4952
    add     sp,a0,sp
    sd      ra,4944(sp)
    sd      s0,4928(sp)
    li      a1, 4952
    li      a1, 4952
    add     s0,a1,sp
.L3_0:
    li      a2, 1
    mv      a3, a2
    j       .while.head_27
.while.head_27:
    la      a4, n
    lw      a5,0(a4)
    mv      a6, a6
    slt     a7,a3,a6
    xori    a7,a7,1
    bnez    a7, .while.body_27
    j       .while.exit_27
.while.body_27:
    li      s1, 0
    mul     s2,a2,a3
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
    la      s3, e
    lw      s4,0(s3)
    li      s5, 0
    li      s6, 16
    mul     s7,s6,a2
    add     s5,s5,s7
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    mv      s8, s8
    sd      s8,0(s1)
    li      s9, 0
    mul     s10,a2,a3
    add     s9,s9,s10
    slli s9,s9,2
    add     s9,s9,s9
    li      s11, 0
    sd      s11,0(s9)
    add     a0,a3,a2
    j       .while.head_27
.while.exit_27:
    li      a1, 0
    li      a4, 1
    mul     a5,a2,a4
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,a1
    sd      a2,0(a1)
    j       .while.head_35
.while.head_35:
    la      a2, n
    lw      a4,0(a2)
    mv      a2, a2
    li      a4, 1
    sub     a5,a2,a4
    slt     a4,a3,a5
    xori    a4,a4,1
    bnez    a4, .while.body_35
    j       .while.exit_35
.while.body_35:
    li      s2, 65535
    mv      s3, s2
    mv      s2, s11
    li      s4, 1
    mv      s6, s4
    j       .while.head_41
.while.head_41:
    la      s4, n
    lw      s10,0(s4)
    mv      s4, s4
    slt     s10,s6,s4
    xori    s10,s10,1
    bnez    s10, .while.body_41
    j       .while.exit_41
.while.body_41:
    la      s11, book
    sw      a0,3816(sp)
    lw      a0,0(s11)
    li      a0, 0
    li      s11, 1
    sd      a1,3800(sp)
    mul     a1,s11,s6
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      s11, s11
    sd      a0,3680(sp)
    li      a0, 0
    sw      a1,3751(sp)
    xor     a1,s11,a0
    sltiu   a1,a1,1
    la      a0, dis
    sb      a1,3671(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,3792(sp)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,3592(sp)
    slt     a0,a1,s3
    sw      a1,3584(sp)
    mv      a1, a1
    sw      a2,3664(sp)
    and     a2,a0,a1
    bnez    a2, .branch_true_44
    j       .branch_false_44
.branch_true_44:
    sb      a0,3583(sp)
    la      a0, dis
    sb      a1,3671(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,3582(sp)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    j       .branch_false_44
.branch_false_44:
.L4_0:
    sd      a0,3504(sp)
    li      a0, 1
    sw      a1,3496(sp)
    add     a1,s6,a0
    j       .while.head_41
.while.exit_41:
    li      a0, 0
    sw      a1,3492(sp)
    li      a1, 1
    sw      a2,3576(sp)
    mul     a2,a1,s2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
    sd      a1,0(a0)
    mv      a2, a1
    j       .while.head_52
.while.head_52:
    la      a1, n
    sd      a0,3480(sp)
    lw      a0,0(a1)
    mv      a0, a0
    slt     a1,a2,a0
    xori    a1,a1,1
    bnez    a1, .while.body_52
    j       .while.exit_52
.while.body_52:
    sw      a0,3464(sp)
    la      a0, e
    sb      a1,3463(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 16
    sw      a2,3472(sp)
    mul     a2,a1,s2
    add     a0,a0,a2
    li      a1, 1
    sw      a2,3459(sp)
    mv      a2, a2
    sw      a3,4920(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,2424(sp)
    li      a0, 65535
    sw      a2,3472(sp)
    slt     a2,a1,a0
    bnez    a2, .branch_true_55
    j       .branch_false_55
.branch_true_55:
    la      a0, e
    sw      a1,2416(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 16
    sb      a2,2415(sp)
    mul     a2,a1,s2
    add     a0,a0,a2
    li      a1, 1
    sw      a2,2408(sp)
    mv      a2, a2
    sw      a3,3459(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    la      a1, dis
    sd      a0,1380(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 1
    sw      a2,3472(sp)
    mul     a2,a1,s2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,1288(sp)
    mv      a0, a0
    sw      a2,1364(sp)
    add     a2,a1,a0
    sw      a0,1372(sp)
    la      a0, dis
    sw      a1,1280(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,1272(sp)
    mv      a2, a2
    sw      a3,2408(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,1192(sp)
    mv      a0, a0
    sw      a2,3472(sp)
    slt     a2,a0,a1
    bnez    a2, .branch_true_58
    j       .branch_false_58
.branch_true_58:
    sw      a0,1272(sp)
    li      a0, 0
    sw      a1,1184(sp)
    li      a1, 1
    sb      a2,1183(sp)
    mv      a2, a2
    sw      a3,1264(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, e
    lw      a3,0(a1)
    li      a1, 0
    li      a3, 16
    sd      a0,1168(sp)
    mul     a0,a3,s2
    add     a1,a1,a0
    li      a3, 1
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    la      a3, dis
    sw      a0,1164(sp)
    lw      a0,0(a3)
    li      a0, 0
    li      a3, 1
    sd      a1,128(sp)
    mul     a1,a3,s2
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a3, a3
    sd      a0,40(sp)
    mv      a0, a0
    sw      a1,112(sp)
    add     a1,a3,a0
    sw      a0,120(sp)
    mv      a0, a0
    sd      a1,0(a0)
    j       .branch_false_58
.branch_false_58:
.branch_false_55:
.L5_0:
    sd      a0,1168(sp)
    li      a0, 1
    sw      a1,24(sp)
    add     a1,a2,a0
    j       .while.head_52
.while.exit_52:
    mv      a0, a0
    sw      a1,16(sp)
    li      a1, 1
    sw      a2,3472(sp)
    add     a2,a0,a1
    j       .while.head_35
.while.exit_35:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-288
    sd      ra,280(sp)
    sd      s0,264(sp)
    addi    s0,sp,288
.L0_0:
    sd      s1,4888(sp)
    sw      s2,3772(sp)
    sw      s3,3779(sp)
    sw      s4,3756(sp)
    sd      s5,3848(sp)
    sw      s6,3764(sp)
    sw      s7,4884(sp)
    sw      s8,3840(sp)
    sd      s9,3824(sp)
    sb      s10,3755(sp)
    sw      s11,3672(sp)
    call    getint
    sw      a0,4920(sp)
    sw      a0,248(sp)
    la      s1, n
    sd      a0,0(s1)
    call    getint
    sw      a0,248(sp)
    sw      a0,240(sp)
    la      s1, m
    sd      a0,0(s1)
    mv      s2, a1
    j       .while.head_70
.while.head_70:
    la      s3, n
    lw      s4,0(s3)
    mv      s5, s5
    slt     s6,s2,s5
    xori    s6,s6,1
    bnez    s6, .while.body_70
    j       .while.exit_70
.while.body_70:
    mv      s7, a1
    j       .while.head_74
.while.head_74:
    la      s8, n
    lw      s9,0(s8)
    mv      s10, s10
    slt     s11,s7,s10
    xori    s11,s11,1
    bnez    s11, .while.body_74
    j       .while.exit_74
.while.body_74:
    xor     a1,s2,s7
    sltiu   a1,a1,1
    bnez    a1, .branch_true_77
    j       .branch_false_77
.branch_true_77:
    li      s1, 0
    li      s3, 16
    mul     s4,s3,s2
    add     s1,s1,s4
    li      s3, 1
    mul     s4,s3,s7
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,s1
    li      s3, 0
    sd      s3,0(s1)
    j       .L1_0
.branch_false_77:
    li      s3, 0
    li      s4, 16
    mul     s8,s4,s2
    add     s3,s3,s8
    li      s4, 1
    mul     s8,s4,s7
    add     s3,s3,s8
    slli s3,s3,2
    add     s3,s3,s3
    li      s4, 65535
    sd      s4,0(s3)
    j       .L1_0
.L1_0:
.L2_0:
    li      s4, 1
    add     s8,s7,s4
    j       .while.head_74
.while.exit_74:
    add     s9,s2,s4
    j       .while.head_70
.while.exit_70:
    j       .while.head_84
.while.head_84:
    la      s4, m
    sw      a0,240(sp)
    lw      a0,0(s4)
    mv      a0, a0
    slt     s4,s2,a0
    xori    s4,s4,1
    bnez    s4, .while.body_84
    j       .while.exit_84
.while.body_84:
    sd      s1,208(sp)
    sw      s2,256(sp)
    sd      s3,184(sp)
    sb      s4,167(sp)
    sw      s5,232(sp)
    sb      s6,231(sp)
    sw      s7,227(sp)
    sw      s8,200(sp)
    sw      s9,176(sp)
    sw      s10,220(sp)
    sb      s11,219(sp)
    call    getint
    sw      a0,168(sp)
    sw      a0,163(sp)
    mv      s1, a0
    sw      s1,156(sp)
    call    getint
    sw      a0,163(sp)
    sw      a0,148(sp)
    mv      s1, a0
    li      s2, 0
    li      s3, 16
    mv      s4, s4
    mul     s5,s3,s4
    add     s2,s2,s5
    li      s6, 1
    mul     s7,s6,s1
    add     s2,s2,s7
    slli s2,s2,2
    add     s2,s2,s2
    sw      s1,140(sp)
    sd      s2,128(sp)
    sw      s4,156(sp)
    call    getint
    sw      a0,148(sp)
    sw      a0,120(sp)
    mv      s1, s1
    sd      a0,0(s1)
    mv      s2, s2
    li      s3, 1
    add     s4,s2,s3
    j       .while.head_84
.while.exit_84:
    sd      s1,128(sp)
    sw      s2,256(sp)
    sw      s4,112(sp)
    call    Dijkstra
    li      s1, 1
    mv      s2, s1
    j       .while.head_92
.while.head_92:
    la      s3, n
    lw      s4,0(s3)
    mv      s5, s5
    slt     s6,s2,s5
    xori    s6,s6,1
    bnez    s6, .while.body_92
    j       .while.exit_92
.while.body_92:
    la      s7, dis
    lw      s8,0(s7)
    li      s9, 0
    mul     s10,s1,s2
    add     s9,s9,s10
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    sw      s2,256(sp)
    sw      s5,104(sp)
    sb      s6,103(sp)
    sd      s9,24(sp)
    sw      s10,99(sp)
    sw      a0,120(sp)
    mv      a0, a0
    call    putint
    li      a0, 32
    call    putch
    mv      a0, a0
    li      s1, 1
    add     s2,a0,s1
    j       .while.head_92
.while.exit_92:
    sw      s2,8(sp)
    sw      a0,256(sp)
    li      a0, 10
    call    putch
    ld      ra,280(sp)
    ld      s0,264(sp)
    li      a0, 0
    addi    sp,sp,288
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
