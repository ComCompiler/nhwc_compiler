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
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|T:4|W:4|x:4|i:4|j:4|temp_2:4|temp_3:4|temp_4:1|none:3|temp_5:4|temp_6:4|temp_7:8|temp_8:8|temp_9:8040|temp_10:8|temp_11:4|temp_12:4|temp_13:140700|none:4|temp_14:8|temp_15:4|temp_16:4|temp_17:4|temp_18:1|temp_19:1|none:2|temp_20:4|temp_21:4|temp_22:8040|temp_23:8|temp_24:4|temp_25:4|temp_26:4|temp_27:140700|temp_28:8|temp_29:4|temp_30:4|temp_31:4|temp_32:140700|temp_33:8|temp_34:4|temp_35:4|temp_36:1|none:7|temp_37:8|temp_38:4|temp_39:4|temp_40:8040|temp_41:8|temp_42:4|temp_43:4|temp_44:140700|none:4|temp_45:8|temp_46:4|temp_47:4|temp_48:4|none:4|temp_49:8|temp_50:4|temp_51:4|temp_52:8040|temp_53:8|temp_54:4|temp_55:4|temp_56:4|temp_57:140700|temp_58:8|temp_59:4|temp_60:4|temp_61:4|res:4|temp_62:1|none:3|temp_63:140700|temp_64:8|temp_65:4|temp_66:1|none:3|temp_67:140700|none:4|temp_68:8|temp_69:4|temp_70:4
    li      a0, -1017408
    li      a0, -1017408
    add     sp,a0,sp
    li      a1, 1017400
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 1017392
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 1017408
    li      a3, 1017408
    add     s0,a3,sp
                    #      alloc i32 T_18 
                    #      alloc i32 W_18 
                    #      alloc i32 x_18 
                    #      alloc i32 i_18 
                    #      alloc i32 j_18 
                    #      alloc i32 temp_2_18 
                    #      alloc i32 temp_3_18 
                    #      alloc i1 temp_4_23 
                    #      alloc i32 temp_5_25 
                    #      alloc i32 temp_6_25 
                    #      alloc ptr->i32 temp_7_25 
                    #      alloc ptr->i32 temp_8_25 
                    #      alloc Array:i32:[Some(1005_0), Some(2_0)] temp_9_25 
                    #      alloc ptr->i32 temp_10_25 
                    #      alloc i32 temp_11_25 
                    #      alloc i32 temp_12_25 
                    #      alloc Array:i32:[Some(1005_0), Some(35_0)] temp_13_25 
                    #      alloc ptr->i32 temp_14_25 
                    #      alloc i32 temp_15_25 
                    #      alloc i32 temp_16_25 
                    #      alloc i32 temp_17_25 
                    #      alloc i1 temp_18_31 
                    #      alloc i1 temp_19_35 
                    #      alloc i32 temp_20_38 
                    #      alloc i32 temp_21_38 
                    #      alloc Array:i32:[Some(1005_0), Some(2_0)] temp_22_38 
                    #      alloc ptr->i32 temp_23_38 
                    #      alloc i32 temp_24_38 
                    #      alloc i32 temp_25_38 
                    #      alloc i32 temp_26_38 
                    #      alloc Array:i32:[Some(1005_0), Some(35_0)] temp_27_38 
                    #      alloc ptr->i32 temp_28_38 
                    #      alloc i32 temp_29_38 
                    #      alloc i32 temp_30_38 
                    #      alloc i32 temp_31_38 
                    #      alloc Array:i32:[Some(1005_0), Some(35_0)] temp_32_38 
                    #      alloc ptr->i32 temp_33_38 
                    #      alloc i32 temp_34_38 
                    #      alloc i32 temp_35_38 
                    #      alloc i1 temp_36_38 
                    #      alloc ptr->i32 temp_37_40 
                    #      alloc i32 temp_38_40 
                    #      alloc i32 temp_39_40 
                    #      alloc Array:i32:[Some(1005_0), Some(2_0)] temp_40_40 
                    #      alloc ptr->i32 temp_41_40 
                    #      alloc i32 temp_42_40 
                    #      alloc i32 temp_43_40 
                    #      alloc Array:i32:[Some(1005_0), Some(35_0)] temp_44_40 
                    #      alloc ptr->i32 temp_45_40 
                    #      alloc i32 temp_46_40 
                    #      alloc i32 temp_47_40 
                    #      alloc i32 temp_48_37 
                    #      alloc ptr->i32 temp_49_42 
                    #      alloc i32 temp_50_42 
                    #      alloc i32 temp_51_42 
                    #      alloc Array:i32:[Some(1005_0), Some(2_0)] temp_52_42 
                    #      alloc ptr->i32 temp_53_42 
                    #      alloc i32 temp_54_42 
                    #      alloc i32 temp_55_42 
                    #      alloc i32 temp_56_42 
                    #      alloc Array:i32:[Some(1005_0), Some(35_0)] temp_57_42 
                    #      alloc ptr->i32 temp_58_42 
                    #      alloc i32 temp_59_42 
                    #      alloc i32 temp_60_42 
                    #      alloc i32 temp_61_33 
                    #      alloc i32 res_18 
                    #      alloc i1 temp_62_48 
                    #      alloc Array:i32:[Some(1005_0), Some(35_0)] temp_63_51 
                    #      alloc ptr->i32 temp_64_51 
                    #      alloc i32 temp_65_51 
                    #      alloc i1 temp_66_51 
                    #      alloc Array:i32:[Some(1005_0), Some(35_0)] temp_67_53 
                    #      alloc ptr->i32 temp_68_53 
                    #      alloc i32 temp_69_53 
                    #      alloc i32 temp_70_50 
                    #      label L0_0: 
