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
    sw      a0,12(sp)
    lw      a0,12(sp)
    addi    sp,sp,32
    ret
.branch_false_20:
    slt     a3,a1,a0
    bnez    a3, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    lw      a0,12(sp)
    addi    sp,sp,32
    ret
.branch_false_23:
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a1,8(sp)
    sw      a0,12(sp)
    lw      a0,8(sp)
    addi    sp,sp,32
    ret
.L6_0:
.L7_0:
    .globl max_sum_nonadjacent
    .type max_sum_nonadjacent,@function
max_sum_nonadjacent:
    addi    sp,sp,-264
    sd      ra,256(sp)
    sd      s0,248(sp)
    addi    s0,sp,264
.L4_0:
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,160
    sd      a0,240(sp)
    sw      a1,236(sp)
    sd      a2,224(sp)
    ld      a0,224(sp)
    li      a1, 0
    li      a2, 64
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,160
    li      a4, 0
    mul     a5,a1,a2
    add     a4,a4,a5
    slli a4,a4,2
    ld      a6,240(sp)
    add     a4,a4,a6
    lw      a7,0(a4)
    sw      a7,0(a0)
    li      s1, 0
    li      s2, 1
    mul     s3,a1,s2
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,160
    li      s4, 0
    mul     s5,s2,a2
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,a6
    lw      s6,0(s4)
    li      s7, 0
    mul     s8,s2,a1
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,a6
    lw      s9,0(s7)
    sd      s1,128(sp)
    sd      s4,120(sp)
    sw      s6,116(sp)
    sd      s7,104(sp)
    sw      s9,100(sp)
    sd      a0,152(sp)
    sd      a4,144(sp)
    sd      a6,240(sp)
    sw      a7,140(sp)
    lw      a0,116(sp)
    lw      a1,100(sp)
    call    MAX
    sw      a0,96(sp)
    ld      a1,128(sp)
    sw      a0,0(a1)
    li      a2, 2
    j       .while.head_34
.while.head_34:
    lw      a3,236(sp)
    slt     a4,a2,a3
    bnez    a4, .while.body_34
    j       .while.exit_34
.while.body_34:
    li      a5, 0
    li      a6, 1
    mul     a7,a6,a2
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,160
    li      s1, 0
    mul     s2,a6,a2
    add     s1,s1,s2
    slli s1,s1,2
    ld      s3,240(sp)
    add     s1,s1,s3
    lw      s4,0(s1)
    li      s5, 2
    sub     s6,a2,s5
    li      s7, 0
    mul     s8,a6,s6
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,160
    lw      s9,0(s7)
    add     s10,s9,s4
    sub     s11,a2,a6
    li      a6, 0
    li      a7, 1
    mul     s2,a7,s11
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,160
    lw      a7,0(a6)
    sd      s1,72(sp)
    sd      s3,240(sp)
    sw      s4,68(sp)
    sw      s6,64(sp)
    sd      s7,56(sp)
    sw      s9,52(sp)
    sw      s10,48(sp)
    sw      s11,44(sp)
    sw      a0,96(sp)
    sd      a1,128(sp)
    sw      a2,92(sp)
    sw      a3,236(sp)
    sb      a4,91(sp)
    sd      a5,80(sp)
    sd      a6,32(sp)
    sw      a7,28(sp)
    lw      a0,48(sp)
    lw      a1,28(sp)
    call    MAX
    sw      a0,24(sp)
    ld      a1,80(sp)
    sw      a0,0(a1)
    lw      a2,92(sp)
    li      a3, 1
    add     a4,a2,a3
    mv      a2, a4
    sw      a0,24(sp)
    sd      a1,80(sp)
    sw      a4,20(sp)
    lw      a0,96(sp)
    ld      a1,128(sp)
    j       .while.head_34
.while.exit_34:
    li      a5, 1
    sub     a6,a3,a5
    li      a7, 0
    mul     s1,a5,a6
    add     a7,a7,s1
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,160
    lw      s2,0(a7)
    ld      ra,256(sp)
    ld      s0,248(sp)
    sw      s2,4(sp)
    sw      a0,96(sp)
    lw      a0,4(sp)
    addi    sp,sp,264
    ret
    .globl longest_common_subseq
    .type longest_common_subseq,@function
longest_common_subseq:
    addi    sp,sp,-1240
    sd      ra,1232(sp)
    sd      s0,1224(sp)
    addi    s0,sp,1240
