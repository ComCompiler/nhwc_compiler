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
                    #      Define long_array_0 [k_17] -> long_array_ret_0 
    .globl long_array
    .type long_array,@function
long_array:
                    #mem layout:|ra_long_array:8|s0_long_array:8|k:4|a1:40000|a2:40000|a3:40000|i:4|temp_0:1|none:7|temp_1:8|temp_2:4|temp_3:4|temp_4:4|temp_5:1|none:3|temp_6:8|temp_7:8|temp_8:4|temp_9:4|temp_10:4|temp_11:4|temp_12:1|none:7|temp_13:8|temp_14:8|temp_15:4|none:4|temp_16:8|temp_17:4|temp_18:4|temp_19:4|temp_20:4|temp_21:4|ans:4|temp_22:1|temp_23:1|none:6|temp_24:8|temp_25:4|temp_26:4|temp_27:4|temp_28:4|temp_29:1|none:3|j:4|temp_30:1|none:7|temp_31:8|temp_32:4|none:4|temp_33:8|temp_34:4|temp_35:4|temp_36:4|temp_37:4|temp_38:1|none:3|j:4|temp_39:1|temp_40:1|none:6|temp_41:8|temp_42:4|none:4|temp_43:8|temp_44:4|temp_45:4|temp_46:4|temp_47:4|temp_48:8|temp_49:4|none:4|temp_50:8|temp_51:4|temp_52:4|temp_53:4|temp_54:4|temp_55:4|none:4|temp_56:8|temp_57:4|temp_58:4|temp_59:4|temp_60:4
    li      a1, -120368
    li      a1, -120368
    add     sp,a1,sp
    li      a2, 120360
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 120352
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 120368
    li      a4, 120368
    add     s0,a4,sp
                    #      alloc Array:i32:[Some(10000_0)] a1_19 
                    #      alloc Array:i32:[Some(10000_0)] a2_19 
                    #      alloc Array:i32:[Some(10000_0)] a3_19 
                    #      alloc i32 i_19 
                    #      alloc i1 temp_0_24 
                    #      alloc ptr->i32 temp_1_26 
                    #      alloc i32 temp_2_26 
                    #      alloc i32 temp_3_26 
                    #      alloc i32 temp_4_26 
                    #      alloc i1 temp_5_30 
                    #      alloc ptr->i32 temp_6_32 
                    #      alloc ptr->i32 temp_7_32 
                    #      alloc i32 temp_8_32 
                    #      alloc i32 temp_9_32 
                    #      alloc i32 temp_10_32 
                    #      alloc i32 temp_11_32 
                    #      alloc i1 temp_12_36 
                    #      alloc ptr->i32 temp_13_38 
                    #      alloc ptr->i32 temp_14_38 
                    #      alloc i32 temp_15_38 
                    #      alloc ptr->i32 temp_16_38 
                    #      alloc i32 temp_17_38 
                    #      alloc i32 temp_18_38 
                    #      alloc i32 temp_19_38 
                    #      alloc i32 temp_20_38 
                    #      alloc i32 temp_21_38 
                    #      alloc i32 ans_19 
                    #      alloc i1 temp_22_43 
                    #      alloc i1 temp_23_46 
                    #      alloc ptr->i32 temp_24_48 
                    #      alloc i32 temp_25_48 
                    #      alloc i32 temp_26_48 
                    #      alloc i32 temp_27_48 
                    #      alloc i32 temp_28_45 
                    #      alloc i1 temp_29_51 
                    #      alloc i32 j_53 
                    #      alloc i1 temp_30_55 
                    #      alloc ptr->i32 temp_31_57 
                    #      alloc i32 temp_32_57 
                    #      alloc ptr->i32 temp_33_57 
                    #      alloc i32 temp_34_57 
                    #      alloc i32 temp_35_57 
                    #      alloc i32 temp_36_57 
                    #      alloc i32 temp_37_57 
                    #      alloc i1 temp_38_61 
                    #      alloc i32 j_63 
                    #      alloc i1 temp_39_65 
                    #      alloc i1 temp_40_68 
                    #      alloc ptr->i32 temp_41_70 
                    #      alloc i32 temp_42_70 
                    #      alloc ptr->i32 temp_43_70 
                    #      alloc i32 temp_44_70 
                    #      alloc i32 temp_45_70 
                    #      alloc i32 temp_46_70 
                    #      alloc i32 temp_47_70 
                    #      alloc ptr->i32 temp_48_73 
                    #      alloc i32 temp_49_73 
                    #      alloc ptr->i32 temp_50_73 
                    #      alloc i32 temp_51_73 
                    #      alloc i32 temp_52_73 
                    #      alloc i32 temp_53_73 
                    #      alloc i32 temp_54_73 
                    #      alloc i32 temp_55_73 
                    #      alloc ptr->i32 temp_56_77 
                    #      alloc i32 temp_57_77 
                    #      alloc i32 temp_58_77 
                    #      alloc i32 temp_59_77 
                    #      alloc i32 temp_60_77 
                    #      label L1_0: 
