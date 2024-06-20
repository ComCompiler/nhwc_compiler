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
    .globl main
    .type main,@function
main:
    addi    sp,sp,-1352
    sd      ra,1344(sp)
    sd      s0,1336(sp)
    addi    s0,sp,1352
.L0_0:
    li      a0, 0
    li      a1, 1
    li      a2, 22
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a4, 3
    sd      a4,0(a0)
    li      a5, 0
    li      a6, 7
    add     a5,a5,a3
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    li      a7, 8
    sd      a7,0(a5)
    li      s1, 0
    li      s2, 13
    add     s1,s1,a3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    li      s3, 4
    sd      s3,0(s1)
    li      s4, 0
    add     s4,s4,a3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    sd      s3,0(s4)
    li      s5, 0
    li      s6, 14
    add     s5,s5,a3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    li      s7, 5
    sd      s7,0(s5)
    li      s8, 0
    li      s9, 18
    add     s8,s8,a3
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      s10, 9
    sd      s10,0(s8)
    li      s11, 0
    li      a2, 27
    add     s11,s11,a3
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    sd      a7,0(s11)
    li      a1, 0
    li      a2, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a2, 0
    sd      a2,0(a1)
    li      a2, 0
    li      a4, 1
    li      a6, 28
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    sd      s10,0(a2)
    li      a4, 0
    li      a6, 1
    li      a7, 20
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    sd      a6,0(a4)
    li      a6, 0
    li      a7, 1
    li      s2, 26
    add     a6,a6,a3
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    li      a7, 7
    sd      a7,0(a6)
    li      a7, 0
    li      s2, 1
    li      s3, 11
    add     a7,a7,a3
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    li      s2, 2
    sd      s2,0(a7)
    li      s2, 0
    li      s3, 1
    li      s6, 16
    add     s2,s2,a3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    li      s3, 7
    sd      s3,0(s2)
    li      s3, 0
    li      s6, 1
    li      s7, 10
    add     s3,s3,a3
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    sd      s6,0(s3)
    li      s6, 0
    li      s7, 1
    li      s9, 19
    add     s6,s6,a3
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s7, 0
    sd      s7,0(s6)
    li      s7, 0
    li      s9, 1
    li      s10, 12
    add     s7,s7,a3
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    li      s9, 3
    sd      s9,0(s7)
    li      s9, 0
    li      s10, 1
    sd      a0,1304(sp)
    li      a0, 15
    add     s9,s9,a3
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    li      a0, 6
    sd      a0,0(s9)
    li      a0, 0
    sd      a1,1248(sp)
    li      a1, 23
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 4
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1168(sp)
    li      a0, 4
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 5
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1160(sp)
    li      a1, 21
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1152(sp)
    li      a0, 2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1144(sp)
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1136(sp)
    li      a0, 5
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 6
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1128(sp)
    li      a1, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s10,0(a0)
    li      a1, 0
    sd      a0,1120(sp)
    li      a0, 24
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 5
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1112(sp)
    li      a1, 17
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 8
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1104(sp)
    li      a0, 8
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1096(sp)
    li      a1, 29
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1088(sp)
    li      a0, 25
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 6
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1080(sp)
    li      a1, 6
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1072(sp)
    li      a0, 7
    sd      a2,1240(sp)
    mul     a2,s10,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,984(sp)
    li      a1, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,976(sp)
    li      a0, 29
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 2
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,968(sp)
    li      a1, 5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,960(sp)
    li      a0, 14
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,952(sp)
    li      a1, 27
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s10,0(a0)
    li      a1, 0
    sd      a0,944(sp)
    li      a0, 11
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 8
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,936(sp)
    li      a1, 16
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,928(sp)
    li      a0, 24
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,920(sp)
    li      a1, 6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 9
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,912(sp)
    li      a0, 2
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,904(sp)
    li      a1, 19
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,896(sp)
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,888(sp)
    li      a1, 28
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,880(sp)
    li      a0, 15
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,872(sp)
    li      a1, 3
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,864(sp)
    li      a0, 12
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 7
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,856(sp)
    li      a1, 17
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s10,0(a0)
    li      a1, 0
    sd      a0,848(sp)
    li      a0, 8
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,840(sp)
    li      a1, 10
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 9
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,832(sp)
    li      a0, 4
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 5
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,824(sp)
    li      a1, 13
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 6
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,816(sp)
    li      a0, 20
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 2
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,808(sp)
    li      a1, 26
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,800(sp)
    li      a0, 9
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s10,0(a1)
    li      a0, 0
    sd      a1,792(sp)
    li      a1, 25
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 3
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,784(sp)
    li      a0, 21
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,776(sp)
    li      a1, 18
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,768(sp)
    li      a0, 22
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,760(sp)
    li      a1, 23
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 20
    li      s10, 20
    sd      a0,752(sp)
    li      a0, 0
    j       .while.head_29
