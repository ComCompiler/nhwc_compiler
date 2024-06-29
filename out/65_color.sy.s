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
    .globl equal
    .type equal,@function
equal:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L10_0:
    xor     a2,a0,a1
    seqz    a2, a2
    bnez    a2, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    li      a0, 1
    addi    sp,sp,32
    ret
.branch_false_25:
.L11_0:
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    li      a0, 0
    addi    sp,sp,32
    ret
    .globl dfs
    .type dfs,@function
dfs:
    addi    sp,sp,-296
    sd      ra,288(sp)
    sd      s0,280(sp)
    addi    s0,sp,296
.L1_0:
    li      a6, 0
    li      a7, 1
    mul     s1,a7,a0
    add     a6,a6,s1
    slli a6,a6,2
    la      s2, dp
    add     a6,a6,s2
    lw      s3,0(a6)
    li      s4, -1
    xor     s5,s3,s4
    snez    s5, s5
    bnez    s5, .branch_true_32
    j       .branch_false_32
.branch_true_32:
    li      a7, 0
    li      s1, 1
    mul     s2,s1,a0
    add     a7,a7,s2
    slli a7,a7,2
    la      s4, dp
    add     a7,a7,s4
    lw      s6,0(a7)
    ld      ra,288(sp)
    ld      s0,280(sp)
    sw      s6,228(sp)
    sw      a0,276(sp)
    lw      a0,228(sp)
    addi    sp,sp,296
    ret
.branch_false_32:
.L2_0:
    add     a7,a0,a1
    add     s1,a7,a2
    add     s2,s1,a3
    add     s4,s2,a4
    li      s6, 0
    xor     s7,s4,s6
    seqz    s7, s7
    bnez    s7, .branch_true_35
    j       .branch_false_35
.branch_true_35:
    ld      ra,288(sp)
    ld      s0,280(sp)
    sw      a0,276(sp)
    li      a0, 1
    addi    sp,sp,296
    ret
.branch_false_35:
.L3_0:
    li      s6, 0
    j       .L4_0
.L4_0:
    li      s8, 0
    xor     s9,a0,s8
    snez    s9, s9
    bnez    s9, .branch_true_39
    j       .branch_false_39
.branch_true_39:
    li      s8, 1
    sub     s10,a0,s8
    sw      s1,220(sp)
    sw      s2,216(sp)
    sw      s3,244(sp)
    sw      s4,212(sp)
    sb      s5,243(sp)
    sw      s6,204(sp)
    sb      s7,211(sp)
    sb      s9,203(sp)
    sw      s10,196(sp)
    sw      a0,276(sp)
    sw      a1,272(sp)
    sw      a2,268(sp)
    sw      a3,264(sp)
    sw      a4,260(sp)
    sw      a5,256(sp)
    sd      a6,248(sp)
    sw      a7,224(sp)
    lw      a0,196(sp)
    lw      a1,272(sp)
    lw      a2,268(sp)
    lw      a3,264(sp)
    lw      a4,260(sp)
    li      a5, 1
    call    dfs
    sw      a0,192(sp)
    sw      a0,192(sp)
    lw      a0,256(sp)
    li      a1, 2
    call    equal
    sw      a0,188(sp)
    lw      a1,276(sp)
    sub     a2,a1,a0
    lw      a3,192(sp)
    mul     a4,a2,a3
    lw      a5,204(sp)
    add     a6,a5,a4
    li      a7, 1000000007
    rem     s1,a6,a7
    mv      a5, s1
    sw      a6,176(sp)
    sw      s1,172(sp)
    sw      a1,276(sp)
    sw      a5,204(sp)
    sw      a0,188(sp)
    sw      a2,184(sp)
    sw      a4,180(sp)
    sw      a3,192(sp)
    ld      a6,248(sp)
    lw      s1,220(sp)
    lw      s3,244(sp)
    lw      a1,272(sp)
    lw      a5,256(sp)
    lw      a7,224(sp)
    lb      s7,211(sp)
    lb      s9,203(sp)
    lw      a0,276(sp)
    lw      a2,268(sp)
    lb      s5,243(sp)
    lw      s2,216(sp)
    lw      a4,260(sp)
    lw      s6,204(sp)
    lw      s4,212(sp)
    lw      a3,264(sp)
    j       .branch_false_39
.branch_false_39:
.L5_0:
    li      s8, 0
    xor     s10,a1,s8
    snez    s10, s10
    bnez    s10, .branch_true_42
    j       .branch_false_42
