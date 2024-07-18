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
    .globl params_f40
    .type params_f40,@function
params_f40:
    addi    sp,sp,-480
    sd      ra,344(sp)
    sd      s0,336(sp)
    addi    s0,sp,480
.L6_0:
    li      a0, 0
    fcvt.s.w f8,a0,rtz
    flw     f9,352(sp)
    feq.s   a1,f9,f8
    seqz    a1, a1
    bnez    a1, .branch_true_21
    j       .branch_false_21
.branch_true_21:
    fadd.s  f18,fa0,fa1
    fadd.s  f19,f18,fa2
    fadd.s  f20,f19,fa3
    fadd.s  f21,fa4,fa5
    fadd.s  f22,f21,fa6
    fadd.s  f23,f22,fa7
    flw     f24,476(sp)
    flw     f25,472(sp)
    fadd.s  f26,f24,f25
    flw     f27,468(sp)
    fadd.s  f28,f26,f27
    fsw     f26,264(sp)
    fsw     f27,468(sp)
    flw     f26,464(sp)
    fadd.s  f27,f28,f26
    fsw     f28,260(sp)
    fsw     f26,464(sp)
    flw     f26,460(sp)
    flw     f28,456(sp)
    fadd.s  f29,f26,f28
    fsw     f26,460(sp)
    fsw     f28,456(sp)
    fsw     f29,252(sp)
    flw     f26,252(sp)
    flw     f28,452(sp)
    fadd.s  f29,f26,f28
    fsw     f26,252(sp)
    fsw     f28,452(sp)
    fsw     f29,248(sp)
    flw     f26,248(sp)
    flw     f28,448(sp)
    fadd.s  f29,f26,f28
    fsw     f26,248(sp)
    fsw     f28,448(sp)
    fsw     f29,244(sp)
    flw     f26,444(sp)
    flw     f28,440(sp)
    fadd.s  f29,f26,f28
    fsw     f26,444(sp)
    fsw     f28,440(sp)
    fsw     f29,240(sp)
    flw     f26,240(sp)
    flw     f28,436(sp)
    fadd.s  f29,f26,f28
    fsw     f26,240(sp)
    fsw     f28,436(sp)
    fsw     f29,236(sp)
    flw     f26,236(sp)
    flw     f28,432(sp)
    fadd.s  f29,f26,f28
    fsw     f26,236(sp)
    fsw     f28,432(sp)
    fsw     f29,232(sp)
    flw     f26,428(sp)
    flw     f28,424(sp)
    fadd.s  f29,f26,f28
    fsw     f26,428(sp)
    fsw     f28,424(sp)
    fsw     f29,228(sp)
    flw     f26,228(sp)
    flw     f28,420(sp)
    fadd.s  f29,f26,f28
    fsw     f26,228(sp)
    fsw     f28,420(sp)
    fsw     f29,224(sp)
    flw     f26,224(sp)
    flw     f28,416(sp)
    fadd.s  f29,f26,f28
    fsw     f26,224(sp)
    fsw     f28,416(sp)
    fsw     f29,220(sp)
    flw     f26,412(sp)
    flw     f28,408(sp)
    fadd.s  f29,f26,f28
    fsw     f26,412(sp)
    fsw     f28,408(sp)
    fsw     f29,216(sp)
    flw     f26,216(sp)
    flw     f28,404(sp)
    fadd.s  f29,f26,f28
    fsw     f26,216(sp)
    fsw     f28,404(sp)
    fsw     f29,212(sp)
    flw     f26,212(sp)
    flw     f28,400(sp)
    fadd.s  f29,f26,f28
    fsw     f26,212(sp)
    fsw     f28,400(sp)
    fsw     f29,208(sp)
    flw     f26,396(sp)
    flw     f28,392(sp)
    fadd.s  f29,f26,f28
    fsw     f26,396(sp)
    fsw     f28,392(sp)
    fsw     f29,204(sp)
    flw     f26,204(sp)
    flw     f28,388(sp)
    fadd.s  f29,f26,f28
    fsw     f26,204(sp)
    fsw     f28,388(sp)
    fsw     f29,200(sp)
    flw     f26,200(sp)
    flw     f28,384(sp)
    fadd.s  f29,f26,f28
    fsw     f26,200(sp)
    fsw     f28,384(sp)
    fsw     f29,196(sp)
    flw     f26,380(sp)
    flw     f28,376(sp)
    fadd.s  f29,f26,f28
    fsw     f26,380(sp)
    fsw     f28,376(sp)
    fsw     f29,192(sp)
    flw     f26,192(sp)
    flw     f28,372(sp)
    fadd.s  f29,f26,f28
    fsw     f26,192(sp)
    fsw     f28,372(sp)
    fsw     f29,188(sp)
    flw     f26,188(sp)
    flw     f28,368(sp)
    fadd.s  f29,f26,f28
    fsw     f26,188(sp)
    fsw     f28,368(sp)
    fsw     f29,184(sp)
    flw     f26,364(sp)
    flw     f28,360(sp)
    fadd.s  f29,f26,f28
    fsw     f26,364(sp)
    fsw     f28,360(sp)
    fsw     f29,180(sp)
    flw     f26,180(sp)
    flw     f28,356(sp)
    fadd.s  f29,f26,f28
    fsw     f26,180(sp)
    fsw     f28,356(sp)
    fsw     f29,176(sp)
    flw     f26,176(sp)
    fadd.s  f28,f26,f9
    fsw     f26,176(sp)
    fsw     f9,352(sp)
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,40
    sd      a0,160(sp)
    sb      a1,7(sp)
    fsw     f8,8(sp)
    fsw     f18,288(sp)
    fsw     f19,284(sp)
    fsw     f20,280(sp)
    fsw     f21,276(sp)
    fsw     f22,272(sp)
    fsw     f23,268(sp)
    fsw     f24,476(sp)
    fsw     f25,472(sp)
    fsw     f27,256(sp)
    fsw     f28,172(sp)
    fsw     fa0,332(sp)
    fsw     fa1,328(sp)
    fsw     fa2,324(sp)
    fsw     fa3,320(sp)
    fsw     fa4,316(sp)
    fsw     fa5,312(sp)
    fsw     fa6,308(sp)
    fsw     fa7,304(sp)
    ld      a0,160(sp)
    li      a1, 0
    li      a2, 40
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 4
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,40
    flw     fa0,232(sp)
    fsw     fa0,0(a0)
    li      a4, 0
    li      a5, 2
    mul     a6,a1,a5
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,40
    flw     fa1,256(sp)
    fsw     fa1,0(a4)
    li      a7, 0
    li      s1, 5
    mul     s2,a1,s1
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,40
    flw     fa2,220(sp)
    fsw     fa2,0(a7)
    li      s3, 0
    li      s4, 6
    mul     s5,a1,s4
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,40
    flw     fa3,208(sp)
    fsw     fa3,0(s3)
    li      s6, 0
    li      s7, 7
    mul     s8,a1,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,40
    flw     fa4,196(sp)
    fsw     fa4,0(s6)
    li      a1, 0
    li      s7, 1
    li      s8, 0
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,40
    sd      a1,112(sp)
    ld      a1,112(sp)
    flw     fa5,280(sp)
    fsw     fa5,0(a1)
    sd      a1,112(sp)
    li      a1, 0
    li      s7, 1
    li      s8, 1
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,40
    sd      a1,104(sp)
    ld      a1,104(sp)
    flw     fa6,268(sp)
    fsw     fa6,0(a1)
    sd      a1,104(sp)
    li      a1, 0
    li      s7, 1
    li      s8, 3
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,40
    sd      a1,96(sp)
    ld      a1,96(sp)
    flw     fa7,244(sp)
    fsw     fa7,0(a1)
    sd      a1,96(sp)
    li      a1, 0
    li      s7, 1
    li      s8, 8
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,40
    sd      a1,88(sp)
    ld      a1,88(sp)
    flw     f8,184(sp)
    fsw     f8,0(a1)
    sd      a1,88(sp)
    li      a1, 0
    li      s7, 1
    li      s8, 9
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,40
    sd      a1,80(sp)
    ld      a1,80(sp)
    flw     f9,172(sp)
    fsw     f9,0(a1)
    sd      a1,80(sp)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,40
    sd      a1,32(sp)
    sd      s3,128(sp)
    sd      s6,120(sp)
    sd      a0,152(sp)
    sd      a4,144(sp)
    sd      a7,136(sp)
    fsw     f8,184(sp)
    fsw     f9,172(sp)
    fsw     fa0,232(sp)
    fsw     fa1,256(sp)
    fsw     fa2,220(sp)
    fsw     fa3,208(sp)
    fsw     fa4,196(sp)
    fsw     fa5,280(sp)
    fsw     fa6,268(sp)
    fsw     fa7,244(sp)
    li      a0, 10
    ld      a1,32(sp)
    call    putfarray
    la      a0, k
    lw      a1,0(a0)
    li      a2, 0
    li      a3, 1
    mul     a4,a3,a1
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,40
    flw     fa0,0(a2)
    ld      ra,344(sp)
    ld      s0,336(sp)
    fsw     fa0,12(sp)
    flw     fa0,12(sp)
    addi    sp,sp,480
    ret
.branch_false_21:
    fadd.s  f18,fa0,fa1
    fadd.s  f19,f18,fa2
    flw     f20,472(sp)
    fsw     f20,-4(sp)
    flw     f21,468(sp)
    fsw     f21,-8(sp)
    flw     f22,464(sp)
    fsw     f22,-12(sp)
    flw     f23,460(sp)
    fsw     f23,-16(sp)
    flw     f24,456(sp)
    fsw     f24,-20(sp)
    flw     f25,452(sp)
    fsw     f25,-24(sp)
    flw     f26,448(sp)
    fsw     f26,-28(sp)
    flw     f27,444(sp)
    fsw     f27,-32(sp)
    fsw     f27,444(sp)
    flw     f27,440(sp)
    fsw     f27,-36(sp)
    fsw     f27,440(sp)
    flw     f27,436(sp)
    fsw     f27,-40(sp)
    fsw     f27,436(sp)
    flw     f27,432(sp)
    fsw     f27,-44(sp)
    fsw     f27,432(sp)
    flw     f27,428(sp)
    fsw     f27,-48(sp)
    fsw     f27,428(sp)
    flw     f27,424(sp)
    fsw     f27,-52(sp)
    fsw     f27,424(sp)
    flw     f27,420(sp)
    fsw     f27,-56(sp)
    fsw     f27,420(sp)
    flw     f27,416(sp)
    fsw     f27,-60(sp)
    fsw     f27,416(sp)
    flw     f27,412(sp)
    fsw     f27,-64(sp)
    fsw     f27,412(sp)
    flw     f27,408(sp)
    fsw     f27,-68(sp)
    fsw     f27,408(sp)
    flw     f27,404(sp)
    fsw     f27,-72(sp)
    fsw     f27,404(sp)
    flw     f27,400(sp)
    fsw     f27,-76(sp)
    fsw     f27,400(sp)
    flw     f27,396(sp)
    fsw     f27,-80(sp)
    fsw     f27,396(sp)
    flw     f27,392(sp)
    fsw     f27,-84(sp)
    fsw     f27,392(sp)
    flw     f27,388(sp)
    fsw     f27,-88(sp)
    fsw     f27,388(sp)
    flw     f27,384(sp)
    fsw     f27,-92(sp)
    fsw     f27,384(sp)
    flw     f27,380(sp)
    fsw     f27,-96(sp)
    fsw     f27,380(sp)
    flw     f27,376(sp)
    fsw     f27,-100(sp)
    fsw     f27,376(sp)
    flw     f27,372(sp)
    fsw     f27,-104(sp)
    fsw     f27,372(sp)
    flw     f27,368(sp)
    fsw     f27,-108(sp)
    fsw     f27,368(sp)
    flw     f27,364(sp)
    fsw     f27,-112(sp)
    fsw     f27,364(sp)
    flw     f27,360(sp)
    fsw     f27,-116(sp)
    fsw     f27,360(sp)
    flw     f27,356(sp)
    fsw     f27,-120(sp)
    fsw     f27,356(sp)
    fsw     f9,-124(sp)
    fsw     f19,-128(sp)
    sb      a1,7(sp)
    fsw     f8,8(sp)
    fsw     f9,352(sp)
    fsw     f18,300(sp)
    fsw     f19,296(sp)
    fsw     f20,472(sp)
    fsw     f21,468(sp)
    fsw     f22,464(sp)
    fsw     f23,460(sp)
    fsw     f24,456(sp)
    fsw     f25,452(sp)
    fsw     f26,448(sp)
    fsw     fa0,332(sp)
    fsw     fa1,328(sp)
    fsw     fa2,324(sp)
    fsw     fa3,320(sp)
    fsw     fa4,316(sp)
    fsw     fa5,312(sp)
    fsw     fa6,308(sp)
    fsw     fa7,304(sp)
    flw     fa0,328(sp)
    flw     fa1,324(sp)
    flw     fa2,320(sp)
    flw     fa3,316(sp)
    flw     fa4,312(sp)
    flw     fa5,308(sp)
    flw     fa6,304(sp)
    flw     fa7,476(sp)
    call    params_f40
    ld      ra,344(sp)
    ld      s0,336(sp)
    fsw     fa0,292(sp)
    flw     fa0,292(sp)
    addi    sp,sp,480
    ret
    .globl params_f40_i24
    .type params_f40_i24,@function
params_f40_i24:
    addi    sp,sp,-792
    sd      ra,592(sp)
    sd      s0,584(sp)
    addi    s0,sp,792
.L5_0:
    li      s1, 0
    xor     s2,a0,s1
    snez    s2, s2
    bnez    s2, .branch_true_32
    j       .branch_false_32
