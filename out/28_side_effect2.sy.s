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
                    #      Define f_0 [i_18, j_18] -> f_ret_0 
    .globl f
    .type f,@function
f:
                    #mem layout:|ra_f:8|s0_f:8|i:4|j:4|temp_0:4|temp_1:4|temp_2:1|temp_3:1|temp_4:1|none:5|temp_5:8|temp_6:1|none:3|temp_7:80|none:4|temp_8:8|temp_9:4|temp_10:4|temp_11:80|temp_12:8|temp_13:4|none:4
    addi    sp,sp,-248
    sd      ra,240(sp)
    sd      s0,232(sp)
    addi    s0,sp,248
                    #      alloc i32 temp_0_20 
                    #      alloc i32 temp_1_20 
                    #      alloc i1 temp_2_22 
                    #      alloc i1 temp_3_22 
                    #      alloc i1 temp_4_22 
                    #      alloc ptr->i32 temp_5_20 
                    #      alloc i1 temp_6_26 
                    #      alloc Array:i32:[Some(20_0)] temp_7_26 
                    #      alloc ptr->i32 temp_8_26 
                    #      alloc i32 temp_9_26 
                    #      alloc i32 temp_10_26 
                    #      alloc Array:i32:[Some(20_0)] temp_11_26 
                    #      alloc ptr->i32 temp_12_26 
                    #      alloc i32 temp_13_26 
                    #      label L19_0: 
.L19_0:
                    #      new_var temp_0_20:i32 
                    #      temp_0_20 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a2, sum
                    #occupy reg a2 with *sum_0
    lw      a3,0(a2)
                    #      new_var temp_1_20:i32 
                    #      temp_1_20 = Add i32 temp_0_20, 1_0 
    li      a4, 1
    add     a5,a3,a4
                    #      store temp_1_20:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a6, sum
                    #occupy reg a6 with *sum_0
    sd      a5,0(a6)
                    #      jump label: L20_0 
    j       .L20_0
                    #      label L20_0: 
.L20_0:
                    #      new_var temp_2_22:i1 
                    #      temp_2_22 = icmp i32 Sge 20_0, i_18 
    li      a2, 20
    slt     a4,a2,a0
    xori    a4,a4,1
                    #      new_var temp_3_22:i1 
                    #      temp_3_22 = icmp i32 Sge i_18, j_18 
    slt     a6,a0,a1
    xori    a6,a6,1
                    #      new_var temp_4_22:i1 
                    #      temp_4_22 = Or i1 temp_3_22, temp_2_22 
                    #      br i1 temp_4_22, label branch_true_23, label branch_false_23 
    bnez    a7, .branch_true_23
    j       .branch_false_23
                    #      label branch_true_23: 
.branch_true_23:
                    #      ret 0_0 
    ld      ra,240(sp)
    ld      s0,232(sp)
    sw      a0,228(sp)
    li      a0, 0
    addi    sp,sp,248
    ret
                    #      label branch_false_23: 
.branch_false_23:
                    #      label L21_0: 
.L21_0:
                    #      new_var temp_5_20:ptr->i32 
                    #      temp_5_20 = getelementptr array_0:Array:i32:[Some(20_0)] [Some(i_18)] 
    li      a2, 0
    li      s1, 1
    mul     s2,s1,a0
                    #occupy reg s2 with array_0
    add     a2,a2,s2
    slli a2,a2,2
    add     a2,a2,a2
                    #      store 1_0:i32 temp_5_20:ptr->i32 
                    #found literal reg Some(s1) already exist with 1_0
    sd      s1,0(a2)
                    #      mu array_0:47 
                    #      array_0 = chi array_0:47 
                    #      jump label: L22_0 
    j       .L22_0
                    #      label L22_0: 
.L22_0:
                    #      new_var temp_6_26:i1 
                    #      temp_6_26 = icmp i32 Eq i_18, 0_0 
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
                    #      br i1 temp_6_26, label branch_true_27, label branch_false_27 
    bnez    s2, .branch_true_27
    j       .branch_false_27
                    #      label branch_true_27: 
.branch_true_27:
                    #      new_var temp_7_26:Array:i32:[Some(20_0)] 
                    #      temp_7_26 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s1, array
                    #occupy reg s1 with *array_0
    lw      s3,0(s1)
                    #      new_var temp_8_26:ptr->i32 
                    #      new_var temp_9_26:i32 
                    #      temp_8_26 = getelementptr temp_7_26:Array:i32:[Some(20_0)] [Some(0_0)] 
    li      s4, 0
    li      s5, 1
    li      s6, 0
    add     s4,s4,s3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_9_26 = load temp_8_26:ptr->i32 
    lw      s7,0(s4)
                    #      ret temp_9_26 
    ld      ra,240(sp)
    ld      s0,232(sp)
    sw      s7,100(sp)
    sw      a0,228(sp)
    addi    sp,sp,248
    ret
                    #      label branch_false_27: 
.branch_false_27:
                    #      new_var temp_10_26:i32 
                    #      temp_10_26 = Sub i32 i_18, 1_0 
    li      s1, 1
    sub     s3,a0,s1
                    #      new_var temp_11_26:Array:i32:[Some(20_0)] 
                    #      temp_11_26 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s4, array
                    #occupy reg s4 with *array_0
    lw      s5,0(s4)
                    #      new_var temp_12_26:ptr->i32 
                    #      new_var temp_13_26:i32 
                    #      temp_12_26 = getelementptr temp_11_26:Array:i32:[Some(20_0)] [Some(temp_10_26)] 
    li      s6, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_13_26 = load temp_12_26:ptr->i32 
    lw      s7,0(s6)
                    #      ret temp_13_26 
    ld      ra,240(sp)
    ld      s0,232(sp)
    sw      s7,4(sp)
    sw      a0,228(sp)
    addi    sp,sp,248
    ret
                    #      label L23_0: 
.L23_0:
                    #      Define g_0 [i_30, j_30] -> g_ret_0 
    .globl g
    .type g,@function
g:
                    #mem layout:|ra_g:8|s0_g:8|i:4|j:4|temp_14:4|temp_15:4|temp_16:1|temp_17:1|temp_18:1|none:5|temp_19:8|temp_20:1|none:3|temp_21:80|none:4|temp_22:8|temp_23:4|temp_24:4|temp_25:80|temp_26:8|temp_27:4|none:4
    addi    sp,sp,-248
    sd      ra,240(sp)
    sd      s0,232(sp)
    addi    s0,sp,248
                    #      alloc i32 temp_14_32 
                    #      alloc i32 temp_15_32 
                    #      alloc i1 temp_16_34 
                    #      alloc i1 temp_17_34 
                    #      alloc i1 temp_18_34 
                    #      alloc ptr->i32 temp_19_32 
                    #      alloc i1 temp_20_38 
                    #      alloc Array:i32:[Some(20_0)] temp_21_38 
                    #      alloc ptr->i32 temp_22_38 
                    #      alloc i32 temp_23_38 
                    #      alloc i32 temp_24_38 
                    #      alloc Array:i32:[Some(20_0)] temp_25_38 
                    #      alloc ptr->i32 temp_26_38 
                    #      alloc i32 temp_27_38 
                    #      label L14_0: 
.L14_0:
                    #      new_var temp_14_32:i32 
                    #      temp_14_32 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a2, sum
                    #occupy reg a2 with *sum_0
    lw      a3,0(a2)
                    #      new_var temp_15_32:i32 
                    #      temp_15_32 = Add i32 temp_14_32, 2_0 
    li      a4, 2
    add     a5,a3,a4
                    #      store temp_15_32:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a6, sum
                    #occupy reg a6 with *sum_0
    sd      a5,0(a6)
                    #      jump label: L15_0 
    j       .L15_0
                    #      label L15_0: 
.L15_0:
                    #      new_var temp_16_34:i1 
                    #      temp_16_34 = icmp i32 Sge 20_0, i_30 
    li      a2, 20
    slt     a4,a2,a0
    xori    a4,a4,1
                    #      new_var temp_17_34:i1 
                    #      temp_17_34 = icmp i32 Sge i_30, j_30 
    slt     a6,a0,a1
    xori    a6,a6,1
                    #      new_var temp_18_34:i1 
                    #      temp_18_34 = Or i1 temp_17_34, temp_16_34 
                    #      br i1 temp_18_34, label branch_true_35, label branch_false_35 
    bnez    a7, .branch_true_35
    j       .branch_false_35
                    #      label branch_true_35: 
.branch_true_35:
                    #      ret 1_0 
    ld      ra,240(sp)
    ld      s0,232(sp)
    sw      a0,228(sp)
    li      a0, 1
    addi    sp,sp,248
    ret
                    #      label branch_false_35: 
.branch_false_35:
                    #      label L16_0: 
.L16_0:
                    #      new_var temp_19_32:ptr->i32 
                    #      temp_19_32 = getelementptr array_0:Array:i32:[Some(20_0)] [Some(i_30)] 
    li      a2, 0
    li      s1, 1
    mul     s2,s1,a0
                    #occupy reg s2 with array_0
    add     a2,a2,s2
    slli a2,a2,2
    add     a2,a2,a2
                    #      store 0_0:i32 temp_19_32:ptr->i32 
    li      s3, 0
    sd      s3,0(a2)
                    #      mu array_0:105 
                    #      array_0 = chi array_0:105 
                    #      jump label: L17_0 
    j       .L17_0
                    #      label L17_0: 
