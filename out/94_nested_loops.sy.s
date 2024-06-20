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
    .globl loop1
    .type loop1,@function
loop1:
    addi    sp,sp,-240
    sd      ra,232(sp)
    sd      s0,216(sp)
    addi    s0,sp,240
.L10_0:
    li      a2, 0
    mv      a3, a2
    j       .while.head_24
.while.head_24:
    slt     a4,a1,a3
    slt     a5,a3,a0
    and     a6,a5,a4
    bnez    a6, .while.body_24
    j       .while.exit_24
.while.body_24:
    mv      a7, a2
    j       .while.head_28
.while.head_28:
    li      s1, 2
    slt     s2,a7,s1
    bnez    s2, .while.body_28
    j       .while.exit_28
.while.body_28:
    mv      s3, a2
    j       .while.head_32
.while.head_32:
    li      s4, 3
    slt     s5,s3,s4
    bnez    s5, .while.body_32
    j       .while.exit_32
.while.body_32:
    mv      s6, a2
    j       .while.head_36
.while.head_36:
    li      s7, 4
    slt     s8,s6,s7
    bnez    s8, .while.body_36
    j       .while.exit_36
.while.body_36:
    mv      s9, a2
    j       .while.head_40
.while.head_40:
    li      s10, 5
    slt     s11,s9,s10
    bnez    s11, .while.body_40
    j       .while.exit_40
.while.body_40:
    mv      s1, a2
    j       .while.head_44
.while.head_44:
    li      a2, 6
    slt     s4,s1,a2
    bnez    s4, .while.body_44
    j       .while.exit_44
.while.body_44:
    li      a2, 0
    mv      s7, a2
    j       .while.head_48
.while.head_48:
    li      a2, 2
    slt     s10,s7,a2
    bnez    s10, .while.body_48
    j       .while.exit_48
.while.body_48:
    li      a2, 0
    sw      a0,208(sp)
    li      a0, 1440
    sw      a1,200(sp)
    mul     a1,a0,a3
    add     a2,a2,a1
    li      a0, 720
    mul     a1,a0,a7
    add     a2,a2,a1
    li      a0, 240
    mul     a1,a0,s3
    add     a2,a2,a1
    li      a0, 60
    mul     a1,a0,s6
    add     a2,a2,a1
    li      a0, 12
    mul     a1,a0,s9
    add     a2,a2,a1
    li      a0, 2
    mul     a1,a0,s1
    add     a2,a2,a1
    li      a0, 1
    mul     a1,a0,s7
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,a2
    mv      a0, a0
    mv      a1, a1
    sd      a2,120(sp)
    add     a2,a0,a1
    sw      a0,208(sp)
    add     a0,s7,a2
    sw      a1,200(sp)
    add     a1,s1,a0
    sw      a0,108(sp)
    add     a0,s9,a1
    sw      a1,100(sp)
    add     a1,s6,a0
    sw      a0,92(sp)
    add     a0,s3,a1
    sw      a1,84(sp)
    add     a1,a7,a0
    sw      a0,76(sp)
    add     a0,a3,a1
    sw      a0,60(sp)
    mv      a0, a0
    sw      a1,68(sp)
    mv      a1, a1
    sd      a1,0(a0)
    sd      a0,120(sp)
    li      a0, 1
    sw      a1,60(sp)
    add     a1,s7,a0
    j       .while.head_48
.while.exit_48:
    sw      a1,52(sp)
    add     a1,s1,a0
    j       .while.head_44
.while.exit_44:
    sw      a1,44(sp)
    add     a1,s9,a0
    j       .while.head_40
.while.exit_40:
    sw      a1,36(sp)
    add     a1,s6,a0
    j       .while.head_36
.while.exit_36:
    sw      a1,28(sp)
    add     a1,s3,a0
    j       .while.head_32
.while.exit_32:
    sw      a1,20(sp)
    add     a1,a7,a0
    j       .while.head_28
.while.exit_28:
    sw      a1,12(sp)
    add     a1,a3,a0
    j       .while.head_24
.while.exit_24:
    .globl loop2
    .type loop2,@function
loop2:
    addi    sp,sp,-176
    sd      ra,168(sp)
    sd      s0,152(sp)
    addi    s0,sp,176
.L9_0:
    li      a0, 0
    sw      a1,4(sp)
    mv      a1, a0
    j       .while.head_63
