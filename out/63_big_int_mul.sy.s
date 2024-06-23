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
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 1208|s0_main:8 at 1200|i:4 at 1196|j:4 at 1192|t:4 at 1188|n:4 at 1184|temp:4 at 1180|none:4 at 1176|temp_0_array_init_ptr:8 at 1168|temp_1_array_init_ptr:8 at 1160|temp_2_array_init_ptr:8 at 1152|temp_3_array_init_ptr:8 at 1144|temp_4_array_init_ptr:8 at 1136|temp_5_array_init_ptr:8 at 1128|temp_6_array_init_ptr:8 at 1120|temp_7_array_init_ptr:8 at 1112|temp_8_array_init_ptr:8 at 1104|temp_9_array_init_ptr:8 at 1096|temp_10_array_init_ptr:8 at 1088|temp_11_array_init_ptr:8 at 1080|temp_12_array_init_ptr:8 at 1072|temp_13_array_init_ptr:8 at 1064|temp_14_array_init_ptr:8 at 1056|temp_15_array_init_ptr:8 at 1048|temp_16_array_init_ptr:8 at 1040|temp_17_array_init_ptr:8 at 1032|temp_18_array_init_ptr:8 at 1024|temp_19_array_init_ptr:8 at 1016|temp_20_array_init_ptr:8 at 1008|mult1:80 at 928|temp_21_array_init_ptr:8 at 920|temp_22_array_init_ptr:8 at 912|temp_23_array_init_ptr:8 at 904|temp_24_array_init_ptr:8 at 896|temp_25_array_init_ptr:8 at 888|temp_26_array_init_ptr:8 at 880|temp_27_array_init_ptr:8 at 872|temp_28_array_init_ptr:8 at 864|temp_29_array_init_ptr:8 at 856|temp_30_array_init_ptr:8 at 848|temp_31_array_init_ptr:8 at 840|temp_32_array_init_ptr:8 at 832|temp_33_array_init_ptr:8 at 824|temp_34_array_init_ptr:8 at 816|temp_35_array_init_ptr:8 at 808|temp_36_array_init_ptr:8 at 800|temp_37_array_init_ptr:8 at 792|temp_38_array_init_ptr:8 at 784|temp_39_array_init_ptr:8 at 776|temp_40_array_init_ptr:8 at 768|temp_41_array_init_ptr:8 at 760|mult2:80 at 680|len1:4 at 676|len2:4 at 672|c1:100 at 572|c2:100 at 472|temp_42_array_init_ptr:8 at 464|result:160 at 304|temp_43_cmp:1 at 303|none:7 at 296|temp_44_index_ptr:8 at 288|temp_45_array_ptr:8 at 280|temp_46_array_ele:4 at 276|temp_47_arithop:4 at 272|temp_48_cmp:1 at 271|none:7 at 264|temp_49_index_ptr:8 at 256|temp_50_array_ptr:8 at 248|temp_51_array_ele:4 at 244|temp_52_arithop:4 at 240|temp_53_arithop:4 at 236|temp_54_arithop:4 at 232|temp_55_cmp:1 at 231|none:7 at 224|temp_56_index_ptr:8 at 216|temp_57_arithop:4 at 212|temp_58_arithop:4 at 208|temp_59_cmp:1 at 207|none:7 at 200|temp_60_array_ptr:8 at 192|temp_61_array_ele:4 at 188|temp_62_arithop:4 at 184|temp_63_cmp:1 at 183|none:7 at 176|temp_64_array_ptr:8 at 168|temp_65_array_ele:4 at 164|temp_66_arithop:4 at 160|temp_67_array_ptr:8 at 152|temp_68_array_ele:4 at 148|temp_69_arithop:4 at 144|temp_70_cmp:1 at 143|none:7 at 136|temp_71_index_ptr:8 at 128|temp_72_arithop:4 at 124|none:4 at 120|temp_73_index_ptr:8 at 112|temp_74_arithop:4 at 108|temp_75_arithop:4 at 104|temp_76_array_ptr:8 at 96|temp_77_array_ele:4 at 92|temp_78_arithop:4 at 88|temp_79_arithop:4 at 84|temp_80_arithop:4 at 80|temp_81_index_ptr:8 at 72|temp_82_arithop:4 at 68|temp_83_arithop:4 at 64|temp_84_arithop:4 at 60|none:4 at 56|temp_85_array_ptr:8 at 48|temp_86_array_ele:4 at 44|temp_87_cmp:1 at 43|none:3 at 40|temp_88_array_ptr:8 at 32|temp_89_array_ele:4 at 28|temp_90_arithop:4 at 24|temp_91_arithop:4 at 20|temp_92_cmp:1 at 19|none:3 at 16|temp_93_array_ptr:8 at 8|temp_94_array_ele:4 at 4|temp_95_arithop:4 at 0
    addi    sp,sp,-1216
              #                    store to ra_main_0 in mem offset legal
    sd      ra,1208(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,1200(sp)
    addi    s0,sp,1216
              #                          alloc i32 i_18 
              #                          alloc i32 j_18 
              #                          alloc i32 t_18 
              #                          alloc i32 n_18 
              #                          alloc i32 temp_18 
              #                          alloc ptr->i32 temp_0_array_init_ptr_18 
              #                          alloc ptr->i32 temp_1_array_init_ptr_18 
              #                          alloc ptr->i32 temp_2_array_init_ptr_18 
              #                          alloc ptr->i32 temp_3_array_init_ptr_18 
              #                          alloc ptr->i32 temp_4_array_init_ptr_18 
              #                          alloc ptr->i32 temp_5_array_init_ptr_18 
              #                          alloc ptr->i32 temp_6_array_init_ptr_18 
              #                          alloc ptr->i32 temp_7_array_init_ptr_18 
              #                          alloc ptr->i32 temp_8_array_init_ptr_18 
              #                          alloc ptr->i32 temp_9_array_init_ptr_18 
              #                          alloc ptr->i32 temp_10_array_init_ptr_18 
              #                          alloc ptr->i32 temp_11_array_init_ptr_18 
              #                          alloc ptr->i32 temp_12_array_init_ptr_18 
              #                          alloc ptr->i32 temp_13_array_init_ptr_18 
              #                          alloc ptr->i32 temp_14_array_init_ptr_18 
              #                          alloc ptr->i32 temp_15_array_init_ptr_18 
              #                          alloc ptr->i32 temp_16_array_init_ptr_18 
              #                          alloc ptr->i32 temp_17_array_init_ptr_18 
              #                          alloc ptr->i32 temp_18_array_init_ptr_18 
              #                          alloc ptr->i32 temp_19_array_init_ptr_18 
              #                          alloc ptr->i32 temp_20_array_init_ptr_18 
              #                          alloc Array:i32:[Some(20_0)] mult1_18 
              #                          alloc ptr->i32 temp_21_array_init_ptr_18 
              #                          alloc ptr->i32 temp_22_array_init_ptr_18 
              #                          alloc ptr->i32 temp_23_array_init_ptr_18 
              #                          alloc ptr->i32 temp_24_array_init_ptr_18 
              #                          alloc ptr->i32 temp_25_array_init_ptr_18 
              #                          alloc ptr->i32 temp_26_array_init_ptr_18 
              #                          alloc ptr->i32 temp_27_array_init_ptr_18 
              #                          alloc ptr->i32 temp_28_array_init_ptr_18 
              #                          alloc ptr->i32 temp_29_array_init_ptr_18 
              #                          alloc ptr->i32 temp_30_array_init_ptr_18 
              #                          alloc ptr->i32 temp_31_array_init_ptr_18 
              #                          alloc ptr->i32 temp_32_array_init_ptr_18 
              #                          alloc ptr->i32 temp_33_array_init_ptr_18 
              #                          alloc ptr->i32 temp_34_array_init_ptr_18 
              #                          alloc ptr->i32 temp_35_array_init_ptr_18 
              #                          alloc ptr->i32 temp_36_array_init_ptr_18 
              #                          alloc ptr->i32 temp_37_array_init_ptr_18 
              #                          alloc ptr->i32 temp_38_array_init_ptr_18 
              #                          alloc ptr->i32 temp_39_array_init_ptr_18 
              #                          alloc ptr->i32 temp_40_array_init_ptr_18 
              #                          alloc ptr->i32 temp_41_array_init_ptr_18 
              #                          alloc Array:i32:[Some(20_0)] mult2_18 
              #                          alloc i32 len1_18 
              #                          alloc i32 len2_18 
              #                          alloc Array:i32:[Some(25_0)] c1_18 
              #                          alloc Array:i32:[Some(25_0)] c2_18 
              #                          alloc ptr->i32 temp_42_array_init_ptr_18 
              #                          alloc Array:i32:[Some(40_0)] result_18 
              #                          alloc i1 temp_43_cmp_28 
              #                          alloc ptr->i32 temp_44_index_ptr_30 
              #                          alloc ptr->i32 temp_45_array_ptr_30 
              #                          alloc i32 temp_46_array_ele_30 
              #                          alloc i32 temp_47_arithop_30 
              #                          alloc i1 temp_48_cmp_34 
              #                          alloc ptr->i32 temp_49_index_ptr_36 
              #                          alloc ptr->i32 temp_50_array_ptr_36 
              #                          alloc i32 temp_51_array_ele_36 
              #                          alloc i32 temp_52_arithop_36 
              #                          alloc i32 temp_53_arithop_18 
              #                          alloc i32 temp_54_arithop_18 
              #                          alloc i1 temp_55_cmp_41 
              #                          alloc ptr->i32 temp_56_index_ptr_43 
              #                          alloc i32 temp_57_arithop_43 
              #                          alloc i32 temp_58_arithop_18 
              #                          alloc i1 temp_59_cmp_48 
              #                          alloc ptr->i32 temp_60_array_ptr_50 
              #                          alloc i32 temp_61_array_ele_50 
              #                          alloc i32 temp_62_arithop_50 
              #                          alloc i1 temp_63_cmp_53 
              #                          alloc ptr->i32 temp_64_array_ptr_55 
              #                          alloc i32 temp_65_array_ele_55 
              #                          alloc i32 temp_66_arithop_55 
              #                          alloc ptr->i32 temp_67_array_ptr_55 
              #                          alloc i32 temp_68_array_ele_55 
              #                          alloc i32 temp_69_arithop_55 
              #                          alloc i1 temp_70_cmp_57 
              #                          alloc ptr->i32 temp_71_index_ptr_59 
              #                          alloc i32 temp_72_arithop_59 
              #                          alloc ptr->i32 temp_73_index_ptr_59 
              #                          alloc i32 temp_74_arithop_59 
              #                          alloc i32 temp_75_arithop_59 
              #                          alloc ptr->i32 temp_76_array_ptr_59 
              #                          alloc i32 temp_77_array_ele_59 
              #                          alloc i32 temp_78_arithop_59 
              #                          alloc i32 temp_79_arithop_55 
              #                          alloc i32 temp_80_arithop_55 
              #                          alloc ptr->i32 temp_81_index_ptr_57 
              #                          alloc i32 temp_82_arithop_50 
              #                          alloc i32 temp_83_arithop_50 
              #                          alloc i32 temp_84_arithop_50 
              #                          alloc ptr->i32 temp_85_array_ptr_67 
              #                          alloc i32 temp_86_array_ele_67 
              #                          alloc i1 temp_87_cmp_67 
              #                          alloc ptr->i32 temp_88_array_ptr_67 
              #                          alloc i32 temp_89_array_ele_67 
              #                          alloc i32 temp_90_arithop_71 
              #                          alloc i32 temp_91_arithop_71 
              #                          alloc i1 temp_92_cmp_71 
              #                          alloc ptr->i32 temp_93_array_ptr_73 
              #                          alloc i32 temp_94_array_ele_73 
              #                          alloc i32 temp_95_arithop_73 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var i_18:i32 
              #                          new_var j_18:i32 
              #                          new_var t_18:i32 
              #                          new_var n_18:i32 
              #                          new_var temp_18:i32 
              #                          new_var mult1_18:Array:i32:[Some(20_0)] 
              #                          new_var temp_0_array_init_ptr_18:ptr->i32 
              #                          temp_0_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [] 
              #                    occupy a0 with temp_0_array_init_ptr_18
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,928
              #                    free a0
              #                           Call void memset_0(temp_0_array_init_ptr_18, 0_0, 80_0) 
              #                    saved register dumping to mem
              #                    store to temp_0_array_init_ptr_18 in mem offset legal
    sd      a0,1168(sp)
              #                    release a0 with temp_0_array_init_ptr_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_array_init_ptr_18_0
              #                    load from temp_0_array_init_ptr_18 in mem
    ld      a0,1168(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_80_0_0
    li      a2, 80
              #                    arg load ended


    call    memset
              #                          new_var temp_1_array_init_ptr_18:ptr->i32 
              #                          temp_1_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(1_0)] 
              #                    occupy a0 with temp_1_array_init_ptr_18
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,928
              #                    free a0
              #                          store 2_0:i32 temp_1_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_1_array_init_ptr_18
              #                    occupy a4 with 2_0
    li      a4, 2
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                          mu mult1_18:36 
              #                          mult1_18 = chi mult1_18:36 
              #                          new_var temp_2_array_init_ptr_18:ptr->i32 
              #                          temp_2_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(6_0)] 
              #                    occupy a5 with temp_2_array_init_ptr_18
    li      a5, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a6 with 6_0
    li      a6, 6
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a2,a6
              #                    free a2
              #                    free a6
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,928
              #                    free a5
              #                          store 7_0:i32 temp_2_array_init_ptr_18:ptr->i32 
              #                    occupy a5 with temp_2_array_init_ptr_18
              #                    occupy s1 with 7_0
    li      s1, 7
    sw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                          mu mult1_18:42 
              #                          mult1_18 = chi mult1_18:42 
              #                          new_var temp_3_array_init_ptr_18:ptr->i32 
              #                          temp_3_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(3_0)] 
              #                    occupy s2 with temp_3_array_init_ptr_18
    li      s2, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy s3 with 3_0
    li      s3, 3
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a2,s3
              #                    free a2
              #                    free s3
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,928
              #                    free s2
              #                          store 4_0:i32 temp_3_array_init_ptr_18:ptr->i32 
              #                    occupy s2 with temp_3_array_init_ptr_18
              #                    occupy s5 with 4_0
    li      s5, 4
    sw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          mu mult1_18:48 
              #                          mult1_18 = chi mult1_18:48 
              #                          new_var temp_4_array_init_ptr_18:ptr->i32 
              #                          temp_4_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(9_0)] 
              #                    occupy s6 with temp_4_array_init_ptr_18
    li      s6, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy s7 with 9_0
    li      s7, 9
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,a2,s7
              #                    free a2
              #                    free s7
    add     s6,s6,s8
              #                    free s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,928
              #                    free s6
              #                          store 0_0:i32 temp_4_array_init_ptr_18:ptr->i32 
              #                    occupy s6 with temp_4_array_init_ptr_18
              #                    occupy s9 with 0_0
    li      s9, 0
    sw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          mu mult1_18:54 
              #                          mult1_18 = chi mult1_18:54 
              #                          new_var temp_5_array_init_ptr_18:ptr->i32 
              #                          temp_5_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(19_0)] 
              #                    occupy s10 with temp_5_array_init_ptr_18
    li      s10, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy s11 with 19_0
    li      s11, 19
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a2,s11
              #                    free a2
              #                    free s11
    add     s10,s10,a1
              #                    free a1
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,928
              #                    free s10
              #                          store 0_0:i32 temp_5_array_init_ptr_18:ptr->i32 
              #                    occupy s10 with temp_5_array_init_ptr_18
              #                    found literal reg Some(s9) already exist with 0_0
              #                    occupy s9 with 0_0
    sw      s9,0(s10)
              #                    free s9
              #                    free s10
              #                          mu mult1_18:60 
              #                          mult1_18 = chi mult1_18:60 
              #                          new_var temp_6_array_init_ptr_18:ptr->i32 
              #                          temp_6_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(15_0)] 
              #                    occupy a1 with temp_6_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a3 with 15_0
    li      a3, 15
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,928
              #                    free a1
              #                          store 6_0:i32 temp_6_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_6_array_init_ptr_18
              #                    found literal reg Some(a6) already exist with 6_0
              #                    occupy a6 with 6_0
    sw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          mu mult1_18:66 
              #                          mult1_18 = chi mult1_18:66 
              #                          new_var temp_7_array_init_ptr_18:ptr->i32 
              #                          temp_7_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(17_0)] 
              #                    occupy a2 with temp_7_array_init_ptr_18
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 17_0
    li      a4, 17
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,928
              #                    free a2
              #                          store 8_0:i32 temp_7_array_init_ptr_18:ptr->i32 
              #                    occupy a2 with temp_7_array_init_ptr_18
              #                    occupy a3 with 8_0
    li      a3, 8
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu mult1_18:72 
              #                          mult1_18 = chi mult1_18:72 
              #                          new_var temp_8_array_init_ptr_18:ptr->i32 
              #                          temp_8_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(2_0)] 
              #                    occupy a3 with temp_8_array_init_ptr_18
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with 2_0
    li      a6, 2
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a4,a6
              #                    free a4
              #                    free a6
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,928
              #                    free a3
              #                          store 3_0:i32 temp_8_array_init_ptr_18:ptr->i32 
              #                    occupy a3 with temp_8_array_init_ptr_18
              #                    found literal reg Some(s3) already exist with 3_0
              #                    occupy s3 with 3_0
    sw      s3,0(a3)
              #                    free s3
              #                    free a3
              #                          mu mult1_18:78 
              #                          mult1_18 = chi mult1_18:78 
              #                          new_var temp_9_array_init_ptr_18:ptr->i32 
              #                          temp_9_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(12_0)] 
              #                    occupy a4 with temp_9_array_init_ptr_18
    li      a4, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 12_0
    li      a7, 12
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,928
              #                    free a4
              #                          store 3_0:i32 temp_9_array_init_ptr_18:ptr->i32 
              #                    occupy a4 with temp_9_array_init_ptr_18
              #                    found literal reg Some(s3) already exist with 3_0
              #                    occupy s3 with 3_0
    sw      s3,0(a4)
              #                    free s3
              #                    free a4
              #                          mu mult1_18:84 
              #                          mult1_18 = chi mult1_18:84 
              #                          new_var temp_10_array_init_ptr_18:ptr->i32 
              #                          temp_10_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(13_0)] 
              #                    occupy a6 with temp_10_array_init_ptr_18
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with 13_0
    li      s1, 13
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a7,s1
              #                    free a7
              #                    free s1
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,928
              #                    free a6
              #                          store 4_0:i32 temp_10_array_init_ptr_18:ptr->i32 
              #                    occupy a6 with temp_10_array_init_ptr_18
              #                    found literal reg Some(s5) already exist with 4_0
              #                    occupy s5 with 4_0
    sw      s5,0(a6)
              #                    free s5
              #                    free a6
              #                          mu mult1_18:90 
              #                          mult1_18 = chi mult1_18:90 
              #                          new_var temp_11_array_init_ptr_18:ptr->i32 
              #                          temp_11_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(18_0)] 
              #                    occupy a7 with temp_11_array_init_ptr_18
    li      a7, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with 18_0
    li      s3, 18
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,s1,s3
              #                    free s1
              #                    free s3
    add     a7,a7,s4
              #                    free s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,928
              #                    free a7
              #                          store 9_0:i32 temp_11_array_init_ptr_18:ptr->i32 
              #                    occupy a7 with temp_11_array_init_ptr_18
              #                    found literal reg Some(s7) already exist with 9_0
              #                    occupy s7 with 9_0
    sw      s7,0(a7)
              #                    free s7
              #                    free a7
              #                          mu mult1_18:96 
              #                          mult1_18 = chi mult1_18:96 
              #                          new_var temp_12_array_init_ptr_18:ptr->i32 
              #                          temp_12_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(16_0)] 
              #                    occupy s1 with temp_12_array_init_ptr_18
    li      s1, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with 16_0
    li      s4, 16
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s3,s4
              #                    free s3
              #                    free s4
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,928
              #                    free s1
              #                          store 7_0:i32 temp_12_array_init_ptr_18:ptr->i32 
              #                    occupy s1 with temp_12_array_init_ptr_18
              #                    occupy s3 with 7_0
    li      s3, 7
    sw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          mu mult1_18:102 
              #                          mult1_18 = chi mult1_18:102 
              #                          new_var temp_13_array_init_ptr_18:ptr->i32 
              #                          temp_13_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(0_0)] 
              #                    occupy s3 with temp_13_array_init_ptr_18
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    found literal reg Some(s9) already exist with 0_0
              #                    occupy s9 with 0_0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s4,s9
              #                    free s4
              #                    free s9
    add     s3,s3,s5
              #                    free s5
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,928
              #                    free s3
              #                          store 1_0:i32 temp_13_array_init_ptr_18:ptr->i32 
              #                    occupy s3 with temp_13_array_init_ptr_18
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          mu mult1_18:108 
              #                          mult1_18 = chi mult1_18:108 
              #                          new_var temp_14_array_init_ptr_18:ptr->i32 
              #                          temp_14_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(4_0)] 
              #                    occupy s4 with temp_14_array_init_ptr_18
    li      s4, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s7 with 4_0
    li      s7, 4
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s5,s7
              #                    free s5
              #                    free s7
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,928
              #                    free s4
              #                          store 5_0:i32 temp_14_array_init_ptr_18:ptr->i32 
              #                    occupy s4 with temp_14_array_init_ptr_18
              #                    occupy s5 with 5_0
    li      s5, 5
    sw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          mu mult1_18:114 
              #                          mult1_18 = chi mult1_18:114 
              #                          new_var temp_15_array_init_ptr_18:ptr->i32 
              #                          temp_15_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(5_0)] 
              #                    occupy s5 with temp_15_array_init_ptr_18
    li      s5, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with 5_0
    li      s8, 5
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s7,s8
              #                    free s7
              #                    free s8
    add     s5,s5,s9
              #                    free s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,928
              #                    free s5
              #                          store 6_0:i32 temp_15_array_init_ptr_18:ptr->i32 
              #                    occupy s5 with temp_15_array_init_ptr_18
              #                    occupy s7 with 6_0
    li      s7, 6
    sw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          mu mult1_18:120 
              #                          mult1_18 = chi mult1_18:120 
              #                          new_var temp_16_array_init_ptr_18:ptr->i32 
              #                          temp_16_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(7_0)] 
              #                    occupy s7 with temp_16_array_init_ptr_18
    li      s7, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s9 with 7_0
    li      s9, 7
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s8,s9
              #                    free s8
              #                    free s9
    add     s7,s7,s11
              #                    free s11
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,928
              #                    free s7
              #                          store 8_0:i32 temp_16_array_init_ptr_18:ptr->i32 
              #                    occupy s7 with temp_16_array_init_ptr_18
              #                    occupy s8 with 8_0
    li      s8, 8
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                          mu mult1_18:126 
              #                          mult1_18 = chi mult1_18:126 
              #                          new_var temp_17_array_init_ptr_18:ptr->i32 
              #                          temp_17_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(8_0)] 
              #                    occupy s8 with temp_17_array_init_ptr_18
    li      s8, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s11 with 8_0
    li      s11, 8
              #                    store to temp_1_array_init_ptr_18 in mem offset legal
    sd      a0,1160(sp)
              #                    release a0 with temp_1_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,s9,s11
              #                    free s9
              #                    free s11
    add     s8,s8,a0
              #                    free a0
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,928
              #                    free s8
              #                          store 9_0:i32 temp_17_array_init_ptr_18:ptr->i32 
              #                    occupy s8 with temp_17_array_init_ptr_18
              #                    occupy a0 with 9_0
    li      a0, 9
    sw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          mu mult1_18:132 
              #                          mult1_18 = chi mult1_18:132 
              #                          new_var temp_18_array_init_ptr_18:ptr->i32 
              #                          temp_18_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(10_0)] 
              #                    occupy a0 with temp_18_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    occupy s11 with 10_0
    li      s11, 10
              #                    store to temp_6_array_init_ptr_18 in mem offset legal
    sd      a1,1120(sp)
              #                    release a1 with temp_6_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,s9,s11
              #                    free s9
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,928
              #                    free a0
              #                          store 1_0:i32 temp_18_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_18_array_init_ptr_18
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
    sw      s9,0(a0)
              #                    free s9
              #                    free a0
              #                          mu mult1_18:138 
              #                          mult1_18 = chi mult1_18:138 
              #                          new_var temp_19_array_init_ptr_18:ptr->i32 
              #                          temp_19_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(11_0)] 
              #                    occupy a1 with temp_19_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    occupy s11 with 11_0
    li      s11, 11
              #                    store to temp_18_array_init_ptr_18 in mem offset legal
    sd      a0,1024(sp)
              #                    release a0 with temp_18_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,s9,s11
              #                    free s9
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,928
              #                    free a1
              #                          store 2_0:i32 temp_19_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_19_array_init_ptr_18
              #                    occupy a0 with 2_0
    li      a0, 2
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu mult1_18:144 
              #                          mult1_18 = chi mult1_18:144 
              #                          new_var temp_20_array_init_ptr_18:ptr->i32 
              #                          temp_20_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(14_0)] 
              #                    occupy a0 with temp_20_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    occupy s11 with 14_0
    li      s11, 14
              #                    store to temp_19_array_init_ptr_18 in mem offset legal
    sd      a1,1016(sp)
              #                    release a1 with temp_19_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,s9,s11
              #                    free s9
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,928
              #                    free a0
              #                          store 5_0:i32 temp_20_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_20_array_init_ptr_18
              #                    occupy a1 with 5_0
    li      a1, 5
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult1_18:150 
              #                          mult1_18 = chi mult1_18:150 
              #                          new_var mult2_18:Array:i32:[Some(20_0)] 
              #                          new_var temp_21_array_init_ptr_18:ptr->i32 
              #                          temp_21_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [] 
              #                    occupy a1 with temp_21_array_init_ptr_18
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,680
              #                    free a1
              #                           Call void memset_0(temp_21_array_init_ptr_18, 0_0, 80_0) 
              #                    saved register dumping to mem
              #                    store to temp_12_array_init_ptr_18 in mem offset legal
    sd      s1,1072(sp)
              #                    release s1 with temp_12_array_init_ptr_18
              #                    store to temp_3_array_init_ptr_18 in mem offset legal
    sd      s2,1144(sp)
              #                    release s2 with temp_3_array_init_ptr_18
              #                    store to temp_13_array_init_ptr_18 in mem offset legal
    sd      s3,1064(sp)
              #                    release s3 with temp_13_array_init_ptr_18
              #                    store to temp_14_array_init_ptr_18 in mem offset legal
    sd      s4,1056(sp)
              #                    release s4 with temp_14_array_init_ptr_18
              #                    store to temp_15_array_init_ptr_18 in mem offset legal
    sd      s5,1048(sp)
              #                    release s5 with temp_15_array_init_ptr_18
              #                    store to temp_4_array_init_ptr_18 in mem offset legal
    sd      s6,1136(sp)
              #                    release s6 with temp_4_array_init_ptr_18
              #                    store to temp_16_array_init_ptr_18 in mem offset legal
    sd      s7,1040(sp)
              #                    release s7 with temp_16_array_init_ptr_18
              #                    store to temp_17_array_init_ptr_18 in mem offset legal
    sd      s8,1032(sp)
              #                    release s8 with temp_17_array_init_ptr_18
              #                    store to temp_5_array_init_ptr_18 in mem offset legal
    sd      s10,1128(sp)
              #                    release s10 with temp_5_array_init_ptr_18
              #                    store to temp_20_array_init_ptr_18 in mem offset legal
    sd      a0,1008(sp)
              #                    release a0 with temp_20_array_init_ptr_18
              #                    store to temp_21_array_init_ptr_18 in mem offset legal
    sd      a1,920(sp)
              #                    release a1 with temp_21_array_init_ptr_18
              #                    store to temp_7_array_init_ptr_18 in mem offset legal
    sd      a2,1112(sp)
              #                    release a2 with temp_7_array_init_ptr_18
              #                    store to temp_8_array_init_ptr_18 in mem offset legal
    sd      a3,1104(sp)
              #                    release a3 with temp_8_array_init_ptr_18
              #                    store to temp_9_array_init_ptr_18 in mem offset legal
    sd      a4,1096(sp)
              #                    release a4 with temp_9_array_init_ptr_18
              #                    store to temp_2_array_init_ptr_18 in mem offset legal
    sd      a5,1152(sp)
              #                    release a5 with temp_2_array_init_ptr_18
              #                    store to temp_10_array_init_ptr_18 in mem offset legal
    sd      a6,1088(sp)
              #                    release a6 with temp_10_array_init_ptr_18
              #                    store to temp_11_array_init_ptr_18 in mem offset legal
    sd      a7,1080(sp)
              #                    release a7 with temp_11_array_init_ptr_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_21_array_init_ptr_18_0
              #                    load from temp_21_array_init_ptr_18 in mem
    ld      a0,920(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_80_0_0
    li      a2, 80
              #                    arg load ended


    call    memset
              #                          new_var temp_22_array_init_ptr_18:ptr->i32 
              #                          temp_22_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(1_0)] 
              #                    occupy a0 with temp_22_array_init_ptr_18
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,680
              #                    free a0
              #                          store 3_0:i32 temp_22_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_22_array_init_ptr_18
              #                    occupy a4 with 3_0
    li      a4, 3
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                          mu mult2_18:162 
              #                          mult2_18 = chi mult2_18:162 
              #                          new_var temp_23_array_init_ptr_18:ptr->i32 
              #                          temp_23_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(9_0)] 
              #                    occupy a5 with temp_23_array_init_ptr_18
    li      a5, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a6 with 9_0
    li      a6, 9
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a2,a6
              #                    free a2
              #                    free a6
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,680
              #                    free a5
              #                          store 1_0:i32 temp_23_array_init_ptr_18:ptr->i32 
              #                    occupy a5 with temp_23_array_init_ptr_18
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
    sw      a2,0(a5)
              #                    free a2
              #                    free a5
              #                          mu mult2_18:168 
              #                          mult2_18 = chi mult2_18:168 
              #                          new_var temp_24_array_init_ptr_18:ptr->i32 
              #                          temp_24_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(19_0)] 
              #                    occupy s1 with temp_24_array_init_ptr_18
    li      s1, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy s2 with 19_0
    li      s2, 19
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a2,s2
              #                    free a2
              #                    free s2
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,680
              #                    free s1
              #                          store 2_0:i32 temp_24_array_init_ptr_18:ptr->i32 
              #                    occupy s1 with temp_24_array_init_ptr_18
              #                    occupy s4 with 2_0
    li      s4, 2
    sw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          mu mult2_18:174 
              #                          mult2_18 = chi mult2_18:174 
              #                          new_var temp_25_array_init_ptr_18:ptr->i32 
              #                          temp_25_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(17_0)] 
              #                    occupy s5 with temp_25_array_init_ptr_18
    li      s5, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy s6 with 17_0
    li      s6, 17
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a2,s6
              #                    free a2
              #                    free s6
    add     s5,s5,s7
              #                    free s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,680
              #                    free s5
              #                          store 1_0:i32 temp_25_array_init_ptr_18:ptr->i32 
              #                    occupy s5 with temp_25_array_init_ptr_18
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
    sw      a2,0(s5)
              #                    free a2
              #                    free s5
              #                          mu mult2_18:180 
              #                          mult2_18 = chi mult2_18:180 
              #                          new_var temp_26_array_init_ptr_18:ptr->i32 
              #                          temp_26_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(2_0)] 
              #                    occupy s8 with temp_26_array_init_ptr_18
    li      s8, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    found literal reg Some(s4) already exist with 2_0
              #                    occupy s4 with 2_0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a2,s4
              #                    free a2
              #                    free s4
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,680
              #                    free s8
              #                          store 4_0:i32 temp_26_array_init_ptr_18:ptr->i32 
              #                    occupy s8 with temp_26_array_init_ptr_18
              #                    occupy s10 with 4_0
    li      s10, 4
    sw      s10,0(s8)
              #                    free s10
              #                    free s8
              #                          mu mult2_18:186 
              #                          mult2_18 = chi mult2_18:186 
              #                          new_var temp_27_array_init_ptr_18:ptr->i32 
              #                          temp_27_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(10_0)] 
              #                    occupy s11 with temp_27_array_init_ptr_18
    li      s11, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a1 with 10_0
    li      a1, 10
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a2,a1
              #                    free a2
              #                    free a1
    add     s11,s11,a3
              #                    free a3
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,680
              #                    free s11
              #                          store 9_0:i32 temp_27_array_init_ptr_18:ptr->i32 
              #                    occupy s11 with temp_27_array_init_ptr_18
              #                    found literal reg Some(a6) already exist with 9_0
              #                    occupy a6 with 9_0
    sw      a6,0(s11)
              #                    free a6
              #                    free s11
              #                          mu mult2_18:192 
              #                          mult2_18 = chi mult2_18:192 
              #                          new_var temp_28_array_init_ptr_18:ptr->i32 
              #                          temp_28_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(5_0)] 
              #                    occupy a1 with temp_28_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a3 with 5_0
    li      a3, 5
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,680
              #                    free a1
              #                          store 7_0:i32 temp_28_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_28_array_init_ptr_18
              #                    occupy a2 with 7_0
    li      a2, 7
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu mult2_18:198 
              #                          mult2_18 = chi mult2_18:198 
              #                          new_var temp_29_array_init_ptr_18:ptr->i32 
              #                          temp_29_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(0_0)] 
              #                    occupy a2 with temp_29_array_init_ptr_18
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,680
              #                    free a2
              #                          store 2_0:i32 temp_29_array_init_ptr_18:ptr->i32 
              #                    occupy a2 with temp_29_array_init_ptr_18
              #                    found literal reg Some(s4) already exist with 2_0
              #                    occupy s4 with 2_0
    sw      s4,0(a2)
              #                    free s4
              #                    free a2
              #                          mu mult2_18:204 
              #                          mult2_18 = chi mult2_18:204 
              #                          new_var temp_30_array_init_ptr_18:ptr->i32 
              #                          temp_30_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(16_0)] 
              #                    occupy a3 with temp_30_array_init_ptr_18
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with 16_0
    li      a6, 16
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a4,a6
              #                    free a4
              #                    free a6
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,680
              #                    free a3
              #                          store 2_0:i32 temp_30_array_init_ptr_18:ptr->i32 
              #                    occupy a3 with temp_30_array_init_ptr_18
              #                    found literal reg Some(s4) already exist with 2_0
              #                    occupy s4 with 2_0
    sw      s4,0(a3)
              #                    free s4
              #                    free a3
              #                          mu mult2_18:210 
              #                          mult2_18 = chi mult2_18:210 
              #                          new_var temp_31_array_init_ptr_18:ptr->i32 
              #                          temp_31_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(12_0)] 
              #                    occupy a4 with temp_31_array_init_ptr_18
    li      a4, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 12_0
    li      a7, 12
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a6,a7
              #                    free a6
              #                    free a7
    add     a4,a4,s2
              #                    free s2
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,680
              #                    free a4
              #                          store 7_0:i32 temp_31_array_init_ptr_18:ptr->i32 
              #                    occupy a4 with temp_31_array_init_ptr_18
              #                    occupy a6 with 7_0
    li      a6, 7
    sw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                          mu mult2_18:216 
              #                          mult2_18 = chi mult2_18:216 
              #                          new_var temp_32_array_init_ptr_18:ptr->i32 
              #                          temp_32_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(15_0)] 
              #                    occupy a6 with temp_32_array_init_ptr_18
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with 15_0
    li      s2, 15
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a7,s2
              #                    free a7
              #                    free s2
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,680
              #                    free a6
              #                          store 3_0:i32 temp_32_array_init_ptr_18:ptr->i32 
              #                    occupy a6 with temp_32_array_init_ptr_18
              #                    occupy a7 with 3_0
    li      a7, 3
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          mu mult2_18:222 
              #                          mult2_18 = chi mult2_18:222 
              #                          new_var temp_33_array_init_ptr_18:ptr->i32 
              #                          temp_33_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(13_0)] 
              #                    occupy a7 with temp_33_array_init_ptr_18
    li      a7, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with 13_0
    li      s3, 13
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,s2,s3
              #                    free s2
              #                    free s3
    add     a7,a7,s4
              #                    free s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,680
              #                    free a7
              #                          store 6_0:i32 temp_33_array_init_ptr_18:ptr->i32 
              #                    occupy a7 with temp_33_array_init_ptr_18
              #                    occupy s2 with 6_0
    li      s2, 6
    sw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          mu mult2_18:228 
              #                          mult2_18 = chi mult2_18:228 
              #                          new_var temp_34_array_init_ptr_18:ptr->i32 
              #                          temp_34_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(18_0)] 
              #                    occupy s2 with temp_34_array_init_ptr_18
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with 18_0
    li      s4, 18
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s3,s4
              #                    free s3
              #                    free s4
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,680
              #                    free s2
              #                          store 2_0:i32 temp_34_array_init_ptr_18:ptr->i32 
              #                    occupy s2 with temp_34_array_init_ptr_18
              #                    occupy s3 with 2_0
    li      s3, 2
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          mu mult2_18:234 
              #                          mult2_18 = chi mult2_18:234 
              #                          new_var temp_35_array_init_ptr_18:ptr->i32 
              #                          temp_35_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(11_0)] 
              #                    occupy s3 with temp_35_array_init_ptr_18
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with 11_0
    li      s6, 11
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s4,s6
              #                    free s4
              #                    free s6
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,680
              #                    free s3
              #                          store 8_0:i32 temp_35_array_init_ptr_18:ptr->i32 
              #                    occupy s3 with temp_35_array_init_ptr_18
              #                    occupy s4 with 8_0
    li      s4, 8
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          mu mult2_18:240 
              #                          mult2_18 = chi mult2_18:240 
              #                          new_var temp_36_array_init_ptr_18:ptr->i32 
              #                          temp_36_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(7_0)] 
              #                    occupy s4 with temp_36_array_init_ptr_18
    li      s4, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with 7_0
    li      s7, 7
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s6,s7
              #                    free s6
              #                    free s7
    add     s4,s4,s9
              #                    free s9
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,680
              #                    free s4
              #                          store 9_0:i32 temp_36_array_init_ptr_18:ptr->i32 
              #                    occupy s4 with temp_36_array_init_ptr_18
              #                    occupy s6 with 9_0
    li      s6, 9
    sw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          mu mult2_18:246 
              #                          mult2_18 = chi mult2_18:246 
              #                          new_var temp_37_array_init_ptr_18:ptr->i32 
              #                          temp_37_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(6_0)] 
              #                    occupy s6 with temp_37_array_init_ptr_18
    li      s6, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s9 with 6_0
    li      s9, 6
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,s7,s9
              #                    free s7
              #                    free s9
    add     s6,s6,s10
              #                    free s10
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,680
              #                    free s6
              #                          store 9_0:i32 temp_37_array_init_ptr_18:ptr->i32 
              #                    occupy s6 with temp_37_array_init_ptr_18
              #                    occupy s7 with 9_0
    li      s7, 9
    sw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          mu mult2_18:252 
              #                          mult2_18 = chi mult2_18:252 
              #                          new_var temp_38_array_init_ptr_18:ptr->i32 
              #                          temp_38_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(8_0)] 
              #                    occupy s7 with temp_38_array_init_ptr_18
    li      s7, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with 8_0
    li      s10, 8
              #                    store to temp_22_array_init_ptr_18 in mem offset legal
    sd      a0,912(sp)
              #                    release a0 with temp_22_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,s9,s10
              #                    free s9
              #                    free s10
    add     s7,s7,a0
              #                    free a0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,680
              #                    free s7
              #                          store 0_0:i32 temp_38_array_init_ptr_18:ptr->i32 
              #                    occupy s7 with temp_38_array_init_ptr_18
              #                    occupy a0 with 0_0
    li      a0, 0
    sw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          mu mult2_18:258 
              #                          mult2_18 = chi mult2_18:258 
              #                          new_var temp_39_array_init_ptr_18:ptr->i32 
              #                          temp_39_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(14_0)] 
              #                    occupy a0 with temp_39_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    occupy s10 with 14_0
    li      s10, 14
              #                    store to temp_28_array_init_ptr_18 in mem offset legal
    sd      a1,864(sp)
              #                    release a1 with temp_28_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,s9,s10
              #                    free s9
              #                    free s10
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,680
              #                    free a0
              #                          store 4_0:i32 temp_39_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_39_array_init_ptr_18
              #                    occupy a1 with 4_0
    li      a1, 4
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult2_18:264 
              #                          mult2_18 = chi mult2_18:264 
              #                          new_var temp_40_array_init_ptr_18:ptr->i32 
              #                          temp_40_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(4_0)] 
              #                    occupy a1 with temp_40_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    occupy s10 with 4_0
    li      s10, 4
              #                    store to temp_39_array_init_ptr_18 in mem offset legal
    sd      a0,776(sp)
              #                    release a0 with temp_39_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,s9,s10
              #                    free s9
              #                    free s10
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,680
              #                    free a1
              #                          store 5_0:i32 temp_40_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_40_array_init_ptr_18
              #                    occupy a0 with 5_0
    li      a0, 5
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu mult2_18:270 
              #                          mult2_18 = chi mult2_18:270 
              #                          new_var temp_41_array_init_ptr_18:ptr->i32 
              #                          temp_41_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(3_0)] 
              #                    occupy a0 with temp_41_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    store to temp_40_array_init_ptr_18 in mem offset legal
    sd      a1,768(sp)
              #                    release a1 with temp_40_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,s9,s10
              #                    free s9
              #                    free s10
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,680
              #                    free a0
              #                          store 2_0:i32 temp_41_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_41_array_init_ptr_18
              #                    occupy a1 with 2_0
    li      a1, 2
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult2_18:276 
              #                          mult2_18 = chi mult2_18:276 
              #                          len1_18 = i32 20_0 
              #                    occupy a1 with len1_18
    li      a1, 20
              #                    free a1
              #                          len2_18 = i32 20_0 
              #                    occupy s9 with len2_18
    li      s9, 20
              #                    free s9
              #                          new_var c1_18:Array:i32:[Some(25_0)] 
              #                          new_var c2_18:Array:i32:[Some(25_0)] 
              #                          new_var result_18:Array:i32:[Some(40_0)] 
              #                          new_var temp_42_array_init_ptr_18:ptr->i32 
              #                          temp_42_array_init_ptr_18 = getelementptr result_18:Array:i32:[Some(40_0)] [] 
              #                    occupy s10 with temp_42_array_init_ptr_18
    li      s10, 0
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,304
              #                    free s10
              #                           Call void memset_0(temp_42_array_init_ptr_18, 0_0, 160_0) 
              #                    saved register dumping to mem
              #                    store to temp_24_array_init_ptr_18 in mem offset legal
    sd      s1,896(sp)
              #                    release s1 with temp_24_array_init_ptr_18
              #                    store to temp_34_array_init_ptr_18 in mem offset legal
    sd      s2,816(sp)
              #                    release s2 with temp_34_array_init_ptr_18
              #                    store to temp_35_array_init_ptr_18 in mem offset legal
    sd      s3,808(sp)
              #                    release s3 with temp_35_array_init_ptr_18
              #                    store to temp_36_array_init_ptr_18 in mem offset legal
    sd      s4,800(sp)
              #                    release s4 with temp_36_array_init_ptr_18
              #                    store to temp_25_array_init_ptr_18 in mem offset legal
    sd      s5,888(sp)
              #                    release s5 with temp_25_array_init_ptr_18
              #                    store to temp_37_array_init_ptr_18 in mem offset legal
    sd      s6,792(sp)
              #                    release s6 with temp_37_array_init_ptr_18
              #                    store to temp_38_array_init_ptr_18 in mem offset legal
    sd      s7,784(sp)
              #                    release s7 with temp_38_array_init_ptr_18
              #                    store to temp_26_array_init_ptr_18 in mem offset legal
    sd      s8,880(sp)
              #                    release s8 with temp_26_array_init_ptr_18
              #                    store to len2_18 in mem offset legal
    sw      s9,672(sp)
              #                    release s9 with len2_18
              #                    store to temp_42_array_init_ptr_18 in mem offset legal
    sd      s10,464(sp)
              #                    release s10 with temp_42_array_init_ptr_18
              #                    store to temp_27_array_init_ptr_18 in mem offset legal
    sd      s11,872(sp)
              #                    release s11 with temp_27_array_init_ptr_18
              #                    store to temp_41_array_init_ptr_18 in mem offset legal
    sd      a0,760(sp)
              #                    release a0 with temp_41_array_init_ptr_18
              #                    store to len1_18 in mem offset legal
    sw      a1,676(sp)
              #                    release a1 with len1_18
              #                    store to temp_29_array_init_ptr_18 in mem offset legal
    sd      a2,856(sp)
              #                    release a2 with temp_29_array_init_ptr_18
              #                    store to temp_30_array_init_ptr_18 in mem offset legal
    sd      a3,848(sp)
              #                    release a3 with temp_30_array_init_ptr_18
              #                    store to temp_31_array_init_ptr_18 in mem offset legal
    sd      a4,840(sp)
              #                    release a4 with temp_31_array_init_ptr_18
              #                    store to temp_23_array_init_ptr_18 in mem offset legal
    sd      a5,904(sp)
              #                    release a5 with temp_23_array_init_ptr_18
              #                    store to temp_32_array_init_ptr_18 in mem offset legal
    sd      a6,832(sp)
              #                    release a6 with temp_32_array_init_ptr_18
              #                    store to temp_33_array_init_ptr_18 in mem offset legal
    sd      a7,824(sp)
              #                    release a7 with temp_33_array_init_ptr_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_42_array_init_ptr_18_0
              #                    load from temp_42_array_init_ptr_18 in mem
    ld      a0,464(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_160_0_0
    li      a2, 160
              #                    arg load ended


    call    memset
              #                          i_18 = i32 0_0 
              #                    occupy a0 with i_18
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_29 
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } | 
              #                          label while.head_29: 
.while.head_29:
              #                          new_var temp_43_cmp_28:i1 
              #                          temp_43_cmp_28 = icmp i32 Slt i_18, len1_18 
              #                    occupy a0 with i_18
              #                    occupy a1 with len1_18
              #                    load from len1_18 in mem


    lw      a1,676(sp)
              #                    occupy a2 with temp_43_cmp_28
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_43_cmp_28, label while.body_29, label while.exit_29 
              #                    occupy a2 with temp_43_cmp_28
              #                    free a2
              #                    occupy a2 with temp_43_cmp_28
    bnez    a2, .while.body_29
              #                    free a2
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } | 
              #                          label while.body_29: 
.while.body_29:
              #                          new_var temp_44_index_ptr_30:ptr->i32 
              #                          temp_44_index_ptr_30 = getelementptr c1_18:Array:i32:[Some(25_0)] [Some(i_18)] 
              #                    occupy a3 with temp_44_index_ptr_30
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with i_18
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,572
              #                    free a3
              #                          new_var temp_45_array_ptr_30:ptr->i32 
              #                          temp_45_array_ptr_30 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(i_18)] 
              #                    occupy a6 with temp_45_array_ptr_30
    li      a6, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a0 with i_18
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a4,a0
              #                    free a4
              #                    free a0
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,928
              #                    free a6
              #                          new_var temp_46_array_ele_30:i32 
              #                          temp_46_array_ele_30 = load temp_45_array_ptr_30:ptr->i32 
              #                    occupy a6 with temp_45_array_ptr_30
              #                    occupy s1 with temp_46_array_ele_30
    lw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                          store temp_46_array_ele_30:i32 temp_44_index_ptr_30:ptr->i32 
              #                    occupy a3 with temp_44_index_ptr_30
              #                    occupy s1 with temp_46_array_ele_30
    sw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                          mu c1_18:312 
              #                          c1_18 = chi c1_18:312 
              #                          new_var temp_47_arithop_30:i32 
              #                          temp_47_arithop_30 = Add i32 i_18, 1_0 
              #                    occupy a0 with i_18
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s2 with temp_47_arithop_30
    add     s2,a0,a4
              #                    free a0
              #                    free a4
              #                    free s2
              #                          i_18 = i32 temp_47_arithop_30 
              #                    occupy s2 with temp_47_arithop_30
              #                    occupy a0 with i_18
    mv      a0, s2
              #                    free s2
              #                    free a0
              #                          jump label: while.head_29 
              #                    store to temp_45_array_ptr_30 in mem offset legal
    sd      a6,280(sp)
              #                    release a6 with temp_45_array_ptr_30
              #                    store to temp_47_arithop_30 in mem offset legal
    sw      s2,272(sp)
              #                    release s2 with temp_47_arithop_30
              #                    store to temp_46_array_ele_30 in mem offset legal
    sw      s1,276(sp)
              #                    release s1 with temp_46_array_ele_30
              #                    store to temp_43_cmp_28 in mem offset legal
    sb      a2,303(sp)
              #                    release a2 with temp_43_cmp_28
              #                    store to len1_18 in mem offset legal
    sw      a1,676(sp)
              #                    release a1 with len1_18
              #                    store to temp_44_index_ptr_30 in mem offset legal
    sd      a3,288(sp)
              #                    release a3 with temp_44_index_ptr_30
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } | 
              #                          label while.exit_29: 
.while.exit_29:
              #                          i_18 = i32 0_0 
              #                    occupy a0 with i_18
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_35 
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } | 
              #                          label while.head_35: 
