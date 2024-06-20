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
    .globl MAX
    .type MAX,@function
MAX:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L5_0:
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_20
    j       .branch_false_20
.branch_true_20:
    ld      ra,24(sp)
    ld      s0,16(sp)
    addi    sp,sp,32
    ret
.branch_false_20:
    slt     a3,a1,a0
    bnez    a3, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    ld      ra,24(sp)
    ld      s0,16(sp)
    addi    sp,sp,32
    ret
.branch_false_23:
    ld      ra,24(sp)
    ld      s0,16(sp)
    mv      a0, a1
    addi    sp,sp,32
    ret
.L6_0:
.L7_0:
    .globl max_sum_nonadjacent
    .type max_sum_nonadjacent,@function
max_sum_nonadjacent:
    addi    sp,sp,-256
    sd      ra,248(sp)
    sd      s0,240(sp)
    addi    s0,sp,256
.L4_0:
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    li      a6, 0
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
    sd      a7,0(a2)
    li      s1, 0
    li      s2, 1
    add     s1,s1,a5
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    li      s3, 0
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
    li      s4, 0
    add     s4,s4,a0
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
    sd      s1,128(sp)
    sd      s3,120(sp)
    sd      s4,104(sp)
    sd      a0,232(sp)
    sw      a1,228(sp)
    call    MAX
    sw      a0,96(sp)
    sd      a0,0(a1)
    li      s1, 2
    j       .while.head_34
.while.head_34:
    slt     s3,s1,s2
    bnez    s3, .while.body_34
    j       .while.exit_34
.while.body_34:
    li      s4, 0
    add     s4,s4,a5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s5, 0
    mul     s6,a3,s1
    add     s5,s5,s6
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
    li      s7, 2
    sub     s8,s1,s7
    li      s9, 0
    add     s9,s9,a5
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    add     a3,s10,s11
    li      a4, 1
    sub     s7,a4,s1
    li      a4, 0
    sw      a0,96(sp)
    li      a0, 1
    add     a4,a4,a5
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    sw      s1,92(sp)
    sw      s2,228(sp)
    sb      s3,91(sp)
    sd      s4,80(sp)
    sd      s5,72(sp)
    sd      s6,232(sp)
    sw      s7,44(sp)
    sw      s8,64(sp)
    sd      s9,56(sp)
    sw      s10,52(sp)
    sw      s11,68(sp)
    sw      a3,48(sp)
    sd      a1,128(sp)
    call    MAX
    sw      a0,24(sp)
    sd      a0,0(a1)
    li      s1, 1
    add     s2,a3,s1
    j       .while.head_34
.while.exit_34:
    sub     s4,s3,s1
    li      s5, 0
    add     s5,s5,a5
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    ld      ra,248(sp)
    ld      s0,240(sp)
    lw      a0,4(sp)
    addi    sp,sp,256
    ret
    .globl longest_common_subseq
    .type longest_common_subseq,@function
longest_common_subseq:
    addi    sp,sp,-1232
    sd      ra,1224(sp)
    sd      s0,1216(sp)
    addi    s0,sp,1232
.L1_0:
    li      a4, 1
    j       .while.head_46
.while.head_46:
    slt     a5,a1,a4
    xori    a5,a5,1
    bnez    a5, .while.body_46
    j       .while.exit_46
.while.body_46:
    li      a6, 1
    j       .while.head_50
.while.head_50:
    slt     a7,a3,a6
    xori    a7,a7,1
    bnez    a7, .while.body_50
    j       .while.exit_50
.while.body_50:
    li      s1, 1
    sub     s2,a6,s1
    li      s3, 0
    add     s3,s3,a2
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
    sub     s4,a4,s1
    li      s5, 0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
    xor     s8,s6,s7
    seqz    s8, s8
    bnez    s8, .branch_true_53
    j       .branch_false_53
.branch_true_53:
    li      s9, 0
    li      s10, 16
    mul     s11,s10,a4
    add     s9,s9,s11
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    sub     s10,a6,s1
    sd      a0,1208(sp)
    sub     a0,a4,s1
    li      s1, 0
    sw      a0,96(sp)
    li      a0, 16
    sw      a1,1204(sp)
    add     s1,s1,s11
    li      a0, 1
    add     s1,s1,s11
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    sw      a1,96(sp)
    li      a1, 1
    sd      a2,1192(sp)
    add     a2,a0,a1
    sd      a2,0(s9)
    j       .L2_0
.branch_false_53:
    li      a1, 0
    sw      a0,84(sp)
    li      a0, 16
    add     a1,a1,s11
    li      a0, 1
    add     a1,a1,s11
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,64(sp)
    sub     a1,a4,a0
    li      a0, 0
    sw      a1,60(sp)
    li      a1, 16
    sw      a2,80(sp)
    add     a0,a0,s11
    li      a1, 1
    add     a0,a0,s11
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,48(sp)
    sub     a0,a6,a1
    li      a1, 0
    sw      a0,40(sp)
    li      a0, 16
    add     a1,a1,s11
    li      a0, 1
    sw      a2,60(sp)
    add     a1,a1,s11
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s1,88(sp)
    sw      s2,148(sp)
    sd      s3,136(sp)
    sw      s4,128(sp)
    sd      s5,120(sp)
    sw      s6,116(sp)
    sw      s7,132(sp)
    sb      s8,115(sp)
    sd      s9,104(sp)
    sw      s10,100(sp)
    sw      s11,1184(sp)
    sd      a1,32(sp)
    call    MAX
    sw      a0,24(sp)
    sd      a0,0(a1)
    j       .L2_0
