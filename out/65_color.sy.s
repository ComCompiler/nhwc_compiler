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
                    #occupy reg s4 with dp_0
                    #      new_var temp_2_31:ptr->i32 
                    #      new_var temp_3_31:i32 
                    #      temp_2_31 = getelementptr temp_1_31:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
    li      s5, 0
    li      s6, 734832
    mul     s7,s6,a0
    add     s5,s5,s7
    li      s8, 40824
    add     s5,s5,s7
    li      s9, 2268
    add     s5,s5,s7
    li      s10, 126
    add     s5,s5,s7
    li      s11, 7
    add     s5,s5,s7
    li      a6, 1
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_3_31 = load temp_2_31:ptr->i32 
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
                    #occupy reg s2 with dp_0
                    #      new_var temp_6_31:ptr->i32 
                    #      new_var temp_7_31:i32 
                    #      temp_6_31 = getelementptr temp_5_31:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
    li      a7, 0
                    #found literal reg Some(s6) already exist with 734832_0
    mul     s2,s6,a0
    add     a7,a7,s2
                    #found literal reg Some(s8) already exist with 40824_0
    add     a7,a7,s2
                    #found literal reg Some(s9) already exist with 2268_0
    add     a7,a7,s2
                    #found literal reg Some(s10) already exist with 126_0
    add     a7,a7,s2
                    #found literal reg Some(s11) already exist with 7_0
    add     a7,a7,s2
    li      s3, 1
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_7_31 = load temp_6_31:ptr->i32 
                    #      ret temp_7_31 
    li      s3, 158724000
    add     s3,sp,s3
    ld      ra,0(s3)
    li      s4, 158723992
    add     s4,sp,s4
    ld      s0,0(s4)
    li      a0, 158723988
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s6, 158724008
    li      s6, 158724008
    add     sp,s6,sp
    ret
                    #      label branch_false_32: 
.branch_false_32:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_8_34:i32 
                    #      temp_8_34 = Add i32 d_28, e_28 
    add     s6,a3,a4
                    #      new_var temp_9_34:i32 
                    #      temp_9_34 = Add i32 c_28, temp_8_34 
    add     s8,a2,s6
                    #      new_var temp_10_34:i32 
                    #      temp_10_34 = Add i32 b_28, temp_9_34 
    add     s9,a1,s8
                    #      new_var temp_11_34:i32 
                    #      temp_11_34 = Add i32 a_28, temp_10_34 
    add     s11,s10,s9
                    #      new_var temp_12_34:i1 
                    #      temp_12_34 = icmp i32 Eq temp_11_34, 0_0 
    li      a0, 52908132
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 158723984
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,s11,a0
    seqz    a1, a1
                    #      br i1 temp_12_34, label branch_true_35, label branch_false_35 
    bnez    a1, .branch_true_35
    j       .branch_false_35
                    #      label branch_true_35: 
.branch_true_35:
                    #      ret 1_0 
    mv      ra, s3
    mv      s0, s4
    li      a0, 1
    li      a1, 52908115
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 158724008
    li      a1, 158724008
    add     sp,a1,sp
    ret
                    #      label branch_false_35: 
.branch_false_35:
                    #      label L3_0: 
.L3_0:
                    #      ans_30 = i32 0_0 
    li      a0, 0
                    #      jump label: L4_0 
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_13_858:i1 
                    #      temp_13_858 = icmp i32 Ne a_28, 0_0 
    li      a1, 0
    li      a0, 52908108
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,a1
    snez    a0, a0
                    #      br i1 temp_13_858, label branch_true_39, label branch_false_39 
    bnez    a0, .branch_true_39
    j       .branch_false_39
                    #      label branch_true_39: 
