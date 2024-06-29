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
    .globl func
    .type func,@function
func:
    addi    sp,sp,-1416
    sd      ra,1408(sp)
    sd      s0,1400(sp)
    addi    s0,sp,1416
.L1_0:
    add     a2,a0,a1
    mv      a3, a2
    sw      a0,1396(sp)
    sw      a1,1392(sp)
    sw      a2,1384(sp)
    sw      a3,1388(sp)
    call    getint
    sw      a0,1236(sp)
    mv      a1, a0
    sw      a0,1236(sp)
    sw      a1,1380(sp)
    call    getint
    sw      a0,1232(sp)
    mv      a1, a0
    sw      a0,1232(sp)
    sw      a1,1376(sp)
    call    getint
    sw      a0,1228(sp)
    mv      a1, a0
    sw      a0,1228(sp)
    sw      a1,1372(sp)
    call    getint
    sw      a0,1224(sp)
    mv      a1, a0
    la      a2, a1
    lw      a3,0(a2)
    li      a4, 1
    lw      a5,1380(sp)
    add     a6,a4,a5
    add     a7,a6,a3
    mv      s1, a7
    la      s2, a2
    lw      s3,0(s2)
    li      s4, 2
    lw      s5,1376(sp)
    add     s6,s4,s5
    add     s7,s6,s3
    mv      s8, s7
    la      s9, a3
    lw      s10,0(s9)
    li      s11, 3
    lw      a2,1372(sp)
    add     a4,s11,a2
    add     s2,a4,s10
    mv      s4, s2
    la      s9, a4
    lw      s11,0(s9)
    li      s9, 4
    sw      a0,1224(sp)
    add     a0,s9,a1
    add     s9,a0,s11
    sw      a0,1180(sp)
    mv      a0, s9
    sw      a0,1352(sp)
    la      a0, a5
    sw      a1,1368(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,1172(sp)
    add     a1,a0,s1
    lw      a0,1172(sp)
    sw      a2,1372(sp)
    add     a2,a1,a0
    sw      a0,1172(sp)
    mv      a0, a2
    sw      a0,1348(sp)
    la      a0, a6
    sw      a1,1168(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,1160(sp)
    add     a1,a0,s8
    lw      a0,1160(sp)
    sw      a2,1164(sp)
    add     a2,a1,a0
    sw      a0,1160(sp)
    mv      a0, a2
    sw      a0,1344(sp)
    la      a0, a7
    sw      a1,1156(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,1148(sp)
    add     a1,a0,s4
    lw      a0,1148(sp)
    sw      a2,1152(sp)
    add     a2,a1,a0
    sw      a0,1148(sp)
    mv      a0, a2
    sw      a0,1340(sp)
    la      a0, a8
    sw      a1,1144(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,1136(sp)
    lw      a1,1352(sp)
    sw      a2,1140(sp)
    add     a2,a0,a1
    lw      a0,1136(sp)
    sw      a1,1352(sp)
    add     a1,a2,a0
    sw      a0,1136(sp)
    mv      a0, a1
    sw      a0,1336(sp)
    la      a0, a9
    sw      a1,1128(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,1124(sp)
    lw      a1,1348(sp)
    sw      a2,1132(sp)
    add     a2,a0,a1
    lw      a0,1124(sp)
    sw      a1,1348(sp)
    add     a1,a2,a0
    sw      a0,1124(sp)
    mv      a0, a1
    sw      a0,1332(sp)
    la      a0, a10
    sw      a1,1116(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,1112(sp)
    lw      a1,1344(sp)
    sw      a2,1120(sp)
    add     a2,a0,a1
    lw      a0,1112(sp)
    sw      a1,1344(sp)
    add     a1,a2,a0
    sw      a0,1112(sp)
    mv      a0, a1
    sw      a0,1328(sp)
    la      a0, a11
    sw      a1,1104(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,1100(sp)
    lw      a1,1340(sp)
    sw      a2,1108(sp)
    add     a2,a0,a1
    lw      a0,1100(sp)
    sw      a1,1340(sp)
    add     a1,a2,a0
    sw      a0,1100(sp)
    mv      a0, a1
    sw      a0,1324(sp)
    la      a0, a12
    sw      a1,1092(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,1088(sp)
    lw      a1,1336(sp)
    sw      a2,1096(sp)
    add     a2,a0,a1
    lw      a0,1088(sp)
    sw      a1,1336(sp)
    add     a1,a2,a0
    sw      a0,1088(sp)
    mv      a0, a1
    sw      a0,1320(sp)
    la      a0, a13
    sw      a1,1080(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,1076(sp)
    lw      a1,1332(sp)
    sw      a2,1084(sp)
    add     a2,a0,a1
    lw      a0,1076(sp)
    sw      a1,1332(sp)
    add     a1,a2,a0
    sw      a0,1076(sp)
    mv      a0, a1
    sw      a0,1316(sp)
    la      a0, a14
    sw      a1,1068(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,1064(sp)
    lw      a1,1328(sp)
    sw      a2,1072(sp)
    add     a2,a0,a1
    lw      a0,1064(sp)
    sw      a1,1328(sp)
    add     a1,a2,a0
    sw      a0,1064(sp)
    mv      a0, a1
    sw      a0,1312(sp)
    la      a0, a15
    sw      a1,1056(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,1052(sp)
    lw      a1,1324(sp)
    sw      a2,1060(sp)
    add     a2,a0,a1
    lw      a0,1052(sp)
    sw      a1,1324(sp)
    add     a1,a2,a0
    sw      a0,1052(sp)
    mv      a0, a1
    sw      a0,1308(sp)
    la      a0, a16
    sw      a1,1044(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,1040(sp)
    lw      a1,1320(sp)
    sw      a2,1048(sp)
    add     a2,a0,a1
    lw      a0,1040(sp)
    sw      a1,1320(sp)
    add     a1,a2,a0
    sw      a0,1040(sp)
    mv      a0, a1
    sw      a0,1304(sp)
    la      a0, a17
    sw      a1,1032(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,1028(sp)
    lw      a1,1316(sp)
    sw      a2,1036(sp)
    add     a2,a0,a1
    lw      a0,1028(sp)
    sw      a1,1316(sp)
    add     a1,a2,a0
    sw      a0,1028(sp)
    mv      a0, a1
    sw      a0,1300(sp)
    la      a0, a18
    sw      a1,1020(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,1016(sp)
    lw      a1,1312(sp)
    sw      a2,1024(sp)
    add     a2,a0,a1
    lw      a0,1016(sp)
    sw      a1,1312(sp)
    add     a1,a2,a0
    sw      a0,1016(sp)
    mv      a0, a1
    sw      a0,1296(sp)
    la      a0, a19
    sw      a1,1008(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,1004(sp)
    lw      a1,1308(sp)
    sw      a2,1012(sp)
    add     a2,a0,a1
    lw      a0,1004(sp)
    sw      a1,1308(sp)
    add     a1,a2,a0
    sw      a0,1004(sp)
    mv      a0, a1
    sw      a0,1292(sp)
    la      a0, a20
    sw      a1,996(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,992(sp)
    lw      a1,1304(sp)
    sw      a2,1000(sp)
    add     a2,a0,a1
    lw      a0,992(sp)
    sw      a1,1304(sp)
    add     a1,a2,a0
    sw      a0,992(sp)
    mv      a0, a1
    sw      a0,1288(sp)
    la      a0, a21
    sw      a1,984(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,980(sp)
    lw      a1,1300(sp)
    sw      a2,988(sp)
    add     a2,a0,a1
    lw      a0,980(sp)
    sw      a1,1300(sp)
    add     a1,a2,a0
    sw      a0,980(sp)
    mv      a0, a1
    sw      a0,1284(sp)
    la      a0, a22
    sw      a1,972(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,968(sp)
    lw      a1,1296(sp)
    sw      a2,976(sp)
    add     a2,a0,a1
    lw      a0,968(sp)
    sw      a1,1296(sp)
    add     a1,a2,a0
    sw      a0,968(sp)
    mv      a0, a1
    sw      a0,1280(sp)
    la      a0, a23
    sw      a1,960(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,956(sp)
    lw      a1,1292(sp)
    sw      a2,964(sp)
    add     a2,a0,a1
    lw      a0,956(sp)
    sw      a1,1292(sp)
    add     a1,a2,a0
    sw      a0,956(sp)
    mv      a0, a1
    sw      a0,1276(sp)
    la      a0, a24
    sw      a1,948(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,944(sp)
    lw      a1,1288(sp)
    sw      a2,952(sp)
    add     a2,a0,a1
    lw      a0,944(sp)
    sw      a1,1288(sp)
    add     a1,a2,a0
    sw      a0,944(sp)
    mv      a0, a1
    sw      a0,1272(sp)
    la      a0, a25
    sw      a1,936(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,932(sp)
    lw      a1,1284(sp)
    sw      a2,940(sp)
    add     a2,a0,a1
    lw      a0,932(sp)
    sw      a1,1284(sp)
    add     a1,a2,a0
    sw      a0,932(sp)
    mv      a0, a1
    sw      a0,1268(sp)
    la      a0, a26
    sw      a1,924(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,920(sp)
    lw      a1,1280(sp)
    sw      a2,928(sp)
    add     a2,a0,a1
    lw      a0,920(sp)
    sw      a1,1280(sp)
    add     a1,a2,a0
    sw      a0,920(sp)
    mv      a0, a1
    sw      a0,1264(sp)
    la      a0, a27
    sw      a1,912(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,908(sp)
    lw      a1,1276(sp)
    sw      a2,916(sp)
    add     a2,a0,a1
    lw      a0,908(sp)
    sw      a1,1276(sp)
    add     a1,a2,a0
    sw      a0,908(sp)
    mv      a0, a1
    sw      a0,1260(sp)
    la      a0, a28
    sw      a1,900(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,896(sp)
    lw      a1,1272(sp)
    sw      a2,904(sp)
    add     a2,a0,a1
    lw      a0,896(sp)
    sw      a1,1272(sp)
    add     a1,a2,a0
    sw      a0,896(sp)
    mv      a0, a1
    sw      a0,1256(sp)
    la      a0, a29
    sw      a1,888(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,884(sp)
    lw      a1,1268(sp)
    sw      a2,892(sp)
    add     a2,a0,a1
    lw      a0,884(sp)
    sw      a1,1268(sp)
    add     a1,a2,a0
    sw      a0,884(sp)
    mv      a0, a1
    sw      a0,1252(sp)
    la      a0, a30
    sw      a1,876(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,872(sp)
    lw      a1,1264(sp)
    sw      a2,880(sp)
    add     a2,a0,a1
    lw      a0,872(sp)
    sw      a1,1264(sp)
    add     a1,a2,a0
    sw      a0,872(sp)
    mv      a0, a1
    sw      a0,1248(sp)
    la      a0, a31
    sw      a1,864(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,860(sp)
    lw      a1,1260(sp)
    sw      a2,868(sp)
    add     a2,a0,a1
    lw      a0,860(sp)
    sw      a1,1260(sp)
    add     a1,a2,a0
    sw      a0,860(sp)
    mv      a0, a1
    sw      a0,1244(sp)
    la      a0, a32
    sw      a1,852(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,848(sp)
    lw      a1,1256(sp)
    sw      a2,856(sp)
    add     a2,a0,a1
    lw      a0,848(sp)
    sw      a1,1256(sp)
    add     a1,a2,a0
    sw      a0,848(sp)
    mv      a0, a1
    sw      a0,1240(sp)
    lw      a0,1396(sp)
    sw      a1,840(sp)
    lw      a1,1392(sp)
    sw      a2,844(sp)
    sub     a2,a0,a1
    sw      a0,1396(sp)
    li      a0, 10
    sw      a1,1392(sp)
    add     a1,a2,a0
    mv      a0, a1
    sw      a0,1388(sp)
    la      a0, a29
    sw      a1,832(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,828(sp)
    lw      a1,1268(sp)
    sw      a2,836(sp)
    add     a2,a0,a1
    lw      a0,828(sp)
    sw      a1,1268(sp)
    add     a1,a2,a0
    sw      a0,828(sp)
    mv      a0, a1
    sw      a0,1252(sp)
    la      a0, a30
    sw      a1,820(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,816(sp)
    lw      a1,1264(sp)
    sw      a2,824(sp)
    add     a2,a0,a1
    lw      a0,816(sp)
    sw      a1,1264(sp)
    add     a1,a2,a0
    sw      a0,816(sp)
    mv      a0, a1
    sw      a0,1248(sp)
    la      a0, a31
    sw      a1,808(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,804(sp)
    lw      a1,1260(sp)
    sw      a2,812(sp)
    add     a2,a0,a1
    lw      a0,804(sp)
    sw      a1,1260(sp)
    add     a1,a2,a0
    sw      a0,804(sp)
    mv      a0, a1
    sw      a0,1244(sp)
    la      a0, a32
    sw      a1,796(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,792(sp)
    lw      a1,1256(sp)
    sw      a2,800(sp)
    add     a2,a0,a1
    lw      a0,792(sp)
    sw      a1,1256(sp)
    add     a1,a2,a0
    sw      a0,792(sp)
    mv      a0, a1
    sw      a0,1240(sp)
    la      a0, a25
    sw      a1,784(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,780(sp)
    lw      a1,1284(sp)
    sw      a2,788(sp)
    add     a2,a0,a1
    lw      a0,780(sp)
    sw      a1,1284(sp)
    add     a1,a2,a0
    sw      a0,780(sp)
    mv      a0, a1
    sw      a0,1268(sp)
    la      a0, a26
    sw      a1,772(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,768(sp)
    lw      a1,1280(sp)
    sw      a2,776(sp)
    add     a2,a0,a1
    lw      a0,768(sp)
    sw      a1,1280(sp)
    add     a1,a2,a0
    sw      a0,768(sp)
    mv      a0, a1
    sw      a0,1264(sp)
    la      a0, a27
    sw      a1,760(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,756(sp)
    lw      a1,1276(sp)
    sw      a2,764(sp)
    add     a2,a0,a1
    lw      a0,756(sp)
    sw      a1,1276(sp)
    add     a1,a2,a0
    sw      a0,756(sp)
    mv      a0, a1
    sw      a0,1260(sp)
    la      a0, a28
    sw      a1,748(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,744(sp)
    lw      a1,1272(sp)
    sw      a2,752(sp)
    add     a2,a0,a1
    lw      a0,744(sp)
    sw      a1,1272(sp)
    add     a1,a2,a0
    sw      a0,744(sp)
    mv      a0, a1
    sw      a0,1256(sp)
    la      a0, a21
    sw      a1,736(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,732(sp)
    lw      a1,1300(sp)
    sw      a2,740(sp)
    add     a2,a0,a1
    lw      a0,732(sp)
    sw      a1,1300(sp)
    add     a1,a2,a0
    sw      a0,732(sp)
    mv      a0, a1
    sw      a0,1284(sp)
    la      a0, a22
    sw      a1,724(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,720(sp)
    lw      a1,1296(sp)
    sw      a2,728(sp)
    add     a2,a0,a1
    lw      a0,720(sp)
    sw      a1,1296(sp)
    add     a1,a2,a0
    sw      a0,720(sp)
    mv      a0, a1
    sw      a0,1280(sp)
    la      a0, a23
    sw      a1,712(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,708(sp)
    lw      a1,1292(sp)
    sw      a2,716(sp)
    add     a2,a0,a1
    lw      a0,708(sp)
    sw      a1,1292(sp)
    add     a1,a2,a0
    sw      a0,708(sp)
    mv      a0, a1
    sw      a0,1276(sp)
    la      a0, a24
    sw      a1,700(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,696(sp)
    lw      a1,1288(sp)
    sw      a2,704(sp)
    add     a2,a0,a1
    lw      a0,696(sp)
    sw      a1,1288(sp)
    add     a1,a2,a0
    sw      a0,696(sp)
    mv      a0, a1
    sw      a0,1272(sp)
    la      a0, a17
    sw      a1,688(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,684(sp)
    lw      a1,1316(sp)
    sw      a2,692(sp)
    add     a2,a0,a1
    lw      a0,684(sp)
    sw      a1,1316(sp)
    add     a1,a2,a0
    sw      a0,684(sp)
    mv      a0, a1
    sw      a0,1300(sp)
    la      a0, a18
    sw      a1,676(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,672(sp)
    lw      a1,1312(sp)
    sw      a2,680(sp)
    add     a2,a0,a1
    lw      a0,672(sp)
    sw      a1,1312(sp)
    add     a1,a2,a0
    sw      a0,672(sp)
    mv      a0, a1
    sw      a0,1296(sp)
    la      a0, a19
    sw      a1,664(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,660(sp)
    lw      a1,1308(sp)
    sw      a2,668(sp)
    add     a2,a0,a1
    lw      a0,660(sp)
    sw      a1,1308(sp)
    add     a1,a2,a0
    sw      a0,660(sp)
    mv      a0, a1
    sw      a0,1292(sp)
    la      a0, a20
    sw      a1,652(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,648(sp)
    lw      a1,1304(sp)
    sw      a2,656(sp)
    add     a2,a0,a1
    lw      a0,648(sp)
    sw      a1,1304(sp)
    add     a1,a2,a0
    sw      a0,648(sp)
    mv      a0, a1
    sw      a0,1288(sp)
    la      a0, a13
    sw      a1,640(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,636(sp)
    lw      a1,1332(sp)
    sw      a2,644(sp)
    add     a2,a0,a1
    lw      a0,636(sp)
    sw      a1,1332(sp)
    add     a1,a2,a0
    sw      a0,636(sp)
    mv      a0, a1
    sw      a0,1316(sp)
    la      a0, a14
    sw      a1,628(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,624(sp)
    lw      a1,1328(sp)
    sw      a2,632(sp)
    add     a2,a0,a1
    lw      a0,624(sp)
    sw      a1,1328(sp)
    add     a1,a2,a0
    sw      a0,624(sp)
    mv      a0, a1
    sw      a0,1312(sp)
    la      a0, a15
    sw      a1,616(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,612(sp)
    lw      a1,1324(sp)
    sw      a2,620(sp)
    add     a2,a0,a1
    lw      a0,612(sp)
    sw      a1,1324(sp)
    add     a1,a2,a0
    sw      a0,612(sp)
    mv      a0, a1
    sw      a0,1308(sp)
    la      a0, a16
    sw      a1,604(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,600(sp)
    lw      a1,1320(sp)
    sw      a2,608(sp)
    add     a2,a0,a1
    lw      a0,600(sp)
    sw      a1,1320(sp)
    add     a1,a2,a0
    sw      a0,600(sp)
    mv      a0, a1
    sw      a0,1304(sp)
    la      a0, a9
    sw      a1,592(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,588(sp)
    lw      a1,1348(sp)
    sw      a2,596(sp)
    add     a2,a0,a1
    lw      a0,588(sp)
    sw      a1,1348(sp)
    add     a1,a2,a0
    sw      a0,588(sp)
    mv      a0, a1
    sw      a0,1332(sp)
    la      a0, a10
    sw      a1,580(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,576(sp)
    lw      a1,1344(sp)
    sw      a2,584(sp)
    add     a2,a0,a1
    lw      a0,576(sp)
    sw      a1,1344(sp)
    add     a1,a2,a0
    sw      a0,576(sp)
    mv      a0, a1
    sw      a0,1328(sp)
    la      a0, a11
    sw      a1,568(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,564(sp)
    lw      a1,1340(sp)
    sw      a2,572(sp)
    add     a2,a0,a1
    lw      a0,564(sp)
    sw      a1,1340(sp)
    add     a1,a2,a0
    sw      a0,564(sp)
    mv      a0, a1
    sw      a0,1324(sp)
    la      a0, a12
    sw      a1,556(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,552(sp)
    lw      a1,1336(sp)
    sw      a2,560(sp)
    add     a2,a0,a1
    lw      a0,552(sp)
    sw      a1,1336(sp)
    add     a1,a2,a0
    sw      a0,552(sp)
    mv      a0, a1
    sw      a0,1320(sp)
    la      a0, a5
    sw      a1,544(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,540(sp)
    add     a1,a0,s1
    lw      a0,540(sp)
    sw      a2,548(sp)
    add     a2,a1,a0
    sw      a0,540(sp)
    mv      a0, a2
    sw      a0,1348(sp)
    la      a0, a6
    sw      a1,536(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,528(sp)
    add     a1,a0,s8
    lw      a0,528(sp)
    sw      a2,532(sp)
    add     a2,a1,a0
    sw      a0,528(sp)
    mv      a0, a2
    sw      a0,1344(sp)
    la      a0, a7
    sw      a1,524(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,516(sp)
    add     a1,a0,s4
    lw      a0,516(sp)
    sw      a2,520(sp)
    add     a2,a1,a0
    sw      a0,516(sp)
    mv      a0, a2
    sw      a0,1340(sp)
    la      a0, a8
    sw      a1,512(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,504(sp)
    lw      a1,1352(sp)
    sw      a2,508(sp)
    add     a2,a0,a1
    lw      a0,504(sp)
    sw      a1,1352(sp)
    add     a1,a2,a0
    sw      a0,504(sp)
    mv      a0, a1
    sw      a0,1336(sp)
    la      a0, a1
    sw      a1,496(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,492(sp)
    add     a1,a0,a5
    lw      a0,492(sp)
    sw      a2,500(sp)
    add     a2,a1,a0
    mv      s1, a2
    sw      a0,492(sp)
    la      a0, a2
    sw      a1,488(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,480(sp)
    add     a1,a0,s5
    lw      a0,480(sp)
    sw      a2,484(sp)
    add     a2,a1,a0
    mv      s8, a2
    sw      a0,480(sp)
    la      a0, a3
    sw      a1,476(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,468(sp)
    lw      a1,1372(sp)
    sw      a2,472(sp)
    add     a2,a0,a1
    lw      a0,468(sp)
    sw      a1,1372(sp)
    add     a1,a2,a0
    mv      s4, a1
    sw      a0,468(sp)
    la      a0, a4
    sw      a1,460(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,456(sp)
    lw      a1,1368(sp)
    sw      a2,464(sp)
    add     a2,a0,a1
    lw      a0,456(sp)
    sw      a1,1368(sp)
    add     a1,a2,a0
    sw      a0,456(sp)
    mv      a0, a1
    sw      a0,1352(sp)
    la      a0, a1
    sw      a1,448(sp)
    lw      a1,0(a0)
    li      a0, 1
    sw      a1,444(sp)
    add     a1,a0,a5
    lw      a0,444(sp)
    sw      a2,452(sp)
    add     a2,a1,a0
    mv      s1, a2
    sw      a0,444(sp)
    la      a0, a2
    sw      a1,440(sp)
    lw      a1,0(a0)
    li      a0, 2
    sw      a1,432(sp)
    add     a1,a0,s5
    lw      a0,432(sp)
    sw      a2,436(sp)
    add     a2,a1,a0
    mv      s8, a2
    sw      a0,432(sp)
    la      a0, a3
    sw      a1,428(sp)
    lw      a1,0(a0)
    li      a0, 3
    sw      a1,420(sp)
    lw      a1,1372(sp)
    sw      a2,424(sp)
    add     a2,a0,a1
    lw      a0,420(sp)
    sw      a1,1372(sp)
    add     a1,a2,a0
    mv      s4, a1
    sw      a0,420(sp)
    la      a0, a4
    sw      a1,412(sp)
    lw      a1,0(a0)
    li      a0, 4
    sw      a1,408(sp)
    lw      a1,1368(sp)
    sw      a2,416(sp)
    add     a2,a0,a1
    lw      a0,408(sp)
    sw      a1,1368(sp)
    add     a1,a2,a0
    sw      a0,408(sp)
    mv      a0, a1
    sw      a0,1352(sp)
    la      a0, a32
    sw      a1,400(sp)
    lw      a1,0(a0)
    la      a0, a31
    sw      a1,396(sp)
    lw      a1,0(a0)
    la      a0, a30
    sw      a1,392(sp)
    lw      a1,0(a0)
    la      a0, a29
    sw      a1,388(sp)
    lw      a1,0(a0)
    la      a0, a28
    sw      a1,384(sp)
    lw      a1,0(a0)
    la      a0, a27
    sw      a1,380(sp)
    lw      a1,0(a0)
    la      a0, a26
    sw      a1,376(sp)
    lw      a1,0(a0)
    la      a0, a25
    sw      a1,372(sp)
    lw      a1,0(a0)
    la      a0, a24
    sw      a1,368(sp)
    lw      a1,0(a0)
    la      a0, a23
    sw      a1,364(sp)
    lw      a1,0(a0)
    la      a0, a22
    sw      a1,360(sp)
    lw      a1,0(a0)
    la      a0, a21
    sw      a1,356(sp)
    lw      a1,0(a0)
    la      a0, a20
    sw      a1,352(sp)
    lw      a1,0(a0)
    la      a0, a19
    sw      a1,348(sp)
    lw      a1,0(a0)
    la      a0, a18
    sw      a1,344(sp)
    lw      a1,0(a0)
    la      a0, a17
    sw      a1,340(sp)
    lw      a1,0(a0)
    la      a0, a16
    sw      a1,336(sp)
    lw      a1,0(a0)
    la      a0, a15
    sw      a1,332(sp)
    lw      a1,0(a0)
    la      a0, a14
    sw      a1,328(sp)
    lw      a1,0(a0)
    la      a0, a13
    sw      a1,324(sp)
    lw      a1,0(a0)
    la      a0, a12
    sw      a1,320(sp)
    lw      a1,0(a0)
    la      a0, a11
    sw      a1,316(sp)
    lw      a1,0(a0)
    la      a0, a10
    sw      a1,312(sp)
    lw      a1,0(a0)
    la      a0, a9
    sw      a1,308(sp)
    lw      a1,0(a0)
    la      a0, a8
    sw      a1,304(sp)
    lw      a1,0(a0)
    la      a0, a7
    sw      a1,300(sp)
    lw      a1,0(a0)
    la      a0, a6
    sw      a1,296(sp)
    lw      a1,0(a0)
    la      a0, a5
    sw      a1,292(sp)
    lw      a1,0(a0)
    la      a0, a4
    sw      a1,288(sp)
    lw      a1,0(a0)
    la      a0, a3
    sw      a1,284(sp)
    lw      a1,0(a0)
    la      a0, a2
    sw      a1,280(sp)
    lw      a1,0(a0)
    la      a0, a1
    sw      a1,276(sp)
    lw      a1,0(a0)
    lw      a0,1388(sp)
    sw      a1,272(sp)
    add     a1,a0,a5
    sw      a0,1388(sp)
    add     a0,a1,s5
    sw      a1,268(sp)
    lw      a1,1372(sp)
    sw      a2,404(sp)
    add     a2,a0,a1
    sw      a0,264(sp)
    lw      a0,1368(sp)
    sw      a1,1372(sp)
    add     a1,a2,a0
    sw      a0,1368(sp)
    sub     a0,a1,s1
    sw      a1,256(sp)
    sub     a1,a0,s8
    sw      a0,252(sp)
    sub     a0,a1,s4
    sw      a1,248(sp)
    lw      a1,1352(sp)
    sw      a2,260(sp)
    sub     a2,a0,a1
    sw      a0,244(sp)
    lw      a0,1348(sp)
    sw      a1,1352(sp)
    add     a1,a2,a0
    sw      a0,1348(sp)
    lw      a0,1344(sp)
    sw      a2,240(sp)
    add     a2,a1,a0
    sw      a0,1344(sp)
    lw      a0,1340(sp)
    sw      a1,236(sp)
    add     a1,a2,a0
    sw      a0,1340(sp)
    lw      a0,1336(sp)
    sw      a2,232(sp)
    add     a2,a1,a0
    sw      a0,1336(sp)
    lw      a0,1332(sp)
    sw      a1,228(sp)
    sub     a1,a2,a0
    sw      a0,1332(sp)
    lw      a0,1328(sp)
    sw      a2,224(sp)
    sub     a2,a1,a0
    sw      a0,1328(sp)
    lw      a0,1324(sp)
    sw      a1,220(sp)
    sub     a1,a2,a0
    sw      a0,1324(sp)
    lw      a0,1320(sp)
    sw      a2,216(sp)
    sub     a2,a1,a0
    sw      a0,1320(sp)
    lw      a0,1316(sp)
    sw      a1,212(sp)
    add     a1,a2,a0
    sw      a0,1316(sp)
    lw      a0,1312(sp)
    sw      a2,208(sp)
    add     a2,a1,a0
    sw      a0,1312(sp)
    lw      a0,1308(sp)
    sw      a1,204(sp)
    add     a1,a2,a0
    sw      a0,1308(sp)
    lw      a0,1304(sp)
    sw      a2,200(sp)
    add     a2,a1,a0
    sw      a0,1304(sp)
    lw      a0,1300(sp)
    sw      a1,196(sp)
    sub     a1,a2,a0
    sw      a0,1300(sp)
    lw      a0,1296(sp)
    sw      a2,192(sp)
    sub     a2,a1,a0
    sw      a0,1296(sp)
    lw      a0,1292(sp)
    sw      a1,188(sp)
    sub     a1,a2,a0
    sw      a0,1292(sp)
    lw      a0,1288(sp)
    sw      a2,184(sp)
    sub     a2,a1,a0
    sw      a0,1288(sp)
    lw      a0,1284(sp)
    sw      a1,180(sp)
    add     a1,a2,a0
    sw      a0,1284(sp)
    lw      a0,1280(sp)
    sw      a2,176(sp)
    add     a2,a1,a0
    sw      a0,1280(sp)
    lw      a0,1276(sp)
    sw      a1,172(sp)
    add     a1,a2,a0
    sw      a0,1276(sp)
    lw      a0,1272(sp)
    sw      a2,168(sp)
    add     a2,a1,a0
    sw      a0,1272(sp)
    lw      a0,1268(sp)
    sw      a1,164(sp)
    sub     a1,a2,a0
    sw      a0,1268(sp)
    lw      a0,1264(sp)
    sw      a2,160(sp)
    sub     a2,a1,a0
    sw      a0,1264(sp)
    lw      a0,1260(sp)
    sw      a1,156(sp)
    sub     a1,a2,a0
    sw      a0,1260(sp)
    lw      a0,1256(sp)
    sw      a2,152(sp)
    sub     a2,a1,a0
    sw      a0,1256(sp)
    lw      a0,1252(sp)
    sw      a1,148(sp)
    add     a1,a2,a0
    sw      a0,1252(sp)
    lw      a0,1248(sp)
    sw      a2,144(sp)
    add     a2,a1,a0
    sw      a0,1248(sp)
    lw      a0,1244(sp)
    sw      a1,140(sp)
    add     a1,a2,a0
    sw      a0,1244(sp)
    lw      a0,1240(sp)
    sw      a2,136(sp)
    add     a2,a1,a0
    sw      a0,1240(sp)
    lw      a0,272(sp)
    sw      a1,132(sp)
    add     a1,a2,a0
    sw      a0,272(sp)
    lw      a0,276(sp)
    sw      a2,128(sp)
    sub     a2,a1,a0
    sw      a0,276(sp)
    lw      a0,280(sp)
    sw      a1,124(sp)
    add     a1,a2,a0
    sw      a0,280(sp)
    lw      a0,284(sp)
    sw      a2,120(sp)
    sub     a2,a1,a0
    sw      a0,284(sp)
    lw      a0,288(sp)
    sw      a1,116(sp)
    add     a1,a2,a0
    sw      a0,288(sp)
    lw      a0,292(sp)
    sw      a2,112(sp)
    sub     a2,a1,a0
    sw      a0,292(sp)
    lw      a0,296(sp)
    sw      a1,108(sp)
    add     a1,a2,a0
    sw      a0,296(sp)
    lw      a0,300(sp)
    sw      a2,104(sp)
    sub     a2,a1,a0
    sw      a0,300(sp)
    lw      a0,304(sp)
    sw      a1,100(sp)
    add     a1,a2,a0
    sw      a0,304(sp)
    lw      a0,308(sp)
    sw      a2,96(sp)
    sub     a2,a1,a0
    sw      a0,308(sp)
    lw      a0,312(sp)
    sw      a1,92(sp)
    add     a1,a2,a0
    sw      a0,312(sp)
    lw      a0,316(sp)
    sw      a2,88(sp)
    sub     a2,a1,a0
    sw      a0,316(sp)
    lw      a0,320(sp)
    sw      a1,84(sp)
    add     a1,a2,a0
    sw      a0,320(sp)
    lw      a0,324(sp)
    sw      a2,80(sp)
    sub     a2,a1,a0
    sw      a0,324(sp)
    lw      a0,328(sp)
    sw      a1,76(sp)
    add     a1,a2,a0
    sw      a0,328(sp)
    lw      a0,332(sp)
    sw      a2,72(sp)
    sub     a2,a1,a0
    sw      a0,332(sp)
    lw      a0,336(sp)
    sw      a1,68(sp)
    add     a1,a2,a0
    sw      a0,336(sp)
    lw      a0,340(sp)
    sw      a2,64(sp)
    sub     a2,a1,a0
    sw      a0,340(sp)
    lw      a0,344(sp)
    sw      a1,60(sp)
    add     a1,a2,a0
    sw      a0,344(sp)
    lw      a0,348(sp)
    sw      a2,56(sp)
    sub     a2,a1,a0
    sw      a0,348(sp)
    lw      a0,352(sp)
    sw      a1,52(sp)
    add     a1,a2,a0
    sw      a0,352(sp)
    lw      a0,356(sp)
    sw      a2,48(sp)
    sub     a2,a1,a0
    sw      a0,356(sp)
    lw      a0,360(sp)
    sw      a1,44(sp)
    add     a1,a2,a0
    sw      a0,360(sp)
    lw      a0,364(sp)
    sw      a2,40(sp)
    sub     a2,a1,a0
    sw      a0,364(sp)
    lw      a0,368(sp)
    sw      a1,36(sp)
    add     a1,a2,a0
    sw      a0,368(sp)
    lw      a0,372(sp)
    sw      a2,32(sp)
    sub     a2,a1,a0
    sw      a0,372(sp)
    lw      a0,376(sp)
    sw      a1,28(sp)
    add     a1,a2,a0
    sw      a0,376(sp)
    lw      a0,380(sp)
    sw      a2,24(sp)
    sub     a2,a1,a0
    sw      a0,380(sp)
    lw      a0,384(sp)
    sw      a1,20(sp)
    add     a1,a2,a0
    sw      a0,384(sp)
    lw      a0,388(sp)
    sw      a2,16(sp)
    sub     a2,a1,a0
    sw      a0,388(sp)
    lw      a0,392(sp)
    sw      a1,12(sp)
    add     a1,a2,a0
    sw      a0,392(sp)
    lw      a0,396(sp)
    sw      a2,8(sp)
    sub     a2,a1,a0
    ld      ra,1408(sp)
    ld      s0,1400(sp)
    sw      a2,0(sp)
    sw      a0,396(sp)
    lw      a0,0(sp)
    addi    sp,sp,1416
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L0_0:
    call    getint
    sw      a0,12(sp)
    mv      a1, a0
    li      a2, 18
    add     a3,a1,a2
    mv      a4, a3
    sw      a0,12(sp)
    sw      a1,20(sp)
    sw      a3,8(sp)
    sw      a4,16(sp)
    lw      a0,20(sp)
    lw      a1,16(sp)
    call    func
    sw      a0,4(sp)
    mv      a1, a0
    sw      a0,4(sp)
    sw      a1,20(sp)
    lw      a0,20(sp)
    call    putint
    ld      ra,32(sp)
    ld      s0,24(sp)
    lw      a0,20(sp)
    addi    sp,sp,40
    ret
.section ___var
    .data
    .align 4
    .globl a32
    .type a32,@object
a32:
    .word 16
    .align 4
    .globl a31
    .type a31,@object
a31:
    .word 15
    .align 4
    .globl a30
    .type a30,@object
a30:
    .word 14
    .align 4
    .globl a29
    .type a29,@object
a29:
    .word 13
    .align 4
    .globl a28
    .type a28,@object
a28:
    .word 12
    .align 4
    .globl a27
    .type a27,@object
a27:
    .word 11
    .align 4
    .globl a26
    .type a26,@object
a26:
    .word 10
    .align 4
    .globl a25
    .type a25,@object
a25:
    .word 9
    .align 4
    .globl a24
    .type a24,@object
a24:
    .word 8
    .align 4
    .globl a23
    .type a23,@object
a23:
    .word 7
    .align 4
    .globl a22
    .type a22,@object
a22:
    .word 6
    .align 4
    .globl a21
    .type a21,@object
a21:
    .word 5
    .align 4
    .globl a20
    .type a20,@object
a20:
    .word 4
    .align 4
    .globl a19
    .type a19,@object
a19:
    .word 3
    .align 4
    .globl a18
    .type a18,@object
a18:
    .word 2
    .align 4
    .globl a17
    .type a17,@object
a17:
    .word 1
    .align 4
    .globl a16
    .type a16,@object
a16:
    .word 16
    .align 4
    .globl a15
    .type a15,@object
a15:
    .word 15
    .align 4
    .globl a14
    .type a14,@object
a14:
    .word 14
    .align 4
    .globl a13
    .type a13,@object
a13:
    .word 13
    .align 4
    .globl a12
    .type a12,@object
a12:
    .word 12
    .align 4
    .globl a11
    .type a11,@object
a11:
    .word 11
    .align 4
    .globl a10
    .type a10,@object
a10:
    .word 10
    .align 4
    .globl a9
    .type a9,@object
a9:
    .word 9
    .align 4
    .globl a8
    .type a8,@object
a8:
    .word 8
    .align 4
    .globl a7
    .type a7,@object
a7:
    .word 7
    .align 4
    .globl a6
    .type a6,@object
a6:
    .word 6
    .align 4
    .globl a5
    .type a5,@object
a5:
    .word 5
    .align 4
    .globl a4
    .type a4,@object
a4:
    .word 4
    .align 4
    .globl a3
    .type a3,@object
a3:
    .word 3
    .align 4
    .globl a2
    .type a2,@object
a2:
    .word 2
    .align 4
    .globl a1
    .type a1,@object
a1:
    .word 1
