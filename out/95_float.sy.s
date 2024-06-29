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
    .globl float_abs
    .type float_abs,@function
float_abs:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L15_0:
    li      a0, 0
    fcvt.s.w fa1,a0,rtz
    flt.s   a1,fa0,fa1
    bnez    a1, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    li      a0, 0
    fmv.w.x fa2, a0
    fsub.s  fa3,fa2,fa0
    ld      ra,24(sp)
    ld      s0,16(sp)
    fsw     fa3,0(sp)
    fsw     fa0,12(sp)
    flw     fa0,0(sp)
    addi    sp,sp,32
    ret
.branch_false_25:
.L16_0:
    ld      ra,24(sp)
    ld      s0,16(sp)
    fsw     fa0,12(sp)
    flw     fa0,12(sp)
    addi    sp,sp,32
    ret
    .globl circle_area
    .type circle_area,@function
circle_area:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L14_0:
    fcvt.s.w fa0,a0,rtz
    li      a1, 1078530011
    fmv.w.x fa1, a1
    fmul.s  fa2,fa1,fa0
    fcvt.s.w fa3,a0,rtz
    fmul.s  fa4,fa2,fa3
    li      a2, 2
    fcvt.s.w fa5,a2,rtz
    fmul.s  fa6,fa4,fa5
    fcvt.s.w fa7,a2,rtz
    fdiv.s  f8,fa6,fa7
    ld      ra,48(sp)
    ld      s0,40(sp)
    fsw     f8,4(sp)
    fsw     fa0,32(sp)
    flw     fa0,4(sp)
    addi    sp,sp,56
    ret
    .globl float_eq
    .type float_eq,@function
float_eq:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L12_0:
    fsub.s  fa2,fa0,fa1
    fsw     fa0,28(sp)
    fsw     fa1,24(sp)
    fsw     fa2,20(sp)
    flw     fa0,20(sp)
    call    float_abs
    fsw     fa0,16(sp)
    li      a0, 897988541
    fmv.w.x fa1, a0
    flt.s   a1,fa0,fa1
    bnez    a1, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    li      a0, 2
    fcvt.s.w fa1,a0,rtz
    li      a2, 1073741824
    fmv.w.x fa2, a2
    fdiv.s  fa3,fa1,fa2
    ld      ra,40(sp)
    ld      s0,32(sp)
    fsw     fa3,4(sp)
    fsw     fa0,16(sp)
    flw     fa0,4(sp)
    addi    sp,sp,48
    ret
.branch_false_36:
    ld      ra,40(sp)
    ld      s0,32(sp)
    li      a0, 0
    addi    sp,sp,48
    ret
.L13_0:
    .globl error
    .type error,@function
error:
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
.L11_0:
    li      a0, 101
    call    putch
    li      a0, 114
    call    putch
    li      a0, 114
    call    putch
    li      a0, 111
    call    putch
    li      a0, 114
    call    putch
    li      a0, 10
    call    putch
    ld      ra,8(sp)
    ld      s0,0(sp)
    addi    sp,sp,16
    ret
    .globl ok
    .type ok,@function
ok:
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
.L10_0:
    li      a0, 111
    call    putch
    li      a0, 107
    call    putch
    li      a0, 10
    call    putch
    ld      ra,8(sp)
    ld      s0,0(sp)
    addi    sp,sp,16
    ret
    .globl assert
    .type assert,@function
assert:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L8_0:
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    seqz    a3, a2
    bnez    a3, .branch_true_58
    j       .branch_false_58
.branch_true_58:
    sw      a0,4(sp)
    sb      a2,3(sp)
    sb      a3,2(sp)
    call    error
    j       .L9_0
.branch_false_58:
    sw      a0,4(sp)
    sb      a2,3(sp)
    sb      a3,2(sp)
    call    ok
    j       .L9_0
.L9_0:
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
    .globl assert_not
    .type assert_not,@function
assert_not:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L6_0:
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    bnez    a2, .branch_true_67
    j       .branch_false_67
