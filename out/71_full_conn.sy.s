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
    sw      a0,4(sp)
    li      a0, 0x7F
    addi    sp,sp,24
    ret
.branch_false_20:
.L6_0:
    li      a1, 0
    slt     a3,a0,a1
    bnez    a3, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
.branch_false_23:
.L7_0:
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,24
    ret
    .globl model
    .type model,@function
model:
    li      a1, -2376
    li      a1, -2376
    add     sp,a1,sp
    li      a2, 2368
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 2360
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 2376
    li      a4, 2376
    add     s0,a4,sp
.L3_0:
    li      a1, 0
    li      a2, 1
    li      a3, 4
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,a0
    lw      a5,0(a1)
    li      a6, 85
    mul     a7,a5,a6
    li      s1, 0
    mul     s2,a2,a3
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,a0
    lw      s3,0(s1)
    li      s4, -49
    mul     s5,s3,s4
    li      s6, 0
    mul     s7,a2,a3
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,a0
    lw      s8,0(s6)
    li      s9, 36
    mul     s10,s8,s9
    li      s11, 0
    mul     a4,a2,a3
    add     s11,s11,a4
    slli s11,s11,2
    add     s11,s11,a0
    lw      a2,0(s11)
    li      a3, -121
    mul     a4,a2,a3
    li      a3, 0
    li      a6, 1
    li      s2, 4
    mul     s4,a6,s2
    add     a3,a3,s4
    slli a3,a3,2
    add     a3,a3,a0
    lw      a6,0(a3)
    li      s2, 115
    mul     s4,a6,s2
    li      s2, 0
    li      s7, 1
    li      s9, 3
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,s7,s9
    add     s2,s2,a0
    slli s2,s2,2
    li      s7, 2352
    add     s7,sp,s7
    ld      a0,0(s7)
    add     s2,s2,a0
    lw      s7,0(s2)
    li      s9, 29
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,s7,s9
    li      s9, 0
    li      a0, 2256
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2344
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 3
    li      a2, 2292
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    add     s9,s9,a2
    slli s9,s9,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     s9,s9,a0
    lw      a1,0(s9)
    li      a2, 38
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
    li      a2, 0
    li      a0, 2240
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2244
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3
    li      a3, 2280
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a2,a2,a0
    lw      a1,0(a2)
    li      a3, -68
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a3
    li      a3, 0
    li      a0, 2224
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2228
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3
    li      a2, 2232
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a3,a3,a0
    lw      a1,0(a3)
    li      a2, 22
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
    li      a2, 0
    li      a0, 2208
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2212
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3
    li      a3, 2216
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a2,a2,a0
    lw      a1,0(a2)
    li      a3, 47
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a3
    li      a3, 0
    li      a0, 2192
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2196
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2
    li      a2, 2200
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a3,a3,a0
    lw      a1,0(a3)
    li      a2, 67
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
    li      a2, 0
    li      a0, 2176
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2180
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2
    li      a3, 2184
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a2,a2,a0
    lw      a1,0(a2)
    li      a3, -122
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a3
    li      a3, 0
    li      a0, 2160
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2164
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2
    li      a2, 2168
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a3,a3,a0
    lw      a1,0(a3)
    li      a2, -7
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
    li      a2, 0
    li      a0, 2144
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2
    li      a3, 2152
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a2,a2,a0
    lw      a1,0(a2)
    li      a3, -74
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a3
    li      a3, 0
    li      a0, 2128
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2132
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2
    li      a2, 2136
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a3,a3,a0
    lw      a1,0(a3)
    li      a2, 109
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
    li      a2, 0
    li      a0, 2112
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 2120
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a2,a2,a0
    lw      a1,0(a2)
    li      a3, -51
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a3
    li      a3, 0
    li      a0, 2096
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2100
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2104
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a3,a3,a0
    lw      a1,0(a3)
    li      a2, 96
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
    li      a2, 0
    li      a0, 2080
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2084
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 2088
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a2,a2,a0
    lw      a1,0(a2)
    li      a3, 75
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a3
    li      a3, 0
    li      a0, 2064
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2068
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2072
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a3,a3,a0
    lw      a1,0(a3)
    li      a2, -77
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
    li      a2, 0
    li      a0, 2048
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2052
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 2056
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a2,a2,a0
    lw      a1,0(a2)
    li      a3, 10
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a3
    li      a3, 0
    li      a0, 2032
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2036
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a2, 2040
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a3,a3,a0
    lw      a1,0(a3)
    li      a2, -92
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
    li      a2, 0
    li      a0, 2016
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2020
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a3, 2024
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a2,a2,a0
    lw      a1,0(a2)
    li      a3, -123
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a3
    li      a3, 0
    sw      a0,2000(sp)
    li      a0, 1
    li      a1, 2004
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a2, 2008
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a3,a3,a0
    lw      a1,0(a3)
    li      a2, 41
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
    li      a2, 0
    sw      a0,1984(sp)
    li      a0, 1
    sw      a1,1988(sp)
    li      a1, 0
    sd      a3,1992(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a2,a2,a0
    lw      a1,0(a2)
    li      a3, 42
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a3
    li      a3, 0
    sw      a0,1968(sp)
    li      a0, 1
    sw      a1,1972(sp)
    li      a1, 0
    sd      a2,1976(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    li      a1, 2352
    add     a1,sp,a1
    ld      a0,0(a1)
    add     a3,a3,a0
    lw      a1,0(a3)
    li      a2, 67
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
    lw      a2,1968(sp)
    sw      a1,1956(sp)
    add     a1,a0,a2
    sw      a0,1952(sp)
    lw      a0,1984(sp)
    sw      a2,1968(sp)
    add     a2,a1,a0
    sw      a0,1984(sp)
    lw      a0,2000(sp)
    sw      a1,1948(sp)
    add     a1,a2,a0
    sw      a0,2000(sp)
    sw      a2,1944(sp)
    li      a2, 2016
    add     a2,sp,a2
    lw      a0,0(a2)
    add     a2,a1,a0
    li      a0, 2016
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,1940(sp)
    li      a1, 2032
    add     a1,sp,a1
    lw      a0,0(a1)
    add     a1,a2,a0
    li      a0, 2032
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a2,1936(sp)
    li      a2, 2048
    add     a2,sp,a2
    lw      a0,0(a2)
    add     a2,a1,a0
    li      a0, 2048
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,1932(sp)
    li      a1, 2064
    add     a1,sp,a1
    lw      a0,0(a1)
    add     a1,a2,a0
    li      a0, 2064
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a2,1928(sp)
    li      a2, 2080
    add     a2,sp,a2
    lw      a0,0(a2)
    add     a2,a1,a0
    li      a0, 2080
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,1924(sp)
    li      a1, 2096
    add     a1,sp,a1
    lw      a0,0(a1)
    add     a1,a2,a0
    li      a0, 2096
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a2,1920(sp)
    li      a2, 2112
    add     a2,sp,a2
    lw      a0,0(a2)
    add     a2,a1,a0
    li      a0, 2112
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,1916(sp)
    li      a1, 2128
    add     a1,sp,a1
    lw      a0,0(a1)
    add     a1,a2,a0
    li      a0, 2128
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a2,1912(sp)
    li      a2, 2144
    add     a2,sp,a2
    lw      a0,0(a2)
    add     a2,a1,a0
    li      a0, 2144
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,1908(sp)
    li      a1, 2160
    add     a1,sp,a1
    lw      a0,0(a1)
    add     a1,a2,a0
    li      a0, 2160
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a2,1904(sp)
    li      a2, 2176
    add     a2,sp,a2
    lw      a0,0(a2)
    add     a2,a1,a0
    li      a0, 2176
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,1900(sp)
    li      a1, 2192
    add     a1,sp,a1
    lw      a0,0(a1)
    add     a1,a2,a0
    li      a0, 2192
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a2,1896(sp)
    li      a2, 2208
    add     a2,sp,a2
    lw      a0,0(a2)
    add     a2,a1,a0
    li      a0, 2208
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,1892(sp)
    li      a1, 2224
    add     a1,sp,a1
    lw      a0,0(a1)
    add     a1,a2,a0
    li      a0, 2224
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a2,1888(sp)
    li      a2, 2240
    add     a2,sp,a2
    lw      a0,0(a2)
    add     a2,a1,a0
    li      a0, 2240
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,1884(sp)
    li      a1, 2256
    add     a1,sp,a1
    lw      a0,0(a1)
    add     a1,a2,a0
    li      a0, 2256
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a1,s4
    sw      a1,1876(sp)
    add     a1,a0,a4
    sw      a0,1872(sp)
    add     a0,a1,s10
    sw      a1,1868(sp)
    add     a1,a0,s5
    sw      a0,1864(sp)
    add     a0,a1,a7
    li      s1, 2328
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s1, 2264
    add     s1,sp,s1
    sd      s2,0(s1)
    li      s2, 2324
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 2272
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 2320
    add     s4,sp,s4
    sw      s5,0(s4)
    li      s5, 2312
    add     s5,sp,s5
    sd      s6,0(s5)
    li      s6, 2260
    add     s6,sp,s6
    sw      s7,0(s6)
    li      s7, 2308
    add     s7,sp,s7
    sw      s8,0(s7)
    li      s8, 2248
    add     s8,sp,s8
    sd      s9,0(s8)
    li      s9, 2304
    add     s9,sp,s9
    sw      s10,0(s9)
    li      s10, 2296
    add     s10,sp,s10
    sd      s11,0(s10)
    sw      a0,1856(sp)
    sw      a1,1860(sp)
    sw      a2,1880(sp)
    sd      a3,1960(sp)
    li      a0, 2288
    add     a0,sp,a0
    sw      a4,0(a0)
    li      a1, 2340
    add     a1,sp,a1
    sw      a5,0(a1)
    li      a2, 2276
    add     a2,sp,a2
    sw      a6,0(a2)
    li      a3, 2336
    add     a3,sp,a3
    sw      a7,0(a3)
    lw      a0,1856(sp)
    call    relu_reg
    sw      a0,1852(sp)
    li      a4, 46
    mul     a5,a0,a4
    add     a1,sp,a1
    lw      a6,0(a1)
    li      a7, -114
    mul     s11,a6,a7
    add     s2,sp,s2
    lw      a1,0(s2)
    li      a2, -13
    mul     a3,a1,a2
    add     s7,sp,s7
    lw      a2,0(s7)
    li      a4, -103
    mul     a7,a2,a4
    li      s1, 2292
    add     s1,sp,s1
    lw      a4,0(s1)
    li      s1, 37
    mul     s2,a4,s1
    li      s3, 2276
    add     s3,sp,s3
    lw      s1,0(s3)
    li      s3, 53
    mul     s4,s1,s3
    add     s6,sp,s6
    lw      s3,0(s6)
    li      s5, -77
    mul     s6,s3,s5
    li      s7, 2244
    add     s7,sp,s7
    lw      s5,0(s7)
    li      s7, 71
    mul     s8,s5,s7
    li      s9, 2228
    add     s9,sp,s9
    lw      s7,0(s9)
    li      s9, -75
    mul     s10,s7,s9
    sw      a0,1852(sp)
    li      a0, 2212
    add     a0,sp,a0
    lw      s9,0(a0)
    li      a0, -87
    li      a1, 2324
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,s9,a0
    sw      a1,1812(sp)
    li      a1, 2196
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -34
    li      a2, 2308
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2180
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -73
    sw      a2,1808(sp)
    mul     a2,a1,a0
    li      a1, 2180
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2164
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 37
    sw      a2,1804(sp)
    mul     a2,a0,a1
    li      a0, 2164
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2148
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -70
    sw      a2,1800(sp)
    mul     a2,a1,a0
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2132
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -46
    sw      a2,1796(sp)
    mul     a2,a0,a1
    li      a0, 2132
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2116
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -125
    sw      a2,1792(sp)
    mul     a2,a1,a0
    li      a1, 2116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2100
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -62
    sw      a2,1788(sp)
    mul     a2,a0,a1
    li      a0, 2100
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2084
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 36
    sw      a2,1784(sp)
    mul     a2,a1,a0
    li      a1, 2084
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2068
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 37
    sw      a2,1780(sp)
    mul     a2,a0,a1
    li      a0, 2068
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2052
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -32
    sw      a2,1776(sp)
    mul     a2,a1,a0
    li      a1, 2052
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2036
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -15
    sw      a2,1772(sp)
    mul     a2,a0,a1
    li      a0, 2036
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2020
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -90
    sw      a2,1768(sp)
    mul     a2,a1,a0
    li      a1, 2020
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2004
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 38
    sw      a2,1764(sp)
    mul     a2,a0,a1
    lw      a1,1988(sp)
    li      a0, 2004
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, -70
    sw      a2,1760(sp)
    mul     a2,a1,a0
    lw      a0,1972(sp)
    sw      a1,1988(sp)
    li      a1, 7
    sw      a2,1756(sp)
    mul     a2,a0,a1
    lw      a1,1956(sp)
    sw      a0,1972(sp)
    li      a0, -29
    sw      a2,1752(sp)
    mul     a2,a1,a0
    lw      a0,1752(sp)
    sw      a1,1956(sp)
    add     a1,a2,a0
    sw      a0,1752(sp)
    lw      a0,1756(sp)
    sw      a2,1748(sp)
    add     a2,a1,a0
    sw      a0,1756(sp)
    lw      a0,1760(sp)
    sw      a1,1744(sp)
    add     a1,a2,a0
    sw      a0,1760(sp)
    lw      a0,1764(sp)
    sw      a2,1740(sp)
    add     a2,a1,a0
    sw      a0,1764(sp)
    lw      a0,1768(sp)
    sw      a1,1736(sp)
    add     a1,a2,a0
    sw      a0,1768(sp)
    lw      a0,1772(sp)
    sw      a2,1732(sp)
    add     a2,a1,a0
    sw      a0,1772(sp)
    lw      a0,1776(sp)
    sw      a1,1728(sp)
    add     a1,a2,a0
    sw      a0,1776(sp)
    lw      a0,1780(sp)
    sw      a2,1724(sp)
    add     a2,a1,a0
    sw      a0,1780(sp)
    lw      a0,1784(sp)
    sw      a1,1720(sp)
    add     a1,a2,a0
    sw      a0,1784(sp)
    lw      a0,1788(sp)
    sw      a2,1716(sp)
    add     a2,a1,a0
    sw      a0,1788(sp)
    lw      a0,1792(sp)
    sw      a1,1712(sp)
    add     a1,a2,a0
    sw      a0,1792(sp)
    lw      a0,1796(sp)
    sw      a2,1708(sp)
    add     a2,a1,a0
    sw      a0,1796(sp)
    lw      a0,1800(sp)
    sw      a1,1704(sp)
    add     a1,a2,a0
    sw      a0,1800(sp)
    lw      a0,1804(sp)
    sw      a2,1700(sp)
    add     a2,a1,a0
    sw      a0,1804(sp)
    lw      a0,1808(sp)
    sw      a1,1696(sp)
    add     a1,a2,a0
    sw      a0,1808(sp)
    lw      a0,1812(sp)
    sw      a2,1692(sp)
    add     a2,a1,a0
    sw      a0,1812(sp)
    add     a0,a2,s10
    sw      a1,1688(sp)
    add     a1,a0,s8
    sw      a0,1680(sp)
    add     a0,a1,s6
    sw      a1,1676(sp)
    add     a1,a0,s4
    sw      a0,1672(sp)
    add     a0,a1,s2
    sw      a1,1668(sp)
    add     a1,a0,a7
    sw      a0,1664(sp)
    add     a0,a1,a3
    sw      a1,1660(sp)
    add     a1,a0,s11
    li      s1, 2276
    add     s1,sp,s1
    sw      s1,0(s1)
    sw      s2,1832(sp)
    li      s1, 2260
    add     s1,sp,s1
    sw      s3,0(s1)
    sw      s4,1828(sp)
    li      s2, 2244
    add     s2,sp,s2
    sw      s5,0(s2)
    sw      s6,1824(sp)
    li      s3, 2228
    add     s3,sp,s3
    sw      s7,0(s3)
    sw      s8,1820(sp)
    li      s4, 2212
    add     s4,sp,s4
    sw      s9,0(s4)
    sw      s10,1816(sp)
    sw      s11,1844(sp)
    sw      a0,1656(sp)
    sw      a1,1652(sp)
    sw      a2,1684(sp)
    sw      a3,1840(sp)
    li      a0, 2292
    add     a0,sp,a0
    sw      a4,0(a0)
    sw      a5,1848(sp)
    li      a1, 2340
    add     a1,sp,a1
    sw      a6,0(a1)
    sw      a7,1836(sp)
    lw      a0,1652(sp)
    call    relu_reg
    sw      a0,1648(sp)
    li      a2, -23
    mul     a3,a0,a2
    add     a1,sp,a1
    lw      a4,0(a1)
    li      a5, -84
    mul     a6,a4,a5
    li      s5, 2324
    add     s5,sp,s5
    lw      a7,0(s5)
    li      s6, 46
    mul     s7,a7,s6
    li      s9, 2308
    add     s9,sp,s9
    lw      s8,0(s9)
    li      s10, 83
    mul     s11,s8,s10
    li      a2, 2292
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a2, 97
    mul     a5,a1,a2
    li      s1, 2276
    add     s1,sp,s1
    lw      a2,0(s1)
    li      s1, 65
    mul     s2,a2,s1
    li      s3, 2260
    add     s3,sp,s3
    lw      s1,0(s3)
    li      s3, -121
    mul     s4,s1,s3
    li      s5, 2244
    add     s5,sp,s5
    lw      s3,0(s5)
    li      s5, -104
    mul     s6,s3,s5
    li      s9, 2228
    add     s9,sp,s9
    lw      s5,0(s9)
    li      s9, -96
    mul     s10,s5,s9
    sw      a0,1648(sp)
    li      a0, 2212
    add     a0,sp,a0
    lw      s9,0(a0)
    li      a0, 82
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,s9,a0
    sw      a1,1608(sp)
    li      a1, 2196
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 24
    li      a2, 2276
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2180
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 107
    sw      a2,1604(sp)
    mul     a2,a1,a0
    li      a1, 2180
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2164
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 71
    sw      a2,1600(sp)
    mul     a2,a0,a1
    li      a0, 2164
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2132
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -119
    sw      a2,1596(sp)
    mul     a2,a1,a0
    li      a1, 2132
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2116
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 104
    sw      a2,1592(sp)
    mul     a2,a0,a1
    li      a0, 2116
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2100
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 5
    sw      a2,1588(sp)
    mul     a2,a1,a0
    li      a1, 2100
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2084
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 18
    sw      a2,1584(sp)
    mul     a2,a0,a1
    li      a0, 2084
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2068
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -13
    sw      a2,1580(sp)
    mul     a2,a1,a0
    li      a1, 2068
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2052
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 120
    sw      a2,1576(sp)
    mul     a2,a0,a1
    li      a0, 2052
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2036
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 65
    sw      a2,1572(sp)
    mul     a2,a1,a0
    li      a1, 2036
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2020
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -2
    sw      a2,1568(sp)
    mul     a2,a0,a1
    li      a0, 2020
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2004
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 30
    sw      a2,1564(sp)
    mul     a2,a1,a0
    lw      a0,1988(sp)
    li      a1, 2004
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 67
    sw      a2,1560(sp)
    mul     a2,a0,a1
    lw      a1,1972(sp)
    sw      a0,1988(sp)
    li      a0, 82
    sw      a2,1556(sp)
    mul     a2,a1,a0
    lw      a0,1956(sp)
    sw      a1,1972(sp)
    li      a1, 33
    sw      a2,1552(sp)
    mul     a2,a0,a1
    lw      a1,1552(sp)
    sw      a0,1956(sp)
    add     a0,a2,a1
    sw      a1,1552(sp)
    lw      a1,1556(sp)
    sw      a2,1548(sp)
    add     a2,a0,a1
    sw      a0,1544(sp)
    lw      a0,1560(sp)
    sw      a1,1556(sp)
    add     a1,a2,a0
    sw      a0,1560(sp)
    lw      a0,1564(sp)
    sw      a2,1540(sp)
    add     a2,a1,a0
    sw      a0,1564(sp)
    lw      a0,1568(sp)
    sw      a1,1536(sp)
    add     a1,a2,a0
    sw      a0,1568(sp)
    lw      a0,1572(sp)
    sw      a2,1532(sp)
    add     a2,a1,a0
    sw      a0,1572(sp)
    lw      a0,1576(sp)
    sw      a1,1528(sp)
    add     a1,a2,a0
    sw      a0,1576(sp)
    lw      a0,1580(sp)
    sw      a2,1524(sp)
    add     a2,a1,a0
    sw      a0,1580(sp)
    lw      a0,1584(sp)
    sw      a1,1520(sp)
    add     a1,a2,a0
    sw      a0,1584(sp)
    lw      a0,1588(sp)
    sw      a2,1516(sp)
    add     a2,a1,a0
    sw      a0,1588(sp)
    lw      a0,1592(sp)
    sw      a1,1512(sp)
    add     a1,a2,a0
    sw      a0,1592(sp)
    sw      a2,1508(sp)
    li      a2, 2144
    add     a2,sp,a2
    lw      a0,0(a2)
    add     a2,a1,a0
    li      a0, 2144
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,1596(sp)
    sw      a1,1504(sp)
    add     a1,a2,a0
    sw      a0,1596(sp)
    lw      a0,1600(sp)
    sw      a2,1500(sp)
    add     a2,a1,a0
    sw      a0,1600(sp)
    lw      a0,1604(sp)
    sw      a1,1496(sp)
    add     a1,a2,a0
    sw      a0,1604(sp)
    lw      a0,1608(sp)
    sw      a2,1492(sp)
    add     a2,a1,a0
    sw      a0,1608(sp)
    add     a0,a2,s10
    sw      a1,1488(sp)
    add     a1,a0,s6
    sw      a0,1480(sp)
    add     a0,a1,s4
    sw      a1,1476(sp)
    add     a1,a0,s2
    sw      a0,1472(sp)
    add     a0,a1,a5
    sw      a1,1468(sp)
    add     a1,a0,s11
    sw      a0,1464(sp)
    add     a0,a1,s7
    sw      a1,1460(sp)
    add     a1,a0,a6
    li      s1, 2260
    add     s1,sp,s1
    sw      s1,0(s1)
    sw      s2,1624(sp)
    li      s1, 2244
    add     s1,sp,s1
    sw      s3,0(s1)
    sw      s4,1620(sp)
    li      s2, 2228
    add     s2,sp,s2
    sw      s5,0(s2)
    sw      s6,1616(sp)
    sw      s7,1636(sp)
    li      s3, 2308
    add     s3,sp,s3
    sw      s8,0(s3)
    li      s4, 2212
    add     s4,sp,s4
    sw      s9,0(s4)
    sw      s10,1612(sp)
    sw      s11,1632(sp)
    sw      a0,1456(sp)
    sw      a1,1452(sp)
    sw      a2,1484(sp)
    sw      a3,1644(sp)
    li      a0, 2340
    add     a0,sp,a0
    sw      a4,0(a0)
    sw      a5,1628(sp)
    sw      a6,1640(sp)
    li      a1, 2324
    add     a1,sp,a1
    sw      a7,0(a1)
    lw      a0,1452(sp)
    call    relu_reg
    sw      a0,1448(sp)
    li      a2, -50
    mul     a3,a0,a2
    li      a5, 2340
    add     a5,sp,a5
    lw      a4,0(a5)
    li      a6, 66
    mul     a7,a4,a6
    add     a1,sp,a1
    lw      s5,0(a1)
    li      s6, -15
    mul     s7,s5,s6
    add     s3,sp,s3
    lw      s8,0(s3)
    li      s9, -13
    mul     s10,s8,s9
    li      a1, 2292
    add     a1,sp,a1
    lw      s11,0(a1)
    li      a1, 48
    mul     a2,s11,a1
    li      a5, 2276
    add     a5,sp,a5
    lw      a1,0(a5)
    li      a5, -79
    mul     a6,a1,a5
    li      s1, 2260
    add     s1,sp,s1
    lw      a5,0(s1)
    li      s1, 86
    mul     s2,a5,s1
    li      s3, 2244
    add     s3,sp,s3
    lw      s1,0(s3)
    li      s3, 67
    mul     s4,s1,s3
    li      s6, 2228
    add     s6,sp,s6
    lw      s3,0(s6)
    li      s6, 58
    mul     s9,s3,s6
    sw      a0,1448(sp)
    li      a0, 2212
    add     a0,sp,a0
    lw      s6,0(a0)
    li      a0, 14
    li      a1, 2276
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,s6,a0
    sw      a1,1408(sp)
    li      a1, 2196
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -33
    sw      a2,1428(sp)
    mul     a2,a0,a1
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2180
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 55
    sw      a2,1404(sp)
    mul     a2,a1,a0
    li      a1, 2180
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2164
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 15
    sw      a2,1400(sp)
    mul     a2,a0,a1
    li      a0, 2164
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2148
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 52
    sw      a2,1396(sp)
    mul     a2,a1,a0
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2132
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 59
    sw      a2,1392(sp)
    mul     a2,a0,a1
    li      a0, 2132
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2116
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -95
    sw      a2,1388(sp)
    mul     a2,a1,a0
    li      a1, 2116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2100
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -110
    sw      a2,1384(sp)
    mul     a2,a0,a1
    li      a0, 2100
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2084
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 2
    sw      a2,1380(sp)
    mul     a2,a1,a0
    li      a1, 2084
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2068
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 81
    sw      a2,1376(sp)
    mul     a2,a0,a1
    li      a0, 2068
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2052
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -8
    sw      a2,1372(sp)
    mul     a2,a1,a0
    li      a1, 2052
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2036
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -30
    sw      a2,1368(sp)
    mul     a2,a0,a1
    li      a0, 2036
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2020
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -6
    sw      a2,1364(sp)
    mul     a2,a1,a0
    li      a1, 2020
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2004
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -90
    sw      a2,1360(sp)
    mul     a2,a0,a1
    lw      a1,1988(sp)
    li      a0, 2004
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 66
    sw      a2,1356(sp)
    mul     a2,a1,a0
    lw      a0,1972(sp)
    sw      a1,1988(sp)
    li      a1, -77
    sw      a2,1352(sp)
    mul     a2,a0,a1
    lw      a1,1956(sp)
    sw      a0,1972(sp)
    li      a0, 15
    sw      a2,1348(sp)
    mul     a2,a1,a0
    lw      a0,1348(sp)
    sw      a1,1956(sp)
    add     a1,a2,a0
    sw      a0,1348(sp)
    lw      a0,1352(sp)
    sw      a2,1344(sp)
    add     a2,a1,a0
    sw      a0,1352(sp)
    lw      a0,1356(sp)
    sw      a1,1340(sp)
    add     a1,a2,a0
    sw      a0,1356(sp)
    lw      a0,1360(sp)
    sw      a2,1336(sp)
    add     a2,a1,a0
    sw      a0,1360(sp)
    lw      a0,1364(sp)
    sw      a1,1332(sp)
    add     a1,a2,a0
    sw      a0,1364(sp)
    lw      a0,1368(sp)
    sw      a2,1328(sp)
    add     a2,a1,a0
    sw      a0,1368(sp)
    lw      a0,1372(sp)
    sw      a1,1324(sp)
    add     a1,a2,a0
    sw      a0,1372(sp)
    lw      a0,1376(sp)
    sw      a2,1320(sp)
    add     a2,a1,a0
    sw      a0,1376(sp)
    lw      a0,1380(sp)
    sw      a1,1316(sp)
    add     a1,a2,a0
    sw      a0,1380(sp)
    lw      a0,1384(sp)
    sw      a2,1312(sp)
    add     a2,a1,a0
    sw      a0,1384(sp)
    lw      a0,1388(sp)
    sw      a1,1308(sp)
    add     a1,a2,a0
    sw      a0,1388(sp)
    lw      a0,1392(sp)
    sw      a2,1304(sp)
    add     a2,a1,a0
    sw      a0,1392(sp)
    lw      a0,1396(sp)
    sw      a1,1300(sp)
    add     a1,a2,a0
    sw      a0,1396(sp)
    lw      a0,1400(sp)
    sw      a2,1296(sp)
    add     a2,a1,a0
    sw      a0,1400(sp)
    lw      a0,1404(sp)
    sw      a1,1292(sp)
    add     a1,a2,a0
    sw      a0,1404(sp)
    lw      a0,1408(sp)
    sw      a2,1288(sp)
    add     a2,a1,a0
    sw      a0,1408(sp)
    add     a0,a2,s9
    sw      a1,1284(sp)
    add     a1,a0,s4
    sw      a0,1276(sp)
    add     a0,a1,s2
    sw      a1,1272(sp)
    add     a1,a0,a6
    sw      a0,1268(sp)
    lw      a0,1428(sp)
    sw      a2,1280(sp)
    add     a2,a1,a0
    sw      a0,1428(sp)
    add     a0,a2,s10
    sw      a1,1264(sp)
    add     a1,a0,s7
    sw      a0,1256(sp)
    add     a0,a1,a7
    li      s1, 2244
    add     s1,sp,s1
    sw      s1,0(s1)
    sw      s2,1420(sp)
    li      s1, 2228
    add     s1,sp,s1
    sw      s3,0(s1)
    sw      s4,1416(sp)
    li      s2, 2324
    add     s2,sp,s2
    sw      s5,0(s2)
    li      s3, 2212
    add     s3,sp,s3
    sw      s6,0(s3)
    sw      s7,1436(sp)
    li      s4, 2308
    add     s4,sp,s4
    sw      s8,0(s4)
    sw      s9,1412(sp)
    sw      s10,1432(sp)
    li      s5, 2292
    add     s5,sp,s5
    sw      s11,0(s5)
    sw      a0,1248(sp)
    sw      a1,1252(sp)
    sw      a2,1260(sp)
    sw      a3,1444(sp)
    li      a0, 2340
    add     a0,sp,a0
    sw      a4,0(a0)
    li      a1, 2260
    add     a1,sp,a1
    sw      a5,0(a1)
    sw      a6,1424(sp)
    sw      a7,1440(sp)
    lw      a0,1248(sp)
    call    relu_reg
    sw      a0,1244(sp)
    li      a2, -95
    mul     a3,a0,a2
    li      a5, 2340
    add     a5,sp,a5
    lw      a4,0(a5)
    li      a6, -72
    mul     a7,a4,a6
    add     s2,sp,s2
    lw      s6,0(s2)
    li      s7, 82
    mul     s8,s6,s7
    add     s4,sp,s4
    lw      s9,0(s4)
    li      s10, -54
    mul     s11,s9,s10
    add     s5,sp,s5
    lw      a1,0(s5)
    li      a2, -116
    mul     a5,a1,a2
    li      a6, 2276
    add     a6,sp,a6
    lw      a2,0(a6)
    li      a6, -112
    mul     s1,a2,a6
    li      s2, 2260
    add     s2,sp,s2
    lw      a6,0(s2)
    li      s2, -50
    mul     s3,a6,s2
    li      s4, 2244
    add     s4,sp,s4
    lw      s2,0(s4)
    li      s4, -16
    mul     s5,s2,s4
    li      s7, 2228
    add     s7,sp,s7
    lw      s4,0(s7)
    li      s7, -10
    mul     s10,s4,s7
    sw      a0,1244(sp)
    li      a0, 2212
    add     a0,sp,a0
    lw      s7,0(a0)
    li      a0, 112
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,s7,a0
    sw      a1,1204(sp)
    li      a1, 2196
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 114
    li      a2, 2276
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2180
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 112
    sw      a2,1200(sp)
    mul     a2,a1,a0
    li      a1, 2180
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2164
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -21
    sw      a2,1196(sp)
    mul     a2,a0,a1
    li      a0, 2164
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2148
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 38
    sw      a2,1192(sp)
    mul     a2,a1,a0
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2132
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 114
    sw      a2,1188(sp)
    mul     a2,a0,a1
    li      a0, 2132
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2116
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 64
    sw      a2,1184(sp)
    mul     a2,a1,a0
    li      a1, 2116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2084
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -13
    sw      a2,1180(sp)
    mul     a2,a0,a1
    li      a0, 2084
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2068
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 101
    sw      a2,1176(sp)
    mul     a2,a1,a0
    li      a1, 2068
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2052
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 55
    sw      a2,1172(sp)
    mul     a2,a0,a1
    li      a0, 2052
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2020
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 121
    sw      a2,1168(sp)
    mul     a2,a1,a0
    li      a1, 2020
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2004
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -74
    sw      a2,1164(sp)
    mul     a2,a0,a1
    lw      a1,1988(sp)
    li      a0, 2004
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, -102
    sw      a2,1160(sp)
    mul     a2,a1,a0
    lw      a0,1972(sp)
    sw      a1,1988(sp)
    li      a1, 68
    sw      a2,1156(sp)
    mul     a2,a0,a1
    lw      a1,1956(sp)
    sw      a0,1972(sp)
    li      a0, 81
    sw      a2,1152(sp)
    mul     a2,a1,a0
    lw      a0,1152(sp)
    sw      a1,1956(sp)
    add     a1,a2,a0
    sw      a0,1152(sp)
    lw      a0,1156(sp)
    sw      a2,1148(sp)
    add     a2,a1,a0
    sw      a0,1156(sp)
    lw      a0,1160(sp)
    sw      a1,1144(sp)
    add     a1,a2,a0
    sw      a0,1160(sp)
    lw      a0,1164(sp)
    sw      a2,1140(sp)
    add     a2,a1,a0
    sw      a0,1164(sp)
    lw      a0,1768(sp)
    sw      a1,1136(sp)
    add     a1,a2,a0
    sw      a0,1768(sp)
    lw      a0,1168(sp)
    sw      a2,1132(sp)
    add     a2,a1,a0
    sw      a0,1168(sp)
    lw      a0,1172(sp)
    sw      a1,1128(sp)
    add     a1,a2,a0
    sw      a0,1172(sp)
    lw      a0,1176(sp)
    sw      a2,1124(sp)
    add     a2,a1,a0
    sw      a0,1176(sp)
    lw      a0,1784(sp)
    sw      a1,1120(sp)
    add     a1,a2,a0
    sw      a0,1784(sp)
    lw      a0,1180(sp)
    sw      a2,1116(sp)
    add     a2,a1,a0
    sw      a0,1180(sp)
    lw      a0,1184(sp)
    sw      a1,1112(sp)
    add     a1,a2,a0
    sw      a0,1184(sp)
    lw      a0,1188(sp)
    sw      a2,1108(sp)
    add     a2,a1,a0
    sw      a0,1188(sp)
    lw      a0,1192(sp)
    sw      a1,1104(sp)
    add     a1,a2,a0
    sw      a0,1192(sp)
    lw      a0,1196(sp)
    sw      a2,1100(sp)
    add     a2,a1,a0
    sw      a0,1196(sp)
    lw      a0,1200(sp)
    sw      a1,1096(sp)
    add     a1,a2,a0
    sw      a0,1200(sp)
    lw      a0,1204(sp)
    sw      a2,1092(sp)
    add     a2,a1,a0
    sw      a0,1204(sp)
    add     a0,a2,s10
    sw      a1,1088(sp)
    add     a1,a0,s5
    sw      a0,1080(sp)
    add     a0,a1,s3
    sw      a1,1076(sp)
    add     a1,a0,s1
    sw      a0,1072(sp)
    add     a0,a1,a5
    sw      a1,1068(sp)
    add     a1,a0,s11
    sw      a0,1064(sp)
    add     a0,a1,s8
    sw      a1,1060(sp)
    add     a1,a0,a7
    sw      s1,1220(sp)
    li      s1, 2244
    add     s1,sp,s1
    sw      s2,0(s1)
    sw      s3,1216(sp)
    li      s2, 2228
    add     s2,sp,s2
    sw      s4,0(s2)
    sw      s5,1212(sp)
    li      s3, 2324
    add     s3,sp,s3
    sw      s6,0(s3)
    li      s4, 2212
    add     s4,sp,s4
    sw      s7,0(s4)
    sw      s8,1232(sp)
    li      s5, 2308
    add     s5,sp,s5
    sw      s9,0(s5)
    sw      s10,1208(sp)
    sw      s11,1228(sp)
    sw      a0,1056(sp)
    sw      a1,1052(sp)
    sw      a2,1084(sp)
    sw      a3,1240(sp)
    li      a0, 2340
    add     a0,sp,a0
    sw      a4,0(a0)
    sw      a5,1224(sp)
    li      a1, 2260
    add     a1,sp,a1
    sw      a6,0(a1)
    sw      a7,1236(sp)
    lw      a0,1052(sp)
    call    relu_reg
    sw      a0,1048(sp)
    li      a2, 32
    mul     a3,a0,a2
    li      a5, 2340
    add     a5,sp,a5
    lw      a4,0(a5)
    li      a6, -124
    mul     a7,a4,a6
    add     s3,sp,s3
    lw      s6,0(s3)
    li      s7, 49
    mul     s8,s6,s7
    add     s5,sp,s5
    lw      s9,0(s5)
    li      s10, 3
    mul     s11,s9,s10
    li      a2, 2292
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a2, 79
    mul     a5,a1,a2
    li      a6, 2276
    add     a6,sp,a6
    lw      a2,0(a6)
    li      a6, 15
    mul     s1,a2,a6
    li      s2, 2260
    add     s2,sp,s2
    lw      a6,0(s2)
    li      s2, -93
    mul     s3,a6,s2
    li      s4, 2244
    add     s4,sp,s4
    lw      s2,0(s4)
    li      s4, 116
    mul     s5,s2,s4
    li      s7, 2228
    add     s7,sp,s7
    lw      s4,0(s7)
    li      s7, -95
    mul     s10,s4,s7
    sw      a0,1048(sp)
    li      a0, 2212
    add     a0,sp,a0
    lw      s7,0(a0)
    li      a0, 5
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,s7,a0
    sw      a1,1008(sp)
    li      a1, 2196
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 12
    li      a2, 2276
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2180
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 59
    sw      a2,1004(sp)
    mul     a2,a1,a0
    li      a1, 2180
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2164
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -114
    sw      a2,1000(sp)
    mul     a2,a0,a1
    li      a0, 2164
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2148
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -101
    sw      a2,996(sp)
    mul     a2,a1,a0
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2132
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -96
    sw      a2,992(sp)
    mul     a2,a0,a1
    li      a0, 2132
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2116
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 66
    sw      a2,988(sp)
    mul     a2,a1,a0
    li      a1, 2116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2100
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 75
    sw      a2,984(sp)
    mul     a2,a0,a1
    li      a0, 2100
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2084
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 125
    sw      a2,980(sp)
    mul     a2,a1,a0
    li      a1, 2084
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2068
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -70
    sw      a2,976(sp)
    mul     a2,a0,a1
    li      a0, 2068
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2052
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -16
    sw      a2,972(sp)
    mul     a2,a1,a0
    li      a1, 2052
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2036
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -63
    sw      a2,968(sp)
    mul     a2,a0,a1
    li      a0, 2036
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2020
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -116
    sw      a2,964(sp)
    mul     a2,a1,a0
    li      a1, 2020
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2004
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 101
    sw      a2,960(sp)
    mul     a2,a0,a1
    lw      a1,1988(sp)
    li      a0, 2004
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, -104
    sw      a2,956(sp)
    mul     a2,a1,a0
    lw      a0,1956(sp)
    sw      a1,1988(sp)
    li      a1, 8
    sw      a2,952(sp)
    mul     a2,a0,a1
    lw      a1,1552(sp)
    sw      a0,1956(sp)
    add     a0,a2,a1
    sw      a1,1552(sp)
    lw      a1,952(sp)
    sw      a2,948(sp)
    add     a2,a0,a1
    sw      a0,944(sp)
    lw      a0,956(sp)
    sw      a1,952(sp)
    add     a1,a2,a0
    sw      a0,956(sp)
    lw      a0,960(sp)
    sw      a2,940(sp)
    add     a2,a1,a0
    sw      a0,960(sp)
    lw      a0,964(sp)
    sw      a1,936(sp)
    add     a1,a2,a0
    sw      a0,964(sp)
    lw      a0,968(sp)
    sw      a2,932(sp)
    add     a2,a1,a0
    sw      a0,968(sp)
    lw      a0,972(sp)
    sw      a1,928(sp)
    add     a1,a2,a0
    sw      a0,972(sp)
    lw      a0,976(sp)
    sw      a2,924(sp)
    add     a2,a1,a0
    sw      a0,976(sp)
    lw      a0,980(sp)
    sw      a1,920(sp)
    add     a1,a2,a0
    sw      a0,980(sp)
    lw      a0,984(sp)
    sw      a2,916(sp)
    add     a2,a1,a0
    sw      a0,984(sp)
    lw      a0,988(sp)
    sw      a1,912(sp)
    add     a1,a2,a0
    sw      a0,988(sp)
    lw      a0,992(sp)
    sw      a2,908(sp)
    add     a2,a1,a0
    sw      a0,992(sp)
    lw      a0,996(sp)
    sw      a1,904(sp)
    add     a1,a2,a0
    sw      a0,996(sp)
    lw      a0,1000(sp)
    sw      a2,900(sp)
    add     a2,a1,a0
    sw      a0,1000(sp)
    lw      a0,1004(sp)
    sw      a1,896(sp)
    add     a1,a2,a0
    sw      a0,1004(sp)
    lw      a0,1008(sp)
    sw      a2,892(sp)
    add     a2,a1,a0
    sw      a0,1008(sp)
    add     a0,a2,s10
    sw      a1,888(sp)
    add     a1,a0,s5
    sw      a0,880(sp)
    add     a0,a1,s3
    sw      a1,876(sp)
    add     a1,a0,s1
    sw      a0,872(sp)
    add     a0,a1,a5
    sw      a1,868(sp)
    add     a1,a0,s11
    sw      a0,864(sp)
    add     a0,a1,s8
    sw      a1,860(sp)
    add     a1,a0,a7
    sw      s1,1024(sp)
    li      s1, 2244
    add     s1,sp,s1
    sw      s2,0(s1)
    sw      s3,1020(sp)
    li      s2, 2228
    add     s2,sp,s2
    sw      s4,0(s2)
    sw      s5,1016(sp)
    li      s3, 2324
    add     s3,sp,s3
    sw      s6,0(s3)
    li      s4, 2212
    add     s4,sp,s4
    sw      s7,0(s4)
    sw      s8,1036(sp)
    li      s5, 2308
    add     s5,sp,s5
    sw      s9,0(s5)
    sw      s10,1012(sp)
    sw      s11,1032(sp)
    sw      a0,856(sp)
    sw      a1,852(sp)
    sw      a2,884(sp)
    sw      a3,1044(sp)
    li      a0, 2340
    add     a0,sp,a0
    sw      a4,0(a0)
    sw      a5,1028(sp)
    li      a1, 2260
    add     a1,sp,a1
    sw      a6,0(a1)
    sw      a7,1040(sp)
    lw      a0,852(sp)
    call    relu_reg
    sw      a0,848(sp)
    li      a2, -3
    mul     a3,a0,a2
    li      a5, 2340
    add     a5,sp,a5
    lw      a4,0(a5)
    li      a6, 118
    mul     a7,a4,a6
    add     s3,sp,s3
    lw      s6,0(s3)
    li      s7, 95
    mul     s8,s6,s7
    add     s5,sp,s5
    lw      s9,0(s5)
    li      s10, -117
    mul     s11,s9,s10
    li      a2, 2292
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a2, -32
    mul     a5,a1,a2
    li      a6, 2276
    add     a6,sp,a6
    lw      a2,0(a6)
    li      a6, -47
    mul     s1,a2,a6
    li      s2, 2260
    add     s2,sp,s2
    lw      a6,0(s2)
    li      s2, -23
    mul     s3,a6,s2
    li      s4, 2244
    add     s4,sp,s4
    lw      s2,0(s4)
    li      s4, 11
    mul     s5,s2,s4
    li      s7, 2228
    add     s7,sp,s7
    lw      s4,0(s7)
    li      s7, 122
    mul     s10,s4,s7
    sw      a0,848(sp)
    li      a0, 2212
    add     a0,sp,a0
    lw      s7,0(a0)
    li      a0, 83
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,s7,a0
    sw      a1,808(sp)
    li      a1, 2196
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -123
    li      a2, 2276
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2180
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -31
    sw      a2,804(sp)
    mul     a2,a1,a0
    li      a1, 2180
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2164
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 110
    sw      a2,800(sp)
    mul     a2,a0,a1
    li      a0, 2164
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2148
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 125
    sw      a2,796(sp)
    mul     a2,a1,a0
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2132
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -67
    sw      a2,792(sp)
    mul     a2,a0,a1
    li      a0, 2132
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2116
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -65
    sw      a2,788(sp)
    mul     a2,a1,a0
    li      a1, 2116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2100
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -117
    sw      a2,784(sp)
    mul     a2,a0,a1
    li      a0, 2100
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2068
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 12
    sw      a2,780(sp)
    mul     a2,a1,a0
    li      a1, 2068
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2052
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -30
    sw      a2,776(sp)
    mul     a2,a0,a1
    li      a0, 2052
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2036
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 85
    sw      a2,772(sp)
    mul     a2,a1,a0
    li      a1, 2036
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2020
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 72
    sw      a2,768(sp)
    mul     a2,a0,a1
    li      a0, 2020
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2004
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 50
    sw      a2,764(sp)
    mul     a2,a1,a0
    lw      a0,1988(sp)
    li      a1, 2004
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 49
    sw      a2,760(sp)
    mul     a2,a0,a1
    lw      a1,1972(sp)
    sw      a0,1988(sp)
    li      a0, -63
    sw      a2,756(sp)
    mul     a2,a1,a0
    lw      a0,1956(sp)
    sw      a1,1972(sp)
    li      a1, -23
    sw      a2,752(sp)
    mul     a2,a0,a1
    lw      a1,752(sp)
    sw      a0,1956(sp)
    add     a0,a2,a1
    sw      a1,752(sp)
    lw      a1,756(sp)
    sw      a2,748(sp)
    add     a2,a0,a1
    sw      a0,744(sp)
    lw      a0,760(sp)
    sw      a1,756(sp)
    add     a1,a2,a0
    sw      a0,760(sp)
    lw      a0,764(sp)
    sw      a2,740(sp)
    add     a2,a1,a0
    sw      a0,764(sp)
    lw      a0,768(sp)
    sw      a1,736(sp)
    add     a1,a2,a0
    sw      a0,768(sp)
    lw      a0,772(sp)
    sw      a2,732(sp)
    add     a2,a1,a0
    sw      a0,772(sp)
    lw      a0,776(sp)
    sw      a1,728(sp)
    add     a1,a2,a0
    sw      a0,776(sp)
    lw      a0,976(sp)
    sw      a2,724(sp)
    add     a2,a1,a0
    sw      a0,976(sp)
    lw      a0,780(sp)
    sw      a1,720(sp)
    add     a1,a2,a0
    sw      a0,780(sp)
    lw      a0,784(sp)
    sw      a2,716(sp)
    add     a2,a1,a0
    sw      a0,784(sp)
    lw      a0,788(sp)
    sw      a1,712(sp)
    add     a1,a2,a0
    sw      a0,788(sp)
    lw      a0,792(sp)
    sw      a2,708(sp)
    add     a2,a1,a0
    sw      a0,792(sp)
    lw      a0,796(sp)
    sw      a1,704(sp)
    add     a1,a2,a0
    sw      a0,796(sp)
    lw      a0,800(sp)
    sw      a2,700(sp)
    add     a2,a1,a0
    sw      a0,800(sp)
    lw      a0,804(sp)
    sw      a1,696(sp)
    add     a1,a2,a0
    sw      a0,804(sp)
    lw      a0,808(sp)
    sw      a2,692(sp)
    add     a2,a1,a0
    sw      a0,808(sp)
    add     a0,a2,s10
    sw      a1,688(sp)
    add     a1,a0,s5
    sw      a0,680(sp)
    add     a0,a1,s3
    sw      a1,676(sp)
    add     a1,a0,s1
    sw      a0,672(sp)
    add     a0,a1,a5
    sw      a1,668(sp)
    add     a1,a0,s11
    sw      a0,664(sp)
    add     a0,a1,s8
    sw      a1,660(sp)
    add     a1,a0,a7
    sw      s1,824(sp)
    li      s1, 2244
    add     s1,sp,s1
    sw      s2,0(s1)
    sw      s3,820(sp)
    li      s2, 2228
    add     s2,sp,s2
    sw      s4,0(s2)
    sw      s5,816(sp)
    li      s3, 2324
    add     s3,sp,s3
    sw      s6,0(s3)
    li      s4, 2212
    add     s4,sp,s4
    sw      s7,0(s4)
    sw      s8,836(sp)
    li      s5, 2308
    add     s5,sp,s5
    sw      s9,0(s5)
    sw      s10,812(sp)
    sw      s11,832(sp)
    sw      a0,656(sp)
    sw      a1,652(sp)
    sw      a2,684(sp)
    sw      a3,844(sp)
    li      a0, 2340
    add     a0,sp,a0
    sw      a4,0(a0)
    sw      a5,828(sp)
    li      a1, 2260
    add     a1,sp,a1
    sw      a6,0(a1)
    sw      a7,840(sp)
    lw      a0,652(sp)
    call    relu_reg
    sw      a0,648(sp)
    li      a2, -106
    mul     a3,a0,a2
    li      a5, 2340
    add     a5,sp,a5
    lw      a4,0(a5)
    li      a6, 94
    mul     a7,a4,a6
    add     s3,sp,s3
    lw      s6,0(s3)
    li      s7, -6
    mul     s8,s6,s7
    add     s5,sp,s5
    lw      s9,0(s5)
    li      s10, -39
    mul     s11,s9,s10
    li      a2, 2292
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a2, 120
    mul     a5,a1,a2
    li      a6, 2260
    add     a6,sp,a6
    lw      a2,0(a6)
    li      a6, -99
    mul     s1,a2,a6
    li      s2, 2244
    add     s2,sp,s2
    lw      a6,0(s2)
    li      s2, -63
    mul     s3,a6,s2
    li      s4, 2228
    add     s4,sp,s4
    lw      s2,0(s4)
    li      s4, 39
    mul     s5,s2,s4
    li      s7, 2212
    add     s7,sp,s7
    lw      s4,0(s7)
    li      s7, 116
    mul     s10,s4,s7
    sw      a0,648(sp)
    li      a0, 2196
    add     a0,sp,a0
    lw      s7,0(a0)
    li      a0, 110
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,s7,a0
    sw      a1,608(sp)
    li      a1, 2180
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 27
    li      a2, 2260
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    li      a0, 2180
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2164
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -38
    sw      a2,604(sp)
    mul     a2,a1,a0
    li      a1, 2164
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2148
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 6
    sw      a2,600(sp)
    mul     a2,a0,a1
    li      a0, 2148
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2132
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 102
    sw      a2,596(sp)
    mul     a2,a1,a0
    li      a1, 2132
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2116
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -34
    sw      a2,592(sp)
    mul     a2,a0,a1
    li      a0, 2116
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2100
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 34
    sw      a2,588(sp)
    mul     a2,a1,a0
    li      a1, 2100
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2084
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -5
    sw      a2,584(sp)
    mul     a2,a0,a1
    li      a0, 2084
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2068
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -68
    sw      a2,580(sp)
    mul     a2,a1,a0
    li      a1, 2068
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2052
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 52
    sw      a2,576(sp)
    mul     a2,a0,a1
    li      a0, 2052
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2036
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 96
    sw      a2,572(sp)
    mul     a2,a1,a0
    li      a1, 2036
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2020
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -95
    sw      a2,568(sp)
    mul     a2,a0,a1
    li      a0, 2020
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2004
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 29
    sw      a2,564(sp)
    mul     a2,a1,a0
    lw      a0,1972(sp)
    li      a1, 2004
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 76
    sw      a2,560(sp)
    mul     a2,a0,a1
    lw      a1,1956(sp)
    sw      a0,1972(sp)
    li      a0, 26
    sw      a2,556(sp)
    mul     a2,a1,a0
    lw      a0,556(sp)
    sw      a1,1956(sp)
    add     a1,a2,a0
    sw      a0,556(sp)
    lw      a0,1756(sp)
    sw      a2,552(sp)
    add     a2,a1,a0
    sw      a0,1756(sp)
    lw      a0,560(sp)
    sw      a1,548(sp)
    add     a1,a2,a0
    sw      a0,560(sp)
    lw      a0,564(sp)
    sw      a2,544(sp)
    add     a2,a1,a0
    sw      a0,564(sp)
    lw      a0,568(sp)
    sw      a1,540(sp)
    add     a1,a2,a0
    sw      a0,568(sp)
    lw      a0,572(sp)
    sw      a2,536(sp)
    add     a2,a1,a0
    sw      a0,572(sp)
    lw      a0,576(sp)
    sw      a1,532(sp)
    add     a1,a2,a0
    sw      a0,576(sp)
    lw      a0,580(sp)
    sw      a2,528(sp)
    add     a2,a1,a0
    sw      a0,580(sp)
    lw      a0,584(sp)
    sw      a1,524(sp)
    add     a1,a2,a0
    sw      a0,584(sp)
    lw      a0,588(sp)
    sw      a2,520(sp)
    add     a2,a1,a0
    sw      a0,588(sp)
    lw      a0,592(sp)
    sw      a1,516(sp)
    add     a1,a2,a0
    sw      a0,592(sp)
    lw      a0,596(sp)
    sw      a2,512(sp)
    add     a2,a1,a0
    sw      a0,596(sp)
    lw      a0,600(sp)
    sw      a1,508(sp)
    add     a1,a2,a0
    sw      a0,600(sp)
    lw      a0,604(sp)
    sw      a2,504(sp)
    add     a2,a1,a0
    sw      a0,604(sp)
    lw      a0,608(sp)
    sw      a1,500(sp)
    add     a1,a2,a0
    sw      a0,608(sp)
    add     a0,a1,s10
    sw      a1,492(sp)
    add     a1,a0,s5
    sw      a0,488(sp)
    add     a0,a1,s3
    sw      a1,484(sp)
    add     a1,a0,s1
    sw      a0,480(sp)
    lw      a0,1624(sp)
    sw      a2,496(sp)
    add     a2,a1,a0
    sw      a0,1624(sp)
    add     a0,a2,a5
    sw      a1,476(sp)
    add     a1,a0,s11
    sw      a0,468(sp)
    add     a0,a1,s8
    sw      a1,464(sp)
    add     a1,a0,a7
    sw      s1,624(sp)
    li      s1, 2228
    add     s1,sp,s1
    sw      s2,0(s1)
    sw      s3,620(sp)
    li      s2, 2212
    add     s2,sp,s2
    sw      s4,0(s2)
    sw      s5,616(sp)
    li      s3, 2324
    add     s3,sp,s3
    sw      s6,0(s3)
    li      s4, 2196
    add     s4,sp,s4
    sw      s7,0(s4)
    sw      s8,636(sp)
    li      s5, 2308
    add     s5,sp,s5
    sw      s9,0(s5)
    sw      s10,612(sp)
    sw      s11,632(sp)
    sw      a0,460(sp)
    sw      a1,456(sp)
    sw      a2,472(sp)
    sw      a3,644(sp)
    li      a0, 2340
    add     a0,sp,a0
    sw      a4,0(a0)
    sw      a5,628(sp)
    li      a1, 2244
    add     a1,sp,a1
    sw      a6,0(a1)
    sw      a7,640(sp)
    lw      a0,456(sp)
    call    relu_reg
    sw      a0,452(sp)
    li      a2, 127
    mul     a3,a0,a2
    li      a5, 2340
    add     a5,sp,a5
    lw      a4,0(a5)
    li      a6, -125
    mul     a7,a4,a6
    add     s3,sp,s3
    lw      s6,0(s3)
    li      s7, -75
    mul     s8,s6,s7
    add     s5,sp,s5
    lw      s9,0(s5)
    li      s10, -22
    mul     s11,s9,s10
    li      a2, 2292
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a2, -100
    mul     a5,a1,a2
    li      a6, 2276
    add     a6,sp,a6
    lw      a2,0(a6)
    li      a6, -110
    mul     s1,a2,a6
    li      s2, 2260
    add     s2,sp,s2
    lw      a6,0(s2)
    li      s2, -31
    mul     s3,a6,s2
    li      s4, 2244
    add     s4,sp,s4
    lw      s2,0(s4)
    li      s4, -106
    mul     s5,s2,s4
    li      s7, 2228
    add     s7,sp,s7
    lw      s4,0(s7)
    li      s7, 29
    mul     s10,s4,s7
    sw      a0,452(sp)
    li      a0, 2212
    add     a0,sp,a0
    lw      s7,0(a0)
    li      a0, 87
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,s7,a0
    sw      a1,412(sp)
    li      a1, 2196
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -42
    li      a2, 2276
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2180
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 105
    sw      a2,408(sp)
    mul     a2,a1,a0
    li      a1, 2180
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2164
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -43
    sw      a2,404(sp)
    mul     a2,a0,a1
    li      a0, 2164
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2148
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -60
    sw      a2,400(sp)
    mul     a2,a1,a0
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2132
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -21
    sw      a2,396(sp)
    mul     a2,a0,a1
    li      a0, 2132
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2116
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 7
    sw      a2,392(sp)
    mul     a2,a1,a0
    li      a1, 2116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2100
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -121
    sw      a2,388(sp)
    mul     a2,a0,a1
    li      a0, 2100
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2084
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -94
    sw      a2,384(sp)
    mul     a2,a1,a0
    li      a1, 2084
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2068
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 67
    sw      a2,380(sp)
    mul     a2,a0,a1
    li      a0, 2068
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2052
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -4
    sw      a2,376(sp)
    mul     a2,a1,a0
    li      a1, 2052
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2036
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 47
    sw      a2,372(sp)
    mul     a2,a0,a1
    li      a0, 2036
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2020
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -8
    sw      a2,368(sp)
    mul     a2,a1,a0
    li      a1, 2020
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2004
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -31
    sw      a2,364(sp)
    mul     a2,a0,a1
    lw      a1,1988(sp)
    li      a0, 2004
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, -18
    sw      a2,360(sp)
    mul     a2,a1,a0
    lw      a0,1972(sp)
    sw      a1,1988(sp)
    li      a1, 126
    sw      a2,356(sp)
    mul     a2,a0,a1
    lw      a1,1956(sp)
    sw      a0,1972(sp)
    li      a0, -106
    sw      a2,352(sp)
    mul     a2,a1,a0
    lw      a0,352(sp)
    sw      a1,1956(sp)
    add     a1,a2,a0
    sw      a0,352(sp)
    lw      a0,356(sp)
    sw      a2,348(sp)
    add     a2,a1,a0
    sw      a0,356(sp)
    lw      a0,360(sp)
    sw      a1,344(sp)
    add     a1,a2,a0
    sw      a0,360(sp)
    lw      a0,364(sp)
    sw      a2,340(sp)
    add     a2,a1,a0
    sw      a0,364(sp)
    lw      a0,368(sp)
    sw      a1,336(sp)
    add     a1,a2,a0
    sw      a0,368(sp)
    lw      a0,372(sp)
    sw      a2,332(sp)
    add     a2,a1,a0
    sw      a0,372(sp)
    lw      a0,376(sp)
    sw      a1,328(sp)
    add     a1,a2,a0
    sw      a0,376(sp)
    lw      a0,380(sp)
    sw      a2,324(sp)
    add     a2,a1,a0
    sw      a0,380(sp)
    lw      a0,384(sp)
    sw      a1,320(sp)
    add     a1,a2,a0
    sw      a0,384(sp)
    lw      a0,388(sp)
    sw      a2,316(sp)
    add     a2,a1,a0
    sw      a0,388(sp)
    lw      a0,392(sp)
    sw      a1,312(sp)
    add     a1,a2,a0
    sw      a0,392(sp)
    lw      a0,396(sp)
    sw      a2,308(sp)
    add     a2,a1,a0
    sw      a0,396(sp)
    lw      a0,400(sp)
    sw      a1,304(sp)
    add     a1,a2,a0
    sw      a0,400(sp)
    lw      a0,404(sp)
    sw      a2,300(sp)
    add     a2,a1,a0
    sw      a0,404(sp)
    lw      a0,408(sp)
    sw      a1,296(sp)
    add     a1,a2,a0
    sw      a0,408(sp)
    lw      a0,412(sp)
    sw      a2,292(sp)
    add     a2,a1,a0
    sw      a0,412(sp)
    add     a0,a2,s10
    sw      a1,288(sp)
    add     a1,a0,s5
    sw      a0,280(sp)
    add     a0,a1,s3
    sw      a1,276(sp)
    add     a1,a0,s1
    sw      a0,272(sp)
    add     a0,a1,a5
    sw      a1,268(sp)
    add     a1,a0,s11
    sw      a0,264(sp)
    add     a0,a1,s8
    sw      a1,260(sp)
    add     a1,a0,a7
    sw      s1,428(sp)
    li      s1, 2244
    add     s1,sp,s1
    sw      s2,0(s1)
    sw      s3,424(sp)
    li      s2, 2228
    add     s2,sp,s2
    sw      s4,0(s2)
    sw      s5,420(sp)
    li      s3, 2324
    add     s3,sp,s3
    sw      s6,0(s3)
    li      s4, 2212
    add     s4,sp,s4
    sw      s7,0(s4)
    sw      s8,440(sp)
    li      s5, 2308
    add     s5,sp,s5
    sw      s9,0(s5)
    sw      s10,416(sp)
    sw      s11,436(sp)
    sw      a0,256(sp)
    sw      a1,252(sp)
    sw      a2,284(sp)
    sw      a3,448(sp)
    li      a0, 2340
    add     a0,sp,a0
    sw      a4,0(a0)
    sw      a5,432(sp)
    li      a1, 2260
    add     a1,sp,a1
    sw      a6,0(a1)
    sw      a7,444(sp)
    lw      a0,252(sp)
    call    relu_reg
    sw      a0,248(sp)
    li      a2, 77
    mul     a3,a0,a2
    li      a5, 2340
    add     a5,sp,a5
    lw      a4,0(a5)
    li      a6, 46
    mul     a7,a4,a6
    add     s3,sp,s3
    lw      s6,0(s3)
    li      s7, 80
    mul     s8,s6,s7
    add     s5,sp,s5
    lw      s9,0(s5)
    li      s10, -4
    mul     s11,s9,s10
    li      a2, 2292
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a2, 47
    mul     a5,a1,a2
    li      a6, 2276
    add     a6,sp,a6
    lw      a2,0(a6)
    li      a6, 110
    mul     s1,a2,a6
    li      s2, 2260
    add     s2,sp,s2
    lw      a6,0(s2)
    li      s2, 113
    mul     s3,a6,s2
    li      s4, 2244
    add     s4,sp,s4
    lw      s2,0(s4)
    li      s4, 47
    mul     s5,s2,s4
    li      s7, 2228
    add     s7,sp,s7
    lw      s4,0(s7)
    li      s7, 65
    mul     s10,s4,s7
    sw      a0,248(sp)
    li      a0, 2212
    add     a0,sp,a0
    lw      s7,0(a0)
    li      a0, -39
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,s7,a0
    sw      a1,208(sp)
    li      a1, 2196
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, 34
    li      a2, 2276
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2180
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -102
    sw      a2,204(sp)
    mul     a2,a1,a0
    li      a1, 2180
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2164
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -75
    sw      a2,200(sp)
    mul     a2,a0,a1
    li      a0, 2164
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2148
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -106
    sw      a2,196(sp)
    mul     a2,a1,a0
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2116
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -111
    sw      a2,192(sp)
    mul     a2,a0,a1
    li      a0, 2116
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2100
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 47
    sw      a2,188(sp)
    mul     a2,a1,a0
    li      a1, 2100
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2084
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -59
    sw      a2,184(sp)
    mul     a2,a0,a1
    li      a0, 2084
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2068
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 50
    sw      a2,180(sp)
    mul     a2,a1,a0
    li      a1, 2068
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2052
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -120
    sw      a2,176(sp)
    mul     a2,a0,a1
    li      a0, 2052
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2036
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 64
    sw      a2,172(sp)
    mul     a2,a1,a0
    li      a1, 2036
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2020
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a1, -123
    sw      a2,168(sp)
    mul     a2,a0,a1
    li      a0, 2020
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2004
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, -103
    sw      a2,164(sp)
    mul     a2,a1,a0
    lw      a0,1988(sp)
    li      a1, 2004
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, -82
    sw      a2,160(sp)
    mul     a2,a0,a1
    lw      a1,1972(sp)
    sw      a0,1988(sp)
    li      a0, 23
    sw      a2,156(sp)
    mul     a2,a1,a0
    lw      a0,1956(sp)
    sw      a1,1972(sp)
    li      a1, 85
    sw      a2,152(sp)
    mul     a2,a0,a1
    lw      a1,152(sp)
    sw      a0,1956(sp)
    add     a0,a2,a1
    sw      a1,152(sp)
    lw      a1,156(sp)
    sw      a2,148(sp)
    add     a2,a0,a1
    sw      a0,144(sp)
    lw      a0,160(sp)
    sw      a1,156(sp)
    add     a1,a2,a0
    sw      a0,160(sp)
    lw      a0,164(sp)
    sw      a2,140(sp)
    add     a2,a1,a0
    sw      a0,164(sp)
    lw      a0,168(sp)
    sw      a1,136(sp)
    add     a1,a2,a0
    sw      a0,168(sp)
    lw      a0,172(sp)
    sw      a2,132(sp)
    add     a2,a1,a0
    sw      a0,172(sp)
    lw      a0,176(sp)
    sw      a1,128(sp)
    add     a1,a2,a0
    sw      a0,176(sp)
    lw      a0,180(sp)
    sw      a2,124(sp)
    add     a2,a1,a0
    sw      a0,180(sp)
    lw      a0,184(sp)
    sw      a1,120(sp)
    add     a1,a2,a0
    sw      a0,184(sp)
    lw      a0,188(sp)
    sw      a2,116(sp)
    add     a2,a1,a0
    sw      a0,188(sp)
    lw      a0,788(sp)
    sw      a1,112(sp)
    add     a1,a2,a0
    sw      a0,788(sp)
    lw      a0,192(sp)
    sw      a2,108(sp)
    add     a2,a1,a0
    sw      a0,192(sp)
    lw      a0,196(sp)
    sw      a1,104(sp)
    add     a1,a2,a0
    sw      a0,196(sp)
    lw      a0,200(sp)
    sw      a2,100(sp)
    add     a2,a1,a0
    sw      a0,200(sp)
    lw      a0,204(sp)
    sw      a1,96(sp)
    add     a1,a2,a0
    sw      a0,204(sp)
    lw      a0,208(sp)
    sw      a2,92(sp)
    add     a2,a1,a0
    sw      a0,208(sp)
    add     a0,a2,s10
    sw      a1,88(sp)
    add     a1,a0,s5
    sw      a0,80(sp)
    add     a0,a1,s3
    sw      a1,76(sp)
    add     a1,a0,s1
    sw      a0,72(sp)
    add     a0,a1,a5
    sw      a1,68(sp)
    add     a1,a0,s11
    sw      a0,64(sp)
    add     a0,a1,s8
    sw      a1,60(sp)
    add     a1,a0,a7
    sw      s1,224(sp)
    li      s1, 2244
    add     s1,sp,s1
    sw      s2,0(s1)
    sw      s3,220(sp)
    li      s2, 2228
    add     s2,sp,s2
    sw      s4,0(s2)
    sw      s5,216(sp)
    li      s3, 2324
    add     s3,sp,s3
    sw      s6,0(s3)
    li      s4, 2212
    add     s4,sp,s4
    sw      s7,0(s4)
    sw      s8,236(sp)
    li      s5, 2308
    add     s5,sp,s5
    sw      s9,0(s5)
    sw      s10,212(sp)
    sw      s11,232(sp)
    sw      a0,56(sp)
    sw      a1,52(sp)
    sw      a2,84(sp)
    sw      a3,244(sp)
    li      a0, 2340
    add     a0,sp,a0
    sw      a4,0(a0)
    sw      a5,228(sp)
    li      a1, 2260
    add     a1,sp,a1
    sw      a6,0(a1)
    sw      a7,240(sp)
    lw      a0,52(sp)
    call    relu_reg
    sw      a0,48(sp)
    li      a2, 39
    mul     a3,a0,a2
    lw      a4,244(sp)
    add     a5,a3,a4
    lw      a6,448(sp)
    add     a7,a5,a6
    lw      s6,644(sp)
    add     s7,a7,s6
    lw      s8,844(sp)
    add     s9,s7,s8
    lw      s10,1044(sp)
    add     s11,s9,s10
    lw      a1,1240(sp)
    add     a2,s11,a1
    lw      s1,1444(sp)
    add     s2,a2,s1
    lw      s3,1644(sp)
    add     s4,s2,s3
    lw      s5,1848(sp)
    sw      a0,48(sp)
    add     a0,s4,s5
    sw      a1,1240(sp)
    li      a1, 0
    sw      a2,20(sp)
    slt     a2,a1,a0
    bnez    a2, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    li      a1, 2368
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a1, 2360
    add     a1,sp,a1
    ld      s0,0(a1)
    sw      a0,8(sp)
    li      a0, 1
    li      a1, 2376
    li      a1, 2376
    add     sp,a1,sp
    ret
.branch_false_30:
.L4_0:
    li      a1, 2368
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a1, 2360
    add     a1,sp,a1
    ld      s0,0(a1)
    sw      a0,8(sp)
    li      a0, 0
    li      a1, 2376
    li      a1, 2376
    add     sp,a1,sp
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-192
    sd      ra,184(sp)
    sd      s0,176(sp)
    addi    s0,sp,192
.L0_0:
    call    getint
    sw      a0,172(sp)
    mv      a1, a0
    j       .while.head_38
.while.head_38:
    li      a2, 0
    slt     a3,a2,a1
    bnez    a3, .while.body_38
    j       .while.exit_38
.while.body_38:
    li      a2, 0
    j       .while.head_42
.while.head_42:
    li      a4, 5
    slt     a5,a2,a4
    bnez    a5, .while.body_42
    j       .while.exit_42
.while.body_42:
    li      a4, 0
    j       .while.head_46
.while.head_46:
    li      a6, 5
    slt     a7,a4,a6
    bnez    a7, .while.body_46
    j       .while.exit_46
.while.body_46:
    li      a6, 0
    li      s1, 5
    mul     s2,s1,a2
    add     a6,a6,s2
    li      s3, 1
    mul     s4,s3,a4
    add     a6,a6,s4
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,68
    sw      a0,172(sp)
    sw      a1,168(sp)
    sw      a2,60(sp)
    sb      a3,67(sp)
    sw      a4,52(sp)
    sb      a5,59(sp)
    sd      a6,40(sp)
    sb      a7,51(sp)
    call    getint
    sw      a0,36(sp)
    ld      a1,40(sp)
    sw      a0,0(a1)
    lw      a2,52(sp)
    li      a3, 1
    add     a4,a2,a3
    mv      a2, a4
    sw      a2,52(sp)
    sd      a1,40(sp)
    sw      a4,32(sp)
    sw      a0,36(sp)
    lw      a2,60(sp)
    lw      a1,168(sp)
    lb      a5,59(sp)
    lb      a3,67(sp)
    lw      a4,52(sp)
    lw      a0,172(sp)
    j       .while.head_46
.while.exit_46:
    li      a6, 1
    add     s1,a2,a6
    mv      a2, s1
    sb      a5,59(sp)
    sw      s1,28(sp)
    sw      a4,52(sp)
    sb      a7,51(sp)
    j       .while.head_42
.while.exit_42:
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,68
    sw      a0,172(sp)
    sw      a1,168(sp)
    sw      a2,60(sp)
    sb      a3,67(sp)
    sd      a4,16(sp)
    sb      a5,59(sp)
    ld      a0,16(sp)
    call    model
    sw      a0,12(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    bnez    a2, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    sw      a0,12(sp)
    sb      a2,11(sp)
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
    sw      a0,12(sp)
    sb      a2,11(sp)
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
    lw      a0,168(sp)
    li      a1, 1
    sub     a2,a0,a1
    mv      a0, a2
    sw      a2,4(sp)
    sw      a0,168(sp)
    lw      a1,168(sp)
    lw      a0,172(sp)
    j       .while.head_38
.while.exit_38:
    ld      ra,184(sp)
    ld      s0,176(sp)
    sw      a0,172(sp)
    li      a0, 0
    addi    sp,sp,192
    ret
