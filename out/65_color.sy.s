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
                    #      Define equal_0 [a_21, b_21] -> equal_ret_0 
    .globl equal
    .type equal,@function
equal:
                    #mem layout:|ra_equal:8|s0_equal:8|a:4|b:4|temp_0:1|none:7
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    #      alloc i1 temp_0_24 
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_0_24:i1 
                    #      temp_0_24 = icmp i32 Eq a_21, b_21 
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_0_24, label branch_true_25, label branch_false_25 
    bnez    a2, .branch_true_25
    j       .branch_false_25
                    #      label branch_true_25: 
.branch_true_25:
                    #      ret 1_0 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    li      a0, 1
    addi    sp,sp,32
    ret
                    #      label branch_false_25: 
.branch_false_25:
                    #      label L11_0: 
.L11_0:
                    #      ret 0_0 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    li      a0, 0
    addi    sp,sp,32
    ret
                    #      Define dfs_0 [a_28, b_28, c_28, d_28, e_28, last_28] -> dfs_ret_0 
    .globl dfs
    .type dfs,@function
dfs:
                    #mem layout:|ra_dfs:8|s0_dfs:8|a:4|b:4|c:4|d:4|e:4|last:4|temp_1:52907904|temp_2:8|temp_3:4|temp_4:1|none:3|temp_5:52907904|temp_6:8|temp_7:4|temp_8:4|temp_9:4|temp_10:4|temp_11:4|temp_12:1|none:3|ans:4|temp_13:1|none:3|temp_14:4|temp_15:4|temp_16:4|temp_17:4|temp_18:4|temp_19:4|temp_20:4|temp_21:1|none:3|temp_22:4|temp_23:4|temp_24:4|temp_25:4|temp_26:4|temp_27:4|temp_28:4|temp_29:4|temp_30:1|none:3|temp_31:4|temp_32:4|temp_33:4|temp_34:4|temp_35:4|temp_36:4|temp_37:4|temp_38:4|temp_39:1|none:3|temp_40:4|temp_41:4|temp_42:4|temp_43:4|temp_44:4|temp_45:4|temp_46:4|temp_47:4|temp_48:1|none:3|temp_49:4|temp_50:4|temp_51:4|temp_52:4|temp_53:4|temp_54:4|none:4|temp_55:8|temp_56:4|temp_57:52907904|none:4|temp_58:8|temp_59:4|none:4
    li      a6, -158724008
    li      a6, -158724008
    add     sp,a6,sp
    li      a7, 158724000
    add     a7,sp,a7
    sd      ra,0(a7)
    li      s1, 158723992
    add     s1,sp,s1
    sd      s0,0(s1)
    li      s2, 158724008
    li      s2, 158724008
    add     s0,s2,sp
                    #      alloc Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] temp_1_31 
                    #      alloc ptr->i32 temp_2_31 
                    #      alloc i32 temp_3_31 
                    #      alloc i1 temp_4_31 
                    #      alloc Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] temp_5_31 
                    #      alloc ptr->i32 temp_6_31 
                    #      alloc i32 temp_7_31 
                    #      alloc i32 temp_8_34 
                    #      alloc i32 temp_9_34 
                    #      alloc i32 temp_10_34 
                    #      alloc i32 temp_11_34 
                    #      alloc i1 temp_12_34 
                    #      alloc i32 ans_30 
                    #      alloc i1 temp_13_858 
                    #      alloc i32 temp_14_38 
                    #      alloc i32 temp_15_38 
                    #      alloc i32 temp_16_38 
                    #      alloc i32 temp_17_38 
                    #      alloc i32 temp_18_38 
                    #      alloc i32 temp_19_38 
                    #      alloc i32 temp_20_38 
                    #      alloc i1 temp_21_1132 
                    #      alloc i32 temp_22_41 
                    #      alloc i32 temp_23_41 
                    #      alloc i32 temp_24_41 
                    #      alloc i32 temp_25_41 
                    #      alloc i32 temp_26_41 
                    #      alloc i32 temp_27_41 
                    #      alloc i32 temp_28_41 
                    #      alloc i32 temp_29_41 
                    #      alloc i1 temp_30_1413 
                    #      alloc i32 temp_31_44 
                    #      alloc i32 temp_32_44 
                    #      alloc i32 temp_33_44 
                    #      alloc i32 temp_34_44 
                    #      alloc i32 temp_35_44 
                    #      alloc i32 temp_36_44 
                    #      alloc i32 temp_37_44 
                    #      alloc i32 temp_38_44 
                    #      alloc i1 temp_39_1694 
                    #      alloc i32 temp_40_47 
                    #      alloc i32 temp_41_47 
                    #      alloc i32 temp_42_47 
                    #      alloc i32 temp_43_47 
                    #      alloc i32 temp_44_47 
                    #      alloc i32 temp_45_47 
                    #      alloc i32 temp_46_47 
                    #      alloc i32 temp_47_47 
                    #      alloc i1 temp_48_1975 
                    #      alloc i32 temp_49_50 
                    #      alloc i32 temp_50_50 
                    #      alloc i32 temp_51_50 
                    #      alloc i32 temp_52_50 
                    #      alloc i32 temp_53_50 
                    #      alloc i32 temp_54_50 
                    #      alloc ptr->i32 temp_55_30 
                    #      alloc i32 temp_56_30 
                    #      alloc Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] temp_57_30 
                    #      alloc ptr->i32 temp_58_30 
                    #      alloc i32 temp_59_30 
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_1_31:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
                    #      temp_1_31 = load *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
                    #   load label dp as ptr to reg
    la      s3, dp
                    #occupy reg s3 with *dp_0
    lw      s4,0(s3)
                    #      new_var temp_2_31:ptr->i32 
                    #      new_var temp_3_31:i32 
                    #      temp_2_31 = getelementptr temp_1_31:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
    li      s5, 0
    li      s6, 734832
    add     s5,s5,s4
    li      s7, 40824
    add     s5,s5,s4
    li      s8, 2268
    add     s5,s5,s4
    li      s9, 126
    add     s5,s5,s4
    li      s10, 7
    add     s5,s5,s4
    li      s11, 1
    add     s5,s5,s4
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_3_31 = load temp_2_31:ptr->i32 
    lw      a6,0(s5)
                    #      new_var temp_4_31:i1 
                    #      temp_4_31 = icmp i32 Ne temp_3_31, -1_0 
    li      a7, -1
    xor     s1,a6,a7
    snez    s1, s1
                    #      br i1 temp_4_31, label branch_true_32, label branch_false_32 
    bnez    s1, .branch_true_32
    j       .branch_false_32
                    #      label branch_true_32: 
.branch_true_32:
                    #      new_var temp_5_31:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
                    #      temp_5_31 = load *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
                    #   load label dp as ptr to reg
    la      a7, dp
                    #occupy reg a7 with *dp_0
    lw      s2,0(a7)
                    #      new_var temp_6_31:ptr->i32 
                    #      new_var temp_7_31:i32 
                    #      temp_6_31 = getelementptr temp_5_31:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
    li      s3, 0
    li      s6, 734832
    add     s3,s3,s2
    li      s7, 40824
    add     s3,s3,s2
    li      s8, 2268
    add     s3,s3,s2
    li      s9, 126
    add     s3,s3,s2
    li      s10, 7
    add     s3,s3,s2
    li      s11, 1
    add     s3,s3,s2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_7_31 = load temp_6_31:ptr->i32 
    lw      a7,0(s3)
                    #      ret temp_7_31 
    li      s6, 158724000
    add     s6,sp,s6
    ld      ra,0(s6)
    li      s7, 158723992
    add     s7,sp,s7
    ld      s0,0(s7)
    li      a7, 52908132
    add     a7,sp,a7
    sw      a7,0(a7)
    li      a0, 158723988
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a7, 158724008
    li      a7, 158724008
    add     sp,a7,sp
    ret
                    #      label branch_false_32: 