.branch_true_32:
    flw     f8,684(sp)
    flw     f9,780(sp)
    fadd.s  f18,f8,f9
    flw     f19,608(sp)
    fadd.s  f20,f18,f19
    fadd.s  f21,f20,fa4
    flw     f22,708(sp)
    fadd.s  f23,fa0,f22
    flw     f24,768(sp)
    fadd.s  f25,f23,f24
    fadd.s  f26,f25,fa3
    flw     f27,736(sp)
    fadd.s  f28,fa1,f27
    fsw     fa1,552(sp)
    fsw     f27,736(sp)
    flw     fa1,688(sp)
    fadd.s  f27,f28,fa1
    fsw     f28,488(sp)
    fsw     fa1,688(sp)
    flw     fa1,776(sp)
    fadd.s  f28,f27,fa1
    fsw     f27,484(sp)
    fsw     fa1,776(sp)
    flw     fa1,784(sp)
    flw     f27,656(sp)
    fadd.s  f29,fa1,f27
    fsw     fa1,784(sp)
    fsw     f27,656(sp)
    fsw     f29,476(sp)
    flw     fa1,476(sp)
    flw     f27,692(sp)
    fadd.s  f29,fa1,f27
    fsw     fa1,476(sp)
    fsw     f27,692(sp)
    fsw     f29,472(sp)
    flw     fa1,472(sp)
    fadd.s  f27,fa1,fa2
    fsw     fa1,472(sp)
    fsw     fa2,548(sp)
    flw     fa1,712(sp)
    flw     fa2,616(sp)
    fadd.s  f29,fa1,fa2
    fsw     fa1,712(sp)
    fsw     fa2,616(sp)
    fsw     f29,464(sp)
    flw     fa1,464(sp)
    flw     fa2,636(sp)
    fadd.s  f29,fa1,fa2
    fsw     fa1,464(sp)
    fsw     fa2,636(sp)
    fsw     f29,460(sp)
    flw     fa1,460(sp)
    flw     fa2,632(sp)
    fadd.s  f29,fa1,fa2
    fsw     fa1,460(sp)
    fsw     fa2,632(sp)
    fsw     f29,456(sp)
    flw     fa1,748(sp)
    flw     fa2,716(sp)
    fadd.s  f29,fa1,fa2
    fsw     fa1,748(sp)
    fsw     fa2,716(sp)
    fsw     f29,452(sp)
    flw     fa1,452(sp)
    flw     fa2,628(sp)
    fadd.s  f29,fa1,fa2
    fsw     fa1,452(sp)
    fsw     fa2,628(sp)
    fsw     f29,448(sp)
    flw     fa1,448(sp)
    flw     fa2,740(sp)
    fadd.s  f29,fa1,fa2
    fsw     fa1,448(sp)
    fsw     fa2,740(sp)
    fsw     f29,444(sp)
    flw     fa1,660(sp)
    flw     fa2,732(sp)
    fadd.s  f29,fa1,fa2
    fsw     fa1,660(sp)
    fsw     fa2,732(sp)
    fsw     f29,440(sp)
    flw     fa1,440(sp)
    flw     fa2,624(sp)
    fadd.s  f29,fa1,fa2
    fsw     fa1,440(sp)
    fsw     fa2,624(sp)
    fsw     f29,436(sp)
    flw     fa1,436(sp)
    flw     fa2,664(sp)
    fadd.s  f29,fa1,fa2
    fsw     fa1,436(sp)
    fsw     fa2,664(sp)
    fsw     f29,432(sp)
    flw     fa1,652(sp)
    fadd.s  fa2,fa5,fa1
    fsw     fa5,532(sp)
    fsw     fa1,652(sp)
    fadd.s  fa1,fa2,fa7
    fsw     fa2,428(sp)
    flw     fa2,676(sp)
    fadd.s  fa5,fa1,fa2
    fsw     fa1,424(sp)
    fsw     fa2,676(sp)
    flw     fa1,760(sp)
    flw     fa2,744(sp)
    fadd.s  f29,fa1,fa2
    fsw     fa1,760(sp)
    fsw     fa2,744(sp)
    fsw     f29,416(sp)
    flw     fa1,416(sp)
    flw     fa2,704(sp)
    fadd.s  f29,fa1,fa2
    fsw     fa1,416(sp)
    fsw     fa2,704(sp)
    fsw     f29,412(sp)
    flw     fa1,412(sp)
    flw     fa2,600(sp)
    fadd.s  f29,fa1,fa2
    fsw     fa1,412(sp)
    fsw     fa2,600(sp)
    fsw     f29,408(sp)
    flw     fa1,620(sp)
    fadd.s  fa2,fa1,fa6
    fsw     fa1,620(sp)
    fsw     fa6,524(sp)
    flw     fa1,772(sp)
    fadd.s  fa6,fa2,fa1
    fsw     fa2,404(sp)
    fsw     fa1,772(sp)
    flw     fa1,724(sp)
    fadd.s  fa2,fa6,fa1
    fsw     fa6,400(sp)
    fsw     fa1,724(sp)
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,264
    sd      s1,384(sp)
    sb      s2,3(sp)
    sw      a0,580(sp)
    sw      a1,576(sp)
    sw      a2,572(sp)
    sw      a3,564(sp)
    sw      a4,560(sp)
    sw      a5,556(sp)
    sw      a6,540(sp)
    sw      a7,528(sp)
    fsw     f8,684(sp)
    fsw     f9,780(sp)
    fsw     f18,512(sp)
    fsw     f19,608(sp)
    fsw     f20,508(sp)
    fsw     f21,504(sp)
    fsw     f22,708(sp)
    fsw     f23,500(sp)
    fsw     f24,768(sp)
    fsw     f25,496(sp)
    fsw     f26,492(sp)
    fsw     f27,468(sp)
    fsw     f28,480(sp)
    fsw     fa0,568(sp)
    fsw     fa2,396(sp)
    fsw     fa3,544(sp)
    fsw     fa4,536(sp)
    fsw     fa5,420(sp)
    fsw     fa7,520(sp)
    ld      a0,384(sp)
    li      a1, 0
    li      a2, 40
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 9
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,264
    flw     fa0,396(sp)
    fsw     fa0,0(a0)
    li      a4, 0
    li      a5, 2
    mul     a6,a1,a5
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,264
    flw     fa1,480(sp)
    fsw     fa1,0(a4)
    li      a7, 0
    li      s1, 8
    mul     s2,a1,s1
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,264
    flw     fa2,408(sp)
    fsw     fa2,0(a7)
    li      s3, 0
    li      s4, 7
    mul     s5,a1,s4
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,264
    flw     fa3,420(sp)
    fsw     fa3,0(s3)
    li      s6, 0
    li      s7, 1
    mul     s8,a1,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,264
    flw     fa4,492(sp)
    fsw     fa4,0(s6)
    li      a1, 0
    li      s7, 1
    li      s8, 0
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    sd      a1,336(sp)
    ld      a1,336(sp)
    flw     fa5,504(sp)
    fsw     fa5,0(a1)
    sd      a1,336(sp)
    li      a1, 0
    li      s7, 1
    li      s8, 4
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    sd      a1,328(sp)
    ld      a1,328(sp)
    flw     fa6,456(sp)
    fsw     fa6,0(a1)
    sd      a1,328(sp)
    li      a1, 0
    li      s7, 1
    li      s8, 5
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    sd      a1,320(sp)
    ld      a1,320(sp)
    flw     fa7,444(sp)
    fsw     fa7,0(a1)
    sd      a1,320(sp)
    li      a1, 0
    li      s7, 1
    li      s8, 6
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    sd      a1,312(sp)
    ld      a1,312(sp)
    flw     f8,432(sp)
    fsw     f8,0(a1)
    sd      a1,312(sp)
    li      a1, 0
    li      s7, 1
    li      s8, 3
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    sd      a1,304(sp)
    ld      a1,304(sp)
    flw     f9,468(sp)
    fsw     f9,0(a1)
    sd      a1,304(sp)
    lw      a1,528(sp)
    lw      s7,564(sp)
    add     s8,a1,s7
    sw      a1,528(sp)
    sw      s7,564(sp)
    sw      s8,260(sp)
    lw      a1,260(sp)
    lw      s7,576(sp)
    add     s8,a1,s7
    sw      a1,260(sp)
    sw      s7,576(sp)
    sw      s8,256(sp)
    lw      a1,648(sp)
    lw      s7,560(sp)
    add     s8,a1,s7
    sw      a1,648(sp)
    sw      s7,560(sp)
    sw      s8,252(sp)
    lw      a1,252(sp)
    lw      s7,556(sp)
    add     s8,a1,s7
    sw      a1,252(sp)
    sw      s7,556(sp)
    sw      s8,248(sp)
    lw      a1,572(sp)
    lw      s7,764(sp)
    add     s8,a1,s7
    sw      a1,572(sp)
    sw      s7,764(sp)
    sw      s8,244(sp)
    lw      a1,244(sp)
    lw      s7,728(sp)
    add     s8,a1,s7
    sw      a1,244(sp)
    sw      s7,728(sp)
    sw      s8,240(sp)
    lw      a1,696(sp)
    lw      s7,756(sp)
    add     s8,a1,s7
    sw      a1,696(sp)
    sw      s7,756(sp)
    sw      s8,236(sp)
    lw      a1,236(sp)
    lw      s7,672(sp)
    add     s8,a1,s7
    sw      a1,236(sp)
    sw      s7,672(sp)
    sw      s8,232(sp)
    lw      a1,680(sp)
    lw      s7,752(sp)
    add     s8,a1,s7
    sw      a1,680(sp)
    sw      s7,752(sp)
    sw      s8,228(sp)
    lw      a1,228(sp)
    lw      s7,604(sp)
    add     s8,a1,s7
    sw      a1,228(sp)
    sw      s7,604(sp)
    sw      s8,224(sp)
    lw      a1,612(sp)
    lw      s7,668(sp)
    add     s8,a1,s7
    sw      a1,612(sp)
    sw      s7,668(sp)
    sw      s8,220(sp)
    lw      a1,220(sp)
    lw      s7,720(sp)
    add     s8,a1,s7
    sw      a1,220(sp)
    sw      s7,720(sp)
    sw      s8,216(sp)
    lw      a1,700(sp)
    lw      s7,788(sp)
    add     s8,a1,s7
    sw      a1,700(sp)
    sw      s7,788(sp)
    sw      s8,212(sp)
    lw      a1,212(sp)
    lw      s7,640(sp)
    add     s8,a1,s7
    sw      a1,212(sp)
    sw      s7,640(sp)
    sw      s8,208(sp)
    lw      a1,644(sp)
    lw      s7,540(sp)
    add     s8,a1,s7
    sw      a1,644(sp)
    sw      s7,540(sp)
    sw      s8,204(sp)
    lw      a1,204(sp)
    lw      s7,580(sp)
    add     s8,a1,s7
    sw      a1,204(sp)
    sw      s7,580(sp)
    sw      s8,200(sp)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,96
    sd      a1,192(sp)
    sd      s3,352(sp)
    sd      s6,344(sp)
    sd      a0,376(sp)
    sd      a4,368(sp)
    sd      a7,360(sp)
    fsw     f8,432(sp)
    fsw     f9,468(sp)
    fsw     fa0,396(sp)
    fsw     fa1,480(sp)
    fsw     fa2,408(sp)
    fsw     fa3,420(sp)
    fsw     fa4,492(sp)
    fsw     fa5,504(sp)
    fsw     fa6,456(sp)
    fsw     fa7,444(sp)
    ld      a0,192(sp)
    li      a1, 0
    li      a2, 32
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 6
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,96
    lw      a4,208(sp)
    sw      a4,0(a0)
    li      a5, 0
    li      a6, 4
    mul     a7,a1,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,96
    lw      s1,224(sp)
    sw      s1,0(a5)
    li      s2, 0
    li      s3, 2
    mul     s4,a1,s3
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,96
    lw      s5,240(sp)
    sw      s5,0(s2)
    li      s6, 0
    li      s7, 7
    mul     s8,a1,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,96
    lw      a1,200(sp)
    sw      a1,0(s6)
    sw      a1,200(sp)
    li      a1, 0
    li      s7, 1
    li      s8, 5
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,96
    sd      a1,152(sp)
    ld      a1,152(sp)
    lw      s7,216(sp)
    sw      s7,0(a1)
    sw      s7,216(sp)
    sd      a1,152(sp)
    li      a1, 0
    li      s7, 1
    li      s8, 3
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,96
    sd      a1,144(sp)
    ld      a1,144(sp)
    lw      s7,232(sp)
    sw      s7,0(a1)
    sw      s7,232(sp)
    sd      a1,144(sp)
    li      a1, 0
    li      s7, 1
    li      s8, 0
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,96
    sd      a1,136(sp)
    ld      a1,136(sp)
    lw      s7,256(sp)
    sw      s7,0(a1)
    sw      s7,256(sp)
    sd      a1,136(sp)
    li      a1, 0
    li      s7, 1
    li      s8, 1
    mul     s9,s7,s8
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,96
    sd      a1,128(sp)
    ld      a1,128(sp)
    lw      s7,248(sp)
    sw      s7,0(a1)
    sw      s7,248(sp)
    sd      a1,128(sp)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    sd      a1,88(sp)
    sw      s1,224(sp)
    sd      s2,168(sp)
    sw      s5,240(sp)
    sd      s6,160(sp)
    sd      a0,184(sp)
    sw      a4,208(sp)
    sd      a5,176(sp)
    li      a0, 10
    ld      a1,88(sp)
    call    putfarray
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,96
    sd      a0,80(sp)
    li      a0, 8
    ld      a1,80(sp)
    call    putarray
    li      a0, 0
    j       .while.head_40
.while.head_40:
    li      a1, 8
    slt     a2,a0,a1
    bnez    a2, .while.body_40
    j       .while.exit_40
.while.body_40:
    li      a1, 0
    li      a3, 1
    mul     a4,a3,a0
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,96
    li      a5, 0
    mul     a6,a3,a0
    add     a5,a5,a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,96
    lw      a7,0(a5)
    li      s1, 0
    mul     s2,a3,a0
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,264
    flw     fa0,0(s1)
    fcvt.s.w fa1,a7,rtz
    fsub.s  fa2,fa1,fa0
    fcvt.w.s s3,fa2,rtz
    sw      s3,0(a1)
    add     s4,a0,a3
    mv      a0, s4
    fsw     fa1,16(sp)
    fsw     fa2,12(sp)
    sd      s1,24(sp)
    sw      s3,8(sp)
    sd      a1,48(sp)
    fsw     fa0,20(sp)
    sw      s4,4(sp)
    sw      a7,36(sp)
    sb      a2,2(sp)
    sd      a5,40(sp)
    j       .while.head_40
.while.exit_40:
    la      a1, k
    lw      a3,0(a1)
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a3
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,96
    lw      a7,0(a4)
    ld      ra,592(sp)
    ld      s0,584(sp)
    sw      a7,60(sp)
    sw      a0,76(sp)
    lw      a0,60(sp)
    addi    sp,sp,792
    ret
.branch_false_32:
    lw      s1,788(sp)
    sw      s1,-4(sp)
    flw     f8,784(sp)
    fsw     f8,-8(sp)
    flw     f9,780(sp)
    fsw     f9,-12(sp)
    flw     f18,776(sp)
    fsw     f18,-16(sp)
    flw     f19,772(sp)
    fsw     f19,-20(sp)
    flw     f20,768(sp)
    fsw     f20,-24(sp)
    lw      s3,764(sp)
    sw      s3,-28(sp)
    flw     f21,760(sp)
    fsw     f21,-32(sp)
    lw      s4,756(sp)
    sw      s4,-36(sp)
    lw      s5,752(sp)
    sw      s5,-40(sp)
    flw     f22,748(sp)
    fsw     f22,-44(sp)
    flw     f23,744(sp)
    fsw     f23,-48(sp)
    flw     f24,740(sp)
    fsw     f24,-52(sp)
    flw     f25,736(sp)
    fsw     f25,-56(sp)
    flw     f26,732(sp)
    fsw     f26,-60(sp)
    lw      s6,728(sp)
    sw      s6,-64(sp)
    sw      s6,728(sp)
    flw     f27,724(sp)
    fsw     f27,-68(sp)
    fsw     f27,724(sp)
    lw      s6,720(sp)
    sw      s6,-72(sp)
    sw      s6,720(sp)
    flw     f27,716(sp)
    fsw     f27,-76(sp)
    fsw     f27,716(sp)
    flw     f27,712(sp)
    fsw     f27,-80(sp)
    fsw     f27,712(sp)
    flw     f27,708(sp)
    fsw     f27,-84(sp)
    fsw     f27,708(sp)
    flw     f27,704(sp)
    fsw     f27,-88(sp)
    fsw     f27,704(sp)
    lw      s6,700(sp)
    sw      s6,-92(sp)
    sw      s6,700(sp)
    lw      s6,696(sp)
    sw      s6,-96(sp)
    sw      s6,696(sp)
    flw     f27,692(sp)
    fsw     f27,-100(sp)
    fsw     f27,692(sp)
    flw     f27,688(sp)
    fsw     f27,-104(sp)
    fsw     f27,688(sp)
    flw     f27,684(sp)
    fsw     f27,-108(sp)
    fsw     f27,684(sp)
    lw      s6,680(sp)
    sw      s6,-112(sp)
    sw      s6,680(sp)
    flw     f27,676(sp)
    fsw     f27,-116(sp)
    fsw     f27,676(sp)
    lw      s6,672(sp)
    sw      s6,-120(sp)
    sw      s6,672(sp)
    lw      s6,668(sp)
    sw      s6,-124(sp)
    sw      s6,668(sp)
    flw     f27,664(sp)
    fsw     f27,-128(sp)
    fsw     f27,664(sp)
    flw     f27,660(sp)
    fsw     f27,-132(sp)
    fsw     f27,660(sp)
    flw     f27,656(sp)
    fsw     f27,-136(sp)
    fsw     f27,656(sp)
    flw     f27,652(sp)
    fsw     f27,-140(sp)
    fsw     f27,652(sp)
    lw      s6,648(sp)
    sw      s6,-144(sp)
    sw      s6,648(sp)
    lw      s6,644(sp)
    sw      s6,-148(sp)
    sw      s6,644(sp)
    lw      s6,640(sp)
    sw      s6,-152(sp)
    sw      s6,640(sp)
    flw     f27,636(sp)
    fsw     f27,-156(sp)
    fsw     f27,636(sp)
    flw     f27,632(sp)
    fsw     f27,-160(sp)
    fsw     f27,632(sp)
    flw     f27,628(sp)
    fsw     f27,-164(sp)
    fsw     f27,628(sp)
    flw     f27,624(sp)
    fsw     f27,-168(sp)
    fsw     f27,624(sp)
    flw     f27,620(sp)
    fsw     f27,-172(sp)
    fsw     f27,620(sp)
    flw     f27,616(sp)
    fsw     f27,-176(sp)
    fsw     f27,616(sp)
    lw      s6,612(sp)
    sw      s6,-180(sp)
    sw      s6,612(sp)
    flw     f27,608(sp)
    fsw     f27,-184(sp)
    fsw     f27,608(sp)
    lw      s6,604(sp)
    sw      s6,-188(sp)
    sw      s6,604(sp)
    flw     f27,600(sp)
    fsw     f27,-192(sp)
    fsw     f27,600(sp)
    sw      s1,788(sp)
    sb      s2,3(sp)
    sw      s3,764(sp)
    sw      s4,756(sp)
    sw      s5,752(sp)
    sw      a0,580(sp)
    sw      a1,576(sp)
    sw      a2,572(sp)
    sw      a3,564(sp)
    sw      a4,560(sp)
    sw      a5,556(sp)
    sw      a6,540(sp)
    sw      a7,528(sp)
    fsw     f8,784(sp)
    fsw     f9,780(sp)
    fsw     f18,776(sp)
    fsw     f19,772(sp)
    fsw     f20,768(sp)
    fsw     f21,760(sp)
    fsw     f22,748(sp)
    fsw     f23,744(sp)
    fsw     f24,740(sp)
    fsw     f25,736(sp)
    fsw     f26,732(sp)
    fsw     fa0,568(sp)
    fsw     fa1,552(sp)
    fsw     fa2,548(sp)
    fsw     fa3,544(sp)
    fsw     fa4,536(sp)
    fsw     fa5,532(sp)
    fsw     fa6,524(sp)
    fsw     fa7,520(sp)
    flw     fa0,568(sp)
    flw     fa1,552(sp)
    flw     fa2,548(sp)
    flw     fa3,544(sp)
    flw     fa4,536(sp)
    flw     fa5,532(sp)
    flw     fa6,524(sp)
    flw     fa7,520(sp)
    lw      a0,564(sp)
    lw      a1,576(sp)
    lw      a2,572(sp)
    lw      a3,564(sp)
    lw      a4,560(sp)
    lw      a5,556(sp)
    lw      a6,540(sp)
    lw      a7,528(sp)
    call    params_f40_i24
    ld      ra,592(sp)
    ld      s0,584(sp)
    fsw     fa0,516(sp)
    flw     fa0,516(sp)
    addi    sp,sp,792
    ret
    .globl params_fa40
    .type params_fa40,@function
params_fa40:
    addi    sp,sp,-1432
    sd      ra,1168(sp)
    sd      s0,1160(sp)
    addi    s0,sp,1432