.L17_0:
                    #      new_var temp_20_38:i1 
                    #      temp_20_38 = icmp i32 Eq i_30, 0_0 
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
                    #      br i1 temp_20_38, label branch_true_39, label branch_false_39 
    bnez    s2, .branch_true_39
    j       .branch_false_39
                    #      label branch_true_39: 
.branch_true_39:
                    #      new_var temp_21_38:Array:i32:[Some(20_0)] 
                    #      temp_21_38 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s1, array
                    #occupy reg s1 with *array_0
    lw      s3,0(s1)
                    #      new_var temp_22_38:ptr->i32 
                    #      new_var temp_23_38:i32 
                    #      temp_22_38 = getelementptr temp_21_38:Array:i32:[Some(20_0)] [Some(0_0)] 
    li      s4, 0
    li      s5, 1
    li      s6, 0
    add     s4,s4,s3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_23_38 = load temp_22_38:ptr->i32 
    lw      s7,0(s4)
                    #      ret temp_23_38 
    ld      ra,240(sp)
    ld      s0,232(sp)
    sw      s7,100(sp)
    sw      a0,228(sp)
    addi    sp,sp,248
    ret
                    #      label branch_false_39: 
.branch_false_39:
                    #      new_var temp_24_38:i32 
                    #      temp_24_38 = Sub i32 i_30, 1_0 
    li      s1, 1
    sub     s3,a0,s1
                    #      new_var temp_25_38:Array:i32:[Some(20_0)] 
                    #      temp_25_38 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s4, array
                    #occupy reg s4 with *array_0
    lw      s5,0(s4)
                    #      new_var temp_26_38:ptr->i32 
                    #      new_var temp_27_38:i32 
                    #      temp_26_38 = getelementptr temp_25_38:Array:i32:[Some(20_0)] [Some(temp_24_38)] 
    li      s6, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_27_38 = load temp_26_38:ptr->i32 
    lw      s7,0(s6)
                    #      ret temp_27_38 
    ld      ra,240(sp)
    ld      s0,232(sp)
    sw      s7,4(sp)
    sw      a0,228(sp)
    addi    sp,sp,248
    ret
                    #      label L18_0: 
.L18_0:
                    #      Define h_0 [i_42] -> h_ret_0 
    .globl h
    .type h,@function
h:
                    #mem layout:|ra_h:8|s0_h:8|i:4|temp_28:4|temp_29:4|temp_30:1|temp_31:1|temp_32:1|none:1|temp_33:80|temp_34:8|temp_35:4|none:4
    addi    sp,sp,-128
    sd      ra,120(sp)
    sd      s0,112(sp)
    addi    s0,sp,128
                    #      alloc i32 temp_28_44 
                    #      alloc i32 temp_29_44 
                    #      alloc i1 temp_30_46 
                    #      alloc i1 temp_31_46 
                    #      alloc i1 temp_32_46 
                    #      alloc Array:i32:[Some(20_0)] temp_33_44 
                    #      alloc ptr->i32 temp_34_44 
                    #      alloc i32 temp_35_44 
                    #      label L11_0: 
.L11_0:
                    #      new_var temp_28_44:i32 
                    #      temp_28_44 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a1, sum
                    #occupy reg a1 with *sum_0
    lw      a2,0(a1)
                    #      new_var temp_29_44:i32 
                    #      temp_29_44 = Add i32 temp_28_44, 3_0 
    li      a3, 3
    add     a4,a2,a3
                    #      store temp_29_44:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a5, sum
                    #occupy reg a5 with *sum_0
    sd      a4,0(a5)
                    #      jump label: L12_0 
    j       .L12_0
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_30_46:i1 
                    #      temp_30_46 = icmp i32 Sge 20_0, i_42 
    li      a1, 20
    slt     a3,a1,a0
    xori    a3,a3,1
                    #      new_var temp_31_46:i1 
                    #      temp_31_46 = icmp i32 Slt i_42, 0_0 
    li      a5, 0
    slt     a6,a0,a5
                    #      new_var temp_32_46:i1 
                    #      temp_32_46 = Or i1 temp_31_46, temp_30_46 
                    #      br i1 temp_32_46, label branch_true_47, label branch_false_47 
    bnez    a7, .branch_true_47
    j       .branch_false_47
                    #      label branch_true_47: 
.branch_true_47:
                    #      ret 0_0 
    ld      ra,120(sp)
    ld      s0,112(sp)
    sw      a0,108(sp)
    li      a0, 0
    addi    sp,sp,128
    ret
                    #      label branch_false_47: 
.branch_false_47:
                    #      label L13_0: 