.branch_true_39:
                    #      new_var temp_14_38:i32 
                    #      temp_14_38 = Sub i32 1_0, a_28 
    li      a1, 1
    li      a0, 52908107
    add     a0,sp,a0
    sb      a0,0(a0)
    sub     a0,a1,s10
                    #      new_var temp_15_38:i32 
                    #      temp_15_38 =  Call i32 dfs_0(temp_14_38, b_28, c_28, d_28, e_28, 1_0) 
                    #saved register dumping to mem
    li      s1, 105816051
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 105816044
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 158724000
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 158723992
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s5, 105816056
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 52908128
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 158723964
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 52908124
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 52908120
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s10, 158723988
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 52908116
    add     s11,sp,s11
    sw      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52908100
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 158723980
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a1, 158723976
    add     a1,sp,a1
    sw      a3,0(a1)
    li      a2, 158723972
    add     a2,sp,a2
    sw      a4,0(a2)
    li      a3, 158723968
    add     a3,sp,a3
    sw      a5,0(a3)
    li      a5, 1
                    #arg load ended
    call    dfs
    li      a0, 52908096
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_16_38:i32 
                    #      temp_16_38 =  Call i32 equal_0(last_28, 2_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52908096
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 2
                    #arg load ended
    call    equal
    li      a0, 52908092
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_17_38:i32 
                    #      temp_17_38 = Sub i32 a_28, temp_16_38 
    sub     a4,a1,a0
                    #      new_var temp_18_38:i32 
                    #      temp_18_38 = Mul i32 temp_17_38, temp_15_38 
    mul     s1,a4,a5
                    #      new_var temp_19_38:i32 
                    #      temp_19_38 = Add i32 ans_30, temp_18_38 
    add     s3,s2,s1
                    #      new_var temp_20_38:i32 
                    #      temp_20_38 = Mod i32 temp_19_38, 1000000007_0 
    li      s4, 1000000007
    rem     s5,s3,s4
                    #      ans_30 = i32 temp_20_38 
                    #      jump label: branch_false_39 
    j       .branch_false_39
                    #      label branch_false_39: 
.branch_false_39:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_21_1132:i1 
                    #      temp_21_1132 = icmp i32 Ne b_28, 0_0 
    li      s7, 0
    xor     s8,s6,s7
    snez    s8, s8
                    #      br i1 temp_21_1132, label branch_true_42, label branch_false_42 
    bnez    s8, .branch_true_42
    j       .branch_false_42
                    #      label branch_true_42: 
.branch_true_42:
                    #      new_var temp_22_41:i32 
                    #      temp_22_41 = Add i32 a_28, 1_0 
    li      s9, 1
    add     s10,a1,s9
                    #      new_var temp_23_41:i32 
                    #      temp_23_41 = Sub i32 b_28, 1_0 
                    #found literal reg Some(s9) already exist with 1_0
    sub     s11,s6,s9
                    #      new_var temp_24_41:i32 
                    #      temp_24_41 =  Call i32 dfs_0(temp_22_41, temp_23_41, c_28, d_28, e_28, 2_0) 
                    #saved register dumping to mem
    li      s1, 52908084
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 52908108
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 52908080
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 52908076
    add     s4,sp,s4
    sw      s5,0(s4)
    li      s5, 158723984
    add     s5,sp,s5
    sw      s6,0(s5)
    li      s6, 52908075
    add     s6,sp,s6
    sb      s8,0(s6)
    li      s7, 52908068
    add     s7,sp,s7
    sw      s10,0(s7)
    li      s8, 52908064
    add     s8,sp,s8
    sw      s11,0(s8)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52908092
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 158723988
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 52908088
    add     a1,sp,a1
    sw      a4,0(a1)
    li      a2, 52908096
    add     a2,sp,a2
    sw      a5,0(a2)
    li      a5, 2
                    #arg load ended
    call    dfs
    li      a0, 52908060
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_25_41:i32 
                    #      temp_25_41 =  Call i32 equal_0(last_28, 3_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52908060
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 3
                    #arg load ended
    call    equal
    li      a0, 52908056
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_26_41:i32 
                    #      temp_26_41 = Sub i32 b_28, temp_25_41 
    sub     a3,a1,a0
                    #      new_var temp_27_41:i32 
                    #      temp_27_41 = Mul i32 temp_26_41, temp_24_41 
    mul     a5,a3,a4
                    #      new_var temp_28_41:i32 
                    #      temp_28_41 = Add i32 ans_30, temp_27_41 
    add     s2,s1,a5
                    #      new_var temp_29_41:i32 
                    #      temp_29_41 = Mod i32 temp_28_41, 1000000007_0 
    li      s3, 1000000007
    rem     s4,s2,s3
                    #      ans_30 = i32 temp_29_41 
                    #      jump label: branch_false_42 
    j       .branch_false_42
                    #      label branch_false_42: 
.branch_false_42:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_30_1413:i1 
                    #      temp_30_1413 = icmp i32 Ne c_28, 0_0 
    li      s6, 0
    xor     s7,s5,s6
    snez    s7, s7
                    #      br i1 temp_30_1413, label branch_true_45, label branch_false_45 
    bnez    s7, .branch_true_45
    j       .branch_false_45
                    #      label branch_true_45: 
