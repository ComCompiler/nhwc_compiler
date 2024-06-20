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
                    #      Define bubblesort_0 [arr_17] -> bubblesort_ret_0 
    .globl bubblesort
    .type bubblesort,@function
bubblesort:
                    #mem layout:|ra_bubblesort:8|s0_bubblesort:8|arr:8|i:4|j:4|temp_0:4|temp_1:4|temp_2:1|none:3|temp_3:4|temp_4:4|temp_5:4|temp_6:1|none:3|temp_7:4|temp_8:8|temp_9:4|none:4|temp_10:8|temp_11:4|temp_12:1|none:3|tmp:4|temp_13:4|temp_14:8|temp_15:4|temp_16:4|temp_17:8|temp_18:8|temp_19:4|none:4|temp_20:8|temp_21:4|temp_22:4
    addi    sp,sp,-160
    sd      ra,152(sp)
    sd      s0,144(sp)
    addi    s0,sp,160
                    #      new_var arr_17:ptr->i32 
                    #      alloc i32 i_19 
                    #      alloc i32 j_19 
                    #      alloc i32 temp_0_23 
                    #      alloc i32 temp_1_23 
                    #      alloc i1 temp_2_23 
                    #      alloc i32 temp_3_27 
                    #      alloc i32 temp_4_27 
                    #      alloc i32 temp_5_27 
                    #      alloc i1 temp_6_27 
                    #      alloc i32 temp_7_30 
                    #      alloc ptr->i32 temp_8_30 
                    #      alloc i32 temp_9_30 
                    #      alloc ptr->i32 temp_10_30 
                    #      alloc i32 temp_11_30 
                    #      alloc i1 temp_12_30 
                    #      alloc i32 tmp_32 
                    #      alloc i32 temp_13_32 
                    #      alloc ptr->i32 temp_14_32 
                    #      alloc i32 temp_15_32 
                    #      alloc i32 temp_16_32 
                    #      alloc ptr->i32 temp_17_32 
                    #      alloc ptr->i32 temp_18_32 
                    #      alloc i32 temp_19_32 
                    #      alloc ptr->i32 temp_20_32 
                    #      alloc i32 temp_21_29 
                    #      alloc i32 temp_22_25 
                    #      label L20_0: 
.L20_0:
                    #      new_var i_19:i32 
                    #      new_var j_19:i32 
                    #      i_19 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_24 
    j       .while.head_24
                    #      label while.head_24: 
.while.head_24:
                    #      new_var temp_0_23:i32 
                    #      temp_0_23 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a2, n
                    #occupy reg a2 with *n_0
    lw      a3,0(a2)
                    #      new_var temp_1_23:i32 
                    #      temp_1_23 = Sub i32 temp_0_23, 1_0 
    li      a4, 1
    sub     a5,a3,a4
                    #      new_var temp_2_23:i1 
                    #      temp_2_23 = icmp i32 Slt i_19, temp_1_23 
    slt     a6,a1,a5
                    #      br i1 temp_2_23, label while.body_24, label while.exit_24 
    bnez    a6, .while.body_24
    j       .while.exit_24
                    #      label while.body_24: 
.while.body_24:
                    #      j_19 = i32 0_0 
    li      a7, 0
                    #      jump label: while.head_28 
    j       .while.head_28
                    #      label while.head_28: 
.while.head_28:
                    #      new_var temp_3_27:i32 
                    #      temp_3_27 = Sub i32 i_19, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    sub     s1,a1,a4
                    #      new_var temp_4_27:i32 
                    #      temp_4_27 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s2, n
                    #occupy reg s2 with *n_0
    lw      s3,0(s2)
                    #      new_var temp_5_27:i32 
                    #      temp_5_27 = Sub i32 temp_4_27, temp_3_27 
    sub     s4,s3,s1
                    #      new_var temp_6_27:i1 
                    #      temp_6_27 = icmp i32 Slt j_19, temp_5_27 
    slt     s5,a7,s4
                    #      br i1 temp_6_27, label while.body_28, label while.exit_28 
    bnez    s5, .while.body_28
    j       .while.exit_28
                    #      label while.body_28: 
.while.body_28:
                    #      new_var temp_7_30:i32 
                    #      temp_7_30 = Add i32 j_19, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     s6,a7,a4
                    #      new_var temp_8_30:ptr->i32 
                    #      new_var temp_9_30:i32 
                    #      temp_8_30 = getelementptr arr_17:ptr->i32 [Some(temp_7_30)] 
    li      s7, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s7,s7,a0
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_9_30 = load temp_8_30:ptr->i32 
    lw      s8,0(s7)
                    #      new_var temp_10_30:ptr->i32 
                    #      new_var temp_11_30:i32 
                    #      temp_10_30 = getelementptr arr_17:ptr->i32 [Some(j_19)] 
    li      s9, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s9,s9,a0
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_11_30 = load temp_10_30:ptr->i32 
    lw      s10,0(s9)
                    #      new_var temp_12_30:i1 
                    #      temp_12_30 = icmp i32 Sgt temp_11_30, temp_9_30 
    slt     s11,s8,s10
                    #      br i1 temp_12_30, label branch_true_31, label branch_false_31 
    bnez    s11, .branch_true_31
    j       .branch_false_31
                    #      label branch_true_31: 
