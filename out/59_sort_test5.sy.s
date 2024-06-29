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
    .globl swap
    .type swap,@function
swap:
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,72(sp)
    addi    s0,sp,88
.L5_0:
    li      a3, 0
    li      a4, 1
    mul     a5,a4,a1
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,a0
    lw      a6,0(a3)
    mv      a7, a6
    li      s1, 0
    mul     s2,a4,a1
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,a0
    li      s3, 0
    mul     s4,a4,a2
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,a0
    lw      s5,0(s3)
    sw      s5,0(s1)
    li      s6, 0
    mul     s7,a4,a2
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,a0
    sw      a7,0(s6)
    ld      ra,80(sp)
    ld      s0,72(sp)
    sd      a0,64(sp)
    li      a0, 0
    addi    sp,sp,88
    ret
    .globl heap_ajust
    .type heap_ajust,@function
heap_ajust:
    addi    sp,sp,-152
    sd      ra,144(sp)
    sd      s0,136(sp)
    addi    s0,sp,152
.L2_0:
    mv      a3, a1
    li      a4, 2
    mul     a5,a3,a4
    li      a6, 1
    add     a7,a5,a6
    mv      s1, a7
    j       .while.head_33
.while.head_33:
    li      a4, 1
    add     a6,a2,a4
    slt     s2,s1,a6
    bnez    s2, .while.body_33
    j       .while.exit_33
.while.body_33:
    li      a4, 1
    add     s3,s1,a4
    li      s4, 0
    mul     s5,a4,s3
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,a0
    lw      s6,0(s4)
    li      s7, 0
    mul     s8,a4,s1
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,a0
    lw      s9,0(s7)
    slt     s10,s9,s6
    slt     s11,s1,a2
    and     a4,s11,s10
    bnez    a4, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    li      s5, 1
    add     s8,s1,s5
    mv      s1, s8
    sw      s8,52(sp)
    j       .branch_false_36
