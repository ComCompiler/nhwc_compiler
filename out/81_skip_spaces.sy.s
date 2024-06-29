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
    addi    sp,sp,-480
    sd      ra,472(sp)
    sd      s0,464(sp)
    addi    s0,sp,480
.L0_0:
    li      a0, 0
    li      a1, 0
    j       .while.head_20
.while.head_20:
    sw      a0,60(sp)
    sw      a1,56(sp)
    call    getint
    sw      a0,52(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    bnez    a2, .while.body_20
    j       .while.exit_20
.while.body_20:
    li      a1, 0
    li      a3, 1
    lw      a4,60(sp)
    mul     a5,a3,a4
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,64
    sw      a0,52(sp)
    sd      a1,40(sp)
    sb      a2,51(sp)
    sw      a4,60(sp)
    call    getint
    sw      a0,36(sp)
    ld      a1,40(sp)
    sw      a0,0(a1)
    lw      a2,60(sp)
    li      a3, 1
    add     a4,a2,a3
    mv      a2, a4
    sd      a1,40(sp)
    sw      a2,60(sp)
    sw      a4,32(sp)
    sw      a0,36(sp)
    lw      a1,56(sp)
    lw      a0,60(sp)
    j       .while.head_20
.while.exit_20:
    lw      a1,60(sp)
    li      a3, 0
    xor     a4,a1,a3
    snez    a4, a4
    bnez    a4, .while.body_25
    j       .while.exit_25
.while.body_25:
    li      a3, 1
    sub     a5,a1,a3
    mv      a1, a5
    li      a6, 0
    mul     a7,a3,a1
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,64
    lw      s1,0(a6)
    lw      s2,56(sp)
    add     s3,s2,s1
    mv      s2, s3
    sw      s3,8(sp)
    sw      a1,60(sp)
    sd      a6,16(sp)
    sw      a5,24(sp)
    sw      s1,12(sp)
    sw      s2,56(sp)
    sb      a4,31(sp)
    j       .while.exit_20
.while.exit_25:
    lw      a3,56(sp)
    li      a5, 79
    rem     a6,a3,a5
    ld      ra,472(sp)
    ld      s0,464(sp)
    sw      a6,4(sp)
    sw      a0,52(sp)
    lw      a0,4(sp)
    addi    sp,sp,480
    ret
