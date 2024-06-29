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
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L0_0:
    li      a0, 0
    la      a1, k
    li      a2, 1
    sw      a2,0(a1)
    j       .while.head_23
.while.head_23:
    li      a1, 9
    slt     a2,a1,a0
    xori    a2,a2,1
    bnez    a2, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a1, 1
    add     a3,a0,a1
    mv      a0, a3
    la      a4, k
    lw      a5,0(a4)
    add     a6,a5,a1
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2
    mul     s3,s1,s2
    la      s4, k
    sw      s3,0(s4)
    sw      a6,20(sp)
    sw      a5,24(sp)
    sb      a2,35(sp)
    sw      a3,28(sp)
    sw      s3,12(sp)
    sw      s1,16(sp)
    j       .while.head_23
.while.exit_23:
    la      a1, k
    lw      a3,0(a1)
    sw      a0,36(sp)
    sb      a2,35(sp)
    sw      a3,8(sp)
    lw      a0,8(sp)
    call    putint
    la      a0, k
    lw      a1,0(a0)
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a1,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,56
    ret
.section ___var
    .data
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
