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
    .globl exgcd
    .type exgcd,@function
exgcd:
    addi    sp,sp,-152
    sd      ra,144(sp)
    sd      s0,136(sp)
    addi    s0,sp,152
.L1_0:
    li      a4, 0
    xor     a5,a1,a4
    seqz    a5, a5
    bnez    a5, .branch_true_20
    j       .branch_false_20
.branch_true_20:
    li      a4, 0
    li      a6, 1
    li      a7, 0
    mul     s1,a6,a7
    add     a4,a4,s1
    slli a4,a4,2
    add     a4,a4,a2
    sw      a6,0(a4)
    li      s2, 0
    mul     s3,a6,a7
    add     s2,s2,s3
    slli s2,s2,2
    add     s2,s2,a3
    sw      a7,0(s2)
    ld      ra,144(sp)
    ld      s0,136(sp)
    sw      a0,132(sp)
    lw      a0,132(sp)
    addi    sp,sp,152
    ret
.branch_false_20:
    rem     a4,a0,a1
    sw      a0,132(sp)
    sw      a1,128(sp)
    sd      a2,120(sp)
    sd      a3,112(sp)
    sw      a4,84(sp)
    sb      a5,111(sp)
    lw      a0,128(sp)
    lw      a1,84(sp)
    ld      a2,120(sp)
    ld      a3,112(sp)
    call    exgcd
    sw      a0,80(sp)
    mv      a1, a0
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    ld      a6,120(sp)
    add     a2,a2,a6
    lw      a7,0(a2)
    mv      s1, a7
    li      s2, 0
    mul     s3,a3,a4
    add     s2,s2,s3
    slli s2,s2,2
    add     s2,s2,a6
    li      s4, 0
    mul     s5,a3,a4
    add     s4,s4,s5
    slli s4,s4,2
    ld      s6,112(sp)
    add     s4,s4,s6
    lw      s7,0(s4)
    sw      s7,0(s2)
    li      s8, 0
    mul     s9,a3,a4
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,s6
    li      s10, 0
    mul     s11,a3,a4
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,s6
    lw      a3,0(s10)
    lw      a4,132(sp)
    lw      a5,128(sp)
    div     s3,a4,a5
    mul     s5,s3,a3
    sub     s9,s1,s5
    sw      s9,0(s8)
    ld      ra,144(sp)
    ld      s0,136(sp)
    sw      a1,76(sp)
    sw      a0,80(sp)
    lw      a0,76(sp)
    addi    sp,sp,152
    ret
.L2_0:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-144
    sd      ra,136(sp)
    sd      s0,128(sp)
    addi    s0,sp,144
.L0_0:
    li      a0, 7
    li      a1, 15
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,100
    sw      a0,124(sp)
    sw      a1,120(sp)
    sd      a2,112(sp)
    ld      a0,112(sp)
    li      a1, 0
    li      a2, 4
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,100
    sw      a1,0(a0)
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,76
    sd      a0,104(sp)
    sd      a4,88(sp)
    ld      a0,88(sp)
    li      a1, 0
    li      a2, 4
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,76
    sw      a1,0(a0)
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,100
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,76
    sd      a0,80(sp)
    sd      a4,64(sp)
    sd      a5,56(sp)
    lw      a0,124(sp)
    lw      a1,120(sp)
    ld      a2,64(sp)
    ld      a3,56(sp)
    call    exgcd
    sw      a0,52(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 0
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,100
    li      a5, 0
    mul     a6,a2,a3
    add     a5,a5,a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,100
    lw      a7,0(a5)
    lw      s1,120(sp)
    rem     s2,a7,s1
    add     s3,s2,s1
    rem     s4,s3,s1
    sw      s4,0(a1)
    li      s5, 0
    mul     s6,a2,a3
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,100
    lw      s7,0(s5)
    sw      s1,120(sp)
    sw      s2,24(sp)
    sw      s3,20(sp)
    sw      s4,16(sp)
    sd      s5,8(sp)
    sw      s7,4(sp)
    sw      a0,52(sp)
    sd      a1,40(sp)
    sd      a5,32(sp)
    sw      a7,28(sp)
    lw      a0,4(sp)
    call    putint
    ld      ra,136(sp)
    ld      s0,128(sp)
    li      a0, 0
    addi    sp,sp,144
    ret
