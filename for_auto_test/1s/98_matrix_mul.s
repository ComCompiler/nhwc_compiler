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
              #                     28   Define mul_0 "a0_19,a1_19,a2_19,b0_19,b1_19,b2_19,c0_19,c1_19,c2_19," -> mul_ret_0 
    .globl mul
    .type mul,@function
mul:
              #                    mem layout:|c2:8 at 1072|c2:8 at 1064|c2:8 at 1056|c2:8 at 1048|c2:8 at 1040|ra_mul:8 at 1032|s0_mul:8 at 1024|a0:8 at 1016|a0:8 at 1008|a1:8 at 1000|a1:8 at 992|a2:8 at 984|a2:8 at 976|b0:8 at 968|b0:8 at 960|b1:8 at 952|b1:8 at 944|b2:8 at 936|b2:8 at 928|c0:8 at 920|c0:8 at 912|c0:8 at 904|c0:8 at 896|c0:8 at 888|c1:8 at 880|c1:8 at 872|c1:8 at 864|c1:8 at 856|c1:8 at 848|i _s21 _i0:4 at 844|none:4 at 840|temp_0_ptr_of_c0_19:8 at 832|temp_1_ptr_of_a0_19:8 at 824|temp_2_ele_of_a0_19 _s21 _i0:4 at 820|none:4 at 816|temp_3_ptr_of_b0_19:8 at 808|temp_4_ele_of_b0_19 _s21 _i0:4 at 804|temp_5_arithop _s21 _i0:4 at 800|temp_6_ptr_of_a0_19:8 at 792|temp_7_ele_of_a0_19 _s21 _i0:4 at 788|none:4 at 784|temp_8_ptr_of_b1_19:8 at 776|temp_9_ele_of_b1_19 _s21 _i0:4 at 772|temp_10_arithop _s21 _i0:4 at 768|temp_11_arithop _s21 _i0:4 at 764|none:4 at 760|temp_12_ptr_of_a0_19:8 at 752|temp_13_ele_of_a0_19 _s21 _i0:4 at 748|none:4 at 744|temp_14_ptr_of_b2_19:8 at 736|temp_15_ele_of_b2_19 _s21 _i0:4 at 732|temp_16_arithop _s21 _i0:4 at 728|temp_17_arithop _s21 _i0:4 at 724|none:4 at 720|temp_18_ptr_of_c0_19:8 at 712|temp_19_ptr_of_a0_19:8 at 704|temp_21_ptr_of_b0_19:8 at 696|temp_22_ele_of_b0_19 _s21 _i0:4 at 692|temp_23_arithop _s21 _i0:4 at 688|temp_24_ptr_of_a0_19:8 at 680|temp_26_ptr_of_b1_19:8 at 672|temp_27_ele_of_b1_19 _s21 _i0:4 at 668|temp_28_arithop _s21 _i0:4 at 664|temp_29_arithop _s21 _i0:4 at 660|none:4 at 656|temp_30_ptr_of_a0_19:8 at 648|temp_32_ptr_of_b2_19:8 at 640|temp_33_ele_of_b2_19 _s21 _i0:4 at 636|temp_34_arithop _s21 _i0:4 at 632|temp_35_arithop _s21 _i0:4 at 628|none:4 at 624|temp_36_ptr_of_c0_19:8 at 616|temp_37_ptr_of_a0_19:8 at 608|temp_39_ptr_of_b0_19:8 at 600|temp_40_ele_of_b0_19 _s21 _i0:4 at 596|temp_41_arithop _s21 _i0:4 at 592|temp_42_ptr_of_a0_19:8 at 584|temp_44_ptr_of_b1_19:8 at 576|temp_45_ele_of_b1_19 _s21 _i0:4 at 572|temp_46_arithop _s21 _i0:4 at 568|temp_47_arithop _s21 _i0:4 at 564|none:4 at 560|temp_48_ptr_of_a0_19:8 at 552|temp_50_ptr_of_b2_19:8 at 544|temp_51_ele_of_b2_19 _s21 _i0:4 at 540|temp_52_arithop _s21 _i0:4 at 536|temp_53_arithop _s21 _i0:4 at 532|none:4 at 528|temp_54_ptr_of_c1_19:8 at 520|temp_55_ptr_of_a1_19:8 at 512|temp_56_ele_of_a1_19 _s21 _i0:4 at 508|none:4 at 504|temp_57_ptr_of_b0_19:8 at 496|temp_59_arithop _s21 _i0:4 at 492|none:4 at 488|temp_60_ptr_of_a1_19:8 at 480|temp_61_ele_of_a1_19 _s21 _i0:4 at 476|none:4 at 472|temp_62_ptr_of_b1_19:8 at 464|temp_64_arithop _s21 _i0:4 at 460|temp_65_arithop _s21 _i0:4 at 456|temp_66_ptr_of_a1_19:8 at 448|temp_67_ele_of_a1_19 _s21 _i0:4 at 444|none:4 at 440|temp_68_ptr_of_b2_19:8 at 432|temp_70_arithop _s21 _i0:4 at 428|temp_71_arithop _s21 _i0:4 at 424|temp_72_ptr_of_c1_19:8 at 416|temp_73_ptr_of_a1_19:8 at 408|temp_75_ptr_of_b0_19:8 at 400|temp_77_arithop _s21 _i0:4 at 396|none:4 at 392|temp_78_ptr_of_a1_19:8 at 384|temp_80_ptr_of_b1_19:8 at 376|temp_82_arithop _s21 _i0:4 at 372|temp_83_arithop _s21 _i0:4 at 368|temp_84_ptr_of_a1_19:8 at 360|temp_86_ptr_of_b2_19:8 at 352|temp_88_arithop _s21 _i0:4 at 348|temp_89_arithop _s21 _i0:4 at 344|temp_90_ptr_of_c1_19:8 at 336|temp_91_ptr_of_a1_19:8 at 328|temp_93_ptr_of_b0_19:8 at 320|temp_95_arithop _s21 _i0:4 at 316|none:4 at 312|temp_96_ptr_of_a1_19:8 at 304|temp_98_ptr_of_b1_19:8 at 296|temp_100_arithop _s21 _i0:4 at 292|temp_101_arithop _s21 _i0:4 at 288|temp_102_ptr_of_a1_19:8 at 280|temp_104_ptr_of_b2_19:8 at 272|temp_106_arithop _s21 _i0:4 at 268|temp_107_arithop _s21 _i0:4 at 264|temp_108_ptr_of_c2_19:8 at 256|temp_109_ptr_of_a2_19:8 at 248|temp_110_ele_of_a2_19 _s21 _i0:4 at 244|none:4 at 240|temp_111_ptr_of_b0_19:8 at 232|temp_113_arithop _s21 _i0:4 at 228|none:4 at 224|temp_114_ptr_of_a2_19:8 at 216|temp_115_ele_of_a2_19 _s21 _i0:4 at 212|none:4 at 208|temp_116_ptr_of_b1_19:8 at 200|temp_118_arithop _s21 _i0:4 at 196|temp_119_arithop _s21 _i0:4 at 192|temp_120_ptr_of_a2_19:8 at 184|temp_121_ele_of_a2_19 _s21 _i0:4 at 180|none:4 at 176|temp_122_ptr_of_b2_19:8 at 168|temp_124_arithop _s21 _i0:4 at 164|temp_125_arithop _s21 _i0:4 at 160|temp_126_ptr_of_c2_19:8 at 152|temp_127_ptr_of_a2_19:8 at 144|temp_129_ptr_of_b0_19:8 at 136|temp_131_arithop _s21 _i0:4 at 132|none:4 at 128|temp_132_ptr_of_a2_19:8 at 120|temp_134_ptr_of_b1_19:8 at 112|temp_136_arithop _s21 _i0:4 at 108|temp_137_arithop _s21 _i0:4 at 104|temp_138_ptr_of_a2_19:8 at 96|temp_140_ptr_of_b2_19:8 at 88|temp_142_arithop _s21 _i0:4 at 84|temp_143_arithop _s21 _i0:4 at 80|temp_144_ptr_of_c2_19:8 at 72|temp_145_ptr_of_a2_19:8 at 64|temp_147_ptr_of_b0_19:8 at 56|temp_149_arithop _s21 _i0:4 at 52|none:4 at 48|temp_150_ptr_of_a2_19:8 at 40|temp_152_ptr_of_b1_19:8 at 32|temp_154_arithop _s21 _i0:4 at 28|temp_155_arithop _s21 _i0:4 at 24|temp_156_ptr_of_a2_19:8 at 16|temp_158_ptr_of_b2_19:8 at 8|temp_160_arithop _s21 _i0:4 at 4|temp_161_arithop _s21 _i0:4 at 0
    addi    sp,sp,-1080
              #                    store to ra_mul_0 in mem offset legal
    sd      ra,1032(sp)
              #                    store to s0_mul_0 in mem offset legal
    sd      s0,1024(sp)
    addi    s0,sp,1080
              #                     30   alloc i32 [i_21] 
              #                     33   alloc ptr->f32 [temp_0_ptr_of_c0_19_21] 
              #                     35   alloc ptr->f32 [temp_1_ptr_of_a0_19_21] 
              #                     37   alloc f32 [temp_2_ele_of_a0_19_21] 
              #                     40   alloc ptr->f32 [temp_3_ptr_of_b0_19_21] 
              #                     42   alloc f32 [temp_4_ele_of_b0_19_21] 
              #                     45   alloc f32 [temp_5_arithop_21] 
              #                     47   alloc ptr->f32 [temp_6_ptr_of_a0_19_21] 
              #                     49   alloc f32 [temp_7_ele_of_a0_19_21] 
              #                     52   alloc ptr->f32 [temp_8_ptr_of_b1_19_21] 
              #                     54   alloc f32 [temp_9_ele_of_b1_19_21] 
              #                     57   alloc f32 [temp_10_arithop_21] 
              #                     59   alloc f32 [temp_11_arithop_21] 
              #                     61   alloc ptr->f32 [temp_12_ptr_of_a0_19_21] 
              #                     63   alloc f32 [temp_13_ele_of_a0_19_21] 
              #                     66   alloc ptr->f32 [temp_14_ptr_of_b2_19_21] 
              #                     68   alloc f32 [temp_15_ele_of_b2_19_21] 
              #                     71   alloc f32 [temp_16_arithop_21] 
              #                     73   alloc f32 [temp_17_arithop_21] 
              #                     77   alloc ptr->f32 [temp_18_ptr_of_c0_19_21] 
              #                     79   alloc ptr->f32 [temp_19_ptr_of_a0_19_21] 
              #                     81   alloc f32 [temp_20_ele_of_a0_19_21] 
              #                     84   alloc ptr->f32 [temp_21_ptr_of_b0_19_21] 
              #                     86   alloc f32 [temp_22_ele_of_b0_19_21] 
              #                     89   alloc f32 [temp_23_arithop_21] 
              #                     91   alloc ptr->f32 [temp_24_ptr_of_a0_19_21] 
              #                     93   alloc f32 [temp_25_ele_of_a0_19_21] 
              #                     96   alloc ptr->f32 [temp_26_ptr_of_b1_19_21] 
              #                     98   alloc f32 [temp_27_ele_of_b1_19_21] 
              #                     101  alloc f32 [temp_28_arithop_21] 
              #                     103  alloc f32 [temp_29_arithop_21] 
              #                     105  alloc ptr->f32 [temp_30_ptr_of_a0_19_21] 
              #                     107  alloc f32 [temp_31_ele_of_a0_19_21] 
              #                     110  alloc ptr->f32 [temp_32_ptr_of_b2_19_21] 
              #                     112  alloc f32 [temp_33_ele_of_b2_19_21] 
              #                     115  alloc f32 [temp_34_arithop_21] 
              #                     117  alloc f32 [temp_35_arithop_21] 
              #                     121  alloc ptr->f32 [temp_36_ptr_of_c0_19_21] 
              #                     123  alloc ptr->f32 [temp_37_ptr_of_a0_19_21] 
              #                     125  alloc f32 [temp_38_ele_of_a0_19_21] 
              #                     128  alloc ptr->f32 [temp_39_ptr_of_b0_19_21] 
              #                     130  alloc f32 [temp_40_ele_of_b0_19_21] 
              #                     133  alloc f32 [temp_41_arithop_21] 
              #                     135  alloc ptr->f32 [temp_42_ptr_of_a0_19_21] 
              #                     137  alloc f32 [temp_43_ele_of_a0_19_21] 
              #                     140  alloc ptr->f32 [temp_44_ptr_of_b1_19_21] 
              #                     142  alloc f32 [temp_45_ele_of_b1_19_21] 
              #                     145  alloc f32 [temp_46_arithop_21] 
              #                     147  alloc f32 [temp_47_arithop_21] 
              #                     149  alloc ptr->f32 [temp_48_ptr_of_a0_19_21] 
              #                     151  alloc f32 [temp_49_ele_of_a0_19_21] 
              #                     154  alloc ptr->f32 [temp_50_ptr_of_b2_19_21] 
              #                     156  alloc f32 [temp_51_ele_of_b2_19_21] 
              #                     159  alloc f32 [temp_52_arithop_21] 
              #                     161  alloc f32 [temp_53_arithop_21] 
              #                     165  alloc ptr->f32 [temp_54_ptr_of_c1_19_21] 
              #                     167  alloc ptr->f32 [temp_55_ptr_of_a1_19_21] 
              #                     169  alloc f32 [temp_56_ele_of_a1_19_21] 
              #                     172  alloc ptr->f32 [temp_57_ptr_of_b0_19_21] 
              #                     174  alloc f32 [temp_58_ele_of_b0_19_21] 
              #                     177  alloc f32 [temp_59_arithop_21] 
              #                     179  alloc ptr->f32 [temp_60_ptr_of_a1_19_21] 
              #                     181  alloc f32 [temp_61_ele_of_a1_19_21] 
              #                     184  alloc ptr->f32 [temp_62_ptr_of_b1_19_21] 
              #                     186  alloc f32 [temp_63_ele_of_b1_19_21] 
              #                     189  alloc f32 [temp_64_arithop_21] 
              #                     191  alloc f32 [temp_65_arithop_21] 
              #                     193  alloc ptr->f32 [temp_66_ptr_of_a1_19_21] 
              #                     195  alloc f32 [temp_67_ele_of_a1_19_21] 
              #                     198  alloc ptr->f32 [temp_68_ptr_of_b2_19_21] 
              #                     200  alloc f32 [temp_69_ele_of_b2_19_21] 
              #                     203  alloc f32 [temp_70_arithop_21] 
              #                     205  alloc f32 [temp_71_arithop_21] 
              #                     209  alloc ptr->f32 [temp_72_ptr_of_c1_19_21] 
              #                     211  alloc ptr->f32 [temp_73_ptr_of_a1_19_21] 
              #                     213  alloc f32 [temp_74_ele_of_a1_19_21] 
              #                     216  alloc ptr->f32 [temp_75_ptr_of_b0_19_21] 
              #                     218  alloc f32 [temp_76_ele_of_b0_19_21] 
              #                     221  alloc f32 [temp_77_arithop_21] 
              #                     223  alloc ptr->f32 [temp_78_ptr_of_a1_19_21] 
              #                     225  alloc f32 [temp_79_ele_of_a1_19_21] 
              #                     228  alloc ptr->f32 [temp_80_ptr_of_b1_19_21] 
              #                     230  alloc f32 [temp_81_ele_of_b1_19_21] 
              #                     233  alloc f32 [temp_82_arithop_21] 
              #                     235  alloc f32 [temp_83_arithop_21] 
              #                     237  alloc ptr->f32 [temp_84_ptr_of_a1_19_21] 
              #                     239  alloc f32 [temp_85_ele_of_a1_19_21] 
              #                     242  alloc ptr->f32 [temp_86_ptr_of_b2_19_21] 
              #                     244  alloc f32 [temp_87_ele_of_b2_19_21] 
              #                     247  alloc f32 [temp_88_arithop_21] 
              #                     249  alloc f32 [temp_89_arithop_21] 
              #                     253  alloc ptr->f32 [temp_90_ptr_of_c1_19_21] 
              #                     255  alloc ptr->f32 [temp_91_ptr_of_a1_19_21] 
              #                     257  alloc f32 [temp_92_ele_of_a1_19_21] 
              #                     260  alloc ptr->f32 [temp_93_ptr_of_b0_19_21] 
              #                     262  alloc f32 [temp_94_ele_of_b0_19_21] 
              #                     265  alloc f32 [temp_95_arithop_21] 
              #                     267  alloc ptr->f32 [temp_96_ptr_of_a1_19_21] 
              #                     269  alloc f32 [temp_97_ele_of_a1_19_21] 
              #                     272  alloc ptr->f32 [temp_98_ptr_of_b1_19_21] 
              #                     274  alloc f32 [temp_99_ele_of_b1_19_21] 
              #                     277  alloc f32 [temp_100_arithop_21] 
              #                     279  alloc f32 [temp_101_arithop_21] 
              #                     281  alloc ptr->f32 [temp_102_ptr_of_a1_19_21] 
              #                     283  alloc f32 [temp_103_ele_of_a1_19_21] 
              #                     286  alloc ptr->f32 [temp_104_ptr_of_b2_19_21] 
              #                     288  alloc f32 [temp_105_ele_of_b2_19_21] 
              #                     291  alloc f32 [temp_106_arithop_21] 
              #                     293  alloc f32 [temp_107_arithop_21] 
              #                     297  alloc ptr->f32 [temp_108_ptr_of_c2_19_21] 
              #                     299  alloc ptr->f32 [temp_109_ptr_of_a2_19_21] 
              #                     301  alloc f32 [temp_110_ele_of_a2_19_21] 
              #                     304  alloc ptr->f32 [temp_111_ptr_of_b0_19_21] 
              #                     306  alloc f32 [temp_112_ele_of_b0_19_21] 
              #                     309  alloc f32 [temp_113_arithop_21] 
              #                     311  alloc ptr->f32 [temp_114_ptr_of_a2_19_21] 
              #                     313  alloc f32 [temp_115_ele_of_a2_19_21] 
              #                     316  alloc ptr->f32 [temp_116_ptr_of_b1_19_21] 
              #                     318  alloc f32 [temp_117_ele_of_b1_19_21] 
              #                     321  alloc f32 [temp_118_arithop_21] 
              #                     323  alloc f32 [temp_119_arithop_21] 
              #                     325  alloc ptr->f32 [temp_120_ptr_of_a2_19_21] 
              #                     327  alloc f32 [temp_121_ele_of_a2_19_21] 
              #                     330  alloc ptr->f32 [temp_122_ptr_of_b2_19_21] 
              #                     332  alloc f32 [temp_123_ele_of_b2_19_21] 
              #                     335  alloc f32 [temp_124_arithop_21] 
              #                     337  alloc f32 [temp_125_arithop_21] 
              #                     341  alloc ptr->f32 [temp_126_ptr_of_c2_19_21] 
              #                     343  alloc ptr->f32 [temp_127_ptr_of_a2_19_21] 
              #                     345  alloc f32 [temp_128_ele_of_a2_19_21] 
              #                     348  alloc ptr->f32 [temp_129_ptr_of_b0_19_21] 
              #                     350  alloc f32 [temp_130_ele_of_b0_19_21] 
              #                     353  alloc f32 [temp_131_arithop_21] 
              #                     355  alloc ptr->f32 [temp_132_ptr_of_a2_19_21] 
              #                     357  alloc f32 [temp_133_ele_of_a2_19_21] 
              #                     360  alloc ptr->f32 [temp_134_ptr_of_b1_19_21] 
              #                     362  alloc f32 [temp_135_ele_of_b1_19_21] 
              #                     365  alloc f32 [temp_136_arithop_21] 
              #                     367  alloc f32 [temp_137_arithop_21] 
              #                     369  alloc ptr->f32 [temp_138_ptr_of_a2_19_21] 
              #                     371  alloc f32 [temp_139_ele_of_a2_19_21] 
              #                     374  alloc ptr->f32 [temp_140_ptr_of_b2_19_21] 
              #                     376  alloc f32 [temp_141_ele_of_b2_19_21] 
              #                     379  alloc f32 [temp_142_arithop_21] 
              #                     381  alloc f32 [temp_143_arithop_21] 
              #                     385  alloc ptr->f32 [temp_144_ptr_of_c2_19_21] 
              #                     387  alloc ptr->f32 [temp_145_ptr_of_a2_19_21] 
              #                     389  alloc f32 [temp_146_ele_of_a2_19_21] 
              #                     392  alloc ptr->f32 [temp_147_ptr_of_b0_19_21] 
              #                     394  alloc f32 [temp_148_ele_of_b0_19_21] 
              #                     397  alloc f32 [temp_149_arithop_21] 
              #                     399  alloc ptr->f32 [temp_150_ptr_of_a2_19_21] 
              #                     401  alloc f32 [temp_151_ele_of_a2_19_21] 
              #                     404  alloc ptr->f32 [temp_152_ptr_of_b1_19_21] 
              #                     406  alloc f32 [temp_153_ele_of_b1_19_21] 
              #                     409  alloc f32 [temp_154_arithop_21] 
              #                     411  alloc f32 [temp_155_arithop_21] 
              #                     413  alloc ptr->f32 [temp_156_ptr_of_a2_19_21] 
              #                     415  alloc f32 [temp_157_ele_of_a2_19_21] 
              #                     418  alloc ptr->f32 [temp_158_ptr_of_b2_19_21] 
              #                     420  alloc f32 [temp_159_ele_of_b2_19_21] 
              #                     423  alloc f32 [temp_160_arithop_21] 
              #                     425  alloc f32 [temp_161_arithop_21] 
              #                    regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     19    
              #                     20    
              #                     21    
              #                     22    
              #                     23    
              #                     24    
              #                     25    
              #                     26    
              #                     27    
              #                     31    
              #                     32   (nop) 
              #                     34   temp_0_ptr_of_c0_19_21 = GEP c0_19:ptr->f32 [Some(0_0)] 
              #                    occupy s1 with temp_0_ptr_of_c0_19_21
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 0
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy a6 with c0_19
    add     s1,s1,a6
              #                    free a6
              #                    free s1
              #                     36   temp_1_ptr_of_a0_19_21 = GEP a0_19:Array:f32:[None] [Some(0_0)] 
              #                    occupy s3 with temp_1_ptr_of_a0_19_21
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 0
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with a0_19
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     38   temp_2_ele_of_a0_19_21_0 = load temp_1_ptr_of_a0_19_21:ptr->f32 
              #                    occupy s3 with temp_1_ptr_of_a0_19_21
              #                    occupy fa0 with temp_2_ele_of_a0_19_21_0
    flw     fa0,0(s3)
              #                    free fa0
              #                    free s3
              #                     742  untrack temp_1_ptr_of_a0_19_21 
              #                    occupy s3 with temp_1_ptr_of_a0_19_21
              #                    release s3 with temp_1_ptr_of_a0_19_21
              #                     39   mu a0_19:38 
              #                     41   temp_3_ptr_of_b0_19_21 = GEP b0_19:Array:f32:[None] [Some(0_0)] 
              #                    occupy s3 with temp_3_ptr_of_b0_19_21
    li      s3, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s5, 0
    add     s3,s3,s5
              #                    free s5
    slli s3,s3,2
              #                    occupy a3 with b0_19
    add     s3,s3,a3
              #                    free a3
              #                    free s3
              #                     43   temp_4_ele_of_b0_19_21_0 = load temp_3_ptr_of_b0_19_21:ptr->f32 
              #                    occupy s3 with temp_3_ptr_of_b0_19_21
              #                    occupy fa1 with temp_4_ele_of_b0_19_21_0
    flw     fa1,0(s3)
              #                    free fa1
              #                    free s3
              #                     747  untrack temp_3_ptr_of_b0_19_21 
              #                    occupy s3 with temp_3_ptr_of_b0_19_21
              #                    release s3 with temp_3_ptr_of_b0_19_21
              #                     44   mu b0_19:43 
              #                     46   temp_5_arithop_21_0 = Mul f32 temp_2_ele_of_a0_19_21_0, temp_4_ele_of_b0_19_21_0 
              #                    occupy fa0 with temp_2_ele_of_a0_19_21_0
              #                    occupy fa1 with temp_4_ele_of_b0_19_21_0
              #                    occupy fa2 with temp_5_arithop_21_0
    fmul.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     48   temp_6_ptr_of_a0_19_21 = GEP a0_19:Array:f32:[None] [Some(1_0)] 
              #                    occupy s3 with temp_6_ptr_of_a0_19_21
    li      s3, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 1
    add     s3,s3,s6
              #                    free s6
    slli s3,s3,2
              #                    occupy a0 with a0_19
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     50   temp_7_ele_of_a0_19_21_0 = load temp_6_ptr_of_a0_19_21:ptr->f32 
              #                    occupy s3 with temp_6_ptr_of_a0_19_21
              #                    occupy fa3 with temp_7_ele_of_a0_19_21_0
    flw     fa3,0(s3)
              #                    free fa3
              #                    free s3
              #                     708  untrack temp_6_ptr_of_a0_19_21 
              #                    occupy s3 with temp_6_ptr_of_a0_19_21
              #                    release s3 with temp_6_ptr_of_a0_19_21
              #                     51   mu a0_19:50 
              #                     53   temp_8_ptr_of_b1_19_21 = GEP b1_19:Array:f32:[None] [Some(0_0)] 
              #                    occupy s3 with temp_8_ptr_of_b1_19_21
    li      s3, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
              #                    occupy a4 with b1_19
    add     s3,s3,a4
              #                    free a4
              #                    free s3
              #                     55   temp_9_ele_of_b1_19_21_0 = load temp_8_ptr_of_b1_19_21:ptr->f32 
              #                    occupy s3 with temp_8_ptr_of_b1_19_21
              #                    occupy fa4 with temp_9_ele_of_b1_19_21_0
    flw     fa4,0(s3)
              #                    free fa4
              #                    free s3
              #                     664  untrack temp_8_ptr_of_b1_19_21 
              #                    occupy s3 with temp_8_ptr_of_b1_19_21
              #                    release s3 with temp_8_ptr_of_b1_19_21
              #                     56   mu b1_19:55 
              #                     58   temp_10_arithop_21_0 = Mul f32 temp_7_ele_of_a0_19_21_0, temp_9_ele_of_b1_19_21_0 
              #                    occupy fa3 with temp_7_ele_of_a0_19_21_0
              #                    occupy fa4 with temp_9_ele_of_b1_19_21_0
              #                    occupy fa5 with temp_10_arithop_21_0
    fmul.s  fa5,fa3,fa4
              #                    free fa3
              #                    free fa4
              #                    free fa5
              #                     60   temp_11_arithop_21_0 = Add f32 temp_5_arithop_21_0, temp_10_arithop_21_0 
              #                    occupy fa2 with temp_5_arithop_21_0
              #                    occupy fa5 with temp_10_arithop_21_0
              #                    occupy fa6 with temp_11_arithop_21_0
    fadd.s  fa6,fa2,fa5
              #                    free fa2
              #                    free fa5
              #                    free fa6
              #                     696  untrack temp_5_arithop_21_0 
              #                    occupy fa2 with temp_5_arithop_21_0
              #                    release fa2 with temp_5_arithop_21_0
              #                     690  untrack temp_10_arithop_21_0 
              #                    occupy fa5 with temp_10_arithop_21_0
              #                    release fa5 with temp_10_arithop_21_0
              #                     62   temp_12_ptr_of_a0_19_21 = GEP a0_19:Array:f32:[None] [Some(2_0)] 
              #                    occupy s3 with temp_12_ptr_of_a0_19_21
    li      s3, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
              #                    occupy a0 with a0_19
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     64   temp_13_ele_of_a0_19_21_0 = load temp_12_ptr_of_a0_19_21:ptr->f32 
              #                    occupy s3 with temp_12_ptr_of_a0_19_21
              #                    occupy fa2 with temp_13_ele_of_a0_19_21_0
    flw     fa2,0(s3)
              #                    free fa2
              #                    free s3
              #                     751  untrack temp_12_ptr_of_a0_19_21 
              #                    occupy s3 with temp_12_ptr_of_a0_19_21
              #                    release s3 with temp_12_ptr_of_a0_19_21
              #                     65   mu a0_19:64 
              #                     67   temp_14_ptr_of_b2_19_21 = GEP b2_19:Array:f32:[None] [Some(0_0)] 
              #                    occupy s3 with temp_14_ptr_of_b2_19_21
    li      s3, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
              #                    occupy a5 with b2_19
    add     s3,s3,a5
              #                    free a5
              #                    free s3
              #                     69   temp_15_ele_of_b2_19_21_0 = load temp_14_ptr_of_b2_19_21:ptr->f32 
              #                    occupy s3 with temp_14_ptr_of_b2_19_21
              #                    occupy fa5 with temp_15_ele_of_b2_19_21_0
    flw     fa5,0(s3)
              #                    free fa5
              #                    free s3
              #                     741  untrack temp_14_ptr_of_b2_19_21 
              #                    occupy s3 with temp_14_ptr_of_b2_19_21
              #                    release s3 with temp_14_ptr_of_b2_19_21
              #                     70   mu b2_19:69 
              #                     72   temp_16_arithop_21_0 = Mul f32 temp_13_ele_of_a0_19_21_0, temp_15_ele_of_b2_19_21_0 
              #                    occupy fa2 with temp_13_ele_of_a0_19_21_0
              #                    occupy fa5 with temp_15_ele_of_b2_19_21_0
              #                    occupy fa7 with temp_16_arithop_21_0
    fmul.s  fa7,fa2,fa5
              #                    free fa2
              #                    free fa5
              #                    free fa7
              #                     74   temp_17_arithop_21_0 = Add f32 temp_11_arithop_21_0, temp_16_arithop_21_0 
              #                    occupy fa6 with temp_11_arithop_21_0
              #                    occupy fa7 with temp_16_arithop_21_0
              #                    occupy f8 with temp_17_arithop_21_0
    fadd.s  f8,fa6,fa7
              #                    free fa6
              #                    free fa7
              #                    free f8
              #                     739  untrack temp_11_arithop_21_0 
              #                    occupy fa6 with temp_11_arithop_21_0
              #                    release fa6 with temp_11_arithop_21_0
              #                     716  untrack temp_16_arithop_21_0 
              #                    occupy fa7 with temp_16_arithop_21_0
              #                    release fa7 with temp_16_arithop_21_0
              #                     75   store temp_17_arithop_21_0:f32 temp_0_ptr_of_c0_19_21:ptr->f32 
              #                    occupy s1 with temp_0_ptr_of_c0_19_21
              #                    occupy f8 with temp_17_arithop_21_0
    fsw     f8,0(s1)
              #                    free f8
              #                    free s1
              #                     725  untrack temp_17_arithop_21_0 
              #                    occupy f8 with temp_17_arithop_21_0
              #                    release f8 with temp_17_arithop_21_0
              #                     722  untrack temp_0_ptr_of_c0_19_21 
              #                    occupy s1 with temp_0_ptr_of_c0_19_21
              #                    release s1 with temp_0_ptr_of_c0_19_21
              #                     76   c0_19 = chi c0_19:75 
              #                     78   temp_18_ptr_of_c0_19_21 = GEP c0_19:ptr->f32 [Some(1_0)] 
              #                    occupy s1 with temp_18_ptr_of_c0_19_21
    li      s1, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 1
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy a6 with c0_19
    add     s1,s1,a6
              #                    free a6
              #                    free s1
              #                     80   (nop) 
              #                     82   (nop) 
              #                     83   mu a0_19:82 
              #                     85   temp_21_ptr_of_b0_19_21 = GEP b0_19:Array:f32:[None] [Some(1_0)] 
              #                    occupy s7 with temp_21_ptr_of_b0_19_21
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 1
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a3 with b0_19
    add     s7,s7,a3
              #                    free a3
              #                    occupy a3 with b0_19
              #                    store to b0_19 in mem offset legal
    sd      a3,960(sp)
              #                    release a3 with b0_19
              #                    free s7
              #                     87   temp_22_ele_of_b0_19_21_0 = load temp_21_ptr_of_b0_19_21:ptr->f32 
              #                    occupy s7 with temp_21_ptr_of_b0_19_21
              #                    occupy fa6 with temp_22_ele_of_b0_19_21_0
    flw     fa6,0(s7)
              #                    free fa6
              #                    free s7
              #                     677  untrack temp_21_ptr_of_b0_19_21 
              #                    occupy s7 with temp_21_ptr_of_b0_19_21
              #                    release s7 with temp_21_ptr_of_b0_19_21
              #                     88   mu b0_19:87 
              #                     90   temp_23_arithop_21_0 = Mul f32 temp_2_ele_of_a0_19_21_0, temp_22_ele_of_b0_19_21_0 
              #                    occupy fa0 with temp_2_ele_of_a0_19_21_0
              #                    occupy fa6 with temp_22_ele_of_b0_19_21_0
              #                    occupy fa7 with temp_23_arithop_21_0
    fmul.s  fa7,fa0,fa6
              #                    free fa0
              #                    free fa6
              #                    free fa7
              #                     92   (nop) 
              #                     94   (nop) 
              #                     95   mu a0_19:94 
              #                     97   temp_26_ptr_of_b1_19_21 = GEP b1_19:Array:f32:[None] [Some(1_0)] 
              #                    occupy a3 with temp_26_ptr_of_b1_19_21
    li      a3, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a3,a3,s7
              #                    free s7
    slli a3,a3,2
              #                    occupy a4 with b1_19
    add     a3,a3,a4
              #                    free a4
              #                    free a3
              #                     99   temp_27_ele_of_b1_19_21_0 = load temp_26_ptr_of_b1_19_21:ptr->f32 
              #                    occupy a3 with temp_26_ptr_of_b1_19_21
              #                    occupy f8 with temp_27_ele_of_b1_19_21_0
    flw     f8,0(a3)
              #                    free f8
              #                    free a3
              #                     749  untrack temp_26_ptr_of_b1_19_21 
              #                    occupy a3 with temp_26_ptr_of_b1_19_21
              #                    release a3 with temp_26_ptr_of_b1_19_21
              #                     100  mu b1_19:99 
              #                     102  temp_28_arithop_21_0 = Mul f32 temp_7_ele_of_a0_19_21_0, temp_27_ele_of_b1_19_21_0 
              #                    occupy fa3 with temp_7_ele_of_a0_19_21_0
              #                    occupy f8 with temp_27_ele_of_b1_19_21_0
              #                    occupy f9 with temp_28_arithop_21_0
    fmul.s  f9,fa3,f8
              #                    free fa3
              #                    free f8
              #                    free f9
              #                     104  temp_29_arithop_21_0 = Add f32 temp_23_arithop_21_0, temp_28_arithop_21_0 
              #                    occupy fa7 with temp_23_arithop_21_0
              #                    occupy f9 with temp_28_arithop_21_0
              #                    occupy f18 with temp_29_arithop_21_0
    fadd.s  f18,fa7,f9
              #                    free fa7
              #                    free f9
              #                    free f18
              #                     744  untrack temp_23_arithop_21_0 
              #                    occupy fa7 with temp_23_arithop_21_0
              #                    release fa7 with temp_23_arithop_21_0
              #                     673  untrack temp_28_arithop_21_0 
              #                    occupy f9 with temp_28_arithop_21_0
              #                    release f9 with temp_28_arithop_21_0
              #                     106  (nop) 
              #                     108  (nop) 
              #                     109  mu a0_19:108 
              #                     111  temp_32_ptr_of_b2_19_21 = GEP b2_19:Array:f32:[None] [Some(1_0)] 
              #                    occupy a3 with temp_32_ptr_of_b2_19_21
    li      a3, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a3,a3,s7
              #                    free s7
    slli a3,a3,2
              #                    occupy a5 with b2_19
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     113  temp_33_ele_of_b2_19_21_0 = load temp_32_ptr_of_b2_19_21:ptr->f32 
              #                    occupy a3 with temp_32_ptr_of_b2_19_21
              #                    occupy fa7 with temp_33_ele_of_b2_19_21_0
    flw     fa7,0(a3)
              #                    free fa7
              #                    free a3
              #                     715  untrack temp_32_ptr_of_b2_19_21 
              #                    occupy a3 with temp_32_ptr_of_b2_19_21
              #                    release a3 with temp_32_ptr_of_b2_19_21
              #                     114  mu b2_19:113 
              #                     116  temp_34_arithop_21_0 = Mul f32 temp_13_ele_of_a0_19_21_0, temp_33_ele_of_b2_19_21_0 
              #                    occupy fa2 with temp_13_ele_of_a0_19_21_0
              #                    occupy fa7 with temp_33_ele_of_b2_19_21_0
              #                    occupy f9 with temp_34_arithop_21_0
    fmul.s  f9,fa2,fa7
              #                    free fa2
              #                    free fa7
              #                    free f9
              #                     118  temp_35_arithop_21_0 = Add f32 temp_29_arithop_21_0, temp_34_arithop_21_0 
              #                    occupy f18 with temp_29_arithop_21_0
              #                    occupy f9 with temp_34_arithop_21_0
              #                    occupy f19 with temp_35_arithop_21_0
    fadd.s  f19,f18,f9
              #                    free f18
              #                    free f9
              #                    free f19
              #                     714  untrack temp_29_arithop_21_0 
              #                    occupy f18 with temp_29_arithop_21_0
              #                    release f18 with temp_29_arithop_21_0
              #                     672  untrack temp_34_arithop_21_0 
              #                    occupy f9 with temp_34_arithop_21_0
              #                    release f9 with temp_34_arithop_21_0
              #                     119  store temp_35_arithop_21_0:f32 temp_18_ptr_of_c0_19_21:ptr->f32 
              #                    occupy s1 with temp_18_ptr_of_c0_19_21
              #                    occupy f19 with temp_35_arithop_21_0
    fsw     f19,0(s1)
              #                    free f19
              #                    free s1
              #                     738  untrack temp_18_ptr_of_c0_19_21 
              #                    occupy s1 with temp_18_ptr_of_c0_19_21
              #                    release s1 with temp_18_ptr_of_c0_19_21
              #                     687  untrack temp_35_arithop_21_0 
              #                    occupy f19 with temp_35_arithop_21_0
              #                    release f19 with temp_35_arithop_21_0
              #                     120  c0_19 = chi c0_19:119 
              #                     122  temp_36_ptr_of_c0_19_21 = GEP c0_19:ptr->f32 [Some(2_0)] 
              #                    occupy a3 with temp_36_ptr_of_c0_19_21
    li      a3, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 2
    add     a3,a3,s1
              #                    free s1
    slli a3,a3,2
              #                    occupy a6 with c0_19
    add     a3,a3,a6
              #                    free a6
              #                    free a3
              #                     124  (nop) 
              #                     126  (nop) 
              #                     127  mu a0_19:126 
              #                     129  temp_39_ptr_of_b0_19_21 = GEP b0_19:Array:f32:[None] [Some(2_0)] 
              #                    occupy s7 with temp_39_ptr_of_b0_19_21
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 2
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy s8 with b0_19
              #                    load from b0_19 in mem
    ld      s8,960(sp)
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with b0_19
              #                    store to b0_19 in mem offset legal
    sd      s8,960(sp)
              #                    release s8 with b0_19
              #                    free s7
              #                    occupy s7 with temp_39_ptr_of_b0_19_21
              #                    store to temp_39_ptr_of_b0_19_21 in mem offset legal
    sd      s7,600(sp)
              #                    release s7 with temp_39_ptr_of_b0_19_21
              #                     131  temp_40_ele_of_b0_19_21_0 = load temp_39_ptr_of_b0_19_21:ptr->f32 
              #                    occupy s7 with temp_39_ptr_of_b0_19_21
              #                    load from temp_39_ptr_of_b0_19_21 in mem
    ld      s7,600(sp)
              #                    occupy f9 with temp_40_ele_of_b0_19_21_0
    flw     f9,0(s7)
              #                    free f9
              #                    free s7
              #                    occupy s7 with temp_39_ptr_of_b0_19_21
              #                    store to temp_39_ptr_of_b0_19_21 in mem offset legal
    sd      s7,600(sp)
              #                    release s7 with temp_39_ptr_of_b0_19_21
              #                     713  untrack temp_39_ptr_of_b0_19_21 
              #                     132  mu b0_19:131 
              #                     134  temp_41_arithop_21_0 = Mul f32 temp_2_ele_of_a0_19_21_0, temp_40_ele_of_b0_19_21_0 
              #                    occupy fa0 with temp_2_ele_of_a0_19_21_0
              #                    occupy f9 with temp_40_ele_of_b0_19_21_0
              #                    occupy f18 with temp_41_arithop_21_0
    fmul.s  f18,fa0,f9
              #                    free fa0
              #                    free f9
              #                    free f18
              #                     663  untrack temp_2_ele_of_a0_19_21_0 
              #                    occupy fa0 with temp_2_ele_of_a0_19_21_0
              #                    release fa0 with temp_2_ele_of_a0_19_21_0
              #                     136  (nop) 
              #                     138  (nop) 
              #                     139  mu a0_19:138 
              #                     141  temp_44_ptr_of_b1_19_21 = GEP b1_19:Array:f32:[None] [Some(2_0)] 
              #                    occupy s7 with temp_44_ptr_of_b1_19_21
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 2
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a4 with b1_19
    add     s7,s7,a4
              #                    free a4
              #                    occupy a4 with b1_19
              #                    store to b1_19 in mem offset legal
    sd      a4,944(sp)
              #                    release a4 with b1_19
              #                    free s7
              #                     143  temp_45_ele_of_b1_19_21_0 = load temp_44_ptr_of_b1_19_21:ptr->f32 
              #                    occupy s7 with temp_44_ptr_of_b1_19_21
              #                    occupy fa0 with temp_45_ele_of_b1_19_21_0
    flw     fa0,0(s7)
              #                    free fa0
              #                    free s7
              #                     706  untrack temp_44_ptr_of_b1_19_21 
              #                    occupy s7 with temp_44_ptr_of_b1_19_21
              #                    release s7 with temp_44_ptr_of_b1_19_21
              #                     144  mu b1_19:143 
              #                     146  temp_46_arithop_21_0 = Mul f32 temp_7_ele_of_a0_19_21_0, temp_45_ele_of_b1_19_21_0 
              #                    occupy fa3 with temp_7_ele_of_a0_19_21_0
              #                    occupy fa0 with temp_45_ele_of_b1_19_21_0
              #                    occupy f19 with temp_46_arithop_21_0
    fmul.s  f19,fa3,fa0
              #                    free fa3
              #                    free fa0
              #                    free f19
              #                     735  untrack temp_7_ele_of_a0_19_21_0 
              #                    occupy fa3 with temp_7_ele_of_a0_19_21_0
              #                    release fa3 with temp_7_ele_of_a0_19_21_0
              #                     148  temp_47_arithop_21_0 = Add f32 temp_41_arithop_21_0, temp_46_arithop_21_0 
              #                    occupy f18 with temp_41_arithop_21_0
              #                    occupy f19 with temp_46_arithop_21_0
              #                    occupy fa3 with temp_47_arithop_21_0
    fadd.s  fa3,f18,f19
              #                    free f18
              #                    free f19
              #                    free fa3
              #                     723  untrack temp_46_arithop_21_0 
              #                    occupy f19 with temp_46_arithop_21_0
              #                    release f19 with temp_46_arithop_21_0
              #                     703  untrack temp_41_arithop_21_0 
              #                    occupy f18 with temp_41_arithop_21_0
              #                    release f18 with temp_41_arithop_21_0
              #                     150  (nop) 
              #                     152  (nop) 
              #                     153  mu a0_19:152 
              #                     660  untrack a0_19 
              #                    occupy a0 with a0_19
              #                    release a0 with a0_19
              #                     155  temp_50_ptr_of_b2_19_21 = GEP b2_19:Array:f32:[None] [Some(2_0)] 
              #                    occupy a0 with temp_50_ptr_of_b2_19_21
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 2
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
              #                    occupy a5 with b2_19
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     157  temp_51_ele_of_b2_19_21_0 = load temp_50_ptr_of_b2_19_21:ptr->f32 
              #                    occupy a0 with temp_50_ptr_of_b2_19_21
              #                    occupy f18 with temp_51_ele_of_b2_19_21_0
    flw     f18,0(a0)
              #                    free f18
              #                    free a0
              #                     733  untrack temp_50_ptr_of_b2_19_21 
              #                    occupy a0 with temp_50_ptr_of_b2_19_21
              #                    release a0 with temp_50_ptr_of_b2_19_21
              #                     158  mu b2_19:157 
              #                     160  temp_52_arithop_21_0 = Mul f32 temp_13_ele_of_a0_19_21_0, temp_51_ele_of_b2_19_21_0 
              #                    occupy fa2 with temp_13_ele_of_a0_19_21_0
              #                    occupy f18 with temp_51_ele_of_b2_19_21_0
              #                    occupy f19 with temp_52_arithop_21_0
    fmul.s  f19,fa2,f18
              #                    free fa2
              #                    free f18
              #                    free f19
              #                     668  untrack temp_13_ele_of_a0_19_21_0 
              #                    occupy fa2 with temp_13_ele_of_a0_19_21_0
              #                    release fa2 with temp_13_ele_of_a0_19_21_0
              #                     162  temp_53_arithop_21_0 = Add f32 temp_47_arithop_21_0, temp_52_arithop_21_0 
              #                    occupy fa3 with temp_47_arithop_21_0
              #                    occupy f19 with temp_52_arithop_21_0
              #                    occupy fa2 with temp_53_arithop_21_0
    fadd.s  fa2,fa3,f19
              #                    free fa3
              #                    free f19
              #                    free fa2
              #                     658  untrack temp_52_arithop_21_0 
              #                    occupy f19 with temp_52_arithop_21_0
              #                    release f19 with temp_52_arithop_21_0
              #                     655  untrack temp_47_arithop_21_0 
              #                    occupy fa3 with temp_47_arithop_21_0
              #                    release fa3 with temp_47_arithop_21_0
              #                     163  store temp_53_arithop_21_0:f32 temp_36_ptr_of_c0_19_21:ptr->f32 
              #                    occupy a3 with temp_36_ptr_of_c0_19_21
              #                    occupy fa2 with temp_53_arithop_21_0
    fsw     fa2,0(a3)
              #                    free fa2
              #                    free a3
              #                     728  untrack temp_36_ptr_of_c0_19_21 
              #                    occupy a3 with temp_36_ptr_of_c0_19_21
              #                    release a3 with temp_36_ptr_of_c0_19_21
              #                     724  untrack temp_53_arithop_21_0 
              #                    occupy fa2 with temp_53_arithop_21_0
              #                    release fa2 with temp_53_arithop_21_0
              #                     164  c0_19 = chi c0_19:163 
              #                     166  temp_54_ptr_of_c1_19_21 = GEP c1_19:ptr->f32 [Some(0_0)] 
              #                    occupy a0 with temp_54_ptr_of_c1_19_21
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a7 with c1_19
    add     a0,a0,a7
              #                    free a7
              #                    free a0
              #                     168  temp_55_ptr_of_a1_19_21 = GEP a1_19:Array:f32:[None] [Some(0_0)] 
              #                    occupy s7 with temp_55_ptr_of_a1_19_21
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a1 with a1_19
    add     s7,s7,a1
              #                    free a1
              #                    occupy a1 with a1_19
              #                    store to a1_19 in mem offset legal
    sd      a1,992(sp)
              #                    release a1 with a1_19
              #                    free s7
              #                     170  temp_56_ele_of_a1_19_21_0 = load temp_55_ptr_of_a1_19_21:ptr->f32 
              #                    occupy s7 with temp_55_ptr_of_a1_19_21
              #                    occupy fa2 with temp_56_ele_of_a1_19_21_0
    flw     fa2,0(s7)
              #                    free fa2
              #                    free s7
              #                     737  untrack temp_55_ptr_of_a1_19_21 
              #                    occupy s7 with temp_55_ptr_of_a1_19_21
              #                    release s7 with temp_55_ptr_of_a1_19_21
              #                     171  mu a1_19:170 
              #                     173  (nop) 
              #                     175  (nop) 
              #                     176  mu b0_19:175 
              #                     178  temp_59_arithop_21_0 = Mul f32 temp_56_ele_of_a1_19_21_0, temp_4_ele_of_b0_19_21_0 
              #                    occupy fa2 with temp_56_ele_of_a1_19_21_0
              #                    occupy fa1 with temp_4_ele_of_b0_19_21_0
              #                    occupy fa3 with temp_59_arithop_21_0
    fmul.s  fa3,fa2,fa1
              #                    free fa2
              #                    free fa1
              #                    free fa3
              #                     180  temp_60_ptr_of_a1_19_21 = GEP a1_19:Array:f32:[None] [Some(1_0)] 
              #                    occupy a1 with temp_60_ptr_of_a1_19_21
    li      a1, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a1,a1,s7
              #                    free s7
    slli a1,a1,2
              #                    occupy s7 with a1_19
              #                    load from a1_19 in mem
    ld      s7,992(sp)
    add     a1,a1,s7
              #                    free s7
              #                    occupy s7 with a1_19
              #                    store to a1_19 in mem offset legal
    sd      s7,992(sp)
              #                    release s7 with a1_19
              #                    free a1
              #                     182  temp_61_ele_of_a1_19_21_0 = load temp_60_ptr_of_a1_19_21:ptr->f32 
              #                    occupy a1 with temp_60_ptr_of_a1_19_21
              #                    occupy f19 with temp_61_ele_of_a1_19_21_0
    flw     f19,0(a1)
              #                    free f19
              #                    free a1
              #                     682  untrack temp_60_ptr_of_a1_19_21 
              #                    occupy a1 with temp_60_ptr_of_a1_19_21
              #                    release a1 with temp_60_ptr_of_a1_19_21
              #                     183  mu a1_19:182 
              #                     185  (nop) 
              #                     187  (nop) 
              #                     188  mu b1_19:187 
              #                     190  temp_64_arithop_21_0 = Mul f32 temp_61_ele_of_a1_19_21_0, temp_9_ele_of_b1_19_21_0 
              #                    occupy f19 with temp_61_ele_of_a1_19_21_0
              #                    occupy fa4 with temp_9_ele_of_b1_19_21_0
              #                    occupy f20 with temp_64_arithop_21_0
    fmul.s  f20,f19,fa4
              #                    free f19
              #                    free fa4
              #                    free f20
              #                     192  temp_65_arithop_21_0 = Add f32 temp_59_arithop_21_0, temp_64_arithop_21_0 
              #                    occupy fa3 with temp_59_arithop_21_0
              #                    occupy f20 with temp_64_arithop_21_0
              #                    occupy f21 with temp_65_arithop_21_0
    fadd.s  f21,fa3,f20
              #                    free fa3
              #                    free f20
              #                    free f21
              #                     701  untrack temp_64_arithop_21_0 
              #                    occupy f20 with temp_64_arithop_21_0
              #                    release f20 with temp_64_arithop_21_0
              #                     691  untrack temp_59_arithop_21_0 
              #                    occupy fa3 with temp_59_arithop_21_0
              #                    release fa3 with temp_59_arithop_21_0
              #                     194  temp_66_ptr_of_a1_19_21 = GEP a1_19:Array:f32:[None] [Some(2_0)] 
              #                    occupy a1 with temp_66_ptr_of_a1_19_21
    li      a1, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     a1,a1,s7
              #                    free s7
    slli a1,a1,2
              #                    occupy s7 with a1_19
              #                    load from a1_19 in mem
    ld      s7,992(sp)
    add     a1,a1,s7
              #                    free s7
              #                    occupy s7 with a1_19
              #                    store to a1_19 in mem offset legal
    sd      s7,992(sp)
              #                    release s7 with a1_19
              #                    free a1
              #                     196  temp_67_ele_of_a1_19_21_0 = load temp_66_ptr_of_a1_19_21:ptr->f32 
              #                    occupy a1 with temp_66_ptr_of_a1_19_21
              #                    occupy fa3 with temp_67_ele_of_a1_19_21_0
    flw     fa3,0(a1)
              #                    free fa3
              #                    free a1
              #                     657  untrack temp_66_ptr_of_a1_19_21 
              #                    occupy a1 with temp_66_ptr_of_a1_19_21
              #                    release a1 with temp_66_ptr_of_a1_19_21
              #                     197  mu a1_19:196 
              #                     199  (nop) 
              #                     201  (nop) 
              #                     202  mu b2_19:201 
              #                     204  temp_70_arithop_21_0 = Mul f32 temp_67_ele_of_a1_19_21_0, temp_15_ele_of_b2_19_21_0 
              #                    occupy fa3 with temp_67_ele_of_a1_19_21_0
              #                    occupy fa5 with temp_15_ele_of_b2_19_21_0
              #                    occupy f20 with temp_70_arithop_21_0
    fmul.s  f20,fa3,fa5
              #                    free fa3
              #                    free fa5
              #                    free f20
              #                     206  temp_71_arithop_21_0 = Add f32 temp_65_arithop_21_0, temp_70_arithop_21_0 
              #                    occupy f21 with temp_65_arithop_21_0
              #                    occupy f20 with temp_70_arithop_21_0
              #                    occupy f22 with temp_71_arithop_21_0
    fadd.s  f22,f21,f20
              #                    free f21
              #                    free f20
              #                    free f22
              #                     686  untrack temp_65_arithop_21_0 
              #                    occupy f21 with temp_65_arithop_21_0
              #                    release f21 with temp_65_arithop_21_0
              #                     676  untrack temp_70_arithop_21_0 
              #                    occupy f20 with temp_70_arithop_21_0
              #                    release f20 with temp_70_arithop_21_0
              #                     207  store temp_71_arithop_21_0:f32 temp_54_ptr_of_c1_19_21:ptr->f32 
              #                    occupy a0 with temp_54_ptr_of_c1_19_21
              #                    occupy f22 with temp_71_arithop_21_0
    fsw     f22,0(a0)
              #                    free f22
              #                    free a0
              #                     710  untrack temp_71_arithop_21_0 
              #                    occupy f22 with temp_71_arithop_21_0
              #                    release f22 with temp_71_arithop_21_0
              #                     666  untrack temp_54_ptr_of_c1_19_21 
              #                    occupy a0 with temp_54_ptr_of_c1_19_21
              #                    release a0 with temp_54_ptr_of_c1_19_21
              #                     208  c1_19 = chi c1_19:207 
              #                     210  temp_72_ptr_of_c1_19_21 = GEP c1_19:ptr->f32 [Some(1_0)] 
              #                    occupy a0 with temp_72_ptr_of_c1_19_21
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 1
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a7 with c1_19
    add     a0,a0,a7
              #                    free a7
              #                    free a0
              #                     212  (nop) 
              #                     214  (nop) 
              #                     215  mu a1_19:214 
              #                     217  (nop) 
              #                     219  (nop) 
              #                     220  mu b0_19:219 
              #                     222  temp_77_arithop_21_0 = Mul f32 temp_56_ele_of_a1_19_21_0, temp_22_ele_of_b0_19_21_0 
              #                    occupy fa2 with temp_56_ele_of_a1_19_21_0
              #                    occupy fa6 with temp_22_ele_of_b0_19_21_0
              #                    occupy f20 with temp_77_arithop_21_0
    fmul.s  f20,fa2,fa6
              #                    free fa2
              #                    free fa6
              #                    free f20
              #                     224  (nop) 
              #                     226  (nop) 
              #                     227  mu a1_19:226 
              #                     229  (nop) 
              #                     231  (nop) 
              #                     232  mu b1_19:231 
              #                     234  temp_82_arithop_21_0 = Mul f32 temp_61_ele_of_a1_19_21_0, temp_27_ele_of_b1_19_21_0 
              #                    occupy f19 with temp_61_ele_of_a1_19_21_0
              #                    occupy f8 with temp_27_ele_of_b1_19_21_0
              #                    occupy f21 with temp_82_arithop_21_0
    fmul.s  f21,f19,f8
              #                    free f19
              #                    free f8
              #                    free f21
              #                     236  temp_83_arithop_21_0 = Add f32 temp_77_arithop_21_0, temp_82_arithop_21_0 
              #                    occupy f20 with temp_77_arithop_21_0
              #                    occupy f21 with temp_82_arithop_21_0
              #                    occupy f22 with temp_83_arithop_21_0
    fadd.s  f22,f20,f21
              #                    free f20
              #                    free f21
              #                    free f22
              #                     667  untrack temp_77_arithop_21_0 
              #                    occupy f20 with temp_77_arithop_21_0
              #                    release f20 with temp_77_arithop_21_0
              #                     659  untrack temp_82_arithop_21_0 
              #                    occupy f21 with temp_82_arithop_21_0
              #                    release f21 with temp_82_arithop_21_0
              #                     238  (nop) 
              #                     240  (nop) 
              #                     241  mu a1_19:240 
              #                     243  (nop) 
              #                     245  (nop) 
              #                     246  mu b2_19:245 
              #                     248  temp_88_arithop_21_0 = Mul f32 temp_67_ele_of_a1_19_21_0, temp_33_ele_of_b2_19_21_0 
              #                    occupy fa3 with temp_67_ele_of_a1_19_21_0
              #                    occupy fa7 with temp_33_ele_of_b2_19_21_0
              #                    occupy f20 with temp_88_arithop_21_0
    fmul.s  f20,fa3,fa7
              #                    free fa3
              #                    free fa7
              #                    free f20
              #                     250  temp_89_arithop_21_0 = Add f32 temp_83_arithop_21_0, temp_88_arithop_21_0 
              #                    occupy f22 with temp_83_arithop_21_0
              #                    occupy f20 with temp_88_arithop_21_0
              #                    occupy f21 with temp_89_arithop_21_0
    fadd.s  f21,f22,f20
              #                    free f22
              #                    free f20
              #                    free f21
              #                     736  untrack temp_83_arithop_21_0 
              #                    occupy f22 with temp_83_arithop_21_0
              #                    release f22 with temp_83_arithop_21_0
              #                     700  untrack temp_88_arithop_21_0 
              #                    occupy f20 with temp_88_arithop_21_0
              #                    release f20 with temp_88_arithop_21_0
              #                     251  store temp_89_arithop_21_0:f32 temp_72_ptr_of_c1_19_21:ptr->f32 
              #                    occupy a0 with temp_72_ptr_of_c1_19_21
              #                    occupy f21 with temp_89_arithop_21_0
    fsw     f21,0(a0)
              #                    free f21
              #                    free a0
              #                     720  untrack temp_72_ptr_of_c1_19_21 
              #                    occupy a0 with temp_72_ptr_of_c1_19_21
              #                    release a0 with temp_72_ptr_of_c1_19_21
              #                     707  untrack temp_89_arithop_21_0 
              #                    occupy f21 with temp_89_arithop_21_0
              #                    release f21 with temp_89_arithop_21_0
              #                     252  c1_19 = chi c1_19:251 
              #                     254  temp_90_ptr_of_c1_19_21 = GEP c1_19:ptr->f32 [Some(2_0)] 
              #                    occupy a0 with temp_90_ptr_of_c1_19_21
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy a7 with c1_19
    add     a0,a0,a7
              #                    free a7
              #                    free a0
              #                     256  (nop) 
              #                     258  (nop) 
              #                     259  mu a1_19:258 
              #                     261  (nop) 
              #                     263  (nop) 
              #                     264  mu b0_19:263 
              #                     266  temp_95_arithop_21_0 = Mul f32 temp_56_ele_of_a1_19_21_0, temp_40_ele_of_b0_19_21_0 
              #                    occupy fa2 with temp_56_ele_of_a1_19_21_0
              #                    occupy f9 with temp_40_ele_of_b0_19_21_0
              #                    occupy f20 with temp_95_arithop_21_0
    fmul.s  f20,fa2,f9
              #                    free fa2
              #                    free f9
              #                    free f20
              #                     746  untrack temp_56_ele_of_a1_19_21_0 
              #                    occupy fa2 with temp_56_ele_of_a1_19_21_0
              #                    release fa2 with temp_56_ele_of_a1_19_21_0
              #                     268  (nop) 
              #                     270  (nop) 
              #                     271  mu a1_19:270 
              #                     273  (nop) 
              #                     275  (nop) 
              #                     276  mu b1_19:275 
              #                     278  temp_100_arithop_21_0 = Mul f32 temp_61_ele_of_a1_19_21_0, temp_45_ele_of_b1_19_21_0 
              #                    occupy f19 with temp_61_ele_of_a1_19_21_0
              #                    occupy fa0 with temp_45_ele_of_b1_19_21_0
              #                    occupy fa2 with temp_100_arithop_21_0
    fmul.s  fa2,f19,fa0
              #                    free f19
              #                    free fa0
              #                    free fa2
              #                     712  untrack temp_61_ele_of_a1_19_21_0 
              #                    occupy f19 with temp_61_ele_of_a1_19_21_0
              #                    release f19 with temp_61_ele_of_a1_19_21_0
              #                     280  temp_101_arithop_21_0 = Add f32 temp_95_arithop_21_0, temp_100_arithop_21_0 
              #                    occupy f20 with temp_95_arithop_21_0
              #                    occupy fa2 with temp_100_arithop_21_0
              #                    occupy f19 with temp_101_arithop_21_0
    fadd.s  f19,f20,fa2
              #                    free f20
              #                    free fa2
              #                    free f19
              #                     699  untrack temp_95_arithop_21_0 
              #                    occupy f20 with temp_95_arithop_21_0
              #                    release f20 with temp_95_arithop_21_0
              #                     684  untrack temp_100_arithop_21_0 
              #                    occupy fa2 with temp_100_arithop_21_0
              #                    release fa2 with temp_100_arithop_21_0
              #                     282  (nop) 
              #                     284  (nop) 
              #                     285  mu a1_19:284 
              #                     683  untrack a1_19 
              #                     287  (nop) 
              #                     289  (nop) 
              #                     290  mu b2_19:289 
              #                     292  temp_106_arithop_21_0 = Mul f32 temp_67_ele_of_a1_19_21_0, temp_51_ele_of_b2_19_21_0 
              #                    occupy fa3 with temp_67_ele_of_a1_19_21_0
              #                    occupy f18 with temp_51_ele_of_b2_19_21_0
              #                    occupy fa2 with temp_106_arithop_21_0
    fmul.s  fa2,fa3,f18
              #                    free fa3
              #                    free f18
              #                    free fa2
              #                     669  untrack temp_67_ele_of_a1_19_21_0 
              #                    occupy fa3 with temp_67_ele_of_a1_19_21_0
              #                    release fa3 with temp_67_ele_of_a1_19_21_0
              #                     294  temp_107_arithop_21_0 = Add f32 temp_101_arithop_21_0, temp_106_arithop_21_0 
              #                    occupy f19 with temp_101_arithop_21_0
              #                    occupy fa2 with temp_106_arithop_21_0
              #                    occupy fa3 with temp_107_arithop_21_0
    fadd.s  fa3,f19,fa2
              #                    free f19
              #                    free fa2
              #                    free fa3
              #                     727  untrack temp_101_arithop_21_0 
              #                    occupy f19 with temp_101_arithop_21_0
              #                    release f19 with temp_101_arithop_21_0
              #                     704  untrack temp_106_arithop_21_0 
              #                    occupy fa2 with temp_106_arithop_21_0
              #                    release fa2 with temp_106_arithop_21_0
              #                     295  store temp_107_arithop_21_0:f32 temp_90_ptr_of_c1_19_21:ptr->f32 
              #                    occupy a0 with temp_90_ptr_of_c1_19_21
              #                    occupy fa3 with temp_107_arithop_21_0
    fsw     fa3,0(a0)
              #                    free fa3
              #                    free a0
              #                     702  untrack temp_107_arithop_21_0 
              #                    occupy fa3 with temp_107_arithop_21_0
              #                    release fa3 with temp_107_arithop_21_0
              #                     681  untrack temp_90_ptr_of_c1_19_21 
              #                    occupy a0 with temp_90_ptr_of_c1_19_21
              #                    release a0 with temp_90_ptr_of_c1_19_21
              #                     296  c1_19 = chi c1_19:295 
              #                     298  temp_108_ptr_of_c2_19_21 = GEP c2_19:ptr->f32 [Some(0_0)] 
              #                    occupy a0 with temp_108_ptr_of_c2_19_21
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with c2_19
              #                    load from c2_19 in mem
    ld      s7,1040(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with c2_19
              #                    store to c2_19 in mem offset legal
    sd      s7,1040(sp)
              #                    release s7 with c2_19
              #                    free a0
              #                     300  temp_109_ptr_of_a2_19_21 = GEP a2_19:Array:f32:[None] [Some(0_0)] 
              #                    occupy s7 with temp_109_ptr_of_a2_19_21
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a2 with a2_19
    add     s7,s7,a2
              #                    free a2
              #                    occupy a2 with a2_19
              #                    store to a2_19 in mem offset legal
    sd      a2,976(sp)
              #                    release a2 with a2_19
              #                    free s7
              #                     302  temp_110_ele_of_a2_19_21_0 = load temp_109_ptr_of_a2_19_21:ptr->f32 
              #                    occupy s7 with temp_109_ptr_of_a2_19_21
              #                    occupy fa2 with temp_110_ele_of_a2_19_21_0
    flw     fa2,0(s7)
              #                    free fa2
              #                    free s7
              #                     694  untrack temp_109_ptr_of_a2_19_21 
              #                    occupy s7 with temp_109_ptr_of_a2_19_21
              #                    release s7 with temp_109_ptr_of_a2_19_21
              #                     303  mu a2_19:302 
              #                     305  (nop) 
              #                     307  (nop) 
              #                     308  mu b0_19:307 
              #                     310  temp_113_arithop_21_0 = Mul f32 temp_110_ele_of_a2_19_21_0, temp_4_ele_of_b0_19_21_0 
              #                    occupy fa2 with temp_110_ele_of_a2_19_21_0
              #                    occupy fa1 with temp_4_ele_of_b0_19_21_0
              #                    occupy fa3 with temp_113_arithop_21_0
    fmul.s  fa3,fa2,fa1
              #                    free fa2
              #                    free fa1
              #                    free fa3
              #                     731  untrack temp_4_ele_of_b0_19_21_0 
              #                    occupy fa1 with temp_4_ele_of_b0_19_21_0
              #                    release fa1 with temp_4_ele_of_b0_19_21_0
              #                     312  temp_114_ptr_of_a2_19_21 = GEP a2_19:Array:f32:[None] [Some(1_0)] 
              #                    occupy a2 with temp_114_ptr_of_a2_19_21
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
              #                    occupy s7 with a2_19
              #                    load from a2_19 in mem
    ld      s7,976(sp)
    add     a2,a2,s7
              #                    free s7
              #                    occupy s7 with a2_19
              #                    store to a2_19 in mem offset legal
    sd      s7,976(sp)
              #                    release s7 with a2_19
              #                    free a2
              #                     314  temp_115_ele_of_a2_19_21_0 = load temp_114_ptr_of_a2_19_21:ptr->f32 
              #                    occupy a2 with temp_114_ptr_of_a2_19_21
              #                    occupy fa1 with temp_115_ele_of_a2_19_21_0
    flw     fa1,0(a2)
              #                    free fa1
              #                    free a2
              #                     721  untrack temp_114_ptr_of_a2_19_21 
              #                    occupy a2 with temp_114_ptr_of_a2_19_21
              #                    release a2 with temp_114_ptr_of_a2_19_21
              #                     315  mu a2_19:314 
              #                     317  (nop) 
              #                     319  (nop) 
              #                     320  mu b1_19:319 
              #                     322  temp_118_arithop_21_0 = Mul f32 temp_115_ele_of_a2_19_21_0, temp_9_ele_of_b1_19_21_0 
              #                    occupy fa1 with temp_115_ele_of_a2_19_21_0
              #                    occupy fa4 with temp_9_ele_of_b1_19_21_0
              #                    occupy f19 with temp_118_arithop_21_0
    fmul.s  f19,fa1,fa4
              #                    free fa1
              #                    free fa4
              #                    free f19
              #                     726  untrack temp_9_ele_of_b1_19_21_0 
              #                    occupy fa4 with temp_9_ele_of_b1_19_21_0
              #                    release fa4 with temp_9_ele_of_b1_19_21_0
              #                     324  temp_119_arithop_21_0 = Add f32 temp_113_arithop_21_0, temp_118_arithop_21_0 
              #                    occupy fa3 with temp_113_arithop_21_0
              #                    occupy f19 with temp_118_arithop_21_0
              #                    occupy fa4 with temp_119_arithop_21_0
    fadd.s  fa4,fa3,f19
              #                    free fa3
              #                    free f19
              #                    free fa4
              #                     740  untrack temp_113_arithop_21_0 
              #                    occupy fa3 with temp_113_arithop_21_0
              #                    release fa3 with temp_113_arithop_21_0
              #                     695  untrack temp_118_arithop_21_0 
              #                    occupy f19 with temp_118_arithop_21_0
              #                    release f19 with temp_118_arithop_21_0
              #                     326  temp_120_ptr_of_a2_19_21 = GEP a2_19:Array:f32:[None] [Some(2_0)] 
              #                    occupy a2 with temp_120_ptr_of_a2_19_21
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
              #                    occupy s7 with a2_19
              #                    load from a2_19 in mem
    ld      s7,976(sp)
    add     a2,a2,s7
              #                    free s7
              #                    occupy s7 with a2_19
              #                    store to a2_19 in mem offset legal
    sd      s7,976(sp)
              #                    release s7 with a2_19
              #                    free a2
              #                     328  temp_121_ele_of_a2_19_21_0 = load temp_120_ptr_of_a2_19_21:ptr->f32 
              #                    occupy a2 with temp_120_ptr_of_a2_19_21
              #                    occupy fa3 with temp_121_ele_of_a2_19_21_0
    flw     fa3,0(a2)
              #                    free fa3
              #                    free a2
              #                     705  untrack temp_120_ptr_of_a2_19_21 
              #                    occupy a2 with temp_120_ptr_of_a2_19_21
              #                    release a2 with temp_120_ptr_of_a2_19_21
              #                     329  mu a2_19:328 
              #                     331  (nop) 
              #                     333  (nop) 
              #                     334  mu b2_19:333 
              #                     336  temp_124_arithop_21_0 = Mul f32 temp_121_ele_of_a2_19_21_0, temp_15_ele_of_b2_19_21_0 
              #                    occupy fa3 with temp_121_ele_of_a2_19_21_0
              #                    occupy fa5 with temp_15_ele_of_b2_19_21_0
              #                    occupy f19 with temp_124_arithop_21_0
    fmul.s  f19,fa3,fa5
              #                    free fa3
              #                    free fa5
              #                    free f19
              #                     665  untrack temp_15_ele_of_b2_19_21_0 
              #                    occupy fa5 with temp_15_ele_of_b2_19_21_0
              #                    release fa5 with temp_15_ele_of_b2_19_21_0
              #                     338  temp_125_arithop_21_0 = Add f32 temp_119_arithop_21_0, temp_124_arithop_21_0 
              #                    occupy fa4 with temp_119_arithop_21_0
              #                    occupy f19 with temp_124_arithop_21_0
              #                    occupy fa5 with temp_125_arithop_21_0
    fadd.s  fa5,fa4,f19
              #                    free fa4
              #                    free f19
              #                    free fa5
              #                     709  untrack temp_119_arithop_21_0 
              #                    occupy fa4 with temp_119_arithop_21_0
              #                    release fa4 with temp_119_arithop_21_0
              #                     689  untrack temp_124_arithop_21_0 
              #                    occupy f19 with temp_124_arithop_21_0
              #                    release f19 with temp_124_arithop_21_0
              #                     339  store temp_125_arithop_21_0:f32 temp_108_ptr_of_c2_19_21:ptr->f32 
              #                    occupy a0 with temp_108_ptr_of_c2_19_21
              #                    occupy fa5 with temp_125_arithop_21_0
    fsw     fa5,0(a0)
              #                    free fa5
              #                    free a0
              #                     743  untrack temp_108_ptr_of_c2_19_21 
              #                    occupy a0 with temp_108_ptr_of_c2_19_21
              #                    release a0 with temp_108_ptr_of_c2_19_21
              #                     717  untrack temp_125_arithop_21_0 
              #                    occupy fa5 with temp_125_arithop_21_0
              #                    release fa5 with temp_125_arithop_21_0
              #                     340  c2_19 = chi c2_19:339 
              #                     342  temp_126_ptr_of_c2_19_21 = GEP c2_19:ptr->f32 [Some(1_0)] 
              #                    occupy a0 with temp_126_ptr_of_c2_19_21
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy s7 with c2_19
              #                    load from c2_19 in mem
    ld      s7,1040(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with c2_19
              #                    store to c2_19 in mem offset legal
    sd      s7,1040(sp)
              #                    release s7 with c2_19
              #                    free a0
              #                     344  (nop) 
              #                     346  (nop) 
              #                     347  mu a2_19:346 
              #                     349  (nop) 
              #                     351  (nop) 
              #                     352  mu b0_19:351 
              #                     354  temp_131_arithop_21_0 = Mul f32 temp_110_ele_of_a2_19_21_0, temp_22_ele_of_b0_19_21_0 
              #                    occupy fa2 with temp_110_ele_of_a2_19_21_0
              #                    occupy fa6 with temp_22_ele_of_b0_19_21_0
              #                    occupy fa4 with temp_131_arithop_21_0
    fmul.s  fa4,fa2,fa6
              #                    free fa2
              #                    free fa6
              #                    free fa4
              #                     654  untrack temp_22_ele_of_b0_19_21_0 
              #                    occupy fa6 with temp_22_ele_of_b0_19_21_0
              #                    release fa6 with temp_22_ele_of_b0_19_21_0
              #                     356  (nop) 
              #                     358  (nop) 
              #                     359  mu a2_19:358 
              #                     361  (nop) 
              #                     363  (nop) 
              #                     364  mu b1_19:363 
              #                     366  temp_136_arithop_21_0 = Mul f32 temp_115_ele_of_a2_19_21_0, temp_27_ele_of_b1_19_21_0 
              #                    occupy fa1 with temp_115_ele_of_a2_19_21_0
              #                    occupy f8 with temp_27_ele_of_b1_19_21_0
              #                    occupy fa5 with temp_136_arithop_21_0
    fmul.s  fa5,fa1,f8
              #                    free fa1
              #                    free f8
              #                    free fa5
              #                     698  untrack temp_27_ele_of_b1_19_21_0 
              #                    occupy f8 with temp_27_ele_of_b1_19_21_0
              #                    release f8 with temp_27_ele_of_b1_19_21_0
              #                     368  temp_137_arithop_21_0 = Add f32 temp_131_arithop_21_0, temp_136_arithop_21_0 
              #                    occupy fa4 with temp_131_arithop_21_0
              #                    occupy fa5 with temp_136_arithop_21_0
              #                    occupy fa6 with temp_137_arithop_21_0
    fadd.s  fa6,fa4,fa5
              #                    free fa4
              #                    free fa5
              #                    free fa6
              #                     680  untrack temp_131_arithop_21_0 
              #                    occupy fa4 with temp_131_arithop_21_0
              #                    release fa4 with temp_131_arithop_21_0
              #                     674  untrack temp_136_arithop_21_0 
              #                    occupy fa5 with temp_136_arithop_21_0
              #                    release fa5 with temp_136_arithop_21_0
              #                     370  (nop) 
              #                     372  (nop) 
              #                     373  mu a2_19:372 
              #                     375  (nop) 
              #                     377  (nop) 
              #                     378  mu b2_19:377 
              #                     380  temp_142_arithop_21_0 = Mul f32 temp_121_ele_of_a2_19_21_0, temp_33_ele_of_b2_19_21_0 
              #                    occupy fa3 with temp_121_ele_of_a2_19_21_0
              #                    occupy fa7 with temp_33_ele_of_b2_19_21_0
              #                    occupy fa4 with temp_142_arithop_21_0
    fmul.s  fa4,fa3,fa7
              #                    free fa3
              #                    free fa7
              #                    free fa4
              #                     732  untrack temp_33_ele_of_b2_19_21_0 
              #                    occupy fa7 with temp_33_ele_of_b2_19_21_0
              #                    release fa7 with temp_33_ele_of_b2_19_21_0
              #                     382  temp_143_arithop_21_0 = Add f32 temp_137_arithop_21_0, temp_142_arithop_21_0 
              #                    occupy fa6 with temp_137_arithop_21_0
              #                    occupy fa4 with temp_142_arithop_21_0
              #                    occupy fa5 with temp_143_arithop_21_0
    fadd.s  fa5,fa6,fa4
              #                    free fa6
              #                    free fa4
              #                    free fa5
              #                     734  untrack temp_137_arithop_21_0 
              #                    occupy fa6 with temp_137_arithop_21_0
              #                    release fa6 with temp_137_arithop_21_0
              #                     692  untrack temp_142_arithop_21_0 
              #                    occupy fa4 with temp_142_arithop_21_0
              #                    release fa4 with temp_142_arithop_21_0
              #                     383  store temp_143_arithop_21_0:f32 temp_126_ptr_of_c2_19_21:ptr->f32 
              #                    occupy a0 with temp_126_ptr_of_c2_19_21
              #                    occupy fa5 with temp_143_arithop_21_0
    fsw     fa5,0(a0)
              #                    free fa5
              #                    free a0
              #                     752  untrack temp_126_ptr_of_c2_19_21 
              #                    occupy a0 with temp_126_ptr_of_c2_19_21
              #                    release a0 with temp_126_ptr_of_c2_19_21
              #                     685  untrack temp_143_arithop_21_0 
              #                    occupy fa5 with temp_143_arithop_21_0
              #                    release fa5 with temp_143_arithop_21_0
              #                     384  c2_19 = chi c2_19:383 
              #                     386  temp_144_ptr_of_c2_19_21 = GEP c2_19:ptr->f32 [Some(2_0)] 
              #                    occupy a0 with temp_144_ptr_of_c2_19_21
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with c2_19
              #                    load from c2_19 in mem
    ld      s7,1040(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with c2_19
              #                    store to c2_19 in mem offset legal
    sd      s7,1040(sp)
              #                    release s7 with c2_19
              #                    free a0
              #                     388  (nop) 
              #                     390  (nop) 
              #                     391  mu a2_19:390 
              #                     393  (nop) 
              #                     395  (nop) 
              #                     396  mu b0_19:395 
              #                     678  untrack b0_19 
              #                     398  temp_149_arithop_21_0 = Mul f32 temp_110_ele_of_a2_19_21_0, temp_40_ele_of_b0_19_21_0 
              #                    occupy fa2 with temp_110_ele_of_a2_19_21_0
              #                    occupy f9 with temp_40_ele_of_b0_19_21_0
              #                    occupy fa4 with temp_149_arithop_21_0
    fmul.s  fa4,fa2,f9
              #                    free fa2
              #                    free f9
              #                    free fa4
              #                     711  untrack temp_40_ele_of_b0_19_21_0 
              #                    occupy f9 with temp_40_ele_of_b0_19_21_0
              #                    release f9 with temp_40_ele_of_b0_19_21_0
              #                     693  untrack temp_110_ele_of_a2_19_21_0 
              #                    occupy fa2 with temp_110_ele_of_a2_19_21_0
              #                    release fa2 with temp_110_ele_of_a2_19_21_0
              #                     400  (nop) 
              #                     402  (nop) 
              #                     403  mu a2_19:402 
              #                     405  (nop) 
              #                     407  (nop) 
              #                     408  mu b1_19:407 
              #                     662  untrack b1_19 
              #                     410  temp_154_arithop_21_0 = Mul f32 temp_115_ele_of_a2_19_21_0, temp_45_ele_of_b1_19_21_0 
              #                    occupy fa1 with temp_115_ele_of_a2_19_21_0
              #                    occupy fa0 with temp_45_ele_of_b1_19_21_0
              #                    occupy fa2 with temp_154_arithop_21_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     719  untrack temp_45_ele_of_b1_19_21_0 
              #                    occupy fa0 with temp_45_ele_of_b1_19_21_0
              #                    release fa0 with temp_45_ele_of_b1_19_21_0
              #                     679  untrack temp_115_ele_of_a2_19_21_0 
              #                    occupy fa1 with temp_115_ele_of_a2_19_21_0
              #                    release fa1 with temp_115_ele_of_a2_19_21_0
              #                     412  temp_155_arithop_21_0 = Add f32 temp_149_arithop_21_0, temp_154_arithop_21_0 
              #                    occupy fa4 with temp_149_arithop_21_0
              #                    occupy fa2 with temp_154_arithop_21_0
              #                    occupy fa0 with temp_155_arithop_21_0
    fadd.s  fa0,fa4,fa2
              #                    free fa4
              #                    free fa2
              #                    free fa0
              #                     750  untrack temp_149_arithop_21_0 
              #                    occupy fa4 with temp_149_arithop_21_0
              #                    release fa4 with temp_149_arithop_21_0
              #                     729  untrack temp_154_arithop_21_0 
              #                    occupy fa2 with temp_154_arithop_21_0
              #                    release fa2 with temp_154_arithop_21_0
              #                     414  (nop) 
              #                     416  (nop) 
              #                     417  mu a2_19:416 
              #                     718  untrack a2_19 
              #                     419  (nop) 
              #                     421  (nop) 
              #                     422  mu b2_19:421 
              #                     661  untrack b2_19 
              #                    occupy a5 with b2_19
              #                    release a5 with b2_19
              #                     424  temp_160_arithop_21_0 = Mul f32 temp_121_ele_of_a2_19_21_0, temp_51_ele_of_b2_19_21_0 
              #                    occupy fa3 with temp_121_ele_of_a2_19_21_0
              #                    occupy f18 with temp_51_ele_of_b2_19_21_0
              #                    occupy fa1 with temp_160_arithop_21_0
    fmul.s  fa1,fa3,f18
              #                    free fa3
              #                    free f18
              #                    free fa1
              #                     748  untrack temp_121_ele_of_a2_19_21_0 
              #                    occupy fa3 with temp_121_ele_of_a2_19_21_0
              #                    release fa3 with temp_121_ele_of_a2_19_21_0
              #                     730  untrack temp_51_ele_of_b2_19_21_0 
              #                    occupy f18 with temp_51_ele_of_b2_19_21_0
              #                    release f18 with temp_51_ele_of_b2_19_21_0
              #                     426  temp_161_arithop_21_0 = Add f32 temp_155_arithop_21_0, temp_160_arithop_21_0 
              #                    occupy fa0 with temp_155_arithop_21_0
              #                    occupy fa1 with temp_160_arithop_21_0
              #                    occupy fa2 with temp_161_arithop_21_0
    fadd.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     745  untrack temp_160_arithop_21_0 
              #                    occupy fa1 with temp_160_arithop_21_0
              #                    release fa1 with temp_160_arithop_21_0
              #                     656  untrack temp_155_arithop_21_0 
              #                    occupy fa0 with temp_155_arithop_21_0
              #                    release fa0 with temp_155_arithop_21_0
              #                     427  store temp_161_arithop_21_0:f32 temp_144_ptr_of_c2_19_21:ptr->f32 
              #                    occupy a0 with temp_144_ptr_of_c2_19_21
              #                    occupy fa2 with temp_161_arithop_21_0
    fsw     fa2,0(a0)
              #                    free fa2
              #                    free a0
              #                     688  untrack temp_161_arithop_21_0 
              #                    occupy fa2 with temp_161_arithop_21_0
              #                    release fa2 with temp_161_arithop_21_0
              #                     671  untrack temp_144_ptr_of_c2_19_21 
              #                    occupy a0 with temp_144_ptr_of_c2_19_21
              #                    release a0 with temp_144_ptr_of_c2_19_21
              #                     428  c2_19 = chi c2_19:427 
              #                     606  mu c0_19:430 
              #                     697  untrack c0_19 
              #                    occupy a6 with c0_19
              #                    release a6 with c0_19
              #                     607  mu c2_19:430 
              #                     670  untrack c2_19 
              #                     608  mu c1_19:430 
              #                     675  untrack c1_19 
              #                    occupy a7 with c1_19
              #                    release a7 with c1_19
              #                     430  ret 0_0 
              #                    load from ra_mul_0 in mem
    ld      ra,1032(sp)
              #                    load from s0_mul_0 in mem
    ld      s0,1024(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1080
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     29   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 400|s0_main:8 at 392|a0:12 at 380|a1:12 at 368|a2:12 at 356|b0:12 at 344|b1:12 at 332|b2:12 at 320|c0:24 at 296|c1:12 at 284|c2:12 at 272|i _s35 _i0:4 at 268|i _s35 _i2:4 at 264|i _s35 _i5:4 at 260|i _s35 _i8:4 at 256|i _s35 _i11:4 at 252|none:4 at 248|temp_162_ele_ptr_of_a0_35:8 at 240|temp_163_ele_ptr_of_a1_35:8 at 232|temp_164_ele_ptr_of_a2_35:8 at 224|temp_165_ele_ptr_of_b0_35:8 at 216|temp_166_ele_ptr_of_b1_35:8 at 208|temp_167_ele_ptr_of_b2_35:8 at 200|temp_168_ele_ptr_of_c0_35:8 at 192|temp_169_ele_ptr_of_c1_35:8 at 184|temp_170_ele_ptr_of_c2_35:8 at 176|temp_171_ret_of_mul _s35 _i0:4 at 172|x _s35 _i0:4 at 168|x _s35 _i1:4 at 164|x _s35 _i4:4 at 160|x _s35 _i7:4 at 156|none:4 at 152|temp_172_ptr_of_c2_35:8 at 144|temp_173_ele_of_c2_35 _s74 _i0:4 at 140|temp_174_ _s74 _i0:4 at 136|temp_175_arithop _s74 _i0:4 at 132|none:4 at 128|temp_176_ptr_of_c1_35:8 at 120|temp_177_ele_of_c1_35 _s65 _i0:4 at 116|temp_178_ _s65 _i0:4 at 112|temp_179_arithop _s65 _i0:4 at 108|none:4 at 104|temp_180_ptr_of_c0_35:8 at 96|temp_181_ele_of_c0_35 _s56 _i0:4 at 92|temp_182_ _s56 _i0:4 at 88|temp_183_arithop _s56 _i0:4 at 84|none:4 at 80|temp_184_ptr_of_a0_35:8 at 72|temp_185_ _s44 _i0:4 at 68|none:4 at 64|temp_186_ptr_of_a1_35:8 at 56|temp_188_ptr_of_a2_35:8 at 48|temp_190_ptr_of_b0_35:8 at 40|temp_192_ptr_of_b1_35:8 at 32|temp_194_ptr_of_b2_35:8 at 24|temp_196_arithop _s44 _i0:4 at 20|temp_197_value_from_ptr _s42 _i0:4 at 16|temp_198_cmp _s42 _i0:1 at 15|none:3 at 12|temp_199_value_from_ptr _s54 _i0:4 at 8|temp_200_cmp _s54 _i0:1 at 7|temp_202_cmp _s63 _i0:1 at 6|temp_204_cmp _s72 _i0:1 at 5|none:5 at 0
    addi    sp,sp,-408
              #                    store to ra_main_0 in mem offset legal
    sd      ra,400(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,392(sp)
    addi    s0,sp,408
              #                     609  L_0_1 = chi L_0_0:29 
              #                     610  M_0_1 = chi M_0_0:29 
              #                     611  N_0_1 = chi N_0_0:29 
              #                     440  alloc Array:f32:[Some(3_0)] [a0_35] 
              #                     442  alloc Array:f32:[Some(3_0)] [a1_35] 
              #                     444  alloc Array:f32:[Some(3_0)] [a2_35] 
              #                     446  alloc Array:f32:[Some(3_0)] [b0_35] 
              #                     448  alloc Array:f32:[Some(3_0)] [b1_35] 
              #                     450  alloc Array:f32:[Some(3_0)] [b2_35] 
              #                     452  alloc Array:f32:[Some(6_0)] [c0_35] 
              #                     454  alloc Array:f32:[Some(3_0)] [c1_35] 
              #                     456  alloc Array:f32:[Some(3_0)] [c2_35] 
              #                     457  alloc i32 [i_35] 
              #                     460  alloc ptr->f32 [temp_162_ele_ptr_of_a0_35_35] 
              #                     462  alloc ptr->f32 [temp_163_ele_ptr_of_a1_35_35] 
              #                     464  alloc ptr->f32 [temp_164_ele_ptr_of_a2_35_35] 
              #                     466  alloc ptr->f32 [temp_165_ele_ptr_of_b0_35_35] 
              #                     468  alloc ptr->f32 [temp_166_ele_ptr_of_b1_35_35] 
              #                     470  alloc ptr->f32 [temp_167_ele_ptr_of_b2_35_35] 
              #                     472  alloc ptr->f32 [temp_168_ele_ptr_of_c0_35_35] 
              #                     474  alloc ptr->f32 [temp_169_ele_ptr_of_c1_35_35] 
              #                     476  alloc ptr->f32 [temp_170_ele_ptr_of_c2_35_35] 
              #                     478  alloc i32 [temp_171_ret_of_mul_35] 
              #                     481  alloc i32 [x_35] 
              #                     493  alloc ptr->f32 [temp_172_ptr_of_c2_35_74] 
              #                     495  alloc f32 [temp_173_ele_of_c2_35_74] 
              #                     498  alloc i32 [temp_174__74] 
              #                     502  alloc i32 [temp_175_arithop_74] 
              #                     505  alloc ptr->f32 [temp_176_ptr_of_c1_35_65] 
              #                     507  alloc f32 [temp_177_ele_of_c1_35_65] 
              #                     510  alloc i32 [temp_178__65] 
              #                     514  alloc i32 [temp_179_arithop_65] 
              #                     517  alloc ptr->f32 [temp_180_ptr_of_c0_35_56] 
              #                     519  alloc f32 [temp_181_ele_of_c0_35_56] 
              #                     522  alloc i32 [temp_182__56] 
              #                     526  alloc i32 [temp_183_arithop_56] 
              #                     529  alloc ptr->f32 [temp_184_ptr_of_a0_35_44] 
              #                     531  alloc f32 [temp_185__44] 
              #                     535  alloc ptr->f32 [temp_186_ptr_of_a1_35_44] 
              #                     537  alloc f32 [temp_187__44] 
              #                     541  alloc ptr->f32 [temp_188_ptr_of_a2_35_44] 
              #                     543  alloc f32 [temp_189__44] 
              #                     547  alloc ptr->f32 [temp_190_ptr_of_b0_35_44] 
              #                     549  alloc f32 [temp_191__44] 
              #                     553  alloc ptr->f32 [temp_192_ptr_of_b1_35_44] 
              #                     555  alloc f32 [temp_193__44] 
              #                     559  alloc ptr->f32 [temp_194_ptr_of_b2_35_44] 
              #                     561  alloc f32 [temp_195__44] 
              #                     565  alloc i32 [temp_196_arithop_44] 
              #                     568  alloc i32 [temp_197_value_from_ptr_42] 
              #                     571  alloc i1 [temp_198_cmp_42] 
              #                     577  alloc i32 [temp_199_value_from_ptr_54] 
              #                     580  alloc i1 [temp_200_cmp_54] 
              #                     586  alloc i32 [temp_201_value_from_ptr_63] 
              #                     589  alloc i1 [temp_202_cmp_63] 
              #                     595  alloc i32 [temp_203_value_from_ptr_72] 
              #                     598  alloc i1 [temp_204_cmp_72] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     433  store 3_0:i32 *N_0:ptr->i32 
              #                    occupy a0 with *N_0
              #                       load label N as ptr to reg
    la      a0, N
              #                    occupy reg a0 with *N_0
              #                    occupy a1 with 3_0
    li      a1, 3
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     434  N_0_2 = chi N_0_1:433 
              #                     435  store 3_0:i32 *M_0:ptr->i32 
              #                    occupy a2 with *M_0
              #                       load label M as ptr to reg
    la      a2, M
              #                    occupy reg a2 with *M_0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     436  M_0_2 = chi M_0_1:435 
              #                     437  store 3_0:i32 *L_0:ptr->i32 
              #                    occupy a3 with *L_0
              #                       load label L as ptr to reg
    la      a3, L
              #                    occupy reg a3 with *L_0
              #                    found literal reg Some(a1) already exist with 3_0
              #                    occupy a1 with 3_0
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                     438  L_0_2 = chi L_0_1:437 
              #                     439   
              #                     441   
              #                     443   
              #                     445   
              #                     447   
              #                     449   
              #                     451   
              #                     453   
              #                     455   
              #                     458   
              #                     459  (nop) 
              #                     646  i_35_2 = i32 0_0 
              #                    occupy a4 with i_35_2
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_43 
    j       .while.head_43
              #                    regtab     a4:Freed { symidx: i_35_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     573  label while.head_43: 
.while.head_43:
              #                     569  temp_197_value_from_ptr_42_0 = load *M_0:ptr->i32 
              #                    occupy a0 with *M_0
              #                       load label M as ptr to reg
    la      a0, M
              #                    occupy reg a0 with *M_0
              #                    occupy a1 with temp_197_value_from_ptr_42_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     570  mu M_0_2:569 
              #                     572  temp_198_cmp_42_0 = icmp i32 Slt i_35_2, temp_197_value_from_ptr_42_0 
              #                    occupy a4 with i_35_2
              #                    occupy a1 with temp_197_value_from_ptr_42_0
              #                    occupy a2 with temp_198_cmp_42_0
    slt     a2,a4,a1
              #                    free a4
              #                    free a1
              #                    free a2
              #                     576  br i1 temp_198_cmp_42_0, label while.body_43, label while.exit_43 
              #                    occupy a2 with temp_198_cmp_42_0
              #                    free a2
              #                    occupy a2 with temp_198_cmp_42_0
    bnez    a2, .while.body_43
              #                    free a2
    j       .while.exit_43
              #                    regtab     a1:Freed { symidx: temp_197_value_from_ptr_42_0, tracked: true } |     a2:Freed { symidx: temp_198_cmp_42_0, tracked: true } |     a4:Freed { symidx: i_35_2, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     574  label while.body_43: 
.while.body_43:
              #                     530  temp_184_ptr_of_a0_35_44 = GEP a0_35_1:Array:f32:[Some(3_0)] [Some(i_35_2)] 
              #                    occupy a0 with temp_184_ptr_of_a0_35_44
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_35_2
    mv      a3, a4
              #                    free a4
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,380
              #                    free a0
              #                     532  temp_185__44_0 = sitofp i32 i_35_2 to f32 
              #                    occupy a4 with i_35_2
              #                    occupy fa0 with temp_185__44_0
    fcvt.s.w fa0,a4,rtz
              #                    free a4
              #                    free fa0
              #                     533  store temp_185__44_0:f32 temp_184_ptr_of_a0_35_44:ptr->f32 
              #                    occupy a0 with temp_184_ptr_of_a0_35_44
              #                    occupy fa0 with temp_185__44_0
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     534  a0_35_2 = chi a0_35_1:533 
              #                     536  temp_186_ptr_of_a1_35_44 = GEP a1_35_1:Array:f32:[Some(3_0)] [Some(i_35_2)] 
              #                    occupy a5 with temp_186_ptr_of_a1_35_44
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_35_2
    mv      a6, a4
              #                    free a4
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,368
              #                    free a5
              #                     538  (nop) 
              #                     539  store temp_185__44_0:f32 temp_186_ptr_of_a1_35_44:ptr->f32 
              #                    occupy a5 with temp_186_ptr_of_a1_35_44
              #                    occupy fa0 with temp_185__44_0
    fsw     fa0,0(a5)
              #                    free fa0
              #                    free a5
              #                     540  a1_35_2 = chi a1_35_1:539 
              #                     542  temp_188_ptr_of_a2_35_44 = GEP a2_35_1:Array:f32:[Some(3_0)] [Some(i_35_2)] 
              #                    occupy a7 with temp_188_ptr_of_a2_35_44
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_35_2
    mv      s1, a4
              #                    free a4
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,356
              #                    free a7
              #                     544  (nop) 
              #                     545  store temp_185__44_0:f32 temp_188_ptr_of_a2_35_44:ptr->f32 
              #                    occupy a7 with temp_188_ptr_of_a2_35_44
              #                    occupy fa0 with temp_185__44_0
    fsw     fa0,0(a7)
              #                    free fa0
              #                    free a7
              #                     546  a2_35_2 = chi a2_35_1:545 
              #                     548  temp_190_ptr_of_b0_35_44 = GEP b0_35_1:Array:f32:[Some(3_0)] [Some(i_35_2)] 
              #                    occupy s2 with temp_190_ptr_of_b0_35_44
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_35_2
    mv      s3, a4
              #                    free a4
              #                    occupy a4 with i_35_2
              #                    store to i_35_2 in mem offset legal
    sw      a4,264(sp)
              #                    release a4 with i_35_2
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,344
              #                    free s2
              #                     550  (nop) 
              #                     551  store temp_185__44_0:f32 temp_190_ptr_of_b0_35_44:ptr->f32 
              #                    occupy s2 with temp_190_ptr_of_b0_35_44
              #                    occupy fa0 with temp_185__44_0
    fsw     fa0,0(s2)
              #                    free fa0
              #                    free s2
              #                     552  b0_35_2 = chi b0_35_1:551 
              #                     554  temp_192_ptr_of_b1_35_44 = GEP b1_35_1:Array:f32:[Some(3_0)] [Some(i_35_2)] 
              #                    occupy a4 with temp_192_ptr_of_b1_35_44
    li      a4, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_35_2
              #                    load from i_35_2 in mem


    lw      s4,264(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with i_35_2
              #                    store to i_35_2 in mem offset legal
    sw      s4,264(sp)
              #                    release s4 with i_35_2
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,332
              #                    free a4
              #                    occupy a4 with temp_192_ptr_of_b1_35_44
              #                    store to temp_192_ptr_of_b1_35_44 in mem offset legal
    sd      a4,32(sp)
              #                    release a4 with temp_192_ptr_of_b1_35_44
              #                     556  (nop) 
              #                     557  store temp_185__44_0:f32 temp_192_ptr_of_b1_35_44:ptr->f32 
              #                    occupy a4 with temp_192_ptr_of_b1_35_44
              #                    load from temp_192_ptr_of_b1_35_44 in mem
    ld      a4,32(sp)
              #                    occupy fa0 with temp_185__44_0
    fsw     fa0,0(a4)
              #                    free fa0
              #                    free a4
              #                    occupy a4 with temp_192_ptr_of_b1_35_44
              #                    store to temp_192_ptr_of_b1_35_44 in mem offset legal
    sd      a4,32(sp)
              #                    release a4 with temp_192_ptr_of_b1_35_44
              #                     558  b1_35_2 = chi b1_35_1:557 
              #                     560  temp_194_ptr_of_b2_35_44 = GEP b2_35_1:Array:f32:[Some(3_0)] [Some(i_35_2)] 
              #                    occupy a4 with temp_194_ptr_of_b2_35_44
    li      a4, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_35_2
              #                    load from i_35_2 in mem


    lw      s4,264(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with i_35_2
              #                    store to i_35_2 in mem offset legal
    sw      s4,264(sp)
              #                    release s4 with i_35_2
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,320
              #                    free a4
              #                    occupy a4 with temp_194_ptr_of_b2_35_44
              #                    store to temp_194_ptr_of_b2_35_44 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_194_ptr_of_b2_35_44
              #                     562  (nop) 
              #                     563  store temp_185__44_0:f32 temp_194_ptr_of_b2_35_44:ptr->f32 
              #                    occupy a4 with temp_194_ptr_of_b2_35_44
              #                    load from temp_194_ptr_of_b2_35_44 in mem
    ld      a4,24(sp)
              #                    occupy fa0 with temp_185__44_0
    fsw     fa0,0(a4)
              #                    free fa0
              #                    free a4
              #                    occupy a4 with temp_194_ptr_of_b2_35_44
              #                    store to temp_194_ptr_of_b2_35_44 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_194_ptr_of_b2_35_44
              #                     564  b2_35_2 = chi b2_35_1:563 
              #                     566  temp_196_arithop_44_0 = Add i32 i_35_2, 1_0 
              #                    occupy a4 with i_35_2
              #                    load from i_35_2 in mem


    lw      a4,264(sp)
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_196_arithop_44_0
    ADDW    s4,a4,s3
              #                    free a4
              #                    occupy a4 with i_35_2
              #                    store to i_35_2 in mem offset legal
    sw      a4,264(sp)
              #                    release a4 with i_35_2
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_196_arithop_44_0
              #                    store to temp_196_arithop_44_0 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_196_arithop_44_0
              #                     567  (nop) 
              #                     647  i_35_2 = i32 temp_196_arithop_44_0 
              #                    occupy a4 with temp_196_arithop_44_0
              #                    load from temp_196_arithop_44_0 in mem


    lw      a4,20(sp)
              #                    occupy s3 with i_35_2
    mv      s3, a4
              #                    free a4
              #                    occupy a4 with temp_196_arithop_44_0
              #                    store to temp_196_arithop_44_0 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_196_arithop_44_0
              #                    free s3
              #                    occupy s3 with i_35_2
              #                    store to i_35_2 in mem offset legal
    sw      s3,264(sp)
              #                    release s3 with i_35_2
              #                          jump label: while.head_43 
              #                    occupy a4 with i_35_2
              #                    load from i_35_2 in mem


    lw      a4,264(sp)
              #                    occupy fa0 with temp_185__44_0
              #                    store to temp_185__44_0 in mem offset legal
    fsw     fa0,68(sp)
              #                    release fa0 with temp_185__44_0
              #                    occupy a5 with temp_186_ptr_of_a1_35_44
              #                    store to temp_186_ptr_of_a1_35_44 in mem offset legal
    sd      a5,56(sp)
              #                    release a5 with temp_186_ptr_of_a1_35_44
              #                    occupy a0 with temp_184_ptr_of_a0_35_44
              #                    store to temp_184_ptr_of_a0_35_44 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with temp_184_ptr_of_a0_35_44
              #                    occupy a2 with temp_198_cmp_42_0
              #                    store to temp_198_cmp_42_0 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_198_cmp_42_0
              #                    occupy a7 with temp_188_ptr_of_a2_35_44
              #                    store to temp_188_ptr_of_a2_35_44 in mem offset legal
    sd      a7,48(sp)
              #                    release a7 with temp_188_ptr_of_a2_35_44
              #                    occupy a1 with temp_197_value_from_ptr_42_0
              #                    store to temp_197_value_from_ptr_42_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_197_value_from_ptr_42_0
              #                    occupy s2 with temp_190_ptr_of_b0_35_44
              #                    store to temp_190_ptr_of_b0_35_44 in mem offset legal
    sd      s2,40(sp)
              #                    release s2 with temp_190_ptr_of_b0_35_44
    j       .while.head_43
              #                    regtab     a1:Freed { symidx: temp_197_value_from_ptr_42_0, tracked: true } |     a2:Freed { symidx: temp_198_cmp_42_0, tracked: true } |     a4:Freed { symidx: i_35_2, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     575  label while.exit_43: 
.while.exit_43:
              #                     753  untrack i_35_2 
              #                    occupy a4 with i_35_2
              #                    release a4 with i_35_2
              #                     461  temp_162_ele_ptr_of_a0_35_35 = GEP a0_35_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a0 with temp_162_ele_ptr_of_a0_35_35
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,380
              #                    free a0
              #                     463  temp_163_ele_ptr_of_a1_35_35 = GEP a1_35_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a3 with temp_163_ele_ptr_of_a1_35_35
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,368
              #                    free a3
              #                     465  temp_164_ele_ptr_of_a2_35_35 = GEP a2_35_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a4 with temp_164_ele_ptr_of_a2_35_35
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,356
              #                    free a4
              #                     467  temp_165_ele_ptr_of_b0_35_35 = GEP b0_35_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a5 with temp_165_ele_ptr_of_b0_35_35
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,344
              #                    free a5
              #                     469  temp_166_ele_ptr_of_b1_35_35 = GEP b1_35_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a6 with temp_166_ele_ptr_of_b1_35_35
    li      a6, 0
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,332
              #                    free a6
              #                     471  temp_167_ele_ptr_of_b2_35_35 = GEP b2_35_1:Array:f32:[Some(3_0)] [] 
              #                    occupy a7 with temp_167_ele_ptr_of_b2_35_35
    li      a7, 0
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,320
              #                    free a7
              #                     473  temp_168_ele_ptr_of_c0_35_35 = GEP c0_35_0:Array:f32:[Some(6_0)] [] 
              #                    occupy s1 with temp_168_ele_ptr_of_c0_35_35
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,296
              #                    free s1
              #                     475  temp_169_ele_ptr_of_c1_35_35 = GEP c1_35_0:Array:f32:[Some(3_0)] [] 
              #                    occupy s2 with temp_169_ele_ptr_of_c1_35_35
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,284
              #                    free s2
              #                    occupy s2 with temp_169_ele_ptr_of_c1_35_35
              #                    store to temp_169_ele_ptr_of_c1_35_35 in mem offset legal
    sd      s2,184(sp)
              #                    release s2 with temp_169_ele_ptr_of_c1_35_35
              #                     477  temp_170_ele_ptr_of_c2_35_35 = GEP c2_35_0:Array:f32:[Some(3_0)] [] 
              #                    occupy s2 with temp_170_ele_ptr_of_c2_35_35
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,272
              #                    free s2
              #                    occupy s2 with temp_170_ele_ptr_of_c2_35_35
              #                    store to temp_170_ele_ptr_of_c2_35_35 in mem offset legal
    sd      s2,176(sp)
              #                    release s2 with temp_170_ele_ptr_of_c2_35_35
              #                     479  temp_171_ret_of_mul_35_0 =  Call i32 mul_0(temp_162_ele_ptr_of_a0_35_35, temp_163_ele_ptr_of_a1_35_35, temp_164_ele_ptr_of_a2_35_35, temp_165_ele_ptr_of_b0_35_35, temp_166_ele_ptr_of_b1_35_35, temp_167_ele_ptr_of_b2_35_35, temp_168_ele_ptr_of_c0_35_35, temp_169_ele_ptr_of_c1_35_35, temp_170_ele_ptr_of_c2_35_35) 
              #                    saved register dumping to mem
              #                    occupy s2 with temp_170_ele_ptr_of_c2_35_35
              #                    load from temp_170_ele_ptr_of_c2_35_35 in mem
    ld      s2,176(sp)
              #                    store to c2_19 in mem offset legal
    sd      s2,-40(sp)
              #                    free s2
              #                    occupy s2 with temp_170_ele_ptr_of_c2_35_35
              #                    store to temp_170_ele_ptr_of_c2_35_35 in mem offset legal
    sd      s2,176(sp)
              #                    release s2 with temp_170_ele_ptr_of_c2_35_35
              #                    occupy s1 with temp_168_ele_ptr_of_c0_35_35
              #                    store to temp_168_ele_ptr_of_c0_35_35 in mem offset legal
    sd      s1,192(sp)
              #                    release s1 with temp_168_ele_ptr_of_c0_35_35
              #                    occupy a0 with temp_162_ele_ptr_of_a0_35_35
              #                    store to temp_162_ele_ptr_of_a0_35_35 in mem offset legal
    sd      a0,240(sp)
              #                    release a0 with temp_162_ele_ptr_of_a0_35_35
              #                    occupy a1 with temp_197_value_from_ptr_42_0
              #                    store to temp_197_value_from_ptr_42_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_197_value_from_ptr_42_0
              #                    occupy a2 with temp_198_cmp_42_0
              #                    store to temp_198_cmp_42_0 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_198_cmp_42_0
              #                    occupy a3 with temp_163_ele_ptr_of_a1_35_35
              #                    store to temp_163_ele_ptr_of_a1_35_35 in mem offset legal
    sd      a3,232(sp)
              #                    release a3 with temp_163_ele_ptr_of_a1_35_35
              #                    occupy a4 with temp_164_ele_ptr_of_a2_35_35
              #                    store to temp_164_ele_ptr_of_a2_35_35 in mem offset legal
    sd      a4,224(sp)
              #                    release a4 with temp_164_ele_ptr_of_a2_35_35
              #                    occupy a5 with temp_165_ele_ptr_of_b0_35_35
              #                    store to temp_165_ele_ptr_of_b0_35_35 in mem offset legal
    sd      a5,216(sp)
              #                    release a5 with temp_165_ele_ptr_of_b0_35_35
              #                    occupy a6 with temp_166_ele_ptr_of_b1_35_35
              #                    store to temp_166_ele_ptr_of_b1_35_35 in mem offset legal
    sd      a6,208(sp)
              #                    release a6 with temp_166_ele_ptr_of_b1_35_35
              #                    occupy a7 with temp_167_ele_ptr_of_b2_35_35
              #                    store to temp_167_ele_ptr_of_b2_35_35 in mem offset legal
    sd      a7,200(sp)
              #                    release a7 with temp_167_ele_ptr_of_b2_35_35
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_162_ele_ptr_of_a0_35_35_0
              #                    load from temp_162_ele_ptr_of_a0_35_35 in mem
    ld      a0,240(sp)
              #                    occupy a1 with _anonymous_of_temp_163_ele_ptr_of_a1_35_35_0
              #                    load from temp_163_ele_ptr_of_a1_35_35 in mem
    ld      a1,232(sp)
              #                    occupy a2 with _anonymous_of_temp_164_ele_ptr_of_a2_35_35_0
              #                    load from temp_164_ele_ptr_of_a2_35_35 in mem
    ld      a2,224(sp)
              #                    occupy a3 with _anonymous_of_temp_165_ele_ptr_of_b0_35_35_0
              #                    load from temp_165_ele_ptr_of_b0_35_35 in mem
    ld      a3,216(sp)
              #                    occupy a4 with _anonymous_of_temp_166_ele_ptr_of_b1_35_35_0
              #                    load from temp_166_ele_ptr_of_b1_35_35 in mem
    ld      a4,208(sp)
              #                    occupy a5 with _anonymous_of_temp_167_ele_ptr_of_b2_35_35_0
              #                    load from temp_167_ele_ptr_of_b2_35_35 in mem
    ld      a5,200(sp)
              #                    occupy a6 with _anonymous_of_temp_168_ele_ptr_of_c0_35_35_0
              #                    load from temp_168_ele_ptr_of_c0_35_35 in mem
    ld      a6,192(sp)
              #                    occupy a7 with _anonymous_of_temp_169_ele_ptr_of_c1_35_35_0
              #                    load from temp_169_ele_ptr_of_c1_35_35 in mem
    ld      a7,184(sp)
              #                    arg load ended


    call    mul
              #                     763  untrack temp_164_ele_ptr_of_a2_35_35 
              #                     762  untrack temp_165_ele_ptr_of_b0_35_35 
              #                     761  untrack temp_170_ele_ptr_of_c2_35_35 
              #                     760  untrack temp_163_ele_ptr_of_a1_35_35 
              #                     758  untrack temp_167_ele_ptr_of_b2_35_35 
              #                     757  untrack temp_166_ele_ptr_of_b1_35_35 
              #                     756  untrack temp_168_ele_ptr_of_c0_35_35 
              #                     755  untrack temp_169_ele_ptr_of_c1_35_35 
              #                     754  untrack temp_162_ele_ptr_of_a0_35_35 
              #                     612  mu a2_35_1:479 
              #                     613  mu c1_35_0:479 
              #                     614  mu b2_35_1:479 
              #                     615  mu a1_35_1:479 
              #                     616  mu c0_35_0:479 
              #                     617  mu b0_35_1:479 
              #                     618  mu c2_35_0:479 
              #                     619  mu a0_35_1:479 
              #                     620  mu b1_35_1:479 
              #                     621  c1_35_1 = chi c1_35_0:479 
              #                     622  b0_35_3 = chi b0_35_1:479 
              #                     623  a0_35_3 = chi a0_35_1:479 
              #                     624  a2_35_3 = chi a2_35_1:479 
              #                     625  a1_35_3 = chi a1_35_1:479 
              #                     626  c0_35_1 = chi c0_35_0:479 
              #                     627  c2_35_1 = chi c2_35_0:479 
              #                     628  b2_35_3 = chi b2_35_1:479 
              #                     629  b1_35_3 = chi b1_35_1:479 
              #                     480  (nop) 
              #                     482   
              #                     578  temp_199_value_from_ptr_54_0 = load *N_0:ptr->i32 
              #                    occupy a1 with *N_0
              #                       load label N as ptr to reg
    la      a1, N
              #                    occupy reg a1 with *N_0
              #                    occupy a2 with temp_199_value_from_ptr_54_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     579  mu N_0_2:578 
              #                     648  i_35_5 = i32 temp_171_ret_of_mul_35_0 
              #                    occupy a0 with temp_171_ret_of_mul_35_0
              #                    occupy a3 with i_35_5
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                     759  untrack temp_171_ret_of_mul_35_0 
              #                    occupy a0 with temp_171_ret_of_mul_35_0
              #                    release a0 with temp_171_ret_of_mul_35_0
              #                          jump label: while.head_55 
    j       .while.head_55
              #                    regtab     a2:Freed { symidx: temp_199_value_from_ptr_54_0, tracked: true } |     a3:Freed { symidx: i_35_5, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     582  label while.head_55: 
.while.head_55:
              #                     581  temp_200_cmp_54_0 = icmp i32 Slt i_35_5, temp_199_value_from_ptr_54_0 
              #                    occupy a3 with i_35_5
              #                    occupy a2 with temp_199_value_from_ptr_54_0
              #                    occupy a0 with temp_200_cmp_54_0
    slt     a0,a3,a2
              #                    free a3
              #                    free a2
              #                    free a0
              #                     585  br i1 temp_200_cmp_54_0, label while.body_55, label while.exit_55 
              #                    occupy a0 with temp_200_cmp_54_0
              #                    free a0
              #                    occupy a0 with temp_200_cmp_54_0
    bnez    a0, .while.body_55
              #                    free a0
    j       .while.exit_55
              #                    regtab     a0:Freed { symidx: temp_200_cmp_54_0, tracked: true } |     a2:Freed { symidx: temp_199_value_from_ptr_54_0, tracked: true } |     a3:Freed { symidx: i_35_5, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     583  label while.body_55: 
.while.body_55:
              #                     518  temp_180_ptr_of_c0_35_56 = GEP c0_35_1:Array:f32:[Some(6_0)] [Some(i_35_5)] 
              #                    occupy a1 with temp_180_ptr_of_c0_35_56
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_35_5
    mv      a4, a3
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,296
              #                    free a1
              #                     520  temp_181_ele_of_c0_35_56_0 = load temp_180_ptr_of_c0_35_56:ptr->f32 
              #                    occupy a1 with temp_180_ptr_of_c0_35_56
              #                    occupy fa0 with temp_181_ele_of_c0_35_56_0
    flw     fa0,0(a1)
              #                    free fa0
              #                    free a1
              #                     521  mu c0_35_1:520 
              #                     523  temp_182__56_0 = fptosi f32 temp_181_ele_of_c0_35_56_0 to i32 
              #                    occupy fa0 with temp_181_ele_of_c0_35_56_0
              #                    occupy a5 with temp_182__56_0
    fcvt.w.s a5,fa0,rtz
              #                    free fa0
              #                    free a5
              #                     524  (nop) 
              #                     525   Call void putint_0(temp_182__56_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_200_cmp_54_0
              #                    store to temp_200_cmp_54_0 in mem offset legal
    sb      a0,7(sp)
              #                    release a0 with temp_200_cmp_54_0
              #                    occupy a1 with temp_180_ptr_of_c0_35_56
              #                    store to temp_180_ptr_of_c0_35_56 in mem offset legal
    sd      a1,96(sp)
              #                    release a1 with temp_180_ptr_of_c0_35_56
              #                    occupy a2 with temp_199_value_from_ptr_54_0
              #                    store to temp_199_value_from_ptr_54_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_199_value_from_ptr_54_0
              #                    occupy a3 with i_35_5
              #                    store to i_35_5 in mem offset legal
    sw      a3,260(sp)
              #                    release a3 with i_35_5
              #                    occupy a5 with temp_182__56_0
              #                    store to temp_182__56_0 in mem offset legal
    sw      a5,88(sp)
              #                    release a5 with temp_182__56_0
              #                    occupy fa0 with temp_181_ele_of_c0_35_56_0
              #                    store to temp_181_ele_of_c0_35_56_0 in mem offset legal
    fsw     fa0,92(sp)
              #                    release fa0 with temp_181_ele_of_c0_35_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_182__56_0_0
              #                    load from temp_182__56_0 in mem


    lw      a0,88(sp)
              #                    arg load ended


    call    putint
              #                     527  temp_183_arithop_56_0 = Add i32 i_35_5, 1_0 
              #                    occupy a0 with i_35_5
              #                    load from i_35_5 in mem


    lw      a0,260(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_183_arithop_56_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     528  (nop) 
              #                     649  i_35_5 = i32 temp_183_arithop_56_0 
              #                    occupy a2 with temp_183_arithop_56_0
              #                    occupy a0 with i_35_5
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_55 
              #                    occupy a0 with i_35_5
              #                    store to i_35_5 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with i_35_5
              #                    occupy a3 with i_35_5
              #                    load from i_35_5 in mem


    lw      a3,260(sp)
              #                    occupy a2 with temp_183_arithop_56_0
              #                    store to temp_183_arithop_56_0 in mem offset legal
    sw      a2,84(sp)
              #                    release a2 with temp_183_arithop_56_0
              #                    occupy a2 with temp_199_value_from_ptr_54_0
              #                    load from temp_199_value_from_ptr_54_0 in mem


    lw      a2,8(sp)
    j       .while.head_55
              #                    regtab     a0:Freed { symidx: temp_200_cmp_54_0, tracked: true } |     a2:Freed { symidx: temp_199_value_from_ptr_54_0, tracked: true } |     a3:Freed { symidx: i_35_5, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     584  label while.exit_55: 
.while.exit_55:
              #                     764  untrack i_35_5 
              #                    occupy a3 with i_35_5
              #                    release a3 with i_35_5
              #                     483  (nop) 
              #                     484  (nop) 
              #                     485   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_200_cmp_54_0
              #                    store to temp_200_cmp_54_0 in mem offset legal
    sb      a0,7(sp)
              #                    release a0 with temp_200_cmp_54_0
              #                    occupy a2 with temp_199_value_from_ptr_54_0
              #                    store to temp_199_value_from_ptr_54_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_199_value_from_ptr_54_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     587  (nop) 
              #                     588  mu N_0_2:587 
              #                     650  i_35_8 = i32 0_0 
              #                    occupy a0 with i_35_8
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_64 
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: i_35_8, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     591  label while.head_64: 
.while.head_64:
              #                     590  temp_202_cmp_63_0 = icmp i32 Slt i_35_8, temp_199_value_from_ptr_54_0 
              #                    occupy a0 with i_35_8
              #                    occupy a1 with temp_199_value_from_ptr_54_0
              #                    load from temp_199_value_from_ptr_54_0 in mem


    lw      a1,8(sp)
              #                    occupy a2 with temp_202_cmp_63_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     594  br i1 temp_202_cmp_63_0, label while.body_64, label while.exit_64 
              #                    occupy a2 with temp_202_cmp_63_0
              #                    free a2
              #                    occupy a2 with temp_202_cmp_63_0
    bnez    a2, .while.body_64
              #                    free a2
    j       .while.exit_64
              #                    regtab     a0:Freed { symidx: i_35_8, tracked: true } |     a1:Freed { symidx: temp_199_value_from_ptr_54_0, tracked: true } |     a2:Freed { symidx: temp_202_cmp_63_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     592  label while.body_64: 
.while.body_64:
              #                     506  temp_176_ptr_of_c1_35_65 = GEP c1_35_1:Array:f32:[Some(3_0)] [Some(i_35_8)] 
              #                    occupy a3 with temp_176_ptr_of_c1_35_65
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_35_8
    mv      a4, a0
              #                    free a0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,284
              #                    free a3
              #                     508  temp_177_ele_of_c1_35_65_0 = load temp_176_ptr_of_c1_35_65:ptr->f32 
              #                    occupy a3 with temp_176_ptr_of_c1_35_65
              #                    occupy fa0 with temp_177_ele_of_c1_35_65_0
    flw     fa0,0(a3)
              #                    free fa0
              #                    free a3
              #                     509  mu c1_35_1:508 
              #                     511  temp_178__65_0 = fptosi f32 temp_177_ele_of_c1_35_65_0 to i32 
              #                    occupy fa0 with temp_177_ele_of_c1_35_65_0
              #                    occupy a5 with temp_178__65_0
    fcvt.w.s a5,fa0,rtz
              #                    free fa0
              #                    free a5
              #                     512  (nop) 
              #                     513   Call void putint_0(temp_178__65_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_35_8
              #                    store to i_35_8 in mem offset legal
    sw      a0,256(sp)
              #                    release a0 with i_35_8
              #                    occupy a1 with temp_199_value_from_ptr_54_0
              #                    store to temp_199_value_from_ptr_54_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_199_value_from_ptr_54_0
              #                    occupy a2 with temp_202_cmp_63_0
              #                    store to temp_202_cmp_63_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_202_cmp_63_0
              #                    occupy a3 with temp_176_ptr_of_c1_35_65
              #                    store to temp_176_ptr_of_c1_35_65 in mem offset legal
    sd      a3,120(sp)
              #                    release a3 with temp_176_ptr_of_c1_35_65
              #                    occupy a5 with temp_178__65_0
              #                    store to temp_178__65_0 in mem offset legal
    sw      a5,112(sp)
              #                    release a5 with temp_178__65_0
              #                    occupy fa0 with temp_177_ele_of_c1_35_65_0
              #                    store to temp_177_ele_of_c1_35_65_0 in mem offset legal
    fsw     fa0,116(sp)
              #                    release fa0 with temp_177_ele_of_c1_35_65_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_178__65_0_0
              #                    load from temp_178__65_0 in mem


    lw      a0,112(sp)
              #                    arg load ended


    call    putint
              #                     515  temp_179_arithop_65_0 = Add i32 i_35_8, 1_0 
              #                    occupy a0 with i_35_8
              #                    load from i_35_8 in mem


    lw      a0,256(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_179_arithop_65_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     516  (nop) 
              #                     651  i_35_8 = i32 temp_179_arithop_65_0 
              #                    occupy a2 with temp_179_arithop_65_0
              #                    occupy a0 with i_35_8
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_64 
              #                    occupy a2 with temp_179_arithop_65_0
              #                    store to temp_179_arithop_65_0 in mem offset legal
    sw      a2,108(sp)
              #                    release a2 with temp_179_arithop_65_0
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: i_35_8, tracked: true } |     a1:Freed { symidx: temp_199_value_from_ptr_54_0, tracked: true } |     a2:Freed { symidx: temp_202_cmp_63_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     593  label while.exit_64: 
.while.exit_64:
              #                     765  untrack i_35_8 
              #                    occupy a0 with i_35_8
              #                    release a0 with i_35_8
              #                     486  (nop) 
              #                     487  (nop) 
              #                     488   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_199_value_from_ptr_54_0
              #                    store to temp_199_value_from_ptr_54_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_199_value_from_ptr_54_0
              #                    occupy a2 with temp_202_cmp_63_0
              #                    store to temp_202_cmp_63_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_202_cmp_63_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     596  (nop) 
              #                     597  mu N_0_2:596 
              #                     652  i_35_11 = i32 0_0 
              #                    occupy a0 with i_35_11
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_73 
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: i_35_11, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     600  label while.head_73: 
.while.head_73:
              #                     599  temp_204_cmp_72_0 = icmp i32 Slt i_35_11, temp_199_value_from_ptr_54_0 
              #                    occupy a0 with i_35_11
              #                    occupy a1 with temp_199_value_from_ptr_54_0
              #                    load from temp_199_value_from_ptr_54_0 in mem


    lw      a1,8(sp)
              #                    occupy a2 with temp_204_cmp_72_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     603  br i1 temp_204_cmp_72_0, label while.body_73, label while.exit_73 
              #                    occupy a2 with temp_204_cmp_72_0
              #                    free a2
              #                    occupy a2 with temp_204_cmp_72_0
    bnez    a2, .while.body_73
              #                    free a2
    j       .while.exit_73
              #                    regtab     a0:Freed { symidx: i_35_11, tracked: true } |     a1:Freed { symidx: temp_199_value_from_ptr_54_0, tracked: true } |     a2:Freed { symidx: temp_204_cmp_72_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     601  label while.body_73: 
.while.body_73:
              #                     494  temp_172_ptr_of_c2_35_74 = GEP c2_35_1:Array:f32:[Some(3_0)] [Some(i_35_11)] 
              #                    occupy a3 with temp_172_ptr_of_c2_35_74
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_35_11
    mv      a4, a0
              #                    free a0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,272
              #                    free a3
              #                     496  temp_173_ele_of_c2_35_74_0 = load temp_172_ptr_of_c2_35_74:ptr->f32 
              #                    occupy a3 with temp_172_ptr_of_c2_35_74
              #                    occupy fa0 with temp_173_ele_of_c2_35_74_0
    flw     fa0,0(a3)
              #                    free fa0
              #                    free a3
              #                     497  mu c2_35_1:496 
              #                     499  temp_174__74_0 = fptosi f32 temp_173_ele_of_c2_35_74_0 to i32 
              #                    occupy fa0 with temp_173_ele_of_c2_35_74_0
              #                    occupy a5 with temp_174__74_0
    fcvt.w.s a5,fa0,rtz
              #                    free fa0
              #                    free a5
              #                     500  (nop) 
              #                     501   Call void putint_0(temp_174__74_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_35_11
              #                    store to i_35_11 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with i_35_11
              #                    occupy a1 with temp_199_value_from_ptr_54_0
              #                    store to temp_199_value_from_ptr_54_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_199_value_from_ptr_54_0
              #                    occupy a2 with temp_204_cmp_72_0
              #                    store to temp_204_cmp_72_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_204_cmp_72_0
              #                    occupy a3 with temp_172_ptr_of_c2_35_74
              #                    store to temp_172_ptr_of_c2_35_74 in mem offset legal
    sd      a3,144(sp)
              #                    release a3 with temp_172_ptr_of_c2_35_74
              #                    occupy a5 with temp_174__74_0
              #                    store to temp_174__74_0 in mem offset legal
    sw      a5,136(sp)
              #                    release a5 with temp_174__74_0
              #                    occupy fa0 with temp_173_ele_of_c2_35_74_0
              #                    store to temp_173_ele_of_c2_35_74_0 in mem offset legal
    fsw     fa0,140(sp)
              #                    release fa0 with temp_173_ele_of_c2_35_74_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_174__74_0_0
              #                    load from temp_174__74_0 in mem


    lw      a0,136(sp)
              #                    arg load ended


    call    putint
              #                     503  temp_175_arithop_74_0 = Add i32 i_35_11, 1_0 
              #                    occupy a0 with i_35_11
              #                    load from i_35_11 in mem


    lw      a0,252(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_175_arithop_74_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     504  (nop) 
              #                     653  i_35_11 = i32 temp_175_arithop_74_0 
              #                    occupy a2 with temp_175_arithop_74_0
              #                    occupy a0 with i_35_11
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_73 
              #                    occupy a2 with temp_175_arithop_74_0
              #                    store to temp_175_arithop_74_0 in mem offset legal
    sw      a2,132(sp)
              #                    release a2 with temp_175_arithop_74_0
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: i_35_11, tracked: true } |     a1:Freed { symidx: temp_199_value_from_ptr_54_0, tracked: true } |     a2:Freed { symidx: temp_204_cmp_72_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     602  label while.exit_73: 
.while.exit_73:
              #                     767  untrack i_35_11 
              #                    occupy a0 with i_35_11
              #                    release a0 with i_35_11
              #                     766  untrack temp_199_value_from_ptr_54_0 
              #                    occupy a1 with temp_199_value_from_ptr_54_0
              #                    release a1 with temp_199_value_from_ptr_54_0
              #                     489  (nop) 
              #                     490   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_204_cmp_72_0
              #                    store to temp_204_cmp_72_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_204_cmp_72_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     630  mu L_0_2:492 
              #                     631  mu M_0_2:492 
              #                     632  mu N_0_2:492 
              #                     492  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,400(sp)
              #                    load from s0_main_0 in mem
    ld      s0,392(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,408
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl N
              #                     17   global i32 N_0 
    .type N,@object
N:
    .word 0
    .align 4
    .globl L
              #                     16   global i32 L_0 
    .type L,@object
L:
    .word 0
    .align 4
    .globl M
              #                     15   global i32 M_0 
    .type M,@object
M:
    .word 0