.branch_false_32:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_8_34:i32 
                    #      temp_8_34 = Add i32 d_28, e_28 
    add     a7,a3,a4
                    #      new_var temp_9_34:i32 
                    #      temp_9_34 = Add i32 c_28, temp_8_34 
    add     s2,a2,a7
                    #      new_var temp_10_34:i32 
                    #      temp_10_34 = Add i32 b_28, temp_9_34 
    add     s3,a1,s2
                    #      new_var temp_11_34:i32 
                    #      temp_11_34 = Add i32 a_28, temp_10_34 
    add     s6,a0,s3
                    #      new_var temp_12_34:i1 
                    #      temp_12_34 = icmp i32 Eq temp_11_34, 0_0 
    li      s7, 0
    xor     s8,s6,s7
    seqz    s8, s8
                    #      br i1 temp_12_34, label branch_true_35, label branch_false_35 
    bnez    s8, .branch_true_35
    j       .branch_false_35
                    #      label branch_true_35: 
.branch_true_35:
                    #      ret 1_0 
    li      s7, 158724000
    add     s7,sp,s7
    ld      ra,0(s7)
    li      s9, 158723992
    add     s9,sp,s9
    ld      s0,0(s9)
    li      a0, 158723988
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      s10, 158724008
    li      s10, 158724008
    add     sp,s10,sp
    ret
                    #      label branch_false_35: 
.branch_false_35:
                    #      label L3_0: 
.L3_0:
                    #      ans_30 = i32 0_0 
    li      s7, 0
                    #      jump label: L4_0 
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_13_858:i1 
                    #      temp_13_858 = icmp i32 Ne a_28, 0_0 
    li      s9, 0
    xor     s10,a0,s9
    snez    s10, s10
                    #      br i1 temp_13_858, label branch_true_39, label branch_false_39 
    bnez    s10, .branch_true_39
    j       .branch_false_39
                    #      label branch_true_39: 
.branch_true_39:
                    #      new_var temp_14_38:i32 
                    #      temp_14_38 = Sub i32 1_0, a_28 
    li      s9, 1
    sub     s11,s9,a0
                    #      new_var temp_15_38:i32 
                    #      temp_15_38 =  Call i32 dfs_0(temp_14_38, b_28, c_28, d_28, e_28, 1_0) 
                    #saved register dumping to mem
    li      s1, 105816051
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 52908124
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 52908120
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 158723964
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 105816056
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 52908116
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 52908108
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 52908115
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s9, 52908107
    add     s9,sp,s9
    sb      s10,0(s9)
    li      s10, 52908100
    add     s10,sp,s10
    sw      s11,0(s10)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 158723988
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s11, 52908100
    add     s11,sp,s11
    lw      a0,0(s11)
    li      a1, 158723984
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s1, 158723984
    add     s1,sp,s1
    lw      a1,0(s1)
    li      a2, 158723980
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s2, 158723980
    add     s2,sp,s2
    lw      a2,0(s2)
    li      a3, 158723976
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s3, 158723976
    add     s3,sp,s3
    lw      a3,0(s3)
    li      a4, 158723972
    add     a4,sp,a4
    sw      a4,0(a4)
    li      s4, 158723972
    add     s4,sp,s4
    lw      a4,0(s4)
    li      a5, 158723968
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a5, 1
                    #arg load ended
    call    dfs
    li      a0, 52908096
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_16_38:i32 
                    #      temp_16_38 =  Call i32 equal_0(last_28, 2_0) 
                    #saved register dumping to mem
    li      a1, 158723984
    add     a1,sp,a1
    sw      s1,0(a1)
    li      a2, 158723980
    add     a2,sp,a2
    sw      s2,0(a2)
    li      a3, 158723976
    add     a3,sp,a3
    sw      s3,0(a3)
    li      a4, 158723972
    add     a4,sp,a4
    sw      s4,0(a4)
    li      a5, 52908100
    add     a5,sp,a5
    sw      s11,0(a5)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52908096
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s1, 158723968
    add     s1,sp,s1
    lw      a0,0(s1)
    li      a1, 2
                    #arg load ended
    call    equal
    li      a0, 52908092
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_17_38:i32 
                    #      temp_17_38 = Sub i32 a_28, temp_16_38 
    sub     s2,a1,a0
                    #      new_var temp_18_38:i32 
                    #      temp_18_38 = Mul i32 temp_17_38, temp_15_38 
    mul     s4,s2,s3
                    #      new_var temp_19_38:i32 
                    #      temp_19_38 = Add i32 ans_30, temp_18_38 
    add     s6,s5,s4
                    #      new_var temp_20_38:i32 
                    #      temp_20_38 = Mod i32 temp_19_38, 1000000007_0 
    li      s7, 1000000007
    rem     s8,s6,s7
                    #      ans_30 = i32 temp_20_38 
    mv      s5, s8
                    #      jump label: branch_false_39 
    li      s9, 158723976
    add     s9,sp,s9
    lw      a3,0(s9)
    li      a0, 52908092
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
    li      s1, 158723968
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s10, 105816051
    add     s10,sp,s10
    lb      s1,0(s10)
    li      s11, 158723972
    add     s11,sp,s11
    lw      a4,0(s11)
    li      s3, 52908096
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a2, 52908120
    add     a2,sp,a2
    lw      s3,0(a2)
    li      a2, 52908120
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a5, 158723980
    add     a5,sp,a5
    lw      a2,0(a5)
    li      s8, 52908076
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s7, 52908115
    add     s7,sp,s7
    lb      s8,0(s7)
    li      a5, 158723980
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a1, 158723988
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 158723968
    add     a1,sp,a1
    lw      a5,0(a1)
    li      s11, 158723972
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s7, 52908115
    add     s7,sp,s7
    sb      s7,0(s7)
    mv      s7, s5
    li      s9, 158723976
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s5, 52908108
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a1, 158723968
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 105816056
    add     a1,sp,a1
    ld      s5,0(a1)
    li      s6, 52908080
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a1, 105816056
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 52908116
    add     a1,sp,a1
    lw      s6,0(a1)
    li      s10, 105816051
    add     s10,sp,s10
    sb      s10,0(s10)
    li      a1, 52908116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 52908107
    add     a1,sp,a1
    lb      s10,0(a1)
    li      a1, 52908107
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a6, 105816052
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 158723984
    add     a6,sp,a6
    lw      a1,0(a6)
    li      s2, 52908088
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a6, 158723984
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 52908124
    add     a6,sp,a6
    lw      s2,0(a6)
    li      s4, 52908084
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a6, 52908124
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 158723964
    add     a6,sp,a6
    lw      s4,0(a6)
    j       .branch_false_39
                    #      label branch_false_39: 
.branch_false_39:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_21_1132:i1 
                    #      temp_21_1132 = icmp i32 Ne b_28, 0_0 
    li      s9, 0
    xor     s11,a1,s9
    snez    s11, s11
                    #      br i1 temp_21_1132, label branch_true_42, label branch_false_42 
    bnez    s11, .branch_true_42
    j       .branch_false_42
                    #      label branch_true_42: 