.branch_false_36:
.L3_0:
    li      s5, 0
    li      s8, 1
    sd      a0,128(sp)
    mul     a0,s8,s1
    add     s5,s5,a0
    slli s5,s5,2
    ld      a0,128(sp)
    add     s5,s5,a0
    lw      s8,0(s5)
    sd      a0,128(sp)
    li      a0, 0
    sw      a1,124(sp)
    li      a1, 1
    sw      a2,120(sp)
    mul     a2,a1,a3
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,128(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    sd      a0,24(sp)
    slt     a0,s8,a2
    sd      s4,80(sp)
    bnez    a0, .branch_true_39
    j       .branch_false_39
.branch_true_39:
    ld      ra,144(sp)
    ld      s0,136(sp)
    sb      a0,19(sp)
    li      a0, 0
    addi    sp,sp,152
    ret
.branch_false_39:
    sw      s1,112(sp)
    sb      s2,99(sp)
    sw      s3,92(sp)
    sd      s5,40(sp)
    sw      s6,76(sp)
    sd      s7,64(sp)
    sw      s8,36(sp)
    sw      s9,60(sp)
    sb      s10,59(sp)
    sb      s11,58(sp)
    sb      a0,19(sp)
    sd      a1,128(sp)
    sw      a2,20(sp)
    sw      a3,116(sp)
    sb      a4,57(sp)
    sw      a5,108(sp)
    sw      a6,100(sp)
    sw      a7,104(sp)
    ld      a0,128(sp)
    lw      a1,116(sp)
    lw      a2,112(sp)
    call    swap
    sw      a0,12(sp)
    mv      a1, a0
    lw      a2,112(sp)
    mv      a1, a2
    li      a3, 2
    mul     a4,a1,a3
    li      a5, 1
    add     a6,a4,a5
    mv      a2, a6
    j       .L4_0
.L4_0:
    sw      a0,12(sp)
    sw      a1,116(sp)
    sw      a6,4(sp)
    sw      a2,112(sp)
    sw      a4,8(sp)
    ld      a0,128(sp)
    lw      a3,116(sp)
    lw      s1,112(sp)
    lw      a1,124(sp)
    lw      a5,108(sp)
    lw      a7,104(sp)
    lw      a2,120(sp)
    j       .while.head_33
.while.exit_33:
    ld      ra,144(sp)
    ld      s0,136(sp)
    sd      a0,128(sp)
    li      a0, 0
    addi    sp,sp,152
    ret
    .globl heap_sort
    .type heap_sort,@function
heap_sort:
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,72(sp)
    addi    s0,sp,88
.L1_0:
    li      a2, 2
    div     a3,a1,a2
    li      a4, 1
    sub     a5,a3,a4
    mv      a6, a5
    j       .while.head_53
.while.head_53:
    li      a2, -1
    slt     a4,a2,a6
    bnez    a4, .while.body_53
    j       .while.exit_53
.while.body_53:
    li      a2, 1
    sub     a7,a1,a2
    mv      s1, a7
    sw      s1,52(sp)
    sd      a0,64(sp)
    sw      a1,60(sp)
    sw      a3,48(sp)
    sb      a4,43(sp)
    sw      a5,44(sp)
    sw      a6,56(sp)
    sw      a7,36(sp)
    ld      a0,64(sp)
    lw      a1,56(sp)
    lw      a2,52(sp)
    call    heap_ajust
    sw      a0,32(sp)
    mv      a1, a0
    lw      a2,56(sp)
    li      a3, 1
    sub     a4,a2,a3
    mv      a2, a4
    sw      a1,52(sp)
    sw      a0,32(sp)
    sw      a4,28(sp)
    sw      a2,56(sp)
    lw      a6,56(sp)
    lw      a1,60(sp)
    ld      a0,64(sp)
    lw      a5,44(sp)
    lw      a3,48(sp)
    j       .while.head_53
.while.exit_53:
    li      a2, 1
    sub     a7,a1,a2
    mv      a6, a7
    j       .while.head_60
.while.head_60:
    li      a2, 0
    slt     s1,a2,a6
    bnez    s1, .while.body_60
    j       .while.exit_60
.while.body_60:
    li      a2, 0
    sb      s1,23(sp)
    sd      a0,64(sp)
    sw      a1,60(sp)
    sw      a2,16(sp)
    sw      a3,48(sp)
    sb      a4,43(sp)
    sw      a5,44(sp)
    sw      a6,56(sp)
    sw      a7,24(sp)
    ld      a0,64(sp)
    lw      a1,16(sp)
    lw      a2,56(sp)
    call    swap
    sw      a0,12(sp)
    mv      a1, a0
    lw      a2,56(sp)
    li      a3, 1
    sub     a4,a2,a3
    mv      a1, a4
    sw      a0,12(sp)
    sw      a1,52(sp)
    sw      a2,56(sp)
    sw      a4,8(sp)
    ld      a0,64(sp)
    lw      a1,16(sp)
    lw      a2,52(sp)
    call    heap_ajust
    sw      a0,4(sp)
    mv      a1, a0
    lw      a2,56(sp)
    li      a3, 1
    sub     a4,a2,a3
    mv      a2, a4
    sw      a1,52(sp)
    sw      a0,4(sp)
    sw      a4,0(sp)
    sw      a2,56(sp)
    lw      a6,56(sp)
    lw      a1,60(sp)
    ld      a0,64(sp)
    lb      a4,43(sp)
    lw      a5,44(sp)
    lw      a3,48(sp)
    lw      a7,24(sp)
    j       .while.head_60
.while.exit_60:
    ld      ra,80(sp)
    ld      s0,72(sp)
    sd      a0,64(sp)
    li      a0, 0
    addi    sp,sp,88
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-192
    sd      ra,184(sp)
    sd      s0,176(sp)
    addi    s0,sp,192
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
    addi    a2,a2,136
    li      a6, 4
    sw      a6,0(a2)
    li      a7, 0
    li      s1, 1
    mul     s2,a3,s1
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,136
    li      s3, 3
    sw      s3,0(a7)
    li      s4, 0
    li      s5, 2
    mul     s6,a3,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,136
    li      s7, 9
    sw      s7,0(s4)
    li      s8, 0
    mul     s9,a3,s3
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,136
    sw      s5,0(s8)
    li      s10, 0
    mul     s11,a3,a6
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,136
    sw      a4,0(s10)
    li      a0, 0
    li      a1, 5
    mul     a4,a3,a1
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,136
    sw      a3,0(a0)
    li      a1, 0
    li      a4, 6
    mul     a5,a3,a4
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,136
    sw      a4,0(a1)
    li      a3, 0
    li      a4, 7
    mul     a5,s1,a4
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,136
    li      a4, 5
    sw      a4,0(a3)
    li      a4, 0
    li      a5, 8
    mul     a6,s1,a5
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,136
    li      a5, 7
    sw      a5,0(a4)
    li      a5, 0
    mul     a6,s1,s7
    add     a5,a5,a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,136
    li      a6, 8
    sw      a6,0(a5)
    li      a6, 0
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,136
    la      s2, n
    lw      s3,0(s2)
    sd      s1,40(sp)
    sw      s3,36(sp)
    sd      s4,112(sp)
    sd      s8,104(sp)
    sd      s10,96(sp)
    sd      a0,88(sp)
    sd      a1,80(sp)
    sd      a2,128(sp)
    sd      a3,72(sp)
    sd      a4,64(sp)
    sd      a5,56(sp)
    sw      a6,52(sp)
    sd      a7,120(sp)
    ld      a0,40(sp)
    lw      a1,36(sp)
    call    heap_sort
    sw      a0,32(sp)
    mv      a1, a0
    j       .while.head_87
.while.head_87:
    la      a2, n
    lw      a3,0(a2)
    slt     a4,a1,a3
    bnez    a4, .while.body_87
    j       .while.exit_87
.while.body_87:
    li      a2, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
    lw      a7,0(a2)
    mv      s1, a7
    sw      s1,20(sp)
    sw      a0,32(sp)
    sw      a1,52(sp)
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
    lw      a0,52(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,0(sp)
    sw      a0,52(sp)
    lw      a0,32(sp)
    lw      a1,52(sp)
    j       .while.head_87
.while.exit_87:
    ld      ra,184(sp)
    ld      s0,176(sp)
    sw      a0,32(sp)
    li      a0, 0
    addi    sp,sp,192
    ret
.section ___var
    .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