.while.head_35:
              #                          new_var temp_48_cmp_34:i1 
              #                          temp_48_cmp_34 = icmp i32 Slt i_18, len2_18 
              #                    occupy a0 with i_18
              #                    occupy a3 with len2_18
              #                    load from len2_18 in mem


    lw      a3,672(sp)
              #                    occupy a4 with temp_48_cmp_34
    slt     a4,a0,a3
              #                    free a0
              #                    free a3
              #                    free a4
              #                          br i1 temp_48_cmp_34, label while.body_35, label while.exit_35 
              #                    occupy a4 with temp_48_cmp_34
              #                    free a4
              #                    occupy a4 with temp_48_cmp_34
    bnez    a4, .while.body_35
              #                    free a4
    j       .while.exit_35
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } | 
              #                          label while.body_35: 
.while.body_35:
              #                          new_var temp_49_index_ptr_36:ptr->i32 
              #                          temp_49_index_ptr_36 = getelementptr c2_18:Array:i32:[Some(25_0)] [Some(i_18)] 
              #                    occupy a5 with temp_49_index_ptr_36
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with i_18
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a6,a0
              #                    free a6
              #                    free a0
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,472
              #                    free a5
              #                          new_var temp_50_array_ptr_36:ptr->i32 
              #                          temp_50_array_ptr_36 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(i_18)] 
              #                    occupy s1 with temp_50_array_ptr_36
    li      s1, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a0 with i_18
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a6,a0
              #                    free a6
              #                    free a0
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,680
              #                    free s1
              #                          new_var temp_51_array_ele_36:i32 
              #                          temp_51_array_ele_36 = load temp_50_array_ptr_36:ptr->i32 
              #                    occupy s1 with temp_50_array_ptr_36
              #                    occupy s3 with temp_51_array_ele_36
    lw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          store temp_51_array_ele_36:i32 temp_49_index_ptr_36:ptr->i32 
              #                    occupy a5 with temp_49_index_ptr_36
              #                    occupy s3 with temp_51_array_ele_36
    sw      s3,0(a5)
              #                    free s3
              #                    free a5
              #                          mu c2_18:337 
              #                          c2_18 = chi c2_18:337 
              #                          new_var temp_52_arithop_36:i32 
              #                          temp_52_arithop_36 = Add i32 i_18, 1_0 
              #                    occupy a0 with i_18
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s4 with temp_52_arithop_36
    add     s4,a0,a6
              #                    free a0
              #                    free a6
              #                    free s4
              #                          i_18 = i32 temp_52_arithop_36 
              #                    occupy s4 with temp_52_arithop_36
              #                    occupy a0 with i_18
    mv      a0, s4
              #                    free s4
              #                    free a0
              #                          jump label: while.head_35 
              #                    store to temp_50_array_ptr_36 in mem offset legal
    sd      s1,248(sp)
              #                    release s1 with temp_50_array_ptr_36
              #                    store to temp_49_index_ptr_36 in mem offset legal
    sd      a5,256(sp)
              #                    release a5 with temp_49_index_ptr_36
              #                    store to temp_51_array_ele_36 in mem offset legal
    sw      s3,244(sp)
              #                    release s3 with temp_51_array_ele_36
              #                    store to temp_48_cmp_34 in mem offset legal
    sb      a4,271(sp)
              #                    release a4 with temp_48_cmp_34
              #                    store to temp_52_arithop_36 in mem offset legal
    sw      s4,240(sp)
              #                    release s4 with temp_52_arithop_36
              #                    store to len2_18 in mem offset legal
    sw      a3,672(sp)
              #                    release a3 with len2_18
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } | 
              #                          label while.exit_35: 