.branch_true_67:
    sw      a0,4(sp)
    sb      a2,3(sp)
    call    error
    j       .L7_0
.branch_false_67:
    sw      a0,4(sp)
    sb      a2,3(sp)
    call    ok
    j       .L7_0
.L7_0:
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-256
    sd      ra,248(sp)
    sd      s0,240(sp)
    addi    s0,sp,256
.L0_0:
    li      a0, 1033895936
    fmv.w.x fa0, a0
    li      a1, 3338725376
    fmv.w.x fa1, a1
    call    float_eq
    sw      a0,236(sp)
    sw      a0,236(sp)
    lw      a0,236(sp)
    call    assert_not
    li      a0, 1119752446
    fmv.w.x fa0, a0
    li      a1, 1107966695
    fmv.w.x fa1, a1
    call    float_eq
    sw      a0,232(sp)
    sw      a0,232(sp)
    lw      a0,232(sp)
    call    assert_not
    li      a0, 1107966695
    fmv.w.x fa0, a0
    li      a1, 1107966695
    fmv.w.x fa1, a1
    call    float_eq
    sw      a0,228(sp)
    sw      a0,228(sp)
    lw      a0,228(sp)
    call    assert
    li      a0, 1085276160
    fmv.w.x fa0, a0
    fcvt.w.s a1,fa0,rtz
    sw      a1,224(sp)
    lw      a0,224(sp)
    call    circle_area
    fsw     fa0,220(sp)
    li      a0, 1086534452
    fmv.w.x fa1, a0
    fcvt.w.s a1,fa1,rtz
    sw      a1,216(sp)
    fsw     fa0,220(sp)
    lw      a0,216(sp)
    call    circle_area
    fsw     fa0,212(sp)
    fsw     fa0,212(sp)
    flw     fa0,220(sp)
    flw     fa1,212(sp)
    call    float_eq
    sw      a0,208(sp)
    sw      a0,208(sp)
    lw      a0,208(sp)
    call    assert
    li      a0, 233
    fcvt.s.w fa0,a0,rtz
    li      a1, 0xfff
    fcvt.s.w fa1,a1,rtz
    fsw     fa0,204(sp)
    fsw     fa1,200(sp)
    flw     fa0,204(sp)
    flw     fa1,200(sp)
    call    float_eq
    sw      a0,196(sp)
    sw      a0,196(sp)
    lw      a0,196(sp)
    call    assert_not
    j       .L1_0
.L1_0:
    li      a0, 1069547520
    fmv.w.x fa0, a0
    li      a1, 0
    fmv.w.x fa1, a1
    feq.s   a2,fa0,fa1
    seqz    a2, a2
    bnez    a2, .branch_true_80
    j       .branch_false_80
.branch_true_80:
    sb      a2,195(sp)
    call    ok
    lb      a2,195(sp)
    j       .branch_false_80
.branch_false_80:
.L2_0:
    li      a0, 1079194419
    fmv.w.x fa0, a0
    li      a1, 0
    fmv.w.x fa1, a1
    feq.s   a3,fa0,fa1
    seqz    a3, a3
    seqz    a4, a3
    li      a5, 0
    xor     a6,a4,a5
    snez    a6, a6
    seqz    a7, a6
    bnez    a7, .branch_true_83
    j       .branch_false_83
.branch_true_83:
    sb      a2,195(sp)
    sb      a3,194(sp)
    sb      a4,193(sp)
    sb      a6,192(sp)
    sb      a7,191(sp)
    call    ok
    lb      a3,194(sp)
    lb      a4,193(sp)
    lb      a6,192(sp)
    lb      a2,195(sp)
    lb      a7,191(sp)
    j       .branch_false_83
.branch_false_83:
.L3_0:
    li      a0, 0
    fmv.w.x fa0, a0
    li      a1, 0
    fmv.w.x fa1, a1
    feq.s   a5,fa0,fa1
    seqz    a5, a5
    li      s1, 3
    li      s2, 0
    xor     s3,s1,s2
    snez    s3, s3
    and     s4,s3,a5
    bnez    s4, .branch_true_86
    j       .branch_false_86
