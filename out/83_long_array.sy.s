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
    .globl long_array
    .type long_array,@function
long_array:
    li      a1, -120568
    li      a1, -120568
    add     sp,a1,sp
    sd      ra,120560(sp)
    sd      s0,120544(sp)
    li      a2, 120568
    li      a2, 120568
    add     s0,a2,sp
.L1_0:
    li      a3, 0
    mv      a4, a3
    j       .while.head_25
.while.head_25:
    li      a5, 10000
    slt     a6,a4,a5
    bnez    a6, .while.body_25
    j       .while.exit_25
.while.body_25:
    li      a7, 0
    li      s1, 1
    mul     s2,s1,a4
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    mul     s3,a4,a4
    li      s4, 10
    mv      s5, s5
    rem     s5,s3,s4
    sd      s5,0(a7)
    add     s6,a4,s1
    j       .while.head_25
.while.exit_25:
    j       .while.head_31
.while.head_31:
    slt     s7,a4,a5
    bnez    s7, .while.body_31
    j       .while.exit_31
.while.body_31:
    li      s8, 0
    mul     s9,s1,a4
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      s10, 0
    add     s10,s10,s2
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    mv      s11, s11
    mul     a1,s11,s11
    mv      a2, a2
    rem     a2,a1,s4
    sd      a2,0(s8)
    add     a3,a4,s1
    j       .while.head_31
.while.exit_31:
    li      a5, 0
    j       .while.head_37
.while.head_37:
    li      a5, 10000
    slt     s1,a4,a5
    bnez    s1, .while.body_37
    j       .while.exit_37
.while.body_37:
    li      a5, 0
    li      s4, 1
    sw      a0,120536(sp)
    mul     a0,s4,a4
    add     a5,a5,a0
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    li      s4, 0
    sw      a0,40520(sp)
    li      a0, 1
    add     s4,s4,s2
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      a0, 0
    sw      a1,448(sp)
    li      a1, 1
    add     a0,a0,s9
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,384(sp)
    mul     a0,a1,a1
    sw      a1,376(sp)
    li      a1, 100
    sw      a2,440(sp)
    mv      a2, a2
    rem     a2,a0,a1
    mv      a1, a1
    sw      a0,368(sp)
    add     a0,a2,a1
    sd      a0,0(a5)
    sw      a0,352(sp)
    li      a0, 1
    sw      a1,392(sp)
    add     a1,a4,a0
    j       .while.head_37
.while.exit_37:
    li      a0, 0
    sw      a1,344(sp)
    mv      a1, a0
    j       .while.head_44
.while.head_44:
    li      a0, 10000
    sw      a1,336(sp)
    slt     a1,a4,a0
    bnez    a1, .while.body_44
    j       .while.exit_44
.while.body_44:
    li      a0, 10
    sb      a1,335(sp)
    slt     a1,a4,a0
    bnez    a1, .branch_true_47
    j       .branch_false_47
.branch_true_47:
    li      a0, 0
    sb      a1,334(sp)
    li      a1, 1
    sw      a2,360(sp)
    mul     a2,a1,a4
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,320(sp)
    mv      a0, a0
    sw      a2,40520(sp)
    add     a2,a1,a0
    sw      a0,312(sp)
    li      a0, 1333
    sw      a1,336(sp)
    mv      a1, a1
    rem     a1,a2,a0
    mv      a0, a1
    sb      s1,431(sp)
    sw      s2,120528(sp)
    sw      s3,500(sp)
    sd      s4,400(sp)
    sw      s5,492(sp)
    sw      s6,484(sp)
    sb      s7,483(sp)
    sd      s8,472(sp)
    sw      s9,80524(sp)
    sd      s10,464(sp)
    sw      s11,456(sp)
    sw      a0,336(sp)
    mv      a0, a0
    call    putint
    j       .L5_0
.branch_false_47:
    li      a0, 20
    slt     s1,a4,a0
    bnez    s1, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    li      s2, 5000
    mv      s3, s2
    j       .while.head_56
.while.head_56:
    li      s4, 10000
    slt     s5,s3,s4
    bnez    s5, .while.body_56
    j       .while.exit_56