.while.exit_35:
              #                          new_var temp_53_arithop_18:i32 
              #                          temp_53_arithop_18 = Add i32 len1_18, len2_18 
              #                    occupy a1 with len1_18
              #                    occupy a3 with len2_18
              #                    occupy a5 with temp_53_arithop_18
    add     a5,a1,a3
              #                    free a1
              #                    free a3
              #                    free a5
              #                          new_var temp_54_arithop_18:i32 
              #                          temp_54_arithop_18 = Sub i32 temp_53_arithop_18, 1_0 
              #                    occupy a5 with temp_53_arithop_18
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_54_arithop_18
              #                    regtab:    a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Occupied { symidx: temp_53_arithop_18, tracked: true, occupy_count: 1 } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Occupied { symidx: temp_54_arithop_18, tracked: true, occupy_count: 1 } | 


    sub     a7,a5,a6
              #                    free a5
              #                    free a6
              #                    free a7
              #                          n_18 = i32 temp_54_arithop_18 
              #                    occupy a7 with temp_54_arithop_18
              #                    occupy s1 with n_18
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          i_18 = i32 0_0 
              #                    occupy a0 with i_18
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_42 
    j       .while.head_42
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } | 
              #                          label while.head_42: 
.while.head_42:
              #                          new_var temp_55_cmp_41:i1 
              #                          temp_55_cmp_41 = icmp i32 Sle i_18, n_18 
              #                    occupy a0 with i_18
              #                    occupy s1 with n_18
              #                    occupy a6 with temp_55_cmp_41
    slt     a6,s1,a0
    xori    a6,a6,1
              #                    free a0
              #                    free s1
              #                    free a6
              #                          br i1 temp_55_cmp_41, label while.body_42, label while.exit_42 
              #                    occupy a6 with temp_55_cmp_41
              #                    free a6
              #                    occupy a6 with temp_55_cmp_41
    bnez    a6, .while.body_42
              #                    free a6
    j       .while.exit_42
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } | 
              #                          label while.body_42: 
