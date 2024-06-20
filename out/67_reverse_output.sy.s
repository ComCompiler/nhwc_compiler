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
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L1_0:
    j       .L2_0
.L2_0:
    li      a1, 1
    slt     a2,a1,a0
    xori    a2,a2,1
    bnez    a2, .branch_true_21
    j       .branch_false_21
.branch_true_21:
    call    getint
    sw      a0,20(sp)
    sw      a0,8(sp)
    mv      a3, a0
    sw      a3,16(sp)
    sw      a0,8(sp)
    call    putint
    j       .L3_0
.branch_false_21:
    call    getint
    sw      a0,4(sp)
    mv      a3, a0
    sub     a5,a4,a1
    sw      a5,0(sp)
    sw      a0,4(sp)
    call    reverse
    sw      a3,16(sp)
    call    putint
    j       .L3_0
.L3_0:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    li      a0, 200
    sw      a0,4(sp)
    call    reverse
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
