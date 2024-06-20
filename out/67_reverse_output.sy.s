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
    .globl reverse
    .type reverse,@function
reverse:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,40(sp)
    addi    s0,sp,64
.L1_0:
    j       .L2_0
.L2_0:
    li      a1, 1
    slt     a2,a0,a1
    xori    a2,a2,1
    bnez    a2, .branch_true_21
    j       .branch_false_21
.branch_true_21:
    call    getint
    sw      a0,32(sp)
    sw      a0,19(sp)
    mv      a3, a0
    sw      a3,24(sp)
    sw      a0,19(sp)
    mv      a0, a0
    call    putint
    j       .L3_0
.branch_false_21:
    call    getint
    sw      a0,12(sp)
    mv      a3, a0
    mv      a4, a4
    sub     a5,a4,a1
    sw      a5,4(sp)
    sw      a0,12(sp)
    mv      a0, a0
    call    reverse
    sw      a3,24(sp)
    mv      a0, a0
    call    putint
    j       .L3_0
.L3_0:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,40
.L0_0:
    li      a0, 200
    mv      a3, a0
    sw      a3,8(sp)
    mv      a0, a0
    call    reverse
    ld      ra,32(sp)
    ld      s0,16(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
