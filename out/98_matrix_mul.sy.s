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
                    #      Define mul_0 [a0_19, a1_19, a2_19, b0_19, b1_19, b2_19, c0_19, c1_19, c2_19] -> mul_ret_0 
    .globl mul
    .type mul,@function
mul:
                    #mem layout:|c2:8|ra_mul:8|s0_mul:8|a0:8|a1:8|a2:8|b0:8|b1:8|b2:8|c0:8|c1:8|i:4|none:4|temp_0:8|temp_1:8|temp_2:4|none:4|temp_3:8|temp_4:4|temp_5:4|temp_6:8|temp_7:4|none:4|temp_8:8|temp_9:4|temp_10:4|temp_11:4|none:4|temp_12:8|temp_13:4|none:4|temp_14:8|temp_15:4|temp_16:4|temp_17:4|none:4|temp_18:8|temp_19:8|temp_20:4|none:4|temp_21:8|temp_22:4|temp_23:4|temp_24:8|temp_25:4|none:4|temp_26:8|temp_27:4|temp_28:4|temp_29:4|none:4|temp_30:8|temp_31:4|none:4|temp_32:8|temp_33:4|temp_34:4|temp_35:4|none:4|temp_36:8|temp_37:8|temp_38:4|none:4|temp_39:8|temp_40:4|temp_41:4|temp_42:8|temp_43:4|none:4|temp_44:8|temp_45:4|temp_46:4|temp_47:4|none:4|temp_48:8|temp_49:4|none:4|temp_50:8|temp_51:4|temp_52:4|temp_53:4|none:4|temp_54:8|temp_55:8|temp_56:4|none:4|temp_57:8|temp_58:4|temp_59:4|temp_60:8|temp_61:4|none:4|temp_62:8|temp_63:4|temp_64:4|temp_65:4|none:4|temp_66:8|temp_67:4|none:4|temp_68:8|temp_69:4|temp_70:4|temp_71:4|none:4|temp_72:8|temp_73:8|temp_74:4|none:4|temp_75:8|temp_76:4|temp_77:4|temp_78:8|temp_79:4|none:4|temp_80:8|temp_81:4|temp_82:4|temp_83:4|none:4|temp_84:8|temp_85:4|none:4|temp_86:8|temp_87:4|temp_88:4|temp_89:4|none:4|temp_90:8|temp_91:8|temp_92:4|none:4|temp_93:8|temp_94:4|temp_95:4|temp_96:8|temp_97:4|none:4|temp_98:8|temp_99:4|temp_100:4|temp_101:4|none:4|temp_102:8|temp_103:4|none:4|temp_104:8|temp_105:4|temp_106:4|temp_107:4|none:4|temp_108:8|temp_109:8|temp_110:4|none:4|temp_111:8|temp_112:4|temp_113:4|temp_114:8|temp_115:4|none:4|temp_116:8|temp_117:4|temp_118:4|temp_119:4|none:4|temp_120:8|temp_121:4|none:4|temp_122:8|temp_123:4|temp_124:4|temp_125:4|none:4|temp_126:8|temp_127:8|temp_128:4|none:4|temp_129:8|temp_130:4|temp_131:4|temp_132:8|temp_133:4|none:4|temp_134:8|temp_135:4|temp_136:4|temp_137:4|none:4|temp_138:8|temp_139:4|none:4|temp_140:8|temp_141:4|temp_142:4|temp_143:4|none:4|temp_144:8|temp_145:8|temp_146:4|none:4|temp_147:8|temp_148:4|temp_149:4|temp_150:8|temp_151:4|none:4|temp_152:8|temp_153:4|temp_154:4|temp_155:4|none:4|temp_156:8|temp_157:4|none:4|temp_158:8|temp_159:4|temp_160:4|temp_161:4|none:4
    addi    sp,sp,-1176
    sd      ra,1160(sp)
    sd      s0,1152(sp)
    addi    s0,sp,1176
                    #      new_var a0_19:ptr->f32 
                    #      new_var a1_19:ptr->f32 
                    #      new_var a2_19:ptr->f32 
                    #      new_var b0_19:ptr->f32 
                    #      new_var b1_19:ptr->f32 
                    #      new_var b2_19:ptr->f32 
                    #      new_var c0_19:ptr->f32 
                    #      new_var c1_19:ptr->f32 
                    #      new_var c2_19:ptr->f32 
                    #      alloc i32 i_21 
                    #      alloc ptr->f32 temp_0_21 
                    #      alloc ptr->f32 temp_1_21 
                    #      alloc f32 temp_2_21 
                    #      alloc ptr->f32 temp_3_21 
                    #      alloc f32 temp_4_21 
                    #      alloc f32 temp_5_21 
                    #      alloc ptr->f32 temp_6_21 
                    #      alloc f32 temp_7_21 
                    #      alloc ptr->f32 temp_8_21 
                    #      alloc f32 temp_9_21 
                    #      alloc f32 temp_10_21 
                    #      alloc f32 temp_11_21 
                    #      alloc ptr->f32 temp_12_21 
                    #      alloc f32 temp_13_21 
                    #      alloc ptr->f32 temp_14_21 
                    #      alloc f32 temp_15_21 
                    #      alloc f32 temp_16_21 
                    #      alloc f32 temp_17_21 
                    #      alloc ptr->f32 temp_18_21 
                    #      alloc ptr->f32 temp_19_21 
                    #      alloc f32 temp_20_21 
                    #      alloc ptr->f32 temp_21_21 
                    #      alloc f32 temp_22_21 
                    #      alloc f32 temp_23_21 
                    #      alloc ptr->f32 temp_24_21 
                    #      alloc f32 temp_25_21 
                    #      alloc ptr->f32 temp_26_21 
                    #      alloc f32 temp_27_21 
                    #      alloc f32 temp_28_21 
                    #      alloc f32 temp_29_21 
                    #      alloc ptr->f32 temp_30_21 
                    #      alloc f32 temp_31_21 
                    #      alloc ptr->f32 temp_32_21 
                    #      alloc f32 temp_33_21 
                    #      alloc f32 temp_34_21 
                    #      alloc f32 temp_35_21 
                    #      alloc ptr->f32 temp_36_21 
                    #      alloc ptr->f32 temp_37_21 
                    #      alloc f32 temp_38_21 
                    #      alloc ptr->f32 temp_39_21 
                    #      alloc f32 temp_40_21 
                    #      alloc f32 temp_41_21 
                    #      alloc ptr->f32 temp_42_21 
                    #      alloc f32 temp_43_21 
                    #      alloc ptr->f32 temp_44_21 
                    #      alloc f32 temp_45_21 
                    #      alloc f32 temp_46_21 
                    #      alloc f32 temp_47_21 
                    #      alloc ptr->f32 temp_48_21 
                    #      alloc f32 temp_49_21 
                    #      alloc ptr->f32 temp_50_21 
                    #      alloc f32 temp_51_21 
                    #      alloc f32 temp_52_21 
                    #      alloc f32 temp_53_21 
                    #      alloc ptr->f32 temp_54_21 
                    #      alloc ptr->f32 temp_55_21 
                    #      alloc f32 temp_56_21 
                    #      alloc ptr->f32 temp_57_21 
                    #      alloc f32 temp_58_21 
                    #      alloc f32 temp_59_21 
                    #      alloc ptr->f32 temp_60_21 
                    #      alloc f32 temp_61_21 
                    #      alloc ptr->f32 temp_62_21 
                    #      alloc f32 temp_63_21 
                    #      alloc f32 temp_64_21 
                    #      alloc f32 temp_65_21 
                    #      alloc ptr->f32 temp_66_21 
                    #      alloc f32 temp_67_21 
                    #      alloc ptr->f32 temp_68_21 
                    #      alloc f32 temp_69_21 
                    #      alloc f32 temp_70_21 
                    #      alloc f32 temp_71_21 
                    #      alloc ptr->f32 temp_72_21 
                    #      alloc ptr->f32 temp_73_21 
                    #      alloc f32 temp_74_21 
                    #      alloc ptr->f32 temp_75_21 
                    #      alloc f32 temp_76_21 
                    #      alloc f32 temp_77_21 
                    #      alloc ptr->f32 temp_78_21 
                    #      alloc f32 temp_79_21 
                    #      alloc ptr->f32 temp_80_21 
                    #      alloc f32 temp_81_21 
                    #      alloc f32 temp_82_21 
                    #      alloc f32 temp_83_21 
                    #      alloc ptr->f32 temp_84_21 
                    #      alloc f32 temp_85_21 
                    #      alloc ptr->f32 temp_86_21 
                    #      alloc f32 temp_87_21 
                    #      alloc f32 temp_88_21 
                    #      alloc f32 temp_89_21 
                    #      alloc ptr->f32 temp_90_21 
                    #      alloc ptr->f32 temp_91_21 
                    #      alloc f32 temp_92_21 
                    #      alloc ptr->f32 temp_93_21 
                    #      alloc f32 temp_94_21 
                    #      alloc f32 temp_95_21 
                    #      alloc ptr->f32 temp_96_21 
                    #      alloc f32 temp_97_21 
                    #      alloc ptr->f32 temp_98_21 
                    #      alloc f32 temp_99_21 
                    #      alloc f32 temp_100_21 
                    #      alloc f32 temp_101_21 
                    #      alloc ptr->f32 temp_102_21 
                    #      alloc f32 temp_103_21 
                    #      alloc ptr->f32 temp_104_21 
                    #      alloc f32 temp_105_21 
                    #      alloc f32 temp_106_21 
                    #      alloc f32 temp_107_21 
                    #      alloc ptr->f32 temp_108_21 
                    #      alloc ptr->f32 temp_109_21 
                    #      alloc f32 temp_110_21 
                    #      alloc ptr->f32 temp_111_21 
                    #      alloc f32 temp_112_21 
                    #      alloc f32 temp_113_21 
                    #      alloc ptr->f32 temp_114_21 
                    #      alloc f32 temp_115_21 
                    #      alloc ptr->f32 temp_116_21 
                    #      alloc f32 temp_117_21 
                    #      alloc f32 temp_118_21 
                    #      alloc f32 temp_119_21 
                    #      alloc ptr->f32 temp_120_21 
                    #      alloc f32 temp_121_21 
                    #      alloc ptr->f32 temp_122_21 
                    #      alloc f32 temp_123_21 
                    #      alloc f32 temp_124_21 
                    #      alloc f32 temp_125_21 
                    #      alloc ptr->f32 temp_126_21 
                    #      alloc ptr->f32 temp_127_21 
                    #      alloc f32 temp_128_21 
                    #      alloc ptr->f32 temp_129_21 
                    #      alloc f32 temp_130_21 
                    #      alloc f32 temp_131_21 
                    #      alloc ptr->f32 temp_132_21 
                    #      alloc f32 temp_133_21 
                    #      alloc ptr->f32 temp_134_21 
                    #      alloc f32 temp_135_21 
                    #      alloc f32 temp_136_21 
                    #      alloc f32 temp_137_21 
                    #      alloc ptr->f32 temp_138_21 
                    #      alloc f32 temp_139_21 
                    #      alloc ptr->f32 temp_140_21 
                    #      alloc f32 temp_141_21 
                    #      alloc f32 temp_142_21 
                    #      alloc f32 temp_143_21 
                    #      alloc ptr->f32 temp_144_21 
                    #      alloc ptr->f32 temp_145_21 
                    #      alloc f32 temp_146_21 
                    #      alloc ptr->f32 temp_147_21 
                    #      alloc f32 temp_148_21 
                    #      alloc f32 temp_149_21 
                    #      alloc ptr->f32 temp_150_21 
                    #      alloc f32 temp_151_21 
                    #      alloc ptr->f32 temp_152_21 
                    #      alloc f32 temp_153_21 
                    #      alloc f32 temp_154_21 
                    #      alloc f32 temp_155_21 
                    #      alloc ptr->f32 temp_156_21 
                    #      alloc f32 temp_157_21 
                    #      alloc ptr->f32 temp_158_21 
                    #      alloc f32 temp_159_21 
                    #      alloc f32 temp_160_21 
                    #      alloc f32 temp_161_21 
                    #      label L1_0: 
