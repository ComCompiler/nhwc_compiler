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
    .globl sub
    .type sub,@function
sub:
    addi    sp,sp,-224
    sd      ra,208(sp)
    sd      s0,200(sp)
    addi    s0,sp,224
.L1_0:
    li      s1, 0
    j       .while.head_25
.while.head_25:
    li      s2, 3
    slt     s3,s1,s2
    bnez    s3, .while.body_25
    j       .while.exit_25
.while.body_25:
    li      s2, 0
    li      s4, 1
    mul     s5,s4,s1
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,a6
    li      s6, 0
    mul     s7,s4,s1
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,a3
    flw     fa0,0(s6)
    li      s8, 0
    mul     s9,s4,s1
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,a0
    flw     fa1,0(s8)
    fsub.s  fa2,fa1,fa0
    fsw     fa2,0(s2)
    li      s10, 0
    mul     s11,s4,s1
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,a7
    li      s4, 0
    li      s5, 1
    mul     s7,s5,s1
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,a4
    flw     fa3,0(s4)
    li      s5, 0
    li      s7, 1
    mul     s9,s7,s1
    add     s5,s5,s9
    slli s5,s5,2
    add     s5,s5,a1
    flw     fa4,0(s5)
    fsub.s  fa5,fa4,fa3
    fsw     fa5,0(s10)
    li      s7, 0
    li      s9, 1
    mul     s11,s9,s1
    add     s7,s7,s11
    slli s7,s7,2
    ld      s9,216(sp)
    add     s7,s7,s9
    li      s11, 0
    sd      a0,192(sp)
    li      a0, 1
    sd      a1,184(sp)
    mul     a1,a0,s1
    add     s11,s11,a1
    slli s11,s11,2
    add     s11,s11,a5
    flw     fa6,0(s11)
    li      a0, 0
    li      a1, 1
    sd      a2,176(sp)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,176(sp)
    add     a0,a0,a1
    flw     fa7,0(a0)
    fsub.s  f8,fa7,fa6
    fsw     f8,0(s7)
    li      a2, 1
    sd      a0,16(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,4(sp)
    sd      s5,56(sp)
    sd      s9,216(sp)
    fsw     fa6,28(sp)
    sd      s7,40(sp)
    fsw     fa4,52(sp)
    sd      s2,120(sp)
    sd      s11,32(sp)
    sd      s8,96(sp)
    sd      s10,80(sp)
    fsw     fa1,92(sp)
    fsw     fa7,12(sp)
    fsw     fa0,108(sp)
    sd      a1,176(sp)
    fsw     fa2,88(sp)
    fsw     fa5,48(sp)
    sb      s3,131(sp)
    sd      s4,72(sp)
    fsw     f8,8(sp)
    fsw     fa3,68(sp)
    sd      s6,112(sp)
    ld      a0,192(sp)
    ld      a2,176(sp)
    ld      a1,184(sp)
    j       .while.head_25
.while.exit_25:
    ld      ra,208(sp)
    ld      s0,200(sp)
    sd      a0,192(sp)
    li      a0, 0
    addi    sp,sp,224
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-400
    sd      ra,392(sp)
    sd      s0,384(sp)
    addi    s0,sp,400
.L0_0:
    la      a0, N
    li      a1, 3
    sw      a1,0(a0)
    la      a2, M
    sw      a1,0(a2)
    la      a3, L
    sw      a1,0(a3)
    li      a4, 0
    j       .while.head_41
.while.head_41:
    li      a0, 3
    slt     a1,a4,a0
    bnez    a1, .while.body_41
    j       .while.exit_41
.while.body_41:
    li      a0, 0
    li      a2, 1
    mul     a3,a2,a4
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,372
    fcvt.s.w fa0,a4,rtz
    fsw     fa0,0(a0)
    li      a5, 0
    mul     a6,a2,a4
    add     a5,a5,a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,360
    fcvt.s.w fa1,a4,rtz
    fsw     fa1,0(a5)
    li      a7, 0
    mul     s1,a2,a4
    add     a7,a7,s1
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,348
    fcvt.s.w fa2,a4,rtz
    fsw     fa2,0(a7)
    li      s2, 0
    mul     s3,a2,a4
    add     s2,s2,s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,336
    fcvt.s.w fa3,a4,rtz
    fsw     fa3,0(s2)
    li      s4, 0
    mul     s5,a2,a4
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,324
    fcvt.s.w fa4,a4,rtz
    fsw     fa4,0(s4)
    li      s6, 0
    mul     s7,a2,a4
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,312
    fcvt.s.w fa5,a4,rtz
    fsw     fa5,0(s6)
    add     s8,a4,a2
    mv      a4, s8
    sd      a0,248(sp)
    sd      s4,184(sp)
    fsw     fa5,164(sp)
    fsw     fa0,244(sp)
    fsw     fa1,228(sp)
    fsw     fa4,180(sp)
    fsw     fa3,196(sp)
    fsw     fa2,212(sp)
    sd      a5,232(sp)
    sb      a1,259(sp)
    sd      s6,168(sp)
    sd      s2,200(sp)
    sd      a7,216(sp)
    sw      s8,160(sp)
    j       .while.head_41
.while.exit_41:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,372
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,360
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,348
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,336
    li      a6, 0
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,324
    li      a7, 0
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,312
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,288
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,276
    li      s3, 0
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,264
    sd      s3,-8(sp)
    sd      s1,104(sp)
    sd      s2,96(sp)
    sd      s3,88(sp)
    sd      a0,152(sp)
    sb      a1,259(sp)
    sd      a2,144(sp)
    sd      a3,136(sp)
    sw      a4,260(sp)
    sd      a5,128(sp)
    sd      a6,120(sp)
    sd      a7,112(sp)
    ld      a0,152(sp)
    ld      a1,144(sp)
    ld      a2,136(sp)
    ld      a3,128(sp)
    ld      a4,120(sp)
    ld      a5,112(sp)
    ld      a6,104(sp)
    ld      a7,96(sp)
    call    sub
    sw      a0,84(sp)
    mv      a1, a0
    j       .while.head_53
.while.head_53:
    li      a2, 3
    slt     a3,a1,a2
    bnez    a3, .while.body_53
    j       .while.exit_53
.while.body_53:
    li      a2, 0
    li      a4, 1
    mul     a5,a4,a1
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,288
    flw     fa0,0(a2)
    fcvt.w.s a6,fa0,rtz
    mv      a7, a6
    sw      a0,84(sp)
    sw      a1,260(sp)
    sd      a2,64(sp)
    sb      a3,79(sp)
    sw      a6,56(sp)
    sw      a7,80(sp)
    fsw     fa0,60(sp)
    lw      a0,80(sp)
    call    putint
    lw      a0,260(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,260(sp)
    sw      a2,52(sp)
    lw      a0,84(sp)
    lw      a1,260(sp)
    j       .while.head_53
.while.exit_53:
    li      a2, 10
    li      a1, 0
    sw      a0,84(sp)
    sw      a1,260(sp)
    sw      a2,80(sp)
    sb      a3,79(sp)
    lw      a0,80(sp)
    call    putch
    j       .while.head_62
.while.head_62:
    lw      a0,260(sp)
    li      a1, 3
    slt     a2,a0,a1
    bnez    a2, .while.body_62
    j       .while.exit_62
.while.body_62:
    li      a1, 0
    li      a3, 1
    mul     a4,a3,a0
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,276
    flw     fa0,0(a1)
    fcvt.w.s a5,fa0,rtz
    mv      a6, a5
    sw      a0,260(sp)
    sd      a1,40(sp)
    sb      a2,51(sp)
    sw      a5,32(sp)
    sw      a6,80(sp)
    fsw     fa0,36(sp)
    lw      a0,80(sp)
    call    putint
    lw      a0,260(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,260(sp)
    sw      a2,28(sp)
    j       .while.head_62
.while.exit_62:
    li      a1, 10
    li      a0, 0
    sw      a0,260(sp)
    sw      a1,80(sp)
    sb      a2,51(sp)
    lw      a0,80(sp)
    call    putch
    j       .while.head_71
.while.head_71:
    lw      a0,260(sp)
    li      a1, 3
    slt     a2,a0,a1
    bnez    a2, .while.body_71
    j       .while.exit_71
.while.body_71:
    li      a1, 0
    li      a3, 1
    mul     a4,a3,a0
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,264
    flw     fa0,0(a1)
    fcvt.w.s a5,fa0,rtz
    mv      a6, a5
    sw      a0,260(sp)
    sd      a1,16(sp)
    sb      a2,27(sp)
    sw      a5,8(sp)
    sw      a6,80(sp)
    fsw     fa0,12(sp)
    lw      a0,80(sp)
    call    putint
    lw      a0,260(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,260(sp)
    sw      a2,4(sp)
    j       .while.head_71
.while.exit_71:
    li      a1, 10
    sw      a0,260(sp)
    sw      a1,80(sp)
    sb      a2,27(sp)
    lw      a0,80(sp)
    call    putch
    ld      ra,392(sp)
    ld      s0,384(sp)
    li      a0, 0
    addi    sp,sp,400
    ret
.section ___var
    .data
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
    .align 4
    .globl N
    .type N,@object
N:
    .word 0
