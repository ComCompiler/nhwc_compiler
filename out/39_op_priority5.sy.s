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
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
.L0_0:
    li      a0, 0
    j       .L1_0
.L1_0:
    la      a1, c
    lw      a2,0(a1)
    la      a3, a
    lw      a4,0(a3)
    div     a5,a4,a2
    la      a6, d
    lw      a7,0(a6)
    sub     s1,a7,a5
    la      s2, b
    lw      s3,0(s2)
    mul     s4,s3,a2
    sub     s5,a4,s4
    xor     s6,s5,s1
    seqz    s6, s6
    la      s7, e
    lw      s8,0(s7)
    add     s9,s8,a7
    add     s10,a4,s3
    mul     s11,a4,s10
    add     a1,s11,a2
    slt     a3,s9,a1
    xori    a3,a3,1
    mul     a6,a4,s3
    div     s2,a6,a2
    xor     s7,s2,s9
    seqz    s7, s7
    sw      a0,76(sp)
    and     a0,s7,a3
    sw      a1,20(sp)
    or      a1,a0,s6
    sw      s9,32(sp)
    bnez    a1, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    li      s9, 1
    sw      s9,76(sp)
    j       .branch_false_25
.branch_false_25:
.L2_0:
    sw      s1,56(sp)
    sw      s2,8(sp)
    sw      s3,52(sp)
    sw      s4,48(sp)
    sw      s5,44(sp)
    sb      s6,43(sp)
    sb      s7,7(sp)
    sw      s8,36(sp)
    sw      s10,28(sp)
    sw      s11,24(sp)
    sb      a0,6(sp)
    sb      a1,5(sp)
    sw      a2,72(sp)
    sb      a3,19(sp)
    sw      a4,68(sp)
    sw      a5,64(sp)
    sw      a6,12(sp)
    sw      a7,60(sp)
    lw      a0,76(sp)
    call    putint
    ld      ra,88(sp)
    ld      s0,80(sp)
    lw      a0,76(sp)
    addi    sp,sp,96
    ret
.section ___var
    .data
    .align 4
    .globl e
    .type e,@object
e:
    .word 4
    .align 4
    .globl d
    .type d,@object
d:
    .word 2
    .align 4
    .globl c
    .type c,@object
c:
    .word 1
    .align 4
    .globl b
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
    .type a,@object
a:
    .word 1
