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
              #                    mem layout:|ra_main:8 at 1025464|s0_main:8 at 1025456|T:4 at 1025452|W:4 at 1025448|x:4 at 1025444|i:4 at 1025440|j:4 at 1025436|temp_2_ret_of_getint:4 at 1025432|temp_3_ret_of_getint:4 at 1025428|temp_4_cmp:1 at 1025427|none:3 at 1025424|temp_5_ret_of_getint:4 at 1025420|temp_6_arithop:4 at 1025416|temp_7_index_ptr:8 at 1025408|temp_8_index_ptr:8 at 1025400|temp_9_ptr2globl:8040 at 1017360|temp_10_array_ptr:8 at 1017352|temp_11_array_ele:4 at 1017348|temp_12_arithop:4 at 1017344|temp_13_ptr2globl:140700 at 876644|none:4 at 876640|temp_14_array_ptr:8 at 876632|temp_15_array_ele:4 at 876628|temp_16_arithop:4 at 876624|temp_17_arithop:4 at 876620|temp_18_cmp:1 at 876619|temp_19_cmp:1 at 876618|none:2 at 876616|temp_20_arithop:4 at 876612|temp_21_arithop:4 at 876608|temp_22_ptr2globl:8040 at 868568|temp_23_array_ptr:8 at 868560|temp_24_array_ele:4 at 868556|temp_25_arithop:4 at 868552|temp_26_arithop:4 at 868548|temp_27_ptr2globl:140700 at 727848|temp_28_array_ptr:8 at 727840|temp_29_array_ele:4 at 727836|temp_30_arithop:4 at 727832|temp_31_arithop:4 at 727828|temp_32_arithop:4 at 727824|temp_33_ptr2globl:8040 at 719784|temp_34_array_ptr:8 at 719776|temp_35_array_ele:4 at 719772|temp_36_arithop:4 at 719768|temp_37_ptr2globl:140700 at 579068|none:4 at 579064|temp_38_array_ptr:8 at 579056|temp_39_array_ele:4 at 579052|temp_40_arithop:4 at 579048|temp_41_cmp:1 at 579047|none:7 at 579040|temp_42_index_ptr:8 at 579032|temp_43_arithop:4 at 579028|temp_44_arithop:4 at 579024|temp_45_ptr2globl:8040 at 570984|temp_46_array_ptr:8 at 570976|temp_47_array_ele:4 at 570972|temp_48_arithop:4 at 570968|temp_49_ptr2globl:140700 at 430268|none:4 at 430264|temp_50_array_ptr:8 at 430256|temp_51_array_ele:4 at 430252|temp_52_arithop:4 at 430248|temp_53_arithop:4 at 430244|none:4 at 430240|temp_54_index_ptr:8 at 430232|temp_55_arithop:4 at 430228|temp_56_arithop:4 at 430224|temp_57_ptr2globl:8040 at 422184|temp_58_array_ptr:8 at 422176|temp_59_array_ele:4 at 422172|temp_60_arithop:4 at 422168|temp_61_arithop:4 at 422164|temp_62_ptr2globl:140700 at 281464|temp_63_array_ptr:8 at 281456|temp_64_array_ele:4 at 281452|temp_65_arithop:4 at 281448|temp_66_arithop:4 at 281444|res:4 at 281440|temp_67_cmp:1 at 281439|none:3 at 281436|temp_68_ptr2globl:140700 at 140736|temp_69_array_ptr:8 at 140728|temp_70_array_ele:4 at 140724|temp_71_cmp:1 at 140723|none:3 at 140720|temp_72_ptr2globl:140700 at 20|none:4 at 16|temp_73_array_ptr:8 at 8|temp_74_array_ele:4 at 4|temp_75_arithop:4 at 0
              #                    occupy a0 with -1025472_0
    li      a0, -1025472
    li      a0, -1025472
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 1025464_0
    li      a1, 1025464
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 1025456_0
    li      a2, 1025456
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 1025472_0
    li      a3, 1025472
    li      a3, 1025472
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 T_18 
              #                          alloc i32 W_18 
              #                          alloc i32 x_18 
              #                          alloc i32 i_18 
              #                          alloc i32 j_18 
              #                          alloc i32 temp_2_ret_of_getint_18 
              #                          alloc i32 temp_3_ret_of_getint_18 
              #                          alloc i1 temp_4_cmp_23 
              #                          alloc i32 temp_5_ret_of_getint_25 
              #                          alloc i32 temp_6_arithop_25 
              #                          alloc ptr->i32 temp_7_index_ptr_25 
              #                          alloc ptr->i32 temp_8_index_ptr_25 
              #                          alloc Array:i32:[Some(1005_0), Some(2_0)] temp_9_ptr2globl_25 
              #                          alloc ptr->i32 temp_10_array_ptr_25 
              #                          alloc i32 temp_11_array_ele_25 
              #                          alloc i32 temp_12_arithop_25 
              #                          alloc Array:i32:[Some(1005_0), Some(35_0)] temp_13_ptr2globl_25 
              #                          alloc ptr->i32 temp_14_array_ptr_25 
              #                          alloc i32 temp_15_array_ele_25 
              #                          alloc i32 temp_16_arithop_25 
              #                          alloc i32 temp_17_arithop_25 
              #                          alloc i1 temp_18_cmp_31 
              #                          alloc i1 temp_19_cmp_35 
              #                          alloc i32 temp_20_arithop_38 
              #                          alloc i32 temp_21_arithop_38 
              #                          alloc Array:i32:[Some(1005_0), Some(2_0)] temp_22_ptr2globl_38 
              #                          alloc ptr->i32 temp_23_array_ptr_38 
              #                          alloc i32 temp_24_array_ele_38 
              #                          alloc i32 temp_25_arithop_38 
              #                          alloc i32 temp_26_arithop_38 
              #                          alloc Array:i32:[Some(1005_0), Some(35_0)] temp_27_ptr2globl_38 
              #                          alloc ptr->i32 temp_28_array_ptr_38 
              #                          alloc i32 temp_29_array_ele_38 
              #                          alloc i32 temp_30_arithop_38 
              #                          alloc i32 temp_31_arithop_38 
              #                          alloc i32 temp_32_arithop_38 
              #                          alloc Array:i32:[Some(1005_0), Some(2_0)] temp_33_ptr2globl_38 
              #                          alloc ptr->i32 temp_34_array_ptr_38 
              #                          alloc i32 temp_35_array_ele_38 
              #                          alloc i32 temp_36_arithop_38 
              #                          alloc Array:i32:[Some(1005_0), Some(35_0)] temp_37_ptr2globl_38 
              #                          alloc ptr->i32 temp_38_array_ptr_38 
              #                          alloc i32 temp_39_array_ele_38 
              #                          alloc i32 temp_40_arithop_38 
              #                          alloc i1 temp_41_cmp_38 
              #                          alloc ptr->i32 temp_42_index_ptr_40 
              #                          alloc i32 temp_43_arithop_40 
              #                          alloc i32 temp_44_arithop_40 
              #                          alloc Array:i32:[Some(1005_0), Some(2_0)] temp_45_ptr2globl_40 
              #                          alloc ptr->i32 temp_46_array_ptr_40 
              #                          alloc i32 temp_47_array_ele_40 
              #                          alloc i32 temp_48_arithop_40 
              #                          alloc Array:i32:[Some(1005_0), Some(35_0)] temp_49_ptr2globl_40 
              #                          alloc ptr->i32 temp_50_array_ptr_40 
              #                          alloc i32 temp_51_array_ele_40 
              #                          alloc i32 temp_52_arithop_40 
              #                          alloc i32 temp_53_arithop_37 
              #                          alloc ptr->i32 temp_54_index_ptr_42 
              #                          alloc i32 temp_55_arithop_42 
              #                          alloc i32 temp_56_arithop_42 
              #                          alloc Array:i32:[Some(1005_0), Some(2_0)] temp_57_ptr2globl_42 
              #                          alloc ptr->i32 temp_58_array_ptr_42 
              #                          alloc i32 temp_59_array_ele_42 
              #                          alloc i32 temp_60_arithop_42 
              #                          alloc i32 temp_61_arithop_42 
              #                          alloc Array:i32:[Some(1005_0), Some(35_0)] temp_62_ptr2globl_42 
              #                          alloc ptr->i32 temp_63_array_ptr_42 
              #                          alloc i32 temp_64_array_ele_42 
              #                          alloc i32 temp_65_arithop_42 
              #                          alloc i32 temp_66_arithop_33 
              #                          alloc i32 res_18 
              #                          alloc i1 temp_67_cmp_48 
              #                          alloc Array:i32:[Some(1005_0), Some(35_0)] temp_68_ptr2globl_51 
              #                          alloc ptr->i32 temp_69_array_ptr_51 
              #                          alloc i32 temp_70_array_ele_51 
              #                          alloc i1 temp_71_cmp_51 
              #                          alloc Array:i32:[Some(1005_0), Some(35_0)] temp_72_ptr2globl_53 
              #                          alloc ptr->i32 temp_73_array_ptr_53 
              #                          alloc i32 temp_74_array_ele_53 
              #                          alloc i32 temp_75_arithop_50 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var T_18:i32 
              #                          new_var W_18:i32 
              #                          new_var x_18:i32 
              #                          new_var i_18:i32 
              #                          new_var j_18:i32 
              #                          new_var temp_2_ret_of_getint_18:i32 
              #                          temp_2_ret_of_getint_18 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_2_ret_of_getint_18 in mem offset_illegal
              #                    occupy a0 with 1025432_0
    li      a0, 1025432
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          T_18 = i32 temp_2_ret_of_getint_18 
              #                    occupy a0 with temp_2_ret_of_getint_18
              #                    occupy a1 with T_18
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_3_ret_of_getint_18:i32 
              #                          temp_3_ret_of_getint_18 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_2_ret_of_getint_18 in mem offset_illegal
              #                    occupy a0 with 1025432_0
    li      a0, 1025432
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_2_ret_of_getint_18
              #                    store to T_18 in mem offset_illegal
              #                    occupy a0 with 1025452_0
    li      a0, 1025452
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with T_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_3_ret_of_getint_18 in mem offset_illegal
              #                    occupy a0 with 1025428_0
    li      a0, 1025428
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          W_18 = i32 temp_3_ret_of_getint_18 
              #                    occupy a0 with temp_3_ret_of_getint_18
              #                    occupy a1 with W_18
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_18 = i32 1_0 
              #                    occupy a2 with i_18
    li      a2, 1
              #                    free a2
              #                          jump label: while.head_24 
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } | 
              #                          label while.head_24: 
