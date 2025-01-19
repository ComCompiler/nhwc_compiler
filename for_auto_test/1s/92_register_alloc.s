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


.section ___func
    .text
    .align 4
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     112  Define func_0 "a_48_0,b_48_0," -> func_ret_0 
    .globl func
    .type func,@function
func:
              #                    mem layout:|ra_func:8 at 848|s0_func:8 at 840|a _s48 _i0:4 at 836|b _s48 _i0:4 at 832|i _s50 _i0:4 at 828|temp_0_arithop _s50 _i0:4 at 824|c1 _s50 _i0:4 at 820|c2 _s50 _i0:4 at 816|c3 _s50 _i0:4 at 812|c4 _s50 _i0:4 at 808|d1 _s50 _i0:4 at 804|d2 _s50 _i0:4 at 800|d3 _s50 _i0:4 at 796|d4 _s50 _i0:4 at 792|e1 _s50 _i0:4 at 788|e2 _s50 _i0:4 at 784|e3 _s50 _i0:4 at 780|e4 _s50 _i0:4 at 776|f1 _s50 _i0:4 at 772|f2 _s50 _i0:4 at 768|f3 _s50 _i0:4 at 764|f4 _s50 _i0:4 at 760|g1 _s50 _i0:4 at 756|g2 _s50 _i0:4 at 752|g3 _s50 _i0:4 at 748|g4 _s50 _i0:4 at 744|h1 _s50 _i0:4 at 740|h2 _s50 _i0:4 at 736|h3 _s50 _i0:4 at 732|h4 _s50 _i0:4 at 728|i1 _s50 _i0:4 at 724|i2 _s50 _i0:4 at 720|i3 _s50 _i0:4 at 716|i4 _s50 _i0:4 at 712|j1 _s50 _i0:4 at 708|j2 _s50 _i0:4 at 704|j3 _s50 _i0:4 at 700|j4 _s50 _i0:4 at 696|k1 _s50 _i0:4 at 692|k2 _s50 _i0:4 at 688|k3 _s50 _i0:4 at 684|k4 _s50 _i0:4 at 680|temp_1_ret_of_getint _s50 _i0:4 at 676|temp_2_ret_of_getint _s50 _i0:4 at 672|temp_3_ret_of_getint _s50 _i0:4 at 668|temp_4_ret_of_getint _s50 _i0:4 at 664|temp_5_arithop _s50 _i0:4 at 660|temp_6_value_from_ptr _s50 _i0:4 at 656|temp_7_arithop _s50 _i0:4 at 652|temp_8_arithop _s50 _i0:4 at 648|temp_9_value_from_ptr _s50 _i0:4 at 644|temp_10_arithop _s50 _i0:4 at 640|temp_11_arithop _s50 _i0:4 at 636|temp_12_value_from_ptr _s50 _i0:4 at 632|temp_13_arithop _s50 _i0:4 at 628|temp_14_arithop _s50 _i0:4 at 624|temp_15_value_from_ptr _s50 _i0:4 at 620|temp_16_arithop _s50 _i0:4 at 616|temp_17_arithop _s50 _i0:4 at 612|temp_18_value_from_ptr _s50 _i0:4 at 608|temp_19_arithop _s50 _i0:4 at 604|temp_20_arithop _s50 _i0:4 at 600|temp_21_value_from_ptr _s50 _i0:4 at 596|temp_22_arithop _s50 _i0:4 at 592|temp_23_arithop _s50 _i0:4 at 588|temp_24_value_from_ptr _s50 _i0:4 at 584|temp_25_arithop _s50 _i0:4 at 580|temp_26_arithop _s50 _i0:4 at 576|temp_27_value_from_ptr _s50 _i0:4 at 572|temp_28_arithop _s50 _i0:4 at 568|temp_29_arithop _s50 _i0:4 at 564|temp_30_value_from_ptr _s50 _i0:4 at 560|temp_31_arithop _s50 _i0:4 at 556|temp_32_arithop _s50 _i0:4 at 552|temp_33_value_from_ptr _s50 _i0:4 at 548|temp_34_arithop _s50 _i0:4 at 544|temp_35_arithop _s50 _i0:4 at 540|temp_36_value_from_ptr _s50 _i0:4 at 536|temp_37_arithop _s50 _i0:4 at 532|temp_38_arithop _s50 _i0:4 at 528|temp_39_value_from_ptr _s50 _i0:4 at 524|temp_40_arithop _s50 _i0:4 at 520|temp_41_arithop _s50 _i0:4 at 516|temp_42_value_from_ptr _s50 _i0:4 at 512|temp_43_arithop _s50 _i0:4 at 508|temp_44_arithop _s50 _i0:4 at 504|temp_45_value_from_ptr _s50 _i0:4 at 500|temp_46_arithop _s50 _i0:4 at 496|temp_47_arithop _s50 _i0:4 at 492|temp_48_value_from_ptr _s50 _i0:4 at 488|temp_49_arithop _s50 _i0:4 at 484|temp_50_arithop _s50 _i0:4 at 480|temp_51_value_from_ptr _s50 _i0:4 at 476|temp_52_arithop _s50 _i0:4 at 472|temp_53_arithop _s50 _i0:4 at 468|temp_54_value_from_ptr _s50 _i0:4 at 464|temp_55_arithop _s50 _i0:4 at 460|temp_56_arithop _s50 _i0:4 at 456|temp_57_value_from_ptr _s50 _i0:4 at 452|temp_58_arithop _s50 _i0:4 at 448|temp_59_arithop _s50 _i0:4 at 444|temp_60_value_from_ptr _s50 _i0:4 at 440|temp_61_arithop _s50 _i0:4 at 436|temp_62_arithop _s50 _i0:4 at 432|temp_63_value_from_ptr _s50 _i0:4 at 428|temp_64_arithop _s50 _i0:4 at 424|temp_65_arithop _s50 _i0:4 at 420|temp_66_value_from_ptr _s50 _i0:4 at 416|temp_67_arithop _s50 _i0:4 at 412|temp_68_arithop _s50 _i0:4 at 408|temp_69_value_from_ptr _s50 _i0:4 at 404|temp_70_arithop _s50 _i0:4 at 400|temp_71_arithop _s50 _i0:4 at 396|temp_72_value_from_ptr _s50 _i0:4 at 392|temp_73_arithop _s50 _i0:4 at 388|temp_74_arithop _s50 _i0:4 at 384|temp_75_value_from_ptr _s50 _i0:4 at 380|temp_76_arithop _s50 _i0:4 at 376|temp_77_arithop _s50 _i0:4 at 372|temp_78_value_from_ptr _s50 _i0:4 at 368|temp_79_arithop _s50 _i0:4 at 364|temp_80_arithop _s50 _i0:4 at 360|temp_81_value_from_ptr _s50 _i0:4 at 356|temp_82_arithop _s50 _i0:4 at 352|temp_83_arithop _s50 _i0:4 at 348|temp_84_value_from_ptr _s50 _i0:4 at 344|temp_85_arithop _s50 _i0:4 at 340|temp_86_arithop _s50 _i0:4 at 336|temp_87_value_from_ptr _s50 _i0:4 at 332|temp_88_arithop _s50 _i0:4 at 328|temp_89_arithop _s50 _i0:4 at 324|temp_90_value_from_ptr _s50 _i0:4 at 320|temp_91_arithop _s50 _i0:4 at 316|temp_92_arithop _s50 _i0:4 at 312|temp_93_value_from_ptr _s50 _i0:4 at 308|temp_94_arithop _s50 _i0:4 at 304|temp_95_arithop _s50 _i0:4 at 300|temp_96_value_from_ptr _s50 _i0:4 at 296|temp_97_arithop _s50 _i0:4 at 292|temp_98_arithop _s50 _i0:4 at 288|temp_99_value_from_ptr _s50 _i0:4 at 284|temp_100_arithop _s50 _i0:4 at 280|temp_101_arithop _s50 _i0:4 at 276|temp_102_arithop _s50 _i0:4 at 272|temp_211_arithop _s50 _i0:4 at 268|temp_212_arithop _s50 _i0:4 at 264|temp_213_arithop _s50 _i0:4 at 260|temp_214_arithop _s50 _i0:4 at 256|temp_215_arithop _s50 _i0:4 at 252|temp_216_arithop _s50 _i0:4 at 248|temp_217_arithop _s50 _i0:4 at 244|temp_218_arithop _s50 _i0:4 at 240|temp_219_arithop _s50 _i0:4 at 236|temp_220_arithop _s50 _i0:4 at 232|temp_221_arithop _s50 _i0:4 at 228|temp_222_arithop _s50 _i0:4 at 224|temp_223_arithop _s50 _i0:4 at 220|temp_224_arithop _s50 _i0:4 at 216|temp_225_arithop _s50 _i0:4 at 212|temp_226_arithop _s50 _i0:4 at 208|temp_227_arithop _s50 _i0:4 at 204|temp_228_arithop _s50 _i0:4 at 200|temp_229_arithop _s50 _i0:4 at 196|temp_230_arithop _s50 _i0:4 at 192|temp_231_arithop _s50 _i0:4 at 188|temp_232_arithop _s50 _i0:4 at 184|temp_233_arithop _s50 _i0:4 at 180|temp_234_arithop _s50 _i0:4 at 176|temp_235_arithop _s50 _i0:4 at 172|temp_236_arithop _s50 _i0:4 at 168|temp_237_arithop _s50 _i0:4 at 164|temp_238_arithop _s50 _i0:4 at 160|temp_239_arithop _s50 _i0:4 at 156|temp_240_arithop _s50 _i0:4 at 152|temp_241_arithop _s50 _i0:4 at 148|temp_242_arithop _s50 _i0:4 at 144|temp_243_arithop _s50 _i0:4 at 140|temp_244_arithop _s50 _i0:4 at 136|temp_245_arithop _s50 _i0:4 at 132|temp_246_arithop _s50 _i0:4 at 128|temp_248_arithop _s50 _i0:4 at 124|temp_250_arithop _s50 _i0:4 at 120|temp_252_arithop _s50 _i0:4 at 116|temp_254_arithop _s50 _i0:4 at 112|temp_256_arithop _s50 _i0:4 at 108|temp_258_arithop _s50 _i0:4 at 104|temp_260_arithop _s50 _i0:4 at 100|temp_262_arithop _s50 _i0:4 at 96|temp_264_arithop _s50 _i0:4 at 92|temp_266_arithop _s50 _i0:4 at 88|temp_268_arithop _s50 _i0:4 at 84|temp_270_arithop _s50 _i0:4 at 80|temp_272_arithop _s50 _i0:4 at 76|temp_274_arithop _s50 _i0:4 at 72|temp_276_arithop _s50 _i0:4 at 68|temp_278_arithop _s50 _i0:4 at 64|temp_280_arithop _s50 _i0:4 at 60|temp_282_arithop _s50 _i0:4 at 56|temp_284_arithop _s50 _i0:4 at 52|temp_286_arithop _s50 _i0:4 at 48|temp_288_arithop _s50 _i0:4 at 44|temp_290_arithop _s50 _i0:4 at 40|temp_292_arithop _s50 _i0:4 at 36|temp_294_arithop _s50 _i0:4 at 32|temp_296_arithop _s50 _i0:4 at 28|temp_298_arithop _s50 _i0:4 at 24|temp_300_arithop _s50 _i0:4 at 20|temp_302_arithop _s50 _i0:4 at 16|temp_304_arithop _s50 _i0:4 at 12|temp_306_arithop _s50 _i0:4 at 8|temp_308_arithop _s50 _i0:4 at 4|temp_310_arithop _s50 _i0:4 at 0
    addi    sp,sp,-856
              #                    store to ra_func_0 in mem offset legal
    sd      ra,848(sp)
              #                    store to s0_func_0 in mem offset legal
    sd      s0,840(sp)
    addi    s0,sp,856
              #                     114  alloc i32 [i_50] 
              #                     116  alloc i32 [temp_0_arithop_50] 
              #                     119  alloc i32 [c1_50] 
              #                     121  alloc i32 [c2_50] 
              #                     123  alloc i32 [c3_50] 
              #                     125  alloc i32 [c4_50] 
              #                     127  alloc i32 [d1_50] 
              #                     129  alloc i32 [d2_50] 
              #                     131  alloc i32 [d3_50] 
              #                     133  alloc i32 [d4_50] 
              #                     135  alloc i32 [e1_50] 
              #                     137  alloc i32 [e2_50] 
              #                     139  alloc i32 [e3_50] 
              #                     141  alloc i32 [e4_50] 
              #                     143  alloc i32 [f1_50] 
              #                     145  alloc i32 [f2_50] 
              #                     147  alloc i32 [f3_50] 
              #                     149  alloc i32 [f4_50] 
              #                     151  alloc i32 [g1_50] 
              #                     153  alloc i32 [g2_50] 
              #                     155  alloc i32 [g3_50] 
              #                     157  alloc i32 [g4_50] 
              #                     159  alloc i32 [h1_50] 
              #                     161  alloc i32 [h2_50] 
              #                     163  alloc i32 [h3_50] 
              #                     165  alloc i32 [h4_50] 
              #                     167  alloc i32 [i1_50] 
              #                     169  alloc i32 [i2_50] 
              #                     171  alloc i32 [i3_50] 
              #                     173  alloc i32 [i4_50] 
              #                     175  alloc i32 [j1_50] 
              #                     177  alloc i32 [j2_50] 
              #                     179  alloc i32 [j3_50] 
              #                     181  alloc i32 [j4_50] 
              #                     183  alloc i32 [k1_50] 
              #                     185  alloc i32 [k2_50] 
              #                     187  alloc i32 [k3_50] 
              #                     189  alloc i32 [k4_50] 
              #                     191  alloc i32 [temp_1_ret_of_getint_50] 
              #                     194  alloc i32 [temp_2_ret_of_getint_50] 
              #                     197  alloc i32 [temp_3_ret_of_getint_50] 
              #                     200  alloc i32 [temp_4_ret_of_getint_50] 
              #                     203  alloc i32 [temp_5_arithop_50] 
              #                     205  alloc i32 [temp_6_value_from_ptr_50] 
              #                     208  alloc i32 [temp_7_arithop_50] 
              #                     211  alloc i32 [temp_8_arithop_50] 
              #                     213  alloc i32 [temp_9_value_from_ptr_50] 
              #                     216  alloc i32 [temp_10_arithop_50] 
              #                     219  alloc i32 [temp_11_arithop_50] 
              #                     221  alloc i32 [temp_12_value_from_ptr_50] 
              #                     224  alloc i32 [temp_13_arithop_50] 
              #                     227  alloc i32 [temp_14_arithop_50] 
              #                     229  alloc i32 [temp_15_value_from_ptr_50] 
              #                     232  alloc i32 [temp_16_arithop_50] 
              #                     235  alloc i32 [temp_17_arithop_50] 
              #                     237  alloc i32 [temp_18_value_from_ptr_50] 
              #                     240  alloc i32 [temp_19_arithop_50] 
              #                     243  alloc i32 [temp_20_arithop_50] 
              #                     245  alloc i32 [temp_21_value_from_ptr_50] 
              #                     248  alloc i32 [temp_22_arithop_50] 
              #                     251  alloc i32 [temp_23_arithop_50] 
              #                     253  alloc i32 [temp_24_value_from_ptr_50] 
              #                     256  alloc i32 [temp_25_arithop_50] 
              #                     259  alloc i32 [temp_26_arithop_50] 
              #                     261  alloc i32 [temp_27_value_from_ptr_50] 
              #                     264  alloc i32 [temp_28_arithop_50] 
              #                     267  alloc i32 [temp_29_arithop_50] 
              #                     269  alloc i32 [temp_30_value_from_ptr_50] 
              #                     272  alloc i32 [temp_31_arithop_50] 
              #                     275  alloc i32 [temp_32_arithop_50] 
              #                     277  alloc i32 [temp_33_value_from_ptr_50] 
              #                     280  alloc i32 [temp_34_arithop_50] 
              #                     283  alloc i32 [temp_35_arithop_50] 
              #                     285  alloc i32 [temp_36_value_from_ptr_50] 
              #                     288  alloc i32 [temp_37_arithop_50] 
              #                     291  alloc i32 [temp_38_arithop_50] 
              #                     293  alloc i32 [temp_39_value_from_ptr_50] 
              #                     296  alloc i32 [temp_40_arithop_50] 
              #                     299  alloc i32 [temp_41_arithop_50] 
              #                     301  alloc i32 [temp_42_value_from_ptr_50] 
              #                     304  alloc i32 [temp_43_arithop_50] 
              #                     307  alloc i32 [temp_44_arithop_50] 
              #                     309  alloc i32 [temp_45_value_from_ptr_50] 
              #                     312  alloc i32 [temp_46_arithop_50] 
              #                     315  alloc i32 [temp_47_arithop_50] 
              #                     317  alloc i32 [temp_48_value_from_ptr_50] 
              #                     320  alloc i32 [temp_49_arithop_50] 
              #                     323  alloc i32 [temp_50_arithop_50] 
              #                     325  alloc i32 [temp_51_value_from_ptr_50] 
              #                     328  alloc i32 [temp_52_arithop_50] 
              #                     331  alloc i32 [temp_53_arithop_50] 
              #                     333  alloc i32 [temp_54_value_from_ptr_50] 
              #                     336  alloc i32 [temp_55_arithop_50] 
              #                     339  alloc i32 [temp_56_arithop_50] 
              #                     341  alloc i32 [temp_57_value_from_ptr_50] 
              #                     344  alloc i32 [temp_58_arithop_50] 
              #                     347  alloc i32 [temp_59_arithop_50] 
              #                     349  alloc i32 [temp_60_value_from_ptr_50] 
              #                     352  alloc i32 [temp_61_arithop_50] 
              #                     355  alloc i32 [temp_62_arithop_50] 
              #                     357  alloc i32 [temp_63_value_from_ptr_50] 
              #                     360  alloc i32 [temp_64_arithop_50] 
              #                     363  alloc i32 [temp_65_arithop_50] 
              #                     365  alloc i32 [temp_66_value_from_ptr_50] 
              #                     368  alloc i32 [temp_67_arithop_50] 
              #                     371  alloc i32 [temp_68_arithop_50] 
              #                     373  alloc i32 [temp_69_value_from_ptr_50] 
              #                     376  alloc i32 [temp_70_arithop_50] 
              #                     379  alloc i32 [temp_71_arithop_50] 
              #                     381  alloc i32 [temp_72_value_from_ptr_50] 
              #                     384  alloc i32 [temp_73_arithop_50] 
              #                     387  alloc i32 [temp_74_arithop_50] 
              #                     389  alloc i32 [temp_75_value_from_ptr_50] 
              #                     392  alloc i32 [temp_76_arithop_50] 
              #                     395  alloc i32 [temp_77_arithop_50] 
              #                     397  alloc i32 [temp_78_value_from_ptr_50] 
              #                     400  alloc i32 [temp_79_arithop_50] 
              #                     403  alloc i32 [temp_80_arithop_50] 
              #                     405  alloc i32 [temp_81_value_from_ptr_50] 
              #                     408  alloc i32 [temp_82_arithop_50] 
              #                     411  alloc i32 [temp_83_arithop_50] 
              #                     413  alloc i32 [temp_84_value_from_ptr_50] 
              #                     416  alloc i32 [temp_85_arithop_50] 
              #                     419  alloc i32 [temp_86_arithop_50] 
              #                     421  alloc i32 [temp_87_value_from_ptr_50] 
              #                     424  alloc i32 [temp_88_arithop_50] 
              #                     427  alloc i32 [temp_89_arithop_50] 
              #                     429  alloc i32 [temp_90_value_from_ptr_50] 
              #                     432  alloc i32 [temp_91_arithop_50] 
              #                     435  alloc i32 [temp_92_arithop_50] 
              #                     437  alloc i32 [temp_93_value_from_ptr_50] 
              #                     440  alloc i32 [temp_94_arithop_50] 
              #                     443  alloc i32 [temp_95_arithop_50] 
              #                     445  alloc i32 [temp_96_value_from_ptr_50] 
              #                     448  alloc i32 [temp_97_arithop_50] 
              #                     451  alloc i32 [temp_98_arithop_50] 
              #                     453  alloc i32 [temp_99_value_from_ptr_50] 
              #                     456  alloc i32 [temp_100_arithop_50] 
              #                     459  alloc i32 [temp_101_arithop_50] 
              #                     461  alloc i32 [temp_102_arithop_50] 
              #                     464  alloc i32 [temp_103_arithop_50] 
              #                     466  alloc i32 [temp_104_value_from_ptr_50] 
              #                     469  alloc i32 [temp_105_arithop_50] 
              #                     472  alloc i32 [temp_106_arithop_50] 
              #                     474  alloc i32 [temp_107_value_from_ptr_50] 
              #                     477  alloc i32 [temp_108_arithop_50] 
              #                     480  alloc i32 [temp_109_arithop_50] 
              #                     482  alloc i32 [temp_110_value_from_ptr_50] 
              #                     485  alloc i32 [temp_111_arithop_50] 
              #                     488  alloc i32 [temp_112_arithop_50] 
              #                     490  alloc i32 [temp_113_value_from_ptr_50] 
              #                     493  alloc i32 [temp_114_arithop_50] 
              #                     496  alloc i32 [temp_115_arithop_50] 
              #                     498  alloc i32 [temp_116_value_from_ptr_50] 
              #                     501  alloc i32 [temp_117_arithop_50] 
              #                     504  alloc i32 [temp_118_arithop_50] 
              #                     506  alloc i32 [temp_119_value_from_ptr_50] 
              #                     509  alloc i32 [temp_120_arithop_50] 
              #                     512  alloc i32 [temp_121_arithop_50] 
              #                     514  alloc i32 [temp_122_value_from_ptr_50] 
              #                     517  alloc i32 [temp_123_arithop_50] 
              #                     520  alloc i32 [temp_124_arithop_50] 
              #                     522  alloc i32 [temp_125_value_from_ptr_50] 
              #                     525  alloc i32 [temp_126_arithop_50] 
              #                     528  alloc i32 [temp_127_arithop_50] 
              #                     530  alloc i32 [temp_128_value_from_ptr_50] 
              #                     533  alloc i32 [temp_129_arithop_50] 
              #                     536  alloc i32 [temp_130_arithop_50] 
              #                     538  alloc i32 [temp_131_value_from_ptr_50] 
              #                     541  alloc i32 [temp_132_arithop_50] 
              #                     544  alloc i32 [temp_133_arithop_50] 
              #                     546  alloc i32 [temp_134_value_from_ptr_50] 
              #                     549  alloc i32 [temp_135_arithop_50] 
              #                     552  alloc i32 [temp_136_arithop_50] 
              #                     554  alloc i32 [temp_137_value_from_ptr_50] 
              #                     557  alloc i32 [temp_138_arithop_50] 
              #                     560  alloc i32 [temp_139_arithop_50] 
              #                     562  alloc i32 [temp_140_value_from_ptr_50] 
              #                     565  alloc i32 [temp_141_arithop_50] 
              #                     568  alloc i32 [temp_142_arithop_50] 
              #                     570  alloc i32 [temp_143_value_from_ptr_50] 
              #                     573  alloc i32 [temp_144_arithop_50] 
              #                     576  alloc i32 [temp_145_arithop_50] 
              #                     578  alloc i32 [temp_146_value_from_ptr_50] 
              #                     581  alloc i32 [temp_147_arithop_50] 
              #                     584  alloc i32 [temp_148_arithop_50] 
              #                     586  alloc i32 [temp_149_value_from_ptr_50] 
              #                     589  alloc i32 [temp_150_arithop_50] 
              #                     592  alloc i32 [temp_151_arithop_50] 
              #                     594  alloc i32 [temp_152_value_from_ptr_50] 
              #                     597  alloc i32 [temp_153_arithop_50] 
              #                     600  alloc i32 [temp_154_arithop_50] 
              #                     602  alloc i32 [temp_155_value_from_ptr_50] 
              #                     605  alloc i32 [temp_156_arithop_50] 
              #                     608  alloc i32 [temp_157_arithop_50] 
              #                     610  alloc i32 [temp_158_value_from_ptr_50] 
              #                     613  alloc i32 [temp_159_arithop_50] 
              #                     616  alloc i32 [temp_160_arithop_50] 
              #                     618  alloc i32 [temp_161_value_from_ptr_50] 
              #                     621  alloc i32 [temp_162_arithop_50] 
              #                     624  alloc i32 [temp_163_arithop_50] 
              #                     626  alloc i32 [temp_164_value_from_ptr_50] 
              #                     629  alloc i32 [temp_165_arithop_50] 
              #                     632  alloc i32 [temp_166_arithop_50] 
              #                     634  alloc i32 [temp_167_value_from_ptr_50] 
              #                     637  alloc i32 [temp_168_arithop_50] 
              #                     640  alloc i32 [temp_169_arithop_50] 
              #                     642  alloc i32 [temp_170_value_from_ptr_50] 
              #                     645  alloc i32 [temp_171_arithop_50] 
              #                     648  alloc i32 [temp_172_arithop_50] 
              #                     650  alloc i32 [temp_173_value_from_ptr_50] 
              #                     653  alloc i32 [temp_174_arithop_50] 
              #                     656  alloc i32 [temp_175_arithop_50] 
              #                     658  alloc i32 [temp_176_value_from_ptr_50] 
              #                     661  alloc i32 [temp_177_arithop_50] 
              #                     664  alloc i32 [temp_178_arithop_50] 
              #                     666  alloc i32 [temp_179_value_from_ptr_50] 
              #                     669  alloc i32 [temp_180_arithop_50] 
              #                     672  alloc i32 [temp_181_arithop_50] 
              #                     674  alloc i32 [temp_182_value_from_ptr_50] 
              #                     677  alloc i32 [temp_183_arithop_50] 
              #                     680  alloc i32 [temp_184_arithop_50] 
              #                     682  alloc i32 [temp_185_value_from_ptr_50] 
              #                     685  alloc i32 [temp_186_arithop_50] 
              #                     688  alloc i32 [temp_187_arithop_50] 
              #                     690  alloc i32 [temp_188_value_from_ptr_50] 
              #                     693  alloc i32 [temp_189_arithop_50] 
              #                     696  alloc i32 [temp_190_arithop_50] 
              #                     698  alloc i32 [temp_191_value_from_ptr_50] 
              #                     701  alloc i32 [temp_192_arithop_50] 
              #                     704  alloc i32 [temp_193_arithop_50] 
              #                     706  alloc i32 [temp_194_value_from_ptr_50] 
              #                     709  alloc i32 [temp_195_arithop_50] 
              #                     712  alloc i32 [temp_196_arithop_50] 
              #                     714  alloc i32 [temp_197_value_from_ptr_50] 
              #                     717  alloc i32 [temp_198_arithop_50] 
              #                     720  alloc i32 [temp_199_arithop_50] 
              #                     722  alloc i32 [temp_200_value_from_ptr_50] 
              #                     725  alloc i32 [temp_201_arithop_50] 
              #                     728  alloc i32 [temp_202_arithop_50] 
              #                     730  alloc i32 [temp_203_value_from_ptr_50] 
              #                     733  alloc i32 [temp_204_arithop_50] 
              #                     736  alloc i32 [temp_205_arithop_50] 
              #                     738  alloc i32 [temp_206_value_from_ptr_50] 
              #                     741  alloc i32 [temp_207_arithop_50] 
              #                     744  alloc i32 [temp_208_arithop_50] 
              #                     746  alloc i32 [temp_209_value_from_ptr_50] 
              #                     749  alloc i32 [temp_210_arithop_50] 
              #                     753  alloc i32 [temp_211_arithop_50] 
              #                     755  alloc i32 [temp_212_arithop_50] 
              #                     757  alloc i32 [temp_213_arithop_50] 
              #                     759  alloc i32 [temp_214_arithop_50] 
              #                     761  alloc i32 [temp_215_arithop_50] 
              #                     763  alloc i32 [temp_216_arithop_50] 
              #                     765  alloc i32 [temp_217_arithop_50] 
              #                     767  alloc i32 [temp_218_arithop_50] 
              #                     769  alloc i32 [temp_219_arithop_50] 
              #                     771  alloc i32 [temp_220_arithop_50] 
              #                     773  alloc i32 [temp_221_arithop_50] 
              #                     775  alloc i32 [temp_222_arithop_50] 
              #                     777  alloc i32 [temp_223_arithop_50] 
              #                     779  alloc i32 [temp_224_arithop_50] 
              #                     781  alloc i32 [temp_225_arithop_50] 
              #                     783  alloc i32 [temp_226_arithop_50] 
              #                     785  alloc i32 [temp_227_arithop_50] 
              #                     787  alloc i32 [temp_228_arithop_50] 
              #                     789  alloc i32 [temp_229_arithop_50] 
              #                     791  alloc i32 [temp_230_arithop_50] 
              #                     793  alloc i32 [temp_231_arithop_50] 
              #                     795  alloc i32 [temp_232_arithop_50] 
              #                     797  alloc i32 [temp_233_arithop_50] 
              #                     799  alloc i32 [temp_234_arithop_50] 
              #                     801  alloc i32 [temp_235_arithop_50] 
              #                     803  alloc i32 [temp_236_arithop_50] 
              #                     805  alloc i32 [temp_237_arithop_50] 
              #                     807  alloc i32 [temp_238_arithop_50] 
              #                     809  alloc i32 [temp_239_arithop_50] 
              #                     811  alloc i32 [temp_240_arithop_50] 
              #                     813  alloc i32 [temp_241_arithop_50] 
              #                     815  alloc i32 [temp_242_arithop_50] 
              #                     817  alloc i32 [temp_243_arithop_50] 
              #                     819  alloc i32 [temp_244_arithop_50] 
              #                     821  alloc i32 [temp_245_arithop_50] 
              #                     823  alloc i32 [temp_246_arithop_50] 
              #                     825  alloc i32 [temp_247_value_from_ptr_50] 
              #                     828  alloc i32 [temp_248_arithop_50] 
              #                     830  alloc i32 [temp_249_value_from_ptr_50] 
              #                     833  alloc i32 [temp_250_arithop_50] 
              #                     835  alloc i32 [temp_251_value_from_ptr_50] 
              #                     838  alloc i32 [temp_252_arithop_50] 
              #                     840  alloc i32 [temp_253_value_from_ptr_50] 
              #                     843  alloc i32 [temp_254_arithop_50] 
              #                     845  alloc i32 [temp_255_value_from_ptr_50] 
              #                     848  alloc i32 [temp_256_arithop_50] 
              #                     850  alloc i32 [temp_257_value_from_ptr_50] 
              #                     853  alloc i32 [temp_258_arithop_50] 
              #                     855  alloc i32 [temp_259_value_from_ptr_50] 
              #                     858  alloc i32 [temp_260_arithop_50] 
              #                     860  alloc i32 [temp_261_value_from_ptr_50] 
              #                     863  alloc i32 [temp_262_arithop_50] 
              #                     865  alloc i32 [temp_263_value_from_ptr_50] 
              #                     868  alloc i32 [temp_264_arithop_50] 
              #                     870  alloc i32 [temp_265_value_from_ptr_50] 
              #                     873  alloc i32 [temp_266_arithop_50] 
              #                     875  alloc i32 [temp_267_value_from_ptr_50] 
              #                     878  alloc i32 [temp_268_arithop_50] 
              #                     880  alloc i32 [temp_269_value_from_ptr_50] 
              #                     883  alloc i32 [temp_270_arithop_50] 
              #                     885  alloc i32 [temp_271_value_from_ptr_50] 
              #                     888  alloc i32 [temp_272_arithop_50] 
              #                     890  alloc i32 [temp_273_value_from_ptr_50] 
              #                     893  alloc i32 [temp_274_arithop_50] 
              #                     895  alloc i32 [temp_275_value_from_ptr_50] 
              #                     898  alloc i32 [temp_276_arithop_50] 
              #                     900  alloc i32 [temp_277_value_from_ptr_50] 
              #                     903  alloc i32 [temp_278_arithop_50] 
              #                     905  alloc i32 [temp_279_value_from_ptr_50] 
              #                     908  alloc i32 [temp_280_arithop_50] 
              #                     910  alloc i32 [temp_281_value_from_ptr_50] 
              #                     913  alloc i32 [temp_282_arithop_50] 
              #                     915  alloc i32 [temp_283_value_from_ptr_50] 
              #                     918  alloc i32 [temp_284_arithop_50] 
              #                     920  alloc i32 [temp_285_value_from_ptr_50] 
              #                     923  alloc i32 [temp_286_arithop_50] 
              #                     925  alloc i32 [temp_287_value_from_ptr_50] 
              #                     928  alloc i32 [temp_288_arithop_50] 
              #                     930  alloc i32 [temp_289_value_from_ptr_50] 
              #                     933  alloc i32 [temp_290_arithop_50] 
              #                     935  alloc i32 [temp_291_value_from_ptr_50] 
              #                     938  alloc i32 [temp_292_arithop_50] 
              #                     940  alloc i32 [temp_293_value_from_ptr_50] 
              #                     943  alloc i32 [temp_294_arithop_50] 
              #                     945  alloc i32 [temp_295_value_from_ptr_50] 
              #                     948  alloc i32 [temp_296_arithop_50] 
              #                     950  alloc i32 [temp_297_value_from_ptr_50] 
              #                     953  alloc i32 [temp_298_arithop_50] 
              #                     955  alloc i32 [temp_299_value_from_ptr_50] 
              #                     958  alloc i32 [temp_300_arithop_50] 
              #                     960  alloc i32 [temp_301_value_from_ptr_50] 
              #                     963  alloc i32 [temp_302_arithop_50] 
              #                     965  alloc i32 [temp_303_value_from_ptr_50] 
              #                     968  alloc i32 [temp_304_arithop_50] 
              #                     970  alloc i32 [temp_305_value_from_ptr_50] 
              #                     973  alloc i32 [temp_306_arithop_50] 
              #                     975  alloc i32 [temp_307_value_from_ptr_50] 
              #                     978  alloc i32 [temp_308_arithop_50] 
              #                     980  alloc i32 [temp_309_value_from_ptr_50] 
              #                     983  alloc i32 [temp_310_arithop_50] 
              #                    regtab     a0:Freed { symidx: a_48_0, tracked: true } |     a1:Freed { symidx: b_48_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     115   
              #                     117  (nop) 
              #                     118  (nop) 
              #                     120   
              #                     122   
              #                     124   
              #                     126   
              #                     128   
              #                     130   
              #                     132   
              #                     134   
              #                     136   
              #                     138   
              #                     140   
              #                     142   
              #                     144   
              #                     146   
              #                     148   
              #                     150   
              #                     152   
              #                     154   
              #                     156   
              #                     158   
              #                     160   
              #                     162   
              #                     164   
              #                     166   
              #                     168   
              #                     170   
              #                     172   
              #                     174   
              #                     176   
              #                     178   
              #                     180   
              #                     182   
              #                     184   
              #                     186   
              #                     188   
              #                     190   
              #                     192  temp_1_ret_of_getint_50_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with a_48_0
              #                    store to a_48_0 in mem offset legal
    sw      a0,836(sp)
              #                    release a0 with a_48_0
              #                    occupy a1 with b_48_0
              #                    store to b_48_0 in mem offset legal
    sw      a1,832(sp)
              #                    release a1 with b_48_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     193  (nop) 
              #                     195  temp_2_ret_of_getint_50_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_1_ret_of_getint_50_0
              #                    store to temp_1_ret_of_getint_50_0 in mem offset legal
    sw      a0,676(sp)
              #                    release a0 with temp_1_ret_of_getint_50_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     196  (nop) 
              #                     198  temp_3_ret_of_getint_50_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_2_ret_of_getint_50_0
              #                    store to temp_2_ret_of_getint_50_0 in mem offset legal
    sw      a0,672(sp)
              #                    release a0 with temp_2_ret_of_getint_50_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     199  (nop) 
              #                     201  temp_4_ret_of_getint_50_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_3_ret_of_getint_50_0
              #                    store to temp_3_ret_of_getint_50_0 in mem offset legal
    sw      a0,668(sp)
              #                    release a0 with temp_3_ret_of_getint_50_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     202  (nop) 
              #                     204  temp_5_arithop_50_0 = Add i32 1_0, temp_1_ret_of_getint_50_0 
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_1_ret_of_getint_50_0
              #                    load from temp_1_ret_of_getint_50_0 in mem


    lw      a2,676(sp)
              #                    occupy a3 with temp_5_arithop_50_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     206  temp_6_value_from_ptr_50_0 = load *a1_0:ptr->i32 
              #                    occupy a4 with *a1_0
              #                       load label a1 as ptr to reg
    la      a4, a1
              #                    occupy reg a4 with *a1_0
              #                    occupy a5 with temp_6_value_from_ptr_50_0
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     207  mu a1_0_0:206 
              #                     209  temp_7_arithop_50_0 = Add i32 temp_5_arithop_50_0, temp_6_value_from_ptr_50_0 
              #                    occupy a3 with temp_5_arithop_50_0
              #                    occupy a5 with temp_6_value_from_ptr_50_0
              #                    occupy a6 with temp_7_arithop_50_0
    ADDW    a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                     1084 untrack temp_5_arithop_50_0 
              #                    occupy a3 with temp_5_arithop_50_0
              #                    release a3 with temp_5_arithop_50_0
              #                     210  (nop) 
              #                     212  temp_8_arithop_50_0 = Add i32 2_0, temp_2_ret_of_getint_50_0 
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a7 with temp_2_ret_of_getint_50_0
              #                    load from temp_2_ret_of_getint_50_0 in mem


    lw      a7,672(sp)
              #                    occupy s1 with temp_8_arithop_50_0
    ADDW    s1,a3,a7
              #                    free a3
              #                    free a7
              #                    free s1
              #                     214  temp_9_value_from_ptr_50_0 = load *a2_0:ptr->i32 
              #                    occupy s2 with *a2_0
              #                       load label a2 as ptr to reg
    la      s2, a2
              #                    occupy reg s2 with *a2_0
              #                    occupy s3 with temp_9_value_from_ptr_50_0
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                     215  mu a2_0_0:214 
              #                     217  temp_10_arithop_50_0 = Add i32 temp_8_arithop_50_0, temp_9_value_from_ptr_50_0 
              #                    occupy s1 with temp_8_arithop_50_0
              #                    occupy s3 with temp_9_value_from_ptr_50_0
              #                    occupy s4 with temp_10_arithop_50_0
    ADDW    s4,s1,s3
              #                    free s1
              #                    free s3
              #                    free s4
              #                     1067 untrack temp_8_arithop_50_0 
              #                    occupy s1 with temp_8_arithop_50_0
              #                    release s1 with temp_8_arithop_50_0
              #                     218  (nop) 
              #                     220  temp_11_arithop_50_0 = Add i32 3_0, temp_3_ret_of_getint_50_0 
              #                    occupy s1 with 3_0
    li      s1, 3
              #                    occupy s5 with temp_3_ret_of_getint_50_0
              #                    load from temp_3_ret_of_getint_50_0 in mem


    lw      s5,668(sp)
              #                    occupy s6 with temp_11_arithop_50_0
    ADDW    s6,s1,s5
              #                    free s1
              #                    free s5
              #                    free s6
              #                     222  temp_12_value_from_ptr_50_0 = load *a3_0:ptr->i32 
              #                    occupy s7 with *a3_0
              #                       load label a3 as ptr to reg
    la      s7, a3
              #                    occupy reg s7 with *a3_0
              #                    occupy s8 with temp_12_value_from_ptr_50_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_12_value_from_ptr_50_0
              #                    store to temp_12_value_from_ptr_50_0 in mem offset legal
    sw      s8,632(sp)
              #                    release s8 with temp_12_value_from_ptr_50_0
              #                    free s7
              #                     223  mu a3_0_0:222 
              #                     225  temp_13_arithop_50_0 = Add i32 temp_11_arithop_50_0, temp_12_value_from_ptr_50_0 
              #                    occupy s6 with temp_11_arithop_50_0
              #                    occupy s7 with temp_12_value_from_ptr_50_0
              #                    load from temp_12_value_from_ptr_50_0 in mem


    lw      s7,632(sp)
              #                    occupy s8 with temp_13_arithop_50_0
    ADDW    s8,s6,s7
              #                    free s6
              #                    occupy s6 with temp_11_arithop_50_0
              #                    store to temp_11_arithop_50_0 in mem offset legal
    sw      s6,636(sp)
              #                    release s6 with temp_11_arithop_50_0
              #                    free s7
              #                    occupy s7 with temp_12_value_from_ptr_50_0
              #                    store to temp_12_value_from_ptr_50_0 in mem offset legal
    sw      s7,632(sp)
              #                    release s7 with temp_12_value_from_ptr_50_0
              #                    free s8
              #                     1083 untrack temp_11_arithop_50_0 
              #                     226  (nop) 
              #                     228  temp_14_arithop_50_0 = Add i32 4_0, temp_4_ret_of_getint_50_0 
              #                    occupy s6 with 4_0
    li      s6, 4
              #                    occupy a0 with temp_4_ret_of_getint_50_0
              #                    occupy s7 with temp_14_arithop_50_0
    ADDW    s7,s6,a0
              #                    free s6
              #                    free a0
              #                    occupy a0 with temp_4_ret_of_getint_50_0
              #                    store to temp_4_ret_of_getint_50_0 in mem offset legal
    sw      a0,664(sp)
              #                    release a0 with temp_4_ret_of_getint_50_0
              #                    free s7
              #                     230  temp_15_value_from_ptr_50_0 = load *a4_0:ptr->i32 
              #                    occupy a0 with *a4_0
              #                       load label a4 as ptr to reg
    la      a0, a4
              #                    occupy reg a0 with *a4_0
              #                    occupy s6 with temp_15_value_from_ptr_50_0
    lw      s6,0(a0)
              #                    free s6
              #                    occupy s6 with temp_15_value_from_ptr_50_0
              #                    store to temp_15_value_from_ptr_50_0 in mem offset legal
    sw      s6,620(sp)
              #                    release s6 with temp_15_value_from_ptr_50_0
              #                    free a0
              #                     231  mu a4_0_0:230 
              #                     233  temp_16_arithop_50_0 = Add i32 temp_14_arithop_50_0, temp_15_value_from_ptr_50_0 
              #                    occupy s7 with temp_14_arithop_50_0
              #                    occupy a0 with temp_15_value_from_ptr_50_0
              #                    load from temp_15_value_from_ptr_50_0 in mem


    lw      a0,620(sp)
              #                    occupy s6 with temp_16_arithop_50_0
    ADDW    s6,s7,a0
              #                    free s7
              #                    occupy s7 with temp_14_arithop_50_0
              #                    store to temp_14_arithop_50_0 in mem offset legal
    sw      s7,624(sp)
              #                    release s7 with temp_14_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_15_value_from_ptr_50_0
              #                    store to temp_15_value_from_ptr_50_0 in mem offset legal
    sw      a0,620(sp)
              #                    release a0 with temp_15_value_from_ptr_50_0
              #                    free s6
              #                     1032 untrack temp_14_arithop_50_0 
              #                     234  (nop) 
              #                     236  temp_17_arithop_50_0 = Add i32 1_0, temp_7_arithop_50_0 
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy a6 with temp_7_arithop_50_0
              #                    occupy a0 with temp_17_arithop_50_0
    ADDW    a0,a1,a6
              #                    free a1
              #                    free a6
              #                    free a0
              #                     238  temp_18_value_from_ptr_50_0 = load *a5_0:ptr->i32 
              #                    occupy a1 with *a5_0
              #                       load label a5 as ptr to reg
    la      a1, a5
              #                    occupy reg a1 with *a5_0
              #                    occupy s7 with temp_18_value_from_ptr_50_0
    lw      s7,0(a1)
              #                    free s7
              #                    occupy s7 with temp_18_value_from_ptr_50_0
              #                    store to temp_18_value_from_ptr_50_0 in mem offset legal
    sw      s7,608(sp)
              #                    release s7 with temp_18_value_from_ptr_50_0
              #                    free a1
              #                     239  mu a5_0_0:238 
              #                     241  temp_19_arithop_50_0 = Add i32 temp_17_arithop_50_0, temp_18_value_from_ptr_50_0 
              #                    occupy a0 with temp_17_arithop_50_0
              #                    occupy a1 with temp_18_value_from_ptr_50_0
              #                    load from temp_18_value_from_ptr_50_0 in mem


    lw      a1,608(sp)
              #                    occupy s7 with temp_19_arithop_50_0
    ADDW    s7,a0,a1
              #                    free a0
              #                    occupy a0 with temp_17_arithop_50_0
              #                    store to temp_17_arithop_50_0 in mem offset legal
    sw      a0,612(sp)
              #                    release a0 with temp_17_arithop_50_0
              #                    free a1
              #                    occupy a1 with temp_18_value_from_ptr_50_0
              #                    store to temp_18_value_from_ptr_50_0 in mem offset legal
    sw      a1,608(sp)
              #                    release a1 with temp_18_value_from_ptr_50_0
              #                    free s7
              #                     1039 untrack temp_17_arithop_50_0 
              #                     242  (nop) 
              #                     244  temp_20_arithop_50_0 = Add i32 2_0, temp_10_arithop_50_0 
              #                    found literal reg Some(a3) already exist with 2_0
              #                    occupy a3 with 2_0
              #                    occupy s4 with temp_10_arithop_50_0
              #                    occupy a0 with temp_20_arithop_50_0
    ADDW    a0,a3,s4
              #                    free a3
              #                    free s4
              #                    free a0
              #                     246  temp_21_value_from_ptr_50_0 = load *a6_0:ptr->i32 
              #                    occupy a1 with *a6_0
              #                       load label a6 as ptr to reg
    la      a1, a6
              #                    occupy reg a1 with *a6_0
              #                    occupy a3 with temp_21_value_from_ptr_50_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_21_value_from_ptr_50_0
              #                    store to temp_21_value_from_ptr_50_0 in mem offset legal
    sw      a3,596(sp)
              #                    release a3 with temp_21_value_from_ptr_50_0
              #                    free a1
              #                     247  mu a6_0_0:246 
              #                     249  temp_22_arithop_50_0 = Add i32 temp_20_arithop_50_0, temp_21_value_from_ptr_50_0 
              #                    occupy a0 with temp_20_arithop_50_0
              #                    occupy a1 with temp_21_value_from_ptr_50_0
              #                    load from temp_21_value_from_ptr_50_0 in mem


    lw      a1,596(sp)
              #                    occupy a3 with temp_22_arithop_50_0
    ADDW    a3,a0,a1
              #                    free a0
              #                    occupy a0 with temp_20_arithop_50_0
              #                    store to temp_20_arithop_50_0 in mem offset legal
    sw      a0,600(sp)
              #                    release a0 with temp_20_arithop_50_0
              #                    free a1
              #                    occupy a1 with temp_21_value_from_ptr_50_0
              #                    store to temp_21_value_from_ptr_50_0 in mem offset legal
    sw      a1,596(sp)
              #                    release a1 with temp_21_value_from_ptr_50_0
              #                    free a3
              #                     1024 untrack temp_20_arithop_50_0 
              #                     250  (nop) 
              #                     252  temp_23_arithop_50_0 = Add i32 3_0, temp_13_arithop_50_0 
              #                    found literal reg Some(s1) already exist with 3_0
              #                    occupy s1 with 3_0
              #                    occupy s8 with temp_13_arithop_50_0
              #                    occupy a0 with temp_23_arithop_50_0
    ADDW    a0,s1,s8
              #                    free s1
              #                    free s8
              #                    free a0
              #                     254  temp_24_value_from_ptr_50_0 = load *a7_0:ptr->i32 
              #                    occupy a1 with *a7_0
              #                       load label a7 as ptr to reg
    la      a1, a7
              #                    occupy reg a1 with *a7_0
              #                    occupy s1 with temp_24_value_from_ptr_50_0
    lw      s1,0(a1)
              #                    free s1
              #                    occupy s1 with temp_24_value_from_ptr_50_0
              #                    store to temp_24_value_from_ptr_50_0 in mem offset legal
    sw      s1,584(sp)
              #                    release s1 with temp_24_value_from_ptr_50_0
              #                    free a1
              #                     255  mu a7_0_0:254 
              #                     257  temp_25_arithop_50_0 = Add i32 temp_23_arithop_50_0, temp_24_value_from_ptr_50_0 
              #                    occupy a0 with temp_23_arithop_50_0
              #                    occupy a1 with temp_24_value_from_ptr_50_0
              #                    load from temp_24_value_from_ptr_50_0 in mem


    lw      a1,584(sp)
              #                    occupy s1 with temp_25_arithop_50_0
    ADDW    s1,a0,a1
              #                    free a0
              #                    occupy a0 with temp_23_arithop_50_0
              #                    store to temp_23_arithop_50_0 in mem offset legal
    sw      a0,588(sp)
              #                    release a0 with temp_23_arithop_50_0
              #                    free a1
              #                    occupy a1 with temp_24_value_from_ptr_50_0
              #                    store to temp_24_value_from_ptr_50_0 in mem offset legal
    sw      a1,584(sp)
              #                    release a1 with temp_24_value_from_ptr_50_0
              #                    free s1
              #                     1147 untrack temp_23_arithop_50_0 
              #                     258  (nop) 
              #                     260  temp_26_arithop_50_0 = Add i32 4_0, temp_16_arithop_50_0 
              #                    occupy a0 with 4_0
    li      a0, 4
              #                    occupy s6 with temp_16_arithop_50_0
              #                    occupy a1 with temp_26_arithop_50_0
    ADDW    a1,a0,s6
              #                    free a0
              #                    free s6
              #                    occupy s6 with temp_16_arithop_50_0
              #                    store to temp_16_arithop_50_0 in mem offset legal
    sw      s6,616(sp)
              #                    release s6 with temp_16_arithop_50_0
              #                    free a1
              #                     262  temp_27_value_from_ptr_50_0 = load *a8_0:ptr->i32 
              #                    occupy a0 with *a8_0
              #                       load label a8 as ptr to reg
    la      a0, a8
              #                    occupy reg a0 with *a8_0
              #                    occupy s6 with temp_27_value_from_ptr_50_0
    lw      s6,0(a0)
              #                    free s6
              #                    occupy s6 with temp_27_value_from_ptr_50_0
              #                    store to temp_27_value_from_ptr_50_0 in mem offset legal
    sw      s6,572(sp)
              #                    release s6 with temp_27_value_from_ptr_50_0
              #                    free a0
              #                     263  mu a8_0_0:262 
              #                     265  temp_28_arithop_50_0 = Add i32 temp_26_arithop_50_0, temp_27_value_from_ptr_50_0 
              #                    occupy a1 with temp_26_arithop_50_0
              #                    occupy a0 with temp_27_value_from_ptr_50_0
              #                    load from temp_27_value_from_ptr_50_0 in mem


    lw      a0,572(sp)
              #                    occupy s6 with temp_28_arithop_50_0
    ADDW    s6,a1,a0
              #                    free a1
              #                    occupy a1 with temp_26_arithop_50_0
              #                    store to temp_26_arithop_50_0 in mem offset legal
    sw      a1,576(sp)
              #                    release a1 with temp_26_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_27_value_from_ptr_50_0
              #                    store to temp_27_value_from_ptr_50_0 in mem offset legal
    sw      a0,572(sp)
              #                    release a0 with temp_27_value_from_ptr_50_0
              #                    free s6
              #                     1055 untrack temp_26_arithop_50_0 
              #                     266  (nop) 
              #                     268  temp_29_arithop_50_0 = Add i32 1_0, temp_19_arithop_50_0 
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s7 with temp_19_arithop_50_0
              #                    occupy a1 with temp_29_arithop_50_0
    ADDW    a1,a0,s7
              #                    free a0
              #                    free s7
              #                    occupy s7 with temp_19_arithop_50_0
              #                    store to temp_19_arithop_50_0 in mem offset legal
    sw      s7,604(sp)
              #                    release s7 with temp_19_arithop_50_0
              #                    free a1
              #                     270  temp_30_value_from_ptr_50_0 = load *a9_0:ptr->i32 
              #                    occupy a0 with *a9_0
              #                       load label a9 as ptr to reg
    la      a0, a9
              #                    occupy reg a0 with *a9_0
              #                    occupy s7 with temp_30_value_from_ptr_50_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_30_value_from_ptr_50_0
              #                    store to temp_30_value_from_ptr_50_0 in mem offset legal
    sw      s7,560(sp)
              #                    release s7 with temp_30_value_from_ptr_50_0
              #                    free a0
              #                     271  mu a9_0_0:270 
              #                     273  temp_31_arithop_50_0 = Add i32 temp_29_arithop_50_0, temp_30_value_from_ptr_50_0 
              #                    occupy a1 with temp_29_arithop_50_0
              #                    occupy a0 with temp_30_value_from_ptr_50_0
              #                    load from temp_30_value_from_ptr_50_0 in mem


    lw      a0,560(sp)
              #                    occupy s7 with temp_31_arithop_50_0
    ADDW    s7,a1,a0
              #                    free a1
              #                    occupy a1 with temp_29_arithop_50_0
              #                    store to temp_29_arithop_50_0 in mem offset legal
    sw      a1,564(sp)
              #                    release a1 with temp_29_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_30_value_from_ptr_50_0
              #                    store to temp_30_value_from_ptr_50_0 in mem offset legal
    sw      a0,560(sp)
              #                    release a0 with temp_30_value_from_ptr_50_0
              #                    free s7
              #                     1134 untrack temp_29_arithop_50_0 
              #                     274  (nop) 
              #                     276  temp_32_arithop_50_0 = Add i32 2_0, temp_22_arithop_50_0 
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy a3 with temp_22_arithop_50_0
              #                    occupy a1 with temp_32_arithop_50_0
    ADDW    a1,a0,a3
              #                    free a0
              #                    free a3
              #                    occupy a3 with temp_22_arithop_50_0
              #                    store to temp_22_arithop_50_0 in mem offset legal
    sw      a3,592(sp)
              #                    release a3 with temp_22_arithop_50_0
              #                    free a1
              #                     278  temp_33_value_from_ptr_50_0 = load *a10_0:ptr->i32 
              #                    occupy a0 with *a10_0
              #                       load label a10 as ptr to reg
    la      a0, a10
              #                    occupy reg a0 with *a10_0
              #                    occupy a3 with temp_33_value_from_ptr_50_0
    lw      a3,0(a0)
              #                    free a3
              #                    occupy a3 with temp_33_value_from_ptr_50_0
              #                    store to temp_33_value_from_ptr_50_0 in mem offset legal
    sw      a3,548(sp)
              #                    release a3 with temp_33_value_from_ptr_50_0
              #                    free a0
              #                     279  mu a10_0_0:278 
              #                     281  temp_34_arithop_50_0 = Add i32 temp_32_arithop_50_0, temp_33_value_from_ptr_50_0 
              #                    occupy a1 with temp_32_arithop_50_0
              #                    occupy a0 with temp_33_value_from_ptr_50_0
              #                    load from temp_33_value_from_ptr_50_0 in mem


    lw      a0,548(sp)
              #                    occupy a3 with temp_34_arithop_50_0
    ADDW    a3,a1,a0
              #                    free a1
              #                    occupy a1 with temp_32_arithop_50_0
              #                    store to temp_32_arithop_50_0 in mem offset legal
    sw      a1,552(sp)
              #                    release a1 with temp_32_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_33_value_from_ptr_50_0
              #                    store to temp_33_value_from_ptr_50_0 in mem offset legal
    sw      a0,548(sp)
              #                    release a0 with temp_33_value_from_ptr_50_0
              #                    free a3
              #                     1066 untrack temp_32_arithop_50_0 
              #                     282  (nop) 
              #                     284  temp_35_arithop_50_0 = Add i32 3_0, temp_25_arithop_50_0 
              #                    occupy a0 with 3_0
    li      a0, 3
              #                    occupy s1 with temp_25_arithop_50_0
              #                    occupy a1 with temp_35_arithop_50_0
    ADDW    a1,a0,s1
              #                    free a0
              #                    free s1
              #                    occupy s1 with temp_25_arithop_50_0
              #                    store to temp_25_arithop_50_0 in mem offset legal
    sw      s1,580(sp)
              #                    release s1 with temp_25_arithop_50_0
              #                    free a1
              #                     286  temp_36_value_from_ptr_50_0 = load *a11_0:ptr->i32 
              #                    occupy a0 with *a11_0
              #                       load label a11 as ptr to reg
    la      a0, a11
              #                    occupy reg a0 with *a11_0
              #                    occupy s1 with temp_36_value_from_ptr_50_0
    lw      s1,0(a0)
              #                    free s1
              #                    occupy s1 with temp_36_value_from_ptr_50_0
              #                    store to temp_36_value_from_ptr_50_0 in mem offset legal
    sw      s1,536(sp)
              #                    release s1 with temp_36_value_from_ptr_50_0
              #                    free a0
              #                     287  mu a11_0_0:286 
              #                     289  temp_37_arithop_50_0 = Add i32 temp_35_arithop_50_0, temp_36_value_from_ptr_50_0 
              #                    occupy a1 with temp_35_arithop_50_0
              #                    occupy a0 with temp_36_value_from_ptr_50_0
              #                    load from temp_36_value_from_ptr_50_0 in mem


    lw      a0,536(sp)
              #                    occupy s1 with temp_37_arithop_50_0
    ADDW    s1,a1,a0
              #                    free a1
              #                    occupy a1 with temp_35_arithop_50_0
              #                    store to temp_35_arithop_50_0 in mem offset legal
    sw      a1,540(sp)
              #                    release a1 with temp_35_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_36_value_from_ptr_50_0
              #                    store to temp_36_value_from_ptr_50_0 in mem offset legal
    sw      a0,536(sp)
              #                    release a0 with temp_36_value_from_ptr_50_0
              #                    free s1
              #                     1077 untrack temp_35_arithop_50_0 
              #                     290  (nop) 
              #                     292  temp_38_arithop_50_0 = Add i32 4_0, temp_28_arithop_50_0 
              #                    occupy a0 with 4_0
    li      a0, 4
              #                    occupy s6 with temp_28_arithop_50_0
              #                    occupy a1 with temp_38_arithop_50_0
    ADDW    a1,a0,s6
              #                    free a0
              #                    free s6
              #                    occupy s6 with temp_28_arithop_50_0
              #                    store to temp_28_arithop_50_0 in mem offset legal
    sw      s6,568(sp)
              #                    release s6 with temp_28_arithop_50_0
              #                    free a1
              #                     294  temp_39_value_from_ptr_50_0 = load *a12_0:ptr->i32 
              #                    occupy a0 with *a12_0
              #                       load label a12 as ptr to reg
    la      a0, a12
              #                    occupy reg a0 with *a12_0
              #                    occupy s6 with temp_39_value_from_ptr_50_0
    lw      s6,0(a0)
              #                    free s6
              #                    occupy s6 with temp_39_value_from_ptr_50_0
              #                    store to temp_39_value_from_ptr_50_0 in mem offset legal
    sw      s6,524(sp)
              #                    release s6 with temp_39_value_from_ptr_50_0
              #                    free a0
              #                     295  mu a12_0_0:294 
              #                     297  temp_40_arithop_50_0 = Add i32 temp_38_arithop_50_0, temp_39_value_from_ptr_50_0 
              #                    occupy a1 with temp_38_arithop_50_0
              #                    occupy a0 with temp_39_value_from_ptr_50_0
              #                    load from temp_39_value_from_ptr_50_0 in mem


    lw      a0,524(sp)
              #                    occupy s6 with temp_40_arithop_50_0
    ADDW    s6,a1,a0
              #                    free a1
              #                    occupy a1 with temp_38_arithop_50_0
              #                    store to temp_38_arithop_50_0 in mem offset legal
    sw      a1,528(sp)
              #                    release a1 with temp_38_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_39_value_from_ptr_50_0
              #                    store to temp_39_value_from_ptr_50_0 in mem offset legal
    sw      a0,524(sp)
              #                    release a0 with temp_39_value_from_ptr_50_0
              #                    free s6
              #                     1054 untrack temp_38_arithop_50_0 
              #                     298  (nop) 
              #                     300  temp_41_arithop_50_0 = Add i32 1_0, temp_31_arithop_50_0 
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s7 with temp_31_arithop_50_0
              #                    occupy a1 with temp_41_arithop_50_0
    ADDW    a1,a0,s7
              #                    free a0
              #                    free s7
              #                    occupy s7 with temp_31_arithop_50_0
              #                    store to temp_31_arithop_50_0 in mem offset legal
    sw      s7,556(sp)
              #                    release s7 with temp_31_arithop_50_0
              #                    free a1
              #                     302  temp_42_value_from_ptr_50_0 = load *a13_0:ptr->i32 
              #                    occupy a0 with *a13_0
              #                       load label a13 as ptr to reg
    la      a0, a13
              #                    occupy reg a0 with *a13_0
              #                    occupy s7 with temp_42_value_from_ptr_50_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_42_value_from_ptr_50_0
              #                    store to temp_42_value_from_ptr_50_0 in mem offset legal
    sw      s7,512(sp)
              #                    release s7 with temp_42_value_from_ptr_50_0
              #                    free a0
              #                     303  mu a13_0_0:302 
              #                     305  temp_43_arithop_50_0 = Add i32 temp_41_arithop_50_0, temp_42_value_from_ptr_50_0 
              #                    occupy a1 with temp_41_arithop_50_0
              #                    occupy a0 with temp_42_value_from_ptr_50_0
              #                    load from temp_42_value_from_ptr_50_0 in mem


    lw      a0,512(sp)
              #                    occupy s7 with temp_43_arithop_50_0
    ADDW    s7,a1,a0
              #                    free a1
              #                    occupy a1 with temp_41_arithop_50_0
              #                    store to temp_41_arithop_50_0 in mem offset legal
    sw      a1,516(sp)
              #                    release a1 with temp_41_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_42_value_from_ptr_50_0
              #                    store to temp_42_value_from_ptr_50_0 in mem offset legal
    sw      a0,512(sp)
              #                    release a0 with temp_42_value_from_ptr_50_0
              #                    free s7
              #                     1166 untrack temp_41_arithop_50_0 
              #                     306  (nop) 
              #                     308  temp_44_arithop_50_0 = Add i32 2_0, temp_34_arithop_50_0 
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy a3 with temp_34_arithop_50_0
              #                    occupy a1 with temp_44_arithop_50_0
    ADDW    a1,a0,a3
              #                    free a0
              #                    free a3
              #                    occupy a3 with temp_34_arithop_50_0
              #                    store to temp_34_arithop_50_0 in mem offset legal
    sw      a3,544(sp)
              #                    release a3 with temp_34_arithop_50_0
              #                    free a1
              #                     310  temp_45_value_from_ptr_50_0 = load *a14_0:ptr->i32 
              #                    occupy a0 with *a14_0
              #                       load label a14 as ptr to reg
    la      a0, a14
              #                    occupy reg a0 with *a14_0
              #                    occupy a3 with temp_45_value_from_ptr_50_0
    lw      a3,0(a0)
              #                    free a3
              #                    occupy a3 with temp_45_value_from_ptr_50_0
              #                    store to temp_45_value_from_ptr_50_0 in mem offset legal
    sw      a3,500(sp)
              #                    release a3 with temp_45_value_from_ptr_50_0
              #                    free a0
              #                     311  mu a14_0_0:310 
              #                     313  temp_46_arithop_50_0 = Add i32 temp_44_arithop_50_0, temp_45_value_from_ptr_50_0 
              #                    occupy a1 with temp_44_arithop_50_0
              #                    occupy a0 with temp_45_value_from_ptr_50_0
              #                    load from temp_45_value_from_ptr_50_0 in mem


    lw      a0,500(sp)
              #                    occupy a3 with temp_46_arithop_50_0
    ADDW    a3,a1,a0
              #                    free a1
              #                    occupy a1 with temp_44_arithop_50_0
              #                    store to temp_44_arithop_50_0 in mem offset legal
    sw      a1,504(sp)
              #                    release a1 with temp_44_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_45_value_from_ptr_50_0
              #                    store to temp_45_value_from_ptr_50_0 in mem offset legal
    sw      a0,500(sp)
              #                    release a0 with temp_45_value_from_ptr_50_0
              #                    free a3
              #                     1128 untrack temp_44_arithop_50_0 
              #                     314  (nop) 
              #                     316  temp_47_arithop_50_0 = Add i32 3_0, temp_37_arithop_50_0 
              #                    occupy a0 with 3_0
    li      a0, 3
              #                    occupy s1 with temp_37_arithop_50_0
              #                    occupy a1 with temp_47_arithop_50_0
    ADDW    a1,a0,s1
              #                    free a0
              #                    free s1
              #                    occupy s1 with temp_37_arithop_50_0
              #                    store to temp_37_arithop_50_0 in mem offset legal
    sw      s1,532(sp)
              #                    release s1 with temp_37_arithop_50_0
              #                    free a1
              #                     318  temp_48_value_from_ptr_50_0 = load *a15_0:ptr->i32 
              #                    occupy a0 with *a15_0
              #                       load label a15 as ptr to reg
    la      a0, a15
              #                    occupy reg a0 with *a15_0
              #                    occupy s1 with temp_48_value_from_ptr_50_0
    lw      s1,0(a0)
              #                    free s1
              #                    occupy s1 with temp_48_value_from_ptr_50_0
              #                    store to temp_48_value_from_ptr_50_0 in mem offset legal
    sw      s1,488(sp)
              #                    release s1 with temp_48_value_from_ptr_50_0
              #                    free a0
              #                     319  mu a15_0_0:318 
              #                     321  temp_49_arithop_50_0 = Add i32 temp_47_arithop_50_0, temp_48_value_from_ptr_50_0 
              #                    occupy a1 with temp_47_arithop_50_0
              #                    occupy a0 with temp_48_value_from_ptr_50_0
              #                    load from temp_48_value_from_ptr_50_0 in mem


    lw      a0,488(sp)
              #                    occupy s1 with temp_49_arithop_50_0
    ADDW    s1,a1,a0
              #                    free a1
              #                    occupy a1 with temp_47_arithop_50_0
              #                    store to temp_47_arithop_50_0 in mem offset legal
    sw      a1,492(sp)
              #                    release a1 with temp_47_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_48_value_from_ptr_50_0
              #                    store to temp_48_value_from_ptr_50_0 in mem offset legal
    sw      a0,488(sp)
              #                    release a0 with temp_48_value_from_ptr_50_0
              #                    free s1
              #                     1163 untrack temp_47_arithop_50_0 
              #                     322  (nop) 
              #                     324  temp_50_arithop_50_0 = Add i32 4_0, temp_40_arithop_50_0 
              #                    occupy a0 with 4_0
    li      a0, 4
              #                    occupy s6 with temp_40_arithop_50_0
              #                    occupy a1 with temp_50_arithop_50_0
    ADDW    a1,a0,s6
              #                    free a0
              #                    free s6
              #                    occupy s6 with temp_40_arithop_50_0
              #                    store to temp_40_arithop_50_0 in mem offset legal
    sw      s6,520(sp)
              #                    release s6 with temp_40_arithop_50_0
              #                    free a1
              #                     326  temp_51_value_from_ptr_50_0 = load *a16_0:ptr->i32 
              #                    occupy a0 with *a16_0
              #                       load label a16 as ptr to reg
    la      a0, a16
              #                    occupy reg a0 with *a16_0
              #                    occupy s6 with temp_51_value_from_ptr_50_0
    lw      s6,0(a0)
              #                    free s6
              #                    occupy s6 with temp_51_value_from_ptr_50_0
              #                    store to temp_51_value_from_ptr_50_0 in mem offset legal
    sw      s6,476(sp)
              #                    release s6 with temp_51_value_from_ptr_50_0
              #                    free a0
              #                     327  mu a16_0_0:326 
              #                     329  temp_52_arithop_50_0 = Add i32 temp_50_arithop_50_0, temp_51_value_from_ptr_50_0 
              #                    occupy a1 with temp_50_arithop_50_0
              #                    occupy a0 with temp_51_value_from_ptr_50_0
              #                    load from temp_51_value_from_ptr_50_0 in mem


    lw      a0,476(sp)
              #                    occupy s6 with temp_52_arithop_50_0
    ADDW    s6,a1,a0
              #                    free a1
              #                    occupy a1 with temp_50_arithop_50_0
              #                    store to temp_50_arithop_50_0 in mem offset legal
    sw      a1,480(sp)
              #                    release a1 with temp_50_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_51_value_from_ptr_50_0
              #                    store to temp_51_value_from_ptr_50_0 in mem offset legal
    sw      a0,476(sp)
              #                    release a0 with temp_51_value_from_ptr_50_0
              #                    free s6
              #                     1108 untrack temp_50_arithop_50_0 
              #                     330  (nop) 
              #                     332  temp_53_arithop_50_0 = Add i32 1_0, temp_43_arithop_50_0 
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s7 with temp_43_arithop_50_0
              #                    occupy a1 with temp_53_arithop_50_0
    ADDW    a1,a0,s7
              #                    free a0
              #                    free s7
              #                    occupy s7 with temp_43_arithop_50_0
              #                    store to temp_43_arithop_50_0 in mem offset legal
    sw      s7,508(sp)
              #                    release s7 with temp_43_arithop_50_0
              #                    free a1
              #                     334  temp_54_value_from_ptr_50_0 = load *a17_0:ptr->i32 
              #                    occupy a0 with *a17_0
              #                       load label a17 as ptr to reg
    la      a0, a17
              #                    occupy reg a0 with *a17_0
              #                    occupy s7 with temp_54_value_from_ptr_50_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_54_value_from_ptr_50_0
              #                    store to temp_54_value_from_ptr_50_0 in mem offset legal
    sw      s7,464(sp)
              #                    release s7 with temp_54_value_from_ptr_50_0
              #                    free a0
              #                     335  mu a17_0_0:334 
              #                     337  temp_55_arithop_50_0 = Add i32 temp_53_arithop_50_0, temp_54_value_from_ptr_50_0 
              #                    occupy a1 with temp_53_arithop_50_0
              #                    occupy a0 with temp_54_value_from_ptr_50_0
              #                    load from temp_54_value_from_ptr_50_0 in mem


    lw      a0,464(sp)
              #                    occupy s7 with temp_55_arithop_50_0
    ADDW    s7,a1,a0
              #                    free a1
              #                    occupy a1 with temp_53_arithop_50_0
              #                    store to temp_53_arithop_50_0 in mem offset legal
    sw      a1,468(sp)
              #                    release a1 with temp_53_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_54_value_from_ptr_50_0
              #                    store to temp_54_value_from_ptr_50_0 in mem offset legal
    sw      a0,464(sp)
              #                    release a0 with temp_54_value_from_ptr_50_0
              #                    free s7
              #                     1141 untrack temp_53_arithop_50_0 
              #                     338  (nop) 
              #                     340  temp_56_arithop_50_0 = Add i32 2_0, temp_46_arithop_50_0 
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy a3 with temp_46_arithop_50_0
              #                    occupy a1 with temp_56_arithop_50_0
    ADDW    a1,a0,a3
              #                    free a0
              #                    free a3
              #                    occupy a3 with temp_46_arithop_50_0
              #                    store to temp_46_arithop_50_0 in mem offset legal
    sw      a3,496(sp)
              #                    release a3 with temp_46_arithop_50_0
              #                    free a1
              #                     342  temp_57_value_from_ptr_50_0 = load *a18_0:ptr->i32 
              #                    occupy a0 with *a18_0
              #                       load label a18 as ptr to reg
    la      a0, a18
              #                    occupy reg a0 with *a18_0
              #                    occupy a3 with temp_57_value_from_ptr_50_0
    lw      a3,0(a0)
              #                    free a3
              #                    occupy a3 with temp_57_value_from_ptr_50_0
              #                    store to temp_57_value_from_ptr_50_0 in mem offset legal
    sw      a3,452(sp)
              #                    release a3 with temp_57_value_from_ptr_50_0
              #                    free a0
              #                     343  mu a18_0_0:342 
              #                     345  temp_58_arithop_50_0 = Add i32 temp_56_arithop_50_0, temp_57_value_from_ptr_50_0 
              #                    occupy a1 with temp_56_arithop_50_0
              #                    occupy a0 with temp_57_value_from_ptr_50_0
              #                    load from temp_57_value_from_ptr_50_0 in mem


    lw      a0,452(sp)
              #                    occupy a3 with temp_58_arithop_50_0
    ADDW    a3,a1,a0
              #                    free a1
              #                    occupy a1 with temp_56_arithop_50_0
              #                    store to temp_56_arithop_50_0 in mem offset legal
    sw      a1,456(sp)
              #                    release a1 with temp_56_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_57_value_from_ptr_50_0
              #                    store to temp_57_value_from_ptr_50_0 in mem offset legal
    sw      a0,452(sp)
              #                    release a0 with temp_57_value_from_ptr_50_0
              #                    free a3
              #                     1106 untrack temp_56_arithop_50_0 
              #                     346  (nop) 
              #                     348  temp_59_arithop_50_0 = Add i32 3_0, temp_49_arithop_50_0 
              #                    occupy a0 with 3_0
    li      a0, 3
              #                    occupy s1 with temp_49_arithop_50_0
              #                    occupy a1 with temp_59_arithop_50_0
    ADDW    a1,a0,s1
              #                    free a0
              #                    free s1
              #                    occupy s1 with temp_49_arithop_50_0
              #                    store to temp_49_arithop_50_0 in mem offset legal
    sw      s1,484(sp)
              #                    release s1 with temp_49_arithop_50_0
              #                    free a1
              #                     350  temp_60_value_from_ptr_50_0 = load *a19_0:ptr->i32 
              #                    occupy a0 with *a19_0
              #                       load label a19 as ptr to reg
    la      a0, a19
              #                    occupy reg a0 with *a19_0
              #                    occupy s1 with temp_60_value_from_ptr_50_0
    lw      s1,0(a0)
              #                    free s1
              #                    occupy s1 with temp_60_value_from_ptr_50_0
              #                    store to temp_60_value_from_ptr_50_0 in mem offset legal
    sw      s1,440(sp)
              #                    release s1 with temp_60_value_from_ptr_50_0
              #                    free a0
              #                     351  mu a19_0_0:350 
              #                     353  temp_61_arithop_50_0 = Add i32 temp_59_arithop_50_0, temp_60_value_from_ptr_50_0 
              #                    occupy a1 with temp_59_arithop_50_0
              #                    occupy a0 with temp_60_value_from_ptr_50_0
              #                    load from temp_60_value_from_ptr_50_0 in mem


    lw      a0,440(sp)
              #                    occupy s1 with temp_61_arithop_50_0
    ADDW    s1,a1,a0
              #                    free a1
              #                    occupy a1 with temp_59_arithop_50_0
              #                    store to temp_59_arithop_50_0 in mem offset legal
    sw      a1,444(sp)
              #                    release a1 with temp_59_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_60_value_from_ptr_50_0
              #                    store to temp_60_value_from_ptr_50_0 in mem offset legal
    sw      a0,440(sp)
              #                    release a0 with temp_60_value_from_ptr_50_0
              #                    free s1
              #                     1165 untrack temp_59_arithop_50_0 
              #                     354  (nop) 
              #                     356  temp_62_arithop_50_0 = Add i32 4_0, temp_52_arithop_50_0 
              #                    occupy a0 with 4_0
    li      a0, 4
              #                    occupy s6 with temp_52_arithop_50_0
              #                    occupy a1 with temp_62_arithop_50_0
    ADDW    a1,a0,s6
              #                    free a0
              #                    free s6
              #                    occupy s6 with temp_52_arithop_50_0
              #                    store to temp_52_arithop_50_0 in mem offset legal
    sw      s6,472(sp)
              #                    release s6 with temp_52_arithop_50_0
              #                    free a1
              #                     358  temp_63_value_from_ptr_50_0 = load *a20_0:ptr->i32 
              #                    occupy a0 with *a20_0
              #                       load label a20 as ptr to reg
    la      a0, a20
              #                    occupy reg a0 with *a20_0
              #                    occupy s6 with temp_63_value_from_ptr_50_0
    lw      s6,0(a0)
              #                    free s6
              #                    occupy s6 with temp_63_value_from_ptr_50_0
              #                    store to temp_63_value_from_ptr_50_0 in mem offset legal
    sw      s6,428(sp)
              #                    release s6 with temp_63_value_from_ptr_50_0
              #                    free a0
              #                     359  mu a20_0_0:358 
              #                     361  temp_64_arithop_50_0 = Add i32 temp_62_arithop_50_0, temp_63_value_from_ptr_50_0 
              #                    occupy a1 with temp_62_arithop_50_0
              #                    occupy a0 with temp_63_value_from_ptr_50_0
              #                    load from temp_63_value_from_ptr_50_0 in mem


    lw      a0,428(sp)
              #                    occupy s6 with temp_64_arithop_50_0
    ADDW    s6,a1,a0
              #                    free a1
              #                    occupy a1 with temp_62_arithop_50_0
              #                    store to temp_62_arithop_50_0 in mem offset legal
    sw      a1,432(sp)
              #                    release a1 with temp_62_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_63_value_from_ptr_50_0
              #                    store to temp_63_value_from_ptr_50_0 in mem offset legal
    sw      a0,428(sp)
              #                    release a0 with temp_63_value_from_ptr_50_0
              #                    free s6
              #                     1112 untrack temp_62_arithop_50_0 
              #                     362  (nop) 
              #                     364  temp_65_arithop_50_0 = Add i32 1_0, temp_55_arithop_50_0 
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s7 with temp_55_arithop_50_0
              #                    occupy a1 with temp_65_arithop_50_0
    ADDW    a1,a0,s7
              #                    free a0
              #                    free s7
              #                    occupy s7 with temp_55_arithop_50_0
              #                    store to temp_55_arithop_50_0 in mem offset legal
    sw      s7,460(sp)
              #                    release s7 with temp_55_arithop_50_0
              #                    free a1
              #                     366  temp_66_value_from_ptr_50_0 = load *a21_0:ptr->i32 
              #                    occupy a0 with *a21_0
              #                       load label a21 as ptr to reg
    la      a0, a21
              #                    occupy reg a0 with *a21_0
              #                    occupy s7 with temp_66_value_from_ptr_50_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_66_value_from_ptr_50_0
              #                    store to temp_66_value_from_ptr_50_0 in mem offset legal
    sw      s7,416(sp)
              #                    release s7 with temp_66_value_from_ptr_50_0
              #                    free a0
              #                     367  mu a21_0_0:366 
              #                     369  temp_67_arithop_50_0 = Add i32 temp_65_arithop_50_0, temp_66_value_from_ptr_50_0 
              #                    occupy a1 with temp_65_arithop_50_0
              #                    occupy a0 with temp_66_value_from_ptr_50_0
              #                    load from temp_66_value_from_ptr_50_0 in mem


    lw      a0,416(sp)
              #                    occupy s7 with temp_67_arithop_50_0
    ADDW    s7,a1,a0
              #                    free a1
              #                    occupy a1 with temp_65_arithop_50_0
              #                    store to temp_65_arithop_50_0 in mem offset legal
    sw      a1,420(sp)
              #                    release a1 with temp_65_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_66_value_from_ptr_50_0
              #                    store to temp_66_value_from_ptr_50_0 in mem offset legal
    sw      a0,416(sp)
              #                    release a0 with temp_66_value_from_ptr_50_0
              #                    free s7
              #                     1104 untrack temp_65_arithop_50_0 
              #                     370  (nop) 
              #                     372  temp_68_arithop_50_0 = Add i32 2_0, temp_58_arithop_50_0 
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy a3 with temp_58_arithop_50_0
              #                    occupy a1 with temp_68_arithop_50_0
    ADDW    a1,a0,a3
              #                    free a0
              #                    free a3
              #                    occupy a3 with temp_58_arithop_50_0
              #                    store to temp_58_arithop_50_0 in mem offset legal
    sw      a3,448(sp)
              #                    release a3 with temp_58_arithop_50_0
              #                    free a1
              #                     374  temp_69_value_from_ptr_50_0 = load *a22_0:ptr->i32 
              #                    occupy a0 with *a22_0
              #                       load label a22 as ptr to reg
    la      a0, a22
              #                    occupy reg a0 with *a22_0
              #                    occupy a3 with temp_69_value_from_ptr_50_0
    lw      a3,0(a0)
              #                    free a3
              #                    occupy a3 with temp_69_value_from_ptr_50_0
              #                    store to temp_69_value_from_ptr_50_0 in mem offset legal
    sw      a3,404(sp)
              #                    release a3 with temp_69_value_from_ptr_50_0
              #                    free a0
              #                     375  mu a22_0_0:374 
              #                     377  temp_70_arithop_50_0 = Add i32 temp_68_arithop_50_0, temp_69_value_from_ptr_50_0 
              #                    occupy a1 with temp_68_arithop_50_0
              #                    occupy a0 with temp_69_value_from_ptr_50_0
              #                    load from temp_69_value_from_ptr_50_0 in mem


    lw      a0,404(sp)
              #                    occupy a3 with temp_70_arithop_50_0
    ADDW    a3,a1,a0
              #                    free a1
              #                    occupy a1 with temp_68_arithop_50_0
              #                    store to temp_68_arithop_50_0 in mem offset legal
    sw      a1,408(sp)
              #                    release a1 with temp_68_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_69_value_from_ptr_50_0
              #                    store to temp_69_value_from_ptr_50_0 in mem offset legal
    sw      a0,404(sp)
              #                    release a0 with temp_69_value_from_ptr_50_0
              #                    free a3
              #                     1076 untrack temp_68_arithop_50_0 
              #                     378  (nop) 
              #                     380  temp_71_arithop_50_0 = Add i32 3_0, temp_61_arithop_50_0 
              #                    occupy a0 with 3_0
    li      a0, 3
              #                    occupy s1 with temp_61_arithop_50_0
              #                    occupy a1 with temp_71_arithop_50_0
    ADDW    a1,a0,s1
              #                    free a0
              #                    free s1
              #                    occupy s1 with temp_61_arithop_50_0
              #                    store to temp_61_arithop_50_0 in mem offset legal
    sw      s1,436(sp)
              #                    release s1 with temp_61_arithop_50_0
              #                    free a1
              #                     382  temp_72_value_from_ptr_50_0 = load *a23_0:ptr->i32 
              #                    occupy a0 with *a23_0
              #                       load label a23 as ptr to reg
    la      a0, a23
              #                    occupy reg a0 with *a23_0
              #                    occupy s1 with temp_72_value_from_ptr_50_0
    lw      s1,0(a0)
              #                    free s1
              #                    occupy s1 with temp_72_value_from_ptr_50_0
              #                    store to temp_72_value_from_ptr_50_0 in mem offset legal
    sw      s1,392(sp)
              #                    release s1 with temp_72_value_from_ptr_50_0
              #                    free a0
              #                     383  mu a23_0_0:382 
              #                     385  temp_73_arithop_50_0 = Add i32 temp_71_arithop_50_0, temp_72_value_from_ptr_50_0 
              #                    occupy a1 with temp_71_arithop_50_0
              #                    occupy a0 with temp_72_value_from_ptr_50_0
              #                    load from temp_72_value_from_ptr_50_0 in mem


    lw      a0,392(sp)
              #                    occupy s1 with temp_73_arithop_50_0
    ADDW    s1,a1,a0
              #                    free a1
              #                    occupy a1 with temp_71_arithop_50_0
              #                    store to temp_71_arithop_50_0 in mem offset legal
    sw      a1,396(sp)
              #                    release a1 with temp_71_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_72_value_from_ptr_50_0
              #                    store to temp_72_value_from_ptr_50_0 in mem offset legal
    sw      a0,392(sp)
              #                    release a0 with temp_72_value_from_ptr_50_0
              #                    free s1
              #                     1026 untrack temp_71_arithop_50_0 
              #                     386  (nop) 
              #                     388  temp_74_arithop_50_0 = Add i32 4_0, temp_64_arithop_50_0 
              #                    occupy a0 with 4_0
    li      a0, 4
              #                    occupy s6 with temp_64_arithop_50_0
              #                    occupy a1 with temp_74_arithop_50_0
    ADDW    a1,a0,s6
              #                    free a0
              #                    free s6
              #                    occupy s6 with temp_64_arithop_50_0
              #                    store to temp_64_arithop_50_0 in mem offset legal
    sw      s6,424(sp)
              #                    release s6 with temp_64_arithop_50_0
              #                    free a1
              #                     390  temp_75_value_from_ptr_50_0 = load *a24_0:ptr->i32 
              #                    occupy a0 with *a24_0
              #                       load label a24 as ptr to reg
    la      a0, a24
              #                    occupy reg a0 with *a24_0
              #                    occupy s6 with temp_75_value_from_ptr_50_0
    lw      s6,0(a0)
              #                    free s6
              #                    occupy s6 with temp_75_value_from_ptr_50_0
              #                    store to temp_75_value_from_ptr_50_0 in mem offset legal
    sw      s6,380(sp)
              #                    release s6 with temp_75_value_from_ptr_50_0
              #                    free a0
              #                     391  mu a24_0_0:390 
              #                     393  temp_76_arithop_50_0 = Add i32 temp_74_arithop_50_0, temp_75_value_from_ptr_50_0 
              #                    occupy a1 with temp_74_arithop_50_0
              #                    occupy a0 with temp_75_value_from_ptr_50_0
              #                    load from temp_75_value_from_ptr_50_0 in mem


    lw      a0,380(sp)
              #                    occupy s6 with temp_76_arithop_50_0
    ADDW    s6,a1,a0
              #                    free a1
              #                    occupy a1 with temp_74_arithop_50_0
              #                    store to temp_74_arithop_50_0 in mem offset legal
    sw      a1,384(sp)
              #                    release a1 with temp_74_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_75_value_from_ptr_50_0
              #                    store to temp_75_value_from_ptr_50_0 in mem offset legal
    sw      a0,380(sp)
              #                    release a0 with temp_75_value_from_ptr_50_0
              #                    free s6
              #                     1102 untrack temp_74_arithop_50_0 
              #                     394  (nop) 
              #                     396  temp_77_arithop_50_0 = Add i32 1_0, temp_67_arithop_50_0 
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s7 with temp_67_arithop_50_0
              #                    occupy a1 with temp_77_arithop_50_0
    ADDW    a1,a0,s7
              #                    free a0
              #                    free s7
              #                    occupy s7 with temp_67_arithop_50_0
              #                    store to temp_67_arithop_50_0 in mem offset legal
    sw      s7,412(sp)
              #                    release s7 with temp_67_arithop_50_0
              #                    free a1
              #                     398  temp_78_value_from_ptr_50_0 = load *a25_0:ptr->i32 
              #                    occupy a0 with *a25_0
              #                       load label a25 as ptr to reg
    la      a0, a25
              #                    occupy reg a0 with *a25_0
              #                    occupy s7 with temp_78_value_from_ptr_50_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_78_value_from_ptr_50_0
              #                    store to temp_78_value_from_ptr_50_0 in mem offset legal
    sw      s7,368(sp)
              #                    release s7 with temp_78_value_from_ptr_50_0
              #                    free a0
              #                     399  mu a25_0_0:398 
              #                     401  temp_79_arithop_50_0 = Add i32 temp_77_arithop_50_0, temp_78_value_from_ptr_50_0 
              #                    occupy a1 with temp_77_arithop_50_0
              #                    occupy a0 with temp_78_value_from_ptr_50_0
              #                    load from temp_78_value_from_ptr_50_0 in mem


    lw      a0,368(sp)
              #                    occupy s7 with temp_79_arithop_50_0
    ADDW    s7,a1,a0
              #                    free a1
              #                    occupy a1 with temp_77_arithop_50_0
              #                    store to temp_77_arithop_50_0 in mem offset legal
    sw      a1,372(sp)
              #                    release a1 with temp_77_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_78_value_from_ptr_50_0
              #                    store to temp_78_value_from_ptr_50_0 in mem offset legal
    sw      a0,368(sp)
              #                    release a0 with temp_78_value_from_ptr_50_0
              #                    free s7
              #                     1153 untrack temp_77_arithop_50_0 
              #                     402  (nop) 
              #                     404  temp_80_arithop_50_0 = Add i32 2_0, temp_70_arithop_50_0 
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy a3 with temp_70_arithop_50_0
              #                    occupy a1 with temp_80_arithop_50_0
    ADDW    a1,a0,a3
              #                    free a0
              #                    free a3
              #                    occupy a3 with temp_70_arithop_50_0
              #                    store to temp_70_arithop_50_0 in mem offset legal
    sw      a3,400(sp)
              #                    release a3 with temp_70_arithop_50_0
              #                    free a1
              #                     406  temp_81_value_from_ptr_50_0 = load *a26_0:ptr->i32 
              #                    occupy a0 with *a26_0
              #                       load label a26 as ptr to reg
    la      a0, a26
              #                    occupy reg a0 with *a26_0
              #                    occupy a3 with temp_81_value_from_ptr_50_0
    lw      a3,0(a0)
              #                    free a3
              #                    occupy a3 with temp_81_value_from_ptr_50_0
              #                    store to temp_81_value_from_ptr_50_0 in mem offset legal
    sw      a3,356(sp)
              #                    release a3 with temp_81_value_from_ptr_50_0
              #                    free a0
              #                     407  mu a26_0_0:406 
              #                     409  temp_82_arithop_50_0 = Add i32 temp_80_arithop_50_0, temp_81_value_from_ptr_50_0 
              #                    occupy a1 with temp_80_arithop_50_0
              #                    occupy a0 with temp_81_value_from_ptr_50_0
              #                    load from temp_81_value_from_ptr_50_0 in mem


    lw      a0,356(sp)
              #                    occupy a3 with temp_82_arithop_50_0
    ADDW    a3,a1,a0
              #                    free a1
              #                    occupy a1 with temp_80_arithop_50_0
              #                    store to temp_80_arithop_50_0 in mem offset legal
    sw      a1,360(sp)
              #                    release a1 with temp_80_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_81_value_from_ptr_50_0
              #                    store to temp_81_value_from_ptr_50_0 in mem offset legal
    sw      a0,356(sp)
              #                    release a0 with temp_81_value_from_ptr_50_0
              #                    free a3
              #                     1111 untrack temp_80_arithop_50_0 
              #                     410  (nop) 
              #                     412  temp_83_arithop_50_0 = Add i32 3_0, temp_73_arithop_50_0 
              #                    occupy a0 with 3_0
    li      a0, 3
              #                    occupy s1 with temp_73_arithop_50_0
              #                    occupy a1 with temp_83_arithop_50_0
    ADDW    a1,a0,s1
              #                    free a0
              #                    free s1
              #                    occupy s1 with temp_73_arithop_50_0
              #                    store to temp_73_arithop_50_0 in mem offset legal
    sw      s1,388(sp)
              #                    release s1 with temp_73_arithop_50_0
              #                    free a1
              #                     414  temp_84_value_from_ptr_50_0 = load *a27_0:ptr->i32 
              #                    occupy a0 with *a27_0
              #                       load label a27 as ptr to reg
    la      a0, a27
              #                    occupy reg a0 with *a27_0
              #                    occupy s1 with temp_84_value_from_ptr_50_0
    lw      s1,0(a0)
              #                    free s1
              #                    occupy s1 with temp_84_value_from_ptr_50_0
              #                    store to temp_84_value_from_ptr_50_0 in mem offset legal
    sw      s1,344(sp)
              #                    release s1 with temp_84_value_from_ptr_50_0
              #                    free a0
              #                     415  mu a27_0_0:414 
              #                     417  temp_85_arithop_50_0 = Add i32 temp_83_arithop_50_0, temp_84_value_from_ptr_50_0 
              #                    occupy a1 with temp_83_arithop_50_0
              #                    occupy a0 with temp_84_value_from_ptr_50_0
              #                    load from temp_84_value_from_ptr_50_0 in mem


    lw      a0,344(sp)
              #                    occupy s1 with temp_85_arithop_50_0
    ADDW    s1,a1,a0
              #                    free a1
              #                    occupy a1 with temp_83_arithop_50_0
              #                    store to temp_83_arithop_50_0 in mem offset legal
    sw      a1,348(sp)
              #                    release a1 with temp_83_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_84_value_from_ptr_50_0
              #                    store to temp_84_value_from_ptr_50_0 in mem offset legal
    sw      a0,344(sp)
              #                    release a0 with temp_84_value_from_ptr_50_0
              #                    free s1
              #                     1125 untrack temp_83_arithop_50_0 
              #                     418  (nop) 
              #                     420  temp_86_arithop_50_0 = Add i32 4_0, temp_76_arithop_50_0 
              #                    occupy a0 with 4_0
    li      a0, 4
              #                    occupy s6 with temp_76_arithop_50_0
              #                    occupy a1 with temp_86_arithop_50_0
    ADDW    a1,a0,s6
              #                    free a0
              #                    free s6
              #                    occupy s6 with temp_76_arithop_50_0
              #                    store to temp_76_arithop_50_0 in mem offset legal
    sw      s6,376(sp)
              #                    release s6 with temp_76_arithop_50_0
              #                    free a1
              #                     422  temp_87_value_from_ptr_50_0 = load *a28_0:ptr->i32 
              #                    occupy a0 with *a28_0
              #                       load label a28 as ptr to reg
    la      a0, a28
              #                    occupy reg a0 with *a28_0
              #                    occupy s6 with temp_87_value_from_ptr_50_0
    lw      s6,0(a0)
              #                    free s6
              #                    occupy s6 with temp_87_value_from_ptr_50_0
              #                    store to temp_87_value_from_ptr_50_0 in mem offset legal
    sw      s6,332(sp)
              #                    release s6 with temp_87_value_from_ptr_50_0
              #                    free a0
              #                     423  mu a28_0_0:422 
              #                     425  temp_88_arithop_50_0 = Add i32 temp_86_arithop_50_0, temp_87_value_from_ptr_50_0 
              #                    occupy a1 with temp_86_arithop_50_0
              #                    occupy a0 with temp_87_value_from_ptr_50_0
              #                    load from temp_87_value_from_ptr_50_0 in mem


    lw      a0,332(sp)
              #                    occupy s6 with temp_88_arithop_50_0
    ADDW    s6,a1,a0
              #                    free a1
              #                    occupy a1 with temp_86_arithop_50_0
              #                    store to temp_86_arithop_50_0 in mem offset legal
    sw      a1,336(sp)
              #                    release a1 with temp_86_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_87_value_from_ptr_50_0
              #                    store to temp_87_value_from_ptr_50_0 in mem offset legal
    sw      a0,332(sp)
              #                    release a0 with temp_87_value_from_ptr_50_0
              #                    free s6
              #                     1161 untrack temp_86_arithop_50_0 
              #                     426  (nop) 
              #                     428  temp_89_arithop_50_0 = Add i32 1_0, temp_79_arithop_50_0 
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s7 with temp_79_arithop_50_0
              #                    occupy a1 with temp_89_arithop_50_0
    ADDW    a1,a0,s7
              #                    free a0
              #                    free s7
              #                    occupy s7 with temp_79_arithop_50_0
              #                    store to temp_79_arithop_50_0 in mem offset legal
    sw      s7,364(sp)
              #                    release s7 with temp_79_arithop_50_0
              #                    free a1
              #                     430  temp_90_value_from_ptr_50_0 = load *a29_0:ptr->i32 
              #                    occupy a0 with *a29_0
              #                       load label a29 as ptr to reg
    la      a0, a29
              #                    occupy reg a0 with *a29_0
              #                    occupy s7 with temp_90_value_from_ptr_50_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_90_value_from_ptr_50_0
              #                    store to temp_90_value_from_ptr_50_0 in mem offset legal
    sw      s7,320(sp)
              #                    release s7 with temp_90_value_from_ptr_50_0
              #                    free a0
              #                     431  mu a29_0_0:430 
              #                     433  temp_91_arithop_50_0 = Add i32 temp_89_arithop_50_0, temp_90_value_from_ptr_50_0 
              #                    occupy a1 with temp_89_arithop_50_0
              #                    occupy a0 with temp_90_value_from_ptr_50_0
              #                    load from temp_90_value_from_ptr_50_0 in mem


    lw      a0,320(sp)
              #                    occupy s7 with temp_91_arithop_50_0
    ADDW    s7,a1,a0
              #                    free a1
              #                    occupy a1 with temp_89_arithop_50_0
              #                    store to temp_89_arithop_50_0 in mem offset legal
    sw      a1,324(sp)
              #                    release a1 with temp_89_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_90_value_from_ptr_50_0
              #                    store to temp_90_value_from_ptr_50_0 in mem offset legal
    sw      a0,320(sp)
              #                    release a0 with temp_90_value_from_ptr_50_0
              #                    free s7
              #                     1124 untrack temp_89_arithop_50_0 
              #                     434  (nop) 
              #                     436  temp_92_arithop_50_0 = Add i32 2_0, temp_82_arithop_50_0 
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy a3 with temp_82_arithop_50_0
              #                    occupy a1 with temp_92_arithop_50_0
    ADDW    a1,a0,a3
              #                    free a0
              #                    free a3
              #                    occupy a3 with temp_82_arithop_50_0
              #                    store to temp_82_arithop_50_0 in mem offset legal
    sw      a3,352(sp)
              #                    release a3 with temp_82_arithop_50_0
              #                    free a1
              #                     438  temp_93_value_from_ptr_50_0 = load *a30_0:ptr->i32 
              #                    occupy a0 with *a30_0
              #                       load label a30 as ptr to reg
    la      a0, a30
              #                    occupy reg a0 with *a30_0
              #                    occupy a3 with temp_93_value_from_ptr_50_0
    lw      a3,0(a0)
              #                    free a3
              #                    occupy a3 with temp_93_value_from_ptr_50_0
              #                    store to temp_93_value_from_ptr_50_0 in mem offset legal
    sw      a3,308(sp)
              #                    release a3 with temp_93_value_from_ptr_50_0
              #                    free a0
              #                     439  mu a30_0_0:438 
              #                     441  temp_94_arithop_50_0 = Add i32 temp_92_arithop_50_0, temp_93_value_from_ptr_50_0 
              #                    occupy a1 with temp_92_arithop_50_0
              #                    occupy a0 with temp_93_value_from_ptr_50_0
              #                    load from temp_93_value_from_ptr_50_0 in mem


    lw      a0,308(sp)
              #                    occupy a3 with temp_94_arithop_50_0
    ADDW    a3,a1,a0
              #                    free a1
              #                    occupy a1 with temp_92_arithop_50_0
              #                    store to temp_92_arithop_50_0 in mem offset legal
    sw      a1,312(sp)
              #                    release a1 with temp_92_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_93_value_from_ptr_50_0
              #                    store to temp_93_value_from_ptr_50_0 in mem offset legal
    sw      a0,308(sp)
              #                    release a0 with temp_93_value_from_ptr_50_0
              #                    free a3
              #                     1095 untrack temp_92_arithop_50_0 
              #                     442  (nop) 
              #                     444  temp_95_arithop_50_0 = Add i32 3_0, temp_85_arithop_50_0 
              #                    occupy a0 with 3_0
    li      a0, 3
              #                    occupy s1 with temp_85_arithop_50_0
              #                    occupy a1 with temp_95_arithop_50_0
    ADDW    a1,a0,s1
              #                    free a0
              #                    free s1
              #                    occupy s1 with temp_85_arithop_50_0
              #                    store to temp_85_arithop_50_0 in mem offset legal
    sw      s1,340(sp)
              #                    release s1 with temp_85_arithop_50_0
              #                    free a1
              #                     446  temp_96_value_from_ptr_50_0 = load *a31_0:ptr->i32 
              #                    occupy a0 with *a31_0
              #                       load label a31 as ptr to reg
    la      a0, a31
              #                    occupy reg a0 with *a31_0
              #                    occupy s1 with temp_96_value_from_ptr_50_0
    lw      s1,0(a0)
              #                    free s1
              #                    occupy s1 with temp_96_value_from_ptr_50_0
              #                    store to temp_96_value_from_ptr_50_0 in mem offset legal
    sw      s1,296(sp)
              #                    release s1 with temp_96_value_from_ptr_50_0
              #                    free a0
              #                     447  mu a31_0_0:446 
              #                     449  temp_97_arithop_50_0 = Add i32 temp_95_arithop_50_0, temp_96_value_from_ptr_50_0 
              #                    occupy a1 with temp_95_arithop_50_0
              #                    occupy a0 with temp_96_value_from_ptr_50_0
              #                    load from temp_96_value_from_ptr_50_0 in mem


    lw      a0,296(sp)
              #                    occupy s1 with temp_97_arithop_50_0
    ADDW    s1,a1,a0
              #                    free a1
              #                    occupy a1 with temp_95_arithop_50_0
              #                    store to temp_95_arithop_50_0 in mem offset legal
    sw      a1,300(sp)
              #                    release a1 with temp_95_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_96_value_from_ptr_50_0
              #                    store to temp_96_value_from_ptr_50_0 in mem offset legal
    sw      a0,296(sp)
              #                    release a0 with temp_96_value_from_ptr_50_0
              #                    free s1
              #                     1053 untrack temp_95_arithop_50_0 
              #                     450  (nop) 
              #                     452  temp_98_arithop_50_0 = Add i32 4_0, temp_88_arithop_50_0 
              #                    occupy a0 with 4_0
    li      a0, 4
              #                    occupy s6 with temp_88_arithop_50_0
              #                    occupy a1 with temp_98_arithop_50_0
    ADDW    a1,a0,s6
              #                    free a0
              #                    free s6
              #                    occupy s6 with temp_88_arithop_50_0
              #                    store to temp_88_arithop_50_0 in mem offset legal
    sw      s6,328(sp)
              #                    release s6 with temp_88_arithop_50_0
              #                    free a1
              #                     454  temp_99_value_from_ptr_50_0 = load *a32_0:ptr->i32 
              #                    occupy a0 with *a32_0
              #                       load label a32 as ptr to reg
    la      a0, a32
              #                    occupy reg a0 with *a32_0
              #                    occupy s6 with temp_99_value_from_ptr_50_0
    lw      s6,0(a0)
              #                    free s6
              #                    occupy s6 with temp_99_value_from_ptr_50_0
              #                    store to temp_99_value_from_ptr_50_0 in mem offset legal
    sw      s6,284(sp)
              #                    release s6 with temp_99_value_from_ptr_50_0
              #                    free a0
              #                     455  mu a32_0_0:454 
              #                     457  temp_100_arithop_50_0 = Add i32 temp_98_arithop_50_0, temp_99_value_from_ptr_50_0 
              #                    occupy a1 with temp_98_arithop_50_0
              #                    occupy a0 with temp_99_value_from_ptr_50_0
              #                    load from temp_99_value_from_ptr_50_0 in mem


    lw      a0,284(sp)
              #                    occupy s6 with temp_100_arithop_50_0
    ADDW    s6,a1,a0
              #                    free a1
              #                    occupy a1 with temp_98_arithop_50_0
              #                    store to temp_98_arithop_50_0 in mem offset legal
    sw      a1,288(sp)
              #                    release a1 with temp_98_arithop_50_0
              #                    free a0
              #                    occupy a0 with temp_99_value_from_ptr_50_0
              #                    store to temp_99_value_from_ptr_50_0 in mem offset legal
    sw      a0,284(sp)
              #                    release a0 with temp_99_value_from_ptr_50_0
              #                    free s6
              #                     1131 untrack temp_98_arithop_50_0 
              #                     458  (nop) 
              #                     460  temp_101_arithop_50_0 = Sub i32 a_48_0, b_48_0 
              #                    occupy a0 with a_48_0
              #                    load from a_48_0 in mem


    lw      a0,836(sp)
              #                    occupy a1 with b_48_0
              #                    load from b_48_0 in mem


    lw      a1,832(sp)
              #                    occupy s9 with temp_101_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: a_48_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: b_48_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_1_ret_of_getint_50_0, tracked: true } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     a6:Freed { symidx: temp_7_arithop_50_0, tracked: true } |     a7:Freed { symidx: temp_2_ret_of_getint_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s4:Freed { symidx: temp_10_arithop_50_0, tracked: true } |     s5:Freed { symidx: temp_3_ret_of_getint_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |     s8:Freed { symidx: temp_13_arithop_50_0, tracked: true } |     s9:Occupied { symidx: temp_101_arithop_50_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s9,a0,a1
              #                    free a0
              #                    occupy a0 with a_48_0
              #                    store to a_48_0 in mem offset legal
    sw      a0,836(sp)
              #                    release a0 with a_48_0
              #                    free a1
              #                    occupy a1 with b_48_0
              #                    store to b_48_0 in mem offset legal
    sw      a1,832(sp)
              #                    release a1 with b_48_0
              #                    free s9
              #                    occupy s9 with temp_101_arithop_50_0
              #                    store to temp_101_arithop_50_0 in mem offset legal
    sw      s9,276(sp)
              #                    release s9 with temp_101_arithop_50_0
              #                     1164 untrack a_48_0 
              #                     1093 untrack b_48_0 
              #                     462  temp_102_arithop_50_0 = Add i32 temp_101_arithop_50_0, 10_0 
              #                    occupy a0 with temp_101_arithop_50_0
              #                    load from temp_101_arithop_50_0 in mem


    lw      a0,276(sp)
              #                    occupy a1 with 10_0
    li      a1, 10
              #                    occupy s9 with temp_102_arithop_50_0
    ADDW    s9,a0,a1
              #                    free a0
              #                    occupy a0 with temp_101_arithop_50_0
              #                    store to temp_101_arithop_50_0 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with temp_101_arithop_50_0
              #                    free a1
              #                    free s9
              #                    occupy s9 with temp_102_arithop_50_0
              #                    store to temp_102_arithop_50_0 in mem offset legal
    sw      s9,272(sp)
              #                    release s9 with temp_102_arithop_50_0
              #                     1014 untrack temp_101_arithop_50_0 
              #                     463  (nop) 
              #                     465  (nop) 
              #                     467  (nop) 
              #                     468  mu a29_0_0:467 
              #                     470  (nop) 
              #                     471  (nop) 
              #                     473  (nop) 
              #                     475  (nop) 
              #                     476  mu a30_0_0:475 
              #                     478  (nop) 
              #                     479  (nop) 
              #                     481  (nop) 
              #                     483  (nop) 
              #                     484  mu a31_0_0:483 
              #                     486  (nop) 
              #                     487  (nop) 
              #                     489  (nop) 
              #                     491  (nop) 
              #                     492  mu a32_0_0:491 
              #                     494  (nop) 
              #                     495  (nop) 
              #                     497  (nop) 
              #                     499  (nop) 
              #                     500  mu a25_0_0:499 
              #                     502  (nop) 
              #                     503  (nop) 
              #                     505  (nop) 
              #                     507  (nop) 
              #                     508  mu a26_0_0:507 
              #                     510  (nop) 
              #                     511  (nop) 
              #                     513  (nop) 
              #                     515  (nop) 
              #                     516  mu a27_0_0:515 
              #                     518  (nop) 
              #                     519  (nop) 
              #                     521  (nop) 
              #                     523  (nop) 
              #                     524  mu a28_0_0:523 
              #                     526  (nop) 
              #                     527  (nop) 
              #                     529  (nop) 
              #                     531  (nop) 
              #                     532  mu a21_0_0:531 
              #                     534  (nop) 
              #                     535  (nop) 
              #                     537  (nop) 
              #                     539  (nop) 
              #                     540  mu a22_0_0:539 
              #                     542  (nop) 
              #                     543  (nop) 
              #                     545  (nop) 
              #                     547  (nop) 
              #                     548  mu a23_0_0:547 
              #                     550  (nop) 
              #                     551  (nop) 
              #                     553  (nop) 
              #                     555  (nop) 
              #                     556  mu a24_0_0:555 
              #                     558  (nop) 
              #                     559  (nop) 
              #                     561  (nop) 
              #                     563  (nop) 
              #                     564  mu a17_0_0:563 
              #                     566  (nop) 
              #                     567  (nop) 
              #                     569  (nop) 
              #                     571  (nop) 
              #                     572  mu a18_0_0:571 
              #                     574  (nop) 
              #                     575  (nop) 
              #                     577  (nop) 
              #                     579  (nop) 
              #                     580  mu a19_0_0:579 
              #                     582  (nop) 
              #                     583  (nop) 
              #                     585  (nop) 
              #                     587  (nop) 
              #                     588  mu a20_0_0:587 
              #                     590  (nop) 
              #                     591  (nop) 
              #                     593  (nop) 
              #                     595  (nop) 
              #                     596  mu a13_0_0:595 
              #                     598  (nop) 
              #                     599  (nop) 
              #                     601  (nop) 
              #                     603  (nop) 
              #                     604  mu a14_0_0:603 
              #                     606  (nop) 
              #                     607  (nop) 
              #                     609  (nop) 
              #                     611  (nop) 
              #                     612  mu a15_0_0:611 
              #                     614  (nop) 
              #                     615  (nop) 
              #                     617  (nop) 
              #                     619  (nop) 
              #                     620  mu a16_0_0:619 
              #                     622  (nop) 
              #                     623  (nop) 
              #                     625  (nop) 
              #                     627  (nop) 
              #                     628  mu a9_0_0:627 
              #                     630  (nop) 
              #                     631  (nop) 
              #                     633  (nop) 
              #                     635  (nop) 
              #                     636  mu a10_0_0:635 
              #                     638  (nop) 
              #                     639  (nop) 
              #                     641  (nop) 
              #                     643  (nop) 
              #                     644  mu a11_0_0:643 
              #                     646  (nop) 
              #                     647  (nop) 
              #                     649  (nop) 
              #                     651  (nop) 
              #                     652  mu a12_0_0:651 
              #                     654  (nop) 
              #                     655  (nop) 
              #                     657  (nop) 
              #                     659  (nop) 
              #                     660  mu a5_0_0:659 
              #                     662  (nop) 
              #                     663  (nop) 
              #                     665  (nop) 
              #                     667  (nop) 
              #                     668  mu a6_0_0:667 
              #                     670  (nop) 
              #                     671  (nop) 
              #                     673  (nop) 
              #                     675  (nop) 
              #                     676  mu a7_0_0:675 
              #                     678  (nop) 
              #                     679  (nop) 
              #                     681  (nop) 
              #                     683  (nop) 
              #                     684  mu a8_0_0:683 
              #                     686  (nop) 
              #                     687  (nop) 
              #                     689  (nop) 
              #                     691  (nop) 
              #                     692  mu a1_0_0:691 
              #                     694  (nop) 
              #                     695  (nop) 
              #                     697  (nop) 
              #                     699  (nop) 
              #                     700  mu a2_0_0:699 
              #                     702  (nop) 
              #                     703  (nop) 
              #                     705  (nop) 
              #                     707  (nop) 
              #                     708  mu a3_0_0:707 
              #                     710  (nop) 
              #                     711  (nop) 
              #                     713  (nop) 
              #                     715  (nop) 
              #                     716  mu a4_0_0:715 
              #                     718  (nop) 
              #                     719  (nop) 
              #                     721  (nop) 
              #                     723  (nop) 
              #                     724  mu a1_0_0:723 
              #                     726  (nop) 
              #                     727  (nop) 
              #                     729  (nop) 
              #                     731  (nop) 
              #                     732  mu a2_0_0:731 
              #                     734  (nop) 
              #                     735  (nop) 
              #                     737  (nop) 
              #                     739  (nop) 
              #                     740  mu a3_0_0:739 
              #                     742  (nop) 
              #                     743  (nop) 
              #                     745  (nop) 
              #                     747  (nop) 
              #                     748  mu a4_0_0:747 
              #                     750  (nop) 
              #                     751  (nop) 
              #                     754  temp_211_arithop_50_0 = Add i32 temp_102_arithop_50_0, temp_1_ret_of_getint_50_0 
              #                    occupy a0 with temp_102_arithop_50_0
              #                    load from temp_102_arithop_50_0 in mem


    lw      a0,272(sp)
              #                    occupy a2 with temp_1_ret_of_getint_50_0
              #                    occupy a1 with temp_211_arithop_50_0
    ADDW    a1,a0,a2
              #                    free a0
              #                    occupy a0 with temp_102_arithop_50_0
              #                    store to temp_102_arithop_50_0 in mem offset legal
    sw      a0,272(sp)
              #                    release a0 with temp_102_arithop_50_0
              #                    free a2
              #                    occupy a2 with temp_1_ret_of_getint_50_0
              #                    store to temp_1_ret_of_getint_50_0 in mem offset legal
    sw      a2,676(sp)
              #                    release a2 with temp_1_ret_of_getint_50_0
              #                    free a1
              #                     1041 untrack temp_1_ret_of_getint_50_0 
              #                     1019 untrack temp_102_arithop_50_0 
              #                     756  temp_212_arithop_50_0 = Add i32 temp_211_arithop_50_0, temp_2_ret_of_getint_50_0 
              #                    occupy a1 with temp_211_arithop_50_0
              #                    occupy a7 with temp_2_ret_of_getint_50_0
              #                    occupy a0 with temp_212_arithop_50_0
    ADDW    a0,a1,a7
              #                    free a1
              #                    occupy a1 with temp_211_arithop_50_0
              #                    store to temp_211_arithop_50_0 in mem offset legal
    sw      a1,268(sp)
              #                    release a1 with temp_211_arithop_50_0
              #                    free a7
              #                    free a0
              #                     1097 untrack temp_2_ret_of_getint_50_0 
              #                    occupy a7 with temp_2_ret_of_getint_50_0
              #                    release a7 with temp_2_ret_of_getint_50_0
              #                     1064 untrack temp_211_arithop_50_0 
              #                     758  temp_213_arithop_50_0 = Add i32 temp_212_arithop_50_0, temp_3_ret_of_getint_50_0 
              #                    occupy a0 with temp_212_arithop_50_0
              #                    occupy s5 with temp_3_ret_of_getint_50_0
              #                    occupy a1 with temp_213_arithop_50_0
    ADDW    a1,a0,s5
              #                    free a0
              #                    free s5
              #                    free a1
              #                     1078 untrack temp_3_ret_of_getint_50_0 
              #                    occupy s5 with temp_3_ret_of_getint_50_0
              #                    release s5 with temp_3_ret_of_getint_50_0
              #                     1058 untrack temp_212_arithop_50_0 
              #                    occupy a0 with temp_212_arithop_50_0
              #                    release a0 with temp_212_arithop_50_0
              #                     760  temp_214_arithop_50_0 = Add i32 temp_213_arithop_50_0, temp_4_ret_of_getint_50_0 
              #                    occupy a1 with temp_213_arithop_50_0
              #                    occupy a0 with temp_4_ret_of_getint_50_0
              #                    load from temp_4_ret_of_getint_50_0 in mem


    lw      a0,664(sp)
              #                    occupy a2 with temp_214_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1133 untrack temp_4_ret_of_getint_50_0 
              #                    occupy a0 with temp_4_ret_of_getint_50_0
              #                    release a0 with temp_4_ret_of_getint_50_0
              #                     1071 untrack temp_213_arithop_50_0 
              #                    occupy a1 with temp_213_arithop_50_0
              #                    release a1 with temp_213_arithop_50_0
              #                     762  temp_215_arithop_50_0 = Sub i32 temp_214_arithop_50_0, temp_7_arithop_50_0 
              #                    occupy a2 with temp_214_arithop_50_0
              #                    occupy a6 with temp_7_arithop_50_0
              #                    occupy a0 with temp_215_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_215_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_214_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     a6:Occupied { symidx: temp_7_arithop_50_0, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s4:Freed { symidx: temp_10_arithop_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |     s8:Freed { symidx: temp_13_arithop_50_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24


    subw    a0,a2,a6
              #                    free a2
              #                    free a6
              #                    free a0
              #                     1152 untrack temp_7_arithop_50_0 
              #                    occupy a6 with temp_7_arithop_50_0
              #                    release a6 with temp_7_arithop_50_0
              #                     1052 untrack temp_214_arithop_50_0 
              #                    occupy a2 with temp_214_arithop_50_0
              #                    release a2 with temp_214_arithop_50_0
              #                     764  temp_216_arithop_50_0 = Sub i32 temp_215_arithop_50_0, temp_10_arithop_50_0 
              #                    occupy a0 with temp_215_arithop_50_0
              #                    occupy s4 with temp_10_arithop_50_0
              #                    occupy a1 with temp_216_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_215_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_216_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s4:Occupied { symidx: temp_10_arithop_50_0, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |     s8:Freed { symidx: temp_13_arithop_50_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24


    subw    a1,a0,s4
              #                    free a0
              #                    free s4
              #                    free a1
              #                     1100 untrack temp_215_arithop_50_0 
              #                    occupy a0 with temp_215_arithop_50_0
              #                    release a0 with temp_215_arithop_50_0
              #                     1096 untrack temp_10_arithop_50_0 
              #                    occupy s4 with temp_10_arithop_50_0
              #                    release s4 with temp_10_arithop_50_0
              #                     766  temp_217_arithop_50_0 = Sub i32 temp_216_arithop_50_0, temp_13_arithop_50_0 
              #                    occupy a1 with temp_216_arithop_50_0
              #                    occupy s8 with temp_13_arithop_50_0
              #                    occupy a0 with temp_217_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_217_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_216_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |     s8:Occupied { symidx: temp_13_arithop_50_0, tracked: true, occupy_count: 1 } |  released_gpr_count:8,released_fpr_count:24


    subw    a0,a1,s8
              #                    free a1
              #                    free s8
              #                    free a0
              #                     1160 untrack temp_13_arithop_50_0 
              #                    occupy s8 with temp_13_arithop_50_0
              #                    release s8 with temp_13_arithop_50_0
              #                     1107 untrack temp_216_arithop_50_0 
              #                    occupy a1 with temp_216_arithop_50_0
              #                    release a1 with temp_216_arithop_50_0
              #                     768  temp_218_arithop_50_0 = Sub i32 temp_217_arithop_50_0, temp_16_arithop_50_0 
              #                    occupy a0 with temp_217_arithop_50_0
              #                    occupy a1 with temp_16_arithop_50_0
              #                    load from temp_16_arithop_50_0 in mem


    lw      a1,616(sp)
              #                    occupy a2 with temp_218_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_217_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_16_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_218_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1109 untrack temp_217_arithop_50_0 
              #                    occupy a0 with temp_217_arithop_50_0
              #                    release a0 with temp_217_arithop_50_0
              #                     1081 untrack temp_16_arithop_50_0 
              #                    occupy a1 with temp_16_arithop_50_0
              #                    release a1 with temp_16_arithop_50_0
              #                     770  temp_219_arithop_50_0 = Add i32 temp_218_arithop_50_0, temp_19_arithop_50_0 
              #                    occupy a2 with temp_218_arithop_50_0
              #                    occupy a0 with temp_19_arithop_50_0
              #                    load from temp_19_arithop_50_0 in mem


    lw      a0,604(sp)
              #                    occupy a1 with temp_219_arithop_50_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1157 untrack temp_19_arithop_50_0 
              #                    occupy a0 with temp_19_arithop_50_0
              #                    release a0 with temp_19_arithop_50_0
              #                     1122 untrack temp_218_arithop_50_0 
              #                    occupy a2 with temp_218_arithop_50_0
              #                    release a2 with temp_218_arithop_50_0
              #                     772  temp_220_arithop_50_0 = Add i32 temp_219_arithop_50_0, temp_22_arithop_50_0 
              #                    occupy a1 with temp_219_arithop_50_0
              #                    occupy a0 with temp_22_arithop_50_0
              #                    load from temp_22_arithop_50_0 in mem


    lw      a0,592(sp)
              #                    occupy a2 with temp_220_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1123 untrack temp_219_arithop_50_0 
              #                    occupy a1 with temp_219_arithop_50_0
              #                    release a1 with temp_219_arithop_50_0
              #                     1023 untrack temp_22_arithop_50_0 
              #                    occupy a0 with temp_22_arithop_50_0
              #                    release a0 with temp_22_arithop_50_0
              #                     774  temp_221_arithop_50_0 = Add i32 temp_220_arithop_50_0, temp_25_arithop_50_0 
              #                    occupy a2 with temp_220_arithop_50_0
              #                    occupy a0 with temp_25_arithop_50_0
              #                    load from temp_25_arithop_50_0 in mem


    lw      a0,580(sp)
              #                    occupy a1 with temp_221_arithop_50_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1168 untrack temp_25_arithop_50_0 
              #                    occupy a0 with temp_25_arithop_50_0
              #                    release a0 with temp_25_arithop_50_0
              #                     1051 untrack temp_220_arithop_50_0 
              #                    occupy a2 with temp_220_arithop_50_0
              #                    release a2 with temp_220_arithop_50_0
              #                     776  temp_222_arithop_50_0 = Add i32 temp_221_arithop_50_0, temp_28_arithop_50_0 
              #                    occupy a1 with temp_221_arithop_50_0
              #                    occupy a0 with temp_28_arithop_50_0
              #                    load from temp_28_arithop_50_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_222_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1132 untrack temp_28_arithop_50_0 
              #                    occupy a0 with temp_28_arithop_50_0
              #                    release a0 with temp_28_arithop_50_0
              #                     1015 untrack temp_221_arithop_50_0 
              #                    occupy a1 with temp_221_arithop_50_0
              #                    release a1 with temp_221_arithop_50_0
              #                     778  temp_223_arithop_50_0 = Sub i32 temp_222_arithop_50_0, temp_31_arithop_50_0 
              #                    occupy a2 with temp_222_arithop_50_0
              #                    occupy a0 with temp_31_arithop_50_0
              #                    load from temp_31_arithop_50_0 in mem


    lw      a0,556(sp)
              #                    occupy a1 with temp_223_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_31_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_223_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_222_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1176 untrack temp_31_arithop_50_0 
              #                    occupy a0 with temp_31_arithop_50_0
              #                    release a0 with temp_31_arithop_50_0
              #                     1038 untrack temp_222_arithop_50_0 
              #                    occupy a2 with temp_222_arithop_50_0
              #                    release a2 with temp_222_arithop_50_0
              #                     780  temp_224_arithop_50_0 = Sub i32 temp_223_arithop_50_0, temp_34_arithop_50_0 
              #                    occupy a1 with temp_223_arithop_50_0
              #                    occupy a0 with temp_34_arithop_50_0
              #                    load from temp_34_arithop_50_0 in mem


    lw      a0,544(sp)
              #                    occupy a2 with temp_224_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_34_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_223_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_224_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1121 untrack temp_223_arithop_50_0 
              #                    occupy a1 with temp_223_arithop_50_0
              #                    release a1 with temp_223_arithop_50_0
              #                     1085 untrack temp_34_arithop_50_0 
              #                    occupy a0 with temp_34_arithop_50_0
              #                    release a0 with temp_34_arithop_50_0
              #                     782  temp_225_arithop_50_0 = Sub i32 temp_224_arithop_50_0, temp_37_arithop_50_0 
              #                    occupy a2 with temp_224_arithop_50_0
              #                    occupy a0 with temp_37_arithop_50_0
              #                    load from temp_37_arithop_50_0 in mem


    lw      a0,532(sp)
              #                    occupy a1 with temp_225_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_37_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_225_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_224_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1101 untrack temp_224_arithop_50_0 
              #                    occupy a2 with temp_224_arithop_50_0
              #                    release a2 with temp_224_arithop_50_0
              #                     1022 untrack temp_37_arithop_50_0 
              #                    occupy a0 with temp_37_arithop_50_0
              #                    release a0 with temp_37_arithop_50_0
              #                     784  temp_226_arithop_50_0 = Sub i32 temp_225_arithop_50_0, temp_40_arithop_50_0 
              #                    occupy a1 with temp_225_arithop_50_0
              #                    occupy a0 with temp_40_arithop_50_0
              #                    load from temp_40_arithop_50_0 in mem


    lw      a0,520(sp)
              #                    occupy a2 with temp_226_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_40_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_225_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_226_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1099 untrack temp_225_arithop_50_0 
              #                    occupy a1 with temp_225_arithop_50_0
              #                    release a1 with temp_225_arithop_50_0
              #                     1013 untrack temp_40_arithop_50_0 
              #                    occupy a0 with temp_40_arithop_50_0
              #                    release a0 with temp_40_arithop_50_0
              #                     786  temp_227_arithop_50_0 = Add i32 temp_226_arithop_50_0, temp_43_arithop_50_0 
              #                    occupy a2 with temp_226_arithop_50_0
              #                    occupy a0 with temp_43_arithop_50_0
              #                    load from temp_43_arithop_50_0 in mem


    lw      a0,508(sp)
              #                    occupy a1 with temp_227_arithop_50_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1146 untrack temp_43_arithop_50_0 
              #                    occupy a0 with temp_43_arithop_50_0
              #                    release a0 with temp_43_arithop_50_0
              #                     1043 untrack temp_226_arithop_50_0 
              #                    occupy a2 with temp_226_arithop_50_0
              #                    release a2 with temp_226_arithop_50_0
              #                     788  temp_228_arithop_50_0 = Add i32 temp_227_arithop_50_0, temp_46_arithop_50_0 
              #                    occupy a1 with temp_227_arithop_50_0
              #                    occupy a0 with temp_46_arithop_50_0
              #                    load from temp_46_arithop_50_0 in mem


    lw      a0,496(sp)
              #                    occupy a2 with temp_228_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1074 untrack temp_227_arithop_50_0 
              #                    occupy a1 with temp_227_arithop_50_0
              #                    release a1 with temp_227_arithop_50_0
              #                     1056 untrack temp_46_arithop_50_0 
              #                    occupy a0 with temp_46_arithop_50_0
              #                    release a0 with temp_46_arithop_50_0
              #                     790  temp_229_arithop_50_0 = Add i32 temp_228_arithop_50_0, temp_49_arithop_50_0 
              #                    occupy a2 with temp_228_arithop_50_0
              #                    occupy a0 with temp_49_arithop_50_0
              #                    load from temp_49_arithop_50_0 in mem


    lw      a0,484(sp)
              #                    occupy a1 with temp_229_arithop_50_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1047 untrack temp_49_arithop_50_0 
              #                    occupy a0 with temp_49_arithop_50_0
              #                    release a0 with temp_49_arithop_50_0
              #                     1033 untrack temp_228_arithop_50_0 
              #                    occupy a2 with temp_228_arithop_50_0
              #                    release a2 with temp_228_arithop_50_0
              #                     792  temp_230_arithop_50_0 = Add i32 temp_229_arithop_50_0, temp_52_arithop_50_0 
              #                    occupy a1 with temp_229_arithop_50_0
              #                    occupy a0 with temp_52_arithop_50_0
              #                    load from temp_52_arithop_50_0 in mem


    lw      a0,472(sp)
              #                    occupy a2 with temp_230_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1086 untrack temp_229_arithop_50_0 
              #                    occupy a1 with temp_229_arithop_50_0
              #                    release a1 with temp_229_arithop_50_0
              #                     1045 untrack temp_52_arithop_50_0 
              #                    occupy a0 with temp_52_arithop_50_0
              #                    release a0 with temp_52_arithop_50_0
              #                     794  temp_231_arithop_50_0 = Sub i32 temp_230_arithop_50_0, temp_55_arithop_50_0 
              #                    occupy a2 with temp_230_arithop_50_0
              #                    occupy a0 with temp_55_arithop_50_0
              #                    load from temp_55_arithop_50_0 in mem


    lw      a0,460(sp)
              #                    occupy a1 with temp_231_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_55_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_231_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_230_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1115 untrack temp_55_arithop_50_0 
              #                    occupy a0 with temp_55_arithop_50_0
              #                    release a0 with temp_55_arithop_50_0
              #                     1114 untrack temp_230_arithop_50_0 
              #                    occupy a2 with temp_230_arithop_50_0
              #                    release a2 with temp_230_arithop_50_0
              #                     796  temp_232_arithop_50_0 = Sub i32 temp_231_arithop_50_0, temp_58_arithop_50_0 
              #                    occupy a1 with temp_231_arithop_50_0
              #                    occupy a0 with temp_58_arithop_50_0
              #                    load from temp_58_arithop_50_0 in mem


    lw      a0,448(sp)
              #                    occupy a2 with temp_232_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_58_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_231_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_232_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1063 untrack temp_231_arithop_50_0 
              #                    occupy a1 with temp_231_arithop_50_0
              #                    release a1 with temp_231_arithop_50_0
              #                     1040 untrack temp_58_arithop_50_0 
              #                    occupy a0 with temp_58_arithop_50_0
              #                    release a0 with temp_58_arithop_50_0
              #                     798  temp_233_arithop_50_0 = Sub i32 temp_232_arithop_50_0, temp_61_arithop_50_0 
              #                    occupy a2 with temp_232_arithop_50_0
              #                    occupy a0 with temp_61_arithop_50_0
              #                    load from temp_61_arithop_50_0 in mem


    lw      a0,436(sp)
              #                    occupy a1 with temp_233_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_61_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_233_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_232_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1172 untrack temp_232_arithop_50_0 
              #                    occupy a2 with temp_232_arithop_50_0
              #                    release a2 with temp_232_arithop_50_0
              #                     1116 untrack temp_61_arithop_50_0 
              #                    occupy a0 with temp_61_arithop_50_0
              #                    release a0 with temp_61_arithop_50_0
              #                     800  temp_234_arithop_50_0 = Sub i32 temp_233_arithop_50_0, temp_64_arithop_50_0 
              #                    occupy a1 with temp_233_arithop_50_0
              #                    occupy a0 with temp_64_arithop_50_0
              #                    load from temp_64_arithop_50_0 in mem


    lw      a0,424(sp)
              #                    occupy a2 with temp_234_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_64_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_233_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_234_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1075 untrack temp_64_arithop_50_0 
              #                    occupy a0 with temp_64_arithop_50_0
              #                    release a0 with temp_64_arithop_50_0
              #                     1009 untrack temp_233_arithop_50_0 
              #                    occupy a1 with temp_233_arithop_50_0
              #                    release a1 with temp_233_arithop_50_0
              #                     802  temp_235_arithop_50_0 = Add i32 temp_234_arithop_50_0, temp_67_arithop_50_0 
              #                    occupy a2 with temp_234_arithop_50_0
              #                    occupy a0 with temp_67_arithop_50_0
              #                    load from temp_67_arithop_50_0 in mem


    lw      a0,412(sp)
              #                    occupy a1 with temp_235_arithop_50_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1120 untrack temp_67_arithop_50_0 
              #                    occupy a0 with temp_67_arithop_50_0
              #                    release a0 with temp_67_arithop_50_0
              #                     1087 untrack temp_234_arithop_50_0 
              #                    occupy a2 with temp_234_arithop_50_0
              #                    release a2 with temp_234_arithop_50_0
              #                     804  temp_236_arithop_50_0 = Add i32 temp_235_arithop_50_0, temp_70_arithop_50_0 
              #                    occupy a1 with temp_235_arithop_50_0
              #                    occupy a0 with temp_70_arithop_50_0
              #                    load from temp_70_arithop_50_0 in mem


    lw      a0,400(sp)
              #                    occupy a2 with temp_236_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1142 untrack temp_70_arithop_50_0 
              #                    occupy a0 with temp_70_arithop_50_0
              #                    release a0 with temp_70_arithop_50_0
              #                     1062 untrack temp_235_arithop_50_0 
              #                    occupy a1 with temp_235_arithop_50_0
              #                    release a1 with temp_235_arithop_50_0
              #                     806  temp_237_arithop_50_0 = Add i32 temp_236_arithop_50_0, temp_73_arithop_50_0 
              #                    occupy a2 with temp_236_arithop_50_0
              #                    occupy a0 with temp_73_arithop_50_0
              #                    load from temp_73_arithop_50_0 in mem


    lw      a0,388(sp)
              #                    occupy a1 with temp_237_arithop_50_0
    ADDW    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1090 untrack temp_73_arithop_50_0 
              #                    occupy a0 with temp_73_arithop_50_0
              #                    release a0 with temp_73_arithop_50_0
              #                     1012 untrack temp_236_arithop_50_0 
              #                    occupy a2 with temp_236_arithop_50_0
              #                    release a2 with temp_236_arithop_50_0
              #                     808  temp_238_arithop_50_0 = Add i32 temp_237_arithop_50_0, temp_76_arithop_50_0 
              #                    occupy a1 with temp_237_arithop_50_0
              #                    occupy a0 with temp_76_arithop_50_0
              #                    load from temp_76_arithop_50_0 in mem


    lw      a0,376(sp)
              #                    occupy a2 with temp_238_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1119 untrack temp_76_arithop_50_0 
              #                    occupy a0 with temp_76_arithop_50_0
              #                    release a0 with temp_76_arithop_50_0
              #                     1017 untrack temp_237_arithop_50_0 
              #                    occupy a1 with temp_237_arithop_50_0
              #                    release a1 with temp_237_arithop_50_0
              #                     810  temp_239_arithop_50_0 = Sub i32 temp_238_arithop_50_0, temp_79_arithop_50_0 
              #                    occupy a2 with temp_238_arithop_50_0
              #                    occupy a0 with temp_79_arithop_50_0
              #                    load from temp_79_arithop_50_0 in mem


    lw      a0,364(sp)
              #                    occupy a1 with temp_239_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_79_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_239_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_238_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1080 untrack temp_79_arithop_50_0 
              #                    occupy a0 with temp_79_arithop_50_0
              #                    release a0 with temp_79_arithop_50_0
              #                     1049 untrack temp_238_arithop_50_0 
              #                    occupy a2 with temp_238_arithop_50_0
              #                    release a2 with temp_238_arithop_50_0
              #                     812  temp_240_arithop_50_0 = Sub i32 temp_239_arithop_50_0, temp_82_arithop_50_0 
              #                    occupy a1 with temp_239_arithop_50_0
              #                    occupy a0 with temp_82_arithop_50_0
              #                    load from temp_82_arithop_50_0 in mem


    lw      a0,352(sp)
              #                    occupy a2 with temp_240_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_82_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_239_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_240_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1127 untrack temp_82_arithop_50_0 
              #                    occupy a0 with temp_82_arithop_50_0
              #                    release a0 with temp_82_arithop_50_0
              #                     1031 untrack temp_239_arithop_50_0 
              #                    occupy a1 with temp_239_arithop_50_0
              #                    release a1 with temp_239_arithop_50_0
              #                     814  temp_241_arithop_50_0 = Sub i32 temp_240_arithop_50_0, temp_85_arithop_50_0 
              #                    occupy a2 with temp_240_arithop_50_0
              #                    occupy a0 with temp_85_arithop_50_0
              #                    load from temp_85_arithop_50_0 in mem


    lw      a0,340(sp)
              #                    occupy a1 with temp_241_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_85_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_241_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_240_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1089 untrack temp_85_arithop_50_0 
              #                    occupy a0 with temp_85_arithop_50_0
              #                    release a0 with temp_85_arithop_50_0
              #                     1073 untrack temp_240_arithop_50_0 
              #                    occupy a2 with temp_240_arithop_50_0
              #                    release a2 with temp_240_arithop_50_0
              #                     816  temp_242_arithop_50_0 = Sub i32 temp_241_arithop_50_0, temp_88_arithop_50_0 
              #                    occupy a1 with temp_241_arithop_50_0
              #                    occupy a0 with temp_88_arithop_50_0
              #                    load from temp_88_arithop_50_0 in mem


    lw      a0,328(sp)
              #                    occupy a2 with temp_242_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_88_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_241_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_242_arithop_50_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_94_arithop_50_0, tracked: true } |     a4:Freed { symidx: *a1_0, tracked: false } |     a5:Freed { symidx: temp_6_value_from_ptr_50_0, tracked: true } |     s1:Freed { symidx: temp_97_arithop_50_0, tracked: true } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Freed { symidx: temp_9_value_from_ptr_50_0, tracked: true } |     s6:Freed { symidx: temp_100_arithop_50_0, tracked: true } |     s7:Freed { symidx: temp_91_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1154 untrack temp_88_arithop_50_0 
              #                    occupy a0 with temp_88_arithop_50_0
              #                    release a0 with temp_88_arithop_50_0
              #                     1130 untrack temp_241_arithop_50_0 
              #                    occupy a1 with temp_241_arithop_50_0
              #                    release a1 with temp_241_arithop_50_0
              #                     818  temp_243_arithop_50_0 = Add i32 temp_242_arithop_50_0, temp_91_arithop_50_0 
              #                    occupy a2 with temp_242_arithop_50_0
              #                    occupy s7 with temp_91_arithop_50_0
              #                    occupy a0 with temp_243_arithop_50_0
    ADDW    a0,a2,s7
              #                    free a2
              #                    free s7
              #                    free a0
              #                     1139 untrack temp_242_arithop_50_0 
              #                    occupy a2 with temp_242_arithop_50_0
              #                    release a2 with temp_242_arithop_50_0
              #                     1136 untrack temp_91_arithop_50_0 
              #                    occupy s7 with temp_91_arithop_50_0
              #                    release s7 with temp_91_arithop_50_0
              #                     820  temp_244_arithop_50_0 = Add i32 temp_243_arithop_50_0, temp_94_arithop_50_0 
              #                    occupy a0 with temp_243_arithop_50_0
              #                    occupy a3 with temp_94_arithop_50_0
              #                    occupy a1 with temp_244_arithop_50_0
    ADDW    a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                     1156 untrack temp_94_arithop_50_0 
              #                    occupy a3 with temp_94_arithop_50_0
              #                    release a3 with temp_94_arithop_50_0
              #                     1082 untrack temp_243_arithop_50_0 
              #                    occupy a0 with temp_243_arithop_50_0
              #                    release a0 with temp_243_arithop_50_0
              #                     822  temp_245_arithop_50_0 = Add i32 temp_244_arithop_50_0, temp_97_arithop_50_0 
              #                    occupy a1 with temp_244_arithop_50_0
              #                    occupy s1 with temp_97_arithop_50_0
              #                    occupy a0 with temp_245_arithop_50_0
    ADDW    a0,a1,s1
              #                    free a1
              #                    free s1
              #                    free a0
              #                     1126 untrack temp_244_arithop_50_0 
              #                    occupy a1 with temp_244_arithop_50_0
              #                    release a1 with temp_244_arithop_50_0
              #                     1027 untrack temp_97_arithop_50_0 
              #                    occupy s1 with temp_97_arithop_50_0
              #                    release s1 with temp_97_arithop_50_0
              #                     824  temp_246_arithop_50_0 = Add i32 temp_245_arithop_50_0, temp_100_arithop_50_0 
              #                    occupy a0 with temp_245_arithop_50_0
              #                    occupy s6 with temp_100_arithop_50_0
              #                    occupy a1 with temp_246_arithop_50_0
    ADDW    a1,a0,s6
              #                    free a0
              #                    free s6
              #                    free a1
              #                     1151 untrack temp_100_arithop_50_0 
              #                    occupy s6 with temp_100_arithop_50_0
              #                    release s6 with temp_100_arithop_50_0
              #                     1048 untrack temp_245_arithop_50_0 
              #                    occupy a0 with temp_245_arithop_50_0
              #                    release a0 with temp_245_arithop_50_0
              #                     826  (nop) 
              #                     827  mu a1_0_0:826 
              #                     829  temp_248_arithop_50_0 = Add i32 temp_246_arithop_50_0, temp_6_value_from_ptr_50_0 
              #                    occupy a1 with temp_246_arithop_50_0
              #                    occupy a5 with temp_6_value_from_ptr_50_0
              #                    occupy a0 with temp_248_arithop_50_0
    ADDW    a0,a1,a5
              #                    free a1
              #                    free a5
              #                    free a0
              #                     1034 untrack temp_246_arithop_50_0 
              #                    occupy a1 with temp_246_arithop_50_0
              #                    release a1 with temp_246_arithop_50_0
              #                     1007 untrack temp_6_value_from_ptr_50_0 
              #                    occupy a5 with temp_6_value_from_ptr_50_0
              #                    release a5 with temp_6_value_from_ptr_50_0
              #                     831  (nop) 
              #                     832  mu a2_0_0:831 
              #                     834  temp_250_arithop_50_0 = Sub i32 temp_248_arithop_50_0, temp_9_value_from_ptr_50_0 
              #                    occupy a0 with temp_248_arithop_50_0
              #                    occupy s3 with temp_9_value_from_ptr_50_0
              #                    occupy a1 with temp_250_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_248_arithop_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_250_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |     s3:Occupied { symidx: temp_9_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a0,s3
              #                    free a0
              #                    free s3
              #                    free a1
              #                     1103 untrack temp_248_arithop_50_0 
              #                    occupy a0 with temp_248_arithop_50_0
              #                    release a0 with temp_248_arithop_50_0
              #                     1091 untrack temp_9_value_from_ptr_50_0 
              #                    occupy s3 with temp_9_value_from_ptr_50_0
              #                    release s3 with temp_9_value_from_ptr_50_0
              #                     836  (nop) 
              #                     837  mu a3_0_0:836 
              #                     839  temp_252_arithop_50_0 = Add i32 temp_250_arithop_50_0, temp_12_value_from_ptr_50_0 
              #                    occupy a1 with temp_250_arithop_50_0
              #                    occupy a0 with temp_12_value_from_ptr_50_0
              #                    load from temp_12_value_from_ptr_50_0 in mem


    lw      a0,632(sp)
              #                    occupy a2 with temp_252_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1145 untrack temp_250_arithop_50_0 
              #                    occupy a1 with temp_250_arithop_50_0
              #                    release a1 with temp_250_arithop_50_0
              #                     1137 untrack temp_12_value_from_ptr_50_0 
              #                    occupy a0 with temp_12_value_from_ptr_50_0
              #                    release a0 with temp_12_value_from_ptr_50_0
              #                     841  (nop) 
              #                     842  mu a4_0_0:841 
              #                     844  temp_254_arithop_50_0 = Sub i32 temp_252_arithop_50_0, temp_15_value_from_ptr_50_0 
              #                    occupy a2 with temp_252_arithop_50_0
              #                    occupy a0 with temp_15_value_from_ptr_50_0
              #                    load from temp_15_value_from_ptr_50_0 in mem


    lw      a0,620(sp)
              #                    occupy a1 with temp_254_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_15_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_254_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_252_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1155 untrack temp_15_value_from_ptr_50_0 
              #                    occupy a0 with temp_15_value_from_ptr_50_0
              #                    release a0 with temp_15_value_from_ptr_50_0
              #                     1018 untrack temp_252_arithop_50_0 
              #                    occupy a2 with temp_252_arithop_50_0
              #                    release a2 with temp_252_arithop_50_0
              #                     846  (nop) 
              #                     847  mu a5_0_0:846 
              #                     849  temp_256_arithop_50_0 = Add i32 temp_254_arithop_50_0, temp_18_value_from_ptr_50_0 
              #                    occupy a1 with temp_254_arithop_50_0
              #                    occupy a0 with temp_18_value_from_ptr_50_0
              #                    load from temp_18_value_from_ptr_50_0 in mem


    lw      a0,608(sp)
              #                    occupy a2 with temp_256_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1148 untrack temp_18_value_from_ptr_50_0 
              #                    occupy a0 with temp_18_value_from_ptr_50_0
              #                    release a0 with temp_18_value_from_ptr_50_0
              #                     1011 untrack temp_254_arithop_50_0 
              #                    occupy a1 with temp_254_arithop_50_0
              #                    release a1 with temp_254_arithop_50_0
              #                     851  (nop) 
              #                     852  mu a6_0_0:851 
              #                     854  temp_258_arithop_50_0 = Sub i32 temp_256_arithop_50_0, temp_21_value_from_ptr_50_0 
              #                    occupy a2 with temp_256_arithop_50_0
              #                    occupy a0 with temp_21_value_from_ptr_50_0
              #                    load from temp_21_value_from_ptr_50_0 in mem


    lw      a0,596(sp)
              #                    occupy a1 with temp_258_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_21_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_258_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_256_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1171 untrack temp_256_arithop_50_0 
              #                    occupy a2 with temp_256_arithop_50_0
              #                    release a2 with temp_256_arithop_50_0
              #                     1094 untrack temp_21_value_from_ptr_50_0 
              #                    occupy a0 with temp_21_value_from_ptr_50_0
              #                    release a0 with temp_21_value_from_ptr_50_0
              #                     856  (nop) 
              #                     857  mu a7_0_0:856 
              #                     859  temp_260_arithop_50_0 = Add i32 temp_258_arithop_50_0, temp_24_value_from_ptr_50_0 
              #                    occupy a1 with temp_258_arithop_50_0
              #                    occupy a0 with temp_24_value_from_ptr_50_0
              #                    load from temp_24_value_from_ptr_50_0 in mem


    lw      a0,584(sp)
              #                    occupy a2 with temp_260_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1173 untrack temp_258_arithop_50_0 
              #                    occupy a1 with temp_258_arithop_50_0
              #                    release a1 with temp_258_arithop_50_0
              #                     1065 untrack temp_24_value_from_ptr_50_0 
              #                    occupy a0 with temp_24_value_from_ptr_50_0
              #                    release a0 with temp_24_value_from_ptr_50_0
              #                     861  (nop) 
              #                     862  mu a8_0_0:861 
              #                     864  temp_262_arithop_50_0 = Sub i32 temp_260_arithop_50_0, temp_27_value_from_ptr_50_0 
              #                    occupy a2 with temp_260_arithop_50_0
              #                    occupy a0 with temp_27_value_from_ptr_50_0
              #                    load from temp_27_value_from_ptr_50_0 in mem


    lw      a0,572(sp)
              #                    occupy a1 with temp_262_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_27_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_262_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_260_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1169 untrack temp_260_arithop_50_0 
              #                    occupy a2 with temp_260_arithop_50_0
              #                    release a2 with temp_260_arithop_50_0
              #                     1098 untrack temp_27_value_from_ptr_50_0 
              #                    occupy a0 with temp_27_value_from_ptr_50_0
              #                    release a0 with temp_27_value_from_ptr_50_0
              #                     866  (nop) 
              #                     867  mu a9_0_0:866 
              #                     869  temp_264_arithop_50_0 = Add i32 temp_262_arithop_50_0, temp_30_value_from_ptr_50_0 
              #                    occupy a1 with temp_262_arithop_50_0
              #                    occupy a0 with temp_30_value_from_ptr_50_0
              #                    load from temp_30_value_from_ptr_50_0 in mem


    lw      a0,560(sp)
              #                    occupy a2 with temp_264_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1150 untrack temp_262_arithop_50_0 
              #                    occupy a1 with temp_262_arithop_50_0
              #                    release a1 with temp_262_arithop_50_0
              #                     1135 untrack temp_30_value_from_ptr_50_0 
              #                    occupy a0 with temp_30_value_from_ptr_50_0
              #                    release a0 with temp_30_value_from_ptr_50_0
              #                     871  (nop) 
              #                     872  mu a10_0_0:871 
              #                     874  temp_266_arithop_50_0 = Sub i32 temp_264_arithop_50_0, temp_33_value_from_ptr_50_0 
              #                    occupy a2 with temp_264_arithop_50_0
              #                    occupy a0 with temp_33_value_from_ptr_50_0
              #                    load from temp_33_value_from_ptr_50_0 in mem


    lw      a0,548(sp)
              #                    occupy a1 with temp_266_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_33_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_266_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_264_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1117 untrack temp_264_arithop_50_0 
              #                    occupy a2 with temp_264_arithop_50_0
              #                    release a2 with temp_264_arithop_50_0
              #                     1028 untrack temp_33_value_from_ptr_50_0 
              #                    occupy a0 with temp_33_value_from_ptr_50_0
              #                    release a0 with temp_33_value_from_ptr_50_0
              #                     876  (nop) 
              #                     877  mu a11_0_0:876 
              #                     879  temp_268_arithop_50_0 = Add i32 temp_266_arithop_50_0, temp_36_value_from_ptr_50_0 
              #                    occupy a1 with temp_266_arithop_50_0
              #                    occupy a0 with temp_36_value_from_ptr_50_0
              #                    load from temp_36_value_from_ptr_50_0 in mem


    lw      a0,536(sp)
              #                    occupy a2 with temp_268_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1008 untrack temp_36_value_from_ptr_50_0 
              #                    occupy a0 with temp_36_value_from_ptr_50_0
              #                    release a0 with temp_36_value_from_ptr_50_0
              #                     1006 untrack temp_266_arithop_50_0 
              #                    occupy a1 with temp_266_arithop_50_0
              #                    release a1 with temp_266_arithop_50_0
              #                     881  (nop) 
              #                     882  mu a12_0_0:881 
              #                     884  temp_270_arithop_50_0 = Sub i32 temp_268_arithop_50_0, temp_39_value_from_ptr_50_0 
              #                    occupy a2 with temp_268_arithop_50_0
              #                    occupy a0 with temp_39_value_from_ptr_50_0
              #                    load from temp_39_value_from_ptr_50_0 in mem


    lw      a0,524(sp)
              #                    occupy a1 with temp_270_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_39_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_270_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_268_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1167 untrack temp_39_value_from_ptr_50_0 
              #                    occupy a0 with temp_39_value_from_ptr_50_0
              #                    release a0 with temp_39_value_from_ptr_50_0
              #                     1118 untrack temp_268_arithop_50_0 
              #                    occupy a2 with temp_268_arithop_50_0
              #                    release a2 with temp_268_arithop_50_0
              #                     886  (nop) 
              #                     887  mu a13_0_0:886 
              #                     889  temp_272_arithop_50_0 = Add i32 temp_270_arithop_50_0, temp_42_value_from_ptr_50_0 
              #                    occupy a1 with temp_270_arithop_50_0
              #                    occupy a0 with temp_42_value_from_ptr_50_0
              #                    load from temp_42_value_from_ptr_50_0 in mem


    lw      a0,512(sp)
              #                    occupy a2 with temp_272_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1175 untrack temp_42_value_from_ptr_50_0 
              #                    occupy a0 with temp_42_value_from_ptr_50_0
              #                    release a0 with temp_42_value_from_ptr_50_0
              #                     1044 untrack temp_270_arithop_50_0 
              #                    occupy a1 with temp_270_arithop_50_0
              #                    release a1 with temp_270_arithop_50_0
              #                     891  (nop) 
              #                     892  mu a14_0_0:891 
              #                     894  temp_274_arithop_50_0 = Sub i32 temp_272_arithop_50_0, temp_45_value_from_ptr_50_0 
              #                    occupy a2 with temp_272_arithop_50_0
              #                    occupy a0 with temp_45_value_from_ptr_50_0
              #                    load from temp_45_value_from_ptr_50_0 in mem


    lw      a0,500(sp)
              #                    occupy a1 with temp_274_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_45_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_274_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_272_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1057 untrack temp_45_value_from_ptr_50_0 
              #                    occupy a0 with temp_45_value_from_ptr_50_0
              #                    release a0 with temp_45_value_from_ptr_50_0
              #                     1029 untrack temp_272_arithop_50_0 
              #                    occupy a2 with temp_272_arithop_50_0
              #                    release a2 with temp_272_arithop_50_0
              #                     896  (nop) 
              #                     897  mu a15_0_0:896 
              #                     899  temp_276_arithop_50_0 = Add i32 temp_274_arithop_50_0, temp_48_value_from_ptr_50_0 
              #                    occupy a1 with temp_274_arithop_50_0
              #                    occupy a0 with temp_48_value_from_ptr_50_0
              #                    load from temp_48_value_from_ptr_50_0 in mem


    lw      a0,488(sp)
              #                    occupy a2 with temp_276_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1140 untrack temp_48_value_from_ptr_50_0 
              #                    occupy a0 with temp_48_value_from_ptr_50_0
              #                    release a0 with temp_48_value_from_ptr_50_0
              #                     1110 untrack temp_274_arithop_50_0 
              #                    occupy a1 with temp_274_arithop_50_0
              #                    release a1 with temp_274_arithop_50_0
              #                     901  (nop) 
              #                     902  mu a16_0_0:901 
              #                     904  temp_278_arithop_50_0 = Sub i32 temp_276_arithop_50_0, temp_51_value_from_ptr_50_0 
              #                    occupy a2 with temp_276_arithop_50_0
              #                    occupy a0 with temp_51_value_from_ptr_50_0
              #                    load from temp_51_value_from_ptr_50_0 in mem


    lw      a0,476(sp)
              #                    occupy a1 with temp_278_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_51_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_278_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_276_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1170 untrack temp_276_arithop_50_0 
              #                    occupy a2 with temp_276_arithop_50_0
              #                    release a2 with temp_276_arithop_50_0
              #                     1079 untrack temp_51_value_from_ptr_50_0 
              #                    occupy a0 with temp_51_value_from_ptr_50_0
              #                    release a0 with temp_51_value_from_ptr_50_0
              #                     906  (nop) 
              #                     907  mu a17_0_0:906 
              #                     909  temp_280_arithop_50_0 = Add i32 temp_278_arithop_50_0, temp_54_value_from_ptr_50_0 
              #                    occupy a1 with temp_278_arithop_50_0
              #                    occupy a0 with temp_54_value_from_ptr_50_0
              #                    load from temp_54_value_from_ptr_50_0 in mem


    lw      a0,464(sp)
              #                    occupy a2 with temp_280_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1050 untrack temp_278_arithop_50_0 
              #                    occupy a1 with temp_278_arithop_50_0
              #                    release a1 with temp_278_arithop_50_0
              #                     1030 untrack temp_54_value_from_ptr_50_0 
              #                    occupy a0 with temp_54_value_from_ptr_50_0
              #                    release a0 with temp_54_value_from_ptr_50_0
              #                     911  (nop) 
              #                     912  mu a18_0_0:911 
              #                     914  temp_282_arithop_50_0 = Sub i32 temp_280_arithop_50_0, temp_57_value_from_ptr_50_0 
              #                    occupy a2 with temp_280_arithop_50_0
              #                    occupy a0 with temp_57_value_from_ptr_50_0
              #                    load from temp_57_value_from_ptr_50_0 in mem


    lw      a0,452(sp)
              #                    occupy a1 with temp_282_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_57_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_282_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_280_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1138 untrack temp_57_value_from_ptr_50_0 
              #                    occupy a0 with temp_57_value_from_ptr_50_0
              #                    release a0 with temp_57_value_from_ptr_50_0
              #                     1025 untrack temp_280_arithop_50_0 
              #                    occupy a2 with temp_280_arithop_50_0
              #                    release a2 with temp_280_arithop_50_0
              #                     916  (nop) 
              #                     917  mu a19_0_0:916 
              #                     919  temp_284_arithop_50_0 = Add i32 temp_282_arithop_50_0, temp_60_value_from_ptr_50_0 
              #                    occupy a1 with temp_282_arithop_50_0
              #                    occupy a0 with temp_60_value_from_ptr_50_0
              #                    load from temp_60_value_from_ptr_50_0 in mem


    lw      a0,440(sp)
              #                    occupy a2 with temp_284_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1105 untrack temp_282_arithop_50_0 
              #                    occupy a1 with temp_282_arithop_50_0
              #                    release a1 with temp_282_arithop_50_0
              #                     1037 untrack temp_60_value_from_ptr_50_0 
              #                    occupy a0 with temp_60_value_from_ptr_50_0
              #                    release a0 with temp_60_value_from_ptr_50_0
              #                     921  (nop) 
              #                     922  mu a20_0_0:921 
              #                     924  temp_286_arithop_50_0 = Sub i32 temp_284_arithop_50_0, temp_63_value_from_ptr_50_0 
              #                    occupy a2 with temp_284_arithop_50_0
              #                    occupy a0 with temp_63_value_from_ptr_50_0
              #                    load from temp_63_value_from_ptr_50_0 in mem


    lw      a0,428(sp)
              #                    occupy a1 with temp_286_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_63_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_286_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_284_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1159 untrack temp_63_value_from_ptr_50_0 
              #                    occupy a0 with temp_63_value_from_ptr_50_0
              #                    release a0 with temp_63_value_from_ptr_50_0
              #                     1042 untrack temp_284_arithop_50_0 
              #                    occupy a2 with temp_284_arithop_50_0
              #                    release a2 with temp_284_arithop_50_0
              #                     926  (nop) 
              #                     927  mu a21_0_0:926 
              #                     929  temp_288_arithop_50_0 = Add i32 temp_286_arithop_50_0, temp_66_value_from_ptr_50_0 
              #                    occupy a1 with temp_286_arithop_50_0
              #                    occupy a0 with temp_66_value_from_ptr_50_0
              #                    load from temp_66_value_from_ptr_50_0 in mem


    lw      a0,416(sp)
              #                    occupy a2 with temp_288_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1092 untrack temp_286_arithop_50_0 
              #                    occupy a1 with temp_286_arithop_50_0
              #                    release a1 with temp_286_arithop_50_0
              #                     1068 untrack temp_66_value_from_ptr_50_0 
              #                    occupy a0 with temp_66_value_from_ptr_50_0
              #                    release a0 with temp_66_value_from_ptr_50_0
              #                     931  (nop) 
              #                     932  mu a22_0_0:931 
              #                     934  temp_290_arithop_50_0 = Sub i32 temp_288_arithop_50_0, temp_69_value_from_ptr_50_0 
              #                    occupy a2 with temp_288_arithop_50_0
              #                    occupy a0 with temp_69_value_from_ptr_50_0
              #                    load from temp_69_value_from_ptr_50_0 in mem


    lw      a0,404(sp)
              #                    occupy a1 with temp_290_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_69_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_290_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_288_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1174 untrack temp_69_value_from_ptr_50_0 
              #                    occupy a0 with temp_69_value_from_ptr_50_0
              #                    release a0 with temp_69_value_from_ptr_50_0
              #                     1060 untrack temp_288_arithop_50_0 
              #                    occupy a2 with temp_288_arithop_50_0
              #                    release a2 with temp_288_arithop_50_0
              #                     936  (nop) 
              #                     937  mu a23_0_0:936 
              #                     939  temp_292_arithop_50_0 = Add i32 temp_290_arithop_50_0, temp_72_value_from_ptr_50_0 
              #                    occupy a1 with temp_290_arithop_50_0
              #                    occupy a0 with temp_72_value_from_ptr_50_0
              #                    load from temp_72_value_from_ptr_50_0 in mem


    lw      a0,392(sp)
              #                    occupy a2 with temp_292_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1113 untrack temp_290_arithop_50_0 
              #                    occupy a1 with temp_290_arithop_50_0
              #                    release a1 with temp_290_arithop_50_0
              #                     1016 untrack temp_72_value_from_ptr_50_0 
              #                    occupy a0 with temp_72_value_from_ptr_50_0
              #                    release a0 with temp_72_value_from_ptr_50_0
              #                     941  (nop) 
              #                     942  mu a24_0_0:941 
              #                     944  temp_294_arithop_50_0 = Sub i32 temp_292_arithop_50_0, temp_75_value_from_ptr_50_0 
              #                    occupy a2 with temp_292_arithop_50_0
              #                    occupy a0 with temp_75_value_from_ptr_50_0
              #                    load from temp_75_value_from_ptr_50_0 in mem


    lw      a0,380(sp)
              #                    occupy a1 with temp_294_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_75_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_294_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_292_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1070 untrack temp_292_arithop_50_0 
              #                    occupy a2 with temp_292_arithop_50_0
              #                    release a2 with temp_292_arithop_50_0
              #                     1046 untrack temp_75_value_from_ptr_50_0 
              #                    occupy a0 with temp_75_value_from_ptr_50_0
              #                    release a0 with temp_75_value_from_ptr_50_0
              #                     946  (nop) 
              #                     947  mu a25_0_0:946 
              #                     949  temp_296_arithop_50_0 = Add i32 temp_294_arithop_50_0, temp_78_value_from_ptr_50_0 
              #                    occupy a1 with temp_294_arithop_50_0
              #                    occupy a0 with temp_78_value_from_ptr_50_0
              #                    load from temp_78_value_from_ptr_50_0 in mem


    lw      a0,368(sp)
              #                    occupy a2 with temp_296_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1149 untrack temp_78_value_from_ptr_50_0 
              #                    occupy a0 with temp_78_value_from_ptr_50_0
              #                    release a0 with temp_78_value_from_ptr_50_0
              #                     1010 untrack temp_294_arithop_50_0 
              #                    occupy a1 with temp_294_arithop_50_0
              #                    release a1 with temp_294_arithop_50_0
              #                     951  (nop) 
              #                     952  mu a26_0_0:951 
              #                     954  temp_298_arithop_50_0 = Sub i32 temp_296_arithop_50_0, temp_81_value_from_ptr_50_0 
              #                    occupy a2 with temp_296_arithop_50_0
              #                    occupy a0 with temp_81_value_from_ptr_50_0
              #                    load from temp_81_value_from_ptr_50_0 in mem


    lw      a0,356(sp)
              #                    occupy a1 with temp_298_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_81_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_298_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_296_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1162 untrack temp_296_arithop_50_0 
              #                    occupy a2 with temp_296_arithop_50_0
              #                    release a2 with temp_296_arithop_50_0
              #                     1088 untrack temp_81_value_from_ptr_50_0 
              #                    occupy a0 with temp_81_value_from_ptr_50_0
              #                    release a0 with temp_81_value_from_ptr_50_0
              #                     956  (nop) 
              #                     957  mu a27_0_0:956 
              #                     959  temp_300_arithop_50_0 = Add i32 temp_298_arithop_50_0, temp_84_value_from_ptr_50_0 
              #                    occupy a1 with temp_298_arithop_50_0
              #                    occupy a0 with temp_84_value_from_ptr_50_0
              #                    load from temp_84_value_from_ptr_50_0 in mem


    lw      a0,344(sp)
              #                    occupy a2 with temp_300_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1144 untrack temp_298_arithop_50_0 
              #                    occupy a1 with temp_298_arithop_50_0
              #                    release a1 with temp_298_arithop_50_0
              #                     1061 untrack temp_84_value_from_ptr_50_0 
              #                    occupy a0 with temp_84_value_from_ptr_50_0
              #                    release a0 with temp_84_value_from_ptr_50_0
              #                     961  (nop) 
              #                     962  mu a28_0_0:961 
              #                     964  temp_302_arithop_50_0 = Sub i32 temp_300_arithop_50_0, temp_87_value_from_ptr_50_0 
              #                    occupy a2 with temp_300_arithop_50_0
              #                    occupy a0 with temp_87_value_from_ptr_50_0
              #                    load from temp_87_value_from_ptr_50_0 in mem


    lw      a0,332(sp)
              #                    occupy a1 with temp_302_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_87_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_302_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_300_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1143 untrack temp_87_value_from_ptr_50_0 
              #                    occupy a0 with temp_87_value_from_ptr_50_0
              #                    release a0 with temp_87_value_from_ptr_50_0
              #                     1036 untrack temp_300_arithop_50_0 
              #                    occupy a2 with temp_300_arithop_50_0
              #                    release a2 with temp_300_arithop_50_0
              #                     966  (nop) 
              #                     967  mu a29_0_0:966 
              #                     969  temp_304_arithop_50_0 = Add i32 temp_302_arithop_50_0, temp_90_value_from_ptr_50_0 
              #                    occupy a1 with temp_302_arithop_50_0
              #                    occupy a0 with temp_90_value_from_ptr_50_0
              #                    load from temp_90_value_from_ptr_50_0 in mem


    lw      a0,320(sp)
              #                    occupy a2 with temp_304_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1072 untrack temp_90_value_from_ptr_50_0 
              #                    occupy a0 with temp_90_value_from_ptr_50_0
              #                    release a0 with temp_90_value_from_ptr_50_0
              #                     1035 untrack temp_302_arithop_50_0 
              #                    occupy a1 with temp_302_arithop_50_0
              #                    release a1 with temp_302_arithop_50_0
              #                     971  (nop) 
              #                     972  mu a30_0_0:971 
              #                     974  temp_306_arithop_50_0 = Sub i32 temp_304_arithop_50_0, temp_93_value_from_ptr_50_0 
              #                    occupy a2 with temp_304_arithop_50_0
              #                    occupy a0 with temp_93_value_from_ptr_50_0
              #                    load from temp_93_value_from_ptr_50_0 in mem


    lw      a0,308(sp)
              #                    occupy a1 with temp_306_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_93_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_306_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_304_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1059 untrack temp_93_value_from_ptr_50_0 
              #                    occupy a0 with temp_93_value_from_ptr_50_0
              #                    release a0 with temp_93_value_from_ptr_50_0
              #                     1020 untrack temp_304_arithop_50_0 
              #                    occupy a2 with temp_304_arithop_50_0
              #                    release a2 with temp_304_arithop_50_0
              #                     976  (nop) 
              #                     977  mu a31_0_0:976 
              #                     979  temp_308_arithop_50_0 = Add i32 temp_306_arithop_50_0, temp_96_value_from_ptr_50_0 
              #                    occupy a1 with temp_306_arithop_50_0
              #                    occupy a0 with temp_96_value_from_ptr_50_0
              #                    load from temp_96_value_from_ptr_50_0 in mem


    lw      a0,296(sp)
              #                    occupy a2 with temp_308_arithop_50_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1158 untrack temp_306_arithop_50_0 
              #                    occupy a1 with temp_306_arithop_50_0
              #                    release a1 with temp_306_arithop_50_0
              #                     1069 untrack temp_96_value_from_ptr_50_0 
              #                    occupy a0 with temp_96_value_from_ptr_50_0
              #                    release a0 with temp_96_value_from_ptr_50_0
              #                     981  (nop) 
              #                     982  mu a32_0_0:981 
              #                     984  temp_310_arithop_50_0 = Sub i32 temp_308_arithop_50_0, temp_99_value_from_ptr_50_0 
              #                    occupy a2 with temp_308_arithop_50_0
              #                    occupy a0 with temp_99_value_from_ptr_50_0
              #                    load from temp_99_value_from_ptr_50_0 in mem


    lw      a0,284(sp)
              #                    occupy a1 with temp_310_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: temp_99_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_310_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_308_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *a1_0, tracked: false } |     s2:Freed { symidx: *a2_0, tracked: false } |  released_gpr_count:14,released_fpr_count:24


    subw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     1129 untrack temp_308_arithop_50_0 
              #                    occupy a2 with temp_308_arithop_50_0
              #                    release a2 with temp_308_arithop_50_0
              #                     1021 untrack temp_99_value_from_ptr_50_0 
              #                    occupy a0 with temp_99_value_from_ptr_50_0
              #                    release a0 with temp_99_value_from_ptr_50_0
              #                     985  ret temp_310_arithop_50_0 
              #                    load from ra_func_0 in mem
    ld      ra,848(sp)
              #                    load from s0_func_0 in mem
    ld      s0,840(sp)
              #                    occupy a1 with temp_310_arithop_50_0
              #                    store to temp_310_arithop_50_0 in mem offset legal
    sw      a1,0(sp)
              #                    release a1 with temp_310_arithop_50_0
              #                    occupy a0 with temp_310_arithop_50_0
              #                    load from temp_310_arithop_50_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,856
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     113  Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|a _s164 _i0:4 at 20|b _s164 _i0:4 at 16|temp_311_ret_of_getint _s164 _i0:4 at 12|temp_312_arithop _s164 _i0:4 at 8|temp_313_ret_of_func _s164 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     988  alloc i32 [a_164] 
              #                     990  alloc i32 [b_164] 
              #                     992  alloc i32 [temp_311_ret_of_getint_164] 
              #                     995  alloc i32 [temp_312_arithop_164] 
              #                     998  alloc i32 [temp_313_ret_of_func_164] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     989   
              #                     991   
              #                     993  temp_311_ret_of_getint_164_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     994  (nop) 
              #                     996  temp_312_arithop_164_0 = Add i32 temp_311_ret_of_getint_164_0, 18_0 
              #                    occupy a0 with temp_311_ret_of_getint_164_0
              #                    occupy a1 with 18_0
    li      a1, 18
              #                    occupy a2 with temp_312_arithop_164_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     997  (nop) 
              #                     999  temp_313_ret_of_func_164_0 =  Call i32 func_0(temp_311_ret_of_getint_164_0, temp_312_arithop_164_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_311_ret_of_getint_164_0
              #                    store to temp_311_ret_of_getint_164_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_311_ret_of_getint_164_0
              #                    occupy a2 with temp_312_arithop_164_0
              #                    store to temp_312_arithop_164_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_312_arithop_164_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_311_ret_of_getint_164_0_0
              #                    load from temp_311_ret_of_getint_164_0 in mem


    lw      a0,12(sp)
              #                    occupy a1 with _anonymous_of_temp_312_arithop_164_0_0
              #                    load from temp_312_arithop_164_0 in mem


    lw      a1,8(sp)
              #                    arg load ended


    call    func
              #                     1178 untrack temp_311_ret_of_getint_164_0 
              #                     1177 untrack temp_312_arithop_164_0 
              #                     1000 (nop) 
              #                     1001  Call void putint_0(temp_313_ret_of_func_164_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_313_ret_of_func_164_0
              #                    store to temp_313_ret_of_func_164_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_313_ret_of_func_164_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_313_ret_of_func_164_0_0
              #                    load from temp_313_ret_of_func_164_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                     1003 ret temp_313_ret_of_func_164_0 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with temp_313_ret_of_func_164_0
              #                    load from temp_313_ret_of_func_164_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,40
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl a32
              #                     110  global i32 a32_0 
    .type a32,@object
