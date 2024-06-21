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
                    #      Define func_0 [a_48, b_48] -> func_ret_0 
    .globl func
    .type func,@function
func:
                    #mem layout:|ra_func:8|s0_func:8|a:4|b:4|i:4|temp_0:4|c1:4|c2:4|c3:4|c4:4|d1:4|d2:4|d3:4|d4:4|e1:4|e2:4|e3:4|e4:4|f1:4|f2:4|f3:4|f4:4|g1:4|g2:4|g3:4|g4:4|h1:4|h2:4|h3:4|h4:4|i1:4|i2:4|i3:4|i4:4|j1:4|j2:4|j3:4|j4:4|k1:4|k2:4|k3:4|k4:4|temp_1:4|temp_2:4|temp_3:4|temp_4:4|temp_5:4|temp_6:4|temp_7:4|temp_8:4|temp_9:4|temp_10:4|temp_11:4|temp_12:4|temp_13:4|temp_14:4|temp_15:4|temp_16:4|temp_17:4|temp_18:4|temp_19:4|temp_20:4|temp_21:4|temp_22:4|temp_23:4|temp_24:4|temp_25:4|temp_26:4|temp_27:4|temp_28:4|temp_29:4|temp_30:4|temp_31:4|temp_32:4|temp_33:4|temp_34:4|temp_35:4|temp_36:4|temp_37:4|temp_38:4|temp_39:4|temp_40:4|temp_41:4|temp_42:4|temp_43:4|temp_44:4|temp_45:4|temp_46:4|temp_47:4|temp_48:4|temp_49:4|temp_50:4|temp_51:4|temp_52:4|temp_53:4|temp_54:4|temp_55:4|temp_56:4|temp_57:4|temp_58:4|temp_59:4|temp_60:4|temp_61:4|temp_62:4|temp_63:4|temp_64:4|temp_65:4|temp_66:4|temp_67:4|temp_68:4|temp_69:4|temp_70:4|temp_71:4|temp_72:4|temp_73:4|temp_74:4|temp_75:4|temp_76:4|temp_77:4|temp_78:4|temp_79:4|temp_80:4|temp_81:4|temp_82:4|temp_83:4|temp_84:4|temp_85:4|temp_86:4|temp_87:4|temp_88:4|temp_89:4|temp_90:4|temp_91:4|temp_92:4|temp_93:4|temp_94:4|temp_95:4|temp_96:4|temp_97:4|temp_98:4|temp_99:4|temp_100:4|temp_101:4|temp_102:4|temp_103:4|temp_104:4|temp_105:4|temp_106:4|temp_107:4|temp_108:4|temp_109:4|temp_110:4|temp_111:4|temp_112:4|temp_113:4|temp_114:4|temp_115:4|temp_116:4|temp_117:4|temp_118:4|temp_119:4|temp_120:4|temp_121:4|temp_122:4|temp_123:4|temp_124:4|temp_125:4|temp_126:4|temp_127:4|temp_128:4|temp_129:4|temp_130:4|temp_131:4|temp_132:4|temp_133:4|temp_134:4|temp_135:4|temp_136:4|temp_137:4|temp_138:4|temp_139:4|temp_140:4|temp_141:4|temp_142:4|temp_143:4|temp_144:4|temp_145:4|temp_146:4|temp_147:4|temp_148:4|temp_149:4|temp_150:4|temp_151:4|temp_152:4|temp_153:4|temp_154:4|temp_155:4|temp_156:4|temp_157:4|temp_158:4|temp_159:4|temp_160:4|temp_161:4|temp_162:4|temp_163:4|temp_164:4|temp_165:4|temp_166:4|temp_167:4|temp_168:4|temp_169:4|temp_170:4|temp_171:4|temp_172:4|temp_173:4|temp_174:4|temp_175:4|temp_176:4|temp_177:4|temp_178:4|temp_179:4|temp_180:4|temp_181:4|temp_182:4|temp_183:4|temp_184:4|temp_185:4|temp_186:4|temp_187:4|temp_188:4|temp_189:4|temp_190:4|temp_191:4|temp_192:4|temp_193:4|temp_194:4|temp_195:4|temp_196:4|temp_197:4|temp_198:4|temp_199:4|temp_200:4|temp_201:4|temp_202:4|temp_203:4|temp_204:4|temp_205:4|temp_206:4|temp_207:4|temp_208:4|temp_209:4|temp_210:4|temp_211:4|temp_212:4|temp_213:4|temp_214:4|temp_215:4|temp_216:4|temp_217:4|temp_218:4|temp_219:4|temp_220:4|temp_221:4|temp_222:4|temp_223:4|temp_224:4|temp_225:4|temp_226:4|temp_227:4|temp_228:4|temp_229:4|temp_230:4|temp_231:4|temp_232:4|temp_233:4|temp_234:4|temp_235:4|temp_236:4|temp_237:4|temp_238:4|temp_239:4|temp_240:4|temp_241:4|temp_242:4|temp_243:4|temp_244:4|temp_245:4|temp_246:4|temp_247:4|temp_248:4|temp_249:4|temp_250:4|temp_251:4|temp_252:4|temp_253:4|temp_254:4|temp_255:4|temp_256:4|temp_257:4|temp_258:4|temp_259:4|temp_260:4|temp_261:4|temp_262:4|temp_263:4|temp_264:4|temp_265:4|temp_266:4|temp_267:4|temp_268:4|temp_269:4|temp_270:4|temp_271:4|temp_272:4|temp_273:4|temp_274:4|temp_275:4|temp_276:4|temp_277:4|temp_278:4|temp_279:4|temp_280:4|temp_281:4|temp_282:4|temp_283:4|temp_284:4|temp_285:4|temp_286:4|temp_287:4|temp_288:4|temp_289:4|temp_290:4|temp_291:4|temp_292:4|temp_293:4|temp_294:4|temp_295:4|temp_296:4|temp_297:4|temp_298:4|temp_299:4|temp_300:4|temp_301:4|temp_302:4|temp_303:4|temp_304:4|temp_305:4|temp_306:4|temp_307:4|temp_308:4|temp_309:4|temp_310:4
    addi    sp,sp,-1416
    sd      ra,1408(sp)
    sd      s0,1400(sp)
    addi    s0,sp,1416
                    #      alloc i32 i_50 
                    #      alloc i32 temp_0_50 
                    #      alloc i32 c1_50 
                    #      alloc i32 c2_50 
                    #      alloc i32 c3_50 
                    #      alloc i32 c4_50 
                    #      alloc i32 d1_50 
                    #      alloc i32 d2_50 
                    #      alloc i32 d3_50 
                    #      alloc i32 d4_50 
                    #      alloc i32 e1_50 
                    #      alloc i32 e2_50 
                    #      alloc i32 e3_50 
                    #      alloc i32 e4_50 
                    #      alloc i32 f1_50 
                    #      alloc i32 f2_50 
                    #      alloc i32 f3_50 
                    #      alloc i32 f4_50 
                    #      alloc i32 g1_50 
                    #      alloc i32 g2_50 
                    #      alloc i32 g3_50 
                    #      alloc i32 g4_50 
                    #      alloc i32 h1_50 
                    #      alloc i32 h2_50 
                    #      alloc i32 h3_50 
                    #      alloc i32 h4_50 
                    #      alloc i32 i1_50 
                    #      alloc i32 i2_50 
                    #      alloc i32 i3_50 
                    #      alloc i32 i4_50 
                    #      alloc i32 j1_50 
                    #      alloc i32 j2_50 
                    #      alloc i32 j3_50 
                    #      alloc i32 j4_50 
                    #      alloc i32 k1_50 
                    #      alloc i32 k2_50 
                    #      alloc i32 k3_50 
                    #      alloc i32 k4_50 
                    #      alloc i32 temp_1_50 
                    #      alloc i32 temp_2_50 
                    #      alloc i32 temp_3_50 
                    #      alloc i32 temp_4_50 
                    #      alloc i32 temp_5_50 
                    #      alloc i32 temp_6_50 
                    #      alloc i32 temp_7_50 
                    #      alloc i32 temp_8_50 
                    #      alloc i32 temp_9_50 
                    #      alloc i32 temp_10_50 
                    #      alloc i32 temp_11_50 
                    #      alloc i32 temp_12_50 
                    #      alloc i32 temp_13_50 
                    #      alloc i32 temp_14_50 
                    #      alloc i32 temp_15_50 
                    #      alloc i32 temp_16_50 
                    #      alloc i32 temp_17_50 
                    #      alloc i32 temp_18_50 
                    #      alloc i32 temp_19_50 
                    #      alloc i32 temp_20_50 
                    #      alloc i32 temp_21_50 
                    #      alloc i32 temp_22_50 
                    #      alloc i32 temp_23_50 
                    #      alloc i32 temp_24_50 
                    #      alloc i32 temp_25_50 
                    #      alloc i32 temp_26_50 
                    #      alloc i32 temp_27_50 
                    #      alloc i32 temp_28_50 
                    #      alloc i32 temp_29_50 
                    #      alloc i32 temp_30_50 
                    #      alloc i32 temp_31_50 
                    #      alloc i32 temp_32_50 
                    #      alloc i32 temp_33_50 
                    #      alloc i32 temp_34_50 
                    #      alloc i32 temp_35_50 
                    #      alloc i32 temp_36_50 
                    #      alloc i32 temp_37_50 
                    #      alloc i32 temp_38_50 
                    #      alloc i32 temp_39_50 
                    #      alloc i32 temp_40_50 
                    #      alloc i32 temp_41_50 
                    #      alloc i32 temp_42_50 
                    #      alloc i32 temp_43_50 
                    #      alloc i32 temp_44_50 
                    #      alloc i32 temp_45_50 
                    #      alloc i32 temp_46_50 
                    #      alloc i32 temp_47_50 
                    #      alloc i32 temp_48_50 
                    #      alloc i32 temp_49_50 
                    #      alloc i32 temp_50_50 
                    #      alloc i32 temp_51_50 
                    #      alloc i32 temp_52_50 
                    #      alloc i32 temp_53_50 
                    #      alloc i32 temp_54_50 
                    #      alloc i32 temp_55_50 
                    #      alloc i32 temp_56_50 
                    #      alloc i32 temp_57_50 
                    #      alloc i32 temp_58_50 
                    #      alloc i32 temp_59_50 
                    #      alloc i32 temp_60_50 
                    #      alloc i32 temp_61_50 
                    #      alloc i32 temp_62_50 
                    #      alloc i32 temp_63_50 
                    #      alloc i32 temp_64_50 
                    #      alloc i32 temp_65_50 
                    #      alloc i32 temp_66_50 
                    #      alloc i32 temp_67_50 
                    #      alloc i32 temp_68_50 
                    #      alloc i32 temp_69_50 
                    #      alloc i32 temp_70_50 
                    #      alloc i32 temp_71_50 
                    #      alloc i32 temp_72_50 
                    #      alloc i32 temp_73_50 
                    #      alloc i32 temp_74_50 
                    #      alloc i32 temp_75_50 
                    #      alloc i32 temp_76_50 
                    #      alloc i32 temp_77_50 
                    #      alloc i32 temp_78_50 
                    #      alloc i32 temp_79_50 
                    #      alloc i32 temp_80_50 
                    #      alloc i32 temp_81_50 
                    #      alloc i32 temp_82_50 
                    #      alloc i32 temp_83_50 
                    #      alloc i32 temp_84_50 
                    #      alloc i32 temp_85_50 
                    #      alloc i32 temp_86_50 
                    #      alloc i32 temp_87_50 
                    #      alloc i32 temp_88_50 
                    #      alloc i32 temp_89_50 
                    #      alloc i32 temp_90_50 
                    #      alloc i32 temp_91_50 
                    #      alloc i32 temp_92_50 
                    #      alloc i32 temp_93_50 
                    #      alloc i32 temp_94_50 
                    #      alloc i32 temp_95_50 
                    #      alloc i32 temp_96_50 
                    #      alloc i32 temp_97_50 
                    #      alloc i32 temp_98_50 
                    #      alloc i32 temp_99_50 
                    #      alloc i32 temp_100_50 
                    #      alloc i32 temp_101_50 
                    #      alloc i32 temp_102_50 
                    #      alloc i32 temp_103_50 
                    #      alloc i32 temp_104_50 
                    #      alloc i32 temp_105_50 
                    #      alloc i32 temp_106_50 
                    #      alloc i32 temp_107_50 
                    #      alloc i32 temp_108_50 
                    #      alloc i32 temp_109_50 
                    #      alloc i32 temp_110_50 
                    #      alloc i32 temp_111_50 
                    #      alloc i32 temp_112_50 
                    #      alloc i32 temp_113_50 
                    #      alloc i32 temp_114_50 
                    #      alloc i32 temp_115_50 
                    #      alloc i32 temp_116_50 
                    #      alloc i32 temp_117_50 
                    #      alloc i32 temp_118_50 
                    #      alloc i32 temp_119_50 
                    #      alloc i32 temp_120_50 
                    #      alloc i32 temp_121_50 
                    #      alloc i32 temp_122_50 
                    #      alloc i32 temp_123_50 
                    #      alloc i32 temp_124_50 
                    #      alloc i32 temp_125_50 
                    #      alloc i32 temp_126_50 
                    #      alloc i32 temp_127_50 
                    #      alloc i32 temp_128_50 
                    #      alloc i32 temp_129_50 
                    #      alloc i32 temp_130_50 
                    #      alloc i32 temp_131_50 
                    #      alloc i32 temp_132_50 
                    #      alloc i32 temp_133_50 
                    #      alloc i32 temp_134_50 
                    #      alloc i32 temp_135_50 
                    #      alloc i32 temp_136_50 
                    #      alloc i32 temp_137_50 
                    #      alloc i32 temp_138_50 
                    #      alloc i32 temp_139_50 
                    #      alloc i32 temp_140_50 
                    #      alloc i32 temp_141_50 
                    #      alloc i32 temp_142_50 
                    #      alloc i32 temp_143_50 
                    #      alloc i32 temp_144_50 
                    #      alloc i32 temp_145_50 
                    #      alloc i32 temp_146_50 
                    #      alloc i32 temp_147_50 
                    #      alloc i32 temp_148_50 
                    #      alloc i32 temp_149_50 
                    #      alloc i32 temp_150_50 
                    #      alloc i32 temp_151_50 
                    #      alloc i32 temp_152_50 
                    #      alloc i32 temp_153_50 
                    #      alloc i32 temp_154_50 
                    #      alloc i32 temp_155_50 
                    #      alloc i32 temp_156_50 
                    #      alloc i32 temp_157_50 
                    #      alloc i32 temp_158_50 
                    #      alloc i32 temp_159_50 
                    #      alloc i32 temp_160_50 
                    #      alloc i32 temp_161_50 
                    #      alloc i32 temp_162_50 
                    #      alloc i32 temp_163_50 
                    #      alloc i32 temp_164_50 
                    #      alloc i32 temp_165_50 
                    #      alloc i32 temp_166_50 
                    #      alloc i32 temp_167_50 
                    #      alloc i32 temp_168_50 
                    #      alloc i32 temp_169_50 
                    #      alloc i32 temp_170_50 
                    #      alloc i32 temp_171_50 
                    #      alloc i32 temp_172_50 
                    #      alloc i32 temp_173_50 
                    #      alloc i32 temp_174_50 
                    #      alloc i32 temp_175_50 
                    #      alloc i32 temp_176_50 
                    #      alloc i32 temp_177_50 
                    #      alloc i32 temp_178_50 
                    #      alloc i32 temp_179_50 
                    #      alloc i32 temp_180_50 
                    #      alloc i32 temp_181_50 
                    #      alloc i32 temp_182_50 
                    #      alloc i32 temp_183_50 
                    #      alloc i32 temp_184_50 
                    #      alloc i32 temp_185_50 
                    #      alloc i32 temp_186_50 
                    #      alloc i32 temp_187_50 
                    #      alloc i32 temp_188_50 
                    #      alloc i32 temp_189_50 
                    #      alloc i32 temp_190_50 
                    #      alloc i32 temp_191_50 
                    #      alloc i32 temp_192_50 
                    #      alloc i32 temp_193_50 
                    #      alloc i32 temp_194_50 
                    #      alloc i32 temp_195_50 
                    #      alloc i32 temp_196_50 
                    #      alloc i32 temp_197_50 
                    #      alloc i32 temp_198_50 
                    #      alloc i32 temp_199_50 
                    #      alloc i32 temp_200_50 
                    #      alloc i32 temp_201_50 
                    #      alloc i32 temp_202_50 
                    #      alloc i32 temp_203_50 
                    #      alloc i32 temp_204_50 
                    #      alloc i32 temp_205_50 
                    #      alloc i32 temp_206_50 
                    #      alloc i32 temp_207_50 
                    #      alloc i32 temp_208_50 
                    #      alloc i32 temp_209_50 
                    #      alloc i32 temp_210_50 
                    #      alloc i32 temp_211_50 
                    #      alloc i32 temp_212_50 
                    #      alloc i32 temp_213_50 
                    #      alloc i32 temp_214_50 
                    #      alloc i32 temp_215_50 
                    #      alloc i32 temp_216_50 
                    #      alloc i32 temp_217_50 
                    #      alloc i32 temp_218_50 
                    #      alloc i32 temp_219_50 
                    #      alloc i32 temp_220_50 
                    #      alloc i32 temp_221_50 
                    #      alloc i32 temp_222_50 
                    #      alloc i32 temp_223_50 
                    #      alloc i32 temp_224_50 
                    #      alloc i32 temp_225_50 
                    #      alloc i32 temp_226_50 
                    #      alloc i32 temp_227_50 
                    #      alloc i32 temp_228_50 
                    #      alloc i32 temp_229_50 
                    #      alloc i32 temp_230_50 
                    #      alloc i32 temp_231_50 
                    #      alloc i32 temp_232_50 
                    #      alloc i32 temp_233_50 
                    #      alloc i32 temp_234_50 
                    #      alloc i32 temp_235_50 
                    #      alloc i32 temp_236_50 
                    #      alloc i32 temp_237_50 
                    #      alloc i32 temp_238_50 
                    #      alloc i32 temp_239_50 
                    #      alloc i32 temp_240_50 
                    #      alloc i32 temp_241_50 
                    #      alloc i32 temp_242_50 
                    #      alloc i32 temp_243_50 
                    #      alloc i32 temp_244_50 
                    #      alloc i32 temp_245_50 
                    #      alloc i32 temp_246_50 
                    #      alloc i32 temp_247_50 
                    #      alloc i32 temp_248_50 
                    #      alloc i32 temp_249_50 
                    #      alloc i32 temp_250_50 
                    #      alloc i32 temp_251_50 
                    #      alloc i32 temp_252_50 
                    #      alloc i32 temp_253_50 
                    #      alloc i32 temp_254_50 
                    #      alloc i32 temp_255_50 
                    #      alloc i32 temp_256_50 
                    #      alloc i32 temp_257_50 
                    #      alloc i32 temp_258_50 
                    #      alloc i32 temp_259_50 
                    #      alloc i32 temp_260_50 
                    #      alloc i32 temp_261_50 
                    #      alloc i32 temp_262_50 
                    #      alloc i32 temp_263_50 
                    #      alloc i32 temp_264_50 
                    #      alloc i32 temp_265_50 
                    #      alloc i32 temp_266_50 
                    #      alloc i32 temp_267_50 
                    #      alloc i32 temp_268_50 
                    #      alloc i32 temp_269_50 
                    #      alloc i32 temp_270_50 
                    #      alloc i32 temp_271_50 
                    #      alloc i32 temp_272_50 
                    #      alloc i32 temp_273_50 
                    #      alloc i32 temp_274_50 
                    #      alloc i32 temp_275_50 
                    #      alloc i32 temp_276_50 
                    #      alloc i32 temp_277_50 
                    #      alloc i32 temp_278_50 
                    #      alloc i32 temp_279_50 
                    #      alloc i32 temp_280_50 
                    #      alloc i32 temp_281_50 
                    #      alloc i32 temp_282_50 
                    #      alloc i32 temp_283_50 
                    #      alloc i32 temp_284_50 
                    #      alloc i32 temp_285_50 
                    #      alloc i32 temp_286_50 
                    #      alloc i32 temp_287_50 
                    #      alloc i32 temp_288_50 
                    #      alloc i32 temp_289_50 
                    #      alloc i32 temp_290_50 
                    #      alloc i32 temp_291_50 
                    #      alloc i32 temp_292_50 
                    #      alloc i32 temp_293_50 
                    #      alloc i32 temp_294_50 
                    #      alloc i32 temp_295_50 
                    #      alloc i32 temp_296_50 
                    #      alloc i32 temp_297_50 
                    #      alloc i32 temp_298_50 
                    #      alloc i32 temp_299_50 
                    #      alloc i32 temp_300_50 
                    #      alloc i32 temp_301_50 
                    #      alloc i32 temp_302_50 
                    #      alloc i32 temp_303_50 
                    #      alloc i32 temp_304_50 
                    #      alloc i32 temp_305_50 
                    #      alloc i32 temp_306_50 
                    #      alloc i32 temp_307_50 
                    #      alloc i32 temp_308_50 
                    #      alloc i32 temp_309_50 
                    #      alloc i32 temp_310_50 
                    #      label L1_0: 