.while.head_63:
    li      a0, 10
    sw      a2,116(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_63
    j       .while.exit_63
.while.body_63:
    li      a0, 0
    sw      a1,144(sp)
    mv      a1, a0
    j       .while.head_67
.while.head_67:
    li      a0, 2
    sb      a2,95(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_67
    j       .while.exit_67
.while.body_67:
    li      a0, 0
    sw      a1,136(sp)
    mv      a1, a0
    j       .while.head_71
.while.head_71:
    li      a0, 3
    sb      a2,94(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_71
    j       .while.exit_71
.while.body_71:
    li      a0, 0
    sw      a1,128(sp)
    mv      a1, a0
    j       .while.head_75
.while.head_75:
    li      a0, 2
    sb      a2,93(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_75
    j       .while.exit_75
.while.body_75:
    li      a0, 0
    sw      a1,120(sp)
    mv      a1, a0
    j       .while.head_79
.while.head_79:
    li      a0, 4
    sb      a2,92(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_79
    j       .while.exit_79
.while.body_79:
    li      a0, 0
    sw      a1,112(sp)
    mv      a1, a0
    j       .while.head_83
.while.head_83:
    li      a0, 8
    sb      a2,91(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_83
    j       .while.exit_83
.while.body_83:
    li      a0, 0
    sw      a1,104(sp)
    mv      a1, a0
    j       .while.head_87
.while.head_87:
    li      a0, 7
    sb      a2,90(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_87
    j       .while.exit_87
.while.body_87:
    li      a0, 0
    sw      a1,96(sp)
    li      a1, 2688
    sb      a2,89(sp)
    mv      a2, a2
    sw      a3,192(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1344
    mv      a3, a3
    sw      a2,144(sp)
    mul     a2,a1,a3
    add     a0,a0,a2
    li      a1, 448
    mv      a2, a2
    sw      a3,136(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 224
    mv      a3, a3
    sw      a2,128(sp)
    mul     a2,a1,a3
    add     a0,a0,a2
    li      a1, 56
    mv      a2, a2
    sw      a3,120(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 7
    mv      a3, a3
    sw      a2,112(sp)
    mul     a2,a1,a3
    add     a0,a0,a2
    li      a1, 1
    mv      a2, a2
    sw      a3,104(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    mv      a1, a1
    add     a3,a1,a2
    sd      a0,81(sp)
    mv      a0, a0
    sw      a1,120(sp)
    add     a1,a0,a3
    sw      a0,136(sp)
    mv      a0, a0
    sw      a2,96(sp)
    add     a2,a0,a1
    sw      a0,144(sp)
    mv      a0, a0
    sd      a2,0(a0)
    sd      a0,81(sp)
    mv      a0, a0
    sw      a1,68(sp)
    li      a1, 1
    sw      a2,60(sp)
    add     a2,a0,a1
    j       .while.head_87
.while.exit_87:
    mv      a1, a1
    sw      a0,96(sp)
    li      a0, 1
    sw      a2,52(sp)
    add     a2,a1,a0
    j       .while.head_83
.while.exit_83:
    mv      a0, a0
    sw      a1,104(sp)
    li      a1, 1
    sw      a2,44(sp)
    add     a2,a0,a1
    j       .while.head_79
.while.exit_79:
    mv      a1, a1
    sw      a0,112(sp)
    li      a0, 1
    sw      a2,36(sp)
    add     a2,a1,a0
    j       .while.head_75
.while.exit_75:
    mv      a0, a0
    sw      a1,120(sp)
    li      a1, 1
    sw      a2,28(sp)
    add     a2,a0,a1
    j       .while.head_71
.while.exit_71:
    mv      a1, a1
    sw      a0,128(sp)
    li      a0, 1
    sw      a2,20(sp)
    add     a2,a1,a0
    j       .while.head_67
.while.exit_67:
    mv      a0, a0
    sw      a1,136(sp)
    li      a1, 1
    sw      a2,12(sp)
    add     a2,a0,a1
    j       .while.head_63
.while.exit_63:
    .globl loop3
    .type loop3,@function
loop3:
    sw      a0,165360(sp)
    li      a0, -165392
    li      a0, -165392
    add     sp,a0,sp
    sd      ra,165384(sp)
    sd      s0,165368(sp)
    li      a0, 165392
    li      a0, 165392
    add     s0,a0,sp
.L1_0:
    li      a0, 0
    sw      a1,165352(sp)
    mv      a1, a0
    sw      a1,165248(sp)
    mv      a1, a0
    j       .while.head_104
.while.head_104:
    li      a0, 10
    sw      a2,165344(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_104
    j       .while.exit_104
.while.body_104:
    li      a0, 0
    sw      a1,165304(sp)
    mv      a1, a0
    j       .while.head_108
.while.head_108:
    li      a0, 100
    sb      a2,165247(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_108
    j       .while.exit_108
.while.body_108:
    li      a0, 0
    sw      a1,165296(sp)
    mv      a1, a0
    j       .while.head_112
.while.head_112:
    li      a0, 1000
    sb      a2,165246(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_112
    j       .while.exit_112
.while.body_112:
    li      a0, 0
    sw      a1,165288(sp)
    mv      a1, a0
    j       .while.head_116
.while.head_116:
    li      a0, 10000
    sb      a2,165245(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_116
    j       .while.exit_116
.while.body_116:
    li      a0, 0
    sw      a1,165280(sp)
    mv      a1, a0
    j       .while.head_120
.while.head_120:
    li      a0, 100000
    sb      a2,165244(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_120
    j       .while.exit_120
.while.body_120:
    li      a0, 0
    sw      a1,165272(sp)
    mv      a1, a0
    j       .while.head_124
.while.head_124:
    li      a0, 1000000
    sb      a2,165243(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_124
    j       .while.exit_124
.while.body_124:
    li      a0, 0
    sw      a1,165264(sp)
    mv      a1, a0
    j       .while.head_128
.while.head_128:
    li      a0, 10000000
    sb      a2,165242(sp)
    slt     a2,a1,a0
    bnez    a2, .while.body_128
    j       .while.exit_128
.while.body_128:
    la      a0, arr2
    sw      a1,165256(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 2688
    sb      a2,165241(sp)
    mv      a2, a2
    sw      a3,165336(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1344
    sw      a2,165304(sp)
    mv      a2, a2
    add     a0,a0,a3
    li      a1, 448
    sw      a2,165296(sp)
    mv      a2, a2
    add     a0,a0,a3
    li      a1, 224
    sw      a2,165288(sp)
    mv      a2, a2
    add     a0,a0,a3
    li      a1, 56
    sw      a2,165280(sp)
    mv      a2, a2
    add     a0,a0,a3
    li      a1, 7
    sw      a2,165272(sp)
    mv      a2, a2
    add     a0,a0,a3
    li      a1, 1
    sw      a2,165264(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    la      a1, arr1
    sd      a0,57712(sp)
    lw      a0,0(a1)
    li      a0, 0
    li      a1, 1440
    sw      a2,165256(sp)
    mv      a2, a2
    sw      a3,165237(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 720
    sw      a2,165304(sp)
    mv      a2, a2
    add     a0,a0,a3
    li      a1, 240
    sw      a2,165296(sp)
    mv      a2, a2
    add     a0,a0,a3
    li      a1, 60
    sw      a2,165288(sp)
    mv      a2, a2
    add     a0,a0,a3
    li      a1, 12
    sw      a2,165280(sp)
    mv      a2, a2
    add     a0,a0,a3
    li      a1, 2
    sw      a2,165272(sp)
    mv      a2, a2
    add     a0,a0,a3
    li      a1, 1
    sw      a2,165264(sp)
    mv      a2, a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,88(sp)
    mv      a0, a0
    sw      a2,165256(sp)
    add     a2,a1,a0
    sw      a0,57704(sp)
    mv      a0, a0
    sw      a1,80(sp)
    li      a1, 817
    sw      a2,72(sp)
    mv      a2, a2
    rem     a2,a0,a1
    mv      a1, a1
    sw      a0,165248(sp)
    add     a0,a2,a1
    sw      a1,72(sp)
    mv      a1, a0
    sw      a0,56(sp)
    mv      a0, a0
    sw      a1,165248(sp)
    li      a1, 1
    sw      a2,64(sp)
    add     a2,a0,a1
    j       .L2_0
.L2_0:
    slt     a1,a6,a0
    xori    a1,a1,1
    bnez    a1, .branch_true_133
    j       .branch_false_133
.branch_true_133:
    j       .while.exit_128
.while.exit_128:
    sw      a0,165256(sp)
    mv      a0, a0
    sb      a1,47(sp)
    li      a1, 1
    sw      a2,48(sp)
    add     a2,a0,a1
    j       .L3_0
.L3_0:
    slt     a1,a5,a0
    xori    a1,a1,1
    bnez    a1, .branch_true_137
    j       .branch_false_137
.branch_true_137:
    j       .while.exit_128
.branch_false_137:
    j       .while.head_124
.branch_false_133:
    j       .while.head_128
.while.exit_124:
    sw      a0,165264(sp)
    mv      a0, a0
    sb      a1,42(sp)
    li      a1, 1
    sw      a2,43(sp)
    add     a2,a0,a1
    j       .L4_0
.L4_0:
    slt     a1,a4,a0
    xori    a1,a1,1
    bnez    a1, .branch_true_141
    j       .branch_false_141
.branch_true_141:
    j       .while.exit_124
.branch_false_141:
    j       .while.head_120
.while.exit_120:
    sw      a0,165272(sp)
    mv      a0, a0
    sb      a1,35(sp)
    li      a1, 1
    sw      a2,36(sp)
    add     a2,a0,a1
    j       .L5_0
.L5_0:
    mv      a1, a1
    sw      a2,28(sp)
    slt     a2,a1,a0
    xori    a2,a2,1
    bnez    a2, .branch_true_145
    j       .branch_false_145
.branch_true_145:
    j       .while.exit_120
.branch_false_145:
    j       .while.head_116
.while.exit_116:
    sw      a0,165280(sp)
    mv      a0, a0
    sw      a1,165336(sp)
    li      a1, 1
    sb      a2,27(sp)
    add     a2,a0,a1
    j       .L6_0
.L6_0:
    mv      a1, a1
    sw      a2,23(sp)
    slt     a2,a1,a0
    xori    a2,a2,1
    bnez    a2, .branch_true_149
    j       .branch_false_149
.branch_true_149:
    j       .while.exit_116
.branch_false_149:
    j       .while.head_112
.while.exit_112:
    sw      a0,165288(sp)
    mv      a0, a0
    sw      a1,165344(sp)
    li      a1, 1
    sb      a2,22(sp)
    add     a2,a0,a1
    j       .L7_0
.L7_0:
    mv      a1, a1
    sw      a2,16(sp)
    slt     a2,a1,a0
    xori    a2,a2,1
    bnez    a2, .branch_true_153
    j       .branch_false_153
.branch_true_153:
    j       .while.exit_112
.branch_false_153:
    j       .while.head_108
.while.exit_108:
    sw      a0,165296(sp)
    mv      a0, a0
    sw      a1,165352(sp)
    li      a1, 1
    sb      a2,15(sp)
    add     a2,a0,a1
    j       .L8_0
.L8_0:
    mv      a1, a1
    sw      a2,8(sp)
    slt     a2,a1,a0
    xori    a2,a2,1
    bnez    a2, .branch_true_157
    j       .branch_false_157
.branch_true_157:
    j       .while.exit_108
.branch_false_157:
    j       .while.head_104
.while.exit_104:
    sw      a0,165304(sp)
    li      a0, 165384
    add     a0,sp,a0
    ld      ra,0(a0)
    sd      a0,165384(sp)
    li      a0, 165368
    add     a0,sp,a0
    ld      s0,0(a0)
    sd      a0,165368(sp)
    li      a0, 165248
    add     a0,sp,a0
    lw      a0,0(a0)
    sw      a0,165248(sp)
    li      a0, 165392
    li      a0, 165392
    add     sp,a0,sp
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-184
    sd      ra,176(sp)
    sd      s0,160(sp)
    addi    s0,sp,184
.L0_0:
    sw      s1,152(sp)
    sb      s2,140(sp)
    sw      s3,176(sp)
    sb      s4,136(sp)
    sb      s5,139(sp)
    sw      s6,168(sp)
    sw      s7,144(sp)
    sb      s8,138(sp)
    sw      s9,160(sp)
    sb      s10,135(sp)
    sb      s11,137(sp)
    call    getint
    sw      a0,152(sp)
    mv      s1, a0
    sw      s1,144(sp)
    call    getint
    sw      a0,152(sp)
    sw      a0,136(sp)
    mv      s1, a0
    sw      s1,128(sp)
    call    getint
    sw      a0,136(sp)
    sw      a0,120(sp)
    mv      s1, a0
    sw      s1,112(sp)
    call    getint
    sw      a0,120(sp)
    sw      a0,104(sp)
    mv      s1, a0
    sw      s1,96(sp)
    call    getint
    sw      a0,104(sp)
    sw      a0,88(sp)
    mv      s1, a0
    sw      s1,80(sp)
    call    getint
    sw      a0,88(sp)
    sw      a0,72(sp)
    mv      s1, a0
    sw      s1,64(sp)
    call    getint
    sw      a0,72(sp)
    sw      a0,56(sp)
    mv      s1, a0
    sw      s1,48(sp)
    call    getint
    sw      a0,56(sp)
    sw      a0,40(sp)
    mv      s1, a0
    sw      s1,32(sp)
    call    getint
    sw      a0,40(sp)
    sw      a0,24(sp)
    mv      s1, a0
    sw      s1,16(sp)
    sw      a0,24(sp)
    mv      a0, a0
    sw      a1,165360(sp)
    mv      a1, a1
    call    loop1
    call    loop2
    mv      a0, a0
    mv      a1, a1
    sb      a2,7(sp)
    mv      a2, a2
    sw      a3,57696(sp)
    mv      a3, a3
    sw      a4,165328(sp)
    mv      a4, a4
    sw      a5,165320(sp)
    mv      a5, a5
    sw      a6,165312(sp)
    mv      a6, a6
    call    loop3
    sw      a0,8(sp)
    ld      ra,176(sp)
    ld      s0,160(sp)
    mv      a0, a0
    addi    sp,sp,184
    ret
.section        .data
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
