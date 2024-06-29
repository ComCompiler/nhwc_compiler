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
    .globl long_func
    .type long_func,@function
long_func:
    li      a0, -5216
    li      a0, -5216
    add     sp,a0,sp
    li      a1, 5208
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 5200
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 5216
    li      a3, 5216
    add     s0,a3,sp
.L1_0:
    li      a0, 2
    li      a1, 0
    li      a2, 1
    j       .while.head_23
.while.head_23:
    li      a3, 0
    slt     a4,a3,a1
    bnez    a4, .while.body_23
    j       .while.exit_23
.while.body_23:
    li      a3, 0
    li      a5, 0
    mv      a6, a1
    li      a7, 1
    j       .while.head_30
.while.head_30:
    li      s1, 16
    slt     s2,a5,s1
    bnez    s2, .while.body_30
    j       .while.exit_30
.while.body_30:
    li      s1, 2
    rem     s3,a7,s1
    rem     s4,a6,s1
    li      s5, 0
    xor     s6,s4,s5
    snez    s6, s6
    xor     s6,s3,s5
    snez    s6, s6
    li      s8, 5154
    add     s8,sp,s8
    lb      s7,0(s8)
    and     s9,s6,s7
    bnez    s9, .branch_true_33
    j       .branch_false_33
.branch_true_33:
    li      s1, 0
    li      s5, 1
    mul     s8,s5,a5
    add     s1,s1,s8
    slli s1,s1,2
    la      s10, SHIFT_TABLE
    add     s1,s1,s10
    lw      s11,0(s1)
    mul     s8,s5,s11
    add     s5,a3,s8
    mv      a3, s5
    li      s1, 5144
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s1, 5140
    add     s1,sp,s1
    sw      s11,0(s1)
    li      s5, 5132
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s5, 5136
    add     s5,sp,s5
    sw      s8,0(s5)
    j       .branch_false_33
.branch_false_33:
.L2_0:
    li      s1, 2
    div     s5,a6,s1
    mv      a6, s5
    div     s8,a7,s1
    mv      a7, s8
    li      s10, 1
    add     s11,a5,s10
    mv      a5, s11
    li      s1, 5120
    add     s1,sp,s1
    sw      s11,0(s1)
    li      s4, 5156
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s4, 5154
    add     s4,sp,s4
    sb      s7,0(s4)
    li      s7, 5153
    add     s7,sp,s7
    sb      s9,0(s7)
    li      s5, 5128
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s3, 5160
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s3, 5124
    add     s3,sp,s3
    sw      s8,0(s3)
    li      s5, 5155
    add     s5,sp,s5
    sb      s6,0(s5)
    li      s2, 5166
    add     s2,sp,s2
    sb      s2,0(s2)
    j       .while.head_30
.while.exit_30:
    li      s1, 0
    xor     s3,a3,s1
    snez    s3, s3
    bnez    s3, .branch_true_40
    j       .branch_false_40
.branch_true_40:
    mv      s1, a2
    mv      s4, a0
    li      s5, 0
    j       .while.head_45
.while.head_45:
    li      s6, 0
    xor     s7,s4,s6
    snez    s7, s7
    bnez    s7, .while.body_45
    j       .while.exit_45
.while.body_45:
    li      a3, 0
    li      a5, 0
    mv      a6, s4
    li      a7, 1
    j       .while.head_52
.while.head_52:
    li      s6, 16
    slt     s8,a5,s6
    bnez    s8, .while.body_52
    j       .while.exit_52
.while.body_52:
    li      s6, 2
    rem     s9,a7,s6
    rem     s10,a6,s6
    li      s11, 0
    xor     s6,s10,s11
    snez    s6, s6
    xor     s6,s9,s11
    snez    s6, s6
    li      a0, 5176
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5090
    add     a0,sp,a0
    lb      s11,0(a0)
    and     a0,s6,s11
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    bnez    a0, .branch_true_55
    j       .branch_false_55
.branch_true_55:
    li      a2, 0
    li      a0, 5089
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 5080
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 5072
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 5076
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5068
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 5089
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 5172
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .branch_false_55
.branch_false_55:
.L3_0:
    li      a2, 2
    li      a0, 5089
    add     a0,sp,a0
    sb      a0,0(a0)
    div     a0,a6,a2
    mv      a6, a0
    li      a0, 5064
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,a2
    mv      a7, a0
    li      a2, 1
    li      a0, 5060
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,a2
    mv      a5, a0
    li      a2, 5090
    add     a2,sp,a2
    sb      s11,0(a2)
    li      a0, 5056
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5096
    add     a0,sp,a0
    sw      s9,0(a0)
    li      s8, 5102
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s8, 5092
    add     s8,sp,s8
    sw      s10,0(s8)
    li      s6, 5091
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s6, 5168
    add     s6,sp,s6
    lw      a2,0(s6)
    li      s9, 5176
    add     s9,sp,s9
    lw      a0,0(s9)
    j       .while.head_52
.while.exit_52:
    li      s6, 0
    xor     s9,a3,s6
    snez    s9, s9
    bnez    s9, .branch_true_62
    j       .branch_false_62
.branch_true_62:
    mv      s6, s5
    mv      s10, s1
    j       .while.head_67
.while.head_67:
    li      s11, 0
    li      a0, 5176
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,s11
    snez    a0, a0
    bnez    a0, .while.body_67
    j       .while.exit_67
.while.body_67:
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    j       .while.head_74
.while.head_74:
    li      s11, 16
    li      a0, 5039
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,s11
    bnez    a0, .while.body_74
    j       .while.exit_74
.while.body_74:
    li      s11, 2
    li      a0, 5038
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a6,s11
    li      s11, 0
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_77
    j       .branch_false_77
.branch_true_77:
    li      s11, 2
    li      a0, 5032
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 5031
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    seqz    a1, a1
    bnez    a1, .branch_true_80
    j       .branch_false_80
.branch_true_80:
    li      s11, 0
    li      a0, 5024
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 5023
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 5000
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 5008
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 5004
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4996
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 5024
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 5023
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_80
.branch_false_80:
.branch_false_77:
    li      s11, 2
    li      a0, 5032
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 5031
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_84
    j       .branch_false_84
.branch_true_84:
    li      s11, 0
    li      a0, 4980
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 4979
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 4960
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4968
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 4964
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4956
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 4980
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 4979
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_84
.branch_false_84:
.L4_0:
.L5_0:
    li      s11, 2
    li      a0, 4980
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a6,s11
    mv      a6, a0
    li      a0, 4992
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,s11
    mv      a7, a0
    li      s11, 1
    li      a0, 4988
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,s11
    mv      a5, a0
    li      a0, 4984
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4979
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 5039
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s11, 5172
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_74
.while.exit_74:
    mv      s11, a3
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .while.head_96
.while.head_96:
    li      a2, 16
    li      a0, 5038
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,a2
    bnez    a0, .while.body_96
    j       .while.exit_96
.while.body_96:
    li      a2, 2
    li      a0, 4955
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a2
    li      a0, 4948
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a2
    li      a2, 0
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    li      a0, 4944
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4948
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    li      a2, 4948
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4942
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 4941
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4942
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4941
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_99
    j       .branch_false_99
.branch_true_99:
    li      a2, 0
    li      a0, 4942
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 4943
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 4928
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 4920
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4924
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4916
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 4941
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 4943
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_99
.branch_false_99:
.L6_0:
    li      a0, 2
    li      a1, 4943
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 4912
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 4908
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 4941
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4904
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 5038
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 5172
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_96
.while.exit_96:
    mv      s10, a3
    j       .L7_0
.L7_0:
    li      a2, 1
    li      a0, 4955
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 15
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,a0,a2
    bnez    a1, .branch_true_107
    j       .branch_false_107
.branch_true_107:
    li      a3, 0
    j       .while.exit_116
.branch_false_107:
    li      a3, 0
    li      a5, 0
    li      a0, 0
    li      a2, 1
    li      a1, 4903
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    mul     a2,s10,a1
    mv      a6, a2
    li      a7, 0xffff
    j       .while.head_116
.while.head_116:
    li      a3, 16
    li      a0, 4888
    add     a0,sp,a0
    sd      a0,0(a0)
    slt     a0,a5,a3
    bnez    a0, .while.body_116
    li      a2, 4880
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4879
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4884
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a2, 4903
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .while.exit_116
.while.body_116:
    li      a3, 2
    li      a0, 4879
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a3
    li      a0, 4872
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a3
    li      a3, 0
    li      a1, 4884
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    snez    a1, a1
    li      a0, 4868
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4872
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a0, 0
    xor     a1,a3,a0
    snez    a1, a1
    li      a2, 4880
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4866
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 4865
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4866
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4865
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_119
    j       .branch_false_119
.branch_true_119:
    li      a2, 0
    li      a0, 4866
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 4867
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 4856
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    li      a0, 4852
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a1,0(a0)
    add     a0,a1,a2
    mv      a1, a0
    li      a2, 4848
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4844
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 4865
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 4867
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_119
.branch_false_119:
.L8_0:
    li      a0, 2
    li      a1, 4867
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 4840
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 4836
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 4865
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4872
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 4832
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 4880
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a3, 4888
    add     a3,sp,a3
    ld      a0,0(a3)
    li      a3, 4884
    add     a3,sp,a3
    lw      a1,0(a3)
    j       .while.head_116
.while.exit_116:
.L9_0:
    mv      s10, a3
    mv      s6, s11
    li      a0, 5040
    add     a0,sp,a0
    sw      s11,0(a0)
    li      a0, 4903
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 5176
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 5172
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_67
.while.exit_67:
    mv      a3, s6
    mv      s5, a3
    li      a0, 5039
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 5044
    add     a0,sp,a0
    sw      s10,0(a0)
    li      s6, 5048
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s6, 5176
    add     s6,sp,s6
    lw      a0,0(s6)
    j       .branch_false_62
.branch_false_62:
.L10_0:
    mv      s6, s1
    mv      s10, s1
    j       .while.head_132
.while.head_132:
    li      s11, 0
    li      a0, 5176
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,s11
    snez    a0, a0
    bnez    a0, .while.body_132
    j       .while.exit_132
.while.body_132:
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    j       .while.head_139
.while.head_139:
    li      s11, 16
    li      a0, 4819
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,s11
    bnez    a0, .while.body_139
    j       .while.exit_139
.while.body_139:
    li      s11, 2
    li      a0, 4818
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a6,s11
    li      s11, 0
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_142
    j       .branch_false_142
.branch_true_142:
    li      s11, 2
    li      a0, 4812
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 4811
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    seqz    a1, a1
    bnez    a1, .branch_true_145
    j       .branch_false_145
.branch_true_145:
    li      s11, 0
    li      a0, 4804
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 4803
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 4784
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4792
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 4788
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4780
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 4804
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 4803
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_145
.branch_false_145:
.branch_false_142:
    li      s11, 2
    li      a0, 4812
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 4811
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_149
    j       .branch_false_149
.branch_true_149:
    li      s11, 0
    li      a0, 4764
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 4763
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 4744
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4752
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 4748
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4740
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 4764
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 4763
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_149
.branch_false_149:
.L11_0:
.L12_0:
    li      s11, 2
    li      a0, 4764
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a6,s11
    mv      a6, a0
    li      a0, 4776
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,s11
    mv      a7, a0
    li      s11, 1
    li      a0, 4772
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,s11
    mv      a5, a0
    li      a0, 4768
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4763
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 4819
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s11, 5172
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_139
.while.exit_139:
    mv      s11, a3
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .while.head_161
.while.head_161:
    li      a2, 16
    li      a0, 4818
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,a2
    bnez    a0, .while.body_161
    j       .while.exit_161
.while.body_161:
    li      a2, 2
    li      a0, 4739
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a2
    li      a0, 4732
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a2
    li      a2, 0
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    li      a0, 4728
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4732
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    li      a2, 4732
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4726
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 4725
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4726
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4725
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_164
    j       .branch_false_164
.branch_true_164:
    li      a2, 0
    li      a0, 4726
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 4727
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 4712
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 4704
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4708
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4700
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 4725
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 4727
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_164
.branch_false_164:
.L13_0:
    li      a0, 2
    li      a1, 4727
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 4696
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 4692
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 4725
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4688
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 4818
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 5172
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_161
.while.exit_161:
    mv      s10, a3
    j       .L14_0
.L14_0:
    li      a2, 1
    li      a0, 4739
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 15
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,a0,a2
    bnez    a1, .branch_true_172
    j       .branch_false_172
.branch_true_172:
    li      a3, 0
    j       .while.exit_181
.branch_false_172:
    li      a3, 0
    li      a5, 0
    li      a0, 0
    li      a2, 1
    li      a1, 4687
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    mul     a2,s10,a1
    mv      a6, a2
    li      a7, 0xffff
    j       .while.head_181
.while.head_181:
    li      a3, 16
    li      a0, 4672
    add     a0,sp,a0
    sd      a0,0(a0)
    slt     a0,a5,a3
    bnez    a0, .while.body_181
    li      a2, 4664
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4663
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4668
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a2, 4687
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .while.exit_181
.while.body_181:
    li      a3, 2
    li      a0, 4663
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a3
    li      a0, 4656
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a3
    li      a3, 0
    li      a1, 4668
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    snez    a1, a1
    li      a0, 4652
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4656
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a0, 0
    xor     a1,a3,a0
    snez    a1, a1
    li      a2, 4664
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4650
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 4649
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4650
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4649
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_184
    j       .branch_false_184
.branch_true_184:
    li      a2, 0
    li      a0, 4650
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 4651
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 4640
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    li      a0, 4636
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a1,0(a0)
    add     a0,a1,a2
    mv      a1, a0
    li      a2, 4632
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4628
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 4649
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 4651
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_184
.branch_false_184:
.L15_0:
    li      a0, 2
    li      a1, 4651
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 4624
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 4620
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 4649
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4656
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 4616
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 4664
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a3, 4672
    add     a3,sp,a3
    ld      a0,0(a3)
    li      a3, 4668
    add     a3,sp,a3
    lw      a1,0(a3)
    j       .while.head_181
.while.exit_181:
.L16_0:
    mv      s10, a3
    mv      s6, s11
    li      a0, 4820
    add     a0,sp,a0
    sw      s11,0(a0)
    li      a0, 4687
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 5176
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 5172
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_132
.while.exit_132:
    mv      a3, s6
    mv      s1, a3
    mv      a6, s4
    li      a7, 1
    j       .L17_0
.L17_0:
    li      s11, 15
    li      a0, 4819
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a7,s11
    xori    a0,a0,1
    bnez    a0, .branch_true_197
    j       .branch_false_197
.branch_true_197:
    li      s11, 0
    li      a0, 4615
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a6,s11
    bnez    a0, .branch_true_200
    j       .branch_false_200
.branch_true_200:
    li      a3, 0xffff
    j       .L18_0
.branch_false_200:
    li      a3, 0
    j       .L18_0
.L18_0:
.branch_false_197:
    li      s11, 0
    li      a0, 4615
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,s11,a7
    bnez    a0, .branch_true_206
    j       .branch_false_206
.branch_true_206:
    li      s11, 0x7fff
    li      a0, 4613
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,s11,a6
    bnez    a0, .branch_true_209
    j       .branch_false_209
.branch_true_209:
    li      s11, 0
    li      a0, 4612
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a7
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    div     a1,a6,a0
    mv      a6, a1
    li      a0, 4596
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 4592
    add     a1,sp,a1
    sw      a1,0(a1)
    sub     a1,a0,a7
    li      a0, 1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
    li      a0, 0
    li      a1, 4588
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 65536
    li      a0, 4576
    add     a0,sp,a0
    sd      a0,0(a0)
    add     a0,a6,a3
    sub     a3,a0,a1
    li      a0, 4568
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a3
    li      a2, 4584
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .L19_0
.branch_false_209:
    li      s11, 0
    li      a0, 4612
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a7
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    div     a1,a6,a0
    mv      a3, a1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4552
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 4548
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 4544
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 4600
    add     a1,sp,a1
    ld      s11,0(a1)
    li      a2, 5196
    add     a2,sp,a2
    lw      a0,0(a2)
    li      a1, 4564
    add     a1,sp,a1
    lw      a3,0(a1)
    li      a2, 4572
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .L19_0
.L19_0:
.branch_false_206:
    mv      a3, a6
    j       .L20_0
.L20_0:
.L21_0:
.L22_0:
    mv      s4, a3
    li      a0, 4613
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 5103
    add     a0,sp,a0
    sb      s7,0(a0)
    li      s7, 5055
    add     s7,sp,s7
    sb      s9,0(s7)
    li      s8, 5102
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s8, 4824
    add     s8,sp,s8
    sw      s10,0(s8)
    li      s6, 4828
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s6, 5176
    add     s6,sp,s6
    lw      a0,0(s6)
    j       .while.head_45
.while.exit_45:
    mv      a3, s5
    mv      a2, a3
    li      s1, 5112
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 5108
    add     s1,sp,s1
    sw      s4,0(s1)
    li      s4, 5103
    add     s4,sp,s4
    sb      s7,0(s4)
    li      s5, 5104
    add     s5,sp,s5
    sw      s5,0(s5)
    j       .branch_false_40
.branch_false_40:
.L23_0:
    mv      s1, a0
    mv      s4, a0
    li      s5, 0
    j       .while.head_223
.while.head_223:
    li      s6, 0
    xor     s7,s4,s6
    snez    s7, s7
    bnez    s7, .while.body_223
    j       .while.exit_223
.while.body_223:
    li      a3, 0
    li      a5, 0
    mv      a6, s4
    li      a7, 1
    j       .while.head_230
.while.head_230:
    li      s6, 16
    slt     s8,a5,s6
    bnez    s8, .while.body_230
    j       .while.exit_230
.while.body_230:
    li      s6, 2
    rem     s9,a7,s6
    rem     s10,a6,s6
    li      s11, 0
    xor     s6,s10,s11
    snez    s6, s6
    xor     s6,s9,s11
    snez    s6, s6
    li      a0, 5176
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4518
    add     a0,sp,a0
    lb      s11,0(a0)
    and     a0,s6,s11
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    bnez    a0, .branch_true_233
    j       .branch_false_233
.branch_true_233:
    li      a2, 0
    li      a0, 4517
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 4504
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 4496
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4500
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4492
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 4517
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 5172
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .branch_false_233
.branch_false_233:
.L24_0:
    li      a2, 2
    li      a0, 4517
    add     a0,sp,a0
    sb      a0,0(a0)
    div     a0,a6,a2
    mv      a6, a0
    li      a0, 4488
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,a2
    mv      a7, a0
    li      a2, 1
    li      a0, 4484
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,a2
    mv      a5, a0
    li      a2, 4518
    add     a2,sp,a2
    sb      s11,0(a2)
    li      a0, 4480
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4524
    add     a0,sp,a0
    sw      s9,0(a0)
    li      s8, 4530
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s8, 4520
    add     s8,sp,s8
    sw      s10,0(s8)
    li      s6, 4519
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s6, 5168
    add     s6,sp,s6
    lw      a2,0(s6)
    li      s9, 5176
    add     s9,sp,s9
    lw      a0,0(s9)
    j       .while.head_230
.while.exit_230:
    li      s6, 0
    xor     s9,a3,s6
    snez    s9, s9
    bnez    s9, .branch_true_240
    j       .branch_false_240
.branch_true_240:
    mv      s6, s5
    mv      s10, s1
    j       .while.head_245
.while.head_245:
    li      s11, 0
    li      a0, 5176
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,s11
    snez    a0, a0
    bnez    a0, .while.body_245
    j       .while.exit_245
.while.body_245:
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    j       .while.head_252
.while.head_252:
    li      s11, 16
    li      a0, 4463
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,s11
    bnez    a0, .while.body_252
    j       .while.exit_252
.while.body_252:
    li      s11, 2
    li      a0, 4462
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a6,s11
    li      s11, 0
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_255
    j       .branch_false_255
