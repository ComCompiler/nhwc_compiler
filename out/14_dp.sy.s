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
              #                    mem layout:|ra_main:8 at 360|s0_main:8 at 352|T:4 at 348|W:4 at 344|x:4 at 340|i:4 at 336|j:4 at 332|temp_4_ret_of_getint:4 at 328|temp_5_ret_of_getint:4 at 324|temp_6_cmp:1 at 323|none:3 at 320|temp_7_ret_of_getint:4 at 316|temp_8_arithop:4 at 312|temp_9_index_ptr:8 at 304|temp_10_index_ptr:8 at 296|temp_11_array_ptr:8 at 288|temp_12_array_ele:4 at 284|temp_13_arithop:4 at 280|temp_14_array_ptr:8 at 272|temp_15_array_ele:4 at 268|temp_16_arithop:4 at 264|temp_17_arithop:4 at 260|temp_18_cmp:1 at 259|temp_19_cmp:1 at 258|none:2 at 256|temp_20_arithop:4 at 252|temp_21_arithop:4 at 248|temp_22_array_ptr:8 at 240|temp_23_array_ele:4 at 236|temp_24_arithop:4 at 232|temp_25_arithop:4 at 228|none:4 at 224|temp_26_array_ptr:8 at 216|temp_27_array_ele:4 at 212|temp_28_arithop:4 at 208|temp_29_arithop:4 at 204|temp_30_arithop:4 at 200|temp_31_array_ptr:8 at 192|temp_32_array_ele:4 at 188|temp_33_arithop:4 at 184|temp_34_array_ptr:8 at 176|temp_35_array_ele:4 at 172|temp_36_arithop:4 at 168|temp_37_cmp:1 at 167|none:7 at 160|temp_38_index_ptr:8 at 152|temp_39_arithop:4 at 148|temp_40_arithop:4 at 144|temp_41_array_ptr:8 at 136|temp_42_array_ele:4 at 132|temp_43_arithop:4 at 128|temp_44_array_ptr:8 at 120|temp_45_array_ele:4 at 116|temp_46_arithop:4 at 112|temp_47_arithop:4 at 108|none:4 at 104|temp_48_index_ptr:8 at 96|temp_49_arithop:4 at 92|temp_50_arithop:4 at 88|temp_51_array_ptr:8 at 80|temp_52_array_ele:4 at 76|temp_53_arithop:4 at 72|temp_54_arithop:4 at 68|none:4 at 64|temp_55_array_ptr:8 at 56|temp_56_array_ele:4 at 52|temp_57_arithop:4 at 48|temp_58_arithop:4 at 44|res:4 at 40|temp_59_cmp:1 at 39|none:7 at 32|temp_60_array_ptr:8 at 24|temp_61_array_ele:4 at 20|temp_62_cmp:1 at 19|none:3 at 16|temp_63_array_ptr:8 at 8|temp_64_array_ele:4 at 4|temp_65_arithop:4 at 0
    addi    sp,sp,-368
              #                    store to ra_main_0 in mem offset legal
    sd      ra,360(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,352(sp)
    addi    s0,sp,368
              #                          alloc i32 T_18 
              #                          alloc i32 W_18 
              #                          alloc i32 x_18 
              #                          alloc i32 i_18 
              #                          alloc i32 j_18 
              #                          alloc i32 temp_4_ret_of_getint_18 
              #                          alloc i32 temp_5_ret_of_getint_18 
              #                          alloc i1 temp_6_cmp_23 
              #                          alloc i32 temp_7_ret_of_getint_25 
              #                          alloc i32 temp_8_arithop_25 
              #                          alloc ptr->i32 temp_9_index_ptr_25 
              #                          alloc ptr->i32 temp_10_index_ptr_25 
              #                          alloc ptr->i32 temp_11_array_ptr_25 
              #                          alloc i32 temp_12_array_ele_25 
              #                          alloc i32 temp_13_arithop_25 
              #                          alloc ptr->i32 temp_14_array_ptr_25 
              #                          alloc i32 temp_15_array_ele_25 
              #                          alloc i32 temp_16_arithop_25 
              #                          alloc i32 temp_17_arithop_25 
              #                          alloc i1 temp_18_cmp_31 
              #                          alloc i1 temp_19_cmp_35 
              #                          alloc i32 temp_20_arithop_38 
              #                          alloc i32 temp_21_arithop_38 
              #                          alloc ptr->i32 temp_22_array_ptr_38 
              #                          alloc i32 temp_23_array_ele_38 
              #                          alloc i32 temp_24_arithop_38 
              #                          alloc i32 temp_25_arithop_38 
              #                          alloc ptr->i32 temp_26_array_ptr_38 
              #                          alloc i32 temp_27_array_ele_38 
              #                          alloc i32 temp_28_arithop_38 
              #                          alloc i32 temp_29_arithop_38 
              #                          alloc i32 temp_30_arithop_38 
              #                          alloc ptr->i32 temp_31_array_ptr_38 
              #                          alloc i32 temp_32_array_ele_38 
              #                          alloc i32 temp_33_arithop_38 
              #                          alloc ptr->i32 temp_34_array_ptr_38 
              #                          alloc i32 temp_35_array_ele_38 
              #                          alloc i32 temp_36_arithop_38 
              #                          alloc i1 temp_37_cmp_38 
              #                          alloc ptr->i32 temp_38_index_ptr_40 
              #                          alloc i32 temp_39_arithop_40 
              #                          alloc i32 temp_40_arithop_40 
              #                          alloc ptr->i32 temp_41_array_ptr_40 
              #                          alloc i32 temp_42_array_ele_40 
              #                          alloc i32 temp_43_arithop_40 
              #                          alloc ptr->i32 temp_44_array_ptr_40 
              #                          alloc i32 temp_45_array_ele_40 
              #                          alloc i32 temp_46_arithop_40 
              #                          alloc i32 temp_47_arithop_37 
              #                          alloc ptr->i32 temp_48_index_ptr_42 
              #                          alloc i32 temp_49_arithop_42 
              #                          alloc i32 temp_50_arithop_42 
              #                          alloc ptr->i32 temp_51_array_ptr_42 
              #                          alloc i32 temp_52_array_ele_42 
              #                          alloc i32 temp_53_arithop_42 
              #                          alloc i32 temp_54_arithop_42 
              #                          alloc ptr->i32 temp_55_array_ptr_42 
              #                          alloc i32 temp_56_array_ele_42 
              #                          alloc i32 temp_57_arithop_42 
              #                          alloc i32 temp_58_arithop_33 
              #                          alloc i32 res_18 
              #                          alloc i1 temp_59_cmp_48 
              #                          alloc ptr->i32 temp_60_array_ptr_51 
              #                          alloc i32 temp_61_array_ele_51 
              #                          alloc i1 temp_62_cmp_51 
              #                          alloc ptr->i32 temp_63_array_ptr_53 
              #                          alloc i32 temp_64_array_ele_53 
              #                          alloc i32 temp_65_arithop_50 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var T_18:i32 
              #                          new_var W_18:i32 
              #                          new_var x_18:i32 
              #                          new_var i_18:i32 
              #                          new_var j_18:i32 
              #                          new_var temp_4_ret_of_getint_18:i32 
              #                          temp_4_ret_of_getint_18 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_4_ret_of_getint_18 in mem offset legal
    sw      a0,328(sp)
              #                          T_18 = i32 temp_4_ret_of_getint_18 
              #                    occupy a0 with temp_4_ret_of_getint_18
              #                    occupy a1 with T_18
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_5_ret_of_getint_18:i32 
              #                          temp_5_ret_of_getint_18 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_4_ret_of_getint_18 in mem offset legal
    sw      a0,328(sp)
              #                    release a0 with temp_4_ret_of_getint_18
              #                    store to T_18 in mem offset legal
    sw      a1,348(sp)
              #                    release a1 with T_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_5_ret_of_getint_18 in mem offset legal
    sw      a0,324(sp)
              #                          W_18 = i32 temp_5_ret_of_getint_18 
              #                    occupy a0 with temp_5_ret_of_getint_18
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
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } | 
              #                          label while.head_24: 
