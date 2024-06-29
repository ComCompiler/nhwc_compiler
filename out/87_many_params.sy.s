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
    .globl sort
    .type sort,@function
sort:
    addi    sp,sp,-144
    sd      ra,136(sp)
    sd      s0,128(sp)
    addi    s0,sp,144
.L5_0:
    li      a2, 0
    j       .while.head_21
.while.head_21:
    li      a3, 1
    sub     a4,a1,a3
    slt     a5,a2,a4
    bnez    a5, .while.body_21
    j       .while.exit_21
.while.body_21:
    li      a3, 1
    add     a6,a2,a3
    mv      a7, a6
    j       .while.head_25
.while.head_25:
    slt     a3,a7,a1
    bnez    a3, .while.body_25
    j       .while.exit_25
.while.body_25:
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a7
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,a0
    lw      s4,0(s1)
    li      s5, 0
    mul     s6,s2,a2
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,a0
    lw      s7,0(s5)
    slt     s8,s7,s4
    bnez    s8, .branch_true_28
    j       .branch_false_28
.branch_true_28:
    li      s2, 0
    li      s3, 1
    mul     s6,s3,a2
    add     s2,s2,s6
    slli s2,s2,2
    add     s2,s2,a0
    lw      s9,0(s2)
    mv      s10, s9
    li      s11, 0
    mul     s6,s3,a2
    add     s11,s11,s6
    slli s11,s11,2
    add     s11,s11,a0
    li      s3, 0
    li      s6, 1
    sd      a0,120(sp)
    mul     a0,s6,a7
    add     s3,s3,a0
    slli s3,s3,2
    ld      a0,120(sp)
    add     s3,s3,a0
    lw      s6,0(s3)
    sw      s6,0(s11)
    sd      a0,120(sp)
    li      a0, 0
    sw      a1,116(sp)
    li      a1, 1
    sw      a2,112(sp)
    mul     a2,a1,a7
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,120(sp)
    add     a0,a0,a1
    sw      s10,0(a0)
    sd      a1,120(sp)
    sw      s9,44(sp)
    sd      a0,8(sp)
    sd      s2,48(sp)
    sd      s3,24(sp)
    sw      s6,20(sp)
    sw      s10,40(sp)
    sd      s11,32(sp)
    lw      a1,116(sp)
    lw      a2,112(sp)
    ld      a0,120(sp)
    j       .branch_false_28
.branch_false_28:
.L6_0:
    li      s2, 1
    add     s3,a7,s2
    mv      a7, s3
    sd      s1,80(sp)
    sw      s7,60(sp)
    sw      s3,4(sp)
    sd      s5,64(sp)
    sw      s4,76(sp)
    sb      s8,59(sp)
    sb      a3,95(sp)
    j       .while.head_25
.while.exit_25:
    li      s1, 1
    add     s2,a2,s1
    mv      a2, s2
    sw      s2,0(sp)
    sw      a7,96(sp)
    sw      a4,108(sp)
    sb      a5,107(sp)
    sw      a6,100(sp)
    sb      a3,95(sp)
    j       .while.head_21
.while.exit_21:
    ld      ra,136(sp)
    ld      s0,128(sp)
    addi    sp,sp,144
    ret
    .globl param32_rec
    .type param32_rec,@function
param32_rec:
    addi    sp,sp,-168
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,168
.L3_0:
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
    bnez    s2, .branch_true_39
    j       .branch_false_39
.branch_true_39:
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a1,48(sp)
    sw      a0,52(sp)
    lw      a0,48(sp)
    addi    sp,sp,168
    ret
.branch_false_39:
    li      s1, 1
    sub     s3,a0,s1
    add     s4,a1,a2
    li      s5, 998244353
    rem     s6,s4,s5
    lw      s7,160(sp)
    sw      s7,-4(sp)
    lw      s8,156(sp)
    sw      s8,-8(sp)
    lw      s9,152(sp)
    sw      s9,-12(sp)
    lw      s10,148(sp)
    sw      s10,-16(sp)
    lw      s11,144(sp)
    sw      s11,-20(sp)
    lw      s1,140(sp)
    sw      s1,-24(sp)
    lw      s5,136(sp)
    sw      s5,-28(sp)
    sw      a0,52(sp)
    lw      a0,132(sp)
    sw      a0,-32(sp)
    sw      a0,132(sp)
    lw      a0,128(sp)
    sw      a0,-36(sp)
    sw      a0,128(sp)
    lw      a0,124(sp)
    sw      a0,-40(sp)
    sw      a0,124(sp)
    lw      a0,120(sp)
    sw      a0,-44(sp)
    sw      a0,120(sp)
    lw      a0,116(sp)
    sw      a0,-48(sp)
    sw      a0,116(sp)
    lw      a0,112(sp)
    sw      a0,-52(sp)
    sw      a0,112(sp)
    lw      a0,108(sp)
    sw      a0,-56(sp)
    sw      a0,108(sp)
    lw      a0,104(sp)
    sw      a0,-60(sp)
    sw      a0,104(sp)
    lw      a0,100(sp)
    sw      a0,-64(sp)
    sw      a0,100(sp)
    lw      a0,96(sp)
    sw      a0,-68(sp)
    sw      a0,96(sp)
    lw      a0,92(sp)
    sw      a0,-72(sp)
    sw      a0,92(sp)
    lw      a0,88(sp)
    sw      a0,-76(sp)
    sw      a0,88(sp)
    lw      a0,84(sp)
    sw      a0,-80(sp)
    sw      a0,84(sp)
    lw      a0,80(sp)
    sw      a0,-84(sp)
    sw      a0,80(sp)
    lw      a0,76(sp)
    sw      a0,-88(sp)
    sw      a0,76(sp)
    lw      a0,72(sp)
    sw      a0,-92(sp)
    sw      a0,72(sp)
    li      a0, 0
    sw      a0,-96(sp)
    sw      s1,140(sp)
    sb      s2,23(sp)
    sw      s3,16(sp)
    sw      s4,12(sp)
    sw      s5,136(sp)
    sw      s6,8(sp)
    sw      s7,160(sp)
    sw      s8,156(sp)
    sw      s9,152(sp)
    sw      s10,148(sp)
    sw      s11,144(sp)
    sw      a1,48(sp)
    sw      a2,44(sp)
    sw      a3,40(sp)
    sw      a4,36(sp)
    sw      a5,32(sp)
    sw      a6,28(sp)
    sw      a7,24(sp)
    lw      a0,16(sp)
    lw      a1,8(sp)
    lw      a2,40(sp)
    lw      a3,36(sp)
    lw      a4,32(sp)
    lw      a5,28(sp)
    lw      a6,24(sp)
    lw      a7,164(sp)
    call    param32_rec
    sw      a0,4(sp)
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,168
    ret
