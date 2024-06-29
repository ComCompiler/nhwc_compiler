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
    addi    sp,sp,-152
    sd      ra,136(sp)
    sd      s0,128(sp)
    addi    s0,sp,152
.L1_0:
    li      s1, 0
    j       .while.head_21
.while.head_21:
    li      s2, 10
    slt     s3,s1,s2
    bnez    s3, .while.body_21
    j       .while.exit_21
.while.body_21:
    li      s2, 0
    li      s4, 1
    mul     s5,s4,a0
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,a1
    lw      s6,0(s2)
    sw      s1,72(sp)
    sd      s2,56(sp)
    sb      s3,71(sp)
    sw      s6,52(sp)
    sw      a0,124(sp)
    sd      a1,112(sp)
    sw      a2,108(sp)
    sd      a3,96(sp)
    sw      a4,92(sp)
    sw      a5,88(sp)
    sd      a6,80(sp)
    sw      a7,76(sp)
    lw      a0,52(sp)
    call    putint
    lw      a0,72(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,72(sp)
    sw      a2,48(sp)
    ld      a6,80(sp)
    lw      a4,92(sp)
    ld      a3,96(sp)
    lw      s1,72(sp)
    lw      a7,76(sp)
    lw      a0,124(sp)
    lw      a5,88(sp)
    lw      a2,108(sp)
    ld      a1,112(sp)
    j       .while.head_21
.while.exit_21:
    sw      s1,72(sp)
    sb      s3,71(sp)
    sw      a0,124(sp)
    sd      a1,112(sp)
    sw      a2,108(sp)
    sd      a3,96(sp)
    sw      a4,92(sp)
    sw      a5,88(sp)
    sd      a6,80(sp)
    sw      a7,76(sp)
    li      a0, 10
    call    putch
    li      a0, 0
    li      a1, 1
    lw      a2,108(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    ld      a4,96(sp)
    add     a0,a0,a4
    lw      a5,0(a0)
    sd      a0,40(sp)
    sw      a2,108(sp)
    sd      a4,96(sp)
    sw      a5,36(sp)
    lw      a0,36(sp)
    call    putint
    li      a0, 10
    call    putch
    j       .while.head_29
.while.head_29:
    lw      a0,148(sp)
    li      a1, 10
    slt     a2,a0,a1
    bnez    a2, .while.body_29
    j       .while.exit_29
.while.body_29:
    li      a1, 0
    li      a3, 1
    mul     a4,a3,a0
    add     a1,a1,a4
    slli a1,a1,2
    ld      a5,80(sp)
    add     a1,a1,a5
    lw      a6,76(sp)
    li      a7, 128875
    mul     s1,a6,a7
    li      s2, 3724
    rem     s3,s1,s2
    sw      s3,0(a1)
    add     s4,a0,a3
    mv      a0, s4
    li      s5, 7
    add     s6,a6,s5
    mv      a6, s6
    sw      s4,12(sp)
    sw      a6,76(sp)
    sw      s1,20(sp)
    sw      s3,16(sp)
    sw      a0,148(sp)
    sd      a5,80(sp)
    sb      a2,35(sp)
    sw      s6,8(sp)
    sd      a1,24(sp)
    j       .while.head_29
.while.exit_29:
    lw      a1,92(sp)
    lw      a3,88(sp)
    add     a4,a1,a3
    ld      ra,136(sp)
    ld      s0,128(sp)
    sw      a4,4(sp)
    sw      a0,148(sp)
    lw      a0,4(sp)
    addi    sp,sp,152
    ret
    .globl main
    .type main,@function
main:
    li      a0, -29120
    li      a0, -29120
    add     sp,a0,sp
    li      a1, 29112
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 29104
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 29120
    li      a3, 29120
    add     s0,a3,sp
.L0_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 12748
    li      a1, 12748
    add     a0,a1,a0
    li      a0, 29096
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 29096
    add     a1,sp,a1
    ld      a0,0(a1)
    li      a1, 0
    li      a2, 16348
    call    memset
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,228
    li      a0, 12736
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 12736
    add     a1,sp,a1
    ld      a0,0(a1)
    li      a1, 0
    li      a2, 12508
    call    memset
    li      a0, 0
    li      a1, 67
    li      a2, 17
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    li      a5, 1
    mul     a6,a4,a5
    add     a0,a0,a6
    slli a0,a0,2
    add     a0,a0,sp
    li      a7, 12748
    li      a7, 12748
    add     a0,a7,a0
    li      s1, 6
    sw      s1,0(a0)
    li      s2, 0
    mul     s3,a1,a2
    add     s2,s2,s3
    li      s4, 3
    mul     s5,a5,s4
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,sp
    li      a7, 12748
    add     s2,a7,s2
    li      s6, 7
    sw      s6,0(s2)
    li      s7, 0
    mul     s8,a1,a2
    add     s7,s7,s8
    li      s9, 4
    mul     s10,a5,s9
    add     s7,s7,s10
    slli s7,s7,2
    add     s7,s7,sp
    li      a7, 12748
    add     s7,a7,s7
    sw      s9,0(s7)
    li      s11, 0
    mul     a3,a1,a2
    add     s11,s11,a3
    mul     a1,a5,s6
    add     s11,s11,a1
    slli s11,s11,2
    add     s11,s11,sp
    li      a7, 12748
    add     s11,a7,s11
    li      a1, 9
    sw      a1,0(s11)
    li      a1, 0
    li      a2, 67
    li      a3, 17
    mul     a4,a2,a3
    add     a1,a1,a4
    li      a2, 11
    mul     a3,a5,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    li      a7, 12748
    add     a1,a7,a1
    sw      a2,0(a1)
    li      a2, 0
    li      a3, 59
    mul     a4,a3,s1
    add     a2,a2,a4
    li      a3, 1
    mul     a4,a5,a3
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,228
    sw      a3,0(a2)
    li      a3, 0
    li      a4, 59
    mul     a5,a4,s1
    add     a3,a3,a5
    li      a4, 1
    li      a5, 2
    mul     a6,a4,a5
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,228
    sw      a5,0(a3)
    li      a4, 0
    li      a5, 59
    mul     a6,a5,s1
    add     a4,a4,a6
    li      a5, 1
    mul     a6,a5,s4
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,228
    sw      s4,0(a4)
    li      a5, 0
    li      a6, 59
    mul     a7,a6,s1
    add     a5,a5,a7
    li      a6, 1
    li      a7, 9
    mul     s1,a6,a7
    add     a5,a5,s1
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,228
    sw      a7,0(a5)
    li      a6, 0
    li      a7, 67
    li      s1, 17
    mul     s3,a7,s1
    add     a6,a6,s3
    li      a7, 1
    li      s1, 1
    mul     s3,a7,s1
    add     a6,a6,s3
    slli a6,a6,2
    add     a6,a6,sp
    li      a7, 12748
    li      a7, 12748
    add     a6,a7,a6
    lw      a7,0(a6)
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,228
    li      s3, 0
    li      s4, 67
    li      s5, 17
    mul     s6,s4,s5
    add     s3,s3,s6
    li      s4, 1
    li      s5, 3
    mul     s6,s4,s5
    add     s3,s3,s6
    slli s3,s3,2
    add     s3,s3,sp
    li      s4, 12748
    li      s4, 12748
    add     s3,s4,s3
    lw      s4,0(s3)
    li      s5, 0
    li      s6, 67
    li      s8, 17
    mul     s9,s6,s8
    add     s5,s5,s9
    slli s5,s5,2
    add     s5,s5,sp
    li      s6, 12748
    li      s6, 12748
    add     s5,s6,s5
    li      s6, 0
    li      s8, 59
    li      s9, 6
    mul     s10,s8,s9
    add     s6,s6,s10
    li      s8, 1
    li      s9, 3
    mul     s10,s8,s9
    add     s6,s6,s10
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,228
    lw      s8,0(s6)
    li      s9, 0
    li      s10, 59
    sd      a0,216(sp)
    li      a0, 6
    sd      a1,184(sp)
    mul     a1,s10,a0
    add     s9,s9,a1
    li      a0, 1
    li      a1, 0
    mul     s10,a0,a1
    add     s9,s9,s10
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,228
    lw      a0,0(s9)
    li      a1, 0
    li      s10, 59
    sw      a0,68(sp)
    li      a0, 6
    sd      a2,176(sp)
    mul     a2,s10,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,228
    li      a0, 0
    li      a2, 34
    sd      a1,56(sp)
    mul     a1,s10,a2
    add     a0,a0,a1
    li      a1, 1
    li      a2, 4
    mul     s10,a1,a2
    add     a0,a0,s10
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,228
    lw      a1,0(a0)
    li      a2, 0
    li      s10, 59
    sd      a0,48(sp)
    li      a0, 51
    sw      a1,44(sp)
    mul     a1,s10,a0
    add     a2,a2,a1
    li      a0, 1
    li      a1, 18
    mul     s10,a0,a1
    add     a2,a2,s10
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,228
    lw      a0,0(a2)
    sw      a0,-4(sp)
    sd      s1,120(sp)
    sd      s2,208(sp)
    sd      s3,112(sp)
    sw      s4,108(sp)
    sd      s5,96(sp)
    sd      s6,88(sp)
    sd      s7,200(sp)
    sw      s8,84(sp)
    sd      s9,72(sp)
    sd      s11,192(sp)
    sw      a0,28(sp)
    sd      a2,32(sp)
    sd      a3,168(sp)
    sd      a4,160(sp)
    sd      a5,152(sp)
    sd      a6,136(sp)
    sw      a7,132(sp)
    lw      a0,132(sp)
    ld      a1,120(sp)
    lw      a2,108(sp)
    ld      a3,96(sp)
    lw      a4,84(sp)
    lw      a5,68(sp)
    ld      a6,56(sp)
    lw      a7,44(sp)
    call    func
    sw      a0,24(sp)
    li      a1, 3
    mul     a2,a0,a1
    mv      a3, a2
    j       .while.head_51
.while.head_51:
    li      a1, 0
    slt     a4,a3,a1
    xori    a4,a4,1
    bnez    a4, .while.body_51
    j       .while.exit_51
.while.body_51:
    li      a1, 0
    li      a5, 59
    li      a6, 6
    mul     a7,a5,a6
    add     a1,a1,a7
    li      s1, 1
    mul     s2,s1,a3
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,228
    lw      s3,0(a1)
    sw      s3,4(sp)
    sw      a0,24(sp)
    sd      a1,8(sp)
    sw      a2,20(sp)
    sw      a3,148(sp)
    sb      a4,19(sp)
    lw      a0,4(sp)
    call    putint
    li      a0, 32
    call    putch
    lw      a0,148(sp)
    li      a1, 1
    sub     a2,a0,a1
    mv      a0, a2
    sw      a0,148(sp)
    sw      a2,0(sp)
    lw      a3,148(sp)
    lw      a0,24(sp)
    lw      a2,20(sp)
    j       .while.head_51
.while.exit_51:
    sw      a0,24(sp)
    sw      a2,20(sp)
    sw      a3,148(sp)
    sb      a4,19(sp)
    li      a0, 10
    call    putch
    li      a0, 29112
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 29104
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 0
    li      a2, 29120
    li      a2, 29120
    add     sp,a2,sp
    ret