.while.head_24:
              #                          new_var temp_6_cmp_23:i1 
              #                          temp_6_cmp_23 = icmp i32 Sle i_18, T_18 
              #                    occupy a2 with i_18
              #                    occupy a3 with T_18
              #                    load from T_18 in mem


    lw      a3,348(sp)
              #                    occupy a4 with temp_6_cmp_23
    slt     a4,a3,a2
    xori    a4,a4,1
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_6_cmp_23, label while.body_24, label while.exit_24 
              #                    occupy a4 with temp_6_cmp_23
              #                    free a4
              #                    occupy a4 with temp_6_cmp_23
    bnez    a4, .while.body_24
              #                    free a4
    j       .while.exit_24
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } | 
              #                          label while.body_24: 
.while.body_24:
              #                          new_var temp_7_ret_of_getint_25:i32 
              #                          temp_7_ret_of_getint_25 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_5_ret_of_getint_18 in mem offset legal
    sw      a0,324(sp)
              #                    release a0 with temp_5_ret_of_getint_18
              #                    store to W_18 in mem offset legal
    sw      a1,344(sp)
              #                    release a1 with W_18
              #                    store to i_18 in mem offset legal
    sw      a2,336(sp)
              #                    release a2 with i_18
              #                    store to T_18 in mem offset legal
    sw      a3,348(sp)
              #                    release a3 with T_18
              #                    store to temp_6_cmp_23 in mem offset legal
    sb      a4,323(sp)
              #                    release a4 with temp_6_cmp_23
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_7_ret_of_getint_25 in mem offset legal
    sw      a0,316(sp)
              #                          x_18 = i32 temp_7_ret_of_getint_25 
              #                    occupy a0 with temp_7_ret_of_getint_25
              #                    occupy a1 with x_18
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_8_arithop_25:i32 
              #                          temp_8_arithop_25 = Mod i32 x_18, 2_0 
              #                    occupy a1 with x_18
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with temp_8_arithop_25
              #                    load from temp_8_arithop_25 in mem


    lw      a3,312(sp)
    rem     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_9_index_ptr_25:ptr->i32 
              #                          temp_9_index_ptr_25 = getelementptr *t_0:ptr->Array:i32:[Some(2_0)] [Some(i_18), Some(temp_8_arithop_25)] 
              #                    occupy a4 with temp_9_index_ptr_25
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with i_18
              #                    load from i_18 in mem


    lw      a6,336(sp)
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
              #                    occupy s1 with *t_0
              #                       load label t as ptr to reg
    la      s1, t
              #                    occupy reg s1 with *t_0
    add     a4,a4,s1
              #                    free s1
              #                    free a4
              #                          store 1_0:i32 temp_9_index_ptr_25:ptr->i32 
              #                    occupy a4 with temp_9_index_ptr_25
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu *t_0:73 
              #                          *t_0 = chi *t_0:73 
              #                          new_var temp_10_index_ptr_25:ptr->i32 
              #                          temp_10_index_ptr_25 = getelementptr *dp_0:ptr->Array:i32:[Some(35_0)] [Some(i_18), Some(0_0)] 
              #                    occupy s2 with temp_10_index_ptr_25
    li      s2, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a6 with i_18
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a5,a6
              #                    free a5
              #                    free a6
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy s4 with *dp_0
              #                       load label dp as ptr to reg
    la      s4, dp
              #                    occupy reg s4 with *dp_0
    add     s2,s2,s4
              #                    free s4
              #                    free s2
              #                          new_var temp_11_array_ptr_25:ptr->i32 
              #                          temp_11_array_ptr_25 = getelementptr *t_0:ptr->Array:i32:[Some(2_0)] [Some(i_18), Some(1_0)] 
              #                    occupy s5 with temp_11_array_ptr_25
    li      s5, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a6 with i_18
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a5,a6
              #                    free a5
              #                    free a6
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy s7 with *t_0
              #                       load label t as ptr to reg
    la      s7, t
              #                    occupy reg s7 with *t_0
    add     s5,s5,s7
              #                    free s7
              #                    free s5
              #                          new_var temp_12_array_ele_25:i32 
              #                          temp_12_array_ele_25 = load temp_11_array_ptr_25:ptr->i32 
              #                    occupy s5 with temp_11_array_ptr_25
              #                    occupy s8 with temp_12_array_ele_25
    lw      s8,0(s5)
              #                    free s8
              #                    free s5
              #                          new_var temp_13_arithop_25:i32 
              #                          temp_13_arithop_25 = Sub i32 i_18, 1_0 
              #                    occupy a6 with i_18
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s9 with temp_13_arithop_25
              #                    regtab:    a0:Freed { symidx: temp_7_ret_of_getint_25, tracked: true } |     a1:Freed { symidx: x_18, tracked: true } |     a2:Freed { symidx: 2_0, tracked: false } |     a3:Freed { symidx: temp_8_arithop_25, tracked: true } |     a4:Freed { symidx: temp_9_index_ptr_25, tracked: true } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s1:Freed { symidx: *t_0, tracked: false } |     s2:Freed { symidx: temp_10_index_ptr_25, tracked: true } |     s3:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s4:Freed { symidx: *dp_0, tracked: false } |     s5:Freed { symidx: temp_11_array_ptr_25, tracked: true } |     s6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s7:Freed { symidx: *t_0, tracked: false } |     s8:Freed { symidx: temp_12_array_ele_25, tracked: true } |     s9:Occupied { symidx: temp_13_arithop_25, tracked: true, occupy_count: 1 } | 


    sub     s9,a6,a5
              #                    free a6
              #                    free a5
              #                    free s9
              #                          new_var temp_14_array_ptr_25:ptr->i32 
              #                          temp_14_array_ptr_25 = getelementptr *dp_0:ptr->Array:i32:[Some(35_0)] [Some(temp_13_arithop_25), Some(0_0)] 
              #                    occupy s10 with temp_14_array_ptr_25
    li      s10, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s9 with temp_13_arithop_25
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a5,s9
              #                    free a5
              #                    free s9
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
              #                    occupy a2 with *dp_0
              #                       load label dp as ptr to reg
    la      a2, dp
              #                    occupy reg a2 with *dp_0
    add     s10,s10,a2
              #                    free a2
              #                    free s10
              #                          new_var temp_15_array_ele_25:i32 
              #                          temp_15_array_ele_25 = load temp_14_array_ptr_25:ptr->i32 
              #                    occupy s10 with temp_14_array_ptr_25
              #                    occupy a2 with temp_15_array_ele_25
    lw      a2,0(s10)
              #                    free a2
              #                    free s10
              #                          new_var temp_16_arithop_25:i32 
              #                          temp_16_arithop_25 = Add i32 temp_15_array_ele_25, temp_12_array_ele_25 
              #                    occupy a2 with temp_15_array_ele_25
              #                    occupy s8 with temp_12_array_ele_25
              #                    occupy a5 with temp_16_arithop_25
    add     a5,a2,s8
              #                    free a2
              #                    free s8
              #                    free a5
              #                          store temp_16_arithop_25:i32 temp_10_index_ptr_25:ptr->i32 
              #                    occupy s2 with temp_10_index_ptr_25
              #                    occupy a5 with temp_16_arithop_25
    sw      a5,0(s2)
              #                    free a5
              #                    free s2
              #                          mu *dp_0:97 
              #                          *dp_0 = chi *dp_0:97 
              #                          new_var temp_17_arithop_25:i32 
              #                          temp_17_arithop_25 = Add i32 i_18, 1_0 
              #                    occupy a6 with i_18
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_17_arithop_25
    add     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          i_18 = i32 temp_17_arithop_25 
              #                    occupy s1 with temp_17_arithop_25
              #                    occupy a6 with i_18
    mv      a6, s1
              #                    free s1
              #                    free a6
              #                          jump label: while.head_24 
              #                    store to i_18 in mem offset legal
    sw      a6,336(sp)
              #                    release a6 with i_18
              #                    store to temp_13_arithop_25 in mem offset legal
    sw      s9,280(sp)
              #                    release s9 with temp_13_arithop_25
              #                    store to x_18 in mem offset legal
    sw      a1,340(sp)
              #                    release a1 with x_18
              #                    store to temp_9_index_ptr_25 in mem offset legal
    sd      a4,304(sp)
              #                    release a4 with temp_9_index_ptr_25
              #                    store to temp_14_array_ptr_25 in mem offset legal
    sd      s10,272(sp)
              #                    release s10 with temp_14_array_ptr_25
              #                    store to temp_15_array_ele_25 in mem offset legal
    sw      a2,268(sp)
              #                    release a2 with temp_15_array_ele_25
              #                    store to temp_11_array_ptr_25 in mem offset legal
    sd      s5,288(sp)
              #                    release s5 with temp_11_array_ptr_25
              #                    store to temp_8_arithop_25 in mem offset legal
    sw      a3,312(sp)
              #                    release a3 with temp_8_arithop_25
              #                    store to temp_17_arithop_25 in mem offset legal
    sw      s1,260(sp)
              #                    release s1 with temp_17_arithop_25
              #                    store to temp_16_arithop_25 in mem offset legal
    sw      a5,264(sp)
              #                    release a5 with temp_16_arithop_25
              #                    store to temp_7_ret_of_getint_25 in mem offset legal
    sw      a0,316(sp)
              #                    release a0 with temp_7_ret_of_getint_25
              #                    store to temp_10_index_ptr_25 in mem offset legal
    sd      s2,296(sp)
              #                    release s2 with temp_10_index_ptr_25
              #                    store to temp_12_array_ele_25 in mem offset legal
    sw      s8,284(sp)
              #                    release s8 with temp_12_array_ele_25
              #                    occupy a1 with _anonymous_of_W_18_0
              #                    load from W_18 in mem


    lw      a1,344(sp)
              #                    occupy a2 with _anonymous_of_i_18_0
              #                    load from i_18 in mem


    lw      a2,336(sp)
              #                    occupy a0 with _anonymous_of_temp_5_ret_of_getint_18_0
              #                    load from temp_5_ret_of_getint_18 in mem


    lw      a0,324(sp)
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } | 
              #                          label while.exit_24: 
