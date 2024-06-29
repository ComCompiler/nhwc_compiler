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
    .globl add
    .type add,@function
add:
    addi    sp,sp,-232
    sd      ra,216(sp)
    sd      s0,208(sp)
    addi    s0,sp,232
.L1_0:
    li      s1, 0
    j       .while.head_25
.while.head_25:
    la      s2, M
    lw      s3,0(s2)
    slt     s4,s1,s3
    bnez    s4, .while.body_25
    j       .while.exit_25
.while.body_25:
    li      s2, 0
    li      s5, 1
    mul     s6,s5,s1
    add     s2,s2,s6
    slli s2,s2,2
    add     s2,s2,a6
    li      s7, 0
    mul     s8,s5,s1
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,a3
    flw     fa0,0(s7)
    li      s9, 0
    mul     s10,s5,s1
    add     s9,s9,s10
    slli s9,s9,2
    add     s9,s9,a0
    flw     fa1,0(s9)
    fadd.s  fa2,fa1,fa0
    fsw     fa2,0(s2)
    li      s11, 0
    mul     s6,s5,s1
    add     s11,s11,s6
    slli s11,s11,2
    add     s11,s11,a7
    li      s5, 0
    li      s6, 1
    mul     s8,s6,s1
    add     s5,s5,s8
    slli s5,s5,2
    add     s5,s5,a4
    flw     fa3,0(s5)
    li      s6, 0
    li      s8, 1
    mul     s10,s8,s1
    add     s6,s6,s10
    slli s6,s6,2
    add     s6,s6,a1
    flw     fa4,0(s6)
    fadd.s  fa5,fa4,fa3
    fsw     fa5,0(s11)
    li      s8, 0
    li      s10, 1
    sd      a0,200(sp)
    mul     a0,s10,s1
    add     s8,s8,a0
    slli s8,s8,2
    ld      a0,224(sp)
    add     s8,s8,a0
    li      s10, 0
    sd      a0,224(sp)
    li      a0, 1
    sd      a1,192(sp)
    mul     a1,a0,s1
    add     s10,s10,a1
    slli s10,s10,2
    add     s10,s10,a5
    flw     fa6,0(s10)
    li      a0, 0
    li      a1, 1
    sd      a2,184(sp)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    ld      a1,184(sp)
    add     a0,a0,a1
    flw     fa7,0(a0)
    fadd.s  f8,fa7,fa6
    fsw     f8,0(s8)
    li      a2, 1
    sd      a0,16(sp)
    add     a0,s1,a2
    mv      s1, a0
    sd      a1,184(sp)
    fsw     fa7,12(sp)
    sd      s9,96(sp)
    sd      s7,112(sp)
    sd      s2,120(sp)
    fsw     fa0,108(sp)
    sw      s3,136(sp)
    fsw     f8,8(sp)
    sd      s8,40(sp)
    fsw     fa5,48(sp)
    fsw     fa2,88(sp)
    fsw     fa3,68(sp)
    sw      a0,4(sp)
    sd      s5,72(sp)
    sd      s10,32(sp)
    fsw     fa1,92(sp)
    fsw     fa4,52(sp)
    fsw     fa6,28(sp)
    sb      s4,135(sp)
    sd      s6,56(sp)
    sd      s11,80(sp)
    ld      a1,192(sp)
    ld      a2,184(sp)
    ld      a0,200(sp)
    j       .while.head_25
.while.exit_25:
    ld      ra,216(sp)
    ld      s0,208(sp)
    sd      a0,200(sp)
    li      a0, 0
    addi    sp,sp,232
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
    j       .while.head_41
.while.head_41:
    la      a0, M
    lw      a1,0(a0)
    slt     a2,a4,a1
    bnez    a2, .while.body_41
    j       .while.exit_41
.while.body_41:
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
    sd      s3,216(sp)
    fsw     fa0,260(sp)
    sd      a0,264(sp)
    sb      a2,279(sp)
    fsw     fa5,180(sp)
    sd      a6,248(sp)
    fsw     fa2,228(sp)
    sd      s7,184(sp)
    fsw     fa4,196(sp)
    fsw     fa1,244(sp)
    fsw     fa3,212(sp)
    sd      s1,232(sp)
    sw      a1,280(sp)
    sw      s9,176(sp)
    sd      s5,200(sp)
    j       .while.head_41
.while.exit_41:
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
    call    add
    sw      a0,100(sp)
    mv      a1, a0
    j       .while.head_53
.while.head_53:
    la      a2, N
    lw      a3,0(a2)
    slt     a4,a1,a3
    bnez    a4, .while.body_53
    j       .while.exit_53
.while.body_53:
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
    j       .while.head_53
.while.exit_53:
    li      a2, 10
    sw      a0,100(sp)
    sw      a1,284(sp)
    sw      a2,96(sp)
    sw      a3,92(sp)
    sb      a4,91(sp)
    lw      a0,96(sp)
    call    putch
    li      a0, 0
    j       .while.head_62
.while.head_62:
    la      a1, N
    lw      a2,0(a1)
    slt     a3,a0,a2
    bnez    a3, .while.body_62
    j       .while.exit_62
.while.body_62:
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
    j       .while.head_62
.while.exit_62:
    li      a1, 10
    sw      a0,284(sp)
    sw      a1,96(sp)
    sw      a2,64(sp)
    sb      a3,63(sp)
    lw      a0,96(sp)
    call    putch
    li      a0, 0
    j       .while.head_71
.while.head_71:
    la      a1, N
    lw      a2,0(a1)
    slt     a3,a0,a2
    bnez    a3, .while.body_71
    j       .while.exit_71
.while.body_71:
    li      a1, 0
    li      a4, 1
    mul     a5,a4,a0
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,288
    flw     fa0,0(a1)
    fcvt.w.s a6,fa0,rtz
    mv      a7, a6
    sw      a0,284(sp)
    sd      a1,16(sp)
    sw      a2,32(sp)
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
    j       .while.head_71
.while.exit_71:
    li      a1, 10
    sw      a0,284(sp)
    sw      a1,96(sp)
    sw      a2,32(sp)
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