.branch_true_42:
    li      s8, 1
    add     s11,a0,s8
    sw      a0,276(sp)
    sub     a0,a1,s8
    sw      s1,220(sp)
    sw      s2,216(sp)
    sw      s3,244(sp)
    sw      s4,212(sp)
    sb      s5,243(sp)
    sw      s6,204(sp)
    sb      s7,211(sp)
    sb      s9,203(sp)
    sb      s10,171(sp)
    sw      s11,164(sp)
    sw      a0,160(sp)
    sw      a1,272(sp)
    sw      a2,268(sp)
    sw      a3,264(sp)
    sw      a4,260(sp)
    sw      a5,256(sp)
    sd      a6,248(sp)
    sw      a7,224(sp)
    lw      a0,164(sp)
    lw      a1,160(sp)
    lw      a2,268(sp)
    lw      a3,264(sp)
    lw      a4,260(sp)
    li      a5, 2
    call    dfs
    sw      a0,156(sp)
    sw      a0,156(sp)
    lw      a0,256(sp)
    li      a1, 3
    call    equal
    sw      a0,152(sp)
    lw      a1,272(sp)
    sub     a2,a1,a0
    lw      a3,156(sp)
    mul     a4,a2,a3
    lw      a5,204(sp)
    add     a6,a5,a4
    li      a7, 1000000007
    rem     s1,a6,a7
    mv      a5, s1
    sw      a6,140(sp)
    sw      s1,136(sp)
    sw      a5,204(sp)
    sw      a0,152(sp)
    sw      a2,148(sp)
    sw      a4,144(sp)
    sw      a3,156(sp)
    ld      a6,248(sp)
    lw      s1,220(sp)
    lw      s3,244(sp)
    lb      s10,171(sp)
    lw      a5,256(sp)
    lw      a7,224(sp)
    lb      s7,211(sp)
    lb      s9,203(sp)
    lw      a0,276(sp)
    lw      a2,268(sp)
    lb      s5,243(sp)
    lw      s2,216(sp)
    lw      a4,260(sp)
    lw      s6,204(sp)
    lw      s4,212(sp)
    lw      a3,264(sp)
    j       .branch_false_42
.branch_false_42:
.L6_0:
    li      s8, 0
    xor     s11,a2,s8
    snez    s11, s11
    bnez    s11, .branch_true_45
    j       .branch_false_45
.branch_true_45:
    li      s8, 1
    sw      a0,276(sp)
    add     a0,a1,s8
    sw      a0,128(sp)
    sub     a0,a2,s8
    sw      s1,220(sp)
    sw      s2,216(sp)
    sw      s3,244(sp)
    sw      s4,212(sp)
    sb      s5,243(sp)
    sw      s6,204(sp)
    sb      s7,211(sp)
    sb      s9,203(sp)
    sb      s10,171(sp)
    sb      s11,135(sp)
    sw      a0,124(sp)
    sw      a1,272(sp)
    sw      a2,268(sp)
    sw      a3,264(sp)
    sw      a4,260(sp)
    sw      a5,256(sp)
    sd      a6,248(sp)
    sw      a7,224(sp)
    lw      a0,276(sp)
    lw      a1,128(sp)
    lw      a2,124(sp)
    lw      a3,264(sp)
    lw      a4,260(sp)
    li      a5, 3
    call    dfs
    sw      a0,120(sp)
    sw      a0,120(sp)
    lw      a0,256(sp)
    li      a1, 4
    call    equal
    sw      a0,116(sp)
    lw      a1,268(sp)
    sub     a2,a1,a0
    lw      a3,120(sp)
    mul     a4,a2,a3
    lw      a5,204(sp)
    add     a6,a5,a4
    li      a7, 1000000007
    rem     s1,a6,a7
    mv      a5, s1
    sw      a6,104(sp)
    sw      s1,100(sp)
    sw      a1,268(sp)
    sw      a5,204(sp)
    sw      a0,116(sp)
    sw      a2,112(sp)
    sw      a4,108(sp)
    sw      a3,120(sp)
    lb      s11,135(sp)
    ld      a6,248(sp)
    lw      s1,220(sp)
    lw      s3,244(sp)
    lw      a1,272(sp)
    lb      s10,171(sp)
    lw      a5,256(sp)
    lw      a7,224(sp)
    lb      s7,211(sp)
    lb      s9,203(sp)
    lw      a0,276(sp)
    lw      a2,268(sp)
    lb      s5,243(sp)
    lw      s2,216(sp)
    lw      a4,260(sp)
    lw      s6,204(sp)
    lw      s4,212(sp)
    lw      a3,264(sp)
    j       .branch_false_45
