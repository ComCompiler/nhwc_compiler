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
    .globl tran
    .type tran,@function
tran:
    addi    sp,sp,-312
    sd      ra,296(sp)
    sd      s0,288(sp)
    addi    s0,sp,312
.L1_0:
    li      s1, 0
    li      s2, 0
    li      s3, 1
    li      s4, 2
    mul     s5,s3,s4
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,a7
    li      s6, 0
    li      s7, 1
    mul     s8,s3,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,a2
    flw     fa0,0(s6)
    fsw     fa0,0(s2)
    li      s9, 0
    mul     s10,s7,s3
    add     s9,s9,s10
    slli s9,s9,2
    ld      s11,304(sp)
    add     s9,s9,s11
    li      s3, 0
    mul     s5,s7,s4
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,a1
    flw     fa1,0(s3)
    fsw     fa1,0(s9)
    li      s4, 0
    li      s5, 1
    mul     s8,s7,s5
    add     s4,s4,s8
    slli s4,s4,2
    add     s4,s4,a6
    li      s5, 0
    li      s8, 0
    mul     s10,s7,s8
    add     s5,s5,s10
    slli s5,s5,2
    add     s5,s5,a1
    flw     fa2,0(s5)
    fsw     fa2,0(s4)
    li      s7, 0
    li      s8, 1
    li      s10, 2
    sd      a0,280(sp)
    mul     a0,s8,s10
    add     s7,s7,a0
    slli s7,s7,2
    add     s7,s7,a6
    li      a0, 0
    li      s10, 0
    sd      a1,272(sp)
    mul     a1,s8,s10
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,a2
    flw     fa3,0(a0)
    fsw     fa3,0(s7)
    li      a1, 0
    sd      a0,128(sp)
    mul     a0,s8,s10
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,a7
    li      a0, 0
    li      s10, 1
    sd      a1,112(sp)
    mul     a1,s8,s10
    add     a0,a0,a1
    slli a0,a0,2
    ld      a1,280(sp)
    add     a0,a0,a1
    flw     fa4,0(a0)
    ld      s8,112(sp)
    fsw     fa4,0(s8)
    li      s10, 0
    sd      a0,104(sp)
    li      a0, 1
    sd      a1,280(sp)
    li      a1, 0
    sd      a2,264(sp)
    mul     a2,a0,a1
    add     s10,s10,a2
    slli s10,s10,2
    add     s10,s10,s11
    li      a0, 0
    li      a1, 1
    li      a2, 2
    sd      a3,256(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,280(sp)
    add     a0,a0,a1
    flw     fa5,0(a0)
    fsw     fa5,0(s10)
    li      a2, 0
    li      a3, 1
    sd      a0,80(sp)
    li      a0, 1
    sd      a1,280(sp)
    mul     a1,a3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a7
    li      a0, 0
    li      a1, 1
    sd      a2,64(sp)
    mul     a2,a3,a1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,272(sp)
    add     a0,a0,a1
    flw     fa6,0(a0)
    ld      a2,64(sp)
    fsw     fa6,0(a2)
    li      a3, 0
    sd      a0,56(sp)
    li      a0, 1
    sd      a1,272(sp)
    li      a1, 2
    sd      a2,64(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,s11
    li      a0, 0
    li      a1, 1
    li      a2, 2
    sd      a3,40(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,264(sp)
    add     a0,a0,a1
    flw     fa7,0(a0)
    ld      a2,40(sp)
    fsw     fa7,0(a2)
    li      a3, 0
    sd      a0,32(sp)
    li      a0, 1
    sd      a1,264(sp)
    li      a1, 0
    sd      a2,40(sp)
    mul     a2,a0,a1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,a6
    li      a0, 0
    li      a1, 1
    li      a2, 0
    sd      a3,16(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a1,280(sp)
    add     a0,a0,a1
    flw     f8,0(a0)
    ld      a2,16(sp)
    fsw     f8,0(a2)
    ld      ra,296(sp)
    ld      s0,288(sp)
    sd      a0,8(sp)
    li      a0, 0
    addi    sp,sp,312
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
    fsw     fa2,228(sp)
    sd      a0,264(sp)
    sw      a1,280(sp)
    sd      a6,248(sp)
    fsw     fa0,260(sp)
    sd      s1,232(sp)
    fsw     fa3,212(sp)
    sb      a2,279(sp)
    sd      s3,216(sp)
    fsw     fa5,180(sp)
    sd      s7,184(sp)
    fsw     fa4,196(sp)
    fsw     fa1,244(sp)
    sd      s5,200(sp)
    sw      s9,176(sp)
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
    call    tran
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
    sw      a0,284(sp)
    sw      a2,68(sp)
    lw      a0,100(sp)
    lw      a1,284(sp)
    j       .while.head_55
.while.exit_55:
    li      a2, 10
    sw      a0,100(sp)
    sw      a1,284(sp)
    sw      a2,96(sp)
    sw      a3,92(sp)
    sb      a4,91(sp)
    lw      a0,96(sp)
    call    putch
    li      a0, 0
    j       .while.head_64
.while.head_64:
    la      a1, N
    lw      a2,0(a1)
    slt     a3,a0,a2
    bnez    a3, .while.body_64
    j       .while.exit_64
.while.body_64:
    li      a1, 0
    li      a4, 1
    mul     a5,a4,a0
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,300
    flw     fa0,0(a1)
    fcvt.w.s a6,fa0,rtz
    mv      a7, a6
    sw      a0,284(sp)
    sd      a1,48(sp)
    sw      a2,64(sp)
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
    j       .while.head_64
.while.exit_64:
    li      a1, 10
    li      a0, 0
    sw      a0,284(sp)
    sw      a1,96(sp)
    sw      a2,64(sp)
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
    sw      a0,284(sp)
    sw      a2,4(sp)
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
