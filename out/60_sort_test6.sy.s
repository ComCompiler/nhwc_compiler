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
    .globl counting_sort
    .type counting_sort,@function
counting_sort:
    addi    sp,sp,-544
    sd      ra,536(sp)
    sd      s0,520(sp)
    addi    s0,sp,544
.L1_0:
    li      a3, 0
    mv      a4, a3
    mv      a5, a3
    mv      a6, a3
    j       .while.head_28
.while.head_28:
    li      a7, 10
    slt     s1,a4,a7
    bnez    s1, .while.body_28
    j       .while.exit_28
.while.body_28:
    li      s2, 0
    li      s3, 1
    mul     s4,s3,a4
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    sd      a3,0(s2)
    add     s5,a4,s3
    j       .while.head_28
.while.head_33:
    slt     s6,a5,a2
    bnez    s6, .while.body_33
    j       .while.exit_33
.while.body_33:
    li      s7, 0
    add     s7,s7,a0
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
    li      s8, 0
    mv      s9, s9
    add     s8,s8,s4
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      s10, 0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
    li      s11, 0
    mv      a3, a3
    add     s11,s11,s4
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    mv      a7, a7
    sd      a0,504(sp)
    add     a0,a7,s3
    sd      a0,0(s8)
    sw      a0,312(sp)
    add     a0,a5,s3
    j       .while.head_33
.while.exit_33:
    j       .while.head_39
.while.head_39:
    li      s3, 10
    sw      a0,304(sp)
    slt     a0,a4,s3
    bnez    a0, .while.body_39
    j       .while.exit_39
.while.body_39:
    li      s3, 0
    sb      a0,303(sp)
    li      a0, 1
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    sd      a1,488(sp)
    sub     a1,a4,a0
    li      a0, 0
    sw      a1,288(sp)
    li      a1, 1
    sw      a2,480(sp)
    mv      a2, a2
    add     a0,a0,s4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,272(sp)
    li      a0, 1
    add     a1,a1,s4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,248(sp)
    mv      a1, a1
    sw      a2,288(sp)
    add     a2,a0,a1
    sd      a2,0(s3)
    sw      a0,240(sp)
    li      a0, 1
    sw      a1,264(sp)
    add     a1,a4,a0
    j       .while.head_39
.while.exit_39:
    mv      a0, a0
    j       .while.head_45
.while.head_45:
    sw      a0,480(sp)
    li      a0, 0
    sw      a1,224(sp)
    slt     a1,a0,a6
    bnez    a1, .while.body_45
    j       .while.exit_45
.while.body_45:
    li      a0, 1
    sb      a1,223(sp)
    sub     a1,a6,a0
    li      a0, 0
    sw      a1,219(sp)
    li      a1, 1
    sw      a2,232(sp)
    mv      a2, a2
    sw      a3,344(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,208(sp)
    li      a0, 1
    sw      a2,219(sp)
    mv      a2, a2
    add     a1,a1,s4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,184(sp)
    sub     a1,a6,a0
    li      a0, 0
    sw      a1,176(sp)
    li      a1, 1
    sw      a2,200(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,160(sp)
    li      a0, 1
    sw      a2,176(sp)
    mv      a2, a2
    add     a1,a1,s4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,136(sp)
    li      a1, 1
    sw      a2,152(sp)
    sub     a2,a0,a1
    mv      a1, a1
    sd      a2,0(a1)
    sw      a0,128(sp)
    li      a0, 1
    sd      a1,184(sp)
    sub     a1,a6,a0
    li      a0, 0
    sw      a1,112(sp)
    li      a1, 1
    sw      a2,120(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,96(sp)
    li      a0, 1
    sw      a2,112(sp)
    mv      a2, a2
    add     a1,a1,s4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a1,72(sp)
    li      a1, 1
    sw      a2,88(sp)
    mv      a2, a2
    sd      a3,504(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,48(sp)
    sub     a0,a6,a1
    li      a1, 0
    sw      a0,40(sp)
    li      a0, 1
    sw      a2,64(sp)
    mv      a2, a2
    sd      a3,488(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,24(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,48(sp)
    li      a0, 1
    sw      a1,16(sp)
    sub     a1,a6,a0
    j       .while.head_45
.while.exit_45:
    ld      ra,536(sp)
    ld      s0,520(sp)
    li      a0, 0
    addi    sp,sp,544
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-344
    sd      ra,336(sp)
    sd      s0,320(sp)
    addi    s0,sp,344
.L0_0:
    la      a0, n
    sw      a1,8(sp)
    li      a1, 10
    sd      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,40(sp)
    li      a2, 0
    sd      a3,504(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 4
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 1
    sd      a0,264(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,248(sp)
    li      a1, 2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 9
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,232(sp)
    li      a0, 3
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 2
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,216(sp)
    li      a1, 4
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,200(sp)
    li      a0, 5
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a2,0(a1)
    li      a0, 0
    sd      a1,184(sp)
    li      a1, 6
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,168(sp)
    li      a0, 7
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 5
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,152(sp)
    li      a1, 8
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,136(sp)
    li      a0, 9
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 8
    sd      a0,0(a1)
    li      a0, 0
    mv      a2, a0
    la      a0, n
    sd      a1,120(sp)
    lw      a1,0(a0)
    sb      s1,411(sp)
    sd      s2,400(sp)
    sd      s3,295(sp)
    sw      s4,472(sp)
    sw      s5,396(sp)
    sb      s6,395(sp)
    sd      s7,384(sp)
    sd      s8,368(sp)
    sw      s9,380(sp)
    sd      s10,352(sp)
    sd      s11,328(sp)
    sw      a3,312(sp)
    mv      a0, a0
    mv      a1, a1
    sw      a2,112(sp)
    mv      a2, a2
    call    counting_sort
    sw      a0,52(sp)
    mv      a1, a0
    j       .while.head_70
.while.head_70:
    la      a2, n
    lw      a3,0(a2)
    mv      s1, s1
    slt     s2,a1,s1
    bnez    s2, .while.body_70
    j       .while.exit_70
.while.body_70:
    li      s3, 0
    li      s4, 1
    mul     s5,s4,a1
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    mv      s6, s6
    mv      s7, s6
    sw      s1,44(sp)
    sb      s2,43(sp)
    sd      s3,24(sp)
    sw      s5,104(sp)
    sw      s6,16(sp)
    sw      s7,39(sp)
    sw      a0,52(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    mv      s1, a0
    sw      s1,39(sp)
    mv      a0, a0
    call    putch
    li      a0, 1
    add     s1,a1,a0
    j       .while.head_70
.while.exit_70:
    ld      ra,336(sp)
    ld      s0,320(sp)
    li      a0, 0
    addi    sp,sp,344
    ret
.section        .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