.L1_0:
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,160
    sd      a0,1216(sp)
    sw      a1,1212(sp)
    sd      a2,1200(sp)
    sw      a3,1196(sp)
    sd      a4,1184(sp)
    ld      a0,1184(sp)
    li      a1, 0
    li      a2, 1024
    call    memset
    li      a0, 1
    j       .while.head_46
.while.head_46:
    lw      a1,1212(sp)
    slt     a2,a1,a0
    xori    a2,a2,1
    bnez    a2, .while.body_46
    j       .while.exit_46
.while.body_46:
    li      a3, 1
    j       .while.head_50
.while.head_50:
    lw      a4,1196(sp)
    slt     a5,a4,a3
    xori    a5,a5,1
    bnez    a5, .while.body_50
    j       .while.exit_50
.while.body_50:
    li      a6, 1
    sub     a7,a3,a6
    li      s1, 0
    mul     s2,a6,a7
    add     s1,s1,s2
    slli s1,s1,2
    ld      s3,1200(sp)
    add     s1,s1,s3
    lw      s4,0(s1)
    sub     s5,a0,a6
    li      s6, 0
    mul     s7,a6,s5
    add     s6,s6,s7
    slli s6,s6,2
    ld      s8,1216(sp)
    add     s6,s6,s8
    lw      s9,0(s6)
    xor     s10,s9,s4
    seqz    s10, s10
    bnez    s10, .branch_true_53
    j       .branch_false_53
.branch_true_53:
    li      a6, 0
    li      s2, 16
    mul     s7,s2,a0
    add     a6,a6,s7
    li      s11, 1
    mul     s2,s11,a3
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,160
    sub     s2,a3,s11
    sub     s7,a0,s11
    li      s11, 0
    sw      a0,156(sp)
    li      a0, 16
    sw      a1,1212(sp)
    mul     a1,a0,s7
    add     s11,s11,a1
    li      a0, 1
    mul     a1,a0,s2
    add     s11,s11,a1
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,160
    lw      a0,0(s11)
    li      a1, 1
    sb      a2,151(sp)
    add     a2,a0,a1
    sw      a2,0(a6)
    j       .L2_0
.branch_false_53:
    li      a6, 0
    li      s2, 16
    mul     s7,s2,a0
    add     a6,a6,s7
    li      s11, 1
    mul     s2,s11,a3
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,160
    sub     s2,a0,s11
    li      s7, 0
    li      s11, 16
    sw      a0,156(sp)
    mul     a0,s11,s2
    add     s7,s7,a0
    li      a0, 1
    mul     s11,a0,a3
    add     s7,s7,s11
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,160
    lw      a0,0(s7)
    li      s11, 1
    sw      a0,44(sp)
    sub     a0,a3,s11
    li      s11, 0
    sw      a0,40(sp)
    li      a0, 16
    sw      a1,1212(sp)
    lw      a1,156(sp)
    sb      a2,151(sp)
    mul     a2,a0,a1
    add     s11,s11,a2
    li      a0, 1
    lw      a2,40(sp)
    sw      a1,156(sp)
    mul     a1,a0,a2
    add     s11,s11,a1
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,160
    lw      a0,0(s11)
    sd      s1,136(sp)
    sw      s2,60(sp)
    sd      s3,1200(sp)
    sw      s4,132(sp)
    sw      s5,128(sp)
    sd      s6,120(sp)
    sd      s7,48(sp)
    sd      s8,1216(sp)
    sw      s9,116(sp)
    sb      s10,115(sp)
    sd      s11,32(sp)
    sw      a0,28(sp)
    sw      a2,40(sp)
    sw      a3,152(sp)
    sw      a4,1196(sp)
    sb      a5,150(sp)
    sd      a6,64(sp)
    sw      a7,144(sp)
    lw      a0,44(sp)
    lw      a1,28(sp)
    call    MAX
    sw      a0,24(sp)
    ld      a1,64(sp)
    sw      a0,0(a1)
    sd      a1,64(sp)
    sw      a0,24(sp)
    lw      s5,128(sp)
    lb      a5,150(sp)
    lw      s4,132(sp)
    lw      s7,96(sp)
    ld      s1,136(sp)
    lw      s9,116(sp)
    lw      a3,152(sp)
    lw      a7,144(sp)
    ld      s3,1200(sp)
    lw      s2,100(sp)
    ld      a6,104(sp)
    ld      s11,88(sp)
    lw      a0,84(sp)
    lb      s10,115(sp)
    ld      s6,120(sp)
    lw      a4,1196(sp)
    lw      a2,80(sp)
    ld      s8,1216(sp)
    j       .L2_0