.branch_true_255:
    li      s11, 2
    li      a0, 4456
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 4455
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    seqz    a1, a1
    bnez    a1, .branch_true_258
    j       .branch_false_258
.branch_true_258:
    li      s11, 0
    li      a0, 4448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 4447
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 4424
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4432
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 4428
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4420
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 4448
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 4447
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_258
.branch_false_258:
.branch_false_255:
    li      s11, 2
    li      a0, 4456
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 4455
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_262
    j       .branch_false_262
.branch_true_262:
    li      s11, 0
    li      a0, 4404
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 4403
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 4384
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4392
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 4388
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4380
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 4404
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 4403
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_262
.branch_false_262:
.L25_0:
.L26_0:
    li      s11, 2
    li      a0, 4404
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a6,s11
    mv      a6, a0
    li      a0, 4416
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,s11
    mv      a7, a0
    li      s11, 1
    li      a0, 4412
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,s11
    mv      a5, a0
    li      a0, 4408
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4403
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 4463
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s11, 5172
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_252
.while.exit_252:
    mv      s11, a3
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .while.head_274
.while.head_274:
    li      a2, 16
    li      a0, 4462
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,a2
    bnez    a0, .while.body_274
    j       .while.exit_274
.while.body_274:
    li      a2, 2
    li      a0, 4379
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a2
    li      a0, 4372
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a2
    li      a2, 0
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    li      a0, 4368
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4372
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    li      a2, 4372
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4366
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 4365
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4366
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4365
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_277
    j       .branch_false_277
.branch_true_277:
    li      a2, 0
    li      a0, 4366
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 4367
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 4352
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 4344
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4348
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4340
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 4365
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 4367
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_277
.branch_false_277:
.L27_0:
    li      a0, 2
    li      a1, 4367
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 4336
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 4332
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 4365
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4328
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 4462
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 5172
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_274
.while.exit_274:
    mv      s10, a3
    j       .L28_0
.L28_0:
    li      a2, 1
    li      a0, 4379
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 15
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,a0,a2
    bnez    a1, .branch_true_285
    j       .branch_false_285
.branch_true_285:
    li      a3, 0
    j       .while.exit_294
.branch_false_285:
    li      a3, 0
    li      a5, 0
    li      a0, 0
    li      a2, 1
    li      a1, 4327
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    mul     a2,s10,a1
    mv      a6, a2
    li      a7, 0xffff
    j       .while.head_294
.while.head_294:
    li      a3, 16
    li      a0, 4312
    add     a0,sp,a0
    sd      a0,0(a0)
    slt     a0,a5,a3
    bnez    a0, .while.body_294
    li      a2, 4304
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4303
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4308
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a2, 4327
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .while.exit_294
.while.body_294:
    li      a3, 2
    li      a0, 4303
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a3
    li      a0, 4296
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a3
    li      a3, 0
    li      a1, 4308
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    snez    a1, a1
    li      a0, 4292
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4296
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a0, 0
    xor     a1,a3,a0
    snez    a1, a1
    li      a2, 4304
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4290
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 4289
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4290
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4289
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_297
    j       .branch_false_297
.branch_true_297:
    li      a2, 0
    li      a0, 4290
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 4291
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 4280
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    li      a0, 4276
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a1,0(a0)
    add     a0,a1,a2
    mv      a1, a0
    li      a2, 4272
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4268
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 4289
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 4291
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_297
.branch_false_297:
.L29_0:
    li      a0, 2
    li      a1, 4291
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 4264
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 4260
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 4289
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4296
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 4256
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 4304
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a3, 4312
    add     a3,sp,a3
    ld      a0,0(a3)
    li      a3, 4308
    add     a3,sp,a3
    lw      a1,0(a3)
    j       .while.head_294
.while.exit_294:
.L30_0:
    mv      s10, a3
    mv      s6, s11
    li      a0, 4464
    add     a0,sp,a0
    sw      s11,0(a0)
    li      a0, 4327
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 5176
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 5172
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_245
.while.exit_245:
    mv      a3, s6
    mv      s5, a3
    li      a0, 4463
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4468
    add     a0,sp,a0
    sw      s10,0(a0)
    li      s6, 4472
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s6, 5176
    add     s6,sp,s6
    lw      a0,0(s6)
    j       .branch_false_240
.branch_false_240:
.L31_0:
    mv      s6, s1
    mv      s10, s1
    j       .while.head_310
.while.head_310:
    li      s11, 0
    li      a0, 5176
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,s11
    snez    a0, a0
    bnez    a0, .while.body_310
    j       .while.exit_310
.while.body_310:
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    j       .while.head_317
.while.head_317:
    li      s11, 16
    li      a0, 4243
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,s11
    bnez    a0, .while.body_317
    j       .while.exit_317
.while.body_317:
    li      s11, 2
    li      a0, 4242
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a6,s11
    li      s11, 0
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_320
    j       .branch_false_320
.branch_true_320:
    li      s11, 2
    li      a0, 4236
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 4235
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    seqz    a1, a1
    bnez    a1, .branch_true_323
    j       .branch_false_323
.branch_true_323:
    li      s11, 0
    li      a0, 4228
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 4227
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 4208
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4216
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 4212
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4204
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 4228
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 4227
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_323
.branch_false_323:
.branch_false_320:
    li      s11, 2
    li      a0, 4236
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 4235
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_327
    j       .branch_false_327
.branch_true_327:
    li      s11, 0
    li      a0, 4188
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 4187
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 4168
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4176
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 4172
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4164
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 4188
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 4187
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_327
.branch_false_327:
.L32_0:
.L33_0:
    li      s11, 2
    li      a0, 4188
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a6,s11
    mv      a6, a0
    li      a0, 4200
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,s11
    mv      a7, a0
    li      s11, 1
    li      a0, 4196
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,s11
    mv      a5, a0
    li      a0, 4192
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4187
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 4243
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s11, 5172
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_317
.while.exit_317:
    mv      s11, a3
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .while.head_339
.while.head_339:
    li      a2, 16
    li      a0, 4242
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,a2
    bnez    a0, .while.body_339
    j       .while.exit_339
.while.body_339:
    li      a2, 2
    li      a0, 4163
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a2
    li      a0, 4156
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a2
    li      a2, 0
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    li      a0, 4152
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4156
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    li      a2, 4156
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4150
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 4149
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4150
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4149
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_342
    j       .branch_false_342
.branch_true_342:
    li      a2, 0
    li      a0, 4150
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 4151
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 4136
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 4128
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4132
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4124
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 4149
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 4151
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_342
.branch_false_342:
.L34_0:
    li      a0, 2
    li      a1, 4151
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 4120
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 4116
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 4149
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4112
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 4242
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 5172
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_339
.while.exit_339:
    mv      s10, a3
    j       .L35_0
.L35_0:
    li      a2, 1
    li      a0, 4163
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 15
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,a0,a2
    bnez    a1, .branch_true_350
    j       .branch_false_350
.branch_true_350:
    li      a3, 0
    j       .while.exit_359
.branch_false_350:
    li      a3, 0
    li      a5, 0
    li      a0, 0
    li      a2, 1
    li      a1, 4111
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    mul     a2,s10,a1
    mv      a6, a2
    li      a7, 0xffff
    j       .while.head_359
.while.head_359:
    li      a3, 16
    li      a0, 4096
    add     a0,sp,a0
    sd      a0,0(a0)
    slt     a0,a5,a3
    bnez    a0, .while.body_359
    li      a2, 4088
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4087
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4092
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a2, 4111
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .while.exit_359
.while.body_359:
    li      a3, 2
    li      a0, 4087
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a3
    li      a0, 4080
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a3
    li      a3, 0
    li      a1, 4092
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    snez    a1, a1
    li      a0, 4076
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4080
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a0, 0
    xor     a1,a3,a0
    snez    a1, a1
    li      a2, 4088
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4074
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 4073
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4074
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4073
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_362
    j       .branch_false_362
.branch_true_362:
    li      a2, 0
    li      a0, 4074
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 4075
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 4064
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    li      a0, 4060
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a1,0(a0)
    add     a0,a1,a2
    mv      a1, a0
    li      a2, 4056
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4052
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 4073
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 4075
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_362
.branch_false_362:
.L36_0:
    li      a0, 2
    li      a1, 4075
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 4048
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 4044
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 4073
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4080
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 4040
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 4088
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a3, 4096
    add     a3,sp,a3
    ld      a0,0(a3)
    li      a3, 4092
    add     a3,sp,a3
    lw      a1,0(a3)
    j       .while.head_359
.while.exit_359:
.L37_0:
    mv      s10, a3
    mv      s6, s11
    li      a0, 4244
    add     a0,sp,a0
    sw      s11,0(a0)
    li      a0, 4111
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 5176
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 5172
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_310
.while.exit_310:
    mv      a3, s6
    mv      s1, a3
    mv      a6, s4
    li      a7, 1
    j       .L38_0
.L38_0:
    li      s11, 15
    li      a0, 4243
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a7,s11
    xori    a0,a0,1
    bnez    a0, .branch_true_375
    j       .branch_false_375
.branch_true_375:
    li      s11, 0
    li      a0, 4039
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a6,s11
    bnez    a0, .branch_true_378
    j       .branch_false_378
.branch_true_378:
    li      a3, 0xffff
    j       .L39_0
.branch_false_378:
    li      a3, 0
    j       .L39_0
.L39_0:
.branch_false_375:
    li      s11, 0
    li      a0, 4039
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,s11,a7
    bnez    a0, .branch_true_384
    j       .branch_false_384
.branch_true_384:
    li      s11, 0x7fff
    li      a0, 4037
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,s11,a6
    bnez    a0, .branch_true_387
    j       .branch_false_387
.branch_true_387:
    li      s11, 0
    li      a0, 4036
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a7
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    div     a1,a6,a0
    mv      a6, a1
    li      a0, 4020
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 4016
    add     a1,sp,a1
    sw      a1,0(a1)
    sub     a1,a0,a7
    li      a0, 1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
    li      a0, 0
    li      a1, 4012
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 65536
    li      a0, 4000
    add     a0,sp,a0
    sd      a0,0(a0)
    add     a0,a6,a3
    sub     a3,a0,a1
    li      a0, 3992
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a3
    li      a2, 4008
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .L40_0
.branch_false_387:
    li      s11, 0
    li      a0, 4036
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a7
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    div     a1,a6,a0
    mv      a3, a1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3976
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 3972
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 3968
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 4024
    add     a1,sp,a1
    ld      s11,0(a1)
    li      a2, 5196
    add     a2,sp,a2
    lw      a0,0(a2)
    li      a1, 3988
    add     a1,sp,a1
    lw      a3,0(a1)
    li      a2, 3996
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .L40_0
.L40_0:
.branch_false_384:
    mv      a3, a6
    j       .L41_0
.L41_0:
.L42_0:
.L43_0:
    mv      s4, a3
    li      a0, 4037
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4531
    add     a0,sp,a0
    sb      s7,0(a0)
    li      s7, 4479
    add     s7,sp,s7
    sb      s9,0(s7)
    li      s8, 4530
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s8, 4248
    add     s8,sp,s8
    sw      s10,0(s8)
    li      s6, 4252
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s6, 5176
    add     s6,sp,s6
    lw      a0,0(s6)
    j       .while.head_223
.while.exit_223:
    mv      a3, s5
    mv      a0, a3
    mv      a6, a1
    li      a7, 1
    j       .L44_0
.L44_0:
    li      s6, 15
    slt     s8,a7,s6
    xori    s8,s8,1
    bnez    s8, .branch_true_401
    j       .branch_false_401
.branch_true_401:
    li      s6, 0
    slt     s9,a6,s6
    bnez    s9, .branch_true_404
    j       .branch_false_404
.branch_true_404:
    li      a3, 0xffff
    j       .L45_0
.branch_false_404:
    li      a3, 0
    j       .L45_0
.L45_0:
.branch_false_401:
    li      s6, 0
    slt     s9,s6,a7
    bnez    s9, .branch_true_410
    j       .branch_false_410
.branch_true_410:
    li      s6, 0x7fff
    slt     s10,s6,a6
    bnez    s10, .branch_true_413
    j       .branch_false_413
.branch_true_413:
    li      s6, 0
    li      s11, 1
    li      a0, 5176
    add     a0,sp,a0
    sw      a0,0(a0)
    mul     a0,s11,a7
    add     s6,s6,a0
    slli s6,s6,2
    la      a0, SHIFT_TABLE
    add     s6,s6,a0
    lw      a0,0(s6)
    div     s11,a6,a0
    mv      a6, s11
    li      a0, 3948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    sub     a1,a0,a7
    li      a0, 1
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
    li      a0, 0
    li      a1, 3940
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 65536
    li      a0, 3928
    add     a0,sp,a0
    sd      a0,0(a0)
    add     a0,a6,a3
    sub     a3,a0,a1
    li      a0, 3920
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a3
    li      a2, 3936
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .L46_0
.branch_false_413:
    li      s6, 0
    li      s11, 1
    li      a0, 5176
    add     a0,sp,a0
    sw      a0,0(a0)
    mul     a0,s11,a7
    add     s6,s6,a0
    slli s6,s6,2
    la      a0, SHIFT_TABLE
    add     s6,s6,a0
    lw      a0,0(s6)
    div     s11,a6,a0
    mv      a3, s11
    li      a2, 5168
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3896
    add     a2,sp,a2
    sw      s11,0(a2)
    li      a0, 3900
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3904
    add     a1,sp,a1
    sd      s6,0(a1)
    li      a2, 3944
    add     a2,sp,a2
    lw      s11,0(a2)
    li      a3, 5196
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s6, 3916
    add     s6,sp,s6
    lw      a3,0(s6)
    li      a2, 3924
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a2, 3952
    add     a2,sp,a2
    ld      s6,0(a2)
    j       .L46_0
.L46_0:
.branch_false_410:
    mv      a3, a6
    j       .L47_0
.L47_0:
.L48_0:
.L49_0:
    mv      a1, a3
    li      s1, 4540
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 4536
    add     a3,sp,a3
    sw      s4,0(a3)
    li      s1, 4531
    add     s1,sp,s1
    sb      s7,0(s1)
    li      s4, 3965
    add     s4,sp,s4
    sb      s9,0(s4)
    li      s5, 4532
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s3, 5119
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s3, 3967
    add     s3,sp,s3
    sb      s8,0(s3)
    li      a6, 5188
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 5184
    add     a6,sp,a6
    sw      a7,0(a6)
    li      a7, 5166
    add     a7,sp,a7
    sb      s2,0(a7)
    li      a5, 5192
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a4, 5167
    add     a4,sp,a4
    sb      a4,0(a4)
    j       .while.head_23
.while.exit_23:
    mv      a3, a2
    li      a0, 5176
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5172
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 5168
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 5196
    add     a2,sp,a2
    sw      a3,0(a2)
    li      a3, 5167
    add     a3,sp,a3
    sb      a4,0(a3)
    add     a2,sp,a2
    lw      a0,0(a2)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 2
    li      a1, 1
    li      a2, 1
    j       .while.head_428
.while.head_428:
    li      a3, 0
    slt     a4,a3,a1
    bnez    a4, .while.body_428
    j       .while.exit_428
.while.body_428:
    li      a3, 0
    li      a5, 0
    mv      a6, a1
    li      a7, 1
    j       .while.head_435
.while.head_435:
    li      s1, 16
    slt     s2,a5,s1
    bnez    s2, .while.body_435
    j       .while.exit_435
.while.body_435:
    li      s1, 2
    rem     s3,a7,s1
    rem     s4,a6,s1
    li      s5, 0
    xor     s6,s4,s5
    snez    s6, s6
    xor     s6,s3,s5
    snez    s6, s6
    li      s8, 3870
    add     s8,sp,s8
    lb      s7,0(s8)
    and     s9,s6,s7
    bnez    s9, .branch_true_438
    j       .branch_false_438
.branch_true_438:
    li      s1, 0
    li      s5, 1
    mul     s8,s5,a5
    add     s1,s1,s8
    slli s1,s1,2
    la      s10, SHIFT_TABLE
    add     s1,s1,s10
    lw      s11,0(s1)
    mul     s8,s5,s11
    add     s5,a3,s8
    mv      a3, s5
    li      s1, 3856
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s1, 3852
    add     s1,sp,s1
    sw      s11,0(s1)
    li      s5, 3844
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s5, 3848
    add     s5,sp,s5
    sw      s8,0(s5)
    j       .branch_false_438
.branch_false_438:
.L50_0:
    li      s1, 2
    div     s5,a6,s1
    mv      a6, s5
    div     s8,a7,s1
    mv      a7, s8
    li      s10, 1
    add     s11,a5,s10
    mv      a5, s11
    li      s1, 3832
    add     s1,sp,s1
    sw      s11,0(s1)
    li      s4, 3872
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s4, 3870
    add     s4,sp,s4
    sb      s7,0(s4)
    li      s7, 3869
    add     s7,sp,s7
    sb      s9,0(s7)
    li      s5, 3840
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s3, 3876
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s3, 3836
    add     s3,sp,s3
    sw      s8,0(s3)
    li      s5, 3871
    add     s5,sp,s5
    sb      s6,0(s5)
    li      s2, 3882
    add     s2,sp,s2
    sb      s2,0(s2)
    j       .while.head_435
.while.exit_435:
    li      s1, 0
    xor     s3,a3,s1
    snez    s3, s3
    bnez    s3, .branch_true_445
    j       .branch_false_445
.branch_true_445:
    mv      s1, a2
    mv      s4, a0
    li      s5, 0
    j       .while.head_450
.while.head_450:
    li      s6, 0
    xor     s7,s4,s6
    snez    s7, s7
    bnez    s7, .while.body_450
    j       .while.exit_450
.while.body_450:
    li      a3, 0
    li      a5, 0
    mv      a6, s4
    li      a7, 1
    j       .while.head_457
.while.head_457:
    li      s6, 16
    slt     s8,a5,s6
    bnez    s8, .while.body_457
    j       .while.exit_457
.while.body_457:
    li      s6, 2
    rem     s9,a7,s6
    rem     s10,a6,s6
    li      s11, 0
    xor     s6,s10,s11
    snez    s6, s6
    xor     s6,s9,s11
    snez    s6, s6
    li      a0, 3892
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3802
    add     a0,sp,a0
    lb      s11,0(a0)
    and     a0,s6,s11
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    bnez    a0, .branch_true_460
    j       .branch_false_460
.branch_true_460:
    li      a2, 0
    li      a0, 3801
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 3792
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 3784
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 3788
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3780
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3801
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 3888
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .branch_false_460
.branch_false_460:
.L51_0:
    li      a2, 2
    li      a0, 3801
    add     a0,sp,a0
    sb      a0,0(a0)
    div     a0,a6,a2
    mv      a6, a0
    li      a0, 3776
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,a2
    mv      a7, a0
    li      a2, 1
    li      a0, 3772
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,a2
    mv      a5, a0
    li      a2, 3802
    add     a2,sp,a2
    sb      s11,0(a2)
    li      a0, 3768
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3808
    add     a0,sp,a0
    sw      s9,0(a0)
    li      s8, 3814
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s8, 3804
    add     s8,sp,s8
    sw      s10,0(s8)
    li      s6, 3803
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s6, 3884
    add     s6,sp,s6
    lw      a2,0(s6)
    li      s9, 3892
    add     s9,sp,s9
    lw      a0,0(s9)
    j       .while.head_457
.while.exit_457:
    li      s6, 0
    xor     s9,a3,s6
    snez    s9, s9
    bnez    s9, .branch_true_467
    j       .branch_false_467
.branch_true_467:
    mv      s6, s5
    mv      s10, s1
    j       .while.head_472
.while.head_472:
    li      s11, 0
    li      a0, 3892
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,s11
    snez    a0, a0
    bnez    a0, .while.body_472
    j       .while.exit_472
