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
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L1_0:
    li      a0, 5
    li      a1, 7
    j       .while.head_23
.while.head_23:
    li      a2, 100
    slt     a3,a0,a2
    bnez    a3, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a4, 30
    add     a5,a0,a4
    j       .while.head_27
.while.head_27:
    slt     a6,a1,a2
    bnez    a6, .while.body_27
    j       .while.exit_27
.while.body_27:
    li      a7, 6
    add     s1,a1,a7
    j       .while.head_27
.while.exit_27:
    sub     s2,a1,a2
    j       .while.head_23
.while.exit_23:
    ld      ra,40(sp)
    ld      s0,32(sp)
    mv      a0, a1
    addi    sp,sp,48
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    call    doubleWhile
    sw      a0,4(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
