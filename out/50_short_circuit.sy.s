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
    add     a4,a3,a0
    la      a5, g
    sd      a4,0(a5)
    la      a6, g
    lw      a7,0(a6)
    sw      a0,20(sp)
    call    putint
    la      a0, g
    lw      s1,0(a0)
    ld      ra,32(sp)
    ld      s0,24(sp)
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
    sw      a1,60(sp)
    sw      a0,56(sp)
    call    func
    sw      a0,52(sp)
    li      a2, 10
    slt     a3,a2,a1
    li      a4, 0
    xor     a5,a0,a4
    snez    a5, a5
    and     a6,a3,a5
    bnez    a6, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    j       .L2_0
.branch_false_28:
    j       .L2_0
.L2_0:
.L3_0:
    call    getint
    sw      a0,52(sp)
    sw      a0,44(sp)
    j       .L4_0
.L4_0:
    sw      a1,60(sp)
    sw      a0,44(sp)
    call    func
    sw      a0,40(sp)
    li      a7, 11
    slt     s1,a7,a1
    xor     s2,a0,a4
    snez    s2, s2
    and     s3,s1,s2
    bnez    s3, .branch_true_33
    j       .branch_false_33
.branch_true_33:
    j       .L5_0
.branch_false_33:
    j       .L5_0
.L5_0:
.L6_0:
    sb      s1,39(sp)
    sb      s2,38(sp)
    sb      s3,37(sp)
    call    getint
    sw      a0,40(sp)
    sw      a0,32(sp)
    j       .L7_0
.L7_0:
    sw      a1,60(sp)
    sw      a0,32(sp)
    call    func
    sw      a0,28(sp)
    li      s1, 99
    slt     s2,s1,a1
    xori    s2,s2,1
    xor     s3,a0,a4
    snez    s3, s3
    bnez    s4, .branch_true_38
    j       .branch_false_38
.branch_true_38:
    j       .L8_0
.branch_false_38:
    j       .L8_0
.L8_0:
.L9_0:
    sb      s2,27(sp)
    sb      s3,26(sp)
    sb      s4,25(sp)
    call    getint
    sw      a0,28(sp)
    sw      a0,20(sp)
    j       .L10_0
.L10_0:
    sw      a1,60(sp)
    sw      a0,20(sp)
    call    func
    sw      a0,16(sp)
    li      s1, 100
    slt     s2,s1,a1
    xori    s2,s2,1
    xor     s3,a0,a4
    snez    s3, s3
    bnez    s4, .branch_true_43
    j       .branch_false_43
.branch_true_43:
    j       .L11_0
.branch_false_43:
    j       .L11_0
.L11_0:
.L12_0:
    sb      s2,15(sp)
    sb      s3,14(sp)
    sb      s4,13(sp)
    sw      a0,16(sp)
    li      a0, 100
    call    func
    sw      a0,8(sp)
    sw      a0,8(sp)
    li      a0, 99
    call    func
    sw      a0,4(sp)
    xor     s1,a0,a4
    snez    s1, s1
    xori    s2,s1,-1
    xor     s4,s3,a4
    snez    s4, s4
    and     s5,s2,s4
    bnez    s5, .branch_true_47
    j       .branch_false_47
.branch_true_47:
    j       .L13_0
.branch_false_47:
    j       .L13_0
.L13_0:
.L14_0:
    ld      ra,72(sp)
    ld      s0,64(sp)
    li      a0, 0
    addi    sp,sp,80
    ret
.section        .data
    .align 4
    .globl g
    .type g,@object
g:
    .word 0
