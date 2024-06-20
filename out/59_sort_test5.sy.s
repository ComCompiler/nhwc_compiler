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
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
    mv      a6, a5
    li      a7, 0
    add     a7,a7,a0
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
    li      s1, 0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
    sd      s2,0(a7)
    li      s3, 0
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
    sd      a6,0(s3)
    ld      ra,80(sp)
    ld      s0,72(sp)
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
    add     s2,a2,a6
    slt     s3,s1,s2
    bnez    s3, .while.body_33
    j       .while.exit_33
.while.body_33:
    add     s4,a6,s1
    li      s5, 0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
    li      s6, 0
    add     s6,s6,a0
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
    slt     s9,s7,s8
    slt     s10,s1,a2
    and     s11,s10,s9
    bnez    s11, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    add     a4,s1,a6
    j       .branch_false_36
.branch_false_36:
.L3_0:
    li      a6, 0
    sd      a0,128(sp)
    li      a0, 1
    sw      a1,124(sp)
    mul     a1,a0,s1
    add     a6,a6,a1
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
    li      a0, 0
    sd      a1,128(sp)
    li      a1, 1
    sw      a2,120(sp)
    mul     a2,a1,a3
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,24(sp)
    sd      a2,128(sp)
    slt     a2,a0,a1
    bnez    a2, .branch_true_39
    j       .branch_false_39
.branch_true_39:
    ld      ra,144(sp)
    ld      s0,136(sp)
    li      a0, 0
    addi    sp,sp,152
    ret
.branch_false_39:
    sw      s1,112(sp)
    sw      s2,100(sp)
    sb      s3,99(sp)
    sw      s4,92(sp)
    sd      s5,80(sp)
    sd      s6,64(sp)
    sw      s7,60(sp)
    sw      s8,76(sp)
    sb      s9,59(sp)
    sb      s10,58(sp)
    sb      s11,57(sp)
    sw      a0,36(sp)
    sw      a3,116(sp)
    sw      a1,20(sp)
    sb      a2,19(sp)
    call    swap
    sw      a0,12(sp)
    mv      a1, a0
    li      a3, 2
    mul     s1,a1,a3
    li      s2, 1
    add     s3,s1,s2
    j       .L4_0
.L4_0:
    j       .while.head_33
.while.exit_33:
    ld      ra,144(sp)
    ld      s0,136(sp)
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
    li      a7, -1
    slt     s1,a7,a6
    bnez    s1, .while.body_53
    j       .while.exit_53
.while.body_53:
    sub     s2,a1,a4
    mv      s3, s2
    sb      s1,43(sp)
    sw      s2,36(sp)
    sw      s3,52(sp)
    sd      a0,64(sp)
    sw      a6,56(sp)
    sw      a1,60(sp)
    call    heap_ajust
    sw      a0,32(sp)
    mv      a1, a0
    sub     a6,a2,a4
    j       .while.head_53
.while.exit_53:
    sub     s2,s1,a4
    j       .while.head_60
.while.head_60:
    li      s3, 0
    slt     s4,s3,a2
    bnez    s4, .while.body_60
    j       .while.exit_60
.while.body_60:
    li      s5, 0
    sw      s1,60(sp)
    sw      s2,24(sp)
    sb      s4,23(sp)
    sw      s5,16(sp)
    sw      a0,32(sp)
    sw      a1,52(sp)
    sw      a2,56(sp)
    call    swap
    sw      a0,12(sp)
    mv      a1, a0
    sub     s1,a2,a4
    sw      s1,8(sp)
    sw      a0,12(sp)
    sw      a1,52(sp)
    sw      a2,56(sp)
    call    heap_ajust
    sw      a0,4(sp)
    mv      a1, a0
    sub     s1,a2,a4
    j       .while.head_60
.while.exit_60:
    ld      ra,80(sp)
    ld      s0,72(sp)
    li      a0, 0
    addi    sp,sp,88
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
    li      a4, 0
    la      a6, n
    lw      s1,0(a6)
    sd      s3,96(sp)
    sd      s6,88(sp)
    sd      s7,80(sp)
    sd      s8,72(sp)
    sd      s10,64(sp)
    sw      a5,156(sp)
    sd      a0,56(sp)
    sd      a1,48(sp)
    call    heap_sort
    sw      a0,28(sp)
    j       .while.head_87
.while.head_87:
    la      a1, n
    lw      a5,0(a1)
    slt     s2,a4,s1
    bnez    s2, .while.body_87
    j       .while.exit_87
.while.body_87:
    li      s3, 0
    li      s4, 1
    mul     s5,s4,a4
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    mv      s7, s6
    sw      s1,24(sp)
    sb      s2,23(sp)
    sd      s3,8(sp)
    sw      s5,156(sp)
    sw      s6,4(sp)
    sw      s7,16(sp)
    sw      a0,28(sp)
    call    putint
    li      a0, 10
    sw      a0,16(sp)
    call    putch
    li      a0, 1
    add     s1,a4,a0
    j       .while.head_87
.while.exit_87:
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