.L1_0:
                    #      new_var i_50:i32 
                    #      new_var temp_0_50:i32 
                    #      temp_0_50 = Add i32 a_48, b_48 
    add     a2,a0,a1
                    #      i_50 = i32 temp_0_50 
    mv      a3, a2
                    #      new_var c1_50:i32 
                    #      new_var c2_50:i32 
                    #      new_var c3_50:i32 
                    #      new_var c4_50:i32 
                    #      new_var d1_50:i32 
                    #      new_var d2_50:i32 
                    #      new_var d3_50:i32 
                    #      new_var d4_50:i32 
                    #      new_var e1_50:i32 
                    #      new_var e2_50:i32 
                    #      new_var e3_50:i32 
                    #      new_var e4_50:i32 
                    #      new_var f1_50:i32 
                    #      new_var f2_50:i32 
                    #      new_var f3_50:i32 
                    #      new_var f4_50:i32 
                    #      new_var g1_50:i32 
                    #      new_var g2_50:i32 
                    #      new_var g3_50:i32 
                    #      new_var g4_50:i32 
                    #      new_var h1_50:i32 
                    #      new_var h2_50:i32 
                    #      new_var h3_50:i32 
                    #      new_var h4_50:i32 
                    #      new_var i1_50:i32 
                    #      new_var i2_50:i32 
                    #      new_var i3_50:i32 
                    #      new_var i4_50:i32 
                    #      new_var j1_50:i32 
                    #      new_var j2_50:i32 
                    #      new_var j3_50:i32 
                    #      new_var j4_50:i32 
                    #      new_var k1_50:i32 
                    #      new_var k2_50:i32 
                    #      new_var k3_50:i32 
                    #      new_var k4_50:i32 
                    #      new_var temp_1_50:i32 
                    #      temp_1_50 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,1396(sp)
    sw      a0,1236(sp)
                    #      c1_50 = i32 temp_1_50 
    mv      a4, a0
                    #      new_var temp_2_50:i32 
                    #      temp_2_50 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,1236(sp)
    sw      a0,1232(sp)
                    #      c2_50 = i32 temp_2_50 
    mv      a5, a0
                    #      new_var temp_3_50:i32 
                    #      temp_3_50 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,1232(sp)
    sw      a0,1228(sp)
                    #      c3_50 = i32 temp_3_50 
    mv      a6, a0
                    #      new_var temp_4_50:i32 
                    #      temp_4_50 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,1228(sp)
    sw      a0,1224(sp)
                    #      c4_50 = i32 temp_4_50 
    mv      a7, a0
                    #      new_var temp_5_50:i32 
                    #      temp_5_50 = load *a1_0:ptr->i32 
                    #   load label a1 as ptr to reg
    la      s1, a1
                    #occupy reg s1 with *a1_0
    lw      s2,0(s1)
                    #      new_var temp_6_50:i32 
                    #      temp_6_50 = Add i32 c1_50, temp_5_50 
    add     s3,a4,s2
                    #      new_var temp_7_50:i32 
                    #      temp_7_50 = Add i32 1_0, temp_6_50 
    li      s4, 1
    add     s5,s4,s3
                    #      d1_50 = i32 temp_7_50 
    mv      s6, s5
                    #      new_var temp_8_50:i32 
                    #      temp_8_50 = load *a2_0:ptr->i32 
                    #   load label a2 as ptr to reg
    la      s7, a2
                    #occupy reg s7 with *a2_0
    lw      s8,0(s7)
                    #      new_var temp_9_50:i32 
                    #      temp_9_50 = Add i32 c2_50, temp_8_50 
    add     s9,a5,s8
                    #      new_var temp_10_50:i32 
                    #      temp_10_50 = Add i32 2_0, temp_9_50 
    li      s10, 2
    add     s11,s10,s9
                    #      d2_50 = i32 temp_10_50 
    mv      s1, s11
                    #      new_var temp_11_50:i32 
                    #      temp_11_50 = load *a3_0:ptr->i32 
                    #   load label a3 as ptr to reg
    la      s4, a3
                    #occupy reg s4 with *a3_0
    lw      s7,0(s4)
                    #      new_var temp_12_50:i32 
                    #      temp_12_50 = Add i32 c3_50, temp_11_50 
    add     s4,a6,s7
                    #      new_var temp_13_50:i32 
                    #      temp_13_50 = Add i32 3_0, temp_12_50 
    li      s10, 3
    sw      a0,1224(sp)
    add     a0,s10,s4
                    #      d3_50 = i32 temp_13_50 
    mv      s10, a0
                    #      new_var temp_14_50:i32 
                    #      temp_14_50 = load *a4_0:ptr->i32 
    sw      a0,1188(sp)
                    #   load label a4 as ptr to reg
    la      a0, a4
                    #occupy reg a0 with *a4_0
    sw      a1,1392(sp)
    lw      a1,0(a0)
                    #      new_var temp_15_50:i32 
                    #      temp_15_50 = Add i32 c4_50, temp_14_50 
    add     a0,a7,a1
                    #      new_var temp_16_50:i32 
                    #      temp_16_50 = Add i32 4_0, temp_15_50 
    sw      a0,1180(sp)
    li      a0, 4
    sw      a1,1184(sp)
    sw      a2,1384(sp)
    add     a2,a0,a1
                    #      d4_50 = i32 temp_16_50 
    mv      a0, a2
                    #      new_var temp_17_50:i32 
                    #      temp_17_50 = load *a5_0:ptr->i32 
    sw      a0,1352(sp)
                    #   load label a5 as ptr to reg
    la      a0, a5
                    #occupy reg a0 with *a5_0
    sw      a1,1180(sp)
    lw      a1,0(a0)
                    #      new_var temp_18_50:i32 
                    #      temp_18_50 = Add i32 d1_50, temp_17_50 
    add     a0,s6,a1
                    #      new_var temp_19_50:i32 
                    #      temp_19_50 = Add i32 1_0, temp_18_50 
    sw      a0,1168(sp)
    li      a0, 1
    sw      a1,1172(sp)
    sw      a2,1176(sp)
    add     a2,a0,a1
                    #      e1_50 = i32 temp_19_50 
    mv      a0, a2
                    #      new_var temp_20_50:i32 
                    #      temp_20_50 = load *a6_0:ptr->i32 
    sw      a0,1348(sp)
                    #   load label a6 as ptr to reg
    la      a0, a6
                    #occupy reg a0 with *a6_0
    sw      a1,1168(sp)
    lw      a1,0(a0)
                    #      new_var temp_21_50:i32 
                    #      temp_21_50 = Add i32 d2_50, temp_20_50 
    add     a0,s1,a1
                    #      new_var temp_22_50:i32 
                    #      temp_22_50 = Add i32 2_0, temp_21_50 
    sw      a0,1156(sp)
    li      a0, 2
    sw      a1,1160(sp)
    sw      a2,1164(sp)
    add     a2,a0,a1
                    #      e2_50 = i32 temp_22_50 
    mv      a0, a2
                    #      new_var temp_23_50:i32 
                    #      temp_23_50 = load *a7_0:ptr->i32 
    sw      a0,1344(sp)
                    #   load label a7 as ptr to reg
    la      a0, a7
                    #occupy reg a0 with *a7_0
    sw      a1,1156(sp)
    lw      a1,0(a0)
                    #      new_var temp_24_50:i32 
                    #      temp_24_50 = Add i32 d3_50, temp_23_50 
    add     a0,s10,a1
                    #      new_var temp_25_50:i32 
                    #      temp_25_50 = Add i32 3_0, temp_24_50 
    sw      a0,1144(sp)
    li      a0, 3
    sw      a1,1148(sp)
    sw      a2,1152(sp)
    add     a2,a0,a1
                    #      e3_50 = i32 temp_25_50 
    mv      a0, a2
                    #      new_var temp_26_50:i32 
                    #      temp_26_50 = load *a8_0:ptr->i32 
    sw      a0,1340(sp)
                    #   load label a8 as ptr to reg
    la      a0, a8
                    #occupy reg a0 with *a8_0
    sw      a1,1144(sp)
    lw      a1,0(a0)
                    #      new_var temp_27_50:i32 
                    #      temp_27_50 = Add i32 d4_50, temp_26_50 
    sw      a2,1140(sp)
    add     a2,a0,a1
                    #      new_var temp_28_50:i32 
                    #      temp_28_50 = Add i32 4_0, temp_27_50 
    sw      a0,1352(sp)
    li      a0, 4
    sw      a1,1136(sp)
    add     a1,a0,a2
                    #      e4_50 = i32 temp_28_50 
    mv      a0, a1
                    #      new_var temp_29_50:i32 
                    #      temp_29_50 = load *a9_0:ptr->i32 
    sw      a0,1336(sp)
                    #   load label a9 as ptr to reg
    la      a0, a9
                    #occupy reg a0 with *a9_0
    sw      a1,1128(sp)
    lw      a1,0(a0)
                    #      new_var temp_30_50:i32 
                    #      temp_30_50 = Add i32 e1_50, temp_29_50 
    sw      a2,1132(sp)
    add     a2,a0,a1
                    #      new_var temp_31_50:i32 
                    #      temp_31_50 = Add i32 1_0, temp_30_50 
    sw      a0,1348(sp)
    li      a0, 1
    sw      a1,1124(sp)
    add     a1,a0,a2
                    #      f1_50 = i32 temp_31_50 
    mv      a0, a1
                    #      new_var temp_32_50:i32 
                    #      temp_32_50 = load *a10_0:ptr->i32 
    sw      a0,1332(sp)
                    #   load label a10 as ptr to reg
    la      a0, a10
                    #occupy reg a0 with *a10_0
    sw      a1,1116(sp)
    lw      a1,0(a0)
                    #      new_var temp_33_50:i32 
                    #      temp_33_50 = Add i32 e2_50, temp_32_50 
    sw      a2,1120(sp)
    add     a2,a0,a1
                    #      new_var temp_34_50:i32 
                    #      temp_34_50 = Add i32 2_0, temp_33_50 
    sw      a0,1344(sp)
    li      a0, 2
    sw      a1,1112(sp)
    add     a1,a0,a2
                    #      f2_50 = i32 temp_34_50 
    mv      a0, a1
                    #      new_var temp_35_50:i32 
                    #      temp_35_50 = load *a11_0:ptr->i32 
    sw      a0,1328(sp)
                    #   load label a11 as ptr to reg
    la      a0, a11
                    #occupy reg a0 with *a11_0
    sw      a1,1104(sp)
    lw      a1,0(a0)
                    #      new_var temp_36_50:i32 
                    #      temp_36_50 = Add i32 e3_50, temp_35_50 
    sw      a2,1108(sp)
    add     a2,a0,a1
                    #      new_var temp_37_50:i32 
                    #      temp_37_50 = Add i32 3_0, temp_36_50 
    sw      a0,1340(sp)
    li      a0, 3
    sw      a1,1100(sp)
    add     a1,a0,a2
                    #      f3_50 = i32 temp_37_50 
    mv      a0, a1
                    #      new_var temp_38_50:i32 
                    #      temp_38_50 = load *a12_0:ptr->i32 
    sw      a0,1324(sp)
                    #   load label a12 as ptr to reg
    la      a0, a12
                    #occupy reg a0 with *a12_0
    sw      a1,1092(sp)
    lw      a1,0(a0)
                    #      new_var temp_39_50:i32 
                    #      temp_39_50 = Add i32 e4_50, temp_38_50 
    sw      a2,1096(sp)
    add     a2,a0,a1
                    #      new_var temp_40_50:i32 
                    #      temp_40_50 = Add i32 4_0, temp_39_50 
    sw      a0,1336(sp)
    li      a0, 4
    sw      a1,1088(sp)
    add     a1,a0,a2
                    #      f4_50 = i32 temp_40_50 
    mv      a0, a1
                    #      new_var temp_41_50:i32 
                    #      temp_41_50 = load *a13_0:ptr->i32 
    sw      a0,1320(sp)
                    #   load label a13 as ptr to reg
    la      a0, a13
                    #occupy reg a0 with *a13_0
    sw      a1,1080(sp)
    lw      a1,0(a0)
                    #      new_var temp_42_50:i32 
                    #      temp_42_50 = Add i32 f1_50, temp_41_50 
    sw      a2,1084(sp)
    add     a2,a0,a1
                    #      new_var temp_43_50:i32 
                    #      temp_43_50 = Add i32 1_0, temp_42_50 
    sw      a0,1332(sp)
    li      a0, 1
    sw      a1,1076(sp)
    add     a1,a0,a2
                    #      g1_50 = i32 temp_43_50 
    mv      a0, a1
                    #      new_var temp_44_50:i32 
                    #      temp_44_50 = load *a14_0:ptr->i32 
    sw      a0,1316(sp)
                    #   load label a14 as ptr to reg
    la      a0, a14
                    #occupy reg a0 with *a14_0
    sw      a1,1068(sp)
    lw      a1,0(a0)
                    #      new_var temp_45_50:i32 
                    #      temp_45_50 = Add i32 f2_50, temp_44_50 
    sw      a2,1072(sp)
    add     a2,a0,a1
                    #      new_var temp_46_50:i32 
                    #      temp_46_50 = Add i32 2_0, temp_45_50 
    sw      a0,1328(sp)
    li      a0, 2
    sw      a1,1064(sp)
    add     a1,a0,a2
                    #      g2_50 = i32 temp_46_50 
    mv      a0, a1
                    #      new_var temp_47_50:i32 
                    #      temp_47_50 = load *a15_0:ptr->i32 
    sw      a0,1312(sp)
                    #   load label a15 as ptr to reg
    la      a0, a15
                    #occupy reg a0 with *a15_0
    sw      a1,1056(sp)
    lw      a1,0(a0)
                    #      new_var temp_48_50:i32 
                    #      temp_48_50 = Add i32 f3_50, temp_47_50 
    sw      a2,1060(sp)
    add     a2,a0,a1
                    #      new_var temp_49_50:i32 
                    #      temp_49_50 = Add i32 3_0, temp_48_50 
    sw      a0,1324(sp)
    li      a0, 3
    sw      a1,1052(sp)
    add     a1,a0,a2
                    #      g3_50 = i32 temp_49_50 
    mv      a0, a1
                    #      new_var temp_50_50:i32 
                    #      temp_50_50 = load *a16_0:ptr->i32 
    sw      a0,1308(sp)
                    #   load label a16 as ptr to reg
    la      a0, a16
                    #occupy reg a0 with *a16_0
    sw      a1,1044(sp)
    lw      a1,0(a0)
                    #      new_var temp_51_50:i32 
                    #      temp_51_50 = Add i32 f4_50, temp_50_50 
    sw      a2,1048(sp)
    add     a2,a0,a1
                    #      new_var temp_52_50:i32 
                    #      temp_52_50 = Add i32 4_0, temp_51_50 
    sw      a0,1320(sp)
    li      a0, 4
    sw      a1,1040(sp)
    add     a1,a0,a2
                    #      g4_50 = i32 temp_52_50 
    mv      a0, a1
                    #      new_var temp_53_50:i32 
                    #      temp_53_50 = load *a17_0:ptr->i32 
    sw      a0,1304(sp)
                    #   load label a17 as ptr to reg
    la      a0, a17
                    #occupy reg a0 with *a17_0
    sw      a1,1032(sp)
    lw      a1,0(a0)
                    #      new_var temp_54_50:i32 
                    #      temp_54_50 = Add i32 g1_50, temp_53_50 
    sw      a2,1036(sp)
    add     a2,a0,a1
                    #      new_var temp_55_50:i32 
                    #      temp_55_50 = Add i32 1_0, temp_54_50 
    sw      a0,1316(sp)
    li      a0, 1
    sw      a1,1028(sp)
    add     a1,a0,a2
                    #      h1_50 = i32 temp_55_50 
    mv      a0, a1
                    #      new_var temp_56_50:i32 
                    #      temp_56_50 = load *a18_0:ptr->i32 
    sw      a0,1300(sp)
                    #   load label a18 as ptr to reg
    la      a0, a18
                    #occupy reg a0 with *a18_0
    sw      a1,1020(sp)
    lw      a1,0(a0)
                    #      new_var temp_57_50:i32 
                    #      temp_57_50 = Add i32 g2_50, temp_56_50 
    sw      a2,1024(sp)
    add     a2,a0,a1
                    #      new_var temp_58_50:i32 
                    #      temp_58_50 = Add i32 2_0, temp_57_50 
    sw      a0,1312(sp)
    li      a0, 2
    sw      a1,1016(sp)
    add     a1,a0,a2
                    #      h2_50 = i32 temp_58_50 
    mv      a0, a1
                    #      new_var temp_59_50:i32 
                    #      temp_59_50 = load *a19_0:ptr->i32 
    sw      a0,1296(sp)
                    #   load label a19 as ptr to reg
    la      a0, a19
                    #occupy reg a0 with *a19_0
    sw      a1,1008(sp)
    lw      a1,0(a0)
                    #      new_var temp_60_50:i32 
                    #      temp_60_50 = Add i32 g3_50, temp_59_50 
    sw      a2,1012(sp)
    add     a2,a0,a1
                    #      new_var temp_61_50:i32 
                    #      temp_61_50 = Add i32 3_0, temp_60_50 
    sw      a0,1308(sp)
    li      a0, 3
    sw      a1,1004(sp)
    add     a1,a0,a2
                    #      h3_50 = i32 temp_61_50 
    mv      a0, a1
                    #      new_var temp_62_50:i32 
                    #      temp_62_50 = load *a20_0:ptr->i32 
    sw      a0,1292(sp)
                    #   load label a20 as ptr to reg
    la      a0, a20
                    #occupy reg a0 with *a20_0
    sw      a1,996(sp)
    lw      a1,0(a0)
                    #      new_var temp_63_50:i32 
                    #      temp_63_50 = Add i32 g4_50, temp_62_50 
    sw      a2,1000(sp)
    add     a2,a0,a1
                    #      new_var temp_64_50:i32 
                    #      temp_64_50 = Add i32 4_0, temp_63_50 
    sw      a0,1304(sp)
    li      a0, 4
    sw      a1,992(sp)
    add     a1,a0,a2
                    #      h4_50 = i32 temp_64_50 
    mv      a0, a1
                    #      new_var temp_65_50:i32 
                    #      temp_65_50 = load *a21_0:ptr->i32 
    sw      a0,1288(sp)
                    #   load label a21 as ptr to reg
    la      a0, a21
                    #occupy reg a0 with *a21_0
    sw      a1,984(sp)
    lw      a1,0(a0)
                    #      new_var temp_66_50:i32 
                    #      temp_66_50 = Add i32 h1_50, temp_65_50 
    sw      a2,988(sp)
    add     a2,a0,a1
                    #      new_var temp_67_50:i32 
                    #      temp_67_50 = Add i32 1_0, temp_66_50 
    sw      a0,1300(sp)
    li      a0, 1
    sw      a1,980(sp)
    add     a1,a0,a2
                    #      i1_50 = i32 temp_67_50 
    mv      a0, a1
                    #      new_var temp_68_50:i32 
                    #      temp_68_50 = load *a22_0:ptr->i32 
    sw      a0,1284(sp)
                    #   load label a22 as ptr to reg
    la      a0, a22
                    #occupy reg a0 with *a22_0
    sw      a1,972(sp)
    lw      a1,0(a0)
                    #      new_var temp_69_50:i32 
                    #      temp_69_50 = Add i32 h2_50, temp_68_50 
    sw      a2,976(sp)
    add     a2,a0,a1
                    #      new_var temp_70_50:i32 
                    #      temp_70_50 = Add i32 2_0, temp_69_50 
    sw      a0,1296(sp)
    li      a0, 2
    sw      a1,968(sp)
    add     a1,a0,a2
                    #      i2_50 = i32 temp_70_50 
    mv      a0, a1
                    #      new_var temp_71_50:i32 
                    #      temp_71_50 = load *a23_0:ptr->i32 
    sw      a0,1280(sp)
                    #   load label a23 as ptr to reg
    la      a0, a23
                    #occupy reg a0 with *a23_0
    sw      a1,960(sp)
    lw      a1,0(a0)
                    #      new_var temp_72_50:i32 
                    #      temp_72_50 = Add i32 h3_50, temp_71_50 
    sw      a2,964(sp)
    add     a2,a0,a1
                    #      new_var temp_73_50:i32 
                    #      temp_73_50 = Add i32 3_0, temp_72_50 
    sw      a0,1292(sp)
    li      a0, 3
    sw      a1,956(sp)
    add     a1,a0,a2
                    #      i3_50 = i32 temp_73_50 
    mv      a0, a1
                    #      new_var temp_74_50:i32 
                    #      temp_74_50 = load *a24_0:ptr->i32 
    sw      a0,1276(sp)
                    #   load label a24 as ptr to reg
    la      a0, a24
                    #occupy reg a0 with *a24_0
    sw      a1,948(sp)
    lw      a1,0(a0)
                    #      new_var temp_75_50:i32 
                    #      temp_75_50 = Add i32 h4_50, temp_74_50 
    sw      a2,952(sp)
    add     a2,a0,a1
                    #      new_var temp_76_50:i32 
                    #      temp_76_50 = Add i32 4_0, temp_75_50 
    sw      a0,1288(sp)
    li      a0, 4
    sw      a1,944(sp)
    add     a1,a0,a2
                    #      i4_50 = i32 temp_76_50 
    mv      a0, a1
                    #      new_var temp_77_50:i32 
                    #      temp_77_50 = load *a25_0:ptr->i32 
    sw      a0,1272(sp)
                    #   load label a25 as ptr to reg
    la      a0, a25
                    #occupy reg a0 with *a25_0
    sw      a1,936(sp)
    lw      a1,0(a0)
                    #      new_var temp_78_50:i32 
                    #      temp_78_50 = Add i32 i1_50, temp_77_50 
    sw      a2,940(sp)
    add     a2,a0,a1
                    #      new_var temp_79_50:i32 
                    #      temp_79_50 = Add i32 1_0, temp_78_50 
    sw      a0,1284(sp)
    li      a0, 1
    sw      a1,932(sp)
    add     a1,a0,a2
                    #      j1_50 = i32 temp_79_50 
    mv      a0, a1
                    #      new_var temp_80_50:i32 
                    #      temp_80_50 = load *a26_0:ptr->i32 
    sw      a0,1268(sp)
                    #   load label a26 as ptr to reg
    la      a0, a26
                    #occupy reg a0 with *a26_0
    sw      a1,924(sp)
    lw      a1,0(a0)
                    #      new_var temp_81_50:i32 
                    #      temp_81_50 = Add i32 i2_50, temp_80_50 
    sw      a2,928(sp)
    add     a2,a0,a1
                    #      new_var temp_82_50:i32 
                    #      temp_82_50 = Add i32 2_0, temp_81_50 
    sw      a0,1280(sp)
    li      a0, 2
    sw      a1,920(sp)
    add     a1,a0,a2
                    #      j2_50 = i32 temp_82_50 
    mv      a0, a1
                    #      new_var temp_83_50:i32 
                    #      temp_83_50 = load *a27_0:ptr->i32 
    sw      a0,1264(sp)
                    #   load label a27 as ptr to reg
    la      a0, a27
                    #occupy reg a0 with *a27_0
    sw      a1,912(sp)
    lw      a1,0(a0)
                    #      new_var temp_84_50:i32 
                    #      temp_84_50 = Add i32 i3_50, temp_83_50 
    sw      a2,916(sp)
    add     a2,a0,a1
                    #      new_var temp_85_50:i32 
                    #      temp_85_50 = Add i32 3_0, temp_84_50 
    sw      a0,1276(sp)
    li      a0, 3
    sw      a1,908(sp)
    add     a1,a0,a2
                    #      j3_50 = i32 temp_85_50 
    mv      a0, a1
                    #      new_var temp_86_50:i32 
                    #      temp_86_50 = load *a28_0:ptr->i32 
    sw      a0,1260(sp)
                    #   load label a28 as ptr to reg
    la      a0, a28
                    #occupy reg a0 with *a28_0
    sw      a1,900(sp)
    lw      a1,0(a0)
                    #      new_var temp_87_50:i32 
                    #      temp_87_50 = Add i32 i4_50, temp_86_50 
    sw      a2,904(sp)
    add     a2,a0,a1
                    #      new_var temp_88_50:i32 
                    #      temp_88_50 = Add i32 4_0, temp_87_50 
    sw      a0,1272(sp)
    li      a0, 4
    sw      a1,896(sp)
    add     a1,a0,a2
                    #      j4_50 = i32 temp_88_50 
    mv      a0, a1
                    #      new_var temp_89_50:i32 
                    #      temp_89_50 = load *a29_0:ptr->i32 
    sw      a0,1256(sp)
                    #   load label a29 as ptr to reg
    la      a0, a29
                    #occupy reg a0 with *a29_0
    sw      a1,888(sp)
    lw      a1,0(a0)
                    #      new_var temp_90_50:i32 
                    #      temp_90_50 = Add i32 j1_50, temp_89_50 
    sw      a2,892(sp)
    add     a2,a0,a1
                    #      new_var temp_91_50:i32 
                    #      temp_91_50 = Add i32 1_0, temp_90_50 
    sw      a0,1268(sp)
    li      a0, 1
    sw      a1,884(sp)
    add     a1,a0,a2
                    #      k1_50 = i32 temp_91_50 
    mv      a0, a1
                    #      new_var temp_92_50:i32 
                    #      temp_92_50 = load *a30_0:ptr->i32 
    sw      a0,1252(sp)
                    #   load label a30 as ptr to reg
    la      a0, a30
                    #occupy reg a0 with *a30_0
    sw      a1,876(sp)
    lw      a1,0(a0)
                    #      new_var temp_93_50:i32 
                    #      temp_93_50 = Add i32 j2_50, temp_92_50 
    sw      a2,880(sp)
    add     a2,a0,a1
                    #      new_var temp_94_50:i32 
                    #      temp_94_50 = Add i32 2_0, temp_93_50 
    sw      a0,1264(sp)
    li      a0, 2
    sw      a1,872(sp)
    add     a1,a0,a2
                    #      k2_50 = i32 temp_94_50 
    mv      a0, a1
                    #      new_var temp_95_50:i32 
                    #      temp_95_50 = load *a31_0:ptr->i32 
    sw      a0,1248(sp)
                    #   load label a31 as ptr to reg
    la      a0, a31
                    #occupy reg a0 with *a31_0
    sw      a1,864(sp)
    lw      a1,0(a0)
                    #      new_var temp_96_50:i32 
                    #      temp_96_50 = Add i32 j3_50, temp_95_50 
    sw      a2,868(sp)
    add     a2,a0,a1
                    #      new_var temp_97_50:i32 
                    #      temp_97_50 = Add i32 3_0, temp_96_50 
    sw      a0,1260(sp)
    li      a0, 3
    sw      a1,860(sp)
    add     a1,a0,a2
                    #      k3_50 = i32 temp_97_50 
    mv      a0, a1
                    #      new_var temp_98_50:i32 
                    #      temp_98_50 = load *a32_0:ptr->i32 
    sw      a0,1244(sp)
                    #   load label a32 as ptr to reg
    la      a0, a32
                    #occupy reg a0 with *a32_0
    sw      a1,852(sp)
    lw      a1,0(a0)
                    #      new_var temp_99_50:i32 
                    #      temp_99_50 = Add i32 j4_50, temp_98_50 
    sw      a2,856(sp)
    add     a2,a0,a1
                    #      new_var temp_100_50:i32 
                    #      temp_100_50 = Add i32 4_0, temp_99_50 
    sw      a0,1256(sp)
    li      a0, 4
    sw      a1,848(sp)
    add     a1,a0,a2
                    #      k4_50 = i32 temp_100_50 
    mv      a0, a1
                    #      new_var temp_101_50:i32 
                    #      temp_101_50 = Add i32 b_48, 10_0 
    sw      a0,1240(sp)
    sw      a1,840(sp)
    li      a1, 10
    sw      a2,844(sp)
    add     a2,a0,a1
                    #      new_var temp_102_50:i32 
                    #      temp_102_50 = Sub i32 a_48, temp_101_50 
    sw      a0,1392(sp)
    sub     a0,a1,a2
                    #      i_50 = i32 temp_102_50 
                    #      new_var temp_103_50:i32 
                    #      temp_103_50 = load *a29_0:ptr->i32 
    sw      a0,832(sp)
                    #   load label a29 as ptr to reg
    la      a0, a29
                    #occupy reg a0 with *a29_0
    sw      a1,1396(sp)
    lw      a1,0(a0)
                    #      new_var temp_104_50:i32 
                    #      temp_104_50 = Add i32 j1_50, temp_103_50 
    sw      a2,836(sp)
    add     a2,a0,a1
                    #      new_var temp_105_50:i32 
                    #      temp_105_50 = Add i32 1_0, temp_104_50 
    sw      a0,1268(sp)
    li      a0, 1
    sw      a1,828(sp)
    add     a1,a0,a2
                    #      k1_50 = i32 temp_105_50 
    mv      a0, a1
                    #      new_var temp_106_50:i32 
                    #      temp_106_50 = load *a30_0:ptr->i32 
    sw      a0,1252(sp)
                    #   load label a30 as ptr to reg
    la      a0, a30
                    #occupy reg a0 with *a30_0
    sw      a1,820(sp)
    lw      a1,0(a0)
                    #      new_var temp_107_50:i32 
                    #      temp_107_50 = Add i32 j2_50, temp_106_50 
    sw      a2,824(sp)
    add     a2,a0,a1
                    #      new_var temp_108_50:i32 
                    #      temp_108_50 = Add i32 2_0, temp_107_50 
    sw      a0,1264(sp)
    li      a0, 2
    sw      a1,816(sp)
    add     a1,a0,a2
                    #      k2_50 = i32 temp_108_50 
    mv      a0, a1
                    #      new_var temp_109_50:i32 
                    #      temp_109_50 = load *a31_0:ptr->i32 
    sw      a0,1248(sp)
                    #   load label a31 as ptr to reg
    la      a0, a31
                    #occupy reg a0 with *a31_0
    sw      a1,808(sp)
    lw      a1,0(a0)
                    #      new_var temp_110_50:i32 
                    #      temp_110_50 = Add i32 j3_50, temp_109_50 
    sw      a2,812(sp)
    add     a2,a0,a1
                    #      new_var temp_111_50:i32 
                    #      temp_111_50 = Add i32 3_0, temp_110_50 
    sw      a0,1260(sp)
    li      a0, 3
    sw      a1,804(sp)
    add     a1,a0,a2
                    #      k3_50 = i32 temp_111_50 
    mv      a0, a1
                    #      new_var temp_112_50:i32 
                    #      temp_112_50 = load *a32_0:ptr->i32 
    sw      a0,1244(sp)
                    #   load label a32 as ptr to reg
    la      a0, a32
                    #occupy reg a0 with *a32_0
    sw      a1,796(sp)
    lw      a1,0(a0)
                    #      new_var temp_113_50:i32 
                    #      temp_113_50 = Add i32 j4_50, temp_112_50 
    sw      a2,800(sp)
    add     a2,a0,a1
                    #      new_var temp_114_50:i32 
                    #      temp_114_50 = Add i32 4_0, temp_113_50 
    sw      a0,1256(sp)
    li      a0, 4
    sw      a1,792(sp)
    add     a1,a0,a2
                    #      k4_50 = i32 temp_114_50 
    mv      a0, a1
                    #      new_var temp_115_50:i32 
                    #      temp_115_50 = load *a25_0:ptr->i32 
    sw      a0,1240(sp)
                    #   load label a25 as ptr to reg
    la      a0, a25
                    #occupy reg a0 with *a25_0
    sw      a1,784(sp)
    lw      a1,0(a0)
                    #      new_var temp_116_50:i32 
                    #      temp_116_50 = Add i32 i1_50, temp_115_50 
    sw      a2,788(sp)
    add     a2,a0,a1
                    #      new_var temp_117_50:i32 
                    #      temp_117_50 = Add i32 1_0, temp_116_50 
    sw      a0,1284(sp)
    li      a0, 1
    sw      a1,780(sp)
    add     a1,a0,a2
                    #      j1_50 = i32 temp_117_50 
    mv      a0, a1
                    #      new_var temp_118_50:i32 
                    #      temp_118_50 = load *a26_0:ptr->i32 
    sw      a0,1268(sp)
                    #   load label a26 as ptr to reg
    la      a0, a26
                    #occupy reg a0 with *a26_0
    sw      a1,772(sp)
    lw      a1,0(a0)
                    #      new_var temp_119_50:i32 
                    #      temp_119_50 = Add i32 i2_50, temp_118_50 
    sw      a2,776(sp)
    add     a2,a0,a1
                    #      new_var temp_120_50:i32 
                    #      temp_120_50 = Add i32 2_0, temp_119_50 
    sw      a0,1280(sp)
    li      a0, 2
    sw      a1,768(sp)
    add     a1,a0,a2
                    #      j2_50 = i32 temp_120_50 
    mv      a0, a1
                    #      new_var temp_121_50:i32 
                    #      temp_121_50 = load *a27_0:ptr->i32 
    sw      a0,1264(sp)
                    #   load label a27 as ptr to reg
    la      a0, a27
                    #occupy reg a0 with *a27_0
    sw      a1,760(sp)
    lw      a1,0(a0)
                    #      new_var temp_122_50:i32 
                    #      temp_122_50 = Add i32 i3_50, temp_121_50 
    sw      a2,764(sp)
    add     a2,a0,a1
                    #      new_var temp_123_50:i32 
                    #      temp_123_50 = Add i32 3_0, temp_122_50 
    sw      a0,1276(sp)
    li      a0, 3
    sw      a1,756(sp)
    add     a1,a0,a2
                    #      j3_50 = i32 temp_123_50 
    mv      a0, a1
                    #      new_var temp_124_50:i32 
                    #      temp_124_50 = load *a28_0:ptr->i32 
    sw      a0,1260(sp)
                    #   load label a28 as ptr to reg
    la      a0, a28
                    #occupy reg a0 with *a28_0
    sw      a1,748(sp)
    lw      a1,0(a0)
                    #      new_var temp_125_50:i32 
                    #      temp_125_50 = Add i32 i4_50, temp_124_50 
    sw      a2,752(sp)
    add     a2,a0,a1
                    #      new_var temp_126_50:i32 
                    #      temp_126_50 = Add i32 4_0, temp_125_50 
    sw      a0,1272(sp)
    li      a0, 4
    sw      a1,744(sp)
    add     a1,a0,a2
                    #      j4_50 = i32 temp_126_50 
    mv      a0, a1
                    #      new_var temp_127_50:i32 
                    #      temp_127_50 = load *a21_0:ptr->i32 
    sw      a0,1256(sp)
                    #   load label a21 as ptr to reg
    la      a0, a21
                    #occupy reg a0 with *a21_0
    sw      a1,736(sp)
    lw      a1,0(a0)
                    #      new_var temp_128_50:i32 
                    #      temp_128_50 = Add i32 h1_50, temp_127_50 
    sw      a2,740(sp)
    add     a2,a0,a1
                    #      new_var temp_129_50:i32 
                    #      temp_129_50 = Add i32 1_0, temp_128_50 
    sw      a0,1300(sp)
    li      a0, 1
    sw      a1,732(sp)
    add     a1,a0,a2
                    #      i1_50 = i32 temp_129_50 
    mv      a0, a1
                    #      new_var temp_130_50:i32 
                    #      temp_130_50 = load *a22_0:ptr->i32 
    sw      a0,1284(sp)
                    #   load label a22 as ptr to reg
    la      a0, a22
                    #occupy reg a0 with *a22_0
    sw      a1,724(sp)
    lw      a1,0(a0)
                    #      new_var temp_131_50:i32 
                    #      temp_131_50 = Add i32 h2_50, temp_130_50 
    sw      a2,728(sp)
    add     a2,a0,a1
                    #      new_var temp_132_50:i32 
                    #      temp_132_50 = Add i32 2_0, temp_131_50 
    sw      a0,1296(sp)
    li      a0, 2
    sw      a1,720(sp)
    add     a1,a0,a2
                    #      i2_50 = i32 temp_132_50 
    mv      a0, a1
                    #      new_var temp_133_50:i32 
                    #      temp_133_50 = load *a23_0:ptr->i32 
    sw      a0,1280(sp)
                    #   load label a23 as ptr to reg
    la      a0, a23
                    #occupy reg a0 with *a23_0
    sw      a1,712(sp)
    lw      a1,0(a0)
                    #      new_var temp_134_50:i32 
                    #      temp_134_50 = Add i32 h3_50, temp_133_50 
    sw      a2,716(sp)
    add     a2,a0,a1
                    #      new_var temp_135_50:i32 
                    #      temp_135_50 = Add i32 3_0, temp_134_50 
    sw      a0,1292(sp)
    li      a0, 3
    sw      a1,708(sp)
    add     a1,a0,a2
                    #      i3_50 = i32 temp_135_50 
    mv      a0, a1
                    #      new_var temp_136_50:i32 
                    #      temp_136_50 = load *a24_0:ptr->i32 
    sw      a0,1276(sp)
                    #   load label a24 as ptr to reg
    la      a0, a24
                    #occupy reg a0 with *a24_0
    sw      a1,700(sp)
    lw      a1,0(a0)
                    #      new_var temp_137_50:i32 
                    #      temp_137_50 = Add i32 h4_50, temp_136_50 
    sw      a2,704(sp)
    add     a2,a0,a1
                    #      new_var temp_138_50:i32 
                    #      temp_138_50 = Add i32 4_0, temp_137_50 
    sw      a0,1288(sp)
    li      a0, 4
    sw      a1,696(sp)
    add     a1,a0,a2
                    #      i4_50 = i32 temp_138_50 
    mv      a0, a1
                    #      new_var temp_139_50:i32 
                    #      temp_139_50 = load *a17_0:ptr->i32 
    sw      a0,1272(sp)
                    #   load label a17 as ptr to reg
    la      a0, a17
                    #occupy reg a0 with *a17_0
    sw      a1,688(sp)
    lw      a1,0(a0)
                    #      new_var temp_140_50:i32 
                    #      temp_140_50 = Add i32 g1_50, temp_139_50 
    sw      a2,692(sp)
    add     a2,a0,a1
                    #      new_var temp_141_50:i32 
                    #      temp_141_50 = Add i32 1_0, temp_140_50 
    sw      a0,1316(sp)
    li      a0, 1
    sw      a1,684(sp)
    add     a1,a0,a2
                    #      h1_50 = i32 temp_141_50 
    mv      a0, a1
                    #      new_var temp_142_50:i32 
                    #      temp_142_50 = load *a18_0:ptr->i32 
    sw      a0,1300(sp)
                    #   load label a18 as ptr to reg
    la      a0, a18
                    #occupy reg a0 with *a18_0
    sw      a1,676(sp)
    lw      a1,0(a0)
                    #      new_var temp_143_50:i32 
                    #      temp_143_50 = Add i32 g2_50, temp_142_50 
    sw      a2,680(sp)
    add     a2,a0,a1
                    #      new_var temp_144_50:i32 
                    #      temp_144_50 = Add i32 2_0, temp_143_50 
    sw      a0,1312(sp)
    li      a0, 2
    sw      a1,672(sp)
    add     a1,a0,a2
                    #      h2_50 = i32 temp_144_50 
    mv      a0, a1
                    #      new_var temp_145_50:i32 
                    #      temp_145_50 = load *a19_0:ptr->i32 
    sw      a0,1296(sp)
                    #   load label a19 as ptr to reg
    la      a0, a19
                    #occupy reg a0 with *a19_0
    sw      a1,664(sp)
    lw      a1,0(a0)
                    #      new_var temp_146_50:i32 
                    #      temp_146_50 = Add i32 g3_50, temp_145_50 
    sw      a2,668(sp)
    add     a2,a0,a1
                    #      new_var temp_147_50:i32 
                    #      temp_147_50 = Add i32 3_0, temp_146_50 
    sw      a0,1308(sp)
    li      a0, 3
    sw      a1,660(sp)
    add     a1,a0,a2
                    #      h3_50 = i32 temp_147_50 
    mv      a0, a1
                    #      new_var temp_148_50:i32 
                    #      temp_148_50 = load *a20_0:ptr->i32 
    sw      a0,1292(sp)
                    #   load label a20 as ptr to reg
    la      a0, a20
                    #occupy reg a0 with *a20_0
    sw      a1,652(sp)
    lw      a1,0(a0)
                    #      new_var temp_149_50:i32 
                    #      temp_149_50 = Add i32 g4_50, temp_148_50 
    sw      a2,656(sp)
    add     a2,a0,a1
                    #      new_var temp_150_50:i32 
                    #      temp_150_50 = Add i32 4_0, temp_149_50 
    sw      a0,1304(sp)
    li      a0, 4
    sw      a1,648(sp)
    add     a1,a0,a2
                    #      h4_50 = i32 temp_150_50 
    mv      a0, a1
                    #      new_var temp_151_50:i32 
                    #      temp_151_50 = load *a13_0:ptr->i32 
    sw      a0,1288(sp)
                    #   load label a13 as ptr to reg
    la      a0, a13
                    #occupy reg a0 with *a13_0
    sw      a1,640(sp)
    lw      a1,0(a0)
                    #      new_var temp_152_50:i32 
                    #      temp_152_50 = Add i32 f1_50, temp_151_50 
    sw      a2,644(sp)
    add     a2,a0,a1
                    #      new_var temp_153_50:i32 
                    #      temp_153_50 = Add i32 1_0, temp_152_50 
    sw      a0,1332(sp)
    li      a0, 1
    sw      a1,636(sp)
    add     a1,a0,a2
                    #      g1_50 = i32 temp_153_50 
    mv      a0, a1
                    #      new_var temp_154_50:i32 
                    #      temp_154_50 = load *a14_0:ptr->i32 
    sw      a0,1316(sp)
                    #   load label a14 as ptr to reg
    la      a0, a14
                    #occupy reg a0 with *a14_0
    sw      a1,628(sp)
    lw      a1,0(a0)
                    #      new_var temp_155_50:i32 
                    #      temp_155_50 = Add i32 f2_50, temp_154_50 
    sw      a2,632(sp)
    add     a2,a0,a1
                    #      new_var temp_156_50:i32 
                    #      temp_156_50 = Add i32 2_0, temp_155_50 
    sw      a0,1328(sp)
    li      a0, 2
    sw      a1,624(sp)
    add     a1,a0,a2
                    #      g2_50 = i32 temp_156_50 
    mv      a0, a1
                    #      new_var temp_157_50:i32 
                    #      temp_157_50 = load *a15_0:ptr->i32 
    sw      a0,1312(sp)
                    #   load label a15 as ptr to reg
    la      a0, a15
                    #occupy reg a0 with *a15_0
    sw      a1,616(sp)
    lw      a1,0(a0)
                    #      new_var temp_158_50:i32 
                    #      temp_158_50 = Add i32 f3_50, temp_157_50 
    sw      a2,620(sp)
    add     a2,a0,a1
                    #      new_var temp_159_50:i32 
                    #      temp_159_50 = Add i32 3_0, temp_158_50 
    sw      a0,1324(sp)
    li      a0, 3
    sw      a1,612(sp)
    add     a1,a0,a2
                    #      g3_50 = i32 temp_159_50 
    mv      a0, a1
                    #      new_var temp_160_50:i32 
                    #      temp_160_50 = load *a16_0:ptr->i32 
    sw      a0,1308(sp)
                    #   load label a16 as ptr to reg
    la      a0, a16
                    #occupy reg a0 with *a16_0
    sw      a1,604(sp)
    lw      a1,0(a0)
                    #      new_var temp_161_50:i32 
                    #      temp_161_50 = Add i32 f4_50, temp_160_50 
    sw      a2,608(sp)
    add     a2,a0,a1
                    #      new_var temp_162_50:i32 
                    #      temp_162_50 = Add i32 4_0, temp_161_50 
    sw      a0,1320(sp)
    li      a0, 4
    sw      a1,600(sp)
    add     a1,a0,a2
                    #      g4_50 = i32 temp_162_50 
    mv      a0, a1
                    #      new_var temp_163_50:i32 
                    #      temp_163_50 = load *a9_0:ptr->i32 
    sw      a0,1304(sp)
                    #   load label a9 as ptr to reg
    la      a0, a9
                    #occupy reg a0 with *a9_0
    sw      a1,592(sp)
    lw      a1,0(a0)
                    #      new_var temp_164_50:i32 
                    #      temp_164_50 = Add i32 e1_50, temp_163_50 
    sw      a2,596(sp)
    add     a2,a0,a1
                    #      new_var temp_165_50:i32 
                    #      temp_165_50 = Add i32 1_0, temp_164_50 
    sw      a0,1348(sp)
    li      a0, 1
    sw      a1,588(sp)
    add     a1,a0,a2
                    #      f1_50 = i32 temp_165_50 
    mv      a0, a1
                    #      new_var temp_166_50:i32 
                    #      temp_166_50 = load *a10_0:ptr->i32 
    sw      a0,1332(sp)
                    #   load label a10 as ptr to reg
    la      a0, a10
                    #occupy reg a0 with *a10_0
    sw      a1,580(sp)
    lw      a1,0(a0)
                    #      new_var temp_167_50:i32 
                    #      temp_167_50 = Add i32 e2_50, temp_166_50 
    sw      a2,584(sp)
    add     a2,a0,a1
                    #      new_var temp_168_50:i32 
                    #      temp_168_50 = Add i32 2_0, temp_167_50 
    sw      a0,1344(sp)
    li      a0, 2
    sw      a1,576(sp)
    add     a1,a0,a2
                    #      f2_50 = i32 temp_168_50 
    mv      a0, a1
                    #      new_var temp_169_50:i32 
                    #      temp_169_50 = load *a11_0:ptr->i32 
    sw      a0,1328(sp)
                    #   load label a11 as ptr to reg
    la      a0, a11
                    #occupy reg a0 with *a11_0
    sw      a1,568(sp)
    lw      a1,0(a0)
                    #      new_var temp_170_50:i32 
                    #      temp_170_50 = Add i32 e3_50, temp_169_50 
    sw      a2,572(sp)
    add     a2,a0,a1
                    #      new_var temp_171_50:i32 
                    #      temp_171_50 = Add i32 3_0, temp_170_50 
    sw      a0,1340(sp)
    li      a0, 3
    sw      a1,564(sp)
    add     a1,a0,a2
                    #      f3_50 = i32 temp_171_50 
    mv      a0, a1
                    #      new_var temp_172_50:i32 
                    #      temp_172_50 = load *a12_0:ptr->i32 
    sw      a0,1324(sp)
                    #   load label a12 as ptr to reg
    la      a0, a12
                    #occupy reg a0 with *a12_0
    sw      a1,556(sp)
    lw      a1,0(a0)
                    #      new_var temp_173_50:i32 
                    #      temp_173_50 = Add i32 e4_50, temp_172_50 
    sw      a2,560(sp)
    add     a2,a0,a1
                    #      new_var temp_174_50:i32 
                    #      temp_174_50 = Add i32 4_0, temp_173_50 
    sw      a0,1336(sp)
    li      a0, 4
    sw      a1,552(sp)
    add     a1,a0,a2
                    #      f4_50 = i32 temp_174_50 
    mv      a0, a1
                    #      new_var temp_175_50:i32 
                    #      temp_175_50 = load *a5_0:ptr->i32 
    sw      a0,1320(sp)
                    #   load label a5 as ptr to reg
    la      a0, a5
                    #occupy reg a0 with *a5_0
    sw      a1,544(sp)
    lw      a1,0(a0)
                    #      new_var temp_176_50:i32 
                    #      temp_176_50 = Add i32 d1_50, temp_175_50 
    add     a0,s6,a1
                    #      new_var temp_177_50:i32 
                    #      temp_177_50 = Add i32 1_0, temp_176_50 
    sw      a0,536(sp)
    li      a0, 1
    sw      a1,540(sp)
    sw      a2,548(sp)
    add     a2,a0,a1
                    #      e1_50 = i32 temp_177_50 
    mv      a0, a2
                    #      new_var temp_178_50:i32 
                    #      temp_178_50 = load *a6_0:ptr->i32 
    sw      a0,1348(sp)
                    #   load label a6 as ptr to reg
    la      a0, a6
                    #occupy reg a0 with *a6_0
    sw      a1,536(sp)
    lw      a1,0(a0)
                    #      new_var temp_179_50:i32 
                    #      temp_179_50 = Add i32 d2_50, temp_178_50 
    add     a0,s1,a1
                    #      new_var temp_180_50:i32 
                    #      temp_180_50 = Add i32 2_0, temp_179_50 
    sw      a0,524(sp)
    li      a0, 2
    sw      a1,528(sp)
    sw      a2,532(sp)
    add     a2,a0,a1
                    #      e2_50 = i32 temp_180_50 
    mv      a0, a2
                    #      new_var temp_181_50:i32 
                    #      temp_181_50 = load *a7_0:ptr->i32 
    sw      a0,1344(sp)
                    #   load label a7 as ptr to reg
    la      a0, a7
                    #occupy reg a0 with *a7_0
    sw      a1,524(sp)
    lw      a1,0(a0)
                    #      new_var temp_182_50:i32 
                    #      temp_182_50 = Add i32 d3_50, temp_181_50 
    add     a0,s10,a1
                    #      new_var temp_183_50:i32 
                    #      temp_183_50 = Add i32 3_0, temp_182_50 
    sw      a0,512(sp)
    li      a0, 3
    sw      a1,516(sp)
    sw      a2,520(sp)
    add     a2,a0,a1
                    #      e3_50 = i32 temp_183_50 
    mv      a0, a2
                    #      new_var temp_184_50:i32 
                    #      temp_184_50 = load *a8_0:ptr->i32 
    sw      a0,1340(sp)
                    #   load label a8 as ptr to reg
    la      a0, a8
                    #occupy reg a0 with *a8_0
    sw      a1,512(sp)
    lw      a1,0(a0)
                    #      new_var temp_185_50:i32 
                    #      temp_185_50 = Add i32 d4_50, temp_184_50 
    sw      a2,508(sp)
    add     a2,a0,a1
                    #      new_var temp_186_50:i32 
                    #      temp_186_50 = Add i32 4_0, temp_185_50 
    sw      a0,1352(sp)
    li      a0, 4
    sw      a1,504(sp)
    add     a1,a0,a2
                    #      e4_50 = i32 temp_186_50 
    mv      a0, a1
                    #      new_var temp_187_50:i32 
                    #      temp_187_50 = load *a1_0:ptr->i32 
    sw      a0,1336(sp)
                    #   load label a1 as ptr to reg
    la      a0, a1
                    #occupy reg a0 with *a1_0
    sw      a1,496(sp)
    lw      a1,0(a0)
                    #      new_var temp_188_50:i32 
                    #      temp_188_50 = Add i32 c1_50, temp_187_50 
    add     a0,a4,a1
                    #      new_var temp_189_50:i32 
                    #      temp_189_50 = Add i32 1_0, temp_188_50 
    sw      a0,488(sp)
    li      a0, 1
    sw      a1,492(sp)
    sw      a2,500(sp)
    add     a2,a0,a1
                    #      d1_50 = i32 temp_189_50 
                    #      new_var temp_190_50:i32 
                    #      temp_190_50 = load *a2_0:ptr->i32 
                    #   load label a2 as ptr to reg
    la      a0, a2
                    #occupy reg a0 with *a2_0
    sw      a1,488(sp)
    lw      a1,0(a0)
                    #      new_var temp_191_50:i32 
                    #      temp_191_50 = Add i32 c2_50, temp_190_50 
    add     a0,a5,a1
                    #      new_var temp_192_50:i32 
                    #      temp_192_50 = Add i32 2_0, temp_191_50 
    sw      a0,476(sp)
    li      a0, 2
    sw      a1,480(sp)
    sw      a2,484(sp)
    add     a2,a0,a1
                    #      d2_50 = i32 temp_192_50 
                    #      new_var temp_193_50:i32 
                    #      temp_193_50 = load *a3_0:ptr->i32 
                    #   load label a3 as ptr to reg
    la      a0, a3
                    #occupy reg a0 with *a3_0
    sw      a1,476(sp)
    lw      a1,0(a0)
                    #      new_var temp_194_50:i32 
                    #      temp_194_50 = Add i32 c3_50, temp_193_50 
    add     a0,a6,a1
                    #      new_var temp_195_50:i32 
                    #      temp_195_50 = Add i32 3_0, temp_194_50 
    sw      a0,464(sp)
    li      a0, 3
    sw      a1,468(sp)
    sw      a2,472(sp)
    add     a2,a0,a1
                    #      d3_50 = i32 temp_195_50 
                    #      new_var temp_196_50:i32 
                    #      temp_196_50 = load *a4_0:ptr->i32 
                    #   load label a4 as ptr to reg
    la      a0, a4
                    #occupy reg a0 with *a4_0
    sw      a1,464(sp)
    lw      a1,0(a0)
                    #      new_var temp_197_50:i32 
                    #      temp_197_50 = Add i32 c4_50, temp_196_50 
    add     a0,a7,a1
                    #      new_var temp_198_50:i32 
                    #      temp_198_50 = Add i32 4_0, temp_197_50 
    sw      a0,452(sp)
    li      a0, 4
    sw      a1,456(sp)
    sw      a2,460(sp)
    add     a2,a0,a1
                    #      d4_50 = i32 temp_198_50 
    mv      a0, a2
                    #      new_var temp_199_50:i32 
                    #      temp_199_50 = load *a1_0:ptr->i32 
    sw      a0,1352(sp)
                    #   load label a1 as ptr to reg
    la      a0, a1
                    #occupy reg a0 with *a1_0
    sw      a1,452(sp)
    lw      a1,0(a0)
                    #      new_var temp_200_50:i32 
                    #      temp_200_50 = Add i32 c1_50, temp_199_50 
    add     a0,a4,a1
                    #      new_var temp_201_50:i32 
                    #      temp_201_50 = Add i32 1_0, temp_200_50 
    sw      a0,440(sp)
    li      a0, 1
    sw      a1,444(sp)
    sw      a2,448(sp)
    add     a2,a0,a1
                    #      d1_50 = i32 temp_201_50 
                    #      new_var temp_202_50:i32 
                    #      temp_202_50 = load *a2_0:ptr->i32 
                    #   load label a2 as ptr to reg
    la      a0, a2
                    #occupy reg a0 with *a2_0
    sw      a1,440(sp)
    lw      a1,0(a0)
                    #      new_var temp_203_50:i32 
                    #      temp_203_50 = Add i32 c2_50, temp_202_50 
    add     a0,a5,a1
                    #      new_var temp_204_50:i32 
                    #      temp_204_50 = Add i32 2_0, temp_203_50 
    sw      a0,428(sp)
    li      a0, 2
    sw      a1,432(sp)
    sw      a2,436(sp)
    add     a2,a0,a1
                    #      d2_50 = i32 temp_204_50 
                    #      new_var temp_205_50:i32 
                    #      temp_205_50 = load *a3_0:ptr->i32 
                    #   load label a3 as ptr to reg
    la      a0, a3
                    #occupy reg a0 with *a3_0
    sw      a1,428(sp)
    lw      a1,0(a0)
                    #      new_var temp_206_50:i32 
                    #      temp_206_50 = Add i32 c3_50, temp_205_50 
    add     a0,a6,a1
                    #      new_var temp_207_50:i32 
                    #      temp_207_50 = Add i32 3_0, temp_206_50 
    sw      a0,416(sp)
    li      a0, 3
    sw      a1,420(sp)
    sw      a2,424(sp)
    add     a2,a0,a1
                    #      d3_50 = i32 temp_207_50 
                    #      new_var temp_208_50:i32 
                    #      temp_208_50 = load *a4_0:ptr->i32 
                    #   load label a4 as ptr to reg
    la      a0, a4
                    #occupy reg a0 with *a4_0
    sw      a1,416(sp)
    lw      a1,0(a0)
                    #      new_var temp_209_50:i32 
                    #      temp_209_50 = Add i32 c4_50, temp_208_50 
    add     a0,a7,a1
                    #      new_var temp_210_50:i32 
                    #      temp_210_50 = Add i32 4_0, temp_209_50 
    sw      a0,404(sp)
    li      a0, 4
    sw      a1,408(sp)
    sw      a2,412(sp)
    add     a2,a0,a1
                    #      d4_50 = i32 temp_210_50 
    mv      a0, a2
                    #      new_var temp_211_50:i32 
                    #      temp_211_50 = load *a32_0:ptr->i32 
    sw      a0,1352(sp)
                    #   load label a32 as ptr to reg
    la      a0, a32
                    #occupy reg a0 with *a32_0
    sw      a1,404(sp)
    lw      a1,0(a0)
                    #      new_var temp_212_50:i32 
                    #      temp_212_50 = load *a31_0:ptr->i32 
                    #   load label a31 as ptr to reg
    la      a0, a31
                    #occupy reg a0 with *a31_0
    sw      a1,396(sp)
    lw      a1,0(a0)
                    #      new_var temp_213_50:i32 
                    #      temp_213_50 = Sub i32 temp_212_50, temp_211_50 
    sw      a2,400(sp)
    sub     a2,a1,a0
                    #      new_var temp_214_50:i32 
                    #      temp_214_50 = load *a30_0:ptr->i32 
    sw      a0,396(sp)
                    #   load label a30 as ptr to reg
    la      a0, a30
                    #occupy reg a0 with *a30_0
    sw      a1,392(sp)
    lw      a1,0(a0)
                    #      new_var temp_215_50:i32 
                    #      temp_215_50 = Add i32 temp_214_50, temp_213_50 
    add     a0,a1,a2
                    #      new_var temp_216_50:i32 
                    #      temp_216_50 = load *a29_0:ptr->i32 
    sw      a0,380(sp)
                    #   load label a29 as ptr to reg
    la      a0, a29
                    #occupy reg a0 with *a29_0
    sw      a1,384(sp)
    lw      a1,0(a0)
                    #      new_var temp_217_50:i32 
                    #      temp_217_50 = Sub i32 temp_216_50, temp_215_50 
    sw      a2,388(sp)
    sub     a2,a1,a0
                    #      new_var temp_218_50:i32 
                    #      temp_218_50 = load *a28_0:ptr->i32 
    sw      a0,380(sp)
                    #   load label a28 as ptr to reg
    la      a0, a28
                    #occupy reg a0 with *a28_0
    sw      a1,376(sp)
    lw      a1,0(a0)
                    #      new_var temp_219_50:i32 
                    #      temp_219_50 = Add i32 temp_218_50, temp_217_50 
    add     a0,a1,a2
                    #      new_var temp_220_50:i32 
                    #      temp_220_50 = load *a27_0:ptr->i32 
    sw      a0,364(sp)
                    #   load label a27 as ptr to reg
    la      a0, a27
                    #occupy reg a0 with *a27_0
    sw      a1,368(sp)
    lw      a1,0(a0)
                    #      new_var temp_221_50:i32 
                    #      temp_221_50 = Sub i32 temp_220_50, temp_219_50 
    sw      a2,372(sp)
    sub     a2,a1,a0
                    #      new_var temp_222_50:i32 
                    #      temp_222_50 = load *a26_0:ptr->i32 
    sw      a0,364(sp)
                    #   load label a26 as ptr to reg
    la      a0, a26
                    #occupy reg a0 with *a26_0
    sw      a1,360(sp)
    lw      a1,0(a0)
                    #      new_var temp_223_50:i32 
                    #      temp_223_50 = Add i32 temp_222_50, temp_221_50 
    add     a0,a1,a2
                    #      new_var temp_224_50:i32 
                    #      temp_224_50 = load *a25_0:ptr->i32 
    sw      a0,348(sp)
                    #   load label a25 as ptr to reg
    la      a0, a25
                    #occupy reg a0 with *a25_0
    sw      a1,352(sp)
    lw      a1,0(a0)
                    #      new_var temp_225_50:i32 
                    #      temp_225_50 = Sub i32 temp_224_50, temp_223_50 
    sw      a2,356(sp)
    sub     a2,a1,a0
                    #      new_var temp_226_50:i32 
                    #      temp_226_50 = load *a24_0:ptr->i32 
    sw      a0,348(sp)
                    #   load label a24 as ptr to reg
    la      a0, a24
                    #occupy reg a0 with *a24_0
    sw      a1,344(sp)
    lw      a1,0(a0)
                    #      new_var temp_227_50:i32 
                    #      temp_227_50 = Add i32 temp_226_50, temp_225_50 
    add     a0,a1,a2
                    #      new_var temp_228_50:i32 
                    #      temp_228_50 = load *a23_0:ptr->i32 
    sw      a0,332(sp)
                    #   load label a23 as ptr to reg
    la      a0, a23
                    #occupy reg a0 with *a23_0
    sw      a1,336(sp)
    lw      a1,0(a0)
                    #      new_var temp_229_50:i32 
                    #      temp_229_50 = Sub i32 temp_228_50, temp_227_50 
    sw      a2,340(sp)
    sub     a2,a1,a0
                    #      new_var temp_230_50:i32 
                    #      temp_230_50 = load *a22_0:ptr->i32 
    sw      a0,332(sp)
                    #   load label a22 as ptr to reg
    la      a0, a22
                    #occupy reg a0 with *a22_0
    sw      a1,328(sp)
    lw      a1,0(a0)
                    #      new_var temp_231_50:i32 
                    #      temp_231_50 = Add i32 temp_230_50, temp_229_50 
    add     a0,a1,a2
                    #      new_var temp_232_50:i32 
                    #      temp_232_50 = load *a21_0:ptr->i32 
    sw      a0,316(sp)
                    #   load label a21 as ptr to reg
    la      a0, a21
                    #occupy reg a0 with *a21_0
    sw      a1,320(sp)
    lw      a1,0(a0)
                    #      new_var temp_233_50:i32 
                    #      temp_233_50 = Sub i32 temp_232_50, temp_231_50 
    sw      a2,324(sp)
    sub     a2,a1,a0
                    #      new_var temp_234_50:i32 
                    #      temp_234_50 = load *a20_0:ptr->i32 
    sw      a0,316(sp)
                    #   load label a20 as ptr to reg
    la      a0, a20
                    #occupy reg a0 with *a20_0
    sw      a1,312(sp)
    lw      a1,0(a0)
                    #      new_var temp_235_50:i32 
                    #      temp_235_50 = Add i32 temp_234_50, temp_233_50 
    add     a0,a1,a2
                    #      new_var temp_236_50:i32 
                    #      temp_236_50 = load *a19_0:ptr->i32 
    sw      a0,300(sp)
                    #   load label a19 as ptr to reg
    la      a0, a19
                    #occupy reg a0 with *a19_0
    sw      a1,304(sp)
    lw      a1,0(a0)
                    #      new_var temp_237_50:i32 
                    #      temp_237_50 = Sub i32 temp_236_50, temp_235_50 
    sw      a2,308(sp)
    sub     a2,a1,a0
                    #      new_var temp_238_50:i32 
                    #      temp_238_50 = load *a18_0:ptr->i32 
    sw      a0,300(sp)
                    #   load label a18 as ptr to reg
    la      a0, a18
                    #occupy reg a0 with *a18_0
    sw      a1,296(sp)
    lw      a1,0(a0)
                    #      new_var temp_239_50:i32 
                    #      temp_239_50 = Add i32 temp_238_50, temp_237_50 
    add     a0,a1,a2
                    #      new_var temp_240_50:i32 
                    #      temp_240_50 = load *a17_0:ptr->i32 
    sw      a0,284(sp)
                    #   load label a17 as ptr to reg
    la      a0, a17
                    #occupy reg a0 with *a17_0
    sw      a1,288(sp)
    lw      a1,0(a0)
                    #      new_var temp_241_50:i32 
                    #      temp_241_50 = Sub i32 temp_240_50, temp_239_50 
    sw      a2,292(sp)
    sub     a2,a1,a0
                    #      new_var temp_242_50:i32 
                    #      temp_242_50 = load *a16_0:ptr->i32 
    sw      a0,284(sp)
                    #   load label a16 as ptr to reg
    la      a0, a16
                    #occupy reg a0 with *a16_0
    sw      a1,280(sp)
    lw      a1,0(a0)
                    #      new_var temp_243_50:i32 
                    #      temp_243_50 = Add i32 temp_242_50, temp_241_50 
    add     a0,a1,a2
                    #      new_var temp_244_50:i32 
                    #      temp_244_50 = load *a15_0:ptr->i32 
    sw      a0,268(sp)
                    #   load label a15 as ptr to reg
    la      a0, a15
                    #occupy reg a0 with *a15_0
    sw      a1,272(sp)
    lw      a1,0(a0)
                    #      new_var temp_245_50:i32 
                    #      temp_245_50 = Sub i32 temp_244_50, temp_243_50 
    sw      a2,276(sp)
    sub     a2,a1,a0
                    #      new_var temp_246_50:i32 
                    #      temp_246_50 = load *a14_0:ptr->i32 
    sw      a0,268(sp)
                    #   load label a14 as ptr to reg
    la      a0, a14
                    #occupy reg a0 with *a14_0
    sw      a1,264(sp)
    lw      a1,0(a0)
                    #      new_var temp_247_50:i32 
                    #      temp_247_50 = Add i32 temp_246_50, temp_245_50 
    add     a0,a1,a2
                    #      new_var temp_248_50:i32 
                    #      temp_248_50 = load *a13_0:ptr->i32 
    sw      a0,252(sp)
                    #   load label a13 as ptr to reg
    la      a0, a13
                    #occupy reg a0 with *a13_0
    sw      a1,256(sp)
    lw      a1,0(a0)
                    #      new_var temp_249_50:i32 
                    #      temp_249_50 = Sub i32 temp_248_50, temp_247_50 
    sw      a2,260(sp)
    sub     a2,a1,a0
                    #      new_var temp_250_50:i32 
                    #      temp_250_50 = load *a12_0:ptr->i32 
    sw      a0,252(sp)
                    #   load label a12 as ptr to reg
    la      a0, a12
                    #occupy reg a0 with *a12_0
    sw      a1,248(sp)
    lw      a1,0(a0)
                    #      new_var temp_251_50:i32 
                    #      temp_251_50 = Add i32 temp_250_50, temp_249_50 
    add     a0,a1,a2
                    #      new_var temp_252_50:i32 
                    #      temp_252_50 = load *a11_0:ptr->i32 
    sw      a0,236(sp)
                    #   load label a11 as ptr to reg
    la      a0, a11
                    #occupy reg a0 with *a11_0
    sw      a1,240(sp)
    lw      a1,0(a0)
                    #      new_var temp_253_50:i32 
                    #      temp_253_50 = Sub i32 temp_252_50, temp_251_50 
    sw      a2,244(sp)
    sub     a2,a1,a0
                    #      new_var temp_254_50:i32 
                    #      temp_254_50 = load *a10_0:ptr->i32 
    sw      a0,236(sp)
                    #   load label a10 as ptr to reg
    la      a0, a10
                    #occupy reg a0 with *a10_0
    sw      a1,232(sp)
    lw      a1,0(a0)
                    #      new_var temp_255_50:i32 
                    #      temp_255_50 = Add i32 temp_254_50, temp_253_50 
    add     a0,a1,a2
                    #      new_var temp_256_50:i32 
                    #      temp_256_50 = load *a9_0:ptr->i32 
    sw      a0,220(sp)
                    #   load label a9 as ptr to reg
    la      a0, a9
                    #occupy reg a0 with *a9_0
    sw      a1,224(sp)
    lw      a1,0(a0)
                    #      new_var temp_257_50:i32 
                    #      temp_257_50 = Sub i32 temp_256_50, temp_255_50 
    sw      a2,228(sp)
    sub     a2,a1,a0
                    #      new_var temp_258_50:i32 
                    #      temp_258_50 = load *a8_0:ptr->i32 
    sw      a0,220(sp)
                    #   load label a8 as ptr to reg
    la      a0, a8
                    #occupy reg a0 with *a8_0
    sw      a1,216(sp)
    lw      a1,0(a0)
                    #      new_var temp_259_50:i32 
                    #      temp_259_50 = Add i32 temp_258_50, temp_257_50 
    add     a0,a1,a2
                    #      new_var temp_260_50:i32 
                    #      temp_260_50 = load *a7_0:ptr->i32 
    sw      a0,204(sp)
                    #   load label a7 as ptr to reg
    la      a0, a7
                    #occupy reg a0 with *a7_0
    sw      a1,208(sp)
    lw      a1,0(a0)
                    #      new_var temp_261_50:i32 
                    #      temp_261_50 = Sub i32 temp_260_50, temp_259_50 
    sw      a2,212(sp)
    sub     a2,a1,a0
                    #      new_var temp_262_50:i32 
                    #      temp_262_50 = load *a6_0:ptr->i32 
    sw      a0,204(sp)
                    #   load label a6 as ptr to reg
    la      a0, a6
                    #occupy reg a0 with *a6_0
    sw      a1,200(sp)
    lw      a1,0(a0)
                    #      new_var temp_263_50:i32 
                    #      temp_263_50 = Add i32 temp_262_50, temp_261_50 
    add     a0,a1,a2
                    #      new_var temp_264_50:i32 
                    #      temp_264_50 = load *a5_0:ptr->i32 
    sw      a0,188(sp)
                    #   load label a5 as ptr to reg
    la      a0, a5
                    #occupy reg a0 with *a5_0
    sw      a1,192(sp)
    lw      a1,0(a0)
                    #      new_var temp_265_50:i32 
                    #      temp_265_50 = Sub i32 temp_264_50, temp_263_50 
    sw      a2,196(sp)
    sub     a2,a1,a0
                    #      new_var temp_266_50:i32 
                    #      temp_266_50 = load *a4_0:ptr->i32 
    sw      a0,188(sp)
                    #   load label a4 as ptr to reg
    la      a0, a4
                    #occupy reg a0 with *a4_0
    sw      a1,184(sp)
    lw      a1,0(a0)
                    #      new_var temp_267_50:i32 
                    #      temp_267_50 = Add i32 temp_266_50, temp_265_50 
    add     a0,a1,a2
                    #      new_var temp_268_50:i32 
                    #      temp_268_50 = load *a3_0:ptr->i32 
    sw      a0,172(sp)
                    #   load label a3 as ptr to reg
    la      a0, a3
                    #occupy reg a0 with *a3_0
    sw      a1,176(sp)
    lw      a1,0(a0)
                    #      new_var temp_269_50:i32 
                    #      temp_269_50 = Sub i32 temp_268_50, temp_267_50 
    sw      a2,180(sp)
    sub     a2,a1,a0
                    #      new_var temp_270_50:i32 
                    #      temp_270_50 = load *a2_0:ptr->i32 
    sw      a0,172(sp)
                    #   load label a2 as ptr to reg
    la      a0, a2
                    #occupy reg a0 with *a2_0
    sw      a1,168(sp)
    lw      a1,0(a0)
                    #      new_var temp_271_50:i32 
                    #      temp_271_50 = Add i32 temp_270_50, temp_269_50 
    add     a0,a1,a2
                    #      new_var temp_272_50:i32 
                    #      temp_272_50 = load *a1_0:ptr->i32 
    sw      a0,156(sp)
                    #   load label a1 as ptr to reg
    la      a0, a1
                    #occupy reg a0 with *a1_0
    sw      a1,160(sp)
    lw      a1,0(a0)
                    #      new_var temp_273_50:i32 
                    #      temp_273_50 = Sub i32 temp_272_50, temp_271_50 
    sw      a2,164(sp)
    sub     a2,a1,a0
                    #      new_var temp_274_50:i32 
                    #      temp_274_50 = Add i32 k4_50, temp_273_50 
    sw      a0,156(sp)
    sw      a1,152(sp)
    add     a1,a0,a2
                    #      new_var temp_275_50:i32 
                    #      temp_275_50 = Add i32 k3_50, temp_274_50 
    sw      a0,1240(sp)
    sw      a2,148(sp)
    add     a2,a0,a1
                    #      new_var temp_276_50:i32 
                    #      temp_276_50 = Add i32 k2_50, temp_275_50 
    sw      a0,1244(sp)
    sw      a1,144(sp)
    add     a1,a0,a2
                    #      new_var temp_277_50:i32 
                    #      temp_277_50 = Add i32 k1_50, temp_276_50 
    sw      a0,1248(sp)
    sw      a2,140(sp)
    add     a2,a0,a1
                    #      new_var temp_278_50:i32 
                    #      temp_278_50 = Add i32 j4_50, temp_277_50 
    sw      a0,1252(sp)
    sw      a1,136(sp)
    add     a1,a0,a2
                    #      new_var temp_279_50:i32 
                    #      temp_279_50 = Sub i32 j3_50, temp_278_50 
    sw      a0,1256(sp)
    sw      a2,132(sp)
    sub     a2,a0,a1
                    #      new_var temp_280_50:i32 
                    #      temp_280_50 = Sub i32 j2_50, temp_279_50 
    sw      a0,1260(sp)
    sw      a1,128(sp)
    sub     a1,a0,a2
                    #      new_var temp_281_50:i32 
                    #      temp_281_50 = Sub i32 j1_50, temp_280_50 
    sw      a0,1264(sp)
    sw      a2,124(sp)
    sub     a2,a0,a1
                    #      new_var temp_282_50:i32 
                    #      temp_282_50 = Sub i32 i4_50, temp_281_50 
    sw      a0,1268(sp)
    sw      a1,120(sp)
    sub     a1,a0,a2
                    #      new_var temp_283_50:i32 
                    #      temp_283_50 = Add i32 i3_50, temp_282_50 
    sw      a0,1272(sp)
    sw      a2,116(sp)
    add     a2,a0,a1
                    #      new_var temp_284_50:i32 
                    #      temp_284_50 = Add i32 i2_50, temp_283_50 
    sw      a0,1276(sp)
    sw      a1,112(sp)
    add     a1,a0,a2
                    #      new_var temp_285_50:i32 
                    #      temp_285_50 = Add i32 i1_50, temp_284_50 
    sw      a0,1280(sp)
    sw      a2,108(sp)
    add     a2,a0,a1
                    #      new_var temp_286_50:i32 
                    #      temp_286_50 = Add i32 h4_50, temp_285_50 
    sw      a0,1284(sp)
    sw      a1,104(sp)
    add     a1,a0,a2
                    #      new_var temp_287_50:i32 
                    #      temp_287_50 = Sub i32 h3_50, temp_286_50 
    sw      a0,1288(sp)
    sw      a2,100(sp)
    sub     a2,a0,a1
                    #      new_var temp_288_50:i32 
                    #      temp_288_50 = Sub i32 h2_50, temp_287_50 
    sw      a0,1292(sp)
    sw      a1,96(sp)
    sub     a1,a0,a2
                    #      new_var temp_289_50:i32 
                    #      temp_289_50 = Sub i32 h1_50, temp_288_50 
    sw      a0,1296(sp)
    sw      a2,92(sp)
    sub     a2,a0,a1
                    #      new_var temp_290_50:i32 
                    #      temp_290_50 = Sub i32 g4_50, temp_289_50 
    sw      a0,1300(sp)
    sw      a1,88(sp)
    sub     a1,a0,a2
                    #      new_var temp_291_50:i32 
                    #      temp_291_50 = Add i32 g3_50, temp_290_50 
    sw      a0,1304(sp)
    sw      a2,84(sp)
    add     a2,a0,a1
                    #      new_var temp_292_50:i32 
                    #      temp_292_50 = Add i32 g2_50, temp_291_50 
    sw      a0,1308(sp)
    sw      a1,80(sp)
    add     a1,a0,a2
                    #      new_var temp_293_50:i32 
                    #      temp_293_50 = Add i32 g1_50, temp_292_50 
    sw      a0,1312(sp)
    sw      a2,76(sp)
    add     a2,a0,a1
                    #      new_var temp_294_50:i32 
                    #      temp_294_50 = Add i32 f4_50, temp_293_50 
    sw      a0,1316(sp)
    sw      a1,72(sp)
    add     a1,a0,a2
                    #      new_var temp_295_50:i32 
                    #      temp_295_50 = Sub i32 f3_50, temp_294_50 
    sw      a0,1320(sp)
    sw      a2,68(sp)
    sub     a2,a0,a1
                    #      new_var temp_296_50:i32 
                    #      temp_296_50 = Sub i32 f2_50, temp_295_50 
    sw      a0,1324(sp)
    sw      a1,64(sp)
    sub     a1,a0,a2
                    #      new_var temp_297_50:i32 
                    #      temp_297_50 = Sub i32 f1_50, temp_296_50 
    sw      a0,1328(sp)
    sw      a2,60(sp)
    sub     a2,a0,a1
                    #      new_var temp_298_50:i32 
                    #      temp_298_50 = Sub i32 e4_50, temp_297_50 
    sw      a0,1332(sp)
    sw      a1,56(sp)
    sub     a1,a0,a2
                    #      new_var temp_299_50:i32 
                    #      temp_299_50 = Add i32 e3_50, temp_298_50 
    sw      a0,1336(sp)
    sw      a2,52(sp)
    add     a2,a0,a1
                    #      new_var temp_300_50:i32 
                    #      temp_300_50 = Add i32 e2_50, temp_299_50 
    sw      a0,1340(sp)
    sw      a1,48(sp)
    add     a1,a0,a2
                    #      new_var temp_301_50:i32 
                    #      temp_301_50 = Add i32 e1_50, temp_300_50 
    sw      a0,1344(sp)
    sw      a2,44(sp)
    add     a2,a0,a1
                    #      new_var temp_302_50:i32 
                    #      temp_302_50 = Add i32 d4_50, temp_301_50 
    sw      a0,1348(sp)
    sw      a1,40(sp)
    add     a1,a0,a2
                    #      new_var temp_303_50:i32 
                    #      temp_303_50 = Sub i32 d3_50, temp_302_50 
    sw      a0,1352(sp)
    sub     a0,s10,a1
                    #      new_var temp_304_50:i32 
                    #      temp_304_50 = Sub i32 d2_50, temp_303_50 
    sw      a1,32(sp)
    sub     a1,s1,a0
                    #      new_var temp_305_50:i32 
                    #      temp_305_50 = Sub i32 d1_50, temp_304_50 
    sw      a0,28(sp)
    sub     a0,s6,a1
                    #      new_var temp_306_50:i32 
                    #      temp_306_50 = Sub i32 c4_50, temp_305_50 
    sw      a1,24(sp)
    sub     a1,a7,a0
                    #      new_var temp_307_50:i32 
                    #      temp_307_50 = Add i32 c3_50, temp_306_50 
    sw      a0,20(sp)
    add     a0,a6,a1
                    #      new_var temp_308_50:i32 
                    #      temp_308_50 = Add i32 c2_50, temp_307_50 
    sw      a1,16(sp)
    add     a1,a5,a0
                    #      new_var temp_309_50:i32 
                    #      temp_309_50 = Add i32 c1_50, temp_308_50 
    sw      a0,12(sp)
    add     a0,a4,a1
                    #      new_var temp_310_50:i32 
                    #      temp_310_50 = Add i32 i_50, temp_309_50 
    sw      a1,8(sp)
    add     a1,a3,a0
                    #      ret temp_310_50 
    ld      ra,1408(sp)
    ld      s0,1400(sp)
    sw      a1,0(sp)
    sw      a0,4(sp)
    addi    sp,sp,1416
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a:4|b:4|temp_311:4|temp_312:4|temp_313:4|none:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 a_164 
                    #      alloc i32 b_164 
                    #      alloc i32 temp_311_164 
                    #      alloc i32 temp_312_164 
                    #      alloc i32 temp_313_164 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_164:i32 
                    #      new_var b_164:i32 
                    #      new_var temp_311_164:i32 
                    #      temp_311_164 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,12(sp)
                    #      a_164 = i32 temp_311_164 
    mv      a1, a0
                    #      new_var temp_312_164:i32 
                    #      temp_312_164 = Add i32 a_164, 18_0 
    li      a2, 18
    add     a3,a1,a2
                    #      b_164 = i32 temp_312_164 
    mv      a4, a3
                    #      new_var temp_313_164:i32 
                    #      temp_313_164 =  Call i32 func_0(a_164, b_164) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,12(sp)
    mv      a0, a1
    sw      a1,20(sp)
    mv      a1, a4
                    #arg load ended
    call    func
    sw      a0,4(sp)
                    #      a_164 = i32 temp_313_164 
    mv      a1, a0
                    #       Call void putint_0(a_164) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
    mv      a0, a1
                    #arg load ended
    call    putint
                    #      ret a_164 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a1,20(sp)
    addi    sp,sp,40
    ret