.branch_true_45:
                    #      new_var temp_31_44:i32 
                    #      temp_31_44 = Add i32 b_28, 1_0 
    li      s8, 1
    add     s9,a1,s8
                    #      new_var temp_32_44:i32 
                    #      temp_32_44 = Sub i32 c_28, 1_0 
                    #found literal reg Some(s8) already exist with 1_0
    sub     s10,s5,s8
                    #      new_var temp_33_44:i32 
                    #      temp_33_44 =  Call i32 dfs_0(a_28, temp_31_44, temp_32_44, d_28, e_28, 3_0) 
                    #saved register dumping to mem
    li      s1, 52908108
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 52908044
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 52908040
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 158723980
    add     s4,sp,s4
    sw      s5,0(s4)
    li      s5, 52908039
    add     s5,sp,s5
    sb      s7,0(s5)
    li      s6, 52908032
    add     s6,sp,s6
    sw      s9,0(s6)
    li      s7, 52908028
    add     s7,sp,s7
    sw      s10,0(s7)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52908056
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 158723984
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 52908052
    add     a1,sp,a1
    sw      a3,0(a1)
    li      a2, 52908060
    add     a2,sp,a2
    sw      a4,0(a2)
    li      a3, 52908048
    add     a3,sp,a3
    sw      a5,0(a3)
    li      a5, 3
                    #arg load ended
    call    dfs
    li      a0, 52908024
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_34_44:i32 
                    #      temp_34_44 =  Call i32 equal_0(last_28, 4_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52908024
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 4
                    #arg load ended
    call    equal
    li      a0, 52908020
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_35_44:i32 
                    #      temp_35_44 = Sub i32 c_28, temp_34_44 
    sub     a4,a1,a0
                    #      new_var temp_36_44:i32 
                    #      temp_36_44 = Mul i32 temp_35_44, temp_33_44 
    mul     s1,a4,a5
                    #      new_var temp_37_44:i32 
                    #      temp_37_44 = Add i32 ans_30, temp_36_44 
    add     s3,s2,s1
                    #      new_var temp_38_44:i32 
                    #      temp_38_44 = Mod i32 temp_37_44, 1000000007_0 
    li      s4, 1000000007
    rem     s5,s3,s4
                    #      ans_30 = i32 temp_38_44 
                    #      jump label: branch_false_45 
    j       .branch_false_45
                    #      label branch_false_45: 
.branch_false_45:
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_39_1694:i1 
                    #      temp_39_1694 = icmp i32 Ne d_28, 0_0 
    li      s7, 0
    xor     s8,s6,s7
    snez    s8, s8
                    #      br i1 temp_39_1694, label branch_true_48, label branch_false_48 
    bnez    s8, .branch_true_48
    j       .branch_false_48
                    #      label branch_true_48: 
.branch_true_48:
                    #      new_var temp_40_47:i32 
                    #      temp_40_47 = Add i32 c_28, 1_0 
    li      s9, 1
    add     s10,a1,s9
                    #      new_var temp_41_47:i32 
                    #      temp_41_47 = Sub i32 d_28, 1_0 
                    #found literal reg Some(s9) already exist with 1_0
    sub     s11,s6,s9
                    #      new_var temp_42_47:i32 
                    #      temp_42_47 =  Call i32 dfs_0(a_28, b_28, temp_40_47, temp_41_47, e_28, 4_0) 
                    #saved register dumping to mem
    li      s1, 52908012
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 52908108
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 52908008
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 52908004
    add     s4,sp,s4
    sw      s5,0(s4)
    li      s5, 158723976
    add     s5,sp,s5
    sw      s6,0(s5)
    li      s6, 52908003
    add     s6,sp,s6
    sb      s8,0(s6)
    li      s7, 52907996
    add     s7,sp,s7
    sw      s10,0(s7)
    li      s8, 52907992
    add     s8,sp,s8
    sw      s11,0(s8)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52908020
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 158723980
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 52908016
    add     a1,sp,a1
    sw      a4,0(a1)
    li      a2, 52908024
    add     a2,sp,a2
    sw      a5,0(a2)
    li      a5, 4
                    #arg load ended
    call    dfs
    li      a0, 52907988
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_43_47:i32 
                    #      temp_43_47 =  Call i32 equal_0(last_28, 5_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52907988
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 5
                    #arg load ended
    call    equal
    li      a0, 52907984
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_44_47:i32 
                    #      temp_44_47 = Sub i32 d_28, temp_43_47 
    sub     a3,a1,a0
                    #      new_var temp_45_47:i32 
                    #      temp_45_47 = Mul i32 temp_44_47, temp_42_47 
    mul     a5,a3,a4
                    #      new_var temp_46_47:i32 
                    #      temp_46_47 = Add i32 ans_30, temp_45_47 
    add     s2,s1,a5
                    #      new_var temp_47_47:i32 
                    #      temp_47_47 = Mod i32 temp_46_47, 1000000007_0 
    li      s3, 1000000007
    rem     s4,s2,s3
                    #      ans_30 = i32 temp_47_47 
                    #      jump label: branch_false_48 
    j       .branch_false_48
                    #      label branch_false_48: 
