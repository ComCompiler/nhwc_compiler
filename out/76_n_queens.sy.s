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
    .globl printans
    .type printans,@function
printans:
    addi    sp,sp,-296
    sd      ra,288(sp)
    sd      s0,272(sp)
    addi    s0,sp,296
.L5_0:
    la      a0, sum
    lw      a1,0(a0)
    mv      a2, a2
    li      a3, 1
    add     a4,a2,a3
    la      a5, sum
    sd      a4,0(a5)
    mv      a6, a3
    j       .while.head_23
.while.head_23:
    la      a7, n
    lw      s1,0(a7)
    mv      s2, s2
    slt     s3,a6,s2
    xori    s3,s3,1
    bnez    s3, .while.body_23
    j       .while.exit_23
.while.body_23:
    la      s4, ans
    lw      s5,0(s4)
    li      s6, 0
    mul     s7,a3,a6
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    sw      s2,240(sp)
    sb      s3,239(sp)
    sd      s6,24(sp)
    sw      s7,235(sp)
    mv      a0, a0
    call    putint
    j       .L6_0
.L6_0:
    la      a0, n
    lw      s1,0(a0)
    mv      s2, s2
    xor     s3,a6,s2
    sltiu   s3,s3,1
    bnez    s3, .branch_true_27
    j       .branch_false_27
.branch_true_27:
    sw      s2,8(sp)
    sb      s3,7(sp)
    li      a0, 10
    call    putch
    ld      ra,288(sp)
    ld      s0,272(sp)
    addi    sp,sp,296
    ret
.branch_false_27:
    li      a0, 32
    call    putch
    j       .L7_0
.L7_0:
.L8_0:
    add     a0,a6,a3
    j       .while.head_23
.while.exit_23:
    .globl f
    .type f,@function
f:
    addi    sp,sp,-1152
    sd      ra,1144(sp)
    sd      s0,1128(sp)
    addi    s0,sp,1152
.L1_0:
    mv      s1, a3
    j       .while.head_38
.while.head_38:
    la      s2, n
    lw      s3,0(s2)
    mv      s4, s4
    slt     s5,s1,s4
    xori    s5,s5,1
    bnez    s5, .while.body_38
    j       .while.exit_38
