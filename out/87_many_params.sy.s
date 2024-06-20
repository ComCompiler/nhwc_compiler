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
    .globl sort
    .type sort,@function
sort:
    addi    sp,sp,-216
    sd      ra,208(sp)
    sd      s0,192(sp)
    addi    s0,sp,216
.L5_0:
    li      a2, 0
    mv      a3, a2
    j       .while.head_21
.while.head_21:
    li      a4, 1
    sub     a5,a1,a4
    slt     a6,a3,a5
    bnez    a6, .while.body_21
    j       .while.exit_21
.while.body_21:
    add     a7,a3,a4
    mv      s1, a7
    j       .while.head_25
.while.head_25:
    slt     s2,s1,a1
    bnez    s2, .while.body_25
    j       .while.exit_25
.while.body_25:
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
    mv      s5, s5
    mv      s6, s6
    slt     s7,s5,s6
    bnez    s7, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    li      s8, 0
    add     s8,s8,a0
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
    mv      s9, s9
    mv      s10, s9
    li      s11, 0
    add     s11,s11,a0
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
    li      a2, 0
    add     a2,a2,a0
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
    mv      a4, a4
    sd      a4,0(s11)
    sd      a0,176(sp)
    li      a0, 0
    sw      a1,168(sp)
    li      a1, 1
    sd      a2,48(sp)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s10,0(a0)
    j       .branch_false_28
.branch_false_28:
.L6_0:
    sd      a0,24(sp)
    add     a0,s1,a1
    j       .while.head_25
.while.exit_25:
    sw      a0,16(sp)
    add     a0,a3,a1
    j       .while.head_21
.while.exit_21:
    .globl param32_rec
    .type param32_rec,@function
param32_rec:
    addi    sp,sp,-312
    sd      ra,112(sp)
    sd      s0,96(sp)
    addi    s0,sp,312