.while.exit_24:
              #                          i_18 = i32 1_0 
              #                    occupy a2 with i_18
    li      a2, 1
              #                    free a2
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } | 
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
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } | 
              #                          label while.body_32: 
.while.body_32:
              #                          j_18 = i32 1_0 
              #                    occupy a6 with j_18
    li      a6, 1
              #                    free a6
              #                          jump label: while.head_36 
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } | 
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
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } | 
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


    lw      s4,248(sp)
    rem     s4,s2,s3
              #                    free s2
              #                    free s3
              #                    free s4
              #                          new_var temp_22_array_ptr_38:ptr->i32 
              #                          temp_22_array_ptr_38 = getelementptr *t_0:ptr->Array:i32:[Some(2_0)] [Some(i_18), Some(temp_21_arithop_38)] 
              #                    occupy s5 with temp_22_array_ptr_38
    li      s5, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a2 with i_18
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s1,a2
              #                    free s1
              #                    free a2
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy s7 with *t_0
              #                       load label t as ptr to reg
    la      s7, t
              #                    occupy reg s7 with *t_0
    add     s5,s5,s7
              #                    free s7
              #                    free s5
              #                          new_var temp_23_array_ele_38:i32 
              #                          temp_23_array_ele_38 = load temp_22_array_ptr_38:ptr->i32 
              #                    occupy s5 with temp_22_array_ptr_38
              #                    occupy s8 with temp_23_array_ele_38
    lw      s8,0(s5)
              #                    free s8
              #                    free s5
              #                          new_var temp_24_arithop_38:i32 
              #                          temp_24_arithop_38 = Sub i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s9 with temp_24_arithop_38
              #                    regtab:    a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Occupied { symidx: j_18, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s3:Freed { symidx: 2_0, tracked: false } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_38, tracked: true } |     s6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s7:Freed { symidx: *t_0, tracked: false } |     s8:Freed { symidx: temp_23_array_ele_38, tracked: true } |     s9:Occupied { symidx: temp_24_arithop_38, tracked: true, occupy_count: 1 } | 


    sub     s9,a6,s1
              #                    free a6
              #                    free s1
              #                    free s9
              #                          new_var temp_25_arithop_38:i32 
              #                          temp_25_arithop_38 = Sub i32 i_18, 1_0 
              #                    occupy a2 with i_18
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s10 with temp_25_arithop_38
              #                    regtab:    a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Occupied { symidx: temp_25_arithop_38, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s3:Freed { symidx: 2_0, tracked: false } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_38, tracked: true } |     s6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s7:Freed { symidx: *t_0, tracked: false } |     s8:Freed { symidx: temp_23_array_ele_38, tracked: true } |     s9:Freed { symidx: temp_24_arithop_38, tracked: true } | 


    sub     s10,a2,s1
              #                    free a2
              #                    free s1
              #                    free s10
              #                          new_var temp_26_array_ptr_38:ptr->i32 
              #                          temp_26_array_ptr_38 = getelementptr *dp_0:ptr->Array:i32:[Some(35_0)] [Some(temp_25_arithop_38), Some(temp_24_arithop_38)] 
              #                    occupy s11 with temp_26_array_ptr_38
    li      s11, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s10 with temp_25_arithop_38
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,s1,s10
              #                    free s1
              #                    free s10
    add     s11,s11,s3
              #                    free s3
    slli s11,s11,2
              #                    occupy s1 with *dp_0
              #                       load label dp as ptr to reg
    la      s1, dp
              #                    occupy reg s1 with *dp_0
    add     s11,s11,s1
              #                    free s1
              #                    free s11
              #                          new_var temp_27_array_ele_38:i32 
              #                          temp_27_array_ele_38 = load temp_26_array_ptr_38:ptr->i32 
              #                    occupy s11 with temp_26_array_ptr_38
              #                    occupy s1 with temp_27_array_ele_38
    lw      s1,0(s11)
              #                    free s1
              #                    free s11
              #                          new_var temp_28_arithop_38:i32 
              #                          temp_28_arithop_38 = Add i32 temp_27_array_ele_38, temp_23_array_ele_38 
              #                    occupy s1 with temp_27_array_ele_38
              #                    occupy s8 with temp_23_array_ele_38
              #                    occupy s3 with temp_28_arithop_38
    add     s3,s1,s8
              #                    free s1
              #                    free s8
              #                    free s3
              #                          new_var temp_29_arithop_38:i32 
              #                          temp_29_arithop_38 = Add i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with temp_29_arithop_38
    add     s7,a6,s6
              #                    free a6
              #                    free s6
              #                    free s7
              #                          new_var temp_30_arithop_38:i32 
              #                          temp_30_arithop_38 = Mod i32 temp_29_arithop_38, 2_0 
              #                    occupy s7 with temp_29_arithop_38
              #                    occupy s6 with 2_0
    li      s6, 2
              #                    store to temp_5_ret_of_getint_18 in mem offset legal
    sw      a0,324(sp)
              #                    release a0 with temp_5_ret_of_getint_18
              #                    occupy a0 with temp_30_arithop_38
              #                    load from temp_30_arithop_38 in mem


    lw      a0,200(sp)
    rem     a0,s7,s6
              #                    free s7
              #                    free s6
              #                    free a0
              #                          new_var temp_31_array_ptr_38:ptr->i32 
              #                          temp_31_array_ptr_38 = getelementptr *t_0:ptr->Array:i32:[Some(2_0)] [Some(i_18), Some(temp_30_arithop_38)] 
              #                    occupy s6 with temp_31_array_ptr_38
    li      s6, 0
              #                    store to temp_30_arithop_38 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_30_arithop_38
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with i_18
              #                    store to W_18 in mem offset legal
    sw      a1,344(sp)
              #                    release a1 with W_18
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     s6,s6,a1
              #                    free a1
    slli s6,s6,2
              #                    occupy a0 with *t_0
              #                       load label t as ptr to reg
    la      a0, t
              #                    occupy reg a0 with *t_0
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          new_var temp_32_array_ele_38:i32 
              #                          temp_32_array_ele_38 = load temp_31_array_ptr_38:ptr->i32 
              #                    occupy s6 with temp_31_array_ptr_38
              #                    occupy a0 with temp_32_array_ele_38
    lw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          new_var temp_33_arithop_38:i32 
              #                          temp_33_arithop_38 = Sub i32 i_18, 1_0 
              #                    occupy a2 with i_18
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_32_array_ele_38 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_32_array_ele_38
              #                    occupy a0 with temp_33_arithop_38
              #                    regtab:    a0:Occupied { symidx: temp_33_arithop_38, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_25_arithop_38, tracked: true } |     s11:Freed { symidx: temp_26_array_ptr_38, tracked: true } |     s1:Freed { symidx: temp_27_array_ele_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s3:Freed { symidx: temp_28_arithop_38, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_38, tracked: true } |     s6:Freed { symidx: temp_31_array_ptr_38, tracked: true } |     s7:Freed { symidx: temp_29_arithop_38, tracked: true } |     s8:Freed { symidx: temp_23_array_ele_38, tracked: true } |     s9:Freed { symidx: temp_24_arithop_38, tracked: true } | 


    sub     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_34_array_ptr_38:ptr->i32 
              #                          temp_34_array_ptr_38 = getelementptr *dp_0:ptr->Array:i32:[Some(35_0)] [Some(temp_33_arithop_38), Some(j_18)] 
              #                    occupy a1 with temp_34_array_ptr_38
    li      a1, 0
              #                    store to temp_33_arithop_38 in mem offset legal
    sw      a0,184(sp)
              #                    release a0 with temp_33_arithop_38
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to i_18 in mem offset legal
    sw      a2,336(sp)
              #                    release a2 with i_18
              #                    occupy a2 with temp_33_arithop_38
              #                    load from temp_33_arithop_38 in mem


    lw      a2,184(sp)
              #                    store to T_18 in mem offset legal
    sw      a3,348(sp)
              #                    release a3 with T_18
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with *dp_0
              #                       load label dp as ptr to reg
    la      a0, dp
              #                    occupy reg a0 with *dp_0
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_35_array_ele_38:i32 
              #                          temp_35_array_ele_38 = load temp_34_array_ptr_38:ptr->i32 
              #                    occupy a1 with temp_34_array_ptr_38
              #                    occupy a0 with temp_35_array_ele_38
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_36_arithop_38:i32 
              #                          temp_36_arithop_38 = Add i32 temp_35_array_ele_38, temp_32_array_ele_38 
              #                    occupy a0 with temp_35_array_ele_38
              #                    occupy a3 with temp_32_array_ele_38
              #                    load from temp_32_array_ele_38 in mem


    lw      a3,188(sp)
              #                    store to temp_34_array_ptr_38 in mem offset legal
    sd      a1,176(sp)
              #                    release a1 with temp_34_array_ptr_38
              #                    occupy a1 with temp_36_arithop_38
    add     a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_37_cmp_38:i1 
              #                          temp_37_cmp_38 = icmp i32 Sgt temp_36_arithop_38, temp_28_arithop_38 
              #                    occupy a1 with temp_36_arithop_38
              #                    occupy s3 with temp_28_arithop_38
              #                    store to temp_35_array_ele_38 in mem offset legal
    sw      a0,172(sp)
              #                    release a0 with temp_35_array_ele_38
              #                    occupy a0 with temp_37_cmp_38
    slt     a0,s3,a1
              #                    free a1
              #                    free s3
              #                    free a0
              #                          br i1 temp_37_cmp_38, label branch_true_39, label branch_false_39 
              #                    occupy a0 with temp_37_cmp_38
              #                    free a0
              #                    store to temp_28_arithop_38 in mem offset legal
    sw      s3,208(sp)
              #                    release s3 with temp_28_arithop_38
              #                    occupy a0 with temp_37_cmp_38
    bnez    a0, .branch_true_39
              #                    free a0
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: temp_37_cmp_38, tracked: true } |     a1:Freed { symidx: temp_36_arithop_38, tracked: true } |     a2:Freed { symidx: temp_33_arithop_38, tracked: true } |     a3:Freed { symidx: temp_32_array_ele_38, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_25_arithop_38, tracked: true } |     s11:Freed { symidx: temp_26_array_ptr_38, tracked: true } |     s1:Freed { symidx: temp_27_array_ele_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_38, tracked: true } |     s6:Freed { symidx: temp_31_array_ptr_38, tracked: true } |     s7:Freed { symidx: temp_29_arithop_38, tracked: true } |     s8:Freed { symidx: temp_23_array_ele_38, tracked: true } |     s9:Freed { symidx: temp_24_arithop_38, tracked: true } | 
              #                          label branch_true_39: 
