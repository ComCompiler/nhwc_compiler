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
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,48(sp)
    addi    s0,sp,72
.L15_0:
    la      a1, g
    lw      a2,0(a1)
    mv      a3, a3
    add     a4,a3,a0
    la      a5, g
    sd      a4,0(a5)
    la      a6, g
    lw      a7,0(a6)
    sw      a0,40(sp)
    mv      a0, a0
    call    putint
    la      a0, g
    lw      s1,0(a0)
    ld      ra,64(sp)
    ld      s0,48(sp)
    lw      a0,8(sp)
    addi    sp,sp,72
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,80(sp)
    addi    s0,sp,104
.L0_0:
    call    getint
    sw      a0,64(sp)
    mv      s1, a0
    j       .L1_0
.L1_0:
    sw      s1,72(sp)
    sw      a0,64(sp)
    mv      a0, a0
    call    func
    sw      a0,56(sp)
    mv      s1, s1
    li      s2, 10
    slt     s3,s2,s1
    li      s4, 0
    xor     s5,a0,s4
    sltiu   s5,s5,1
    xori    s5,s5,1
    and     s6,s3,s5
    bnez    s6, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    li      s7, 1
    j       .L2_0
.branch_false_28:
    j       .L2_0
.L2_0:
.L3_0:
    sw      s1,72(sp)
    sb      s3,55(sp)
    sb      s5,54(sp)
    sb      s6,53(sp)
    call    getint
    sw      a0,56(sp)
    sw      a0,49(sp)
    mv      s1, a0
    j       .L4_0
.L4_0:
    sw      s1,72(sp)
    sw      a0,49(sp)
    mv      a0, a0
    call    func
    sw      a0,44(sp)
    mv      s1, s1
    li      s2, 11
    slt     s3,s2,s1
    li      s4, 0
    xor     s5,a0,s4
    sltiu   s5,s5,1
    xori    s5,s5,1
    and     s6,s3,s5
    bnez    s6, .branch_true_33
    j       .branch_false_33
.branch_true_33:
    li      s7, 1
    j       .L5_0
.branch_false_33:
    j       .L5_0
.L5_0:
.L6_0:
    sw      s1,72(sp)
    sb      s3,43(sp)
    sb      s5,42(sp)
    sb      s6,41(sp)
    call    getint
    sw      a0,44(sp)
    sw      a0,36(sp)
    mv      s1, a0
    j       .L7_0
.L7_0:
    sw      s1,72(sp)
    sw      a0,36(sp)
    mv      a0, a0
    call    func
    sw      a0,32(sp)
    mv      s1, s1
    li      s2, 99
    slt     s3,s1,s2
    xori    s3,s3,1
    li      s4, 0
    xor     s5,a0,s4
    sltiu   s5,s5,1
    xori    s5,s5,1
    mv      s6, s6
    bnez    s6, .branch_true_38
    j       .branch_false_38
.branch_true_38:
    li      s7, 1
    j       .L8_0
.branch_false_38:
    j       .L8_0
.L8_0:
.L9_0:
    sw      s1,72(sp)
    sb      s3,31(sp)
    sb      s5,30(sp)
    sb      s6,29(sp)
    call    getint
    sw      a0,32(sp)
    sw      a0,25(sp)
    mv      s1, a0
    j       .L10_0
.L10_0:
    sw      s1,72(sp)
    sw      a0,25(sp)
    mv      a0, a0
    call    func
    sw      a0,20(sp)
    mv      s1, s1
    li      s2, 100
    slt     s3,s1,s2
    xori    s3,s3,1
    li      s4, 0
    xor     s5,a0,s4
    sltiu   s5,s5,1
    xori    s5,s5,1
    mv      s6, s6
    bnez    s6, .branch_true_43
    j       .branch_false_43
.branch_true_43:
    li      s7, 1
    j       .L11_0
.branch_false_43:
    j       .L11_0
.L11_0:
.L12_0:
    sw      s1,72(sp)
    sb      s3,19(sp)
    sb      s5,18(sp)
    sb      s6,17(sp)
    sw      a0,20(sp)
    li      a0, 100
    call    func
    sw      a0,12(sp)
    sw      a0,12(sp)
    li      a0, 99
    call    func
    sw      a0,8(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    xori    s3,s2,-1
    mv      s4, s4
    xor     s5,s4,s1
    sltiu   s5,s5,1
    xori    s5,s5,1
    and     s6,s3,s5
    bnez    s6, .branch_true_47
    j       .branch_false_47
.branch_true_47:
    li      s7, 1
    mv      s8, s7
    j       .L13_0
.branch_false_47:
    j       .L13_0
.L13_0:
.L14_0:
    ld      ra,96(sp)
    ld      s0,80(sp)
    li      a0, 0
    addi    sp,sp,104
    ret
.section        .data
    .align 4
    .globl g
    .type g,@object
g:
    .word 0