.section        .data
    .align 4
    .globl a32
                    #      global i32 a32_0 
    .type a32,@object
a32:
    .word 16
    .align 4
    .globl a31
                    #      global i32 a31_0 
    .type a31,@object
a31:
    .word 15
    .align 4
    .globl a30
                    #      global i32 a30_0 
    .type a30,@object
a30:
    .word 14
    .align 4
    .globl a29
                    #      global i32 a29_0 
    .type a29,@object
a29:
    .word 13
    .align 4
    .globl a28
                    #      global i32 a28_0 
    .type a28,@object
a28:
    .word 12
    .align 4
    .globl a27
                    #      global i32 a27_0 
    .type a27,@object
a27:
    .word 11
    .align 4
    .globl a26
                    #      global i32 a26_0 
    .type a26,@object
a26:
    .word 10
    .align 4
    .globl a25
                    #      global i32 a25_0 
    .type a25,@object
a25:
    .word 9
    .align 4
    .globl a24
                    #      global i32 a24_0 
    .type a24,@object
a24:
    .word 8
    .align 4
    .globl a23
                    #      global i32 a23_0 
    .type a23,@object
a23:
    .word 7
    .align 4
    .globl a22
                    #      global i32 a22_0 
    .type a22,@object
a22:
    .word 6
    .align 4
    .globl a21
                    #      global i32 a21_0 
    .type a21,@object