.while.body_42:
              #                          new_var temp_56_index_ptr_43:ptr->i32 
              #                          temp_56_index_ptr_43 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(i_18)] 
              #                    occupy s2 with temp_56_index_ptr_43
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a0 with i_18
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,s3,a0
              #                    free s3
              #                    free a0
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,304
              #                    free s2
              #                          store 0_0:i32 temp_56_index_ptr_43:ptr->i32 
              #                    occupy s2 with temp_56_index_ptr_43
              #                    occupy s5 with 0_0
    li      s5, 0
    sw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          mu result_18:363 
              #                          result_18 = chi result_18:363 
              #                          new_var temp_57_arithop_43:i32 
              #                          temp_57_arithop_43 = Add i32 i_18, 1_0 
              #                    occupy a0 with i_18
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s6 with temp_57_arithop_43
    add     s6,a0,s3
              #                    free a0
              #                    free s3
              #                    free s6
              #                          i_18 = i32 temp_57_arithop_43 
              #                    occupy s6 with temp_57_arithop_43
              #                    occupy a0 with i_18
    mv      a0, s6
              #                    free s6
              #                    free a0
              #                          jump label: while.head_42 
              #                    store to temp_57_arithop_43 in mem offset legal
    sw      s6,212(sp)
              #                    release s6 with temp_57_arithop_43
              #                    store to temp_55_cmp_41 in mem offset legal
    sb      a6,231(sp)
              #                    release a6 with temp_55_cmp_41
              #                    store to temp_56_index_ptr_43 in mem offset legal
    sd      s2,216(sp)
              #                    release s2 with temp_56_index_ptr_43
    j       .while.head_42
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } | 
              #                          label while.exit_42: 
