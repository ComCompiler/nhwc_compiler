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
    .globl relu_reg
    .type relu_reg,@function
relu_reg:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L5_0:
    li      a1, 0x7F
    slt     a2,a1,a0
    bnez    a2, .branch_true_20
    j       .branch_false_20
.branch_true_20:
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0x7F
    addi    sp,sp,24
    ret
.branch_false_20:
.L6_0:
    li      a3, 0
    slt     a4,a0,a3
    bnez    a4, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
.branch_false_23:
.L7_0:
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
    .globl model
    .type model,@function
model:
    li      a1, -2456
    li      a1, -2456
    add     sp,a1,sp
    sd      ra,2448(sp)
    sd      s0,2440(sp)
    li      a2, 2456
    li      a2, 2456
    add     s0,a2,sp
.L3_0:
    li      a3, 0
    li      a4, 1
    li      a5, 2
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
    li      a6, -7
    mul     s1,a6,a7
    li      s2, 0
    li      s3, 4
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
    li      s5, 85
    mul     s6,s4,s5
    li      s7, 0
    add     s7,s7,a0
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
    li      s8, -49
    mul     s10,s8,s9
    add     s11,s10,s6
    li      a1, 0
    add     a1,a1,a0
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    li      a4, 36
    mul     a5,a2,a4
    add     a4,a5,s11
    li      a6, 0
    li      s3, 1
    li      s5, 4
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
    li      s5, -121
    mul     s8,s3,s5
    add     s5,s8,a4
    sd      a0,2432(sp)
    li      a0, 0
    sd      a1,2368(sp)
    li      a1, 1
    sw      a2,2364(sp)
    li      a2, 4
    sd      a3,2424(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 115
    sd      a0,2320(sp)
    mul     a0,a1,a2
    add     a1,a0,s5
    sw      a0,2312(sp)
    li      a0, 0
    sw      a1,2308(sp)
    li      a1, 1
    sw      a2,2316(sp)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, 29
    sd      a0,2296(sp)
    mul     a0,a1,a2
    sw      a1,2292(sp)
    add     a1,a0,a2
    sw      a0,2288(sp)
    li      a0, 0
    sw      a1,2284(sp)
    li      a1, 1
    sw      a2,2308(sp)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, 38
    sd      a0,2272(sp)
    mul     a0,a1,a2
    sw      a1,2268(sp)
    add     a1,a0,a2
    sw      a0,2264(sp)
    li      a0, 0
    sw      a1,2260(sp)
    li      a1, 1
    sw      a2,2284(sp)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, -68
    sd      a0,2248(sp)
    mul     a0,a1,a2
    sw      a1,2244(sp)
    add     a1,a0,a2
    sw      a0,2240(sp)
    li      a0, 0
    sw      a1,2236(sp)
    li      a1, 1
    sw      a2,2260(sp)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 22
    sd      a0,2224(sp)
    mul     a0,a1,a2
    sw      a2,2220(sp)
    add     a2,a0,a1
    sw      a0,2216(sp)
    li      a0, 0
    sw      a1,2236(sp)
    li      a1, 1
    sw      a2,2212(sp)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, 47
    sd      a0,2200(sp)
    mul     a0,a1,a2
    sw      a1,2196(sp)
    add     a1,a0,a2
    sw      a0,2192(sp)
    li      a0, 0
    sw      a1,2188(sp)
    li      a1, 1
    sw      a2,2212(sp)
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, 67
    sd      a0,2176(sp)
    mul     a0,a1,a2
    sw      a1,2172(sp)
    add     a1,a0,a2
    sw      a0,2168(sp)
    li      a0, 0
    sw      a1,2164(sp)
    li      a1, 1
    sw      a2,2188(sp)
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, -122
    sd      a0,2152(sp)
    mul     a0,a1,a2
    sw      a2,2148(sp)
    add     a2,a0,a1
    sw      a0,2144(sp)
    add     a0,a2,s1
    sw      a0,2136(sp)
    li      a0, 0
    sw      a1,2164(sp)
    li      a1, 1
    sw      a2,2140(sp)
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, -74
    sd      a0,2128(sp)
    mul     a0,a1,a2
    sw      a1,2124(sp)
    add     a1,a0,a2
    sw      a0,2120(sp)
    li      a0, 0
    sw      a1,2116(sp)
    li      a1, 1
    sw      a2,2136(sp)
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 109
    sd      a0,2104(sp)
    mul     a0,a1,a2
    sw      a2,2100(sp)
    add     a2,a0,a1
    sw      a0,2096(sp)
    li      a0, 0
    sw      a1,2116(sp)
    li      a1, 1
    sw      a2,2092(sp)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, -51
    sd      a0,2080(sp)
    mul     a0,a1,a2
    sw      a2,2076(sp)
    add     a2,a0,a1
    sw      a0,2072(sp)
    li      a0, 0
    sw      a1,2092(sp)
    li      a1, 1
    sw      a2,2068(sp)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, 96
    sd      a0,2056(sp)
    mul     a0,a1,a2
    sw      a1,2052(sp)
    add     a1,a0,a2
    sw      a0,2048(sp)
    li      a0, 0
    sw      a1,2044(sp)
    li      a1, 1
    sw      a2,2068(sp)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, 75
    sd      a0,2032(sp)
    mul     a0,a1,a2
    sw      a1,2028(sp)
    add     a1,a0,a2
    sw      a0,2024(sp)
    li      a0, 0
    sw      a1,2020(sp)
    li      a1, 1
    sw      a2,2044(sp)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, -77
    sd      a0,2008(sp)
    mul     a0,a1,a2
    sw      a1,2004(sp)
    add     a1,a0,a2
    sw      a0,2000(sp)
    li      a0, 0
    sw      a1,1996(sp)
    li      a1, 1
    sw      a2,2020(sp)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 10
    sd      a0,1984(sp)
    mul     a0,a1,a2
    sw      a2,1980(sp)
    add     a2,a0,a1
    sw      a0,1976(sp)
    li      a0, 0
    sw      a1,1996(sp)
    li      a1, 1
    sw      a2,1972(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, -92
    sd      a0,1960(sp)
    mul     a0,a1,a2
    sw      a2,1956(sp)
    add     a2,a0,a1
    sw      a0,1952(sp)
    li      a0, 0
    sw      a1,1972(sp)
    li      a1, 1
    sw      a2,1948(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, -123
    sd      a0,1936(sp)
    mul     a0,a1,a2
    sw      a1,1932(sp)
    add     a1,a0,a2
    sw      a0,1928(sp)
    li      a0, 0
    sw      a1,1924(sp)
    li      a1, 1
    sw      a2,1948(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 41
    sd      a0,1912(sp)
    mul     a0,a1,a2
    sw      a2,1908(sp)
    add     a2,a0,a1
    sw      a0,1904(sp)
    li      a0, 0
    sw      a1,1924(sp)
    li      a1, 1
    sw      a2,1900(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 42
    sd      a0,1888(sp)
    mul     a0,a1,a2
    sw      a2,1884(sp)
    add     a2,a0,a1
    sw      a0,1880(sp)
    li      a0, 0
    sw      a1,1900(sp)
    li      a1, 1
    sw      a2,1876(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a2, 67
    sd      a0,1864(sp)
    mul     a0,a1,a2
    sw      a1,1860(sp)
    add     a1,a0,a2
    sw      s1,2416(sp)
    sd      s2,2408(sp)
    sw      s3,2340(sp)
    sw      s4,2404(sp)
    sw      s5,2332(sp)
    sw      s6,2400(sp)
    sd      s7,2392(sp)
    sw      s8,2336(sp)
    sw      s9,2388(sp)
    sw      s10,2384(sp)
    sw      s11,2380(sp)
    sw      a1,1852(sp)
    sw      a0,1856(sp)
    call    relu_reg
    sw      a0,1848(sp)
    li      a1, 46
    mul     s1,a0,a1
    li      s2, -70
    mul     s4,s2,s3
    li      s5, -15
    mul     s7,s5,s6
    li      s8, -62
    mul     s10,s8,s9
    li      a1, -114
    mul     s2,s11,a1
    li      s5, -13
    mul     s8,a1,s5
    add     s5,s8,s2
    sw      a0,1848(sp)
    sw      a1,2388(sp)
    li      a1, -103
    sw      a2,1876(sp)
    mul     a2,a0,a1
    add     a1,a2,s5
    sw      a0,2364(sp)
    sw      a1,1812(sp)
    li      a1, 37
    sw      a2,1816(sp)
    mul     a2,a0,a1
    sw      a0,2340(sp)
    add     a0,a2,a1
    sw      a0,1804(sp)
    li      a0, 53
    sw      a1,1812(sp)
    sw      a2,1808(sp)
    mul     a2,a0,a1
    sw      a1,2316(sp)
    add     a1,a2,a0
    sw      a0,1804(sp)
    sw      a1,1796(sp)
    li      a1, -77
    sw      a2,1800(sp)
    mul     a2,a0,a1
    sw      a0,2292(sp)
    add     a0,a2,a1
    sw      a0,1788(sp)
    sw      a1,1796(sp)
    li      a1, 71
    sw      a2,1792(sp)
    mul     a2,a0,a1
    sw      a0,2268(sp)
    add     a0,a2,a1
    sw      a0,1780(sp)
    sw      a1,1788(sp)
    li      a1, -75
    sw      a2,1784(sp)
    mul     a2,a0,a1
    sw      a0,2244(sp)
    add     a0,a2,a1
    sw      a0,1772(sp)
    li      a0, -87
    sw      a1,1780(sp)
    sw      a2,1776(sp)
    mul     a2,a0,a1
    sw      a1,2220(sp)
    add     a1,a2,a0
    sw      a0,1772(sp)
    sw      a1,1764(sp)
    li      a1, -34
    sw      a2,1768(sp)
    mul     a2,a0,a1
    sw      a0,2196(sp)
    add     a0,a2,a1
    sw      a0,1756(sp)
    li      a0, -73
    sw      a1,1764(sp)
    sw      a2,1760(sp)
    mul     a2,a0,a1
    sw      a1,2172(sp)
    add     a1,a2,a0
    sw      a0,1756(sp)
    sw      a1,1748(sp)
    li      a1, 37
    sw      a2,1752(sp)
    mul     a2,a0,a1
    sw      a0,2148(sp)
    add     a0,a2,a1
    sw      a0,1740(sp)
    li      a0, -70
    sw      a1,1748(sp)
    mul     a1,a7,a0
    sw      a2,1744(sp)
    add     a2,a1,a0
    sw      a0,1740(sp)
    li      a0, -46
    sw      a1,1736(sp)
    sw      a2,1732(sp)
    mul     a2,a0,a1
    sw      a1,2124(sp)
    add     a1,a2,a0
    sw      a0,1732(sp)
    sw      a1,1724(sp)
    li      a1, -125
    sw      a2,1728(sp)
    mul     a2,a0,a1
    sw      a0,2100(sp)
    add     a0,a2,a1
    sw      a1,1724(sp)
    add     a1,a0,s10
    sw      a0,1716(sp)
    li      a0, 36
    sw      a1,1712(sp)
    sw      a2,1720(sp)
    mul     a2,a0,a1
    sw      a1,2052(sp)
    add     a1,a2,a0
    sw      a0,1712(sp)
    li      a0, 37
    sw      a1,1704(sp)
    sw      a2,1708(sp)
    mul     a2,a0,a1
    sw      a1,2028(sp)
    add     a1,a2,a0
    sw      a0,1704(sp)
    sw      a1,1696(sp)
    li      a1, -32
    sw      a2,1700(sp)
    mul     a2,a0,a1
    sw      a0,2004(sp)
    add     a0,a2,a1
    sw      a1,1696(sp)
    add     a1,a0,s7
    sw      a0,1688(sp)
    sw      a1,1684(sp)
    li      a1, -90
    sw      a2,1692(sp)
    mul     a2,a0,a1
    sw      a0,1956(sp)
    add     a0,a2,a1
    sw      a0,1676(sp)
    sw      a1,1684(sp)
    li      a1, 38
    sw      a2,1680(sp)
    mul     a2,a0,a1
    sw      a0,1932(sp)
    add     a0,a2,a1
    sw      a1,1676(sp)
    add     a1,a0,s4
    sw      a0,1668(sp)
    sw      a1,1664(sp)
    li      a1, 7
    sw      a2,1672(sp)
    mul     a2,a0,a1
    sw      a0,1884(sp)
    add     a0,a2,a1
    sw      a0,1656(sp)
    li      a0, -29
    sw      a1,1664(sp)
    sw      a2,1660(sp)
    mul     a2,a0,a1
    sw      a1,1860(sp)
    add     a1,a2,a0
    sw      s1,1844(sp)
    sw      s2,1828(sp)
    sw      s3,1908(sp)
    sw      s4,1840(sp)
    sw      s5,1820(sp)
    sw      s6,1980(sp)
    sw      s7,1836(sp)
    sw      s8,1824(sp)
    sw      s9,2076(sp)
    sw      s10,1832(sp)
    sw      s11,2404(sp)
    sw      a1,1648(sp)
    sw      a0,1656(sp)
    call    relu_reg
    sw      a0,1644(sp)
    li      a1, -23
    mul     s1,a0,a1
    add     s3,s1,s2
    li      s4, 82
    mul     s6,s4,s5
    li      s8, 65
    mul     s9,s7,s8
    li      s10, -84
    mul     a1,s10,s11
    li      s8, 46
    mul     s10,s4,s8
    add     s8,s10,a1
    sw      a0,1644(sp)
    sw      a1,1624(sp)
    li      a1, 83
    sw      a2,1652(sp)
    mul     a2,a0,a1
    add     a1,a2,s8
    sw      a0,2364(sp)
    li      a0, 97
    sw      a1,1608(sp)
    sw      a2,1612(sp)
    mul     a2,a0,a1
    sw      a1,2340(sp)
    add     a1,a2,a0
    sw      a0,1608(sp)
    add     a0,a1,s9
    sw      a0,1596(sp)
    sw      a1,1600(sp)
    li      a1, -121
    sw      a2,1604(sp)
    mul     a2,a0,a1
    sw      a0,2292(sp)
    add     a0,a2,a1
    sw      a0,1588(sp)
    sw      a1,1596(sp)
    li      a1, -104
    sw      a2,1592(sp)
    mul     a2,a0,a1
    sw      a0,2268(sp)
    add     a0,a2,a1
    sw      a0,1580(sp)
    sw      a1,1588(sp)
    li      a1, -96
    sw      a2,1584(sp)
    mul     a2,a0,a1
    sw      a0,2244(sp)
    add     a0,a2,a1
    sw      a0,1572(sp)
    sw      a1,1580(sp)
    li      a1, 82
    sw      a2,1576(sp)
    mul     a2,a0,a1
    sw      a0,2220(sp)
    add     a0,a2,a1
    sw      a0,1564(sp)
    li      a0, 24
    sw      a1,1572(sp)
    sw      a2,1568(sp)
    mul     a2,a0,a1
    sw      a1,2196(sp)
    add     a1,a2,a0
    sw      a0,1564(sp)
    li      a0, 107
    sw      a1,1556(sp)
    sw      a2,1560(sp)
    mul     a2,a0,a1
    sw      a1,2172(sp)
    add     a1,a2,a0
    sw      a0,1556(sp)
    li      a0, 71
    sw      a1,1548(sp)
    sw      a2,1552(sp)
    mul     a2,a0,a1
    sw      a1,2148(sp)
    add     a1,a2,a0
    sw      a0,1548(sp)
    sw      a2,1544(sp)
    add     a2,a0,a1
    sw      a0,2416(sp)
    li      a0, -119
    sw      a1,1540(sp)
    sw      a2,1536(sp)
    mul     a2,a0,a1
    sw      a1,2124(sp)
    add     a1,a2,a0
    sw      a0,1536(sp)
    li      a0, 104
    sw      a1,1528(sp)
    sw      a2,1532(sp)
    mul     a2,a0,a1
    sw      a1,2100(sp)
    add     a1,a2,a0
    sw      a0,1528(sp)
    sw      a1,1520(sp)
    li      a1, 5
    sw      a2,1524(sp)
    mul     a2,a0,a1
    sw      a0,2076(sp)
    add     a0,a2,a1
    sw      a0,1512(sp)
    li      a0, 18
    sw      a1,1520(sp)
    sw      a2,1516(sp)
    mul     a2,a0,a1
    sw      a1,2052(sp)
    add     a1,a2,a0
    sw      a0,1512(sp)
    sw      a1,1504(sp)
    li      a1, -13
    sw      a2,1508(sp)
    mul     a2,a0,a1
    sw      a0,2028(sp)
    add     a0,a2,a1
    sw      a0,1496(sp)
    sw      a1,1504(sp)
    li      a1, 120
    sw      a2,1500(sp)
    mul     a2,a0,a1
    sw      a0,2004(sp)
    add     a0,a2,a1
    sw      a0,1488(sp)
    sw      a1,1496(sp)
    li      a1, 65
    sw      a2,1492(sp)
    mul     a2,a0,a1
    sw      a0,1980(sp)
    add     a0,a2,a1
    sw      a0,1480(sp)
    li      a0, -2
    sw      a1,1488(sp)
    sw      a2,1484(sp)
    mul     a2,a0,a1
    sw      a1,1956(sp)
    add     a1,a2,a0
    sw      a0,1480(sp)
    li      a0, 30
    sw      a1,1472(sp)
    sw      a2,1476(sp)
    mul     a2,a0,a1
    sw      a1,1932(sp)
    add     a1,a2,a0
    sw      a0,1472(sp)
    sw      a1,1464(sp)
    li      a1, 67
    sw      a2,1468(sp)
    mul     a2,a0,a1
    sw      a0,1908(sp)
    add     a0,a2,a1
    sw      a1,1464(sp)
    add     a1,a0,s6
    sw      a0,1456(sp)
    li      a0, 33
    sw      a1,1452(sp)
    sw      a2,1460(sp)
    mul     a2,a0,a1
    sw      a1,1860(sp)
    add     a1,a2,a0
    sw      s1,1640(sp)
    sw      s2,1844(sp)
    sw      s3,1636(sp)
    sw      s4,2388(sp)
    sw      s5,1884(sp)
    sw      s6,1632(sp)
    sw      s7,2316(sp)
    sw      s8,1616(sp)
    sw      s9,1628(sp)
    sw      s10,1620(sp)
    sw      s11,2404(sp)
    sw      a1,1444(sp)
    sw      a0,1452(sp)
    call    relu_reg
    sw      a0,1440(sp)
    li      a1, -50
    mul     s1,a0,a1
    add     s3,s1,s2
    li      s5, 66
    mul     s6,s4,s5
    li      s8, -15
    mul     s9,s7,s8
    add     s10,s9,s6
    li      a1, -13
    mul     s5,s11,a1
    add     a1,s5,s10
    li      s8, 48
    sw      a0,1440(sp)
    sw      a1,1412(sp)
    mul     a1,s8,a0
    sw      a0,2340(sp)
    add     a0,a1,s8
    sw      a0,1404(sp)
    li      a0, -79
    sw      a1,1408(sp)
    sw      a2,1448(sp)
    mul     a2,a0,a1
    sw      a1,2316(sp)
    add     a1,a2,a0
    sw      a0,1404(sp)
    li      a0, 86
    sw      a1,1396(sp)
    sw      a2,1400(sp)
    mul     a2,a0,a1
    sw      a1,2292(sp)
    add     a1,a2,a0
    sw      a0,1396(sp)
    sw      a1,1388(sp)
    li      a1, 67
    sw      a2,1392(sp)
    mul     a2,a0,a1
    sw      a0,2268(sp)
    add     a0,a2,a1
    sw      a0,1380(sp)
    li      a0, 58
    sw      a1,1388(sp)
    sw      a2,1384(sp)
    mul     a2,a0,a1
    sw      a1,2244(sp)
    add     a1,a2,a0
    sw      a0,1380(sp)
    li      a0, 14
    sw      a1,1372(sp)
    sw      a2,1376(sp)
    mul     a2,a0,a1
    sw      a1,2220(sp)
    add     a1,a2,a0
    sw      a0,1372(sp)
    li      a0, -33
    sw      a1,1364(sp)
    sw      a2,1368(sp)
    mul     a2,a0,a1
    sw      a1,2196(sp)
    add     a1,a2,a0
    sw      a0,1364(sp)
    sw      a1,1356(sp)
    li      a1, 55
    sw      a2,1360(sp)
    mul     a2,a0,a1
    sw      a0,2172(sp)
    add     a0,a2,a1
    sw      a0,1348(sp)
    sw      a1,1356(sp)
    li      a1, 15
    sw      a2,1352(sp)
    mul     a2,a0,a1
    sw      a0,2148(sp)
    add     a0,a2,a1
    sw      a0,1340(sp)
    li      a0, 52
    sw      a1,1348(sp)
    mul     a1,a7,a0
    sw      a2,1344(sp)
    add     a2,a1,a0
    sw      a0,1340(sp)
    sw      a1,1336(sp)
    li      a1, 59
    sw      a2,1332(sp)
    mul     a2,a0,a1
    sw      a0,2124(sp)
    add     a0,a2,a1
    sw      a0,1324(sp)
    sw      a1,1332(sp)
    li      a1, -95
    sw      a2,1328(sp)
    mul     a2,a0,a1
    sw      a0,2100(sp)
    add     a0,a2,a1
    sw      a0,1316(sp)
    sw      a1,1324(sp)
    li      a1, -110
    sw      a2,1320(sp)
    mul     a2,a0,a1
    sw      a0,2076(sp)
    add     a0,a2,a1
    sw      a0,1308(sp)
    li      a0, 2
    sw      a1,1316(sp)
    sw      a2,1312(sp)
    mul     a2,a0,a1
    sw      a1,2052(sp)
    add     a1,a2,a0
    sw      a0,1308(sp)
    sw      a1,1300(sp)
    li      a1, 81
    sw      a2,1304(sp)
    mul     a2,a0,a1
    sw      a0,2028(sp)
    add     a0,a2,a1
    sw      a0,1292(sp)
    sw      a1,1300(sp)
    li      a1, -8
    sw      a2,1296(sp)
    mul     a2,a0,a1
    sw      a0,2004(sp)
    add     a0,a2,a1
    sw      a0,1284(sp)
    sw      a1,1292(sp)
    li      a1, -30
    sw      a2,1288(sp)
    mul     a2,a0,a1
    sw      a0,1980(sp)
    add     a0,a2,a1
    sw      a0,1276(sp)
    sw      a1,1284(sp)
    li      a1, -6
    sw      a2,1280(sp)
    mul     a2,a0,a1
    sw      a0,1956(sp)
    add     a0,a2,a1
    sw      a0,1268(sp)
    li      a0, -90
    sw      a1,1276(sp)
    sw      a2,1272(sp)
    mul     a2,a0,a1
    sw      a1,1932(sp)
    add     a1,a2,a0
    sw      a0,1268(sp)
    sw      a1,1260(sp)
    li      a1, 66
    sw      a2,1264(sp)
    mul     a2,a0,a1
    sw      a0,1908(sp)
    add     a0,a2,a1
    sw      a0,1252(sp)
    li      a0, -77
    sw      a1,1260(sp)
    sw      a2,1256(sp)
    mul     a2,a0,a1
    sw      a1,1884(sp)
    add     a1,a2,a0
    sw      a0,1252(sp)
    sw      a1,1244(sp)
    li      a1, 15
    sw      a2,1248(sp)
    mul     a2,a0,a1
    sw      a0,1860(sp)
    add     a0,a2,a1
    sw      s1,1436(sp)
    sw      s2,1636(sp)
    sw      s3,1432(sp)
    sw      s4,2404(sp)
    sw      s5,1416(sp)
    sw      s6,1428(sp)
    sw      s7,2388(sp)
    sw      s8,1412(sp)
    sw      s9,1424(sp)
    sw      s10,1420(sp)
    sw      s11,2364(sp)
    sw      a0,1236(sp)
    call    relu_reg
    sw      a0,1232(sp)
    li      s1, -95
    mul     s2,a0,s1
    add     s4,s2,s3
    li      s5, -72
    mul     s7,s5,s6
    li      s9, 82
    mul     s10,s8,s9
    add     s11,s10,s7
    li      s1, -54
    mul     s9,s1,s5
    add     s1,s9,s11
    sw      a0,1232(sp)
    sw      a1,1244(sp)
    li      a1, -116
    sw      a2,1240(sp)
    mul     a2,a0,a1
    add     a1,a2,s1
    sw      a0,2340(sp)
    li      a0, -112
    sw      a1,1196(sp)
    sw      a2,1200(sp)
    mul     a2,a0,a1
    sw      a1,2316(sp)
    add     a1,a2,a0
    sw      a0,1196(sp)
    li      a0, -50
    sw      a1,1188(sp)
    sw      a2,1192(sp)
    mul     a2,a0,a1
    sw      a1,2292(sp)
    add     a1,a2,a0
    sw      a0,1188(sp)
    sw      a1,1180(sp)
    li      a1, -16
    sw      a2,1184(sp)
    mul     a2,a0,a1
    sw      a0,2268(sp)
    add     a0,a2,a1
    sw      a0,1172(sp)
    li      a0, -10
    sw      a1,1180(sp)
    sw      a2,1176(sp)
    mul     a2,a0,a1
    sw      a1,2244(sp)
    add     a1,a2,a0
    sw      a0,1172(sp)
    sw      a1,1164(sp)
    li      a1, 112
    sw      a2,1168(sp)
    mul     a2,a0,a1
    sw      a0,2220(sp)
    add     a0,a2,a1
    sw      a0,1156(sp)
    sw      a1,1164(sp)
    li      a1, 114
    sw      a2,1160(sp)
    mul     a2,a0,a1
    sw      a0,2196(sp)
    add     a0,a2,a1
    sw      a0,1148(sp)
    li      a0, 112
    sw      a1,1156(sp)
    sw      a2,1152(sp)
    mul     a2,a0,a1
    sw      a1,2172(sp)
    add     a1,a2,a0
    sw      a0,1148(sp)
    sw      a1,1140(sp)
    li      a1, -21
    sw      a2,1144(sp)
    mul     a2,a0,a1
    sw      a0,2148(sp)
    add     a0,a2,a1
    sw      a0,1132(sp)
    li      a0, 38
    sw      a1,1140(sp)
    mul     a1,a0,a7
    sw      a2,1136(sp)
    add     a2,a1,a0
    sw      a0,1132(sp)
    li      a0, 114
    sw      a1,1128(sp)
    sw      a2,1124(sp)
    mul     a2,a0,a1
    sw      a1,2124(sp)
    add     a1,a2,a0
    sw      a0,1124(sp)
    sw      a1,1116(sp)
    li      a1, 64
    sw      a2,1120(sp)
    mul     a2,a0,a1
    sw      a0,2100(sp)
    add     a0,a2,a1
    sw      a0,1108(sp)
    sw      a1,1116(sp)
    sw      a2,1112(sp)
    add     a2,a0,a1
    sw      a0,1832(sp)
    li      a0, -13
    sw      a1,1108(sp)
    sw      a2,1104(sp)
    mul     a2,a0,a1
    sw      a1,2052(sp)
    add     a1,a2,a0
    sw      a0,1104(sp)
    sw      a1,1096(sp)
    li      a1, 101
    sw      a2,1100(sp)
    mul     a2,a0,a1
    sw      a0,2028(sp)
    add     a0,a2,a1
    sw      a0,1088(sp)
    li      a0, 55
    sw      a1,1096(sp)
    sw      a2,1092(sp)
    mul     a2,a0,a1
    sw      a1,2004(sp)
    add     a1,a2,a0
    sw      a0,1088(sp)
    sw      a2,1084(sp)
    add     a2,a0,a1
    sw      a0,1836(sp)
    li      a0, 121
    sw      a1,1080(sp)
    sw      a2,1076(sp)
    mul     a2,a0,a1
    sw      a1,1956(sp)
    add     a1,a2,a0
    sw      a0,1076(sp)
    li      a0, -74
    sw      a1,1068(sp)
    sw      a2,1072(sp)
    mul     a2,a0,a1
    sw      a1,1932(sp)
    add     a1,a2,a0
    sw      a0,1068(sp)
    sw      a1,1060(sp)
    li      a1, -102
    sw      a2,1064(sp)
    mul     a2,a0,a1
    sw      a0,1908(sp)
    add     a0,a2,a1
    sw      a0,1052(sp)
    li      a0, 68
    sw      a1,1060(sp)
    sw      a2,1056(sp)
    mul     a2,a0,a1
    sw      a1,1884(sp)
    add     a1,a2,a0
    sw      a0,1052(sp)
    li      a0, 81
    sw      a1,1044(sp)
    sw      a2,1048(sp)
    mul     a2,a0,a1
    sw      a1,1860(sp)
    add     a1,a2,a0
    sw      s1,1204(sp)
    sw      s2,1228(sp)
    sw      s3,1432(sp)
    sw      s4,1224(sp)
    sw      s5,2364(sp)
    sw      s6,2404(sp)
    sw      s7,1220(sp)
    sw      s8,2388(sp)
    sw      s9,1208(sp)
    sw      s10,1216(sp)
    sw      s11,1212(sp)
    sw      a1,1036(sp)
    sw      a0,1044(sp)
    call    relu_reg
    sw      a0,1032(sp)
    li      a1, 32
    mul     s1,a0,a1
    add     s3,s1,s2
    li      s4, 125
    mul     s6,s4,s5
    li      s7, -124
    mul     s9,s7,s8
    li      s11, 49
    mul     a1,s10,s11
    add     s4,a1,s9
    li      s7, 3
    sw      a0,1032(sp)
    mul     a0,s7,s11
    add     s7,a0,s4
    sw      a0,1004(sp)
    li      a0, 79
    sw      a1,1012(sp)
    sw      a2,1040(sp)
    mul     a2,a0,a1
    add     a0,a2,s7
    sw      a0,992(sp)
    li      a0, 15
    sw      a1,2340(sp)
    sw      a2,996(sp)
    mul     a2,a0,a1
    sw      a1,2316(sp)
    add     a1,a2,a0
    sw      a0,992(sp)
    li      a0, -93
    sw      a1,984(sp)
    sw      a2,988(sp)
    mul     a2,a0,a1
    sw      a1,2292(sp)
    add     a1,a2,a0
    sw      a0,984(sp)
    sw      a1,976(sp)
    li      a1, 116
    sw      a2,980(sp)
    mul     a2,a0,a1
    sw      a0,2268(sp)
    add     a0,a2,a1
    sw      a0,968(sp)
    sw      a1,976(sp)
    li      a1, -95
    sw      a2,972(sp)
    mul     a2,a0,a1
    sw      a0,2244(sp)
    add     a0,a2,a1
    sw      a0,960(sp)
    li      a0, 5
    sw      a1,968(sp)
    sw      a2,964(sp)
    mul     a2,a0,a1
    sw      a1,2220(sp)
    add     a1,a2,a0
    sw      a0,960(sp)
    sw      a1,952(sp)
    li      a1, 12
    sw      a2,956(sp)
    mul     a2,a0,a1
    sw      a0,2196(sp)
    add     a0,a2,a1
    sw      a0,944(sp)
    li      a0, 59
    sw      a1,952(sp)
    sw      a2,948(sp)
    mul     a2,a0,a1
    sw      a1,2172(sp)
    add     a1,a2,a0
    sw      a0,944(sp)
    li      a0, -114
    sw      a1,936(sp)
    sw      a2,940(sp)
    mul     a2,a0,a1
    sw      a1,2148(sp)
    add     a1,a2,a0
    sw      a0,936(sp)
    li      a0, -101
    sw      a1,928(sp)
    mul     a1,a0,a7
    sw      a2,932(sp)
    add     a2,a1,a0
    sw      a0,928(sp)
    li      a0, -96
    sw      a1,924(sp)
    sw      a2,920(sp)
    mul     a2,a0,a1
    sw      a1,2124(sp)
    add     a1,a2,a0
    sw      a0,920(sp)
    li      a0, 66
    sw      a1,912(sp)
    sw      a2,916(sp)
    mul     a2,a0,a1
    sw      a1,2100(sp)
    add     a1,a2,a0
    sw      a0,912(sp)
    li      a0, 75
    sw      a1,904(sp)
    sw      a2,908(sp)
    mul     a2,a0,a1
    sw      a1,2076(sp)
    add     a1,a2,a0
    sw      a0,904(sp)
    add     a0,a1,s6
    sw      a0,892(sp)
    sw      a1,896(sp)
    li      a1, -70
    sw      a2,900(sp)
    mul     a2,a0,a1
    sw      a0,2028(sp)
    add     a0,a2,a1
    sw      a0,884(sp)
    li      a0, -16
    sw      a1,892(sp)
    sw      a2,888(sp)
    mul     a2,a0,a1
    sw      a1,2004(sp)
    add     a1,a2,a0
    sw      a0,884(sp)
    sw      a1,876(sp)
    li      a1, -63
    sw      a2,880(sp)
    mul     a2,a0,a1
    sw      a0,1980(sp)
    add     a0,a2,a1
    sw      a0,868(sp)
    li      a0, -116
    sw      a1,876(sp)
    sw      a2,872(sp)
    mul     a2,a0,a1
    sw      a1,1956(sp)
    add     a1,a2,a0
    sw      a0,868(sp)
    li      a0, 101
    sw      a1,860(sp)
    sw      a2,864(sp)
    mul     a2,a0,a1
    sw      a1,1932(sp)
    add     a1,a2,a0
    sw      a0,860(sp)
    li      a0, -104
    sw      a1,852(sp)
    sw      a2,856(sp)
    mul     a2,a0,a1
    sw      a1,1908(sp)
    add     a1,a2,a0
    sw      a0,852(sp)
    sw      a2,848(sp)
    add     a2,a0,a1
    sw      a0,1632(sp)
    li      a0, 8
    sw      a1,844(sp)
    sw      a2,840(sp)
    mul     a2,a0,a1
    sw      a1,1860(sp)
    add     a1,a2,a0
    sw      s1,1028(sp)
    sw      s2,1224(sp)
    sw      s3,1024(sp)
    sw      s4,1008(sp)
    sw      s5,2052(sp)
    sw      s6,1020(sp)
    sw      s7,1000(sp)
    sw      s8,2404(sp)
    sw      s9,1016(sp)
    sw      s10,2388(sp)
    sw      s11,2364(sp)
    sw      a1,832(sp)
    sw      a0,840(sp)
    call    relu_reg
    sw      a0,828(sp)
    li      a1, -3
    mul     s1,a0,a1
    add     s3,s1,s2
    li      s5, -67
    mul     s6,s4,s5
    li      s7, 118
    mul     s9,s7,s8
    li      s10, 95
    mul     a1,s10,s11
    add     s5,a1,s9
    li      s10, -117
    sw      a0,828(sp)
    mul     a0,s7,s10
    add     s10,a0,s5
    sw      a0,800(sp)
    li      a0, -32
    sw      a1,808(sp)
    sw      a2,836(sp)
    mul     a2,a0,a1
    add     a0,a2,s10
    sw      a0,788(sp)
    li      a0, -47
    sw      a1,2340(sp)
    sw      a2,792(sp)
    mul     a2,a0,a1
    sw      a1,2316(sp)
    add     a1,a2,a0
    sw      a0,788(sp)
    sw      a1,780(sp)
    li      a1, -23
    sw      a2,784(sp)
    mul     a2,a0,a1
    sw      a0,2292(sp)
    add     a0,a2,a1
    sw      a0,772(sp)
    li      a0, 11
    sw      a1,780(sp)
    sw      a2,776(sp)
    mul     a2,a0,a1
    sw      a1,2268(sp)
    add     a1,a2,a0
    sw      a0,772(sp)
    li      a0, 122
    sw      a1,764(sp)
    sw      a2,768(sp)
    mul     a2,a0,a1
    sw      a1,2244(sp)
    add     a1,a2,a0
    sw      a0,764(sp)
    li      a0, 83
    sw      a1,756(sp)
    sw      a2,760(sp)
    mul     a2,a0,a1
    sw      a1,2220(sp)
    add     a1,a2,a0
    sw      a0,756(sp)
    sw      a1,748(sp)
    li      a1, -123
    sw      a2,752(sp)
    mul     a2,a0,a1
    sw      a0,2196(sp)
    add     a0,a2,a1
    sw      a0,740(sp)
    sw      a1,748(sp)
    li      a1, -31
    sw      a2,744(sp)
    mul     a2,a0,a1
    sw      a0,2172(sp)
    add     a0,a2,a1
    sw      a0,732(sp)
    sw      a1,740(sp)
    li      a1, 110
    sw      a2,736(sp)
    mul     a2,a0,a1
    sw      a0,2148(sp)
    add     a0,a2,a1
    sw      a0,724(sp)
    li      a0, 125
    sw      a1,732(sp)
    mul     a1,a7,a0
    sw      a2,728(sp)
    add     a2,a1,a0
    sw      a0,724(sp)
    add     a0,a2,s6
    sw      a0,712(sp)
    li      a0, -65
    sw      a1,720(sp)
    sw      a2,716(sp)
    mul     a2,a0,a1
    sw      a1,2100(sp)
    add     a1,a2,a0
    sw      a0,712(sp)
    li      a0, -117
    sw      a1,704(sp)
    sw      a2,708(sp)
    mul     a2,a0,a1
    sw      a1,2076(sp)
    add     a1,a2,a0
    sw      a0,704(sp)
    sw      a2,700(sp)
    add     a2,a0,a1
    sw      a0,1020(sp)
    li      a0, 12
    sw      a1,696(sp)
    sw      a2,692(sp)
    mul     a2,a0,a1
    sw      a1,2028(sp)
    add     a1,a2,a0
    sw      a0,692(sp)
    li      a0, -30
    sw      a1,684(sp)
    sw      a2,688(sp)
    mul     a2,a0,a1
    sw      a1,2004(sp)
    add     a1,a2,a0
    sw      a0,684(sp)
    sw      a1,676(sp)
    li      a1, 85
    sw      a2,680(sp)
    mul     a2,a0,a1
    sw      a0,1980(sp)
    add     a0,a2,a1
    sw      a0,668(sp)
    li      a0, 72
    sw      a1,676(sp)
    sw      a2,672(sp)
    mul     a2,a0,a1
    sw      a1,1956(sp)
    add     a1,a2,a0
    sw      a0,668(sp)
    sw      a1,660(sp)
    li      a1, 50
    sw      a2,664(sp)
    mul     a2,a0,a1
    sw      a0,1932(sp)
    add     a0,a2,a1
    sw      a0,652(sp)
    li      a0, 49
    sw      a1,660(sp)
    sw      a2,656(sp)
    mul     a2,a0,a1
    sw      a1,1908(sp)
    add     a1,a2,a0
    sw      a0,652(sp)
    sw      a1,644(sp)
    li      a1, -63
    sw      a2,648(sp)
    mul     a2,a0,a1
    sw      a0,1884(sp)
    add     a0,a2,a1
    sw      a0,636(sp)
    li      a0, -23
    sw      a1,644(sp)
    sw      a2,640(sp)
    mul     a2,a0,a1
    sw      a1,1860(sp)
    add     a1,a2,a0
    sw      s1,824(sp)
    sw      s2,1024(sp)
    sw      s3,820(sp)
    sw      s4,2124(sp)
    sw      s5,804(sp)
    sw      s6,816(sp)
    sw      s7,2364(sp)
    sw      s8,2404(sp)
    sw      s9,812(sp)
    sw      s10,796(sp)
    sw      s11,2388(sp)
    sw      a1,628(sp)
    sw      a0,636(sp)
    call    relu_reg
    sw      a0,624(sp)
    li      a1, -106
    mul     s1,a0,a1
    add     s3,s1,s2
    li      s4, 94
    mul     s6,s4,s5
    li      s7, -6
    mul     s9,s7,s8
    add     s10,s9,s6
    li      a1, -39
    mul     s4,s11,a1
    add     a1,s4,s10
    li      s7, 120
    sw      a0,624(sp)
    sw      a1,596(sp)
    mul     a1,s7,a0
    sw      a0,2340(sp)
    add     a0,a1,s7
    sw      a0,588(sp)
    sw      a1,592(sp)
    sw      a2,632(sp)
    add     a2,a0,a1
    sw      a0,1628(sp)
    li      a0, -99
    sw      a1,588(sp)
    sw      a2,584(sp)
    mul     a2,a0,a1
    sw      a1,2292(sp)
    add     a1,a2,a0
    sw      a0,584(sp)
    li      a0, -63
    sw      a1,576(sp)
    sw      a2,580(sp)
    mul     a2,a0,a1
    sw      a1,2268(sp)
    add     a1,a2,a0
    sw      a0,576(sp)
    sw      a1,568(sp)
    li      a1, 39
    sw      a2,572(sp)
    mul     a2,a0,a1
    sw      a0,2244(sp)
    add     a0,a2,a1
    sw      a0,560(sp)
    li      a0, 116
    sw      a1,568(sp)
    sw      a2,564(sp)
    mul     a2,a0,a1
    sw      a1,2220(sp)
    add     a1,a2,a0
    sw      a0,560(sp)
    sw      a1,552(sp)
    li      a1, 110
    sw      a2,556(sp)
    mul     a2,a0,a1
    sw      a0,2196(sp)
    add     a0,a2,a1
    sw      a0,544(sp)
    li      a0, 27
    sw      a1,552(sp)
    sw      a2,548(sp)
    mul     a2,a0,a1
    sw      a1,2172(sp)
    add     a1,a2,a0
    sw      a0,544(sp)
    li      a0, -38
    sw      a1,536(sp)
    sw      a2,540(sp)
    mul     a2,a0,a1
    sw      a1,2148(sp)
    add     a1,a2,a0
    sw      a0,536(sp)
    li      a0, 6
    sw      a1,528(sp)
    mul     a1,a0,a7
    sw      a2,532(sp)
    add     a2,a1,a0
    sw      a0,528(sp)
    li      a0, 102
    sw      a1,524(sp)
    sw      a2,520(sp)
    mul     a2,a0,a1
    sw      a1,2124(sp)
    add     a1,a2,a0
    sw      a0,520(sp)
    li      a0, -34
    sw      a1,512(sp)
    sw      a2,516(sp)
    mul     a2,a0,a1
    sw      a1,2100(sp)
    add     a1,a2,a0
    sw      a0,512(sp)
    sw      a1,504(sp)
    li      a1, 34
    sw      a2,508(sp)
    mul     a2,a0,a1
    sw      a0,2076(sp)
    add     a0,a2,a1
    sw      a0,496(sp)
    li      a0, -5
    sw      a1,504(sp)
    sw      a2,500(sp)
    mul     a2,a0,a1
    sw      a1,2052(sp)
    add     a1,a2,a0
    sw      a0,496(sp)
    li      a0, -68
    sw      a1,488(sp)
    sw      a2,492(sp)
    mul     a2,a0,a1
    sw      a1,2028(sp)
    add     a1,a2,a0
    sw      a0,488(sp)
    li      a0, 52
    sw      a1,480(sp)
    sw      a2,484(sp)
    mul     a2,a0,a1
    sw      a1,2004(sp)
    add     a1,a2,a0
    sw      a0,480(sp)
    li      a0, 96
    sw      a1,472(sp)
    sw      a2,476(sp)
    mul     a2,a0,a1
    sw      a1,1980(sp)
    add     a1,a2,a0
    sw      a0,472(sp)
    li      a0, -95
    sw      a1,464(sp)
    sw      a2,468(sp)
    mul     a2,a0,a1
    sw      a1,1956(sp)
    add     a1,a2,a0
    sw      a0,464(sp)
    sw      a1,456(sp)
    li      a1, 29
    sw      a2,460(sp)
    mul     a2,a0,a1
    sw      a0,1932(sp)
    add     a0,a2,a1
    sw      a0,448(sp)
    sw      a1,456(sp)
    sw      a2,452(sp)
    add     a2,a0,a1
    sw      a0,1840(sp)
    li      a0, 76
    sw      a1,448(sp)
    sw      a2,444(sp)
    mul     a2,a0,a1
    sw      a1,1884(sp)
    add     a1,a2,a0
    sw      a0,444(sp)
    li      a0, 26
    sw      a1,436(sp)
    sw      a2,440(sp)
    mul     a2,a0,a1
    sw      a1,1860(sp)
    add     a1,a2,a0
    sw      s1,620(sp)
    sw      s2,820(sp)
    sw      s3,616(sp)
    sw      s4,600(sp)
    sw      s5,2404(sp)
    sw      s6,612(sp)
    sw      s7,596(sp)
    sw      s8,2388(sp)
    sw      s9,608(sp)
    sw      s10,604(sp)
    sw      s11,2364(sp)
    sw      a1,428(sp)
    sw      a0,436(sp)
    call    relu_reg
    sw      a0,424(sp)
    li      a1, 127
    mul     s1,a0,a1
    add     s3,s1,s2
    li      s4, -125
    mul     s6,s4,s5
    li      s8, -75
    mul     s9,s7,s8
    add     s10,s9,s6
    li      s11, -22
    mul     s4,s11,a1
    add     s8,s4,s10
    li      s11, -100
    sw      a0,424(sp)
    sw      a1,2364(sp)
    mul     a1,s11,a0
    add     s11,a1,s8
    sw      a0,2340(sp)
    li      a0, -110
    sw      a1,392(sp)
    sw      a2,432(sp)
    mul     a2,a0,a1
    add     a0,a2,s11
    sw      a0,380(sp)
    sw      a1,2316(sp)
    li      a1, -31
    sw      a2,384(sp)
    mul     a2,a0,a1
    sw      a0,2292(sp)
    add     a0,a2,a1
    sw      a0,372(sp)
    sw      a1,380(sp)
    li      a1, -106
    sw      a2,376(sp)
    mul     a2,a0,a1
    sw      a0,2268(sp)
    add     a0,a2,a1
    sw      a0,364(sp)
    li      a0, 29
    sw      a1,372(sp)
    sw      a2,368(sp)
    mul     a2,a0,a1
    sw      a1,2244(sp)
    add     a1,a2,a0
    sw      a0,364(sp)
    li      a0, 87
    sw      a1,356(sp)
    sw      a2,360(sp)
    mul     a2,a0,a1
    sw      a1,2220(sp)
    add     a1,a2,a0
    sw      a0,356(sp)
    li      a0, -42
    sw      a1,348(sp)
    sw      a2,352(sp)
    mul     a2,a0,a1
    sw      a1,2196(sp)
    add     a1,a2,a0
    sw      a0,348(sp)
    li      a0, 105
    sw      a1,340(sp)
    sw      a2,344(sp)
    mul     a2,a0,a1
    sw      a1,2172(sp)
    add     a1,a2,a0
    sw      a0,340(sp)
    li      a0, -43
    sw      a1,332(sp)
    sw      a2,336(sp)
    mul     a2,a0,a1
    sw      a1,2148(sp)
    add     a1,a2,a0
    sw      a0,332(sp)
    li      a0, -60
    sw      a1,324(sp)
    mul     a1,a0,a7
    sw      a2,328(sp)
    add     a2,a1,a0
    sw      a0,324(sp)
    li      a0, -21
    sw      a1,320(sp)
    sw      a2,316(sp)
    mul     a2,a0,a1
    sw      a1,2124(sp)
    add     a1,a2,a0
    sw      a0,316(sp)
    li      a0, 7
    sw      a1,308(sp)
    sw      a2,312(sp)
    mul     a2,a0,a1
    sw      a1,2100(sp)
    add     a1,a2,a0
    sw      a0,308(sp)
    li      a0, -121
    sw      a1,300(sp)
    sw      a2,304(sp)
    mul     a2,a0,a1
    sw      a1,2076(sp)
    add     a1,a2,a0
    sw      a0,300(sp)
    li      a0, -94
    sw      a1,292(sp)
    sw      a2,296(sp)
    mul     a2,a0,a1
    sw      a1,2052(sp)
    add     a1,a2,a0
    sw      a0,292(sp)
    li      a0, 67
    sw      a1,284(sp)
    sw      a2,288(sp)
    mul     a2,a0,a1
    sw      a1,2028(sp)
    add     a1,a2,a0
    sw      a0,284(sp)
    sw      a1,276(sp)
    li      a1, -4
    sw      a2,280(sp)
    mul     a2,a0,a1
    sw      a0,2004(sp)
    add     a0,a2,a1
    sw      a0,268(sp)
    sw      a1,276(sp)
    li      a1, 47
    sw      a2,272(sp)
    mul     a2,a0,a1
    sw      a0,1980(sp)
    add     a0,a2,a1
    sw      a0,260(sp)
    li      a0, -8
    sw      a1,268(sp)
    sw      a2,264(sp)
    mul     a2,a0,a1
    sw      a1,1956(sp)
    add     a1,a2,a0
    sw      a0,260(sp)
    li      a0, -31
    sw      a1,252(sp)
    sw      a2,256(sp)
    mul     a2,a0,a1
    sw      a1,1932(sp)
    add     a1,a2,a0
    sw      a0,252(sp)
    li      a0, -18
    sw      a1,244(sp)
    sw      a2,248(sp)
    mul     a2,a0,a1
    sw      a1,1908(sp)
    add     a1,a2,a0
    sw      a0,244(sp)
    li      a0, 126
    sw      a1,236(sp)
    sw      a2,240(sp)
    mul     a2,a0,a1
    sw      a1,1884(sp)
    add     a1,a2,a0
    sw      a0,236(sp)
    sw      a1,228(sp)
    li      a1, -106
    sw      a2,232(sp)
    mul     a2,a0,a1
    sw      a0,1860(sp)
    add     a0,a2,a1
    sw      s1,420(sp)
    sw      s2,616(sp)
    sw      s3,416(sp)
    sw      s4,400(sp)
    sw      s5,2404(sp)
    sw      s6,412(sp)
    sw      s7,2388(sp)
    sw      s8,396(sp)
    sw      s9,408(sp)
    sw      s10,404(sp)
    sw      s11,388(sp)
    sw      a0,220(sp)
    call    relu_reg
    sw      a0,216(sp)
    li      s1, 77
    mul     s2,a0,s1
    add     s4,s2,s3
    li      s6, 46
    mul     s7,s5,s6
    li      s9, 80
    mul     s10,s8,s9
    add     s11,s10,s7
    li      s6, -4
    mul     s9,s1,s6
    add     s6,s9,s11
    sw      a0,216(sp)
    sw      a1,228(sp)
    li      a1, 47
    sw      a2,224(sp)
    mul     a2,a0,a1
    add     a1,a2,s6
    sw      a0,2340(sp)
    sw      a1,180(sp)
    li      a1, 110
    sw      a2,184(sp)
    mul     a2,a0,a1
    sw      a0,2316(sp)
    add     a0,a2,a1
    sw      a0,172(sp)
    sw      a1,180(sp)
    li      a1, 113
    sw      a2,176(sp)
    mul     a2,a0,a1
    sw      a0,2292(sp)
    add     a0,a2,a1
    sw      a0,164(sp)
    sw      a1,172(sp)
    li      a1, 47
    sw      a2,168(sp)
    mul     a2,a0,a1
    sw      a0,2268(sp)
    add     a0,a2,a1
    sw      a0,156(sp)
    sw      a1,164(sp)
    li      a1, 65
    sw      a2,160(sp)
    mul     a2,a0,a1
    sw      a0,2244(sp)
    add     a0,a2,a1
    sw      a0,148(sp)
    sw      a1,156(sp)
    li      a1, -39
    sw      a2,152(sp)
    mul     a2,a0,a1
    sw      a0,2220(sp)
    add     a0,a2,a1
    sw      a0,140(sp)
    sw      a1,148(sp)
    li      a1, 34
    sw      a2,144(sp)
    mul     a2,a0,a1
    sw      a0,2196(sp)
    add     a0,a2,a1
    sw      a0,132(sp)
    sw      a1,140(sp)
    li      a1, -102
    sw      a2,136(sp)
    mul     a2,a0,a1
    sw      a0,2172(sp)
    add     a0,a2,a1
    sw      a0,124(sp)
    sw      a1,132(sp)
    li      a1, -75
    sw      a2,128(sp)
    mul     a2,a0,a1
    sw      a0,2148(sp)
    add     a0,a2,a1
    sw      a0,116(sp)
    li      a0, -106
    sw      a1,124(sp)
    mul     a1,a7,a0
    sw      a2,120(sp)
    add     a2,a1,a0
    sw      a0,116(sp)
    sw      a1,112(sp)
    add     a1,a0,a2
    sw      a0,816(sp)
    sw      a1,104(sp)
    li      a1, -111
    sw      a2,108(sp)
    mul     a2,a0,a1
    sw      a0,2100(sp)
    add     a0,a2,a1
    sw      a0,96(sp)
    sw      a1,104(sp)
    li      a1, 47
    sw      a2,100(sp)
    mul     a2,a0,a1
    sw      a0,2076(sp)
    add     a0,a2,a1
    sw      a0,88(sp)
    sw      a1,96(sp)
    li      a1, -59
    sw      a2,92(sp)
    mul     a2,a0,a1
    sw      a0,2052(sp)
    add     a0,a2,a1
    sw      a0,80(sp)
    sw      a1,88(sp)
    li      a1, 50
    sw      a2,84(sp)
    mul     a2,a0,a1
    sw      a0,2028(sp)
    add     a0,a2,a1
    sw      a0,72(sp)
    sw      a1,80(sp)
    li      a1, -120
    sw      a2,76(sp)
    mul     a2,a0,a1
    sw      a0,2004(sp)
    add     a0,a2,a1
    sw      a0,64(sp)
    sw      a1,72(sp)
    li      a1, 64
    sw      a2,68(sp)
    mul     a2,a0,a1
    sw      a0,1980(sp)
    add     a0,a2,a1
    sw      a0,56(sp)
    sw      a1,64(sp)
    li      a1, -123
    sw      a2,60(sp)
    mul     a2,a0,a1
    sw      a0,1956(sp)
    add     a0,a2,a1
    sw      a0,48(sp)
    sw      a1,56(sp)
    li      a1, -103
    sw      a2,52(sp)
    mul     a2,a0,a1
    sw      a0,1932(sp)
    add     a0,a2,a1
    sw      a0,40(sp)
    sw      a1,48(sp)
    li      a1, -82
    sw      a2,44(sp)
    mul     a2,a0,a1
    sw      a0,1908(sp)
    add     a0,a2,a1
    sw      a0,32(sp)
    sw      a1,40(sp)
    li      a1, 23
    sw      a2,36(sp)
    mul     a2,a0,a1
    sw      a0,1884(sp)
    add     a0,a2,a1
    sw      a0,24(sp)
    sw      a1,32(sp)
    li      a1, 85
    sw      a2,28(sp)
    mul     a2,a0,a1
    sw      a0,1860(sp)
    add     a0,a2,a1
    sw      s1,2364(sp)
    sw      s2,212(sp)
    sw      s3,416(sp)
    sw      s4,208(sp)
    sw      s5,2404(sp)
    sw      s6,188(sp)
    sw      s7,204(sp)
    sw      s8,2388(sp)
    sw      s9,192(sp)
    sw      s10,200(sp)
    sw      s11,196(sp)
    sw      a0,16(sp)
    call    relu_reg
    sw      a0,12(sp)
    li      s1, 39
    mul     s2,a0,s1
    add     s4,s2,s3
    li      s5, 0
    slt     s6,s5,s4
    bnez    s6, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    li      s7, 2448
    add     s7,sp,s7
    ld      ra,0(s7)
    li      s8, 2440
    add     s8,sp,s8
    ld      s0,0(s8)
    li      a0, 1
    li      s9, 2456
    li      s9, 2456
    add     sp,s9,sp
    ret
.branch_false_30:
.L4_0:
    mv      ra, s7
    mv      s0, s8
    li      a0, 0
    li      s9, 2456
    add     sp,s9,sp
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-176
    sd      ra,168(sp)
    sd      s0,160(sp)
    addi    s0,sp,176
.L0_0:
    call    getint
    sw      a0,156(sp)
    mv      a1, a0
    j       .while.head_38
.while.head_38:
    li      a2, 0
    slt     a3,a2,a1
    bnez    a3, .while.body_38
    j       .while.exit_38
.while.body_38:
    li      a4, 0
    j       .while.head_42
.while.head_42:
    li      a5, 5
    slt     a6,a4,a5
    bnez    a6, .while.body_42
    j       .while.exit_42
.while.body_42:
    li      a7, 0
    j       .while.head_46
.while.head_46:
    slt     s1,a7,a5
    bnez    s1, .while.body_46
    j       .while.exit_46
.while.body_46:
    li      s2, 0
    mul     s3,a5,a4
    add     s2,s2,s3
    li      s4, 1
    add     s2,s2,s3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    sb      s1,35(sp)
    sd      s2,24(sp)
    sw      s3,148(sp)
    call    getint
    sw      a0,156(sp)
    sw      a0,20(sp)
    sd      a0,0(s1)
    li      s2, 1
    add     s3,a7,s2
    j       .while.head_46
.while.exit_46:
    add     s4,a4,s2
    j       .while.head_42
.while.exit_42:
    sd      s1,24(sp)
    sw      s3,16(sp)
    sw      s4,12(sp)
    sw      a0,20(sp)
    call    model
    sw      a0,8(sp)
    xor     s1,a0,a2
    snez    s1, s1
    bnez    s1, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    sb      s1,7(sp)
    sw      a0,8(sp)
    li      a0, 99
    call    putch
    li      a0, 97
    call    putch
    li      a0, 116
    call    putch
    li      a0, 10
    call    putch
    j       .L1_0
.branch_false_52:
    li      a0, 100
    call    putch
    li      a0, 111
    call    putch
    li      a0, 103
    call    putch
    li      a0, 10
    call    putch
    j       .L1_0
.L1_0:
.L2_0:
    li      a0, 1
    sub     s1,a1,a0
    j       .while.head_38
.while.exit_38:
    ld      ra,168(sp)
    ld      s0,160(sp)
    li      a0, 0
    addi    sp,sp,176
    ret
