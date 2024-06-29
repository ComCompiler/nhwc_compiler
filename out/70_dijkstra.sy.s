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
    .globl Dijkstra
    .type Dijkstra,@function
Dijkstra:
    addi    sp,sp,-296
    sd      ra,288(sp)
    sd      s0,280(sp)
    addi    s0,sp,296
.L3_0:
    li      a0, 1
    j       .while.head_27
.while.head_27:
    la      a1, n
    lw      a2,0(a1)
    slt     a3,a2,a0
    xori    a3,a3,1
    bnez    a3, .while.body_27
    j       .while.exit_27
.while.body_27:
    li      a1, 0
    li      a4, 1
    mul     a5,a4,a0
    add     a1,a1,a5
    slli a1,a1,2
    la      a6, dis
    add     a1,a1,a6
    li      a7, 0
    li      s1, 1
    mul     s2,a4,s1
    add     a7,a7,s2
    slli a7,a7,2
    la      s3, e
    add     a7,a7,s3
    lw      s4,0(a7)
    sw      s4,0(a1)
    li      s5, 0
    mul     s6,a4,a0
    add     s5,s5,s6
    slli s5,s5,2
    la      s7, book
    add     s5,s5,s7
    li      s8, 0
    sw      s8,0(s5)
    add     s9,a0,a4
    mv      a0, s9
    sw      s9,228(sp)
    sb      a3,267(sp)
    sw      a2,268(sp)
    sd      a1,256(sp)
    sd      s5,232(sp)
    sd      a7,248(sp)
    sw      s4,244(sp)
    j       .while.head_27
.while.exit_27:
    li      a1, 0
    li      a4, 1
    li      a5, 1
    mul     a6,a4,a5
    add     a1,a1,a6
    slli a1,a1,2
    la      a7, book
    add     a1,a1,a7
    sw      a4,0(a1)
    li      a0, 1
    j       .while.head_35
.while.head_35:
    la      a4, n
    lw      a5,0(a4)
    li      a6, 1
    sub     a7,a5,a6
    slt     s1,a7,a0
    xori    s1,s1,1
    bnez    s1, .while.body_35
    j       .while.exit_35
.while.body_35:
    li      a4, 65535
    li      a6, 0
    li      s2, 1
    j       .while.head_41
.while.head_41:
    la      s3, n
    lw      s4,0(s3)
    slt     s5,s4,s2
    xori    s5,s5,1
    bnez    s5, .while.body_41
    j       .while.exit_41
.while.body_41:
    li      s3, 0
    li      s6, 1
    mul     s7,s6,s2
    add     s3,s3,s7
    slli s3,s3,2
    la      s8, book
    add     s3,s3,s8
    lw      s9,0(s3)
    li      s10, 0
    xor     s11,s9,s10
    seqz    s11, s11
    li      s6, 0
    li      s7, 1
    mul     s8,s7,s2
    add     s6,s6,s8
    slli s6,s6,2
    la      s7, dis
    add     s6,s6,s7
    lw      s7,0(s6)
    slt     s8,s7,a4
    and     s10,s8,s11
    sb      s11,171(sp)
    bnez    s10, .branch_true_44
    j       .branch_false_44
.branch_true_44:
    li      s11, 0
    sw      a0,276(sp)
    li      a0, 1
    sd      a1,216(sp)
    mul     a1,a0,s2
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, dis
    add     s11,s11,a0
    lw      a0,0(s11)
    mv      a4, a0
    mv      a6, s2
    sd      s11,144(sp)
    sw      a0,140(sp)
    lw      a0,276(sp)
    ld      a1,216(sp)
    j       .branch_false_44
.branch_false_44:
.L4_0:
    li      s11, 1
    sw      a0,276(sp)
    add     a0,s2,s11
    mv      s2, a0
    sw      s9,172(sp)
    sd      s3,176(sp)
    sb      s10,154(sp)
    sw      a0,136(sp)
    sd      s6,160(sp)
    sb      s5,187(sp)
    sw      s7,156(sp)
    sb      s8,155(sp)
    sw      s4,188(sp)
    lw      a0,276(sp)
    j       .while.head_41
.while.exit_41:
    li      s3, 0
    li      s6, 1
    mul     s7,s6,a6
    add     s3,s3,s7
    slli s3,s3,2
    la      s8, book
    add     s3,s3,s8
    sw      s6,0(s3)
    li      s9, 1
    j       .while.head_52
