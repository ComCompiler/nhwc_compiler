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
                    #mem layout:|ra_main:8|s0_main:8|i:4|j:4|t:4|n:4|temp:4|none:4|temp_0:8|temp_1:8|temp_2:8|temp_3:8|temp_4:8|temp_5:8|temp_6:8|temp_7:8|temp_8:8|temp_9:8|temp_10:8|temp_11:8|temp_12:8|temp_13:8|temp_14:8|temp_15:8|temp_16:8|temp_17:8|temp_18:8|temp_19:8|temp_20:8|temp_21:8|temp_22:8|temp_23:8|temp_24:8|temp_25:8|temp_26:8|temp_27:8|temp_28:8|temp_29:8|mult1:80|temp_30:8|temp_31:8|temp_32:8|temp_33:8|temp_34:8|temp_35:8|temp_36:8|temp_37:8|temp_38:8|temp_39:8|temp_40:8|temp_41:8|temp_42:8|temp_43:8|temp_44:8|temp_45:8|temp_46:8|temp_47:8|temp_48:8|temp_49:8|temp_50:8|temp_51:8|temp_52:8|temp_53:8|temp_54:8|temp_55:8|temp_56:8|temp_57:8|temp_58:8|temp_59:8|mult2:80|len1:4|len2:4|c1:100|c2:100|result:160|temp_60:1|none:7|temp_61:8|temp_62:8|temp_63:4|temp_64:4|temp_65:1|none:7|temp_66:8|temp_67:8|temp_68:4|temp_69:4|temp_70:4|temp_71:4|temp_72:1|none:7|temp_73:8|temp_74:4|temp_75:4|temp_76:1|none:7|temp_77:8|temp_78:4|temp_79:4|temp_80:1|none:7|temp_81:8|temp_82:4|temp_83:4|temp_84:8|temp_85:4|temp_86:4|temp_87:1|none:7|temp_88:8|temp_89:4|none:4|temp_90:8|temp_91:4|temp_92:4|temp_93:8|temp_94:4|temp_95:4|temp_96:4|temp_97:4|temp_98:8|temp_99:4|temp_100:4|temp_101:4|none:4|temp_102:8|temp_103:4|temp_104:1|none:3|temp_105:8|temp_106:4|temp_107:4|temp_108:4|temp_109:1|none:3|temp_110:8|temp_111:4|temp_112:4
    addi    sp,sp,-1352
    sd      ra,1344(sp)
    sd      s0,1336(sp)
    addi    s0,sp,1352
                    #      alloc i32 i_18 
                    #      alloc i32 j_18 
                    #      alloc i32 t_18 
                    #      alloc i32 n_18 
                    #      alloc i32 temp_18 
                    #      alloc ptr->i32 temp_0_18 
                    #      alloc ptr->i32 temp_1_18 
                    #      alloc ptr->i32 temp_2_18 
                    #      alloc ptr->i32 temp_3_18 
                    #      alloc ptr->i32 temp_4_18 
                    #      alloc ptr->i32 temp_5_18 
                    #      alloc ptr->i32 temp_6_18 
                    #      alloc ptr->i32 temp_7_18 
                    #      alloc ptr->i32 temp_8_18 
                    #      alloc ptr->i32 temp_9_18 
                    #      alloc ptr->i32 temp_10_18 
                    #      alloc ptr->i32 temp_11_18 
                    #      alloc ptr->i32 temp_12_18 
                    #      alloc ptr->i32 temp_13_18 
                    #      alloc ptr->i32 temp_14_18 
                    #      alloc ptr->i32 temp_15_18 
                    #      alloc ptr->i32 temp_16_18 
                    #      alloc ptr->i32 temp_17_18 
                    #      alloc ptr->i32 temp_18_18 
                    #      alloc ptr->i32 temp_19_18 
                    #      alloc ptr->i32 temp_20_18 
                    #      alloc ptr->i32 temp_21_18 
                    #      alloc ptr->i32 temp_22_18 
                    #      alloc ptr->i32 temp_23_18 
                    #      alloc ptr->i32 temp_24_18 
                    #      alloc ptr->i32 temp_25_18 
                    #      alloc ptr->i32 temp_26_18 
                    #      alloc ptr->i32 temp_27_18 
                    #      alloc ptr->i32 temp_28_18 
                    #      alloc ptr->i32 temp_29_18 
                    #      alloc Array:i32:[Some(20_0)] mult1_18 
                    #      alloc ptr->i32 temp_30_18 
                    #      alloc ptr->i32 temp_31_18 
                    #      alloc ptr->i32 temp_32_18 
                    #      alloc ptr->i32 temp_33_18 
                    #      alloc ptr->i32 temp_34_18 
                    #      alloc ptr->i32 temp_35_18 
                    #      alloc ptr->i32 temp_36_18 
                    #      alloc ptr->i32 temp_37_18 
                    #      alloc ptr->i32 temp_38_18 
                    #      alloc ptr->i32 temp_39_18 
                    #      alloc ptr->i32 temp_40_18 
                    #      alloc ptr->i32 temp_41_18 
                    #      alloc ptr->i32 temp_42_18 
                    #      alloc ptr->i32 temp_43_18 
                    #      alloc ptr->i32 temp_44_18 
                    #      alloc ptr->i32 temp_45_18 
                    #      alloc ptr->i32 temp_46_18 
                    #      alloc ptr->i32 temp_47_18 
                    #      alloc ptr->i32 temp_48_18 
                    #      alloc ptr->i32 temp_49_18 
                    #      alloc ptr->i32 temp_50_18 
                    #      alloc ptr->i32 temp_51_18 
                    #      alloc ptr->i32 temp_52_18 
                    #      alloc ptr->i32 temp_53_18 
                    #      alloc ptr->i32 temp_54_18 
                    #      alloc ptr->i32 temp_55_18 
                    #      alloc ptr->i32 temp_56_18 
                    #      alloc ptr->i32 temp_57_18 
                    #      alloc ptr->i32 temp_58_18 
                    #      alloc ptr->i32 temp_59_18 
                    #      alloc Array:i32:[Some(20_0)] mult2_18 
                    #      alloc i32 len1_18 
                    #      alloc i32 len2_18 
                    #      alloc Array:i32:[Some(25_0)] c1_18 
                    #      alloc Array:i32:[Some(25_0)] c2_18 
                    #      alloc Array:i32:[Some(40_0)] result_18 
                    #      alloc i1 temp_60_28 
                    #      alloc ptr->i32 temp_61_30 
                    #      alloc ptr->i32 temp_62_30 
                    #      alloc i32 temp_63_30 
                    #      alloc i32 temp_64_30 
                    #      alloc i1 temp_65_34 
                    #      alloc ptr->i32 temp_66_36 
                    #      alloc ptr->i32 temp_67_36 
                    #      alloc i32 temp_68_36 
                    #      alloc i32 temp_69_36 
                    #      alloc i32 temp_70_18 
                    #      alloc i32 temp_71_18 
                    #      alloc i1 temp_72_41 
                    #      alloc ptr->i32 temp_73_43 
                    #      alloc i32 temp_74_43 
                    #      alloc i32 temp_75_18 
                    #      alloc i1 temp_76_48 
                    #      alloc ptr->i32 temp_77_50 
                    #      alloc i32 temp_78_50 
                    #      alloc i32 temp_79_50 
                    #      alloc i1 temp_80_53 
                    #      alloc ptr->i32 temp_81_55 
                    #      alloc i32 temp_82_55 
                    #      alloc i32 temp_83_55 
                    #      alloc ptr->i32 temp_84_55 
                    #      alloc i32 temp_85_55 
                    #      alloc i32 temp_86_55 
                    #      alloc i1 temp_87_57 
                    #      alloc ptr->i32 temp_88_59 
                    #      alloc i32 temp_89_59 
                    #      alloc ptr->i32 temp_90_59 
                    #      alloc i32 temp_91_59 
                    #      alloc i32 temp_92_59 
                    #      alloc ptr->i32 temp_93_59 
                    #      alloc i32 temp_94_59 
                    #      alloc i32 temp_95_59 
                    #      alloc i32 temp_96_55 
                    #      alloc i32 temp_97_55 
                    #      alloc ptr->i32 temp_98_57 
                    #      alloc i32 temp_99_50 
                    #      alloc i32 temp_100_50 
                    #      alloc i32 temp_101_50 
                    #      alloc ptr->i32 temp_102_67 
                    #      alloc i32 temp_103_67 
                    #      alloc i1 temp_104_67 
                    #      alloc ptr->i32 temp_105_67 
                    #      alloc i32 temp_106_67 
                    #      alloc i32 temp_107_71 
                    #      alloc i32 temp_108_71 
                    #      alloc i1 temp_109_71 
                    #      alloc ptr->i32 temp_110_73 
                    #      alloc i32 temp_111_73 
                    #      alloc i32 temp_112_73 
                    #      label L0_0: 