.branch_true_39:
              #                          new_var temp_38_index_ptr_40:ptr->i32 
              #                          temp_38_index_ptr_40 = getelementptr *dp_0:ptr->Array:i32:[Some(35_0)] [Some(i_18), Some(j_18)] 
              #                    occupy s3 with temp_38_index_ptr_40
    li      s3, 0
              #                    store to temp_37_cmp_38 in mem offset legal
    sb      a0,167(sp)
              #                    release a0 with temp_37_cmp_38
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_36_arithop_38 in mem offset legal
    sw      a1,168(sp)
              #                    release a1 with temp_36_arithop_38
              #                    occupy a1 with i_18
              #                    load from i_18 in mem


    lw      a1,336(sp)
              #                    store to temp_33_arithop_38 in mem offset legal
    sw      a2,184(sp)
              #                    release a2 with temp_33_arithop_38
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s3,s3,a2
              #                    free a2
    slli s3,s3,2
              #                    occupy a0 with *dp_0
              #                       load label dp as ptr to reg
    la      a0, dp
              #                    occupy reg a0 with *dp_0
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          new_var temp_39_arithop_40:i32 
              #                          temp_39_arithop_40 = Add i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_39_arithop_40
    add     a2,a6,a0
              #                    free a6
              #                    free a0
              #                    free a2
              #                          new_var temp_40_arithop_40:i32 
              #                          temp_40_arithop_40 = Mod i32 temp_39_arithop_40, 2_0 
              #                    occupy a2 with temp_39_arithop_40
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    store to i_18 in mem offset legal
    sw      a1,336(sp)
              #                    release a1 with i_18
              #                    occupy a1 with temp_40_arithop_40
              #                    load from temp_40_arithop_40 in mem


    lw      a1,144(sp)
    rem     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_41_array_ptr_40:ptr->i32 
              #                          temp_41_array_ptr_40 = getelementptr *t_0:ptr->Array:i32:[Some(2_0)] [Some(i_18), Some(temp_40_arithop_40)] 
              #                    occupy a0 with temp_41_array_ptr_40
    li      a0, 0
              #                    store to temp_40_arithop_40 in mem offset legal
    sw      a1,144(sp)
              #                    release a1 with temp_40_arithop_40
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_39_arithop_40 in mem offset legal
    sw      a2,148(sp)
              #                    release a2 with temp_39_arithop_40
              #                    occupy a2 with i_18
              #                    load from i_18 in mem


    lw      a2,336(sp)
              #                    store to temp_32_array_ele_38 in mem offset legal
    sw      a3,188(sp)
              #                    release a3 with temp_32_array_ele_38
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *t_0
              #                       load label t as ptr to reg
    la      a1, t
              #                    occupy reg a1 with *t_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_42_array_ele_40:i32 
              #                          temp_42_array_ele_40 = load temp_41_array_ptr_40:ptr->i32 
              #                    occupy a0 with temp_41_array_ptr_40
              #                    occupy a1 with temp_42_array_ele_40
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_43_arithop_40:i32 
              #                          temp_43_arithop_40 = Sub i32 i_18, 1_0 
              #                    occupy a2 with i_18
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    store to temp_41_array_ptr_40 in mem offset legal
    sd      a0,136(sp)
              #                    release a0 with temp_41_array_ptr_40
              #                    occupy a0 with temp_43_arithop_40
              #                    regtab:    a0:Occupied { symidx: temp_43_arithop_40, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_42_array_ele_40, tracked: true } |     a2:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_25_arithop_38, tracked: true } |     s11:Freed { symidx: temp_26_array_ptr_38, tracked: true } |     s1:Freed { symidx: temp_27_array_ele_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s3:Freed { symidx: temp_38_index_ptr_40, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_38, tracked: true } |     s6:Freed { symidx: temp_31_array_ptr_38, tracked: true } |     s7:Freed { symidx: temp_29_arithop_38, tracked: true } |     s8:Freed { symidx: temp_23_array_ele_38, tracked: true } |     s9:Freed { symidx: temp_24_arithop_38, tracked: true } | 


    sub     a0,a2,a3
              #                    free a2
              #                    free a3
              #                    free a0
              #                          new_var temp_44_array_ptr_40:ptr->i32 
              #                          temp_44_array_ptr_40 = getelementptr *dp_0:ptr->Array:i32:[Some(35_0)] [Some(temp_43_arithop_40), Some(j_18)] 
              #                    occupy a3 with temp_44_array_ptr_40
    li      a3, 0
              #                    store to temp_43_arithop_40 in mem offset legal
    sw      a0,128(sp)
              #                    release a0 with temp_43_arithop_40
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_42_array_ele_40 in mem offset legal
    sw      a1,132(sp)
              #                    release a1 with temp_42_array_ele_40
              #                    occupy a1 with temp_43_arithop_40
              #                    load from temp_43_arithop_40 in mem


    lw      a1,128(sp)
              #                    store to i_18 in mem offset legal
    sw      a2,336(sp)
              #                    release a2 with i_18
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with *dp_0
              #                       load label dp as ptr to reg
    la      a0, dp
              #                    occupy reg a0 with *dp_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_45_array_ele_40:i32 
              #                          temp_45_array_ele_40 = load temp_44_array_ptr_40:ptr->i32 
              #                    occupy a3 with temp_44_array_ptr_40
              #                    occupy a0 with temp_45_array_ele_40
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_46_arithop_40:i32 
              #                          temp_46_arithop_40 = Add i32 temp_45_array_ele_40, temp_42_array_ele_40 
              #                    occupy a0 with temp_45_array_ele_40
              #                    occupy a2 with temp_42_array_ele_40
              #                    load from temp_42_array_ele_40 in mem


    lw      a2,132(sp)
              #                    store to temp_43_arithop_40 in mem offset legal
    sw      a1,128(sp)
              #                    release a1 with temp_43_arithop_40
              #                    occupy a1 with temp_46_arithop_40
    add     a1,a0,a2
              #                    free a0
              #                    free a2
              #                    free a1
              #                          store temp_46_arithop_40:i32 temp_38_index_ptr_40:ptr->i32 
              #                    occupy s3 with temp_38_index_ptr_40
              #                    occupy a1 with temp_46_arithop_40
    sw      a1,0(s3)
              #                    free a1
              #                    free s3
              #                          mu *dp_0:206 
              #                          *dp_0 = chi *dp_0:206 
              #                          jump label: L1_0 
              #                    store to temp_38_index_ptr_40 in mem offset legal
    sd      s3,152(sp)
              #                    release s3 with temp_38_index_ptr_40
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_37_cmp_38, tracked: true } |     a1:Freed { symidx: temp_36_arithop_38, tracked: true } |     a2:Freed { symidx: temp_33_arithop_38, tracked: true } |     a3:Freed { symidx: temp_32_array_ele_38, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_25_arithop_38, tracked: true } |     s11:Freed { symidx: temp_26_array_ptr_38, tracked: true } |     s1:Freed { symidx: temp_27_array_ele_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_38, tracked: true } |     s6:Freed { symidx: temp_31_array_ptr_38, tracked: true } |     s7:Freed { symidx: temp_29_arithop_38, tracked: true } |     s8:Freed { symidx: temp_23_array_ele_38, tracked: true } |     s9:Freed { symidx: temp_24_arithop_38, tracked: true } | 
              #                          label branch_false_39: 
