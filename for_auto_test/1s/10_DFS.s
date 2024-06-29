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
    .globl quick_read
    .type quick_read,@function
quick_read:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
.L11_0:
    call    getch
    sw      a0,52(sp)
    mv      a1, a0
    li      a2, 0
    li      a3, 0
    j       .while.head_26
.while.head_26:
    li      a4, 57
    slt     a5,a4,a1
    li      a6, 48
    slt     a7,a1,a6
    or      s1,a7,a5
    bnez    s1, .while.body_26
    j       .while.exit_26
.while.body_26:
    li      a4, 45
    xor     a6,a1,a4
    seqz    a6, a6
    bnez    a6, .branch_true_29
    j       .branch_false_29
.branch_true_29:
    li      a3, 1
    j       .branch_false_29
.branch_false_29:
.L12_0:
    sb      s1,37(sp)
    sw      a0,52(sp)
    sw      a1,48(sp)
    sw      a2,44(sp)
    sw      a3,40(sp)
    sb      a5,39(sp)
    sb      a6,36(sp)
    sb      a7,38(sp)
    call    getch
    sw      a0,32(sp)
    mv      a1, a0
    sw      a0,32(sp)
    lw      a0,52(sp)
    lw      a2,44(sp)
    lw      a3,40(sp)
    j       .while.head_26
.while.exit_26:
    li      a4, 57
    slt     a6,a4,a1
    xori    a6,a6,1
    li      s2, 48
    slt     s3,a1,s2
    xori    s3,s3,1
    and     s4,s3,a6
    bnez    s4, .while.body_33
    j       .while.exit_33
.while.body_33:
    li      a4, 10
    mul     s2,a2,a4
    add     s5,s2,a1
    li      s6, 48
    sub     s7,s5,s6
    mv      a2, s7
    sb      s1,37(sp)
    sw      s2,24(sp)
    sb      s3,30(sp)
    sb      s4,29(sp)
    sw      s5,20(sp)
    sw      s7,16(sp)
    sw      a0,52(sp)
    sw      a1,48(sp)
    sw      a2,44(sp)
    sw      a3,40(sp)
    sb      a5,39(sp)
    sb      a6,31(sp)
    sb      a7,38(sp)
    call    getch
    sw      a0,12(sp)
    mv      a1, a0
    sw      a0,12(sp)
    lb      s1,37(sp)
    lb      a5,39(sp)
    lw      a0,52(sp)
    lb      a7,38(sp)
    lw      a2,44(sp)
    lw      a3,40(sp)
    j       .while.exit_26
.while.exit_33:
    li      a4, 0
    xor     s2,a3,a4
    snez    s2, s2
    bnez    s2, .branch_true_38
    j       .branch_false_38
.branch_true_38:
    li      a4, 0
    sub     s5,a4,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s5,4(sp)
    sw      a0,52(sp)
    lw      a0,4(sp)
    addi    sp,sp,72
    ret
.branch_false_38:
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a2,44(sp)
    sw      a0,52(sp)
    lw      a0,44(sp)
    addi    sp,sp,72
    ret
.L13_0:
    .globl add_edge
    .type add_edge,@function
add_edge:
    addi    sp,sp,-160
    sd      ra,152(sp)
    sd      s0,144(sp)
    addi    s0,sp,160