.while.body_472:
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    j       .while.head_479
.while.head_479:
    li      s11, 16
    li      a0, 3751
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,s11
    bnez    a0, .while.body_479
    j       .while.exit_479
.while.body_479:
    li      s11, 2
    li      a0, 3750
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a6,s11
    li      s11, 0
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_482
    j       .branch_false_482
.branch_true_482:
    li      s11, 2
    li      a0, 3744
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 3743
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    seqz    a1, a1
    bnez    a1, .branch_true_485
    j       .branch_false_485
.branch_true_485:
    li      s11, 0
    li      a0, 3736
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 3735
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 3712
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3720
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 3716
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3708
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 3736
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 3735
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_485
.branch_false_485:
.branch_false_482:
    li      s11, 2
    li      a0, 3744
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 3743
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_489
    j       .branch_false_489
.branch_true_489:
    li      s11, 0
    li      a0, 3692
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 3691
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 3672
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3680
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 3676
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3668
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 3692
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 3691
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_489
.branch_false_489:
.L52_0:
.L53_0:
    li      s11, 2
    li      a0, 3692
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a6,s11
    mv      a6, a0
    li      a0, 3704
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,s11
    mv      a7, a0
    li      s11, 1
    li      a0, 3700
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,s11
    mv      a5, a0
    li      a0, 3696
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3691
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 3751
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s11, 3888
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_479
.while.exit_479:
    mv      s11, a3
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .while.head_501
.while.head_501:
    li      a2, 16
    li      a0, 3750
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,a2
    bnez    a0, .while.body_501
    j       .while.exit_501
.while.body_501:
    li      a2, 2
    li      a0, 3667
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a2
    li      a0, 3660
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a2
    li      a2, 0
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    li      a0, 3656
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3660
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    li      a2, 3660
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3654
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 3653
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3654
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3653
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_504
    j       .branch_false_504
.branch_true_504:
    li      a2, 0
    li      a0, 3654
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 3655
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 3640
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 3632
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 3636
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3628
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3653
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 3655
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_504
.branch_false_504:
.L54_0:
    li      a0, 2
    li      a1, 3655
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 3624
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 3620
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 3653
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3616
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3750
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 3888
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_501
.while.exit_501:
    mv      s10, a3
    j       .L55_0
.L55_0:
    li      a2, 1
    li      a0, 3667
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 15
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,a0,a2
    bnez    a1, .branch_true_512
    j       .branch_false_512
.branch_true_512:
    li      a3, 0
    j       .while.exit_521
.branch_false_512:
    li      a3, 0
    li      a5, 0
    li      a0, 0
    li      a2, 1
    li      a1, 3615
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    mul     a2,s10,a1
    mv      a6, a2
    li      a7, 0xffff
    j       .while.head_521
.while.head_521:
    li      a3, 16
    li      a0, 3600
    add     a0,sp,a0
    sd      a0,0(a0)
    slt     a0,a5,a3
    bnez    a0, .while.body_521
    li      a2, 3592
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 3591
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3596
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a2, 3615
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .while.exit_521
.while.body_521:
    li      a3, 2
    li      a0, 3591
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a3
    li      a0, 3584
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a3
    li      a3, 0
    li      a1, 3596
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    snez    a1, a1
    li      a0, 3580
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3584
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a0, 0
    xor     a1,a3,a0
    snez    a1, a1
    li      a2, 3592
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3578
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 3577
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3578
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3577
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_524
    j       .branch_false_524
.branch_true_524:
    li      a2, 0
    li      a0, 3578
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 3579
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 3568
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    li      a0, 3564
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a1,0(a0)
    add     a0,a1,a2
    mv      a1, a0
    li      a2, 3560
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 3556
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3577
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 3579
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_524
.branch_false_524:
.L56_0:
    li      a0, 2
    li      a1, 3579
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 3552
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 3548
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 3577
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3584
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 3544
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3592
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a3, 3600
    add     a3,sp,a3
    ld      a0,0(a3)
    li      a3, 3596
    add     a3,sp,a3
    lw      a1,0(a3)
    j       .while.head_521
.while.exit_521:
.L57_0:
    mv      s10, a3
    mv      s6, s11
    li      a0, 3752
    add     a0,sp,a0
    sw      s11,0(a0)
    li      a0, 3615
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 3892
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 3888
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_472
.while.exit_472:
    mv      a3, s6
    mv      s5, a3
    li      a0, 3751
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3756
    add     a0,sp,a0
    sw      s10,0(a0)
    li      s6, 3760
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s6, 3892
    add     s6,sp,s6
    lw      a0,0(s6)
    j       .branch_false_467
.branch_false_467:
.L58_0:
    mv      s6, s1
    mv      s10, s1
    j       .while.head_537
.while.head_537:
    li      s11, 0
    li      a0, 3892
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,s11
    snez    a0, a0
    bnez    a0, .while.body_537
    j       .while.exit_537
.while.body_537:
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    j       .while.head_544
.while.head_544:
    li      s11, 16
    li      a0, 3531
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,s11
    bnez    a0, .while.body_544
    j       .while.exit_544
.while.body_544:
    li      s11, 2
    li      a0, 3530
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a6,s11
    li      s11, 0
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_547
    j       .branch_false_547
.branch_true_547:
    li      s11, 2
    li      a0, 3524
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 3523
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    seqz    a1, a1
    bnez    a1, .branch_true_550
    j       .branch_false_550
.branch_true_550:
    li      s11, 0
    li      a0, 3516
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 3515
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 3496
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3504
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 3500
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3492
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 3516
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 3515
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_550
.branch_false_550:
.branch_false_547:
    li      s11, 2
    li      a0, 3524
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 3523
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_554
    j       .branch_false_554
.branch_true_554:
    li      s11, 0
    li      a0, 3476
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 3475
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 3456
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3464
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 3460
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3452
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 3476
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 3475
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_554
.branch_false_554:
.L59_0:
.L60_0:
    li      s11, 2
    li      a0, 3476
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a6,s11
    mv      a6, a0
    li      a0, 3488
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,s11
    mv      a7, a0
    li      s11, 1
    li      a0, 3484
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,s11
    mv      a5, a0
    li      a0, 3480
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3475
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 3531
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s11, 3888
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_544
.while.exit_544:
    mv      s11, a3
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .while.head_566
.while.head_566:
    li      a2, 16
    li      a0, 3530
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,a2
    bnez    a0, .while.body_566
    j       .while.exit_566
.while.body_566:
    li      a2, 2
    li      a0, 3451
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a2
    li      a0, 3444
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a2
    li      a2, 0
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    li      a0, 3440
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3444
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    li      a2, 3444
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3438
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 3437
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3438
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3437
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_569
    j       .branch_false_569
.branch_true_569:
    li      a2, 0
    li      a0, 3438
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 3439
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 3424
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 3416
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 3420
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3412
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3437
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 3439
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_569
.branch_false_569:
.L61_0:
    li      a0, 2
    li      a1, 3439
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 3408
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 3404
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 3437
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3400
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3530
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 3888
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_566
.while.exit_566:
    mv      s10, a3
    j       .L62_0
.L62_0:
    li      a2, 1
    li      a0, 3451
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 15
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,a0,a2
    bnez    a1, .branch_true_577
    j       .branch_false_577
.branch_true_577:
    li      a3, 0
    j       .while.exit_586
.branch_false_577:
    li      a3, 0
    li      a5, 0
    li      a0, 0
    li      a2, 1
    li      a1, 3399
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    mul     a2,s10,a1
    mv      a6, a2
    li      a7, 0xffff
    j       .while.head_586
.while.head_586:
    li      a3, 16
    li      a0, 3384
    add     a0,sp,a0
    sd      a0,0(a0)
    slt     a0,a5,a3
    bnez    a0, .while.body_586
    li      a2, 3376
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 3375
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3380
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a2, 3399
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .while.exit_586
.while.body_586:
    li      a3, 2
    li      a0, 3375
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a3
    li      a0, 3368
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a3
    li      a3, 0
    li      a1, 3380
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    snez    a1, a1
    li      a0, 3364
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3368
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a0, 0
    xor     a1,a3,a0
    snez    a1, a1
    li      a2, 3376
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3362
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 3361
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3362
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3361
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_589
    j       .branch_false_589
.branch_true_589:
    li      a2, 0
    li      a0, 3362
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 3363
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 3352
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    li      a0, 3348
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a1,0(a0)
    add     a0,a1,a2
    mv      a1, a0
    li      a2, 3344
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 3340
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3361
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 3363
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_589
.branch_false_589:
.L63_0:
    li      a0, 2
    li      a1, 3363
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 3336
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 3332
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 3361
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3368
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 3328
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3376
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a3, 3384
    add     a3,sp,a3
    ld      a0,0(a3)
    li      a3, 3380
    add     a3,sp,a3
    lw      a1,0(a3)
    j       .while.head_586
.while.exit_586:
.L64_0:
    mv      s10, a3
    mv      s6, s11
    li      a0, 3532
    add     a0,sp,a0
    sw      s11,0(a0)
    li      a0, 3399
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 3892
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 3888
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_537
.while.exit_537:
    mv      a3, s6
    mv      s1, a3
    mv      a6, s4
    li      a7, 1
    j       .L65_0
.L65_0:
    li      s11, 15
    li      a0, 3531
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a7,s11
    xori    a0,a0,1
    bnez    a0, .branch_true_602
    j       .branch_false_602
.branch_true_602:
    li      s11, 0
    li      a0, 3327
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a6,s11
    bnez    a0, .branch_true_605
    j       .branch_false_605
.branch_true_605:
    li      a3, 0xffff
    j       .L66_0
.branch_false_605:
    li      a3, 0
    j       .L66_0
.L66_0:
.branch_false_602:
    li      s11, 0
    li      a0, 3327
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,s11,a7
    bnez    a0, .branch_true_611
    j       .branch_false_611
.branch_true_611:
    li      s11, 0x7fff
    li      a0, 3325
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,s11,a6
    bnez    a0, .branch_true_614
    j       .branch_false_614
.branch_true_614:
    li      s11, 0
    li      a0, 3324
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a7
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    div     a1,a6,a0
    mv      a6, a1
    li      a0, 3308
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 3304
    add     a1,sp,a1
    sw      a1,0(a1)
    sub     a1,a0,a7
    li      a0, 1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
    li      a0, 0
    li      a1, 3300
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 65536
    li      a0, 3288
    add     a0,sp,a0
    sd      a0,0(a0)
    add     a0,a6,a3
    sub     a3,a0,a1
    li      a0, 3280
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a3
    li      a2, 3296
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .L67_0
.branch_false_614:
    li      s11, 0
    li      a0, 3324
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a7
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    div     a1,a6,a0
    mv      a3, a1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3264
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 3260
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 3256
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3312
    add     a1,sp,a1
    ld      s11,0(a1)
    li      a2, 5196
    add     a2,sp,a2
    lw      a0,0(a2)
    li      a1, 3276
    add     a1,sp,a1
    lw      a3,0(a1)
    li      a2, 3284
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .L67_0
.L67_0:
.branch_false_611:
    mv      a3, a6
    j       .L68_0
.L68_0:
.L69_0:
.L70_0:
    mv      s4, a3
    li      a0, 3325
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3815
    add     a0,sp,a0
    sb      s7,0(a0)
    li      s7, 3767
    add     s7,sp,s7
    sb      s9,0(s7)
    li      s8, 3814
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s8, 3536
    add     s8,sp,s8
    sw      s10,0(s8)
    li      s6, 3540
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s6, 3892
    add     s6,sp,s6
    lw      a0,0(s6)
    j       .while.head_450
.while.exit_450:
    mv      a3, s5
    mv      a2, a3
    li      s1, 3824
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s1, 3820
    add     s1,sp,s1
    sw      s4,0(s1)
    li      s4, 3815
    add     s4,sp,s4
    sb      s7,0(s4)
    li      s5, 3816
    add     s5,sp,s5
    sw      s5,0(s5)
    j       .branch_false_445
.branch_false_445:
.L71_0:
    mv      s1, a0
    mv      s4, a0
    li      s5, 0
    j       .while.head_628
.while.head_628:
    li      s6, 0
    xor     s7,s4,s6
    snez    s7, s7
    bnez    s7, .while.body_628
    j       .while.exit_628
.while.body_628:
    li      a3, 0
    li      a5, 0
    mv      a6, s4
    li      a7, 1
    j       .while.head_635
.while.head_635:
    li      s6, 16
    slt     s8,a5,s6
    bnez    s8, .while.body_635
    j       .while.exit_635
.while.body_635:
    li      s6, 2
    rem     s9,a7,s6
    rem     s10,a6,s6
    li      s11, 0
    xor     s6,s10,s11
    snez    s6, s6
    xor     s6,s9,s11
    snez    s6, s6
    li      a0, 3892
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3230
    add     a0,sp,a0
    lb      s11,0(a0)
    and     a0,s6,s11
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    bnez    a0, .branch_true_638
    j       .branch_false_638
.branch_true_638:
    li      a2, 0
    li      a0, 3229
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 3216
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 3208
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 3212
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3204
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3229
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 3888
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .branch_false_638
.branch_false_638:
.L72_0:
    li      a2, 2
    li      a0, 3229
    add     a0,sp,a0
    sb      a0,0(a0)
    div     a0,a6,a2
    mv      a6, a0
    li      a0, 3200
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,a2
    mv      a7, a0
    li      a2, 1
    li      a0, 3196
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,a2
    mv      a5, a0
    li      a2, 3230
    add     a2,sp,a2
    sb      s11,0(a2)
    li      a0, 3192
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3236
    add     a0,sp,a0
    sw      s9,0(a0)
    li      s8, 3242
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s8, 3232
    add     s8,sp,s8
    sw      s10,0(s8)
    li      s6, 3231
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s6, 3884
    add     s6,sp,s6
    lw      a2,0(s6)
    li      s9, 3892
    add     s9,sp,s9
    lw      a0,0(s9)
    j       .while.head_635
.while.exit_635:
    li      s6, 0
    xor     s9,a3,s6
    snez    s9, s9
    bnez    s9, .branch_true_645
    j       .branch_false_645
.branch_true_645:
    mv      s6, s5
    mv      s10, s1
    j       .while.head_650
.while.head_650:
    li      s11, 0
    li      a0, 3892
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,s11
    snez    a0, a0
    bnez    a0, .while.body_650
    j       .while.exit_650
.while.body_650:
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    j       .while.head_657
.while.head_657:
    li      s11, 16
    li      a0, 3175
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,s11
    bnez    a0, .while.body_657
    j       .while.exit_657
.while.body_657:
    li      s11, 2
    li      a0, 3174
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a6,s11
    li      s11, 0
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_660
    j       .branch_false_660
.branch_true_660:
    li      s11, 2
    li      a0, 3168
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 3167
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    seqz    a1, a1
    bnez    a1, .branch_true_663
    j       .branch_false_663
.branch_true_663:
    li      s11, 0
    li      a0, 3160
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 3159
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 3136
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3144
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 3140
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3132
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 3160
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 3159
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_663
.branch_false_663:
.branch_false_660:
    li      s11, 2
    li      a0, 3168
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 3167
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_667
    j       .branch_false_667
.branch_true_667:
    li      s11, 0
    li      a0, 3116
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 3115
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 3096
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3104
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 3100
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3092
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 3116
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 3115
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_667
.branch_false_667:
.L73_0:
.L74_0:
    li      s11, 2
    li      a0, 3116
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a6,s11
    mv      a6, a0
    li      a0, 3128
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,s11
    mv      a7, a0
    li      s11, 1
    li      a0, 3124
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,s11
    mv      a5, a0
    li      a0, 3120
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3115
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 3175
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s11, 3888
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_657
.while.exit_657:
    mv      s11, a3
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .while.head_679
.while.head_679:
    li      a2, 16
    li      a0, 3174
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,a2
    bnez    a0, .while.body_679
    j       .while.exit_679
.while.body_679:
    li      a2, 2
    li      a0, 3091
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a2
    li      a0, 3084
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a2
    li      a2, 0
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    li      a0, 3080
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3084
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    li      a2, 3084
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3078
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 3077
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3078
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3077
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_682
    j       .branch_false_682
.branch_true_682:
    li      a2, 0
    li      a0, 3078
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 3079
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 3064
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 3056
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 3060
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3052
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3077
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 3079
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_682
.branch_false_682:
.L75_0:
    li      a0, 2
    li      a1, 3079
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 3048
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 3044
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 3077
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3040
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3174
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 3888
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_679
.while.exit_679:
    mv      s10, a3
    j       .L76_0
.L76_0:
    li      a2, 1
    li      a0, 3091
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 15
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,a0,a2
    bnez    a1, .branch_true_690
    j       .branch_false_690
.branch_true_690:
    li      a3, 0
    j       .while.exit_699
.branch_false_690:
    li      a3, 0
    li      a5, 0
    li      a0, 0
    li      a2, 1
    li      a1, 3039
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    mul     a2,s10,a1
    mv      a6, a2
    li      a7, 0xffff
    j       .while.head_699
.while.head_699:
    li      a3, 16
    li      a0, 3024
    add     a0,sp,a0
    sd      a0,0(a0)
    slt     a0,a5,a3
    bnez    a0, .while.body_699
    li      a2, 3016
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 3015
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3020
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a2, 3039
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .while.exit_699
.while.body_699:
    li      a3, 2
    li      a0, 3015
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a3
    li      a0, 3008
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a3
    li      a3, 0
    li      a1, 3020
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    snez    a1, a1
    li      a0, 3004
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3008
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a0, 0
    xor     a1,a3,a0
    snez    a1, a1
    li      a2, 3016
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3002
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 3001
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3002
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3001
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_702
    j       .branch_false_702
.branch_true_702:
    li      a2, 0
    li      a0, 3002
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 3003
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 2992
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    li      a0, 2988
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a1,0(a0)
    add     a0,a1,a2
    mv      a1, a0
    li      a2, 2984
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2980
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3001
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 3003
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_702
.branch_false_702:
.L77_0:
    li      a0, 2
    li      a1, 3003
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 2976
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 2972
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 3001
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3008
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 2968
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3016
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a3, 3024
    add     a3,sp,a3
    ld      a0,0(a3)
    li      a3, 3020
    add     a3,sp,a3
    lw      a1,0(a3)
    j       .while.head_699
.while.exit_699:
.L78_0:
    mv      s10, a3
    mv      s6, s11
    li      a0, 3176
    add     a0,sp,a0
    sw      s11,0(a0)
    li      a0, 3039
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 3892
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 3888
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_650
.while.exit_650:
    mv      a3, s6
    mv      s5, a3
    li      a0, 3175
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3180
    add     a0,sp,a0
    sw      s10,0(a0)
    li      s6, 3184
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s6, 3892
    add     s6,sp,s6
    lw      a0,0(s6)
    j       .branch_false_645
.branch_false_645:
.L79_0:
    mv      s6, s1
    mv      s10, s1
    j       .while.head_715
.while.head_715:
    li      s11, 0
    li      a0, 3892
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,s11
    snez    a0, a0
    bnez    a0, .while.body_715
    j       .while.exit_715
.while.body_715:
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    j       .while.head_722
.while.head_722:
    li      s11, 16
    li      a0, 2955
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,s11
    bnez    a0, .while.body_722
    j       .while.exit_722
.while.body_722:
    li      s11, 2
    li      a0, 2954
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a6,s11
    li      s11, 0
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_725
    j       .branch_false_725
.branch_true_725:
    li      s11, 2
    li      a0, 2948
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 2947
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    seqz    a1, a1
    bnez    a1, .branch_true_728
    j       .branch_false_728
.branch_true_728:
    li      s11, 0
    li      a0, 2940
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2939
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 2920
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2928
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 2924
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2916
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 2940
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 2939
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_728
.branch_false_728:
.branch_false_725:
    li      s11, 2
    li      a0, 2948
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,s11
    li      s11, 0
    li      a1, 2947
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s11
    snez    a1, a1
    bnez    a1, .branch_true_732
    j       .branch_false_732
