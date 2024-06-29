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
    li      a2, 30
    add     a4,a0,a2
    mv      a0, a4
    j       .while.head_27
.while.head_27:
    li      a2, 100
    slt     a5,a1,a2
    bnez    a5, .while.body_27
    j       .while.exit_27
.while.body_27:
    li      a2, 6
    add     a6,a1,a2
    mv      a1, a6
    sw      a6,8(sp)
    sb      a5,15(sp)
    j       .while.head_27
.while.exit_27:
    li      a2, 100
    sub     a6,a1,a2
    mv      a1, a6
    sb      a3,23(sp)
    sw      a6,4(sp)
    sw      a4,16(sp)
    sb      a5,15(sp)
    j       .while.head_23
.while.exit_23:
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a1,24(sp)
    sw      a0,28(sp)
    lw      a0,24(sp)
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
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,24
    ret
