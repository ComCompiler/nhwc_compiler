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
    .globl search
    .type search,@function
search:
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,72(sp)
    addi    s0,sp,88
.L20_0:
    li      a2, 0
    mul     a4,a3,a0
    add     a2,a2,a4
    slli a2,a2,2
    la      a5, value
    add     a2,a2,a5
    lw      a6,0(a2)
    xor     a7,a6,a1
    seqz    a7, a7
    li      s1, -1
    xor     s2,a0,s1
    seqz    s2, s2
    or      s3,s2,a7
    bnez    s3, .branch_true_27
    j       .branch_false_27
.branch_true_27:
    ld      ra,80(sp)
    ld      s0,72(sp)
    sw      a0,68(sp)
    lw      a0,68(sp)
    addi    sp,sp,88
    ret
.branch_false_27:
    li      a3, 0
    mul     a5,a4,a0
    add     a3,a3,a5
    slli a3,a3,2
    la      s1, value
    add     a3,a3,s1
    lw      s4,0(a3)
    slt     s5,s4,a1
    bnez    s5, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    li      a4, 0
    mul     s1,a5,a0
    add     a4,a4,s1
    slli a4,a4,2
    la      s6, right_child
    add     a4,a4,s6
    lw      s7,0(a4)
    sb      s2,50(sp)
    sb      s3,49(sp)
    sw      s4,36(sp)
    sb      s5,35(sp)
    sw      s7,20(sp)
    sw      a0,68(sp)
    sw      a1,64(sp)
    sd      a2,56(sp)
    sd      a3,40(sp)
    sd      a4,24(sp)
    sw      a6,52(sp)
    sb      a7,51(sp)
    lw      a0,20(sp)
    lw      a1,64(sp)
    call    search
    sw      a0,16(sp)
    ld      ra,80(sp)
    ld      s0,72(sp)
    sw      a0,16(sp)
    lw      a0,16(sp)
    addi    sp,sp,88
    ret
.branch_false_30:
    li      a4, 0
    mul     s1,a5,a0
    add     a4,a4,s1
    slli a4,a4,2
    la      s6, left_child
    add     a4,a4,s6
    lw      s7,0(a4)
    sb      s2,50(sp)
    sb      s3,49(sp)
    sw      s4,36(sp)
    sb      s5,35(sp)
    sw      s7,4(sp)
    sw      a0,68(sp)
    sw      a1,64(sp)
    sd      a2,56(sp)
    sd      a3,40(sp)
    sd      a4,8(sp)
    sw      a6,52(sp)
    sb      a7,51(sp)
    lw      a0,4(sp)
    lw      a1,64(sp)
    call    search
    sw      a0,0(sp)
    ld      ra,80(sp)
    ld      s0,72(sp)
    sw      a0,0(sp)
    lw      a0,0(sp)
    addi    sp,sp,88
    ret
.L21_0:
.L22_0:
    .globl find_minimum
    .type find_minimum,@function
find_minimum:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,48(sp)
    addi    s0,sp,64
.L17_0:
    li      a1, -1
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_37
    j       .branch_false_37
.branch_true_37:
    li      a1, 0
    li      a3, 1
    sub     a4,a1,a3
    ld      ra,56(sp)
    ld      s0,48(sp)
    sw      a4,36(sp)
    sw      a0,44(sp)
    lw      a0,36(sp)
    addi    sp,sp,64
    ret
.branch_false_37:
    li      a1, 0
    mul     a4,a3,a0
    add     a1,a1,a4
    slli a1,a1,2
    la      a5, left_child
    add     a1,a1,a5
    lw      a6,0(a1)
    li      a7, -1
    xor     s1,a6,a7
    snez    s1, s1
    bnez    s1, .branch_true_41
    j       .branch_false_41
.branch_true_41:
    li      a3, 0
    mul     a5,a4,a0
    add     a3,a3,a5
    slli a3,a3,2
    la      a7, left_child
    add     a3,a3,a7
    lw      s2,0(a3)
    sb      s1,19(sp)
    sw      s2,4(sp)
    sw      a0,44(sp)
    sd      a1,24(sp)
    sb      a2,43(sp)
    sd      a3,8(sp)
    sw      a6,20(sp)
    lw      a0,4(sp)
    call    find_minimum
    sw      a0,0(sp)
    ld      ra,56(sp)
    ld      s0,48(sp)
    sw      a0,0(sp)
    lw      a0,0(sp)
    addi    sp,sp,64
    ret