.branch_true_42:
                    #      new_var temp_22_41:i32 
                    #      temp_22_41 = Add i32 a_28, 1_0 
    li      s9, 1
    li      a1, 158723984
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,s9
                    #      new_var temp_23_41:i32 
                    #      temp_23_41 = Sub i32 b_28, 1_0 
    li      a0, 158723988
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 52908068
    add     a1,sp,a1
    sw      a1,0(a1)
    sub     a1,s9,a0
                    #      new_var temp_24_41:i32 
                    #      temp_24_41 =  Call i32 dfs_0(temp_22_41, temp_23_41, c_28, d_28, e_28, 2_0) 
                    #saved register dumping to mem
    li      s1, 105816051
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 52908124
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 52908120
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 158723964
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 105816056
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 52908116
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 52908108
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 52908115
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s9, 158723984
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s10, 52908107
    add     s10,sp,s10
    sb      s10,0(s10)
    li      s11, 52908075
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    li      s1, 52908068
    add     s1,sp,s1
    lw      a0,0(s1)
    li      a1, 52908064
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 52908064
    add     s2,sp,s2
    lw      a1,0(s2)
    li      a2, 158723980
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s3, 158723980
    add     s3,sp,s3
    lw      a2,0(s3)
    li      a3, 158723976
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s4, 158723976
    add     s4,sp,s4
    lw      a3,0(s4)
    li      a4, 158723972
    add     a4,sp,a4
    sw      a4,0(a4)
    li      s5, 158723972
    add     s5,sp,s5
    lw      a4,0(s5)
    li      a5, 158723968
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a5, 2
                    #arg load ended
    call    dfs
    li      a0, 52908060
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_25_41:i32 
                    #      temp_25_41 =  Call i32 equal_0(last_28, 3_0) 
                    #saved register dumping to mem
    li      a1, 52908068
    add     a1,sp,a1
    sw      s1,0(a1)
    li      a2, 52908064
    add     a2,sp,a2
    sw      s2,0(a2)
    li      a3, 158723980
    add     a3,sp,a3
    sw      s3,0(a3)
    li      a4, 158723976
    add     a4,sp,a4
    sw      s4,0(a4)
    li      a5, 158723972
    add     a5,sp,a5
    sw      s5,0(a5)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52908060
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s1, 158723968
    add     s1,sp,s1
    lw      a0,0(s1)
    li      a1, 3
                    #arg load ended
    call    equal
    li      a0, 52908056
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_26_41:i32 
                    #      temp_26_41 = Sub i32 b_28, temp_25_41 
    sub     s2,a1,a0
                    #      new_var temp_27_41:i32 
                    #      temp_27_41 = Mul i32 temp_26_41, temp_24_41 
    mul     s4,s2,s3
                    #      new_var temp_28_41:i32 
                    #      temp_28_41 = Add i32 ans_30, temp_27_41 
    add     s6,s5,s4
                    #      new_var temp_29_41:i32 
                    #      temp_29_41 = Mod i32 temp_28_41, 1000000007_0 
    li      s7, 1000000007
    rem     s8,s6,s7
                    #      ans_30 = i32 temp_29_41 
    mv      s5, s8
                    #      jump label: branch_false_42 
    li      s9, 158723976
    add     s9,sp,s9
    lw      a3,0(s9)
    li      a0, 52908056
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s10, 158723988
    add     s10,sp,s10
    lw      a0,0(s10)
    li      s1, 158723968
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s11, 105816051
    add     s11,sp,s11
    lb      s1,0(s11)
    li      a2, 158723972
    add     a2,sp,a2
    lw      a4,0(a2)
    li      s3, 52908060
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a5, 52908120
    add     a5,sp,a5
    lw      s3,0(a5)
    li      a2, 158723972
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s7, 158723980
    add     s7,sp,s7
    lw      a2,0(s7)
    li      s8, 52908040
    add     s8,sp,s8
    sw      s8,0(s8)
    li      a1, 158723984
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 52908115
    add     a1,sp,a1
    lb      s8,0(a1)
    li      a5, 52908120
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a1, 52908115
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 158723968
    add     a1,sp,a1
    lw      a5,0(a1)
    li      s11, 105816051
    add     s11,sp,s11
    sb      s11,0(s11)
    li      a1, 158723968
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 52908075
    add     a1,sp,a1
    lb      s11,0(a1)
    li      s7, 158723980
    add     s7,sp,s7
    sw      s7,0(s7)
    mv      s7, s5
    li      s9, 158723976
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s5, 52908108
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a1, 52908075
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 105816056
    add     a1,sp,a1
    ld      s5,0(a1)
    li      s6, 52908044
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a1, 105816056
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 52908116
    add     a1,sp,a1
    lw      s6,0(a1)
    li      s10, 158723988
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a1, 52908116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 52908107
    add     a1,sp,a1
    lb      s10,0(a1)
    li      a1, 52908107
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a6, 105816052
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 158723984
    add     a6,sp,a6
    lw      a1,0(a6)
    li      s2, 52908052
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a6, 158723984
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 52908124
    add     a6,sp,a6
    lw      s2,0(a6)
    li      s4, 52908048
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a6, 52908124
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 158723964
    add     a6,sp,a6
    lw      s4,0(a6)
    j       .branch_false_42
                    #      label branch_false_42: 
.branch_false_42:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_30_1413:i1 
                    #      temp_30_1413 = icmp i32 Ne c_28, 0_0 
    li      s9, 0
    li      a0, 158723988
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,a2,s9
    snez    a0, a0
                    #      br i1 temp_30_1413, label branch_true_45, label branch_false_45 
    bnez    a0, .branch_true_45
    j       .branch_false_45
                    #      label branch_true_45: 