.L0_0:
                    #      new_var T_18:i32 
                    #      new_var W_18:i32 
                    #      new_var x_18:i32 
                    #      new_var i_18:i32 
                    #      new_var j_18:i32 
                    #      new_var temp_2_18:i32 
                    #      temp_2_18 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 1017368
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      T_18 = i32 temp_2_18 
    mv      a4, a0
                    #      new_var temp_3_18:i32 
                    #      temp_3_18 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 1017368
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a5, 1017364
    add     a5,sp,a5
    sw      a0,0(a5)
                    #      W_18 = i32 temp_3_18 
    mv      a6, a0
                    #      i_18 = i32 1_0 
    li      a7, 1
                    #      jump label: while.head_24 
    j       .while.head_24
                    #      label while.head_24: 
.while.head_24:
                    #      new_var temp_4_23:i1 
                    #      temp_4_23 = icmp i32 Sle i_18, T_18 
    slt     a1,a4,a7
    xori    a1,a1,1
                    #      br i1 temp_4_23, label while.body_24, label while.exit_24 
    bnez    a1, .while.body_24
    j       .while.exit_24
                    #      label while.body_24: 
.while.body_24:
                    #      new_var temp_5_25:i32 
                    #      temp_5_25 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 1017364
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 1017356
    add     a2,sp,a2
    sw      a0,0(a2)
                    #      x_18 = i32 temp_5_25 
    mv      a3, a0
                    #      new_var temp_6_25:i32 
                    #      temp_6_25 = Mod i32 x_18, 2_0 
    li      a5, 2
    rem     s1,a3,a5
                    #      new_var temp_7_25:ptr->i32 
                    #      temp_7_25 = getelementptr t_0:Array:i32:[Some(1005_0), Some(2_0)] [Some(i_18), Some(temp_6_25)] 
    li      s2, 0
                    #found literal reg Some(a5) already exist with 2_0
    mul     s3,a5,a7
                    #occupy reg s3 with t_0
    add     s2,s2,s3
    li      s4, 1
    mul     s5,s4,s1
                    #occupy reg s5 with t_0
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,s2
                    #      store 1_0:i32 temp_7_25:ptr->i32 
                    #found literal reg Some(s4) already exist with 1_0
    sd      s4,0(s2)
                    #      mu t_0:67 
                    #      t_0 = chi t_0:67 
                    #      new_var temp_8_25:ptr->i32 
                    #      temp_8_25 = getelementptr dp_0:Array:i32:[Some(1005_0), Some(35_0)] [Some(i_18), Some(0_0)] 
    li      s6, 0
    li      s7, 35
    mul     s8,s7,a7
                    #occupy reg s8 with dp_0
    add     s6,s6,s8
                    #found literal reg Some(s4) already exist with 1_0
    li      s9, 0
    mul     s10,s4,s9
                    #occupy reg s10 with dp_0
    add     s6,s6,s10
    slli s6,s6,2
    add     s6,s6,s6
                    #      new_var temp_9_25:Array:i32:[Some(1005_0), Some(2_0)] 
                    #      temp_9_25 = load *t_0:ptr->Array:i32:[Some(2_0)] 
                    #   load label t as ptr to reg
    la      s11, t
                    #occupy reg s11 with *t_0
    lw      a2,0(s11)
                    #      new_var temp_10_25:ptr->i32 
                    #      new_var temp_11_25:i32 
                    #      temp_10_25 = getelementptr temp_9_25:Array:i32:[Some(1005_0), Some(2_0)] [Some(i_18), Some(1_0)] 
    li      a5, 0
    li      s3, 2
    add     a5,a5,a2
                    #found literal reg Some(s4) already exist with 1_0
    li      s3, 1
    add     a5,a5,a2
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_11_25 = load temp_10_25:ptr->i32 
    lw      s3,0(a5)
                    #      new_var temp_12_25:i32 
                    #      temp_12_25 = Sub i32 i_18, 1_0 
                    #found literal reg Some(s4) already exist with 1_0
    sub     s5,a7,s4
                    #      new_var temp_13_25:Array:i32:[Some(1005_0), Some(35_0)] 
                    #      temp_13_25 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
                    #   load label dp as ptr to reg
    la      s4, dp
                    #occupy reg s4 with *dp_0
    lw      s7,0(s4)
                    #      new_var temp_14_25:ptr->i32 
                    #      new_var temp_15_25:i32 
                    #      temp_14_25 = getelementptr temp_13_25:Array:i32:[Some(1005_0), Some(35_0)] [Some(temp_12_25), Some(0_0)] 
    li      s4, 0
    li      s8, 35
    add     s4,s4,s7
    li      s8, 1
                    #found literal reg Some(s9) already exist with 0_0
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_15_25 = load temp_14_25:ptr->i32 
    lw      s8,0(s4)
                    #      new_var temp_16_25:i32 
                    #      temp_16_25 = Add i32 temp_15_25, temp_11_25 
    add     s9,s8,s3
                    #      store temp_16_25:i32 temp_8_25:ptr->i32 
    sd      s9,0(s6)
                    #      mu dp_0:97 
                    #      dp_0 = chi dp_0:97 
                    #      new_var temp_17_25:i32 
                    #      temp_17_25 = Add i32 i_18, 1_0 
    li      s10, 1
    add     s11,a7,s10
                    #      i_18 = i32 temp_17_25 
    mv      a7, s11
                    #      jump label: while.head_24 
    li      a5, 1009288
    add     a5,sp,a5
    sd      a5,0(a5)
    li      s5, 1009280
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s7, 1009276
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s6, 1017336
    add     s6,sp,s6
    sd      s6,0(s6)
    li      a0, 1017356
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s10, 1017364
    add     s10,sp,s10
    lw      a0,0(s10)
    li      s4, 868568
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s3, 1009284
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s9, 868560
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s2, 1017344
    add     s2,sp,s2
    sd      s2,0(s2)
    li      s8, 868564
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s1, 1017352
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a1, 1017363
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a3, 1017380
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s10, 1017364
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 868556
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a2, 1017332
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .while.head_24
                    #      label while.exit_24: 
