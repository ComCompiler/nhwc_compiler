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
    .globl loop1
    .type loop1,@function
loop1:
    addi    sp,sp,-136
    sd      ra,128(sp)
    sd      s0,120(sp)
    addi    s0,sp,136
.L10_0:
    li      a2, 0
    j       .while.head_24
.while.head_24:
    slt     a3,a2,a1
    slt     a4,a2,a0
    and     a5,a4,a3
    bnez    a5, .while.body_24
    j       .while.exit_24
.while.body_24:
    li      a6, 0
    j       .while.head_28
.while.head_28:
    li      a7, 2
    slt     s1,a6,a7
    bnez    s1, .while.body_28
    j       .while.exit_28
.while.body_28:
    li      a7, 0
    j       .while.head_32
.while.head_32:
    li      s2, 3
    slt     s3,a7,s2
    bnez    s3, .while.body_32
    j       .while.exit_32
.while.body_32:
    li      s2, 0
    j       .while.head_36
.while.head_36:
    li      s4, 4
    slt     s5,s2,s4
    bnez    s5, .while.body_36
    j       .while.exit_36
.while.body_36:
    li      s4, 0
    j       .while.head_40
.while.head_40:
    li      s6, 5
    slt     s7,s4,s6
    bnez    s7, .while.body_40
    j       .while.exit_40
.while.body_40:
    li      s6, 0
    j       .while.head_44
.while.head_44:
    li      s8, 6
    slt     s9,s6,s8
    bnez    s9, .while.body_44
    j       .while.exit_44
.while.body_44:
    li      s8, 0
    j       .while.head_48
.while.head_48:
    li      s10, 2
    slt     s11,s8,s10
    bnez    s11, .while.body_48
    j       .while.exit_48
.while.body_48:
    li      s10, 0
    sw      a0,116(sp)
    li      a0, 1
    sw      a1,112(sp)
    mul     a1,a0,a2
    add     s10,s10,a1
    slli s10,s10,2
    la      a0, arr1
    add     s10,s10,a0
    add     a0,a2,a6
    add     a1,a0,a7
    sw      a0,60(sp)
    add     a0,a1,s2
    sw      a1,56(sp)
    add     a1,a0,s4
    sw      a0,52(sp)
    add     a0,a1,s6
    sw      a1,48(sp)
    add     a1,a0,s8
    sw      a0,44(sp)
    lw      a0,116(sp)
    sw      a2,108(sp)
    add     a2,a1,a0
    sw      a0,116(sp)
    lw      a0,112(sp)
    sw      a1,40(sp)
    add     a1,a2,a0
    sw      a1,0(s10)
    sw      a0,112(sp)
    li      a0, 1
    sw      a1,32(sp)
    add     a1,s8,a0
    mv      s8, a1
    sw      a1,28(sp)
    sd      s10,64(sp)
    sw      a2,36(sp)
    sb      s11,75(sp)
    lw      a1,112(sp)
    lw      a0,116(sp)
    lw      a2,108(sp)
    j       .while.head_48
.while.exit_48:
    li      s10, 1
    sw      a0,116(sp)
    add     a0,s6,s10
    mv      s6, a0
    sw      s8,84(sp)
    sb      s9,76(sp)
    sw      a0,24(sp)
    sb      s11,75(sp)
    lw      a0,116(sp)
    j       .while.head_44
.while.exit_44:
    li      s8, 1
    add     s10,s4,s8
    mv      s4, s10
    sw      s6,88(sp)
    sb      s7,77(sp)
    sb      s9,76(sp)
    sw      s10,20(sp)
    j       .while.head_40
.while.exit_40:
    li      s6, 1
    add     s8,s2,s6
    mv      s2, s8
    sw      s4,92(sp)
    sw      s8,16(sp)
    sb      s7,77(sp)
    sb      s5,78(sp)
    j       .while.head_36
.while.exit_36:
    li      s4, 1
    add     s6,a7,s4
    mv      a7, s6
    sw      s6,12(sp)
    sw      s2,96(sp)
    sb      s5,78(sp)
    sb      s3,79(sp)
    j       .while.head_32
.while.exit_32:
    li      s2, 1
    add     s4,a6,s2
    mv      a6, s4
    sw      s4,8(sp)
    sb      s1,80(sp)
    sw      a7,100(sp)
    sb      s3,79(sp)
    j       .while.head_28
.while.exit_28:
    li      a7, 1
    add     s2,a2,a7
    mv      a2, s2
    sb      a5,81(sp)
    sb      s1,80(sp)
    sw      s2,4(sp)
    sb      a4,82(sp)
    sb      a3,83(sp)
    sw      a6,104(sp)
    j       .while.head_24
