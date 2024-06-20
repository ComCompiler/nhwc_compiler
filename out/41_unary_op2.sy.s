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
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,48(sp)
    addi    s0,sp,72
.L0_0:
    li      a0, 070
    mv      a1, a0
    li      a2, 0x4
    mv      a3, a2
    li      a4, -4
    add     a5,a3,a4
    sub     a6,a1,a5
    j       .L1_0
.L1_0:
    li      a7, 0
    xor     s1,a1,a7
    sltiu   s1,s1,1
    xori    s1,s1,1
    xori    s2,s1,-1
    mv      s3, s3
    xori    s4,s3,-1
    mv      s5, s5
    xori    s6,s5,-1
    sub     s7,a7,s6
    bnez    s7, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    li      s8, -1
    j       .L2_0
.branch_false_23:
    add     s9,a7,a3
    j       .L2_0
.L2_0:
.L3_0:
    sb      s1,15(sp)
    sb      s2,14(sp)
    sb      s3,13(sp)
    sb      s4,12(sp)
    sb      s5,11(sp)
    sb      s6,10(sp)
    sb      s7,9(sp)
    sw      s9,4(sp)
    sw      a1,40(sp)
    mv      a0, a0
    call    putint
    ld      ra,64(sp)
    ld      s0,48(sp)
    li      a0, 0
    addi    sp,sp,72
    ret
