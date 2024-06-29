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
.L9_0:
    call    getch
    sw      a0,52(sp)
    mv      a1, a0
    li      a2, 0
    li      a3, 0
    j       .while.head_24
.while.head_24:
    li      a4, 57
    slt     a5,a4,a1
    li      a6, 48
    slt     a7,a1,a6
    or      s1,a7,a5
    bnez    s1, .while.body_24
    j       .while.exit_24
.while.body_24:
    li      a4, 45
    xor     a6,a1,a4
    seqz    a6, a6
    bnez    a6, .branch_true_27
    j       .branch_false_27
.branch_true_27:
    li      a3, 1
    j       .branch_false_27
.branch_false_27:
.L10_0:
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
    j       .while.head_24
.while.exit_24:
    li      a4, 57
    slt     a6,a4,a1
    xori    a6,a6,1
    li      s2, 48
    slt     s3,a1,s2
    xori    s3,s3,1
    and     s4,s3,a6
    bnez    s4, .while.body_31
    j       .while.exit_31
.while.body_31:
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
    lb      a5,39(sp)
    lw      a0,52(sp)
    lb      s1,37(sp)
    lb      a7,38(sp)
    lw      a2,44(sp)
    lw      a3,40(sp)
    j       .while.exit_24
.while.exit_31:
    li      a4, 0
    xor     s2,a3,a4
    snez    s2, s2
    bnez    s2, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    li      a4, 0
    sub     s5,a4,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s5,4(sp)
    sw      a0,52(sp)
    lw      a0,4(sp)
    addi    sp,sp,72
    ret
.branch_false_36:
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a2,44(sp)
    sw      a0,52(sp)
    lw      a0,44(sp)
    addi    sp,sp,72
    ret
.L11_0:
    .globl add_edge
    .type add_edge,@function
add_edge:
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,88(sp)
    addi    s0,sp,104
.L8_0:
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
    li      a2, 0
    mul     s4,s1,a1
    add     a2,a2,s4
    slli a2,a2,2
    la      s1, f
    add     a2,a2,s1
    sw      a0,0(a2)
    ld      ra,96(sp)
    ld      s0,88(sp)
    addi    sp,sp,104
    ret
    .globl init
    .type init,@function
init:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L7_0:
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, dep
    add     a0,a0,a4
    li      a5, 0x3f3f3f3f
    sw      a5,0(a0)
    li      a6, 1
    j       .while.head_52
.while.head_52:
    la      a1, n
    lw      a2,0(a1)
    slt     a3,a2,a6
    xori    a3,a3,1
    bnez    a3, .while.body_52
    j       .while.exit_52
.while.body_52:
    li      a1, 0
    mul     a5,a4,a6
    add     a1,a1,a5
    slli a1,a1,2
    la      a7, head
    add     a1,a1,a7
    li      s1, -1
    sw      s1,0(a1)
    add     s2,a6,a4
    mv      a6, s2
    sb      a3,23(sp)
    sw      a2,24(sp)
    sw      s2,4(sp)
    sd      a1,8(sp)
    j       .while.head_52
.while.exit_52:
    ld      ra,48(sp)
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
    .globl tree
    .type tree,@function
tree:
    addi    sp,sp,-160
    sd      ra,152(sp)
    sd      s0,144(sp)
    addi    s0,sp,160
.L6_0:
    li      a2, 0
    mul     a4,a3,a0
    add     a2,a2,a4
    slli a2,a2,2
    la      a5, dep
    add     a2,a2,a5
    sw      a1,0(a2)
    li      a6, 0
    j       .while.head_62
.while.head_62:
    li      a3, 0
    mul     a5,a4,a0
    add     a3,a3,a5
    slli a3,a3,2
    la      a7, f
    add     a3,a3,a7
    lw      s1,0(a3)
    li      s2, 0
    xor     s3,s1,s2
    snez    s3, s3
    bnez    s3, .while.body_62
    j       .while.exit_62
