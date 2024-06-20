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
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a3
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    li      s4, 0
    sd      s4,0(s1)
    add     s5,a3,s2
    j       .while.head_28
.while.head_33:
    slt     s6,a4,a2
    bnez    s6, .while.body_33
    j       .while.exit_33
.while.body_33:
    li      s7, 0
    add     s7,s7,a0
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
    li      s8, 0
    add     s8,s8,s3
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      s10, 0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
    li      s11, 0
    add     s11,s11,s3
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    li      s4, 1
    sd      a0,352(sp)
    add     a0,s2,s4
    sd      a0,0(s8)
    sw      a0,208(sp)
    add     a0,a4,s4
    j       .while.head_33
.while.exit_33:
    j       .while.head_39
.while.head_39:
    li      s4, 10
    sw      a0,204(sp)
    slt     a0,a3,s4
    bnez    a0, .while.body_39
    j       .while.exit_39
.while.body_39:
    li      s4, 0
    sb      a0,203(sp)
    li      a0, 1
    add     s4,s4,s3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    sd      a1,344(sp)
    sub     a1,a3,a0
    li      a0, 0
    sw      a1,188(sp)
    li      a1, 1
    sw      a2,340(sp)
    add     a0,a0,s3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,176(sp)
    li      a0, 1
    add     a1,a1,s3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,160(sp)
    sw      a2,188(sp)
    add     a2,a0,a1
    sd      a2,0(s4)
    sw      a0,156(sp)
    li      a0, 1
    sw      a1,172(sp)
    add     a1,a3,a0
    j       .while.head_39
.while.exit_39:
    j       .while.head_45
.while.head_45:
    sw      a0,340(sp)
    li      a0, 0
    sw      a1,148(sp)
    slt     a1,a0,a5
    bnez    a1, .while.body_45
    j       .while.exit_45
.while.body_45:
    li      a0, 1
    sb      a1,147(sp)
    sub     a1,a5,a0
    li      a0, 0
    sw      a1,140(sp)
    li      a1, 1
    sw      a2,152(sp)
    sw      a3,288(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,128(sp)
    li      a0, 1
    sw      a2,140(sp)
    add     a1,a1,s3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,112(sp)
    sub     a1,a5,a0
    li      a0, 0
    sw      a1,108(sp)
    li      a1, 1
    sw      a2,124(sp)
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,96(sp)
    li      a0, 1
    sw      a2,108(sp)
    add     a1,a1,s3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,80(sp)
    li      a1, 1
    sw      a2,92(sp)
    sub     a2,a0,a1
    sd      a2,0(a1)
    sw      a0,76(sp)
    li      a0, 1
    sd      a1,112(sp)
    sub     a1,a5,a0
    li      a0, 0
    sw      a1,68(sp)
    li      a1, 1
    sw      a2,72(sp)
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,56(sp)
    li      a0, 1
    sw      a2,68(sp)
    add     a1,a1,s3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,40(sp)
    li      a1, 1
    sw      a2,52(sp)
    sd      a3,352(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,24(sp)
    sub     a0,a5,a1
    li      a1, 0
    sw      a0,20(sp)
    li      a0, 1
    sw      a2,36(sp)
    sd      a3,344(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,8(sp)
    sd      a1,0(a0)
    sd      a0,24(sp)
    li      a0, 1
    sw      a1,4(sp)
    sub     a1,a5,a0
    j       .while.head_45
.while.exit_45:
    ld      ra,368(sp)
    ld      s0,360(sp)
    li      a0, 0
    addi    sp,sp,376
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-216
    sd      ra,208(sp)
    sd      s0,200(sp)
    addi    s0,sp,216
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
    sd      s1,0(s8)
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
    li      a3, 8
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
    li      a4, 8
    sd      a4,0(a3)
    li      a4, 0
    la      a6, n
    lw      s1,0(a6)
    sd      s3,136(sp)
    sd      s6,128(sp)
    sd      s7,120(sp)
    sd      s8,112(sp)
    sd      s10,104(sp)
    sw      a5,196(sp)
    sd      a0,96(sp)
    sd      a1,88(sp)
    sd      a2,152(sp)
    call    counting_sort
    sw      a0,28(sp)
    j       .while.head_70
.while.head_70:
    la      a1, n
    lw      a2,0(a1)
    slt     s1,a4,a5
    bnez    s1, .while.body_70
    j       .while.exit_70
.while.body_70:
    li      s2, 0
    li      s3, 1
    mul     s4,s3,a4
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    mv      s6, s5
    sb      s1,23(sp)
    sd      s2,8(sp)
    sw      s4,72(sp)
    sw      s5,4(sp)
    sw      s6,16(sp)
    sw      a0,28(sp)
    call    putint
    li      a0, 10
    sw      a0,16(sp)
    call    putch
    li      a0, 1
    add     s1,a4,a0
    j       .while.head_70
.while.exit_70:
    ld      ra,208(sp)
    ld      s0,200(sp)
    li      a0, 0
    addi    sp,sp,216
    ret
.section        .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
