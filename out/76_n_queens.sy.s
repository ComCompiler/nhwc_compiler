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
    .globl printans
    .type printans,@function
printans:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,48(sp)
    addi    s0,sp,64
.L5_0:
    la      a0, sum
    lw      a1,0(a0)
    li      a2, 1
    add     a3,a1,a2
    la      a4, sum
    sw      a3,0(a4)
    li      a5, 1
    j       .while.head_23
.while.head_23:
    la      a0, n
    lw      a2,0(a0)
    slt     a4,a2,a5
    xori    a4,a4,1
    bnez    a4, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a0, 0
    li      a6, 1
    mul     a7,a6,a5
    add     a0,a0,a7
    slli a0,a0,2
    la      s1, ans
    add     a0,a0,s1
    lw      s2,0(a0)
    sw      s2,12(sp)
    sd      a0,16(sp)
    sw      a1,44(sp)
    sw      a2,32(sp)
    sw      a3,40(sp)
    sb      a4,31(sp)
    sw      a5,36(sp)
    lw      a0,12(sp)
    call    putint
    j       .L6_0
.L6_0:
    la      a0, n
    lw      a1,0(a0)
    lw      a2,36(sp)
    xor     a3,a2,a1
    seqz    a3, a3
    bnez    a3, .branch_true_27
    j       .branch_false_27
.branch_true_27:
    sw      a1,8(sp)
    sw      a2,36(sp)
    sb      a3,7(sp)
    li      a0, 10
    call    putch
    ld      ra,56(sp)
    ld      s0,48(sp)
    addi    sp,sp,64
    ret
.branch_false_27:
    sw      a1,8(sp)
    sw      a2,36(sp)
    sb      a3,7(sp)
    li      a0, 32
    call    putch
    j       .L7_0