.while.body_38:
    sub     s6,a0,s1
    la      s7, n
    lw      s8,0(s7)
    mv      s9, s9
    add     s10,s9,s6
    la      s11, line2
    lw      a1,0(s11)
    li      a1, 0
    mul     a5,a3,s10
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a3, a3
    li      a7, 0
    xor     s2,a3,a7
    sltiu   s2,s2,1
    xori    s2,s2,1
    xori    a7,s2,-1
    add     s3,a0,s1
    la      s7, line1
    lw      s8,0(s7)
    li      s7, 0
    li      s8, 1
    mul     s11,s8,s3
    add     s7,s7,s11
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    mv      s8, s8
    sw      a0,1120(sp)
    li      a0, 0
    sd      a1,664(sp)
    xor     a1,s8,a0
    sltiu   a1,a1,1
    and     a0,a1,a7
    sb      a0,422(sp)
    la      a0, row
    sb      a1,423(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,264(sp)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,208(sp)
    li      a0, 1
    sw      a2,416(sp)
    xor     a2,a1,a0
    sltiu   a2,a2,1
    xori    a2,a2,1
    mv      a0, a0
    sw      a1,200(sp)
    and     a1,a2,a0
    bnez    a1, .branch_true_41
    j       .branch_false_41
.branch_true_41:
    sb      a0,422(sp)
    li      a0, 0
    sb      a1,198(sp)
    li      a1, 1
    sb      a2,199(sp)
    mv      a2, a2
    sw      a3,656(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    sd      s1,0(a0)
    j       .L2_0
.L2_0:
    la      a1, n
    lw      a3,0(a1)
    mv      a1, a1
    xor     a3,a2,a1
    sltiu   a3,a3,1
    bnez    a3, .branch_true_45
    j       .branch_false_45
.branch_true_45:
    sw      s1,1112(sp)
    sb      s2,655(sp)
    sw      s3,648(sp)
    sw      s4,1104(sp)
    sb      s5,1103(sp)
    sw      s6,1096(sp)
    sd      s7,432(sp)
    sw      s8,424(sp)
    sw      s9,1092(sp)
    sw      s10,1084(sp)
    sw      s11,640(sp)
    call    printans
    j       .branch_false_45
.branch_false_45:
.L3_0:
    li      s1, 0
    li      s2, 1
    mv      s3, s3
    mul     s4,s2,s3
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,s1
    sd      s2,0(s1)
    add     s5,a2,s3
    li      s6, 0
    mul     s7,s2,s5
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,s6
    sd      s2,0(s6)
    sub     s8,a2,s3
    la      s9, n
    lw      s10,0(s9)
    mv      s11, s11
    add     s2,s11,s8
    li      s4, 0
    li      s7, 1
    mul     s9,s7,s2
    add     s4,s4,s9
    slli s4,s4,2
    add     s4,s4,s4
    sd      s7,0(s4)
    add     s9,a2,s7
    sd      s1,160(sp)
    sw      s2,120(sp)
    sw      s3,1112(sp)
    sd      s4,104(sp)
    sw      s5,156(sp)
    sd      s6,144(sp)
    sw      s8,136(sp)
    sw      s9,96(sp)
    sw      s11,128(sp)
    sd      a0,184(sp)
    mv      a0, a0
    call    f
    li      a0, 0
    li      s1, 1
    mv      s2, s2
    mul     s3,s1,s2
    add     a0,a0,s3
    slli a0,a0,2
    add     a0,a0,a0
    li      s4, 0
    sd      s4,0(a0)
    add     s5,a2,s2
    li      s6, 0
    mul     s7,s1,s5
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,s6
    sd      s4,0(s6)
    sub     s8,a2,s2
    la      s9, n
    lw      s10,0(s9)
    mv      s11, s11
    add     s1,s11,s8
    li      s3, 0
    li      s4, 1
    mul     s7,s4,s1
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,s3
    li      s4, 0
    sd      s4,0(s3)
    j       .branch_false_41
.branch_false_41:
.L4_0:
    li      s4, 1
    add     s7,s2,s4
    j       .while.head_38
.while.exit_38:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,40(sp)
    addi    s0,sp,64
.L0_0:
    sw      s1,32(sp)
    sw      s2,1112(sp)
    sd      s3,16(sp)
    sw      s5,72(sp)
    sd      s6,56(sp)
    sw      s7,8(sp)
    sw      s8,48(sp)
    sw      s11,40(sp)
    call    getint
    sd      a0,80(sp)
    sw      a0,32(sp)
    mv      s1, a0
    j       .while.head_59
.while.head_59:
    li      s2, 0
    slt     s3,s2,s1
    bnez    s3, .while.body_59
    j       .while.exit_59
.while.body_59:
    sw      s1,24(sp)
    sb      s3,23(sp)
    call    getint
    sw      a0,32(sp)
    sw      a0,19(sp)
    la      s1, n
    sd      a0,0(s1)
    sw      a0,19(sp)
    li      a0, 1
    call    f
    mv      a0, a0
    li      s1, 1
    sub     s2,a0,s1
    j       .while.head_59
.while.exit_59:
    la      s3, sum
    lw      s4,0(s3)
    ld      ra,56(sp)
    ld      s0,40(sp)
    lw      a0,4(sp)
    addi    sp,sp,64
    ret
.section        .data
    .align 4
    .globl line2
    .type line2,@object
line2:
    .zero 400
    .align 4
    .globl line1
    .type line1,@object
line1:
    .zero 200
    .align 4
    .globl row
    .type row,@object
row:
    .zero 200
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
    .align 4
    .globl sum
    .type sum,@object
sum:
    .word 0
    .align 4
    .globl ans
    .type ans,@object
ans:
    .zero 200