a32:
    .word 16
    .align 4
    .globl a31
              #                     107  global i32 a31_0 
    .type a31,@object
a31:
    .word 15
    .align 4
    .globl a30
              #                     104  global i32 a30_0 
    .type a30,@object
a30:
    .word 14
    .align 4
    .globl a29
              #                     101  global i32 a29_0 
    .type a29,@object
a29:
    .word 13
    .align 4
    .globl a28
              #                     98   global i32 a28_0 
    .type a28,@object
a28:
    .word 12
    .align 4
    .globl a27
              #                     95   global i32 a27_0 
    .type a27,@object
a27:
    .word 11
    .align 4
    .globl a26
              #                     92   global i32 a26_0 
    .type a26,@object
a26:
    .word 10
    .align 4
    .globl a25
              #                     89   global i32 a25_0 
    .type a25,@object
a25:
    .word 9
    .align 4
    .globl a24
              #                     86   global i32 a24_0 
    .type a24,@object
a24:
    .word 8
    .align 4
    .globl a23
              #                     83   global i32 a23_0 
    .type a23,@object
a23:
    .word 7
    .align 4
    .globl a22
              #                     80   global i32 a22_0 
    .type a22,@object
a22:
    .word 6
    .align 4
    .globl a21
              #                     77   global i32 a21_0 
    .type a21,@object