.while.head_52:
    la      s6, n
    lw      s7,0(s6)
    slt     s8,s7,s9
    xori    s8,s8,1
    bnez    s8, .while.body_52
    j       .while.exit_52
.while.body_52:
    li      s6, 0
    li      s10, 1
    mul     s11,s10,a6
    add     s6,s6,s11
    slli s6,s6,2
    la      s10, e
    add     s6,s6,s10
    lw      s10,0(s6)
    li      s11, 65535
    sw      a0,276(sp)
    slt     a0,s10,s11
    bnez    a0, .branch_true_55
    j       .branch_false_55
.branch_true_55:
    li      s11, 0
    sb      a0,99(sp)
    li      a0, 1
    sd      a1,216(sp)
    mul     a1,a0,a6
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, e
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 0
    sw      a0,84(sp)
    li      a0, 1
    sw      a2,268(sp)
    mul     a2,a0,a6
    add     a1,a1,a2
    slli a1,a1,2
    la      a0, dis
    add     a1,a1,a0
    lw      a0,0(a1)
    lw      a2,84(sp)
    sd      a1,72(sp)
    add     a1,a0,a2
    sw      a0,68(sp)
    li      a0, 0
    sw      a1,64(sp)
    li      a1, 1
    sw      a2,84(sp)
    mul     a2,a1,s9
    add     a0,a0,a2
    slli a0,a0,2
    la      a1, dis
    add     a0,a0,a1
    lw      a1,0(a0)
    lw      a2,64(sp)
    sd      a0,56(sp)
    slt     a0,a2,a1
    sd      s11,88(sp)
    bnez    a0, .branch_true_58
    j       .branch_false_58
.branch_true_58:
    li      s11, 0
    sb      a0,51(sp)
    li      a0, 1
    sw      a1,52(sp)
    mul     a1,a0,s9
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, dis
    add     s11,s11,a0
    li      a0, 0
    li      a1, 1
    sw      a2,64(sp)
    mul     a2,a1,a6
    add     a0,a0,a2
    slli a0,a0,2
    la      a1, e
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a2, 0
    sd      a0,32(sp)
    li      a0, 1
    sw      a1,28(sp)
    mul     a1,a0,a6
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, dis
    add     a2,a2,a0
    lw      a0,0(a2)
    lw      a1,28(sp)
    sd      a2,16(sp)
    add     a2,a0,a1
    sw      a2,0(s11)
    sd      s11,40(sp)
    sw      a0,12(sp)
    sw      a2,8(sp)
    sw      a1,28(sp)
    lb      a0,51(sp)
    lw      a2,64(sp)
    lw      a1,52(sp)
    j       .branch_false_58
.branch_false_58:
.branch_false_55:
.L5_0:
    li      s11, 1
    sb      a0,99(sp)
    add     a0,s9,s11
    mv      s9, a0
    sw      s10,100(sp)
    sw      a0,4(sp)
    sd      s6,104(sp)
    sw      s7,120(sp)
    sb      s8,119(sp)
    lw      a0,276(sp)
    j       .while.head_52
.while.exit_52:
    li      s6, 1
    add     s10,a0,s6
    mv      a0, s10
    sw      s9,124(sp)
    sd      s3,128(sp)
    sw      s10,0(sp)
    sw      a6,196(sp)
    sb      s5,187(sp)
    sw      s7,120(sp)
    sw      s2,192(sp)
    sb      s8,119(sp)
    sw      a7,208(sp)
    sw      a4,200(sp)
    sw      s4,188(sp)
    sb      s1,207(sp)
    sw      a5,212(sp)
    j       .while.head_35
.while.exit_35:
    ld      ra,288(sp)
    ld      s0,280(sp)
    addi    sp,sp,296
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-144
    sd      ra,136(sp)
    sd      s0,128(sp)
    addi    s0,sp,144
.L0_0:
    call    getint
    sw      a0,120(sp)
    la      a1, n
    sw      a0,0(a1)
    sw      a0,120(sp)
    call    getint
    sw      a0,116(sp)
    la      a1, m
    sw      a0,0(a1)
    li      a2, 1
    j       .while.head_70
.while.head_70:
    la      a1, n
    lw      a3,0(a1)
    slt     a4,a3,a2
    xori    a4,a4,1
    bnez    a4, .while.body_70
    j       .while.exit_70