.branch_false_45:
.L7_0:
    li      s8, 0
    sw      a0,276(sp)
    xor     a0,a3,s8
    snez    a0, a0
    bnez    a0, .branch_true_48
    j       .branch_false_48
.branch_true_48:
    li      s8, 1
    sb      a0,99(sp)
    add     a0,a2,s8
    sw      a0,92(sp)
    sub     a0,a3,s8
    sw      s1,220(sp)
    sw      s2,216(sp)
    sw      s3,244(sp)
    sw      s4,212(sp)
    sb      s5,243(sp)
    sw      s6,204(sp)
    sb      s7,211(sp)
    sb      s9,203(sp)
    sb      s10,171(sp)
    sb      s11,135(sp)
    sw      a0,88(sp)
    sw      a1,272(sp)
    sw      a2,268(sp)
    sw      a3,264(sp)
    sw      a4,260(sp)
    sw      a5,256(sp)
    sd      a6,248(sp)
    sw      a7,224(sp)
    lw      a0,276(sp)
    lw      a1,272(sp)
    lw      a2,92(sp)
    lw      a3,88(sp)
    lw      a4,260(sp)
    li      a5, 4
    call    dfs
    sw      a0,84(sp)
    sw      a0,84(sp)
    lw      a0,256(sp)
    li      a1, 5
    call    equal
    sw      a0,80(sp)
    lw      a1,264(sp)
    sub     a2,a1,a0
    lw      a3,84(sp)
    mul     a4,a2,a3
    lw      a5,204(sp)
    add     a6,a5,a4
    li      a7, 1000000007
    rem     s1,a6,a7
    mv      a5, s1
    sw      a6,68(sp)
    sw      s1,64(sp)
    sw      a1,264(sp)
    sw      a5,204(sp)
    sw      a0,80(sp)
    sw      a2,76(sp)
    sw      a4,72(sp)
    sw      a3,84(sp)
    lb      s11,135(sp)
    ld      a6,248(sp)
    lw      s1,220(sp)
    lw      s3,244(sp)
    lw      a1,272(sp)
    lb      s10,171(sp)
    lw      a5,256(sp)
    lw      a7,224(sp)
    lb      s7,211(sp)
    lb      s9,203(sp)
    lb      a0,99(sp)
    lw      a2,268(sp)
    lb      s5,243(sp)
    lw      s2,216(sp)
    lw      a4,260(sp)
    lw      s6,204(sp)
    lw      s4,212(sp)
    lw      a3,264(sp)
    j       .branch_false_48
.branch_false_48:
.L8_0:
    li      s8, 0
    sb      a0,99(sp)
    xor     a0,a4,s8
    snez    a0, a0
    bnez    a0, .branch_true_51
    j       .branch_false_51
.branch_true_51:
    li      s8, 1
    sb      a0,63(sp)
    add     a0,a3,s8
    sw      a0,56(sp)
    sub     a0,a4,s8
    sw      s1,220(sp)
    sw      s2,216(sp)
    sw      s3,244(sp)
    sw      s4,212(sp)
    sb      s5,243(sp)
    sw      s6,204(sp)
    sb      s7,211(sp)
    sb      s9,203(sp)
    sb      s10,171(sp)
    sb      s11,135(sp)
    sw      a0,52(sp)
    sw      a1,272(sp)
    sw      a2,268(sp)
    sw      a3,264(sp)
    sw      a4,260(sp)
    sw      a5,256(sp)
    sd      a6,248(sp)
    sw      a7,224(sp)
    lw      a0,276(sp)
    lw      a1,272(sp)
    lw      a2,268(sp)
    lw      a3,56(sp)
    lw      a4,52(sp)
    li      a5, 5
    call    dfs
    sw      a0,48(sp)
    lw      a1,260(sp)
    mul     a2,a1,a0
    lw      a3,204(sp)
    add     a4,a3,a2
    li      a5, 1000000007
    rem     a6,a4,a5
    mv      a3, a6
    sw      a6,36(sp)
    sw      a1,260(sp)
    sw      a0,48(sp)
    sw      a2,44(sp)
    sw      a4,40(sp)
    sw      a3,204(sp)
    lb      s11,135(sp)
    ld      a6,248(sp)
    lw      s1,220(sp)
    lw      s3,244(sp)
    lw      a1,272(sp)
    lb      s10,171(sp)
    lw      a5,256(sp)
    lw      a7,224(sp)
    lb      s7,211(sp)
    lb      s9,203(sp)
    lb      a0,63(sp)
    lw      a2,268(sp)
    lb      s5,243(sp)
    lw      s2,216(sp)
    lw      a4,260(sp)
    lw      s6,204(sp)
    lw      s4,212(sp)
    lw      a3,264(sp)
    j       .branch_false_51