.branch_true_45:
                    #      new_var temp_31_44:i32 
                    #      temp_31_44 = Add i32 b_28, 1_0 
    li      s9, 1
    li      a0, 52908039
    add     a0,sp,a0
    sb      a0,0(a0)
    add     a0,a1,s9
                    #      new_var temp_32_44:i32 
                    #      temp_32_44 = Sub i32 c_28, 1_0 
                    #found literal reg Some(s9) already exist with 1_0
    li      a0, 52908032
    add     a0,sp,a0
    sw      a0,0(a0)
    sub     a0,a2,s9
                    #      new_var temp_33_44:i32 
                    #      temp_33_44 =  Call i32 dfs_0(a_28, temp_31_44, temp_32_44, d_28, e_28, 3_0) 
                    #saved register dumping to mem
    li      s1, 105816051
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 52908124
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 52908120
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 158723964
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 105816056
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 52908116
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 52908108
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 52908115
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s9, 52908107
    add     s9,sp,s9
    sb      s10,0(s9)
    li      s10, 52908075
    add     s10,sp,s10
    sb      s11,0(s10)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52908028
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s11, 158723988
    add     s11,sp,s11
    lw      a0,0(s11)
    li      a1, 158723984
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s1, 52908032
    add     s1,sp,s1
    lw      a1,0(s1)
    li      a2, 158723980
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s2, 52908028
    add     s2,sp,s2
    lw      a2,0(s2)
    li      a3, 158723976
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s3, 158723976
    add     s3,sp,s3
    lw      a3,0(s3)
    li      a4, 158723972
    add     a4,sp,a4
    sw      a4,0(a4)
    li      s4, 158723972
    add     s4,sp,s4
    lw      a4,0(s4)
    li      a5, 158723968
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a5, 3
                    #arg load ended
    call    dfs
    li      a0, 52908024
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_34_44:i32 
                    #      temp_34_44 =  Call i32 equal_0(last_28, 4_0) 
                    #saved register dumping to mem
    li      a1, 52908032
    add     a1,sp,a1
    sw      s1,0(a1)
    li      a2, 52908028
    add     a2,sp,a2
    sw      s2,0(a2)
    li      a3, 158723976
    add     a3,sp,a3
    sw      s3,0(a3)
    li      a4, 158723972
    add     a4,sp,a4
    sw      s4,0(a4)
    li      a5, 158723988
    add     a5,sp,a5
    sw      s11,0(a5)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52908024
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s1, 158723968
    add     s1,sp,s1
    lw      a0,0(s1)
    li      a1, 4
                    #arg load ended
    call    equal
    li      a0, 52908020
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_35_44:i32 
                    #      temp_35_44 = Sub i32 c_28, temp_34_44 
    sub     s2,a1,a0
                    #      new_var temp_36_44:i32 
                    #      temp_36_44 = Mul i32 temp_35_44, temp_33_44 
    mul     s4,s2,s3
                    #      new_var temp_37_44:i32 
                    #      temp_37_44 = Add i32 ans_30, temp_36_44 
    add     s6,s5,s4
                    #      new_var temp_38_44:i32 
                    #      temp_38_44 = Mod i32 temp_37_44, 1000000007_0 
    li      s7, 1000000007
    rem     s8,s6,s7
                    #      ans_30 = i32 temp_38_44 
    mv      s5, s8
                    #      jump label: branch_false_45 
    li      s9, 158723976
    add     s9,sp,s9
    lw      a3,0(s9)
    li      a0, 52908020
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s10, 52908039
    add     s10,sp,s10
    lb      a0,0(s10)
    li      s1, 158723968
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s11, 105816051
    add     s11,sp,s11
    lb      s1,0(s11)
    li      a2, 158723972
    add     a2,sp,a2
    lw      a4,0(a2)
    li      s3, 52908024
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a5, 52908120
    add     a5,sp,a5
    lw      s3,0(a5)
    li      a2, 158723972
    add     a2,sp,a2
    sw      a2,0(a2)
    mv      a2, a1
    li      s8, 52908004
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s7, 52908115
    add     s7,sp,s7
    lb      s8,0(s7)
    li      a5, 52908120
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a1, 158723980
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 158723968
    add     a1,sp,a1
    lw      a5,0(a1)
    li      s11, 105816051
    add     s11,sp,s11
    sb      s11,0(s11)
    li      a1, 158723968
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 52908075
    add     a1,sp,a1
    lb      s11,0(a1)
    li      s7, 52908115
    add     s7,sp,s7
    sb      s7,0(s7)
    mv      s7, s5
    li      s9, 158723976
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s5, 52908108
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a1, 52908075
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 105816056
    add     a1,sp,a1
    ld      s5,0(a1)
    li      s6, 52908008
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a1, 105816056
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 52908116
    add     a1,sp,a1
    lw      s6,0(a1)
    li      s10, 52908039
    add     s10,sp,s10
    sb      s10,0(s10)
    li      a1, 52908116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 52908107
    add     a1,sp,a1
    lb      s10,0(a1)
    li      a1, 52908107
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a6, 105816052
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 158723984
    add     a6,sp,a6
    lw      a1,0(a6)
    li      s2, 52908016
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a6, 158723984
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 52908124
    add     a6,sp,a6
    lw      s2,0(a6)
    li      s4, 52908012
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a6, 52908124
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 158723964
    add     a6,sp,a6
    lw      s4,0(a6)
    j       .branch_false_45
                    #      label branch_false_45: 
.branch_false_45:
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_39_1694:i1 
                    #      temp_39_1694 = icmp i32 Ne d_28, 0_0 
    li      s9, 0
    li      a0, 52908039
    add     a0,sp,a0
    sb      a0,0(a0)
    xor     a0,a3,s9
    snez    a0, a0
                    #      br i1 temp_39_1694, label branch_true_48, label branch_false_48 
    bnez    a0, .branch_true_48
    j       .branch_false_48
                    #      label branch_true_48: 
.branch_true_48:
                    #      new_var temp_40_47:i32 
                    #      temp_40_47 = Add i32 c_28, 1_0 
    li      s9, 1
    li      a0, 52908003
    add     a0,sp,a0
    sb      a0,0(a0)
    add     a0,a2,s9
                    #      new_var temp_41_47:i32 
                    #      temp_41_47 = Sub i32 d_28, 1_0 
                    #found literal reg Some(s9) already exist with 1_0
    li      a0, 52907996
    add     a0,sp,a0
    sw      a0,0(a0)
    sub     a0,a3,s9
                    #      new_var temp_42_47:i32 
                    #      temp_42_47 =  Call i32 dfs_0(a_28, b_28, temp_40_47, temp_41_47, e_28, 4_0) 
                    #saved register dumping to mem
    li      s1, 105816051
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 52908124
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 52908120
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 158723964
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 105816056
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 52908116
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 52908108
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 52908115
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s9, 52908107
    add     s9,sp,s9
    sb      s10,0(s9)
    li      s10, 52908075
    add     s10,sp,s10
    sb      s11,0(s10)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52907992
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s11, 158723988
    add     s11,sp,s11
    lw      a0,0(s11)
    li      a1, 158723984
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s1, 158723984
    add     s1,sp,s1
    lw      a1,0(s1)
    li      a2, 158723980
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s2, 52907996
    add     s2,sp,s2
    lw      a2,0(s2)
    li      a3, 158723976
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s3, 52907992
    add     s3,sp,s3
    lw      a3,0(s3)
    li      a4, 158723972
    add     a4,sp,a4
    sw      a4,0(a4)
    li      s4, 158723972
    add     s4,sp,s4
    lw      a4,0(s4)
    li      a5, 158723968
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a5, 4
                    #arg load ended
    call    dfs
    li      a0, 52907988
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_43_47:i32 
                    #      temp_43_47 =  Call i32 equal_0(last_28, 5_0) 
                    #saved register dumping to mem
    li      a1, 158723984
    add     a1,sp,a1
    sw      s1,0(a1)
    li      a2, 52907996
    add     a2,sp,a2
    sw      s2,0(a2)
    li      a3, 52907992
    add     a3,sp,a3
    sw      s3,0(a3)
    li      a4, 158723972
    add     a4,sp,a4
    sw      s4,0(a4)
    li      a5, 158723988
    add     a5,sp,a5
    sw      s11,0(a5)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52907988
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s1, 158723968
    add     s1,sp,s1
    lw      a0,0(s1)
    li      a1, 5
                    #arg load ended
    call    equal
    li      a0, 52907984
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_44_47:i32 
                    #      temp_44_47 = Sub i32 d_28, temp_43_47 
    sub     s2,a1,a0
                    #      new_var temp_45_47:i32 
                    #      temp_45_47 = Mul i32 temp_44_47, temp_42_47 
    mul     s4,s2,s3
                    #      new_var temp_46_47:i32 
                    #      temp_46_47 = Add i32 ans_30, temp_45_47 
    add     s6,s5,s4
                    #      new_var temp_47_47:i32 
                    #      temp_47_47 = Mod i32 temp_46_47, 1000000007_0 
    li      s7, 1000000007
    rem     s8,s6,s7
                    #      ans_30 = i32 temp_47_47 
    mv      s5, s8
                    #      jump label: branch_false_48 
    mv      a3, a1
    li      a0, 52907984
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s9, 52908003
    add     s9,sp,s9
    lb      a0,0(s9)
    li      s1, 158723968
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s10, 105816051
    add     s10,sp,s10
    lb      s1,0(s10)
    li      s11, 158723972
    add     s11,sp,s11
    lw      a4,0(s11)
    li      s3, 52907988
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a2, 52908120
    add     a2,sp,a2
    lw      s3,0(a2)
    li      a2, 52908120
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a5, 158723980
    add     a5,sp,a5
    lw      a2,0(a5)
    li      s8, 52907968
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s7, 52908115
    add     s7,sp,s7
    lb      s8,0(s7)
    li      a5, 158723980
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a1, 158723976
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 158723968
    add     a1,sp,a1
    lw      a5,0(a1)
    li      s11, 158723972
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a1, 158723968
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 52908075
    add     a1,sp,a1
    lb      s11,0(a1)
    li      s7, 52908115
    add     s7,sp,s7
    sb      s7,0(s7)
    mv      s7, s5
    li      s9, 52908003
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s5, 52908108
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a1, 52908075
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 105816056
    add     a1,sp,a1
    ld      s5,0(a1)
    li      s6, 52907972
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a1, 105816056
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 52908116
    add     a1,sp,a1
    lw      s6,0(a1)
    li      s10, 105816051
    add     s10,sp,s10
    sb      s10,0(s10)
    li      a1, 52908116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 52908107
    add     a1,sp,a1
    lb      s10,0(a1)
    li      a1, 52908107
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a6, 105816052
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 158723984
    add     a6,sp,a6
    lw      a1,0(a6)
    li      s2, 52907980
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a6, 158723984
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 52908124
    add     a6,sp,a6
    lw      s2,0(a6)
    li      s4, 52907976
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a6, 52908124
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 158723964
    add     a6,sp,a6
    lw      s4,0(a6)
    j       .branch_false_48
                    #      label branch_false_48: 
