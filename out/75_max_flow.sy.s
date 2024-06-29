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
    mul     a7,a6,a3
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,a0
    sw      a1,0(a5)
    add     s1,a3,a6
    mv      a3, s1
    sd      a5,8(sp)
    sw      s1,4(sp)
    sb      a4,19(sp)
    j       .while.head_27
.while.exit_27:
    ld      ra,48(sp)
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
    .globl add_node
    .type add_node,@function
add_node:
    addi    sp,sp,-256
    sd      ra,248(sp)
    sd      s0,240(sp)
    addi    s0,sp,256
.L13_0:
    li      a3, 0
    li      a4, 1
    mul     a5,a4,a0
    add     a3,a3,a5
    slli a3,a3,2
    la      a6, size
    add     a3,a3,a6
    lw      a7,0(a3)
    li      s1, 0
    mul     s2,a4,a0
    add     s1,s1,s2
    slli s1,s1,2
    la      s3, to
    add     s1,s1,s3
    sw      a1,0(s1)
    li      s4, 0
    mul     s5,a4,a0
    add     s4,s4,s5
    slli s4,s4,2
    la      s6, size
    add     s4,s4,s6
    lw      s7,0(s4)
    li      s8, 0
    mul     s9,a4,a0
    add     s8,s8,s9
    slli s8,s8,2
    la      s10, cap
    add     s8,s8,s10
    sw      a2,0(s8)
    li      s11, 0
    mul     a5,a4,a0
    add     s11,s11,a5
    slli s11,s11,2
    la      a4, size
    add     s11,s11,a4
    lw      a4,0(s11)
    li      a5, 0
    li      a6, 1
    mul     s2,a6,a0
    add     a5,a5,s2
    slli a5,a5,2
    la      a6, rev
    add     a5,a5,a6
    li      a6, 0
    li      s2, 1
    mul     s3,s2,a1
    add     a6,a6,s3
    slli a6,a6,2
    la      s2, size
    add     a6,a6,s2
    lw      s2,0(a6)
    sw      s2,0(a5)
    li      s3, 0
    li      s5, 1
    mul     s6,s5,a1
    add     s3,s3,s6
    slli s3,s3,2
    la      s5, size
    add     s3,s3,s5
    lw      s5,0(s3)
    li      s6, 0
    li      s9, 1
    mul     s10,s9,a1
    add     s6,s6,s10
    slli s6,s6,2
    la      s9, to
    add     s6,s6,s9
    sw      a0,0(s6)
    li      s9, 0
    li      s10, 1
    sw      a0,236(sp)
    mul     a0,s10,a1
    add     s9,s9,a0
    slli s9,s9,2
    la      a0, size
    add     s9,s9,a0
    lw      a0,0(s9)
    li      s10, 0
    sw      a0,100(sp)
    li      a0, 1
    sw      a2,228(sp)
    mul     a2,a0,a1
    add     s10,s10,a2
    slli s10,s10,2
    la      a0, cap
    add     s10,s10,a0
    li      a0, 0
    sw      a0,0(s10)
    li      a0, 0
    li      a2, 1
    sd      a3,216(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a2, size
    add     a0,a0,a2
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,80(sp)
    li      a0, 1
    sw      a2,76(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    la      a0, rev
    add     a3,a3,a0
    li      a0, 0
    li      a2, 1
    sw      a1,232(sp)
    lw      a1,236(sp)
    sd      a3,64(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a2, size
    add     a0,a0,a2
    lw      a2,0(a0)
    ld      a3,64(sp)
    sw      a2,0(a3)
    sd      a0,56(sp)
    li      a0, 0
    sw      a1,236(sp)
    li      a1, 1
    sw      a2,52(sp)
    lw      a2,236(sp)
    sd      a3,64(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, size
    add     a0,a0,a1
    li      a1, 0
    li      a3, 1
    sd      a0,40(sp)
    mul     a0,a3,a2
    add     a1,a1,a0
    slli a1,a1,2
    la      a0, size
    add     a1,a1,a0
    lw      a0,0(a1)
    sd      a1,32(sp)
    add     a1,a0,a3
    ld      a3,40(sp)
    sw      a1,0(a3)
    sw      a0,28(sp)
    li      a0, 0
    sw      a1,24(sp)
    li      a1, 1
    sw      a2,236(sp)
    lw      a2,232(sp)
    sd      a3,40(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, size
    add     a0,a0,a1
    li      a1, 0
    li      a3, 1
    sd      a0,16(sp)
    mul     a0,a3,a2
    add     a1,a1,a0
    slli a1,a1,2
    la      a0, size
    add     a1,a1,a0
    lw      a0,0(a1)
    sd      a1,8(sp)
    add     a1,a0,a3
    ld      a3,16(sp)
    sw      a1,0(a3)
    sd      s6,112(sp)
    ld      ra,248(sp)
    ld      s0,240(sp)
    addi    sp,sp,256
    ret
    .globl dfs
    .type dfs,@function
dfs:
    addi    sp,sp,-304
    sd      ra,296(sp)
    sd      s0,288(sp)
    addi    s0,sp,304
.L4_0:
    xor     a3,a0,a1
    seqz    a3, a3
    bnez    a3, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    ld      ra,296(sp)
    ld      s0,288(sp)
    sw      a2,276(sp)
    sw      a0,284(sp)
    lw      a0,276(sp)
    addi    sp,sp,304
    ret
.branch_false_46:
.L5_0:
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a0
    add     a4,a4,a6
    slli a4,a4,2
    la      a7, used
    add     a4,a4,a7
    sw      a5,0(a4)
    li      s1, 0
    j       .while.head_51
.while.head_51:
    li      a5, 0
    li      a6, 1
    mul     a7,a6,a0
    add     a5,a5,a7
    slli a5,a5,2
    la      s2, size
    add     a5,a5,s2
    lw      s3,0(a5)
    slt     s4,s1,s3
    bnez    s4, .while.body_51
    j       .while.exit_51
.while.body_51:
    li      a6, 0
    li      a7, 1
    mul     s2,a7,a0
    add     a6,a6,s2
    slli a6,a6,2
    la      s5, to
    add     a6,a6,s5
    lw      s6,0(a6)
    li      s7, 0
    mul     s8,a7,s6
    add     s7,s7,s8
    slli s7,s7,2
    la      s9, used
    add     s7,s7,s9
    lw      s10,0(s7)
    li      s11, 0
    xor     a7,s10,s11
    snez    a7, a7
    bnez    a7, .branch_true_54
    j       .branch_false_54
.branch_true_54:
    li      s2, 1
    add     s5,s1,s2
    mv      s1, s5
    sd      s7,216(sp)
    sw      s10,212(sp)
    sw      s5,204(sp)
    sb      a7,211(sp)
    sd      a6,232(sp)
    sw      s6,228(sp)
    j       .while.exit_51
.branch_false_54:
.L6_0:
    li      s2, 0
    li      s5, 1
    mul     s8,s5,a0
    add     s2,s2,s8
    slli s2,s2,2
    la      s9, cap
    add     s2,s2,s9
    lw      s11,0(s2)
    li      s5, 0
    slt     s8,s5,s11
    xori    s8,s8,1
    bnez    s8, .branch_true_59
    j       .branch_false_59
.branch_true_59:
    li      s5, 1
    add     s9,s1,s5
    mv      s1, s9
    sd      s7,216(sp)
    sw      s10,212(sp)
    sb      a7,211(sp)
    sw      s9,180(sp)
    sd      s2,192(sp)
    sd      a6,232(sp)
    sb      s8,187(sp)
    sw      s6,228(sp)
    sw      s11,188(sp)
    j       .while.exit_51
.branch_false_59:
.L7_0:
    j       .L8_0
.L8_0:
    li      s5, 0
    li      s9, 1
    sw      a1,280(sp)
    mul     a1,s9,a0
    add     s5,s5,a1
    slli s5,s5,2
    la      a1, cap
    add     s5,s5,a1
    lw      a1,0(s5)
    slt     s9,a2,a1
    sd      s7,216(sp)
    bnez    s9, .branch_true_65
    j       .branch_false_65
.branch_true_65:
    mv      s7, a2
    sw      s7,176(sp)
    j       .L9_0
.branch_false_65:
    li      s7, 0
    sw      a0,284(sp)
    li      a0, 1
    sw      a1,164(sp)
    lw      a1,284(sp)
    sw      a2,276(sp)
    mul     a2,a0,a1
    add     s7,s7,a2
    slli s7,s7,2
    la      a0, cap
    add     s7,s7,a0
    lw      a0,0(s7)
    mv      a2, a0
    sd      s7,8(sp)
    sw      a1,284(sp)
    sw      a0,4(sp)
    sw      a2,176(sp)
    lw      a1,164(sp)
    lw      a0,284(sp)
    lw      a2,276(sp)
    j       .L9_0
.L9_0:
.L10_0:
    li      s7, 0
    sw      a0,284(sp)
    li      a0, 1
    sw      a1,164(sp)
    lw      a1,284(sp)
    sw      a2,276(sp)
    mul     a2,a0,a1
    add     s7,s7,a2
    slli s7,s7,2
    la      a0, to
    add     s7,s7,a0
    lw      a0,0(s7)
    sw      s1,260(sp)
    sd      s2,192(sp)
    sw      s3,244(sp)
    sb      s4,243(sp)
    sd      s5,168(sp)
    sw      s6,228(sp)
    sd      s7,152(sp)
    sb      s8,187(sp)
    sb      s9,163(sp)
    sw      s10,212(sp)
    sw      s11,188(sp)
    sw      a0,148(sp)
    sw      a1,284(sp)
    sb      a3,275(sp)
    sd      a4,264(sp)
    sd      a5,248(sp)
    sd      a6,232(sp)
    sb      a7,211(sp)
    lw      a0,148(sp)
    lw      a1,280(sp)
    lw      a2,176(sp)
    call    dfs
    sw      a0,144(sp)
    mv      a1, a0
    j       .L11_0
.L11_0:
    li      a2, 0
    slt     a3,a2,a1
    bnez    a3, .branch_true_70
    j       .branch_false_70
.branch_true_70:
    li      a2, 0
    li      a4, 1
    lw      a5,284(sp)
    mul     a6,a4,a5
    add     a2,a2,a6
    slli a2,a2,2
    la      a7, cap
    add     a2,a2,a7
    li      s1, 0
    mul     s2,a4,a5
    add     s1,s1,s2
    slli s1,s1,2
    la      s3, cap
    add     s1,s1,s3
    lw      s4,0(s1)
    sub     s5,s4,a1
    sw      s5,0(a2)
    li      s6, 0
    mul     s7,a4,a5
    add     s6,s6,s7
    slli s6,s6,2
    la      s8, rev
    add     s6,s6,s8
    lw      s9,0(s6)
    li      s10, 0
    mul     s11,a4,a5
    add     s10,s10,s11
    slli s10,s10,2
    la      a4, to
    add     s10,s10,a4
    lw      a4,0(s10)
    li      a6, 0
    li      a7, 1
    mul     s2,a7,a4
    add     a6,a6,s2
    slli a6,a6,2
    la      a7, cap
    add     a6,a6,a7
    li      a7, 0
    li      s2, 1
    mul     s3,s2,a5
    add     a7,a7,s3
    slli a7,a7,2
    la      s2, rev
    add     a7,a7,s2
    lw      s2,0(a7)
    li      s3, 0
    li      s7, 1
    mul     s8,s7,a5
    add     s3,s3,s8
    slli s3,s3,2
    la      s7, to
    add     s3,s3,s7
    lw      s7,0(s3)
    li      s8, 0
    li      s11, 1
    sw      a0,144(sp)
    mul     a0,s11,s7
    add     s8,s8,a0
    slli s8,s8,2
    la      a0, cap
    add     s8,s8,a0
    lw      a0,0(s8)
    add     s11,a0,a1
    sw      s11,0(a6)
    ld      ra,296(sp)
    ld      s0,288(sp)
    sw      a1,140(sp)
    sw      a0,28(sp)
    lw      a0,140(sp)
    addi    sp,sp,304
    ret
.branch_false_70:
.L12_0:
    lw      a2,260(sp)
    li      a4, 1
    add     a5,a2,a4
    mv      a2, a5
    sb      a3,139(sp)
    sw      a5,20(sp)
    sw      a1,140(sp)
    sw      a0,144(sp)
    sw      a2,260(sp)
    lb      a3,275(sp)
    lw      s1,260(sp)
    ld      a4,264(sp)
    lw      a1,280(sp)
    lw      a0,284(sp)
    lw      a2,276(sp)
    j       .while.head_51
.while.exit_51:
    ld      ra,296(sp)
    ld      s0,288(sp)
    sw      a0,284(sp)
    li      a0, 0
    addi    sp,sp,304
    ret
    .globl max_flow
    .type max_flow,@function
max_flow:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
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
    sw      a0,28(sp)
    sw      a1,24(sp)
    sw      a2,20(sp)
    sb      a5,19(sp)
    la      a0, used
    li      a1, 0
    li      a2, 10
    call    my_memset
    lw      a0,28(sp)
    lw      a1,24(sp)
    li      a2, 0x70000000
    call    dfs
    sw      a0,12(sp)
    mv      a1, a0
    j       .L2_0
.L2_0:
    li      a2, 0
    xor     a3,a1,a2
    seqz    a3, a3
    bnez    a3, .branch_true_87
    j       .branch_false_87
.branch_true_87:
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a0,12(sp)
    lw      a0,20(sp)
    addi    sp,sp,48
    ret
.branch_false_87:
.L3_0:
    lw      a2,20(sp)
    add     a4,a2,a1
    mv      a2, a4
    sw      a0,12(sp)
    sb      a3,7(sp)
    sw      a1,8(sp)
    sw      a4,0(sp)
    lw      a0,28(sp)
    lw      a1,24(sp)
    j       .while.head_82
.while.exit_82:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
.L0_0:
    call    getint
    sw      a0,44(sp)
    mv      a1, a0
    sw      a0,44(sp)
    sw      a1,52(sp)
    call    getint
    sw      a0,40(sp)
    mv      a1, a0
    sw      a0,40(sp)
    sw      a1,48(sp)
    la      a0, size
    li      a1, 0
    li      a2, 10
    call    my_memset
    j       .while.head_97
.while.head_97:
    lw      a0,48(sp)
    li      a1, 0
    slt     a2,a1,a0
    bnez    a2, .while.body_97
    j       .while.exit_97
.while.body_97:
    sw      a0,48(sp)
    sb      a2,39(sp)
    call    getint
    sw      a0,24(sp)
    mv      a1, a0
    sw      a0,24(sp)
    sw      a1,32(sp)
    call    getint
    sw      a0,20(sp)
    mv      a1, a0
    sw      a0,20(sp)
    sw      a1,28(sp)
    call    getint
    sw      a0,16(sp)
    mv      a1, a0
    sw      a0,16(sp)
    sw      a1,12(sp)
    lw      a0,32(sp)
    lw      a1,28(sp)
    lw      a2,12(sp)
    call    add_node
    lw      a0,48(sp)
    li      a1, 1
    sub     a2,a0,a1
    mv      a0, a2
    sw      a2,8(sp)
    sw      a0,48(sp)
    j       .while.head_97
.while.exit_97:
    sw      a0,48(sp)
    sb      a2,39(sp)
    li      a0, 1
    lw      a1,52(sp)
    call    max_flow
    sw      a0,4(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    call    putint
    li      a0, 10
    call    putch
    ld      ra,64(sp)
    ld      s0,56(sp)
    li      a0, 0
    addi    sp,sp,72
    ret
.section ___var
    .data
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
    .word 1879048192