.branch_true_86:
    sb      s3,189(sp)
    sb      s4,188(sp)
    sb      a2,195(sp)
    sb      a3,194(sp)
    sb      a4,193(sp)
    sb      a5,190(sp)
    sb      a6,192(sp)
    sb      a7,191(sp)
    call    error
    lb      s4,188(sp)
    lb      a3,194(sp)
    lb      s3,189(sp)
    lb      a4,193(sp)
    lb      a5,190(sp)
    lb      a6,192(sp)
    lb      a2,195(sp)
    lb      a7,191(sp)
    j       .branch_false_86
.branch_false_86:
.L4_0:
    li      a0, 0
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
    li      s2, 1050253722
    fmv.w.x fa0, s2
    li      s5, 0
    fmv.w.x fa1, s5
    feq.s   s6,fa0,fa1
    seqz    s6, s6
    or      s7,s1,s6
    bnez    s7, .branch_true_89
    j       .branch_false_89
.branch_true_89:
    sb      s1,187(sp)
    sb      s3,189(sp)
    sb      s4,188(sp)
    sb      s6,186(sp)
    sb      s7,185(sp)
    sb      a2,195(sp)
    sb      a3,194(sp)
    sb      a4,193(sp)
    sb      a5,190(sp)
    sb      a6,192(sp)
    sb      a7,191(sp)
    call    ok
    lb      s1,187(sp)
    lb      s4,188(sp)
    lb      a3,194(sp)
    lb      s3,189(sp)
    lb      s7,185(sp)
    lb      a4,193(sp)
    lb      a5,190(sp)
    lb      a6,192(sp)
    lb      s6,186(sp)
    lb      a2,195(sp)
    lb      a7,191(sp)
    j       .branch_false_89
.branch_false_89:
.L5_0:
    li      a0, 1
    li      a1, 0
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,112
    sb      s1,187(sp)
    sd      s2,168(sp)
    sb      s3,189(sp)
    sb      s4,188(sp)
    sb      s6,186(sp)
    sb      s7,185(sp)
    sw      a0,180(sp)
    sw      a1,176(sp)
    sb      a2,195(sp)
    sb      a3,194(sp)
    sb      a4,193(sp)
    sb      a5,190(sp)
    sb      a6,192(sp)
    sb      a7,191(sp)
    ld      a0,168(sp)
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
    addi    a0,a0,112
    li      a4, 1065353216
    fmv.w.x fa0, a4
    fsw     fa0,0(a0)
    li      a5, 0
    li      a6, 1
    mul     a7,a1,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,112
    li      s1, 1073741824
    fmv.w.x fa1, s1
    fsw     fa1,0(a5)
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,112
    sd      s2,104(sp)
    sd      a0,160(sp)
    sd      a5,152(sp)
    ld      a0,104(sp)
    call    getfarray
    sw      a0,100(sp)
    mv      a1, a0
    j       .while.head_95
.while.head_95:
    lw      a2,180(sp)
    fcvt.s.w fa0,a2,rtz
    li      a3, 1315859240
    fmv.w.x fa1, a3
    flt.s   a4,fa0,fa1
    bnez    a4, .while.body_95
    j       .while.exit_95