.L10_0:
    la      a2, cnt
    lw      a3,0(a2)
    li      a4, 0
    mul     a6,a5,a3
    add     a4,a4,a6
    slli a4,a4,2
    la      a7, to
    add     a4,a4,a7
    sw      a1,0(a4)
    la      s1, cnt
    lw      s2,0(s1)
    li      s3, 0
    mul     s4,a5,s2
    add     s3,s3,s4
    slli s3,s3,2
    la      s5, next
    add     s3,s3,s5
    li      s6, 0
    mul     s7,a5,a0
    add     s6,s6,s7
    slli s6,s6,2
    la      s8, head
    add     s6,s6,s8
    lw      s9,0(s6)
    sw      s9,0(s3)
    li      s10, 0
    mul     s11,a5,a0
    add     s10,s10,s11
    slli s10,s10,2
    la      a2, head
    add     s10,s10,a2
    la      a2, cnt
    lw      a5,0(a2)
    sw      a5,0(s10)
    la      a2, cnt
    lw      a6,0(a2)
    li      a2, 1
    add     a7,a6,a2
    la      a2, cnt
    sw      a7,0(a2)
    la      a2, cnt
    lw      s1,0(a2)
    li      a2, 0
    mul     s5,s4,s1
    add     a2,a2,s5
    slli a2,a2,2
    la      s4, to
    add     a2,a2,s4
    sw      a0,0(a2)
    la      s4, cnt
    lw      s5,0(s4)
    li      s4, 0
    mul     s8,s7,s5
    add     s4,s4,s8
    slli s4,s4,2
    la      s7, next
    add     s4,s4,s7
    li      s7, 0
    mul     s11,s8,a1
    add     s7,s7,s11
    slli s7,s7,2
    la      s8, head
    add     s7,s7,s8
    lw      s8,0(s7)
    sw      s8,0(s4)
    li      s11, 0
    sw      a0,140(sp)
    sd      a2,56(sp)
    mul     a2,a0,a1
    add     s11,s11,a2
    slli s11,s11,2
    la      a0, head
    add     s11,s11,a0
    la      a0, cnt
    lw      a2,0(a0)
    sw      a2,0(s11)
    la      a0, cnt
    sw      a1,136(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a2,12(sp)
    add     a2,a1,a0
    la      a0, cnt
    sw      a2,0(a0)
    ld      ra,152(sp)
    ld      s0,144(sp)
    addi    sp,sp,160
    ret
    .globl init
    .type init,@function
init:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L9_0:
    li      a0, 0
    j       .while.head_56
.while.head_56:
    li      a1, 1005
    slt     a2,a0,a1
    bnez    a2, .while.body_56
    j       .while.exit_56
.while.body_56:
    li      a1, 0
    mul     a4,a3,a0
    add     a1,a1,a4
    slli a1,a1,2
    la      a5, head
    add     a1,a1,a5
    li      a6, -1
    sw      a6,0(a1)
    add     a7,a0,a3
    mv      a0, a7
    sb      a2,19(sp)
    sw      a7,4(sp)
    sd      a1,8(sp)
    j       .while.head_56
.while.exit_56:
    ld      ra,32(sp)
    ld      s0,24(sp)
    addi    sp,sp,40
    ret
    .globl clear
    .type clear,@function
clear:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L8_0:
    li      a0, 1
    j       .while.head_64
.while.head_64:
    la      a1, n
    lw      a2,0(a1)
    slt     a3,a2,a0
    xori    a3,a3,1
    bnez    a3, .while.body_64
    j       .while.exit_64
.while.body_64:
    li      a1, 0
    mul     a5,a4,a0
    add     a1,a1,a5
    slli a1,a1,2
    la      a6, vis
    add     a1,a1,a6
    li      a7, 0
    sw      a7,0(a1)
    add     s1,a0,a4
    mv      a0, s1
    sd      a1,8(sp)
    sb      a3,23(sp)
    sw      s1,4(sp)
    sw      a2,24(sp)
    j       .while.head_64
.while.exit_64:
    ld      ra,40(sp)
    ld      s0,32(sp)
    addi    sp,sp,48
    ret
    .globl same
    .type same,@function
same:
    addi    sp,sp,-120
    sd      ra,112(sp)
    sd      s0,104(sp)
    addi    s0,sp,120
.L3_0:
    li      a2, 0
    mul     a4,a3,a0
    add     a2,a2,a4
    slli a2,a2,2
    la      a5, vis
    add     a2,a2,a5
    sw      a3,0(a2)
    j       .L4_0
.L4_0:
    xor     a3,a0,a1
    seqz    a3, a3
    bnez    a3, .branch_true_73
    j       .branch_false_73
.branch_true_73:
    ld      ra,112(sp)
    ld      s0,104(sp)
    sw      a0,100(sp)
    li      a0, 1
    addi    sp,sp,120
    ret
.branch_false_73:
.L5_0:
    li      a4, 0
    mul     a6,a5,a0
    add     a4,a4,a6
    slli a4,a4,2
    la      a7, head
    add     a4,a4,a7
    lw      s1,0(a4)
    mv      s2, s1
    j       .while.head_77
.while.head_77:
    li      a5, -1
    xor     a6,s2,a5
    snez    a6, a6
    bnez    a6, .while.body_77
    j       .while.exit_77
.while.body_77:
    li      a5, 0
    mul     s3,a7,s2
    add     a5,a5,s3
    slli a5,a5,2
    la      s4, to
    add     a5,a5,s4
    lw      s5,0(a5)
    mv      s6, s5
    j       .L6_0
.L6_0:
    sw      s1,68(sp)
    sw      s2,64(sp)
    sw      s5,44(sp)
    sw      s6,40(sp)
    sw      a0,100(sp)
    sw      a1,96(sp)
    sd      a2,88(sp)
    sb      a3,87(sp)
    sd      a4,72(sp)
    sd      a5,48(sp)
    sb      a6,63(sp)
    lw      a0,40(sp)
    lw      a1,96(sp)
    call    same
    sw      a0,36(sp)
    li      a1, 0
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    la      a5, vis
    add     a1,a1,a5
    lw      a6,0(a1)
    li      a7, 0
    xor     s1,a6,a7
    snez    s1, s1
    seqz    s2, s1
    xor     s3,a0,a7
    snez    s3, s3
    and     s4,s2,s3
    bnez    s4, .branch_true_81
    j       .branch_false_81
.branch_true_81:
    ld      ra,112(sp)
    ld      s0,104(sp)
    sw      a0,36(sp)
    li      a0, 1
    addi    sp,sp,120
    ret
.branch_false_81:
.L7_0:
    li      a2, 0
    mul     a7,a4,a5
    add     a2,a2,a7
    slli a2,a2,2
    la      s5, next
    add     a2,a2,s5
    lw      s6,0(a2)
    mv      a5, s6
    sw      a5,64(sp)
    sd      a1,24(sp)
    sd      a2,8(sp)
    sb      s1,19(sp)
    sw      a3,40(sp)
    sb      s4,16(sp)
    sw      a0,36(sp)
    sw      s6,4(sp)
    sw      a6,20(sp)
    sb      s2,18(sp)
    sb      s3,17(sp)
    lw      a1,96(sp)
    ld      a2,88(sp)
    lw      s1,68(sp)
    lb      a3,87(sp)
    lw      a0,100(sp)
    ld      a4,72(sp)
    lw      s2,64(sp)
    j       .while.head_77
.while.exit_77:
    ld      ra,112(sp)
    ld      s0,104(sp)
    sw      a0,100(sp)
    li      a0, 0
    addi    sp,sp,120
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
.L0_0:
    call    quick_read
    sw      a0,76(sp)
    la      a1, n
    sw      a0,0(a1)
    sw      a0,76(sp)
    call    quick_read
    sw      a0,72(sp)
    la      a1, m
    sw      a0,0(a1)
    sw      a0,72(sp)
    call    init
    j       .while.head_91
.while.head_91:
    la      a0, m
    lw      a1,0(a0)
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
    bnez    a3, .while.body_91
    j       .while.exit_91
.while.body_91:
    sw      a1,68(sp)
    sb      a3,67(sp)
    call    getch
    sw      a0,60(sp)
    mv      a1, a0
    j       .while.head_95
.while.head_95:
    li      a2, 85
    xor     a3,a1,a2
    snez    a3, a3
    li      a4, 81
    xor     a5,a1,a4
    snez    a5, a5
    and     a6,a5,a3
    bnez    a6, .while.body_95
    j       .while.exit_95
.while.body_95:
    sw      a0,60(sp)
    sw      a1,56(sp)
    sb      a3,55(sp)
    sb      a5,54(sp)
    sb      a6,53(sp)
    call    getch
    sw      a0,48(sp)
    mv      a1, a0
    sw      a0,48(sp)
    lw      a0,60(sp)
    j       .while.head_95
.while.exit_95:
    li      a2, 81
    xor     a4,a1,a2
    seqz    a4, a4
    bnez    a4, .branch_true_99
    j       .branch_false_99
.branch_true_99:
    sw      a0,60(sp)
    sw      a1,56(sp)
    sb      a3,55(sp)
    sb      a4,47(sp)
    sb      a5,54(sp)
    sb      a6,53(sp)
    call    quick_read
    sw      a0,40(sp)
    mv      a1, a0
    sw      a0,40(sp)
    sw      a1,36(sp)
    call    quick_read
    sw      a0,32(sp)
    mv      a1, a0
    sw      a0,32(sp)
    sw      a1,28(sp)
    call    clear
    lw      a0,36(sp)
    lw      a1,28(sp)
    call    same
    sw      a0,24(sp)
    sw      a0,24(sp)
    lw      a0,24(sp)
    call    putint
    li      a0, 10
    call    putch
    j       .L1_0
.branch_false_99:
    sw      a0,60(sp)
    sw      a1,56(sp)
    sb      a3,55(sp)
    sb      a4,47(sp)
    sb      a5,54(sp)
    sb      a6,53(sp)
    call    quick_read
    sw      a0,12(sp)
    mv      a1, a0
    sw      a0,12(sp)
    sw      a1,8(sp)
    call    quick_read
    sw      a0,4(sp)
    mv      a1, a0
    sw      a0,4(sp)
    sw      a1,0(sp)
    lw      a0,8(sp)
    lw      a1,0(sp)
    call    add_edge
    j       .L1_0
.L1_0:
.L2_0:
    la      a0, m
    lw      a1,0(a0)
    li      a2, 1
    sub     a3,a1,a2
    la      a4, m
    sw      a3,0(a4)
    sw      a1,20(sp)
    sw      a3,16(sp)
    j       .while.head_91
.while.exit_91:
    ld      ra,88(sp)
    ld      s0,80(sp)
    li      a0, 0
    addi    sp,sp,96
    ret
.section ___var
    .data
    .align 4
    .globl vis
    .type vis,@object
vis:
    .zero 4020
    .align 4
    .globl cnt
    .type cnt,@object
cnt:
    .word 0
    .align 4
    .globl head
    .type head,@object
head:
    .zero 4020
    .align 4
    .globl next
    .type next,@object
next:
    .zero 20020
    .align 4
    .globl to
    .type to,@object
to:
    .zero 20020
    .align 4
    .globl maxm
    .type maxm,@object
maxm:
    .word 5005
    .align 4
    .globl maxn
    .type maxn,@object
maxn:
    .word 1005
    .align 4
    .globl m
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