.L2_0:
.L3_0:
    li      a1, 1
    sw      a0,84(sp)
    add     a0,a3,a1
    mv      a3, a0
    sw      s5,128(sp)
    sb      a5,150(sp)
    sw      s4,132(sp)
    sw      s7,96(sp)
    sd      s1,136(sp)
    sw      s9,116(sp)
    sw      a7,144(sp)
    sd      s3,1200(sp)
    sw      s2,100(sp)
    sd      a6,104(sp)
    sd      s11,88(sp)
    sw      a0,76(sp)
    sb      s10,115(sp)
    sd      s6,120(sp)
    sw      a4,1196(sp)
    sw      a2,80(sp)
    sd      s8,1216(sp)
    lw      a1,1212(sp)
    lw      a0,156(sp)
    lb      a2,151(sp)
    j       .while.head_50
.while.exit_50:
    li      a6, 1
    add     a7,a0,a6
    mv      a0, a7
    sb      a5,150(sp)
    sw      a1,1212(sp)
    sw      a3,152(sp)
    sw      a7,20(sp)
    sw      a4,1196(sp)
    sb      a2,151(sp)
    j       .while.head_46
.while.exit_46:
    li      a3, 0
    li      a4, 16
    mul     a5,a4,a1
    add     a3,a3,a5
    li      a6, 1
    lw      a7,1196(sp)
    mul     s1,a6,a7
    add     a3,a3,s1
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,160
    lw      s2,0(a3)
    ld      ra,1232(sp)
    ld      s0,1224(sp)
    sw      s2,4(sp)
    sw      a0,156(sp)
    lw      a0,4(sp)
    addi    sp,sp,1240
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-504
    sd      ra,496(sp)
    sd      s0,488(sp)
    addi    s0,sp,504