.L2_0:
.L3_0:
    li      s1, 1
    add     s2,a6,s1
    j       .while.head_50
.while.exit_50:
    add     s3,a4,s1
    j       .while.head_46
.while.exit_46:
    li      s4, 0
    li      s5, 16
    mul     s7,s5,s6
    add     s4,s4,s7
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    ld      ra,1224(sp)
    ld      s0,1216(sp)
    lw      a0,4(sp)
    addi    sp,sp,1232
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-456
    sd      ra,448(sp)
    sd      s0,440(sp)
    addi    s0,sp,456
.L0_0:
    li      a0, 0
    li      a1, 1
    li      a2, 21
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a4, 0
    sd      a4,0(a0)
    li      a5, 0
    li      a6, 6
    add     a5,a5,a3
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    sd      a4,0(a5)
    li      a7, 0
    li      s1, 13
    add     a7,a7,a3
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    li      s2, 7
    sd      s2,0(a7)
    li      s3, 0
    li      s4, 17
    add     s3,s3,a3
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s5, 4
    sd      s5,0(s3)
    li      s6, 0
    li      s7, 10
    add     s6,s6,a3
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    sd      s5,0(s6)
    li      s8, 0
    li      s9, 11
    add     s8,s8,a3
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      s10, 8
    sd      s10,0(s8)
    li      s11, 0
    li      a2, 18
    add     s11,s11,a3
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    sd      s10,0(s11)
    li      a1, 0
    li      a2, 1
    li      a4, 2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s5,0(a1)
    li      a2, 0
    li      a4, 1
    li      a6, 5
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    sd      s2,0(a2)
    li      a4, 0
    li      a6, 1
    li      s1, 15
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    sd      s2,0(a4)
    li      a6, 0
    li      s1, 1
    add     a6,a6,a3
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    li      s1, 2
    sd      s1,0(a6)
    li      s1, 0
    li      s2, 1
    li      s4, 20
    add     s1,s1,a3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    li      s2, 7
    sd      s2,0(s1)
    li      s2, 0
    li      s4, 1
    li      s5, 7
    add     s2,s2,a3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    sd      s4,0(s2)
    li      s4, 0
    li      s5, 1
    li      s7, 1
    add     s4,s4,a3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s5, 7
    sd      s5,0(s4)
    li      s5, 0
    add     s5,s5,a3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    li      s7, 9
    sd      s7,0(s5)
    li      s7, 0
    li      s9, 1
    li      s10, 9
    add     s7,s7,a3
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    li      s9, 3
    sd      s9,0(s7)
    li      s9, 0
    li      s10, 1
    sd      a0,432(sp)
    li      a0, 12
    add     s9,s9,a3
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    li      a0, 3
    sd      a0,0(s9)
    li      a0, 0
    sd      a1,376(sp)
    li      a1, 16
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s10,0(a0)
    li      a1, 0
    sd      a0,296(sp)
    li      a0, 19
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,288(sp)
    li      a1, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 8
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,280(sp)
    li      a0, 3
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s10,0(a1)
    li      a0, 0
    sd      a1,272(sp)
    li      a1, 14
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,264(sp)
    li      a0, 6
    sd      a2,368(sp)
    mul     a2,s10,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,192(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 9
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,184(sp)
    li      a0, 7
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,176(sp)
    li      a1, 2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,168(sp)
    li      a0, 8
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 6
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,160(sp)
    li      a1, 9
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 8
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,152(sp)
    li      a0, 3
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s10,0(a1)
    li      a0, 0
    sd      a1,144(sp)
    li      a1, 11
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s10,0(a0)
    li      a1, 0
    sd      a0,136(sp)
    li      a0, 12
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 5
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,128(sp)
    li      a1, 15
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s10,0(a0)
    li      a1, 0
    sd      a0,120(sp)
    li      a0, 14
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,112(sp)
    li      a1, 10
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,104(sp)
    li      a0, 4
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,96(sp)
    li      a1, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 3
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,88(sp)
    li      a0, 13
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,80(sp)
    li      a1, 5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    sd      s1,344(sp)
    sd      s2,336(sp)
    sd      s3,408(sp)
    sd      s4,328(sp)
    sd      s5,320(sp)
    sd      s6,400(sp)
    sd      s7,312(sp)
    sd      s8,392(sp)
    sd      s9,304(sp)
    sd      s11,384(sp)
    sw      a3,260(sp)
    sd      a0,72(sp)
    li      a1, 15
    call    max_sum_nonadjacent
    sw      a0,8(sp)
    sw      a0,8(sp)
    call    putint
    li      a0, 10
    call    putch
    li      a1, 15
    sw      a2,68(sp)
    li      a3, 13
    call    longest_common_subseq
    sw      a0,4(sp)
    sw      a0,4(sp)
    call    putint
    li      a0, 10
    call    putch
    ld      ra,448(sp)
    ld      s0,440(sp)
    li      a0, 0
    addi    sp,sp,456
    ret
