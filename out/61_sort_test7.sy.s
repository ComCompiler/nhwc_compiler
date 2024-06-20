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
    .globl merge_sort
    .type merge_sort,@function
merge_sort:
    li      a2, -5848
    li      a2, -5848
    add     sp,a2,sp
    sd      ra,5840(sp)
    sd      s0,5832(sp)
    li      a3, 5848
    li      a3, 5848
    add     s0,a3,sp
.L1_0:
    li      a4, 1
    add     a5,a0,a4
    slt     a6,a5,a1
    xori    a6,a6,1
    bnez    a6, .branch_true_21
    j       .branch_false_21
.branch_true_21:
    li      a7, 5840
    add     a7,sp,a7
    ld      ra,0(a7)
    li      s1, 5832
    add     s1,sp,s1
    ld      s0,0(s1)
    li      a3, 5848
    add     sp,a3,sp
    ret
.branch_false_21:
.L2_0:
    add     s2,a0,a1
    li      s3, 2
    div     s4,s2,s3
    mv      s5, s4
    sd      s1,5832(sp)
    sw      s2,5812(sp)
    sw      s4,5808(sp)
    sw      s5,5804(sp)
    sw      a0,5828(sp)
    sw      a1,5824(sp)
    call    merge_sort
    call    merge_sort
    mv      a1, a0
    mv      s2, s1
    mv      s3, a0
    j       .while.head_28
.while.head_28:
    slt     s5,s2,s4
    slt     s6,a1,s1
    and     s7,s6,s5
    bnez    s7, .while.body_28
    j       .while.exit_28
.while.body_28:
    la      s8, buf
    lw      s9,0(s8)
    li      s10, 0
    li      s11, 100
    li      a2, 0
    mul     a3,s11,a2
    add     s10,s10,a3
    add     s10,s10,a3
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    la      a2, buf
    lw      a4,0(a2)
    li      a2, 0
    li      a4, 0
    mul     s8,s11,a4
    add     a2,a2,s8
    li      a4, 1
    add     a2,a2,s8
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    slt     s11,a4,s9
    bnez    s11, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    sw      a0,5828(sp)
    li      a0, 0
    sw      a1,5800(sp)
    li      a1, 100
    sd      a2,4160(sp)
    li      a2, 1
    sw      a3,5784(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a1,a2,s3
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, buf
    lw      a2,0(a1)
    li      a1, 0
    li      a2, 100
    li      a3, 0
    sd      a0,4144(sp)
    mul     a0,a2,a3
    add     a1,a1,a0
    li      a2, 1
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      a0,4140(sp)
    sd      a0,0(a2)
    sw      a0,3332(sp)
    li      a0, 1
    sd      a1,3336(sp)
    add     a1,a3,a0
    j       .L3_0
.branch_false_31:
    li      a0, 0
    sw      a1,3328(sp)
    li      a1, 100
    sd      a2,4144(sp)
    li      a2, 1
    sw      a3,5800(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a1,a2,s3
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, buf
    lw      a2,0(a1)
    li      a1, 0
    li      a2, 100
    li      a3, 0
    sd      a0,3312(sp)
    mul     a0,a2,a3
    add     a1,a1,a0
    li      a2, 1
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a3,0(a2)
    sw      a0,3308(sp)
    li      a0, 1
    sd      a1,2504(sp)
    add     a1,s2,a0
    j       .L3_0
.L3_0:
.L4_0:
    sw      a1,2496(sp)
    add     a1,s3,a0
    j       .while.head_28
.while.head_40:
    sw      a1,3324(sp)
    slt     a1,a0,s1
    bnez    a1, .while.body_40
    j       .while.exit_40
.while.body_40:
    sw      a0,5800(sp)
    li      a0, 0
    sb      a1,2495(sp)
    li      a1, 100
    sd      a2,3312(sp)
    li      a2, 1
    sw      a3,2500(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a1,a2,s3
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, buf
    lw      a2,0(a1)
    li      a1, 0
    li      a2, 100
    li      a3, 0
    sd      a0,2480(sp)
    mul     a0,a2,a3
    add     a1,a1,a0
    li      a2, 1
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      a0,2476(sp)
    sd      a0,0(a2)
    sw      a0,1668(sp)
    li      a0, 1
    sd      a1,1672(sp)
    add     a1,a3,a0
    sw      a1,1664(sp)
    add     a1,s3,a0
    j       .while.head_40
.while.head_46:
    slt     a0,s2,s4
    bnez    a0, .while.body_46
    j       .while.exit_46
.while.body_46:
    sb      a0,1659(sp)
    li      a0, 0
    sw      a1,1660(sp)
    li      a1, 100
    sd      a2,2480(sp)
    li      a2, 1
    sw      a3,5800(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a1,a2,s3
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, buf
    lw      a2,0(a1)
    li      a1, 0
    li      a2, 100
    li      a3, 0
    sd      a0,1648(sp)
    mul     a0,a2,a3
    add     a1,a1,a0
    li      a2, 1
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a3,0(a2)
    sw      a0,1644(sp)
    li      a0, 1
    sd      a1,840(sp)
    add     a1,s2,a0
    sw      a1,832(sp)
    add     a1,s3,a0
    j       .while.head_46
.while.head_52:
    sw      a1,828(sp)
    slt     a1,a0,s4
    bnez    a1, .while.body_52
    j       .while.exit_52
.while.body_52:
    sw      a0,5828(sp)
    li      a0, 0
    sb      a1,827(sp)
    li      a1, 100
    sd      a2,1648(sp)
    li      a2, 0
    sw      a3,836(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, buf
    lw      a3,0(a1)
    li      a1, 0
    li      a3, 100
    sd      a0,816(sp)
    li      a0, 1
    sw      a2,5828(sp)
    mul     a2,a3,a0
    add     a1,a1,a2
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,8(sp)
    sd      a1,0(a0)
    sd      a0,816(sp)
    li      a0, 1
    sw      a1,4(sp)
    add     a1,a3,a0
    j       .while.head_52
.while.exit_52:
    .globl main
    .type main,@function
main:
    li      a0, -2440
    li      a0, -2440
    add     sp,a0,sp
    sd      ra,2432(sp)
    sd      s0,2424(sp)
    li      a1, 2440
    li      a1, 2440
    add     s0,a1,sp
.L0_0:
    la      a2, buf
    lw      a3,0(a2)
    li      a4, 0
    li      a5, 100
    li      a6, 0
    mul     a7,a5,a6
    add     a4,a4,a7
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    call    getarray
    sw      a0,1212(sp)
    mv      s1, a0
    sw      s1,1208(sp)
    sw      a0,1212(sp)
    li      a0, 0
    call    merge_sort
    la      a0, buf
    lw      a1,0(a0)
    li      s1, 0
    mul     s2,a5,a6
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    sd      s1,400(sp)
    sw      s2,1204(sp)
    call    putarray
    li      a0, 2432
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 2424
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 0
    li      s1, 2440
    li      s1, 2440
    add     sp,s1,sp
    ret
.section        .data
    .align 4
    .globl buf
    .type buf,@object
buf:
    .zero 800