.L1_0:
                    #      new_var a1_19:Array:i32:[Some(10000_0)] 
                    #      new_var a2_19:Array:i32:[Some(10000_0)] 
                    #      new_var a3_19:Array:i32:[Some(10000_0)] 
                    #      i_19 = i32 0_0 
    li      a5, 0
                    #      jump label: while.head_25 
    j       .while.head_25
                    #      label while.head_25: 
.while.head_25:
                    #      new_var temp_0_24:i1 
                    #      temp_0_24 = icmp i32 Slt i_19, 10000_0 
    li      a1, 10000
    slt     a2,a5,a1
                    #      br i1 temp_0_24, label while.body_25, label while.exit_25 
    bnez    a2, .while.body_25
    j       .while.exit_25
                    #      label while.body_25: 
.while.body_25:
                    #      new_var temp_1_26:ptr->i32 
                    #      temp_1_26 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
    li      a1, 0
    li      a3, 1
    mul     a4,a3,a5
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      new_var temp_2_26:i32 
                    #      temp_2_26 = Mul i32 i_19, i_19 
    mul     a6,a5,a5
                    #      new_var temp_3_26:i32 
                    #      temp_3_26 = Mod i32 temp_2_26, 10_0 
    li      a7, 10
    rem     s1,a6,a7
                    #      store temp_3_26:i32 temp_1_26:ptr->i32 
    sd      s1,0(a1)
                    #      mu a1_19:44 
                    #      a1_19 = chi a1_19:44 
                    #      new_var temp_4_26:i32 
                    #      temp_4_26 = Add i32 i_19, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     s2,a5,a3
                    #      i_19 = i32 temp_4_26 
                    #      jump label: while.head_25 
    li      a4, 120344
    add     a4,sp,a4
    sw      a4,0(a4)
    sw      a6,324(sp)
    sb      a2,343(sp)
    sw      s2,316(sp)
    sw      s1,320(sp)
    sd      a1,328(sp)
    j       .while.head_25
                    #      label while.exit_25: 
.while.exit_25:
                    #      i_19 = i32 0_0 
                    #      jump label: while.head_31 
    j       .while.head_31
                    #      label while.head_31: 
.while.head_31:
                    #      new_var temp_5_30:i1 
                    #      temp_5_30 = icmp i32 Slt i_19, 10000_0 
    li      a1, 10000
    slt     a3,a5,a1
                    #      br i1 temp_5_30, label while.body_31, label while.exit_31 
    bnez    a3, .while.body_31
    j       .while.exit_31
                    #      label while.body_31: 
.while.body_31:
                    #      new_var temp_6_32:ptr->i32 
                    #      temp_6_32 = getelementptr a2_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
    li      a1, 0
    li      a4, 1
    mul     a6,a4,a5
    add     a1,a1,a6
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      new_var temp_7_32:ptr->i32 
                    #      new_var temp_8_32:i32 
                    #      temp_7_32 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
    li      a7, 0
                    #found literal reg Some(a4) already exist with 1_0
    mul     s1,a4,a5
    add     a7,a7,s1
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_8_32 = load temp_7_32:ptr->i32 
    lw      s2,0(a7)
                    #      new_var temp_9_32:i32 
                    #      temp_9_32 = Mul i32 temp_8_32, temp_8_32 
    mul     s3,s2,s2
                    #      new_var temp_10_32:i32 
                    #      temp_10_32 = Mod i32 temp_9_32, 10_0 
    li      s4, 10
    rem     s5,s3,s4
                    #      store temp_10_32:i32 temp_6_32:ptr->i32 
    sd      s5,0(a1)
                    #      mu a2_19:75 
                    #      a2_19 = chi a2_19:75 
                    #      new_var temp_11_32:i32 
                    #      temp_11_32 = Add i32 i_19, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     s6,a5,a4
                    #      i_19 = i32 temp_11_32 
                    #      jump label: while.head_31 
    sb      a3,315(sp)
    sw      s6,280(sp)
    sw      s5,284(sp)
    li      a6, 80344
    add     a6,sp,a6
    sw      a6,0(a6)
    sw      s3,288(sp)
    sw      s2,292(sp)
    li      s1, 120344
    add     s1,sp,s1
    sw      s1,0(s1)
    sd      a7,296(sp)
    sd      a1,304(sp)
    j       .while.head_31
                    #      label while.exit_31: 