.while.head_24:
              #                          new_var temp_4_cmp_23:i1 
              #                          temp_4_cmp_23 = icmp i32 Sle i_18, T_18 
              #                    occupy a2 with i_18
              #                    occupy a3 with T_18
              #                    load from T_18 in mem

              #                    occupy a3 with T_18
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    occupy a4 with temp_4_cmp_23
    slt     a4,a3,a2
    xori    a4,a4,1
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_4_cmp_23, label while.body_24, label while.exit_24 
              #                    occupy a4 with temp_4_cmp_23
              #                    free a4
              #                    occupy a4 with temp_4_cmp_23
    bnez    a4, .while.body_24
              #                    free a4
    j       .while.exit_24
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } | 
              #                          label while.body_24: 
.while.body_24:
              #                          new_var temp_5_ret_of_getint_25:i32 
              #                          temp_5_ret_of_getint_25 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_ret_of_getint_18 in mem offset_illegal
              #                    occupy a0 with 1025428_0
    li      a0, 1025428
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_3_ret_of_getint_18
              #                    store to W_18 in mem offset_illegal
              #                    occupy a0 with 1025448_0
    li      a0, 1025448
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with W_18
              #                    store to i_18 in mem offset_illegal
              #                    occupy a1 with 1025440_0
    li      a1, 1025440
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with i_18
              #                    store to T_18 in mem offset_illegal
              #                    occupy a2 with 1025452_0
    li      a2, 1025452
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with T_18
              #                    store to temp_4_cmp_23 in mem offset_illegal
              #                    occupy a3 with 1025427_0
    li      a3, 1025427
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_4_cmp_23
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_5_ret_of_getint_25 in mem offset_illegal
              #                    occupy a0 with 1025420_0
    li      a0, 1025420
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          x_18 = i32 temp_5_ret_of_getint_25 
              #                    occupy a0 with temp_5_ret_of_getint_25
              #                    occupy a4 with x_18
    mv      a4, a0
              #                    free a0
              #                    free a4
              #                          new_var temp_6_arithop_25:i32 
              #                          temp_6_arithop_25 = Mod i32 x_18, 2_0 
              #                    occupy a4 with x_18
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy a6 with temp_6_arithop_25
              #                    load from temp_6_arithop_25 in mem

              #                    occupy a6 with temp_6_arithop_25
    add     a6,sp,a6
    lw      a6,0(a6)
              #                    free a6
    rem     a6,a4,a5
              #                    free a4
              #                    free a5
              #                    free a6
              #                          new_var temp_7_index_ptr_25:ptr->i32 
              #                          temp_7_index_ptr_25 = getelementptr t_0:Array:i32:[Some(1005_0), Some(2_0)] [Some(i_18), Some(temp_6_arithop_25)] 
              #                    occupy a7 with temp_7_index_ptr_25
    li      a7, 0
              #                    found literal reg Some(a5) already exist with 2_0
              #                    occupy a5 with 2_0
              #                    occupy s1 with i_18
              #                    load from i_18 in mem

              #                    occupy s1 with i_18
    add     s1,sp,s1
    lw      s1,0(s1)
              #                    free s1
              #                    occupy s2 with _anonymous_of_t_0_0
    mul     s2,a5,s1
              #                    free a5
              #                    free s1
    add     a7,a7,s2
              #                    free s2
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a6 with temp_6_arithop_25
              #                    occupy s4 with _anonymous_of_t_0_0
    mul     s4,s3,a6
              #                    free s3
              #                    free a6
    add     a7,a7,s4
              #                    free s4
    slli a7,a7,2
              #                    occupy s5 with _anonymous_of_t_0_0
    la      s5, t
    add     a7,a7,s5
              #                    free s5
              #                    free a7
              #                          store 1_0:i32 temp_7_index_ptr_25:ptr->i32 
              #                    occupy a7 with temp_7_index_ptr_25
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          mu t_0:67 
              #                          t_0 = chi t_0:67 
              #                          new_var temp_8_index_ptr_25:ptr->i32 
              #                          temp_8_index_ptr_25 = getelementptr dp_0:Array:i32:[Some(1005_0), Some(35_0)] [Some(i_18), Some(0_0)] 
              #                    occupy s6 with temp_8_index_ptr_25
    li      s6, 0
              #                    occupy s7 with 35_0
    li      s7, 35
              #                    occupy s1 with i_18
              #                    occupy s8 with _anonymous_of_dp_0_0
    mul     s8,s7,s1
              #                    free s7
              #                    free s1
    add     s6,s6,s8
              #                    free s8
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    occupy s10 with _anonymous_of_dp_0_0
    mul     s10,s3,s9
              #                    free s3
              #                    free s9
    add     s6,s6,s10
              #                    free s10
    slli s6,s6,2
              #                    occupy s11 with _anonymous_of_dp_0_0
    la      s11, dp
    add     s6,s6,s11
              #                    free s11
              #                    free s6
              #                          new_var temp_9_ptr2globl_25:Array:i32:[Some(1005_0), Some(2_0)] 
              #                          temp_9_ptr2globl_25 = load *t_0:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a1 with *t_0
              #                       load label t as ptr to reg
    la      a1, t
              #                    occupy reg a1 with *t_0
              #                    occupy a2 with temp_9_ptr2globl_25
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_10_array_ptr_25:ptr->i32 
              #                          temp_10_array_ptr_25 = getelementptr temp_9_ptr2globl_25:Array:i32:[Some(1005_0), Some(2_0)] [Some(i_18), Some(1_0)] 
              #                    occupy a1 with temp_10_array_ptr_25
    li      a1, 0
              #                    found literal reg Some(a5) already exist with 2_0
              #                    occupy a5 with 2_0
              #                    occupy s1 with i_18
              #                    occupy a3 with _anonymous_of_temp_9_ptr2globl_25_0
    mul     a3,a5,s1
              #                    free a5
              #                    free s1
    add     a1,a1,a3
              #                    free a3
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with _anonymous_of_temp_9_ptr2globl_25_0
    mul     a5,s3,a3
              #                    free s3
              #                    free a3
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
    add     a1,a1,sp
              #                    occupy a3 with 1017360_0
    li      a3, 1017360
    li      a3, 1017360
    add     a1,a3,a1
              #                    free a3
              #                    free a1
              #                          new_var temp_11_array_ele_25:i32 
              #                          temp_11_array_ele_25 = load temp_10_array_ptr_25:ptr->i32 
              #                    occupy a1 with temp_10_array_ptr_25
              #                    occupy a3 with temp_11_array_ele_25
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_12_arithop_25:i32 
              #                          temp_12_arithop_25 = Sub i32 i_18, 1_0 
              #                    occupy s1 with i_18
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a5 with temp_12_arithop_25
              #                    regtab:    a0:Freed { symidx: temp_5_ret_of_getint_25, tracked: true } |     a1:Freed { symidx: temp_10_array_ptr_25, tracked: true } |     a2:Freed { symidx: temp_9_ptr2globl_25, tracked: true } |     a3:Freed { symidx: temp_11_array_ele_25, tracked: true } |     a4:Freed { symidx: x_18, tracked: true } |     a5:Occupied { symidx: temp_12_arithop_25, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_6_arithop_25, tracked: true } |     a7:Freed { symidx: temp_7_index_ptr_25, tracked: true } |     s10:Freed { symidx: _anonymous_of_dp_0_0, tracked: false } |     s11:Freed { symidx: _anonymous_of_dp_0_0, tracked: false } |     s1:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: _anonymous_of_t_0_0, tracked: false } |     s3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s4:Freed { symidx: _anonymous_of_t_0_0, tracked: false } |     s5:Freed { symidx: _anonymous_of_t_0_0, tracked: false } |     s6:Freed { symidx: temp_8_index_ptr_25, tracked: true } |     s7:Freed { symidx: 35_0, tracked: false } |     s8:Freed { symidx: _anonymous_of_dp_0_0, tracked: false } |     s9:Freed { symidx: 0_0, tracked: false } | 


    sub     a5,s1,s3
              #                    free s1
              #                    free s3
              #                    free a5
              #                          new_var temp_13_ptr2globl_25:Array:i32:[Some(1005_0), Some(35_0)] 
              #                          temp_13_ptr2globl_25 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
              #                    occupy s2 with *dp_0
              #                       load label dp as ptr to reg
    la      s2, dp
              #                    occupy reg s2 with *dp_0
              #                    occupy s3 with temp_13_ptr2globl_25
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_14_array_ptr_25:ptr->i32 
              #                          temp_14_array_ptr_25 = getelementptr temp_13_ptr2globl_25:Array:i32:[Some(1005_0), Some(35_0)] [Some(temp_12_arithop_25), Some(0_0)] 
              #                    occupy s2 with temp_14_array_ptr_25
    li      s2, 0
              #                    found literal reg Some(s7) already exist with 35_0
              #                    occupy s7 with 35_0
              #                    occupy a5 with temp_12_arithop_25
              #                    occupy s4 with _anonymous_of_temp_13_ptr2globl_25_0
    mul     s4,s7,a5
              #                    free s7
              #                    free a5
    add     s2,s2,s4
              #                    free s4
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    found literal reg Some(s9) already exist with 0_0
              #                    occupy s9 with 0_0
              #                    occupy s5 with _anonymous_of_temp_13_ptr2globl_25_0
    mul     s5,s4,s9
              #                    free s4
              #                    free s9
    add     s2,s2,s5
              #                    free s5
    slli s2,s2,2
    add     s2,s2,sp
              #                    occupy s4 with 876644_0
    li      s4, 876644
    li      s4, 876644
    add     s2,s4,s2
              #                    free s4
              #                    free s2
              #                          new_var temp_15_array_ele_25:i32 
              #                          temp_15_array_ele_25 = load temp_14_array_ptr_25:ptr->i32 
              #                    occupy s2 with temp_14_array_ptr_25
              #                    occupy s4 with temp_15_array_ele_25
    lw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                          new_var temp_16_arithop_25:i32 
              #                          temp_16_arithop_25 = Add i32 temp_15_array_ele_25, temp_11_array_ele_25 
              #                    occupy s4 with temp_15_array_ele_25
              #                    occupy a3 with temp_11_array_ele_25
              #                    occupy s5 with temp_16_arithop_25
    add     s5,s4,a3
              #                    free s4
              #                    free a3
              #                    free s5
              #                          store temp_16_arithop_25:i32 temp_8_index_ptr_25:ptr->i32 
              #                    occupy s6 with temp_8_index_ptr_25
              #                    occupy s5 with temp_16_arithop_25
    sw      s5,0(s6)
              #                    free s5
              #                    free s6
              #                          mu dp_0:97 
              #                          dp_0 = chi dp_0:97 
              #                          new_var temp_17_arithop_25:i32 
              #                          temp_17_arithop_25 = Add i32 i_18, 1_0 
              #                    occupy s1 with i_18
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with temp_17_arithop_25
    add     s8,s1,s7
              #                    free s1
              #                    free s7
              #                    free s8
              #                          i_18 = i32 temp_17_arithop_25 
              #                    occupy s8 with temp_17_arithop_25
              #                    occupy s1 with i_18
    mv      s1, s8
              #                    free s8
              #                    free s1
              #                          jump label: while.head_24 
              #                    store to temp_13_ptr2globl_25 in mem offset_illegal
              #                    occupy s3 with 876644_0
    li      s3, 876644
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_13_ptr2globl_25
              #                    store to temp_15_array_ele_25 in mem offset_illegal
              #                    occupy s3 with 876628_0
    li      s3, 876628
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_15_array_ele_25
              #                    store to temp_7_index_ptr_25 in mem offset_illegal
              #                    occupy a7 with 1025408_0
    li      a7, 1025408
    add     a7,sp,a7
    sd      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_7_index_ptr_25
              #                    store to temp_16_arithop_25 in mem offset_illegal
              #                    occupy a7 with 876624_0
    li      a7, 876624
    add     a7,sp,a7
    sw      s5,0(a7)
              #                    free a7
              #                    release s5 with temp_16_arithop_25
              #                    store to temp_10_array_ptr_25 in mem offset_illegal
              #                    occupy a1 with 1017352_0
    li      a1, 1017352
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_10_array_ptr_25
              #                    store to temp_6_arithop_25 in mem offset_illegal
              #                    occupy a1 with 1025416_0
    li      a1, 1025416
    add     a1,sp,a1
    sw      a6,0(a1)
              #                    free a1
              #                    release a6 with temp_6_arithop_25
              #                    store to temp_14_array_ptr_25 in mem offset_illegal
              #                    occupy a6 with 876632_0
    li      a6, 876632
    add     a6,sp,a6
    sd      s2,0(a6)
              #                    free a6
              #                    release s2 with temp_14_array_ptr_25
              #                    store to temp_9_ptr2globl_25 in mem offset_illegal
              #                    occupy a2 with 1017360_0
    li      a2, 1017360
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_9_ptr2globl_25
              #                    store to i_18 in mem offset_illegal
              #                    occupy a2 with 1025440_0
    li      a2, 1025440
    add     a2,sp,a2
    sw      s1,0(a2)
              #                    free a2
              #                    release s1 with i_18
              #                    store to temp_17_arithop_25 in mem offset_illegal
              #                    occupy s1 with 876620_0
    li      s1, 876620
    add     s1,sp,s1
    sw      s8,0(s1)
              #                    free s1
              #                    release s8 with temp_17_arithop_25
              #                    store to temp_11_array_ele_25 in mem offset_illegal
              #                    occupy a3 with 1017348_0
    li      a3, 1017348
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_11_array_ele_25
              #                    store to x_18 in mem offset_illegal
              #                    occupy a3 with 1025444_0
    li      a3, 1025444
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with x_18
              #                    store to temp_8_index_ptr_25 in mem offset_illegal
              #                    occupy a4 with 1025400_0
    li      a4, 1025400
    add     a4,sp,a4
    sd      s6,0(a4)
              #                    free a4
              #                    release s6 with temp_8_index_ptr_25
              #                    store to temp_12_arithop_25 in mem offset_illegal
              #                    occupy a5 with 1017344_0
    li      a5, 1017344
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_12_arithop_25
              #                    store to temp_5_ret_of_getint_25 in mem offset_illegal
              #                    occupy a0 with 1025420_0
    li      a0, 1025420
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_5_ret_of_getint_25
              #                    occupy a1 with _anonymous_of_W_18_0
              #                    load from W_18 in mem

              #                    occupy a0 with W_18
    li      a0, 1025448
    add     a0,sp,a0
    lw      a1,0(a0)
              #                    free a0
              #                    occupy a2 with _anonymous_of_i_18_0
              #                    load from i_18 in mem

              #                    occupy a5 with i_18
    li      a5, 1025440
    add     a5,sp,a5
    lw      a2,0(a5)
              #                    free a5
              #                    store to i_18 in mem offset_illegal
              #                    occupy a3 with 1025440_0
    li      a3, 1025440
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with i_18
              #                    store to W_18 in mem offset_illegal
              #                    occupy a0 with 1025448_0
    li      a0, 1025448
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with W_18
              #                    occupy a0 with _anonymous_of_temp_3_ret_of_getint_18_0
              #                    load from temp_3_ret_of_getint_18 in mem

              #                    occupy a4 with temp_3_ret_of_getint_18
    li      a4, 1025428
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } | 
              #                          label while.exit_24: 
