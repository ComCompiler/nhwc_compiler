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
              #                     19   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 1184|s0_main:8 at 1176|i _s18 _i0:4 at 1172|i _s18 _i2:4 at 1168|i _s18 _i5:4 at 1164|i _s18 _i8:4 at 1160|i _s18 _i11:4 at 1156|i _s18 _i14:4 at 1152|j _s18 _i0:4 at 1148|j _s18 _i1:4 at 1144|j _s18 _i3:4 at 1140|t _s18 _i0:4 at 1136|t _s18 _i1:4 at 1132|n _s18 _i0:4 at 1128|n _s18 _i2:4 at 1124|n _s18 _i3:4 at 1120|temp _s18 _i0:4 at 1116|temp _s18 _i2:4 at 1112|temp _s18 _i3:4 at 1108|none:4 at 1104|temp_0_array_init_ptr:8 at 1096|temp_1_array_init_ptr:8 at 1088|temp_2_array_init_ptr:8 at 1080|temp_3_array_init_ptr:8 at 1072|temp_4_array_init_ptr:8 at 1064|temp_5_array_init_ptr:8 at 1056|temp_6_array_init_ptr:8 at 1048|temp_7_array_init_ptr:8 at 1040|temp_8_array_init_ptr:8 at 1032|temp_9_array_init_ptr:8 at 1024|temp_10_array_init_ptr:8 at 1016|temp_11_array_init_ptr:8 at 1008|temp_12_array_init_ptr:8 at 1000|temp_13_array_init_ptr:8 at 992|temp_14_array_init_ptr:8 at 984|temp_15_array_init_ptr:8 at 976|temp_16_array_init_ptr:8 at 968|temp_17_array_init_ptr:8 at 960|temp_18_array_init_ptr:8 at 952|temp_19_array_init_ptr:8 at 944|temp_20_array_init_ptr:8 at 936|mult1:80 at 856|temp_21_array_init_ptr:8 at 848|temp_22_array_init_ptr:8 at 840|temp_23_array_init_ptr:8 at 832|temp_24_array_init_ptr:8 at 824|temp_25_array_init_ptr:8 at 816|temp_26_array_init_ptr:8 at 808|temp_27_array_init_ptr:8 at 800|temp_28_array_init_ptr:8 at 792|temp_29_array_init_ptr:8 at 784|temp_30_array_init_ptr:8 at 776|temp_31_array_init_ptr:8 at 768|temp_32_array_init_ptr:8 at 760|temp_33_array_init_ptr:8 at 752|temp_34_array_init_ptr:8 at 744|temp_35_array_init_ptr:8 at 736|temp_36_array_init_ptr:8 at 728|temp_37_array_init_ptr:8 at 720|temp_38_array_init_ptr:8 at 712|temp_39_array_init_ptr:8 at 704|temp_40_array_init_ptr:8 at 696|temp_41_array_init_ptr:8 at 688|mult2:80 at 608|c1:100 at 508|c2:100 at 408|temp_42_array_init_ptr:8 at 400|result:160 at 240|temp_46_ptr_of_result_18:8 at 232|temp_47_ele_of_result_18 _s73 _i0:4 at 228|temp_48_arithop _s73 _i0:4 at 224|temp_49_ptr_of_result_18:8 at 216|temp_51_ptr_of_c2_18:8 at 208|temp_52_ele_of_c2_18 _s50 _i0:4 at 204|temp_54_arithop _s50 _i0:4 at 200|temp_55_arithop _s50 _i0:4 at 196|temp_56_arithop _s50 _i0:4 at 192|temp_57_ptr_of_result_18:8 at 184|temp_58_ele_of_result_18 _s55 _i0:4 at 180|none:4 at 176|temp_59_ptr_of_c1_18:8 at 168|temp_60_ele_of_c1_18 _s55 _i0:4 at 164|temp_61_arithop _s55 _i0:4 at 160|temp_62_arithop _s55 _i0:4 at 156|none:4 at 152|temp_63_ptr_of_result_18:8 at 144|temp_64_arithop _s55 _i0:4 at 140|temp_65_arithop _s55 _i0:4 at 136|temp_66_ptr_of_result_18:8 at 128|temp_67_arithop _s59 _i0:4 at 124|none:4 at 120|temp_68_ptr_of_result_18:8 at 112|temp_70_ptr_of_result_18:8 at 104|temp_71_ele_of_result_18 _s59 _i0:4 at 100|temp_72_arithop _s59 _i0:4 at 96|temp_73_arithop _s59 _i0:4 at 92|none:4 at 88|temp_74_ptr_of_result_18:8 at 80|temp_75_arithop _s43 _i0:4 at 76|none:4 at 72|temp_76_ptr_of_c2_18:8 at 64|temp_77_ptr_of_mult2_18:8 at 56|temp_78_ele_of_mult2_18 _s36 _i0:4 at 52|temp_79_arithop _s36 _i0:4 at 48|temp_80_ptr_of_c1_18:8 at 40|temp_81_ptr_of_mult1_18:8 at 32|temp_82_ele_of_mult1_18 _s30 _i0:4 at 28|temp_83_arithop _s30 _i0:4 at 24|temp_84_cmp _s28 _i0:1 at 23|temp_85_cmp _s34 _i0:1 at 22|temp_86_cmp _s41 _i0:1 at 21|temp_87_cmp _s48 _i0:1 at 20|none:4 at 16|temp_88_ptr_of_result_18:8 at 8|temp_89_ele_of_result_18 _s67 _i0:4 at 4|temp_90_cmp _s67 _i0:1 at 3|temp_93_cmp _s71 _i0:1 at 2|temp_94_cmp _s53 _i0:1 at 1|temp_95_cmp _s57 _i0:1 at 0
    addi    sp,sp,-1192
              #                    store to ra_main_0 in mem offset legal
    sd      ra,1184(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,1176(sp)
    addi    s0,sp,1192
              #                     20   alloc i32 [i_18] 
              #                     22   alloc i32 [j_18] 
              #                     24   alloc i32 [t_18] 
              #                     26   alloc i32 [n_18] 
              #                     28   alloc i32 [temp_18] 
              #                     31   alloc ptr->i32 [temp_0_array_init_ptr_18] 
              #                     34   alloc ptr->i32 [temp_1_array_init_ptr_18] 
              #                     38   alloc ptr->i32 [temp_2_array_init_ptr_18] 
              #                     42   alloc ptr->i32 [temp_3_array_init_ptr_18] 
              #                     46   alloc ptr->i32 [temp_4_array_init_ptr_18] 
              #                     50   alloc ptr->i32 [temp_5_array_init_ptr_18] 
              #                     54   alloc ptr->i32 [temp_6_array_init_ptr_18] 
              #                     58   alloc ptr->i32 [temp_7_array_init_ptr_18] 
              #                     62   alloc ptr->i32 [temp_8_array_init_ptr_18] 
              #                     66   alloc ptr->i32 [temp_9_array_init_ptr_18] 
              #                     70   alloc ptr->i32 [temp_10_array_init_ptr_18] 
              #                     74   alloc ptr->i32 [temp_11_array_init_ptr_18] 
              #                     78   alloc ptr->i32 [temp_12_array_init_ptr_18] 
              #                     82   alloc ptr->i32 [temp_13_array_init_ptr_18] 
              #                     86   alloc ptr->i32 [temp_14_array_init_ptr_18] 
              #                     90   alloc ptr->i32 [temp_15_array_init_ptr_18] 
              #                     94   alloc ptr->i32 [temp_16_array_init_ptr_18] 
              #                     98   alloc ptr->i32 [temp_17_array_init_ptr_18] 
              #                     102  alloc ptr->i32 [temp_18_array_init_ptr_18] 
              #                     106  alloc ptr->i32 [temp_19_array_init_ptr_18] 
              #                     110  alloc ptr->i32 [temp_20_array_init_ptr_18] 
              #                     114  alloc Array:i32:[Some(20_0)] [mult1_18] 
              #                     116  alloc ptr->i32 [temp_21_array_init_ptr_18] 
              #                     119  alloc ptr->i32 [temp_22_array_init_ptr_18] 
              #                     123  alloc ptr->i32 [temp_23_array_init_ptr_18] 
              #                     127  alloc ptr->i32 [temp_24_array_init_ptr_18] 
              #                     131  alloc ptr->i32 [temp_25_array_init_ptr_18] 
              #                     135  alloc ptr->i32 [temp_26_array_init_ptr_18] 
              #                     139  alloc ptr->i32 [temp_27_array_init_ptr_18] 
              #                     143  alloc ptr->i32 [temp_28_array_init_ptr_18] 
              #                     147  alloc ptr->i32 [temp_29_array_init_ptr_18] 
              #                     151  alloc ptr->i32 [temp_30_array_init_ptr_18] 
              #                     155  alloc ptr->i32 [temp_31_array_init_ptr_18] 
              #                     159  alloc ptr->i32 [temp_32_array_init_ptr_18] 
              #                     163  alloc ptr->i32 [temp_33_array_init_ptr_18] 
              #                     167  alloc ptr->i32 [temp_34_array_init_ptr_18] 
              #                     171  alloc ptr->i32 [temp_35_array_init_ptr_18] 
              #                     175  alloc ptr->i32 [temp_36_array_init_ptr_18] 
              #                     179  alloc ptr->i32 [temp_37_array_init_ptr_18] 
              #                     183  alloc ptr->i32 [temp_38_array_init_ptr_18] 
              #                     187  alloc ptr->i32 [temp_39_array_init_ptr_18] 
              #                     191  alloc ptr->i32 [temp_40_array_init_ptr_18] 
              #                     195  alloc ptr->i32 [temp_41_array_init_ptr_18] 
              #                     199  alloc Array:i32:[Some(20_0)] [mult2_18] 
              #                     201  alloc i32 [len1_18] 
              #                     203  alloc i32 [len2_18] 
              #                     205  alloc Array:i32:[Some(25_0)] [c1_18] 
              #                     207  alloc Array:i32:[Some(25_0)] [c2_18] 
              #                     209  alloc ptr->i32 [temp_42_array_init_ptr_18] 
              #                     212  alloc Array:i32:[Some(40_0)] [result_18] 
              #                     215  alloc i32 [temp_43_arithop_18] 
              #                     217  alloc i32 [temp_44_arithop_18] 
              #                     222  alloc i32 [temp_45_arithop_18] 
              #                     228  alloc ptr->i32 [temp_46_ptr_of_result_18_73] 
              #                     230  alloc i32 [temp_47_ele_of_result_18_73] 
              #                     234  alloc i32 [temp_48_arithop_73] 
              #                     237  alloc ptr->i32 [temp_49_ptr_of_result_18_67] 
              #                     239  alloc i32 [temp_50_ele_of_result_18_67] 
              #                     243  alloc ptr->i32 [temp_51_ptr_of_c2_18_50] 
              #                     245  alloc i32 [temp_52_ele_of_c2_18_50] 
              #                     249  alloc i32 [temp_53_arithop_50] 
              #                     252  alloc i32 [temp_54_arithop_50] 
              #                     254  alloc i32 [temp_55_arithop_50] 
              #                     257  alloc i32 [temp_56_arithop_50] 
              #                     260  alloc ptr->i32 [temp_57_ptr_of_result_18_55] 
              #                     262  alloc i32 [temp_58_ele_of_result_18_55] 
              #                     265  alloc ptr->i32 [temp_59_ptr_of_c1_18_55] 
              #                     267  alloc i32 [temp_60_ele_of_c1_18_55] 
              #                     270  alloc i32 [temp_61_arithop_55] 
              #                     272  alloc i32 [temp_62_arithop_55] 
              #                     275  alloc ptr->i32 [temp_63_ptr_of_result_18_57] 
              #                     279  alloc i32 [temp_64_arithop_55] 
              #                     282  alloc i32 [temp_65_arithop_55] 
              #                     285  alloc ptr->i32 [temp_66_ptr_of_result_18_59] 
              #                     289  alloc i32 [temp_67_arithop_59] 
              #                     291  alloc ptr->i32 [temp_68_ptr_of_result_18_59] 
              #                     293  alloc i32 [temp_69_arithop_59] 
              #                     295  alloc ptr->i32 [temp_70_ptr_of_result_18_59] 
              #                     297  alloc i32 [temp_71_ele_of_result_18_59] 
              #                     300  alloc i32 [temp_72_arithop_59] 
              #                     302  alloc i32 [temp_73_arithop_59] 
              #                     306  alloc ptr->i32 [temp_74_ptr_of_result_18_43] 
              #                     310  alloc i32 [temp_75_arithop_43] 
              #                     313  alloc ptr->i32 [temp_76_ptr_of_c2_18_36] 
              #                     315  alloc ptr->i32 [temp_77_ptr_of_mult2_18_36] 
              #                     317  alloc i32 [temp_78_ele_of_mult2_18_36] 
              #                     322  alloc i32 [temp_79_arithop_36] 
              #                     325  alloc ptr->i32 [temp_80_ptr_of_c1_18_30] 
              #                     327  alloc ptr->i32 [temp_81_ptr_of_mult1_18_30] 
              #                     329  alloc i32 [temp_82_ele_of_mult1_18_30] 
              #                     334  alloc i32 [temp_83_arithop_30] 
              #                     337  alloc i1 [temp_84_cmp_28] 
              #                     343  alloc i1 [temp_85_cmp_34] 
              #                     349  alloc i1 [temp_86_cmp_41] 
              #                     355  alloc i1 [temp_87_cmp_48] 
              #                     361  alloc ptr->i32 [temp_88_ptr_of_result_18_67] 
              #                     363  alloc i32 [temp_89_ele_of_result_18_67] 
              #                     366  alloc i1 [temp_90_cmp_67] 
              #                     371  alloc i32 [temp_91_arithop_71] 
              #                     373  alloc i32 [temp_92_arithop_71] 
              #                     375  alloc i1 [temp_93_cmp_71] 
              #                     383  alloc i1 [temp_94_cmp_53] 
              #                     389  alloc i1 [temp_95_cmp_57] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     21    
              #                     23    
              #                     25    
              #                     27    
              #                     29    
              #                     30    
              #                     32   temp_0_array_init_ptr_18 = GEP mult1_18_0:Array:i32:[Some(20_0)] [] 
              #                    occupy a0 with temp_0_array_init_ptr_18
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     33    Call void memset_0(temp_0_array_init_ptr_18, 0_0, 80_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_0_array_init_ptr_18
              #                    store to temp_0_array_init_ptr_18 in mem offset legal
    sd      a0,1096(sp)
              #                    release a0 with temp_0_array_init_ptr_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_array_init_ptr_18_0
              #                    load from temp_0_array_init_ptr_18 in mem
    ld      a0,1096(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_80_0_0
    li      a2, 80
              #                    arg load ended


    call    memset
              #                     474  untrack temp_0_array_init_ptr_18 
              #                     395  mu mult1_18_0:33 
              #                     396  mult1_18_1 = chi mult1_18_0:33 
              #                     35   temp_1_array_init_ptr_18 = GEP mult1_18_1:Array:i32:[Some(20_0)] [Some(13_0)] 
              #                    occupy a0 with temp_1_array_init_ptr_18
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 13
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     36   store 4_0:i32 temp_1_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_1_array_init_ptr_18
              #                    occupy a2 with 4_0
    li      a2, 4
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     470  untrack temp_1_array_init_ptr_18 
              #                    occupy a0 with temp_1_array_init_ptr_18
              #                    release a0 with temp_1_array_init_ptr_18
              #                     37   mult1_18_2 = chi mult1_18_1:36 
              #                     39   temp_2_array_init_ptr_18 = GEP mult1_18_2:Array:i32:[Some(20_0)] [Some(1_0)] 
              #                    occupy a0 with temp_2_array_init_ptr_18
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     40   store 2_0:i32 temp_2_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_2_array_init_ptr_18
              #                    occupy a4 with 2_0
    li      a4, 2
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     452  untrack temp_2_array_init_ptr_18 
              #                    occupy a0 with temp_2_array_init_ptr_18
              #                    release a0 with temp_2_array_init_ptr_18
              #                     41   mult1_18_3 = chi mult1_18_2:40 
              #                     43   temp_3_array_init_ptr_18 = GEP mult1_18_3:Array:i32:[Some(20_0)] [Some(0_0)] 
              #                    occupy a0 with temp_3_array_init_ptr_18
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     44   store 1_0:i32 temp_3_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_3_array_init_ptr_18
              #                    occupy a6 with 1_0
    li      a6, 1
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     476  untrack temp_3_array_init_ptr_18 
              #                    occupy a0 with temp_3_array_init_ptr_18
              #                    release a0 with temp_3_array_init_ptr_18
              #                     45   mult1_18_4 = chi mult1_18_3:44 
              #                     47   temp_4_array_init_ptr_18 = GEP mult1_18_4:Array:i32:[Some(20_0)] [Some(9_0)] 
              #                    occupy a0 with temp_4_array_init_ptr_18
    li      a0, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 9
    add     a0,a0,a7
              #                    free a7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     48   store 0_0:i32 temp_4_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_4_array_init_ptr_18
              #                    occupy s1 with 0_0
    li      s1, 0
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                     446  untrack temp_4_array_init_ptr_18 
              #                    occupy a0 with temp_4_array_init_ptr_18
              #                    release a0 with temp_4_array_init_ptr_18
              #                     49   mult1_18_5 = chi mult1_18_4:48 
              #                     51   temp_5_array_init_ptr_18 = GEP mult1_18_5:Array:i32:[Some(20_0)] [Some(11_0)] 
              #                    occupy a0 with temp_5_array_init_ptr_18
    li      a0, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 11
    add     a0,a0,s2
              #                    free s2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     52   store 2_0:i32 temp_5_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_5_array_init_ptr_18
              #                    found literal reg Some(a4) already exist with 2_0
              #                    occupy a4 with 2_0
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     461  untrack temp_5_array_init_ptr_18 
              #                    occupy a0 with temp_5_array_init_ptr_18
              #                    release a0 with temp_5_array_init_ptr_18
              #                     53   mult1_18_6 = chi mult1_18_5:52 
              #                     55   temp_6_array_init_ptr_18 = GEP mult1_18_6:Array:i32:[Some(20_0)] [Some(6_0)] 
              #                    occupy a0 with temp_6_array_init_ptr_18
    li      a0, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 6
    add     a0,a0,s3
              #                    free s3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     56   store 7_0:i32 temp_6_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_6_array_init_ptr_18
              #                    occupy s4 with 7_0
    li      s4, 7
    sw      s4,0(a0)
              #                    free s4
              #                    free a0
              #                     464  untrack temp_6_array_init_ptr_18 
              #                    occupy a0 with temp_6_array_init_ptr_18
              #                    release a0 with temp_6_array_init_ptr_18
              #                     57   mult1_18_7 = chi mult1_18_6:56 
              #                     59   temp_7_array_init_ptr_18 = GEP mult1_18_7:Array:i32:[Some(20_0)] [Some(8_0)] 
              #                    occupy a0 with temp_7_array_init_ptr_18
    li      a0, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s5, 8
    add     a0,a0,s5
              #                    free s5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     60   store 9_0:i32 temp_7_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_7_array_init_ptr_18
              #                    occupy s6 with 9_0
    li      s6, 9
    sw      s6,0(a0)
              #                    free s6
              #                    free a0
              #                     473  untrack temp_7_array_init_ptr_18 
              #                    occupy a0 with temp_7_array_init_ptr_18
              #                    release a0 with temp_7_array_init_ptr_18
              #                     61   mult1_18_8 = chi mult1_18_7:60 
              #                     63   temp_8_array_init_ptr_18 = GEP mult1_18_8:Array:i32:[Some(20_0)] [Some(2_0)] 
              #                    occupy a0 with temp_8_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     64   store 3_0:i32 temp_8_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_8_array_init_ptr_18
              #                    occupy s7 with 3_0
    li      s7, 3
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     445  untrack temp_8_array_init_ptr_18 
              #                    occupy a0 with temp_8_array_init_ptr_18
              #                    release a0 with temp_8_array_init_ptr_18
              #                     65   mult1_18_9 = chi mult1_18_8:64 
              #                     67   temp_9_array_init_ptr_18 = GEP mult1_18_9:Array:i32:[Some(20_0)] [Some(15_0)] 
              #                    occupy a0 with temp_9_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 15
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     68   store 6_0:i32 temp_9_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_9_array_init_ptr_18
              #                    occupy s7 with 6_0
    li      s7, 6
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     455  untrack temp_9_array_init_ptr_18 
              #                    occupy a0 with temp_9_array_init_ptr_18
              #                    release a0 with temp_9_array_init_ptr_18
              #                     69   mult1_18_10 = chi mult1_18_9:68 
              #                     71   temp_10_array_init_ptr_18 = GEP mult1_18_10:Array:i32:[Some(20_0)] [Some(16_0)] 
              #                    occupy a0 with temp_10_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 16
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     72   store 7_0:i32 temp_10_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_10_array_init_ptr_18
              #                    found literal reg Some(s4) already exist with 7_0
              #                    occupy s4 with 7_0
    sw      s4,0(a0)
              #                    free s4
              #                    free a0
              #                     472  untrack temp_10_array_init_ptr_18 
              #                    occupy a0 with temp_10_array_init_ptr_18
              #                    release a0 with temp_10_array_init_ptr_18
              #                     73   mult1_18_11 = chi mult1_18_10:72 
              #                     75   temp_11_array_init_ptr_18 = GEP mult1_18_11:Array:i32:[Some(20_0)] [Some(3_0)] 
              #                    occupy a0 with temp_11_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 3
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     76   store 4_0:i32 temp_11_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_11_array_init_ptr_18
              #                    found literal reg Some(a2) already exist with 4_0
              #                    occupy a2 with 4_0
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     469  untrack temp_11_array_init_ptr_18 
              #                    occupy a0 with temp_11_array_init_ptr_18
              #                    release a0 with temp_11_array_init_ptr_18
              #                     77   mult1_18_12 = chi mult1_18_11:76 
              #                     79   temp_12_array_init_ptr_18 = GEP mult1_18_12:Array:i32:[Some(20_0)] [Some(18_0)] 
              #                    occupy a0 with temp_12_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 18
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     80   store 9_0:i32 temp_12_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_12_array_init_ptr_18
              #                    found literal reg Some(s6) already exist with 9_0
              #                    occupy s6 with 9_0
    sw      s6,0(a0)
              #                    free s6
              #                    free a0
              #                     439  untrack temp_12_array_init_ptr_18 
              #                    occupy a0 with temp_12_array_init_ptr_18
              #                    release a0 with temp_12_array_init_ptr_18
              #                     81   mult1_18_13 = chi mult1_18_12:80 
              #                     83   temp_13_array_init_ptr_18 = GEP mult1_18_13:Array:i32:[Some(20_0)] [Some(19_0)] 
              #                    occupy a0 with temp_13_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 19
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     84   store 0_0:i32 temp_13_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_13_array_init_ptr_18
              #                    found literal reg Some(s1) already exist with 0_0
              #                    occupy s1 with 0_0
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                     468  untrack temp_13_array_init_ptr_18 
              #                    occupy a0 with temp_13_array_init_ptr_18
              #                    release a0 with temp_13_array_init_ptr_18
              #                     85   mult1_18_14 = chi mult1_18_13:84 
              #                     87   temp_14_array_init_ptr_18 = GEP mult1_18_14:Array:i32:[Some(20_0)] [Some(14_0)] 
              #                    occupy a0 with temp_14_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 14
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     88   store 5_0:i32 temp_14_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_14_array_init_ptr_18
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     451  untrack temp_14_array_init_ptr_18 
              #                    occupy a0 with temp_14_array_init_ptr_18
              #                    release a0 with temp_14_array_init_ptr_18
              #                     89   mult1_18_15 = chi mult1_18_14:88 
              #                     91   temp_15_array_init_ptr_18 = GEP mult1_18_15:Array:i32:[Some(20_0)] [Some(17_0)] 
              #                    occupy a0 with temp_15_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 17
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     92   store 8_0:i32 temp_15_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_15_array_init_ptr_18
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     441  untrack temp_15_array_init_ptr_18 
              #                    occupy a0 with temp_15_array_init_ptr_18
              #                    release a0 with temp_15_array_init_ptr_18
              #                     93   mult1_18_16 = chi mult1_18_15:92 
              #                     95   temp_16_array_init_ptr_18 = GEP mult1_18_16:Array:i32:[Some(20_0)] [Some(7_0)] 
              #                    occupy a0 with temp_16_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 7
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     96   store 8_0:i32 temp_16_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_16_array_init_ptr_18
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     466  untrack temp_16_array_init_ptr_18 
              #                    occupy a0 with temp_16_array_init_ptr_18
              #                    release a0 with temp_16_array_init_ptr_18
              #                     97   mult1_18_17 = chi mult1_18_16:96 
              #                     99   temp_17_array_init_ptr_18 = GEP mult1_18_17:Array:i32:[Some(20_0)] [Some(10_0)] 
              #                    occupy a0 with temp_17_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 10
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     100  store 1_0:i32 temp_17_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_17_array_init_ptr_18
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     443  untrack temp_17_array_init_ptr_18 
              #                    occupy a0 with temp_17_array_init_ptr_18
              #                    release a0 with temp_17_array_init_ptr_18
              #                     101  mult1_18_18 = chi mult1_18_17:100 
              #                     103  temp_18_array_init_ptr_18 = GEP mult1_18_18:Array:i32:[Some(20_0)] [Some(5_0)] 
              #                    occupy a0 with temp_18_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 5
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     104  store 6_0:i32 temp_18_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_18_array_init_ptr_18
              #                    occupy s7 with 6_0
    li      s7, 6
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     458  untrack temp_18_array_init_ptr_18 
              #                    occupy a0 with temp_18_array_init_ptr_18
              #                    release a0 with temp_18_array_init_ptr_18
              #                     105  mult1_18_19 = chi mult1_18_18:104 
              #                     107  temp_19_array_init_ptr_18 = GEP mult1_18_19:Array:i32:[Some(20_0)] [Some(4_0)] 
              #                    occupy a0 with temp_19_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 4
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     108  store 5_0:i32 temp_19_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_19_array_init_ptr_18
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     465  untrack temp_19_array_init_ptr_18 
              #                    occupy a0 with temp_19_array_init_ptr_18
              #                    release a0 with temp_19_array_init_ptr_18
              #                     109  mult1_18_20 = chi mult1_18_19:108 
              #                     111  temp_20_array_init_ptr_18 = GEP mult1_18_20:Array:i32:[Some(20_0)] [Some(12_0)] 
              #                    occupy a0 with temp_20_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 12
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     112  store 3_0:i32 temp_20_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_20_array_init_ptr_18
              #                    occupy s7 with 3_0
    li      s7, 3
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     467  untrack temp_20_array_init_ptr_18 
              #                    occupy a0 with temp_20_array_init_ptr_18
              #                    release a0 with temp_20_array_init_ptr_18
              #                     113  mult1_18_21 = chi mult1_18_20:112 
              #                     115   
              #                     117  temp_21_array_init_ptr_18 = GEP mult2_18_0:Array:i32:[Some(20_0)] [] 
              #                    occupy a0 with temp_21_array_init_ptr_18
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     118   Call void memset_0(temp_21_array_init_ptr_18, 0_0, 80_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_21_array_init_ptr_18
              #                    store to temp_21_array_init_ptr_18 in mem offset legal
    sd      a0,848(sp)
              #                    release a0 with temp_21_array_init_ptr_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_21_array_init_ptr_18_0
              #                    load from temp_21_array_init_ptr_18 in mem
    ld      a0,848(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_80_0_0
    li      a2, 80
              #                    arg load ended


    call    memset
              #                     444  untrack temp_21_array_init_ptr_18 
              #                     397  mu mult2_18_0:118 
              #                     398  mult2_18_1 = chi mult2_18_0:118 
              #                     120  temp_22_array_init_ptr_18 = GEP mult2_18_1:Array:i32:[Some(20_0)] [Some(8_0)] 
              #                    occupy a0 with temp_22_array_init_ptr_18
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 8
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     121  store 0_0:i32 temp_22_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_22_array_init_ptr_18
              #                    occupy a2 with 0_0
    li      a2, 0
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     457  untrack temp_22_array_init_ptr_18 
              #                    occupy a0 with temp_22_array_init_ptr_18
              #                    release a0 with temp_22_array_init_ptr_18
              #                     122  mult2_18_2 = chi mult2_18_1:121 
              #                     124  temp_23_array_init_ptr_18 = GEP mult2_18_2:Array:i32:[Some(20_0)] [Some(1_0)] 
              #                    occupy a0 with temp_23_array_init_ptr_18
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     125  store 3_0:i32 temp_23_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_23_array_init_ptr_18
              #                    occupy a4 with 3_0
    li      a4, 3
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     460  untrack temp_23_array_init_ptr_18 
              #                    occupy a0 with temp_23_array_init_ptr_18
              #                    release a0 with temp_23_array_init_ptr_18
              #                     126  mult2_18_3 = chi mult2_18_2:125 
              #                     128  temp_24_array_init_ptr_18 = GEP mult2_18_3:Array:i32:[Some(20_0)] [Some(10_0)] 
              #                    occupy a0 with temp_24_array_init_ptr_18
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 10
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     129  store 9_0:i32 temp_24_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_24_array_init_ptr_18
              #                    occupy a6 with 9_0
    li      a6, 9
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     438  untrack temp_24_array_init_ptr_18 
              #                    occupy a0 with temp_24_array_init_ptr_18
              #                    release a0 with temp_24_array_init_ptr_18
              #                     130  mult2_18_4 = chi mult2_18_3:129 
              #                     132  temp_25_array_init_ptr_18 = GEP mult2_18_4:Array:i32:[Some(20_0)] [Some(15_0)] 
              #                    occupy a0 with temp_25_array_init_ptr_18
    li      a0, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 15
    add     a0,a0,a7
              #                    free a7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     133  store 3_0:i32 temp_25_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_25_array_init_ptr_18
              #                    found literal reg Some(a4) already exist with 3_0
              #                    occupy a4 with 3_0
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     462  untrack temp_25_array_init_ptr_18 
              #                    occupy a0 with temp_25_array_init_ptr_18
              #                    release a0 with temp_25_array_init_ptr_18
              #                     134  mult2_18_5 = chi mult2_18_4:133 
              #                     136  temp_26_array_init_ptr_18 = GEP mult2_18_5:Array:i32:[Some(20_0)] [Some(0_0)] 
              #                    occupy a0 with temp_26_array_init_ptr_18
    li      a0, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 0
    add     a0,a0,s1
              #                    free s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     137  store 2_0:i32 temp_26_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_26_array_init_ptr_18
              #                    occupy s2 with 2_0
    li      s2, 2
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     471  untrack temp_26_array_init_ptr_18 
              #                    occupy a0 with temp_26_array_init_ptr_18
              #                    release a0 with temp_26_array_init_ptr_18
              #                     138  mult2_18_6 = chi mult2_18_5:137 
              #                     140  temp_27_array_init_ptr_18 = GEP mult2_18_6:Array:i32:[Some(20_0)] [Some(2_0)] 
              #                    occupy a0 with temp_27_array_init_ptr_18
    li      a0, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 2
    add     a0,a0,s3
              #                    free s3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     141  store 4_0:i32 temp_27_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_27_array_init_ptr_18
              #                    occupy s4 with 4_0
    li      s4, 4
    sw      s4,0(a0)
              #                    free s4
              #                    free a0
              #                     477  untrack temp_27_array_init_ptr_18 
              #                    occupy a0 with temp_27_array_init_ptr_18
              #                    release a0 with temp_27_array_init_ptr_18
              #                     142  mult2_18_7 = chi mult2_18_6:141 
              #                     144  temp_28_array_init_ptr_18 = GEP mult2_18_7:Array:i32:[Some(20_0)] [Some(4_0)] 
              #                    occupy a0 with temp_28_array_init_ptr_18
    li      a0, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s5, 4
    add     a0,a0,s5
              #                    free s5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     145  store 5_0:i32 temp_28_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_28_array_init_ptr_18
              #                    occupy s6 with 5_0
    li      s6, 5
    sw      s6,0(a0)
              #                    free s6
              #                    free a0
              #                     448  untrack temp_28_array_init_ptr_18 
              #                    occupy a0 with temp_28_array_init_ptr_18
              #                    release a0 with temp_28_array_init_ptr_18
              #                     146  mult2_18_8 = chi mult2_18_7:145 
              #                     148  temp_29_array_init_ptr_18 = GEP mult2_18_8:Array:i32:[Some(20_0)] [Some(9_0)] 
              #                    occupy a0 with temp_29_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 9
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     149  store 1_0:i32 temp_29_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_29_array_init_ptr_18
              #                    occupy s7 with 1_0
    li      s7, 1
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     449  untrack temp_29_array_init_ptr_18 
              #                    occupy a0 with temp_29_array_init_ptr_18
              #                    release a0 with temp_29_array_init_ptr_18
              #                     150  mult2_18_9 = chi mult2_18_8:149 
              #                     152  temp_30_array_init_ptr_18 = GEP mult2_18_9:Array:i32:[Some(20_0)] [Some(11_0)] 
              #                    occupy a0 with temp_30_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 11
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     153  store 8_0:i32 temp_30_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_30_array_init_ptr_18
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     442  untrack temp_30_array_init_ptr_18 
              #                    occupy a0 with temp_30_array_init_ptr_18
              #                    release a0 with temp_30_array_init_ptr_18
              #                     154  mult2_18_10 = chi mult2_18_9:153 
              #                     156  temp_31_array_init_ptr_18 = GEP mult2_18_10:Array:i32:[Some(20_0)] [Some(17_0)] 
              #                    occupy a0 with temp_31_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 17
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     157  store 1_0:i32 temp_31_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_31_array_init_ptr_18
              #                    occupy s7 with 1_0
    li      s7, 1
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     440  untrack temp_31_array_init_ptr_18 
              #                    occupy a0 with temp_31_array_init_ptr_18
              #                    release a0 with temp_31_array_init_ptr_18
              #                     158  mult2_18_11 = chi mult2_18_10:157 
              #                     160  temp_32_array_init_ptr_18 = GEP mult2_18_11:Array:i32:[Some(20_0)] [Some(18_0)] 
              #                    occupy a0 with temp_32_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 18
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     161  store 2_0:i32 temp_32_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_32_array_init_ptr_18
              #                    found literal reg Some(s2) already exist with 2_0
              #                    occupy s2 with 2_0
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     475  untrack temp_32_array_init_ptr_18 
              #                    occupy a0 with temp_32_array_init_ptr_18
              #                    release a0 with temp_32_array_init_ptr_18
              #                     162  mult2_18_12 = chi mult2_18_11:161 
              #                     164  temp_33_array_init_ptr_18 = GEP mult2_18_12:Array:i32:[Some(20_0)] [Some(5_0)] 
              #                    occupy a0 with temp_33_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 5
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     165  store 7_0:i32 temp_33_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_33_array_init_ptr_18
              #                    occupy s7 with 7_0
    li      s7, 7
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     437  untrack temp_33_array_init_ptr_18 
              #                    occupy a0 with temp_33_array_init_ptr_18
              #                    release a0 with temp_33_array_init_ptr_18
              #                     166  mult2_18_13 = chi mult2_18_12:165 
              #                     168  temp_34_array_init_ptr_18 = GEP mult2_18_13:Array:i32:[Some(20_0)] [Some(7_0)] 
              #                    occupy a0 with temp_34_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 7
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     169  store 9_0:i32 temp_34_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_34_array_init_ptr_18
              #                    found literal reg Some(a6) already exist with 9_0
              #                    occupy a6 with 9_0
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     447  untrack temp_34_array_init_ptr_18 
              #                    occupy a0 with temp_34_array_init_ptr_18
              #                    release a0 with temp_34_array_init_ptr_18
              #                     170  mult2_18_14 = chi mult2_18_13:169 
              #                     172  temp_35_array_init_ptr_18 = GEP mult2_18_14:Array:i32:[Some(20_0)] [Some(13_0)] 
              #                    occupy a0 with temp_35_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 13
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     173  store 6_0:i32 temp_35_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_35_array_init_ptr_18
              #                    occupy s7 with 6_0
    li      s7, 6
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     454  untrack temp_35_array_init_ptr_18 
              #                    occupy a0 with temp_35_array_init_ptr_18
              #                    release a0 with temp_35_array_init_ptr_18
              #                     174  mult2_18_15 = chi mult2_18_14:173 
              #                     176  temp_36_array_init_ptr_18 = GEP mult2_18_15:Array:i32:[Some(20_0)] [Some(14_0)] 
              #                    occupy a0 with temp_36_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 14
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     177  store 4_0:i32 temp_36_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_36_array_init_ptr_18
              #                    found literal reg Some(s4) already exist with 4_0
              #                    occupy s4 with 4_0
    sw      s4,0(a0)
              #                    free s4
              #                    free a0
              #                     456  untrack temp_36_array_init_ptr_18 
              #                    occupy a0 with temp_36_array_init_ptr_18
              #                    release a0 with temp_36_array_init_ptr_18
              #                     178  mult2_18_16 = chi mult2_18_15:177 
              #                     180  temp_37_array_init_ptr_18 = GEP mult2_18_16:Array:i32:[Some(20_0)] [Some(6_0)] 
              #                    occupy a0 with temp_37_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     181  store 9_0:i32 temp_37_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_37_array_init_ptr_18
              #                    found literal reg Some(a6) already exist with 9_0
              #                    occupy a6 with 9_0
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     436  untrack temp_37_array_init_ptr_18 
              #                    occupy a0 with temp_37_array_init_ptr_18
              #                    release a0 with temp_37_array_init_ptr_18
              #                     182  mult2_18_17 = chi mult2_18_16:181 
              #                     184  temp_38_array_init_ptr_18 = GEP mult2_18_17:Array:i32:[Some(20_0)] [Some(16_0)] 
              #                    occupy a0 with temp_38_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 16
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     185  store 2_0:i32 temp_38_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_38_array_init_ptr_18
              #                    found literal reg Some(s2) already exist with 2_0
              #                    occupy s2 with 2_0
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     450  untrack temp_38_array_init_ptr_18 
              #                    occupy a0 with temp_38_array_init_ptr_18
              #                    release a0 with temp_38_array_init_ptr_18
              #                     186  mult2_18_18 = chi mult2_18_17:185 
              #                     188  temp_39_array_init_ptr_18 = GEP mult2_18_18:Array:i32:[Some(20_0)] [Some(3_0)] 
              #                    occupy a0 with temp_39_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 3
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     189  store 2_0:i32 temp_39_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_39_array_init_ptr_18
              #                    found literal reg Some(s2) already exist with 2_0
              #                    occupy s2 with 2_0
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     463  untrack temp_39_array_init_ptr_18 
              #                    occupy a0 with temp_39_array_init_ptr_18
              #                    release a0 with temp_39_array_init_ptr_18
              #                     190  mult2_18_19 = chi mult2_18_18:189 
              #                     192  temp_40_array_init_ptr_18 = GEP mult2_18_19:Array:i32:[Some(20_0)] [Some(19_0)] 
              #                    occupy a0 with temp_40_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 19
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     193  store 2_0:i32 temp_40_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_40_array_init_ptr_18
              #                    found literal reg Some(s2) already exist with 2_0
              #                    occupy s2 with 2_0
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     459  untrack temp_40_array_init_ptr_18 
              #                    occupy a0 with temp_40_array_init_ptr_18
              #                    release a0 with temp_40_array_init_ptr_18
              #                     194  mult2_18_20 = chi mult2_18_19:193 
              #                     196  temp_41_array_init_ptr_18 = GEP mult2_18_20:Array:i32:[Some(20_0)] [Some(12_0)] 
              #                    occupy a0 with temp_41_array_init_ptr_18
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 12
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,608
              #                    free a0
              #                     197  store 7_0:i32 temp_41_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_41_array_init_ptr_18
              #                    occupy s7 with 7_0
    li      s7, 7
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     435  untrack temp_41_array_init_ptr_18 
              #                    occupy a0 with temp_41_array_init_ptr_18
              #                    release a0 with temp_41_array_init_ptr_18
              #                     198  mult2_18_21 = chi mult2_18_20:197 
              #                     200  (nop) 
              #                     202  (nop) 
              #                     204   
              #                     206   
              #                     208   
              #                     210  temp_42_array_init_ptr_18 = GEP result_18_0:Array:i32:[Some(40_0)] [] 
              #                    occupy a0 with temp_42_array_init_ptr_18
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,240
              #                    free a0
              #                     211   Call void memset_0(temp_42_array_init_ptr_18, 0_0, 160_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_42_array_init_ptr_18
              #                    store to temp_42_array_init_ptr_18 in mem offset legal
    sd      a0,400(sp)
              #                    release a0 with temp_42_array_init_ptr_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_42_array_init_ptr_18_0
              #                    load from temp_42_array_init_ptr_18 in mem
    ld      a0,400(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_160_0_0
    li      a2, 160
              #                    arg load ended


    call    memset
              #                     453  untrack temp_42_array_init_ptr_18 
              #                     399  mu result_18_0:211 
              #                     400  result_18_1 = chi result_18_0:211 
              #                     213  (nop) 
              #                     419  i_18_2 = i32 0_0 
              #                    occupy a0 with i_18_2
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_29 
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: i_18_2, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     339  label while.head_29: 
.while.head_29:
              #                     338  temp_84_cmp_28_0 = icmp i32 Slt i_18_2, 20_0 
              #                    occupy a0 with i_18_2
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a2 with temp_84_cmp_28_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     342  br i1 temp_84_cmp_28_0, label while.body_29, label while.exit_29 
              #                    occupy a2 with temp_84_cmp_28_0
              #                    free a2
              #                    occupy a2 with temp_84_cmp_28_0
    bnez    a2, .while.body_29
              #                    free a2
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: i_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     340  label while.body_29: 
.while.body_29:
              #                     326  temp_80_ptr_of_c1_18_30 = GEP c1_18_1:Array:i32:[Some(25_0)] [Some(i_18_2)] 
              #                    occupy a1 with temp_80_ptr_of_c1_18_30
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_18_2
    mv      a3, a0
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,508
              #                    free a1
              #                     328  temp_81_ptr_of_mult1_18_30 = GEP mult1_18_21:Array:i32:[Some(20_0)] [Some(i_18_2)] 
              #                    occupy a4 with temp_81_ptr_of_mult1_18_30
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_18_2
    mv      a5, a0
              #                    free a0
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,856
              #                    free a4
              #                     330  temp_82_ele_of_mult1_18_30_0 = load temp_81_ptr_of_mult1_18_30:ptr->i32 
              #                    occupy a4 with temp_81_ptr_of_mult1_18_30
              #                    occupy a6 with temp_82_ele_of_mult1_18_30_0
    lw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                     331  mu mult1_18_21:330 
              #                     332  store temp_82_ele_of_mult1_18_30_0:i32 temp_80_ptr_of_c1_18_30:ptr->i32 
              #                    occupy a1 with temp_80_ptr_of_c1_18_30
              #                    occupy a6 with temp_82_ele_of_mult1_18_30_0
    sw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                     333  c1_18_2 = chi c1_18_1:332 
              #                     335  temp_83_arithop_30_0 = Add i32 i_18_2, 1_0 
              #                    occupy a0 with i_18_2
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_83_arithop_30_0
    ADDW    s1,a0,a7
              #                    free a0
              #                    free a7
              #                    free s1
              #                     336  (nop) 
              #                     420  i_18_2 = i32 temp_83_arithop_30_0 
              #                    occupy s1 with temp_83_arithop_30_0
              #                    occupy a0 with i_18_2
    mv      a0, s1
              #                    free s1
              #                    free a0
              #                          jump label: while.head_29 
              #                    occupy a4 with temp_81_ptr_of_mult1_18_30
              #                    store to temp_81_ptr_of_mult1_18_30 in mem offset legal
    sd      a4,32(sp)
              #                    release a4 with temp_81_ptr_of_mult1_18_30
              #                    occupy a6 with temp_82_ele_of_mult1_18_30_0
              #                    store to temp_82_ele_of_mult1_18_30_0 in mem offset legal
    sw      a6,28(sp)
              #                    release a6 with temp_82_ele_of_mult1_18_30_0
              #                    occupy a2 with temp_84_cmp_28_0
              #                    store to temp_84_cmp_28_0 in mem offset legal
    sb      a2,23(sp)
              #                    release a2 with temp_84_cmp_28_0
              #                    occupy a1 with temp_80_ptr_of_c1_18_30
              #                    store to temp_80_ptr_of_c1_18_30 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_80_ptr_of_c1_18_30
              #                    occupy s1 with temp_83_arithop_30_0
              #                    store to temp_83_arithop_30_0 in mem offset legal
    sw      s1,24(sp)
              #                    release s1 with temp_83_arithop_30_0
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: i_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     341  label while.exit_29: 
.while.exit_29:
              #                     478  untrack i_18_2 
              #                    occupy a0 with i_18_2
              #                    release a0 with i_18_2
              #                     214  (nop) 
              #                     421  i_18_5 = i32 0_0 
              #                    occupy a0 with i_18_5
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_35 
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: i_18_5, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     345  label while.head_35: 
.while.head_35:
              #                     344  temp_85_cmp_34_0 = icmp i32 Slt i_18_5, 20_0 
              #                    occupy a0 with i_18_5
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a3 with temp_85_cmp_34_0
    slt     a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     348  br i1 temp_85_cmp_34_0, label while.body_35, label while.exit_35 
              #                    occupy a3 with temp_85_cmp_34_0
              #                    free a3
              #                    occupy a3 with temp_85_cmp_34_0
    bnez    a3, .while.body_35
              #                    free a3
    j       .while.exit_35
              #                    regtab     a0:Freed { symidx: i_18_5, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     346  label while.body_35: 
.while.body_35:
              #                     314  temp_76_ptr_of_c2_18_36 = GEP c2_18_1:Array:i32:[Some(25_0)] [Some(i_18_5)] 
              #                    occupy a1 with temp_76_ptr_of_c2_18_36
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_18_5
    mv      a4, a0
              #                    free a0
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,408
              #                    free a1
              #                     316  temp_77_ptr_of_mult2_18_36 = GEP mult2_18_21:Array:i32:[Some(20_0)] [Some(i_18_5)] 
              #                    occupy a5 with temp_77_ptr_of_mult2_18_36
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_18_5
    mv      a6, a0
              #                    free a0
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,608
              #                    free a5
              #                     318  temp_78_ele_of_mult2_18_36_0 = load temp_77_ptr_of_mult2_18_36:ptr->i32 
              #                    occupy a5 with temp_77_ptr_of_mult2_18_36
              #                    occupy a7 with temp_78_ele_of_mult2_18_36_0
    lw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                     319  mu mult2_18_21:318 
              #                     320  store temp_78_ele_of_mult2_18_36_0:i32 temp_76_ptr_of_c2_18_36:ptr->i32 
              #                    occupy a1 with temp_76_ptr_of_c2_18_36
              #                    occupy a7 with temp_78_ele_of_mult2_18_36_0
    sw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                     321  c2_18_2 = chi c2_18_1:320 
              #                     323  temp_79_arithop_36_0 = Add i32 i_18_5, 1_0 
              #                    occupy a0 with i_18_5
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_79_arithop_36_0
    ADDW    s2,a0,s1
              #                    free a0
              #                    free s1
              #                    free s2
              #                     324  (nop) 
              #                     422  i_18_5 = i32 temp_79_arithop_36_0 
              #                    occupy s2 with temp_79_arithop_36_0
              #                    occupy a0 with i_18_5
    mv      a0, s2
              #                    free s2
              #                    free a0
              #                          jump label: while.head_35 
              #                    occupy a3 with temp_85_cmp_34_0
              #                    store to temp_85_cmp_34_0 in mem offset legal
    sb      a3,22(sp)
              #                    release a3 with temp_85_cmp_34_0
              #                    occupy a5 with temp_77_ptr_of_mult2_18_36
              #                    store to temp_77_ptr_of_mult2_18_36 in mem offset legal
    sd      a5,56(sp)
              #                    release a5 with temp_77_ptr_of_mult2_18_36
              #                    occupy a1 with temp_76_ptr_of_c2_18_36
              #                    store to temp_76_ptr_of_c2_18_36 in mem offset legal
    sd      a1,64(sp)
              #                    release a1 with temp_76_ptr_of_c2_18_36
              #                    occupy a7 with temp_78_ele_of_mult2_18_36_0
              #                    store to temp_78_ele_of_mult2_18_36_0 in mem offset legal
    sw      a7,52(sp)
              #                    release a7 with temp_78_ele_of_mult2_18_36_0
              #                    occupy s2 with temp_79_arithop_36_0
              #                    store to temp_79_arithop_36_0 in mem offset legal
    sw      s2,48(sp)
              #                    release s2 with temp_79_arithop_36_0
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: i_18_5, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     347  label while.exit_35: 
.while.exit_35:
              #                     479  untrack i_18_5 
              #                    occupy a0 with i_18_5
              #                    release a0 with i_18_5
              #                     216  (nop) 
              #                     218  (nop) 
              #                     219  (nop) 
              #                     220  (nop) 
              #                     423  i_18_8 = i32 0_0 
              #                    occupy a0 with i_18_8
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_42 
    j       .while.head_42
              #                    regtab     a0:Freed { symidx: i_18_8, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     351  label while.head_42: 
.while.head_42:
              #                     350  temp_86_cmp_41_0 = icmp i32 Sle i_18_8, 39_0 
              #                    occupy a0 with i_18_8
              #                    occupy a1 with 39_0
    li      a1, 39
              #                    occupy a4 with temp_86_cmp_41_0
    slt     a4,a1,a0
    xori    a4,a4,1
              #                    free a0
              #                    free a1
              #                    free a4
              #                     354  br i1 temp_86_cmp_41_0, label while.body_42, label while.exit_42 
              #                    occupy a4 with temp_86_cmp_41_0
              #                    free a4
              #                    occupy a4 with temp_86_cmp_41_0
    bnez    a4, .while.body_42
              #                    free a4
    j       .while.exit_42
              #                    regtab     a0:Freed { symidx: i_18_8, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     352  label while.body_42: 
.while.body_42:
              #                     307  temp_74_ptr_of_result_18_43 = GEP result_18_2:Array:i32:[Some(40_0)] [Some(i_18_8)] 
              #                    occupy a1 with temp_74_ptr_of_result_18_43
    li      a1, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_18_8
    mv      a5, a0
              #                    free a0
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,240
              #                    free a1
              #                     308  store 0_0:i32 temp_74_ptr_of_result_18_43:ptr->i32 
              #                    occupy a1 with temp_74_ptr_of_result_18_43
              #                    occupy a6 with 0_0
    li      a6, 0
    sw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                     309  result_18_3 = chi result_18_2:308 
              #                     311  temp_75_arithop_43_0 = Add i32 i_18_8, 1_0 
              #                    occupy a0 with i_18_8
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_75_arithop_43_0
    ADDW    s1,a0,a7
              #                    free a0
              #                    free a7
              #                    free s1
              #                     312  (nop) 
              #                     424  i_18_8 = i32 temp_75_arithop_43_0 
              #                    occupy s1 with temp_75_arithop_43_0
              #                    occupy a0 with i_18_8
    mv      a0, s1
              #                    free s1
              #                    free a0
              #                          jump label: while.head_42 
              #                    occupy a4 with temp_86_cmp_41_0
              #                    store to temp_86_cmp_41_0 in mem offset legal
    sb      a4,21(sp)
              #                    release a4 with temp_86_cmp_41_0
              #                    occupy a1 with temp_74_ptr_of_result_18_43
              #                    store to temp_74_ptr_of_result_18_43 in mem offset legal
    sd      a1,80(sp)
              #                    release a1 with temp_74_ptr_of_result_18_43
              #                    occupy s1 with temp_75_arithop_43_0
              #                    store to temp_75_arithop_43_0 in mem offset legal
    sw      s1,76(sp)
              #                    release s1 with temp_75_arithop_43_0
    j       .while.head_42
              #                    regtab     a0:Freed { symidx: i_18_8, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     353  label while.exit_42: 
.while.exit_42:
              #                     480  untrack i_18_8 
              #                    occupy a0 with i_18_8
              #                    release a0 with i_18_8
              #                     221  (nop) 
              #                     223  (nop) 
              #                     224  (nop) 
              #                     250  (nop) 
              #                     425  i_18_11 = i32 19_0 
              #                    occupy a0 with i_18_11
    li      a0, 19
              #                    free a0
              #                     426  n_18_2 = i32 39_0 
              #                    occupy a1 with n_18_2
    li      a1, 39
              #                    free a1
              #                          jump label: while.head_49 
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     357  label while.head_49: 
.while.head_49:
              #                     356  temp_87_cmp_48_0 = icmp i32 Sgt i_18_11, -1_0 
              #                    occupy a0 with i_18_11
              #                    occupy a5 with -1_0
    li      a5, -1
              #                    occupy a6 with temp_87_cmp_48_0
    slt     a6,a5,a0
              #                    free a0
              #                    free a5
              #                    free a6
              #                     360  br i1 temp_87_cmp_48_0, label while.body_49, label while.exit_49 
              #                    occupy a6 with temp_87_cmp_48_0
              #                    free a6
              #                    occupy a6 with temp_87_cmp_48_0
    bnez    a6, .while.body_49
              #                    free a6
    j       .while.exit_49
              #                    regtab     a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     358  label while.body_49: 
.while.body_49:
              #                     244  temp_51_ptr_of_c2_18_50 = GEP c2_18_1:Array:i32:[Some(25_0)] [Some(i_18_11)] 
              #                    occupy a5 with temp_51_ptr_of_c2_18_50
    li      a5, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_18_11
    mv      a7, a0
              #                    free a0
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,408
              #                    free a5
              #                     246  temp_52_ele_of_c2_18_50_0 = load temp_51_ptr_of_c2_18_50:ptr->i32 
              #                    occupy a5 with temp_51_ptr_of_c2_18_50
              #                    occupy s1 with temp_52_ele_of_c2_18_50_0
    lw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                     247  mu c2_18_1:246 
              #                     248  (nop) 
              #                     251  (nop) 
              #                     427  n_18_3 = i32 n_18_2 
              #                    occupy a1 with n_18_2
              #                    occupy s2 with n_18_3
    mv      s2, a1
              #                    free a1
              #                    free s2
              #                     428  j_18_3 = i32 19_0 
              #                    occupy s3 with j_18_3
    li      s3, 19
              #                    free s3
              #                    occupy s3 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      s3,1140(sp)
              #                    release s3 with j_18_3
              #                          jump label: while.head_54 
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     s1:Freed { symidx: temp_52_ele_of_c2_18_50_0, tracked: true } |     s2:Freed { symidx: n_18_3, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     385  label while.head_54: 
.while.head_54:
              #                     384  temp_94_cmp_53_0 = icmp i32 Sgt j_18_3, -1_0 
              #                    occupy a7 with j_18_3
              #                    load from j_18_3 in mem


    lw      a7,1140(sp)
              #                    occupy s3 with -1_0
    li      s3, -1
              #                    occupy s4 with temp_94_cmp_53_0
    slt     s4,s3,a7
              #                    free a7
              #                    occupy a7 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      a7,1140(sp)
              #                    release a7 with j_18_3
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_94_cmp_53_0
              #                    store to temp_94_cmp_53_0 in mem offset legal
    sb      s4,1(sp)
              #                    release s4 with temp_94_cmp_53_0
              #                     388  br i1 temp_94_cmp_53_0, label while.body_54, label while.exit_54 
              #                    occupy a7 with temp_94_cmp_53_0
              #                    load from temp_94_cmp_53_0 in mem


    lb      a7,1(sp)
              #                    free a7
              #                    occupy a7 with temp_94_cmp_53_0
              #                    store to temp_94_cmp_53_0 in mem offset legal
    sb      a7,1(sp)
              #                    release a7 with temp_94_cmp_53_0
              #                    occupy a7 with temp_94_cmp_53_0
              #                    load from temp_94_cmp_53_0 in mem


    lb      a7,1(sp)
    bnez    a7, .while.body_54
              #                    free a7
              #                    occupy a7 with temp_94_cmp_53_0
              #                    store to temp_94_cmp_53_0 in mem offset legal
    sb      a7,1(sp)
              #                    release a7 with temp_94_cmp_53_0
    j       .while.exit_54
              #                    regtab     a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     s1:Freed { symidx: temp_52_ele_of_c2_18_50_0, tracked: true } |     s2:Freed { symidx: n_18_3, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     386  label while.body_54: 
.while.body_54:
              #                     261  temp_57_ptr_of_result_18_55 = GEP result_18_5:Array:i32:[Some(40_0)] [Some(n_18_3)] 
              #                    occupy a7 with temp_57_ptr_of_result_18_55
    li      a7, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with n_18_3
    mv      s3, s2
              #                    free s2
              #                    occupy s2 with n_18_3
              #                    store to n_18_3 in mem offset legal
    sw      s2,1120(sp)
              #                    release s2 with n_18_3
    add     a7,a7,s3
              #                    free s3
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,240
              #                    free a7
              #                     263  temp_58_ele_of_result_18_55_0 = load temp_57_ptr_of_result_18_55:ptr->i32 
              #                    occupy a7 with temp_57_ptr_of_result_18_55
              #                    occupy s2 with temp_58_ele_of_result_18_55_0
    lw      s2,0(a7)
              #                    free s2
              #                    occupy s2 with temp_58_ele_of_result_18_55_0
              #                    store to temp_58_ele_of_result_18_55_0 in mem offset legal
    sw      s2,180(sp)
              #                    release s2 with temp_58_ele_of_result_18_55_0
              #                    free a7
              #                     264  mu result_18_5:263 
              #                     266  temp_59_ptr_of_c1_18_55 = GEP c1_18_1:Array:i32:[Some(25_0)] [Some(j_18_3)] 
              #                    occupy s2 with temp_59_ptr_of_c1_18_55
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with j_18_3
              #                    load from j_18_3 in mem


    lw      s4,1140(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      s4,1140(sp)
              #                    release s4 with j_18_3
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,508
              #                    free s2
              #                    occupy s2 with temp_59_ptr_of_c1_18_55
              #                    store to temp_59_ptr_of_c1_18_55 in mem offset legal
    sd      s2,168(sp)
              #                    release s2 with temp_59_ptr_of_c1_18_55
              #                     268  temp_60_ele_of_c1_18_55_0 = load temp_59_ptr_of_c1_18_55:ptr->i32 
              #                    occupy s2 with temp_59_ptr_of_c1_18_55
              #                    load from temp_59_ptr_of_c1_18_55 in mem
    ld      s2,168(sp)
              #                    occupy s3 with temp_60_ele_of_c1_18_55_0
    lw      s3,0(s2)
              #                    free s3
              #                    occupy s3 with temp_60_ele_of_c1_18_55_0
              #                    store to temp_60_ele_of_c1_18_55_0 in mem offset legal
    sw      s3,164(sp)
              #                    release s3 with temp_60_ele_of_c1_18_55_0
              #                    free s2
              #                    occupy s2 with temp_59_ptr_of_c1_18_55
              #                    store to temp_59_ptr_of_c1_18_55 in mem offset legal
    sd      s2,168(sp)
              #                    release s2 with temp_59_ptr_of_c1_18_55
              #                     269  mu c1_18_1:268 
              #                     271  temp_61_arithop_55_0 = Mul i32 temp_52_ele_of_c2_18_50_0, temp_60_ele_of_c1_18_55_0 
              #                    occupy s2 with temp_61_arithop_55_0
              #                    occupy s1 with temp_52_ele_of_c2_18_50_0
              #                    occupy s3 with temp_60_ele_of_c1_18_55_0
              #                    load from temp_60_ele_of_c1_18_55_0 in mem


    lw      s3,164(sp)
    mulw    s2,s1,s3
              #                    free s1
              #                    occupy s1 with temp_52_ele_of_c2_18_50_0
              #                    store to temp_52_ele_of_c2_18_50_0 in mem offset legal
    sw      s1,204(sp)
              #                    release s1 with temp_52_ele_of_c2_18_50_0
              #                    free s3
              #                    occupy s3 with temp_60_ele_of_c1_18_55_0
              #                    store to temp_60_ele_of_c1_18_55_0 in mem offset legal
    sw      s3,164(sp)
              #                    release s3 with temp_60_ele_of_c1_18_55_0
              #                    free s2
              #                     273  temp_62_arithop_55_0 = Add i32 temp_58_ele_of_result_18_55_0, temp_61_arithop_55_0 
              #                    occupy s1 with temp_58_ele_of_result_18_55_0
              #                    load from temp_58_ele_of_result_18_55_0 in mem


    lw      s1,180(sp)
              #                    occupy s2 with temp_61_arithop_55_0
              #                    occupy s3 with temp_62_arithop_55_0
    ADDW    s3,s1,s2
              #                    free s1
              #                    occupy s1 with temp_58_ele_of_result_18_55_0
              #                    store to temp_58_ele_of_result_18_55_0 in mem offset legal
    sw      s1,180(sp)
              #                    release s1 with temp_58_ele_of_result_18_55_0
              #                    free s2
              #                    occupy s2 with temp_61_arithop_55_0
              #                    store to temp_61_arithop_55_0 in mem offset legal
    sw      s2,160(sp)
              #                    release s2 with temp_61_arithop_55_0
              #                    free s3
              #                     274  (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     a7:Freed { symidx: temp_57_ptr_of_result_18_55, tracked: true } |     s3:Freed { symidx: temp_62_arithop_55_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     390  temp_95_cmp_57_0 = icmp i32 Sge temp_62_arithop_55_0, 10_0 
              #                    occupy s3 with temp_62_arithop_55_0
              #                    occupy s1 with 10_0
    li      s1, 10
              #                    occupy s2 with temp_95_cmp_57_0
    slt     s2,s3,s1
    xori    s2,s2,1
              #                    free s3
              #                    occupy s3 with temp_62_arithop_55_0
              #                    store to temp_62_arithop_55_0 in mem offset legal
    sw      s3,156(sp)
              #                    release s3 with temp_62_arithop_55_0
              #                    free s1
              #                    free s2
              #                     393  br i1 temp_95_cmp_57_0, label branch_true_58, label branch_false_58 
              #                    occupy s2 with temp_95_cmp_57_0
              #                    free s2
              #                    occupy s2 with temp_95_cmp_57_0
    bnez    s2, .branch_true_58
              #                    free s2
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     a7:Freed { symidx: temp_57_ptr_of_result_18_55, tracked: true } |     s2:Freed { symidx: temp_95_cmp_57_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     391  label branch_true_58: 
.branch_true_58:
              #                     488  untrack temp_60_ele_of_c1_18_55_0 
              #                     487  untrack temp_59_ptr_of_c1_18_55 
              #                     486  untrack temp_95_cmp_57_0 
              #                    occupy s2 with temp_95_cmp_57_0
              #                    release s2 with temp_95_cmp_57_0
              #                     485  untrack temp_94_cmp_53_0 
              #                     484  untrack temp_58_ele_of_result_18_55_0 
              #                     483  untrack temp_61_arithop_55_0 
              #                     286  (nop) 
              #                     287  store temp_62_arithop_55_0:i32 temp_57_ptr_of_result_18_55:ptr->i32 
              #                    occupy a7 with temp_57_ptr_of_result_18_55
              #                    occupy s1 with temp_62_arithop_55_0
              #                    load from temp_62_arithop_55_0 in mem


    lw      s1,156(sp)
    sw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                     495  untrack temp_57_ptr_of_result_18_55 
              #                    occupy a7 with temp_57_ptr_of_result_18_55
              #                    release a7 with temp_57_ptr_of_result_18_55
              #                     288  result_18_6 = chi result_18_5:287 
              #                     290  temp_67_arithop_59_0 = Sub i32 n_18_3, 1_0 
              #                    occupy a7 with n_18_3
              #                    load from n_18_3 in mem


    lw      a7,1120(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_67_arithop_59_0
              #                    regtab:    a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     a7:Occupied { symidx: n_18_3, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_62_arithop_55_0, tracked: true } |     s2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_67_arithop_59_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    s3,a7,s2
              #                    free a7
              #                    occupy a7 with n_18_3
              #                    store to n_18_3 in mem offset legal
    sw      a7,1120(sp)
              #                    release a7 with n_18_3
              #                    free s2
              #                    free s3
              #                     292  temp_68_ptr_of_result_18_59 = GEP result_18_6:Array:i32:[Some(40_0)] [Some(temp_67_arithop_59_0)] 
              #                    occupy a7 with temp_68_ptr_of_result_18_59
    li      a7, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with temp_67_arithop_59_0
    mv      s2, s3
              #                    free s3
              #                    occupy s3 with temp_67_arithop_59_0
              #                    store to temp_67_arithop_59_0 in mem offset legal
    sw      s3,124(sp)
              #                    release s3 with temp_67_arithop_59_0
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,240
              #                    free a7
              #                     489  untrack temp_67_arithop_59_0 
              #                     294  (nop) 
              #                     296  (nop) 
              #                     298  temp_71_ele_of_result_18_59_0 = load temp_68_ptr_of_result_18_59:ptr->i32 
              #                    occupy a7 with temp_68_ptr_of_result_18_59
              #                    occupy s2 with temp_71_ele_of_result_18_59_0
    lw      s2,0(a7)
              #                    free s2
              #                    occupy s2 with temp_71_ele_of_result_18_59_0
              #                    store to temp_71_ele_of_result_18_59_0 in mem offset legal
    sw      s2,100(sp)
              #                    release s2 with temp_71_ele_of_result_18_59_0
              #                    free a7
              #                     299  mu result_18_6:298 
              #                     301  temp_72_arithop_59_0 = Div i32 temp_62_arithop_55_0, 10_0 
              #                    occupy s1 with temp_62_arithop_55_0
              #                    occupy s2 with 10_0
    li      s2, 10
              #                    occupy s3 with temp_72_arithop_59_0
    divw    s3,s1,s2
              #                    free s1
              #                    occupy s1 with temp_62_arithop_55_0
              #                    store to temp_62_arithop_55_0 in mem offset legal
    sw      s1,156(sp)
              #                    release s1 with temp_62_arithop_55_0
              #                    free s2
              #                    free s3
              #                     490  untrack temp_62_arithop_55_0 
              #                     303  temp_73_arithop_59_0 = Add i32 temp_71_ele_of_result_18_59_0, temp_72_arithop_59_0 
              #                    occupy s1 with temp_71_ele_of_result_18_59_0
              #                    load from temp_71_ele_of_result_18_59_0 in mem


    lw      s1,100(sp)
              #                    occupy s3 with temp_72_arithop_59_0
              #                    occupy s2 with temp_73_arithop_59_0
    ADDW    s2,s1,s3
              #                    free s1
              #                    occupy s1 with temp_71_ele_of_result_18_59_0
              #                    store to temp_71_ele_of_result_18_59_0 in mem offset legal
    sw      s1,100(sp)
              #                    release s1 with temp_71_ele_of_result_18_59_0
              #                    free s3
              #                    occupy s3 with temp_72_arithop_59_0
              #                    store to temp_72_arithop_59_0 in mem offset legal
    sw      s3,96(sp)
              #                    release s3 with temp_72_arithop_59_0
              #                    free s2
              #                     492  untrack temp_72_arithop_59_0 
              #                     491  untrack temp_71_ele_of_result_18_59_0 
              #                     304  store temp_73_arithop_59_0:i32 temp_68_ptr_of_result_18_59:ptr->i32 
              #                    occupy a7 with temp_68_ptr_of_result_18_59
              #                    occupy s2 with temp_73_arithop_59_0
    sw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                     494  untrack temp_68_ptr_of_result_18_59 
              #                    occupy a7 with temp_68_ptr_of_result_18_59
              #                    release a7 with temp_68_ptr_of_result_18_59
              #                     493  untrack temp_73_arithop_59_0 
              #                    occupy s2 with temp_73_arithop_59_0
              #                    release s2 with temp_73_arithop_59_0
              #                     305  result_18_7 = chi result_18_6:304 
              #                          jump label: gather_18 
    j       .gather_18
              #                    regtab     a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     394  label gather_18: 
.gather_18:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     280  temp_64_arithop_55_0 = Sub i32 j_18_3, 1_0 
              #                    occupy a7 with j_18_3
              #                    load from j_18_3 in mem


    lw      a7,1140(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_64_arithop_55_0
              #                    regtab:    a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     a7:Occupied { symidx: j_18_3, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Occupied { symidx: temp_64_arithop_55_0, tracked: true, occupy_count: 1 } |  released_gpr_count:4,released_fpr_count:24


    subw    s2,a7,s1
              #                    free a7
              #                    occupy a7 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      a7,1140(sp)
              #                    release a7 with j_18_3
              #                    free s1
              #                    free s2
              #                     281  (nop) 
              #                     283  temp_65_arithop_55_0 = Sub i32 n_18_3, 1_0 
              #                    occupy a7 with n_18_3
              #                    load from n_18_3 in mem


    lw      a7,1120(sp)
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s3 with temp_65_arithop_55_0
              #                    regtab:    a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     a7:Occupied { symidx: n_18_3, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_64_arithop_55_0, tracked: true } |     s3:Occupied { symidx: temp_65_arithop_55_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    s3,a7,s1
              #                    free a7
              #                    occupy a7 with n_18_3
              #                    store to n_18_3 in mem offset legal
    sw      a7,1120(sp)
              #                    release a7 with n_18_3
              #                    free s1
              #                    free s3
              #                     284  (nop) 
              #                     429  n_18_3 = i32 temp_65_arithop_55_0 
              #                    occupy s3 with temp_65_arithop_55_0
              #                    occupy a7 with n_18_3
    mv      a7, s3
              #                    free s3
              #                    occupy s3 with temp_65_arithop_55_0
              #                    store to temp_65_arithop_55_0 in mem offset legal
    sw      s3,136(sp)
              #                    release s3 with temp_65_arithop_55_0
              #                    free a7
              #                     430  j_18_3 = i32 temp_64_arithop_55_0 
              #                    occupy s2 with temp_64_arithop_55_0
              #                    occupy s1 with j_18_3
    mv      s1, s2
              #                    free s2
              #                    occupy s2 with temp_64_arithop_55_0
              #                    store to temp_64_arithop_55_0 in mem offset legal
    sw      s2,140(sp)
              #                    release s2 with temp_64_arithop_55_0
              #                    free s1
              #                          jump label: while.head_54 
              #                    occupy a7 with n_18_3
              #                    store to n_18_3 in mem offset legal
    sw      a7,1120(sp)
              #                    release a7 with n_18_3
              #                    occupy s1 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      s1,1140(sp)
              #                    release s1 with j_18_3
              #                    occupy s1 with temp_52_ele_of_c2_18_50_0
              #                    load from temp_52_ele_of_c2_18_50_0 in mem


    lw      s1,204(sp)
              #                    occupy s2 with n_18_3
              #                    load from n_18_3 in mem


    lw      s2,1120(sp)
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     a7:Freed { symidx: temp_57_ptr_of_result_18_55, tracked: true } |     s2:Freed { symidx: temp_95_cmp_57_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     392  label branch_false_58: 
.branch_false_58:
              #                     276  (nop) 
              #                     277  store temp_62_arithop_55_0:i32 temp_57_ptr_of_result_18_55:ptr->i32 
              #                    occupy a7 with temp_57_ptr_of_result_18_55
              #                    occupy s1 with temp_62_arithop_55_0
              #                    load from temp_62_arithop_55_0 in mem


    lw      s1,156(sp)
    sw      s1,0(a7)
              #                    free s1
              #                    occupy s1 with temp_62_arithop_55_0
              #                    store to temp_62_arithop_55_0 in mem offset legal
    sw      s1,156(sp)
              #                    release s1 with temp_62_arithop_55_0
              #                    free a7
              #                     278  result_18_9 = chi result_18_5:277 
              #                          jump label: gather_18 
              #                    occupy a7 with temp_57_ptr_of_result_18_55
              #                    store to temp_57_ptr_of_result_18_55 in mem offset legal
    sd      a7,184(sp)
              #                    release a7 with temp_57_ptr_of_result_18_55
              #                    occupy s2 with temp_95_cmp_57_0
              #                    store to temp_95_cmp_57_0 in mem offset legal
    sb      s2,0(sp)
              #                    release s2 with temp_95_cmp_57_0
    j       .gather_18
              #                    regtab     a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     s1:Freed { symidx: temp_52_ele_of_c2_18_50_0, tracked: true } |     s2:Freed { symidx: n_18_3, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     387  label while.exit_54: 
.while.exit_54:
              #                     253  temp_54_arithop_50_0 = Add i32 n_18_3, 20_0 
              #                    occupy s2 with n_18_3
              #                    occupy a7 with 20_0
    li      a7, 20
              #                    occupy s3 with temp_54_arithop_50_0
    ADDW    s3,s2,a7
              #                    free s2
              #                    occupy s2 with n_18_3
              #                    store to n_18_3 in mem offset legal
    sw      s2,1120(sp)
              #                    release s2 with n_18_3
              #                    free a7
              #                    free s3
              #                     255  temp_55_arithop_50_0 = Sub i32 temp_54_arithop_50_0, 1_0 
              #                    occupy s3 with temp_54_arithop_50_0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with temp_55_arithop_50_0
              #                    regtab:    a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     a7:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Freed { symidx: temp_52_ele_of_c2_18_50_0, tracked: true } |     s2:Occupied { symidx: temp_55_arithop_50_0, tracked: true, occupy_count: 1 } |     s3:Occupied { symidx: temp_54_arithop_50_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    s2,s3,a7
              #                    free s3
              #                    occupy s3 with temp_54_arithop_50_0
              #                    store to temp_54_arithop_50_0 in mem offset legal
    sw      s3,200(sp)
              #                    release s3 with temp_54_arithop_50_0
              #                    free a7
              #                    free s2
              #                     256  (nop) 
              #                     258  temp_56_arithop_50_0 = Sub i32 i_18_11, 1_0 
              #                    occupy a0 with i_18_11
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_56_arithop_50_0
              #                    regtab:    a0:Occupied { symidx: i_18_11, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_51_ptr_of_c2_18_50, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     a7:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Freed { symidx: temp_52_ele_of_c2_18_50_0, tracked: true } |     s2:Freed { symidx: temp_55_arithop_50_0, tracked: true } |     s3:Occupied { symidx: temp_56_arithop_50_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    s3,a0,a7
              #                    free a0
              #                    occupy a0 with i_18_11
              #                    store to i_18_11 in mem offset legal
    sw      a0,1156(sp)
              #                    release a0 with i_18_11
              #                    free a7
              #                    free s3
              #                     259  (nop) 
              #                     431  n_18_2 = i32 temp_55_arithop_50_0 
              #                    occupy s2 with temp_55_arithop_50_0
              #                    occupy a1 with n_18_2
    mv      a1, s2
              #                    free s2
              #                    free a1
              #                     432  i_18_11 = i32 temp_56_arithop_50_0 
              #                    occupy s3 with temp_56_arithop_50_0
              #                    occupy a0 with i_18_11
    mv      a0, s3
              #                    free s3
              #                    occupy s3 with temp_56_arithop_50_0
              #                    store to temp_56_arithop_50_0 in mem offset legal
    sw      s3,192(sp)
              #                    release s3 with temp_56_arithop_50_0
              #                    free a0
              #                          jump label: while.head_49 
              #                    occupy a6 with temp_87_cmp_48_0
              #                    store to temp_87_cmp_48_0 in mem offset legal
    sb      a6,20(sp)
              #                    release a6 with temp_87_cmp_48_0
              #                    occupy a5 with temp_51_ptr_of_c2_18_50
              #                    store to temp_51_ptr_of_c2_18_50 in mem offset legal
    sd      a5,208(sp)
              #                    release a5 with temp_51_ptr_of_c2_18_50
              #                    occupy s1 with temp_52_ele_of_c2_18_50_0
              #                    store to temp_52_ele_of_c2_18_50_0 in mem offset legal
    sw      s1,204(sp)
              #                    release s1 with temp_52_ele_of_c2_18_50_0
              #                    occupy s2 with temp_55_arithop_50_0
              #                    store to temp_55_arithop_50_0 in mem offset legal
    sw      s2,196(sp)
              #                    release s2 with temp_55_arithop_50_0
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: i_18_11, tracked: true } |     a1:Freed { symidx: n_18_2, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     359  label while.exit_49: 
.while.exit_49:
              #                     482  untrack i_18_11 
              #                    occupy a0 with i_18_11
              #                    release a0 with i_18_11
              #                     481  untrack n_18_2 
              #                    occupy a1 with n_18_2
              #                    release a1 with n_18_2
              #                     362  temp_88_ptr_of_result_18_67 = GEP result_18_4:Array:i32:[Some(40_0)] [Some(0_0)] 
              #                    occupy a0 with temp_88_ptr_of_result_18_67
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,240
              #                    free a0
              #                     364  temp_89_ele_of_result_18_67_0 = load temp_88_ptr_of_result_18_67:ptr->i32 
              #                    occupy a0 with temp_88_ptr_of_result_18_67
              #                    occupy a5 with temp_89_ele_of_result_18_67_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     496  untrack temp_88_ptr_of_result_18_67 
              #                    occupy a0 with temp_88_ptr_of_result_18_67
              #                    release a0 with temp_88_ptr_of_result_18_67
              #                     365  mu result_18_4:364 
              #                     367  temp_90_cmp_67_0 = icmp i32 Ne temp_89_ele_of_result_18_67_0, 0_0 
              #                    occupy a5 with temp_89_ele_of_result_18_67_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a7 with temp_90_cmp_67_0
    xor     a7,a5,a0
    snez    a7, a7
              #                    free a5
              #                    free a0
              #                    free a7
              #                     370  br i1 temp_90_cmp_67_0, label branch_true_68, label branch_false_68 
              #                    occupy a7 with temp_90_cmp_67_0
              #                    free a7
              #                    occupy a7 with temp_90_cmp_67_0
    bnez    a7, .branch_true_68
              #                    free a7
    j       .branch_false_68
              #                    regtab     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_89_ele_of_result_18_67_0, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     368  label branch_true_68: 
.branch_true_68:
              #                     497  untrack temp_90_cmp_67_0 
              #                    occupy a7 with temp_90_cmp_67_0
              #                    release a7 with temp_90_cmp_67_0
              #                     238  (nop) 
              #                     240  (nop) 
              #                     241  mu result_18_4:240 
              #                     242   Call void putint_0(temp_89_ele_of_result_18_67_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_84_cmp_28_0
              #                    store to temp_84_cmp_28_0 in mem offset legal
    sb      a2,23(sp)
              #                    release a2 with temp_84_cmp_28_0
              #                    occupy a3 with temp_85_cmp_34_0
              #                    store to temp_85_cmp_34_0 in mem offset legal
    sb      a3,22(sp)
              #                    release a3 with temp_85_cmp_34_0
              #                    occupy a4 with temp_86_cmp_41_0
              #                    store to temp_86_cmp_41_0 in mem offset legal
    sb      a4,21(sp)
              #                    release a4 with temp_86_cmp_41_0
              #                    occupy a5 with temp_89_ele_of_result_18_67_0
              #                    store to temp_89_ele_of_result_18_67_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_89_ele_of_result_18_67_0
              #                    occupy a6 with temp_87_cmp_48_0
              #                    store to temp_87_cmp_48_0 in mem offset legal
    sb      a6,20(sp)
              #                    release a6 with temp_87_cmp_48_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_89_ele_of_result_18_67_0_0
              #                    load from temp_89_ele_of_result_18_67_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                     500  untrack temp_89_ele_of_result_18_67_0 
              #                          jump label: branch_false_68 
              #                    occupy a4 with temp_86_cmp_41_0
              #                    load from temp_86_cmp_41_0 in mem


    lb      a4,21(sp)
              #                    occupy a3 with temp_85_cmp_34_0
              #                    load from temp_85_cmp_34_0 in mem


    lb      a3,22(sp)
              #                    occupy a6 with temp_87_cmp_48_0
              #                    load from temp_87_cmp_48_0 in mem


    lb      a6,20(sp)
              #                    occupy a5 with temp_89_ele_of_result_18_67_0
              #                    load from temp_89_ele_of_result_18_67_0 in mem


    lw      a5,4(sp)
              #                    occupy a2 with temp_84_cmp_28_0
              #                    load from temp_84_cmp_28_0 in mem


    lb      a2,23(sp)
              #                    occupy a7 with temp_90_cmp_67_0
              #                    load from temp_90_cmp_67_0 in mem


    lb      a7,3(sp)
    j       .branch_false_68
              #                    regtab     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_89_ele_of_result_18_67_0, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     369  label branch_false_68: 
.branch_false_68:
              #                     499  untrack temp_89_ele_of_result_18_67_0 
              #                    occupy a5 with temp_89_ele_of_result_18_67_0
              #                    release a5 with temp_89_ele_of_result_18_67_0
              #                     498  untrack temp_90_cmp_67_0 
              #                    occupy a7 with temp_90_cmp_67_0
              #                    release a7 with temp_90_cmp_67_0
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     225  (nop) 
              #                     372  (nop) 
              #                     433  i_18_14 = i32 1_0 
              #                    occupy a0 with i_18_14
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_72 
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: i_18_14, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     377  label while.head_72: 
.while.head_72:
              #                     374  (nop) 
              #                     376  temp_93_cmp_71_0 = icmp i32 Sle i_18_14, 39_0 
              #                    occupy a0 with i_18_14
              #                    occupy a1 with 39_0
    li      a1, 39
              #                    occupy a5 with temp_93_cmp_71_0
    slt     a5,a1,a0
    xori    a5,a5,1
              #                    free a0
              #                    free a1
              #                    free a5
              #                     380  br i1 temp_93_cmp_71_0, label while.body_72, label while.exit_72 
              #                    occupy a5 with temp_93_cmp_71_0
              #                    free a5
              #                    occupy a5 with temp_93_cmp_71_0
    bnez    a5, .while.body_72
              #                    free a5
    j       .while.exit_72
              #                    regtab     a0:Freed { symidx: i_18_14, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_93_cmp_71_0, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     378  label while.body_72: 
.while.body_72:
              #                     229  temp_46_ptr_of_result_18_73 = GEP result_18_4:Array:i32:[Some(40_0)] [Some(i_18_14)] 
              #                    occupy a1 with temp_46_ptr_of_result_18_73
    li      a1, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_18_14
    mv      a7, a0
              #                    free a0
              #                    occupy a0 with i_18_14
              #                    store to i_18_14 in mem offset legal
    sw      a0,1152(sp)
              #                    release a0 with i_18_14
    add     a1,a1,a7
              #                    free a7
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,240
              #                    free a1
              #                     231  temp_47_ele_of_result_18_73_0 = load temp_46_ptr_of_result_18_73:ptr->i32 
              #                    occupy a1 with temp_46_ptr_of_result_18_73
              #                    occupy a0 with temp_47_ele_of_result_18_73_0
    lw      a0,0(a1)
              #                    free a0
              #                    occupy a0 with temp_47_ele_of_result_18_73_0
              #                    store to temp_47_ele_of_result_18_73_0 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with temp_47_ele_of_result_18_73_0
              #                    free a1
              #                     232  mu result_18_4:231 
              #                     233   Call void putint_0(temp_47_ele_of_result_18_73_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_46_ptr_of_result_18_73
              #                    store to temp_46_ptr_of_result_18_73 in mem offset legal
    sd      a1,232(sp)
              #                    release a1 with temp_46_ptr_of_result_18_73
              #                    occupy a2 with temp_84_cmp_28_0
              #                    store to temp_84_cmp_28_0 in mem offset legal
    sb      a2,23(sp)
              #                    release a2 with temp_84_cmp_28_0
              #                    occupy a3 with temp_85_cmp_34_0
              #                    store to temp_85_cmp_34_0 in mem offset legal
    sb      a3,22(sp)
              #                    release a3 with temp_85_cmp_34_0
              #                    occupy a4 with temp_86_cmp_41_0
              #                    store to temp_86_cmp_41_0 in mem offset legal
    sb      a4,21(sp)
              #                    release a4 with temp_86_cmp_41_0
              #                    occupy a5 with temp_93_cmp_71_0
              #                    store to temp_93_cmp_71_0 in mem offset legal
    sb      a5,2(sp)
              #                    release a5 with temp_93_cmp_71_0
              #                    occupy a6 with temp_87_cmp_48_0
              #                    store to temp_87_cmp_48_0 in mem offset legal
    sb      a6,20(sp)
              #                    release a6 with temp_87_cmp_48_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_47_ele_of_result_18_73_0_0
              #                    load from temp_47_ele_of_result_18_73_0 in mem


    lw      a0,228(sp)
              #                    arg load ended


    call    putint
              #                     235  temp_48_arithop_73_0 = Add i32 i_18_14, 1_0 
              #                    occupy a0 with i_18_14
              #                    load from i_18_14 in mem


    lw      a0,1152(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_48_arithop_73_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     236  (nop) 
              #                     434  i_18_14 = i32 temp_48_arithop_73_0 
              #                    occupy a2 with temp_48_arithop_73_0
              #                    occupy a0 with i_18_14
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_72 
              #                    occupy a4 with temp_86_cmp_41_0
              #                    load from temp_86_cmp_41_0 in mem


    lb      a4,21(sp)
              #                    occupy a3 with temp_85_cmp_34_0
              #                    load from temp_85_cmp_34_0 in mem


    lb      a3,22(sp)
              #                    occupy a6 with temp_87_cmp_48_0
              #                    load from temp_87_cmp_48_0 in mem


    lb      a6,20(sp)
              #                    occupy a2 with temp_48_arithop_73_0
              #                    store to temp_48_arithop_73_0 in mem offset legal
    sw      a2,224(sp)
              #                    release a2 with temp_48_arithop_73_0
              #                    occupy a2 with temp_84_cmp_28_0
              #                    load from temp_84_cmp_28_0 in mem


    lb      a2,23(sp)
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: i_18_14, tracked: true } |     a2:Freed { symidx: temp_84_cmp_28_0, tracked: true } |     a3:Freed { symidx: temp_85_cmp_34_0, tracked: true } |     a4:Freed { symidx: temp_86_cmp_41_0, tracked: true } |     a5:Freed { symidx: temp_93_cmp_71_0, tracked: true } |     a6:Freed { symidx: temp_87_cmp_48_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     379  label while.exit_72: 
.while.exit_72:
              #                     501  untrack i_18_14 
              #                    occupy a0 with i_18_14
              #                    release a0 with i_18_14
              #                     227  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,1184(sp)
              #                    load from s0_main_0 in mem
    ld      s0,1176(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1192
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl len
              #                     17   global i32 len_0 
    .type len,@object
len:
    .word 20
