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
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L5_0:
    xor     a2,a0,a1
    sltiu   a2,a2,1
    bnez    a2, .branch_true_20
    j       .branch_false_20
.branch_true_20:
    ld      ra,40(sp)
    ld      s0,24(sp)
    mv      a0, a0
    addi    sp,sp,48
    ret
.branch_false_20:
    slt     a3,a1,a0
    bnez    a3, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    ld      ra,40(sp)
    ld      s0,24(sp)
    mv      a0, a0
    addi    sp,sp,48
    ret
.branch_false_23:
    ld      ra,40(sp)
    ld      s0,24(sp)
    mv      a0, a1
    addi    sp,sp,48
    ret
.L6_0:
.L7_0:
    .globl max_sum_nonadjacent
    .type max_sum_nonadjacent,@function
max_sum_nonadjacent:
    addi    sp,sp,-392
    sd      ra,384(sp)
    sd      s0,368(sp)
    addi    s0,sp,392
.L4_0:
    li      a4, 0
    li      a5, 1
    li      a6, 0
    mul     a7,a5,a6
    add     a4,a4,a7
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    li      s1, 0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
    mv      s2, s2
    sd      s2,0(a4)
    li      s3, 0
    li      s4, 1
    add     s3,s3,a7
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
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
    sd      s1,248(sp)
    sw      s2,240(sp)
    sd      s3,224(sp)
    sd      s5,208(sp)
    sd      s6,184(sp)
    sd      a0,352(sp)
    mv      a0, a0
    sw      a1,344(sp)
    mv      a1, a1
    call    MAX
    sw      a0,168(sp)
    mv      a1, a1
    sd      a0,0(a1)
    li      s1, 2
    mv      s2, s1
    j       .while.head_34
.while.head_34:
    mv      s3, s3
    slt     s4,s2,s3
    bnez    s4, .while.body_34
    j       .while.exit_34
.while.body_34:
    li      s5, 0
    add     s5,s5,a7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    li      s6, 0
    mul     s7,a5,s2
    add     s6,s6,s7
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
    sub     s8,s2,s1
    li      s9, 0
    add     s9,s9,a7
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    mv      s10, s10
    mv      s11, s11
    add     a5,s10,s11
    li      a6, 1
    sub     s1,a6,s2
    li      a6, 0
    sw      a0,168(sp)
    li      a0, 1
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    sw      s1,80(sp)
    sw      s2,160(sp)
    sw      s3,344(sp)
    sb      s4,159(sp)
    sd      s5,144(sp)
    sd      s6,136(sp)
    sd      s7,352(sp)
    sw      s8,120(sp)
    sd      s9,104(sp)
    sw      s10,96(sp)
    sw      s11,128(sp)
    sw      a5,88(sp)
    mv      a0, a0
    sd      a1,224(sp)
    mv      a1, a1
    call    MAX
    sw      a0,48(sp)
    mv      a1, a1
    sd      a0,0(a1)
    mv      a5, a5
    li      s1, 1
    add     s2,a5,s1
    j       .while.head_34
.while.exit_34:
    mv      s3, s3
    sub     s4,s3,s1
    li      s5, 0
    add     s5,s5,a7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    ld      ra,384(sp)
    ld      s0,368(sp)
    lw      a0,8(sp)
    addi    sp,sp,392
    ret
    .globl longest_common_subseq
    .type longest_common_subseq,@function
longest_common_subseq:
    addi    sp,sp,-1368
    sd      ra,1360(sp)
    sd      s0,1344(sp)
    addi    s0,sp,1368
.L1_0:
    mv      s6, s1
    j       .while.head_46
.while.head_46:
    slt     s7,s6,a1
    xori    s7,s7,1
    bnez    s7, .while.body_46
    j       .while.exit_46
.while.body_46:
    mv      s8, s1
    j       .while.head_50
.while.head_50:
    slt     s9,s8,a3
    xori    s9,s9,1
    bnez    s9, .while.body_50
    j       .while.exit_50