.branch_false_39:
              #                          new_var temp_48_index_ptr_42:ptr->i32 
              #                          temp_48_index_ptr_42 = getelementptr *dp_0:ptr->Array:i32:[Some(35_0)] [Some(i_18), Some(j_18)] 
              #                    occupy s3 with temp_48_index_ptr_42
    li      s3, 0
              #                    store to temp_37_cmp_38 in mem offset legal
    sb      a0,167(sp)
              #                    release a0 with temp_37_cmp_38
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_36_arithop_38 in mem offset legal
    sw      a1,168(sp)
              #                    release a1 with temp_36_arithop_38
              #                    occupy a1 with i_18
              #                    load from i_18 in mem


    lw      a1,336(sp)
              #                    store to temp_33_arithop_38 in mem offset legal
    sw      a2,184(sp)
              #                    release a2 with temp_33_arithop_38
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s3,s3,a2
              #                    free a2
    slli s3,s3,2
              #                    occupy a0 with *dp_0
              #                       load label dp as ptr to reg
    la      a0, dp
              #                    occupy reg a0 with *dp_0
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          new_var temp_49_arithop_42:i32 
              #                          temp_49_arithop_42 = Add i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_49_arithop_42
    add     a2,a6,a0
              #                    free a6
              #                    free a0
              #                    free a2
              #                          new_var temp_50_arithop_42:i32 
              #                          temp_50_arithop_42 = Mod i32 temp_49_arithop_42, 2_0 
              #                    occupy a2 with temp_49_arithop_42
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    store to i_18 in mem offset legal
    sw      a1,336(sp)
              #                    release a1 with i_18
              #                    occupy a1 with temp_50_arithop_42
              #                    load from temp_50_arithop_42 in mem


    lw      a1,88(sp)
    rem     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_51_array_ptr_42:ptr->i32 
              #                          temp_51_array_ptr_42 = getelementptr *t_0:ptr->Array:i32:[Some(2_0)] [Some(i_18), Some(temp_50_arithop_42)] 
              #                    occupy a0 with temp_51_array_ptr_42
    li      a0, 0
              #                    store to temp_50_arithop_42 in mem offset legal
    sw      a1,88(sp)
              #                    release a1 with temp_50_arithop_42
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_49_arithop_42 in mem offset legal
    sw      a2,92(sp)
              #                    release a2 with temp_49_arithop_42
              #                    occupy a2 with i_18
              #                    load from i_18 in mem


    lw      a2,336(sp)
              #                    store to temp_32_array_ele_38 in mem offset legal
    sw      a3,188(sp)
              #                    release a3 with temp_32_array_ele_38
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *t_0
              #                       load label t as ptr to reg
    la      a1, t
              #                    occupy reg a1 with *t_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_52_array_ele_42:i32 
              #                          temp_52_array_ele_42 = load temp_51_array_ptr_42:ptr->i32 
              #                    occupy a0 with temp_51_array_ptr_42
              #                    occupy a1 with temp_52_array_ele_42
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_53_arithop_42:i32 
              #                          temp_53_arithop_42 = Sub i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    store to temp_51_array_ptr_42 in mem offset legal
    sd      a0,80(sp)
              #                    release a0 with temp_51_array_ptr_42
              #                    occupy a0 with temp_53_arithop_42
              #                    regtab:    a0:Occupied { symidx: temp_53_arithop_42, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_52_array_ele_42, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Occupied { symidx: j_18, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_25_arithop_38, tracked: true } |     s11:Freed { symidx: temp_26_array_ptr_38, tracked: true } |     s1:Freed { symidx: temp_27_array_ele_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s3:Freed { symidx: temp_48_index_ptr_42, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_38, tracked: true } |     s6:Freed { symidx: temp_31_array_ptr_38, tracked: true } |     s7:Freed { symidx: temp_29_arithop_38, tracked: true } |     s8:Freed { symidx: temp_23_array_ele_38, tracked: true } |     s9:Freed { symidx: temp_24_arithop_38, tracked: true } | 


    sub     a0,a6,a3
              #                    free a6
              #                    free a3
              #                    free a0
              #                          new_var temp_54_arithop_42:i32 
              #                          temp_54_arithop_42 = Sub i32 i_18, 1_0 
              #                    occupy a2 with i_18
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    store to temp_53_arithop_42 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_53_arithop_42
              #                    occupy a0 with temp_54_arithop_42
              #                    regtab:    a0:Occupied { symidx: temp_54_arithop_42, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_52_array_ele_42, tracked: true } |     a2:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_25_arithop_38, tracked: true } |     s11:Freed { symidx: temp_26_array_ptr_38, tracked: true } |     s1:Freed { symidx: temp_27_array_ele_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s3:Freed { symidx: temp_48_index_ptr_42, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_38, tracked: true } |     s6:Freed { symidx: temp_31_array_ptr_38, tracked: true } |     s7:Freed { symidx: temp_29_arithop_38, tracked: true } |     s8:Freed { symidx: temp_23_array_ele_38, tracked: true } |     s9:Freed { symidx: temp_24_arithop_38, tracked: true } | 


    sub     a0,a2,a3
              #                    free a2
              #                    free a3
              #                    free a0
              #                          new_var temp_55_array_ptr_42:ptr->i32 
              #                          temp_55_array_ptr_42 = getelementptr *dp_0:ptr->Array:i32:[Some(35_0)] [Some(temp_54_arithop_42), Some(temp_53_arithop_42)] 
              #                    occupy a3 with temp_55_array_ptr_42
    li      a3, 0
              #                    store to temp_54_arithop_42 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_54_arithop_42
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_52_array_ele_42 in mem offset legal
    sw      a1,76(sp)
              #                    release a1 with temp_52_array_ele_42
              #                    occupy a1 with temp_54_arithop_42
              #                    load from temp_54_arithop_42 in mem


    lw      a1,68(sp)
              #                    store to i_18 in mem offset legal
    sw      a2,336(sp)
              #                    release a2 with i_18
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with *dp_0
              #                       load label dp as ptr to reg
    la      a0, dp
              #                    occupy reg a0 with *dp_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_56_array_ele_42:i32 
              #                          temp_56_array_ele_42 = load temp_55_array_ptr_42:ptr->i32 
              #                    occupy a3 with temp_55_array_ptr_42
              #                    occupy a0 with temp_56_array_ele_42
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_57_arithop_42:i32 
              #                          temp_57_arithop_42 = Add i32 temp_56_array_ele_42, temp_52_array_ele_42 
              #                    occupy a0 with temp_56_array_ele_42
              #                    occupy a2 with temp_52_array_ele_42
              #                    load from temp_52_array_ele_42 in mem


    lw      a2,76(sp)
              #                    store to temp_54_arithop_42 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with temp_54_arithop_42
              #                    occupy a1 with temp_57_arithop_42
    add     a1,a0,a2
              #                    free a0
              #                    free a2
              #                    free a1
              #                          store temp_57_arithop_42:i32 temp_48_index_ptr_42:ptr->i32 
              #                    occupy s3 with temp_48_index_ptr_42
              #                    occupy a1 with temp_57_arithop_42
    sw      a1,0(s3)
              #                    free a1
              #                    free s3
              #                          mu *dp_0:243 
              #                          *dp_0 = chi *dp_0:243 
              #                          jump label: L1_0 
              #                    store to temp_48_index_ptr_42 in mem offset legal
    sd      s3,96(sp)
              #                    release s3 with temp_48_index_ptr_42
              #                    store to temp_57_arithop_42 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with temp_57_arithop_42
              #                    store to temp_52_array_ele_42 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with temp_52_array_ele_42
              #                    store to temp_55_array_ptr_42 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with temp_55_array_ptr_42
              #                    store to temp_56_array_ele_42 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_56_array_ele_42
              #                    occupy a1 with _anonymous_of_temp_46_arithop_40_0
              #                    load from temp_46_arithop_40 in mem


    lw      a1,112(sp)
              #                    occupy a2 with _anonymous_of_temp_42_array_ele_40_0
              #                    load from temp_42_array_ele_40 in mem


    lw      a2,132(sp)
              #                    occupy a3 with _anonymous_of_temp_44_array_ptr_40_0
              #                    load from temp_44_array_ptr_40 in mem
    ld      a3,120(sp)
              #                    occupy a0 with _anonymous_of_temp_45_array_ele_40_0
              #                    load from temp_45_array_ele_40 in mem


    lw      a0,116(sp)
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_45_array_ele_40, tracked: true } |     a1:Freed { symidx: temp_46_arithop_40, tracked: true } |     a2:Freed { symidx: temp_42_array_ele_40, tracked: true } |     a3:Freed { symidx: temp_44_array_ptr_40, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_25_arithop_38, tracked: true } |     s11:Freed { symidx: temp_26_array_ptr_38, tracked: true } |     s1:Freed { symidx: temp_27_array_ele_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_38, tracked: true } |     s6:Freed { symidx: temp_31_array_ptr_38, tracked: true } |     s7:Freed { symidx: temp_29_arithop_38, tracked: true } |     s8:Freed { symidx: temp_23_array_ele_38, tracked: true } |     s9:Freed { symidx: temp_24_arithop_38, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                    regtab     a0:Freed { symidx: temp_45_array_ele_40, tracked: true } |     a1:Freed { symidx: temp_46_arithop_40, tracked: true } |     a2:Freed { symidx: temp_42_array_ele_40, tracked: true } |     a3:Freed { symidx: temp_44_array_ptr_40, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } |     s10:Freed { symidx: temp_25_arithop_38, tracked: true } |     s11:Freed { symidx: temp_26_array_ptr_38, tracked: true } |     s1:Freed { symidx: temp_27_array_ele_38, tracked: true } |     s2:Freed { symidx: temp_20_arithop_38, tracked: true } |     s4:Freed { symidx: temp_21_arithop_38, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_38, tracked: true } |     s6:Freed { symidx: temp_31_array_ptr_38, tracked: true } |     s7:Freed { symidx: temp_29_arithop_38, tracked: true } |     s8:Freed { symidx: temp_23_array_ele_38, tracked: true } |     s9:Freed { symidx: temp_24_arithop_38, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_47_arithop_37:i32 
              #                          temp_47_arithop_37 = Add i32 j_18, 1_0 
              #                    occupy a6 with j_18
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    store to temp_45_array_ele_40 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_45_array_ele_40
              #                    occupy a0 with temp_47_arithop_37
    add     a0,a6,s3
              #                    free a6
              #                    free s3
              #                    free a0
              #                          j_18 = i32 temp_47_arithop_37 
              #                    occupy a0 with temp_47_arithop_37
              #                    occupy a6 with j_18
    mv      a6, a0
              #                    free a0
              #                    free a6
              #                          jump label: while.head_36 
              #                    store to temp_31_array_ptr_38 in mem offset legal
    sd      s6,192(sp)
              #                    release s6 with temp_31_array_ptr_38
              #                    store to temp_24_arithop_38 in mem offset legal
    sw      s9,232(sp)
              #                    release s9 with temp_24_arithop_38
              #                    store to temp_29_arithop_38 in mem offset legal
    sw      s7,204(sp)
              #                    release s7 with temp_29_arithop_38
              #                    store to temp_46_arithop_40 in mem offset legal
    sw      a1,112(sp)
              #                    release a1 with temp_46_arithop_40
              #                    store to temp_25_arithop_38 in mem offset legal
    sw      s10,228(sp)
              #                    release s10 with temp_25_arithop_38
              #                    store to temp_42_array_ele_40 in mem offset legal
    sw      a2,132(sp)
              #                    release a2 with temp_42_array_ele_40
              #                    store to temp_22_array_ptr_38 in mem offset legal
    sd      s5,240(sp)
              #                    release s5 with temp_22_array_ptr_38
              #                    store to temp_44_array_ptr_40 in mem offset legal
    sd      a3,120(sp)
              #                    release a3 with temp_44_array_ptr_40
              #                    store to temp_27_array_ele_38 in mem offset legal
    sw      s1,212(sp)
              #                    release s1 with temp_27_array_ele_38
              #                    store to temp_47_arithop_37 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_47_arithop_37
              #                    store to temp_26_array_ptr_38 in mem offset legal
    sd      s11,216(sp)
              #                    release s11 with temp_26_array_ptr_38
              #                    store to temp_19_cmp_35 in mem offset legal
    sb      a7,258(sp)
              #                    release a7 with temp_19_cmp_35
              #                    store to temp_20_arithop_38 in mem offset legal
    sw      s2,252(sp)
              #                    release s2 with temp_20_arithop_38
              #                    store to temp_21_arithop_38 in mem offset legal
    sw      s4,248(sp)
              #                    release s4 with temp_21_arithop_38
              #                    store to temp_23_array_ele_38 in mem offset legal
    sw      s8,236(sp)
              #                    release s8 with temp_23_array_ele_38
              #                    occupy a1 with _anonymous_of_W_18_0
              #                    load from W_18 in mem


    lw      a1,344(sp)
              #                    occupy a2 with _anonymous_of_i_18_0
              #                    load from i_18 in mem


    lw      a2,336(sp)
              #                    occupy a3 with _anonymous_of_T_18_0
              #                    load from T_18 in mem


    lw      a3,348(sp)
              #                    occupy a0 with _anonymous_of_temp_5_ret_of_getint_18_0
              #                    load from temp_5_ret_of_getint_18 in mem


    lw      a0,324(sp)
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: j_18, tracked: true } |     a7:Freed { symidx: temp_19_cmp_35, tracked: true } | 
              #                          label while.exit_36: 
.while.exit_36:
              #                          new_var temp_58_arithop_33:i32 
              #                          temp_58_arithop_33 = Add i32 i_18, 1_0 
              #                    occupy a2 with i_18
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_58_arithop_33
    add     s2,a2,s1
              #                    free a2
              #                    free s1
              #                    free s2
              #                          i_18 = i32 temp_58_arithop_33 
              #                    occupy s2 with temp_58_arithop_33
              #                    occupy a2 with i_18
    mv      a2, s2
              #                    free s2
              #                    free a2
              #                          jump label: while.head_32 
              #                    store to j_18 in mem offset legal
    sw      a6,332(sp)
              #                    release a6 with j_18
              #                    store to temp_18_cmp_31 in mem offset legal
    sb      a5,259(sp)
              #                    release a5 with temp_18_cmp_31
              #                    store to temp_19_cmp_35 in mem offset legal
    sb      a7,258(sp)
              #                    release a7 with temp_19_cmp_35
              #                    store to temp_58_arithop_33 in mem offset legal
    sw      s2,44(sp)
              #                    release s2 with temp_58_arithop_33
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } | 
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
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } | 
              #                          label while.head_49: 