.branch_false_51:
.L9_0:
    li      s8, 0
    sb      a0,63(sp)
    li      a0, 1
    sw      a1,272(sp)
    lw      a1,276(sp)
    sw      a2,268(sp)
    mul     a2,a0,a1
    add     s8,s8,a2
    slli s8,s8,2
    la      a0, dp
    add     s8,s8,a0
    li      a0, 1000000007
    rem     a2,s6,a0
    sw      a2,0(s8)
    li      a0, 0
    sw      a1,276(sp)
    li      a1, 1
    sw      a2,20(sp)
    lw      a2,276(sp)
    sw      a3,264(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, dp
    add     a0,a0,a1
    lw      a1,0(a0)
    ld      ra,288(sp)
    ld      s0,280(sp)
    sw      a1,4(sp)
    sd      a0,8(sp)
    lw      a0,4(sp)
    addi    sp,sp,296
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-280
    sd      ra,272(sp)
    sd      s0,264(sp)
    addi    s0,sp,280
.L0_0:
    call    getint
    sw      a0,260(sp)
    mv      a1, a0
    li      a2, 0
    j       .while.head_60
.while.head_60:
    li      a3, 18
    slt     a4,a2,a3
    bnez    a4, .while.body_60
    j       .while.exit_60
.while.body_60:
    li      a3, 0
    j       .while.head_64
.while.head_64:
    li      a5, 18
    slt     a6,a3,a5
    bnez    a6, .while.body_64
    j       .while.exit_64
.while.body_64:
    li      a5, 0
    j       .while.head_68
.while.head_68:
    li      a7, 18
    slt     s1,a5,a7
    bnez    s1, .while.body_68
    j       .while.exit_68
.while.body_68:
    li      a7, 0
    j       .while.head_72
.while.head_72:
    li      s2, 18
    slt     s3,a7,s2
    bnez    s3, .while.body_72
    j       .while.exit_72
.while.body_72:
    li      s2, 0
    j       .while.head_76
.while.head_76:
    li      s4, 18
    slt     s5,s2,s4
    bnez    s5, .while.body_76
    j       .while.exit_76
.while.body_76:
    li      s4, 0
    j       .while.head_80
.while.head_80:
    li      s6, 7
    slt     s7,s4,s6
    bnez    s7, .while.body_80
    j       .while.exit_80
.while.body_80:
    li      s6, 0
    li      s8, 1
    mul     s9,s8,a2
    add     s6,s6,s9
    slli s6,s6,2
    la      s10, dp
    add     s6,s6,s10
    li      s11, -1
    sw      s11,0(s6)
    add     s9,s4,s8
    mv      s4, s9
    sd      s6,200(sp)
    sw      s9,196(sp)
    sb      s7,211(sp)
    j       .while.head_80
.while.exit_80:
    li      s6, 1
    add     s8,s2,s6
    mv      s2, s8
    sw      s8,192(sp)
    sw      s4,212(sp)
    sb      s5,219(sp)
    sb      s7,211(sp)
    j       .while.head_76
.while.exit_76:
    li      s4, 1
    add     s6,a7,s4
    mv      a7, s6
    sw      s2,220(sp)
    sw      s6,188(sp)
    sb      s5,219(sp)
    sb      s3,227(sp)
    j       .while.head_72
.while.exit_72:
    li      s2, 1
    add     s4,a5,s2
    mv      a5, s4
    sb      s1,235(sp)
    sw      a7,228(sp)
    sw      s4,184(sp)
    sb      s3,227(sp)
    j       .while.head_68
.while.exit_68:
    li      a7, 1
    add     s2,a3,a7
    mv      a3, s2
    sw      a5,236(sp)
    sb      s1,235(sp)
    sw      s2,180(sp)
    sb      a6,243(sp)
    j       .while.head_64
.while.exit_64:
    li      a5, 1
    add     a7,a2,a5
    mv      a2, a7
    sw      a3,244(sp)
    sw      a7,176(sp)
    sb      a4,251(sp)
    sb      a6,243(sp)
    j       .while.head_60
.while.exit_60:
    li      a2, 0
    j       .while.head_91
.while.head_91:
    slt     a3,a2,a1
    bnez    a3, .while.body_91
    j       .while.exit_91
.while.body_91:
    li      a5, 0
    li      a6, 1
    mul     a7,a6,a2
    add     a5,a5,a7
    slli a5,a5,2
    la      s1, list
    add     a5,a5,s1
    sw      a0,260(sp)
    sw      a1,256(sp)
    sw      a2,252(sp)
    sb      a3,175(sp)
    sb      a4,251(sp)
    sd      a5,160(sp)
    call    getint
    sw      a0,156(sp)
    ld      a1,160(sp)
    sw      a0,0(a1)
    li      a2, 0
    li      a3, 1
    lw      a4,252(sp)
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    la      a6, list
    add     a2,a2,a6
    lw      a7,0(a2)
    li      s1, 0
    mul     s2,a3,a7
    add     s1,s1,s2
    slli s1,s1,2
    la      s3, cns
    add     s1,s1,s3
    li      s4, 0
    mul     s5,a3,a4
    add     s4,s4,s5
    slli s4,s4,2
    la      s6, list
    add     s4,s4,s6
    lw      s7,0(s4)
    li      s8, 0
    mul     s9,a3,s7
    add     s8,s8,s9
    slli s8,s8,2
    la      s10, cns
    add     s8,s8,s10
    lw      s11,0(s8)
    add     a5,s11,a3
    sw      a5,0(s1)
    add     a6,a4,a3
    mv      a4, a6
    sw      a5,96(sp)
    sd      s1,128(sp)
    sd      a1,160(sp)
    sd      s8,104(sp)
    sw      a0,156(sp)
    sw      a7,140(sp)
    sd      s4,120(sp)
    sd      a2,144(sp)
    sw      a4,252(sp)
    sw      s7,116(sp)
    sw      a6,92(sp)
    sw      s11,100(sp)
    lw      a1,256(sp)
    lw      a0,260(sp)
    lw      a2,252(sp)
    lb      a4,251(sp)
    j       .while.head_91
.while.exit_91:
    li      a5, 0
    li      a6, 1
    li      a7, 1
    mul     s1,a6,a7
    add     a5,a5,s1
    slli a5,a5,2
    la      s2, cns
    add     a5,a5,s2
    lw      s3,0(a5)
    li      s4, 0
    li      s5, 2
    mul     s6,a7,s5
    add     s4,s4,s6
    slli s4,s4,2
    la      s7, cns
    add     s4,s4,s7
    lw      s8,0(s4)
    li      s9, 0
    li      s10, 3
    mul     s11,a7,s10
    add     s9,s9,s11
    slli s9,s9,2
    la      a6, cns
    add     s9,s9,a6
    lw      a6,0(s9)
    li      a7, 0
    li      s1, 1
    li      s2, 4
    mul     s5,s1,s2
    add     a7,a7,s5
    slli a7,a7,2
    la      s1, cns
    add     a7,a7,s1
    lw      s1,0(a7)
    li      s2, 0
    li      s5, 1
    li      s6, 5
    mul     s7,s5,s6
    add     s2,s2,s7
    slli s2,s2,2
    la      s5, cns
    add     s2,s2,s5
    lw      s5,0(s2)
    sw      s1,28(sp)
    sd      s2,16(sp)
    sw      s3,76(sp)
    sd      s4,64(sp)
    sw      s5,12(sp)
    sw      s8,60(sp)
    sd      s9,48(sp)
    sw      a0,260(sp)
    sw      a1,256(sp)
    sw      a2,252(sp)
    sb      a3,175(sp)
    sb      a4,251(sp)
    sd      a5,80(sp)
    sw      a6,44(sp)
    sd      a7,32(sp)
    lw      a0,76(sp)
    lw      a1,60(sp)
    lw      a2,44(sp)
    lw      a3,28(sp)
    lw      a4,12(sp)
    li      a5, 0
    call    dfs
    sw      a0,8(sp)
    mv      a1, a0
    sw      a0,8(sp)
    sw      a1,4(sp)
    lw      a0,4(sp)
    call    putint
    ld      ra,272(sp)
    ld      s0,264(sp)
    lw      a0,4(sp)
    addi    sp,sp,280
    ret
.section ___var
    .data
    .align 4
    .globl cns
    .type cns,@object
cns:
    .zero 80
    .align 4
    .globl list
    .type list,@object
list:
    .zero 800
    .align 4
    .globl dp
    .type dp,@object
dp:
    .zero 52907904
    .align 4
    .globl mod
    .type mod,@object
mod:
    .word 1000000007
    .align 4
    .globl maxn
    .type maxn,@object
maxn:
    .word 18
