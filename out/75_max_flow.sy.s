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
    .globl my_memset
    .type my_memset,@function
my_memset:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L14_0:
    li      a3, 0
    j       .while.head_27
.while.head_27:
    slt     a4,a3,a2
    bnez    a4, .while.body_27
    j       .while.exit_27
.while.body_27:
    li      a5, 0
    li      a6, 1
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
    sd      a1,0(a5)
    add     a7,a3,a6
    j       .while.head_27
.while.exit_27:
    .globl add_node
    .type add_node,@function
add_node:
    addi    sp,sp,-656
    sd      ra,648(sp)
    sd      s0,640(sp)
    addi    s0,sp,656
.L13_0:
    la      a3, size
    lw      a4,0(a3)
    li      a5, 0
    li      a6, 1
    mul     a7,a6,a0
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    li      s1, 0
    li      s2, 10
    mul     s3,s2,a0
    add     s1,s1,s3
    mul     s5,a6,s4
    add     s1,s1,s5
    slli s1,s1,2
    add     s1,s1,s1
    sd      a1,0(s1)
    la      s6, size
    lw      s7,0(s6)
    li      s8, 0
    mul     s9,a6,a0
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      s10, 0
    mul     s11,s2,a0
    add     s10,s10,s11
    mul     a4,a6,a3
    add     s10,s10,a4
    slli s10,s10,2
    add     s10,s10,s10
    sd      a2,0(s10)
    la      a4, size
    lw      a6,0(a4)
    li      a4, 0
    li      a6, 1
    mul     s2,a6,a0
    add     a4,a4,s2
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    li      a6, 0
    li      s3, 10
    mul     s5,s3,a0
    add     a6,a6,s5
    li      s3, 1
    mul     s6,s3,s5
    add     a6,a6,s6
    slli a6,a6,2
    add     a6,a6,a6
    la      s3, size
    lw      s6,0(s3)
    li      s3, 0
    li      s6, 1
    mul     s7,s6,a1
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    sd      s6,0(a6)
    la      s11, size
    sw      a0,636(sp)
    lw      a0,0(s11)
    li      a0, 0
    li      s11, 1
    sw      a2,628(sp)
    mul     a2,s11,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s11, 0
    sd      a0,328(sp)
    li      a0, 10
    sw      a2,376(sp)
    mul     a2,a0,a1
    add     s11,s11,a2
    li      a0, 1
    sw      a1,632(sp)
    mul     a1,a0,a2
    add     s11,s11,a1
    slli s11,s11,2
    add     s11,s11,s11
    sd      a0,0(s11)
    la      a1, size
    sw      a0,636(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 1
    sw      a2,324(sp)
    sw      a3,508(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,264(sp)
    li      a0, 10
    sw      a3,308(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    li      a0, 1
    sw      a2,632(sp)
    mul     a2,a0,a3
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,a1
    li      a0, 0
    sd      a0,0(a1)
    la      a0, size
    lw      a2,0(a0)
    li      a0, 0
    li      a2, 1
    sd      a1,248(sp)
    sw      a3,260(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, 0
    sd      a0,200(sp)
    li      a0, 10
    sw      a3,244(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    li      a0, 1
    sw      a1,632(sp)
    mul     a1,a0,a3
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a2
    la      a0, size
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sd      a2,184(sp)
    sw      a3,196(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,136(sp)
    sd      a0,0(a1)
    sw      a0,132(sp)
    li      a0, 0
    sd      a1,184(sp)
    li      a1, 1
    sw      a3,180(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, size
    lw      a3,0(a1)
    li      a1, 0
    li      a3, 1
    sd      a0,120(sp)
    mul     a0,a3,a2
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      a0,116(sp)
    li      a0, 1
    sd      a1,72(sp)
    add     a1,a3,a0
    sd      a1,0(a0)
    sd      a0,120(sp)
    li      a0, 0
    sw      a1,64(sp)
    li      a1, 1
    sw      a2,636(sp)
    sw      a3,68(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, size
    lw      a3,0(a1)
    li      a1, 0
    li      a3, 1
    sd      a0,56(sp)
    mul     a0,a3,a2
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      a0,52(sp)
    li      a0, 1
    sd      a1,8(sp)
    add     a1,a3,a0
    sd      a1,0(a0)
    .globl dfs
    .type dfs,@function
dfs:
    li      a3, -4784
    li      a3, -4784
    add     sp,a3,sp
    sd      ra,4776(sp)
    sd      s0,4768(sp)
    li      a4, 4784
    li      a4, 4784
    add     s0,a4,sp
.L4_0:
    xor     a5,a0,a1
    seqz    a5, a5
    bnez    a5, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    li      a6, 4776
    add     a6,sp,a6
    ld      ra,0(a6)
    li      a7, 4768
    add     a7,sp,a7
    ld      s0,0(a7)
    mv      a0, a2
    li      a4, 4784
    add     sp,a4,sp
    ret
.branch_false_46:
.L5_0:
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a0
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,s1
    sd      s2,0(s1)
    li      s4, 0
    j       .while.head_51
.while.head_51:
    la      s5, size
    lw      s6,0(s5)
    li      s7, 0
    mul     s8,s2,a0
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    slt     s10,s4,s9
    bnez    s10, .while.body_51
    j       .while.exit_51
.while.body_51:
    la      s11, to
    lw      a3,0(s11)
    li      a3, 0
    li      a4, 10
    mul     s2,a4,a0
    add     a3,a3,s2
    li      a4, 1
    add     a3,a3,s2
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
    la      a4, used
    lw      s3,0(a4)
    li      a4, 0
    li      s3, 1
    mul     s6,s3,s5
    add     a4,a4,s6
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    li      s11, 0
    sw      a0,4764(sp)
    xor     a0,s3,s11
    snez    a0, a0
    bnez    a0, .branch_true_54
    j       .branch_false_54
.branch_true_54:
    li      s11, 1
    sb      a0,4211(sp)
    add     a0,s4,s11
    j       .while.exit_51
.branch_false_54:
.L6_0:
    la      s11, cap
    sw      a0,4204(sp)
    lw      a0,0(s11)
    li      a0, 0
    li      s11, 10
    sw      a1,4760(sp)
    sw      a2,4756(sp)
    mul     a2,s11,a1
    add     a0,a0,a2
    li      s11, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,3792(sp)
    li      a0, 0
    sw      a1,4764(sp)
    slt     a1,a0,s11
    xori    a1,a1,1
    bnez    a1, .branch_true_59
    j       .branch_false_59
.branch_true_59:
    li      a0, 1
    sb      a1,3787(sp)
    add     a1,s4,a0
    j       .while.exit_51
.branch_false_59:
.L7_0:
    j       .L8_0
.L8_0:
    la      a0, cap
    sw      a1,3780(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 10
    sw      a2,4200(sp)
    sd      a3,4272(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,3368(sp)
    sw      a2,4764(sp)
    slt     a2,a1,a0
    bnez    a2, .branch_true_65
    j       .branch_false_65
.branch_true_65:
    sw      a0,3364(sp)
    mv      a0, a1
    j       .L9_0
.branch_false_65:
    sw      a0,3776(sp)
    la      a0, cap
    sw      a1,4756(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 10
    sb      a2,3363(sp)
    sw      a3,3772(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,8(sp)
    mv      a0, a1
    j       .L9_0
.L9_0:
.L10_0:
    sw      a0,3776(sp)
    la      a0, to
    sw      a1,4(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 10
    sw      a3,416(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s1,4744(sp)
    sw      s2,4676(sp)
    sw      s3,4212(sp)
    sw      s4,4740(sp)
    sw      s5,4268(sp)
    sw      s6,4264(sp)
    sd      s7,4688(sp)
    sw      s8,4736(sp)
    sw      s9,4684(sp)
    sb      s10,4683(sp)
    sw      s11,3788(sp)
    sd      a0,2952(sp)
    sw      a2,4764(sp)
    call    dfs
    sw      a0,2944(sp)
    mv      a1, a0
    j       .L11_0
.L11_0:
    li      a2, 0
    slt     s1,a2,a1
    bnez    s1, .branch_true_70
    j       .branch_false_70
.branch_true_70:
    li      s2, 0
    li      s3, 10
    mul     s5,s3,s4
    add     s2,s2,s5
    li      s6, 1
    mul     s8,s6,s7
    add     s2,s2,s8
    slli s2,s2,2
    add     s2,s2,s2
    la      s9, cap
    lw      s10,0(s9)
    li      s11, 0
    mul     a2,s3,s4
    add     s11,s11,a2
    add     s11,s11,a2
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    sub     s5,s3,a1
    sd      s5,0(s2)
    la      s6, rev
    lw      s8,0(s6)
    li      s6, 0
    li      s8, 10
    mul     s9,s8,s4
    add     s6,s6,s9
    li      s8, 1
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    la      s8, to
    lw      s10,0(s8)
    li      s8, 0
    li      s10, 10
    sw      a0,2944(sp)
    mul     a0,s10,s4
    add     s8,s8,a0
    li      s10, 1
    add     s8,s8,a0
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      s10, 0
    sw      a0,2096(sp)
    li      a0, 10
    sw      a1,2940(sp)
    sw      a2,2924(sp)
    mul     a2,a0,a1
    add     s10,s10,a2
    li      a0, 1
    sw      a1,1684(sp)
    mul     a1,a0,a2
    add     s10,s10,a1
    slli s10,s10,2
    add     s10,s10,s10
    la      a0, rev
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 10
    sw      a2,2100(sp)
    mul     a2,a1,s4
    add     a0,a0,a2
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    la      a1, to
    sd      a0,1264(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 10
    sw      a2,1668(sp)
    mul     a2,a1,s4
    add     a0,a0,a2
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    la      a1, cap
    sd      a0,848(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 10
    sw      a2,1256(sp)
    sw      a3,3356(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    sw      a2,844(sp)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,432(sp)
    sw      a2,1260(sp)
    add     a2,a1,a0
    sd      a2,0(s10)
    mv      ra, a6
    mv      s0, a7
    sw      a0,2940(sp)
    li      a0, 4784
    li      a0, 4784
    add     sp,a0,sp
    ret
.branch_false_70:
.L12_0:
    li      a0, 1
    sw      a1,428(sp)
    add     a1,s7,a0
    j       .while.head_51
.while.exit_51:
    mv      ra, a6
    mv      s0, a7
    li      a0, 0
    li      a0, 4784
    li      a0, 4784
    add     sp,a0,sp
    ret
    .globl max_flow
    .type max_flow,@function
max_flow:
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,72(sp)
    addi    s0,sp,88
.L1_0:
    li      a2, 0
    j       .while.head_82
.while.head_82:
    li      a3, 1
    li      a4, 0
    xor     a5,a3,a4
    snez    a5, a5
    bnez    a5, .while.body_82
    j       .while.exit_82
.while.body_82:
    la      a6, used
    lw      a7,0(a6)
    sw      a0,68(sp)
    sw      a1,64(sp)
    li      a1, 0
    sw      a2,60(sp)
    li      a2, 10
    call    my_memset
    li      a2, 0x70000000
    call    dfs
    sw      a0,12(sp)
    mv      a1, a0
    j       .L2_0
.L2_0:
    xor     a2,a1,a4
    seqz    a2, a2
    bnez    a2, .branch_true_87
    j       .branch_false_87
.branch_true_87:
    ld      ra,80(sp)
    ld      s0,72(sp)
    lw      a0,60(sp)
    addi    sp,sp,88
    ret
.branch_false_87:
.L3_0:
    add     s2,s1,a1
    j       .while.head_82
.while.exit_82:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-112
    sd      ra,104(sp)
    sd      s0,96(sp)
    addi    s0,sp,112
.L0_0:
    call    getint
    sw      a0,84(sp)
    mv      a1, a0
    call    getint
    sw      a0,84(sp)
    sw      a0,80(sp)
    mv      a2, a0
    la      a3, size
    lw      a4,0(a3)
    sw      a0,80(sp)
    sw      a1,92(sp)
    li      a1, 0
    sw      a2,88(sp)
    li      a2, 10
    call    my_memset
    j       .while.head_97
.while.head_97:
    li      a1, 0
    slt     a2,a1,a0
    bnez    a2, .while.body_97
    j       .while.exit_97
.while.body_97:
    call    getint
    sw      a0,88(sp)
    sw      a0,24(sp)
    mv      a5, a0
    call    getint
    sw      a0,24(sp)
    sw      a0,20(sp)
    mv      a6, a0
    call    getint
    sw      a0,20(sp)
    sw      a0,16(sp)
    mv      a7, a0
    sw      a5,32(sp)
    sw      a0,16(sp)
    sw      a6,28(sp)
    sw      a7,12(sp)
    sb      a2,39(sp)
    call    add_node
    li      a1, 1
    sub     a2,a0,a1
    j       .while.head_97
.while.exit_97:
    sw      a0,88(sp)
    li      a0, 1
    call    max_flow
    sw      a0,4(sp)
    sw      a0,4(sp)
    call    putint
    li      a0, 10
    call    putch
    ld      ra,104(sp)
    ld      s0,96(sp)
    li      a0, 0
    addi    sp,sp,112
    ret
.section        .data
    .align 4
    .globl used
    .type used,@object
used:
    .zero 40
    .align 4
    .globl rev
    .type rev,@object
rev:
    .zero 400
    .align 4
    .globl cap
    .type cap,@object
cap:
    .zero 400
    .align 4
    .globl to
    .type to,@object
to:
    .zero 400
    .align 4
    .globl size
    .type size,@object
size:
    .zero 40
    .align 4
    .globl INF
    .type INF,@object
INF:
    .word 0
