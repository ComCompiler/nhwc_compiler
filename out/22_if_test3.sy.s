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
    .globl ififElse
    .type ififElse,@function
ififElse:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L1_0:
    li      a0, 5
    li      a1, 10
    j       .L2_0
.L2_0:
    li      a2, 5
    xor     a3,a0,a2
    seqz    a3, a3
    bnez    a3, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    li      a2, 10
    xor     a4,a1,a2
    seqz    a4, a4
    bnez    a4, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    li      a0, 25
    j       .L3_0
.branch_false_25:
    li      a2, 15
    add     a5,a0,a2
    mv      a0, a5
    sw      a5,0(sp)
    j       .L3_0
.L3_0:
.branch_false_23:
.L4_0:
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    lw      a0,12(sp)
    addi    sp,sp,32
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    call    ififElse
    sw      a0,4(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,24
    ret