.while.exit_24:
    ld      ra,128(sp)
    ld      s0,120(sp)
    addi    sp,sp,136
    ret
    .globl loop2
    .type loop2,@function
loop2:
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,88(sp)
    addi    s0,sp,104
.L9_0:
    li      a0, 0
    j       .while.head_63
.while.head_63:
    li      a1, 10
    slt     a2,a0,a1
    bnez    a2, .while.body_63
    j       .while.exit_63
.while.body_63:
    li      a1, 0
    j       .while.head_67
.while.head_67:
    li      a3, 2
    slt     a4,a1,a3
    bnez    a4, .while.body_67
    j       .while.exit_67
.while.body_67:
    li      a3, 0
    j       .while.head_71
.while.head_71:
    li      a5, 3
    slt     a6,a3,a5
    bnez    a6, .while.body_71
    j       .while.exit_71
.while.body_71:
    li      a5, 0
    j       .while.head_75
.while.head_75:
    li      a7, 2
    slt     s1,a5,a7
    bnez    s1, .while.body_75
    j       .while.exit_75
.while.body_75:
    li      a7, 0
    j       .while.head_79
.while.head_79:
    li      s2, 4
    slt     s3,a7,s2
    bnez    s3, .while.body_79
    j       .while.exit_79
.while.body_79:
    li      s2, 0
    j       .while.head_83
.while.head_83:
    li      s4, 8
    slt     s5,s2,s4
    bnez    s5, .while.body_83
    j       .while.exit_83
.while.body_83:
    li      s4, 0
    j       .while.head_87
.while.head_87:
    li      s6, 7
    slt     s7,s4,s6
    bnez    s7, .while.body_87
    j       .while.exit_87
.while.body_87:
    li      s6, 0
    li      s8, 1
    mul     s9,s8,a0
    add     s6,s6,s9
    slli s6,s6,2
    la      s10, arr2
    add     s6,s6,s10
    add     s11,a0,a1
    add     s8,s11,a5
    add     s9,s8,s4
    sw      s9,0(s6)
    li      s10, 1
    sw      a0,84(sp)
    add     a0,s4,s10
    mv      s4, a0
    sw      s9,28(sp)
    sw      s11,36(sp)
    sb      s7,53(sp)
    sw      s8,32(sp)
    sw      a0,24(sp)
    sd      s6,40(sp)
    lw      a0,84(sp)
    j       .while.head_87
.while.exit_87:
    li      s6, 1
    add     s8,s2,s6
    mv      s2, s8
    sw      s4,60(sp)
    sb      s5,54(sp)
    sb      s7,53(sp)
    sw      s8,20(sp)
    j       .while.head_83
.while.exit_83:
    li      s4, 1
    add     s6,a7,s4
    mv      a7, s6
    sb      s5,54(sp)
    sw      s2,64(sp)
    sb      s3,55(sp)
    sw      s6,16(sp)
    j       .while.head_79
.while.exit_79:
    li      s2, 1
    add     s4,a5,s2
    mv      a5, s4
    sw      a7,68(sp)
    sw      s4,12(sp)
    sb      s3,55(sp)
    sb      s1,56(sp)
    j       .while.head_75
.while.exit_75:
    li      a7, 1
    add     s2,a3,a7
    mv      a3, s2
    sw      s2,8(sp)
    sw      a5,72(sp)
    sb      a6,57(sp)
    sb      s1,56(sp)
    j       .while.head_71
.while.exit_71:
    li      a5, 1
    add     a7,a1,a5
    mv      a1, a7
    sw      a7,4(sp)
    sb      a4,58(sp)
    sw      a3,76(sp)
    sb      a6,57(sp)
    j       .while.head_67
.while.exit_67:
    li      a3, 1
    add     a5,a0,a3
    mv      a0, a5
    sb      a2,59(sp)
    sw      a5,0(sp)
    sw      a1,80(sp)
    sb      a4,58(sp)
    j       .while.head_63
.while.exit_63:
    ld      ra,96(sp)
    ld      s0,88(sp)
    addi    sp,sp,104
    ret
    .globl loop3
    .type loop3,@function
loop3:
    addi    sp,sp,-184
    sd      ra,176(sp)
    sd      s0,168(sp)
    addi    s0,sp,184
.L1_0:
    li      a7, 0
    li      s1, 0
    j       .while.head_104
.while.head_104:
    li      s2, 10
    slt     s3,s1,s2
    bnez    s3, .while.body_104
    j       .while.exit_104