.while.head_29:
    sw      a2,748(sp)
    slt     a2,a0,a1
    bnez    a2, .while.body_29
    j       .while.exit_29
.while.body_29:
    sw      a0,1332(sp)
    li      a0, 0
    sw      a1,668(sp)
    li      a1, 1
    sb      a2,303(sp)
    sw      a3,1068(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,288(sp)
    li      a0, 1
    sw      a3,660(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,280(sp)
    sd      a1,0(a0)
    sd      a0,288(sp)
    li      a0, 1
    sw      a1,276(sp)
    add     a1,a2,a0
    j       .while.head_29
.while.exit_29:
    j       .while.head_35
.while.head_35:
    slt     a0,a2,s10
    bnez    a0, .while.body_35
    j       .while.exit_35
.while.body_35:
    sb      a0,271(sp)
    li      a0, 0
    sw      a1,272(sp)
    li      a1, 1
    sw      a3,1068(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,256(sp)
    li      a0, 1
    sw      a3,560(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,248(sp)
    sd      a1,0(a0)
    sd      a0,256(sp)
    li      a0, 1
    sw      a1,244(sp)
    add     a1,a2,a0
    j       .while.head_35
.while.exit_35:
    sw      a1,240(sp)
    sub     a1,s10,a0
    sw      a2,1332(sp)
    add     a2,a0,a1
    sw      a0,668(sp)
    mv      a0, a2
    sw      a0,1320(sp)
    li      a0, 0
    j       .while.head_42
.while.head_42:
    sw      a1,236(sp)
    sw      a2,232(sp)
    slt     a2,a1,a0
    xori    a2,a2,1
    bnez    a2, .while.body_42
    j       .while.exit_42
.while.body_42:
    sw      a0,1332(sp)
    li      a0, 0
    sw      a1,1320(sp)
    li      a1, 1
    sb      a2,231(sp)
    sw      a3,748(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 1
    sd      a0,216(sp)
    add     a0,a2,a1
    j       .while.head_42
.while.exit_42:
    li      a1, 0
    sw      a0,212(sp)
    li      a0, 1
    sw      a1,1316(sp)
    sub     a1,s10,a0
    j       .while.head_49
.while.head_49:
    li      a0, -1
    sw      a1,208(sp)
    slt     a1,a0,a2
    bnez    a1, .while.body_49
    j       .while.exit_49
.while.body_49:
    li      a0, 0
    sb      a1,207(sp)
    li      a1, 1
    sw      a3,460(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,192(sp)
    mv      a0, a1
    sw      a0,1324(sp)
    sw      a1,188(sp)
    li      a1, 1
    sw      a2,1332(sp)
    sub     a2,a0,a1
    mv      a1, a2
    j       .while.head_54
.while.head_54:
    sw      a0,668(sp)
    li      a0, -1
    sw      a2,184(sp)
    slt     a2,a0,a1
    bnez    a2, .while.body_54
    j       .while.exit_54
.while.body_54:
    li      a0, 0
    sw      a1,1328(sp)
    li      a1, 1
    sb      a2,183(sp)
    sw      a3,560(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,168(sp)
    sw      a2,1328(sp)
    mul     a2,a1,a0
    sw      a0,164(sp)
    li      a0, 0
    sw      a1,1324(sp)
    li      a1, 1
    sw      a2,160(sp)
    sw      a3,660(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,152(sp)
    sw      a2,1320(sp)
    add     a2,a1,a0
    sw      a0,160(sp)
    mv      a0, a2
    j       .L1_0
.L1_0:
    sw      a1,148(sp)
    li      a1, 10
    sw      a2,144(sp)
    slt     a2,a0,a1
    xori    a2,a2,1
    bnez    a2, .branch_true_58
    j       .branch_false_58
.branch_true_58:
    li      a1, 0
    sw      a0,1316(sp)
    li      a0, 1
    sb      a2,143(sp)
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a0,0(a1)
    sw      a0,1316(sp)
    li      a0, 1
    sd      a1,128(sp)
    sub     a1,a2,a0
    li      a0, 0
    sw      a1,124(sp)
    li      a1, 1
    sw      a2,1320(sp)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,112(sp)
    li      a0, 10
    sw      a2,124(sp)
    div     a2,a1,a0
    sw      a1,1316(sp)
    li      a1, 1
    sw      a2,108(sp)
    sub     a2,a0,a1
    li      a1, 0
    sw      a0,1320(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,96(sp)
    sw      a2,104(sp)
    add     a2,a0,a1
    sw      a0,92(sp)
    sd      a2,0(a0)
    j       .L2_0
.branch_false_58:
    sd      a0,112(sp)
    li      a0, 0
    sw      a1,108(sp)
    li      a1, 1
    sw      a2,88(sp)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    j       .L2_0
.L2_0:
.L3_0:
    sd      a0,72(sp)
    sw      a1,1316(sp)
    li      a1, 1
    sw      a2,1320(sp)
    sub     a2,a0,a1
    sw      a0,1328(sp)
    li      a0, 1
    sw      a2,84(sp)
    sub     a2,a1,a0
    j       .while.head_54
.while.exit_54:
    sw      a1,1320(sp)
    li      a1, 1
    sw      a2,80(sp)
    sub     a2,a0,a1
    sw      a0,668(sp)
    add     a0,a1,a2
    sw      a0,64(sp)
    sw      a1,1320(sp)
    li      a1, 1
    sw      a2,68(sp)
    sub     a2,a0,a1
    j       .while.head_49
.while.exit_49:
    li      a1, 0
    sw      a0,1332(sp)
    li      a0, 1
    sw      a2,60(sp)
    li      a2, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,48(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_68
    j       .branch_false_68
.branch_true_68:
    li      a2, 0
    sw      a0,44(sp)
    li      a0, 1
    sb      a1,43(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    sd      s1,1288(sp)
    sd      s2,1208(sp)
    sd      s3,1200(sp)
    sd      s4,1280(sp)
    sd      s5,1272(sp)
    sd      s6,1192(sp)
    sd      s7,1184(sp)
    sd      s8,1264(sp)
    sd      s9,1176(sp)
    sw      s10,664(sp)
    sd      s11,1256(sp)
    call    putint
    j       .branch_false_68
.branch_false_68:
.L4_0:
    li      a0, 1
    j       .while.head_72
.while.head_72:
    li      s2, 1
    sub     s3,s1,s2
    add     s5,s4,s3
    slt     s6,s5,a0
    xori    s6,s6,1
    bnez    s6, .while.body_72
    j       .while.exit_72
.while.body_72:
    li      s7, 0
    add     s7,s7,a3
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    sw      s1,664(sp)
    sw      s3,24(sp)
    sw      s4,668(sp)
    sw      s5,20(sp)
    sb      s6,19(sp)
    sd      s7,8(sp)
    sw      a0,1332(sp)
    call    putint
    li      s1, 1
    add     s2,a0,s1
    j       .while.head_72
.while.exit_72:
    ld      ra,1344(sp)
    ld      s0,1336(sp)
    li      a0, 0
    addi    sp,sp,1352
    ret
.section        .data
    .align 4
    .globl len
    .type len,@object
len:
    .word 20