.while.exit_31:
                    #      i_19 = i32 0_0 
                    #      jump label: while.head_37 
    j       .while.head_37
                    #      label while.head_37: 
.while.head_37:
                    #      new_var temp_12_36:i1 
                    #      temp_12_36 = icmp i32 Slt i_19, 10000_0 
    li      a1, 10000
    slt     a4,a5,a1
                    #      br i1 temp_12_36, label while.body_37, label while.exit_37 
    bnez    a4, .while.body_37
    j       .while.exit_37
                    #      label while.body_37: 
.while.body_37:
                    #      new_var temp_13_38:ptr->i32 
                    #      temp_13_38 = getelementptr a3_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
    li      a1, 0
    li      a6, 1
    mul     a7,a6,a5
    add     a1,a1,a7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      new_var temp_14_38:ptr->i32 
                    #      new_var temp_15_38:i32 
                    #      temp_14_38 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
    li      s1, 0
                    #found literal reg Some(a6) already exist with 1_0
    mul     s2,a6,a5
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_15_38 = load temp_14_38:ptr->i32 
    lw      s3,0(s1)
                    #      new_var temp_16_38:ptr->i32 
                    #      new_var temp_17_38:i32 
                    #      temp_16_38 = getelementptr a2_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
    li      s4, 0
                    #found literal reg Some(a6) already exist with 1_0
    mul     s5,a6,a5
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_17_38 = load temp_16_38:ptr->i32 
    lw      s6,0(s4)
                    #      new_var temp_18_38:i32 
                    #      temp_18_38 = Mul i32 temp_17_38, temp_17_38 
    mul     s7,s6,s6
                    #      new_var temp_19_38:i32 
                    #      temp_19_38 = Mod i32 temp_18_38, 100_0 
    li      s8, 100
    rem     s9,s7,s8
                    #      new_var temp_20_38:i32 
                    #      temp_20_38 = Add i32 temp_19_38, temp_15_38 
    add     s10,s9,s3
                    #      store temp_20_38:i32 temp_13_38:ptr->i32 
    sd      s10,0(a1)
                    #      mu a3_19:115 
                    #      a3_19 = chi a3_19:115 
                    #      new_var temp_21_38:i32 
                    #      temp_21_38 = Add i32 i_19, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    add     s11,a5,a6
                    #      i_19 = i32 temp_21_38 
                    #      jump label: while.head_37 
    sw      s7,232(sp)
    sw      s6,236(sp)
    li      s5, 80344
    add     s5,sp,s5
    sw      s5,0(s5)
    sb      a4,279(sp)
    sw      s11,220(sp)
    sd      s4,240(sp)
    sw      s3,252(sp)
    li      s2, 120344
    add     s2,sp,s2
    sw      s2,0(s2)
    sd      s1,256(sp)
    li      a7, 40344
    add     a7,sp,a7
    sw      a7,0(a7)
    sw      s10,224(sp)
    sd      a1,264(sp)
    sw      s9,228(sp)
    j       .while.head_37
                    #      label while.exit_37: 
.while.exit_37:
                    #      ans_19 = i32 0_0 
    li      a1, 0
                    #      i_19 = i32 0_0 
                    #      jump label: while.head_44 
    j       .while.head_44
                    #      label while.head_44: 
.while.head_44:
                    #      new_var temp_22_43:i1 
                    #      temp_22_43 = icmp i32 Slt i_19, 10000_0 
    li      a6, 10000
    slt     a7,a5,a6
                    #      br i1 temp_22_43, label while.body_44, label while.exit_44 
    bnez    a7, .while.body_44
    j       .while.exit_44
                    #      label while.body_44: 
.while.body_44:
                    #      new_var temp_23_46:i1 
                    #      temp_23_46 = icmp i32 Slt i_19, 10_0 
    li      a6, 10
    slt     s1,a5,a6
                    #      br i1 temp_23_46, label branch_true_47, label branch_false_47 
    bnez    s1, .branch_true_47
    j       .branch_false_47
                    #      label branch_true_47: 