.while.body_62:
    li      a4, 1
    add     a5,a6,a4
    li      a7, 0
    mul     s2,a4,a0
    add     a7,a7,s2
    slli a7,a7,2
    la      s4, f
    add     a7,a7,s4
    li      s5, 0
    mul     s6,a4,a0
    add     s5,s5,s6
    slli s5,s5,2
    la      s7, f
    add     s5,s5,s7
    lw      s8,0(s5)
    li      s9, 0
    mul     s10,a4,s8
    add     s9,s9,s10
    slli s9,s9,2
    la      s11, f
    add     s9,s9,s11
    lw      a4,0(s9)
    sw      a4,0(a7)
    li      s2, 1
    add     s4,a6,s2
    mv      a6, s4
    sw      a5,100(sp)
    sd      s9,64(sp)
    sb      s3,107(sp)
    sw      a4,60(sp)
    sw      s4,56(sp)
    sd      s5,80(sp)
    sd      a7,88(sp)
    sd      a3,112(sp)
    sw      s1,108(sp)
    sw      s8,76(sp)
    j       .while.head_62
.while.exit_62:
    li      a4, 0
    mul     a7,a5,a0
    add     a4,a4,a7
    slli a4,a4,2
    la      s2, head
    add     a4,a4,s2
    lw      s4,0(a4)
    mv      a6, s4
    j       .while.head_68
.while.head_68:
    li      a5, -1
    xor     a7,a6,a5
    snez    a7, a7
    bnez    a7, .while.body_68
    j       .while.exit_68
.while.body_68:
    li      a5, 0
    mul     s5,s2,a6
    add     a5,a5,s5
    slli a5,a5,2
    la      s6, to
    add     a5,a5,s6
    lw      s7,0(a5)
    mv      s8, s7
    add     s9,a1,s2
    sw      s1,108(sp)
    sb      s3,107(sp)
    sw      s4,44(sp)
    sw      s7,28(sp)
    sw      s8,24(sp)
    sw      s9,20(sp)
    sw      a0,140(sp)
    sw      a1,136(sp)
    sd      a2,128(sp)
    sd      a3,112(sp)
    sd      a4,48(sp)
    sd      a5,32(sp)
    sw      a6,124(sp)
    sb      a7,43(sp)
    lw      a0,24(sp)
    lw      a1,20(sp)
    call    tree
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, next
    add     a0,a0,a4
    lw      a5,0(a0)
    mv      a2, a5
    sw      a2,124(sp)
    sw      a5,4(sp)
    sd      a0,8(sp)
    ld      a2,128(sp)
    lw      a0,140(sp)
    lb      s3,107(sp)
    ld      a4,48(sp)
    lw      s4,44(sp)
    lw      a6,124(sp)
    ld      a3,112(sp)
    lw      s1,108(sp)
    lw      a1,136(sp)
    j       .while.head_68
.while.exit_68:
    ld      ra,152(sp)
    ld      s0,144(sp)
    addi    sp,sp,160
    ret
    .globl LCA
    .type LCA,@function
LCA:
    addi    sp,sp,-264
    sd      ra,256(sp)
    sd      s0,248(sp)
    addi    s0,sp,264
.L1_0:
    li      a2, 0
    mul     a4,a3,a1
    add     a2,a2,a4
    slli a2,a2,2
    la      a5, dep
    add     a2,a2,a5
    lw      a6,0(a2)
    li      a7, 0
    mul     s1,a3,a0
    add     a7,a7,s1
    slli a7,a7,2
    la      s2, dep
    add     a7,a7,s2
    lw      s3,0(a7)
    slt     s4,s3,a6
    bnez    s4, .branch_true_77
    j       .branch_false_77
.branch_true_77:
    mv      a3, a0
    mv      a0, a1
    mv      a1, a3
    sw      a3,204(sp)
    j       .branch_false_77
.branch_false_77:
.L2_0:
    li      a3, 19
    j       .while.head_84
.while.head_84:
    li      a4, 0
    mul     s1,a5,a1
    add     a4,a4,s1
    slli a4,a4,2
    la      s2, dep
    add     a4,a4,s2
    lw      s5,0(a4)
    li      s6, 0
    mul     s7,a5,a0
    add     s6,s6,s7
    slli s6,s6,2
    la      s8, dep
    add     s6,s6,s8
    lw      s9,0(s6)
    slt     s10,s5,s9
    bnez    s10, .while.body_84
    j       .while.exit_84