.while.body_104:
    li      s2, 0
    j       .while.head_108
.while.head_108:
    li      s4, 100
    slt     s5,s2,s4
    bnez    s5, .while.body_108
    j       .while.exit_108
.while.body_108:
    li      s4, 0
    j       .while.head_112
.while.head_112:
    li      s6, 1000
    slt     s7,s4,s6
    bnez    s7, .while.body_112
    j       .while.exit_112
.while.body_112:
    li      s6, 0
    j       .while.head_116
.while.head_116:
    li      s8, 10000
    slt     s9,s6,s8
    bnez    s9, .while.body_116
    j       .while.exit_116
.while.body_116:
    li      s8, 0
    j       .while.head_120
.while.head_120:
    li      s10, 100000
    slt     s11,s8,s10
    bnez    s11, .while.body_120
    j       .while.exit_120
.while.body_120:
    li      s10, 0
    sb      s7,105(sp)
    j       .while.head_124
.while.head_124:
    li      s7, 1000000
    sw      a0,164(sp)
    slt     a0,s10,s7
    bnez    a0, .while.body_124
    j       .while.exit_124
.while.body_124:
    li      s7, 0
    sw      s7,112(sp)
    j       .while.head_128
.while.head_128:
    lw      s7,112(sp)
    sb      a0,102(sp)
    li      a0, 10000000
    sw      a1,160(sp)
    slt     a1,s7,a0
    bnez    a1, .while.body_128
    j       .while.exit_128