a21:
    .word 5
    .align 4
    .globl a20
                    #      global i32 a20_0 
    .type a20,@object
a20:
    .word 4
    .align 4
    .globl a19
                    #      global i32 a19_0 
    .type a19,@object
a19:
    .word 3
    .align 4
    .globl a18
                    #      global i32 a18_0 
    .type a18,@object
a18:
    .word 2
    .align 4
    .globl a17
                    #      global i32 a17_0 
    .type a17,@object
a17:
    .word 1
    .align 4
    .globl a16
                    #      global i32 a16_0 
    .type a16,@object
a16:
    .word 16
    .align 4
    .globl a15
                    #      global i32 a15_0 
    .type a15,@object
a15:
    .word 15
    .align 4
    .globl a14
                    #      global i32 a14_0 
    .type a14,@object
a14:
    .word 14
    .align 4
    .globl a13
                    #      global i32 a13_0 
    .type a13,@object
a13:
    .word 13
    .align 4
    .globl a12
                    #      global i32 a12_0 
    .type a12,@object
a12:
    .word 12
    .align 4
    .globl a11
                    #      global i32 a11_0 
    .type a11,@object
a11:
    .word 11
    .align 4
    .globl a10
                    #      global i32 a10_0 
    .type a10,@object
a10:
    .word 10
    .align 4
    .globl a9
                    #      global i32 a9_0 
    .type a9,@object
a9:
    .word 9
    .align 4
    .globl a8
                    #      global i32 a8_0 
    .type a8,@object
a8:
    .word 8
    .align 4
    .globl a7
                    #      global i32 a7_0 
    .type a7,@object
a7:
    .word 7
    .align 4
    .globl a6
                    #      global i32 a6_0 
    .type a6,@object
a6:
    .word 6
    .align 4
    .globl a5
                    #      global i32 a5_0 
    .type a5,@object
a5:
    .word 5
    .align 4
    .globl a4
                    #      global i32 a4_0 
    .type a4,@object
a4:
    .word 4
    .align 4
    .globl a3
                    #      global i32 a3_0 
    .type a3,@object
a3:
    .word 3
    .align 4
    .globl a2
                    #      global i32 a2_0 
    .type a2,@object
a2:
    .word 2
    .align 4
    .globl a1
                    #      global i32 a1_0 
    .type a1,@object
a1:
    .word 1