.while.head_49:
              #                          new_var temp_59_cmp_48:i1 
              #                          temp_59_cmp_48 = icmp i32 Sle j_18, W_18 
              #                    occupy a7 with j_18
              #                    occupy a1 with W_18
              #                    occupy s1 with temp_59_cmp_48
    slt     s1,a1,a7
    xori    s1,s1,1
              #                    free a7
              #                    free a1
              #                    free s1
              #                          br i1 temp_59_cmp_48, label while.body_49, label while.exit_49 
              #                    occupy s1 with temp_59_cmp_48
              #                    free s1
              #                    occupy s1 with temp_59_cmp_48
    bnez    s1, .while.body_49
              #                    free s1
    j       .while.exit_49
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: temp_59_cmp_48, tracked: true } | 
              #                          label while.body_49: 
.while.body_49:
              #                          new_var temp_60_array_ptr_51:ptr->i32 
              #                          temp_60_array_ptr_51 = getelementptr *dp_0:ptr->Array:i32:[Some(35_0)] [Some(T_18), Some(j_18)] 
              #                    occupy s2 with temp_60_array_ptr_51
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a3 with T_18
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,s3,a3
              #                    free s3
              #                    free a3
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
              #                    occupy s5 with *dp_0
              #                       load label dp as ptr to reg
    la      s5, dp
              #                    occupy reg s5 with *dp_0
    add     s2,s2,s5
              #                    free s5
              #                    free s2
              #                          new_var temp_61_array_ele_51:i32 
              #                          temp_61_array_ele_51 = load temp_60_array_ptr_51:ptr->i32 
              #                    occupy s2 with temp_60_array_ptr_51
              #                    occupy s6 with temp_61_array_ele_51
    lw      s6,0(s2)
              #                    free s6
              #                    free s2
              #                          new_var temp_62_cmp_51:i1 
              #                          temp_62_cmp_51 = icmp i32 Slt res_18, temp_61_array_ele_51 
              #                    occupy a6 with res_18
              #                    occupy s6 with temp_61_array_ele_51
              #                    occupy s7 with temp_62_cmp_51
    slt     s7,a6,s6
              #                    free a6
              #                    free s6
              #                    free s7
              #                          br i1 temp_62_cmp_51, label branch_true_52, label branch_false_52 
              #                    occupy s7 with temp_62_cmp_51
              #                    free s7
              #                    occupy s7 with temp_62_cmp_51
    bnez    s7, .branch_true_52
              #                    free s7
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: temp_59_cmp_48, tracked: true } |     s2:Freed { symidx: temp_60_array_ptr_51, tracked: true } |     s6:Freed { symidx: temp_61_array_ele_51, tracked: true } |     s7:Freed { symidx: temp_62_cmp_51, tracked: true } | 
              #                          label branch_true_52: 
