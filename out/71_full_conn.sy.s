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
                    #      Define relu_reg_0 [a_16] -> relu_reg_ret_0 
    .globl relu_reg
    .type relu_reg,@function
relu_reg:
                    #mem layout:|ra_relu_reg:8|s0_relu_reg:8|a:4|temp_0:1|temp_1:1|none:2
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i1 temp_0_19 
                    #      alloc i1 temp_1_22 
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_0_19:i1 
                    #      temp_0_19 = icmp i32 Sgt a_16, 0x7F_0 
    li      a1, 0x7F
    slt     a2,a1,a0
                    #      br i1 temp_0_19, label branch_true_20, label branch_false_20 
    bnez    a2, .branch_true_20
    j       .branch_false_20
                    #      label branch_true_20: 
.branch_true_20:
                    #      ret 0x7F_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 0x7F
    addi    sp,sp,24
    ret
                    #      label branch_false_20: 
.branch_false_20:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_1_22:i1 
                    #      temp_1_22 = icmp i32 Slt a_16, 0_0 
    li      a1, 0
    slt     a3,a0,a1
                    #      br i1 temp_1_22, label branch_true_23, label branch_false_23 
    bnez    a3, .branch_true_23
    j       .branch_false_23
                    #      label branch_true_23: 
.branch_true_23:
                    #      ret 0_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
                    #      label branch_false_23: 
.branch_false_23:
                    #      label L7_0: 
.L7_0:
                    #      ret a_16 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
                    #      Define model_0 [a_26] -> model_ret_0 
    .globl model
    .type model,@function