.branch_true_31:
                    #      new_var tmp_32:i32 
                    #      new_var temp_13_32:i32 
                    #      temp_13_32 = Add i32 j_19, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     a2,a7,a4
                    #      new_var temp_14_32:ptr->i32 
                    #      new_var temp_15_32:i32 
                    #      temp_14_32 = getelementptr arr_17:ptr->i32 [Some(temp_13_32)] 
    li      a4, 0
    li      s2, 1
    add     a4,a4,a0
    slli a4,a4,3
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_15_32 = load temp_14_32:ptr->i32 
    lw      s2,0(a4)
                    #      tmp_32 = i32 temp_15_32 
    sd      a0,136(sp)
    mv      a0, s2
                    #      new_var temp_16_32:i32 
                    #      temp_16_32 = Add i32 j_19, 1_0 
    sw      a0,60(sp)
    li      a0, 1
    sw      a1,132(sp)
    add     a1,a7,a0
                    #      new_var temp_17_32:ptr->i32 
                    #      temp_17_32 = getelementptr arr_17:ptr->i32 [Some(temp_16_32)] 
    li      a0, 0
    sw      a1,40(sp)
    li      a1, 1
    sw      a2,56(sp)
    sw      a3,124(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_18_32:ptr->i32 
                    #      new_var temp_19_32:i32 
                    #      temp_18_32 = getelementptr arr_17:ptr->i32 [Some(j_19)] 
    li      a1, 0
    sd      a0,32(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_19_32 = load temp_18_32:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_19_32:i32 temp_17_32:ptr->i32 
    sw      a0,20(sp)
    sd      a1,24(sp)
    sd      a1,0(a0)
                    #      mu arr_17:118 
                    #      arr_17 = chi arr_17:118 
                    #      new_var temp_20_32:ptr->i32 
                    #      temp_20_32 = getelementptr arr_17:ptr->i32 [Some(j_19)] 
    sd      a0,32(sp)
    li      a0, 0
    sw      a1,20(sp)
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store tmp_32:i32 temp_20_32:ptr->i32 
    sd      a1,0(a0)
                    #      mu arr_17:124 
                    #      arr_17 = chi arr_17:124 
                    #      jump label: branch_false_31 
    j       .branch_false_31
                    #      label branch_false_31: 
.branch_false_31:
                    #      label L21_0: 
.L21_0:
                    #      new_var temp_21_29:i32 
                    #      temp_21_29 = Add i32 j_19, 1_0 
    sd      a0,8(sp)
    li      a0, 1
    sw      a1,60(sp)
    add     a1,a7,a0
                    #      j_19 = i32 temp_21_29 
                    #      jump label: while.head_28 
    j       .while.head_28
                    #      label while.exit_28: 
.while.exit_28:
                    #      new_var temp_22_25:i32 
                    #      temp_22_25 = Add i32 i_19, 1_0 
    sw      a1,4(sp)
    li      a1, 1
    sw      a2,40(sp)
    add     a2,a0,a1
                    #      i_19 = i32 temp_22_25 
                    #      jump label: while.head_24 
    j       .while.head_24
                    #      label while.exit_24: 
.while.exit_24:
                    #      ret 0_0 
    ld      ra,152(sp)
    ld      s0,144(sp)
    sw      a0,132(sp)
    li      a0, 0
    addi    sp,sp,160
    ret
                    #      Define insertsort_0 [a_40] -> insertsort_ret_0 
    .globl insertsort
    .type insertsort,@function
insertsort:
                    #mem layout:|ra_insertsort:8|s0_insertsort:8|a:8|i:4|temp_23:4|temp_24:1|none:3|temp:4|temp_25:8|temp_26:4|j:4|temp_27:4|none:4|temp_28:8|temp_29:4|temp_30:1|temp_31:1|temp_32:1|none:1|temp_33:4|none:4|temp_34:8|temp_35:8|temp_36:4|temp_37:4|temp_38:4|none:4|temp_39:8|temp_40:4|none:4
    addi    sp,sp,-136
    sd      ra,128(sp)
    sd      s0,120(sp)
    addi    s0,sp,136
                    #      new_var a_40:ptr->i32 
                    #      alloc i32 i_42 
                    #      alloc i32 temp_23_45 
                    #      alloc i1 temp_24_45 
                    #      alloc i32 temp_47 
                    #      alloc ptr->i32 temp_25_47 
                    #      alloc i32 temp_26_47 
                    #      alloc i32 j_47 
                    #      alloc i32 temp_27_47 
                    #      alloc ptr->i32 temp_28_52 
                    #      alloc i32 temp_29_52 
                    #      alloc i1 temp_30_52 
                    #      alloc i1 temp_31_52 
                    #      alloc i1 temp_32_52 
                    #      alloc i32 temp_33_54 
                    #      alloc ptr->i32 temp_34_54 
                    #      alloc ptr->i32 temp_35_54 
                    #      alloc i32 temp_36_54 
                    #      alloc i32 temp_37_54 
                    #      alloc i32 temp_38_47 
                    #      alloc ptr->i32 temp_39_47 
                    #      alloc i32 temp_40_47 
                    #      label L19_0: 
.L19_0:
                    #      new_var i_42:i32 
                    #      i_42 = i32 1_0 
    li      a1, 1
                    #      jump label: while.head_46 
    j       .while.head_46
                    #      label while.head_46: 
.while.head_46:
                    #      new_var temp_23_45:i32 
                    #      temp_23_45 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a2, n
                    #occupy reg a2 with *n_0
    lw      a3,0(a2)
                    #      new_var temp_24_45:i1 
                    #      temp_24_45 = icmp i32 Slt i_42, temp_23_45 
    slt     a4,a1,a3
                    #      br i1 temp_24_45, label while.body_46, label while.exit_46 
    bnez    a4, .while.body_46
    j       .while.exit_46
                    #      label while.body_46: 
.while.body_46:
                    #      new_var temp_47:i32 
                    #      new_var temp_25_47:ptr->i32 
                    #      new_var temp_26_47:i32 
                    #      temp_25_47 = getelementptr a_40:ptr->i32 [Some(i_42)] 
    li      a5, 0
    li      a6, 1
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_26_47 = load temp_25_47:ptr->i32 
    lw      a7,0(a5)
                    #      temp_47 = i32 temp_26_47 
    mv      s1, a7
                    #      new_var j_47:i32 
                    #      new_var temp_27_47:i32 
                    #      temp_27_47 = Sub i32 i_42, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    sub     s2,a1,a6
                    #      j_47 = i32 temp_27_47 
    mv      s3, s2
                    #      jump label: while.head_53 
    j       .while.head_53
                    #      label while.head_53: 
.while.head_53:
                    #      new_var temp_28_52:ptr->i32 
                    #      new_var temp_29_52:i32 
                    #      temp_28_52 = getelementptr a_40:ptr->i32 [Some(j_47)] 
    li      s4, 0
                    #found literal reg Some(a6) already exist with 1_0
    add     s4,s4,a0
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_29_52 = load temp_28_52:ptr->i32 
    lw      s5,0(s4)
                    #      new_var temp_30_52:i1 
                    #      temp_30_52 = icmp i32 Slt temp_47, temp_29_52 
    slt     s6,s1,s5
                    #      new_var temp_31_52:i1 
                    #      temp_31_52 = icmp i32 Sgt j_47, -1_0 
    li      s7, -1
    slt     s8,s7,s3
                    #      new_var temp_32_52:i1 
                    #      temp_32_52 = And i1 temp_31_52, temp_30_52 
    and     s9,s8,s6
                    #      br i1 temp_32_52, label while.body_53, label while.exit_53 
    bnez    s9, .while.body_53
    j       .while.exit_53
                    #      label while.body_53: 
.while.body_53:
                    #      new_var temp_33_54:i32 
                    #      temp_33_54 = Add i32 j_47, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    add     s10,s3,a6
                    #      new_var temp_34_54:ptr->i32 
                    #      temp_34_54 = getelementptr a_40:ptr->i32 [Some(temp_33_54)] 
    li      s11, 0
                    #found literal reg Some(a6) already exist with 1_0
    add     s11,s11,a0
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
                    #      new_var temp_35_54:ptr->i32 
                    #      new_var temp_36_54:i32 
                    #      temp_35_54 = getelementptr a_40:ptr->i32 [Some(j_47)] 
    li      a2, 0
                    #found literal reg Some(a6) already exist with 1_0
    add     a2,a2,a0
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_36_54 = load temp_35_54:ptr->i32 
    lw      a6,0(a2)
                    #      store temp_36_54:i32 temp_34_54:ptr->i32 
    sd      a6,0(s11)
                    #      mu a_40:198 
                    #      a_40 = chi a_40:198 
                    #      new_var temp_37_54:i32 
                    #      temp_37_54 = Sub i32 j_47, 1_0 
    li      s7, 1
    sd      a0,112(sp)
    sub     a0,s3,s7
                    #      j_47 = i32 temp_37_54 
                    #      jump label: while.head_53 
    j       .while.head_53
                    #      label while.exit_53: 
.while.exit_53:
                    #      new_var temp_38_47:i32 
                    #      temp_38_47 = Add i32 j_47, 1_0 
                    #found literal reg Some(s7) already exist with 1_0
    sw      a0,24(sp)
    add     a0,s3,s7
                    #      new_var temp_39_47:ptr->i32 
                    #      temp_39_47 = getelementptr a_40:ptr->i32 [Some(temp_38_47)] 
    li      s7, 0
    sw      a0,20(sp)
    li      a0, 1
    sw      a1,108(sp)
    sd      a2,32(sp)
    mul     a2,a0,a1
    add     s7,s7,a2
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store temp_47:i32 temp_39_47:ptr->i32 
    sd      s1,0(s7)
                    #      mu a_40:211 
                    #      a_40 = chi a_40:211 
                    #      new_var temp_40_47:i32 
                    #      temp_40_47 = Add i32 i_42, 1_0 
    sw      a1,20(sp)
    li      a1, 1
    sd      a2,112(sp)
    add     a2,a0,a1
                    #      i_42 = i32 temp_40_47 
                    #      jump label: while.head_46 
    j       .while.head_46
                    #      label while.exit_46: 
.while.exit_46:
                    #      ret 0_0 
    ld      ra,128(sp)
    ld      s0,120(sp)
    sw      a0,108(sp)
    li      a0, 0
    addi    sp,sp,136
    ret
                    #      Define QuickSort_0 [arr_60, low_60, high_60] -> QuickSort_ret_0 
    .globl QuickSort
    .type QuickSort,@function
QuickSort:
                    #mem layout:|ra_QuickSort:8|s0_QuickSort:8|arr:8|low:4|high:4|temp_41:1|none:3|i:4|j:4|k:4|temp_42:8|temp_43:4|temp_44:1|none:3|temp_45:4|none:4|temp_46:8|temp_47:4|temp_48:1|temp_49:1|temp_50:1|none:1|temp_51:4|temp_52:1|none:3|temp_53:8|temp_54:8|temp_55:4|temp_56:4|temp_57:8|temp_58:4|temp_59:1|temp_60:1|temp_61:1|none:1|temp_62:4|temp_63:1|none:3|temp_64:8|temp_65:8|temp_66:4|temp_67:4|temp_68:8|tmp:4|temp_69:4|temp_70:4|temp_71:4|temp_72:4|none:4
    addi    sp,sp,-200
    sd      ra,192(sp)
    sd      s0,184(sp)
    addi    s0,sp,200
                    #      new_var arr_60:ptr->i32 
                    #      alloc i1 temp_41_63 
                    #      alloc i32 i_65 
                    #      alloc i32 j_65 
                    #      alloc i32 k_65 
                    #      alloc ptr->i32 temp_42_65 
                    #      alloc i32 temp_43_65 
                    #      alloc i1 temp_44_72 
                    #      alloc i32 temp_45_75 
                    #      alloc ptr->i32 temp_46_75 
                    #      alloc i32 temp_47_75 
                    #      alloc i1 temp_48_75 
                    #      alloc i1 temp_49_75 
                    #      alloc i1 temp_50_75 
                    #      alloc i32 temp_51_77 
                    #      alloc i1 temp_52_79 
                    #      alloc ptr->i32 temp_53_81 
                    #      alloc ptr->i32 temp_54_81 
                    #      alloc i32 temp_55_81 
                    #      alloc i32 temp_56_81 
                    #      alloc ptr->i32 temp_57_84 
                    #      alloc i32 temp_58_84 
                    #      alloc i1 temp_59_84 
                    #      alloc i1 temp_60_84 
                    #      alloc i1 temp_61_84 
                    #      alloc i32 temp_62_86 
                    #      alloc i1 temp_63_88 
                    #      alloc ptr->i32 temp_64_90 
                    #      alloc ptr->i32 temp_65_90 
                    #      alloc i32 temp_66_90 
                    #      alloc i32 temp_67_90 
                    #      alloc ptr->i32 temp_68_65 
                    #      alloc i32 tmp_65 
                    #      alloc i32 temp_69_65 
                    #      alloc i32 temp_70_65 
                    #      alloc i32 temp_71_65 
                    #      alloc i32 temp_72_65 
                    #      label L17_0: 
.L17_0:
                    #      new_var temp_41_63:i1 
                    #      temp_41_63 = icmp i32 Slt low_60, high_60 
    slt     a3,a1,a2
                    #      br i1 temp_41_63, label branch_true_64, label branch_false_64 
    bnez    a3, .branch_true_64
    j       .branch_false_64
                    #      label branch_true_64: 
.branch_true_64:
                    #      new_var i_65:i32 
                    #      i_65 = i32 low_60 
    mv      a4, a1
                    #      new_var j_65:i32 
                    #      j_65 = i32 high_60 
    mv      a5, a2
                    #      new_var k_65:i32 
                    #      new_var temp_42_65:ptr->i32 
                    #      new_var temp_43_65:i32 
                    #      temp_42_65 = getelementptr arr_60:ptr->i32 [Some(low_60)] 
    li      a6, 0
    li      a7, 1
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_43_65 = load temp_42_65:ptr->i32 
    lw      s1,0(a6)
                    #      k_65 = i32 temp_43_65 
    mv      s2, s1
                    #      jump label: while.head_73 
    j       .while.head_73
                    #      label while.head_73: 
.while.head_73:
                    #      new_var temp_44_72:i1 
                    #      temp_44_72 = icmp i32 Slt i_65, j_65 
    slt     s3,a4,a5
                    #      br i1 temp_44_72, label while.body_73, label while.exit_73 
    bnez    s3, .while.body_73
    j       .while.exit_73
                    #      label while.head_76: 
.while.head_76:
                    #      new_var temp_45_75:i32 
                    #      temp_45_75 = Sub i32 k_65, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    sub     s4,s2,a7
                    #      new_var temp_46_75:ptr->i32 
                    #      new_var temp_47_75:i32 
                    #      temp_46_75 = getelementptr arr_60:ptr->i32 [Some(j_65)] 
    li      s5, 0
                    #found literal reg Some(a7) already exist with 1_0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_47_75 = load temp_46_75:ptr->i32 
    lw      s6,0(s5)
                    #      new_var temp_48_75:i1 
                    #      temp_48_75 = icmp i32 Sgt temp_47_75, temp_45_75 
    slt     s7,s4,s6
                    #      new_var temp_49_75:i1 
                    #      temp_49_75 = icmp i32 Slt i_65, j_65 
    slt     s8,a4,a5
                    #      new_var temp_50_75:i1 
                    #      temp_50_75 = And i1 temp_49_75, temp_48_75 
    and     s9,s8,s7
                    #      br i1 temp_50_75, label while.body_76, label while.exit_76 
    bnez    s9, .while.body_76
    j       .while.exit_76
                    #      label while.body_76: 
.while.body_76:
                    #      new_var temp_51_77:i32 
                    #      temp_51_77 = Sub i32 j_65, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    sub     s10,a5,a7
                    #      j_65 = i32 temp_51_77 
                    #      jump label: while.head_76 
    j       .while.head_76
                    #      label while.exit_76: 
.while.exit_76:
                    #      new_var temp_52_79:i1 
                    #      temp_52_79 = icmp i32 Slt i_65, j_65 
    slt     s11,a4,a5
                    #      br i1 temp_52_79, label branch_true_80, label branch_false_80 
    bnez    s11, .branch_true_80
    j       .branch_false_80
                    #      label branch_true_80: 
.branch_true_80:
                    #      new_var temp_53_81:ptr->i32 
                    #      temp_53_81 = getelementptr arr_60:ptr->i32 [Some(i_65)] 
    li      a7, 0
    sd      a0,176(sp)
    li      a0, 1
    sw      a1,172(sp)
    mul     a1,a0,a4
    add     a7,a7,a1
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
                    #      new_var temp_54_81:ptr->i32 
                    #      new_var temp_55_81:i32 
                    #      temp_54_81 = getelementptr arr_60:ptr->i32 [Some(j_65)] 
    li      a0, 0
    sd      a1,176(sp)
    li      a1, 1
    sw      a2,168(sp)
    mul     a2,a1,a5
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_55_81 = load temp_54_81:ptr->i32 
    lw      a1,0(a0)
                    #      store temp_55_81:i32 temp_53_81:ptr->i32 
    sd      a1,0(a7)
                    #      mu arr_60:291 
                    #      arr_60 = chi arr_60:291 
                    #      new_var temp_56_81:i32 
                    #      temp_56_81 = Add i32 i_65, 1_0 
    sd      a0,88(sp)
    li      a0, 1
    sw      a1,84(sp)
    add     a1,a4,a0
                    #      i_65 = i32 temp_56_81 
                    #      jump label: branch_false_80 
    j       .branch_false_80
                    #      label branch_false_80: 
.branch_false_80:
                    #      label while.head_85: 
.while.head_85:
                    #      new_var temp_57_84:ptr->i32 
                    #      new_var temp_58_84:i32 
                    #      temp_57_84 = getelementptr arr_60:ptr->i32 [Some(i_65)] 
    li      a0, 0
    sw      a1,80(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_58_84 = load temp_57_84:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_59_84:i1 
                    #      temp_59_84 = icmp i32 Slt temp_58_84, k_65 
    sd      a0,72(sp)
    slt     a0,a1,s2
                    #      new_var temp_60_84:i1 
                    #      temp_60_84 = icmp i32 Slt i_65, j_65 
    sb      a0,67(sp)
    slt     a0,a4,a5
                    #      new_var temp_61_84:i1 
                    #      temp_61_84 = And i1 temp_60_84, temp_59_84 
    sw      a1,68(sp)
    sd      a2,176(sp)
    and     a2,a0,a1
                    #      br i1 temp_61_84, label while.body_85, label while.exit_85 
    bnez    a2, .while.body_85
    j       .while.exit_85
                    #      label while.body_85: 
.while.body_85:
                    #      new_var temp_62_86:i32 
                    #      temp_62_86 = Add i32 i_65, 1_0 
    sb      a0,66(sp)
    li      a0, 1
    sb      a1,67(sp)
    add     a1,a4,a0
                    #      i_65 = i32 temp_62_86 
                    #      jump label: while.head_85 
    j       .while.head_85
                    #      label while.exit_85: 
.while.exit_85:
                    #      new_var temp_63_88:i1 
                    #      temp_63_88 = icmp i32 Slt i_65, j_65 
    slt     a0,a4,a5
                    #      br i1 temp_63_88, label branch_true_89, label branch_false_89 
    bnez    a0, .branch_true_89
    j       .branch_false_89
                    #      label branch_true_89: 
.branch_true_89:
                    #      new_var temp_64_90:ptr->i32 
                    #      temp_64_90 = getelementptr arr_60:ptr->i32 [Some(j_65)] 
    sb      a0,59(sp)
    li      a0, 0
    sw      a1,60(sp)
    li      a1, 1
    sb      a2,65(sp)
    mul     a2,a1,a5
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_65_90:ptr->i32 
                    #      new_var temp_66_90:i32 
                    #      temp_65_90 = getelementptr arr_60:ptr->i32 [Some(i_65)] 
    li      a1, 0
    sd      a0,48(sp)
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_66_90 = load temp_65_90:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_66_90:i32 temp_64_90:ptr->i32 
    sw      a0,36(sp)
    sd      a1,40(sp)
    sd      a1,0(a0)
                    #      mu arr_60:337 
                    #      arr_60 = chi arr_60:337 
                    #      new_var temp_67_90:i32 
                    #      temp_67_90 = Sub i32 j_65, 1_0 
    sd      a0,48(sp)
    li      a0, 1
    sw      a1,36(sp)
    sub     a1,a5,a0
                    #      j_65 = i32 temp_67_90 
                    #      jump label: branch_false_89 
    j       .branch_false_89
                    #      label branch_false_89: 
.branch_false_89:
                    #      jump label: while.head_73 
    j       .while.head_73
                    #      label while.exit_73: 
.while.exit_73:
                    #      new_var temp_68_65:ptr->i32 
                    #      temp_68_65 = getelementptr arr_60:ptr->i32 [Some(i_65)] 
    li      a0, 0
    sw      a1,32(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store k_65:i32 temp_68_65:ptr->i32 
    sd      s2,0(a0)
                    #      mu arr_60:347 
                    #      arr_60 = chi arr_60:347 
                    #      new_var tmp_65:i32 
                    #      new_var temp_69_65:i32 
                    #      temp_69_65 = Sub i32 i_65, 1_0 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a0,24(sp)
    sub     a0,a4,a1
                    #      tmp_65 = i32 temp_69_65 
    mv      a1, a0
                    #      new_var temp_70_65:i32 
                    #      temp_70_65 =  Call i32 QuickSort_0(arr_60, low_60, tmp_65) 
                    #saved register dumping to mem
    sw      s1,140(sp)
    sw      s2,152(sp)
    sb      s3,139(sp)
    sw      s4,132(sp)
    sd      s5,120(sp)
    sw      s6,116(sp)
    sb      s7,115(sp)
    sb      s8,114(sp)
    sb      s9,113(sp)
    sw      s10,108(sp)
    sb      s11,107(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a2,176(sp)
    sw      a0,16(sp)
    sw      a1,20(sp)
                    #arg load ended
    call    QuickSort
    sw      a0,12(sp)
                    #      tmp_65 = i32 temp_70_65 
    mv      a1, a0
                    #      new_var temp_71_65:i32 
                    #      temp_71_65 = Add i32 i_65, 1_0 
    li      a2, 1
    add     s1,a4,a2
                    #      tmp_65 = i32 temp_71_65 
                    #      new_var temp_72_65:i32 
                    #      temp_72_65 =  Call i32 QuickSort_0(arr_60, tmp_65, high_60) 
                    #saved register dumping to mem
    sw      s1,8(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,12(sp)
    sw      a1,20(sp)
                    #arg load ended
    call    QuickSort
    sw      a0,4(sp)
                    #      tmp_65 = i32 temp_72_65 
    mv      a1, a0
                    #      jump label: branch_false_64 
    j       .branch_false_64
                    #      label branch_false_64: 
.branch_false_64:
                    #      label L18_0: 
.L18_0:
                    #      ret 0_0 
    ld      ra,192(sp)
    ld      s0,184(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,200
    ret
                    #      Define getMid_0 [arr_100] -> getMid_ret_0 
    .globl getMid
    .type getMid,@function
getMid:
                    #mem layout:|ra_getMid:8|s0_getMid:8|arr:8|mid:4|temp_73:4|temp_74:4|temp_75:1|none:3|temp_76:4|temp_77:4|temp_78:4|none:4|temp_79:8|temp_80:4|none:4|temp_81:8|temp_82:4|temp_83:4|temp_84:4|temp_85:4|temp_86:4|none:4|temp_87:8|temp_88:4|none:4
    addi    sp,sp,-120
    sd      ra,112(sp)
    sd      s0,104(sp)
    addi    s0,sp,120
                    #      new_var arr_100:ptr->i32 
                    #      alloc i32 mid_102 
                    #      alloc i32 temp_73_104 
                    #      alloc i32 temp_74_104 
                    #      alloc i1 temp_75_104 
                    #      alloc i32 temp_76_106 
                    #      alloc i32 temp_77_106 
                    #      alloc i32 temp_78_106 
                    #      alloc ptr->i32 temp_79_106 
                    #      alloc i32 temp_80_106 
                    #      alloc ptr->i32 temp_81_106 
                    #      alloc i32 temp_82_106 
                    #      alloc i32 temp_83_106 
                    #      alloc i32 temp_84_106 
                    #      alloc i32 temp_85_109 
                    #      alloc i32 temp_86_109 
                    #      alloc ptr->i32 temp_87_109 
                    #      alloc i32 temp_88_109 
                    #      label L14_0: 
.L14_0:
                    #      new_var mid_102:i32 
                    #      jump label: L15_0 
    j       .L15_0
                    #      label L15_0: 
.L15_0:
                    #      new_var temp_73_104:i32 
                    #      temp_73_104 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      a2,0(a1)
                    #      new_var temp_74_104:i32 
                    #      temp_74_104 = Mod i32 temp_73_104, 2_0 
    li      a3, 2
    rem     a4,a2,a3
                    #      new_var temp_75_104:i1 
                    #      temp_75_104 = icmp i32 Eq temp_74_104, 0_0 
    li      a5, 0
    xor     a6,a4,a5
    seqz    a6, a6
                    #      br i1 temp_75_104, label branch_true_105, label branch_false_105 
    bnez    a6, .branch_true_105
    j       .branch_false_105
                    #      label branch_true_105: 
.branch_true_105:
                    #      new_var temp_76_106:i32 
                    #      temp_76_106 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a7, n
                    #occupy reg a7 with *n_0
    lw      s1,0(a7)
                    #      new_var temp_77_106:i32 
                    #      temp_77_106 = Div i32 temp_76_106, 2_0 
                    #found literal reg Some(a3) already exist with 2_0
    div     s2,s1,a3
                    #      mid_102 = i32 temp_77_106 
    mv      s3, s2
                    #      new_var temp_78_106:i32 
                    #      temp_78_106 = Sub i32 mid_102, 1_0 
    li      s4, 1
    sub     s5,s3,s4
                    #      new_var temp_79_106:ptr->i32 
                    #      new_var temp_80_106:i32 
                    #      temp_79_106 = getelementptr arr_100:ptr->i32 [Some(temp_78_106)] 
    li      s6, 0
                    #found literal reg Some(s4) already exist with 1_0
    add     s6,s6,a0
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_80_106 = load temp_79_106:ptr->i32 
    lw      s7,0(s6)
                    #      new_var temp_81_106:ptr->i32 
                    #      new_var temp_82_106:i32 
                    #      temp_81_106 = getelementptr arr_100:ptr->i32 [Some(mid_102)] 
    li      s8, 0
                    #found literal reg Some(s4) already exist with 1_0
    add     s8,s8,a0
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_82_106 = load temp_81_106:ptr->i32 
    lw      s9,0(s8)
                    #      new_var temp_83_106:i32 
                    #      temp_83_106 = Add i32 temp_82_106, temp_80_106 
    add     s10,s9,s7
                    #      new_var temp_84_106:i32 
                    #      temp_84_106 = Div i32 temp_83_106, 2_0 
                    #found literal reg Some(a3) already exist with 2_0
    div     s11,s10,a3
                    #      ret temp_84_106 
    ld      ra,112(sp)
    ld      s0,104(sp)
    sw      s11,28(sp)
    sd      a0,96(sp)
    addi    sp,sp,120
    ret
                    #      label branch_false_105: 
.branch_false_105:
                    #      new_var temp_85_109:i32 
                    #      temp_85_109 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s11, n
                    #occupy reg s11 with *n_0
    lw      a1,0(s11)
                    #      new_var temp_86_109:i32 
                    #      temp_86_109 = Div i32 temp_85_109, 2_0 
                    #found literal reg Some(a3) already exist with 2_0
    div     a5,a1,a3
                    #      mid_102 = i32 temp_86_109 
                    #      new_var temp_87_109:ptr->i32 
                    #      new_var temp_88_109:i32 
                    #      temp_87_109 = getelementptr arr_100:ptr->i32 [Some(mid_102)] 
    li      a3, 0
                    #found literal reg Some(s4) already exist with 1_0
    mul     a7,s4,s3
    add     a3,a3,a7
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_88_109 = load temp_87_109:ptr->i32 
    lw      s4,0(a3)
                    #      ret temp_88_109 
    ld      ra,112(sp)
    ld      s0,104(sp)
    sw      s4,4(sp)
    sw      a0,28(sp)
    addi    sp,sp,120
    ret
                    #      label L16_0: 
.L16_0:
                    #      Define getMost_0 [arr_112] -> getMost_ret_0 
    .globl getMost
    .type getMost,@function
getMost:
                    #mem layout:|ra_getMost:8|s0_getMost:8|arr:8|count:4000|i:4|temp_89:1|none:3|temp_90:8|temp_91:4|max:4|number:4|temp_92:4|temp_93:1|none:3|num:4|temp_94:8|temp_95:4|none:4|temp_96:8|temp_97:8|temp_98:4|temp_99:4|temp_100:8|temp_101:4|temp_102:1|none:3|temp_103:8|temp_104:4|temp_105:4
    li      a1, -4136
    li      a1, -4136
    add     sp,a1,sp
    li      a2, 4128
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 4120
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 4136
    li      a4, 4136
    add     s0,a4,sp
                    #      new_var arr_112:ptr->i32 
                    #      alloc Array:i32:[Some(1000_0)] count_114 
                    #      alloc i32 i_114 
                    #      alloc i1 temp_89_118 
                    #      alloc ptr->i32 temp_90_120 
                    #      alloc i32 temp_91_120 
                    #      alloc i32 max_114 
                    #      alloc i32 number_114 
                    #      alloc i32 temp_92_127 
                    #      alloc i1 temp_93_127 
                    #      alloc i32 num_129 
                    #      alloc ptr->i32 temp_94_129 
                    #      alloc i32 temp_95_129 
                    #      alloc ptr->i32 temp_96_129 
                    #      alloc ptr->i32 temp_97_129 
                    #      alloc i32 temp_98_129 
                    #      alloc i32 temp_99_129 
                    #      alloc ptr->i32 temp_100_133 
                    #      alloc i32 temp_101_133 
                    #      alloc i1 temp_102_133 
                    #      alloc ptr->i32 temp_103_135 
                    #      alloc i32 temp_104_135 
                    #      alloc i32 temp_105_129 
                    #      label L11_0: 
.L11_0:
                    #      new_var count_114:Array:i32:[Some(1000_0)] 
                    #      new_var i_114:i32 
                    #      i_114 = i32 0_0 
    li      a5, 0
                    #      jump label: while.head_119 
    j       .while.head_119
                    #      label while.head_119: 
.while.head_119:
                    #      new_var temp_89_118:i1 
                    #      temp_89_118 = icmp i32 Slt i_114, 1000_0 
    li      a6, 1000
    slt     a7,a5,a6
                    #      br i1 temp_89_118, label while.body_119, label while.exit_119 
    bnez    a7, .while.body_119
    j       .while.exit_119
                    #      label while.body_119: 
.while.body_119:
                    #      new_var temp_90_120:ptr->i32 
                    #      temp_90_120 = getelementptr count_114:Array:i32:[Some(1000_0)] [Some(i_114)] 
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a5
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      store 0_0:i32 temp_90_120:ptr->i32 
    li      s4, 0
    sd      s4,0(s1)
                    #      mu count_114:445 
                    #      count_114 = chi count_114:445 
                    #      new_var temp_91_120:i32 
                    #      temp_91_120 = Add i32 i_114, 1_0 
                    #found literal reg Some(s2) already exist with 1_0
    add     s5,a5,s2
                    #      i_114 = i32 temp_91_120 
                    #      jump label: while.head_119 
    j       .while.head_119
                    #      label while.exit_119: 
.while.exit_119:
                    #      i_114 = i32 0_0 
                    #      new_var max_114:i32 
                    #      new_var number_114:i32 
                    #      max_114 = i32 0_0 
    li      s6, 0
                    #      jump label: while.head_128 
    j       .while.head_128
                    #      label while.head_128: 
.while.head_128:
                    #      new_var temp_92_127:i32 
                    #      temp_92_127 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s7, n
                    #occupy reg s7 with *n_0
    lw      s8,0(s7)
                    #      new_var temp_93_127:i1 
                    #      temp_93_127 = icmp i32 Slt i_114, temp_92_127 
    slt     s9,a5,s8
                    #      br i1 temp_93_127, label while.body_128, label while.exit_128 
    bnez    s9, .while.body_128
    j       .while.exit_128
                    #      label while.body_128: 
.while.body_128:
                    #      new_var num_129:i32 
                    #      new_var temp_94_129:ptr->i32 
                    #      new_var temp_95_129:i32 
                    #      temp_94_129 = getelementptr arr_112:ptr->i32 [Some(i_114)] 
    li      s10, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_95_129 = load temp_94_129:ptr->i32 
    lw      s11,0(s10)
                    #      num_129 = i32 temp_95_129 
    mv      a1, s11
                    #      new_var temp_96_129:ptr->i32 
                    #      temp_96_129 = getelementptr count_114:Array:i32:[Some(1000_0)] [Some(num_129)] 
    li      a2, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     a2,a2,s3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_97_129:ptr->i32 
                    #      new_var temp_98_129:i32 
                    #      temp_97_129 = getelementptr count_114:Array:i32:[Some(1000_0)] [Some(num_129)] 
    li      a3, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     a3,a3,s3
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_98_129 = load temp_97_129:ptr->i32 
    lw      a4,0(a3)
                    #      new_var temp_99_129:i32 
                    #      temp_99_129 = Add i32 temp_98_129, 1_0 
                    #found literal reg Some(s2) already exist with 1_0
    add     a6,a4,s2
                    #      store temp_99_129:i32 temp_96_129:ptr->i32 
    sd      a6,0(a2)
                    #      mu count_114:490 
                    #      count_114 = chi count_114:490 
                    #      jump label: L12_0 
    j       .L12_0
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_100_133:ptr->i32 
                    #      new_var temp_101_133:i32 
                    #      temp_100_133 = getelementptr count_114:Array:i32:[Some(1000_0)] [Some(num_129)] 
    li      s2, 0
    li      s4, 1
    add     s2,s2,s3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_101_133 = load temp_100_133:ptr->i32 
    lw      s4,0(s2)
                    #      new_var temp_102_133:i1 
                    #      temp_102_133 = icmp i32 Sgt temp_101_133, max_114 
    slt     s7,s6,s4
                    #      br i1 temp_102_133, label branch_true_134, label branch_false_134 
    bnez    s7, .branch_true_134
    j       .branch_false_134
                    #      label branch_true_134: 
.branch_true_134:
                    #      new_var temp_103_135:ptr->i32 
                    #      new_var temp_104_135:i32 
                    #      temp_103_135 = getelementptr count_114:Array:i32:[Some(1000_0)] [Some(num_129)] 
    li      a0, 4112
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    sw      a1,72(sp)
    li      a1, 1
    sd      a2,48(sp)
    add     a0,a0,s3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_104_135 = load temp_103_135:ptr->i32 
    lw      a1,0(a0)
                    #      max_114 = i32 temp_104_135 
                    #      number_114 = i32 num_129 
    sd      a0,8(sp)
    mv      a0, a2
                    #      jump label: branch_false_134 
    j       .branch_false_134
                    #      label branch_false_134: 
.branch_false_134:
                    #      label L13_0: 
.L13_0:
                    #      new_var temp_105_129:i32 
                    #      temp_105_129 = Add i32 i_114, 1_0 
    sw      a0,84(sp)
    li      a0, 1
    sw      a1,4(sp)
    add     a1,a5,a0
                    #      i_114 = i32 temp_105_129 
                    #      jump label: while.head_128 
    j       .while.head_128
                    #      label while.exit_128: 
.while.exit_128:
                    #      ret number_114 
    li      a0, 4128
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a0, 4128
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 4120
    add     a0,sp,a0
    ld      s0,0(a0)
    li      a0, 4120
    add     a0,sp,a0
    sd      a0,0(a0)
    sw      a1,0(sp)
    li      a1, 4136
    li      a1, 4136
    add     sp,a1,sp
    ret
                    #      Define revert_0 [arr_140] -> revert_ret_0 
    .globl revert
    .type revert,@function
revert:
                    #mem layout:|ra_revert:8|s0_revert:8|arr:8|temp:4|i:4|j:4|temp_106:1|none:3|temp_107:8|temp_108:4|none:4|temp_109:8|temp_110:8|temp_111:4|none:4|temp_112:8|temp_113:4|temp_114:4
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
                    #      new_var arr_140:ptr->i32 
                    #      alloc i32 temp_142 
                    #      alloc i32 i_142 
                    #      alloc i32 j_142 
                    #      alloc i1 temp_106_148 
                    #      alloc ptr->i32 temp_107_150 
                    #      alloc i32 temp_108_150 
                    #      alloc ptr->i32 temp_109_150 
                    #      alloc ptr->i32 temp_110_150 
                    #      alloc i32 temp_111_150 
                    #      alloc ptr->i32 temp_112_150 
                    #      alloc i32 temp_113_150 
                    #      alloc i32 temp_114_150 
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_142:i32 
                    #      new_var i_142:i32 
                    #      new_var j_142:i32 
                    #      i_142 = i32 0_0 
    li      a1, 0
                    #      j_142 = i32 0_0 
    li      a2, 0
                    #      jump label: while.head_149 
    j       .while.head_149
                    #      label while.head_149: 
.while.head_149:
                    #      new_var temp_106_148:i1 
                    #      temp_106_148 = icmp i32 Slt i_142, j_142 
    slt     a3,a1,a2
                    #      br i1 temp_106_148, label while.body_149, label while.exit_149 
    bnez    a3, .while.body_149
    j       .while.exit_149
                    #      label while.body_149: 
.while.body_149:
                    #      new_var temp_107_150:ptr->i32 
                    #      new_var temp_108_150:i32 
                    #      temp_107_150 = getelementptr arr_140:ptr->i32 [Some(i_142)] 
    li      a4, 0
    li      a5, 1
    add     a4,a4,a0
    slli a4,a4,3
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_108_150 = load temp_107_150:ptr->i32 
    lw      a6,0(a4)
                    #      temp_142 = i32 temp_108_150 
    mv      a7, a6
                    #      new_var temp_109_150:ptr->i32 
                    #      temp_109_150 = getelementptr arr_140:ptr->i32 [Some(i_142)] 
    li      s1, 0
                    #found literal reg Some(a5) already exist with 1_0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      new_var temp_110_150:ptr->i32 
                    #      new_var temp_111_150:i32 
                    #      temp_110_150 = getelementptr arr_140:ptr->i32 [Some(j_142)] 
    li      s2, 0
                    #found literal reg Some(a5) already exist with 1_0
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_111_150 = load temp_110_150:ptr->i32 
    lw      s3,0(s2)
                    #      store temp_111_150:i32 temp_109_150:ptr->i32 
    sd      s3,0(s1)
                    #      mu arr_140:551 
                    #      arr_140 = chi arr_140:551 
                    #      new_var temp_112_150:ptr->i32 
                    #      temp_112_150 = getelementptr arr_140:ptr->i32 [Some(j_142)] 
    li      s4, 0
                    #found literal reg Some(a5) already exist with 1_0
    add     s4,s4,a0
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      store temp_142:i32 temp_112_150:ptr->i32 
    sd      a7,0(s4)
                    #      mu arr_140:557 
                    #      arr_140 = chi arr_140:557 
                    #      new_var temp_113_150:i32 
                    #      temp_113_150 = Add i32 i_142, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    add     s5,a1,a5
                    #      i_142 = i32 temp_113_150 
                    #      new_var temp_114_150:i32 
                    #      temp_114_150 = Sub i32 j_142, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    sub     s6,a2,a5
                    #      j_142 = i32 temp_114_150 
                    #      jump label: while.head_149 
    j       .while.head_149
                    #      label while.exit_149: 
.while.exit_149:
                    #      ret 0_0 
    ld      ra,88(sp)
    ld      s0,80(sp)
    sd      a0,72(sp)
    li      a0, 0
    addi    sp,sp,96
    ret
                    #      Define arrCopy_0 [src_157, target_157] -> arrCopy_ret_0 
    .globl arrCopy
    .type arrCopy,@function
arrCopy:
                    #mem layout:|ra_arrCopy:8|s0_arrCopy:8|src:8|target:8|i:4|temp_115:4|temp_116:1|none:7|temp_117:8|temp_118:8|temp_119:4|temp_120:4
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
                    #      new_var src_157:ptr->i32 
                    #      new_var target_157:ptr->i32 
                    #      alloc i32 i_159 
                    #      alloc i32 temp_115_162 
                    #      alloc i1 temp_116_162 
                    #      alloc ptr->i32 temp_117_164 
                    #      alloc ptr->i32 temp_118_164 
                    #      alloc i32 temp_119_164 
                    #      alloc i32 temp_120_164 
                    #      label L9_0: 
.L9_0:
                    #      new_var i_159:i32 
                    #      i_159 = i32 0_0 
    li      a2, 0
                    #      jump label: while.head_163 
    j       .while.head_163
                    #      label while.head_163: 
.while.head_163:
                    #      new_var temp_115_162:i32 
                    #      temp_115_162 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a3, n
                    #occupy reg a3 with *n_0
    lw      a4,0(a3)
                    #      new_var temp_116_162:i1 
                    #      temp_116_162 = icmp i32 Slt i_159, temp_115_162 
    slt     a5,a2,a4
                    #      br i1 temp_116_162, label while.body_163, label while.exit_163 
    bnez    a5, .while.body_163
    j       .while.exit_163
                    #      label while.body_163: 
.while.body_163:
                    #      new_var temp_117_164:ptr->i32 
                    #      temp_117_164 = getelementptr target_157:ptr->i32 [Some(i_159)] 
    li      a6, 0
    li      a7, 1
    add     a6,a6,a1
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
                    #      new_var temp_118_164:ptr->i32 
                    #      new_var temp_119_164:i32 
                    #      temp_118_164 = getelementptr src_157:ptr->i32 [Some(i_159)] 
    li      s1, 0
                    #found literal reg Some(a7) already exist with 1_0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_119_164 = load temp_118_164:ptr->i32 
    lw      s2,0(s1)
                    #      store temp_119_164:i32 temp_117_164:ptr->i32 
    sd      s2,0(a6)
                    #      mu target_157:593 
                    #      target_157 = chi target_157:593 
                    #      new_var temp_120_164:i32 
                    #      temp_120_164 = Add i32 i_159, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    add     s3,a2,a7
                    #      i_159 = i32 temp_120_164 
                    #      jump label: while.head_163 
    j       .while.head_163
                    #      label while.exit_163: 
.while.exit_163:
                    #      ret 0_0 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sd      a0,48(sp)
    li      a0, 0
    addi    sp,sp,72
    ret
                    #      Define calSum_0 [arr_168, stride_168] -> calSum_ret_0 
    .globl calSum
    .type calSum,@function
calSum:
                    #mem layout:|ra_calSum:8|s0_calSum:8|arr:8|stride:4|sum:4|i:4|temp_121:4|temp_122:1|none:7|temp_123:8|temp_124:4|temp_125:4|temp_126:4|temp_127:4|temp_128:1|none:7|temp_129:8|temp_130:4|none:4|temp_131:8
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,88(sp)
    addi    s0,sp,104
                    #      new_var arr_168:ptr->i32 
                    #      alloc i32 sum_170 
                    #      alloc i32 i_170 
                    #      alloc i32 temp_121_175 
                    #      alloc i1 temp_122_175 
                    #      alloc ptr->i32 temp_123_177 
                    #      alloc i32 temp_124_177 
                    #      alloc i32 temp_125_177 
                    #      alloc i32 temp_126_179 
                    #      alloc i32 temp_127_179 
                    #      alloc i1 temp_128_179 
                    #      alloc ptr->i32 temp_129_181 
                    #      alloc i32 temp_130_177 
                    #      alloc ptr->i32 temp_131_183 
                    #      label L5_0: 
.L5_0:
                    #      new_var sum_170:i32 
                    #      sum_170 = i32 0_0 
    li      a2, 0
                    #      new_var i_170:i32 
                    #      i_170 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_176 
    j       .while.head_176
                    #      label while.head_176: 
.while.head_176:
                    #      new_var temp_121_175:i32 
                    #      temp_121_175 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a4, n
                    #occupy reg a4 with *n_0
    lw      a5,0(a4)
                    #      new_var temp_122_175:i1 
                    #      temp_122_175 = icmp i32 Slt i_170, temp_121_175 
    slt     a6,a3,a5
                    #      br i1 temp_122_175, label while.body_176, label while.exit_176 
    bnez    a6, .while.body_176
    j       .while.exit_176
                    #      label while.body_176: 
.while.body_176:
                    #      new_var temp_123_177:ptr->i32 
                    #      new_var temp_124_177:i32 
                    #      temp_123_177 = getelementptr arr_168:ptr->i32 [Some(i_170)] 
    li      a7, 0
    li      s1, 1
    add     a7,a7,a0
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_124_177 = load temp_123_177:ptr->i32 
    lw      s2,0(a7)
                    #      new_var temp_125_177:i32 
                    #      temp_125_177 = Add i32 sum_170, temp_124_177 
    add     s3,a2,s2
                    #      sum_170 = i32 temp_125_177 
                    #      jump label: L6_0 
    j       .L6_0
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_126_179:i32 
                    #      temp_126_179 = Sub i32 1_0, stride_168 
                    #found literal reg Some(s1) already exist with 1_0
    sub     s4,s1,a1
                    #      new_var temp_127_179:i32 
                    #      temp_127_179 = Mod i32 i_170, stride_168 
    rem     s5,a3,a1
                    #      new_var temp_128_179:i1 
                    #      temp_128_179 = icmp i32 Ne temp_127_179, temp_126_179 
    xor     s6,s5,s4
    snez    s6, s6
                    #      br i1 temp_128_179, label branch_true_180, label branch_false_180 
    bnez    s6, .branch_true_180
    j       .branch_false_180
                    #      label branch_true_180: 
.branch_true_180:
                    #      new_var temp_129_181:ptr->i32 
                    #      temp_129_181 = getelementptr arr_168:ptr->i32 [Some(i_170)] 
    li      s7, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     s7,s7,a0
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 0_0:i32 temp_129_181:ptr->i32 
    li      s8, 0
    sd      s8,0(s7)
                    #      mu arr_168:644 
                    #      arr_168 = chi arr_168:644 
                    #      jump label: L7_0 
    j       .L7_0
                    #      label branch_false_180: 
.branch_false_180:
                    #      new_var temp_131_183:ptr->i32 
                    #      temp_131_183 = getelementptr arr_168:ptr->i32 [Some(i_170)] 
    li      s9, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     s9,s9,a0
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store sum_170:i32 temp_131_183:ptr->i32 
    sd      a2,0(s9)
                    #      mu arr_168:654 
                    #      arr_168 = chi arr_168:654 
                    #      sum_170 = i32 0_0 
                    #      jump label: L7_0 
    j       .L7_0
                    #      label L7_0: 
.L7_0:
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_130_177:i32 
                    #      temp_130_177 = Add i32 i_170, 1_0 
                    #found literal reg Some(s1) already exist with 1_0
    add     s10,a3,s1
                    #      i_170 = i32 temp_130_177 
                    #      jump label: while.head_176 
    j       .while.head_176
                    #      label while.exit_176: 
.while.exit_176:
                    #      ret 0_0 
    ld      ra,96(sp)
    ld      s0,88(sp)
    sd      a0,80(sp)
    li      a0, 0
    addi    sp,sp,104
    ret
                    #      Define avgPooling_0 [arr_188, stride_188] -> avgPooling_ret_0 
    .globl avgPooling
    .type avgPooling,@function
avgPooling:
                    #mem layout:|ra_avgPooling:8|s0_avgPooling:8|arr:8|stride:4|sum:4|i:4|lastnum:4|temp_132:4|temp_133:1|none:3|temp_134:4|temp_135:1|none:3|temp_136:8|temp_137:4|temp_138:4|temp_139:4|temp_140:4|temp_141:1|none:7|temp_142:8|temp_143:4|none:4|temp_144:8|temp_145:4|none:4|temp_146:8|temp_147:4|temp_148:4|temp_149:4|temp_150:4|temp_151:4|none:4|temp_152:8|temp_153:4|temp_154:4|temp_155:4|none:4|temp_156:8|temp_157:4|temp_158:4|temp_159:4|temp_160:4|temp_161:4|temp_162:1|none:3|temp_163:8|temp_164:4|none:4
    addi    sp,sp,-224
    sd      ra,216(sp)
    sd      s0,208(sp)
    addi    s0,sp,224
                    #      new_var arr_188:ptr->i32 
                    #      alloc i32 sum_190 
                    #      alloc i32 i_190 
                    #      alloc i32 lastnum_190 
                    #      alloc i32 temp_132_196 
                    #      alloc i1 temp_133_196 
                    #      alloc i32 temp_134_199 
                    #      alloc i1 temp_135_199 
                    #      alloc ptr->i32 temp_136_201 
                    #      alloc i32 temp_137_201 
                    #      alloc i32 temp_138_201 
                    #      alloc i32 temp_139_198 
                    #      alloc i32 temp_140_203 
                    #      alloc i1 temp_141_203 
                    #      alloc ptr->i32 temp_142_205 
                    #      alloc i32 temp_143_205 
                    #      alloc ptr->i32 temp_144_205 
                    #      alloc i32 temp_145_205 
                    #      alloc ptr->i32 temp_146_208 
                    #      alloc i32 temp_147_208 
                    #      alloc i32 temp_148_208 
                    #      alloc i32 temp_149_208 
                    #      alloc i32 temp_150_208 
                    #      alloc i32 temp_151_208 
                    #      alloc ptr->i32 temp_152_208 
                    #      alloc i32 temp_153_208 
                    #      alloc i32 temp_154_208 
                    #      alloc i32 temp_155_208 
                    #      alloc ptr->i32 temp_156_208 
                    #      alloc i32 temp_157_208 
                    #      alloc i32 temp_158_190 
                    #      alloc i32 temp_159_190 
                    #      alloc i32 temp_160_190 
                    #      alloc i32 temp_161_214 
                    #      alloc i1 temp_162_214 
                    #      alloc ptr->i32 temp_163_216 
                    #      alloc i32 temp_164_216 
                    #      label L1_0: 
.L1_0:
                    #      new_var sum_190:i32 
                    #      new_var i_190:i32 
                    #      i_190 = i32 0_0 
    li      a2, 0
                    #      sum_190 = i32 0_0 
    li      a3, 0
                    #      new_var lastnum_190:i32 
                    #      jump label: while.head_197 
    j       .while.head_197
                    #      label while.head_197: 
.while.head_197:
                    #      new_var temp_132_196:i32 
                    #      temp_132_196 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a4, n
                    #occupy reg a4 with *n_0
    lw      a5,0(a4)
                    #      new_var temp_133_196:i1 
                    #      temp_133_196 = icmp i32 Slt i_190, temp_132_196 
    slt     a6,a2,a5
                    #      br i1 temp_133_196, label while.body_197, label while.exit_197 
    bnez    a6, .while.body_197
    j       .while.exit_197
                    #      label while.body_197: 
.while.body_197:
                    #      new_var temp_134_199:i32 
                    #      temp_134_199 = Sub i32 stride_188, 1_0 
    li      a7, 1
    sub     s1,a1,a7
                    #      new_var temp_135_199:i1 
                    #      temp_135_199 = icmp i32 Slt i_190, temp_134_199 
    slt     s2,a2,s1
                    #      br i1 temp_135_199, label branch_true_200, label branch_false_200 
    bnez    s2, .branch_true_200
    j       .branch_false_200
                    #      label branch_true_200: 
.branch_true_200:
                    #      new_var temp_136_201:ptr->i32 
                    #      new_var temp_137_201:i32 
                    #      temp_136_201 = getelementptr arr_188:ptr->i32 [Some(i_190)] 
    li      s3, 0
                    #found literal reg Some(a7) already exist with 1_0
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_137_201 = load temp_136_201:ptr->i32 
    lw      s4,0(s3)
                    #      new_var temp_138_201:i32 
                    #      temp_138_201 = Add i32 sum_190, temp_137_201 
    add     s5,a3,s4
                    #      sum_190 = i32 temp_138_201 
                    #      jump label: L3_0 
    j       .L3_0
                    #      label branch_false_200: 
.branch_false_200:
                    #      new_var temp_140_203:i32 
                    #      temp_140_203 = Sub i32 stride_188, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    sub     s6,a1,a7
                    #      new_var temp_141_203:i1 
                    #      temp_141_203 = icmp i32 Eq i_190, temp_140_203 
    xor     s7,a2,s6
    seqz    s7, s7
                    #      br i1 temp_141_203, label branch_true_204, label branch_false_204 
    bnez    s7, .branch_true_204
    j       .branch_false_204
                    #      label branch_true_204: 
.branch_true_204:
                    #      new_var temp_142_205:ptr->i32 
                    #      new_var temp_143_205:i32 
                    #      temp_142_205 = getelementptr arr_188:ptr->i32 [Some(0_0)] 
    li      s8, 0
                    #found literal reg Some(a7) already exist with 1_0
    li      s9, 0
    add     s8,s8,a0
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_143_205 = load temp_142_205:ptr->i32 
    lw      s10,0(s8)
                    #      lastnum_190 = i32 temp_143_205 
    mv      s11, s10
                    #      new_var temp_144_205:ptr->i32 
                    #      temp_144_205 = getelementptr arr_188:ptr->i32 [Some(0_0)] 
    li      a4, 0
                    #found literal reg Some(a7) already exist with 1_0
                    #found literal reg Some(s9) already exist with 0_0
    add     a4,a4,a0
    slli a4,a4,3
    add     a4,a4,sp
    add     a4,a4,a4
                    #      new_var temp_145_205:i32 
                    #      temp_145_205 = Div i32 sum_190, stride_188 
    div     a7,a3,a1
                    #      store temp_145_205:i32 temp_144_205:ptr->i32 
    sd      a7,0(a4)
                    #      mu arr_188:724 
                    #      arr_188 = chi arr_188:724 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_204: 
.branch_false_204:
                    #      new_var temp_146_208:ptr->i32 
                    #      new_var temp_147_208:i32 
                    #      temp_146_208 = getelementptr arr_188:ptr->i32 [Some(i_190)] 
    li      s9, 0
    sd      a0,200(sp)
    li      a0, 1
    sw      a1,196(sp)
    mul     a1,a0,a2
    add     s9,s9,a1
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_147_208 = load temp_146_208:ptr->i32 
    lw      a0,0(s9)
                    #      new_var temp_148_208:i32 
                    #      temp_148_208 = Sub i32 temp_147_208, lastnum_190 
    sd      a1,200(sp)
    sub     a1,a0,s11
                    #      new_var temp_149_208:i32 
                    #      temp_149_208 = Add i32 sum_190, temp_148_208 
    sw      a0,92(sp)
    add     a0,a3,a1
                    #      sum_190 = i32 temp_149_208 
                    #      new_var temp_150_208:i32 
                    #      temp_150_208 = Add i32 stride_188, 1_0 
    sw      a0,84(sp)
    sw      a1,88(sp)
    li      a1, 1
    sw      a2,188(sp)
    add     a2,a0,a1
                    #      new_var temp_151_208:i32 
                    #      temp_151_208 = Sub i32 i_190, temp_150_208 
    sw      a0,196(sp)
    sub     a0,a1,a2
                    #      new_var temp_152_208:ptr->i32 
                    #      new_var temp_153_208:i32 
                    #      temp_152_208 = getelementptr arr_188:ptr->i32 [Some(temp_151_208)] 
    sw      a0,76(sp)
    li      a0, 0
    sw      a1,188(sp)
    li      a1, 1
    sw      a2,80(sp)
    sw      a3,192(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_153_208 = load temp_152_208:ptr->i32 
    lw      a1,0(a0)
                    #      lastnum_190 = i32 temp_153_208 
                    #      new_var temp_154_208:i32 
                    #      temp_154_208 = Add i32 stride_188, 1_0 
    sd      a0,64(sp)
    sw      a1,60(sp)
    li      a1, 1
    sw      a2,76(sp)
    add     a2,a0,a1
                    #      new_var temp_155_208:i32 
                    #      temp_155_208 = Sub i32 i_190, temp_154_208 
    sw      a0,196(sp)
    sub     a0,a1,a2
                    #      new_var temp_156_208:ptr->i32 
                    #      temp_156_208 = getelementptr arr_188:ptr->i32 [Some(temp_155_208)] 
    sw      a0,52(sp)
    li      a0, 0
    sw      a1,188(sp)
    li      a1, 1
    sw      a2,56(sp)
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_157_208:i32 
                    #      temp_157_208 = Div i32 sum_190, stride_188 
    sd      a0,40(sp)
    sw      a2,52(sp)
    div     a2,a1,a0
                    #      store temp_157_208:i32 temp_156_208:ptr->i32 
    sw      a0,196(sp)
    sd      a2,0(a0)
                    #      mu arr_188:765 
                    #      arr_188 = chi arr_188:765 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      label L3_0: 
.L3_0:
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_139_198:i32 
                    #      temp_139_198 = Add i32 i_190, 1_0 
    sd      a0,40(sp)
    sw      a1,192(sp)
    li      a1, 1
    sw      a2,36(sp)
    add     a2,a0,a1
                    #      i_190 = i32 temp_139_198 
                    #      jump label: while.head_197 
    j       .while.head_197
                    #      label while.exit_197: 
.while.exit_197:
                    #      new_var temp_158_190:i32 
                    #      temp_158_190 = Add i32 stride_188, 1_0 
    sw      a0,188(sp)
    li      a0, 1
    sw      a2,148(sp)
    add     a2,a1,a0
                    #      new_var temp_159_190:i32 
                    #      temp_159_190 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    sw      a1,196(sp)
    lw      a1,0(a0)
                    #      new_var temp_160_190:i32 
                    #      temp_160_190 = Sub i32 temp_159_190, temp_158_190 
    sub     a0,a1,a2
                    #      i_190 = i32 temp_160_190 
    sw      a1,28(sp)
    mv      a1, a0
                    #      jump label: while.head_215 
    j       .while.head_215
                    #      label while.head_215: 
.while.head_215:
                    #      new_var temp_161_214:i32 
                    #      temp_161_214 = load *n_0:ptr->i32 
    sw      a0,24(sp)
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    sw      a1,188(sp)
    lw      a1,0(a0)
                    #      new_var temp_162_214:i1 
                    #      temp_162_214 = icmp i32 Slt i_190, temp_161_214 
    sw      a2,32(sp)
    slt     a2,a0,a1
                    #      br i1 temp_162_214, label while.body_215, label while.exit_215 
    bnez    a2, .while.body_215
    j       .while.exit_215
                    #      label while.body_215: 
.while.body_215:
                    #      new_var temp_163_216:ptr->i32 
                    #      temp_163_216 = getelementptr arr_188:ptr->i32 [Some(i_190)] 
    sw      a0,188(sp)
    li      a0, 0
    sw      a1,20(sp)
    li      a1, 1
    sb      a2,19(sp)
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 0_0:i32 temp_163_216:ptr->i32 
    li      a1, 0
    sd      a1,0(a0)
                    #      mu arr_188:792 
                    #      arr_188 = chi arr_188:792 
                    #      new_var temp_164_216:i32 
                    #      temp_164_216 = Add i32 i_190, 1_0 
    li      a1, 1
    sd      a0,8(sp)
    add     a0,a2,a1
                    #      i_190 = i32 temp_164_216 
                    #      jump label: while.head_215 
    j       .while.head_215
                    #      label while.exit_215: 
.while.exit_215:
                    #      ret 0_0 
    ld      ra,216(sp)
    ld      s0,208(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,224
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|arr:128|result:128|temp_165:8|temp_166:8|temp_167:8|temp_168:8|temp_169:8|temp_170:8|temp_171:8|temp_172:8|temp_173:8|temp_174:8|temp_175:8|temp_176:8|temp_177:8|temp_178:8|temp_179:8|temp_180:8|temp_181:8|temp_182:8|temp_183:8|temp_184:8|temp_185:8|temp_186:8|temp_187:8|temp_188:8|temp_189:8|temp_190:8|temp_191:8|temp_192:8|temp_193:8|temp_194:8|temp_195:8|temp_196:8|t:4|temp_197:4|temp_198:4|i:4|temp_199:1|none:7|temp_200:8|temp_201:4|temp_202:4|temp_203:4|temp_204:1|none:3|temp_205:8|temp_206:4|temp_207:4|temp_208:4|temp_209:4|temp_210:4|temp_211:4|temp_212:1|none:7|temp_213:8|temp_214:4|temp_215:4|temp_216:4|temp_217:4|temp_218:1|none:7|temp_219:8|temp_220:4|temp_221:4|temp_222:4|temp_223:4|temp_224:1|none:7|temp_225:8|temp_226:4|temp_227:4|temp_228:4|temp_229:4|temp_230:1|none:7|temp_231:8|temp_232:4|temp_233:4|temp_234:4|temp_235:4|temp_236:1|none:7|temp_237:8|temp_238:4|temp_239:4
    addi    sp,sp,-760
    sd      ra,752(sp)
    sd      s0,744(sp)
    addi    s0,sp,760
                    #      alloc Array:i32:[Some(32_0)] arr_221 
                    #      alloc Array:i32:[Some(32_0)] result_221 
                    #      alloc ptr->i32 temp_165_221 
                    #      alloc ptr->i32 temp_166_221 
                    #      alloc ptr->i32 temp_167_221 
                    #      alloc ptr->i32 temp_168_221 
                    #      alloc ptr->i32 temp_169_221 
                    #      alloc ptr->i32 temp_170_221 
                    #      alloc ptr->i32 temp_171_221 
                    #      alloc ptr->i32 temp_172_221 
                    #      alloc ptr->i32 temp_173_221 
                    #      alloc ptr->i32 temp_174_221 
                    #      alloc ptr->i32 temp_175_221 
                    #      alloc ptr->i32 temp_176_221 
                    #      alloc ptr->i32 temp_177_221 
                    #      alloc ptr->i32 temp_178_221 
                    #      alloc ptr->i32 temp_179_221 
                    #      alloc ptr->i32 temp_180_221 
                    #      alloc ptr->i32 temp_181_221 
                    #      alloc ptr->i32 temp_182_221 
                    #      alloc ptr->i32 temp_183_221 
                    #      alloc ptr->i32 temp_184_221 
                    #      alloc ptr->i32 temp_185_221 
                    #      alloc ptr->i32 temp_186_221 
                    #      alloc ptr->i32 temp_187_221 
                    #      alloc ptr->i32 temp_188_221 
                    #      alloc ptr->i32 temp_189_221 
                    #      alloc ptr->i32 temp_190_221 
                    #      alloc ptr->i32 temp_191_221 
                    #      alloc ptr->i32 temp_192_221 
                    #      alloc ptr->i32 temp_193_221 
                    #      alloc ptr->i32 temp_194_221 
                    #      alloc ptr->i32 temp_195_221 
                    #      alloc ptr->i32 temp_196_221 
                    #      alloc i32 t_221 
                    #      alloc i32 temp_197_221 
                    #      alloc i32 temp_198_221 
                    #      alloc i32 i_221 
                    #      alloc i1 temp_199_262 
                    #      alloc ptr->i32 temp_200_264 
                    #      alloc i32 temp_201_264 
                    #      alloc i32 temp_202_264 
                    #      alloc i32 temp_203_221 
                    #      alloc i1 temp_204_270 
                    #      alloc ptr->i32 temp_205_272 
                    #      alloc i32 temp_206_272 
                    #      alloc i32 temp_207_272 
                    #      alloc i32 temp_208_221 
                    #      alloc i32 temp_209_221 
                    #      alloc i32 temp_210_221 
                    #      alloc i32 temp_211_221 
                    #      alloc i1 temp_212_283 
                    #      alloc ptr->i32 temp_213_285 
                    #      alloc i32 temp_214_285 
                    #      alloc i32 temp_215_285 
                    #      alloc i32 temp_216_221 
                    #      alloc i32 temp_217_221 
                    #      alloc i1 temp_218_292 
                    #      alloc ptr->i32 temp_219_294 
                    #      alloc i32 temp_220_294 
                    #      alloc i32 temp_221_294 
                    #      alloc i32 temp_222_221 
                    #      alloc i32 temp_223_221 
                    #      alloc i1 temp_224_302 
                    #      alloc ptr->i32 temp_225_304 
                    #      alloc i32 temp_226_304 
                    #      alloc i32 temp_227_304 
                    #      alloc i32 temp_228_221 
                    #      alloc i32 temp_229_221 
                    #      alloc i1 temp_230_311 
                    #      alloc ptr->i32 temp_231_313 
                    #      alloc i32 temp_232_313 
                    #      alloc i32 temp_233_313 
                    #      alloc i32 temp_234_221 
                    #      alloc i32 temp_235_221 
                    #      alloc i1 temp_236_320 
                    #      alloc ptr->i32 temp_237_322 
                    #      alloc i32 temp_238_322 
                    #      alloc i32 temp_239_322 
                    #      label L0_0: 
.L0_0:
                    #      store 32_0:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    li      a1, 32
    sd      a1,0(a0)
                    #      new_var arr_221:Array:i32:[Some(32_0)] 
                    #      new_var result_221:Array:i32:[Some(32_0)] 
                    #      new_var temp_165_221:ptr->i32 
                    #      temp_165_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(0_0)] 
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 7_0:i32 temp_165_221:ptr->i32 
    li      a6, 7
    sd      a6,0(a2)
                    #      mu arr_221:809 
                    #      arr_221 = chi arr_221:809 
                    #      new_var temp_166_221:ptr->i32 
                    #      temp_166_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(1_0)] 
    li      a7, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      s1, 1
    add     a7,a7,a5
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 23_0:i32 temp_166_221:ptr->i32 
    li      s2, 23
    sd      s2,0(a7)
                    #      mu arr_221:815 
                    #      arr_221 = chi arr_221:815 
                    #      new_var temp_167_221:ptr->i32 
                    #      temp_167_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(2_0)] 
    li      s3, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      s4, 2
    add     s3,s3,a5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 89_0:i32 temp_167_221:ptr->i32 
    li      s5, 89
    sd      s5,0(s3)
                    #      mu arr_221:821 
                    #      arr_221 = chi arr_221:821 
                    #      new_var temp_168_221:ptr->i32 
                    #      temp_168_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(3_0)] 
    li      s6, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      s7, 3
    add     s6,s6,a5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 26_0:i32 temp_168_221:ptr->i32 
    li      s8, 26
    sd      s8,0(s6)
                    #      mu arr_221:827 
                    #      arr_221 = chi arr_221:827 
                    #      new_var temp_169_221:ptr->i32 
                    #      temp_169_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(4_0)] 
    li      s9, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      s10, 4
    add     s9,s9,a5
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store 282_0:i32 temp_169_221:ptr->i32 
    li      s11, 282
    sd      s11,0(s9)
                    #      mu arr_221:833 
                    #      arr_221 = chi arr_221:833 
                    #      new_var temp_170_221:ptr->i32 
                    #      temp_170_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(5_0)] 
    li      a0, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      a1, 5
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 254_0:i32 temp_170_221:ptr->i32 
    li      a1, 254
    sd      a1,0(a0)
                    #      mu arr_221:839 
                    #      arr_221 = chi arr_221:839 
                    #      new_var temp_171_221:ptr->i32 
                    #      temp_171_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(6_0)] 
    li      a1, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      a4, 6
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 27_0:i32 temp_171_221:ptr->i32 
    li      a3, 27
    sd      a3,0(a1)
                    #      mu arr_221:845 
                    #      arr_221 = chi arr_221:845 
                    #      new_var temp_172_221:ptr->i32 
                    #      temp_172_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(7_0)] 
    li      a3, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(a6) already exist with 7_0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      store 5_0:i32 temp_172_221:ptr->i32 
    li      a4, 5
    sd      a4,0(a3)
                    #      mu arr_221:851 
                    #      arr_221 = chi arr_221:851 
                    #      new_var temp_173_221:ptr->i32 
                    #      temp_173_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(8_0)] 
    li      a4, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a6, 8
    add     a4,a4,a5
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      store 83_0:i32 temp_173_221:ptr->i32 
    li      a6, 83
    sd      a6,0(a4)
                    #      mu arr_221:857 
                    #      arr_221 = chi arr_221:857 
                    #      new_var temp_174_221:ptr->i32 
                    #      temp_174_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(9_0)] 
    li      a6, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s2, 9
    add     a6,a6,a5
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      store 273_0:i32 temp_174_221:ptr->i32 
    li      s1, 273
    sd      s1,0(a6)
                    #      mu arr_221:863 
                    #      arr_221 = chi arr_221:863 
                    #      new_var temp_175_221:ptr->i32 
                    #      temp_175_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(10_0)] 
    li      s1, 0
    li      s2, 1
    li      s4, 10
    add     s1,s1,a5
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      store 574_0:i32 temp_175_221:ptr->i32 
    li      s2, 574
    sd      s2,0(s1)
                    #      mu arr_221:869 
                    #      arr_221 = chi arr_221:869 
                    #      new_var temp_176_221:ptr->i32 
                    #      temp_176_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(11_0)] 
    li      s2, 0
    li      s4, 1
    li      s5, 11
    add     s2,s2,a5
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      store 905_0:i32 temp_176_221:ptr->i32 
    li      s4, 905
    sd      s4,0(s2)
                    #      mu arr_221:875 
                    #      arr_221 = chi arr_221:875 
                    #      new_var temp_177_221:ptr->i32 
                    #      temp_177_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(12_0)] 
    li      s4, 0
    li      s5, 1
    li      s7, 12
    add     s4,s4,a5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      store 354_0:i32 temp_177_221:ptr->i32 
    li      s5, 354
    sd      s5,0(s4)
                    #      mu arr_221:881 
                    #      arr_221 = chi arr_221:881 
                    #      new_var temp_178_221:ptr->i32 
                    #      temp_178_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(13_0)] 
    li      s5, 0
    li      s7, 1
    li      s8, 13
    add     s5,s5,a5
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      store 657_0:i32 temp_178_221:ptr->i32 
    li      s7, 657
    sd      s7,0(s5)
                    #      mu arr_221:887 
                    #      arr_221 = chi arr_221:887 
                    #      new_var temp_179_221:ptr->i32 
                    #      temp_179_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(14_0)] 
    li      s7, 0
    li      s8, 1
    li      s10, 14
    add     s7,s7,a5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 935_0:i32 temp_179_221:ptr->i32 
    li      s8, 935
    sd      s8,0(s7)
                    #      mu arr_221:893 
                    #      arr_221 = chi arr_221:893 
                    #      new_var temp_180_221:ptr->i32 
                    #      temp_180_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(15_0)] 
    li      s8, 0
    li      s10, 1
    li      s11, 15
    add     s8,s8,a5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 264_0:i32 temp_180_221:ptr->i32 
    li      s10, 264
    sd      s10,0(s8)
                    #      mu arr_221:899 
                    #      arr_221 = chi arr_221:899 
                    #      new_var temp_181_221:ptr->i32 
                    #      temp_181_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(16_0)] 
    li      s10, 0
    li      s11, 1
    sd      a0,440(sp)
    li      a0, 16
    add     s10,s10,a5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 639_0:i32 temp_181_221:ptr->i32 
    li      a0, 639
    sd      a0,0(s10)
                    #      mu arr_221:905 
                    #      arr_221 = chi arr_221:905 
                    #      new_var temp_182_221:ptr->i32 
                    #      temp_182_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(17_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,432(sp)
    li      a1, 17
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 459_0:i32 temp_182_221:ptr->i32 
    li      a1, 459
    sd      a1,0(a0)
                    #      mu arr_221:911 
                    #      arr_221 = chi arr_221:911 
                    #      new_var temp_183_221:ptr->i32 
                    #      temp_183_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(18_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,344(sp)
    li      a0, 18
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 29_0:i32 temp_183_221:ptr->i32 
    li      a0, 29
    sd      a0,0(a1)
                    #      mu arr_221:917 
                    #      arr_221 = chi arr_221:917 
                    #      new_var temp_184_221:ptr->i32 
                    #      temp_184_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(19_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,336(sp)
    li      a1, 19
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 68_0:i32 temp_184_221:ptr->i32 
    li      a1, 68
    sd      a1,0(a0)
                    #      mu arr_221:923 
                    #      arr_221 = chi arr_221:923 
                    #      new_var temp_185_221:ptr->i32 
                    #      temp_185_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(20_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,328(sp)
    li      a0, 20
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 929_0:i32 temp_185_221:ptr->i32 
    li      a0, 929
    sd      a0,0(a1)
                    #      mu arr_221:929 
                    #      arr_221 = chi arr_221:929 
                    #      new_var temp_186_221:ptr->i32 
                    #      temp_186_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(21_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,320(sp)
    li      a1, 21
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 756_0:i32 temp_186_221:ptr->i32 
    li      a1, 756
    sd      a1,0(a0)
                    #      mu arr_221:935 
                    #      arr_221 = chi arr_221:935 
                    #      new_var temp_187_221:ptr->i32 
                    #      temp_187_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(22_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,312(sp)
    li      a0, 22
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 452_0:i32 temp_187_221:ptr->i32 
    li      a0, 452
    sd      a0,0(a1)
                    #      mu arr_221:941 
                    #      arr_221 = chi arr_221:941 
                    #      new_var temp_188_221:ptr->i32 
                    #      temp_188_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(23_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,304(sp)
    li      a1, 23
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 279_0:i32 temp_188_221:ptr->i32 
    li      a1, 279
    sd      a1,0(a0)
                    #      mu arr_221:947 
                    #      arr_221 = chi arr_221:947 
                    #      new_var temp_189_221:ptr->i32 
                    #      temp_189_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(24_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,296(sp)
    li      a0, 24
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 58_0:i32 temp_189_221:ptr->i32 
    li      a0, 58
    sd      a0,0(a1)
                    #      mu arr_221:953 
                    #      arr_221 = chi arr_221:953 
                    #      new_var temp_190_221:ptr->i32 
                    #      temp_190_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(25_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,288(sp)
    li      a1, 25
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 87_0:i32 temp_190_221:ptr->i32 
    li      a1, 87
    sd      a1,0(a0)
                    #      mu arr_221:959 
                    #      arr_221 = chi arr_221:959 
                    #      new_var temp_191_221:ptr->i32 
                    #      temp_191_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(26_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,280(sp)
    li      a0, 26
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 96_0:i32 temp_191_221:ptr->i32 
    li      a0, 96
    sd      a0,0(a1)
                    #      mu arr_221:965 
                    #      arr_221 = chi arr_221:965 
                    #      new_var temp_192_221:ptr->i32 
                    #      temp_192_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(27_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,272(sp)
    li      a1, 27
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 36_0:i32 temp_192_221:ptr->i32 
    li      a1, 36
    sd      a1,0(a0)
                    #      mu arr_221:971 
                    #      arr_221 = chi arr_221:971 
                    #      new_var temp_193_221:ptr->i32 
                    #      temp_193_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(28_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,264(sp)
    li      a0, 28
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 39_0:i32 temp_193_221:ptr->i32 
    li      a0, 39
    sd      a0,0(a1)
                    #      mu arr_221:977 
                    #      arr_221 = chi arr_221:977 
                    #      new_var temp_194_221:ptr->i32 
                    #      temp_194_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(29_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,256(sp)
    li      a1, 29
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 28_0:i32 temp_194_221:ptr->i32 
    li      a1, 28
    sd      a1,0(a0)
                    #      mu arr_221:983 
                    #      arr_221 = chi arr_221:983 
                    #      new_var temp_195_221:ptr->i32 
                    #      temp_195_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(30_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,248(sp)
    li      a0, 30
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 1_0:i32 temp_195_221:ptr->i32 
                    #found literal reg Some(s11) already exist with 1_0
    sd      s11,0(a1)
                    #      mu arr_221:989 
                    #      arr_221 = chi arr_221:989 
                    #      new_var temp_196_221:ptr->i32 
                    #      temp_196_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(31_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,240(sp)
    li      a1, 31
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 290_0:i32 temp_196_221:ptr->i32 
    li      a1, 290
    sd      a1,0(a0)
                    #      mu arr_221:995 
                    #      arr_221 = chi arr_221:995 
                    #      new_var t_221:i32 
                    #      new_var temp_197_221:i32 
                    #      temp_197_221 =  Call i32 arrCopy_0(arr_221, result_221) 
                    #saved register dumping to mem
    sd      s1,400(sp)
    sd      s2,392(sp)
    sd      s3,464(sp)
    sd      s4,384(sp)
    sd      s5,376(sp)
    sd      s6,456(sp)
    sd      s7,368(sp)
    sd      s8,360(sp)
    sd      s9,448(sp)
    sd      s10,352(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a5,740(sp)
    sd      a0,232(sp)
                    #arg load ended
    call    arrCopy
    sw      a0,224(sp)
                    #      t_221 = i32 temp_197_221 
    mv      a1, a0
                    #      new_var temp_198_221:i32 
                    #      temp_198_221 =  Call i32 revert_0(result_221) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,224(sp)
                    #arg load ended
    call    revert
    sw      a0,220(sp)
                    #      t_221 = i32 temp_198_221 
                    #      new_var i_221:i32 
                    #      i_221 = i32 0_0 
    li      a5, 0
                    #      jump label: while.head_263 
    j       .while.head_263
                    #      label while.head_263: 
.while.head_263:
                    #      new_var temp_199_262:i1 
                    #      temp_199_262 = icmp i32 Slt i_221, 32_0 
    li      s1, 32
    slt     s2,a5,s1
                    #      br i1 temp_199_262, label while.body_263, label while.exit_263 
    bnez    s2, .while.body_263
    j       .while.exit_263
                    #      label while.body_263: 
.while.body_263:
                    #      new_var temp_200_264:ptr->i32 
                    #      new_var temp_201_264:i32 
                    #      temp_200_264 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
    li      s3, 0
    li      s4, 1
    mul     s5,s4,a5
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_201_264 = load temp_200_264:ptr->i32 
    lw      s6,0(s3)
                    #      t_221 = i32 temp_201_264 
                    #       Call void putint_0(t_221) 
                    #saved register dumping to mem
    sb      s2,215(sp)
    sd      s3,200(sp)
    sw      s5,612(sp)
    sw      s6,196(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a1,228(sp)
    sw      a0,220(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_202_264:i32 
                    #      temp_202_264 = Add i32 i_221, 1_0 
    li      a0, 1
    add     a1,a5,a0
                    #      i_221 = i32 temp_202_264 
                    #      jump label: while.head_263 
    j       .while.head_263
                    #      label while.exit_263: 
.while.exit_263:
                    #      new_var temp_203_221:i32 
                    #      temp_203_221 =  Call i32 bubblesort_0(result_221) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    bubblesort
    sw      a0,188(sp)
                    #      t_221 = i32 temp_203_221 
    mv      s1, a0
                    #      i_221 = i32 0_0 
                    #      jump label: while.head_271 
    j       .while.head_271
                    #      label while.head_271: 
.while.head_271:
                    #      new_var temp_204_270:i1 
                    #      temp_204_270 = icmp i32 Slt i_221, 32_0 
    li      s2, 32
    slt     s3,a5,s2
                    #      br i1 temp_204_270, label while.body_271, label while.exit_271 
    bnez    s3, .while.body_271
    j       .while.exit_271
                    #      label while.body_271: 
.while.body_271:
                    #      new_var temp_205_272:ptr->i32 
                    #      new_var temp_206_272:i32 
                    #      temp_205_272 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
    li      s4, 0
    li      s5, 1
    mul     s6,s5,a5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_206_272 = load temp_205_272:ptr->i32 
    lw      s7,0(s4)
                    #      t_221 = i32 temp_206_272 
                    #       Call void putint_0(t_221) 
                    #saved register dumping to mem
    sw      s1,228(sp)
    sb      s3,187(sp)
    sd      s4,176(sp)
    sw      s6,612(sp)
    sw      s7,172(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,188(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_207_272:i32 
                    #      temp_207_272 = Add i32 i_221, 1_0 
    li      a0, 1
    add     s1,a5,a0
                    #      i_221 = i32 temp_207_272 
                    #      jump label: while.head_271 
    j       .while.head_271
                    #      label while.exit_271: 
.while.exit_271:
                    #      new_var temp_208_221:i32 
                    #      temp_208_221 =  Call i32 getMid_0(result_221) 
                    #saved register dumping to mem
    sw      s1,168(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getMid
    sw      a0,164(sp)
                    #      t_221 = i32 temp_208_221 
    mv      s1, a0
                    #       Call void putint_0(t_221) 
                    #saved register dumping to mem
    sw      s1,228(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,164(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_209_221:i32 
                    #      temp_209_221 =  Call i32 getMost_0(result_221) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getMost
    sw      a0,160(sp)
                    #      t_221 = i32 temp_209_221 
    mv      s1, a0
                    #       Call void putint_0(t_221) 
                    #saved register dumping to mem
    sw      s1,228(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,160(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_210_221:i32 
                    #      temp_210_221 =  Call i32 arrCopy_0(arr_221, result_221) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a1,192(sp)
                    #arg load ended
    call    arrCopy
    sw      a0,156(sp)
                    #      t_221 = i32 temp_210_221 
    mv      a1, a0
                    #      new_var temp_211_221:i32 
                    #      temp_211_221 =  Call i32 bubblesort_0(result_221) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,156(sp)
                    #arg load ended
    call    bubblesort
    sw      a0,152(sp)
                    #      t_221 = i32 temp_211_221 
                    #      i_221 = i32 0_0 
                    #      jump label: while.head_284 
    j       .while.head_284
                    #      label while.head_284: 
.while.head_284:
                    #      new_var temp_212_283:i1 
                    #      temp_212_283 = icmp i32 Slt i_221, 32_0 
    li      s1, 32
    slt     s2,a5,s1
                    #      br i1 temp_212_283, label while.body_284, label while.exit_284 
    bnez    s2, .while.body_284
    j       .while.exit_284
                    #      label while.body_284: 
.while.body_284:
                    #      new_var temp_213_285:ptr->i32 
                    #      new_var temp_214_285:i32 
                    #      temp_213_285 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
    li      s3, 0
    li      s4, 1
    mul     s5,s4,a5
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_214_285 = load temp_213_285:ptr->i32 
    lw      s6,0(s3)
                    #      t_221 = i32 temp_214_285 
                    #       Call void putint_0(t_221) 
                    #saved register dumping to mem
    sb      s2,151(sp)
    sd      s3,136(sp)
    sw      s5,612(sp)
    sw      s6,132(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a1,228(sp)
    sw      a0,152(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_215_285:i32 
                    #      temp_215_285 = Add i32 i_221, 1_0 
    li      a0, 1
    add     a1,a5,a0
                    #      i_221 = i32 temp_215_285 
                    #      jump label: while.head_284 
    j       .while.head_284
                    #      label while.exit_284: 
.while.exit_284:
                    #      new_var temp_216_221:i32 
                    #      temp_216_221 =  Call i32 arrCopy_0(arr_221, result_221) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a1,128(sp)
                    #arg load ended
    call    arrCopy
    sw      a0,124(sp)
                    #      t_221 = i32 temp_216_221 
    mv      a1, a0
                    #      new_var temp_217_221:i32 
                    #      temp_217_221 =  Call i32 insertsort_0(result_221) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,124(sp)
                    #arg load ended
    call    insertsort
    sw      a0,120(sp)
                    #      t_221 = i32 temp_217_221 
                    #      i_221 = i32 0_0 
                    #      jump label: while.head_293 
    j       .while.head_293
                    #      label while.head_293: 
.while.head_293:
                    #      new_var temp_218_292:i1 
                    #      temp_218_292 = icmp i32 Slt i_221, 32_0 
    li      s1, 32
    slt     s2,a5,s1
                    #      br i1 temp_218_292, label while.body_293, label while.exit_293 
    bnez    s2, .while.body_293
    j       .while.exit_293
                    #      label while.body_293: 
.while.body_293:
                    #      new_var temp_219_294:ptr->i32 
                    #      new_var temp_220_294:i32 
                    #      temp_219_294 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
    li      s3, 0
    li      s4, 1
    mul     s5,s4,a5
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_220_294 = load temp_219_294:ptr->i32 
    lw      s6,0(s3)
                    #      t_221 = i32 temp_220_294 
                    #       Call void putint_0(t_221) 
                    #saved register dumping to mem
    sb      s2,119(sp)
    sd      s3,104(sp)
    sw      s5,612(sp)
    sw      s6,100(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a1,228(sp)
    sw      a0,120(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_221_294:i32 
                    #      temp_221_294 = Add i32 i_221, 1_0 
    li      a0, 1
    add     a1,a5,a0
                    #      i_221 = i32 temp_221_294 
                    #      jump label: while.head_293 
    j       .while.head_293
                    #      label while.exit_293: 
.while.exit_293:
                    #      new_var temp_222_221:i32 
                    #      temp_222_221 =  Call i32 arrCopy_0(arr_221, result_221) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a1,96(sp)
                    #arg load ended
    call    arrCopy
    sw      a0,92(sp)
                    #      t_221 = i32 temp_222_221 
    mv      a1, a0
                    #      i_221 = i32 0_0 
                    #      t_221 = i32 31_0 
                    #      new_var temp_223_221:i32 
                    #      temp_223_221 =  Call i32 QuickSort_0(result_221, i_221, t_221) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,92(sp)
    sw      a5,216(sp)
    sw      a1,228(sp)
    sd      a2,480(sp)
                    #arg load ended
    call    QuickSort
    sw      a0,88(sp)
                    #      t_221 = i32 temp_223_221 
    mv      a1, a0
                    #      jump label: while.head_303 
    j       .while.head_303
                    #      label while.head_303: 
.while.head_303:
                    #      new_var temp_224_302:i1 
                    #      temp_224_302 = icmp i32 Slt i_221, 32_0 
    li      a5, 32
    slt     s1,a2,a5
                    #      br i1 temp_224_302, label while.body_303, label while.exit_303 
    bnez    s1, .while.body_303
    j       .while.exit_303
                    #      label while.body_303: 
.while.body_303:
                    #      new_var temp_225_304:ptr->i32 
                    #      new_var temp_226_304:i32 
                    #      temp_225_304 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
    li      s2, 0
    li      s3, 1
    mul     s4,s3,a2
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_226_304 = load temp_225_304:ptr->i32 
    lw      s5,0(s2)
                    #      t_221 = i32 temp_226_304 
                    #       Call void putint_0(t_221) 
                    #saved register dumping to mem
    sb      s1,87(sp)
    sd      s2,72(sp)
    sw      s4,612(sp)
    sw      s5,68(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a1,228(sp)
    sw      a0,88(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_227_304:i32 
                    #      temp_227_304 = Add i32 i_221, 1_0 
    li      a0, 1
    add     a1,a2,a0
                    #      i_221 = i32 temp_227_304 
                    #      jump label: while.head_303 
    j       .while.head_303
                    #      label while.exit_303: 
.while.exit_303:
                    #      new_var temp_228_221:i32 
                    #      temp_228_221 =  Call i32 arrCopy_0(arr_221, result_221) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a1,64(sp)
                    #arg load ended
    call    arrCopy
    sw      a0,60(sp)
                    #      t_221 = i32 temp_228_221 
    mv      a1, a0
                    #      new_var temp_229_221:i32 
                    #      temp_229_221 =  Call i32 calSum_0(result_221, 4_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,60(sp)
    sw      a1,228(sp)
    li      a1, 4
                    #arg load ended
    call    calSum
    sw      a0,56(sp)
                    #      t_221 = i32 temp_229_221 
    mv      a1, a0
                    #      i_221 = i32 0_0 
                    #      jump label: while.head_312 
    j       .while.head_312
                    #      label while.head_312: 
.while.head_312:
                    #      new_var temp_230_311:i1 
                    #      temp_230_311 = icmp i32 Slt i_221, 32_0 
                    #found literal reg Some(a5) already exist with 32_0
    slt     s1,a2,a5
                    #      br i1 temp_230_311, label while.body_312, label while.exit_312 
    bnez    s1, .while.body_312
    j       .while.exit_312
                    #      label while.body_312: 
.while.body_312:
                    #      new_var temp_231_313:ptr->i32 
                    #      new_var temp_232_313:i32 
                    #      temp_231_313 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
    li      s2, 0
    li      s3, 1
    mul     s4,s3,a2
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_232_313 = load temp_231_313:ptr->i32 
    lw      s5,0(s2)
                    #      t_221 = i32 temp_232_313 
                    #       Call void putint_0(t_221) 
                    #saved register dumping to mem
    sb      s1,55(sp)
    sd      s2,40(sp)
    sw      s4,612(sp)
    sw      s5,36(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a1,228(sp)
    sw      a0,56(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_233_313:i32 
                    #      temp_233_313 = Add i32 i_221, 1_0 
    li      a0, 1
    add     a1,a2,a0
                    #      i_221 = i32 temp_233_313 
                    #      jump label: while.head_312 
    j       .while.head_312
                    #      label while.exit_312: 
.while.exit_312:
                    #      new_var temp_234_221:i32 
                    #      temp_234_221 =  Call i32 arrCopy_0(arr_221, result_221) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a1,32(sp)
                    #arg load ended
    call    arrCopy
    sw      a0,28(sp)
                    #      t_221 = i32 temp_234_221 
    mv      a1, a0
                    #      new_var temp_235_221:i32 
                    #      temp_235_221 =  Call i32 avgPooling_0(result_221, 3_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    sw      a1,228(sp)
    li      a1, 3
                    #arg load ended
    call    avgPooling
    sw      a0,24(sp)
                    #      t_221 = i32 temp_235_221 
    mv      a1, a0
                    #      i_221 = i32 0_0 
                    #      jump label: while.head_321 
    j       .while.head_321
                    #      label while.head_321: 
.while.head_321:
                    #      new_var temp_236_320:i1 
                    #      temp_236_320 = icmp i32 Slt i_221, 32_0 
                    #found literal reg Some(a5) already exist with 32_0
    slt     s1,a2,a5
                    #      br i1 temp_236_320, label while.body_321, label while.exit_321 
    bnez    s1, .while.body_321
    j       .while.exit_321
                    #      label while.body_321: 
.while.body_321:
                    #      new_var temp_237_322:ptr->i32 
                    #      new_var temp_238_322:i32 
                    #      temp_237_322 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
    li      s2, 0
    li      s3, 1
    mul     s4,s3,a2
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_238_322 = load temp_237_322:ptr->i32 
    lw      s5,0(s2)
                    #      t_221 = i32 temp_238_322 
                    #       Call void putint_0(t_221) 
                    #saved register dumping to mem
    sb      s1,23(sp)
    sd      s2,8(sp)
    sw      s4,612(sp)
    sw      s5,4(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a1,228(sp)
    sw      a0,24(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_239_322:i32 
                    #      temp_239_322 = Add i32 i_221, 1_0 
    li      a0, 1
    add     a1,a2,a0
                    #      i_221 = i32 temp_239_322 
                    #      jump label: while.head_321 
    j       .while.head_321
                    #      label while.exit_321: 
.while.exit_321:
                    #      ret 0_0 
    ld      ra,752(sp)
    ld      s0,744(sp)
    li      a0, 0
    addi    sp,sp,760
    ret
.section        .data
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
