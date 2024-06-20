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
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,64(sp)
    addi    s0,sp,88
.L14_0:
    li      a3, 0
    mv      a4, a3
    j       .while.head_27
.while.head_27:
    slt     a5,a4,a2
    bnez    a5, .while.body_27
    j       .while.exit_27
.while.body_27:
    li      a6, 0
    li      a7, 1
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
    sd      a1,0(a6)
    add     s1,a4,a7
    j       .while.head_27
.while.exit_27:
    .globl add_node
    .type add_node,@function
add_node:
    addi    sp,sp,-840
    sd      ra,832(sp)
    sd      s0,816(sp)
    addi    s0,sp,840
.L13_0:
    la      s2, size
    lw      s3,0(s2)
    li      s4, 0
    mul     s5,a7,a0
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s6, 0
    li      s7, 10
    mul     s8,s7,a0
    add     s6,s6,s8
    mv      s9, s9
    mul     s10,a7,s9
    add     s6,s6,s10
    slli s6,s6,2
    add     s6,s6,s6
    sd      a1,0(s6)
    la      s11, size
    lw      a3,0(s11)
    li      a3, 0
    mul     s2,a7,a0
    add     a3,a3,s2
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
    li      a7, 0
    mul     s3,s7,a0
    add     a7,a7,s3
    li      s3, 1
    mv      s7, s7
    mul     s8,s3,s7
    add     a7,a7,s8
    slli a7,a7,2
    add     a7,a7,a7
    sd      a2,0(a7)
    la      s3, size
    lw      s8,0(s3)
    li      s3, 0
    li      s8, 1
    mul     s10,s8,a0
    add     s3,s3,s10
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s8, 0
    li      s11, 10
    sw      a1,800(sp)
    mul     a1,s11,a0
    add     s8,s8,a1
    li      a1, 1
    mv      s11, s11
    sw      a0,808(sp)
    mul     a0,a1,s11
    add     s8,s8,a0
    slli s8,s8,2
    add     s8,s8,s8
    la      a0, size
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,792(sp)
    mv      a2, a2
    sd      a3,656(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(s8)
    sd      a0,496(sp)
    la      a0, size
    sw      a1,488(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a3,544(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,432(sp)
    li      a0, 10
    sw      a3,480(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    li      a0, 1
    mv      a3, a3
    sw      a2,800(sp)
    mul     a2,a0,a3
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,a1
    mv      a0, a0
    sd      a0,0(a1)
    la      a2, size
    sw      a0,808(sp)
    lw      a0,0(a2)
    li      a0, 0
    li      a2, 1
    sd      a1,408(sp)
    mv      a1, a1
    sw      a3,424(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, 0
    sd      a0,352(sp)
    li      a0, 10
    sw      a3,400(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    li      a0, 1
    mv      a3, a3
    sw      a1,800(sp)
    mul     a1,a0,a3
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a2
    li      a0, 0
    sd      a0,0(a2)
    la      a0, size
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sd      a2,328(sp)
    mv      a2, a2
    sw      a3,344(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,272(sp)
    li      a0, 10
    sw      a3,320(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    li      a0, 1
    mv      a3, a3
    sw      a2,800(sp)
    mul     a2,a0,a3
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,a1
    la      a0, size
    lw      a2,0(a0)
    li      a0, 0
    li      a2, 1
    sd      a1,248(sp)
    mv      a1, a1
    sw      a3,264(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a2, a2
    sd      a0,192(sp)
    mv      a0, a0
    sd      a0,0(a2)
    sw      a0,184(sp)
    li      a0, 0
    sw      a1,808(sp)
    li      a1, 1
    sd      a2,248(sp)
    mv      a2, a2
    sw      a3,240(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, size
    lw      a3,0(a1)
    li      a1, 0
    li      a3, 1
    sd      a0,168(sp)
    mul     a0,a3,a2
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a3, a3
    sw      a0,160(sp)
    li      a0, 1
    sd      a1,112(sp)
    add     a1,a3,a0
    mv      a0, a0
    sd      a1,0(a0)
    sd      a0,168(sp)
    li      a0, 0
    sw      a1,96(sp)
    li      a1, 1
    sw      a2,808(sp)
    mv      a2, a2
    sw      a3,104(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, size
    lw      a3,0(a1)
    li      a1, 0
    li      a3, 1
    sd      a0,80(sp)
    mul     a0,a3,a2
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a3, a3
    sw      a0,72(sp)
    li      a0, 1
    sd      a1,24(sp)
    add     a1,a3,a0
    mv      a0, a0
    sd      a1,0(a0)
    .globl dfs
    .type dfs,@function
dfs:
    sw      a0,4928(sp)
    li      a0, -4960
    li      a0, -4960
    add     sp,a0,sp
    sd      ra,4952(sp)
    sd      s0,4936(sp)
    li      a0, 4960
    li      a0, 4960
    add     s0,a0,sp
.L4_0:
    mv      a0, a0
    sw      a2,4912(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    bnez    a2, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    sw      a0,4928(sp)
    li      a0, 4952
    add     a0,sp,a0
    ld      ra,0(a0)
    sd      a0,4952(sp)
    li      a0, 4936
    add     a0,sp,a0
    ld      s0,0(a0)
    sd      a0,4936(sp)
    li      a0, 4912
    add     a0,sp,a0
    lw      a0,0(a0)
    sw      a0,4912(sp)
    li      a0, 4960
    li      a0, 4960
    add     sp,a0,sp
    ret
.branch_false_46:
.L5_0:
    li      a0, 0
    sw      a1,4920(sp)
    li      a1, 1
    sb      a2,4911(sp)
    mv      a2, a2
    sw      a3,16(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a1, 0
    mv      a3, a1
    j       .while.head_51
.while.head_51:
    la      a1, size
    sd      a0,4896(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 1
    sw      a3,4892(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,4832(sp)
    mv      a0, a0
    sw      a2,4928(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_51
    j       .while.exit_51
.while.body_51:
    sw      a0,4824(sp)
    la      a0, to
    sw      a1,4892(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 10
    sb      a2,4823(sp)
    mv      a2, a2
    sw      a3,4884(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    sw      a2,4928(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    la      a1, used
    sd      a0,4408(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 1
    sw      a2,4892(sp)
    mv      a2, a2
    sw      a3,4819(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,4344(sp)
    li      a0, 0
    sw      a2,4400(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    xori    a2,a2,1
    bnez    a2, .branch_true_54
    j       .branch_false_54
.branch_true_54:
    mv      a0, a0
    sw      a1,4336(sp)
    li      a1, 1
    sb      a2,4335(sp)
    add     a2,a0,a1
    j       .while.exit_51
.branch_false_54:
.L6_0:
    la      a1, cap
    sw      a0,4892(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 10
    sw      a2,4331(sp)
    mv      a2, a2
    sw      a3,4392(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    sw      a2,4928(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,3912(sp)
    li      a0, 0
    sw      a2,4892(sp)
    slt     a2,a1,a0
    xori    a2,a2,1
    bnez    a2, .branch_true_59
    j       .branch_false_59
.branch_true_59:
    mv      a0, a0
    sw      a1,3904(sp)
    li      a1, 1
    sb      a2,3903(sp)
    add     a2,a0,a1
    j       .while.exit_51
.branch_false_59:
.L7_0:
    j       .L8_0
.L8_0:
    la      a1, cap
    sw      a0,4892(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 10
    sw      a2,3899(sp)
    mv      a2, a2
    sw      a3,4324(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    sw      a2,4928(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,3472(sp)
    mv      a0, a0
    sw      a2,4892(sp)
    slt     a2,a1,a0
    bnez    a2, .branch_true_65
    j       .branch_false_65
.branch_true_65:
    sw      a0,3464(sp)
    mv      a0, a1
    j       .L9_0
.branch_false_65:
    sw      a0,3892(sp)
    la      a0, cap
    sw      a1,4912(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 10
    sb      a2,3463(sp)
    mv      a2, a2
    sw      a3,3884(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    sw      a2,4928(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,16(sp)
    mv      a0, a1
    j       .L9_0
.L9_0:
.L10_0:
    sw      a0,3892(sp)
    la      a0, to
    sw      a1,8(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 10
    sw      a2,4892(sp)
    mv      a2, a2
    sw      a3,424(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    sw      a2,4928(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sw      s1,0(sp)
    sw      s2,704(sp)
    sd      s3,576(sp)
    sd      s4,736(sp)
    sw      s5,784(sp)
    sd      s6,712(sp)
    sw      s7,648(sp)
    sd      s8,552(sp)
    sw      s9,728(sp)
    sw      s10,624(sp)
    sw      s11,568(sp)
    sd      a0,3048(sp)
    mv      a0, a0
    mv      a1, a1
    sw      a2,4892(sp)
    mv      a2, a2
    call    dfs
    sw      a0,3036(sp)
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
    mv      s4, s4
    mul     s5,s3,s4
    add     s2,s2,s5
    li      s6, 1
    mv      s7, s7
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
    mv      s3, s3
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
    sw      a0,3036(sp)
    mul     a0,s10,s4
    add     s8,s8,a0
    li      s10, 1
    add     s8,s8,a0
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      s10, 0
    sw      a0,2152(sp)
    li      a0, 10
    sw      a1,3028(sp)
    mv      a1, a1
    sw      a2,3008(sp)
    mul     a2,a0,a1
    add     s10,s10,a2
    li      a0, 1
    mv      a2, a2
    sw      a1,1736(sp)
    mul     a1,a0,a2
    add     s10,s10,a1
    slli s10,s10,2
    add     s10,s10,s10
    la      a0, rev
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 10
    sw      a2,2160(sp)
    mul     a2,a1,s4
    add     a0,a0,a2
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    la      a1, to
    sd      a0,1304(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 10
    sw      a2,1712(sp)
    mul     a2,a1,s4
    add     a0,a0,a2
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    la      a1, cap
    sd      a0,880(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 10
    sw      a2,1288(sp)
    mv      a2, a2
    sw      a3,3456(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    sw      a2,872(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,456(sp)
    mv      a0, a0
    sw      a2,1296(sp)
    add     a2,a1,a0
    sd      a2,0(s10)
    sw      a0,3028(sp)
    li      a0, 4952
    add     a0,sp,a0
    ld      ra,0(a0)
    sd      a0,4952(sp)
    li      a0, 4936
    add     a0,sp,a0
    ld      s0,0(a0)
    sd      a0,4936(sp)
    li      a0, 3028
    add     a0,sp,a0
    lw      a0,0(a0)
    sw      a0,3028(sp)
    li      a0, 4960
    li      a0, 4960
    add     sp,a0,sp
    ret
.branch_false_70:
.L12_0:
    li      a0, 1
    sw      a1,448(sp)
    add     a1,s7,a0
    j       .while.head_51
.while.exit_51:
    li      a0, 4952
    add     a0,sp,a0
    ld      ra,0(a0)
    sd      a0,4952(sp)
    li      a0, 4936
    add     a0,sp,a0
    ld      s0,0(a0)
    li      a0, 0
    sd      a0,4936(sp)
    li      a0, 4960
    li      a0, 4960
    add     sp,a0,sp
    ret
    .globl max_flow
    .type max_flow,@function
max_flow:
    addi    sp,sp,-112
    sd      ra,104(sp)
    sd      s0,88(sp)
    addi    s0,sp,112
.L1_0:
    sw      a0,80(sp)
    li      a0, 0
    sw      a1,72(sp)
    mv      a1, a0
    j       .while.head_82
.while.head_82:
    li      a0, 1
    sw      a1,64(sp)
    li      a1, 0
    sw      a2,440(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    xori    a2,a2,1
    bnez    a2, .while.body_82
    j       .while.exit_82
.while.body_82:
    la      a0, used
    lw      a1,0(a0)
    sb      s1,3027(sp)
    sd      s2,3016(sp)
    sw      s3,2596(sp)
    sw      s4,4928(sp)
    sw      s5,2588(sp)
    sd      s6,2168(sp)
    sw      s7,4892(sp)
    sd      s8,1744(sp)
    sw      s9,2580(sp)
    sd      s10,1720(sp)
    sd      s11,2604(sp)
    mv      a0, a0
    li      a1, 0
    sb      a2,63(sp)
    li      a2, 10
    call    my_memset
    mv      a0, a0
    mv      a1, a1
    li      a2, 0x70000000
    call    dfs
    sw      a0,16(sp)
    mv      a1, a0
    j       .L2_0
.L2_0:
    li      a2, 0
    xor     s1,a1,a2
    sltiu   s1,s1,1
    bnez    s1, .branch_true_87
    j       .branch_false_87
.branch_true_87:
    ld      ra,104(sp)
    ld      s0,88(sp)
    lw      a0,64(sp)
    addi    sp,sp,112
    ret
.branch_false_87:
.L3_0:
    mv      s2, s2
    add     s3,s2,a1
    j       .while.head_82
.while.exit_82:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-168
    sd      ra,160(sp)
    sd      s0,144(sp)
    addi    s0,sp,168
.L0_0:
    sb      s1,7(sp)
    sw      s2,64(sp)
    sw      s3,3(sp)
    call    getint
    sw      a0,16(sp)
    sw      a0,120(sp)
    mv      s1, a0
    sw      s1,136(sp)
    call    getint
    sw      a0,120(sp)
    sw      a0,112(sp)
    mv      s1, a0
    la      s2, size
    lw      s3,0(s2)
    sw      s1,128(sp)
    sw      a0,112(sp)
    mv      a0, a0
    sw      a1,8(sp)
    li      a1, 0
    li      a2, 10
    call    my_memset
    j       .while.head_97
.while.head_97:
    mv      a0, a0
    li      a1, 0
    slt     a2,a1,a0
    bnez    a2, .while.body_97
    j       .while.exit_97
.while.body_97:
    call    getint
    sw      a0,128(sp)
    sw      a0,48(sp)
    mv      s1, a0
    sw      s1,60(sp)
    call    getint
    sw      a0,48(sp)
    sw      a0,40(sp)
    mv      s1, a0
    sw      s1,56(sp)
    call    getint
    sw      a0,40(sp)
    sw      a0,32(sp)
    mv      s1, a0
    sw      s1,24(sp)
    sw      a0,32(sp)
    mv      a0, a0
    mv      a1, a1
    sb      a2,67(sp)
    mv      a2, a2
    call    add_node
    mv      a0, a0
    li      a1, 1
    sub     a2,a0,a1
    j       .while.head_97
.while.exit_97:
    sw      a0,128(sp)
    li      a0, 1
    mv      a1, a1
    call    max_flow
    sw      a0,8(sp)
    sw      a0,8(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    ld      ra,160(sp)
    ld      s0,144(sp)
    li      a0, 0
    addi    sp,sp,168
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
