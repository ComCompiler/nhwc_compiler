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
    .globl counting_sort
    .type counting_sort,@function
counting_sort:
    addi    sp,sp,-376
    sd      ra,368(sp)
    sd      s0,360(sp)
    addi    s0,sp,376
.L1_0:
    li      a3, 0
    li      a4, 0
    li      a5, 0
    j       .while.head_28
.while.head_28:
    li      a6, 10
    slt     a7,a3,a6
    bnez    a7, .while.body_28
    j       .while.exit_28
.while.body_28:
    li      a6, 0
    li      s1, 1
    mul     s2,s1,a3
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,300
    li      s3, 0
    sw      s3,0(a6)
    add     s4,a3,s1
    mv      a3, s4
    sd      a6,272(sp)
    sw      s4,268(sp)
    sb      a7,287(sp)
    j       .while.head_28
.while.exit_28:
    slt     a6,a4,a2
    bnez    a6, .while.body_33
    j       .while.exit_33
.while.body_33:
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a4
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,a0
    lw      s4,0(s1)
    li      s5, 0
    mul     s6,s2,s4
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,300
    li      s7, 0
    mul     s8,s2,a4
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,a0
    lw      s9,0(s7)
    li      s10, 0
    mul     s11,s2,s9
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,300
    lw      s2,0(s10)
    li      s3, 1
    add     s6,s2,s3
    sw      s6,0(s5)
    add     s8,a4,s3
    mv      a4, s8
    sd      s10,216(sp)
    sd      s1,256(sp)
    sb      a6,267(sp)
    sw      s4,252(sp)
    sw      s2,212(sp)
    sw      s8,204(sp)
    sd      s7,232(sp)
    sw      s9,228(sp)
    sw      s6,208(sp)
    sd      s5,240(sp)
    j       .while.exit_28
.while.exit_33:
    li      a3, 1
    j       .while.head_39
.while.head_39:
    li      s1, 10
    slt     s2,a3,s1
    bnez    s2, .while.body_39
    j       .while.exit_39
.while.body_39:
    li      s1, 0
    li      s3, 1
    mul     s4,s3,a3
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,300
    sub     s5,a3,s3
    li      s6, 0
    mul     s7,s3,s5
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,300
    lw      s8,0(s6)
    li      s9, 0
    mul     s10,s3,a3
    add     s9,s9,s10
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,300
    lw      s11,0(s9)
    add     s3,s11,s8
    sw      s3,0(s1)
    li      s4, 1
    add     s7,a3,s4
    mv      a3, s7
    sw      s11,156(sp)
    sd      s1,192(sp)
    sb      s2,203(sp)
    sw      s8,172(sp)
    sw      s7,148(sp)
    sd      s9,160(sp)
    sd      s6,176(sp)
    sw      s5,188(sp)
    sw      s3,152(sp)
    j       .while.head_39
.while.exit_39:
    mv      a5, a2
    j       .while.head_45
.while.head_45:
    li      s1, 0
    slt     s3,s1,a5
    bnez    s3, .while.body_45
    j       .while.exit_45