.L0_0:
                    #      new_var i_18:i32 
                    #      new_var j_18:i32 
                    #      new_var t_18:i32 
                    #      new_var n_18:i32 
                    #      new_var temp_18:i32 
                    #      new_var mult1_18:Array:i32:[Some(20_0)] 
                    #      new_var temp_0_18:ptr->i32 
                    #      temp_0_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(29_0)] 
    li      a0, 0
    li      a1, 1
    li      a2, 29
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 0_0:i32 temp_0_18:ptr->i32 
    li      a4, 0
    sd      a4,0(a0)
                    #      mu mult1_18:32 
                    #      mult1_18 = chi mult1_18:32 
                    #      new_var temp_1_18:ptr->i32 
                    #      temp_1_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(25_0)] 
    li      a5, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      a6, 25
    add     a5,a5,a3
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      store 6_0:i32 temp_1_18:ptr->i32 
    li      a7, 6
    sd      a7,0(a5)
                    #      mu mult1_18:38 
                    #      mult1_18 = chi mult1_18:38 
                    #      new_var temp_2_18:ptr->i32 
                    #      temp_2_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(22_0)] 
    li      s1, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      s2, 22
    add     s1,s1,a3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      store 3_0:i32 temp_2_18:ptr->i32 
    li      s3, 3
    sd      s3,0(s1)
                    #      mu mult1_18:44 
                    #      mult1_18 = chi mult1_18:44 
                    #      new_var temp_3_18:ptr->i32 
                    #      temp_3_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(4_0)] 
    li      s4, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      s5, 4
    add     s4,s4,a3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      store 5_0:i32 temp_3_18:ptr->i32 
    li      s6, 5
    sd      s6,0(s4)
                    #      mu mult1_18:50 
                    #      mult1_18 = chi mult1_18:50 
                    #      new_var temp_4_18:ptr->i32 
                    #      temp_4_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(13_0)] 
    li      s7, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      s8, 13
    add     s7,s7,a3
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 4_0:i32 temp_4_18:ptr->i32 
                    #found literal reg Some(s5) already exist with 4_0
    sd      s5,0(s7)
                    #      mu mult1_18:56 
                    #      mult1_18 = chi mult1_18:56 
                    #      new_var temp_5_18:ptr->i32 
                    #      temp_5_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(6_0)] 
    li      s9, 0
                    #found literal reg Some(a1) already exist with 1_0
                    #found literal reg Some(a7) already exist with 6_0
    add     s9,s9,a3
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store 7_0:i32 temp_5_18:ptr->i32 
    li      s10, 7
    sd      s10,0(s9)
                    #      mu mult1_18:62 
                    #      mult1_18 = chi mult1_18:62 
                    #      new_var temp_6_18:ptr->i32 
                    #      temp_6_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(16_0)] 
    li      s11, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      a2, 16
    add     s11,s11,a3
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      store 7_0:i32 temp_6_18:ptr->i32 
                    #found literal reg Some(s10) already exist with 7_0
    sd      s10,0(s11)
                    #      mu mult1_18:68 
                    #      mult1_18 = chi mult1_18:68 
                    #      new_var temp_7_18:ptr->i32 
                    #      temp_7_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(28_0)] 
    li      a1, 0
    li      a2, 1
    li      a4, 28
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 9_0:i32 temp_7_18:ptr->i32 
    li      a2, 9
    sd      a2,0(a1)
                    #      mu mult1_18:74 
                    #      mult1_18 = chi mult1_18:74 
                    #      new_var temp_8_18:ptr->i32 
                    #      temp_8_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(0_0)] 
    li      a2, 0
    li      a4, 1
    li      a6, 0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 1_0:i32 temp_8_18:ptr->i32 
                    #found literal reg Some(a4) already exist with 1_0
    sd      a4,0(a2)
                    #      mu mult1_18:80 
                    #      mult1_18 = chi mult1_18:80 
                    #      new_var temp_9_18:ptr->i32 
                    #      temp_9_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(18_0)] 
    li      a4, 0
    li      a6, 1
    li      a7, 18
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      store 9_0:i32 temp_9_18:ptr->i32 
    li      a6, 9
    sd      a6,0(a4)
                    #      mu mult1_18:86 
                    #      mult1_18 = chi mult1_18:86 
                    #      new_var temp_10_18:ptr->i32 
                    #      temp_10_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(3_0)] 
    li      a6, 0
    li      a7, 1
                    #found literal reg Some(s3) already exist with 3_0
    add     a6,a6,a3
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      store 4_0:i32 temp_10_18:ptr->i32 
                    #found literal reg Some(s5) already exist with 4_0
    sd      s5,0(a6)
                    #      mu mult1_18:92 
                    #      mult1_18 = chi mult1_18:92 
                    #      new_var temp_11_18:ptr->i32 
                    #      temp_11_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(10_0)] 
    li      a7, 0
    li      s2, 1
    li      s3, 10
    add     a7,a7,a3
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 1_0:i32 temp_11_18:ptr->i32 
                    #found literal reg Some(s2) already exist with 1_0
    sd      s2,0(a7)
                    #      mu mult1_18:98 
                    #      mult1_18 = chi mult1_18:98 
                    #      new_var temp_12_18:ptr->i32 
                    #      temp_12_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(9_0)] 
    li      s2, 0
    li      s3, 1
    li      s5, 9
    add     s2,s2,a3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      store 0_0:i32 temp_12_18:ptr->i32 
    li      s3, 0
    sd      s3,0(s2)
                    #      mu mult1_18:104 
                    #      mult1_18 = chi mult1_18:104 
                    #      new_var temp_13_18:ptr->i32 
                    #      temp_13_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(2_0)] 
    li      s3, 0
    li      s5, 1
    li      s6, 2
    add     s3,s3,a3
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 3_0:i32 temp_13_18:ptr->i32 
    li      s5, 3
    sd      s5,0(s3)
                    #      mu mult1_18:110 
                    #      mult1_18 = chi mult1_18:110 
                    #      new_var temp_14_18:ptr->i32 
                    #      temp_14_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(11_0)] 
    li      s5, 0
    li      s6, 1
    li      s8, 11
    add     s5,s5,a3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      store 2_0:i32 temp_14_18:ptr->i32 
    li      s6, 2
    sd      s6,0(s5)
                    #      mu mult1_18:116 
                    #      mult1_18 = chi mult1_18:116 
                    #      new_var temp_15_18:ptr->i32 
                    #      temp_15_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(14_0)] 
    li      s6, 0
    li      s8, 1
    li      s10, 14
    add     s6,s6,a3
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 5_0:i32 temp_15_18:ptr->i32 
    li      s8, 5
    sd      s8,0(s6)
                    #      mu mult1_18:122 
                    #      mult1_18 = chi mult1_18:122 
                    #      new_var temp_16_18:ptr->i32 
                    #      temp_16_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(20_0)] 
    li      s8, 0
    li      s10, 1
    sd      a0,1304(sp)
    li      a0, 20
    add     s8,s8,a3
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 1_0:i32 temp_16_18:ptr->i32 
                    #found literal reg Some(s10) already exist with 1_0
    sd      s10,0(s8)
                    #      mu mult1_18:128 
                    #      mult1_18 = chi mult1_18:128 
                    #      new_var temp_17_18:ptr->i32 
                    #      temp_17_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(21_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,1248(sp)
    li      a1, 21
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_17_18:ptr->i32 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu mult1_18:134 
                    #      mult1_18 = chi mult1_18:134 
                    #      new_var temp_18_18:ptr->i32 
                    #      temp_18_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(5_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,1168(sp)
    li      a0, 5
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 6_0:i32 temp_18_18:ptr->i32 
    li      a0, 6
    sd      a0,0(a1)
                    #      mu mult1_18:140 
                    #      mult1_18 = chi mult1_18:140 
                    #      new_var temp_19_18:ptr->i32 
                    #      temp_19_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(17_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,1160(sp)
    li      a1, 17
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 8_0:i32 temp_19_18:ptr->i32 
    li      a1, 8
    sd      a1,0(a0)
                    #      mu mult1_18:146 
                    #      mult1_18 = chi mult1_18:146 
                    #      new_var temp_20_18:ptr->i32 
                    #      temp_20_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(19_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,1152(sp)
    li      a0, 19
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 0_0:i32 temp_20_18:ptr->i32 
    li      a0, 0
    sd      a0,0(a1)
                    #      mu mult1_18:152 
                    #      mult1_18 = chi mult1_18:152 
                    #      new_var temp_21_18:ptr->i32 
                    #      temp_21_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(1_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,1144(sp)
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_21_18:ptr->i32 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu mult1_18:158 
                    #      mult1_18 = chi mult1_18:158 
                    #      new_var temp_22_18:ptr->i32 
                    #      temp_22_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(27_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,1136(sp)
    li      a0, 27
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 8_0:i32 temp_22_18:ptr->i32 
    li      a0, 8
    sd      a0,0(a1)
                    #      mu mult1_18:164 
                    #      mult1_18 = chi mult1_18:164 
                    #      new_var temp_23_18:ptr->i32 
                    #      temp_23_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(15_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,1128(sp)
    li      a1, 15
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 6_0:i32 temp_23_18:ptr->i32 
    li      a1, 6
    sd      a1,0(a0)
                    #      mu mult1_18:170 
                    #      mult1_18 = chi mult1_18:170 
                    #      new_var temp_24_18:ptr->i32 
                    #      temp_24_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(23_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,1120(sp)
    li      a0, 23
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 4_0:i32 temp_24_18:ptr->i32 
    li      a0, 4
    sd      a0,0(a1)
                    #      mu mult1_18:176 
                    #      mult1_18 = chi mult1_18:176 
                    #      new_var temp_25_18:ptr->i32 
                    #      temp_25_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(26_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,1112(sp)
    li      a1, 26
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 7_0:i32 temp_25_18:ptr->i32 
    li      a1, 7
    sd      a1,0(a0)
                    #      mu mult1_18:182 
                    #      mult1_18 = chi mult1_18:182 
                    #      new_var temp_26_18:ptr->i32 
                    #      temp_26_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(12_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,1104(sp)
    li      a0, 12
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 3_0:i32 temp_26_18:ptr->i32 
    li      a0, 3
    sd      a0,0(a1)
                    #      mu mult1_18:188 
                    #      mult1_18 = chi mult1_18:188 
                    #      new_var temp_27_18:ptr->i32 
                    #      temp_27_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(24_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,1096(sp)
    li      a1, 24
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 5_0:i32 temp_27_18:ptr->i32 
    li      a1, 5
    sd      a1,0(a0)
                    #      mu mult1_18:194 
                    #      mult1_18 = chi mult1_18:194 
                    #      new_var temp_28_18:ptr->i32 
                    #      temp_28_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(7_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,1088(sp)
    li      a0, 7
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 8_0:i32 temp_28_18:ptr->i32 
    li      a0, 8
    sd      a0,0(a1)
                    #      mu mult1_18:200 
                    #      mult1_18 = chi mult1_18:200 
                    #      new_var temp_29_18:ptr->i32 
                    #      temp_29_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(8_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,1080(sp)
    li      a1, 8
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 9_0:i32 temp_29_18:ptr->i32 
    li      a1, 9
    sd      a1,0(a0)
                    #      mu mult1_18:206 
                    #      mult1_18 = chi mult1_18:206 
                    #      new_var mult2_18:Array:i32:[Some(20_0)] 
                    #      new_var temp_30_18:ptr->i32 
                    #      temp_30_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(22_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,1072(sp)
    li      a0, 22
    sd      a2,1240(sp)
    mul     a2,s10,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 9_0:i32 temp_30_18:ptr->i32 
    li      a0, 9
    sd      a0,0(a1)
                    #      mu mult2_18:214 
                    #      mult2_18 = chi mult2_18:214 
                    #      new_var temp_31_18:ptr->i32 
                    #      temp_31_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(6_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,984(sp)
    li      a1, 6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 9_0:i32 temp_31_18:ptr->i32 
    li      a1, 9
    sd      a1,0(a0)
                    #      mu mult2_18:220 
                    #      mult2_18 = chi mult2_18:220 
                    #      new_var temp_32_18:ptr->i32 
                    #      temp_32_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(29_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,976(sp)
    li      a0, 29
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 2_0:i32 temp_32_18:ptr->i32 
    li      a0, 2
    sd      a0,0(a1)
                    #      mu mult2_18:226 
                    #      mult2_18 = chi mult2_18:226 
                    #      new_var temp_33_18:ptr->i32 
                    #      temp_33_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(21_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,968(sp)
    li      a1, 21
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 9_0:i32 temp_33_18:ptr->i32 
    li      a1, 9
    sd      a1,0(a0)
                    #      mu mult2_18:232 
                    #      mult2_18 = chi mult2_18:232 
                    #      new_var temp_34_18:ptr->i32 
                    #      temp_34_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(5_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,960(sp)
    li      a0, 5
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 7_0:i32 temp_34_18:ptr->i32 
    li      a0, 7
    sd      a0,0(a1)
                    #      mu mult2_18:238 
                    #      mult2_18 = chi mult2_18:238 
                    #      new_var temp_35_18:ptr->i32 
                    #      temp_35_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(9_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,952(sp)
    li      a1, 9
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 1_0:i32 temp_35_18:ptr->i32 
                    #found literal reg Some(s10) already exist with 1_0
    sd      s10,0(a0)
                    #      mu mult2_18:244 
                    #      mult2_18 = chi mult2_18:244 
                    #      new_var temp_36_18:ptr->i32 
                    #      temp_36_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(13_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,944(sp)
    li      a0, 13
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 6_0:i32 temp_36_18:ptr->i32 
    li      a0, 6
    sd      a0,0(a1)
                    #      mu mult2_18:250 
                    #      mult2_18 = chi mult2_18:250 
                    #      new_var temp_37_18:ptr->i32 
                    #      temp_37_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(17_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,936(sp)
    li      a1, 17
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 1_0:i32 temp_37_18:ptr->i32 
                    #found literal reg Some(s10) already exist with 1_0
    sd      s10,0(a0)
                    #      mu mult2_18:256 
                    #      mult2_18 = chi mult2_18:256 
                    #      new_var temp_38_18:ptr->i32 
                    #      temp_38_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,928(sp)
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 3_0:i32 temp_38_18:ptr->i32 
    li      a0, 3
    sd      a0,0(a1)
                    #      mu mult2_18:262 
                    #      mult2_18 = chi mult2_18:262 
                    #      new_var temp_39_18:ptr->i32 
                    #      temp_39_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(12_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,920(sp)
    li      a1, 12
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 7_0:i32 temp_39_18:ptr->i32 
    li      a1, 7
    sd      a1,0(a0)
                    #      mu mult2_18:268 
                    #      mult2_18 = chi mult2_18:268 
                    #      new_var temp_40_18:ptr->i32 
                    #      temp_40_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(11_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,912(sp)
    li      a0, 11
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 8_0:i32 temp_40_18:ptr->i32 
    li      a0, 8
    sd      a0,0(a1)
                    #      mu mult2_18:274 
                    #      mult2_18 = chi mult2_18:274 
                    #      new_var temp_41_18:ptr->i32 
                    #      temp_41_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(14_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,904(sp)
    li      a1, 14
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 4_0:i32 temp_41_18:ptr->i32 
    li      a1, 4
    sd      a1,0(a0)
                    #      mu mult2_18:280 
                    #      mult2_18 = chi mult2_18:280 
                    #      new_var temp_42_18:ptr->i32 
                    #      temp_42_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(10_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,896(sp)
    li      a0, 10
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 9_0:i32 temp_42_18:ptr->i32 
    li      a0, 9
    sd      a0,0(a1)
                    #      mu mult2_18:286 
                    #      mult2_18 = chi mult2_18:286 
                    #      new_var temp_43_18:ptr->i32 
                    #      temp_43_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(18_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,888(sp)
    li      a1, 18
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_43_18:ptr->i32 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu mult2_18:292 
                    #      mult2_18 = chi mult2_18:292 
                    #      new_var temp_44_18:ptr->i32 
                    #      temp_44_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(27_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,880(sp)
    li      a0, 27
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 1_0:i32 temp_44_18:ptr->i32 
                    #found literal reg Some(s10) already exist with 1_0
    sd      s10,0(a1)
                    #      mu mult2_18:298 
                    #      mult2_18 = chi mult2_18:298 
                    #      new_var temp_45_18:ptr->i32 
                    #      temp_45_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(26_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,872(sp)
    li      a1, 26
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_45_18:ptr->i32 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu mult2_18:304 
                    #      mult2_18 = chi mult2_18:304 
                    #      new_var temp_46_18:ptr->i32 
                    #      temp_46_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(19_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,864(sp)
    li      a0, 19
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 2_0:i32 temp_46_18:ptr->i32 
    li      a0, 2
    sd      a0,0(a1)
                    #      mu mult2_18:310 
                    #      mult2_18 = chi mult2_18:310 
                    #      new_var temp_47_18:ptr->i32 
                    #      temp_47_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(25_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,856(sp)
    li      a1, 25
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 3_0:i32 temp_47_18:ptr->i32 
    li      a1, 3
    sd      a1,0(a0)
                    #      mu mult2_18:316 
                    #      mult2_18 = chi mult2_18:316 
                    #      new_var temp_48_18:ptr->i32 
                    #      temp_48_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(7_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,848(sp)
    li      a0, 7
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 9_0:i32 temp_48_18:ptr->i32 
    li      a0, 9
    sd      a0,0(a1)
                    #      mu mult2_18:322 
                    #      mult2_18 = chi mult2_18:322 
                    #      new_var temp_49_18:ptr->i32 
                    #      temp_49_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(3_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,840(sp)
    li      a1, 3
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_49_18:ptr->i32 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu mult2_18:328 
                    #      mult2_18 = chi mult2_18:328 
                    #      new_var temp_50_18:ptr->i32 
                    #      temp_50_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(4_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,832(sp)
    li      a0, 4
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 5_0:i32 temp_50_18:ptr->i32 
    li      a0, 5
    sd      a0,0(a1)
                    #      mu mult2_18:334 
                    #      mult2_18 = chi mult2_18:334 
                    #      new_var temp_51_18:ptr->i32 
                    #      temp_51_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(0_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,824(sp)
    li      a1, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_51_18:ptr->i32 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu mult2_18:340 
                    #      mult2_18 = chi mult2_18:340 
                    #      new_var temp_52_18:ptr->i32 
                    #      temp_52_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(15_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,816(sp)
    li      a0, 15
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 3_0:i32 temp_52_18:ptr->i32 
    li      a0, 3
    sd      a0,0(a1)
                    #      mu mult2_18:346 
                    #      mult2_18 = chi mult2_18:346 
                    #      new_var temp_53_18:ptr->i32 
                    #      temp_53_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(20_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,808(sp)
    li      a1, 20
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_53_18:ptr->i32 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu mult2_18:352 
                    #      mult2_18 = chi mult2_18:352 
                    #      new_var temp_54_18:ptr->i32 
                    #      temp_54_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(16_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,800(sp)
    li      a0, 16
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 2_0:i32 temp_54_18:ptr->i32 
    li      a0, 2
    sd      a0,0(a1)
                    #      mu mult2_18:358 
                    #      mult2_18 = chi mult2_18:358 
                    #      new_var temp_55_18:ptr->i32 
                    #      temp_55_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(28_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,792(sp)
    li      a1, 28
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 2_0:i32 temp_55_18:ptr->i32 
    li      a1, 2
    sd      a1,0(a0)
                    #      mu mult2_18:364 
                    #      mult2_18 = chi mult2_18:364 
                    #      new_var temp_56_18:ptr->i32 
                    #      temp_56_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(23_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,784(sp)
    li      a0, 23
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 7_0:i32 temp_56_18:ptr->i32 
    li      a0, 7
    sd      a0,0(a1)
                    #      mu mult2_18:370 
                    #      mult2_18 = chi mult2_18:370 
                    #      new_var temp_57_18:ptr->i32 
                    #      temp_57_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(2_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,776(sp)
    li      a1, 2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 4_0:i32 temp_57_18:ptr->i32 
    li      a1, 4
    sd      a1,0(a0)
                    #      mu mult2_18:376 
                    #      mult2_18 = chi mult2_18:376 
                    #      new_var temp_58_18:ptr->i32 
                    #      temp_58_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(8_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,768(sp)
    li      a0, 8
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 0_0:i32 temp_58_18:ptr->i32 
    li      a0, 0
    sd      a0,0(a1)
                    #      mu mult2_18:382 
                    #      mult2_18 = chi mult2_18:382 
                    #      new_var temp_59_18:ptr->i32 
                    #      temp_59_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(24_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,760(sp)
    li      a1, 24
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 4_0:i32 temp_59_18:ptr->i32 
    li      a1, 4
    sd      a1,0(a0)
                    #      mu mult2_18:388 
                    #      mult2_18 = chi mult2_18:388 
                    #      len1_18 = i32 20_0 
    li      a1, 20
                    #      len2_18 = i32 20_0 
    li      s10, 20
                    #      new_var c1_18:Array:i32:[Some(25_0)] 
                    #      new_var c2_18:Array:i32:[Some(25_0)] 
                    #      new_var result_18:Array:i32:[Some(40_0)] 
                    #      i_18 = i32 0_0 
    sd      a0,752(sp)
    li      a0, 0
                    #      jump label: while.head_29 
    j       .while.head_29
                    #      label while.head_29: 
