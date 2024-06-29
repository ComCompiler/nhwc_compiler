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
    .globl func
    .type func,@function
func:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L15_0:
    la      a1, g
    lw      a2,0(a1)
    add     a3,a2,a0
    la      a4, g
    sw      a3,0(a4)
    la      a5, g
    lw      a6,0(a5)
    sw      a0,20(sp)
    sw      a2,16(sp)
    sw      a3,12(sp)
    sw      a6,8(sp)
    lw      a0,8(sp)
    call    putint
    la      a0, g
    lw      a1,0(a0)
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a1,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,40
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
.L0_0:
    call    getint
    sw      a0,56(sp)
    mv      a1, a0
    j       .L1_0
.L1_0:
    sw      a0,56(sp)
    sw      a1,60(sp)
    lw      a0,60(sp)
    call    func
    sw      a0,52(sp)
    lw      a1,60(sp)
    li      a2, 10
    slt     a3,a2,a1
    li      a4, 0
    xor     a5,a0,a4
    snez    a5, a5
    and     a6,a3,a5
    bnez    a6, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    li      a1, 1
    j       .L2_0
.branch_false_28:
    li      a1, 0
    j       .L2_0
.L2_0:
.L3_0:
    sw      a0,52(sp)
    sw      a1,60(sp)
    sb      a3,51(sp)
    sb      a5,50(sp)
    sb      a6,49(sp)
    call    getint
    sw      a0,44(sp)
    mv      a1, a0
    j       .L4_0
.L4_0:
    sw      a0,44(sp)
    sw      a1,60(sp)
    lw      a0,60(sp)
    call    func
    sw      a0,40(sp)
    lw      a1,60(sp)
    li      a2, 11
    slt     a3,a2,a1
    li      a4, 0
    xor     a5,a0,a4
    snez    a5, a5
    and     a6,a3,a5
    bnez    a6, .branch_true_33
    j       .branch_false_33
.branch_true_33:
    li      a1, 1
    j       .L5_0
.branch_false_33:
    li      a1, 0
    j       .L5_0
.L5_0:
.L6_0:
    sw      a0,40(sp)
    sw      a1,60(sp)
    sb      a3,39(sp)
    sb      a5,38(sp)
    sb      a6,37(sp)
    call    getint
    sw      a0,32(sp)
    mv      a1, a0
    j       .L7_0
.L7_0:
    sw      a0,32(sp)
    sw      a1,60(sp)
    lw      a0,60(sp)
    call    func
    sw      a0,28(sp)
    lw      a1,60(sp)
    li      a2, 99
    slt     a3,a2,a1
    xori    a3,a3,1
    li      a4, 0
    xor     a5,a0,a4
    snez    a5, a5
    or      a6,a3,a5
    bnez    a6, .branch_true_38
    j       .branch_false_38
.branch_true_38:
    li      a1, 1
    j       .L8_0
.branch_false_38:
    li      a1, 0
    j       .L8_0
.L8_0:
.L9_0:
    sw      a0,28(sp)
    sw      a1,60(sp)
    sb      a3,27(sp)
    sb      a5,26(sp)
    sb      a6,25(sp)
    call    getint
    sw      a0,20(sp)
    mv      a1, a0
    j       .L10_0
.L10_0:
    sw      a0,20(sp)
    sw      a1,60(sp)
    lw      a0,60(sp)
    call    func
    sw      a0,16(sp)
    lw      a1,60(sp)
    li      a2, 100
    slt     a3,a2,a1
    xori    a3,a3,1
    li      a4, 0
    xor     a5,a0,a4
    snez    a5, a5
    or      a6,a3,a5
    bnez    a6, .branch_true_43
    j       .branch_false_43
.branch_true_43:
    li      a1, 1
    j       .L11_0
.branch_false_43:
    li      a1, 0
    j       .L11_0
.L11_0:
.L12_0:
    sw      a0,16(sp)
    sw      a1,60(sp)
    sb      a3,15(sp)
    sb      a5,14(sp)
    sb      a6,13(sp)
    li      a0, 100
    call    func
    sw      a0,8(sp)
    sw      a0,8(sp)
    li      a0, 99
    call    func
    sw      a0,4(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    seqz    a3, a2
    lw      a4,8(sp)
    xor     a5,a4,a1
    snez    a5, a5
    and     a6,a3,a5
    bnez    a6, .branch_true_47
    j       .branch_false_47
.branch_true_47:
    li      a1, 1
    j       .L13_0
.branch_false_47:
    li      a1, 0
    j       .L13_0
.L13_0:
.L14_0:
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,80
    ret
.section ___var
    .data
    .align 4
    .globl g
    .type g,@object
g:
    .word 0