.while.exit_24:
              #                          i_18 = i32 1_0 
              #                    occupy a2 with i_18
    li      a2, 1
              #                    free a2
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } | 
              #                          label while.head_32: 
.while.head_32:
              #                          new_var temp_18_cmp_31:i1 
              #                          temp_18_cmp_31 = icmp i32 Sle i_18, T_18 
              #                    occupy a2 with i_18
              #                    occupy a3 with T_18
              #                    occupy a5 with temp_18_cmp_31
    slt     a5,a3,a2
    xori    a5,a5,1
              #                    free a2
              #                    free a3
              #                    free a5
              #                          br i1 temp_18_cmp_31, label while.body_32, label while.exit_32 
              #                    occupy a5 with temp_18_cmp_31
              #                    free a5
              #                    occupy a5 with temp_18_cmp_31
    bnez    a5, .while.body_32
              #                    free a5
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } | 
              #                          label while.body_32: 
.while.body_32:
              #                          j_18 = i32 1_0 
              #                    occupy a6 with j_18
    li      a6, 1
              #                    free a6
              #                          jump label: while.head_36 
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } | 
              #                          label while.head_36: 
.while.head_36:
              #                          new_var temp_19_cmp_35:i1 
              #                          temp_19_cmp_35 = icmp i32 Sle j_18, W_18 
              #                    occupy a6 with j_18
              #                    occupy a1 with W_18
              #                    occupy a7 with temp_19_cmp_35
    slt     a7,a1,a6
    xori    a7,a7,1
              #                    free a6
              #                    free a1
              #                    free a7
              #                          br i1 temp_19_cmp_35, label while.body_36, label while.exit_36 
              #                    occupy a7 with temp_19_cmp_35
              #                    free a7
              #                    occupy a7 with temp_19_cmp_35
    bnez    a7, .while.body_36
              #                    free a7
    j       .while.exit_36
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } | 
              #                          label while.body_36: 
