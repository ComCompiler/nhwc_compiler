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
              #                    mem layout:|ra_main:8 at 1184|s0_main:8 at 1176|i:4 at 1172|j:4 at 1168|t:4 at 1164|n:4 at 1160|temp:4 at 1156|none:4 at 1152|temp_0_array_init_ptr:8 at 1144|temp_1_array_init_ptr:8 at 1136|temp_2_array_init_ptr:8 at 1128|temp_3_array_init_ptr:8 at 1120|temp_4_array_init_ptr:8 at 1112|temp_5_array_init_ptr:8 at 1104|temp_6_array_init_ptr:8 at 1096|temp_7_array_init_ptr:8 at 1088|temp_8_array_init_ptr:8 at 1080|temp_9_array_init_ptr:8 at 1072|temp_10_array_init_ptr:8 at 1064|temp_11_array_init_ptr:8 at 1056|temp_12_array_init_ptr:8 at 1048|temp_13_array_init_ptr:8 at 1040|temp_14_array_init_ptr:8 at 1032|temp_15_array_init_ptr:8 at 1024|temp_16_array_init_ptr:8 at 1016|temp_17_array_init_ptr:8 at 1008|temp_18_array_init_ptr:8 at 1000|temp_19_array_init_ptr:8 at 992|mult1:80 at 912|temp_20_array_init_ptr:8 at 904|temp_21_array_init_ptr:8 at 896|temp_22_array_init_ptr:8 at 888|temp_23_array_init_ptr:8 at 880|temp_24_array_init_ptr:8 at 872|temp_25_array_init_ptr:8 at 864|temp_26_array_init_ptr:8 at 856|temp_27_array_init_ptr:8 at 848|temp_28_array_init_ptr:8 at 840|temp_29_array_init_ptr:8 at 832|temp_30_array_init_ptr:8 at 824|temp_31_array_init_ptr:8 at 816|temp_32_array_init_ptr:8 at 808|temp_33_array_init_ptr:8 at 800|temp_34_array_init_ptr:8 at 792|temp_35_array_init_ptr:8 at 784|temp_36_array_init_ptr:8 at 776|temp_37_array_init_ptr:8 at 768|temp_38_array_init_ptr:8 at 760|temp_39_array_init_ptr:8 at 752|mult2:80 at 672|len1:4 at 668|len2:4 at 664|c1:100 at 564|c2:100 at 464|result:160 at 304|temp_40_cmp:1 at 303|none:7 at 296|temp_41_index_ptr:8 at 288|temp_42_array_ptr:8 at 280|temp_43_array_ele:4 at 276|temp_44_arithop:4 at 272|temp_45_cmp:1 at 271|none:7 at 264|temp_46_index_ptr:8 at 256|temp_47_array_ptr:8 at 248|temp_48_array_ele:4 at 244|temp_49_arithop:4 at 240|temp_50_arithop:4 at 236|temp_51_arithop:4 at 232|temp_52_cmp:1 at 231|none:7 at 224|temp_53_index_ptr:8 at 216|temp_54_arithop:4 at 212|temp_55_arithop:4 at 208|temp_56_cmp:1 at 207|none:7 at 200|temp_57_array_ptr:8 at 192|temp_58_array_ele:4 at 188|temp_59_arithop:4 at 184|temp_60_cmp:1 at 183|none:7 at 176|temp_61_array_ptr:8 at 168|temp_62_array_ele:4 at 164|temp_63_arithop:4 at 160|temp_64_array_ptr:8 at 152|temp_65_array_ele:4 at 148|temp_66_arithop:4 at 144|temp_67_cmp:1 at 143|none:7 at 136|temp_68_index_ptr:8 at 128|temp_69_arithop:4 at 124|none:4 at 120|temp_70_index_ptr:8 at 112|temp_71_arithop:4 at 108|temp_72_arithop:4 at 104|temp_73_array_ptr:8 at 96|temp_74_array_ele:4 at 92|temp_75_arithop:4 at 88|temp_76_arithop:4 at 84|temp_77_arithop:4 at 80|temp_78_index_ptr:8 at 72|temp_79_arithop:4 at 68|temp_80_arithop:4 at 64|temp_81_arithop:4 at 60|none:4 at 56|temp_82_array_ptr:8 at 48|temp_83_array_ele:4 at 44|temp_84_cmp:1 at 43|none:3 at 40|temp_85_array_ptr:8 at 32|temp_86_array_ele:4 at 28|temp_87_arithop:4 at 24|temp_88_arithop:4 at 20|temp_89_cmp:1 at 19|none:3 at 16|temp_90_array_ptr:8 at 8|temp_91_array_ele:4 at 4|temp_92_arithop:4 at 0
    addi    sp,sp,-1192
              #                    store to ra_main_0 in mem offset legal
    sd      ra,1184(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,1176(sp)
    addi    s0,sp,1192
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
              #                          alloc Array:i32:[Some(20_0)] mult1_18 
              #                          alloc ptr->i32 temp_20_array_init_ptr_18 
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
              #                          alloc Array:i32:[Some(20_0)] mult2_18 
              #                          alloc i32 len1_18 
              #                          alloc i32 len2_18 
              #                          alloc Array:i32:[Some(25_0)] c1_18 
              #                          alloc Array:i32:[Some(25_0)] c2_18 
              #                          alloc Array:i32:[Some(40_0)] result_18 
              #                          alloc i1 temp_40_cmp_28 
              #                          alloc ptr->i32 temp_41_index_ptr_30 
              #                          alloc ptr->i32 temp_42_array_ptr_30 
              #                          alloc i32 temp_43_array_ele_30 
              #                          alloc i32 temp_44_arithop_30 
              #                          alloc i1 temp_45_cmp_34 
              #                          alloc ptr->i32 temp_46_index_ptr_36 
              #                          alloc ptr->i32 temp_47_array_ptr_36 
              #                          alloc i32 temp_48_array_ele_36 
              #                          alloc i32 temp_49_arithop_36 
              #                          alloc i32 temp_50_arithop_18 
              #                          alloc i32 temp_51_arithop_18 
              #                          alloc i1 temp_52_cmp_41 
              #                          alloc ptr->i32 temp_53_index_ptr_43 
              #                          alloc i32 temp_54_arithop_43 
              #                          alloc i32 temp_55_arithop_18 
              #                          alloc i1 temp_56_cmp_48 
              #                          alloc ptr->i32 temp_57_array_ptr_50 
              #                          alloc i32 temp_58_array_ele_50 
              #                          alloc i32 temp_59_arithop_50 
              #                          alloc i1 temp_60_cmp_53 
              #                          alloc ptr->i32 temp_61_array_ptr_55 
              #                          alloc i32 temp_62_array_ele_55 
              #                          alloc i32 temp_63_arithop_55 
              #                          alloc ptr->i32 temp_64_array_ptr_55 
              #                          alloc i32 temp_65_array_ele_55 
              #                          alloc i32 temp_66_arithop_55 
              #                          alloc i1 temp_67_cmp_57 
              #                          alloc ptr->i32 temp_68_index_ptr_59 
              #                          alloc i32 temp_69_arithop_59 
              #                          alloc ptr->i32 temp_70_index_ptr_59 
              #                          alloc i32 temp_71_arithop_59 
              #                          alloc i32 temp_72_arithop_59 
              #                          alloc ptr->i32 temp_73_array_ptr_59 
              #                          alloc i32 temp_74_array_ele_59 
              #                          alloc i32 temp_75_arithop_59 
              #                          alloc i32 temp_76_arithop_55 
              #                          alloc i32 temp_77_arithop_55 
              #                          alloc ptr->i32 temp_78_index_ptr_57 
              #                          alloc i32 temp_79_arithop_50 
              #                          alloc i32 temp_80_arithop_50 
              #                          alloc i32 temp_81_arithop_50 
              #                          alloc ptr->i32 temp_82_array_ptr_67 
              #                          alloc i32 temp_83_array_ele_67 
              #                          alloc i1 temp_84_cmp_67 
              #                          alloc ptr->i32 temp_85_array_ptr_67 
              #                          alloc i32 temp_86_array_ele_67 
              #                          alloc i32 temp_87_arithop_71 
              #                          alloc i32 temp_88_arithop_71 
              #                          alloc i1 temp_89_cmp_71 
              #                          alloc ptr->i32 temp_90_array_ptr_73 
              #                          alloc i32 temp_91_array_ele_73 
              #                          alloc i32 temp_92_arithop_73 
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
              #                          temp_0_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(10_0)] 
              #                    occupy a0 with temp_0_array_init_ptr_18
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    occupy a3 with _anonymous_of_mult1_18_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,912
              #                    free a0
              #                          store 1_0:i32 temp_0_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_0_array_init_ptr_18
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult1_18:32 
              #                          mult1_18 = chi mult1_18:32 
              #                          new_var temp_1_array_init_ptr_18:ptr->i32 
              #                          temp_1_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(2_0)] 
              #                    occupy a4 with temp_1_array_init_ptr_18
    li      a4, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy a6 with _anonymous_of_mult1_18_0
    mul     a6,a1,a5
              #                    free a1
              #                    free a5
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,912
              #                    free a4
              #                          store 3_0:i32 temp_1_array_init_ptr_18:ptr->i32 
              #                    occupy a4 with temp_1_array_init_ptr_18
              #                    occupy a7 with 3_0
    li      a7, 3
    sw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                          mu mult1_18:38 
              #                          mult1_18 = chi mult1_18:38 
              #                          new_var temp_2_array_init_ptr_18:ptr->i32 
              #                          temp_2_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(4_0)] 
              #                    occupy s1 with temp_2_array_init_ptr_18
    li      s1, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy s2 with 4_0
    li      s2, 4
              #                    occupy s3 with _anonymous_of_mult1_18_0
    mul     s3,a1,s2
              #                    free a1
              #                    free s2
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,912
              #                    free s1
              #                          store 5_0:i32 temp_2_array_init_ptr_18:ptr->i32 
              #                    occupy s1 with temp_2_array_init_ptr_18
              #                    occupy s4 with 5_0
    li      s4, 5
    sw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          mu mult1_18:44 
              #                          mult1_18 = chi mult1_18:44 
              #                          new_var temp_3_array_init_ptr_18:ptr->i32 
              #                          temp_3_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(14_0)] 
              #                    occupy s5 with temp_3_array_init_ptr_18
    li      s5, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy s6 with 14_0
    li      s6, 14
              #                    occupy s7 with _anonymous_of_mult1_18_0
    mul     s7,a1,s6
              #                    free a1
              #                    free s6
    add     s5,s5,s7
              #                    free s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,912
              #                    free s5
              #                          store 5_0:i32 temp_3_array_init_ptr_18:ptr->i32 
              #                    occupy s5 with temp_3_array_init_ptr_18
              #                    found literal reg Some(s4) already exist with 5_0
              #                    occupy s4 with 5_0
    sw      s4,0(s5)
              #                    free s4
              #                    free s5
              #                          mu mult1_18:50 
              #                          mult1_18 = chi mult1_18:50 
              #                          new_var temp_4_array_init_ptr_18:ptr->i32 
              #                          temp_4_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(17_0)] 
              #                    occupy s8 with temp_4_array_init_ptr_18
    li      s8, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy s9 with 17_0
    li      s9, 17
              #                    occupy s10 with _anonymous_of_mult1_18_0
    mul     s10,a1,s9
              #                    free a1
              #                    free s9
    add     s8,s8,s10
              #                    free s10
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,912
              #                    free s8
              #                          store 8_0:i32 temp_4_array_init_ptr_18:ptr->i32 
              #                    occupy s8 with temp_4_array_init_ptr_18
              #                    occupy s11 with 8_0
    li      s11, 8
    sw      s11,0(s8)
              #                    free s11
              #                    free s8
              #                          mu mult1_18:56 
              #                          mult1_18 = chi mult1_18:56 
              #                          new_var temp_5_array_init_ptr_18:ptr->i32 
              #                          temp_5_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(0_0)] 
              #                    occupy a1 with temp_5_array_init_ptr_18
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a5 with _anonymous_of_mult1_18_0
    mul     a5,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,912
              #                    free a1
              #                          store 1_0:i32 temp_5_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_5_array_init_ptr_18
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu mult1_18:62 
              #                          mult1_18 = chi mult1_18:62 
              #                          new_var temp_6_array_init_ptr_18:ptr->i32 
              #                          temp_6_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(7_0)] 
              #                    occupy a2 with temp_6_array_init_ptr_18
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with 7_0
    li      a5, 7
              #                    occupy a6 with _anonymous_of_mult1_18_0
    mul     a6,a3,a5
              #                    free a3
              #                    free a5
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,912
              #                    free a2
              #                          store 8_0:i32 temp_6_array_init_ptr_18:ptr->i32 
              #                    occupy a2 with temp_6_array_init_ptr_18
              #                    found literal reg Some(s11) already exist with 8_0
              #                    occupy s11 with 8_0
    sw      s11,0(a2)
              #                    free s11
              #                    free a2
              #                          mu mult1_18:68 
              #                          mult1_18 = chi mult1_18:68 
              #                          new_var temp_7_array_init_ptr_18:ptr->i32 
              #                          temp_7_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(6_0)] 
              #                    occupy a3 with temp_7_array_init_ptr_18
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with 6_0
    li      a6, 6
              #                    occupy a7 with _anonymous_of_mult1_18_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,912
              #                    free a3
              #                          store 7_0:i32 temp_7_array_init_ptr_18:ptr->i32 
              #                    occupy a3 with temp_7_array_init_ptr_18
              #                    occupy a5 with 7_0
    li      a5, 7
    sw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                          mu mult1_18:74 
              #                          mult1_18 = chi mult1_18:74 
              #                          new_var temp_8_array_init_ptr_18:ptr->i32 
              #                          temp_8_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(3_0)] 
              #                    occupy a5 with temp_8_array_init_ptr_18
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 3_0
    li      a7, 3
              #                    occupy s2 with _anonymous_of_mult1_18_0
    mul     s2,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,912
              #                    free a5
              #                          store 4_0:i32 temp_8_array_init_ptr_18:ptr->i32 
              #                    occupy a5 with temp_8_array_init_ptr_18
              #                    occupy a6 with 4_0
    li      a6, 4
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu mult1_18:80 
              #                          mult1_18 = chi mult1_18:80 
              #                          new_var temp_9_array_init_ptr_18:ptr->i32 
              #                          temp_9_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(13_0)] 
              #                    occupy a6 with temp_9_array_init_ptr_18
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with 13_0
    li      s2, 13
              #                    occupy s3 with _anonymous_of_mult1_18_0
    mul     s3,a7,s2
              #                    free a7
              #                    free s2
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,912
              #                    free a6
              #                          store 4_0:i32 temp_9_array_init_ptr_18:ptr->i32 
              #                    occupy a6 with temp_9_array_init_ptr_18
              #                    occupy a7 with 4_0
    li      a7, 4
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          mu mult1_18:86 
              #                          mult1_18 = chi mult1_18:86 
              #                          new_var temp_10_array_init_ptr_18:ptr->i32 
              #                          temp_10_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(15_0)] 
              #                    occupy a7 with temp_10_array_init_ptr_18
    li      a7, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with 15_0
    li      s3, 15
              #                    occupy s4 with _anonymous_of_mult1_18_0
    mul     s4,s2,s3
              #                    free s2
              #                    free s3
    add     a7,a7,s4
              #                    free s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,912
              #                    free a7
              #                          store 6_0:i32 temp_10_array_init_ptr_18:ptr->i32 
              #                    occupy a7 with temp_10_array_init_ptr_18
              #                    occupy s2 with 6_0
    li      s2, 6
    sw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          mu mult1_18:92 
              #                          mult1_18 = chi mult1_18:92 
              #                          new_var temp_11_array_init_ptr_18:ptr->i32 
              #                          temp_11_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(8_0)] 
              #                    occupy s2 with temp_11_array_init_ptr_18
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    found literal reg Some(s11) already exist with 8_0
              #                    occupy s11 with 8_0
              #                    occupy s4 with _anonymous_of_mult1_18_0
    mul     s4,s3,s11
              #                    free s3
              #                    free s11
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,912
              #                    free s2
              #                          store 9_0:i32 temp_11_array_init_ptr_18:ptr->i32 
              #                    occupy s2 with temp_11_array_init_ptr_18
              #                    occupy s3 with 9_0
    li      s3, 9
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          mu mult1_18:98 
              #                          mult1_18 = chi mult1_18:98 
              #                          new_var temp_12_array_init_ptr_18:ptr->i32 
              #                          temp_12_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(9_0)] 
              #                    occupy s3 with temp_12_array_init_ptr_18
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with 9_0
    li      s6, 9
              #                    occupy s7 with _anonymous_of_mult1_18_0
    mul     s7,s4,s6
              #                    free s4
              #                    free s6
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,912
              #                    free s3
              #                          store 0_0:i32 temp_12_array_init_ptr_18:ptr->i32 
              #                    occupy s3 with temp_12_array_init_ptr_18
              #                    occupy s4 with 0_0
    li      s4, 0
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          mu mult1_18:104 
              #                          mult1_18 = chi mult1_18:104 
              #                          new_var temp_13_array_init_ptr_18:ptr->i32 
              #                          temp_13_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(1_0)] 
              #                    occupy s4 with temp_13_array_init_ptr_18
    li      s4, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s9 with _anonymous_of_mult1_18_0
    mul     s9,s6,s7
              #                    free s6
              #                    free s7
    add     s4,s4,s9
              #                    free s9
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,912
              #                    free s4
              #                          store 2_0:i32 temp_13_array_init_ptr_18:ptr->i32 
              #                    occupy s4 with temp_13_array_init_ptr_18
              #                    occupy s6 with 2_0
    li      s6, 2
    sw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          mu mult1_18:110 
              #                          mult1_18 = chi mult1_18:110 
              #                          new_var temp_14_array_init_ptr_18:ptr->i32 
              #                          temp_14_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(11_0)] 
              #                    occupy s6 with temp_14_array_init_ptr_18
    li      s6, 0
              #                    found literal reg Some(s7) already exist with 1_0
              #                    occupy s7 with 1_0
              #                    occupy s9 with 11_0
    li      s9, 11
              #                    occupy s10 with _anonymous_of_mult1_18_0
    mul     s10,s7,s9
              #                    free s7
              #                    free s9
    add     s6,s6,s10
              #                    free s10
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,912
              #                    free s6
              #                          store 2_0:i32 temp_14_array_init_ptr_18:ptr->i32 
              #                    occupy s6 with temp_14_array_init_ptr_18
              #                    occupy s7 with 2_0
    li      s7, 2
    sw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          mu mult1_18:116 
              #                          mult1_18 = chi mult1_18:116 
              #                          new_var temp_15_array_init_ptr_18:ptr->i32 
              #                          temp_15_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(5_0)] 
              #                    occupy s7 with temp_15_array_init_ptr_18
    li      s7, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with 5_0
    li      s10, 5
              #                    occupy s11 with _anonymous_of_mult1_18_0
    mul     s11,s9,s10
              #                    free s9
              #                    free s10
    add     s7,s7,s11
              #                    free s11
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,912
              #                    free s7
              #                          store 6_0:i32 temp_15_array_init_ptr_18:ptr->i32 
              #                    occupy s7 with temp_15_array_init_ptr_18
              #                    occupy s9 with 6_0
    li      s9, 6
    sw      s9,0(s7)
              #                    free s9
              #                    free s7
              #                          mu mult1_18:122 
              #                          mult1_18 = chi mult1_18:122 
              #                          new_var temp_16_array_init_ptr_18:ptr->i32 
              #                          temp_16_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(12_0)] 
              #                    occupy s9 with temp_16_array_init_ptr_18
    li      s9, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with 12_0
    li      s11, 12
              #                    store to temp_0_array_init_ptr_18 in mem offset legal
    sd      a0,1144(sp)
              #                    release a0 with temp_0_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_mult1_18_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     s9,s9,a0
              #                    free a0
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,912
              #                    free s9
              #                          store 3_0:i32 temp_16_array_init_ptr_18:ptr->i32 
              #                    occupy s9 with temp_16_array_init_ptr_18
              #                    occupy a0 with 3_0
    li      a0, 3
    sw      a0,0(s9)
              #                    free a0
              #                    free s9
              #                          mu mult1_18:128 
              #                          mult1_18 = chi mult1_18:128 
              #                          new_var temp_17_array_init_ptr_18:ptr->i32 
              #                          temp_17_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(16_0)] 
              #                    occupy a0 with temp_17_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 16_0
    li      s11, 16
              #                    store to temp_5_array_init_ptr_18 in mem offset legal
    sd      a1,1104(sp)
              #                    release a1 with temp_5_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_mult1_18_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,912
              #                    free a0
              #                          store 7_0:i32 temp_17_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_17_array_init_ptr_18
              #                    occupy a1 with 7_0
    li      a1, 7
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult1_18:134 
              #                          mult1_18 = chi mult1_18:134 
              #                          new_var temp_18_array_init_ptr_18:ptr->i32 
              #                          temp_18_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(18_0)] 
              #                    occupy a1 with temp_18_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 18_0
    li      s11, 18
              #                    store to temp_17_array_init_ptr_18 in mem offset legal
    sd      a0,1008(sp)
              #                    release a0 with temp_17_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_mult1_18_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,912
              #                    free a1
              #                          store 9_0:i32 temp_18_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_18_array_init_ptr_18
              #                    occupy a0 with 9_0
    li      a0, 9
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu mult1_18:140 
              #                          mult1_18 = chi mult1_18:140 
              #                          new_var temp_19_array_init_ptr_18:ptr->i32 
              #                          temp_19_array_init_ptr_18 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(19_0)] 
              #                    occupy a0 with temp_19_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 19_0
    li      s11, 19
              #                    store to temp_18_array_init_ptr_18 in mem offset legal
    sd      a1,1000(sp)
              #                    release a1 with temp_18_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_mult1_18_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,912
              #                    free a0
              #                          store 0_0:i32 temp_19_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_19_array_init_ptr_18
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult1_18:146 
              #                          mult1_18 = chi mult1_18:146 
              #                          new_var mult2_18:Array:i32:[Some(20_0)] 
              #                          new_var temp_20_array_init_ptr_18:ptr->i32 
              #                          temp_20_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(14_0)] 
              #                    occupy a1 with temp_20_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 14_0
    li      s11, 14
              #                    store to temp_19_array_init_ptr_18 in mem offset legal
    sd      a0,992(sp)
              #                    release a0 with temp_19_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_mult2_18_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,672
              #                    free a1
              #                          store 4_0:i32 temp_20_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_20_array_init_ptr_18
              #                    occupy a0 with 4_0
    li      a0, 4
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu mult2_18:154 
              #                          mult2_18 = chi mult2_18:154 
              #                          new_var temp_21_array_init_ptr_18:ptr->i32 
              #                          temp_21_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(6_0)] 
              #                    occupy a0 with temp_21_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 6_0
    li      s11, 6
              #                    store to temp_20_array_init_ptr_18 in mem offset legal
    sd      a1,904(sp)
              #                    release a1 with temp_20_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_mult2_18_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,672
              #                    free a0
              #                          store 9_0:i32 temp_21_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_21_array_init_ptr_18
              #                    occupy a1 with 9_0
    li      a1, 9
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult2_18:160 
              #                          mult2_18 = chi mult2_18:160 
              #                          new_var temp_22_array_init_ptr_18:ptr->i32 
              #                          temp_22_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(3_0)] 
              #                    occupy a1 with temp_22_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 3_0
    li      s11, 3
              #                    store to temp_21_array_init_ptr_18 in mem offset legal
    sd      a0,896(sp)
              #                    release a0 with temp_21_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_mult2_18_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,672
              #                    free a1
              #                          store 2_0:i32 temp_22_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_22_array_init_ptr_18
              #                    occupy a0 with 2_0
    li      a0, 2
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu mult2_18:166 
              #                          mult2_18 = chi mult2_18:166 
              #                          new_var temp_23_array_init_ptr_18:ptr->i32 
              #                          temp_23_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(10_0)] 
              #                    occupy a0 with temp_23_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 10_0
    li      s11, 10
              #                    store to temp_22_array_init_ptr_18 in mem offset legal
    sd      a1,888(sp)
              #                    release a1 with temp_22_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_mult2_18_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,672
              #                    free a0
              #                          store 9_0:i32 temp_23_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_23_array_init_ptr_18
              #                    occupy a1 with 9_0
    li      a1, 9
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult2_18:172 
              #                          mult2_18 = chi mult2_18:172 
              #                          new_var temp_24_array_init_ptr_18:ptr->i32 
              #                          temp_24_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(15_0)] 
              #                    occupy a1 with temp_24_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 15_0
    li      s11, 15
              #                    store to temp_23_array_init_ptr_18 in mem offset legal
    sd      a0,880(sp)
              #                    release a0 with temp_23_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_mult2_18_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,672
              #                    free a1
              #                          store 3_0:i32 temp_24_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_24_array_init_ptr_18
              #                    occupy a0 with 3_0
    li      a0, 3
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu mult2_18:178 
              #                          mult2_18 = chi mult2_18:178 
              #                          new_var temp_25_array_init_ptr_18:ptr->i32 
              #                          temp_25_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(2_0)] 
              #                    occupy a0 with temp_25_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 2_0
    li      s11, 2
              #                    store to temp_24_array_init_ptr_18 in mem offset legal
    sd      a1,872(sp)
              #                    release a1 with temp_24_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_mult2_18_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,672
              #                    free a0
              #                          store 4_0:i32 temp_25_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_25_array_init_ptr_18
              #                    occupy a1 with 4_0
    li      a1, 4
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult2_18:184 
              #                          mult2_18 = chi mult2_18:184 
              #                          new_var temp_26_array_init_ptr_18:ptr->i32 
              #                          temp_26_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(5_0)] 
              #                    occupy a1 with temp_26_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 5_0
    li      s11, 5
              #                    store to temp_25_array_init_ptr_18 in mem offset legal
    sd      a0,864(sp)
              #                    release a0 with temp_25_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_mult2_18_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,672
              #                    free a1
              #                          store 7_0:i32 temp_26_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_26_array_init_ptr_18
              #                    occupy a0 with 7_0
    li      a0, 7
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu mult2_18:190 
              #                          mult2_18 = chi mult2_18:190 
              #                          new_var temp_27_array_init_ptr_18:ptr->i32 
              #                          temp_27_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(17_0)] 
              #                    occupy a0 with temp_27_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 17_0
    li      s11, 17
              #                    store to temp_26_array_init_ptr_18 in mem offset legal
    sd      a1,856(sp)
              #                    release a1 with temp_26_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_mult2_18_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,672
              #                    free a0
              #                          store 1_0:i32 temp_27_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_27_array_init_ptr_18
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
    sw      s10,0(a0)
              #                    free s10
              #                    free a0
              #                          mu mult2_18:196 
              #                          mult2_18 = chi mult2_18:196 
              #                          new_var temp_28_array_init_ptr_18:ptr->i32 
              #                          temp_28_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(0_0)] 
              #                    occupy a1 with temp_28_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    store to temp_27_array_init_ptr_18 in mem offset legal
    sd      a0,848(sp)
              #                    release a0 with temp_27_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_mult2_18_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,672
              #                    free a1
              #                          store 2_0:i32 temp_28_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_28_array_init_ptr_18
              #                    occupy a0 with 2_0
    li      a0, 2
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu mult2_18:202 
              #                          mult2_18 = chi mult2_18:202 
              #                          new_var temp_29_array_init_ptr_18:ptr->i32 
              #                          temp_29_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(8_0)] 
              #                    occupy a0 with temp_29_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 8_0
    li      s11, 8
              #                    store to temp_28_array_init_ptr_18 in mem offset legal
    sd      a1,840(sp)
              #                    release a1 with temp_28_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_mult2_18_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,672
              #                    free a0
              #                          store 0_0:i32 temp_29_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_29_array_init_ptr_18
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult2_18:208 
              #                          mult2_18 = chi mult2_18:208 
              #                          new_var temp_30_array_init_ptr_18:ptr->i32 
              #                          temp_30_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(9_0)] 
              #                    occupy a1 with temp_30_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 9_0
    li      s11, 9
              #                    store to temp_29_array_init_ptr_18 in mem offset legal
    sd      a0,832(sp)
              #                    release a0 with temp_29_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_mult2_18_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,672
              #                    free a1
              #                          store 1_0:i32 temp_30_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_30_array_init_ptr_18
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
    sw      s10,0(a1)
              #                    free s10
              #                    free a1
              #                          mu mult2_18:214 
              #                          mult2_18 = chi mult2_18:214 
              #                          new_var temp_31_array_init_ptr_18:ptr->i32 
              #                          temp_31_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(7_0)] 
              #                    occupy a0 with temp_31_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 7_0
    li      s11, 7
              #                    store to temp_30_array_init_ptr_18 in mem offset legal
    sd      a1,824(sp)
              #                    release a1 with temp_30_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_mult2_18_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,672
              #                    free a0
              #                          store 9_0:i32 temp_31_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_31_array_init_ptr_18
              #                    occupy a1 with 9_0
    li      a1, 9
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult2_18:220 
              #                          mult2_18 = chi mult2_18:220 
              #                          new_var temp_32_array_init_ptr_18:ptr->i32 
              #                          temp_32_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(16_0)] 
              #                    occupy a1 with temp_32_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 16_0
    li      s11, 16
              #                    store to temp_31_array_init_ptr_18 in mem offset legal
    sd      a0,816(sp)
              #                    release a0 with temp_31_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_mult2_18_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,672
              #                    free a1
              #                          store 2_0:i32 temp_32_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_32_array_init_ptr_18
              #                    occupy a0 with 2_0
    li      a0, 2
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu mult2_18:226 
              #                          mult2_18 = chi mult2_18:226 
              #                          new_var temp_33_array_init_ptr_18:ptr->i32 
              #                          temp_33_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(18_0)] 
              #                    occupy a0 with temp_33_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 18_0
    li      s11, 18
              #                    store to temp_32_array_init_ptr_18 in mem offset legal
    sd      a1,808(sp)
              #                    release a1 with temp_32_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_mult2_18_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,672
              #                    free a0
              #                          store 2_0:i32 temp_33_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_33_array_init_ptr_18
              #                    occupy a1 with 2_0
    li      a1, 2
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult2_18:232 
              #                          mult2_18 = chi mult2_18:232 
              #                          new_var temp_34_array_init_ptr_18:ptr->i32 
              #                          temp_34_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(11_0)] 
              #                    occupy a1 with temp_34_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 11_0
    li      s11, 11
              #                    store to temp_33_array_init_ptr_18 in mem offset legal
    sd      a0,800(sp)
              #                    release a0 with temp_33_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_mult2_18_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,672
              #                    free a1
              #                          store 8_0:i32 temp_34_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_34_array_init_ptr_18
              #                    occupy a0 with 8_0
    li      a0, 8
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu mult2_18:238 
              #                          mult2_18 = chi mult2_18:238 
              #                          new_var temp_35_array_init_ptr_18:ptr->i32 
              #                          temp_35_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(19_0)] 
              #                    occupy a0 with temp_35_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 19_0
    li      s11, 19
              #                    store to temp_34_array_init_ptr_18 in mem offset legal
    sd      a1,792(sp)
              #                    release a1 with temp_34_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_mult2_18_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,672
              #                    free a0
              #                          store 2_0:i32 temp_35_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_35_array_init_ptr_18
              #                    occupy a1 with 2_0
    li      a1, 2
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult2_18:244 
              #                          mult2_18 = chi mult2_18:244 
              #                          new_var temp_36_array_init_ptr_18:ptr->i32 
              #                          temp_36_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(1_0)] 
              #                    occupy a1 with temp_36_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to temp_35_array_init_ptr_18 in mem offset legal
    sd      a0,784(sp)
              #                    release a0 with temp_35_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_mult2_18_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,672
              #                    free a1
              #                          store 3_0:i32 temp_36_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_36_array_init_ptr_18
              #                    occupy a0 with 3_0
    li      a0, 3
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu mult2_18:250 
              #                          mult2_18 = chi mult2_18:250 
              #                          new_var temp_37_array_init_ptr_18:ptr->i32 
              #                          temp_37_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(12_0)] 
              #                    occupy a0 with temp_37_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 12_0
    li      s11, 12
              #                    store to temp_36_array_init_ptr_18 in mem offset legal
    sd      a1,776(sp)
              #                    release a1 with temp_36_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_mult2_18_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,672
              #                    free a0
              #                          store 7_0:i32 temp_37_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_37_array_init_ptr_18
              #                    occupy a1 with 7_0
    li      a1, 7
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult2_18:256 
              #                          mult2_18 = chi mult2_18:256 
              #                          new_var temp_38_array_init_ptr_18:ptr->i32 
              #                          temp_38_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(13_0)] 
              #                    occupy a1 with temp_38_array_init_ptr_18
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 13_0
    li      s11, 13
              #                    store to temp_37_array_init_ptr_18 in mem offset legal
    sd      a0,768(sp)
              #                    release a0 with temp_37_array_init_ptr_18
              #                    occupy a0 with _anonymous_of_mult2_18_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,672
              #                    free a1
              #                          store 6_0:i32 temp_38_array_init_ptr_18:ptr->i32 
              #                    occupy a1 with temp_38_array_init_ptr_18
              #                    occupy a0 with 6_0
    li      a0, 6
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu mult2_18:262 
              #                          mult2_18 = chi mult2_18:262 
              #                          new_var temp_39_array_init_ptr_18:ptr->i32 
              #                          temp_39_array_init_ptr_18 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(4_0)] 
              #                    occupy a0 with temp_39_array_init_ptr_18
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 4_0
    li      s11, 4
              #                    store to temp_38_array_init_ptr_18 in mem offset legal
    sd      a1,760(sp)
              #                    release a1 with temp_38_array_init_ptr_18
              #                    occupy a1 with _anonymous_of_mult2_18_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,672
              #                    free a0
              #                          store 5_0:i32 temp_39_array_init_ptr_18:ptr->i32 
              #                    occupy a0 with temp_39_array_init_ptr_18
              #                    occupy a1 with 5_0
    li      a1, 5
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu mult2_18:268 
              #                          mult2_18 = chi mult2_18:268 
              #                          len1_18 = i32 20_0 
              #                    occupy a1 with len1_18
    li      a1, 20
              #                    free a1
              #                          len2_18 = i32 20_0 
              #                    occupy s10 with len2_18
    li      s10, 20
              #                    free s10
              #                          new_var c1_18:Array:i32:[Some(25_0)] 
              #                          new_var c2_18:Array:i32:[Some(25_0)] 
              #                          new_var result_18:Array:i32:[Some(40_0)] 
              #                          i_18 = i32 0_0 
              #                    occupy s11 with i_18
    li      s11, 0
              #                    free s11
              #                          jump label: while.head_29 
              #                    store to temp_6_array_init_ptr_18 in mem offset legal
    sd      a2,1096(sp)
              #                    release a2 with temp_6_array_init_ptr_18
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: temp_39_array_init_ptr_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.head_29: 
.while.head_29:
              #                          new_var temp_40_cmp_28:i1 
              #                          temp_40_cmp_28 = icmp i32 Slt i_18, len1_18 
              #                    occupy s11 with i_18
              #                    occupy a1 with len1_18
              #                    occupy a2 with temp_40_cmp_28
    slt     a2,s11,a1
              #                    free s11
              #                    free a1
              #                    free a2
              #                          br i1 temp_40_cmp_28, label while.body_29, label while.exit_29 
              #                    occupy a2 with temp_40_cmp_28
              #                    free a2
              #                    store to temp_40_cmp_28 in mem offset legal
    sb      a2,303(sp)
              #                    release a2 with temp_40_cmp_28
              #                    occupy a2 with temp_40_cmp_28
              #                    load from temp_40_cmp_28 in mem
    lb      a2,303(sp)
    bnez    a2, .while.body_29
              #                    free a2
              #                    store to temp_40_cmp_28 in mem offset legal
    sb      a2,303(sp)
              #                    release a2 with temp_40_cmp_28
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: temp_39_array_init_ptr_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.body_29: 
.while.body_29:
              #                          new_var temp_41_index_ptr_30:ptr->i32 
              #                          temp_41_index_ptr_30 = getelementptr c1_18:Array:i32:[Some(25_0)] [Some(i_18)] 
              #                    occupy a2 with temp_41_index_ptr_30
    li      a2, 0
              #                    store to temp_39_array_init_ptr_18 in mem offset legal
    sd      a0,752(sp)
              #                    release a0 with temp_39_array_init_ptr_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s11 with i_18
              #                    store to len1_18 in mem offset legal
    sw      a1,668(sp)
              #                    release a1 with len1_18
              #                    occupy a1 with _anonymous_of_c1_18_0
    mul     a1,a0,s11
              #                    free a0
              #                    free s11
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,564
              #                    free a2
              #                          new_var temp_42_array_ptr_30:ptr->i32 
              #                          temp_42_array_ptr_30 = getelementptr mult1_18:Array:i32:[Some(20_0)] [Some(i_18)] 
              #                    occupy a0 with temp_42_array_ptr_30
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s11 with i_18
              #                    store to temp_41_index_ptr_30 in mem offset legal
    sd      a2,288(sp)
              #                    release a2 with temp_41_index_ptr_30
              #                    occupy a2 with _anonymous_of_mult1_18_0
    mul     a2,a1,s11
              #                    free a1
              #                    free s11
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,912
              #                    free a0
              #                          new_var temp_43_array_ele_30:i32 
              #                          temp_43_array_ele_30 = load temp_42_array_ptr_30:ptr->i32 
              #                    occupy a0 with temp_42_array_ptr_30
              #                    occupy a1 with temp_43_array_ele_30
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          store temp_43_array_ele_30:i32 temp_41_index_ptr_30:ptr->i32 
              #                    occupy a2 with temp_41_index_ptr_30
              #                    load from temp_41_index_ptr_30 in mem
    ld      a2,288(sp)
              #                    occupy a1 with temp_43_array_ele_30
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                          mu c1_18:300 
              #                          c1_18 = chi c1_18:300 
              #                          new_var temp_44_arithop_30:i32 
              #                          temp_44_arithop_30 = Add i32 i_18, 1_0 
              #                    occupy s11 with i_18
              #                    store to temp_42_array_ptr_30 in mem offset legal
    sd      a0,280(sp)
              #                    release a0 with temp_42_array_ptr_30
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_43_array_ele_30 in mem offset legal
    sw      a1,276(sp)
              #                    release a1 with temp_43_array_ele_30
              #                    occupy a1 with temp_44_arithop_30
    add     a1,s11,a0
              #                    free s11
              #                    free a0
              #                    free a1
              #                          i_18 = i32 temp_44_arithop_30 
              #                    occupy a1 with temp_44_arithop_30
              #                    occupy s11 with i_18
    mv      s11, a1
              #                    free a1
              #                    free s11
              #                          jump label: while.head_29 
              #                    store to temp_41_index_ptr_30 in mem offset legal
    sd      a2,288(sp)
              #                    release a2 with temp_41_index_ptr_30
              #                    store to temp_44_arithop_30 in mem offset legal
    sw      a1,272(sp)
              #                    release a1 with temp_44_arithop_30
              #                    occupy a1 with _anonymous_of_len1_18_0
              #                    load from len1_18 in mem


    lw      a1,668(sp)
              #                    occupy a0 with _anonymous_of_temp_39_array_init_ptr_18_0
              #                    load from temp_39_array_init_ptr_18 in mem
    ld      a0,752(sp)
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: temp_39_array_init_ptr_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.exit_29: 
.while.exit_29:
              #                          i_18 = i32 0_0 
              #                    occupy s11 with i_18
    li      s11, 0
              #                    free s11
              #                          jump label: while.head_35 
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: temp_39_array_init_ptr_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.head_35: 
.while.head_35:
              #                          new_var temp_45_cmp_34:i1 
              #                          temp_45_cmp_34 = icmp i32 Slt i_18, len2_18 
              #                    occupy s11 with i_18
              #                    occupy s10 with len2_18
              #                    occupy a2 with temp_45_cmp_34
    slt     a2,s11,s10
              #                    free s11
              #                    free s10
              #                    free a2
              #                          br i1 temp_45_cmp_34, label while.body_35, label while.exit_35 
              #                    occupy a2 with temp_45_cmp_34
              #                    free a2
              #                    store to temp_45_cmp_34 in mem offset legal
    sb      a2,271(sp)
              #                    release a2 with temp_45_cmp_34
              #                    occupy a2 with temp_45_cmp_34
              #                    load from temp_45_cmp_34 in mem
    lb      a2,271(sp)
    bnez    a2, .while.body_35
              #                    free a2
              #                    store to temp_45_cmp_34 in mem offset legal
    sb      a2,271(sp)
              #                    release a2 with temp_45_cmp_34
    j       .while.exit_35
              #                    regtab     a0:Freed { symidx: temp_39_array_init_ptr_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.body_35: 
.while.body_35:
              #                          new_var temp_46_index_ptr_36:ptr->i32 
              #                          temp_46_index_ptr_36 = getelementptr c2_18:Array:i32:[Some(25_0)] [Some(i_18)] 
              #                    occupy a2 with temp_46_index_ptr_36
    li      a2, 0
              #                    store to temp_39_array_init_ptr_18 in mem offset legal
    sd      a0,752(sp)
              #                    release a0 with temp_39_array_init_ptr_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s11 with i_18
              #                    store to len1_18 in mem offset legal
    sw      a1,668(sp)
              #                    release a1 with len1_18
              #                    occupy a1 with _anonymous_of_c2_18_0
    mul     a1,a0,s11
              #                    free a0
              #                    free s11
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,464
              #                    free a2
              #                          new_var temp_47_array_ptr_36:ptr->i32 
              #                          temp_47_array_ptr_36 = getelementptr mult2_18:Array:i32:[Some(20_0)] [Some(i_18)] 
              #                    occupy a0 with temp_47_array_ptr_36
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s11 with i_18
              #                    store to temp_46_index_ptr_36 in mem offset legal
    sd      a2,256(sp)
              #                    release a2 with temp_46_index_ptr_36
              #                    occupy a2 with _anonymous_of_mult2_18_0
    mul     a2,a1,s11
              #                    free a1
              #                    free s11
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,672
              #                    free a0
              #                          new_var temp_48_array_ele_36:i32 
              #                          temp_48_array_ele_36 = load temp_47_array_ptr_36:ptr->i32 
              #                    occupy a0 with temp_47_array_ptr_36
              #                    occupy a1 with temp_48_array_ele_36
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          store temp_48_array_ele_36:i32 temp_46_index_ptr_36:ptr->i32 
              #                    occupy a2 with temp_46_index_ptr_36
              #                    load from temp_46_index_ptr_36 in mem
    ld      a2,256(sp)
              #                    occupy a1 with temp_48_array_ele_36
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                          mu c2_18:325 
              #                          c2_18 = chi c2_18:325 
              #                          new_var temp_49_arithop_36:i32 
              #                          temp_49_arithop_36 = Add i32 i_18, 1_0 
              #                    occupy s11 with i_18
              #                    store to temp_47_array_ptr_36 in mem offset legal
    sd      a0,248(sp)
              #                    release a0 with temp_47_array_ptr_36
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_48_array_ele_36 in mem offset legal
    sw      a1,244(sp)
              #                    release a1 with temp_48_array_ele_36
              #                    occupy a1 with temp_49_arithop_36
    add     a1,s11,a0
              #                    free s11
              #                    free a0
              #                    free a1
              #                          i_18 = i32 temp_49_arithop_36 
              #                    occupy a1 with temp_49_arithop_36
              #                    occupy s11 with i_18
    mv      s11, a1
              #                    free a1
              #                    free s11
              #                          jump label: while.head_35 
              #                    store to temp_46_index_ptr_36 in mem offset legal
    sd      a2,256(sp)
              #                    release a2 with temp_46_index_ptr_36
              #                    store to temp_49_arithop_36 in mem offset legal
    sw      a1,240(sp)
              #                    release a1 with temp_49_arithop_36
              #                    occupy a1 with _anonymous_of_len1_18_0
              #                    load from len1_18 in mem


    lw      a1,668(sp)
              #                    occupy a0 with _anonymous_of_temp_39_array_init_ptr_18_0
              #                    load from temp_39_array_init_ptr_18 in mem
    ld      a0,752(sp)
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: temp_39_array_init_ptr_18, tracked: true } |     a1:Freed { symidx: len1_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.exit_35: 
.while.exit_35:
              #                          new_var temp_50_arithop_18:i32 
              #                          temp_50_arithop_18 = Add i32 len1_18, len2_18 
              #                    occupy a1 with len1_18
              #                    occupy s10 with len2_18
              #                    occupy a2 with temp_50_arithop_18
    add     a2,a1,s10
              #                    free a1
              #                    free s10
              #                    free a2
              #                          new_var temp_51_arithop_18:i32 
              #                          temp_51_arithop_18 = Sub i32 temp_50_arithop_18, 1_0 
              #                    occupy a2 with temp_50_arithop_18
              #                    store to temp_39_array_init_ptr_18 in mem offset legal
    sd      a0,752(sp)
              #                    release a0 with temp_39_array_init_ptr_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to len1_18 in mem offset legal
    sw      a1,668(sp)
              #                    release a1 with len1_18
              #                    occupy a1 with temp_51_arithop_18
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_51_arithop_18, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_50_arithop_18, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 


    sub     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          n_18 = i32 temp_51_arithop_18 
              #                    occupy a1 with temp_51_arithop_18
              #                    occupy a0 with n_18
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          i_18 = i32 0_0 
              #                    occupy s11 with i_18
    li      s11, 0
              #                    free s11
              #                          jump label: while.head_42 
              #                    store to temp_50_arithop_18 in mem offset legal
    sw      a2,236(sp)
              #                    release a2 with temp_50_arithop_18
    j       .while.head_42
              #                    regtab     a0:Freed { symidx: n_18, tracked: true } |     a1:Freed { symidx: temp_51_arithop_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.head_42: 
.while.head_42:
              #                          new_var temp_52_cmp_41:i1 
              #                          temp_52_cmp_41 = icmp i32 Sle i_18, n_18 
              #                    occupy s11 with i_18
              #                    occupy a0 with n_18
              #                    occupy a2 with temp_52_cmp_41
    slt     a2,a0,s11
    xori    a2,a2,1
              #                    free s11
              #                    free a0
              #                    free a2
              #                          br i1 temp_52_cmp_41, label while.body_42, label while.exit_42 
              #                    occupy a2 with temp_52_cmp_41
              #                    free a2
              #                    store to temp_52_cmp_41 in mem offset legal
    sb      a2,231(sp)
              #                    release a2 with temp_52_cmp_41
              #                    occupy a2 with temp_52_cmp_41
              #                    load from temp_52_cmp_41 in mem
    lb      a2,231(sp)
    bnez    a2, .while.body_42
              #                    free a2
              #                    store to temp_52_cmp_41 in mem offset legal
    sb      a2,231(sp)
              #                    release a2 with temp_52_cmp_41
    j       .while.exit_42
              #                    regtab     a0:Freed { symidx: n_18, tracked: true } |     a1:Freed { symidx: temp_51_arithop_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.body_42: 
.while.body_42:
              #                          new_var temp_53_index_ptr_43:ptr->i32 
              #                          temp_53_index_ptr_43 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(i_18)] 
              #                    occupy a2 with temp_53_index_ptr_43
    li      a2, 0
              #                    store to n_18 in mem offset legal
    sw      a0,1160(sp)
              #                    release a0 with n_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s11 with i_18
              #                    store to temp_51_arithop_18 in mem offset legal
    sw      a1,232(sp)
              #                    release a1 with temp_51_arithop_18
              #                    occupy a1 with _anonymous_of_result_18_0
    mul     a1,a0,s11
              #                    free a0
              #                    free s11
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,304
              #                    free a2
              #                          store 0_0:i32 temp_53_index_ptr_43:ptr->i32 
              #                    occupy a2 with temp_53_index_ptr_43
              #                    occupy a0 with 0_0
    li      a0, 0
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          mu result_18:351 
              #                          result_18 = chi result_18:351 
              #                          new_var temp_54_arithop_43:i32 
              #                          temp_54_arithop_43 = Add i32 i_18, 1_0 
              #                    occupy s11 with i_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with temp_54_arithop_43
    add     a1,s11,a0
              #                    free s11
              #                    free a0
              #                    free a1
              #                          i_18 = i32 temp_54_arithop_43 
              #                    occupy a1 with temp_54_arithop_43
              #                    occupy s11 with i_18
    mv      s11, a1
              #                    free a1
              #                    free s11
              #                          jump label: while.head_42 
              #                    store to temp_53_index_ptr_43 in mem offset legal
    sd      a2,216(sp)
              #                    release a2 with temp_53_index_ptr_43
              #                    store to temp_54_arithop_43 in mem offset legal
    sw      a1,212(sp)
              #                    release a1 with temp_54_arithop_43
              #                    occupy a1 with _anonymous_of_temp_51_arithop_18_0
              #                    load from temp_51_arithop_18 in mem


    lw      a1,232(sp)
              #                    occupy a0 with _anonymous_of_n_18_0
              #                    load from n_18 in mem


    lw      a0,1160(sp)
    j       .while.head_42
              #                    regtab     a0:Freed { symidx: n_18, tracked: true } |     a1:Freed { symidx: temp_51_arithop_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.exit_42: 
.while.exit_42:
              #                          temp_18 = i32 0_0 
              #                    occupy a2 with temp_18
    li      a2, 0
              #                    free a2
              #                          new_var temp_55_arithop_18:i32 
              #                          temp_55_arithop_18 = Sub i32 len2_18, 1_0 
              #                    occupy s10 with len2_18
              #                    store to n_18 in mem offset legal
    sw      a0,1160(sp)
              #                    release a0 with n_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_51_arithop_18 in mem offset legal
    sw      a1,232(sp)
              #                    release a1 with temp_51_arithop_18
              #                    occupy a1 with temp_55_arithop_18
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_55_arithop_18, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Occupied { symidx: len2_18, tracked: true, occupy_count: 1 } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 


    sub     a1,s10,a0
              #                    free s10
              #                    free a0
              #                    free a1
              #                          i_18 = i32 temp_55_arithop_18 
              #                    occupy a1 with temp_55_arithop_18
              #                    occupy s11 with i_18
    mv      s11, a1
              #                    free a1
              #                    free s11
              #                          jump label: while.head_49 
    j       .while.head_49
              #                    regtab     a1:Freed { symidx: temp_55_arithop_18, tracked: true } |     a2:Freed { symidx: temp_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.head_49: 
.while.head_49:
              #                          new_var temp_56_cmp_48:i1 
              #                          temp_56_cmp_48 = icmp i32 Sgt i_18, -1_0 
              #                    occupy s11 with i_18
              #                    occupy a0 with -1_0
    li      a0, -1
              #                    store to temp_55_arithop_18 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with temp_55_arithop_18
              #                    occupy a1 with temp_56_cmp_48
    slt     a1,a0,s11
              #                    free s11
              #                    free a0
              #                    free a1
              #                          br i1 temp_56_cmp_48, label while.body_49, label while.exit_49 
              #                    occupy a1 with temp_56_cmp_48
              #                    free a1
              #                    occupy a1 with temp_56_cmp_48
    bnez    a1, .while.body_49
              #                    free a1
    j       .while.exit_49
              #                    regtab     a1:Freed { symidx: temp_56_cmp_48, tracked: true } |     a2:Freed { symidx: temp_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.body_49: 
.while.body_49:
              #                          new_var temp_57_array_ptr_50:ptr->i32 
              #                          temp_57_array_ptr_50 = getelementptr c2_18:Array:i32:[Some(25_0)] [Some(i_18)] 
              #                    occupy a0 with temp_57_array_ptr_50
    li      a0, 0
              #                    store to temp_56_cmp_48 in mem offset legal
    sb      a1,207(sp)
              #                    release a1 with temp_56_cmp_48
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s11 with i_18
              #                    store to temp_18 in mem offset legal
    sw      a2,1156(sp)
              #                    release a2 with temp_18
              #                    occupy a2 with _anonymous_of_c2_18_0
    mul     a2,a1,s11
              #                    free a1
              #                    free s11
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,464
              #                    free a0
              #                          new_var temp_58_array_ele_50:i32 
              #                          temp_58_array_ele_50 = load temp_57_array_ptr_50:ptr->i32 
              #                    occupy a0 with temp_57_array_ptr_50
              #                    occupy a1 with temp_58_array_ele_50
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          t_18 = i32 temp_58_array_ele_50 
              #                    occupy a1 with temp_58_array_ele_50
              #                    occupy a2 with t_18
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          new_var temp_59_arithop_50:i32 
              #                          temp_59_arithop_50 = Sub i32 len1_18, 1_0 
              #                    store to temp_57_array_ptr_50 in mem offset legal
    sd      a0,192(sp)
              #                    release a0 with temp_57_array_ptr_50
              #                    occupy a0 with len1_18
              #                    load from len1_18 in mem


    lw      a0,668(sp)
              #                    store to temp_58_array_ele_50 in mem offset legal
    sw      a1,188(sp)
              #                    release a1 with temp_58_array_ele_50
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to t_18 in mem offset legal
    sw      a2,1164(sp)
              #                    release a2 with t_18
              #                    occupy a2 with temp_59_arithop_50
              #                    regtab:    a0:Occupied { symidx: len1_18, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_59_arithop_50, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          j_18 = i32 temp_59_arithop_50 
              #                    occupy a2 with temp_59_arithop_50
              #                    occupy a1 with j_18
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                          jump label: while.head_54 
              #                    store to temp_59_arithop_50 in mem offset legal
    sw      a2,184(sp)
              #                    release a2 with temp_59_arithop_50
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: len1_18, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.head_54: 
.while.head_54:
              #                          new_var temp_60_cmp_53:i1 
              #                          temp_60_cmp_53 = icmp i32 Sgt j_18, -1_0 
              #                    occupy a1 with j_18
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    store to len1_18 in mem offset legal
    sw      a0,668(sp)
              #                    release a0 with len1_18
              #                    occupy a0 with temp_60_cmp_53
    slt     a0,a2,a1
              #                    free a1
              #                    free a2
              #                    free a0
              #                          br i1 temp_60_cmp_53, label while.body_54, label while.exit_54 
              #                    occupy a0 with temp_60_cmp_53
              #                    free a0
              #                    occupy a0 with temp_60_cmp_53
    bnez    a0, .while.body_54
              #                    free a0
    j       .while.exit_54
              #                    regtab     a0:Freed { symidx: temp_60_cmp_53, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.body_54: 
.while.body_54:
              #                          new_var temp_61_array_ptr_55:ptr->i32 
              #                          temp_61_array_ptr_55 = getelementptr c1_18:Array:i32:[Some(25_0)] [Some(j_18)] 
              #                    occupy a2 with temp_61_array_ptr_55
    li      a2, 0
              #                    store to temp_60_cmp_53 in mem offset legal
    sb      a0,183(sp)
              #                    release a0 with temp_60_cmp_53
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with j_18
              #                    store to temp_7_array_init_ptr_18 in mem offset legal
    sd      a3,1088(sp)
              #                    release a3 with temp_7_array_init_ptr_18
              #                    occupy a3 with _anonymous_of_c1_18_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,564
              #                    free a2
              #                          new_var temp_62_array_ele_55:i32 
              #                          temp_62_array_ele_55 = load temp_61_array_ptr_55:ptr->i32 
              #                    occupy a2 with temp_61_array_ptr_55
              #                    occupy a0 with temp_62_array_ele_55
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_63_arithop_55:i32 
              #                          temp_63_arithop_55 = Mul i32 t_18, temp_62_array_ele_55 
              #                    occupy a3 with t_18
              #                    load from t_18 in mem


    lw      a3,1164(sp)
              #                    occupy a0 with temp_62_array_ele_55
              #                    store to j_18 in mem offset legal
    sw      a1,1168(sp)
              #                    release a1 with j_18
              #                    occupy a1 with temp_63_arithop_55
    mul     a1,a3,a0
              #                    free a3
              #                    free a0
              #                    free a1
              #                          new_var temp_64_array_ptr_55:ptr->i32 
              #                          temp_64_array_ptr_55 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(n_18)] 
              #                    store to temp_62_array_ele_55 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_62_array_ele_55
              #                    occupy a0 with temp_64_array_ptr_55
    li      a0, 0
              #                    store to temp_63_arithop_55 in mem offset legal
    sw      a1,160(sp)
              #                    release a1 with temp_63_arithop_55
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_61_array_ptr_55 in mem offset legal
    sd      a2,168(sp)
              #                    release a2 with temp_61_array_ptr_55
              #                    occupy a2 with n_18
              #                    load from n_18 in mem


    lw      a2,1160(sp)
              #                    store to t_18 in mem offset legal
    sw      a3,1164(sp)
              #                    release a3 with t_18
              #                    occupy a3 with _anonymous_of_result_18_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,304
              #                    free a0
              #                          new_var temp_65_array_ele_55:i32 
              #                          temp_65_array_ele_55 = load temp_64_array_ptr_55:ptr->i32 
              #                    occupy a0 with temp_64_array_ptr_55
              #                    occupy a1 with temp_65_array_ele_55
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_66_arithop_55:i32 
              #                          temp_66_arithop_55 = Add i32 temp_65_array_ele_55, temp_63_arithop_55 
              #                    occupy a1 with temp_65_array_ele_55
              #                    occupy a3 with temp_63_arithop_55
              #                    load from temp_63_arithop_55 in mem


    lw      a3,160(sp)
              #                    store to temp_64_array_ptr_55 in mem offset legal
    sd      a0,152(sp)
              #                    release a0 with temp_64_array_ptr_55
              #                    occupy a0 with temp_66_arithop_55
    add     a0,a1,a3
              #                    free a1
              #                    free a3
              #                    free a0
              #                          temp_18 = i32 temp_66_arithop_55 
              #                    occupy a0 with temp_66_arithop_55
              #                    store to temp_65_array_ele_55 in mem offset legal
    sw      a1,148(sp)
              #                    release a1 with temp_65_array_ele_55
              #                    occupy a1 with temp_18
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L1_0 
              #                    store to n_18 in mem offset legal
    sw      a2,1160(sp)
              #                    release a2 with n_18
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_66_arithop_55, tracked: true } |     a1:Freed { symidx: temp_18, tracked: true } |     a3:Freed { symidx: temp_63_arithop_55, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_67_cmp_57:i1 
              #                          temp_67_cmp_57 = icmp i32 Sge temp_18, 10_0 
              #                    occupy a1 with temp_18
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    store to temp_66_arithop_55 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with temp_66_arithop_55
              #                    occupy a0 with temp_67_cmp_57
    slt     a0,a1,a2
    xori    a0,a0,1
              #                    free a1
              #                    free a2
              #                    free a0
              #                          br i1 temp_67_cmp_57, label branch_true_58, label branch_false_58 
              #                    occupy a0 with temp_67_cmp_57
              #                    free a0
              #                    occupy a0 with temp_67_cmp_57
    bnez    a0, .branch_true_58
              #                    free a0
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: temp_67_cmp_57, tracked: true } |     a1:Freed { symidx: temp_18, tracked: true } |     a3:Freed { symidx: temp_63_arithop_55, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label branch_true_58: 
.branch_true_58:
              #                          new_var temp_68_index_ptr_59:ptr->i32 
              #                          temp_68_index_ptr_59 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(n_18)] 
              #                    occupy a2 with temp_68_index_ptr_59
    li      a2, 0
              #                    store to temp_67_cmp_57 in mem offset legal
    sb      a0,143(sp)
              #                    release a0 with temp_67_cmp_57
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_18 in mem offset legal
    sw      a1,1156(sp)
              #                    release a1 with temp_18
              #                    occupy a1 with n_18
              #                    load from n_18 in mem


    lw      a1,1160(sp)
              #                    store to temp_63_arithop_55 in mem offset legal
    sw      a3,160(sp)
              #                    release a3 with temp_63_arithop_55
              #                    occupy a3 with _anonymous_of_result_18_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,304
              #                    free a2
              #                          store temp_18:i32 temp_68_index_ptr_59:ptr->i32 
              #                    occupy a2 with temp_68_index_ptr_59
              #                    occupy a0 with temp_18
              #                    load from temp_18 in mem


    lw      a0,1156(sp)
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          mu result_18:418 
              #                          result_18 = chi result_18:418 
              #                          new_var temp_69_arithop_59:i32 
              #                          temp_69_arithop_59 = Sub i32 n_18, 1_0 
              #                    occupy a1 with n_18
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    store to temp_18 in mem offset legal
    sw      a0,1156(sp)
              #                    release a0 with temp_18
              #                    occupy a0 with temp_69_arithop_59
              #                    regtab:    a0:Occupied { symidx: temp_69_arithop_59, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: n_18, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_68_index_ptr_59, tracked: true } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 


    sub     a0,a1,a3
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_70_index_ptr_59:ptr->i32 
              #                          temp_70_index_ptr_59 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(temp_69_arithop_59)] 
              #                    occupy a3 with temp_70_index_ptr_59
    li      a3, 0
              #                    store to temp_69_arithop_59 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_69_arithop_59
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to n_18 in mem offset legal
    sw      a1,1160(sp)
              #                    release a1 with n_18
              #                    occupy a1 with temp_69_arithop_59
              #                    load from temp_69_arithop_59 in mem


    lw      a1,124(sp)
              #                    store to temp_68_index_ptr_59 in mem offset legal
    sd      a2,128(sp)
              #                    release a2 with temp_68_index_ptr_59
              #                    occupy a2 with _anonymous_of_result_18_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,304
              #                    free a3
              #                          new_var temp_71_arithop_59:i32 
              #                          temp_71_arithop_59 = Div i32 temp_18, 10_0 
              #                    occupy a0 with temp_18
              #                    load from temp_18 in mem


    lw      a0,1156(sp)
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    store to temp_69_arithop_59 in mem offset legal
    sw      a1,124(sp)
              #                    release a1 with temp_69_arithop_59
              #                    occupy a1 with temp_71_arithop_59
    div     a1,a0,a2
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_72_arithop_59:i32 
              #                          temp_72_arithop_59 = Sub i32 n_18, 1_0 
              #                    occupy a2 with n_18
              #                    load from n_18 in mem


    lw      a2,1160(sp)
              #                    store to temp_18 in mem offset legal
    sw      a0,1156(sp)
              #                    release a0 with temp_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_71_arithop_59 in mem offset legal
    sw      a1,108(sp)
              #                    release a1 with temp_71_arithop_59
              #                    occupy a1 with temp_72_arithop_59
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_72_arithop_59, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: n_18, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_70_index_ptr_59, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 


    sub     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_73_array_ptr_59:ptr->i32 
              #                          temp_73_array_ptr_59 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(temp_72_arithop_59)] 
              #                    occupy a0 with temp_73_array_ptr_59
    li      a0, 0
              #                    store to temp_72_arithop_59 in mem offset legal
    sw      a1,104(sp)
              #                    release a1 with temp_72_arithop_59
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to n_18 in mem offset legal
    sw      a2,1160(sp)
              #                    release a2 with n_18
              #                    occupy a2 with temp_72_arithop_59
              #                    load from temp_72_arithop_59 in mem


    lw      a2,104(sp)
              #                    store to temp_70_index_ptr_59 in mem offset legal
    sd      a3,112(sp)
              #                    release a3 with temp_70_index_ptr_59
              #                    occupy a3 with _anonymous_of_result_18_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,304
              #                    free a0
              #                          new_var temp_74_array_ele_59:i32 
              #                          temp_74_array_ele_59 = load temp_73_array_ptr_59:ptr->i32 
              #                    occupy a0 with temp_73_array_ptr_59
              #                    occupy a1 with temp_74_array_ele_59
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_75_arithop_59:i32 
              #                          temp_75_arithop_59 = Add i32 temp_74_array_ele_59, temp_71_arithop_59 
              #                    occupy a1 with temp_74_array_ele_59
              #                    occupy a3 with temp_71_arithop_59
              #                    load from temp_71_arithop_59 in mem


    lw      a3,108(sp)
              #                    store to temp_73_array_ptr_59 in mem offset legal
    sd      a0,96(sp)
              #                    release a0 with temp_73_array_ptr_59
              #                    occupy a0 with temp_75_arithop_59
    add     a0,a1,a3
              #                    free a1
              #                    free a3
              #                    free a0
              #                          store temp_75_arithop_59:i32 temp_70_index_ptr_59:ptr->i32 
              #                    store to temp_75_arithop_59 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_75_arithop_59
              #                    occupy a0 with temp_70_index_ptr_59
              #                    load from temp_70_index_ptr_59 in mem
    ld      a0,112(sp)
              #                    store to temp_74_array_ele_59 in mem offset legal
    sw      a1,92(sp)
              #                    release a1 with temp_74_array_ele_59
              #                    occupy a1 with temp_75_arithop_59
              #                    load from temp_75_arithop_59 in mem


    lw      a1,88(sp)
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu result_18:442 
              #                          result_18 = chi result_18:442 
              #                          jump label: L2_0 
              #                    store to temp_72_arithop_59 in mem offset legal
    sw      a2,104(sp)
              #                    release a2 with temp_72_arithop_59
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_67_cmp_57, tracked: true } |     a1:Freed { symidx: temp_18, tracked: true } |     a3:Freed { symidx: temp_63_arithop_55, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label branch_false_58: 
.branch_false_58:
              #                          new_var temp_78_index_ptr_57:ptr->i32 
              #                          temp_78_index_ptr_57 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(n_18)] 
              #                    occupy a2 with temp_78_index_ptr_57
    li      a2, 0
              #                    store to temp_67_cmp_57 in mem offset legal
    sb      a0,143(sp)
              #                    release a0 with temp_67_cmp_57
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_18 in mem offset legal
    sw      a1,1156(sp)
              #                    release a1 with temp_18
              #                    occupy a1 with n_18
              #                    load from n_18 in mem


    lw      a1,1160(sp)
              #                    store to temp_63_arithop_55 in mem offset legal
    sw      a3,160(sp)
              #                    release a3 with temp_63_arithop_55
              #                    occupy a3 with _anonymous_of_result_18_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,304
              #                    free a2
              #                          store temp_18:i32 temp_78_index_ptr_57:ptr->i32 
              #                    occupy a2 with temp_78_index_ptr_57
              #                    occupy a0 with temp_18
              #                    load from temp_18 in mem


    lw      a0,1156(sp)
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          mu result_18:456 
              #                          result_18 = chi result_18:456 
              #                          jump label: L2_0 
              #                    store to temp_78_index_ptr_57 in mem offset legal
    sd      a2,72(sp)
              #                    release a2 with temp_78_index_ptr_57
              #                    store to n_18 in mem offset legal
    sw      a1,1160(sp)
              #                    release a1 with n_18
              #                    store to temp_18 in mem offset legal
    sw      a0,1156(sp)
              #                    release a0 with temp_18
              #                    occupy a1 with _anonymous_of_temp_75_arithop_59_0
              #                    load from temp_75_arithop_59 in mem


    lw      a1,88(sp)
              #                    occupy a3 with _anonymous_of_temp_71_arithop_59_0
              #                    load from temp_71_arithop_59 in mem


    lw      a3,108(sp)
              #                    occupy a0 with _anonymous_of_temp_70_index_ptr_59_0
              #                    load from temp_70_index_ptr_59 in mem
    ld      a0,112(sp)
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_70_index_ptr_59, tracked: true } |     a1:Freed { symidx: temp_75_arithop_59, tracked: true } |     a3:Freed { symidx: temp_71_arithop_59, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a0:Freed { symidx: temp_70_index_ptr_59, tracked: true } |     a1:Freed { symidx: temp_75_arithop_59, tracked: true } |     a3:Freed { symidx: temp_71_arithop_59, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_76_arithop_55:i32 
              #                          temp_76_arithop_55 = Sub i32 j_18, 1_0 
              #                    occupy a2 with j_18
              #                    load from j_18 in mem


    lw      a2,1168(sp)
              #                    store to temp_70_index_ptr_59 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with temp_70_index_ptr_59
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_75_arithop_59 in mem offset legal
    sw      a1,88(sp)
              #                    release a1 with temp_75_arithop_59
              #                    occupy a1 with temp_76_arithop_55
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_76_arithop_55, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: j_18, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_71_arithop_59, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 


    sub     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          j_18 = i32 temp_76_arithop_55 
              #                    occupy a1 with temp_76_arithop_55
              #                    occupy a2 with j_18
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          new_var temp_77_arithop_55:i32 
              #                          temp_77_arithop_55 = Sub i32 n_18, 1_0 
              #                    occupy a0 with n_18
              #                    load from n_18 in mem


    lw      a0,1160(sp)
              #                    store to temp_76_arithop_55 in mem offset legal
    sw      a1,84(sp)
              #                    release a1 with temp_76_arithop_55
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to j_18 in mem offset legal
    sw      a2,1168(sp)
              #                    release a2 with j_18
              #                    occupy a2 with temp_77_arithop_55
              #                    regtab:    a0:Occupied { symidx: n_18, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_77_arithop_55, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_71_arithop_59, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          n_18 = i32 temp_77_arithop_55 
              #                    occupy a2 with temp_77_arithop_55
              #                    occupy a0 with n_18
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_54 
              #                    store to temp_77_arithop_55 in mem offset legal
    sw      a2,80(sp)
              #                    release a2 with temp_77_arithop_55
              #                    store to temp_71_arithop_59 in mem offset legal
    sw      a3,108(sp)
              #                    release a3 with temp_71_arithop_59
              #                    store to n_18 in mem offset legal
    sw      a0,1160(sp)
              #                    release a0 with n_18
              #                    occupy a1 with _anonymous_of_j_18_0
              #                    load from j_18 in mem


    lw      a1,1168(sp)
              #                    occupy a3 with _anonymous_of_temp_7_array_init_ptr_18_0
              #                    load from temp_7_array_init_ptr_18 in mem
    ld      a3,1088(sp)
              #                    occupy a0 with _anonymous_of_len1_18_0
              #                    load from len1_18 in mem


    lw      a0,668(sp)
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: temp_60_cmp_53, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.exit_54: 
.while.exit_54:
              #                          new_var temp_79_arithop_50:i32 
              #                          temp_79_arithop_50 = Add i32 n_18, len1_18 
              #                    occupy a2 with n_18
              #                    load from n_18 in mem


    lw      a2,1160(sp)
              #                    store to temp_60_cmp_53 in mem offset legal
    sb      a0,183(sp)
              #                    release a0 with temp_60_cmp_53
              #                    occupy a0 with len1_18
              #                    load from len1_18 in mem


    lw      a0,668(sp)
              #                    store to j_18 in mem offset legal
    sw      a1,1168(sp)
              #                    release a1 with j_18
              #                    occupy a1 with temp_79_arithop_50
    add     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_80_arithop_50:i32 
              #                          temp_80_arithop_50 = Sub i32 temp_79_arithop_50, 1_0 
              #                    occupy a1 with temp_79_arithop_50
              #                    store to len1_18 in mem offset legal
    sw      a0,668(sp)
              #                    release a0 with len1_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to n_18 in mem offset legal
    sw      a2,1160(sp)
              #                    release a2 with n_18
              #                    occupy a2 with temp_80_arithop_50
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_79_arithop_50, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_80_arithop_50, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 


    sub     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          n_18 = i32 temp_80_arithop_50 
              #                    occupy a2 with temp_80_arithop_50
              #                    occupy a0 with n_18
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          new_var temp_81_arithop_50:i32 
              #                          temp_81_arithop_50 = Sub i32 i_18, 1_0 
              #                    occupy s11 with i_18
              #                    store to n_18 in mem offset legal
    sw      a0,1160(sp)
              #                    release a0 with n_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_79_arithop_50 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with temp_79_arithop_50
              #                    occupy a1 with temp_81_arithop_50
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_81_arithop_50, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_80_arithop_50, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 


    sub     a1,s11,a0
              #                    free s11
              #                    free a0
              #                    free a1
              #                          i_18 = i32 temp_81_arithop_50 
              #                    occupy a1 with temp_81_arithop_50
              #                    occupy s11 with i_18
    mv      s11, a1
              #                    free a1
              #                    free s11
              #                          jump label: while.head_49 
              #                    store to temp_80_arithop_50 in mem offset legal
    sw      a2,64(sp)
              #                    release a2 with temp_80_arithop_50
              #                    store to temp_81_arithop_50 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with temp_81_arithop_50
              #                    occupy a2 with _anonymous_of_temp_18_0
              #                    load from temp_18 in mem


    lw      a2,1156(sp)
              #                    occupy a1 with _anonymous_of_temp_55_arithop_18_0
              #                    load from temp_55_arithop_18 in mem


    lw      a1,208(sp)
    j       .while.head_49
              #                    regtab     a1:Freed { symidx: temp_56_cmp_48, tracked: true } |     a2:Freed { symidx: temp_18, tracked: true } |     a3:Freed { symidx: temp_7_array_init_ptr_18, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.exit_49: 
.while.exit_49:
              #                          new_var temp_82_array_ptr_67:ptr->i32 
              #                          temp_82_array_ptr_67 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(0_0)] 
              #                    occupy a0 with temp_82_array_ptr_67
    li      a0, 0
              #                    store to temp_56_cmp_48 in mem offset legal
    sb      a1,207(sp)
              #                    release a1 with temp_56_cmp_48
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_18 in mem offset legal
    sw      a2,1156(sp)
              #                    release a2 with temp_18
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    store to temp_7_array_init_ptr_18 in mem offset legal
    sd      a3,1088(sp)
              #                    release a3 with temp_7_array_init_ptr_18
              #                    occupy a3 with _anonymous_of_result_18_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,304
              #                    free a0
              #                          new_var temp_83_array_ele_67:i32 
              #                          temp_83_array_ele_67 = load temp_82_array_ptr_67:ptr->i32 
              #                    occupy a0 with temp_82_array_ptr_67
              #                    occupy a1 with temp_83_array_ele_67
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_84_cmp_67:i1 
              #                          temp_84_cmp_67 = icmp i32 Ne temp_83_array_ele_67, 0_0 
              #                    occupy a1 with temp_83_array_ele_67
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a3 with temp_84_cmp_67
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_84_cmp_67, label branch_true_68, label branch_false_68 
              #                    occupy a3 with temp_84_cmp_67
              #                    free a3
              #                    occupy a3 with temp_84_cmp_67
    bnez    a3, .branch_true_68
              #                    free a3
    j       .branch_false_68
              #                    regtab     a0:Freed { symidx: temp_82_array_ptr_67, tracked: true } |     a1:Freed { symidx: temp_83_array_ele_67, tracked: true } |     a3:Freed { symidx: temp_84_cmp_67, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label branch_true_68: 
.branch_true_68:
              #                          new_var temp_85_array_ptr_67:ptr->i32 
              #                          temp_85_array_ptr_67 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(0_0)] 
              #                    occupy a2 with temp_85_array_ptr_67
    li      a2, 0
              #                    store to temp_82_array_ptr_67 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with temp_82_array_ptr_67
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_83_array_ele_67 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with temp_83_array_ele_67
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    store to temp_84_cmp_67 in mem offset legal
    sb      a3,43(sp)
              #                    release a3 with temp_84_cmp_67
              #                    occupy a3 with _anonymous_of_result_18_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,304
              #                    free a2
              #                          new_var temp_86_array_ele_67:i32 
              #                          temp_86_array_ele_67 = load temp_85_array_ptr_67:ptr->i32 
              #                    occupy a2 with temp_85_array_ptr_67
              #                    occupy a0 with temp_86_array_ele_67
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                           Call void putint_0(temp_86_array_ele_67) 
              #                    saved register dumping to mem
              #                    store to temp_2_array_init_ptr_18 in mem offset legal
    sd      s1,1128(sp)
              #                    release s1 with temp_2_array_init_ptr_18
              #                    store to temp_11_array_init_ptr_18 in mem offset legal
    sd      s2,1056(sp)
              #                    release s2 with temp_11_array_init_ptr_18
              #                    store to temp_12_array_init_ptr_18 in mem offset legal
    sd      s3,1048(sp)
              #                    release s3 with temp_12_array_init_ptr_18
              #                    store to temp_13_array_init_ptr_18 in mem offset legal
    sd      s4,1040(sp)
              #                    release s4 with temp_13_array_init_ptr_18
              #                    store to temp_3_array_init_ptr_18 in mem offset legal
    sd      s5,1120(sp)
              #                    release s5 with temp_3_array_init_ptr_18
              #                    store to temp_14_array_init_ptr_18 in mem offset legal
    sd      s6,1032(sp)
              #                    release s6 with temp_14_array_init_ptr_18
              #                    store to temp_15_array_init_ptr_18 in mem offset legal
    sd      s7,1024(sp)
              #                    release s7 with temp_15_array_init_ptr_18
              #                    store to temp_4_array_init_ptr_18 in mem offset legal
    sd      s8,1112(sp)
              #                    release s8 with temp_4_array_init_ptr_18
              #                    store to temp_16_array_init_ptr_18 in mem offset legal
    sd      s9,1016(sp)
              #                    release s9 with temp_16_array_init_ptr_18
              #                    store to len2_18 in mem offset legal
    sw      s10,664(sp)
              #                    release s10 with len2_18
              #                    store to i_18 in mem offset legal
    sw      s11,1172(sp)
              #                    release s11 with i_18
              #                    store to temp_86_array_ele_67 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_86_array_ele_67
              #                    store to temp_85_array_ptr_67 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_85_array_ptr_67
              #                    store to temp_1_array_init_ptr_18 in mem offset legal
    sd      a4,1136(sp)
              #                    release a4 with temp_1_array_init_ptr_18
              #                    store to temp_8_array_init_ptr_18 in mem offset legal
    sd      a5,1080(sp)
              #                    release a5 with temp_8_array_init_ptr_18
              #                    store to temp_9_array_init_ptr_18 in mem offset legal
    sd      a6,1072(sp)
              #                    release a6 with temp_9_array_init_ptr_18
              #                    store to temp_10_array_init_ptr_18 in mem offset legal
    sd      a7,1064(sp)
              #                    release a7 with temp_10_array_init_ptr_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_86_array_ele_67_0
              #                    load from temp_86_array_ele_67 in mem


    lw      a0,28(sp)
              #                    arg load ended


    call    putint
              #                          jump label: branch_false_68 
              #                    occupy a5 with _anonymous_of_temp_8_array_init_ptr_18_0
              #                    load from temp_8_array_init_ptr_18 in mem
    ld      a5,1080(sp)
              #                    occupy a1 with _anonymous_of_temp_83_array_ele_67_0
              #                    load from temp_83_array_ele_67 in mem


    lw      a1,44(sp)
              #                    occupy s2 with _anonymous_of_temp_11_array_init_ptr_18_0
              #                    load from temp_11_array_init_ptr_18 in mem
    ld      s2,1056(sp)
              #                    occupy a3 with _anonymous_of_temp_84_cmp_67_0
              #                    load from temp_84_cmp_67 in mem
    lb      a3,43(sp)
              #                    occupy s10 with _anonymous_of_len2_18_0
              #                    load from len2_18 in mem


    lw      s10,664(sp)
              #                    occupy a6 with _anonymous_of_temp_9_array_init_ptr_18_0
              #                    load from temp_9_array_init_ptr_18 in mem
    ld      a6,1072(sp)
              #                    occupy s7 with _anonymous_of_temp_15_array_init_ptr_18_0
              #                    load from temp_15_array_init_ptr_18 in mem
    ld      s7,1024(sp)
              #                    occupy s3 with _anonymous_of_temp_12_array_init_ptr_18_0
              #                    load from temp_12_array_init_ptr_18 in mem
    ld      s3,1048(sp)
              #                    occupy a7 with _anonymous_of_temp_10_array_init_ptr_18_0
              #                    load from temp_10_array_init_ptr_18 in mem
    ld      a7,1064(sp)
              #                    occupy s1 with _anonymous_of_temp_2_array_init_ptr_18_0
              #                    load from temp_2_array_init_ptr_18 in mem
    ld      s1,1128(sp)
              #                    occupy s5 with _anonymous_of_temp_3_array_init_ptr_18_0
              #                    load from temp_3_array_init_ptr_18 in mem
    ld      s5,1120(sp)
              #                    occupy s8 with _anonymous_of_temp_4_array_init_ptr_18_0
              #                    load from temp_4_array_init_ptr_18 in mem
    ld      s8,1112(sp)
              #                    occupy a4 with _anonymous_of_temp_1_array_init_ptr_18_0
              #                    load from temp_1_array_init_ptr_18 in mem
    ld      a4,1136(sp)
              #                    occupy s11 with _anonymous_of_i_18_0
              #                    load from i_18 in mem


    lw      s11,1172(sp)
              #                    occupy a0 with _anonymous_of_temp_82_array_ptr_67_0
              #                    load from temp_82_array_ptr_67 in mem
    ld      a0,48(sp)
              #                    occupy s4 with _anonymous_of_temp_13_array_init_ptr_18_0
              #                    load from temp_13_array_init_ptr_18 in mem
    ld      s4,1040(sp)
              #                    occupy s6 with _anonymous_of_temp_14_array_init_ptr_18_0
              #                    load from temp_14_array_init_ptr_18 in mem
    ld      s6,1032(sp)
              #                    occupy s9 with _anonymous_of_temp_16_array_init_ptr_18_0
              #                    load from temp_16_array_init_ptr_18 in mem
    ld      s9,1016(sp)
    j       .branch_false_68
              #                    regtab     a0:Freed { symidx: temp_82_array_ptr_67, tracked: true } |     a1:Freed { symidx: temp_83_array_ele_67, tracked: true } |     a3:Freed { symidx: temp_84_cmp_67, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label branch_false_68: 
.branch_false_68:
              #                    regtab     a0:Freed { symidx: temp_82_array_ptr_67, tracked: true } |     a1:Freed { symidx: temp_83_array_ele_67, tracked: true } |     a3:Freed { symidx: temp_84_cmp_67, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          i_18 = i32 1_0 
              #                    occupy s11 with i_18
    li      s11, 1
              #                    free s11
              #                          jump label: while.head_72 
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: temp_82_array_ptr_67, tracked: true } |     a1:Freed { symidx: temp_83_array_ele_67, tracked: true } |     a3:Freed { symidx: temp_84_cmp_67, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.head_72: 
.while.head_72:
              #                          new_var temp_87_arithop_71:i32 
              #                          temp_87_arithop_71 = Add i32 len1_18, len2_18 
              #                    occupy a2 with len1_18
              #                    load from len1_18 in mem


    lw      a2,668(sp)
              #                    occupy s10 with len2_18
              #                    store to temp_82_array_ptr_67 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with temp_82_array_ptr_67
              #                    occupy a0 with temp_87_arithop_71
    add     a0,a2,s10
              #                    free a2
              #                    free s10
              #                    free a0
              #                          new_var temp_88_arithop_71:i32 
              #                          temp_88_arithop_71 = Sub i32 temp_87_arithop_71, 1_0 
              #                    occupy a0 with temp_87_arithop_71
              #                    store to temp_83_array_ele_67 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with temp_83_array_ele_67
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to len1_18 in mem offset legal
    sw      a2,668(sp)
              #                    release a2 with len1_18
              #                    occupy a2 with temp_88_arithop_71
              #                    regtab:    a0:Occupied { symidx: temp_87_arithop_71, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_88_arithop_71, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_84_cmp_67, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_89_cmp_71:i1 
              #                          temp_89_cmp_71 = icmp i32 Sle i_18, temp_88_arithop_71 
              #                    occupy s11 with i_18
              #                    occupy a2 with temp_88_arithop_71
              #                    occupy a1 with temp_89_cmp_71
    slt     a1,a2,s11
    xori    a1,a1,1
              #                    free s11
              #                    free a2
              #                    free a1
              #                          br i1 temp_89_cmp_71, label while.body_72, label while.exit_72 
              #                    occupy a1 with temp_89_cmp_71
              #                    free a1
              #                    store to temp_88_arithop_71 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with temp_88_arithop_71
              #                    occupy a1 with temp_89_cmp_71
    bnez    a1, .while.body_72
              #                    free a1
    j       .while.exit_72
              #                    regtab     a0:Freed { symidx: temp_87_arithop_71, tracked: true } |     a1:Freed { symidx: temp_89_cmp_71, tracked: true } |     a3:Freed { symidx: temp_84_cmp_67, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.body_72: 
.while.body_72:
              #                          new_var temp_90_array_ptr_73:ptr->i32 
              #                          temp_90_array_ptr_73 = getelementptr result_18:Array:i32:[Some(40_0)] [Some(i_18)] 
              #                    occupy a2 with temp_90_array_ptr_73
    li      a2, 0
              #                    store to temp_87_arithop_71 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_87_arithop_71
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s11 with i_18
              #                    store to temp_89_cmp_71 in mem offset legal
    sb      a1,19(sp)
              #                    release a1 with temp_89_cmp_71
              #                    occupy a1 with _anonymous_of_result_18_0
    mul     a1,a0,s11
              #                    free a0
              #                    free s11
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,304
              #                    free a2
              #                          new_var temp_91_array_ele_73:i32 
              #                          temp_91_array_ele_73 = load temp_90_array_ptr_73:ptr->i32 
              #                    occupy a2 with temp_90_array_ptr_73
              #                    occupy a0 with temp_91_array_ele_73
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                           Call void putint_0(temp_91_array_ele_73) 
              #                    saved register dumping to mem
              #                    store to temp_2_array_init_ptr_18 in mem offset legal
    sd      s1,1128(sp)
              #                    release s1 with temp_2_array_init_ptr_18
              #                    store to temp_11_array_init_ptr_18 in mem offset legal
    sd      s2,1056(sp)
              #                    release s2 with temp_11_array_init_ptr_18
              #                    store to temp_12_array_init_ptr_18 in mem offset legal
    sd      s3,1048(sp)
              #                    release s3 with temp_12_array_init_ptr_18
              #                    store to temp_13_array_init_ptr_18 in mem offset legal
    sd      s4,1040(sp)
              #                    release s4 with temp_13_array_init_ptr_18
              #                    store to temp_3_array_init_ptr_18 in mem offset legal
    sd      s5,1120(sp)
              #                    release s5 with temp_3_array_init_ptr_18
              #                    store to temp_14_array_init_ptr_18 in mem offset legal
    sd      s6,1032(sp)
              #                    release s6 with temp_14_array_init_ptr_18
              #                    store to temp_15_array_init_ptr_18 in mem offset legal
    sd      s7,1024(sp)
              #                    release s7 with temp_15_array_init_ptr_18
              #                    store to temp_4_array_init_ptr_18 in mem offset legal
    sd      s8,1112(sp)
              #                    release s8 with temp_4_array_init_ptr_18
              #                    store to temp_16_array_init_ptr_18 in mem offset legal
    sd      s9,1016(sp)
              #                    release s9 with temp_16_array_init_ptr_18
              #                    store to len2_18 in mem offset legal
    sw      s10,664(sp)
              #                    release s10 with len2_18
              #                    store to i_18 in mem offset legal
    sw      s11,1172(sp)
              #                    release s11 with i_18
              #                    store to temp_91_array_ele_73 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_91_array_ele_73
              #                    store to temp_90_array_ptr_73 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_90_array_ptr_73
              #                    store to temp_84_cmp_67 in mem offset legal
    sb      a3,43(sp)
              #                    release a3 with temp_84_cmp_67
              #                    store to temp_1_array_init_ptr_18 in mem offset legal
    sd      a4,1136(sp)
              #                    release a4 with temp_1_array_init_ptr_18
              #                    store to temp_8_array_init_ptr_18 in mem offset legal
    sd      a5,1080(sp)
              #                    release a5 with temp_8_array_init_ptr_18
              #                    store to temp_9_array_init_ptr_18 in mem offset legal
    sd      a6,1072(sp)
              #                    release a6 with temp_9_array_init_ptr_18
              #                    store to temp_10_array_init_ptr_18 in mem offset legal
    sd      a7,1064(sp)
              #                    release a7 with temp_10_array_init_ptr_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_91_array_ele_73_0
              #                    load from temp_91_array_ele_73 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_92_arithop_73:i32 
              #                          temp_92_arithop_73 = Add i32 i_18, 1_0 
              #                    occupy a0 with i_18
              #                    load from i_18 in mem


    lw      a0,1172(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_92_arithop_73
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_18 = i32 temp_92_arithop_73 
              #                    occupy a2 with temp_92_arithop_73
              #                    occupy a0 with i_18
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_72 
              #                    store to temp_92_arithop_73 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_92_arithop_73
              #                    store to i_18 in mem offset legal
    sw      a0,1172(sp)
              #                    release a0 with i_18
              #                    occupy a5 with _anonymous_of_temp_8_array_init_ptr_18_0
              #                    load from temp_8_array_init_ptr_18 in mem
    ld      a5,1080(sp)
              #                    occupy a1 with _anonymous_of_temp_83_array_ele_67_0
              #                    load from temp_83_array_ele_67 in mem


    lw      a1,44(sp)
              #                    occupy s2 with _anonymous_of_temp_11_array_init_ptr_18_0
              #                    load from temp_11_array_init_ptr_18 in mem
    ld      s2,1056(sp)
              #                    occupy a3 with _anonymous_of_temp_84_cmp_67_0
              #                    load from temp_84_cmp_67 in mem
    lb      a3,43(sp)
              #                    occupy s10 with _anonymous_of_len2_18_0
              #                    load from len2_18 in mem


    lw      s10,664(sp)
              #                    occupy a6 with _anonymous_of_temp_9_array_init_ptr_18_0
              #                    load from temp_9_array_init_ptr_18 in mem
    ld      a6,1072(sp)
              #                    occupy s7 with _anonymous_of_temp_15_array_init_ptr_18_0
              #                    load from temp_15_array_init_ptr_18 in mem
    ld      s7,1024(sp)
              #                    occupy s3 with _anonymous_of_temp_12_array_init_ptr_18_0
              #                    load from temp_12_array_init_ptr_18 in mem
    ld      s3,1048(sp)
              #                    occupy a7 with _anonymous_of_temp_10_array_init_ptr_18_0
              #                    load from temp_10_array_init_ptr_18 in mem
    ld      a7,1064(sp)
              #                    occupy s1 with _anonymous_of_temp_2_array_init_ptr_18_0
              #                    load from temp_2_array_init_ptr_18 in mem
    ld      s1,1128(sp)
              #                    occupy s5 with _anonymous_of_temp_3_array_init_ptr_18_0
              #                    load from temp_3_array_init_ptr_18 in mem
    ld      s5,1120(sp)
              #                    occupy s8 with _anonymous_of_temp_4_array_init_ptr_18_0
              #                    load from temp_4_array_init_ptr_18 in mem
    ld      s8,1112(sp)
              #                    occupy a4 with _anonymous_of_temp_1_array_init_ptr_18_0
              #                    load from temp_1_array_init_ptr_18 in mem
    ld      a4,1136(sp)
              #                    occupy s11 with _anonymous_of_i_18_0
              #                    load from i_18 in mem


    lw      s11,1172(sp)
              #                    occupy a0 with _anonymous_of_temp_82_array_ptr_67_0
              #                    load from temp_82_array_ptr_67 in mem
    ld      a0,48(sp)
              #                    occupy s4 with _anonymous_of_temp_13_array_init_ptr_18_0
              #                    load from temp_13_array_init_ptr_18 in mem
    ld      s4,1040(sp)
              #                    occupy s6 with _anonymous_of_temp_14_array_init_ptr_18_0
              #                    load from temp_14_array_init_ptr_18 in mem
    ld      s6,1032(sp)
              #                    occupy s9 with _anonymous_of_temp_16_array_init_ptr_18_0
              #                    load from temp_16_array_init_ptr_18 in mem
    ld      s9,1016(sp)
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: temp_87_arithop_71, tracked: true } |     a1:Freed { symidx: temp_89_cmp_71, tracked: true } |     a3:Freed { symidx: temp_84_cmp_67, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
              #                          label while.exit_72: 
.while.exit_72:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,1184(sp)
              #                    load from s0_main_0 in mem
    ld      s0,1176(sp)
              #                    store to temp_87_arithop_71 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_87_arithop_71
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1192
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_89_cmp_71, tracked: true } |     a3:Freed { symidx: temp_84_cmp_67, tracked: true } |     a4:Freed { symidx: temp_1_array_init_ptr_18, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_18, tracked: true } |     a6:Freed { symidx: temp_9_array_init_ptr_18, tracked: true } |     a7:Freed { symidx: temp_10_array_init_ptr_18, tracked: true } |     s10:Freed { symidx: len2_18, tracked: true } |     s11:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: temp_2_array_init_ptr_18, tracked: true } |     s2:Freed { symidx: temp_11_array_init_ptr_18, tracked: true } |     s3:Freed { symidx: temp_12_array_init_ptr_18, tracked: true } |     s4:Freed { symidx: temp_13_array_init_ptr_18, tracked: true } |     s5:Freed { symidx: temp_3_array_init_ptr_18, tracked: true } |     s6:Freed { symidx: temp_14_array_init_ptr_18, tracked: true } |     s7:Freed { symidx: temp_15_array_init_ptr_18, tracked: true } |     s8:Freed { symidx: temp_4_array_init_ptr_18, tracked: true } |     s9:Freed { symidx: temp_16_array_init_ptr_18, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl len
              #                          global i32 len_0 
    .type len,@object
len:
    .word 20