.branch_true_732:
    li      s11, 0
    li      a0, 2900
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2899
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    li      a1, 1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 2880
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2888
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 2884
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2876
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 2900
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 2899
    add     s11,sp,s11
    lb      a1,0(s11)
    j       .branch_false_732
.branch_false_732:
.L80_0:
.L81_0:
    li      s11, 2
    li      a0, 2900
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a6,s11
    mv      a6, a0
    li      a0, 2912
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,s11
    mv      a7, a0
    li      s11, 1
    li      a0, 2908
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,s11
    mv      a5, a0
    li      a0, 2904
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2899
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 2955
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s11, 3888
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_722
.while.exit_722:
    mv      s11, a3
    li      a3, 0
    li      a5, 0
    mv      a6, s6
    mv      a7, s10
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .while.head_744
.while.head_744:
    li      a2, 16
    li      a0, 2954
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a5,a2
    bnez    a0, .while.body_744
    j       .while.exit_744
.while.body_744:
    li      a2, 2
    li      a0, 2875
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a2
    li      a0, 2868
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a2
    li      a2, 0
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    li      a0, 2864
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2868
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    li      a2, 2868
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2862
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 2861
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 2862
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2861
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_747
    j       .branch_false_747
.branch_true_747:
    li      a2, 0
    li      a0, 2862
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 2863
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 2848
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a3,a2
    mv      a3, a1
    li      a2, 2840
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2844
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2836
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2861
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 2863
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_747
.branch_false_747:
.L82_0:
    li      a0, 2
    li      a1, 2863
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 2832
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 2828
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 2861
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 2824
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2954
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 3888
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_744
.while.exit_744:
    mv      s10, a3
    j       .L83_0
.L83_0:
    li      a2, 1
    li      a0, 2875
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 15
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,a0,a2
    bnez    a1, .branch_true_755
    j       .branch_false_755
.branch_true_755:
    li      a3, 0
    j       .while.exit_764
.branch_false_755:
    li      a3, 0
    li      a5, 0
    li      a0, 0
    li      a2, 1
    li      a1, 2823
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    mul     a2,s10,a1
    mv      a6, a2
    li      a7, 0xffff
    j       .while.head_764
.while.head_764:
    li      a3, 16
    li      a0, 2808
    add     a0,sp,a0
    sd      a0,0(a0)
    slt     a0,a5,a3
    bnez    a0, .while.body_764
    li      a2, 2800
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2799
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2804
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a2, 2823
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .while.exit_764
.while.body_764:
    li      a3, 2
    li      a0, 2799
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,a7,a3
    li      a0, 2792
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a6,a3
    li      a3, 0
    li      a1, 2804
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a3
    snez    a1, a1
    li      a0, 2788
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2792
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a0, 0
    xor     a1,a3,a0
    snez    a1, a1
    li      a2, 2800
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2786
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 2785
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 2786
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2785
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_767
    j       .branch_false_767
.branch_true_767:
    li      a2, 0
    li      a0, 2786
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 2787
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a5
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 2776
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    li      a0, 2772
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    lw      a1,0(a0)
    add     a0,a1,a2
    mv      a1, a0
    li      a2, 2768
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2764
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2785
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 2787
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_767
.branch_false_767:
.L84_0:
    li      a0, 2
    li      a1, 2787
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a6,a0
    mv      a6, a1
    li      a1, 2760
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
    mv      a7, a1
    li      a0, 1
    li      a1, 2756
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
    mv      a5, a1
    li      a2, 2785
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 2792
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 2752
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2800
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a3, 2808
    add     a3,sp,a3
    ld      a0,0(a3)
    li      a3, 2804
    add     a3,sp,a3
    lw      a1,0(a3)
    j       .while.head_764
.while.exit_764:
.L85_0:
    mv      s10, a3
    mv      s6, s11
    li      a0, 2956
    add     a0,sp,a0
    sw      s11,0(a0)
    li      a0, 2823
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s11, 3892
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s11, 3888
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_715
.while.exit_715:
    mv      a3, s6
    mv      s1, a3
    mv      a6, s4
    li      a7, 1
    j       .L86_0
.L86_0:
    li      s11, 15
    li      a0, 2955
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a7,s11
    xori    a0,a0,1
    bnez    a0, .branch_true_780
    j       .branch_false_780
.branch_true_780:
    li      s11, 0
    li      a0, 2751
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a6,s11
    bnez    a0, .branch_true_783
    j       .branch_false_783
.branch_true_783:
    li      a3, 0xffff
    j       .L87_0
.branch_false_783:
    li      a3, 0
    j       .L87_0
.L87_0:
.branch_false_780:
    li      s11, 0
    li      a0, 2751
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,s11,a7
    bnez    a0, .branch_true_789
    j       .branch_false_789
.branch_true_789:
    li      s11, 0x7fff
    li      a0, 2749
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,s11,a6
    bnez    a0, .branch_true_792
    j       .branch_false_792
.branch_true_792:
    li      s11, 0
    li      a0, 2748
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a7
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    div     a1,a6,a0
    mv      a6, a1
    li      a0, 2732
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 2728
    add     a1,sp,a1
    sw      a1,0(a1)
    sub     a1,a0,a7
    li      a0, 1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
    li      a0, 0
    li      a1, 2724
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 65536
    li      a0, 2712
    add     a0,sp,a0
    sd      a0,0(a0)
    add     a0,a6,a3
    sub     a3,a0,a1
    li      a0, 2704
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a3
    li      a2, 2720
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .L88_0
.branch_false_792:
    li      s11, 0
    li      a0, 2748
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a7
    add     s11,s11,a1
    slli s11,s11,2
    la      a0, SHIFT_TABLE
    add     s11,s11,a0
    lw      a0,0(s11)
    div     a1,a6,a0
    mv      a3, a1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2688
    add     a2,sp,a2
    sd      s11,0(a2)
    li      a0, 2684
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 2680
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2736
    add     a1,sp,a1
    ld      s11,0(a1)
    li      a2, 5196
    add     a2,sp,a2
    lw      a0,0(a2)
    li      a1, 2700
    add     a1,sp,a1
    lw      a3,0(a1)
    li      a2, 2708
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .L88_0
.L88_0:
.branch_false_789:
    mv      a3, a6
    j       .L89_0
.L89_0:
.L90_0:
.L91_0:
    mv      s4, a3
    li      a0, 2749
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3243
    add     a0,sp,a0
    sb      s7,0(a0)
    li      s7, 3191
    add     s7,sp,s7
    sb      s9,0(s7)
    li      s8, 3242
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s8, 2960
    add     s8,sp,s8
    sw      s10,0(s8)
    li      s6, 2964
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s6, 3892
    add     s6,sp,s6
    lw      a0,0(s6)
    j       .while.head_628
.while.exit_628:
    mv      a3, s5
    mv      a0, a3
    mv      a6, a1
    li      a7, 1
    j       .L92_0
.L92_0:
    li      s6, 15
    slt     s8,a7,s6
    xori    s8,s8,1
    bnez    s8, .branch_true_806
    j       .branch_false_806
.branch_true_806:
    li      s6, 0
    slt     s9,a6,s6
    bnez    s9, .branch_true_809
    j       .branch_false_809
.branch_true_809:
    li      a3, 0xffff
    j       .L93_0
.branch_false_809:
    li      a3, 0
    j       .L93_0
.L93_0:
.branch_false_806:
    li      s6, 0
    slt     s9,s6,a7
    bnez    s9, .branch_true_815
    j       .branch_false_815
.branch_true_815:
    li      s6, 0x7fff
    slt     s10,s6,a6
    bnez    s10, .branch_true_818
    j       .branch_false_818
.branch_true_818:
    li      s6, 0
    li      s11, 1
    li      a0, 3892
    add     a0,sp,a0
    sw      a0,0(a0)
    mul     a0,s11,a7
    add     s6,s6,a0
    slli s6,s6,2
    la      a0, SHIFT_TABLE
    add     s6,s6,a0
    lw      a0,0(s6)
    div     s11,a6,a0
    mv      a6, s11
    li      a0, 2660
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    sub     a1,a0,a7
    li      a0, 1
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
    li      a0, 0
    li      a1, 2652
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 65536
    li      a0, 2640
    add     a0,sp,a0
    sd      a0,0(a0)
    add     a0,a6,a3
    sub     a3,a0,a1
    li      a0, 2632
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a3
    li      a2, 2648
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .L94_0
.branch_false_818:
    li      s6, 0
    li      s11, 1
    li      a0, 3892
    add     a0,sp,a0
    sw      a0,0(a0)
    mul     a0,s11,a7
    add     s6,s6,a0
    slli s6,s6,2
    la      a0, SHIFT_TABLE
    add     s6,s6,a0
    lw      a0,0(s6)
    div     s11,a6,a0
    mv      a3, s11
    li      a2, 3884
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2608
    add     a2,sp,a2
    sw      s11,0(a2)
    li      a0, 2612
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5196
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 3888
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2616
    add     a1,sp,a1
    sd      s6,0(a1)
    li      a2, 2656
    add     a2,sp,a2
    lw      s11,0(a2)
    li      a3, 5196
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s6, 2628
    add     s6,sp,s6
    lw      a3,0(s6)
    li      a2, 2636
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a2, 2664
    add     a2,sp,a2
    ld      s6,0(a2)
    j       .L94_0
.L94_0:
.branch_false_815:
    mv      a3, a6
    j       .L95_0
.L95_0:
.L96_0:
.L97_0:
    mv      a1, a3
    li      s1, 3252
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a3, 5196
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 3248
    add     a3,sp,a3
    sw      s4,0(a3)
    li      s1, 3243
    add     s1,sp,s1
    sb      s7,0(s1)
    li      s4, 2677
    add     s4,sp,s4
    sb      s9,0(s4)
    li      s5, 3244
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s3, 3831
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s3, 2679
    add     s3,sp,s3
    sb      s8,0(s3)
    li      a6, 5188
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 5184
    add     a6,sp,a6
    sw      a7,0(a6)
    li      a7, 3882
    add     a7,sp,a7
    sb      s2,0(a7)
    li      a5, 5192
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a4, 3883
    add     a4,sp,a4
    sb      a4,0(a4)
    j       .while.head_428
.while.exit_428:
    mv      a3, a2
    li      a0, 3892
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3888
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 3884
    add     a1,sp,a1
    sw      a2,0(a1)
    li      a2, 5196
    add     a2,sp,a2
    sw      a3,0(a2)
    li      a3, 3883
    add     a3,sp,a3
    sb      a4,0(a3)
    add     a2,sp,a2
    lw      a0,0(a2)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 2
    j       .while.head_832
.while.head_832:
    li      a1, 16
    slt     a2,a0,a1
    bnez    a2, .while.body_832
    j       .while.exit_832
.while.body_832:
    li      a1, 2
    mv      a3, a0
    li      a4, 1
    j       .while.head_837
.while.head_837:
    li      a5, 0
    slt     a6,a5,a3
    bnez    a6, .while.body_837
    j       .while.exit_837
.while.body_837:
    li      a5, 0
    li      a7, 0
    mv      s1, a3
    li      s2, 1
    j       .while.head_844
.while.head_844:
    li      s3, 16
    slt     s4,a7,s3
    bnez    s4, .while.body_844
    j       .while.exit_844
.while.body_844:
    li      s3, 2
    rem     s5,s2,s3
    rem     s6,s1,s3
    li      s7, 0
    xor     s8,s6,s7
    snez    s8, s8
    xor     s8,s5,s7
    snez    s8, s8
    li      s10, 2578
    add     s10,sp,s10
    lb      s9,0(s10)
    and     s11,s8,s9
    bnez    s11, .branch_true_847
    j       .branch_false_847
.branch_true_847:
    li      s3, 0
    li      s7, 1
    mul     s10,s7,a7
    add     s3,s3,s10
    slli s3,s3,2
    la      s7, SHIFT_TABLE
    add     s3,s3,s7
    lw      s7,0(s3)
    li      s10, 1
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    mul     a0,s10,s7
    add     s10,a5,a0
    mv      a5, s10
    li      a0, 2560
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2564
    add     a0,sp,a0
    sw      s7,0(a0)
    li      s3, 2568
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s3, 2556
    add     s3,sp,s3
    sw      s10,0(s3)
    li      s7, 5180
    add     s7,sp,s7
    lw      a0,0(s7)
    j       .branch_false_847
.branch_false_847:
.L98_0:
    li      s3, 2
    div     s7,s1,s3
    mv      s1, s7
    div     s10,s2,s3
    mv      s2, s10
    li      s3, 1
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a7,s3
    mv      a7, a0
    li      s11, 2577
    add     s11,sp,s11
    sb      s11,0(s11)
    li      a0, 2544
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2590
    add     a0,sp,a0
    sb      s4,0(a0)
    li      s4, 2552
    add     s4,sp,s4
    sw      s7,0(s4)
    li      s7, 2578
    add     s7,sp,s7
    sb      s9,0(s7)
    li      s5, 2584
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s3, 2579
    add     s3,sp,s3
    sb      s8,0(s3)
    li      s5, 2548
    add     s5,sp,s5
    sw      s10,0(s5)
    li      s6, 2580
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s6, 5180
    add     s6,sp,s6
    lw      a0,0(s6)
    j       .while.head_844
.while.exit_844:
    li      s3, 0
    xor     s5,a5,s3
    snez    s5, s5
    bnez    s5, .branch_true_854
    j       .branch_false_854
.branch_true_854:
    mv      s3, a4
    mv      s6, a1
    li      s7, 0
    j       .while.head_859
.while.head_859:
    li      s8, 0
    xor     s9,s6,s8
    snez    s9, s9
    bnez    s9, .while.body_859
    j       .while.exit_859
.while.body_859:
    li      a5, 0
    li      a7, 0
    mv      s1, s6
    li      s2, 1
    j       .while.head_866
.while.head_866:
    li      s8, 16
    slt     s10,a7,s8
    bnez    s10, .while.body_866
    j       .while.exit_866
.while.body_866:
    li      s8, 2
    rem     s11,s2,s8
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s1,s8
    li      s8, 0
    li      a1, 2600
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,s8
    snez    a1, a1
    xor     a1,s11,s8
    snez    a1, a1
    li      a0, 2516
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2514
    add     a0,sp,a0
    lb      s8,0(a0)
    and     a0,a1,s8
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    bnez    a0, .branch_true_869
    j       .branch_false_869
.branch_true_869:
    li      a2, 0
    li      a0, 2513
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 2515
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 2504
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    li      a2, 2496
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2500
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2492
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2513
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 2515
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .branch_false_869
.branch_false_869:
.L99_0:
    li      a2, 2
    li      a0, 2513
    add     a0,sp,a0
    sb      a0,0(a0)
    div     a0,s1,a2
    mv      s1, a0
    li      a0, 2488
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,s2,a2
    mv      s2, a0
    li      a2, 1
    li      a0, 2484
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a7,a2
    mv      a7, a0
    li      a2, 2520
    add     a2,sp,a2
    sw      s11,0(a2)
    li      a0, 2480
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2515
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 2514
    add     a1,sp,a1
    sb      s8,0(a1)
    li      s8, 2526
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s10, 2607
    add     s10,sp,s10
    lb      a2,0(s10)
    li      s11, 5180
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s8, 2600
    add     s8,sp,s8
    lw      a1,0(s8)
    j       .while.head_866
.while.exit_866:
    li      s8, 0
    xor     s11,a5,s8
    snez    s11, s11
    bnez    s11, .branch_true_876
    j       .branch_false_876
.branch_true_876:
    mv      s8, s7
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s3
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_881
.while.head_881:
    li      a2, 0
    li      a1, 2600
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .while.body_881
    j       .while.exit_881
.while.body_881:
    li      a5, 0
    li      a7, 0
    mv      s1, s8
    mv      s2, a0
    j       .while.head_888
.while.head_888:
    li      a2, 16
    li      a0, 2468
    add     a0,sp,a0
    sw      a0,0(a0)
    slt     a0,a7,a2
    bnez    a0, .while.body_888
    j       .while.exit_888
.while.body_888:
    li      a2, 2
    li      a0, 2462
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,s1,a2
    li      a2, 0
    li      a1, 2463
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_891
    j       .branch_false_891
.branch_true_891:
    li      a2, 2
    li      a0, 2456
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s2,a2
    li      a2, 0
    li      a1, 2455
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_894
    j       .branch_false_894
.branch_true_894:
    li      a2, 0
    li      a0, 2448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2447
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 2432
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    li      a2, 2424
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2428
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2420
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2448
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 2447
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .branch_false_894
.branch_false_894:
.branch_false_891:
    li      a2, 2
    li      a0, 2456
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s2,a2
    li      a2, 0
    li      a1, 2455
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_898
    j       .branch_false_898
.branch_true_898:
    li      a2, 0
    li      a0, 2404
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2403
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 2392
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    li      a2, 2384
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2388
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2380
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2404
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 2403
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .branch_false_898
.branch_false_898:
.L100_0:
.L101_0:
    li      a2, 2
    li      a0, 2404
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,s1,a2
    mv      s1, a0
    li      a0, 2416
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,s2,a2
    mv      s2, a0
    li      a2, 1
    li      a0, 2412
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a7,a2
    mv      a7, a0
    li      a0, 2408
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2403
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 2468
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 2463
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .while.head_888
.while.exit_888:
    mv      a2, a5
    li      a5, 0
    li      a7, 0
    mv      s1, s8
    li      a0, 2462
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a1, 2463
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 2468
    add     a1,sp,a1
    lw      a0,0(a1)
    mv      s2, a0
    j       .while.head_910
.while.head_910:
    li      a1, 16
    li      a0, 2468
    add     a0,sp,a0
    sw      a0,0(a0)
    slt     a0,a7,a1
    bnez    a0, .while.body_910
    j       .while.exit_910
.while.body_910:
    li      a1, 2
    li      a0, 2379
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,s2,a1
    li      a0, 2372
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s1,a1
    li      a1, 0
    li      a2, 2464
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
    li      a0, 2368
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2372
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 0
    xor     a2,a1,a0
    snez    a2, a2
    li      a1, 2372
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2366
    add     a1,sp,a1
    lb      a0,0(a1)
    and     a1,a2,a0
    li      a2, 2367
    add     a2,sp,a2
    sb      a2,0(a2)
    bnez    a1, .branch_true_913
    j       .branch_false_913
.branch_true_913:
    li      a2, 0
    li      a0, 2366
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 2365
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 2352
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    li      a2, 2344
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2348
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2340
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2366
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 2365
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .branch_false_913
.branch_false_913:
.L102_0:
    li      a2, 2
    li      a0, 2366
    add     a0,sp,a0
    sb      a0,0(a0)
    div     a0,s1,a2
    mv      s1, a0
    li      a0, 2336
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,s2,a2
    mv      s2, a0
    li      a2, 1
    li      a0, 2332
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a7,a2
    mv      a7, a0
    li      a0, 2328
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2365
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 2464
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a1, 2468
    add     a1,sp,a1
    lw      a0,0(a1)
    j       .while.head_910
.while.exit_910:
    mv      a1, a5
    li      a2, 2464
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .L103_0
.L103_0:
    li      a2, 1
    li      a0, 2379
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 15
    li      a1, 2468
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,a0,a2
    bnez    a1, .branch_true_921
    j       .branch_false_921
.branch_true_921:
    li      a5, 0
    j       .while.exit_930
