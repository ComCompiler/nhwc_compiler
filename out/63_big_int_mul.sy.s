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
    .globl main
    .type main,@function
main:
    addi    sp,sp,-1376
    sd      ra,1368(sp)
    sd      s0,1360(sp)
    addi    s0,sp,1376
.L0_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1008
    sd      a0,1328(sp)
    ld      a0,1328(sp)
    li      a1, 0
    li      a2, 80
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 14
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1008
    li      a4, 3
    sw      a4,0(a0)
    li      a5, 0
    li      a6, 13
    mul     a7,a1,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,1008
    li      s1, 2
    sw      s1,0(a5)
    li      s2, 0
    li      s3, 11
    mul     s4,a1,s3
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,1008
    sw      a1,0(s2)
    li      s5, 0
    li      s6, 16
    mul     s7,a1,s6
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,1008
    li      s8, 4
    sw      s8,0(s5)
    li      s9, 0
    li      s10, 29
    mul     s11,a1,s10
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,1008
    li      a1, 0
    sw      a1,0(s9)
    li      a1, 0
    li      a2, 1
    li      a3, 12
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1008
    sw      s1,0(a1)
    li      a2, 0
    li      a3, 1
    mul     a4,a3,s8
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,1008
    li      a3, 5
    sw      a3,0(a2)
    li      a3, 0
    li      a4, 1
    mul     a6,a4,s1
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,1008
    li      a4, 3
    sw      a4,0(a3)
    li      a4, 0
    li      a6, 1
    li      a7, 20
    mul     s1,a6,a7
    add     a4,a4,s1
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,1008
    li      a6, 6
    sw      a6,0(a4)
    li      a6, 0
    li      a7, 1
    li      s1, 7
    mul     s3,a7,s1
    add     a6,a6,s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,1008
    li      a7, 8
    sw      a7,0(a6)
    li      a7, 0
    li      s1, 1
    li      s3, 19
    mul     s4,s1,s3
    add     a7,a7,s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,1008
    li      s1, 5
    sw      s1,0(a7)
    li      s1, 0
    li      s3, 1
    li      s4, 6
    mul     s6,s3,s4
    add     s1,s1,s6
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,1008
    li      s3, 7
    sw      s3,0(s1)
    li      s3, 0
    li      s4, 1
    li      s6, 1
    mul     s7,s4,s6
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,1008
    li      s4, 2
    sw      s4,0(s3)
    li      s4, 0
    li      s7, 5
    mul     s8,s6,s7
    add     s4,s4,s8
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,1008
    li      s6, 6
    sw      s6,0(s4)
    li      s6, 0
    li      s7, 1
    li      s8, 17
    mul     s10,s7,s8
    add     s6,s6,s10
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,1008
    li      s7, 4
    sw      s7,0(s6)
    li      s7, 0
    li      s8, 1
    li      s10, 10
    mul     s11,s8,s10
    add     s7,s7,s11
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,1008
    sw      s8,0(s7)
    li      s8, 0
    li      s10, 1
    li      s11, 25
    sd      a0,1320(sp)
    mul     a0,s10,s11
    add     s8,s8,a0
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,1008
    li      a0, 8
    sw      a0,0(s8)
    li      a0, 0
    li      s11, 9
    sd      a1,1280(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1008
    li      a1, 0
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 8
    sd      a0,1184(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1008
    li      a0, 9
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 0
    sd      a1,1176(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1008
    sw      s10,0(a0)
    li      a1, 0
    li      s11, 22
    sd      a0,1168(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1008
    li      a0, 7
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 23
    sd      a1,1160(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1008
    li      a1, 7
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 15
    sd      a0,1152(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1008
    li      a0, 3
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 26
    sd      a1,1144(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1008
    li      a1, 9
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 21
    sd      a0,1136(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1008
    li      a0, 6
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 3
    sd      a1,1128(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1008
    li      a1, 4
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 28
    sd      a0,1120(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1008
    li      a0, 0
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 24
    sd      a1,1112(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1008
    li      a1, 8
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 18
    sd      a0,1104(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1008
    li      a0, 5
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 27
    sd      a1,1096(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1008
    li      a1, 9
    sw      a1,0(a0)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,680
    sd      s1,1232(sp)
    sd      s2,1304(sp)
    sd      s3,1224(sp)
    sd      s4,1216(sp)
    sd      s5,1296(sp)
    sd      s6,1208(sp)
    sd      s7,1200(sp)
    sd      s8,1192(sp)
    sd      s9,1288(sp)
    sd      a0,1088(sp)
    sd      a1,1000(sp)
    sd      a2,1272(sp)
    sd      a3,1264(sp)
    sd      a4,1256(sp)
    sd      a5,1312(sp)
    sd      a6,1248(sp)
    sd      a7,1240(sp)
    ld      a0,1000(sp)
    li      a1, 0
    li      a2, 80
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 24
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,680
    sw      a1,0(a0)
    li      a4, 0
    li      a5, 27
    mul     a6,a1,a5
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,680
    li      a7, 2
    sw      a7,0(a4)
    li      s1, 0
    li      s2, 0
    mul     s3,a1,s2
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,680
    sw      a7,0(s1)
    li      s4, 0
    li      s5, 9
    mul     s6,a1,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,680
    sw      s5,0(s4)
    li      s7, 0
    li      s8, 15
    mul     s9,a1,s8
    add     s7,s7,s9
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,680
    li      s10, 7
    sw      s10,0(s7)
    li      s11, 0
    li      a2, 13
    mul     a3,a1,a2
    add     s11,s11,a3
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,680
    sw      s5,0(s11)
    li      a1, 0
    li      a2, 1
    li      a3, 28
    mul     a5,a2,a3
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,680
    sw      a7,0(a1)
    li      a2, 0
    li      a3, 1
    li      a5, 18
    mul     a6,a3,a5
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,680
    li      a3, 4
    sw      a3,0(a2)
    li      a3, 0
    li      a5, 1
    li      a6, 25
    mul     a7,a5,a6
    add     a3,a3,a7
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,680
    sw      a5,0(a3)
    li      a5, 0
    li      a6, 1
    li      a7, 2
    mul     s2,a6,a7
    add     a5,a5,s2
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,680
    li      a6, 4
    sw      a6,0(a5)
    li      a6, 0
    li      a7, 1
    li      s2, 5
    mul     s3,a7,s2
    add     a6,a6,s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,680
    sw      s2,0(a6)
    li      a7, 0
    li      s2, 1
    li      s3, 23
    mul     s5,s2,s3
    add     a7,a7,s5
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,680
    li      s2, 2
    sw      s2,0(a7)
    li      s2, 0
    li      s3, 1
    li      s5, 17
    mul     s6,s3,s5
    add     s2,s2,s6
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,680
    li      s3, 6
    sw      s3,0(s2)
    li      s3, 0
    li      s5, 1
    li      s6, 21
    mul     s8,s5,s6
    add     s3,s3,s8
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,680
    li      s5, 3
    sw      s5,0(s3)
    li      s5, 0
    li      s6, 1
    li      s8, 22
    mul     s9,s6,s8
    add     s5,s5,s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,680
    li      s6, 2
    sw      s6,0(s5)
    li      s6, 0
    li      s8, 1
    li      s9, 11
    mul     s10,s8,s9
    add     s6,s6,s10
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,680
    sw      s8,0(s6)
    li      s8, 0
    li      s9, 1
    li      s10, 16
    sd      a0,992(sp)
    mul     a0,s9,s10
    add     s8,s8,a0
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,680
    li      a0, 7
    sw      a0,0(s8)
    li      a0, 0
    li      s10, 19
    sd      a1,944(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,680
    li      a1, 4
    sw      a1,0(a0)
    li      a1, 0
    li      s10, 7
    sd      a0,856(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,680
    li      a0, 9
    sw      a0,0(a1)
    li      a0, 0
    li      s10, 8
    sd      a1,848(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,680
    li      a1, 9
    sw      a1,0(a0)
    li      a1, 0
    li      s10, 10
    sd      a0,840(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,680
    li      a0, 0
    sw      a0,0(a1)
    li      a0, 0
    li      s10, 26
    sd      a1,832(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,680
    li      a1, 2
    sw      a1,0(a0)
    li      a1, 0
    li      s10, 14
    sd      a0,824(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,680
    li      a0, 8
    sw      a0,0(a1)
    li      a0, 0
    li      s10, 29
    sd      a1,816(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,680
    li      a1, 2
    sw      a1,0(a0)
    li      a1, 0
    li      s10, 3
    sd      a0,808(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,680
    li      a0, 2
    sw      a0,0(a1)
    li      a0, 0
    li      s10, 20
    sd      a1,800(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,680
    li      a1, 3
    sw      a1,0(a0)
    li      a1, 0
    li      s10, 4
    sd      a0,792(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,680
    li      a0, 2
    sw      a0,0(a1)
    li      a0, 0
    li      s10, 12
    sd      a1,784(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,680
    li      a1, 9
    sw      a1,0(a0)
    li      a1, 0
    li      s10, 1
    sd      a0,776(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,680
    li      a0, 3
    sw      a0,0(a1)
    li      a0, 0
    li      s9, 6
    sd      a1,768(sp)
    mul     a1,s10,s9
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,680
    li      a1, 7
    sw      a1,0(a0)
    li      a1, 20
    li      s9, 20
    li      s10, 0
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,304
    sd      s1,976(sp)
    sd      s2,896(sp)
    sd      s3,888(sp)
    sd      s4,968(sp)
    sd      s5,880(sp)
    sd      s6,872(sp)
    sd      s7,960(sp)
    sd      s8,864(sp)
    sw      s9,672(sp)
    sd      s10,464(sp)
    sd      s11,952(sp)
    sd      a0,760(sp)
    sw      a1,676(sp)
    sd      a2,936(sp)
    sd      a3,928(sp)
    sd      a4,984(sp)
    sd      a5,920(sp)
    sd      a6,912(sp)
    sd      a7,904(sp)
    ld      a0,464(sp)
    li      a1, 0
    li      a2, 160
    call    memset
    li      a0, 0
    j       .while.head_29
.while.head_29:
    lw      a1,676(sp)
    slt     a2,a0,a1
    bnez    a2, .while.body_29
    j       .while.exit_29
.while.body_29:
    li      a3, 0
    li      a4, 1
    mul     a5,a4,a0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,572
    li      a6, 0
    mul     a7,a4,a0
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,1008
    lw      s1,0(a6)
    sw      s1,0(a3)
    add     s2,a0,a4
    mv      a0, s2
    sw      s2,272(sp)
    sd      a3,288(sp)
    sd      a6,280(sp)
    sw      a1,676(sp)
    sb      a2,303(sp)
    sw      s1,276(sp)
    j       .while.head_29
.while.exit_29:
    li      a0, 0
    j       .while.head_35
.while.head_35:
    lw      a3,672(sp)
    slt     a4,a0,a3
    bnez    a4, .while.body_35
    j       .while.exit_35
.while.body_35:
    li      a5, 0
    li      a6, 1
    mul     a7,a6,a0
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,472
    li      s1, 0
    mul     s2,a6,a0
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,680
    lw      s3,0(s1)
    sw      s3,0(a5)
    add     s4,a0,a6
    mv      a0, s4
    sw      s4,240(sp)
    sw      a3,672(sp)
    sw      s3,244(sp)
    sd      a5,256(sp)
    sd      s1,248(sp)
    sb      a4,271(sp)
    j       .while.head_35
.while.exit_35:
    add     a5,a1,a3
    li      a6, 1
    sub     a7,a5,a6
    mv      s1, a7
    li      a0, 0
    j       .while.head_42
.while.head_42:
    slt     a6,s1,a0
    xori    a6,a6,1
    bnez    a6, .while.body_42
    j       .while.exit_42
.while.body_42:
    li      s2, 0
    li      s3, 1
    mul     s4,s3,a0
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,304
    li      s5, 0
    sw      s5,0(s2)
    add     s6,a0,s3
    mv      a0, s6
    sd      s2,216(sp)
    sw      s6,212(sp)
    sb      a6,231(sp)
    j       .while.head_42
.while.exit_42:
    li      s2, 0
    li      s3, 1
    sub     s4,a3,s3
    mv      a0, s4
    j       .while.head_49
.while.head_49:
    li      s3, -1
    slt     s5,s3,a0
    bnez    s5, .while.body_49
    j       .while.exit_49
.while.body_49:
    li      s3, 0
    li      s6, 1
    mul     s7,s6,a0
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,472
    lw      s8,0(s3)
    mv      s9, s8
    sub     s10,a1,s6
    mv      s11, s10
    j       .while.head_54
.while.head_54:
    li      s6, -1
    slt     s7,s6,s11
    bnez    s7, .while.body_54
    j       .while.exit_54
.while.body_54:
    li      s6, 0
    sw      a0,1356(sp)
    li      a0, 1
    sw      a1,676(sp)
    mul     a1,a0,s11
    add     s6,s6,a1
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,572
    lw      a0,0(s6)
    mul     a1,s9,a0
    sw      a0,164(sp)
    li      a0, 0
    sw      a1,160(sp)
    li      a1, 1
    sb      a2,303(sp)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,304
    lw      a1,0(a0)
    lw      a2,160(sp)
    sd      a0,152(sp)
    add     a0,a1,a2
    mv      s2, a0
    sw      a0,144(sp)
    j       .L1_0
.L1_0:
    li      a0, 10
    sw      a1,148(sp)
    slt     a1,s2,a0
    xori    a1,a1,1
    bnez    a1, .branch_true_58
    j       .branch_false_58
.branch_true_58:
    li      a0, 0
    sb      a1,143(sp)
    li      a1, 1
    sw      a2,160(sp)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,304
    sw      s2,0(a0)
    sub     a2,s1,a1
    li      a1, 0
    sd      a0,128(sp)
    li      a0, 1
    sw      a3,672(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,304
    li      a0, 10
    div     a3,s2,a0
    li      a0, 1
    sd      a1,112(sp)
    sub     a1,s1,a0
    li      a0, 0
    sw      a1,104(sp)
    li      a1, 1
    sw      a2,124(sp)
    lw      a2,104(sp)
    sw      a3,108(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,304
    lw      a1,0(a0)
    lw      a3,108(sp)
    sd      a0,96(sp)
    add     a0,a1,a3
    sw      a0,88(sp)
    ld      a0,112(sp)
    sw      a1,92(sp)
    lw      a1,88(sp)
    sw      a1,0(a0)
    sd      a0,112(sp)
    j       .L2_0
.branch_false_58:
    li      a0, 0
    sb      a1,143(sp)
    li      a1, 1
    sw      a2,160(sp)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,304
    sw      s2,0(a0)
    sd      a0,72(sp)
    sw      a3,672(sp)
    lw      a3,108(sp)
    lw      a1,88(sp)
    lw      a2,104(sp)
    j       .L2_0
.L2_0:
.L3_0:
    li      a0, 1
    sw      a1,88(sp)
    sub     a1,s11,a0
    mv      s11, a1
    sw      a1,84(sp)
    sub     a1,s1,a0
    mv      s1, a1
    sb      s7,183(sp)
    sd      s6,168(sp)
    sw      a3,108(sp)
    sw      a1,80(sp)
    sw      a2,104(sp)
    lw      a0,1356(sp)
    lw      a3,672(sp)
    lw      a1,676(sp)
    lb      a2,303(sp)
    j       .while.head_54
.while.exit_54:
    add     s6,s1,a1
    sw      a0,1356(sp)
    li      a0, 1
    sw      a1,676(sp)
    sub     a1,s6,a0
    mv      s1, a1
    lw      a0,1356(sp)
    sw      a1,64(sp)
    li      a1, 1
    sb      a2,303(sp)
    sub     a2,a0,a1
    mv      a0, a2
    sb      s7,183(sp)
    sw      s6,68(sp)
    sw      s10,184(sp)
    sd      s3,192(sp)
    sw      a2,60(sp)
    sw      s9,1348(sp)
    sw      s11,1352(sp)
    sb      s5,207(sp)
    sw      s8,188(sp)
    lw      a1,676(sp)
    lb      a2,303(sp)
    j       .while.head_49
.while.exit_49:
    li      s3, 0
    li      s6, 1
    li      s7, 0
    mul     s8,s6,s7
    add     s3,s3,s8
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,304
    lw      s9,0(s3)
    xor     s10,s9,s7
    snez    s10, s10
    bnez    s10, .branch_true_68
    j       .branch_false_68
.branch_true_68:
    li      s6, 0
    li      s7, 1
    li      s8, 0
    mul     s11,s7,s8
    add     s6,s6,s11
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,304
    lw      s7,0(s6)
    sw      s1,1344(sp)
    sw      s2,1340(sp)
    sd      s3,48(sp)
    sw      s4,208(sp)
    sb      s5,207(sp)
    sd      s6,32(sp)
    sw      s7,28(sp)
    sw      s9,44(sp)
    sb      s10,43(sp)
    sw      a0,1356(sp)
    sw      a1,676(sp)
    sb      a2,303(sp)
    sw      a3,672(sp)
    sb      a4,271(sp)
    sw      a5,236(sp)
    sb      a6,231(sp)
    sw      a7,232(sp)
    lw      a0,28(sp)
    call    putint
    lw      a0,1356(sp)
    lw      s2,1340(sp)
    lw      s4,208(sp)
    lw      a3,672(sp)
    lb      a6,231(sp)
    lw      a1,676(sp)
    lb      s10,43(sp)
    ld      s3,48(sp)
    lb      a2,303(sp)
    lw      s9,44(sp)
    lb      s5,207(sp)
    lw      a5,236(sp)
    lw      s1,1344(sp)
    lw      a7,232(sp)
    lb      a4,271(sp)
    j       .branch_false_68
.branch_false_68:
.L4_0:
    li      a0, 1
    j       .while.head_72
.while.head_72:
    add     s6,a1,a3
    li      s7, 1
    sub     s8,s6,s7
    slt     s11,s8,a0
    xori    s11,s11,1
    bnez    s11, .while.body_72
    j       .while.exit_72
.while.body_72:
    li      s7, 0
    sw      a0,1356(sp)
    li      a0, 1
    sw      a1,676(sp)
    lw      a1,1356(sp)
    sb      a2,303(sp)
    mul     a2,a0,a1
    add     s7,s7,a2
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,304
    lw      a0,0(s7)
    sw      s1,1344(sp)
    sw      s2,1340(sp)
    sd      s3,48(sp)
    sw      s4,208(sp)
    sb      s5,207(sp)
    sw      s6,24(sp)
    sd      s7,8(sp)
    sw      s8,20(sp)
    sw      s9,44(sp)
    sb      s10,43(sp)
    sb      s11,19(sp)
    sw      a0,4(sp)
    sw      a1,1356(sp)
    sw      a3,672(sp)
    sb      a4,271(sp)
    sw      a5,236(sp)
    sb      a6,231(sp)
    sw      a7,232(sp)
    lw      a0,4(sp)
    call    putint
    lw      a0,1356(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,0(sp)
    lw      s2,1340(sp)
    lw      s4,208(sp)
    lw      a3,672(sp)
    lb      a6,231(sp)
    lw      a1,676(sp)
    lb      s10,43(sp)
    ld      s3,48(sp)
    lb      a2,303(sp)
    lw      s9,44(sp)
    lb      s5,207(sp)
    lw      a5,236(sp)
    lw      s1,1344(sp)
    lw      a7,232(sp)
    lb      a4,271(sp)
    j       .while.head_72
.while.exit_72:
    ld      ra,1368(sp)
    ld      s0,1360(sp)
    sw      a0,1356(sp)
    li      a0, 0
    addi    sp,sp,1376
    ret
.section ___var
    .data
    .align 4
    .globl len
    .type len,@object
len:
    .word 20
