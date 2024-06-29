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
    .globl main
    .type main,@function
main:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L0_0:
    li      a0, 070
    li      a1, 0x4
    li      a2, -4
    sub     a3,a0,a2
    add     a4,a3,a1
    mv      a0, a4
    j       .L1_0
.L1_0:
    li      a2, 0
    xor     a5,a0,a2
    snez    a5, a5
    seqz    a6, a5
    xor     a7,a6,a2
    snez    a7, a7
    seqz    s1, a7
    xor     s2,s1,a2
    snez    s2, s2
    seqz    s3, s2
    sub     s4,a2,s3
    bnez    s4, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    li      a0, -1
    j       .L2_0
.branch_false_23:
    li      a2, 0
    add     s5,a2,a1
    mv      a0, s5
    sw      s5,4(sp)
    j       .L2_0
.L2_0:
.L3_0:
    sb      s1,12(sp)
    sb      s2,11(sp)
    sb      s3,10(sp)
    sb      s4,9(sp)
    sw      a0,28(sp)
    sw      a1,24(sp)
    sw      a3,20(sp)
    sw      a4,16(sp)
    sb      a5,15(sp)
    sb      a6,14(sp)
    sb      a7,13(sp)
    lw      a0,28(sp)
    call    putint
    ld      ra,40(sp)
    ld      s0,32(sp)
    li      a0, 0
    addi    sp,sp,48
    ret