.while.body_56:
    li      s6, 0
    li      s7, 1
    mul     s8,s7,s3
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s9, 0
    mul     s10,s7,a4
    add     s9,s9,s10
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    mv      s11, s11
    mv      a0, a0
    sub     s2,s11,a0
    mv      s4, s4
    add     s7,s4,s2
    sw      a0,256(sp)
    li      a0, 1
    sw      a1,296(sp)
    add     a1,s3,a0
    j       .while.head_56
.while.exit_56:
    sb      s1,287(sp)
    sw      s2,224(sp)
    sw      s3,280(sp)
    sw      s4,336(sp)
    sb      s5,279(sp)
    sd      s6,264(sp)
    sw      s7,216(sp)
    sw      s8,120528(sp)
    sd      s9,240(sp)
    sw      s10,40520(sp)
    sw      s11,232(sp)
    mv      a0, a0
    call    putint
    j       .L4_0
.branch_false_52:
    li      a0, 30
    slt     s1,a4,a0
    bnez    s1, .branch_true_62
    j       .branch_false_62
.branch_true_62:
    li      s2, 5000
    mv      s3, s2
    j       .while.head_66
.while.head_66:
    li      s4, 10000
    slt     s5,s3,s4
    bnez    s5, .while.body_66
    j       .while.exit_66
.while.body_66:
    li      s6, 2233
    slt     s7,s6,s3
    bnez    s7, .branch_true_69
    j       .branch_false_69
.branch_true_69:
    li      s8, 0
    li      s9, 1
    mul     s10,s9,s3
    add     s8,s8,s10
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      s11, 0
    mul     a0,s9,a4
    add     s11,s11,a0
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    mv      s2, s2
    mv      s4, s4
    sub     s6,s2,s4
    mv      s9, s9
    sw      a0,80524(sp)
    add     a0,s9,s6
    sw      a0,144(sp)
    li      a0, 1
    sw      a1,208(sp)
    add     a1,s3,a0
    j       .L2_0
.branch_false_69:
    li      a0, 0
    sw      a1,136(sp)
    li      a1, 1
    sw      a2,304(sp)
    mul     a2,a1,s3
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,120(sp)
    li      a0, 1
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,96(sp)
    mv      a1, a1
    sw      a2,40520(sp)
    add     a2,a0,a1
    sw      a0,88(sp)
    add     a0,s9,a2
    sw      a1,112(sp)
    li      a1, 13333
    sw      a2,80(sp)
    mv      a2, a2
    rem     a2,a0,a1
    li      a1, 2
    sw      a0,72(sp)
    add     a0,s3,a1
    j       .L2_0
.L2_0:
    j       .while.head_66
.while.exit_66:
    sb      s1,207(sp)
    sw      s2,160(sp)
    sw      s3,203(sp)
    sw      s4,184(sp)
    sb      s5,202(sp)
    sw      s6,152(sp)
    sb      s7,201(sp)
    sd      s8,192(sp)
    sw      s9,336(sp)
    sw      s10,120528(sp)
    sd      s11,168(sp)
    sw      a0,56(sp)
    mv      a0, a0
    call    putint
    j       .L3_0
.branch_false_62:
    li      a0, 0
    li      s1, 1
    mul     s2,s1,a4
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      s3, s3
    mv      s4, s4
    mul     s5,s3,s4
    mv      s6, s6
    add     s7,s6,s5
    li      s8, 99988
    mv      s9, s9
    rem     s9,s7,s8
    j       .L3_0
.L3_0:
.L4_0:
.L5_0:
.L6_0:
    add     s10,a4,s1
    j       .while.head_44
.while.exit_44:
    li      s11, 120560
    add     s11,sp,s11
    ld      ra,0(s11)
    li      a1, 120544
    add     a1,sp,a1
    ld      s0,0(a1)
    mv      a0, s6
    li      s1, 120568
    li      s1, 120568
    add     sp,s1,sp
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,40
.L0_0:
    sw      s2,40520(sp)
    sw      s3,32(sp)
    sw      s4,120536(sp)
    sw      s5,24(sp)
    sw      s6,336(sp)
    sw      s7,16(sp)
    sw      s9,8(sp)
    sw      s10,288(sp)
    sd      s11,120560(sp)
    sd      a0,40(sp)
    li      a0, 9
    call    long_array
    sw      a0,8(sp)
    ld      ra,32(sp)
    ld      s0,16(sp)
    mv      a0, a0
    addi    sp,sp,40
    ret
.section        .data
    .align 4
    .globl N
    .type N,@object
N:
    .word 10000