.while.body_36:
              #                          new_var temp_20_arithop_38:i32 
              #                          temp_20_arithop_38 = Add i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_20_arithop_38
    add     s2,a6,s1
              #                    free a6
              #                    free s1
              #                    free s2
              #                          new_var temp_21_arithop_38:i32 
              #                          temp_21_arithop_38 = Mod i32 temp_20_arithop_38, 2_0 
              #                    occupy s2 with temp_20_arithop_38
              #                    occupy s3 with 2_0
    li      s3, 2
              #                    occupy s4 with temp_21_arithop_38
              #                    load from temp_21_arithop_38 in mem

              #                    occupy s4 with temp_21_arithop_38
    add     s4,sp,s4
    lw      s4,0(s4)
              #                    free s4
    rem     s4,s2,s3
              #                    free s2
              #                    free s3
              #                    free s4
              #                          new_var temp_22_ptr2globl_38:Array:i32:[Some(1005_0), Some(2_0)] 
              #                          temp_22_ptr2globl_38 = load *t_0:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s5 with *t_0
              #                       load label t as ptr to reg
    la      s5, t
              #                    occupy reg s5 with *t_0
              #                    occupy s6 with temp_22_ptr2globl_38
    lw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          new_var temp_23_array_ptr_38:ptr->i32 
              #                          temp_23_array_ptr_38 = getelementptr temp_22_ptr2globl_38:Array:i32:[Some(1005_0), Some(2_0)] [Some(i_18), Some(temp_21_arithop_38)] 
              #                    occupy s7 with temp_23_array_ptr_38
    li      s7, 0
              #                    found literal reg Some(s3) already exist with 2_0
              #                    occupy s3 with 2_0
              #                    occupy a2 with i_18
              #                    occupy s8 with _anonymous_of_temp_22_ptr2globl_38_0
    mul     s8,s3,a2
              #                    free s3
              #                    free a2
    add     s7,s7,s8
              #                    free s8
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s4 with temp_21_arithop_38
              #                    occupy s9 with _anonymous_of_temp_22_ptr2globl_38_0
    mul     s9,s1,s4
              #                    free s1
              #                    free s4
    add     s7,s7,s9
              #                    free s9
    slli s7,s7,2
    add     s7,s7,sp
              #                    occupy s10 with 868568_0
    li      s10, 868568
    li      s10, 868568
    add     s7,s10,s7
              #                    free s10
              #                    free s7
              #                          new_var temp_24_array_ele_38:i32 
              #                          temp_24_array_ele_38 = load temp_23_array_ptr_38:ptr->i32 
              #                    occupy s7 with temp_23_array_ptr_38
              #                    occupy s11 with temp_24_array_ele_38
    lw      s11,0(s7)
              #                    free s11
              #                    free s7
              #                          new_var temp_25_arithop_38:i32 
              #                          temp_25_arithop_38 = Sub i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s3 with temp_25_arithop_38
              #                    regtab:    a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Occupied { symidx: j_18, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: 868568_0, tracked: false } |     s11:Freed { symidx: temp_24_array_ele_38, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s3:Occupied { symidx: temp_25_arithop_38, tracked: true, occupy_count: 1 } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: *t_0, tracked: false } |     s6:Freed { symidx: temp_22_ptr2globl_38, tracked: true } |     s7:Freed { symidx: temp_23_array_ptr_38, tracked: true } |     s8:Freed { symidx: _anonymous_of_temp_22_ptr2globl_38_0, tracked: false } |     s9:Freed { symidx: _anonymous_of_temp_22_ptr2globl_38_0, tracked: false } | 


    sub     s3,a6,s1
              #                    free a6
              #                    free s1
              #                    free s3
              #                          new_var temp_26_arithop_38:i32 
              #                          temp_26_arithop_38 = Sub i32 i_18, 1_0 
              #                    occupy a2 with i_18
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s5 with temp_26_arithop_38
              #                    regtab:    a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: 868568_0, tracked: false } |     s11:Freed { symidx: temp_24_array_ele_38, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s3:Freed { symidx: temp_25_arithop_38, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Occupied { symidx: temp_26_arithop_38, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: temp_22_ptr2globl_38, tracked: true } |     s7:Freed { symidx: temp_23_array_ptr_38, tracked: true } |     s8:Freed { symidx: _anonymous_of_temp_22_ptr2globl_38_0, tracked: false } |     s9:Freed { symidx: _anonymous_of_temp_22_ptr2globl_38_0, tracked: false } | 


    sub     s5,a2,s1
              #                    free a2
              #                    free s1
              #                    free s5
              #                          new_var temp_27_ptr2globl_38:Array:i32:[Some(1005_0), Some(35_0)] 
              #                          temp_27_ptr2globl_38 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
              #                    occupy s1 with *dp_0
              #                       load label dp as ptr to reg
    la      s1, dp
              #                    occupy reg s1 with *dp_0
              #                    occupy s8 with temp_27_ptr2globl_38
    lw      s8,0(s1)
              #                    free s8
              #                    free s1
              #                          new_var temp_28_array_ptr_38:ptr->i32 
              #                          temp_28_array_ptr_38 = getelementptr temp_27_ptr2globl_38:Array:i32:[Some(1005_0), Some(35_0)] [Some(temp_26_arithop_38), Some(temp_25_arithop_38)] 
              #                    occupy s1 with temp_28_array_ptr_38
    li      s1, 0
              #                    occupy s9 with 35_0
    li      s9, 35
              #                    occupy s5 with temp_26_arithop_38
              #                    occupy s10 with _anonymous_of_temp_27_ptr2globl_38_0
    mul     s10,s9,s5
              #                    free s9
              #                    free s5
    add     s1,s1,s10
              #                    free s10
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s3 with temp_25_arithop_38
              #                    occupy s10 with _anonymous_of_temp_27_ptr2globl_38_0
    mul     s10,s9,s3
              #                    free s9
              #                    free s3
    add     s1,s1,s10
              #                    free s10
    slli s1,s1,2
    add     s1,s1,sp
              #                    occupy s9 with 727848_0
    li      s9, 727848
    li      s9, 727848
    add     s1,s9,s1
              #                    free s9
              #                    free s1
              #                          new_var temp_29_array_ele_38:i32 
              #                          temp_29_array_ele_38 = load temp_28_array_ptr_38:ptr->i32 
              #                    occupy s1 with temp_28_array_ptr_38
              #                    occupy s9 with temp_29_array_ele_38
    lw      s9,0(s1)
              #                    free s9
              #                    free s1
              #                          new_var temp_30_arithop_38:i32 
              #                          temp_30_arithop_38 = Add i32 temp_29_array_ele_38, temp_24_array_ele_38 
              #                    occupy s9 with temp_29_array_ele_38
              #                    occupy s11 with temp_24_array_ele_38
              #                    occupy s10 with temp_30_arithop_38
    add     s10,s9,s11
              #                    free s9
              #                    free s11
              #                    free s10
              #                          new_var temp_31_arithop_38:i32 
              #                          temp_31_arithop_38 = Add i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    store to temp_3_ret_of_getint_18 in mem offset_illegal
              #                    occupy a0 with 1025428_0
    li      a0, 1025428
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_3_ret_of_getint_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to W_18 in mem offset_illegal
              #                    occupy a1 with 1025448_0
    li      a1, 1025448
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with W_18
              #                    occupy a1 with temp_31_arithop_38
    add     a1,a6,a0
              #                    free a6
              #                    free a0
              #                    free a1
              #                          new_var temp_32_arithop_38:i32 
              #                          temp_32_arithop_38 = Mod i32 temp_31_arithop_38, 2_0 
              #                    occupy a1 with temp_31_arithop_38
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    store to i_18 in mem offset_illegal
              #                    occupy a2 with 1025440_0
    li      a2, 1025440
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_18
              #                    occupy a2 with temp_32_arithop_38
              #                    load from temp_32_arithop_38 in mem

              #                    occupy a2 with temp_32_arithop_38
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
    rem     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_33_ptr2globl_38:Array:i32:[Some(1005_0), Some(2_0)] 
              #                          temp_33_ptr2globl_38 = load *t_0:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with *t_0
              #                       load label t as ptr to reg
    la      a0, t
              #                    occupy reg a0 with *t_0
              #                    store to temp_31_arithop_38 in mem offset_illegal
              #                    occupy a1 with 727828_0
    li      a1, 727828
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_31_arithop_38
              #                    occupy a1 with temp_33_ptr2globl_38
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_34_array_ptr_38:ptr->i32 
              #                          temp_34_array_ptr_38 = getelementptr temp_33_ptr2globl_38:Array:i32:[Some(1005_0), Some(2_0)] [Some(i_18), Some(temp_32_arithop_38)] 
              #                    occupy a0 with temp_34_array_ptr_38
    li      a0, 0
              #                    store to temp_33_ptr2globl_38 in mem offset_illegal
              #                    occupy a1 with 719784_0
    li      a1, 719784
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_33_ptr2globl_38
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    store to temp_32_arithop_38 in mem offset_illegal
              #                    occupy a2 with 727824_0
    li      a2, 727824
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_32_arithop_38
              #                    occupy a2 with i_18
              #                    load from i_18 in mem

              #                    occupy a2 with i_18
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to T_18 in mem offset_illegal
              #                    occupy a3 with 1025452_0
    li      a3, 1025452
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with T_18
              #                    occupy a3 with _anonymous_of_temp_33_ptr2globl_38_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_32_arithop_38
              #                    load from temp_32_arithop_38 in mem

              #                    occupy a3 with temp_32_arithop_38
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to i_18 in mem offset_illegal
              #                    occupy a2 with 1025440_0
    li      a2, 1025440
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_18
              #                    occupy a2 with _anonymous_of_temp_33_ptr2globl_38_0
    mul     a2,a1,a3
              #                    free a1
              #                    free a3
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 719784_0
    li      a1, 719784
    li      a1, 719784
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_35_array_ele_38:i32 
              #                          temp_35_array_ele_38 = load temp_34_array_ptr_38:ptr->i32 
              #                    occupy a0 with temp_34_array_ptr_38
              #                    occupy a1 with temp_35_array_ele_38
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_36_arithop_38:i32 
              #                          temp_36_arithop_38 = Sub i32 i_18, 1_0 
              #                    occupy a2 with i_18
              #                    load from i_18 in mem

              #                    occupy a2 with i_18
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_34_array_ptr_38 in mem offset_illegal
              #                    occupy a0 with 719776_0
    li      a0, 719776
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_34_array_ptr_38
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_35_array_ele_38 in mem offset_illegal
              #                    occupy a1 with 719772_0
    li      a1, 719772
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_35_array_ele_38
              #                    occupy a1 with temp_36_arithop_38
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_36_arithop_38, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_32_arithop_38, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_30_arithop_38, tracked: true } |     s11:Freed { symidx: temp_24_array_ele_38, tracked: true } |     s1:Freed { symidx: temp_28_array_ptr_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s3:Freed { symidx: temp_25_arithop_38, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_26_arithop_38, tracked: true } |     s6:Freed { symidx: temp_22_ptr2globl_38, tracked: true } |     s7:Freed { symidx: temp_23_array_ptr_38, tracked: true } |     s8:Freed { symidx: temp_27_ptr2globl_38, tracked: true } |     s9:Freed { symidx: temp_29_array_ele_38, tracked: true } | 


    sub     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_37_ptr2globl_38:Array:i32:[Some(1005_0), Some(35_0)] 
              #                          temp_37_ptr2globl_38 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
              #                    occupy a0 with *dp_0
              #                       load label dp as ptr to reg
    la      a0, dp
              #                    occupy reg a0 with *dp_0
              #                    store to temp_36_arithop_38 in mem offset_illegal
              #                    occupy a1 with 719768_0
    li      a1, 719768
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_36_arithop_38
              #                    occupy a1 with temp_37_ptr2globl_38
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_38_array_ptr_38:ptr->i32 
              #                          temp_38_array_ptr_38 = getelementptr temp_37_ptr2globl_38:Array:i32:[Some(1005_0), Some(35_0)] [Some(temp_36_arithop_38), Some(j_18)] 
              #                    occupy a0 with temp_38_array_ptr_38
    li      a0, 0
              #                    store to temp_37_ptr2globl_38 in mem offset_illegal
              #                    occupy a1 with 579068_0
    li      a1, 579068
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_37_ptr2globl_38
              #                    occupy a1 with 35_0
    li      a1, 35
              #                    store to i_18 in mem offset_illegal
              #                    occupy a2 with 1025440_0
    li      a2, 1025440
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_18
              #                    occupy a2 with temp_36_arithop_38
              #                    load from temp_36_arithop_38 in mem

              #                    occupy a2 with temp_36_arithop_38
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_32_arithop_38 in mem offset_illegal
              #                    occupy a3 with 727824_0
    li      a3, 727824
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_32_arithop_38
              #                    occupy a3 with _anonymous_of_temp_37_ptr2globl_38_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a6 with j_18
              #                    occupy a3 with _anonymous_of_temp_37_ptr2globl_38_0
    mul     a3,a1,a6
              #                    free a1
              #                    free a6
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 579068_0
    li      a1, 579068
    li      a1, 579068
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_39_array_ele_38:i32 
              #                          temp_39_array_ele_38 = load temp_38_array_ptr_38:ptr->i32 
              #                    occupy a0 with temp_38_array_ptr_38
              #                    occupy a1 with temp_39_array_ele_38
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_40_arithop_38:i32 
              #                          temp_40_arithop_38 = Add i32 temp_39_array_ele_38, temp_35_array_ele_38 
              #                    occupy a1 with temp_39_array_ele_38
              #                    occupy a3 with temp_35_array_ele_38
              #                    load from temp_35_array_ele_38 in mem

              #                    occupy a3 with temp_35_array_ele_38
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to temp_38_array_ptr_38 in mem offset_illegal
              #                    occupy a0 with 579056_0
    li      a0, 579056
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_38_array_ptr_38
              #                    occupy a0 with temp_40_arithop_38
    add     a0,a1,a3
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_41_cmp_38:i1 
              #                          temp_41_cmp_38 = icmp i32 Sgt temp_40_arithop_38, temp_30_arithop_38 
              #                    occupy a0 with temp_40_arithop_38
              #                    occupy s10 with temp_30_arithop_38
              #                    store to temp_39_array_ele_38 in mem offset_illegal
              #                    occupy a1 with 579052_0
    li      a1, 579052
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_39_array_ele_38
              #                    occupy a1 with temp_41_cmp_38
    slt     a1,s10,a0
              #                    free a0
              #                    free s10
              #                    free a1
              #                          br i1 temp_41_cmp_38, label branch_true_39, label branch_false_39 
              #                    occupy a1 with temp_41_cmp_38
              #                    free a1
              #                    store to temp_25_arithop_38 in mem offset_illegal
              #                    occupy s3 with 868552_0
    li      s3, 868552
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_25_arithop_38
              #                    occupy a1 with temp_41_cmp_38
    bnez    a1, .branch_true_39
              #                    free a1
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: temp_40_arithop_38, tracked: true } |     a1:Freed { symidx: temp_41_cmp_38, tracked: true } |     a2:Freed { symidx: temp_36_arithop_38, tracked: true } |     a3:Freed { symidx: temp_35_array_ele_38, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_30_arithop_38, tracked: true } |     s11:Freed { symidx: temp_24_array_ele_38, tracked: true } |     s1:Freed { symidx: temp_28_array_ptr_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_26_arithop_38, tracked: true } |     s6:Freed { symidx: temp_22_ptr2globl_38, tracked: true } |     s7:Freed { symidx: temp_23_array_ptr_38, tracked: true } |     s8:Freed { symidx: temp_27_ptr2globl_38, tracked: true } |     s9:Freed { symidx: temp_29_array_ele_38, tracked: true } | 
              #                          label branch_true_39: 