.branch_false_921:
    li      a5, 0
    li      a7, 0
    li      a0, 0
    li      a2, 1
    li      a1, 2327
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 1
    li      a3, 2596
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 2468
    add     a3,sp,a3
    lw      a2,0(a3)
    mul     a3,a2,a1
    mv      s1, a3
    li      s2, 0xffff
    li      a2, 2468
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .while.head_930
.while.head_930:
    li      a2, 16
    li      a0, 2312
    add     a0,sp,a0
    sd      a0,0(a0)
    slt     a0,a7,a2
    bnez    a0, .while.body_930
    li      a0, 2303
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2304
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 2308
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 2596
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a2, 2327
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .while.exit_930
.while.body_930:
    li      a2, 2
    li      a0, 2303
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,s2,a2
    li      a0, 2296
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s1,a2
    li      a2, 0
    li      a1, 2308
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    li      a0, 2292
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2296
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    li      a2, 2296
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2290
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 2289
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 2290
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2289
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_933
    j       .branch_false_933
.branch_true_933:
    li      a2, 0
    li      a0, 2290
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 2291
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 2280
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    li      a2, 2272
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2276
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2268
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2289
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 2291
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_933
.branch_false_933:
.L104_0:
    li      a0, 2
    li      a1, 2291
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s1,a0
    mv      s1, a1
    li      a1, 2264
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s2,a0
    mv      s2, a1
    li      a0, 1
    li      a1, 2260
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a7,a0
    mv      a7, a1
    li      a2, 2289
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 2256
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2312
    add     a1,sp,a1
    ld      a0,0(a1)
    li      a2, 2308
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_930
.while.exit_930:
.L105_0:
    mv      a0, a5
    li      a0, 2468
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2464
    add     a0,sp,a0
    lw      a2,0(a0)
    mv      s8, a2
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a0, 2327
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 2468
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 2600
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_881
.while.exit_881:
    mv      a5, s8
    mv      s7, a5
    li      a0, 2468
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2463
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 2472
    add     a1,sp,a1
    sw      s8,0(a1)
    li      s8, 2607
    add     s8,sp,s8
    lb      a2,0(s8)
    li      a1, 5180
    add     a1,sp,a1
    lw      a0,0(a1)
    li      s8, 2600
    add     s8,sp,s8
    lw      a1,0(s8)
    j       .branch_false_876
.branch_false_876:
.L106_0:
    mv      s8, s3
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s3
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_946
.while.head_946:
    li      a2, 0
    li      a1, 2600
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .while.body_946
    j       .while.exit_946
.while.body_946:
    li      a5, 0
    li      a7, 0
    mv      s1, s8
    mv      s2, a0
    j       .while.head_953
.while.head_953:
    li      a2, 16
    li      a0, 2248
    add     a0,sp,a0
    sw      a0,0(a0)
    slt     a0,a7,a2
    bnez    a0, .while.body_953
    j       .while.exit_953
.while.body_953:
    li      a2, 2
    li      a0, 2242
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,s1,a2
    li      a2, 0
    li      a1, 2243
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_956
    j       .branch_false_956
.branch_true_956:
    li      a2, 2
    li      a0, 2236
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s2,a2
    li      a2, 0
    li      a1, 2235
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_959
    j       .branch_false_959
.branch_true_959:
    li      a2, 0
    li      a0, 2228
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2227
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 2216
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    li      a2, 2208
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2212
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2204
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2228
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 2227
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .branch_false_959
.branch_false_959:
.branch_false_956:
    li      a2, 2
    li      a0, 2236
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s2,a2
    li      a2, 0
    li      a1, 2235
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_963
    j       .branch_false_963
.branch_true_963:
    li      a2, 0
    li      a0, 2188
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2187
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 2176
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    li      a2, 2168
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2172
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2164
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2188
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 2187
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .branch_false_963
.branch_false_963:
.L107_0:
.L108_0:
    li      a2, 2
    li      a0, 2188
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,s1,a2
    mv      s1, a0
    li      a0, 2200
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,s2,a2
    mv      s2, a0
    li      a2, 1
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a7,a2
    mv      a7, a0
    li      a0, 2192
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2187
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 2248
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 2243
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .while.head_953
.while.exit_953:
    mv      a2, a5
    li      a5, 0
    li      a7, 0
    mv      s1, s8
    li      a0, 2242
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a1, 2243
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 2248
    add     a1,sp,a1
    lw      a0,0(a1)
    mv      s2, a0
    j       .while.head_975
.while.head_975:
    li      a1, 16
    li      a0, 2248
    add     a0,sp,a0
    sw      a0,0(a0)
    slt     a0,a7,a1
    bnez    a0, .while.body_975
    j       .while.exit_975
.while.body_975:
    li      a1, 2
    li      a0, 2163
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,s2,a1
    li      a0, 2156
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s1,a1
    li      a1, 0
    li      a2, 2244
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
    li      a0, 2152
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2156
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 0
    xor     a2,a1,a0
    snez    a2, a2
    li      a1, 2156
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2150
    add     a1,sp,a1
    lb      a0,0(a1)
    and     a1,a2,a0
    li      a2, 2151
    add     a2,sp,a2
    sb      a2,0(a2)
    bnez    a1, .branch_true_978
    j       .branch_false_978
.branch_true_978:
    li      a2, 0
    li      a0, 2150
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 2149
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 2136
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    li      a2, 2128
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2132
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2124
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2150
    add     a1,sp,a1
    lb      a0,0(a1)
    li      a2, 2149
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .branch_false_978
.branch_false_978:
.L109_0:
    li      a2, 2
    li      a0, 2150
    add     a0,sp,a0
    sb      a0,0(a0)
    div     a0,s1,a2
    mv      s1, a0
    li      a0, 2120
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,s2,a2
    mv      s2, a0
    li      a2, 1
    li      a0, 2116
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a7,a2
    mv      a7, a0
    li      a0, 2112
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2149
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 2244
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a1, 2248
    add     a1,sp,a1
    lw      a0,0(a1)
    j       .while.head_975
.while.exit_975:
    mv      a1, a5
    li      a2, 2244
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .L110_0
.L110_0:
    li      a2, 1
    li      a0, 2163
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 15
    li      a1, 2248
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,a0,a2
    bnez    a1, .branch_true_986
    j       .branch_false_986
.branch_true_986:
    li      a5, 0
    j       .while.exit_995
.branch_false_986:
    li      a5, 0
    li      a7, 0
    li      a0, 0
    li      a2, 1
    li      a1, 2111
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 1
    li      a3, 2596
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 2248
    add     a3,sp,a3
    lw      a2,0(a3)
    mul     a3,a2,a1
    mv      s1, a3
    li      s2, 0xffff
    li      a2, 2248
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .while.head_995
.while.head_995:
    li      a2, 16
    li      a0, 2096
    add     a0,sp,a0
    sd      a0,0(a0)
    slt     a0,a7,a2
    bnez    a0, .while.body_995
    li      a0, 2087
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2088
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 2092
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 2596
    add     a0,sp,a0
    lw      a3,0(a0)
    li      a2, 2111
    add     a2,sp,a2
    lb      a1,0(a2)
    j       .while.exit_995
.while.body_995:
    li      a2, 2
    li      a0, 2087
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,s2,a2
    li      a0, 2080
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s1,a2
    li      a2, 0
    li      a1, 2092
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    li      a0, 2076
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2080
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    li      a2, 2080
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2074
    add     a2,sp,a2
    lb      a0,0(a2)
    and     a2,a1,a0
    li      a2, 2073
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 2074
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2073
    add     a0,sp,a0
    lb      a2,0(a0)
    bnez    a2, .branch_true_998
    j       .branch_false_998
.branch_true_998:
    li      a2, 0
    li      a0, 2074
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 2075
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    li      a2, 2064
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    li      a2, 2056
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2060
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2052
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2073
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a0, 2075
    add     a0,sp,a0
    lb      a1,0(a0)
    j       .branch_false_998
.branch_false_998:
.L111_0:
    li      a0, 2
    li      a1, 2075
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s1,a0
    mv      s1, a1
    li      a1, 2048
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s2,a0
    mv      s2, a1
    li      a0, 1
    li      a1, 2044
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a7,a0
    mv      a7, a1
    li      a2, 2073
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 2040
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2096
    add     a1,sp,a1
    ld      a0,0(a1)
    li      a2, 2092
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_995
.while.exit_995:
.L112_0:
    mv      a0, a5
    li      a0, 2248
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2244
    add     a0,sp,a0
    lw      a2,0(a0)
    mv      s8, a2
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a0, 2111
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 2248
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 2600
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_946
.while.exit_946:
    mv      a5, s8
    mv      s3, a5
    mv      s1, s6
    li      s2, 1
    j       .L113_0
.L113_0:
    li      a2, 15
    li      a0, 2248
    add     a0,sp,a0
    sw      a0,0(a0)
    slt     a0,s2,a2
    xori    a0,a0,1
    bnez    a0, .branch_true_1011
    j       .branch_false_1011
.branch_true_1011:
    li      a2, 0
    li      a0, 2039
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,s1,a2
    bnez    a0, .branch_true_1014
    j       .branch_false_1014
.branch_true_1014:
    li      a5, 0xffff
    j       .L114_0
.branch_false_1014:
    li      a5, 0
    j       .L114_0
.L114_0:
.branch_false_1011:
    li      a2, 0
    li      a0, 2039
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a2,s2
    bnez    a0, .branch_true_1020
    j       .branch_false_1020
.branch_true_1020:
    li      a2, 0x7fff
    li      a0, 2037
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,a2,s1
    bnez    a0, .branch_true_1023
    j       .branch_false_1023
.branch_true_1023:
    li      a2, 0
    li      a0, 2036
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 2243
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,s2
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    div     a1,s1,a0
    mv      s1, a1
    li      a0, 2020
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 2016
    add     a1,sp,a1
    sw      a1,0(a1)
    sub     a1,a0,s2
    li      a0, 1
    li      a2, 2024
    add     a2,sp,a2
    sd      a2,0(a2)
    add     a2,a1,a0
    li      a0, 0
    li      a1, 2012
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 2596
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 65536
    sd      a0,2000(sp)
    add     a0,s1,a3
    sub     a3,a0,a1
    mv      a5, a3
    li      a2, 2008
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .L115_0
.branch_false_1023:
    li      a2, 0
    li      a0, 2036
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1
    li      a1, 2243
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,s2
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    div     a1,s1,a0
    mv      a5, a1
    sd      a2,1976(sp)
    sw      a0,1972(sp)
    li      a0, 2596
    add     a0,sp,a0
    sw      a3,0(a0)
    sw      a1,1968(sp)
    lw      a0,1992(sp)
    lw      a3,1988(sp)
    lw      a1,1996(sp)
    j       .L115_0
.L115_0:
.branch_false_1020:
    mv      a5, s1
    j       .L116_0
.L116_0:
.L117_0:
.L118_0:
    mv      s6, a5
    li      a2, 2479
    add     a2,sp,a2
    sb      s11,0(a2)
    li      a0, 2037
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2243
    add     a0,sp,a0
    sb      a1,0(a0)
    li      a1, 2527
    add     a1,sp,a1
    sb      s9,0(a1)
    li      s8, 2252
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s8, 2526
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 2607
    add     s9,sp,s9
    lb      a2,0(s9)
    li      s10, 5180
    add     s10,sp,s10
    lw      a0,0(s10)
    li      s11, 2600
    add     s11,sp,s11
    lw      a1,0(s11)
    j       .while.head_859
.while.exit_859:
    mv      a5, s7
    mv      a4, a5
    li      s7, 2528
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s7, 2527
    add     s7,sp,s7
    sb      s9,0(s7)
    li      s3, 2536
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s3, 2532
    add     s3,sp,s3
    sw      s6,0(s3)
    j       .branch_false_854
.branch_false_854:
.L119_0:
    mv      s3, a1
    mv      s6, a1
    li      s7, 0
    j       .while.head_1037
.while.head_1037:
    li      s8, 0
    xor     s9,s6,s8
    snez    s9, s9
    bnez    s9, .while.body_1037
    j       .while.exit_1037
.while.body_1037:
    li      a5, 0
    li      a7, 0
    mv      s1, s6
    li      s2, 1
    j       .while.head_1044
.while.head_1044:
    li      s8, 16
    slt     s10,a7,s8
    bnez    s10, .while.body_1044
    j       .while.exit_1044
.while.body_1044:
    li      s8, 2
    rem     s11,s2,s8
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s1,s8
    li      s8, 0
    li      a1, 2600
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,s8
    snez    a1, a1
    xor     a1,s11,s8
    snez    a1, a1
    lb      s8,1942(sp)
    sw      a0,1944(sp)
    and     a0,a1,s8
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    bnez    a0, .branch_true_1047
    j       .branch_false_1047
.branch_true_1047:
    li      a2, 0
    sb      a0,1941(sp)
    li      a0, 1
    sb      a1,1943(sp)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1928(sp)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    sw      a2,1920(sp)
    sw      a0,1924(sp)
    sw      a1,1916(sp)
    lb      a0,1941(sp)
    lb      a1,1943(sp)
    j       .branch_false_1047
.branch_false_1047:
.L120_0:
    li      a2, 2
    sb      a0,1941(sp)
    div     a0,s1,a2
    mv      s1, a0
    sw      a0,1912(sp)
    div     a0,s2,a2
    mv      s2, a0
    li      a2, 1
    sw      a0,1908(sp)
    add     a0,a7,a2
    mv      a7, a0
    sw      s11,1948(sp)
    sw      a0,1904(sp)
    sb      a1,1943(sp)
    sb      s8,1942(sp)
    sb      s10,1954(sp)
    li      a0, 2607
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5180
    add     a1,sp,a1
    lw      a0,0(a1)
    li      s8, 2600
    add     s8,sp,s8
    lw      a1,0(s8)
    j       .while.head_1044
.while.exit_1044:
    li      s8, 0
    xor     s11,a5,s8
    snez    s11, s11
    bnez    s11, .branch_true_1054
    j       .branch_false_1054
.branch_true_1054:
    mv      s8, s7
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s3
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_1059
.while.head_1059:
    li      a2, 0
    li      a1, 2600
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .while.body_1059
    j       .while.exit_1059
.while.body_1059:
    li      a5, 0
    li      a7, 0
    mv      s1, s8
    mv      s2, a0
    j       .while.head_1066
.while.head_1066:
    li      a2, 16
    sw      a0,1892(sp)
    slt     a0,a7,a2
    bnez    a0, .while.body_1066
    j       .while.exit_1066