a21:
    .word 5
    .align 4
    .globl a20
              #                     74   global i32 a20_0 
    .type a20,@object
a20:
    .word 4
    .align 4
    .globl a19
              #                     71   global i32 a19_0 
    .type a19,@object
a19:
    .word 3
    .align 4
    .globl a18
              #                     68   global i32 a18_0 
    .type a18,@object
a18:
    .word 2
    .align 4
    .globl a17
              #                     65   global i32 a17_0 
    .type a17,@object
a17:
    .word 1
    .align 4
    .globl a16
              #                     62   global i32 a16_0 
    .type a16,@object
a16:
    .word 16
    .align 4
    .globl a15
              #                     59   global i32 a15_0 
    .type a15,@object
a15:
    .word 15
    .align 4
    .globl a14
              #                     56   global i32 a14_0 
    .type a14,@object
a14:
    .word 14
    .align 4
    .globl a13
              #                     53   global i32 a13_0 
    .type a13,@object
a13:
    .word 13
    .align 4
    .globl a12
              #                     50   global i32 a12_0 
    .type a12,@object
a12:
    .word 12
    .align 4
    .globl a11
              #                     47   global i32 a11_0 
    .type a11,@object
a11:
    .word 11
    .align 4
    .globl a10
              #                     44   global i32 a10_0 
    .type a10,@object
a10:
    .word 10
    .align 4
    .globl a9
              #                     41   global i32 a9_0 
    .type a9,@object
a9:
    .word 9
    .align 4
    .globl a8
              #                     38   global i32 a8_0 
    .type a8,@object
a8:
    .word 8
    .align 4
    .globl a7
              #                     35   global i32 a7_0 
    .type a7,@object
a7:
    .word 7
    .align 4
    .globl a6
              #                     32   global i32 a6_0 
    .type a6,@object
a6:
    .word 6
    .align 4
    .globl a5
              #                     29   global i32 a5_0 
    .type a5,@object
a5:
    .word 5
    .align 4
    .globl a4
              #                     26   global i32 a4_0 
    .type a4,@object
a4:
    .word 4
    .align 4
    .globl a3
              #                     23   global i32 a3_0 
    .type a3,@object
a3:
    .word 3
    .align 4
    .globl a2
              #                     20   global i32 a2_0 
    .type a2,@object
a2:
    .word 2
    .align 4
    .globl a1
              #                     17   global i32 a1_0 
    .type a1,@object
a1:
    .word 1
