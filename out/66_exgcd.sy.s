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
    li      a6, 0
    li      a7, 1
    add     a6,a6,a2
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
    sd      a7,0(a6)
    li      s1, 0
    add     s1,s1,a3
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
    sd      a4,0(s1)
    ld      ra,144(sp)
    ld      s0,136(sp)
    addi    sp,sp,152
    ret
.branch_false_20:
    rem     s2,a0,a1
    sd      s1,88(sp)
    sw      s2,84(sp)
    sw      a1,128(sp)
    sw      a0,132(sp)
    sd      a2,120(sp)
    sd      a3,112(sp)
    call    exgcd
    sw      a0,80(sp)
    mv      a1, a0
    li      a2, 0
    mul     a3,a7,a4
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
    mv      s2, s1
    li      s3, 0
    add     s3,s3,a3
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
    li      s4, 0
    mul     s5,a7,a4
    add     s4,s4,s5
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
    sd      s6,0(s3)
    li      s7, 0
    add     s7,s7,s5
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
    li      s8, 0
    add     s8,s8,s5
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
    div     s11,s9,s10
    mul     a7,s11,a4
    sw      a0,80(sp)
    sub     a0,s2,a7
    sd      a0,0(s7)
    ld      ra,144(sp)
    ld      s0,136(sp)
    mv      a0, a1
    addi    sp,sp,152
    ret
.L2_0:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,88(sp)
    addi    s0,sp,104
.L0_0:
    li      a0, 7
    li      a1, 15
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    sd      a3,0(a2)
    li      a6, 0
    mul     a7,a3,a4
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    sd      a3,0(a6)
    sw      a0,84(sp)
    sw      a1,80(sp)
    sw      a5,68(sp)
    sd      a2,72(sp)
    sw      a7,52(sp)
    call    exgcd
    sw      a0,48(sp)
    li      a1, 0
    li      a2, 1
    mul     a3,a2,a4
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a5, 0
    add     a5,a5,a3
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    rem     s2,a7,s1
    add     s3,s2,s1
    rem     s4,s3,s1
    sd      s4,0(a1)
    li      s5, 0
    add     s5,s5,a3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    sw      s1,80(sp)
    sw      s2,24(sp)
    sw      s3,20(sp)
    sw      s4,16(sp)
    sd      s5,8(sp)
    sw      a0,48(sp)
    call    putint
    ld      ra,96(sp)
    ld      s0,88(sp)
    li      a0, 0
    addi    sp,sp,104
    ret