.branch_false_48:
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_48_1975:i1 
                    #      temp_48_1975 = icmp i32 Ne e_28, 0_0 
    li      s6, 0
    xor     s7,s5,s6
    snez    s7, s7
                    #      br i1 temp_48_1975, label branch_true_51, label branch_false_51 
    bnez    s7, .branch_true_51
    j       .branch_false_51
                    #      label branch_true_51: 
.branch_true_51:
                    #      new_var temp_49_50:i32 
                    #      temp_49_50 = Add i32 d_28, 1_0 
    li      s8, 1
    add     s9,a1,s8
                    #      new_var temp_50_50:i32 
                    #      temp_50_50 = Sub i32 e_28, 1_0 
                    #found literal reg Some(s8) already exist with 1_0
    sub     s10,s5,s8
                    #      new_var temp_51_50:i32 
                    #      temp_51_50 =  Call i32 dfs_0(a_28, b_28, c_28, temp_49_50, temp_50_50, 5_0) 
                    #saved register dumping to mem
    li      s1, 52908108
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 52907972
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 52907968
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 158723972
    add     s4,sp,s4
    sw      s5,0(s4)
    li      s5, 52907967
    add     s5,sp,s5
    sb      s7,0(s5)
    li      s6, 52907960
    add     s6,sp,s6
    sw      s9,0(s6)
    li      s7, 52907956
    add     s7,sp,s7
    sw      s10,0(s7)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 52907984
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 158723976
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 52907980
    add     a1,sp,a1
    sw      a3,0(a1)
    li      a2, 52907988
    add     a2,sp,a2
    sw      a4,0(a2)
    li      a3, 52907976
    add     a3,sp,a3
    sw      a5,0(a3)
    li      a5, 5
                    #arg load ended
    call    dfs
    li      a0, 52907952
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_52_50:i32 
                    #      temp_52_50 = Mul i32 e_28, temp_51_50 
    mul     a5,a4,a0
                    #      new_var temp_53_50:i32 
                    #      temp_53_50 = Add i32 ans_30, temp_52_50 
    add     s9,s8,a5
                    #      new_var temp_54_50:i32 
                    #      temp_54_50 = Mod i32 temp_53_50, 1000000007_0 
    li      s10, 1000000007
    rem     s11,s9,s10
                    #      ans_30 = i32 temp_54_50 
                    #      jump label: branch_false_51 
    j       .branch_false_51
                    #      label branch_false_51: 
