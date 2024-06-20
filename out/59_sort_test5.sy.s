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
    addi    sp,sp,-152
    sd      ra,144(sp)
    sd      s0,128(sp)
    addi    s0,sp,152
.L5_0:
    li      a3, 0
    li      a4, 1
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
    mv      a5, a5
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
    mv      s2, s2
    sd      s2,0(a7)
    li      s3, 0
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
    sd      a6,0(s3)
    ld      ra,144(sp)
    ld      s0,128(sp)
    li      a0, 0
    addi    sp,sp,152
    ret
    .globl heap_ajust
    .type heap_ajust,@function
heap_ajust:
    addi    sp,sp,-216
    sd      ra,208(sp)
    sd      s0,192(sp)
    addi    s0,sp,216
.L2_0:
    mv      s4, a1
    li      s5, 2
    mul     s6,s4,s5
    add     s7,s6,a4
    mv      s8, s7
    j       .while.head_33
.while.head_33:
    add     s9,a2,a4
    slt     s10,s8,s9
    bnez    s10, .while.body_33
    j       .while.exit_33
.while.body_33:
    add     s11,a4,s8
    li      a4, 0
    li      s5, 1
    add     a4,a4,a0
    slli a4,a4,3
    add     a4,a4,sp
    add     a4,a4,a4
    li      s5, 0
    sd      a0,176(sp)
    li      a0, 1
    sw      a1,168(sp)
    mul     a1,a0,s8
    add     s5,s5,a1
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
    mv      a0, a0
    sd      a1,176(sp)
    mv      a1, a1
    sw      a2,160(sp)
    slt     a2,a0,a1
    sw      a0,72(sp)
    mv      a0, a0
    sw      a1,96(sp)
    slt     a1,s8,a0
    sw      a0,160(sp)
    and     a0,a1,a2
    bnez    a0, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    sb      a0,69(sp)
    li      a0, 1
    sb      a1,70(sp)
    add     a1,s8,a0
    j       .branch_false_36
.branch_false_36:
.L3_0:
    li      a0, 0
    sw      a1,65(sp)
    li      a1, 1
    sb      a2,71(sp)
    mul     a2,a1,s8
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,56(sp)
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,32(sp)
    mv      a1, a1
    sd      a2,176(sp)
    slt     a2,a1,a0
    bnez    a2, .branch_true_39
    j       .branch_false_39
.branch_true_39:
    ld      ra,208(sp)
    ld      s0,192(sp)
    li      a0, 0
    addi    sp,sp,216
    ret
.branch_false_39:
    sd      s1,32(sp)
    sw      s2,24(sp)
    sd      s3,8(sp)
    sw      s4,152(sp)
    sd      s5,80(sp)
    sw      s6,136(sp)
    sw      s7,128(sp)
    sw      s8,144(sp)
    sw      s9,120(sp)
    sb      s10,119(sp)
    sw      s11,115(sp)
    sw      a0,24(sp)
    mv      a0, a0
    sw      a1,48(sp)
    mv      a1, a1
    sb      a2,23(sp)
    mv      a2, a2
    call    swap
    sw      a0,16(sp)
    mv      a1, a0
    mv      a2, a2
    li      s1, 2
    mul     s2,a1,s1
    li      s3, 1
    add     s4,s2,s3
    j       .L4_0
.L4_0:
    j       .while.head_33
.while.exit_33:
    ld      ra,208(sp)
    ld      s0,192(sp)
    li      a0, 0
    addi    sp,sp,216
    ret
    .globl heap_sort
    .type heap_sort,@function
heap_sort:
    addi    sp,sp,-152
    sd      ra,144(sp)
    sd      s0,128(sp)
    addi    s0,sp,152
.L1_0:
    div     s5,a1,s1
    sub     s6,s5,s3
    mv      s7, s6
    j       .while.head_53
.while.head_53:
    li      s8, -1
    slt     s9,s8,s7
    bnez    s9, .while.body_53
    j       .while.exit_53
.while.body_53:
    sub     s10,a1,s3
    mv      s11, s10
    sw      s2,12(sp)
    sw      s4,4(sp)
    sw      s5,80(sp)
    sw      s6,72(sp)
    sw      s7,96(sp)
    sb      s9,71(sp)
    sw      s10,67(sp)
    sw      s11,88(sp)
    sd      a0,112(sp)
    mv      a0, a0
    sw      a1,104(sp)
    mv      a1, a1
    sw      a2,144(sp)
    mv      a2, a2
    call    heap_ajust
    sw      a0,60(sp)
    mv      a1, a0
    mv      a2, a2
    li      s1, 1
    sub     s2,a2,s1
    j       .while.head_53
