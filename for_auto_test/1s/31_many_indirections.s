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
              #                     24   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 680|s0_main:8 at 672|i _s20 _i1:4 at 668|none:4 at 664|temp_0_ptr_of_*array_0:8 at 656|temp_1_ele_of_*array_0 _s20 _i0:4 at 652|none:4 at 648|temp_2_ptr_of_*array_0:8 at 640|temp_3_ele_of_*array_0 _s20 _i0:4 at 636|none:4 at 632|temp_4_ptr_of_*array_0:8 at 624|temp_5_ele_of_*array_0 _s20 _i0:4 at 620|none:4 at 616|temp_6_ptr_of_*array_0:8 at 608|temp_7_ele_of_*array_0 _s20 _i0:4 at 604|none:4 at 600|temp_8_ptr_of_*array_0:8 at 592|temp_9_ele_of_*array_0 _s20 _i0:4 at 588|none:4 at 584|temp_10_ptr_of_*array_0:8 at 576|temp_11_ele_of_*array_0 _s20 _i0:4 at 572|none:4 at 568|temp_12_ptr_of_*array_0:8 at 560|temp_13_ele_of_*array_0 _s20 _i0:4 at 556|none:4 at 552|temp_14_ptr_of_*array_0:8 at 544|temp_15_ele_of_*array_0 _s20 _i0:4 at 540|none:4 at 536|temp_16_ptr_of_*array_0:8 at 528|temp_17_ele_of_*array_0 _s20 _i0:4 at 524|none:4 at 520|temp_18_ptr_of_*array_0:8 at 512|temp_19_ele_of_*array_0 _s20 _i0:4 at 508|none:4 at 504|temp_20_ptr_of_*array_0:8 at 496|temp_21_ele_of_*array_0 _s20 _i0:4 at 492|none:4 at 488|temp_22_ptr_of_*array_0:8 at 480|temp_23_ele_of_*array_0 _s20 _i0:4 at 476|none:4 at 472|temp_24_ptr_of_*array_0:8 at 464|temp_25_ele_of_*array_0 _s20 _i0:4 at 460|none:4 at 456|temp_26_ptr_of_*array_0:8 at 448|temp_27_ele_of_*array_0 _s20 _i0:4 at 444|none:4 at 440|temp_28_ptr_of_*array_0:8 at 432|temp_29_ele_of_*array_0 _s20 _i0:4 at 428|none:4 at 424|temp_30_ptr_of_*array_0:8 at 416|temp_31_ele_of_*array_0 _s20 _i0:4 at 412|none:4 at 408|temp_32_ptr_of_*array_0:8 at 400|temp_33_ele_of_*array_0 _s20 _i0:4 at 396|none:4 at 392|temp_34_ptr_of_*array_0:8 at 384|temp_35_ele_of_*array_0 _s20 _i0:4 at 380|none:4 at 376|temp_36_ptr_of_*array_0:8 at 368|temp_37_ele_of_*array_0 _s20 _i0:4 at 364|none:4 at 360|temp_38_ptr_of_*array_0:8 at 352|temp_39_ele_of_*array_0 _s20 _i0:4 at 348|none:4 at 344|temp_40_ptr_of_*array_0:8 at 336|temp_41_ele_of_*array_0 _s20 _i0:4 at 332|none:4 at 328|temp_42_ptr_of_*array_0:8 at 320|temp_43_ele_of_*array_0 _s20 _i0:4 at 316|none:4 at 312|temp_44_ptr_of_*array_0:8 at 304|temp_45_ele_of_*array_0 _s20 _i0:4 at 300|none:4 at 296|temp_46_ptr_of_*array_0:8 at 288|temp_47_ele_of_*array_0 _s20 _i0:4 at 284|none:4 at 280|temp_48_ptr_of_*array_0:8 at 272|temp_49_ele_of_*array_0 _s20 _i0:4 at 268|none:4 at 264|temp_50_ptr_of_*array_0:8 at 256|temp_51_ele_of_*array_0 _s20 _i0:4 at 252|none:4 at 248|temp_52_ptr_of_*array_0:8 at 240|temp_53_ele_of_*array_0 _s20 _i0:4 at 236|none:4 at 232|temp_54_ptr_of_*array_0:8 at 224|temp_55_ele_of_*array_0 _s20 _i0:4 at 220|none:4 at 216|temp_56_ptr_of_*array_0:8 at 208|temp_57_ele_of_*array_0 _s20 _i0:4 at 204|none:4 at 200|temp_58_ptr_of_*array_0:8 at 192|temp_59_ele_of_*array_0 _s20 _i0:4 at 188|none:4 at 184|temp_60_ptr_of_*array_0:8 at 176|temp_61_ele_of_*array_0 _s20 _i0:4 at 172|none:4 at 168|temp_62_ptr_of_*array_0:8 at 160|temp_63_ele_of_*array_0 _s20 _i0:4 at 156|none:4 at 152|temp_64_ptr_of_*array_0:8 at 144|temp_65_ele_of_*array_0 _s20 _i0:4 at 140|none:4 at 136|temp_66_ptr_of_*array_0:8 at 128|temp_67_ele_of_*array_0 _s20 _i0:4 at 124|none:4 at 120|temp_68_ptr_of_*array_0:8 at 112|temp_69_ele_of_*array_0 _s20 _i0:4 at 108|none:4 at 104|temp_70_ptr_of_*array_0:8 at 96|temp_71_ele_of_*array_0 _s20 _i0:4 at 92|none:4 at 88|temp_72_ptr_of_*array_0:8 at 80|temp_73_ele_of_*array_0 _s20 _i0:4 at 76|none:4 at 72|temp_74_ptr_of_*array_0:8 at 64|temp_75_ele_of_*array_0 _s20 _i0:4 at 60|none:4 at 56|temp_76_ptr_of_*array_0:8 at 48|temp_77_ele_of_*array_0 _s20 _i0:4 at 44|none:4 at 40|temp_78_ptr_of_*array_0:8 at 32|temp_79_ele_of_*array_0 _s20 _i0:4 at 28|temp_80_arithop _s20 _i0:4 at 24|j _s24 _i1:4 at 20|temp_81_arithop _s24 _i0:4 at 16|temp_82_ptr_of_*array_0:8 at 8|temp_83_arithop _s28 _i0:4 at 4|temp_84_cmp _s22 _i0:1 at 3|temp_85_cmp _s26 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-688
              #                    store to ra_main_0 in mem offset legal
    sd      ra,680(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,672(sp)
    addi    s0,sp,688
              #                     261  array_0_1 = chi array_0_0:24 
              #                     26   alloc i32 [i_20] 
              #                     28   alloc i32 [sum_20] 
              #                     29   alloc ptr->i32 [temp_0_ptr_of_*array_0_20] 
              #                     31   alloc i32 [temp_1_ele_of_*array_0_20] 
              #                     34   alloc ptr->i32 [temp_2_ptr_of_*array_0_20] 
              #                     36   alloc i32 [temp_3_ele_of_*array_0_20] 
              #                     39   alloc ptr->i32 [temp_4_ptr_of_*array_0_20] 
              #                     41   alloc i32 [temp_5_ele_of_*array_0_20] 
              #                     44   alloc ptr->i32 [temp_6_ptr_of_*array_0_20] 
              #                     46   alloc i32 [temp_7_ele_of_*array_0_20] 
              #                     49   alloc ptr->i32 [temp_8_ptr_of_*array_0_20] 
              #                     51   alloc i32 [temp_9_ele_of_*array_0_20] 
              #                     54   alloc ptr->i32 [temp_10_ptr_of_*array_0_20] 
              #                     56   alloc i32 [temp_11_ele_of_*array_0_20] 
              #                     59   alloc ptr->i32 [temp_12_ptr_of_*array_0_20] 
              #                     61   alloc i32 [temp_13_ele_of_*array_0_20] 
              #                     64   alloc ptr->i32 [temp_14_ptr_of_*array_0_20] 
              #                     66   alloc i32 [temp_15_ele_of_*array_0_20] 
              #                     69   alloc ptr->i32 [temp_16_ptr_of_*array_0_20] 
              #                     71   alloc i32 [temp_17_ele_of_*array_0_20] 
              #                     74   alloc ptr->i32 [temp_18_ptr_of_*array_0_20] 
              #                     76   alloc i32 [temp_19_ele_of_*array_0_20] 
              #                     79   alloc ptr->i32 [temp_20_ptr_of_*array_0_20] 
              #                     81   alloc i32 [temp_21_ele_of_*array_0_20] 
              #                     84   alloc ptr->i32 [temp_22_ptr_of_*array_0_20] 
              #                     86   alloc i32 [temp_23_ele_of_*array_0_20] 
              #                     89   alloc ptr->i32 [temp_24_ptr_of_*array_0_20] 
              #                     91   alloc i32 [temp_25_ele_of_*array_0_20] 
              #                     94   alloc ptr->i32 [temp_26_ptr_of_*array_0_20] 
              #                     96   alloc i32 [temp_27_ele_of_*array_0_20] 
              #                     99   alloc ptr->i32 [temp_28_ptr_of_*array_0_20] 
              #                     101  alloc i32 [temp_29_ele_of_*array_0_20] 
              #                     104  alloc ptr->i32 [temp_30_ptr_of_*array_0_20] 
              #                     106  alloc i32 [temp_31_ele_of_*array_0_20] 
              #                     109  alloc ptr->i32 [temp_32_ptr_of_*array_0_20] 
              #                     111  alloc i32 [temp_33_ele_of_*array_0_20] 
              #                     114  alloc ptr->i32 [temp_34_ptr_of_*array_0_20] 
              #                     116  alloc i32 [temp_35_ele_of_*array_0_20] 
              #                     119  alloc ptr->i32 [temp_36_ptr_of_*array_0_20] 
              #                     121  alloc i32 [temp_37_ele_of_*array_0_20] 
              #                     124  alloc ptr->i32 [temp_38_ptr_of_*array_0_20] 
              #                     126  alloc i32 [temp_39_ele_of_*array_0_20] 
              #                     129  alloc ptr->i32 [temp_40_ptr_of_*array_0_20] 
              #                     131  alloc i32 [temp_41_ele_of_*array_0_20] 
              #                     134  alloc ptr->i32 [temp_42_ptr_of_*array_0_20] 
              #                     136  alloc i32 [temp_43_ele_of_*array_0_20] 
              #                     139  alloc ptr->i32 [temp_44_ptr_of_*array_0_20] 
              #                     141  alloc i32 [temp_45_ele_of_*array_0_20] 
              #                     144  alloc ptr->i32 [temp_46_ptr_of_*array_0_20] 
              #                     146  alloc i32 [temp_47_ele_of_*array_0_20] 
              #                     149  alloc ptr->i32 [temp_48_ptr_of_*array_0_20] 
              #                     151  alloc i32 [temp_49_ele_of_*array_0_20] 
              #                     154  alloc ptr->i32 [temp_50_ptr_of_*array_0_20] 
              #                     156  alloc i32 [temp_51_ele_of_*array_0_20] 
              #                     159  alloc ptr->i32 [temp_52_ptr_of_*array_0_20] 
              #                     161  alloc i32 [temp_53_ele_of_*array_0_20] 
              #                     164  alloc ptr->i32 [temp_54_ptr_of_*array_0_20] 
              #                     166  alloc i32 [temp_55_ele_of_*array_0_20] 
              #                     169  alloc ptr->i32 [temp_56_ptr_of_*array_0_20] 
              #                     171  alloc i32 [temp_57_ele_of_*array_0_20] 
              #                     174  alloc ptr->i32 [temp_58_ptr_of_*array_0_20] 
              #                     176  alloc i32 [temp_59_ele_of_*array_0_20] 
              #                     179  alloc ptr->i32 [temp_60_ptr_of_*array_0_20] 
              #                     181  alloc i32 [temp_61_ele_of_*array_0_20] 
              #                     184  alloc ptr->i32 [temp_62_ptr_of_*array_0_20] 
              #                     186  alloc i32 [temp_63_ele_of_*array_0_20] 
              #                     189  alloc ptr->i32 [temp_64_ptr_of_*array_0_20] 
              #                     191  alloc i32 [temp_65_ele_of_*array_0_20] 
              #                     194  alloc ptr->i32 [temp_66_ptr_of_*array_0_20] 
              #                     196  alloc i32 [temp_67_ele_of_*array_0_20] 
              #                     199  alloc ptr->i32 [temp_68_ptr_of_*array_0_20] 
              #                     201  alloc i32 [temp_69_ele_of_*array_0_20] 
              #                     204  alloc ptr->i32 [temp_70_ptr_of_*array_0_20] 
              #                     206  alloc i32 [temp_71_ele_of_*array_0_20] 
              #                     209  alloc ptr->i32 [temp_72_ptr_of_*array_0_20] 
              #                     211  alloc i32 [temp_73_ele_of_*array_0_20] 
              #                     214  alloc ptr->i32 [temp_74_ptr_of_*array_0_20] 
              #                     216  alloc i32 [temp_75_ele_of_*array_0_20] 
              #                     219  alloc ptr->i32 [temp_76_ptr_of_*array_0_20] 
              #                     221  alloc i32 [temp_77_ele_of_*array_0_20] 
              #                     224  alloc ptr->i32 [temp_78_ptr_of_*array_0_20] 
              #                     226  alloc i32 [temp_79_ele_of_*array_0_20] 
              #                     229  alloc i32 [temp_80_arithop_20] 
              #                     236  alloc i32 [j_24] 
              #                     237  alloc i32 [temp_81_arithop_24] 
              #                     240  alloc ptr->i32 [temp_82_ptr_of_*array_0_28] 
              #                     244  alloc i32 [temp_83_arithop_28] 
              #                     247  alloc i1 [temp_84_cmp_22] 
              #                     255  alloc i1 [temp_85_cmp_26] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     25   (nop) 
              #                     27   (nop) 
              #                     267  i_20_1 = i32 0_0 
              #                    occupy a0 with i_20_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: i_20_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     249  label while.head_23: 
.while.head_23:
              #                     248  temp_84_cmp_22_0 = icmp i32 Slt i_20_1, 20_0 
              #                    occupy a0 with i_20_1
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a2 with temp_84_cmp_22_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     252  br i1 temp_84_cmp_22_0, label while.body_23, label while.exit_23 
              #                    occupy a2 with temp_84_cmp_22_0
              #                    free a2
              #                    occupy a2 with temp_84_cmp_22_0
    bnez    a2, .while.body_23
              #                    free a2
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: i_20_1, tracked: true } |     a2:Freed { symidx: temp_84_cmp_22_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     250  label while.body_23: 
.while.body_23:
              #                     235  (nop) 
              #                     268  j_24_1 = i32 0_0 
              #                    occupy a1 with j_24_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_27 
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: i_20_1, tracked: true } |     a1:Freed { symidx: j_24_1, tracked: true } |     a2:Freed { symidx: temp_84_cmp_22_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     257  label while.head_27: 
.while.head_27:
              #                     256  temp_85_cmp_26_0 = icmp i32 Slt j_24_1, 100_0 
              #                    occupy a1 with j_24_1
              #                    occupy a3 with 100_0
    li      a3, 100
              #                    occupy a4 with temp_85_cmp_26_0
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                     260  br i1 temp_85_cmp_26_0, label while.body_27, label while.exit_27 
              #                    occupy a4 with temp_85_cmp_26_0
              #                    free a4
              #                    occupy a4 with temp_85_cmp_26_0
    bnez    a4, .while.body_27
              #                    free a4
    j       .while.exit_27
              #                    regtab     a0:Freed { symidx: i_20_1, tracked: true } |     a1:Freed { symidx: j_24_1, tracked: true } |     a2:Freed { symidx: temp_84_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_85_cmp_26_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     258  label while.body_27: 
.while.body_27:
              #                     241  temp_82_ptr_of_*array_0_28 = GEP *array_0:ptr->Array:i32:[Some(100_0)] [Some(i_20_1), Some(j_24_1)] 
              #                    occupy a3 with temp_82_ptr_of_*array_0_28
    li      a3, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with 100_0
    li      a6, 100
              #                    occupy a0 with i_20_1
    mul     a5,a6,a0
              #                    free a6
              #                    free a0
    add     a3,a3,a5
              #                    free a5
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with j_24_1
    mv      a7, a1
              #                    free a1
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy s1 with *array_0
              #                       load label array as ptr to reg
    la      s1, array
              #                    occupy reg s1 with *array_0
    add     a3,a3,s1
              #                    free s1
              #                    free a3
              #                     242  store j_24_1:i32 temp_82_ptr_of_*array_0_28:ptr->i32 
              #                    occupy a3 with temp_82_ptr_of_*array_0_28
              #                    occupy a1 with j_24_1
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                     243  array_0_4 = chi array_0_3:242 
              #                     245  temp_83_arithop_28_0 = Add i32 j_24_1, 1_0 
              #                    occupy a1 with j_24_1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_83_arithop_28_0
    ADDW    s3,a1,s2
              #                    free a1
              #                    free s2
              #                    free s3
              #                     246  (nop) 
              #                     269  j_24_1 = i32 temp_83_arithop_28_0 
              #                    occupy s3 with temp_83_arithop_28_0
              #                    occupy a1 with j_24_1
    mv      a1, s3
              #                    free s3
              #                    free a1
              #                          jump label: while.head_27 
              #                    occupy s3 with temp_83_arithop_28_0
              #                    store to temp_83_arithop_28_0 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_83_arithop_28_0
              #                    occupy a3 with temp_82_ptr_of_*array_0_28
              #                    store to temp_82_ptr_of_*array_0_28 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_82_ptr_of_*array_0_28
              #                    occupy a4 with temp_85_cmp_26_0
              #                    store to temp_85_cmp_26_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_85_cmp_26_0
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: i_20_1, tracked: true } |     a1:Freed { symidx: j_24_1, tracked: true } |     a2:Freed { symidx: temp_84_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_85_cmp_26_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     259  label while.exit_27: 
.while.exit_27:
              #                     238  temp_81_arithop_24_0 = Add i32 i_20_1, 1_0 
              #                    occupy a0 with i_20_1
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_81_arithop_24_0
    ADDW    a5,a0,a3
              #                    free a0
              #                    free a3
              #                    free a5
              #                     239  (nop) 
              #                     270  i_20_1 = i32 temp_81_arithop_24_0 
              #                    occupy a5 with temp_81_arithop_24_0
              #                    occupy a0 with i_20_1
    mv      a0, a5
              #                    free a5
              #                    free a0
              #                          jump label: while.head_23 
              #                    occupy a2 with temp_84_cmp_22_0
              #                    store to temp_84_cmp_22_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_84_cmp_22_0
              #                    occupy a5 with temp_81_arithop_24_0
              #                    store to temp_81_arithop_24_0 in mem offset legal
    sw      a5,16(sp)
              #                    release a5 with temp_81_arithop_24_0
              #                    occupy a4 with temp_85_cmp_26_0
              #                    store to temp_85_cmp_26_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_85_cmp_26_0
              #                    occupy a1 with j_24_1
              #                    store to j_24_1 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with j_24_1
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: i_20_1, tracked: true } |     a2:Freed { symidx: temp_84_cmp_22_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     251  label while.exit_23: 
.while.exit_23:
              #                     271  untrack i_20_1 
              #                    occupy a0 with i_20_1
              #                    release a0 with i_20_1
              #                     30   temp_0_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(19_0), Some(23_0)] 
              #                    occupy a0 with temp_0_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 1900
    add     a0,a0,a1
              #                    free a1
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 23
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *array_0
              #                       load label array as ptr to reg
    la      a4, array
              #                    occupy reg a4 with *array_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                     32   temp_1_ele_of_*array_0_20_0 = load temp_0_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_0_ptr_of_*array_0_20
              #                    occupy a5 with temp_1_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     343  untrack temp_0_ptr_of_*array_0_20 
              #                    occupy a0 with temp_0_ptr_of_*array_0_20
              #                    release a0 with temp_0_ptr_of_*array_0_20
              #                     33   mu array_0_2:32 
              #                     35   temp_2_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(18_0), Some(temp_1_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_2_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 1800
    add     a0,a0,a6
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_1_ele_of_*array_0_20_0
    mv      a7, a5
              #                    free a5
    add     a0,a0,a7
              #                    free a7
    slli a0,a0,2
              #                    occupy s1 with *array_0
              #                       load label array as ptr to reg
    la      s1, array
              #                    occupy reg s1 with *array_0
    add     a0,a0,s1
              #                    free s1
              #                    free a0
              #                     342  untrack temp_1_ele_of_*array_0_20_0 
              #                    occupy a5 with temp_1_ele_of_*array_0_20_0
              #                    release a5 with temp_1_ele_of_*array_0_20_0
              #                     37   temp_3_ele_of_*array_0_20_0 = load temp_2_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_2_ptr_of_*array_0_20
              #                    occupy a5 with temp_3_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     341  untrack temp_2_ptr_of_*array_0_20 
              #                    occupy a0 with temp_2_ptr_of_*array_0_20
              #                    release a0 with temp_2_ptr_of_*array_0_20
              #                     38   mu array_0_2:37 
              #                     40   temp_4_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(17_0), Some(temp_3_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_4_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 1700
    add     a0,a0,s2
              #                    free s2
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_3_ele_of_*array_0_20_0
    mv      s3, a5
              #                    free a5
    add     a0,a0,s3
              #                    free s3
    slli a0,a0,2
              #                    occupy s4 with *array_0
              #                       load label array as ptr to reg
    la      s4, array
              #                    occupy reg s4 with *array_0
    add     a0,a0,s4
              #                    free s4
              #                    free a0
              #                     299  untrack temp_3_ele_of_*array_0_20_0 
              #                    occupy a5 with temp_3_ele_of_*array_0_20_0
              #                    release a5 with temp_3_ele_of_*array_0_20_0
              #                     42   temp_5_ele_of_*array_0_20_0 = load temp_4_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_4_ptr_of_*array_0_20
              #                    occupy a5 with temp_5_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     272  untrack temp_4_ptr_of_*array_0_20 
              #                    occupy a0 with temp_4_ptr_of_*array_0_20
              #                    release a0 with temp_4_ptr_of_*array_0_20
              #                     43   mu array_0_2:42 
              #                     45   temp_6_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(16_0), Some(temp_5_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_6_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s5, 1600
    add     a0,a0,s5
              #                    free s5
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_5_ele_of_*array_0_20_0
    mv      s6, a5
              #                    free a5
              #                    occupy a5 with temp_5_ele_of_*array_0_20_0
              #                    store to temp_5_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,620(sp)
              #                    release a5 with temp_5_ele_of_*array_0_20_0
    add     a0,a0,s6
              #                    free s6
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     298  untrack temp_5_ele_of_*array_0_20_0 
              #                     47   temp_7_ele_of_*array_0_20_0 = load temp_6_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_6_ptr_of_*array_0_20
              #                    occupy a5 with temp_7_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_7_ele_of_*array_0_20_0
              #                    store to temp_7_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,604(sp)
              #                    release a5 with temp_7_ele_of_*array_0_20_0
              #                    free a0
              #                     340  untrack temp_6_ptr_of_*array_0_20 
              #                    occupy a0 with temp_6_ptr_of_*array_0_20
              #                    release a0 with temp_6_ptr_of_*array_0_20
              #                     48   mu array_0_2:47 
              #                     50   temp_8_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(15_0), Some(temp_7_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_8_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1500
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_7_ele_of_*array_0_20_0
              #                    load from temp_7_ele_of_*array_0_20_0 in mem


    lw      s7,604(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_7_ele_of_*array_0_20_0
              #                    store to temp_7_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,604(sp)
              #                    release s7 with temp_7_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     339  untrack temp_7_ele_of_*array_0_20_0 
              #                     52   temp_9_ele_of_*array_0_20_0 = load temp_8_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_8_ptr_of_*array_0_20
              #                    occupy a5 with temp_9_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_9_ele_of_*array_0_20_0
              #                    store to temp_9_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,588(sp)
              #                    release a5 with temp_9_ele_of_*array_0_20_0
              #                    free a0
              #                     351  untrack temp_8_ptr_of_*array_0_20 
              #                    occupy a0 with temp_8_ptr_of_*array_0_20
              #                    release a0 with temp_8_ptr_of_*array_0_20
              #                     53   mu array_0_2:52 
              #                     55   temp_10_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(14_0), Some(temp_9_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_10_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1400
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_9_ele_of_*array_0_20_0
              #                    load from temp_9_ele_of_*array_0_20_0 in mem


    lw      s7,588(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_9_ele_of_*array_0_20_0
              #                    store to temp_9_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,588(sp)
              #                    release s7 with temp_9_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     312  untrack temp_9_ele_of_*array_0_20_0 
              #                     57   temp_11_ele_of_*array_0_20_0 = load temp_10_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_10_ptr_of_*array_0_20
              #                    occupy a5 with temp_11_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_11_ele_of_*array_0_20_0
              #                    store to temp_11_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,572(sp)
              #                    release a5 with temp_11_ele_of_*array_0_20_0
              #                    free a0
              #                     286  untrack temp_10_ptr_of_*array_0_20 
              #                    occupy a0 with temp_10_ptr_of_*array_0_20
              #                    release a0 with temp_10_ptr_of_*array_0_20
              #                     58   mu array_0_2:57 
              #                     60   temp_12_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(13_0), Some(temp_11_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_12_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1300
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_11_ele_of_*array_0_20_0
              #                    load from temp_11_ele_of_*array_0_20_0 in mem


    lw      s7,572(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_11_ele_of_*array_0_20_0
              #                    store to temp_11_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,572(sp)
              #                    release s7 with temp_11_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     307  untrack temp_11_ele_of_*array_0_20_0 
              #                     62   temp_13_ele_of_*array_0_20_0 = load temp_12_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_12_ptr_of_*array_0_20
              #                    occupy a5 with temp_13_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_13_ele_of_*array_0_20_0
              #                    store to temp_13_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,556(sp)
              #                    release a5 with temp_13_ele_of_*array_0_20_0
              #                    free a0
              #                     287  untrack temp_12_ptr_of_*array_0_20 
              #                    occupy a0 with temp_12_ptr_of_*array_0_20
              #                    release a0 with temp_12_ptr_of_*array_0_20
              #                     63   mu array_0_2:62 
              #                     65   temp_14_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(12_0), Some(temp_13_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_14_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1200
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_13_ele_of_*array_0_20_0
              #                    load from temp_13_ele_of_*array_0_20_0 in mem


    lw      s7,556(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_13_ele_of_*array_0_20_0
              #                    store to temp_13_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,556(sp)
              #                    release s7 with temp_13_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     337  untrack temp_13_ele_of_*array_0_20_0 
              #                     67   temp_15_ele_of_*array_0_20_0 = load temp_14_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_14_ptr_of_*array_0_20
              #                    occupy a5 with temp_15_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_15_ele_of_*array_0_20_0
              #                    store to temp_15_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,540(sp)
              #                    release a5 with temp_15_ele_of_*array_0_20_0
              #                    free a0
              #                     321  untrack temp_14_ptr_of_*array_0_20 
              #                    occupy a0 with temp_14_ptr_of_*array_0_20
              #                    release a0 with temp_14_ptr_of_*array_0_20
              #                     68   mu array_0_2:67 
              #                     70   temp_16_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(11_0), Some(temp_15_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_16_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1100
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_15_ele_of_*array_0_20_0
              #                    load from temp_15_ele_of_*array_0_20_0 in mem


    lw      s7,540(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_15_ele_of_*array_0_20_0
              #                    store to temp_15_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,540(sp)
              #                    release s7 with temp_15_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     306  untrack temp_15_ele_of_*array_0_20_0 
              #                     72   temp_17_ele_of_*array_0_20_0 = load temp_16_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_16_ptr_of_*array_0_20
              #                    occupy a5 with temp_17_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_17_ele_of_*array_0_20_0
              #                    store to temp_17_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,524(sp)
              #                    release a5 with temp_17_ele_of_*array_0_20_0
              #                    free a0
              #                     275  untrack temp_16_ptr_of_*array_0_20 
              #                    occupy a0 with temp_16_ptr_of_*array_0_20
              #                    release a0 with temp_16_ptr_of_*array_0_20
              #                     73   mu array_0_2:72 
              #                     75   temp_18_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(10_0), Some(temp_17_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_18_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1000
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_17_ele_of_*array_0_20_0
              #                    load from temp_17_ele_of_*array_0_20_0 in mem


    lw      s7,524(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_17_ele_of_*array_0_20_0
              #                    store to temp_17_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,524(sp)
              #                    release s7 with temp_17_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     296  untrack temp_17_ele_of_*array_0_20_0 
              #                     77   temp_19_ele_of_*array_0_20_0 = load temp_18_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_18_ptr_of_*array_0_20
              #                    occupy a5 with temp_19_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_19_ele_of_*array_0_20_0
              #                    store to temp_19_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,508(sp)
              #                    release a5 with temp_19_ele_of_*array_0_20_0
              #                    free a0
              #                     277  untrack temp_18_ptr_of_*array_0_20 
              #                    occupy a0 with temp_18_ptr_of_*array_0_20
              #                    release a0 with temp_18_ptr_of_*array_0_20
              #                     78   mu array_0_2:77 
              #                     80   temp_20_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(9_0), Some(temp_19_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_20_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 900
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_19_ele_of_*array_0_20_0
              #                    load from temp_19_ele_of_*array_0_20_0 in mem


    lw      s7,508(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_19_ele_of_*array_0_20_0
              #                    store to temp_19_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,508(sp)
              #                    release s7 with temp_19_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     350  untrack temp_19_ele_of_*array_0_20_0 
              #                     82   temp_21_ele_of_*array_0_20_0 = load temp_20_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_20_ptr_of_*array_0_20
              #                    occupy a5 with temp_21_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_21_ele_of_*array_0_20_0
              #                    store to temp_21_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,492(sp)
              #                    release a5 with temp_21_ele_of_*array_0_20_0
              #                    free a0
              #                     302  untrack temp_20_ptr_of_*array_0_20 
              #                    occupy a0 with temp_20_ptr_of_*array_0_20
              #                    release a0 with temp_20_ptr_of_*array_0_20
              #                     83   mu array_0_2:82 
              #                     85   temp_22_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(8_0), Some(temp_21_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_22_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 800
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_21_ele_of_*array_0_20_0
              #                    load from temp_21_ele_of_*array_0_20_0 in mem


    lw      s7,492(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_21_ele_of_*array_0_20_0
              #                    store to temp_21_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,492(sp)
              #                    release s7 with temp_21_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     278  untrack temp_21_ele_of_*array_0_20_0 
              #                     87   temp_23_ele_of_*array_0_20_0 = load temp_22_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_22_ptr_of_*array_0_20
              #                    occupy a5 with temp_23_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_23_ele_of_*array_0_20_0
              #                    store to temp_23_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,476(sp)
              #                    release a5 with temp_23_ele_of_*array_0_20_0
              #                    free a0
              #                     280  untrack temp_22_ptr_of_*array_0_20 
              #                    occupy a0 with temp_22_ptr_of_*array_0_20
              #                    release a0 with temp_22_ptr_of_*array_0_20
              #                     88   mu array_0_2:87 
              #                     90   temp_24_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(7_0), Some(temp_23_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_24_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 700
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_23_ele_of_*array_0_20_0
              #                    load from temp_23_ele_of_*array_0_20_0 in mem


    lw      s7,476(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_23_ele_of_*array_0_20_0
              #                    store to temp_23_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,476(sp)
              #                    release s7 with temp_23_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     305  untrack temp_23_ele_of_*array_0_20_0 
              #                     92   temp_25_ele_of_*array_0_20_0 = load temp_24_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_24_ptr_of_*array_0_20
              #                    occupy a5 with temp_25_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_25_ele_of_*array_0_20_0
              #                    store to temp_25_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,460(sp)
              #                    release a5 with temp_25_ele_of_*array_0_20_0
              #                    free a0
              #                     295  untrack temp_24_ptr_of_*array_0_20 
              #                    occupy a0 with temp_24_ptr_of_*array_0_20
              #                    release a0 with temp_24_ptr_of_*array_0_20
              #                     93   mu array_0_2:92 
              #                     95   temp_26_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(6_0), Some(temp_25_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_26_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 600
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_25_ele_of_*array_0_20_0
              #                    load from temp_25_ele_of_*array_0_20_0 in mem


    lw      s7,460(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_25_ele_of_*array_0_20_0
              #                    store to temp_25_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,460(sp)
              #                    release s7 with temp_25_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     332  untrack temp_25_ele_of_*array_0_20_0 
              #                     97   temp_27_ele_of_*array_0_20_0 = load temp_26_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_26_ptr_of_*array_0_20
              #                    occupy a5 with temp_27_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_27_ele_of_*array_0_20_0
              #                    store to temp_27_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,444(sp)
              #                    release a5 with temp_27_ele_of_*array_0_20_0
              #                    free a0
              #                     283  untrack temp_26_ptr_of_*array_0_20 
              #                    occupy a0 with temp_26_ptr_of_*array_0_20
              #                    release a0 with temp_26_ptr_of_*array_0_20
              #                     98   mu array_0_2:97 
              #                     100  temp_28_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(5_0), Some(temp_27_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_28_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 500
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_27_ele_of_*array_0_20_0
              #                    load from temp_27_ele_of_*array_0_20_0 in mem


    lw      s7,444(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_27_ele_of_*array_0_20_0
              #                    store to temp_27_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,444(sp)
              #                    release s7 with temp_27_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     281  untrack temp_27_ele_of_*array_0_20_0 
              #                     102  temp_29_ele_of_*array_0_20_0 = load temp_28_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_28_ptr_of_*array_0_20
              #                    occupy a5 with temp_29_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_29_ele_of_*array_0_20_0
              #                    store to temp_29_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,428(sp)
              #                    release a5 with temp_29_ele_of_*array_0_20_0
              #                    free a0
              #                     297  untrack temp_28_ptr_of_*array_0_20 
              #                    occupy a0 with temp_28_ptr_of_*array_0_20
              #                    release a0 with temp_28_ptr_of_*array_0_20
              #                     103  mu array_0_2:102 
              #                     105  temp_30_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(4_0), Some(temp_29_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_30_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 400
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_29_ele_of_*array_0_20_0
              #                    load from temp_29_ele_of_*array_0_20_0 in mem


    lw      s7,428(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_29_ele_of_*array_0_20_0
              #                    store to temp_29_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,428(sp)
              #                    release s7 with temp_29_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     282  untrack temp_29_ele_of_*array_0_20_0 
              #                     107  temp_31_ele_of_*array_0_20_0 = load temp_30_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_30_ptr_of_*array_0_20
              #                    occupy a5 with temp_31_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_31_ele_of_*array_0_20_0
              #                    store to temp_31_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,412(sp)
              #                    release a5 with temp_31_ele_of_*array_0_20_0
              #                    free a0
              #                     292  untrack temp_30_ptr_of_*array_0_20 
              #                    occupy a0 with temp_30_ptr_of_*array_0_20
              #                    release a0 with temp_30_ptr_of_*array_0_20
              #                     108  mu array_0_2:107 
              #                     110  temp_32_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(3_0), Some(temp_31_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_32_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 300
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_31_ele_of_*array_0_20_0
              #                    load from temp_31_ele_of_*array_0_20_0 in mem


    lw      s7,412(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_31_ele_of_*array_0_20_0
              #                    store to temp_31_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,412(sp)
              #                    release s7 with temp_31_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     335  untrack temp_31_ele_of_*array_0_20_0 
              #                     112  temp_33_ele_of_*array_0_20_0 = load temp_32_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_32_ptr_of_*array_0_20
              #                    occupy a5 with temp_33_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_33_ele_of_*array_0_20_0
              #                    store to temp_33_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,396(sp)
              #                    release a5 with temp_33_ele_of_*array_0_20_0
              #                    free a0
              #                     308  untrack temp_32_ptr_of_*array_0_20 
              #                    occupy a0 with temp_32_ptr_of_*array_0_20
              #                    release a0 with temp_32_ptr_of_*array_0_20
              #                     113  mu array_0_2:112 
              #                     115  temp_34_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(2_0), Some(temp_33_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_34_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 200
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_33_ele_of_*array_0_20_0
              #                    load from temp_33_ele_of_*array_0_20_0 in mem


    lw      s7,396(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_33_ele_of_*array_0_20_0
              #                    store to temp_33_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,396(sp)
              #                    release s7 with temp_33_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     328  untrack temp_33_ele_of_*array_0_20_0 
              #                     117  temp_35_ele_of_*array_0_20_0 = load temp_34_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_34_ptr_of_*array_0_20
              #                    occupy a5 with temp_35_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_35_ele_of_*array_0_20_0
              #                    store to temp_35_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,380(sp)
              #                    release a5 with temp_35_ele_of_*array_0_20_0
              #                    free a0
              #                     318  untrack temp_34_ptr_of_*array_0_20 
              #                    occupy a0 with temp_34_ptr_of_*array_0_20
              #                    release a0 with temp_34_ptr_of_*array_0_20
              #                     118  mu array_0_2:117 
              #                     120  temp_36_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(1_0), Some(temp_35_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_36_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 100
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_35_ele_of_*array_0_20_0
              #                    load from temp_35_ele_of_*array_0_20_0 in mem


    lw      s7,380(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_35_ele_of_*array_0_20_0
              #                    store to temp_35_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,380(sp)
              #                    release s7 with temp_35_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     294  untrack temp_35_ele_of_*array_0_20_0 
              #                     122  temp_37_ele_of_*array_0_20_0 = load temp_36_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_36_ptr_of_*array_0_20
              #                    occupy a5 with temp_37_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_37_ele_of_*array_0_20_0
              #                    store to temp_37_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,364(sp)
              #                    release a5 with temp_37_ele_of_*array_0_20_0
              #                    free a0
              #                     288  untrack temp_36_ptr_of_*array_0_20 
              #                    occupy a0 with temp_36_ptr_of_*array_0_20
              #                    release a0 with temp_36_ptr_of_*array_0_20
              #                     123  mu array_0_2:122 
              #                     125  temp_38_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(0_0), Some(temp_37_ele_of_*array_0_20_0)] 
              #                    occupy a0 with temp_38_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with temp_37_ele_of_*array_0_20_0
              #                    load from temp_37_ele_of_*array_0_20_0 in mem


    lw      s7,364(sp)
    mv      a5, s7
              #                    free s7
              #                    occupy s7 with temp_37_ele_of_*array_0_20_0
              #                    store to temp_37_ele_of_*array_0_20_0 in mem offset legal
    sw      s7,364(sp)
              #                    release s7 with temp_37_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     338  untrack temp_37_ele_of_*array_0_20_0 
              #                     127  temp_39_ele_of_*array_0_20_0 = load temp_38_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_38_ptr_of_*array_0_20
              #                    occupy a5 with temp_39_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_39_ele_of_*array_0_20_0
              #                    store to temp_39_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,348(sp)
              #                    release a5 with temp_39_ele_of_*array_0_20_0
              #                    free a0
              #                     326  untrack temp_38_ptr_of_*array_0_20 
              #                    occupy a0 with temp_38_ptr_of_*array_0_20
              #                    release a0 with temp_38_ptr_of_*array_0_20
              #                     128  mu array_0_2:127 
              #                     130  temp_40_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(19_0), Some(18_0)] 
              #                    occupy a0 with temp_40_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1900
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 18
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     132  temp_41_ele_of_*array_0_20_0 = load temp_40_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_40_ptr_of_*array_0_20
              #                    occupy a5 with temp_41_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_41_ele_of_*array_0_20_0
              #                    store to temp_41_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,332(sp)
              #                    release a5 with temp_41_ele_of_*array_0_20_0
              #                    free a0
              #                     285  untrack temp_40_ptr_of_*array_0_20 
              #                    occupy a0 with temp_40_ptr_of_*array_0_20
              #                    release a0 with temp_40_ptr_of_*array_0_20
              #                     133  mu array_0_2:132 
              #                     135  temp_42_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_41_ele_of_*array_0_20_0), Some(17_0)] 
              #                    occupy a0 with temp_42_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_41_ele_of_*array_0_20_0
              #                    load from temp_41_ele_of_*array_0_20_0 in mem


    lw      s8,332(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_41_ele_of_*array_0_20_0
              #                    store to temp_41_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,332(sp)
              #                    release s8 with temp_41_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 17
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     311  untrack temp_41_ele_of_*array_0_20_0 
              #                     137  temp_43_ele_of_*array_0_20_0 = load temp_42_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_42_ptr_of_*array_0_20
              #                    occupy a5 with temp_43_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_43_ele_of_*array_0_20_0
              #                    store to temp_43_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,316(sp)
              #                    release a5 with temp_43_ele_of_*array_0_20_0
              #                    free a0
              #                     304  untrack temp_42_ptr_of_*array_0_20 
              #                    occupy a0 with temp_42_ptr_of_*array_0_20
              #                    release a0 with temp_42_ptr_of_*array_0_20
              #                     138  mu array_0_2:137 
              #                     140  temp_44_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_43_ele_of_*array_0_20_0), Some(16_0)] 
              #                    occupy a0 with temp_44_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_43_ele_of_*array_0_20_0
              #                    load from temp_43_ele_of_*array_0_20_0 in mem


    lw      s8,316(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_43_ele_of_*array_0_20_0
              #                    store to temp_43_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,316(sp)
              #                    release s8 with temp_43_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 16
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     315  untrack temp_43_ele_of_*array_0_20_0 
              #                     142  temp_45_ele_of_*array_0_20_0 = load temp_44_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_44_ptr_of_*array_0_20
              #                    occupy a5 with temp_45_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_45_ele_of_*array_0_20_0
              #                    store to temp_45_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,300(sp)
              #                    release a5 with temp_45_ele_of_*array_0_20_0
              #                    free a0
              #                     349  untrack temp_44_ptr_of_*array_0_20 
              #                    occupy a0 with temp_44_ptr_of_*array_0_20
              #                    release a0 with temp_44_ptr_of_*array_0_20
              #                     143  mu array_0_2:142 
              #                     145  temp_46_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_45_ele_of_*array_0_20_0), Some(15_0)] 
              #                    occupy a0 with temp_46_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_45_ele_of_*array_0_20_0
              #                    load from temp_45_ele_of_*array_0_20_0 in mem


    lw      s8,300(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_45_ele_of_*array_0_20_0
              #                    store to temp_45_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,300(sp)
              #                    release s8 with temp_45_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 15
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     327  untrack temp_45_ele_of_*array_0_20_0 
              #                     147  temp_47_ele_of_*array_0_20_0 = load temp_46_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_46_ptr_of_*array_0_20
              #                    occupy a5 with temp_47_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_47_ele_of_*array_0_20_0
              #                    store to temp_47_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,284(sp)
              #                    release a5 with temp_47_ele_of_*array_0_20_0
              #                    free a0
              #                     309  untrack temp_46_ptr_of_*array_0_20 
              #                    occupy a0 with temp_46_ptr_of_*array_0_20
              #                    release a0 with temp_46_ptr_of_*array_0_20
              #                     148  mu array_0_2:147 
              #                     150  temp_48_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_47_ele_of_*array_0_20_0), Some(14_0)] 
              #                    occupy a0 with temp_48_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_47_ele_of_*array_0_20_0
              #                    load from temp_47_ele_of_*array_0_20_0 in mem


    lw      s8,284(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_47_ele_of_*array_0_20_0
              #                    store to temp_47_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,284(sp)
              #                    release s8 with temp_47_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 14
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     331  untrack temp_47_ele_of_*array_0_20_0 
              #                     152  temp_49_ele_of_*array_0_20_0 = load temp_48_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_48_ptr_of_*array_0_20
              #                    occupy a5 with temp_49_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_49_ele_of_*array_0_20_0
              #                    store to temp_49_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,268(sp)
              #                    release a5 with temp_49_ele_of_*array_0_20_0
              #                    free a0
              #                     330  untrack temp_48_ptr_of_*array_0_20 
              #                    occupy a0 with temp_48_ptr_of_*array_0_20
              #                    release a0 with temp_48_ptr_of_*array_0_20
              #                     153  mu array_0_2:152 
              #                     155  temp_50_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_49_ele_of_*array_0_20_0), Some(13_0)] 
              #                    occupy a0 with temp_50_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_49_ele_of_*array_0_20_0
              #                    load from temp_49_ele_of_*array_0_20_0 in mem


    lw      s8,268(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_49_ele_of_*array_0_20_0
              #                    store to temp_49_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,268(sp)
              #                    release s8 with temp_49_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 13
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     291  untrack temp_49_ele_of_*array_0_20_0 
              #                     157  temp_51_ele_of_*array_0_20_0 = load temp_50_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_50_ptr_of_*array_0_20
              #                    occupy a5 with temp_51_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_51_ele_of_*array_0_20_0
              #                    store to temp_51_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,252(sp)
              #                    release a5 with temp_51_ele_of_*array_0_20_0
              #                    free a0
              #                     334  untrack temp_50_ptr_of_*array_0_20 
              #                    occupy a0 with temp_50_ptr_of_*array_0_20
              #                    release a0 with temp_50_ptr_of_*array_0_20
              #                     158  mu array_0_2:157 
              #                     160  temp_52_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_51_ele_of_*array_0_20_0), Some(12_0)] 
              #                    occupy a0 with temp_52_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_51_ele_of_*array_0_20_0
              #                    load from temp_51_ele_of_*array_0_20_0 in mem


    lw      s8,252(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_51_ele_of_*array_0_20_0
              #                    store to temp_51_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,252(sp)
              #                    release s8 with temp_51_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 12
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     284  untrack temp_51_ele_of_*array_0_20_0 
              #                     162  temp_53_ele_of_*array_0_20_0 = load temp_52_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_52_ptr_of_*array_0_20
              #                    occupy a5 with temp_53_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_53_ele_of_*array_0_20_0
              #                    store to temp_53_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,236(sp)
              #                    release a5 with temp_53_ele_of_*array_0_20_0
              #                    free a0
              #                     323  untrack temp_52_ptr_of_*array_0_20 
              #                    occupy a0 with temp_52_ptr_of_*array_0_20
              #                    release a0 with temp_52_ptr_of_*array_0_20
              #                     163  mu array_0_2:162 
              #                     165  temp_54_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_53_ele_of_*array_0_20_0), Some(11_0)] 
              #                    occupy a0 with temp_54_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_53_ele_of_*array_0_20_0
              #                    load from temp_53_ele_of_*array_0_20_0 in mem


    lw      s8,236(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_53_ele_of_*array_0_20_0
              #                    store to temp_53_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,236(sp)
              #                    release s8 with temp_53_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 11
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     324  untrack temp_53_ele_of_*array_0_20_0 
              #                     167  temp_55_ele_of_*array_0_20_0 = load temp_54_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_54_ptr_of_*array_0_20
              #                    occupy a5 with temp_55_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_55_ele_of_*array_0_20_0
              #                    store to temp_55_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,220(sp)
              #                    release a5 with temp_55_ele_of_*array_0_20_0
              #                    free a0
              #                     322  untrack temp_54_ptr_of_*array_0_20 
              #                    occupy a0 with temp_54_ptr_of_*array_0_20
              #                    release a0 with temp_54_ptr_of_*array_0_20
              #                     168  mu array_0_2:167 
              #                     170  temp_56_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_55_ele_of_*array_0_20_0), Some(10_0)] 
              #                    occupy a0 with temp_56_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_55_ele_of_*array_0_20_0
              #                    load from temp_55_ele_of_*array_0_20_0 in mem


    lw      s8,220(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_55_ele_of_*array_0_20_0
              #                    store to temp_55_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,220(sp)
              #                    release s8 with temp_55_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 10
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     352  untrack temp_55_ele_of_*array_0_20_0 
              #                     172  temp_57_ele_of_*array_0_20_0 = load temp_56_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_56_ptr_of_*array_0_20
              #                    occupy a5 with temp_57_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_57_ele_of_*array_0_20_0
              #                    store to temp_57_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,204(sp)
              #                    release a5 with temp_57_ele_of_*array_0_20_0
              #                    free a0
              #                     317  untrack temp_56_ptr_of_*array_0_20 
              #                    occupy a0 with temp_56_ptr_of_*array_0_20
              #                    release a0 with temp_56_ptr_of_*array_0_20
              #                     173  mu array_0_2:172 
              #                     175  temp_58_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_57_ele_of_*array_0_20_0), Some(9_0)] 
              #                    occupy a0 with temp_58_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_57_ele_of_*array_0_20_0
              #                    load from temp_57_ele_of_*array_0_20_0 in mem


    lw      s8,204(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_57_ele_of_*array_0_20_0
              #                    store to temp_57_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,204(sp)
              #                    release s8 with temp_57_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 9
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     301  untrack temp_57_ele_of_*array_0_20_0 
              #                     177  temp_59_ele_of_*array_0_20_0 = load temp_58_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_58_ptr_of_*array_0_20
              #                    occupy a5 with temp_59_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_59_ele_of_*array_0_20_0
              #                    store to temp_59_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,188(sp)
              #                    release a5 with temp_59_ele_of_*array_0_20_0
              #                    free a0
              #                     289  untrack temp_58_ptr_of_*array_0_20 
              #                    occupy a0 with temp_58_ptr_of_*array_0_20
              #                    release a0 with temp_58_ptr_of_*array_0_20
              #                     178  mu array_0_2:177 
              #                     180  temp_60_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_59_ele_of_*array_0_20_0), Some(8_0)] 
              #                    occupy a0 with temp_60_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_59_ele_of_*array_0_20_0
              #                    load from temp_59_ele_of_*array_0_20_0 in mem


    lw      s8,188(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_59_ele_of_*array_0_20_0
              #                    store to temp_59_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,188(sp)
              #                    release s8 with temp_59_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 8
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     300  untrack temp_59_ele_of_*array_0_20_0 
              #                     182  temp_61_ele_of_*array_0_20_0 = load temp_60_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_60_ptr_of_*array_0_20
              #                    occupy a5 with temp_61_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_61_ele_of_*array_0_20_0
              #                    store to temp_61_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,172(sp)
              #                    release a5 with temp_61_ele_of_*array_0_20_0
              #                    free a0
              #                     325  untrack temp_60_ptr_of_*array_0_20 
              #                    occupy a0 with temp_60_ptr_of_*array_0_20
              #                    release a0 with temp_60_ptr_of_*array_0_20
              #                     183  mu array_0_2:182 
              #                     185  temp_62_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_61_ele_of_*array_0_20_0), Some(7_0)] 
              #                    occupy a0 with temp_62_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_61_ele_of_*array_0_20_0
              #                    load from temp_61_ele_of_*array_0_20_0 in mem


    lw      s8,172(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_61_ele_of_*array_0_20_0
              #                    store to temp_61_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,172(sp)
              #                    release s8 with temp_61_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 7
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     314  untrack temp_61_ele_of_*array_0_20_0 
              #                     187  temp_63_ele_of_*array_0_20_0 = load temp_62_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_62_ptr_of_*array_0_20
              #                    occupy a5 with temp_63_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_63_ele_of_*array_0_20_0
              #                    store to temp_63_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,156(sp)
              #                    release a5 with temp_63_ele_of_*array_0_20_0
              #                    free a0
              #                     333  untrack temp_62_ptr_of_*array_0_20 
              #                    occupy a0 with temp_62_ptr_of_*array_0_20
              #                    release a0 with temp_62_ptr_of_*array_0_20
              #                     188  mu array_0_2:187 
              #                     190  temp_64_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_63_ele_of_*array_0_20_0), Some(6_0)] 
              #                    occupy a0 with temp_64_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_63_ele_of_*array_0_20_0
              #                    load from temp_63_ele_of_*array_0_20_0 in mem


    lw      s8,156(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_63_ele_of_*array_0_20_0
              #                    store to temp_63_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,156(sp)
              #                    release s8 with temp_63_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 6
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     348  untrack temp_63_ele_of_*array_0_20_0 
              #                     192  temp_65_ele_of_*array_0_20_0 = load temp_64_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_64_ptr_of_*array_0_20
              #                    occupy a5 with temp_65_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_65_ele_of_*array_0_20_0
              #                    store to temp_65_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,140(sp)
              #                    release a5 with temp_65_ele_of_*array_0_20_0
              #                    free a0
              #                     316  untrack temp_64_ptr_of_*array_0_20 
              #                    occupy a0 with temp_64_ptr_of_*array_0_20
              #                    release a0 with temp_64_ptr_of_*array_0_20
              #                     193  mu array_0_2:192 
              #                     195  temp_66_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_65_ele_of_*array_0_20_0), Some(5_0)] 
              #                    occupy a0 with temp_66_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_65_ele_of_*array_0_20_0
              #                    load from temp_65_ele_of_*array_0_20_0 in mem


    lw      s8,140(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_65_ele_of_*array_0_20_0
              #                    store to temp_65_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,140(sp)
              #                    release s8 with temp_65_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 5
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     347  untrack temp_65_ele_of_*array_0_20_0 
              #                     197  temp_67_ele_of_*array_0_20_0 = load temp_66_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_66_ptr_of_*array_0_20
              #                    occupy a5 with temp_67_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_67_ele_of_*array_0_20_0
              #                    store to temp_67_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,124(sp)
              #                    release a5 with temp_67_ele_of_*array_0_20_0
              #                    free a0
              #                     329  untrack temp_66_ptr_of_*array_0_20 
              #                    occupy a0 with temp_66_ptr_of_*array_0_20
              #                    release a0 with temp_66_ptr_of_*array_0_20
              #                     198  mu array_0_2:197 
              #                     200  temp_68_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_67_ele_of_*array_0_20_0), Some(4_0)] 
              #                    occupy a0 with temp_68_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_67_ele_of_*array_0_20_0
              #                    load from temp_67_ele_of_*array_0_20_0 in mem


    lw      s8,124(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_67_ele_of_*array_0_20_0
              #                    store to temp_67_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,124(sp)
              #                    release s8 with temp_67_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 4
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     345  untrack temp_67_ele_of_*array_0_20_0 
              #                     202  temp_69_ele_of_*array_0_20_0 = load temp_68_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_68_ptr_of_*array_0_20
              #                    occupy a5 with temp_69_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_69_ele_of_*array_0_20_0
              #                    store to temp_69_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,108(sp)
              #                    release a5 with temp_69_ele_of_*array_0_20_0
              #                    free a0
              #                     320  untrack temp_68_ptr_of_*array_0_20 
              #                    occupy a0 with temp_68_ptr_of_*array_0_20
              #                    release a0 with temp_68_ptr_of_*array_0_20
              #                     203  mu array_0_2:202 
              #                     205  temp_70_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_69_ele_of_*array_0_20_0), Some(3_0)] 
              #                    occupy a0 with temp_70_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_69_ele_of_*array_0_20_0
              #                    load from temp_69_ele_of_*array_0_20_0 in mem


    lw      s8,108(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_69_ele_of_*array_0_20_0
              #                    store to temp_69_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,108(sp)
              #                    release s8 with temp_69_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 3
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     319  untrack temp_69_ele_of_*array_0_20_0 
              #                     207  temp_71_ele_of_*array_0_20_0 = load temp_70_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_70_ptr_of_*array_0_20
              #                    occupy a5 with temp_71_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_71_ele_of_*array_0_20_0
              #                    store to temp_71_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,92(sp)
              #                    release a5 with temp_71_ele_of_*array_0_20_0
              #                    free a0
              #                     303  untrack temp_70_ptr_of_*array_0_20 
              #                    occupy a0 with temp_70_ptr_of_*array_0_20
              #                    release a0 with temp_70_ptr_of_*array_0_20
              #                     208  mu array_0_2:207 
              #                     210  temp_72_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_71_ele_of_*array_0_20_0), Some(2_0)] 
              #                    occupy a0 with temp_72_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_71_ele_of_*array_0_20_0
              #                    load from temp_71_ele_of_*array_0_20_0 in mem


    lw      s8,92(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_71_ele_of_*array_0_20_0
              #                    store to temp_71_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,92(sp)
              #                    release s8 with temp_71_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 2
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     279  untrack temp_71_ele_of_*array_0_20_0 
              #                     212  temp_73_ele_of_*array_0_20_0 = load temp_72_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_72_ptr_of_*array_0_20
              #                    occupy a5 with temp_73_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_73_ele_of_*array_0_20_0
              #                    store to temp_73_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,76(sp)
              #                    release a5 with temp_73_ele_of_*array_0_20_0
              #                    free a0
              #                     313  untrack temp_72_ptr_of_*array_0_20 
              #                    occupy a0 with temp_72_ptr_of_*array_0_20
              #                    release a0 with temp_72_ptr_of_*array_0_20
              #                     213  mu array_0_2:212 
              #                     215  temp_74_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_73_ele_of_*array_0_20_0), Some(1_0)] 
              #                    occupy a0 with temp_74_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_73_ele_of_*array_0_20_0
              #                    load from temp_73_ele_of_*array_0_20_0 in mem


    lw      s8,76(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_73_ele_of_*array_0_20_0
              #                    store to temp_73_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,76(sp)
              #                    release s8 with temp_73_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     346  untrack temp_73_ele_of_*array_0_20_0 
              #                     217  temp_75_ele_of_*array_0_20_0 = load temp_74_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_74_ptr_of_*array_0_20
              #                    occupy a5 with temp_75_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_75_ele_of_*array_0_20_0
              #                    store to temp_75_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,60(sp)
              #                    release a5 with temp_75_ele_of_*array_0_20_0
              #                    free a0
              #                     276  untrack temp_74_ptr_of_*array_0_20 
              #                    occupy a0 with temp_74_ptr_of_*array_0_20
              #                    release a0 with temp_74_ptr_of_*array_0_20
              #                     218  mu array_0_2:217 
              #                     220  temp_76_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_75_ele_of_*array_0_20_0), Some(0_0)] 
              #                    occupy a0 with temp_76_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_75_ele_of_*array_0_20_0
              #                    load from temp_75_ele_of_*array_0_20_0 in mem


    lw      s8,60(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_75_ele_of_*array_0_20_0
              #                    store to temp_75_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,60(sp)
              #                    release s8 with temp_75_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     293  untrack temp_75_ele_of_*array_0_20_0 
              #                     222  temp_77_ele_of_*array_0_20_0 = load temp_76_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_76_ptr_of_*array_0_20
              #                    occupy a5 with temp_77_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_77_ele_of_*array_0_20_0
              #                    store to temp_77_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,44(sp)
              #                    release a5 with temp_77_ele_of_*array_0_20_0
              #                    free a0
              #                     344  untrack temp_76_ptr_of_*array_0_20 
              #                    occupy a0 with temp_76_ptr_of_*array_0_20
              #                    release a0 with temp_76_ptr_of_*array_0_20
              #                     223  mu array_0_2:222 
              #                     225  temp_78_ptr_of_*array_0_20 = GEP *array_0:Array:i32:[None, Some(100_0)] [Some(temp_77_ele_of_*array_0_20_0), Some(56_0)] 
              #                    occupy a0 with temp_78_ptr_of_*array_0_20
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 100_0
    li      s7, 100
              #                    occupy s8 with temp_77_ele_of_*array_0_20_0
              #                    load from temp_77_ele_of_*array_0_20_0 in mem


    lw      s8,44(sp)
    mul     a5,s7,s8
              #                    free s7
              #                    free s8
              #                    occupy s8 with temp_77_ele_of_*array_0_20_0
              #                    store to temp_77_ele_of_*array_0_20_0 in mem offset legal
    sw      s8,44(sp)
              #                    release s8 with temp_77_ele_of_*array_0_20_0
    add     a0,a0,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 56
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     290  untrack temp_77_ele_of_*array_0_20_0 
              #                     227  temp_79_ele_of_*array_0_20_0 = load temp_78_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a0 with temp_78_ptr_of_*array_0_20
              #                    occupy a5 with temp_79_ele_of_*array_0_20_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_79_ele_of_*array_0_20_0
              #                    store to temp_79_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,28(sp)
              #                    release a5 with temp_79_ele_of_*array_0_20_0
              #                    free a0
              #                     274  untrack temp_78_ptr_of_*array_0_20 
              #                    occupy a0 with temp_78_ptr_of_*array_0_20
              #                    release a0 with temp_78_ptr_of_*array_0_20
              #                     228  mu array_0_2:227 
              #                     230  temp_80_arithop_20_0 = Add i32 temp_39_ele_of_*array_0_20_0, temp_79_ele_of_*array_0_20_0 
              #                    occupy a0 with temp_39_ele_of_*array_0_20_0
              #                    load from temp_39_ele_of_*array_0_20_0 in mem


    lw      a0,348(sp)
              #                    occupy a5 with temp_79_ele_of_*array_0_20_0
              #                    load from temp_79_ele_of_*array_0_20_0 in mem


    lw      a5,28(sp)
              #                    occupy s7 with temp_80_arithop_20_0
    ADDW    s7,a0,a5
              #                    free a0
              #                    occupy a0 with temp_39_ele_of_*array_0_20_0
              #                    store to temp_39_ele_of_*array_0_20_0 in mem offset legal
    sw      a0,348(sp)
              #                    release a0 with temp_39_ele_of_*array_0_20_0
              #                    free a5
              #                    occupy a5 with temp_79_ele_of_*array_0_20_0
              #                    store to temp_79_ele_of_*array_0_20_0 in mem offset legal
    sw      a5,28(sp)
              #                    release a5 with temp_79_ele_of_*array_0_20_0
              #                    free s7
              #                     336  untrack temp_79_ele_of_*array_0_20_0 
              #                     273  untrack temp_39_ele_of_*array_0_20_0 
              #                     231  (nop) 
              #                     232   Call void putint_0(temp_80_arithop_20_0) 
              #                    saved register dumping to mem
              #                    occupy s7 with temp_80_arithop_20_0
              #                    store to temp_80_arithop_20_0 in mem offset legal
    sw      s7,24(sp)
              #                    release s7 with temp_80_arithop_20_0
              #                    occupy a2 with temp_84_cmp_22_0
              #                    store to temp_84_cmp_22_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_84_cmp_22_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_80_arithop_20_0_0
              #                    load from temp_80_arithop_20_0 in mem


    lw      a0,24(sp)
              #                    arg load ended


    call    putint
              #                     310  untrack temp_80_arithop_20_0 
              #                     262  mu array_0_2:234 
              #                     234  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,680(sp)
              #                    load from s0_main_0 in mem
    ld      s0,672(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,688
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl array
              #                     22   global Array:i32:[Some(20_0), Some(100_0)] array_0 
    .type array,@object
array:
    .zero 8000
    .align 4
    .globl M
              #                     20   global i32 M_0 
    .type M,@object
M:
    .word 20
    .align 4
    .globl N
              #                     17   global i32 N_0 
    .type N,@object
N:
    .word 100