model:
                    #mem layout:|ra_model:8|s0_model:8|a:8|temp_2:8|temp_3:4|temp_4:4|temp_5:8|temp_6:4|temp_7:4|temp_8:8|temp_9:4|temp_10:4|temp_11:4|none:4|temp_12:8|temp_13:4|temp_14:4|temp_15:4|none:4|temp_16:8|temp_17:4|temp_18:4|temp_19:4|none:4|temp_20:8|temp_21:4|temp_22:4|temp_23:4|none:4|temp_24:8|temp_25:4|temp_26:4|temp_27:4|none:4|temp_28:8|temp_29:4|temp_30:4|temp_31:4|none:4|temp_32:8|temp_33:4|temp_34:4|temp_35:4|none:4|temp_36:8|temp_37:4|temp_38:4|temp_39:4|none:4|temp_40:8|temp_41:4|temp_42:4|temp_43:4|none:4|temp_44:8|temp_45:4|temp_46:4|temp_47:4|none:4|temp_48:8|temp_49:4|temp_50:4|temp_51:4|temp_52:4|temp_53:8|temp_54:4|temp_55:4|temp_56:4|none:4|temp_57:8|temp_58:4|temp_59:4|temp_60:4|none:4|temp_61:8|temp_62:4|temp_63:4|temp_64:4|none:4|temp_65:8|temp_66:4|temp_67:4|temp_68:4|none:4|temp_69:8|temp_70:4|temp_71:4|temp_72:4|none:4|temp_73:8|temp_74:4|temp_75:4|temp_76:4|none:4|temp_77:8|temp_78:4|temp_79:4|temp_80:4|none:4|temp_81:8|temp_82:4|temp_83:4|temp_84:4|none:4|temp_85:8|temp_86:4|temp_87:4|temp_88:4|none:4|temp_89:8|temp_90:4|temp_91:4|temp_92:4|none:4|temp_93:8|temp_94:4|temp_95:4|temp_96:4|none:4|temp_97:8|temp_98:4|temp_99:4|temp_100:4|temp_101:4|temp_102:4|temp_103:4|temp_104:4|temp_105:4|temp_106:4|temp_107:4|temp_108:4|temp_109:4|temp_110:4|temp_111:4|temp_112:4|temp_113:4|temp_114:4|temp_115:4|temp_116:4|temp_117:4|temp_118:4|temp_119:4|temp_120:4|temp_121:4|temp_122:4|temp_123:4|temp_124:4|temp_125:4|temp_126:4|temp_127:4|temp_128:4|temp_129:4|temp_130:4|temp_131:4|temp_132:4|temp_133:4|temp_134:4|temp_135:4|temp_136:4|temp_137:4|temp_138:4|temp_139:4|temp_140:4|temp_141:4|temp_142:4|temp_143:4|temp_144:4|temp_145:4|temp_146:4|temp_147:4|temp_148:4|temp_149:4|temp_150:4|temp_151:4|temp_152:4|temp_153:4|temp_154:4|temp_155:4|temp_156:4|temp_157:4|temp_158:4|temp_159:4|temp_160:4|temp_161:4|temp_162:4|temp_163:4|temp_164:4|temp_165:4|temp_166:4|temp_167:4|temp_168:4|temp_169:4|temp_170:4|temp_171:4|temp_172:4|temp_173:4|temp_174:4|temp_175:4|temp_176:4|temp_177:4|temp_178:4|temp_179:4|temp_180:4|temp_181:4|temp_182:4|temp_183:4|temp_184:4|temp_185:4|temp_186:4|temp_187:4|temp_188:4|temp_189:4|temp_190:4|temp_191:4|temp_192:4|temp_193:4|temp_194:4|temp_195:4|temp_196:4|temp_197:4|temp_198:4|temp_199:4|temp_200:4|temp_201:4|temp_202:4|temp_203:4|temp_204:4|temp_205:4|temp_206:4|temp_207:4|temp_208:4|temp_209:4|temp_210:4|temp_211:4|temp_212:4|temp_213:4|temp_214:4|temp_215:4|temp_216:4|temp_217:4|temp_218:4|temp_219:4|temp_220:4|temp_221:4|temp_222:4|temp_223:4|temp_224:4|temp_225:4|temp_226:4|temp_227:4|temp_228:4|temp_229:4|temp_230:4|temp_231:4|temp_232:4|temp_233:4|temp_234:4|temp_235:4|temp_236:4|temp_237:4|temp_238:4|temp_239:4|temp_240:4|temp_241:4|temp_242:4|temp_243:4|temp_244:4|temp_245:4|temp_246:4|temp_247:4|temp_248:4|temp_249:4|temp_250:4|temp_251:4|temp_252:4|temp_253:4|temp_254:4|temp_255:4|temp_256:4|temp_257:4|temp_258:4|temp_259:4|temp_260:4|temp_261:4|temp_262:4|temp_263:4|temp_264:4|temp_265:4|temp_266:4|temp_267:4|temp_268:4|temp_269:4|temp_270:4|temp_271:4|temp_272:4|temp_273:4|temp_274:4|temp_275:4|temp_276:4|temp_277:4|temp_278:4|temp_279:4|temp_280:4|temp_281:4|temp_282:4|temp_283:4|temp_284:4|temp_285:4|temp_286:4|temp_287:4|temp_288:4|temp_289:4|temp_290:4|temp_291:4|temp_292:4|temp_293:4|temp_294:4|temp_295:4|temp_296:4|temp_297:4|temp_298:4|temp_299:4|temp_300:4|temp_301:4|temp_302:4|temp_303:4|temp_304:4|temp_305:4|temp_306:4|temp_307:4|temp_308:4|temp_309:4|temp_310:4|temp_311:4|temp_312:4|temp_313:4|temp_314:4|temp_315:4|temp_316:4|temp_317:4|temp_318:4|temp_319:4|temp_320:4|temp_321:4|temp_322:4|temp_323:4|temp_324:4|temp_325:4|temp_326:4|temp_327:4|temp_328:4|temp_329:4|temp_330:4|temp_331:4|temp_332:4|temp_333:4|temp_334:4|temp_335:4|temp_336:4|temp_337:4|temp_338:4|temp_339:4|temp_340:4|temp_341:4|temp_342:4|temp_343:4|temp_344:4|temp_345:4|temp_346:4|temp_347:4|temp_348:4|temp_349:4|temp_350:4|temp_351:4|temp_352:4|temp_353:4|temp_354:4|temp_355:4|temp_356:4|temp_357:4|temp_358:4|temp_359:4|temp_360:4|temp_361:4|temp_362:4|temp_363:4|temp_364:4|temp_365:4|temp_366:4|temp_367:4|temp_368:4|temp_369:4|temp_370:4|temp_371:4|temp_372:4|temp_373:4|temp_374:4|temp_375:4|temp_376:4|temp_377:4|temp_378:4|temp_379:4|temp_380:4|temp_381:4|temp_382:4|temp_383:4|temp_384:4|temp_385:4|temp_386:4|temp_387:4|temp_388:4|temp_389:4|temp_390:4|temp_391:4|temp_392:4|temp_393:4|temp_394:4|temp_395:4|temp_396:4|temp_397:4|temp_398:4|temp_399:4|temp_400:4|temp_401:4|temp_402:4|temp_403:4|temp_404:4|temp_405:4|temp_406:4|temp_407:4|temp_408:4|temp_409:4|temp_410:4|temp_411:4|temp_412:4|temp_413:4|temp_414:4|temp_415:4|temp_416:4|temp_417:4|temp_418:4|temp_419:4|temp_420:4|temp_421:4|temp_422:4|temp_423:4|temp_424:4|temp_425:4|temp_426:4|temp_427:4|temp_428:4|temp_429:4|temp_430:4|temp_431:4|temp_432:4|temp_433:4|temp_434:4|temp_435:4|temp_436:4|temp_437:4|temp_438:4|temp_439:4|temp_440:4|temp_441:4|temp_442:4|temp_443:4|temp_444:4|temp_445:4|temp_446:4|temp_447:4|temp_448:4|temp_449:4|temp_450:4|temp_451:4|temp_452:4|temp_453:4|temp_454:4|temp_455:4|temp_456:4|temp_457:4|temp_458:4|temp_459:4|temp_460:4|temp_461:4|temp_462:4|temp_463:4|temp_464:4|temp_465:4|temp_466:4|temp_467:4|temp_468:4|temp_469:4|temp_470:4|temp_471:4|temp_472:4|temp_473:4|temp_474:4|temp_475:4|temp_476:4|temp_477:4|temp_478:4|temp_479:4|temp_480:4|temp_481:4|temp_482:4|temp_483:4|temp_484:4|temp_485:4|temp_486:4|temp_487:4|temp_488:4|temp_489:4|temp_490:4|temp_491:4|temp_492:4|temp_493:4|temp_494:4|temp_495:4|temp_496:4|temp_497:4|temp_498:4|temp_499:4|temp_500:4|temp_501:4|temp_502:4|temp_503:4|temp_504:4|temp_505:4|temp_506:4|temp_507:4|temp_508:4|temp_509:4|temp_510:4|temp_511:4|temp_512:4|temp_513:4|temp_514:4|temp_515:4|temp_516:4|temp_517:4|temp_518:4|temp_519:4|temp_520:4|temp_521:4|temp_522:4|temp_523:4|temp_524:4|temp_525:4|temp_526:4|temp_527:4|temp_528:4|temp_529:4|temp_530:4|temp_531:4|temp_532:4|temp_533:4|temp_534:4|temp_535:4|temp_536:4|temp_537:4|temp_538:4|temp_539:4|temp_540:4|temp_541:4|temp_542:4|temp_543:4|temp_544:4|temp_545:4|temp_546:4|temp_547:4|temp_548:4|temp_549:4|temp_550:4|temp_551:4|temp_552:4|temp_553:4|temp_554:4|temp_555:4|temp_556:4|temp_557:4|temp_558:4|temp_559:4|temp_560:4|temp_561:4|temp_562:4|temp_563:1|none:3
    li      a1, -2456
    li      a1, -2456
    add     sp,a1,sp
    li      a2, 2448
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 2440
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 2456
    li      a4, 2456
    add     s0,a4,sp
                    #      new_var a_26:ptr->Array:i32:[Some(5_0)] 
                    #      alloc ptr->i32 temp_2_29 
                    #      alloc i32 temp_3_29 
                    #      alloc i32 temp_4_29 
                    #      alloc ptr->i32 temp_5_29 
                    #      alloc i32 temp_6_29 
                    #      alloc i32 temp_7_29 
                    #      alloc ptr->i32 temp_8_29 
                    #      alloc i32 temp_9_29 
                    #      alloc i32 temp_10_29 
                    #      alloc i32 temp_11_29 
                    #      alloc ptr->i32 temp_12_29 
                    #      alloc i32 temp_13_29 
                    #      alloc i32 temp_14_29 
                    #      alloc i32 temp_15_29 
                    #      alloc ptr->i32 temp_16_29 
                    #      alloc i32 temp_17_29 
                    #      alloc i32 temp_18_29 
                    #      alloc i32 temp_19_29 
                    #      alloc ptr->i32 temp_20_29 
                    #      alloc i32 temp_21_29 
                    #      alloc i32 temp_22_29 
                    #      alloc i32 temp_23_29 
                    #      alloc ptr->i32 temp_24_29 
                    #      alloc i32 temp_25_29 
                    #      alloc i32 temp_26_29 
                    #      alloc i32 temp_27_29 
                    #      alloc ptr->i32 temp_28_29 
                    #      alloc i32 temp_29_29 
                    #      alloc i32 temp_30_29 
                    #      alloc i32 temp_31_29 
                    #      alloc ptr->i32 temp_32_29 
                    #      alloc i32 temp_33_29 
                    #      alloc i32 temp_34_29 
                    #      alloc i32 temp_35_29 
                    #      alloc ptr->i32 temp_36_29 
                    #      alloc i32 temp_37_29 
                    #      alloc i32 temp_38_29 
                    #      alloc i32 temp_39_29 
                    #      alloc ptr->i32 temp_40_29 
                    #      alloc i32 temp_41_29 
                    #      alloc i32 temp_42_29 
                    #      alloc i32 temp_43_29 
                    #      alloc ptr->i32 temp_44_29 
                    #      alloc i32 temp_45_29 
                    #      alloc i32 temp_46_29 
                    #      alloc i32 temp_47_29 
                    #      alloc ptr->i32 temp_48_29 
                    #      alloc i32 temp_49_29 
                    #      alloc i32 temp_50_29 
                    #      alloc i32 temp_51_29 
                    #      alloc i32 temp_52_29 
                    #      alloc ptr->i32 temp_53_29 
                    #      alloc i32 temp_54_29 
                    #      alloc i32 temp_55_29 
                    #      alloc i32 temp_56_29 
                    #      alloc ptr->i32 temp_57_29 
                    #      alloc i32 temp_58_29 
                    #      alloc i32 temp_59_29 
                    #      alloc i32 temp_60_29 
                    #      alloc ptr->i32 temp_61_29 
                    #      alloc i32 temp_62_29 
                    #      alloc i32 temp_63_29 
                    #      alloc i32 temp_64_29 
                    #      alloc ptr->i32 temp_65_29 
                    #      alloc i32 temp_66_29 
                    #      alloc i32 temp_67_29 
                    #      alloc i32 temp_68_29 
                    #      alloc ptr->i32 temp_69_29 
                    #      alloc i32 temp_70_29 
                    #      alloc i32 temp_71_29 
                    #      alloc i32 temp_72_29 
                    #      alloc ptr->i32 temp_73_29 
                    #      alloc i32 temp_74_29 
                    #      alloc i32 temp_75_29 
                    #      alloc i32 temp_76_29 
                    #      alloc ptr->i32 temp_77_29 
                    #      alloc i32 temp_78_29 
                    #      alloc i32 temp_79_29 
                    #      alloc i32 temp_80_29 
                    #      alloc ptr->i32 temp_81_29 
                    #      alloc i32 temp_82_29 
                    #      alloc i32 temp_83_29 
                    #      alloc i32 temp_84_29 
                    #      alloc ptr->i32 temp_85_29 
                    #      alloc i32 temp_86_29 
                    #      alloc i32 temp_87_29 
                    #      alloc i32 temp_88_29 
                    #      alloc ptr->i32 temp_89_29 
                    #      alloc i32 temp_90_29 
                    #      alloc i32 temp_91_29 
                    #      alloc i32 temp_92_29 
                    #      alloc ptr->i32 temp_93_29 
                    #      alloc i32 temp_94_29 
                    #      alloc i32 temp_95_29 
                    #      alloc i32 temp_96_29 
                    #      alloc ptr->i32 temp_97_29 
                    #      alloc i32 temp_98_29 
                    #      alloc i32 temp_99_29 
                    #      alloc i32 temp_100_29 
                    #      alloc i32 temp_101_29 
                    #      alloc i32 temp_102_29 
                    #      alloc i32 temp_103_29 
                    #      alloc i32 temp_104_29 
                    #      alloc i32 temp_105_29 
                    #      alloc i32 temp_106_29 
                    #      alloc i32 temp_107_29 
                    #      alloc i32 temp_108_29 
                    #      alloc i32 temp_109_29 
                    #      alloc i32 temp_110_29 
                    #      alloc i32 temp_111_29 
                    #      alloc i32 temp_112_29 
                    #      alloc i32 temp_113_29 
                    #      alloc i32 temp_114_29 
                    #      alloc i32 temp_115_29 
                    #      alloc i32 temp_116_29 
                    #      alloc i32 temp_117_29 
                    #      alloc i32 temp_118_29 
                    #      alloc i32 temp_119_29 
                    #      alloc i32 temp_120_29 
                    #      alloc i32 temp_121_29 
                    #      alloc i32 temp_122_29 
                    #      alloc i32 temp_123_29 
                    #      alloc i32 temp_124_29 
                    #      alloc i32 temp_125_29 
                    #      alloc i32 temp_126_29 
                    #      alloc i32 temp_127_29 
                    #      alloc i32 temp_128_29 
                    #      alloc i32 temp_129_29 
                    #      alloc i32 temp_130_29 
                    #      alloc i32 temp_131_29 
                    #      alloc i32 temp_132_29 
                    #      alloc i32 temp_133_29 
                    #      alloc i32 temp_134_29 
                    #      alloc i32 temp_135_29 
                    #      alloc i32 temp_136_29 
                    #      alloc i32 temp_137_29 
                    #      alloc i32 temp_138_29 
                    #      alloc i32 temp_139_29 
                    #      alloc i32 temp_140_29 
                    #      alloc i32 temp_141_29 
                    #      alloc i32 temp_142_29 
                    #      alloc i32 temp_143_29 
                    #      alloc i32 temp_144_29 
                    #      alloc i32 temp_145_29 
                    #      alloc i32 temp_146_29 
                    #      alloc i32 temp_147_29 
                    #      alloc i32 temp_148_29 
                    #      alloc i32 temp_149_29 
                    #      alloc i32 temp_150_29 
                    #      alloc i32 temp_151_29 
                    #      alloc i32 temp_152_29 
                    #      alloc i32 temp_153_29 
                    #      alloc i32 temp_154_29 
                    #      alloc i32 temp_155_29 
                    #      alloc i32 temp_156_29 
                    #      alloc i32 temp_157_29 
                    #      alloc i32 temp_158_29 
                    #      alloc i32 temp_159_29 
                    #      alloc i32 temp_160_29 
                    #      alloc i32 temp_161_29 
                    #      alloc i32 temp_162_29 
                    #      alloc i32 temp_163_29 
                    #      alloc i32 temp_164_29 
                    #      alloc i32 temp_165_29 
                    #      alloc i32 temp_166_29 
                    #      alloc i32 temp_167_29 
                    #      alloc i32 temp_168_29 
                    #      alloc i32 temp_169_29 
                    #      alloc i32 temp_170_29 
                    #      alloc i32 temp_171_29 
                    #      alloc i32 temp_172_29 
                    #      alloc i32 temp_173_29 
                    #      alloc i32 temp_174_29 
                    #      alloc i32 temp_175_29 
                    #      alloc i32 temp_176_29 
                    #      alloc i32 temp_177_29 
                    #      alloc i32 temp_178_29 
                    #      alloc i32 temp_179_29 
                    #      alloc i32 temp_180_29 
                    #      alloc i32 temp_181_29 
                    #      alloc i32 temp_182_29 
                    #      alloc i32 temp_183_29 
                    #      alloc i32 temp_184_29 
                    #      alloc i32 temp_185_29 
                    #      alloc i32 temp_186_29 
                    #      alloc i32 temp_187_29 
                    #      alloc i32 temp_188_29 
                    #      alloc i32 temp_189_29 
                    #      alloc i32 temp_190_29 
                    #      alloc i32 temp_191_29 
                    #      alloc i32 temp_192_29 
                    #      alloc i32 temp_193_29 
                    #      alloc i32 temp_194_29 
                    #      alloc i32 temp_195_29 
                    #      alloc i32 temp_196_29 
                    #      alloc i32 temp_197_29 
                    #      alloc i32 temp_198_29 
                    #      alloc i32 temp_199_29 
                    #      alloc i32 temp_200_29 
                    #      alloc i32 temp_201_29 
                    #      alloc i32 temp_202_29 
                    #      alloc i32 temp_203_29 
                    #      alloc i32 temp_204_29 
                    #      alloc i32 temp_205_29 
                    #      alloc i32 temp_206_29 
                    #      alloc i32 temp_207_29 
                    #      alloc i32 temp_208_29 
                    #      alloc i32 temp_209_29 
                    #      alloc i32 temp_210_29 
                    #      alloc i32 temp_211_29 
                    #      alloc i32 temp_212_29 
                    #      alloc i32 temp_213_29 
                    #      alloc i32 temp_214_29 
                    #      alloc i32 temp_215_29 
                    #      alloc i32 temp_216_29 
                    #      alloc i32 temp_217_29 
                    #      alloc i32 temp_218_29 
                    #      alloc i32 temp_219_29 
                    #      alloc i32 temp_220_29 
                    #      alloc i32 temp_221_29 
                    #      alloc i32 temp_222_29 
                    #      alloc i32 temp_223_29 
                    #      alloc i32 temp_224_29 
                    #      alloc i32 temp_225_29 
                    #      alloc i32 temp_226_29 
                    #      alloc i32 temp_227_29 
                    #      alloc i32 temp_228_29 
                    #      alloc i32 temp_229_29 
                    #      alloc i32 temp_230_29 
                    #      alloc i32 temp_231_29 
                    #      alloc i32 temp_232_29 
                    #      alloc i32 temp_233_29 
                    #      alloc i32 temp_234_29 
                    #      alloc i32 temp_235_29 
                    #      alloc i32 temp_236_29 
                    #      alloc i32 temp_237_29 
                    #      alloc i32 temp_238_29 
                    #      alloc i32 temp_239_29 
                    #      alloc i32 temp_240_29 
                    #      alloc i32 temp_241_29 
                    #      alloc i32 temp_242_29 
                    #      alloc i32 temp_243_29 
                    #      alloc i32 temp_244_29 
                    #      alloc i32 temp_245_29 
                    #      alloc i32 temp_246_29 
                    #      alloc i32 temp_247_29 
                    #      alloc i32 temp_248_29 
                    #      alloc i32 temp_249_29 
                    #      alloc i32 temp_250_29 
                    #      alloc i32 temp_251_29 
                    #      alloc i32 temp_252_29 
                    #      alloc i32 temp_253_29 
                    #      alloc i32 temp_254_29 
                    #      alloc i32 temp_255_29 
                    #      alloc i32 temp_256_29 
                    #      alloc i32 temp_257_29 
                    #      alloc i32 temp_258_29 
                    #      alloc i32 temp_259_29 
                    #      alloc i32 temp_260_29 
                    #      alloc i32 temp_261_29 
                    #      alloc i32 temp_262_29 
                    #      alloc i32 temp_263_29 
                    #      alloc i32 temp_264_29 
                    #      alloc i32 temp_265_29 
                    #      alloc i32 temp_266_29 
                    #      alloc i32 temp_267_29 
                    #      alloc i32 temp_268_29 
                    #      alloc i32 temp_269_29 
                    #      alloc i32 temp_270_29 
                    #      alloc i32 temp_271_29 
                    #      alloc i32 temp_272_29 
                    #      alloc i32 temp_273_29 
                    #      alloc i32 temp_274_29 
                    #      alloc i32 temp_275_29 
                    #      alloc i32 temp_276_29 
                    #      alloc i32 temp_277_29 
                    #      alloc i32 temp_278_29 
                    #      alloc i32 temp_279_29 
                    #      alloc i32 temp_280_29 
                    #      alloc i32 temp_281_29 
                    #      alloc i32 temp_282_29 
                    #      alloc i32 temp_283_29 
                    #      alloc i32 temp_284_29 
                    #      alloc i32 temp_285_29 
                    #      alloc i32 temp_286_29 
                    #      alloc i32 temp_287_29 
                    #      alloc i32 temp_288_29 
                    #      alloc i32 temp_289_29 
                    #      alloc i32 temp_290_29 
                    #      alloc i32 temp_291_29 
                    #      alloc i32 temp_292_29 
                    #      alloc i32 temp_293_29 
                    #      alloc i32 temp_294_29 
                    #      alloc i32 temp_295_29 
                    #      alloc i32 temp_296_29 
                    #      alloc i32 temp_297_29 
                    #      alloc i32 temp_298_29 
                    #      alloc i32 temp_299_29 
                    #      alloc i32 temp_300_29 
                    #      alloc i32 temp_301_29 
                    #      alloc i32 temp_302_29 
                    #      alloc i32 temp_303_29 
                    #      alloc i32 temp_304_29 
                    #      alloc i32 temp_305_29 
                    #      alloc i32 temp_306_29 
                    #      alloc i32 temp_307_29 
                    #      alloc i32 temp_308_29 
                    #      alloc i32 temp_309_29 
                    #      alloc i32 temp_310_29 
                    #      alloc i32 temp_311_29 
                    #      alloc i32 temp_312_29 
                    #      alloc i32 temp_313_29 
                    #      alloc i32 temp_314_29 
                    #      alloc i32 temp_315_29 
                    #      alloc i32 temp_316_29 
                    #      alloc i32 temp_317_29 
                    #      alloc i32 temp_318_29 
                    #      alloc i32 temp_319_29 
                    #      alloc i32 temp_320_29 
                    #      alloc i32 temp_321_29 
                    #      alloc i32 temp_322_29 
                    #      alloc i32 temp_323_29 
                    #      alloc i32 temp_324_29 
                    #      alloc i32 temp_325_29 
                    #      alloc i32 temp_326_29 
                    #      alloc i32 temp_327_29 
                    #      alloc i32 temp_328_29 
                    #      alloc i32 temp_329_29 
                    #      alloc i32 temp_330_29 
                    #      alloc i32 temp_331_29 
                    #      alloc i32 temp_332_29 
                    #      alloc i32 temp_333_29 
                    #      alloc i32 temp_334_29 
                    #      alloc i32 temp_335_29 
                    #      alloc i32 temp_336_29 
                    #      alloc i32 temp_337_29 
                    #      alloc i32 temp_338_29 
                    #      alloc i32 temp_339_29 
                    #      alloc i32 temp_340_29 
                    #      alloc i32 temp_341_29 
                    #      alloc i32 temp_342_29 
                    #      alloc i32 temp_343_29 
                    #      alloc i32 temp_344_29 
                    #      alloc i32 temp_345_29 
                    #      alloc i32 temp_346_29 
                    #      alloc i32 temp_347_29 
                    #      alloc i32 temp_348_29 
                    #      alloc i32 temp_349_29 
                    #      alloc i32 temp_350_29 
                    #      alloc i32 temp_351_29 
                    #      alloc i32 temp_352_29 
                    #      alloc i32 temp_353_29 
                    #      alloc i32 temp_354_29 
                    #      alloc i32 temp_355_29 
                    #      alloc i32 temp_356_29 
                    #      alloc i32 temp_357_29 
                    #      alloc i32 temp_358_29 
                    #      alloc i32 temp_359_29 
                    #      alloc i32 temp_360_29 
                    #      alloc i32 temp_361_29 
                    #      alloc i32 temp_362_29 
                    #      alloc i32 temp_363_29 
                    #      alloc i32 temp_364_29 
                    #      alloc i32 temp_365_29 
                    #      alloc i32 temp_366_29 
                    #      alloc i32 temp_367_29 
                    #      alloc i32 temp_368_29 
                    #      alloc i32 temp_369_29 
                    #      alloc i32 temp_370_29 
                    #      alloc i32 temp_371_29 
                    #      alloc i32 temp_372_29 
                    #      alloc i32 temp_373_29 
                    #      alloc i32 temp_374_29 
                    #      alloc i32 temp_375_29 
                    #      alloc i32 temp_376_29 
                    #      alloc i32 temp_377_29 
                    #      alloc i32 temp_378_29 
                    #      alloc i32 temp_379_29 
                    #      alloc i32 temp_380_29 
                    #      alloc i32 temp_381_29 
                    #      alloc i32 temp_382_29 
                    #      alloc i32 temp_383_29 
                    #      alloc i32 temp_384_29 
                    #      alloc i32 temp_385_29 
                    #      alloc i32 temp_386_29 
                    #      alloc i32 temp_387_29 
                    #      alloc i32 temp_388_29 
                    #      alloc i32 temp_389_29 
                    #      alloc i32 temp_390_29 
                    #      alloc i32 temp_391_29 
                    #      alloc i32 temp_392_29 
                    #      alloc i32 temp_393_29 
                    #      alloc i32 temp_394_29 
                    #      alloc i32 temp_395_29 
                    #      alloc i32 temp_396_29 
                    #      alloc i32 temp_397_29 
                    #      alloc i32 temp_398_29 
                    #      alloc i32 temp_399_29 
                    #      alloc i32 temp_400_29 
                    #      alloc i32 temp_401_29 
                    #      alloc i32 temp_402_29 
                    #      alloc i32 temp_403_29 
                    #      alloc i32 temp_404_29 
                    #      alloc i32 temp_405_29 
                    #      alloc i32 temp_406_29 
                    #      alloc i32 temp_407_29 
                    #      alloc i32 temp_408_29 
                    #      alloc i32 temp_409_29 
                    #      alloc i32 temp_410_29 
                    #      alloc i32 temp_411_29 
                    #      alloc i32 temp_412_29 
                    #      alloc i32 temp_413_29 
                    #      alloc i32 temp_414_29 
                    #      alloc i32 temp_415_29 
                    #      alloc i32 temp_416_29 
                    #      alloc i32 temp_417_29 
                    #      alloc i32 temp_418_29 
                    #      alloc i32 temp_419_29 
                    #      alloc i32 temp_420_29 
                    #      alloc i32 temp_421_29 
                    #      alloc i32 temp_422_29 
                    #      alloc i32 temp_423_29 
                    #      alloc i32 temp_424_29 
                    #      alloc i32 temp_425_29 
                    #      alloc i32 temp_426_29 
                    #      alloc i32 temp_427_29 
                    #      alloc i32 temp_428_29 
                    #      alloc i32 temp_429_29 
                    #      alloc i32 temp_430_29 
                    #      alloc i32 temp_431_29 
                    #      alloc i32 temp_432_29 
                    #      alloc i32 temp_433_29 
                    #      alloc i32 temp_434_29 
                    #      alloc i32 temp_435_29 
                    #      alloc i32 temp_436_29 
                    #      alloc i32 temp_437_29 
                    #      alloc i32 temp_438_29 
                    #      alloc i32 temp_439_29 
                    #      alloc i32 temp_440_29 
                    #      alloc i32 temp_441_29 
                    #      alloc i32 temp_442_29 
                    #      alloc i32 temp_443_29 
                    #      alloc i32 temp_444_29 
                    #      alloc i32 temp_445_29 
                    #      alloc i32 temp_446_29 
                    #      alloc i32 temp_447_29 
                    #      alloc i32 temp_448_29 
                    #      alloc i32 temp_449_29 
                    #      alloc i32 temp_450_29 
                    #      alloc i32 temp_451_29 
                    #      alloc i32 temp_452_29 
                    #      alloc i32 temp_453_29 
                    #      alloc i32 temp_454_29 
                    #      alloc i32 temp_455_29 
                    #      alloc i32 temp_456_29 
                    #      alloc i32 temp_457_29 
                    #      alloc i32 temp_458_29 
                    #      alloc i32 temp_459_29 
                    #      alloc i32 temp_460_29 
                    #      alloc i32 temp_461_29 
                    #      alloc i32 temp_462_29 
                    #      alloc i32 temp_463_29 
                    #      alloc i32 temp_464_29 
                    #      alloc i32 temp_465_29 
                    #      alloc i32 temp_466_29 
                    #      alloc i32 temp_467_29 
                    #      alloc i32 temp_468_29 
                    #      alloc i32 temp_469_29 
                    #      alloc i32 temp_470_29 
                    #      alloc i32 temp_471_29 
                    #      alloc i32 temp_472_29 
                    #      alloc i32 temp_473_29 
                    #      alloc i32 temp_474_29 
                    #      alloc i32 temp_475_29 
                    #      alloc i32 temp_476_29 
                    #      alloc i32 temp_477_29 
                    #      alloc i32 temp_478_29 
                    #      alloc i32 temp_479_29 
                    #      alloc i32 temp_480_29 
                    #      alloc i32 temp_481_29 
                    #      alloc i32 temp_482_29 
                    #      alloc i32 temp_483_29 
                    #      alloc i32 temp_484_29 
                    #      alloc i32 temp_485_29 
                    #      alloc i32 temp_486_29 
                    #      alloc i32 temp_487_29 
                    #      alloc i32 temp_488_29 
                    #      alloc i32 temp_489_29 
                    #      alloc i32 temp_490_29 
                    #      alloc i32 temp_491_29 
                    #      alloc i32 temp_492_29 
                    #      alloc i32 temp_493_29 
                    #      alloc i32 temp_494_29 
                    #      alloc i32 temp_495_29 
                    #      alloc i32 temp_496_29 
                    #      alloc i32 temp_497_29 
                    #      alloc i32 temp_498_29 
                    #      alloc i32 temp_499_29 
                    #      alloc i32 temp_500_29 
                    #      alloc i32 temp_501_29 
                    #      alloc i32 temp_502_29 
                    #      alloc i32 temp_503_29 
                    #      alloc i32 temp_504_29 
                    #      alloc i32 temp_505_29 
                    #      alloc i32 temp_506_29 
                    #      alloc i32 temp_507_29 
                    #      alloc i32 temp_508_29 
                    #      alloc i32 temp_509_29 
                    #      alloc i32 temp_510_29 
                    #      alloc i32 temp_511_29 
                    #      alloc i32 temp_512_29 
                    #      alloc i32 temp_513_29 
                    #      alloc i32 temp_514_29 
                    #      alloc i32 temp_515_29 
                    #      alloc i32 temp_516_29 
                    #      alloc i32 temp_517_29 
                    #      alloc i32 temp_518_29 
                    #      alloc i32 temp_519_29 
                    #      alloc i32 temp_520_29 
                    #      alloc i32 temp_521_29 
                    #      alloc i32 temp_522_29 
                    #      alloc i32 temp_523_29 
                    #      alloc i32 temp_524_29 
                    #      alloc i32 temp_525_29 
                    #      alloc i32 temp_526_29 
                    #      alloc i32 temp_527_29 
                    #      alloc i32 temp_528_29 
                    #      alloc i32 temp_529_29 
                    #      alloc i32 temp_530_29 
                    #      alloc i32 temp_531_29 
                    #      alloc i32 temp_532_29 
                    #      alloc i32 temp_533_29 
                    #      alloc i32 temp_534_29 
                    #      alloc i32 temp_535_29 
                    #      alloc i32 temp_536_29 
                    #      alloc i32 temp_537_29 
                    #      alloc i32 temp_538_29 
                    #      alloc i32 temp_539_29 
                    #      alloc i32 temp_540_29 
                    #      alloc i32 temp_541_29 
                    #      alloc i32 temp_542_29 
                    #      alloc i32 temp_543_29 
                    #      alloc i32 temp_544_29 
                    #      alloc i32 temp_545_29 
                    #      alloc i32 temp_546_29 
                    #      alloc i32 temp_547_29 
                    #      alloc i32 temp_548_29 
                    #      alloc i32 temp_549_29 
                    #      alloc i32 temp_550_29 
                    #      alloc i32 temp_551_29 
                    #      alloc i32 temp_552_29 
                    #      alloc i32 temp_553_29 
                    #      alloc i32 temp_554_29 
                    #      alloc i32 temp_555_29 
                    #      alloc i32 temp_556_29 
                    #      alloc i32 temp_557_29 
                    #      alloc i32 temp_558_29 
                    #      alloc i32 temp_559_29 
                    #      alloc i32 temp_560_29 
                    #      alloc i32 temp_561_29 
                    #      alloc i32 temp_562_29 
                    #      alloc i1 temp_563_29 
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_2_29:ptr->i32 
                    #      new_var temp_3_29:i32 
                    #      temp_2_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(2_0), Some(2_0)] 
    li      a5, 0
    li      a6, 1
    li      a7, 2
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_3_29 = load temp_2_29:ptr->i32 
    lw      s1,0(a5)
                    #      new_var temp_4_29:i32 
                    #      temp_4_29 = Mul i32 -7_0, temp_3_29 
    li      s2, -7
    mul     s3,s2,s1
                    #      new_var temp_5_29:ptr->i32 
                    #      new_var temp_6_29:i32 
                    #      temp_5_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(4_0), Some(4_0)] 
    li      s4, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s5, 4
    add     s4,s4,a0
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_6_29 = load temp_5_29:ptr->i32 
    lw      s6,0(s4)
                    #      new_var temp_7_29:i32 
                    #      temp_7_29 = Mul i32 temp_6_29, 85_0 
    li      s7, 85
    mul     s8,s6,s7
                    #      new_var temp_8_29:ptr->i32 
                    #      new_var temp_9_29:i32 
                    #      temp_8_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(4_0), Some(3_0)] 
    li      s9, 0
                    #found literal reg Some(a6) already exist with 1_0
                    #found literal reg Some(s5) already exist with 4_0
    add     s9,s9,a0
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_9_29 = load temp_8_29:ptr->i32 
    lw      s10,0(s9)
                    #      new_var temp_10_29:i32 
                    #      temp_10_29 = Mul i32 -49_0, temp_9_29 
    li      s11, -49
    mul     a1,s11,s10
                    #      new_var temp_11_29:i32 
                    #      temp_11_29 = Add i32 temp_10_29, temp_7_29 
    add     a2,a1,s8
                    #      new_var temp_12_29:ptr->i32 
                    #      new_var temp_13_29:i32 
                    #      temp_12_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(4_0), Some(2_0)] 
    li      a3, 0
                    #found literal reg Some(a6) already exist with 1_0
                    #found literal reg Some(s5) already exist with 4_0
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_13_29 = load temp_12_29:ptr->i32 
    lw      a4,0(a3)
                    #      new_var temp_14_29:i32 
                    #      temp_14_29 = Mul i32 temp_13_29, 36_0 
    li      a6, 36
    mul     a7,a4,a6
                    #      new_var temp_15_29:i32 
                    #      temp_15_29 = Add i32 temp_14_29, temp_11_29 
    add     a6,a7,a2
                    #      new_var temp_16_29:ptr->i32 
                    #      new_var temp_17_29:i32 
                    #      temp_16_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(4_0), Some(1_0)] 
    li      s2, 0
    li      s5, 1
    li      s7, 4
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_17_29 = load temp_16_29:ptr->i32 
    lw      s5,0(s2)
                    #      new_var temp_18_29:i32 
                    #      temp_18_29 = Mul i32 temp_17_29, -121_0 
    li      s7, -121
    mul     s11,s5,s7
                    #      new_var temp_19_29:i32 
                    #      temp_19_29 = Add i32 temp_18_29, temp_15_29 
    add     s7,s11,a6
                    #      new_var temp_20_29:ptr->i32 
                    #      new_var temp_21_29:i32 
                    #      temp_20_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(4_0), Some(0_0)] 
    li      a0, 2432
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    li      a1, 2384
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2380
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 4
    li      a3, 2368
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_21_29 = load temp_20_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_22_29:i32 
                    #      temp_22_29 = Mul i32 115_0, temp_21_29 
    li      a2, 115
    li      a0, 2320
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a2,a1
                    #      new_var temp_23_29:i32 
                    #      temp_23_29 = Add i32 temp_22_29, temp_19_29 
    add     a2,a0,s7
                    #      new_var temp_24_29:ptr->i32 
                    #      new_var temp_25_29:i32 
                    #      temp_24_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(3_0), Some(4_0)] 
    li      a0, 2312
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2316
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2308
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_25_29 = load temp_24_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_26_29:i32 
                    #      temp_26_29 = Mul i32 temp_25_29, 29_0 
    li      a2, 29
    li      a0, 2296
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
                    #      new_var temp_27_29:i32 
                    #      temp_27_29 = Add i32 temp_26_29, temp_23_29 
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_28_29:ptr->i32 
                    #      new_var temp_29_29:i32 
                    #      temp_28_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(3_0), Some(3_0)] 
    li      a0, 2288
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2284
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2308
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_29_29 = load temp_28_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_30_29:i32 
                    #      temp_30_29 = Mul i32 temp_29_29, 38_0 
    li      a2, 38
    li      a0, 2272
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
                    #      new_var temp_31_29:i32 
                    #      temp_31_29 = Add i32 temp_30_29, temp_27_29 
    li      a1, 2268
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_32_29:ptr->i32 
                    #      new_var temp_33_29:i32 
                    #      temp_32_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(3_0), Some(2_0)] 
    li      a0, 2264
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2260
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2284
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_33_29 = load temp_32_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_34_29:i32 
                    #      temp_34_29 = Mul i32 temp_33_29, -68_0 
    li      a2, -68
    li      a0, 2248
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
                    #      new_var temp_35_29:i32 
                    #      temp_35_29 = Add i32 temp_34_29, temp_31_29 
    li      a1, 2244
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_36_29:ptr->i32 
                    #      new_var temp_37_29:i32 
                    #      temp_36_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(3_0), Some(1_0)] 
    li      a0, 2240
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2236
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2260
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_37_29 = load temp_36_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_38_29:i32 
                    #      temp_38_29 = Mul i32 22_0, temp_37_29 
    li      a2, 22
    li      a0, 2224
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a2,a1
                    #      new_var temp_39_29:i32 
                    #      temp_39_29 = Add i32 temp_38_29, temp_35_29 
    li      a1, 2220
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_40_29:ptr->i32 
                    #      new_var temp_41_29:i32 
                    #      temp_40_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(3_0), Some(0_0)] 
    li      a0, 2216
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2212
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2236
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_41_29 = load temp_40_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_42_29:i32 
                    #      temp_42_29 = Mul i32 temp_41_29, 47_0 
    li      a2, 47
    li      a0, 2200
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
                    #      new_var temp_43_29:i32 
                    #      temp_43_29 = Add i32 temp_42_29, temp_39_29 
    li      a1, 2196
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_44_29:ptr->i32 
                    #      new_var temp_45_29:i32 
                    #      temp_44_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(2_0), Some(4_0)] 
    li      a0, 2192
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2188
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2212
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_45_29 = load temp_44_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_46_29:i32 
                    #      temp_46_29 = Mul i32 temp_45_29, 67_0 
    li      a2, 67
    li      a0, 2176
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
                    #      new_var temp_47_29:i32 
                    #      temp_47_29 = Add i32 temp_46_29, temp_43_29 
    li      a1, 2172
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_48_29:ptr->i32 
                    #      new_var temp_49_29:i32 
                    #      temp_48_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(2_0), Some(3_0)] 
    li      a0, 2168
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2164
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2188
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_49_29 = load temp_48_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_50_29:i32 
                    #      temp_50_29 = Mul i32 -122_0, temp_49_29 
    li      a2, -122
    li      a0, 2152
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a2,a1
                    #      new_var temp_51_29:i32 
                    #      temp_51_29 = Add i32 temp_50_29, temp_47_29 
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_52_29:i32 
                    #      temp_52_29 = Add i32 temp_51_29, temp_4_29 
    li      a0, 2144
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a1,s3
                    #      new_var temp_53_29:ptr->i32 
                    #      new_var temp_54_29:i32 
                    #      temp_53_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(2_0), Some(1_0)] 
    li      a0, 2136
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2140
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2164
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_54_29 = load temp_53_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_55_29:i32 
                    #      temp_55_29 = Mul i32 temp_54_29, -74_0 
    li      a2, -74
    li      a0, 2128
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
                    #      new_var temp_56_29:i32 
                    #      temp_56_29 = Add i32 temp_55_29, temp_52_29 
    li      a1, 2124
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_57_29:ptr->i32 
                    #      new_var temp_58_29:i32 
                    #      temp_57_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(2_0), Some(0_0)] 
    li      a0, 2120
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2136
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_58_29 = load temp_57_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_59_29:i32 
                    #      temp_59_29 = Mul i32 109_0, temp_58_29 
    li      a2, 109
    li      a0, 2104
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a2,a1
                    #      new_var temp_60_29:i32 
                    #      temp_60_29 = Add i32 temp_59_29, temp_56_29 
    li      a1, 2100
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_61_29:ptr->i32 
                    #      new_var temp_62_29:i32 
                    #      temp_61_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(1_0), Some(4_0)] 
    li      a0, 2096
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2092
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2116
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_62_29 = load temp_61_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_63_29:i32 
                    #      temp_63_29 = Mul i32 -51_0, temp_62_29 
    li      a2, -51
    li      a0, 2080
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a2,a1
                    #      new_var temp_64_29:i32 
                    #      temp_64_29 = Add i32 temp_63_29, temp_60_29 
    li      a1, 2076
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_65_29:ptr->i32 
                    #      new_var temp_66_29:i32 
                    #      temp_65_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(1_0), Some(3_0)] 
    li      a0, 2072
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2068
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2092
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_66_29 = load temp_65_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_67_29:i32 
                    #      temp_67_29 = Mul i32 temp_66_29, 96_0 
    li      a2, 96
    li      a0, 2056
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
                    #      new_var temp_68_29:i32 
                    #      temp_68_29 = Add i32 temp_67_29, temp_64_29 
    li      a1, 2052
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_69_29:ptr->i32 
                    #      new_var temp_70_29:i32 
                    #      temp_69_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(1_0), Some(2_0)] 
    li      a0, 2048
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2044
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2068
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_70_29 = load temp_69_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_71_29:i32 
                    #      temp_71_29 = Mul i32 temp_70_29, 75_0 
    li      a2, 75
    li      a0, 2032
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
                    #      new_var temp_72_29:i32 
                    #      temp_72_29 = Add i32 temp_71_29, temp_68_29 
    li      a1, 2028
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_73_29:ptr->i32 
                    #      new_var temp_74_29:i32 
                    #      temp_73_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(1_0), Some(1_0)] 
    li      a0, 2024
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 2020
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2044
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_74_29 = load temp_73_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_75_29:i32 
                    #      temp_75_29 = Mul i32 temp_74_29, -77_0 
    li      a2, -77
    li      a0, 2008
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,a1,a2
                    #      new_var temp_76_29:i32 
                    #      temp_76_29 = Add i32 temp_75_29, temp_72_29 
    li      a1, 2004
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      new_var temp_77_29:ptr->i32 
                    #      new_var temp_78_29:i32 
                    #      temp_77_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(1_0), Some(0_0)] 
    sw      a0,2000(sp)
    li      a0, 0
    sw      a1,1996(sp)
    li      a1, 1
    li      a2, 2020
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_78_29 = load temp_77_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_79_29:i32 
                    #      temp_79_29 = Mul i32 10_0, temp_78_29 
    li      a2, 10
    sd      a0,1984(sp)
    mul     a0,a2,a1
                    #      new_var temp_80_29:i32 
                    #      temp_80_29 = Add i32 temp_79_29, temp_76_29 
    sw      a1,1980(sp)
    add     a1,a0,a2
                    #      new_var temp_81_29:ptr->i32 
                    #      new_var temp_82_29:i32 
                    #      temp_81_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(0_0), Some(4_0)] 
    sw      a0,1976(sp)
    li      a0, 0
    sw      a1,1972(sp)
    li      a1, 1
    sw      a2,1996(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_82_29 = load temp_81_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_83_29:i32 
                    #      temp_83_29 = Mul i32 -92_0, temp_82_29 
    li      a2, -92
    sd      a0,1960(sp)
    mul     a0,a2,a1
                    #      new_var temp_84_29:i32 
                    #      temp_84_29 = Add i32 temp_83_29, temp_80_29 
    sw      a1,1956(sp)
    add     a1,a0,a2
                    #      new_var temp_85_29:ptr->i32 
                    #      new_var temp_86_29:i32 
                    #      temp_85_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(0_0), Some(3_0)] 
    sw      a0,1952(sp)
    li      a0, 0
    sw      a1,1948(sp)
    li      a1, 1
    sw      a2,1972(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_86_29 = load temp_85_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_87_29:i32 
                    #      temp_87_29 = Mul i32 temp_86_29, -123_0 
    li      a2, -123
    sd      a0,1936(sp)
    mul     a0,a1,a2
                    #      new_var temp_88_29:i32 
                    #      temp_88_29 = Add i32 temp_87_29, temp_84_29 
    sw      a1,1932(sp)
    add     a1,a0,a2
                    #      new_var temp_89_29:ptr->i32 
                    #      new_var temp_90_29:i32 
                    #      temp_89_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(0_0), Some(2_0)] 
    sw      a0,1928(sp)
    li      a0, 0
    sw      a1,1924(sp)
    li      a1, 1
    sw      a2,1948(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_90_29 = load temp_89_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_91_29:i32 
                    #      temp_91_29 = Mul i32 41_0, temp_90_29 
    li      a2, 41
    sd      a0,1912(sp)
    mul     a0,a2,a1
                    #      new_var temp_92_29:i32 
                    #      temp_92_29 = Add i32 temp_91_29, temp_88_29 
    sw      a1,1908(sp)
    add     a1,a0,a2
                    #      new_var temp_93_29:ptr->i32 
                    #      new_var temp_94_29:i32 
                    #      temp_93_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(0_0), Some(1_0)] 
    sw      a0,1904(sp)
    li      a0, 0
    sw      a1,1900(sp)
    li      a1, 1
    sw      a2,1924(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_94_29 = load temp_93_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_95_29:i32 
                    #      temp_95_29 = Mul i32 42_0, temp_94_29 
    li      a2, 42
    sd      a0,1888(sp)
    mul     a0,a2,a1
                    #      new_var temp_96_29:i32 
                    #      temp_96_29 = Add i32 temp_95_29, temp_92_29 
    sw      a1,1884(sp)
    add     a1,a0,a2
                    #      new_var temp_97_29:ptr->i32 
                    #      new_var temp_98_29:i32 
                    #      temp_97_29 = getelementptr a_26:ptr->Array:i32:[Some(5_0)] [Some(0_0), Some(0_0)] 
    sw      a0,1880(sp)
    li      a0, 0
    sw      a1,1876(sp)
    li      a1, 1
    sw      a2,1900(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_98_29 = load temp_97_29:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_99_29:i32 
                    #      temp_99_29 = Mul i32 temp_98_29, 67_0 
    li      a2, 67
    sd      a0,1864(sp)
    mul     a0,a1,a2
                    #      new_var temp_100_29:i32 
                    #      temp_100_29 = Add i32 temp_99_29, temp_96_29 
    sw      a1,1860(sp)
    add     a1,a0,a2
                    #      new_var temp_101_29:i32 
                    #      temp_101_29 =  Call i32 relu_reg_0(temp_100_29) 
                    #saved register dumping to mem
    li      s1, 2420
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 2344
    add     s2,sp,s2
    sd      s2,0(s2)
    li      s3, 2416
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 2408
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s5, 2340
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s6, 2404
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 2332
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 2400
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 2392
    add     s9,sp,s9
    sd      s9,0(s9)
    li      s10, 2388
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 2336
    add     s11,sp,s11
    sw      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1856(sp)
    mv      a0, a1
                    #arg load ended
    call    relu_reg
    sw      a0,1848(sp)
                    #      new_var temp_102_29:i32 
                    #      temp_102_29 = Mul i32 temp_101_29, 46_0 
    li      s1, 46
    mul     s2,a0,s1
                    #      new_var temp_103_29:i32 
                    #      temp_103_29 = Mul i32 -70_0, temp_90_29 
    li      s1, -70
    mul     s4,s1,s3
                    #      new_var temp_104_29:i32 
                    #      temp_104_29 = Mul i32 -15_0, temp_78_29 
    li      s1, -15
    mul     s6,s1,s5
                    #      new_var temp_105_29:i32 
                    #      temp_105_29 = Mul i32 -62_0, temp_62_29 
    li      s1, -62
    mul     s8,s1,s7
                    #      new_var temp_106_29:i32 
                    #      temp_106_29 = Mul i32 temp_6_29, -114_0 
    li      s9, -114
    mul     s10,s1,s9
                    #      new_var temp_107_29:i32 
                    #      temp_107_29 = Mul i32 temp_9_29, -13_0 
    li      s11, -13
    sw      a0,1848(sp)
    mul     a0,s9,s11
                    #      new_var temp_108_29:i32 
                    #      temp_108_29 = Add i32 temp_107_29, temp_106_29 
    add     s11,a0,s10
                    #      new_var temp_109_29:i32 
                    #      temp_109_29 = Mul i32 temp_13_29, -103_0 
    sw      a0,1824(sp)
    li      a0, -103
    sw      a1,1852(sp)
    mul     a1,a4,a0
                    #      new_var temp_110_29:i32 
                    #      temp_110_29 = Add i32 temp_109_29, temp_108_29 
    add     a0,a1,s11
                    #      new_var temp_111_29:i32 
                    #      temp_111_29 = Mul i32 temp_17_29, 37_0 
    sw      a0,1812(sp)
    sw      a1,1816(sp)
    li      a1, 37
    sw      a2,1876(sp)
    mul     a2,a0,a1
                    #      new_var temp_112_29:i32 
                    #      temp_112_29 = Add i32 temp_111_29, temp_110_29 
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_113_29:i32 
                    #      temp_113_29 = Mul i32 53_0, temp_21_29 
    sw      a0,1804(sp)
    li      a0, 53
    sw      a1,1812(sp)
    sw      a2,1808(sp)
    mul     a2,a0,a1
                    #      new_var temp_114_29:i32 
                    #      temp_114_29 = Add i32 temp_113_29, temp_112_29 
    li      a1, 2316
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_115_29:i32 
                    #      temp_115_29 = Mul i32 temp_25_29, -77_0 
    sw      a0,1804(sp)
    sw      a1,1796(sp)
    li      a1, -77
    sw      a2,1800(sp)
    mul     a2,a0,a1
                    #      new_var temp_116_29:i32 
                    #      temp_116_29 = Add i32 temp_115_29, temp_114_29 
    li      a0, 2292
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_117_29:i32 
                    #      temp_117_29 = Mul i32 temp_29_29, 71_0 
    sw      a0,1788(sp)
    sw      a1,1796(sp)
    li      a1, 71
    sw      a2,1792(sp)
    mul     a2,a0,a1
                    #      new_var temp_118_29:i32 
                    #      temp_118_29 = Add i32 temp_117_29, temp_116_29 
    li      a0, 2268
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_119_29:i32 
                    #      temp_119_29 = Mul i32 temp_33_29, -75_0 
    sw      a0,1780(sp)
    sw      a1,1788(sp)
    li      a1, -75
    sw      a2,1784(sp)
    mul     a2,a0,a1
                    #      new_var temp_120_29:i32 
                    #      temp_120_29 = Add i32 temp_119_29, temp_118_29 
    li      a0, 2244
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_121_29:i32 
                    #      temp_121_29 = Mul i32 -87_0, temp_37_29 
    sw      a0,1772(sp)
    li      a0, -87
    sw      a1,1780(sp)
    sw      a2,1776(sp)
    mul     a2,a0,a1
                    #      new_var temp_122_29:i32 
                    #      temp_122_29 = Add i32 temp_121_29, temp_120_29 
    li      a1, 2220
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_123_29:i32 
                    #      temp_123_29 = Mul i32 temp_41_29, -34_0 
    sw      a0,1772(sp)
    sw      a1,1764(sp)
    li      a1, -34
    sw      a2,1768(sp)
    mul     a2,a0,a1
                    #      new_var temp_124_29:i32 
                    #      temp_124_29 = Add i32 temp_123_29, temp_122_29 
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_125_29:i32 
                    #      temp_125_29 = Mul i32 -73_0, temp_45_29 
    sw      a0,1756(sp)
    li      a0, -73
    sw      a1,1764(sp)
    sw      a2,1760(sp)
    mul     a2,a0,a1
                    #      new_var temp_126_29:i32 
                    #      temp_126_29 = Add i32 temp_125_29, temp_124_29 
    li      a1, 2172
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_127_29:i32 
                    #      temp_127_29 = Mul i32 temp_49_29, 37_0 
    sw      a0,1756(sp)
    sw      a1,1748(sp)
    li      a1, 37
    sw      a2,1752(sp)
    mul     a2,a0,a1
                    #      new_var temp_128_29:i32 
                    #      temp_128_29 = Add i32 temp_127_29, temp_126_29 
    li      a0, 2148
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_129_29:i32 
                    #      temp_129_29 = Mul i32 temp_3_29, -70_0 
    sw      a0,1740(sp)
    sw      a1,1748(sp)
    li      a1, -70
    sw      a2,1744(sp)
    mul     a2,a0,a1
                    #      new_var temp_130_29:i32 
                    #      temp_130_29 = Add i32 temp_129_29, temp_128_29 
    li      a0, 2420
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_131_29:i32 
                    #      temp_131_29 = Mul i32 -46_0, temp_54_29 
    sw      a0,1732(sp)
    li      a0, -46
    sw      a1,1740(sp)
    sw      a2,1736(sp)
    mul     a2,a0,a1
                    #      new_var temp_132_29:i32 
                    #      temp_132_29 = Add i32 temp_131_29, temp_130_29 
    li      a1, 2124
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_133_29:i32 
                    #      temp_133_29 = Mul i32 temp_58_29, -125_0 
    sw      a0,1732(sp)
    sw      a1,1724(sp)
    li      a1, -125
    sw      a2,1728(sp)
    mul     a2,a0,a1
                    #      new_var temp_134_29:i32 
                    #      temp_134_29 = Add i32 temp_133_29, temp_132_29 
    li      a0, 2100
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_135_29:i32 
                    #      temp_135_29 = Add i32 temp_134_29, temp_105_29 
    sw      a1,1724(sp)
    add     a1,a0,s8
                    #      new_var temp_136_29:i32 
                    #      temp_136_29 = Mul i32 36_0, temp_66_29 
    sw      a0,1716(sp)
    li      a0, 36
    sw      a1,1712(sp)
    sw      a2,1720(sp)
    mul     a2,a0,a1
                    #      new_var temp_137_29:i32 
                    #      temp_137_29 = Add i32 temp_136_29, temp_135_29 
    li      a1, 2052
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_138_29:i32 
                    #      temp_138_29 = Mul i32 37_0, temp_70_29 
    sw      a0,1712(sp)
    li      a0, 37
    sw      a1,1704(sp)
    sw      a2,1708(sp)
    mul     a2,a0,a1
                    #      new_var temp_139_29:i32 
                    #      temp_139_29 = Add i32 temp_138_29, temp_137_29 
    li      a1, 2028
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_140_29:i32 
                    #      temp_140_29 = Mul i32 temp_74_29, -32_0 
    sw      a0,1704(sp)
    sw      a1,1696(sp)
    li      a1, -32
    sw      a2,1700(sp)
    mul     a2,a0,a1
                    #      new_var temp_141_29:i32 
                    #      temp_141_29 = Add i32 temp_140_29, temp_139_29 
    li      a0, 2004
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_142_29:i32 
                    #      temp_142_29 = Add i32 temp_141_29, temp_104_29 
    sw      a1,1696(sp)
    add     a1,a0,s6
                    #      new_var temp_143_29:i32 
                    #      temp_143_29 = Mul i32 temp_82_29, -90_0 
    sw      a0,1688(sp)
    sw      a1,1684(sp)
    li      a1, -90
    sw      a2,1692(sp)
    mul     a2,a0,a1
                    #      new_var temp_144_29:i32 
                    #      temp_144_29 = Add i32 temp_143_29, temp_142_29 
    sw      a0,1956(sp)
    add     a0,a2,a1
                    #      new_var temp_145_29:i32 
                    #      temp_145_29 = Mul i32 temp_86_29, 38_0 
    sw      a0,1676(sp)
    sw      a1,1684(sp)
    li      a1, 38
    sw      a2,1680(sp)
    mul     a2,a0,a1
                    #      new_var temp_146_29:i32 
                    #      temp_146_29 = Add i32 temp_145_29, temp_144_29 
    sw      a0,1932(sp)
    add     a0,a2,a1
                    #      new_var temp_147_29:i32 
                    #      temp_147_29 = Add i32 temp_146_29, temp_103_29 
    sw      a1,1676(sp)
    add     a1,a0,s4
                    #      new_var temp_148_29:i32 
                    #      temp_148_29 = Mul i32 temp_94_29, 7_0 
    sw      a0,1668(sp)
    sw      a1,1664(sp)
    li      a1, 7
    sw      a2,1672(sp)
    mul     a2,a0,a1
                    #      new_var temp_149_29:i32 
                    #      temp_149_29 = Add i32 temp_148_29, temp_147_29 
    sw      a0,1884(sp)
    add     a0,a2,a1
                    #      new_var temp_150_29:i32 
                    #      temp_150_29 = Mul i32 -29_0, temp_98_29 
    sw      a0,1656(sp)
    li      a0, -29
    sw      a1,1664(sp)
    sw      a2,1660(sp)
    mul     a2,a0,a1
                    #      new_var temp_151_29:i32 
                    #      temp_151_29 = Add i32 temp_150_29, temp_149_29 
    sw      a1,1860(sp)
    add     a1,a2,a0
                    #      new_var temp_152_29:i32 
                    #      temp_152_29 =  Call i32 relu_reg_0(temp_151_29) 
                    #saved register dumping to mem
    li      s1, 2404
    add     s1,sp,s1
    sw      s1,0(s1)
    sw      s2,1844(sp)
    sw      s3,1908(sp)
    sw      s4,1840(sp)
    sw      s5,1980(sp)
    sw      s6,1836(sp)
    li      s2, 2076
    add     s2,sp,s2
    sw      s7,0(s2)
    sw      s8,1832(sp)
    li      s3, 2388
    add     s3,sp,s3
    sw      s9,0(s3)
    sw      s10,1828(sp)
    sw      s11,1820(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1656(sp)
    mv      a0, a1
                    #arg load ended
    call    relu_reg
    sw      a0,1644(sp)
                    #      new_var temp_153_29:i32 
                    #      temp_153_29 = Mul i32 temp_152_29, -23_0 
    li      s4, -23
    mul     s5,a0,s4
                    #      new_var temp_154_29:i32 
                    #      temp_154_29 = Add i32 temp_153_29, temp_102_29 
    add     s7,s5,s6
                    #      new_var temp_155_29:i32 
                    #      temp_155_29 = Mul i32 82_0, temp_94_29 
    li      s8, 82
    mul     s10,s8,s9
                    #      new_var temp_156_29:i32 
                    #      temp_156_29 = Mul i32 temp_21_29, 65_0 
    li      s1, 65
    mul     s2,s11,s1
                    #      new_var temp_157_29:i32 
                    #      temp_157_29 = Mul i32 -84_0, temp_6_29 
    li      s1, -84
    mul     s4,s1,s3
                    #      new_var temp_158_29:i32 
                    #      temp_158_29 = Mul i32 temp_9_29, 46_0 
    li      s8, 46
    sw      a0,1644(sp)
    mul     a0,s1,s8
                    #      new_var temp_159_29:i32 
                    #      temp_159_29 = Add i32 temp_158_29, temp_157_29 
    add     s8,a0,s4
                    #      new_var temp_160_29:i32 
                    #      temp_160_29 = Mul i32 temp_13_29, 83_0 
    sw      a0,1620(sp)
    li      a0, 83
    sw      a1,1648(sp)
    mul     a1,a4,a0
                    #      new_var temp_161_29:i32 
                    #      temp_161_29 = Add i32 temp_160_29, temp_159_29 
    add     a0,a1,s8
                    #      new_var temp_162_29:i32 
                    #      temp_162_29 = Mul i32 97_0, temp_17_29 
    sw      a0,1608(sp)
    li      a0, 97
    sw      a1,1612(sp)
    sw      a2,1652(sp)
    mul     a2,a0,a1
                    #      new_var temp_163_29:i32 
                    #      temp_163_29 = Add i32 temp_162_29, temp_161_29 
    li      a1, 2340
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_164_29:i32 
                    #      temp_164_29 = Add i32 temp_163_29, temp_156_29 
    sw      a0,1608(sp)
    add     a0,a1,s2
                    #      new_var temp_165_29:i32 
                    #      temp_165_29 = Mul i32 temp_25_29, -121_0 
    sw      a0,1596(sp)
    sw      a1,1600(sp)
    li      a1, -121
    sw      a2,1604(sp)
    mul     a2,a0,a1
                    #      new_var temp_166_29:i32 
                    #      temp_166_29 = Add i32 temp_165_29, temp_164_29 
    li      a0, 2292
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_167_29:i32 
                    #      temp_167_29 = Mul i32 temp_29_29, -104_0 
    sw      a0,1588(sp)
    sw      a1,1596(sp)
    li      a1, -104
    sw      a2,1592(sp)
    mul     a2,a0,a1
                    #      new_var temp_168_29:i32 
                    #      temp_168_29 = Add i32 temp_167_29, temp_166_29 
    li      a0, 2268
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_169_29:i32 
                    #      temp_169_29 = Mul i32 temp_33_29, -96_0 
    sw      a0,1580(sp)
    sw      a1,1588(sp)
    li      a1, -96
    sw      a2,1584(sp)
    mul     a2,a0,a1
                    #      new_var temp_170_29:i32 
                    #      temp_170_29 = Add i32 temp_169_29, temp_168_29 
    li      a0, 2244
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_171_29:i32 
                    #      temp_171_29 = Mul i32 temp_37_29, 82_0 
    sw      a0,1572(sp)
    sw      a1,1580(sp)
    li      a1, 82
    sw      a2,1576(sp)
    mul     a2,a0,a1
                    #      new_var temp_172_29:i32 
                    #      temp_172_29 = Add i32 temp_171_29, temp_170_29 
    li      a0, 2220
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_173_29:i32 
                    #      temp_173_29 = Mul i32 24_0, temp_41_29 
    sw      a0,1564(sp)
    li      a0, 24
    sw      a1,1572(sp)
    sw      a2,1568(sp)
    mul     a2,a0,a1
                    #      new_var temp_174_29:i32 
                    #      temp_174_29 = Add i32 temp_173_29, temp_172_29 
    li      a1, 2196
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_175_29:i32 
                    #      temp_175_29 = Mul i32 107_0, temp_45_29 
    sw      a0,1564(sp)
    li      a0, 107
    sw      a1,1556(sp)
    sw      a2,1560(sp)
    mul     a2,a0,a1
                    #      new_var temp_176_29:i32 
                    #      temp_176_29 = Add i32 temp_175_29, temp_174_29 
    li      a1, 2172
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_177_29:i32 
                    #      temp_177_29 = Mul i32 71_0, temp_49_29 
    sw      a0,1556(sp)
    li      a0, 71
    sw      a1,1548(sp)
    sw      a2,1552(sp)
    mul     a2,a0,a1
                    #      new_var temp_178_29:i32 
                    #      temp_178_29 = Add i32 temp_177_29, temp_176_29 
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_179_29:i32 
                    #      temp_179_29 = Add i32 temp_4_29, temp_178_29 
    sw      a0,1548(sp)
    sw      a2,1544(sp)
    add     a2,a0,a1
                    #      new_var temp_180_29:i32 
                    #      temp_180_29 = Mul i32 -119_0, temp_54_29 
    li      a0, 2416
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, -119
    sw      a1,1540(sp)
    sw      a2,1536(sp)
    mul     a2,a0,a1
                    #      new_var temp_181_29:i32 
                    #      temp_181_29 = Add i32 temp_180_29, temp_179_29 
    li      a1, 2124
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_182_29:i32 
                    #      temp_182_29 = Mul i32 104_0, temp_58_29 
    sw      a0,1536(sp)
    li      a0, 104
    sw      a1,1528(sp)
    sw      a2,1532(sp)
    mul     a2,a0,a1
                    #      new_var temp_183_29:i32 
                    #      temp_183_29 = Add i32 temp_182_29, temp_181_29 
    li      a1, 2100
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_184_29:i32 
                    #      temp_184_29 = Mul i32 temp_62_29, 5_0 
    sw      a0,1528(sp)
    sw      a1,1520(sp)
    li      a1, 5
    sw      a2,1524(sp)
    mul     a2,a0,a1
                    #      new_var temp_185_29:i32 
                    #      temp_185_29 = Add i32 temp_184_29, temp_183_29 
    li      a0, 2076
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_186_29:i32 
                    #      temp_186_29 = Mul i32 18_0, temp_66_29 
    sw      a0,1512(sp)
    li      a0, 18
    sw      a1,1520(sp)
    sw      a2,1516(sp)
    mul     a2,a0,a1
                    #      new_var temp_187_29:i32 
                    #      temp_187_29 = Add i32 temp_186_29, temp_185_29 
    li      a1, 2052
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_188_29:i32 
                    #      temp_188_29 = Mul i32 temp_70_29, -13_0 
    sw      a0,1512(sp)
    sw      a1,1504(sp)
    li      a1, -13
    sw      a2,1508(sp)
    mul     a2,a0,a1
                    #      new_var temp_189_29:i32 
                    #      temp_189_29 = Add i32 temp_188_29, temp_187_29 
    li      a0, 2028
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_190_29:i32 
                    #      temp_190_29 = Mul i32 temp_74_29, 120_0 
    sw      a0,1496(sp)
    sw      a1,1504(sp)
    li      a1, 120
    sw      a2,1500(sp)
    mul     a2,a0,a1
                    #      new_var temp_191_29:i32 
                    #      temp_191_29 = Add i32 temp_190_29, temp_189_29 
    li      a0, 2004
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_192_29:i32 
                    #      temp_192_29 = Mul i32 temp_78_29, 65_0 
    sw      a0,1488(sp)
    sw      a1,1496(sp)
    li      a1, 65
    sw      a2,1492(sp)
    mul     a2,a0,a1
                    #      new_var temp_193_29:i32 
                    #      temp_193_29 = Add i32 temp_192_29, temp_191_29 
    sw      a0,1980(sp)
    add     a0,a2,a1
                    #      new_var temp_194_29:i32 
                    #      temp_194_29 = Mul i32 -2_0, temp_82_29 
    sw      a0,1480(sp)
    li      a0, -2
    sw      a1,1488(sp)
    sw      a2,1484(sp)
    mul     a2,a0,a1
                    #      new_var temp_195_29:i32 
                    #      temp_195_29 = Add i32 temp_194_29, temp_193_29 
    sw      a1,1956(sp)
    add     a1,a2,a0
                    #      new_var temp_196_29:i32 
                    #      temp_196_29 = Mul i32 30_0, temp_86_29 
    sw      a0,1480(sp)
    li      a0, 30
    sw      a1,1472(sp)
    sw      a2,1476(sp)
    mul     a2,a0,a1
                    #      new_var temp_197_29:i32 
                    #      temp_197_29 = Add i32 temp_196_29, temp_195_29 
    sw      a1,1932(sp)
    add     a1,a2,a0
                    #      new_var temp_198_29:i32 
                    #      temp_198_29 = Mul i32 temp_90_29, 67_0 
    sw      a0,1472(sp)
    sw      a1,1464(sp)
    li      a1, 67
    sw      a2,1468(sp)
    mul     a2,a0,a1
                    #      new_var temp_199_29:i32 
                    #      temp_199_29 = Add i32 temp_198_29, temp_197_29 
    sw      a0,1908(sp)
    add     a0,a2,a1
                    #      new_var temp_200_29:i32 
                    #      temp_200_29 = Add i32 temp_199_29, temp_155_29 
    sw      a1,1464(sp)
    add     a1,a0,s10
                    #      new_var temp_201_29:i32 
                    #      temp_201_29 = Mul i32 33_0, temp_98_29 
    sw      a0,1456(sp)
    li      a0, 33
    sw      a1,1452(sp)
    sw      a2,1460(sp)
    mul     a2,a0,a1
                    #      new_var temp_202_29:i32 
                    #      temp_202_29 = Add i32 temp_201_29, temp_200_29 
    sw      a1,1860(sp)
    add     a1,a2,a0
                    #      new_var temp_203_29:i32 
                    #      temp_203_29 =  Call i32 relu_reg_0(temp_202_29) 
                    #saved register dumping to mem
    li      s1, 2388
    add     s1,sp,s1
    sw      s1,0(s1)
    sw      s2,1628(sp)
    li      s2, 2404
    add     s2,sp,s2
    sw      s3,0(s2)
    sw      s4,1624(sp)
    sw      s5,1640(sp)
    sw      s6,1844(sp)
    sw      s7,1636(sp)
    sw      s8,1616(sp)
    sw      s9,1884(sp)
    sw      s10,1632(sp)
    li      s3, 2316
    add     s3,sp,s3
    sw      s11,0(s3)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1452(sp)
    mv      a0, a1
                    #arg load ended
    call    relu_reg
    sw      a0,1440(sp)
                    #      new_var temp_204_29:i32 
                    #      temp_204_29 = Mul i32 temp_203_29, -50_0 
    li      s4, -50
    mul     s5,a0,s4
                    #      new_var temp_205_29:i32 
                    #      temp_205_29 = Add i32 temp_204_29, temp_154_29 
    add     s7,s5,s6
                    #      new_var temp_206_29:i32 
                    #      temp_206_29 = Mul i32 temp_6_29, 66_0 
    li      s9, 66
    mul     s10,s8,s9
                    #      new_var temp_207_29:i32 
                    #      temp_207_29 = Mul i32 temp_9_29, -15_0 
    li      s1, -15
    mul     s2,s11,s1
                    #      new_var temp_208_29:i32 
                    #      temp_208_29 = Add i32 temp_207_29, temp_206_29 
    add     s1,s2,s10
                    #      new_var temp_209_29:i32 
                    #      temp_209_29 = Mul i32 temp_13_29, -13_0 
    li      s3, -13
    mul     s4,a4,s3
                    #      new_var temp_210_29:i32 
                    #      temp_210_29 = Add i32 temp_209_29, temp_208_29 
    add     s3,s4,s1
                    #      new_var temp_211_29:i32 
                    #      temp_211_29 = Mul i32 48_0, temp_17_29 
    li      s9, 48
    sw      a0,1440(sp)
    sw      a1,1444(sp)
    mul     a1,s9,a0
                    #      new_var temp_212_29:i32 
                    #      temp_212_29 = Add i32 temp_211_29, temp_210_29 
    add     s9,a1,s3
                    #      new_var temp_213_29:i32 
                    #      temp_213_29 = Mul i32 -79_0, temp_21_29 
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, -79
    sw      a1,1408(sp)
    sw      a2,1448(sp)
    mul     a2,a0,a1
                    #      new_var temp_214_29:i32 
                    #      temp_214_29 = Add i32 temp_213_29, temp_212_29 
    add     a0,a2,s9
                    #      new_var temp_215_29:i32 
                    #      temp_215_29 = Mul i32 86_0, temp_25_29 
    sw      a0,1396(sp)
    li      a0, 86
    li      a1, 2316
    add     a1,sp,a1
    sw      a1,0(a1)
    sw      a2,1400(sp)
    mul     a2,a0,a1
                    #      new_var temp_216_29:i32 
                    #      temp_216_29 = Add i32 temp_215_29, temp_214_29 
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_217_29:i32 
                    #      temp_217_29 = Mul i32 temp_29_29, 67_0 
    sw      a0,1396(sp)
    sw      a1,1388(sp)
    li      a1, 67
    sw      a2,1392(sp)
    mul     a2,a0,a1
                    #      new_var temp_218_29:i32 
                    #      temp_218_29 = Add i32 temp_217_29, temp_216_29 
    li      a0, 2268
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_219_29:i32 
                    #      temp_219_29 = Mul i32 58_0, temp_33_29 
    sw      a0,1380(sp)
    li      a0, 58
    sw      a1,1388(sp)
    sw      a2,1384(sp)
    mul     a2,a0,a1
                    #      new_var temp_220_29:i32 
                    #      temp_220_29 = Add i32 temp_219_29, temp_218_29 
    li      a1, 2244
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_221_29:i32 
                    #      temp_221_29 = Mul i32 14_0, temp_37_29 
    sw      a0,1380(sp)
    li      a0, 14
    sw      a1,1372(sp)
    sw      a2,1376(sp)
    mul     a2,a0,a1
                    #      new_var temp_222_29:i32 
                    #      temp_222_29 = Add i32 temp_221_29, temp_220_29 
    li      a1, 2220
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_223_29:i32 
                    #      temp_223_29 = Mul i32 -33_0, temp_41_29 
    sw      a0,1372(sp)
    li      a0, -33
    sw      a1,1364(sp)
    sw      a2,1368(sp)
    mul     a2,a0,a1
                    #      new_var temp_224_29:i32 
                    #      temp_224_29 = Add i32 temp_223_29, temp_222_29 
    li      a1, 2196
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_225_29:i32 
                    #      temp_225_29 = Mul i32 temp_45_29, 55_0 
    sw      a0,1364(sp)
    sw      a1,1356(sp)
    li      a1, 55
    sw      a2,1360(sp)
    mul     a2,a0,a1
                    #      new_var temp_226_29:i32 
                    #      temp_226_29 = Add i32 temp_225_29, temp_224_29 
    li      a0, 2172
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_227_29:i32 
                    #      temp_227_29 = Mul i32 temp_49_29, 15_0 
    sw      a0,1348(sp)
    sw      a1,1356(sp)
    li      a1, 15
    sw      a2,1352(sp)
    mul     a2,a0,a1
                    #      new_var temp_228_29:i32 
                    #      temp_228_29 = Add i32 temp_227_29, temp_226_29 
    li      a0, 2148
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_229_29:i32 
                    #      temp_229_29 = Mul i32 temp_3_29, 52_0 
    sw      a0,1340(sp)
    sw      a1,1348(sp)
    li      a1, 52
    sw      a2,1344(sp)
    mul     a2,a0,a1
                    #      new_var temp_230_29:i32 
                    #      temp_230_29 = Add i32 temp_229_29, temp_228_29 
    li      a0, 2420
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_231_29:i32 
                    #      temp_231_29 = Mul i32 temp_54_29, 59_0 
    sw      a0,1332(sp)
    sw      a1,1340(sp)
    li      a1, 59
    sw      a2,1336(sp)
    mul     a2,a0,a1
                    #      new_var temp_232_29:i32 
                    #      temp_232_29 = Add i32 temp_231_29, temp_230_29 
    li      a0, 2124
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_233_29:i32 
                    #      temp_233_29 = Mul i32 temp_58_29, -95_0 
    sw      a0,1324(sp)
    sw      a1,1332(sp)
    li      a1, -95
    sw      a2,1328(sp)
    mul     a2,a0,a1
                    #      new_var temp_234_29:i32 
                    #      temp_234_29 = Add i32 temp_233_29, temp_232_29 
    li      a0, 2100
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_235_29:i32 
                    #      temp_235_29 = Mul i32 temp_62_29, -110_0 
    sw      a0,1316(sp)
    sw      a1,1324(sp)
    li      a1, -110
    sw      a2,1320(sp)
    mul     a2,a0,a1
                    #      new_var temp_236_29:i32 
                    #      temp_236_29 = Add i32 temp_235_29, temp_234_29 
    li      a0, 2076
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_237_29:i32 
                    #      temp_237_29 = Mul i32 2_0, temp_66_29 
    sw      a0,1308(sp)
    li      a0, 2
    sw      a1,1316(sp)
    sw      a2,1312(sp)
    mul     a2,a0,a1
                    #      new_var temp_238_29:i32 
                    #      temp_238_29 = Add i32 temp_237_29, temp_236_29 
    li      a1, 2052
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_239_29:i32 
                    #      temp_239_29 = Mul i32 temp_70_29, 81_0 
    sw      a0,1308(sp)
    sw      a1,1300(sp)
    li      a1, 81
    sw      a2,1304(sp)
    mul     a2,a0,a1
                    #      new_var temp_240_29:i32 
                    #      temp_240_29 = Add i32 temp_239_29, temp_238_29 
    li      a0, 2028
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_241_29:i32 
                    #      temp_241_29 = Mul i32 temp_74_29, -8_0 
    sw      a0,1292(sp)
    sw      a1,1300(sp)
    li      a1, -8
    sw      a2,1296(sp)
    mul     a2,a0,a1
                    #      new_var temp_242_29:i32 
                    #      temp_242_29 = Add i32 temp_241_29, temp_240_29 
    li      a0, 2004
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_243_29:i32 
                    #      temp_243_29 = Mul i32 temp_78_29, -30_0 
    sw      a0,1284(sp)
    sw      a1,1292(sp)
    li      a1, -30
    sw      a2,1288(sp)
    mul     a2,a0,a1
                    #      new_var temp_244_29:i32 
                    #      temp_244_29 = Add i32 temp_243_29, temp_242_29 
    sw      a0,1980(sp)
    add     a0,a2,a1
                    #      new_var temp_245_29:i32 
                    #      temp_245_29 = Mul i32 temp_82_29, -6_0 
    sw      a0,1276(sp)
    sw      a1,1284(sp)
    li      a1, -6
    sw      a2,1280(sp)
    mul     a2,a0,a1
                    #      new_var temp_246_29:i32 
                    #      temp_246_29 = Add i32 temp_245_29, temp_244_29 
    sw      a0,1956(sp)
    add     a0,a2,a1
                    #      new_var temp_247_29:i32 
                    #      temp_247_29 = Mul i32 -90_0, temp_86_29 
    sw      a0,1268(sp)
    li      a0, -90
    sw      a1,1276(sp)
    sw      a2,1272(sp)
    mul     a2,a0,a1
                    #      new_var temp_248_29:i32 
                    #      temp_248_29 = Add i32 temp_247_29, temp_246_29 
    sw      a1,1932(sp)
    add     a1,a2,a0
                    #      new_var temp_249_29:i32 
                    #      temp_249_29 = Mul i32 temp_90_29, 66_0 
    sw      a0,1268(sp)
    sw      a1,1260(sp)
    li      a1, 66
    sw      a2,1264(sp)
    mul     a2,a0,a1
                    #      new_var temp_250_29:i32 
                    #      temp_250_29 = Add i32 temp_249_29, temp_248_29 
    sw      a0,1908(sp)
    add     a0,a2,a1
                    #      new_var temp_251_29:i32 
                    #      temp_251_29 = Mul i32 -77_0, temp_94_29 
    sw      a0,1252(sp)
    li      a0, -77
    sw      a1,1260(sp)
    sw      a2,1256(sp)
    mul     a2,a0,a1
                    #      new_var temp_252_29:i32 
                    #      temp_252_29 = Add i32 temp_251_29, temp_250_29 
    sw      a1,1884(sp)
    add     a1,a2,a0
                    #      new_var temp_253_29:i32 
                    #      temp_253_29 = Mul i32 temp_98_29, 15_0 
    sw      a0,1252(sp)
    sw      a1,1244(sp)
    li      a1, 15
    sw      a2,1248(sp)
    mul     a2,a0,a1
                    #      new_var temp_254_29:i32 
                    #      temp_254_29 = Add i32 temp_253_29, temp_252_29 
    sw      a0,1860(sp)
    add     a0,a2,a1
                    #      new_var temp_255_29:i32 
                    #      temp_255_29 =  Call i32 relu_reg_0(temp_254_29) 
                    #saved register dumping to mem
    sw      s1,1420(sp)
    sw      s2,1424(sp)
    sw      s3,1412(sp)
    sw      s4,1416(sp)
    sw      s5,1436(sp)
    sw      s6,1636(sp)
    sw      s7,1432(sp)
    li      s1, 2404
    add     s1,sp,s1
    sw      s8,0(s1)
    sw      s9,1404(sp)
    sw      s10,1428(sp)
    li      s2, 2388
    add     s2,sp,s2
    sw      s11,0(s2)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1236(sp)
    lw      a0,1236(sp)
                    #arg load ended
    call    relu_reg
    sw      a0,1232(sp)
                    #      new_var temp_256_29:i32 
                    #      temp_256_29 = Mul i32 temp_255_29, -95_0 
    li      s3, -95
    mul     s4,a0,s3
                    #      new_var temp_257_29:i32 
                    #      temp_257_29 = Add i32 temp_256_29, temp_205_29 
    add     s6,s4,s5
                    #      new_var temp_258_29:i32 
                    #      temp_258_29 = Mul i32 -72_0, temp_6_29 
    li      s7, -72
    mul     s9,s7,s8
                    #      new_var temp_259_29:i32 
                    #      temp_259_29 = Mul i32 temp_9_29, 82_0 
    li      s11, 82
    mul     s1,s10,s11
                    #      new_var temp_260_29:i32 
                    #      temp_260_29 = Add i32 temp_259_29, temp_258_29 
    add     s2,s1,s9
                    #      new_var temp_261_29:i32 
                    #      temp_261_29 = Mul i32 -54_0, temp_13_29 
    li      s3, -54
    mul     s7,s3,a4
                    #      new_var temp_262_29:i32 
                    #      temp_262_29 = Add i32 temp_261_29, temp_260_29 
    add     s3,s7,s2
                    #      new_var temp_263_29:i32 
                    #      temp_263_29 = Mul i32 temp_17_29, -116_0 
    sw      a0,1232(sp)
    li      a0, -116
    sw      a1,1244(sp)
    mul     a1,s11,a0
                    #      new_var temp_264_29:i32 
                    #      temp_264_29 = Add i32 temp_263_29, temp_262_29 
    add     a0,a1,s3
                    #      new_var temp_265_29:i32 
                    #      temp_265_29 = Mul i32 -112_0, temp_21_29 
    sw      a0,1196(sp)
    li      a0, -112
    sw      a1,1200(sp)
    sw      a2,1240(sp)
    mul     a2,a0,a1
                    #      new_var temp_266_29:i32 
                    #      temp_266_29 = Add i32 temp_265_29, temp_264_29 
    li      a1, 2316
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_267_29:i32 
                    #      temp_267_29 = Mul i32 -50_0, temp_25_29 
    sw      a0,1196(sp)
    li      a0, -50
    sw      a1,1188(sp)
    sw      a2,1192(sp)
    mul     a2,a0,a1
                    #      new_var temp_268_29:i32 
                    #      temp_268_29 = Add i32 temp_267_29, temp_266_29 
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_269_29:i32 
                    #      temp_269_29 = Mul i32 temp_29_29, -16_0 
    sw      a0,1188(sp)
    sw      a1,1180(sp)
    li      a1, -16
    sw      a2,1184(sp)
    mul     a2,a0,a1
                    #      new_var temp_270_29:i32 
                    #      temp_270_29 = Add i32 temp_269_29, temp_268_29 
    li      a0, 2268
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_271_29:i32 
                    #      temp_271_29 = Mul i32 -10_0, temp_33_29 
    sw      a0,1172(sp)
    li      a0, -10
    sw      a1,1180(sp)
    sw      a2,1176(sp)
    mul     a2,a0,a1
                    #      new_var temp_272_29:i32 
                    #      temp_272_29 = Add i32 temp_271_29, temp_270_29 
    li      a1, 2244
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_273_29:i32 
                    #      temp_273_29 = Mul i32 temp_37_29, 112_0 
    sw      a0,1172(sp)
    sw      a1,1164(sp)
    li      a1, 112
    sw      a2,1168(sp)
    mul     a2,a0,a1
                    #      new_var temp_274_29:i32 
                    #      temp_274_29 = Add i32 temp_273_29, temp_272_29 
    li      a0, 2220
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_275_29:i32 
                    #      temp_275_29 = Mul i32 temp_41_29, 114_0 
    sw      a0,1156(sp)
    sw      a1,1164(sp)
    li      a1, 114
    sw      a2,1160(sp)
    mul     a2,a0,a1
                    #      new_var temp_276_29:i32 
                    #      temp_276_29 = Add i32 temp_275_29, temp_274_29 
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_277_29:i32 
                    #      temp_277_29 = Mul i32 112_0, temp_45_29 
    sw      a0,1148(sp)
    li      a0, 112
    sw      a1,1156(sp)
    sw      a2,1152(sp)
    mul     a2,a0,a1
                    #      new_var temp_278_29:i32 
                    #      temp_278_29 = Add i32 temp_277_29, temp_276_29 
    li      a1, 2172
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_279_29:i32 
                    #      temp_279_29 = Mul i32 temp_49_29, -21_0 
    sw      a0,1148(sp)
    sw      a1,1140(sp)
    li      a1, -21
    sw      a2,1144(sp)
    mul     a2,a0,a1
                    #      new_var temp_280_29:i32 
                    #      temp_280_29 = Add i32 temp_279_29, temp_278_29 
    li      a0, 2148
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_281_29:i32 
                    #      temp_281_29 = Mul i32 38_0, temp_3_29 
    sw      a0,1132(sp)
    li      a0, 38
    sw      a1,1140(sp)
    sw      a2,1136(sp)
    mul     a2,a0,a1
                    #      new_var temp_282_29:i32 
                    #      temp_282_29 = Add i32 temp_281_29, temp_280_29 
    li      a1, 2420
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_283_29:i32 
                    #      temp_283_29 = Mul i32 114_0, temp_54_29 
    sw      a0,1132(sp)
    li      a0, 114
    sw      a1,1124(sp)
    sw      a2,1128(sp)
    mul     a2,a0,a1
                    #      new_var temp_284_29:i32 
                    #      temp_284_29 = Add i32 temp_283_29, temp_282_29 
    li      a1, 2124
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_285_29:i32 
                    #      temp_285_29 = Mul i32 temp_58_29, 64_0 
    sw      a0,1124(sp)
    sw      a1,1116(sp)
    li      a1, 64
    sw      a2,1120(sp)
    mul     a2,a0,a1
                    #      new_var temp_286_29:i32 
                    #      temp_286_29 = Add i32 temp_285_29, temp_284_29 
    li      a0, 2100
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_287_29:i32 
                    #      temp_287_29 = Add i32 temp_105_29, temp_286_29 
    sw      a0,1108(sp)
    sw      a1,1116(sp)
    sw      a2,1112(sp)
    add     a2,a0,a1
                    #      new_var temp_288_29:i32 
                    #      temp_288_29 = Mul i32 -13_0, temp_66_29 
    sw      a0,1832(sp)
    li      a0, -13
    sw      a1,1108(sp)
    sw      a2,1104(sp)
    mul     a2,a0,a1
                    #      new_var temp_289_29:i32 
                    #      temp_289_29 = Add i32 temp_288_29, temp_287_29 
    li      a1, 2052
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_290_29:i32 
                    #      temp_290_29 = Mul i32 temp_70_29, 101_0 
    sw      a0,1104(sp)
    sw      a1,1096(sp)
    li      a1, 101
    sw      a2,1100(sp)
    mul     a2,a0,a1
                    #      new_var temp_291_29:i32 
                    #      temp_291_29 = Add i32 temp_290_29, temp_289_29 
    li      a0, 2028
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_292_29:i32 
                    #      temp_292_29 = Mul i32 55_0, temp_74_29 
    sw      a0,1088(sp)
    li      a0, 55
    sw      a1,1096(sp)
    sw      a2,1092(sp)
    mul     a2,a0,a1
                    #      new_var temp_293_29:i32 
                    #      temp_293_29 = Add i32 temp_292_29, temp_291_29 
    li      a1, 2004
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_294_29:i32 
                    #      temp_294_29 = Add i32 temp_104_29, temp_293_29 
    sw      a0,1088(sp)
    sw      a2,1084(sp)
    add     a2,a0,a1
                    #      new_var temp_295_29:i32 
                    #      temp_295_29 = Mul i32 121_0, temp_82_29 
    sw      a0,1836(sp)
    li      a0, 121
    sw      a1,1080(sp)
    sw      a2,1076(sp)
    mul     a2,a0,a1
                    #      new_var temp_296_29:i32 
                    #      temp_296_29 = Add i32 temp_295_29, temp_294_29 
    sw      a1,1956(sp)
    add     a1,a2,a0
                    #      new_var temp_297_29:i32 
                    #      temp_297_29 = Mul i32 -74_0, temp_86_29 
    sw      a0,1076(sp)
    li      a0, -74
    sw      a1,1068(sp)
    sw      a2,1072(sp)
    mul     a2,a0,a1
                    #      new_var temp_298_29:i32 
                    #      temp_298_29 = Add i32 temp_297_29, temp_296_29 
    sw      a1,1932(sp)
    add     a1,a2,a0
                    #      new_var temp_299_29:i32 
                    #      temp_299_29 = Mul i32 temp_90_29, -102_0 
    sw      a0,1068(sp)
    sw      a1,1060(sp)
    li      a1, -102
    sw      a2,1064(sp)
    mul     a2,a0,a1
                    #      new_var temp_300_29:i32 
                    #      temp_300_29 = Add i32 temp_299_29, temp_298_29 
    sw      a0,1908(sp)
    add     a0,a2,a1
                    #      new_var temp_301_29:i32 
                    #      temp_301_29 = Mul i32 68_0, temp_94_29 
    sw      a0,1052(sp)
    li      a0, 68
    sw      a1,1060(sp)
    sw      a2,1056(sp)
    mul     a2,a0,a1
                    #      new_var temp_302_29:i32 
                    #      temp_302_29 = Add i32 temp_301_29, temp_300_29 
    sw      a1,1884(sp)
    add     a1,a2,a0
                    #      new_var temp_303_29:i32 
                    #      temp_303_29 = Mul i32 81_0, temp_98_29 
    sw      a0,1052(sp)
    li      a0, 81
    sw      a1,1044(sp)
    sw      a2,1048(sp)
    mul     a2,a0,a1
                    #      new_var temp_304_29:i32 
                    #      temp_304_29 = Add i32 temp_303_29, temp_302_29 
    sw      a1,1860(sp)
    add     a1,a2,a0
                    #      new_var temp_305_29:i32 
                    #      temp_305_29 =  Call i32 relu_reg_0(temp_304_29) 
                    #saved register dumping to mem
    sw      s1,1216(sp)
    sw      s2,1212(sp)
    sw      s3,1204(sp)
    sw      s4,1228(sp)
    sw      s5,1432(sp)
    sw      s6,1224(sp)
    sw      s7,1208(sp)
    li      s1, 2404
    add     s1,sp,s1
    sw      s8,0(s1)
    sw      s9,1220(sp)
    li      s2, 2388
    add     s2,sp,s2
    sw      s10,0(s2)
    li      s3, 2340
    add     s3,sp,s3
    sw      s11,0(s3)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1044(sp)
    mv      a0, a1
                    #arg load ended
    call    relu_reg
    sw      a0,1032(sp)
                    #      new_var temp_306_29:i32 
                    #      temp_306_29 = Mul i32 temp_305_29, 32_0 
    li      s4, 32
    mul     s5,a0,s4
                    #      new_var temp_307_29:i32 
                    #      temp_307_29 = Add i32 temp_306_29, temp_257_29 
    add     s7,s5,s6
                    #      new_var temp_308_29:i32 
                    #      temp_308_29 = Mul i32 125_0, temp_66_29 
    li      s8, 125
    mul     s10,s8,s9
                    #      new_var temp_309_29:i32 
                    #      temp_309_29 = Mul i32 -124_0, temp_6_29 
    li      s11, -124
    mul     s2,s11,s1
                    #      new_var temp_310_29:i32 
                    #      temp_310_29 = Mul i32 temp_9_29, 49_0 
    li      s4, 49
    mul     s8,s3,s4
                    #      new_var temp_311_29:i32 
                    #      temp_311_29 = Add i32 temp_310_29, temp_309_29 
    add     s4,s8,s2
                    #      new_var temp_312_29:i32 
                    #      temp_312_29 = Mul i32 3_0, temp_13_29 
    li      s11, 3
    sw      a0,1032(sp)
    mul     a0,s11,a4
                    #      new_var temp_313_29:i32 
                    #      temp_313_29 = Add i32 temp_312_29, temp_311_29 
    add     s11,a0,s4
                    #      new_var temp_314_29:i32 
                    #      temp_314_29 = Mul i32 79_0, temp_17_29 
    sw      a0,1004(sp)
    li      a0, 79
    sw      a1,1036(sp)
    sw      a2,1040(sp)
    mul     a2,a0,a1
                    #      new_var temp_315_29:i32 
                    #      temp_315_29 = Add i32 temp_314_29, temp_313_29 
    add     a0,a2,s11
                    #      new_var temp_316_29:i32 
                    #      temp_316_29 = Mul i32 15_0, temp_21_29 
    sw      a0,992(sp)
    li      a0, 15
    li      a1, 2340
    add     a1,sp,a1
    sw      a1,0(a1)
    sw      a2,996(sp)
    mul     a2,a0,a1
                    #      new_var temp_317_29:i32 
                    #      temp_317_29 = Add i32 temp_316_29, temp_315_29 
    li      a1, 2316
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_318_29:i32 
                    #      temp_318_29 = Mul i32 -93_0, temp_25_29 
    sw      a0,992(sp)
    li      a0, -93
    sw      a1,984(sp)
    sw      a2,988(sp)
    mul     a2,a0,a1
                    #      new_var temp_319_29:i32 
                    #      temp_319_29 = Add i32 temp_318_29, temp_317_29 
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_320_29:i32 
                    #      temp_320_29 = Mul i32 temp_29_29, 116_0 
    sw      a0,984(sp)
    sw      a1,976(sp)
    li      a1, 116
    sw      a2,980(sp)
    mul     a2,a0,a1
                    #      new_var temp_321_29:i32 
                    #      temp_321_29 = Add i32 temp_320_29, temp_319_29 
    li      a0, 2268
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_322_29:i32 
                    #      temp_322_29 = Mul i32 temp_33_29, -95_0 
    sw      a0,968(sp)
    sw      a1,976(sp)
    li      a1, -95
    sw      a2,972(sp)
    mul     a2,a0,a1
                    #      new_var temp_323_29:i32 
                    #      temp_323_29 = Add i32 temp_322_29, temp_321_29 
    li      a0, 2244
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_324_29:i32 
                    #      temp_324_29 = Mul i32 5_0, temp_37_29 
    sw      a0,960(sp)
    li      a0, 5
    sw      a1,968(sp)
    sw      a2,964(sp)
    mul     a2,a0,a1
                    #      new_var temp_325_29:i32 
                    #      temp_325_29 = Add i32 temp_324_29, temp_323_29 
    li      a1, 2220
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_326_29:i32 
                    #      temp_326_29 = Mul i32 temp_41_29, 12_0 
    sw      a0,960(sp)
    sw      a1,952(sp)
    li      a1, 12
    sw      a2,956(sp)
    mul     a2,a0,a1
                    #      new_var temp_327_29:i32 
                    #      temp_327_29 = Add i32 temp_326_29, temp_325_29 
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_328_29:i32 
                    #      temp_328_29 = Mul i32 59_0, temp_45_29 
    sw      a0,944(sp)
    li      a0, 59
    sw      a1,952(sp)
    sw      a2,948(sp)
    mul     a2,a0,a1
                    #      new_var temp_329_29:i32 
                    #      temp_329_29 = Add i32 temp_328_29, temp_327_29 
    li      a1, 2172
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_330_29:i32 
                    #      temp_330_29 = Mul i32 -114_0, temp_49_29 
    sw      a0,944(sp)
    li      a0, -114
    sw      a1,936(sp)
    sw      a2,940(sp)
    mul     a2,a0,a1
                    #      new_var temp_331_29:i32 
                    #      temp_331_29 = Add i32 temp_330_29, temp_329_29 
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_332_29:i32 
                    #      temp_332_29 = Mul i32 -101_0, temp_3_29 
    sw      a0,936(sp)
    li      a0, -101
    sw      a1,928(sp)
    sw      a2,932(sp)
    mul     a2,a0,a1
                    #      new_var temp_333_29:i32 
                    #      temp_333_29 = Add i32 temp_332_29, temp_331_29 
    li      a1, 2420
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_334_29:i32 
                    #      temp_334_29 = Mul i32 -96_0, temp_54_29 
    sw      a0,928(sp)
    li      a0, -96
    sw      a1,920(sp)
    sw      a2,924(sp)
    mul     a2,a0,a1
                    #      new_var temp_335_29:i32 
                    #      temp_335_29 = Add i32 temp_334_29, temp_333_29 
    li      a1, 2124
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_336_29:i32 
                    #      temp_336_29 = Mul i32 66_0, temp_58_29 
    sw      a0,920(sp)
    li      a0, 66
    sw      a1,912(sp)
    sw      a2,916(sp)
    mul     a2,a0,a1
                    #      new_var temp_337_29:i32 
                    #      temp_337_29 = Add i32 temp_336_29, temp_335_29 
    li      a1, 2100
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_338_29:i32 
                    #      temp_338_29 = Mul i32 75_0, temp_62_29 
    sw      a0,912(sp)
    li      a0, 75
    sw      a1,904(sp)
    sw      a2,908(sp)
    mul     a2,a0,a1
                    #      new_var temp_339_29:i32 
                    #      temp_339_29 = Add i32 temp_338_29, temp_337_29 
    li      a1, 2076
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_340_29:i32 
                    #      temp_340_29 = Add i32 temp_339_29, temp_308_29 
    sw      a0,904(sp)
    add     a0,a1,s10
                    #      new_var temp_341_29:i32 
                    #      temp_341_29 = Mul i32 temp_70_29, -70_0 
    sw      a0,892(sp)
    sw      a1,896(sp)
    li      a1, -70
    sw      a2,900(sp)
    mul     a2,a0,a1
                    #      new_var temp_342_29:i32 
                    #      temp_342_29 = Add i32 temp_341_29, temp_340_29 
    li      a0, 2028
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_343_29:i32 
                    #      temp_343_29 = Mul i32 -16_0, temp_74_29 
    sw      a0,884(sp)
    li      a0, -16
    sw      a1,892(sp)
    sw      a2,888(sp)
    mul     a2,a0,a1
                    #      new_var temp_344_29:i32 
                    #      temp_344_29 = Add i32 temp_343_29, temp_342_29 
    li      a1, 2004
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_345_29:i32 
                    #      temp_345_29 = Mul i32 temp_78_29, -63_0 
    sw      a0,884(sp)
    sw      a1,876(sp)
    li      a1, -63
    sw      a2,880(sp)
    mul     a2,a0,a1
                    #      new_var temp_346_29:i32 
                    #      temp_346_29 = Add i32 temp_345_29, temp_344_29 
    sw      a0,1980(sp)
    add     a0,a2,a1
                    #      new_var temp_347_29:i32 
                    #      temp_347_29 = Mul i32 -116_0, temp_82_29 
    sw      a0,868(sp)
    li      a0, -116
    sw      a1,876(sp)
    sw      a2,872(sp)
    mul     a2,a0,a1
                    #      new_var temp_348_29:i32 
                    #      temp_348_29 = Add i32 temp_347_29, temp_346_29 
    sw      a1,1956(sp)
    add     a1,a2,a0
                    #      new_var temp_349_29:i32 
                    #      temp_349_29 = Mul i32 101_0, temp_86_29 
    sw      a0,868(sp)
    li      a0, 101
    sw      a1,860(sp)
    sw      a2,864(sp)
    mul     a2,a0,a1
                    #      new_var temp_350_29:i32 
                    #      temp_350_29 = Add i32 temp_349_29, temp_348_29 
    sw      a1,1932(sp)
    add     a1,a2,a0
                    #      new_var temp_351_29:i32 
                    #      temp_351_29 = Mul i32 -104_0, temp_90_29 
    sw      a0,860(sp)
    li      a0, -104
    sw      a1,852(sp)
    sw      a2,856(sp)
    mul     a2,a0,a1
                    #      new_var temp_352_29:i32 
                    #      temp_352_29 = Add i32 temp_351_29, temp_350_29 
    sw      a1,1908(sp)
    add     a1,a2,a0
                    #      new_var temp_353_29:i32 
                    #      temp_353_29 = Add i32 temp_155_29, temp_352_29 
    sw      a0,852(sp)
    sw      a2,848(sp)
    add     a2,a0,a1
                    #      new_var temp_354_29:i32 
                    #      temp_354_29 = Mul i32 8_0, temp_98_29 
    sw      a0,1632(sp)
    li      a0, 8
    sw      a1,844(sp)
    sw      a2,840(sp)
    mul     a2,a0,a1
                    #      new_var temp_355_29:i32 
                    #      temp_355_29 = Add i32 temp_354_29, temp_353_29 
    sw      a1,1860(sp)
    add     a1,a2,a0
                    #      new_var temp_356_29:i32 
                    #      temp_356_29 =  Call i32 relu_reg_0(temp_355_29) 
                    #saved register dumping to mem
    li      s1, 2404
    add     s1,sp,s1
    sw      s1,0(s1)
    sw      s2,1016(sp)
    li      s2, 2388
    add     s2,sp,s2
    sw      s3,0(s2)
    sw      s4,1008(sp)
    sw      s5,1028(sp)
    sw      s6,1224(sp)
    sw      s7,1024(sp)
    sw      s8,1012(sp)
    li      s3, 2052
    add     s3,sp,s3
    sw      s9,0(s3)
    sw      s10,1020(sp)
    sw      s11,1000(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,840(sp)
    mv      a0, a1
                    #arg load ended
    call    relu_reg
    sw      a0,828(sp)
                    #      new_var temp_357_29:i32 
                    #      temp_357_29 = Mul i32 temp_356_29, -3_0 
    li      s4, -3
    mul     s5,a0,s4
                    #      new_var temp_358_29:i32 
                    #      temp_358_29 = Add i32 temp_357_29, temp_307_29 
    add     s7,s5,s6
                    #      new_var temp_359_29:i32 
                    #      temp_359_29 = Mul i32 temp_54_29, -67_0 
    li      s9, -67
    mul     s10,s8,s9
                    #      new_var temp_360_29:i32 
                    #      temp_360_29 = Mul i32 118_0, temp_6_29 
    li      s11, 118
    mul     s2,s11,s1
                    #      new_var temp_361_29:i32 
                    #      temp_361_29 = Mul i32 95_0, temp_9_29 
    li      s3, 95
    mul     s9,s3,s4
                    #      new_var temp_362_29:i32 
                    #      temp_362_29 = Add i32 temp_361_29, temp_360_29 
    add     s3,s9,s2
                    #      new_var temp_363_29:i32 
                    #      temp_363_29 = Mul i32 temp_13_29, -117_0 
    li      s11, -117
    sw      a0,828(sp)
    mul     a0,a4,s11
                    #      new_var temp_364_29:i32 
                    #      temp_364_29 = Add i32 temp_363_29, temp_362_29 
    add     s11,a0,s3
                    #      new_var temp_365_29:i32 
                    #      temp_365_29 = Mul i32 -32_0, temp_17_29 
    sw      a0,800(sp)
    li      a0, -32
    sw      a1,832(sp)
    sw      a2,836(sp)
    mul     a2,a0,a1
                    #      new_var temp_366_29:i32 
                    #      temp_366_29 = Add i32 temp_365_29, temp_364_29 
    add     a0,a2,s11
                    #      new_var temp_367_29:i32 
                    #      temp_367_29 = Mul i32 -47_0, temp_21_29 
    sw      a0,788(sp)
    li      a0, -47
    li      a1, 2340
    add     a1,sp,a1
    sw      a1,0(a1)
    sw      a2,792(sp)
    mul     a2,a0,a1
                    #      new_var temp_368_29:i32 
                    #      temp_368_29 = Add i32 temp_367_29, temp_366_29 
    li      a1, 2316
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_369_29:i32 
                    #      temp_369_29 = Mul i32 temp_25_29, -23_0 
    sw      a0,788(sp)
    sw      a1,780(sp)
    li      a1, -23
    sw      a2,784(sp)
    mul     a2,a0,a1
                    #      new_var temp_370_29:i32 
                    #      temp_370_29 = Add i32 temp_369_29, temp_368_29 
    li      a0, 2292
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_371_29:i32 
                    #      temp_371_29 = Mul i32 11_0, temp_29_29 
    sw      a0,772(sp)
    li      a0, 11
    sw      a1,780(sp)
    sw      a2,776(sp)
    mul     a2,a0,a1
                    #      new_var temp_372_29:i32 
                    #      temp_372_29 = Add i32 temp_371_29, temp_370_29 
    li      a1, 2268
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_373_29:i32 
                    #      temp_373_29 = Mul i32 122_0, temp_33_29 
    sw      a0,772(sp)
    li      a0, 122
    sw      a1,764(sp)
    sw      a2,768(sp)
    mul     a2,a0,a1
                    #      new_var temp_374_29:i32 
                    #      temp_374_29 = Add i32 temp_373_29, temp_372_29 
    li      a1, 2244
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_375_29:i32 
                    #      temp_375_29 = Mul i32 83_0, temp_37_29 
    sw      a0,764(sp)
    li      a0, 83
    sw      a1,756(sp)
    sw      a2,760(sp)
    mul     a2,a0,a1
                    #      new_var temp_376_29:i32 
                    #      temp_376_29 = Add i32 temp_375_29, temp_374_29 
    li      a1, 2220
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_377_29:i32 
                    #      temp_377_29 = Mul i32 temp_41_29, -123_0 
    sw      a0,756(sp)
    sw      a1,748(sp)
    li      a1, -123
    sw      a2,752(sp)
    mul     a2,a0,a1
                    #      new_var temp_378_29:i32 
                    #      temp_378_29 = Add i32 temp_377_29, temp_376_29 
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_379_29:i32 
                    #      temp_379_29 = Mul i32 temp_45_29, -31_0 
    sw      a0,740(sp)
    sw      a1,748(sp)
    li      a1, -31
    sw      a2,744(sp)
    mul     a2,a0,a1
                    #      new_var temp_380_29:i32 
                    #      temp_380_29 = Add i32 temp_379_29, temp_378_29 
    li      a0, 2172
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_381_29:i32 
                    #      temp_381_29 = Mul i32 temp_49_29, 110_0 
    sw      a0,732(sp)
    sw      a1,740(sp)
    li      a1, 110
    sw      a2,736(sp)
    mul     a2,a0,a1
                    #      new_var temp_382_29:i32 
                    #      temp_382_29 = Add i32 temp_381_29, temp_380_29 
    li      a0, 2148
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_383_29:i32 
                    #      temp_383_29 = Mul i32 temp_3_29, 125_0 
    sw      a0,724(sp)
    sw      a1,732(sp)
    li      a1, 125
    sw      a2,728(sp)
    mul     a2,a0,a1
                    #      new_var temp_384_29:i32 
                    #      temp_384_29 = Add i32 temp_383_29, temp_382_29 
    li      a0, 2420
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_385_29:i32 
                    #      temp_385_29 = Add i32 temp_384_29, temp_359_29 
    sw      a1,724(sp)
    add     a1,a0,s10
                    #      new_var temp_386_29:i32 
                    #      temp_386_29 = Mul i32 -65_0, temp_58_29 
    sw      a0,716(sp)
    li      a0, -65
    sw      a1,712(sp)
    sw      a2,720(sp)
    mul     a2,a0,a1
                    #      new_var temp_387_29:i32 
                    #      temp_387_29 = Add i32 temp_386_29, temp_385_29 
    li      a1, 2100
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_388_29:i32 
                    #      temp_388_29 = Mul i32 -117_0, temp_62_29 
    sw      a0,712(sp)
    li      a0, -117
    sw      a1,704(sp)
    sw      a2,708(sp)
    mul     a2,a0,a1
                    #      new_var temp_389_29:i32 
                    #      temp_389_29 = Add i32 temp_388_29, temp_387_29 
    li      a1, 2076
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_390_29:i32 
                    #      temp_390_29 = Add i32 temp_308_29, temp_389_29 
    sw      a0,704(sp)
    sw      a2,700(sp)
    add     a2,a0,a1
                    #      new_var temp_391_29:i32 
                    #      temp_391_29 = Mul i32 12_0, temp_70_29 
    sw      a0,1020(sp)
    li      a0, 12
    sw      a1,696(sp)
    sw      a2,692(sp)
    mul     a2,a0,a1
                    #      new_var temp_392_29:i32 
                    #      temp_392_29 = Add i32 temp_391_29, temp_390_29 
    li      a1, 2028
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_393_29:i32 
                    #      temp_393_29 = Mul i32 -30_0, temp_74_29 
    sw      a0,692(sp)
    li      a0, -30
    sw      a1,684(sp)
    sw      a2,688(sp)
    mul     a2,a0,a1
                    #      new_var temp_394_29:i32 
                    #      temp_394_29 = Add i32 temp_393_29, temp_392_29 
    li      a1, 2004
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_395_29:i32 
                    #      temp_395_29 = Mul i32 temp_78_29, 85_0 
    sw      a0,684(sp)
    sw      a1,676(sp)
    li      a1, 85
    sw      a2,680(sp)
    mul     a2,a0,a1
                    #      new_var temp_396_29:i32 
                    #      temp_396_29 = Add i32 temp_395_29, temp_394_29 
    sw      a0,1980(sp)
    add     a0,a2,a1
                    #      new_var temp_397_29:i32 
                    #      temp_397_29 = Mul i32 72_0, temp_82_29 
    sw      a0,668(sp)
    li      a0, 72
    sw      a1,676(sp)
    sw      a2,672(sp)
    mul     a2,a0,a1
                    #      new_var temp_398_29:i32 
                    #      temp_398_29 = Add i32 temp_397_29, temp_396_29 
    sw      a1,1956(sp)
    add     a1,a2,a0
                    #      new_var temp_399_29:i32 
                    #      temp_399_29 = Mul i32 temp_86_29, 50_0 
    sw      a0,668(sp)
    sw      a1,660(sp)
    li      a1, 50
    sw      a2,664(sp)
    mul     a2,a0,a1
                    #      new_var temp_400_29:i32 
                    #      temp_400_29 = Add i32 temp_399_29, temp_398_29 
    sw      a0,1932(sp)
    add     a0,a2,a1
                    #      new_var temp_401_29:i32 
                    #      temp_401_29 = Mul i32 49_0, temp_90_29 
    sw      a0,652(sp)
    li      a0, 49
    sw      a1,660(sp)
    sw      a2,656(sp)
    mul     a2,a0,a1
                    #      new_var temp_402_29:i32 
                    #      temp_402_29 = Add i32 temp_401_29, temp_400_29 
    sw      a1,1908(sp)
    add     a1,a2,a0
                    #      new_var temp_403_29:i32 
                    #      temp_403_29 = Mul i32 temp_94_29, -63_0 
    sw      a0,652(sp)
    sw      a1,644(sp)
    li      a1, -63
    sw      a2,648(sp)
    mul     a2,a0,a1
                    #      new_var temp_404_29:i32 
                    #      temp_404_29 = Add i32 temp_403_29, temp_402_29 
    sw      a0,1884(sp)
    add     a0,a2,a1
                    #      new_var temp_405_29:i32 
                    #      temp_405_29 = Mul i32 -23_0, temp_98_29 
    sw      a0,636(sp)
    li      a0, -23
    sw      a1,644(sp)
    sw      a2,640(sp)
    mul     a2,a0,a1
                    #      new_var temp_406_29:i32 
                    #      temp_406_29 = Add i32 temp_405_29, temp_404_29 
    sw      a1,1860(sp)
    add     a1,a2,a0
                    #      new_var temp_407_29:i32 
                    #      temp_407_29 =  Call i32 relu_reg_0(temp_406_29) 
                    #saved register dumping to mem
    li      s1, 2404
    add     s1,sp,s1
    sw      s1,0(s1)
    sw      s2,812(sp)
    sw      s3,804(sp)
    li      s2, 2388
    add     s2,sp,s2
    sw      s4,0(s2)
    sw      s5,824(sp)
    sw      s6,1024(sp)
    sw      s7,820(sp)
    li      s3, 2124
    add     s3,sp,s3
    sw      s8,0(s3)
    sw      s9,808(sp)
    sw      s10,816(sp)
    sw      s11,796(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,636(sp)
    mv      a0, a1
                    #arg load ended
    call    relu_reg
    sw      a0,624(sp)
                    #      new_var temp_408_29:i32 
                    #      temp_408_29 = Mul i32 temp_407_29, -106_0 
    li      s4, -106
    mul     s5,a0,s4
                    #      new_var temp_409_29:i32 
                    #      temp_409_29 = Add i32 temp_408_29, temp_358_29 
    add     s7,s5,s6
                    #      new_var temp_410_29:i32 
                    #      temp_410_29 = Mul i32 94_0, temp_6_29 
    li      s8, 94
    mul     s10,s8,s9
                    #      new_var temp_411_29:i32 
                    #      temp_411_29 = Mul i32 -6_0, temp_9_29 
    li      s11, -6
    mul     s2,s11,s1
                    #      new_var temp_412_29:i32 
                    #      temp_412_29 = Add i32 temp_411_29, temp_410_29 
    add     s3,s2,s10
                    #      new_var temp_413_29:i32 
                    #      temp_413_29 = Mul i32 temp_13_29, -39_0 
    li      s4, -39
    mul     s8,a4,s4
                    #      new_var temp_414_29:i32 
                    #      temp_414_29 = Add i32 temp_413_29, temp_412_29 
    add     s4,s8,s3
                    #      new_var temp_415_29:i32 
                    #      temp_415_29 = Mul i32 120_0, temp_17_29 
    li      s11, 120
    sw      a0,624(sp)
    sw      a1,628(sp)
    mul     a1,s11,a0
                    #      new_var temp_416_29:i32 
                    #      temp_416_29 = Add i32 temp_415_29, temp_414_29 
    add     s11,a1,s4
                    #      new_var temp_417_29:i32 
                    #      temp_417_29 = Add i32 temp_156_29, temp_416_29 
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,592(sp)
    add     a1,a0,s11
                    #      new_var temp_418_29:i32 
                    #      temp_418_29 = Mul i32 -99_0, temp_25_29 
    sw      a0,1628(sp)
    li      a0, -99
    sw      a1,584(sp)
    sw      a2,632(sp)
    mul     a2,a0,a1
                    #      new_var temp_419_29:i32 
                    #      temp_419_29 = Add i32 temp_418_29, temp_417_29 
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_420_29:i32 
                    #      temp_420_29 = Mul i32 -63_0, temp_29_29 
    sw      a0,584(sp)
    li      a0, -63
    sw      a1,576(sp)
    sw      a2,580(sp)
    mul     a2,a0,a1
                    #      new_var temp_421_29:i32 
                    #      temp_421_29 = Add i32 temp_420_29, temp_419_29 
    li      a1, 2268
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_422_29:i32 
                    #      temp_422_29 = Mul i32 temp_33_29, 39_0 
    sw      a0,576(sp)
    sw      a1,568(sp)
    li      a1, 39
    sw      a2,572(sp)
    mul     a2,a0,a1
                    #      new_var temp_423_29:i32 
                    #      temp_423_29 = Add i32 temp_422_29, temp_421_29 
    li      a0, 2244
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_424_29:i32 
                    #      temp_424_29 = Mul i32 116_0, temp_37_29 
    sw      a0,560(sp)
    li      a0, 116
    sw      a1,568(sp)
    sw      a2,564(sp)
    mul     a2,a0,a1
                    #      new_var temp_425_29:i32 
                    #      temp_425_29 = Add i32 temp_424_29, temp_423_29 
    li      a1, 2220
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_426_29:i32 
                    #      temp_426_29 = Mul i32 temp_41_29, 110_0 
    sw      a0,560(sp)
    sw      a1,552(sp)
    li      a1, 110
    sw      a2,556(sp)
    mul     a2,a0,a1
                    #      new_var temp_427_29:i32 
                    #      temp_427_29 = Add i32 temp_426_29, temp_425_29 
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_428_29:i32 
                    #      temp_428_29 = Mul i32 27_0, temp_45_29 
    sw      a0,544(sp)
    li      a0, 27
    sw      a1,552(sp)
    sw      a2,548(sp)
    mul     a2,a0,a1
                    #      new_var temp_429_29:i32 
                    #      temp_429_29 = Add i32 temp_428_29, temp_427_29 
    li      a1, 2172
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_430_29:i32 
                    #      temp_430_29 = Mul i32 -38_0, temp_49_29 
    sw      a0,544(sp)
    li      a0, -38
    sw      a1,536(sp)
    sw      a2,540(sp)
    mul     a2,a0,a1
                    #      new_var temp_431_29:i32 
                    #      temp_431_29 = Add i32 temp_430_29, temp_429_29 
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_432_29:i32 
                    #      temp_432_29 = Mul i32 6_0, temp_3_29 
    sw      a0,536(sp)
    li      a0, 6
    sw      a1,528(sp)
    sw      a2,532(sp)
    mul     a2,a0,a1
                    #      new_var temp_433_29:i32 
                    #      temp_433_29 = Add i32 temp_432_29, temp_431_29 
    li      a1, 2420
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_434_29:i32 
                    #      temp_434_29 = Mul i32 102_0, temp_54_29 
    sw      a0,528(sp)
    li      a0, 102
    sw      a1,520(sp)
    sw      a2,524(sp)
    mul     a2,a0,a1
                    #      new_var temp_435_29:i32 
                    #      temp_435_29 = Add i32 temp_434_29, temp_433_29 
    li      a1, 2124
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_436_29:i32 
                    #      temp_436_29 = Mul i32 -34_0, temp_58_29 
    sw      a0,520(sp)
    li      a0, -34
    sw      a1,512(sp)
    sw      a2,516(sp)
    mul     a2,a0,a1
                    #      new_var temp_437_29:i32 
                    #      temp_437_29 = Add i32 temp_436_29, temp_435_29 
    li      a1, 2100
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_438_29:i32 
                    #      temp_438_29 = Mul i32 temp_62_29, 34_0 
    sw      a0,512(sp)
    sw      a1,504(sp)
    li      a1, 34
    sw      a2,508(sp)
    mul     a2,a0,a1
                    #      new_var temp_439_29:i32 
                    #      temp_439_29 = Add i32 temp_438_29, temp_437_29 
    li      a0, 2076
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_440_29:i32 
                    #      temp_440_29 = Mul i32 -5_0, temp_66_29 
    sw      a0,496(sp)
    li      a0, -5
    sw      a1,504(sp)
    sw      a2,500(sp)
    mul     a2,a0,a1
                    #      new_var temp_441_29:i32 
                    #      temp_441_29 = Add i32 temp_440_29, temp_439_29 
    li      a1, 2052
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_442_29:i32 
                    #      temp_442_29 = Mul i32 -68_0, temp_70_29 
    sw      a0,496(sp)
    li      a0, -68
    sw      a1,488(sp)
    sw      a2,492(sp)
    mul     a2,a0,a1
                    #      new_var temp_443_29:i32 
                    #      temp_443_29 = Add i32 temp_442_29, temp_441_29 
    li      a1, 2028
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_444_29:i32 
                    #      temp_444_29 = Mul i32 52_0, temp_74_29 
    sw      a0,488(sp)
    li      a0, 52
    sw      a1,480(sp)
    sw      a2,484(sp)
    mul     a2,a0,a1
                    #      new_var temp_445_29:i32 
                    #      temp_445_29 = Add i32 temp_444_29, temp_443_29 
    li      a1, 2004
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_446_29:i32 
                    #      temp_446_29 = Mul i32 96_0, temp_78_29 
    sw      a0,480(sp)
    li      a0, 96
    sw      a1,472(sp)
    sw      a2,476(sp)
    mul     a2,a0,a1
                    #      new_var temp_447_29:i32 
                    #      temp_447_29 = Add i32 temp_446_29, temp_445_29 
    sw      a1,1980(sp)
    add     a1,a2,a0
                    #      new_var temp_448_29:i32 
                    #      temp_448_29 = Mul i32 -95_0, temp_82_29 
    sw      a0,472(sp)
    li      a0, -95
    sw      a1,464(sp)
    sw      a2,468(sp)
    mul     a2,a0,a1
                    #      new_var temp_449_29:i32 
                    #      temp_449_29 = Add i32 temp_448_29, temp_447_29 
    sw      a1,1956(sp)
    add     a1,a2,a0
                    #      new_var temp_450_29:i32 
                    #      temp_450_29 = Mul i32 temp_86_29, 29_0 
    sw      a0,464(sp)
    sw      a1,456(sp)
    li      a1, 29
    sw      a2,460(sp)
    mul     a2,a0,a1
                    #      new_var temp_451_29:i32 
                    #      temp_451_29 = Add i32 temp_450_29, temp_449_29 
    sw      a0,1932(sp)
    add     a0,a2,a1
                    #      new_var temp_452_29:i32 
                    #      temp_452_29 = Add i32 temp_103_29, temp_451_29 
    sw      a0,448(sp)
    sw      a1,456(sp)
    sw      a2,452(sp)
    add     a2,a0,a1
                    #      new_var temp_453_29:i32 
                    #      temp_453_29 = Mul i32 76_0, temp_94_29 
    sw      a0,1840(sp)
    li      a0, 76
    sw      a1,448(sp)
    sw      a2,444(sp)
    mul     a2,a0,a1
                    #      new_var temp_454_29:i32 
                    #      temp_454_29 = Add i32 temp_453_29, temp_452_29 
    sw      a1,1884(sp)
    add     a1,a2,a0
                    #      new_var temp_455_29:i32 
                    #      temp_455_29 = Mul i32 26_0, temp_98_29 
    sw      a0,444(sp)
    li      a0, 26
    sw      a1,436(sp)
    sw      a2,440(sp)
    mul     a2,a0,a1
                    #      new_var temp_456_29:i32 
                    #      temp_456_29 = Add i32 temp_455_29, temp_454_29 
    sw      a1,1860(sp)
    add     a1,a2,a0
                    #      new_var temp_457_29:i32 
                    #      temp_457_29 =  Call i32 relu_reg_0(temp_456_29) 
                    #saved register dumping to mem
    li      s1, 2388
    add     s1,sp,s1
    sw      s1,0(s1)
    sw      s2,608(sp)
    sw      s3,604(sp)
    sw      s4,596(sp)
    sw      s5,620(sp)
    sw      s6,820(sp)
    sw      s7,616(sp)
    sw      s8,600(sp)
    li      s2, 2404
    add     s2,sp,s2
    sw      s9,0(s2)
    sw      s10,612(sp)
    sw      s11,588(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,436(sp)
    mv      a0, a1
                    #arg load ended
    call    relu_reg
    sw      a0,424(sp)
                    #      new_var temp_458_29:i32 
                    #      temp_458_29 = Mul i32 temp_457_29, 127_0 
    li      s3, 127
    mul     s4,a0,s3
                    #      new_var temp_459_29:i32 
                    #      temp_459_29 = Add i32 temp_458_29, temp_409_29 
    add     s6,s4,s5
                    #      new_var temp_460_29:i32 
                    #      temp_460_29 = Mul i32 -125_0, temp_6_29 
    li      s7, -125
    mul     s9,s7,s8
                    #      new_var temp_461_29:i32 
                    #      temp_461_29 = Mul i32 temp_9_29, -75_0 
    li      s11, -75
    mul     s1,s10,s11
                    #      new_var temp_462_29:i32 
                    #      temp_462_29 = Add i32 temp_461_29, temp_460_29 
    add     s2,s1,s9
                    #      new_var temp_463_29:i32 
                    #      temp_463_29 = Mul i32 -22_0, temp_13_29 
    li      s3, -22
    mul     s7,s3,a4
                    #      new_var temp_464_29:i32 
                    #      temp_464_29 = Add i32 temp_463_29, temp_462_29 
    add     s3,s7,s2
                    #      new_var temp_465_29:i32 
                    #      temp_465_29 = Mul i32 -100_0, temp_17_29 
    li      s11, -100
    sw      a0,424(sp)
    sw      a1,428(sp)
    mul     a1,s11,a0
                    #      new_var temp_466_29:i32 
                    #      temp_466_29 = Add i32 temp_465_29, temp_464_29 
    add     s11,a1,s3
                    #      new_var temp_467_29:i32 
                    #      temp_467_29 = Mul i32 -110_0, temp_21_29 
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, -110
    sw      a1,392(sp)
    sw      a2,432(sp)
    mul     a2,a0,a1
                    #      new_var temp_468_29:i32 
                    #      temp_468_29 = Add i32 temp_467_29, temp_466_29 
    add     a0,a2,s11
                    #      new_var temp_469_29:i32 
                    #      temp_469_29 = Mul i32 temp_25_29, -31_0 
    sw      a0,380(sp)
    li      a1, 2316
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, -31
    sw      a2,384(sp)
    mul     a2,a0,a1
                    #      new_var temp_470_29:i32 
                    #      temp_470_29 = Add i32 temp_469_29, temp_468_29 
    li      a0, 2292
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_471_29:i32 
                    #      temp_471_29 = Mul i32 temp_29_29, -106_0 
    sw      a0,372(sp)
    sw      a1,380(sp)
    li      a1, -106
    sw      a2,376(sp)
    mul     a2,a0,a1
                    #      new_var temp_472_29:i32 
                    #      temp_472_29 = Add i32 temp_471_29, temp_470_29 
    li      a0, 2268
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_473_29:i32 
                    #      temp_473_29 = Mul i32 29_0, temp_33_29 
    sw      a0,364(sp)
    li      a0, 29
    sw      a1,372(sp)
    sw      a2,368(sp)
    mul     a2,a0,a1
                    #      new_var temp_474_29:i32 
                    #      temp_474_29 = Add i32 temp_473_29, temp_472_29 
    li      a1, 2244
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_475_29:i32 
                    #      temp_475_29 = Mul i32 87_0, temp_37_29 
    sw      a0,364(sp)
    li      a0, 87
    sw      a1,356(sp)
    sw      a2,360(sp)
    mul     a2,a0,a1
                    #      new_var temp_476_29:i32 
                    #      temp_476_29 = Add i32 temp_475_29, temp_474_29 
    li      a1, 2220
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_477_29:i32 
                    #      temp_477_29 = Mul i32 -42_0, temp_41_29 
    sw      a0,356(sp)
    li      a0, -42
    sw      a1,348(sp)
    sw      a2,352(sp)
    mul     a2,a0,a1
                    #      new_var temp_478_29:i32 
                    #      temp_478_29 = Add i32 temp_477_29, temp_476_29 
    li      a1, 2196
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_479_29:i32 
                    #      temp_479_29 = Mul i32 105_0, temp_45_29 
    sw      a0,348(sp)
    li      a0, 105
    sw      a1,340(sp)
    sw      a2,344(sp)
    mul     a2,a0,a1
                    #      new_var temp_480_29:i32 
                    #      temp_480_29 = Add i32 temp_479_29, temp_478_29 
    li      a1, 2172
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_481_29:i32 
                    #      temp_481_29 = Mul i32 -43_0, temp_49_29 
    sw      a0,340(sp)
    li      a0, -43
    sw      a1,332(sp)
    sw      a2,336(sp)
    mul     a2,a0,a1
                    #      new_var temp_482_29:i32 
                    #      temp_482_29 = Add i32 temp_481_29, temp_480_29 
    li      a1, 2148
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_483_29:i32 
                    #      temp_483_29 = Mul i32 -60_0, temp_3_29 
    sw      a0,332(sp)
    li      a0, -60
    sw      a1,324(sp)
    sw      a2,328(sp)
    mul     a2,a0,a1
                    #      new_var temp_484_29:i32 
                    #      temp_484_29 = Add i32 temp_483_29, temp_482_29 
    li      a1, 2420
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_485_29:i32 
                    #      temp_485_29 = Mul i32 -21_0, temp_54_29 
    sw      a0,324(sp)
    li      a0, -21
    sw      a1,316(sp)
    sw      a2,320(sp)
    mul     a2,a0,a1
                    #      new_var temp_486_29:i32 
                    #      temp_486_29 = Add i32 temp_485_29, temp_484_29 
    li      a1, 2124
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_487_29:i32 
                    #      temp_487_29 = Mul i32 7_0, temp_58_29 
    sw      a0,316(sp)
    li      a0, 7
    sw      a1,308(sp)
    sw      a2,312(sp)
    mul     a2,a0,a1
                    #      new_var temp_488_29:i32 
                    #      temp_488_29 = Add i32 temp_487_29, temp_486_29 
    li      a1, 2100
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_489_29:i32 
                    #      temp_489_29 = Mul i32 -121_0, temp_62_29 
    sw      a0,308(sp)
    li      a0, -121
    sw      a1,300(sp)
    sw      a2,304(sp)
    mul     a2,a0,a1
                    #      new_var temp_490_29:i32 
                    #      temp_490_29 = Add i32 temp_489_29, temp_488_29 
    li      a1, 2076
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_491_29:i32 
                    #      temp_491_29 = Mul i32 -94_0, temp_66_29 
    sw      a0,300(sp)
    li      a0, -94
    sw      a1,292(sp)
    sw      a2,296(sp)
    mul     a2,a0,a1
                    #      new_var temp_492_29:i32 
                    #      temp_492_29 = Add i32 temp_491_29, temp_490_29 
    li      a1, 2052
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_493_29:i32 
                    #      temp_493_29 = Mul i32 67_0, temp_70_29 
    sw      a0,292(sp)
    li      a0, 67
    sw      a1,284(sp)
    sw      a2,288(sp)
    mul     a2,a0,a1
                    #      new_var temp_494_29:i32 
                    #      temp_494_29 = Add i32 temp_493_29, temp_492_29 
    li      a1, 2028
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      new_var temp_495_29:i32 
                    #      temp_495_29 = Mul i32 temp_74_29, -4_0 
    sw      a0,284(sp)
    sw      a1,276(sp)
    li      a1, -4
    sw      a2,280(sp)
    mul     a2,a0,a1
                    #      new_var temp_496_29:i32 
                    #      temp_496_29 = Add i32 temp_495_29, temp_494_29 
    li      a0, 2004
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_497_29:i32 
                    #      temp_497_29 = Mul i32 temp_78_29, 47_0 
    sw      a0,268(sp)
    sw      a1,276(sp)
    li      a1, 47
    sw      a2,272(sp)
    mul     a2,a0,a1
                    #      new_var temp_498_29:i32 
                    #      temp_498_29 = Add i32 temp_497_29, temp_496_29 
    sw      a0,1980(sp)
    add     a0,a2,a1
                    #      new_var temp_499_29:i32 
                    #      temp_499_29 = Mul i32 -8_0, temp_82_29 
    sw      a0,260(sp)
    li      a0, -8
    sw      a1,268(sp)
    sw      a2,264(sp)
    mul     a2,a0,a1
                    #      new_var temp_500_29:i32 
                    #      temp_500_29 = Add i32 temp_499_29, temp_498_29 
    sw      a1,1956(sp)
    add     a1,a2,a0
                    #      new_var temp_501_29:i32 
                    #      temp_501_29 = Mul i32 -31_0, temp_86_29 
    sw      a0,260(sp)
    li      a0, -31
    sw      a1,252(sp)
    sw      a2,256(sp)
    mul     a2,a0,a1
                    #      new_var temp_502_29:i32 
                    #      temp_502_29 = Add i32 temp_501_29, temp_500_29 
    sw      a1,1932(sp)
    add     a1,a2,a0
                    #      new_var temp_503_29:i32 
                    #      temp_503_29 = Mul i32 -18_0, temp_90_29 
    sw      a0,252(sp)
    li      a0, -18
    sw      a1,244(sp)
    sw      a2,248(sp)
    mul     a2,a0,a1
                    #      new_var temp_504_29:i32 
                    #      temp_504_29 = Add i32 temp_503_29, temp_502_29 
    sw      a1,1908(sp)
    add     a1,a2,a0
                    #      new_var temp_505_29:i32 
                    #      temp_505_29 = Mul i32 126_0, temp_94_29 
    sw      a0,244(sp)
    li      a0, 126
    sw      a1,236(sp)
    sw      a2,240(sp)
    mul     a2,a0,a1
                    #      new_var temp_506_29:i32 
                    #      temp_506_29 = Add i32 temp_505_29, temp_504_29 
    sw      a1,1884(sp)
    add     a1,a2,a0
                    #      new_var temp_507_29:i32 
                    #      temp_507_29 = Mul i32 temp_98_29, -106_0 
    sw      a0,236(sp)
    sw      a1,228(sp)
    li      a1, -106
    sw      a2,232(sp)
    mul     a2,a0,a1
                    #      new_var temp_508_29:i32 
                    #      temp_508_29 = Add i32 temp_507_29, temp_506_29 
    sw      a0,1860(sp)
    add     a0,a2,a1
                    #      new_var temp_509_29:i32 
                    #      temp_509_29 =  Call i32 relu_reg_0(temp_508_29) 
                    #saved register dumping to mem
    sw      s1,408(sp)
    sw      s2,404(sp)
    sw      s3,396(sp)
    sw      s4,420(sp)
    sw      s5,616(sp)
    sw      s6,416(sp)
    sw      s7,400(sp)
    li      s1, 2404
    add     s1,sp,s1
    sw      s8,0(s1)
    sw      s9,412(sp)
    li      s2, 2388
    add     s2,sp,s2
    sw      s10,0(s2)
    sw      s11,388(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,220(sp)
    lw      a0,220(sp)
                    #arg load ended
    call    relu_reg
    sw      a0,216(sp)
                    #      new_var temp_510_29:i32 
                    #      temp_510_29 = Mul i32 temp_509_29, 77_0 
    li      s3, 77
    mul     s4,a0,s3
                    #      new_var temp_511_29:i32 
                    #      temp_511_29 = Add i32 temp_510_29, temp_459_29 
    add     s6,s4,s5
                    #      new_var temp_512_29:i32 
                    #      temp_512_29 = Mul i32 temp_6_29, 46_0 
    li      s8, 46
    mul     s9,s7,s8
                    #      new_var temp_513_29:i32 
                    #      temp_513_29 = Mul i32 temp_9_29, 80_0 
    li      s11, 80
    mul     s1,s10,s11
                    #      new_var temp_514_29:i32 
                    #      temp_514_29 = Add i32 temp_513_29, temp_512_29 
    add     s2,s1,s9
                    #      new_var temp_515_29:i32 
                    #      temp_515_29 = Mul i32 temp_13_29, -4_0 
    li      s3, -4
    mul     s8,a4,s3
                    #      new_var temp_516_29:i32 
                    #      temp_516_29 = Add i32 temp_515_29, temp_514_29 
    add     s3,s8,s2
                    #      new_var temp_517_29:i32 
                    #      temp_517_29 = Mul i32 temp_17_29, 47_0 
    sw      a0,216(sp)
    li      a0, 47
    sw      a1,228(sp)
    mul     a1,s11,a0
                    #      new_var temp_518_29:i32 
                    #      temp_518_29 = Add i32 temp_517_29, temp_516_29 
    add     a0,a1,s3
                    #      new_var temp_519_29:i32 
                    #      temp_519_29 = Mul i32 temp_21_29, 110_0 
    sw      a0,180(sp)
    sw      a1,184(sp)
    li      a1, 110
    sw      a2,224(sp)
    mul     a2,a0,a1
                    #      new_var temp_520_29:i32 
                    #      temp_520_29 = Add i32 temp_519_29, temp_518_29 
    li      a0, 2316
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_521_29:i32 
                    #      temp_521_29 = Mul i32 temp_25_29, 113_0 
    sw      a0,172(sp)
    sw      a1,180(sp)
    li      a1, 113
    sw      a2,176(sp)
    mul     a2,a0,a1
                    #      new_var temp_522_29:i32 
                    #      temp_522_29 = Add i32 temp_521_29, temp_520_29 
    li      a0, 2292
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_523_29:i32 
                    #      temp_523_29 = Mul i32 temp_29_29, 47_0 
    sw      a0,164(sp)
    sw      a1,172(sp)
    li      a1, 47
    sw      a2,168(sp)
    mul     a2,a0,a1
                    #      new_var temp_524_29:i32 
                    #      temp_524_29 = Add i32 temp_523_29, temp_522_29 
    li      a0, 2268
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_525_29:i32 
                    #      temp_525_29 = Mul i32 temp_33_29, 65_0 
    sw      a0,156(sp)
    sw      a1,164(sp)
    li      a1, 65
    sw      a2,160(sp)
    mul     a2,a0,a1
                    #      new_var temp_526_29:i32 
                    #      temp_526_29 = Add i32 temp_525_29, temp_524_29 
    li      a0, 2244
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_527_29:i32 
                    #      temp_527_29 = Mul i32 temp_37_29, -39_0 
    sw      a0,148(sp)
    sw      a1,156(sp)
    li      a1, -39
    sw      a2,152(sp)
    mul     a2,a0,a1
                    #      new_var temp_528_29:i32 
                    #      temp_528_29 = Add i32 temp_527_29, temp_526_29 
    li      a0, 2220
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_529_29:i32 
                    #      temp_529_29 = Mul i32 temp_41_29, 34_0 
    sw      a0,140(sp)
    sw      a1,148(sp)
    li      a1, 34
    sw      a2,144(sp)
    mul     a2,a0,a1
                    #      new_var temp_530_29:i32 
                    #      temp_530_29 = Add i32 temp_529_29, temp_528_29 
    li      a0, 2196
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_531_29:i32 
                    #      temp_531_29 = Mul i32 temp_45_29, -102_0 
    sw      a0,132(sp)
    sw      a1,140(sp)
    li      a1, -102
    sw      a2,136(sp)
    mul     a2,a0,a1
                    #      new_var temp_532_29:i32 
                    #      temp_532_29 = Add i32 temp_531_29, temp_530_29 
    li      a0, 2172
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_533_29:i32 
                    #      temp_533_29 = Mul i32 temp_49_29, -75_0 
    sw      a0,124(sp)
    sw      a1,132(sp)
    li      a1, -75
    sw      a2,128(sp)
    mul     a2,a0,a1
                    #      new_var temp_534_29:i32 
                    #      temp_534_29 = Add i32 temp_533_29, temp_532_29 
    li      a0, 2148
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_535_29:i32 
                    #      temp_535_29 = Mul i32 temp_3_29, -106_0 
    sw      a0,116(sp)
    sw      a1,124(sp)
    li      a1, -106
    sw      a2,120(sp)
    mul     a2,a0,a1
                    #      new_var temp_536_29:i32 
                    #      temp_536_29 = Add i32 temp_535_29, temp_534_29 
    li      a0, 2420
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_537_29:i32 
                    #      temp_537_29 = Add i32 temp_359_29, temp_536_29 
    sw      a0,108(sp)
    sw      a1,116(sp)
    sw      a2,112(sp)
    add     a2,a0,a1
                    #      new_var temp_538_29:i32 
                    #      temp_538_29 = Mul i32 temp_58_29, -111_0 
    sw      a0,816(sp)
    sw      a1,108(sp)
    li      a1, -111
    sw      a2,104(sp)
    mul     a2,a0,a1
                    #      new_var temp_539_29:i32 
                    #      temp_539_29 = Add i32 temp_538_29, temp_537_29 
    li      a0, 2100
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_540_29:i32 
                    #      temp_540_29 = Mul i32 temp_62_29, 47_0 
    sw      a0,96(sp)
    sw      a1,104(sp)
    li      a1, 47
    sw      a2,100(sp)
    mul     a2,a0,a1
                    #      new_var temp_541_29:i32 
                    #      temp_541_29 = Add i32 temp_540_29, temp_539_29 
    li      a0, 2076
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_542_29:i32 
                    #      temp_542_29 = Mul i32 temp_66_29, -59_0 
    sw      a0,88(sp)
    sw      a1,96(sp)
    li      a1, -59
    sw      a2,92(sp)
    mul     a2,a0,a1
                    #      new_var temp_543_29:i32 
                    #      temp_543_29 = Add i32 temp_542_29, temp_541_29 
    li      a0, 2052
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_544_29:i32 
                    #      temp_544_29 = Mul i32 temp_70_29, 50_0 
    sw      a0,80(sp)
    sw      a1,88(sp)
    li      a1, 50
    sw      a2,84(sp)
    mul     a2,a0,a1
                    #      new_var temp_545_29:i32 
                    #      temp_545_29 = Add i32 temp_544_29, temp_543_29 
    li      a0, 2028
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_546_29:i32 
                    #      temp_546_29 = Mul i32 temp_74_29, -120_0 
    sw      a0,72(sp)
    sw      a1,80(sp)
    li      a1, -120
    sw      a2,76(sp)
    mul     a2,a0,a1
                    #      new_var temp_547_29:i32 
                    #      temp_547_29 = Add i32 temp_546_29, temp_545_29 
    li      a0, 2004
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a2,a1
                    #      new_var temp_548_29:i32 
                    #      temp_548_29 = Mul i32 temp_78_29, 64_0 
    sw      a0,64(sp)
    sw      a1,72(sp)
    li      a1, 64
    sw      a2,68(sp)
    mul     a2,a0,a1
                    #      new_var temp_549_29:i32 
                    #      temp_549_29 = Add i32 temp_548_29, temp_547_29 
    sw      a0,1980(sp)
    add     a0,a2,a1
                    #      new_var temp_550_29:i32 
                    #      temp_550_29 = Mul i32 temp_82_29, -123_0 
    sw      a0,56(sp)
    sw      a1,64(sp)
    li      a1, -123
    sw      a2,60(sp)
    mul     a2,a0,a1
                    #      new_var temp_551_29:i32 
                    #      temp_551_29 = Add i32 temp_550_29, temp_549_29 
    sw      a0,1956(sp)
    add     a0,a2,a1
                    #      new_var temp_552_29:i32 
                    #      temp_552_29 = Mul i32 temp_86_29, -103_0 
    sw      a0,48(sp)
    sw      a1,56(sp)
    li      a1, -103
    sw      a2,52(sp)
    mul     a2,a0,a1
                    #      new_var temp_553_29:i32 
                    #      temp_553_29 = Add i32 temp_552_29, temp_551_29 
    sw      a0,1932(sp)
    add     a0,a2,a1
                    #      new_var temp_554_29:i32 
                    #      temp_554_29 = Mul i32 temp_90_29, -82_0 
    sw      a0,40(sp)
    sw      a1,48(sp)
    li      a1, -82
    sw      a2,44(sp)
    mul     a2,a0,a1
                    #      new_var temp_555_29:i32 
                    #      temp_555_29 = Add i32 temp_554_29, temp_553_29 
    sw      a0,1908(sp)
    add     a0,a2,a1
                    #      new_var temp_556_29:i32 
                    #      temp_556_29 = Mul i32 temp_94_29, 23_0 
    sw      a0,32(sp)
    sw      a1,40(sp)
    li      a1, 23
    sw      a2,36(sp)
    mul     a2,a0,a1
                    #      new_var temp_557_29:i32 
                    #      temp_557_29 = Add i32 temp_556_29, temp_555_29 
    sw      a0,1884(sp)
    add     a0,a2,a1
                    #      new_var temp_558_29:i32 
                    #      temp_558_29 = Mul i32 temp_98_29, 85_0 
    sw      a0,24(sp)
    sw      a1,32(sp)
    li      a1, 85
    sw      a2,28(sp)
    mul     a2,a0,a1
                    #      new_var temp_559_29:i32 
                    #      temp_559_29 = Add i32 temp_558_29, temp_557_29 
    sw      a0,1860(sp)
    add     a0,a2,a1
                    #      new_var temp_560_29:i32 
                    #      temp_560_29 =  Call i32 relu_reg_0(temp_559_29) 
                    #saved register dumping to mem
    sw      s1,200(sp)
    sw      s2,196(sp)
    sw      s3,188(sp)
    sw      s4,212(sp)
    sw      s5,416(sp)
    sw      s6,208(sp)
    li      s1, 2404
    add     s1,sp,s1
    sw      s7,0(s1)
    sw      s8,192(sp)
    sw      s9,204(sp)
    li      s2, 2388
    add     s2,sp,s2
    sw      s10,0(s2)
    li      s3, 2340
    add     s3,sp,s3
    sw      s11,0(s3)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    lw      a0,16(sp)
                    #arg load ended
    call    relu_reg
    sw      a0,12(sp)
                    #      new_var temp_561_29:i32 
                    #      temp_561_29 = Mul i32 temp_560_29, 39_0 
    li      s4, 39
    mul     s5,a0,s4
                    #      new_var temp_562_29:i32 
                    #      temp_562_29 = Add i32 temp_561_29, temp_511_29 
    add     s7,s5,s6
                    #      new_var temp_563_29:i1 
                    #      temp_563_29 = icmp i32 Sgt temp_562_29, 0_0 
    li      s8, 0
    slt     s9,s8,s7
                    #      br i1 temp_563_29, label branch_true_30, label branch_false_30 
    bnez    s9, .branch_true_30
    j       .branch_false_30
                    #      label branch_true_30: 
.branch_true_30:
                    #      ret 1_0 
    li      s1, 2448
    add     s1,sp,s1
    ld      ra,0(s1)
    li      s2, 2440
    add     s2,sp,s2
    ld      s0,0(s2)
    sw      a0,12(sp)
    li      a0, 1
    li      s3, 2456
    li      s3, 2456
    add     sp,s3,sp
    ret
                    #      label branch_false_30: 
.branch_false_30:
                    #      label L4_0: 
.L4_0:
                    #      ret 0_0 
    li      s1, 2448
    add     s1,sp,s1
    ld      ra,0(s1)
    li      s2, 2440
    add     s2,sp,s2
    ld      s0,0(s2)
    sw      a0,12(sp)
    li      a0, 0
    li      s3, 2456
    li      s3, 2456
    add     sp,s3,sp
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_564:4|N:4|a:100|temp_565:1|none:3|i:4|temp_566:1|none:3|j:4|temp_567:1|none:3|temp_568:8|temp_569:4|temp_570:4|temp_571:4|temp_572:4|temp_573:1|none:3|temp_574:4
    addi    sp,sp,-176
    sd      ra,168(sp)
    sd      s0,160(sp)
    addi    s0,sp,176
                    #      alloc i32 temp_564_34 
                    #      alloc i32 N_34 
                    #      alloc Array:i32:[Some(5_0), Some(5_0)] a_34 
                    #      alloc i1 temp_565_37 
                    #      alloc i32 i_39 
                    #      alloc i1 temp_566_41 
                    #      alloc i32 j_43 
                    #      alloc i1 temp_567_45 
                    #      alloc ptr->i32 temp_568_47 
                    #      alloc i32 temp_569_47 
                    #      alloc i32 temp_570_47 
                    #      alloc i32 temp_571_43 
                    #      alloc i32 temp_572_51 
                    #      alloc i1 temp_573_15294 
                    #      alloc i32 temp_574_39 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_564_34:i32 
                    #      temp_564_34 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,156(sp)
                    #      N_34 = i32 temp_564_34 
    mv      a1, a0
                    #      new_var a_34:Array:i32:[Some(5_0), Some(5_0)] 
                    #      jump label: while.head_38 
    j       .while.head_38
                    #      label while.head_38: 
.while.head_38:
                    #      new_var temp_565_37:i1 
                    #      temp_565_37 = icmp i32 Sgt N_34, 0_0 
    li      a2, 0
    slt     a3,a2,a1
                    #      br i1 temp_565_37, label while.body_38, label while.exit_38 
    bnez    a3, .while.body_38
    j       .while.exit_38
                    #      label while.body_38: 
.while.body_38:
                    #      i_39 = i32 0_0 
    li      a2, 0
                    #      jump label: while.head_42 
    j       .while.head_42
                    #      label while.head_42: 
.while.head_42:
                    #      new_var temp_566_41:i1 
                    #      temp_566_41 = icmp i32 Slt i_39, 5_0 
    li      a4, 5
    slt     a5,a2,a4
                    #      br i1 temp_566_41, label while.body_42, label while.exit_42 
    bnez    a5, .while.body_42
    j       .while.exit_42
                    #      label while.body_42: 
.while.body_42:
                    #      j_43 = i32 0_0 
    li      a4, 0
                    #      jump label: while.head_46 
    j       .while.head_46
                    #      label while.head_46: 
.while.head_46:
                    #      new_var temp_567_45:i1 
                    #      temp_567_45 = icmp i32 Slt j_43, 5_0 
    li      a6, 5
    slt     a7,a4,a6
                    #      br i1 temp_567_45, label while.body_46, label while.exit_46 
    bnez    a7, .while.body_46
    j       .while.exit_46
                    #      label while.body_46: 
.while.body_46:
                    #      new_var temp_568_47:ptr->i32 
                    #      temp_568_47 = getelementptr a_34:Array:i32:[Some(5_0), Some(5_0)] [Some(i_39), Some(j_43)] 
    li      a6, 0
    li      s1, 5
    mul     s2,s1,a2
    add     a6,a6,s2
    li      s3, 1
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      new_var temp_569_47:i32 
                    #      temp_569_47 =  Call i32 getint_0() 
                    #saved register dumping to mem
    sw      s2,148(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,156(sp)
    sw      a0,20(sp)
                    #      store temp_569_47:i32 temp_568_47:ptr->i32 
    sd      a0,0(a6)
                    #      mu a_34:1771 
                    #      a_34 = chi a_34:1771 
                    #      new_var temp_570_47:i32 
                    #      temp_570_47 = Add i32 j_43, 1_0 
    li      s1, 1
    add     s2,a4,s1
                    #      j_43 = i32 temp_570_47 
                    #      jump label: while.head_46 
    sd      a6,24(sp)
    sb      a7,35(sp)
    sw      a0,20(sp)
    lw      a0,156(sp)
    sw      s2,16(sp)
    j       .while.head_46
                    #      label while.exit_46: 
.while.exit_46:
                    #      new_var temp_571_43:i32 
                    #      temp_571_43 = Add i32 i_39, 1_0 
    li      a6, 1
    add     s1,a2,a6
                    #      i_39 = i32 temp_571_43 
                    #      jump label: while.head_42 
    sb      a5,43(sp)
    sw      a4,36(sp)
    sb      a7,35(sp)
    sw      s1,12(sp)
    j       .while.head_42
                    #      label while.exit_42: 
.while.exit_42:
                    #      new_var temp_572_51:i32 
                    #      temp_572_51 =  Call i32 model_0(a_34) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,156(sp)
    lw      a0,148(sp)
                    #arg load ended
    call    model
    sw      a0,8(sp)
                    #      new_var temp_573_15294:i1 
                    #      temp_573_15294 = icmp i32 Ne temp_572_51, 0_0 
    li      a4, 0
    xor     a6,a0,a4
    snez    a6, a6
                    #      br i1 temp_573_15294, label branch_true_52, label branch_false_52 
    bnez    a6, .branch_true_52
    j       .branch_false_52
                    #      label branch_true_52: 
.branch_true_52:
                    #       Call void putch_0(99_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,8(sp)
    li      a0, 99
                    #arg load ended
    call    putch
                    #       Call void putch_0(97_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 97
                    #arg load ended
    call    putch
                    #       Call void putch_0(116_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 116
                    #arg load ended
    call    putch
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: L1_0 
    j       .L1_0
                    #      label branch_false_52: 
.branch_false_52:
                    #       Call void putch_0(100_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,8(sp)
    li      a0, 100
                    #arg load ended
    call    putch
                    #       Call void putch_0(111_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 111
                    #arg load ended
    call    putch
                    #       Call void putch_0(103_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 103
                    #arg load ended
    call    putch
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_574_39:i32 
                    #      temp_574_39 = Sub i32 N_34, 1_0 
    li      a0, 1
    sub     a4,a1,a0
                    #      N_34 = i32 temp_574_39 
                    #      jump label: while.head_38 
    sb      a6,7(sp)
    sb      a5,43(sp)
    sw      a4,0(sp)
    sb      a3,51(sp)
    lw      a0,156(sp)
    sw      a2,44(sp)
    j       .while.head_38
                    #      label while.exit_38: 
.while.exit_38:
                    #      ret 0_0 
    ld      ra,168(sp)
    ld      s0,160(sp)
    sw      a0,156(sp)
    li      a0, 0
    addi    sp,sp,176
    ret
