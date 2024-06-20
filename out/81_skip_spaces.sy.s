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
    addi    sp,sp,-520
    sd      ra,512(sp)
    sd      s0,496(sp)
    addi    s0,sp,520
.L0_0:
    li      a0, 0
    mv      a1, a0
    mv      a2, a0
    j       .while.head_20
.while.head_20:
    call    getint
    sw      a0,68(sp)
    li      a3, 0
    xor     a4,a0,a3
    sltiu   a4,a4,1
    xori    a4,a4,1
    bnez    a4, .while.body_20
    j       .while.exit_20
.while.body_20:
    li      a5, 0
    li      a6, 1
    mul     a7,a6,a1
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    call    getint
    sw      a0,68(sp)
    sw      a0,48(sp)
    sd      a0,0(a5)
    add     s1,a1,a6
    j       .while.head_20
.while.head_25:
    xor     s2,a1,a3
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .while.body_25
    j       .while.exit_25
.while.body_25:
    sub     s3,a1,a6
    li      s4, 0
    add     s4,s4,a7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    mv      s5, s5
    add     s6,a2,s5
    j       .while.head_25
.while.exit_25:
    li      s7, 79
    mv      s8, s8
    rem     s8,a2,s7
    ld      ra,512(sp)
    ld      s0,496(sp)
    mv      a0, s8
    addi    sp,sp,520
    ret