.branch_false_48:
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_48_1975:i1 
                    #      temp_48_1975 = icmp i32 Ne e_28, 0_0 
    li      s9, 0
    li      a0, 52908003
    add     a0,sp,a0
    sb      a0,0(a0)
    xor     a0,a4,s9
    snez    a0, a0
                    #      br i1 temp_48_1975, label branch_true_51, label branch_false_51 
    bnez    a0, .branch_true_51
    j       .branch_false_51
                    #      label branch_true_51: 
.branch_true_51:
                    #      new_var temp_49_50:i32 
                    #      temp_49_50 = Add i32 d_28, 1_0 
    li      s9, 1
    li      a0, 52907967
    add     a0,sp,a0
    sb      a0,0(a0)
    add     a0,a3,s9
                    #      new_var temp_50_50:i32 
                    #      temp_50_50 = Sub i32 e_28, 1_0 
                    #found literal reg Some(s9) already exist with 1_0
    li      a0, 52907960
    add     a0,sp,a0
    sw      a0,0(a0)
    sub     a0,a4,s9
                    #      new_var temp_51_50:i32 
                    #      temp_51_50 =  Call i32 dfs_0(a_28, b_28, c_28, temp_49_50, temp_50_50, 5_0) 
                    #saved register dumping to mem
    li      s1, 105816051
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 52908124
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 52908120
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 158723964
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 105816056
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 52908116
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 52908108
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 52908115
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s9, 52908107
    add     s9,sp,s9
    sb      s10,0(s9)
    li      s10, 52908075
    add     s10,sp,s10
    sb      s11,0(s10)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52907956
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s11, 158723988
    add     s11,sp,s11
    lw      a0,0(s11)
    li      a1, 158723984
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s1, 158723984
    add     s1,sp,s1
    lw      a1,0(s1)
    li      a2, 158723980
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s2, 158723980
    add     s2,sp,s2
    lw      a2,0(s2)
    li      a3, 158723976
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s3, 52907960
    add     s3,sp,s3
    lw      a3,0(s3)
    li      a4, 158723972
    add     a4,sp,a4
    sw      a4,0(a4)
    li      s4, 52907956
    add     s4,sp,s4
    lw      a4,0(s4)
    li      a5, 158723968
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a5, 5
                    #arg load ended
    call    dfs
    li      a0, 52907952
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_52_50:i32 
                    #      temp_52_50 = Mul i32 e_28, temp_51_50 
    mul     a2,a1,a0
                    #      new_var temp_53_50:i32 
                    #      temp_53_50 = Add i32 ans_30, temp_52_50 
    add     a4,a3,a2
                    #      new_var temp_54_50:i32 
                    #      temp_54_50 = Mod i32 temp_53_50, 1000000007_0 
    li      a5, 1000000007
    rem     s5,a4,a5
                    #      ans_30 = i32 temp_54_50 
    mv      a3, s5
                    #      jump label: branch_false_51 
                    #found literal reg Some(s7) already exist with 52908108_0
    add     s7,sp,s7
    sw      a3,0(s7)
    li      a5, 158723976
    add     a5,sp,a5
    lw      a3,0(a5)
    li      a0, 52907952
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s6, 52907967
    add     s6,sp,s6
    lb      a0,0(s6)
    li      s1, 158723984
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s7, 105816051
    add     s7,sp,s7
    lb      s1,0(s7)
    li      a4, 52907944
    add     a4,sp,a4
    sw      a4,0(a4)
    mv      a4, a1
    li      s3, 52907960
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s8, 52908120
    add     s8,sp,s8
    lw      s3,0(s8)
    li      a2, 52907948
    add     a2,sp,a2
    sw      a2,0(a2)
    mv      a2, s2
    li      s8, 52908120
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 52908115
    add     s9,sp,s9
    lb      s8,0(s9)
    li      a5, 158723976
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s10, 158723968
    add     s10,sp,s10
    lw      a5,0(s10)
    li      s11, 158723988
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a1, 158723972
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 52908075
    add     a1,sp,a1
    lb      s11,0(a1)
    li      s7, 105816051
    add     s7,sp,s7
    sb      s7,0(s7)
    li      a1, 52908075
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 52908108
    add     a1,sp,a1
    lw      s7,0(a1)
    li      s9, 52908115
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s5, 52907940
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a1, 52908108
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 105816056
    add     a1,sp,a1
    ld      s5,0(a1)
    li      s6, 52907967
    add     s6,sp,s6
    sb      s6,0(s6)
    li      a1, 105816056
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 52908116
    add     a1,sp,a1
    lw      s6,0(a1)
    li      s10, 158723968
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a1, 52908116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 52908107
    add     a1,sp,a1
    lb      s10,0(a1)
    li      a1, 52908107
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a6, 105816052
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 158723984
    add     a6,sp,a6
    lw      a1,0(a6)
    li      s2, 158723980
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a6, 158723984
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 52908124
    add     a6,sp,a6
    lw      s2,0(a6)
    li      s4, 52907956
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a6, 52908124
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 158723964
    add     a6,sp,a6
    lw      s4,0(a6)
    j       .branch_false_51
                    #      label branch_false_51: 
