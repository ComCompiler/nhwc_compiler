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
    slt     a5,a1,a4
    bnez    a5, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a6, 0
    li      a7, 1
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
    mv      s2, s1
    sub     s3,a1,a7
    mv      s4, s3
    j       .while.head_30
.while.head_30:
    li      s5, 0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
    slt     s7,s2,s6
    li      s8, -1
    slt     s9,s8,s4
    and     s10,s9,s7
    bnez    s10, .while.body_30
    j       .while.exit_30
.while.body_30:
    add     s11,s4,a7
    li      a2, 0
    add     a2,a2,a0
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
    li      a3, 0
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
    sd      a7,0(a2)
    li      s8, 1
    sd      a0,112(sp)
    sub     a0,s4,s8
    j       .while.head_30
.while.exit_30:
    sw      a0,24(sp)
    add     a0,s4,s8
    li      s8, 0
    sw      a0,20(sp)
    li      a0, 1
    sw      a1,108(sp)
    sd      a2,40(sp)
    mul     a2,a0,a1
    add     s8,s8,a2
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
    sd      s2,0(s8)
    sw      a1,20(sp)
    li      a1, 1
    sd      a2,112(sp)
    add     a2,a0,a1
    j       .while.head_23
.while.exit_23:
    ld      ra,128(sp)
    ld      s0,120(sp)
    li      a0, 0
    addi    sp,sp,136
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-176
    sd      ra,168(sp)
    sd      s0,160(sp)
    addi    s0,sp,176
.L0_0:
    la      a0, n
    li      a1, 10
    sd      a1,0(a0)
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    li      a6, 4
    sd      a6,0(a2)
    li      a7, 0
    li      s1, 1
    add     a7,a7,a5
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    li      s2, 3
    sd      s2,0(a7)
    li      s3, 0
    li      s4, 2
    add     s3,s3,a5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s5, 9
    sd      s5,0(s3)
    li      s6, 0
    add     s6,s6,a5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    sd      s4,0(s6)
    li      s7, 0
    add     s7,s7,a5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    sd      a4,0(s7)
    li      s8, 0
    li      s9, 5
    add     s8,s8,a5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    sd      a3,0(s8)
    li      s10, 0
    li      s11, 6
    add     s10,s10,a5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    sd      s11,0(s10)
    li      a0, 0
    li      a1, 7
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s9,0(a0)
    li      a1, 0
    li      a4, 8
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a3, 7
    sd      a3,0(a1)
    li      a3, 0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
    sd      a4,0(a3)
    sd      s3,96(sp)
    sd      s6,88(sp)
    sd      s7,80(sp)
    sd      s8,72(sp)
    sd      s10,64(sp)
    sw      a5,156(sp)
    sd      a0,56(sp)
    call    insertsort
    sw      a0,32(sp)
    mv      a5, a0
    j       .while.head_54
.while.head_54:
    la      s1, n
    lw      s2,0(s1)
    slt     s4,a5,s3
    bnez    s4, .while.body_54
    j       .while.exit_54
.while.body_54:
    li      s5, 0
    li      s6, 1
    mul     s7,s6,a5
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    mv      s9, s8
    sw      s3,28(sp)
    sb      s4,27(sp)
    sd      s5,8(sp)
    sw      s7,156(sp)
    sw      s8,4(sp)
    sw      s9,20(sp)
    sw      a0,32(sp)
    call    putint
    li      a0, 10
    sw      a0,20(sp)
    call    putch
    li      a0, 1
    add     s1,a5,a0
    j       .while.head_54
.while.exit_54:
    ld      ra,168(sp)
    ld      s0,160(sp)
    li      a0, 0
    addi    sp,sp,176
    ret
.section        .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
