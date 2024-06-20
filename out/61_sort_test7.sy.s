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
    li      a2, -6000
    li      a2, -6000
    add     sp,a2,sp
    sd      ra,5992(sp)
    sd      s0,5976(sp)
    li      a3, 6000
    li      a3, 6000
    add     s0,a3,sp
.L1_0:
    li      a4, 1
    add     a5,a0,a4
    slt     a6,a1,a5
    xori    a6,a6,1
    bnez    a6, .branch_true_21
    j       .branch_false_21
.branch_true_21:
    li      a7, 5992
    add     a7,sp,a7
    ld      ra,0(a7)
    li      s1, 5976
    add     s1,sp,s1
    ld      s0,0(s1)
    li      a3, 6000
    add     sp,a3,sp
    ret
.branch_false_21:
.L2_0:
    add     s2,a0,a1
    li      s3, 2
    div     s4,s2,s3
    mv      s5, s4
    sd      s1,5976(sp)
    sw      s2,5944(sp)
    sw      s4,5940(sp)
    sw      s5,5932(sp)
    sw      a0,5968(sp)
    mv      a0, a0
    sw      a1,5960(sp)
    mv      a1, a1
    call    merge_sort
    mv      a0, a0
    mv      a1, a1
    call    merge_sort
    mv      a0, a0
    mv      a1, a0
    mv      s1, s1
    mv      s2, s1
    mv      s3, a0
    j       .while.head_28
.while.head_28:
    mv      s4, s4
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
    mv      a4, a4
    mv      s9, s9
    slt     s11,a4,s9
    bnez    s11, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    sw      a0,5968(sp)
    li      a0, 0
    sw      a1,5924(sp)
    li      a1, 100
    sd      a2,4272(sp)
    li      a2, 1
    sw      a3,5901(sp)
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
    sd      a0,4248(sp)
    mul     a0,a2,a3
    add     a1,a1,a0
    li      a2, 1
    mv      a3, a3
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a2, a2
    sw      a0,4240(sp)
    mv      a0, a0
    sd      a0,0(a2)
    sw      a0,3428(sp)
    li      a0, 1
    sd      a1,3436(sp)
    add     a1,a3,a0
    j       .L3_0
.branch_false_31:
    li      a0, 0
    sw      a1,3420(sp)
    li      a1, 100
    sd      a2,4248(sp)
    li      a2, 1
    sw      a3,5924(sp)
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
    sd      a0,3400(sp)
    mul     a0,a2,a3
    add     a1,a1,a0
    li      a2, 1
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a2, a2
    mv      a3, a3
    sd      a3,0(a2)
    sw      a0,3392(sp)
    li      a0, 1
    sd      a1,2584(sp)
    add     a1,s2,a0
    j       .L3_0
.L3_0:
.L4_0:
    sw      a1,2568(sp)
    add     a1,s3,a0
    j       .while.head_28
.while.head_40:
    mv      a0, a0
    sw      a1,3412(sp)
    slt     a1,a0,s1
    bnez    a1, .while.body_40
    j       .while.exit_40
.while.body_40:
    sw      a0,5924(sp)
    li      a0, 0
    sb      a1,2567(sp)
    li      a1, 100
    sd      a2,3400(sp)
    li      a2, 1
    sw      a3,2576(sp)
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
    sd      a0,2552(sp)
    mul     a0,a2,a3
    add     a1,a1,a0
    li      a2, 1
    mv      a3, a3
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a2, a2
    sw      a0,2548(sp)
    mv      a0, a0
    sd      a0,0(a2)
    sw      a0,1728(sp)
    li      a0, 1
    sd      a1,1736(sp)
    add     a1,a3,a0
    sw      a1,1720(sp)
    add     a1,s3,a0
    j       .while.head_40
.while.head_46:
    slt     a0,s2,s4
    bnez    a0, .while.body_46
    j       .while.exit_46
.while.body_46:
    sb      a0,1711(sp)
    li      a0, 0
    sw      a1,1712(sp)
    li      a1, 100
    sd      a2,2552(sp)
    li      a2, 1
    sw      a3,5924(sp)
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
    sd      a0,1696(sp)
    mul     a0,a2,a3
    add     a1,a1,a0
    li      a2, 1
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a2, a2
    mv      a3, a3
    sd      a3,0(a2)
    sw      a0,1692(sp)
    li      a0, 1
    sd      a1,880(sp)
    add     a1,s2,a0
    sw      a1,864(sp)
    add     a1,s3,a0
    j       .while.head_46
.while.head_52:
    mv      a0, a0
    sw      a1,856(sp)
    slt     a1,a0,s4
    bnez    a1, .while.body_52
    j       .while.exit_52
.while.body_52:
    sw      a0,5968(sp)
    li      a0, 0
    sb      a1,855(sp)
    li      a1, 100
    sd      a2,1696(sp)
    li      a2, 0
    sw      a3,872(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    mv      a2, a2
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, buf
    lw      a3,0(a1)
    li      a1, 0
    li      a3, 100
    sd      a0,840(sp)
    li      a0, 1
    sw      a2,5968(sp)
    mul     a2,a3,a0
    add     a1,a1,a2
    mv      a3, a3
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,24(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,840(sp)
    li      a0, 1
    sw      a1,16(sp)
    add     a1,a3,a0
    j       .while.head_52
.while.exit_52:
    .globl main
    .type main,@function
main:
    li      a0, -2488
    li      a0, -2488
    add     sp,a0,sp
    sd      ra,2480(sp)
    sd      s0,2464(sp)
    li      a0, 2488
    li      a0, 2488
    add     s0,a0,sp
.L0_0:
    la      a0, buf
    sw      a1,8(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 100
    sw      a2,836(sp)
    li      a2, 0
    sw      a3,5968(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sw      s1,5932(sp)
    sw      s2,5916(sp)
    sw      s3,5908(sp)
    sw      s4,5960(sp)
    sb      s5,5907(sp)
    sb      s6,5906(sp)
    sb      s7,5905(sp)
    sw      s8,5080(sp)
    sw      s9,5088(sp)
    sd      s10,5096(sp)
    sb      s11,4263(sp)
    sd      a0,1648(sp)
    mv      a0, a0
    call    getarray
    sw      a0,1236(sp)
    mv      s1, a0
    sw      s1,1228(sp)
    sw      a0,1236(sp)
    li      a0, 0
    mv      a1, a1
    call    merge_sort
    la      a0, buf
    lw      a1,0(a0)
    li      s1, 0
    li      s2, 100
    mul     s3,s2,a2
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    sd      s1,408(sp)
    sw      s3,1220(sp)
    mv      a0, a0
    mv      a1, a1
    call    putarray
    li      a0, 2480
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 2464
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 0
    li      s1, 2488
    li      s1, 2488
    add     sp,s1,sp
    ret
.section        .data
    .align 4
    .globl buf
    .type buf,@object
buf:
    .zero 800