.branch_false_41:
.L18_0:
.L19_0:
    ld      ra,56(sp)
    ld      s0,48(sp)
    sw      a0,44(sp)
    lw      a0,44(sp)
    addi    sp,sp,64
    ret
    .globl new_node
    .type new_node,@function
new_node:
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
.L16_0:
    la      a1, now
    lw      a2,0(a1)
    li      a3, 0
    mul     a5,a4,a2
    add     a3,a3,a5
    slli a3,a3,2
    la      a6, value
    add     a3,a3,a6
    sw      a0,0(a3)
    la      a7, now
    lw      s1,0(a7)
    li      s2, 0
    mul     s3,a4,s1
    add     s2,s2,s3
    slli s2,s2,2
    la      s4, left_child
    add     s2,s2,s4
    li      s5, -1
    sw      s5,0(s2)
    la      s6, now
    lw      s7,0(s6)
    li      s8, 0
    mul     s9,a4,s7
    add     s8,s8,s9
    slli s8,s8,2
    la      s10, right_child
    add     s8,s8,s10
    sw      s5,0(s8)
    la      s11, now
    lw      a1,0(s11)
    add     a5,a1,a4
    la      a4, now
    sw      a5,0(a4)
    la      a4, now
    lw      a6,0(a4)
    li      a4, 1
    sub     a7,a6,a4
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a7,0(sp)
    sw      a0,60(sp)
    lw      a0,0(sp)
    addi    sp,sp,80
    ret
    .globl insert
    .type insert,@function
insert:
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
.L12_0:
    li      a2, -1
    xor     a3,a0,a2
    seqz    a3, a3
    bnez    a3, .branch_true_57
    j       .branch_false_57
.branch_true_57:
    sw      a0,76(sp)
    sw      a1,72(sp)
    sb      a3,71(sp)
    lw      a0,72(sp)
    call    new_node
    sw      a0,64(sp)
    ld      ra,88(sp)
    ld      s0,80(sp)
    sw      a0,64(sp)
    lw      a0,64(sp)
    addi    sp,sp,96
    ret
.branch_false_57:
    li      a2, 0
    mul     a5,a4,a0
    add     a2,a2,a5
    slli a2,a2,2
    la      a6, value
    add     a2,a2,a6
    lw      a7,0(a2)
    slt     s1,a7,a1
    bnez    s1, .branch_true_61
    j       .branch_false_61
.branch_true_61:
    li      a4, 0
    mul     a6,a5,a0
    add     a4,a4,a6
    slli a4,a4,2
    la      s2, right_child
    add     a4,a4,s2
    li      s3, 0
    mul     s4,a5,a0
    add     s3,s3,s4
    slli s3,s3,2
    la      s5, right_child
    add     s3,s3,s5
    lw      s6,0(s3)
    sb      s1,51(sp)
    sd      s3,32(sp)
    sw      s6,28(sp)
    sw      a0,76(sp)
    sw      a1,72(sp)
    sd      a2,56(sp)
    sb      a3,71(sp)
    sd      a4,40(sp)
    sw      a7,52(sp)
    lw      a0,28(sp)
    lw      a1,72(sp)
    call    insert
    sw      a0,24(sp)
    ld      a1,40(sp)
    sw      a0,0(a1)
    j       .L13_0
.branch_false_61:
    li      a4, 0
    mul     a6,a5,a0
    add     a4,a4,a6
    slli a4,a4,2
    la      s2, left_child
    add     a4,a4,s2
    li      s3, 0
    mul     s4,a5,a0
    add     s3,s3,s4
    slli s3,s3,2
    la      s5, left_child
    add     s3,s3,s5
    lw      s6,0(s3)
    sb      s1,51(sp)
    sd      s3,8(sp)
    sw      s6,4(sp)
    sw      a0,76(sp)
    sw      a1,72(sp)
    sd      a2,56(sp)
    sb      a3,71(sp)
    sd      a4,16(sp)
    sw      a7,52(sp)
    lw      a0,4(sp)
    lw      a1,72(sp)
    call    insert
    sw      a0,0(sp)
    ld      a1,16(sp)
    sw      a0,0(a1)
    sw      a0,0(sp)
    sd      a1,16(sp)
    lw      a0,24(sp)
    ld      a1,40(sp)
    j       .L13_0
.L13_0:
.L14_0:
.L15_0:
    ld      ra,88(sp)
    ld      s0,80(sp)
    sw      a0,24(sp)
    lw      a0,76(sp)
    addi    sp,sp,96
    ret
    .globl delete
    .type delete,@function
delete:
    addi    sp,sp,-320
    sd      ra,312(sp)
    sd      s0,304(sp)
    addi    s0,sp,320
