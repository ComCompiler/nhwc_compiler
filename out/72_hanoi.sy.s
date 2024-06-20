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
    .globl move
    .type move,@function
move:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L3_0:
    sw      a0,16(sp)
    mv      a0, a0
    call    putint
    li      a0, 32
    call    putch
    sw      a1,8(sp)
    mv      a0, a0
    call    putint
    li      a0, 44
    call    putch
    li      a0, 32
    call    putch
    .globl hanoi
    .type hanoi,@function
hanoi:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,48(sp)
    addi    s0,sp,72
.L1_0:
    li      a4, 1
    xor     a5,a0,a4
    sltiu   a5,a5,1
    bnez    a5, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    sw      a1,32(sp)
    sw      a0,40(sp)
    mv      a0, a0
    sw      a3,16(sp)
    mv      a1, a1
    call    move
    j       .L2_0
.branch_false_28:
    mv      a0, a0
    sub     a1,a0,a4
    sw      a1,11(sp)
    sw      a0,40(sp)
    mv      a0, a0
    mv      a1, a1
    sw      a2,24(sp)
    mv      a2, a2
    mv      a3, a3
    call    hanoi
    mv      a0, a0
    mv      a1, a1
    call    move
    mv      a0, a0
    sub     a1,a0,a4
    sw      a1,4(sp)
    sw      a0,40(sp)
    mv      a0, a0
    mv      a1, a1
    mv      a2, a2
    mv      a3, a3
    call    hanoi
    j       .L2_0
.L2_0:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,32(sp)
    addi    s0,sp,56
.L0_0:
    call    getint
    sw      a0,24(sp)
    mv      a1, a0
    j       .while.head_38
.while.head_38:
    li      a2, 0
    slt     a3,a2,a1
    bnez    a3, .while.body_38
    j       .while.exit_38
.while.body_38:
    call    getint
    sw      a0,24(sp)
    sw      a0,11(sp)
    sw      a0,11(sp)
    mv      a0, a0
    sw      a1,16(sp)
    li      a1, 1
    li      a2, 2
    sb      a3,15(sp)
    li      a3, 3
    call    hanoi
    li      a0, 10
    call    putch
    mv      a0, a0
    sub     a1,a0,a4
    j       .while.head_38
.while.exit_38:
    ld      ra,48(sp)
    ld      s0,32(sp)
    li      a0, 0
    addi    sp,sp,56
    ret
