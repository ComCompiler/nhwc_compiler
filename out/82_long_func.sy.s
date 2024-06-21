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
                    #      Define long_func_0 [] -> long_func_ret_0 
    .globl long_func
    .type long_func,@function
long_func:
                    #mem layout:|ra_long_func:8|s0_long_func:8|ans:4|i:4|x:4|y:4|cur:4|pl:4|pr:4|pres:4|temp_16:1|temp_17:1|none:2|temp_18:4|temp_19:4|temp_20:1|temp_21:1|temp_22:1|none:1|temp_23:64|temp_24:8|temp_25:4|temp_26:4|temp_27:4|temp_28:4|temp_29:4|temp_30:4|temp_31:1|none:3|ml:4|mr:4|mres:4|temp_32:1|temp_33:1|none:2|temp_34:4|temp_35:4|temp_36:1|temp_37:1|temp_38:1|none:1|temp_39:64|temp_40:8|temp_41:4|temp_42:4|temp_43:4|temp_44:4|temp_45:4|temp_46:4|temp_47:1|none:3|al:4|c:4|sum:4|temp_48:1|temp_49:1|none:2|temp_50:4|temp_51:1|none:3|temp_52:4|temp_53:1|none:3|temp_54:64|none:4|temp_55:8|temp_56:4|temp_57:4|temp_58:4|temp_59:4|temp_60:4|temp_61:4|temp_62:4|temp_63:1|none:3|temp_64:64|temp_65:8|temp_66:4|temp_67:4|temp_68:4|temp_69:1|none:3|temp_70:4|temp_71:4|temp_72:1|temp_73:1|temp_74:1|none:1|temp_75:64|none:4|temp_76:8|temp_77:4|temp_78:4|temp_79:4|temp_80:4|temp_81:4|temp_82:4|temp_83:1|none:3|temp_84:64|none:4|temp_85:8|temp_86:4|temp_87:4|temp_88:1|none:3|temp_89:4|temp_90:4|temp_91:1|temp_92:1|temp_93:1|none:1|temp_94:64|temp_95:8|temp_96:4|temp_97:4|temp_98:4|temp_99:4|temp_100:4|temp_101:4|al:4|c:4|sum:4|temp_102:1|temp_103:1|none:2|temp_104:4|temp_105:1|none:3|temp_106:4|temp_107:1|none:3|temp_108:64|temp_109:8|temp_110:4|temp_111:4|temp_112:4|temp_113:4|temp_114:4|temp_115:4|temp_116:4|temp_117:1|none:3|temp_118:64|temp_119:8|temp_120:4|temp_121:4|temp_122:4|temp_123:1|none:3|temp_124:4|temp_125:4|temp_126:1|temp_127:1|temp_128:1|none:1|temp_129:64|none:4|temp_130:8|temp_131:4|temp_132:4|temp_133:4|temp_134:4|temp_135:4|temp_136:4|temp_137:1|none:3|temp_138:64|none:4|temp_139:8|temp_140:4|temp_141:4|temp_142:1|none:3|temp_143:4|temp_144:4|temp_145:1|temp_146:1|temp_147:1|none:1|temp_148:64|temp_149:8|temp_150:4|temp_151:4|temp_152:4|temp_153:4|temp_154:4|temp_155:4|temp_156:1|temp_157:1|temp_158:1|temp_159:1|temp_160:64|none:4|temp_161:8|temp_162:4|temp_163:4|temp_164:4|temp_165:4|temp_166:64|temp_167:8|temp_168:4|temp_169:4|temp_170:4|temp_171:64|none:4|temp_172:8|temp_173:4|temp_174:4|ml:4|mr:4|mres:4|temp_175:1|temp_176:1|none:2|temp_177:4|temp_178:4|temp_179:1|temp_180:1|temp_181:1|none:1|temp_182:64|none:4|temp_183:8|temp_184:4|temp_185:4|temp_186:4|temp_187:4|temp_188:4|temp_189:4|temp_190:1|none:3|al:4|c:4|sum:4|temp_191:1|temp_192:1|none:2|temp_193:4|temp_194:1|none:3|temp_195:4|temp_196:1|none:3|temp_197:64|none:4|temp_198:8|temp_199:4|temp_200:4|temp_201:4|temp_202:4|temp_203:4|temp_204:4|temp_205:4|temp_206:1|none:3|temp_207:64|temp_208:8|temp_209:4|temp_210:4|temp_211:4|temp_212:1|none:3|temp_213:4|temp_214:4|temp_215:1|temp_216:1|temp_217:1|none:1|temp_218:64|none:4|temp_219:8|temp_220:4|temp_221:4|temp_222:4|temp_223:4|temp_224:4|temp_225:4|temp_226:1|none:3|temp_227:64|none:4|temp_228:8|temp_229:4|temp_230:4|temp_231:1|none:3|temp_232:4|temp_233:4|temp_234:1|temp_235:1|temp_236:1|none:1|temp_237:64|temp_238:8|temp_239:4|temp_240:4|temp_241:4|temp_242:4|temp_243:4|temp_244:4|al:4|c:4|sum:4|temp_245:1|temp_246:1|none:2|temp_247:4|temp_248:1|none:3|temp_249:4|temp_250:1|none:3|temp_251:64|temp_252:8|temp_253:4|temp_254:4|temp_255:4|temp_256:4|temp_257:4|temp_258:4|temp_259:4|temp_260:1|none:3|temp_261:64|temp_262:8|temp_263:4|temp_264:4|temp_265:4|temp_266:1|none:3|temp_267:4|temp_268:4|temp_269:1|temp_270:1|temp_271:1|none:1|temp_272:64|none:4|temp_273:8|temp_274:4|temp_275:4|temp_276:4|temp_277:4|temp_278:4|temp_279:4|temp_280:1|none:3|temp_281:64|none:4|temp_282:8|temp_283:4|temp_284:4|temp_285:1|none:3|temp_286:4|temp_287:4|temp_288:1|temp_289:1|temp_290:1|none:1|temp_291:64|temp_292:8|temp_293:4|temp_294:4|temp_295:4|temp_296:4|temp_297:4|temp_298:4|temp_299:1|temp_300:1|temp_301:1|temp_302:1|temp_303:64|none:4|temp_304:8|temp_305:4|temp_306:4|temp_307:4|temp_308:4|temp_309:64|temp_310:8|temp_311:4|temp_312:4|temp_313:4|temp_314:64|none:4|temp_315:8|temp_316:4|temp_317:4|temp_318:1|temp_319:1|temp_320:1|temp_321:1|temp_322:64|none:4|temp_323:8|temp_324:4|temp_325:4|temp_326:4|temp_327:4|temp_328:64|temp_329:8|temp_330:4|temp_331:4|temp_332:4|temp_333:64|none:4|temp_334:8|temp_335:4|temp_336:4|pl:4|pr:4|pres:4|temp_337:1|temp_338:1|none:2|temp_339:4|temp_340:4|temp_341:1|temp_342:1|temp_343:1|none:1|temp_344:64|none:4|temp_345:8|temp_346:4|temp_347:4|temp_348:4|temp_349:4|temp_350:4|temp_351:4|temp_352:1|none:3|ml:4|mr:4|mres:4|temp_353:1|temp_354:1|none:2|temp_355:4|temp_356:4|temp_357:1|temp_358:1|temp_359:1|none:1|temp_360:64|temp_361:8|temp_362:4|temp_363:4|temp_364:4|temp_365:4|temp_366:4|temp_367:4|temp_368:1|none:3|al:4|c:4|sum:4|temp_369:1|temp_370:1|none:2|temp_371:4|temp_372:1|none:3|temp_373:4|temp_374:1|none:3|temp_375:64|none:4|temp_376:8|temp_377:4|temp_378:4|temp_379:4|temp_380:4|temp_381:4|temp_382:4|temp_383:4|temp_384:1|none:3|temp_385:64|temp_386:8|temp_387:4|temp_388:4|temp_389:4|temp_390:1|none:3|temp_391:4|temp_392:4|temp_393:1|temp_394:1|temp_395:1|none:1|temp_396:64|none:4|temp_397:8|temp_398:4|temp_399:4|temp_400:4|temp_401:4|temp_402:4|temp_403:4|temp_404:1|none:3|temp_405:64|none:4|temp_406:8|temp_407:4|temp_408:4|temp_409:1|none:3|temp_410:4|temp_411:4|temp_412:1|temp_413:1|temp_414:1|none:1|temp_415:64|temp_416:8|temp_417:4|temp_418:4|temp_419:4|temp_420:4|temp_421:4|temp_422:4|al:4|c:4|sum:4|temp_423:1|temp_424:1|none:2|temp_425:4|temp_426:1|none:3|temp_427:4|temp_428:1|none:3|temp_429:64|temp_430:8|temp_431:4|temp_432:4|temp_433:4|temp_434:4|temp_435:4|temp_436:4|temp_437:4|temp_438:1|none:3|temp_439:64|temp_440:8|temp_441:4|temp_442:4|temp_443:4|temp_444:1|none:3|temp_445:4|temp_446:4|temp_447:1|temp_448:1|temp_449:1|none:1|temp_450:64|none:4|temp_451:8|temp_452:4|temp_453:4|temp_454:4|temp_455:4|temp_456:4|temp_457:4|temp_458:1|none:3|temp_459:64|none:4|temp_460:8|temp_461:4|temp_462:4|temp_463:1|none:3|temp_464:4|temp_465:4|temp_466:1|temp_467:1|temp_468:1|none:1|temp_469:64|temp_470:8|temp_471:4|temp_472:4|temp_473:4|temp_474:4|temp_475:4|temp_476:4|temp_477:1|temp_478:1|temp_479:1|temp_480:1|temp_481:64|none:4|temp_482:8|temp_483:4|temp_484:4|temp_485:4|temp_486:4|temp_487:64|temp_488:8|temp_489:4|temp_490:4|temp_491:4|temp_492:64|none:4|temp_493:8|temp_494:4|temp_495:4|ml:4|mr:4|mres:4|temp_496:1|temp_497:1|none:2|temp_498:4|temp_499:4|temp_500:1|temp_501:1|temp_502:1|none:1|temp_503:64|none:4|temp_504:8|temp_505:4|temp_506:4|temp_507:4|temp_508:4|temp_509:4|temp_510:4|temp_511:1|none:3|al:4|c:4|sum:4|temp_512:1|temp_513:1|none:2|temp_514:4|temp_515:1|none:3|temp_516:4|temp_517:1|none:3|temp_518:64|none:4|temp_519:8|temp_520:4|temp_521:4|temp_522:4|temp_523:4|temp_524:4|temp_525:4|temp_526:4|temp_527:1|none:3|temp_528:64|temp_529:8|temp_530:4|temp_531:4|temp_532:4|temp_533:1|none:3|temp_534:4|temp_535:4|temp_536:1|temp_537:1|temp_538:1|none:1|temp_539:64|none:4|temp_540:8|temp_541:4|temp_542:4|temp_543:4|temp_544:4|temp_545:4|temp_546:4|temp_547:1|none:3|temp_548:64|none:4|temp_549:8|temp_550:4|temp_551:4|temp_552:1|none:3|temp_553:4|temp_554:4|temp_555:1|temp_556:1|temp_557:1|none:1|temp_558:64|temp_559:8|temp_560:4|temp_561:4|temp_562:4|temp_563:4|temp_564:4|temp_565:4|al:4|c:4|sum:4|temp_566:1|temp_567:1|none:2|temp_568:4|temp_569:1|none:3|temp_570:4|temp_571:1|none:3|temp_572:64|temp_573:8|temp_574:4|temp_575:4|temp_576:4|temp_577:4|temp_578:4|temp_579:4|temp_580:4|temp_581:1|none:3|temp_582:64|temp_583:8|temp_584:4|temp_585:4|temp_586:4|temp_587:1|none:3|temp_588:4|temp_589:4|temp_590:1|temp_591:1|temp_592:1|none:1|temp_593:64|none:4|temp_594:8|temp_595:4|temp_596:4|temp_597:4|temp_598:4|temp_599:4|temp_600:4|temp_601:1|none:3|temp_602:64|none:4|temp_603:8|temp_604:4|temp_605:4|temp_606:1|none:3|temp_607:4|temp_608:4|temp_609:1|temp_610:1|temp_611:1|none:1|temp_612:64|temp_613:8|temp_614:4|temp_615:4|temp_616:4|temp_617:4|temp_618:4|temp_619:4|temp_620:1|temp_621:1|temp_622:1|temp_623:1|temp_624:64|none:4|temp_625:8|temp_626:4|temp_627:4|temp_628:4|temp_629:4|temp_630:64|temp_631:8|temp_632:4|temp_633:4|temp_634:4|temp_635:64|none:4|temp_636:8|temp_637:4|temp_638:4|temp_639:1|temp_640:1|temp_641:1|temp_642:1|temp_643:64|none:4|temp_644:8|temp_645:4|temp_646:4|temp_647:4|temp_648:4|temp_649:64|temp_650:8|temp_651:4|temp_652:4|temp_653:4|temp_654:64|none:4|temp_655:8|temp_656:4|temp_657:4|temp_658:1|none:3|pl:4|pr:4|pres:4|temp_659:1|temp_660:1|none:2|temp_661:4|temp_662:4|temp_663:1|temp_664:1|temp_665:1|none:1|temp_666:64|temp_667:8|temp_668:4|temp_669:4|temp_670:4|temp_671:4|temp_672:4|temp_673:4|temp_674:1|none:3|ml:4|mr:4|mres:4|temp_675:1|temp_676:1|none:2|temp_677:4|temp_678:4|temp_679:1|temp_680:1|temp_681:1|none:1|temp_682:64|temp_683:8|temp_684:4|temp_685:4|temp_686:4|temp_687:4|temp_688:4|temp_689:4|temp_690:1|none:3|al:4|c:4|sum:4|temp_691:1|temp_692:1|none:2|temp_693:4|temp_694:1|none:3|temp_695:4|temp_696:1|none:3|temp_697:64|none:4|temp_698:8|temp_699:4|temp_700:4|temp_701:4|temp_702:4|temp_703:4|temp_704:4|temp_705:4|temp_706:1|none:3|temp_707:64|temp_708:8|temp_709:4|temp_710:4|temp_711:4|temp_712:1|none:3|temp_713:4|temp_714:4|temp_715:1|temp_716:1|temp_717:1|none:1|temp_718:64|none:4|temp_719:8|temp_720:4|temp_721:4|temp_722:4|temp_723:4|temp_724:4|temp_725:4|temp_726:1|none:3|temp_727:64|none:4|temp_728:8|temp_729:4|temp_730:4|temp_731:1|none:3|temp_732:4|temp_733:4|temp_734:1|temp_735:1|temp_736:1|none:1|temp_737:64|temp_738:8|temp_739:4|temp_740:4|temp_741:4|temp_742:4|temp_743:4|temp_744:4|al:4|c:4|sum:4|temp_745:1|temp_746:1|none:2|temp_747:4|temp_748:1|none:3|temp_749:4|temp_750:1|none:3|temp_751:64|temp_752:8|temp_753:4|temp_754:4|temp_755:4|temp_756:4|temp_757:4|temp_758:4|temp_759:4|temp_760:1|none:3|temp_761:64|temp_762:8|temp_763:4|temp_764:4|temp_765:4|temp_766:1|none:3|temp_767:4|temp_768:4|temp_769:1|temp_770:1|temp_771:1|none:1|temp_772:64|none:4|temp_773:8|temp_774:4|temp_775:4|temp_776:4|temp_777:4|temp_778:4|temp_779:4|temp_780:1|none:3|temp_781:64|none:4|temp_782:8|temp_783:4|temp_784:4|temp_785:1|none:3|temp_786:4|temp_787:4|temp_788:1|temp_789:1|temp_790:1|none:1|temp_791:64|temp_792:8|temp_793:4|temp_794:4|temp_795:4|temp_796:4|temp_797:4|temp_798:4|temp_799:1|temp_800:1|temp_801:1|temp_802:1|temp_803:64|none:4|temp_804:8|temp_805:4|temp_806:4|temp_807:4|temp_808:4|temp_809:64|temp_810:8|temp_811:4|temp_812:4|temp_813:4|temp_814:64|none:4|temp_815:8|temp_816:4|temp_817:4|ml:4|mr:4|mres:4|temp_818:1|temp_819:1|none:2|temp_820:4|temp_821:4|temp_822:1|temp_823:1|temp_824:1|none:1|temp_825:64|none:4|temp_826:8|temp_827:4|temp_828:4|temp_829:4|temp_830:4|temp_831:4|temp_832:4|temp_833:1|none:3|al:4|c:4|sum:4|temp_834:1|temp_835:1|none:2|temp_836:4|temp_837:1|none:3|temp_838:4|temp_839:1|none:3|temp_840:64|none:4|temp_841:8|temp_842:4|temp_843:4|temp_844:4|temp_845:4|temp_846:4|temp_847:4|temp_848:4|temp_849:1|none:3|temp_850:64|temp_851:8|temp_852:4|temp_853:4|temp_854:4|temp_855:1|none:3|temp_856:4|temp_857:4|temp_858:1|temp_859:1|temp_860:1|none:1|temp_861:64|none:4|temp_862:8|temp_863:4|temp_864:4|temp_865:4|temp_866:4|temp_867:4|temp_868:4|temp_869:1|none:3|temp_870:64|none:4|temp_871:8|temp_872:4|temp_873:4|temp_874:1|none:3|temp_875:4|temp_876:4|temp_877:1|temp_878:1|temp_879:1|none:1|temp_880:64|temp_881:8|temp_882:4|temp_883:4|temp_884:4|temp_885:4|temp_886:4|temp_887:4|al:4|c:4|sum:4|temp_888:1|temp_889:1|none:2|temp_890:4|temp_891:1|none:3|temp_892:4|temp_893:1|none:3|temp_894:64|temp_895:8|temp_896:4|temp_897:4|temp_898:4|temp_899:4|temp_900:4|temp_901:4|temp_902:4|temp_903:1|none:3|temp_904:64|temp_905:8|temp_906:4|temp_907:4|temp_908:4|temp_909:1|none:3|temp_910:4|temp_911:4|temp_912:1|temp_913:1|temp_914:1|none:1|temp_915:64|none:4|temp_916:8|temp_917:4|temp_918:4|temp_919:4|temp_920:4|temp_921:4|temp_922:4|temp_923:1|none:3|temp_924:64|none:4|temp_925:8|temp_926:4|temp_927:4|temp_928:1|none:3|temp_929:4|temp_930:4|temp_931:1|temp_932:1|temp_933:1|none:1|temp_934:64|temp_935:8|temp_936:4|temp_937:4|temp_938:4|temp_939:4|temp_940:4|temp_941:4|temp_942:1|temp_943:1|temp_944:1|temp_945:1|temp_946:64|none:4|temp_947:8|temp_948:4|temp_949:4|temp_950:4|temp_951:4|temp_952:64|temp_953:8|temp_954:4|temp_955:4|temp_956:4|temp_957:64|none:4|temp_958:8|temp_959:4|temp_960:4|temp_961:1|temp_962:1|temp_963:1|temp_964:1|temp_965:64|none:4|temp_966:8|temp_967:4|temp_968:4|temp_969:4|temp_970:4|temp_971:64|temp_972:8|temp_973:4|temp_974:4|temp_975:4|temp_976:64|none:4|temp_977:8|temp_978:4|temp_979:4|temp_980:4|temp_981:1|none:3|pl:4|pr:4|pres:4|temp_982:1|temp_983:1|none:2|temp_984:4|temp_985:4|temp_986:1|temp_987:1|temp_988:1|none:1|temp_989:64|none:4|temp_990:8|temp_991:4|temp_992:4|temp_993:4|temp_994:4|temp_995:4|temp_996:4|temp_997:1|none:3|ml:4|mr:4|mres:4|temp_998:1|temp_999:1|none:2|temp_1000:4|temp_1001:4|temp_1002:1|temp_1003:1|temp_1004:1|none:1|temp_1005:64|temp_1006:8|temp_1007:4|temp_1008:4|temp_1009:4|temp_1010:4|temp_1011:4|temp_1012:4|temp_1013:1|none:3|al:4|c:4|sum:4|temp_1014:1|temp_1015:1|none:2|temp_1016:4|temp_1017:1|none:3|temp_1018:4|temp_1019:1|none:3|temp_1020:64|none:4|temp_1021:8|temp_1022:4|temp_1023:4|temp_1024:4|temp_1025:4|temp_1026:4|temp_1027:4|temp_1028:4|temp_1029:1|none:3|temp_1030:64|temp_1031:8|temp_1032:4|temp_1033:4|temp_1034:4|temp_1035:1|none:3|temp_1036:4|temp_1037:4|temp_1038:1|temp_1039:1|temp_1040:1|none:1|temp_1041:64|none:4|temp_1042:8|temp_1043:4|temp_1044:4|temp_1045:4|temp_1046:4|temp_1047:4|temp_1048:4|temp_1049:1|none:3|temp_1050:64|none:4|temp_1051:8|temp_1052:4|temp_1053:4|temp_1054:1|none:3|temp_1055:4|temp_1056:4|temp_1057:1|temp_1058:1|temp_1059:1|none:1|temp_1060:64|temp_1061:8|temp_1062:4|temp_1063:4|temp_1064:4|temp_1065:4|temp_1066:4|temp_1067:4|al:4|c:4|sum:4|temp_1068:1|temp_1069:1|none:2|temp_1070:4|temp_1071:1|none:3|temp_1072:4|temp_1073:1|none:3|temp_1074:64|temp_1075:8|temp_1076:4|temp_1077:4|temp_1078:4|temp_1079:4|temp_1080:4|temp_1081:4|temp_1082:4|temp_1083:1|none:3|temp_1084:64|temp_1085:8|temp_1086:4|temp_1087:4|temp_1088:4|temp_1089:1|none:3|temp_1090:4|temp_1091:4|temp_1092:1|temp_1093:1|temp_1094:1|none:1|temp_1095:64|none:4|temp_1096:8|temp_1097:4|temp_1098:4|temp_1099:4|temp_1100:4|temp_1101:4|temp_1102:4|temp_1103:1|none:3|temp_1104:64|none:4|temp_1105:8|temp_1106:4|temp_1107:4|temp_1108:1|none:3|temp_1109:4|temp_1110:4|temp_1111:1|temp_1112:1|temp_1113:1|none:1|temp_1114:64|temp_1115:8|temp_1116:4|temp_1117:4|temp_1118:4|temp_1119:4|temp_1120:4|temp_1121:4|temp_1122:1|temp_1123:1|temp_1124:1|temp_1125:1|temp_1126:64|none:4|temp_1127:8|temp_1128:4|temp_1129:4|temp_1130:4|temp_1131:4|temp_1132:64|temp_1133:8|temp_1134:4|temp_1135:4|temp_1136:4|temp_1137:64|none:4|temp_1138:8|temp_1139:4|temp_1140:4|ml:4|mr:4|mres:4|temp_1141:1|temp_1142:1|none:2|temp_1143:4|temp_1144:4|temp_1145:1|temp_1146:1|temp_1147:1|none:1|temp_1148:64|none:4|temp_1149:8|temp_1150:4|temp_1151:4|temp_1152:4|temp_1153:4|temp_1154:4|temp_1155:4|temp_1156:1|none:3|al:4|c:4|sum:4|temp_1157:1|temp_1158:1|none:2|temp_1159:4|temp_1160:1|none:3|temp_1161:4|temp_1162:1|none:3|temp_1163:64|none:4|temp_1164:8|temp_1165:4|temp_1166:4|temp_1167:4|temp_1168:4|temp_1169:4|temp_1170:4|temp_1171:4|temp_1172:1|none:3|temp_1173:64|temp_1174:8|temp_1175:4|temp_1176:4|temp_1177:4|temp_1178:1|none:3|temp_1179:4|temp_1180:4|temp_1181:1|temp_1182:1|temp_1183:1|none:1|temp_1184:64|none:4|temp_1185:8|temp_1186:4|temp_1187:4|temp_1188:4|temp_1189:4|temp_1190:4|temp_1191:4|temp_1192:1|none:3|temp_1193:64|none:4|temp_1194:8|temp_1195:4|temp_1196:4|temp_1197:1|none:3|temp_1198:4|temp_1199:4|temp_1200:1|temp_1201:1|temp_1202:1|none:1|temp_1203:64|temp_1204:8|temp_1205:4|temp_1206:4|temp_1207:4|temp_1208:4|temp_1209:4|temp_1210:4|al:4|c:4|sum:4|temp_1211:1|temp_1212:1|none:2|temp_1213:4|temp_1214:1|none:3|temp_1215:4|temp_1216:1|none:3|temp_1217:64|temp_1218:8|temp_1219:4|temp_1220:4|temp_1221:4|temp_1222:4|temp_1223:4|temp_1224:4|temp_1225:4|temp_1226:1|none:3|temp_1227:64|temp_1228:8|temp_1229:4|temp_1230:4|temp_1231:4|temp_1232:1|none:3|temp_1233:4|temp_1234:4|temp_1235:1|temp_1236:1|temp_1237:1|none:1|temp_1238:64|none:4|temp_1239:8|temp_1240:4|temp_1241:4|temp_1242:4|temp_1243:4|temp_1244:4|temp_1245:4|temp_1246:1|none:3|temp_1247:64|none:4|temp_1248:8|temp_1249:4|temp_1250:4|temp_1251:1|none:3|temp_1252:4|temp_1253:4|temp_1254:1|temp_1255:1|temp_1256:1|none:1|temp_1257:64|temp_1258:8|temp_1259:4|temp_1260:4|temp_1261:4|temp_1262:4|temp_1263:4|temp_1264:4|temp_1265:1|temp_1266:1|temp_1267:1|temp_1268:1|temp_1269:64|none:4|temp_1270:8|temp_1271:4|temp_1272:4|temp_1273:4|temp_1274:4|temp_1275:64|temp_1276:8|temp_1277:4|temp_1278:4|temp_1279:4|temp_1280:64|none:4|temp_1281:8|temp_1282:4|temp_1283:4|temp_1284:1|temp_1285:1|temp_1286:1|temp_1287:1|temp_1288:64|none:4|temp_1289:8|temp_1290:4|temp_1291:4|temp_1292:4|temp_1293:4|temp_1294:64|temp_1295:8|temp_1296:4|temp_1297:4|temp_1298:4|temp_1299:64|none:4|temp_1300:8|temp_1301:4|temp_1302:4|temp_1303:64|temp_1304:8|temp_1305:4|temp_1306:1|none:3|temp_1307:4|none:4
    li      a0, -13472
    li      a0, -13472
    add     sp,a0,sp
    li      a1, 13464
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 13456
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 13472
    li      a3, 13472
    add     s0,a3,sp
                    #      alloc i32 ans_18 
                    #      alloc i32 i_18 
                    #      alloc i32 x_18 
                    #      alloc i32 y_18 
                    #      alloc i32 cur_18 
                    #      alloc i32 pl_20 
                    #      alloc i32 pr_20 
                    #      alloc i32 pres_20 
                    #      alloc i1 temp_16_22 
                    #      alloc i1 temp_17_29 
                    #      alloc i32 temp_18_32 
                    #      alloc i32 temp_19_32 
                    #      alloc i1 temp_20_32 
                    #      alloc i1 temp_21_32 
                    #      alloc i1 temp_22_32 
                    #      alloc Array:i32:[Some(16_0)] temp_23_34 
                    #      alloc ptr->i32 temp_24_34 
                    #      alloc i32 temp_25_34 
                    #      alloc i32 temp_26_34 
                    #      alloc i32 temp_27_34 
                    #      alloc i32 temp_28_31 
                    #      alloc i32 temp_29_31 
                    #      alloc i32 temp_30_31 
                    #      alloc i1 temp_31_900 
                    #      alloc i32 ml_42 
                    #      alloc i32 mr_42 
                    #      alloc i32 mres_42 
                    #      alloc i1 temp_32_1013 
                    #      alloc i1 temp_33_51 
                    #      alloc i32 temp_34_54 
                    #      alloc i32 temp_35_54 
                    #      alloc i1 temp_36_54 
                    #      alloc i1 temp_37_54 
                    #      alloc i1 temp_38_54 
                    #      alloc Array:i32:[Some(16_0)] temp_39_56 
                    #      alloc ptr->i32 temp_40_56 
                    #      alloc i32 temp_41_56 
                    #      alloc i32 temp_42_56 
                    #      alloc i32 temp_43_56 
                    #      alloc i32 temp_44_53 
                    #      alloc i32 temp_45_53 
                    #      alloc i32 temp_46_53 
                    #      alloc i1 temp_47_1422 
                    #      alloc i32 al_64 
                    #      alloc i32 c_64 
                    #      alloc i32 sum_64 
                    #      alloc i1 temp_48_1516 
                    #      alloc i1 temp_49_73 
                    #      alloc i32 temp_50_76 
                    #      alloc i1 temp_51_1699 
                    #      alloc i32 temp_52_79 
                    #      alloc i1 temp_53_79 
                    #      alloc Array:i32:[Some(16_0)] temp_54_81 
                    #      alloc ptr->i32 temp_55_81 
                    #      alloc i32 temp_56_81 
                    #      alloc i32 temp_57_81 
                    #      alloc i32 temp_58_81 
                    #      alloc i32 temp_59_75 
                    #      alloc i32 temp_60_75 
                    #      alloc i32 temp_61_75 
                    #      alloc i32 temp_62_83 
                    #      alloc i1 temp_63_1844 
                    #      alloc Array:i32:[Some(16_0)] temp_64_85 
                    #      alloc ptr->i32 temp_65_85 
                    #      alloc i32 temp_66_85 
                    #      alloc i32 temp_67_85 
                    #      alloc i32 temp_68_85 
                    #      alloc i1 temp_69_95 
                    #      alloc i32 temp_70_98 
                    #      alloc i32 temp_71_98 
                    #      alloc i1 temp_72_98 
                    #      alloc i1 temp_73_98 
                    #      alloc i1 temp_74_98 
                    #      alloc Array:i32:[Some(16_0)] temp_75_100 
                    #      alloc ptr->i32 temp_76_100 
                    #      alloc i32 temp_77_100 
                    #      alloc i32 temp_78_100 
                    #      alloc i32 temp_79_100 
                    #      alloc i32 temp_80_97 
                    #      alloc i32 temp_81_97 
                    #      alloc i32 temp_82_97 
                    #      alloc i1 temp_83_106 
                    #      alloc Array:i32:[Some(16_0)] temp_84_110 
                    #      alloc ptr->i32 temp_85_110 
                    #      alloc i32 temp_86_110 
                    #      alloc i32 temp_87_110 
                    #      alloc i1 temp_88_115 
                    #      alloc i32 temp_89_118 
                    #      alloc i32 temp_90_118 
                    #      alloc i1 temp_91_118 
                    #      alloc i1 temp_92_118 
                    #      alloc i1 temp_93_118 
                    #      alloc Array:i32:[Some(16_0)] temp_94_120 
                    #      alloc ptr->i32 temp_95_120 
                    #      alloc i32 temp_96_120 
                    #      alloc i32 temp_97_120 
                    #      alloc i32 temp_98_120 
                    #      alloc i32 temp_99_117 
                    #      alloc i32 temp_100_117 
                    #      alloc i32 temp_101_117 
                    #      alloc i32 al_129 
                    #      alloc i32 c_129 
                    #      alloc i32 sum_129 
                    #      alloc i1 temp_102_3191 
                    #      alloc i1 temp_103_138 
                    #      alloc i32 temp_104_141 
                    #      alloc i1 temp_105_3374 
                    #      alloc i32 temp_106_144 
                    #      alloc i1 temp_107_144 
                    #      alloc Array:i32:[Some(16_0)] temp_108_146 
                    #      alloc ptr->i32 temp_109_146 
                    #      alloc i32 temp_110_146 
                    #      alloc i32 temp_111_146 
                    #      alloc i32 temp_112_146 
                    #      alloc i32 temp_113_140 
                    #      alloc i32 temp_114_140 
                    #      alloc i32 temp_115_140 
                    #      alloc i32 temp_116_148 
                    #      alloc i1 temp_117_3519 
                    #      alloc Array:i32:[Some(16_0)] temp_118_150 
                    #      alloc ptr->i32 temp_119_150 
                    #      alloc i32 temp_120_150 
                    #      alloc i32 temp_121_150 
                    #      alloc i32 temp_122_150 
                    #      alloc i1 temp_123_160 
                    #      alloc i32 temp_124_163 
                    #      alloc i32 temp_125_163 
                    #      alloc i1 temp_126_163 
                    #      alloc i1 temp_127_163 
                    #      alloc i1 temp_128_163 
                    #      alloc Array:i32:[Some(16_0)] temp_129_165 
                    #      alloc ptr->i32 temp_130_165 
                    #      alloc i32 temp_131_165 
                    #      alloc i32 temp_132_165 
                    #      alloc i32 temp_133_165 
                    #      alloc i32 temp_134_162 
                    #      alloc i32 temp_135_162 
                    #      alloc i32 temp_136_162 
                    #      alloc i1 temp_137_171 
                    #      alloc Array:i32:[Some(16_0)] temp_138_175 
                    #      alloc ptr->i32 temp_139_175 
                    #      alloc i32 temp_140_175 
                    #      alloc i32 temp_141_175 
                    #      alloc i1 temp_142_180 
                    #      alloc i32 temp_143_183 
                    #      alloc i32 temp_144_183 
                    #      alloc i1 temp_145_183 
                    #      alloc i1 temp_146_183 
                    #      alloc i1 temp_147_183 
                    #      alloc Array:i32:[Some(16_0)] temp_148_185 
                    #      alloc ptr->i32 temp_149_185 
                    #      alloc i32 temp_150_185 
                    #      alloc i32 temp_151_185 
                    #      alloc i32 temp_152_185 
                    #      alloc i32 temp_153_182 
                    #      alloc i32 temp_154_182 
                    #      alloc i32 temp_155_182 
                    #      alloc i1 temp_156_196 
                    #      alloc i1 temp_157_199 
                    #      alloc i1 temp_158_205 
                    #      alloc i1 temp_159_208 
                    #      alloc Array:i32:[Some(16_0)] temp_160_210 
                    #      alloc ptr->i32 temp_161_210 
                    #      alloc i32 temp_162_210 
                    #      alloc i32 temp_163_210 
                    #      alloc i32 temp_164_210 
                    #      alloc i32 temp_165_210 
                    #      alloc Array:i32:[Some(16_0)] temp_166_210 
                    #      alloc ptr->i32 temp_167_210 
                    #      alloc i32 temp_168_210 
                    #      alloc i32 temp_169_210 
                    #      alloc i32 temp_170_210 
                    #      alloc Array:i32:[Some(16_0)] temp_171_213 
                    #      alloc ptr->i32 temp_172_213 
                    #      alloc i32 temp_173_213 
                    #      alloc i32 temp_174_213 
                    #      alloc i32 ml_220 
                    #      alloc i32 mr_220 
                    #      alloc i32 mres_220 
                    #      alloc i1 temp_175_5483 
                    #      alloc i1 temp_176_229 
                    #      alloc i32 temp_177_232 
                    #      alloc i32 temp_178_232 
                    #      alloc i1 temp_179_232 
                    #      alloc i1 temp_180_232 
                    #      alloc i1 temp_181_232 
                    #      alloc Array:i32:[Some(16_0)] temp_182_234 
                    #      alloc ptr->i32 temp_183_234 
                    #      alloc i32 temp_184_234 
                    #      alloc i32 temp_185_234 
                    #      alloc i32 temp_186_234 
                    #      alloc i32 temp_187_231 
                    #      alloc i32 temp_188_231 
                    #      alloc i32 temp_189_231 
                    #      alloc i1 temp_190_5892 
                    #      alloc i32 al_242 
                    #      alloc i32 c_242 
                    #      alloc i32 sum_242 
                    #      alloc i1 temp_191_5986 
                    #      alloc i1 temp_192_251 
                    #      alloc i32 temp_193_254 
                    #      alloc i1 temp_194_6169 
                    #      alloc i32 temp_195_257 
                    #      alloc i1 temp_196_257 
                    #      alloc Array:i32:[Some(16_0)] temp_197_259 
                    #      alloc ptr->i32 temp_198_259 
                    #      alloc i32 temp_199_259 
                    #      alloc i32 temp_200_259 
                    #      alloc i32 temp_201_259 
                    #      alloc i32 temp_202_253 
                    #      alloc i32 temp_203_253 
                    #      alloc i32 temp_204_253 
                    #      alloc i32 temp_205_261 
                    #      alloc i1 temp_206_6314 
                    #      alloc Array:i32:[Some(16_0)] temp_207_263 
                    #      alloc ptr->i32 temp_208_263 
                    #      alloc i32 temp_209_263 
                    #      alloc i32 temp_210_263 
                    #      alloc i32 temp_211_263 
                    #      alloc i1 temp_212_273 
                    #      alloc i32 temp_213_276 
                    #      alloc i32 temp_214_276 
                    #      alloc i1 temp_215_276 
                    #      alloc i1 temp_216_276 
                    #      alloc i1 temp_217_276 
                    #      alloc Array:i32:[Some(16_0)] temp_218_278 
                    #      alloc ptr->i32 temp_219_278 
                    #      alloc i32 temp_220_278 
                    #      alloc i32 temp_221_278 
                    #      alloc i32 temp_222_278 
                    #      alloc i32 temp_223_275 
                    #      alloc i32 temp_224_275 
                    #      alloc i32 temp_225_275 
                    #      alloc i1 temp_226_284 
                    #      alloc Array:i32:[Some(16_0)] temp_227_288 
                    #      alloc ptr->i32 temp_228_288 
                    #      alloc i32 temp_229_288 
                    #      alloc i32 temp_230_288 
                    #      alloc i1 temp_231_293 
                    #      alloc i32 temp_232_296 
                    #      alloc i32 temp_233_296 
                    #      alloc i1 temp_234_296 
                    #      alloc i1 temp_235_296 
                    #      alloc i1 temp_236_296 
                    #      alloc Array:i32:[Some(16_0)] temp_237_298 
                    #      alloc ptr->i32 temp_238_298 
                    #      alloc i32 temp_239_298 
                    #      alloc i32 temp_240_298 
                    #      alloc i32 temp_241_298 
                    #      alloc i32 temp_242_295 
                    #      alloc i32 temp_243_295 
                    #      alloc i32 temp_244_295 
                    #      alloc i32 al_307 
                    #      alloc i32 c_307 
                    #      alloc i32 sum_307 
                    #      alloc i1 temp_245_7661 
                    #      alloc i1 temp_246_316 
                    #      alloc i32 temp_247_319 
                    #      alloc i1 temp_248_7844 
                    #      alloc i32 temp_249_322 
                    #      alloc i1 temp_250_322 
                    #      alloc Array:i32:[Some(16_0)] temp_251_324 
                    #      alloc ptr->i32 temp_252_324 
                    #      alloc i32 temp_253_324 
                    #      alloc i32 temp_254_324 
                    #      alloc i32 temp_255_324 
                    #      alloc i32 temp_256_318 
                    #      alloc i32 temp_257_318 
                    #      alloc i32 temp_258_318 
                    #      alloc i32 temp_259_326 
                    #      alloc i1 temp_260_7989 
                    #      alloc Array:i32:[Some(16_0)] temp_261_328 
                    #      alloc ptr->i32 temp_262_328 
                    #      alloc i32 temp_263_328 
                    #      alloc i32 temp_264_328 
                    #      alloc i32 temp_265_328 
                    #      alloc i1 temp_266_338 
                    #      alloc i32 temp_267_341 
                    #      alloc i32 temp_268_341 
                    #      alloc i1 temp_269_341 
                    #      alloc i1 temp_270_341 
                    #      alloc i1 temp_271_341 
                    #      alloc Array:i32:[Some(16_0)] temp_272_343 
                    #      alloc ptr->i32 temp_273_343 
                    #      alloc i32 temp_274_343 
                    #      alloc i32 temp_275_343 
                    #      alloc i32 temp_276_343 
                    #      alloc i32 temp_277_340 
                    #      alloc i32 temp_278_340 
                    #      alloc i32 temp_279_340 
                    #      alloc i1 temp_280_349 
                    #      alloc Array:i32:[Some(16_0)] temp_281_353 
                    #      alloc ptr->i32 temp_282_353 
                    #      alloc i32 temp_283_353 
                    #      alloc i32 temp_284_353 
                    #      alloc i1 temp_285_358 
                    #      alloc i32 temp_286_361 
                    #      alloc i32 temp_287_361 
                    #      alloc i1 temp_288_361 
                    #      alloc i1 temp_289_361 
                    #      alloc i1 temp_290_361 
                    #      alloc Array:i32:[Some(16_0)] temp_291_363 
                    #      alloc ptr->i32 temp_292_363 
                    #      alloc i32 temp_293_363 
                    #      alloc i32 temp_294_363 
                    #      alloc i32 temp_295_363 
                    #      alloc i32 temp_296_360 
                    #      alloc i32 temp_297_360 
                    #      alloc i32 temp_298_360 
                    #      alloc i1 temp_299_374 
                    #      alloc i1 temp_300_377 
                    #      alloc i1 temp_301_383 
                    #      alloc i1 temp_302_386 
                    #      alloc Array:i32:[Some(16_0)] temp_303_388 
                    #      alloc ptr->i32 temp_304_388 
                    #      alloc i32 temp_305_388 
                    #      alloc i32 temp_306_388 
                    #      alloc i32 temp_307_388 
                    #      alloc i32 temp_308_388 
                    #      alloc Array:i32:[Some(16_0)] temp_309_388 
                    #      alloc ptr->i32 temp_310_388 
                    #      alloc i32 temp_311_388 
                    #      alloc i32 temp_312_388 
                    #      alloc i32 temp_313_388 
                    #      alloc Array:i32:[Some(16_0)] temp_314_391 
                    #      alloc ptr->i32 temp_315_391 
                    #      alloc i32 temp_316_391 
                    #      alloc i32 temp_317_391 
                    #      alloc i1 temp_318_400 
                    #      alloc i1 temp_319_403 
                    #      alloc i1 temp_320_409 
                    #      alloc i1 temp_321_412 
                    #      alloc Array:i32:[Some(16_0)] temp_322_414 
                    #      alloc ptr->i32 temp_323_414 
                    #      alloc i32 temp_324_414 
                    #      alloc i32 temp_325_414 
                    #      alloc i32 temp_326_414 
                    #      alloc i32 temp_327_414 
                    #      alloc Array:i32:[Some(16_0)] temp_328_414 
                    #      alloc ptr->i32 temp_329_414 
                    #      alloc i32 temp_330_414 
                    #      alloc i32 temp_331_414 
                    #      alloc i32 temp_332_414 
                    #      alloc Array:i32:[Some(16_0)] temp_333_417 
                    #      alloc ptr->i32 temp_334_417 
                    #      alloc i32 temp_335_417 
                    #      alloc i32 temp_336_417 
                    #      alloc i32 pl_425 
                    #      alloc i32 pr_425 
                    #      alloc i32 pres_425 
                    #      alloc i1 temp_337_427 
                    #      alloc i1 temp_338_434 
                    #      alloc i32 temp_339_437 
                    #      alloc i32 temp_340_437 
                    #      alloc i1 temp_341_437 
                    #      alloc i1 temp_342_437 
                    #      alloc i1 temp_343_437 
                    #      alloc Array:i32:[Some(16_0)] temp_344_439 
                    #      alloc ptr->i32 temp_345_439 
                    #      alloc i32 temp_346_439 
                    #      alloc i32 temp_347_439 
                    #      alloc i32 temp_348_439 
                    #      alloc i32 temp_349_436 
                    #      alloc i32 temp_350_436 
                    #      alloc i32 temp_351_436 
                    #      alloc i1 temp_352_11025 
                    #      alloc i32 ml_447 
                    #      alloc i32 mr_447 
                    #      alloc i32 mres_447 
                    #      alloc i1 temp_353_11138 
                    #      alloc i1 temp_354_456 
                    #      alloc i32 temp_355_459 
                    #      alloc i32 temp_356_459 
                    #      alloc i1 temp_357_459 
                    #      alloc i1 temp_358_459 
                    #      alloc i1 temp_359_459 
                    #      alloc Array:i32:[Some(16_0)] temp_360_461 
                    #      alloc ptr->i32 temp_361_461 
                    #      alloc i32 temp_362_461 
                    #      alloc i32 temp_363_461 
                    #      alloc i32 temp_364_461 
                    #      alloc i32 temp_365_458 
                    #      alloc i32 temp_366_458 
                    #      alloc i32 temp_367_458 
                    #      alloc i1 temp_368_11547 
                    #      alloc i32 al_469 
                    #      alloc i32 c_469 
                    #      alloc i32 sum_469 
                    #      alloc i1 temp_369_11641 
                    #      alloc i1 temp_370_478 
                    #      alloc i32 temp_371_481 
                    #      alloc i1 temp_372_11824 
                    #      alloc i32 temp_373_484 
                    #      alloc i1 temp_374_484 
                    #      alloc Array:i32:[Some(16_0)] temp_375_486 
                    #      alloc ptr->i32 temp_376_486 
                    #      alloc i32 temp_377_486 
                    #      alloc i32 temp_378_486 
                    #      alloc i32 temp_379_486 
                    #      alloc i32 temp_380_480 
                    #      alloc i32 temp_381_480 
                    #      alloc i32 temp_382_480 
                    #      alloc i32 temp_383_488 
                    #      alloc i1 temp_384_11969 
                    #      alloc Array:i32:[Some(16_0)] temp_385_490 
                    #      alloc ptr->i32 temp_386_490 
                    #      alloc i32 temp_387_490 
                    #      alloc i32 temp_388_490 
                    #      alloc i32 temp_389_490 
                    #      alloc i1 temp_390_500 
                    #      alloc i32 temp_391_503 
                    #      alloc i32 temp_392_503 
                    #      alloc i1 temp_393_503 
                    #      alloc i1 temp_394_503 
                    #      alloc i1 temp_395_503 
                    #      alloc Array:i32:[Some(16_0)] temp_396_505 
                    #      alloc ptr->i32 temp_397_505 
                    #      alloc i32 temp_398_505 
                    #      alloc i32 temp_399_505 
                    #      alloc i32 temp_400_505 
                    #      alloc i32 temp_401_502 
                    #      alloc i32 temp_402_502 
                    #      alloc i32 temp_403_502 
                    #      alloc i1 temp_404_511 
                    #      alloc Array:i32:[Some(16_0)] temp_405_515 
                    #      alloc ptr->i32 temp_406_515 
                    #      alloc i32 temp_407_515 
                    #      alloc i32 temp_408_515 
                    #      alloc i1 temp_409_520 
                    #      alloc i32 temp_410_523 
                    #      alloc i32 temp_411_523 
                    #      alloc i1 temp_412_523 
                    #      alloc i1 temp_413_523 
                    #      alloc i1 temp_414_523 
                    #      alloc Array:i32:[Some(16_0)] temp_415_525 
                    #      alloc ptr->i32 temp_416_525 
                    #      alloc i32 temp_417_525 
                    #      alloc i32 temp_418_525 
                    #      alloc i32 temp_419_525 
                    #      alloc i32 temp_420_522 
                    #      alloc i32 temp_421_522 
                    #      alloc i32 temp_422_522 
                    #      alloc i32 al_534 
                    #      alloc i32 c_534 
                    #      alloc i32 sum_534 
                    #      alloc i1 temp_423_13316 
                    #      alloc i1 temp_424_543 
                    #      alloc i32 temp_425_546 
                    #      alloc i1 temp_426_13499 
                    #      alloc i32 temp_427_549 
                    #      alloc i1 temp_428_549 
                    #      alloc Array:i32:[Some(16_0)] temp_429_551 
                    #      alloc ptr->i32 temp_430_551 
                    #      alloc i32 temp_431_551 
                    #      alloc i32 temp_432_551 
                    #      alloc i32 temp_433_551 
                    #      alloc i32 temp_434_545 
                    #      alloc i32 temp_435_545 
                    #      alloc i32 temp_436_545 
                    #      alloc i32 temp_437_553 
                    #      alloc i1 temp_438_13644 
                    #      alloc Array:i32:[Some(16_0)] temp_439_555 
                    #      alloc ptr->i32 temp_440_555 
                    #      alloc i32 temp_441_555 
                    #      alloc i32 temp_442_555 
                    #      alloc i32 temp_443_555 
                    #      alloc i1 temp_444_565 
                    #      alloc i32 temp_445_568 
                    #      alloc i32 temp_446_568 
                    #      alloc i1 temp_447_568 
                    #      alloc i1 temp_448_568 
                    #      alloc i1 temp_449_568 
                    #      alloc Array:i32:[Some(16_0)] temp_450_570 
                    #      alloc ptr->i32 temp_451_570 
                    #      alloc i32 temp_452_570 
                    #      alloc i32 temp_453_570 
                    #      alloc i32 temp_454_570 
                    #      alloc i32 temp_455_567 
                    #      alloc i32 temp_456_567 
                    #      alloc i32 temp_457_567 
                    #      alloc i1 temp_458_576 
                    #      alloc Array:i32:[Some(16_0)] temp_459_580 
                    #      alloc ptr->i32 temp_460_580 
                    #      alloc i32 temp_461_580 
                    #      alloc i32 temp_462_580 
                    #      alloc i1 temp_463_585 
                    #      alloc i32 temp_464_588 
                    #      alloc i32 temp_465_588 
                    #      alloc i1 temp_466_588 
                    #      alloc i1 temp_467_588 
                    #      alloc i1 temp_468_588 
                    #      alloc Array:i32:[Some(16_0)] temp_469_590 
                    #      alloc ptr->i32 temp_470_590 
                    #      alloc i32 temp_471_590 
                    #      alloc i32 temp_472_590 
                    #      alloc i32 temp_473_590 
                    #      alloc i32 temp_474_587 
                    #      alloc i32 temp_475_587 
                    #      alloc i32 temp_476_587 
                    #      alloc i1 temp_477_601 
                    #      alloc i1 temp_478_604 
                    #      alloc i1 temp_479_610 
                    #      alloc i1 temp_480_613 
                    #      alloc Array:i32:[Some(16_0)] temp_481_615 
                    #      alloc ptr->i32 temp_482_615 
                    #      alloc i32 temp_483_615 
                    #      alloc i32 temp_484_615 
                    #      alloc i32 temp_485_615 
                    #      alloc i32 temp_486_615 
                    #      alloc Array:i32:[Some(16_0)] temp_487_615 
                    #      alloc ptr->i32 temp_488_615 
                    #      alloc i32 temp_489_615 
                    #      alloc i32 temp_490_615 
                    #      alloc i32 temp_491_615 
                    #      alloc Array:i32:[Some(16_0)] temp_492_618 
                    #      alloc ptr->i32 temp_493_618 
                    #      alloc i32 temp_494_618 
                    #      alloc i32 temp_495_618 
                    #      alloc i32 ml_625 
                    #      alloc i32 mr_625 
                    #      alloc i32 mres_625 
                    #      alloc i1 temp_496_15608 
                    #      alloc i1 temp_497_634 
                    #      alloc i32 temp_498_637 
                    #      alloc i32 temp_499_637 
                    #      alloc i1 temp_500_637 
                    #      alloc i1 temp_501_637 
                    #      alloc i1 temp_502_637 
                    #      alloc Array:i32:[Some(16_0)] temp_503_639 
                    #      alloc ptr->i32 temp_504_639 
                    #      alloc i32 temp_505_639 
                    #      alloc i32 temp_506_639 
                    #      alloc i32 temp_507_639 
                    #      alloc i32 temp_508_636 
                    #      alloc i32 temp_509_636 
                    #      alloc i32 temp_510_636 
                    #      alloc i1 temp_511_16017 
                    #      alloc i32 al_647 
                    #      alloc i32 c_647 
                    #      alloc i32 sum_647 
                    #      alloc i1 temp_512_16111 
                    #      alloc i1 temp_513_656 
                    #      alloc i32 temp_514_659 
                    #      alloc i1 temp_515_16294 
                    #      alloc i32 temp_516_662 
                    #      alloc i1 temp_517_662 
                    #      alloc Array:i32:[Some(16_0)] temp_518_664 
                    #      alloc ptr->i32 temp_519_664 
                    #      alloc i32 temp_520_664 
                    #      alloc i32 temp_521_664 
                    #      alloc i32 temp_522_664 
                    #      alloc i32 temp_523_658 
                    #      alloc i32 temp_524_658 
                    #      alloc i32 temp_525_658 
                    #      alloc i32 temp_526_666 
                    #      alloc i1 temp_527_16439 
                    #      alloc Array:i32:[Some(16_0)] temp_528_668 
                    #      alloc ptr->i32 temp_529_668 
                    #      alloc i32 temp_530_668 
                    #      alloc i32 temp_531_668 
                    #      alloc i32 temp_532_668 
                    #      alloc i1 temp_533_678 
                    #      alloc i32 temp_534_681 
                    #      alloc i32 temp_535_681 
                    #      alloc i1 temp_536_681 
                    #      alloc i1 temp_537_681 
                    #      alloc i1 temp_538_681 
                    #      alloc Array:i32:[Some(16_0)] temp_539_683 
                    #      alloc ptr->i32 temp_540_683 
                    #      alloc i32 temp_541_683 
                    #      alloc i32 temp_542_683 
                    #      alloc i32 temp_543_683 
                    #      alloc i32 temp_544_680 
                    #      alloc i32 temp_545_680 
                    #      alloc i32 temp_546_680 
                    #      alloc i1 temp_547_689 
                    #      alloc Array:i32:[Some(16_0)] temp_548_693 
                    #      alloc ptr->i32 temp_549_693 
                    #      alloc i32 temp_550_693 
                    #      alloc i32 temp_551_693 
                    #      alloc i1 temp_552_698 
                    #      alloc i32 temp_553_701 
                    #      alloc i32 temp_554_701 
                    #      alloc i1 temp_555_701 
                    #      alloc i1 temp_556_701 
                    #      alloc i1 temp_557_701 
                    #      alloc Array:i32:[Some(16_0)] temp_558_703 
                    #      alloc ptr->i32 temp_559_703 
                    #      alloc i32 temp_560_703 
                    #      alloc i32 temp_561_703 
                    #      alloc i32 temp_562_703 
                    #      alloc i32 temp_563_700 
                    #      alloc i32 temp_564_700 
                    #      alloc i32 temp_565_700 
                    #      alloc i32 al_712 
                    #      alloc i32 c_712 
                    #      alloc i32 sum_712 
                    #      alloc i1 temp_566_17786 
                    #      alloc i1 temp_567_721 
                    #      alloc i32 temp_568_724 
                    #      alloc i1 temp_569_17969 
                    #      alloc i32 temp_570_727 
                    #      alloc i1 temp_571_727 
                    #      alloc Array:i32:[Some(16_0)] temp_572_729 
                    #      alloc ptr->i32 temp_573_729 
                    #      alloc i32 temp_574_729 
                    #      alloc i32 temp_575_729 
                    #      alloc i32 temp_576_729 
                    #      alloc i32 temp_577_723 
                    #      alloc i32 temp_578_723 
                    #      alloc i32 temp_579_723 
                    #      alloc i32 temp_580_731 
                    #      alloc i1 temp_581_18114 
                    #      alloc Array:i32:[Some(16_0)] temp_582_733 
                    #      alloc ptr->i32 temp_583_733 
                    #      alloc i32 temp_584_733 
                    #      alloc i32 temp_585_733 
                    #      alloc i32 temp_586_733 
                    #      alloc i1 temp_587_743 
                    #      alloc i32 temp_588_746 
                    #      alloc i32 temp_589_746 
                    #      alloc i1 temp_590_746 
                    #      alloc i1 temp_591_746 
                    #      alloc i1 temp_592_746 
                    #      alloc Array:i32:[Some(16_0)] temp_593_748 
                    #      alloc ptr->i32 temp_594_748 
                    #      alloc i32 temp_595_748 
                    #      alloc i32 temp_596_748 
                    #      alloc i32 temp_597_748 
                    #      alloc i32 temp_598_745 
                    #      alloc i32 temp_599_745 
                    #      alloc i32 temp_600_745 
                    #      alloc i1 temp_601_754 
                    #      alloc Array:i32:[Some(16_0)] temp_602_758 
                    #      alloc ptr->i32 temp_603_758 
                    #      alloc i32 temp_604_758 
                    #      alloc i32 temp_605_758 
                    #      alloc i1 temp_606_763 
                    #      alloc i32 temp_607_766 
                    #      alloc i32 temp_608_766 
                    #      alloc i1 temp_609_766 
                    #      alloc i1 temp_610_766 
                    #      alloc i1 temp_611_766 
                    #      alloc Array:i32:[Some(16_0)] temp_612_768 
                    #      alloc ptr->i32 temp_613_768 
                    #      alloc i32 temp_614_768 
                    #      alloc i32 temp_615_768 
                    #      alloc i32 temp_616_768 
                    #      alloc i32 temp_617_765 
                    #      alloc i32 temp_618_765 
                    #      alloc i32 temp_619_765 
                    #      alloc i1 temp_620_779 
                    #      alloc i1 temp_621_782 
                    #      alloc i1 temp_622_788 
                    #      alloc i1 temp_623_791 
                    #      alloc Array:i32:[Some(16_0)] temp_624_793 
                    #      alloc ptr->i32 temp_625_793 
                    #      alloc i32 temp_626_793 
                    #      alloc i32 temp_627_793 
                    #      alloc i32 temp_628_793 
                    #      alloc i32 temp_629_793 
                    #      alloc Array:i32:[Some(16_0)] temp_630_793 
                    #      alloc ptr->i32 temp_631_793 
                    #      alloc i32 temp_632_793 
                    #      alloc i32 temp_633_793 
                    #      alloc i32 temp_634_793 
                    #      alloc Array:i32:[Some(16_0)] temp_635_796 
                    #      alloc ptr->i32 temp_636_796 
                    #      alloc i32 temp_637_796 
                    #      alloc i32 temp_638_796 
                    #      alloc i1 temp_639_805 
                    #      alloc i1 temp_640_808 
                    #      alloc i1 temp_641_814 
                    #      alloc i1 temp_642_817 
                    #      alloc Array:i32:[Some(16_0)] temp_643_819 
                    #      alloc ptr->i32 temp_644_819 
                    #      alloc i32 temp_645_819 
                    #      alloc i32 temp_646_819 
                    #      alloc i32 temp_647_819 
                    #      alloc i32 temp_648_819 
                    #      alloc Array:i32:[Some(16_0)] temp_649_819 
                    #      alloc ptr->i32 temp_650_819 
                    #      alloc i32 temp_651_819 
                    #      alloc i32 temp_652_819 
                    #      alloc i32 temp_653_819 
                    #      alloc Array:i32:[Some(16_0)] temp_654_822 
                    #      alloc ptr->i32 temp_655_822 
                    #      alloc i32 temp_656_822 
                    #      alloc i32 temp_657_822 
                    #      alloc i1 temp_658_831 
                    #      alloc i32 pl_834 
                    #      alloc i32 pr_834 
                    #      alloc i32 pres_834 
                    #      alloc i1 temp_659_836 
                    #      alloc i1 temp_660_843 
                    #      alloc i32 temp_661_846 
                    #      alloc i32 temp_662_846 
                    #      alloc i1 temp_663_846 
                    #      alloc i1 temp_664_846 
                    #      alloc i1 temp_665_846 
                    #      alloc Array:i32:[Some(16_0)] temp_666_848 
                    #      alloc ptr->i32 temp_667_848 
                    #      alloc i32 temp_668_848 
                    #      alloc i32 temp_669_848 
                    #      alloc i32 temp_670_848 
                    #      alloc i32 temp_671_845 
                    #      alloc i32 temp_672_845 
                    #      alloc i32 temp_673_845 
                    #      alloc i1 temp_674_21217 
                    #      alloc i32 ml_856 
                    #      alloc i32 mr_856 
                    #      alloc i32 mres_856 
                    #      alloc i1 temp_675_21330 
                    #      alloc i1 temp_676_865 
                    #      alloc i32 temp_677_868 
                    #      alloc i32 temp_678_868 
                    #      alloc i1 temp_679_868 
                    #      alloc i1 temp_680_868 
                    #      alloc i1 temp_681_868 
                    #      alloc Array:i32:[Some(16_0)] temp_682_870 
                    #      alloc ptr->i32 temp_683_870 
                    #      alloc i32 temp_684_870 
                    #      alloc i32 temp_685_870 
                    #      alloc i32 temp_686_870 
                    #      alloc i32 temp_687_867 
                    #      alloc i32 temp_688_867 
                    #      alloc i32 temp_689_867 
                    #      alloc i1 temp_690_21739 
                    #      alloc i32 al_878 
                    #      alloc i32 c_878 
                    #      alloc i32 sum_878 
                    #      alloc i1 temp_691_21833 
                    #      alloc i1 temp_692_887 
                    #      alloc i32 temp_693_890 
                    #      alloc i1 temp_694_22016 
                    #      alloc i32 temp_695_893 
                    #      alloc i1 temp_696_893 
                    #      alloc Array:i32:[Some(16_0)] temp_697_895 
                    #      alloc ptr->i32 temp_698_895 
                    #      alloc i32 temp_699_895 
                    #      alloc i32 temp_700_895 
                    #      alloc i32 temp_701_895 
                    #      alloc i32 temp_702_889 
                    #      alloc i32 temp_703_889 
                    #      alloc i32 temp_704_889 
                    #      alloc i32 temp_705_897 
                    #      alloc i1 temp_706_22161 
                    #      alloc Array:i32:[Some(16_0)] temp_707_899 
                    #      alloc ptr->i32 temp_708_899 
                    #      alloc i32 temp_709_899 
                    #      alloc i32 temp_710_899 
                    #      alloc i32 temp_711_899 
                    #      alloc i1 temp_712_909 
                    #      alloc i32 temp_713_912 
                    #      alloc i32 temp_714_912 
                    #      alloc i1 temp_715_912 
                    #      alloc i1 temp_716_912 
                    #      alloc i1 temp_717_912 
                    #      alloc Array:i32:[Some(16_0)] temp_718_914 
                    #      alloc ptr->i32 temp_719_914 
                    #      alloc i32 temp_720_914 
                    #      alloc i32 temp_721_914 
                    #      alloc i32 temp_722_914 
                    #      alloc i32 temp_723_911 
                    #      alloc i32 temp_724_911 
                    #      alloc i32 temp_725_911 
                    #      alloc i1 temp_726_920 
                    #      alloc Array:i32:[Some(16_0)] temp_727_924 
                    #      alloc ptr->i32 temp_728_924 
                    #      alloc i32 temp_729_924 
                    #      alloc i32 temp_730_924 
                    #      alloc i1 temp_731_929 
                    #      alloc i32 temp_732_932 
                    #      alloc i32 temp_733_932 
                    #      alloc i1 temp_734_932 
                    #      alloc i1 temp_735_932 
                    #      alloc i1 temp_736_932 
                    #      alloc Array:i32:[Some(16_0)] temp_737_934 
                    #      alloc ptr->i32 temp_738_934 
                    #      alloc i32 temp_739_934 
                    #      alloc i32 temp_740_934 
                    #      alloc i32 temp_741_934 
                    #      alloc i32 temp_742_931 
                    #      alloc i32 temp_743_931 
                    #      alloc i32 temp_744_931 
                    #      alloc i32 al_943 
                    #      alloc i32 c_943 
                    #      alloc i32 sum_943 
                    #      alloc i1 temp_745_23508 
                    #      alloc i1 temp_746_952 
                    #      alloc i32 temp_747_955 
                    #      alloc i1 temp_748_23691 
                    #      alloc i32 temp_749_958 
                    #      alloc i1 temp_750_958 
                    #      alloc Array:i32:[Some(16_0)] temp_751_960 
                    #      alloc ptr->i32 temp_752_960 
                    #      alloc i32 temp_753_960 
                    #      alloc i32 temp_754_960 
                    #      alloc i32 temp_755_960 
                    #      alloc i32 temp_756_954 
                    #      alloc i32 temp_757_954 
                    #      alloc i32 temp_758_954 
                    #      alloc i32 temp_759_962 
                    #      alloc i1 temp_760_23836 
                    #      alloc Array:i32:[Some(16_0)] temp_761_964 
                    #      alloc ptr->i32 temp_762_964 
                    #      alloc i32 temp_763_964 
                    #      alloc i32 temp_764_964 
                    #      alloc i32 temp_765_964 
                    #      alloc i1 temp_766_974 
                    #      alloc i32 temp_767_977 
                    #      alloc i32 temp_768_977 
                    #      alloc i1 temp_769_977 
                    #      alloc i1 temp_770_977 
                    #      alloc i1 temp_771_977 
                    #      alloc Array:i32:[Some(16_0)] temp_772_979 
                    #      alloc ptr->i32 temp_773_979 
                    #      alloc i32 temp_774_979 
                    #      alloc i32 temp_775_979 
                    #      alloc i32 temp_776_979 
                    #      alloc i32 temp_777_976 
                    #      alloc i32 temp_778_976 
                    #      alloc i32 temp_779_976 
                    #      alloc i1 temp_780_985 
                    #      alloc Array:i32:[Some(16_0)] temp_781_989 
                    #      alloc ptr->i32 temp_782_989 
                    #      alloc i32 temp_783_989 
                    #      alloc i32 temp_784_989 
                    #      alloc i1 temp_785_994 
                    #      alloc i32 temp_786_997 
                    #      alloc i32 temp_787_997 
                    #      alloc i1 temp_788_997 
                    #      alloc i1 temp_789_997 
                    #      alloc i1 temp_790_997 
                    #      alloc Array:i32:[Some(16_0)] temp_791_999 
                    #      alloc ptr->i32 temp_792_999 
                    #      alloc i32 temp_793_999 
                    #      alloc i32 temp_794_999 
                    #      alloc i32 temp_795_999 
                    #      alloc i32 temp_796_996 
                    #      alloc i32 temp_797_996 
                    #      alloc i32 temp_798_996 
                    #      alloc i1 temp_799_1010 
                    #      alloc i1 temp_800_1013 
                    #      alloc i1 temp_801_1019 
                    #      alloc i1 temp_802_1022 
                    #      alloc Array:i32:[Some(16_0)] temp_803_1024 
                    #      alloc ptr->i32 temp_804_1024 
                    #      alloc i32 temp_805_1024 
                    #      alloc i32 temp_806_1024 
                    #      alloc i32 temp_807_1024 
                    #      alloc i32 temp_808_1024 
                    #      alloc Array:i32:[Some(16_0)] temp_809_1024 
                    #      alloc ptr->i32 temp_810_1024 
                    #      alloc i32 temp_811_1024 
                    #      alloc i32 temp_812_1024 
                    #      alloc i32 temp_813_1024 
                    #      alloc Array:i32:[Some(16_0)] temp_814_1027 
                    #      alloc ptr->i32 temp_815_1027 
                    #      alloc i32 temp_816_1027 
                    #      alloc i32 temp_817_1027 
                    #      alloc i32 ml_1034 
                    #      alloc i32 mr_1034 
                    #      alloc i32 mres_1034 
                    #      alloc i1 temp_818_25800 
                    #      alloc i1 temp_819_1043 
                    #      alloc i32 temp_820_1046 
                    #      alloc i32 temp_821_1046 
                    #      alloc i1 temp_822_1046 
                    #      alloc i1 temp_823_1046 
                    #      alloc i1 temp_824_1046 
                    #      alloc Array:i32:[Some(16_0)] temp_825_1048 
                    #      alloc ptr->i32 temp_826_1048 
                    #      alloc i32 temp_827_1048 
                    #      alloc i32 temp_828_1048 
                    #      alloc i32 temp_829_1048 
                    #      alloc i32 temp_830_1045 
                    #      alloc i32 temp_831_1045 
                    #      alloc i32 temp_832_1045 
                    #      alloc i1 temp_833_26209 
                    #      alloc i32 al_1056 
                    #      alloc i32 c_1056 
                    #      alloc i32 sum_1056 
                    #      alloc i1 temp_834_26303 
                    #      alloc i1 temp_835_1065 
                    #      alloc i32 temp_836_1068 
                    #      alloc i1 temp_837_26486 
                    #      alloc i32 temp_838_1071 
                    #      alloc i1 temp_839_1071 
                    #      alloc Array:i32:[Some(16_0)] temp_840_1073 
                    #      alloc ptr->i32 temp_841_1073 
                    #      alloc i32 temp_842_1073 
                    #      alloc i32 temp_843_1073 
                    #      alloc i32 temp_844_1073 
                    #      alloc i32 temp_845_1067 
                    #      alloc i32 temp_846_1067 
                    #      alloc i32 temp_847_1067 
                    #      alloc i32 temp_848_1075 
                    #      alloc i1 temp_849_26631 
                    #      alloc Array:i32:[Some(16_0)] temp_850_1077 
                    #      alloc ptr->i32 temp_851_1077 
                    #      alloc i32 temp_852_1077 
                    #      alloc i32 temp_853_1077 
                    #      alloc i32 temp_854_1077 
                    #      alloc i1 temp_855_1087 
                    #      alloc i32 temp_856_1090 
                    #      alloc i32 temp_857_1090 
                    #      alloc i1 temp_858_1090 
                    #      alloc i1 temp_859_1090 
                    #      alloc i1 temp_860_1090 
                    #      alloc Array:i32:[Some(16_0)] temp_861_1092 
                    #      alloc ptr->i32 temp_862_1092 
                    #      alloc i32 temp_863_1092 
                    #      alloc i32 temp_864_1092 
                    #      alloc i32 temp_865_1092 
                    #      alloc i32 temp_866_1089 
                    #      alloc i32 temp_867_1089 
                    #      alloc i32 temp_868_1089 
                    #      alloc i1 temp_869_1098 
                    #      alloc Array:i32:[Some(16_0)] temp_870_1102 
                    #      alloc ptr->i32 temp_871_1102 
                    #      alloc i32 temp_872_1102 
                    #      alloc i32 temp_873_1102 
                    #      alloc i1 temp_874_1107 
                    #      alloc i32 temp_875_1110 
                    #      alloc i32 temp_876_1110 
                    #      alloc i1 temp_877_1110 
                    #      alloc i1 temp_878_1110 
                    #      alloc i1 temp_879_1110 
                    #      alloc Array:i32:[Some(16_0)] temp_880_1112 
                    #      alloc ptr->i32 temp_881_1112 
                    #      alloc i32 temp_882_1112 
                    #      alloc i32 temp_883_1112 
                    #      alloc i32 temp_884_1112 
                    #      alloc i32 temp_885_1109 
                    #      alloc i32 temp_886_1109 
                    #      alloc i32 temp_887_1109 
                    #      alloc i32 al_1121 
                    #      alloc i32 c_1121 
                    #      alloc i32 sum_1121 
                    #      alloc i1 temp_888_27978 
                    #      alloc i1 temp_889_1130 
                    #      alloc i32 temp_890_1133 
                    #      alloc i1 temp_891_28161 
                    #      alloc i32 temp_892_1136 
                    #      alloc i1 temp_893_1136 
                    #      alloc Array:i32:[Some(16_0)] temp_894_1138 
                    #      alloc ptr->i32 temp_895_1138 
                    #      alloc i32 temp_896_1138 
                    #      alloc i32 temp_897_1138 
                    #      alloc i32 temp_898_1138 
                    #      alloc i32 temp_899_1132 
                    #      alloc i32 temp_900_1132 
                    #      alloc i32 temp_901_1132 
                    #      alloc i32 temp_902_1140 
                    #      alloc i1 temp_903_28306 
                    #      alloc Array:i32:[Some(16_0)] temp_904_1142 
                    #      alloc ptr->i32 temp_905_1142 
                    #      alloc i32 temp_906_1142 
                    #      alloc i32 temp_907_1142 
                    #      alloc i32 temp_908_1142 
                    #      alloc i1 temp_909_1152 
                    #      alloc i32 temp_910_1155 
                    #      alloc i32 temp_911_1155 
                    #      alloc i1 temp_912_1155 
                    #      alloc i1 temp_913_1155 
                    #      alloc i1 temp_914_1155 
                    #      alloc Array:i32:[Some(16_0)] temp_915_1157 
                    #      alloc ptr->i32 temp_916_1157 
                    #      alloc i32 temp_917_1157 
                    #      alloc i32 temp_918_1157 
                    #      alloc i32 temp_919_1157 
                    #      alloc i32 temp_920_1154 
                    #      alloc i32 temp_921_1154 
                    #      alloc i32 temp_922_1154 
                    #      alloc i1 temp_923_1163 
                    #      alloc Array:i32:[Some(16_0)] temp_924_1167 
                    #      alloc ptr->i32 temp_925_1167 
                    #      alloc i32 temp_926_1167 
                    #      alloc i32 temp_927_1167 
                    #      alloc i1 temp_928_1172 
                    #      alloc i32 temp_929_1175 
                    #      alloc i32 temp_930_1175 
                    #      alloc i1 temp_931_1175 
                    #      alloc i1 temp_932_1175 
                    #      alloc i1 temp_933_1175 
                    #      alloc Array:i32:[Some(16_0)] temp_934_1177 
                    #      alloc ptr->i32 temp_935_1177 
                    #      alloc i32 temp_936_1177 
                    #      alloc i32 temp_937_1177 
                    #      alloc i32 temp_938_1177 
                    #      alloc i32 temp_939_1174 
                    #      alloc i32 temp_940_1174 
                    #      alloc i32 temp_941_1174 
                    #      alloc i1 temp_942_1188 
                    #      alloc i1 temp_943_1191 
                    #      alloc i1 temp_944_1197 
                    #      alloc i1 temp_945_1200 
                    #      alloc Array:i32:[Some(16_0)] temp_946_1202 
                    #      alloc ptr->i32 temp_947_1202 
                    #      alloc i32 temp_948_1202 
                    #      alloc i32 temp_949_1202 
                    #      alloc i32 temp_950_1202 
                    #      alloc i32 temp_951_1202 
                    #      alloc Array:i32:[Some(16_0)] temp_952_1202 
                    #      alloc ptr->i32 temp_953_1202 
                    #      alloc i32 temp_954_1202 
                    #      alloc i32 temp_955_1202 
                    #      alloc i32 temp_956_1202 
                    #      alloc Array:i32:[Some(16_0)] temp_957_1205 
                    #      alloc ptr->i32 temp_958_1205 
                    #      alloc i32 temp_959_1205 
                    #      alloc i32 temp_960_1205 
                    #      alloc i1 temp_961_1214 
                    #      alloc i1 temp_962_1217 
                    #      alloc i1 temp_963_1223 
                    #      alloc i1 temp_964_1226 
                    #      alloc Array:i32:[Some(16_0)] temp_965_1228 
                    #      alloc ptr->i32 temp_966_1228 
                    #      alloc i32 temp_967_1228 
                    #      alloc i32 temp_968_1228 
                    #      alloc i32 temp_969_1228 
                    #      alloc i32 temp_970_1228 
                    #      alloc Array:i32:[Some(16_0)] temp_971_1228 
                    #      alloc ptr->i32 temp_972_1228 
                    #      alloc i32 temp_973_1228 
                    #      alloc i32 temp_974_1228 
                    #      alloc i32 temp_975_1228 
                    #      alloc Array:i32:[Some(16_0)] temp_976_1231 
                    #      alloc ptr->i32 temp_977_1231 
                    #      alloc i32 temp_978_1231 
                    #      alloc i32 temp_979_1231 
                    #      alloc i32 temp_980_833 
                    #      alloc i1 temp_981_1241 
                    #      alloc i32 pl_1244 
                    #      alloc i32 pr_1244 
                    #      alloc i32 pres_1244 
                    #      alloc i1 temp_982_1246 
                    #      alloc i1 temp_983_1253 
                    #      alloc i32 temp_984_1256 
                    #      alloc i32 temp_985_1256 
                    #      alloc i1 temp_986_1256 
                    #      alloc i1 temp_987_1256 
                    #      alloc i1 temp_988_1256 
                    #      alloc Array:i32:[Some(16_0)] temp_989_1258 
                    #      alloc ptr->i32 temp_990_1258 
                    #      alloc i32 temp_991_1258 
                    #      alloc i32 temp_992_1258 
                    #      alloc i32 temp_993_1258 
                    #      alloc i32 temp_994_1255 
                    #      alloc i32 temp_995_1255 
                    #      alloc i32 temp_996_1255 
                    #      alloc i1 temp_997_31446 
                    #      alloc i32 ml_1266 
                    #      alloc i32 mr_1266 
                    #      alloc i32 mres_1266 
                    #      alloc i1 temp_998_31559 
                    #      alloc i1 temp_999_1275 
                    #      alloc i32 temp_1000_1278 
                    #      alloc i32 temp_1001_1278 
                    #      alloc i1 temp_1002_1278 
                    #      alloc i1 temp_1003_1278 
                    #      alloc i1 temp_1004_1278 
                    #      alloc Array:i32:[Some(16_0)] temp_1005_1280 
                    #      alloc ptr->i32 temp_1006_1280 
                    #      alloc i32 temp_1007_1280 
                    #      alloc i32 temp_1008_1280 
                    #      alloc i32 temp_1009_1280 
                    #      alloc i32 temp_1010_1277 
                    #      alloc i32 temp_1011_1277 
                    #      alloc i32 temp_1012_1277 
                    #      alloc i1 temp_1013_31968 
                    #      alloc i32 al_1288 
                    #      alloc i32 c_1288 
                    #      alloc i32 sum_1288 
                    #      alloc i1 temp_1014_32062 
                    #      alloc i1 temp_1015_1297 
                    #      alloc i32 temp_1016_1300 
                    #      alloc i1 temp_1017_32245 
                    #      alloc i32 temp_1018_1303 
                    #      alloc i1 temp_1019_1303 
                    #      alloc Array:i32:[Some(16_0)] temp_1020_1305 
                    #      alloc ptr->i32 temp_1021_1305 
                    #      alloc i32 temp_1022_1305 
                    #      alloc i32 temp_1023_1305 
                    #      alloc i32 temp_1024_1305 
                    #      alloc i32 temp_1025_1299 
                    #      alloc i32 temp_1026_1299 
                    #      alloc i32 temp_1027_1299 
                    #      alloc i32 temp_1028_1307 
                    #      alloc i1 temp_1029_32390 
                    #      alloc Array:i32:[Some(16_0)] temp_1030_1309 
                    #      alloc ptr->i32 temp_1031_1309 
                    #      alloc i32 temp_1032_1309 
                    #      alloc i32 temp_1033_1309 
                    #      alloc i32 temp_1034_1309 
                    #      alloc i1 temp_1035_1319 
                    #      alloc i32 temp_1036_1322 
                    #      alloc i32 temp_1037_1322 
                    #      alloc i1 temp_1038_1322 
                    #      alloc i1 temp_1039_1322 
                    #      alloc i1 temp_1040_1322 
                    #      alloc Array:i32:[Some(16_0)] temp_1041_1324 
                    #      alloc ptr->i32 temp_1042_1324 
                    #      alloc i32 temp_1043_1324 
                    #      alloc i32 temp_1044_1324 
                    #      alloc i32 temp_1045_1324 
                    #      alloc i32 temp_1046_1321 
                    #      alloc i32 temp_1047_1321 
                    #      alloc i32 temp_1048_1321 
                    #      alloc i1 temp_1049_1330 
                    #      alloc Array:i32:[Some(16_0)] temp_1050_1334 
                    #      alloc ptr->i32 temp_1051_1334 
                    #      alloc i32 temp_1052_1334 
                    #      alloc i32 temp_1053_1334 
                    #      alloc i1 temp_1054_1339 
                    #      alloc i32 temp_1055_1342 
                    #      alloc i32 temp_1056_1342 
                    #      alloc i1 temp_1057_1342 
                    #      alloc i1 temp_1058_1342 
                    #      alloc i1 temp_1059_1342 
                    #      alloc Array:i32:[Some(16_0)] temp_1060_1344 
                    #      alloc ptr->i32 temp_1061_1344 
                    #      alloc i32 temp_1062_1344 
                    #      alloc i32 temp_1063_1344 
                    #      alloc i32 temp_1064_1344 
                    #      alloc i32 temp_1065_1341 
                    #      alloc i32 temp_1066_1341 
                    #      alloc i32 temp_1067_1341 
                    #      alloc i32 al_1353 
                    #      alloc i32 c_1353 
                    #      alloc i32 sum_1353 
                    #      alloc i1 temp_1068_33737 
                    #      alloc i1 temp_1069_1362 
                    #      alloc i32 temp_1070_1365 
                    #      alloc i1 temp_1071_33920 
                    #      alloc i32 temp_1072_1368 
                    #      alloc i1 temp_1073_1368 
                    #      alloc Array:i32:[Some(16_0)] temp_1074_1370 
                    #      alloc ptr->i32 temp_1075_1370 
                    #      alloc i32 temp_1076_1370 
                    #      alloc i32 temp_1077_1370 
                    #      alloc i32 temp_1078_1370 
                    #      alloc i32 temp_1079_1364 
                    #      alloc i32 temp_1080_1364 
                    #      alloc i32 temp_1081_1364 
                    #      alloc i32 temp_1082_1372 
                    #      alloc i1 temp_1083_34065 
                    #      alloc Array:i32:[Some(16_0)] temp_1084_1374 
                    #      alloc ptr->i32 temp_1085_1374 
                    #      alloc i32 temp_1086_1374 
                    #      alloc i32 temp_1087_1374 
                    #      alloc i32 temp_1088_1374 
                    #      alloc i1 temp_1089_1384 
                    #      alloc i32 temp_1090_1387 
                    #      alloc i32 temp_1091_1387 
                    #      alloc i1 temp_1092_1387 
                    #      alloc i1 temp_1093_1387 
                    #      alloc i1 temp_1094_1387 
                    #      alloc Array:i32:[Some(16_0)] temp_1095_1389 
                    #      alloc ptr->i32 temp_1096_1389 
                    #      alloc i32 temp_1097_1389 
                    #      alloc i32 temp_1098_1389 
                    #      alloc i32 temp_1099_1389 
                    #      alloc i32 temp_1100_1386 
                    #      alloc i32 temp_1101_1386 
                    #      alloc i32 temp_1102_1386 
                    #      alloc i1 temp_1103_1395 
                    #      alloc Array:i32:[Some(16_0)] temp_1104_1399 
                    #      alloc ptr->i32 temp_1105_1399 
                    #      alloc i32 temp_1106_1399 
                    #      alloc i32 temp_1107_1399 
                    #      alloc i1 temp_1108_1404 
                    #      alloc i32 temp_1109_1407 
                    #      alloc i32 temp_1110_1407 
                    #      alloc i1 temp_1111_1407 
                    #      alloc i1 temp_1112_1407 
                    #      alloc i1 temp_1113_1407 
                    #      alloc Array:i32:[Some(16_0)] temp_1114_1409 
                    #      alloc ptr->i32 temp_1115_1409 
                    #      alloc i32 temp_1116_1409 
                    #      alloc i32 temp_1117_1409 
                    #      alloc i32 temp_1118_1409 
                    #      alloc i32 temp_1119_1406 
                    #      alloc i32 temp_1120_1406 
                    #      alloc i32 temp_1121_1406 
                    #      alloc i1 temp_1122_1420 
                    #      alloc i1 temp_1123_1423 
                    #      alloc i1 temp_1124_1429 
                    #      alloc i1 temp_1125_1432 
                    #      alloc Array:i32:[Some(16_0)] temp_1126_1434 
                    #      alloc ptr->i32 temp_1127_1434 
                    #      alloc i32 temp_1128_1434 
                    #      alloc i32 temp_1129_1434 
                    #      alloc i32 temp_1130_1434 
                    #      alloc i32 temp_1131_1434 
                    #      alloc Array:i32:[Some(16_0)] temp_1132_1434 
                    #      alloc ptr->i32 temp_1133_1434 
                    #      alloc i32 temp_1134_1434 
                    #      alloc i32 temp_1135_1434 
                    #      alloc i32 temp_1136_1434 
                    #      alloc Array:i32:[Some(16_0)] temp_1137_1437 
                    #      alloc ptr->i32 temp_1138_1437 
                    #      alloc i32 temp_1139_1437 
                    #      alloc i32 temp_1140_1437 
                    #      alloc i32 ml_1444 
                    #      alloc i32 mr_1444 
                    #      alloc i32 mres_1444 
                    #      alloc i1 temp_1141_36029 
                    #      alloc i1 temp_1142_1453 
                    #      alloc i32 temp_1143_1456 
                    #      alloc i32 temp_1144_1456 
                    #      alloc i1 temp_1145_1456 
                    #      alloc i1 temp_1146_1456 
                    #      alloc i1 temp_1147_1456 
                    #      alloc Array:i32:[Some(16_0)] temp_1148_1458 
                    #      alloc ptr->i32 temp_1149_1458 
                    #      alloc i32 temp_1150_1458 
                    #      alloc i32 temp_1151_1458 
                    #      alloc i32 temp_1152_1458 
                    #      alloc i32 temp_1153_1455 
                    #      alloc i32 temp_1154_1455 
                    #      alloc i32 temp_1155_1455 
                    #      alloc i1 temp_1156_36438 
                    #      alloc i32 al_1466 
                    #      alloc i32 c_1466 
                    #      alloc i32 sum_1466 
                    #      alloc i1 temp_1157_36532 
                    #      alloc i1 temp_1158_1475 
                    #      alloc i32 temp_1159_1478 
                    #      alloc i1 temp_1160_36715 
                    #      alloc i32 temp_1161_1481 
                    #      alloc i1 temp_1162_1481 
                    #      alloc Array:i32:[Some(16_0)] temp_1163_1483 
                    #      alloc ptr->i32 temp_1164_1483 
                    #      alloc i32 temp_1165_1483 
                    #      alloc i32 temp_1166_1483 
                    #      alloc i32 temp_1167_1483 
                    #      alloc i32 temp_1168_1477 
                    #      alloc i32 temp_1169_1477 
                    #      alloc i32 temp_1170_1477 
                    #      alloc i32 temp_1171_1485 
                    #      alloc i1 temp_1172_36860 
                    #      alloc Array:i32:[Some(16_0)] temp_1173_1487 
                    #      alloc ptr->i32 temp_1174_1487 
                    #      alloc i32 temp_1175_1487 
                    #      alloc i32 temp_1176_1487 
                    #      alloc i32 temp_1177_1487 
                    #      alloc i1 temp_1178_1497 
                    #      alloc i32 temp_1179_1500 
                    #      alloc i32 temp_1180_1500 
                    #      alloc i1 temp_1181_1500 
                    #      alloc i1 temp_1182_1500 
                    #      alloc i1 temp_1183_1500 
                    #      alloc Array:i32:[Some(16_0)] temp_1184_1502 
                    #      alloc ptr->i32 temp_1185_1502 
                    #      alloc i32 temp_1186_1502 
                    #      alloc i32 temp_1187_1502 
                    #      alloc i32 temp_1188_1502 
                    #      alloc i32 temp_1189_1499 
                    #      alloc i32 temp_1190_1499 
                    #      alloc i32 temp_1191_1499 
                    #      alloc i1 temp_1192_1508 
                    #      alloc Array:i32:[Some(16_0)] temp_1193_1512 
                    #      alloc ptr->i32 temp_1194_1512 
                    #      alloc i32 temp_1195_1512 
                    #      alloc i32 temp_1196_1512 
                    #      alloc i1 temp_1197_1517 
                    #      alloc i32 temp_1198_1520 
                    #      alloc i32 temp_1199_1520 
                    #      alloc i1 temp_1200_1520 
                    #      alloc i1 temp_1201_1520 
                    #      alloc i1 temp_1202_1520 
                    #      alloc Array:i32:[Some(16_0)] temp_1203_1522 
                    #      alloc ptr->i32 temp_1204_1522 
                    #      alloc i32 temp_1205_1522 
                    #      alloc i32 temp_1206_1522 
                    #      alloc i32 temp_1207_1522 
                    #      alloc i32 temp_1208_1519 
                    #      alloc i32 temp_1209_1519 
                    #      alloc i32 temp_1210_1519 
                    #      alloc i32 al_1531 
                    #      alloc i32 c_1531 
                    #      alloc i32 sum_1531 
                    #      alloc i1 temp_1211_38207 
                    #      alloc i1 temp_1212_1540 
                    #      alloc i32 temp_1213_1543 
                    #      alloc i1 temp_1214_38390 
                    #      alloc i32 temp_1215_1546 
                    #      alloc i1 temp_1216_1546 
                    #      alloc Array:i32:[Some(16_0)] temp_1217_1548 
                    #      alloc ptr->i32 temp_1218_1548 
                    #      alloc i32 temp_1219_1548 
                    #      alloc i32 temp_1220_1548 
                    #      alloc i32 temp_1221_1548 
                    #      alloc i32 temp_1222_1542 
                    #      alloc i32 temp_1223_1542 
                    #      alloc i32 temp_1224_1542 
                    #      alloc i32 temp_1225_1550 
                    #      alloc i1 temp_1226_38535 
                    #      alloc Array:i32:[Some(16_0)] temp_1227_1552 
                    #      alloc ptr->i32 temp_1228_1552 
                    #      alloc i32 temp_1229_1552 
                    #      alloc i32 temp_1230_1552 
                    #      alloc i32 temp_1231_1552 
                    #      alloc i1 temp_1232_1562 
                    #      alloc i32 temp_1233_1565 
                    #      alloc i32 temp_1234_1565 
                    #      alloc i1 temp_1235_1565 
                    #      alloc i1 temp_1236_1565 
                    #      alloc i1 temp_1237_1565 
                    #      alloc Array:i32:[Some(16_0)] temp_1238_1567 
                    #      alloc ptr->i32 temp_1239_1567 
                    #      alloc i32 temp_1240_1567 
                    #      alloc i32 temp_1241_1567 
                    #      alloc i32 temp_1242_1567 
                    #      alloc i32 temp_1243_1564 
                    #      alloc i32 temp_1244_1564 
                    #      alloc i32 temp_1245_1564 
                    #      alloc i1 temp_1246_1573 
                    #      alloc Array:i32:[Some(16_0)] temp_1247_1577 
                    #      alloc ptr->i32 temp_1248_1577 
                    #      alloc i32 temp_1249_1577 
                    #      alloc i32 temp_1250_1577 
                    #      alloc i1 temp_1251_1582 
                    #      alloc i32 temp_1252_1585 
                    #      alloc i32 temp_1253_1585 
                    #      alloc i1 temp_1254_1585 
                    #      alloc i1 temp_1255_1585 
                    #      alloc i1 temp_1256_1585 
                    #      alloc Array:i32:[Some(16_0)] temp_1257_1587 
                    #      alloc ptr->i32 temp_1258_1587 
                    #      alloc i32 temp_1259_1587 
                    #      alloc i32 temp_1260_1587 
                    #      alloc i32 temp_1261_1587 
                    #      alloc i32 temp_1262_1584 
                    #      alloc i32 temp_1263_1584 
                    #      alloc i32 temp_1264_1584 
                    #      alloc i1 temp_1265_1598 
                    #      alloc i1 temp_1266_1601 
                    #      alloc i1 temp_1267_1607 
                    #      alloc i1 temp_1268_1610 
                    #      alloc Array:i32:[Some(16_0)] temp_1269_1612 
                    #      alloc ptr->i32 temp_1270_1612 
                    #      alloc i32 temp_1271_1612 
                    #      alloc i32 temp_1272_1612 
                    #      alloc i32 temp_1273_1612 
                    #      alloc i32 temp_1274_1612 
                    #      alloc Array:i32:[Some(16_0)] temp_1275_1612 
                    #      alloc ptr->i32 temp_1276_1612 
                    #      alloc i32 temp_1277_1612 
                    #      alloc i32 temp_1278_1612 
                    #      alloc i32 temp_1279_1612 
                    #      alloc Array:i32:[Some(16_0)] temp_1280_1615 
                    #      alloc ptr->i32 temp_1281_1615 
                    #      alloc i32 temp_1282_1615 
                    #      alloc i32 temp_1283_1615 
                    #      alloc i1 temp_1284_1624 
                    #      alloc i1 temp_1285_1627 
                    #      alloc i1 temp_1286_1633 
                    #      alloc i1 temp_1287_1636 
                    #      alloc Array:i32:[Some(16_0)] temp_1288_1638 
                    #      alloc ptr->i32 temp_1289_1638 
                    #      alloc i32 temp_1290_1638 
                    #      alloc i32 temp_1291_1638 
                    #      alloc i32 temp_1292_1638 
                    #      alloc i32 temp_1293_1638 
                    #      alloc Array:i32:[Some(16_0)] temp_1294_1638 
                    #      alloc ptr->i32 temp_1295_1638 
                    #      alloc i32 temp_1296_1638 
                    #      alloc i32 temp_1297_1638 
                    #      alloc i32 temp_1298_1638 
                    #      alloc Array:i32:[Some(16_0)] temp_1299_1641 
                    #      alloc ptr->i32 temp_1300_1641 
                    #      alloc i32 temp_1301_1641 
                    #      alloc i32 temp_1302_1641 
                    #      alloc Array:i32:[Some(16_0)] temp_1303_1647 
                    #      alloc ptr->i32 temp_1304_1647 
                    #      alloc i32 temp_1305_1647 
                    #      alloc i1 temp_1306_1647 
                    #      alloc i32 temp_1307_1243 
                    #      label L1_0: 
.L1_0:
                    #      new_var ans_18:i32 
                    #      new_var i_18:i32 
                    #      new_var x_18:i32 
                    #      new_var y_18:i32 
                    #      new_var cur_18:i32 
                    #      pl_20 = i32 2_0 
    li      a4, 2
                    #      pr_20 = i32 0_0 
    li      a5, 0
                    #      pres_20 = i32 1_0 
    li      a6, 1
                    #      jump label: while.head_23 
    j       .while.head_23
                    #      label while.head_23: 
.while.head_23:
                    #      new_var temp_16_22:i1 
                    #      temp_16_22 = icmp i32 Sgt pr_20, 0_0 
    li      a0, 0
    slt     a1,a0,a5
                    #      br i1 temp_16_22, label while.body_23, label while.exit_23 
    bnez    a1, .while.body_23
    j       .while.exit_23
                    #      label while.body_23: 
.while.body_23:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
    li      a2, 0
                    #      x_18 = i32 pr_20 
    mv      a3, a5
                    #      y_18 = i32 1_0 
    li      a7, 1
                    #      jump label: while.head_30 
    j       .while.head_30
                    #      label while.head_30: 
.while.head_30:
                    #      new_var temp_17_29:i1 
                    #      temp_17_29 = icmp i32 Slt i_18, 16_0 
    li      s1, 16
    slt     s2,a2,s1
                    #      br i1 temp_17_29, label while.body_30, label while.exit_30 
    bnez    s2, .while.body_30
    j       .while.exit_30
                    #      label while.body_30: 
.while.body_30:
                    #      new_var temp_18_32:i32 
                    #      temp_18_32 = Mod i32 y_18, 2_0 
    li      s1, 2
    rem     s3,a7,s1
                    #      new_var temp_19_32:i32 
                    #      temp_19_32 = Mod i32 x_18, 2_0 
                    #found literal reg Some(s1) already exist with 2_0
    rem     s4,a3,s1
                    #      new_var temp_20_32:i1 
                    #      temp_20_32 = icmp i32 Ne temp_19_32, 0_0 
    li      s5, 0
    xor     s6,s4,s5
    snez    s6, s6
                    #      new_var temp_21_32:i1 
                    #      temp_20_32 = icmp i32 Ne temp_18_32, 0_0 
                    #found literal reg Some(s5) already exist with 0_0
                    #      new_var temp_22_32:i1 
                    #      temp_22_32 = And i1 temp_20_32, temp_21_32 
    and     s8,s6,s7
                    #      br i1 temp_22_32, label branch_true_33, label branch_false_33 
    bnez    s8, .branch_true_33
    j       .branch_false_33
                    #      label branch_true_33: 
.branch_true_33:
                    #      new_var temp_23_34:Array:i32:[Some(16_0)] 
                    #      temp_23_34 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      s1, SHIFT_TABLE
                    #occupy reg s1 with *SHIFT_TABLE_0
    lw      s5,0(s1)
                    #      new_var temp_24_34:ptr->i32 
                    #      new_var temp_25_34:i32 
                    #      temp_24_34 = getelementptr temp_23_34:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      s9, 0
    li      s10, 1
    add     s9,s9,s5
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_25_34 = load temp_24_34:ptr->i32 
    lw      s11,0(s9)
                    #      new_var temp_26_34:i32 
                    #      temp_26_34 = Mul i32 1_0, temp_25_34 
                    #found literal reg Some(s10) already exist with 1_0
    mul     s1,s10,s11
                    #      new_var temp_27_34:i32 
                    #      temp_27_34 = Add i32 ans_18, temp_26_34 
    add     s10,a0,s1
                    #      ans_18 = i32 temp_27_34 
                    #      jump label: branch_false_33 
    li      s10, 13324
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s1, 13328
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s5, 13404
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s11, 13332
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s9, 13336
    add     s9,sp,s9
    sd      s9,0(s9)
    j       .branch_false_33
                    #      label branch_false_33: 
.branch_false_33:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_28_31:i32 
                    #      temp_28_31 = Div i32 x_18, 2_0 
    li      s1, 2
    div     s5,a3,s1
                    #      x_18 = i32 temp_28_31 
                    #      new_var temp_29_31:i32 
                    #      temp_29_31 = Div i32 y_18, 2_0 
                    #found literal reg Some(s1) already exist with 2_0
    div     s9,a7,s1
                    #      y_18 = i32 temp_29_31 
                    #      new_var temp_30_31:i32 
                    #      temp_30_31 = Add i32 i_18, 1_0 
    li      s10, 1
    add     s11,a2,s10
                    #      i_18 = i32 temp_30_31 
                    #      jump label: while.head_30 
    li      s8, 13409
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s6, 13411
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s5, 13320
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s3, 13416
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s2, 13422
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s7, 13410
    add     s7,sp,s7
    sb      s7,0(s7)
    li      s11, 13312
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s9, 13316
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s4, 13412
    add     s4,sp,s4
    sw      s4,0(s4)
    j       .while.head_30
                    #      label while.exit_30: 
.while.exit_30:
                    #      new_var temp_31_900:i1 
                    #      temp_31_900 = icmp i32 Ne ans_18, 0_0 
    li      s1, 0
    xor     s3,a0,s1
    snez    s3, s3
                    #      br i1 temp_31_900, label branch_true_40, label branch_false_40 
    bnez    s3, .branch_true_40
    j       .branch_false_40
                    #      label branch_true_40: 
.branch_true_40:
                    #      ml_42 = i32 pres_20 
    mv      s1, a6
                    #      mr_42 = i32 pl_20 
    mv      s4, a4
                    #      mres_42 = i32 0_0 
    li      s5, 0
                    #      jump label: while.head_45 
    j       .while.head_45
                    #      label while.head_45: 
.while.head_45:
                    #      new_var temp_32_1013:i1 
                    #      temp_32_1013 = icmp i32 Ne mr_42, 0_0 
    li      s6, 0
    xor     s7,s4,s6
    snez    s7, s7
                    #      br i1 temp_32_1013, label while.body_45, label while.exit_45 
    bnez    s7, .while.body_45
    j       .while.exit_45
                    #      label while.body_45: 
.while.body_45:
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 mr_42 
                    #      y_18 = i32 1_0 
                    #      jump label: while.head_52 
    j       .while.head_52
                    #      label while.head_52: 
.while.head_52:
                    #      new_var temp_33_51:i1 
                    #      temp_33_51 = icmp i32 Slt i_18, 16_0 
    li      s6, 16
    slt     s8,a2,s6
                    #      br i1 temp_33_51, label while.body_52, label while.exit_52 
    bnez    s8, .while.body_52
    j       .while.exit_52
                    #      label while.body_52: 
.while.body_52:
                    #      new_var temp_34_54:i32 
                    #      temp_34_54 = Mod i32 y_18, 2_0 
    li      s6, 2
    rem     s9,a7,s6
                    #      new_var temp_35_54:i32 
                    #      temp_35_54 = Mod i32 x_18, 2_0 
                    #found literal reg Some(s6) already exist with 2_0
    rem     s10,a3,s6
                    #      new_var temp_36_54:i1 
                    #      temp_36_54 = icmp i32 Ne temp_35_54, 0_0 
    li      s11, 0
    xor     s6,s10,s11
    snez    s6, s6
                    #      new_var temp_37_54:i1 
                    #      temp_36_54 = icmp i32 Ne temp_34_54, 0_0 
                    #found literal reg Some(s11) already exist with 0_0
                    #      new_var temp_38_54:i1 
                    #      temp_38_54 = And i1 temp_36_54, temp_37_54 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,s6,s11
                    #      br i1 temp_38_54, label branch_true_55, label branch_false_55 
    bnez    a0, .branch_true_55
    j       .branch_false_55
                    #      label branch_true_55: 
.branch_true_55:
                    #      new_var temp_39_56:Array:i32:[Some(16_0)] 
                    #      temp_39_56 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 13281
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_40_56:ptr->i32 
                    #      new_var temp_41_56:i32 
                    #      temp_40_56 = getelementptr temp_39_56:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 13276
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_41_56 = load temp_40_56:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_42_56:i32 
                    #      temp_42_56 = Mul i32 1_0, temp_41_56 
    li      a0, 13208
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_43_56:i32 
                    #      temp_43_56 = Add i32 ans_18, temp_42_56 
    li      a1, 13204
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_43_56 
                    #      jump label: branch_false_55 
    li      a2, 13200
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13448
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 13196
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 13276
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13281
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 13281
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_55
                    #      label branch_false_55: 
.branch_false_55:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_44_53:i32 
                    #      temp_44_53 = Div i32 x_18, 2_0 
    li      a0, 13281
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a3,a0
                    #      x_18 = i32 temp_44_53 
                    #      new_var temp_45_53:i32 
                    #      temp_45_53 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 13192
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
                    #      y_18 = i32 temp_45_53 
                    #      new_var temp_46_53:i32 
                    #      temp_46_53 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 13188
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      i_18 = i32 temp_46_53 
                    #      jump label: while.head_52 
    li      s8, 13294
    add     s8,sp,s8
    sb      s8,0(s8)
    li      a1, 13184
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s6, 13283
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s10, 13284
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 13452
    add     a2,sp,a2
    lw      a0,0(a2)
    li      s11, 13282
    add     s11,sp,s11
    sb      s11,0(s11)
    li      s9, 13288
    add     s9,sp,s9
    sw      s9,0(s9)
    j       .while.head_52
                    #      label while.exit_52: 
.while.exit_52:
                    #      new_var temp_47_1422:i1 
                    #      temp_47_1422 = icmp i32 Ne ans_18, 0_0 
    li      s6, 0
    xor     s9,a0,s6
    snez    s9, s9
                    #      br i1 temp_47_1422, label branch_true_62, label branch_false_62 
    bnez    s9, .branch_true_62
    j       .branch_false_62
                    #      label branch_true_62: 
.branch_true_62:
                    #      al_64 = i32 mres_42 
    mv      s6, s5
                    #      c_64 = i32 ml_42 
    mv      s10, s1
                    #      new_var sum_64:i32 
                    #      jump label: while.head_67 
    j       .while.head_67
                    #      label while.head_67: 
.while.head_67:
                    #      new_var temp_48_1516:i1 
                    #      temp_48_1516 = icmp i32 Ne c_64, 0_0 
    li      s11, 0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,s11
    snez    a0, a0
                    #      br i1 temp_48_1516, label while.body_67, label while.exit_67 
    bnez    a0, .while.body_67
    j       .while.exit_67
                    #      label while.body_67: 
.while.body_67:
                    #      ans_18 = i32 0_0 
    li      s11, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_64 
                    #      y_18 = i32 c_64 
                    #      jump label: while.head_74 
    j       .while.head_74
                    #      label while.head_74: 
.while.head_74:
                    #      new_var temp_49_73:i1 
                    #      temp_49_73 = icmp i32 Slt i_18, 16_0 
    li      a0, 13167
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 16
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a2,a0
                    #      br i1 temp_49_73, label while.body_74, label while.exit_74 
    bnez    a1, .while.body_74
    j       .while.exit_74
                    #      label while.body_74: 
.while.body_74:
                    #      new_var temp_50_76:i32 
                    #      temp_50_76 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 13166
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,a3,a0
                    #      new_var temp_51_1699:i1 
                    #      temp_51_1699 = icmp i32 Ne temp_50_76, 0_0 
    li      a0, 0
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_51_1699, label branch_true_77, label branch_false_77 
    bnez    a2, .branch_true_77
    j       .branch_false_77
                    #      label branch_true_77: 
.branch_true_77:
                    #      new_var temp_52_79:i32 
                    #      temp_52_79 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 13160
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,a7,a0
                    #      new_var temp_53_79:i1 
                    #      temp_53_79 = icmp i32 Eq temp_52_79, 0_0 
    li      a0, 0
    li      a2, 13159
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_53_79, label branch_true_80, label branch_false_80 
    bnez    a2, .branch_true_80
    j       .branch_false_80
                    #      label branch_true_80: 
.branch_true_80:
                    #      new_var temp_54_81:Array:i32:[Some(16_0)] 
                    #      temp_54_81 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 13152
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_55_81:ptr->i32 
                    #      new_var temp_56_81:i32 
                    #      temp_55_81 = getelementptr temp_54_81:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 13144
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 13151
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_56_81 = load temp_55_81:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_57_81:i32 
                    #      temp_57_81 = Mul i32 1_0, temp_56_81 
    li      a0, 13072
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_58_81:i32 
                    #      temp_58_81 = Add i32 ans_18, temp_57_81 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_58_81 
                    #      jump label: branch_false_80 
    li      a2, 13064
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13060
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13151
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 13068
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13151
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13152
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13152
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 13144
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_80
                    #      label branch_false_80: 
.branch_false_80:
                    #      label branch_false_77: 
.branch_false_77:
                    #      new_var temp_62_83:i32 
                    #      temp_62_83 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 13160
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,a7,a0
                    #      new_var temp_63_1844:i1 
                    #      temp_63_1844 = icmp i32 Ne temp_62_83, 0_0 
    li      a0, 0
    li      a2, 13159
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_63_1844, label branch_true_84, label branch_false_84 
    bnez    a2, .branch_true_84
    j       .branch_false_84
                    #      label branch_true_84: 
.branch_true_84:
                    #      new_var temp_64_85:Array:i32:[Some(16_0)] 
                    #      temp_64_85 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 13044
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_65_85:ptr->i32 
                    #      new_var temp_66_85:i32 
                    #      temp_65_85 = getelementptr temp_64_85:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 13036
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 13043
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_66_85 = load temp_65_85:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_67_85:i32 
                    #      temp_67_85 = Mul i32 1_0, temp_66_85 
    li      a0, 12968
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_68_85:i32 
                    #      temp_68_85 = Add i32 ans_18, temp_67_85 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_68_85 
                    #      jump label: branch_false_84 
    li      a2, 12960
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 12956
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13043
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 12964
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13043
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13044
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13044
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 13036
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_84
                    #      label branch_false_84: 
.branch_false_84:
                    #      label L4_0: 
.L4_0:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_59_75:i32 
                    #      temp_59_75 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 13044
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a3,a0
                    #      x_18 = i32 temp_59_75 
                    #      new_var temp_60_75:i32 
                    #      temp_60_75 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 13056
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
                    #      y_18 = i32 temp_60_75 
                    #      new_var temp_61_75:i32 
                    #      temp_61_75 = Add i32 i_18, 1_0 
    li      a1, 13052
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 13043
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,a0,a1
                    #      i_18 = i32 temp_61_75 
                    #      jump label: while.head_74 
    li      a2, 13048
    add     a2,sp,a2
    sw      a2,0(a2)
    mv      a2, a0
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13167
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 13167
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_74
                    #      label while.exit_74: 
.while.exit_74:
                    #      sum_64 = i32 ans_18 
    mv      a0, s11
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_64 
                    #      y_18 = i32 c_64 
                    #      jump label: while.head_96 
    j       .while.head_96
                    #      label while.head_96: 
.while.head_96:
                    #      new_var temp_69_95:i1 
                    #      temp_69_95 = icmp i32 Slt i_18, 16_0 
    li      a0, 13168
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13166
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a2,a0
                    #      br i1 temp_69_95, label while.body_96, label while.exit_96 
    bnez    a1, .while.body_96
    j       .while.exit_96
                    #      label while.body_96: 
.while.body_96:
                    #      new_var temp_70_98:i32 
                    #      temp_70_98 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 12955
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,a7,a0
                    #      new_var temp_71_98:i32 
                    #      temp_71_98 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 12948
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,a3,a0
                    #      new_var temp_72_98:i1 
                    #      temp_72_98 = icmp i32 Ne temp_71_98, 0_0 
    li      a0, 0
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_73_98:i1 
                    #      temp_72_98 = icmp i32 Ne temp_70_98, 0_0 
    li      a1, 12944
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_74_98:i1 
                    #      temp_74_98 = And i1 temp_72_98, temp_73_98 
    li      a0, 12948
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_74_98, label branch_true_99, label branch_false_99 
    bnez    a0, .branch_true_99
    j       .branch_false_99
                    #      label branch_true_99: 
.branch_true_99:
                    #      new_var temp_75_100:Array:i32:[Some(16_0)] 
                    #      temp_75_100 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 12941
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 12942
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_76_100:ptr->i32 
                    #      new_var temp_77_100:i32 
                    #      temp_76_100 = getelementptr temp_75_100:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 12936
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 12943
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_77_100 = load temp_76_100:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_78_100:i32 
                    #      temp_78_100 = Mul i32 1_0, temp_77_100 
    li      a0, 12864
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_79_100:i32 
                    #      temp_79_100 = Add i32 ans_18, temp_78_100 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_79_100 
                    #      jump label: branch_false_99 
    li      a2, 12856
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 12852
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 12943
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 12860
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 12943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 12942
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 12942
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 12936
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 12941
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 12941
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_99
                    #      label branch_false_99: 
.branch_false_99:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_80_97:i32 
                    #      temp_80_97 = Div i32 x_18, 2_0 
    li      a0, 12941
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 12942
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a3,a0
                    #      x_18 = i32 temp_80_97 
                    #      new_var temp_81_97:i32 
                    #      temp_81_97 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 12848
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
                    #      y_18 = i32 temp_81_97 
                    #      new_var temp_82_97:i32 
                    #      temp_82_97 = Add i32 i_18, 1_0 
    li      a1, 12844
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 12943
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,a0,a1
                    #      i_18 = i32 temp_82_97 
                    #      jump label: while.head_96 
    li      a2, 12840
    add     a2,sp,a2
    sw      a2,0(a2)
    mv      a2, a0
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13166
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13166
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13168
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13168
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_96
                    #      label while.exit_96: 
.while.exit_96:
                    #      c_64 = i32 ans_18 
                    #      jump label: L7_0 
    j       .L7_0
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_83_106:i1 
                    #      temp_83_106 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 1
    li      a1, 12955
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 15
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_83_106, label branch_true_107, label branch_false_107 
    bnez    a2, .branch_true_107
    j       .branch_false_107
                    #      label branch_true_107: 
.branch_true_107:
                    #      ans_18 = i32 0_0 
                    #      jump label: while.exit_116 
    j       .while.exit_116
                    #      label branch_false_107: 
.branch_false_107:
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
    li      a0, 0
                    #      new_var temp_84_110:Array:i32:[Some(16_0)] 
                    #      temp_84_110 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_85_110:ptr->i32 
                    #      new_var temp_86_110:i32 
                    #      temp_85_110 = getelementptr temp_84_110:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 12832
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 12839
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_86_110 = load temp_85_110:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_87_110:i32 
                    #      temp_87_110 = Mul i32 c_64, temp_86_110 
    mul     a2,s10,a0
                    #      x_18 = i32 temp_87_110 
    li      a0, 12756
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a2
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_116 
    j       .while.head_116
                    #      label while.head_116: 
.while.head_116:
                    #      new_var temp_88_115:i1 
                    #      temp_88_115 = icmp i32 Slt i_18, 16_0 
    li      a0, 13444
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 12760
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 16
    li      a2, 12752
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a0,a1
                    #      br i1 temp_88_115, label while.body_116, label while.exit_116 
    bnez    a2, .while.body_116
    li      a1, 12751
    add     a1,sp,a1
    sb      a2,0(a1)
    li      a1, 12839
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a1, 12839
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 12832
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_116
                    #      label while.body_116: 
.while.body_116:
                    #      new_var temp_89_118:i32 
                    #      temp_89_118 = Mod i32 y_18, 2_0 
    li      a1, 2
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,a1
                    #      new_var temp_90_118:i32 
                    #      temp_90_118 = Mod i32 x_18, 2_0 
    li      a0, 12744
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2
    li      a2, 12751
    add     a2,sp,a2
    sb      a2,0(a2)
    rem     a2,a1,a0
                    #      new_var temp_91_118:i1 
                    #      temp_91_118 = icmp i32 Ne temp_90_118, 0_0 
    li      a0, 0
    li      a1, 13444
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a2,a0
    snez    a1, a1
                    #      new_var temp_92_118:i1 
                    #      temp_91_118 = icmp i32 Ne temp_89_118, 0_0 
    li      a1, 12739
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 12740
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      new_var temp_93_118:i1 
                    #      temp_93_118 = And i1 temp_91_118, temp_92_118 
    li      a0, 12744
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_93_118, label branch_true_119, label branch_false_119 
    bnez    a0, .branch_true_119
    j       .branch_false_119
                    #      label branch_true_119: 
.branch_true_119:
                    #      new_var temp_94_120:Array:i32:[Some(16_0)] 
                    #      temp_94_120 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 12737
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 12738
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_95_120:ptr->i32 
                    #      new_var temp_96_120:i32 
                    #      temp_95_120 = getelementptr temp_94_120:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 12732
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 12739
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 12832
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_96_120 = load temp_95_120:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_97_120:i32 
                    #      temp_97_120 = Mul i32 1_0, temp_96_120 
    li      a0, 12664
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_98_120:i32 
                    #      temp_98_120 = Add i32 ans_18, temp_97_120 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_98_120 
                    #      jump label: branch_false_119 
    li      a2, 12656
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 12652
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 12739
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 12660
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 12739
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 12738
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 12738
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 12732
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 12737
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 12737
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 12832
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_119
                    #      label branch_false_119: 
.branch_false_119:
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_99_117:i32 
                    #      temp_99_117 = Div i32 x_18, 2_0 
    li      a0, 12737
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a1, 12738
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 2
    li      a2, 12739
    add     a2,sp,a2
    sb      a2,0(a2)
    div     a2,a0,a1
                    #      x_18 = i32 temp_99_117 
                    #      new_var temp_100_117:i32 
                    #      temp_100_117 = Div i32 y_18, 2_0 
                    #found literal reg Some(a1) already exist with 2_0
    li      a0, 13444
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,a1
                    #      y_18 = i32 temp_100_117 
                    #      new_var temp_101_117:i32 
                    #      temp_101_117 = Add i32 i_18, 1_0 
    li      a0, 12644
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 12648
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
                    #      i_18 = i32 temp_101_117 
                    #      jump label: while.head_116 
    li      a2, 12640
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 12752
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 13448
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 12752
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 12760
    add     a0,sp,a0
    ld      a1,0(a0)
    li      a0, 12760
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a3, 12832
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13444
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 12832
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_116
                    #      label while.exit_116: 
.while.exit_116:
                    #      label L9_0: 
.L9_0:
                    #      c_64 = i32 ans_18 
                    #      al_64 = i32 sum_64 
                    #      jump label: while.head_67 
    li      a1, 12839
    add     a1,sp,a1
    sb      a2,0(a1)
    li      a1, 13448
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a1, 13448
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13168
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s11
    li      s11, 13452
    add     s11,sp,s11
    sw      s11,0(s11)
    j       .while.head_67
                    #      label while.exit_67: 
.while.exit_67:
                    #      ans_18 = i32 al_64 
    mv      s11, s6
                    #      mres_42 = i32 ans_18 
                    #      jump label: branch_false_62 
    li      s6, 13176
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s10, 13172
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 13167
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s11
    li      s11, 13452
    add     s11,sp,s11
    sw      s11,0(s11)
    j       .branch_false_62
                    #      label branch_false_62: 
.branch_false_62:
                    #      label L10_0: 
.L10_0:
                    #      al_129 = i32 ml_42 
    mv      s6, s1
                    #      c_129 = i32 ml_42 
    mv      s10, s1
                    #      new_var sum_129:i32 
                    #      jump label: while.head_132 
    j       .while.head_132
                    #      label while.head_132: 
.while.head_132:
                    #      new_var temp_102_3191:i1 
                    #      temp_102_3191 = icmp i32 Ne c_129, 0_0 
    li      s11, 0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,s11
    snez    a0, a0
                    #      br i1 temp_102_3191, label while.body_132, label while.exit_132 
    bnez    a0, .while.body_132
    j       .while.exit_132
                    #      label while.body_132: 
.while.body_132:
                    #      ans_18 = i32 0_0 
    li      s11, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_129 
                    #      y_18 = i32 c_129 
                    #      jump label: while.head_139 
    j       .while.head_139
                    #      label while.head_139: 
.while.head_139:
                    #      new_var temp_103_138:i1 
                    #      temp_103_138 = icmp i32 Slt i_18, 16_0 
    li      a0, 12627
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 16
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a2,a0
                    #      br i1 temp_103_138, label while.body_139, label while.exit_139 
    bnez    a1, .while.body_139
    j       .while.exit_139
                    #      label while.body_139: 
.while.body_139:
                    #      new_var temp_104_141:i32 
                    #      temp_104_141 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 12626
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,a3,a0
                    #      new_var temp_105_3374:i1 
                    #      temp_105_3374 = icmp i32 Ne temp_104_141, 0_0 
    li      a0, 0
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_105_3374, label branch_true_142, label branch_false_142 
    bnez    a2, .branch_true_142
    j       .branch_false_142
                    #      label branch_true_142: 
.branch_true_142:
                    #      new_var temp_106_144:i32 
                    #      temp_106_144 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 12620
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,a7,a0
                    #      new_var temp_107_144:i1 
                    #      temp_107_144 = icmp i32 Eq temp_106_144, 0_0 
    li      a0, 0
    li      a2, 12619
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_107_144, label branch_true_145, label branch_false_145 
    bnez    a2, .branch_true_145
    j       .branch_false_145
                    #      label branch_true_145: 
.branch_true_145:
                    #      new_var temp_108_146:Array:i32:[Some(16_0)] 
                    #      temp_108_146 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 12612
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_109_146:ptr->i32 
                    #      new_var temp_110_146:i32 
                    #      temp_109_146 = getelementptr temp_108_146:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 12604
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 12611
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_110_146 = load temp_109_146:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_111_146:i32 
                    #      temp_111_146 = Mul i32 1_0, temp_110_146 
    li      a0, 12536
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_112_146:i32 
                    #      temp_112_146 = Add i32 ans_18, temp_111_146 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_112_146 
                    #      jump label: branch_false_145 
    li      a2, 12528
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 12524
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 12611
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 12532
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 12611
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 12612
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 12612
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 12604
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_145
                    #      label branch_false_145: 
.branch_false_145:
                    #      label branch_false_142: 
.branch_false_142:
                    #      new_var temp_116_148:i32 
                    #      temp_116_148 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 12620
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,a7,a0
                    #      new_var temp_117_3519:i1 
                    #      temp_117_3519 = icmp i32 Ne temp_116_148, 0_0 
    li      a0, 0
    li      a2, 12619
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_117_3519, label branch_true_149, label branch_false_149 
    bnez    a2, .branch_true_149
    j       .branch_false_149
                    #      label branch_true_149: 
.branch_true_149:
                    #      new_var temp_118_150:Array:i32:[Some(16_0)] 
                    #      temp_118_150 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 12508
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_119_150:ptr->i32 
                    #      new_var temp_120_150:i32 
                    #      temp_119_150 = getelementptr temp_118_150:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 12500
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 12507
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_120_150 = load temp_119_150:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_121_150:i32 
                    #      temp_121_150 = Mul i32 1_0, temp_120_150 
    li      a0, 12432
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_122_150:i32 
                    #      temp_122_150 = Add i32 ans_18, temp_121_150 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_122_150 
                    #      jump label: branch_false_149 
    li      a2, 12424
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 12420
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 12507
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 12428
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 12507
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 12508
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 12508
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 12500
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_149
                    #      label branch_false_149: 
.branch_false_149:
                    #      label L11_0: 
.L11_0:
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_113_140:i32 
                    #      temp_113_140 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 12508
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a3,a0
                    #      x_18 = i32 temp_113_140 
                    #      new_var temp_114_140:i32 
                    #      temp_114_140 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 12520
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
                    #      y_18 = i32 temp_114_140 
                    #      new_var temp_115_140:i32 
                    #      temp_115_140 = Add i32 i_18, 1_0 
    li      a1, 12516
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 12507
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,a0,a1
                    #      i_18 = i32 temp_115_140 
                    #      jump label: while.head_139 
    li      a2, 12512
    add     a2,sp,a2
    sw      a2,0(a2)
    mv      a2, a0
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 12627
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 12627
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_139
                    #      label while.exit_139: 
.while.exit_139:
                    #      sum_129 = i32 ans_18 
    mv      a0, s11
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_129 
                    #      y_18 = i32 c_129 
                    #      jump label: while.head_161 
    j       .while.head_161
                    #      label while.head_161: 
.while.head_161:
                    #      new_var temp_123_160:i1 
                    #      temp_123_160 = icmp i32 Slt i_18, 16_0 
    li      a0, 12628
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 12626
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a2,a0
                    #      br i1 temp_123_160, label while.body_161, label while.exit_161 
    bnez    a1, .while.body_161
    j       .while.exit_161
                    #      label while.body_161: 
.while.body_161:
                    #      new_var temp_124_163:i32 
                    #      temp_124_163 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 12419
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,a7,a0
                    #      new_var temp_125_163:i32 
                    #      temp_125_163 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 12412
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,a3,a0
                    #      new_var temp_126_163:i1 
                    #      temp_126_163 = icmp i32 Ne temp_125_163, 0_0 
    li      a0, 0
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_127_163:i1 
                    #      temp_126_163 = icmp i32 Ne temp_124_163, 0_0 
    li      a1, 12408
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_128_163:i1 
                    #      temp_128_163 = And i1 temp_126_163, temp_127_163 
    li      a0, 12412
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_128_163, label branch_true_164, label branch_false_164 
    bnez    a0, .branch_true_164
    j       .branch_false_164
                    #      label branch_true_164: 
.branch_true_164:
                    #      new_var temp_129_165:Array:i32:[Some(16_0)] 
                    #      temp_129_165 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 12405
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 12406
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_130_165:ptr->i32 
                    #      new_var temp_131_165:i32 
                    #      temp_130_165 = getelementptr temp_129_165:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 12400
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 12407
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_131_165 = load temp_130_165:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_132_165:i32 
                    #      temp_132_165 = Mul i32 1_0, temp_131_165 
    li      a0, 12328
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_133_165:i32 
                    #      temp_133_165 = Add i32 ans_18, temp_132_165 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_133_165 
                    #      jump label: branch_false_164 
    li      a2, 12320
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 12316
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 12407
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 12324
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 12407
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 12406
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 12406
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 12400
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 12405
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 12405
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_164
                    #      label branch_false_164: 
.branch_false_164:
                    #      label L13_0: 
.L13_0:
                    #      new_var temp_134_162:i32 
                    #      temp_134_162 = Div i32 x_18, 2_0 
    li      a0, 12405
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 12406
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a3,a0
                    #      x_18 = i32 temp_134_162 
                    #      new_var temp_135_162:i32 
                    #      temp_135_162 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 12312
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
                    #      y_18 = i32 temp_135_162 
                    #      new_var temp_136_162:i32 
                    #      temp_136_162 = Add i32 i_18, 1_0 
    li      a1, 12308
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 12407
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,a0,a1
                    #      i_18 = i32 temp_136_162 
                    #      jump label: while.head_161 
    li      a2, 12304
    add     a2,sp,a2
    sw      a2,0(a2)
    mv      a2, a0
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 12626
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 12626
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 12628
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 12628
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_161
                    #      label while.exit_161: 
.while.exit_161:
                    #      c_129 = i32 ans_18 
                    #      jump label: L14_0 
    j       .L14_0
                    #      label L14_0: 
.L14_0:
                    #      new_var temp_137_171:i1 
                    #      temp_137_171 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 1
    li      a1, 12419
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 15
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_137_171, label branch_true_172, label branch_false_172 
    bnez    a2, .branch_true_172
    j       .branch_false_172
                    #      label branch_true_172: 
.branch_true_172:
                    #      ans_18 = i32 0_0 
                    #      jump label: while.exit_181 
    j       .while.exit_181
                    #      label branch_false_172: 
.branch_false_172:
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
    li      a0, 0
                    #      new_var temp_138_175:Array:i32:[Some(16_0)] 
                    #      temp_138_175 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_139_175:ptr->i32 
                    #      new_var temp_140_175:i32 
                    #      temp_139_175 = getelementptr temp_138_175:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 12296
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 12303
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_140_175 = load temp_139_175:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_141_175:i32 
                    #      temp_141_175 = Mul i32 c_129, temp_140_175 
    mul     a2,s10,a0
                    #      x_18 = i32 temp_141_175 
    li      a0, 12220
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a2
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_181 
    j       .while.head_181
                    #      label while.head_181: 
.while.head_181:
                    #      new_var temp_142_180:i1 
                    #      temp_142_180 = icmp i32 Slt i_18, 16_0 
    li      a0, 13444
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 12224
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 16
    li      a2, 12216
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a0,a1
                    #      br i1 temp_142_180, label while.body_181, label while.exit_181 
    bnez    a2, .while.body_181
    li      a1, 12215
    add     a1,sp,a1
    sb      a2,0(a1)
    li      a1, 12303
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a1, 12303
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 12296
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_181
                    #      label while.body_181: 
.while.body_181:
                    #      new_var temp_143_183:i32 
                    #      temp_143_183 = Mod i32 y_18, 2_0 
    li      a1, 2
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,a1
                    #      new_var temp_144_183:i32 
                    #      temp_144_183 = Mod i32 x_18, 2_0 
    li      a0, 12208
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2
    li      a2, 12215
    add     a2,sp,a2
    sb      a2,0(a2)
    rem     a2,a1,a0
                    #      new_var temp_145_183:i1 
                    #      temp_145_183 = icmp i32 Ne temp_144_183, 0_0 
    li      a0, 0
    li      a1, 13444
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a2,a0
    snez    a1, a1
                    #      new_var temp_146_183:i1 
                    #      temp_145_183 = icmp i32 Ne temp_143_183, 0_0 
    li      a1, 12203
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 12204
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      new_var temp_147_183:i1 
                    #      temp_147_183 = And i1 temp_145_183, temp_146_183 
    li      a0, 12208
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_147_183, label branch_true_184, label branch_false_184 
    bnez    a0, .branch_true_184
    j       .branch_false_184
                    #      label branch_true_184: 
.branch_true_184:
                    #      new_var temp_148_185:Array:i32:[Some(16_0)] 
                    #      temp_148_185 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 12201
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 12202
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_149_185:ptr->i32 
                    #      new_var temp_150_185:i32 
                    #      temp_149_185 = getelementptr temp_148_185:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 12196
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 12203
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 12296
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_150_185 = load temp_149_185:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_151_185:i32 
                    #      temp_151_185 = Mul i32 1_0, temp_150_185 
    li      a0, 12128
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_152_185:i32 
                    #      temp_152_185 = Add i32 ans_18, temp_151_185 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_152_185 
                    #      jump label: branch_false_184 
    li      a2, 12120
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 12116
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 12203
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 12124
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 12203
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 12202
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 12202
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 12196
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 12201
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 12201
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 12296
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_184
                    #      label branch_false_184: 
.branch_false_184:
                    #      label L15_0: 
.L15_0:
                    #      new_var temp_153_182:i32 
                    #      temp_153_182 = Div i32 x_18, 2_0 
    li      a0, 12201
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a1, 12202
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 2
    li      a2, 12203
    add     a2,sp,a2
    sb      a2,0(a2)
    div     a2,a0,a1
                    #      x_18 = i32 temp_153_182 
                    #      new_var temp_154_182:i32 
                    #      temp_154_182 = Div i32 y_18, 2_0 
                    #found literal reg Some(a1) already exist with 2_0
    li      a0, 13444
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,a1
                    #      y_18 = i32 temp_154_182 
                    #      new_var temp_155_182:i32 
                    #      temp_155_182 = Add i32 i_18, 1_0 
    li      a0, 12108
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 12112
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
                    #      i_18 = i32 temp_155_182 
                    #      jump label: while.head_181 
    li      a2, 12104
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 12216
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 13448
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 12216
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 12224
    add     a0,sp,a0
    ld      a1,0(a0)
    li      a0, 12224
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a3, 12296
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13444
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 12296
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_181
                    #      label while.exit_181: 
.while.exit_181:
                    #      label L16_0: 
.L16_0:
                    #      c_129 = i32 ans_18 
                    #      al_129 = i32 sum_129 
                    #      jump label: while.head_132 
    li      a1, 12303
    add     a1,sp,a1
    sb      a2,0(a1)
    li      a1, 13448
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a1, 13448
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 12628
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s11
    li      s11, 13452
    add     s11,sp,s11
    sw      s11,0(s11)
    j       .while.head_132
                    #      label while.exit_132: 
.while.exit_132:
                    #      ans_18 = i32 al_129 
    mv      s11, s6
                    #      ml_42 = i32 ans_18 
                    #      x_18 = i32 mr_42 
                    #      y_18 = i32 1_0 
                    #      jump label: L17_0 
    j       .L17_0
                    #      label L17_0: 
.L17_0:
                    #      new_var temp_156_196:i1 
                    #      temp_156_196 = icmp i32 Sge y_18, 15_0 
    li      a0, 12627
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 15
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a7,a0
    xori    a1,a1,1
                    #      br i1 temp_156_196, label branch_true_197, label branch_false_197 
    bnez    a1, .branch_true_197
    j       .branch_false_197
                    #      label branch_true_197: 
.branch_true_197:
                    #      new_var temp_157_199:i1 
                    #      temp_157_199 = icmp i32 Slt x_18, 0_0 
    li      a0, 0
    li      a1, 12103
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a3,a0
                    #      br i1 temp_157_199, label branch_true_200, label branch_false_200 
    bnez    a1, .branch_true_200
    j       .branch_false_200
                    #      label branch_true_200: 
.branch_true_200:
                    #      ans_18 = i32 0xffff_0 
                    #      jump label: L18_0 
    j       .L18_0
                    #      label branch_false_200: 
.branch_false_200:
                    #      ans_18 = i32 0_0 
                    #      jump label: L18_0 
    j       .L18_0
                    #      label L18_0: 
.L18_0:
                    #      label branch_false_197: 
.branch_false_197:
                    #      new_var temp_158_205:i1 
                    #      temp_158_205 = icmp i32 Sgt y_18, 0_0 
    li      a0, 0
    li      a1, 12103
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,a7
                    #      br i1 temp_158_205, label branch_true_206, label branch_false_206 
    bnez    a1, .branch_true_206
    j       .branch_false_206
                    #      label branch_true_206: 
.branch_true_206:
                    #      new_var temp_159_208:i1 
                    #      temp_159_208 = icmp i32 Sgt x_18, 0x7fff_0 
    li      a0, 0x7fff
    li      a1, 12101
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,a3
                    #      br i1 temp_159_208, label branch_true_209, label branch_false_209 
    bnez    a1, .branch_true_209
    j       .branch_false_209
                    #      label branch_true_209: 
.branch_true_209:
                    #      new_var temp_160_210:Array:i32:[Some(16_0)] 
                    #      temp_160_210 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 12100
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_161_210:ptr->i32 
                    #      new_var temp_162_210:i32 
                    #      temp_161_210 = getelementptr temp_160_210:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 12096
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a7
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_162_210 = load temp_161_210:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_163_210:i32 
                    #      temp_163_210 = Div i32 x_18, temp_162_210 
    li      a0, 12024
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,a3,a1
                    #      x_18 = i32 temp_163_210 
                    #      new_var temp_164_210:i32 
                    #      temp_164_210 = Add i32 y_18, 1_0 
    li      a0, 12016
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 12020
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a7,a0
                    #      new_var temp_165_210:i32 
                    #      temp_165_210 = Sub i32 15_0, temp_164_210 
    li      a0, 15
    li      a2, 12096
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_166_210:Array:i32:[Some(16_0)] 
                    #      temp_166_210 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 12012
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_167_210:ptr->i32 
                    #      new_var temp_168_210:i32 
                    #      temp_167_210 = getelementptr temp_166_210:Array:i32:[Some(16_0)] [Some(temp_165_210)] 
    li      a0, 0
    li      a1, 12004
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_168_210 = load temp_167_210:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_169_210:i32 
                    #      temp_169_210 = Sub i32 65536_0, temp_168_210 
    li      a0, 11936
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 65536
    li      a2, 12008
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_170_210:i32 
                    #      temp_170_210 = Add i32 x_18, temp_169_210 
    li      a1, 11932
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_170_210 
                    #      jump label: L19_0 
    j       .L19_0
                    #      label branch_false_209: 
.branch_false_209:
                    #      new_var temp_171_213:Array:i32:[Some(16_0)] 
                    #      temp_171_213 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 12100
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_172_213:ptr->i32 
                    #      new_var temp_173_213:i32 
                    #      temp_172_213 = getelementptr temp_171_213:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 11920
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a7
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_173_213 = load temp_172_213:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_174_213:i32 
                    #      temp_174_213 = Div i32 x_18, temp_173_213 
    li      a0, 11848
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,a3,a1
                    #      ans_18 = i32 temp_174_213 
                    #      jump label: L19_0 
    li      a2, 11920
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 11840
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 11928
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 11844
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 11928
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 11924
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 11924
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a3
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 12004
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .L19_0
                    #      label L19_0: 
.L19_0:
                    #      label branch_false_206: 
.branch_false_206:
                    #      ans_18 = i32 x_18 
                    #      jump label: L20_0 
    j       .L20_0
                    #      label L20_0: 
.L20_0:
                    #      label L21_0: 
.L21_0:
                    #      label L22_0: 
.L22_0:
                    #      mr_42 = i32 ans_18 
                    #      jump label: while.head_45 
    li      a0, 13294
    add     a0,sp,a0
    sb      s8,0(a0)
    li      a1, 12101
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s6, 12636
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s10, 12632
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s7, 13295
    add     s7,sp,s7
    sb      s7,0(s7)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s11
    li      s11, 13452
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s9, 13183
    add     s9,sp,s9
    sb      s9,0(s9)
    j       .while.head_45
                    #      label while.exit_45: 
.while.exit_45:
                    #      ans_18 = i32 mres_42 
                    #      pres_20 = i32 ans_18 
                    #      jump label: branch_false_40 
    li      s1, 13304
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s5, 13296
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s7, 13295
    add     s7,sp,s7
    sb      s7,0(s7)
    li      s4, 13300
    add     s4,sp,s4
    sw      s4,0(s4)
    j       .branch_false_40
                    #      label branch_false_40: 
.branch_false_40:
                    #      label L23_0: 
.L23_0:
                    #      ml_220 = i32 pl_20 
    mv      s1, a4
                    #      mr_220 = i32 pl_20 
    mv      s4, a4
                    #      mres_220 = i32 0_0 
    li      s5, 0
                    #      jump label: while.head_223 
    j       .while.head_223
                    #      label while.head_223: 
.while.head_223:
                    #      new_var temp_175_5483:i1 
                    #      temp_175_5483 = icmp i32 Ne mr_220, 0_0 
    li      s6, 0
    xor     s7,s4,s6
    snez    s7, s7
                    #      br i1 temp_175_5483, label while.body_223, label while.exit_223 
    bnez    s7, .while.body_223
    j       .while.exit_223
                    #      label while.body_223: 
.while.body_223:
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 mr_220 
                    #      y_18 = i32 1_0 
                    #      jump label: while.head_230 
    j       .while.head_230
                    #      label while.head_230: 
.while.head_230:
                    #      new_var temp_176_229:i1 
                    #      temp_176_229 = icmp i32 Slt i_18, 16_0 
    li      s6, 16
    slt     s8,a2,s6
                    #      br i1 temp_176_229, label while.body_230, label while.exit_230 
    bnez    s8, .while.body_230
    j       .while.exit_230
                    #      label while.body_230: 
.while.body_230:
                    #      new_var temp_177_232:i32 
                    #      temp_177_232 = Mod i32 y_18, 2_0 
    li      s6, 2
    rem     s9,a7,s6
                    #      new_var temp_178_232:i32 
                    #      temp_178_232 = Mod i32 x_18, 2_0 
                    #found literal reg Some(s6) already exist with 2_0
    rem     s10,a3,s6
                    #      new_var temp_179_232:i1 
                    #      temp_179_232 = icmp i32 Ne temp_178_232, 0_0 
    li      s11, 0
    xor     s6,s10,s11
    snez    s6, s6
                    #      new_var temp_180_232:i1 
                    #      temp_179_232 = icmp i32 Ne temp_177_232, 0_0 
                    #found literal reg Some(s11) already exist with 0_0
                    #      new_var temp_181_232:i1 
                    #      temp_181_232 = And i1 temp_179_232, temp_180_232 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,s6,s11
                    #      br i1 temp_181_232, label branch_true_233, label branch_false_233 
    bnez    a0, .branch_true_233
    j       .branch_false_233
                    #      label branch_true_233: 
.branch_true_233:
                    #      new_var temp_182_234:Array:i32:[Some(16_0)] 
                    #      temp_182_234 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 11813
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_183_234:ptr->i32 
                    #      new_var temp_184_234:i32 
                    #      temp_183_234 = getelementptr temp_182_234:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 11808
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_184_234 = load temp_183_234:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_185_234:i32 
                    #      temp_185_234 = Mul i32 1_0, temp_184_234 
    li      a0, 11736
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_186_234:i32 
                    #      temp_186_234 = Add i32 ans_18, temp_185_234 
    li      a1, 11732
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_186_234 
                    #      jump label: branch_false_233 
    li      a2, 11728
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13448
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 11724
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 11808
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 11813
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 11813
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_233
                    #      label branch_false_233: 
.branch_false_233:
                    #      label L24_0: 
.L24_0:
                    #      new_var temp_187_231:i32 
                    #      temp_187_231 = Div i32 x_18, 2_0 
    li      a0, 11813
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a3,a0
                    #      x_18 = i32 temp_187_231 
                    #      new_var temp_188_231:i32 
                    #      temp_188_231 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 11720
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
                    #      y_18 = i32 temp_188_231 
                    #      new_var temp_189_231:i32 
                    #      temp_189_231 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 11716
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a2,a0
                    #      i_18 = i32 temp_189_231 
                    #      jump label: while.head_230 
    li      s8, 11826
    add     s8,sp,s8
    sb      s8,0(s8)
    li      a1, 11712
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s6, 11815
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s10, 11816
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 13452
    add     a2,sp,a2
    lw      a0,0(a2)
    li      s11, 11814
    add     s11,sp,s11
    sb      s11,0(s11)
    li      s9, 11820
    add     s9,sp,s9
    sw      s9,0(s9)
    j       .while.head_230
                    #      label while.exit_230: 
.while.exit_230:
                    #      new_var temp_190_5892:i1 
                    #      temp_190_5892 = icmp i32 Ne ans_18, 0_0 
    li      s6, 0
    xor     s9,a0,s6
    snez    s9, s9
                    #      br i1 temp_190_5892, label branch_true_240, label branch_false_240 
    bnez    s9, .branch_true_240
    j       .branch_false_240
                    #      label branch_true_240: 
.branch_true_240:
                    #      al_242 = i32 mres_220 
    mv      s6, s5
                    #      c_242 = i32 ml_220 
    mv      s10, s1
                    #      new_var sum_242:i32 
                    #      jump label: while.head_245 
    j       .while.head_245
                    #      label while.head_245: 
.while.head_245:
                    #      new_var temp_191_5986:i1 
                    #      temp_191_5986 = icmp i32 Ne c_242, 0_0 
    li      s11, 0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,s11
    snez    a0, a0
                    #      br i1 temp_191_5986, label while.body_245, label while.exit_245 
    bnez    a0, .while.body_245
    j       .while.exit_245
                    #      label while.body_245: 
.while.body_245:
                    #      ans_18 = i32 0_0 
    li      s11, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_242 
                    #      y_18 = i32 c_242 
                    #      jump label: while.head_252 
    j       .while.head_252
                    #      label while.head_252: 
.while.head_252:
                    #      new_var temp_192_251:i1 
                    #      temp_192_251 = icmp i32 Slt i_18, 16_0 
    li      a0, 11695
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 16
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a2,a0
                    #      br i1 temp_192_251, label while.body_252, label while.exit_252 
    bnez    a1, .while.body_252
    j       .while.exit_252
                    #      label while.body_252: 
.while.body_252:
                    #      new_var temp_193_254:i32 
                    #      temp_193_254 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 11694
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,a3,a0
                    #      new_var temp_194_6169:i1 
                    #      temp_194_6169 = icmp i32 Ne temp_193_254, 0_0 
    li      a0, 0
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_194_6169, label branch_true_255, label branch_false_255 
    bnez    a2, .branch_true_255
    j       .branch_false_255
                    #      label branch_true_255: 
.branch_true_255:
                    #      new_var temp_195_257:i32 
                    #      temp_195_257 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 11688
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,a7,a0
                    #      new_var temp_196_257:i1 
                    #      temp_196_257 = icmp i32 Eq temp_195_257, 0_0 
    li      a0, 0
    li      a2, 11687
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_196_257, label branch_true_258, label branch_false_258 
    bnez    a2, .branch_true_258
    j       .branch_false_258
                    #      label branch_true_258: 
.branch_true_258:
                    #      new_var temp_197_259:Array:i32:[Some(16_0)] 
                    #      temp_197_259 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 11680
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_198_259:ptr->i32 
                    #      new_var temp_199_259:i32 
                    #      temp_198_259 = getelementptr temp_197_259:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 11672
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 11679
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_199_259 = load temp_198_259:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_200_259:i32 
                    #      temp_200_259 = Mul i32 1_0, temp_199_259 
    li      a0, 11600
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_201_259:i32 
                    #      temp_201_259 = Add i32 ans_18, temp_200_259 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_201_259 
                    #      jump label: branch_false_258 
    li      a2, 11592
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 11588
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 11679
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 11596
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 11679
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 11680
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 11680
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 11672
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_258
                    #      label branch_false_258: 
.branch_false_258:
                    #      label branch_false_255: 
.branch_false_255:
                    #      new_var temp_205_261:i32 
                    #      temp_205_261 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 11688
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,a7,a0
                    #      new_var temp_206_6314:i1 
                    #      temp_206_6314 = icmp i32 Ne temp_205_261, 0_0 
    li      a0, 0
    li      a2, 11687
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_206_6314, label branch_true_262, label branch_false_262 
    bnez    a2, .branch_true_262
    j       .branch_false_262
                    #      label branch_true_262: 
.branch_true_262:
                    #      new_var temp_207_263:Array:i32:[Some(16_0)] 
                    #      temp_207_263 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 11572
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_208_263:ptr->i32 
                    #      new_var temp_209_263:i32 
                    #      temp_208_263 = getelementptr temp_207_263:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 11564
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 11571
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_209_263 = load temp_208_263:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_210_263:i32 
                    #      temp_210_263 = Mul i32 1_0, temp_209_263 
    li      a0, 11496
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_211_263:i32 
                    #      temp_211_263 = Add i32 ans_18, temp_210_263 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_211_263 
                    #      jump label: branch_false_262 
    li      a2, 11488
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 11484
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 11571
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 11492
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 11571
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 11572
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 11572
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 11564
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_262
                    #      label branch_false_262: 
.branch_false_262:
                    #      label L25_0: 
.L25_0:
                    #      label L26_0: 
.L26_0:
                    #      new_var temp_202_253:i32 
                    #      temp_202_253 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 11572
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a3,a0
                    #      x_18 = i32 temp_202_253 
                    #      new_var temp_203_253:i32 
                    #      temp_203_253 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 11584
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
                    #      y_18 = i32 temp_203_253 
                    #      new_var temp_204_253:i32 
                    #      temp_204_253 = Add i32 i_18, 1_0 
    li      a1, 11580
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 11571
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,a0,a1
                    #      i_18 = i32 temp_204_253 
                    #      jump label: while.head_252 
    li      a2, 11576
    add     a2,sp,a2
    sw      a2,0(a2)
    mv      a2, a0
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 11695
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 11695
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_252
                    #      label while.exit_252: 
.while.exit_252:
                    #      sum_242 = i32 ans_18 
    mv      a0, s11
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_242 
                    #      y_18 = i32 c_242 
                    #      jump label: while.head_274 
    j       .while.head_274
                    #      label while.head_274: 
.while.head_274:
                    #      new_var temp_212_273:i1 
                    #      temp_212_273 = icmp i32 Slt i_18, 16_0 
    li      a0, 11696
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 11694
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a2,a0
                    #      br i1 temp_212_273, label while.body_274, label while.exit_274 
    bnez    a1, .while.body_274
    j       .while.exit_274
                    #      label while.body_274: 
.while.body_274:
                    #      new_var temp_213_276:i32 
                    #      temp_213_276 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 11483
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,a7,a0
                    #      new_var temp_214_276:i32 
                    #      temp_214_276 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 11476
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,a3,a0
                    #      new_var temp_215_276:i1 
                    #      temp_215_276 = icmp i32 Ne temp_214_276, 0_0 
    li      a0, 0
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_216_276:i1 
                    #      temp_215_276 = icmp i32 Ne temp_213_276, 0_0 
    li      a1, 11472
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_217_276:i1 
                    #      temp_217_276 = And i1 temp_215_276, temp_216_276 
    li      a0, 11476
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_217_276, label branch_true_277, label branch_false_277 
    bnez    a0, .branch_true_277
    j       .branch_false_277
                    #      label branch_true_277: 
.branch_true_277:
                    #      new_var temp_218_278:Array:i32:[Some(16_0)] 
                    #      temp_218_278 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 11469
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 11470
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_219_278:ptr->i32 
                    #      new_var temp_220_278:i32 
                    #      temp_219_278 = getelementptr temp_218_278:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 11464
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 11471
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_220_278 = load temp_219_278:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_221_278:i32 
                    #      temp_221_278 = Mul i32 1_0, temp_220_278 
    li      a0, 11392
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_222_278:i32 
                    #      temp_222_278 = Add i32 ans_18, temp_221_278 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_222_278 
                    #      jump label: branch_false_277 
    li      a2, 11384
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 11380
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 11471
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 11388
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 11471
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 11470
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 11470
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 11464
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 11469
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 11469
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_277
                    #      label branch_false_277: 
.branch_false_277:
                    #      label L27_0: 
.L27_0:
                    #      new_var temp_223_275:i32 
                    #      temp_223_275 = Div i32 x_18, 2_0 
    li      a0, 11469
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 11470
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a3,a0
                    #      x_18 = i32 temp_223_275 
                    #      new_var temp_224_275:i32 
                    #      temp_224_275 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 11376
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
                    #      y_18 = i32 temp_224_275 
                    #      new_var temp_225_275:i32 
                    #      temp_225_275 = Add i32 i_18, 1_0 
    li      a1, 11372
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 11471
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,a0,a1
                    #      i_18 = i32 temp_225_275 
                    #      jump label: while.head_274 
    li      a2, 11368
    add     a2,sp,a2
    sw      a2,0(a2)
    mv      a2, a0
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 11694
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 11694
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 11696
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 11696
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_274
                    #      label while.exit_274: 
.while.exit_274:
                    #      c_242 = i32 ans_18 
                    #      jump label: L28_0 
    j       .L28_0
                    #      label L28_0: 
.L28_0:
                    #      new_var temp_226_284:i1 
                    #      temp_226_284 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 1
    li      a1, 11483
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 15
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_226_284, label branch_true_285, label branch_false_285 
    bnez    a2, .branch_true_285
    j       .branch_false_285
                    #      label branch_true_285: 
.branch_true_285:
                    #      ans_18 = i32 0_0 
                    #      jump label: while.exit_294 
    j       .while.exit_294
                    #      label branch_false_285: 
.branch_false_285:
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
    li      a0, 0
                    #      new_var temp_227_288:Array:i32:[Some(16_0)] 
                    #      temp_227_288 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_228_288:ptr->i32 
                    #      new_var temp_229_288:i32 
                    #      temp_228_288 = getelementptr temp_227_288:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 11360
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 11367
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_229_288 = load temp_228_288:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_230_288:i32 
                    #      temp_230_288 = Mul i32 c_242, temp_229_288 
    mul     a2,s10,a0
                    #      x_18 = i32 temp_230_288 
    li      a0, 11284
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a2
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_294 
    j       .while.head_294
                    #      label while.head_294: 
.while.head_294:
                    #      new_var temp_231_293:i1 
                    #      temp_231_293 = icmp i32 Slt i_18, 16_0 
    li      a0, 13444
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 11288
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 16
    li      a2, 11280
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a0,a1
                    #      br i1 temp_231_293, label while.body_294, label while.exit_294 
    bnez    a2, .while.body_294
    li      a1, 11279
    add     a1,sp,a1
    sb      a2,0(a1)
    li      a1, 11367
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a1, 11367
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 11360
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_294
                    #      label while.body_294: 
.while.body_294:
                    #      new_var temp_232_296:i32 
                    #      temp_232_296 = Mod i32 y_18, 2_0 
    li      a1, 2
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,a1
                    #      new_var temp_233_296:i32 
                    #      temp_233_296 = Mod i32 x_18, 2_0 
    li      a0, 11272
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2
    li      a2, 11279
    add     a2,sp,a2
    sb      a2,0(a2)
    rem     a2,a1,a0
                    #      new_var temp_234_296:i1 
                    #      temp_234_296 = icmp i32 Ne temp_233_296, 0_0 
    li      a0, 0
    li      a1, 13444
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a2,a0
    snez    a1, a1
                    #      new_var temp_235_296:i1 
                    #      temp_234_296 = icmp i32 Ne temp_232_296, 0_0 
    li      a1, 11267
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 11268
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      new_var temp_236_296:i1 
                    #      temp_236_296 = And i1 temp_234_296, temp_235_296 
    li      a0, 11272
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_236_296, label branch_true_297, label branch_false_297 
    bnez    a0, .branch_true_297
    j       .branch_false_297
                    #      label branch_true_297: 
.branch_true_297:
                    #      new_var temp_237_298:Array:i32:[Some(16_0)] 
                    #      temp_237_298 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 11265
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 11266
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_238_298:ptr->i32 
                    #      new_var temp_239_298:i32 
                    #      temp_238_298 = getelementptr temp_237_298:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 11260
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 11267
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 11360
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_239_298 = load temp_238_298:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_240_298:i32 
                    #      temp_240_298 = Mul i32 1_0, temp_239_298 
    li      a0, 11192
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_241_298:i32 
                    #      temp_241_298 = Add i32 ans_18, temp_240_298 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_241_298 
                    #      jump label: branch_false_297 
    li      a2, 11184
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 11180
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 11267
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 11188
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 11267
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 11266
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 11266
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 11260
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 11265
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 11265
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 11360
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_297
                    #      label branch_false_297: 
.branch_false_297:
                    #      label L29_0: 
.L29_0:
                    #      new_var temp_242_295:i32 
                    #      temp_242_295 = Div i32 x_18, 2_0 
    li      a0, 11265
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a1, 11266
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 2
    li      a2, 11267
    add     a2,sp,a2
    sb      a2,0(a2)
    div     a2,a0,a1
                    #      x_18 = i32 temp_242_295 
                    #      new_var temp_243_295:i32 
                    #      temp_243_295 = Div i32 y_18, 2_0 
                    #found literal reg Some(a1) already exist with 2_0
    li      a0, 13444
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,a1
                    #      y_18 = i32 temp_243_295 
                    #      new_var temp_244_295:i32 
                    #      temp_244_295 = Add i32 i_18, 1_0 
    li      a0, 11172
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 11176
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
                    #      i_18 = i32 temp_244_295 
                    #      jump label: while.head_294 
    li      a2, 11168
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 11280
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 13448
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 11280
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 11288
    add     a0,sp,a0
    ld      a1,0(a0)
    li      a0, 11288
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a3, 11360
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13444
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 11360
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_294
                    #      label while.exit_294: 
.while.exit_294:
                    #      label L30_0: 
.L30_0:
                    #      c_242 = i32 ans_18 
                    #      al_242 = i32 sum_242 
                    #      jump label: while.head_245 
    li      a1, 11367
    add     a1,sp,a1
    sb      a2,0(a1)
    li      a1, 13448
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a1, 13448
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 11696
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s11
    li      s11, 13452
    add     s11,sp,s11
    sw      s11,0(s11)
    j       .while.head_245
                    #      label while.exit_245: 
.while.exit_245:
                    #      ans_18 = i32 al_242 
    mv      s11, s6
                    #      mres_220 = i32 ans_18 
                    #      jump label: branch_false_240 
    li      s6, 11704
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s10, 11700
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 11695
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s11
    li      s11, 13452
    add     s11,sp,s11
    sw      s11,0(s11)
    j       .branch_false_240
                    #      label branch_false_240: 
.branch_false_240:
                    #      label L31_0: 
.L31_0:
                    #      al_307 = i32 ml_220 
    mv      s6, s1
                    #      c_307 = i32 ml_220 
    mv      s10, s1
                    #      new_var sum_307:i32 
                    #      jump label: while.head_310 
    j       .while.head_310
                    #      label while.head_310: 
.while.head_310:
                    #      new_var temp_245_7661:i1 
                    #      temp_245_7661 = icmp i32 Ne c_307, 0_0 
    li      s11, 0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s10,s11
    snez    a0, a0
                    #      br i1 temp_245_7661, label while.body_310, label while.exit_310 
    bnez    a0, .while.body_310
    j       .while.exit_310
                    #      label while.body_310: 
.while.body_310:
                    #      ans_18 = i32 0_0 
    li      s11, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_307 
                    #      y_18 = i32 c_307 
                    #      jump label: while.head_317 
    j       .while.head_317
                    #      label while.head_317: 
.while.head_317:
                    #      new_var temp_246_316:i1 
                    #      temp_246_316 = icmp i32 Slt i_18, 16_0 
    li      a0, 11155
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 16
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a2,a0
                    #      br i1 temp_246_316, label while.body_317, label while.exit_317 
    bnez    a1, .while.body_317
    j       .while.exit_317
                    #      label while.body_317: 
.while.body_317:
                    #      new_var temp_247_319:i32 
                    #      temp_247_319 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 11154
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,a3,a0
                    #      new_var temp_248_7844:i1 
                    #      temp_248_7844 = icmp i32 Ne temp_247_319, 0_0 
    li      a0, 0
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_248_7844, label branch_true_320, label branch_false_320 
    bnez    a2, .branch_true_320
    j       .branch_false_320
                    #      label branch_true_320: 
.branch_true_320:
                    #      new_var temp_249_322:i32 
                    #      temp_249_322 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 11148
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,a7,a0
                    #      new_var temp_250_322:i1 
                    #      temp_250_322 = icmp i32 Eq temp_249_322, 0_0 
    li      a0, 0
    li      a2, 11147
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_250_322, label branch_true_323, label branch_false_323 
    bnez    a2, .branch_true_323
    j       .branch_false_323
                    #      label branch_true_323: 
.branch_true_323:
                    #      new_var temp_251_324:Array:i32:[Some(16_0)] 
                    #      temp_251_324 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 11140
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_252_324:ptr->i32 
                    #      new_var temp_253_324:i32 
                    #      temp_252_324 = getelementptr temp_251_324:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 11132
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 11139
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_253_324 = load temp_252_324:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_254_324:i32 
                    #      temp_254_324 = Mul i32 1_0, temp_253_324 
    li      a0, 11064
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_255_324:i32 
                    #      temp_255_324 = Add i32 ans_18, temp_254_324 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_255_324 
                    #      jump label: branch_false_323 
    li      a2, 11056
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 11052
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 11139
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 11060
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 11139
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 11140
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 11140
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 11132
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_323
                    #      label branch_false_323: 
.branch_false_323:
                    #      label branch_false_320: 
.branch_false_320:
                    #      new_var temp_259_326:i32 
                    #      temp_259_326 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 11148
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,a7,a0
                    #      new_var temp_260_7989:i1 
                    #      temp_260_7989 = icmp i32 Ne temp_259_326, 0_0 
    li      a0, 0
    li      a2, 11147
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_260_7989, label branch_true_327, label branch_false_327 
    bnez    a2, .branch_true_327
    j       .branch_false_327
                    #      label branch_true_327: 
.branch_true_327:
                    #      new_var temp_261_328:Array:i32:[Some(16_0)] 
                    #      temp_261_328 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 11036
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_262_328:ptr->i32 
                    #      new_var temp_263_328:i32 
                    #      temp_262_328 = getelementptr temp_261_328:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 11028
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 11035
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_263_328 = load temp_262_328:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_264_328:i32 
                    #      temp_264_328 = Mul i32 1_0, temp_263_328 
    li      a0, 10960
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_265_328:i32 
                    #      temp_265_328 = Add i32 ans_18, temp_264_328 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_265_328 
                    #      jump label: branch_false_327 
    li      a2, 10952
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 10948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 11035
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 10956
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 11035
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 11036
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 11036
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 11028
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_327
                    #      label branch_false_327: 
.branch_false_327:
                    #      label L32_0: 
.L32_0:
                    #      label L33_0: 
.L33_0:
                    #      new_var temp_256_318:i32 
                    #      temp_256_318 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 11036
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a3,a0
                    #      x_18 = i32 temp_256_318 
                    #      new_var temp_257_318:i32 
                    #      temp_257_318 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 11048
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
                    #      y_18 = i32 temp_257_318 
                    #      new_var temp_258_318:i32 
                    #      temp_258_318 = Add i32 i_18, 1_0 
    li      a1, 11044
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 11035
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,a0,a1
                    #      i_18 = i32 temp_258_318 
                    #      jump label: while.head_317 
    li      a2, 11040
    add     a2,sp,a2
    sw      a2,0(a2)
    mv      a2, a0
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 11155
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 11155
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_317
                    #      label while.exit_317: 
.while.exit_317:
                    #      sum_307 = i32 ans_18 
    mv      a0, s11
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_307 
                    #      y_18 = i32 c_307 
                    #      jump label: while.head_339 
    j       .while.head_339
                    #      label while.head_339: 
.while.head_339:
                    #      new_var temp_266_338:i1 
                    #      temp_266_338 = icmp i32 Slt i_18, 16_0 
    li      a0, 11156
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 11154
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a2,a0
                    #      br i1 temp_266_338, label while.body_339, label while.exit_339 
    bnez    a1, .while.body_339
    j       .while.exit_339
                    #      label while.body_339: 
.while.body_339:
                    #      new_var temp_267_341:i32 
                    #      temp_267_341 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 10947
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,a7,a0
                    #      new_var temp_268_341:i32 
                    #      temp_268_341 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 10940
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,a3,a0
                    #      new_var temp_269_341:i1 
                    #      temp_269_341 = icmp i32 Ne temp_268_341, 0_0 
    li      a0, 0
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_270_341:i1 
                    #      temp_269_341 = icmp i32 Ne temp_267_341, 0_0 
    li      a1, 10936
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_271_341:i1 
                    #      temp_271_341 = And i1 temp_269_341, temp_270_341 
    li      a0, 10940
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_271_341, label branch_true_342, label branch_false_342 
    bnez    a0, .branch_true_342
    j       .branch_false_342
                    #      label branch_true_342: 
.branch_true_342:
                    #      new_var temp_272_343:Array:i32:[Some(16_0)] 
                    #      temp_272_343 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 10933
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 10934
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_273_343:ptr->i32 
                    #      new_var temp_274_343:i32 
                    #      temp_273_343 = getelementptr temp_272_343:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 10928
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 10935
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_274_343 = load temp_273_343:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_275_343:i32 
                    #      temp_275_343 = Mul i32 1_0, temp_274_343 
    li      a0, 10856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_276_343:i32 
                    #      temp_276_343 = Add i32 ans_18, temp_275_343 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_276_343 
                    #      jump label: branch_false_342 
    li      a2, 10848
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 10844
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 10935
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 10852
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 10935
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 10934
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 10934
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10928
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 10933
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 10933
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_342
                    #      label branch_false_342: 
.branch_false_342:
                    #      label L34_0: 
.L34_0:
                    #      new_var temp_277_340:i32 
                    #      temp_277_340 = Div i32 x_18, 2_0 
    li      a0, 10933
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 10934
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a3,a0
                    #      x_18 = i32 temp_277_340 
                    #      new_var temp_278_340:i32 
                    #      temp_278_340 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 10840
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,a7,a0
                    #      y_18 = i32 temp_278_340 
                    #      new_var temp_279_340:i32 
                    #      temp_279_340 = Add i32 i_18, 1_0 
    li      a1, 10836
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 10935
    add     a2,sp,a2
    sb      a2,0(a2)
    add     a2,a0,a1
                    #      i_18 = i32 temp_279_340 
                    #      jump label: while.head_339 
    li      a2, 10832
    add     a2,sp,a2
    sw      a2,0(a2)
    mv      a2, a0
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 11154
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 11154
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 11156
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 11156
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_339
                    #      label while.exit_339: 
.while.exit_339:
                    #      c_307 = i32 ans_18 
                    #      jump label: L35_0 
    j       .L35_0
                    #      label L35_0: 
.L35_0:
                    #      new_var temp_280_349:i1 
                    #      temp_280_349 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 1
    li      a1, 10947
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 15
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_280_349, label branch_true_350, label branch_false_350 
    bnez    a2, .branch_true_350
    j       .branch_false_350
                    #      label branch_true_350: 
.branch_true_350:
                    #      ans_18 = i32 0_0 
                    #      jump label: while.exit_359 
    j       .while.exit_359
                    #      label branch_false_350: 
.branch_false_350:
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
    li      a0, 0
                    #      new_var temp_281_353:Array:i32:[Some(16_0)] 
                    #      temp_281_353 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_282_353:ptr->i32 
                    #      new_var temp_283_353:i32 
                    #      temp_282_353 = getelementptr temp_281_353:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 10824
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 10831
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_283_353 = load temp_282_353:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_284_353:i32 
                    #      temp_284_353 = Mul i32 c_307, temp_283_353 
    mul     a2,s10,a0
                    #      x_18 = i32 temp_284_353 
    li      a0, 10748
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a2
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_359 
    j       .while.head_359
                    #      label while.head_359: 
.while.head_359:
                    #      new_var temp_285_358:i1 
                    #      temp_285_358 = icmp i32 Slt i_18, 16_0 
    li      a0, 13444
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 10752
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 16
    li      a2, 10744
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a0,a1
                    #      br i1 temp_285_358, label while.body_359, label while.exit_359 
    bnez    a2, .while.body_359
    li      a1, 10743
    add     a1,sp,a1
    sb      a2,0(a1)
    li      a1, 10831
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a1, 10831
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10824
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 13444
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_359
                    #      label while.body_359: 
.while.body_359:
                    #      new_var temp_286_361:i32 
                    #      temp_286_361 = Mod i32 y_18, 2_0 
    li      a1, 2
    li      a0, 13448
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,a7,a1
                    #      new_var temp_287_361:i32 
                    #      temp_287_361 = Mod i32 x_18, 2_0 
    li      a0, 10736
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2
    li      a2, 10743
    add     a2,sp,a2
    sb      a2,0(a2)
    rem     a2,a1,a0
                    #      new_var temp_288_361:i1 
                    #      temp_288_361 = icmp i32 Ne temp_287_361, 0_0 
    li      a0, 0
    li      a1, 13444
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,a2,a0
    snez    a1, a1
                    #      new_var temp_289_361:i1 
                    #      temp_288_361 = icmp i32 Ne temp_286_361, 0_0 
    li      a1, 10731
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 10732
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      new_var temp_290_361:i1 
                    #      temp_290_361 = And i1 temp_288_361, temp_289_361 
    li      a0, 10736
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_290_361, label branch_true_362, label branch_false_362 
    bnez    a0, .branch_true_362
    j       .branch_false_362
                    #      label branch_true_362: 
.branch_true_362:
                    #      new_var temp_291_363:Array:i32:[Some(16_0)] 
                    #      temp_291_363 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 10729
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 10730
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_292_363:ptr->i32 
                    #      new_var temp_293_363:i32 
                    #      temp_292_363 = getelementptr temp_291_363:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 10724
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 10731
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 10824
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_293_363 = load temp_292_363:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_294_363:i32 
                    #      temp_294_363 = Mul i32 1_0, temp_293_363 
    li      a0, 10656
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_295_363:i32 
                    #      temp_295_363 = Add i32 ans_18, temp_294_363 
    add     a0,s11,a2
                    #      ans_18 = i32 temp_295_363 
                    #      jump label: branch_false_362 
    li      a2, 10648
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 10644
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 10731
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 10652
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 10731
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 10730
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 10730
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10724
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 10729
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 10729
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10824
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_362
                    #      label branch_false_362: 
.branch_false_362:
                    #      label L36_0: 
.L36_0:
                    #      new_var temp_296_360:i32 
                    #      temp_296_360 = Div i32 x_18, 2_0 
    li      a0, 10729
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a1, 10730
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 2
    li      a2, 10731
    add     a2,sp,a2
    sb      a2,0(a2)
    div     a2,a0,a1
                    #      x_18 = i32 temp_296_360 
                    #      new_var temp_297_360:i32 
                    #      temp_297_360 = Div i32 y_18, 2_0 
                    #found literal reg Some(a1) already exist with 2_0
    li      a0, 13444
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,a7,a1
                    #      y_18 = i32 temp_297_360 
                    #      new_var temp_298_360:i32 
                    #      temp_298_360 = Add i32 i_18, 1_0 
    li      a0, 10636
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 10640
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
                    #      i_18 = i32 temp_298_360 
                    #      jump label: while.head_359 
    li      a2, 10632
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 10744
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 13448
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 10744
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 10752
    add     a0,sp,a0
    ld      a1,0(a0)
    li      a0, 10752
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a3, 10824
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13444
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10824
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_359
                    #      label while.exit_359: 
.while.exit_359:
                    #      label L37_0: 
.L37_0:
                    #      c_307 = i32 ans_18 
                    #      al_307 = i32 sum_307 
                    #      jump label: while.head_310 
    li      a1, 10831
    add     a1,sp,a1
    sb      a2,0(a1)
    li      a1, 13448
    add     a1,sp,a1
    lw      a2,0(a1)
    li      a1, 13448
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 11156
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s11
    li      s11, 13452
    add     s11,sp,s11
    sw      s11,0(s11)
    j       .while.head_310
                    #      label while.exit_310: 
.while.exit_310:
                    #      ans_18 = i32 al_307 
    mv      s11, s6
                    #      ml_220 = i32 ans_18 
                    #      x_18 = i32 mr_220 
                    #      y_18 = i32 1_0 
                    #      jump label: L38_0 
    j       .L38_0
                    #      label L38_0: 
.L38_0:
                    #      new_var temp_299_374:i1 
                    #      temp_299_374 = icmp i32 Sge y_18, 15_0 
    li      a0, 11155
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 15
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a7,a0
    xori    a1,a1,1
                    #      br i1 temp_299_374, label branch_true_375, label branch_false_375 
    bnez    a1, .branch_true_375
    j       .branch_false_375
                    #      label branch_true_375: 
.branch_true_375:
                    #      new_var temp_300_377:i1 
                    #      temp_300_377 = icmp i32 Slt x_18, 0_0 
    li      a0, 0
    li      a1, 10631
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a3,a0
                    #      br i1 temp_300_377, label branch_true_378, label branch_false_378 
    bnez    a1, .branch_true_378
    j       .branch_false_378
                    #      label branch_true_378: 
.branch_true_378:
                    #      ans_18 = i32 0xffff_0 
                    #      jump label: L39_0 
    j       .L39_0
                    #      label branch_false_378: 
.branch_false_378:
                    #      ans_18 = i32 0_0 
                    #      jump label: L39_0 
    j       .L39_0
                    #      label L39_0: 
.L39_0:
                    #      label branch_false_375: 
.branch_false_375:
                    #      new_var temp_301_383:i1 
                    #      temp_301_383 = icmp i32 Sgt y_18, 0_0 
    li      a0, 0
    li      a1, 10631
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,a7
                    #      br i1 temp_301_383, label branch_true_384, label branch_false_384 
    bnez    a1, .branch_true_384
    j       .branch_false_384
                    #      label branch_true_384: 
.branch_true_384:
                    #      new_var temp_302_386:i1 
                    #      temp_302_386 = icmp i32 Sgt x_18, 0x7fff_0 
    li      a0, 0x7fff
    li      a1, 10629
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,a3
                    #      br i1 temp_302_386, label branch_true_387, label branch_false_387 
    bnez    a1, .branch_true_387
    j       .branch_false_387
                    #      label branch_true_387: 
.branch_true_387:
                    #      new_var temp_303_388:Array:i32:[Some(16_0)] 
                    #      temp_303_388 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 10628
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_304_388:ptr->i32 
                    #      new_var temp_305_388:i32 
                    #      temp_304_388 = getelementptr temp_303_388:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 10624
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a7
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_305_388 = load temp_304_388:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_306_388:i32 
                    #      temp_306_388 = Div i32 x_18, temp_305_388 
    li      a0, 10552
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,a3,a1
                    #      x_18 = i32 temp_306_388 
                    #      new_var temp_307_388:i32 
                    #      temp_307_388 = Add i32 y_18, 1_0 
    li      a0, 10544
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 10548
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a7,a0
                    #      new_var temp_308_388:i32 
                    #      temp_308_388 = Sub i32 15_0, temp_307_388 
    li      a0, 15
    li      a2, 10624
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_309_388:Array:i32:[Some(16_0)] 
                    #      temp_309_388 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 10540
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_310_388:ptr->i32 
                    #      new_var temp_311_388:i32 
                    #      temp_310_388 = getelementptr temp_309_388:Array:i32:[Some(16_0)] [Some(temp_308_388)] 
    li      a0, 0
    li      a1, 10532
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_311_388 = load temp_310_388:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_312_388:i32 
                    #      temp_312_388 = Sub i32 65536_0, temp_311_388 
    li      a0, 10464
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 65536
    li      a2, 10536
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_313_388:i32 
                    #      temp_313_388 = Add i32 x_18, temp_312_388 
    li      a1, 10460
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_313_388 
                    #      jump label: L40_0 
    j       .L40_0
                    #      label branch_false_387: 
.branch_false_387:
                    #      new_var temp_314_391:Array:i32:[Some(16_0)] 
                    #      temp_314_391 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 10628
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_315_391:ptr->i32 
                    #      new_var temp_316_391:i32 
                    #      temp_315_391 = getelementptr temp_314_391:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 10448
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a7
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_316_391 = load temp_315_391:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_317_391:i32 
                    #      temp_317_391 = Div i32 x_18, temp_316_391 
    li      a0, 10376
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,a3,a1
                    #      ans_18 = i32 temp_317_391 
                    #      jump label: L40_0 
    li      a2, 10448
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 10368
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 10456
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 10372
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 10456
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 10452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 10452
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a3
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10532
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .L40_0
                    #      label L40_0: 
.L40_0:
                    #      label branch_false_384: 
.branch_false_384:
                    #      ans_18 = i32 x_18 
                    #      jump label: L41_0 
    j       .L41_0
                    #      label L41_0: 
.L41_0:
                    #      label L42_0: 
.L42_0:
                    #      label L43_0: 
.L43_0:
                    #      mr_220 = i32 ans_18 
                    #      jump label: while.head_223 
    li      a0, 11826
    add     a0,sp,a0
    sb      s8,0(a0)
    li      a1, 10629
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s6, 11164
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s10, 11160
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s7, 11827
    add     s7,sp,s7
    sb      s7,0(s7)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s11
    li      s11, 13452
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s9, 11711
    add     s9,sp,s9
    sb      s9,0(s9)
    j       .while.head_223
                    #      label while.exit_223: 
.while.exit_223:
                    #      ans_18 = i32 mres_220 
                    #      pl_20 = i32 ans_18 
                    #      x_18 = i32 pr_20 
                    #      y_18 = i32 1_0 
                    #      jump label: L44_0 
    j       .L44_0
                    #      label L44_0: 
.L44_0:
                    #      new_var temp_318_400:i1 
                    #      temp_318_400 = icmp i32 Sge y_18, 15_0 
    li      s6, 15
    slt     s8,a7,s6
    xori    s8,s8,1
                    #      br i1 temp_318_400, label branch_true_401, label branch_false_401 
    bnez    s8, .branch_true_401
    j       .branch_false_401
                    #      label branch_true_401: 
.branch_true_401:
                    #      new_var temp_319_403:i1 
                    #      temp_319_403 = icmp i32 Slt x_18, 0_0 
    li      s6, 0
    slt     s9,a3,s6
                    #      br i1 temp_319_403, label branch_true_404, label branch_false_404 
    bnez    s9, .branch_true_404
    j       .branch_false_404
                    #      label branch_true_404: 
.branch_true_404:
                    #      ans_18 = i32 0xffff_0 
                    #      jump label: L45_0 
    j       .L45_0
                    #      label branch_false_404: 
.branch_false_404:
                    #      ans_18 = i32 0_0 
                    #      jump label: L45_0 
    j       .L45_0
                    #      label L45_0: 
.L45_0:
                    #      label branch_false_401: 
.branch_false_401:
                    #      new_var temp_320_409:i1 
                    #      temp_320_409 = icmp i32 Sgt y_18, 0_0 
    li      s6, 0
    slt     s9,s6,a7
                    #      br i1 temp_320_409, label branch_true_410, label branch_false_410 
    bnez    s9, .branch_true_410
    j       .branch_false_410
                    #      label branch_true_410: 
.branch_true_410:
                    #      new_var temp_321_412:i1 
                    #      temp_321_412 = icmp i32 Sgt x_18, 0x7fff_0 
    li      s6, 0x7fff
    slt     s10,s6,a3
                    #      br i1 temp_321_412, label branch_true_413, label branch_false_413 
    bnez    s10, .branch_true_413
    j       .branch_false_413
                    #      label branch_true_413: 
.branch_true_413:
                    #      new_var temp_322_414:Array:i32:[Some(16_0)] 
                    #      temp_322_414 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      s6, SHIFT_TABLE
                    #occupy reg s6 with *SHIFT_TABLE_0
    lw      s11,0(s6)
                    #      new_var temp_323_414:ptr->i32 
                    #      new_var temp_324_414:i32 
                    #      temp_323_414 = getelementptr temp_322_414:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      s6, 0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    add     s6,s6,s11
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_324_414 = load temp_323_414:ptr->i32 
    lw      a0,0(s6)
                    #      new_var temp_325_414:i32 
                    #      temp_325_414 = Div i32 x_18, temp_324_414 
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a3,a0
                    #      x_18 = i32 temp_325_414 
                    #      new_var temp_326_414:i32 
                    #      temp_326_414 = Add i32 y_18, 1_0 
    li      a0, 10284
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 10280
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a7,a0
                    #      new_var temp_327_414:i32 
                    #      temp_327_414 = Sub i32 15_0, temp_326_414 
    li      a0, 15
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_328_414:Array:i32:[Some(16_0)] 
                    #      temp_328_414 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 10276
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_329_414:ptr->i32 
                    #      new_var temp_330_414:i32 
                    #      temp_329_414 = getelementptr temp_328_414:Array:i32:[Some(16_0)] [Some(temp_327_414)] 
    li      a0, 0
    li      a1, 10268
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_330_414 = load temp_329_414:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_331_414:i32 
                    #      temp_331_414 = Sub i32 65536_0, temp_330_414 
    li      a0, 10200
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 65536
    li      a2, 10272
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_332_414:i32 
                    #      temp_332_414 = Add i32 x_18, temp_331_414 
    li      a1, 10196
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_332_414 
    li      a0, 13444
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      jump label: L46_0 
    j       .L46_0
                    #      label branch_false_413: 
.branch_false_413:
                    #      new_var temp_333_417:Array:i32:[Some(16_0)] 
                    #      temp_333_417 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      s6, SHIFT_TABLE
                    #occupy reg s6 with *SHIFT_TABLE_0
    lw      s11,0(s6)
                    #      new_var temp_334_417:ptr->i32 
                    #      new_var temp_335_417:i32 
                    #      temp_334_417 = getelementptr temp_333_417:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      s6, 0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    add     s6,s6,s11
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_335_417 = load temp_334_417:ptr->i32 
    lw      a0,0(s6)
                    #      new_var temp_336_417:i32 
                    #      temp_336_417 = Div i32 x_18, temp_335_417 
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,a3,a0
                    #      ans_18 = i32 temp_336_417 
    li      a0, 10108
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      jump label: L46_0 
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 10192
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 10104
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 10192
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 10188
    add     a0,sp,a0
    lw      a1,0(a0)
    li      s6, 10112
    add     s6,sp,s6
    sd      s6,0(s6)
    li      a0, 10188
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 10288
    add     a0,sp,a0
    ld      s6,0(a0)
    li      a0, 10288
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s11, 10184
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 10360
    add     a3,sp,a3
    lw      s11,0(a3)
    li      a3, 10360
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10268
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .L46_0
                    #      label L46_0: 
.L46_0:
                    #      label branch_false_410: 
.branch_false_410:
                    #      ans_18 = i32 x_18 
                    #      jump label: L47_0 
    j       .L47_0
                    #      label L47_0: 
.L47_0:
                    #      label L48_0: 
.L48_0:
                    #      label L49_0: 
.L49_0:
                    #      pr_20 = i32 ans_18 
                    #      jump label: while.head_23 
    li      a2, 13448
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a7, 13440
    add     a7,sp,a7
    sw      a7,0(a7)
    li      s6, 10367
    add     s6,sp,s6
    sb      s8,0(s6)
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    li      s1, 11836
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s5, 11828
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s3, 13311
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s2, 13422
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s7, 11827
    add     s7,sp,s7
    sb      s7,0(s7)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s9, 10365
    add     s9,sp,s9
    sb      s9,0(s9)
    li      a3, 13444
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s4, 11832
    add     s4,sp,s4
    sw      s4,0(s4)
    j       .while.head_23
                    #      label while.exit_23: 
.while.exit_23:
                    #      ans_18 = i32 pres_20 
    mv      a0, a6
                    #       Call void putint_0(ans_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 13452
    add     a2,sp,a2
    lw      a0,0(a2)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      pl_425 = i32 2_0 
    li      a0, 2
                    #      pr_425 = i32 1_0 
    li      a3, 1
                    #      pres_425 = i32 1_0 
    li      a7, 1
                    #      jump label: while.head_428 
    j       .while.head_428
                    #      label while.head_428: 
.while.head_428:
                    #      new_var temp_337_427:i1 
                    #      temp_337_427 = icmp i32 Sgt pr_425, 0_0 
    li      s1, 0
    slt     s2,s1,a3
                    #      br i1 temp_337_427, label while.body_428, label while.exit_428 
    bnez    s2, .while.body_428
    j       .while.exit_428
                    #      label while.body_428: 
.while.body_428:
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
    li      s1, 0
                    #      x_18 = i32 pr_425 
    mv      s3, a3
                    #      y_18 = i32 1_0 
    li      s4, 1
                    #      jump label: while.head_435 
    j       .while.head_435
                    #      label while.head_435: 
.while.head_435:
                    #      new_var temp_338_434:i1 
                    #      temp_338_434 = icmp i32 Slt i_18, 16_0 
    li      s5, 16
    slt     s6,s1,s5
                    #      br i1 temp_338_434, label while.body_435, label while.exit_435 
    bnez    s6, .while.body_435
    j       .while.exit_435
                    #      label while.body_435: 
.while.body_435:
                    #      new_var temp_339_437:i32 
                    #      temp_339_437 = Mod i32 y_18, 2_0 
    li      s5, 2
    rem     s7,s4,s5
                    #      new_var temp_340_437:i32 
                    #      temp_340_437 = Mod i32 x_18, 2_0 
                    #found literal reg Some(s5) already exist with 2_0
    rem     s8,s3,s5
                    #      new_var temp_341_437:i1 
                    #      temp_341_437 = icmp i32 Ne temp_340_437, 0_0 
    li      s9, 0
    xor     s10,s8,s9
    snez    s10, s10
                    #      new_var temp_342_437:i1 
                    #      temp_341_437 = icmp i32 Ne temp_339_437, 0_0 
                    #found literal reg Some(s9) already exist with 0_0
                    #      new_var temp_343_437:i1 
                    #      temp_343_437 = And i1 temp_341_437, temp_342_437 
    and     s5,s10,s11
                    #      br i1 temp_343_437, label branch_true_438, label branch_false_438 
    bnez    s5, .branch_true_438
    j       .branch_false_438
                    #      label branch_true_438: 
.branch_true_438:
                    #      new_var temp_344_439:Array:i32:[Some(16_0)] 
                    #      temp_344_439 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      s9, SHIFT_TABLE
                    #occupy reg s9 with *SHIFT_TABLE_0
    li      a0, 10100
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(s9)
                    #      new_var temp_345_439:ptr->i32 
                    #      new_var temp_346_439:i32 
                    #      temp_345_439 = getelementptr temp_344_439:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      s9, 0
    li      a0, 10072
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,s1
    add     s9,s9,a1
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_346_439 = load temp_345_439:ptr->i32 
    lw      a0,0(s9)
                    #      new_var temp_347_439:i32 
                    #      temp_347_439 = Mul i32 1_0, temp_346_439 
    li      a0, 9996
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 10072
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_348_439:i32 
                    #      temp_348_439 = Add i32 ans_18, temp_347_439 
    li      a1, 9996
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_348_439 
                    #      jump label: branch_false_438 
    li      a2, 9992
    add     a2,sp,a2
    sw      a2,0(a2)
    mv      a2, a0
    li      a1, 9988
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 10100
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s9, 10000
    add     s9,sp,s9
    sd      s9,0(s9)
    li      a3, 10100
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_438
                    #      label branch_false_438: 
.branch_false_438:
                    #      label L50_0: 
.L50_0:
                    #      new_var temp_349_436:i32 
                    #      temp_349_436 = Div i32 x_18, 2_0 
    li      s9, 2
    li      a0, 10100
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,s3,s9
                    #      x_18 = i32 temp_349_436 
                    #      new_var temp_350_436:i32 
                    #      temp_350_436 = Div i32 y_18, 2_0 
                    #found literal reg Some(s9) already exist with 2_0
    li      a0, 9984
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,s4,s9
                    #      y_18 = i32 temp_350_436 
                    #      new_var temp_351_436:i32 
                    #      temp_351_436 = Add i32 i_18, 1_0 
    li      s9, 1
    li      a0, 9980
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,s1,s9
                    #      i_18 = i32 temp_351_436 
                    #      jump label: while.head_435 
    li      s8, 10080
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s6, 10090
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s10, 10079
    add     s10,sp,s10
    sb      s10,0(s10)
    li      s5, 10077
    add     s5,sp,s5
    sb      s5,0(s5)
    li      s7, 10084
    add     s7,sp,s7
    sw      s7,0(s7)
    li      a0, 9976
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s9, 10100
    add     s9,sp,s9
    lw      a0,0(s9)
    li      s11, 10078
    add     s11,sp,s11
    sb      s11,0(s11)
    li      s9, 10100
    add     s9,sp,s9
    sw      s9,0(s9)
    j       .while.head_435
                    #      label while.exit_435: 
.while.exit_435:
                    #      new_var temp_352_11025:i1 
                    #      temp_352_11025 = icmp i32 Ne ans_18, 0_0 
    li      s5, 0
    xor     s7,a2,s5
    snez    s7, s7
                    #      br i1 temp_352_11025, label branch_true_445, label branch_false_445 
    bnez    s7, .branch_true_445
    j       .branch_false_445
                    #      label branch_true_445: 
.branch_true_445:
                    #      ml_447 = i32 pres_425 
    mv      s5, a7
                    #      mr_447 = i32 pl_425 
    mv      s8, a0
                    #      mres_447 = i32 0_0 
    li      s9, 0
                    #      jump label: while.head_450 
    j       .while.head_450
                    #      label while.head_450: 
.while.head_450:
                    #      new_var temp_353_11138:i1 
                    #      temp_353_11138 = icmp i32 Ne mr_447, 0_0 
    li      s10, 0
    xor     s11,s8,s10
    snez    s11, s11
                    #      br i1 temp_353_11138, label while.body_450, label while.exit_450 
    bnez    s11, .while.body_450
    j       .while.exit_450
                    #      label while.body_450: 
.while.body_450:
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 mr_447 
                    #      y_18 = i32 1_0 
                    #      jump label: while.head_457 
    j       .while.head_457
                    #      label while.head_457: 
.while.head_457:
                    #      new_var temp_354_456:i1 
                    #      temp_354_456 = icmp i32 Slt i_18, 16_0 
    li      s10, 16
    li      a0, 10100
    add     a0,sp,a0
    sw      a0,0(a0)
    slt     a0,s1,s10
                    #      br i1 temp_354_456, label while.body_457, label while.exit_457 
    bnez    a0, .while.body_457
    j       .while.exit_457
                    #      label while.body_457: 
.while.body_457:
                    #      new_var temp_355_459:i32 
                    #      temp_355_459 = Mod i32 y_18, 2_0 
    li      s10, 2
    li      a0, 9958
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,s4,s10
                    #      new_var temp_356_459:i32 
                    #      temp_356_459 = Mod i32 x_18, 2_0 
                    #found literal reg Some(s10) already exist with 2_0
    li      a0, 9952
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s3,s10
                    #      new_var temp_357_459:i1 
                    #      temp_357_459 = icmp i32 Ne temp_356_459, 0_0 
    li      s10, 0
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s10
    snez    a1, a1
                    #      new_var temp_358_459:i1 
                    #      temp_357_459 = icmp i32 Ne temp_355_459, 0_0 
    li      a0, 9948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
                    #      new_var temp_359_459:i1 
                    #      temp_359_459 = And i1 temp_357_459, temp_358_459 
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    and     a2,a1,a0
                    #      br i1 temp_359_459, label branch_true_460, label branch_false_460 
    bnez    a2, .branch_true_460
    j       .branch_false_460
                    #      label branch_true_460: 
.branch_true_460:
                    #      new_var temp_360_461:Array:i32:[Some(16_0)] 
                    #      temp_360_461 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 9946
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 9947
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_361_461:ptr->i32 
                    #      new_var temp_362_461:i32 
                    #      temp_361_461 = getelementptr temp_360_461:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 9940
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 9945
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_362_461 = load temp_361_461:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_363_461:i32 
                    #      temp_363_461 = Mul i32 1_0, temp_362_461 
    li      a0, 9872
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 9940
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_364_461:i32 
                    #      temp_364_461 = Add i32 ans_18, temp_363_461 
    li      a1, 9868
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_364_461 
                    #      jump label: branch_false_460 
    li      a2, 9864
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 9945
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 9860
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9945
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 9947
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 9947
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 9946
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 9946
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_460
                    #      label branch_false_460: 
.branch_false_460:
                    #      label L51_0: 
.L51_0:
                    #      new_var temp_365_458:i32 
                    #      temp_365_458 = Div i32 x_18, 2_0 
    li      a0, 9946
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 9947
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_365_458 
                    #      new_var temp_366_458:i32 
                    #      temp_366_458 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 9856
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_366_458 
                    #      new_var temp_367_458:i32 
                    #      temp_367_458 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 9852
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_367_458 
                    #      jump label: while.head_457 
    li      a2, 9945
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 9848
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s10, 9952
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 10100
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 10100
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_457
                    #      label while.exit_457: 
.while.exit_457:
                    #      new_var temp_368_11547:i1 
                    #      temp_368_11547 = icmp i32 Ne ans_18, 0_0 
    li      s10, 0
    li      a0, 9958
    add     a0,sp,a0
    sb      a0,0(a0)
    xor     a0,a2,s10
    snez    a0, a0
                    #      br i1 temp_368_11547, label branch_true_467, label branch_false_467 
    bnez    a0, .branch_true_467
    j       .branch_false_467
                    #      label branch_true_467: 
.branch_true_467:
                    #      al_469 = i32 mres_447 
    mv      s10, s9
                    #      c_469 = i32 ml_447 
    li      a0, 9847
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s5
                    #      new_var sum_469:i32 
                    #      jump label: while.head_472 
    j       .while.head_472
                    #      label while.head_472: 
.while.head_472:
                    #      new_var temp_369_11641:i1 
                    #      temp_369_11641 = icmp i32 Ne c_469, 0_0 
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_369_11641, label while.body_472, label while.exit_472 
    bnez    a2, .while.body_472
    j       .while.exit_472
                    #      label while.body_472: 
.while.body_472:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_469 
                    #      y_18 = i32 c_469 
                    #      jump label: while.head_479 
    j       .while.head_479
                    #      label while.head_479: 
.while.head_479:
                    #      new_var temp_370_478:i1 
                    #      temp_370_478 = icmp i32 Slt i_18, 16_0 
    li      a0, 9836
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s1,a0
                    #      br i1 temp_370_478, label while.body_479, label while.exit_479 
    bnez    a1, .while.body_479
    j       .while.exit_479
                    #      label while.body_479: 
.while.body_479:
                    #      new_var temp_371_481:i32 
                    #      temp_371_481 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 9830
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s3,a0
                    #      new_var temp_372_11824:i1 
                    #      temp_372_11824 = icmp i32 Ne temp_371_481, 0_0 
    li      a0, 0
    li      a2, 9831
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_372_11824, label branch_true_482, label branch_false_482 
    bnez    a2, .branch_true_482
    j       .branch_false_482
                    #      label branch_true_482: 
.branch_true_482:
                    #      new_var temp_373_484:i32 
                    #      temp_373_484 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 9824
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_374_484:i1 
                    #      temp_374_484 = icmp i32 Eq temp_373_484, 0_0 
    li      a0, 0
    li      a2, 9823
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_374_484, label branch_true_485, label branch_false_485 
    bnez    a2, .branch_true_485
    j       .branch_false_485
                    #      label branch_true_485: 
.branch_true_485:
                    #      new_var temp_375_486:Array:i32:[Some(16_0)] 
                    #      temp_375_486 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 9816
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_376_486:ptr->i32 
                    #      new_var temp_377_486:i32 
                    #      temp_376_486 = getelementptr temp_375_486:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 9808
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 9815
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_377_486 = load temp_376_486:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_378_486:i32 
                    #      temp_378_486 = Mul i32 1_0, temp_377_486 
    li      a0, 9736
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 9808
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_379_486:i32 
                    #      temp_379_486 = Add i32 ans_18, temp_378_486 
    li      a1, 9732
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_379_486 
                    #      jump label: branch_false_485 
    li      a2, 9728
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 9815
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 9724
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9815
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 9816
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 9816
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_485
                    #      label branch_false_485: 
.branch_false_485:
                    #      label branch_false_482: 
.branch_false_482:
                    #      new_var temp_383_488:i32 
                    #      temp_383_488 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 9824
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_384_11969:i1 
                    #      temp_384_11969 = icmp i32 Ne temp_383_488, 0_0 
    li      a0, 0
    li      a2, 9823
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_384_11969, label branch_true_489, label branch_false_489 
    bnez    a2, .branch_true_489
    j       .branch_false_489
                    #      label branch_true_489: 
.branch_true_489:
                    #      new_var temp_385_490:Array:i32:[Some(16_0)] 
                    #      temp_385_490 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 9708
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_386_490:ptr->i32 
                    #      new_var temp_387_490:i32 
                    #      temp_386_490 = getelementptr temp_385_490:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 9700
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 9707
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_387_490 = load temp_386_490:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_388_490:i32 
                    #      temp_388_490 = Mul i32 1_0, temp_387_490 
    li      a0, 9632
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 9700
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_389_490:i32 
                    #      temp_389_490 = Add i32 ans_18, temp_388_490 
    li      a1, 9628
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_389_490 
                    #      jump label: branch_false_489 
    li      a2, 9624
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 9707
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 9620
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9707
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 9708
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 9708
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_489
                    #      label branch_false_489: 
.branch_false_489:
                    #      label L52_0: 
.L52_0:
                    #      label L53_0: 
.L53_0:
                    #      new_var temp_380_480:i32 
                    #      temp_380_480 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 9708
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_380_480 
                    #      new_var temp_381_480:i32 
                    #      temp_381_480 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 9720
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_381_480 
                    #      new_var temp_382_480:i32 
                    #      temp_382_480 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 9716
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_382_480 
                    #      jump label: while.head_479 
    li      a2, 9707
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 9831
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 9712
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9831
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 9836
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 9836
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_479
                    #      label while.exit_479: 
.while.exit_479:
                    #      sum_469 = i32 ans_18 
    li      a1, 9830
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_469 
                    #      y_18 = i32 c_469 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_501 
    j       .while.head_501
                    #      label while.head_501: 
.while.head_501:
                    #      new_var temp_390_500:i1 
                    #      temp_390_500 = icmp i32 Slt i_18, 16_0 
    li      a0, 9836
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 9832
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s1,a0
                    #      br i1 temp_390_500, label while.body_501, label while.exit_501 
    bnez    a1, .while.body_501
    j       .while.exit_501
                    #      label while.body_501: 
.while.body_501:
                    #      new_var temp_391_503:i32 
                    #      temp_391_503 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 9619
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_392_503:i32 
                    #      temp_392_503 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 9612
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s3,a0
                    #      new_var temp_393_503:i1 
                    #      temp_393_503 = icmp i32 Ne temp_392_503, 0_0 
    li      a0, 0
    li      a2, 9831
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_394_503:i1 
                    #      temp_393_503 = icmp i32 Ne temp_391_503, 0_0 
    li      a1, 9608
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_395_503:i1 
                    #      temp_395_503 = And i1 temp_393_503, temp_394_503 
    li      a0, 9612
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_395_503, label branch_true_504, label branch_false_504 
    bnez    a0, .branch_true_504
    j       .branch_false_504
                    #      label branch_true_504: 
.branch_true_504:
                    #      new_var temp_396_505:Array:i32:[Some(16_0)] 
                    #      temp_396_505 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 9605
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 9606
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_397_505:ptr->i32 
                    #      new_var temp_398_505:i32 
                    #      temp_397_505 = getelementptr temp_396_505:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 9600
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 9607
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_398_505 = load temp_397_505:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_399_505:i32 
                    #      temp_399_505 = Mul i32 1_0, temp_398_505 
    li      a0, 9528
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 9600
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_400_505:i32 
                    #      temp_400_505 = Add i32 ans_18, temp_399_505 
    li      a1, 9524
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_400_505 
                    #      jump label: branch_false_504 
    li      a2, 9520
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 9607
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 9516
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9607
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 9606
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 9606
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 9605
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 9605
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_504
                    #      label branch_false_504: 
.branch_false_504:
                    #      label L54_0: 
.L54_0:
                    #      new_var temp_401_502:i32 
                    #      temp_401_502 = Div i32 x_18, 2_0 
    li      a0, 9605
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 9606
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_401_502 
                    #      new_var temp_402_502:i32 
                    #      temp_402_502 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 9512
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_402_502 
                    #      new_var temp_403_502:i32 
                    #      temp_403_502 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 9508
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_403_502 
                    #      jump label: while.head_501 
    li      a2, 9607
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 9831
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 9504
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9831
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 9832
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 9832
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 9836
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 9836
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_501
                    #      label while.exit_501: 
.while.exit_501:
                    #      c_469 = i32 ans_18 
    li      a1, 9619
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: L55_0 
    j       .L55_0
                    #      label L55_0: 
.L55_0:
                    #      new_var temp_404_511:i1 
                    #      temp_404_511 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 9836
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 15
    li      a2, 9831
    add     a2,sp,a2
    sb      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_404_511, label branch_true_512, label branch_false_512 
    bnez    a2, .branch_true_512
    j       .branch_false_512
                    #      label branch_true_512: 
.branch_true_512:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_521 
    j       .while.exit_521
                    #      label branch_false_512: 
.branch_false_512:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
                    #      new_var temp_405_515:Array:i32:[Some(16_0)] 
                    #      temp_405_515 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_406_515:ptr->i32 
                    #      new_var temp_407_515:i32 
                    #      temp_406_515 = getelementptr temp_405_515:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 9496
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 9503
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_407_515 = load temp_406_515:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_408_515:i32 
                    #      temp_408_515 = Mul i32 c_469, temp_407_515 
    li      a1, 9424
    add     a1,sp,a1
    sd      a1,0(a1)
    mul     a1,a2,a0
                    #      x_18 = i32 temp_408_515 
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_521 
    j       .while.head_521
                    #      label while.head_521: 
.while.head_521:
                    #      new_var temp_409_520:i1 
                    #      temp_409_520 = icmp i32 Slt i_18, 16_0 
    li      a0, 9420
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 9416
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s1,a0
                    #      br i1 temp_409_520, label while.body_521, label while.exit_521 
    bnez    a1, .while.body_521
    li      a0, 9836
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a0, 9503
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 9415
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 9503
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 9496
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_521
                    #      label while.body_521: 
.while.body_521:
                    #      new_var temp_410_523:i32 
                    #      temp_410_523 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 9415
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_411_523:i32 
                    #      temp_411_523 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 9408
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s3,a0
                    #      new_var temp_412_523:i1 
                    #      temp_412_523 = icmp i32 Ne temp_411_523, 0_0 
    li      a0, 0
    li      a2, 9836
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_413_523:i1 
                    #      temp_412_523 = icmp i32 Ne temp_410_523, 0_0 
    li      a1, 9404
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_414_523:i1 
                    #      temp_414_523 = And i1 temp_412_523, temp_413_523 
    li      a0, 9408
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_414_523, label branch_true_524, label branch_false_524 
    bnez    a0, .branch_true_524
    j       .branch_false_524
                    #      label branch_true_524: 
.branch_true_524:
                    #      new_var temp_415_525:Array:i32:[Some(16_0)] 
                    #      temp_415_525 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 9401
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 9402
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_416_525:ptr->i32 
                    #      new_var temp_417_525:i32 
                    #      temp_416_525 = getelementptr temp_415_525:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 9396
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 9403
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_417_525 = load temp_416_525:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_418_525:i32 
                    #      temp_418_525 = Mul i32 1_0, temp_417_525 
    li      a0, 9328
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 9396
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_419_525:i32 
                    #      temp_419_525 = Add i32 ans_18, temp_418_525 
    li      a1, 9324
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_419_525 
                    #      jump label: branch_false_524 
    li      a2, 9320
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 9403
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 9316
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9403
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 9402
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 9402
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 9496
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 9401
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 9401
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 9496
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_524
                    #      label branch_false_524: 
.branch_false_524:
                    #      label L56_0: 
.L56_0:
                    #      new_var temp_420_522:i32 
                    #      temp_420_522 = Div i32 x_18, 2_0 
    li      a0, 9401
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 9402
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_420_522 
                    #      new_var temp_421_522:i32 
                    #      temp_421_522 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 9312
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_421_522 
                    #      new_var temp_422_522:i32 
                    #      temp_422_522 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 9308
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_422_522 
                    #      jump label: while.head_521 
    li      a2, 9403
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 9836
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 9304
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9836
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 9416
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 9416
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 9496
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 9420
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 9420
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 9496
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_521
                    #      label while.exit_521: 
.while.exit_521:
                    #      label L57_0: 
.L57_0:
                    #      c_469 = i32 ans_18 
    mv      a1, a0
                    #      al_469 = i32 sum_469 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_472 
    li      a2, 9503
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 9832
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 9836
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 9836
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 9836
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_472
                    #      label while.exit_472: 
.while.exit_472:
                    #      ans_18 = i32 al_469 
    mv      a1, s10
                    #      mres_447 = i32 ans_18 
                    #      jump label: branch_false_467 
    li      a2, 9831
    add     a2,sp,a2
    sb      a2,0(a2)
    mv      a2, a1
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9836
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s10, 9840
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 9847
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 9847
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_467
                    #      label branch_false_467: 
.branch_false_467:
                    #      label L58_0: 
.L58_0:
                    #      al_534 = i32 ml_447 
    mv      s10, s5
                    #      c_534 = i32 ml_447 
    li      a0, 9847
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s5
                    #      new_var sum_534:i32 
                    #      jump label: while.head_537 
    j       .while.head_537
                    #      label while.head_537: 
.while.head_537:
                    #      new_var temp_423_13316:i1 
                    #      temp_423_13316 = icmp i32 Ne c_534, 0_0 
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_423_13316, label while.body_537, label while.exit_537 
    bnez    a2, .while.body_537
    j       .while.exit_537
                    #      label while.body_537: 
.while.body_537:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_534 
                    #      y_18 = i32 c_534 
                    #      jump label: while.head_544 
    j       .while.head_544
                    #      label while.head_544: 
.while.head_544:
                    #      new_var temp_424_543:i1 
                    #      temp_424_543 = icmp i32 Slt i_18, 16_0 
    li      a0, 9296
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s1,a0
                    #      br i1 temp_424_543, label while.body_544, label while.exit_544 
    bnez    a1, .while.body_544
    j       .while.exit_544
                    #      label while.body_544: 
.while.body_544:
                    #      new_var temp_425_546:i32 
                    #      temp_425_546 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 9290
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s3,a0
                    #      new_var temp_426_13499:i1 
                    #      temp_426_13499 = icmp i32 Ne temp_425_546, 0_0 
    li      a0, 0
    li      a2, 9291
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_426_13499, label branch_true_547, label branch_false_547 
    bnez    a2, .branch_true_547
    j       .branch_false_547
                    #      label branch_true_547: 
.branch_true_547:
                    #      new_var temp_427_549:i32 
                    #      temp_427_549 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 9284
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_428_549:i1 
                    #      temp_428_549 = icmp i32 Eq temp_427_549, 0_0 
    li      a0, 0
    li      a2, 9283
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_428_549, label branch_true_550, label branch_false_550 
    bnez    a2, .branch_true_550
    j       .branch_false_550
                    #      label branch_true_550: 
.branch_true_550:
                    #      new_var temp_429_551:Array:i32:[Some(16_0)] 
                    #      temp_429_551 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 9276
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_430_551:ptr->i32 
                    #      new_var temp_431_551:i32 
                    #      temp_430_551 = getelementptr temp_429_551:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 9268
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 9275
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_431_551 = load temp_430_551:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_432_551:i32 
                    #      temp_432_551 = Mul i32 1_0, temp_431_551 
    li      a0, 9200
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 9268
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_433_551:i32 
                    #      temp_433_551 = Add i32 ans_18, temp_432_551 
    li      a1, 9196
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_433_551 
                    #      jump label: branch_false_550 
    li      a2, 9192
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 9275
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 9188
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9275
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 9276
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 9276
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_550
                    #      label branch_false_550: 
.branch_false_550:
                    #      label branch_false_547: 
.branch_false_547:
                    #      new_var temp_437_553:i32 
                    #      temp_437_553 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 9284
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_438_13644:i1 
                    #      temp_438_13644 = icmp i32 Ne temp_437_553, 0_0 
    li      a0, 0
    li      a2, 9283
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_438_13644, label branch_true_554, label branch_false_554 
    bnez    a2, .branch_true_554
    j       .branch_false_554
                    #      label branch_true_554: 
.branch_true_554:
                    #      new_var temp_439_555:Array:i32:[Some(16_0)] 
                    #      temp_439_555 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 9172
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_440_555:ptr->i32 
                    #      new_var temp_441_555:i32 
                    #      temp_440_555 = getelementptr temp_439_555:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 9164
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 9171
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_441_555 = load temp_440_555:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_442_555:i32 
                    #      temp_442_555 = Mul i32 1_0, temp_441_555 
    li      a0, 9096
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 9164
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_443_555:i32 
                    #      temp_443_555 = Add i32 ans_18, temp_442_555 
    li      a1, 9092
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_443_555 
                    #      jump label: branch_false_554 
    li      a2, 9088
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 9171
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 9084
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9171
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 9172
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 9172
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_554
                    #      label branch_false_554: 
.branch_false_554:
                    #      label L59_0: 
.L59_0:
                    #      label L60_0: 
.L60_0:
                    #      new_var temp_434_545:i32 
                    #      temp_434_545 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 9172
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_434_545 
                    #      new_var temp_435_545:i32 
                    #      temp_435_545 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 9184
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_435_545 
                    #      new_var temp_436_545:i32 
                    #      temp_436_545 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 9180
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_436_545 
                    #      jump label: while.head_544 
    li      a2, 9171
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 9291
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 9176
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9291
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 9296
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 9296
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_544
                    #      label while.exit_544: 
.while.exit_544:
                    #      sum_534 = i32 ans_18 
    li      a1, 9290
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_534 
                    #      y_18 = i32 c_534 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_566 
    j       .while.head_566
                    #      label while.head_566: 
.while.head_566:
                    #      new_var temp_444_565:i1 
                    #      temp_444_565 = icmp i32 Slt i_18, 16_0 
    li      a0, 9296
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 9292
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s1,a0
                    #      br i1 temp_444_565, label while.body_566, label while.exit_566 
    bnez    a1, .while.body_566
    j       .while.exit_566
                    #      label while.body_566: 
.while.body_566:
                    #      new_var temp_445_568:i32 
                    #      temp_445_568 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 9083
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_446_568:i32 
                    #      temp_446_568 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 9076
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s3,a0
                    #      new_var temp_447_568:i1 
                    #      temp_447_568 = icmp i32 Ne temp_446_568, 0_0 
    li      a0, 0
    li      a2, 9291
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_448_568:i1 
                    #      temp_447_568 = icmp i32 Ne temp_445_568, 0_0 
    li      a1, 9072
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_449_568:i1 
                    #      temp_449_568 = And i1 temp_447_568, temp_448_568 
    li      a0, 9076
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_449_568, label branch_true_569, label branch_false_569 
    bnez    a0, .branch_true_569
    j       .branch_false_569
                    #      label branch_true_569: 
.branch_true_569:
                    #      new_var temp_450_570:Array:i32:[Some(16_0)] 
                    #      temp_450_570 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 9069
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 9070
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_451_570:ptr->i32 
                    #      new_var temp_452_570:i32 
                    #      temp_451_570 = getelementptr temp_450_570:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 9064
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 9071
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_452_570 = load temp_451_570:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_453_570:i32 
                    #      temp_453_570 = Mul i32 1_0, temp_452_570 
    li      a0, 8992
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 9064
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_454_570:i32 
                    #      temp_454_570 = Add i32 ans_18, temp_453_570 
    li      a1, 8988
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_454_570 
                    #      jump label: branch_false_569 
    li      a2, 8984
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 9071
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 8980
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9071
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 9070
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 9070
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 9069
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 9069
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_569
                    #      label branch_false_569: 
.branch_false_569:
                    #      label L61_0: 
.L61_0:
                    #      new_var temp_455_567:i32 
                    #      temp_455_567 = Div i32 x_18, 2_0 
    li      a0, 9069
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 9070
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_455_567 
                    #      new_var temp_456_567:i32 
                    #      temp_456_567 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 8976
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_456_567 
                    #      new_var temp_457_567:i32 
                    #      temp_457_567 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 8972
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_457_567 
                    #      jump label: while.head_566 
    li      a2, 9071
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 9291
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 8968
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9291
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 9292
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 9292
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 9296
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 9296
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_566
                    #      label while.exit_566: 
.while.exit_566:
                    #      c_534 = i32 ans_18 
    li      a1, 9083
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: L62_0 
    j       .L62_0
                    #      label L62_0: 
.L62_0:
                    #      new_var temp_458_576:i1 
                    #      temp_458_576 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 9296
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 15
    li      a2, 9291
    add     a2,sp,a2
    sb      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_458_576, label branch_true_577, label branch_false_577 
    bnez    a2, .branch_true_577
    j       .branch_false_577
                    #      label branch_true_577: 
.branch_true_577:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_586 
    j       .while.exit_586
                    #      label branch_false_577: 
.branch_false_577:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
                    #      new_var temp_459_580:Array:i32:[Some(16_0)] 
                    #      temp_459_580 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_460_580:ptr->i32 
                    #      new_var temp_461_580:i32 
                    #      temp_460_580 = getelementptr temp_459_580:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 8960
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 8967
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_461_580 = load temp_460_580:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_462_580:i32 
                    #      temp_462_580 = Mul i32 c_534, temp_461_580 
    li      a1, 8888
    add     a1,sp,a1
    sd      a1,0(a1)
    mul     a1,a2,a0
                    #      x_18 = i32 temp_462_580 
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_586 
    j       .while.head_586
                    #      label while.head_586: 
.while.head_586:
                    #      new_var temp_463_585:i1 
                    #      temp_463_585 = icmp i32 Slt i_18, 16_0 
    li      a0, 8884
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 8880
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s1,a0
                    #      br i1 temp_463_585, label while.body_586, label while.exit_586 
    bnez    a1, .while.body_586
    li      a0, 9296
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a0, 8967
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 8879
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 8967
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 8960
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_586
                    #      label while.body_586: 
.while.body_586:
                    #      new_var temp_464_588:i32 
                    #      temp_464_588 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 8879
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_465_588:i32 
                    #      temp_465_588 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 8872
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s3,a0
                    #      new_var temp_466_588:i1 
                    #      temp_466_588 = icmp i32 Ne temp_465_588, 0_0 
    li      a0, 0
    li      a2, 9296
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_467_588:i1 
                    #      temp_466_588 = icmp i32 Ne temp_464_588, 0_0 
    li      a1, 8868
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_468_588:i1 
                    #      temp_468_588 = And i1 temp_466_588, temp_467_588 
    li      a0, 8872
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_468_588, label branch_true_589, label branch_false_589 
    bnez    a0, .branch_true_589
    j       .branch_false_589
                    #      label branch_true_589: 
.branch_true_589:
                    #      new_var temp_469_590:Array:i32:[Some(16_0)] 
                    #      temp_469_590 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 8865
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 8866
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_470_590:ptr->i32 
                    #      new_var temp_471_590:i32 
                    #      temp_470_590 = getelementptr temp_469_590:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 8860
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 8867
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_471_590 = load temp_470_590:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_472_590:i32 
                    #      temp_472_590 = Mul i32 1_0, temp_471_590 
    li      a0, 8792
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 8860
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_473_590:i32 
                    #      temp_473_590 = Add i32 ans_18, temp_472_590 
    li      a1, 8788
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_473_590 
                    #      jump label: branch_false_589 
    li      a2, 8784
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 8867
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 8780
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 8867
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 8866
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 8866
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 8960
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 8865
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 8865
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 8960
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_589
                    #      label branch_false_589: 
.branch_false_589:
                    #      label L63_0: 
.L63_0:
                    #      new_var temp_474_587:i32 
                    #      temp_474_587 = Div i32 x_18, 2_0 
    li      a0, 8865
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 8866
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_474_587 
                    #      new_var temp_475_587:i32 
                    #      temp_475_587 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 8776
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_475_587 
                    #      new_var temp_476_587:i32 
                    #      temp_476_587 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 8772
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_476_587 
                    #      jump label: while.head_586 
    li      a2, 8867
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 9296
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 8768
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 9296
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 8880
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 8880
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 8960
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 8884
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 8884
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 8960
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_586
                    #      label while.exit_586: 
.while.exit_586:
                    #      label L64_0: 
.L64_0:
                    #      c_534 = i32 ans_18 
    mv      a1, a0
                    #      al_534 = i32 sum_534 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_537 
    li      a2, 8967
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 9292
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 9296
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 9296
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 9296
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_537
                    #      label while.exit_537: 
.while.exit_537:
                    #      ans_18 = i32 al_534 
    mv      a1, s10
                    #      ml_447 = i32 ans_18 
                    #      x_18 = i32 mr_447 
                    #      y_18 = i32 1_0 
                    #      jump label: L65_0 
    j       .L65_0
                    #      label L65_0: 
.L65_0:
                    #      new_var temp_477_601:i1 
                    #      temp_477_601 = icmp i32 Sge y_18, 15_0 
    li      a0, 9296
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s4,a0
    xori    a1,a1,1
                    #      br i1 temp_477_601, label branch_true_602, label branch_false_602 
    bnez    a1, .branch_true_602
    j       .branch_false_602
                    #      label branch_true_602: 
.branch_true_602:
                    #      new_var temp_478_604:i1 
                    #      temp_478_604 = icmp i32 Slt x_18, 0_0 
    li      a0, 0
    li      a1, 8767
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,s3,a0
                    #      br i1 temp_478_604, label branch_true_605, label branch_false_605 
    bnez    a1, .branch_true_605
    j       .branch_false_605
                    #      label branch_true_605: 
.branch_true_605:
                    #      ans_18 = i32 0xffff_0 
    li      a0, 0xffff
                    #      jump label: L66_0 
    j       .L66_0
                    #      label branch_false_605: 
.branch_false_605:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: L66_0 
    j       .L66_0
                    #      label L66_0: 
.L66_0:
                    #      label branch_false_602: 
.branch_false_602:
                    #      new_var temp_479_610:i1 
                    #      temp_479_610 = icmp i32 Sgt y_18, 0_0 
    li      a0, 0
    li      a1, 8767
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,s4
                    #      br i1 temp_479_610, label branch_true_611, label branch_false_611 
    bnez    a1, .branch_true_611
    j       .branch_false_611
                    #      label branch_true_611: 
.branch_true_611:
                    #      new_var temp_480_613:i1 
                    #      temp_480_613 = icmp i32 Sgt x_18, 0x7fff_0 
    li      a0, 0x7fff
    li      a1, 8765
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,s3
                    #      br i1 temp_480_613, label branch_true_614, label branch_false_614 
    bnez    a1, .branch_true_614
    j       .branch_false_614
                    #      label branch_true_614: 
.branch_true_614:
                    #      new_var temp_481_615:Array:i32:[Some(16_0)] 
                    #      temp_481_615 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 8764
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_482_615:ptr->i32 
                    #      new_var temp_483_615:i32 
                    #      temp_482_615 = getelementptr temp_481_615:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 8760
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 9291
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s4
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_483_615 = load temp_482_615:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_484_615:i32 
                    #      temp_484_615 = Div i32 x_18, temp_483_615 
    li      a0, 8688
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,s3,a1
                    #      x_18 = i32 temp_484_615 
                    #      new_var temp_485_615:i32 
                    #      temp_485_615 = Add i32 y_18, 1_0 
    li      a0, 8680
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 8684
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s4,a0
                    #      new_var temp_486_615:i32 
                    #      temp_486_615 = Sub i32 15_0, temp_485_615 
    li      a0, 15
    li      a2, 8760
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_487_615:Array:i32:[Some(16_0)] 
                    #      temp_487_615 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 8676
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_488_615:ptr->i32 
                    #      new_var temp_489_615:i32 
                    #      temp_488_615 = getelementptr temp_487_615:Array:i32:[Some(16_0)] [Some(temp_486_615)] 
    li      a0, 0
    li      a1, 8668
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_489_615 = load temp_488_615:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_490_615:i32 
                    #      temp_490_615 = Sub i32 65536_0, temp_489_615 
    li      a0, 8600
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 65536
    li      a2, 8672
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_491_615:i32 
                    #      temp_491_615 = Add i32 x_18, temp_490_615 
    add     a0,s3,a2
                    #      ans_18 = i32 temp_491_615 
    li      a1, 8596
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: L67_0 
    j       .L67_0
                    #      label branch_false_614: 
.branch_false_614:
                    #      new_var temp_492_618:Array:i32:[Some(16_0)] 
                    #      temp_492_618 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 8764
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_493_618:ptr->i32 
                    #      new_var temp_494_618:i32 
                    #      temp_493_618 = getelementptr temp_492_618:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 8584
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 9291
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s4
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_494_618 = load temp_493_618:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_495_618:i32 
                    #      temp_495_618 = Div i32 x_18, temp_494_618 
    li      a0, 8512
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,s3,a1
                    #      ans_18 = i32 temp_495_618 
    li      a1, 8508
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: L67_0 
    li      a2, 8584
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 8504
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 8592
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 8592
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 8588
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a1, 8588
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 8668
    add     a1,sp,a1
    lw      a3,0(a1)
    j       .L67_0
                    #      label L67_0: 
.L67_0:
                    #      label branch_false_611: 
.branch_false_611:
                    #      ans_18 = i32 x_18 
    mv      a0, s3
                    #      jump label: L68_0 
    j       .L68_0
                    #      label L68_0: 
.L68_0:
                    #      label L69_0: 
.L69_0:
                    #      label L70_0: 
.L70_0:
                    #      mr_447 = i32 ans_18 
                    #      jump label: while.head_450 
    li      a2, 9291
    add     a2,sp,a2
    sb      a2,0(a2)
    mv      a2, a0
    li      a1, 8765
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s10, 9300
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 10100
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s11, 9959
    add     s11,sp,s11
    sb      s11,0(s11)
    li      a3, 10100
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_450
                    #      label while.exit_450: 
.while.exit_450:
                    #      ans_18 = i32 mres_447 
                    #      pres_425 = i32 ans_18 
                    #      jump label: branch_false_445 
    li      s8, 9964
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s5, 9968
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s11, 9959
    add     s11,sp,s11
    sb      s11,0(s11)
    li      s9, 9960
    add     s9,sp,s9
    sw      s9,0(s9)
    j       .branch_false_445
                    #      label branch_false_445: 
.branch_false_445:
                    #      label L71_0: 
.L71_0:
                    #      ml_625 = i32 pl_425 
    mv      s5, a0
                    #      mr_625 = i32 pl_425 
    mv      s8, a0
                    #      mres_625 = i32 0_0 
    li      s9, 0
                    #      jump label: while.head_628 
    j       .while.head_628
                    #      label while.head_628: 
.while.head_628:
                    #      new_var temp_496_15608:i1 
                    #      temp_496_15608 = icmp i32 Ne mr_625, 0_0 
    li      s10, 0
    xor     s11,s8,s10
    snez    s11, s11
                    #      br i1 temp_496_15608, label while.body_628, label while.exit_628 
    bnez    s11, .while.body_628
    j       .while.exit_628
                    #      label while.body_628: 
.while.body_628:
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 mr_625 
                    #      y_18 = i32 1_0 
                    #      jump label: while.head_635 
    j       .while.head_635
                    #      label while.head_635: 
.while.head_635:
                    #      new_var temp_497_634:i1 
                    #      temp_497_634 = icmp i32 Slt i_18, 16_0 
    li      s10, 16
    li      a0, 10100
    add     a0,sp,a0
    sw      a0,0(a0)
    slt     a0,s1,s10
                    #      br i1 temp_497_634, label while.body_635, label while.exit_635 
    bnez    a0, .while.body_635
    j       .while.exit_635
                    #      label while.body_635: 
.while.body_635:
                    #      new_var temp_498_637:i32 
                    #      temp_498_637 = Mod i32 y_18, 2_0 
    li      s10, 2
    li      a0, 8490
    add     a0,sp,a0
    sb      a0,0(a0)
    rem     a0,s4,s10
                    #      new_var temp_499_637:i32 
                    #      temp_499_637 = Mod i32 x_18, 2_0 
                    #found literal reg Some(s10) already exist with 2_0
    li      a0, 8484
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s3,s10
                    #      new_var temp_500_637:i1 
                    #      temp_500_637 = icmp i32 Ne temp_499_637, 0_0 
    li      s10, 0
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s10
    snez    a1, a1
                    #      new_var temp_501_637:i1 
                    #      temp_500_637 = icmp i32 Ne temp_498_637, 0_0 
    li      a0, 8480
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
                    #      new_var temp_502_637:i1 
                    #      temp_502_637 = And i1 temp_500_637, temp_501_637 
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    and     a2,a1,a0
                    #      br i1 temp_502_637, label branch_true_638, label branch_false_638 
    bnez    a2, .branch_true_638
    j       .branch_false_638
                    #      label branch_true_638: 
.branch_true_638:
                    #      new_var temp_503_639:Array:i32:[Some(16_0)] 
                    #      temp_503_639 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 8478
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 8479
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_504_639:ptr->i32 
                    #      new_var temp_505_639:i32 
                    #      temp_504_639 = getelementptr temp_503_639:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 8472
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 8477
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_505_639 = load temp_504_639:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_506_639:i32 
                    #      temp_506_639 = Mul i32 1_0, temp_505_639 
    li      a0, 8400
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 8472
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_507_639:i32 
                    #      temp_507_639 = Add i32 ans_18, temp_506_639 
    li      a1, 8396
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_507_639 
                    #      jump label: branch_false_638 
    li      a2, 8392
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 8477
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 8388
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 8477
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 8479
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 8479
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 8478
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 8478
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_638
                    #      label branch_false_638: 
.branch_false_638:
                    #      label L72_0: 
.L72_0:
                    #      new_var temp_508_636:i32 
                    #      temp_508_636 = Div i32 x_18, 2_0 
    li      a0, 8478
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 8479
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_508_636 
                    #      new_var temp_509_636:i32 
                    #      temp_509_636 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 8384
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_509_636 
                    #      new_var temp_510_636:i32 
                    #      temp_510_636 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 8380
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_510_636 
                    #      jump label: while.head_635 
    li      a2, 8477
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 8376
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s10, 8484
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 10100
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 10100
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_635
                    #      label while.exit_635: 
.while.exit_635:
                    #      new_var temp_511_16017:i1 
                    #      temp_511_16017 = icmp i32 Ne ans_18, 0_0 
    li      s10, 0
    li      a0, 8490
    add     a0,sp,a0
    sb      a0,0(a0)
    xor     a0,a2,s10
    snez    a0, a0
                    #      br i1 temp_511_16017, label branch_true_645, label branch_false_645 
    bnez    a0, .branch_true_645
    j       .branch_false_645
                    #      label branch_true_645: 
.branch_true_645:
                    #      al_647 = i32 mres_625 
    mv      s10, s9
                    #      c_647 = i32 ml_625 
    li      a0, 8375
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s5
                    #      new_var sum_647:i32 
                    #      jump label: while.head_650 
    j       .while.head_650
                    #      label while.head_650: 
.while.head_650:
                    #      new_var temp_512_16111:i1 
                    #      temp_512_16111 = icmp i32 Ne c_647, 0_0 
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_512_16111, label while.body_650, label while.exit_650 
    bnez    a2, .while.body_650
    j       .while.exit_650
                    #      label while.body_650: 
.while.body_650:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_647 
                    #      y_18 = i32 c_647 
                    #      jump label: while.head_657 
    j       .while.head_657
                    #      label while.head_657: 
.while.head_657:
                    #      new_var temp_513_656:i1 
                    #      temp_513_656 = icmp i32 Slt i_18, 16_0 
    li      a0, 8364
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s1,a0
                    #      br i1 temp_513_656, label while.body_657, label while.exit_657 
    bnez    a1, .while.body_657
    j       .while.exit_657
                    #      label while.body_657: 
.while.body_657:
                    #      new_var temp_514_659:i32 
                    #      temp_514_659 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 8358
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s3,a0
                    #      new_var temp_515_16294:i1 
                    #      temp_515_16294 = icmp i32 Ne temp_514_659, 0_0 
    li      a0, 0
    li      a2, 8359
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_515_16294, label branch_true_660, label branch_false_660 
    bnez    a2, .branch_true_660
    j       .branch_false_660
                    #      label branch_true_660: 
.branch_true_660:
                    #      new_var temp_516_662:i32 
                    #      temp_516_662 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 8352
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_517_662:i1 
                    #      temp_517_662 = icmp i32 Eq temp_516_662, 0_0 
    li      a0, 0
    li      a2, 8351
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_517_662, label branch_true_663, label branch_false_663 
    bnez    a2, .branch_true_663
    j       .branch_false_663
                    #      label branch_true_663: 
.branch_true_663:
                    #      new_var temp_518_664:Array:i32:[Some(16_0)] 
                    #      temp_518_664 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 8344
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_519_664:ptr->i32 
                    #      new_var temp_520_664:i32 
                    #      temp_519_664 = getelementptr temp_518_664:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 8336
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 8343
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_520_664 = load temp_519_664:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_521_664:i32 
                    #      temp_521_664 = Mul i32 1_0, temp_520_664 
    li      a0, 8264
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 8336
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_522_664:i32 
                    #      temp_522_664 = Add i32 ans_18, temp_521_664 
    li      a1, 8260
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_522_664 
                    #      jump label: branch_false_663 
    li      a2, 8256
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 8343
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 8252
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 8343
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 8344
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 8344
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_663
                    #      label branch_false_663: 
.branch_false_663:
                    #      label branch_false_660: 
.branch_false_660:
                    #      new_var temp_526_666:i32 
                    #      temp_526_666 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 8352
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_527_16439:i1 
                    #      temp_527_16439 = icmp i32 Ne temp_526_666, 0_0 
    li      a0, 0
    li      a2, 8351
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_527_16439, label branch_true_667, label branch_false_667 
    bnez    a2, .branch_true_667
    j       .branch_false_667
                    #      label branch_true_667: 
.branch_true_667:
                    #      new_var temp_528_668:Array:i32:[Some(16_0)] 
                    #      temp_528_668 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 8236
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_529_668:ptr->i32 
                    #      new_var temp_530_668:i32 
                    #      temp_529_668 = getelementptr temp_528_668:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 8228
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 8235
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_530_668 = load temp_529_668:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_531_668:i32 
                    #      temp_531_668 = Mul i32 1_0, temp_530_668 
    li      a0, 8160
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 8228
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_532_668:i32 
                    #      temp_532_668 = Add i32 ans_18, temp_531_668 
    li      a1, 8156
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_532_668 
                    #      jump label: branch_false_667 
    li      a2, 8152
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 8235
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 8148
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 8235
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 8236
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 8236
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_667
                    #      label branch_false_667: 
.branch_false_667:
                    #      label L73_0: 
.L73_0:
                    #      label L74_0: 
.L74_0:
                    #      new_var temp_523_658:i32 
                    #      temp_523_658 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 8236
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_523_658 
                    #      new_var temp_524_658:i32 
                    #      temp_524_658 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 8248
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_524_658 
                    #      new_var temp_525_658:i32 
                    #      temp_525_658 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 8244
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_525_658 
                    #      jump label: while.head_657 
    li      a2, 8235
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 8359
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 8240
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 8359
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 8364
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 8364
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_657
                    #      label while.exit_657: 
.while.exit_657:
                    #      sum_647 = i32 ans_18 
    li      a1, 8358
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_647 
                    #      y_18 = i32 c_647 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_679 
    j       .while.head_679
                    #      label while.head_679: 
.while.head_679:
                    #      new_var temp_533_678:i1 
                    #      temp_533_678 = icmp i32 Slt i_18, 16_0 
    li      a0, 8364
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 8360
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s1,a0
                    #      br i1 temp_533_678, label while.body_679, label while.exit_679 
    bnez    a1, .while.body_679
    j       .while.exit_679
                    #      label while.body_679: 
.while.body_679:
                    #      new_var temp_534_681:i32 
                    #      temp_534_681 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 8147
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_535_681:i32 
                    #      temp_535_681 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 8140
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s3,a0
                    #      new_var temp_536_681:i1 
                    #      temp_536_681 = icmp i32 Ne temp_535_681, 0_0 
    li      a0, 0
    li      a2, 8359
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_537_681:i1 
                    #      temp_536_681 = icmp i32 Ne temp_534_681, 0_0 
    li      a1, 8136
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_538_681:i1 
                    #      temp_538_681 = And i1 temp_536_681, temp_537_681 
    li      a0, 8140
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_538_681, label branch_true_682, label branch_false_682 
    bnez    a0, .branch_true_682
    j       .branch_false_682
                    #      label branch_true_682: 
.branch_true_682:
                    #      new_var temp_539_683:Array:i32:[Some(16_0)] 
                    #      temp_539_683 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 8133
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 8134
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_540_683:ptr->i32 
                    #      new_var temp_541_683:i32 
                    #      temp_540_683 = getelementptr temp_539_683:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 8128
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 8135
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_541_683 = load temp_540_683:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_542_683:i32 
                    #      temp_542_683 = Mul i32 1_0, temp_541_683 
    li      a0, 8056
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 8128
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_543_683:i32 
                    #      temp_543_683 = Add i32 ans_18, temp_542_683 
    li      a1, 8052
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_543_683 
                    #      jump label: branch_false_682 
    li      a2, 8048
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 8135
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 8044
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 8135
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 8134
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 8134
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 8133
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 8133
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_682
                    #      label branch_false_682: 
.branch_false_682:
                    #      label L75_0: 
.L75_0:
                    #      new_var temp_544_680:i32 
                    #      temp_544_680 = Div i32 x_18, 2_0 
    li      a0, 8133
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 8134
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_544_680 
                    #      new_var temp_545_680:i32 
                    #      temp_545_680 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 8040
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_545_680 
                    #      new_var temp_546_680:i32 
                    #      temp_546_680 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 8036
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_546_680 
                    #      jump label: while.head_679 
    li      a2, 8135
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 8359
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 8032
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 8359
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 8360
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 8360
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 8364
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 8364
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_679
                    #      label while.exit_679: 
.while.exit_679:
                    #      c_647 = i32 ans_18 
    li      a1, 8147
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: L76_0 
    j       .L76_0
                    #      label L76_0: 
.L76_0:
                    #      new_var temp_547_689:i1 
                    #      temp_547_689 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 8364
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 15
    li      a2, 8359
    add     a2,sp,a2
    sb      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_547_689, label branch_true_690, label branch_false_690 
    bnez    a2, .branch_true_690
    j       .branch_false_690
                    #      label branch_true_690: 
.branch_true_690:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_699 
    j       .while.exit_699
                    #      label branch_false_690: 
.branch_false_690:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
                    #      new_var temp_548_693:Array:i32:[Some(16_0)] 
                    #      temp_548_693 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_549_693:ptr->i32 
                    #      new_var temp_550_693:i32 
                    #      temp_549_693 = getelementptr temp_548_693:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 8024
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 8031
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_550_693 = load temp_549_693:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_551_693:i32 
                    #      temp_551_693 = Mul i32 c_647, temp_550_693 
    li      a1, 7952
    add     a1,sp,a1
    sd      a1,0(a1)
    mul     a1,a2,a0
                    #      x_18 = i32 temp_551_693 
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_699 
    j       .while.head_699
                    #      label while.head_699: 
.while.head_699:
                    #      new_var temp_552_698:i1 
                    #      temp_552_698 = icmp i32 Slt i_18, 16_0 
    li      a0, 7948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 7944
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s1,a0
                    #      br i1 temp_552_698, label while.body_699, label while.exit_699 
    bnez    a1, .while.body_699
    li      a0, 8364
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a0, 8031
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 7943
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 8031
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 8024
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_699
                    #      label while.body_699: 
.while.body_699:
                    #      new_var temp_553_701:i32 
                    #      temp_553_701 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 7943
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_554_701:i32 
                    #      temp_554_701 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 7936
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s3,a0
                    #      new_var temp_555_701:i1 
                    #      temp_555_701 = icmp i32 Ne temp_554_701, 0_0 
    li      a0, 0
    li      a2, 8364
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_556_701:i1 
                    #      temp_555_701 = icmp i32 Ne temp_553_701, 0_0 
    li      a1, 7932
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_557_701:i1 
                    #      temp_557_701 = And i1 temp_555_701, temp_556_701 
    li      a0, 7936
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_557_701, label branch_true_702, label branch_false_702 
    bnez    a0, .branch_true_702
    j       .branch_false_702
                    #      label branch_true_702: 
.branch_true_702:
                    #      new_var temp_558_703:Array:i32:[Some(16_0)] 
                    #      temp_558_703 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 7929
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 7930
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_559_703:ptr->i32 
                    #      new_var temp_560_703:i32 
                    #      temp_559_703 = getelementptr temp_558_703:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 7924
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 7931
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_560_703 = load temp_559_703:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_561_703:i32 
                    #      temp_561_703 = Mul i32 1_0, temp_560_703 
    li      a0, 7856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 7924
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_562_703:i32 
                    #      temp_562_703 = Add i32 ans_18, temp_561_703 
    li      a1, 7852
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_562_703 
                    #      jump label: branch_false_702 
    li      a2, 7848
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 7931
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 7844
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 7931
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 7930
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 7930
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 8024
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 7929
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 7929
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 8024
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_702
                    #      label branch_false_702: 
.branch_false_702:
                    #      label L77_0: 
.L77_0:
                    #      new_var temp_563_700:i32 
                    #      temp_563_700 = Div i32 x_18, 2_0 
    li      a0, 7929
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 7930
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_563_700 
                    #      new_var temp_564_700:i32 
                    #      temp_564_700 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 7840
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_564_700 
                    #      new_var temp_565_700:i32 
                    #      temp_565_700 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 7836
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_565_700 
                    #      jump label: while.head_699 
    li      a2, 7931
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 8364
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 7832
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 8364
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 7944
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 7944
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 8024
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 7948
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 7948
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 8024
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_699
                    #      label while.exit_699: 
.while.exit_699:
                    #      label L78_0: 
.L78_0:
                    #      c_647 = i32 ans_18 
    mv      a1, a0
                    #      al_647 = i32 sum_647 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_650 
    li      a2, 8031
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 8360
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 8364
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 8364
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 8364
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_650
                    #      label while.exit_650: 
.while.exit_650:
                    #      ans_18 = i32 al_647 
    mv      a1, s10
                    #      mres_625 = i32 ans_18 
                    #      jump label: branch_false_645 
    li      a2, 8359
    add     a2,sp,a2
    sb      a2,0(a2)
    mv      a2, a1
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 8364
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s10, 8368
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 8375
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 8375
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_645
                    #      label branch_false_645: 
.branch_false_645:
                    #      label L79_0: 
.L79_0:
                    #      al_712 = i32 ml_625 
    mv      s10, s5
                    #      c_712 = i32 ml_625 
    li      a0, 8375
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s5
                    #      new_var sum_712:i32 
                    #      jump label: while.head_715 
    j       .while.head_715
                    #      label while.head_715: 
.while.head_715:
                    #      new_var temp_566_17786:i1 
                    #      temp_566_17786 = icmp i32 Ne c_712, 0_0 
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_566_17786, label while.body_715, label while.exit_715 
    bnez    a2, .while.body_715
    j       .while.exit_715
                    #      label while.body_715: 
.while.body_715:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_712 
                    #      y_18 = i32 c_712 
                    #      jump label: while.head_722 
    j       .while.head_722
                    #      label while.head_722: 
.while.head_722:
                    #      new_var temp_567_721:i1 
                    #      temp_567_721 = icmp i32 Slt i_18, 16_0 
    li      a0, 7824
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s1,a0
                    #      br i1 temp_567_721, label while.body_722, label while.exit_722 
    bnez    a1, .while.body_722
    j       .while.exit_722
                    #      label while.body_722: 
.while.body_722:
                    #      new_var temp_568_724:i32 
                    #      temp_568_724 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 7818
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s3,a0
                    #      new_var temp_569_17969:i1 
                    #      temp_569_17969 = icmp i32 Ne temp_568_724, 0_0 
    li      a0, 0
    li      a2, 7819
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_569_17969, label branch_true_725, label branch_false_725 
    bnez    a2, .branch_true_725
    j       .branch_false_725
                    #      label branch_true_725: 
.branch_true_725:
                    #      new_var temp_570_727:i32 
                    #      temp_570_727 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 7812
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_571_727:i1 
                    #      temp_571_727 = icmp i32 Eq temp_570_727, 0_0 
    li      a0, 0
    li      a2, 7811
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_571_727, label branch_true_728, label branch_false_728 
    bnez    a2, .branch_true_728
    j       .branch_false_728
                    #      label branch_true_728: 
.branch_true_728:
                    #      new_var temp_572_729:Array:i32:[Some(16_0)] 
                    #      temp_572_729 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 7804
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_573_729:ptr->i32 
                    #      new_var temp_574_729:i32 
                    #      temp_573_729 = getelementptr temp_572_729:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 7796
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 7803
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_574_729 = load temp_573_729:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_575_729:i32 
                    #      temp_575_729 = Mul i32 1_0, temp_574_729 
    li      a0, 7728
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 7796
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_576_729:i32 
                    #      temp_576_729 = Add i32 ans_18, temp_575_729 
    li      a1, 7724
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_576_729 
                    #      jump label: branch_false_728 
    li      a2, 7720
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 7803
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 7716
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 7803
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 7804
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 7804
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_728
                    #      label branch_false_728: 
.branch_false_728:
                    #      label branch_false_725: 
.branch_false_725:
                    #      new_var temp_580_731:i32 
                    #      temp_580_731 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 7812
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_581_18114:i1 
                    #      temp_581_18114 = icmp i32 Ne temp_580_731, 0_0 
    li      a0, 0
    li      a2, 7811
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_581_18114, label branch_true_732, label branch_false_732 
    bnez    a2, .branch_true_732
    j       .branch_false_732
                    #      label branch_true_732: 
.branch_true_732:
                    #      new_var temp_582_733:Array:i32:[Some(16_0)] 
                    #      temp_582_733 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 7700
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_583_733:ptr->i32 
                    #      new_var temp_584_733:i32 
                    #      temp_583_733 = getelementptr temp_582_733:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 7692
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 7699
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_584_733 = load temp_583_733:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_585_733:i32 
                    #      temp_585_733 = Mul i32 1_0, temp_584_733 
    li      a0, 7624
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 7692
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_586_733:i32 
                    #      temp_586_733 = Add i32 ans_18, temp_585_733 
    li      a1, 7620
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_586_733 
                    #      jump label: branch_false_732 
    li      a2, 7616
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 7699
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 7612
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 7699
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 7700
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 7700
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_732
                    #      label branch_false_732: 
.branch_false_732:
                    #      label L80_0: 
.L80_0:
                    #      label L81_0: 
.L81_0:
                    #      new_var temp_577_723:i32 
                    #      temp_577_723 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 7700
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_577_723 
                    #      new_var temp_578_723:i32 
                    #      temp_578_723 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 7712
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_578_723 
                    #      new_var temp_579_723:i32 
                    #      temp_579_723 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 7708
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_579_723 
                    #      jump label: while.head_722 
    li      a2, 7699
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 7819
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 7704
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 7819
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 7824
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 7824
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_722
                    #      label while.exit_722: 
.while.exit_722:
                    #      sum_712 = i32 ans_18 
    li      a1, 7818
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_712 
                    #      y_18 = i32 c_712 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_744 
    j       .while.head_744
                    #      label while.head_744: 
.while.head_744:
                    #      new_var temp_587_743:i1 
                    #      temp_587_743 = icmp i32 Slt i_18, 16_0 
    li      a0, 7824
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 7820
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s1,a0
                    #      br i1 temp_587_743, label while.body_744, label while.exit_744 
    bnez    a1, .while.body_744
    j       .while.exit_744
                    #      label while.body_744: 
.while.body_744:
                    #      new_var temp_588_746:i32 
                    #      temp_588_746 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 7611
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_589_746:i32 
                    #      temp_589_746 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 7604
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s3,a0
                    #      new_var temp_590_746:i1 
                    #      temp_590_746 = icmp i32 Ne temp_589_746, 0_0 
    li      a0, 0
    li      a2, 7819
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_591_746:i1 
                    #      temp_590_746 = icmp i32 Ne temp_588_746, 0_0 
    li      a1, 7600
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_592_746:i1 
                    #      temp_592_746 = And i1 temp_590_746, temp_591_746 
    li      a0, 7604
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_592_746, label branch_true_747, label branch_false_747 
    bnez    a0, .branch_true_747
    j       .branch_false_747
                    #      label branch_true_747: 
.branch_true_747:
                    #      new_var temp_593_748:Array:i32:[Some(16_0)] 
                    #      temp_593_748 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 7597
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 7598
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_594_748:ptr->i32 
                    #      new_var temp_595_748:i32 
                    #      temp_594_748 = getelementptr temp_593_748:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 7592
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 7599
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_595_748 = load temp_594_748:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_596_748:i32 
                    #      temp_596_748 = Mul i32 1_0, temp_595_748 
    li      a0, 7520
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 7592
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_597_748:i32 
                    #      temp_597_748 = Add i32 ans_18, temp_596_748 
    li      a1, 7516
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_597_748 
                    #      jump label: branch_false_747 
    li      a2, 7512
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 7599
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 7508
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 7599
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 7598
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 7598
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 7597
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 7597
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_747
                    #      label branch_false_747: 
.branch_false_747:
                    #      label L82_0: 
.L82_0:
                    #      new_var temp_598_745:i32 
                    #      temp_598_745 = Div i32 x_18, 2_0 
    li      a0, 7597
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 7598
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_598_745 
                    #      new_var temp_599_745:i32 
                    #      temp_599_745 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 7504
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_599_745 
                    #      new_var temp_600_745:i32 
                    #      temp_600_745 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 7500
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_600_745 
                    #      jump label: while.head_744 
    li      a2, 7599
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 7819
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 7496
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 7819
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 7820
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 7820
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 7824
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 7824
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_744
                    #      label while.exit_744: 
.while.exit_744:
                    #      c_712 = i32 ans_18 
    li      a1, 7611
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: L83_0 
    j       .L83_0
                    #      label L83_0: 
.L83_0:
                    #      new_var temp_601_754:i1 
                    #      temp_601_754 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 7824
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 15
    li      a2, 7819
    add     a2,sp,a2
    sb      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_601_754, label branch_true_755, label branch_false_755 
    bnez    a2, .branch_true_755
    j       .branch_false_755
                    #      label branch_true_755: 
.branch_true_755:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_764 
    j       .while.exit_764
                    #      label branch_false_755: 
.branch_false_755:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
                    #      new_var temp_602_758:Array:i32:[Some(16_0)] 
                    #      temp_602_758 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_603_758:ptr->i32 
                    #      new_var temp_604_758:i32 
                    #      temp_603_758 = getelementptr temp_602_758:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 7488
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 7495
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_604_758 = load temp_603_758:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_605_758:i32 
                    #      temp_605_758 = Mul i32 c_712, temp_604_758 
    li      a1, 7416
    add     a1,sp,a1
    sd      a1,0(a1)
    mul     a1,a2,a0
                    #      x_18 = i32 temp_605_758 
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_764 
    j       .while.head_764
                    #      label while.head_764: 
.while.head_764:
                    #      new_var temp_606_763:i1 
                    #      temp_606_763 = icmp i32 Slt i_18, 16_0 
    li      a0, 7412
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 7408
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s1,a0
                    #      br i1 temp_606_763, label while.body_764, label while.exit_764 
    bnez    a1, .while.body_764
    li      a0, 7824
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a0, 7495
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 7407
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 7495
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 7488
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_764
                    #      label while.body_764: 
.while.body_764:
                    #      new_var temp_607_766:i32 
                    #      temp_607_766 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 7407
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s4,a0
                    #      new_var temp_608_766:i32 
                    #      temp_608_766 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 7400
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s3,a0
                    #      new_var temp_609_766:i1 
                    #      temp_609_766 = icmp i32 Ne temp_608_766, 0_0 
    li      a0, 0
    li      a2, 7824
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_610_766:i1 
                    #      temp_609_766 = icmp i32 Ne temp_607_766, 0_0 
    li      a1, 7396
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_611_766:i1 
                    #      temp_611_766 = And i1 temp_609_766, temp_610_766 
    li      a0, 7400
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_611_766, label branch_true_767, label branch_false_767 
    bnez    a0, .branch_true_767
    j       .branch_false_767
                    #      label branch_true_767: 
.branch_true_767:
                    #      new_var temp_612_768:Array:i32:[Some(16_0)] 
                    #      temp_612_768 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 7393
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 7394
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_613_768:ptr->i32 
                    #      new_var temp_614_768:i32 
                    #      temp_613_768 = getelementptr temp_612_768:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 7388
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 7395
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_614_768 = load temp_613_768:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_615_768:i32 
                    #      temp_615_768 = Mul i32 1_0, temp_614_768 
    li      a0, 7320
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 7388
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_616_768:i32 
                    #      temp_616_768 = Add i32 ans_18, temp_615_768 
    li      a1, 7316
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_616_768 
                    #      jump label: branch_false_767 
    li      a2, 7312
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 7395
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 7308
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 7395
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 7394
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 7394
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 7488
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 7393
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 7393
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 7488
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_767
                    #      label branch_false_767: 
.branch_false_767:
                    #      label L84_0: 
.L84_0:
                    #      new_var temp_617_765:i32 
                    #      temp_617_765 = Div i32 x_18, 2_0 
    li      a0, 7393
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 7394
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_617_765 
                    #      new_var temp_618_765:i32 
                    #      temp_618_765 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 7304
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s4,a0
                    #      y_18 = i32 temp_618_765 
                    #      new_var temp_619_765:i32 
                    #      temp_619_765 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 7300
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s1,a0
                    #      i_18 = i32 temp_619_765 
                    #      jump label: while.head_764 
    li      a2, 7395
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 7824
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 7296
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 7824
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 7408
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 7408
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 7488
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 7412
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 7412
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 7488
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_764
                    #      label while.exit_764: 
.while.exit_764:
                    #      label L85_0: 
.L85_0:
                    #      c_712 = i32 ans_18 
    mv      a1, a0
                    #      al_712 = i32 sum_712 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_715 
    li      a2, 7495
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 7820
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 7824
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 7824
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 7824
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_715
                    #      label while.exit_715: 
.while.exit_715:
                    #      ans_18 = i32 al_712 
    mv      a1, s10
                    #      ml_625 = i32 ans_18 
                    #      x_18 = i32 mr_625 
                    #      y_18 = i32 1_0 
                    #      jump label: L86_0 
    j       .L86_0
                    #      label L86_0: 
.L86_0:
                    #      new_var temp_620_779:i1 
                    #      temp_620_779 = icmp i32 Sge y_18, 15_0 
    li      a0, 7824
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s4,a0
    xori    a1,a1,1
                    #      br i1 temp_620_779, label branch_true_780, label branch_false_780 
    bnez    a1, .branch_true_780
    j       .branch_false_780
                    #      label branch_true_780: 
.branch_true_780:
                    #      new_var temp_621_782:i1 
                    #      temp_621_782 = icmp i32 Slt x_18, 0_0 
    li      a0, 0
    li      a1, 7295
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,s3,a0
                    #      br i1 temp_621_782, label branch_true_783, label branch_false_783 
    bnez    a1, .branch_true_783
    j       .branch_false_783
                    #      label branch_true_783: 
.branch_true_783:
                    #      ans_18 = i32 0xffff_0 
    li      a0, 0xffff
                    #      jump label: L87_0 
    j       .L87_0
                    #      label branch_false_783: 
.branch_false_783:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: L87_0 
    j       .L87_0
                    #      label L87_0: 
.L87_0:
                    #      label branch_false_780: 
.branch_false_780:
                    #      new_var temp_622_788:i1 
                    #      temp_622_788 = icmp i32 Sgt y_18, 0_0 
    li      a0, 0
    li      a1, 7295
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,s4
                    #      br i1 temp_622_788, label branch_true_789, label branch_false_789 
    bnez    a1, .branch_true_789
    j       .branch_false_789
                    #      label branch_true_789: 
.branch_true_789:
                    #      new_var temp_623_791:i1 
                    #      temp_623_791 = icmp i32 Sgt x_18, 0x7fff_0 
    li      a0, 0x7fff
    li      a1, 7293
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,s3
                    #      br i1 temp_623_791, label branch_true_792, label branch_false_792 
    bnez    a1, .branch_true_792
    j       .branch_false_792
                    #      label branch_true_792: 
.branch_true_792:
                    #      new_var temp_624_793:Array:i32:[Some(16_0)] 
                    #      temp_624_793 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 7292
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_625_793:ptr->i32 
                    #      new_var temp_626_793:i32 
                    #      temp_625_793 = getelementptr temp_624_793:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 7288
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 7819
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s4
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_626_793 = load temp_625_793:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_627_793:i32 
                    #      temp_627_793 = Div i32 x_18, temp_626_793 
    li      a0, 7216
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,s3,a1
                    #      x_18 = i32 temp_627_793 
                    #      new_var temp_628_793:i32 
                    #      temp_628_793 = Add i32 y_18, 1_0 
    li      a0, 7208
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 7212
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s4,a0
                    #      new_var temp_629_793:i32 
                    #      temp_629_793 = Sub i32 15_0, temp_628_793 
    li      a0, 15
    li      a2, 7288
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_630_793:Array:i32:[Some(16_0)] 
                    #      temp_630_793 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 7204
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_631_793:ptr->i32 
                    #      new_var temp_632_793:i32 
                    #      temp_631_793 = getelementptr temp_630_793:Array:i32:[Some(16_0)] [Some(temp_629_793)] 
    li      a0, 0
    li      a1, 7196
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_632_793 = load temp_631_793:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_633_793:i32 
                    #      temp_633_793 = Sub i32 65536_0, temp_632_793 
    li      a0, 7128
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 65536
    li      a2, 7200
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_634_793:i32 
                    #      temp_634_793 = Add i32 x_18, temp_633_793 
    add     a0,s3,a2
                    #      ans_18 = i32 temp_634_793 
    li      a1, 7124
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: L88_0 
    j       .L88_0
                    #      label branch_false_792: 
.branch_false_792:
                    #      new_var temp_635_796:Array:i32:[Some(16_0)] 
                    #      temp_635_796 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 7292
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_636_796:ptr->i32 
                    #      new_var temp_637_796:i32 
                    #      temp_636_796 = getelementptr temp_635_796:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 7112
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 7819
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s4
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_637_796 = load temp_636_796:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_638_796:i32 
                    #      temp_638_796 = Div i32 x_18, temp_637_796 
    li      a0, 7040
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,s3,a1
                    #      ans_18 = i32 temp_638_796 
    li      a1, 7036
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: L88_0 
    li      a2, 7112
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 7032
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 7120
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 7120
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 7116
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a1, 7116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 7196
    add     a1,sp,a1
    lw      a3,0(a1)
    j       .L88_0
                    #      label L88_0: 
.L88_0:
                    #      label branch_false_789: 
.branch_false_789:
                    #      ans_18 = i32 x_18 
    mv      a0, s3
                    #      jump label: L89_0 
    j       .L89_0
                    #      label L89_0: 
.L89_0:
                    #      label L90_0: 
.L90_0:
                    #      label L91_0: 
.L91_0:
                    #      mr_625 = i32 ans_18 
                    #      jump label: while.head_628 
    li      a2, 7819
    add     a2,sp,a2
    sb      a2,0(a2)
    mv      a2, a0
    li      a1, 7293
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s10, 7828
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 10100
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s11, 8491
    add     s11,sp,s11
    sb      s11,0(s11)
    li      a3, 10100
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_628
                    #      label while.exit_628: 
.while.exit_628:
                    #      ans_18 = i32 mres_625 
                    #      pl_425 = i32 ans_18 
                    #      x_18 = i32 pr_425 
                    #      y_18 = i32 1_0 
                    #      jump label: L92_0 
    j       .L92_0
                    #      label L92_0: 
.L92_0:
                    #      new_var temp_639_805:i1 
                    #      temp_639_805 = icmp i32 Sge y_18, 15_0 
    li      s10, 15
    li      a0, 10100
    add     a0,sp,a0
    sw      a0,0(a0)
    slt     a0,s4,s10
    xori    a0,a0,1
                    #      br i1 temp_639_805, label branch_true_806, label branch_false_806 
    bnez    a0, .branch_true_806
    j       .branch_false_806
                    #      label branch_true_806: 
.branch_true_806:
                    #      new_var temp_640_808:i1 
                    #      temp_640_808 = icmp i32 Slt x_18, 0_0 
    li      s10, 0
    li      a0, 7031
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,s3,s10
                    #      br i1 temp_640_808, label branch_true_809, label branch_false_809 
    bnez    a0, .branch_true_809
    j       .branch_false_809
                    #      label branch_true_809: 
.branch_true_809:
                    #      ans_18 = i32 0xffff_0 
                    #      jump label: L93_0 
    j       .L93_0
                    #      label branch_false_809: 
.branch_false_809:
                    #      ans_18 = i32 0_0 
                    #      jump label: L93_0 
    j       .L93_0
                    #      label L93_0: 
.L93_0:
                    #      label branch_false_806: 
.branch_false_806:
                    #      new_var temp_641_814:i1 
                    #      temp_641_814 = icmp i32 Sgt y_18, 0_0 
    li      s10, 0
    li      a0, 7031
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,s10,s4
                    #      br i1 temp_641_814, label branch_true_815, label branch_false_815 
    bnez    a0, .branch_true_815
    j       .branch_false_815
                    #      label branch_true_815: 
.branch_true_815:
                    #      new_var temp_642_817:i1 
                    #      temp_642_817 = icmp i32 Sgt x_18, 0x7fff_0 
    li      s10, 0x7fff
    li      a0, 7029
    add     a0,sp,a0
    sb      a0,0(a0)
    slt     a0,s10,s3
                    #      br i1 temp_642_817, label branch_true_818, label branch_false_818 
    bnez    a0, .branch_true_818
    j       .branch_false_818
                    #      label branch_true_818: 
.branch_true_818:
                    #      new_var temp_643_819:Array:i32:[Some(16_0)] 
                    #      temp_643_819 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      s10, SHIFT_TABLE
                    #occupy reg s10 with *SHIFT_TABLE_0
    li      a0, 7028
    add     a0,sp,a0
    sb      a0,0(a0)
    lw      a0,0(s10)
                    #      new_var temp_644_819:ptr->i32 
                    #      new_var temp_645_819:i32 
                    #      temp_644_819 = getelementptr temp_643_819:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      s10, 0
    li      a0, 7024
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,s4
    add     s10,s10,a1
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_645_819 = load temp_644_819:ptr->i32 
    lw      a0,0(s10)
                    #      new_var temp_646_819:i32 
                    #      temp_646_819 = Div i32 x_18, temp_645_819 
    li      a1, 7024
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s3,a0
                    #      x_18 = i32 temp_646_819 
                    #      new_var temp_647_819:i32 
                    #      temp_647_819 = Add i32 y_18, 1_0 
    li      a0, 6948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 6944
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s4,a0
                    #      new_var temp_648_819:i32 
                    #      temp_648_819 = Sub i32 15_0, temp_647_819 
    li      a0, 15
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_649_819:Array:i32:[Some(16_0)] 
                    #      temp_649_819 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 6940
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_650_819:ptr->i32 
                    #      new_var temp_651_819:i32 
                    #      temp_650_819 = getelementptr temp_649_819:Array:i32:[Some(16_0)] [Some(temp_648_819)] 
    li      a0, 0
    li      a1, 6932
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_651_819 = load temp_650_819:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_652_819:i32 
                    #      temp_652_819 = Sub i32 65536_0, temp_651_819 
    li      a0, 6864
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 65536
    li      a2, 6936
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_653_819:i32 
                    #      temp_653_819 = Add i32 x_18, temp_652_819 
    add     a0,s3,a2
                    #      ans_18 = i32 temp_653_819 
    li      a1, 6860
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: L94_0 
    j       .L94_0
                    #      label branch_false_818: 
.branch_false_818:
                    #      new_var temp_654_822:Array:i32:[Some(16_0)] 
                    #      temp_654_822 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      s10, SHIFT_TABLE
                    #occupy reg s10 with *SHIFT_TABLE_0
    li      a0, 7028
    add     a0,sp,a0
    sb      a0,0(a0)
    lw      a0,0(s10)
                    #      new_var temp_655_822:ptr->i32 
                    #      new_var temp_656_822:i32 
                    #      temp_655_822 = getelementptr temp_654_822:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      s10, 0
    li      a0, 6848
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    mul     a1,a0,s4
    add     s10,s10,a1
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_656_822 = load temp_655_822:ptr->i32 
    lw      a0,0(s10)
                    #      new_var temp_657_822:i32 
                    #      temp_657_822 = Div i32 x_18, temp_656_822 
    li      a1, 6848
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s3,a0
                    #      ans_18 = i32 temp_657_822 
                    #      jump label: L94_0 
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 6772
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6856
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 6768
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6856
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      s10, 6776
    add     s10,sp,s10
    sd      s10,0(s10)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6952
    add     a0,sp,a0
    ld      s10,0(a0)
    li      a0, 6952
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6852
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 6852
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 6932
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .L94_0
                    #      label L94_0: 
.L94_0:
                    #      label branch_false_815: 
.branch_false_815:
                    #      ans_18 = i32 x_18 
                    #      jump label: L95_0 
    j       .L95_0
                    #      label L95_0: 
.L95_0:
                    #      label L96_0: 
.L96_0:
                    #      label L97_0: 
.L97_0:
                    #      pr_425 = i32 ans_18 
                    #      jump label: while.head_428 
    li      s8, 8496
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s6, 10090
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s1, 13448
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s5, 8500
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s3, 13444
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s2, 10091
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s7, 9975
    add     s7,sp,s7
    sb      s7,0(s7)
    li      a0, 7029
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 10100
    add     a1,sp,a1
    lw      a0,0(a1)
    li      s11, 8491
    add     s11,sp,s11
    sb      s11,0(s11)
    li      s9, 8492
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s4, 13440
    add     s4,sp,s4
    sw      s4,0(s4)
    j       .while.head_428
                    #      label while.exit_428: 
.while.exit_428:
                    #      ans_18 = i32 pres_425 
                    #       Call void putint_0(ans_18) 
                    #saved register dumping to mem
    li      s1, 10091
    add     s1,sp,s1
    sb      s2,0(s1)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10100
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a2
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      cur_18 = i32 2_0 
    li      a0, 2
                    #      jump label: while.head_832 
    j       .while.head_832
                    #      label while.head_832: 
.while.head_832:
                    #      new_var temp_658_831:i1 
                    #      temp_658_831 = icmp i32 Slt cur_18, 16_0 
    li      s1, 16
    slt     s2,a0,s1
                    #      br i1 temp_658_831, label while.body_832, label while.exit_832 
    bnez    s2, .while.body_832
    j       .while.exit_832
                    #      label while.body_832: 
.while.body_832:
                    #      pl_834 = i32 2_0 
    li      s1, 2
                    #      pr_834 = i32 cur_18 
    mv      s3, a0
                    #      pres_834 = i32 1_0 
    li      s4, 1
                    #      jump label: while.head_837 
    j       .while.head_837
                    #      label while.head_837: 
.while.head_837:
                    #      new_var temp_659_836:i1 
                    #      temp_659_836 = icmp i32 Sgt pr_834, 0_0 
    li      s5, 0
    slt     s6,s5,s3
                    #      br i1 temp_659_836, label while.body_837, label while.exit_837 
    bnez    s6, .while.body_837
    j       .while.exit_837
                    #      label while.body_837: 
.while.body_837:
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
    li      s5, 0
                    #      x_18 = i32 pr_834 
    mv      s7, s3
                    #      y_18 = i32 1_0 
    li      s8, 1
                    #      jump label: while.head_844 
    j       .while.head_844
                    #      label while.head_844: 
.while.head_844:
                    #      new_var temp_660_843:i1 
                    #      temp_660_843 = icmp i32 Slt i_18, 16_0 
    li      s9, 16
    slt     s10,s5,s9
                    #      br i1 temp_660_843, label while.body_844, label while.exit_844 
    bnez    s10, .while.body_844
    j       .while.exit_844
                    #      label while.body_844: 
.while.body_844:
                    #      new_var temp_661_846:i32 
                    #      temp_661_846 = Mod i32 y_18, 2_0 
    li      s9, 2
    rem     s11,s8,s9
                    #      new_var temp_662_846:i32 
                    #      temp_662_846 = Mod i32 x_18, 2_0 
                    #found literal reg Some(s9) already exist with 2_0
    li      a0, 13436
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s7,s9
                    #      new_var temp_663_846:i1 
                    #      temp_663_846 = icmp i32 Ne temp_662_846, 0_0 
    li      s9, 0
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s9
    snez    a1, a1
                    #      new_var temp_664_846:i1 
                    #      temp_663_846 = icmp i32 Ne temp_661_846, 0_0 
                    #found literal reg Some(s9) already exist with 0_0
                    #      new_var temp_665_846:i1 
                    #      temp_665_846 = And i1 temp_663_846, temp_664_846 
    li      a0, 6740
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a1,s9
                    #      br i1 temp_665_846, label branch_true_847, label branch_false_847 
    bnez    a0, .branch_true_847
    j       .branch_false_847
                    #      label branch_true_847: 
.branch_true_847:
                    #      new_var temp_666_848:Array:i32:[Some(16_0)] 
                    #      temp_666_848 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 6737
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 6739
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_667_848:ptr->i32 
                    #      new_var temp_668_848:i32 
                    #      temp_667_848 = getelementptr temp_666_848:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 6732
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_668_848 = load temp_667_848:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_669_848:i32 
                    #      temp_669_848 = Mul i32 1_0, temp_668_848 
    li      a0, 6664
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 6732
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_670_848:i32 
                    #      temp_670_848 = Add i32 ans_18, temp_669_848 
    li      a1, 6660
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_670_848 
                    #      jump label: branch_false_847 
    li      a2, 6656
    add     a2,sp,a2
    sw      a2,0(a2)
    mv      a2, a0
    li      a1, 6652
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6739
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 6739
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6737
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 6737
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_847
                    #      label branch_false_847: 
.branch_false_847:
                    #      label L98_0: 
.L98_0:
                    #      new_var temp_671_845:i32 
                    #      temp_671_845 = Div i32 x_18, 2_0 
    li      a0, 6737
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 6739
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_671_845 
                    #      new_var temp_672_845:i32 
                    #      temp_672_845 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 6648
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_672_845 
                    #      new_var temp_673_845:i32 
                    #      temp_673_845 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 6644
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_673_845 
                    #      jump label: while.head_844 
    li      a1, 6640
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s10, 6750
    add     s10,sp,s10
    sb      s10,0(s10)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 13436
    add     a2,sp,a2
    lw      a0,0(a2)
    li      s11, 6744
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s9, 6738
    add     s9,sp,s9
    sb      s9,0(s9)
    j       .while.head_844
                    #      label while.exit_844: 
.while.exit_844:
                    #      new_var temp_674_21217:i1 
                    #      temp_674_21217 = icmp i32 Ne ans_18, 0_0 
    li      s9, 0
    xor     s11,a2,s9
    snez    s11, s11
                    #      br i1 temp_674_21217, label branch_true_854, label branch_false_854 
    bnez    s11, .branch_true_854
    j       .branch_false_854
                    #      label branch_true_854: 
.branch_true_854:
                    #      ml_856 = i32 pres_834 
    mv      s9, s4
                    #      mr_856 = i32 pl_834 
    li      a0, 13436
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s1
                    #      mres_856 = i32 0_0 
    li      a0, 6628
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
                    #      jump label: while.head_859 
    j       .while.head_859
                    #      label while.head_859: 
.while.head_859:
                    #      new_var temp_675_21330:i1 
                    #      temp_675_21330 = icmp i32 Ne mr_856, 0_0 
    li      a0, 6624
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_675_21330, label while.body_859, label while.exit_859 
    bnez    a2, .while.body_859
    j       .while.exit_859
                    #      label while.body_859: 
.while.body_859:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 mr_856 
                    #      y_18 = i32 1_0 
                    #      jump label: while.head_866 
    j       .while.head_866
                    #      label while.head_866: 
.while.head_866:
                    #      new_var temp_676_865:i1 
                    #      temp_676_865 = icmp i32 Slt i_18, 16_0 
    li      a0, 6628
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_676_865, label while.body_866, label while.exit_866 
    bnez    a1, .while.body_866
    j       .while.exit_866
                    #      label while.body_866: 
.while.body_866:
                    #      new_var temp_677_868:i32 
                    #      temp_677_868 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 6622
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_678_868:i32 
                    #      temp_678_868 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 6616
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_679_868:i1 
                    #      temp_679_868 = icmp i32 Ne temp_678_868, 0_0 
    li      a0, 0
    li      a2, 6623
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_680_868:i1 
                    #      temp_679_868 = icmp i32 Ne temp_677_868, 0_0 
    li      a1, 6612
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_681_868:i1 
                    #      temp_681_868 = And i1 temp_679_868, temp_680_868 
    li      a0, 6616
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_681_868, label branch_true_869, label branch_false_869 
    bnez    a0, .branch_true_869
    j       .branch_false_869
                    #      label branch_true_869: 
.branch_true_869:
                    #      new_var temp_682_870:Array:i32:[Some(16_0)] 
                    #      temp_682_870 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 6609
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 6610
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_683_870:ptr->i32 
                    #      new_var temp_684_870:i32 
                    #      temp_683_870 = getelementptr temp_682_870:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 6604
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 6611
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_684_870 = load temp_683_870:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_685_870:i32 
                    #      temp_685_870 = Mul i32 1_0, temp_684_870 
    li      a0, 6536
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 6604
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_686_870:i32 
                    #      temp_686_870 = Add i32 ans_18, temp_685_870 
    li      a1, 6532
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_686_870 
                    #      jump label: branch_false_869 
    li      a2, 6528
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6611
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 6524
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6611
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 6610
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 6610
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6609
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 6609
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_869
                    #      label branch_false_869: 
.branch_false_869:
                    #      label L99_0: 
.L99_0:
                    #      new_var temp_687_867:i32 
                    #      temp_687_867 = Div i32 x_18, 2_0 
    li      a0, 6609
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 6610
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_687_867 
                    #      new_var temp_688_867:i32 
                    #      temp_688_867 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 6520
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_688_867 
                    #      new_var temp_689_867:i32 
                    #      temp_689_867 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 6516
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_689_867 
                    #      jump label: while.head_866 
    li      a2, 6611
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 6623
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 6512
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6623
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6628
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 6628
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_866
                    #      label while.exit_866: 
.while.exit_866:
                    #      new_var temp_690_21739:i1 
                    #      temp_690_21739 = icmp i32 Ne ans_18, 0_0 
    li      a1, 6622
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 6623
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_690_21739, label branch_true_876, label branch_false_876 
    bnez    a2, .branch_true_876
    j       .branch_false_876
                    #      label branch_true_876: 
.branch_true_876:
                    #      al_878 = i32 mres_856 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      c_878 = i32 ml_856 
    li      a0, 6504
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s9
                    #      new_var sum_878:i32 
                    #      jump label: while.head_881 
    j       .while.head_881
                    #      label while.head_881: 
.while.head_881:
                    #      new_var temp_691_21833:i1 
                    #      temp_691_21833 = icmp i32 Ne c_878, 0_0 
    li      a1, 6624
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a2, 6511
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_691_21833, label while.body_881, label while.exit_881 
    bnez    a2, .while.body_881
    j       .while.exit_881
                    #      label while.body_881: 
.while.body_881:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_878 
    li      a0, 6500
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_878 
    li      a0, 6504
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_888 
    j       .while.head_888
                    #      label while.head_888: 
.while.head_888:
                    #      new_var temp_692_887:i1 
                    #      temp_692_887 = icmp i32 Slt i_18, 16_0 
    li      a0, 6500
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_692_887, label while.body_888, label while.exit_888 
    bnez    a1, .while.body_888
    j       .while.exit_888
                    #      label while.body_888: 
.while.body_888:
                    #      new_var temp_693_890:i32 
                    #      temp_693_890 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 6494
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_694_22016:i1 
                    #      temp_694_22016 = icmp i32 Ne temp_693_890, 0_0 
    li      a0, 0
    li      a2, 6495
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_694_22016, label branch_true_891, label branch_false_891 
    bnez    a2, .branch_true_891
    j       .branch_false_891
                    #      label branch_true_891: 
.branch_true_891:
                    #      new_var temp_695_893:i32 
                    #      temp_695_893 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 6488
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_696_893:i1 
                    #      temp_696_893 = icmp i32 Eq temp_695_893, 0_0 
    li      a0, 0
    li      a2, 6487
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_696_893, label branch_true_894, label branch_false_894 
    bnez    a2, .branch_true_894
    j       .branch_false_894
                    #      label branch_true_894: 
.branch_true_894:
                    #      new_var temp_697_895:Array:i32:[Some(16_0)] 
                    #      temp_697_895 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 6480
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_698_895:ptr->i32 
                    #      new_var temp_699_895:i32 
                    #      temp_698_895 = getelementptr temp_697_895:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 6472
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 6479
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_699_895 = load temp_698_895:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_700_895:i32 
                    #      temp_700_895 = Mul i32 1_0, temp_699_895 
    li      a0, 6400
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 6472
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_701_895:i32 
                    #      temp_701_895 = Add i32 ans_18, temp_700_895 
    li      a1, 6396
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_701_895 
                    #      jump label: branch_false_894 
    li      a2, 6392
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6479
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 6388
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6479
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 6480
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 6480
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_894
                    #      label branch_false_894: 
.branch_false_894:
                    #      label branch_false_891: 
.branch_false_891:
                    #      new_var temp_705_897:i32 
                    #      temp_705_897 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 6488
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_706_22161:i1 
                    #      temp_706_22161 = icmp i32 Ne temp_705_897, 0_0 
    li      a0, 0
    li      a2, 6487
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_706_22161, label branch_true_898, label branch_false_898 
    bnez    a2, .branch_true_898
    j       .branch_false_898
                    #      label branch_true_898: 
.branch_true_898:
                    #      new_var temp_707_899:Array:i32:[Some(16_0)] 
                    #      temp_707_899 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 6372
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_708_899:ptr->i32 
                    #      new_var temp_709_899:i32 
                    #      temp_708_899 = getelementptr temp_707_899:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 6364
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 6371
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_709_899 = load temp_708_899:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_710_899:i32 
                    #      temp_710_899 = Mul i32 1_0, temp_709_899 
    li      a0, 6296
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 6364
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_711_899:i32 
                    #      temp_711_899 = Add i32 ans_18, temp_710_899 
    li      a1, 6292
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_711_899 
                    #      jump label: branch_false_898 
    li      a2, 6288
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6371
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 6284
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6371
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 6372
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 6372
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_898
                    #      label branch_false_898: 
.branch_false_898:
                    #      label L100_0: 
.L100_0:
                    #      label L101_0: 
.L101_0:
                    #      new_var temp_702_889:i32 
                    #      temp_702_889 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 6372
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_702_889 
                    #      new_var temp_703_889:i32 
                    #      temp_703_889 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 6384
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_703_889 
                    #      new_var temp_704_889:i32 
                    #      temp_704_889 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 6380
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_704_889 
                    #      jump label: while.head_888 
    li      a2, 6371
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 6495
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 6376
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6495
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6500
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 6500
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_888
                    #      label while.exit_888: 
.while.exit_888:
                    #      sum_878 = i32 ans_18 
    li      a1, 6494
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_878 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_878 
    li      a0, 6504
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_910 
    j       .while.head_910
                    #      label while.head_910: 
.while.head_910:
                    #      new_var temp_712_909:i1 
                    #      temp_712_909 = icmp i32 Slt i_18, 16_0 
    li      a0, 6500
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 6496
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_712_909, label while.body_910, label while.exit_910 
    bnez    a1, .while.body_910
    j       .while.exit_910
                    #      label while.body_910: 
.while.body_910:
                    #      new_var temp_713_912:i32 
                    #      temp_713_912 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 6283
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_714_912:i32 
                    #      temp_714_912 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 6276
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_715_912:i1 
                    #      temp_715_912 = icmp i32 Ne temp_714_912, 0_0 
    li      a0, 0
    li      a2, 6495
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_716_912:i1 
                    #      temp_715_912 = icmp i32 Ne temp_713_912, 0_0 
    li      a1, 6272
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_717_912:i1 
                    #      temp_717_912 = And i1 temp_715_912, temp_716_912 
    li      a0, 6276
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_717_912, label branch_true_913, label branch_false_913 
    bnez    a0, .branch_true_913
    j       .branch_false_913
                    #      label branch_true_913: 
.branch_true_913:
                    #      new_var temp_718_914:Array:i32:[Some(16_0)] 
                    #      temp_718_914 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 6269
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 6270
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_719_914:ptr->i32 
                    #      new_var temp_720_914:i32 
                    #      temp_719_914 = getelementptr temp_718_914:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 6264
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 6271
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_720_914 = load temp_719_914:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_721_914:i32 
                    #      temp_721_914 = Mul i32 1_0, temp_720_914 
    li      a0, 6192
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 6264
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_722_914:i32 
                    #      temp_722_914 = Add i32 ans_18, temp_721_914 
    li      a1, 6188
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_722_914 
                    #      jump label: branch_false_913 
    li      a2, 6184
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6271
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 6180
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6271
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 6270
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 6270
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6269
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 6269
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_913
                    #      label branch_false_913: 
.branch_false_913:
                    #      label L102_0: 
.L102_0:
                    #      new_var temp_723_911:i32 
                    #      temp_723_911 = Div i32 x_18, 2_0 
    li      a0, 6269
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 6270
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_723_911 
                    #      new_var temp_724_911:i32 
                    #      temp_724_911 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 6176
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_724_911 
                    #      new_var temp_725_911:i32 
                    #      temp_725_911 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 6172
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_725_911 
                    #      jump label: while.head_910 
    li      a2, 6271
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 6495
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 6168
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6495
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 6496
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 6496
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6500
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 6500
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_910
                    #      label while.exit_910: 
.while.exit_910:
                    #      c_878 = i32 ans_18 
    li      a1, 6283
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: L103_0 
    j       .L103_0
                    #      label L103_0: 
.L103_0:
                    #      new_var temp_726_920:i1 
                    #      temp_726_920 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 6500
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 15
    li      a2, 6495
    add     a2,sp,a2
    sb      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_726_920, label branch_true_921, label branch_false_921 
    bnez    a2, .branch_true_921
    j       .branch_false_921
                    #      label branch_true_921: 
.branch_true_921:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_930 
    j       .while.exit_930
                    #      label branch_false_921: 
.branch_false_921:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
                    #      new_var temp_727_924:Array:i32:[Some(16_0)] 
                    #      temp_727_924 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_728_924:ptr->i32 
                    #      new_var temp_729_924:i32 
                    #      temp_728_924 = getelementptr temp_727_924:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 6160
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 6167
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_729_924 = load temp_728_924:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_730_924:i32 
                    #      temp_730_924 = Mul i32 c_878, temp_729_924 
    li      a1, 6088
    add     a1,sp,a1
    sd      a1,0(a1)
    mul     a1,a2,a0
                    #      x_18 = i32 temp_730_924 
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_930 
    j       .while.head_930
                    #      label while.head_930: 
.while.head_930:
                    #      new_var temp_731_929:i1 
                    #      temp_731_929 = icmp i32 Slt i_18, 16_0 
    li      a0, 6084
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 6080
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_731_929, label while.body_930, label while.exit_930 
    bnez    a1, .while.body_930
    li      a0, 6500
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a0, 6167
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 6079
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 6167
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 6160
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_930
                    #      label while.body_930: 
.while.body_930:
                    #      new_var temp_732_932:i32 
                    #      temp_732_932 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 6079
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_733_932:i32 
                    #      temp_733_932 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 6072
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_734_932:i1 
                    #      temp_734_932 = icmp i32 Ne temp_733_932, 0_0 
    li      a0, 0
    li      a2, 6500
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_735_932:i1 
                    #      temp_734_932 = icmp i32 Ne temp_732_932, 0_0 
    li      a1, 6068
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_736_932:i1 
                    #      temp_736_932 = And i1 temp_734_932, temp_735_932 
    li      a0, 6072
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_736_932, label branch_true_933, label branch_false_933 
    bnez    a0, .branch_true_933
    j       .branch_false_933
                    #      label branch_true_933: 
.branch_true_933:
                    #      new_var temp_737_934:Array:i32:[Some(16_0)] 
                    #      temp_737_934 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 6065
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 6066
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_738_934:ptr->i32 
                    #      new_var temp_739_934:i32 
                    #      temp_738_934 = getelementptr temp_737_934:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 6060
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 6067
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_739_934 = load temp_738_934:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_740_934:i32 
                    #      temp_740_934 = Mul i32 1_0, temp_739_934 
    li      a0, 5992
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 6060
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_741_934:i32 
                    #      temp_741_934 = Add i32 ans_18, temp_740_934 
    li      a1, 5988
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_741_934 
                    #      jump label: branch_false_933 
    li      a2, 5984
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6067
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5980
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6067
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 6066
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 6066
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 6160
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6065
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 6065
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 6160
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_933
                    #      label branch_false_933: 
.branch_false_933:
                    #      label L104_0: 
.L104_0:
                    #      new_var temp_742_931:i32 
                    #      temp_742_931 = Div i32 x_18, 2_0 
    li      a0, 6065
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 6066
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_742_931 
                    #      new_var temp_743_931:i32 
                    #      temp_743_931 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 5976
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_743_931 
                    #      new_var temp_744_931:i32 
                    #      temp_744_931 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 5972
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_744_931 
                    #      jump label: while.head_930 
    li      a2, 6067
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 6500
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 5968
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6500
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6080
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 6080
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 6160
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6084
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 6084
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 6160
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_930
                    #      label while.exit_930: 
.while.exit_930:
                    #      label L105_0: 
.L105_0:
                    #      c_878 = i32 ans_18 
    mv      a1, a0
                    #      al_878 = i32 sum_878 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 6500
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: while.head_881 
    li      a2, 6167
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 6496
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6511
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 6504
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6511
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 6624
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 6624
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6500
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 6500
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_881
                    #      label while.exit_881: 
.while.exit_881:
                    #      ans_18 = i32 al_878 
    li      a0, 6500
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      mres_856 = i32 ans_18 
    li      a1, 6504
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: branch_false_876 
    li      a2, 6495
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6511
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 6624
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6511
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_876
                    #      label branch_false_876: 
.branch_false_876:
                    #      label L106_0: 
.L106_0:
                    #      al_943 = i32 ml_856 
    mv      a1, s9
                    #      c_943 = i32 ml_856 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s9
                    #      new_var sum_943:i32 
                    #      jump label: while.head_946 
    j       .while.head_946
                    #      label while.head_946: 
.while.head_946:
                    #      new_var temp_745_23508:i1 
                    #      temp_745_23508 = icmp i32 Ne c_943, 0_0 
    li      a1, 5964
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a2, 6511
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_745_23508, label while.body_946, label while.exit_946 
    bnez    a2, .while.body_946
    j       .while.exit_946
                    #      label while.body_946: 
.while.body_946:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_943 
    li      a0, 5960
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_943 
    li      a0, 5964
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_953 
    j       .while.head_953
                    #      label while.head_953: 
.while.head_953:
                    #      new_var temp_746_952:i1 
                    #      temp_746_952 = icmp i32 Slt i_18, 16_0 
    li      a0, 5960
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_746_952, label while.body_953, label while.exit_953 
    bnez    a1, .while.body_953
    j       .while.exit_953
                    #      label while.body_953: 
.while.body_953:
                    #      new_var temp_747_955:i32 
                    #      temp_747_955 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 5954
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_748_23691:i1 
                    #      temp_748_23691 = icmp i32 Ne temp_747_955, 0_0 
    li      a0, 0
    li      a2, 5955
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_748_23691, label branch_true_956, label branch_false_956 
    bnez    a2, .branch_true_956
    j       .branch_false_956
                    #      label branch_true_956: 
.branch_true_956:
                    #      new_var temp_749_958:i32 
                    #      temp_749_958 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 5948
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_750_958:i1 
                    #      temp_750_958 = icmp i32 Eq temp_749_958, 0_0 
    li      a0, 0
    li      a2, 5947
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_750_958, label branch_true_959, label branch_false_959 
    bnez    a2, .branch_true_959
    j       .branch_false_959
                    #      label branch_true_959: 
.branch_true_959:
                    #      new_var temp_751_960:Array:i32:[Some(16_0)] 
                    #      temp_751_960 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 5940
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_752_960:ptr->i32 
                    #      new_var temp_753_960:i32 
                    #      temp_752_960 = getelementptr temp_751_960:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 5932
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 5939
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_753_960 = load temp_752_960:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_754_960:i32 
                    #      temp_754_960 = Mul i32 1_0, temp_753_960 
    li      a0, 5864
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 5932
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_755_960:i32 
                    #      temp_755_960 = Add i32 ans_18, temp_754_960 
    li      a1, 5860
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_755_960 
                    #      jump label: branch_false_959 
    li      a2, 5856
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5939
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5852
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5939
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 5940
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 5940
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_959
                    #      label branch_false_959: 
.branch_false_959:
                    #      label branch_false_956: 
.branch_false_956:
                    #      new_var temp_759_962:i32 
                    #      temp_759_962 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 5948
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_760_23836:i1 
                    #      temp_760_23836 = icmp i32 Ne temp_759_962, 0_0 
    li      a0, 0
    li      a2, 5947
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_760_23836, label branch_true_963, label branch_false_963 
    bnez    a2, .branch_true_963
    j       .branch_false_963
                    #      label branch_true_963: 
.branch_true_963:
                    #      new_var temp_761_964:Array:i32:[Some(16_0)] 
                    #      temp_761_964 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 5836
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_762_964:ptr->i32 
                    #      new_var temp_763_964:i32 
                    #      temp_762_964 = getelementptr temp_761_964:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 5828
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 5835
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_763_964 = load temp_762_964:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_764_964:i32 
                    #      temp_764_964 = Mul i32 1_0, temp_763_964 
    li      a0, 5760
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 5828
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_765_964:i32 
                    #      temp_765_964 = Add i32 ans_18, temp_764_964 
    li      a1, 5756
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_765_964 
                    #      jump label: branch_false_963 
    li      a2, 5752
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5835
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5748
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5835
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 5836
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 5836
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_963
                    #      label branch_false_963: 
.branch_false_963:
                    #      label L107_0: 
.L107_0:
                    #      label L108_0: 
.L108_0:
                    #      new_var temp_756_954:i32 
                    #      temp_756_954 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 5836
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_756_954 
                    #      new_var temp_757_954:i32 
                    #      temp_757_954 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 5848
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_757_954 
                    #      new_var temp_758_954:i32 
                    #      temp_758_954 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 5844
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_758_954 
                    #      jump label: while.head_953 
    li      a2, 5835
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 5955
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5840
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5955
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 5960
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 5960
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_953
                    #      label while.exit_953: 
.while.exit_953:
                    #      sum_943 = i32 ans_18 
    li      a1, 5954
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_943 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_943 
    li      a0, 5964
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_975 
    j       .while.head_975
                    #      label while.head_975: 
.while.head_975:
                    #      new_var temp_766_974:i1 
                    #      temp_766_974 = icmp i32 Slt i_18, 16_0 
    li      a0, 5960
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 5956
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_766_974, label while.body_975, label while.exit_975 
    bnez    a1, .while.body_975
    j       .while.exit_975
                    #      label while.body_975: 
.while.body_975:
                    #      new_var temp_767_977:i32 
                    #      temp_767_977 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 5747
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_768_977:i32 
                    #      temp_768_977 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 5740
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_769_977:i1 
                    #      temp_769_977 = icmp i32 Ne temp_768_977, 0_0 
    li      a0, 0
    li      a2, 5955
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_770_977:i1 
                    #      temp_769_977 = icmp i32 Ne temp_767_977, 0_0 
    li      a1, 5736
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_771_977:i1 
                    #      temp_771_977 = And i1 temp_769_977, temp_770_977 
    li      a0, 5740
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_771_977, label branch_true_978, label branch_false_978 
    bnez    a0, .branch_true_978
    j       .branch_false_978
                    #      label branch_true_978: 
.branch_true_978:
                    #      new_var temp_772_979:Array:i32:[Some(16_0)] 
                    #      temp_772_979 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 5733
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 5734
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_773_979:ptr->i32 
                    #      new_var temp_774_979:i32 
                    #      temp_773_979 = getelementptr temp_772_979:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 5728
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 5735
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_774_979 = load temp_773_979:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_775_979:i32 
                    #      temp_775_979 = Mul i32 1_0, temp_774_979 
    li      a0, 5656
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 5728
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_776_979:i32 
                    #      temp_776_979 = Add i32 ans_18, temp_775_979 
    li      a1, 5652
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_776_979 
                    #      jump label: branch_false_978 
    li      a2, 5648
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5735
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5644
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5735
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 5734
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 5734
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 5733
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 5733
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_978
                    #      label branch_false_978: 
.branch_false_978:
                    #      label L109_0: 
.L109_0:
                    #      new_var temp_777_976:i32 
                    #      temp_777_976 = Div i32 x_18, 2_0 
    li      a0, 5733
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 5734
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_777_976 
                    #      new_var temp_778_976:i32 
                    #      temp_778_976 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 5640
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_778_976 
                    #      new_var temp_779_976:i32 
                    #      temp_779_976 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 5636
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_779_976 
                    #      jump label: while.head_975 
    li      a2, 5735
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 5955
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5632
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5955
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 5956
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 5956
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 5960
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 5960
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_975
                    #      label while.exit_975: 
.while.exit_975:
                    #      c_943 = i32 ans_18 
    li      a1, 5747
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: L110_0 
    j       .L110_0
                    #      label L110_0: 
.L110_0:
                    #      new_var temp_780_985:i1 
                    #      temp_780_985 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 5960
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 15
    li      a2, 5955
    add     a2,sp,a2
    sb      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_780_985, label branch_true_986, label branch_false_986 
    bnez    a2, .branch_true_986
    j       .branch_false_986
                    #      label branch_true_986: 
.branch_true_986:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_995 
    j       .while.exit_995
                    #      label branch_false_986: 
.branch_false_986:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
                    #      new_var temp_781_989:Array:i32:[Some(16_0)] 
                    #      temp_781_989 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_782_989:ptr->i32 
                    #      new_var temp_783_989:i32 
                    #      temp_782_989 = getelementptr temp_781_989:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 5624
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 5631
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_783_989 = load temp_782_989:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_784_989:i32 
                    #      temp_784_989 = Mul i32 c_943, temp_783_989 
    li      a1, 5552
    add     a1,sp,a1
    sd      a1,0(a1)
    mul     a1,a2,a0
                    #      x_18 = i32 temp_784_989 
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_995 
    j       .while.head_995
                    #      label while.head_995: 
.while.head_995:
                    #      new_var temp_785_994:i1 
                    #      temp_785_994 = icmp i32 Slt i_18, 16_0 
    li      a0, 5548
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 5544
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_785_994, label while.body_995, label while.exit_995 
    bnez    a1, .while.body_995
    li      a0, 5960
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a0, 5631
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5543
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 5631
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 5624
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_995
                    #      label while.body_995: 
.while.body_995:
                    #      new_var temp_786_997:i32 
                    #      temp_786_997 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 5543
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_787_997:i32 
                    #      temp_787_997 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 5536
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_788_997:i1 
                    #      temp_788_997 = icmp i32 Ne temp_787_997, 0_0 
    li      a0, 0
    li      a2, 5960
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_789_997:i1 
                    #      temp_788_997 = icmp i32 Ne temp_786_997, 0_0 
    li      a1, 5532
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_790_997:i1 
                    #      temp_790_997 = And i1 temp_788_997, temp_789_997 
    li      a0, 5536
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_790_997, label branch_true_998, label branch_false_998 
    bnez    a0, .branch_true_998
    j       .branch_false_998
                    #      label branch_true_998: 
.branch_true_998:
                    #      new_var temp_791_999:Array:i32:[Some(16_0)] 
                    #      temp_791_999 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 5529
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 5530
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_792_999:ptr->i32 
                    #      new_var temp_793_999:i32 
                    #      temp_792_999 = getelementptr temp_791_999:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 5524
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 5531
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_793_999 = load temp_792_999:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_794_999:i32 
                    #      temp_794_999 = Mul i32 1_0, temp_793_999 
    li      a0, 5456
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 5524
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_795_999:i32 
                    #      temp_795_999 = Add i32 ans_18, temp_794_999 
    li      a1, 5452
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_795_999 
                    #      jump label: branch_false_998 
    li      a2, 5448
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5531
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5444
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5531
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 5530
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 5530
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 5624
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 5529
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 5529
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 5624
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_998
                    #      label branch_false_998: 
.branch_false_998:
                    #      label L111_0: 
.L111_0:
                    #      new_var temp_796_996:i32 
                    #      temp_796_996 = Div i32 x_18, 2_0 
    li      a0, 5529
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 5530
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_796_996 
                    #      new_var temp_797_996:i32 
                    #      temp_797_996 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 5440
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_797_996 
                    #      new_var temp_798_996:i32 
                    #      temp_798_996 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 5436
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_798_996 
                    #      jump label: while.head_995 
    li      a2, 5531
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 5960
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 5432
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5960
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5544
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 5544
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 5624
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 5548
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 5548
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 5624
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_995
                    #      label while.exit_995: 
.while.exit_995:
                    #      label L112_0: 
.L112_0:
                    #      c_943 = i32 ans_18 
    mv      a1, a0
                    #      al_943 = i32 sum_943 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 5960
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: while.head_946 
    li      a2, 5631
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 5956
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6511
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 6511
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a1, 5964
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 5960
    add     a1,sp,a1
    lw      a0,0(a1)
    j       .while.head_946
                    #      label while.exit_946: 
.while.exit_946:
                    #      ans_18 = i32 al_943 
    li      a0, 5960
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      ml_856 = i32 ans_18 
                    #      x_18 = i32 mr_856 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 1_0 
                    #      jump label: L113_0 
    j       .L113_0
                    #      label L113_0: 
.L113_0:
                    #      new_var temp_799_1010:i1 
                    #      temp_799_1010 = icmp i32 Sge y_18, 15_0 
    li      a0, 6628
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 5964
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s8,a0
    xori    a1,a1,1
                    #      br i1 temp_799_1010, label branch_true_1011, label branch_false_1011 
    bnez    a1, .branch_true_1011
    j       .branch_false_1011
                    #      label branch_true_1011: 
.branch_true_1011:
                    #      new_var temp_800_1013:i1 
                    #      temp_800_1013 = icmp i32 Slt x_18, 0_0 
    li      a0, 0
    li      a1, 5431
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,s7,a0
                    #      br i1 temp_800_1013, label branch_true_1014, label branch_false_1014 
    bnez    a1, .branch_true_1014
    j       .branch_false_1014
                    #      label branch_true_1014: 
.branch_true_1014:
                    #      ans_18 = i32 0xffff_0 
    li      a0, 0xffff
                    #      jump label: L114_0 
    j       .L114_0
                    #      label branch_false_1014: 
.branch_false_1014:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: L114_0 
    j       .L114_0
                    #      label L114_0: 
.L114_0:
                    #      label branch_false_1011: 
.branch_false_1011:
                    #      new_var temp_801_1019:i1 
                    #      temp_801_1019 = icmp i32 Sgt y_18, 0_0 
    li      a0, 0
    li      a1, 5431
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,s8
                    #      br i1 temp_801_1019, label branch_true_1020, label branch_false_1020 
    bnez    a1, .branch_true_1020
    j       .branch_false_1020
                    #      label branch_true_1020: 
.branch_true_1020:
                    #      new_var temp_802_1022:i1 
                    #      temp_802_1022 = icmp i32 Sgt x_18, 0x7fff_0 
    li      a0, 0x7fff
    li      a1, 5429
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,s7
                    #      br i1 temp_802_1022, label branch_true_1023, label branch_false_1023 
    bnez    a1, .branch_true_1023
    j       .branch_false_1023
                    #      label branch_true_1023: 
.branch_true_1023:
                    #      new_var temp_803_1024:Array:i32:[Some(16_0)] 
                    #      temp_803_1024 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 5428
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_804_1024:ptr->i32 
                    #      new_var temp_805_1024:i32 
                    #      temp_804_1024 = getelementptr temp_803_1024:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 5424
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 5955
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s8
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_805_1024 = load temp_804_1024:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_806_1024:i32 
                    #      temp_806_1024 = Div i32 x_18, temp_805_1024 
    li      a0, 5352
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,s7,a1
                    #      x_18 = i32 temp_806_1024 
                    #      new_var temp_807_1024:i32 
                    #      temp_807_1024 = Add i32 y_18, 1_0 
    li      a0, 5344
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 5348
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s8,a0
                    #      new_var temp_808_1024:i32 
                    #      temp_808_1024 = Sub i32 15_0, temp_807_1024 
    li      a0, 15
    li      a2, 5424
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_809_1024:Array:i32:[Some(16_0)] 
                    #      temp_809_1024 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 5340
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_810_1024:ptr->i32 
                    #      new_var temp_811_1024:i32 
                    #      temp_810_1024 = getelementptr temp_809_1024:Array:i32:[Some(16_0)] [Some(temp_808_1024)] 
    li      a0, 0
    li      a1, 5332
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_811_1024 = load temp_810_1024:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_812_1024:i32 
                    #      temp_812_1024 = Sub i32 65536_0, temp_811_1024 
    li      a0, 5264
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 65536
    li      a2, 5336
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_813_1024:i32 
                    #      temp_813_1024 = Add i32 x_18, temp_812_1024 
    add     a0,s7,a2
                    #      ans_18 = i32 temp_813_1024 
    li      a1, 5260
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: L115_0 
    j       .L115_0
                    #      label branch_false_1023: 
.branch_false_1023:
                    #      new_var temp_814_1027:Array:i32:[Some(16_0)] 
                    #      temp_814_1027 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 5428
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_815_1027:ptr->i32 
                    #      new_var temp_816_1027:i32 
                    #      temp_815_1027 = getelementptr temp_814_1027:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 5248
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 5955
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s8
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_816_1027 = load temp_815_1027:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_817_1027:i32 
                    #      temp_817_1027 = Div i32 x_18, temp_816_1027 
    li      a0, 5176
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,s7,a1
                    #      ans_18 = i32 temp_817_1027 
    li      a1, 5172
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: L115_0 
    li      a2, 5248
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 5168
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5256
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 5256
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 5252
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a1, 5252
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 5332
    add     a1,sp,a1
    lw      a3,0(a1)
    j       .L115_0
                    #      label L115_0: 
.L115_0:
                    #      label branch_false_1020: 
.branch_false_1020:
                    #      ans_18 = i32 x_18 
    mv      a0, s7
                    #      jump label: L116_0 
    j       .L116_0
                    #      label L116_0: 
.L116_0:
                    #      label L117_0: 
.L117_0:
                    #      label L118_0: 
.L118_0:
                    #      mr_856 = i32 ans_18 
    li      a1, 5429
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: while.head_859 
    li      a2, 5955
    add     a2,sp,a2
    sb      a2,0(a2)
    mv      a2, a0
    li      a1, 6628
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6624
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 6624
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_859
                    #      label while.exit_859: 
.while.exit_859:
                    #      ans_18 = i32 mres_856 
    li      a0, 6628
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      pres_834 = i32 ans_18 
                    #      jump label: branch_false_854 
    li      a2, 6623
    add     a2,sp,a2
    sb      a2,0(a2)
    mv      a2, a0
    li      a1, 6624
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13436
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s9, 6632
    add     s9,sp,s9
    sw      s9,0(s9)
    li      a3, 13436
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_854
                    #      label branch_false_854: 
.branch_false_854:
                    #      label L119_0: 
.L119_0:
                    #      ml_1034 = i32 pl_834 
    mv      s9, s1
                    #      mr_1034 = i32 pl_834 
    li      a0, 13436
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s1
                    #      mres_1034 = i32 0_0 
    li      a0, 5160
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
                    #      jump label: while.head_1037 
    j       .while.head_1037
                    #      label while.head_1037: 
.while.head_1037:
                    #      new_var temp_818_25800:i1 
                    #      temp_818_25800 = icmp i32 Ne mr_1034, 0_0 
    li      a0, 5156
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_818_25800, label while.body_1037, label while.exit_1037 
    bnez    a2, .while.body_1037
    j       .while.exit_1037
                    #      label while.body_1037: 
.while.body_1037:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 mr_1034 
                    #      y_18 = i32 1_0 
                    #      jump label: while.head_1044 
    j       .while.head_1044
                    #      label while.head_1044: 
.while.head_1044:
                    #      new_var temp_819_1043:i1 
                    #      temp_819_1043 = icmp i32 Slt i_18, 16_0 
    li      a0, 5160
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_819_1043, label while.body_1044, label while.exit_1044 
    bnez    a1, .while.body_1044
    j       .while.exit_1044
                    #      label while.body_1044: 
.while.body_1044:
                    #      new_var temp_820_1046:i32 
                    #      temp_820_1046 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 5154
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_821_1046:i32 
                    #      temp_821_1046 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 5148
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_822_1046:i1 
                    #      temp_822_1046 = icmp i32 Ne temp_821_1046, 0_0 
    li      a0, 0
    li      a2, 5155
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_823_1046:i1 
                    #      temp_822_1046 = icmp i32 Ne temp_820_1046, 0_0 
    li      a1, 5144
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_824_1046:i1 
                    #      temp_824_1046 = And i1 temp_822_1046, temp_823_1046 
    li      a0, 5148
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_824_1046, label branch_true_1047, label branch_false_1047 
    bnez    a0, .branch_true_1047
    j       .branch_false_1047
                    #      label branch_true_1047: 
.branch_true_1047:
                    #      new_var temp_825_1048:Array:i32:[Some(16_0)] 
                    #      temp_825_1048 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 5141
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 5142
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_826_1048:ptr->i32 
                    #      new_var temp_827_1048:i32 
                    #      temp_826_1048 = getelementptr temp_825_1048:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 5136
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 5143
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_827_1048 = load temp_826_1048:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_828_1048:i32 
                    #      temp_828_1048 = Mul i32 1_0, temp_827_1048 
    li      a0, 5064
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 5136
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_829_1048:i32 
                    #      temp_829_1048 = Add i32 ans_18, temp_828_1048 
    li      a1, 5060
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_829_1048 
                    #      jump label: branch_false_1047 
    li      a2, 5056
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5143
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5052
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5143
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 5142
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 5142
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 5141
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 5141
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1047
                    #      label branch_false_1047: 
.branch_false_1047:
                    #      label L120_0: 
.L120_0:
                    #      new_var temp_830_1045:i32 
                    #      temp_830_1045 = Div i32 x_18, 2_0 
    li      a0, 5141
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 5142
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_830_1045 
                    #      new_var temp_831_1045:i32 
                    #      temp_831_1045 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 5048
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_831_1045 
                    #      new_var temp_832_1045:i32 
                    #      temp_832_1045 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 5044
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_832_1045 
                    #      jump label: while.head_1044 
    li      a2, 5143
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 5155
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5040
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5155
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 5160
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 5160
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1044
                    #      label while.exit_1044: 
.while.exit_1044:
                    #      new_var temp_833_26209:i1 
                    #      temp_833_26209 = icmp i32 Ne ans_18, 0_0 
    li      a1, 5154
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 5155
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_833_26209, label branch_true_1054, label branch_false_1054 
    bnez    a2, .branch_true_1054
    j       .branch_false_1054
                    #      label branch_true_1054: 
.branch_true_1054:
                    #      al_1056 = i32 mres_1034 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      c_1056 = i32 ml_1034 
    li      a0, 5032
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s9
                    #      new_var sum_1056:i32 
                    #      jump label: while.head_1059 
    j       .while.head_1059
                    #      label while.head_1059: 
.while.head_1059:
                    #      new_var temp_834_26303:i1 
                    #      temp_834_26303 = icmp i32 Ne c_1056, 0_0 
    li      a1, 5156
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a2, 5039
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_834_26303, label while.body_1059, label while.exit_1059 
    bnez    a2, .while.body_1059
    j       .while.exit_1059
                    #      label while.body_1059: 
.while.body_1059:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_1056 
    li      a0, 5028
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_1056 
    li      a0, 5032
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_1066 
    j       .while.head_1066
                    #      label while.head_1066: 
.while.head_1066:
                    #      new_var temp_835_1065:i1 
                    #      temp_835_1065 = icmp i32 Slt i_18, 16_0 
    li      a0, 5028
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_835_1065, label while.body_1066, label while.exit_1066 
    bnez    a1, .while.body_1066
    j       .while.exit_1066
                    #      label while.body_1066: 
.while.body_1066:
                    #      new_var temp_836_1068:i32 
                    #      temp_836_1068 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 5022
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_837_26486:i1 
                    #      temp_837_26486 = icmp i32 Ne temp_836_1068, 0_0 
    li      a0, 0
    li      a2, 5023
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_837_26486, label branch_true_1069, label branch_false_1069 
    bnez    a2, .branch_true_1069
    j       .branch_false_1069
                    #      label branch_true_1069: 
.branch_true_1069:
                    #      new_var temp_838_1071:i32 
                    #      temp_838_1071 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 5016
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_839_1071:i1 
                    #      temp_839_1071 = icmp i32 Eq temp_838_1071, 0_0 
    li      a0, 0
    li      a2, 5015
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_839_1071, label branch_true_1072, label branch_false_1072 
    bnez    a2, .branch_true_1072
    j       .branch_false_1072
                    #      label branch_true_1072: 
.branch_true_1072:
                    #      new_var temp_840_1073:Array:i32:[Some(16_0)] 
                    #      temp_840_1073 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 5008
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_841_1073:ptr->i32 
                    #      new_var temp_842_1073:i32 
                    #      temp_841_1073 = getelementptr temp_840_1073:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 5000
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 5007
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_842_1073 = load temp_841_1073:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_843_1073:i32 
                    #      temp_843_1073 = Mul i32 1_0, temp_842_1073 
    li      a0, 4928
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 5000
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_844_1073:i32 
                    #      temp_844_1073 = Add i32 ans_18, temp_843_1073 
    li      a1, 4924
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_844_1073 
                    #      jump label: branch_false_1072 
    li      a2, 4920
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5007
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4916
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5007
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 5008
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 5008
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_1072
                    #      label branch_false_1072: 
.branch_false_1072:
                    #      label branch_false_1069: 
.branch_false_1069:
                    #      new_var temp_848_1075:i32 
                    #      temp_848_1075 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 5016
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_849_26631:i1 
                    #      temp_849_26631 = icmp i32 Ne temp_848_1075, 0_0 
    li      a0, 0
    li      a2, 5015
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_849_26631, label branch_true_1076, label branch_false_1076 
    bnez    a2, .branch_true_1076
    j       .branch_false_1076
                    #      label branch_true_1076: 
.branch_true_1076:
                    #      new_var temp_850_1077:Array:i32:[Some(16_0)] 
                    #      temp_850_1077 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 4900
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_851_1077:ptr->i32 
                    #      new_var temp_852_1077:i32 
                    #      temp_851_1077 = getelementptr temp_850_1077:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 4892
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 4899
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_852_1077 = load temp_851_1077:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_853_1077:i32 
                    #      temp_853_1077 = Mul i32 1_0, temp_852_1077 
    li      a0, 4824
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 4892
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_854_1077:i32 
                    #      temp_854_1077 = Add i32 ans_18, temp_853_1077 
    li      a1, 4820
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_854_1077 
                    #      jump label: branch_false_1076 
    li      a2, 4816
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4899
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4812
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 4899
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4900
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 4900
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_1076
                    #      label branch_false_1076: 
.branch_false_1076:
                    #      label L121_0: 
.L121_0:
                    #      label L122_0: 
.L122_0:
                    #      new_var temp_845_1067:i32 
                    #      temp_845_1067 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 4900
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_845_1067 
                    #      new_var temp_846_1067:i32 
                    #      temp_846_1067 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 4912
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_846_1067 
                    #      new_var temp_847_1067:i32 
                    #      temp_847_1067 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 4908
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_847_1067 
                    #      jump label: while.head_1066 
    li      a2, 4899
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 5023
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4904
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5023
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 5028
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 5028
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1066
                    #      label while.exit_1066: 
.while.exit_1066:
                    #      sum_1056 = i32 ans_18 
    li      a1, 5022
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_1056 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_1056 
    li      a0, 5032
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_1088 
    j       .while.head_1088
                    #      label while.head_1088: 
.while.head_1088:
                    #      new_var temp_855_1087:i1 
                    #      temp_855_1087 = icmp i32 Slt i_18, 16_0 
    li      a0, 5028
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 5024
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_855_1087, label while.body_1088, label while.exit_1088 
    bnez    a1, .while.body_1088
    j       .while.exit_1088
                    #      label while.body_1088: 
.while.body_1088:
                    #      new_var temp_856_1090:i32 
                    #      temp_856_1090 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 4811
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_857_1090:i32 
                    #      temp_857_1090 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 4804
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_858_1090:i1 
                    #      temp_858_1090 = icmp i32 Ne temp_857_1090, 0_0 
    li      a0, 0
    li      a2, 5023
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_859_1090:i1 
                    #      temp_858_1090 = icmp i32 Ne temp_856_1090, 0_0 
    li      a1, 4800
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_860_1090:i1 
                    #      temp_860_1090 = And i1 temp_858_1090, temp_859_1090 
    li      a0, 4804
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_860_1090, label branch_true_1091, label branch_false_1091 
    bnez    a0, .branch_true_1091
    j       .branch_false_1091
                    #      label branch_true_1091: 
.branch_true_1091:
                    #      new_var temp_861_1092:Array:i32:[Some(16_0)] 
                    #      temp_861_1092 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 4797
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 4798
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_862_1092:ptr->i32 
                    #      new_var temp_863_1092:i32 
                    #      temp_862_1092 = getelementptr temp_861_1092:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 4792
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 4799
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_863_1092 = load temp_862_1092:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_864_1092:i32 
                    #      temp_864_1092 = Mul i32 1_0, temp_863_1092 
    li      a0, 4720
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 4792
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_865_1092:i32 
                    #      temp_865_1092 = Add i32 ans_18, temp_864_1092 
    li      a1, 4716
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_865_1092 
                    #      jump label: branch_false_1091 
    li      a2, 4712
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4799
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4708
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 4799
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4798
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 4798
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 4797
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 4797
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1091
                    #      label branch_false_1091: 
.branch_false_1091:
                    #      label L123_0: 
.L123_0:
                    #      new_var temp_866_1089:i32 
                    #      temp_866_1089 = Div i32 x_18, 2_0 
    li      a0, 4797
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 4798
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_866_1089 
                    #      new_var temp_867_1089:i32 
                    #      temp_867_1089 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 4704
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_867_1089 
                    #      new_var temp_868_1089:i32 
                    #      temp_868_1089 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 4700
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_868_1089 
                    #      jump label: while.head_1088 
    li      a2, 4799
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 5023
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4696
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5023
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 5024
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 5024
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 5028
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 5028
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1088
                    #      label while.exit_1088: 
.while.exit_1088:
                    #      c_1056 = i32 ans_18 
    li      a1, 4811
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: L124_0 
    j       .L124_0
                    #      label L124_0: 
.L124_0:
                    #      new_var temp_869_1098:i1 
                    #      temp_869_1098 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 5028
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 15
    li      a2, 5023
    add     a2,sp,a2
    sb      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_869_1098, label branch_true_1099, label branch_false_1099 
    bnez    a2, .branch_true_1099
    j       .branch_false_1099
                    #      label branch_true_1099: 
.branch_true_1099:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_1108 
    j       .while.exit_1108
                    #      label branch_false_1099: 
.branch_false_1099:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
                    #      new_var temp_870_1102:Array:i32:[Some(16_0)] 
                    #      temp_870_1102 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_871_1102:ptr->i32 
                    #      new_var temp_872_1102:i32 
                    #      temp_871_1102 = getelementptr temp_870_1102:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 4688
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 4695
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_872_1102 = load temp_871_1102:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_873_1102:i32 
                    #      temp_873_1102 = Mul i32 c_1056, temp_872_1102 
    li      a1, 4616
    add     a1,sp,a1
    sd      a1,0(a1)
    mul     a1,a2,a0
                    #      x_18 = i32 temp_873_1102 
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_1108 
    j       .while.head_1108
                    #      label while.head_1108: 
.while.head_1108:
                    #      new_var temp_874_1107:i1 
                    #      temp_874_1107 = icmp i32 Slt i_18, 16_0 
    li      a0, 4612
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 4608
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_874_1107, label while.body_1108, label while.exit_1108 
    bnez    a1, .while.body_1108
    li      a0, 5028
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a0, 4695
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4607
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 4695
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 4688
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_1108
                    #      label while.body_1108: 
.while.body_1108:
                    #      new_var temp_875_1110:i32 
                    #      temp_875_1110 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 4607
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_876_1110:i32 
                    #      temp_876_1110 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 4600
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_877_1110:i1 
                    #      temp_877_1110 = icmp i32 Ne temp_876_1110, 0_0 
    li      a0, 0
    li      a2, 5028
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_878_1110:i1 
                    #      temp_877_1110 = icmp i32 Ne temp_875_1110, 0_0 
    li      a1, 4596
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_879_1110:i1 
                    #      temp_879_1110 = And i1 temp_877_1110, temp_878_1110 
    li      a0, 4600
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_879_1110, label branch_true_1111, label branch_false_1111 
    bnez    a0, .branch_true_1111
    j       .branch_false_1111
                    #      label branch_true_1111: 
.branch_true_1111:
                    #      new_var temp_880_1112:Array:i32:[Some(16_0)] 
                    #      temp_880_1112 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 4593
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 4594
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_881_1112:ptr->i32 
                    #      new_var temp_882_1112:i32 
                    #      temp_881_1112 = getelementptr temp_880_1112:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 4588
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 4595
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_882_1112 = load temp_881_1112:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_883_1112:i32 
                    #      temp_883_1112 = Mul i32 1_0, temp_882_1112 
    li      a0, 4520
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 4588
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_884_1112:i32 
                    #      temp_884_1112 = Add i32 ans_18, temp_883_1112 
    li      a1, 4516
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_884_1112 
                    #      jump label: branch_false_1111 
    li      a2, 4512
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4595
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4508
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 4595
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4594
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 4594
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 4688
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 4593
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 4593
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 4688
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1111
                    #      label branch_false_1111: 
.branch_false_1111:
                    #      label L125_0: 
.L125_0:
                    #      new_var temp_885_1109:i32 
                    #      temp_885_1109 = Div i32 x_18, 2_0 
    li      a0, 4593
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 4594
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_885_1109 
                    #      new_var temp_886_1109:i32 
                    #      temp_886_1109 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 4504
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_886_1109 
                    #      new_var temp_887_1109:i32 
                    #      temp_887_1109 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 4500
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_887_1109 
                    #      jump label: while.head_1108 
    li      a2, 4595
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 5028
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 4496
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5028
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4608
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 4608
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 4688
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 4612
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 4612
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 4688
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1108
                    #      label while.exit_1108: 
.while.exit_1108:
                    #      label L126_0: 
.L126_0:
                    #      c_1056 = i32 ans_18 
    mv      a1, a0
                    #      al_1056 = i32 sum_1056 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 5028
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: while.head_1059 
    li      a2, 4695
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 5024
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5039
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5032
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5039
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 5156
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 5156
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 5028
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 5028
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1059
                    #      label while.exit_1059: 
.while.exit_1059:
                    #      ans_18 = i32 al_1056 
    li      a0, 5028
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      mres_1034 = i32 ans_18 
    li      a1, 5032
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: branch_false_1054 
    li      a2, 5023
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5039
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 5156
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 5039
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1054
                    #      label branch_false_1054: 
.branch_false_1054:
                    #      label L127_0: 
.L127_0:
                    #      al_1121 = i32 ml_1034 
    mv      a1, s9
                    #      c_1121 = i32 ml_1034 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s9
                    #      new_var sum_1121:i32 
                    #      jump label: while.head_1124 
    j       .while.head_1124
                    #      label while.head_1124: 
.while.head_1124:
                    #      new_var temp_888_27978:i1 
                    #      temp_888_27978 = icmp i32 Ne c_1121, 0_0 
    li      a1, 4492
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a2, 5039
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_888_27978, label while.body_1124, label while.exit_1124 
    bnez    a2, .while.body_1124
    j       .while.exit_1124
                    #      label while.body_1124: 
.while.body_1124:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_1121 
    li      a0, 4488
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_1121 
    li      a0, 4492
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_1131 
    j       .while.head_1131
                    #      label while.head_1131: 
.while.head_1131:
                    #      new_var temp_889_1130:i1 
                    #      temp_889_1130 = icmp i32 Slt i_18, 16_0 
    li      a0, 4488
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_889_1130, label while.body_1131, label while.exit_1131 
    bnez    a1, .while.body_1131
    j       .while.exit_1131
                    #      label while.body_1131: 
.while.body_1131:
                    #      new_var temp_890_1133:i32 
                    #      temp_890_1133 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 4482
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_891_28161:i1 
                    #      temp_891_28161 = icmp i32 Ne temp_890_1133, 0_0 
    li      a0, 0
    li      a2, 4483
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_891_28161, label branch_true_1134, label branch_false_1134 
    bnez    a2, .branch_true_1134
    j       .branch_false_1134
                    #      label branch_true_1134: 
.branch_true_1134:
                    #      new_var temp_892_1136:i32 
                    #      temp_892_1136 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 4476
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_893_1136:i1 
                    #      temp_893_1136 = icmp i32 Eq temp_892_1136, 0_0 
    li      a0, 0
    li      a2, 4475
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_893_1136, label branch_true_1137, label branch_false_1137 
    bnez    a2, .branch_true_1137
    j       .branch_false_1137
                    #      label branch_true_1137: 
.branch_true_1137:
                    #      new_var temp_894_1138:Array:i32:[Some(16_0)] 
                    #      temp_894_1138 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 4468
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_895_1138:ptr->i32 
                    #      new_var temp_896_1138:i32 
                    #      temp_895_1138 = getelementptr temp_894_1138:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 4460
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 4467
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_896_1138 = load temp_895_1138:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_897_1138:i32 
                    #      temp_897_1138 = Mul i32 1_0, temp_896_1138 
    li      a0, 4392
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 4460
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_898_1138:i32 
                    #      temp_898_1138 = Add i32 ans_18, temp_897_1138 
    li      a1, 4388
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_898_1138 
                    #      jump label: branch_false_1137 
    li      a2, 4384
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4467
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4380
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 4467
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4468
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 4468
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_1137
                    #      label branch_false_1137: 
.branch_false_1137:
                    #      label branch_false_1134: 
.branch_false_1134:
                    #      new_var temp_902_1140:i32 
                    #      temp_902_1140 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 4476
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_903_28306:i1 
                    #      temp_903_28306 = icmp i32 Ne temp_902_1140, 0_0 
    li      a0, 0
    li      a2, 4475
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_903_28306, label branch_true_1141, label branch_false_1141 
    bnez    a2, .branch_true_1141
    j       .branch_false_1141
                    #      label branch_true_1141: 
.branch_true_1141:
                    #      new_var temp_904_1142:Array:i32:[Some(16_0)] 
                    #      temp_904_1142 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 4364
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_905_1142:ptr->i32 
                    #      new_var temp_906_1142:i32 
                    #      temp_905_1142 = getelementptr temp_904_1142:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 4356
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 4363
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_906_1142 = load temp_905_1142:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_907_1142:i32 
                    #      temp_907_1142 = Mul i32 1_0, temp_906_1142 
    li      a0, 4288
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 4356
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_908_1142:i32 
                    #      temp_908_1142 = Add i32 ans_18, temp_907_1142 
    li      a1, 4284
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_908_1142 
                    #      jump label: branch_false_1141 
    li      a2, 4280
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4363
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4276
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 4363
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4364
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 4364
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_1141
                    #      label branch_false_1141: 
.branch_false_1141:
                    #      label L128_0: 
.L128_0:
                    #      label L129_0: 
.L129_0:
                    #      new_var temp_899_1132:i32 
                    #      temp_899_1132 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 4364
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_899_1132 
                    #      new_var temp_900_1132:i32 
                    #      temp_900_1132 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 4376
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_900_1132 
                    #      new_var temp_901_1132:i32 
                    #      temp_901_1132 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 4372
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_901_1132 
                    #      jump label: while.head_1131 
    li      a2, 4363
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4483
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4368
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 4483
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 4488
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 4488
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1131
                    #      label while.exit_1131: 
.while.exit_1131:
                    #      sum_1121 = i32 ans_18 
    li      a1, 4482
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_1121 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_1121 
    li      a0, 4492
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_1153 
    j       .while.head_1153
                    #      label while.head_1153: 
.while.head_1153:
                    #      new_var temp_909_1152:i1 
                    #      temp_909_1152 = icmp i32 Slt i_18, 16_0 
    li      a0, 4488
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 4484
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_909_1152, label while.body_1153, label while.exit_1153 
    bnez    a1, .while.body_1153
    j       .while.exit_1153
                    #      label while.body_1153: 
.while.body_1153:
                    #      new_var temp_910_1155:i32 
                    #      temp_910_1155 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 4275
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_911_1155:i32 
                    #      temp_911_1155 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 4268
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_912_1155:i1 
                    #      temp_912_1155 = icmp i32 Ne temp_911_1155, 0_0 
    li      a0, 0
    li      a2, 4483
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_913_1155:i1 
                    #      temp_912_1155 = icmp i32 Ne temp_910_1155, 0_0 
    li      a1, 4264
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_914_1155:i1 
                    #      temp_914_1155 = And i1 temp_912_1155, temp_913_1155 
    li      a0, 4268
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_914_1155, label branch_true_1156, label branch_false_1156 
    bnez    a0, .branch_true_1156
    j       .branch_false_1156
                    #      label branch_true_1156: 
.branch_true_1156:
                    #      new_var temp_915_1157:Array:i32:[Some(16_0)] 
                    #      temp_915_1157 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 4261
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 4262
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_916_1157:ptr->i32 
                    #      new_var temp_917_1157:i32 
                    #      temp_916_1157 = getelementptr temp_915_1157:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 4256
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 4263
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_917_1157 = load temp_916_1157:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_918_1157:i32 
                    #      temp_918_1157 = Mul i32 1_0, temp_917_1157 
    li      a0, 4184
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 4256
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_919_1157:i32 
                    #      temp_919_1157 = Add i32 ans_18, temp_918_1157 
    li      a1, 4180
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_919_1157 
                    #      jump label: branch_false_1156 
    li      a2, 4176
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4263
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4172
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 4263
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4262
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 4262
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 4261
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 4261
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1156
                    #      label branch_false_1156: 
.branch_false_1156:
                    #      label L130_0: 
.L130_0:
                    #      new_var temp_920_1154:i32 
                    #      temp_920_1154 = Div i32 x_18, 2_0 
    li      a0, 4261
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 4262
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_920_1154 
                    #      new_var temp_921_1154:i32 
                    #      temp_921_1154 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 4168
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_921_1154 
                    #      new_var temp_922_1154:i32 
                    #      temp_922_1154 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 4164
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_922_1154 
                    #      jump label: while.head_1153 
    li      a2, 4263
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4483
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4160
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 4483
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4484
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 4484
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 4488
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 4488
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1153
                    #      label while.exit_1153: 
.while.exit_1153:
                    #      c_1121 = i32 ans_18 
    li      a1, 4275
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: L131_0 
    j       .L131_0
                    #      label L131_0: 
.L131_0:
                    #      new_var temp_923_1163:i1 
                    #      temp_923_1163 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 4488
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 15
    li      a2, 4483
    add     a2,sp,a2
    sb      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_923_1163, label branch_true_1164, label branch_false_1164 
    bnez    a2, .branch_true_1164
    j       .branch_false_1164
                    #      label branch_true_1164: 
.branch_true_1164:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_1173 
    j       .while.exit_1173
                    #      label branch_false_1164: 
.branch_false_1164:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
                    #      new_var temp_924_1167:Array:i32:[Some(16_0)] 
                    #      temp_924_1167 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_925_1167:ptr->i32 
                    #      new_var temp_926_1167:i32 
                    #      temp_925_1167 = getelementptr temp_924_1167:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 4152
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 4159
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_926_1167 = load temp_925_1167:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_927_1167:i32 
                    #      temp_927_1167 = Mul i32 c_1121, temp_926_1167 
    li      a1, 4080
    add     a1,sp,a1
    sd      a1,0(a1)
    mul     a1,a2,a0
                    #      x_18 = i32 temp_927_1167 
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_1173 
    j       .while.head_1173
                    #      label while.head_1173: 
.while.head_1173:
                    #      new_var temp_928_1172:i1 
                    #      temp_928_1172 = icmp i32 Slt i_18, 16_0 
    li      a0, 4076
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 4072
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s5,a0
                    #      br i1 temp_928_1172, label while.body_1173, label while.exit_1173 
    bnez    a1, .while.body_1173
    li      a0, 4488
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a0, 4159
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 4071
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 4159
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 4152
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_1173
                    #      label while.body_1173: 
.while.body_1173:
                    #      new_var temp_929_1175:i32 
                    #      temp_929_1175 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 4071
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_930_1175:i32 
                    #      temp_930_1175 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 4064
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s7,a0
                    #      new_var temp_931_1175:i1 
                    #      temp_931_1175 = icmp i32 Ne temp_930_1175, 0_0 
    li      a0, 0
    li      a2, 4488
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_932_1175:i1 
                    #      temp_931_1175 = icmp i32 Ne temp_929_1175, 0_0 
    li      a1, 4060
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_933_1175:i1 
                    #      temp_933_1175 = And i1 temp_931_1175, temp_932_1175 
    li      a0, 4064
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_933_1175, label branch_true_1176, label branch_false_1176 
    bnez    a0, .branch_true_1176
    j       .branch_false_1176
                    #      label branch_true_1176: 
.branch_true_1176:
                    #      new_var temp_934_1177:Array:i32:[Some(16_0)] 
                    #      temp_934_1177 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 4057
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 4058
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_935_1177:ptr->i32 
                    #      new_var temp_936_1177:i32 
                    #      temp_935_1177 = getelementptr temp_934_1177:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 4052
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 4059
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_936_1177 = load temp_935_1177:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_937_1177:i32 
                    #      temp_937_1177 = Mul i32 1_0, temp_936_1177 
    li      a0, 3984
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 4052
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_938_1177:i32 
                    #      temp_938_1177 = Add i32 ans_18, temp_937_1177 
    li      a1, 3980
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_938_1177 
                    #      jump label: branch_false_1176 
    li      a2, 3976
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4059
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 3972
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 4059
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4058
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 4058
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 4152
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 4057
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 4057
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 4152
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1176
                    #      label branch_false_1176: 
.branch_false_1176:
                    #      label L132_0: 
.L132_0:
                    #      new_var temp_939_1174:i32 
                    #      temp_939_1174 = Div i32 x_18, 2_0 
    li      a0, 4057
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 4058
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s7,a0
                    #      x_18 = i32 temp_939_1174 
                    #      new_var temp_940_1174:i32 
                    #      temp_940_1174 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 3968
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      y_18 = i32 temp_940_1174 
                    #      new_var temp_941_1174:i32 
                    #      temp_941_1174 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 3964
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s5,a0
                    #      i_18 = i32 temp_941_1174 
                    #      jump label: while.head_1173 
    li      a2, 4059
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4488
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 3960
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 4488
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4072
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 4072
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 4152
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 4076
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 4076
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 4152
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1173
                    #      label while.exit_1173: 
.while.exit_1173:
                    #      label L133_0: 
.L133_0:
                    #      c_1121 = i32 ans_18 
    mv      a1, a0
                    #      al_1121 = i32 sum_1121 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 4488
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: while.head_1124 
    li      a2, 4159
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 4484
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5039
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 5039
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a1, 4492
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 4488
    add     a1,sp,a1
    lw      a0,0(a1)
    j       .while.head_1124
                    #      label while.exit_1124: 
.while.exit_1124:
                    #      ans_18 = i32 al_1121 
    li      a0, 4488
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      ml_1034 = i32 ans_18 
                    #      x_18 = i32 mr_1034 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 1_0 
                    #      jump label: L134_0 
    j       .L134_0
                    #      label L134_0: 
.L134_0:
                    #      new_var temp_942_1188:i1 
                    #      temp_942_1188 = icmp i32 Sge y_18, 15_0 
    li      a0, 5160
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 4492
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s8,a0
    xori    a1,a1,1
                    #      br i1 temp_942_1188, label branch_true_1189, label branch_false_1189 
    bnez    a1, .branch_true_1189
    j       .branch_false_1189
                    #      label branch_true_1189: 
.branch_true_1189:
                    #      new_var temp_943_1191:i1 
                    #      temp_943_1191 = icmp i32 Slt x_18, 0_0 
    li      a0, 0
    li      a1, 3959
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,s7,a0
                    #      br i1 temp_943_1191, label branch_true_1192, label branch_false_1192 
    bnez    a1, .branch_true_1192
    j       .branch_false_1192
                    #      label branch_true_1192: 
.branch_true_1192:
                    #      ans_18 = i32 0xffff_0 
    li      a0, 0xffff
                    #      jump label: L135_0 
    j       .L135_0
                    #      label branch_false_1192: 
.branch_false_1192:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: L135_0 
    j       .L135_0
                    #      label L135_0: 
.L135_0:
                    #      label branch_false_1189: 
.branch_false_1189:
                    #      new_var temp_944_1197:i1 
                    #      temp_944_1197 = icmp i32 Sgt y_18, 0_0 
    li      a0, 0
    li      a1, 3959
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,s8
                    #      br i1 temp_944_1197, label branch_true_1198, label branch_false_1198 
    bnez    a1, .branch_true_1198
    j       .branch_false_1198
                    #      label branch_true_1198: 
.branch_true_1198:
                    #      new_var temp_945_1200:i1 
                    #      temp_945_1200 = icmp i32 Sgt x_18, 0x7fff_0 
    li      a0, 0x7fff
    li      a1, 3957
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,s7
                    #      br i1 temp_945_1200, label branch_true_1201, label branch_false_1201 
    bnez    a1, .branch_true_1201
    j       .branch_false_1201
                    #      label branch_true_1201: 
.branch_true_1201:
                    #      new_var temp_946_1202:Array:i32:[Some(16_0)] 
                    #      temp_946_1202 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 3956
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_947_1202:ptr->i32 
                    #      new_var temp_948_1202:i32 
                    #      temp_947_1202 = getelementptr temp_946_1202:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 3952
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 4483
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s8
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_948_1202 = load temp_947_1202:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_949_1202:i32 
                    #      temp_949_1202 = Div i32 x_18, temp_948_1202 
    li      a0, 3880
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,s7,a1
                    #      x_18 = i32 temp_949_1202 
                    #      new_var temp_950_1202:i32 
                    #      temp_950_1202 = Add i32 y_18, 1_0 
    li      a0, 3872
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 3876
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s8,a0
                    #      new_var temp_951_1202:i32 
                    #      temp_951_1202 = Sub i32 15_0, temp_950_1202 
    li      a0, 15
    li      a2, 3952
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_952_1202:Array:i32:[Some(16_0)] 
                    #      temp_952_1202 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 3868
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_953_1202:ptr->i32 
                    #      new_var temp_954_1202:i32 
                    #      temp_953_1202 = getelementptr temp_952_1202:Array:i32:[Some(16_0)] [Some(temp_951_1202)] 
    li      a0, 0
    li      a1, 3860
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_954_1202 = load temp_953_1202:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_955_1202:i32 
                    #      temp_955_1202 = Sub i32 65536_0, temp_954_1202 
    li      a0, 3792
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 65536
    li      a2, 3864
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_956_1202:i32 
                    #      temp_956_1202 = Add i32 x_18, temp_955_1202 
    add     a0,s7,a2
                    #      ans_18 = i32 temp_956_1202 
    li      a1, 3788
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: L136_0 
    j       .L136_0
                    #      label branch_false_1201: 
.branch_false_1201:
                    #      new_var temp_957_1205:Array:i32:[Some(16_0)] 
                    #      temp_957_1205 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 3956
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_958_1205:ptr->i32 
                    #      new_var temp_959_1205:i32 
                    #      temp_958_1205 = getelementptr temp_957_1205:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 3776
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 4483
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s8
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_959_1205 = load temp_958_1205:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_960_1205:i32 
                    #      temp_960_1205 = Div i32 x_18, temp_959_1205 
    li      a0, 3704
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,s7,a1
                    #      ans_18 = i32 temp_960_1205 
    li      a1, 3700
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: L136_0 
    li      a2, 3776
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 3696
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3784
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 3784
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3780
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a1, 3780
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3860
    add     a1,sp,a1
    lw      a3,0(a1)
    j       .L136_0
                    #      label L136_0: 
.L136_0:
                    #      label branch_false_1198: 
.branch_false_1198:
                    #      ans_18 = i32 x_18 
    mv      a0, s7
                    #      jump label: L137_0 
    j       .L137_0
                    #      label L137_0: 
.L137_0:
                    #      label L138_0: 
.L138_0:
                    #      label L139_0: 
.L139_0:
                    #      mr_1034 = i32 ans_18 
    li      a1, 3957
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: while.head_1037 
    li      a2, 4483
    add     a2,sp,a2
    sb      a2,0(a2)
    mv      a2, a0
    li      a1, 5160
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 5156
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 5156
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1037
                    #      label while.exit_1037: 
.while.exit_1037:
                    #      ans_18 = i32 mres_1034 
    li      a0, 5160
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      pl_834 = i32 ans_18 
                    #      x_18 = i32 pr_834 
                    #      y_18 = i32 1_0 
                    #      jump label: L140_0 
    j       .L140_0
                    #      label L140_0: 
.L140_0:
                    #      new_var temp_961_1214:i1 
                    #      temp_961_1214 = icmp i32 Sge y_18, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 5156
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s8,a0
    xori    a1,a1,1
                    #      br i1 temp_961_1214, label branch_true_1215, label branch_false_1215 
    bnez    a1, .branch_true_1215
    j       .branch_false_1215
                    #      label branch_true_1215: 
.branch_true_1215:
                    #      new_var temp_962_1217:i1 
                    #      temp_962_1217 = icmp i32 Slt x_18, 0_0 
    li      a0, 0
    li      a1, 3695
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,s7,a0
                    #      br i1 temp_962_1217, label branch_true_1218, label branch_false_1218 
    bnez    a1, .branch_true_1218
    j       .branch_false_1218
                    #      label branch_true_1218: 
.branch_true_1218:
                    #      ans_18 = i32 0xffff_0 
    li      a0, 0xffff
                    #      jump label: L141_0 
    j       .L141_0
                    #      label branch_false_1218: 
.branch_false_1218:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: L141_0 
    j       .L141_0
                    #      label L141_0: 
.L141_0:
                    #      label branch_false_1215: 
.branch_false_1215:
                    #      new_var temp_963_1223:i1 
                    #      temp_963_1223 = icmp i32 Sgt y_18, 0_0 
    li      a0, 0
    li      a1, 3695
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,s8
                    #      br i1 temp_963_1223, label branch_true_1224, label branch_false_1224 
    bnez    a1, .branch_true_1224
    j       .branch_false_1224
                    #      label branch_true_1224: 
.branch_true_1224:
                    #      new_var temp_964_1226:i1 
                    #      temp_964_1226 = icmp i32 Sgt x_18, 0x7fff_0 
    li      a0, 0x7fff
    li      a1, 3693
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,s7
                    #      br i1 temp_964_1226, label branch_true_1227, label branch_false_1227 
    bnez    a1, .branch_true_1227
    j       .branch_false_1227
                    #      label branch_true_1227: 
.branch_true_1227:
                    #      new_var temp_965_1228:Array:i32:[Some(16_0)] 
                    #      temp_965_1228 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 3692
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_966_1228:ptr->i32 
                    #      new_var temp_967_1228:i32 
                    #      temp_966_1228 = getelementptr temp_965_1228:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 3688
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 5155
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s8
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_967_1228 = load temp_966_1228:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_968_1228:i32 
                    #      temp_968_1228 = Div i32 x_18, temp_967_1228 
    li      a0, 3616
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,s7,a1
                    #      x_18 = i32 temp_968_1228 
                    #      new_var temp_969_1228:i32 
                    #      temp_969_1228 = Add i32 y_18, 1_0 
    li      a0, 3608
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 3612
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s8,a0
                    #      new_var temp_970_1228:i32 
                    #      temp_970_1228 = Sub i32 15_0, temp_969_1228 
    li      a0, 15
    li      a2, 3688
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_971_1228:Array:i32:[Some(16_0)] 
                    #      temp_971_1228 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 3604
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_972_1228:ptr->i32 
                    #      new_var temp_973_1228:i32 
                    #      temp_972_1228 = getelementptr temp_971_1228:Array:i32:[Some(16_0)] [Some(temp_970_1228)] 
    li      a0, 0
    li      a1, 3596
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_973_1228 = load temp_972_1228:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_974_1228:i32 
                    #      temp_974_1228 = Sub i32 65536_0, temp_973_1228 
    li      a0, 3528
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 65536
    li      a2, 3600
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_975_1228:i32 
                    #      temp_975_1228 = Add i32 x_18, temp_974_1228 
    add     a0,s7,a2
                    #      ans_18 = i32 temp_975_1228 
    li      a1, 3524
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: L142_0 
    j       .L142_0
                    #      label branch_false_1227: 
.branch_false_1227:
                    #      new_var temp_976_1231:Array:i32:[Some(16_0)] 
                    #      temp_976_1231 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 3692
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_977_1231:ptr->i32 
                    #      new_var temp_978_1231:i32 
                    #      temp_977_1231 = getelementptr temp_976_1231:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 3512
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 5155
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s8
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_978_1231 = load temp_977_1231:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_979_1231:i32 
                    #      temp_979_1231 = Div i32 x_18, temp_978_1231 
    li      a0, 3440
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,s7,a1
                    #      ans_18 = i32 temp_979_1231 
    li      a1, 3436
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: L142_0 
    li      a2, 3512
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 3432
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3520
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 3520
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3516
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a1, 3516
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3596
    add     a1,sp,a1
    lw      a3,0(a1)
    j       .L142_0
                    #      label L142_0: 
.L142_0:
                    #      label branch_false_1224: 
.branch_false_1224:
                    #      ans_18 = i32 x_18 
    mv      a0, s7
                    #      jump label: L143_0 
    j       .L143_0
                    #      label L143_0: 
.L143_0:
                    #      label L144_0: 
.L144_0:
                    #      label L145_0: 
.L145_0:
                    #      pr_834 = i32 ans_18 
                    #      jump label: while.head_837 
    li      a2, 5155
    add     a2,sp,a2
    sb      a2,0(a2)
    mv      a2, a0
    li      s8, 13440
    add     s8,sp,s8
    sw      s8,0(s8)
    li      a1, 3693
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s6, 6751
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s10, 6750
    add     s10,sp,s10
    sb      s10,0(s10)
    li      s5, 13448
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s7, 13444
    add     s7,sp,s7
    sw      s7,0(s7)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13436
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s11, 6639
    add     s11,sp,s11
    sb      s11,0(s11)
    li      s9, 5164
    add     s9,sp,s9
    sw      s9,0(s9)
    li      a3, 13436
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_837
                    #      label while.exit_837: 
.while.exit_837:
                    #      ans_18 = i32 pres_834 
                    #       Call void putint_0(ans_18) 
                    #saved register dumping to mem
    li      s1, 6760
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 6767
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 6756
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 6752
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 6751
    add     s5,sp,s5
    sb      s6,0(s5)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 13436
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a2
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_980_833:i32 
                    #      temp_980_833 = Add i32 cur_18, 1_0 
    li      s1, 1
    add     s2,a0,s1
                    #      cur_18 = i32 temp_980_833 
                    #      jump label: while.head_832 
    li      s2, 3428
    add     s2,sp,s2
    sw      s2,0(s2)
    j       .while.head_832
                    #      label while.exit_832: 
.while.exit_832:
                    #      cur_18 = i32 0_0 
                    #      jump label: while.head_1242 
    j       .while.head_1242
                    #      label while.head_1242: 
.while.head_1242:
                    #      new_var temp_981_1241:i1 
                    #      temp_981_1241 = icmp i32 Slt cur_18, 16_0 
    li      s1, 16
    slt     s3,a0,s1
                    #      br i1 temp_981_1241, label while.body_1242, label while.exit_1242 
    bnez    s3, .while.body_1242
    j       .while.exit_1242
                    #      label while.body_1242: 
.while.body_1242:
                    #      pl_1244 = i32 2_0 
    li      s1, 2
                    #      pr_1244 = i32 cur_18 
    mv      s4, a0
                    #      pres_1244 = i32 1_0 
    li      s5, 1
                    #      jump label: while.head_1247 
    j       .while.head_1247
                    #      label while.head_1247: 
.while.head_1247:
                    #      new_var temp_982_1246:i1 
                    #      temp_982_1246 = icmp i32 Sgt pr_1244, 0_0 
    li      s6, 0
    slt     s7,s6,s4
                    #      br i1 temp_982_1246, label while.body_1247, label while.exit_1247 
    bnez    s7, .while.body_1247
    j       .while.exit_1247
                    #      label while.body_1247: 
.while.body_1247:
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
    li      s6, 0
                    #      x_18 = i32 pr_1244 
    mv      s8, s4
                    #      y_18 = i32 1_0 
    li      s9, 1
                    #      jump label: while.head_1254 
    j       .while.head_1254
                    #      label while.head_1254: 
.while.head_1254:
                    #      new_var temp_983_1253:i1 
                    #      temp_983_1253 = icmp i32 Slt i_18, 16_0 
    li      s10, 16
    slt     s11,s6,s10
                    #      br i1 temp_983_1253, label while.body_1254, label while.exit_1254 
    bnez    s11, .while.body_1254
    j       .while.exit_1254
                    #      label while.body_1254: 
.while.body_1254:
                    #      new_var temp_984_1256:i32 
                    #      temp_984_1256 = Mod i32 y_18, 2_0 
    li      s10, 2
    li      a0, 13436
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s9,s10
                    #      new_var temp_985_1256:i32 
                    #      temp_985_1256 = Mod i32 x_18, 2_0 
                    #found literal reg Some(s10) already exist with 2_0
    li      a0, 3404
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s8,s10
                    #      new_var temp_986_1256:i1 
                    #      temp_986_1256 = icmp i32 Ne temp_985_1256, 0_0 
    li      s10, 0
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    xor     a1,a0,s10
    snez    a1, a1
                    #      new_var temp_987_1256:i1 
                    #      temp_986_1256 = icmp i32 Ne temp_984_1256, 0_0 
    li      a0, 3400
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
                    #      new_var temp_988_1256:i1 
                    #      temp_988_1256 = And i1 temp_986_1256, temp_987_1256 
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    and     a2,a1,a0
                    #      br i1 temp_988_1256, label branch_true_1257, label branch_false_1257 
    bnez    a2, .branch_true_1257
    j       .branch_false_1257
                    #      label branch_true_1257: 
.branch_true_1257:
                    #      new_var temp_989_1258:Array:i32:[Some(16_0)] 
                    #      temp_989_1258 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 3398
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 3399
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_990_1258:ptr->i32 
                    #      new_var temp_991_1258:i32 
                    #      temp_990_1258 = getelementptr temp_989_1258:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 3392
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 3397
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_991_1258 = load temp_990_1258:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_992_1258:i32 
                    #      temp_992_1258 = Mul i32 1_0, temp_991_1258 
    li      a0, 3320
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 3392
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_993_1258:i32 
                    #      temp_993_1258 = Add i32 ans_18, temp_992_1258 
    li      a1, 3316
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_993_1258 
                    #      jump label: branch_false_1257 
    li      a2, 3312
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3397
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 3308
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 3397
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3399
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 3399
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 3398
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 3398
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1257
                    #      label branch_false_1257: 
.branch_false_1257:
                    #      label L146_0: 
.L146_0:
                    #      new_var temp_994_1255:i32 
                    #      temp_994_1255 = Div i32 x_18, 2_0 
    li      a0, 3398
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 3399
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s8,a0
                    #      x_18 = i32 temp_994_1255 
                    #      new_var temp_995_1255:i32 
                    #      temp_995_1255 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 3304
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s9,a0
                    #      y_18 = i32 temp_995_1255 
                    #      new_var temp_996_1255:i32 
                    #      temp_996_1255 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 3300
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s6,a0
                    #      i_18 = i32 temp_996_1255 
                    #      jump label: while.head_1254 
    li      a2, 3397
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 3296
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s10, 3404
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13436
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s11, 3410
    add     s11,sp,s11
    sb      s11,0(s11)
    li      a3, 13436
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1254
                    #      label while.exit_1254: 
.while.exit_1254:
                    #      new_var temp_997_31446:i1 
                    #      temp_997_31446 = icmp i32 Ne ans_18, 0_0 
    li      s10, 0
    li      a0, 13436
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,a2,s10
    snez    a0, a0
                    #      br i1 temp_997_31446, label branch_true_1264, label branch_false_1264 
    bnez    a0, .branch_true_1264
    j       .branch_false_1264
                    #      label branch_true_1264: 
.branch_true_1264:
                    #      ml_1266 = i32 pres_1244 
    mv      s10, s5
                    #      mr_1266 = i32 pl_1244 
    li      a0, 3295
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s1
                    #      mres_1266 = i32 0_0 
    li      a0, 3284
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
                    #      jump label: while.head_1269 
    j       .while.head_1269
                    #      label while.head_1269: 
.while.head_1269:
                    #      new_var temp_998_31559:i1 
                    #      temp_998_31559 = icmp i32 Ne mr_1266, 0_0 
    li      a0, 3280
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_998_31559, label while.body_1269, label while.exit_1269 
    bnez    a2, .while.body_1269
    j       .while.exit_1269
                    #      label while.body_1269: 
.while.body_1269:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 mr_1266 
                    #      y_18 = i32 1_0 
                    #      jump label: while.head_1276 
    j       .while.head_1276
                    #      label while.head_1276: 
.while.head_1276:
                    #      new_var temp_999_1275:i1 
                    #      temp_999_1275 = icmp i32 Slt i_18, 16_0 
    li      a0, 3284
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s6,a0
                    #      br i1 temp_999_1275, label while.body_1276, label while.exit_1276 
    bnez    a1, .while.body_1276
    j       .while.exit_1276
                    #      label while.body_1276: 
.while.body_1276:
                    #      new_var temp_1000_1278:i32 
                    #      temp_1000_1278 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 3278
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s9,a0
                    #      new_var temp_1001_1278:i32 
                    #      temp_1001_1278 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 3272
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_1002_1278:i1 
                    #      temp_1002_1278 = icmp i32 Ne temp_1001_1278, 0_0 
    li      a0, 0
    li      a2, 3279
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_1003_1278:i1 
                    #      temp_1002_1278 = icmp i32 Ne temp_1000_1278, 0_0 
    li      a1, 3268
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_1004_1278:i1 
                    #      temp_1004_1278 = And i1 temp_1002_1278, temp_1003_1278 
    li      a0, 3272
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_1004_1278, label branch_true_1279, label branch_false_1279 
    bnez    a0, .branch_true_1279
    j       .branch_false_1279
                    #      label branch_true_1279: 
.branch_true_1279:
                    #      new_var temp_1005_1280:Array:i32:[Some(16_0)] 
                    #      temp_1005_1280 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 3265
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 3266
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_1006_1280:ptr->i32 
                    #      new_var temp_1007_1280:i32 
                    #      temp_1006_1280 = getelementptr temp_1005_1280:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 3260
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 3267
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1007_1280 = load temp_1006_1280:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1008_1280:i32 
                    #      temp_1008_1280 = Mul i32 1_0, temp_1007_1280 
    li      a0, 3192
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 3260
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_1009_1280:i32 
                    #      temp_1009_1280 = Add i32 ans_18, temp_1008_1280 
    li      a1, 3188
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1009_1280 
                    #      jump label: branch_false_1279 
    li      a2, 3184
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3267
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 3180
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 3267
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3266
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 3266
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 3265
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 3265
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1279
                    #      label branch_false_1279: 
.branch_false_1279:
                    #      label L147_0: 
.L147_0:
                    #      new_var temp_1010_1277:i32 
                    #      temp_1010_1277 = Div i32 x_18, 2_0 
    li      a0, 3265
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 3266
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1010_1277 
                    #      new_var temp_1011_1277:i32 
                    #      temp_1011_1277 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 3176
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1011_1277 
                    #      new_var temp_1012_1277:i32 
                    #      temp_1012_1277 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 3172
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1012_1277 
                    #      jump label: while.head_1276 
    li      a2, 3267
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3279
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 3168
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 3279
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 3284
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 3284
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1276
                    #      label while.exit_1276: 
.while.exit_1276:
                    #      new_var temp_1013_31968:i1 
                    #      temp_1013_31968 = icmp i32 Ne ans_18, 0_0 
    li      a1, 3278
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 3279
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_1013_31968, label branch_true_1286, label branch_false_1286 
    bnez    a2, .branch_true_1286
    j       .branch_false_1286
                    #      label branch_true_1286: 
.branch_true_1286:
                    #      al_1288 = i32 mres_1266 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      c_1288 = i32 ml_1266 
    li      a0, 3160
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s10
                    #      new_var sum_1288:i32 
                    #      jump label: while.head_1291 
    j       .while.head_1291
                    #      label while.head_1291: 
.while.head_1291:
                    #      new_var temp_1014_32062:i1 
                    #      temp_1014_32062 = icmp i32 Ne c_1288, 0_0 
    li      a1, 3280
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a2, 3167
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_1014_32062, label while.body_1291, label while.exit_1291 
    bnez    a2, .while.body_1291
    j       .while.exit_1291
                    #      label while.body_1291: 
.while.body_1291:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_1288 
    li      a0, 3156
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_1288 
    li      a0, 3160
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_1298 
    j       .while.head_1298
                    #      label while.head_1298: 
.while.head_1298:
                    #      new_var temp_1015_1297:i1 
                    #      temp_1015_1297 = icmp i32 Slt i_18, 16_0 
    li      a0, 3156
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s6,a0
                    #      br i1 temp_1015_1297, label while.body_1298, label while.exit_1298 
    bnez    a1, .while.body_1298
    j       .while.exit_1298
                    #      label while.body_1298: 
.while.body_1298:
                    #      new_var temp_1016_1300:i32 
                    #      temp_1016_1300 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 3150
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_1017_32245:i1 
                    #      temp_1017_32245 = icmp i32 Ne temp_1016_1300, 0_0 
    li      a0, 0
    li      a2, 3151
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_1017_32245, label branch_true_1301, label branch_false_1301 
    bnez    a2, .branch_true_1301
    j       .branch_false_1301
                    #      label branch_true_1301: 
.branch_true_1301:
                    #      new_var temp_1018_1303:i32 
                    #      temp_1018_1303 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 3144
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s9,a0
                    #      new_var temp_1019_1303:i1 
                    #      temp_1019_1303 = icmp i32 Eq temp_1018_1303, 0_0 
    li      a0, 0
    li      a2, 3143
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_1019_1303, label branch_true_1304, label branch_false_1304 
    bnez    a2, .branch_true_1304
    j       .branch_false_1304
                    #      label branch_true_1304: 
.branch_true_1304:
                    #      new_var temp_1020_1305:Array:i32:[Some(16_0)] 
                    #      temp_1020_1305 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 3136
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_1021_1305:ptr->i32 
                    #      new_var temp_1022_1305:i32 
                    #      temp_1021_1305 = getelementptr temp_1020_1305:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 3128
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 3135
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1022_1305 = load temp_1021_1305:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1023_1305:i32 
                    #      temp_1023_1305 = Mul i32 1_0, temp_1022_1305 
    li      a0, 3056
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 3128
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_1024_1305:i32 
                    #      temp_1024_1305 = Add i32 ans_18, temp_1023_1305 
    li      a1, 3052
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1024_1305 
                    #      jump label: branch_false_1304 
    li      a2, 3048
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3135
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 3044
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 3135
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3136
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 3136
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_1304
                    #      label branch_false_1304: 
.branch_false_1304:
                    #      label branch_false_1301: 
.branch_false_1301:
                    #      new_var temp_1028_1307:i32 
                    #      temp_1028_1307 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 3144
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s9,a0
                    #      new_var temp_1029_32390:i1 
                    #      temp_1029_32390 = icmp i32 Ne temp_1028_1307, 0_0 
    li      a0, 0
    li      a2, 3143
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_1029_32390, label branch_true_1308, label branch_false_1308 
    bnez    a2, .branch_true_1308
    j       .branch_false_1308
                    #      label branch_true_1308: 
.branch_true_1308:
                    #      new_var temp_1030_1309:Array:i32:[Some(16_0)] 
                    #      temp_1030_1309 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 3028
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_1031_1309:ptr->i32 
                    #      new_var temp_1032_1309:i32 
                    #      temp_1031_1309 = getelementptr temp_1030_1309:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 3020
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 3027
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1032_1309 = load temp_1031_1309:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1033_1309:i32 
                    #      temp_1033_1309 = Mul i32 1_0, temp_1032_1309 
    li      a0, 2952
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 3020
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_1034_1309:i32 
                    #      temp_1034_1309 = Add i32 ans_18, temp_1033_1309 
    li      a1, 2948
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1034_1309 
                    #      jump label: branch_false_1308 
    li      a2, 2944
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3027
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 2940
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 3027
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3028
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 3028
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_1308
                    #      label branch_false_1308: 
.branch_false_1308:
                    #      label L148_0: 
.L148_0:
                    #      label L149_0: 
.L149_0:
                    #      new_var temp_1025_1299:i32 
                    #      temp_1025_1299 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 3028
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1025_1299 
                    #      new_var temp_1026_1299:i32 
                    #      temp_1026_1299 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 3040
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1026_1299 
                    #      new_var temp_1027_1299:i32 
                    #      temp_1027_1299 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 3036
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1027_1299 
                    #      jump label: while.head_1298 
    li      a2, 3027
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3151
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 3032
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 3151
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 3156
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 3156
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1298
                    #      label while.exit_1298: 
.while.exit_1298:
                    #      sum_1288 = i32 ans_18 
    li      a1, 3150
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_1288 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_1288 
    li      a0, 3160
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_1320 
    j       .while.head_1320
                    #      label while.head_1320: 
.while.head_1320:
                    #      new_var temp_1035_1319:i1 
                    #      temp_1035_1319 = icmp i32 Slt i_18, 16_0 
    li      a0, 3156
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 3152
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s6,a0
                    #      br i1 temp_1035_1319, label while.body_1320, label while.exit_1320 
    bnez    a1, .while.body_1320
    j       .while.exit_1320
                    #      label while.body_1320: 
.while.body_1320:
                    #      new_var temp_1036_1322:i32 
                    #      temp_1036_1322 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 2939
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s9,a0
                    #      new_var temp_1037_1322:i32 
                    #      temp_1037_1322 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 2932
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_1038_1322:i1 
                    #      temp_1038_1322 = icmp i32 Ne temp_1037_1322, 0_0 
    li      a0, 0
    li      a2, 3151
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_1039_1322:i1 
                    #      temp_1038_1322 = icmp i32 Ne temp_1036_1322, 0_0 
    li      a1, 2928
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_1040_1322:i1 
                    #      temp_1040_1322 = And i1 temp_1038_1322, temp_1039_1322 
    li      a0, 2932
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_1040_1322, label branch_true_1323, label branch_false_1323 
    bnez    a0, .branch_true_1323
    j       .branch_false_1323
                    #      label branch_true_1323: 
.branch_true_1323:
                    #      new_var temp_1041_1324:Array:i32:[Some(16_0)] 
                    #      temp_1041_1324 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 2925
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 2926
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_1042_1324:ptr->i32 
                    #      new_var temp_1043_1324:i32 
                    #      temp_1042_1324 = getelementptr temp_1041_1324:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 2920
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2927
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1043_1324 = load temp_1042_1324:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1044_1324:i32 
                    #      temp_1044_1324 = Mul i32 1_0, temp_1043_1324 
    li      a0, 2848
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 2920
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_1045_1324:i32 
                    #      temp_1045_1324 = Add i32 ans_18, temp_1044_1324 
    li      a1, 2844
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1045_1324 
                    #      jump label: branch_false_1323 
    li      a2, 2840
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2927
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 2836
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 2927
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2926
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 2926
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 2925
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 2925
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1323
                    #      label branch_false_1323: 
.branch_false_1323:
                    #      label L150_0: 
.L150_0:
                    #      new_var temp_1046_1321:i32 
                    #      temp_1046_1321 = Div i32 x_18, 2_0 
    li      a0, 2925
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 2926
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1046_1321 
                    #      new_var temp_1047_1321:i32 
                    #      temp_1047_1321 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 2832
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1047_1321 
                    #      new_var temp_1048_1321:i32 
                    #      temp_1048_1321 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 2828
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1048_1321 
                    #      jump label: while.head_1320 
    li      a2, 2927
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3151
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 2824
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 3151
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3152
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 3152
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 3156
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 3156
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1320
                    #      label while.exit_1320: 
.while.exit_1320:
                    #      c_1288 = i32 ans_18 
    li      a1, 2939
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: L151_0 
    j       .L151_0
                    #      label L151_0: 
.L151_0:
                    #      new_var temp_1049_1330:i1 
                    #      temp_1049_1330 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 3156
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 15
    li      a2, 3151
    add     a2,sp,a2
    sb      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_1049_1330, label branch_true_1331, label branch_false_1331 
    bnez    a2, .branch_true_1331
    j       .branch_false_1331
                    #      label branch_true_1331: 
.branch_true_1331:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_1340 
    j       .while.exit_1340
                    #      label branch_false_1331: 
.branch_false_1331:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
                    #      new_var temp_1050_1334:Array:i32:[Some(16_0)] 
                    #      temp_1050_1334 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_1051_1334:ptr->i32 
                    #      new_var temp_1052_1334:i32 
                    #      temp_1051_1334 = getelementptr temp_1050_1334:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 2816
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 2823
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_1052_1334 = load temp_1051_1334:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_1053_1334:i32 
                    #      temp_1053_1334 = Mul i32 c_1288, temp_1052_1334 
    li      a1, 2744
    add     a1,sp,a1
    sd      a1,0(a1)
    mul     a1,a2,a0
                    #      x_18 = i32 temp_1053_1334 
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_1340 
    j       .while.head_1340
                    #      label while.head_1340: 
.while.head_1340:
                    #      new_var temp_1054_1339:i1 
                    #      temp_1054_1339 = icmp i32 Slt i_18, 16_0 
    li      a0, 2740
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 2736
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s6,a0
                    #      br i1 temp_1054_1339, label while.body_1340, label while.exit_1340 
    bnez    a1, .while.body_1340
    li      a0, 3156
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a0, 2823
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 2735
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 2823
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 2816
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_1340
                    #      label while.body_1340: 
.while.body_1340:
                    #      new_var temp_1055_1342:i32 
                    #      temp_1055_1342 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 2735
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s9,a0
                    #      new_var temp_1056_1342:i32 
                    #      temp_1056_1342 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 2728
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_1057_1342:i1 
                    #      temp_1057_1342 = icmp i32 Ne temp_1056_1342, 0_0 
    li      a0, 0
    li      a2, 3156
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_1058_1342:i1 
                    #      temp_1057_1342 = icmp i32 Ne temp_1055_1342, 0_0 
    li      a1, 2724
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_1059_1342:i1 
                    #      temp_1059_1342 = And i1 temp_1057_1342, temp_1058_1342 
    li      a0, 2728
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_1059_1342, label branch_true_1343, label branch_false_1343 
    bnez    a0, .branch_true_1343
    j       .branch_false_1343
                    #      label branch_true_1343: 
.branch_true_1343:
                    #      new_var temp_1060_1344:Array:i32:[Some(16_0)] 
                    #      temp_1060_1344 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 2721
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 2722
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_1061_1344:ptr->i32 
                    #      new_var temp_1062_1344:i32 
                    #      temp_1061_1344 = getelementptr temp_1060_1344:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 2716
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2723
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1062_1344 = load temp_1061_1344:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1063_1344:i32 
                    #      temp_1063_1344 = Mul i32 1_0, temp_1062_1344 
    li      a0, 2648
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 2716
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_1064_1344:i32 
                    #      temp_1064_1344 = Add i32 ans_18, temp_1063_1344 
    li      a1, 2644
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1064_1344 
                    #      jump label: branch_false_1343 
    li      a2, 2640
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2723
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 2636
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 2723
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2722
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 2722
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 2816
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 2721
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 2721
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 2816
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1343
                    #      label branch_false_1343: 
.branch_false_1343:
                    #      label L152_0: 
.L152_0:
                    #      new_var temp_1065_1341:i32 
                    #      temp_1065_1341 = Div i32 x_18, 2_0 
    li      a0, 2721
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 2722
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1065_1341 
                    #      new_var temp_1066_1341:i32 
                    #      temp_1066_1341 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 2632
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1066_1341 
                    #      new_var temp_1067_1341:i32 
                    #      temp_1067_1341 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 2628
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1067_1341 
                    #      jump label: while.head_1340 
    li      a2, 2723
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3156
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 2624
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 3156
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2736
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 2736
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 2816
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 2740
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 2740
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 2816
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1340
                    #      label while.exit_1340: 
.while.exit_1340:
                    #      label L153_0: 
.L153_0:
                    #      c_1288 = i32 ans_18 
    mv      a1, a0
                    #      al_1288 = i32 sum_1288 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 3156
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: while.head_1291 
    li      a2, 2823
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 3152
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3167
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 3160
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 3167
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 3280
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 3280
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 3156
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 3156
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1291
                    #      label while.exit_1291: 
.while.exit_1291:
                    #      ans_18 = i32 al_1288 
    li      a0, 3156
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      mres_1266 = i32 ans_18 
    li      a1, 3160
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: branch_false_1286 
    li      a2, 3151
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3167
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 3280
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 3167
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1286
                    #      label branch_false_1286: 
.branch_false_1286:
                    #      label L154_0: 
.L154_0:
                    #      al_1353 = i32 ml_1266 
    mv      a1, s10
                    #      c_1353 = i32 ml_1266 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s10
                    #      new_var sum_1353:i32 
                    #      jump label: while.head_1356 
    j       .while.head_1356
                    #      label while.head_1356: 
.while.head_1356:
                    #      new_var temp_1068_33737:i1 
                    #      temp_1068_33737 = icmp i32 Ne c_1353, 0_0 
    li      a1, 2620
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a2, 3167
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_1068_33737, label while.body_1356, label while.exit_1356 
    bnez    a2, .while.body_1356
    j       .while.exit_1356
                    #      label while.body_1356: 
.while.body_1356:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_1353 
    li      a0, 2616
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_1353 
    li      a0, 2620
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_1363 
    j       .while.head_1363
                    #      label while.head_1363: 
.while.head_1363:
                    #      new_var temp_1069_1362:i1 
                    #      temp_1069_1362 = icmp i32 Slt i_18, 16_0 
    li      a0, 2616
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s6,a0
                    #      br i1 temp_1069_1362, label while.body_1363, label while.exit_1363 
    bnez    a1, .while.body_1363
    j       .while.exit_1363
                    #      label while.body_1363: 
.while.body_1363:
                    #      new_var temp_1070_1365:i32 
                    #      temp_1070_1365 = Mod i32 x_18, 2_0 
    li      a0, 2
    li      a1, 2610
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_1071_33920:i1 
                    #      temp_1071_33920 = icmp i32 Ne temp_1070_1365, 0_0 
    li      a0, 0
    li      a2, 2611
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_1071_33920, label branch_true_1366, label branch_false_1366 
    bnez    a2, .branch_true_1366
    j       .branch_false_1366
                    #      label branch_true_1366: 
.branch_true_1366:
                    #      new_var temp_1072_1368:i32 
                    #      temp_1072_1368 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 2604
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s9,a0
                    #      new_var temp_1073_1368:i1 
                    #      temp_1073_1368 = icmp i32 Eq temp_1072_1368, 0_0 
    li      a0, 0
    li      a2, 2603
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_1073_1368, label branch_true_1369, label branch_false_1369 
    bnez    a2, .branch_true_1369
    j       .branch_false_1369
                    #      label branch_true_1369: 
.branch_true_1369:
                    #      new_var temp_1074_1370:Array:i32:[Some(16_0)] 
                    #      temp_1074_1370 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 2596
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_1075_1370:ptr->i32 
                    #      new_var temp_1076_1370:i32 
                    #      temp_1075_1370 = getelementptr temp_1074_1370:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 2588
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2595
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1076_1370 = load temp_1075_1370:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1077_1370:i32 
                    #      temp_1077_1370 = Mul i32 1_0, temp_1076_1370 
    li      a0, 2520
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 2588
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_1078_1370:i32 
                    #      temp_1078_1370 = Add i32 ans_18, temp_1077_1370 
    li      a1, 2516
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1078_1370 
                    #      jump label: branch_false_1369 
    li      a2, 2512
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2595
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 2508
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 2595
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2596
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 2596
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_1369
                    #      label branch_false_1369: 
.branch_false_1369:
                    #      label branch_false_1366: 
.branch_false_1366:
                    #      new_var temp_1082_1372:i32 
                    #      temp_1082_1372 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 2604
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s9,a0
                    #      new_var temp_1083_34065:i1 
                    #      temp_1083_34065 = icmp i32 Ne temp_1082_1372, 0_0 
    li      a0, 0
    li      a2, 2603
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_1083_34065, label branch_true_1373, label branch_false_1373 
    bnez    a2, .branch_true_1373
    j       .branch_false_1373
                    #      label branch_true_1373: 
.branch_true_1373:
                    #      new_var temp_1084_1374:Array:i32:[Some(16_0)] 
                    #      temp_1084_1374 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 2492
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_1085_1374:ptr->i32 
                    #      new_var temp_1086_1374:i32 
                    #      temp_1085_1374 = getelementptr temp_1084_1374:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 2484
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2491
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1086_1374 = load temp_1085_1374:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1087_1374:i32 
                    #      temp_1087_1374 = Mul i32 1_0, temp_1086_1374 
    li      a0, 2416
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 2484
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_1088_1374:i32 
                    #      temp_1088_1374 = Add i32 ans_18, temp_1087_1374 
    li      a1, 2412
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1088_1374 
                    #      jump label: branch_false_1373 
    li      a2, 2408
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2491
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 2404
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 2491
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2492
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 2492
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_1373
                    #      label branch_false_1373: 
.branch_false_1373:
                    #      label L155_0: 
.L155_0:
                    #      label L156_0: 
.L156_0:
                    #      new_var temp_1079_1364:i32 
                    #      temp_1079_1364 = Div i32 x_18, 2_0 
    li      a0, 2
    li      a1, 2492
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1079_1364 
                    #      new_var temp_1080_1364:i32 
                    #      temp_1080_1364 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 2504
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1080_1364 
                    #      new_var temp_1081_1364:i32 
                    #      temp_1081_1364 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 2500
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1081_1364 
                    #      jump label: while.head_1363 
    li      a2, 2491
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 2611
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 2496
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 2611
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 2616
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 2616
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1363
                    #      label while.exit_1363: 
.while.exit_1363:
                    #      sum_1353 = i32 ans_18 
    li      a1, 2610
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_1353 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_1353 
    li      a0, 2620
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      jump label: while.head_1385 
    j       .while.head_1385
                    #      label while.head_1385: 
.while.head_1385:
                    #      new_var temp_1089_1384:i1 
                    #      temp_1089_1384 = icmp i32 Slt i_18, 16_0 
    li      a0, 2616
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 2612
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s6,a0
                    #      br i1 temp_1089_1384, label while.body_1385, label while.exit_1385 
    bnez    a1, .while.body_1385
    j       .while.exit_1385
                    #      label while.body_1385: 
.while.body_1385:
                    #      new_var temp_1090_1387:i32 
                    #      temp_1090_1387 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 2403
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s9,a0
                    #      new_var temp_1091_1387:i32 
                    #      temp_1091_1387 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 2396
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_1092_1387:i1 
                    #      temp_1092_1387 = icmp i32 Ne temp_1091_1387, 0_0 
    li      a0, 0
    li      a2, 2611
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_1093_1387:i1 
                    #      temp_1092_1387 = icmp i32 Ne temp_1090_1387, 0_0 
    li      a1, 2392
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_1094_1387:i1 
                    #      temp_1094_1387 = And i1 temp_1092_1387, temp_1093_1387 
    li      a0, 2396
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_1094_1387, label branch_true_1388, label branch_false_1388 
    bnez    a0, .branch_true_1388
    j       .branch_false_1388
                    #      label branch_true_1388: 
.branch_true_1388:
                    #      new_var temp_1095_1389:Array:i32:[Some(16_0)] 
                    #      temp_1095_1389 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 2389
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 2390
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_1096_1389:ptr->i32 
                    #      new_var temp_1097_1389:i32 
                    #      temp_1096_1389 = getelementptr temp_1095_1389:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 2384
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2391
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1097_1389 = load temp_1096_1389:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1098_1389:i32 
                    #      temp_1098_1389 = Mul i32 1_0, temp_1097_1389 
    li      a0, 2312
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 2384
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_1099_1389:i32 
                    #      temp_1099_1389 = Add i32 ans_18, temp_1098_1389 
    li      a1, 2308
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1099_1389 
                    #      jump label: branch_false_1388 
    li      a2, 2304
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2391
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 2300
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 2391
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2390
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 2390
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 2389
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 2389
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1388
                    #      label branch_false_1388: 
.branch_false_1388:
                    #      label L157_0: 
.L157_0:
                    #      new_var temp_1100_1386:i32 
                    #      temp_1100_1386 = Div i32 x_18, 2_0 
    li      a0, 2389
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 2390
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1100_1386 
                    #      new_var temp_1101_1386:i32 
                    #      temp_1101_1386 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 2296
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1101_1386 
                    #      new_var temp_1102_1386:i32 
                    #      temp_1102_1386 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 2292
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1102_1386 
                    #      jump label: while.head_1385 
    li      a2, 2391
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 2611
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 2288
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 2611
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2612
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 2612
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 2616
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 2616
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1385
                    #      label while.exit_1385: 
.while.exit_1385:
                    #      c_1353 = i32 ans_18 
    li      a1, 2403
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: L158_0 
    j       .L158_0
                    #      label L158_0: 
.L158_0:
                    #      new_var temp_1103_1395:i1 
                    #      temp_1103_1395 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2616
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 15
    li      a2, 2611
    add     a2,sp,a2
    sb      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_1103_1395, label branch_true_1396, label branch_false_1396 
    bnez    a2, .branch_true_1396
    j       .branch_false_1396
                    #      label branch_true_1396: 
.branch_true_1396:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_1405 
    j       .while.exit_1405
                    #      label branch_false_1396: 
.branch_false_1396:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
                    #      new_var temp_1104_1399:Array:i32:[Some(16_0)] 
                    #      temp_1104_1399 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_1105_1399:ptr->i32 
                    #      new_var temp_1106_1399:i32 
                    #      temp_1105_1399 = getelementptr temp_1104_1399:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    li      a0, 2280
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 2287
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_1106_1399 = load temp_1105_1399:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_1107_1399:i32 
                    #      temp_1107_1399 = Mul i32 c_1353, temp_1106_1399 
    li      a1, 2208
    add     a1,sp,a1
    sd      a1,0(a1)
    mul     a1,a2,a0
                    #      x_18 = i32 temp_1107_1399 
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_1405 
    j       .while.head_1405
                    #      label while.head_1405: 
.while.head_1405:
                    #      new_var temp_1108_1404:i1 
                    #      temp_1108_1404 = icmp i32 Slt i_18, 16_0 
    li      a0, 2204
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 16
    li      a1, 2200
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s6,a0
                    #      br i1 temp_1108_1404, label while.body_1405, label while.exit_1405 
    bnez    a1, .while.body_1405
    li      a0, 2616
    add     a0,sp,a0
    sw      a2,0(a0)
    li      a0, 2287
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 2199
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a0, 2287
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 2280
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_1405
                    #      label while.body_1405: 
.while.body_1405:
                    #      new_var temp_1109_1407:i32 
                    #      temp_1109_1407 = Mod i32 y_18, 2_0 
    li      a0, 2
    li      a1, 2199
    add     a1,sp,a1
    sb      a1,0(a1)
    rem     a1,s9,a0
                    #      new_var temp_1110_1407:i32 
                    #      temp_1110_1407 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 2192
    add     a1,sp,a1
    sw      a1,0(a1)
    rem     a1,s8,a0
                    #      new_var temp_1111_1407:i1 
                    #      temp_1111_1407 = icmp i32 Ne temp_1110_1407, 0_0 
    li      a0, 0
    li      a2, 2616
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_1112_1407:i1 
                    #      temp_1111_1407 = icmp i32 Ne temp_1109_1407, 0_0 
    li      a1, 2188
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
                    #      new_var temp_1113_1407:i1 
                    #      temp_1113_1407 = And i1 temp_1111_1407, temp_1112_1407 
    li      a0, 2192
    add     a0,sp,a0
    sw      a0,0(a0)
    and     a0,a2,a1
                    #      br i1 temp_1113_1407, label branch_true_1408, label branch_false_1408 
    bnez    a0, .branch_true_1408
    j       .branch_false_1408
                    #      label branch_true_1408: 
.branch_true_1408:
                    #      new_var temp_1114_1409:Array:i32:[Some(16_0)] 
                    #      temp_1114_1409 = load *SHIFT_TABLE_0:ptr->i32 
    li      a0, 2185
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 2186
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_1115_1409:ptr->i32 
                    #      new_var temp_1116_1409:i32 
                    #      temp_1115_1409 = getelementptr temp_1114_1409:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    li      a1, 2180
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2187
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1116_1409 = load temp_1115_1409:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1117_1409:i32 
                    #      temp_1117_1409 = Mul i32 1_0, temp_1116_1409 
    li      a0, 2112
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a2, 2180
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
                    #      new_var temp_1118_1409:i32 
                    #      temp_1118_1409 = Add i32 ans_18, temp_1117_1409 
    li      a1, 2108
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1118_1409 
                    #      jump label: branch_false_1408 
    li      a2, 2104
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2187
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a1, 2100
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 2187
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2186
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 2186
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 2280
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 2185
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 2185
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 2280
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1408
                    #      label branch_false_1408: 
.branch_false_1408:
                    #      label L159_0: 
.L159_0:
                    #      new_var temp_1119_1406:i32 
                    #      temp_1119_1406 = Div i32 x_18, 2_0 
    li      a0, 2185
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2
    li      a1, 2186
    add     a1,sp,a1
    sb      a1,0(a1)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1119_1406 
                    #      new_var temp_1120_1406:i32 
                    #      temp_1120_1406 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    li      a1, 2096
    add     a1,sp,a1
    sw      a1,0(a1)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1120_1406 
                    #      new_var temp_1121_1406:i32 
                    #      temp_1121_1406 = Add i32 i_18, 1_0 
    li      a0, 1
    li      a1, 2092
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1121_1406 
                    #      jump label: while.head_1405 
    li      a2, 2187
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 2616
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a1, 2088
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 2616
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2200
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 2200
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 2280
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 2204
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 2204
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 2280
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1405
                    #      label while.exit_1405: 
.while.exit_1405:
                    #      label L160_0: 
.L160_0:
                    #      c_1353 = i32 ans_18 
    mv      a1, a0
                    #      al_1353 = i32 sum_1353 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 2616
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: while.head_1356 
    li      a2, 2287
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 2612
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3167
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 3167
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a1, 2620
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 2616
    add     a1,sp,a1
    lw      a0,0(a1)
    j       .while.head_1356
                    #      label while.exit_1356: 
.while.exit_1356:
                    #      ans_18 = i32 al_1353 
    li      a0, 2616
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      ml_1266 = i32 ans_18 
                    #      x_18 = i32 mr_1266 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 1_0 
                    #      jump label: L161_0 
    j       .L161_0
                    #      label L161_0: 
.L161_0:
                    #      new_var temp_1122_1420:i1 
                    #      temp_1122_1420 = icmp i32 Sge y_18, 15_0 
    li      a0, 3284
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    li      a1, 2620
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s9,a0
    xori    a1,a1,1
                    #      br i1 temp_1122_1420, label branch_true_1421, label branch_false_1421 
    bnez    a1, .branch_true_1421
    j       .branch_false_1421
                    #      label branch_true_1421: 
.branch_true_1421:
                    #      new_var temp_1123_1423:i1 
                    #      temp_1123_1423 = icmp i32 Slt x_18, 0_0 
    li      a0, 0
    li      a1, 2087
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,s8,a0
                    #      br i1 temp_1123_1423, label branch_true_1424, label branch_false_1424 
    bnez    a1, .branch_true_1424
    j       .branch_false_1424
                    #      label branch_true_1424: 
.branch_true_1424:
                    #      ans_18 = i32 0xffff_0 
    li      a0, 0xffff
                    #      jump label: L162_0 
    j       .L162_0
                    #      label branch_false_1424: 
.branch_false_1424:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: L162_0 
    j       .L162_0
                    #      label L162_0: 
.L162_0:
                    #      label branch_false_1421: 
.branch_false_1421:
                    #      new_var temp_1124_1429:i1 
                    #      temp_1124_1429 = icmp i32 Sgt y_18, 0_0 
    li      a0, 0
    li      a1, 2087
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,s9
                    #      br i1 temp_1124_1429, label branch_true_1430, label branch_false_1430 
    bnez    a1, .branch_true_1430
    j       .branch_false_1430
                    #      label branch_true_1430: 
.branch_true_1430:
                    #      new_var temp_1125_1432:i1 
                    #      temp_1125_1432 = icmp i32 Sgt x_18, 0x7fff_0 
    li      a0, 0x7fff
    li      a1, 2085
    add     a1,sp,a1
    sb      a1,0(a1)
    slt     a1,a0,s8
                    #      br i1 temp_1125_1432, label branch_true_1433, label branch_false_1433 
    bnez    a1, .branch_true_1433
    j       .branch_false_1433
                    #      label branch_true_1433: 
.branch_true_1433:
                    #      new_var temp_1126_1434:Array:i32:[Some(16_0)] 
                    #      temp_1126_1434 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 2084
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_1127_1434:ptr->i32 
                    #      new_var temp_1128_1434:i32 
                    #      temp_1127_1434 = getelementptr temp_1126_1434:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    li      a1, 2080
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2611
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s9
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1128_1434 = load temp_1127_1434:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1129_1434:i32 
                    #      temp_1129_1434 = Div i32 x_18, temp_1128_1434 
    li      a0, 2008
    add     a0,sp,a0
    sd      a0,0(a0)
    div     a0,s8,a1
                    #      x_18 = i32 temp_1129_1434 
                    #      new_var temp_1130_1434:i32 
                    #      temp_1130_1434 = Add i32 y_18, 1_0 
    sw      a0,2000(sp)
    li      a0, 1
    li      a1, 2004
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s9,a0
                    #      new_var temp_1131_1434:i32 
                    #      temp_1131_1434 = Sub i32 15_0, temp_1130_1434 
    li      a0, 15
    li      a2, 2080
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      new_var temp_1132_1434:Array:i32:[Some(16_0)] 
                    #      temp_1132_1434 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sw      a1,1996(sp)
    lw      a1,0(a0)
                    #      new_var temp_1133_1434:ptr->i32 
                    #      new_var temp_1134_1434:i32 
                    #      temp_1133_1434 = getelementptr temp_1132_1434:Array:i32:[Some(16_0)] [Some(temp_1131_1434)] 
    li      a0, 0
    sw      a1,1988(sp)
    li      a1, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1134_1434 = load temp_1133_1434:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1135_1434:i32 
                    #      temp_1135_1434 = Sub i32 65536_0, temp_1134_1434 
    sd      a0,1920(sp)
    li      a0, 65536
    sw      a2,1992(sp)
    sub     a2,a0,a1
                    #      new_var temp_1136_1434:i32 
                    #      temp_1136_1434 = Add i32 x_18, temp_1135_1434 
    add     a0,s8,a2
                    #      ans_18 = i32 temp_1136_1434 
    sw      a1,1916(sp)
    mv      a1, a0
                    #      jump label: L163_0 
    j       .L163_0
                    #      label branch_false_1433: 
.branch_false_1433:
                    #      new_var temp_1137_1437:Array:i32:[Some(16_0)] 
                    #      temp_1137_1437 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    li      a1, 2084
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_1138_1437:ptr->i32 
                    #      new_var temp_1139_1437:i32 
                    #      temp_1138_1437 = getelementptr temp_1137_1437:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    sw      a1,1904(sp)
    li      a1, 1
    li      a2, 2611
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s9
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1139_1437 = load temp_1138_1437:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1140_1437:i32 
                    #      temp_1140_1437 = Div i32 x_18, temp_1139_1437 
    sd      a0,1832(sp)
    div     a0,s8,a1
                    #      ans_18 = i32 temp_1140_1437 
    sw      a1,1828(sp)
    mv      a1, a0
                    #      jump label: L163_0 
    sw      a2,1904(sp)
    lw      a2,1912(sp)
    sw      a0,1824(sp)
    lw      a0,1908(sp)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    lw      a3,1988(sp)
    j       .L163_0
                    #      label L163_0: 
.L163_0:
                    #      label branch_false_1430: 
.branch_false_1430:
                    #      ans_18 = i32 x_18 
    mv      a0, s8
                    #      jump label: L164_0 
    j       .L164_0
                    #      label L164_0: 
.L164_0:
                    #      label L165_0: 
.L165_0:
                    #      label L166_0: 
.L166_0:
                    #      mr_1266 = i32 ans_18 
    li      a1, 2085
    add     a1,sp,a1
    sb      a1,0(a1)
    mv      a1, a0
                    #      jump label: while.head_1269 
    li      a2, 2611
    add     a2,sp,a2
    sb      a2,0(a2)
    mv      a2, a0
    li      a1, 3284
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 3280
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 3280
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1269
                    #      label while.exit_1269: 
.while.exit_1269:
                    #      ans_18 = i32 mres_1266 
    li      a0, 3284
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      pres_1244 = i32 ans_18 
                    #      jump label: branch_false_1264 
    li      a2, 3279
    add     a2,sp,a2
    sb      a2,0(a2)
    mv      a2, a0
    li      a1, 3280
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s10, 3288
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 3295
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 3295
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_1264
                    #      label branch_false_1264: 
.branch_false_1264:
                    #      label L167_0: 
.L167_0:
                    #      ml_1444 = i32 pl_1244 
    mv      s10, s1
                    #      mr_1444 = i32 pl_1244 
    li      a0, 3295
    add     a0,sp,a0
    sb      a0,0(a0)
    mv      a0, s1
                    #      mres_1444 = i32 0_0 
    sw      a0,1816(sp)
    li      a0, 0
                    #      jump label: while.head_1447 
    j       .while.head_1447
                    #      label while.head_1447: 
.while.head_1447:
                    #      new_var temp_1141_36029:i1 
                    #      temp_1141_36029 = icmp i32 Ne mr_1444, 0_0 
    sw      a0,1812(sp)
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 0
    li      a2, 13452
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_1141_36029, label while.body_1447, label while.exit_1447 
    bnez    a2, .while.body_1447
    j       .while.exit_1447
                    #      label while.body_1447: 
.while.body_1447:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 mr_1444 
                    #      y_18 = i32 1_0 
                    #      jump label: while.head_1454 
    j       .while.head_1454
                    #      label while.head_1454: 
.while.head_1454:
                    #      new_var temp_1142_1453:i1 
                    #      temp_1142_1453 = icmp i32 Slt i_18, 16_0 
    sw      a0,1816(sp)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s6,a0
                    #      br i1 temp_1142_1453, label while.body_1454, label while.exit_1454 
    bnez    a1, .while.body_1454
    j       .while.exit_1454
                    #      label while.body_1454: 
.while.body_1454:
                    #      new_var temp_1143_1456:i32 
                    #      temp_1143_1456 = Mod i32 y_18, 2_0 
    li      a0, 2
    sb      a1,1810(sp)
    rem     a1,s9,a0
                    #      new_var temp_1144_1456:i32 
                    #      temp_1144_1456 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    sw      a1,1804(sp)
    rem     a1,s8,a0
                    #      new_var temp_1145_1456:i1 
                    #      temp_1145_1456 = icmp i32 Ne temp_1144_1456, 0_0 
    li      a0, 0
    sb      a2,1811(sp)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_1146_1456:i1 
                    #      temp_1145_1456 = icmp i32 Ne temp_1143_1456, 0_0 
    sw      a1,1800(sp)
    li      a1, 0
                    #      new_var temp_1147_1456:i1 
                    #      temp_1147_1456 = And i1 temp_1145_1456, temp_1146_1456 
    sw      a0,1804(sp)
    and     a0,a2,a1
                    #      br i1 temp_1147_1456, label branch_true_1457, label branch_false_1457 
    bnez    a0, .branch_true_1457
    j       .branch_false_1457
                    #      label branch_true_1457: 
.branch_true_1457:
                    #      new_var temp_1148_1458:Array:i32:[Some(16_0)] 
                    #      temp_1148_1458 = load *SHIFT_TABLE_0:ptr->i32 
    sb      a0,1797(sp)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sb      a1,1798(sp)
    lw      a1,0(a0)
                    #      new_var temp_1149_1458:ptr->i32 
                    #      new_var temp_1150_1458:i32 
                    #      temp_1149_1458 = getelementptr temp_1148_1458:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    sw      a1,1792(sp)
    li      a1, 1
    sb      a2,1799(sp)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1150_1458 = load temp_1149_1458:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1151_1458:i32 
                    #      temp_1151_1458 = Mul i32 1_0, temp_1150_1458 
    sd      a0,1720(sp)
    li      a0, 1
    sw      a2,1792(sp)
    mul     a2,a0,a1
                    #      new_var temp_1152_1458:i32 
                    #      temp_1152_1458 = Add i32 ans_18, temp_1151_1458 
    sw      a1,1716(sp)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1152_1458 
                    #      jump label: branch_false_1457 
    sw      a2,1712(sp)
    lb      a2,1799(sp)
    sw      a1,1708(sp)
    lb      a1,1798(sp)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lb      a0,1797(sp)
    j       .branch_false_1457
                    #      label branch_false_1457: 
.branch_false_1457:
                    #      label L168_0: 
.L168_0:
                    #      new_var temp_1153_1455:i32 
                    #      temp_1153_1455 = Div i32 x_18, 2_0 
    sb      a0,1797(sp)
    li      a0, 2
    sb      a1,1798(sp)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1153_1455 
                    #      new_var temp_1154_1455:i32 
                    #      temp_1154_1455 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    sw      a1,1704(sp)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1154_1455 
                    #      new_var temp_1155_1455:i32 
                    #      temp_1155_1455 = Add i32 i_18, 1_0 
    li      a0, 1
    sw      a1,1700(sp)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1155_1455 
                    #      jump label: while.head_1454 
    sb      a2,1799(sp)
    lb      a2,1811(sp)
    sw      a1,1696(sp)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,1816(sp)
    j       .while.head_1454
                    #      label while.exit_1454: 
.while.exit_1454:
                    #      new_var temp_1156_36438:i1 
                    #      temp_1156_36438 = icmp i32 Ne ans_18, 0_0 
    sb      a1,1810(sp)
    li      a1, 0
    sb      a2,1811(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_1156_36438, label branch_true_1464, label branch_false_1464 
    bnez    a2, .branch_true_1464
    j       .branch_false_1464
                    #      label branch_true_1464: 
.branch_true_1464:
                    #      al_1466 = i32 mres_1444 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #      c_1466 = i32 ml_1444 
    sw      a0,1688(sp)
    mv      a0, s10
                    #      new_var sum_1466:i32 
                    #      jump label: while.head_1469 
    j       .while.head_1469
                    #      label while.head_1469: 
.while.head_1469:
                    #      new_var temp_1157_36532:i1 
                    #      temp_1157_36532 = icmp i32 Ne c_1466, 0_0 
    sw      a1,1812(sp)
    li      a1, 0
    sb      a2,1695(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_1157_36532, label while.body_1469, label while.exit_1469 
    bnez    a2, .while.body_1469
    j       .while.exit_1469
                    #      label while.body_1469: 
.while.body_1469:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_1466 
    sw      a0,1684(sp)
                    #      y_18 = i32 c_1466 
    sw      a0,1688(sp)
                    #      jump label: while.head_1476 
    j       .while.head_1476
                    #      label while.head_1476: 
.while.head_1476:
                    #      new_var temp_1158_1475:i1 
                    #      temp_1158_1475 = icmp i32 Slt i_18, 16_0 
    sw      a0,1684(sp)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s6,a0
                    #      br i1 temp_1158_1475, label while.body_1476, label while.exit_1476 
    bnez    a1, .while.body_1476
    j       .while.exit_1476
                    #      label while.body_1476: 
.while.body_1476:
                    #      new_var temp_1159_1478:i32 
                    #      temp_1159_1478 = Mod i32 x_18, 2_0 
    li      a0, 2
    sb      a1,1678(sp)
    rem     a1,s8,a0
                    #      new_var temp_1160_36715:i1 
                    #      temp_1160_36715 = icmp i32 Ne temp_1159_1478, 0_0 
    li      a0, 0
    sb      a2,1679(sp)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_1160_36715, label branch_true_1479, label branch_false_1479 
    bnez    a2, .branch_true_1479
    j       .branch_false_1479
                    #      label branch_true_1479: 
.branch_true_1479:
                    #      new_var temp_1161_1481:i32 
                    #      temp_1161_1481 = Mod i32 y_18, 2_0 
    li      a0, 2
    sw      a1,1672(sp)
    rem     a1,s9,a0
                    #      new_var temp_1162_1481:i1 
                    #      temp_1162_1481 = icmp i32 Eq temp_1161_1481, 0_0 
    li      a0, 0
    sb      a2,1671(sp)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_1162_1481, label branch_true_1482, label branch_false_1482 
    bnez    a2, .branch_true_1482
    j       .branch_false_1482
                    #      label branch_true_1482: 
.branch_true_1482:
                    #      new_var temp_1163_1483:Array:i32:[Some(16_0)] 
                    #      temp_1163_1483 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sw      a1,1664(sp)
    lw      a1,0(a0)
                    #      new_var temp_1164_1483:ptr->i32 
                    #      new_var temp_1165_1483:i32 
                    #      temp_1164_1483 = getelementptr temp_1163_1483:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    sw      a1,1656(sp)
    li      a1, 1
    sb      a2,1663(sp)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1165_1483 = load temp_1164_1483:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1166_1483:i32 
                    #      temp_1166_1483 = Mul i32 1_0, temp_1165_1483 
    sd      a0,1584(sp)
    li      a0, 1
    sw      a2,1656(sp)
    mul     a2,a0,a1
                    #      new_var temp_1167_1483:i32 
                    #      temp_1167_1483 = Add i32 ans_18, temp_1166_1483 
    sw      a1,1580(sp)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1167_1483 
                    #      jump label: branch_false_1482 
    sw      a2,1576(sp)
    lb      a2,1663(sp)
    sw      a1,1572(sp)
    lw      a1,1664(sp)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_1482
                    #      label branch_false_1482: 
.branch_false_1482:
                    #      label branch_false_1479: 
.branch_false_1479:
                    #      new_var temp_1171_1485:i32 
                    #      temp_1171_1485 = Mod i32 y_18, 2_0 
    li      a0, 2
    sw      a1,1672(sp)
    rem     a1,s9,a0
                    #      new_var temp_1172_36860:i1 
                    #      temp_1172_36860 = icmp i32 Ne temp_1171_1485, 0_0 
    li      a0, 0
    sb      a2,1671(sp)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_1172_36860, label branch_true_1486, label branch_false_1486 
    bnez    a2, .branch_true_1486
    j       .branch_false_1486
                    #      label branch_true_1486: 
.branch_true_1486:
                    #      new_var temp_1173_1487:Array:i32:[Some(16_0)] 
                    #      temp_1173_1487 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sw      a1,1556(sp)
    lw      a1,0(a0)
                    #      new_var temp_1174_1487:ptr->i32 
                    #      new_var temp_1175_1487:i32 
                    #      temp_1174_1487 = getelementptr temp_1173_1487:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    sw      a1,1548(sp)
    li      a1, 1
    sb      a2,1555(sp)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1175_1487 = load temp_1174_1487:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1176_1487:i32 
                    #      temp_1176_1487 = Mul i32 1_0, temp_1175_1487 
    sd      a0,1480(sp)
    li      a0, 1
    sw      a2,1548(sp)
    mul     a2,a0,a1
                    #      new_var temp_1177_1487:i32 
                    #      temp_1177_1487 = Add i32 ans_18, temp_1176_1487 
    sw      a1,1476(sp)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1177_1487 
                    #      jump label: branch_false_1486 
    sw      a2,1472(sp)
    lb      a2,1555(sp)
    sw      a1,1468(sp)
    lw      a1,1556(sp)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_1486
                    #      label branch_false_1486: 
.branch_false_1486:
                    #      label L169_0: 
.L169_0:
                    #      label L170_0: 
.L170_0:
                    #      new_var temp_1168_1477:i32 
                    #      temp_1168_1477 = Div i32 x_18, 2_0 
    li      a0, 2
    sw      a1,1556(sp)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1168_1477 
                    #      new_var temp_1169_1477:i32 
                    #      temp_1169_1477 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    sw      a1,1568(sp)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1169_1477 
                    #      new_var temp_1170_1477:i32 
                    #      temp_1170_1477 = Add i32 i_18, 1_0 
    li      a0, 1
    sw      a1,1564(sp)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1170_1477 
                    #      jump label: while.head_1476 
    sb      a2,1555(sp)
    lb      a2,1679(sp)
    sw      a1,1560(sp)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,1684(sp)
    j       .while.head_1476
                    #      label while.exit_1476: 
.while.exit_1476:
                    #      sum_1466 = i32 ans_18 
    sb      a1,1678(sp)
    mv      a1, a0
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_1466 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_1466 
    sw      a0,1688(sp)
                    #      jump label: while.head_1498 
    j       .while.head_1498
                    #      label while.head_1498: 
.while.head_1498:
                    #      new_var temp_1178_1497:i1 
                    #      temp_1178_1497 = icmp i32 Slt i_18, 16_0 
    sw      a0,1684(sp)
    li      a0, 16
    sw      a1,1680(sp)
    slt     a1,s6,a0
                    #      br i1 temp_1178_1497, label while.body_1498, label while.exit_1498 
    bnez    a1, .while.body_1498
    j       .while.exit_1498
                    #      label while.body_1498: 
.while.body_1498:
                    #      new_var temp_1179_1500:i32 
                    #      temp_1179_1500 = Mod i32 y_18, 2_0 
    li      a0, 2
    sb      a1,1467(sp)
    rem     a1,s9,a0
                    #      new_var temp_1180_1500:i32 
                    #      temp_1180_1500 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    sw      a1,1460(sp)
    rem     a1,s8,a0
                    #      new_var temp_1181_1500:i1 
                    #      temp_1181_1500 = icmp i32 Ne temp_1180_1500, 0_0 
    li      a0, 0
    sb      a2,1679(sp)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_1182_1500:i1 
                    #      temp_1181_1500 = icmp i32 Ne temp_1179_1500, 0_0 
    sw      a1,1456(sp)
    li      a1, 0
                    #      new_var temp_1183_1500:i1 
                    #      temp_1183_1500 = And i1 temp_1181_1500, temp_1182_1500 
    sw      a0,1460(sp)
    and     a0,a2,a1
                    #      br i1 temp_1183_1500, label branch_true_1501, label branch_false_1501 
    bnez    a0, .branch_true_1501
    j       .branch_false_1501
                    #      label branch_true_1501: 
.branch_true_1501:
                    #      new_var temp_1184_1502:Array:i32:[Some(16_0)] 
                    #      temp_1184_1502 = load *SHIFT_TABLE_0:ptr->i32 
    sb      a0,1453(sp)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sb      a1,1454(sp)
    lw      a1,0(a0)
                    #      new_var temp_1185_1502:ptr->i32 
                    #      new_var temp_1186_1502:i32 
                    #      temp_1185_1502 = getelementptr temp_1184_1502:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    sw      a1,1448(sp)
    li      a1, 1
    sb      a2,1455(sp)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1186_1502 = load temp_1185_1502:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1187_1502:i32 
                    #      temp_1187_1502 = Mul i32 1_0, temp_1186_1502 
    sd      a0,1376(sp)
    li      a0, 1
    sw      a2,1448(sp)
    mul     a2,a0,a1
                    #      new_var temp_1188_1502:i32 
                    #      temp_1188_1502 = Add i32 ans_18, temp_1187_1502 
    sw      a1,1372(sp)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1188_1502 
                    #      jump label: branch_false_1501 
    sw      a2,1368(sp)
    lb      a2,1455(sp)
    sw      a1,1364(sp)
    lb      a1,1454(sp)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lb      a0,1453(sp)
    j       .branch_false_1501
                    #      label branch_false_1501: 
.branch_false_1501:
                    #      label L171_0: 
.L171_0:
                    #      new_var temp_1189_1499:i32 
                    #      temp_1189_1499 = Div i32 x_18, 2_0 
    sb      a0,1453(sp)
    li      a0, 2
    sb      a1,1454(sp)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1189_1499 
                    #      new_var temp_1190_1499:i32 
                    #      temp_1190_1499 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    sw      a1,1360(sp)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1190_1499 
                    #      new_var temp_1191_1499:i32 
                    #      temp_1191_1499 = Add i32 i_18, 1_0 
    li      a0, 1
    sw      a1,1356(sp)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1191_1499 
                    #      jump label: while.head_1498 
    sb      a2,1455(sp)
    lb      a2,1679(sp)
    sw      a1,1352(sp)
    lw      a1,1680(sp)
    lw      a0,1684(sp)
    j       .while.head_1498
                    #      label while.exit_1498: 
.while.exit_1498:
                    #      c_1466 = i32 ans_18 
    sb      a1,1467(sp)
    mv      a1, a0
                    #      jump label: L172_0 
    j       .L172_0
                    #      label L172_0: 
.L172_0:
                    #      new_var temp_1192_1508:i1 
                    #      temp_1192_1508 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    sw      a1,1684(sp)
    li      a1, 15
    sb      a2,1679(sp)
    slt     a2,a1,a0
                    #      br i1 temp_1192_1508, label branch_true_1509, label branch_false_1509 
    bnez    a2, .branch_true_1509
    j       .branch_false_1509
                    #      label branch_true_1509: 
.branch_true_1509:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_1518 
    j       .while.exit_1518
                    #      label branch_false_1509: 
.branch_false_1509:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
                    #      new_var temp_1193_1512:Array:i32:[Some(16_0)] 
                    #      temp_1193_1512 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_1194_1512:ptr->i32 
                    #      new_var temp_1195_1512:i32 
                    #      temp_1194_1512 = getelementptr temp_1193_1512:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    sw      a0,1344(sp)
    li      a0, 1
    sb      a2,1351(sp)
    li      a2, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_1195_1512 = load temp_1194_1512:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_1196_1512:i32 
                    #      temp_1196_1512 = Mul i32 c_1466, temp_1195_1512 
    sd      a1,1272(sp)
    mul     a1,a2,a0
                    #      x_18 = i32 temp_1196_1512 
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_1518 
    j       .while.head_1518
                    #      label while.head_1518: 
.while.head_1518:
                    #      new_var temp_1197_1517:i1 
                    #      temp_1197_1517 = icmp i32 Slt i_18, 16_0 
    sw      a0,1268(sp)
    li      a0, 16
    sw      a1,1264(sp)
    slt     a1,s6,a0
                    #      br i1 temp_1197_1517, label while.body_1518, label while.exit_1518 
    bnez    a1, .while.body_1518
    sw      a2,1684(sp)
    lb      a2,1351(sp)
    sb      a1,1263(sp)
    sw      a3,1344(sp)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_1518
                    #      label while.body_1518: 
.while.body_1518:
                    #      new_var temp_1198_1520:i32 
                    #      temp_1198_1520 = Mod i32 y_18, 2_0 
    li      a0, 2
    sb      a1,1263(sp)
    rem     a1,s9,a0
                    #      new_var temp_1199_1520:i32 
                    #      temp_1199_1520 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    sw      a1,1256(sp)
    rem     a1,s8,a0
                    #      new_var temp_1200_1520:i1 
                    #      temp_1200_1520 = icmp i32 Ne temp_1199_1520, 0_0 
    li      a0, 0
    sw      a2,1684(sp)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_1201_1520:i1 
                    #      temp_1200_1520 = icmp i32 Ne temp_1198_1520, 0_0 
    sw      a1,1252(sp)
    li      a1, 0
                    #      new_var temp_1202_1520:i1 
                    #      temp_1202_1520 = And i1 temp_1200_1520, temp_1201_1520 
    sw      a0,1256(sp)
    and     a0,a2,a1
                    #      br i1 temp_1202_1520, label branch_true_1521, label branch_false_1521 
    bnez    a0, .branch_true_1521
    j       .branch_false_1521
                    #      label branch_true_1521: 
.branch_true_1521:
                    #      new_var temp_1203_1522:Array:i32:[Some(16_0)] 
                    #      temp_1203_1522 = load *SHIFT_TABLE_0:ptr->i32 
    sb      a0,1249(sp)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sb      a1,1250(sp)
    lw      a1,0(a0)
                    #      new_var temp_1204_1522:ptr->i32 
                    #      new_var temp_1205_1522:i32 
                    #      temp_1204_1522 = getelementptr temp_1203_1522:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    sw      a1,1244(sp)
    li      a1, 1
    sb      a2,1251(sp)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1205_1522 = load temp_1204_1522:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1206_1522:i32 
                    #      temp_1206_1522 = Mul i32 1_0, temp_1205_1522 
    sd      a0,1176(sp)
    li      a0, 1
    sw      a2,1244(sp)
    mul     a2,a0,a1
                    #      new_var temp_1207_1522:i32 
                    #      temp_1207_1522 = Add i32 ans_18, temp_1206_1522 
    sw      a1,1172(sp)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1207_1522 
                    #      jump label: branch_false_1521 
    sw      a2,1168(sp)
    lb      a2,1251(sp)
    sw      a1,1164(sp)
    lb      a1,1250(sp)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lb      a0,1249(sp)
    j       .branch_false_1521
                    #      label branch_false_1521: 
.branch_false_1521:
                    #      label L173_0: 
.L173_0:
                    #      new_var temp_1208_1519:i32 
                    #      temp_1208_1519 = Div i32 x_18, 2_0 
    sb      a0,1249(sp)
    li      a0, 2
    sb      a1,1250(sp)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1208_1519 
                    #      new_var temp_1209_1519:i32 
                    #      temp_1209_1519 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    sw      a1,1160(sp)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1209_1519 
                    #      new_var temp_1210_1519:i32 
                    #      temp_1210_1519 = Add i32 i_18, 1_0 
    li      a0, 1
    sw      a1,1156(sp)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1210_1519 
                    #      jump label: while.head_1518 
    sb      a2,1251(sp)
    lw      a2,1684(sp)
    sw      a1,1152(sp)
    lw      a1,1264(sp)
    lw      a0,1268(sp)
    j       .while.head_1518
                    #      label while.exit_1518: 
.while.exit_1518:
                    #      label L174_0: 
.L174_0:
                    #      c_1466 = i32 ans_18 
    mv      a1, a0
                    #      al_1466 = i32 sum_1466 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,1684(sp)
    mv      a1, a0
                    #      jump label: while.head_1469 
    sb      a2,1351(sp)
    lb      a2,1695(sp)
    sw      a1,1688(sp)
    lw      a1,1812(sp)
    sw      a0,1680(sp)
    lw      a0,1684(sp)
    j       .while.head_1469
                    #      label while.exit_1469: 
.while.exit_1469:
                    #      ans_18 = i32 al_1466 
    sw      a0,1684(sp)
    mv      a0, a1
                    #      mres_1444 = i32 ans_18 
    sw      a1,1688(sp)
    mv      a1, a0
                    #      jump label: branch_false_1464 
    sb      a2,1679(sp)
    lb      a2,1695(sp)
    sw      a1,1812(sp)
    j       .branch_false_1464
                    #      label branch_false_1464: 
.branch_false_1464:
                    #      label L175_0: 
.L175_0:
                    #      al_1531 = i32 ml_1444 
    mv      a1, s10
                    #      c_1531 = i32 ml_1444 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, s10
                    #      new_var sum_1531:i32 
                    #      jump label: while.head_1534 
    j       .while.head_1534
                    #      label while.head_1534: 
.while.head_1534:
                    #      new_var temp_1211_38207:i1 
                    #      temp_1211_38207 = icmp i32 Ne c_1531, 0_0 
    sw      a1,1148(sp)
    li      a1, 0
    sb      a2,1695(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_1211_38207, label while.body_1534, label while.exit_1534 
    bnez    a2, .while.body_1534
    j       .while.exit_1534
                    #      label while.body_1534: 
.while.body_1534:
                    #      ans_18 = i32 0_0 
    li      a1, 0
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_1531 
    sw      a0,1144(sp)
                    #      y_18 = i32 c_1531 
    sw      a0,1148(sp)
                    #      jump label: while.head_1541 
    j       .while.head_1541
                    #      label while.head_1541: 
.while.head_1541:
                    #      new_var temp_1212_1540:i1 
                    #      temp_1212_1540 = icmp i32 Slt i_18, 16_0 
    sw      a0,1144(sp)
    li      a0, 16
    li      a1, 13452
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,s6,a0
                    #      br i1 temp_1212_1540, label while.body_1541, label while.exit_1541 
    bnez    a1, .while.body_1541
    j       .while.exit_1541
                    #      label while.body_1541: 
.while.body_1541:
                    #      new_var temp_1213_1543:i32 
                    #      temp_1213_1543 = Mod i32 x_18, 2_0 
    li      a0, 2
    sb      a1,1138(sp)
    rem     a1,s8,a0
                    #      new_var temp_1214_38390:i1 
                    #      temp_1214_38390 = icmp i32 Ne temp_1213_1543, 0_0 
    li      a0, 0
    sb      a2,1139(sp)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_1214_38390, label branch_true_1544, label branch_false_1544 
    bnez    a2, .branch_true_1544
    j       .branch_false_1544
                    #      label branch_true_1544: 
.branch_true_1544:
                    #      new_var temp_1215_1546:i32 
                    #      temp_1215_1546 = Mod i32 y_18, 2_0 
    li      a0, 2
    sw      a1,1132(sp)
    rem     a1,s9,a0
                    #      new_var temp_1216_1546:i1 
                    #      temp_1216_1546 = icmp i32 Eq temp_1215_1546, 0_0 
    li      a0, 0
    sb      a2,1131(sp)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_1216_1546, label branch_true_1547, label branch_false_1547 
    bnez    a2, .branch_true_1547
    j       .branch_false_1547
                    #      label branch_true_1547: 
.branch_true_1547:
                    #      new_var temp_1217_1548:Array:i32:[Some(16_0)] 
                    #      temp_1217_1548 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sw      a1,1124(sp)
    lw      a1,0(a0)
                    #      new_var temp_1218_1548:ptr->i32 
                    #      new_var temp_1219_1548:i32 
                    #      temp_1218_1548 = getelementptr temp_1217_1548:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    sw      a1,1116(sp)
    li      a1, 1
    sb      a2,1123(sp)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1219_1548 = load temp_1218_1548:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1220_1548:i32 
                    #      temp_1220_1548 = Mul i32 1_0, temp_1219_1548 
    sd      a0,1048(sp)
    li      a0, 1
    sw      a2,1116(sp)
    mul     a2,a0,a1
                    #      new_var temp_1221_1548:i32 
                    #      temp_1221_1548 = Add i32 ans_18, temp_1220_1548 
    sw      a1,1044(sp)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1221_1548 
                    #      jump label: branch_false_1547 
    sw      a2,1040(sp)
    lb      a2,1123(sp)
    sw      a1,1036(sp)
    lw      a1,1124(sp)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_1547
                    #      label branch_false_1547: 
.branch_false_1547:
                    #      label branch_false_1544: 
.branch_false_1544:
                    #      new_var temp_1225_1550:i32 
                    #      temp_1225_1550 = Mod i32 y_18, 2_0 
    li      a0, 2
    sw      a1,1132(sp)
    rem     a1,s9,a0
                    #      new_var temp_1226_38535:i1 
                    #      temp_1226_38535 = icmp i32 Ne temp_1225_1550, 0_0 
    li      a0, 0
    sb      a2,1131(sp)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_1226_38535, label branch_true_1551, label branch_false_1551 
    bnez    a2, .branch_true_1551
    j       .branch_false_1551
                    #      label branch_true_1551: 
.branch_true_1551:
                    #      new_var temp_1227_1552:Array:i32:[Some(16_0)] 
                    #      temp_1227_1552 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sw      a1,1020(sp)
    lw      a1,0(a0)
                    #      new_var temp_1228_1552:ptr->i32 
                    #      new_var temp_1229_1552:i32 
                    #      temp_1228_1552 = getelementptr temp_1227_1552:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    sw      a1,1012(sp)
    li      a1, 1
    sb      a2,1019(sp)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1229_1552 = load temp_1228_1552:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1230_1552:i32 
                    #      temp_1230_1552 = Mul i32 1_0, temp_1229_1552 
    sd      a0,944(sp)
    li      a0, 1
    sw      a2,1012(sp)
    mul     a2,a0,a1
                    #      new_var temp_1231_1552:i32 
                    #      temp_1231_1552 = Add i32 ans_18, temp_1230_1552 
    sw      a1,940(sp)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1231_1552 
                    #      jump label: branch_false_1551 
    sw      a2,936(sp)
    lb      a2,1019(sp)
    sw      a1,932(sp)
    lw      a1,1020(sp)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    j       .branch_false_1551
                    #      label branch_false_1551: 
.branch_false_1551:
                    #      label L176_0: 
.L176_0:
                    #      label L177_0: 
.L177_0:
                    #      new_var temp_1222_1542:i32 
                    #      temp_1222_1542 = Div i32 x_18, 2_0 
    li      a0, 2
    sw      a1,1020(sp)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1222_1542 
                    #      new_var temp_1223_1542:i32 
                    #      temp_1223_1542 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    sw      a1,1032(sp)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1223_1542 
                    #      new_var temp_1224_1542:i32 
                    #      temp_1224_1542 = Add i32 i_18, 1_0 
    li      a0, 1
    sw      a1,1028(sp)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1224_1542 
                    #      jump label: while.head_1541 
    sb      a2,1019(sp)
    lb      a2,1139(sp)
    sw      a1,1024(sp)
    li      a0, 13452
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,1144(sp)
    j       .while.head_1541
                    #      label while.exit_1541: 
.while.exit_1541:
                    #      sum_1531 = i32 ans_18 
    sb      a1,1138(sp)
    mv      a1, a0
                    #      ans_18 = i32 0_0 
                    #      i_18 = i32 0_0 
                    #      x_18 = i32 al_1531 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 c_1531 
    sw      a0,1148(sp)
                    #      jump label: while.head_1563 
    j       .while.head_1563
                    #      label while.head_1563: 
.while.head_1563:
                    #      new_var temp_1232_1562:i1 
                    #      temp_1232_1562 = icmp i32 Slt i_18, 16_0 
    sw      a0,1144(sp)
    li      a0, 16
    sw      a1,1140(sp)
    slt     a1,s6,a0
                    #      br i1 temp_1232_1562, label while.body_1563, label while.exit_1563 
    bnez    a1, .while.body_1563
    j       .while.exit_1563
                    #      label while.body_1563: 
.while.body_1563:
                    #      new_var temp_1233_1565:i32 
                    #      temp_1233_1565 = Mod i32 y_18, 2_0 
    li      a0, 2
    sb      a1,931(sp)
    rem     a1,s9,a0
                    #      new_var temp_1234_1565:i32 
                    #      temp_1234_1565 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    sw      a1,924(sp)
    rem     a1,s8,a0
                    #      new_var temp_1235_1565:i1 
                    #      temp_1235_1565 = icmp i32 Ne temp_1234_1565, 0_0 
    li      a0, 0
    sb      a2,1139(sp)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_1236_1565:i1 
                    #      temp_1235_1565 = icmp i32 Ne temp_1233_1565, 0_0 
    sw      a1,920(sp)
    li      a1, 0
                    #      new_var temp_1237_1565:i1 
                    #      temp_1237_1565 = And i1 temp_1235_1565, temp_1236_1565 
    sw      a0,924(sp)
    and     a0,a2,a1
                    #      br i1 temp_1237_1565, label branch_true_1566, label branch_false_1566 
    bnez    a0, .branch_true_1566
    j       .branch_false_1566
                    #      label branch_true_1566: 
.branch_true_1566:
                    #      new_var temp_1238_1567:Array:i32:[Some(16_0)] 
                    #      temp_1238_1567 = load *SHIFT_TABLE_0:ptr->i32 
    sb      a0,917(sp)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sb      a1,918(sp)
    lw      a1,0(a0)
                    #      new_var temp_1239_1567:ptr->i32 
                    #      new_var temp_1240_1567:i32 
                    #      temp_1239_1567 = getelementptr temp_1238_1567:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    sw      a1,912(sp)
    li      a1, 1
    sb      a2,919(sp)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1240_1567 = load temp_1239_1567:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1241_1567:i32 
                    #      temp_1241_1567 = Mul i32 1_0, temp_1240_1567 
    sd      a0,840(sp)
    li      a0, 1
    sw      a2,912(sp)
    mul     a2,a0,a1
                    #      new_var temp_1242_1567:i32 
                    #      temp_1242_1567 = Add i32 ans_18, temp_1241_1567 
    sw      a1,836(sp)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1242_1567 
                    #      jump label: branch_false_1566 
    sw      a2,832(sp)
    lb      a2,919(sp)
    sw      a1,828(sp)
    lb      a1,918(sp)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lb      a0,917(sp)
    j       .branch_false_1566
                    #      label branch_false_1566: 
.branch_false_1566:
                    #      label L178_0: 
.L178_0:
                    #      new_var temp_1243_1564:i32 
                    #      temp_1243_1564 = Div i32 x_18, 2_0 
    sb      a0,917(sp)
    li      a0, 2
    sb      a1,918(sp)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1243_1564 
                    #      new_var temp_1244_1564:i32 
                    #      temp_1244_1564 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    sw      a1,824(sp)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1244_1564 
                    #      new_var temp_1245_1564:i32 
                    #      temp_1245_1564 = Add i32 i_18, 1_0 
    li      a0, 1
    sw      a1,820(sp)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1245_1564 
                    #      jump label: while.head_1563 
    sb      a2,919(sp)
    lb      a2,1139(sp)
    sw      a1,816(sp)
    lw      a1,1140(sp)
    lw      a0,1144(sp)
    j       .while.head_1563
                    #      label while.exit_1563: 
.while.exit_1563:
                    #      c_1531 = i32 ans_18 
    sb      a1,931(sp)
    mv      a1, a0
                    #      jump label: L179_0 
    j       .L179_0
                    #      label L179_0: 
.L179_0:
                    #      new_var temp_1246_1573:i1 
                    #      temp_1246_1573 = icmp i32 Sgt 1_0, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    sw      a1,1144(sp)
    li      a1, 15
    sb      a2,1139(sp)
    slt     a2,a1,a0
                    #      br i1 temp_1246_1573, label branch_true_1574, label branch_false_1574 
    bnez    a2, .branch_true_1574
    j       .branch_false_1574
                    #      label branch_true_1574: 
.branch_true_1574:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: while.exit_1583 
    j       .while.exit_1583
                    #      label branch_false_1574: 
.branch_false_1574:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      i_18 = i32 0_0 
                    #      new_var temp_1247_1577:Array:i32:[Some(16_0)] 
                    #      temp_1247_1577 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a1, SHIFT_TABLE
                    #occupy reg a1 with *SHIFT_TABLE_0
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_1248_1577:ptr->i32 
                    #      new_var temp_1249_1577:i32 
                    #      temp_1248_1577 = getelementptr temp_1247_1577:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
    sw      a0,808(sp)
    li      a0, 1
    sb      a2,815(sp)
    li      a2, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_1249_1577 = load temp_1248_1577:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_1250_1577:i32 
                    #      temp_1250_1577 = Mul i32 c_1531, temp_1249_1577 
    sd      a1,736(sp)
    mul     a1,a2,a0
                    #      x_18 = i32 temp_1250_1577 
                    #      y_18 = i32 0xffff_0 
                    #      jump label: while.head_1583 
    j       .while.head_1583
                    #      label while.head_1583: 
.while.head_1583:
                    #      new_var temp_1251_1582:i1 
                    #      temp_1251_1582 = icmp i32 Slt i_18, 16_0 
    sw      a0,732(sp)
    li      a0, 16
    sw      a1,728(sp)
    slt     a1,s6,a0
                    #      br i1 temp_1251_1582, label while.body_1583, label while.exit_1583 
    bnez    a1, .while.body_1583
    sw      a2,1144(sp)
    lb      a2,815(sp)
    sb      a1,727(sp)
    sw      a3,808(sp)
    li      a3, 13452
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 13452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.exit_1583
                    #      label while.body_1583: 
.while.body_1583:
                    #      new_var temp_1252_1585:i32 
                    #      temp_1252_1585 = Mod i32 y_18, 2_0 
    li      a0, 2
    sb      a1,727(sp)
    rem     a1,s9,a0
                    #      new_var temp_1253_1585:i32 
                    #      temp_1253_1585 = Mod i32 x_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    sw      a1,720(sp)
    rem     a1,s8,a0
                    #      new_var temp_1254_1585:i1 
                    #      temp_1254_1585 = icmp i32 Ne temp_1253_1585, 0_0 
    li      a0, 0
    sw      a2,1144(sp)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_1255_1585:i1 
                    #      temp_1254_1585 = icmp i32 Ne temp_1252_1585, 0_0 
    sw      a1,716(sp)
    li      a1, 0
                    #      new_var temp_1256_1585:i1 
                    #      temp_1256_1585 = And i1 temp_1254_1585, temp_1255_1585 
    sw      a0,720(sp)
    and     a0,a2,a1
                    #      br i1 temp_1256_1585, label branch_true_1586, label branch_false_1586 
    bnez    a0, .branch_true_1586
    j       .branch_false_1586
                    #      label branch_true_1586: 
.branch_true_1586:
                    #      new_var temp_1257_1587:Array:i32:[Some(16_0)] 
                    #      temp_1257_1587 = load *SHIFT_TABLE_0:ptr->i32 
    sb      a0,713(sp)
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sb      a1,714(sp)
    lw      a1,0(a0)
                    #      new_var temp_1258_1587:ptr->i32 
                    #      new_var temp_1259_1587:i32 
                    #      temp_1258_1587 = getelementptr temp_1257_1587:Array:i32:[Some(16_0)] [Some(i_18)] 
    li      a0, 0
    sw      a1,708(sp)
    li      a1, 1
    sb      a2,715(sp)
    mul     a2,a1,s6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1259_1587 = load temp_1258_1587:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1260_1587:i32 
                    #      temp_1260_1587 = Mul i32 1_0, temp_1259_1587 
    sd      a0,640(sp)
    li      a0, 1
    sw      a2,708(sp)
    mul     a2,a0,a1
                    #      new_var temp_1261_1587:i32 
                    #      temp_1261_1587 = Add i32 ans_18, temp_1260_1587 
    sw      a1,636(sp)
    add     a1,a0,a2
                    #      ans_18 = i32 temp_1261_1587 
                    #      jump label: branch_false_1586 
    sw      a2,632(sp)
    lb      a2,715(sp)
    sw      a1,628(sp)
    lb      a1,714(sp)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    lb      a0,713(sp)
    j       .branch_false_1586
                    #      label branch_false_1586: 
.branch_false_1586:
                    #      label L180_0: 
.L180_0:
                    #      new_var temp_1262_1584:i32 
                    #      temp_1262_1584 = Div i32 x_18, 2_0 
    sb      a0,713(sp)
    li      a0, 2
    sb      a1,714(sp)
    div     a1,s8,a0
                    #      x_18 = i32 temp_1262_1584 
                    #      new_var temp_1263_1584:i32 
                    #      temp_1263_1584 = Div i32 y_18, 2_0 
                    #found literal reg Some(a0) already exist with 2_0
    sw      a1,624(sp)
    div     a1,s9,a0
                    #      y_18 = i32 temp_1263_1584 
                    #      new_var temp_1264_1584:i32 
                    #      temp_1264_1584 = Add i32 i_18, 1_0 
    li      a0, 1
    sw      a1,620(sp)
    add     a1,s6,a0
                    #      i_18 = i32 temp_1264_1584 
                    #      jump label: while.head_1583 
    sb      a2,715(sp)
    lw      a2,1144(sp)
    sw      a1,616(sp)
    lw      a1,728(sp)
    lw      a0,732(sp)
    j       .while.head_1583
                    #      label while.exit_1583: 
.while.exit_1583:
                    #      label L181_0: 
.L181_0:
                    #      c_1531 = i32 ans_18 
    mv      a1, a0
                    #      al_1531 = i32 sum_1531 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,1144(sp)
    mv      a1, a0
                    #      jump label: while.head_1534 
    sb      a2,815(sp)
    lb      a2,1695(sp)
    sw      a0,1140(sp)
    lw      a0,1144(sp)
    j       .while.head_1534
                    #      label while.exit_1534: 
.while.exit_1534:
                    #      ans_18 = i32 al_1531 
    sw      a0,1144(sp)
    mv      a0, a1
                    #      ml_1444 = i32 ans_18 
                    #      x_18 = i32 mr_1444 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      y_18 = i32 1_0 
                    #      jump label: L182_0 
    j       .L182_0
                    #      label L182_0: 
.L182_0:
                    #      new_var temp_1265_1598:i1 
                    #      temp_1265_1598 = icmp i32 Sge y_18, 15_0 
    sw      a0,1816(sp)
    li      a0, 15
    sw      a1,1148(sp)
    slt     a1,s9,a0
    xori    a1,a1,1
                    #      br i1 temp_1265_1598, label branch_true_1599, label branch_false_1599 
    bnez    a1, .branch_true_1599
    j       .branch_false_1599
                    #      label branch_true_1599: 
.branch_true_1599:
                    #      new_var temp_1266_1601:i1 
                    #      temp_1266_1601 = icmp i32 Slt x_18, 0_0 
    li      a0, 0
    sb      a1,615(sp)
    slt     a1,s8,a0
                    #      br i1 temp_1266_1601, label branch_true_1602, label branch_false_1602 
    bnez    a1, .branch_true_1602
    j       .branch_false_1602
                    #      label branch_true_1602: 
.branch_true_1602:
                    #      ans_18 = i32 0xffff_0 
    li      a0, 0xffff
                    #      jump label: L183_0 
    j       .L183_0
                    #      label branch_false_1602: 
.branch_false_1602:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: L183_0 
    j       .L183_0
                    #      label L183_0: 
.L183_0:
                    #      label branch_false_1599: 
.branch_false_1599:
                    #      new_var temp_1267_1607:i1 
                    #      temp_1267_1607 = icmp i32 Sgt y_18, 0_0 
    li      a0, 0
    sb      a1,615(sp)
    slt     a1,a0,s9
                    #      br i1 temp_1267_1607, label branch_true_1608, label branch_false_1608 
    bnez    a1, .branch_true_1608
    j       .branch_false_1608
                    #      label branch_true_1608: 
.branch_true_1608:
                    #      new_var temp_1268_1610:i1 
                    #      temp_1268_1610 = icmp i32 Sgt x_18, 0x7fff_0 
    li      a0, 0x7fff
    sb      a1,613(sp)
    slt     a1,a0,s8
                    #      br i1 temp_1268_1610, label branch_true_1611, label branch_false_1611 
    bnez    a1, .branch_true_1611
    j       .branch_false_1611
                    #      label branch_true_1611: 
.branch_true_1611:
                    #      new_var temp_1269_1612:Array:i32:[Some(16_0)] 
                    #      temp_1269_1612 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sb      a1,612(sp)
    lw      a1,0(a0)
                    #      new_var temp_1270_1612:ptr->i32 
                    #      new_var temp_1271_1612:i32 
                    #      temp_1270_1612 = getelementptr temp_1269_1612:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    sw      a1,608(sp)
    li      a1, 1
    sb      a2,1139(sp)
    mul     a2,a1,s9
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1271_1612 = load temp_1270_1612:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1272_1612:i32 
                    #      temp_1272_1612 = Div i32 x_18, temp_1271_1612 
    sd      a0,536(sp)
    div     a0,s8,a1
                    #      x_18 = i32 temp_1272_1612 
                    #      new_var temp_1273_1612:i32 
                    #      temp_1273_1612 = Add i32 y_18, 1_0 
    sw      a0,528(sp)
    li      a0, 1
    sw      a1,532(sp)
    add     a1,s9,a0
                    #      new_var temp_1274_1612:i32 
                    #      temp_1274_1612 = Sub i32 15_0, temp_1273_1612 
    li      a0, 15
    sw      a2,608(sp)
    sub     a2,a0,a1
                    #      new_var temp_1275_1612:Array:i32:[Some(16_0)] 
                    #      temp_1275_1612 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sw      a1,524(sp)
    lw      a1,0(a0)
                    #      new_var temp_1276_1612:ptr->i32 
                    #      new_var temp_1277_1612:i32 
                    #      temp_1276_1612 = getelementptr temp_1275_1612:Array:i32:[Some(16_0)] [Some(temp_1274_1612)] 
    li      a0, 0
    sw      a1,516(sp)
    li      a1, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1277_1612 = load temp_1276_1612:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1278_1612:i32 
                    #      temp_1278_1612 = Sub i32 65536_0, temp_1277_1612 
    sd      a0,448(sp)
    li      a0, 65536
    sw      a2,520(sp)
    sub     a2,a0,a1
                    #      new_var temp_1279_1612:i32 
                    #      temp_1279_1612 = Add i32 x_18, temp_1278_1612 
    add     a0,s8,a2
                    #      ans_18 = i32 temp_1279_1612 
    sw      a1,444(sp)
    mv      a1, a0
                    #      jump label: L184_0 
    j       .L184_0
                    #      label branch_false_1611: 
.branch_false_1611:
                    #      new_var temp_1280_1615:Array:i32:[Some(16_0)] 
                    #      temp_1280_1615 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sb      a1,612(sp)
    lw      a1,0(a0)
                    #      new_var temp_1281_1615:ptr->i32 
                    #      new_var temp_1282_1615:i32 
                    #      temp_1281_1615 = getelementptr temp_1280_1615:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    sw      a1,432(sp)
    li      a1, 1
    sb      a2,1139(sp)
    mul     a2,a1,s9
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1282_1615 = load temp_1281_1615:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1283_1615:i32 
                    #      temp_1283_1615 = Div i32 x_18, temp_1282_1615 
    sd      a0,360(sp)
    div     a0,s8,a1
                    #      ans_18 = i32 temp_1283_1615 
    sw      a1,356(sp)
    mv      a1, a0
                    #      jump label: L184_0 
    sw      a2,432(sp)
    lw      a2,440(sp)
    sw      a0,352(sp)
    lw      a0,436(sp)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    lw      a3,516(sp)
    j       .L184_0
                    #      label L184_0: 
.L184_0:
                    #      label branch_false_1608: 
.branch_false_1608:
                    #      ans_18 = i32 x_18 
    mv      a0, s8
                    #      jump label: L185_0 
    j       .L185_0
                    #      label L185_0: 
.L185_0:
                    #      label L186_0: 
.L186_0:
                    #      label L187_0: 
.L187_0:
                    #      mr_1444 = i32 ans_18 
    sb      a1,613(sp)
    mv      a1, a0
                    #      jump label: while.head_1447 
    sb      a2,1139(sp)
    mv      a2, a0
    sw      a1,1816(sp)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    lw      a0,1812(sp)
    j       .while.head_1447
                    #      label while.exit_1447: 
.while.exit_1447:
                    #      ans_18 = i32 mres_1444 
    sw      a0,1816(sp)
    mv      a0, a1
                    #      pl_1244 = i32 ans_18 
                    #      x_18 = i32 pr_1244 
                    #      y_18 = i32 1_0 
                    #      jump label: L188_0 
    j       .L188_0
                    #      label L188_0: 
.L188_0:
                    #      new_var temp_1284_1624:i1 
                    #      temp_1284_1624 = icmp i32 Sge y_18, 15_0 
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 15
    sw      a1,1812(sp)
    slt     a1,s9,a0
    xori    a1,a1,1
                    #      br i1 temp_1284_1624, label branch_true_1625, label branch_false_1625 
    bnez    a1, .branch_true_1625
    j       .branch_false_1625
                    #      label branch_true_1625: 
.branch_true_1625:
                    #      new_var temp_1285_1627:i1 
                    #      temp_1285_1627 = icmp i32 Slt x_18, 0_0 
    li      a0, 0
    sb      a1,351(sp)
    slt     a1,s8,a0
                    #      br i1 temp_1285_1627, label branch_true_1628, label branch_false_1628 
    bnez    a1, .branch_true_1628
    j       .branch_false_1628
                    #      label branch_true_1628: 
.branch_true_1628:
                    #      ans_18 = i32 0xffff_0 
    li      a0, 0xffff
                    #      jump label: L189_0 
    j       .L189_0
                    #      label branch_false_1628: 
.branch_false_1628:
                    #      ans_18 = i32 0_0 
    li      a0, 0
                    #      jump label: L189_0 
    j       .L189_0
                    #      label L189_0: 
.L189_0:
                    #      label branch_false_1625: 
.branch_false_1625:
                    #      new_var temp_1286_1633:i1 
                    #      temp_1286_1633 = icmp i32 Sgt y_18, 0_0 
    li      a0, 0
    sb      a1,351(sp)
    slt     a1,a0,s9
                    #      br i1 temp_1286_1633, label branch_true_1634, label branch_false_1634 
    bnez    a1, .branch_true_1634
    j       .branch_false_1634
                    #      label branch_true_1634: 
.branch_true_1634:
                    #      new_var temp_1287_1636:i1 
                    #      temp_1287_1636 = icmp i32 Sgt x_18, 0x7fff_0 
    li      a0, 0x7fff
    sb      a1,349(sp)
    slt     a1,a0,s8
                    #      br i1 temp_1287_1636, label branch_true_1637, label branch_false_1637 
    bnez    a1, .branch_true_1637
    j       .branch_false_1637
                    #      label branch_true_1637: 
.branch_true_1637:
                    #      new_var temp_1288_1638:Array:i32:[Some(16_0)] 
                    #      temp_1288_1638 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sb      a1,348(sp)
    lw      a1,0(a0)
                    #      new_var temp_1289_1638:ptr->i32 
                    #      new_var temp_1290_1638:i32 
                    #      temp_1289_1638 = getelementptr temp_1288_1638:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    sw      a1,344(sp)
    li      a1, 1
    sb      a2,1811(sp)
    mul     a2,a1,s9
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1290_1638 = load temp_1289_1638:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1291_1638:i32 
                    #      temp_1291_1638 = Div i32 x_18, temp_1290_1638 
    sd      a0,272(sp)
    div     a0,s8,a1
                    #      x_18 = i32 temp_1291_1638 
                    #      new_var temp_1292_1638:i32 
                    #      temp_1292_1638 = Add i32 y_18, 1_0 
    sw      a0,264(sp)
    li      a0, 1
    sw      a1,268(sp)
    add     a1,s9,a0
                    #      new_var temp_1293_1638:i32 
                    #      temp_1293_1638 = Sub i32 15_0, temp_1292_1638 
    li      a0, 15
    sw      a2,344(sp)
    sub     a2,a0,a1
                    #      new_var temp_1294_1638:Array:i32:[Some(16_0)] 
                    #      temp_1294_1638 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sw      a1,260(sp)
    lw      a1,0(a0)
                    #      new_var temp_1295_1638:ptr->i32 
                    #      new_var temp_1296_1638:i32 
                    #      temp_1295_1638 = getelementptr temp_1294_1638:Array:i32:[Some(16_0)] [Some(temp_1293_1638)] 
    li      a0, 0
    sw      a1,252(sp)
    li      a1, 1
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1296_1638 = load temp_1295_1638:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1297_1638:i32 
                    #      temp_1297_1638 = Sub i32 65536_0, temp_1296_1638 
    sd      a0,184(sp)
    li      a0, 65536
    sw      a2,256(sp)
    sub     a2,a0,a1
                    #      new_var temp_1298_1638:i32 
                    #      temp_1298_1638 = Add i32 x_18, temp_1297_1638 
    add     a0,s8,a2
                    #      ans_18 = i32 temp_1298_1638 
    sw      a1,180(sp)
    mv      a1, a0
                    #      jump label: L190_0 
    j       .L190_0
                    #      label branch_false_1637: 
.branch_false_1637:
                    #      new_var temp_1299_1641:Array:i32:[Some(16_0)] 
                    #      temp_1299_1641 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      a0, SHIFT_TABLE
                    #occupy reg a0 with *SHIFT_TABLE_0
    sb      a1,348(sp)
    lw      a1,0(a0)
                    #      new_var temp_1300_1641:ptr->i32 
                    #      new_var temp_1301_1641:i32 
                    #      temp_1300_1641 = getelementptr temp_1299_1641:Array:i32:[Some(16_0)] [Some(y_18)] 
    li      a0, 0
    sw      a1,168(sp)
    li      a1, 1
    sb      a2,1811(sp)
    mul     a2,a1,s9
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_1301_1641 = load temp_1300_1641:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_1302_1641:i32 
                    #      temp_1302_1641 = Div i32 x_18, temp_1301_1641 
    sd      a0,96(sp)
    div     a0,s8,a1
                    #      ans_18 = i32 temp_1302_1641 
    sw      a1,92(sp)
    mv      a1, a0
                    #      jump label: L190_0 
    sw      a2,168(sp)
    lw      a2,176(sp)
    sw      a0,88(sp)
    lw      a0,172(sp)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    lw      a3,252(sp)
    j       .L190_0
                    #      label L190_0: 
.L190_0:
                    #      label branch_false_1634: 
.branch_false_1634:
                    #      ans_18 = i32 x_18 
    mv      a0, s8
                    #      jump label: L191_0 
    j       .L191_0
                    #      label L191_0: 
.L191_0:
                    #      label L192_0: 
.L192_0:
                    #      label L193_0: 
.L193_0:
                    #      pr_1244 = i32 ans_18 
                    #      jump label: while.head_1247 
    sb      a2,1811(sp)
    mv      a2, a0
    li      s8, 13444
    add     s8,sp,s8
    sw      s8,0(s8)
    sb      a1,349(sp)
    li      a0, 13452
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13423
    add     a0,sp,a0
    lb      a1,0(a0)
    li      s6, 13448
    add     s6,sp,s6
    sw      s6,0(s6)
    sw      s10,1820(sp)
    li      s7, 3411
    add     s7,sp,s7
    sb      s7,0(s7)
    li      a0, 13423
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 10096
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 13436
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s11, 3410
    add     s11,sp,s11
    sb      s11,0(s11)
    li      s9, 13440
    add     s9,sp,s9
    sw      s9,0(s9)
    li      a3, 13436
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 13432
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 10096
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_1247
                    #      label while.exit_1247: 
.while.exit_1247:
                    #      ans_18 = i32 pres_1244 
                    #      jump label: L194_0 
    j       .L194_0
                    #      label L194_0: 
.L194_0:
                    #      new_var temp_1303_1647:Array:i32:[Some(16_0)] 
                    #      temp_1303_1647 = load *SHIFT_TABLE_0:ptr->i32 
                    #   load label SHIFT_TABLE as ptr to reg
    la      s6, SHIFT_TABLE
                    #occupy reg s6 with *SHIFT_TABLE_0
    lw      s8,0(s6)
                    #      new_var temp_1304_1647:ptr->i32 
                    #      new_var temp_1305_1647:i32 
                    #      temp_1304_1647 = getelementptr temp_1303_1647:Array:i32:[Some(16_0)] [Some(cur_18)] 
    li      s9, 0
    li      s10, 1
    add     s9,s9,s8
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_1305_1647 = load temp_1304_1647:ptr->i32 
    lw      s11,0(s9)
                    #      new_var temp_1306_1647:i1 
                    #      temp_1306_1647 = icmp i32 Ne temp_1305_1647, ans_18 
    xor     s6,s11,a2
    snez    s6, s6
                    #      br i1 temp_1306_1647, label branch_true_1648, label branch_false_1648 
    bnez    s6, .branch_true_1648
    j       .branch_false_1648
                    #      label branch_true_1648: 
.branch_true_1648:
                    #      ret 1_0 
    li      s10, 13464
    add     s10,sp,s10
    ld      ra,0(s10)
    li      a0, 13436
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 13456
    add     a0,sp,a0
    ld      s0,0(a0)
    li      a0, 13456
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 13472
    li      a1, 13472
    add     sp,a1,sp
    ret
                    #      label branch_false_1648: 
.branch_false_1648:
                    #      label L195_0: 
.L195_0:
                    #      new_var temp_1307_1243:i32 
                    #      temp_1307_1243 = Add i32 cur_18, 1_0 
    li      s10, 1
    li      a1, 13423
    add     a1,sp,a1
    sb      a1,0(a1)
    add     a1,a0,s10
                    #      cur_18 = i32 temp_1307_1243 
                    #      jump label: while.head_1242 
    sw      s8,84(sp)
    sw      a1,4(sp)
    li      s10, 13423
    add     s10,sp,s10
    lb      a1,0(s10)
    sb      s6,11(sp)
    li      s10, 13423
    add     s10,sp,s10
    sb      s10,0(s10)
    li      s1, 3420
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s5, 3412
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s3, 3427
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s7, 3411
    add     s7,sp,s7
    sb      s7,0(s7)
    sw      s11,12(sp)
    sd      s9,16(sp)
    li      s4, 3416
    add     s4,sp,s4
    sw      s4,0(s4)
    j       .while.head_1242
                    #      label while.exit_1242: 
.while.exit_1242:
                    #      ret 0_0 
    li      s1, 13464
    add     s1,sp,s1
    ld      ra,0(s1)
    li      s4, 13456
    add     s4,sp,s4
    ld      s0,0(s4)
    li      a0, 13436
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      s5, 13472
    li      s5, 13472
    add     sp,s5,sp
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_1308:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_1308_1653 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_1308_1653:i32 
                    #      temp_1308_1653 =  Call i32 long_func_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    long_func
    sw      a0,4(sp)
                    #      ret temp_1308_1653 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
.section        .data
    .align 4
    .globl SHIFT_TABLE
                    #      global Array:i32:[Some(16_0)] SHIFT_TABLE_0 
    .type SHIFT_TABLE,@object
SHIFT_TABLE:
    .word 1
    .word 2
    .word 4
    .word 8
    .word 16
    .word 32
    .word 64
    .word 128
    .word 256
    .word 512
    .word 1024
    .word 2048
    .word 4096
    .word 8192
    .word 16384
    .word 32768
    .zero 49