.while.exit_53:
    mv      s3, s3
    sub     s4,s3,s1
    j       .while.head_60
.while.head_60:
    li      s5, 0
    slt     s6,s5,a2
    bnez    s6, .while.body_60
    j       .while.exit_60
.while.body_60:
    mv      s7, s5
    sw      s2,52(sp)
    sw      s3,104(sp)
    sw      s4,44(sp)
    sb      s6,43(sp)
    sw      s7,39(sp)
    sw      a0,60(sp)
    mv      a0, a0
    sw      a1,88(sp)
    mv      a1, a1
    sw      a2,96(sp)
    mv      a2, a2
    call    swap
    sw      a0,32(sp)
    mv      a1, a0
    mv      a2, a2
    li      s1, 1
    sub     s2,a2,s1
    sw      s2,24(sp)
    sw      a0,32(sp)
    mv      a0, a0
    sw      a1,88(sp)
    mv      a1, a1
    sw      a2,96(sp)
    mv      a2, a2
    call    heap_ajust
    sw      a0,16(sp)
    mv      a1, a0
    mv      a2, a2
    li      s1, 1
    sub     s2,a2,s1
    j       .while.head_60
.while.exit_60:
    ld      ra,144(sp)
    ld      s0,128(sp)
    li      a0, 0
    addi    sp,sp,152
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-296
    sd      ra,288(sp)
    sd      s0,272(sp)
    addi    s0,sp,296
.L0_0:
    la      s3, n
    li      s4, 10
    sd      s4,0(s3)
    li      s5, 0
    li      s6, 0
    mul     s7,s1,s6
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    li      s8, 4
    sd      s8,0(s5)
    li      s9, 0
    li      s10, 1
    add     s9,s9,s7
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    li      s11, 3
    sd      s11,0(s9)
    li      s1, 0
    li      s3, 2
    add     s1,s1,s7
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    li      s3, 9
    sd      s3,0(s1)
    li      s3, 0
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s4, 2
    sd      s4,0(s3)
    li      s4, 0
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    sd      s6,0(s4)
    li      s6, 0
    li      s8, 5
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    sd      s10,0(s6)
    li      s8, 0
    li      s11, 6
    add     s8,s8,s7
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    sd      s11,0(s8)
    li      s10, 0
    li      s11, 1
    sw      a0,16(sp)
    li      a0, 7
    add     s10,s10,s7
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    li      a0, 5
    sd      a0,0(s10)
    li      a0, 0
    sw      a1,88(sp)
    li      a1, 8
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,88(sp)
    li      a0, 9
    add     a1,a1,s7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 8
    sd      a0,0(a1)
    li      a0, 0
    mv      s11, a0
    la      a0, n
    sd      a1,72(sp)
    lw      a1,0(a0)
    sd      s1,184(sp)
    sw      s2,8(sp)
    sd      s3,168(sp)
    sd      s4,152(sp)
    sd      s5,216(sp)
    sd      s6,136(sp)
    sw      s7,264(sp)
    sd      s8,120(sp)
    sd      s9,200(sp)
    sd      s10,104(sp)
    sw      s11,64(sp)
    mv      a0, a0
    mv      a1, a1
    call    heap_sort
    sw      a0,48(sp)
    mv      a1, a0
    j       .while.head_87
.while.head_87:
    la      s1, n
    lw      s2,0(s1)
    mv      s3, s3
    slt     s4,a1,s3
    bnez    s4, .while.body_87
    j       .while.exit_87
.while.body_87:
    li      s5, 0
    li      s6, 1
    mul     s7,s6,a1
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    mv      s8, s8
    mv      s9, s8
    sw      s3,40(sp)
    sb      s4,39(sp)
    sd      s5,16(sp)
    sw      s7,264(sp)
    sw      s8,8(sp)
    sw      s9,32(sp)
    sw      a0,48(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    mv      s1, a0
    sw      s1,32(sp)
    mv      a0, a0
    call    putch
    li      a0, 1
    add     s1,a1,a0
    j       .while.head_87
.while.exit_87:
    ld      ra,288(sp)
    ld      s0,272(sp)
    li      a0, 0
    addi    sp,sp,296
    ret
.section        .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