.while.exit_42:
              #                          temp_18 = i32 0_0 
              #                    occupy s2 with temp_18
    li      s2, 0
              #                    free s2
              #                          new_var temp_58_arithop_18:i32 
              #                          temp_58_arithop_18 = Sub i32 len2_18, 1_0 
              #                    occupy a3 with len2_18
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_58_arithop_18
              #                    regtab:    a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Occupied { symidx: len2_18, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s4:Occupied { symidx: temp_58_arithop_18, tracked: true, occupy_count: 1 } | 


    sub     s4,a3,s3
              #                    free a3
              #                    free s3
              #                    free s4
              #                          i_18 = i32 temp_58_arithop_18 
              #                    occupy s4 with temp_58_arithop_18
              #                    occupy a0 with i_18
    mv      a0, s4
              #                    free s4
              #                    free a0
              #                          jump label: while.head_49 
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } | 
              #                          label while.head_49: 
.while.head_49:
              #                          new_var temp_59_cmp_48:i1 
              #                          temp_59_cmp_48 = icmp i32 Sgt i_18, -1_0 
              #                    occupy a0 with i_18
              #                    occupy s3 with -1_0
    li      s3, -1
              #                    occupy s5 with temp_59_cmp_48
    slt     s5,s3,a0
              #                    free a0
              #                    free s3
              #                    free s5
              #                          br i1 temp_59_cmp_48, label while.body_49, label while.exit_49 
              #                    occupy s5 with temp_59_cmp_48
              #                    free s5
              #                    occupy s5 with temp_59_cmp_48
    bnez    s5, .while.body_49
              #                    free s5
    j       .while.exit_49
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } | 
              #                          label while.body_49: 
.while.body_49:
              #                          new_var temp_60_array_ptr_50:ptr->i32 
              #                          temp_60_array_ptr_50 = getelementptr c2_18:Array:i32:[Some(25_0)] [Some(i_18)] 
              #                    occupy s3 with temp_60_array_ptr_50
    li      s3, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a0 with i_18
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s6,a0
              #                    free s6
              #                    free a0
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,472
              #                    free s3
              #                          new_var temp_61_array_ele_50:i32 
              #                          temp_61_array_ele_50 = load temp_60_array_ptr_50:ptr->i32 
              #                    occupy s3 with temp_60_array_ptr_50
              #                    occupy s8 with temp_61_array_ele_50
    lw      s8,0(s3)
              #                    free s8
              #                    free s3
              #                          t_18 = i32 temp_61_array_ele_50 
              #                    occupy s8 with temp_61_array_ele_50
              #                    occupy s9 with t_18
    mv      s9, s8
              #                    free s8
              #                    free s9
              #                          new_var temp_62_arithop_50:i32 
              #                          temp_62_arithop_50 = Sub i32 len1_18, 1_0 
              #                    occupy a1 with len1_18
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    occupy s10 with temp_62_arithop_50
              #                    regtab:    a0:Freed { symidx: i_18, tracked: true } |     a1:Occupied { symidx: len1_18, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Occupied { symidx: temp_62_arithop_50, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s7:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 


    sub     s10,a1,s6
              #                    free a1
              #                    free s6
              #                    free s10
              #                          j_18 = i32 temp_62_arithop_50 
              #                    occupy s10 with temp_62_arithop_50
              #                    occupy s11 with j_18
    mv      s11, s10
              #                    free s10
              #                    free s11
              #                          jump label: while.head_54 
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 
              #                          label while.head_54: 
.while.head_54:
              #                          new_var temp_63_cmp_53:i1 
              #                          temp_63_cmp_53 = icmp i32 Sgt j_18, -1_0 
              #                    occupy s11 with j_18
              #                    occupy s6 with -1_0
    li      s6, -1
              #                    occupy s7 with temp_63_cmp_53
    slt     s7,s6,s11
              #                    free s11
              #                    free s6
              #                    free s7
              #                          br i1 temp_63_cmp_53, label while.body_54, label while.exit_54 
              #                    occupy s7 with temp_63_cmp_53
              #                    free s7
              #                    occupy s7 with temp_63_cmp_53
    bnez    s7, .while.body_54
              #                    free s7
    j       .while.exit_54
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 
              #                          label while.body_54: 
