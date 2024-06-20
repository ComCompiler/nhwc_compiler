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
    .globl bubblesort
    .type bubblesort,@function
bubblesort:
    addi    sp,sp,-264
    sd      ra,256(sp)
    sd      s0,240(sp)
    addi    s0,sp,264
.L1_0:
    li      a1, 0
    mv      a2, a1
    j       .while.head_24
.while.head_24:
    la      a3, n
    lw      a4,0(a3)
    mv      a5, a5
    li      a6, 1
    sub     a7,a5,a6
    slt     s1,a2,a7
    bnez    s1, .while.body_24
    j       .while.exit_24
.while.body_24:
    mv      s2, a1
    j       .while.head_28
.while.head_28:
    sub     s3,a2,a6
    la      s4, n
    lw      s5,0(s4)
    mv      s6, s6
    sub     s7,s6,s3
    slt     s8,s2,s7
    bnez    s8, .while.body_28
    j       .while.exit_28
.while.body_28:
    add     s9,s2,a6
    li      s10, 0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
    li      s11, 0
    add     s11,s11,a0
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
    mv      a1, a1
    mv      a3, a3
    slt     a4,a3,a1
    bnez    a4, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    add     s4,s2,a6
    li      a6, 0
    li      s5, 1
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
    mv      s5, s5
    sd      a0,224(sp)
    mv      a0, s5
    sw      a0,112(sp)
    li      a0, 1
    sw      a1,120(sp)
    add     a1,s2,a0
    li      a0, 0
    sw      a1,80(sp)
    li      a1, 1
    sw      a2,216(sp)
    mv      a2, a2
    sw      a3,144(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,64(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,48(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,64(sp)
    li      a0, 0
    sw      a1,40(sp)
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    j       .branch_false_31
.branch_false_31:
.L2_0:
    sd      a0,24(sp)
    li      a0, 1
    sw      a1,112(sp)
    add     a1,s2,a0
    j       .while.head_28
.while.exit_28:
    mv      a0, a0
    sw      a1,16(sp)
    li      a1, 1
    sw      a2,80(sp)
    add     a2,a0,a1
    j       .while.head_24
.while.exit_24:
    ld      ra,256(sp)
    ld      s0,240(sp)
    li      a0, 0
    addi    sp,sp,264
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-288
    sd      ra,280(sp)
    sd      s0,264(sp)
    addi    s0,sp,288
.L0_0:
    la      a1, n
    sw      a0,216(sp)
    li      a0, 10
    sd      a0,0(a1)
    li      a0, 0
    li      a1, 1
    sw      a2,8(sp)
    li      a2, 0
    sd      a3,224(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 4
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 1
    sd      a0,208(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,192(sp)
    li      a1, 2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 9
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,176(sp)
    li      a0, 3
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 2
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,160(sp)
    li      a1, 4
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,144(sp)
    li      a0, 5
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a2,0(a1)
    li      a0, 0
    sd      a1,128(sp)
    li      a1, 6
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,112(sp)
    li      a0, 7
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 5
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,96(sp)
    li      a1, 8
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,80(sp)
    li      a0, 9
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 8
    sd      a0,0(a1)
    sb      s1,191(sp)
    sw      s2,208(sp)
    sw      s3,184(sp)
    sw      s4,108(sp)
    sw      s5,88(sp)
    sw      s6,180(sp)
    sw      s7,172(sp)
    sb      s8,171(sp)
    sw      s9,167(sp)
    sd      s10,152(sp)
    sd      s11,128(sp)
    sw      a3,256(sp)
    mv      a0, a0
    call    bubblesort
    sw      a0,48(sp)
    mv      a3, a0
    j       .while.head_57
.while.head_57:
    la      s1, n
    lw      s2,0(s1)
    mv      s3, s3
    slt     s4,a3,s3
    bnez    s4, .while.body_57
    j       .while.exit_57
.while.body_57:
    li      s5, 0
    mul     s6,a2,a3
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    mv      s7, s7
    mv      s8, s7
    sw      s3,40(sp)
    sb      s4,39(sp)
    sd      s5,24(sp)
    sw      s6,256(sp)
    sw      s7,16(sp)
    sw      s8,35(sp)
    sw      a0,48(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    mv      s1, a0
    sw      s1,35(sp)
    mv      a0, a0
    call    putch
    add     a0,a3,a2
    j       .while.head_57
.while.exit_57:
    ld      ra,280(sp)
    ld      s0,264(sp)
    li      a0, 0
    addi    sp,sp,288
    ret
.section        .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
