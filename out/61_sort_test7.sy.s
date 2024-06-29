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
    .globl merge_sort
    .type merge_sort,@function
merge_sort:
    addi    sp,sp,-248
    sd      ra,240(sp)
    sd      s0,232(sp)
    addi    s0,sp,248
.L1_0:
    li      a2, 1
    add     a3,a0,a2
    slt     a4,a3,a1
    xori    a4,a4,1
    bnez    a4, .branch_true_21
    j       .branch_false_21
.branch_true_21:
    ld      ra,240(sp)
    ld      s0,232(sp)
    addi    sp,sp,248
    ret
.branch_false_21:
.L2_0:
    add     a2,a0,a1
    li      a5, 2
    div     a6,a2,a5
    mv      a7, a6
    sw      a0,228(sp)
    sw      a1,224(sp)
    sw      a2,212(sp)
    sw      a3,220(sp)
    sb      a4,219(sp)
    sw      a6,208(sp)
    sw      a7,204(sp)
    lw      a0,228(sp)
    lw      a1,204(sp)
    call    merge_sort
    lw      a0,204(sp)
    lw      a1,224(sp)
    call    merge_sort
    lw      a0,228(sp)
    mv      a1, a0
    lw      a2,204(sp)
    mv      a3, a2
    mv      a4, a0
    j       .while.head_28
.while.head_28:
    lw      a5,224(sp)
    slt     a6,a3,a5
    slt     a7,a1,a2
    and     s1,a7,a6
    bnez    s1, .while.body_28
    j       .while.exit_28
.while.body_28:
    li      s2, 0
    li      s3, 1
    li      s4, 0
    mul     s5,s3,s4
    add     s2,s2,s5
    slli s2,s2,2
    la      s6, buf
    add     s2,s2,s6
    lw      s7,0(s2)
    li      s8, 0
    mul     s9,s3,s4
    add     s8,s8,s9
    slli s8,s8,2
    la      s10, buf
    add     s8,s8,s10
    lw      s11,0(s8)
    slt     s3,s11,s7
    bnez    s3, .branch_true_31
    j       .branch_false_31
.branch_true_31:
    li      s4, 0
    li      s5, 1
    li      s6, 1
    mul     s9,s5,s6
    add     s4,s4,s9
    slli s4,s4,2
    la      s10, buf
    add     s4,s4,s10
    li      s5, 0
    li      s9, 0
    mul     s10,s6,s9
    add     s5,s5,s10
    slli s5,s5,2
    la      s6, buf
    add     s5,s5,s6
    lw      s6,0(s5)
    sw      s6,0(s4)
    li      s9, 1
    add     s10,a1,s9
    mv      a1, s10
    j       .L3_0
.branch_false_31:
    li      s4, 0
    li      s5, 1
    li      s6, 1
    mul     s9,s5,s6
    add     s4,s4,s9
    slli s4,s4,2
    la      s10, buf
    add     s4,s4,s10
    li      s5, 0
    li      s9, 0
    mul     s10,s6,s9
    add     s5,s5,s10
    slli s5,s5,2
    la      s6, buf
    add     s5,s5,s6
    lw      s6,0(s5)
    sw      s6,0(s4)
    li      s9, 1
    add     s10,a3,s9
    mv      a3, s10
    sw      s6,100(sp)
    sd      s5,104(sp)
    sd      s4,112(sp)
    sw      s10,96(sp)
    lw      s6,132(sp)
    ld      s5,136(sp)
    ld      s4,144(sp)
    lw      s10,128(sp)
    j       .L3_0
