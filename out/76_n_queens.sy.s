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
    addi    sp,sp,-264
    sd      ra,256(sp)
    sd      s0,248(sp)
    addi    s0,sp,264
.L5_0:
    la      a0, sum
    lw      a1,0(a0)
    li      a3, 1
    add     a4,a2,a3
    la      a5, sum
    sd      a4,0(a5)
    li      a6, 1
    j       .while.head_23
.while.head_23:
    la      a7, n
    lw      s1,0(a7)
    slt     s3,s2,a6
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
    sw      s2,232(sp)
    sb      s3,231(sp)
    sd      s6,16(sp)
    sw      s7,224(sp)
    call    putint
    j       .L6_0
.L6_0:
    la      a0, n
    lw      s1,0(a0)
    xor     s3,a6,s2
    seqz    s3, s3
    bnez    s3, .branch_true_27
    j       .branch_false_27
.branch_true_27:
    sw      s2,8(sp)
    sb      s3,7(sp)
    li      a0, 10
    call    putch
    ld      ra,256(sp)
    ld      s0,248(sp)
    addi    sp,sp,264
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
    addi    sp,sp,-1032
    sd      ra,1024(sp)
    sd      s0,1016(sp)
    addi    s0,sp,1032
.L1_0:
    li      a1, 1
    j       .while.head_38
.while.head_38:
    la      a2, n
    lw      a3,0(a2)
    slt     a5,a4,a1
    xori    a5,a5,1
    bnez    a5, .while.body_38
    j       .while.exit_38
.while.body_38:
    sub     a6,a0,a1
    la      a7, n
    lw      s1,0(a7)
    add     s3,s2,a6
    la      s4, line2
    lw      s5,0(s4)
    li      s6, 0
    li      s7, 1
    mul     s8,s7,s3
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s10, 0
    xor     s11,s9,s10
    snez    s11, s11
    xori    a2,s11,-1
    add     a3,a0,a1
    la      a7, line1
    lw      s1,0(a7)
    li      a7, 0
    mul     s1,s7,a3
    add     a7,a7,s1
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    xor     s5,s4,s10
    seqz    s5, s5
    and     s7,s5,a2
    la      s10, row
    sw      a0,1012(sp)
    lw      a0,0(s10)
    li      a0, 0
    li      s10, 1
    sb      a2,570(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,136(sp)
    li      a0, 1
    sw      a1,1008(sp)
    xor     a1,s10,a0
    snez    a1, a1
    and     a0,a1,s7
    bnez    a0, .branch_true_41
    j       .branch_false_41
.branch_true_41:
    sb      a0,130(sp)
    li      a0, 0
    sb      a1,131(sp)
    li      a1, 1
    sw      a2,340(sp)
    sw      a3,564(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    sd      a1,0(a0)
    j       .L2_0
.L2_0:
    la      a3, n
    sd      a0,120(sp)
    lw      a0,0(a3)
    xor     a3,a2,a0
    seqz    a3, a3
    bnez    a3, .branch_true_45
    j       .branch_false_45
.branch_true_45:
    sw      s1,560(sp)
    sw      s2,992(sp)
    sw      s3,988(sp)
    sw      s4,348(sp)
    sb      s5,347(sp)
    sd      s6,576(sp)
    sb      s7,346(sp)
    sw      s8,984(sp)
    sw      s9,572(sp)
    sw      s10,132(sp)
    sb      s11,571(sp)
    call    printans
    j       .branch_false_45
.branch_false_45:
.L3_0:
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a1
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,s1
    sd      s2,0(s1)
    add     s4,a2,a1
    li      s5, 0
    mul     s6,s2,s4
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,s5
    sd      s2,0(s5)
    sub     s7,a2,a1
    la      s8, n
    lw      s9,0(s8)
    add     s11,s10,s7
    li      s2, 0
    li      s3, 1
    mul     s6,s3,s11
    add     s2,s2,s6
    slli s2,s2,2
    add     s2,s2,s2
    sd      s3,0(s2)
    add     s6,a2,s3
    sd      s1,104(sp)
    sd      s2,64(sp)
    sw      s4,100(sp)
    sd      s5,88(sp)
    sw      s6,60(sp)
    sw      s7,84(sp)
    sw      s10,80(sp)
    sw      s11,76(sp)
    sw      a0,116(sp)
    call    f
    li      a0, 0
    li      s1, 1
    mul     s2,s1,a1
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,a0
    li      s3, 0
    sd      s3,0(a0)
    add     s4,a2,a1
    li      s5, 0
    mul     s6,s1,s4
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,s5
    sd      s3,0(s5)
    sub     s7,a2,a1
    la      s8, n
    lw      s9,0(s8)
    add     s11,s10,s7
    li      s1, 0
    li      s2, 1
    mul     s3,s2,s11
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,s1
    li      s2, 0
    sd      s2,0(s1)
    j       .branch_false_41
.branch_false_41:
.L4_0:
    li      s2, 1
    add     s3,a1,s2
    j       .while.head_38
.while.exit_38:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L0_0:
    call    getint
    sw      a0,20(sp)
    mv      a1, a0
    j       .while.head_59
.while.head_59:
    li      a2, 0
    slt     a3,a2,a1
    bnez    a3, .while.body_59
    j       .while.exit_59
.while.body_59:
    call    getint
    sw      a0,20(sp)
    sw      a0,8(sp)
    la      a4, n
    sd      a0,0(a4)
    sw      a0,8(sp)
    li      a0, 1
    call    f
    li      a0, 1
    sub     a5,a1,a0
    j       .while.head_59
.while.exit_59:
    la      a6, sum
    lw      a7,0(a6)
    ld      ra,32(sp)
    ld      s0,24(sp)
    lw      a0,0(sp)
    addi    sp,sp,40
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