.while.exit_24:
                    #      i_18 = i32 1_0 
                    #      jump label: while.head_32 
    j       .while.head_32
                    #      label while.head_32: 
.while.head_32:
                    #      new_var temp_18_31:i1 
                    #      temp_18_31 = icmp i32 Sle i_18, T_18 
    slt     a2,a4,a7
    xori    a2,a2,1
                    #      br i1 temp_18_31, label while.body_32, label while.exit_32 
    bnez    a2, .while.body_32
    j       .while.exit_32
                    #      label while.body_32: 
.while.body_32:
                    #      j_18 = i32 1_0 
    li      a3, 1
                    #      jump label: while.head_36 
    j       .while.head_36
                    #      label while.head_36: 
.while.head_36:
                    #      new_var temp_19_35:i1 
                    #      temp_19_35 = icmp i32 Sle j_18, W_18 
    slt     a5,a6,a3
    xori    a5,a5,1
                    #      br i1 temp_19_35, label while.body_36, label while.exit_36 
    bnez    a5, .while.body_36
    j       .while.exit_36
                    #      label while.body_36: 
.while.body_36:
                    #      new_var temp_20_38:i32 
                    #      temp_20_38 = Add i32 j_18, 1_0 
    li      s1, 1
    add     s2,a3,s1
                    #      new_var temp_21_38:i32 
                    #      temp_21_38 = Mod i32 temp_20_38, 2_0 
    li      s3, 2
    rem     s4,s2,s3
                    #      new_var temp_22_38:Array:i32:[Some(1005_0), Some(2_0)] 
                    #      temp_22_38 = load *t_0:ptr->Array:i32:[Some(2_0)] 
                    #   load label t as ptr to reg
    la      s5, t
                    #occupy reg s5 with *t_0
    lw      s6,0(s5)
                    #      new_var temp_23_38:ptr->i32 
                    #      new_var temp_24_38:i32 
                    #      temp_23_38 = getelementptr temp_22_38:Array:i32:[Some(1005_0), Some(2_0)] [Some(i_18), Some(temp_21_38)] 
    li      s7, 0
                    #found literal reg Some(s3) already exist with 2_0
    add     s7,s7,s6
                    #found literal reg Some(s1) already exist with 1_0
    add     s7,s7,s6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_24_38 = load temp_23_38:ptr->i32 
    lw      s8,0(s7)
                    #      new_var temp_25_38:i32 
                    #      temp_25_38 = Sub i32 j_18, 1_0 
                    #found literal reg Some(s1) already exist with 1_0
    sub     s9,a3,s1
                    #      new_var temp_26_38:i32 
                    #      temp_26_38 = Sub i32 i_18, 1_0 
                    #found literal reg Some(s1) already exist with 1_0
    sub     s10,a7,s1
                    #      new_var temp_27_38:Array:i32:[Some(1005_0), Some(35_0)] 
                    #      temp_27_38 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
                    #   load label dp as ptr to reg
    la      s11, dp
                    #occupy reg s11 with *dp_0
    lw      s1,0(s11)
                    #      new_var temp_28_38:ptr->i32 
                    #      new_var temp_29_38:i32 
                    #      temp_28_38 = getelementptr temp_27_38:Array:i32:[Some(1005_0), Some(35_0)] [Some(temp_26_38), Some(temp_25_38)] 
    li      s3, 0
    li      s5, 35
    add     s3,s3,s1
    li      s5, 1
    add     s3,s3,s1
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_29_38 = load temp_28_38:ptr->i32 
    lw      s5,0(s3)
                    #      new_var temp_30_38:i32 
                    #      temp_30_38 = Add i32 temp_29_38, temp_24_38 
    add     s11,s5,s8
                    #      new_var temp_31_38:i32 
                    #      temp_31_38 = Sub i32 i_18, 1_0 
    li      a0, 1017364
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1017363
    add     a1,sp,a1
    sb      a1,0(a1)
    sub     a1,a7,a0
                    #      new_var temp_32_38:Array:i32:[Some(1005_0), Some(35_0)] 
                    #      temp_32_38 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
                    #   load label dp as ptr to reg
    la      a0, dp
                    #occupy reg a0 with *dp_0
    li      a1, 719764
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_33_38:ptr->i32 
                    #      new_var temp_34_38:i32 
                    #      temp_33_38 = getelementptr temp_32_38:Array:i32:[Some(1005_0), Some(35_0)] [Some(temp_31_38), Some(j_18)] 
    li      a0, 0
    li      a1, 719760
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 35
    li      a2, 868555
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 1017372
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 719764
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_34_38 = load temp_33_38:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_35_38:i32 
                    #      temp_35_38 = Add i32 temp_34_38, temp_24_38 
    li      a0, 579056
    add     a0,sp,a0
    sd      a0,0(a0)
    add     a0,a1,s8
                    #      new_var temp_36_38:i1 
                    #      temp_36_38 = icmp i32 Sgt temp_35_38, temp_30_38 
    li      a1, 579052
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s11,a0
                    #      br i1 temp_36_38, label branch_true_39, label branch_false_39 
    bnez    a1, .branch_true_39
    j       .branch_false_39
                    #      label branch_true_39: 