.while.body_128:
    li      a0, 0
    sb      a1,101(sp)
    li      a1, 1
    sw      a2,156(sp)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    la      a1, arr2
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a2, 0
    sd      a0,88(sp)
    li      a0, 1
    sw      a1,84(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, arr1
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 817
    sw      a0,68(sp)
    rem     a0,a7,a1
    lw      a1,68(sp)
    sd      a2,72(sp)
    add     a2,a0,a1
    sw      a0,64(sp)
    lw      a0,84(sp)
    sw      a1,68(sp)
    add     a1,a2,a0
    mv      a7, a1
    sw      a0,84(sp)
    li      a0, 1
    sw      a1,56(sp)
    add     a1,s7,a0
    mv      s7, a1
    j       .L2_0
.L2_0:
    slt     a0,s7,a6
    xori    a0,a0,1
    sw      s7,112(sp)
    bnez    a0, .branch_true_133
    j       .branch_false_133
.branch_true_133:
    sw      a1,52(sp)
    sb      a0,51(sp)
    sw      a2,60(sp)
    lw      s7,112(sp)
    lb      a1,101(sp)
    lw      a2,156(sp)
    j       .while.exit_128
.while.exit_128:
    li      a0, 1
    sb      a1,101(sp)
    add     a1,s10,a0
    mv      s10, a1
    j       .L3_0
.L3_0:
    slt     a0,s10,a5
    xori    a0,a0,1
    sw      s7,112(sp)
    bnez    a0, .branch_true_137
    j       .branch_false_137
.branch_true_137:
    sw      a1,44(sp)
    sb      a0,43(sp)
    lw      s7,112(sp)
    lb      a1,101(sp)
    j       .while.exit_128
.branch_false_137:
    sw      a1,44(sp)
    sb      a0,43(sp)
    lw      a1,160(sp)
    lw      a0,164(sp)
    j       .while.head_124
.branch_false_133:
    sw      a1,52(sp)
    sb      a0,51(sp)
    sw      a2,60(sp)
    lw      a1,160(sp)
    lb      a0,102(sp)
    lw      a2,156(sp)
    j       .while.head_128
.while.exit_124:
    li      s7, 1
    sb      a0,102(sp)
    add     a0,s8,s7
    mv      s8, a0
    j       .L4_0
.L4_0:
    slt     s7,s8,a4
    xori    s7,s7,1
    sb      s7,35(sp)
    lb      s7,35(sp)
    bnez    s7, .branch_true_141
    sb      s7,35(sp)
    j       .branch_false_141
.branch_true_141:
    sw      a0,36(sp)
    lb      a0,102(sp)
    j       .while.exit_124
.branch_false_141:
    sw      s10,116(sp)
    sw      a0,36(sp)
    sb      s11,103(sp)
    lb      s7,105(sp)
    lw      a0,164(sp)
    j       .while.head_120
.while.exit_120:
    li      s10, 1
    sw      a0,164(sp)
    add     a0,s6,s10
    mv      s6, a0
    j       .L5_0
.L5_0:
    slt     s10,s6,a3
    xori    s10,s10,1
    sb      s7,105(sp)
    bnez    s10, .branch_true_145
    j       .branch_false_145
.branch_true_145:
    sb      s10,27(sp)
    sw      a0,28(sp)
    lb      s7,105(sp)
    lw      a0,164(sp)
    j       .while.exit_120
.branch_false_145:
    sb      s10,27(sp)
    sb      s9,104(sp)
    sw      a0,28(sp)
    sb      s11,103(sp)
    sw      s8,120(sp)
    lb      s7,105(sp)
    lw      a0,164(sp)
    j       .while.head_116
.while.exit_116:
    li      s8, 1
    add     s10,s4,s8
    mv      s4, s10
    j       .L6_0
.L6_0:
    slt     s8,s4,a2
    xori    s8,s8,1
    bnez    s8, .branch_true_149
    j       .branch_false_149
.branch_true_149:
    sw      s10,20(sp)
    sb      s8,19(sp)
    j       .while.exit_116
.branch_false_149:
    sb      s7,105(sp)
    sw      s6,124(sp)
    sw      s10,20(sp)
    sb      s9,104(sp)
    sb      s8,19(sp)
    j       .while.head_112
.while.exit_112:
    li      s6, 1
    add     s8,s2,s6
    mv      s2, s8
    j       .L7_0
.L7_0:
    slt     s6,s2,a1
    xori    s6,s6,1
    bnez    s6, .branch_true_153
    j       .branch_false_153
.branch_true_153:
    sb      s6,11(sp)
    sw      s8,12(sp)
    j       .while.exit_112
.branch_false_153:
    sb      s7,105(sp)
    sb      s6,11(sp)
    sb      s5,106(sp)
    sw      s4,128(sp)
    sw      s8,12(sp)
    j       .while.head_108
.while.exit_108:
    li      s4, 1
    add     s6,s1,s4
    mv      s1, s6
    j       .L8_0
.L8_0:
    slt     s4,s1,a0
    xori    s4,s4,1
    bnez    s4, .branch_true_157
    j       .branch_false_157
.branch_true_157:
    sw      s6,4(sp)
    sb      s4,3(sp)
    j       .while.exit_108
.branch_false_157:
    sw      s6,4(sp)
    sb      s3,107(sp)
    sw      s2,132(sp)
    sb      s5,106(sp)
    sb      s4,3(sp)
    j       .while.head_104
.while.exit_104:
    ld      ra,176(sp)
    ld      s0,168(sp)
    sw      a7,108(sp)
    sw      a0,164(sp)
    lw      a0,108(sp)
    addi    sp,sp,184
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
.L0_0:
    call    getint
    sw      a0,76(sp)
    mv      a1, a0
    sw      a0,76(sp)
    sw      a1,72(sp)
    call    getint
    sw      a0,68(sp)
    mv      a1, a0
    sw      a0,68(sp)
    sw      a1,64(sp)
    call    getint
    sw      a0,60(sp)
    mv      a1, a0
    sw      a0,60(sp)
    sw      a1,56(sp)
    call    getint
    sw      a0,52(sp)
    mv      a1, a0
    sw      a0,52(sp)
    sw      a1,48(sp)
    call    getint
    sw      a0,44(sp)
    mv      a1, a0
    sw      a0,44(sp)
    sw      a1,40(sp)
    call    getint
    sw      a0,36(sp)
    mv      a1, a0
    sw      a0,36(sp)
    sw      a1,32(sp)
    call    getint
    sw      a0,28(sp)
    mv      a1, a0
    sw      a0,28(sp)
    sw      a1,24(sp)
    call    getint
    sw      a0,20(sp)
    mv      a1, a0
    sw      a0,20(sp)
    sw      a1,16(sp)
    call    getint
    sw      a0,12(sp)
    mv      a1, a0
    sw      a0,12(sp)
    sw      a1,8(sp)
    lw      a0,72(sp)
    lw      a1,64(sp)
    call    loop1
    call    loop2
    lw      a0,56(sp)
    lw      a1,48(sp)
    lw      a2,40(sp)
    lw      a3,32(sp)
    lw      a4,24(sp)
    lw      a5,16(sp)
    lw      a6,8(sp)
    call    loop3
    sw      a0,4(sp)
    ld      ra,88(sp)
    ld      s0,80(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,96
    ret
.section ___var
    .data
    .align 4
    .globl arr2
    .type arr2,@object
arr2:
    .zero 107520
    .align 4
    .globl arr1
    .type arr1,@object
arr1:
    .zero 57600
