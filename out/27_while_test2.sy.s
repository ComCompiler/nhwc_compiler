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
    .globl FourWhile
    .type FourWhile,@function
FourWhile:
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,72(sp)
    addi    s0,sp,88
.L1_0:
    li      a0, 5
    li      a1, 6
    li      a2, 7
    li      a3, 10
    j       .while.head_27
.while.head_27:
    li      a4, 20
    slt     a5,a0,a4
    bnez    a5, .while.body_27
    j       .while.exit_27
.while.body_27:
    li      a6, 3
    add     a7,a0,a6
    j       .while.head_31
.while.head_31:
    li      s1, 10
    slt     s2,a1,s1
    bnez    s2, .while.body_31
    j       .while.exit_31
.while.body_31:
    li      s3, 1
    add     s4,a1,s3
    j       .while.head_35
.while.head_35:
    li      s5, 7
    xor     s6,a2,s5
    seqz    s6, s6
    bnez    s6, .while.body_35
    j       .while.exit_35
.while.body_35:
    sub     s7,a2,s3
    j       .while.head_39
.while.head_39:
    slt     s8,a3,a4
    bnez    s8, .while.body_39
    j       .while.exit_39
.while.body_39:
    add     s9,a3,a6
    j       .while.head_39
.while.exit_39:
    sub     s10,a3,s3
    j       .while.head_35
.while.exit_35:
    add     s11,a2,s3
    j       .while.head_31
.while.exit_31:
    li      a4, 2
    sub     a6,a1,a4
    j       .while.head_27
.while.exit_27:
    add     a4,a1,a3
    add     s1,a4,a2
    add     s3,a0,s1
    ld      ra,80(sp)
    ld      s0,72(sp)
    mv      a0, s3
    addi    sp,sp,88
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    call    FourWhile
    sw      a0,4(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