.branch_true_52:
              #                          new_var temp_63_array_ptr_53:ptr->i32 
              #                          temp_63_array_ptr_53 = getelementptr *dp_0:ptr->Array:i32:[Some(35_0)] [Some(T_18), Some(j_18)] 
              #                    occupy s3 with temp_63_array_ptr_53
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a3 with T_18
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s4,a3
              #                    free s4
              #                    free a3
    add     s3,s3,s5
              #                    free s5
    slli s3,s3,2
              #                    occupy s8 with *dp_0
              #                       load label dp as ptr to reg
    la      s8, dp
              #                    occupy reg s8 with *dp_0
    add     s3,s3,s8
              #                    free s8
              #                    free s3
              #                          new_var temp_64_array_ele_53:i32 
              #                          temp_64_array_ele_53 = load temp_63_array_ptr_53:ptr->i32 
              #                    occupy s3 with temp_63_array_ptr_53
              #                    occupy s9 with temp_64_array_ele_53
    lw      s9,0(s3)
              #                    free s9
              #                    free s3
              #                          res_18 = i32 temp_64_array_ele_53 
              #                    occupy s9 with temp_64_array_ele_53
              #                    occupy a6 with res_18
    mv      a6, s9
              #                    free s9
              #                    free a6
              #                          jump label: branch_false_52 
              #                    store to temp_63_array_ptr_53 in mem offset legal
    sd      s3,8(sp)
              #                    release s3 with temp_63_array_ptr_53
              #                    store to temp_64_array_ele_53 in mem offset legal
    sw      s9,4(sp)
              #                    release s9 with temp_64_array_ele_53
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: temp_59_cmp_48, tracked: true } |     s2:Freed { symidx: temp_60_array_ptr_51, tracked: true } |     s6:Freed { symidx: temp_61_array_ele_51, tracked: true } |     s7:Freed { symidx: temp_62_cmp_51, tracked: true } | 
              #                          label branch_false_52: 
