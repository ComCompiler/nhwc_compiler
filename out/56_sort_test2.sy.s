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
    addi    sp,sp,-208
    sd      ra,200(sp)
    sd      s0,184(sp)
    addi    s0,sp,208
.L1_0:
    li      a1, 1
    mv      a2, a1
    j       .while.head_23
.while.head_23:
    la      a3, n
    lw      a4,0(a3)
    mv      a5, a5
    slt     a6,a2,a5
    bnez    a6, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a7, 0
    add     a7,a7,a0
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
    mv      s1, s1
    mv      s2, s1
    sub     s3,a2,a1
    mv      s4, s3
    j       .while.head_30
.while.head_30:
    li      s5, 0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
    mv      s6, s6
    slt     s7,s2,s6
    li      s8, -1
    slt     s9,s8,s4
    and     s10,s9,s7
    bnez    s10, .while.body_30
    j       .while.exit_30
.while.body_30:
    add     s11,s4,a1
    li      a1, 0
    li      a3, 1
    add     a1,a1,a0
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    li      a3, 0
    li      a4, 1
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
    mv      a4, a4
    sd      a4,0(a1)
    li      s8, 1
    sd      a0,168(sp)
    sub     a0,s4,s8
    j       .while.head_30
.while.exit_30:
    sw      a0,36(sp)
    add     a0,s4,s8
    li      s8, 0
    sw      a0,28(sp)
    li      a0, 1
    sd      a1,64(sp)
    mv      a1, a1
    sw      a2,160(sp)
    mul     a2,a0,a1
    add     s8,s8,a2
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
    sd      s2,0(s8)
    mv      a0, a0
    sw      a1,28(sp)
    li      a1, 1
    sd      a2,168(sp)
    add     a2,a0,a1
    j       .while.head_23
.while.exit_23:
    ld      ra,200(sp)
    ld      s0,184(sp)
    li      a0, 0
    addi    sp,sp,208
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
    sw      a0,160(sp)
    li      a0, 10
    sd      a0,0(a1)
    li      a0, 0
    li      a1, 1
    sw      a2,8(sp)
    li      a2, 0
    sd      a3,48(sp)
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
    sw      s1,120(sp)
    sw      s2,144(sp)
    sw      s3,108(sp)
    sw      s4,116(sp)
    sd      s5,96(sp)
    sw      s6,88(sp)
    sb      s7,87(sp)
    sd      s8,16(sp)
    sb      s9,86(sp)
    sb      s10,85(sp)
    sw      s11,80(sp)
    sw      a3,256(sp)
    mv      a0, a0
    call    insertsort
    sw      a0,48(sp)
    mv      a3, a0
    j       .while.head_54
.while.head_54:
    la      s1, n
    lw      s2,0(s1)
    mv      s3, s3
    slt     s4,a3,s3
    bnez    s4, .while.body_54
    j       .while.exit_54
.while.body_54:
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
    j       .while.head_54
.while.exit_54:
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