.branch_false_51:
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_55_30:ptr->i32 
                    #      temp_55_30 = getelementptr dp_0:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
    li      a1, 0
    li      a2, 734832
    mul     s1,a2,a3
                    #occupy reg s1 with dp_0
    add     a1,a1,s1
    li      a2, 40824
    mul     s2,a2,s1
                    #occupy reg s2 with dp_0
    add     a1,a1,s2
    li      a2, 2268
    mul     s3,a2,s2
                    #occupy reg s3 with dp_0
    add     a1,a1,s3
    li      a2, 126
    mul     s4,a2,s3
                    #occupy reg s4 with dp_0
    add     a1,a1,s4
    li      a2, 7
    mul     s4,a2,a4
                    #occupy reg s4 with dp_0
    add     a1,a1,s4
    li      a2, 1
    mul     s5,a2,s4
                    #occupy reg s5 with dp_0
    add     a1,a1,s5
    slli a1,a1,2
    add     a1,a1,a1
                    #      new_var temp_56_30:i32 
                    #      temp_56_30 = Mod i32 ans_30, 1000000007_0 
                    #found literal reg Some(s10) already exist with 1000000007_0
    rem     a2,s8,s10
                    #      store temp_56_30:i32 temp_55_30:ptr->i32 
    sd      a2,0(a1)
                    #      mu dp_0:238 
                    #      dp_0 = chi dp_0:238 
                    #      new_var temp_57_30:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
                    #      temp_57_30 = load *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
                    #   load label dp as ptr to reg
    la      s5, dp
                    #occupy reg s5 with *dp_0
    lw      s6,0(s5)
                    #occupy reg s6 with dp_0
                    #      new_var temp_58_30:ptr->i32 
                    #      new_var temp_59_30:i32 
                    #      temp_58_30 = getelementptr temp_57_30:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
    li      s5, 0
    li      s6, 734832
    mul     s7,s6,a3
    add     s5,s5,s7
    li      s6, 40824
    add     s5,s5,s7
    li      s6, 2268
    add     s5,s5,s7
    li      s6, 126
    add     s5,s5,s7
    li      s6, 7
    add     s5,s5,s7
    li      s6, 1
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_59_30 = load temp_58_30:ptr->i32 
                    #      ret temp_59_30 
    li      s6, 158724000
    add     s6,sp,s6
    ld      ra,0(s6)
    li      s10, 158723992
    add     s10,sp,s10
    ld      s0,0(s10)
    li      a0, 52907952
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 52907928
    add     a1,sp,a1
    sd      a1,0(a1)
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
    li      a6, 18
    slt     a7,a5,a6
                    #      br i1 temp_61_59, label while.body_60, label while.exit_60 
    bnez    a7, .while.body_60
    j       .while.exit_60
                    #      label while.body_60: 
.while.body_60:
                    #      j_61 = i32 0_0 
    li      s1, 0
                    #      jump label: while.head_64 
    j       .while.head_64
                    #      label while.head_64: 
.while.head_64:
                    #      new_var temp_62_63:i1 
                    #      temp_62_63 = icmp i32 Slt j_61, 18_0 
                    #found literal reg Some(a6) already exist with 18_0
    slt     s2,s1,a6
                    #      br i1 temp_62_63, label while.body_64, label while.exit_64 
    bnez    s2, .while.body_64
    j       .while.exit_64
                    #      label while.body_64: 
.while.body_64:
                    #      k_65 = i32 0_0 
    li      s3, 0
                    #      jump label: while.head_68 
    j       .while.head_68
                    #      label while.head_68: 
.while.head_68:
                    #      new_var temp_63_67:i1 
                    #      temp_63_67 = icmp i32 Slt k_65, 18_0 
                    #found literal reg Some(a6) already exist with 18_0
    slt     s4,s3,a6
                    #      br i1 temp_63_67, label while.body_68, label while.exit_68 
    bnez    s4, .while.body_68
    j       .while.exit_68
                    #      label while.body_68: 
.while.body_68:
                    #      l_69 = i32 0_0 
    li      s5, 0
                    #      jump label: while.head_72 
    j       .while.head_72
                    #      label while.head_72: 
.while.head_72:
                    #      new_var temp_64_71:i1 
                    #      temp_64_71 = icmp i32 Slt l_69, 18_0 
                    #found literal reg Some(a6) already exist with 18_0
    slt     s6,s5,a6
                    #      br i1 temp_64_71, label while.body_72, label while.exit_72 
    bnez    s6, .while.body_72
    j       .while.exit_72
                    #      label while.body_72: 
.while.body_72:
                    #      m_73 = i32 0_0 
    li      s7, 0
                    #      jump label: while.head_76 
    j       .while.head_76
                    #      label while.head_76: 
.while.head_76:
                    #      new_var temp_65_75:i1 
                    #      temp_65_75 = icmp i32 Slt m_73, 18_0 
                    #found literal reg Some(a6) already exist with 18_0
    slt     s8,s7,a6
                    #      br i1 temp_65_75, label while.body_76, label while.exit_76 
    bnez    s8, .while.body_76
    j       .while.exit_76
                    #      label while.body_76: 
.while.body_76:
                    #      h_77 = i32 0_0 
    li      s9, 0
                    #      jump label: while.head_80 
    j       .while.head_80
                    #      label while.head_80: 