.branch_true_39:
                    #      new_var temp_37_40:ptr->i32 
                    #      temp_37_40 = getelementptr dp_0:Array:i32:[Some(1005_0), Some(35_0)] [Some(i_18), Some(j_18)] 
    li      a0, 579048
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 579047
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 35
    li      a2, 1017372
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a7
                    #occupy reg a2 with dp_0
    add     a0,a0,a2
    li      a1, 1
    li      a3, 719760
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
                    #occupy reg a3 with dp_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_38_40:i32 
                    #      temp_38_40 = Add i32 j_18, 1_0 
                    #found literal reg Some(a1) already exist with 1_0
    add     a3,a2,a1
                    #      new_var temp_39_40:i32 
                    #      temp_39_40 = Mod i32 temp_38_40, 2_0 
    li      a1, 2
    li      a0, 579032
    add     a0,sp,a0
    sd      a0,0(a0)
    rem     a0,a3,a1
                    #      new_var temp_40_40:Array:i32:[Some(1005_0), Some(2_0)] 
                    #      temp_40_40 = load *t_0:ptr->Array:i32:[Some(2_0)] 
                    #   load label t as ptr to reg
    la      a1, t
                    #occupy reg a1 with *t_0
    li      a0, 579024
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_41_40:ptr->i32 
                    #      new_var temp_42_40:i32 
                    #      temp_41_40 = getelementptr temp_40_40:Array:i32:[Some(1005_0), Some(2_0)] [Some(i_18), Some(temp_39_40)] 
    li      a1, 0
    li      a0, 579020
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2
    li      a2, 1017372
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a7
    add     a1,a1,a2
    li      a0, 1
    li      a2, 579020
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 579028
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_42_40 = load temp_41_40:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_43_40:i32 
                    #      temp_43_40 = Sub i32 i_18, 1_0 
    li      a0, 570972
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 570976
    add     a1,sp,a1
    sd      a1,0(a1)
    sub     a1,a7,a0
                    #      new_var temp_44_40:Array:i32:[Some(1005_0), Some(35_0)] 
                    #      temp_44_40 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
                    #   load label dp as ptr to reg
    la      a0, dp
                    #occupy reg a0 with *dp_0
    li      a1, 570968
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_45_40:ptr->i32 
                    #      new_var temp_46_40:i32 
                    #      temp_45_40 = getelementptr temp_44_40:Array:i32:[Some(1005_0), Some(35_0)] [Some(temp_43_40), Some(j_18)] 
    li      a0, 0
    li      a1, 570964
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 35
    li      a2, 579024
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 579020
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 570968
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_46_40 = load temp_45_40:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_47_40:i32 
                    #      temp_47_40 = Add i32 temp_46_40, temp_42_40 
    li      a0, 430256
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a2, 1017372
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
                    #      store temp_47_40:i32 temp_37_40:ptr->i32 
    li      a0, 570972
    add     a0,sp,a0
    sw      a0,0(a0)
    sd      a2,0(a0)
                    #      mu dp_0:209 
                    #      dp_0 = chi dp_0:209 
                    #      jump label: L1_0 
    j       .L1_0
                    #      label branch_false_39: 
