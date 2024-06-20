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
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,64(sp)
    addi    s0,sp,88
.L0_0:
    li      a0, 0
    mv      a1, a0
    la      a2, k
    li      a3, 1
    sd      a3,0(a2)
    j       .while.head_23
.while.head_23:
    li      a4, 9
    slt     a5,a1,a4
    xori    a5,a5,1
    bnez    a5, .while.body_23
    j       .while.exit_23
.while.body_23:
    add     a6,a1,a3
    la      a7, k
    lw      s1,0(a7)
    mv      s2, s2
    add     s3,s2,a3
    la      s4, k
    lw      s5,0(s4)
    mv      s6, s6
    li      s7, 2
    mul     s8,s6,s7
    la      s9, k
    sd      s8,0(s9)
    j       .while.head_23
.while.exit_23:
    la      s10, k
    lw      s11,0(s10)
    sw      s2,44(sp)
    sw      s3,36(sp)
    sw      s6,28(sp)
    sw      s8,20(sp)
    mv      a0, a0
    call    putint
    la      a0, k
    lw      s1,0(a0)
    ld      ra,80(sp)
    ld      s0,64(sp)
    lw      a0,4(sp)
    addi    sp,sp,88
    ret
.section        .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 10
    .align 4
    .globl k
    .type k,@object
k:
    .word 0