.while.head_80:
                    #      new_var temp_66_79:i1 
                    #      temp_66_79 = icmp i32 Slt h_77, 7_0 
    li      s10, 7
    slt     s11,s9,s10
                    #      br i1 temp_66_79, label while.body_80, label while.exit_80 
    bnez    s11, .while.body_80
    j       .while.exit_80
                    #      label while.body_80: 
.while.body_80:
                    #      new_var temp_67_81:ptr->i32 
                    #      temp_67_81 = getelementptr dp_0:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(i_56), Some(j_61), Some(k_65), Some(l_69), Some(m_73), Some(h_77)] 
    li      a1, 0
    li      a2, 734832
    mul     a3,a2,a5
                    #occupy reg a3 with dp_0
    add     a1,a1,a3
    li      a2, 40824
    mul     a3,a2,s1
                    #occupy reg a3 with dp_0
    add     a1,a1,a3
    li      a2, 2268
    mul     a3,a2,s3
                    #occupy reg a3 with dp_0
    add     a1,a1,a3
    li      a2, 126
    mul     a3,a2,s5
                    #occupy reg a3 with dp_0
    add     a1,a1,a3
                    #found literal reg Some(s10) already exist with 7_0
    mul     a2,s10,s7
                    #occupy reg a2 with dp_0
    add     a1,a1,a2
    li      a2, 1
    mul     a3,a2,s9
                    #occupy reg a3 with dp_0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,a1
                    #      store -1_0:i32 temp_67_81:ptr->i32 
    li      a2, -1
    sd      a2,0(a1)
                    #      mu dp_0:320 
                    #      dp_0 = chi dp_0:320 
                    #      new_var temp_68_81:i32 
                    #      temp_68_81 = Add i32 h_77, 1_0 
    li      a2, 1
    add     a3,s9,a2
                    #      h_77 = i32 temp_68_81 
                    #      jump label: while.head_80 
    j       .while.head_80
                    #      label while.exit_80: 
.while.exit_80:
                    #      new_var temp_69_77:i32 
                    #      temp_69_77 = Add i32 m_73, 1_0 
                    #found literal reg Some(a2) already exist with 1_0
    add     a6,s7,a2
                    #      m_73 = i32 temp_69_77 
                    #      jump label: while.head_76 
    j       .while.head_76
                    #      label while.exit_76: 
.while.exit_76:
                    #      new_var temp_70_73:i32 
                    #      temp_70_73 = Add i32 l_69, 1_0 
                    #found literal reg Some(a2) already exist with 1_0
    add     s10,s5,a2
                    #      l_69 = i32 temp_70_73 
                    #      jump label: while.head_72 
    j       .while.head_72
                    #      label while.exit_72: 
.while.exit_72:
                    #      new_var temp_71_69:i32 
                    #      temp_71_69 = Add i32 k_65, 1_0 
                    #found literal reg Some(a2) already exist with 1_0
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,s3,a2
                    #      k_65 = i32 temp_71_69 
                    #      jump label: while.head_68 
    j       .while.head_68
                    #      label while.exit_68: 
.while.exit_68:
                    #      new_var temp_72_65:i32 
                    #      temp_72_65 = Add i32 j_61, 1_0 
                    #found literal reg Some(a2) already exist with 1_0
    li      a0, 2264
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,s1,a2
                    #      j_61 = i32 temp_72_65 
                    #      jump label: while.head_64 
    j       .while.head_64
                    #      label while.exit_64: 
.while.exit_64:
                    #      new_var temp_73_61:i32 
                    #      temp_73_61 = Add i32 i_56, 1_0 
                    #found literal reg Some(a2) already exist with 1_0
    li      a0, 2260
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,a2
                    #      i_56 = i32 temp_73_61 
                    #      jump label: while.head_60 
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
    slt     a2,a5,a4
                    #      br i1 temp_74_90, label while.body_91, label while.exit_91 
    bnez    a2, .while.body_91
    j       .while.exit_91
                    #      label while.body_91: 
