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
    .globl bubblesort
    .type bubblesort,@function
bubblesort:
    addi    sp,sp,-160
    sd      ra,152(sp)
    sd      s0,144(sp)
    addi    s0,sp,160
.L1_0:
    li      a1, 0
    j       .while.head_24
.while.head_24:
    la      a2, n
    lw      a3,0(a2)
    li      a4, 1
    sub     a5,a3,a4
    slt     a6,a1,a5
    bnez    a6, .while.body_24
    j       .while.exit_24
.while.body_24:
    li      a2, 0
    j       .while.head_28
.while.head_28:
    la      a4, n
    lw      a7,0(a4)
    sub     s1,a7,a1
    li      s2, 1
    sub     s3,s1,s2
    slt     s4,a2,s3
    bnez    s4, .while.body_28
    j       .while.exit_28
.while.body_28:
    li      a4, 1
    add     s2,a2,a4
    li      s5, 0
    mul     s6,a4,s2
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,a0
    lw      s7,0(s5)
    li      s8, 0
    mul     s9,a4,a2
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,a0
    lw      s10,0(s8)
    slt     s11,s7,s10
    bnez    s11, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    li      a4, 1
    add     s6,a2,a4
    li      s9, 0
    sd      a0,136(sp)
    mul     a0,a4,s6
    add     s9,s9,a0
    slli s9,s9,2
    ld      a0,136(sp)
    add     s9,s9,a0
    lw      a4,0(s9)
    sd      a0,136(sp)
    mv      a0, a4
    sw      a0,60(sp)
    li      a0, 1
    sw      a1,132(sp)
    add     a1,a2,a0
    li      a0, 0
    sw      a1,40(sp)
    li      a1, 1
    sw      a2,128(sp)
    lw      a2,40(sp)
    sw      a3,124(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,136(sp)
    add     a0,a0,a1
    li      a3, 0
    sd      a0,32(sp)
    li      a0, 1
    sd      a1,136(sp)
    lw      a1,128(sp)
    sw      a2,40(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,136(sp)
    add     a3,a3,a0
    lw      a2,0(a3)
    sd      a0,136(sp)
    ld      a0,32(sp)
    sw      a2,0(a0)
    sd      a0,32(sp)
    li      a0, 0
    sw      a1,128(sp)
    li      a1, 1
    sw      a2,20(sp)
    lw      a2,128(sp)
    sd      a3,24(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,136(sp)
    add     a0,a0,a1
    lw      a3,60(sp)
    sw      a3,0(a0)
    sw      a4,44(sp)
    sd      a1,136(sp)
    sd      a0,8(sp)
    sd      s9,48(sp)
    sw      a3,60(sp)
    sw      s6,56(sp)
    lw      a1,132(sp)
    ld      a0,136(sp)
    lw      a3,124(sp)
    j       .branch_false_31
.branch_false_31:
.L2_0:
    li      a4, 1
    add     s6,a2,a4
    mv      a2, s6
    sw      s1,108(sp)
    sw      s3,104(sp)
    sw      s10,68(sp)
    sb      s11,67(sp)
    sd      s8,72(sp)
    sw      s2,96(sp)
    sd      s5,88(sp)
    sw      s6,4(sp)
    sw      s7,84(sp)
    sb      s4,103(sp)
    sw      a7,112(sp)
    j       .while.head_28
.while.exit_28:
    li      a4, 1
    add     s2,a1,a4
    mv      a1, s2
    sw      s1,108(sp)
    sw      s3,104(sp)
    sw      s2,0(sp)
    sw      a3,124(sp)
    sw      a5,120(sp)
    sb      s4,103(sp)
    sw      a2,128(sp)
    sb      a6,119(sp)
    sw      a7,112(sp)
    j       .while.head_24
.while.exit_24:
    ld      ra,152(sp)
    ld      s0,144(sp)
    sd      a0,136(sp)
    li      a0, 0
    addi    sp,sp,160
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
    mul     s6,a3,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,128
    li      s7, 9
    sw      s7,0(s4)
    li      s8, 0
    mul     s9,a3,s3
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,128
    sw      s5,0(s8)
    li      s10, 0
    mul     s11,a3,a6
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,128
    sw      a4,0(s10)
    li      a0, 0
    li      a1, 5
    mul     a4,a3,a1
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,128
    sw      a3,0(a0)
    li      a1, 0
    li      a4, 6
    mul     a5,a3,a4
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,128
    sw      a4,0(a1)
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
    call    bubblesort
    sw      a0,28(sp)
    mv      a1, a0
    j       .while.head_57
.while.head_57:
    la      a2, n
    lw      a3,0(a2)
    slt     a4,a1,a3
    bnez    a4, .while.body_57
    j       .while.exit_57
.while.body_57:
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
    j       .while.head_57
.while.exit_57:
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
