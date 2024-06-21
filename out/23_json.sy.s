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
                    #      Define is_number_0 [ch_18] -> is_number_ret_0 
    .globl is_number
    .type is_number,@function
is_number:
                    #mem layout:|ra_is_number:8|s0_is_number:8|ch:4|temp_0:1|temp_1:1|none:2
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i1 temp_0_21 
                    #      alloc i1 temp_1_24 
                    #      label L83_0: 
.L83_0:
                    #      new_var temp_0_21:i1 
                    #      temp_0_21 = icmp i32 Sge ch_18, 48_0 
    li      a1, 48
    slt     a2,a0,a1
    xori    a2,a2,1
                    #      br i1 temp_0_21, label branch_true_22, label branch_false_22 
    bnez    a2, .branch_true_22
    j       .branch_false_22
                    #      label branch_true_22: 
.branch_true_22:
                    #      new_var temp_1_24:i1 
                    #      temp_1_24 = icmp i32 Sle ch_18, 57_0 
    li      a1, 57
    slt     a3,a1,a0
    xori    a3,a3,1
                    #      br i1 temp_1_24, label branch_true_25, label branch_false_25 
    bnez    a3, .branch_true_25
    j       .branch_false_25
                    #      label branch_true_25: 
.branch_true_25:
                    #      ret 1_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
                    #      label branch_false_25: 
.branch_false_25:
                    #      ret 0_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
                    #      label L84_0: 
.L84_0:
                    #      label branch_false_22: 
.branch_false_22:
                    #      ret 0_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
                    #      label L85_0: 
.L85_0:
                    #      Define skip_space_0 [buf_32, len_32] -> skip_space_ret_0 
    .globl skip_space
    .type skip_space,@function
skip_space:
                    #mem layout:|ra_skip_space:8|s0_skip_space:8|buf:8|len:4|temp_2:1|none:3|temp_3:4|temp_4:1|none:3|temp_5:4|none:4|temp_6:8|temp_7:4|temp_8:1|none:3|temp_9:4|temp_10:4|temp_11:4|none:4|temp_12:8|temp_13:4|temp_14:1|none:3|temp_15:4|temp_16:4|temp_17:4|none:4|temp_18:8|temp_19:4|temp_20:1|none:3|temp_21:4|temp_22:4|temp_23:4|none:4|temp_24:8|temp_25:4|temp_26:1|none:3|temp_27:4|temp_28:4
    addi    sp,sp,-168
    sd      ra,160(sp)
    sd      s0,152(sp)
    addi    s0,sp,168
                    #      new_var buf_32:ptr->i32 
                    #      alloc i1 temp_2_264 
                    #      alloc i32 temp_3_38 
                    #      alloc i1 temp_4_38 
                    #      alloc i32 temp_5_42 
                    #      alloc ptr->i32 temp_6_42 
                    #      alloc i32 temp_7_42 
                    #      alloc i1 temp_8_42 
                    #      alloc i32 temp_9_44 
                    #      alloc i32 temp_10_44 
                    #      alloc i32 temp_11_46 
                    #      alloc ptr->i32 temp_12_46 
                    #      alloc i32 temp_13_46 
                    #      alloc i1 temp_14_46 
                    #      alloc i32 temp_15_48 
                    #      alloc i32 temp_16_48 
                    #      alloc i32 temp_17_50 
                    #      alloc ptr->i32 temp_18_50 
                    #      alloc i32 temp_19_50 
                    #      alloc i1 temp_20_50 
                    #      alloc i32 temp_21_52 
                    #      alloc i32 temp_22_52 
                    #      alloc i32 temp_23_54 
                    #      alloc ptr->i32 temp_24_54 
                    #      alloc i32 temp_25_54 
                    #      alloc i1 temp_26_54 
                    #      alloc i32 temp_27_56 
                    #      alloc i32 temp_28_56 
                    #      label while.head_36: 
.while.head_36:
                    #      new_var temp_2_264:i1 
                    #      temp_2_264 = icmp i32 Ne 1_0, 0_0 
    li      a2, 1
    li      a3, 0
    xor     a4,a2,a3
    snez    a4, a4
                    #      br i1 temp_2_264, label while.body_36, label while.exit_36 
    bnez    a4, .while.body_36
    j       .while.exit_36
                    #      label while.body_36: 
.while.body_36:
                    #      new_var temp_3_38:i32 
                    #      temp_3_38 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    lw      a3,0(a2)
                    #      new_var temp_4_38:i1 
                    #      temp_4_38 = icmp i32 Sge temp_3_38, len_32 
    slt     a5,a3,a1
    xori    a5,a5,1
                    #      br i1 temp_4_38, label branch_true_39, label branch_false_39 
    bnez    a5, .branch_true_39
    j       .branch_false_39
                    #      label branch_true_39: 
.branch_true_39:
                    #      jump label: while.exit_36 
    sw      a3,132(sp)
    sb      a5,131(sp)
    j       .while.exit_36
                    #      label while.exit_36: 
.while.exit_36:
                    #      label branch_false_39: 
.branch_false_39:
                    #      label L82_0: 
.L82_0:
                    #      new_var temp_5_42:i32 
                    #      temp_5_42 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    lw      a6,0(a2)
                    #      new_var temp_6_42:ptr->i32 
                    #      new_var temp_7_42:i32 
                    #      temp_6_42 = getelementptr buf_32:ptr->i32 [Some(temp_5_42)] 
    li      a7, 0
    li      s1, 1
    add     a7,a7,a0
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_7_42 = load temp_6_42:ptr->i32 
    lw      s2,0(a7)
                    #      new_var temp_8_42:i1 
                    #      temp_8_42 = icmp i32 Eq temp_7_42, 32_0 
    li      s3, 32
    xor     s4,s2,s3
    seqz    s4, s4
                    #      br i1 temp_8_42, label branch_true_43, label branch_false_43 
    bnez    s4, .branch_true_43
    j       .branch_false_43
                    #      label branch_true_43: 
.branch_true_43:
                    #      new_var temp_9_44:i32 
                    #      temp_9_44 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    lw      s1,0(a2)
                    #      new_var temp_10_44:i32 
                    #      temp_10_44 = Add i32 temp_9_44, 1_0 
    li      s3, 1
    add     s5,s1,s3
                    #      store temp_10_44:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s6, pos
                    #occupy reg s6 with *pos_0
    sd      s5,0(s6)
                    #      label branch_false_43: 
.branch_false_43:
                    #      new_var temp_11_46:i32 
                    #      temp_11_46 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    lw      s1,0(a2)
                    #      new_var temp_12_46:ptr->i32 
                    #      new_var temp_13_46:i32 
                    #      temp_12_46 = getelementptr buf_32:ptr->i32 [Some(temp_11_46)] 
    li      s3, 0
    li      s5, 1
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_13_46 = load temp_12_46:ptr->i32 
    lw      s6,0(s3)
                    #      new_var temp_14_46:i1 
                    #      temp_14_46 = icmp i32 Eq temp_13_46, 9_0 
    li      s7, 9
    xor     s8,s6,s7
    seqz    s8, s8
                    #      br i1 temp_14_46, label branch_true_47, label branch_false_47 
    bnez    s8, .branch_true_47
    j       .branch_false_47
                    #      label branch_true_47: 
.branch_true_47:
                    #      new_var temp_15_48:i32 
                    #      temp_15_48 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    lw      s5,0(a2)
                    #      new_var temp_16_48:i32 
                    #      temp_16_48 = Add i32 temp_15_48, 1_0 
    li      s7, 1
    add     s9,s5,s7
                    #      store temp_16_48:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s10, pos
                    #occupy reg s10 with *pos_0
    sd      s9,0(s10)
                    #      label branch_false_47: 
.branch_false_47:
                    #      new_var temp_17_50:i32 
                    #      temp_17_50 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    lw      s5,0(a2)
                    #      new_var temp_18_50:ptr->i32 
                    #      new_var temp_19_50:i32 
                    #      temp_18_50 = getelementptr buf_32:ptr->i32 [Some(temp_17_50)] 
    li      s7, 0
    li      s9, 1
    add     s7,s7,a0
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_19_50 = load temp_18_50:ptr->i32 
    lw      s10,0(s7)
                    #      new_var temp_20_50:i1 
                    #      temp_20_50 = icmp i32 Eq temp_19_50, 10_0 
    li      s11, 10
    xor     a2,s10,s11
    seqz    a2, a2
                    #      br i1 temp_20_50, label branch_true_51, label branch_false_51 
    bnez    a2, .branch_true_51
    j       .branch_false_51
                    #      label branch_true_51: 
.branch_true_51:
                    #      new_var temp_21_52:i32 
                    #      temp_21_52 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s9, pos
                    #occupy reg s9 with *pos_0
    lw      s11,0(s9)
                    #      new_var temp_22_52:i32 
                    #      temp_22_52 = Add i32 temp_21_52, 1_0 
    li      s9, 1
    sd      a0,144(sp)
    add     a0,s11,s9
                    #      store temp_22_52:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s9, pos
                    #occupy reg s9 with *pos_0
    sd      a0,0(s9)
                    #      label branch_false_51: 
.branch_false_51:
                    #      new_var temp_23_54:i32 
                    #      temp_23_54 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s9, pos
                    #occupy reg s9 with *pos_0
    lw      s11,0(s9)
                    #      new_var temp_24_54:ptr->i32 
                    #      new_var temp_25_54:i32 
                    #      temp_24_54 = getelementptr buf_32:ptr->i32 [Some(temp_23_54)] 
    li      s9, 0
    sd      a0,144(sp)
    li      a0, 1
    sw      a1,140(sp)
    mul     a1,a0,s11
    add     s9,s9,a1
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_25_54 = load temp_24_54:ptr->i32 
    lw      a0,0(s9)
                    #      new_var temp_26_54:i1 
                    #      temp_26_54 = icmp i32 Eq temp_25_54, 13_0 
    sd      a1,144(sp)
    li      a1, 13
    sb      a2,43(sp)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_26_54, label branch_true_55, label branch_false_55 
    bnez    a2, .branch_true_55
    j       .branch_false_55
                    #      label branch_true_55: 
.branch_true_55:
                    #      new_var temp_27_56:i32 
                    #      temp_27_56 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    sw      a0,12(sp)
    lw      a0,0(a1)
                    #      new_var temp_28_56:i32 
                    #      temp_28_56 = Add i32 temp_27_56, 1_0 
    li      a1, 1
    sb      a2,11(sp)
    add     a2,a0,a1
                    #      store temp_28_56:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    sd      a2,0(a1)
                    #      label branch_false_55: 
.branch_false_55:
                    #      jump label: while.exit_36 
    sw      s2,108(sp)
    sw      a3,132(sp)
    sb      a2,11(sp)
    lw      a1,140(sp)
    sw      s11,28(sp)
    sw      a0,12(sp)
    ld      a0,144(sp)
    sd      s7,48(sp)
    sd      s3,80(sp)
    sb      s4,107(sp)
    sb      a5,131(sp)
    sw      s5,60(sp)
    sd      a7,112(sp)
    sw      s6,76(sp)
    sb      s8,75(sp)
    sw      s10,44(sp)
    sw      s1,92(sp)
    sw      a6,124(sp)
    sd      s9,16(sp)
    j       .while.exit_36
                    #      Define detect_item_0 [type_60, buf_60, len_60] -> detect_item_ret_0 
    .globl detect_item
    .type detect_item,@function