.while.body_91:
                    #      new_var temp_75_92:ptr->i32 
                    #      temp_75_92 = getelementptr list_0:Array:i32:[Some(200_0)] [Some(i_56)] 
    li      a0, 2256
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2280
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 1
    li      a2, 2255
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,a5
                    #occupy reg a2 with list_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_76_92:i32 
                    #      temp_76_92 =  Call i32 getint_0() 
                    #saved register dumping to mem
    li      s1, 2324
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 2323
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 2316
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 2315
    add     s4,sp,s4
    sb      s4,0(s4)
    li      s5, 2308
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s6, 2307
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 2300
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 2299
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s9, 2292
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s10, 2268
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 2291
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 2240
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 2236
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      store temp_76_92:i32 temp_75_92:ptr->i32 
    sd      a0,0(a1)
                    #      mu list_0:362 
                    #      list_0 = chi list_0:362 
                    #      new_var temp_77_92:Array:i32:[Some(200_0)] 
                    #      temp_77_92 = load *list_0:ptr->i32 
                    #   load label list as ptr to reg
    la      a2, list
                    #occupy reg a2 with *list_0
    lw      s1,0(a2)
                    #occupy reg s1 with list_0
                    #      new_var temp_78_92:ptr->i32 
                    #      new_var temp_79_92:i32 
                    #      temp_78_92 = getelementptr temp_77_92:Array:i32:[Some(200_0)] [Some(i_56)] 
    li      a2, 0
    li      s1, 1
    mul     s2,s1,a5
    add     a2,a2,s2
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_79_92 = load temp_78_92:ptr->i32 
                    #      new_var temp_80_92:ptr->i32 
                    #      temp_80_92 = getelementptr cns_0:Array:i32:[Some(20_0)] [Some(temp_79_92)] 
    li      s1, 0
    li      s3, 1
    mul     s5,s3,s4
                    #occupy reg s5 with cns_0
    add     s1,s1,s5
    slli s1,s1,2
    add     s1,s1,s1
                    #      new_var temp_81_92:Array:i32:[Some(200_0)] 
                    #      temp_81_92 = load *list_0:ptr->i32 
                    #   load label list as ptr to reg
    la      s3, list
                    #occupy reg s3 with *list_0
    lw      s5,0(s3)
                    #occupy reg s5 with list_0
                    #      new_var temp_82_92:ptr->i32 
                    #      new_var temp_83_92:i32 
                    #      temp_82_92 = getelementptr temp_81_92:Array:i32:[Some(200_0)] [Some(i_56)] 
    li      s3, 0
    li      s5, 1
    mul     s6,s5,a5
    add     s3,s3,s6
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_83_92 = load temp_82_92:ptr->i32 
                    #      new_var temp_84_92:Array:i32:[Some(20_0)] 
                    #      temp_84_92 = load *cns_0:ptr->i32 
                    #   load label cns as ptr to reg
    la      s5, cns
                    #occupy reg s5 with *cns_0
    lw      s7,0(s5)
                    #occupy reg s7 with cns_0
                    #      new_var temp_85_92:ptr->i32 
                    #      new_var temp_86_92:i32 
                    #      temp_85_92 = getelementptr temp_84_92:Array:i32:[Some(20_0)] [Some(temp_83_92)] 
    li      s5, 0
    li      s7, 1
    mul     s9,s7,s8
    add     s5,s5,s9
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_86_92 = load temp_85_92:ptr->i32 
                    #      new_var temp_87_92:i32 
                    #      temp_87_92 = Add i32 temp_86_92, 1_0 
    li      s10, 1
    add     s11,s7,s10
                    #      store temp_87_92:i32 temp_80_92:ptr->i32 
    sd      s11,0(s1)
                    #      mu cns_0:398 
                    #      cns_0 = chi cns_0:398 
                    #      new_var temp_88_92:i32 
                    #      temp_88_92 = Add i32 i_56, 1_0 
                    #found literal reg Some(s10) already exist with 1_0
    li      a0, 2236
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a5,s10
                    #      i_56 = i32 temp_88_92 
                    #      jump label: while.head_91 
    j       .while.head_91
                    #      label while.exit_91: 