.branch_false_39:
                    #      new_var temp_49_42:ptr->i32 
                    #      temp_49_42 = getelementptr dp_0:Array:i32:[Some(1005_0), Some(35_0)] [Some(i_18), Some(j_18)] 
    li      a0, 579048
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 579047
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 35
    li      a2, 1017372
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a7
                    #occupy reg a2 with dp_0
    add     a0,a0,a2
    li      a1, 1
    li      a3, 719760
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
                    #occupy reg a3 with dp_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_50_42:i32 
                    #      temp_50_42 = Add i32 j_18, 1_0 
                    #found literal reg Some(a1) already exist with 1_0
    add     a3,a2,a1
                    #      new_var temp_51_42:i32 
                    #      temp_51_42 = Mod i32 temp_50_42, 2_0 
    li      a1, 2
    li      a0, 430232
    add     a0,sp,a0
    sd      a0,0(a0)
    rem     a0,a3,a1
                    #      new_var temp_52_42:Array:i32:[Some(1005_0), Some(2_0)] 
                    #      temp_52_42 = load *t_0:ptr->Array:i32:[Some(2_0)] 
                    #   load label t as ptr to reg
    la      a1, t
                    #occupy reg a1 with *t_0
    li      a0, 430224
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_53_42:ptr->i32 
                    #      new_var temp_54_42:i32 
                    #      temp_53_42 = getelementptr temp_52_42:Array:i32:[Some(1005_0), Some(2_0)] [Some(i_18), Some(temp_51_42)] 
    li      a1, 0
    li      a0, 430220
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2
    li      a2, 1017372
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a7
    add     a1,a1,a2
    li      a0, 1
    li      a2, 430220
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 430228
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_54_42 = load temp_53_42:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_55_42:i32 
                    #      temp_55_42 = Sub i32 j_18, 1_0 
    li      a0, 422172
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 422176
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 1
    li      a2, 430224
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_56_42:i32 
                    #      temp_56_42 = Sub i32 i_18, 1_0 
                    #found literal reg Some(a1) already exist with 1_0
    li      a0, 1017372
    add     a0,sp,a0
    sw      a0,0(a0)
    sub     a0,a7,a1
                    #      new_var temp_57_42:Array:i32:[Some(1005_0), Some(35_0)] 
                    #      temp_57_42 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
                    #   load label dp as ptr to reg
    la      a1, dp
                    #occupy reg a1 with *dp_0
    li      a0, 422164
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_58_42:ptr->i32 
                    #      new_var temp_59_42:i32 
                    #      temp_58_42 = getelementptr temp_57_42:Array:i32:[Some(1005_0), Some(35_0)] [Some(temp_56_42), Some(temp_55_42)] 
    li      a1, 0
    li      a0, 422160
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 35
    li      a2, 422168
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 430220
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    li      a0, 1
    li      a2, 422164
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_59_42 = load temp_58_42:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_60_42:i32 
                    #      temp_60_42 = Add i32 temp_59_42, temp_54_42 
    li      a1, 281456
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a2, 422168
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a0,a1
                    #      store temp_60_42:i32 temp_49_42:ptr->i32 
    li      a0, 281452
    add     a0,sp,a0
    sw      a0,0(a0)
    sd      a2,0(a0)
                    #      mu dp_0:252 
                    #      dp_0 = chi dp_0:252 
                    #      jump label: L1_0 
    li      a0, 430232
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 422172
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 579032
    add     a1,sp,a1
    ld      a0,0(a1)
    li      a1, 579032
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a2, 281448
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 430252
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a3, 422160
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a2, 430252
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 570964
    add     a2,sp,a2
    lw      a3,0(a2)
    li      a2, 570964
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a4, 1017388
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 430248
    add     a4,sp,a4
    lw      a2,0(a4)
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_48_37:i32 
                    #      temp_48_37 = Add i32 j_18, 1_0 
    li      a0, 579032
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 430252
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 430248
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a0,a1
                    #      j_18 = i32 temp_48_37 
    mv      a0, a2
                    #      jump label: while.head_36 
    li      a5, 868554
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s5, 719772
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s7, 860496
    add     s7,sp,s7
    sd      s7,0(s7)
    li      s6, 868540
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 1017372
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 1017364
    add     a1,sp,a1
    lw      a0,0(a1)
    li      s4, 868544
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s3, 719776
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s9, 860488
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s2, 868548
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s8, 860492
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s1, 860480
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a1, 1017364
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 430244
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1017363
    add     a2,sp,a2
    lb      a1,0(a2)
    li      a3, 570964
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a2, 1017363
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1017372
    add     a2,sp,a2
    lw      a3,0(a2)
    li      s10, 860484
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 719768
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a2, 1017372
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a4, 1017388
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 868555
    add     a4,sp,a4
    lb      a2,0(a4)
    j       .while.head_36
                    #      label while.exit_36: 