detect_item:
                    #mem layout:|ra_detect_item:8|s0_detect_item:8|type:4|none:4|buf:8|len:4|temp_29:4|temp_30:1|temp_31:1|none:2|temp_32:4|temp_33:8|temp_34:4|temp_35:1|none:3|temp_36:4|temp_37:4|temp_38:8|temp_39:4|temp_40:1|none:3|temp_41:4|temp_42:4|temp_43:8|temp_44:4|temp_45:1|none:3|temp_46:4|temp_47:4|temp_48:8|temp_49:4|temp_50:4|temp_51:1|none:3|temp_52:4|temp_53:4|none:4|temp_54:8|temp_55:4|temp_56:1|none:3|temp_57:4|temp_58:4|temp_59:8|temp_60:4|temp_61:1|none:3|temp_62:4|temp_63:4|temp_64:8|temp_65:4|temp_66:1|none:3|temp_67:4|temp_68:4|temp_69:8|temp_70:4|temp_71:1|none:3|temp_72:4|temp_73:4|temp_74:8|temp_75:4|temp_76:1|none:3|temp_77:4|temp_78:1|none:3|temp_79:4|none:4|temp_80:8|temp_81:4|temp_82:1|none:3|temp_83:4|temp_84:4|temp_85:4|temp_86:1|none:3|temp_87:4|temp_88:1|none:3|temp_89:4|none:4|temp_90:8|temp_91:4|temp_92:4|temp_93:1|none:3|temp_94:4|temp_95:4|temp_96:4|temp_97:1|none:3|temp_98:4|temp_99:8|temp_100:4|temp_101:1|none:3|temp_102:4|temp_103:4|temp_104:4|temp_105:1|none:3|temp_106:4|none:4|temp_107:8|temp_108:4|temp_109:4|temp_110:1|none:3|temp_111:4|temp_112:4|temp_113:4|temp_114:1|none:3|temp_115:4|temp_116:8|temp_117:4|temp_118:1|none:3|temp_119:4|temp_120:4|temp_121:4|temp_122:1|none:3|temp_123:4|none:4|temp_124:8|temp_125:4|temp_126:1|none:3|temp_127:4|temp_128:4|temp_129:4|temp_130:1|none:3|temp_131:4|none:4|temp_132:8|temp_133:4|temp_134:1|none:3|temp_135:4|temp_136:4|temp_137:4|temp_138:1|none:3|temp_139:4|none:4|temp_140:8|temp_141:4|temp_142:4|temp_143:1|none:3|temp_144:4|temp_145:4|temp_146:4|temp_147:8|temp_148:4|temp_149:4|temp_150:1|none:3|temp_151:4|temp_152:8|temp_153:4|temp_154:1|none:3|temp_155:4|temp_156:4|temp_157:1|none:3|temp_158:4|temp_159:4|temp_160:4|temp_161:1|none:3|temp_162:4|temp_163:8|temp_164:4|temp_165:1|none:3|temp_166:4|none:4|temp_167:8|temp_168:4|temp_169:1|none:3|temp_170:4|temp_171:4|temp_172:4|temp_173:4|temp_174:4|temp_175:1|none:3|temp_176:4|temp_177:4|temp_178:4|none:4|temp_179:8|temp_180:4|temp_181:1|temp_182:1|none:2|temp_183:4|temp_184:4|temp_185:4|temp_186:1|none:3|temp_187:4|none:4|temp_188:8|temp_189:4|temp_190:1|none:3|temp_191:4|temp_192:4|temp_193:4|temp_194:1|none:3|temp_195:4|none:4|temp_196:8|temp_197:4|temp_198:1|none:3|temp_199:4|temp_200:4|temp_201:4|temp_202:1|none:3|temp_203:4|temp_204:1|none:3|temp_205:4|none:4|temp_206:8|temp_207:4|temp_208:1|none:3|temp_209:4|temp_210:4|temp_211:1|none:3|temp_212:4|temp_213:4|temp_214:4|temp_215:1|none:3|temp_216:4|temp_217:8|temp_218:4|temp_219:1|none:3|temp_220:4|temp_221:4|temp_222:4|temp_223:1|none:3|temp_224:4|temp_225:1|none:3|temp_226:4|none:4|temp_227:8|temp_228:4|temp_229:1|none:3|temp_230:4|temp_231:4|temp_232:4|temp_233:1|none:3|temp_234:4|none:4|temp_235:8|temp_236:4|temp_237:1|none:3|temp_238:4|temp_239:4|temp_240:4|temp_241:1|none:3|temp_242:4|temp_243:1|none:3|temp_244:4|none:4|temp_245:8|temp_246:4|temp_247:1|none:3|temp_248:4|temp_249:4|temp_250:4|temp_251:1|none:3|temp_252:4|temp_253:1|none:3|temp_254:4|temp_255:4|temp_256:4|none:4|temp_257:8|temp_258:4|temp_259:1|temp_260:1|none:2|temp_261:8|temp_262:8|temp_263:8|temp_264:8|mTrue:16|temp_265:4|temp_266:4|temp_267:1|none:3|temp_268:4|temp_269:4|none:4|temp_270:8|temp_271:4|temp_272:4|temp_273:8|temp_274:4|temp_275:1|none:3|temp_276:8|temp_277:4|temp_278:4|temp_279:4|none:4|temp_280:8|temp_281:4|temp_282:1|none:3|temp_283:8|temp_284:4|temp_285:4|temp_286:4|none:4|temp_287:8|temp_288:4|temp_289:1|none:3|temp_290:8|temp_291:4|temp_292:4|temp_293:4|none:4|temp_294:8|temp_295:4|temp_296:1|temp_297:1|none:2|temp_298:8|temp_299:8|temp_300:8|temp_301:8|temp_302:8|mFalse:20|temp_303:4|temp_304:4|temp_305:1|none:3|temp_306:4|temp_307:4|temp_308:8|temp_309:4|temp_310:4|temp_311:8|temp_312:4|temp_313:1|none:3|temp_314:8|temp_315:4|temp_316:4|temp_317:4|none:4|temp_318:8|temp_319:4|temp_320:1|none:3|temp_321:8|temp_322:4|temp_323:4|temp_324:4|none:4|temp_325:8|temp_326:4|temp_327:1|none:3|temp_328:8|temp_329:4|temp_330:4|temp_331:4|none:4|temp_332:8|temp_333:4|temp_334:1|none:3|temp_335:8|temp_336:4|temp_337:4|temp_338:4|none:4|temp_339:8|temp_340:4|temp_341:1|temp_342:1|none:2|temp_343:8|temp_344:8|temp_345:8|temp_346:8|temp_347:8|mNull:16|temp_348:4|temp_349:4|temp_350:1|none:3|temp_351:4|temp_352:4|none:4|temp_353:8|temp_354:4|temp_355:4|temp_356:8|temp_357:4|temp_358:1|none:3|temp_359:8|temp_360:4|temp_361:4|temp_362:4|none:4|temp_363:8|temp_364:4|temp_365:1|none:3|temp_366:8|temp_367:4|temp_368:4|temp_369:4|none:4|temp_370:8|temp_371:4|temp_372:1|none:3|temp_373:8|temp_374:4|temp_375:4|temp_376:4|none:4|temp_377:8|temp_378:4|temp_379:1|none:3
    addi    sp,sp,-1864
    sd      ra,1856(sp)
    sd      s0,1848(sp)
    addi    s0,sp,1864
                    #      new_var buf_60:ptr->i32 
                    #      alloc i32 temp_29_63 
                    #      alloc i1 temp_30_63 
                    #      alloc i1 temp_31_68 
                    #      alloc i32 temp_32_71 
                    #      alloc ptr->i32 temp_33_71 
                    #      alloc i32 temp_34_71 
                    #      alloc i1 temp_35_71 
                    #      alloc i32 temp_36_73 
                    #      alloc i32 temp_37_75 
                    #      alloc ptr->i32 temp_38_75 
                    #      alloc i32 temp_39_75 
                    #      alloc i1 temp_40_75 
                    #      alloc i32 temp_41_77 
                    #      alloc i32 temp_42_79 
                    #      alloc ptr->i32 temp_43_79 
                    #      alloc i32 temp_44_79 
                    #      alloc i1 temp_45_79 
                    #      alloc i32 temp_46_81 
                    #      alloc i32 temp_47_83 
                    #      alloc ptr->i32 temp_48_83 
                    #      alloc i32 temp_49_83 
                    #      alloc i32 temp_50_83 
                    #      alloc i1 temp_51_83 
                    #      alloc i32 temp_52_85 
                    #      alloc i32 temp_53_87 
                    #      alloc ptr->i32 temp_54_87 
                    #      alloc i32 temp_55_87 
                    #      alloc i1 temp_56_87 
                    #      alloc i32 temp_57_89 
                    #      alloc i32 temp_58_91 
                    #      alloc ptr->i32 temp_59_91 
                    #      alloc i32 temp_60_91 
                    #      alloc i1 temp_61_91 
                    #      alloc i32 temp_62_93 
                    #      alloc i32 temp_63_95 
                    #      alloc ptr->i32 temp_64_95 
                    #      alloc i32 temp_65_95 
                    #      alloc i1 temp_66_95 
                    #      alloc i32 temp_67_97 
                    #      alloc i32 temp_68_99 
                    #      alloc ptr->i32 temp_69_99 
                    #      alloc i32 temp_70_99 
                    #      alloc i1 temp_71_99 
                    #      alloc i32 temp_72_101 
                    #      alloc i32 temp_73_103 
                    #      alloc ptr->i32 temp_74_103 
                    #      alloc i32 temp_75_103 
                    #      alloc i1 temp_76_103 
                    #      alloc i32 temp_77_105 
                    #      alloc i1 temp_78_109 
                    #      alloc i32 temp_79_112 
                    #      alloc ptr->i32 temp_80_112 
                    #      alloc i32 temp_81_112 
                    #      alloc i1 temp_82_112 
                    #      alloc i32 temp_83_114 
                    #      alloc i32 temp_84_114 
                    #      alloc i32 temp_85_120 
                    #      alloc i1 temp_86_120 
                    #      alloc i32 temp_87_128 
                    #      alloc i1 temp_88_128 
                    #      alloc i32 temp_89_131 
                    #      alloc ptr->i32 temp_90_131 
                    #      alloc i32 temp_91_131 
                    #      alloc i32 temp_92_131 
                    #      alloc i1 temp_93_131 
                    #      alloc i32 temp_94_130 
                    #      alloc i32 temp_95_130 
                    #      alloc i32 temp_96_135 
                    #      alloc i1 temp_97_135 
                    #      alloc i32 temp_98_138 
                    #      alloc ptr->i32 temp_99_138 
                    #      alloc i32 temp_100_138 
                    #      alloc i1 temp_101_138 
                    #      alloc i32 temp_102_140 
                    #      alloc i32 temp_103_140 
                    #      alloc i32 temp_104_142 
                    #      alloc i1 temp_105_142 
                    #      alloc i32 temp_106_145 
                    #      alloc ptr->i32 temp_107_145 
                    #      alloc i32 temp_108_145 
                    #      alloc i32 temp_109_145 
                    #      alloc i1 temp_110_145 
                    #      alloc i32 temp_111_144 
                    #      alloc i32 temp_112_144 
                    #      alloc i32 temp_113_149 
                    #      alloc i1 temp_114_149 
                    #      alloc i32 temp_115_152 
                    #      alloc ptr->i32 temp_116_152 
                    #      alloc i32 temp_117_152 
                    #      alloc i1 temp_118_152 
                    #      alloc i32 temp_119_154 
                    #      alloc i32 temp_120_154 
                    #      alloc i32 temp_121_156 
                    #      alloc i1 temp_122_156 
                    #      alloc i32 temp_123_159 
                    #      alloc ptr->i32 temp_124_159 
                    #      alloc i32 temp_125_159 
                    #      alloc i1 temp_126_159 
                    #      alloc i32 temp_127_161 
                    #      alloc i32 temp_128_161 
                    #      alloc i32 temp_129_163 
                    #      alloc i1 temp_130_163 
                    #      alloc i32 temp_131_166 
                    #      alloc ptr->i32 temp_132_166 
                    #      alloc i32 temp_133_166 
                    #      alloc i1 temp_134_166 
                    #      alloc i32 temp_135_168 
                    #      alloc i32 temp_136_168 
                    #      alloc i32 temp_137_170 
                    #      alloc i1 temp_138_170 
                    #      alloc i32 temp_139_173 
                    #      alloc ptr->i32 temp_140_173 
                    #      alloc i32 temp_141_173 
                    #      alloc i32 temp_142_173 
                    #      alloc i1 temp_143_173 
                    #      alloc i32 temp_144_172 
                    #      alloc i32 temp_145_172 
                    #      alloc i32 temp_146_124 
                    #      alloc ptr->i32 temp_147_124 
                    #      alloc i32 temp_148_124 
                    #      alloc i32 temp_149_124 
                    #      alloc i1 temp_150_124 
                    #      alloc i32 temp_151_116 
                    #      alloc ptr->i32 temp_152_116 
                    #      alloc i32 temp_153_116 
                    #      alloc i1 temp_154_116 
                    #      alloc i32 temp_155_118 
                    #      alloc i32 temp_156_118 
                    #      alloc i1 temp_157_177 
                    #      alloc i32 temp_158_179 
                    #      alloc i32 temp_159_179 
                    #      alloc i32 temp_160_181 
                    #      alloc i1 temp_161_181 
                    #      alloc i32 temp_162_184 
                    #      alloc ptr->i32 temp_163_184 
                    #      alloc i32 temp_164_184 
                    #      alloc i1 temp_165_184 
                    #      alloc i32 temp_166_187 
                    #      alloc ptr->i32 temp_167_187 
                    #      alloc i32 temp_168_187 
                    #      alloc i1 temp_169_187 
                    #      alloc i32 temp_170_189 
                    #      alloc i32 temp_171_189 
                    #      alloc i32 temp_172_191 
                    #      alloc i32 temp_173_191 
                    #      alloc i32 temp_174_193 
                    #      alloc i1 temp_175_193 
                    #      alloc i32 temp_176_179 
                    #      alloc i32 temp_177_179 
                    #      alloc i32 temp_178_197 
                    #      alloc ptr->i32 temp_179_197 
                    #      alloc i32 temp_180_197 
                    #      alloc i1 temp_181_197 
                    #      alloc i1 temp_182_202 
                    #      alloc i32 temp_183_204 
                    #      alloc i32 temp_184_204 
                    #      alloc i32 temp_185_207 
                    #      alloc i1 temp_186_207 
                    #      alloc i32 temp_187_210 
                    #      alloc ptr->i32 temp_188_210 
                    #      alloc i32 temp_189_210 
                    #      alloc i1 temp_190_210 
                    #      alloc i32 temp_191_212 
                    #      alloc i32 temp_192_212 
                    #      alloc i32 temp_193_215 
                    #      alloc i1 temp_194_215 
                    #      alloc i32 temp_195_220 
                    #      alloc ptr->i32 temp_196_220 
                    #      alloc i32 temp_197_220 
                    #      alloc i1 temp_198_220 
                    #      alloc i32 temp_199_222 
                    #      alloc i32 temp_200_222 
                    #      alloc i32 temp_201_225 
                    #      alloc i1 temp_202_225 
                    #      alloc i32 temp_203_231 
                    #      alloc i1 temp_204_231 
                    #      alloc i32 temp_205_235 
                    #      alloc ptr->i32 temp_206_235 
                    #      alloc i32 temp_207_235 
                    #      alloc i1 temp_208_235 
                    #      alloc i32 temp_209_204 
                    #      alloc i32 temp_210_204 
                    #      alloc i1 temp_211_240 
                    #      alloc i32 temp_212_242 
                    #      alloc i32 temp_213_242 
                    #      alloc i32 temp_214_245 
                    #      alloc i1 temp_215_245 
                    #      alloc i32 temp_216_248 
                    #      alloc ptr->i32 temp_217_248 
                    #      alloc i32 temp_218_248 
                    #      alloc i1 temp_219_248 
                    #      alloc i32 temp_220_250 
                    #      alloc i32 temp_221_250 
                    #      alloc i32 temp_222_253 
                    #      alloc i1 temp_223_253 
                    #      alloc i32 temp_224_258 
                    #      alloc i1 temp_225_258 
                    #      alloc i32 temp_226_262 
                    #      alloc ptr->i32 temp_227_262 
                    #      alloc i32 temp_228_262 
                    #      alloc i1 temp_229_262 
                    #      alloc i32 temp_230_242 
                    #      alloc i32 temp_231_242 
                    #      alloc i32 temp_232_268 
                    #      alloc i1 temp_233_268 
                    #      alloc i32 temp_234_273 
                    #      alloc ptr->i32 temp_235_273 
                    #      alloc i32 temp_236_273 
                    #      alloc i1 temp_237_273 
                    #      alloc i32 temp_238_275 
                    #      alloc i32 temp_239_275 
                    #      alloc i32 temp_240_278 
                    #      alloc i1 temp_241_278 
                    #      alloc i32 temp_242_283 
                    #      alloc i1 temp_243_283 
                    #      alloc i32 temp_244_287 
                    #      alloc ptr->i32 temp_245_287 
                    #      alloc i32 temp_246_287 
                    #      alloc i1 temp_247_287 
                    #      alloc i32 temp_248_275 
                    #      alloc i32 temp_249_275 
                    #      alloc i32 temp_250_293 
                    #      alloc i1 temp_251_293 
                    #      alloc i32 temp_252_299 
                    #      alloc i1 temp_253_299 
                    #      alloc i32 temp_254_242 
                    #      alloc i32 temp_255_242 
                    #      alloc i32 temp_256_303 
                    #      alloc ptr->i32 temp_257_303 
                    #      alloc i32 temp_258_303 
                    #      alloc i1 temp_259_303 
                    #      alloc i1 temp_260_308 
                    #      alloc ptr->i32 temp_261_310 
                    #      alloc ptr->i32 temp_262_310 
                    #      alloc ptr->i32 temp_263_310 
                    #      alloc ptr->i32 temp_264_310 
                    #      alloc Array:i32:[Some(4_0)] mTrue_310 
                    #      alloc i32 temp_265_312 
                    #      alloc i32 temp_266_312 
                    #      alloc i1 temp_267_312 
                    #      alloc i32 temp_268_310 
                    #      alloc i32 temp_269_310 
                    #      alloc ptr->i32 temp_270_316 
                    #      alloc i32 temp_271_316 
                    #      alloc i32 temp_272_316 
                    #      alloc ptr->i32 temp_273_316 
                    #      alloc i32 temp_274_316 
                    #      alloc i1 temp_275_316 
                    #      alloc ptr->i32 temp_276_320 
                    #      alloc i32 temp_277_320 
                    #      alloc i32 temp_278_320 
                    #      alloc i32 temp_279_320 
                    #      alloc ptr->i32 temp_280_320 
                    #      alloc i32 temp_281_320 
                    #      alloc i1 temp_282_320 
                    #      alloc ptr->i32 temp_283_324 
                    #      alloc i32 temp_284_324 
                    #      alloc i32 temp_285_324 
                    #      alloc i32 temp_286_324 
                    #      alloc ptr->i32 temp_287_324 
                    #      alloc i32 temp_288_324 
                    #      alloc i1 temp_289_324 
                    #      alloc ptr->i32 temp_290_328 
                    #      alloc i32 temp_291_328 
                    #      alloc i32 temp_292_328 
                    #      alloc i32 temp_293_328 
                    #      alloc ptr->i32 temp_294_328 
                    #      alloc i32 temp_295_328 
                    #      alloc i1 temp_296_328 
                    #      alloc i1 temp_297_333 
                    #      alloc ptr->i32 temp_298_335 
                    #      alloc ptr->i32 temp_299_335 
                    #      alloc ptr->i32 temp_300_335 
                    #      alloc ptr->i32 temp_301_335 
                    #      alloc ptr->i32 temp_302_335 
                    #      alloc Array:i32:[Some(5_0)] mFalse_335 
                    #      alloc i32 temp_303_337 
                    #      alloc i32 temp_304_337 
                    #      alloc i1 temp_305_337 
                    #      alloc i32 temp_306_335 
                    #      alloc i32 temp_307_335 
                    #      alloc ptr->i32 temp_308_341 
                    #      alloc i32 temp_309_341 
                    #      alloc i32 temp_310_341 
                    #      alloc ptr->i32 temp_311_341 
                    #      alloc i32 temp_312_341 
                    #      alloc i1 temp_313_341 
                    #      alloc ptr->i32 temp_314_345 
                    #      alloc i32 temp_315_345 
                    #      alloc i32 temp_316_345 
                    #      alloc i32 temp_317_345 
                    #      alloc ptr->i32 temp_318_345 
                    #      alloc i32 temp_319_345 
                    #      alloc i1 temp_320_345 
                    #      alloc ptr->i32 temp_321_349 
                    #      alloc i32 temp_322_349 
                    #      alloc i32 temp_323_349 
                    #      alloc i32 temp_324_349 
                    #      alloc ptr->i32 temp_325_349 
                    #      alloc i32 temp_326_349 
                    #      alloc i1 temp_327_349 
                    #      alloc ptr->i32 temp_328_353 
                    #      alloc i32 temp_329_353 
                    #      alloc i32 temp_330_353 
                    #      alloc i32 temp_331_353 
                    #      alloc ptr->i32 temp_332_353 
                    #      alloc i32 temp_333_353 
                    #      alloc i1 temp_334_353 
                    #      alloc ptr->i32 temp_335_357 
                    #      alloc i32 temp_336_357 
                    #      alloc i32 temp_337_357 
                    #      alloc i32 temp_338_357 
                    #      alloc ptr->i32 temp_339_357 
                    #      alloc i32 temp_340_357 
                    #      alloc i1 temp_341_357 
                    #      alloc i1 temp_342_362 
                    #      alloc ptr->i32 temp_343_364 
                    #      alloc ptr->i32 temp_344_364 
                    #      alloc ptr->i32 temp_345_364 
                    #      alloc ptr->i32 temp_346_364 
                    #      alloc ptr->i32 temp_347_364 
                    #      alloc Array:i32:[Some(4_0)] mNull_364 
                    #      alloc i32 temp_348_366 
                    #      alloc i32 temp_349_366 
                    #      alloc i1 temp_350_366 
                    #      alloc i32 temp_351_364 
                    #      alloc i32 temp_352_364 
                    #      alloc ptr->i32 temp_353_370 
                    #      alloc i32 temp_354_370 
                    #      alloc i32 temp_355_370 
                    #      alloc ptr->i32 temp_356_370 
                    #      alloc i32 temp_357_370 
                    #      alloc i1 temp_358_370 
                    #      alloc ptr->i32 temp_359_374 
                    #      alloc i32 temp_360_374 
                    #      alloc i32 temp_361_374 
                    #      alloc i32 temp_362_374 
                    #      alloc ptr->i32 temp_363_374 
                    #      alloc i32 temp_364_374 
                    #      alloc i1 temp_365_374 
                    #      alloc ptr->i32 temp_366_378 
                    #      alloc i32 temp_367_378 
                    #      alloc i32 temp_368_378 
                    #      alloc i32 temp_369_378 
                    #      alloc ptr->i32 temp_370_378 
                    #      alloc i32 temp_371_378 
                    #      alloc i1 temp_372_378 
                    #      alloc ptr->i32 temp_373_382 
                    #      alloc i32 temp_374_382 
                    #      alloc i32 temp_375_382 
                    #      alloc i32 temp_376_382 
                    #      alloc ptr->i32 temp_377_382 
                    #      alloc i32 temp_378_382 
                    #      alloc i1 temp_379_382 
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_29_63:i32 
                    #      temp_29_63 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a3, pos
                    #occupy reg a3 with *pos_0
    lw      a4,0(a3)
                    #      new_var temp_30_63:i1 
                    #      temp_30_63 = icmp i32 Sge temp_29_63, len_60 
    slt     a5,a4,a2
    xori    a5,a5,1
                    #      br i1 temp_30_63, label branch_true_64, label branch_false_64 
    bnez    a5, .branch_true_64
    j       .branch_false_64
                    #      label branch_true_64: 