.branch_true_39:
              #                          new_var temp_42_index_ptr_40:ptr->i32 
              #                          temp_42_index_ptr_40 = getelementptr dp_0:Array:i32:[Some(1005_0), Some(35_0)] [Some(i_18), Some(j_18)] 
              #                    occupy s3 with temp_42_index_ptr_40
    li      s3, 0
              #                    store to temp_40_arithop_38 in mem offset_illegal
              #                    occupy a0 with 579048_0
    li      a0, 579048
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_40_arithop_38
              #                    occupy a0 with 35_0
    li      a0, 35
              #                    store to temp_41_cmp_38 in mem offset_illegal
              #                    occupy a1 with 579047_0
    li      a1, 579047
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_41_cmp_38
              #                    occupy a1 with i_18
              #                    load from i_18 in mem

              #                    occupy a1 with i_18
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_36_arithop_38 in mem offset_illegal
              #                    occupy a2 with 719768_0
    li      a2, 719768
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_36_arithop_38
              #                    occupy a2 with _anonymous_of_dp_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s3,s3,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a6 with j_18
              #                    occupy a2 with _anonymous_of_dp_0_0
    mul     a2,a0,a6
              #                    free a0
              #                    free a6
    add     s3,s3,a2
              #                    free a2
    slli s3,s3,2
              #                    occupy a0 with _anonymous_of_dp_0_0
    la      a0, dp
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          new_var temp_43_arithop_40:i32 
              #                          temp_43_arithop_40 = Add i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_43_arithop_40
    add     a2,a6,a0
              #                    free a6
              #                    free a0
              #                    free a2
              #                          new_var temp_44_arithop_40:i32 
              #                          temp_44_arithop_40 = Mod i32 temp_43_arithop_40, 2_0 
              #                    occupy a2 with temp_43_arithop_40
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    store to i_18 in mem offset_illegal
              #                    occupy a1 with 1025440_0
    li      a1, 1025440
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with i_18
              #                    occupy a1 with temp_44_arithop_40
              #                    load from temp_44_arithop_40 in mem

              #                    occupy a1 with temp_44_arithop_40
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
    rem     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_45_ptr2globl_40:Array:i32:[Some(1005_0), Some(2_0)] 
              #                          temp_45_ptr2globl_40 = load *t_0:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with *t_0
              #                       load label t as ptr to reg
    la      a0, t
              #                    occupy reg a0 with *t_0
              #                    store to temp_44_arithop_40 in mem offset_illegal
              #                    occupy a1 with 579024_0
    li      a1, 579024
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_44_arithop_40
              #                    occupy a1 with temp_45_ptr2globl_40
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_46_array_ptr_40:ptr->i32 
              #                          temp_46_array_ptr_40 = getelementptr temp_45_ptr2globl_40:Array:i32:[Some(1005_0), Some(2_0)] [Some(i_18), Some(temp_44_arithop_40)] 
              #                    occupy a0 with temp_46_array_ptr_40
    li      a0, 0
              #                    store to temp_45_ptr2globl_40 in mem offset_illegal
              #                    occupy a1 with 570984_0
    li      a1, 570984
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_45_ptr2globl_40
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    store to temp_43_arithop_40 in mem offset_illegal
              #                    occupy a2 with 579028_0
    li      a2, 579028
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_43_arithop_40
              #                    occupy a2 with i_18
              #                    load from i_18 in mem

              #                    occupy a2 with i_18
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_35_array_ele_38 in mem offset_illegal
              #                    occupy a3 with 719772_0
    li      a3, 719772
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_35_array_ele_38
              #                    occupy a3 with _anonymous_of_temp_45_ptr2globl_40_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_44_arithop_40
              #                    load from temp_44_arithop_40 in mem

              #                    occupy a3 with temp_44_arithop_40
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to i_18 in mem offset_illegal
              #                    occupy a2 with 1025440_0
    li      a2, 1025440
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_18
              #                    occupy a2 with _anonymous_of_temp_45_ptr2globl_40_0
    mul     a2,a1,a3
              #                    free a1
              #                    free a3
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 570984_0
    li      a1, 570984
    li      a1, 570984
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_47_array_ele_40:i32 
              #                          temp_47_array_ele_40 = load temp_46_array_ptr_40:ptr->i32 
              #                    occupy a0 with temp_46_array_ptr_40
              #                    occupy a1 with temp_47_array_ele_40
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_48_arithop_40:i32 
              #                          temp_48_arithop_40 = Sub i32 i_18, 1_0 
              #                    occupy a2 with i_18
              #                    load from i_18 in mem

              #                    occupy a2 with i_18
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_46_array_ptr_40 in mem offset_illegal
              #                    occupy a0 with 570976_0
    li      a0, 570976
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_46_array_ptr_40
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_47_array_ele_40 in mem offset_illegal
              #                    occupy a1 with 570972_0
    li      a1, 570972
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_47_array_ele_40
              #                    occupy a1 with temp_48_arithop_40
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_48_arithop_40, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_44_arithop_40, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_30_arithop_38, tracked: true } |     s11:Freed { symidx: temp_24_array_ele_38, tracked: true } |     s1:Freed { symidx: temp_28_array_ptr_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s3:Freed { symidx: temp_42_index_ptr_40, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_26_arithop_38, tracked: true } |     s6:Freed { symidx: temp_22_ptr2globl_38, tracked: true } |     s7:Freed { symidx: temp_23_array_ptr_38, tracked: true } |     s8:Freed { symidx: temp_27_ptr2globl_38, tracked: true } |     s9:Freed { symidx: temp_29_array_ele_38, tracked: true } | 


    sub     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_49_ptr2globl_40:Array:i32:[Some(1005_0), Some(35_0)] 
              #                          temp_49_ptr2globl_40 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
              #                    occupy a0 with *dp_0
              #                       load label dp as ptr to reg
    la      a0, dp
              #                    occupy reg a0 with *dp_0
              #                    store to temp_48_arithop_40 in mem offset_illegal
              #                    occupy a1 with 570968_0
    li      a1, 570968
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_48_arithop_40
              #                    occupy a1 with temp_49_ptr2globl_40
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_50_array_ptr_40:ptr->i32 
              #                          temp_50_array_ptr_40 = getelementptr temp_49_ptr2globl_40:Array:i32:[Some(1005_0), Some(35_0)] [Some(temp_48_arithop_40), Some(j_18)] 
              #                    occupy a0 with temp_50_array_ptr_40
    li      a0, 0
              #                    store to temp_49_ptr2globl_40 in mem offset_illegal
              #                    occupy a1 with 430268_0
    li      a1, 430268
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_49_ptr2globl_40
              #                    occupy a1 with 35_0
    li      a1, 35
              #                    store to i_18 in mem offset_illegal
              #                    occupy a2 with 1025440_0
    li      a2, 1025440
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_18
              #                    occupy a2 with temp_48_arithop_40
              #                    load from temp_48_arithop_40 in mem

              #                    occupy a2 with temp_48_arithop_40
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_44_arithop_40 in mem offset_illegal
              #                    occupy a3 with 579024_0
    li      a3, 579024
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_44_arithop_40
              #                    occupy a3 with _anonymous_of_temp_49_ptr2globl_40_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a6 with j_18
              #                    occupy a3 with _anonymous_of_temp_49_ptr2globl_40_0
    mul     a3,a1,a6
              #                    free a1
              #                    free a6
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 430268_0
    li      a1, 430268
    li      a1, 430268
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_51_array_ele_40:i32 
              #                          temp_51_array_ele_40 = load temp_50_array_ptr_40:ptr->i32 
              #                    occupy a0 with temp_50_array_ptr_40
              #                    occupy a1 with temp_51_array_ele_40
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_52_arithop_40:i32 
              #                          temp_52_arithop_40 = Add i32 temp_51_array_ele_40, temp_47_array_ele_40 
              #                    occupy a1 with temp_51_array_ele_40
              #                    occupy a3 with temp_47_array_ele_40
              #                    load from temp_47_array_ele_40 in mem

              #                    occupy a3 with temp_47_array_ele_40
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to temp_50_array_ptr_40 in mem offset_illegal
              #                    occupy a0 with 430256_0
    li      a0, 430256
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_50_array_ptr_40
              #                    occupy a0 with temp_52_arithop_40
    add     a0,a1,a3
              #                    free a1
              #                    free a3
              #                    free a0
              #                          store temp_52_arithop_40:i32 temp_42_index_ptr_40:ptr->i32 
              #                    occupy s3 with temp_42_index_ptr_40
              #                    occupy a0 with temp_52_arithop_40
    sw      a0,0(s3)
              #                    free a0
              #                    free s3
              #                          mu dp_0:224 
              #                          dp_0 = chi dp_0:224 
              #                          jump label: L1_0 
              #                    store to temp_42_index_ptr_40 in mem offset_illegal
              #                    occupy s3 with 579032_0
    li      s3, 579032
    add     s3,sp,s3
    sd      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_42_index_ptr_40
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_40_arithop_38, tracked: true } |     a1:Freed { symidx: temp_41_cmp_38, tracked: true } |     a2:Freed { symidx: temp_36_arithop_38, tracked: true } |     a3:Freed { symidx: temp_35_array_ele_38, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_30_arithop_38, tracked: true } |     s11:Freed { symidx: temp_24_array_ele_38, tracked: true } |     s1:Freed { symidx: temp_28_array_ptr_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_26_arithop_38, tracked: true } |     s6:Freed { symidx: temp_22_ptr2globl_38, tracked: true } |     s7:Freed { symidx: temp_23_array_ptr_38, tracked: true } |     s8:Freed { symidx: temp_27_ptr2globl_38, tracked: true } |     s9:Freed { symidx: temp_29_array_ele_38, tracked: true } | 
              #                          label branch_false_39: 
