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
    li      a0, -2000
    li      a0, -2000
    add     sp,a0,sp
    sd      ra,1992(sp)
    sd      s0,1976(sp)
    li      a1, 2000
    li      a1, 2000
    add     s0,a1,sp
.L0_0:
    li      a2, 0
    li      a3, 1
    li      a4, 12
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    li      a6, 3
    sd      a6,0(a2)
    li      a7, 0
    li      s1, 1
    add     a7,a7,a5
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    li      s2, 2
    sd      s2,0(a7)
    li      s3, 0
    li      s4, 17
    add     s3,s3,a5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s5, 8
    sd      s5,0(s3)
    li      s6, 0
    add     s6,s6,a5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s7, 9
    sd      s7,0(s6)
    li      s8, 0
    li      s9, 11
    add     s8,s8,a5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    sd      s2,0(s8)
    li      s10, 0
    li      s11, 14
    add     s10,s10,a5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    li      a0, 5
    sd      a0,0(s10)
    li      a0, 0
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 0
    li      a4, 18
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s7,0(a1)
    li      a3, 0
    li      a4, 20
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
    sd      s1,0(a3)
    li      a4, 0
    li      a6, 21
    add     a4,a4,a5
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    sd      s2,0(a4)
    li      a6, 0
    add     a6,a6,a5
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    li      s1, 3
    sd      s1,0(a6)
    li      s1, 0
    li      s2, 1
    li      s4, 10
    add     s1,s1,a5
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    sd      s2,0(s1)
    li      s2, 0
    li      s4, 1
    li      s5, 4
    add     s2,s2,a5
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    li      s4, 5
    sd      s4,0(s2)
    li      s4, 0
    li      s5, 1
    li      s7, 3
    add     s4,s4,a5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s5, 4
    sd      s5,0(s4)
    li      s5, 0
    li      s7, 1
    li      s9, 15
    add     s5,s5,a5
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    li      s7, 6
    sd      s7,0(s5)
    li      s7, 0
    li      s9, 1
    li      s11, 5
    add     s7,s7,a5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    li      s9, 6
    sd      s9,0(s7)
    li      s9, 0
    li      s11, 1
    sd      a0,1824(sp)
    li      a0, 24
    add     s9,s9,a5
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    li      a0, 5
    sd      a0,0(s9)
    li      a0, 0
    sd      a1,1808(sp)
    li      a1, 25
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 6
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1648(sp)
    li      a0, 22
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1632(sp)
    li      a1, 27
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 8
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1616(sp)
    li      a0, 23
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1600(sp)
    li      a1, 26
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1584(sp)
    li      a0, 7
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 8
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1568(sp)
    li      a1, 6
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1552(sp)
    li      a0, 13
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1536(sp)
    li      a1, 29
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1520(sp)
    li      a0, 0
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s11,0(a1)
    li      a0, 0
    sd      a1,1504(sp)
    li      a1, 16
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1488(sp)
    li      a0, 28
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1472(sp)
    li      a1, 19
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1456(sp)
    li      a0, 22
    sd      a2,1920(sp)
    mul     a2,s11,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1360(sp)
    li      a1, 16
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1344(sp)
    li      a0, 17
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s11,0(a1)
    li      a0, 0
    sd      a1,1328(sp)
    li      a1, 3
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1312(sp)
    li      a0, 12
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 7
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1296(sp)
    li      a1, 20
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1280(sp)
    li      a0, 14
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1264(sp)
    li      a1, 18
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1248(sp)
    li      a0, 15
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1232(sp)
    li      a1, 19
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1216(sp)
    li      a0, 8
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1200(sp)
    li      a1, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1184(sp)
    li      a0, 4
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 5
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1168(sp)
    li      a1, 23
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1152(sp)
    li      a0, 7
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1136(sp)
    li      a1, 5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1120(sp)
    li      a0, 28
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 2
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1104(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 3
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1088(sp)
    li      a0, 9
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s11,0(a1)
    li      a0, 0
    sd      a1,1072(sp)
    li      a1, 2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 4
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1056(sp)
    li      a0, 21
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1040(sp)
    li      a1, 29
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,1024(sp)
    li      a0, 13
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 6
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,1008(sp)
    li      a1, 25
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 3
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,992(sp)
    li      a0, 10
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,976(sp)
    li      a1, 27
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s11,0(a0)
    li      a1, 0
    sd      a0,960(sp)
    li      a0, 26
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 2
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,944(sp)
    li      a1, 24
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 4
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,928(sp)
    li      a0, 6
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,912(sp)
    li      a1, 11
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 8
    sd      a1,0(a0)
    li      a1, 20
    mv      s11, a1
    sd      a0,896(sp)
    mv      a0, a1
    li      a1, 0
    sw      a0,796(sp)
    mv      a0, a1
    j       .while.head_29
.while.head_29:
    slt     a1,a0,s11
    bnez    a1, .while.body_29
    j       .while.exit_29
.while.body_29:
    sw      a0,1968(sp)
    li      a0, 0
    sb      a1,423(sp)
    li      a1, 1
    sw      a2,888(sp)
    mv      a2, a2
    sd      a3,1792(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,408(sp)
    li      a0, 1
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,392(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,408(sp)
    li      a0, 1
    sw      a1,388(sp)
    add     a1,a2,a0
    j       .while.head_29
.while.exit_29:
    li      a0, 0
    j       .while.head_35
.while.head_35:
    mv      a0, a0
    sw      a1,380(sp)
    slt     a1,a2,a0
    bnez    a1, .while.body_35
    j       .while.exit_35
.while.body_35:
    sw      a0,796(sp)
    li      a0, 0
    sb      a1,379(sp)
    li      a1, 1
    sw      a3,788(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,368(sp)
    li      a0, 1
    sw      a3,684(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,352(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,368(sp)
    li      a0, 1
    sw      a1,348(sp)
    add     a1,a2,a0
    j       .while.head_35
.while.exit_35:
    mv      a0, a0
    sw      a1,340(sp)
    li      a1, 1
    sw      a2,1968(sp)
    sub     a2,a0,a1
    add     a1,s11,a2
    sw      a0,796(sp)
    mv      a0, a1
    sw      a0,1944(sp)
    li      a0, 0
    sw      a1,324(sp)
    mv      a1, a0
    j       .while.head_42
.while.head_42:
    mv      a0, a0
    sw      a2,332(sp)
    slt     a2,a1,a0
    xori    a2,a2,1
    bnez    a2, .while.body_42
    j       .while.exit_42
.while.body_42:
    sw      a0,1944(sp)
    li      a0, 0
    sw      a1,1968(sp)
    li      a1, 1
    sb      a2,323(sp)
    mv      a2, a2
    sw      a3,888(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 1
    sd      a0,315(sp)
    add     a0,a2,a1
    j       .while.head_42
.while.exit_42:
    li      a1, 0
    sw      a0,308(sp)
    mv      a0, a1
    mv      a1, a1
    sw      a0,1936(sp)
    li      a0, 1
    sw      a2,1968(sp)
    sub     a2,a1,a0
    mv      a0, a2
    j       .while.head_49
.while.head_49:
    sw      a1,796(sp)
    li      a1, -1
    sw      a2,300(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_49
    j       .while.exit_49
.while.body_49:
    li      a1, 0
    sw      a0,1968(sp)
    li      a0, 1
    sb      a2,299(sp)
    mv      a2, a2
    sw      a3,580(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,288(sp)
    mv      a1, a0
    sw      a0,284(sp)
    li      a0, 1
    sw      a1,1952(sp)
    sub     a1,s11,a0
    mv      a0, a1
    j       .while.head_54
.while.head_54:
    sw      a1,276(sp)
    li      a1, -1
    sw      a2,1968(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_54
    j       .while.exit_54
.while.body_54:
    li      a1, 0
    sw      a0,1960(sp)
    li      a0, 1
    sb      a2,275(sp)
    mv      a2, a2
    sw      a3,684(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,264(sp)
    mv      a1, a1
    sw      a2,1960(sp)
    mul     a2,a0,a1
    sw      a0,1952(sp)
    li      a0, 0
    sw      a1,256(sp)
    li      a1, 1
    sw      a2,252(sp)
    mv      a2, a2
    sw      a3,788(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,240(sp)
    mv      a0, a0
    sw      a2,1944(sp)
    add     a2,a1,a0
    sw      a0,252(sp)
    mv      a0, a2
    j       .L1_0
.L1_0:
    sw      a1,232(sp)
    li      a1, 10
    sw      a2,224(sp)
    slt     a2,a1,a0
    xori    a2,a2,1
    bnez    a2, .branch_true_58
    j       .branch_false_58
.branch_true_58:
    li      a1, 0
    sw      a0,1936(sp)
    li      a0, 1
    sb      a2,223(sp)
    mv      a2, a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a0,0(a1)
    sw      a0,1936(sp)
    li      a0, 1
    sd      a1,215(sp)
    sub     a1,a2,a0
    li      a0, 0
    sw      a1,208(sp)
    li      a1, 1
    sw      a2,1944(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,192(sp)
    li      a0, 10
    sw      a2,208(sp)
    div     a2,a1,a0
    mv      a0, a0
    sw      a1,1936(sp)
    li      a1, 1
    sw      a2,184(sp)
    sub     a2,a0,a1
    li      a1, 0
    sw      a0,1944(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,160(sp)
    mv      a1, a1
    sw      a2,176(sp)
    add     a2,a0,a1
    sw      a0,152(sp)
    mv      a0, a0
    sd      a2,0(a0)
    j       .L2_0
.branch_false_58:
    sd      a0,192(sp)
    li      a0, 0
    sw      a1,184(sp)
    li      a1, 1
    sw      a2,144(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    j       .L2_0
.L2_0:
.L3_0:
    sd      a0,112(sp)
    mv      a0, a0
    sw      a1,1936(sp)
    li      a1, 1
    sw      a2,1944(sp)
    sub     a2,a0,a1
    mv      a1, a1
    sw      a0,1960(sp)
    li      a0, 1
    sw      a2,136(sp)
    sub     a2,a1,a0
    j       .while.head_54
.while.exit_54:
    sw      a1,1944(sp)
    sub     a1,s11,a0
    mv      a0, a0
    sw      a2,128(sp)
    add     a2,a0,a1
    sw      a0,1944(sp)
    mv      a0, a0
    sw      a1,104(sp)
    li      a1, 1
    sw      a2,96(sp)
    sub     a2,a0,a1
    j       .while.head_49
.while.exit_49:
    li      a1, 0
    sw      a0,1968(sp)
    li      a0, 1
    sw      a2,88(sp)
    li      a2, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,72(sp)
    xor     a1,a0,a2
    sltiu   a1,a1,1
    xori    a1,a1,1
    bnez    a1, .branch_true_68
    j       .branch_false_68
.branch_true_68:
    li      a2, 0
    sw      a0,64(sp)
    li      a0, 1
    sb      a1,63(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    sd      s1,1744(sp)
    sd      s2,1728(sp)
    sd      s3,1888(sp)
    sd      s4,1712(sp)
    sd      s5,1696(sp)
    sd      s6,1872(sp)
    sd      s7,1680(sp)
    sd      s8,1856(sp)
    sd      s9,1664(sp)
    sd      s10,1840(sp)
    sw      s11,804(sp)
    mv      a0, a0
    call    putint
    j       .branch_false_68
.branch_false_68:
.L4_0:
    li      a0, 1
    mv      s1, a0
    j       .while.head_72
.while.head_72:
    mv      s2, s2
    sub     s3,s2,a0
    mv      s4, s4
    add     s5,s4,s3
    slt     s6,s1,s5
    xori    s6,s6,1
    bnez    s6, .while.body_72
    j       .while.exit_72
.while.body_72:
    li      s7, 0
    add     s7,s7,a3
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    sw      s1,1968(sp)
    sw      s2,796(sp)
    sw      s3,40(sp)
    sw      s4,804(sp)
    sw      s5,32(sp)
    sb      s6,31(sp)
    sd      s7,23(sp)
    mv      a0, a0
    call    putint
    mv      a0, a0
    li      s1, 1
    add     s2,a0,s1
    j       .while.head_72
.while.exit_72:
    ld      ra,1992(sp)
    ld      s0,1976(sp)
    li      a0, 0
    li      s3, 2000
    li      s3, 2000
    add     sp,s3,sp
    ret
.section        .data
    .align 4
    .globl len
    .type len,@object
len:
    .word 20