.branch_true_64:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1844(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_64: 
.branch_false_64:
                    #      label L4_0: 
.L4_0:
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1844(sp)
    mv      a0, a1
    sd      a1,1832(sp)
    mv      a1, a2
                    #arg load ended
    call    skip_space
                    #      jump label: L5_0 
    j       .L5_0
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_31_68:i1 
                    #      temp_31_68 = icmp i32 Eq type_60, 0_0 
    li      a1, 0
    xor     a3,a0,a1
    seqz    a3, a3
                    #      br i1 temp_31_68, label branch_true_69, label branch_false_69 
    bnez    a3, .branch_true_69
    j       .branch_false_69
                    #      label branch_true_69: 
.branch_true_69:
                    #      new_var temp_32_71:i32 
                    #      temp_32_71 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      a6,0(a1)
                    #      new_var temp_33_71:ptr->i32 
                    #      new_var temp_34_71:i32 
                    #      temp_33_71 = getelementptr buf_60:ptr->i32 [Some(temp_32_71)] 
    li      a7, 0
    li      s1, 1
    mul     s2,s1,a6
    add     a7,a7,s2
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_34_71 = load temp_33_71:ptr->i32 
    lw      s3,0(a7)
                    #      new_var temp_35_71:i1 
                    #      temp_35_71 = icmp i32 Eq temp_34_71, 123_0 
    li      s4, 123
    xor     s5,s3,s4
    seqz    s5, s5
                    #      br i1 temp_35_71, label branch_true_72, label branch_false_72 
    bnez    s5, .branch_true_72
    j       .branch_false_72
                    #      label branch_true_72: 
.branch_true_72:
                    #      new_var temp_36_73:i32 
                    #      temp_36_73 =  Call i32 detect_item_0(4_0, buf_60, len_60) 
                    #saved register dumping to mem
    sd      s2,1832(sp)
    sw      s3,1804(sp)
    sb      s5,1803(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1844(sp)
    li      a0, 4
    ld      a1,1832(sp)
    sw      a2,1828(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,1796(sp)
                    #      ret temp_36_73 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1796(sp)
    addi    sp,sp,1864
    ret
                    #      label branch_false_72: 
.branch_false_72:
                    #      new_var temp_37_75:i32 
                    #      temp_37_75 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s1,0(a1)
                    #      new_var temp_38_75:ptr->i32 
                    #      new_var temp_39_75:i32 
                    #      temp_38_75 = getelementptr buf_60:ptr->i32 [Some(temp_37_75)] 
    li      s4, 0
    li      s6, 1
    add     s4,s4,s2
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_39_75 = load temp_38_75:ptr->i32 
    lw      s7,0(s4)
                    #      new_var temp_40_75:i1 
                    #      temp_40_75 = icmp i32 Eq temp_39_75, 91_0 
    li      s8, 91
    xor     s9,s7,s8
    seqz    s9, s9
                    #      br i1 temp_40_75, label branch_true_76, label branch_false_76 
    bnez    s9, .branch_true_76
    j       .branch_false_76
                    #      label branch_true_76: 
.branch_true_76:
                    #      new_var temp_41_77:i32 
                    #      temp_41_77 =  Call i32 detect_item_0(3_0, buf_60, len_60) 
                    #saved register dumping to mem
    sw      s1,1792(sp)
    sd      s2,1832(sp)
    sw      s3,1804(sp)
    sd      s4,1784(sp)
    sb      s5,1803(sp)
    sw      s7,1780(sp)
    sb      s9,1779(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1844(sp)
    li      a0, 3
    ld      a1,1832(sp)
    sw      a2,1828(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,1772(sp)
                    #      ret temp_41_77 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1772(sp)
    addi    sp,sp,1864
    ret
                    #      label branch_false_76: 
.branch_false_76:
                    #      new_var temp_42_79:i32 
                    #      temp_42_79 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s6,0(a1)
                    #      new_var temp_43_79:ptr->i32 
                    #      new_var temp_44_79:i32 
                    #      temp_43_79 = getelementptr buf_60:ptr->i32 [Some(temp_42_79)] 
    li      s8, 0
    li      s10, 1
    add     s8,s8,s2
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_44_79 = load temp_43_79:ptr->i32 
    lw      s11,0(s8)
                    #      new_var temp_45_79:i1 
                    #      temp_45_79 = icmp i32 Eq temp_44_79, 34_0 
    li      a1, 34
    xor     s10,s11,a1
    seqz    s10, s10
                    #      br i1 temp_45_79, label branch_true_80, label branch_false_80 
    bnez    s10, .branch_true_80
    j       .branch_false_80
                    #      label branch_true_80: 
.branch_true_80:
                    #      new_var temp_46_81:i32 
                    #      temp_46_81 =  Call i32 detect_item_0(2_0, buf_60, len_60) 
                    #saved register dumping to mem
    sw      s1,1792(sp)
    sd      s2,1832(sp)
    sw      s3,1804(sp)
    sd      s4,1784(sp)
    sb      s5,1803(sp)
    sw      s6,1768(sp)
    sw      s7,1780(sp)
    sd      s8,1760(sp)
    sb      s9,1779(sp)
    sb      s10,1755(sp)
    sw      s11,1756(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1844(sp)
    li      a0, 2
    ld      a1,1832(sp)
    sw      a2,1828(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,1748(sp)
                    #      ret temp_46_81 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1748(sp)
    addi    sp,sp,1864
    ret
                    #      label branch_false_80: 
.branch_false_80:
                    #      new_var temp_47_83:i32 
                    #      temp_47_83 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    sw      a0,1844(sp)
    lw      a0,0(a1)
                    #      new_var temp_48_83:ptr->i32 
                    #      new_var temp_49_83:i32 
                    #      temp_48_83 = getelementptr buf_60:ptr->i32 [Some(temp_47_83)] 
    li      a1, 0
    sw      a0,1744(sp)
    li      a0, 1
    sw      a2,1828(sp)
    add     a1,a1,s2
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_49_83 = load temp_48_83:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_50_83:i32 
                    #      temp_50_83 =  Call i32 is_number_0(temp_49_83) 
                    #saved register dumping to mem
    sw      s1,1792(sp)
    sd      s2,1832(sp)
    sw      s3,1804(sp)
    sd      s4,1784(sp)
    sb      s5,1803(sp)
    sw      s6,1768(sp)
    sw      s7,1780(sp)
    sd      s8,1760(sp)
    sb      s9,1779(sp)
    sb      s10,1755(sp)
    sw      s11,1756(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1732(sp)
    lw      a0,1732(sp)
                    #arg load ended
    call    is_number
    sw      a0,1728(sp)
                    #      new_var temp_51_83:i1 
                    #      temp_51_83 = icmp i32 Eq temp_50_83, 1_0 
    li      s1, 1
    xor     s2,a0,s1
    seqz    s2, s2
                    #      br i1 temp_51_83, label branch_true_84, label branch_false_84 
    bnez    s2, .branch_true_84
    j       .branch_false_84
                    #      label branch_true_84: 
.branch_true_84:
                    #      new_var temp_52_85:i32 
                    #      temp_52_85 =  Call i32 detect_item_0(1_0, buf_60, len_60) 
                    #saved register dumping to mem
    sb      s2,1727(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1728(sp)
    li      a0, 1
    sd      a1,1736(sp)
    ld      a1,1832(sp)
    sw      a2,1744(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,1720(sp)
                    #      ret temp_52_85 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1720(sp)
    addi    sp,sp,1864
    ret
                    #      label branch_false_84: 
.branch_false_84:
                    #      new_var temp_53_87:i32 
                    #      temp_53_87 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    lw      s3,0(s1)
                    #      new_var temp_54_87:ptr->i32 
                    #      new_var temp_55_87:i32 
                    #      temp_54_87 = getelementptr buf_60:ptr->i32 [Some(temp_53_87)] 
    li      s4, 0
    li      s5, 1
    mul     s6,s5,s3
    add     s4,s4,s6
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_55_87 = load temp_54_87:ptr->i32 
    lw      s7,0(s4)
                    #      new_var temp_56_87:i1 
                    #      temp_56_87 = icmp i32 Eq temp_55_87, 43_0 
    li      s8, 43
    xor     s9,s7,s8
    seqz    s9, s9
                    #      br i1 temp_56_87, label branch_true_88, label branch_false_88 
    bnez    s9, .branch_true_88
    j       .branch_false_88
                    #      label branch_true_88: 
.branch_true_88:
                    #      new_var temp_57_89:i32 
                    #      temp_57_89 =  Call i32 detect_item_0(1_0, buf_60, len_60) 
                    #saved register dumping to mem
    sb      s2,1727(sp)
    sw      s3,1716(sp)
    sd      s4,1704(sp)
    sd      s6,1832(sp)
    sw      s7,1700(sp)
    sb      s9,1699(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1728(sp)
    li      a0, 1
    sd      a1,1736(sp)
    ld      a1,1832(sp)
    sw      a2,1744(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,1692(sp)
                    #      ret temp_57_89 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1692(sp)
    addi    sp,sp,1864
    ret
                    #      label branch_false_88: 
.branch_false_88:
                    #      new_var temp_58_91:i32 
                    #      temp_58_91 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    lw      s5,0(s1)
                    #      new_var temp_59_91:ptr->i32 
                    #      new_var temp_60_91:i32 
                    #      temp_59_91 = getelementptr buf_60:ptr->i32 [Some(temp_58_91)] 
    li      s8, 0
    li      s10, 1
    add     s8,s8,s6
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_60_91 = load temp_59_91:ptr->i32 
    lw      s11,0(s8)
                    #      new_var temp_61_91:i1 
                    #      temp_61_91 = icmp i32 Eq temp_60_91, 45_0 
    li      s1, 45
    xor     s10,s11,s1
    seqz    s10, s10
                    #      br i1 temp_61_91, label branch_true_92, label branch_false_92 
    bnez    s10, .branch_true_92
    j       .branch_false_92
                    #      label branch_true_92: 
.branch_true_92:
                    #      new_var temp_62_93:i32 
                    #      temp_62_93 =  Call i32 detect_item_0(1_0, buf_60, len_60) 
                    #saved register dumping to mem
    sb      s2,1727(sp)
    sw      s3,1716(sp)
    sd      s4,1704(sp)
    sw      s5,1688(sp)
    sd      s6,1832(sp)
    sw      s7,1700(sp)
    sd      s8,1680(sp)
    sb      s9,1699(sp)
    sb      s10,1675(sp)
    sw      s11,1676(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1728(sp)
    li      a0, 1
    sd      a1,1736(sp)
    ld      a1,1832(sp)
    sw      a2,1744(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,1668(sp)
                    #      ret temp_62_93 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1668(sp)
    addi    sp,sp,1864
    ret
                    #      label branch_false_92: 
.branch_false_92:
                    #      new_var temp_63_95:i32 
                    #      temp_63_95 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    sw      a0,1728(sp)
    lw      a0,0(s1)
                    #      new_var temp_64_95:ptr->i32 
                    #      new_var temp_65_95:i32 
                    #      temp_64_95 = getelementptr buf_60:ptr->i32 [Some(temp_63_95)] 
    li      s1, 0
    sw      a0,1664(sp)
    li      a0, 1
    sd      a1,1736(sp)
    add     s1,s1,s6
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_65_95 = load temp_64_95:ptr->i32 
    lw      a0,0(s1)
                    #      new_var temp_66_95:i1 
                    #      temp_66_95 = icmp i32 Eq temp_65_95, 116_0 
    sw      a1,1664(sp)
    li      a1, 116
    sw      a2,1744(sp)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_66_95, label branch_true_96, label branch_false_96 
    bnez    a2, .branch_true_96
    j       .branch_false_96
                    #      label branch_true_96: 
.branch_true_96:
                    #      new_var temp_67_97:i32 
                    #      temp_67_97 =  Call i32 detect_item_0(5_0, buf_60, len_60) 
                    #saved register dumping to mem
    sd      s1,1656(sp)
    sb      s2,1727(sp)
    sw      s3,1716(sp)
    sd      s4,1704(sp)
    sw      s5,1688(sp)
    sd      s6,1832(sp)
    sw      s7,1700(sp)
    sd      s8,1680(sp)
    sb      s9,1699(sp)
    sb      s10,1675(sp)
    sw      s11,1676(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1652(sp)
    li      a0, 5
    ld      a1,1832(sp)
    sb      a2,1651(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,1644(sp)
                    #      ret temp_67_97 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1644(sp)
    addi    sp,sp,1864
    ret
                    #      label branch_false_96: 
.branch_false_96:
                    #      new_var temp_68_99:i32 
                    #      temp_68_99 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    sw      a0,1652(sp)
    lw      a0,0(a1)
                    #      new_var temp_69_99:ptr->i32 
                    #      new_var temp_70_99:i32 
                    #      temp_69_99 = getelementptr buf_60:ptr->i32 [Some(temp_68_99)] 
    li      a1, 0
    sw      a0,1640(sp)
    li      a0, 1
    sb      a2,1651(sp)
    add     a1,a1,s6
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_70_99 = load temp_69_99:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_71_99:i1 
                    #      temp_71_99 = icmp i32 Eq temp_70_99, 102_0 
    sd      a1,1632(sp)
    li      a1, 102
    sw      a2,1640(sp)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_71_99, label branch_true_100, label branch_false_100 
    bnez    a2, .branch_true_100
    j       .branch_false_100
                    #      label branch_true_100: 
.branch_true_100:
                    #      new_var temp_72_101:i32 
                    #      temp_72_101 =  Call i32 detect_item_0(6_0, buf_60, len_60) 
                    #saved register dumping to mem
    sd      s1,1656(sp)
    sb      s2,1727(sp)
    sw      s3,1716(sp)
    sd      s4,1704(sp)
    sw      s5,1688(sp)
    sd      s6,1832(sp)
    sw      s7,1700(sp)
    sd      s8,1680(sp)
    sb      s9,1699(sp)
    sb      s10,1675(sp)
    sw      s11,1676(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1628(sp)
    li      a0, 6
    ld      a1,1832(sp)
    sb      a2,1627(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,1620(sp)
                    #      ret temp_72_101 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1620(sp)
    addi    sp,sp,1864
    ret
                    #      label branch_false_100: 
.branch_false_100:
                    #      new_var temp_73_103:i32 
                    #      temp_73_103 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    sw      a0,1628(sp)
    lw      a0,0(a1)
                    #      new_var temp_74_103:ptr->i32 
                    #      new_var temp_75_103:i32 
                    #      temp_74_103 = getelementptr buf_60:ptr->i32 [Some(temp_73_103)] 
    li      a1, 0
    sw      a0,1616(sp)
    li      a0, 1
    sb      a2,1627(sp)
    add     a1,a1,s6
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_75_103 = load temp_74_103:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_76_103:i1 
                    #      temp_76_103 = icmp i32 Eq temp_75_103, 110_0 
    sd      a1,1608(sp)
    li      a1, 110
    sw      a2,1616(sp)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_76_103, label branch_true_104, label branch_false_104 
    bnez    a2, .branch_true_104
    j       .branch_false_104
                    #      label branch_true_104: 
.branch_true_104:
                    #      new_var temp_77_105:i32 
                    #      temp_77_105 =  Call i32 detect_item_0(7_0, buf_60, len_60) 
                    #saved register dumping to mem
    sd      s1,1656(sp)
    sb      s2,1727(sp)
    sw      s3,1716(sp)
    sd      s4,1704(sp)
    sw      s5,1688(sp)
    sd      s6,1832(sp)
    sw      s7,1700(sp)
    sd      s8,1680(sp)
    sb      s9,1699(sp)
    sb      s10,1675(sp)
    sw      s11,1676(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1604(sp)
    li      a0, 7
    ld      a1,1832(sp)
    sb      a2,1603(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,1596(sp)
                    #      ret temp_77_105 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1596(sp)
    addi    sp,sp,1864
    ret
                    #      label branch_false_104: 
.branch_false_104:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1604(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label L6_0: 
.L6_0:
                    #      label L7_0: 
.L7_0:
                    #      label L8_0: 
.L8_0:
                    #      label L9_0: 
.L9_0:
                    #      label L10_0: 
.L10_0:
                    #      label L11_0: 
.L11_0:
                    #      label L12_0: 
.L12_0:
                    #      label L13_0: 
.L13_0:
                    #      label L14_0: 
.L14_0:
                    #      label branch_false_69: 
.branch_false_69:
                    #      new_var temp_78_109:i1 
                    #      temp_78_109 = icmp i32 Eq type_60, 1_0 
    li      a1, 1
    xor     a6,a0,a1
    seqz    a6, a6
                    #      br i1 temp_78_109, label branch_true_110, label branch_false_110 
    bnez    a6, .branch_true_110
    j       .branch_false_110
                    #      label branch_true_110: 
.branch_true_110:
                    #      new_var temp_79_112:i32 
                    #      temp_79_112 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      a7,0(a1)
                    #      new_var temp_80_112:ptr->i32 
                    #      new_var temp_81_112:i32 
                    #      temp_80_112 = getelementptr buf_60:ptr->i32 [Some(temp_79_112)] 
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a7
    add     s1,s1,s3
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_81_112 = load temp_80_112:ptr->i32 
    lw      s4,0(s1)
                    #      new_var temp_82_112:i1 
                    #      temp_82_112 = icmp i32 Eq temp_81_112, 43_0 
    li      s5, 43
    xor     s6,s4,s5
    seqz    s6, s6
                    #      br i1 temp_82_112, label branch_true_113, label branch_false_113 
    bnez    s6, .branch_true_113
    j       .branch_false_113
                    #      label branch_true_113: 
.branch_true_113:
                    #      new_var temp_83_114:i32 
                    #      temp_83_114 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s2,0(a1)
                    #      new_var temp_84_114:i32 
                    #      temp_84_114 = Add i32 temp_83_114, 1_0 
    li      s5, 1
    add     s7,s2,s5
                    #      store temp_84_114:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s8, pos
                    #occupy reg s8 with *pos_0
    sd      s7,0(s8)
                    #      jump label: L15_0 
    j       .L15_0
                    #      label branch_false_113: 
.branch_false_113:
                    #      new_var temp_151_116:i32 
                    #      temp_151_116 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s2,0(a1)
                    #      new_var temp_152_116:ptr->i32 
                    #      new_var temp_153_116:i32 
                    #      temp_152_116 = getelementptr buf_60:ptr->i32 [Some(temp_151_116)] 
    li      s5, 0
    li      s7, 1
    add     s5,s5,s3
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_153_116 = load temp_152_116:ptr->i32 
    lw      s8,0(s5)
                    #      new_var temp_154_116:i1 
                    #      temp_154_116 = icmp i32 Eq temp_153_116, 45_0 
    li      s9, 45
    xor     s10,s8,s9
    seqz    s10, s10
                    #      br i1 temp_154_116, label branch_true_117, label branch_false_117 
    bnez    s10, .branch_true_117
    j       .branch_false_117
                    #      label branch_true_117: 
.branch_true_117:
                    #      new_var temp_155_118:i32 
                    #      temp_155_118 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s7,0(a1)
                    #      new_var temp_156_118:i32 
                    #      temp_156_118 = Add i32 temp_155_118, 1_0 
    li      s9, 1
    add     s11,s7,s9
                    #      store temp_156_118:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    sd      s11,0(a1)
                    #      jump label: branch_false_117 
    sw      s7,1220(sp)
    sw      s11,1216(sp)
    j       .branch_false_117
                    #      label branch_false_117: 
.branch_false_117:
                    #      label L15_0: 
.L15_0:
                    #      label L16_0: 
.L16_0:
                    #      new_var temp_85_120:i32 
                    #      temp_85_120 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s5,0(a1)
                    #      new_var temp_86_120:i1 
                    #      temp_86_120 = icmp i32 Sge temp_85_120, len_60 
    slt     s8,s5,a2
    xori    s8,s8,1
                    #      br i1 temp_86_120, label branch_true_121, label branch_false_121 
    bnez    s8, .branch_true_121
    j       .branch_false_121
                    #      label branch_true_121: 
.branch_true_121:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1844(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_121: 
.branch_false_121:
                    #      new_var temp_146_124:i32 
                    #      temp_146_124 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s9,0(a1)
                    #      new_var temp_147_124:ptr->i32 
                    #      new_var temp_148_124:i32 
                    #      temp_147_124 = getelementptr buf_60:ptr->i32 [Some(temp_146_124)] 
    li      s10, 0
    li      s11, 1
    add     s10,s10,s3
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_148_124 = load temp_147_124:ptr->i32 
    lw      a1,0(s10)
                    #      new_var temp_149_124:i32 
                    #      temp_149_124 =  Call i32 is_number_0(temp_148_124) 
                    #saved register dumping to mem
    sd      s1,1576(sp)
    sw      s2,1564(sp)
    sd      s3,1832(sp)
    sw      s4,1572(sp)
    sw      s5,1556(sp)
    sb      s6,1571(sp)
    sw      s7,1560(sp)
    sb      s8,1555(sp)
    sw      s9,1264(sp)
    sd      s10,1256(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1844(sp)
    mv      a0, a1
                    #arg load ended
    call    is_number
    sw      a0,1248(sp)
                    #      new_var temp_150_124:i1 
                    #      temp_150_124 = icmp i32 Eq temp_149_124, 0_0 
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
                    #      br i1 temp_150_124, label branch_true_125, label branch_false_125 
    bnez    s2, .branch_true_125
    j       .branch_false_125
                    #      label branch_true_125: 
.branch_true_125:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1248(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_125: 
.branch_false_125:
                    #      label L17_0: 
.L17_0:
                    #      label while.head_129: 
.while.head_129:
                    #      new_var temp_87_128:i32 
                    #      temp_87_128 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    lw      s3,0(s1)
                    #      new_var temp_88_128:i1 
                    #      temp_88_128 = icmp i32 Slt temp_87_128, len_60 
    slt     s4,s3,a2
                    #      br i1 temp_88_128, label while.body_129, label while.exit_129 
    bnez    s4, .while.body_129
    j       .while.exit_129
                    #      label while.body_129: 
.while.body_129:
                    #      new_var temp_89_131:i32 
                    #      temp_89_131 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    lw      s5,0(s1)
                    #      new_var temp_90_131:ptr->i32 
                    #      new_var temp_91_131:i32 
                    #      temp_90_131 = getelementptr buf_60:ptr->i32 [Some(temp_89_131)] 
    li      s6, 0
    li      s7, 1
    mul     s8,s7,s5
    add     s6,s6,s8
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_91_131 = load temp_90_131:ptr->i32 
    lw      s9,0(s6)
                    #      new_var temp_92_131:i32 
                    #      temp_92_131 =  Call i32 is_number_0(temp_91_131) 
                    #saved register dumping to mem
    sb      s2,1247(sp)
    sw      s3,1548(sp)
    sb      s4,1547(sp)
    sw      s5,1540(sp)
    sd      s6,1528(sp)
    sd      s8,1832(sp)
    sw      s9,1524(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1248(sp)
    lw      a0,1524(sp)
                    #arg load ended
    call    is_number
    sw      a0,1520(sp)
                    #      new_var temp_93_131:i1 
                    #      temp_93_131 = icmp i32 Ne temp_92_131, 1_0 
    li      s1, 1
    xor     s2,a0,s1
    snez    s2, s2
                    #      br i1 temp_93_131, label branch_true_132, label branch_false_132 
    bnez    s2, .branch_true_132
    j       .branch_false_132
                    #      label branch_true_132: 
.branch_true_132:
                    #      jump label: while.exit_129 
    lb      s4,1547(sp)
    lw      s3,1548(sp)
    sb      s2,1519(sp)
    lb      s2,1247(sp)
    sw      a0,1520(sp)
    lw      a0,1248(sp)
    j       .while.exit_129
                    #      label while.exit_129: 
.while.exit_129:
                    #      new_var temp_96_135:i32 
                    #      temp_96_135 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    lw      s5,0(s1)
                    #      new_var temp_97_135:i1 
                    #      temp_97_135 = icmp i32 Slt temp_96_135, len_60 
    slt     s6,s5,a2
                    #      br i1 temp_97_135, label branch_true_136, label branch_false_136 
    bnez    s6, .branch_true_136
    j       .branch_false_136
                    #      label branch_true_136: 
.branch_true_136:
                    #      new_var temp_98_138:i32 
                    #      temp_98_138 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    lw      s7,0(s1)
                    #      new_var temp_99_138:ptr->i32 
                    #      new_var temp_100_138:i32 
                    #      temp_99_138 = getelementptr buf_60:ptr->i32 [Some(temp_98_138)] 
    li      s8, 0
    li      s9, 1
    mul     s10,s9,s7
    add     s8,s8,s10
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_100_138 = load temp_99_138:ptr->i32 
    lw      s11,0(s8)
                    #      new_var temp_101_138:i1 
                    #      temp_101_138 = icmp i32 Eq temp_100_138, 46_0 
    li      s1, 46
    xor     s9,s11,s1
    seqz    s9, s9
                    #      br i1 temp_101_138, label branch_true_139, label branch_false_139 
    bnez    s9, .branch_true_139
    j       .branch_false_139
                    #      label branch_true_139: 
.branch_true_139:
                    #      new_var temp_102_140:i32 
                    #      temp_102_140 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    sw      a0,1248(sp)
    lw      a0,0(s1)
                    #      new_var temp_103_140:i32 
                    #      temp_103_140 = Add i32 temp_102_140, 1_0 
    li      s1, 1
    sw      a1,1252(sp)
    add     a1,a0,s1
                    #      store temp_103_140:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    sd      a1,0(s1)
                    #      jump label: while.head_143 
    j       .while.head_143
                    #      label while.head_143: 
.while.head_143:
                    #      new_var temp_104_142:i32 
                    #      temp_104_142 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    sw      a0,1476(sp)
    lw      a0,0(s1)
                    #      new_var temp_105_142:i1 
                    #      temp_105_142 = icmp i32 Slt temp_104_142, len_60 
    slt     s1,a0,a2
                    #      br i1 temp_105_142, label while.body_143, label while.exit_143 
    bnez    s1, .while.body_143
    sb      s1,1467(sp)
    sw      a1,1472(sp)
    lw      a1,1252(sp)
    sw      a0,1468(sp)
    lw      a0,1248(sp)
    j       .while.exit_143
                    #      label while.body_143: 
.while.body_143:
                    #      new_var temp_106_145:i32 
                    #      temp_106_145 = load *pos_0:ptr->i32 
    sw      a0,1468(sp)
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,1472(sp)
    lw      a1,0(a0)
                    #      new_var temp_107_145:ptr->i32 
                    #      new_var temp_108_145:i32 
                    #      temp_107_145 = getelementptr buf_60:ptr->i32 [Some(temp_106_145)] 
    li      a0, 0
    sw      a1,1460(sp)
    li      a1, 1
    sw      a2,1828(sp)
    add     a0,a0,s10
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_108_145 = load temp_107_145:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_109_145:i32 
                    #      temp_109_145 =  Call i32 is_number_0(temp_108_145) 
                    #saved register dumping to mem
    sb      s1,1467(sp)
    sb      s2,1247(sp)
    sw      s3,1548(sp)
    sb      s4,1547(sp)
    sw      s5,1504(sp)
    sb      s6,1503(sp)
    sw      s7,1496(sp)
    sd      s8,1488(sp)
    sb      s9,1483(sp)
    sd      s10,1832(sp)
    sw      s11,1484(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,1448(sp)
    mv      a0, a1
                    #arg load ended
    call    is_number
    sw      a0,1440(sp)
                    #      new_var temp_110_145:i1 
                    #      temp_110_145 = icmp i32 Ne temp_109_145, 1_0 
    li      s1, 1
    xor     s2,a0,s1
    snez    s2, s2
                    #      br i1 temp_110_145, label branch_true_146, label branch_false_146 
    bnez    s2, .branch_true_146
    j       .branch_false_146
                    #      label branch_true_146: 
.branch_true_146:
                    #      jump label: while.exit_143 
    lb      s6,1503(sp)
    ld      s10,1832(sp)
    sw      a1,1444(sp)
    lw      a1,1252(sp)
    lb      s9,1483(sp)
    lw      s7,1496(sp)
    lb      s4,1547(sp)
    lw      s5,1504(sp)
    lw      s3,1548(sp)
    sb      s2,1439(sp)
    lb      s2,1247(sp)
    ld      s8,1488(sp)
    sw      a2,1460(sp)
    lw      a2,1828(sp)
    sw      a0,1440(sp)
    lw      a0,1248(sp)
    lw      s11,1484(sp)
    j       .while.exit_143
                    #      label while.exit_143: 
.while.exit_143:
                    #      label branch_false_146: 
.branch_false_146:
                    #      label L18_0: 
.L18_0:
                    #      new_var temp_111_144:i32 
                    #      temp_111_144 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    lw      s3,0(s1)
                    #      new_var temp_112_144:i32 
                    #      temp_112_144 = Add i32 temp_111_144, 1_0 
    li      s4, 1
    add     s5,s3,s4
                    #      store temp_112_144:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s6, pos
                    #occupy reg s6 with *pos_0
    sd      s5,0(s6)
                    #      jump label: while.head_143 
    lb      s6,1503(sp)
    ld      s10,1832(sp)
    sw      a1,1444(sp)
    lw      a1,1472(sp)
    lb      s9,1483(sp)
    lw      s7,1496(sp)
    lb      s4,1547(sp)
    sw      s5,1428(sp)
    lw      s5,1504(sp)
    sw      s3,1432(sp)
    lw      s3,1548(sp)
    sb      s2,1439(sp)
    lb      s2,1247(sp)
    ld      s8,1488(sp)
    sw      a2,1460(sp)
    lw      a2,1828(sp)
    sw      a0,1440(sp)
    lw      a0,1476(sp)
    lw      s11,1484(sp)
    j       .while.head_143
                    #      label branch_false_136: 
.branch_false_136:
                    #      label L19_0: 
.L19_0:
                    #      new_var temp_113_149:i32 
                    #      temp_113_149 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    lw      s7,0(s1)
                    #      new_var temp_114_149:i1 
                    #      temp_114_149 = icmp i32 Slt temp_113_149, len_60 
    slt     s8,s7,a2
                    #      br i1 temp_114_149, label branch_true_150, label branch_false_150 
    bnez    s8, .branch_true_150
    j       .branch_false_150
                    #      label branch_true_150: 
.branch_true_150:
                    #      new_var temp_115_152:i32 
                    #      temp_115_152 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    lw      s9,0(s1)
                    #      new_var temp_116_152:ptr->i32 
                    #      new_var temp_117_152:i32 
                    #      temp_116_152 = getelementptr buf_60:ptr->i32 [Some(temp_115_152)] 
    li      s10, 0
    li      s11, 1
    mul     s1,s11,s9
    add     s10,s10,s1
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_117_152 = load temp_116_152:ptr->i32 
    lw      s11,0(s10)
                    #      new_var temp_118_152:i1 
                    #      temp_118_152 = icmp i32 Eq temp_117_152, 101_0 
    sw      a0,1248(sp)
    li      a0, 101
    sw      a1,1252(sp)
    xor     a1,s11,a0
    seqz    a1, a1
                    #      br i1 temp_118_152, label branch_true_153, label branch_false_153 
    bnez    a1, .branch_true_153
    j       .branch_false_153
                    #      label branch_true_153: 
.branch_true_153:
                    #      new_var temp_119_154:i32 
                    #      temp_119_154 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sb      a1,1403(sp)
    lw      a1,0(a0)
                    #      new_var temp_120_154:i32 
                    #      temp_120_154 = Add i32 temp_119_154, 1_0 
    li      a0, 1
    sw      a2,1828(sp)
    add     a2,a1,a0
                    #      store temp_120_154:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sd      a2,0(a0)
                    #      jump label: L20_0 
    j       .L20_0
                    #      label L20_0: 
.L20_0:
                    #      new_var temp_121_156:i32 
                    #      temp_121_156 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,1396(sp)
    lw      a1,0(a0)
                    #      new_var temp_122_156:i1 
                    #      temp_122_156 = icmp i32 Slt temp_121_156, len_60 
    sw      a2,1392(sp)
    slt     a2,a1,a0
                    #      br i1 temp_122_156, label branch_true_157, label branch_false_157 
    bnez    a2, .branch_true_157
    j       .branch_false_157
                    #      label branch_true_157: 
.branch_true_157:
                    #      new_var temp_123_159:i32 
                    #      temp_123_159 = load *pos_0:ptr->i32 
    sw      a0,1828(sp)
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,1388(sp)
    lw      a1,0(a0)
                    #      new_var temp_124_159:ptr->i32 
                    #      new_var temp_125_159:i32 
                    #      temp_124_159 = getelementptr buf_60:ptr->i32 [Some(temp_123_159)] 
    li      a0, 0
    sw      a1,1380(sp)
    li      a1, 1
    sb      a2,1387(sp)
    add     a0,a0,s1
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_125_159 = load temp_124_159:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_126_159:i1 
                    #      temp_126_159 = icmp i32 Eq temp_125_159, 43_0 
    sd      a0,1368(sp)
    li      a0, 43
    sw      a2,1380(sp)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_126_159, label branch_true_160, label branch_false_160 
    bnez    a2, .branch_true_160
    j       .branch_false_160
                    #      label branch_true_160: 
.branch_true_160:
                    #      new_var temp_127_161:i32 
                    #      temp_127_161 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,1364(sp)
    lw      a1,0(a0)
                    #      new_var temp_128_161:i32 
                    #      temp_128_161 = Add i32 temp_127_161, 1_0 
    li      a0, 1
    sb      a2,1363(sp)
    add     a2,a1,a0
                    #      store temp_128_161:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sd      a2,0(a0)
                    #      jump label: branch_false_160 
    sw      a1,1356(sp)
    lw      a1,1364(sp)
    sw      a2,1352(sp)
    lb      a2,1363(sp)
    j       .branch_false_160
                    #      label branch_false_160: 
.branch_false_160:
                    #      label branch_false_157: 
.branch_false_157:
                    #      label L21_0: 
.L21_0:
                    #      new_var temp_129_163:i32 
                    #      temp_129_163 = load *pos_0:ptr->i32 
    sw      a0,1828(sp)
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,1388(sp)
    lw      a1,0(a0)
                    #      new_var temp_130_163:i1 
                    #      temp_130_163 = icmp i32 Slt temp_129_163, len_60 
    sb      a2,1387(sp)
    slt     a2,a1,a0
                    #      br i1 temp_130_163, label branch_true_164, label branch_false_164 
    bnez    a2, .branch_true_164
    j       .branch_false_164
                    #      label branch_true_164: 
.branch_true_164:
                    #      new_var temp_131_166:i32 
                    #      temp_131_166 = load *pos_0:ptr->i32 
    sw      a0,1828(sp)
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,1348(sp)
    lw      a1,0(a0)
                    #      new_var temp_132_166:ptr->i32 
                    #      new_var temp_133_166:i32 
                    #      temp_132_166 = getelementptr buf_60:ptr->i32 [Some(temp_131_166)] 
    li      a0, 0
    sw      a1,1340(sp)
    li      a1, 1
    sb      a2,1347(sp)
    add     a0,a0,s1
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_133_166 = load temp_132_166:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_134_166:i1 
                    #      temp_134_166 = icmp i32 Eq temp_133_166, 45_0 
    sd      a0,1328(sp)
    li      a0, 45
    sw      a2,1340(sp)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_134_166, label branch_true_167, label branch_false_167 
    bnez    a2, .branch_true_167
    j       .branch_false_167
                    #      label branch_true_167: 
.branch_true_167:
                    #      new_var temp_135_168:i32 
                    #      temp_135_168 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,1324(sp)
    lw      a1,0(a0)
                    #      new_var temp_136_168:i32 
                    #      temp_136_168 = Add i32 temp_135_168, 1_0 
    li      a0, 1
    sb      a2,1323(sp)
    add     a2,a1,a0
                    #      store temp_136_168:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sd      a2,0(a0)
                    #      jump label: branch_false_167 
    sw      a1,1316(sp)
    lw      a1,1324(sp)
    sw      a2,1312(sp)
    lb      a2,1323(sp)
    j       .branch_false_167
                    #      label branch_false_167: 
.branch_false_167:
                    #      label branch_false_164: 
.branch_false_164:
                    #      label while.head_171: 
.while.head_171:
                    #      new_var temp_137_170:i32 
                    #      temp_137_170 = load *pos_0:ptr->i32 
    sw      a0,1828(sp)
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,1348(sp)
    lw      a1,0(a0)
                    #      new_var temp_138_170:i1 
                    #      temp_138_170 = icmp i32 Slt temp_137_170, len_60 
    sb      a2,1347(sp)
    slt     a2,a1,a0
                    #      br i1 temp_138_170, label while.body_171, label while.exit_171 
    bnez    a2, .while.body_171
    sw      a1,1308(sp)
    lb      a1,1403(sp)
    sb      a2,1307(sp)
    mv      a2, a0
    sw      a0,1828(sp)
    j       .while.exit_171
                    #      label while.body_171: 
.while.body_171:
                    #      new_var temp_139_173:i32 
                    #      temp_139_173 = load *pos_0:ptr->i32 
    sw      a0,1828(sp)
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,1308(sp)
    lw      a1,0(a0)
                    #      new_var temp_140_173:ptr->i32 
                    #      new_var temp_141_173:i32 
                    #      temp_140_173 = getelementptr buf_60:ptr->i32 [Some(temp_139_173)] 
    li      a0, 0
    sw      a1,1300(sp)
    li      a1, 1
    sb      a2,1307(sp)
    add     a0,a0,s1
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_141_173 = load temp_140_173:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_142_173:i32 
                    #      temp_142_173 =  Call i32 is_number_0(temp_141_173) 
                    #saved register dumping to mem
    sd      s1,1832(sp)
    sb      s2,1247(sp)
    sw      s3,1548(sp)
    sb      s4,1547(sp)
    sw      s5,1504(sp)
    sb      s6,1503(sp)
    sw      s7,1424(sp)
    sb      s8,1423(sp)
    sw      s9,1416(sp)
    sd      s10,1408(sp)
    sw      s11,1404(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,1288(sp)
    mv      a0, a1
                    #arg load ended
    call    is_number
    sw      a0,1280(sp)
                    #      new_var temp_143_173:i1 
                    #      temp_143_173 = icmp i32 Ne temp_142_173, 1_0 
    li      s1, 1
    xor     s2,a0,s1
    snez    s2, s2
                    #      br i1 temp_143_173, label branch_true_174, label branch_false_174 
    bnez    s2, .branch_true_174
    j       .branch_false_174
                    #      label branch_true_174: 
.branch_true_174:
                    #      jump label: while.exit_171 
    lb      s6,1503(sp)
    ld      s10,1408(sp)
    ld      s1,1832(sp)
    sw      a1,1284(sp)
    lb      a1,1403(sp)
    lw      s9,1416(sp)
    lw      s7,1424(sp)
    lb      s4,1547(sp)
    lw      s5,1504(sp)
    lw      s3,1548(sp)
    sb      s2,1279(sp)
    lb      s2,1247(sp)
    lb      s8,1423(sp)
    sw      a2,1300(sp)
    lw      a2,1828(sp)
    sw      a0,1280(sp)
    lw      s11,1404(sp)
    j       .while.exit_171
                    #      label while.exit_171: 
.while.exit_171:
                    #      label branch_false_174: 
.branch_false_174:
                    #      label L22_0: 
.L22_0:
                    #      new_var temp_144_172:i32 
                    #      temp_144_172 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    lw      s3,0(s1)
                    #      new_var temp_145_172:i32 
                    #      temp_145_172 = Add i32 temp_144_172, 1_0 
    li      s4, 1
    add     s5,s3,s4
                    #      store temp_145_172:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s6, pos
                    #occupy reg s6 with *pos_0
    sd      s5,0(s6)
                    #      jump label: while.head_171 
    lb      s6,1503(sp)
    ld      s10,1408(sp)
    ld      s1,1832(sp)
    sw      a1,1284(sp)
    lw      a1,1348(sp)
    lw      s9,1416(sp)
    lw      s7,1424(sp)
    lb      s4,1547(sp)
    sw      s5,1268(sp)
    lw      s5,1504(sp)
    sw      s3,1272(sp)
    lw      s3,1548(sp)
    sb      s2,1279(sp)
    lb      s2,1247(sp)
    lb      s8,1423(sp)
    sw      a2,1300(sp)
    lb      a2,1347(sp)
    sw      a0,1280(sp)
    lw      a0,1828(sp)
    lw      s11,1404(sp)
    j       .while.head_171
                    #      label branch_false_150: 
.branch_false_150:
                    #      label branch_false_132: 
.branch_false_132:
                    #      label L23_0: 
.L23_0:
                    #      new_var temp_94_130:i32 
                    #      temp_94_130 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s1, pos
                    #occupy reg s1 with *pos_0
    lw      s3,0(s1)
                    #      new_var temp_95_130:i32 
                    #      temp_95_130 = Add i32 temp_94_130, 1_0 
    li      s4, 1
    add     s5,s3,s4
                    #      store temp_95_130:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s6, pos
                    #occupy reg s6 with *pos_0
    sd      s5,0(s6)
                    #      jump label: while.head_129 
    sw      s5,1508(sp)
    sw      s3,1512(sp)
    sb      s2,1519(sp)
    lb      s2,1247(sp)
    sw      a0,1520(sp)
    lw      a0,1248(sp)
    j       .while.head_129
                    #      label branch_false_110: 
.branch_false_110:
                    #      new_var temp_157_177:i1 
                    #      temp_157_177 = icmp i32 Eq type_60, 2_0 
    li      a1, 2
    xor     a7,a0,a1
    seqz    a7, a7
                    #      br i1 temp_157_177, label branch_true_178, label branch_false_178 
    bnez    a7, .branch_true_178
    j       .branch_false_178
                    #      label branch_true_178: 
.branch_true_178:
                    #      new_var temp_158_179:i32 
                    #      temp_158_179 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s1,0(a1)
                    #      new_var temp_159_179:i32 
                    #      temp_159_179 = Add i32 temp_158_179, 1_0 
    li      s2, 1
    add     s3,s1,s2
                    #      store temp_159_179:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s4, pos
                    #occupy reg s4 with *pos_0
    sd      s3,0(s4)
                    #      jump label: while.head_182 
    j       .while.head_182
                    #      label while.head_182: 
.while.head_182:
                    #      new_var temp_160_181:i32 
                    #      temp_160_181 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s2,0(a1)
                    #      new_var temp_161_181:i1 
                    #      temp_161_181 = icmp i32 Slt temp_160_181, len_60 
    slt     s4,s2,a2
                    #      br i1 temp_161_181, label while.body_182, label while.exit_182 
    bnez    s4, .while.body_182
    j       .while.exit_182
                    #      label while.body_182: 
.while.body_182:
                    #      new_var temp_162_184:i32 
                    #      temp_162_184 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s5,0(a1)
                    #      new_var temp_163_184:ptr->i32 
                    #      new_var temp_164_184:i32 
                    #      temp_163_184 = getelementptr buf_60:ptr->i32 [Some(temp_162_184)] 
    li      s6, 0
    li      s7, 1
    mul     s8,s7,s5
    add     s6,s6,s8
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_164_184 = load temp_163_184:ptr->i32 
    lw      s9,0(s6)
                    #      new_var temp_165_184:i1 
                    #      temp_165_184 = icmp i32 Eq temp_164_184, 34_0 
    li      s10, 34
    xor     s11,s9,s10
    seqz    s11, s11
                    #      br i1 temp_165_184, label branch_true_185, label branch_false_185 
    bnez    s11, .branch_true_185
    j       .branch_false_185
                    #      label branch_true_185: 
.branch_true_185:
                    #      jump label: while.exit_182 
    sd      s6,1184(sp)
    sw      s9,1180(sp)
    sw      s5,1192(sp)
    sd      s8,1832(sp)
    sb      s11,1179(sp)
    j       .while.exit_182
                    #      label while.exit_182: 
.while.exit_182:
                    #      new_var temp_174_193:i32 
                    #      temp_174_193 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s5,0(a1)
                    #      new_var temp_175_193:i1 
                    #      temp_175_193 = icmp i32 Sge temp_174_193, len_60 
    slt     s6,s5,a2
    xori    s6,s6,1
                    #      br i1 temp_175_193, label branch_true_194, label branch_false_194 
    bnez    s6, .branch_true_194
    j       .branch_false_194
                    #      label branch_true_194: 
.branch_true_194:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1844(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_194: 
.branch_false_194:
                    #      new_var temp_178_197:i32 
                    #      temp_178_197 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s7,0(a1)
                    #      new_var temp_179_197:ptr->i32 
                    #      new_var temp_180_197:i32 
                    #      temp_179_197 = getelementptr buf_60:ptr->i32 [Some(temp_178_197)] 
    li      s8, 0
    li      s9, 1
    mul     s10,s9,s7
    add     s8,s8,s10
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_180_197 = load temp_179_197:ptr->i32 
    lw      s11,0(s8)
                    #      new_var temp_181_197:i1 
                    #      temp_181_197 = icmp i32 Ne temp_180_197, 34_0 
    li      a1, 34
    xor     s9,s11,a1
    snez    s9, s9
                    #      br i1 temp_181_197, label branch_true_198, label branch_false_198 
    bnez    s9, .branch_true_198
    j       .branch_false_198
                    #      label branch_true_198: 
.branch_true_198:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1844(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_198: 
.branch_false_198:
                    #      label L24_0: 
.L24_0:
                    #      label L25_0: 
.L25_0:
                    #      new_var temp_176_179:i32 
                    #      temp_176_179 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    sw      a0,1844(sp)
    lw      a0,0(a1)
                    #      new_var temp_177_179:i32 
                    #      temp_177_179 = Add i32 temp_176_179, 1_0 
    li      a1, 1
    sw      a2,1828(sp)
    add     a2,a0,a1
                    #      store temp_177_179:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    sd      a2,0(a1)
                    #      jump label: L78_0 
    j       .L78_0
                    #      label branch_false_185: 
.branch_false_185:
                    #      label L26_0: 
.L26_0:
                    #      new_var temp_166_187:i32 
                    #      temp_166_187 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s7,0(a1)
                    #      new_var temp_167_187:ptr->i32 
                    #      new_var temp_168_187:i32 
                    #      temp_167_187 = getelementptr buf_60:ptr->i32 [Some(temp_166_187)] 
    li      s10, 0
    li      a1, 1
    add     s10,s10,s8
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_168_187 = load temp_167_187:ptr->i32 
    lw      a1,0(s10)
                    #      new_var temp_169_187:i1 
                    #      temp_169_187 = icmp i32 Eq temp_168_187, 92_0 
    sw      a0,1844(sp)
    li      a0, 92
    sw      a2,1828(sp)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_169_187, label branch_true_188, label branch_false_188 
    bnez    a2, .branch_true_188
    j       .branch_false_188
                    #      label branch_true_188: 
.branch_true_188:
                    #      new_var temp_170_189:i32 
                    #      temp_170_189 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,1156(sp)
    lw      a1,0(a0)
                    #      new_var temp_171_189:i32 
                    #      temp_171_189 = Add i32 temp_170_189, 2_0 
    li      a0, 2
    sb      a2,1155(sp)
    add     a2,a1,a0
                    #      store temp_171_189:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sd      a2,0(a0)
                    #      jump label: L27_0 
    j       .L27_0
                    #      label branch_false_188: 
.branch_false_188:
                    #      new_var temp_172_191:i32 
                    #      temp_172_191 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,1156(sp)
    lw      a1,0(a0)
                    #      new_var temp_173_191:i32 
                    #      temp_173_191 = Add i32 temp_172_191, 1_0 
    li      a0, 1
    sb      a2,1155(sp)
    add     a2,a1,a0
                    #      store temp_173_191:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sd      a2,0(a0)
                    #      jump label: L27_0 
    sw      a1,1140(sp)
    lw      a1,1148(sp)
    sw      a2,1136(sp)
    lw      a2,1144(sp)
    j       .L27_0
                    #      label L27_0: 
.L27_0:
                    #      jump label: while.head_182 
    sd      s6,1184(sp)
    sd      s10,1160(sp)
    sw      a1,1148(sp)
    sw      s9,1180(sp)
    sw      s7,1172(sp)
    sb      s4,1199(sp)
    sw      s5,1192(sp)
    sw      s2,1200(sp)
    sd      s8,1832(sp)
    sw      a2,1144(sp)
    lw      a2,1828(sp)
    lw      a0,1844(sp)
    sb      s11,1179(sp)
    j       .while.head_182
                    #      label branch_false_178: 
.branch_false_178:
                    #      new_var temp_182_202:i1 
                    #      temp_182_202 = icmp i32 Eq type_60, 3_0 
    li      a1, 3
    xor     s1,a0,a1
    seqz    s1, s1
                    #      br i1 temp_182_202, label branch_true_203, label branch_false_203 
    bnez    s1, .branch_true_203
    j       .branch_false_203
                    #      label branch_true_203: 
.branch_true_203:
                    #      new_var temp_183_204:i32 
                    #      temp_183_204 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s2,0(a1)
                    #      new_var temp_184_204:i32 
                    #      temp_184_204 = Add i32 temp_183_204, 1_0 
    li      s3, 1
    add     s4,s2,s3
                    #      store temp_184_204:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s5, pos
                    #occupy reg s5 with *pos_0
    sd      s4,0(s5)
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
    sb      s1,1098(sp)
    sw      s2,1092(sp)
    sw      s4,1088(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1844(sp)
    ld      a0,1832(sp)
    mv      a1, a2
                    #arg load ended
    call    skip_space
                    #      jump label: L28_0 
    j       .L28_0
                    #      label L28_0: 
.L28_0:
                    #      new_var temp_185_207:i32 
                    #      temp_185_207 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      a1,0(a0)
                    #      new_var temp_186_207:i1 
                    #      temp_186_207 = icmp i32 Slt temp_185_207, len_60 
    slt     s1,a1,a2
                    #      br i1 temp_186_207, label branch_true_208, label branch_false_208 
    bnez    s1, .branch_true_208
    j       .branch_false_208
                    #      label branch_true_208: 
.branch_true_208:
                    #      new_var temp_187_210:i32 
                    #      temp_187_210 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s2,0(a0)
                    #      new_var temp_188_210:ptr->i32 
                    #      new_var temp_189_210:i32 
                    #      temp_188_210 = getelementptr buf_60:ptr->i32 [Some(temp_187_210)] 
    li      s3, 0
    li      s4, 1
    mul     s5,s4,s2
    add     s3,s3,s5
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_189_210 = load temp_188_210:ptr->i32 
    lw      s6,0(s3)
                    #      new_var temp_190_210:i1 
                    #      temp_190_210 = icmp i32 Eq temp_189_210, 93_0 
    li      s7, 93
    xor     s8,s6,s7
    seqz    s8, s8
                    #      br i1 temp_190_210, label branch_true_211, label branch_false_211 
    bnez    s8, .branch_true_211
    j       .branch_false_211
                    #      label branch_true_211: 
.branch_true_211:
                    #      new_var temp_191_212:i32 
                    #      temp_191_212 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s4,0(a0)
                    #      new_var temp_192_212:i32 
                    #      temp_192_212 = Add i32 temp_191_212, 1_0 
    li      s7, 1
    add     s9,s4,s7
                    #      store temp_192_212:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s10, pos
                    #occupy reg s10 with *pos_0
    sd      s9,0(s10)
                    #      ret 1_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    li      a0, 1
    addi    sp,sp,1864
    ret
                    #      label branch_false_211: 
.branch_false_211:
                    #      label branch_false_208: 
.branch_false_208:
                    #      label L29_0: 
.L29_0:
                    #      new_var temp_193_215:i32 
                    #      temp_193_215 =  Call i32 detect_item_0(0_0, buf_60, len_60) 
                    #saved register dumping to mem
    sb      s1,1083(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 0
    sw      a1,1084(sp)
    ld      a1,1832(sp)
    sw      a2,1828(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,1044(sp)
                    #      new_var temp_194_215:i1 
                    #      temp_194_215 = icmp i32 Eq temp_193_215, 0_0 
    li      a1, 0
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_194_215, label branch_true_216, label branch_false_216 
    bnez    a2, .branch_true_216
    j       .branch_false_216
                    #      label branch_true_216: 
.branch_true_216:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1044(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_216: 
.branch_false_216:
                    #      label L30_0: 
.L30_0:
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1044(sp)
    ld      a0,1832(sp)
    lw      a1,1828(sp)
                    #arg load ended
    call    skip_space
                    #      jump label: while.head_221 
    j       .while.head_221
                    #      label while.head_221: 
.while.head_221:
                    #      new_var temp_195_220:i32 
                    #      temp_195_220 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      a1,0(a0)
                    #      new_var temp_196_220:ptr->i32 
                    #      new_var temp_197_220:i32 
                    #      temp_196_220 = getelementptr buf_60:ptr->i32 [Some(temp_195_220)] 
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a1
    add     s1,s1,s3
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_197_220 = load temp_196_220:ptr->i32 
    lw      s4,0(s1)
                    #      new_var temp_198_220:i1 
                    #      temp_198_220 = icmp i32 Eq temp_197_220, 44_0 
    li      s5, 44
    xor     s6,s4,s5
    seqz    s6, s6
                    #      br i1 temp_198_220, label while.body_221, label while.exit_221 
    bnez    s6, .while.body_221
    j       .while.exit_221
                    #      label while.body_221: 
.while.body_221:
                    #      new_var temp_199_222:i32 
                    #      temp_199_222 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s2,0(a0)
                    #      new_var temp_200_222:i32 
                    #      temp_200_222 = Add i32 temp_199_222, 1_0 
    li      s5, 1
    add     s7,s2,s5
                    #      store temp_200_222:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s8, pos
                    #occupy reg s8 with *pos_0
    sd      s7,0(s8)
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
    sd      s1,1024(sp)
    sw      s2,1012(sp)
    sd      s3,1832(sp)
    sw      s4,1020(sp)
    sb      s6,1019(sp)
    sw      s7,1008(sp)
                    #saved register dumped to mem
                    #arg load start
    ld      a0,1832(sp)
    sw      a1,1036(sp)
    lw      a1,1828(sp)
                    #arg load ended
    call    skip_space
                    #      jump label: L31_0 
    j       .L31_0
                    #      label L31_0: 
.L31_0:
                    #      new_var temp_201_225:i32 
                    #      temp_201_225 =  Call i32 detect_item_0(0_0, buf_60, len_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 0
    ld      a1,1832(sp)
    sb      a2,1043(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,1004(sp)
                    #      new_var temp_202_225:i1 
                    #      temp_202_225 = icmp i32 Eq temp_201_225, 0_0 
    li      a1, 0
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_202_225, label branch_true_226, label branch_false_226 
    bnez    a2, .branch_true_226
    j       .branch_false_226
                    #      label branch_true_226: 
.branch_true_226:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1004(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_226: 
.branch_false_226:
                    #      label L32_0: 
.L32_0:
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1004(sp)
    ld      a0,1832(sp)
    lw      a1,1828(sp)
                    #arg load ended
    call    skip_space
                    #      jump label: while.head_221 
    sb      a2,1003(sp)
    lb      a2,1043(sp)
    j       .while.head_221
                    #      label while.exit_221: 
.while.exit_221:
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
    sd      s1,1024(sp)
    sd      s3,1832(sp)
    sw      s4,1020(sp)
    sb      s6,1019(sp)
                    #saved register dumped to mem
                    #arg load start
    ld      a0,1832(sp)
    sw      a1,1036(sp)
    lw      a1,1828(sp)
                    #arg load ended
    call    skip_space
                    #      jump label: L33_0 
    j       .L33_0
                    #      label L33_0: 
.L33_0:
                    #      new_var temp_203_231:i32 
                    #      temp_203_231 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      a1,0(a0)
                    #      new_var temp_204_231:i1 
                    #      temp_204_231 = icmp i32 Sge temp_203_231, len_60 
    slt     s2,a1,s1
    xori    s2,s2,1
                    #      br i1 temp_204_231, label branch_true_232, label branch_false_232 
    bnez    s2, .branch_true_232
    j       .branch_false_232
                    #      label branch_true_232: 
.branch_true_232:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_232: 
.branch_false_232:
                    #      label L34_0: 
.L34_0:
                    #      new_var temp_205_235:i32 
                    #      temp_205_235 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s3,0(a0)
                    #      new_var temp_206_235:ptr->i32 
                    #      new_var temp_207_235:i32 
                    #      temp_206_235 = getelementptr buf_60:ptr->i32 [Some(temp_205_235)] 
    li      s4, 0
    li      s5, 1
    mul     s6,s5,s3
    add     s4,s4,s6
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_207_235 = load temp_206_235:ptr->i32 
    lw      s7,0(s4)
                    #      new_var temp_208_235:i1 
                    #      temp_208_235 = icmp i32 Ne temp_207_235, 93_0 
    li      s8, 93
    xor     s9,s7,s8
    snez    s9, s9
                    #      br i1 temp_208_235, label branch_true_236, label branch_false_236 
    bnez    s9, .branch_true_236
    j       .branch_false_236
                    #      label branch_true_236: 
.branch_true_236:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_236: 
.branch_false_236:
                    #      label L35_0: 
.L35_0:
                    #      new_var temp_209_204:i32 
                    #      temp_209_204 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s5,0(a0)
                    #      new_var temp_210_204:i32 
                    #      temp_210_204 = Add i32 temp_209_204, 1_0 
    li      s8, 1
    add     s10,s5,s8
                    #      store temp_210_204:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s11, pos
                    #occupy reg s11 with *pos_0
    sd      s10,0(s11)
                    #      jump label: L77_0 
    j       .L77_0
                    #      label branch_false_203: 
.branch_false_203:
                    #      new_var temp_211_240:i1 
                    #      temp_211_240 = icmp i32 Eq type_60, 4_0 
    li      a1, 4
    xor     s2,a0,a1
    seqz    s2, s2
                    #      br i1 temp_211_240, label branch_true_241, label branch_false_241 
    bnez    s2, .branch_true_241
    j       .branch_false_241
                    #      label branch_true_241: 
.branch_true_241:
                    #      new_var temp_212_242:i32 
                    #      temp_212_242 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    lw      s3,0(a1)
                    #      new_var temp_213_242:i32 
                    #      temp_213_242 = Add i32 temp_212_242, 1_0 
    li      s4, 1
    add     s5,s3,s4
                    #      store temp_213_242:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s6, pos
                    #occupy reg s6 with *pos_0
    sd      s5,0(s6)
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
    sb      s1,1098(sp)
    sb      s2,959(sp)
    sw      s3,952(sp)
    sw      s5,948(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1844(sp)
    ld      a0,1832(sp)
    mv      a1, a2
                    #arg load ended
    call    skip_space
                    #      jump label: L36_0 
    j       .L36_0
                    #      label L36_0: 
.L36_0:
                    #      new_var temp_214_245:i32 
                    #      temp_214_245 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      a1,0(a0)
                    #      new_var temp_215_245:i1 
                    #      temp_215_245 = icmp i32 Slt temp_214_245, len_60 
    slt     s1,a1,a2
                    #      br i1 temp_215_245, label branch_true_246, label branch_false_246 
    bnez    s1, .branch_true_246
    j       .branch_false_246
                    #      label branch_true_246: 
.branch_true_246:
                    #      new_var temp_216_248:i32 
                    #      temp_216_248 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s2,0(a0)
                    #      new_var temp_217_248:ptr->i32 
                    #      new_var temp_218_248:i32 
                    #      temp_217_248 = getelementptr buf_60:ptr->i32 [Some(temp_216_248)] 
    li      s3, 0
    li      s4, 1
    mul     s5,s4,s2
    add     s3,s3,s5
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_218_248 = load temp_217_248:ptr->i32 
    lw      s6,0(s3)
                    #      new_var temp_219_248:i1 
                    #      temp_219_248 = icmp i32 Eq temp_218_248, 125_0 
    li      s7, 125
    xor     s8,s6,s7
    seqz    s8, s8
                    #      br i1 temp_219_248, label branch_true_249, label branch_false_249 
    bnez    s8, .branch_true_249
    j       .branch_false_249
                    #      label branch_true_249: 
.branch_true_249:
                    #      new_var temp_220_250:i32 
                    #      temp_220_250 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s4,0(a0)
                    #      new_var temp_221_250:i32 
                    #      temp_221_250 = Add i32 temp_220_250, 1_0 
    li      s7, 1
    add     s9,s4,s7
                    #      store temp_221_250:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s10, pos
                    #occupy reg s10 with *pos_0
    sd      s9,0(s10)
                    #      ret 1_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    li      a0, 1
    addi    sp,sp,1864
    ret
                    #      label branch_false_249: 
.branch_false_249:
                    #      label branch_false_246: 
.branch_false_246:
                    #      label L37_0: 
.L37_0:
                    #      new_var temp_222_253:i32 
                    #      temp_222_253 =  Call i32 detect_item_0(2_0, buf_60, len_60) 
                    #saved register dumping to mem
    sb      s1,943(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 2
    sw      a1,944(sp)
    ld      a1,1832(sp)
    sw      a2,1828(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,908(sp)
                    #      new_var temp_223_253:i1 
                    #      temp_223_253 = icmp i32 Eq temp_222_253, 0_0 
    li      a1, 0
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_223_253, label branch_true_254, label branch_false_254 
    bnez    a2, .branch_true_254
    j       .branch_false_254
                    #      label branch_true_254: 
.branch_true_254:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,908(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_254: 
.branch_false_254:
                    #      label L38_0: 
.L38_0:
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,908(sp)
    ld      a0,1832(sp)
    lw      a1,1828(sp)
                    #arg load ended
    call    skip_space
                    #      jump label: L39_0 
    j       .L39_0
                    #      label L39_0: 
.L39_0:
                    #      new_var temp_224_258:i32 
                    #      temp_224_258 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      a1,0(a0)
                    #      new_var temp_225_258:i1 
                    #      temp_225_258 = icmp i32 Sge temp_224_258, len_60 
    slt     s2,a1,s1
    xori    s2,s2,1
                    #      br i1 temp_225_258, label branch_true_259, label branch_false_259 
    bnez    s2, .branch_true_259
    j       .branch_false_259
                    #      label branch_true_259: 
.branch_true_259:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_259: 
.branch_false_259:
                    #      label L40_0: 
.L40_0:
                    #      new_var temp_226_262:i32 
                    #      temp_226_262 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s3,0(a0)
                    #      new_var temp_227_262:ptr->i32 
                    #      new_var temp_228_262:i32 
                    #      temp_227_262 = getelementptr buf_60:ptr->i32 [Some(temp_226_262)] 
    li      s4, 0
    li      s5, 1
    mul     s6,s5,s3
    add     s4,s4,s6
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_228_262 = load temp_227_262:ptr->i32 
    lw      s7,0(s4)
                    #      new_var temp_229_262:i1 
                    #      temp_229_262 = icmp i32 Ne temp_228_262, 58_0 
    li      s8, 58
    xor     s9,s7,s8
    snez    s9, s9
                    #      br i1 temp_229_262, label branch_true_263, label branch_false_263 
    bnez    s9, .branch_true_263
    j       .branch_false_263
                    #      label branch_true_263: 
.branch_true_263:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_263: 
.branch_false_263:
                    #      label L41_0: 
.L41_0:
                    #      new_var temp_230_242:i32 
                    #      temp_230_242 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s5,0(a0)
                    #      new_var temp_231_242:i32 
                    #      temp_231_242 = Add i32 temp_230_242, 1_0 
    li      s8, 1
    add     s10,s5,s8
                    #      store temp_231_242:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s11, pos
                    #occupy reg s11 with *pos_0
    sd      s10,0(s11)
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
    sw      s1,1828(sp)
    sb      s2,899(sp)
    sw      s3,892(sp)
    sd      s4,880(sp)
    sw      s5,868(sp)
    sd      s6,1832(sp)
    sw      s7,876(sp)
    sb      s9,875(sp)
    sw      s10,864(sp)
                    #saved register dumped to mem
                    #arg load start
    ld      a0,1832(sp)
    sw      a1,900(sp)
    lw      a1,1828(sp)
                    #arg load ended
    call    skip_space
                    #      jump label: L42_0 
    j       .L42_0
                    #      label L42_0: 
.L42_0:
                    #      new_var temp_232_268:i32 
                    #      temp_232_268 =  Call i32 detect_item_0(0_0, buf_60, len_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 0
    ld      a1,1832(sp)
    sb      a2,907(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,860(sp)
                    #      new_var temp_233_268:i1 
                    #      temp_233_268 = icmp i32 Eq temp_232_268, 0_0 
    li      a1, 0
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_233_268, label branch_true_269, label branch_false_269 
    bnez    a2, .branch_true_269
    j       .branch_false_269
                    #      label branch_true_269: 
.branch_true_269:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,860(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_269: 
.branch_false_269:
                    #      label L43_0: 
.L43_0:
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,860(sp)
    ld      a0,1832(sp)
    lw      a1,1828(sp)
                    #arg load ended
    call    skip_space
                    #      jump label: while.head_274 
    j       .while.head_274
                    #      label while.head_274: 
.while.head_274:
                    #      new_var temp_234_273:i32 
                    #      temp_234_273 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      a1,0(a0)
                    #      new_var temp_235_273:ptr->i32 
                    #      new_var temp_236_273:i32 
                    #      temp_235_273 = getelementptr buf_60:ptr->i32 [Some(temp_234_273)] 
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a1
    add     s1,s1,s3
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_236_273 = load temp_235_273:ptr->i32 
    lw      s4,0(s1)
                    #      new_var temp_237_273:i1 
                    #      temp_237_273 = icmp i32 Eq temp_236_273, 44_0 
    li      s5, 44
    xor     s6,s4,s5
    seqz    s6, s6
                    #      br i1 temp_237_273, label while.body_274, label while.exit_274 
    bnez    s6, .while.body_274
    j       .while.exit_274
                    #      label while.body_274: 
.while.body_274:
                    #      new_var temp_238_275:i32 
                    #      temp_238_275 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s2,0(a0)
                    #      new_var temp_239_275:i32 
                    #      temp_239_275 = Add i32 temp_238_275, 1_0 
    li      s5, 1
    add     s7,s2,s5
                    #      store temp_239_275:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s8, pos
                    #occupy reg s8 with *pos_0
    sd      s7,0(s8)
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
    sd      s1,840(sp)
    sw      s2,828(sp)
    sd      s3,1832(sp)
    sw      s4,836(sp)
    sb      s6,835(sp)
    sw      s7,824(sp)
                    #saved register dumped to mem
                    #arg load start
    ld      a0,1832(sp)
    sw      a1,852(sp)
    lw      a1,1828(sp)
                    #arg load ended
    call    skip_space
                    #      jump label: L44_0 
    j       .L44_0
                    #      label L44_0: 
.L44_0:
                    #      new_var temp_240_278:i32 
                    #      temp_240_278 =  Call i32 detect_item_0(2_0, buf_60, len_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 2
    ld      a1,1832(sp)
    sb      a2,859(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,820(sp)
                    #      new_var temp_241_278:i1 
                    #      temp_241_278 = icmp i32 Eq temp_240_278, 0_0 
    li      a1, 0
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_241_278, label branch_true_279, label branch_false_279 
    bnez    a2, .branch_true_279
    j       .branch_false_279
                    #      label branch_true_279: 
.branch_true_279:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,820(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_279: 
.branch_false_279:
                    #      label L45_0: 
.L45_0:
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,820(sp)
    ld      a0,1832(sp)
    lw      a1,1828(sp)
                    #arg load ended
    call    skip_space
                    #      jump label: L46_0 
    j       .L46_0
                    #      label L46_0: 
.L46_0:
                    #      new_var temp_242_283:i32 
                    #      temp_242_283 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      a1,0(a0)
                    #      new_var temp_243_283:i1 
                    #      temp_243_283 = icmp i32 Sge temp_242_283, len_60 
    slt     s2,a1,s1
    xori    s2,s2,1
                    #      br i1 temp_243_283, label branch_true_284, label branch_false_284 
    bnez    s2, .branch_true_284
    j       .branch_false_284
                    #      label branch_true_284: 
.branch_true_284:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_284: 
.branch_false_284:
                    #      label L47_0: 
.L47_0:
                    #      new_var temp_244_287:i32 
                    #      temp_244_287 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s3,0(a0)
                    #      new_var temp_245_287:ptr->i32 
                    #      new_var temp_246_287:i32 
                    #      temp_245_287 = getelementptr buf_60:ptr->i32 [Some(temp_244_287)] 
    li      s4, 0
    li      s5, 1
    mul     s6,s5,s3
    add     s4,s4,s6
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_246_287 = load temp_245_287:ptr->i32 
    lw      s7,0(s4)
                    #      new_var temp_247_287:i1 
                    #      temp_247_287 = icmp i32 Ne temp_246_287, 58_0 
    li      s8, 58
    xor     s9,s7,s8
    snez    s9, s9
                    #      br i1 temp_247_287, label branch_true_288, label branch_false_288 
    bnez    s9, .branch_true_288
    j       .branch_false_288
                    #      label branch_true_288: 
.branch_true_288:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_288: 
.branch_false_288:
                    #      label L48_0: 
.L48_0:
                    #      new_var temp_248_275:i32 
                    #      temp_248_275 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s5,0(a0)
                    #      new_var temp_249_275:i32 
                    #      temp_249_275 = Add i32 temp_248_275, 1_0 
    li      s8, 1
    add     s10,s5,s8
                    #      store temp_249_275:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s11, pos
                    #occupy reg s11 with *pos_0
    sd      s10,0(s11)
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
    sw      s1,1828(sp)
    sb      s2,811(sp)
    sw      s3,804(sp)
    sd      s4,792(sp)
    sw      s5,780(sp)
    sd      s6,1832(sp)
    sw      s7,788(sp)
    sb      s9,787(sp)
    sw      s10,776(sp)
                    #saved register dumped to mem
                    #arg load start
    ld      a0,1832(sp)
    sw      a1,812(sp)
    lw      a1,1828(sp)
                    #arg load ended
    call    skip_space
                    #      jump label: L49_0 
    j       .L49_0
                    #      label L49_0: 
.L49_0:
                    #      new_var temp_250_293:i32 
                    #      temp_250_293 =  Call i32 detect_item_0(0_0, buf_60, len_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 0
    ld      a1,1832(sp)
    sb      a2,819(sp)
    lw      a2,1828(sp)
                    #arg load ended
    call    detect_item
    sw      a0,772(sp)
                    #      new_var temp_251_293:i1 
                    #      temp_251_293 = icmp i32 Eq temp_250_293, 0_0 
    li      a1, 0
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_251_293, label branch_true_294, label branch_false_294 
    bnez    a2, .branch_true_294
    j       .branch_false_294
                    #      label branch_true_294: 
.branch_true_294:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,772(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_294: 
.branch_false_294:
                    #      label L50_0: 
.L50_0:
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,772(sp)
    ld      a0,1832(sp)
    lw      a1,1828(sp)
                    #arg load ended
    call    skip_space
                    #      jump label: while.head_274 
    sb      a2,771(sp)
    lb      a2,859(sp)
    j       .while.head_274
                    #      label while.exit_274: 
.while.exit_274:
                    #       Call void skip_space_0(buf_60, len_60) 
                    #saved register dumping to mem
    sd      s1,840(sp)
    sd      s3,1832(sp)
    sw      s4,836(sp)
    sb      s6,835(sp)
                    #saved register dumped to mem
                    #arg load start
    ld      a0,1832(sp)
    sw      a1,852(sp)
    lw      a1,1828(sp)
                    #arg load ended
    call    skip_space
                    #      jump label: L51_0 
    j       .L51_0
                    #      label L51_0: 
.L51_0:
                    #      new_var temp_252_299:i32 
                    #      temp_252_299 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      a1,0(a0)
                    #      new_var temp_253_299:i1 
                    #      temp_253_299 = icmp i32 Sge temp_252_299, len_60 
    slt     s2,a1,s1
    xori    s2,s2,1
                    #      br i1 temp_253_299, label branch_true_300, label branch_false_300 
    bnez    s2, .branch_true_300
    j       .branch_false_300
                    #      label branch_true_300: 
.branch_true_300:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_300: 
.branch_false_300:
                    #      new_var temp_256_303:i32 
                    #      temp_256_303 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s3,0(a0)
                    #      new_var temp_257_303:ptr->i32 
                    #      new_var temp_258_303:i32 
                    #      temp_257_303 = getelementptr buf_60:ptr->i32 [Some(temp_256_303)] 
    li      s4, 0
    li      s5, 1
    mul     s6,s5,s3
    add     s4,s4,s6
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_258_303 = load temp_257_303:ptr->i32 
    lw      s7,0(s4)
                    #      new_var temp_259_303:i1 
                    #      temp_259_303 = icmp i32 Ne temp_258_303, 125_0 
    li      s8, 125
    xor     s9,s7,s8
    snez    s9, s9
                    #      br i1 temp_259_303, label branch_true_304, label branch_false_304 
    bnez    s9, .branch_true_304
    j       .branch_false_304
                    #      label branch_true_304: 
.branch_true_304:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_304: 
.branch_false_304:
                    #      label L52_0: 
.L52_0:
                    #      label L53_0: 
.L53_0:
                    #      new_var temp_254_242:i32 
                    #      temp_254_242 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s5,0(a0)
                    #      new_var temp_255_242:i32 
                    #      temp_255_242 = Add i32 temp_254_242, 1_0 
    li      s8, 1
    add     s10,s5,s8
                    #      store temp_255_242:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s11, pos
                    #occupy reg s11 with *pos_0
    sd      s10,0(s11)
                    #      jump label: L76_0 
    j       .L76_0
                    #      label branch_false_241: 
.branch_false_241:
                    #      new_var temp_260_308:i1 
                    #      temp_260_308 = icmp i32 Eq type_60, 5_0 
    li      a1, 5
    xor     s3,a0,a1
    seqz    s3, s3
                    #      br i1 temp_260_308, label branch_true_309, label branch_false_309 
    bnez    s3, .branch_true_309
    j       .branch_false_309
                    #      label branch_true_309: 
.branch_true_309:
                    #      new_var mTrue_310:Array:i32:[Some(4_0)] 
                    #      new_var temp_261_310:ptr->i32 
                    #      temp_261_310 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(1_0)] 
    li      a1, 0
    li      s4, 1
    li      s5, 1
    mul     s6,s4,s5
    add     a1,a1,s6
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 114_0:i32 temp_261_310:ptr->i32 
    li      s7, 114
    sd      s7,0(a1)
                    #      mu mTrue_310:1145 
                    #      mTrue_310 = chi mTrue_310:1145 
                    #      new_var temp_262_310:ptr->i32 
                    #      temp_262_310 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(3_0)] 
    li      s8, 0
                    #found literal reg Some(s4) already exist with 1_0
    li      s9, 3
    add     s8,s8,s6
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 101_0:i32 temp_262_310:ptr->i32 
    li      s10, 101
    sd      s10,0(s8)
                    #      mu mTrue_310:1151 
                    #      mTrue_310 = chi mTrue_310:1151 
                    #      new_var temp_263_310:ptr->i32 
                    #      temp_263_310 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(0_0)] 
    li      s11, 0
                    #found literal reg Some(s4) already exist with 1_0
    li      s5, 0
    add     s11,s11,s6
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      store 116_0:i32 temp_263_310:ptr->i32 
    li      s4, 116
    sd      s4,0(s11)
                    #      mu mTrue_310:1157 
                    #      mTrue_310 = chi mTrue_310:1157 
                    #      new_var temp_264_310:ptr->i32 
                    #      temp_264_310 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(2_0)] 
    li      s4, 0
    li      s5, 1
    li      s7, 2
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      store 117_0:i32 temp_264_310:ptr->i32 
    li      s5, 117
    sd      s5,0(s4)
                    #      mu mTrue_310:1163 
                    #      mTrue_310 = chi mTrue_310:1163 
                    #      jump label: L54_0 
    j       .L54_0
                    #      label L54_0: 
.L54_0:
                    #      new_var temp_265_312:i32 
                    #      temp_265_312 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s5, pos
                    #occupy reg s5 with *pos_0
    lw      s7,0(s5)
                    #      new_var temp_266_312:i32 
                    #      temp_266_312 = Add i32 temp_265_312, 3_0 
    li      s9, 3
    add     s10,s7,s9
                    #      new_var temp_267_312:i1 
                    #      temp_267_312 = icmp i32 Sge temp_266_312, len_60 
    slt     s5,s10,a2
    xori    s5,s5,1
                    #      br i1 temp_267_312, label branch_true_313, label branch_false_313 
    bnez    s5, .branch_true_313
    j       .branch_false_313
                    #      label branch_true_313: 
.branch_true_313:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1844(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_313: 
.branch_false_313:
                    #      new_var temp_270_316:ptr->i32 
                    #      new_var temp_271_316:i32 
                    #      temp_270_316 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(0_0)] 
    li      s9, 0
    sw      a0,1844(sp)
    li      a0, 1
    sd      a1,720(sp)
    li      a1, 0
    add     s9,s9,s6
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_271_316 = load temp_270_316:ptr->i32 
    lw      a0,0(s9)
                    #      new_var temp_272_316:i32 
                    #      temp_272_316 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a1, pos
                    #occupy reg a1 with *pos_0
    sw      a0,644(sp)
    lw      a0,0(a1)
                    #      new_var temp_273_316:ptr->i32 
                    #      new_var temp_274_316:i32 
                    #      temp_273_316 = getelementptr buf_60:ptr->i32 [Some(temp_272_316)] 
    li      a1, 0
    sw      a0,640(sp)
    li      a0, 1
    sw      a2,1828(sp)
    sb      a3,1822(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_274_316 = load temp_273_316:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_275_316:i1 
                    #      temp_275_316 = icmp i32 Ne temp_274_316, temp_271_316 
    sd      a1,632(sp)
    sw      a2,640(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_275_316, label branch_true_317, label branch_false_317 
    bnez    a2, .branch_true_317
    j       .branch_false_317
                    #      label branch_true_317: 
.branch_true_317:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,628(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_317: 
.branch_false_317:
                    #      new_var temp_276_320:ptr->i32 
                    #      new_var temp_277_320:i32 
                    #      temp_276_320 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(1_0)] 
    sw      a0,628(sp)
    li      a0, 0
    sw      a1,644(sp)
    li      a1, 1
    sb      a2,627(sp)
    li      a2, 1
    add     a0,a0,s6
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_277_320 = load temp_276_320:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_278_320:i32 
                    #      temp_278_320 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    sd      a0,616(sp)
    lw      a0,0(a2)
                    #      new_var temp_279_320:i32 
                    #      temp_279_320 = Add i32 temp_278_320, 1_0 
    li      a2, 1
    sw      a1,612(sp)
    add     a1,a0,a2
                    #      new_var temp_280_320:ptr->i32 
                    #      new_var temp_281_320:i32 
                    #      temp_280_320 = getelementptr buf_60:ptr->i32 [Some(temp_279_320)] 
    li      a2, 0
    sw      a0,608(sp)
    li      a0, 1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_281_320 = load temp_280_320:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_282_320:i1 
                    #      temp_282_320 = icmp i32 Ne temp_281_320, temp_277_320 
    sw      a1,604(sp)
    sd      a2,592(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_282_320, label branch_true_321, label branch_false_321 
    bnez    a2, .branch_true_321
    j       .branch_false_321
                    #      label branch_true_321: 
.branch_true_321:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,588(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_321: 
.branch_false_321:
                    #      new_var temp_283_324:ptr->i32 
                    #      new_var temp_284_324:i32 
                    #      temp_283_324 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(2_0)] 
    sw      a0,588(sp)
    li      a0, 0
    sw      a1,612(sp)
    li      a1, 1
    sb      a2,587(sp)
    li      a2, 2
    add     a0,a0,s6
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_284_324 = load temp_283_324:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_285_324:i32 
                    #      temp_285_324 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    sd      a0,576(sp)
    lw      a0,0(a2)
                    #      new_var temp_286_324:i32 
                    #      temp_286_324 = Add i32 temp_285_324, 2_0 
    li      a2, 2
    sw      a1,572(sp)
    add     a1,a0,a2
                    #      new_var temp_287_324:ptr->i32 
                    #      new_var temp_288_324:i32 
                    #      temp_287_324 = getelementptr buf_60:ptr->i32 [Some(temp_286_324)] 
    li      a2, 0
    sw      a0,568(sp)
    li      a0, 1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_288_324 = load temp_287_324:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_289_324:i1 
                    #      temp_289_324 = icmp i32 Ne temp_288_324, temp_284_324 
    sw      a1,564(sp)
    sd      a2,552(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_289_324, label branch_true_325, label branch_false_325 
    bnez    a2, .branch_true_325
    j       .branch_false_325
                    #      label branch_true_325: 
.branch_true_325:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,548(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_325: 
.branch_false_325:
                    #      new_var temp_290_328:ptr->i32 
                    #      new_var temp_291_328:i32 
                    #      temp_290_328 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(3_0)] 
    sw      a0,548(sp)
    li      a0, 0
    sw      a1,572(sp)
    li      a1, 1
    sb      a2,547(sp)
    li      a2, 3
    add     a0,a0,s6
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_291_328 = load temp_290_328:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_292_328:i32 
                    #      temp_292_328 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    sd      a0,536(sp)
    lw      a0,0(a2)
                    #      new_var temp_293_328:i32 
                    #      temp_293_328 = Add i32 temp_292_328, 3_0 
    li      a2, 3
    sw      a1,532(sp)
    add     a1,a0,a2
                    #      new_var temp_294_328:ptr->i32 
                    #      new_var temp_295_328:i32 
                    #      temp_294_328 = getelementptr buf_60:ptr->i32 [Some(temp_293_328)] 
    li      a2, 0
    sw      a0,528(sp)
    li      a0, 1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_295_328 = load temp_294_328:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_296_328:i1 
                    #      temp_296_328 = icmp i32 Ne temp_295_328, temp_291_328 
    sw      a1,524(sp)
    sd      a2,512(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_296_328, label branch_true_329, label branch_false_329 
    bnez    a2, .branch_true_329
    j       .branch_false_329
                    #      label branch_true_329: 
.branch_true_329:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,508(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_329: 
.branch_false_329:
                    #      label L55_0: 
.L55_0:
                    #      label L56_0: 
.L56_0:
                    #      label L57_0: 
.L57_0:
                    #      label L58_0: 
.L58_0:
                    #      label L59_0: 
.L59_0:
                    #      new_var temp_268_310:i32 
                    #      temp_268_310 = load *pos_0:ptr->i32 
    sw      a0,508(sp)
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,532(sp)
    lw      a1,0(a0)
                    #      new_var temp_269_310:i32 
                    #      temp_269_310 = Add i32 temp_268_310, 4_0 
    li      a0, 4
    sb      a2,507(sp)
    add     a2,a1,a0
                    #      store temp_269_310:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sd      a2,0(a0)
                    #      jump label: L75_0 
    j       .L75_0
                    #      label branch_false_309: 
.branch_false_309:
                    #      new_var temp_297_333:i1 
                    #      temp_297_333 = icmp i32 Eq type_60, 6_0 
    li      a1, 6
    xor     s4,a0,a1
    seqz    s4, s4
                    #      br i1 temp_297_333, label branch_true_334, label branch_false_334 
    bnez    s4, .branch_true_334
    j       .branch_false_334
                    #      label branch_true_334: 
.branch_true_334:
                    #      new_var mFalse_335:Array:i32:[Some(5_0)] 
                    #      new_var temp_298_335:ptr->i32 
                    #      temp_298_335 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(2_0)] 
    li      a1, 0
    li      s5, 1
    li      s6, 2
    mul     s7,s5,s6
    add     a1,a1,s7
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 108_0:i32 temp_298_335:ptr->i32 
    li      s8, 108
    sd      s8,0(a1)
                    #      mu mFalse_335:1299 
                    #      mFalse_335 = chi mFalse_335:1299 
                    #      new_var temp_299_335:ptr->i32 
                    #      temp_299_335 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(3_0)] 
    li      s9, 0
                    #found literal reg Some(s5) already exist with 1_0
    li      s10, 3
    add     s9,s9,s7
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store 115_0:i32 temp_299_335:ptr->i32 
    li      s11, 115
    sd      s11,0(s9)
                    #      mu mFalse_335:1305 
                    #      mFalse_335 = chi mFalse_335:1305 
                    #      new_var temp_300_335:ptr->i32 
                    #      temp_300_335 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(4_0)] 
    li      s5, 0
    li      s6, 1
    li      s8, 4
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      store 101_0:i32 temp_300_335:ptr->i32 
    li      s6, 101
    sd      s6,0(s5)
                    #      mu mFalse_335:1311 
                    #      mFalse_335 = chi mFalse_335:1311 
                    #      new_var temp_301_335:ptr->i32 
                    #      temp_301_335 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(1_0)] 
    li      s6, 0
    li      s8, 1
    li      s10, 1
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 97_0:i32 temp_301_335:ptr->i32 
    li      s8, 97
    sd      s8,0(s6)
                    #      mu mFalse_335:1317 
                    #      mFalse_335 = chi mFalse_335:1317 
                    #      new_var temp_302_335:ptr->i32 
                    #      temp_302_335 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(0_0)] 
    li      s8, 0
                    #found literal reg Some(s10) already exist with 1_0
    li      s11, 0
    add     s8,s8,s7
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 102_0:i32 temp_302_335:ptr->i32 
    li      s10, 102
    sd      s10,0(s8)
                    #      mu mFalse_335:1323 
                    #      mFalse_335 = chi mFalse_335:1323 
                    #      jump label: L60_0 
    j       .L60_0
                    #      label L60_0: 
.L60_0:
                    #      new_var temp_303_337:i32 
                    #      temp_303_337 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      s10, pos
                    #occupy reg s10 with *pos_0
    lw      s11,0(s10)
                    #      new_var temp_304_337:i32 
                    #      temp_304_337 = Add i32 temp_303_337, 4_0 
    li      s10, 4
    sw      a0,1844(sp)
    add     a0,s11,s10
                    #      new_var temp_305_337:i1 
                    #      temp_305_337 = icmp i32 Sge temp_304_337, len_60 
    slt     s10,a0,a2
    xori    s10,s10,1
                    #      br i1 temp_305_337, label branch_true_338, label branch_false_338 
    bnez    s10, .branch_true_338
    j       .branch_false_338
                    #      label branch_true_338: 
.branch_true_338:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,436(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_338: 
.branch_false_338:
                    #      new_var temp_308_341:ptr->i32 
                    #      new_var temp_309_341:i32 
                    #      temp_308_341 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(0_0)] 
    sw      a0,436(sp)
    li      a0, 0
    sd      a1,496(sp)
    li      a1, 1
    sw      a2,1828(sp)
    li      a2, 0
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_309_341 = load temp_308_341:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_310_341:i32 
                    #      temp_310_341 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    sd      a0,416(sp)
    lw      a0,0(a2)
                    #      new_var temp_311_341:ptr->i32 
                    #      new_var temp_312_341:i32 
                    #      temp_311_341 = getelementptr buf_60:ptr->i32 [Some(temp_310_341)] 
    li      a2, 0
    sw      a0,408(sp)
    li      a0, 1
    sw      a1,412(sp)
    sb      a3,1822(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_312_341 = load temp_311_341:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_313_341:i1 
                    #      temp_313_341 = icmp i32 Ne temp_312_341, temp_309_341 
    sw      a1,408(sp)
    sd      a2,400(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_313_341, label branch_true_342, label branch_false_342 
    bnez    a2, .branch_true_342
    j       .branch_false_342
                    #      label branch_true_342: 
.branch_true_342:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,396(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_342: 
.branch_false_342:
                    #      new_var temp_314_345:ptr->i32 
                    #      new_var temp_315_345:i32 
                    #      temp_314_345 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(1_0)] 
    sw      a0,396(sp)
    li      a0, 0
    sw      a1,412(sp)
    li      a1, 1
    sb      a2,395(sp)
    li      a2, 1
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_315_345 = load temp_314_345:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_316_345:i32 
                    #      temp_316_345 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    sd      a0,384(sp)
    lw      a0,0(a2)
                    #      new_var temp_317_345:i32 
                    #      temp_317_345 = Add i32 temp_316_345, 1_0 
    li      a2, 1
    sw      a1,380(sp)
    add     a1,a0,a2
                    #      new_var temp_318_345:ptr->i32 
                    #      new_var temp_319_345:i32 
                    #      temp_318_345 = getelementptr buf_60:ptr->i32 [Some(temp_317_345)] 
    li      a2, 0
    sw      a0,376(sp)
    li      a0, 1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_319_345 = load temp_318_345:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_320_345:i1 
                    #      temp_320_345 = icmp i32 Ne temp_319_345, temp_315_345 
    sw      a1,372(sp)
    sd      a2,360(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_320_345, label branch_true_346, label branch_false_346 
    bnez    a2, .branch_true_346
    j       .branch_false_346
                    #      label branch_true_346: 
.branch_true_346:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,356(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_346: 
.branch_false_346:
                    #      new_var temp_321_349:ptr->i32 
                    #      new_var temp_322_349:i32 
                    #      temp_321_349 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(2_0)] 
    sw      a0,356(sp)
    li      a0, 0
    sw      a1,380(sp)
    li      a1, 1
    sb      a2,355(sp)
    li      a2, 2
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_322_349 = load temp_321_349:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_323_349:i32 
                    #      temp_323_349 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    sd      a0,344(sp)
    lw      a0,0(a2)
                    #      new_var temp_324_349:i32 
                    #      temp_324_349 = Add i32 temp_323_349, 2_0 
    li      a2, 2
    sw      a1,340(sp)
    add     a1,a0,a2
                    #      new_var temp_325_349:ptr->i32 
                    #      new_var temp_326_349:i32 
                    #      temp_325_349 = getelementptr buf_60:ptr->i32 [Some(temp_324_349)] 
    li      a2, 0
    sw      a0,336(sp)
    li      a0, 1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_326_349 = load temp_325_349:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_327_349:i1 
                    #      temp_327_349 = icmp i32 Ne temp_326_349, temp_322_349 
    sw      a1,332(sp)
    sd      a2,320(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_327_349, label branch_true_350, label branch_false_350 
    bnez    a2, .branch_true_350
    j       .branch_false_350
                    #      label branch_true_350: 
.branch_true_350:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,316(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_350: 
.branch_false_350:
                    #      new_var temp_328_353:ptr->i32 
                    #      new_var temp_329_353:i32 
                    #      temp_328_353 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(3_0)] 
    sw      a0,316(sp)
    li      a0, 0
    sw      a1,340(sp)
    li      a1, 1
    sb      a2,315(sp)
    li      a2, 3
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_329_353 = load temp_328_353:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_330_353:i32 
                    #      temp_330_353 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    sd      a0,304(sp)
    lw      a0,0(a2)
                    #      new_var temp_331_353:i32 
                    #      temp_331_353 = Add i32 temp_330_353, 3_0 
    li      a2, 3
    sw      a1,300(sp)
    add     a1,a0,a2
                    #      new_var temp_332_353:ptr->i32 
                    #      new_var temp_333_353:i32 
                    #      temp_332_353 = getelementptr buf_60:ptr->i32 [Some(temp_331_353)] 
    li      a2, 0
    sw      a0,296(sp)
    li      a0, 1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_333_353 = load temp_332_353:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_334_353:i1 
                    #      temp_334_353 = icmp i32 Ne temp_333_353, temp_329_353 
    sw      a1,292(sp)
    sd      a2,280(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_334_353, label branch_true_354, label branch_false_354 
    bnez    a2, .branch_true_354
    j       .branch_false_354
                    #      label branch_true_354: 
.branch_true_354:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,276(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_354: 
.branch_false_354:
                    #      new_var temp_335_357:ptr->i32 
                    #      new_var temp_336_357:i32 
                    #      temp_335_357 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(4_0)] 
    sw      a0,276(sp)
    li      a0, 0
    sw      a1,300(sp)
    li      a1, 1
    sb      a2,275(sp)
    li      a2, 4
    add     a0,a0,s7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_336_357 = load temp_335_357:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_337_357:i32 
                    #      temp_337_357 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    sd      a0,264(sp)
    lw      a0,0(a2)
                    #      new_var temp_338_357:i32 
                    #      temp_338_357 = Add i32 temp_337_357, 4_0 
    li      a2, 4
    sw      a1,260(sp)
    add     a1,a0,a2
                    #      new_var temp_339_357:ptr->i32 
                    #      new_var temp_340_357:i32 
                    #      temp_339_357 = getelementptr buf_60:ptr->i32 [Some(temp_338_357)] 
    li      a2, 0
    sw      a0,256(sp)
    li      a0, 1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_340_357 = load temp_339_357:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_341_357:i1 
                    #      temp_341_357 = icmp i32 Ne temp_340_357, temp_336_357 
    sw      a1,252(sp)
    sd      a2,240(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_341_357, label branch_true_358, label branch_false_358 
    bnez    a2, .branch_true_358
    j       .branch_false_358
                    #      label branch_true_358: 
.branch_true_358:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,236(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_358: 
.branch_false_358:
                    #      label L61_0: 
.L61_0:
                    #      label L62_0: 
.L62_0:
                    #      label L63_0: 
.L63_0:
                    #      label L64_0: 
.L64_0:
                    #      label L65_0: 
.L65_0:
                    #      label L66_0: 
.L66_0:
                    #      new_var temp_306_335:i32 
                    #      temp_306_335 = load *pos_0:ptr->i32 
    sw      a0,236(sp)
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,260(sp)
    lw      a1,0(a0)
                    #      new_var temp_307_335:i32 
                    #      temp_307_335 = Add i32 temp_306_335, 5_0 
    li      a0, 5
    sb      a2,235(sp)
    add     a2,a1,a0
                    #      store temp_307_335:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sd      a2,0(a0)
                    #      jump label: L74_0 
    j       .L74_0
                    #      label branch_false_334: 
.branch_false_334:
                    #      new_var temp_342_362:i1 
                    #      temp_342_362 = icmp i32 Eq type_60, 7_0 
    li      a1, 7
    xor     s5,a0,a1
    seqz    s5, s5
                    #      br i1 temp_342_362, label branch_true_363, label branch_false_363 
    bnez    s5, .branch_true_363
    j       .branch_false_363
                    #      label branch_true_363: 
.branch_true_363:
                    #      new_var mNull_364:Array:i32:[Some(4_0)] 
                    #      new_var temp_343_364:ptr->i32 
                    #      temp_343_364 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(0_0)] 
    li      a1, 0
    li      s6, 1
    li      s7, 0
    mul     s8,s6,s7
    add     a1,a1,s8
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 110_0:i32 temp_343_364:ptr->i32 
    li      s9, 110
    sd      s9,0(a1)
                    #      mu mNull_364:1485 
                    #      mNull_364 = chi mNull_364:1485 
                    #      new_var temp_344_364:ptr->i32 
                    #      temp_344_364 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(1_0)] 
    li      s10, 0
                    #found literal reg Some(s6) already exist with 1_0
    li      s11, 1
    add     s10,s10,s8
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 117_0:i32 temp_344_364:ptr->i32 
    li      s6, 117
    sd      s6,0(s10)
                    #      mu mNull_364:1491 
                    #      mNull_364 = chi mNull_364:1491 
                    #      new_var temp_345_364:ptr->i32 
                    #      temp_345_364 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(4_0)] 
    li      s6, 0
                    #found literal reg Some(s11) already exist with 1_0
    li      s7, 4
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 108_0:i32 temp_345_364:ptr->i32 
    li      s7, 108
    sd      s7,0(s6)
                    #      mu mNull_364:1497 
                    #      mNull_364 = chi mNull_364:1497 
                    #      new_var temp_346_364:ptr->i32 
                    #      temp_346_364 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(3_0)] 
    li      s7, 0
                    #found literal reg Some(s11) already exist with 1_0
    li      s9, 3
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 108_0:i32 temp_346_364:ptr->i32 
    li      s9, 108
    sd      s9,0(s7)
                    #      mu mNull_364:1503 
                    #      mNull_364 = chi mNull_364:1503 
                    #      new_var temp_347_364:ptr->i32 
                    #      temp_347_364 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(2_0)] 
    li      s9, 0
                    #found literal reg Some(s11) already exist with 1_0
    sw      a0,1844(sp)
    li      a0, 2
    add     s9,s9,s8
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store 108_0:i32 temp_347_364:ptr->i32 
    li      a0, 108
    sd      a0,0(s9)
                    #      mu mNull_364:1509 
                    #      mNull_364 = chi mNull_364:1509 
                    #      jump label: L67_0 
    j       .L67_0
                    #      label L67_0: 
.L67_0:
                    #      new_var temp_348_366:i32 
                    #      temp_348_366 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    lw      s11,0(a0)
                    #      new_var temp_349_366:i32 
                    #      temp_349_366 = Add i32 temp_348_366, 3_0 
    li      a0, 3
    sd      a1,224(sp)
    add     a1,s11,a0
                    #      new_var temp_350_366:i1 
                    #      temp_350_366 = icmp i32 Sge temp_349_366, len_60 
    slt     a0,a1,a2
    xori    a0,a0,1
                    #      br i1 temp_350_366, label branch_true_367, label branch_false_367 
    bnez    a0, .branch_true_367
    j       .branch_false_367
                    #      label branch_true_367: 
.branch_true_367:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sb      a0,167(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_367: 
.branch_false_367:
                    #      new_var temp_353_370:ptr->i32 
                    #      new_var temp_354_370:i32 
                    #      temp_353_370 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(0_0)] 
    sb      a0,167(sp)
    li      a0, 0
    sw      a1,168(sp)
    li      a1, 1
    sw      a2,1828(sp)
    li      a2, 0
    add     a0,a0,s8
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_354_370 = load temp_353_370:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_355_370:i32 
                    #      temp_355_370 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    sd      a0,144(sp)
    lw      a0,0(a2)
                    #      new_var temp_356_370:ptr->i32 
                    #      new_var temp_357_370:i32 
                    #      temp_356_370 = getelementptr buf_60:ptr->i32 [Some(temp_355_370)] 
    li      a2, 0
    sw      a0,136(sp)
    li      a0, 1
    sw      a1,140(sp)
    sb      a3,1822(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_357_370 = load temp_356_370:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_358_370:i1 
                    #      temp_358_370 = icmp i32 Ne temp_357_370, temp_354_370 
    sw      a1,136(sp)
    sd      a2,128(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_358_370, label branch_true_371, label branch_false_371 
    bnez    a2, .branch_true_371
    j       .branch_false_371
                    #      label branch_true_371: 
.branch_true_371:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,124(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_371: 
.branch_false_371:
                    #      new_var temp_359_374:ptr->i32 
                    #      new_var temp_360_374:i32 
                    #      temp_359_374 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(1_0)] 
    sw      a0,124(sp)
    li      a0, 0
    sw      a1,140(sp)
    li      a1, 1
    sb      a2,123(sp)
    li      a2, 1
    add     a0,a0,s8
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_360_374 = load temp_359_374:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_361_374:i32 
                    #      temp_361_374 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    sd      a0,112(sp)
    lw      a0,0(a2)
                    #      new_var temp_362_374:i32 
                    #      temp_362_374 = Add i32 temp_361_374, 1_0 
    li      a2, 1
    sw      a1,108(sp)
    add     a1,a0,a2
                    #      new_var temp_363_374:ptr->i32 
                    #      new_var temp_364_374:i32 
                    #      temp_363_374 = getelementptr buf_60:ptr->i32 [Some(temp_362_374)] 
    li      a2, 0
    sw      a0,104(sp)
    li      a0, 1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_364_374 = load temp_363_374:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_365_374:i1 
                    #      temp_365_374 = icmp i32 Ne temp_364_374, temp_360_374 
    sw      a1,100(sp)
    sd      a2,88(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_365_374, label branch_true_375, label branch_false_375 
    bnez    a2, .branch_true_375
    j       .branch_false_375
                    #      label branch_true_375: 
.branch_true_375:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,84(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_375: 
.branch_false_375:
                    #      new_var temp_366_378:ptr->i32 
                    #      new_var temp_367_378:i32 
                    #      temp_366_378 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(2_0)] 
    sw      a0,84(sp)
    li      a0, 0
    sw      a1,108(sp)
    li      a1, 1
    sb      a2,83(sp)
    li      a2, 2
    add     a0,a0,s8
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_367_378 = load temp_366_378:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_368_378:i32 
                    #      temp_368_378 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    sd      a0,72(sp)
    lw      a0,0(a2)
                    #      new_var temp_369_378:i32 
                    #      temp_369_378 = Add i32 temp_368_378, 2_0 
    li      a2, 2
    sw      a1,68(sp)
    add     a1,a0,a2
                    #      new_var temp_370_378:ptr->i32 
                    #      new_var temp_371_378:i32 
                    #      temp_370_378 = getelementptr buf_60:ptr->i32 [Some(temp_369_378)] 
    li      a2, 0
    sw      a0,64(sp)
    li      a0, 1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_371_378 = load temp_370_378:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_372_378:i1 
                    #      temp_372_378 = icmp i32 Ne temp_371_378, temp_367_378 
    sw      a1,60(sp)
    sd      a2,48(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_372_378, label branch_true_379, label branch_false_379 
    bnez    a2, .branch_true_379
    j       .branch_false_379
                    #      label branch_true_379: 
.branch_true_379:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,44(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_379: 
.branch_false_379:
                    #      new_var temp_373_382:ptr->i32 
                    #      new_var temp_374_382:i32 
                    #      temp_373_382 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(3_0)] 
    sw      a0,44(sp)
    li      a0, 0
    sw      a1,68(sp)
    li      a1, 1
    sb      a2,43(sp)
    li      a2, 3
    add     a0,a0,s8
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_374_382 = load temp_373_382:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_375_382:i32 
                    #      temp_375_382 = load *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a2, pos
                    #occupy reg a2 with *pos_0
    sd      a0,32(sp)
    lw      a0,0(a2)
                    #      new_var temp_376_382:i32 
                    #      temp_376_382 = Add i32 temp_375_382, 3_0 
    li      a2, 3
    sw      a1,28(sp)
    add     a1,a0,a2
                    #      new_var temp_377_382:ptr->i32 
                    #      new_var temp_378_382:i32 
                    #      temp_377_382 = getelementptr buf_60:ptr->i32 [Some(temp_376_382)] 
    li      a2, 0
    sw      a0,24(sp)
    li      a0, 1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_378_382 = load temp_377_382:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_379_382:i1 
                    #      temp_379_382 = icmp i32 Ne temp_378_382, temp_374_382 
    sw      a1,20(sp)
    sd      a2,8(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_379_382, label branch_true_383, label branch_false_383 
    bnez    a2, .branch_true_383
    j       .branch_false_383
                    #      label branch_true_383: 
.branch_true_383:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label branch_false_383: 
.branch_false_383:
                    #      label L68_0: 
.L68_0:
                    #      label L69_0: 
.L69_0:
                    #      label L70_0: 
.L70_0:
                    #      label L71_0: 
.L71_0:
                    #      label L72_0: 
.L72_0:
                    #      new_var temp_351_364:i32 
                    #      temp_351_364 = load *pos_0:ptr->i32 
    sw      a0,4(sp)
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sw      a1,28(sp)
    lw      a1,0(a0)
                    #      new_var temp_352_364:i32 
                    #      temp_352_364 = Add i32 temp_351_364, 4_0 
    li      a0, 4
    sb      a2,3(sp)
    add     a2,a1,a0
                    #      store temp_352_364:i32 *pos_0:ptr->i32 
                    #   load label pos as ptr to reg
    la      a0, pos
                    #occupy reg a0 with *pos_0
    sd      a2,0(a0)
                    #      jump label: L73_0 
    j       .L73_0
                    #      label branch_false_363: 
.branch_false_363:
                    #      ret 0_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1844(sp)
    li      a0, 0
    addi    sp,sp,1864
    ret
                    #      label L73_0: 
.L73_0:
                    #      label L74_0: 
.L74_0:
                    #      label L75_0: 
.L75_0:
                    #      label L76_0: 
.L76_0:
                    #      label L77_0: 
.L77_0:
                    #      label L78_0: 
.L78_0:
                    #      label L79_0: 
.L79_0:
                    #      label L80_0: 
.L80_0:
                    #      label L81_0: 
.L81_0:
                    #      ret 1_0 
    ld      ra,1856(sp)
    ld      s0,1848(sp)
    sw      a0,1124(sp)
    li      a0, 1
    addi    sp,sp,1864
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_380:4|get:4|i:4|temp_381:1|none:3|temp_382:8|temp_383:4|temp_384:4|temp_385:200000000|temp_386:200000000|temp_387:4|res:4|temp_388:200000000|temp_389:1|none:7
    li      a0, -600000064
    li      a0, -600000064
    add     sp,a0,sp
    li      a1, 600000056
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 600000048
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 600000064
    li      a3, 600000064
    add     s0,a3,sp
                    #      alloc i32 temp_380_391 
                    #      alloc i32 get_391 
                    #      alloc i32 i_391 
                    #      alloc i1 temp_381_394 
                    #      alloc ptr->i32 temp_382_396 
                    #      alloc i32 temp_383_396 
                    #      alloc i32 temp_384_396 
                    #      alloc Array:i32:[Some(50000000_0)] temp_385_391 
                    #      alloc Array:i32:[Some(50000000_0)] temp_386_391 
                    #      alloc i32 temp_387_391 
                    #      alloc i32 res_391 
                    #      alloc Array:i32:[Some(50000000_0)] temp_388_391 
                    #      alloc i1 temp_389_403 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_380_391:i32 
                    #      temp_380_391 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    li      a0, 600000044
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      get_391 = i32 temp_380_391 
    mv      a4, a0
                    #      i_391 = i32 0_0 
    li      a5, 0
                    #      jump label: while.head_395 
    j       .while.head_395
                    #      label while.head_395: 
.while.head_395:
                    #      new_var temp_381_394:i1 
                    #      temp_381_394 = icmp i32 Ne get_391, 35_0 
    li      a1, 35
    xor     a2,a4,a1
    snez    a2, a2
                    #      br i1 temp_381_394, label while.body_395, label while.exit_395 
    bnez    a2, .while.body_395
    j       .while.exit_395
                    #      label while.body_395: 
.while.body_395:
                    #      new_var temp_382_396:ptr->i32 
                    #      temp_382_396 = getelementptr buffer_0:Array:i32:[Some(50000000_0)] [Some(i_391)] 
    li      a1, 0
    li      a3, 1
    mul     a6,a3,a5
                    #occupy reg a6 with buffer_0
    add     a1,a1,a6
    slli a1,a1,2
    add     a1,a1,a1
                    #      store get_391:i32 temp_382_396:ptr->i32 
    sd      a4,0(a1)
                    #      mu buffer_0:1655 
                    #      buffer_0 = chi buffer_0:1655 
                    #      new_var temp_383_396:i32 
                    #      temp_383_396 = Add i32 i_391, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     a7,a5,a3
                    #      i_391 = i32 temp_383_396 
    mv      a5, a7
                    #      new_var temp_384_396:i32 
                    #      temp_384_396 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    li      a0, 600000044
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s1, 600000016
    add     s1,sp,s1
    sw      a0,0(s1)
                    #      get_391 = i32 temp_384_396 
    mv      a4, a0
                    #      jump label: while.head_395 
    li      a7, 600000020
    add     a7,sp,a7
    sw      a7,0(a7)
                    #found literal reg Some(s1) already exist with 600000016_0
    add     s1,sp,s1
    sw      a0,0(s1)
    li      s4, 600000044
    add     s4,sp,s4
    lw      a0,0(s4)
    li      a1, 600000024
    add     a1,sp,a1
    sd      a1,0(a1)
    li      s4, 600000044
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a2, 600000035
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_395
                    #      label while.exit_395: 
.while.exit_395:
                    #      new_var temp_385_391:Array:i32:[Some(50000000_0)] 
                    #      temp_385_391 = load *buffer_0:ptr->i32 
                    #   load label buffer as ptr to reg
    la      a1, buffer
                    #occupy reg a1 with *buffer_0
    lw      a3,0(a1)
                    #       Call void skip_space_0(temp_385_391, i_391) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 600000044
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a3
    mv      a1, a5
                    #arg load ended
    call    skip_space
                    #      new_var temp_386_391:Array:i32:[Some(50000000_0)] 
                    #      temp_386_391 = load *buffer_0:ptr->i32 
                    #   load label buffer as ptr to reg
    la      a0, buffer
                    #occupy reg a0 with *buffer_0
    lw      a1,0(a0)
                    #      new_var temp_387_391:i32 
                    #      temp_387_391 =  Call i32 detect_item_0(0_0, temp_386_391, i_391) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 0
    li      a1, 400000012
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a6, 400000012
    add     a6,sp,a6
    lw      a1,0(a6)
    li      a2, 600000035
    add     a2,sp,a2
    sb      a2,0(a2)
    mv      a2, a5
                    #arg load ended
    call    detect_item
    li      a0, 200000012
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      res_391 = i32 temp_387_391 
    mv      a1, a0
                    #      new_var temp_388_391:Array:i32:[Some(50000000_0)] 
                    #      temp_388_391 = load *buffer_0:ptr->i32 
                    #   load label buffer as ptr to reg
    la      a2, buffer
                    #occupy reg a2 with *buffer_0
    lw      a7,0(a2)
                    #       Call void skip_space_0(temp_388_391, i_391) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 200000012
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a7
    li      a1, 200000008
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a5
                    #arg load ended
    call    skip_space
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_389_403:i1 
                    #      temp_389_403 = icmp i32 Ne res_391, 0_0 
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_389_403, label branch_true_404, label branch_false_404 
    bnez    a2, .branch_true_404
    j       .branch_false_404
                    #      label branch_true_404: 
.branch_true_404:
                    #       Call void putch_0(111_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 200000008
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 111
                    #arg load ended
    call    putch
                    #       Call void putch_0(107_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 107
                    #arg load ended
    call    putch
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      ret 0_0 
    li      a0, 600000056
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 600000048
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 600000056
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    li      s1, 600000064
    li      s1, 600000064
    add     sp,s1,sp
    ret
                    #      label branch_false_404: 
.branch_false_404:
                    #       Call void putch_0(110_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 200000008
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 110
                    #arg load ended
    call    putch
                    #       Call void putch_0(111_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 111
                    #arg load ended
    call    putch
                    #       Call void putch_0(116_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 116
                    #arg load ended
    call    putch
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #       Call void putch_0(111_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 111
                    #arg load ended
    call    putch
                    #       Call void putch_0(107_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 107
                    #arg load ended
    call    putch
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      ret 1_0 
    li      a0, 600000056
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 600000048
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 600000056
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      s1, 600000064
    li      s1, 600000064
    add     sp,s1,sp
    ret
                    #      label L2_0: 
.L2_0:
.section        .data
    .align 4
    .globl buffer
                    #      global Array:i32:[Some(50000000_0)] buffer_0 
    .type buffer,@object
buffer:
    .zero 200000000
    .align 4
    .globl pos
                    #      global i32 pos_0 
    .type pos,@object
pos:
    .word 0