.branch_false_51:
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_55_30:ptr->i32 
                    #      temp_55_30 = getelementptr dp_0:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
    li      s9, 0
    li      a0, 52907967
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 734832
    li      a1, 158723984
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 158723980
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #occupy reg a2 with dp_0
    add     s9,s9,a2
    li      a0, 40824
    li      a1, 158723988
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a2
                    #occupy reg a1 with dp_0
    add     s9,s9,a1
    li      a0, 2268
    li      a2, 158723984
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #occupy reg a2 with dp_0
    add     s9,s9,a2
    li      a0, 126
    mul     a2,a0,a3
                    #occupy reg a2 with dp_0
    add     s9,s9,a2
    li      a0, 7
    mul     a2,a0,a4
                    #occupy reg a2 with dp_0
    add     s9,s9,a2
    li      a0, 1
    mul     a2,a0,a5
                    #occupy reg a2 with dp_0
    add     s9,s9,a2
    slli s9,s9,2
    add     s9,s9,s9
                    #      new_var temp_56_30:i32 
                    #      temp_56_30 = Mod i32 ans_30, 1000000007_0 
    li      a0, 1000000007
    rem     a2,s7,a0
                    #      store temp_56_30:i32 temp_55_30:ptr->i32 
    sd      a2,0(s9)
                    #      mu dp_0:238 
                    #      dp_0 = chi dp_0:238 
                    #      new_var temp_57_30:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
                    #      temp_57_30 = load *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
                    #   load label dp as ptr to reg
    la      a0, dp
                    #occupy reg a0 with *dp_0
    li      a1, 158723980
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_58_30:ptr->i32 
                    #      new_var temp_59_30:i32 
                    #      temp_58_30 = getelementptr temp_57_30:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
    li      a0, 0
    li      a1, 52907920
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 734832
    li      a2, 52907924
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 158723976
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 40824
    li      a2, 158723988
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a0,a0,a3
    li      a1, 2268
    li      a2, 158723984
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a0,a0,a3
    li      a1, 126
    li      a2, 158723980
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a0,a0,a3
    li      a1, 7
    add     a0,a0,a3
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_59_30 = load temp_58_30:ptr->i32 
    lw      a1,0(a0)
                    #      ret temp_59_30 
    sd      a0,8(sp)
    li      a0, 158724000
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a0, 158724000
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 158723992
    add     a0,sp,a0
    ld      s0,0(a0)
    sw      a1,4(sp)
    li      a0, 158723992
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 158724008
    li      a1, 158724008
    add     sp,a1,sp
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_60:4|n:4|i:4|temp_61:1|none:3|j:4|temp_62:1|none:3|k:4|temp_63:1|none:3|l:4|temp_64:1|none:3|m:4|temp_65:1|none:3|h:4|temp_66:1|none:3|temp_67:8|temp_68:4|temp_69:4|temp_70:4|temp_71:4|temp_72:4|temp_73:4|temp_74:1|none:7|temp_75:8|temp_76:4|temp_77:800|none:4|temp_78:8|temp_79:4|none:4|temp_80:8|temp_81:800|temp_82:8|temp_83:4|temp_84:80|none:4|temp_85:8|temp_86:4|temp_87:4|temp_88:4|temp_89:80|none:4|temp_90:8|temp_91:4|temp_92:80|none:4|temp_93:8|temp_94:4|temp_95:80|none:4|temp_96:8|temp_97:4|temp_98:80|none:4|temp_99:8|temp_100:4|temp_101:80|none:4|temp_102:8|temp_103:4|temp_104:4|ans:4|none:4
    li      a0, -2360
    li      a0, -2360
    add     sp,a0,sp
    li      a1, 2352
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 2344
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 2360
    li      a3, 2360
    add     s0,a3,sp
                    #      alloc i32 temp_60_56 
                    #      alloc i32 n_56 
                    #      alloc i32 i_56 
                    #      alloc i1 temp_61_59 
                    #      alloc i32 j_61 
                    #      alloc i1 temp_62_63 
                    #      alloc i32 k_65 
                    #      alloc i1 temp_63_67 
                    #      alloc i32 l_69 
                    #      alloc i1 temp_64_71 
                    #      alloc i32 m_73 
                    #      alloc i1 temp_65_75 
                    #      alloc i32 h_77 
                    #      alloc i1 temp_66_79 
                    #      alloc ptr->i32 temp_67_81 
                    #      alloc i32 temp_68_81 
                    #      alloc i32 temp_69_77 
                    #      alloc i32 temp_70_73 
                    #      alloc i32 temp_71_69 
                    #      alloc i32 temp_72_65 
                    #      alloc i32 temp_73_61 
                    #      alloc i1 temp_74_90 
                    #      alloc ptr->i32 temp_75_92 
                    #      alloc i32 temp_76_92 
                    #      alloc Array:i32:[Some(200_0)] temp_77_92 
                    #      alloc ptr->i32 temp_78_92 
                    #      alloc i32 temp_79_92 
                    #      alloc ptr->i32 temp_80_92 
                    #      alloc Array:i32:[Some(200_0)] temp_81_92 
                    #      alloc ptr->i32 temp_82_92 
                    #      alloc i32 temp_83_92 
                    #      alloc Array:i32:[Some(20_0)] temp_84_92 
                    #      alloc ptr->i32 temp_85_92 
                    #      alloc i32 temp_86_92 
                    #      alloc i32 temp_87_92 
                    #      alloc i32 temp_88_92 
                    #      alloc Array:i32:[Some(20_0)] temp_89_56 
                    #      alloc ptr->i32 temp_90_56 
                    #      alloc i32 temp_91_56 
                    #      alloc Array:i32:[Some(20_0)] temp_92_56 
                    #      alloc ptr->i32 temp_93_56 
                    #      alloc i32 temp_94_56 
                    #      alloc Array:i32:[Some(20_0)] temp_95_56 
                    #      alloc ptr->i32 temp_96_56 
                    #      alloc i32 temp_97_56 
                    #      alloc Array:i32:[Some(20_0)] temp_98_56 
                    #      alloc ptr->i32 temp_99_56 
                    #      alloc i32 temp_100_56 
                    #      alloc Array:i32:[Some(20_0)] temp_101_56 
                    #      alloc ptr->i32 temp_102_56 
                    #      alloc i32 temp_103_56 
                    #      alloc i32 temp_104_56 
                    #      alloc i32 ans_56 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_60_56:i32 
                    #      temp_60_56 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      n_56 = i32 temp_60_56 
    mv      a4, a0
                    #      i_56 = i32 0_0 
    li      a5, 0
                    #      jump label: while.head_60 
    j       .while.head_60
                    #      label while.head_60: 
.while.head_60:
                    #      new_var temp_61_59:i1 
                    #      temp_61_59 = icmp i32 Slt i_56, 18_0 
    li      a1, 18
    slt     a2,a5,a1
                    #      br i1 temp_61_59, label while.body_60, label while.exit_60 
    bnez    a2, .while.body_60
    j       .while.exit_60
                    #      label while.body_60: 
.while.body_60:
                    #      j_61 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_64 
    j       .while.head_64
                    #      label while.head_64: 
.while.head_64:
                    #      new_var temp_62_63:i1 
                    #      temp_62_63 = icmp i32 Slt j_61, 18_0 
    li      a3, 18
    slt     a6,a1,a3
                    #      br i1 temp_62_63, label while.body_64, label while.exit_64 
    bnez    a6, .while.body_64
    j       .while.exit_64
                    #      label while.body_64: 
.while.body_64:
                    #      k_65 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_68 
    j       .while.head_68
                    #      label while.head_68: 
.while.head_68:
                    #      new_var temp_63_67:i1 
                    #      temp_63_67 = icmp i32 Slt k_65, 18_0 
    li      a7, 18
    slt     s1,a3,a7
                    #      br i1 temp_63_67, label while.body_68, label while.exit_68 
    bnez    s1, .while.body_68
    j       .while.exit_68
                    #      label while.body_68: 
.while.body_68:
                    #      l_69 = i32 0_0 
    li      a7, 0
                    #      jump label: while.head_72 
    j       .while.head_72
                    #      label while.head_72: 
.while.head_72:
                    #      new_var temp_64_71:i1 
                    #      temp_64_71 = icmp i32 Slt l_69, 18_0 
    li      s2, 18
    slt     s3,a7,s2
                    #      br i1 temp_64_71, label while.body_72, label while.exit_72 
    bnez    s3, .while.body_72
    j       .while.exit_72
                    #      label while.body_72: 
.while.body_72:
                    #      m_73 = i32 0_0 
    li      s2, 0
                    #      jump label: while.head_76 
    j       .while.head_76
                    #      label while.head_76: 
.while.head_76:
                    #      new_var temp_65_75:i1 
                    #      temp_65_75 = icmp i32 Slt m_73, 18_0 
    li      s4, 18
    slt     s5,s2,s4
                    #      br i1 temp_65_75, label while.body_76, label while.exit_76 
    bnez    s5, .while.body_76
    j       .while.exit_76
                    #      label while.body_76: 
.while.body_76:
                    #      h_77 = i32 0_0 
    li      s4, 0
                    #      jump label: while.head_80 
    j       .while.head_80
                    #      label while.head_80: 
.while.head_80:
                    #      new_var temp_66_79:i1 
                    #      temp_66_79 = icmp i32 Slt h_77, 7_0 
    li      s6, 7
    slt     s7,s4,s6
                    #      br i1 temp_66_79, label while.body_80, label while.exit_80 
    bnez    s7, .while.body_80
    j       .while.exit_80
                    #      label while.body_80: 