.L3_0:
    sw      a1,80(sp)
    li      a1, 0
    sw      a2,72(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    bnez    a2, .branch_true_39
    j       .branch_false_39
.branch_true_39:
    ld      ra,112(sp)
    ld      s0,96(sp)
    lw      a0,80(sp)
    addi    sp,sp,312
    ret
.branch_false_39:
    li      a1, 1
    sb      a2,31(sp)
    sub     a2,a0,a1
    mv      a1, a1
    sw      a0,88(sp)
    mv      a0, a0
    sw      a2,27(sp)
    add     a2,a1,a0
    sw      a0,72(sp)
    li      a0, 998244353
    sw      a1,80(sp)
    mv      a1, a1
    rem     a1,a2,a0
    sw      s1,140(sp)
    sb      s2,139(sp)
    sd      s3,131(sp)
    sd      s4,112(sp)
    sw      s5,104(sp)
    sw      s6,124(sp)
    sb      s7,103(sp)
    sd      s8,95(sp)
    sw      s9,88(sp)
    sw      s10,80(sp)
    sd      s11,64(sp)
    mv      a0, a0
    sw      a1,12(sp)
    mv      a1, a1
    sw      a3,64(sp)
    sw      a2,20(sp)
    mv      a2, a2
    sw      a4,56(sp)
    mv      a3, a3
    sw      a5,48(sp)
    mv      a4, a4
    sw      a6,40(sp)
    mv      a5, a5
    sw      a7,32(sp)
    mv      a6, a6
    mv      a7, a7
    call    param32_rec
    sw      a0,4(sp)
    ld      ra,112(sp)
    ld      s0,96(sp)
    mv      a0, a0
    addi    sp,sp,312
    ret
.L4_0:
    .globl param32_arr
    .type param32_arr,@function
param32_arr:
    li      s1, -2592
    li      s1, -2592
    add     sp,s1,sp
    sd      ra,2200(sp)
    sd      s0,2184(sp)
    li      s2, 2592
    li      s2, 2592
    add     s0,s2,sp
.L2_0:
    li      s3, 0
    li      s4, 1
    li      s5, 1
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
    li      s6, 0
    li      s7, 0
    add     s6,s6,a0
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
    mv      s8, s8
    mv      s9, s9
    add     s10,s8,s9
    mv      s11, s10
    li      s1, 0
    add     s1,s1,a1
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
    li      s2, 0
    add     s2,s2,a1
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
    mv      s4, s4
    mv      s5, s5
    add     s7,s4,s5
    sd      a0,2168(sp)
    add     a0,s11,s7
    sw      a0,1928(sp)
    li      a0, 0
    sd      a1,2152(sp)
    li      a1, 1
    sd      a2,2136(sp)
    li      a2, 1
    sd      a3,2120(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1912(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1888(sp)
    add     a1,a0,a2
    sw      a0,1880(sp)
    add     a0,s11,a1
    sw      a0,1864(sp)
    li      a0, 0
    sw      a1,1872(sp)
    li      a1, 1
    sw      a2,1904(sp)
    li      a2, 1
    sd      a3,2136(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1848(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1824(sp)
    add     a1,a0,a2
    sw      a0,1816(sp)
    add     a0,s11,a1
    sw      a0,1800(sp)
    li      a0, 0
    sw      a1,1808(sp)
    li      a1, 1
    sw      a2,1840(sp)
    li      a2, 1
    add     a0,a0,a4
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1784(sp)
    li      a0, 0
    add     a1,a1,a4
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1760(sp)
    add     a1,a0,a2
    sw      a0,1752(sp)
    add     a0,s11,a1
    sw      a0,1736(sp)
    li      a0, 0
    sw      a1,1744(sp)
    li      a1, 1
    sw      a2,1776(sp)
    li      a2, 1
    add     a0,a0,a5
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1720(sp)
    li      a0, 0
    add     a1,a1,a5
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1696(sp)
    add     a1,a0,a2
    sw      a0,1688(sp)
    add     a0,s11,a1
    sw      a0,1672(sp)
    li      a0, 0
    sw      a1,1680(sp)
    li      a1, 1
    sw      a2,1712(sp)
    li      a2, 1
    add     a0,a0,a6
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1656(sp)
    li      a0, 0
    add     a1,a1,a6
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1632(sp)
    add     a1,a0,a2
    sw      a0,1624(sp)
    add     a0,s11,a1
    sw      a0,1608(sp)
    li      a0, 0
    sw      a1,1616(sp)
    li      a1, 1
    sw      a2,1648(sp)
    li      a2, 1
    add     a0,a0,a7
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1592(sp)
    li      a0, 0
    add     a1,a1,a7
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1568(sp)
    add     a1,a0,a2
    sw      a0,1560(sp)
    add     a0,s11,a1
    sw      a0,1544(sp)
    li      a0, 0
    sw      a1,1552(sp)
    li      a1, 1
    sw      a2,1584(sp)
    li      a2, 1
    sd      a3,2120(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1528(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1504(sp)
    add     a1,a0,a2
    sw      a0,1496(sp)
    add     a0,s11,a1
    sw      a0,1480(sp)
    li      a0, 0
    sw      a1,1488(sp)
    li      a1, 1
    sw      a2,1520(sp)
    li      a2, 1
    sd      a3,2584(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1464(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1440(sp)
    add     a1,a0,a2
    sw      a0,1432(sp)
    add     a0,s11,a1
    sw      a0,1416(sp)
    li      a0, 0
    sw      a1,1424(sp)
    li      a1, 1
    sw      a2,1456(sp)
    li      a2, 1
    sd      a3,2568(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1400(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1376(sp)
    add     a1,a0,a2
    sw      a0,1368(sp)
    add     a0,s11,a1
    sw      a0,1352(sp)
    li      a0, 0
    sw      a1,1360(sp)
    li      a1, 1
    sw      a2,1392(sp)
    li      a2, 1
    sd      a3,2552(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1336(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1312(sp)
    add     a1,a0,a2
    sw      a0,1304(sp)
    add     a0,s11,a1
    sw      a0,1288(sp)
    li      a0, 0
    sw      a1,1296(sp)
    li      a1, 1
    sw      a2,1328(sp)
    li      a2, 1
    sd      a3,2536(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1272(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1248(sp)
    add     a1,a0,a2
    sw      a0,1240(sp)
    add     a0,s11,a1
    sw      a0,1224(sp)
    li      a0, 0
    sw      a1,1232(sp)
    li      a1, 1
    sw      a2,1264(sp)
    li      a2, 1
    sd      a3,2520(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1208(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1184(sp)
    add     a1,a0,a2
    sw      a0,1176(sp)
    add     a0,s11,a1
    sw      a0,1160(sp)
    li      a0, 0
    sw      a1,1168(sp)
    li      a1, 1
    sw      a2,1200(sp)
    li      a2, 1
    sd      a3,2504(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1144(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1120(sp)
    add     a1,a0,a2
    sw      a0,1112(sp)
    add     a0,s11,a1
    sw      a0,1096(sp)
    li      a0, 0
    sw      a1,1104(sp)
    li      a1, 1
    sw      a2,1136(sp)
    li      a2, 1
    sd      a3,2488(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1080(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,1056(sp)
    add     a1,a0,a2
    sw      a0,1048(sp)
    add     a0,s11,a1
    sw      a0,1032(sp)
    li      a0, 0
    sw      a1,1040(sp)
    li      a1, 1
    sw      a2,1072(sp)
    li      a2, 1
    sd      a3,2472(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,1016(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,992(sp)
    add     a1,a0,a2
    sw      a0,984(sp)
    add     a0,s11,a1
    sw      a0,968(sp)
    li      a0, 0
    sw      a1,976(sp)
    li      a1, 1
    sw      a2,1008(sp)
    li      a2, 1
    sd      a3,2456(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,952(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,928(sp)
    add     a1,a0,a2
    sw      a0,920(sp)
    add     a0,s11,a1
    sw      a0,904(sp)
    li      a0, 0
    sw      a1,912(sp)
    li      a1, 1
    sw      a2,944(sp)
    li      a2, 1
    sd      a3,2440(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,888(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,864(sp)
    add     a1,a0,a2
    sw      a0,856(sp)
    add     a0,s11,a1
    sw      a0,840(sp)
    li      a0, 0
    sw      a1,848(sp)
    li      a1, 1
    sw      a2,880(sp)
    li      a2, 1
    sd      a3,2424(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,824(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,800(sp)
    add     a1,a0,a2
    sw      a0,792(sp)
    add     a0,s11,a1
    sw      a0,776(sp)
    li      a0, 0
    sw      a1,784(sp)
    li      a1, 1
    sw      a2,816(sp)
    li      a2, 1
    sd      a3,2408(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,760(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,736(sp)
    add     a1,a0,a2
    sw      a0,728(sp)
    add     a0,s11,a1
    sw      a0,712(sp)
    li      a0, 0
    sw      a1,720(sp)
    li      a1, 1
    sw      a2,752(sp)
    li      a2, 1
    sd      a3,2392(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,696(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,672(sp)
    add     a1,a0,a2
    sw      a0,664(sp)
    add     a0,s11,a1
    sw      a0,648(sp)
    li      a0, 0
    sw      a1,656(sp)
    li      a1, 1
    sw      a2,688(sp)
    li      a2, 1
    sd      a3,2376(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,632(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,608(sp)
    add     a1,a0,a2
    sw      a0,600(sp)
    add     a0,s11,a1
    sw      a0,584(sp)
    li      a0, 0
    sw      a1,592(sp)
    li      a1, 1
    sw      a2,624(sp)
    li      a2, 1
    sd      a3,2360(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,568(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,544(sp)
    add     a1,a0,a2
    sw      a0,536(sp)
    add     a0,s11,a1
    sw      a0,520(sp)
    li      a0, 0
    sw      a1,528(sp)
    li      a1, 1
    sw      a2,560(sp)
    li      a2, 1
    sd      a3,2344(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,504(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,480(sp)
    add     a1,a0,a2
    sw      a0,472(sp)
    add     a0,s11,a1
    sw      a0,456(sp)
    li      a0, 0
    sw      a1,464(sp)
    li      a1, 1
    sw      a2,496(sp)
    li      a2, 1
    sd      a3,2328(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,440(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,416(sp)
    add     a1,a0,a2
    sw      a0,408(sp)
    add     a0,s11,a1
    sw      a0,392(sp)
    li      a0, 0
    sw      a1,400(sp)
    li      a1, 1
    sw      a2,432(sp)
    li      a2, 1
    sd      a3,2312(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,376(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,352(sp)
    add     a1,a0,a2
    sw      a0,344(sp)
    add     a0,s11,a1
    sw      a0,328(sp)
    li      a0, 0
    sw      a1,336(sp)
    li      a1, 1
    sw      a2,368(sp)
    li      a2, 1
    sd      a3,2296(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,312(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,288(sp)
    add     a1,a0,a2
    sw      a0,280(sp)
    add     a0,s11,a1
    sw      a0,264(sp)
    li      a0, 0
    sw      a1,272(sp)
    li      a1, 1
    sw      a2,304(sp)
    li      a2, 1
    sd      a3,2280(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,248(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,224(sp)
    add     a1,a0,a2
    sw      a0,216(sp)
    add     a0,s11,a1
    sw      a0,200(sp)
    li      a0, 0
    sw      a1,208(sp)
    li      a1, 1
    sw      a2,240(sp)
    li      a2, 1
    sd      a3,2264(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,184(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,160(sp)
    add     a1,a0,a2
    sw      a0,152(sp)
    add     a0,s11,a1
    sw      a0,136(sp)
    li      a0, 0
    sw      a1,144(sp)
    li      a1, 1
    sw      a2,176(sp)
    li      a2, 1
    sd      a3,2248(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,120(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,96(sp)
    add     a1,a0,a2
    sw      a0,88(sp)
    add     a0,s11,a1
    sw      a0,72(sp)
    li      a0, 0
    sw      a1,80(sp)
    li      a1, 1
    sw      a2,112(sp)
    li      a2, 1
    sd      a3,2232(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,56(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,32(sp)
    add     a1,a0,a2
    sw      a0,24(sp)
    add     a0,s11,a1
    sw      a0,8(sp)
    li      a0, 2200
    add     a0,sp,a0
    ld      ra,0(a0)
    sd      a0,2200(sp)
    li      a0, 2184
    add     a0,sp,a0
    ld      s0,0(a0)
    mv      a0, s11
    sd      a0,2184(sp)
    li      a0, 2592
    li      a0, 2592
    add     sp,a0,sp
    ret
    .globl param16
    .type param16,@function
param16:
    addi    sp,sp,-872
    sd      ra,800(sp)
    sd      s0,784(sp)
    addi    s0,sp,872
.L1_0:
    sw      a0,776(sp)
    li      a0, 0
    sw      a1,768(sp)
    li      a1, 1
    sw      a2,760(sp)
    li      a2, 14
    sw      a3,752(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    li      a2, 0
    sd      a0,704(sp)
    li      a0, 1
    sw      a1,820(sp)
    li      a1, 13
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    mv      a0, a0
    sd      a0,0(a2)
    li      a1, 0
    sw      a0,828(sp)
    li      a0, 1
    sd      a2,688(sp)
    li      a2, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a0,0(a1)
    li      a2, 0
    sw      a0,768(sp)
    li      a0, 1
    sd      a1,672(sp)
    li      a1, 5
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    sd      a5,0(a2)
    li      a0, 0
    li      a1, 1
    sd      a2,656(sp)
    li      a2, 15
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    li      a2, 0
    sd      a0,640(sp)
    li      a0, 1
    sw      a1,812(sp)
    li      a1, 6
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    sd      a6,0(a2)
    li      a0, 0
    li      a1, 1
    sd      a2,624(sp)
    li      a2, 4
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a4,0(a0)
    li      a1, 0
    li      a2, 1
    sd      a0,608(sp)
    li      a0, 9
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a0,0(a1)
    li      a2, 0
    sw      a0,860(sp)
    li      a0, 1
    sd      a1,592(sp)
    li      a1, 8
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    mv      a0, a0
    sd      a0,0(a2)
    li      a1, 0
    sw      a0,868(sp)
    li      a0, 1
    sd      a2,576(sp)
    li      a2, 2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a0,0(a1)
    li      a2, 0
    sw      a0,760(sp)
    li      a0, 1
    sd      a1,560(sp)
    li      a1, 3
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    mv      a0, a0
    sd      a0,0(a2)
    li      a1, 0
    sw      a0,752(sp)
    li      a0, 1
    sd      a2,544(sp)
    li      a2, 10
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a0,0(a1)
    li      a2, 0
    sw      a0,852(sp)
    li      a0, 1
    sd      a1,528(sp)
    li      a1, 12
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    mv      a0, a0
    sd      a0,0(a2)
    li      a1, 0
    sw      a0,836(sp)
    li      a0, 1
    sd      a2,512(sp)
    li      a2, 7
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a7,0(a1)
    li      a0, 0
    li      a2, 1
    sd      a1,496(sp)
    li      a1, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    li      a2, 0
    sd      a0,480(sp)
    li      a0, 1
    sw      a1,776(sp)
    li      a1, 11
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    mv      a0, a0
    sd      a0,0(a2)
    sd      s1,1976(sp)
    sd      s2,1952(sp)
    sd      s3,2040(sp)
    sw      s4,1944(sp)
    sw      s5,1968(sp)
    sd      s6,2016(sp)
    sw      s7,1936(sp)
    sw      s8,2008(sp)
    sw      s9,2032(sp)
    sw      s10,2000(sp)
    sw      s11,1992(sp)
    sw      a3,456(sp)
    sw      a0,844(sp)
    mv      a0, a0
    li      a1, 16
    call    sort
    li      a0, 0
    li      a1, 1
    li      a3, 0
    mul     s1,a1,a3
    add     a0,a0,s1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s2, 0
    li      s3, 1
    add     s2,s2,s1
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    li      s4, 0
    li      s5, 2
    add     s4,s4,s1
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s6, 0
    li      s7, 3
    add     s6,s6,s1
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s8, 0
    li      s9, 4
    add     s8,s8,s1
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      s10, 0
    li      s11, 5
    add     s10,s10,s1
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    li      a1, 0
    li      a3, 6
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a3, 0
    li      s5, 7
    add     a3,a3,s1
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
    li      s3, 0
    li      s5, 1
    li      s7, 8
    add     s3,s3,s1
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s5, 0
    li      s7, 1
    li      s9, 9
    add     s5,s5,s1
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    li      s7, 0
    li      s9, 1
    li      s11, 10
    add     s7,s7,s1
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    li      s9, 0
    li      s11, 1
    sd      a0,384(sp)
    li      a0, 11
    add     s9,s9,s1
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    li      a0, 0
    sd      a1,240(sp)
    li      a1, 12
    add     a0,a0,s1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,96(sp)
    li      a0, 13
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,72(sp)
    li      a1, 14
    add     a0,a0,s1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,48(sp)
    li      a0, 15
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      s1,456(sp)
    sd      s2,360(sp)
    sd      s3,192(sp)
    sd      s4,336(sp)
    sd      s5,168(sp)
    sd      s6,312(sp)
    sd      s7,144(sp)
    sd      s8,288(sp)
    sd      s9,120(sp)
    sd      s10,264(sp)
    mv      a0, a0
    sd      a1,24(sp)
    mv      a1, a1
    sd      a2,464(sp)
    mv      a2, a2
    sd      a3,216(sp)
    mv      a3, a3
    sw      a4,744(sp)
    mv      a4, a4
    sw      a5,736(sp)
    mv      a5, a5
    sw      a6,728(sp)
    mv      a6, a6
    sw      a7,720(sp)
    mv      a7, a7
    call    param32_rec
    sw      a0,8(sp)
    ld      ra,800(sp)
    ld      s0,784(sp)
    mv      a0, a0
    addi    sp,sp,872
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-1352
    sd      ra,1344(sp)
    sd      s0,1328(sp)
    addi    s0,sp,1352
.L0_0:
    call    getint
    sw      a0,8(sp)
    sw      a0,1320(sp)
    call    getint
    sw      a0,1320(sp)
    sw      a0,1312(sp)
    call    getint
    sw      a0,1312(sp)
    sw      a0,1304(sp)
    call    getint
    sw      a0,1304(sp)
    sw      a0,1296(sp)
    call    getint
    sw      a0,1296(sp)
    sw      a0,1288(sp)
    call    getint
    sw      a0,1288(sp)
    sw      a0,1280(sp)
    call    getint
    sw      a0,1280(sp)
    sw      a0,1272(sp)
    call    getint
    sw      a0,1272(sp)
    sw      a0,1264(sp)
    call    getint
    sw      a0,1264(sp)
    sw      a0,1256(sp)
    call    getint
    sw      a0,1256(sp)
    sw      a0,1248(sp)
    call    getint
    sw      a0,1248(sp)
    sw      a0,1240(sp)
    call    getint
    sw      a0,1240(sp)
    sw      a0,1232(sp)
    call    getint
    sw      a0,1232(sp)
    sw      a0,1224(sp)
    call    getint
    sw      a0,1224(sp)
    sw      a0,1216(sp)
    call    getint
    sw      a0,1216(sp)
    sw      a0,1208(sp)
    call    getint
    sw      a0,1208(sp)
    sw      a0,1200(sp)
    sw      a0,1200(sp)
    mv      a0, a0
    mv      a1, a1
    mv      a2, a2
    mv      a3, a3
    mv      a4, a4
    mv      a5, a5
    mv      a6, a6
    mv      a7, a7
    call    param16
    sw      a0,1192(sp)
    li      a1, 0
    li      a2, 2
    li      a3, 0
    mul     a4,a2,a3
    add     a1,a1,a4
    li      a5, 1
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a0,0(a1)
    li      a6, 0
    add     a6,a6,a4
    li      a7, 1
    add     a6,a6,a4
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    li      s1, 8848
    sd      s1,0(a6)
    mv      s2, a5
    j       .while.head_90
.while.head_90:
    li      s3, 32
    slt     s4,s2,s3
    bnez    s4, .while.body_90
    j       .while.exit_90
.while.body_90:
    li      s5, 0
    add     s5,s5,a4
    add     s5,s5,a4
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    sub     s6,s2,a5
    li      s7, 0
    add     s7,s7,a4
    add     s7,s7,a4
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    mv      s8, s8
    sub     s9,s8,a5
    sd      s9,0(s5)
    li      s10, 0
    add     s10,s10,a4
    add     s10,s10,a4
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    sub     s11,s2,a5
    li      a2, 0
    li      a3, 2
    add     a2,a2,a4
    li      a3, 0
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    mv      a3, a3
    li      a5, 2
    sub     a7,a3,a5
    sd      a7,0(s10)
    li      a5, 1
    add     s1,s2,a5
    j       .while.head_90
.while.exit_90:
    li      a5, 0
    li      s3, 2
    sw      a0,1192(sp)
    li      a0, 0
    add     a5,a5,a4
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    li      a0, 0
    sd      a1,1176(sp)
    li      a1, 1
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,744(sp)
    li      a0, 2
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,720(sp)
    li      a1, 3
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,696(sp)
    li      a0, 4
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,672(sp)
    li      a1, 5
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,648(sp)
    li      a0, 6
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,624(sp)
    li      a1, 7
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,600(sp)
    li      a0, 8
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,576(sp)
    li      a1, 9
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,552(sp)
    li      a0, 10
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,528(sp)
    li      a1, 11
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,504(sp)
    li      a0, 12
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,480(sp)
    li      a1, 13
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,456(sp)
    li      a0, 14
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,432(sp)
    li      a1, 15
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,408(sp)
    li      a0, 16
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,384(sp)
    li      a1, 17
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,360(sp)
    li      a0, 18
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,336(sp)
    li      a1, 19
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,312(sp)
    li      a0, 20
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,288(sp)
    li      a1, 21
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,264(sp)
    li      a0, 22
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,240(sp)
    li      a1, 23
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,216(sp)
    li      a0, 24
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,192(sp)
    li      a1, 25
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,168(sp)
    li      a0, 26
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,144(sp)
    li      a1, 27
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,120(sp)
    li      a0, 28
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,96(sp)
    li      a1, 29
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,72(sp)
    li      a0, 30
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,48(sp)
    li      a1, 31
    add     a0,a0,a4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sw      s1,784(sp)
    sw      s2,892(sp)
    sb      s4,891(sp)
    sd      s5,880(sp)
    sw      s6,876(sp)
    sd      s7,864(sp)
    sw      s8,856(sp)
    sw      s9,848(sp)
    sd      s10,832(sp)
    sw      s11,824(sp)
    sd      a0,24(sp)
    mv      a0, a0
    mv      a1, a1
    sd      a2,808(sp)
    mv      a2, a2
    sw      a3,800(sp)
    mv      a3, a3
    sw      a4,1152(sp)
    mv      a4, a4
    sd      a5,768(sp)
    mv      a5, a5
    sd      a6,1160(sp)
    mv      a6, a6
    sw      a7,792(sp)
    mv      a7, a7
    call    param32_arr
    sw      a0,4(sp)
    sw      a0,4(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    ld      ra,1344(sp)
    ld      s0,1328(sp)
    li      a0, 0
    addi    sp,sp,1352
    ret