.L3_0:
    la      s1, k
    lw      s2,0(s1)
    li      s3, 0
    li      s4, 1
    mul     s5,s4,s2
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,a0
    flw     fa0,0(s3)
    la      s6, k
    lw      s7,0(s6)
    sw      s7,1072(sp)
    li      s7, 0
    lw      s8,1072(sp)
    mul     s9,s4,s8
    sw      s8,1072(sp)
    add     s7,s7,s9
    slli s7,s7,2
    add     s7,s7,a1
    flw     fa1,0(s7)
    fadd.s  fa2,fa0,fa1
    la      s4, k
    lw      s8,0(s4)
    sw      s8,1052(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,1052(sp)
    mul     s10,s8,s9
    sw      s9,1052(sp)
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,a2
    sd      a2,1136(sp)
    flw     fa3,0(s4)
    fadd.s  fa4,fa2,fa3
    la      a2, k
    lw      s8,0(a2)
    sw      s8,1028(sp)
    li      a2, 0
    li      s8, 1
    lw      s9,1028(sp)
    mul     s10,s8,s9
    sw      s9,1028(sp)
    add     a2,a2,s10
    slli a2,a2,2
    add     a2,a2,a3
    sd      a3,1128(sp)
    flw     fa5,0(a2)
    fadd.s  fa6,fa4,fa5
    la      a3, k
    lw      s8,0(a3)
    sw      s8,1004(sp)
    li      a3, 0
    li      s8, 1
    lw      s9,1004(sp)
    mul     s10,s8,s9
    sw      s9,1004(sp)
    add     a3,a3,s10
    slli a3,a3,2
    add     a3,a3,a4
    sd      a4,1120(sp)
    flw     fa7,0(a3)
    la      a4, k
    lw      s8,0(a4)
    sw      s8,984(sp)
    li      a4, 0
    li      s8, 1
    lw      s9,984(sp)
    mul     s10,s8,s9
    sw      s9,984(sp)
    add     a4,a4,s10
    slli a4,a4,2
    add     a4,a4,a5
    sd      a5,1112(sp)
    flw     f8,0(a4)
    fadd.s  f9,fa7,f8
    la      a5, k
    lw      s8,0(a5)
    sw      s8,964(sp)
    li      a5, 0
    li      s8, 1
    lw      s9,964(sp)
    mul     s10,s8,s9
    sw      s9,964(sp)
    add     a5,a5,s10
    slli a5,a5,2
    add     a5,a5,a6
    sd      a6,1104(sp)
    flw     f18,0(a5)
    fadd.s  f19,f9,f18
    la      a6, k
    lw      s8,0(a6)
    sw      s8,940(sp)
    li      a6, 0
    li      s8, 1
    lw      s9,940(sp)
    mul     s10,s8,s9
    sw      s9,940(sp)
    add     a6,a6,s10
    slli a6,a6,2
    add     a6,a6,a7
    sd      a7,1096(sp)
    flw     f20,0(a6)
    fadd.s  f21,f19,f20
    la      a7, k
    lw      s8,0(a7)
    sw      s8,916(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,916(sp)
    mul     s10,s8,s9
    sw      s9,916(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1424(sp)
    add     a7,a7,s8
    sd      s8,1424(sp)
    sd      a7,904(sp)
    ld      a7,904(sp)
    flw     f22,0(a7)
    sd      a7,904(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,896(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,896(sp)
    mul     s10,s8,s9
    sw      s9,896(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1416(sp)
    add     a7,a7,s8
    sd      s8,1416(sp)
    sd      a7,888(sp)
    ld      a7,888(sp)
    flw     f23,0(a7)
    sd      a7,888(sp)
    fadd.s  f24,f22,f23
    la      a7, k
    lw      s8,0(a7)
    sw      s8,876(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,876(sp)
    mul     s10,s8,s9
    sw      s9,876(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1408(sp)
    add     a7,a7,s8
    sd      s8,1408(sp)
    sd      a7,864(sp)
    ld      a7,864(sp)
    flw     f25,0(a7)
    sd      a7,864(sp)
    fadd.s  f26,f24,f25
    la      a7, k
    lw      s8,0(a7)
    sw      s8,852(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,852(sp)
    mul     s10,s8,s9
    sw      s9,852(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1400(sp)
    add     a7,a7,s8
    sd      s8,1400(sp)
    sd      a7,840(sp)
    ld      a7,840(sp)
    flw     f27,0(a7)
    fsw     f27,836(sp)
    sd      a7,840(sp)
    flw     f27,836(sp)
    fadd.s  f28,f26,f27
    fsw     f26,856(sp)
    fsw     f27,836(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,828(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,828(sp)
    mul     s10,s8,s9
    sw      s9,828(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1392(sp)
    add     a7,a7,s8
    sd      s8,1392(sp)
    sd      a7,816(sp)
    ld      a7,816(sp)
    flw     f26,0(a7)
    fsw     f26,812(sp)
    sd      a7,816(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,808(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,808(sp)
    mul     s10,s8,s9
    sw      s9,808(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1384(sp)
    add     a7,a7,s8
    sd      s8,1384(sp)
    sd      a7,800(sp)
    ld      a7,800(sp)
    flw     f26,0(a7)
    fsw     f26,796(sp)
    sd      a7,800(sp)
    flw     f26,812(sp)
    flw     f27,796(sp)
    fadd.s  f29,f26,f27
    fsw     f26,812(sp)
    fsw     f27,796(sp)
    fsw     f29,792(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,788(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,788(sp)
    mul     s10,s8,s9
    sw      s9,788(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1376(sp)
    add     a7,a7,s8
    sd      s8,1376(sp)
    sd      a7,776(sp)
    ld      a7,776(sp)
    flw     f26,0(a7)
    fsw     f26,772(sp)
    sd      a7,776(sp)
    flw     f26,792(sp)
    flw     f27,772(sp)
    fadd.s  f29,f26,f27
    fsw     f26,792(sp)
    fsw     f27,772(sp)
    fsw     f29,768(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,764(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,764(sp)
    mul     s10,s8,s9
    sw      s9,764(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1368(sp)
    add     a7,a7,s8
    sd      s8,1368(sp)
    sd      a7,752(sp)
    ld      a7,752(sp)
    flw     f26,0(a7)
    fsw     f26,748(sp)
    sd      a7,752(sp)
    flw     f26,768(sp)
    flw     f27,748(sp)
    fadd.s  f29,f26,f27
    fsw     f26,768(sp)
    fsw     f27,748(sp)
    fsw     f29,744(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,740(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,740(sp)
    mul     s10,s8,s9
    sw      s9,740(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1360(sp)
    add     a7,a7,s8
    sd      s8,1360(sp)
    sd      a7,728(sp)
    ld      a7,728(sp)
    flw     f26,0(a7)
    fsw     f26,724(sp)
    sd      a7,728(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,720(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,720(sp)
    mul     s10,s8,s9
    sw      s9,720(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1352(sp)
    add     a7,a7,s8
    sd      s8,1352(sp)
    sd      a7,712(sp)
    ld      a7,712(sp)
    flw     f26,0(a7)
    fsw     f26,708(sp)
    sd      a7,712(sp)
    flw     f26,724(sp)
    flw     f27,708(sp)
    fadd.s  f29,f26,f27
    fsw     f26,724(sp)
    fsw     f27,708(sp)
    fsw     f29,704(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,700(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,700(sp)
    mul     s10,s8,s9
    sw      s9,700(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1344(sp)
    add     a7,a7,s8
    sd      s8,1344(sp)
    sd      a7,688(sp)
    ld      a7,688(sp)
    flw     f26,0(a7)
    fsw     f26,684(sp)
    sd      a7,688(sp)
    flw     f26,704(sp)
    flw     f27,684(sp)
    fadd.s  f29,f26,f27
    fsw     f26,704(sp)
    fsw     f27,684(sp)
    fsw     f29,680(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,676(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,676(sp)
    mul     s10,s8,s9
    sw      s9,676(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1336(sp)
    add     a7,a7,s8
    sd      s8,1336(sp)
    sd      a7,664(sp)
    ld      a7,664(sp)
    flw     f26,0(a7)
    fsw     f26,660(sp)
    sd      a7,664(sp)
    flw     f26,680(sp)
    flw     f27,660(sp)
    fadd.s  f29,f26,f27
    fsw     f26,680(sp)
    fsw     f27,660(sp)
    fsw     f29,656(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,652(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,652(sp)
    mul     s10,s8,s9
    sw      s9,652(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1328(sp)
    add     a7,a7,s8
    sd      s8,1328(sp)
    sd      a7,640(sp)
    ld      a7,640(sp)
    flw     f26,0(a7)
    fsw     f26,636(sp)
    sd      a7,640(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,632(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,632(sp)
    mul     s10,s8,s9
    sw      s9,632(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1320(sp)
    add     a7,a7,s8
    sd      s8,1320(sp)
    sd      a7,624(sp)
    ld      a7,624(sp)
    flw     f26,0(a7)
    fsw     f26,620(sp)
    sd      a7,624(sp)
    flw     f26,636(sp)
    flw     f27,620(sp)
    fadd.s  f29,f26,f27
    fsw     f26,636(sp)
    fsw     f27,620(sp)
    fsw     f29,616(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,612(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,612(sp)
    mul     s10,s8,s9
    sw      s9,612(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1312(sp)
    add     a7,a7,s8
    sd      s8,1312(sp)
    sd      a7,600(sp)
    ld      a7,600(sp)
    flw     f26,0(a7)
    fsw     f26,596(sp)
    sd      a7,600(sp)
    flw     f26,616(sp)
    flw     f27,596(sp)
    fadd.s  f29,f26,f27
    fsw     f26,616(sp)
    fsw     f27,596(sp)
    fsw     f29,592(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,588(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,588(sp)
    mul     s10,s8,s9
    sw      s9,588(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1304(sp)
    add     a7,a7,s8
    sd      s8,1304(sp)
    sd      a7,576(sp)
    ld      a7,576(sp)
    flw     f26,0(a7)
    fsw     f26,572(sp)
    sd      a7,576(sp)
    flw     f26,592(sp)
    flw     f27,572(sp)
    fadd.s  f29,f26,f27
    fsw     f26,592(sp)
    fsw     f27,572(sp)
    fsw     f29,568(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,564(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,564(sp)
    mul     s10,s8,s9
    sw      s9,564(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1296(sp)
    add     a7,a7,s8
    sd      s8,1296(sp)
    sd      a7,552(sp)
    ld      a7,552(sp)
    flw     f26,0(a7)
    fsw     f26,548(sp)
    sd      a7,552(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,544(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,544(sp)
    mul     s10,s8,s9
    sw      s9,544(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1288(sp)
    add     a7,a7,s8
    sd      s8,1288(sp)
    sd      a7,536(sp)
    ld      a7,536(sp)
    flw     f26,0(a7)
    fsw     f26,532(sp)
    sd      a7,536(sp)
    flw     f26,548(sp)
    flw     f27,532(sp)
    fadd.s  f29,f26,f27
    fsw     f26,548(sp)
    fsw     f27,532(sp)
    fsw     f29,528(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,524(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,524(sp)
    mul     s10,s8,s9
    sw      s9,524(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1280(sp)
    add     a7,a7,s8
    sd      s8,1280(sp)
    sd      a7,512(sp)
    ld      a7,512(sp)
    flw     f26,0(a7)
    fsw     f26,508(sp)
    sd      a7,512(sp)
    flw     f26,528(sp)
    flw     f27,508(sp)
    fadd.s  f29,f26,f27
    fsw     f26,528(sp)
    fsw     f27,508(sp)
    fsw     f29,504(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,500(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,500(sp)
    mul     s10,s8,s9
    sw      s9,500(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1272(sp)
    add     a7,a7,s8
    sd      s8,1272(sp)
    sd      a7,488(sp)
    ld      a7,488(sp)
    flw     f26,0(a7)
    fsw     f26,484(sp)
    sd      a7,488(sp)
    flw     f26,504(sp)
    flw     f27,484(sp)
    fadd.s  f29,f26,f27
    fsw     f26,504(sp)
    fsw     f27,484(sp)
    fsw     f29,480(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,476(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,476(sp)
    mul     s10,s8,s9
    sw      s9,476(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1264(sp)
    add     a7,a7,s8
    sd      s8,1264(sp)
    sd      a7,464(sp)
    ld      a7,464(sp)
    flw     f26,0(a7)
    fsw     f26,460(sp)
    sd      a7,464(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,456(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,456(sp)
    mul     s10,s8,s9
    sw      s9,456(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1256(sp)
    add     a7,a7,s8
    sd      s8,1256(sp)
    sd      a7,448(sp)
    ld      a7,448(sp)
    flw     f26,0(a7)
    fsw     f26,444(sp)
    sd      a7,448(sp)
    flw     f26,460(sp)
    flw     f27,444(sp)
    fadd.s  f29,f26,f27
    fsw     f26,460(sp)
    fsw     f27,444(sp)
    fsw     f29,440(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,436(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,436(sp)
    mul     s10,s8,s9
    sw      s9,436(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1248(sp)
    add     a7,a7,s8
    sd      s8,1248(sp)
    sd      a7,424(sp)
    ld      a7,424(sp)
    flw     f26,0(a7)
    fsw     f26,420(sp)
    sd      a7,424(sp)
    flw     f26,440(sp)
    flw     f27,420(sp)
    fadd.s  f29,f26,f27
    fsw     f26,440(sp)
    fsw     f27,420(sp)
    fsw     f29,416(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,412(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,412(sp)
    mul     s10,s8,s9
    sw      s9,412(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1240(sp)
    add     a7,a7,s8
    sd      s8,1240(sp)
    sd      a7,400(sp)
    ld      a7,400(sp)
    flw     f26,0(a7)
    fsw     f26,396(sp)
    sd      a7,400(sp)
    flw     f26,416(sp)
    flw     f27,396(sp)
    fadd.s  f29,f26,f27
    fsw     f26,416(sp)
    fsw     f27,396(sp)
    fsw     f29,392(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,388(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,388(sp)
    mul     s10,s8,s9
    sw      s9,388(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1232(sp)
    add     a7,a7,s8
    sd      s8,1232(sp)
    sd      a7,376(sp)
    ld      a7,376(sp)
    flw     f26,0(a7)
    fsw     f26,372(sp)
    sd      a7,376(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,368(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,368(sp)
    mul     s10,s8,s9
    sw      s9,368(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1224(sp)
    add     a7,a7,s8
    sd      s8,1224(sp)
    sd      a7,360(sp)
    ld      a7,360(sp)
    flw     f26,0(a7)
    fsw     f26,356(sp)
    sd      a7,360(sp)
    flw     f26,372(sp)
    flw     f27,356(sp)
    fadd.s  f29,f26,f27
    fsw     f26,372(sp)
    fsw     f27,356(sp)
    fsw     f29,352(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,348(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,348(sp)
    mul     s10,s8,s9
    sw      s9,348(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1216(sp)
    add     a7,a7,s8
    sd      s8,1216(sp)
    sd      a7,336(sp)
    ld      a7,336(sp)
    flw     f26,0(a7)
    fsw     f26,332(sp)
    sd      a7,336(sp)
    flw     f26,352(sp)
    flw     f27,332(sp)
    fadd.s  f29,f26,f27
    fsw     f26,352(sp)
    fsw     f27,332(sp)
    fsw     f29,328(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,324(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,324(sp)
    mul     s10,s8,s9
    sw      s9,324(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1208(sp)
    add     a7,a7,s8
    sd      s8,1208(sp)
    sd      a7,312(sp)
    ld      a7,312(sp)
    flw     f26,0(a7)
    fsw     f26,308(sp)
    sd      a7,312(sp)
    flw     f26,328(sp)
    flw     f27,308(sp)
    fadd.s  f29,f26,f27
    fsw     f26,328(sp)
    fsw     f27,308(sp)
    fsw     f29,304(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,300(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,300(sp)
    mul     s10,s8,s9
    sw      s9,300(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1200(sp)
    add     a7,a7,s8
    sd      s8,1200(sp)
    sd      a7,288(sp)
    ld      a7,288(sp)
    flw     f26,0(a7)
    fsw     f26,284(sp)
    sd      a7,288(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,280(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,280(sp)
    mul     s10,s8,s9
    sw      s9,280(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1192(sp)
    add     a7,a7,s8
    sd      s8,1192(sp)
    sd      a7,272(sp)
    ld      a7,272(sp)
    flw     f26,0(a7)
    fsw     f26,268(sp)
    sd      a7,272(sp)
    flw     f26,284(sp)
    flw     f27,268(sp)
    fadd.s  f29,f26,f27
    fsw     f26,284(sp)
    fsw     f27,268(sp)
    fsw     f29,264(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,260(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,260(sp)
    mul     s10,s8,s9
    sw      s9,260(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1184(sp)
    add     a7,a7,s8
    sd      s8,1184(sp)
    sd      a7,248(sp)
    ld      a7,248(sp)
    flw     f26,0(a7)
    fsw     f26,244(sp)
    sd      a7,248(sp)
    flw     f26,264(sp)
    flw     f27,244(sp)
    fadd.s  f29,f26,f27
    fsw     f26,264(sp)
    fsw     f27,244(sp)
    fsw     f29,240(sp)
    la      a7, k
    lw      s8,0(a7)
    sw      s8,236(sp)
    li      a7, 0
    li      s8, 1
    lw      s9,236(sp)
    mul     s10,s8,s9
    sw      s9,236(sp)
    add     a7,a7,s10
    slli a7,a7,2
    ld      s8,1176(sp)
    add     a7,a7,s8
    sd      s8,1176(sp)
    sd      a7,224(sp)
    ld      a7,224(sp)
    flw     f26,0(a7)
    fsw     f26,220(sp)
    sd      a7,224(sp)
    flw     f26,240(sp)
    flw     f27,220(sp)
    fadd.s  f29,f26,f27
    fsw     f26,240(sp)
    fsw     f27,220(sp)
    fsw     f29,216(sp)
    li      a7, 0
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,88
    sd      a7,208(sp)
    sw      s2,1092(sp)
    sd      s3,1080(sp)
    sd      s4,1040(sp)
    sd      s7,1064(sp)
    sd      a0,1152(sp)
    sd      a1,1144(sp)
    sd      a2,1016(sp)
    sd      a3,992(sp)
    sd      a4,976(sp)
    sd      a5,952(sp)
    sd      a6,928(sp)
    fsw     f8,972(sp)
    fsw     f9,968(sp)
    fsw     f18,948(sp)
    fsw     f19,944(sp)
    fsw     f20,924(sp)
    fsw     f21,920(sp)
    fsw     f22,900(sp)
    fsw     f23,884(sp)
    fsw     f24,880(sp)
    fsw     f25,860(sp)
    fsw     f28,832(sp)
    fsw     fa0,1076(sp)
    fsw     fa1,1060(sp)
    fsw     fa2,1056(sp)
    fsw     fa3,1036(sp)
    fsw     fa4,1032(sp)
    fsw     fa5,1012(sp)
    fsw     fa6,1008(sp)
    fsw     fa7,988(sp)
    ld      a0,208(sp)
    li      a1, 0
    li      a2, 40
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 5
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,88
    flw     fa0,568(sp)
    fsw     fa0,0(a0)
    li      a4, 0
    li      a5, 7
    mul     a6,a1,a5
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,88
    flw     fa1,392(sp)
    fsw     fa1,0(a4)
    li      a7, 0
    li      s1, 4
    mul     s2,a1,s1
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,88
    flw     fa2,656(sp)
    fsw     fa2,0(a7)
    li      s3, 0
    li      s4, 0
    mul     s5,a1,s4
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,88
    flw     fa3,1008(sp)
    fsw     fa3,0(s3)
    li      s6, 0
    li      s7, 3
    mul     s8,a1,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,88
    flw     fa4,744(sp)
    fsw     fa4,0(s6)
    li      a1, 0
    li      s7, 1
    li      s9, 9
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,88
    sd      a1,160(sp)
    ld      a1,160(sp)
    flw     fa5,216(sp)
    fsw     fa5,0(a1)
    sd      a1,160(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 1
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,88
    sd      a1,152(sp)
    ld      a1,152(sp)
    flw     fa6,920(sp)
    fsw     fa6,0(a1)
    sd      a1,152(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 2
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,88
    sd      a1,144(sp)
    ld      a1,144(sp)
    flw     fa7,832(sp)
    fsw     fa7,0(a1)
    sd      a1,144(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 6
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,88
    sd      a1,136(sp)
    ld      a1,136(sp)
    flw     f8,480(sp)
    fsw     f8,0(a1)
    sd      a1,136(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 8
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,88
    sd      a1,128(sp)
    ld      a1,128(sp)
    flw     f9,304(sp)
    fsw     f9,0(a1)
    sd      a1,128(sp)
    j       .L4_0
.L4_0:
    li      a1, 0
    mv      a2, a1
    sw      a2,40(sp)
    li      a1, 0
    lw      a2,40(sp)
    xor     a3,a1,a2
    snez    a3, a3
    sw      a2,40(sp)
    sb      a3,39(sp)
    lb      a1,39(sp)
    mv      a2, a1
    sb      a1,39(sp)
    sw      a2,32(sp)
    li      a1, 0
    lw      a2,32(sp)
    xor     a3,a1,a2
    snez    a3, a3
    sw      a2,32(sp)
    sb      a3,31(sp)
    la      a1, k
    lw      a2,0(a1)
    sw      a2,24(sp)
    li      a1, 0
    li      a2, 1
    lw      a3,24(sp)
    mul     a5,a2,a3
    sw      a3,24(sp)
    add     a1,a1,a5
    slli a1,a1,2
    ld      a2,1176(sp)
    add     a1,a1,a2
    sd      a2,1176(sp)
    sd      a1,16(sp)
    ld      a1,16(sp)
    flw     f18,0(a1)
    sd      a1,16(sp)
    lb      a1,31(sp)
    mv      a2, a1
    sb      a1,31(sp)
    sw      a2,8(sp)
    lw      a1,8(sp)
    fcvt.s.w f19,a1,rtz
    sw      a1,8(sp)
    feq.s   a1,f18,f19
    seqz    a1, a1
    sb      a1,3(sp)
    lb      a1,3(sp)
    sb      a1,3(sp)
    lb      a1,3(sp)
    bnez    a1, .branch_true_52
    sb      a1,3(sp)
    j       .branch_false_52
.branch_true_52:
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,88
    sd      a1,64(sp)
    sd      s3,176(sp)
    sd      s6,168(sp)
    sd      a0,200(sp)
    sd      a4,192(sp)
    sd      a7,184(sp)
    fsw     f8,480(sp)
    fsw     f9,304(sp)
    fsw     f18,12(sp)
    fsw     f19,4(sp)
    fsw     fa0,568(sp)
    fsw     fa1,392(sp)
    fsw     fa2,656(sp)
    fsw     fa3,1008(sp)
    fsw     fa4,744(sp)
    fsw     fa5,216(sp)
    fsw     fa6,920(sp)
    fsw     fa7,832(sp)
    li      a0, 10
    ld      a1,64(sp)
    call    putfarray
    la      a0, k
    lw      a1,0(a0)
    li      a2, 0
    li      a3, 1
    mul     a4,a3,a1
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,88
    flw     fa0,0(a2)
    ld      ra,1168(sp)
    ld      s0,1160(sp)
    fsw     fa0,44(sp)
    flw     fa0,44(sp)
    addi    sp,sp,1432
    ret
.branch_false_52:
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,88
    sd      a1,80(sp)
    ld      a1,1416(sp)
    sd      a1,-8(sp)
    sd      a1,1416(sp)
    ld      a1,1408(sp)
    sd      a1,-16(sp)
    sd      a1,1408(sp)
    ld      a1,1400(sp)
    sd      a1,-24(sp)
    sd      a1,1400(sp)
    ld      a1,1392(sp)
    sd      a1,-32(sp)
    sd      a1,1392(sp)
    ld      a1,1384(sp)
    sd      a1,-40(sp)
    sd      a1,1384(sp)
    ld      a1,1376(sp)
    sd      a1,-48(sp)
    sd      a1,1376(sp)
    ld      a1,1368(sp)
    sd      a1,-56(sp)
    sd      a1,1368(sp)
    ld      a1,1360(sp)
    sd      a1,-64(sp)
    sd      a1,1360(sp)
    ld      a1,1352(sp)
    sd      a1,-72(sp)
    sd      a1,1352(sp)
    ld      a1,1344(sp)
    sd      a1,-80(sp)
    sd      a1,1344(sp)
    ld      a1,1336(sp)
    sd      a1,-88(sp)
    sd      a1,1336(sp)
    ld      a1,1328(sp)
    sd      a1,-96(sp)
    sd      a1,1328(sp)
    ld      a1,1320(sp)
    sd      a1,-104(sp)
    sd      a1,1320(sp)
    ld      a1,1312(sp)
    sd      a1,-112(sp)
    sd      a1,1312(sp)
    ld      a1,1304(sp)
    sd      a1,-120(sp)
    sd      a1,1304(sp)
    ld      a1,1296(sp)
    sd      a1,-128(sp)
    sd      a1,1296(sp)
    ld      a1,1288(sp)
    sd      a1,-136(sp)
    sd      a1,1288(sp)
    ld      a1,1280(sp)
    sd      a1,-144(sp)
    sd      a1,1280(sp)
    ld      a1,1272(sp)
    sd      a1,-152(sp)
    sd      a1,1272(sp)
    ld      a1,1264(sp)
    sd      a1,-160(sp)
    sd      a1,1264(sp)
    ld      a1,1256(sp)
    sd      a1,-168(sp)
    sd      a1,1256(sp)
    ld      a1,1248(sp)
    sd      a1,-176(sp)
    sd      a1,1248(sp)
    ld      a1,1240(sp)
    sd      a1,-184(sp)
    sd      a1,1240(sp)
    ld      a1,1232(sp)
    sd      a1,-192(sp)
    sd      a1,1232(sp)
    ld      a1,1224(sp)
    sd      a1,-200(sp)
    sd      a1,1224(sp)
    ld      a1,1216(sp)
    sd      a1,-208(sp)
    sd      a1,1216(sp)
    ld      a1,1208(sp)
    sd      a1,-216(sp)
    sd      a1,1208(sp)
    ld      a1,1200(sp)
    sd      a1,-224(sp)
    sd      a1,1200(sp)
    ld      a1,1192(sp)
    sd      a1,-232(sp)
    sd      a1,1192(sp)
    ld      a1,1184(sp)
    sd      a1,-240(sp)
    sd      a1,1184(sp)
    ld      a1,1176(sp)
    sd      a1,-248(sp)
    sd      a1,1176(sp)
    ld      a1,80(sp)
    sd      a1,-256(sp)
    sd      a1,80(sp)
    sd      s3,176(sp)
    sd      s6,168(sp)
    sd      a0,200(sp)
    sd      a4,192(sp)
    sd      a7,184(sp)
    fsw     f8,480(sp)
    fsw     f9,304(sp)
    fsw     f18,12(sp)
    fsw     f19,4(sp)
    fsw     fa0,568(sp)
    fsw     fa1,392(sp)
    fsw     fa2,656(sp)
    fsw     fa3,1008(sp)
    fsw     fa4,744(sp)
    fsw     fa5,216(sp)
    fsw     fa6,920(sp)
    fsw     fa7,832(sp)
    ld      a0,1144(sp)
    ld      a1,1136(sp)
    ld      a2,1128(sp)
    ld      a3,1120(sp)
    ld      a4,1112(sp)
    ld      a5,1104(sp)
    ld      a6,1096(sp)
    ld      a7,1424(sp)
    call    params_fa40
    ld      ra,1168(sp)
    ld      s0,1160(sp)
    fsw     fa0,76(sp)
    flw     fa0,76(sp)
    addi    sp,sp,1432
    ret
    .globl params_mix
    .type params_mix,@function
params_mix:
    addi    sp,sp,-1528
    sd      ra,1200(sp)
    sd      s0,1192(sp)
    addi    s0,sp,1528
.L1_0:
    la      s1, k
    lw      s2,0(s1)
    li      s3, 0
    li      s4, 1
    mul     s5,s4,s2
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,a2
    flw     f8,0(s3)
    fadd.s  f9,fa0,f8
    fadd.s  f18,f9,fa1
    fadd.s  f19,f18,fa2
    la      s6, k
    lw      s7,0(s6)
    sw      s7,1068(sp)
    li      s7, 0
    lw      s8,1068(sp)
    mul     s9,s4,s8
    sw      s8,1068(sp)
    add     s7,s7,s9
    slli s7,s7,2
    add     s7,s7,a4
    flw     f20,0(s7)
    fadd.s  f21,fa3,f20
    la      s4, k
    lw      s8,0(s4)
    sw      s8,1044(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,1044(sp)
    mul     s10,s8,s9
    sw      s9,1044(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1520(sp)
    add     s4,s4,s8
    sd      s8,1520(sp)
    sd      s4,1032(sp)
    ld      s4,1032(sp)
    flw     f22,0(s4)
    sd      s4,1032(sp)
    fadd.s  f23,f21,f22
    la      s4, k
    lw      s8,0(s4)
    sw      s8,1020(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,1020(sp)
    mul     s10,s8,s9
    sw      s9,1020(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1488(sp)
    add     s4,s4,s8
    sd      s8,1488(sp)
    sd      s4,1008(sp)
    ld      s4,1008(sp)
    flw     f24,0(s4)
    sd      s4,1008(sp)
    fadd.s  f25,f23,f24
    la      s4, k
    lw      s8,0(s4)
    sw      s8,996(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,996(sp)
    mul     s10,s8,s9
    sw      s9,996(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1480(sp)
    add     s4,s4,s8
    sd      s8,1480(sp)
    sd      s4,984(sp)
    ld      s4,984(sp)
    flw     f26,0(s4)
    sd      s4,984(sp)
    fadd.s  f27,f26,fa4
    fsw     f26,980(sp)
    fadd.s  f26,f27,fa5
    fsw     f27,976(sp)
    fadd.s  f27,f26,fa6
    fsw     f26,972(sp)
    la      s4, k
    lw      s8,0(s4)
    sw      s8,964(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,964(sp)
    mul     s10,s8,s9
    sw      s9,964(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1472(sp)
    add     s4,s4,s8
    sd      s8,1472(sp)
    sd      s4,952(sp)
    ld      s4,952(sp)
    flw     f26,0(s4)
    fsw     f26,948(sp)
    sd      s4,952(sp)
    flw     f26,948(sp)
    fadd.s  f28,f26,fa7
    fsw     f26,948(sp)
    fsw     fa7,1104(sp)
    flw     fa7,1464(sp)
    fadd.s  f26,f28,fa7
    fsw     f28,944(sp)
    fsw     fa7,1464(sp)
    flw     fa7,1460(sp)
    fadd.s  f28,f26,fa7
    fsw     f26,940(sp)
    fsw     fa7,1460(sp)
    la      s4, k
    lw      s8,0(s4)
    sw      s8,932(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,932(sp)
    mul     s10,s8,s9
    sw      s9,932(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1440(sp)
    add     s4,s4,s8
    sd      s8,1440(sp)
    sd      s4,920(sp)
    ld      s4,920(sp)
    flw     fa7,0(s4)
    fsw     fa7,916(sp)
    sd      s4,920(sp)
    la      s4, k
    lw      s8,0(s4)
    sw      s8,912(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,912(sp)
    mul     s10,s8,s9
    sw      s9,912(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1416(sp)
    add     s4,s4,s8
    sd      s8,1416(sp)
    sd      s4,904(sp)
    ld      s4,904(sp)
    flw     fa7,0(s4)
    fsw     fa7,900(sp)
    sd      s4,904(sp)
    flw     fa7,916(sp)
    flw     f26,900(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,916(sp)
    fsw     f26,900(sp)
    fsw     f29,896(sp)
    flw     fa7,896(sp)
    flw     f26,1412(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,896(sp)
    fsw     f26,1412(sp)
    fsw     f29,892(sp)
    flw     fa7,892(sp)
    flw     f26,1408(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,892(sp)
    fsw     f26,1408(sp)
    fsw     f29,888(sp)
    la      s4, k
    lw      s8,0(s4)
    sw      s8,884(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,884(sp)
    mul     s10,s8,s9
    sw      s9,884(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1384(sp)
    add     s4,s4,s8
    sd      s8,1384(sp)
    sd      s4,872(sp)
    ld      s4,872(sp)
    flw     fa7,0(s4)
    fsw     fa7,868(sp)
    sd      s4,872(sp)
    la      s4, k
    lw      s8,0(s4)
    sw      s8,864(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,864(sp)
    mul     s10,s8,s9
    sw      s9,864(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1376(sp)
    add     s4,s4,s8
    sd      s8,1376(sp)
    sd      s4,856(sp)
    ld      s4,856(sp)
    flw     fa7,0(s4)
    fsw     fa7,852(sp)
    sd      s4,856(sp)
    flw     fa7,868(sp)
    flw     f26,852(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,868(sp)
    fsw     f26,852(sp)
    fsw     f29,848(sp)
    flw     fa7,848(sp)
    flw     f26,1372(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,848(sp)
    fsw     f26,1372(sp)
    fsw     f29,844(sp)
    flw     fa7,844(sp)
    flw     f26,1368(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,844(sp)
    fsw     f26,1368(sp)
    fsw     f29,840(sp)
    flw     fa7,1340(sp)
    flw     f26,1336(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,1340(sp)
    fsw     f26,1336(sp)
    fsw     f29,836(sp)
    la      s4, k
    lw      s8,0(s4)
    sw      s8,832(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,832(sp)
    mul     s10,s8,s9
    sw      s9,832(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1312(sp)
    add     s4,s4,s8
    sd      s8,1312(sp)
    sd      s4,824(sp)
    ld      s4,824(sp)
    flw     fa7,0(s4)
    fsw     fa7,820(sp)
    sd      s4,824(sp)
    flw     fa7,836(sp)
    flw     f26,820(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,836(sp)
    fsw     f26,820(sp)
    fsw     f29,816(sp)
    flw     fa7,816(sp)
    flw     f26,1284(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,816(sp)
    fsw     f26,1284(sp)
    fsw     f29,812(sp)
    la      s4, k
    lw      s8,0(s4)
    sw      s8,808(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,808(sp)
    mul     s10,s8,s9
    sw      s9,808(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1272(sp)
    add     s4,s4,s8
    sd      s8,1272(sp)
    sd      s4,800(sp)
    ld      s4,800(sp)
    flw     fa7,0(s4)
    fsw     fa7,796(sp)
    sd      s4,800(sp)
    flw     fa7,1280(sp)
    flw     f26,796(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,1280(sp)
    fsw     f26,796(sp)
    fsw     f29,792(sp)
    la      s4, k
    lw      s8,0(s4)
    sw      s8,788(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,788(sp)
    mul     s10,s8,s9
    sw      s9,788(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1248(sp)
    add     s4,s4,s8
    sd      s8,1248(sp)
    sd      s4,776(sp)
    ld      s4,776(sp)
    flw     fa7,0(s4)
    fsw     fa7,772(sp)
    sd      s4,776(sp)
    flw     fa7,792(sp)
    flw     f26,772(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,792(sp)
    fsw     f26,772(sp)
    fsw     f29,768(sp)
    flw     fa7,768(sp)
    flw     f26,1244(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,768(sp)
    fsw     f26,1244(sp)
    fsw     f29,764(sp)
    la      s4, k
    lw      s8,0(s4)
    sw      s8,760(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,760(sp)
    mul     s10,s8,s9
    sw      s9,760(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1224(sp)
    add     s4,s4,s8
    sd      s8,1224(sp)
    sd      s4,752(sp)
    ld      s4,752(sp)
    flw     fa7,0(s4)
    fsw     fa7,748(sp)
    sd      s4,752(sp)
    flw     fa7,1236(sp)
    flw     f26,748(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,1236(sp)
    fsw     f26,748(sp)
    fsw     f29,744(sp)
    la      s4, k
    lw      s8,0(s4)
    sw      s8,740(sp)
    li      s4, 0
    li      s8, 1
    lw      s9,740(sp)
    mul     s10,s8,s9
    sw      s9,740(sp)
    add     s4,s4,s10
    slli s4,s4,2
    ld      s8,1216(sp)
    add     s4,s4,s8
    sd      s8,1216(sp)
    sd      s4,728(sp)
    ld      s4,728(sp)
    flw     fa7,0(s4)
    fsw     fa7,724(sp)
    sd      s4,728(sp)
    flw     fa7,744(sp)
    flw     f26,724(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,744(sp)
    fsw     f26,724(sp)
    fsw     f29,720(sp)
    flw     fa7,720(sp)
    flw     f26,1212(sp)
    fadd.s  f29,fa7,f26
    fsw     fa7,720(sp)
    fsw     f26,1212(sp)
    fsw     f29,716(sp)
    li      s4, 0
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,592
    sd      s4,704(sp)
    sw      s2,1100(sp)
    sd      s3,1088(sp)
    sd      s7,1056(sp)
    sd      a0,1176(sp)
    sw      a1,1172(sp)
    sd      a2,1160(sp)
    sw      a3,1152(sp)
    sd      a4,1136(sp)
    sd      a5,1128(sp)
    sw      a6,1124(sp)
    sw      a7,1120(sp)
    fsw     f8,1084(sp)
    fsw     f9,1080(sp)
    fsw     f18,1076(sp)
    fsw     f19,1072(sp)
    fsw     f20,1052(sp)
    fsw     f21,1048(sp)
    fsw     f22,1028(sp)
    fsw     f23,1024(sp)
    fsw     f24,1004(sp)
    fsw     f25,1000(sp)
    fsw     f27,968(sp)
    fsw     f28,936(sp)
    fsw     fa0,1188(sp)
    fsw     fa1,1156(sp)
    fsw     fa2,1148(sp)
    fsw     fa3,1144(sp)
    fsw     fa4,1116(sp)
    fsw     fa5,1112(sp)
    fsw     fa6,1108(sp)
    ld      a0,704(sp)
    li      a1, 0
    li      a2, 40
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,592
    flw     fa0,1072(sp)
    fsw     fa0,0(a0)
    li      a4, 0
    li      a5, 4
    mul     a6,a1,a5
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,592
    flw     fa1,888(sp)
    fsw     fa1,0(a4)
    li      a7, 0
    li      s1, 5
    mul     s2,a1,s1
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,592
    flw     fa2,840(sp)
    fsw     fa2,0(a7)
    li      s3, 0
    li      s4, 6
    mul     s5,a1,s4
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,592
    flw     fa3,812(sp)
    fsw     fa3,0(s3)
    li      s6, 0
    li      s7, 2
    mul     s8,a1,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,592
    flw     fa4,968(sp)
    fsw     fa4,0(s6)
    li      a1, 0
    li      s7, 1
    li      s9, 1
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,592
    sd      a1,656(sp)
    ld      a1,656(sp)
    flw     fa5,1000(sp)
    fsw     fa5,0(a1)
    sd      a1,656(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 3
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,592
    sd      a1,648(sp)
    ld      a1,648(sp)
    flw     fa6,936(sp)
    fsw     fa6,0(a1)
    sd      a1,648(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 7
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,592
    sd      a1,640(sp)
    ld      a1,640(sp)
    flw     fa7,764(sp)
    fsw     fa7,0(a1)
    sd      a1,640(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 8
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,592
    sd      a1,632(sp)
    ld      a1,632(sp)
    flw     f8,716(sp)
    fsw     f8,0(a1)
    sd      a1,632(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,588(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,588(sp)
    mul     s10,s7,s9
    sw      s9,588(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1176(sp)
    add     a1,a1,s7
    sd      s7,1176(sp)
    sd      a1,576(sp)
    ld      a1,576(sp)
    lw      s7,0(a1)
    sw      s7,572(sp)
    sd      a1,576(sp)
    lw      a1,572(sp)
    lw      s7,1172(sp)
    add     s9,a1,s7
    sw      a1,572(sp)
    sw      s7,1172(sp)
    sw      s9,568(sp)
    lw      a1,568(sp)
    lw      s7,1152(sp)
    add     s9,a1,s7
    sw      a1,568(sp)
    sw      s7,1152(sp)
    sw      s9,564(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,560(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,560(sp)
    mul     s10,s7,s9
    sw      s9,560(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1128(sp)
    add     a1,a1,s7
    sd      s7,1128(sp)
    sd      a1,552(sp)
    ld      a1,552(sp)
    lw      s7,0(a1)
    sw      s7,548(sp)
    sd      a1,552(sp)
    lw      a1,548(sp)
    lw      s7,1124(sp)
    add     s9,a1,s7
    sw      a1,548(sp)
    sw      s7,1124(sp)
    sw      s9,544(sp)
    lw      a1,544(sp)
    lw      s7,1120(sp)
    add     s9,a1,s7
    sw      a1,544(sp)
    sw      s7,1120(sp)
    sw      s9,540(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,536(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,536(sp)
    mul     s10,s7,s9
    sw      s9,536(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1512(sp)
    add     a1,a1,s7
    sd      s7,1512(sp)
    sd      a1,528(sp)
    ld      a1,528(sp)
    lw      s7,0(a1)
    sw      s7,524(sp)
    sd      a1,528(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,520(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,520(sp)
    mul     s10,s7,s9
    sw      s9,520(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1504(sp)
    add     a1,a1,s7
    sd      s7,1504(sp)
    sd      a1,512(sp)
    ld      a1,512(sp)
    lw      s7,0(a1)
    sw      s7,508(sp)
    sd      a1,512(sp)
    lw      a1,524(sp)
    lw      s7,508(sp)
    add     s9,a1,s7
    sw      a1,524(sp)
    sw      s7,508(sp)
    sw      s9,504(sp)
    lw      a1,504(sp)
    lw      s7,1500(sp)
    add     s9,a1,s7
    sw      a1,504(sp)
    sw      s7,1500(sp)
    sw      s9,500(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,496(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,496(sp)
    mul     s10,s7,s9
    sw      s9,496(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1448(sp)
    add     a1,a1,s7
    sd      s7,1448(sp)
    sd      a1,488(sp)
    ld      a1,488(sp)
    lw      s7,0(a1)
    sw      s7,484(sp)
    sd      a1,488(sp)
    lw      a1,1468(sp)
    lw      s7,484(sp)
    add     s9,a1,s7
    sw      a1,1468(sp)
    sw      s7,484(sp)
    sw      s9,480(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,476(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,476(sp)
    mul     s10,s7,s9
    sw      s9,476(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1432(sp)
    add     a1,a1,s7
    sd      s7,1432(sp)
    sd      a1,464(sp)
    ld      a1,464(sp)
    lw      s7,0(a1)
    sw      s7,460(sp)
    sd      a1,464(sp)
    lw      a1,480(sp)
    lw      s7,460(sp)
    add     s9,a1,s7
    sw      a1,480(sp)
    sw      s7,460(sp)
    sw      s9,456(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,452(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,452(sp)
    mul     s10,s7,s9
    sw      s9,452(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1424(sp)
    add     a1,a1,s7
    sd      s7,1424(sp)
    sd      a1,440(sp)
    ld      a1,440(sp)
    lw      s7,0(a1)
    sw      s7,436(sp)
    sd      a1,440(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,432(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,432(sp)
    mul     s10,s7,s9
    sw      s9,432(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1400(sp)
    add     a1,a1,s7
    sd      s7,1400(sp)
    sd      a1,424(sp)
    ld      a1,424(sp)
    lw      s7,0(a1)
    sw      s7,420(sp)
    sd      a1,424(sp)
    lw      a1,436(sp)
    lw      s7,420(sp)
    add     s9,a1,s7
    sw      a1,436(sp)
    sw      s7,420(sp)
    sw      s9,416(sp)
    lw      a1,416(sp)
    lw      s7,1396(sp)
    add     s9,a1,s7
    sw      a1,416(sp)
    sw      s7,1396(sp)
    sw      s9,412(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,408(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,408(sp)
    mul     s10,s7,s9
    sw      s9,408(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1360(sp)
    add     a1,a1,s7
    sd      s7,1360(sp)
    sd      a1,400(sp)
    ld      a1,400(sp)
    lw      s7,0(a1)
    sw      s7,396(sp)
    sd      a1,400(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,392(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,392(sp)
    mul     s10,s7,s9
    sw      s9,392(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1352(sp)
    add     a1,a1,s7
    sd      s7,1352(sp)
    sd      a1,384(sp)
    ld      a1,384(sp)
    lw      s7,0(a1)
    sw      s7,380(sp)
    sd      a1,384(sp)
    lw      a1,396(sp)
    lw      s7,380(sp)
    add     s9,a1,s7
    sw      a1,396(sp)
    sw      s7,380(sp)
    sw      s9,376(sp)
    lw      a1,376(sp)
    lw      s7,1348(sp)
    add     s9,a1,s7
    sw      a1,376(sp)
    sw      s7,1348(sp)
    sw      s9,372(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,368(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,368(sp)
    mul     s10,s7,s9
    sw      s9,368(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1328(sp)
    add     a1,a1,s7
    sd      s7,1328(sp)
    sd      a1,360(sp)
    ld      a1,360(sp)
    lw      s7,0(a1)
    sw      s7,356(sp)
    sd      a1,360(sp)
    lw      a1,1344(sp)
    lw      s7,356(sp)
    add     s9,a1,s7
    sw      a1,1344(sp)
    sw      s7,356(sp)
    sw      s9,352(sp)
    lw      a1,352(sp)
    lw      s7,1324(sp)
    add     s9,a1,s7
    sw      a1,352(sp)
    sw      s7,1324(sp)
    sw      s9,348(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,344(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,344(sp)
    mul     s10,s7,s9
    sw      s9,344(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1296(sp)
    add     a1,a1,s7
    sd      s7,1296(sp)
    sd      a1,336(sp)
    ld      a1,336(sp)
    lw      s7,0(a1)
    sw      s7,332(sp)
    sd      a1,336(sp)
    lw      a1,1308(sp)
    lw      s7,332(sp)
    add     s9,a1,s7
    sw      a1,1308(sp)
    sw      s7,332(sp)
    sw      s9,328(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,324(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,324(sp)
    mul     s10,s7,s9
    sw      s9,324(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1288(sp)
    add     a1,a1,s7
    sd      s7,1288(sp)
    sd      a1,312(sp)
    ld      a1,312(sp)
    lw      s7,0(a1)
    sw      s7,308(sp)
    sd      a1,312(sp)
    lw      a1,328(sp)
    lw      s7,308(sp)
    add     s9,a1,s7
    sw      a1,328(sp)
    sw      s7,308(sp)
    sw      s9,304(sp)
    la      a1, k
    lw      s7,0(a1)
    sw      s7,300(sp)
    li      a1, 0
    li      s7, 1
    lw      s9,300(sp)
    mul     s10,s7,s9
    sw      s9,300(sp)
    add     a1,a1,s10
    slli a1,a1,2
    ld      s7,1256(sp)
    add     a1,a1,s7
    sd      s7,1256(sp)
    sd      a1,288(sp)
    ld      a1,288(sp)
    lw      s7,0(a1)
    sw      s7,284(sp)
    sd      a1,288(sp)
    lw      a1,1268(sp)
    lw      s7,284(sp)
    add     s9,a1,s7
    sw      a1,1268(sp)
    sw      s7,284(sp)
    sw      s9,280(sp)
    lw      a1,280(sp)
    lw      s7,1240(sp)
    add     s9,a1,s7
    sw      a1,280(sp)
    sw      s7,1240(sp)
    sw      s9,276(sp)
    lw      a1,276(sp)
    lw      s7,1208(sp)
    add     s9,a1,s7
    sw      a1,276(sp)
    sw      s7,1208(sp)
    sw      s9,272(sp)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    sd      a1,264(sp)
    sd      s3,672(sp)
    sd      s6,664(sp)
    sd      a0,696(sp)
    sd      a4,688(sp)
    sd      a7,680(sp)
    fsw     f8,716(sp)
    fsw     fa0,1072(sp)
    fsw     fa1,888(sp)
    fsw     fa2,840(sp)
    fsw     fa3,812(sp)
    fsw     fa4,968(sp)
    fsw     fa5,1000(sp)
    fsw     fa6,936(sp)
    fsw     fa7,764(sp)
    ld      a0,264(sp)
    li      a1, 0
    li      a2, 40
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 8
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,152
    lw      a4,272(sp)
    sw      a4,0(a0)
    li      a5, 0
    li      a6, 3
    mul     a7,a1,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,152
    lw      s1,456(sp)
    sw      s1,0(a5)
    li      s2, 0
    li      s3, 2
    mul     s4,a1,s3
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,152
    lw      s5,500(sp)
    sw      s5,0(s2)
    li      s6, 0
    li      s7, 1
    mul     s8,a1,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,152
    lw      a1,540(sp)
    sw      a1,0(s6)
    sw      a1,540(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 4
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    sd      a1,224(sp)
    ld      a1,224(sp)
    lw      s7,412(sp)
    sw      s7,0(a1)
    sw      s7,412(sp)
    sd      a1,224(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 6
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    sd      a1,216(sp)
    ld      a1,216(sp)
    lw      s7,348(sp)
    sw      s7,0(a1)
    sw      s7,348(sp)
    sd      a1,216(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 7
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    sd      a1,208(sp)
    ld      a1,208(sp)
    lw      s7,304(sp)
    sw      s7,0(a1)
    sw      s7,304(sp)
    sd      a1,208(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 0
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    sd      a1,200(sp)
    ld      a1,200(sp)
    lw      s7,564(sp)
    sw      s7,0(a1)
    sw      s7,564(sp)
    sd      a1,200(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 5
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    sd      a1,192(sp)
    ld      a1,192(sp)
    lw      s7,372(sp)
    sw      s7,0(a1)
    sw      s7,372(sp)
    sd      a1,192(sp)
    j       .L2_0
.L2_0:
    lw      a1,1208(sp)
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
    sw      a1,1208(sp)
    sb      a3,3(sp)
    lb      a1,3(sp)
    sb      a1,3(sp)
    lb      a1,3(sp)
    bnez    a1, .branch_true_64
    sb      a1,3(sp)
    j       .branch_false_64
.branch_true_64:
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,592
    sd      a1,112(sp)
    sw      s1,456(sp)
    sd      s2,240(sp)
    sw      s5,500(sp)
    sd      s6,232(sp)
    sd      a0,256(sp)
    sw      a4,272(sp)
    sd      a5,248(sp)
    li      a0, 10
    ld      a1,112(sp)
    call    putfarray
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,152
    sd      a0,104(sp)
    li      a0, 10
    ld      a1,104(sp)
    call    putarray
    li      a0, 0
    j       .while.head_70
.while.head_70:
    li      a1, 10
    slt     a2,a0,a1
    bnez    a2, .while.body_70
    j       .while.exit_70
.while.body_70:
    li      a1, 0
    li      a3, 1
    mul     a4,a3,a0
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    li      a5, 0
    mul     a6,a3,a0
    add     a5,a5,a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,152
    lw      a3,0(a5)
    sw      a3,36(sp)
    li      a3, 0
    li      a7, 1
    mul     s1,a7,a0
    sw      a0,100(sp)
    add     a3,a3,s1
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,592
    flw     fa0,0(a3)
    lw      a0,36(sp)
    fcvt.s.w fa1,a0,rtz
    sw      a0,36(sp)
    fsub.s  fa2,fa1,fa0
    fcvt.w.s a0,fa2,rtz
    sw      a0,8(sp)
    lw      a0,8(sp)
    sw      a0,0(a1)
    sw      a0,8(sp)
    lw      a0,100(sp)
    li      a7, 1
    add     s1,a0,a7
    sw      a0,100(sp)
    sw      s1,4(sp)
    lw      a0,4(sp)
    mv      a7, a0
    sw      a0,4(sp)
    sw      a7,100(sp)
    fsw     fa0,20(sp)
    fsw     fa1,16(sp)
    sb      a2,2(sp)
    fsw     fa2,12(sp)
    sd      a3,24(sp)
    lw      a0,100(sp)
    sd      a1,48(sp)
    sd      a5,40(sp)
    j       .while.head_70
.while.exit_70:
    sw      a0,100(sp)
    sb      a2,2(sp)
    li      a0, 11451
    call    putint
    la      a0, k
    lw      a1,0(a0)
    li      a2, 0
    li      a3, 1
    mul     a4,a3,a1
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,152
    lw      a5,0(a2)
    li      a6, 0
    li      a7, 8
    mul     s1,a3,a7
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,592
    flw     fa0,0(a6)
    fcvt.s.w fa1,a5
    fmul.s  fa2,fa1,fa0
    ld      ra,1200(sp)
    ld      s0,1192(sp)
    fsw     fa2,60(sp)
    fsw     fa0,68(sp)
    flw     fa0,60(sp)
    addi    sp,sp,1528
    ret
.branch_false_64:
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    sd      a1,144(sp)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,592
    sd      a1,136(sp)
    lw      a1,1208(sp)
    fcvt.s.w fa0,a1,rtz
    sw      a1,1208(sp)
    flw     fa1,1212(sp)
    fcvt.w.s a1,fa1,rtz
    sw      a1,128(sp)
    ld      a1,1520(sp)
    sd      a1,-8(sp)
    sd      a1,1520(sp)
    ld      a1,1512(sp)
    sd      a1,-16(sp)
    sd      a1,1512(sp)
    ld      a1,1504(sp)
    sd      a1,-24(sp)
    sd      a1,1504(sp)
    lw      a1,1500(sp)
    sw      a1,-28(sp)
    sw      a1,1500(sp)
    ld      a1,1488(sp)
    sd      a1,-40(sp)
    sd      a1,1488(sp)
    ld      a1,1480(sp)
    sd      a1,-48(sp)
    sd      a1,1480(sp)
    ld      a1,1472(sp)
    sd      a1,-56(sp)
    sd      a1,1472(sp)
    lw      a1,1468(sp)
    sw      a1,-60(sp)
    sw      a1,1468(sp)
    flw     fa2,1464(sp)
    fsw     fa2,-64(sp)
    flw     fa3,1460(sp)
    fsw     fa3,-68(sp)
    ld      a1,1448(sp)
    sd      a1,-80(sp)
    sd      a1,1448(sp)
    ld      a1,1440(sp)
    sd      a1,-88(sp)
    sd      a1,1440(sp)
    ld      a1,1432(sp)
    sd      a1,-96(sp)
    sd      a1,1432(sp)
    ld      a1,1424(sp)
    sd      a1,-104(sp)
    sd      a1,1424(sp)
    ld      a1,1416(sp)
    sd      a1,-112(sp)
    sd      a1,1416(sp)
    flw     fa4,1412(sp)
    fsw     fa4,-116(sp)
    flw     fa5,1408(sp)
    fsw     fa5,-120(sp)
    ld      a1,1400(sp)
    sd      a1,-128(sp)
    sd      a1,1400(sp)
    lw      a1,1396(sp)
    sw      a1,-132(sp)
    sw      a1,1396(sp)
    ld      a1,1384(sp)
    sd      a1,-144(sp)
    sd      a1,1384(sp)
    ld      a1,1376(sp)
    sd      a1,-152(sp)
    sd      a1,1376(sp)
    flw     fa6,1372(sp)
    fsw     fa6,-156(sp)
    flw     fa7,1368(sp)
    fsw     fa7,-160(sp)
    ld      a1,1360(sp)
    sd      a1,-168(sp)
    sd      a1,1360(sp)
    ld      a1,1352(sp)
    sd      a1,-176(sp)
    sd      a1,1352(sp)
    lw      a1,1348(sp)
    sw      a1,-180(sp)
    sw      a1,1348(sp)
    lw      a1,1344(sp)
    sw      a1,-184(sp)
    sw      a1,1344(sp)
    flw     f8,1340(sp)
    fsw     f8,-188(sp)
    flw     f9,1336(sp)
    fsw     f9,-192(sp)
    ld      a1,1328(sp)
    sd      a1,-200(sp)
    sd      a1,1328(sp)
    lw      a1,1324(sp)
    sw      a1,-204(sp)
    sw      a1,1324(sp)
    ld      a1,1312(sp)
    sd      a1,-216(sp)
    sd      a1,1312(sp)
    lw      a1,1308(sp)
    sw      a1,-220(sp)
    sw      a1,1308(sp)
    ld      a1,1296(sp)
    sd      a1,-232(sp)
    sd      a1,1296(sp)
    ld      a1,1288(sp)
    sd      a1,-240(sp)
    sd      a1,1288(sp)
    flw     f18,1284(sp)
    fsw     f18,-244(sp)
    flw     f19,1280(sp)
    fsw     f19,-248(sp)
    ld      a1,1272(sp)
    sd      a1,-256(sp)
    sd      a1,1272(sp)
    lw      a1,1268(sp)
    sw      a1,-260(sp)
    sw      a1,1268(sp)
    ld      a1,1256(sp)
    sd      a1,-272(sp)
    sd      a1,1256(sp)
    ld      a1,1248(sp)
    sd      a1,-280(sp)
    sd      a1,1248(sp)
    flw     f20,1244(sp)
    fsw     f20,-284(sp)
    lw      a1,1240(sp)
    sw      a1,-288(sp)
    sw      a1,1240(sp)
    flw     f21,1236(sp)
    fsw     f21,-292(sp)
    ld      a1,1224(sp)
    sd      a1,-304(sp)
    sd      a1,1224(sp)
    ld      a1,1216(sp)
    sd      a1,-312(sp)
    sd      a1,1216(sp)
    fsw     fa0,-316(sp)
    lw      a1,128(sp)
    sw      a1,-320(sp)
    sw      a1,128(sp)
    sw      s1,456(sp)
    sd      s2,240(sp)
    sw      s5,500(sp)
    sd      s6,232(sp)
    sd      a0,256(sp)
    sw      a4,272(sp)
    sd      a5,248(sp)
    fsw     f8,1340(sp)
    fsw     f9,1336(sp)
    fsw     f18,1284(sp)
    fsw     f19,1280(sp)
    fsw     f20,1244(sp)
    fsw     f21,1236(sp)
    fsw     fa0,132(sp)
    fsw     fa1,1212(sp)
    fsw     fa2,1464(sp)
    fsw     fa3,1460(sp)
    fsw     fa4,1412(sp)
    fsw     fa5,1408(sp)
    fsw     fa6,1372(sp)
    fsw     fa7,1368(sp)
    flw     fa0,1188(sp)
    flw     fa1,1156(sp)
    flw     fa2,1148(sp)
    flw     fa3,1144(sp)
    flw     fa4,1116(sp)
    flw     fa5,1112(sp)
    flw     fa6,1108(sp)
    flw     fa7,1104(sp)
    ld      a0,144(sp)
    lw      a1,1172(sp)
    ld      a2,136(sp)
    lw      a3,1152(sp)
    ld      a4,1136(sp)
    ld      a5,1128(sp)
    lw      a6,1124(sp)
    lw      a7,1120(sp)
    call    params_mix
    ld      ra,1200(sp)
    ld      s0,1192(sp)
    sw      a0,124(sp)
    lw      a0,124(sp)
    addi    sp,sp,1528
    ret
    .globl main
    .type main,@function
main:
    li      a0, -3784
    li      a0, -3784
    add     sp,a0,sp
    li      a1, 3776
    li      a1, 3776
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 3768
    li      a2, 3768
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 3784
    li      a3, 3784
    add     s0,a3,sp
.L0_0:
    call    getint
    la      a1, k
    sw      a0,0(a1)
    li      a2, 0
    j       .while.head_85
.while.head_85:
    li      a1, 40
    slt     a3,a2,a1
    bnez    a3, .while.body_85
    j       .while.exit_85
.while.body_85:
    li      a1, 0
    li      a4, 3
    mul     a5,a4,a2
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    li      a6, 3288
    li      a6, 3288
    add     a1,a6,a1
    li      a7, 2992
    li      a7, 2992
    add     a7,sp,a7
    sw      a0,0(a7)
    sd      a1,16(sp)
    li      a0, 2996
    li      a0, 2996
    add     a0,sp,a0
    sw      a2,0(a0)
    sb      a3,7(sp)
    ld      a0,16(sp)
    call    getfarray
    li      a2, 2996
    li      a2, 2996
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a3, 1
    add     a4,a1,a3
    mv      a1, a4
    li      a5, 2996
    li      a5, 2996
    add     a5,sp,a5
    sw      a1,0(a5)
    li      a1, 2996
    li      a1, 2996
    add     a1,sp,a1
    lw      a2,0(a1)
    sw      a0,12(sp)
    li      a6, 2992
    li      a6, 2992
    add     a6,sp,a6
    lw      a0,0(a6)
    sw      a4,8(sp)
    j       .while.head_85
.while.exit_85:
    li      a2, 0
    j       .while.head_91
.while.head_91:
    li      a1, 24
    slt     a4,a2,a1
    bnez    a4, .while.body_91
    j       .while.exit_91
.while.body_91:
    li      a1, 0
    li      a5, 3
    mul     a6,a5,a2
    add     a1,a1,a6
    slli a1,a1,2
    add     a1,a1,sp
    li      a7, 3000
    li      a7, 3000
    add     a1,a7,a1
    li      a7, 2992
    li      a7, 2992
    add     a7,sp,a7
    sw      a0,0(a7)
    sd      a1,32(sp)
    li      a0, 2996
    li      a0, 2996
    add     a0,sp,a0
    sw      a2,0(a0)
    sb      a3,7(sp)
    sb      a4,6(sp)
    ld      a0,32(sp)
    call    getarray
    li      a2, 2996
    li      a2, 2996
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a3, 1
    add     a4,a1,a3
    mv      a1, a4
    li      a5, 2996
    li      a5, 2996
    add     a5,sp,a5
    sw      a1,0(a5)
    li      a1, 2996
    li      a1, 2996
    add     a1,sp,a1
    lw      a2,0(a1)
    sw      a0,28(sp)
    li      a6, 2992
    li      a6, 2992
    add     a6,sp,a6
    lw      a0,0(a6)
    lb      a3,7(sp)
    sw      a4,24(sp)
    j       .while.head_91
.while.exit_91:
    la      a1, k
    lw      a5,0(a1)
    li      a6, 0
    li      a7, 3
    li      s1, 0
    mul     s2,a7,s1
    add     a6,a6,s2
    li      a7, 1
    mul     s1,a7,a5
    li      a7, 2988
    li      a7, 2988
    add     a7,sp,a7
    sw      a5,0(a7)
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    li      a5, 3288
    li      a5, 3288
    add     a6,a5,a6
    flw     fa0,0(a6)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2968
    li      s2, 2968
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 1
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2968
    li      s3, 2968
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2968
    li      a7, 2968
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2960
    li      a7, 2960
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2960
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     fa1,0(a5)
    li      a7, 2960
    li      a7, 2960
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2952
    li      s2, 2952
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 2
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2952
    li      s3, 2952
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2952
    li      a7, 2952
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2944
    li      a7, 2944
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2944
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     fa2,0(a5)
    li      a7, 2944
    li      a7, 2944
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2936
    li      s2, 2936
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 3
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2936
    li      s3, 2936
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2936
    li      a7, 2936
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2928
    li      a7, 2928
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2928
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     fa3,0(a5)
    li      a7, 2928
    li      a7, 2928
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2920
    li      s2, 2920
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 4
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2920
    li      s3, 2920
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2920
    li      a7, 2920
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2912
    li      a7, 2912
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2912
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     fa4,0(a5)
    li      a7, 2912
    li      a7, 2912
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2904
    li      s2, 2904
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 5
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2904
    li      s3, 2904
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2904
    li      a7, 2904
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2896
    li      a7, 2896
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2896
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     fa5,0(a5)
    li      a7, 2896
    li      a7, 2896
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2888
    li      s2, 2888
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 6
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2888
    li      s3, 2888
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2888
    li      a7, 2888
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2880
    li      a7, 2880
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2880
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     fa6,0(a5)
    li      a7, 2880
    li      a7, 2880
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2872
    li      s2, 2872
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 7
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2872
    li      s3, 2872
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2872
    li      a7, 2872
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2864
    li      a7, 2864
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2864
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     fa7,0(a5)
    li      a7, 2864
    li      a7, 2864
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2856
    li      s2, 2856
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 8
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2856
    li      s3, 2856
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2856
    li      a7, 2856
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2848
    li      a7, 2848
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2848
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f8,0(a5)
    li      a7, 2848
    li      a7, 2848
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2840
    li      s2, 2840
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 9
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2840
    li      s3, 2840
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2840
    li      a7, 2840
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2832
    li      a7, 2832
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2832
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f9,0(a5)
    li      a7, 2832
    li      a7, 2832
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2824
    li      s2, 2824
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 10
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2824
    li      s3, 2824
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2824
    li      a7, 2824
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2816
    li      a7, 2816
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2816
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f18,0(a5)
    li      a7, 2816
    li      a7, 2816
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2808
    li      s2, 2808
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 11
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2808
    li      s3, 2808
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2808
    li      a7, 2808
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2800
    li      a7, 2800
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2800
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f19,0(a5)
    li      a7, 2800
    li      a7, 2800
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2792
    li      s2, 2792
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 12
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2792
    li      s3, 2792
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2792
    li      a7, 2792
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2784
    li      a7, 2784
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2784
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f20,0(a5)
    li      a7, 2784
    li      a7, 2784
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2776
    li      s2, 2776
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 13
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2776
    li      s3, 2776
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2776
    li      a7, 2776
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2768
    li      a7, 2768
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2768
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f21,0(a5)
    li      a7, 2768
    li      a7, 2768
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2760
    li      s2, 2760
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 14
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2760
    li      s3, 2760
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2760
    li      a7, 2760
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2752
    li      a7, 2752
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2752
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f22,0(a5)
    li      a7, 2752
    li      a7, 2752
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2744
    li      s2, 2744
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 15
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2744
    li      s3, 2744
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2744
    li      a7, 2744
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2736
    li      a7, 2736
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2736
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f23,0(a5)
    li      a7, 2736
    li      a7, 2736
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2728
    li      s2, 2728
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 16
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2728
    li      s3, 2728
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2728
    li      a7, 2728
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2720
    li      a7, 2720
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2720
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f24,0(a5)
    li      a7, 2720
    li      a7, 2720
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2712
    li      s2, 2712
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 17
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2712
    li      s3, 2712
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2712
    li      a7, 2712
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2704
    li      a7, 2704
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2704
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f25,0(a5)
    li      a7, 2704
    li      a7, 2704
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2696
    li      s2, 2696
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 18
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2696
    li      s3, 2696
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2696
    li      a7, 2696
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2688
    li      a7, 2688
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2688
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f26,0(a5)
    li      a7, 2688
    li      a7, 2688
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2680
    li      s2, 2680
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 19
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2680
    li      s3, 2680
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2680
    li      a7, 2680
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2672
    li      a7, 2672
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2672
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2668
    li      a7, 2668
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2672
    li      a7, 2672
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2664
    li      s2, 2664
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 20
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2664
    li      s3, 2664
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2664
    li      a7, 2664
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2656
    li      a7, 2656
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2656
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2652
    li      a7, 2652
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2656
    li      a7, 2656
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2648
    li      s2, 2648
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 21
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2648
    li      s3, 2648
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2648
    li      a7, 2648
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2640
    li      a7, 2640
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2640
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2636
    li      a7, 2636
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2640
    li      a7, 2640
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2632
    li      s2, 2632
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 22
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2632
    li      s3, 2632
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2632
    li      a7, 2632
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2624
    li      a7, 2624
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2624
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2620
    li      a7, 2620
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2624
    li      a7, 2624
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2616
    li      s2, 2616
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 23
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2616
    li      s3, 2616
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2616
    li      a7, 2616
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2608
    li      a7, 2608
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2608
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2604
    li      a7, 2604
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2608
    li      a7, 2608
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2600
    li      s2, 2600
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 24
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2600
    li      s3, 2600
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2600
    li      a7, 2600
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2592
    li      a7, 2592
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2592
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2588
    li      a7, 2588
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2592
    li      a7, 2592
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2584
    li      s2, 2584
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 25
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2584
    li      s3, 2584
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2584
    li      a7, 2584
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2576
    li      a7, 2576
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2576
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2572
    li      a7, 2572
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2576
    li      a7, 2576
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2568
    li      s2, 2568
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 26
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2568
    li      s3, 2568
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2568
    li      a7, 2568
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2560
    li      a7, 2560
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2560
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2556
    li      a7, 2556
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2560
    li      a7, 2560
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2552
    li      s2, 2552
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 27
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2552
    li      s3, 2552
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2552
    li      a7, 2552
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2544
    li      a7, 2544
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2544
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2540
    li      a7, 2540
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2544
    li      a7, 2544
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2536
    li      s2, 2536
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 28
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2536
    li      s3, 2536
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2536
    li      a7, 2536
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2528
    li      a7, 2528
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2528
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2524
    li      a7, 2524
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2528
    li      a7, 2528
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2520
    li      s2, 2520
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 29
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2520
    li      s3, 2520
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2520
    li      a7, 2520
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2512
    li      a7, 2512
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2512
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2508
    li      a7, 2508
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2512
    li      a7, 2512
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2504
    li      s2, 2504
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 30
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2504
    li      s3, 2504
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2504
    li      a7, 2504
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2496
    li      a7, 2496
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2496
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2492
    li      a7, 2492
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2496
    li      a7, 2496
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2488
    li      s2, 2488
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 31
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2488
    li      s3, 2488
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2488
    li      a7, 2488
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2480
    li      a7, 2480
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2480
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2476
    li      a7, 2476
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2480
    li      a7, 2480
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2472
    li      s2, 2472
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 32
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2472
    li      s3, 2472
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2472
    li      a7, 2472
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2464
    li      a7, 2464
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2464
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2460
    li      a7, 2460
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2464
    li      a7, 2464
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2456
    li      s2, 2456
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 33
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2456
    li      s3, 2456
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2456
    li      a7, 2456
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2448
    li      a7, 2448
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2448
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2444
    li      a7, 2444
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2448
    li      a7, 2448
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2440
    li      s2, 2440
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 34
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2440
    li      s3, 2440
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2440
    li      a7, 2440
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2432
    li      a7, 2432
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2432
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2428
    li      a7, 2428
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2432
    li      a7, 2432
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2424
    li      s2, 2424
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 35
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2424
    li      s3, 2424
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2424
    li      a7, 2424
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2416
    li      a7, 2416
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2416
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2412
    li      a7, 2412
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2416
    li      a7, 2416
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2408
    li      s2, 2408
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 36
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2408
    li      s3, 2408
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2408
    li      a7, 2408
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2400
    li      a7, 2400
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2400
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2396
    li      a7, 2396
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2400
    li      a7, 2400
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2392
    li      s2, 2392
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 37
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2392
    li      s3, 2392
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2392
    li      a7, 2392
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2384
    li      a7, 2384
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2384
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2380
    li      a7, 2380
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2384
    li      a7, 2384
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2376
    li      s2, 2376
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 38
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2376
    li      s3, 2376
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2376
    li      a7, 2376
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2368
    li      a7, 2368
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2368
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2364
    li      a7, 2364
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2368
    li      a7, 2368
    add     a7,sp,a7
    sd      a5,0(a7)
    la      a5, k
    lw      a7,0(a5)
    li      s2, 2360
    li      s2, 2360
    add     s2,sp,s2
    sw      a7,0(s2)
    li      a5, 0
    li      a7, 3
    li      s2, 39
    mul     s3,a7,s2
    add     a5,a5,s3
    li      a7, 1
    li      s3, 2360
    li      s3, 2360
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,a7,s2
    li      a7, 2360
    li      a7, 2360
    add     a7,sp,a7
    sw      s2,0(a7)
    add     a5,a5,s3
    slli a5,a5,2
    add     a5,a5,sp
    li      a7, 3288
    li      a7, 3288
    add     a5,a7,a5
    li      a7, 2352
    li      a7, 2352
    add     a7,sp,a7
    sd      a5,0(a7)
    li      a7, 2352
    add     a7,sp,a7
    ld      a5,0(a7)
    flw     f27,0(a5)
    li      a7, 2348
    li      a7, 2348
    add     a7,sp,a7
    fsw     f27,0(a7)
    li      a7, 2352
    li      a7, 2352
    add     a7,sp,a7
    sd      a5,0(a7)
    fsw     f8,-4(sp)
    fsw     f9,-8(sp)
    fsw     f18,-12(sp)
    fsw     f19,-16(sp)
    fsw     f20,-20(sp)
    fsw     f21,-24(sp)
    fsw     f22,-28(sp)
    fsw     f23,-32(sp)
    fsw     f24,-36(sp)
    fsw     f25,-40(sp)
    fsw     f26,-44(sp)
    li      a5, 2668
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-48(sp)
    li      a5, 2668
    li      a5, 2668
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2652
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-52(sp)
    li      a5, 2652
    li      a5, 2652
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2636
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-56(sp)
    li      a5, 2636
    li      a5, 2636
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2620
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-60(sp)
    li      a5, 2620
    li      a5, 2620
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2604
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-64(sp)
    li      a5, 2604
    li      a5, 2604
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2588
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-68(sp)
    li      a5, 2588
    li      a5, 2588
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2572
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-72(sp)
    li      a5, 2572
    li      a5, 2572
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2556
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-76(sp)
    li      a5, 2556
    li      a5, 2556
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2540
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-80(sp)
    li      a5, 2540
    li      a5, 2540
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2524
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-84(sp)
    li      a5, 2524
    li      a5, 2524
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2508
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-88(sp)
    li      a5, 2508
    li      a5, 2508
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2492
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-92(sp)
    li      a5, 2492
    li      a5, 2492
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2476
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-96(sp)
    li      a5, 2476
    li      a5, 2476
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2460
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-100(sp)
    li      a5, 2460
    li      a5, 2460
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2444
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-104(sp)
    li      a5, 2444
    li      a5, 2444
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2428
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-108(sp)
    li      a5, 2428
    li      a5, 2428
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2412
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-112(sp)
    li      a5, 2412
    li      a5, 2412
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2396
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-116(sp)
    li      a5, 2396
    li      a5, 2396
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2380
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-120(sp)
    li      a5, 2380
    li      a5, 2380
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2364
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-124(sp)
    li      a5, 2364
    li      a5, 2364
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2348
    add     a5,sp,a5
    flw     f27,0(a5)
    fsw     f27,-128(sp)
    li      a5, 2348
    li      a5, 2348
    add     a5,sp,a5
    fsw     f27,0(a5)
    li      a5, 2992
    li      a5, 2992
    add     a5,sp,a5
    sw      a0,0(a5)
    li      a0, 2996
    li      a0, 2996
    add     a0,sp,a0
    sw      a2,0(a0)
    sb      a3,7(sp)
    sb      a4,6(sp)
    li      a1, 2976
    li      a1, 2976
    add     a1,sp,a1
    sd      a6,0(a1)
    li      a2, 2844
    li      a2, 2844
    add     a2,sp,a2
    fsw     f8,0(a2)
    li      a3, 2828
    li      a3, 2828
    add     a3,sp,a3
    fsw     f9,0(a3)
    li      a4, 2812
    li      a4, 2812
    add     a4,sp,a4
    fsw     f18,0(a4)
    li      a5, 2796
    li      a5, 2796
    add     a5,sp,a5
    fsw     f19,0(a5)
    li      a6, 2780
    li      a6, 2780
    add     a6,sp,a6
    fsw     f20,0(a6)
    li      a7, 2764
    li      a7, 2764
    add     a7,sp,a7
    fsw     f21,0(a7)
    li      a7, 2748
    li      a7, 2748
    add     a7,sp,a7
    fsw     f22,0(a7)
    li      a7, 2732
    li      a7, 2732
    add     a7,sp,a7
    fsw     f23,0(a7)
    li      a7, 2716
    li      a7, 2716
    add     a7,sp,a7
    fsw     f24,0(a7)
    li      a7, 2700
    li      a7, 2700
    add     a7,sp,a7
    fsw     f25,0(a7)
    li      a7, 2684
    li      a7, 2684
    add     a7,sp,a7
    fsw     f26,0(a7)
    li      a7, 2972
    li      a7, 2972
    add     a7,sp,a7
    fsw     fa0,0(a7)
    li      a7, 2956
    li      a7, 2956
    add     a7,sp,a7
    fsw     fa1,0(a7)
    li      a7, 2940
    li      a7, 2940
    add     a7,sp,a7
    fsw     fa2,0(a7)
    li      a7, 2924
    li      a7, 2924
    add     a7,sp,a7
    fsw     fa3,0(a7)
    li      a7, 2908
    li      a7, 2908
    add     a7,sp,a7
    fsw     fa4,0(a7)
    li      a7, 2892
    li      a7, 2892
    add     a7,sp,a7
    fsw     fa5,0(a7)
    li      a7, 2876
    li      a7, 2876
    add     a7,sp,a7
    fsw     fa6,0(a7)
    li      a7, 2860
    li      a7, 2860
    add     a7,sp,a7
    fsw     fa7,0(a7)
    li      a7, 2972
    add     a7,sp,a7
    flw     fa0,0(a7)
    li      a7, 2956
    add     a7,sp,a7
    flw     fa1,0(a7)
    li      a7, 2940
    add     a7,sp,a7
    flw     fa2,0(a7)
    li      a7, 2924
    add     a7,sp,a7
    flw     fa3,0(a7)
    li      a7, 2908
    add     a7,sp,a7
    flw     fa4,0(a7)
    li      a7, 2892
    add     a7,sp,a7
    flw     fa5,0(a7)
    li      a7, 2876
    add     a7,sp,a7
    flw     fa6,0(a7)
    li      a7, 2860
    add     a7,sp,a7
    flw     fa7,0(a7)
    call    params_f40
    fmv.s   fa1, fa0
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2336
    li      s2, 2336
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 23
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2336
    li      s3, 2336
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2336
    li      s1, 2336
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    li      s1, 2328
    li      s1, 2328
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2328
    add     s1,sp,s1
    ld      a7,0(s1)
    lw      s1,0(a7)
    li      s2, 2324
    li      s2, 2324
    add     s2,sp,s2
    sw      s1,0(s2)
    li      s1, 2328
    li      s1, 2328
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2320
    li      s2, 2320
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 2
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2320
    li      s3, 2320
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2320
    li      s1, 2320
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    li      s1, 2312
    li      s1, 2312
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2312
    add     s1,sp,s1
    ld      a7,0(s1)
    lw      s1,0(a7)
    li      s2, 2308
    li      s2, 2308
    add     s2,sp,s2
    sw      s1,0(s2)
    li      s1, 2312
    li      s1, 2312
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2304
    li      s2, 2304
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 6
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2304
    li      s3, 2304
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2304
    li      s1, 2304
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    li      s1, 2296
    li      s1, 2296
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2296
    add     s1,sp,s1
    ld      a7,0(s1)
    lw      s1,0(a7)
    li      s2, 2292
    li      s2, 2292
    add     s2,sp,s2
    sw      s1,0(s2)
    li      s1, 2296
    li      s1, 2296
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2288
    li      s2, 2288
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 4
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2288
    li      s3, 2288
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2288
    li      s1, 2288
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    li      s1, 2280
    li      s1, 2280
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2280
    add     s1,sp,s1
    ld      a7,0(s1)
    flw     fa2,0(a7)
    li      s1, 2280
    li      s1, 2280
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2272
    li      s2, 2272
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 1
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2272
    li      s3, 2272
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2272
    li      s1, 2272
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    li      s1, 2264
    li      s1, 2264
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2264
    add     s1,sp,s1
    ld      a7,0(s1)
    lw      s1,0(a7)
    li      s2, 2260
    li      s2, 2260
    add     s2,sp,s2
    sw      s1,0(s2)
    li      s1, 2264
    li      s1, 2264
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2256
    li      s2, 2256
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 4
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2256
    li      s3, 2256
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2256
    li      s1, 2256
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    li      s1, 2248
    li      s1, 2248
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2248
    add     s1,sp,s1
    ld      a7,0(s1)
    lw      s1,0(a7)
    li      s2, 2244
    li      s2, 2244
    add     s2,sp,s2
    sw      s1,0(s2)
    li      s1, 2248
    li      s1, 2248
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2240
    li      s2, 2240
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 5
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2240
    li      s3, 2240
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2240
    li      s1, 2240
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    li      s1, 2232
    li      s1, 2232
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2232
    add     s1,sp,s1
    ld      a7,0(s1)
    lw      s1,0(a7)
    li      s2, 2228
    li      s2, 2228
    add     s2,sp,s2
    sw      s1,0(s2)
    li      s1, 2232
    li      s1, 2232
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2224
    li      s2, 2224
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 8
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2224
    li      s3, 2224
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2224
    li      s1, 2224
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    li      s1, 2216
    li      s1, 2216
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2216
    add     s1,sp,s1
    ld      a7,0(s1)
    flw     fa3,0(a7)
    li      s1, 2216
    li      s1, 2216
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2208
    li      s2, 2208
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 15
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2208
    li      s3, 2208
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2208
    li      s1, 2208
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    li      s1, 2200
    li      s1, 2200
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2200
    add     s1,sp,s1
    ld      a7,0(s1)
    flw     fa4,0(a7)
    li      s1, 2200
    li      s1, 2200
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2192
    li      s2, 2192
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 7
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2192
    li      s3, 2192
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2192
    li      s1, 2192
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    li      s1, 2184
    li      s1, 2184
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2184
    add     s1,sp,s1
    ld      a7,0(s1)
    flw     fa5,0(a7)
    li      s1, 2184
    li      s1, 2184
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2176
    li      s2, 2176
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 22
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2176
    li      s3, 2176
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2176
    li      s1, 2176
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    li      s1, 2168
    li      s1, 2168
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2168
    add     s1,sp,s1
    ld      a7,0(s1)
    lw      s1,0(a7)
    li      s2, 2164
    li      s2, 2164
    add     s2,sp,s2
    sw      s1,0(s2)
    li      s1, 2168
    li      s1, 2168
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2160
    li      s2, 2160
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 3
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2160
    li      s3, 2160
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2160
    li      s1, 2160
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    li      s1, 2152
    li      s1, 2152
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2152
    add     s1,sp,s1
    ld      a7,0(s1)
    flw     fa6,0(a7)
    li      s1, 2152
    li      s1, 2152
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2144
    li      s2, 2144
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 28
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2144
    li      s3, 2144
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2144
    li      s1, 2144
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    li      s1, 2136
    li      s1, 2136
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2136
    add     s1,sp,s1
    ld      a7,0(s1)
    flw     fa7,0(a7)
    li      s1, 2136
    li      s1, 2136
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2128
    li      s2, 2128
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 0
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2128
    li      s3, 2128
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2128
    li      s1, 2128
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    li      s1, 2120
    li      s1, 2120
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2120
    add     s1,sp,s1
    ld      a7,0(s1)
    lw      s1,0(a7)
    li      s2, 2116
    li      s2, 2116
    add     s2,sp,s2
    sw      s1,0(s2)
    li      s1, 2120
    li      s1, 2120
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2112
    li      s2, 2112
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 37
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2112
    li      s3, 2112
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2112
    li      s1, 2112
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    li      s1, 2104
    li      s1, 2104
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2104
    add     s1,sp,s1
    ld      a7,0(s1)
    flw     f8,0(a7)
    li      s1, 2104
    li      s1, 2104
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2096
    li      s2, 2096
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 19
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2096
    li      s3, 2096
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2096
    li      s1, 2096
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    li      s1, 2088
    li      s1, 2088
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2088
    add     s1,sp,s1
    ld      a7,0(s1)
    lw      s1,0(a7)
    li      s2, 2084
    li      s2, 2084
    add     s2,sp,s2
    sw      s1,0(s2)
    li      s1, 2088
    li      s1, 2088
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2080
    li      s2, 2080
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 30
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2080
    li      s3, 2080
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2080
    li      s1, 2080
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    li      s1, 2072
    li      s1, 2072
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2072
    add     s1,sp,s1
    ld      a7,0(s1)
    flw     f9,0(a7)
    li      s1, 2072
    li      s1, 2072
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2064
    li      s2, 2064
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 12
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2064
    li      s3, 2064
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2064
    li      s1, 2064
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    li      s1, 2056
    li      s1, 2056
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2056
    add     s1,sp,s1
    ld      a7,0(s1)
    flw     f18,0(a7)
    li      s1, 2056
    li      s1, 2056
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2048
    li      s2, 2048
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 1
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2048
    li      s3, 2048
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2048
    li      s1, 2048
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    li      s1, 2040
    li      s1, 2040
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2040
    add     s1,sp,s1
    ld      a7,0(s1)
    flw     f19,0(a7)
    li      s1, 2040
    li      s1, 2040
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2032
    li      s2, 2032
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 11
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2032
    li      s3, 2032
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2032
    li      s1, 2032
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    li      s1, 2024
    li      s1, 2024
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2024
    add     s1,sp,s1
    ld      a7,0(s1)
    flw     f20,0(a7)
    li      s1, 2024
    li      s1, 2024
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    li      s2, 2016
    li      s2, 2016
    add     s2,sp,s2
    sw      s1,0(s2)
    li      a7, 0
    li      s1, 3
    li      s2, 38
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    li      s3, 2016
    li      s3, 2016
    add     s3,sp,s3
    lw      s2,0(s3)
    mul     s3,s1,s2
    li      s1, 2016
    li      s1, 2016
    add     s1,sp,s1
    sw      s2,0(s1)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    li      s1, 2008
    li      s1, 2008
    add     s1,sp,s1
    sd      a7,0(s1)
    li      s1, 2008
    add     s1,sp,s1
    ld      a7,0(s1)
    flw     f21,0(a7)
    li      s1, 2008
    li      s1, 2008
    add     s1,sp,s1
    sd      a7,0(s1)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,2000(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 6
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,2000(sp)
    mul     s3,s1,s2
    sw      s2,2000(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1992(sp)
    ld      a7,1992(sp)
    flw     f22,0(a7)
    sd      a7,1992(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1984(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 7
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1984(sp)
    mul     s3,s1,s2
    sw      s2,1984(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1976(sp)
    ld      a7,1976(sp)
    lw      s1,0(a7)
    sw      s1,1972(sp)
    sd      a7,1976(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1968(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 32
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1968(sp)
    mul     s3,s1,s2
    sw      s2,1968(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1960(sp)
    ld      a7,1960(sp)
    flw     f23,0(a7)
    sd      a7,1960(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1952(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 10
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1952(sp)
    mul     s3,s1,s2
    sw      s2,1952(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1944(sp)
    ld      a7,1944(sp)
    lw      s1,0(a7)
    sw      s1,1940(sp)
    sd      a7,1944(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1936(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 13
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1936(sp)
    mul     s3,s1,s2
    sw      s2,1936(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1928(sp)
    ld      a7,1928(sp)
    lw      s1,0(a7)
    sw      s1,1924(sp)
    sd      a7,1928(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1920(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 20
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1920(sp)
    mul     s3,s1,s2
    sw      s2,1920(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1912(sp)
    ld      a7,1912(sp)
    flw     f24,0(a7)
    sd      a7,1912(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1904(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 33
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1904(sp)
    mul     s3,s1,s2
    sw      s2,1904(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1896(sp)
    ld      a7,1896(sp)
    flw     f25,0(a7)
    sd      a7,1896(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1888(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 23
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1888(sp)
    mul     s3,s1,s2
    sw      s2,1888(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1880(sp)
    ld      a7,1880(sp)
    flw     f26,0(a7)
    sd      a7,1880(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1872(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 9
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1872(sp)
    mul     s3,s1,s2
    sw      s2,1872(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1864(sp)
    ld      a7,1864(sp)
    flw     f27,0(a7)
    fsw     f27,1860(sp)
    sd      a7,1864(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1856(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 25
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1856(sp)
    mul     s3,s1,s2
    sw      s2,1856(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1848(sp)
    ld      a7,1848(sp)
    flw     f27,0(a7)
    fsw     f27,1844(sp)
    sd      a7,1848(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1840(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 8
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1840(sp)
    mul     s3,s1,s2
    sw      s2,1840(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1832(sp)
    ld      a7,1832(sp)
    lw      s1,0(a7)
    sw      s1,1828(sp)
    sd      a7,1832(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1824(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 39
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1824(sp)
    mul     s3,s1,s2
    sw      s2,1824(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1816(sp)
    ld      a7,1816(sp)
    flw     f27,0(a7)
    fsw     f27,1812(sp)
    sd      a7,1816(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1808(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 17
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1808(sp)
    mul     s3,s1,s2
    sw      s2,1808(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1800(sp)
    ld      a7,1800(sp)
    lw      s1,0(a7)
    sw      s1,1796(sp)
    sd      a7,1800(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1792(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 21
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1792(sp)
    mul     s3,s1,s2
    sw      s2,1792(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1784(sp)
    ld      a7,1784(sp)
    flw     f27,0(a7)
    fsw     f27,1780(sp)
    sd      a7,1784(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1776(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 16
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1776(sp)
    mul     s3,s1,s2
    sw      s2,1776(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1768(sp)
    ld      a7,1768(sp)
    flw     f27,0(a7)
    fsw     f27,1764(sp)
    sd      a7,1768(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1760(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 5
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1760(sp)
    mul     s3,s1,s2
    sw      s2,1760(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1752(sp)
    ld      a7,1752(sp)
    flw     f27,0(a7)
    fsw     f27,1748(sp)
    sd      a7,1752(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1744(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 34
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1744(sp)
    mul     s3,s1,s2
    sw      s2,1744(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1736(sp)
    ld      a7,1736(sp)
    flw     f27,0(a7)
    fsw     f27,1732(sp)
    sd      a7,1736(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1728(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 18
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1728(sp)
    mul     s3,s1,s2
    sw      s2,1728(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1720(sp)
    ld      a7,1720(sp)
    lw      s1,0(a7)
    sw      s1,1716(sp)
    sd      a7,1720(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1712(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 9
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1712(sp)
    mul     s3,s1,s2
    sw      s2,1712(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1704(sp)
    ld      a7,1704(sp)
    lw      s1,0(a7)
    sw      s1,1700(sp)
    sd      a7,1704(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1696(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 14
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1696(sp)
    mul     s3,s1,s2
    sw      s2,1696(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1688(sp)
    ld      a7,1688(sp)
    flw     f27,0(a7)
    fsw     f27,1684(sp)
    sd      a7,1688(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1680(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 10
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1680(sp)
    mul     s3,s1,s2
    sw      s2,1680(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1672(sp)
    ld      a7,1672(sp)
    flw     f27,0(a7)
    fsw     f27,1668(sp)
    sd      a7,1672(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1664(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 0
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1664(sp)
    mul     s3,s1,s2
    sw      s2,1664(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1656(sp)
    ld      a7,1656(sp)
    flw     f27,0(a7)
    fsw     f27,1652(sp)
    sd      a7,1656(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1648(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 12
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1648(sp)
    mul     s3,s1,s2
    sw      s2,1648(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1640(sp)
    ld      a7,1640(sp)
    lw      s1,0(a7)
    sw      s1,1636(sp)
    sd      a7,1640(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1632(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 31
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1632(sp)
    mul     s3,s1,s2
    sw      s2,1632(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1624(sp)
    ld      a7,1624(sp)
    flw     f27,0(a7)
    fsw     f27,1620(sp)
    sd      a7,1624(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1616(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 11
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1616(sp)
    mul     s3,s1,s2
    sw      s2,1616(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1608(sp)
    ld      a7,1608(sp)
    lw      s1,0(a7)
    sw      s1,1604(sp)
    sd      a7,1608(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1600(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 16
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1600(sp)
    mul     s3,s1,s2
    sw      s2,1600(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1592(sp)
    ld      a7,1592(sp)
    lw      s1,0(a7)
    sw      s1,1588(sp)
    sd      a7,1592(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1584(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 27
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1584(sp)
    mul     s3,s1,s2
    sw      s2,1584(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1576(sp)
    ld      a7,1576(sp)
    flw     f27,0(a7)
    fsw     f27,1572(sp)
    sd      a7,1576(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1568(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 24
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1568(sp)
    mul     s3,s1,s2
    sw      s2,1568(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1560(sp)
    ld      a7,1560(sp)
    flw     f27,0(a7)
    fsw     f27,1556(sp)
    sd      a7,1560(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1552(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 13
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1552(sp)
    mul     s3,s1,s2
    sw      s2,1552(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1544(sp)
    ld      a7,1544(sp)
    flw     f27,0(a7)
    fsw     f27,1540(sp)
    sd      a7,1544(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1536(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 29
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1536(sp)
    mul     s3,s1,s2
    sw      s2,1536(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1528(sp)
    ld      a7,1528(sp)
    flw     f27,0(a7)
    fsw     f27,1524(sp)
    sd      a7,1528(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1520(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 3
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1520(sp)
    mul     s3,s1,s2
    sw      s2,1520(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1512(sp)
    ld      a7,1512(sp)
    lw      s1,0(a7)
    sw      s1,1508(sp)
    sd      a7,1512(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1504(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 21
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1504(sp)
    mul     s3,s1,s2
    sw      s2,1504(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1496(sp)
    ld      a7,1496(sp)
    lw      s1,0(a7)
    sw      s1,1492(sp)
    sd      a7,1496(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1488(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 20
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1488(sp)
    mul     s3,s1,s2
    sw      s2,1488(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1480(sp)
    ld      a7,1480(sp)
    lw      s1,0(a7)
    sw      s1,1476(sp)
    sd      a7,1480(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1472(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 18
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1472(sp)
    mul     s3,s1,s2
    sw      s2,1472(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1464(sp)
    ld      a7,1464(sp)
    flw     f27,0(a7)
    fsw     f27,1460(sp)
    sd      a7,1464(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1456(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 19
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1456(sp)
    mul     s3,s1,s2
    sw      s2,1456(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1448(sp)
    ld      a7,1448(sp)
    flw     f27,0(a7)
    fsw     f27,1444(sp)
    sd      a7,1448(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1440(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 22
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1440(sp)
    mul     s3,s1,s2
    sw      s2,1440(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1432(sp)
    ld      a7,1432(sp)
    flw     f27,0(a7)
    fsw     f27,1428(sp)
    sd      a7,1432(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1424(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 26
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1424(sp)
    mul     s3,s1,s2
    sw      s2,1424(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1416(sp)
    ld      a7,1416(sp)
    flw     f27,0(a7)
    fsw     f27,1412(sp)
    sd      a7,1416(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1408(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 36
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1408(sp)
    mul     s3,s1,s2
    sw      s2,1408(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1400(sp)
    ld      a7,1400(sp)
    flw     f27,0(a7)
    fsw     f27,1396(sp)
    sd      a7,1400(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1392(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 17
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1392(sp)
    mul     s3,s1,s2
    sw      s2,1392(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1384(sp)
    ld      a7,1384(sp)
    flw     f27,0(a7)
    fsw     f27,1380(sp)
    sd      a7,1384(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1376(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 15
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1376(sp)
    mul     s3,s1,s2
    sw      s2,1376(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1368(sp)
    ld      a7,1368(sp)
    lw      s1,0(a7)
    sw      s1,1364(sp)
    sd      a7,1368(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1360(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 2
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1360(sp)
    mul     s3,s1,s2
    sw      s2,1360(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1352(sp)
    ld      a7,1352(sp)
    flw     f27,0(a7)
    fsw     f27,1348(sp)
    sd      a7,1352(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1344(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 14
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1344(sp)
    mul     s3,s1,s2
    sw      s2,1344(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3000
    li      s1, 3000
    add     a7,s1,a7
    sd      a7,1336(sp)
    ld      a7,1336(sp)
    lw      s1,0(a7)
    sw      s1,1332(sp)
    sd      a7,1336(sp)
    la      a7, k
    lw      s1,0(a7)
    sw      s1,1328(sp)
    li      a7, 0
    li      s1, 3
    li      s2, 35
    mul     s3,s1,s2
    add     a7,a7,s3
    li      s1, 1
    lw      s2,1328(sp)
    mul     s3,s1,s2
    sw      s2,1328(sp)
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    li      s1, 3288
    li      s1, 3288
    add     a7,s1,a7
    sd      a7,1320(sp)
    ld      a7,1320(sp)
    flw     f27,0(a7)
    fsw     f27,1316(sp)
    sd      a7,1320(sp)
    li      s1, 2084
    li      s1, 2084
    add     s1,sp,s1
    lw      a7,0(s1)
    sw      a7,-4(sp)
    li      s1, 2084
    li      s1, 2084
    add     s1,sp,s1
    sw      a7,0(s1)
    fsw     f18,-8(sp)
    fsw     f19,-12(sp)
    fsw     f20,-16(sp)
    fsw     f21,-20(sp)
    fsw     f22,-24(sp)
    lw      a7,1972(sp)
    sw      a7,-28(sp)
    sw      a7,1972(sp)
    fsw     f23,-32(sp)
    lw      a7,1940(sp)
    sw      a7,-36(sp)
    sw      a7,1940(sp)
    lw      a7,1924(sp)
    sw      a7,-40(sp)
    sw      a7,1924(sp)
    fsw     f24,-44(sp)
    fsw     f25,-48(sp)
    fsw     f26,-52(sp)
    flw     f27,1860(sp)
    fsw     f27,-56(sp)
    fsw     f27,1860(sp)
    flw     f27,1844(sp)
    fsw     f27,-60(sp)
    fsw     f27,1844(sp)
    lw      a7,1828(sp)
    sw      a7,-64(sp)
    sw      a7,1828(sp)
    flw     f27,1812(sp)
    fsw     f27,-68(sp)
    fsw     f27,1812(sp)
    lw      a7,1796(sp)
    sw      a7,-72(sp)
    sw      a7,1796(sp)
    flw     f27,1780(sp)
    fsw     f27,-76(sp)
    fsw     f27,1780(sp)
    flw     f27,1764(sp)
    fsw     f27,-80(sp)
    fsw     f27,1764(sp)
    flw     f27,1748(sp)
    fsw     f27,-84(sp)
    fsw     f27,1748(sp)
    flw     f27,1732(sp)
    fsw     f27,-88(sp)
    fsw     f27,1732(sp)
    lw      a7,1716(sp)
    sw      a7,-92(sp)
    sw      a7,1716(sp)
    lw      a7,1700(sp)
    sw      a7,-96(sp)
    sw      a7,1700(sp)
    flw     f27,1684(sp)
    fsw     f27,-100(sp)
    fsw     f27,1684(sp)
    flw     f27,1668(sp)
    fsw     f27,-104(sp)
    fsw     f27,1668(sp)
    flw     f27,1652(sp)
    fsw     f27,-108(sp)
    fsw     f27,1652(sp)
    lw      a7,1636(sp)
    sw      a7,-112(sp)
    sw      a7,1636(sp)
    flw     f27,1620(sp)
    fsw     f27,-116(sp)
    fsw     f27,1620(sp)
    lw      a7,1604(sp)
    sw      a7,-120(sp)
    sw      a7,1604(sp)
    lw      a7,1588(sp)
    sw      a7,-124(sp)
    sw      a7,1588(sp)
    flw     f27,1572(sp)
    fsw     f27,-128(sp)
    fsw     f27,1572(sp)
    flw     f27,1556(sp)
    fsw     f27,-132(sp)
    fsw     f27,1556(sp)
    flw     f27,1540(sp)
    fsw     f27,-136(sp)
    fsw     f27,1540(sp)
    flw     f27,1524(sp)
    fsw     f27,-140(sp)
    fsw     f27,1524(sp)
    lw      a7,1508(sp)
    sw      a7,-144(sp)
    sw      a7,1508(sp)
    lw      a7,1492(sp)
    sw      a7,-148(sp)
    sw      a7,1492(sp)
    lw      a7,1476(sp)
    sw      a7,-152(sp)
    sw      a7,1476(sp)
    flw     f27,1460(sp)
    fsw     f27,-156(sp)
    fsw     f27,1460(sp)
    flw     f27,1444(sp)
    fsw     f27,-160(sp)
    fsw     f27,1444(sp)
    flw     f27,1428(sp)
    fsw     f27,-164(sp)
    fsw     f27,1428(sp)
    flw     f27,1412(sp)
    fsw     f27,-168(sp)
    fsw     f27,1412(sp)
    flw     f27,1396(sp)
    fsw     f27,-172(sp)
    fsw     f27,1396(sp)
    flw     f27,1380(sp)
    fsw     f27,-176(sp)
    fsw     f27,1380(sp)
    lw      a7,1364(sp)
    sw      a7,-180(sp)
    sw      a7,1364(sp)
    flw     f27,1348(sp)
    fsw     f27,-184(sp)
    fsw     f27,1348(sp)
    lw      a7,1332(sp)
    sw      a7,-188(sp)
    sw      a7,1332(sp)
    flw     f27,1316(sp)
    fsw     f27,-192(sp)
    fsw     f27,1316(sp)
    li      a0, 2100
    li      a0, 2100
    add     a0,sp,a0
    fsw     f8,0(a0)
    li      a1, 2068
    li      a1, 2068
    add     a1,sp,a1
    fsw     f9,0(a1)
    li      a2, 2052
    li      a2, 2052
    add     a2,sp,a2
    fsw     f18,0(a2)
    li      a3, 2036
    li      a3, 2036
    add     a3,sp,a3
    fsw     f19,0(a3)
    li      a4, 2020
    li      a4, 2020
    add     a4,sp,a4
    fsw     f20,0(a4)
    li      a5, 2004
    li      a5, 2004
    add     a5,sp,a5
    fsw     f21,0(a5)
    fsw     f22,1988(sp)
    fsw     f23,1956(sp)
    fsw     f24,1908(sp)
    fsw     f25,1892(sp)
    fsw     f26,1876(sp)
    li      a6, 2344
    li      a6, 2344
    add     a6,sp,a6
    fsw     fa0,0(a6)
    li      a7, 2340
    li      a7, 2340
    add     a7,sp,a7
    fsw     fa1,0(a7)
    li      a7, 2276
    li      a7, 2276
    add     a7,sp,a7
    fsw     fa2,0(a7)
    li      a7, 2212
    li      a7, 2212
    add     a7,sp,a7
    fsw     fa3,0(a7)
    li      a7, 2196
    li      a7, 2196
    add     a7,sp,a7
    fsw     fa4,0(a7)
    li      a7, 2180
    li      a7, 2180
    add     a7,sp,a7
    fsw     fa5,0(a7)
    li      a7, 2148
    li      a7, 2148
    add     a7,sp,a7
    fsw     fa6,0(a7)
    li      a7, 2132
    li      a7, 2132
    add     a7,sp,a7
    fsw     fa7,0(a7)
    li      a7, 2276
    add     a7,sp,a7
    flw     fa0,0(a7)
    li      a7, 2212
    add     a7,sp,a7
    flw     fa1,0(a7)
    li      a7, 2196
    add     a7,sp,a7
    flw     fa2,0(a7)
    li      a7, 2180
    add     a7,sp,a7
    flw     fa3,0(a7)
    li      a7, 2148
    add     a7,sp,a7
    flw     fa4,0(a7)
    li      a7, 2132
    add     a7,sp,a7
    flw     fa5,0(a7)
    li      a7, 2100
    add     a7,sp,a7
    flw     fa6,0(a7)
    li      a7, 2068
    add     a7,sp,a7
    flw     fa7,0(a7)
    li      a7, 2324
    li      a7, 2324
    add     a7,sp,a7
    lw      a0,0(a7)
    li      a7, 2308
    li      a7, 2308
    add     a7,sp,a7
    lw      a1,0(a7)
    li      a7, 2292
    li      a7, 2292
    add     a7,sp,a7
    lw      a2,0(a7)
    li      a7, 2260
    li      a7, 2260
    add     a7,sp,a7
    lw      a3,0(a7)
    li      a7, 2244
    li      a7, 2244
    add     a7,sp,a7
    lw      a4,0(a7)
    li      a7, 2228
    li      a7, 2228
    add     a7,sp,a7
    lw      a5,0(a7)
    li      a7, 2164
    li      a7, 2164
    add     a7,sp,a7
    lw      a6,0(a7)
    li      s1, 2116
    li      s1, 2116
    add     s1,sp,s1
    lw      a7,0(s1)
    call    params_f40_i24
    fmv.s   fa1, fa0
    li      a0, 0
    li      a1, 3
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    li      a4, 3288
    li      a4, 3288
    add     a0,a4,a0
    li      a5, 0
    li      a6, 1
    mul     a7,a1,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    li      a4, 3288
    add     a5,a4,a5
    li      a1, 0
    li      s1, 3
    li      s2, 2
    mul     s3,s1,s2
    add     a1,a1,s3
    slli a1,a1,2
    add     a1,a1,sp
    li      a4, 3288
    add     a1,a4,a1
    li      a4, 0
    li      s1, 3
    li      s2, 3
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1272(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 4
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1264(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 5
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1256(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 6
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1248(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 7
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1240(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 8
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1232(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 9
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1224(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 10
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1216(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 11
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1208(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 12
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1200(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 13
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1192(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 14
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1184(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 15
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1176(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 16
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1168(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 17
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1160(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 18
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1152(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 19
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1144(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 20
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1136(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 21
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1128(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 22
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1120(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 23
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1112(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 24
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1104(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 25
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1096(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 26
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1088(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 27
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1080(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 28
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1072(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 29
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1064(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 30
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1056(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 31
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1048(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 32
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1040(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 33
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1032(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 34
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1024(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 35
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1016(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 36
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1008(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 37
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,1000(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 38
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,992(sp)
    li      a4, 0
    li      s1, 3
    li      s2, 39
    mul     s3,s1,s2
    add     a4,a4,s3
    slli a4,a4,2
    add     a4,a4,sp
    li      s1, 3288
    li      s1, 3288
    add     a4,s1,a4
    sd      a4,984(sp)
    ld      a4,1232(sp)
    sd      a4,-8(sp)
    sd      a4,1232(sp)
    ld      a4,1224(sp)
    sd      a4,-16(sp)
    sd      a4,1224(sp)
    ld      a4,1216(sp)
    sd      a4,-24(sp)
    sd      a4,1216(sp)
    ld      a4,1208(sp)
    sd      a4,-32(sp)
    sd      a4,1208(sp)
    ld      a4,1200(sp)
    sd      a4,-40(sp)
    sd      a4,1200(sp)
    ld      a4,1192(sp)
    sd      a4,-48(sp)
    sd      a4,1192(sp)
    ld      a4,1184(sp)
    sd      a4,-56(sp)
    sd      a4,1184(sp)
    ld      a4,1176(sp)
    sd      a4,-64(sp)
    sd      a4,1176(sp)
    ld      a4,1168(sp)
    sd      a4,-72(sp)
    sd      a4,1168(sp)
    ld      a4,1160(sp)
    sd      a4,-80(sp)
    sd      a4,1160(sp)
    ld      a4,1152(sp)
    sd      a4,-88(sp)
    sd      a4,1152(sp)
    ld      a4,1144(sp)
    sd      a4,-96(sp)
    sd      a4,1144(sp)
    ld      a4,1136(sp)
    sd      a4,-104(sp)
    sd      a4,1136(sp)
    ld      a4,1128(sp)
    sd      a4,-112(sp)
    sd      a4,1128(sp)
    ld      a4,1120(sp)
    sd      a4,-120(sp)
    sd      a4,1120(sp)
    ld      a4,1112(sp)
    sd      a4,-128(sp)
    sd      a4,1112(sp)
    ld      a4,1104(sp)
    sd      a4,-136(sp)
    sd      a4,1104(sp)
    ld      a4,1096(sp)
    sd      a4,-144(sp)
    sd      a4,1096(sp)
    ld      a4,1088(sp)
    sd      a4,-152(sp)
    sd      a4,1088(sp)
    ld      a4,1080(sp)
    sd      a4,-160(sp)
    sd      a4,1080(sp)
    ld      a4,1072(sp)
    sd      a4,-168(sp)
    sd      a4,1072(sp)
    ld      a4,1064(sp)
    sd      a4,-176(sp)
    sd      a4,1064(sp)
    ld      a4,1056(sp)
    sd      a4,-184(sp)
    sd      a4,1056(sp)
    ld      a4,1048(sp)
    sd      a4,-192(sp)
    sd      a4,1048(sp)
    ld      a4,1040(sp)
    sd      a4,-200(sp)
    sd      a4,1040(sp)
    ld      a4,1032(sp)
    sd      a4,-208(sp)
    sd      a4,1032(sp)
    ld      a4,1024(sp)
    sd      a4,-216(sp)
    sd      a4,1024(sp)
    ld      a4,1016(sp)
    sd      a4,-224(sp)
    sd      a4,1016(sp)
    ld      a4,1008(sp)
    sd      a4,-232(sp)
    sd      a4,1008(sp)
    ld      a4,1000(sp)
    sd      a4,-240(sp)
    sd      a4,1000(sp)
    ld      a4,992(sp)
    sd      a4,-248(sp)
    sd      a4,992(sp)
    ld      a4,984(sp)
    sd      a4,-256(sp)
    sd      a4,984(sp)
    sd      a0,1296(sp)
    sd      a1,1280(sp)
    sd      a5,1288(sp)
    fsw     fa0,1312(sp)
    fsw     fa1,1308(sp)
    ld      a0,1296(sp)
    ld      a1,1288(sp)
    ld      a2,1280(sp)
    ld      a3,1272(sp)
    ld      a4,1264(sp)
    ld      a5,1256(sp)
    ld      a6,1248(sp)
    ld      a7,1240(sp)
    call    params_fa40
    fmv.s   fa1, fa0
    la      a0, k
    lw      a1,0(a0)
    li      a2, 0
    li      a3, 3
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    li      a6, 1
    mul     a7,a6,a1
    add     a2,a2,a7
    slli a2,a2,2
    add     a2,a2,sp
    li      a6, 3288
    li      a6, 3288
    add     a2,a6,a2
    flw     fa2,0(a2)
    li      a6, 0
    mul     s1,a3,a4
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    li      a3, 3000
    li      a3, 3000
    add     a6,a3,a6
    la      a3, k
    lw      a4,0(a3)
    sw      a4,940(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 1
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,940(sp)
    mul     s3,a4,s2
    sw      s2,940(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,928(sp)
    ld      a3,928(sp)
    lw      a4,0(a3)
    sw      a4,924(sp)
    sd      a3,928(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 1
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,912(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,908(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 2
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,908(sp)
    mul     s3,a4,s2
    sw      s2,908(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,896(sp)
    ld      a3,896(sp)
    flw     fa3,0(a3)
    sd      a3,896(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,888(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 2
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,888(sp)
    mul     s3,a4,s2
    sw      s2,888(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,880(sp)
    ld      a3,880(sp)
    lw      a4,0(a3)
    sw      a4,876(sp)
    sd      a3,880(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,872(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 3
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,872(sp)
    mul     s3,a4,s2
    sw      s2,872(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,864(sp)
    ld      a3,864(sp)
    flw     fa4,0(a3)
    sd      a3,864(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,856(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 4
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,856(sp)
    mul     s3,a4,s2
    sw      s2,856(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,848(sp)
    ld      a3,848(sp)
    flw     fa5,0(a3)
    sd      a3,848(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 5
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,832(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 3
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,824(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,820(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 4
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,820(sp)
    mul     s3,a4,s2
    sw      s2,820(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,808(sp)
    ld      a3,808(sp)
    lw      a4,0(a3)
    sw      a4,804(sp)
    sd      a3,808(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,800(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 5
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,800(sp)
    mul     s3,a4,s2
    sw      s2,800(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,792(sp)
    ld      a3,792(sp)
    lw      a4,0(a3)
    sw      a4,788(sp)
    sd      a3,792(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 6
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,776(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 6
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,768(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 7
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,760(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,756(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 8
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,756(sp)
    mul     s3,a4,s2
    sw      s2,756(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,744(sp)
    ld      a3,744(sp)
    lw      a4,0(a3)
    sw      a4,740(sp)
    sd      a3,744(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 7
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,728(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 8
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,720(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,716(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 9
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,716(sp)
    mul     s3,a4,s2
    sw      s2,716(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,704(sp)
    ld      a3,704(sp)
    flw     fa6,0(a3)
    sd      a3,704(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,696(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 10
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,696(sp)
    mul     s3,a4,s2
    sw      s2,696(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,688(sp)
    ld      a3,688(sp)
    flw     fa7,0(a3)
    sd      a3,688(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,680(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 11
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,680(sp)
    mul     s3,a4,s2
    sw      s2,680(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,672(sp)
    ld      a3,672(sp)
    flw     f8,0(a3)
    sd      a3,672(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 12
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,656(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,652(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 9
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,652(sp)
    mul     s3,a4,s2
    sw      s2,652(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,640(sp)
    ld      a3,640(sp)
    lw      a4,0(a3)
    sw      a4,636(sp)
    sd      a3,640(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,632(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 13
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,632(sp)
    mul     s3,a4,s2
    sw      s2,632(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,624(sp)
    ld      a3,624(sp)
    flw     f9,0(a3)
    sd      a3,624(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,616(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 14
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,616(sp)
    mul     s3,a4,s2
    sw      s2,616(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,608(sp)
    ld      a3,608(sp)
    flw     f18,0(a3)
    sd      a3,608(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,600(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 15
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,600(sp)
    mul     s3,a4,s2
    sw      s2,600(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,592(sp)
    ld      a3,592(sp)
    flw     f19,0(a3)
    sd      a3,592(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 10
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,576(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 16
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,568(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 11
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,560(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 12
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,552(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 17
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,544(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,540(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 18
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,540(sp)
    mul     s3,a4,s2
    sw      s2,540(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,528(sp)
    ld      a3,528(sp)
    flw     f20,0(a3)
    sd      a3,528(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,520(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 19
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,520(sp)
    mul     s3,a4,s2
    sw      s2,520(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,512(sp)
    ld      a3,512(sp)
    flw     f21,0(a3)
    sd      a3,512(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 13
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,496(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,492(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 14
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,492(sp)
    mul     s3,a4,s2
    sw      s2,492(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,480(sp)
    ld      a3,480(sp)
    lw      a4,0(a3)
    sw      a4,476(sp)
    sd      a3,480(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 20
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,464(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 21
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,456(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,452(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 22
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,452(sp)
    mul     s3,a4,s2
    sw      s2,452(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,440(sp)
    ld      a3,440(sp)
    flw     f22,0(a3)
    sd      a3,440(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,432(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 23
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,432(sp)
    mul     s3,a4,s2
    sw      s2,432(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,424(sp)
    ld      a3,424(sp)
    flw     f23,0(a3)
    sd      a3,424(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 15
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,408(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 16
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,400(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,396(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 17
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,396(sp)
    mul     s3,a4,s2
    sw      s2,396(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,384(sp)
    ld      a3,384(sp)
    lw      a4,0(a3)
    sw      a4,380(sp)
    sd      a3,384(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,376(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 18
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,376(sp)
    mul     s3,a4,s2
    sw      s2,376(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,368(sp)
    ld      a3,368(sp)
    lw      a4,0(a3)
    sw      a4,364(sp)
    sd      a3,368(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,360(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 24
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,360(sp)
    mul     s3,a4,s2
    sw      s2,360(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,352(sp)
    ld      a3,352(sp)
    flw     f24,0(a3)
    sd      a3,352(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,344(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 25
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,344(sp)
    mul     s3,a4,s2
    sw      s2,344(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,336(sp)
    ld      a3,336(sp)
    flw     f25,0(a3)
    sd      a3,336(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 19
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,320(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,316(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 20
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,316(sp)
    mul     s3,a4,s2
    sw      s2,316(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,304(sp)
    ld      a3,304(sp)
    lw      a4,0(a3)
    sw      a4,300(sp)
    sd      a3,304(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 26
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,288(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,284(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 21
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,284(sp)
    mul     s3,a4,s2
    sw      s2,284(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,272(sp)
    ld      a3,272(sp)
    lw      a4,0(a3)
    sw      a4,268(sp)
    sd      a3,272(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 22
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,256(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 23
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,248(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,244(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 27
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,244(sp)
    mul     s3,a4,s2
    sw      s2,244(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,232(sp)
    ld      a3,232(sp)
    flw     f26,0(a3)
    sd      a3,232(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,224(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 28
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,224(sp)
    mul     s3,a4,s2
    sw      s2,224(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,216(sp)
    ld      a3,216(sp)
    flw     f27,0(a3)
    fsw     f27,212(sp)
    sd      a3,216(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 29
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,200(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,196(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 0
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,196(sp)
    mul     s3,a4,s2
    sw      s2,196(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,184(sp)
    ld      a3,184(sp)
    lw      a4,0(a3)
    sw      a4,180(sp)
    sd      a3,184(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 1
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,168(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 30
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,160(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,156(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 31
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,156(sp)
    mul     s3,a4,s2
    sw      s2,156(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,144(sp)
    ld      a3,144(sp)
    flw     f27,0(a3)
    fsw     f27,140(sp)
    sd      a3,144(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,136(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 2
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,136(sp)
    mul     s3,a4,s2
    sw      s2,136(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,128(sp)
    ld      a3,128(sp)
    lw      a4,0(a3)
    sw      a4,124(sp)
    sd      a3,128(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,120(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 32
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,120(sp)
    mul     s3,a4,s2
    sw      s2,120(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,112(sp)
    ld      a3,112(sp)
    flw     f27,0(a3)
    fsw     f27,108(sp)
    sd      a3,112(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 33
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,96(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 34
    mul     s3,a4,s2
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,88(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,84(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 35
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,84(sp)
    mul     s3,a4,s2
    sw      s2,84(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3288
    li      a4, 3288
    add     a3,a4,a3
    sd      a3,72(sp)
    ld      a3,72(sp)
    flw     f27,0(a3)
    fsw     f27,68(sp)
    sd      a3,72(sp)
    la      a3, k
    lw      a4,0(a3)
    sw      a4,64(sp)
    li      a3, 0
    li      a4, 3
    li      s2, 3
    mul     s3,a4,s2
    add     a3,a3,s3
    li      a4, 1
    lw      s2,64(sp)
    mul     s3,a4,s2
    sw      s2,64(sp)
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    li      a4, 3000
    li      a4, 3000
    add     a3,a4,a3
    sd      a3,56(sp)
    ld      a3,56(sp)
    lw      a4,0(a3)
    sw      a4,52(sp)
    sd      a3,56(sp)
    ld      a3,776(sp)
    sd      a3,-8(sp)
    sd      a3,776(sp)
    ld      a3,768(sp)
    sd      a3,-16(sp)
    sd      a3,768(sp)
    ld      a3,760(sp)
    sd      a3,-24(sp)
    sd      a3,760(sp)
    lw      a3,740(sp)
    sw      a3,-28(sp)
    sw      a3,740(sp)
    ld      a3,728(sp)
    sd      a3,-40(sp)
    sd      a3,728(sp)
    ld      a3,720(sp)
    sd      a3,-48(sp)
    sd      a3,720(sp)
    ld      a3,656(sp)
    sd      a3,-56(sp)
    sd      a3,656(sp)
    lw      a3,636(sp)
    sw      a3,-60(sp)
    sw      a3,636(sp)
    fsw     f18,-64(sp)
    fsw     f19,-68(sp)
    ld      a3,576(sp)
    sd      a3,-80(sp)
    sd      a3,576(sp)
    ld      a3,568(sp)
    sd      a3,-88(sp)
    sd      a3,568(sp)
    ld      a3,560(sp)
    sd      a3,-96(sp)
    sd      a3,560(sp)
    ld      a3,552(sp)
    sd      a3,-104(sp)
    sd      a3,552(sp)
    ld      a3,544(sp)
    sd      a3,-112(sp)
    sd      a3,544(sp)
    fsw     f20,-116(sp)
    fsw     f21,-120(sp)
    ld      a3,496(sp)
    sd      a3,-128(sp)
    sd      a3,496(sp)
    lw      a3,476(sp)
    sw      a3,-132(sp)
    sw      a3,476(sp)
    ld      a3,464(sp)
    sd      a3,-144(sp)
    sd      a3,464(sp)
    ld      a3,456(sp)
    sd      a3,-152(sp)
    sd      a3,456(sp)
    fsw     f22,-156(sp)
    fsw     f23,-160(sp)
    ld      a3,408(sp)
    sd      a3,-168(sp)
    sd      a3,408(sp)
    ld      a3,400(sp)
    sd      a3,-176(sp)
    sd      a3,400(sp)
    lw      a3,380(sp)
    sw      a3,-180(sp)
    sw      a3,380(sp)
    lw      a3,364(sp)
    sw      a3,-184(sp)
    sw      a3,364(sp)
    fsw     f24,-188(sp)
    fsw     f25,-192(sp)
    ld      a3,320(sp)
    sd      a3,-200(sp)
    sd      a3,320(sp)
    lw      a3,300(sp)
    sw      a3,-204(sp)
    sw      a3,300(sp)
    ld      a3,288(sp)
    sd      a3,-216(sp)
    sd      a3,288(sp)
    lw      a3,268(sp)
    sw      a3,-220(sp)
    sw      a3,268(sp)
    ld      a3,256(sp)
    sd      a3,-232(sp)
    sd      a3,256(sp)
    ld      a3,248(sp)
    sd      a3,-240(sp)
    sd      a3,248(sp)
    fsw     f26,-244(sp)
    flw     f27,212(sp)
    fsw     f27,-248(sp)
    fsw     f27,212(sp)
    ld      a3,200(sp)
    sd      a3,-256(sp)
    sd      a3,200(sp)
    lw      a3,180(sp)
    sw      a3,-260(sp)
    sw      a3,180(sp)
    ld      a3,168(sp)
    sd      a3,-272(sp)
    sd      a3,168(sp)
    ld      a3,160(sp)
    sd      a3,-280(sp)
    sd      a3,160(sp)
    flw     f27,140(sp)
    fsw     f27,-284(sp)
    fsw     f27,140(sp)
    lw      a3,124(sp)
    sw      a3,-288(sp)
    sw      a3,124(sp)
    flw     f27,108(sp)
    fsw     f27,-292(sp)
    fsw     f27,108(sp)
    ld      a3,96(sp)
    sd      a3,-304(sp)
    sd      a3,96(sp)
    ld      a3,88(sp)
    sd      a3,-312(sp)
    sd      a3,88(sp)
    flw     f27,68(sp)
    fsw     f27,-316(sp)
    fsw     f27,68(sp)
    lw      a3,52(sp)
    sw      a3,-320(sp)
    sw      a3,52(sp)
    sw      a1,972(sp)
    sd      a2,960(sp)
    sd      a6,944(sp)
    fsw     f8,668(sp)
    fsw     f9,620(sp)
    fsw     f18,604(sp)
    fsw     f19,588(sp)
    fsw     f20,524(sp)
    fsw     f21,508(sp)
    fsw     f22,436(sp)
    fsw     f23,420(sp)
    fsw     f24,348(sp)
    fsw     f25,332(sp)
    fsw     f26,228(sp)
    fsw     fa0,980(sp)
    fsw     fa1,976(sp)
    fsw     fa2,956(sp)
    fsw     fa3,892(sp)
    fsw     fa4,860(sp)
    fsw     fa5,844(sp)
    fsw     fa6,700(sp)
    fsw     fa7,684(sp)
    flw     fa0,956(sp)
    flw     fa1,892(sp)
    flw     fa2,860(sp)
    flw     fa3,844(sp)
    flw     fa4,700(sp)
    flw     fa5,684(sp)
    flw     fa6,668(sp)
    flw     fa7,620(sp)
    ld      a0,944(sp)
    lw      a1,924(sp)
    ld      a2,912(sp)
    lw      a3,876(sp)
    ld      a4,832(sp)
    ld      a5,824(sp)
    lw      a6,804(sp)
    lw      a7,788(sp)
    call    params_mix
    mv      a1, a0
    sw      a0,48(sp)
    sw      a1,44(sp)
    li      a0, 2340
    add     a0,sp,a0
    flw     fa0,0(a0)
    call    putfloat
    li      a0, 10
    call    putch
    flw     fa0,1308(sp)
    call    putfloat
    li      a0, 10
    call    putch
    flw     fa0,976(sp)
    call    putfloat
    li      a0, 10
    call    putch
    lw      a0,44(sp)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 3776
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 3768
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 0
    li      a2, 3784
    li      a2, 3784
    add     sp,a2,sp
    ret
.section ___var
    .data
    .align 4
    .globl k
    .type k,@object
k:
    .word 0