.L3_0:
.L4_0:
    li      s9, 1
    sw      a0,228(sp)
    add     a0,a4,s9
    mv      a4, a0
    sw      s6,132(sp)
    sb      a6,191(sp)
    sb      a7,190(sp)
    sw      a5,224(sp)
    sb      s1,189(sp)
    sd      s5,136(sp)
    sw      s11,156(sp)
    sd      s4,144(sp)
    sd      s2,176(sp)
    sw      s7,172(sp)
    sw      a0,124(sp)
    sw      s10,128(sp)
    sd      s8,160(sp)
    sb      s3,155(sp)
    lw      a0,228(sp)
    j       .while.head_28
.while.exit_28:
    slt     s2,a1,a2
    bnez    s2, .while.body_40
    j       .while.exit_40
.while.body_40:
    li      s3, 0
    li      s4, 1
    li      s5, 1
    mul     s6,s4,s5
    add     s3,s3,s6
    slli s3,s3,2
    la      s7, buf
    add     s3,s3,s7
    li      s8, 0
    li      s9, 0
    mul     s10,s5,s9
    add     s8,s8,s10
    slli s8,s8,2
    la      s11, buf
    add     s8,s8,s11
    lw      s4,0(s8)
    sw      s4,0(s3)
    add     s6,a1,s5
    mv      a1, s6
    add     s7,a4,s5
    mv      a4, s7
    sw      s6,64(sp)
    sw      s4,68(sp)
    sb      s2,95(sp)
    sw      s7,60(sp)
    sd      s8,72(sp)
    sd      s3,80(sp)
    j       .while.exit_28
.while.exit_40:
    slt     s3,a3,a5
    bnez    s3, .while.body_46
    j       .while.exit_46
.while.body_46:
    li      s4, 0
    li      s5, 1
    li      s6, 1
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    la      s8, buf
    add     s4,s4,s8
    li      s9, 0
    li      s10, 0
    mul     s11,s6,s10
    add     s9,s9,s11
    slli s9,s9,2
    la      s5, buf
    add     s9,s9,s5
    lw      s5,0(s9)
    sw      s5,0(s4)
    add     s7,a3,s6
    mv      a3, s7
    add     s8,a4,s6
    mv      a4, s8
    sw      s5,36(sp)
    sd      s9,40(sp)
    sd      s4,48(sp)
    sw      s7,32(sp)
    sw      s8,28(sp)
    sb      s3,59(sp)
    j       .while.exit_40
.while.exit_46:
    slt     s4,a0,a5
    bnez    s4, .while.body_52
    j       .while.exit_52
.while.body_52:
    li      s5, 0
    li      s6, 1
    li      s7, 0
    mul     s8,s6,s7
    add     s5,s5,s8
    slli s5,s5,2
    la      s9, buf
    add     s5,s5,s9
    li      s10, 0
    li      s11, 1
    mul     s7,s6,s11
    add     s10,s10,s7
    slli s10,s10,2
    la      s6, buf
    add     s10,s10,s6
    lw      s6,0(s10)
    sw      s6,0(s5)
    add     s7,a0,s11
    mv      a0, s7
    sw      s6,4(sp)
    sd      s5,16(sp)
    sb      s4,27(sp)
    sw      s7,0(sp)
    sd      s10,8(sp)
    j       .while.exit_46
.while.exit_52:
    ld      ra,240(sp)
    ld      s0,232(sp)
    addi    sp,sp,248
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L0_0:
    li      a0, 0
    li      a1, 1
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, buf
    add     a0,a0,a4
    sd      a0,16(sp)
    ld      a0,16(sp)
    call    getarray
    sw      a0,12(sp)
    mv      a1, a0
    sw      a0,12(sp)
    sw      a1,8(sp)
    li      a0, 0
    lw      a1,8(sp)
    call    merge_sort
    li      a0, 0
    li      a1, 1
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, buf
    add     a0,a0,a4
    sd      a0,0(sp)
    lw      a0,8(sp)
    ld      a1,0(sp)
    call    putarray
    ld      ra,32(sp)
    ld      s0,24(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
.section ___var
    .data
    .align 4
    .globl buf
    .type buf,@object
buf:
    .zero 800