.while.body_45:
    li      s1, 1
    sub     s4,a5,s1
    li      s5, 0
    mul     s6,s1,s4
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,a0
    lw      s7,0(s5)
    li      s8, 0
    mul     s9,s1,s7
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,300
    sub     s10,a5,s1
    li      s11, 0
    mul     s6,s1,s10
    add     s11,s11,s6
    slli s11,s11,2
    add     s11,s11,a0
    lw      s1,0(s11)
    li      s6, 0
    li      s9, 1
    sd      a0,352(sp)
    mul     a0,s9,s1
    add     s6,s6,a0
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,300
    lw      a0,0(s6)
    sd      a1,344(sp)
    sub     a1,a0,s9
    sw      a1,0(s8)
    sw      a0,76(sp)
    sub     a0,a5,s9
    li      s9, 0
    sw      a0,68(sp)
    li      a0, 1
    sw      a1,72(sp)
    lw      a1,68(sp)
    sw      a2,340(sp)
    mul     a2,a0,a1
    add     s9,s9,a2
    slli s9,s9,2
    ld      a0,352(sp)
    add     s9,s9,a0
    lw      a2,0(s9)
    sd      a0,352(sp)
    li      a0, 0
    sw      a1,68(sp)
    li      a1, 1
    sw      a3,288(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,300
    lw      a1,0(a0)
    li      a3, 0
    sd      a0,40(sp)
    li      a0, 1
    sw      a2,52(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,344(sp)
    add     a3,a3,a0
    li      a2, 1
    sd      a0,344(sp)
    sub     a0,a5,a2
    li      a2, 0
    sw      a0,20(sp)
    li      a0, 1
    sw      a1,36(sp)
    lw      a1,20(sp)
    sd      a3,24(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    ld      a0,352(sp)
    add     a2,a2,a0
    lw      a3,0(a2)
    sd      a0,352(sp)
    ld      a0,24(sp)
    sw      a3,0(a0)
    sd      a0,24(sp)
    li      a0, 1
    sw      a1,20(sp)
    sub     a1,a5,a0
    mv      a5, a1
    sw      a3,4(sp)
    sd      s11,96(sp)
    sw      s10,108(sp)
    sw      s1,92(sp)
    sw      s4,140(sp)
    sd      s8,112(sp)
    sw      a1,0(sp)
    sw      s7,124(sp)
    sd      a2,8(sp)
    sd      s9,56(sp)
    sd      s6,80(sp)
    sd      s5,128(sp)
    sb      s3,147(sp)
    lw      a3,288(sp)
    ld      a1,344(sp)
    ld      a0,352(sp)
    lw      a2,340(sp)
    j       .while.head_45
.while.exit_45:
    ld      ra,368(sp)
    ld      s0,360(sp)
    sd      a0,352(sp)
    li      a0, 0
    addi    sp,sp,376
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-240
    sd      ra,232(sp)
    sd      s0,224(sp)
    addi    s0,sp,240
.L0_0:
    la      a0, n
    li      a1, 10
    sw      a1,0(a0)
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,184
    li      a6, 4
    sw      a6,0(a2)
    li      a7, 0
    li      s1, 1
    mul     s2,a3,s1
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,184
    li      s3, 3
    sw      s3,0(a7)
    li      s4, 0
    li      s5, 2
    mul     s6,a3,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,184
    li      s7, 9
    sw      s7,0(s4)
    li      s8, 0
    mul     s9,a3,s3
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,184
    sw      s5,0(s8)
    li      s10, 0
    mul     s11,a3,a6
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,184
    sw      a4,0(s10)
    li      a0, 0
    li      a1, 5
    mul     a4,a3,a1
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,184
    sw      a3,0(a0)
    li      a1, 0
    li      a4, 6
    mul     a5,a3,a4
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,184
    sw      a4,0(a1)
    li      a3, 0
    li      a4, 7
    mul     a5,s1,a4
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,184
    li      a4, 5
    sw      a4,0(a3)
    li      a4, 0
    li      a5, 8
    mul     a6,s1,a5
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,184
    li      a5, 7
    sw      a5,0(a4)
    li      a5, 0
    mul     a6,s1,s7
    add     a5,a5,a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,184
    li      a6, 8
    sw      a6,0(a5)
    li      a6, 0
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,184
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,60
    la      s3, n
    lw      s5,0(s3)
    sd      s1,48(sp)
    sd      s2,40(sp)
    sd      s4,160(sp)
    sw      s5,36(sp)
    sd      s8,152(sp)
    sd      s10,144(sp)
    sd      a0,136(sp)
    sd      a1,128(sp)
    sd      a2,176(sp)
    sd      a3,120(sp)
    sd      a4,112(sp)
    sd      a5,104(sp)
    sw      a6,100(sp)
    sd      a7,168(sp)
    ld      a0,48(sp)
    ld      a1,40(sp)
    lw      a2,36(sp)
    call    counting_sort
    sw      a0,32(sp)
    mv      a1, a0
    j       .while.head_70
.while.head_70:
    la      a2, n
    lw      a3,0(a2)
    slt     a4,a1,a3
    bnez    a4, .while.body_70
    j       .while.exit_70
.while.body_70:
    li      a2, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,60
    lw      a7,0(a2)
    mv      s1, a7
    sw      s1,20(sp)
    sw      a0,32(sp)
    sw      a1,100(sp)
    sd      a2,8(sp)
    sw      a3,28(sp)
    sb      a4,27(sp)
    sw      a7,4(sp)
    lw      a0,20(sp)
    call    putint
    li      a0, 10
    sw      a0,20(sp)
    lw      a0,20(sp)
    call    putch
    lw      a0,100(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,100(sp)
    sw      a2,0(sp)
    lw      a0,32(sp)
    lw      a1,100(sp)
    j       .while.head_70
.while.exit_70:
    ld      ra,232(sp)
    ld      s0,224(sp)
    sw      a0,32(sp)
    li      a0, 0
    addi    sp,sp,240
    ret
.section ___var
    .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