.while.body_70:
    li      a1, 1
    j       .while.head_74
.while.head_74:
    la      a5, n
    lw      a6,0(a5)
    slt     a7,a6,a1
    xori    a7,a7,1
    bnez    a7, .while.body_74
    j       .while.exit_74
.while.body_74:
    xor     a5,a2,a1
    seqz    a5, a5
    bnez    a5, .branch_true_77
    j       .branch_false_77
.branch_true_77:
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a2
    add     s1,s1,s3
    slli s1,s1,2
    la      s4, e
    add     s1,s1,s4
    li      s5, 0
    sw      s5,0(s1)
    j       .L1_0
.branch_false_77:
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a2
    add     s1,s1,s3
    slli s1,s1,2
    la      s4, e
    add     s1,s1,s4
    li      s5, 65535
    sw      s5,0(s1)
    sd      s1,72(sp)
    ld      s1,88(sp)
    j       .L1_0
.L1_0:
.L2_0:
    li      s2, 1
    add     s3,a1,s2
    mv      a1, s3
    sb      a5,98(sp)
    sd      s1,88(sp)
    sb      a7,99(sp)
    sw      a6,100(sp)
    sw      s3,84(sp)
    j       .while.head_74
.while.exit_74:
    li      a5, 1
    add     s1,a2,a5
    mv      a2, s1
    sw      a1,104(sp)
    sw      s1,68(sp)
    sw      a3,112(sp)
    sb      a4,111(sp)
    sb      a7,99(sp)
    sw      a6,100(sp)
    j       .while.head_70
.while.exit_70:
    li      a2, 1
    j       .while.head_84
.while.head_84:
    la      a1, m
    lw      a5,0(a1)
    slt     a6,a5,a2
    xori    a6,a6,1
    bnez    a6, .while.body_84
    j       .while.exit_84
.while.body_84:
    sw      a0,116(sp)
    sw      a2,124(sp)
    sw      a3,112(sp)
    sb      a4,111(sp)
    sw      a5,64(sp)
    sb      a6,63(sp)
    call    getint
    sw      a0,56(sp)
    mv      a1, a0
    sw      a0,56(sp)
    sw      a1,52(sp)
    call    getint
    sw      a0,48(sp)
    mv      a1, a0
    li      a2, 0
    li      a3, 1
    lw      a4,52(sp)
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    la      a6, e
    add     a2,a2,a6
    sw      a0,48(sp)
    sw      a1,44(sp)
    sd      a2,32(sp)
    sw      a4,52(sp)
    call    getint
    sw      a0,28(sp)
    ld      a1,32(sp)
    sw      a0,0(a1)
    lw      a2,124(sp)
    li      a3, 1
    add     a4,a2,a3
    mv      a2, a4
    sd      a1,32(sp)
    sw      a4,24(sp)
    sw      a0,28(sp)
    lw      a3,112(sp)
    lb      a4,111(sp)
    lw      a0,116(sp)
    j       .while.head_84
.while.exit_84:
    sw      a0,116(sp)
    sw      a2,124(sp)
    sw      a3,112(sp)
    sb      a4,111(sp)
    sw      a5,64(sp)
    sb      a6,63(sp)
    call    Dijkstra
    li      a0, 1
    j       .while.head_92
.while.head_92:
    la      a1, n
    lw      a2,0(a1)
    slt     a3,a2,a0
    xori    a3,a3,1
    bnez    a3, .while.body_92
    j       .while.exit_92
.while.body_92:
    li      a1, 0
    li      a4, 1
    mul     a5,a4,a0
    add     a1,a1,a5
    slli a1,a1,2
    la      a6, dis
    add     a1,a1,a6
    lw      a7,0(a1)
    sw      a0,124(sp)
    sd      a1,8(sp)
    sw      a2,20(sp)
    sb      a3,19(sp)
    sw      a7,4(sp)
    lw      a0,4(sp)
    call    putint
    li      a0, 32
    call    putch
    lw      a0,124(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,0(sp)
    j       .while.head_92
.while.exit_92:
    sw      a0,124(sp)
    sw      a2,20(sp)
    sb      a3,19(sp)
    li      a0, 10
    call    putch
    ld      ra,136(sp)
    ld      s0,128(sp)
    li      a0, 0
    addi    sp,sp,144
    ret
.section ___var
    .data
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