.L4_0:
    .globl param32_arr
    .type param32_arr,@function
param32_arr:
    addi    sp,sp,-1552
    sd      ra,1352(sp)
    sd      s0,1344(sp)
    addi    s0,sp,1552
.L2_0:
    li      s1, 0
    li      s2, 1
    li      s3, 1
    mul     s4,s2,s3
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,a0
    lw      s5,0(s1)
    li      s6, 0
    li      s7, 0
    mul     s8,s2,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,a0
    lw      s9,0(s6)
    add     s10,s9,s5
    mv      s11, s10
    li      s2, 0
    li      s4, 1
    mul     s7,s3,s4
    add     s2,s2,s7
    slli s2,s2,2
    add     s2,s2,a1
    lw      s3,0(s2)
    li      s4, 0
    li      s7, 1
    li      s8, 0
    sd      a0,1336(sp)
    mul     a0,s7,s8
    add     s4,s4,a0
    slli s4,s4,2
    add     s4,s4,a1
    lw      a0,0(s4)
    add     s7,s11,a0
    add     s8,s7,s3
    mv      s11, s8
    sw      a0,1212(sp)
    li      a0, 0
    sd      a1,1328(sp)
    li      a1, 1
    sd      a2,1320(sp)
    li      a2, 1
    sd      a3,1312(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1320(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,1192(sp)
    li      a0, 1
    sd      a1,1320(sp)
    li      a1, 0
    sw      a2,1188(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1320(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1320(sp)
    lw      a0,1188(sp)
    sw      a1,1172(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,1188(sp)
    li      a0, 0
    sw      a1,1164(sp)
    li      a1, 1
    sw      a2,1168(sp)
    li      a2, 1
    sd      a3,1176(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1312(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,1152(sp)
    li      a0, 1
    sd      a1,1312(sp)
    li      a1, 0
    sw      a2,1148(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1312(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1312(sp)
    lw      a0,1148(sp)
    sw      a1,1132(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,1148(sp)
    li      a0, 0
    sw      a1,1124(sp)
    li      a1, 1
    sw      a2,1128(sp)
    li      a2, 1
    sd      a3,1136(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a4
    lw      a1,0(a0)
    li      a2, 0
    li      a3, 1
    sd      a0,1112(sp)
    li      a0, 0
    sw      a1,1108(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a4
    lw      a0,0(a2)
    add     a1,s11,a0
    lw      a3,1108(sp)
    sw      a0,1092(sp)
    add     a0,a1,a3
    mv      s11, a0
    sw      a0,1084(sp)
    li      a0, 0
    sw      a1,1088(sp)
    li      a1, 1
    sd      a2,1096(sp)
    li      a2, 1
    sw      a3,1108(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a5
    lw      a1,0(a0)
    li      a2, 0
    li      a3, 1
    sd      a0,1072(sp)
    li      a0, 0
    sw      a1,1068(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a5
    lw      a0,0(a2)
    add     a1,s11,a0
    lw      a3,1068(sp)
    sw      a0,1052(sp)
    add     a0,a1,a3
    mv      s11, a0
    sw      a0,1044(sp)
    li      a0, 0
    sw      a1,1048(sp)
    li      a1, 1
    sd      a2,1056(sp)
    li      a2, 1
    sw      a3,1068(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a6
    lw      a1,0(a0)
    li      a2, 0
    li      a3, 1
    sd      a0,1032(sp)
    li      a0, 0
    sw      a1,1028(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a6
    lw      a0,0(a2)
    add     a1,s11,a0
    lw      a3,1028(sp)
    sw      a0,1012(sp)
    add     a0,a1,a3
    mv      s11, a0
    sw      a0,1004(sp)
    li      a0, 0
    sw      a1,1008(sp)
    li      a1, 1
    sd      a2,1016(sp)
    li      a2, 1
    sw      a3,1028(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a7
    lw      a1,0(a0)
    li      a2, 0
    li      a3, 1
    sd      a0,992(sp)
    li      a0, 0
    sw      a1,988(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a7
    lw      a0,0(a2)
    add     a1,s11,a0
    lw      a3,988(sp)
    sw      a0,972(sp)
    add     a0,a1,a3
    mv      s11, a0
    sw      a0,964(sp)
    li      a0, 0
    sw      a1,968(sp)
    li      a1, 1
    sd      a2,976(sp)
    li      a2, 1
    sw      a3,988(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1544(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,952(sp)
    li      a0, 1
    sd      a1,1544(sp)
    li      a1, 0
    sw      a2,948(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1544(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1544(sp)
    lw      a0,948(sp)
    sw      a1,932(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,948(sp)
    li      a0, 0
    sw      a1,924(sp)
    li      a1, 1
    sw      a2,928(sp)
    li      a2, 1
    sd      a3,936(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1536(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,912(sp)
    li      a0, 1
    sd      a1,1536(sp)
    li      a1, 0
    sw      a2,908(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1536(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1536(sp)
    lw      a0,908(sp)
    sw      a1,892(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,908(sp)
    li      a0, 0
    sw      a1,884(sp)
    li      a1, 1
    sw      a2,888(sp)
    li      a2, 1
    sd      a3,896(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1528(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,872(sp)
    li      a0, 1
    sd      a1,1528(sp)
    li      a1, 0
    sw      a2,868(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1528(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1528(sp)
    lw      a0,868(sp)
    sw      a1,852(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,868(sp)
    li      a0, 0
    sw      a1,844(sp)
    li      a1, 1
    sw      a2,848(sp)
    li      a2, 1
    sd      a3,856(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1520(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,832(sp)
    li      a0, 1
    sd      a1,1520(sp)
    li      a1, 0
    sw      a2,828(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1520(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1520(sp)
    lw      a0,828(sp)
    sw      a1,812(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,828(sp)
    li      a0, 0
    sw      a1,804(sp)
    li      a1, 1
    sw      a2,808(sp)
    li      a2, 1
    sd      a3,816(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1512(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,792(sp)
    li      a0, 1
    sd      a1,1512(sp)
    li      a1, 0
    sw      a2,788(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1512(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1512(sp)
    lw      a0,788(sp)
    sw      a1,772(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,788(sp)
    li      a0, 0
    sw      a1,764(sp)
    li      a1, 1
    sw      a2,768(sp)
    li      a2, 1
    sd      a3,776(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1504(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,752(sp)
    li      a0, 1
    sd      a1,1504(sp)
    li      a1, 0
    sw      a2,748(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1504(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1504(sp)
    lw      a0,748(sp)
    sw      a1,732(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,748(sp)
    li      a0, 0
    sw      a1,724(sp)
    li      a1, 1
    sw      a2,728(sp)
    li      a2, 1
    sd      a3,736(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1496(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,712(sp)
    li      a0, 1
    sd      a1,1496(sp)
    li      a1, 0
    sw      a2,708(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1496(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1496(sp)
    lw      a0,708(sp)
    sw      a1,692(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,708(sp)
    li      a0, 0
    sw      a1,684(sp)
    li      a1, 1
    sw      a2,688(sp)
    li      a2, 1
    sd      a3,696(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1488(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,672(sp)
    li      a0, 1
    sd      a1,1488(sp)
    li      a1, 0
    sw      a2,668(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1488(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1488(sp)
    lw      a0,668(sp)
    sw      a1,652(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,668(sp)
    li      a0, 0
    sw      a1,644(sp)
    li      a1, 1
    sw      a2,648(sp)
    li      a2, 1
    sd      a3,656(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1480(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,632(sp)
    li      a0, 1
    sd      a1,1480(sp)
    li      a1, 0
    sw      a2,628(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1480(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1480(sp)
    lw      a0,628(sp)
    sw      a1,612(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,628(sp)
    li      a0, 0
    sw      a1,604(sp)
    li      a1, 1
    sw      a2,608(sp)
    li      a2, 1
    sd      a3,616(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1472(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,592(sp)
    li      a0, 1
    sd      a1,1472(sp)
    li      a1, 0
    sw      a2,588(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1472(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1472(sp)
    lw      a0,588(sp)
    sw      a1,572(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,588(sp)
    li      a0, 0
    sw      a1,564(sp)
    li      a1, 1
    sw      a2,568(sp)
    li      a2, 1
    sd      a3,576(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1464(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,552(sp)
    li      a0, 1
    sd      a1,1464(sp)
    li      a1, 0
    sw      a2,548(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1464(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1464(sp)
    lw      a0,548(sp)
    sw      a1,532(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,548(sp)
    li      a0, 0
    sw      a1,524(sp)
    li      a1, 1
    sw      a2,528(sp)
    li      a2, 1
    sd      a3,536(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1456(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,512(sp)
    li      a0, 1
    sd      a1,1456(sp)
    li      a1, 0
    sw      a2,508(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1456(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1456(sp)
    lw      a0,508(sp)
    sw      a1,492(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,508(sp)
    li      a0, 0
    sw      a1,484(sp)
    li      a1, 1
    sw      a2,488(sp)
    li      a2, 1
    sd      a3,496(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1448(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,472(sp)
    li      a0, 1
    sd      a1,1448(sp)
    li      a1, 0
    sw      a2,468(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1448(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1448(sp)
    lw      a0,468(sp)
    sw      a1,452(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,468(sp)
    li      a0, 0
    sw      a1,444(sp)
    li      a1, 1
    sw      a2,448(sp)
    li      a2, 1
    sd      a3,456(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1440(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,432(sp)
    li      a0, 1
    sd      a1,1440(sp)
    li      a1, 0
    sw      a2,428(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1440(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1440(sp)
    lw      a0,428(sp)
    sw      a1,412(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,428(sp)
    li      a0, 0
    sw      a1,404(sp)
    li      a1, 1
    sw      a2,408(sp)
    li      a2, 1
    sd      a3,416(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1432(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,392(sp)
    li      a0, 1
    sd      a1,1432(sp)
    li      a1, 0
    sw      a2,388(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1432(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1432(sp)
    lw      a0,388(sp)
    sw      a1,372(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,388(sp)
    li      a0, 0
    sw      a1,364(sp)
    li      a1, 1
    sw      a2,368(sp)
    li      a2, 1
    sd      a3,376(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1424(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,352(sp)
    li      a0, 1
    sd      a1,1424(sp)
    li      a1, 0
    sw      a2,348(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1424(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1424(sp)
    lw      a0,348(sp)
    sw      a1,332(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,348(sp)
    li      a0, 0
    sw      a1,324(sp)
    li      a1, 1
    sw      a2,328(sp)
    li      a2, 1
    sd      a3,336(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1416(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,312(sp)
    li      a0, 1
    sd      a1,1416(sp)
    li      a1, 0
    sw      a2,308(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1416(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1416(sp)
    lw      a0,308(sp)
    sw      a1,292(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,308(sp)
    li      a0, 0
    sw      a1,284(sp)
    li      a1, 1
    sw      a2,288(sp)
    li      a2, 1
    sd      a3,296(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1408(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,272(sp)
    li      a0, 1
    sd      a1,1408(sp)
    li      a1, 0
    sw      a2,268(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1408(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1408(sp)
    lw      a0,268(sp)
    sw      a1,252(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,268(sp)
    li      a0, 0
    sw      a1,244(sp)
    li      a1, 1
    sw      a2,248(sp)
    li      a2, 1
    sd      a3,256(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1400(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,232(sp)
    li      a0, 1
    sd      a1,1400(sp)
    li      a1, 0
    sw      a2,228(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1400(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1400(sp)
    lw      a0,228(sp)
    sw      a1,212(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,228(sp)
    li      a0, 0
    sw      a1,204(sp)
    li      a1, 1
    sw      a2,208(sp)
    li      a2, 1
    sd      a3,216(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1392(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,192(sp)
    li      a0, 1
    sd      a1,1392(sp)
    li      a1, 0
    sw      a2,188(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1392(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1392(sp)
    lw      a0,188(sp)
    sw      a1,172(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,188(sp)
    li      a0, 0
    sw      a1,164(sp)
    li      a1, 1
    sw      a2,168(sp)
    li      a2, 1
    sd      a3,176(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1384(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,152(sp)
    li      a0, 1
    sd      a1,1384(sp)
    li      a1, 0
    sw      a2,148(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1384(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1384(sp)
    lw      a0,148(sp)
    sw      a1,132(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,148(sp)
    li      a0, 0
    sw      a1,124(sp)
    li      a1, 1
    sw      a2,128(sp)
    li      a2, 1
    sd      a3,136(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1376(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,112(sp)
    li      a0, 1
    sd      a1,1376(sp)
    li      a1, 0
    sw      a2,108(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1376(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1376(sp)
    lw      a0,108(sp)
    sw      a1,92(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,108(sp)
    li      a0, 0
    sw      a1,84(sp)
    li      a1, 1
    sw      a2,88(sp)
    li      a2, 1
    sd      a3,96(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1368(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,72(sp)
    li      a0, 1
    sd      a1,1368(sp)
    li      a1, 0
    sw      a2,68(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1368(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1368(sp)
    lw      a0,68(sp)
    sw      a1,52(sp)
    add     a1,a2,a0
    mv      s11, a1
    sw      a0,68(sp)
    li      a0, 0
    sw      a1,44(sp)
    li      a1, 1
    sw      a2,48(sp)
    li      a2, 1
    sd      a3,56(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,1360(sp)
    add     a0,a0,a1
    lw      a2,0(a0)
    li      a3, 0
    sd      a0,32(sp)
    li      a0, 1
    sd      a1,1360(sp)
    li      a1, 0
    sw      a2,28(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1360(sp)
    add     a3,a3,a0
    lw      a1,0(a3)
    add     a2,s11,a1
    sd      a0,1360(sp)
    lw      a0,28(sp)
    sw      a1,12(sp)
    add     a1,a2,a0
    mv      s11, a1
    ld      ra,1352(sp)
    ld      s0,1344(sp)
    sw      s11,1244(sp)
    sw      a0,28(sp)
    lw      a0,1244(sp)
    addi    sp,sp,1552
    ret
    .globl param16
    .type param16,@function
param16:
    addi    sp,sp,-544
    sd      ra,504(sp)
    sd      s0,496(sp)
    addi    s0,sp,544
.L1_0:
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,264
    sd      s1,456(sp)
    sw      a0,492(sp)
    sw      a1,488(sp)
    sw      a2,484(sp)
    sw      a3,480(sp)
    sw      a4,476(sp)
    sw      a5,472(sp)
    sw      a6,468(sp)
    sw      a7,464(sp)
    ld      a0,456(sp)
    li      a1, 0
    li      a2, 64
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 1
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,264
    lw      a4,488(sp)
    sw      a4,0(a0)
    li      a5, 0
    li      a6, 2
    mul     a7,a2,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,264
    lw      s1,484(sp)
    sw      s1,0(a5)
    li      s2, 0
    li      s3, 6
    mul     s4,a2,s3
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,264
    lw      s5,468(sp)
    sw      s5,0(s2)
    li      s6, 0
    li      s7, 10
    mul     s8,a2,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,264
    lw      s9,532(sp)
    sw      s9,0(s6)
    li      s10, 0
    li      s11, 9
    mul     a1,a2,s11
    add     s10,s10,a1
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,264
    lw      a1,536(sp)
    sw      a1,0(s10)
    li      a2, 0
    li      a3, 1
    li      a6, 7
    mul     a7,a3,a6
    add     a2,a2,a7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,264
    lw      a3,464(sp)
    sw      a3,0(a2)
    li      a6, 0
    li      a7, 1
    li      s3, 14
    mul     s4,a7,s3
    add     a6,a6,s4
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,264
    lw      a7,516(sp)
    sw      a7,0(a6)
    li      s3, 0
    li      s4, 1
    li      s7, 8
    mul     s8,s4,s7
    add     s3,s3,s8
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,264
    lw      s4,540(sp)
    sw      s4,0(s3)
    li      s7, 0
    li      s8, 1
    li      s11, 3
    sd      a0,448(sp)
    mul     a0,s8,s11
    add     s7,s7,a0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
    lw      a0,480(sp)
    sw      a0,0(s7)
    li      s8, 0
    li      s11, 1
    sw      a0,480(sp)
    li      a0, 15
    sw      a1,536(sp)
    mul     a1,s11,a0
    add     s8,s8,a1
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,264
    lw      a0,512(sp)
    sw      a0,0(s8)
    li      a1, 0
    sw      a0,512(sp)
    li      a0, 5
    sd      a2,408(sp)
    mul     a2,s11,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    lw      a0,472(sp)
    sw      a0,0(a1)
    li      a2, 0
    sw      a0,472(sp)
    li      a0, 12
    sd      a1,368(sp)
    mul     a1,s11,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,264
    lw      a0,524(sp)
    sw      a0,0(a2)
    li      a1, 0
    sw      a0,524(sp)
    li      a0, 11
    sd      a2,360(sp)
    mul     a2,s11,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    lw      a0,528(sp)
    sw      a0,0(a1)
    li      a2, 0
    sw      a0,528(sp)
    li      a0, 0
    sd      a1,352(sp)
    mul     a1,s11,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,264
    lw      a0,492(sp)
    sw      a0,0(a2)
    li      a1, 0
    sw      a0,492(sp)
    li      a0, 13
    sd      a2,344(sp)
    mul     a2,s11,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    lw      a0,520(sp)
    sw      a0,0(a1)
    li      a2, 0
    sw      a0,520(sp)
    li      a0, 4
    sd      a1,336(sp)
    mul     a1,s11,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,264
    lw      a0,476(sp)
    sw      a0,0(a2)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    sw      s1,484(sp)
    sd      s2,432(sp)
    sd      s3,392(sp)
    sw      s4,540(sp)
    sw      s5,468(sp)
    sd      s6,424(sp)
    sd      s7,384(sp)
    sd      s8,376(sp)
    sw      s9,532(sp)
    sd      s10,416(sp)
    sw      a0,476(sp)
    sd      a1,256(sp)
    sd      a2,328(sp)
    sw      a3,464(sp)
    sw      a4,488(sp)
    sd      a5,440(sp)
    sd      a6,400(sp)
    sw      a7,516(sp)
    ld      a0,256(sp)
    li      a1, 16
    call    sort
    li      a0, 0
    li      a1, 1
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,264
    lw      a4,0(a0)
    li      a5, 0
    li      a6, 1
    mul     a7,a1,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,264
    lw      s1,0(a5)
    li      s2, 0
    li      s3, 2
    mul     s4,a6,s3
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,264
    lw      s5,0(s2)
    li      s6, 0
    li      s7, 3
    mul     s8,a6,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,264
    lw      s9,0(s6)
    li      s10, 0
    li      s11, 4
    mul     a1,a6,s11
    add     s10,s10,a1
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,264
    lw      a1,0(s10)
    li      a2, 0
    li      a3, 5
    mul     a7,a6,a3
    add     a2,a2,a7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,264
    lw      a3,0(a2)
    li      a6, 0
    li      a7, 1
    li      s3, 6
    mul     s4,a7,s3
    add     a6,a6,s4
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,264
    lw      a7,0(a6)
    li      s3, 0
    li      s4, 1
    li      s7, 7
    mul     s8,s4,s7
    add     s3,s3,s8
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,264
    lw      s4,0(s3)
    li      s7, 0
    li      s8, 1
    li      s11, 8
    sd      a0,248(sp)
    mul     a0,s8,s11
    add     s7,s7,a0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
    lw      a0,0(s7)
    li      s8, 0
    li      s11, 1
    sw      a0,116(sp)
    li      a0, 9
    sw      a1,180(sp)
    mul     a1,s11,a0
    add     s8,s8,a1
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,264
    lw      a0,0(s8)
    li      a1, 0
    sw      a0,100(sp)
    li      a0, 10
    sd      a2,168(sp)
    mul     a2,s11,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    lw      a0,0(a1)
    li      a2, 0
    sw      a0,84(sp)
    li      a0, 11
    sd      a1,88(sp)
    mul     a1,s11,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,264
    lw      a0,0(a2)
    li      a1, 0
    sw      a0,68(sp)
    li      a0, 12
    sd      a2,72(sp)
    mul     a2,s11,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    lw      a0,0(a1)
    li      a2, 0
    sw      a0,52(sp)
    li      a0, 13
    sd      a1,56(sp)
    mul     a1,s11,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,264
    lw      a0,0(a2)
    li      a1, 0
    sw      a0,36(sp)
    li      a0, 14
    sd      a2,40(sp)
    mul     a2,s11,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    lw      a0,0(a1)
    li      a2, 0
    sw      a0,20(sp)
    li      a0, 15
    sd      a1,24(sp)
    mul     a1,s11,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,264
    lw      a0,0(a2)
    lw      a1,116(sp)
    sw      a1,-4(sp)
    lw      s11,100(sp)
    sw      s11,-8(sp)
    sw      a0,4(sp)
    lw      a0,84(sp)
    sw      a0,-12(sp)
    sw      a0,84(sp)
    lw      a0,68(sp)
    sw      a0,-16(sp)
    sw      a0,68(sp)
    lw      a0,52(sp)
    sw      a0,-20(sp)
    sw      a0,52(sp)
    lw      a0,36(sp)
    sw      a0,-24(sp)
    sw      a0,36(sp)
    lw      a0,20(sp)
    sw      a0,-28(sp)
    sw      a0,20(sp)
    lw      a0,4(sp)
    sw      a0,-32(sp)
    sw      a0,4(sp)
    lw      a0,492(sp)
    sw      a0,-36(sp)
    sw      a0,492(sp)
    lw      a0,488(sp)
    sw      a0,-40(sp)
    sw      a0,488(sp)
    lw      a0,484(sp)
    sw      a0,-44(sp)
    sw      a0,484(sp)
    lw      a0,480(sp)
    sw      a0,-48(sp)
    sw      a0,480(sp)
    lw      a0,476(sp)
    sw      a0,-52(sp)
    sw      a0,476(sp)
    lw      a0,472(sp)
    sw      a0,-56(sp)
    sw      a0,472(sp)
    lw      a0,468(sp)
    sw      a0,-60(sp)
    sw      a0,468(sp)
    lw      a0,464(sp)
    sw      a0,-64(sp)
    sw      a0,464(sp)
    lw      a0,540(sp)
    sw      a0,-68(sp)
    sw      a0,540(sp)
    lw      a0,536(sp)
    sw      a0,-72(sp)
    sw      a0,536(sp)
    lw      a0,532(sp)
    sw      a0,-76(sp)
    sw      a0,532(sp)
    lw      a0,528(sp)
    sw      a0,-80(sp)
    sw      a0,528(sp)
    lw      a0,524(sp)
    sw      a0,-84(sp)
    sw      a0,524(sp)
    lw      a0,520(sp)
    sw      a0,-88(sp)
    sw      a0,520(sp)
    lw      a0,516(sp)
    sw      a0,-92(sp)
    sw      a0,516(sp)
    lw      a0,512(sp)
    sw      a0,-96(sp)
    sw      s1,228(sp)
    sd      s2,216(sp)
    sd      s3,136(sp)
    sw      s4,132(sp)
    sw      s5,212(sp)
    sd      s6,200(sp)
    sd      s7,120(sp)
    sd      s8,104(sp)
    sw      s9,196(sp)
    sd      s10,184(sp)
    sw      s11,100(sp)
    sw      a0,512(sp)
    sw      a1,116(sp)
    sd      a2,8(sp)
    sw      a3,164(sp)
    sw      a4,244(sp)
    sd      a5,232(sp)
    sd      a6,152(sp)
    sw      a7,148(sp)
    lw      a0,244(sp)
    lw      a1,228(sp)
    lw      a2,212(sp)
    lw      a3,196(sp)
    lw      a4,180(sp)
    lw      a5,164(sp)
    lw      a6,148(sp)
    lw      a7,132(sp)
    call    param32_rec
    sw      a0,0(sp)
    ld      ra,504(sp)
    ld      s0,496(sp)
    sw      a0,0(sp)
    lw      a0,0(sp)
    addi    sp,sp,544
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-712
    sd      ra,704(sp)
    sd      s0,696(sp)
    addi    s0,sp,712
.L0_0:
    call    getint
    sw      a0,692(sp)
    sw      a0,692(sp)
    call    getint
    sw      a0,688(sp)
    sw      a0,688(sp)
    call    getint
    sw      a0,684(sp)
    sw      a0,684(sp)
    call    getint
    sw      a0,680(sp)
    sw      a0,680(sp)
    call    getint
    sw      a0,676(sp)
    sw      a0,676(sp)
    call    getint
    sw      a0,672(sp)
    sw      a0,672(sp)
    call    getint
    sw      a0,668(sp)
    sw      a0,668(sp)
    call    getint
    sw      a0,664(sp)
    sw      a0,664(sp)
    call    getint
    sw      a0,660(sp)
    sw      a0,660(sp)
    call    getint
    sw      a0,656(sp)
    sw      a0,656(sp)
    call    getint
    sw      a0,652(sp)
    sw      a0,652(sp)
    call    getint
    sw      a0,648(sp)
    sw      a0,648(sp)
    call    getint
    sw      a0,644(sp)
    sw      a0,644(sp)
    call    getint
    sw      a0,640(sp)
    sw      a0,640(sp)
    call    getint
    sw      a0,636(sp)
    sw      a0,636(sp)
    call    getint
    sw      a0,632(sp)
    lw      a1,660(sp)
    sw      a1,-4(sp)
    lw      a2,656(sp)
    sw      a2,-8(sp)
    lw      a3,652(sp)
    sw      a3,-12(sp)
    lw      a4,648(sp)
    sw      a4,-16(sp)
    lw      a5,644(sp)
    sw      a5,-20(sp)
    lw      a6,640(sp)
    sw      a6,-24(sp)
    lw      a7,636(sp)
    sw      a7,-28(sp)
    sw      a0,-32(sp)
    sw      a0,632(sp)
    sw      a1,660(sp)
    sw      a2,656(sp)
    sw      a3,652(sp)
    sw      a4,648(sp)
    sw      a5,644(sp)
    sw      a6,640(sp)
    sw      a7,636(sp)
    lw      a0,692(sp)
    lw      a1,688(sp)
    lw      a2,684(sp)
    lw      a3,680(sp)
    lw      a4,676(sp)
    lw      a5,672(sp)
    lw      a6,668(sp)
    lw      a7,664(sp)
    call    param16
    sw      a0,628(sp)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    sw      a0,628(sp)
    sd      a1,616(sp)
    ld      a0,616(sp)
    li      a1, 0
    li      a2, 256
    call    memset
    li      a0, 0
    li      a1, 2
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    mul     a5,a4,a2
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,344
    lw      a6,628(sp)
    sw      a6,0(a0)
    li      a7, 0
    mul     s1,a1,a2
    add     a7,a7,s1
    li      s2, 1
    mul     s3,a4,s2
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,344
    li      s4, 8848
    sw      s4,0(a7)
    li      s5, 1
    j       .while.head_90
.while.head_90:
    li      a1, 32
    slt     a2,s5,a1
    bnez    a2, .while.body_90
    j       .while.exit_90
.while.body_90:
    li      a1, 0
    li      a3, 2
    mul     a4,a3,s5
    add     a1,a1,a4
    li      a5, 1
    li      s1, 0
    mul     s2,a5,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    sub     s3,s5,a5
    li      s4, 0
    mul     s6,a3,s3
    add     s4,s4,s6
    li      s7, 1
    mul     s8,a5,s7
    add     s4,s4,s8
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,344
    lw      s9,0(s4)
    sub     s10,s9,s7
    sw      s10,0(a1)
    li      s11, 0
    mul     a4,a3,s5
    add     s11,s11,a4
    mul     a3,s7,a5
    add     s11,s11,a3
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,344
    sub     a3,s5,s7
    li      a4, 0
    li      a5, 2
    mul     s1,a5,a3
    add     a4,a4,s1
    li      a5, 0
    mul     s1,s7,a5
    add     a4,a4,s1
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,344
    lw      a5,0(a4)
    li      s1, 2
    sub     s2,a5,s1
    sw      s2,0(s11)
    add     s1,s5,s7
    mv      s5, s1
    sw      a5,276(sp)
    sw      a3,292(sp)
    sd      a4,280(sp)
    sw      s9,308(sp)
    sw      s3,324(sp)
    sb      a2,339(sp)
    sw      s2,272(sp)
    sw      s1,268(sp)
    sd      s11,296(sp)
    sw      s10,304(sp)
    sd      s4,312(sp)
    sd      a1,328(sp)
    j       .while.head_90
.while.exit_90:
    li      a1, 0
    li      a3, 2
    li      a4, 0
    mul     a5,a3,a4
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    li      s1, 0
    li      s2, 1
    mul     s3,a3,s2
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,344
    li      s4, 0
    li      s6, 2
    mul     s7,a3,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,344
    li      s8, 0
    li      s9, 3
    mul     s10,a3,s9
    add     s8,s8,s10
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,344
    li      s11, 0
    li      a4, 4
    mul     a5,a3,a4
    add     s11,s11,a5
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,344
    li      a3, 0
    li      a4, 5
    mul     a5,s6,a4
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,344
    li      a4, 0
    li      a5, 6
    mul     s2,s6,a5
    add     a4,a4,s2
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,344
    li      a5, 0
    li      s2, 7
    mul     s3,s6,s2
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,344
    li      s2, 0
    li      s3, 8
    mul     s7,s6,s3
    add     s2,s2,s7
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,344
    li      s3, 0
    li      s7, 9
    mul     s9,s6,s7
    add     s3,s3,s9
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,344
    li      s6, 0
    li      s7, 2
    li      s9, 10
    mul     s10,s7,s9
    add     s6,s6,s10
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,344
    li      s7, 0
    li      s9, 2
    li      s10, 11
    sd      a0,608(sp)
    mul     a0,s9,s10
    add     s7,s7,a0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,344
    li      a0, 0
    li      s10, 12
    sd      a1,256(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,344
    li      a1, 0
    li      s10, 13
    sd      a0,160(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    li      a0, 0
    li      s10, 14
    sd      a1,152(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,344
    li      a1, 0
    li      s10, 15
    sd      a0,144(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    li      a0, 0
    li      s10, 16
    sd      a1,136(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,344
    li      a1, 0
    li      s10, 17
    sd      a0,128(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    li      a0, 0
    li      s10, 18
    sd      a1,120(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,344
    li      a1, 0
    li      s10, 19
    sd      a0,112(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    li      a0, 0
    li      s10, 20
    sd      a1,104(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,344
    li      a1, 0
    li      s10, 21
    sd      a0,96(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    li      a0, 0
    li      s10, 22
    sd      a1,88(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,344
    li      a1, 0
    li      s10, 23
    sd      a0,80(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    li      a0, 0
    li      s10, 24
    sd      a1,72(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,344
    li      a1, 0
    li      s10, 25
    sd      a0,64(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    li      a0, 0
    li      s10, 26
    sd      a1,56(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,344
    li      a1, 0
    li      s10, 27
    sd      a0,48(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    li      a0, 0
    li      s10, 28
    sd      a1,40(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,344
    li      a1, 0
    li      s10, 29
    sd      a0,32(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    li      a0, 0
    li      s10, 30
    sd      a1,24(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,344
    li      a1, 0
    li      s10, 31
    sd      a0,16(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,344
    sd      s2,-8(sp)
    sd      s3,-16(sp)
    sd      s6,-24(sp)
    sd      s7,-32(sp)
    ld      a0,160(sp)
    sd      a0,-40(sp)
    ld      s9,152(sp)
    sd      s9,-48(sp)
    ld      s10,144(sp)
    sd      s10,-56(sp)
    sd      a0,160(sp)
    ld      a0,136(sp)
    sd      a0,-64(sp)
    sd      a0,136(sp)
    ld      a0,128(sp)
    sd      a0,-72(sp)
    sd      a0,128(sp)
    ld      a0,120(sp)
    sd      a0,-80(sp)
    sd      a0,120(sp)
    ld      a0,112(sp)
    sd      a0,-88(sp)
    sd      a0,112(sp)
    ld      a0,104(sp)
    sd      a0,-96(sp)
    sd      a0,104(sp)
    ld      a0,96(sp)
    sd      a0,-104(sp)
    sd      a0,96(sp)
    ld      a0,88(sp)
    sd      a0,-112(sp)
    sd      a0,88(sp)
    ld      a0,80(sp)
    sd      a0,-120(sp)
    sd      a0,80(sp)
    ld      a0,72(sp)
    sd      a0,-128(sp)
    sd      a0,72(sp)
    ld      a0,64(sp)
    sd      a0,-136(sp)
    sd      a0,64(sp)
    ld      a0,56(sp)
    sd      a0,-144(sp)
    sd      a0,56(sp)
    ld      a0,48(sp)
    sd      a0,-152(sp)
    sd      a0,48(sp)
    ld      a0,40(sp)
    sd      a0,-160(sp)
    sd      a0,40(sp)
    ld      a0,32(sp)
    sd      a0,-168(sp)
    sd      a0,32(sp)
    ld      a0,24(sp)
    sd      a0,-176(sp)
    sd      a0,24(sp)
    ld      a0,16(sp)
    sd      a0,-184(sp)
    sd      a1,-192(sp)
    sd      s1,248(sp)
    sd      s2,192(sp)
    sd      s3,184(sp)
    sd      s4,240(sp)
    sw      s5,340(sp)
    sd      s6,176(sp)
    sd      s7,168(sp)
    sd      s8,232(sp)
    sd      s9,152(sp)
    sd      s10,144(sp)
    sd      s11,224(sp)
    sd      a0,16(sp)
    sd      a1,8(sp)
    sb      a2,339(sp)
    sd      a3,216(sp)
    sd      a4,208(sp)
    sd      a5,200(sp)
    sw      a6,628(sp)
    sd      a7,600(sp)
    ld      a0,256(sp)
    ld      a1,248(sp)
    ld      a2,240(sp)
    ld      a3,232(sp)
    ld      a4,224(sp)
    ld      a5,216(sp)
    ld      a6,208(sp)
    ld      a7,200(sp)
    call    param32_arr
    sw      a0,4(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    call    putint
    li      a0, 10
    call    putch
    ld      ra,704(sp)
    ld      s0,696(sp)
    li      a0, 0
    addi    sp,sp,712
    ret