.L4_0:
    li      a2, -1
    xor     a3,a0,a2
    seqz    a3, a3
    bnez    a3, .branch_true_70
    j       .branch_false_70
.branch_true_70:
    li      a2, 0
    li      a4, 1
    sub     a5,a2,a4
    ld      ra,312(sp)
    ld      s0,304(sp)
    sw      a5,288(sp)
    sw      a0,300(sp)
    lw      a0,288(sp)
    addi    sp,sp,320
    ret
.branch_false_70:
.L5_0:
    li      a2, 0
    mul     a5,a4,a0
    add     a2,a2,a5
    slli a2,a2,2
    la      a6, value
    add     a2,a2,a6
    lw      a7,0(a2)
    slt     s1,a7,a1
    bnez    s1, .branch_true_73
    j       .branch_false_73
.branch_true_73:
    li      a4, 0
    mul     a6,a5,a0
    add     a4,a4,a6
    slli a4,a4,2
    la      s2, right_child
    add     a4,a4,s2
    li      s3, 0
    mul     s4,a5,a0
    add     s3,s3,s4
    slli s3,s3,2
    la      s5, right_child
    add     s3,s3,s5
    lw      s6,0(s3)
    sb      s1,275(sp)
    sd      s3,256(sp)
    sw      s6,252(sp)
    sw      a0,300(sp)
    sw      a1,296(sp)
    sd      a2,280(sp)
    sb      a3,295(sp)
    sd      a4,264(sp)
    sw      a7,276(sp)
    lw      a0,252(sp)
    lw      a1,296(sp)
    call    delete
    sw      a0,248(sp)
    ld      a1,264(sp)
    sw      a0,0(a1)
    j       .L10_0
.branch_false_73:
    li      a4, 0
    mul     a6,a5,a0
    add     a4,a4,a6
    slli a4,a4,2
    la      s2, value
    add     a4,a4,s2
    lw      s3,0(a4)
    slt     s4,a1,s3
    bnez    s4, .branch_true_76
    j       .branch_false_76
.branch_true_76:
    li      a5, 0
    mul     s2,a6,a0
    add     a5,a5,s2
    slli a5,a5,2
    la      s5, left_child
    add     a5,a5,s5
    li      s6, 0
    mul     s7,a6,a0
    add     s6,s6,s7
    slli s6,s6,2
    la      s8, left_child
    add     s6,s6,s8
    lw      s9,0(s6)
    sb      s1,275(sp)
    sw      s3,236(sp)
    sb      s4,235(sp)
    sd      s6,216(sp)
    sw      s9,212(sp)
    sw      a0,300(sp)
    sw      a1,296(sp)
    sd      a2,280(sp)
    sb      a3,295(sp)
    sd      a4,240(sp)
    sd      a5,224(sp)
    sw      a7,276(sp)
    lw      a0,212(sp)
    lw      a1,296(sp)
    call    delete
    sw      a0,208(sp)
    ld      a1,224(sp)
    sw      a0,0(a1)
    j       .L9_0
.branch_false_76:
    li      a5, 0
    mul     s2,a6,a0
    add     a5,a5,s2
    slli a5,a5,2
    la      s5, right_child
    add     a5,a5,s5
    lw      s6,0(a5)
    li      s7, -1
    xor     s8,s6,s7
    seqz    s8, s8
    li      s9, 0
    mul     s10,a6,a0
    add     s9,s9,s10
    slli s9,s9,2
    la      s11, left_child
    add     s9,s9,s11
    lw      a6,0(s9)
    xor     s2,a6,s7
    seqz    s2, s2
    and     s5,s2,s8
    bnez    s5, .branch_true_79
    j       .branch_false_79
.branch_true_79:
    li      s7, 0
    li      s10, 1
    sub     s11,s7,s10
    ld      ra,312(sp)
    ld      s0,304(sp)
    sw      s11,172(sp)
    sw      a0,300(sp)
    lw      a0,172(sp)
    addi    sp,sp,320
    ret