.while.body_80:
                    #      new_var temp_67_81:ptr->i32 
                    #      temp_67_81 = getelementptr dp_0:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(i_56), Some(j_61), Some(k_65), Some(l_69), Some(m_73), Some(h_77)] 
    li      s6, 0
    li      s8, 734832
    mul     s9,s8,a5
                    #occupy reg s9 with dp_0
    add     s6,s6,s9
    li      s10, 40824
    mul     s11,s10,a1
                    #occupy reg s11 with dp_0
    add     s6,s6,s11
    li      s8, 2268
    mul     s9,s8,a3
                    #occupy reg s9 with dp_0
    add     s6,s6,s9
    li      s8, 126
    mul     s9,s8,a7
                    #occupy reg s9 with dp_0
    add     s6,s6,s9
    li      s8, 7
    mul     s9,s8,s2
                    #occupy reg s9 with dp_0
    add     s6,s6,s9
    li      s8, 1
    mul     s9,s8,s4
                    #occupy reg s9 with dp_0
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,s6
                    #      store -1_0:i32 temp_67_81:ptr->i32 
    li      s8, -1
    sd      s8,0(s6)
                    #      mu dp_0:320 
                    #      dp_0 = chi dp_0:320 
                    #      new_var temp_68_81:i32 
                    #      temp_68_81 = Add i32 h_77, 1_0 
    li      s8, 1
    add     s9,s4,s8
                    #      h_77 = i32 temp_68_81 
    mv      s4, s9
                    #      jump label: while.head_80 
    li      s9, 2276
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s6, 2280
    add     s6,sp,s6
    sd      s6,0(s6)
    li      s7, 2291
    add     s7,sp,s7
    sb      s7,0(s7)
    j       .while.head_80
                    #      label while.exit_80: 
.while.exit_80:
                    #      new_var temp_69_77:i32 
                    #      temp_69_77 = Add i32 m_73, 1_0 
    li      s6, 1
    add     s8,s2,s6
                    #      m_73 = i32 temp_69_77 
    mv      s2, s8
                    #      jump label: while.head_76 
    li      s8, 2272
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s5, 2299
    add     s5,sp,s5
    sb      s5,0(s5)
    li      s7, 2291
    add     s7,sp,s7
    sb      s7,0(s7)
    li      s4, 2292
    add     s4,sp,s4
    sw      s4,0(s4)
    j       .while.head_76
                    #      label while.exit_76: 
.while.exit_76:
                    #      new_var temp_70_73:i32 
                    #      temp_70_73 = Add i32 l_69, 1_0 
    li      s4, 1
    add     s6,a7,s4
                    #      l_69 = i32 temp_70_73 
    mv      a7, s6
                    #      jump label: while.head_72 
    li      s2, 2300
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 2307
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s6, 2268
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s5, 2299
    add     s5,sp,s5
    sb      s5,0(s5)
    j       .while.head_72
                    #      label while.exit_72: 
.while.exit_72:
                    #      new_var temp_71_69:i32 
                    #      temp_71_69 = Add i32 k_65, 1_0 
    li      s2, 1
    add     s4,a3,s2
                    #      k_65 = i32 temp_71_69 
    mv      a3, s4
                    #      jump label: while.head_68 
    li      s1, 2315
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s3, 2307
    add     s3,sp,s3
    sb      s3,0(s3)
    li      a7, 2308
    add     a7,sp,a7
    sw      a7,0(a7)
    li      s4, 2264
    add     s4,sp,s4
    sw      s4,0(s4)
    j       .while.head_68
                    #      label while.exit_68: 
.while.exit_68:
                    #      new_var temp_72_65:i32 
                    #      temp_72_65 = Add i32 j_61, 1_0 
    li      a7, 1
    add     s2,a1,a7
                    #      j_61 = i32 temp_72_65 
    mv      a1, s2
                    #      jump label: while.head_64 
    li      s2, 2260
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a3, 2316
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s1, 2315
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a6, 2323
    add     a6,sp,a6
    sb      a6,0(a6)
    j       .while.head_64
                    #      label while.exit_64: 
.while.exit_64:
                    #      new_var temp_73_61:i32 
                    #      temp_73_61 = Add i32 i_56, 1_0 
    li      a3, 1
    add     a7,a5,a3
                    #      i_56 = i32 temp_73_61 
    mv      a5, a7
                    #      jump label: while.head_60 
    li      a2, 2331
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a7, 2256
    add     a7,sp,a7
    sw      a7,0(a7)
    li      a1, 2324
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a6, 2323
    add     a6,sp,a6
    sb      a6,0(a6)
    j       .while.head_60
                    #      label while.exit_60: 
.while.exit_60:
                    #      i_56 = i32 0_0 
                    #      jump label: while.head_91 
    j       .while.head_91
                    #      label while.head_91: 
.while.head_91:
                    #      new_var temp_74_90:i1 
                    #      temp_74_90 = icmp i32 Slt i_56, n_56 
    slt     a1,a5,a4
                    #      br i1 temp_74_90, label while.body_91, label while.exit_91 
    bnez    a1, .while.body_91
    j       .while.exit_91
                    #      label while.body_91: 
.while.body_91:
                    #      new_var temp_75_92:ptr->i32 
                    #      temp_75_92 = getelementptr list_0:Array:i32:[Some(200_0)] [Some(i_56)] 
    li      a3, 0
    li      a6, 1
    mul     a7,a6,a5
                    #occupy reg a7 with list_0
    add     a3,a3,a7
    slli a3,a3,2
    add     a3,a3,a3
                    #      new_var temp_76_92:i32 
                    #      temp_76_92 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s1, 2236
    add     s1,sp,s1
    sw      a0,0(s1)
                    #      store temp_76_92:i32 temp_75_92:ptr->i32 
    sd      a0,0(a3)
                    #      mu list_0:362 
                    #      list_0 = chi list_0:362 
                    #      new_var temp_77_92:Array:i32:[Some(200_0)] 
                    #      temp_77_92 = load *list_0:ptr->i32 
                    #   load label list as ptr to reg
    la      s2, list
                    #occupy reg s2 with *list_0
    lw      s3,0(s2)
                    #      new_var temp_78_92:ptr->i32 
                    #      new_var temp_79_92:i32 
                    #      temp_78_92 = getelementptr temp_77_92:Array:i32:[Some(200_0)] [Some(i_56)] 
    li      s4, 0
                    #found literal reg Some(a6) already exist with 1_0
    add     s4,s4,s3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_79_92 = load temp_78_92:ptr->i32 
    lw      s5,0(s4)
                    #      new_var temp_80_92:ptr->i32 
                    #      temp_80_92 = getelementptr cns_0:Array:i32:[Some(20_0)] [Some(temp_79_92)] 
    li      s6, 0
                    #found literal reg Some(a6) already exist with 1_0
    mul     s7,a6,s5
                    #occupy reg s7 with cns_0
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,s6
                    #      new_var temp_81_92:Array:i32:[Some(200_0)] 
                    #      temp_81_92 = load *list_0:ptr->i32 
                    #   load label list as ptr to reg
    la      s8, list
                    #occupy reg s8 with *list_0
    lw      s9,0(s8)
                    #      new_var temp_82_92:ptr->i32 
                    #      new_var temp_83_92:i32 
                    #      temp_82_92 = getelementptr temp_81_92:Array:i32:[Some(200_0)] [Some(i_56)] 
    li      s10, 0
                    #found literal reg Some(a6) already exist with 1_0
    add     s10,s10,s9
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_83_92 = load temp_82_92:ptr->i32 
    lw      s11,0(s10)
                    #      new_var temp_84_92:Array:i32:[Some(20_0)] 
                    #      temp_84_92 = load *cns_0:ptr->i32 
                    #   load label cns as ptr to reg
    la      a6, cns
                    #occupy reg a6 with *cns_0
    lw      a7,0(a6)
                    #      new_var temp_85_92:ptr->i32 
                    #      new_var temp_86_92:i32 
                    #      temp_85_92 = getelementptr temp_84_92:Array:i32:[Some(20_0)] [Some(temp_83_92)] 
    li      a6, 0
    li      s1, 1
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_86_92 = load temp_85_92:ptr->i32 
    lw      s1,0(a6)
                    #      new_var temp_87_92:i32 
                    #      temp_87_92 = Add i32 temp_86_92, 1_0 
    li      s2, 1
    add     s7,s1,s2
                    #      store temp_87_92:i32 temp_80_92:ptr->i32 
    sd      s7,0(s6)
                    #      mu cns_0:398 
                    #      cns_0 = chi cns_0:398 
                    #      new_var temp_88_92:i32 
                    #      temp_88_92 = Add i32 i_56, 1_0 
                    #found literal reg Some(s2) already exist with 1_0
    add     s8,a5,s2
                    #      i_56 = i32 temp_88_92 
    mv      a5, s8
                    #      jump label: while.head_91 
    li      a0, 2236
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s2, 2340
    add     s2,sp,s2
    lw      a0,0(s2)
    sw      s9,1404(sp)
    sw      s8,492(sp)
    li      s2, 2340
    add     s2,sp,s2
    sw      s2,0(s2)
    sd      s10,600(sp)
    li      a3, 2240
    add     a3,sp,a3
    sd      a3,0(a3)
    sw      s1,500(sp)
    li      s3, 2232
    add     s3,sp,s3
    sw      s3,0(s3)
    sw      a7,592(sp)
    sd      s6,1408(sp)
    sw      s5,1420(sp)
    sw      s7,496(sp)
    li      a1, 2255
    add     a1,sp,a1
    sb      a1,0(a1)
    sw      s11,596(sp)
    sd      a6,504(sp)
    sd      s4,1424(sp)
    j       .while.head_91
                    #      label while.exit_91: 