.while.exit_36:
                    #      new_var temp_61_33:i32 
                    #      temp_61_33 = Add i32 i_18, 1_0 
    li      s1, 1
    add     s2,a7,s1
                    #      i_18 = i32 temp_61_33 
    mv      a7, s2
                    #      jump label: while.head_32 
    li      a5, 868554
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s2, 281444
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a3, 1017372
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a2, 868555
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_32
                    #      label while.exit_32: 
.while.exit_32:
                    #      res_18 = i32 0_0 
    li      a3, 0
                    #      j_18 = i32 0_0 
    li      a5, 0
                    #      jump label: while.head_49 
    j       .while.head_49
                    #      label while.head_49: 
.while.head_49:
                    #      new_var temp_62_48:i1 
                    #      temp_62_48 = icmp i32 Sle j_18, W_18 
    slt     s1,a6,a5
    xori    s1,s1,1
                    #      br i1 temp_62_48, label while.body_49, label while.exit_49 
    bnez    s1, .while.body_49
    j       .while.exit_49
                    #      label while.body_49: 
.while.body_49:
                    #      new_var temp_63_51:Array:i32:[Some(1005_0), Some(35_0)] 
                    #      temp_63_51 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
                    #   load label dp as ptr to reg
    la      s2, dp
                    #occupy reg s2 with *dp_0
    lw      s3,0(s2)
                    #      new_var temp_64_51:ptr->i32 
                    #      new_var temp_65_51:i32 
                    #      temp_64_51 = getelementptr temp_63_51:Array:i32:[Some(1005_0), Some(35_0)] [Some(T_18), Some(j_18)] 
    li      s4, 0
    li      s5, 35
    add     s4,s4,s3
    li      s6, 1
    add     s4,s4,s3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_65_51 = load temp_64_51:ptr->i32 
    lw      s7,0(s4)
                    #      new_var temp_66_51:i1 
                    #      temp_66_51 = icmp i32 Slt res_18, temp_65_51 
    slt     s8,a3,s7
                    #      br i1 temp_66_51, label branch_true_52, label branch_false_52 
    bnez    s8, .branch_true_52
    j       .branch_false_52
                    #      label branch_true_52: 