.L1_0:
                    #      new_var i_21:i32 
                    #      i_21 = i32 0_0 
    li      s1, 0
                    #      new_var temp_0_21:ptr->f32 
                    #      temp_0_21 = getelementptr c0_19:ptr->f32 [Some(0_0)] 
    li      s2, 0
    li      s3, 1
    li      s4, 0
    add     s2,s2,a6
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      new_var temp_1_21:ptr->f32 
                    #      new_var temp_2_21:f32 
                    #      temp_1_21 = getelementptr b2_19:ptr->f32 [Some(0_0)] 
    li      s5, 0
                    #found literal reg Some(s3) already exist with 1_0
                    #found literal reg Some(s4) already exist with 0_0
    add     s5,s5,a5
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_2_21 = load temp_1_21:ptr->f32 
    flw     fa0,s5(0)
                    #      new_var temp_3_21:ptr->f32 
                    #      new_var temp_4_21:f32 
                    #      temp_3_21 = getelementptr a0_19:ptr->f32 [Some(2_0)] 
    li      s6, 0
                    #found literal reg Some(s3) already exist with 1_0
    li      s7, 2
    add     s6,s6,a0
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_4_21 = load temp_3_21:ptr->f32 
    flw     fa1,s6(0)
                    #      new_var temp_5_21:f32 
                    #      temp_5_21 = Mul f32 temp_4_21, temp_2_21 
    fmul.s  fa2,fa1,fa0
                    #      new_var temp_6_21:ptr->f32 
                    #      new_var temp_7_21:f32 
                    #      temp_6_21 = getelementptr b1_19:ptr->f32 [Some(0_0)] 
    li      s8, 0
                    #found literal reg Some(s3) already exist with 1_0
                    #found literal reg Some(s4) already exist with 0_0
    add     s8,s8,a4
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_7_21 = load temp_6_21:ptr->f32 
    flw     fa3,s8(0)
                    #      new_var temp_8_21:ptr->f32 
                    #      new_var temp_9_21:f32 
                    #      temp_8_21 = getelementptr a0_19:ptr->f32 [Some(1_0)] 
    li      s9, 0
                    #found literal reg Some(s3) already exist with 1_0
    li      s10, 1
    add     s9,s9,a0
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_9_21 = load temp_8_21:ptr->f32 
    flw     fa4,s9(0)
                    #      new_var temp_10_21:f32 
                    #      temp_10_21 = Mul f32 temp_9_21, temp_7_21 
    fmul.s  fa5,fa4,fa3
                    #      new_var temp_11_21:f32 
                    #      temp_11_21 = Add f32 temp_10_21, temp_5_21 
    fadd.s  fa6,fa5,fa2
                    #      new_var temp_12_21:ptr->f32 
                    #      new_var temp_13_21:f32 
                    #      temp_12_21 = getelementptr b0_19:ptr->f32 [Some(0_0)] 
    li      s11, 0
                    #found literal reg Some(s10) already exist with 1_0
                    #found literal reg Some(s4) already exist with 0_0
    add     s11,s11,a3
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_13_21 = load temp_12_21:ptr->f32 
    flw     fa7,s11(0)
                    #      new_var temp_14_21:ptr->f32 
                    #      new_var temp_15_21:f32 
                    #      temp_14_21 = getelementptr a0_19:ptr->f32 [Some(0_0)] 
    li      s3, 0
                    #found literal reg Some(s10) already exist with 1_0
                    #found literal reg Some(s4) already exist with 0_0
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_15_21 = load temp_14_21:ptr->f32 
    flw     f8,s3(0)
                    #      new_var temp_16_21:f32 
                    #      temp_16_21 = Mul f32 temp_15_21, temp_13_21 
    fmul.s  f9,f8,fa7
                    #      new_var temp_17_21:f32 
                    #      temp_17_21 = Add f32 temp_16_21, temp_11_21 
    fadd.s  f18,f9,fa6
                    #      store temp_17_21:f32 temp_0_21:ptr->f32 
    fsd     f18,0(s2)
                    #      mu c0_19:86 
                    #      c0_19 = chi c0_19:86 
                    #      new_var temp_18_21:ptr->f32 
                    #      temp_18_21 = getelementptr c0_19:ptr->f32 [Some(1_0)] 
    li      s4, 0
                    #found literal reg Some(s10) already exist with 1_0
    li      s7, 1
    add     s4,s4,a6
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      new_var temp_19_21:ptr->f32 
                    #      new_var temp_20_21:f32 
                    #      temp_19_21 = getelementptr b2_19:ptr->f32 [Some(1_0)] 
    li      s7, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,1144(sp)
    li      a0, 1
    add     s7,s7,a5
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_20_21 = load temp_19_21:ptr->f32 
    flw     f19,s7(0)
                    #      new_var temp_21_21:ptr->f32 
                    #      new_var temp_22_21:f32 
                    #      temp_21_21 = getelementptr a0_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,1136(sp)
    li      a1, 2
    sd      a2,1128(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_22_21 = load temp_21_21:ptr->f32 
    flw     f20,a0(0)
                    #      new_var temp_23_21:f32 
                    #      temp_23_21 = Mul f32 temp_22_21, temp_20_21 
    fmul.s  f21,f20,f19
                    #      new_var temp_24_21:ptr->f32 
                    #      new_var temp_25_21:f32 
                    #      temp_24_21 = getelementptr b1_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,928(sp)
    li      a0, 1
    add     a1,a1,a4
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_25_21 = load temp_24_21:ptr->f32 
    flw     f22,a1(0)
                    #      new_var temp_26_21:ptr->f32 
                    #      new_var temp_27_21:f32 
                    #      temp_26_21 = getelementptr a0_19:ptr->f32 [Some(1_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,912(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_27_21 = load temp_26_21:ptr->f32 
    flw     f23,a0(0)
                    #      new_var temp_28_21:f32 
                    #      temp_28_21 = Mul f32 temp_27_21, temp_25_21 
    fmul.s  f24,f23,f22
                    #      new_var temp_29_21:f32 
                    #      temp_29_21 = Add f32 temp_28_21, temp_23_21 
    fadd.s  f25,f24,f21
                    #      new_var temp_30_21:ptr->f32 
                    #      new_var temp_31_21:f32 
                    #      temp_30_21 = getelementptr b0_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,896(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_31_21 = load temp_30_21:ptr->f32 
    flw     f26,a1(0)
                    #      new_var temp_32_21:ptr->f32 
                    #      new_var temp_33_21:f32 
                    #      temp_32_21 = getelementptr a0_19:ptr->f32 [Some(0_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,872(sp)
    li      a1, 0
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_33_21 = load temp_32_21:ptr->f32 
    flw     f27,a0(0)
                    #      new_var temp_34_21:f32 
                    #      temp_34_21 = Mul f32 temp_33_21, temp_31_21 
    fmul.s  f28,f27,f26
                    #      new_var temp_35_21:f32 
                    #      temp_35_21 = Add f32 temp_34_21, temp_29_21 
    fadd.s  f29,f28,f25
                    #      store temp_35_21:f32 temp_18_21:ptr->f32 
    fsd     f29,0(s4)
                    #      mu c0_19:143 
                    #      c0_19 = chi c0_19:143 
                    #      new_var temp_36_21:ptr->f32 
                    #      temp_36_21 = getelementptr c0_19:ptr->f32 [Some(2_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,856(sp)
    li      a0, 2
    add     a1,a1,a6
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      new_var temp_37_21:ptr->f32 
                    #      new_var temp_38_21:f32 
                    #      temp_37_21 = getelementptr b2_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,832(sp)
    li      a1, 2
    add     a0,a0,a5
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_38_21 = load temp_37_21:ptr->f32 
    flw     f30,a0(0)
                    #      new_var temp_39_21:ptr->f32 
                    #      new_var temp_40_21:f32 
                    #      temp_39_21 = getelementptr a0_19:ptr->f32 [Some(2_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,824(sp)
    li      a0, 2
    add     a1,a1,a2
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_40_21 = load temp_39_21:ptr->f32 
    flw     f31,a1(0)
                    #      new_var temp_41_21:f32 
                    #      temp_41_21 = Mul f32 temp_40_21, temp_38_21 
    fsw     fa0,1060(sp)
    fmul.s  fa0,f31,f30
                    #      new_var temp_42_21:ptr->f32 
                    #      new_var temp_43_21:f32 
                    #      temp_42_21 = getelementptr b1_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,808(sp)
    li      a1, 2
    add     a0,a0,a4
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_43_21 = load temp_42_21:ptr->f32 
    fsw     fa0,800(sp)
    flw     fa0,a0(0)
                    #      new_var temp_44_21:ptr->f32 
                    #      new_var temp_45_21:f32 
                    #      temp_44_21 = getelementptr a0_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,792(sp)
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_45_21 = load temp_44_21:ptr->f32 
    fsw     fa0,788(sp)
    flw     fa0,a1(0)
                    #      new_var temp_46_21:f32 
                    #      temp_46_21 = Mul f32 temp_45_21, temp_43_21 
    fsw     fa1,1044(sp)
    fsw     fa2,1040(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_47_21:f32 
                    #      temp_47_21 = Add f32 temp_46_21, temp_41_21 
    fsw     fa0,772(sp)
    fsw     fa1,788(sp)
    fadd.s  fa1,fa2,fa0
                    #      new_var temp_48_21:ptr->f32 
                    #      new_var temp_49_21:f32 
                    #      temp_48_21 = getelementptr b0_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a1,776(sp)
    li      a1, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_49_21 = load temp_48_21:ptr->f32 
    fsw     fa0,800(sp)
    flw     fa0,a0(0)
                    #      new_var temp_50_21:ptr->f32 
                    #      new_var temp_51_21:f32 
                    #      temp_50_21 = getelementptr a0_19:ptr->f32 [Some(0_0)] 
    li      a1, 0
                    #found literal reg Some(s10) already exist with 1_0
    sd      a0,752(sp)
    li      a0, 0
    add     a1,a1,a2
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_51_21 = load temp_50_21:ptr->f32 
    fsw     fa0,748(sp)
    flw     fa0,a1(0)
                    #      new_var temp_52_21:f32 
                    #      temp_52_21 = Mul f32 temp_51_21, temp_49_21 
    fsw     fa1,764(sp)
    fsw     fa2,768(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_53_21:f32 
                    #      temp_53_21 = Add f32 temp_52_21, temp_47_21 
    fsw     fa0,732(sp)
    fsw     fa1,748(sp)
    fadd.s  fa1,fa2,fa0
                    #      store temp_53_21:f32 temp_36_21:ptr->f32 
    fsd     fa1,0(a0)
                    #      mu c0_19:200 
                    #      c0_19 = chi c0_19:200 
                    #      new_var temp_54_21:ptr->f32 
                    #      temp_54_21 = getelementptr c1_19:ptr->f32 [Some(0_0)] 
    li      s10, 0
    sd      a0,832(sp)
    li      a0, 1
    sd      a1,736(sp)
    li      a1, 0
    add     s10,s10,a7
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      new_var temp_55_21:ptr->f32 
                    #      new_var temp_56_21:f32 
                    #      temp_55_21 = getelementptr b2_19:ptr->f32 [Some(0_0)] 
    li      a0, 0
    li      a1, 1
    sd      a2,1144(sp)
    li      a2, 0
    add     a0,a0,a5
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_56_21 = load temp_55_21:ptr->f32 
    fsw     fa0,764(sp)
    flw     fa0,a0(0)
                    #      new_var temp_57_21:ptr->f32 
                    #      new_var temp_58_21:f32 
                    #      temp_57_21 = getelementptr a1_19:ptr->f32 [Some(2_0)] 
    li      a1, 0
    li      a2, 1
    sd      a0,704(sp)
    li      a0, 2
    sd      a3,1120(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_58_21 = load temp_57_21:ptr->f32 
    fsw     fa0,700(sp)
    flw     fa0,a1(0)
                    #      new_var temp_59_21:f32 
                    #      temp_59_21 = Mul f32 temp_58_21, temp_56_21 
    fsw     fa1,724(sp)
    fsw     fa2,728(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_60_21:ptr->f32 
                    #      new_var temp_61_21:f32 
                    #      temp_60_21 = getelementptr b1_19:ptr->f32 [Some(0_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,688(sp)
    li      a1, 0
    add     a0,a0,a4
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_61_21 = load temp_60_21:ptr->f32 
    fsw     fa0,684(sp)
    flw     fa0,a0(0)
                    #      new_var temp_62_21:ptr->f32 
                    #      new_var temp_63_21:f32 
                    #      temp_62_21 = getelementptr a1_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,672(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_63_21 = load temp_62_21:ptr->f32 
    fsw     fa0,668(sp)
    flw     fa0,a1(0)
                    #      new_var temp_64_21:f32 
                    #      temp_64_21 = Mul f32 temp_63_21, temp_61_21 
    fsw     fa1,700(sp)
    fsw     fa2,680(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_65_21:f32 
                    #      temp_65_21 = Add f32 temp_64_21, temp_59_21 
    fsw     fa0,652(sp)
    fsw     fa1,668(sp)
    fadd.s  fa1,fa2,fa0
                    #      new_var temp_66_21:ptr->f32 
                    #      new_var temp_67_21:f32 
                    #      temp_66_21 = getelementptr b0_19:ptr->f32 [Some(0_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,656(sp)
    li      a1, 0
    sd      a3,1136(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_67_21 = load temp_66_21:ptr->f32 
    fsw     fa0,680(sp)
    flw     fa0,a0(0)
                    #      new_var temp_68_21:ptr->f32 
                    #      new_var temp_69_21:f32 
                    #      temp_68_21 = getelementptr a1_19:ptr->f32 [Some(0_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,632(sp)
    li      a0, 0
    sd      a3,1120(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_69_21 = load temp_68_21:ptr->f32 
    fsw     fa0,628(sp)
    flw     fa0,a1(0)
                    #      new_var temp_70_21:f32 
                    #      temp_70_21 = Mul f32 temp_69_21, temp_67_21 
    fsw     fa1,644(sp)
    fsw     fa2,648(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_71_21:f32 
                    #      temp_71_21 = Add f32 temp_70_21, temp_65_21 
    fsw     fa0,612(sp)
    fsw     fa1,628(sp)
    fadd.s  fa1,fa2,fa0
                    #      store temp_71_21:f32 temp_54_21:ptr->f32 
    fsd     fa1,0(s10)
                    #      mu c1_19:257 
                    #      c1_19 = chi c1_19:257 
                    #      new_var temp_72_21:ptr->f32 
                    #      temp_72_21 = getelementptr c1_19:ptr->f32 [Some(1_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,616(sp)
    li      a1, 1
    add     a0,a0,a7
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_73_21:ptr->f32 
                    #      new_var temp_74_21:f32 
                    #      temp_73_21 = getelementptr b2_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,592(sp)
    li      a0, 1
    add     a1,a1,a5
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_74_21 = load temp_73_21:ptr->f32 
    fsw     fa0,644(sp)
    flw     fa0,a1(0)
                    #      new_var temp_75_21:ptr->f32 
                    #      new_var temp_76_21:f32 
                    #      temp_75_21 = getelementptr a1_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,584(sp)
    li      a1, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_76_21 = load temp_75_21:ptr->f32 
    fsw     fa0,580(sp)
    flw     fa0,a0(0)
                    #      new_var temp_77_21:f32 
                    #      temp_77_21 = Mul f32 temp_76_21, temp_74_21 
    fsw     fa1,604(sp)
    fsw     fa2,608(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_78_21:ptr->f32 
                    #      new_var temp_79_21:f32 
                    #      temp_78_21 = getelementptr b1_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,568(sp)
    li      a0, 1
    add     a1,a1,a4
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_79_21 = load temp_78_21:ptr->f32 
    fsw     fa0,564(sp)
    flw     fa0,a1(0)
                    #      new_var temp_80_21:ptr->f32 
                    #      new_var temp_81_21:f32 
                    #      temp_80_21 = getelementptr a1_19:ptr->f32 [Some(1_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,552(sp)
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_81_21 = load temp_80_21:ptr->f32 
    fsw     fa0,548(sp)
    flw     fa0,a0(0)
                    #      new_var temp_82_21:f32 
                    #      temp_82_21 = Mul f32 temp_81_21, temp_79_21 
    fsw     fa1,580(sp)
    fsw     fa2,560(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_83_21:f32 
                    #      temp_83_21 = Add f32 temp_82_21, temp_77_21 
    fsw     fa0,532(sp)
    fsw     fa1,548(sp)
    fadd.s  fa1,fa2,fa0
                    #      new_var temp_84_21:ptr->f32 
                    #      new_var temp_85_21:f32 
                    #      temp_84_21 = getelementptr b0_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,536(sp)
    li      a0, 1
    sd      a3,1136(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_85_21 = load temp_84_21:ptr->f32 
    fsw     fa0,560(sp)
    flw     fa0,a1(0)
                    #      new_var temp_86_21:ptr->f32 
                    #      new_var temp_87_21:f32 
                    #      temp_86_21 = getelementptr a1_19:ptr->f32 [Some(0_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,512(sp)
    li      a1, 0
    sd      a3,1120(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_87_21 = load temp_86_21:ptr->f32 
    fsw     fa0,508(sp)
    flw     fa0,a0(0)
                    #      new_var temp_88_21:f32 
                    #      temp_88_21 = Mul f32 temp_87_21, temp_85_21 
    fsw     fa1,524(sp)
    fsw     fa2,528(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_89_21:f32 
                    #      temp_89_21 = Add f32 temp_88_21, temp_83_21 
    fsw     fa0,492(sp)
    fsw     fa1,508(sp)
    fadd.s  fa1,fa2,fa0
                    #      store temp_89_21:f32 temp_72_21:ptr->f32 
    fsd     fa1,0(a1)
                    #      mu c1_19:314 
                    #      c1_19 = chi c1_19:314 
                    #      new_var temp_90_21:ptr->f32 
                    #      temp_90_21 = getelementptr c1_19:ptr->f32 [Some(2_0)] 
    li      a2, 0
    sd      a0,496(sp)
    li      a0, 1
    sd      a1,592(sp)
    li      a1, 2
    add     a2,a2,a7
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_91_21:ptr->f32 
                    #      new_var temp_92_21:f32 
                    #      temp_91_21 = getelementptr b2_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
    li      a1, 1
    sd      a2,472(sp)
    li      a2, 2
    add     a0,a0,a5
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_92_21 = load temp_91_21:ptr->f32 
    fsw     fa0,524(sp)
    flw     fa0,a0(0)
                    #      new_var temp_93_21:ptr->f32 
                    #      new_var temp_94_21:f32 
                    #      temp_93_21 = getelementptr a1_19:ptr->f32 [Some(2_0)] 
    li      a1, 0
    li      a2, 1
    sd      a0,464(sp)
    li      a0, 2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_94_21 = load temp_93_21:ptr->f32 
    fsw     fa0,460(sp)
    flw     fa0,a1(0)
                    #      new_var temp_95_21:f32 
                    #      temp_95_21 = Mul f32 temp_94_21, temp_92_21 
    fsw     fa1,484(sp)
    fsw     fa2,488(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_96_21:ptr->f32 
                    #      new_var temp_97_21:f32 
                    #      temp_96_21 = getelementptr b1_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,448(sp)
    li      a1, 2
    add     a0,a0,a4
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_97_21 = load temp_96_21:ptr->f32 
    fsw     fa0,444(sp)
    flw     fa0,a0(0)
                    #      new_var temp_98_21:ptr->f32 
                    #      new_var temp_99_21:f32 
                    #      temp_98_21 = getelementptr a1_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,432(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_99_21 = load temp_98_21:ptr->f32 
    fsw     fa0,428(sp)
    flw     fa0,a1(0)
                    #      new_var temp_100_21:f32 
                    #      temp_100_21 = Mul f32 temp_99_21, temp_97_21 
    fsw     fa1,460(sp)
    fsw     fa2,440(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_101_21:f32 
                    #      temp_101_21 = Add f32 temp_100_21, temp_95_21 
    fsw     fa0,412(sp)
    fsw     fa1,428(sp)
    fadd.s  fa1,fa2,fa0
                    #      new_var temp_102_21:ptr->f32 
                    #      new_var temp_103_21:f32 
                    #      temp_102_21 = getelementptr b0_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,416(sp)
    li      a1, 2
    sd      a3,1136(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_103_21 = load temp_102_21:ptr->f32 
    fsw     fa0,440(sp)
    flw     fa0,a0(0)
                    #      new_var temp_104_21:ptr->f32 
                    #      new_var temp_105_21:f32 
                    #      temp_104_21 = getelementptr a1_19:ptr->f32 [Some(0_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,392(sp)
    li      a0, 0
    sd      a3,1120(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_105_21 = load temp_104_21:ptr->f32 
    fsw     fa0,388(sp)
    flw     fa0,a1(0)
                    #      new_var temp_106_21:f32 
                    #      temp_106_21 = Mul f32 temp_105_21, temp_103_21 
    fsw     fa1,404(sp)
    fsw     fa2,408(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_107_21:f32 
                    #      temp_107_21 = Add f32 temp_106_21, temp_101_21 
    fsw     fa0,372(sp)
    fsw     fa1,388(sp)
    fadd.s  fa1,fa2,fa0
                    #      store temp_107_21:f32 temp_90_21:ptr->f32 
    fsd     fa1,0(a0)
                    #      mu c1_19:371 
                    #      c1_19 = chi c1_19:371 
                    #      new_var temp_108_21:ptr->f32 
                    #      temp_108_21 = getelementptr c2_19:ptr->f32 [Some(0_0)] 
    li      a2, 0
    sd      a0,472(sp)
    li      a0, 1
    sd      a1,376(sp)
    li      a1, 0
    sd      a3,1136(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_109_21:ptr->f32 
                    #      new_var temp_110_21:f32 
                    #      temp_109_21 = getelementptr b2_19:ptr->f32 [Some(0_0)] 
    li      a0, 0
    li      a1, 1
    sd      a2,352(sp)
    li      a2, 0
    add     a0,a0,a5
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_110_21 = load temp_109_21:ptr->f32 
    fsw     fa0,404(sp)
    flw     fa0,a0(0)
                    #      new_var temp_111_21:ptr->f32 
                    #      new_var temp_112_21:f32 
                    #      temp_111_21 = getelementptr a2_19:ptr->f32 [Some(2_0)] 
    li      a1, 0
    li      a2, 1
    sd      a0,344(sp)
    li      a0, 2
    sd      a3,1168(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_112_21 = load temp_111_21:ptr->f32 
    fsw     fa0,340(sp)
    flw     fa0,a1(0)
                    #      new_var temp_113_21:f32 
                    #      temp_113_21 = Mul f32 temp_112_21, temp_110_21 
    fsw     fa1,364(sp)
    fsw     fa2,368(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_114_21:ptr->f32 
                    #      new_var temp_115_21:f32 
                    #      temp_114_21 = getelementptr b1_19:ptr->f32 [Some(0_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,328(sp)
    li      a1, 0
    add     a0,a0,a4
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_115_21 = load temp_114_21:ptr->f32 
    fsw     fa0,324(sp)
    flw     fa0,a0(0)
                    #      new_var temp_116_21:ptr->f32 
                    #      new_var temp_117_21:f32 
                    #      temp_116_21 = getelementptr a2_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,312(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_117_21 = load temp_116_21:ptr->f32 
    fsw     fa0,308(sp)
    flw     fa0,a1(0)
                    #      new_var temp_118_21:f32 
                    #      temp_118_21 = Mul f32 temp_117_21, temp_115_21 
    fsw     fa1,340(sp)
    fsw     fa2,320(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_119_21:f32 
                    #      temp_119_21 = Add f32 temp_118_21, temp_113_21 
    fsw     fa0,292(sp)
    fsw     fa1,308(sp)
    fadd.s  fa1,fa2,fa0
                    #      new_var temp_120_21:ptr->f32 
                    #      new_var temp_121_21:f32 
                    #      temp_120_21 = getelementptr b0_19:ptr->f32 [Some(0_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,296(sp)
    li      a1, 0
    sd      a3,1128(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_121_21 = load temp_120_21:ptr->f32 
    fsw     fa0,320(sp)
    flw     fa0,a0(0)
                    #      new_var temp_122_21:ptr->f32 
                    #      new_var temp_123_21:f32 
                    #      temp_122_21 = getelementptr a2_19:ptr->f32 [Some(0_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,272(sp)
    li      a0, 0
    sd      a3,1120(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_123_21 = load temp_122_21:ptr->f32 
    fsw     fa0,268(sp)
    flw     fa0,a1(0)
                    #      new_var temp_124_21:f32 
                    #      temp_124_21 = Mul f32 temp_123_21, temp_121_21 
    fsw     fa1,284(sp)
    fsw     fa2,288(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_125_21:f32 
                    #      temp_125_21 = Add f32 temp_124_21, temp_119_21 
    fsw     fa0,252(sp)
    fsw     fa1,268(sp)
    fadd.s  fa1,fa2,fa0
                    #      store temp_125_21:f32 temp_108_21:ptr->f32 
    fsd     fa1,0(a0)
                    #      mu c2_19:428 
                    #      c2_19 = chi c2_19:428 
                    #      new_var temp_126_21:ptr->f32 
                    #      temp_126_21 = getelementptr c2_19:ptr->f32 [Some(1_0)] 
    li      a2, 0
    sd      a0,352(sp)
    li      a0, 1
    sd      a1,256(sp)
    li      a1, 1
    sd      a3,1128(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_127_21:ptr->f32 
                    #      new_var temp_128_21:f32 
                    #      temp_127_21 = getelementptr b2_19:ptr->f32 [Some(1_0)] 
    li      a0, 0
                    #found literal reg Some(a1) already exist with 1_0
    sd      a2,232(sp)
    li      a2, 1
    add     a0,a0,a5
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_128_21 = load temp_127_21:ptr->f32 
    fsw     fa0,284(sp)
    flw     fa0,a0(0)
                    #      new_var temp_129_21:ptr->f32 
                    #      new_var temp_130_21:f32 
                    #      temp_129_21 = getelementptr a2_19:ptr->f32 [Some(2_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,224(sp)
    li      a0, 2
    sd      a3,1168(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_130_21 = load temp_129_21:ptr->f32 
    fsw     fa0,220(sp)
    flw     fa0,a1(0)
                    #      new_var temp_131_21:f32 
                    #      temp_131_21 = Mul f32 temp_130_21, temp_128_21 
    fsw     fa1,244(sp)
    fsw     fa2,248(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_132_21:ptr->f32 
                    #      new_var temp_133_21:f32 
                    #      temp_132_21 = getelementptr b1_19:ptr->f32 [Some(1_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,208(sp)
    li      a1, 1
    add     a0,a0,a4
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_133_21 = load temp_132_21:ptr->f32 
    fsw     fa0,204(sp)
    flw     fa0,a0(0)
                    #      new_var temp_134_21:ptr->f32 
                    #      new_var temp_135_21:f32 
                    #      temp_134_21 = getelementptr a2_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,192(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_135_21 = load temp_134_21:ptr->f32 
    fsw     fa0,188(sp)
    flw     fa0,a1(0)
                    #      new_var temp_136_21:f32 
                    #      temp_136_21 = Mul f32 temp_135_21, temp_133_21 
    fsw     fa1,220(sp)
    fsw     fa2,200(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_137_21:f32 
                    #      temp_137_21 = Add f32 temp_136_21, temp_131_21 
    fsw     fa0,172(sp)
    fsw     fa1,188(sp)
    fadd.s  fa1,fa2,fa0
                    #      new_var temp_138_21:ptr->f32 
                    #      new_var temp_139_21:f32 
                    #      temp_138_21 = getelementptr b0_19:ptr->f32 [Some(1_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,176(sp)
    li      a1, 1
    sd      a3,1128(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_139_21 = load temp_138_21:ptr->f32 
    fsw     fa0,200(sp)
    flw     fa0,a0(0)
                    #      new_var temp_140_21:ptr->f32 
                    #      new_var temp_141_21:f32 
                    #      temp_140_21 = getelementptr a2_19:ptr->f32 [Some(0_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,152(sp)
    li      a0, 0
    sd      a3,1120(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_141_21 = load temp_140_21:ptr->f32 
    fsw     fa0,148(sp)
    flw     fa0,a1(0)
                    #      new_var temp_142_21:f32 
                    #      temp_142_21 = Mul f32 temp_141_21, temp_139_21 
    fsw     fa1,164(sp)
    fsw     fa2,168(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_143_21:f32 
                    #      temp_143_21 = Add f32 temp_142_21, temp_137_21 
    fsw     fa0,132(sp)
    fsw     fa1,148(sp)
    fadd.s  fa1,fa2,fa0
                    #      store temp_143_21:f32 temp_126_21:ptr->f32 
    fsd     fa1,0(a0)
                    #      mu c2_19:485 
                    #      c2_19 = chi c2_19:485 
                    #      new_var temp_144_21:ptr->f32 
                    #      temp_144_21 = getelementptr c2_19:ptr->f32 [Some(2_0)] 
    li      a2, 0
    sd      a0,232(sp)
    li      a0, 1
    sd      a1,136(sp)
    li      a1, 2
    sd      a3,1128(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_145_21:ptr->f32 
                    #      new_var temp_146_21:f32 
                    #      temp_145_21 = getelementptr b2_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
    li      a1, 1
    sd      a2,112(sp)
    li      a2, 2
    add     a0,a0,a5
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_146_21 = load temp_145_21:ptr->f32 
    fsw     fa0,164(sp)
    flw     fa0,a0(0)
                    #      new_var temp_147_21:ptr->f32 
                    #      new_var temp_148_21:f32 
                    #      temp_147_21 = getelementptr a2_19:ptr->f32 [Some(2_0)] 
    li      a1, 0
    li      a2, 1
    sd      a0,104(sp)
    li      a0, 2
    sd      a3,1168(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_148_21 = load temp_147_21:ptr->f32 
    fsw     fa0,100(sp)
    flw     fa0,a1(0)
                    #      new_var temp_149_21:f32 
                    #      temp_149_21 = Mul f32 temp_148_21, temp_146_21 
    fsw     fa1,124(sp)
    fsw     fa2,128(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_150_21:ptr->f32 
                    #      new_var temp_151_21:f32 
                    #      temp_150_21 = getelementptr b1_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,88(sp)
    li      a1, 2
    add     a0,a0,a4
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_151_21 = load temp_150_21:ptr->f32 
    fsw     fa0,84(sp)
    flw     fa0,a0(0)
                    #      new_var temp_152_21:ptr->f32 
                    #      new_var temp_153_21:f32 
                    #      temp_152_21 = getelementptr a2_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,72(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_153_21 = load temp_152_21:ptr->f32 
    fsw     fa0,68(sp)
    flw     fa0,a1(0)
                    #      new_var temp_154_21:f32 
                    #      temp_154_21 = Mul f32 temp_153_21, temp_151_21 
    fsw     fa1,100(sp)
    fsw     fa2,80(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_155_21:f32 
                    #      temp_155_21 = Add f32 temp_154_21, temp_149_21 
    fsw     fa0,52(sp)
    fsw     fa1,68(sp)
    fadd.s  fa1,fa2,fa0
                    #      new_var temp_156_21:ptr->f32 
                    #      new_var temp_157_21:f32 
                    #      temp_156_21 = getelementptr b0_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,56(sp)
    li      a1, 2
    sd      a3,1128(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_157_21 = load temp_156_21:ptr->f32 
    fsw     fa0,80(sp)
    flw     fa0,a0(0)
                    #      new_var temp_158_21:ptr->f32 
                    #      new_var temp_159_21:f32 
                    #      temp_158_21 = getelementptr a2_19:ptr->f32 [Some(0_0)] 
    li      a1, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a0,32(sp)
    li      a0, 0
    sd      a3,1120(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_159_21 = load temp_158_21:ptr->f32 
    fsw     fa0,28(sp)
    flw     fa0,a1(0)
                    #      new_var temp_160_21:f32 
                    #      temp_160_21 = Mul f32 temp_159_21, temp_157_21 
    fsw     fa1,44(sp)
    fsw     fa2,48(sp)
    fmul.s  fa2,fa0,fa1
                    #      new_var temp_161_21:f32 
                    #      temp_161_21 = Add f32 temp_160_21, temp_155_21 
    fsw     fa0,12(sp)
    fsw     fa1,28(sp)
    fadd.s  fa1,fa2,fa0
                    #      store temp_161_21:f32 temp_144_21:ptr->f32 
    fsd     fa1,0(a0)
                    #      mu c2_19:542 
                    #      c2_19 = chi c2_19:542 
                    #      ret 0_0 
    ld      ra,1160(sp)
    ld      s0,1152(sp)
    sd      a0,112(sp)
    li      a0, 0
    addi    sp,sp,1176
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a0:12|a1:12|a2:12|b0:12|b1:12|b2:12|c0:24|c1:12|c2:12|i:4|temp_162:4|temp_163:1|none:7|temp_164:8|temp_165:4|none:4|temp_166:8|temp_167:4|none:4|temp_168:8|temp_169:4|none:4|temp_170:8|temp_171:4|none:4|temp_172:8|temp_173:4|none:4|temp_174:8|temp_175:4|temp_176:4|temp_177:4|x:4|temp_178:4|temp_179:1|none:3|temp_180:8|temp_181:4|temp_182:4|temp_183:4|temp_184:4|temp_185:1|none:7|temp_186:8|temp_187:4|temp_188:4|temp_189:4|temp_190:4|temp_191:1|none:7|temp_192:8|temp_193:4|temp_194:4|temp_195:4|none:4
    addi    sp,sp,-352
    sd      ra,344(sp)
    sd      s0,336(sp)
    addi    s0,sp,352
                    #      alloc Array:f32:[Some(3_0)] a0_35 
                    #      alloc Array:f32:[Some(3_0)] a1_35 
                    #      alloc Array:f32:[Some(3_0)] a2_35 
                    #      alloc Array:f32:[Some(3_0)] b0_35 
                    #      alloc Array:f32:[Some(3_0)] b1_35 
                    #      alloc Array:f32:[Some(3_0)] b2_35 
                    #      alloc Array:f32:[Some(6_0)] c0_35 
                    #      alloc Array:f32:[Some(3_0)] c1_35 
                    #      alloc Array:f32:[Some(3_0)] c2_35 
                    #      alloc i32 i_35 
                    #      alloc i32 temp_162_42 
                    #      alloc i1 temp_163_42 
                    #      alloc ptr->f32 temp_164_44 
                    #      alloc f32 temp_165_44 
                    #      alloc ptr->f32 temp_166_44 
                    #      alloc f32 temp_167_44 
                    #      alloc ptr->f32 temp_168_44 
                    #      alloc f32 temp_169_44 
                    #      alloc ptr->f32 temp_170_44 
                    #      alloc f32 temp_171_44 
                    #      alloc ptr->f32 temp_172_44 
                    #      alloc f32 temp_173_44 
                    #      alloc ptr->f32 temp_174_44 
                    #      alloc f32 temp_175_44 
                    #      alloc i32 temp_176_44 
                    #      alloc i32 temp_177_35 
                    #      alloc i32 x_35 
                    #      alloc i32 temp_178_54 
                    #      alloc i1 temp_179_54 
                    #      alloc ptr->f32 temp_180_56 
                    #      alloc f32 temp_181_56 
                    #      alloc i32 temp_182_56 
                    #      alloc i32 temp_183_56 
                    #      alloc i32 temp_184_63 
                    #      alloc i1 temp_185_63 
                    #      alloc ptr->f32 temp_186_65 
                    #      alloc f32 temp_187_65 
                    #      alloc i32 temp_188_65 
                    #      alloc i32 temp_189_65 
                    #      alloc i32 temp_190_72 
                    #      alloc i1 temp_191_72 
                    #      alloc ptr->f32 temp_192_74 
                    #      alloc f32 temp_193_74 
                    #      alloc i32 temp_194_74 
                    #      alloc i32 temp_195_74 
                    #      label L0_0: 
.L0_0:
                    #      store 3_0:i32 *N_0:ptr->i32 
                    #   load label N as ptr to reg
    la      a0, N
                    #occupy reg a0 with *N_0
    li      a1, 3
    sd      a1,0(a0)
                    #      store 3_0:i32 *M_0:ptr->i32 
                    #   load label M as ptr to reg
    la      a2, M
                    #occupy reg a2 with *M_0
                    #found literal reg Some(a1) already exist with 3_0
    sd      a1,0(a2)
                    #      store 3_0:i32 *L_0:ptr->i32 
                    #   load label L as ptr to reg
    la      a3, L
                    #occupy reg a3 with *L_0
                    #found literal reg Some(a1) already exist with 3_0
    sd      a1,0(a3)
                    #      new_var a0_35:Array:f32:[Some(3_0)] 
                    #      new_var a1_35:Array:f32:[Some(3_0)] 
                    #      new_var a2_35:Array:f32:[Some(3_0)] 
                    #      new_var b0_35:Array:f32:[Some(3_0)] 
                    #      new_var b1_35:Array:f32:[Some(3_0)] 
                    #      new_var b2_35:Array:f32:[Some(3_0)] 
                    #      new_var c0_35:Array:f32:[Some(6_0)] 
                    #      new_var c1_35:Array:f32:[Some(3_0)] 
                    #      new_var c2_35:Array:f32:[Some(3_0)] 
                    #      new_var i_35:i32 
                    #      i_35 = i32 0_0 
    li      a4, 0
                    #      jump label: while.head_43 
    j       .while.head_43
                    #      label while.head_43: 
.while.head_43:
                    #      new_var temp_162_42:i32 
                    #      temp_162_42 = load *M_0:ptr->i32 
                    #   load label M as ptr to reg
    la      a0, M
                    #occupy reg a0 with *M_0
    lw      a1,0(a0)
                    #      new_var temp_163_42:i1 
                    #      temp_163_42 = icmp i32 Slt i_35, temp_162_42 
    slt     a2,a4,a1
                    #      br i1 temp_163_42, label while.body_43, label while.exit_43 
    bnez    a2, .while.body_43
    j       .while.exit_43
                    #      label while.body_43: 
.while.body_43:
                    #      new_var temp_164_44:ptr->f32 
                    #      temp_164_44 = getelementptr a0_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      a0, 0
    li      a3, 1
    mul     a5,a3,a4
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_165_44:f32 
                    #      temp_165_44 = sitofp i32 i_35 to f32 
                    #      store temp_165_44:f32 temp_164_44:ptr->f32 
    fsd     fa0,0(a0)
                    #      mu a0_35:588 
                    #      a0_35 = chi a0_35:588 
                    #      new_var temp_166_44:ptr->f32 
                    #      temp_166_44 = getelementptr a1_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      a6, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     a7,a3,a4
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      new_var temp_167_44:f32 
                    #      temp_167_44 = sitofp i32 i_35 to f32 
                    #      store temp_167_44:f32 temp_166_44:ptr->f32 
    fsd     fa1,0(a6)
                    #      mu a1_35:597 
                    #      a1_35 = chi a1_35:597 
                    #      new_var temp_168_44:ptr->f32 
                    #      temp_168_44 = getelementptr a2_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      s1, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s2,a3,a4
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      new_var temp_169_44:f32 
                    #      temp_169_44 = sitofp i32 i_35 to f32 
                    #      store temp_169_44:f32 temp_168_44:ptr->f32 
    fsd     fa2,0(s1)
                    #      mu a2_35:606 
                    #      a2_35 = chi a2_35:606 
                    #      new_var temp_170_44:ptr->f32 
                    #      temp_170_44 = getelementptr b0_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      s3, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s4,a3,a4
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      new_var temp_171_44:f32 
                    #      temp_171_44 = sitofp i32 i_35 to f32 
                    #      store temp_171_44:f32 temp_170_44:ptr->f32 
    fsd     fa3,0(s3)
                    #      mu b0_35:615 
                    #      b0_35 = chi b0_35:615 
                    #      new_var temp_172_44:ptr->f32 
                    #      temp_172_44 = getelementptr b1_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      s5, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s6,a3,a4
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      new_var temp_173_44:f32 
                    #      temp_173_44 = sitofp i32 i_35 to f32 
                    #      store temp_173_44:f32 temp_172_44:ptr->f32 
    fsd     fa4,0(s5)
                    #      mu b1_35:624 
                    #      b1_35 = chi b1_35:624 
                    #      new_var temp_174_44:ptr->f32 
                    #      temp_174_44 = getelementptr b2_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      s7, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s8,a3,a4
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      new_var temp_175_44:f32 
                    #      temp_175_44 = sitofp i32 i_35 to f32 
                    #      store temp_175_44:f32 temp_174_44:ptr->f32 
    fsd     fa5,0(s7)
                    #      mu b2_35:633 
                    #      b2_35 = chi b2_35:633 
                    #      new_var temp_176_44:i32 
                    #      temp_176_44 = Add i32 i_35, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     s9,a4,a3
                    #      i_35 = i32 temp_176_44 
                    #      jump label: while.head_43 
    sw      s6,284(sp)
    sw      s9,104(sp)
    sw      a5,332(sp)
    sw      s8,272(sp)
    sd      a0,192(sp)
    sd      s3,144(sp)
    sd      s7,112(sp)
    sw      a7,320(sp)
    sw      s4,296(sp)
    sd      a6,176(sp)
    sw      a1,208(sp)
    fsw     fa2,156(sp)
    sd      s1,160(sp)
    sb      a2,207(sp)
    fsw     fa3,140(sp)
    fsw     fa5,108(sp)
    fsw     fa0,188(sp)
    sd      s5,128(sp)
    sw      s2,308(sp)
    fsw     fa4,124(sp)
    fsw     fa1,172(sp)
    j       .while.head_43
                    #      label while.exit_43: 
.while.exit_43:
                    #      new_var temp_177_35:i32 
                    #      temp_177_35 =  Call i32 mul_0(a0_35, a1_35, a2_35, b0_35, b1_35, b2_35, c0_35, c1_35, c2_35) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,332(sp)
    sw      a1,208(sp)
    lw      a1,320(sp)
    sb      a2,207(sp)
    lw      a2,308(sp)
    lw      a3,296(sp)
    sw      a4,212(sp)
    lw      a4,284(sp)
    lw      a5,272(sp)
    lw      a6,260(sp)
    lw      a7,236(sp)
                    #arg load ended
    call    mul
    sw      a0,100(sp)
                    #      i_35 = i32 temp_177_35 
    mv      a1, a0
                    #      new_var x_35:i32 
                    #      jump label: while.head_55 
    j       .while.head_55
                    #      label while.head_55: 
.while.head_55:
                    #      new_var temp_178_54:i32 
                    #      temp_178_54 = load *N_0:ptr->i32 
                    #   load label N as ptr to reg
    la      a2, N
                    #occupy reg a2 with *N_0
    lw      a3,0(a2)
                    #      new_var temp_179_54:i1 
                    #      temp_179_54 = icmp i32 Slt i_35, temp_178_54 
    slt     a4,a1,a3
                    #      br i1 temp_179_54, label while.body_55, label while.exit_55 
    bnez    a4, .while.body_55
    j       .while.exit_55
                    #      label while.body_55: 
.while.body_55:
                    #      new_var temp_180_56:ptr->f32 
                    #      new_var temp_181_56:f32 
                    #      temp_180_56 = getelementptr c0_35:Array:f32:[Some(6_0)] [Some(i_35)] 
    li      a2, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_181_56 = load temp_180_56:ptr->f32 
    flw     fa0,a2(0)
                    #      new_var temp_182_56:i32 
                    #      temp_182_56 = fptosi f32 temp_181_56 to i32 
                    #      x_35 = i32 temp_182_56 
    mv      s1, a7
                    #       Call void putint_0(x_35) 
                    #saved register dumping to mem
    sw      s1,96(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,100(sp)
    lw      a0,96(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_183_56:i32 
                    #      temp_183_56 = Add i32 i_35, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    add     a0,a1,a5
                    #      i_35 = i32 temp_183_56 
                    #      jump label: while.head_55 
    sw      a0,68(sp)
    lw      a0,100(sp)
    sw      a7,72(sp)
    sw      a6,260(sp)
    sd      a2,80(sp)
    sw      a3,92(sp)
    fsw     fa0,76(sp)
    sb      a4,91(sp)
    j       .while.head_55
                    #      label while.exit_55: 
.while.exit_55:
                    #      x_35 = i32 10_0 
    li      a2, 10
                    #      i_35 = i32 0_0 
                    #       Call void putch_0(x_35) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,100(sp)
    mv      a0, a2
                    #arg load ended
    call    putch
                    #      jump label: while.head_64 
    j       .while.head_64
                    #      label while.head_64: 
.while.head_64:
                    #      new_var temp_184_63:i32 
                    #      temp_184_63 = load *N_0:ptr->i32 
                    #   load label N as ptr to reg
    la      a0, N
                    #occupy reg a0 with *N_0
    lw      a5,0(a0)
                    #      new_var temp_185_63:i1 
                    #      temp_185_63 = icmp i32 Slt i_35, temp_184_63 
    slt     a6,a1,a5
                    #      br i1 temp_185_63, label while.body_64, label while.exit_64 
    bnez    a6, .while.body_64
    j       .while.exit_64
                    #      label while.body_64: 
.while.body_64:
                    #      new_var temp_186_65:ptr->f32 
                    #      new_var temp_187_65:f32 
                    #      temp_186_65 = getelementptr c1_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      a0, 0
    li      a7, 1
    mul     s1,a7,a1
    add     a0,a0,s1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_187_65 = load temp_186_65:ptr->f32 
    flw     fa0,a0(0)
                    #      new_var temp_188_65:i32 
                    #      temp_188_65 = fptosi f32 temp_187_65 to i32 
                    #      x_35 = i32 temp_188_65 
                    #       Call void putint_0(x_35) 
                    #saved register dumping to mem
    sw      s1,236(sp)
    sw      s2,40(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,48(sp)
    mv      a0, a2
                    #arg load ended
    call    putint
                    #      new_var temp_189_65:i32 
                    #      temp_189_65 = Add i32 i_35, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    add     a0,a1,a7
                    #      i_35 = i32 temp_189_65 
                    #      jump label: while.head_64 
    sw      a5,64(sp)
    sw      a0,36(sp)
    sb      a6,63(sp)
    fsw     fa0,44(sp)
    j       .while.head_64
                    #      label while.exit_64: 
.while.exit_64:
                    #      x_35 = i32 10_0 
                    #      i_35 = i32 0_0 
                    #       Call void putch_0(x_35) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a2
                    #arg load ended
    call    putch
                    #      jump label: while.head_73 
    j       .while.head_73
                    #      label while.head_73: 
.while.head_73:
                    #      new_var temp_190_72:i32 
                    #      temp_190_72 = load *N_0:ptr->i32 
                    #   load label N as ptr to reg
    la      a0, N
                    #occupy reg a0 with *N_0
    lw      a7,0(a0)
                    #      new_var temp_191_72:i1 
                    #      temp_191_72 = icmp i32 Slt i_35, temp_190_72 
    slt     s1,a1,a7
                    #      br i1 temp_191_72, label while.body_73, label while.exit_73 
    bnez    s1, .while.body_73
    j       .while.exit_73
                    #      label while.body_73: 
.while.body_73:
                    #      new_var temp_192_74:ptr->f32 
                    #      new_var temp_193_74:f32 
                    #      temp_192_74 = getelementptr c2_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      a0, 0
    li      s2, 1
    mul     s3,s2,a1
    add     a0,a0,s3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_193_74 = load temp_192_74:ptr->f32 
    flw     fa0,a0(0)
                    #      new_var temp_194_74:i32 
                    #      temp_194_74 = fptosi f32 temp_193_74 to i32 
                    #      x_35 = i32 temp_194_74 
                    #       Call void putint_0(x_35) 
                    #saved register dumping to mem
    sb      s1,31(sp)
    sw      s3,224(sp)
    sw      s4,8(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,16(sp)
    mv      a0, a2
                    #arg load ended
    call    putint
                    #      new_var temp_195_74:i32 
                    #      temp_195_74 = Add i32 i_35, 1_0 
    li      a0, 1
    add     s1,a1,a0
                    #      i_35 = i32 temp_195_74 
                    #      jump label: while.head_73 
    sw      a7,32(sp)
    sw      s1,4(sp)
    fsw     fa0,12(sp)
    j       .while.head_73
                    #      label while.exit_73: 
.while.exit_73:
                    #      x_35 = i32 10_0 
                    #       Call void putch_0(x_35) 
                    #saved register dumping to mem
    sb      s1,31(sp)
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a2
                    #arg load ended
    call    putch
                    #      ret 0_0 
    ld      ra,344(sp)
    ld      s0,336(sp)
    li      a0, 0
    addi    sp,sp,352
    ret
.section        .data
    .align 4
    .globl N
                    #      global i32 N_0 
    .type N,@object
N:
    .word 0
    .align 4
    .globl L
                    #      global i32 L_0 
    .type L,@object
L:
    .word 0
    .align 4
    .globl M
                    #      global i32 M_0 
    .type M,@object
M:
    .word 0
