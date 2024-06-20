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
    addi    sp,sp,-152
    sd      ra,144(sp)
    sd      s0,128(sp)
    addi    s0,sp,152
.L0_0:
    li      a0, 0
    mv      a1, a0
    j       .L1_0
.L1_0:
    la      a2, d
    lw      a3,0(a2)
    la      a4, c
    lw      a5,0(a4)
    la      a6, a
    lw      a7,0(a6)
    mv      s1, s1
    mv      s2, s2
    div     s3,s1,s2
    mv      s4, s4
    sub     s5,s3,s4
    la      s6, b
    lw      s7,0(s6)
    mv      s8, s8
    mul     s9,s8,s2
    sub     s10,s9,s1
    xor     s11,s10,s5
    sltiu   s11,s11,1
    la      a0, e
    lw      a2,0(a0)
    mv      a0, a0
    add     a2,a0,s4
    add     a3,s1,s8
    mul     a4,a3,s1
    add     a5,a4,s2
    slt     a6,a5,a2
    xori    a6,a6,1
    mul     a7,s1,s8
    div     s6,a7,s2
    xor     s7,s6,a2
    sltiu   s7,s7,1
    sw      a0,48(sp)
    and     a0,s7,a6
    sb      a0,6(sp)
    mv      a0, a0
    bnez    a0, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    sb      a0,5(sp)
    li      a0, 1
    j       .branch_false_25
.branch_false_25:
.L2_0:
    sw      s1,96(sp)
    sw      s2,104(sp)
    sw      s3,88(sp)
    sw      s4,112(sp)
    sw      s5,80(sp)
    sw      s6,8(sp)
    sb      s7,7(sp)
    sw      s8,72(sp)
    sw      s9,64(sp)
    sw      s10,56(sp)
    sb      s11,55(sp)
    sw      a1,120(sp)
    mv      a0, a0
    call    putint
    ld      ra,144(sp)
    ld      s0,128(sp)
    lw      a0,120(sp)
    addi    sp,sp,152
    ret
.section        .data
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
