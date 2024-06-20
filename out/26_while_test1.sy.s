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
    .globl doubleWhile
    .type doubleWhile,@function
doubleWhile:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,40(sp)
    addi    s0,sp,64
.L1_0:
    li      a0, 5
    mv      a1, a0
    li      a2, 7
    mv      a3, a2
    j       .while.head_23
.while.head_23:
    li      a4, 100
    slt     a5,a1,a4
    bnez    a5, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a6, 30
    add     a7,a1,a6
    j       .while.head_27
.while.head_27:
    slt     s1,a3,a4
    bnez    s1, .while.body_27
    j       .while.exit_27
.while.body_27:
    li      s2, 6
    add     s3,a3,s2
    j       .while.head_27
.while.exit_27:
    sub     s4,a3,a4
    j       .while.head_23
.while.exit_23:
    ld      ra,56(sp)
    ld      s0,40(sp)
    mv      a0, a3
    addi    sp,sp,64
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,40
.L0_0:
    sb      s1,18(sp)
    sw      s3,12(sp)
    sw      s4,8(sp)
    call    doubleWhile
    sw      a0,8(sp)
    ld      ra,32(sp)
    ld      s0,16(sp)
    mv      a0, a0
    addi    sp,sp,40
    ret