.while.body_1066:
    li      a2, 2
    sb      a0,1886(sp)
    rem     a0,s1,a2
    li      a2, 0
    sb      a1,1887(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_1069
    j       .branch_false_1069
.branch_true_1069:
    li      a2, 2
    sw      a0,1880(sp)
    rem     a0,s2,a2
    li      a2, 0
    sb      a1,1879(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_1072
    j       .branch_false_1072
.branch_true_1072:
    li      a2, 0
    sw      a0,1872(sp)
    li      a0, 1
    sb      a1,1871(sp)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1856(sp)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    sw      a2,1848(sp)
    sw      a0,1852(sp)
    sw      a1,1844(sp)
    lw      a0,1872(sp)
    lb      a1,1871(sp)
    j       .branch_false_1072
.branch_false_1072:
.branch_false_1069:
    li      a2, 2
    sw      a0,1880(sp)
    rem     a0,s2,a2
    li      a2, 0
    sb      a1,1879(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_1076
    j       .branch_false_1076
.branch_true_1076:
    li      a2, 0
    sw      a0,1828(sp)
    li      a0, 1
    sb      a1,1827(sp)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1816(sp)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    sw      a2,1808(sp)
    sw      a0,1812(sp)
    sw      a1,1804(sp)
    lw      a0,1828(sp)
    lb      a1,1827(sp)
    j       .branch_false_1076
.branch_false_1076:
.L121_0:
.L122_0:
    li      a2, 2
    sw      a0,1828(sp)
    div     a0,s1,a2
    mv      s1, a0
    sw      a0,1840(sp)
    div     a0,s2,a2
    mv      s2, a0
    li      a2, 1
    sw      a0,1836(sp)
    add     a0,a7,a2
    mv      a7, a0
    sw      a0,1832(sp)
    sb      a1,1827(sp)
    lw      a0,1892(sp)
    lb      a1,1887(sp)
    j       .while.head_1066
.while.exit_1066:
    mv      a2, a5
    li      a5, 0
    li      a7, 0
    mv      s1, s8
    sb      a0,1886(sp)
    lw      a0,1892(sp)
    mv      s2, a0
    sw      a2,1888(sp)
    j       .while.head_1088
.while.head_1088:
    li      a2, 16
    sw      a0,1892(sp)
    slt     a0,a7,a2
    bnez    a0, .while.body_1088
    j       .while.exit_1088
.while.body_1088:
    li      a2, 2
    sb      a0,1803(sp)
    rem     a0,s2,a2
    sw      a0,1796(sp)
    rem     a0,s1,a2
    li      a2, 0
    sb      a1,1887(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,1796(sp)
    sw      a0,1792(sp)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    lb      a0,1790(sp)
    sw      a2,1796(sp)
    and     a2,a1,a0
    sb      a2,1789(sp)
    lb      a2,1789(sp)
    bnez    a2, .branch_true_1091
    sb      a2,1789(sp)
    j       .branch_false_1091
.branch_true_1091:
    li      a2, 0
    sb      a0,1790(sp)
    li      a0, 1
    sb      a1,1791(sp)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1776(sp)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    sw      a2,1768(sp)
    sw      a0,1772(sp)
    sw      a1,1764(sp)
    lb      a0,1790(sp)
    lb      a1,1791(sp)
    j       .branch_false_1091
.branch_false_1091:
.L123_0:
    li      a2, 2
    sb      a0,1790(sp)
    div     a0,s1,a2
    mv      s1, a0
    sw      a0,1760(sp)
    div     a0,s2,a2
    mv      s2, a0
    li      a2, 1
    sw      a0,1756(sp)
    add     a0,a7,a2
    mv      a7, a0
    sw      a0,1752(sp)
    sb      a1,1791(sp)
    lw      a0,1892(sp)
    lb      a1,1887(sp)
    j       .while.head_1088
.while.exit_1088:
    mv      a2, a5
    sw      a2,1892(sp)
    j       .L124_0
.L124_0:
    li      a2, 1
    sb      a0,1803(sp)
    li      a0, 15
    sb      a1,1887(sp)
    slt     a1,a0,a2
    bnez    a1, .branch_true_1099
    j       .branch_false_1099
.branch_true_1099:
    li      a5, 0
    j       .while.exit_1108
.branch_false_1099:
    li      a5, 0
    li      a7, 0
    li      a0, 0
    li      a2, 1
    sb      a1,1751(sp)
    li      a1, 1
    li      a3, 2596
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    lw      a2,1892(sp)
    mul     a3,a2,a1
    mv      s1, a3
    li      s2, 0xffff
    sw      a2,1892(sp)
    j       .while.head_1108
.while.head_1108:
    li      a2, 16
    sd      a0,1736(sp)
    slt     a0,a7,a2
    bnez    a0, .while.body_1108
    sb      a0,1727(sp)
    sw      a3,1728(sp)
    sw      a1,1732(sp)
    li      a0, 2596
    add     a0,sp,a0
    lw      a3,0(a0)
    lb      a1,1751(sp)
    j       .while.exit_1108
.while.body_1108:
    li      a2, 2
    sb      a0,1727(sp)
    rem     a0,s2,a2
    sw      a0,1720(sp)
    rem     a0,s1,a2
    li      a2, 0
    sw      a1,1732(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,1720(sp)
    sw      a0,1716(sp)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    lb      a0,1714(sp)
    sw      a2,1720(sp)
    and     a2,a1,a0
    sb      a2,1713(sp)
    lb      a2,1713(sp)
    bnez    a2, .branch_true_1111
    sb      a2,1713(sp)
    j       .branch_false_1111
.branch_true_1111:
    li      a2, 0
    sb      a0,1714(sp)
    li      a0, 1
    sb      a1,1715(sp)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1704(sp)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    sw      a2,1696(sp)
    sw      a0,1700(sp)
    sw      a1,1692(sp)
    lb      a0,1714(sp)
    lb      a1,1715(sp)
    j       .branch_false_1111
.branch_false_1111:
.L125_0:
    li      a2, 2
    sb      a0,1714(sp)
    div     a0,s1,a2
    mv      s1, a0
    sw      a0,1688(sp)
    div     a0,s2,a2
    mv      s2, a0
    li      a2, 1
    sw      a0,1684(sp)
    add     a0,a7,a2
    mv      a7, a0
    sw      a0,1680(sp)
    sb      a1,1715(sp)
    ld      a0,1736(sp)
    lw      a1,1732(sp)
    j       .while.head_1108
.while.exit_1108:
.L126_0:
    mv      a0, a5
    lw      a2,1888(sp)
    mv      s8, a2
    sw      a2,1888(sp)
    sb      a1,1751(sp)
    li      a2, 2600
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_1059
.while.exit_1059:
    mv      a5, s8
    mv      s7, a5
    sw      a0,1892(sp)
    sb      a1,1887(sp)
    sw      s8,1896(sp)
    li      a0, 2607
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5180
    add     a1,sp,a1
    lw      a0,0(a1)
    li      s8, 2600
    add     s8,sp,s8
    lw      a1,0(s8)
    j       .branch_false_1054
.branch_false_1054:
.L127_0:
    mv      s8, s3
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s3
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_1124
.while.head_1124:
    li      a2, 0
    li      a1, 2600
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .while.body_1124
    j       .while.exit_1124
.while.body_1124:
    li      a5, 0
    li      a7, 0
    mv      s1, s8
    mv      s2, a0
    j       .while.head_1131
.while.head_1131:
    li      a2, 16
    sw      a0,1672(sp)
    slt     a0,a7,a2
    bnez    a0, .while.body_1131
    j       .while.exit_1131
.while.body_1131:
    li      a2, 2
    sb      a0,1666(sp)
    rem     a0,s1,a2
    li      a2, 0
    sb      a1,1667(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_1134
    j       .branch_false_1134
.branch_true_1134:
    li      a2, 2
    sw      a0,1660(sp)
    rem     a0,s2,a2
    li      a2, 0
    sb      a1,1659(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_1137
    j       .branch_false_1137
.branch_true_1137:
    li      a2, 0
    sw      a0,1652(sp)
    li      a0, 1
    sb      a1,1651(sp)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1640(sp)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    sw      a2,1632(sp)
    sw      a0,1636(sp)
    sw      a1,1628(sp)
    lw      a0,1652(sp)
    lb      a1,1651(sp)
    j       .branch_false_1137
.branch_false_1137:
.branch_false_1134:
    li      a2, 2
    sw      a0,1660(sp)
    rem     a0,s2,a2
    li      a2, 0
    sb      a1,1659(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_1141
    j       .branch_false_1141
.branch_true_1141:
    li      a2, 0
    sw      a0,1612(sp)
    li      a0, 1
    sb      a1,1611(sp)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1600(sp)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    sw      a2,1592(sp)
    sw      a0,1596(sp)
    sw      a1,1588(sp)
    lw      a0,1612(sp)
    lb      a1,1611(sp)
    j       .branch_false_1141
.branch_false_1141:
.L128_0:
.L129_0:
    li      a2, 2
    sw      a0,1612(sp)
    div     a0,s1,a2
    mv      s1, a0
    sw      a0,1624(sp)
    div     a0,s2,a2
    mv      s2, a0
    li      a2, 1
    sw      a0,1620(sp)
    add     a0,a7,a2
    mv      a7, a0
    sw      a0,1616(sp)
    sb      a1,1611(sp)
    lw      a0,1672(sp)
    lb      a1,1667(sp)
    j       .while.head_1131
.while.exit_1131:
    mv      a2, a5
    li      a5, 0
    li      a7, 0
    mv      s1, s8
    sb      a0,1666(sp)
    lw      a0,1672(sp)
    mv      s2, a0
    sw      a2,1668(sp)
    j       .while.head_1153
.while.head_1153:
    li      a2, 16
    sw      a0,1672(sp)
    slt     a0,a7,a2
    bnez    a0, .while.body_1153
    j       .while.exit_1153
.while.body_1153:
    li      a2, 2
    sb      a0,1587(sp)
    rem     a0,s2,a2
    sw      a0,1580(sp)
    rem     a0,s1,a2
    li      a2, 0
    sb      a1,1667(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,1580(sp)
    sw      a0,1576(sp)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    lb      a0,1574(sp)
    sw      a2,1580(sp)
    and     a2,a1,a0
    sb      a2,1573(sp)
    lb      a2,1573(sp)
    bnez    a2, .branch_true_1156
    sb      a2,1573(sp)
    j       .branch_false_1156
.branch_true_1156:
    li      a2, 0
    sb      a0,1574(sp)
    li      a0, 1
    sb      a1,1575(sp)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1560(sp)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    sw      a2,1552(sp)
    sw      a0,1556(sp)
    sw      a1,1548(sp)
    lb      a0,1574(sp)
    lb      a1,1575(sp)
    j       .branch_false_1156
.branch_false_1156:
.L130_0:
    li      a2, 2
    sb      a0,1574(sp)
    div     a0,s1,a2
    mv      s1, a0
    sw      a0,1544(sp)
    div     a0,s2,a2
    mv      s2, a0
    li      a2, 1
    sw      a0,1540(sp)
    add     a0,a7,a2
    mv      a7, a0
    sw      a0,1536(sp)
    sb      a1,1575(sp)
    lw      a0,1672(sp)
    lb      a1,1667(sp)
    j       .while.head_1153
.while.exit_1153:
    mv      a2, a5
    sw      a2,1672(sp)
    j       .L131_0
.L131_0:
    li      a2, 1
    sb      a0,1587(sp)
    li      a0, 15
    sb      a1,1667(sp)
    slt     a1,a0,a2
    bnez    a1, .branch_true_1164
    j       .branch_false_1164
.branch_true_1164:
    li      a5, 0
    j       .while.exit_1173
.branch_false_1164:
    li      a5, 0
    li      a7, 0
    li      a0, 0
    li      a2, 1
    sb      a1,1535(sp)
    li      a1, 1
    li      a3, 2596
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    lw      a2,1672(sp)
    mul     a3,a2,a1
    mv      s1, a3
    li      s2, 0xffff
    sw      a2,1672(sp)
    j       .while.head_1173
.while.head_1173:
    li      a2, 16
    sd      a0,1520(sp)
    slt     a0,a7,a2
    bnez    a0, .while.body_1173
    sb      a0,1511(sp)
    sw      a3,1512(sp)
    sw      a1,1516(sp)
    li      a0, 2596
    add     a0,sp,a0
    lw      a3,0(a0)
    lb      a1,1535(sp)
    j       .while.exit_1173
.while.body_1173:
    li      a2, 2
    sb      a0,1511(sp)
    rem     a0,s2,a2
    sw      a0,1504(sp)
    rem     a0,s1,a2
    li      a2, 0
    sw      a1,1516(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,1504(sp)
    sw      a0,1500(sp)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    lb      a0,1498(sp)
    sw      a2,1504(sp)
    and     a2,a1,a0
    sb      a2,1497(sp)
    lb      a2,1497(sp)
    bnez    a2, .branch_true_1176
    sb      a2,1497(sp)
    j       .branch_false_1176
.branch_true_1176:
    li      a2, 0
    sb      a0,1498(sp)
    li      a0, 1
    sb      a1,1499(sp)
    mul     a1,a0,a7
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1488(sp)
    mul     a2,a1,a0
    add     a1,a5,a2
    mv      a5, a1
    sw      a2,1480(sp)
    sw      a0,1484(sp)
    sw      a1,1476(sp)
    lb      a0,1498(sp)
    lb      a1,1499(sp)
    j       .branch_false_1176
.branch_false_1176:
.L132_0:
    li      a2, 2
    sb      a0,1498(sp)
    div     a0,s1,a2
    mv      s1, a0
    sw      a0,1472(sp)
    div     a0,s2,a2
    mv      s2, a0
    li      a2, 1
    sw      a0,1468(sp)
    add     a0,a7,a2
    mv      a7, a0
    sw      a0,1464(sp)
    sb      a1,1499(sp)
    ld      a0,1520(sp)
    lw      a1,1516(sp)
    j       .while.head_1173
.while.exit_1173:
.L133_0:
    mv      a0, a5
    lw      a2,1668(sp)
    mv      s8, a2
    sw      a2,1668(sp)
    sb      a1,1535(sp)
    li      a2, 2600
    add     a2,sp,a2
    lw      a1,0(a2)
    j       .while.head_1124
.while.exit_1124:
    mv      a5, s8
    mv      s3, a5
    mv      s1, s6
    li      s2, 1
    j       .L134_0
.L134_0:
    li      a2, 15
    sw      a0,1672(sp)
    slt     a0,s2,a2
    xori    a0,a0,1
    bnez    a0, .branch_true_1189
    j       .branch_false_1189
.branch_true_1189:
    li      a2, 0
    sb      a0,1463(sp)
    slt     a0,s1,a2
    bnez    a0, .branch_true_1192
    j       .branch_false_1192
.branch_true_1192:
    li      a5, 0xffff
    j       .L135_0
.branch_false_1192:
    li      a5, 0
    j       .L135_0
.L135_0:
.branch_false_1189:
    li      a2, 0
    sb      a0,1463(sp)
    slt     a0,a2,s2
    bnez    a0, .branch_true_1198
    j       .branch_false_1198
.branch_true_1198:
    li      a2, 0x7fff
    sb      a0,1461(sp)
    slt     a0,a2,s1
    bnez    a0, .branch_true_1201
    j       .branch_false_1201
.branch_true_1201:
    li      a2, 0
    sb      a0,1460(sp)
    li      a0, 1
    sb      a1,1667(sp)
    mul     a1,a0,s2
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    div     a1,s1,a0
    mv      s1, a1
    sw      a0,1444(sp)
    li      a0, 15
    sw      a1,1440(sp)
    sub     a1,a0,s2
    li      a0, 1
    sd      a2,1448(sp)
    add     a2,a1,a0
    li      a0, 0
    sw      a1,1436(sp)
    li      a1, 1
    li      a3, 2596
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 65536
    sd      a0,1424(sp)
    add     a0,s1,a3
    sub     a3,a0,a1
    mv      a5, a3
    sw      a2,1432(sp)
    j       .L136_0
.branch_false_1201:
    li      a2, 0
    sb      a0,1460(sp)
    li      a0, 1
    sb      a1,1667(sp)
    mul     a1,a0,s2
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    div     a1,s1,a0
    mv      a5, a1
    sd      a2,1400(sp)
    sw      a0,1396(sp)
    li      a0, 2596
    add     a0,sp,a0
    sw      a3,0(a0)
    sw      a1,1392(sp)
    lw      a0,1416(sp)
    lw      a3,1412(sp)
    lw      a1,1420(sp)
    j       .L136_0
.L136_0:
.branch_false_1198:
    mv      a5, s1
    j       .L137_0
.L137_0:
.L138_0:
.L139_0:
    mv      s6, a5
    sb      s11,1903(sp)
    sb      a0,1461(sp)
    sb      a1,1667(sp)
    sb      s9,1955(sp)
    sw      s8,1676(sp)
    sb      s10,1954(sp)
    li      a0, 2607
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5180
    add     a1,sp,a1
    lw      a0,0(a1)
    li      s8, 2600
    add     s8,sp,s8
    lw      a1,0(s8)
    j       .while.head_1037
.while.exit_1037:
    mv      a5, s7
    mv      a1, a5
    mv      s1, a3
    li      s2, 1
    j       .L140_0
.L140_0:
    li      s8, 15
    slt     s10,s2,s8
    xori    s10,s10,1
    bnez    s10, .branch_true_1215
    j       .branch_false_1215
.branch_true_1215:
    li      s8, 0
    slt     s11,s1,s8
    bnez    s11, .branch_true_1218
    j       .branch_false_1218
.branch_true_1218:
    li      a5, 0xffff
    j       .L141_0
.branch_false_1218:
    li      a5, 0
    j       .L141_0
.L141_0:
.branch_false_1215:
    li      s8, 0
    slt     s11,s8,s2
    bnez    s11, .branch_true_1224
    j       .branch_false_1224
.branch_true_1224:
    li      s8, 0x7fff
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    slt     a0,s8,s1
    bnez    a0, .branch_true_1227
    j       .branch_false_1227
.branch_true_1227:
    li      s8, 0
    sb      a0,1388(sp)
    li      a0, 1
    li      a1, 2600
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,s2
    add     s8,s8,a1
    slli s8,s8,2
    la      a0, SHIFT_TABLE
    add     s8,s8,a0
    lw      a0,0(s8)
    div     a1,s1,a0
    mv      s1, a1
    sw      a0,1372(sp)
    li      a0, 15
    sw      a1,1368(sp)
    sub     a1,a0,s2
    li      a0, 1
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,a1,a0
    li      a0, 0
    sw      a1,1364(sp)
    li      a1, 1
    li      a3, 2596
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 65536
    sd      a0,1352(sp)
    add     a0,s1,a3
    sub     a3,a0,a1
    mv      a5, a3
    sw      a2,1360(sp)
    j       .L142_0
.branch_false_1227:
    li      s8, 0
    sb      a0,1388(sp)
    li      a0, 1
    li      a1, 2600
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,s2
    add     s8,s8,a1
    slli s8,s8,2
    la      a0, SHIFT_TABLE
    add     s8,s8,a0
    lw      a0,0(s8)
    div     a1,s1,a0
    mv      a5, a1
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    sw      a0,1324(sp)
    li      a0, 2596
    add     a0,sp,a0
    sw      a3,0(a0)
    sw      a1,1320(sp)
    sd      s8,1328(sp)
    lw      a0,1344(sp)
    lw      a3,1340(sp)
    lw      a1,1348(sp)
    ld      s8,1376(sp)
    j       .L142_0
.L142_0:
.branch_false_1224:
    mv      a5, s1
    j       .L143_0
.L143_0:
.L144_0:
.L145_0:
    mv      a3, a5
    li      s1, 5188
    add     s1,sp,s1
    sw      s1,0(s1)
    sb      s11,1389(sp)
    li      s1, 2590
    add     s1,sp,s1
    sb      s4,0(s1)
    sw      s7,1956(sp)
    sb      s9,1955(sp)
    li      s4, 2543
    add     s4,sp,s4
    sb      s5,0(s4)
    sw      s3,1964(sp)
    li      a6, 2591
    add     a6,sp,a6
    sb      a6,0(a6)
    sb      s10,1391(sp)
    sw      s6,1960(sp)
    li      a6, 5192
    add     a6,sp,a6
    sw      a7,0(a6)
    li      a7, 5184
    add     a7,sp,a7
    sw      s2,0(a7)
    li      a5, 5196
    add     a5,sp,a5
    sw      a5,0(a5)
    j       .while.head_837
.while.exit_837:
    mv      a5, a4
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2600
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 2607
    add     a1,sp,a1
    sb      a2,0(a1)
    li      a2, 2596
    add     a2,sp,a2
    sw      a3,0(a2)
    li      a3, 2592
    add     a3,sp,a3
    sw      a4,0(a3)
    li      a4, 5196
    add     a4,sp,a4
    sw      a5,0(a4)
    li      a5, 2591
    add     a5,sp,a5
    sb      a6,0(a5)
    add     a4,sp,a4
    lw      a0,0(a4)
    call    putint
    li      a0, 10
    call    putch
    li      a1, 5180
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 1
    add     a3,a0,a2
    mv      a0, a3
    sw      a3,1316(sp)
    j       .while.head_832
.while.exit_832:
    li      a0, 0
    j       .while.head_1242
.while.head_1242:
    li      a1, 16
    slt     a3,a0,a1
    bnez    a3, .while.body_1242
    j       .while.exit_1242
.while.body_1242:
    li      a1, 2
    mv      a4, a0
    li      a5, 1
    j       .while.head_1247
.while.head_1247:
    li      a6, 0
    slt     a7,a6,a4
    bnez    a7, .while.body_1247
    j       .while.exit_1247
.while.body_1247:
    li      a6, 0
    li      s1, 0
    mv      s2, a4
    li      s3, 1
    j       .while.head_1254
.while.head_1254:
    li      s4, 16
    slt     s5,s1,s4
    bnez    s5, .while.body_1254
    j       .while.exit_1254
.while.body_1254:
    li      s4, 2
    rem     s6,s3,s4
    rem     s7,s2,s4
    li      s8, 0
    xor     s9,s7,s8
    snez    s9, s9
    xor     s9,s6,s8
    snez    s9, s9
    lb      s10,1286(sp)
    and     s11,s9,s10
    bnez    s11, .branch_true_1257
    j       .branch_false_1257
.branch_true_1257:
    li      s4, 0
    li      s8, 1
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    mul     a0,s8,s1
    add     s4,s4,a0
    slli s4,s4,2
    la      a0, SHIFT_TABLE
    add     s4,s4,a0
    lw      a0,0(s4)
    sw      a1,1308(sp)
    mul     a1,s8,a0
    add     s8,a6,a1
    mv      a6, s8
    sw      a0,1268(sp)
    sw      a1,1264(sp)
    sd      s4,1272(sp)
    sw      s8,1260(sp)
    li      a1, 5180
    add     a1,sp,a1
    lw      a0,0(a1)
    lw      a1,1308(sp)
    j       .branch_false_1257
.branch_false_1257:
.L146_0:
    li      s4, 2
    div     s8,s2,s4
    mv      s2, s8
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,s3,s4
    mv      s3, a0
    li      s4, 1
    sw      a0,1252(sp)
    add     a0,s1,s4
    mv      s1, a0
    sb      s11,1285(sp)
    sw      a0,1248(sp)
    sw      s7,1288(sp)
    sb      s9,1287(sp)
    sb      s5,1298(sp)
    sw      s8,1256(sp)
    sb      s10,1286(sp)
    sw      s6,1292(sp)
    li      s4, 5180
    add     s4,sp,s4
    lw      a0,0(s4)
    j       .while.head_1254
.while.exit_1254:
    li      s4, 0
    xor     s6,a6,s4
    snez    s6, s6
    bnez    s6, .branch_true_1264
    j       .branch_false_1264
.branch_true_1264:
    mv      s4, a5
    mv      s7, a1
    li      s8, 0
    j       .while.head_1269
.while.head_1269:
    li      s9, 0
    xor     s10,s7,s9
    snez    s10, s10
    bnez    s10, .while.body_1269
    j       .while.exit_1269
.while.body_1269:
    li      a6, 0
    li      s1, 0
    mv      s2, s7
    li      s3, 1
    j       .while.head_1276
.while.head_1276:
    li      s9, 16
    slt     s11,s1,s9
    bnez    s11, .while.body_1276
    j       .while.exit_1276
.while.body_1276:
    li      s9, 2
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s3,s9
    sw      a0,1224(sp)
    rem     a0,s2,s9
    li      s9, 0
    sw      a1,1308(sp)
    xor     a1,a0,s9
    snez    a1, a1
    lw      s9,1224(sp)
    sw      a0,1220(sp)
    li      a0, 0
    xor     a1,s9,a0
    snez    a1, a1
    lb      a0,1218(sp)
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    and     a2,a1,a0
    sb      a2,1217(sp)
    lb      a2,1217(sp)
    bnez    a2, .branch_true_1279
    sb      a2,1217(sp)
    j       .branch_false_1279
.branch_true_1279:
    li      a2, 0
    sb      a0,1218(sp)
    li      a0, 1
    sb      a1,1219(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1208(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,1200(sp)
    sw      a0,1204(sp)
    sw      a1,1196(sp)
    lb      a0,1218(sp)
    lb      a1,1219(sp)
    j       .branch_false_1279
.branch_false_1279:
.L147_0:
    li      a2, 2
    sb      a0,1218(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,1192(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,1188(sp)
    add     a0,s1,a2
    mv      s1, a0
    sb      s11,1230(sp)
    sw      a0,1184(sp)
    sb      a1,1219(sp)
    sw      s9,1224(sp)
    li      a0, 2607
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5180
    add     a1,sp,a1
    lw      a0,0(a1)
    lw      a1,1308(sp)
    j       .while.head_1276
.while.exit_1276:
    li      s9, 0
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,a6,s9
    snez    a0, a0
    bnez    a0, .branch_true_1286
    j       .branch_false_1286
.branch_true_1286:
    mv      s9, s8
    sb      a0,1183(sp)
    mv      a0, s4
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_1291
.while.head_1291:
    li      a2, 0
    sw      a1,1308(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .while.body_1291
    j       .while.exit_1291
.while.body_1291:
    li      a6, 0
    li      s1, 0
    mv      s2, s9
    mv      s3, a0
    j       .while.head_1298
.while.head_1298:
    li      a2, 16
    sw      a0,1172(sp)
    slt     a0,s1,a2
    bnez    a0, .while.body_1298
    j       .while.exit_1298
.while.body_1298:
    li      a2, 2
    sb      a0,1166(sp)
    rem     a0,s2,a2
    li      a2, 0
    sb      a1,1167(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_1301
    j       .branch_false_1301
.branch_true_1301:
    li      a2, 2
    sw      a0,1160(sp)
    rem     a0,s3,a2
    li      a2, 0
    sb      a1,1159(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_1304
    j       .branch_false_1304
.branch_true_1304:
    li      a2, 0
    sw      a0,1152(sp)
    li      a0, 1
    sb      a1,1151(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1136(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,1128(sp)
    sw      a0,1132(sp)
    sw      a1,1124(sp)
    lw      a0,1152(sp)
    lb      a1,1151(sp)
    j       .branch_false_1304
.branch_false_1304:
.branch_false_1301:
    li      a2, 2
    sw      a0,1160(sp)
    rem     a0,s3,a2
    li      a2, 0
    sb      a1,1159(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_1308
    j       .branch_false_1308
.branch_true_1308:
    li      a2, 0
    sw      a0,1108(sp)
    li      a0, 1
    sb      a1,1107(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1096(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,1088(sp)
    sw      a0,1092(sp)
    sw      a1,1084(sp)
    lw      a0,1108(sp)
    lb      a1,1107(sp)
    j       .branch_false_1308
.branch_false_1308:
.L148_0:
.L149_0:
    li      a2, 2
    sw      a0,1108(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,1120(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,1116(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,1112(sp)
    sb      a1,1107(sp)
    lw      a0,1172(sp)
    lb      a1,1167(sp)
    j       .while.head_1298
.while.exit_1298:
    mv      a2, a6
    li      a6, 0
    li      s1, 0
    mv      s2, s9
    sb      a0,1166(sp)
    lw      a0,1172(sp)
    mv      s3, a0
    sw      a2,1168(sp)
    j       .while.head_1320
.while.head_1320:
    li      a2, 16
    sw      a0,1172(sp)
    slt     a0,s1,a2
    bnez    a0, .while.body_1320
    j       .while.exit_1320
.while.body_1320:
    li      a2, 2
    sb      a0,1083(sp)
    rem     a0,s3,a2
    sw      a0,1076(sp)
    rem     a0,s2,a2
    li      a2, 0
    sb      a1,1167(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,1076(sp)
    sw      a0,1072(sp)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    lb      a0,1070(sp)
    sw      a2,1076(sp)
    and     a2,a1,a0
    sb      a2,1069(sp)
    lb      a2,1069(sp)
    bnez    a2, .branch_true_1323
    sb      a2,1069(sp)
    j       .branch_false_1323
.branch_true_1323:
    li      a2, 0
    sb      a0,1070(sp)
    li      a0, 1
    sb      a1,1071(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,1056(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,1048(sp)
    sw      a0,1052(sp)
    sw      a1,1044(sp)
    lb      a0,1070(sp)
    lb      a1,1071(sp)
    j       .branch_false_1323
.branch_false_1323:
.L150_0:
    li      a2, 2
    sb      a0,1070(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,1040(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,1036(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,1032(sp)
    sb      a1,1071(sp)
    lw      a0,1172(sp)
    lb      a1,1167(sp)
    j       .while.head_1320
.while.exit_1320:
    mv      a2, a6
    sw      a2,1172(sp)
    j       .L151_0
.L151_0:
    li      a2, 1
    sb      a0,1083(sp)
    li      a0, 15
    sb      a1,1167(sp)
    slt     a1,a0,a2
    bnez    a1, .branch_true_1331
    j       .branch_false_1331
.branch_true_1331:
    li      a6, 0
    j       .while.exit_1340
.branch_false_1331:
    li      a6, 0
    li      s1, 0
    li      a0, 0
    li      a2, 1
    sb      a1,1031(sp)
    li      a1, 1
    sb      a3,1315(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    lw      a2,1172(sp)
    mul     a3,a2,a1
    mv      s2, a3
    li      s3, 0xffff
    sw      a2,1172(sp)
    j       .while.head_1340
.while.head_1340:
    li      a2, 16
    sd      a0,1016(sp)
    slt     a0,s1,a2
    bnez    a0, .while.body_1340
    sb      a0,1007(sp)
    sw      a3,1008(sp)
    sw      a1,1012(sp)
    lb      a3,1315(sp)
    lb      a1,1031(sp)
    j       .while.exit_1340
.while.body_1340:
    li      a2, 2
    sb      a0,1007(sp)
    rem     a0,s3,a2
    sw      a0,1000(sp)
    rem     a0,s2,a2
    li      a2, 0
    sw      a1,1012(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,1000(sp)
    sw      a0,996(sp)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    lb      a0,994(sp)
    sw      a2,1000(sp)
    and     a2,a1,a0
    sb      a2,993(sp)
    lb      a2,993(sp)
    bnez    a2, .branch_true_1343
    sb      a2,993(sp)
    j       .branch_false_1343
.branch_true_1343:
    li      a2, 0
    sb      a0,994(sp)
    li      a0, 1
    sb      a1,995(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,984(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,976(sp)
    sw      a0,980(sp)
    sw      a1,972(sp)
    lb      a0,994(sp)
    lb      a1,995(sp)
    j       .branch_false_1343
.branch_false_1343:
.L152_0:
    li      a2, 2
    sb      a0,994(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,968(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,964(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,960(sp)
    sb      a1,995(sp)
    ld      a0,1016(sp)
    lw      a1,1012(sp)
    j       .while.head_1340
.while.exit_1340:
.L153_0:
    mv      a0, a6
    lw      a2,1168(sp)
    mv      s9, a2
    sw      a2,1168(sp)
    sb      a1,1031(sp)
    lw      a1,1308(sp)
    j       .while.head_1291
.while.exit_1291:
    mv      a6, s9
    mv      s8, a6
    sw      a0,1172(sp)
    sb      a1,1167(sp)
    sw      s9,1176(sp)
    li      a0, 2607
    add     a0,sp,a0
    lb      a2,0(a0)
    lb      a0,1183(sp)
    lw      a1,1308(sp)
    j       .branch_false_1286
.branch_false_1286:
.L154_0:
    mv      s9, s4
    sb      a0,1183(sp)
    mv      a0, s4
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_1356
.while.head_1356:
    li      a2, 0
    sw      a1,1308(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .while.body_1356
    j       .while.exit_1356
.while.body_1356:
    li      a6, 0
    li      s1, 0
    mv      s2, s9
    mv      s3, a0
    j       .while.head_1363
.while.head_1363:
    li      a2, 16
    sw      a0,952(sp)
    slt     a0,s1,a2
    bnez    a0, .while.body_1363
    j       .while.exit_1363
.while.body_1363:
    li      a2, 2
    sb      a0,946(sp)
    rem     a0,s2,a2
    li      a2, 0
    sb      a1,947(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_1366
    j       .branch_false_1366
.branch_true_1366:
    li      a2, 2
    sw      a0,940(sp)
    rem     a0,s3,a2
    li      a2, 0
    sb      a1,939(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_1369
    j       .branch_false_1369
.branch_true_1369:
    li      a2, 0
    sw      a0,932(sp)
    li      a0, 1
    sb      a1,931(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,920(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,912(sp)
    sw      a0,916(sp)
    sw      a1,908(sp)
    lw      a0,932(sp)
    lb      a1,931(sp)
    j       .branch_false_1369
.branch_false_1369:
.branch_false_1366:
    li      a2, 2
    sw      a0,940(sp)
    rem     a0,s3,a2
    li      a2, 0
    sb      a1,939(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_1373
    j       .branch_false_1373
.branch_true_1373:
    li      a2, 0
    sw      a0,892(sp)
    li      a0, 1
    sb      a1,891(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,880(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,872(sp)
    sw      a0,876(sp)
    sw      a1,868(sp)
    lw      a0,892(sp)
    lb      a1,891(sp)
    j       .branch_false_1373
.branch_false_1373:
.L155_0:
.L156_0:
    li      a2, 2
    sw      a0,892(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,904(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,900(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,896(sp)
    sb      a1,891(sp)
    lw      a0,952(sp)
    lb      a1,947(sp)
    j       .while.head_1363
.while.exit_1363:
    mv      a2, a6
    li      a6, 0
    li      s1, 0
    mv      s2, s9
    sb      a0,946(sp)
    lw      a0,952(sp)
    mv      s3, a0
    sw      a2,948(sp)
    j       .while.head_1385
.while.head_1385:
    li      a2, 16
    sw      a0,952(sp)
    slt     a0,s1,a2
    bnez    a0, .while.body_1385
    j       .while.exit_1385
.while.body_1385:
    li      a2, 2
    sb      a0,867(sp)
    rem     a0,s3,a2
    sw      a0,860(sp)
    rem     a0,s2,a2
    li      a2, 0
    sb      a1,947(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,860(sp)
    sw      a0,856(sp)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    lb      a0,854(sp)
    sw      a2,860(sp)
    and     a2,a1,a0
    sb      a2,853(sp)
    lb      a2,853(sp)
    bnez    a2, .branch_true_1388
    sb      a2,853(sp)
    j       .branch_false_1388
.branch_true_1388:
    li      a2, 0
    sb      a0,854(sp)
    li      a0, 1
    sb      a1,855(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,840(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,832(sp)
    sw      a0,836(sp)
    sw      a1,828(sp)
    lb      a0,854(sp)
    lb      a1,855(sp)
    j       .branch_false_1388
.branch_false_1388:
.L157_0:
    li      a2, 2
    sb      a0,854(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,824(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,820(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,816(sp)
    sb      a1,855(sp)
    lw      a0,952(sp)
    lb      a1,947(sp)
    j       .while.head_1385
.while.exit_1385:
    mv      a2, a6
    sw      a2,952(sp)
    j       .L158_0
.L158_0:
    li      a2, 1
    sb      a0,867(sp)
    li      a0, 15
    sb      a1,947(sp)
    slt     a1,a0,a2
    bnez    a1, .branch_true_1396
    j       .branch_false_1396
.branch_true_1396:
    li      a6, 0
    j       .while.exit_1405
.branch_false_1396:
    li      a6, 0
    li      s1, 0
    li      a0, 0
    li      a2, 1
    sb      a1,815(sp)
    li      a1, 1
    sb      a3,1315(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    lw      a2,952(sp)
    mul     a3,a2,a1
    mv      s2, a3
    li      s3, 0xffff
    sw      a2,952(sp)
    j       .while.head_1405
.while.head_1405:
    li      a2, 16
    sd      a0,800(sp)
    slt     a0,s1,a2
    bnez    a0, .while.body_1405
    sb      a0,791(sp)
    sw      a3,792(sp)
    sw      a1,796(sp)
    lb      a3,1315(sp)
    lb      a1,815(sp)
    j       .while.exit_1405
.while.body_1405:
    li      a2, 2
    sb      a0,791(sp)
    rem     a0,s3,a2
    sw      a0,784(sp)
    rem     a0,s2,a2
    li      a2, 0
    sw      a1,796(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,784(sp)
    sw      a0,780(sp)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    lb      a0,778(sp)
    sw      a2,784(sp)
    and     a2,a1,a0
    sb      a2,777(sp)
    lb      a2,777(sp)
    bnez    a2, .branch_true_1408
    sb      a2,777(sp)
    j       .branch_false_1408
.branch_true_1408:
    li      a2, 0
    sb      a0,778(sp)
    li      a0, 1
    sb      a1,779(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,768(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,760(sp)
    sw      a0,764(sp)
    sw      a1,756(sp)
    lb      a0,778(sp)
    lb      a1,779(sp)
    j       .branch_false_1408
.branch_false_1408:
.L159_0:
    li      a2, 2
    sb      a0,778(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,752(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,748(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,744(sp)
    sb      a1,779(sp)
    ld      a0,800(sp)
    lw      a1,796(sp)
    j       .while.head_1405
.while.exit_1405:
.L160_0:
    mv      a0, a6
    lw      a2,948(sp)
    mv      s9, a2
    sw      a2,948(sp)
    sb      a1,815(sp)
    lw      a1,1308(sp)
    j       .while.head_1356
.while.exit_1356:
    mv      a6, s9
    mv      s4, a6
    mv      s2, s7
    li      s3, 1
    j       .L161_0
.L161_0:
    li      a2, 15
    sw      a0,952(sp)
    slt     a0,s3,a2
    xori    a0,a0,1
    bnez    a0, .branch_true_1421
    j       .branch_false_1421
.branch_true_1421:
    li      a2, 0
    sb      a0,743(sp)
    slt     a0,s2,a2
    bnez    a0, .branch_true_1424
    j       .branch_false_1424
.branch_true_1424:
    li      a6, 0xffff
    j       .L162_0
.branch_false_1424:
    li      a6, 0
    j       .L162_0
.L162_0:
.branch_false_1421:
    li      a2, 0
    sb      a0,743(sp)
    slt     a0,a2,s3
    bnez    a0, .branch_true_1430
    j       .branch_false_1430
.branch_true_1430:
    li      a2, 0x7fff
    sb      a0,741(sp)
    slt     a0,a2,s2
    bnez    a0, .branch_true_1433
    j       .branch_false_1433
.branch_true_1433:
    li      a2, 0
    sb      a0,740(sp)
    li      a0, 1
    sb      a1,947(sp)
    mul     a1,a0,s3
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    div     a1,s2,a0
    mv      s2, a1
    sw      a0,724(sp)
    li      a0, 15
    sw      a1,720(sp)
    sub     a1,a0,s3
    li      a0, 1
    sd      a2,728(sp)
    add     a2,a1,a0
    li      a0, 0
    sw      a1,716(sp)
    li      a1, 1
    sb      a3,1315(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 65536
    sd      a0,704(sp)
    add     a0,s2,a3
    sub     a3,a0,a1
    mv      a6, a3
    sw      a2,712(sp)
    j       .L163_0
.branch_false_1433:
    li      a2, 0
    sb      a0,740(sp)
    li      a0, 1
    sb      a1,947(sp)
    mul     a1,a0,s3
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    div     a1,s2,a0
    mv      a6, a1
    sd      a2,680(sp)
    sw      a0,676(sp)
    sb      a3,1315(sp)
    sw      a1,672(sp)
    lw      a0,696(sp)
    lw      a3,692(sp)
    lw      a1,700(sp)
    j       .L163_0
.L163_0:
.branch_false_1430:
    mv      a6, s2
    j       .L164_0
.L164_0:
.L165_0:
.L166_0:
    mv      s7, a6
    sb      s11,1230(sp)
    sb      a0,741(sp)
    sb      a1,947(sp)
    sw      s9,956(sp)
    sb      s10,1231(sp)
    li      a0, 2607
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5180
    add     a1,sp,a1
    lw      a0,0(a1)
    lw      a1,1308(sp)
    j       .while.head_1269
.while.exit_1269:
    mv      a6, s8
    mv      a5, a6
    sw      s4,1240(sp)
    sw      s7,1236(sp)
    sw      s8,1232(sp)
    sb      s10,1231(sp)
    j       .branch_false_1264
.branch_false_1264:
.L167_0:
    mv      s4, a1
    mv      s7, a1
    li      s8, 0
    j       .while.head_1447
.while.head_1447:
    li      s9, 0
    xor     s10,s7,s9
    snez    s10, s10
    bnez    s10, .while.body_1447
    j       .while.exit_1447
.while.body_1447:
    li      a6, 0
    li      s1, 0
    mv      s2, s7
    li      s3, 1
    j       .while.head_1454
.while.head_1454:
    li      s9, 16
    slt     s11,s1,s9
    bnez    s11, .while.body_1454
    j       .while.exit_1454
.while.body_1454:
    li      s9, 2
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s3,s9
    sw      a0,652(sp)
    rem     a0,s2,s9
    li      s9, 0
    sw      a1,1308(sp)
    xor     a1,a0,s9
    snez    a1, a1
    lw      s9,652(sp)
    sw      a0,648(sp)
    li      a0, 0
    xor     a1,s9,a0
    snez    a1, a1
    lb      a0,646(sp)
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    and     a2,a1,a0
    sb      a2,645(sp)
    lb      a2,645(sp)
    bnez    a2, .branch_true_1457
    sb      a2,645(sp)
    j       .branch_false_1457
.branch_true_1457:
    li      a2, 0
    sb      a0,646(sp)
    li      a0, 1
    sb      a1,647(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,632(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,624(sp)
    sw      a0,628(sp)
    sw      a1,620(sp)
    lb      a0,646(sp)
    lb      a1,647(sp)
    j       .branch_false_1457
.branch_false_1457:
.L168_0:
    li      a2, 2
    sb      a0,646(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,616(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,612(sp)
    add     a0,s1,a2
    mv      s1, a0
    sb      s11,658(sp)
    sw      a0,608(sp)
    sb      a1,647(sp)
    sw      s9,652(sp)
    li      a0, 2607
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5180
    add     a1,sp,a1
    lw      a0,0(a1)
    lw      a1,1308(sp)
    j       .while.head_1454
.while.exit_1454:
    li      s9, 0
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,a6,s9
    snez    a0, a0
    bnez    a0, .branch_true_1464
    j       .branch_false_1464
.branch_true_1464:
    mv      s9, s8
    sb      a0,607(sp)
    mv      a0, s4
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_1469
.while.head_1469:
    li      a2, 0
    sw      a1,1308(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .while.body_1469
    j       .while.exit_1469
.while.body_1469:
    li      a6, 0
    li      s1, 0
    mv      s2, s9
    mv      s3, a0
    j       .while.head_1476
.while.head_1476:
    li      a2, 16
    sw      a0,596(sp)
    slt     a0,s1,a2
    bnez    a0, .while.body_1476
    j       .while.exit_1476
.while.body_1476:
    li      a2, 2
    sb      a0,590(sp)
    rem     a0,s2,a2
    li      a2, 0
    sb      a1,591(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_1479
    j       .branch_false_1479
.branch_true_1479:
    li      a2, 2
    sw      a0,584(sp)
    rem     a0,s3,a2
    li      a2, 0
    sb      a1,583(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_1482
    j       .branch_false_1482
.branch_true_1482:
    li      a2, 0
    sw      a0,576(sp)
    li      a0, 1
    sb      a1,575(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,560(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,552(sp)
    sw      a0,556(sp)
    sw      a1,548(sp)
    lw      a0,576(sp)
    lb      a1,575(sp)
    j       .branch_false_1482
.branch_false_1482:
.branch_false_1479:
    li      a2, 2
    sw      a0,584(sp)
    rem     a0,s3,a2
    li      a2, 0
    sb      a1,583(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_1486
    j       .branch_false_1486
.branch_true_1486:
    li      a2, 0
    sw      a0,532(sp)
    li      a0, 1
    sb      a1,531(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,520(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,512(sp)
    sw      a0,516(sp)
    sw      a1,508(sp)
    lw      a0,532(sp)
    lb      a1,531(sp)
    j       .branch_false_1486
.branch_false_1486:
.L169_0:
.L170_0:
    li      a2, 2
    sw      a0,532(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,544(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,540(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,536(sp)
    sb      a1,531(sp)
    lw      a0,596(sp)
    lb      a1,591(sp)
    j       .while.head_1476
.while.exit_1476:
    mv      a2, a6
    li      a6, 0
    li      s1, 0
    mv      s2, s9
    sb      a0,590(sp)
    lw      a0,596(sp)
    mv      s3, a0
    sw      a2,592(sp)
    j       .while.head_1498
.while.head_1498:
    li      a2, 16
    sw      a0,596(sp)
    slt     a0,s1,a2
    bnez    a0, .while.body_1498
    j       .while.exit_1498
.while.body_1498:
    li      a2, 2
    sb      a0,507(sp)
    rem     a0,s3,a2
    sw      a0,500(sp)
    rem     a0,s2,a2
    li      a2, 0
    sb      a1,591(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,500(sp)
    sw      a0,496(sp)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    lb      a0,494(sp)
    sw      a2,500(sp)
    and     a2,a1,a0
    sb      a2,493(sp)
    lb      a2,493(sp)
    bnez    a2, .branch_true_1501
    sb      a2,493(sp)
    j       .branch_false_1501
.branch_true_1501:
    li      a2, 0
    sb      a0,494(sp)
    li      a0, 1
    sb      a1,495(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,480(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,472(sp)
    sw      a0,476(sp)
    sw      a1,468(sp)
    lb      a0,494(sp)
    lb      a1,495(sp)
    j       .branch_false_1501
.branch_false_1501:
.L171_0:
    li      a2, 2
    sb      a0,494(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,464(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,460(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,456(sp)
    sb      a1,495(sp)
    lw      a0,596(sp)
    lb      a1,591(sp)
    j       .while.head_1498
.while.exit_1498:
    mv      a2, a6
    sw      a2,596(sp)
    j       .L172_0
.L172_0:
    li      a2, 1
    sb      a0,507(sp)
    li      a0, 15
    sb      a1,591(sp)
    slt     a1,a0,a2
    bnez    a1, .branch_true_1509
    j       .branch_false_1509
.branch_true_1509:
    li      a6, 0
    j       .while.exit_1518
.branch_false_1509:
    li      a6, 0
    li      s1, 0
    li      a0, 0
    li      a2, 1
    sb      a1,455(sp)
    li      a1, 1
    sb      a3,1315(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    lw      a2,596(sp)
    mul     a3,a2,a1
    mv      s2, a3
    li      s3, 0xffff
    sw      a2,596(sp)
    j       .while.head_1518
.while.head_1518:
    li      a2, 16
    sd      a0,440(sp)
    slt     a0,s1,a2
    bnez    a0, .while.body_1518
    sb      a0,431(sp)
    sw      a3,432(sp)
    sw      a1,436(sp)
    lb      a3,1315(sp)
    lb      a1,455(sp)
    j       .while.exit_1518
.while.body_1518:
    li      a2, 2
    sb      a0,431(sp)
    rem     a0,s3,a2
    sw      a0,424(sp)
    rem     a0,s2,a2
    li      a2, 0
    sw      a1,436(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,424(sp)
    sw      a0,420(sp)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    lb      a0,418(sp)
    sw      a2,424(sp)
    and     a2,a1,a0
    sb      a2,417(sp)
    lb      a2,417(sp)
    bnez    a2, .branch_true_1521
    sb      a2,417(sp)
    j       .branch_false_1521
.branch_true_1521:
    li      a2, 0
    sb      a0,418(sp)
    li      a0, 1
    sb      a1,419(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,408(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,400(sp)
    sw      a0,404(sp)
    sw      a1,396(sp)
    lb      a0,418(sp)
    lb      a1,419(sp)
    j       .branch_false_1521
.branch_false_1521:
.L173_0:
    li      a2, 2
    sb      a0,418(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,392(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,388(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,384(sp)
    sb      a1,419(sp)
    ld      a0,440(sp)
    lw      a1,436(sp)
    j       .while.head_1518
.while.exit_1518:
.L174_0:
    mv      a0, a6
    lw      a2,592(sp)
    mv      s9, a2
    sw      a2,592(sp)
    sb      a1,455(sp)
    lw      a1,1308(sp)
    j       .while.head_1469
.while.exit_1469:
    mv      a6, s9
    mv      s8, a6
    sw      a0,596(sp)
    sb      a1,591(sp)
    sw      s9,600(sp)
    li      a0, 2607
    add     a0,sp,a0
    lb      a2,0(a0)
    lb      a0,607(sp)
    lw      a1,1308(sp)
    j       .branch_false_1464
.branch_false_1464:
.L175_0:
    mv      s9, s4
    sb      a0,607(sp)
    mv      a0, s4
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_1534
.while.head_1534:
    li      a2, 0
    sw      a1,1308(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .while.body_1534
    j       .while.exit_1534
.while.body_1534:
    li      a6, 0
    li      s1, 0
    mv      s2, s9
    mv      s3, a0
    j       .while.head_1541
.while.head_1541:
    li      a2, 16
    sw      a0,376(sp)
    slt     a0,s1,a2
    bnez    a0, .while.body_1541
    j       .while.exit_1541
.while.body_1541:
    li      a2, 2
    sb      a0,370(sp)
    rem     a0,s2,a2
    li      a2, 0
    sb      a1,371(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_1544
    j       .branch_false_1544
.branch_true_1544:
    li      a2, 2
    sw      a0,364(sp)
    rem     a0,s3,a2
    li      a2, 0
    sb      a1,363(sp)
    xor     a1,a0,a2
    seqz    a1, a1
    bnez    a1, .branch_true_1547
    j       .branch_false_1547
.branch_true_1547:
    li      a2, 0
    sw      a0,356(sp)
    li      a0, 1
    sb      a1,355(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,344(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,336(sp)
    sw      a0,340(sp)
    sw      a1,332(sp)
    lw      a0,356(sp)
    lb      a1,355(sp)
    j       .branch_false_1547
.branch_false_1547:
.branch_false_1544:
    li      a2, 2
    sw      a0,364(sp)
    rem     a0,s3,a2
    li      a2, 0
    sb      a1,363(sp)
    xor     a1,a0,a2
    snez    a1, a1
    bnez    a1, .branch_true_1551
    j       .branch_false_1551
.branch_true_1551:
    li      a2, 0
    sw      a0,316(sp)
    li      a0, 1
    sb      a1,315(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,304(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,296(sp)
    sw      a0,300(sp)
    sw      a1,292(sp)
    lw      a0,316(sp)
    lb      a1,315(sp)
    j       .branch_false_1551
.branch_false_1551:
.L176_0:
.L177_0:
    li      a2, 2
    sw      a0,316(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,328(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,324(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,320(sp)
    sb      a1,315(sp)
    lw      a0,376(sp)
    lb      a1,371(sp)
    j       .while.head_1541
.while.exit_1541:
    mv      a2, a6
    li      a6, 0
    li      s1, 0
    mv      s2, s9
    sb      a0,370(sp)
    lw      a0,376(sp)
    mv      s3, a0
    sw      a2,372(sp)
    j       .while.head_1563
.while.head_1563:
    li      a2, 16
    sw      a0,376(sp)
    slt     a0,s1,a2
    bnez    a0, .while.body_1563
    j       .while.exit_1563
.while.body_1563:
    li      a2, 2
    sb      a0,291(sp)
    rem     a0,s3,a2
    sw      a0,284(sp)
    rem     a0,s2,a2
    li      a2, 0
    sb      a1,371(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,284(sp)
    sw      a0,280(sp)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    lb      a0,278(sp)
    sw      a2,284(sp)
    and     a2,a1,a0
    sb      a2,277(sp)
    lb      a2,277(sp)
    bnez    a2, .branch_true_1566
    sb      a2,277(sp)
    j       .branch_false_1566
.branch_true_1566:
    li      a2, 0
    sb      a0,278(sp)
    li      a0, 1
    sb      a1,279(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,264(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,256(sp)
    sw      a0,260(sp)
    sw      a1,252(sp)
    lb      a0,278(sp)
    lb      a1,279(sp)
    j       .branch_false_1566
.branch_false_1566:
.L178_0:
    li      a2, 2
    sb      a0,278(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,248(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,244(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,240(sp)
    sb      a1,279(sp)
    lw      a0,376(sp)
    lb      a1,371(sp)
    j       .while.head_1563
.while.exit_1563:
    mv      a2, a6
    sw      a2,376(sp)
    j       .L179_0
.L179_0:
    li      a2, 1
    sb      a0,291(sp)
    li      a0, 15
    sb      a1,371(sp)
    slt     a1,a0,a2
    bnez    a1, .branch_true_1574
    j       .branch_false_1574
.branch_true_1574:
    li      a6, 0
    j       .while.exit_1583
.branch_false_1574:
    li      a6, 0
    li      s1, 0
    li      a0, 0
    li      a2, 1
    sb      a1,239(sp)
    li      a1, 1
    sb      a3,1315(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    lw      a2,376(sp)
    mul     a3,a2,a1
    mv      s2, a3
    li      s3, 0xffff
    sw      a2,376(sp)
    j       .while.head_1583
.while.head_1583:
    li      a2, 16
    sd      a0,224(sp)
    slt     a0,s1,a2
    bnez    a0, .while.body_1583
    sb      a0,215(sp)
    sw      a3,216(sp)
    sw      a1,220(sp)
    lb      a3,1315(sp)
    lb      a1,239(sp)
    j       .while.exit_1583
.while.body_1583:
    li      a2, 2
    sb      a0,215(sp)
    rem     a0,s3,a2
    sw      a0,208(sp)
    rem     a0,s2,a2
    li      a2, 0
    sw      a1,220(sp)
    xor     a1,a0,a2
    snez    a1, a1
    lw      a2,208(sp)
    sw      a0,204(sp)
    li      a0, 0
    xor     a1,a2,a0
    snez    a1, a1
    lb      a0,202(sp)
    sw      a2,208(sp)
    and     a2,a1,a0
    sb      a2,201(sp)
    lb      a2,201(sp)
    bnez    a2, .branch_true_1586
    sb      a2,201(sp)
    j       .branch_false_1586
.branch_true_1586:
    li      a2, 0
    sb      a0,202(sp)
    li      a0, 1
    sb      a1,203(sp)
    mul     a1,a0,s1
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    li      a1, 1
    sd      a2,192(sp)
    mul     a2,a1,a0
    add     a1,a6,a2
    mv      a6, a1
    sw      a2,184(sp)
    sw      a0,188(sp)
    sw      a1,180(sp)
    lb      a0,202(sp)
    lb      a1,203(sp)
    j       .branch_false_1586
.branch_false_1586:
.L180_0:
    li      a2, 2
    sb      a0,202(sp)
    div     a0,s2,a2
    mv      s2, a0
    sw      a0,176(sp)
    div     a0,s3,a2
    mv      s3, a0
    li      a2, 1
    sw      a0,172(sp)
    add     a0,s1,a2
    mv      s1, a0
    sw      a0,168(sp)
    sb      a1,203(sp)
    ld      a0,224(sp)
    lw      a1,220(sp)
    j       .while.head_1583
.while.exit_1583:
.L181_0:
    mv      a0, a6
    lw      a2,372(sp)
    mv      s9, a2
    sw      a2,372(sp)
    sb      a1,239(sp)
    lw      a1,1308(sp)
    j       .while.head_1534
.while.exit_1534:
    mv      a6, s9
    mv      s4, a6
    mv      s2, s7
    li      s3, 1
    j       .L182_0
.L182_0:
    li      a2, 15
    sw      a0,376(sp)
    slt     a0,s3,a2
    xori    a0,a0,1
    bnez    a0, .branch_true_1599
    j       .branch_false_1599
.branch_true_1599:
    li      a2, 0
    sb      a0,167(sp)
    slt     a0,s2,a2
    bnez    a0, .branch_true_1602
    j       .branch_false_1602
.branch_true_1602:
    li      a6, 0xffff
    j       .L183_0
.branch_false_1602:
    li      a6, 0
    j       .L183_0
.L183_0:
.branch_false_1599:
    li      a2, 0
    sb      a0,167(sp)
    slt     a0,a2,s3
    bnez    a0, .branch_true_1608
    j       .branch_false_1608
.branch_true_1608:
    li      a2, 0x7fff
    sb      a0,165(sp)
    slt     a0,a2,s2
    bnez    a0, .branch_true_1611
    j       .branch_false_1611
.branch_true_1611:
    li      a2, 0
    sb      a0,164(sp)
    li      a0, 1
    sb      a1,371(sp)
    mul     a1,a0,s3
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    div     a1,s2,a0
    mv      s2, a1
    sw      a0,148(sp)
    li      a0, 15
    sw      a1,144(sp)
    sub     a1,a0,s3
    li      a0, 1
    sd      a2,152(sp)
    add     a2,a1,a0
    li      a0, 0
    sw      a1,140(sp)
    li      a1, 1
    sb      a3,1315(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 65536
    sd      a0,128(sp)
    add     a0,s2,a3
    sub     a3,a0,a1
    mv      a6, a3
    sw      a2,136(sp)
    j       .L184_0
.branch_false_1611:
    li      a2, 0
    sb      a0,164(sp)
    li      a0, 1
    sb      a1,371(sp)
    mul     a1,a0,s3
    add     a2,a2,a1
    slli a2,a2,2
    la      a0, SHIFT_TABLE
    add     a2,a2,a0
    lw      a0,0(a2)
    div     a1,s2,a0
    mv      a6, a1
    sd      a2,104(sp)
    sw      a0,100(sp)
    sb      a3,1315(sp)
    sw      a1,96(sp)
    lw      a0,120(sp)
    lw      a3,116(sp)
    lw      a1,124(sp)
    j       .L184_0
.L184_0:
.branch_false_1608:
    mv      a6, s2
    j       .L185_0
.L185_0:
.L186_0:
.L187_0:
    mv      s7, a6
    sb      s11,658(sp)
    sb      a0,165(sp)
    sb      a1,371(sp)
    sw      s9,380(sp)
    sb      s10,659(sp)
    li      a0, 2607
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5180
    add     a1,sp,a1
    lw      a0,0(a1)
    lw      a1,1308(sp)
    j       .while.head_1447
.while.exit_1447:
    mv      a6, s8
    mv      a1, a6
    mv      s2, a4
    li      s3, 1
    j       .L188_0
.L188_0:
    li      s9, 15
    slt     s11,s3,s9
    xori    s11,s11,1
    bnez    s11, .branch_true_1625
    j       .branch_false_1625
.branch_true_1625:
    li      s9, 0
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    slt     a0,s2,s9
    bnez    a0, .branch_true_1628
    j       .branch_false_1628
.branch_true_1628:
    li      a6, 0xffff
    j       .L189_0
.branch_false_1628:
    li      a6, 0
    j       .L189_0
.L189_0:
.branch_false_1625:
    li      s9, 0
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    slt     a0,s9,s3
    bnez    a0, .branch_true_1634
    j       .branch_false_1634
.branch_true_1634:
    li      s9, 0x7fff
    sb      a0,93(sp)
    slt     a0,s9,s2
    bnez    a0, .branch_true_1637
    j       .branch_false_1637
.branch_true_1637:
    li      s9, 0
    sb      a0,92(sp)
    li      a0, 1
    sw      a1,1308(sp)
    mul     a1,a0,s3
    add     s9,s9,a1
    slli s9,s9,2
    la      a0, SHIFT_TABLE
    add     s9,s9,a0
    lw      a0,0(s9)
    div     a1,s2,a0
    mv      s2, a1
    sw      a0,76(sp)
    li      a0, 15
    sw      a1,72(sp)
    sub     a1,a0,s3
    li      a0, 1
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,a1,a0
    li      a0, 0
    sw      a1,68(sp)
    li      a1, 1
    sb      a3,1315(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a1, SHIFT_TABLE
    add     a0,a0,a1
    lw      a1,0(a0)
    li      a3, 65536
    sd      a0,56(sp)
    add     a0,s2,a3
    sub     a3,a0,a1
    mv      a6, a3
    sw      a2,64(sp)
    j       .L190_0
.branch_false_1637:
    li      s9, 0
    sb      a0,92(sp)
    li      a0, 1
    sw      a1,1308(sp)
    mul     a1,a0,s3
    add     s9,s9,a1
    slli s9,s9,2
    la      a0, SHIFT_TABLE
    add     s9,s9,a0
    lw      a0,0(s9)
    div     a1,s2,a0
    mv      a6, a1
    li      a2, 2607
    add     a2,sp,a2
    sb      a2,0(a2)
    sw      a0,28(sp)
    sb      a3,1315(sp)
    sw      a1,24(sp)
    sd      s9,32(sp)
    lw      a0,48(sp)
    lw      a3,44(sp)
    lw      a1,52(sp)
    ld      s9,80(sp)
    j       .L190_0
.L190_0:
.branch_false_1634:
    mv      a6, s2
    j       .L191_0
.L191_0:
.L192_0:
.L193_0:
    mv      a4, a6
    li      s1, 5192
    add     s1,sp,s1
    sw      s1,0(s1)
    sb      s11,95(sp)
    sb      a0,93(sp)
    sw      s4,668(sp)
    sw      s7,664(sp)
    sb      s5,1298(sp)
    li      a0, 5184
    add     a0,sp,a0
    sw      s3,0(a0)
    sw      s8,660(sp)
    li      a6, 5196
    add     a6,sp,a6
    sw      a6,0(a6)
    sb      s10,659(sp)
    sb      s6,1247(sp)
    sb      a7,1299(sp)
    li      a6, 5188
    add     a6,sp,a6
    sw      s2,0(a6)
    li      a7, 5180
    add     a7,sp,a7
    lw      a0,0(a7)
    j       .while.head_1247
.while.exit_1247:
    mv      a6, a5
    j       .L194_0
.L194_0:
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a0
    add     s1,s1,s3
    slli s1,s1,2
    la      s4, SHIFT_TABLE
    add     s1,s1,s4
    lw      s5,0(s1)
    xor     s6,s5,a6
    snez    s6, s6
    bnez    s6, .branch_true_1648
    j       .branch_false_1648
.branch_true_1648:
    li      s2, 5208
    add     s2,sp,s2
    ld      ra,0(s2)
    li      s3, 5200
    add     s3,sp,s3
    ld      s0,0(s3)
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      s4, 5216
    li      s4, 5216
    add     sp,s4,sp
    ret
.branch_false_1648:
.L195_0:
    li      s2, 1
    add     s3,a0,s2
    mv      a0, s3
    sd      s1,16(sp)
    sb      a3,1315(sp)
    sw      a1,1308(sp)
    sw      s5,12(sp)
    sw      s3,4(sp)
    li      a1, 5196
    add     a1,sp,a1
    sw      a6,0(a1)
    sb      s6,11(sp)
    sb      a7,1299(sp)
    sw      a5,1300(sp)
    sw      a4,1304(sp)
    j       .while.head_1242
.while.exit_1242:
    li      a1, 5208
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a4, 5200
    add     a4,sp,a4
    ld      s0,0(a4)
    li      a0, 5180
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a5, 5216
    li      a5, 5216
    add     sp,a5,sp
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    call    long_func
    sw      a0,4(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,24
    ret
.section ___var
    .data
    .align 4
    .globl SHIFT_TABLE
    .type SHIFT_TABLE,@object
SHIFT_TABLE:
    .word 1
    .word 2
    .word 4
    .word 8
    .word 16
    .word 32
    .word 64
    .word 128
    .word 256
    .word 512
    .word 1024
    .word 2048
    .word 4096
    .word 8192
    .word 16384
    .word 32768
    .zero 4
