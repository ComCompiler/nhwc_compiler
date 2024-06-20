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
    addi    sp,sp,-480
    sd      ra,472(sp)
    sd      s0,464(sp)
    addi    s0,sp,480
.L0_0:
    li      a0, 0
    li      a1, 0
    j       .while.head_20
.while.head_20:
    call    getint
    sw      a0,60(sp)
    sw      a0,52(sp)
    li      a2, 0
    xor     a3,a0,a2
    snez    a3, a3
    bnez    a3, .while.body_20
    j       .while.exit_20
.while.body_20:
    li      a4, 0
    li      a5, 1
    mul     a7,a5,a6
    add     a4,a4,a7
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    call    getint
    sw      a0,52(sp)
    sw      a0,36(sp)
    sd      a0,0(a4)
    add     s1,a6,a5
    j       .while.head_20
.while.head_25:
    xor     s2,a6,a2
    snez    s2, s2
    bnez    s2, .while.body_25
    j       .while.exit_25
.while.body_25:
    sub     s3,a6,a5
    li      s4, 0
    add     s4,s4,a7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    add     s6,a1,s5
    j       .while.head_25
.while.exit_25:
    li      s7, 79
    rem     s8,a1,s7
    ld      ra,472(sp)
    ld      s0,464(sp)
    mv      a0, s8
    addi    sp,sp,480
    ret