.while.head_29:
                    #      new_var temp_60_28:i1 
                    #      temp_60_28 = icmp i32 Slt i_18, len1_18 
    sw      a2,748(sp)
    slt     a2,a0,a1
                    #      br i1 temp_60_28, label while.body_29, label while.exit_29 
    bnez    a2, .while.body_29
    j       .while.exit_29
                    #      label while.body_29: 
.while.body_29:
                    #      new_var temp_61_30:ptr->i32 
                    #      temp_61_30 = getelementptr c1_18:Array:i32:[Some(25_0)] [Some(i_18)] 
    sw      a0,1332(sp)
    li      a0, 0
    sw      a1,668(sp)
    li      a1, 1
    sb      a2,303(sp)
    sw      a3,1068(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_62_30:ptr->i32 
                    #      new_var temp_63_30:i32 
                    #      temp_62_30 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(i_18)] 
    li      a1, 0
    sd      a0,288(sp)
    li      a0, 1
    sw      a3,660(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_63_30 = load temp_62_30:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_63_30:i32 temp_61_30:ptr->i32 
    sw      a0,276(sp)
    sd      a1,280(sp)
    sd      a1,0(a0)
                    #      mu c1_18:420 
                    #      c1_18 = chi c1_18:420 
                    #      new_var temp_64_30:i32 
                    #      temp_64_30 = Add i32 i_18, 1_0 
    sd      a0,288(sp)
    li      a0, 1
    sw      a1,276(sp)
    add     a1,a2,a0
                    #      i_18 = i32 temp_64_30 
                    #      jump label: while.head_29 
    j       .while.head_29
                    #      label while.exit_29: 
.while.exit_29:
                    #      i_18 = i32 0_0 
                    #      jump label: while.head_35 
    j       .while.head_35
                    #      label while.head_35: 
.while.head_35:
                    #      new_var temp_65_34:i1 
                    #      temp_65_34 = icmp i32 Slt i_18, len2_18 
    slt     a0,a2,s10
                    #      br i1 temp_65_34, label while.body_35, label while.exit_35 
    bnez    a0, .while.body_35
    j       .while.exit_35
                    #      label while.body_35: 
.while.body_35:
                    #      new_var temp_66_36:ptr->i32 
                    #      temp_66_36 = getelementptr c2_18:Array:i32:[Some(25_0)] [Some(i_18)] 
    sb      a0,271(sp)
    li      a0, 0
    sw      a1,272(sp)
    li      a1, 1
    sw      a3,1068(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_67_36:ptr->i32 
                    #      new_var temp_68_36:i32 
                    #      temp_67_36 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(i_18)] 
    li      a1, 0
    sd      a0,256(sp)
    li      a0, 1
    sw      a3,560(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_68_36 = load temp_67_36:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_68_36:i32 temp_66_36:ptr->i32 
    sw      a0,244(sp)
    sd      a1,248(sp)
    sd      a1,0(a0)
                    #      mu c2_18:445 
                    #      c2_18 = chi c2_18:445 
                    #      new_var temp_69_36:i32 
                    #      temp_69_36 = Add i32 i_18, 1_0 
    sd      a0,256(sp)
    li      a0, 1
    sw      a1,244(sp)
    add     a1,a2,a0
                    #      i_18 = i32 temp_69_36 
                    #      jump label: while.head_35 
    j       .while.head_35
                    #      label while.exit_35: 
.while.exit_35:
                    #      new_var temp_70_18:i32 
                    #      temp_70_18 = Sub i32 len2_18, 1_0 
                    #found literal reg Some(a0) already exist with 1_0
    sw      a1,240(sp)
    sub     a1,s10,a0
                    #      new_var temp_71_18:i32 
                    #      temp_71_18 = Add i32 len1_18, temp_70_18 
    sw      a2,1332(sp)
    add     a2,a0,a1
                    #      n_18 = i32 temp_71_18 
    sw      a0,668(sp)
    mv      a0, a2
                    #      i_18 = i32 0_0 
    sw      a0,1320(sp)
    li      a0, 0
                    #      jump label: while.head_42 
    j       .while.head_42
                    #      label while.head_42: 
.while.head_42:
                    #      new_var temp_72_41:i1 
                    #      temp_72_41 = icmp i32 Sle i_18, n_18 
    sw      a1,236(sp)
    sw      a2,232(sp)
    slt     a2,a1,a0
    xori    a2,a2,1
                    #      br i1 temp_72_41, label while.body_42, label while.exit_42 
    bnez    a2, .while.body_42
    j       .while.exit_42
                    #      label while.body_42: 
.while.body_42:
                    #      new_var temp_73_43:ptr->i32 
                    #      temp_73_43 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(i_18)] 
    sw      a0,1332(sp)
    li      a0, 0
    sw      a1,1320(sp)
    li      a1, 1
    sb      a2,231(sp)
    sw      a3,748(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 0_0:i32 temp_73_43:ptr->i32 
    li      a1, 0
    sd      a1,0(a0)
                    #      mu result_18:471 
                    #      result_18 = chi result_18:471 
                    #      new_var temp_74_43:i32 
                    #      temp_74_43 = Add i32 i_18, 1_0 
    li      a1, 1
    sd      a0,216(sp)
    add     a0,a2,a1
                    #      i_18 = i32 temp_74_43 
                    #      jump label: while.head_42 
    j       .while.head_42
                    #      label while.exit_42: 
.while.exit_42:
                    #      temp_18 = i32 0_0 
    li      a1, 0
                    #      new_var temp_75_18:i32 
                    #      temp_75_18 = Sub i32 len2_18, 1_0 
    sw      a0,212(sp)
    li      a0, 1
    sw      a1,1316(sp)
    sub     a1,s10,a0
                    #      i_18 = i32 temp_75_18 
                    #      jump label: while.head_49 
    j       .while.head_49
                    #      label while.head_49: 
.while.head_49:
                    #      new_var temp_76_48:i1 
                    #      temp_76_48 = icmp i32 Sgt i_18, -1_0 
    li      a0, -1
    sw      a1,208(sp)
    slt     a1,a0,a2
                    #      br i1 temp_76_48, label while.body_49, label while.exit_49 
    bnez    a1, .while.body_49
    j       .while.exit_49
                    #      label while.body_49: 
.while.body_49:
                    #      new_var temp_77_50:ptr->i32 
                    #      new_var temp_78_50:i32 
                    #      temp_77_50 = getelementptr c2_18:Array:i32:[Some(25_0)] [Some(i_18)] 
    li      a0, 0
    sb      a1,207(sp)
    li      a1, 1
    sw      a3,460(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_78_50 = load temp_77_50:ptr->i32 
    lw      a1,0(a0)
                    #      t_18 = i32 temp_78_50 
    sd      a0,192(sp)
    mv      a0, a1
                    #      new_var temp_79_50:i32 
                    #      temp_79_50 = Sub i32 len1_18, 1_0 
    sw      a0,1324(sp)
    sw      a1,188(sp)
    li      a1, 1
    sw      a2,1332(sp)
    sub     a2,a0,a1
                    #      j_18 = i32 temp_79_50 
    mv      a1, a2
                    #      jump label: while.head_54 
    j       .while.head_54
                    #      label while.head_54: 
.while.head_54:
                    #      new_var temp_80_53:i1 
                    #      temp_80_53 = icmp i32 Sgt j_18, -1_0 
    sw      a0,668(sp)
    li      a0, -1
    sw      a2,184(sp)
    slt     a2,a0,a1
                    #      br i1 temp_80_53, label while.body_54, label while.exit_54 
    bnez    a2, .while.body_54
    j       .while.exit_54
                    #      label while.body_54: 
.while.body_54:
                    #      new_var temp_81_55:ptr->i32 
                    #      new_var temp_82_55:i32 
                    #      temp_81_55 = getelementptr c1_18:Array:i32:[Some(25_0)] [Some(j_18)] 
    li      a0, 0
    sw      a1,1328(sp)
    li      a1, 1
    sb      a2,183(sp)
    sw      a3,560(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_82_55 = load temp_81_55:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_83_55:i32 
                    #      temp_83_55 = Mul i32 t_18, temp_82_55 
    sd      a0,168(sp)
    sw      a2,1328(sp)
    mul     a2,a0,a1
                    #      new_var temp_84_55:ptr->i32 
                    #      new_var temp_85_55:i32 
                    #      temp_84_55 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(n_18)] 
    sw      a0,1324(sp)
    li      a0, 0
    sw      a1,164(sp)
    li      a1, 1
    sw      a2,160(sp)
    sw      a3,660(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_85_55 = load temp_84_55:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_86_55:i32 
                    #      temp_86_55 = Add i32 temp_85_55, temp_83_55 
    sd      a0,152(sp)
    sw      a2,1320(sp)
    add     a2,a1,a0
                    #      temp_18 = i32 temp_86_55 
    sw      a0,160(sp)
    mv      a0, a2
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_87_57:i1 
                    #      temp_87_57 = icmp i32 Sge temp_18, 10_0 
    sw      a1,148(sp)
    li      a1, 10
    sw      a2,144(sp)
    slt     a2,a0,a1
    xori    a2,a2,1
                    #      br i1 temp_87_57, label branch_true_58, label branch_false_58 
    bnez    a2, .branch_true_58
    j       .branch_false_58
                    #      label branch_true_58: 
.branch_true_58:
                    #      new_var temp_88_59:ptr->i32 
                    #      temp_88_59 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(n_18)] 
    li      a1, 0
    sw      a0,1316(sp)
    li      a0, 1
    sb      a2,143(sp)
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store temp_18:i32 temp_88_59:ptr->i32 
    sd      a0,0(a1)
                    #      mu result_18:538 
                    #      result_18 = chi result_18:538 
                    #      new_var temp_89_59:i32 
                    #      temp_89_59 = Sub i32 n_18, 1_0 
    sw      a0,1316(sp)
    li      a0, 1
    sd      a1,128(sp)
    sub     a1,a2,a0
                    #      new_var temp_90_59:ptr->i32 
                    #      temp_90_59 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(temp_89_59)] 
    li      a0, 0
    sw      a1,124(sp)
    li      a1, 1
    sw      a2,1320(sp)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_91_59:i32 
                    #      temp_91_59 = Div i32 temp_18, 10_0 
    sd      a0,112(sp)
    li      a0, 10
    sw      a2,124(sp)
    div     a2,a1,a0
                    #      new_var temp_92_59:i32 
                    #      temp_92_59 = Sub i32 n_18, 1_0 
    sw      a1,1316(sp)
    li      a1, 1
    sw      a2,108(sp)
    sub     a2,a0,a1
                    #      new_var temp_93_59:ptr->i32 
                    #      new_var temp_94_59:i32 
                    #      temp_93_59 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(temp_92_59)] 
    li      a1, 0
    sw      a0,1320(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_94_59 = load temp_93_59:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_95_59:i32 
                    #      temp_95_59 = Add i32 temp_94_59, temp_91_59 
    sd      a1,96(sp)
    sw      a2,104(sp)
    add     a2,a0,a1
                    #      store temp_95_59:i32 temp_90_59:ptr->i32 
    sw      a0,92(sp)
    sd      a2,0(a0)
                    #      mu result_18:562 
                    #      result_18 = chi result_18:562 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_58: 
.branch_false_58:
                    #      new_var temp_98_57:ptr->i32 
                    #      temp_98_57 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(n_18)] 
    sd      a0,112(sp)
    li      a0, 0
    sw      a1,108(sp)
    li      a1, 1
    sw      a2,88(sp)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store temp_18:i32 temp_98_57:ptr->i32 
    sd      a1,0(a0)
                    #      mu result_18:576 
                    #      result_18 = chi result_18:576 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_96_55:i32 
                    #      temp_96_55 = Sub i32 j_18, 1_0 
    sd      a0,72(sp)
    sw      a1,1316(sp)
    li      a1, 1
    sw      a2,1320(sp)
    sub     a2,a0,a1
                    #      j_18 = i32 temp_96_55 
                    #      new_var temp_97_55:i32 
                    #      temp_97_55 = Sub i32 n_18, 1_0 
    sw      a0,1328(sp)
    li      a0, 1
    sw      a2,84(sp)
    sub     a2,a1,a0
                    #      n_18 = i32 temp_97_55 
                    #      jump label: while.head_54 
    j       .while.head_54
                    #      label while.exit_54: 
.while.exit_54:
                    #      new_var temp_99_50:i32 
                    #      temp_99_50 = Sub i32 len1_18, 1_0 
    sw      a1,1320(sp)
    li      a1, 1
    sw      a2,80(sp)
    sub     a2,a0,a1
                    #      new_var temp_100_50:i32 
                    #      temp_100_50 = Add i32 n_18, temp_99_50 
    sw      a0,668(sp)
    add     a0,a1,a2
                    #      n_18 = i32 temp_100_50 
                    #      new_var temp_101_50:i32 
                    #      temp_101_50 = Sub i32 i_18, 1_0 
    sw      a0,64(sp)
    sw      a1,1320(sp)
    li      a1, 1
    sw      a2,68(sp)
    sub     a2,a0,a1
                    #      i_18 = i32 temp_101_50 
                    #      jump label: while.head_49 
    j       .while.head_49
                    #      label while.exit_49: 
.while.exit_49:
                    #      new_var temp_102_67:ptr->i32 
                    #      new_var temp_103_67:i32 
                    #      temp_102_67 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(0_0)] 
    li      a1, 0
    sw      a0,1332(sp)
    li      a0, 1
    sw      a2,60(sp)
    li      a2, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_103_67 = load temp_102_67:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_104_67:i1 
                    #      temp_104_67 = icmp i32 Ne temp_103_67, 0_0 
                    #found literal reg Some(a2) already exist with 0_0
    sd      a1,48(sp)
    xor     a1,a0,a2
    snez    a1, a1
                    #      br i1 temp_104_67, label branch_true_68, label branch_false_68 
    bnez    a1, .branch_true_68
    j       .branch_false_68
                    #      label branch_true_68: 
.branch_true_68:
                    #      new_var temp_105_67:ptr->i32 
                    #      new_var temp_106_67:i32 
                    #      temp_105_67 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(0_0)] 
    li      a2, 0
    sw      a0,44(sp)
    li      a0, 1
    sb      a1,43(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_106_67 = load temp_105_67:ptr->i32 
    lw      a0,0(a2)
                    #       Call void putint_0(temp_106_67) 
                    #saved register dumping to mem
    sd      s1,1288(sp)
    sd      s2,1208(sp)
    sd      s3,1200(sp)
    sd      s4,1280(sp)
    sd      s5,1192(sp)
    sd      s6,1184(sp)
    sd      s7,1272(sp)
    sd      s8,1176(sp)
    sd      s9,1264(sp)
    sw      s10,664(sp)
    sd      s11,1256(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
                    #arg load ended
    call    putint
                    #      jump label: branch_false_68 
    j       .branch_false_68
                    #      label branch_false_68: 
.branch_false_68:
                    #      label L4_0: 
.L4_0:
                    #      i_18 = i32 1_0 
    li      a0, 1
                    #      jump label: while.head_72 
    j       .while.head_72
                    #      label while.head_72: 
.while.head_72:
                    #      new_var temp_107_71:i32 
                    #      temp_107_71 = Sub i32 len2_18, 1_0 
    li      s2, 1
    sub     s3,s1,s2
                    #      new_var temp_108_71:i32 
                    #      temp_108_71 = Add i32 len1_18, temp_107_71 
    add     s5,s4,s3
                    #      new_var temp_109_71:i1 
                    #      temp_109_71 = icmp i32 Sle i_18, temp_108_71 
    slt     s6,s5,a0
    xori    s6,s6,1
                    #      br i1 temp_109_71, label while.body_72, label while.exit_72 
    bnez    s6, .while.body_72
    j       .while.exit_72
                    #      label while.body_72: 
.while.body_72:
                    #      new_var temp_110_73:ptr->i32 
                    #      new_var temp_111_73:i32 
                    #      temp_110_73 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(i_18)] 
    li      s7, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s7,s7,a3
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_111_73 = load temp_110_73:ptr->i32 
    lw      s8,0(s7)
                    #       Call void putint_0(temp_111_73) 
                    #saved register dumping to mem
    sw      s1,664(sp)
    sw      s3,24(sp)
    sw      s4,668(sp)
    sw      s5,20(sp)
    sb      s6,19(sp)
    sd      s7,8(sp)
    sw      s8,4(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1332(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_112_73:i32 
                    #      temp_112_73 = Add i32 i_18, 1_0 
    li      s1, 1
    add     s2,a0,s1
                    #      i_18 = i32 temp_112_73 
                    #      jump label: while.head_72 
    j       .while.head_72
                    #      label while.exit_72: 
.while.exit_72:
                    #      ret 0_0 
    ld      ra,1344(sp)
    ld      s0,1336(sp)
    sw      a0,1332(sp)
    li      a0, 0
    addi    sp,sp,1352
    ret
.section        .data
    .align 4
    .globl len
                    #      global i32 len_0 
    .type len,@object
len:
    .word 20