.branch_false_39:
              #                          new_var temp_54_index_ptr_42:ptr->i32 
              #                          temp_54_index_ptr_42 = getelementptr dp_0:Array:i32:[Some(1005_0), Some(35_0)] [Some(i_18), Some(j_18)] 
              #                    occupy s3 with temp_54_index_ptr_42
    li      s3, 0
              #                    store to temp_40_arithop_38 in mem offset_illegal
              #                    occupy a0 with 579048_0
    li      a0, 579048
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_40_arithop_38
              #                    occupy a0 with 35_0
    li      a0, 35
              #                    store to temp_41_cmp_38 in mem offset_illegal
              #                    occupy a1 with 579047_0
    li      a1, 579047
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_41_cmp_38
              #                    occupy a1 with i_18
              #                    load from i_18 in mem

              #                    occupy a1 with i_18
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_36_arithop_38 in mem offset_illegal
              #                    occupy a2 with 719768_0
    li      a2, 719768
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_36_arithop_38
              #                    occupy a2 with _anonymous_of_dp_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s3,s3,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a6 with j_18
              #                    occupy a2 with _anonymous_of_dp_0_0
    mul     a2,a0,a6
              #                    free a0
              #                    free a6
    add     s3,s3,a2
              #                    free a2
    slli s3,s3,2
              #                    occupy a0 with _anonymous_of_dp_0_0
    la      a0, dp
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          new_var temp_55_arithop_42:i32 
              #                          temp_55_arithop_42 = Add i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_55_arithop_42
    add     a2,a6,a0
              #                    free a6
              #                    free a0
              #                    free a2
              #                          new_var temp_56_arithop_42:i32 
              #                          temp_56_arithop_42 = Mod i32 temp_55_arithop_42, 2_0 
              #                    occupy a2 with temp_55_arithop_42
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    store to i_18 in mem offset_illegal
              #                    occupy a1 with 1025440_0
    li      a1, 1025440
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with i_18
              #                    occupy a1 with temp_56_arithop_42
              #                    load from temp_56_arithop_42 in mem

              #                    occupy a1 with temp_56_arithop_42
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
    rem     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_57_ptr2globl_42:Array:i32:[Some(1005_0), Some(2_0)] 
              #                          temp_57_ptr2globl_42 = load *t_0:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with *t_0
              #                       load label t as ptr to reg
    la      a0, t
              #                    occupy reg a0 with *t_0
              #                    store to temp_56_arithop_42 in mem offset_illegal
              #                    occupy a1 with 430224_0
    li      a1, 430224
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_56_arithop_42
              #                    occupy a1 with temp_57_ptr2globl_42
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_58_array_ptr_42:ptr->i32 
              #                          temp_58_array_ptr_42 = getelementptr temp_57_ptr2globl_42:Array:i32:[Some(1005_0), Some(2_0)] [Some(i_18), Some(temp_56_arithop_42)] 
              #                    occupy a0 with temp_58_array_ptr_42
    li      a0, 0
              #                    store to temp_57_ptr2globl_42 in mem offset_illegal
              #                    occupy a1 with 422184_0
    li      a1, 422184
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_57_ptr2globl_42
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    store to temp_55_arithop_42 in mem offset_illegal
              #                    occupy a2 with 430228_0
    li      a2, 430228
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_55_arithop_42
              #                    occupy a2 with i_18
              #                    load from i_18 in mem

              #                    occupy a2 with i_18
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_35_array_ele_38 in mem offset_illegal
              #                    occupy a3 with 719772_0
    li      a3, 719772
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_35_array_ele_38
              #                    occupy a3 with _anonymous_of_temp_57_ptr2globl_42_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_56_arithop_42
              #                    load from temp_56_arithop_42 in mem

              #                    occupy a3 with temp_56_arithop_42
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to i_18 in mem offset_illegal
              #                    occupy a2 with 1025440_0
    li      a2, 1025440
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_18
              #                    occupy a2 with _anonymous_of_temp_57_ptr2globl_42_0
    mul     a2,a1,a3
              #                    free a1
              #                    free a3
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 422184_0
    li      a1, 422184
    li      a1, 422184
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_59_array_ele_42:i32 
              #                          temp_59_array_ele_42 = load temp_58_array_ptr_42:ptr->i32 
              #                    occupy a0 with temp_58_array_ptr_42
              #                    occupy a1 with temp_59_array_ele_42
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_60_arithop_42:i32 
              #                          temp_60_arithop_42 = Sub i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    store to temp_58_array_ptr_42 in mem offset_illegal
              #                    occupy a0 with 422176_0
    li      a0, 422176
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_58_array_ptr_42
              #                    occupy a0 with temp_60_arithop_42
              #                    regtab:    a0:Occupied { symidx: temp_60_arithop_42, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_59_array_ele_42, tracked: true } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: temp_56_arithop_42, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Occupied { symidx: j_18, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_30_arithop_38, tracked: true } |     s11:Freed { symidx: temp_24_array_ele_38, tracked: true } |     s1:Freed { symidx: temp_28_array_ptr_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s3:Freed { symidx: temp_54_index_ptr_42, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_26_arithop_38, tracked: true } |     s6:Freed { symidx: temp_22_ptr2globl_38, tracked: true } |     s7:Freed { symidx: temp_23_array_ptr_38, tracked: true } |     s8:Freed { symidx: temp_27_ptr2globl_38, tracked: true } |     s9:Freed { symidx: temp_29_array_ele_38, tracked: true } | 


    sub     a0,a6,a2
              #                    free a6
              #                    free a2
              #                    free a0
              #                          new_var temp_61_arithop_42:i32 
              #                          temp_61_arithop_42 = Sub i32 i_18, 1_0 
              #                    occupy a2 with i_18
              #                    load from i_18 in mem

              #                    occupy a2 with i_18
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_60_arithop_42 in mem offset_illegal
              #                    occupy a0 with 422168_0
    li      a0, 422168
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_60_arithop_42
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_59_array_ele_42 in mem offset_illegal
              #                    occupy a1 with 422172_0
    li      a1, 422172
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_59_array_ele_42
              #                    occupy a1 with temp_61_arithop_42
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_61_arithop_42, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_56_arithop_42, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_30_arithop_38, tracked: true } |     s11:Freed { symidx: temp_24_array_ele_38, tracked: true } |     s1:Freed { symidx: temp_28_array_ptr_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s3:Freed { symidx: temp_54_index_ptr_42, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_26_arithop_38, tracked: true } |     s6:Freed { symidx: temp_22_ptr2globl_38, tracked: true } |     s7:Freed { symidx: temp_23_array_ptr_38, tracked: true } |     s8:Freed { symidx: temp_27_ptr2globl_38, tracked: true } |     s9:Freed { symidx: temp_29_array_ele_38, tracked: true } | 


    sub     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_62_ptr2globl_42:Array:i32:[Some(1005_0), Some(35_0)] 
              #                          temp_62_ptr2globl_42 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
              #                    occupy a0 with *dp_0
              #                       load label dp as ptr to reg
    la      a0, dp
              #                    occupy reg a0 with *dp_0
              #                    store to temp_61_arithop_42 in mem offset_illegal
              #                    occupy a1 with 422164_0
    li      a1, 422164
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_61_arithop_42
              #                    occupy a1 with temp_62_ptr2globl_42
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_63_array_ptr_42:ptr->i32 
              #                          temp_63_array_ptr_42 = getelementptr temp_62_ptr2globl_42:Array:i32:[Some(1005_0), Some(35_0)] [Some(temp_61_arithop_42), Some(temp_60_arithop_42)] 
              #                    occupy a0 with temp_63_array_ptr_42
    li      a0, 0
              #                    store to temp_62_ptr2globl_42 in mem offset_illegal
              #                    occupy a1 with 281464_0
    li      a1, 281464
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_62_ptr2globl_42
              #                    occupy a1 with 35_0
    li      a1, 35
              #                    store to i_18 in mem offset_illegal
              #                    occupy a2 with 1025440_0
    li      a2, 1025440
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_18
              #                    occupy a2 with temp_61_arithop_42
              #                    load from temp_61_arithop_42 in mem

              #                    occupy a2 with temp_61_arithop_42
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_56_arithop_42 in mem offset_illegal
              #                    occupy a3 with 430224_0
    li      a3, 430224
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_56_arithop_42
              #                    occupy a3 with _anonymous_of_temp_62_ptr2globl_42_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_60_arithop_42
              #                    load from temp_60_arithop_42 in mem

              #                    occupy a3 with temp_60_arithop_42
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to temp_61_arithop_42 in mem offset_illegal
              #                    occupy a2 with 422164_0
    li      a2, 422164
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_61_arithop_42
              #                    occupy a2 with _anonymous_of_temp_62_ptr2globl_42_0
    mul     a2,a1,a3
              #                    free a1
              #                    free a3
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 281464_0
    li      a1, 281464
    li      a1, 281464
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_64_array_ele_42:i32 
              #                          temp_64_array_ele_42 = load temp_63_array_ptr_42:ptr->i32 
              #                    occupy a0 with temp_63_array_ptr_42
              #                    occupy a1 with temp_64_array_ele_42
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_65_arithop_42:i32 
              #                          temp_65_arithop_42 = Add i32 temp_64_array_ele_42, temp_59_array_ele_42 
              #                    occupy a1 with temp_64_array_ele_42
              #                    occupy a2 with temp_59_array_ele_42
              #                    load from temp_59_array_ele_42 in mem

              #                    occupy a2 with temp_59_array_ele_42
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_63_array_ptr_42 in mem offset_illegal
              #                    occupy a0 with 281456_0
    li      a0, 281456
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_63_array_ptr_42
              #                    occupy a0 with temp_65_arithop_42
    add     a0,a1,a2
              #                    free a1
              #                    free a2
              #                    free a0
              #                          store temp_65_arithop_42:i32 temp_54_index_ptr_42:ptr->i32 
              #                    occupy s3 with temp_54_index_ptr_42
              #                    occupy a0 with temp_65_arithop_42
    sw      a0,0(s3)
              #                    free a0
              #                    free s3
              #                          mu dp_0:267 
              #                          dp_0 = chi dp_0:267 
              #                          jump label: L1_0 
              #                    store to temp_54_index_ptr_42 in mem offset_illegal
              #                    occupy s3 with 430232_0
    li      s3, 430232
    add     s3,sp,s3
    sd      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_54_index_ptr_42
              #                    store to temp_64_array_ele_42 in mem offset_illegal
              #                    occupy a1 with 281452_0
    li      a1, 281452
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_64_array_ele_42
              #                    store to temp_59_array_ele_42 in mem offset_illegal
              #                    occupy a1 with 422172_0
    li      a1, 422172
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_59_array_ele_42
              #                    store to temp_60_arithop_42 in mem offset_illegal
              #                    occupy a2 with 422168_0
    li      a2, 422168
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_60_arithop_42
              #                    store to temp_65_arithop_42 in mem offset_illegal
              #                    occupy a0 with 281448_0
    li      a0, 281448
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_65_arithop_42
              #                    occupy a1 with _anonymous_of_temp_51_array_ele_40_0
              #                    load from temp_51_array_ele_40 in mem

              #                    occupy a0 with temp_51_array_ele_40
    li      a0, 430252
    add     a0,sp,a0
    lw      a1,0(a0)
              #                    free a0
              #                    occupy a2 with _anonymous_of_temp_48_arithop_40_0
              #                    load from temp_48_arithop_40 in mem

              #                    occupy a3 with temp_48_arithop_40
    li      a3, 570968
    add     a3,sp,a3
    lw      a2,0(a3)
              #                    free a3
              #                    store to temp_48_arithop_40 in mem offset_illegal
              #                    occupy a3 with 570968_0
    li      a3, 570968
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_48_arithop_40
              #                    occupy a3 with _anonymous_of_temp_47_array_ele_40_0
              #                    load from temp_47_array_ele_40 in mem

              #                    occupy s3 with temp_47_array_ele_40
    li      s3, 570972
    add     s3,sp,s3
    lw      a3,0(s3)
              #                    free s3
              #                    store to temp_51_array_ele_40 in mem offset_illegal
              #                    occupy a0 with 430252_0
    li      a0, 430252
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_51_array_ele_40
              #                    occupy a0 with _anonymous_of_temp_52_arithop_40_0
              #                    load from temp_52_arithop_40 in mem

              #                    store to temp_4_cmp_23 in mem offset_illegal
              #                    occupy a4 with 1025427_0
    li      a4, 1025427
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_4_cmp_23
              #                    occupy a4 with temp_52_arithop_40
    li      a4, 430248
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_52_arithop_40, tracked: true } |     a1:Freed { symidx: temp_51_array_ele_40, tracked: true } |     a2:Freed { symidx: temp_48_arithop_40, tracked: true } |     a3:Freed { symidx: temp_47_array_ele_40, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_30_arithop_38, tracked: true } |     s11:Freed { symidx: temp_24_array_ele_38, tracked: true } |     s1:Freed { symidx: temp_28_array_ptr_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_26_arithop_38, tracked: true } |     s6:Freed { symidx: temp_22_ptr2globl_38, tracked: true } |     s7:Freed { symidx: temp_23_array_ptr_38, tracked: true } |     s8:Freed { symidx: temp_27_ptr2globl_38, tracked: true } |     s9:Freed { symidx: temp_29_array_ele_38, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                    regtab     a0:Freed { symidx: temp_52_arithop_40, tracked: true } |     a1:Freed { symidx: temp_51_array_ele_40, tracked: true } |     a2:Freed { symidx: temp_48_arithop_40, tracked: true } |     a3:Freed { symidx: temp_47_array_ele_40, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_30_arithop_38, tracked: true } |     s11:Freed { symidx: temp_24_array_ele_38, tracked: true } |     s1:Freed { symidx: temp_28_array_ptr_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_26_arithop_38, tracked: true } |     s6:Freed { symidx: temp_22_ptr2globl_38, tracked: true } |     s7:Freed { symidx: temp_23_array_ptr_38, tracked: true } |     s8:Freed { symidx: temp_27_ptr2globl_38, tracked: true } |     s9:Freed { symidx: temp_29_array_ele_38, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_53_arithop_37:i32 
              #                          temp_53_arithop_37 = Add i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    store to temp_52_arithop_40 in mem offset_illegal
              #                    occupy a0 with 430248_0
    li      a0, 430248
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_52_arithop_40
              #                    occupy a0 with temp_53_arithop_37
    add     a0,a6,s3
              #                    free a6
              #                    free s3
              #                    free a0
              #                          j_18 = i32 temp_53_arithop_37 
              #                    occupy a0 with temp_53_arithop_37
              #                    occupy a6 with j_18
    mv      a6, a0
              #                    free a0
              #                    free a6
              #                          jump label: while.head_36 
              #                    store to temp_23_array_ptr_38 in mem offset_illegal
              #                    occupy s3 with 868560_0
    li      s3, 868560
    add     s3,sp,s3
    sd      s7,0(s3)
              #                    free s3
              #                    release s7 with temp_23_array_ptr_38
              #                    store to temp_21_arithop_38 in mem offset_illegal
              #                    occupy s4 with 876608_0
    li      s4, 876608
    add     s4,sp,s4
    sw      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_21_arithop_38
              #                    store to temp_19_cmp_35 in mem offset_illegal
              #                    occupy a7 with 876618_0
    li      a7, 876618
    add     a7,sp,a7
    sb      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_19_cmp_35
              #                    store to temp_30_arithop_38 in mem offset_illegal
              #                    occupy a7 with 727832_0
    li      a7, 727832
    add     a7,sp,a7
    sw      s10,0(a7)
              #                    free a7
              #                    release s10 with temp_30_arithop_38
              #                    store to temp_24_array_ele_38 in mem offset_illegal
              #                    occupy s4 with 868556_0
    li      s4, 868556
    add     s4,sp,s4
    sw      s11,0(s4)
              #                    free s4
              #                    release s11 with temp_24_array_ele_38
              #                    store to temp_26_arithop_38 in mem offset_illegal
              #                    occupy s5 with 868548_0
    li      s5, 868548
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_26_arithop_38
              #                    store to temp_51_array_ele_40 in mem offset_illegal
              #                    occupy a1 with 430252_0
    li      a1, 430252
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_51_array_ele_40
              #                    store to temp_20_arithop_38 in mem offset_illegal
              #                    occupy a1 with 876612_0
    li      a1, 876612
    add     a1,sp,a1
    sw      s2,0(a1)
              #                    free a1
              #                    release s2 with temp_20_arithop_38
              #                    store to temp_48_arithop_40 in mem offset_illegal
              #                    occupy a2 with 570968_0
    li      a2, 570968
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_48_arithop_40
              #                    store to temp_28_array_ptr_38 in mem offset_illegal
              #                    occupy a2 with 727840_0
    li      a2, 727840
    add     a2,sp,a2
    sd      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_28_array_ptr_38
              #                    store to temp_27_ptr2globl_38 in mem offset_illegal
              #                    occupy s1 with 727848_0
    li      s1, 727848
    add     s1,sp,s1
    sw      s8,0(s1)
              #                    free s1
              #                    release s8 with temp_27_ptr2globl_38
              #                    store to temp_47_array_ele_40 in mem offset_illegal
              #                    occupy a3 with 570972_0
    li      a3, 570972
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_47_array_ele_40
              #                    store to temp_29_array_ele_38 in mem offset_illegal
              #                    occupy a3 with 727836_0
    li      a3, 727836
    add     a3,sp,a3
    sw      s9,0(a3)
              #                    free a3
              #                    release s9 with temp_29_array_ele_38
              #                    store to temp_22_ptr2globl_38 in mem offset_illegal
              #                    occupy s2 with 868568_0
    li      s2, 868568
    add     s2,sp,s2
    sw      s6,0(s2)
              #                    free s2
              #                    release s6 with temp_22_ptr2globl_38
              #                    store to temp_53_arithop_37 in mem offset_illegal
              #                    occupy a0 with 430244_0
    li      a0, 430244
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_53_arithop_37
              #                    occupy a1 with _anonymous_of_W_18_0
              #                    load from W_18 in mem

              #                    occupy a0 with W_18
    li      a0, 1025448
    add     a0,sp,a0
    lw      a1,0(a0)
              #                    free a0
              #                    occupy a2 with _anonymous_of_i_18_0
              #                    load from i_18 in mem

              #                    occupy a7 with i_18
    li      a7, 1025440
    add     a7,sp,a7
    lw      a2,0(a7)
              #                    free a7
              #                    occupy a3 with _anonymous_of_T_18_0
              #                    load from T_18 in mem

              #                    occupy s1 with T_18
    li      s1, 1025452
    add     s1,sp,s1
    lw      a3,0(s1)
              #                    free s1
              #                    store to W_18 in mem offset_illegal
              #                    occupy a0 with 1025448_0
    li      a0, 1025448
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with W_18
              #                    occupy a0 with _anonymous_of_temp_3_ret_of_getint_18_0
              #                    load from temp_3_ret_of_getint_18 in mem

              #                    occupy s2 with temp_3_ret_of_getint_18
    li      s2, 1025428
    add     s2,sp,s2
    lw      a0,0(s2)
              #                    free s2
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } | 
              #                          label while.exit_36: 
.while.exit_36:
              #                          new_var temp_66_arithop_33:i32 
              #                          temp_66_arithop_33 = Add i32 i_18, 1_0 
              #                    occupy a2 with i_18
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_66_arithop_33
    add     s2,a2,s1
              #                    free a2
              #                    free s1
              #                    free s2
              #                          i_18 = i32 temp_66_arithop_33 
              #                    occupy s2 with temp_66_arithop_33
              #                    occupy a2 with i_18
    mv      a2, s2
              #                    free s2
              #                    free a2
              #                          jump label: while.head_32 
              #                    store to temp_19_cmp_35 in mem offset_illegal
              #                    occupy a7 with 876618_0
    li      a7, 876618
    add     a7,sp,a7
    sb      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_19_cmp_35
              #                    store to j_18 in mem offset_illegal
              #                    occupy a6 with 1025436_0
    li      a6, 1025436
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with j_18
              #                    store to temp_66_arithop_33 in mem offset_illegal
              #                    occupy a6 with 281444_0
    li      a6, 281444
    add     a6,sp,a6
    sw      s2,0(a6)
              #                    free a6
              #                    release s2 with temp_66_arithop_33
              #                    store to temp_18_cmp_31 in mem offset_illegal
              #                    occupy a5 with 876619_0
    li      a5, 876619
    add     a5,sp,a5
    sb      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_18_cmp_31
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } | 
              #                          label while.exit_32: 