.while.body_95:
    sw      a0,100(sp)
    sw      a1,96(sp)
    sw      a2,180(sp)
    sb      a4,91(sp)
    fsw     fa0,92(sp)
    call    getfloat
    fsw     fa0,84(sp)
    fmv.s   fa1, fa0
    li      a0, 1078530011
    fmv.w.x fa2, a0
    fmul.s  fa3,fa2,fa1
    fmul.s  fa4,fa3,fa1
    fmv.s   fa5, fa4
    fcvt.w.s a1,fa1,rtz
    sw      a1,64(sp)
    fsw     fa0,84(sp)
    fsw     fa1,80(sp)
    fsw     fa3,76(sp)
    fsw     fa4,72(sp)
    fsw     fa5,68(sp)
    lw      a0,64(sp)
    call    circle_area
    fsw     fa0,60(sp)
    fmv.s   fa1, fa0
    li      a0, 0
    li      a1, 1
    lw      a2,176(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,112
    li      a4, 0
    mul     a5,a1,a2
    add     a4,a4,a5
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,112
    flw     fa2,0(a4)
    flw     fa3,80(sp)
    fadd.s  fa4,fa2,fa3
    fsw     fa4,0(a0)
    sd      a0,48(sp)
    sw      a2,176(sp)
    sd      a4,40(sp)
    fsw     fa0,60(sp)
    fsw     fa1,56(sp)
    fsw     fa2,36(sp)
    fsw     fa3,80(sp)
    fsw     fa4,32(sp)
    flw     fa0,68(sp)
    call    putfloat
    li      a0, 32
    call    putch
    flw     fa0,56(sp)
    fcvt.w.s a0,fa0,rtz
    sw      a0,28(sp)
    fsw     fa0,56(sp)
    lw      a0,28(sp)
    call    putint
    li      a0, 10
    call    putch
    lw      a0,180(sp)
    fcvt.s.w fa0,a0,rtz
    li      a1, 1092616192
    fmv.w.x fa1, a1
    fmul.s  fa2,fa0,fa1
    fcvt.w.s a2,fa2,rtz
    mv      a0, a2
    lw      a3,176(sp)
    li      a4, 1
    add     a5,a3,a4
    mv      a3, a5
    fsw     fa2,20(sp)
    sw      a3,176(sp)
    fsw     fa0,24(sp)
    sw      a5,12(sp)
    sw      a2,16(sp)
    sw      a0,180(sp)
    lw      a1,96(sp)
    lw      a0,100(sp)
    j       .while.head_95
.while.exit_95:
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,112
    sw      a0,100(sp)
    sw      a1,96(sp)
    sw      a2,180(sp)
    sd      a3,0(sp)
    sb      a4,91(sp)
    fsw     fa0,92(sp)
    lw      a0,96(sp)
    ld      a1,0(sp)
    call    putfarray
    ld      ra,248(sp)
    ld      s0,240(sp)
    li      a0, 0
    addi    sp,sp,256
    ret
.section ___var
    .data
    .align 4
    .globl FIVE
    .type FIVE,@object
FIVE:
    .word 6
    .align 4
    .globl THREE
    .type THREE,@object
THREE:
    .word 3
    .align 4
    .globl TWO
    .type TWO,@object
TWO:
    .word 2
    .align 4
    .globl MAX
    .type MAX,@object
MAX:
    .word 1000000000
    .align 4
    .globl CONV2
    .type CONV2,@object
CONV2:
    .word 1166012416
    .align 4
    .globl CONV1
    .type CONV1,@object
CONV1:
    .word 1130954752
    .align 4
    .globl EVAL3
    .type EVAL3,@object
EVAL3:
    .word 1107966695
    .align 4
    .globl EVAL2
    .type EVAL2,@object
EVAL2:
    .word 1107966695
    .align 4
    .globl EVAL1
    .type EVAL1,@object
EVAL1:
    .word 1119752446
    .align 4
    .globl FACT
    .type FACT,@object
FACT:
    .word 3338725376
    .align 4
    .globl HEX2
    .type HEX2,@object
HEX2:
    .word 1033895936
    .align 4
    .globl PI_HEX
    .type PI_HEX,@object
PI_HEX:
    .word 1078530011
    .align 4
    .globl EPS
    .type EPS,@object
EPS:
    .word 897988541
    .align 4
    .globl PI
    .type PI,@object
PI:
    .word 1078530011
    .align 4
    .globl RADIUS
    .type RADIUS,@object
RADIUS:
    .word 1085276160