.while.body_84:
    li      a5, 0
    mul     s2,s1,a1
    add     a5,a5,s2
    slli a5,a5,2
    la      s7, dep
    add     a5,a5,s7
    lw      s8,0(a5)
    li      s11, 0
    mul     s2,s1,a0
    add     s11,s11,s2
    slli s11,s11,2
    la      s1, f
    add     s11,s11,s1
    lw      s1,0(s11)
    li      s2, 0
    sw      a0,244(sp)
    mul     a0,s7,s1
    add     s2,s2,a0
    slli s2,s2,2
    la      a0, dep
    add     s2,s2,a0
    lw      a0,0(s2)
    slt     s7,a0,s8
    xori    s7,s7,1
    sw      a0,124(sp)
    li      a0, 0
    sw      a1,240(sp)
    sd      a2,232(sp)
    sw      a3,200(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, f
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 0
    sd      a0,112(sp)
    xor     a0,a1,a3
    snez    a0, a0
    and     a3,a0,s7
    sd      s6,176(sp)
    bnez    a3, .branch_true_87
    j       .branch_false_87
.branch_true_87:
    li      s6, 0
    sb      a0,107(sp)
    sw      a1,108(sp)
    mul     a1,a0,a2
    add     s6,s6,a1
    slli s6,s6,2
    la      a0, f
    add     s6,s6,a0
    lw      a0,0(s6)
    mv      a2, a0
    sd      s6,96(sp)
    sw      a0,92(sp)
    lw      a1,108(sp)
    lb      a0,107(sp)
    j       .branch_false_87
.branch_false_87:
.L3_0:
    lw      s6,200(sp)
    sb      a0,107(sp)
    li      a0, 1
    sw      a1,108(sp)
    sub     a1,s6,a0
    mv      s6, a1
    sw      s6,200(sp)
    sw      a1,88(sp)
    sd      a4,192(sp)
    sb      a3,106(sp)
    sw      s1,140(sp)
    sw      a2,244(sp)
    sb      s10,171(sp)
    sw      s9,172(sp)
    sd      s11,144(sp)
    sb      s7,123(sp)
    sw      s5,188(sp)
    sw      s8,156(sp)
    sd      s2,128(sp)
    sd      a5,160(sp)
    lw      a1,240(sp)
    lw      a3,200(sp)
    lw      a0,244(sp)
    ld      a2,232(sp)
    j       .while.head_84
.while.exit_84:
    xor     a5,a0,a1
    seqz    a5, a5
    bnez    a5, .branch_true_91
    j       .branch_false_91
.branch_true_91:
    ld      ra,256(sp)
    ld      s0,248(sp)
    sw      a0,244(sp)
    lw      a0,244(sp)
    addi    sp,sp,264
    ret
.branch_false_91:
.L4_0:
    li      a3, 19
    j       .while.head_95
.while.head_95:
    li      s1, 0
    slt     s2,a3,s1
    xori    s2,s2,1
    bnez    s2, .while.body_95
    j       .while.exit_95
.while.body_95:
    li      s1, 0
    mul     s8,s7,a1
    add     s1,s1,s8
    slli s1,s1,2
    la      s11, f
    add     s1,s1,s11
    lw      s7,0(s1)
    li      s8, 0
    sw      a1,240(sp)
    mul     a1,s11,a0
    add     s8,s8,a1
    slli s8,s8,2
    la      a1, f
    add     s8,s8,a1
    lw      a1,0(s8)
    xor     s11,a1,s7
    snez    s11, s11
    sd      s6,176(sp)
    bnez    s11, .branch_true_98
    j       .branch_false_98
.branch_true_98:
    li      s6, 0
    sw      a0,244(sp)
    sw      a1,52(sp)
    sd      a2,232(sp)
    mul     a2,a0,a1
    add     s6,s6,a2
    slli s6,s6,2
    la      a0, f
    add     s6,s6,a0
    lw      a0,0(s6)
    mv      a1, a0
    li      a2, 0
    sw      a0,36(sp)
    sw      a1,244(sp)
    sw      a3,200(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    la      a0, f
    add     a2,a2,a0
    lw      a0,0(a2)
    mv      a1, a0
    sd      s6,40(sp)
    sw      a1,240(sp)
    sw      a0,20(sp)
    sd      a2,24(sp)
    lw      a1,52(sp)
    lw      a3,200(sp)
    lw      a0,244(sp)
    ld      a2,232(sp)
    j       .branch_false_98
.branch_false_98:
.L5_0:
    li      s6, 1
    sw      a0,244(sp)
    sub     a0,a3,s6
    mv      a3, a0
    sw      a1,52(sp)
    sw      a0,16(sp)
    sd      s1,72(sp)
    sb      s11,51(sp)
    sw      s7,68(sp)
    sd      s8,56(sp)
    sb      s2,86(sp)
    ld      s6,176(sp)
    lw      a1,240(sp)
    lw      a0,244(sp)
    j       .while.head_95
.while.exit_95:
    li      s1, 0
    mul     s8,s7,a0
    add     s1,s1,s8
    slli s1,s1,2
    la      s11, f
    add     s1,s1,s11
    lw      s7,0(s1)
    ld      ra,256(sp)
    ld      s0,248(sp)
    sw      s7,4(sp)
    sw      a0,244(sp)
    lw      a0,4(sp)
    addi    sp,sp,264
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
    li      a0, 1
    j       .while.head_111
.while.head_111:
    la      a1, n
    lw      a2,0(a1)
    xor     a3,a0,a2
    snez    a3, a3
    bnez    a3, .while.body_111
    j       .while.exit_111
.while.body_111:
    sw      a0,68(sp)
    sw      a2,64(sp)
    sb      a3,63(sp)
    call    quick_read
    sw      a0,56(sp)
    mv      a1, a0
    sw      a0,56(sp)
    sw      a1,52(sp)
    call    quick_read
    sw      a0,48(sp)
    mv      a1, a0
    sw      a0,48(sp)
    sw      a1,44(sp)
    lw      a0,52(sp)
    lw      a1,44(sp)
    call    add_edge
    lw      a0,68(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,40(sp)
    j       .while.head_111
.while.exit_111:
    sw      a0,68(sp)
    sw      a2,64(sp)
    sb      a3,63(sp)
    li      a0, 1
    li      a1, 1
    call    tree
    j       .while.head_118
.while.head_118:
    la      a0, m
    lw      a1,0(a0)
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
    bnez    a3, .while.body_118
    j       .while.exit_118
.while.body_118:
    sw      a1,36(sp)
    sb      a3,35(sp)
    call    quick_read
    sw      a0,28(sp)
    mv      a1, a0
    sw      a0,28(sp)
    sw      a1,24(sp)
    call    quick_read
    sw      a0,20(sp)
    mv      a1, a0
    sw      a0,20(sp)
    sw      a1,16(sp)
    lw      a0,24(sp)
    lw      a1,16(sp)
    call    LCA
    sw      a0,12(sp)
    sw      a0,12(sp)
    lw      a0,12(sp)
    call    putint
    li      a0, 10
    call    putch
    la      a0, m
    lw      a1,0(a0)
    li      a2, 1
    sub     a3,a1,a2
    la      a4, m
    sw      a3,0(a4)
    sw      a3,4(sp)
    sw      a1,8(sp)
    j       .while.head_118
.while.exit_118:
    ld      ra,88(sp)
    ld      s0,80(sp)
    li      a0, 0
    addi    sp,sp,96
    ret
.section ___var
    .data
    .align 4
    .globl cnt
    .type cnt,@object
cnt:
    .word 0
    .align 4
    .globl head
    .type head,@object
head:
    .zero 40020
    .align 4
    .globl next
    .type next,@object
next:
    .zero 40020
    .align 4
    .globl to
    .type to,@object
to:
    .zero 40020
    .align 4
    .globl dep
    .type dep,@object
dep:
    .zero 40020
    .align 4
    .globl f
    .type f,@object
f:
    .zero 800400
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
    .align 4
    .globl maxn
    .type maxn,@object
maxn:
    .word 10005