.branch_false_79:
    li      s7, 0
    mul     s11,s10,a0
    add     s7,s7,s11
    slli s7,s7,2
    la      s10, right_child
    add     s7,s7,s10
    lw      s10,0(s7)
    li      s11, -1
    sw      a0,300(sp)
    xor     a0,s10,s11
    seqz    a0, a0
    li      s11, 0
    sb      a0,155(sp)
    sw      a1,296(sp)
    sd      a2,280(sp)
    mul     a2,a0,a1
    add     s11,s11,a2
    slli s11,s11,2
    la      a0, left_child
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a2, -1
    sw      a1,300(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    lb      a2,155(sp)
    sw      a0,140(sp)
    or      a0,a1,a2
    sd      s11,144(sp)
    bnez    a0, .branch_true_82
    j       .branch_false_82
.branch_true_82:
    li      s11, 0
    sb      a0,138(sp)
    sb      a1,139(sp)
    sb      a2,155(sp)
    mul     a2,a0,a1
    add     s11,s11,a2
    slli s11,s11,2
    la      a0, left_child
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a2, -1
    sw      a1,300(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_84
    j       .branch_false_84
.branch_true_84:
    li      a2, 0
    sw      a0,124(sp)
    sb      a1,123(sp)
    sb      a3,295(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    la      a0, right_child
    add     a2,a2,a0
    lw      a0,0(a2)
    ld      ra,312(sp)
    ld      s0,304(sp)
    sw      a0,108(sp)
    lw      a0,108(sp)
    addi    sp,sp,320
    ret
.branch_false_84:
    li      a2, 0
    sw      a0,124(sp)
    sb      a1,123(sp)
    sb      a3,295(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    la      a0, left_child
    add     a2,a2,a0
    lw      a0,0(a2)
    ld      ra,312(sp)
    ld      s0,304(sp)
    sw      a0,92(sp)
    lw      a0,92(sp)
    addi    sp,sp,320
    ret
.L6_0:
.branch_false_82:
    li      s11, 0
    sb      a0,138(sp)
    sb      a1,139(sp)
    sb      a2,155(sp)
    mul     a2,a0,a1
    add     s11,s11,a2
    slli s11,s11,2
    la      a0, right_child
    add     s11,s11,a0
    lw      a0,0(s11)
    sb      s1,275(sp)
    sb      s2,179(sp)
    sw      s3,236(sp)
    sb      s4,235(sp)
    sb      s5,178(sp)
    sw      s6,196(sp)
    sd      s7,160(sp)
    sb      s8,195(sp)
    sd      s9,184(sp)
    sw      s10,156(sp)
    sd      s11,80(sp)
    sw      a0,76(sp)
    sw      a1,300(sp)
    sb      a3,295(sp)
    sd      a4,240(sp)
    sd      a5,200(sp)
    sw      a6,180(sp)
    sw      a7,276(sp)
    lw      a0,76(sp)
    call    find_minimum
    sw      a0,72(sp)
    mv      a1, a0
    li      a2, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    la      a6, value
    add     a2,a2,a6
    li      a7, 0
    mul     s1,a3,a1
    add     a7,a7,s1
    slli a7,a7,2
    la      s2, value
    add     a7,a7,s2
    lw      s3,0(a7)
    sw      s3,0(a2)
    li      s4, 0
    mul     s5,a3,a4
    add     s4,s4,s5
    slli s4,s4,2
    la      s6, right_child
    add     s4,s4,s6
    li      s7, 0
    mul     s8,a3,a4
    add     s7,s7,s8
    slli s7,s7,2
    la      s9, right_child
    add     s7,s7,s9
    lw      s10,0(s7)
    li      s11, 0
    mul     a5,a3,a1
    add     s11,s11,a5
    slli s11,s11,2
    la      a3, value
    add     s11,s11,a3
    lw      a3,0(s11)
    sw      s3,44(sp)
    sd      s4,32(sp)
    sd      s7,24(sp)
    sw      s10,20(sp)
    sd      s11,8(sp)
    sw      a0,72(sp)
    sw      a1,68(sp)
    sd      a2,56(sp)
    sw      a3,4(sp)
    sw      a4,300(sp)
    sd      a7,48(sp)
    lw      a0,20(sp)
    lw      a1,4(sp)
    call    delete
    sw      a0,0(sp)
    ld      a1,32(sp)
    sw      a0,0(a1)
    j       .L7_0
.L7_0:
.L8_0:
.L9_0:
.L10_0:
.L11_0:
    ld      ra,312(sp)
    ld      s0,304(sp)
    sw      a0,248(sp)
    lw      a0,300(sp)
    addi    sp,sp,320
    ret
    .globl inorder
    .type inorder,@function
inorder:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
.L3_0:
    li      a1, -1
    xor     a2,a0,a1
    snez    a2, a2
    bnez    a2, .branch_true_96
    j       .branch_false_96
.branch_true_96:
    li      a1, 0
    mul     a4,a3,a0
    add     a1,a1,a4
    slli a1,a1,2
    la      a5, left_child
    add     a1,a1,a5
    lw      a6,0(a1)
    sw      a0,52(sp)
    sd      a1,40(sp)
    sb      a2,51(sp)
    sw      a6,36(sp)
    lw      a0,36(sp)
    call    inorder
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, value
    add     a0,a0,a4
    lw      a5,0(a0)
    sd      a0,24(sp)
    sw      a2,52(sp)
    sw      a5,20(sp)
    lw      a0,20(sp)
    call    putint
    li      a0, 32
    call    putch
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, right_child
    add     a0,a0,a4
    lw      a5,0(a0)
    sd      a0,8(sp)
    sw      a2,52(sp)
    sw      a5,4(sp)
    lw      a0,4(sp)
    call    inorder
    lw      a0,52(sp)
    lb      a2,51(sp)
    j       .branch_false_96
.branch_false_96:
    ld      ra,64(sp)
    ld      s0,56(sp)
    addi    sp,sp,72
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
.L0_0:
    la      a0, now
    li      a1, 0
    sw      a1,0(a0)
    call    getint
    sw      a0,60(sp)
    mv      a1, a0
    j       .L1_0
.L1_0:
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
    seqz    a4, a3
    bnez    a4, .branch_true_107
    j       .branch_false_107
.branch_true_107:
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a0,60(sp)
    li      a0, 0
    addi    sp,sp,80
    ret
.branch_false_107:
.L2_0:
    sw      a0,60(sp)
    sw      a1,56(sp)
    sb      a3,55(sp)
    sb      a4,54(sp)
    call    getint
    sw      a0,48(sp)
    sw      a0,48(sp)
    lw      a0,48(sp)
    call    new_node
    sw      a0,44(sp)
    mv      a1, a0
    li      a2, 1
    j       .while.head_111
.while.head_111:
    lw      a3,56(sp)
    slt     a4,a2,a3
    bnez    a4, .while.body_111
    j       .while.exit_111
.while.body_111:
    sw      a0,44(sp)
    sw      a1,40(sp)
    sw      a2,36(sp)
    sw      a3,56(sp)
    sb      a4,35(sp)
    call    getint
    sw      a0,28(sp)
    sw      a0,28(sp)
    lw      a0,40(sp)
    lw      a1,28(sp)
    call    insert
    sw      a0,24(sp)
    lw      a1,36(sp)
    li      a2, 1
    add     a3,a1,a2
    mv      a1, a3
    sw      a3,20(sp)
    sw      a0,24(sp)
    sw      a1,36(sp)
    lw      a2,36(sp)
    lw      a0,44(sp)
    lw      a1,40(sp)
    j       .while.head_111
.while.exit_111:
    sw      a0,44(sp)
    sw      a1,40(sp)
    sw      a2,36(sp)
    sw      a3,56(sp)
    sb      a4,35(sp)
    lw      a0,40(sp)
    call    inorder
    li      a0, 10
    call    putch
    call    getint
    sw      a0,16(sp)
    mv      a1, a0
    li      a2, 0
    j       .while.head_120
.while.head_120:
    slt     a3,a2,a1
    bnez    a3, .while.body_120
    j       .while.exit_120
.while.body_120:
    sw      a0,16(sp)
    sw      a1,56(sp)
    sw      a2,36(sp)
    sb      a3,15(sp)
    call    getint
    sw      a0,8(sp)
    sw      a0,8(sp)
    lw      a0,40(sp)
    lw      a1,8(sp)
    call    delete
    sw      a0,4(sp)
    mv      a1, a0
    lw      a2,36(sp)
    li      a3, 1
    add     a4,a2,a3
    mv      a2, a4
    sw      a4,0(sp)
    sw      a0,4(sp)
    sw      a1,40(sp)
    lw      a0,16(sp)
    lw      a1,56(sp)
    j       .while.head_120
.while.exit_120:
    sw      a0,16(sp)
    sw      a1,56(sp)
    sw      a2,36(sp)
    sb      a3,15(sp)
    lw      a0,40(sp)
    call    inorder
    li      a0, 10
    call    putch
    ld      ra,72(sp)
    ld      s0,64(sp)
    li      a0, 0
    addi    sp,sp,80
    ret
.section ___var
    .data
    .align 4
    .globl now
    .type now,@object
now:
    .word 0
    .align 4
    .globl right_child
    .type right_child,@object
right_child:
    .zero 40000
    .align 4
    .globl left_child
    .type left_child,@object
left_child:
    .zero 40000
    .align 4
    .globl value
    .type value,@object
value:
    .zero 40000
    .align 4
    .globl maxNode
    .type maxNode,@object
maxNode:
    .word 10000
    .align 4
    .globl LF
    .type LF,@object
LF:
    .word 10
    .align 4
    .globl space
    .type space,@object
space:
    .word 32