.while.body_54:
              #                          new_var temp_64_array_ptr_55:ptr->i32 
              #                          temp_64_array_ptr_55 = getelementptr c1_18:Array:i32:[Some(25_0)] [Some(j_18)] 
              #                    occupy s6 with temp_64_array_ptr_55
    li      s6, 0
              #                    store to i_18 in mem offset legal
    sw      a0,1196(sp)
              #                    release a0 with i_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s11 with j_18
              #                    store to len1_18 in mem offset legal
    sw      a1,676(sp)
              #                    release a1 with len1_18
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a0,s11
              #                    free a0
              #                    free s11
    add     s6,s6,a1
              #                    free a1
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,572
              #                    free s6
              #                          new_var temp_65_array_ele_55:i32 
              #                          temp_65_array_ele_55 = load temp_64_array_ptr_55:ptr->i32 
              #                    occupy s6 with temp_64_array_ptr_55
              #                    occupy a0 with temp_65_array_ele_55
    lw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          new_var temp_66_arithop_55:i32 
              #                          temp_66_arithop_55 = Mul i32 t_18, temp_65_array_ele_55 
              #                    occupy s9 with t_18
              #                    occupy a0 with temp_65_array_ele_55
              #                    occupy a1 with temp_66_arithop_55
    mul     a1,s9,a0
              #                    free s9
              #                    free a0
              #                    free a1
              #                          new_var temp_67_array_ptr_55:ptr->i32 
              #                          temp_67_array_ptr_55 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(n_18)] 
              #                    store to temp_65_array_ele_55 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_65_array_ele_55
              #                    occupy a0 with temp_67_array_ptr_55
    li      a0, 0
              #                    store to temp_66_arithop_55 in mem offset legal
    sw      a1,160(sp)
              #                    release a1 with temp_66_arithop_55
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s1 with n_18
              #                    store to temp_43_cmp_28 in mem offset legal
    sb      a2,303(sp)
              #                    release a2 with temp_43_cmp_28
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a1,s1
              #                    free a1
              #                    free s1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,304
              #                    free a0
              #                          new_var temp_68_array_ele_55:i32 
              #                          temp_68_array_ele_55 = load temp_67_array_ptr_55:ptr->i32 
              #                    occupy a0 with temp_67_array_ptr_55
              #                    occupy a1 with temp_68_array_ele_55
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_69_arithop_55:i32 
              #                          temp_69_arithop_55 = Add i32 temp_68_array_ele_55, temp_66_arithop_55 
              #                    occupy a1 with temp_68_array_ele_55
              #                    occupy a2 with temp_66_arithop_55
              #                    load from temp_66_arithop_55 in mem


    lw      a2,160(sp)
              #                    store to temp_67_array_ptr_55 in mem offset legal
    sd      a0,152(sp)
              #                    release a0 with temp_67_array_ptr_55
              #                    occupy a0 with temp_69_arithop_55
    add     a0,a1,a2
              #                    free a1
              #                    free a2
              #                    free a0
              #                          temp_18 = i32 temp_69_arithop_55 
              #                    occupy a0 with temp_69_arithop_55
              #                    occupy s2 with temp_18
    mv      s2, a0
              #                    free a0
              #                    free s2
              #                          jump label: L1_0 
              #                    store to temp_64_array_ptr_55 in mem offset legal
    sd      s6,168(sp)
              #                    release s6 with temp_64_array_ptr_55
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_69_arithop_55, tracked: true } |     a1:Freed { symidx: temp_68_array_ele_55, tracked: true } |     a2:Freed { symidx: temp_66_arithop_55, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_70_cmp_57:i1 
              #                          temp_70_cmp_57 = icmp i32 Sge temp_18, 10_0 
              #                    occupy s2 with temp_18
              #                    occupy s6 with 10_0
    li      s6, 10
              #                    store to temp_69_arithop_55 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with temp_69_arithop_55
              #                    occupy a0 with temp_70_cmp_57
    slt     a0,s2,s6
    xori    a0,a0,1
              #                    free s2
              #                    free s6
              #                    free a0
              #                          br i1 temp_70_cmp_57, label branch_true_58, label branch_false_58 
              #                    occupy a0 with temp_70_cmp_57
              #                    free a0
              #                    occupy a0 with temp_70_cmp_57
    bnez    a0, .branch_true_58
              #                    free a0
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: temp_70_cmp_57, tracked: true } |     a1:Freed { symidx: temp_68_array_ele_55, tracked: true } |     a2:Freed { symidx: temp_66_arithop_55, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 
              #                          label branch_true_58: 
.branch_true_58:
              #                          new_var temp_71_index_ptr_59:ptr->i32 
              #                          temp_71_index_ptr_59 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(n_18)] 
              #                    occupy s6 with temp_71_index_ptr_59
    li      s6, 0
              #                    store to temp_70_cmp_57 in mem offset legal
    sb      a0,143(sp)
              #                    release a0 with temp_70_cmp_57
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s1 with n_18
              #                    store to temp_68_array_ele_55 in mem offset legal
    sw      a1,148(sp)
              #                    release a1 with temp_68_array_ele_55
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a0,s1
              #                    free a0
              #                    free s1
    add     s6,s6,a1
              #                    free a1
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,304
              #                    free s6
              #                          store temp_18:i32 temp_71_index_ptr_59:ptr->i32 
              #                    occupy s6 with temp_71_index_ptr_59
              #                    occupy s2 with temp_18
    sw      s2,0(s6)
              #                    free s2
              #                    free s6
              #                          mu result_18:430 
              #                          result_18 = chi result_18:430 
              #                          new_var temp_72_arithop_59:i32 
              #                          temp_72_arithop_59 = Sub i32 n_18, 1_0 
              #                    occupy s1 with n_18
              #                    found literal reg Some(a0) already exist with 1_0
              #                    occupy a0 with 1_0
              #                    occupy a1 with temp_72_arithop_59
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_72_arithop_59, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_66_arithop_55, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Occupied { symidx: n_18, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s6:Freed { symidx: temp_71_index_ptr_59, tracked: true } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 


    sub     a1,s1,a0
              #                    free s1
              #                    free a0
              #                    free a1
              #                          new_var temp_73_index_ptr_59:ptr->i32 
              #                          temp_73_index_ptr_59 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(temp_72_arithop_59)] 
              #                    occupy a0 with temp_73_index_ptr_59
    li      a0, 0
              #                    store to temp_72_arithop_59 in mem offset legal
    sw      a1,124(sp)
              #                    release a1 with temp_72_arithop_59
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_66_arithop_55 in mem offset legal
    sw      a2,160(sp)
              #                    release a2 with temp_66_arithop_55
              #                    occupy a2 with temp_72_arithop_59
              #                    load from temp_72_arithop_59 in mem


    lw      a2,124(sp)
              #                    store to len2_18 in mem offset legal
    sw      a3,672(sp)
              #                    release a3 with len2_18
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,304
              #                    free a0
              #                          new_var temp_74_arithop_59:i32 
              #                          temp_74_arithop_59 = Div i32 temp_18, 10_0 
              #                    occupy s2 with temp_18
              #                    occupy a1 with 10_0
    li      a1, 10
              #                    occupy a3 with temp_74_arithop_59
    div     a3,s2,a1
              #                    free s2
              #                    free a1
              #                    free a3
              #                          new_var temp_75_arithop_59:i32 
              #                          temp_75_arithop_59 = Sub i32 n_18, 1_0 
              #                    occupy s1 with n_18
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_73_index_ptr_59 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with temp_73_index_ptr_59
              #                    occupy a0 with temp_75_arithop_59
              #                    regtab:    a0:Occupied { symidx: temp_75_arithop_59, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_72_arithop_59, tracked: true } |     a3:Freed { symidx: temp_74_arithop_59, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Occupied { symidx: n_18, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s6:Freed { symidx: temp_71_index_ptr_59, tracked: true } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 


    sub     a0,s1,a1
              #                    free s1
              #                    free a1
              #                    free a0
              #                          new_var temp_76_array_ptr_59:ptr->i32 
              #                          temp_76_array_ptr_59 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(temp_75_arithop_59)] 
              #                    occupy a1 with temp_76_array_ptr_59
    li      a1, 0
              #                    store to temp_75_arithop_59 in mem offset legal
    sw      a0,104(sp)
              #                    release a0 with temp_75_arithop_59
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_72_arithop_59 in mem offset legal
    sw      a2,124(sp)
              #                    release a2 with temp_72_arithop_59
              #                    occupy a2 with temp_75_arithop_59
              #                    load from temp_75_arithop_59 in mem


    lw      a2,104(sp)
              #                    store to temp_74_arithop_59 in mem offset legal
    sw      a3,108(sp)
              #                    release a3 with temp_74_arithop_59
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,304
              #                    free a1
              #                          new_var temp_77_array_ele_59:i32 
              #                          temp_77_array_ele_59 = load temp_76_array_ptr_59:ptr->i32 
              #                    occupy a1 with temp_76_array_ptr_59
              #                    occupy a0 with temp_77_array_ele_59
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_78_arithop_59:i32 
              #                          temp_78_arithop_59 = Add i32 temp_77_array_ele_59, temp_74_arithop_59 
              #                    occupy a0 with temp_77_array_ele_59
              #                    occupy a3 with temp_74_arithop_59
              #                    load from temp_74_arithop_59 in mem


    lw      a3,108(sp)
              #                    store to temp_76_array_ptr_59 in mem offset legal
    sd      a1,96(sp)
              #                    release a1 with temp_76_array_ptr_59
              #                    occupy a1 with temp_78_arithop_59
    add     a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                          store temp_78_arithop_59:i32 temp_73_index_ptr_59:ptr->i32 
              #                    store to temp_77_array_ele_59 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_77_array_ele_59
              #                    occupy a0 with temp_73_index_ptr_59
              #                    load from temp_73_index_ptr_59 in mem
    ld      a0,112(sp)
              #                    occupy a1 with temp_78_arithop_59
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu result_18:454 
              #                          result_18 = chi result_18:454 
              #                          jump label: L2_0 
              #                    store to temp_71_index_ptr_59 in mem offset legal
    sd      s6,128(sp)
              #                    release s6 with temp_71_index_ptr_59
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_70_cmp_57, tracked: true } |     a1:Freed { symidx: temp_68_array_ele_55, tracked: true } |     a2:Freed { symidx: temp_66_arithop_55, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 
              #                          label branch_false_58: 
.branch_false_58:
              #                          new_var temp_81_index_ptr_57:ptr->i32 
              #                          temp_81_index_ptr_57 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(n_18)] 
              #                    occupy s6 with temp_81_index_ptr_57
    li      s6, 0
              #                    store to temp_70_cmp_57 in mem offset legal
    sb      a0,143(sp)
              #                    release a0 with temp_70_cmp_57
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s1 with n_18
              #                    store to temp_68_array_ele_55 in mem offset legal
    sw      a1,148(sp)
              #                    release a1 with temp_68_array_ele_55
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a0,s1
              #                    free a0
              #                    free s1
    add     s6,s6,a1
              #                    free a1
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,304
              #                    free s6
              #                          store temp_18:i32 temp_81_index_ptr_57:ptr->i32 
              #                    occupy s6 with temp_81_index_ptr_57
              #                    occupy s2 with temp_18
    sw      s2,0(s6)
              #                    free s2
              #                    free s6
              #                          mu result_18:468 
              #                          result_18 = chi result_18:468 
              #                          jump label: L2_0 
              #                    store to temp_81_index_ptr_57 in mem offset legal
    sd      s6,72(sp)
              #                    release s6 with temp_81_index_ptr_57
              #                    store to temp_66_arithop_55 in mem offset legal
    sw      a2,160(sp)
              #                    release a2 with temp_66_arithop_55
              #                    store to len2_18 in mem offset legal
    sw      a3,672(sp)
              #                    release a3 with len2_18
              #                    occupy a0 with _anonymous_of_temp_73_index_ptr_59_0
              #                    load from temp_73_index_ptr_59 in mem
    ld      a0,112(sp)
              #                    occupy a2 with _anonymous_of_temp_75_arithop_59_0
              #                    load from temp_75_arithop_59 in mem


    lw      a2,104(sp)
              #                    occupy a1 with _anonymous_of_temp_78_arithop_59_0
              #                    load from temp_78_arithop_59 in mem


    lw      a1,88(sp)
              #                    occupy a3 with _anonymous_of_temp_74_arithop_59_0
              #                    load from temp_74_arithop_59 in mem


    lw      a3,108(sp)
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_73_index_ptr_59, tracked: true } |     a1:Freed { symidx: temp_78_arithop_59, tracked: true } |     a2:Freed { symidx: temp_75_arithop_59, tracked: true } |     a3:Freed { symidx: temp_74_arithop_59, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a0:Freed { symidx: temp_73_index_ptr_59, tracked: true } |     a1:Freed { symidx: temp_78_arithop_59, tracked: true } |     a2:Freed { symidx: temp_75_arithop_59, tracked: true } |     a3:Freed { symidx: temp_74_arithop_59, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_79_arithop_55:i32 
              #                          temp_79_arithop_55 = Sub i32 j_18, 1_0 
              #                    occupy s11 with j_18
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    store to temp_73_index_ptr_59 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with temp_73_index_ptr_59
              #                    occupy a0 with temp_79_arithop_55
              #                    regtab:    a0:Occupied { symidx: temp_79_arithop_55, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_78_arithop_59, tracked: true } |     a2:Freed { symidx: temp_75_arithop_59, tracked: true } |     a3:Freed { symidx: temp_74_arithop_59, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Occupied { symidx: j_18, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 


    sub     a0,s11,s6
              #                    free s11
              #                    free s6
              #                    free a0
              #                          j_18 = i32 temp_79_arithop_55 
              #                    occupy a0 with temp_79_arithop_55
              #                    occupy s11 with j_18
    mv      s11, a0
              #                    free a0
              #                    free s11
              #                          new_var temp_80_arithop_55:i32 
              #                          temp_80_arithop_55 = Sub i32 n_18, 1_0 
              #                    occupy s1 with n_18
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    store to temp_79_arithop_55 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_79_arithop_55
              #                    occupy a0 with temp_80_arithop_55
              #                    regtab:    a0:Occupied { symidx: temp_80_arithop_55, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_78_arithop_59, tracked: true } |     a2:Freed { symidx: temp_75_arithop_59, tracked: true } |     a3:Freed { symidx: temp_74_arithop_59, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Occupied { symidx: n_18, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 


    sub     a0,s1,s6
              #                    free s1
              #                    free s6
              #                    free a0
              #                          n_18 = i32 temp_80_arithop_55 
              #                    occupy a0 with temp_80_arithop_55
              #                    occupy s1 with n_18
    mv      s1, a0
              #                    free a0
              #                    free s1
              #                          jump label: while.head_54 
              #                    store to temp_80_arithop_55 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with temp_80_arithop_55
              #                    store to temp_75_arithop_59 in mem offset legal
    sw      a2,104(sp)
              #                    release a2 with temp_75_arithop_59
              #                    store to temp_78_arithop_59 in mem offset legal
    sw      a1,88(sp)
              #                    release a1 with temp_78_arithop_59
              #                    store to temp_74_arithop_59 in mem offset legal
    sw      a3,108(sp)
              #                    release a3 with temp_74_arithop_59
              #                    store to temp_63_cmp_53 in mem offset legal
    sb      s7,183(sp)
              #                    release s7 with temp_63_cmp_53
              #                    occupy a0 with _anonymous_of_i_18_0
              #                    load from i_18 in mem


    lw      a0,1196(sp)
              #                    occupy a2 with _anonymous_of_temp_43_cmp_28_0
              #                    load from temp_43_cmp_28 in mem
    lb      a2,303(sp)
              #                    occupy a1 with _anonymous_of_len1_18_0
              #                    load from len1_18 in mem


    lw      a1,676(sp)
              #                    occupy a3 with _anonymous_of_len2_18_0
              #                    load from len2_18 in mem


    lw      a3,672(sp)
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 
              #                          label while.exit_54: 
.while.exit_54:
              #                          new_var temp_82_arithop_50:i32 
              #                          temp_82_arithop_50 = Add i32 n_18, len1_18 
              #                    occupy s1 with n_18
              #                    occupy a1 with len1_18
              #                    occupy s6 with temp_82_arithop_50
    add     s6,s1,a1
              #                    free s1
              #                    free a1
              #                    free s6
              #                          new_var temp_83_arithop_50:i32 
              #                          temp_83_arithop_50 = Sub i32 temp_82_arithop_50, 1_0 
              #                    occupy s6 with temp_82_arithop_50
              #                    store to i_18 in mem offset legal
    sw      a0,1196(sp)
              #                    release a0 with i_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to len1_18 in mem offset legal
    sw      a1,676(sp)
              #                    release a1 with len1_18
              #                    occupy a1 with temp_83_arithop_50
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_83_arithop_50, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s6:Occupied { symidx: temp_82_arithop_50, tracked: true, occupy_count: 1 } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 


    sub     a1,s6,a0
              #                    free s6
              #                    free a0
              #                    free a1
              #                          n_18 = i32 temp_83_arithop_50 
              #                    occupy a1 with temp_83_arithop_50
              #                    occupy s1 with n_18
    mv      s1, a1
              #                    free a1
              #                    free s1
              #                          new_var temp_84_arithop_50:i32 
              #                          temp_84_arithop_50 = Sub i32 i_18, 1_0 
              #                    occupy a0 with i_18
              #                    load from i_18 in mem


    lw      a0,1196(sp)
              #                    store to temp_83_arithop_50 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with temp_83_arithop_50
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_43_cmp_28 in mem offset legal
    sb      a2,303(sp)
              #                    release a2 with temp_43_cmp_28
              #                    occupy a2 with temp_84_arithop_50
              #                    regtab:    a0:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_84_arithop_50, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_62_arithop_50, tracked: true } |     s11:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_60_array_ptr_50, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s6:Freed { symidx: temp_82_arithop_50, tracked: true } |     s7:Freed { symidx: temp_63_cmp_53, tracked: true } |     s8:Freed { symidx: temp_61_array_ele_50, tracked: true } |     s9:Freed { symidx: t_18, tracked: true } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_18 = i32 temp_84_arithop_50 
              #                    occupy a2 with temp_84_arithop_50
              #                    occupy a0 with i_18
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_49 
              #                    store to temp_82_arithop_50 in mem offset legal
    sw      s6,68(sp)
              #                    release s6 with temp_82_arithop_50
              #                    store to temp_59_cmp_48 in mem offset legal
    sb      s5,207(sp)
              #                    release s5 with temp_59_cmp_48
              #                    store to temp_61_array_ele_50 in mem offset legal
    sw      s8,188(sp)
              #                    release s8 with temp_61_array_ele_50
              #                    store to temp_84_arithop_50 in mem offset legal
    sw      a2,60(sp)
              #                    release a2 with temp_84_arithop_50
              #                    store to temp_62_arithop_50 in mem offset legal
    sw      s10,184(sp)
              #                    release s10 with temp_62_arithop_50
              #                    store to temp_60_array_ptr_50 in mem offset legal
    sd      s3,192(sp)
              #                    release s3 with temp_60_array_ptr_50
              #                    store to t_18 in mem offset legal
    sw      s9,1188(sp)
              #                    release s9 with t_18
              #                    store to j_18 in mem offset legal
    sw      s11,1192(sp)
              #                    release s11 with j_18
              #                    store to temp_63_cmp_53 in mem offset legal
    sb      s7,183(sp)
              #                    release s7 with temp_63_cmp_53
              #                    occupy a2 with _anonymous_of_temp_43_cmp_28_0
              #                    load from temp_43_cmp_28 in mem
    lb      a2,303(sp)
              #                    occupy a1 with _anonymous_of_len1_18_0
              #                    load from len1_18 in mem


    lw      a1,676(sp)
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } | 
              #                          label while.exit_49: 
.while.exit_49:
              #                          new_var temp_85_array_ptr_67:ptr->i32 
              #                          temp_85_array_ptr_67 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(0_0)] 
              #                    occupy s3 with temp_85_array_ptr_67
    li      s3, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with 0_0
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s6,s7
              #                    free s6
              #                    free s7
    add     s3,s3,s8
              #                    free s8
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,304
              #                    free s3
              #                          new_var temp_86_array_ele_67:i32 
              #                          temp_86_array_ele_67 = load temp_85_array_ptr_67:ptr->i32 
              #                    occupy s3 with temp_85_array_ptr_67
              #                    occupy s9 with temp_86_array_ele_67
    lw      s9,0(s3)
              #                    free s9
              #                    free s3
              #                          new_var temp_87_cmp_67:i1 
              #                          temp_87_cmp_67 = icmp i32 Ne temp_86_array_ele_67, 0_0 
              #                    occupy s9 with temp_86_array_ele_67
              #                    found literal reg Some(s7) already exist with 0_0
              #                    occupy s7 with 0_0
              #                    occupy s10 with temp_87_cmp_67
    xor     s10,s9,s7
    snez    s10, s10
              #                    free s9
              #                    free s7
              #                    free s10
              #                          br i1 temp_87_cmp_67, label branch_true_68, label branch_false_68 
              #                    occupy s10 with temp_87_cmp_67
              #                    free s10
              #                    occupy s10 with temp_87_cmp_67
    bnez    s10, .branch_true_68
              #                    free s10
    j       .branch_false_68
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_87_cmp_67, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_85_array_ptr_67, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s9:Freed { symidx: temp_86_array_ele_67, tracked: true } | 
              #                          label branch_true_68: 
.branch_true_68:
              #                          new_var temp_88_array_ptr_67:ptr->i32 
              #                          temp_88_array_ptr_67 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(0_0)] 
              #                    occupy s6 with temp_88_array_ptr_67
    li      s6, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s7,s8
              #                    free s7
              #                    free s8
    add     s6,s6,s11
              #                    free s11
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,304
              #                    free s6
              #                          new_var temp_89_array_ele_67:i32 
              #                          temp_89_array_ele_67 = load temp_88_array_ptr_67:ptr->i32 
              #                    occupy s6 with temp_88_array_ptr_67
              #                    occupy s7 with temp_89_array_ele_67
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                           Call void putint_0(temp_89_array_ele_67) 
              #                    saved register dumping to mem
              #                    store to n_18 in mem offset legal
    sw      s1,1184(sp)
              #                    release s1 with n_18
              #                    store to temp_18 in mem offset legal
    sw      s2,1180(sp)
              #                    release s2 with temp_18
              #                    store to temp_85_array_ptr_67 in mem offset legal
    sd      s3,48(sp)
              #                    release s3 with temp_85_array_ptr_67
              #                    store to temp_58_arithop_18 in mem offset legal
    sw      s4,208(sp)
              #                    release s4 with temp_58_arithop_18
              #                    store to temp_59_cmp_48 in mem offset legal
    sb      s5,207(sp)
              #                    release s5 with temp_59_cmp_48
              #                    store to temp_88_array_ptr_67 in mem offset legal
    sd      s6,32(sp)
              #                    release s6 with temp_88_array_ptr_67
              #                    store to temp_89_array_ele_67 in mem offset legal
    sw      s7,28(sp)
              #                    release s7 with temp_89_array_ele_67
              #                    store to temp_86_array_ele_67 in mem offset legal
    sw      s9,44(sp)
              #                    release s9 with temp_86_array_ele_67
              #                    store to temp_87_cmp_67 in mem offset legal
    sb      s10,43(sp)
              #                    release s10 with temp_87_cmp_67
              #                    store to i_18 in mem offset legal
    sw      a0,1196(sp)
              #                    release a0 with i_18
              #                    store to len1_18 in mem offset legal
    sw      a1,676(sp)
              #                    release a1 with len1_18
              #                    store to temp_43_cmp_28 in mem offset legal
    sb      a2,303(sp)
              #                    release a2 with temp_43_cmp_28
              #                    store to len2_18 in mem offset legal
    sw      a3,672(sp)
              #                    release a3 with len2_18
              #                    store to temp_48_cmp_34 in mem offset legal
    sb      a4,271(sp)
              #                    release a4 with temp_48_cmp_34
              #                    store to temp_53_arithop_18 in mem offset legal
    sw      a5,236(sp)
              #                    release a5 with temp_53_arithop_18
              #                    store to temp_55_cmp_41 in mem offset legal
    sb      a6,231(sp)
              #                    release a6 with temp_55_cmp_41
              #                    store to temp_54_arithop_18 in mem offset legal
    sw      a7,232(sp)
              #                    release a7 with temp_54_arithop_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_89_array_ele_67_0
              #                    load from temp_89_array_ele_67 in mem


    lw      a0,28(sp)
              #                    arg load ended


    call    putint
              #                          jump label: branch_false_68 
              #                    occupy a0 with _anonymous_of_i_18_0
              #                    load from i_18 in mem


    lw      a0,1196(sp)
              #                    occupy a6 with _anonymous_of_temp_55_cmp_41_0
              #                    load from temp_55_cmp_41 in mem
    lb      a6,231(sp)
              #                    occupy s2 with _anonymous_of_temp_18_0
              #                    load from temp_18 in mem


    lw      s2,1180(sp)
              #                    occupy s5 with _anonymous_of_temp_59_cmp_48_0
              #                    load from temp_59_cmp_48 in mem
    lb      s5,207(sp)
              #                    occupy s1 with _anonymous_of_n_18_0
              #                    load from n_18 in mem


    lw      s1,1184(sp)
              #                    occupy a2 with _anonymous_of_temp_43_cmp_28_0
              #                    load from temp_43_cmp_28 in mem
    lb      a2,303(sp)
              #                    occupy a5 with _anonymous_of_temp_53_arithop_18_0
              #                    load from temp_53_arithop_18 in mem


    lw      a5,236(sp)
              #                    occupy s10 with _anonymous_of_temp_87_cmp_67_0
              #                    load from temp_87_cmp_67 in mem
    lb      s10,43(sp)
              #                    occupy s3 with _anonymous_of_temp_85_array_ptr_67_0
              #                    load from temp_85_array_ptr_67 in mem
    ld      s3,48(sp)
              #                    occupy a1 with _anonymous_of_len1_18_0
              #                    load from len1_18 in mem


    lw      a1,676(sp)
              #                    occupy a4 with _anonymous_of_temp_48_cmp_34_0
              #                    load from temp_48_cmp_34 in mem
    lb      a4,271(sp)
              #                    occupy s9 with _anonymous_of_temp_86_array_ele_67_0
              #                    load from temp_86_array_ele_67 in mem


    lw      s9,44(sp)
              #                    occupy s4 with _anonymous_of_temp_58_arithop_18_0
              #                    load from temp_58_arithop_18 in mem


    lw      s4,208(sp)
              #                    occupy a7 with _anonymous_of_temp_54_arithop_18_0
              #                    load from temp_54_arithop_18 in mem


    lw      a7,232(sp)
              #                    occupy a3 with _anonymous_of_len2_18_0
              #                    load from len2_18 in mem


    lw      a3,672(sp)
    j       .branch_false_68
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_87_cmp_67, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_85_array_ptr_67, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s9:Freed { symidx: temp_86_array_ele_67, tracked: true } | 
              #                          label branch_false_68: 
.branch_false_68:
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_87_cmp_67, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_85_array_ptr_67, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s9:Freed { symidx: temp_86_array_ele_67, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          i_18 = i32 1_0 
              #                    occupy a0 with i_18
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_72 
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_87_cmp_67, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_85_array_ptr_67, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s9:Freed { symidx: temp_86_array_ele_67, tracked: true } | 
              #                          label while.head_72: 
.while.head_72:
              #                          new_var temp_90_arithop_71:i32 
              #                          temp_90_arithop_71 = Add i32 len1_18, len2_18 
              #                    occupy a1 with len1_18
              #                    occupy a3 with len2_18
              #                    occupy s6 with temp_90_arithop_71
    add     s6,a1,a3
              #                    free a1
              #                    free a3
              #                    free s6
              #                          new_var temp_91_arithop_71:i32 
              #                          temp_91_arithop_71 = Sub i32 temp_90_arithop_71, 1_0 
              #                    occupy s6 with temp_90_arithop_71
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with temp_91_arithop_71
              #                    regtab:    a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_87_cmp_67, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_85_array_ptr_67, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s6:Occupied { symidx: temp_90_arithop_71, tracked: true, occupy_count: 1 } |     s7:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s8:Occupied { symidx: temp_91_arithop_71, tracked: true, occupy_count: 1 } |     s9:Freed { symidx: temp_86_array_ele_67, tracked: true } | 


    sub     s8,s6,s7
              #                    free s6
              #                    free s7
              #                    free s8
              #                          new_var temp_92_cmp_71:i1 
              #                          temp_92_cmp_71 = icmp i32 Sle i_18, temp_91_arithop_71 
              #                    occupy a0 with i_18
              #                    occupy s8 with temp_91_arithop_71
              #                    occupy s11 with temp_92_cmp_71
    slt     s11,s8,a0
    xori    s11,s11,1
              #                    free a0
              #                    free s8
              #                    free s11
              #                          br i1 temp_92_cmp_71, label while.body_72, label while.exit_72 
              #                    occupy s11 with temp_92_cmp_71
              #                    free s11
              #                    occupy s11 with temp_92_cmp_71
    bnez    s11, .while.body_72
              #                    free s11
    j       .while.exit_72
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_87_cmp_67, tracked: true } |     s11:Freed { symidx: temp_92_cmp_71, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_85_array_ptr_67, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s6:Freed { symidx: temp_90_arithop_71, tracked: true } |     s8:Freed { symidx: temp_91_arithop_71, tracked: true } |     s9:Freed { symidx: temp_86_array_ele_67, tracked: true } | 
              #                          label while.body_72: 
.while.body_72:
              #                          new_var temp_93_array_ptr_73:ptr->i32 
              #                          temp_93_array_ptr_73 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(i_18)] 
              #                    occupy s7 with temp_93_array_ptr_73
    li      s7, 0
              #                    store to i_18 in mem offset legal
    sw      a0,1196(sp)
              #                    release a0 with i_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to len1_18 in mem offset legal
    sw      a1,676(sp)
              #                    release a1 with len1_18
              #                    occupy a1 with i_18
              #                    load from i_18 in mem


    lw      a1,1196(sp)
              #                    store to temp_43_cmp_28 in mem offset legal
    sb      a2,303(sp)
              #                    release a2 with temp_43_cmp_28
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,304
              #                    free s7
              #                          new_var temp_94_array_ele_73:i32 
              #                          temp_94_array_ele_73 = load temp_93_array_ptr_73:ptr->i32 
              #                    occupy s7 with temp_93_array_ptr_73
              #                    occupy a0 with temp_94_array_ele_73
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                           Call void putint_0(temp_94_array_ele_73) 
              #                    saved register dumping to mem
              #                    store to n_18 in mem offset legal
    sw      s1,1184(sp)
              #                    release s1 with n_18
              #                    store to temp_18 in mem offset legal
    sw      s2,1180(sp)
              #                    release s2 with temp_18
              #                    store to temp_85_array_ptr_67 in mem offset legal
    sd      s3,48(sp)
              #                    release s3 with temp_85_array_ptr_67
              #                    store to temp_58_arithop_18 in mem offset legal
    sw      s4,208(sp)
              #                    release s4 with temp_58_arithop_18
              #                    store to temp_59_cmp_48 in mem offset legal
    sb      s5,207(sp)
              #                    release s5 with temp_59_cmp_48
              #                    store to temp_90_arithop_71 in mem offset legal
    sw      s6,24(sp)
              #                    release s6 with temp_90_arithop_71
              #                    store to temp_93_array_ptr_73 in mem offset legal
    sd      s7,8(sp)
              #                    release s7 with temp_93_array_ptr_73
              #                    store to temp_91_arithop_71 in mem offset legal
    sw      s8,20(sp)
              #                    release s8 with temp_91_arithop_71
              #                    store to temp_86_array_ele_67 in mem offset legal
    sw      s9,44(sp)
              #                    release s9 with temp_86_array_ele_67
              #                    store to temp_87_cmp_67 in mem offset legal
    sb      s10,43(sp)
              #                    release s10 with temp_87_cmp_67
              #                    store to temp_92_cmp_71 in mem offset legal
    sb      s11,19(sp)
              #                    release s11 with temp_92_cmp_71
              #                    store to temp_94_array_ele_73 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_94_array_ele_73
              #                    store to i_18 in mem offset legal
    sw      a1,1196(sp)
              #                    release a1 with i_18
              #                    store to len2_18 in mem offset legal
    sw      a3,672(sp)
              #                    release a3 with len2_18
              #                    store to temp_48_cmp_34 in mem offset legal
    sb      a4,271(sp)
              #                    release a4 with temp_48_cmp_34
              #                    store to temp_53_arithop_18 in mem offset legal
    sw      a5,236(sp)
              #                    release a5 with temp_53_arithop_18
              #                    store to temp_55_cmp_41 in mem offset legal
    sb      a6,231(sp)
              #                    release a6 with temp_55_cmp_41
              #                    store to temp_54_arithop_18 in mem offset legal
    sw      a7,232(sp)
              #                    release a7 with temp_54_arithop_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_94_array_ele_73_0
              #                    load from temp_94_array_ele_73 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_95_arithop_73:i32 
              #                          temp_95_arithop_73 = Add i32 i_18, 1_0 
              #                    occupy a0 with i_18
              #                    load from i_18 in mem


    lw      a0,1196(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_95_arithop_73
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_18 = i32 temp_95_arithop_73 
              #                    occupy a2 with temp_95_arithop_73
              #                    occupy a0 with i_18
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_72 
              #                    store to temp_95_arithop_73 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_95_arithop_73
              #                    occupy a6 with _anonymous_of_temp_55_cmp_41_0
              #                    load from temp_55_cmp_41 in mem
    lb      a6,231(sp)
              #                    occupy s2 with _anonymous_of_temp_18_0
              #                    load from temp_18 in mem


    lw      s2,1180(sp)
              #                    occupy s5 with _anonymous_of_temp_59_cmp_48_0
              #                    load from temp_59_cmp_48 in mem
    lb      s5,207(sp)
              #                    occupy s1 with _anonymous_of_n_18_0
              #                    load from n_18 in mem


    lw      s1,1184(sp)
              #                    occupy a2 with _anonymous_of_temp_43_cmp_28_0
              #                    load from temp_43_cmp_28 in mem
    lb      a2,303(sp)
              #                    occupy a5 with _anonymous_of_temp_53_arithop_18_0
              #                    load from temp_53_arithop_18 in mem


    lw      a5,236(sp)
              #                    occupy s10 with _anonymous_of_temp_87_cmp_67_0
              #                    load from temp_87_cmp_67 in mem
    lb      s10,43(sp)
              #                    occupy s3 with _anonymous_of_temp_85_array_ptr_67_0
              #                    load from temp_85_array_ptr_67 in mem
    ld      s3,48(sp)
              #                    occupy a1 with _anonymous_of_len1_18_0
              #                    load from len1_18 in mem


    lw      a1,676(sp)
              #                    occupy a4 with _anonymous_of_temp_48_cmp_34_0
              #                    load from temp_48_cmp_34 in mem
    lb      a4,271(sp)
              #                    occupy s9 with _anonymous_of_temp_86_array_ele_67_0
              #                    load from temp_86_array_ele_67 in mem


    lw      s9,44(sp)
              #                    occupy s4 with _anonymous_of_temp_58_arithop_18_0
              #                    load from temp_58_arithop_18 in mem


    lw      s4,208(sp)
              #                    occupy a7 with _anonymous_of_temp_54_arithop_18_0
              #                    load from temp_54_arithop_18 in mem


    lw      a7,232(sp)
              #                    occupy a3 with _anonymous_of_len2_18_0
              #                    load from len2_18 in mem


    lw      a3,672(sp)
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_87_cmp_67, tracked: true } |     s11:Freed { symidx: temp_92_cmp_71, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_85_array_ptr_67, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s6:Freed { symidx: temp_90_arithop_71, tracked: true } |     s8:Freed { symidx: temp_91_arithop_71, tracked: true } |     s9:Freed { symidx: temp_86_array_ele_67, tracked: true } | 
              #                          label while.exit_72: 
.while.exit_72:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,1208(sp)
              #                    load from s0_main_0 in mem
    ld      s0,1200(sp)
              #                    store to i_18 in mem offset legal
    sw      a0,1196(sp)
              #                    release a0 with i_18
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1216
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: len1_18, tracked: true } |     a2:Freed { symidx: temp_43_cmp_28, tracked: true } |     a3:Freed { symidx: len2_18, tracked: true } |     a4:Freed { symidx: temp_48_cmp_34, tracked: true } |     a5:Freed { symidx: temp_53_arithop_18, tracked: true } |     a6:Freed { symidx: temp_55_cmp_41, tracked: true } |     a7:Freed { symidx: temp_54_arithop_18, tracked: true } |     s10:Freed { symidx: temp_87_cmp_67, tracked: true } |     s11:Freed { symidx: temp_92_cmp_71, tracked: true } |     s1:Freed { symidx: n_18, tracked: true } |     s2:Freed { symidx: temp_18, tracked: true } |     s3:Freed { symidx: temp_85_array_ptr_67, tracked: true } |     s4:Freed { symidx: temp_58_arithop_18, tracked: true } |     s5:Freed { symidx: temp_59_cmp_48, tracked: true } |     s6:Freed { symidx: temp_90_arithop_71, tracked: true } |     s8:Freed { symidx: temp_91_arithop_71, tracked: true } |     s9:Freed { symidx: temp_86_array_ele_67, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl len
              #                          global i32 len_0 
    .type len,@object
len:
    .word 20