.while.exit_32:
              #                          res_18 = i32 0_0 
              #                    occupy a6 with res_18
    li      a6, 0
              #                    free a6
              #                          j_18 = i32 0_0 
              #                    occupy a7 with j_18
    li      a7, 0
              #                    free a7
              #                          jump label: while.head_49 
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } | 
              #                          label while.head_49: 
.while.head_49:
              #                          new_var temp_67_cmp_48:i1 
              #                          temp_67_cmp_48 = icmp i32 Sle j_18, W_18 
              #                    occupy a7 with j_18
              #                    occupy a1 with W_18
              #                    occupy s1 with temp_67_cmp_48
    slt     s1,a1,a7
    xori    s1,s1,1
              #                    free a7
              #                    free a1
              #                    free s1
              #                          br i1 temp_67_cmp_48, label while.body_49, label while.exit_49 
              #                    occupy s1 with temp_67_cmp_48
              #                    free s1
              #                    occupy s1 with temp_67_cmp_48
    bnez    s1, .while.body_49
              #                    free s1
    j       .while.exit_49
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: temp_67_cmp_48, tracked: true } | 
              #                          label while.body_49: 
.while.body_49:
              #                          new_var temp_68_ptr2globl_51:Array:i32:[Some(1005_0), Some(35_0)] 
              #                          temp_68_ptr2globl_51 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
              #                    occupy s2 with *dp_0
              #                       load label dp as ptr to reg
    la      s2, dp
              #                    occupy reg s2 with *dp_0
              #                    occupy s3 with temp_68_ptr2globl_51
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_69_array_ptr_51:ptr->i32 
              #                          temp_69_array_ptr_51 = getelementptr temp_68_ptr2globl_51:Array:i32:[Some(1005_0), Some(35_0)] [Some(T_18), Some(j_18)] 
              #                    occupy s4 with temp_69_array_ptr_51
    li      s4, 0
              #                    occupy s5 with 35_0
    li      s5, 35
              #                    occupy a3 with T_18
              #                    occupy s6 with _anonymous_of_temp_68_ptr2globl_51_0
    mul     s6,s5,a3
              #                    free s5
              #                    free a3
    add     s4,s4,s6
              #                    free s6
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy a7 with j_18
              #                    occupy s8 with _anonymous_of_temp_68_ptr2globl_51_0
    mul     s8,s7,a7
              #                    free s7
              #                    free a7
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
    add     s4,s4,sp
              #                    occupy s9 with 140736_0
    li      s9, 140736
    li      s9, 140736
    add     s4,s9,s4
              #                    free s9
              #                    free s4
              #                          new_var temp_70_array_ele_51:i32 
              #                          temp_70_array_ele_51 = load temp_69_array_ptr_51:ptr->i32 
              #                    occupy s4 with temp_69_array_ptr_51
              #                    occupy s10 with temp_70_array_ele_51
    lw      s10,0(s4)
              #                    free s10
              #                    free s4
              #                          new_var temp_71_cmp_51:i1 
              #                          temp_71_cmp_51 = icmp i32 Slt res_18, temp_70_array_ele_51 
              #                    occupy a6 with res_18
              #                    occupy s10 with temp_70_array_ele_51
              #                    occupy s11 with temp_71_cmp_51
    slt     s11,a6,s10
              #                    free a6
              #                    free s10
              #                    free s11
              #                          br i1 temp_71_cmp_51, label branch_true_52, label branch_false_52 
              #                    occupy s11 with temp_71_cmp_51
              #                    free s11
              #                    occupy s11 with temp_71_cmp_51
    bnez    s11, .branch_true_52
              #                    free s11
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } |     s10:Freed { symidx: temp_70_array_ele_51, tracked: true } |     s11:Freed { symidx: temp_71_cmp_51, tracked: true } |     s1:Freed { symidx: temp_67_cmp_48, tracked: true } |     s3:Freed { symidx: temp_68_ptr2globl_51, tracked: true } |     s4:Freed { symidx: temp_69_array_ptr_51, tracked: true } | 
              #                          label branch_true_52: 
