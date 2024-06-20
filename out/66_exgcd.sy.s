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
    addi    sp,sp,-264
    sd      ra,256(sp)
    sd      s0,240(sp)
    addi    s0,sp,264
.L1_0:
    li      a4, 0
    xor     a5,a1,a4
    sltiu   a5,a5,1
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
    ld      ra,256(sp)
    ld      s0,240(sp)
    mv      a0, a0
    addi    sp,sp,264
    ret
.branch_false_20:
    mv      s2, s2
    rem     s2,a0,a1
    sd      s1,160(sp)
    sw      s2,156(sp)
    sw      a1,224(sp)
    sw      a0,232(sp)
    mv      a0, a0
    mv      a1, a1
    sd      a2,208(sp)
    mv      a2, a2
    sd      a3,192(sp)
    mv      a3, a3
    call    exgcd
    sw      a0,148(sp)
    mv      a1, a0
    li      a2, 0
    mul     a3,a7,a4
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
    mv      s1, s1
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
    mv      s6, s6
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
    mv      s9, s9
    mv      s10, s10
    div     s11,s9,s10
    mv      a4, a4
    mul     a7,s11,a4
    sw      a0,148(sp)
    sub     a0,s2,a7
    sd      a0,0(s7)
    ld      ra,256(sp)
    ld      s0,240(sp)
    mv      a0, a1
    addi    sp,sp,264
    ret
.L2_0:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-192
    sd      ra,184(sp)
    sd      s0,168(sp)
    addi    s0,sp,192
.L0_0:
    sw      a0,8(sp)
    li      a0, 7
    sw      a1,140(sp)
    mv      a1, a0
    li      a0, 15
    sw      a1,160(sp)
    mv      a1, a0
    li      a0, 0
    sw      a1,152(sp)
    li      a1, 1
    sd      a2,128(sp)
    li      a2, 0
    sd      a3,208(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 1
    sd      a0,136(sp)
    li      a0, 0
    sw      a3,128(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a2,0(a1)
    sw      s1,120(sp)
    sw      s2,112(sp)
    sd      s3,96(sp)
    sd      s4,80(sp)
    sd      s5,192(sp)
    sw      s6,72(sp)
    sd      s7,56(sp)
    sd      s8,40(sp)
    sw      s9,232(sp)
    sw      s10,224(sp)
    sw      s11,24(sp)
    mv      a0, a0
    sd      a1,112(sp)
    mv      a1, a1
    mv      a2, a2
    sw      a3,104(sp)
    mv      a3, a3
    call    exgcd
    sw      a0,96(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 0
    mul     s1,a2,a3
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      s2, 0
    add     s2,s2,s1
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    mv      s3, s3
    mv      s4, s4
    mv      s5, s5
    rem     s5,s3,s4
    add     s6,s5,s4
    mv      s7, s7
    rem     s7,s6,s4
    sd      s7,0(a1)
    li      s8, 0
    add     s8,s8,s1
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    sw      s1,128(sp)
    sd      s2,64(sp)
    sw      s3,56(sp)
    sw      s4,152(sp)
    sw      s5,48(sp)
    sw      s6,40(sp)
    sw      s7,32(sp)
    sd      s8,16(sp)
    sw      a0,96(sp)
    mv      a0, a0
    call    putint
    ld      ra,184(sp)
    ld      s0,168(sp)
    li      a0, 0
    addi    sp,sp,192
    ret