.L0_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,244
    sd      a0,480(sp)
    ld      a0,480(sp)
    li      a1, 0
    li      a2, 60
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 17
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,244
    li      a4, 3
    sw      a4,0(a0)
    li      a5, 0
    li      a6, 2
    mul     a7,a1,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,244
    li      s1, 4
    sw      s1,0(a5)
    li      s2, 0
    li      s3, 1
    mul     s4,a1,s3
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,244
    li      s5, 7
    sw      s5,0(s2)
    li      s6, 0
    li      s7, 6
    mul     s8,s3,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,244
    sw      s5,0(s6)
    li      s9, 0
    li      s10, 10
    mul     s11,s3,s10
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,244
    li      a1, 9
    sw      a1,0(s9)
    li      a1, 0
    li      a2, 14
    mul     a3,s3,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,244
    li      a2, 8
    sw      a2,0(a1)
    li      a2, 0
    li      a3, 16
    mul     a4,s3,a3
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,244
    li      a3, 3
    sw      a3,0(a2)
    li      a3, 0
    li      a4, 11
    mul     a6,s3,a4
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,244
    li      a4, 3
    sw      a4,0(a3)
    li      a4, 0
    li      a6, 3
    mul     a7,s3,a6
    add     a4,a4,a7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,244
    sw      s3,0(a4)
    li      a6, 0
    mul     a7,s3,s1
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,244
    li      a7, 2
    sw      a7,0(a6)
    li      a7, 0
    li      s1, 8
    mul     s4,s3,s1
    add     a7,a7,s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,244
    sw      s3,0(a7)
    li      s1, 0
    li      s4, 9
    mul     s5,s3,s4
    add     s1,s1,s5
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,244
    sw      s3,0(s1)
    li      s3, 0
    li      s4, 1
    li      s5, 12
    mul     s7,s4,s5
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,244
    li      s4, 4
    sw      s4,0(s3)
    li      s4, 0
    li      s5, 1
    li      s7, 13
    mul     s8,s5,s7
    add     s4,s4,s8
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,244
    li      s5, 4
    sw      s5,0(s4)
    li      s5, 0
    li      s7, 1
    li      s8, 15
    mul     s10,s7,s8
    add     s5,s5,s10
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,244
    li      s7, 8
    sw      s7,0(s5)
    li      s7, 0
    li      s8, 1
    li      s10, 18
    mul     s11,s8,s10
    add     s7,s7,s11
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,244
    li      s8, 7
    sw      s8,0(s7)
    li      s8, 0
    li      s10, 1
    li      s11, 21
    sd      a0,472(sp)
    mul     a0,s10,s11
    add     s8,s8,a0
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,244
    li      a0, 0
    sw      a0,0(s8)
    li      a0, 0
    li      s11, 7
    sd      a1,432(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,244
    li      a1, 0
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 20
    sd      a0,336(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,244
    li      a0, 0
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 5
    sd      a1,328(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,244
    li      a1, 7
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 0
    sd      a0,320(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,244
    li      a0, 8
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 19
    sd      a1,312(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,244
    li      a1, 7
    sw      a1,0(a0)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,52
    sd      s1,384(sp)
    sd      s2,456(sp)
    sd      s3,376(sp)
    sd      s4,368(sp)
    sd      s5,360(sp)
    sd      s6,448(sp)
    sd      s7,352(sp)
    sd      s8,344(sp)
    sd      s9,440(sp)
    sd      a0,304(sp)
    sd      a1,232(sp)
    sd      a2,424(sp)
    sd      a3,416(sp)
    sd      a4,408(sp)
    sd      a5,464(sp)
    sd      a6,400(sp)
    sd      a7,392(sp)
    ld      a0,232(sp)
    li      a1, 0
    li      a2, 52
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 7
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,52
    li      a4, 4
    sw      a4,0(a0)
    li      a5, 0
    li      a6, 15
    mul     a7,a1,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,52
    li      s1, 5
    sw      s1,0(a5)
    li      s2, 0
    mul     s3,a1,s1
    add     s2,s2,s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,52
    li      s4, 2
    sw      s4,0(s2)
    li      s5, 0
    li      s6, 6
    mul     s7,a1,s6
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,52
    sw      a4,0(s5)
    li      s8, 0
    li      s9, 12
    mul     s10,a1,s9
    add     s8,s8,s10
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,52
    li      s11, 0
    sw      s11,0(s8)
    li      a1, 0
    li      a2, 1
    li      a3, 1
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,52
    li      a2, 9
    sw      a2,0(a1)
    li      a2, 0
    li      a4, 9
    mul     a6,a3,a4
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,52
    li      a3, 3
    sw      a3,0(a2)
    li      a3, 0
    li      a4, 1
    li      a6, 8
    mul     a7,a4,a6
    add     a3,a3,a7
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,52
    li      a4, 3
    sw      a4,0(a3)
    li      a4, 0
    li      a6, 1
    li      a7, 10
    mul     s1,a6,a7
    add     a4,a4,s1
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,52
    sw      s6,0(a4)
    li      a6, 0
    li      a7, 1
    mul     s1,a7,s4
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,52
    li      a7, 7
    sw      a7,0(a6)
    li      a7, 0
    li      s1, 1
    li      s3, 4
    mul     s4,s1,s3
    add     a7,a7,s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,52
    sw      s3,0(a7)
    li      s1, 0
    li      s3, 1
    mul     s4,s3,s11
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,52
    li      s3, 3
    sw      s3,0(s1)
    li      s3, 0
    li      s4, 1
    li      s6, 14
    mul     s7,s4,s6
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,52
    sw      s4,0(s3)
    li      s4, 0
    li      s6, 1
    li      s7, 11
    mul     s9,s6,s7
    add     s4,s4,s9
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,52
    li      s6, 8
    sw      s6,0(s4)
    li      s6, 0
    li      s7, 1
    li      s9, 3
    mul     s10,s7,s9
    add     s6,s6,s10
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,52
    sw      s7,0(s6)
    li      s7, 0
    li      s9, 1
    li      s10, 13
    mul     s11,s9,s10
    add     s7,s7,s11
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,52
    sw      s9,0(s7)
    li      s9, 0
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,244
    sd      s1,136(sp)
    sd      s2,208(sp)
    sd      s3,128(sp)
    sd      s4,120(sp)
    sd      s5,200(sp)
    sd      s6,112(sp)
    sd      s7,104(sp)
    sd      s8,192(sp)
    sd      s9,32(sp)
    sd      a0,224(sp)
    sd      a1,184(sp)
    sd      a2,176(sp)
    sd      a3,168(sp)
    sd      a4,160(sp)
    sd      a5,216(sp)
    sd      a6,152(sp)
    sd      a7,144(sp)
    ld      a0,32(sp)
    li      a1, 15
    call    max_sum_nonadjacent
    sw      a0,28(sp)
    sw      a0,28(sp)
    lw      a0,28(sp)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,244
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,52
    sd      a0,16(sp)
    sd      a1,8(sp)
    ld      a0,16(sp)
    li      a1, 15
    ld      a2,8(sp)
    li      a3, 13
    call    longest_common_subseq
    sw      a0,4(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    call    putint
    li      a0, 10
    call    putch
    ld      ra,496(sp)
    ld      s0,488(sp)
    li      a0, 0
    addi    sp,sp,504
    ret
