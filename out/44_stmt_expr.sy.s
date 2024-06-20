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
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L0_0:
    li      a0, 0
    la      a1, k
    li      a2, 1
    sd      a2,0(a1)
    j       .while.head_23
.while.head_23:
    li      a3, 9
    slt     a4,a3,a0
    xori    a4,a4,1
    bnez    a4, .while.body_23
    j       .while.exit_23
.while.body_23:
    add     a5,a0,a2
    la      a6, k
    lw      a7,0(a6)
    add     s2,s1,a2
    la      s3, k
    lw      s4,0(s3)
    li      s6, 2
    mul     s7,s5,s6
    la      s8, k
    sd      s7,0(s8)
    j       .while.head_23
.while.exit_23:
    la      s9, k
    lw      s10,0(s9)
    sw      s1,24(sp)
    sw      s2,20(sp)
    sw      s5,16(sp)
    sw      s7,12(sp)
    sw      a0,36(sp)
    call    putint
    la      a0, k
    lw      s1,0(a0)
    ld      ra,48(sp)
    ld      s0,40(sp)
    lw      a0,4(sp)
    addi    sp,sp,56
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