.branch_true_52:
                    #      new_var temp_67_53:Array:i32:[Some(1005_0), Some(35_0)] 
                    #      temp_67_53 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
                    #   load label dp as ptr to reg
    la      s2, dp
                    #occupy reg s2 with *dp_0
    lw      s5,0(s2)
                    #      new_var temp_68_53:ptr->i32 
                    #      new_var temp_69_53:i32 
                    #      temp_68_53 = getelementptr temp_67_53:Array:i32:[Some(1005_0), Some(35_0)] [Some(T_18), Some(j_18)] 
    li      s6, 0
    li      s9, 35
    add     s6,s6,s5
    li      s10, 1
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_69_53 = load temp_68_53:ptr->i32 
    lw      s11,0(s6)
                    #      res_18 = i32 temp_69_53 
    mv      a3, s11
                    #      jump label: branch_false_52 
    li      s5, 140716
    add     s5,sp,s5
    sw      s5,0(s5)
    sd      s6,8(sp)
    sw      s11,4(sp)
    j       .branch_false_52
                    #      label branch_false_52: 
.branch_false_52:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_70_50:i32 
                    #      temp_70_50 = Add i32 j_18, 1_0 
    li      s2, 1
    add     s5,a5,s2
                    #      j_18 = i32 temp_70_50 
    mv      a5, s5
                    #      jump label: while.head_49 
    sw      s5,0(sp)
    li      s6, 140724
    add     s6,sp,s6
    sw      s7,0(s6)
    li      s4, 140728
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s3, 281432
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s8, 140723
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s1, 281439
    add     s1,sp,s1
    sb      s1,0(s1)
    j       .while.head_49
                    #      label while.exit_49: 
.while.exit_49:
                    #      ret res_18 
    li      s2, 1017400
    add     s2,sp,s2
    ld      ra,0(s2)
    li      s3, 1017392
    add     s3,sp,s3
    ld      s0,0(s3)
    li      a3, 281440
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a0, 1017364
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s4, 1017408
    li      s4, 1017408
    add     sp,s4,sp
    ret
.section        .data
    .align 4
    .globl dp
                    #      global Array:i32:[Some(1005_0), Some(35_0)] dp_0 
    .type dp,@object
dp:
    .word 0
    .zero 140700
    .align 4
    .globl t
                    #      global Array:i32:[Some(1005_0), Some(2_0)] t_0 
    .type t,@object
t:
    .word 0
    .zero 8040