.while.body_50:
    sub     s10,s8,s1
    li      s11, 0
    add     s11,s11,a2
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
    sd      a0,1328(sp)
    sub     a0,s6,s1
    li      s1, 0
    sw      a0,216(sp)
    li      a0, 1
    sw      a1,1320(sp)
    mv      a1, a1
    sd      a2,1304(sp)
    mul     a2,a0,a1
    add     s1,s1,a2
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
    mv      a0, a0
    sw      a1,216(sp)
    mv      a1, a1
    sd      a2,1328(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    bnez    a2, .branch_true_53
    j       .branch_false_53
.branch_true_53:
    sw      a0,192(sp)
    li      a0, 0
    sw      a1,224(sp)
    li      a1, 16
    sb      a2,191(sp)
    mul     a2,a1,s6
    add     a0,a0,a2
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,183(sp)
    sub     a0,s8,a1
    sw      a0,176(sp)
    sub     a0,s6,a1
    li      a1, 0
    sw      a0,168(sp)
    li      a0, 16
    sw      a2,1288(sp)
    mv      a2, a2
    sw      a3,1296(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    li      a0, 1
    sw      a2,168(sp)
    mv      a2, a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,152(sp)
    li      a1, 1
    sw      a2,176(sp)
    add     a2,a0,a1
    mv      a1, a1
    sd      a2,0(a1)
    j       .L2_0
.branch_false_53:
    sw      a0,144(sp)
    li      a0, 0
    sd      a1,183(sp)
    li      a1, 16
    add     a0,a0,a3
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,112(sp)
    sub     a0,s6,a1
    li      a1, 0
    sw      a0,104(sp)
    li      a0, 16
    sw      a2,136(sp)
    mv      a2, a2
    add     a1,a1,a3
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,88(sp)
    sub     a1,s8,a0
    li      a0, 0
    sw      a1,72(sp)
    li      a1, 16
    add     a0,a0,a3
    li      a1, 1
    sw      a2,104(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s1,200(sp)
    sw      s2,40(sp)
    sw      s3,344(sp)
    sw      s4,32(sp)
    sd      s5,16(sp)
    sw      s6,260(sp)
    sb      s7,251(sp)
    sw      s8,252(sp)
    sb      s9,250(sp)
    sw      s10,244(sp)
    sd      s11,232(sp)
    sd      a0,56(sp)
    mv      a0, a0
    mv      a1, a1
    call    MAX
    sw      a0,40(sp)
    mv      a1, a1
    sd      a0,0(a1)
    j       .L2_0
.L2_0:
.L3_0:
    mv      s1, s1
    li      s2, 1
    add     s3,s1,s2
    j       .while.head_50
.while.exit_50:
    mv      s4, s4
    add     s5,s4,s2
    j       .while.head_46
.while.exit_46:
    li      s6, 0
    li      s7, 16
    mv      s8, s8
    add     s6,s6,a3
    mv      s9, s9
    add     s6,s6,a3
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    ld      ra,1360(sp)
    ld      s0,1344(sp)
    lw      a0,8(sp)
    addi    sp,sp,1368
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-792
    sd      ra,784(sp)
    sd      s0,768(sp)
    addi    s0,sp,792
.L0_0:
    li      s10, 0
    li      s11, 20
    mul     s7,s2,s11
    add     s10,s10,s7
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    li      s2, 7
    sd      s2,0(s10)
    li      s2, 0
    li      s11, 1
    sw      a0,40(sp)
    li      a0, 15
    add     s2,s2,s7
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    li      a0, 7
    sd      a0,0(s2)
    li      a0, 0
    sd      a1,112(sp)
    li      a1, 1
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,720(sp)
    li      a0, 10
    add     a1,a1,s7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,704(sp)
    li      a1, 12
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 3
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,688(sp)
    li      a0, 5
    add     a1,a1,s7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 7
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,672(sp)
    li      a1, 21
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,656(sp)
    li      a0, 7
    add     a1,a1,s7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s11,0(a1)
    li      a0, 0
    sd      a1,640(sp)
    li      a1, 0
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 8
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,624(sp)
    li      a0, 6
    add     a1,a1,s7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,608(sp)
    li      a1, 2
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 4
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,592(sp)
    li      a0, 8
    add     a1,a1,s7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,576(sp)
    li      a1, 9
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 3
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,560(sp)
    li      a0, 4
    add     a1,a1,s7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 2
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,544(sp)
    li      a1, 11
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 8
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,528(sp)
    li      a0, 13
    add     a1,a1,s7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 7
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,512(sp)
    li      a1, 3
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s11,0(a0)
    li      a1, 0
    sd      a0,496(sp)
    li      a0, 16
    add     a1,a1,s7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s11,0(a1)
    li      a0, 0
    sd      a1,480(sp)
    li      a1, 14
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,464(sp)
    li      a0, 17
    add     a1,a1,s7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,448(sp)
    li      a1, 18
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 8
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,432(sp)
    li      a0, 19
    add     a1,a1,s7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,416(sp)
    li      a1, 12
    sw      a2,72(sp)
    mul     a2,s11,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 5
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,336(sp)
    li      a0, 10
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,320(sp)
    li      a1, 2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,304(sp)
    li      a0, 8
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 6
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,288(sp)
    li      a1, 9
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 8
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,272(sp)
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,256(sp)
    li      a1, 5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,240(sp)
    li      a0, 7
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,224(sp)
    li      a1, 4
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,208(sp)
    li      a0, 13
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,192(sp)
    li      a1, 14
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 3
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,176(sp)
    li      a0, 11
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s11,0(a1)
    li      a0, 0
    sd      a1,160(sp)
    li      a1, 15
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s11,0(a0)
    li      a1, 0
    sd      a0,144(sp)
    li      a0, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,128(sp)
    li      a1, 6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 4
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,112(sp)
    li      a0, 3
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s11,0(a1)
    sw      s1,252(sp)
    sd      s2,736(sp)
    sw      s3,128(sp)
    sw      s4,260(sp)
    sw      s5,32(sp)
    sd      s6,16(sp)
    sw      s7,408(sp)
    sw      s8,1320(sp)
    sw      s9,1296(sp)
    sd      s10,752(sp)
    mv      a0, a0
    sd      a1,96(sp)
    li      a1, 15
    call    max_sum_nonadjacent
    sw      a0,16(sp)
    sw      a0,16(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    mv      a0, a0
    li      a1, 15
    sw      a2,88(sp)
    mv      a2, a2
    sw      a3,1288(sp)
    li      a3, 13
    call    longest_common_subseq
    sw      a0,8(sp)
    sw      a0,8(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    ld      ra,784(sp)
    ld      s0,768(sp)
    li      a0, 0
    addi    sp,sp,792
    ret
