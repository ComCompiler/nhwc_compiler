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
    .globl insertsort
    .type insertsort,@function
insertsort:
    addi    sp,sp,-136
    sd      ra,128(sp)
    sd      s0,120(sp)
    addi    s0,sp,136
.L1_0:
    li      a1, 1
    j       .while.head_23
.while.head_23:
    la      a2, n
    lw      a3,0(a2)
    slt     a4,a1,a3
    bnez    a4, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a2, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,a0
    lw      a7,0(a2)
    mv      s1, a7
    sub     s2,a1,a5
    mv      s3, s2
    j       .while.head_30
.while.head_30:
    li      a5, 0
    li      a6, 1
    mul     s4,a6,s3
    add     a5,a5,s4
    slli a5,a5,2
    add     a5,a5,a0
    lw      s5,0(a5)
    slt     s6,s1,s5
    li      s7, -1
    slt     s8,s7,s3
    and     s9,s8,s6
    bnez    s9, .while.body_30
    j       .while.exit_30
.while.body_30:
    li      a6, 1
    add     s4,s3,a6
    li      s7, 0
    mul     s10,a6,s4
    add     s7,s7,s10
    slli s7,s7,2
    add     s7,s7,a0
    li      s11, 0
    mul     s10,a6,s3
    add     s11,s11,s10
    slli s11,s11,2
    add     s11,s11,a0
    lw      a6,0(s11)
    sw      a6,0(s7)
    li      s10, 1
    sd      a0,112(sp)
    sub     a0,s3,s10
    mv      s3, a0
    sb      s8,58(sp)
    sw      s4,52(sp)
    sw      a0,24(sp)
    sd      s7,40(sp)
    sw      s5,60(sp)
    sw      a6,28(sp)
    sb      s6,59(sp)
    sb      s9,57(sp)
    sd      s11,32(sp)
    sd      a5,64(sp)
    ld      a0,112(sp)
    j       .while.head_30
.while.exit_30:
    li      a6, 1
    add     s4,s3,a6
    li      s7, 0
    mul     s10,a6,s4
    add     s7,s7,s10
    slli s7,s7,2
    add     s7,s7,a0
    sw      s1,0(s7)
    add     s11,a1,a6
    mv      a1, s11
    sb      s8,58(sp)
    sw      s4,20(sp)
    sw      a3,104(sp)
    sw      s3,80(sp)
    sd      s7,8(sp)
    sw      s5,60(sp)
    sb      s6,59(sp)
    sw      a7,84(sp)
    sb      a4,103(sp)
    sb      s9,57(sp)
    sw      s11,4(sp)
    sw      s1,96(sp)
    sw      s2,76(sp)
    sd      a2,88(sp)
    sd      a5,64(sp)
    j       .while.head_23
.while.exit_23:
    ld      ra,128(sp)
    ld      s0,120(sp)
    sd      a0,112(sp)
    li      a0, 0
    addi    sp,sp,136
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-184
    sd      ra,176(sp)
    sd      s0,168(sp)
    addi    s0,sp,184
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
    addi    a2,a2,128
    li      a6, 4
    sw      a6,0(a2)
    li      a7, 0
    li      s1, 1
    mul     s2,a3,s1
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,128
    li      s3, 3
    sw      s3,0(a7)
    li      s4, 0
    li      s5, 2
    mul     s6,s1,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,128
    li      s7, 9
    sw      s7,0(s4)
    li      s8, 0
    mul     s9,s1,s3
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,128
    sw      s5,0(s8)
    li      s10, 0
    mul     s11,s1,a6
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,128
    sw      a4,0(s10)
    li      a0, 0
    li      a1, 5
    mul     a3,s1,a1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,128
    sw      s1,0(a0)
    li      a1, 0
    li      a3, 6
    mul     a4,s1,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,128
    sw      a3,0(a1)
    li      a3, 0
    li      a4, 7
    mul     a5,s1,a4
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,128
    li      a4, 5
    sw      a4,0(a3)
    li      a4, 0
    li      a5, 8
    mul     a6,s1,a5
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,128
    li      a5, 7
    sw      a5,0(a4)
    li      a5, 0
    mul     a6,s1,s7
    add     a5,a5,a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,128
    li      a6, 8
    sw      a6,0(a5)
    li      a6, 0
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,128
    sd      s4,104(sp)
    sd      s8,96(sp)
    sd      s10,88(sp)
    sd      a0,80(sp)
    sd      a1,72(sp)
    sd      a2,120(sp)
    sd      a3,64(sp)
    sd      a4,56(sp)
    sd      a5,48(sp)
    sd      a6,32(sp)
    sd      a7,112(sp)
    ld      a0,32(sp)
    call    insertsort
    sw      a0,28(sp)
    mv      a1, a0
    j       .while.head_54
.while.head_54:
    la      a2, n
    lw      a3,0(a2)
    slt     a4,a1,a3
    bnez    a4, .while.body_54
    j       .while.exit_54
.while.body_54:
    li      a2, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
    lw      a7,0(a2)
    mv      s1, a7
    sw      s1,16(sp)
    sw      a0,28(sp)
    sw      a1,44(sp)
    sd      a2,8(sp)
    sw      a3,24(sp)
    sb      a4,23(sp)
    sw      a7,4(sp)
    lw      a0,16(sp)
    call    putint
    li      a0, 10
    sw      a0,16(sp)
    lw      a0,16(sp)
    call    putch
    lw      a0,44(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,0(sp)
    sw      a0,44(sp)
    lw      a1,44(sp)
    lw      a0,28(sp)
    j       .while.head_54
.while.exit_54:
    ld      ra,176(sp)
    ld      s0,168(sp)
    sw      a0,28(sp)
    li      a0, 0
    addi    sp,sp,184
    ret
.section ___var
    .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