.L13_0:
                    #      new_var temp_33_44:Array:i32:[Some(20_0)] 
                    #      temp_33_44 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      a1, array
                    #occupy reg a1 with *array_0
    lw      a5,0(a1)
                    #      new_var temp_34_44:ptr->i32 
                    #      new_var temp_35_44:i32 
                    #      temp_34_44 = getelementptr temp_33_44:Array:i32:[Some(20_0)] [Some(i_42)] 
    li      s1, 0
    li      s2, 1
    add     s1,s1,a5
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_35_44 = load temp_34_44:ptr->i32 
    lw      s3,0(s1)
                    #      ret temp_35_44 
    ld      ra,120(sp)
    ld      s0,112(sp)
    sw      s3,4(sp)
    sw      a0,108(sp)
    addi    sp,sp,128
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|i:4|temp_36:1|none:3|temp_37:4|temp_38:4|temp_39:1|temp_40:1|temp_41:1|none:1|temp_42:4|temp_43:1|temp_44:1|none:2|temp_45:4|temp_46:1|temp_47:1|none:2|temp_48:4|temp_49:1|temp_50:1|none:2|temp_51:4|temp_52:1|temp_53:1|none:2|temp_54:4|temp_55:1|temp_56:1|none:2|temp_57:4|temp_58:1|temp_59:1|none:2|temp_60:4|temp_61:1|temp_62:1|none:2|temp_63:4|temp_64:1|temp_65:1|none:2|temp_66:4|temp_67:1|temp_68:1|none:2|temp_69:4|temp_70:1|temp_71:1|none:2|temp_72:4|temp_73:1|temp_74:1|none:2|temp_75:4|temp_76:1|temp_77:1|none:2|temp_78:4|temp_79:1|temp_80:1|none:2|temp_81:4|temp_82:1|temp_83:1|none:2|temp_84:4|temp_85:1|temp_86:1|none:2|temp_87:4|temp_88:1|temp_89:1|none:2|temp_90:4|temp_91:1|temp_92:1|none:2|temp_93:4|temp_94:1|temp_95:1|none:2|temp_96:4|temp_97:1|none:3|temp_98:4|temp_99:4|temp_100:1|temp_101:1|temp_102:1|none:1|temp_103:4|temp_104:1|temp_105:1|none:2|temp_106:4|temp_107:1|temp_108:1|none:2|temp_109:4|temp_110:1|temp_111:1|none:2|temp_112:4|temp_113:1|temp_114:1|none:2|temp_115:4|temp_116:1|temp_117:1|none:2|temp_118:4|temp_119:1|temp_120:1|none:2|temp_121:4|temp_122:1|temp_123:1|none:2|temp_124:4|temp_125:1|temp_126:1|none:2|temp_127:4|temp_128:1|temp_129:1|none:2|temp_130:4|temp_131:1|temp_132:1|none:2|temp_133:4|temp_134:1|temp_135:1|none:2|temp_136:4|temp_137:1|temp_138:1|none:2|temp_139:4|temp_140:1|temp_141:1|none:2|temp_142:4|temp_143:1|temp_144:1|none:2|temp_145:4|temp_146:1|temp_147:1|none:2|temp_148:4|temp_149:1|temp_150:1|none:2|temp_151:4|temp_152:1|temp_153:1|none:2|temp_154:4|temp_155:1|temp_156:1|none:2|temp_157:4|temp_158:4|temp_159:4|temp_160:1|temp_161:1|temp_162:1|none:1|temp_163:4|ans:4|temp_164:4|temp_165:4|temp_166:1|temp_167:1|temp_168:1|temp_169:1|temp_170:4|temp_171:4|temp_172:1|temp_173:1|temp_174:1|temp_175:1|temp_176:4|temp_177:4|temp_178:4|temp_179:1|temp_180:1|none:2|temp_181:4|temp_182:4|temp_183:1|temp_184:1|temp_185:1|temp_186:1|temp_187:4|temp_188:1|temp_189:1|temp_190:1|none:1|temp_191:4|temp_192:1|temp_193:1|temp_194:1|none:1|temp_195:4|temp_196:4|temp_197:4|temp_198:4|temp_199:1|temp_200:1|temp_201:1|none:1|temp_202:4|temp_203:1|temp_204:1|temp_205:1|none:1|temp_206:4|temp_207:1|temp_208:1|temp_209:1|none:1|temp_210:4|temp_211:1|temp_212:1|temp_213:1|none:1|temp_214:4|temp_215:1|temp_216:1|none:2|temp_217:4|temp_218:1|temp_219:1|temp_220:1|none:1|temp_221:4|temp_222:4|temp_223:4|temp_224:4|temp_225:1|temp_226:1|none:2|temp_227:4|temp_228:1|temp_229:1|temp_230:1|temp_231:1|temp_232:4|temp_233:1|temp_234:1|none:2|temp_235:4|temp_236:1|temp_237:1|none:2|temp_238:4|temp_239:1|temp_240:1|temp_241:1|none:1|temp_242:4|temp_243:1|temp_244:1|none:2|temp_245:4|temp_246:1|temp_247:1|temp_248:1|none:1|temp_249:4|temp_250:4|none:4
    addi    sp,sp,-576
    sd      ra,568(sp)
    sd      s0,560(sp)
    addi    s0,sp,576
                    #      alloc i32 i_51 
                    #      alloc i1 temp_36_53 
                    #      alloc i32 temp_37_56 
                    #      alloc i32 temp_38_56 
                    #      alloc i1 temp_39_56 
                    #      alloc i1 temp_40_56 
                    #      alloc i1 temp_41_56 
                    #      alloc i32 temp_42_56 
                    #      alloc i1 temp_43_56 
                    #      alloc i1 temp_44_56 
                    #      alloc i32 temp_45_56 
                    #      alloc i1 temp_46_56 
                    #      alloc i1 temp_47_56 
                    #      alloc i32 temp_48_56 
                    #      alloc i1 temp_49_56 
                    #      alloc i1 temp_50_56 
                    #      alloc i32 temp_51_56 
                    #      alloc i1 temp_52_56 
                    #      alloc i1 temp_53_56 
                    #      alloc i32 temp_54_56 
                    #      alloc i1 temp_55_56 
                    #      alloc i1 temp_56_56 
                    #      alloc i32 temp_57_56 
                    #      alloc i1 temp_58_56 
                    #      alloc i1 temp_59_56 
                    #      alloc i32 temp_60_56 
                    #      alloc i1 temp_61_56 
                    #      alloc i1 temp_62_56 
                    #      alloc i32 temp_63_56 
                    #      alloc i1 temp_64_56 
                    #      alloc i1 temp_65_56 
                    #      alloc i32 temp_66_56 
                    #      alloc i1 temp_67_56 
                    #      alloc i1 temp_68_56 
                    #      alloc i32 temp_69_56 
                    #      alloc i1 temp_70_56 
                    #      alloc i1 temp_71_56 
                    #      alloc i32 temp_72_56 
                    #      alloc i1 temp_73_56 
                    #      alloc i1 temp_74_56 
                    #      alloc i32 temp_75_56 
                    #      alloc i1 temp_76_56 
                    #      alloc i1 temp_77_56 
                    #      alloc i32 temp_78_56 
                    #      alloc i1 temp_79_56 
                    #      alloc i1 temp_80_56 
                    #      alloc i32 temp_81_56 
                    #      alloc i1 temp_82_56 
                    #      alloc i1 temp_83_56 
                    #      alloc i32 temp_84_56 
                    #      alloc i1 temp_85_56 
                    #      alloc i1 temp_86_56 
                    #      alloc i32 temp_87_56 
                    #      alloc i1 temp_88_56 
                    #      alloc i1 temp_89_56 
                    #      alloc i32 temp_90_56 
                    #      alloc i1 temp_91_56 
                    #      alloc i1 temp_92_56 
                    #      alloc i32 temp_93_56 
                    #      alloc i1 temp_94_56 
                    #      alloc i1 temp_95_56 
                    #      alloc i32 temp_96_55 
                    #      alloc i1 temp_97_61 
                    #      alloc i32 temp_98_64 
                    #      alloc i32 temp_99_64 
                    #      alloc i1 temp_100_64 
                    #      alloc i1 temp_101_64 
                    #      alloc i1 temp_102_64 
                    #      alloc i32 temp_103_64 
                    #      alloc i1 temp_104_64 
                    #      alloc i1 temp_105_64 
                    #      alloc i32 temp_106_64 
                    #      alloc i1 temp_107_64 
                    #      alloc i1 temp_108_64 
                    #      alloc i32 temp_109_64 
                    #      alloc i1 temp_110_64 
                    #      alloc i1 temp_111_64 
                    #      alloc i32 temp_112_64 
                    #      alloc i1 temp_113_64 
                    #      alloc i1 temp_114_64 
                    #      alloc i32 temp_115_64 
                    #      alloc i1 temp_116_64 
                    #      alloc i1 temp_117_64 
                    #      alloc i32 temp_118_64 
                    #      alloc i1 temp_119_64 
                    #      alloc i1 temp_120_64 
                    #      alloc i32 temp_121_64 
                    #      alloc i1 temp_122_64 
                    #      alloc i1 temp_123_64 
                    #      alloc i32 temp_124_64 
                    #      alloc i1 temp_125_64 
                    #      alloc i1 temp_126_64 
                    #      alloc i32 temp_127_64 
                    #      alloc i1 temp_128_64 
                    #      alloc i1 temp_129_64 
                    #      alloc i32 temp_130_64 
                    #      alloc i1 temp_131_64 
                    #      alloc i1 temp_132_64 
                    #      alloc i32 temp_133_64 
                    #      alloc i1 temp_134_64 
                    #      alloc i1 temp_135_64 
                    #      alloc i32 temp_136_64 
                    #      alloc i1 temp_137_64 
                    #      alloc i1 temp_138_64 
                    #      alloc i32 temp_139_64 
                    #      alloc i1 temp_140_64 
                    #      alloc i1 temp_141_64 
                    #      alloc i32 temp_142_64 
                    #      alloc i1 temp_143_64 
                    #      alloc i1 temp_144_64 
                    #      alloc i32 temp_145_64 
                    #      alloc i1 temp_146_64 
                    #      alloc i1 temp_147_64 
                    #      alloc i32 temp_148_64 
                    #      alloc i1 temp_149_64 
                    #      alloc i1 temp_150_64 
                    #      alloc i32 temp_151_64 
                    #      alloc i1 temp_152_64 
                    #      alloc i1 temp_153_64 
                    #      alloc i32 temp_154_64 
                    #      alloc i1 temp_155_64 
                    #      alloc i1 temp_156_64 
                    #      alloc i32 temp_157_63 
                    #      alloc i32 temp_158_69 
                    #      alloc i32 temp_159_69 
                    #      alloc i1 temp_160_69 
                    #      alloc i1 temp_161_69 
                    #      alloc i1 temp_162_69 
                    #      alloc i32 temp_163_51 
                    #      alloc i32 ans_51 
                    #      alloc i32 temp_164_74 
                    #      alloc i32 temp_165_74 
                    #      alloc i1 temp_166_74 
                    #      alloc i1 temp_167_74 
                    #      alloc i1 temp_168_74 
                    #      alloc i1 temp_169_74 
                    #      alloc i32 temp_170_74 
                    #      alloc i32 temp_171_74 
                    #      alloc i1 temp_172_74 
                    #      alloc i1 temp_173_74 
                    #      alloc i1 temp_174_74 
                    #      alloc i1 temp_175_74 
                    #      alloc i32 temp_176_51 
                    #      alloc i32 temp_177_51 
                    #      alloc i32 temp_178_79 
                    #      alloc i1 temp_179_79 
                    #      alloc i1 temp_180_79 
                    #      alloc i32 temp_181_79 
                    #      alloc i32 temp_182_79 
                    #      alloc i1 temp_183_79 
                    #      alloc i1 temp_184_79 
                    #      alloc i1 temp_185_79 
                    #      alloc i1 temp_186_79 
                    #      alloc i32 temp_187_79 
                    #      alloc i1 temp_188_79 
                    #      alloc i1 temp_189_79 
                    #      alloc i1 temp_190_79 
                    #      alloc i32 temp_191_79 
                    #      alloc i1 temp_192_79 
                    #      alloc i1 temp_193_79 
                    #      alloc i1 temp_194_79 
                    #      alloc i32 temp_195_51 
                    #      alloc i32 temp_196_51 
                    #      alloc i32 temp_197_84 
                    #      alloc i32 temp_198_84 
                    #      alloc i1 temp_199_84 
                    #      alloc i1 temp_200_84 
                    #      alloc i1 temp_201_84 
                    #      alloc i32 temp_202_84 
                    #      alloc i1 temp_203_84 
                    #      alloc i1 temp_204_84 
                    #      alloc i1 temp_205_84 
                    #      alloc i32 temp_206_84 
                    #      alloc i1 temp_207_84 
                    #      alloc i1 temp_208_84 
                    #      alloc i1 temp_209_84 
                    #      alloc i32 temp_210_84 
                    #      alloc i1 temp_211_84 
                    #      alloc i1 temp_212_84 
                    #      alloc i1 temp_213_84 
                    #      alloc i32 temp_214_84 
                    #      alloc i1 temp_215_84 
                    #      alloc i1 temp_216_84 
                    #      alloc i32 temp_217_84 
                    #      alloc i1 temp_218_84 
                    #      alloc i1 temp_219_84 
                    #      alloc i1 temp_220_84 
                    #      alloc i32 temp_221_51 
                    #      alloc i32 temp_222_51 
                    #      alloc i32 temp_223_89 
                    #      alloc i32 temp_224_89 
                    #      alloc i1 temp_225_89 
                    #      alloc i1 temp_226_89 
                    #      alloc i32 temp_227_89 
                    #      alloc i1 temp_228_89 
                    #      alloc i1 temp_229_89 
                    #      alloc i1 temp_230_89 
                    #      alloc i1 temp_231_89 
                    #      alloc i32 temp_232_89 
                    #      alloc i1 temp_233_89 
                    #      alloc i1 temp_234_89 
                    #      alloc i32 temp_235_89 
                    #      alloc i1 temp_236_89 
                    #      alloc i1 temp_237_89 
                    #      alloc i32 temp_238_89 
                    #      alloc i1 temp_239_89 
                    #      alloc i1 temp_240_89 
                    #      alloc i1 temp_241_89 
                    #      alloc i32 temp_242_89 
                    #      alloc i1 temp_243_89 
                    #      alloc i1 temp_244_89 
                    #      alloc i32 temp_245_89 
                    #      alloc i1 temp_246_89 
                    #      alloc i1 temp_247_89 
                    #      alloc i1 temp_248_89 
                    #      alloc i32 temp_249_51 
                    #      alloc i32 temp_250_51 
                    #      label L0_0: 
