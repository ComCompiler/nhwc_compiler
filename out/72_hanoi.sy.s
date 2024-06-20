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
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L3_0:
    sw      a0,4(sp)
    call    putint
    li      a0, 32
    call    putch
    sw      a1,0(sp)
    call    putint
    li      a0, 44
    call    putch
    li      a0, 32
    call    putch
    .globl hanoi
    .type hanoi,@function
hanoi:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L1_0:
    li      a4, 1
    xor     a5,a0,a4
    seqz    a5, a5
    bnez    a5, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    sw      a1,24(sp)
    sw      a0,28(sp)
    sw      a3,16(sp)
    call    move
    j       .L2_0
.branch_false_28:
    sub     a1,a0,a4
    sw      a1,8(sp)
    sw      a0,28(sp)
    sw      a2,20(sp)
    call    hanoi
    call    move
    sub     a1,a0,a4
    sw      a1,4(sp)
    sw      a0,28(sp)
    call    hanoi
    j       .L2_0
.L2_0:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L0_0:
    call    getint
    sw      a0,20(sp)
    mv      a1, a0
    j       .while.head_38
.while.head_38:
    li      a2, 0
    slt     a3,a2,a1
    bnez    a3, .while.body_38
    j       .while.exit_38
.while.body_38:
    call    getint
    sw      a0,20(sp)
    sw      a0,8(sp)
    sw      a0,8(sp)
    sw      a1,16(sp)
    li      a1, 1
    li      a2, 2
    sb      a3,15(sp)
    li      a3, 3
    call    hanoi
    li      a0, 10
    call    putch
    li      a1, 1
    sub     a2,a0,a1
    j       .while.head_38
.while.exit_38:
    ld      ra,32(sp)
    ld      s0,24(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