.L7_0:
.L8_0:
    lw      a0,36(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,36(sp)
    sw      a2,0(sp)
    lw      a1,44(sp)
    lw      a5,36(sp)
    lw      a3,40(sp)
    j       .while.head_23
.while.exit_23:
    ld      ra,56(sp)
    ld      s0,48(sp)
    addi    sp,sp,64
    ret
    .globl f
    .type f,@function
f:
    addi    sp,sp,-232
    sd      ra,224(sp)
    sd      s0,216(sp)
    addi    s0,sp,232
.L1_0:
    li      a1, 1
    j       .while.head_38
.while.head_38:
    la      a2, n
    lw      a3,0(a2)
    slt     a4,a3,a1
    xori    a4,a4,1
    bnez    a4, .while.body_38
    j       .while.exit_38
.while.body_38:
    la      a2, n
    lw      a5,0(a2)
    add     a6,a5,a0
    sub     a7,a6,a1
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a7
    add     s1,s1,s3
    slli s1,s1,2
    la      s4, line2
    add     s1,s1,s4
    lw      s5,0(s1)
    li      s6, 0
    xor     s7,s5,s6
    snez    s7, s7
    seqz    s8, s7
    add     s9,a0,a1
    li      s10, 0
    mul     s11,s2,s9
    add     s10,s10,s11
    slli s10,s10,2
    la      a2, line1
    add     s10,s10,a2
    lw      a2,0(s10)
    xor     s2,a2,s6
    seqz    s2, s2
    and     s3,s2,s8
    li      s4, 0
    li      s6, 1
    mul     s11,s6,a1
    add     s4,s4,s11
    slli s4,s4,2
    la      s6, row
    add     s4,s4,s6
    lw      s6,0(s4)
    li      s11, 1
    sw      a0,212(sp)
    xor     a0,s6,s11
    snez    a0, a0
    and     s11,a0,s3
    sw      a7,188(sp)
    bnez    s11, .branch_true_41
    j       .branch_false_41
.branch_true_41:
    li      a7, 0
    sb      a0,131(sp)
    li      a0, 1
    sw      a1,208(sp)
    lw      a1,212(sp)
    sw      a2,148(sp)
    mul     a2,a0,a1
    add     a7,a7,a2
    slli a7,a7,2
    la      a0, ans
    add     a7,a7,a0
    lw      a0,208(sp)
    sw      a0,0(a7)
    j       .L2_0
.L2_0:
    la      a2, n
    sw      a0,208(sp)
    lw      a0,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
    sd      a7,120(sp)
    bnez    a2, .branch_true_45
    j       .branch_false_45
.branch_true_45:
    sd      s1,176(sp)
    sb      s2,147(sp)
    sb      s3,146(sp)
    sd      s4,136(sp)
    sw      s5,172(sp)
    sw      s6,132(sp)
    sb      s7,171(sp)
    sb      s8,170(sp)
    sw      s9,164(sp)
    sd      s10,152(sp)
    sb      s11,130(sp)
    sw      a0,116(sp)
    sw      a1,212(sp)
    sb      a2,115(sp)
    sw      a3,204(sp)
    sb      a4,203(sp)
    sw      a5,196(sp)
    sw      a6,192(sp)
    call    printans
    lb      s2,147(sp)
    lb      a4,203(sp)
    lw      s5,172(sp)
    lb      a2,115(sp)
    lw      a0,116(sp)
    lw      a5,196(sp)
    lb      s3,146(sp)
    ld      s4,136(sp)
    lb      s8,170(sp)
    ld      s10,152(sp)
    lw      s9,164(sp)
    lw      a1,212(sp)
    lw      a3,204(sp)
    lb      s7,171(sp)
    lw      a6,192(sp)
    ld      s1,176(sp)
    lb      s11,130(sp)
    lw      s6,132(sp)
    j       .branch_false_45
.branch_false_45:
.L3_0:
    li      a7, 0
    sw      a0,116(sp)
    li      a0, 1
    sw      a1,212(sp)
    lw      a1,208(sp)
    sb      a2,115(sp)
    mul     a2,a0,a1
    add     a7,a7,a2
    slli a7,a7,2
    la      a0, row
    add     a7,a7,a0
    li      a0, 1
    sw      a0,0(a7)
    lw      a0,212(sp)
    add     a2,a0,a1
    sw      a0,212(sp)
    li      a0, 0
    sw      a1,208(sp)
    li      a1, 1
    sw      a3,204(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, line1
    add     a0,a0,a1
    li      a1, 1
    sw      a1,0(a0)
    la      a1, n
    lw      a3,0(a1)
    lw      a1,212(sp)
    sd      a0,88(sp)
    add     a0,a3,a1
    sw      a1,212(sp)
    lw      a1,208(sp)
    sw      a2,100(sp)
    sub     a2,a0,a1
    sw      a0,80(sp)
    li      a0, 0
    sw      a1,208(sp)
    li      a1, 1
    sw      a3,84(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, line2
    add     a0,a0,a1
    li      a1, 1
    sw      a1,0(a0)
    lw      a1,212(sp)
    li      a3, 1
    sd      a0,64(sp)
    add     a0,a1,a3
    sd      s1,176(sp)
    sb      s2,147(sp)
    sb      s3,146(sp)
    sd      s4,136(sp)
    sw      s5,172(sp)
    sw      s6,132(sp)
    sb      s7,171(sp)
    sb      s8,170(sp)
    sw      s9,164(sp)
    sd      s10,152(sp)
    sb      s11,130(sp)
    sw      a0,60(sp)
    sw      a1,212(sp)
    sw      a2,76(sp)
    sb      a4,203(sp)
    sw      a5,196(sp)
    sw      a6,192(sp)
    sd      a7,104(sp)
    lw      a0,60(sp)
    call    f
    li      a0, 0
    li      a1, 1
    lw      a2,208(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, row
    add     a0,a0,a4
    li      a5, 0
    sw      a5,0(a0)
    lw      a6,212(sp)
    add     a7,a6,a2
    li      s1, 0
    mul     s2,a1,a7
    add     s1,s1,s2
    slli s1,s1,2
    la      s3, line1
    add     s1,s1,s3
    sw      a5,0(s1)
    la      s4, n
    lw      s5,0(s4)
    add     s6,s5,a6
    sub     s7,s6,a2
    li      s8, 0
    mul     s9,a1,s7
    add     s8,s8,s9
    slli s8,s8,2
    la      s10, line2
    add     s8,s8,s10
    sw      a5,0(s8)
    sw      a7,44(sp)
    sw      s5,28(sp)
    sw      a2,208(sp)
    sd      a0,48(sp)
    sd      s8,8(sp)
    sw      s7,20(sp)
    sw      a6,212(sp)
    sd      s1,32(sp)
    sw      s6,24(sp)
    lb      s2,147(sp)
    lb      a4,203(sp)
    lw      s5,172(sp)
    lw      a2,148(sp)
    lb      a0,131(sp)
    lw      a5,196(sp)
    lb      s3,146(sp)
    ld      s4,136(sp)
    lb      s8,170(sp)
    ld      s10,152(sp)
    lw      s9,164(sp)
    lw      a1,208(sp)
    lw      a3,204(sp)
    lb      s7,171(sp)
    lw      a6,192(sp)
    ld      s1,176(sp)
    lb      s11,130(sp)
    lw      s6,132(sp)
    j       .branch_false_41
.branch_false_41:
.L4_0:
    li      a7, 1
    sb      a0,131(sp)
    add     a0,a1,a7
    mv      a1, a0
    sb      s2,147(sp)
    sb      a4,203(sp)
    sw      s5,172(sp)
    sw      a2,148(sp)
    sw      a0,4(sp)
    sw      a5,196(sp)
    sb      s3,146(sp)
    sd      s4,136(sp)
    sb      s8,170(sp)
    sd      s10,152(sp)
    sw      s9,164(sp)
    sw      a3,204(sp)
    sb      s7,171(sp)
    sw      a6,192(sp)
    sd      s1,176(sp)
    sb      s11,130(sp)
    sw      s6,132(sp)
    lw      a0,212(sp)
    j       .while.head_38
.while.exit_38:
    ld      ra,224(sp)
    ld      s0,216(sp)
    addi    sp,sp,232
    ret
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
    sw      a0,20(sp)
    sw      a1,16(sp)
    sb      a3,15(sp)
    call    getint
    sw      a0,8(sp)
    la      a1, n
    sw      a0,0(a1)
    sw      a0,8(sp)
    li      a0, 1
    call    f
    lw      a0,16(sp)
    li      a1, 1
    sub     a2,a0,a1
    mv      a0, a2
    sw      a2,4(sp)
    sw      a0,16(sp)
    lw      a0,20(sp)
    lw      a1,16(sp)
    j       .while.head_59
.while.exit_59:
    la      a2, sum
    lw      a4,0(a2)
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a4,0(sp)
    sw      a0,20(sp)
    lw      a0,0(sp)
    addi    sp,sp,40
    ret
.section ___var
    .data
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