.while.exit_91:
                    #      new_var temp_89_56:Array:i32:[Some(20_0)] 
                    #      temp_89_56 = load *cns_0:ptr->i32 
                    #   load label cns as ptr to reg
    la      s10, cns
                    #occupy reg s10 with *cns_0
    sw      a0,492(sp)
    lw      a0,0(s10)
                    #occupy reg a0 with cns_0
                    #      new_var temp_90_56:ptr->i32 
                    #      new_var temp_91_56:i32 
                    #      temp_90_56 = getelementptr temp_89_56:Array:i32:[Some(20_0)] [Some(1_0)] 
    li      a0, 0
    li      s10, 1
    li      a1, 2240
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 1
    sd      a2,1424(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_91_56 = load temp_90_56:ptr->i32 
                    #      new_var temp_92_56:Array:i32:[Some(20_0)] 
                    #      temp_92_56 = load *cns_0:ptr->i32 
                    #   load label cns as ptr to reg
    la      a1, cns
                    #occupy reg a1 with *cns_0
    lw      s10,0(a1)
                    #occupy reg s10 with cns_0
                    #      new_var temp_93_56:ptr->i32 
                    #      new_var temp_94_56:i32 
                    #      temp_93_56 = getelementptr temp_92_56:Array:i32:[Some(20_0)] [Some(2_0)] 
    li      a1, 0
    li      s10, 1
    sd      a0,400(sp)
    li      a0, 2
    sw      a2,488(sp)
    mul     a2,s10,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_94_56 = load temp_93_56:ptr->i32 
                    #      new_var temp_95_56:Array:i32:[Some(20_0)] 
                    #      temp_95_56 = load *cns_0:ptr->i32 
                    #   load label cns as ptr to reg
    la      a0, cns
                    #occupy reg a0 with *cns_0
    lw      s10,0(a0)
                    #occupy reg s10 with cns_0
                    #      new_var temp_96_56:ptr->i32 
                    #      new_var temp_97_56:i32 
                    #      temp_96_56 = getelementptr temp_95_56:Array:i32:[Some(20_0)] [Some(3_0)] 
    li      a0, 0
    li      s10, 1
    sd      a1,304(sp)
    li      a1, 3
    sw      a2,392(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_97_56 = load temp_96_56:ptr->i32 
                    #      new_var temp_98_56:Array:i32:[Some(20_0)] 
                    #      temp_98_56 = load *cns_0:ptr->i32 
                    #   load label cns as ptr to reg
    la      a1, cns
                    #occupy reg a1 with *cns_0
    lw      s10,0(a1)
                    #occupy reg s10 with cns_0
                    #      new_var temp_99_56:ptr->i32 
                    #      new_var temp_100_56:i32 
                    #      temp_99_56 = getelementptr temp_98_56:Array:i32:[Some(20_0)] [Some(4_0)] 
    li      a1, 0
    li      s10, 1
    sd      a0,208(sp)
    li      a0, 4
    sw      a2,296(sp)
    mul     a2,s10,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_100_56 = load temp_99_56:ptr->i32 
                    #      new_var temp_101_56:Array:i32:[Some(20_0)] 
                    #      temp_101_56 = load *cns_0:ptr->i32 
                    #   load label cns as ptr to reg
    la      a0, cns
                    #occupy reg a0 with *cns_0
    lw      s10,0(a0)
                    #occupy reg s10 with cns_0
                    #      new_var temp_102_56:ptr->i32 
                    #      new_var temp_103_56:i32 
                    #      temp_102_56 = getelementptr temp_101_56:Array:i32:[Some(20_0)] [Some(5_0)] 
    li      a0, 0
    li      s10, 1
    sd      a1,112(sp)
    li      a1, 5
    sw      a2,200(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_103_56 = load temp_102_56:ptr->i32 
                    #      new_var temp_104_56:i32 
                    #      temp_104_56 =  Call i32 dfs_0(temp_91_56, temp_94_56, temp_97_56, temp_100_56, temp_103_56, 0_0) 
                    #saved register dumping to mem
    sd      s1,1408(sp)
    li      s1, 2232
    add     s1,sp,s1
    sw      s2,0(s1)
    sd      s3,600(sp)
    sw      s4,1420(sp)
    sd      s5,504(sp)
    sw      s6,1404(sp)
    sw      s7,500(sp)
    sw      s8,596(sp)
    sw      s9,592(sp)
    sw      s11,496(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,16(sp)
    sw      a2,104(sp)
    li      a0, 2276
    add     a0,sp,a0
    sw      a3,0(a0)
    li      a1, 2336
    add     a1,sp,a1
    sw      a4,0(a1)
    li      a2, 2332
    add     a2,sp,a2
    sw      a5,0(a2)
    li      a5, 0
                    #arg load ended
    call    dfs
    sw      a0,8(sp)
                    #      ans_56 = i32 temp_104_56 
    mv      a3, a0
                    #       Call void putint_0(ans_56) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a3,4(sp)
    sw      a0,8(sp)
                    #arg load ended
    call    putint
                    #      ret ans_56 
    li      a0, 2352
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a3, 2344
    add     a3,sp,a3
    ld      s0,0(a3)
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a4, 2360
    li      a4, 2360
    add     sp,a4,sp
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