.branch_false_52:
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: temp_59_cmp_48, tracked: true } |     s2:Freed { symidx: temp_60_array_ptr_51, tracked: true } |     s6:Freed { symidx: temp_61_array_ele_51, tracked: true } |     s7:Freed { symidx: temp_62_cmp_51, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_65_arithop_50:i32 
              #                          temp_65_arithop_50 = Add i32 j_18, 1_0 
              #                    occupy a7 with j_18
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_65_arithop_50
    add     s4,a7,s3
              #                    free a7
              #                    free s3
              #                    free s4
              #                          j_18 = i32 temp_65_arithop_50 
              #                    occupy s4 with temp_65_arithop_50
              #                    occupy a7 with j_18
    mv      a7, s4
              #                    free s4
              #                    free a7
              #                          jump label: while.head_49 
              #                    store to temp_61_array_ele_51 in mem offset legal
    sw      s6,20(sp)
              #                    release s6 with temp_61_array_ele_51
              #                    store to temp_62_cmp_51 in mem offset legal
    sb      s7,19(sp)
              #                    release s7 with temp_62_cmp_51
              #                    store to temp_59_cmp_48 in mem offset legal
    sb      s1,39(sp)
              #                    release s1 with temp_59_cmp_48
              #                    store to temp_60_array_ptr_51 in mem offset legal
    sd      s2,24(sp)
              #                    release s2 with temp_60_array_ptr_51
              #                    store to temp_65_arithop_50 in mem offset legal
    sw      s4,0(sp)
              #                    release s4 with temp_65_arithop_50
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getint_18, tracked: true } |     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a6:Freed { symidx: res_18, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: temp_59_cmp_48, tracked: true } | 
              #                          label while.exit_49: 
.while.exit_49:
              #                          ret res_18 
              #                    load from ra_main_0 in mem
    ld      ra,360(sp)
              #                    load from s0_main_0 in mem
    ld      s0,352(sp)
              #                    store to res_18 in mem offset legal
    sw      a6,40(sp)
              #                    release a6 with res_18
              #                    store to temp_5_ret_of_getint_18 in mem offset legal
    sw      a0,324(sp)
              #                    release a0 with temp_5_ret_of_getint_18
              #                    occupy a0 with res_18
              #                    load from res_18 in mem


    lw      a0,40(sp)
    addi    sp,sp,368
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: W_18, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: T_18, tracked: true } |     a4:Freed { symidx: temp_6_cmp_23, tracked: true } |     a5:Freed { symidx: temp_18_cmp_31, tracked: true } |     a7:Freed { symidx: j_18, tracked: true } |     s1:Freed { symidx: temp_59_cmp_48, tracked: true } | 
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
