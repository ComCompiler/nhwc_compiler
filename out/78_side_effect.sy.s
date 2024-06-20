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
    .globl inc_a
    .type inc_a,@function
inc_a:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L4_0:
    la      a0, a
    lw      a1,0(a0)
    mv      a3, a2
    li      a4, 1
    add     a5,a3,a4
    la      a6, a
    sd      a3,0(a6)
    la      a7, a
    lw      s1,0(a7)
    ld      ra,24(sp)
    ld      s0,16(sp)
    lw      a0,0(sp)
    addi    sp,sp,32
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-120
    sd      ra,112(sp)
    sd      s0,104(sp)
    addi    s0,sp,120
.L0_0:
    li      a0, 5
    j       .while.head_27
.while.head_27:
    li      a1, 0
    slt     a2,a0,a1
    xori    a2,a2,1
    bnez    a2, .while.body_27
    j       .while.exit_27
.while.body_27:
    call    inc_a
    sw      a0,100(sp)
    sw      a0,92(sp)
    call    inc_a
    sw      a0,92(sp)
    sw      a0,88(sp)
    xor     a3,a0,a1
    snez    a3, a3
    and     a6,a3,a5
    call    inc_a
    sw      a0,88(sp)
    sw      a0,80(sp)
    xor     a7,a0,a1
    snez    a7, a7
    and     s1,a7,a6
    bnez    s1, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    la      s2, a
    lw      s3,0(s2)
    sb      s1,78(sp)
    sw      a0,80(sp)
    call    putint
    li      a0, 32
    call    putch
    la      a0, b
    lw      s1,0(a0)
    call    putint
    li      a0, 10
    call    putch
    j       .branch_false_30
.branch_false_30:
.L1_0:
    call    inc_a
    sw      a0,64(sp)
    li      s1, 1
    add     s2,a0,s1
    sw      s2,60(sp)
    call    inc_a
    sw      a0,64(sp)
    sw      a0,56(sp)
    sub     s2,a0,s1
    sw      s1,60(sp)
    sw      s2,52(sp)
    call    inc_a
    sw      a0,56(sp)
    sw      a0,48(sp)
    xor     s1,a0,a1
    snez    s1, s1
    and     s4,s1,s3
    sb      s1,47(sp)
    sw      s2,52(sp)
    sb      s3,46(sp)
    sb      s4,45(sp)
    call    inc_a
    sw      a0,48(sp)
    sw      a0,40(sp)
    li      s1, 14
    slt     s2,a0,s1
    bnez    s4, .branch_true_37
    j       .branch_false_37
.branch_true_37:
    la      s5, a
    lw      s6,0(s5)
    sb      s2,39(sp)
    sb      s3,45(sp)
    sb      s4,38(sp)
    sw      a0,40(sp)
    call    putint
    li      a0, 10
    call    putch
    la      a0, b
    lw      s1,0(a0)
    li      s3, 2
    mul     s4,s2,s3
    la      s5, b
    sd      s4,0(s5)
    j       .L2_0
.branch_false_37:
    sw      s2,28(sp)
    sw      s4,24(sp)
    call    inc_a
    sw      a0,16(sp)
    j       .L2_0
.L2_0:
.L3_0:
    li      s2, 1
    sub     s3,s1,s2
    j       .while.head_27
.while.exit_27:
    la      s4, a
    lw      s5,0(s4)
    sw      s1,100(sp)
    sw      s3,20(sp)
    sw      a0,16(sp)
    call    putint
    li      a0, 32
    call    putch
    la      a0, b
    lw      s1,0(a0)
    call    putint
    li      a0, 10
    call    putch
    la      a0, a
    lw      s1,0(a0)
    ld      ra,112(sp)
    ld      s0,104(sp)
    lw      a0,4(sp)
    addi    sp,sp,120
    ret
.section        .data
    .align 4
    .globl b
    .type b,@object
b:
    .word 1
    .align 4
    .globl a
    .type a,@object
a:
    .word -1