.L0_0:
                    #      i_51 = i32 0_0 
    li      a0, 0
                    #      jump label: while.head_54 
    j       .while.head_54
                    #      label while.head_54: 
.while.head_54:
                    #      new_var temp_36_53:i1 
                    #      temp_36_53 = icmp i32 Slt i_51, 20_0 
    li      a1, 20
    slt     a2,a0,a1
                    #      br i1 temp_36_53, label while.body_54, label while.exit_54 
    bnez    a2, .while.body_54
    j       .while.exit_54
                    #      label while.body_54: 
.while.body_54:
                    #      new_var temp_37_56:i32 
                    #      temp_37_56 =  Call i32 f_0(19_0, i_51) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,556(sp)
    li      a0, 19
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,548(sp)
                    #      new_var temp_38_56:i32 
                    #      temp_38_56 =  Call i32 f_0(18_0, i_51) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,548(sp)
    li      a0, 18
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,544(sp)
                    #      new_var temp_39_56:i1 
                    #      temp_39_56 = icmp i32 Ne temp_38_56, 0_0 
    li      a1, 0
    xor     a3,a0,a1
    snez    a3, a3
                    #      new_var temp_40_56:i1 
                    #      temp_39_56 = icmp i32 Ne temp_37_56, 0_0 
                    #found literal reg Some(a1) already exist with 0_0
                    #      new_var temp_41_56:i1 
                    #      temp_41_56 = And i1 temp_39_56, temp_40_56 
    and     a6,a3,a5
                    #      new_var temp_42_56:i32 
                    #      temp_42_56 =  Call i32 f_0(17_0, i_51) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,544(sp)
    li      a0, 17
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,536(sp)
                    #      new_var temp_43_56:i1 
                    #      temp_43_56 = icmp i32 Ne temp_42_56, 0_0 
    li      a1, 0
    xor     a7,a0,a1
    snez    a7, a7
                    #      new_var temp_44_56:i1 
                    #      temp_44_56 = And i1 temp_43_56, temp_41_56 
    and     s1,a7,a6
                    #      new_var temp_45_56:i32 
                    #      temp_45_56 =  Call i32 f_0(16_0, i_51) 
                    #saved register dumping to mem
    sb      s1,534(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,536(sp)
    li      a0, 16
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,528(sp)
                    #      new_var temp_46_56:i1 
                    #      temp_46_56 = icmp i32 Ne temp_45_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_47_56:i1 
                    #      temp_47_56 = And i1 temp_46_56, temp_44_56 
    and     s3,s1,s2
                    #      new_var temp_48_56:i32 
                    #      temp_48_56 =  Call i32 f_0(15_0, i_51) 
                    #saved register dumping to mem
    sb      s1,527(sp)
    sb      s2,534(sp)
    sb      s3,526(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,528(sp)
    li      a0, 15
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,520(sp)
                    #      new_var temp_49_56:i1 
                    #      temp_49_56 = icmp i32 Ne temp_48_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_50_56:i1 
                    #      temp_50_56 = And i1 temp_49_56, temp_47_56 
    and     s3,s1,s2
                    #      new_var temp_51_56:i32 
                    #      temp_51_56 =  Call i32 f_0(14_0, i_51) 
                    #saved register dumping to mem
    sb      s1,519(sp)
    sb      s2,526(sp)
    sb      s3,518(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,520(sp)
    li      a0, 14
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,512(sp)
                    #      new_var temp_52_56:i1 
                    #      temp_52_56 = icmp i32 Ne temp_51_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_53_56:i1 
                    #      temp_53_56 = And i1 temp_52_56, temp_50_56 
    and     s3,s1,s2
                    #      new_var temp_54_56:i32 
                    #      temp_54_56 =  Call i32 f_0(13_0, i_51) 
                    #saved register dumping to mem
    sb      s1,511(sp)
    sb      s2,518(sp)
    sb      s3,510(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,512(sp)
    li      a0, 13
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,504(sp)
                    #      new_var temp_55_56:i1 
                    #      temp_55_56 = icmp i32 Ne temp_54_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_56_56:i1 
                    #      temp_56_56 = And i1 temp_55_56, temp_53_56 
    and     s3,s1,s2
                    #      new_var temp_57_56:i32 
                    #      temp_57_56 =  Call i32 f_0(12_0, i_51) 
                    #saved register dumping to mem
    sb      s1,503(sp)
    sb      s2,510(sp)
    sb      s3,502(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,504(sp)
    li      a0, 12
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,496(sp)
                    #      new_var temp_58_56:i1 
                    #      temp_58_56 = icmp i32 Ne temp_57_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_59_56:i1 
                    #      temp_59_56 = And i1 temp_58_56, temp_56_56 
    and     s3,s1,s2
                    #      new_var temp_60_56:i32 
                    #      temp_60_56 =  Call i32 f_0(11_0, i_51) 
                    #saved register dumping to mem
    sb      s1,495(sp)
    sb      s2,502(sp)
    sb      s3,494(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,496(sp)
    li      a0, 11
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,488(sp)
                    #      new_var temp_61_56:i1 
                    #      temp_61_56 = icmp i32 Ne temp_60_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_62_56:i1 
                    #      temp_62_56 = And i1 temp_61_56, temp_59_56 
    and     s3,s1,s2
                    #      new_var temp_63_56:i32 
                    #      temp_63_56 =  Call i32 f_0(10_0, i_51) 
                    #saved register dumping to mem
    sb      s1,487(sp)
    sb      s2,494(sp)
    sb      s3,486(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,488(sp)
    li      a0, 10
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,480(sp)
                    #      new_var temp_64_56:i1 
                    #      temp_64_56 = icmp i32 Ne temp_63_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_65_56:i1 
                    #      temp_65_56 = And i1 temp_64_56, temp_62_56 
    and     s3,s1,s2
                    #      new_var temp_66_56:i32 
                    #      temp_66_56 =  Call i32 f_0(9_0, i_51) 
                    #saved register dumping to mem
    sb      s1,479(sp)
    sb      s2,486(sp)
    sb      s3,478(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,480(sp)
    li      a0, 9
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,472(sp)
                    #      new_var temp_67_56:i1 
                    #      temp_67_56 = icmp i32 Ne temp_66_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_68_56:i1 
                    #      temp_68_56 = And i1 temp_67_56, temp_65_56 
    and     s3,s1,s2
                    #      new_var temp_69_56:i32 
                    #      temp_69_56 =  Call i32 f_0(8_0, i_51) 
                    #saved register dumping to mem
    sb      s1,471(sp)
    sb      s2,478(sp)
    sb      s3,470(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,472(sp)
    li      a0, 8
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,464(sp)
                    #      new_var temp_70_56:i1 
                    #      temp_70_56 = icmp i32 Ne temp_69_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_71_56:i1 
                    #      temp_71_56 = And i1 temp_70_56, temp_68_56 
    and     s3,s1,s2
                    #      new_var temp_72_56:i32 
                    #      temp_72_56 =  Call i32 f_0(7_0, i_51) 
                    #saved register dumping to mem
    sb      s1,463(sp)
    sb      s2,470(sp)
    sb      s3,462(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,464(sp)
    li      a0, 7
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,456(sp)
                    #      new_var temp_73_56:i1 
                    #      temp_73_56 = icmp i32 Ne temp_72_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_74_56:i1 
                    #      temp_74_56 = And i1 temp_73_56, temp_71_56 
    and     s3,s1,s2
                    #      new_var temp_75_56:i32 
                    #      temp_75_56 =  Call i32 f_0(6_0, i_51) 
                    #saved register dumping to mem
    sb      s1,455(sp)
    sb      s2,462(sp)
    sb      s3,454(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,456(sp)
    li      a0, 6
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,448(sp)
                    #      new_var temp_76_56:i1 
                    #      temp_76_56 = icmp i32 Ne temp_75_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_77_56:i1 
                    #      temp_77_56 = And i1 temp_76_56, temp_74_56 
    and     s3,s1,s2
                    #      new_var temp_78_56:i32 
                    #      temp_78_56 =  Call i32 f_0(5_0, i_51) 
                    #saved register dumping to mem
    sb      s1,447(sp)
    sb      s2,454(sp)
    sb      s3,446(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,448(sp)
    li      a0, 5
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,440(sp)
                    #      new_var temp_79_56:i1 
                    #      temp_79_56 = icmp i32 Ne temp_78_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_80_56:i1 
                    #      temp_80_56 = And i1 temp_79_56, temp_77_56 
    and     s3,s1,s2
                    #      new_var temp_81_56:i32 
                    #      temp_81_56 =  Call i32 f_0(4_0, i_51) 
                    #saved register dumping to mem
    sb      s1,439(sp)
    sb      s2,446(sp)
    sb      s3,438(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,440(sp)
    li      a0, 4
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,432(sp)
                    #      new_var temp_82_56:i1 
                    #      temp_82_56 = icmp i32 Ne temp_81_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_83_56:i1 
                    #      temp_83_56 = And i1 temp_82_56, temp_80_56 
    and     s3,s1,s2
                    #      new_var temp_84_56:i32 
                    #      temp_84_56 =  Call i32 f_0(3_0, i_51) 
                    #saved register dumping to mem
    sb      s1,431(sp)
    sb      s2,438(sp)
    sb      s3,430(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,432(sp)
    li      a0, 3
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,424(sp)
                    #      new_var temp_85_56:i1 
                    #      temp_85_56 = icmp i32 Ne temp_84_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_86_56:i1 
                    #      temp_86_56 = And i1 temp_85_56, temp_83_56 
    and     s3,s1,s2
                    #      new_var temp_87_56:i32 
                    #      temp_87_56 =  Call i32 f_0(2_0, i_51) 
                    #saved register dumping to mem
    sb      s1,423(sp)
    sb      s2,430(sp)
    sb      s3,422(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,424(sp)
    li      a0, 2
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,416(sp)
                    #      new_var temp_88_56:i1 
                    #      temp_88_56 = icmp i32 Ne temp_87_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_89_56:i1 
                    #      temp_89_56 = And i1 temp_88_56, temp_86_56 
    and     s3,s1,s2
                    #      new_var temp_90_56:i32 
                    #      temp_90_56 =  Call i32 f_0(1_0, i_51) 
                    #saved register dumping to mem
    sb      s1,415(sp)
    sb      s2,422(sp)
    sb      s3,414(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,416(sp)
    li      a0, 1
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,408(sp)
                    #      new_var temp_91_56:i1 
                    #      temp_91_56 = icmp i32 Ne temp_90_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_92_56:i1 
                    #      temp_92_56 = And i1 temp_91_56, temp_89_56 
    and     s3,s1,s2
                    #      new_var temp_93_56:i32 
                    #      temp_93_56 =  Call i32 f_0(0_0, i_51) 
                    #saved register dumping to mem
    sb      s1,407(sp)
    sb      s2,414(sp)
    sb      s3,406(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,408(sp)
    li      a0, 0
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,400(sp)
                    #      new_var temp_94_56:i1 
                    #      temp_94_56 = icmp i32 Ne temp_93_56, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_95_56:i1 
                    #      temp_95_56 = And i1 temp_94_56, temp_92_56 
    and     s3,s1,s2
                    #      br i1 temp_95_56, label branch_true_57, label branch_false_57 
    bnez    s3, .branch_true_57
    j       .branch_false_57
                    #      label branch_true_57: 
.branch_true_57:
                    #      jump label: branch_false_57 
    j       .branch_false_57
                    #      label branch_false_57: 
.branch_false_57:
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_96_55:i32 
                    #      temp_96_55 = Add i32 i_51, 1_0 
    li      s4, 1
    add     s5,a1,s4
                    #      i_51 = i32 temp_96_55 
    mv      a1, s5
                    #      jump label: while.head_54 
    sw      a4,548(sp)
    sb      a7,535(sp)
    sb      a6,541(sp)
    sw      a1,556(sp)
    sb      a2,555(sp)
    sw      a0,400(sp)
    lw      a0,556(sp)
    sw      s5,392(sp)
    sb      s3,398(sp)
    sb      s1,399(sp)
    sb      a5,542(sp)
    sb      a3,543(sp)
    sb      s2,406(sp)
    j       .while.head_54
                    #      label while.exit_54: 
.while.exit_54:
                    #      i_51 = i32 0_0 
                    #      jump label: while.head_62 
    j       .while.head_62
                    #      label while.head_62: 
.while.head_62:
                    #      new_var temp_97_61:i1 
                    #      temp_97_61 = icmp i32 Slt i_51, 20_0 
    li      a1, 20
    slt     a3,a0,a1
                    #      br i1 temp_97_61, label while.body_62, label while.exit_62 
    bnez    a3, .while.body_62
    j       .while.exit_62
                    #      label while.body_62: 
.while.body_62:
                    #      new_var temp_98_64:i32 
                    #      temp_98_64 =  Call i32 g_0(19_0, i_51) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,556(sp)
    li      a0, 19
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,384(sp)
                    #      new_var temp_99_64:i32 
                    #      temp_99_64 =  Call i32 g_0(18_0, i_51) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,384(sp)
    li      a0, 18
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,380(sp)
                    #      new_var temp_100_64:i1 
                    #      temp_100_64 = icmp i32 Ne temp_99_64, 0_0 
    li      a1, 0
    xor     a4,a0,a1
    snez    a4, a4
                    #      new_var temp_101_64:i1 
                    #      temp_100_64 = icmp i32 Ne temp_98_64, 0_0 
                    #found literal reg Some(a1) already exist with 0_0
                    #      new_var temp_102_64:i1 
                    #      temp_102_64 = Or i1 temp_100_64, temp_101_64 
                    #      new_var temp_103_64:i32 
                    #      temp_103_64 =  Call i32 g_0(17_0, i_51) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,380(sp)
    li      a0, 17
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,372(sp)
                    #      new_var temp_104_64:i1 
                    #      temp_104_64 = icmp i32 Ne temp_103_64, 0_0 
    li      a1, 0
    xor     a7,a0,a1
    snez    a7, a7
                    #      new_var temp_105_64:i1 
                    #      temp_105_64 = Or i1 temp_104_64, temp_102_64 
                    #      new_var temp_106_64:i32 
                    #      temp_106_64 =  Call i32 g_0(16_0, i_51) 
                    #saved register dumping to mem
    sb      s1,377(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,372(sp)
    li      a0, 16
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,364(sp)
                    #      new_var temp_107_64:i1 
                    #      temp_107_64 = icmp i32 Ne temp_106_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_108_64:i1 
                    #      temp_108_64 = Or i1 temp_107_64, temp_105_64 
                    #      new_var temp_109_64:i32 
                    #      temp_109_64 =  Call i32 g_0(15_0, i_51) 
                    #saved register dumping to mem
    sb      s1,363(sp)
    sb      s2,370(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,364(sp)
    li      a0, 15
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,356(sp)
                    #      new_var temp_110_64:i1 
                    #      temp_110_64 = icmp i32 Ne temp_109_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_111_64:i1 
                    #      temp_111_64 = Or i1 temp_110_64, temp_108_64 
                    #      new_var temp_112_64:i32 
                    #      temp_112_64 =  Call i32 g_0(14_0, i_51) 
                    #saved register dumping to mem
    sb      s1,355(sp)
    sb      s2,362(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,356(sp)
    li      a0, 14
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,348(sp)
                    #      new_var temp_113_64:i1 
                    #      temp_113_64 = icmp i32 Ne temp_112_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_114_64:i1 
                    #      temp_114_64 = Or i1 temp_113_64, temp_111_64 
                    #      new_var temp_115_64:i32 
                    #      temp_115_64 =  Call i32 g_0(13_0, i_51) 
                    #saved register dumping to mem
    sb      s1,347(sp)
    sb      s2,354(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,348(sp)
    li      a0, 13
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,340(sp)
                    #      new_var temp_116_64:i1 
                    #      temp_116_64 = icmp i32 Ne temp_115_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_117_64:i1 
                    #      temp_117_64 = Or i1 temp_116_64, temp_114_64 
                    #      new_var temp_118_64:i32 
                    #      temp_118_64 =  Call i32 g_0(12_0, i_51) 
                    #saved register dumping to mem
    sb      s1,339(sp)
    sb      s2,346(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,340(sp)
    li      a0, 12
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,332(sp)
                    #      new_var temp_119_64:i1 
                    #      temp_119_64 = icmp i32 Ne temp_118_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_120_64:i1 
                    #      temp_120_64 = Or i1 temp_119_64, temp_117_64 
                    #      new_var temp_121_64:i32 
                    #      temp_121_64 =  Call i32 g_0(11_0, i_51) 
                    #saved register dumping to mem
    sb      s1,331(sp)
    sb      s2,338(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,332(sp)
    li      a0, 11
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,324(sp)
                    #      new_var temp_122_64:i1 
                    #      temp_122_64 = icmp i32 Ne temp_121_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_123_64:i1 
                    #      temp_123_64 = Or i1 temp_122_64, temp_120_64 
                    #      new_var temp_124_64:i32 
                    #      temp_124_64 =  Call i32 g_0(10_0, i_51) 
                    #saved register dumping to mem
    sb      s1,323(sp)
    sb      s2,330(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,324(sp)
    li      a0, 10
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,316(sp)
                    #      new_var temp_125_64:i1 
                    #      temp_125_64 = icmp i32 Ne temp_124_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_126_64:i1 
                    #      temp_126_64 = Or i1 temp_125_64, temp_123_64 
                    #      new_var temp_127_64:i32 
                    #      temp_127_64 =  Call i32 g_0(9_0, i_51) 
                    #saved register dumping to mem
    sb      s1,315(sp)
    sb      s2,322(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,316(sp)
    li      a0, 9
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,308(sp)
                    #      new_var temp_128_64:i1 
                    #      temp_128_64 = icmp i32 Ne temp_127_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_129_64:i1 
                    #      temp_129_64 = Or i1 temp_128_64, temp_126_64 
                    #      new_var temp_130_64:i32 
                    #      temp_130_64 =  Call i32 g_0(8_0, i_51) 
                    #saved register dumping to mem
    sb      s1,307(sp)
    sb      s2,314(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,308(sp)
    li      a0, 8
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,300(sp)
                    #      new_var temp_131_64:i1 
                    #      temp_131_64 = icmp i32 Ne temp_130_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_132_64:i1 
                    #      temp_132_64 = Or i1 temp_131_64, temp_129_64 
                    #      new_var temp_133_64:i32 
                    #      temp_133_64 =  Call i32 g_0(7_0, i_51) 
                    #saved register dumping to mem
    sb      s1,299(sp)
    sb      s2,306(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,300(sp)
    li      a0, 7
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,292(sp)
                    #      new_var temp_134_64:i1 
                    #      temp_134_64 = icmp i32 Ne temp_133_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_135_64:i1 
                    #      temp_135_64 = Or i1 temp_134_64, temp_132_64 
                    #      new_var temp_136_64:i32 
                    #      temp_136_64 =  Call i32 g_0(6_0, i_51) 
                    #saved register dumping to mem
    sb      s1,291(sp)
    sb      s2,298(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,292(sp)
    li      a0, 6
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,284(sp)
                    #      new_var temp_137_64:i1 
                    #      temp_137_64 = icmp i32 Ne temp_136_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_138_64:i1 
                    #      temp_138_64 = Or i1 temp_137_64, temp_135_64 
                    #      new_var temp_139_64:i32 
                    #      temp_139_64 =  Call i32 g_0(5_0, i_51) 
                    #saved register dumping to mem
    sb      s1,283(sp)
    sb      s2,290(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,284(sp)
    li      a0, 5
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,276(sp)
                    #      new_var temp_140_64:i1 
                    #      temp_140_64 = icmp i32 Ne temp_139_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_141_64:i1 
                    #      temp_141_64 = Or i1 temp_140_64, temp_138_64 
                    #      new_var temp_142_64:i32 
                    #      temp_142_64 =  Call i32 g_0(4_0, i_51) 
                    #saved register dumping to mem
    sb      s1,275(sp)
    sb      s2,282(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,276(sp)
    li      a0, 4
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,268(sp)
                    #      new_var temp_143_64:i1 
                    #      temp_143_64 = icmp i32 Ne temp_142_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_144_64:i1 
                    #      temp_144_64 = Or i1 temp_143_64, temp_141_64 
                    #      new_var temp_145_64:i32 
                    #      temp_145_64 =  Call i32 g_0(3_0, i_51) 
                    #saved register dumping to mem
    sb      s1,267(sp)
    sb      s2,274(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,268(sp)
    li      a0, 3
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,260(sp)
                    #      new_var temp_146_64:i1 
                    #      temp_146_64 = icmp i32 Ne temp_145_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_147_64:i1 
                    #      temp_147_64 = Or i1 temp_146_64, temp_144_64 
                    #      new_var temp_148_64:i32 
                    #      temp_148_64 =  Call i32 g_0(2_0, i_51) 
                    #saved register dumping to mem
    sb      s1,259(sp)
    sb      s2,266(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,260(sp)
    li      a0, 2
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,252(sp)
                    #      new_var temp_149_64:i1 
                    #      temp_149_64 = icmp i32 Ne temp_148_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_150_64:i1 
                    #      temp_150_64 = Or i1 temp_149_64, temp_147_64 
                    #      new_var temp_151_64:i32 
                    #      temp_151_64 =  Call i32 g_0(1_0, i_51) 
                    #saved register dumping to mem
    sb      s1,251(sp)
    sb      s2,258(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,252(sp)
    li      a0, 1
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,244(sp)
                    #      new_var temp_152_64:i1 
                    #      temp_152_64 = icmp i32 Ne temp_151_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_153_64:i1 
                    #      temp_153_64 = Or i1 temp_152_64, temp_150_64 
                    #      new_var temp_154_64:i32 
                    #      temp_154_64 =  Call i32 g_0(0_0, i_51) 
                    #saved register dumping to mem
    sb      s1,243(sp)
    sb      s2,250(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,244(sp)
    li      a0, 0
    lw      a1,556(sp)
                    #arg load ended
    call    g
    sw      a0,236(sp)
                    #      new_var temp_155_64:i1 
                    #      temp_155_64 = icmp i32 Ne temp_154_64, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_156_64:i1 
                    #      temp_156_64 = Or i1 temp_155_64, temp_153_64 
                    #      br i1 temp_156_64, label branch_true_65, label branch_false_65 
    bnez    s3, .branch_true_65
    j       .branch_false_65
                    #      label branch_true_65: 
.branch_true_65:
                    #      jump label: branch_false_65 
    j       .branch_false_65
                    #      label branch_false_65: 
.branch_false_65:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_157_63:i32 
                    #      temp_157_63 = Add i32 i_51, 1_0 
    li      s4, 1
    add     s5,a1,s4
                    #      i_51 = i32 temp_157_63 
    mv      a1, s5
                    #      jump label: while.head_62 
    sb      a4,379(sp)
    sb      a7,371(sp)
    sb      a6,378(sp)
    sw      a1,556(sp)
    sw      a0,236(sp)
    lw      a0,556(sp)
    sw      s5,228(sp)
    sb      s3,234(sp)
    sb      s1,235(sp)
    sw      a5,384(sp)
    sb      a3,391(sp)
    sb      s2,242(sp)
    j       .while.head_62
                    #      label while.exit_62: 
.while.exit_62:
                    #      i_51 = i32 1_0 
                    #      jump label: while.head_70 
    j       .while.head_70
                    #      label while.head_70: 
.while.head_70:
                    #      new_var temp_158_69:i32 
                    #      temp_158_69 = Sub i32 1_0, i_51 
    li      a1, 1
    sub     a4,a1,a0
                    #      new_var temp_159_69:i32 
                    #      temp_159_69 =  Call i32 f_0(temp_158_69, i_51) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,556(sp)
    mv      a0, a4
    lw      a1,556(sp)
                    #arg load ended
    call    f
    sw      a0,220(sp)
                    #      new_var temp_160_69:i1 
                    #      temp_160_69 = icmp i32 Slt i_51, 20_0 
    li      a5, 20
    slt     a6,a1,a5
                    #      new_var temp_161_69:i1 
                    #      temp_161_69 = icmp i32 Ne temp_159_69, 0_0 
    li      a7, 0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_162_69:i1 
                    #      temp_162_69 = And i1 temp_160_69, temp_161_69 
    and     s2,a6,s1
                    #      br i1 temp_162_69, label while.body_70, label while.exit_70 
    bnez    s2, .while.body_70
    j       .while.exit_70
                    #      label while.body_70: 
.while.body_70:
                    #      new_var temp_163_51:i32 
                    #      temp_163_51 = Add i32 i_51, 1_0 
    li      a5, 1
    add     a7,a1,a5
                    #      i_51 = i32 temp_163_51 
    mv      a1, a7
                    #      jump label: while.head_70 
    sw      a4,224(sp)
    sw      a7,212(sp)
    sb      a6,219(sp)
    sw      a1,556(sp)
    sw      a0,220(sp)
    lw      a0,556(sp)
    sb      s1,218(sp)
    sb      s2,217(sp)
    j       .while.head_70
                    #      label while.exit_70: 
.while.exit_70:
                    #      new_var ans_51:i32 
                    #      ans_51 = i32 0_0 
    li      a5, 0
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_164_74:i32 
                    #      temp_164_74 =  Call i32 h_0(3_0) 
                    #saved register dumping to mem
    sb      s1,218(sp)
    sb      s2,217(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,220(sp)
    li      a0, 3
                    #arg load ended
    call    h
    sw      a0,204(sp)
                    #      new_var temp_165_74:i32 
                    #      temp_165_74 =  Call i32 h_0(2_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,204(sp)
    li      a0, 2
                    #arg load ended
    call    h
    sw      a0,200(sp)
                    #      new_var temp_166_74:i1 
                    #      temp_166_74 = icmp i1 Ne temp_165_74, 0_0 
    li      a7, 0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_167_74:i1 
                    #      temp_167_74 = xor i1 temp_166_74, true 
    seqz    s2, s1
                    #      new_var temp_168_74:i1 
                    #      temp_168_74 = icmp i32 Ne temp_164_74, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s4,s3,a7
    snez    s4, s4
                    #      new_var temp_169_74:i1 
                    #      temp_169_74 = Or i1 temp_167_74, temp_168_74 
                    #      new_var temp_170_74:i32 
                    #      temp_170_74 =  Call i32 h_0(1_0) 
                    #saved register dumping to mem
    sb      s1,199(sp)
    sb      s2,198(sp)
    sw      s3,204(sp)
    sb      s4,197(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,200(sp)
    li      a0, 1
                    #arg load ended
    call    h
    sw      a0,192(sp)
                    #      new_var temp_171_74:i32 
                    #      temp_171_74 =  Call i32 h_0(0_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,192(sp)
    li      a0, 0
                    #arg load ended
    call    h
    sw      a0,188(sp)
                    #      new_var temp_172_74:i1 
                    #      temp_172_74 = icmp i32 Ne temp_171_74, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_173_74:i1 
                    #      temp_172_74 = icmp i32 Ne temp_170_74, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
                    #      new_var temp_174_74:i1 
                    #      temp_174_74 = And i1 temp_172_74, temp_173_74 
    and     s4,s1,s3
                    #      new_var temp_175_74:i1 
                    #      temp_175_74 = Or i1 temp_174_74, temp_169_74 
                    #      br i1 temp_175_74, label branch_true_75, label branch_false_75 
    bnez    s6, .branch_true_75
    j       .branch_false_75
                    #      label branch_true_75: 
.branch_true_75:
                    #      ans_51 = i32 1_0 
                    #      jump label: branch_false_75 
    j       .branch_false_75
                    #      label branch_false_75: 
.branch_false_75:
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_176_51:i32 
                    #      temp_176_51 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a7, sum
                    #occupy reg a7 with *sum_0
    lw      s7,0(a7)
                    #      new_var temp_177_51:i32 
                    #      temp_177_51 = Add i32 temp_176_51, ans_51 
    add     s8,s7,a5
                    #      ans_51 = i32 0_0 
                    #      jump label: L5_0 
    j       .L5_0
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_178_79:i32 
                    #      temp_178_79 =  Call i32 h_0(8_0) 
                    #saved register dumping to mem
    sb      s1,187(sp)
    sw      s2,192(sp)
    sb      s3,186(sp)
    sb      s4,185(sp)
    sb      s5,196(sp)
    sb      s6,184(sp)
    sw      s7,180(sp)
    sw      s8,176(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,188(sp)
    li      a0, 8
                    #arg load ended
    call    h
    sw      a0,172(sp)
                    #      new_var temp_179_79:i1 
                    #      temp_179_79 = icmp i1 Ne temp_178_79, 0_0 
    li      a7, 0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_180_79:i1 
                    #      temp_180_79 = xor i1 temp_179_79, true 
    seqz    s2, s1
                    #      new_var temp_181_79:i32 
                    #      temp_181_79 =  Call i32 h_0(7_0) 
                    #saved register dumping to mem
    sb      s1,171(sp)
    sb      s2,170(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,172(sp)
    li      a0, 7
                    #arg load ended
    call    h
    sw      a0,164(sp)
                    #      new_var temp_182_79:i32 
                    #      temp_182_79 =  Call i32 h_0(6_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,164(sp)
    li      a0, 6
                    #arg load ended
    call    h
    sw      a0,160(sp)
                    #      new_var temp_183_79:i1 
                    #      temp_183_79 = icmp i1 Ne temp_182_79, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_184_79:i1 
                    #      temp_184_79 = xor i1 temp_183_79, true 
    seqz    s2, s1
                    #      new_var temp_185_79:i1 
                    #      temp_185_79 = icmp i32 Ne temp_181_79, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s4,s3,a7
    snez    s4, s4
                    #      new_var temp_186_79:i1 
                    #      temp_186_79 = And i1 temp_184_79, temp_185_79 
    and     s5,s2,s4
                    #      new_var temp_187_79:i32 
                    #      temp_187_79 =  Call i32 h_0(5_0) 
                    #saved register dumping to mem
    sb      s1,159(sp)
    sb      s2,158(sp)
    sw      s3,164(sp)
    sb      s4,157(sp)
    sb      s5,156(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,160(sp)
    li      a0, 5
                    #arg load ended
    call    h
    sw      a0,152(sp)
                    #      new_var temp_188_79:i1 
                    #      temp_188_79 = icmp i32 Ne temp_187_79, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_189_79:i1 
                    #      temp_189_79 = And i1 temp_188_79, temp_186_79 
    and     s3,s1,s2
                    #      new_var temp_190_79:i1 
                    #      temp_190_79 = Or i1 temp_189_79, temp_180_79 
                    #      new_var temp_191_79:i32 
                    #      temp_191_79 =  Call i32 h_0(4_0) 
                    #saved register dumping to mem
    sb      s1,151(sp)
    sb      s2,156(sp)
    sb      s3,150(sp)
    sb      s4,170(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,152(sp)
    li      a0, 4
                    #arg load ended
    call    h
    sw      a0,144(sp)
                    #      new_var temp_192_79:i1 
                    #      temp_192_79 = icmp i1 Ne temp_191_79, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_193_79:i1 
                    #      temp_193_79 = xor i1 temp_192_79, true 
    seqz    s2, s1
                    #      new_var temp_194_79:i1 
                    #      temp_194_79 = Or i1 temp_193_79, temp_190_79 
                    #      br i1 temp_194_79, label branch_true_80, label branch_false_80 
    bnez    s4, .branch_true_80
    j       .branch_false_80
                    #      label branch_true_80: 
.branch_true_80:
                    #      ans_51 = i32 1_0 
                    #      jump label: branch_false_80 
    j       .branch_false_80
                    #      label branch_false_80: 
.branch_false_80:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_195_51:i32 
                    #      temp_195_51 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a7, sum
                    #occupy reg a7 with *sum_0
    lw      s5,0(a7)
                    #      new_var temp_196_51:i32 
                    #      temp_196_51 = Mul i32 temp_195_51, ans_51 
    mul     s6,s5,a5
                    #      ans_51 = i32 0_0 
                    #      jump label: L7_0 
    j       .L7_0
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_197_84:i32 
                    #      temp_197_84 =  Call i32 h_0(15_0) 
                    #saved register dumping to mem
    sb      s1,143(sp)
    sb      s2,142(sp)
    sb      s3,149(sp)
    sb      s4,141(sp)
    sw      s5,136(sp)
    sw      s6,132(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,144(sp)
    li      a0, 15
                    #arg load ended
    call    h
    sw      a0,128(sp)
                    #      new_var temp_198_84:i32 
                    #      temp_198_84 =  Call i32 h_0(14_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,128(sp)
    li      a0, 14
                    #arg load ended
    call    h
    sw      a0,124(sp)
                    #      new_var temp_199_84:i1 
                    #      temp_199_84 = icmp i32 Ne temp_198_84, 0_0 
    li      a7, 0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_200_84:i1 
                    #      temp_199_84 = icmp i32 Ne temp_197_84, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
                    #      new_var temp_201_84:i1 
                    #      temp_201_84 = And i1 temp_199_84, temp_200_84 
    and     s4,s1,s3
                    #      new_var temp_202_84:i32 
                    #      temp_202_84 =  Call i32 h_0(13_0) 
                    #saved register dumping to mem
    sb      s1,123(sp)
    sw      s2,128(sp)
    sb      s3,122(sp)
    sb      s4,121(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,124(sp)
    li      a0, 13
                    #arg load ended
    call    h
    sw      a0,116(sp)
                    #      new_var temp_203_84:i1 
                    #      temp_203_84 = icmp i1 Ne temp_202_84, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_204_84:i1 
                    #      temp_204_84 = xor i1 temp_203_84, true 
    seqz    s2, s1
                    #      new_var temp_205_84:i1 
                    #      temp_205_84 = Or i1 temp_204_84, temp_201_84 
                    #      new_var temp_206_84:i32 
                    #      temp_206_84 =  Call i32 h_0(12_0) 
                    #saved register dumping to mem
    sb      s1,115(sp)
    sb      s2,114(sp)
    sb      s3,121(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,116(sp)
    li      a0, 12
                    #arg load ended
    call    h
    sw      a0,108(sp)
                    #      new_var temp_207_84:i1 
                    #      temp_207_84 = icmp i1 Ne temp_206_84, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_208_84:i1 
                    #      temp_208_84 = xor i1 temp_207_84, true 
    seqz    s2, s1
                    #      new_var temp_209_84:i1 
                    #      temp_209_84 = Or i1 temp_208_84, temp_205_84 
                    #      new_var temp_210_84:i32 
                    #      temp_210_84 =  Call i32 h_0(11_0) 
                    #saved register dumping to mem
    sb      s1,107(sp)
    sb      s2,106(sp)
    sb      s3,113(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,108(sp)
    li      a0, 11
                    #arg load ended
    call    h
    sw      a0,100(sp)
                    #      new_var temp_211_84:i1 
                    #      temp_211_84 = icmp i1 Ne temp_210_84, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_212_84:i1 
                    #      temp_212_84 = xor i1 temp_211_84, true 
    seqz    s2, s1
                    #      new_var temp_213_84:i1 
                    #      temp_213_84 = Or i1 temp_212_84, temp_209_84 
                    #      new_var temp_214_84:i32 
                    #      temp_214_84 =  Call i32 h_0(10_0) 
                    #saved register dumping to mem
    sb      s1,99(sp)
    sb      s2,98(sp)
    sb      s3,105(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,100(sp)
    li      a0, 10
                    #arg load ended
    call    h
    sw      a0,92(sp)
                    #      new_var temp_215_84:i1 
                    #      temp_215_84 = icmp i1 Ne temp_214_84, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_216_84:i1 
                    #      temp_216_84 = xor i1 temp_215_84, true 
    seqz    s2, s1
                    #      new_var temp_217_84:i32 
                    #      temp_217_84 =  Call i32 h_0(9_0) 
                    #saved register dumping to mem
    sb      s1,91(sp)
    sb      s2,90(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,92(sp)
    li      a0, 9
                    #arg load ended
    call    h
    sw      a0,84(sp)
                    #      new_var temp_218_84:i1 
                    #      temp_218_84 = icmp i32 Ne temp_217_84, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_219_84:i1 
                    #      temp_219_84 = And i1 temp_218_84, temp_216_84 
    and     s3,s1,s2
                    #      new_var temp_220_84:i1 
                    #      temp_220_84 = Or i1 temp_219_84, temp_213_84 
                    #      br i1 temp_220_84, label branch_true_85, label branch_false_85 
    bnez    s5, .branch_true_85
    j       .branch_false_85
                    #      label branch_true_85: 
.branch_true_85:
                    #      ans_51 = i32 1_0 
                    #      jump label: branch_false_85 
    j       .branch_false_85
                    #      label branch_false_85: 
.branch_false_85:
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_221_51:i32 
                    #      temp_221_51 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a7, sum
                    #occupy reg a7 with *sum_0
    lw      s6,0(a7)
                    #      new_var temp_222_51:i32 
                    #      temp_222_51 = Sub i32 temp_221_51, ans_51 
    sub     s7,s6,a5
                    #      ans_51 = i32 0_0 
                    #      jump label: L9_0 
    j       .L9_0
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_223_89:i32 
                    #      temp_223_89 =  Call i32 h_0(8_0) 
                    #saved register dumping to mem
    sb      s1,83(sp)
    sb      s2,90(sp)
    sb      s3,82(sp)
    sb      s4,97(sp)
    sb      s5,81(sp)
    sw      s6,76(sp)
    sw      s7,72(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,84(sp)
    li      a0, 8
                    #arg load ended
    call    h
    sw      a0,68(sp)
                    #      new_var temp_224_89:i32 
                    #      temp_224_89 =  Call i32 h_0(7_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,68(sp)
    li      a0, 7
                    #arg load ended
    call    h
    sw      a0,64(sp)
                    #      new_var temp_225_89:i1 
                    #      temp_225_89 = icmp i1 Ne temp_224_89, 0_0 
    li      a7, 0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_226_89:i1 
                    #      temp_226_89 = xor i1 temp_225_89, true 
    seqz    s2, s1
                    #      new_var temp_227_89:i32 
                    #      temp_227_89 =  Call i32 h_0(6_0) 
                    #saved register dumping to mem
    sb      s1,63(sp)
    sb      s2,62(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,64(sp)
    li      a0, 6
                    #arg load ended
    call    h
    sw      a0,56(sp)
                    #      new_var temp_228_89:i1 
                    #      temp_228_89 = icmp i32 Ne temp_227_89, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_229_89:i1 
                    #      temp_229_89 = And i1 temp_228_89, temp_226_89 
    and     s3,s1,s2
                    #      new_var temp_230_89:i1 
                    #      temp_230_89 = icmp i32 Ne temp_223_89, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s5,s4,a7
    snez    s5, s5
                    #      new_var temp_231_89:i1 
                    #      temp_231_89 = Or i1 temp_229_89, temp_230_89 
                    #      new_var temp_232_89:i32 
                    #      temp_232_89 =  Call i32 h_0(5_0) 
                    #saved register dumping to mem
    sb      s1,55(sp)
    sb      s2,62(sp)
    sb      s3,54(sp)
    sw      s4,68(sp)
    sb      s5,53(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,56(sp)
    li      a0, 5
                    #arg load ended
    call    h
    sw      a0,48(sp)
                    #      new_var temp_233_89:i1 
                    #      temp_233_89 = icmp i32 Ne temp_232_89, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_234_89:i1 
                    #      temp_234_89 = Or i1 temp_233_89, temp_231_89 
                    #      new_var temp_235_89:i32 
                    #      temp_235_89 =  Call i32 h_0(4_0) 
                    #saved register dumping to mem
    sb      s1,47(sp)
    sb      s2,52(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,48(sp)
    li      a0, 4
                    #arg load ended
    call    h
    sw      a0,40(sp)
                    #      new_var temp_236_89:i1 
                    #      temp_236_89 = icmp i1 Ne temp_235_89, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_237_89:i1 
                    #      temp_237_89 = xor i1 temp_236_89, true 
    seqz    s2, s1
                    #      new_var temp_238_89:i32 
                    #      temp_238_89 =  Call i32 h_0(3_0) 
                    #saved register dumping to mem
    sb      s1,39(sp)
    sb      s2,38(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,40(sp)
    li      a0, 3
                    #arg load ended
    call    h
    sw      a0,32(sp)
                    #      new_var temp_239_89:i1 
                    #      temp_239_89 = icmp i1 Ne temp_238_89, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_240_89:i1 
                    #      temp_240_89 = xor i1 temp_239_89, true 
    seqz    s2, s1
                    #      new_var temp_241_89:i1 
                    #      temp_241_89 = And i1 temp_240_89, temp_237_89 
    and     s4,s2,s3
                    #      new_var temp_242_89:i32 
                    #      temp_242_89 =  Call i32 h_0(2_0) 
                    #saved register dumping to mem
    sb      s1,31(sp)
    sb      s2,30(sp)
    sb      s3,38(sp)
    sb      s4,29(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,32(sp)
    li      a0, 2
                    #arg load ended
    call    h
    sw      a0,24(sp)
                    #      new_var temp_243_89:i1 
                    #      temp_243_89 = icmp i32 Ne temp_242_89, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_244_89:i1 
                    #      temp_244_89 = And i1 temp_243_89, temp_241_89 
    and     s3,s1,s2
                    #      new_var temp_245_89:i32 
                    #      temp_245_89 =  Call i32 h_0(0_0) 
                    #saved register dumping to mem
    sb      s1,23(sp)
    sb      s2,29(sp)
    sb      s3,22(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,24(sp)
    li      a0, 0
                    #arg load ended
    call    h
    sw      a0,16(sp)
                    #      new_var temp_246_89:i1 
                    #      temp_246_89 = icmp i32 Ne temp_245_89, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    xor     s1,a0,a7
    snez    s1, s1
                    #      new_var temp_247_89:i1 
                    #      temp_247_89 = And i1 temp_246_89, temp_244_89 
    and     s3,s1,s2
                    #      new_var temp_248_89:i1 
                    #      temp_248_89 = Or i1 temp_247_89, temp_234_89 
                    #      br i1 temp_248_89, label branch_true_90, label branch_false_90 
    bnez    s5, .branch_true_90
    j       .branch_false_90
                    #      label branch_true_90: 
.branch_true_90:
                    #      ans_51 = i32 1_0 
                    #      jump label: branch_false_90 
    j       .branch_false_90
                    #      label branch_false_90: 
.branch_false_90:
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_249_51:i32 
                    #      temp_249_51 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a7, sum
                    #occupy reg a7 with *sum_0
    lw      s6,0(a7)
                    #      new_var temp_250_51:i32 
                    #      temp_250_51 = Add i32 temp_249_51, ans_51 
    add     s7,s6,a5
                    #       Call void putint_0(temp_250_51) 
                    #saved register dumping to mem
    sb      s1,15(sp)
    sb      s2,22(sp)
    sb      s3,14(sp)
    sb      s4,46(sp)
    sb      s5,13(sp)
    sw      s6,8(sp)
    sw      s7,4(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    lw      a0,4(sp)
                    #arg load ended
    call    putint
                    #      ret 0_0 
    ld      ra,568(sp)
    ld      s0,560(sp)
    li      a0, 0
    addi    sp,sp,576
    ret
.section        .data
    .align 4
    .globl array
                    #      global Array:i32:[Some(20_0)] array_0 
    .type array,@object
array:
    .zero 80
    .align 4
    .globl sum
                    #      global i32 sum_0 
    .type sum,@object
sum:
    .word 0
