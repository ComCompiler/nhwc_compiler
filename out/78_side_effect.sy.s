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
    .globl inc_a
    .type inc_a,@function
inc_a:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L4_0:
    la      a0, a
    lw      a1,0(a0)
    mv      a2, a1
    li      a3, 1
    add     a4,a2,a3
    mv      a2, a4
    la      a5, a
    sw      a2,0(a5)
    la      a6, a
    lw      a7,0(a6)
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a7,0(sp)
    lw      a0,0(sp)
    addi    sp,sp,32
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-120
    sd      ra,112(sp)
    sd      s0,104(sp)
    addi    s0,sp,120
.L0_0:
    li      a0, 5
    j       .while.head_27
.while.head_27:
    li      a1, 0
    slt     a2,a0,a1
    xori    a2,a2,1
    bnez    a2, .while.body_27
    j       .while.exit_27
.while.body_27:
    sw      a0,100(sp)
    sb      a2,99(sp)
    call    inc_a
    sw      a0,92(sp)
    sw      a0,92(sp)
    call    inc_a
    sw      a0,88(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    lw      a3,92(sp)
    xor     a2,a3,a1
    snez    a2, a2
    lb      a4,86(sp)
    and     a5,a2,a4
    sw      a0,88(sp)
    sb      a2,87(sp)
    sw      a3,92(sp)
    sb      a4,86(sp)
    sb      a5,85(sp)
    call    inc_a
    sw      a0,80(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    lb      a3,85(sp)
    and     a4,a2,a3
    bnez    a4, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    la      a1, a
    lw      a5,0(a1)
    sw      a0,80(sp)
    sb      a2,79(sp)
    sb      a3,85(sp)
    sb      a4,78(sp)
    sw      a5,72(sp)
    lw      a0,72(sp)
    call    putint
    li      a0, 32
    call    putch
    la      a0, b
    lw      a1,0(a0)
    sw      a1,68(sp)
    lw      a0,68(sp)
    call    putint
    li      a0, 10
    call    putch
    lw      a0,80(sp)
    lb      a3,85(sp)
    lb      a2,79(sp)
    lb      a4,78(sp)
    j       .branch_false_30
.branch_false_30:
.L1_0:
    sw      a0,80(sp)
    sb      a2,79(sp)
    sb      a3,85(sp)
    sb      a4,78(sp)
    call    inc_a
    sw      a0,64(sp)
    sw      a0,64(sp)
    call    inc_a
    sw      a0,60(sp)
    lw      a1,64(sp)
    sub     a2,a0,a1
    li      a3, 1
    add     a4,a2,a3
    sw      a0,60(sp)
    sw      a1,64(sp)
    sw      a2,56(sp)
    sw      a4,52(sp)
    call    inc_a
    sw      a0,48(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    lw      a3,52(sp)
    xor     a2,a3,a1
    snez    a2, a2
    lb      a4,46(sp)
    and     a5,a2,a4
    sw      a0,48(sp)
    sb      a2,47(sp)
    sw      a3,52(sp)
    sb      a4,46(sp)
    sb      a5,45(sp)
    call    inc_a
    sw      a0,40(sp)
    li      a1, 14
    slt     a2,a0,a1
    lb      a3,45(sp)
    or      a4,a2,a3
    bnez    a4, .branch_true_37
    j       .branch_false_37
.branch_true_37:
    la      a1, a
    lw      a5,0(a1)
    sw      a0,40(sp)
    sb      a2,39(sp)
    sb      a3,45(sp)
    sb      a4,38(sp)
    sw      a5,32(sp)
    lw      a0,32(sp)
    call    putint
    li      a0, 10
    call    putch
    la      a0, b
    lw      a1,0(a0)
    li      a2, 2
    mul     a3,a1,a2
    la      a4, b
    sw      a3,0(a4)
    j       .L2_0
.branch_false_37:
    sw      a0,40(sp)
    sb      a2,39(sp)
    sb      a3,45(sp)
    sb      a4,38(sp)
    call    inc_a
    sw      a0,16(sp)
    sw      a0,16(sp)
    lw      a1,28(sp)
    lw      a3,24(sp)
    j       .L2_0
.L2_0:
.L3_0:
    lw      a0,100(sp)
    li      a2, 1
    sub     a4,a0,a2
    mv      a0, a4
    sw      a1,28(sp)
    sw      a3,24(sp)
    sw      a4,20(sp)
    j       .while.head_27
.while.exit_27:
    la      a1, a
    lw      a3,0(a1)
    sw      a0,100(sp)
    sb      a2,99(sp)
    sw      a3,12(sp)
    lw      a0,12(sp)
    call    putint
    li      a0, 32
    call    putch
    la      a0, b
    lw      a1,0(a0)
    sw      a1,8(sp)
    lw      a0,8(sp)
    call    putint
    li      a0, 10
    call    putch
    la      a0, a
    lw      a1,0(a0)
    ld      ra,112(sp)
    ld      s0,104(sp)
    sw      a1,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,120
    ret
.section ___var
    .data
    .align 4
    .globl b
    .type b,@object
b:
    .word 1
    .align 4
    .globl a
    .type a,@object
a:
    .word -1