.branch_true_52:
              #                          new_var temp_72_ptr2globl_53:Array:i32:[Some(1005_0), Some(35_0)] 
              #                          temp_72_ptr2globl_53 = load *dp_0:ptr->Array:i32:[Some(35_0)] 
              #                    occupy s2 with *dp_0
              #                       load label dp as ptr to reg
    la      s2, dp
              #                    occupy reg s2 with *dp_0
              #                    occupy s5 with temp_72_ptr2globl_53
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          new_var temp_73_array_ptr_53:ptr->i32 
              #                          temp_73_array_ptr_53 = getelementptr temp_72_ptr2globl_53:Array:i32:[Some(1005_0), Some(35_0)] [Some(T_18), Some(j_18)] 
              #                    occupy s6 with temp_73_array_ptr_53
    li      s6, 0
              #                    occupy s7 with 35_0
    li      s7, 35
              #                    occupy a3 with T_18
              #                    occupy s8 with _anonymous_of_temp_72_ptr2globl_53_0
    mul     s8,s7,a3
              #                    free s7
              #                    free a3
    add     s6,s6,s8
              #                    free s8
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy a7 with j_18
              #                    occupy s2 with _anonymous_of_temp_72_ptr2globl_53_0
    mul     s2,s9,a7
              #                    free s9
              #                    free a7
    add     s6,s6,s2
              #                    free s2
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,20
              #                    free s6
              #                          new_var temp_74_array_ele_53:i32 
              #                          temp_74_array_ele_53 = load temp_73_array_ptr_53:ptr->i32 
              #                    occupy s6 with temp_73_array_ptr_53
              #                    occupy s2 with temp_74_array_ele_53
    lw      s2,0(s6)
              #                    free s2
              #                    free s6
              #                          res_18 = i32 temp_74_array_ele_53 
              #                    occupy s2 with temp_74_array_ele_53
              #                    occupy a6 with res_18
    mv      a6, s2
              #                    free s2
              #                    free a6
              #                          jump label: branch_false_52 
              #                    store to temp_72_ptr2globl_53 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_72_ptr2globl_53
              #                    store to temp_74_array_ele_53 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_74_array_ele_53
              #                    store to temp_73_array_ptr_53 in mem offset legal
    sd      s6,8(sp)
              #                    release s6 with temp_73_array_ptr_53
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } |     s10:Freed { symidx: temp_70_array_ele_51, tracked: true } |     s11:Freed { symidx: temp_71_cmp_51, tracked: true } |     s1:Freed { symidx: temp_67_cmp_48, tracked: true } |     s3:Freed { symidx: temp_68_ptr2globl_51, tracked: true } |     s4:Freed { symidx: temp_69_array_ptr_51, tracked: true } | 
              #                          label branch_false_52: 
.branch_false_52:
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } |     s10:Freed { symidx: temp_70_array_ele_51, tracked: true } |     s11:Freed { symidx: temp_71_cmp_51, tracked: true } |     s1:Freed { symidx: temp_67_cmp_48, tracked: true } |     s3:Freed { symidx: temp_68_ptr2globl_51, tracked: true } |     s4:Freed { symidx: temp_69_array_ptr_51, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_75_arithop_50:i32 
              #                          temp_75_arithop_50 = Add i32 j_18, 1_0 
              #                    occupy a7 with j_18
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s5 with temp_75_arithop_50
    add     s5,a7,s2
              #                    free a7
              #                    free s2
              #                    free s5
              #                          j_18 = i32 temp_75_arithop_50 
              #                    occupy s5 with temp_75_arithop_50
              #                    occupy a7 with j_18
    mv      a7, s5
              #                    free s5
              #                    free a7
              #                          jump label: while.head_49 
              #                    store to temp_68_ptr2globl_51 in mem offset_illegal
              #                    occupy s3 with 140736_0
    li      s3, 140736
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_68_ptr2globl_51
              #                    store to temp_69_array_ptr_51 in mem offset_illegal
              #                    occupy s3 with 140728_0
    li      s3, 140728
    add     s3,sp,s3
    sd      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_69_array_ptr_51
              #                    store to temp_70_array_ele_51 in mem offset_illegal
              #                    occupy s4 with 140724_0
    li      s4, 140724
    add     s4,sp,s4
    sw      s10,0(s4)
              #                    free s4
              #                    release s10 with temp_70_array_ele_51
              #                    store to temp_71_cmp_51 in mem offset_illegal
              #                    occupy s6 with 140723_0
    li      s6, 140723
    add     s6,sp,s6
    sb      s11,0(s6)
              #                    free s6
              #                    release s11 with temp_71_cmp_51
              #                    store to temp_75_arithop_50 in mem offset legal
    sw      s5,0(sp)
              #                    release s5 with temp_75_arithop_50
              #                    store to temp_67_cmp_48 in mem offset_illegal
              #                    occupy s1 with 281439_0
    li      s1, 281439
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_67_cmp_48
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: temp_67_cmp_48, tracked: true } | 
              #                          label while.exit_49: 
.while.exit_49:
              #                          ret res_18 
              #                    load from ra_main_0 in mem
              #                    occupy s2 with ra_main_0
    li      s2, 1025464
    add     s2,sp,s2
    ld      ra,0(s2)
              #                    free s2
              #                    load from s0_main_0 in mem
              #                    occupy s3 with s0_main_0
    li      s3, 1025456
    add     s3,sp,s3
    ld      s0,0(s3)
              #                    free s3
              #                    store to res_18 in mem offset_illegal
              #                    occupy a6 with 281440_0
    li      a6, 281440
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with res_18
              #                    store to temp_3_ret_of_getint_18 in mem offset_illegal
              #                    occupy a0 with 1025428_0
    li      a0, 1025428
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_3_ret_of_getint_18
              #                    occupy a0 with res_18
              #                    load from res_18 in mem

              #                    occupy a6 with res_18
    li      a6, 281440
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy s4 with 1025472_0
    li      s4, 1025472
    li      s4, 1025472
    add     sp,s4,sp
              #                    free s4
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: temp_67_cmp_48, tracked: true } |     s2:Freed { symidx: ra_main_0, tracked: true } |     s3:Freed { symidx: s0_main_0, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl dp
              #                          global Array:i32:[Some(1005_0), Some(35_0)] dp_0 
    .type dp,@object
dp:
    .word 0
    .zero 140700
    .align 4
    .globl t
              #                          global Array:i32:[Some(1005_0), Some(2_0)] t_0 
    .type t,@object
t:
    .word 0
    .zero 8040
