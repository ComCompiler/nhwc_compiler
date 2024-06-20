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
    .globl func
    .type func,@function
func:
    li      a2, -2832
    li      a2, -2832
    add     sp,a2,sp
    sd      ra,2824(sp)
    sd      s0,2808(sp)
    li      a3, 2832
    li      a3, 2832
    add     s0,a3,sp
.L1_0:
    add     a4,a0,a1
    mv      a5, a4
    call    getint
    sw      a0,2800(sp)
    sw      a0,2480(sp)
    mv      a6, a0
    call    getint
    sw      a0,2480(sp)
    sw      a0,2472(sp)
    mv      a7, a0
    call    getint
    sw      a0,2472(sp)
    sw      a0,2464(sp)
    mv      s1, a0
    sw      s1,2752(sp)
    call    getint
    sw      a0,2464(sp)
    sw      a0,2456(sp)
    mv      s1, a0
    la      s2, a1
    lw      s3,0(s2)
    mv      s4, s4
    add     s5,a6,s4
    li      s6, 1
    add     s7,s6,s5
    mv      s8, s7
    la      s9, a2
    lw      s10,0(s9)
    mv      s11, s11
    add     a2,a7,s11
    li      a3, 2
    add     s2,a3,a2
    mv      a3, s2
    la      s3, a3
    lw      s6,0(s3)
    mv      s3, s3
    mv      s6, s6
    add     s9,s3,s6
    li      s10, 3
    sw      a0,2456(sp)
    add     a0,s10,s9
    mv      s10, a0
    sw      a0,2384(sp)
    la      a0, a4
    sw      a1,2792(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,s1,a0
    sw      a0,2376(sp)
    li      a0, 4
    sw      a2,2416(sp)
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,2712(sp)
    la      a0, a5
    sw      a1,2368(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,s8,a0
    sw      a0,2352(sp)
    li      a0, 1
    sw      a2,2360(sp)
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,2704(sp)
    la      a0, a6
    sw      a1,2344(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a3,a0
    sw      a0,2328(sp)
    li      a0, 2
    sw      a2,2336(sp)
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,2696(sp)
    la      a0, a7
    sw      a1,2320(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,s10,a0
    sw      a0,2304(sp)
    li      a0, 3
    sw      a2,2312(sp)
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,2688(sp)
    la      a0, a8
    sw      a1,2296(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2288(sp)
    add     a2,a0,a1
    sw      a0,2712(sp)
    li      a0, 4
    sw      a1,2280(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2680(sp)
    la      a0, a9
    sw      a1,2264(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2272(sp)
    add     a2,a0,a1
    sw      a0,2704(sp)
    li      a0, 1
    sw      a1,2256(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2672(sp)
    la      a0, a10
    sw      a1,2240(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2248(sp)
    add     a2,a0,a1
    sw      a0,2696(sp)
    li      a0, 2
    sw      a1,2232(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2664(sp)
    la      a0, a11
    sw      a1,2216(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2224(sp)
    add     a2,a0,a1
    sw      a0,2688(sp)
    li      a0, 3
    sw      a1,2208(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2656(sp)
    la      a0, a12
    sw      a1,2192(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2200(sp)
    add     a2,a0,a1
    sw      a0,2680(sp)
    li      a0, 4
    sw      a1,2184(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2648(sp)
    la      a0, a13
    sw      a1,2168(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2176(sp)
    add     a2,a0,a1
    sw      a0,2672(sp)
    li      a0, 1
    sw      a1,2160(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2640(sp)
    la      a0, a14
    sw      a1,2144(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2152(sp)
    add     a2,a0,a1
    sw      a0,2664(sp)
    li      a0, 2
    sw      a1,2136(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2632(sp)
    la      a0, a15
    sw      a1,2120(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2128(sp)
    add     a2,a0,a1
    sw      a0,2656(sp)
    li      a0, 3
    sw      a1,2112(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2624(sp)
    la      a0, a16
    sw      a1,2096(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2104(sp)
    add     a2,a0,a1
    sw      a0,2648(sp)
    li      a0, 4
    sw      a1,2088(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2616(sp)
    la      a0, a17
    sw      a1,2072(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2080(sp)
    add     a2,a0,a1
    sw      a0,2640(sp)
    li      a0, 1
    sw      a1,2064(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2608(sp)
    la      a0, a18
    sw      a1,2048(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2056(sp)
    add     a2,a0,a1
    sw      a0,2632(sp)
    li      a0, 2
    sw      a1,2040(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2600(sp)
    la      a0, a19
    sw      a1,2024(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2032(sp)
    add     a2,a0,a1
    sw      a0,2624(sp)
    li      a0, 3
    sw      a1,2016(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2592(sp)
    la      a0, a20
    sw      a1,2000(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,2008(sp)
    add     a2,a0,a1
    sw      a0,2616(sp)
    li      a0, 4
    sw      a1,1992(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2584(sp)
    la      a0, a21
    sw      a1,1976(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1984(sp)
    add     a2,a0,a1
    sw      a0,2608(sp)
    li      a0, 1
    sw      a1,1968(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2576(sp)
    la      a0, a22
    sw      a1,1952(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1960(sp)
    add     a2,a0,a1
    sw      a0,2600(sp)
    li      a0, 2
    sw      a1,1944(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2568(sp)
    la      a0, a23
    sw      a1,1928(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1936(sp)
    add     a2,a0,a1
    sw      a0,2592(sp)
    li      a0, 3
    sw      a1,1920(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2560(sp)
    la      a0, a24
    sw      a1,1904(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1912(sp)
    add     a2,a0,a1
    sw      a0,2584(sp)
    li      a0, 4
    sw      a1,1896(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2552(sp)
    la      a0, a25
    sw      a1,1880(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1888(sp)
    add     a2,a0,a1
    sw      a0,2576(sp)
    li      a0, 1
    sw      a1,1872(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2544(sp)
    la      a0, a26
    sw      a1,1856(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1864(sp)
    add     a2,a0,a1
    sw      a0,2568(sp)
    li      a0, 2
    sw      a1,1848(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2536(sp)
    la      a0, a27
    sw      a1,1832(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1840(sp)
    add     a2,a0,a1
    sw      a0,2560(sp)
    li      a0, 3
    sw      a1,1824(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2528(sp)
    la      a0, a28
    sw      a1,1808(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1816(sp)
    add     a2,a0,a1
    sw      a0,2552(sp)
    li      a0, 4
    sw      a1,1800(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2520(sp)
    la      a0, a29
    sw      a1,1784(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1792(sp)
    add     a2,a0,a1
    sw      a0,2544(sp)
    li      a0, 1
    sw      a1,1776(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2512(sp)
    la      a0, a30
    sw      a1,1760(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1768(sp)
    add     a2,a0,a1
    sw      a0,2536(sp)
    li      a0, 2
    sw      a1,1752(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2504(sp)
    la      a0, a31
    sw      a1,1736(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1744(sp)
    add     a2,a0,a1
    sw      a0,2528(sp)
    li      a0, 3
    sw      a1,1728(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2496(sp)
    la      a0, a32
    sw      a1,1712(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1720(sp)
    add     a2,a0,a1
    sw      a0,2520(sp)
    li      a0, 4
    sw      a1,1704(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2488(sp)
    mv      a0, a0
    sw      a1,1688(sp)
    li      a1, 10
    sw      a2,1696(sp)
    add     a2,a0,a1
    mv      a1, a1
    sw      a0,2792(sp)
    sub     a0,a1,a2
    sw      a0,1672(sp)
    la      a0, a29
    sw      a1,2800(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1680(sp)
    add     a2,a0,a1
    sw      a0,2544(sp)
    li      a0, 1
    sw      a1,1664(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2512(sp)
    la      a0, a30
    sw      a1,1648(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1656(sp)
    add     a2,a0,a1
    sw      a0,2536(sp)
    li      a0, 2
    sw      a1,1640(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2504(sp)
    la      a0, a31
    sw      a1,1624(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1632(sp)
    add     a2,a0,a1
    sw      a0,2528(sp)
    li      a0, 3
    sw      a1,1616(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2496(sp)
    la      a0, a32
    sw      a1,1600(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1608(sp)
    add     a2,a0,a1
    sw      a0,2520(sp)
    li      a0, 4
    sw      a1,1592(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2488(sp)
    la      a0, a25
    sw      a1,1576(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1584(sp)
    add     a2,a0,a1
    sw      a0,2576(sp)
    li      a0, 1
    sw      a1,1568(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2544(sp)
    la      a0, a26
    sw      a1,1552(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1560(sp)
    add     a2,a0,a1
    sw      a0,2568(sp)
    li      a0, 2
    sw      a1,1544(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2536(sp)
    la      a0, a27
    sw      a1,1528(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1536(sp)
    add     a2,a0,a1
    sw      a0,2560(sp)
    li      a0, 3
    sw      a1,1520(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2528(sp)
    la      a0, a28
    sw      a1,1504(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1512(sp)
    add     a2,a0,a1
    sw      a0,2552(sp)
    li      a0, 4
    sw      a1,1496(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2520(sp)
    la      a0, a21
    sw      a1,1480(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1488(sp)
    add     a2,a0,a1
    sw      a0,2608(sp)
    li      a0, 1
    sw      a1,1472(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2576(sp)
    la      a0, a22
    sw      a1,1456(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1464(sp)
    add     a2,a0,a1
    sw      a0,2600(sp)
    li      a0, 2
    sw      a1,1448(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2568(sp)
    la      a0, a23
    sw      a1,1432(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1440(sp)
    add     a2,a0,a1
    sw      a0,2592(sp)
    li      a0, 3
    sw      a1,1424(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2560(sp)
    la      a0, a24
    sw      a1,1408(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1416(sp)
    add     a2,a0,a1
    sw      a0,2584(sp)
    li      a0, 4
    sw      a1,1400(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2552(sp)
    la      a0, a17
    sw      a1,1384(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1392(sp)
    add     a2,a0,a1
    sw      a0,2640(sp)
    li      a0, 1
    sw      a1,1376(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2608(sp)
    la      a0, a18
    sw      a1,1360(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1368(sp)
    add     a2,a0,a1
    sw      a0,2632(sp)
    li      a0, 2
    sw      a1,1352(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2600(sp)
    la      a0, a19
    sw      a1,1336(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1344(sp)
    add     a2,a0,a1
    sw      a0,2624(sp)
    li      a0, 3
    sw      a1,1328(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2592(sp)
    la      a0, a20
    sw      a1,1312(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1320(sp)
    add     a2,a0,a1
    sw      a0,2616(sp)
    li      a0, 4
    sw      a1,1304(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2584(sp)
    la      a0, a13
    sw      a1,1288(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1296(sp)
    add     a2,a0,a1
    sw      a0,2672(sp)
    li      a0, 1
    sw      a1,1280(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2640(sp)
    la      a0, a14
    sw      a1,1264(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1272(sp)
    add     a2,a0,a1
    sw      a0,2664(sp)
    li      a0, 2
    sw      a1,1256(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2632(sp)
    la      a0, a15
    sw      a1,1240(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1248(sp)
    add     a2,a0,a1
    sw      a0,2656(sp)
    li      a0, 3
    sw      a1,1232(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2624(sp)
    la      a0, a16
    sw      a1,1216(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1224(sp)
    add     a2,a0,a1
    sw      a0,2648(sp)
    li      a0, 4
    sw      a1,1208(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2616(sp)
    la      a0, a9
    sw      a1,1192(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1200(sp)
    add     a2,a0,a1
    sw      a0,2704(sp)
    li      a0, 1
    sw      a1,1184(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2672(sp)
    la      a0, a10
    sw      a1,1168(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1176(sp)
    add     a2,a0,a1
    sw      a0,2696(sp)
    li      a0, 2
    sw      a1,1160(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2664(sp)
    la      a0, a11
    sw      a1,1144(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1152(sp)
    add     a2,a0,a1
    sw      a0,2688(sp)
    li      a0, 3
    sw      a1,1136(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2656(sp)
    la      a0, a12
    sw      a1,1120(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1128(sp)
    add     a2,a0,a1
    sw      a0,2680(sp)
    li      a0, 4
    sw      a1,1112(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2648(sp)
    la      a0, a5
    sw      a1,1096(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,s8,a0
    sw      a0,1088(sp)
    li      a0, 1
    sw      a2,1104(sp)
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,2704(sp)
    la      a0, a6
    sw      a1,1080(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a3,a0
    sw      a0,1064(sp)
    li      a0, 2
    sw      a2,1072(sp)
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,2696(sp)
    la      a0, a7
    sw      a1,1056(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,s10,a0
    sw      a0,1040(sp)
    li      a0, 3
    sw      a2,1048(sp)
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,2688(sp)
    la      a0, a8
    sw      a1,1032(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,1024(sp)
    add     a2,a0,a1
    sw      a0,2712(sp)
    li      a0, 4
    sw      a1,1016(sp)
    add     a1,a0,a2
    mv      a0, a1
    sw      a0,2680(sp)
    la      a0, a1
    sw      a1,1000(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a6,a0
    sw      a0,992(sp)
    li      a0, 1
    sw      a2,1008(sp)
    add     a2,a0,a1
    la      a0, a2
    sw      a1,984(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a7,a0
    sw      a0,968(sp)
    li      a0, 2
    sw      a2,976(sp)
    add     a2,a0,a1
    la      a0, a3
    sw      a1,960(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,s3,a0
    sw      a0,944(sp)
    li      a0, 3
    sw      a2,952(sp)
    add     a2,a0,a1
    la      a0, a4
    sw      a1,936(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,s1,a0
    sw      a0,920(sp)
    li      a0, 4
    sw      a2,928(sp)
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,2712(sp)
    la      a0, a1
    sw      a1,912(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a6,a0
    sw      a0,896(sp)
    li      a0, 1
    sw      a2,904(sp)
    add     a2,a0,a1
    la      a0, a2
    sw      a1,888(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a7,a0
    sw      a0,872(sp)
    li      a0, 2
    sw      a2,880(sp)
    add     a2,a0,a1
    la      a0, a3
    sw      a1,864(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,s3,a0
    sw      a0,848(sp)
    li      a0, 3
    sw      a2,856(sp)
    add     a2,a0,a1
    la      a0, a4
    sw      a1,840(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,s1,a0
    sw      a0,824(sp)
    li      a0, 4
    sw      a2,832(sp)
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,2712(sp)
    la      a0, a32
    sw      a1,816(sp)
    lw      a1,0(a0)
    la      a0, a31
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,808(sp)
    sub     a2,a0,a1
    sw      a0,792(sp)
    la      a0, a30
    sw      a1,800(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,776(sp)
    la      a0, a29
    sw      a1,768(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,784(sp)
    sub     a2,a0,a1
    sw      a0,760(sp)
    la      a0, a28
    sw      a1,768(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,744(sp)
    la      a0, a27
    sw      a1,736(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,752(sp)
    sub     a2,a0,a1
    sw      a0,728(sp)
    la      a0, a26
    sw      a1,736(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,712(sp)
    la      a0, a25
    sw      a1,704(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,720(sp)
    sub     a2,a0,a1
    sw      a0,696(sp)
    la      a0, a24
    sw      a1,704(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,680(sp)
    la      a0, a23
    sw      a1,672(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,688(sp)
    sub     a2,a0,a1
    sw      a0,664(sp)
    la      a0, a22
    sw      a1,672(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,648(sp)
    la      a0, a21
    sw      a1,640(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,656(sp)
    sub     a2,a0,a1
    sw      a0,632(sp)
    la      a0, a20
    sw      a1,640(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,616(sp)
    la      a0, a19
    sw      a1,608(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,624(sp)
    sub     a2,a0,a1
    sw      a0,600(sp)
    la      a0, a18
    sw      a1,608(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,584(sp)
    la      a0, a17
    sw      a1,576(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,592(sp)
    sub     a2,a0,a1
    sw      a0,568(sp)
    la      a0, a16
    sw      a1,576(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,552(sp)
    la      a0, a15
    sw      a1,544(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,560(sp)
    sub     a2,a0,a1
    sw      a0,536(sp)
    la      a0, a14
    sw      a1,544(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,520(sp)
    la      a0, a13
    sw      a1,512(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,528(sp)
    sub     a2,a0,a1
    sw      a0,504(sp)
    la      a0, a12
    sw      a1,512(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,488(sp)
    la      a0, a11
    sw      a1,480(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,496(sp)
    sub     a2,a0,a1
    sw      a0,472(sp)
    la      a0, a10
    sw      a1,480(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,456(sp)
    la      a0, a9
    sw      a1,448(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,464(sp)
    sub     a2,a0,a1
    sw      a0,440(sp)
    la      a0, a8
    sw      a1,448(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,424(sp)
    la      a0, a7
    sw      a1,416(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,432(sp)
    sub     a2,a0,a1
    sw      a0,408(sp)
    la      a0, a6
    sw      a1,416(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,392(sp)
    la      a0, a5
    sw      a1,384(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,400(sp)
    sub     a2,a0,a1
    sw      a0,376(sp)
    la      a0, a4
    sw      a1,384(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,360(sp)
    la      a0, a3
    sw      a1,352(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,368(sp)
    sub     a2,a0,a1
    sw      a0,344(sp)
    la      a0, a2
    sw      a1,352(sp)
    lw      a1,0(a0)
    mv      a0, a0
    add     a1,a0,a2
    sw      a0,328(sp)
    la      a0, a1
    sw      a1,320(sp)
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    sw      a2,336(sp)
    sub     a2,a0,a1
    sw      a0,312(sp)
    mv      a0, a0
    sw      a1,320(sp)
    add     a1,a0,a2
    sw      a0,2488(sp)
    mv      a0, a0
    sw      a2,304(sp)
    add     a2,a0,a1
    sw      a0,2496(sp)
    mv      a0, a0
    sw      a1,296(sp)
    add     a1,a0,a2
    sw      a0,2504(sp)
    mv      a0, a0
    sw      a2,288(sp)
    add     a2,a0,a1
    sw      a0,2512(sp)
    mv      a0, a0
    sw      a1,280(sp)
    add     a1,a0,a2
    sw      a0,2520(sp)
    mv      a0, a0
    sw      a2,272(sp)
    sub     a2,a0,a1
    sw      a0,2528(sp)
    mv      a0, a0
    sw      a1,264(sp)
    sub     a1,a0,a2
    sw      a0,2536(sp)
    mv      a0, a0
    sw      a2,256(sp)
    sub     a2,a0,a1
    sw      a0,2544(sp)
    mv      a0, a0
    sw      a1,248(sp)
    sub     a1,a0,a2
    sw      a0,2552(sp)
    mv      a0, a0
    sw      a2,240(sp)
    add     a2,a0,a1
    sw      a0,2560(sp)
    mv      a0, a0
    sw      a1,232(sp)
    add     a1,a0,a2
    sw      a0,2568(sp)
    mv      a0, a0
    sw      a2,224(sp)
    add     a2,a0,a1
    sw      a0,2576(sp)
    mv      a0, a0
    sw      a1,216(sp)
    add     a1,a0,a2
    sw      a0,2584(sp)
    mv      a0, a0
    sw      a2,208(sp)
    sub     a2,a0,a1
    sw      a0,2592(sp)
    mv      a0, a0
    sw      a1,200(sp)
    sub     a1,a0,a2
    sw      a0,2600(sp)
    mv      a0, a0
    sw      a2,192(sp)
    sub     a2,a0,a1
    sw      a0,2608(sp)
    mv      a0, a0
    sw      a1,184(sp)
    sub     a1,a0,a2
    sw      a0,2616(sp)
    mv      a0, a0
    sw      a2,176(sp)
    add     a2,a0,a1
    sw      a0,2624(sp)
    mv      a0, a0
    sw      a1,168(sp)
    add     a1,a0,a2
    sw      a0,2632(sp)
    mv      a0, a0
    sw      a2,160(sp)
    add     a2,a0,a1
    sw      a0,2640(sp)
    mv      a0, a0
    sw      a1,152(sp)
    add     a1,a0,a2
    sw      a0,2648(sp)
    mv      a0, a0
    sw      a2,144(sp)
    sub     a2,a0,a1
    sw      a0,2656(sp)
    mv      a0, a0
    sw      a1,136(sp)
    sub     a1,a0,a2
    sw      a0,2664(sp)
    mv      a0, a0
    sw      a2,128(sp)
    sub     a2,a0,a1
    sw      a0,2672(sp)
    mv      a0, a0
    sw      a1,120(sp)
    sub     a1,a0,a2
    sw      a0,2680(sp)
    mv      a0, a0
    sw      a2,112(sp)
    add     a2,a0,a1
    sw      a0,2688(sp)
    mv      a0, a0
    sw      a1,104(sp)
    add     a1,a0,a2
    sw      a0,2696(sp)
    mv      a0, a0
    sw      a2,96(sp)
    add     a2,a0,a1
    sw      a0,2704(sp)
    mv      a0, a0
    sw      a1,88(sp)
    add     a1,a0,a2
    sw      a0,2712(sp)
    sub     a0,s10,a1
    sw      a1,72(sp)
    sub     a1,a3,a0
    sw      a0,64(sp)
    sub     a0,s8,a1
    sw      a1,56(sp)
    sub     a1,s1,a0
    sw      a0,48(sp)
    add     a0,s3,a1
    sw      a1,40(sp)
    add     a1,a7,a0
    sw      a0,32(sp)
    add     a0,a6,a1
    sw      a1,24(sp)
    add     a1,a5,a0
    sw      a0,16(sp)
    li      a0, 2824
    add     a0,sp,a0
    ld      ra,0(a0)
    sd      a0,2824(sp)
    li      a0, 2808
    add     a0,sp,a0
    ld      s0,0(a0)
    mv      a0, a1
    sd      a0,2808(sp)
    li      a0, 2832
    li      a0, 2832
    add     sp,a0,sp
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,48(sp)
    addi    s0,sp,72
.L0_0:
    sw      s1,2744(sp)
    sw      s2,2408(sp)
    sw      s3,2752(sp)
    sw      s4,2448(sp)
    sw      s5,2440(sp)
    sw      s6,2400(sp)
    sw      s7,2432(sp)
    sw      s8,2736(sp)
    sw      s9,2392(sp)
    sw      s10,2720(sp)
    sw      s11,2424(sp)
    call    getint
    sw      a0,24(sp)
    mv      s1, a0
    li      s2, 18
    add     s3,s1,s2
    mv      s4, s3
    sw      s1,40(sp)
    sw      s3,16(sp)
    sw      s4,32(sp)
    sw      a0,24(sp)
    mv      a0, a0
    sw      a1,8(sp)
    mv      a1, a1
    call    func
    sw      a0,8(sp)
    mv      a1, a0
    sw      a1,40(sp)
    sw      a0,8(sp)
    mv      a0, a0
    call    putint
    ld      ra,64(sp)
    ld      s0,48(sp)
    lw      a0,40(sp)
    addi    sp,sp,72
    ret
.section        .data
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
