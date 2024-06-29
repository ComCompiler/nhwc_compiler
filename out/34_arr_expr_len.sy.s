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
    li      a1, 0
    j       .while.head_22
.while.head_22:
    li      a2, 6
    slt     a3,a0,a2
    bnez    a3, .while.body_22
    j       .while.exit_22
.while.body_22:
    li      a2, 0
    li      a4, 1
    mul     a5,a4,a0
    add     a2,a2,a5
    slli a2,a2,2
    la      a6, arr
    add     a2,a2,a6
    lw      a7,0(a2)
    add     s1,a1,a7
    mv      a1, s1
    add     s2,a0,a4
    mv      a0, s2
    sb      a3,31(sp)
    sd      a2,16(sp)
    sw      s2,4(sp)
    sw      a7,12(sp)
    sw      s1,8(sp)
    j       .while.head_22
.while.exit_22:
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a1,32(sp)
    sw      a0,36(sp)
    lw      a0,32(sp)
    addi    sp,sp,56
    ret
.section ___var
    .data
    .align 4
    .globl arr
    .type arr,@object
arr:
    .word 1
    .word 2
    .word 33
    .word 4
    .word 5
    .word 6
    .zero 4
    .align 4
    .globl N
    .type N,@object
N:
    .word -1
