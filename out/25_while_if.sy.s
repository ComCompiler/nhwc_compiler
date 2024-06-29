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
    .globl get_one
    .type get_one,@function
get_one:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L5_0:
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
    .globl deepWhileBr
    .type deepWhileBr,@function
deepWhileBr:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
.L1_0:
    add     a2,a0,a1
    mv      a3, a2
    j       .while.head_26
.while.head_26:
    li      a4, 75
    slt     a5,a3,a4
    bnez    a5, .while.body_26
    j       .while.exit_26
.while.body_26:
    li      a4, 42
    j       .L2_0
.L2_0:
    li      a6, 100
    slt     a7,a3,a6
    bnez    a7, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    add     a6,a3,a4
    mv      a3, a6
    j       .L3_0
.L3_0:
    li      s1, 99
    slt     s2,s1,a3
    bnez    s2, .branch_true_35
    j       .branch_false_35
.branch_true_35:
    li      s1, 2
    mul     s3,a4,s1
    mv      s4, s3
    j       .L4_0
.L4_0:
    sb      s2,23(sp)
    sw      s3,12(sp)
    sw      s4,16(sp)
    sw      a0,52(sp)
    sw      a1,48(sp)
    sw      a2,40(sp)
    sw      a3,44(sp)
    sw      a4,32(sp)
    sb      a5,39(sp)
    sw      a6,24(sp)
    sb      a7,31(sp)
    li      a0, 0
    call    get_one
    sw      a0,8(sp)
    li      a1, 1
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_40
    j       .branch_false_40
.branch_true_40:
    lw      a1,16(sp)
    li      a3, 2
    mul     a4,a1,a3
    mv      a5, a4
    sw      a1,16(sp)
    sw      a4,0(sp)
    sw      a5,44(sp)
    j       .branch_false_40
.branch_false_40:
.branch_false_35:
.branch_false_31:
    sw      a4,32(sp)
    sb      a7,31(sp)
    sb      a5,39(sp)
    j       .while.head_26
.while.exit_26:
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a3,44(sp)
    sw      a0,52(sp)
    lw      a0,44(sp)
    addi    sp,sp,72
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    li      a0, 2
    sw      a0,4(sp)
    lw      a0,4(sp)
    lw      a1,4(sp)
    call    deepWhileBr
    sw      a0,0(sp)
    mv      a1, a0
    sw      a0,0(sp)
    sw      a1,4(sp)
    lw      a0,4(sp)
    call    putint
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
