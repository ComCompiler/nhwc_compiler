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
    .globl mul
    .type mul,@function
mul:
    addi    sp,sp,-1104
    sd      ra,1088(sp)
    sd      s0,1080(sp)
    addi    s0,sp,1104
.L1_0:
    li      s1, 0
    li      s2, 0
    li      s3, 1
    li      s4, 0
    mul     s5,s3,s4
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,a6
    li      s6, 0
    mul     s7,s3,s4
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,a5
    flw     fa0,0(s6)
    li      s8, 0
    li      s9, 2
    mul     s10,s3,s9
    add     s8,s8,s10
    slli s8,s8,2
    add     s8,s8,a0
    flw     fa1,0(s8)
    fmul.s  fa2,fa1,fa0
    li      s11, 0
    mul     s5,s3,s4
    add     s11,s11,s5
    slli s11,s11,2
    add     s11,s11,a4
    flw     fa3,0(s11)
    li      s3, 0
    li      s4, 1
    li      s5, 1
    mul     s7,s4,s5
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,a0
    flw     fa4,0(s3)
    fmul.s  fa5,fa4,fa3
    li      s4, 0
    li      s7, 0
    mul     s9,s5,s7
    add     s4,s4,s9
    slli s4,s4,2
    add     s4,s4,a3
    flw     fa6,0(s4)
    li      s5, 0
    li      s7, 1
    li      s9, 0
    mul     s10,s7,s9
    add     s5,s5,s10
    slli s5,s5,2
    add     s5,s5,a0
    flw     fa7,0(s5)
    fmul.s  f8,fa7,fa6
    fadd.s  f9,f8,fa5
    fadd.s  f18,f9,fa2
    fsw     f18,0(s2)
    li      s7, 0
    li      s9, 1
    li      s10, 1
    sd      a0,1072(sp)
    mul     a0,s9,s10
    add     s7,s7,a0
    slli s7,s7,2
    add     s7,s7,a6
    li      a0, 0
    sd      a1,1064(sp)
    mul     a1,s9,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,a5
    flw     f19,0(a0)
    li      a1, 0
    li      s10, 2
    sd      a0,880(sp)
    mul     a0,s9,s10
    add     a1,a1,a0
    slli a1,a1,2
    ld      a0,1072(sp)
    add     a1,a1,a0
    flw     f20,0(a1)
    fmul.s  f21,f20,f19
    li      s9, 0
    li      s10, 1
    sd      a0,1072(sp)
    li      a0, 1
    sd      a1,864(sp)
    mul     a1,s10,a0
    add     s9,s9,a1
    slli s9,s9,2
    add     s9,s9,a4
    flw     f22,0(s9)
    li      a0, 0
    li      a1, 1
    sd      a2,1056(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,1072(sp)
    add     a0,a0,a1
    flw     f23,0(a0)
    fmul.s  f24,f23,f22
    li      a2, 0
    sd      a0,832(sp)
    li      a0, 1
    sd      a1,1072(sp)
    mul     a1,s10,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a3
    flw     f25,0(a2)
    li      a0, 0
    li      a1, 0
    sd      a2,816(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,1072(sp)
    add     a0,a0,a1
    flw     f26,0(a0)
    fmul.s  f27,f26,f25
    fadd.s  f28,f27,f24
    fadd.s  f29,f28,f21
    fsw     f29,0(s7)
    li      a2, 0
    sd      a0,800(sp)
    li      a0, 2
    sd      a1,1072(sp)
    mul     a1,s10,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a6
    li      a0, 0
    li      a1, 2
    sd      a2,776(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a5
    flw     f30,0(a0)
    li      a1, 0
    li      a2, 2
    sd      a0,768(sp)
    mul     a0,s10,a2
    add     a1,a1,a0
    slli a1,a1,2
    ld      a0,1072(sp)
    add     a1,a1,a0
    flw     f31,0(a1)
    fsw     fa0,988(sp)
    fmul.s  fa0,f31,f30
    li      a2, 0
    sd      a0,1072(sp)
    li      a0, 2
    sd      a1,752(sp)
    mul     a1,s10,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a4
    fsw     fa0,744(sp)
    flw     fa0,0(a2)
    li      a0, 0
    li      a1, 1
    sd      a2,736(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,1072(sp)
    add     a0,a0,a1
    fsw     fa0,732(sp)
    flw     fa0,0(a0)
    fsw     fa1,972(sp)
    flw     fa1,732(sp)
    fsw     fa2,968(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    sd      a0,720(sp)
    li      a0, 2
    sd      a1,1072(sp)
    mul     a1,s10,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a3
    fsw     fa0,716(sp)
    flw     fa0,0(a2)
    li      a0, 0
    li      a1, 0
    sd      a2,704(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,1072(sp)
    add     a0,a0,a1
    fsw     fa0,700(sp)
    flw     fa0,0(a0)
    fsw     fa1,732(sp)
    flw     fa1,700(sp)
    fsw     fa2,712(sp)
    fmul.s  fa2,fa0,fa1
    fsw     fa0,684(sp)
    flw     fa0,712(sp)
    fsw     fa1,700(sp)
    fadd.s  fa1,fa2,fa0
    fsw     fa0,712(sp)
    flw     fa0,744(sp)
    fsw     fa2,680(sp)
    fadd.s  fa2,fa1,fa0
    ld      a2,776(sp)
    fsw     fa2,0(a2)
    li      s10, 0
    sd      a0,688(sp)
    li      a0, 1
    sd      a1,1072(sp)
    li      a1, 0
    sd      a2,776(sp)
    mul     a2,a0,a1
    add     s10,s10,a2
    slli s10,s10,2
    add     s10,s10,a7
    li      a0, 0
    li      a1, 1
    li      a2, 0
    sd      a3,1048(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a5
    fsw     fa0,744(sp)
    flw     fa0,0(a0)
    li      a1, 0
    li      a2, 1
    li      a3, 2
    sd      a0,656(sp)
    mul     a0,a2,a3
    add     a1,a1,a0
    slli a1,a1,2
    ld      a0,1064(sp)
    add     a1,a1,a0
    fsw     fa0,652(sp)
    flw     fa0,0(a1)
    fsw     fa1,676(sp)
    flw     fa1,652(sp)
    fsw     fa2,672(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    li      a3, 1
    sd      a0,1064(sp)
    li      a0, 0
    sd      a1,640(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a4
    fsw     fa0,636(sp)
    flw     fa0,0(a2)
    li      a0, 0
    li      a1, 1
    sd      a2,624(sp)
    mul     a2,a3,a1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,1064(sp)
    add     a0,a0,a1
    fsw     fa0,620(sp)
    flw     fa0,0(a0)
    fsw     fa1,652(sp)
    flw     fa1,620(sp)
    fsw     fa2,632(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    sd      a0,608(sp)
    li      a0, 0
    sd      a1,1064(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    ld      a0,1048(sp)
    add     a2,a2,a0
    fsw     fa0,604(sp)
    flw     fa0,0(a2)
    li      a1, 0
    sd      a0,1048(sp)
    li      a0, 0
    sd      a2,592(sp)
    mul     a2,a3,a0
    add     a1,a1,a2
    slli a1,a1,2
    ld      a0,1064(sp)
    add     a1,a1,a0
    fsw     fa0,588(sp)
    flw     fa0,0(a1)
    fsw     fa1,620(sp)
    flw     fa1,588(sp)
    fsw     fa2,600(sp)
    fmul.s  fa2,fa0,fa1
    fsw     fa0,572(sp)
    flw     fa0,600(sp)
    fsw     fa1,588(sp)
    fadd.s  fa1,fa2,fa0
    fsw     fa0,600(sp)
    flw     fa0,632(sp)
    fsw     fa2,568(sp)
    fadd.s  fa2,fa1,fa0
    fsw     fa2,0(s10)
    li      a2, 0
    sd      a0,1064(sp)
    li      a0, 1
    sd      a1,576(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a7
    li      a0, 0
    li      a1, 1
    sd      a2,552(sp)
    mul     a2,a3,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a5
    fsw     fa0,632(sp)
    flw     fa0,0(a0)
    li      a1, 0
    li      a2, 2
    sd      a0,544(sp)
    mul     a0,a3,a2
    add     a1,a1,a0
    slli a1,a1,2
    ld      a0,1064(sp)
    add     a1,a1,a0
    fsw     fa0,540(sp)
    flw     fa0,0(a1)
    fsw     fa1,564(sp)
    flw     fa1,540(sp)
    fsw     fa2,560(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    sd      a0,1064(sp)
    li      a0, 1
    sd      a1,528(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a4
    fsw     fa0,524(sp)
    flw     fa0,0(a2)
    li      a0, 0
    li      a1, 1
    sd      a2,512(sp)
    mul     a2,a3,a1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,1064(sp)
    add     a0,a0,a1
    fsw     fa0,508(sp)
    flw     fa0,0(a0)
    fsw     fa1,540(sp)
    flw     fa1,508(sp)
    fsw     fa2,520(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    sd      a0,496(sp)
    li      a0, 1
    sd      a1,1064(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    ld      a0,1048(sp)
    add     a2,a2,a0
    fsw     fa0,492(sp)
    flw     fa0,0(a2)
    li      a1, 0
    sd      a0,1048(sp)
    li      a0, 0
    sd      a2,480(sp)
    mul     a2,a3,a0
    add     a1,a1,a2
    slli a1,a1,2
    ld      a0,1064(sp)
    add     a1,a1,a0
    fsw     fa0,476(sp)
    flw     fa0,0(a1)
    fsw     fa1,508(sp)
    flw     fa1,476(sp)
    fsw     fa2,488(sp)
    fmul.s  fa2,fa0,fa1
    fsw     fa0,460(sp)
    flw     fa0,488(sp)
    fsw     fa1,476(sp)
    fadd.s  fa1,fa2,fa0
    fsw     fa0,488(sp)
    flw     fa0,520(sp)
    fsw     fa2,456(sp)
    fadd.s  fa2,fa1,fa0
    ld      a2,552(sp)
    fsw     fa2,0(a2)
    li      a3, 0
    sd      a0,1064(sp)
    li      a0, 1
    sd      a1,464(sp)
    li      a1, 2
    sd      a2,552(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,a7
    li      a0, 0
    li      a1, 1
    li      a2, 2
    sd      a3,440(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a5
    fsw     fa0,520(sp)
    flw     fa0,0(a0)
    li      a1, 0
    li      a2, 1
    li      a3, 2
    sd      a0,432(sp)
    mul     a0,a2,a3
    add     a1,a1,a0
    slli a1,a1,2
    ld      a0,1064(sp)
    add     a1,a1,a0
    fsw     fa0,428(sp)
    flw     fa0,0(a1)
    fsw     fa1,452(sp)
    flw     fa1,428(sp)
    fsw     fa2,448(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    li      a3, 1
    sd      a0,1064(sp)
    li      a0, 2
    sd      a1,416(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a4
    fsw     fa0,412(sp)
    flw     fa0,0(a2)
    li      a0, 0
    li      a1, 1
    sd      a2,400(sp)
    mul     a2,a3,a1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,1064(sp)
    add     a0,a0,a1
    fsw     fa0,396(sp)
    flw     fa0,0(a0)
    fsw     fa1,428(sp)
    flw     fa1,396(sp)
    fsw     fa2,408(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    sd      a0,384(sp)
    li      a0, 2
    sd      a1,1064(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    ld      a0,1048(sp)
    add     a2,a2,a0
    fsw     fa0,380(sp)
    flw     fa0,0(a2)
    li      a1, 0
    sd      a0,1048(sp)
    li      a0, 0
    sd      a2,368(sp)
    mul     a2,a3,a0
    add     a1,a1,a2
    slli a1,a1,2
    ld      a0,1064(sp)
    add     a1,a1,a0
    fsw     fa0,364(sp)
    flw     fa0,0(a1)
    fsw     fa1,396(sp)
    flw     fa1,364(sp)
    fsw     fa2,376(sp)
    fmul.s  fa2,fa0,fa1
    fsw     fa0,348(sp)
    flw     fa0,376(sp)
    fsw     fa1,364(sp)
    fadd.s  fa1,fa2,fa0
    fsw     fa0,376(sp)
    flw     fa0,408(sp)
    fsw     fa2,344(sp)
    fadd.s  fa2,fa1,fa0
    ld      a2,440(sp)
    fsw     fa2,0(a2)
    li      a3, 0
    sd      a0,1064(sp)
    li      a0, 1
    sd      a1,352(sp)
    li      a1, 0
    sd      a2,440(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1096(sp)
    add     a3,a3,a0
    li      a1, 0
    li      a2, 1
    sd      a0,1096(sp)
    li      a0, 0
    sd      a3,328(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,a5
    fsw     fa0,408(sp)
    flw     fa0,0(a1)
    li      a0, 0
    li      a3, 2
    sd      a1,320(sp)
    mul     a1,a2,a3
    add     a0,a0,a1
    slli a0,a0,2
    ld      a1,1056(sp)
    add     a0,a0,a1
    fsw     fa0,316(sp)
    flw     fa0,0(a0)
    fsw     fa1,340(sp)
    flw     fa1,316(sp)
    fsw     fa2,336(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    li      a3, 1
    sd      a0,304(sp)
    li      a0, 0
    sd      a1,1056(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a4
    fsw     fa0,300(sp)
    flw     fa0,0(a2)
    li      a0, 0
    li      a1, 1
    sd      a2,288(sp)
    mul     a2,a3,a1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,1056(sp)
    add     a0,a0,a1
    fsw     fa0,284(sp)
    flw     fa0,0(a0)
    fsw     fa1,316(sp)
    flw     fa1,284(sp)
    fsw     fa2,296(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    sd      a0,272(sp)
    li      a0, 0
    sd      a1,1056(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    ld      a0,1048(sp)
    add     a2,a2,a0
    fsw     fa0,268(sp)
    flw     fa0,0(a2)
    li      a1, 0
    sd      a0,1048(sp)
    li      a0, 0
    sd      a2,256(sp)
    mul     a2,a3,a0
    add     a1,a1,a2
    slli a1,a1,2
    ld      a0,1056(sp)
    add     a1,a1,a0
    fsw     fa0,252(sp)
    flw     fa0,0(a1)
    fsw     fa1,284(sp)
    flw     fa1,252(sp)
    fsw     fa2,264(sp)
    fmul.s  fa2,fa0,fa1
    fsw     fa0,236(sp)
    flw     fa0,264(sp)
    fsw     fa1,252(sp)
    fadd.s  fa1,fa2,fa0
    fsw     fa0,264(sp)
    flw     fa0,296(sp)
    fsw     fa2,232(sp)
    fadd.s  fa2,fa1,fa0
    ld      a2,328(sp)
    fsw     fa2,0(a2)
    li      a3, 0
    sd      a0,1056(sp)
    li      a0, 1
    sd      a1,240(sp)
    li      a1, 1
    sd      a2,328(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1096(sp)
    add     a3,a3,a0
    li      a1, 0
    li      a2, 1
    sd      a0,1096(sp)
    li      a0, 1
    sd      a3,216(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,a5
    fsw     fa0,296(sp)
    flw     fa0,0(a1)
    li      a0, 0
    li      a3, 2
    sd      a1,208(sp)
    mul     a1,a2,a3
    add     a0,a0,a1
    slli a0,a0,2
    ld      a1,1056(sp)
    add     a0,a0,a1
    fsw     fa0,204(sp)
    flw     fa0,0(a0)
    fsw     fa1,228(sp)
    flw     fa1,204(sp)
    fsw     fa2,224(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    li      a3, 1
    sd      a0,192(sp)
    li      a0, 1
    sd      a1,1056(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a4
    fsw     fa0,188(sp)
    flw     fa0,0(a2)
    li      a0, 0
    li      a1, 1
    sd      a2,176(sp)
    mul     a2,a3,a1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,1056(sp)
    add     a0,a0,a1
    fsw     fa0,172(sp)
    flw     fa0,0(a0)
    fsw     fa1,204(sp)
    flw     fa1,172(sp)
    fsw     fa2,184(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    sd      a0,160(sp)
    li      a0, 1
    sd      a1,1056(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    ld      a0,1048(sp)
    add     a2,a2,a0
    fsw     fa0,156(sp)
    flw     fa0,0(a2)
    li      a1, 0
    sd      a0,1048(sp)
    li      a0, 0
    sd      a2,144(sp)
    mul     a2,a3,a0
    add     a1,a1,a2
    slli a1,a1,2
    ld      a0,1056(sp)
    add     a1,a1,a0
    fsw     fa0,140(sp)
    flw     fa0,0(a1)
    fsw     fa1,172(sp)
    flw     fa1,140(sp)
    fsw     fa2,152(sp)
    fmul.s  fa2,fa0,fa1
    fsw     fa0,124(sp)
    flw     fa0,152(sp)
    fsw     fa1,140(sp)
    fadd.s  fa1,fa2,fa0
    fsw     fa0,152(sp)
    flw     fa0,184(sp)
    fsw     fa2,120(sp)
    fadd.s  fa2,fa1,fa0
    ld      a2,216(sp)
    fsw     fa2,0(a2)
    li      a3, 0
    sd      a0,1056(sp)
    li      a0, 1
    sd      a1,128(sp)
    li      a1, 2
    sd      a2,216(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    ld      a0,1096(sp)
    add     a3,a3,a0
    li      a1, 0
    li      a2, 1
    sd      a0,1096(sp)
    li      a0, 2
    sd      a3,104(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,a5
    fsw     fa0,184(sp)
    flw     fa0,0(a1)
    li      a0, 0
    li      a3, 2
    sd      a1,96(sp)
    mul     a1,a2,a3
    add     a0,a0,a1
    slli a0,a0,2
    ld      a1,1056(sp)
    add     a0,a0,a1
    fsw     fa0,92(sp)
    flw     fa0,0(a0)
    fsw     fa1,116(sp)
    flw     fa1,92(sp)
    fsw     fa2,112(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    li      a3, 1
    sd      a0,80(sp)
    li      a0, 2
    sd      a1,1056(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a4
    fsw     fa0,76(sp)
    flw     fa0,0(a2)
    li      a0, 0
    li      a1, 1
    sd      a2,64(sp)
    mul     a2,a3,a1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,1056(sp)
    add     a0,a0,a1
    fsw     fa0,60(sp)
    flw     fa0,0(a0)
    fsw     fa1,92(sp)
    flw     fa1,60(sp)
    fsw     fa2,72(sp)
    fmul.s  fa2,fa0,fa1
    li      a2, 0
    sd      a0,48(sp)
    li      a0, 2
    sd      a1,1056(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    ld      a0,1048(sp)
    add     a2,a2,a0
    fsw     fa0,44(sp)
    flw     fa0,0(a2)
    li      a1, 0
    sd      a0,1048(sp)
    li      a0, 0
    sd      a2,32(sp)
    mul     a2,a3,a0
    add     a1,a1,a2
    slli a1,a1,2
    ld      a0,1056(sp)
    add     a1,a1,a0
    fsw     fa0,28(sp)
    flw     fa0,0(a1)
    fsw     fa1,60(sp)
    flw     fa1,28(sp)
    fsw     fa2,40(sp)
    fmul.s  fa2,fa0,fa1
    fsw     fa0,12(sp)
    flw     fa0,40(sp)
    fsw     fa1,28(sp)
    fadd.s  fa1,fa2,fa0
    fsw     fa0,40(sp)
    flw     fa0,72(sp)
    fsw     fa2,8(sp)
    fadd.s  fa2,fa1,fa0
    ld      a2,104(sp)
    fsw     fa2,0(a2)
    ld      ra,1088(sp)
    ld      s0,1080(sp)
    sd      a0,1056(sp)
    li      a0, 0
    addi    sp,sp,1104
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-424
    sd      ra,416(sp)
    sd      s0,408(sp)
    addi    s0,sp,424
.L0_0:
    la      a0, N
    li      a1, 3
    sw      a1,0(a0)
    la      a2, M
    sw      a1,0(a2)
    la      a3, L
    sw      a1,0(a3)
    li      a4, 0
    j       .while.head_43
.while.head_43:
    la      a0, M
    lw      a1,0(a0)
    slt     a2,a4,a1
    bnez    a2, .while.body_43
    j       .while.exit_43
.while.body_43:
    li      a0, 0
    li      a3, 1
    mul     a5,a3,a4
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,396
    fcvt.s.w fa0,a4,rtz
    fsw     fa0,0(a0)
    li      a6, 0
    mul     a7,a3,a4
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,384
    fcvt.s.w fa1,a4,rtz
    fsw     fa1,0(a6)
    li      s1, 0
    mul     s2,a3,a4
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,372
    fcvt.s.w fa2,a4,rtz
    fsw     fa2,0(s1)
    li      s3, 0
    mul     s4,a3,a4
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,360
    fcvt.s.w fa3,a4,rtz
    fsw     fa3,0(s3)
    li      s5, 0
    mul     s6,a3,a4
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,348
    fcvt.s.w fa4,a4,rtz
    fsw     fa4,0(s5)
    li      s7, 0
    mul     s8,a3,a4
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,336
    fcvt.s.w fa5,a4,rtz
    fsw     fa5,0(s7)
    add     s9,a4,a3
    mv      a4, s9
    sb      a2,279(sp)
    sd      s1,232(sp)
    sd      a6,248(sp)
    sd      s7,184(sp)
    sw      a1,280(sp)
    sw      s9,176(sp)
    sd      a0,264(sp)
    fsw     fa3,212(sp)
    fsw     fa4,196(sp)
    fsw     fa1,244(sp)
    fsw     fa2,228(sp)
    fsw     fa5,180(sp)
    sd      s5,200(sp)
    fsw     fa0,260(sp)
    sd      s3,216(sp)
    j       .while.head_43
.while.exit_43:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,396
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,384
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,372
    li      a6, 0
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,360
    li      a7, 0
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,348
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,312
    li      s3, 0
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,300
    li      s4, 0
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,288
    sd      s4,-8(sp)
    sd      s1,128(sp)
    sd      s2,120(sp)
    sd      s3,112(sp)
    sd      s4,104(sp)
    sd      a0,168(sp)
    sw      a1,280(sp)
    sb      a2,279(sp)
    sd      a3,160(sp)
    sw      a4,284(sp)
    sd      a5,152(sp)
    sd      a6,144(sp)
    sd      a7,136(sp)
    ld      a0,168(sp)
    ld      a1,160(sp)
    ld      a2,152(sp)
    ld      a3,144(sp)
    ld      a4,136(sp)
    ld      a5,128(sp)
    ld      a6,120(sp)
    ld      a7,112(sp)
    call    mul
    sw      a0,100(sp)
    mv      a1, a0
    j       .while.head_55
.while.head_55:
    la      a2, N
    lw      a3,0(a2)
    slt     a4,a1,a3
    bnez    a4, .while.body_55
    j       .while.exit_55
.while.body_55:
    li      a2, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,312
    flw     fa0,0(a2)
    fcvt.w.s a7,fa0,rtz
    mv      s1, a7
    sw      s1,96(sp)
    sw      a0,100(sp)
    sw      a1,284(sp)
    sd      a2,80(sp)
    sw      a3,92(sp)
    sb      a4,91(sp)
    sw      a7,72(sp)
    fsw     fa0,76(sp)
    lw      a0,96(sp)
    call    putint
    lw      a0,284(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,68(sp)
    sw      a0,284(sp)
    lw      a1,284(sp)
    lw      a0,100(sp)
    j       .while.head_55
.while.exit_55:
    li      a2, 10
    li      a1, 0
    sw      a0,100(sp)
    sw      a1,284(sp)
    sw      a2,96(sp)
    sw      a3,92(sp)
    sb      a4,91(sp)
    lw      a0,96(sp)
    call    putch
    j       .while.head_64
.while.head_64:
    la      a0, N
    lw      a1,0(a0)
    lw      a2,284(sp)
    slt     a3,a2,a1
    bnez    a3, .while.body_64
    j       .while.exit_64
.while.body_64:
    li      a0, 0
    li      a4, 1
    mul     a5,a4,a2
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,300
    flw     fa0,0(a0)
    fcvt.w.s a6,fa0,rtz
    mv      a7, a6
    sd      a0,48(sp)
    sw      a1,64(sp)
    sw      a2,284(sp)
    sb      a3,63(sp)
    sw      a6,40(sp)
    sw      a7,96(sp)
    fsw     fa0,44(sp)
    lw      a0,96(sp)
    call    putint
    lw      a0,284(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,36(sp)
    sw      a0,284(sp)
    j       .while.head_64
.while.exit_64:
    li      a0, 10
    li      a2, 0
    sw      a0,96(sp)
    sw      a1,64(sp)
    sw      a2,284(sp)
    sb      a3,63(sp)
    lw      a0,96(sp)
    call    putch
    j       .while.head_73
.while.head_73:
    la      a0, N
    lw      a1,0(a0)
    lw      a2,284(sp)
    slt     a3,a2,a1
    bnez    a3, .while.body_73
    j       .while.exit_73
.while.body_73:
    li      a0, 0
    li      a4, 1
    mul     a5,a4,a2
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,288
    flw     fa0,0(a0)
    fcvt.w.s a6,fa0,rtz
    mv      a7, a6
    sd      a0,16(sp)
    sw      a1,32(sp)
    sw      a2,284(sp)
    sb      a3,31(sp)
    sw      a6,8(sp)
    sw      a7,96(sp)
    fsw     fa0,12(sp)
    lw      a0,96(sp)
    call    putint
    lw      a0,284(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a2,4(sp)
    sw      a0,284(sp)
    j       .while.head_73
.while.exit_73:
    li      a0, 10
    sw      a0,96(sp)
    sw      a1,32(sp)
    sw      a2,284(sp)
    sb      a3,31(sp)
    lw      a0,96(sp)
    call    putch
    ld      ra,416(sp)
    ld      s0,408(sp)
    li      a0, 0
    addi    sp,sp,424
    ret
.section ___var
    .data
    .align 4
    .globl N
    .type N,@object
N:
    .word 0
    .align 4
    .globl L
    .type L,@object
L:
    .word 0
    .align 4
    .globl M
    .type M,@object
M:
    .word 0