.branch_true_47:
                    #      new_var temp_24_48:ptr->i32 
                    #      new_var temp_25_48:i32 
                    #      temp_24_48 = getelementptr a3_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
    li      a6, 0
    li      s2, 1
    mul     s3,s2,a5
    add     a6,a6,s3
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_25_48 = load temp_24_48:ptr->i32 
    lw      s4,0(a6)
                    #      new_var temp_26_48:i32 
                    #      temp_26_48 = Add i32 ans_19, temp_25_48 
    add     s5,a1,s4
                    #      new_var temp_27_48:i32 
                    #      temp_27_48 = Mod i32 temp_26_48, 1333_0 
    li      s6, 1333
    rem     s7,s5,s6
                    #      ans_19 = i32 temp_27_48 
                    #       Call void putint_0(ans_19) 
                    #saved register dumping to mem
    sb      s1,214(sp)
    li      s1, 40344
    add     s1,sp,s1
    sw      s3,0(s1)
    sw      s4,196(sp)
    sw      s5,192(sp)
    sw      s7,188(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #arg load ended
    call    putint
                    #      jump label: L5_0 
    j       .L5_0
                    #      label branch_false_47: 
.branch_false_47:
                    #      new_var temp_29_51:i1 
                    #      temp_29_51 = icmp i32 Slt i_19, 20_0 
    li      a6, 20
    slt     s2,a5,a6
                    #      br i1 temp_29_51, label branch_true_52, label branch_false_52 
    bnez    s2, .branch_true_52
    j       .branch_false_52
                    #      label branch_true_52: 
.branch_true_52:
                    #      j_53 = i32 5000_0 
    li      a6, 5000
                    #      jump label: while.head_56 
    j       .while.head_56
                    #      label while.head_56: 
.while.head_56:
                    #      new_var temp_30_55:i1 
                    #      temp_30_55 = icmp i32 Slt j_53, 10000_0 
    li      s3, 10000
    slt     s4,a6,s3
                    #      br i1 temp_30_55, label while.body_56, label while.exit_56 
    bnez    s4, .while.body_56
    j       .while.exit_56
                    #      label while.body_56: 
.while.body_56:
                    #      new_var temp_31_57:ptr->i32 
                    #      new_var temp_32_57:i32 
                    #      temp_31_57 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(j_53)] 
    li      s3, 0
    li      s5, 1
    mul     s6,s5,a6
    add     s3,s3,s6
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_32_57 = load temp_31_57:ptr->i32 
    lw      s7,0(s3)
                    #      new_var temp_33_57:ptr->i32 
                    #      new_var temp_34_57:i32 
                    #      temp_33_57 = getelementptr a3_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
    li      s8, 0
                    #found literal reg Some(s5) already exist with 1_0
    mul     s9,s5,a5
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_34_57 = load temp_33_57:ptr->i32 
    lw      s10,0(s8)
                    #      new_var temp_35_57:i32 
                    #      temp_35_57 = Sub i32 temp_34_57, temp_32_57 
    sub     s11,s10,s7
                    #      new_var temp_36_57:i32 
                    #      temp_36_57 = Add i32 ans_19, temp_35_57 
    add     s5,a1,s11
                    #      ans_19 = i32 temp_36_57 
                    #      new_var temp_37_57:i32 
                    #      temp_37_57 = Add i32 j_53, 1_0 
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    sw      a1,216(sp)
    add     a1,a6,a0
                    #      j_53 = i32 temp_37_57 
                    #      jump label: while.head_56 
    sw      s7,156(sp)
    li      s6, 120344
    add     s6,sp,s6
    sw      s6,0(s6)
    sw      s5,132(sp)
    sw      s11,136(sp)
    sw      a1,128(sp)
    li      a1, 120348
    add     a1,sp,a1
    lw      a0,0(a1)
    sb      s4,175(sp)
    sd      s3,160(sp)
    sd      s8,144(sp)
    sw      s10,140(sp)
    li      a1, 120348
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,216(sp)
    li      s9, 40344
    add     s9,sp,s9
    sw      s9,0(s9)
    j       .while.head_56
                    #      label while.exit_56: 
.while.exit_56:
                    #       Call void putint_0(ans_19) 
                    #saved register dumping to mem
    sb      s1,214(sp)
    sb      s2,183(sp)
    sb      s4,175(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #arg load ended
    call    putint
                    #      jump label: L4_0 
    j       .L4_0
                    #      label branch_false_52: 
.branch_false_52:
                    #      new_var temp_38_61:i1 
                    #      temp_38_61 = icmp i32 Slt i_19, 30_0 
    li      a6, 30
    slt     s3,a5,a6
                    #      br i1 temp_38_61, label branch_true_62, label branch_false_62 
    bnez    s3, .branch_true_62
    j       .branch_false_62
                    #      label branch_true_62: 
.branch_true_62:
                    #      j_63 = i32 5000_0 
    li      a6, 5000
                    #      jump label: while.head_66 
    j       .while.head_66
                    #      label while.head_66: 
.while.head_66:
                    #      new_var temp_39_65:i1 
                    #      temp_39_65 = icmp i32 Slt j_63, 10000_0 
    li      s4, 10000
    slt     s5,a6,s4
                    #      br i1 temp_39_65, label while.body_66, label while.exit_66 
    bnez    s5, .while.body_66
    j       .while.exit_66
                    #      label while.body_66: 
.while.body_66:
                    #      new_var temp_40_68:i1 
                    #      temp_40_68 = icmp i32 Sgt j_63, 2233_0 
    li      s4, 2233
    slt     s6,s4,a6
                    #      br i1 temp_40_68, label branch_true_69, label branch_false_69 
    bnez    s6, .branch_true_69
    j       .branch_false_69
                    #      label branch_true_69: 
.branch_true_69:
                    #      new_var temp_41_70:ptr->i32 
                    #      new_var temp_42_70:i32 
                    #      temp_41_70 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(j_63)] 
    li      s4, 0
    li      s7, 1
    mul     s8,s7,a6
    add     s4,s4,s8
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_42_70 = load temp_41_70:ptr->i32 
    lw      s9,0(s4)
                    #      new_var temp_43_70:ptr->i32 
                    #      new_var temp_44_70:i32 
                    #      temp_43_70 = getelementptr a2_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
    li      s10, 0
                    #found literal reg Some(s7) already exist with 1_0
    mul     s11,s7,a5
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_44_70 = load temp_43_70:ptr->i32 
    lw      s7,0(s10)
                    #      new_var temp_45_70:i32 
                    #      temp_45_70 = Sub i32 temp_44_70, temp_42_70 
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    sub     a0,s7,s9
                    #      new_var temp_46_70:i32 
                    #      temp_46_70 = Add i32 ans_19, temp_45_70 
    sb      a2,343(sp)
    add     a2,a1,a0
                    #      ans_19 = i32 temp_46_70 
                    #      new_var temp_47_70:i32 
                    #      temp_47_70 = Add i32 j_63, 1_0 
    sw      a0,80(sp)
    li      a0, 1
    sw      a1,216(sp)
    add     a1,a6,a0
                    #      j_63 = i32 temp_47_70 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_69: 
.branch_false_69:
                    #      new_var temp_48_73:ptr->i32 
                    #      new_var temp_49_73:i32 
                    #      temp_48_73 = getelementptr a3_19:Array:i32:[Some(10000_0)] [Some(j_63)] 
    li      s4, 0
    li      s7, 1
    mul     s8,s7,a6
    add     s4,s4,s8
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_49_73 = load temp_48_73:ptr->i32 
    lw      s9,0(s4)
                    #      new_var temp_50_73:ptr->i32 
                    #      new_var temp_51_73:i32 
                    #      temp_50_73 = getelementptr a1_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
    li      s10, 0
                    #found literal reg Some(s7) already exist with 1_0
    mul     s11,s7,a5
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_51_73 = load temp_50_73:ptr->i32 
    lw      s7,0(s10)
                    #      new_var temp_52_73:i32 
                    #      temp_52_73 = Add i32 temp_51_73, temp_49_73 
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,s7,s9
                    #      new_var temp_53_73:i32 
                    #      temp_53_73 = Add i32 ans_19, temp_52_73 
    sb      a2,343(sp)
    add     a2,a1,a0
                    #      new_var temp_54_73:i32 
                    #      temp_54_73 = Mod i32 temp_53_73, 13333_0 
    sw      a0,40(sp)
    li      a0, 13333
    sw      a1,216(sp)
    rem     a1,a2,a0
                    #      ans_19 = i32 temp_54_73 
    mv      a0, a1
                    #      new_var temp_55_73:i32 
                    #      temp_55_73 = Add i32 j_63, 2_0 
    sw      a0,216(sp)
    li      a0, 2
    sw      a1,32(sp)
    add     a1,a6,a0
                    #      j_63 = i32 temp_55_73 
                    #      jump label: L2_0 
    sw      s7,44(sp)
    lw      s7,84(sp)
    li      s11, 120344
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a0, 80344
    add     a0,sp,a0
    lw      s11,0(a0)
    li      a0, 80344
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a2,36(sp)
    lw      a2,76(sp)
    sd      s4,64(sp)
    ld      s4,104(sp)
    li      s8, 40344
    add     s8,sp,s8
    sw      s8,0(s8)
    sw      a1,28(sp)
    li      a1, 120344
    add     a1,sp,a1
    lw      s8,0(a1)
    sd      s10,48(sp)
    ld      s10,88(sp)
    li      a1, 120344
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,72(sp)
    sw      s9,60(sp)
    lw      s9,100(sp)
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      jump label: while.head_66 
    sw      s7,84(sp)
    sb      s6,118(sp)
    sb      s5,119(sp)
    li      a0, 80344
    add     a0,sp,a0
    sw      s11,0(a0)
    sw      a1,72(sp)
    li      a1, 120348
    add     a1,sp,a1
    lw      a0,0(a1)
    sw      a2,76(sp)
    lb      a2,343(sp)
    sd      s4,104(sp)
    li      s8, 120344
    add     s8,sp,s8
    sw      s8,0(s8)
    sd      s10,88(sp)
    li      a1, 120348
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,216(sp)
    sw      s9,100(sp)
    j       .while.head_66
                    #      label while.exit_66: 
.while.exit_66:
                    #       Call void putint_0(ans_19) 
                    #saved register dumping to mem
    sb      s1,214(sp)
    sb      s2,183(sp)
    sb      s3,127(sp)
    sb      s5,119(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #arg load ended
    call    putint
                    #      jump label: L3_0 
    j       .L3_0
                    #      label branch_false_62: 
.branch_false_62:
                    #      new_var temp_56_77:ptr->i32 
                    #      new_var temp_57_77:i32 
                    #      temp_56_77 = getelementptr a3_19:Array:i32:[Some(10000_0)] [Some(i_19)] 
    li      a6, 0
    li      s4, 1
    mul     s5,s4,a5
    add     a6,a6,s5
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_57_77 = load temp_56_77:ptr->i32 
    lw      s6,0(a6)
                    #      new_var temp_58_77:i32 
                    #      temp_58_77 = Mul i32 temp_57_77, k_17 
    mul     s7,s6,a0
                    #      new_var temp_59_77:i32 
                    #      temp_59_77 = Add i32 ans_19, temp_58_77 
    add     s8,a1,s7
                    #      new_var temp_60_77:i32 
                    #      temp_60_77 = Mod i32 temp_59_77, 99988_0 
    li      s9, 99988
    rem     s10,s8,s9
                    #      ans_19 = i32 temp_60_77 
                    #      jump label: L3_0 
    sw      s7,8(sp)
    sw      s6,12(sp)
    li      s5, 40344
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    sd      a6,16(sp)
    lw      a6,120(sp)
    sb      s3,127(sp)
    sb      s2,183(sp)
    sb      s1,214(sp)
    sw      s8,4(sp)
    sw      s10,0(sp)
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      label L4_0: 
.L4_0:
                    #      label L5_0: 
.L5_0:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_28_45:i32 
                    #      temp_28_45 = Add i32 i_19, 1_0 
    li      a0, 1
    add     s1,a5,a0
                    #      i_19 = i32 temp_28_45 
                    #      jump label: while.head_44 
    li      s2, 120348
    add     s2,sp,s2
    lw      a0,0(s2)
    sd      a6,200(sp)
    li      s2, 120348
    add     s2,sp,s2
    sw      s2,0(s2)
    sw      s1,184(sp)
    sb      a7,215(sp)
    j       .while.head_44
                    #      label while.exit_44: 
.while.exit_44:
                    #      ret ans_19 
    li      a6, 120360
    add     a6,sp,a6
    ld      ra,0(a6)
    li      s1, 120352
    add     s1,sp,s1
    ld      s0,0(s1)
    sw      a1,216(sp)
    li      a0, 120348
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 120368
    li      a1, 120368
    add     sp,a1,sp
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_61:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_61_82 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_61_82:i32 
                    #      temp_61_82 =  Call i32 long_array_0(9_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 9
                    #arg load ended
    call    long_array
    sw      a0,4(sp)
                    #      ret temp_61_82 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
.section        .data
    .align 4
    .globl N
                    #      global i32 N_0 
    .type N,@object
N:
    .word 10000
