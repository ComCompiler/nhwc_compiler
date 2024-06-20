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
    .globl main
    .type main,@function
main:
    addi    sp,sp,-136
    sd      ra,128(sp)
    sd      s0,112(sp)
    addi    s0,sp,136
.L0_0:
    li      a0, 5
    mv      a1, a0
    mv      a2, a0
    li      a3, 1
    mv      a4, a3
    li      a5, -2
    mv      a6, a5
    li      a7, 2
    mv      s1, a7
    j       .L1_0
.L1_0:
    li      s2, 3
    add     s3,a4,s2
    mv      s4, s4
    rem     s4,s3,a7
    li      s5, 0
    xor     s6,s4,s5
    sltiu   s6,s6,1
    xori    s6,s6,1
    sub     s7,a1,a2
    xor     s8,s7,s5
    sltiu   s8,s8,1
    xori    s8,s8,1
    and     s9,s8,s6
    div     s10,a7,a6
    slt     s11,s10,s5
    mv      a0, a0
    bnez    a0, .branch_true_29
    j       .branch_false_29
.branch_true_29:
    sw      s1,72(sp)
    sw      s3,64(sp)
    sw      s4,56(sp)
    sb      s6,55(sp)
    sw      s7,48(sp)
    sb      s8,47(sp)
    sb      s9,46(sp)
    sw      s10,40(sp)
    sb      s11,39(sp)
    sb      a0,38(sp)
    mv      a0, a0
    call    putint
    j       .branch_false_29
.branch_false_29:
.L2_0:
    add     a0,a4,a7
    mv      s1, s1
    rem     s1,a0,a7
    li      s2, 0
    xor     s3,s1,s2
    sltiu   s3,s3,1
    xori    s3,s3,1
    sub     s4,a1,a2
    xor     s5,s4,s2
    sltiu   s5,s5,1
    xori    s5,s5,1
    and     s6,s5,s3
    mv      s7, s7
    rem     s7,a6,a7
    li      s8, 67
    add     s9,s7,s8
    slt     s10,s9,s2
    mv      s11, s11
    bnez    s11, .branch_true_33
    j       .branch_false_33
.branch_true_33:
    li      a3, 4
    mv      a5, a3
    sw      s1,28(sp)
    sb      s3,27(sp)
    sw      s4,20(sp)
    sb      s5,19(sp)
    sb      s6,18(sp)
    sw      s7,12(sp)
    sw      s9,8(sp)
    sb      s10,7(sp)
    sb      s11,6(sp)
    sw      a5,72(sp)
    sw      a0,32(sp)
    mv      a0, a0
    call    putint
    j       .branch_false_33
.branch_false_33:
.L3_0:
    ld      ra,128(sp)
    ld      s0,112(sp)
    li      a0, 0
    addi    sp,sp,136
    ret