.while.exit_91:
                    #      new_var temp_89_56:Array:i32:[Some(20_0)] 
                    #      temp_89_56 = load *cns_0:ptr->i32 
                    #   load label cns as ptr to reg
    la      a3, cns
                    #occupy reg a3 with *cns_0
    lw      a6,0(a3)
                    #      new_var temp_90_56:ptr->i32 
                    #      new_var temp_91_56:i32 
                    #      temp_90_56 = getelementptr temp_89_56:Array:i32:[Some(20_0)] [Some(1_0)] 
    li      a7, 0
    li      s1, 1
    li      s2, 1
    add     a7,a7,a6
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_91_56 = load temp_90_56:ptr->i32 
    lw      s3,0(a7)
                    #      new_var temp_92_56:Array:i32:[Some(20_0)] 
                    #      temp_92_56 = load *cns_0:ptr->i32 
                    #   load label cns as ptr to reg
    la      s4, cns
                    #occupy reg s4 with *cns_0
    lw      s5,0(s4)
                    #      new_var temp_93_56:ptr->i32 
                    #      new_var temp_94_56:i32 
                    #      temp_93_56 = getelementptr temp_92_56:Array:i32:[Some(20_0)] [Some(2_0)] 
    li      s6, 0
                    #found literal reg Some(s2) already exist with 1_0
    li      s7, 2
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_94_56 = load temp_93_56:ptr->i32 
    lw      s8,0(s6)
                    #      new_var temp_95_56:Array:i32:[Some(20_0)] 
                    #      temp_95_56 = load *cns_0:ptr->i32 
                    #   load label cns as ptr to reg
    la      s9, cns
                    #occupy reg s9 with *cns_0
    lw      s10,0(s9)
                    #      new_var temp_96_56:ptr->i32 
                    #      new_var temp_97_56:i32 
                    #      temp_96_56 = getelementptr temp_95_56:Array:i32:[Some(20_0)] [Some(3_0)] 
    li      s11, 0
                    #found literal reg Some(s2) already exist with 1_0
    li      a3, 3
    add     s11,s11,s10
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_97_56 = load temp_96_56:ptr->i32 
    lw      a3,0(s11)
                    #      new_var temp_98_56:Array:i32:[Some(20_0)] 
                    #      temp_98_56 = load *cns_0:ptr->i32 
                    #   load label cns as ptr to reg
    la      s1, cns
                    #occupy reg s1 with *cns_0
    lw      s2,0(s1)
                    #      new_var temp_99_56:ptr->i32 
                    #      new_var temp_100_56:i32 
                    #      temp_99_56 = getelementptr temp_98_56:Array:i32:[Some(20_0)] [Some(4_0)] 
    li      s1, 0
    li      s4, 1
    li      s7, 4
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_100_56 = load temp_99_56:ptr->i32 
    lw      s4,0(s1)
                    #      new_var temp_101_56:Array:i32:[Some(20_0)] 
                    #      temp_101_56 = load *cns_0:ptr->i32 
                    #   load label cns as ptr to reg
    la      s7, cns
                    #occupy reg s7 with *cns_0
    lw      s9,0(s7)
                    #      new_var temp_102_56:ptr->i32 
                    #      new_var temp_103_56:i32 
                    #      temp_102_56 = getelementptr temp_101_56:Array:i32:[Some(20_0)] [Some(5_0)] 
    li      s7, 0
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2255
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 5
    add     s7,s7,s9
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_103_56 = load temp_102_56:ptr->i32 
    lw      a0,0(s7)
                    #      new_var temp_104_56:i32 
                    #      temp_104_56 =  Call i32 dfs_0(temp_91_56, temp_94_56, temp_97_56, temp_100_56, temp_103_56, 0_0) 
                    #saved register dumping to mem
    sd      s1,112(sp)
    sw      s2,200(sp)
    sw      s3,396(sp)
    sw      s4,108(sp)
    sw      s5,392(sp)
    sd      s6,304(sp)
    sd      s7,16(sp)
    sw      s8,300(sp)
    sw      s9,104(sp)
    sw      s10,296(sp)
    sd      s11,208(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,12(sp)
    lw      a0,396(sp)
    lw      a1,300(sp)
    li      a2, 2331
    add     a2,sp,a2
    sb      a2,0(a2)
    mv      a2, a3
    sw      a3,204(sp)
    lw      a3,108(sp)
    li      a4, 2336
    add     a4,sp,a4
    sw      a4,0(a4)
    lw      a4,12(sp)
    li      a5, 2332
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a5, 0
                    #arg load ended
    call    dfs
    sw      a0,8(sp)
                    #      ans_56 = i32 temp_104_56 
    mv      a1, a0
                    #       Call void putint_0(ans_56) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,8(sp)
    mv      a0, a1
                    #arg load ended
    call    putint
                    #      ret ans_56 
    li      a0, 2352
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a2, 2344
    add     a2,sp,a2
    ld      s0,0(a2)
    sw      a1,4(sp)
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 2360
    li      a1, 2360
    add     sp,a1,sp
    ret
.section        .data
    .align 4
    .globl cns
                    #      global Array:i32:[Some(20_0)] cns_0 
    .type cns,@object
cns:
    .zero 80
    .align 4
    .globl list
                    #      global Array:i32:[Some(200_0)] list_0 
    .type list,@object
list:
    .zero 800
    .align 4
    .globl dp
                    #      global Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] dp_0 
    .type dp,@object
dp:
    .zero 52907904
    .align 4
    .globl mod
                    #      global i32 mod_0 
    .type mod,@object
mod:
    .word 1000000007
    .align 4
    .globl maxn
                    #      global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 18
