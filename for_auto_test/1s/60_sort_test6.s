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
              #                     19   Define counting_sort_0 "ini_arr_17,sorted_arr_17,n_17_0," -> counting_sort_ret_0 
    .globl counting_sort
    .type counting_sort,@function
counting_sort:
              #                    mem layout:|ra_counting_sort:8 at 344|s0_counting_sort:8 at 336|ini_arr:8 at 328|ini_arr:8 at 320|sorted_arr:8 at 312|sorted_arr:8 at 304|sorted_arr:8 at 296|sorted_arr:8 at 288|n _s17 _i0:4 at 284|count_arr:40 at 244|i _s19 _i0:4 at 240|i _s19 _i2:4 at 236|j _s19 _i0:4 at 232|j _s19 _i2:4 at 228|j _s19 _i3:4 at 224|k _s19 _i0:4 at 220|k _s19 _i2:4 at 216|k _s19 _i5:4 at 212|temp_0_arithop _s46 _i0:4 at 208|temp_1_ptr_of_ini_arr_17:8 at 200|temp_2_ele_of_ini_arr_17 _s46 _i0:4 at 196|none:4 at 192|temp_3_ptr_of_count_arr_19:8 at 184|temp_5_ptr_of_ini_arr_17:8 at 176|temp_7_ptr_of_count_arr_19:8 at 168|temp_8_ele_of_count_arr_19 _s46 _i0:4 at 164|temp_9_arithop _s46 _i0:4 at 160|temp_11_ptr_of_ini_arr_17:8 at 152|temp_13_ptr_of_count_arr_19:8 at 144|temp_14_ele_of_count_arr_19 _s46 _i0:4 at 140|none:4 at 136|temp_15_ptr_of_sorted_arr_17:8 at 128|temp_17_ptr_of_ini_arr_17:8 at 120|temp_20_ptr_of_count_arr_19:8 at 112|temp_21_ptr_of_count_arr_19:8 at 104|temp_22_ele_of_count_arr_19 _s40 _i0:4 at 100|temp_23_arithop _s40 _i0:4 at 96|temp_24_ptr_of_count_arr_19:8 at 88|temp_25_ele_of_count_arr_19 _s40 _i0:4 at 84|temp_26_arithop _s40 _i0:4 at 80|temp_27_arithop _s40 _i0:4 at 76|none:4 at 72|temp_28_ptr_of_ini_arr_17:8 at 64|temp_29_ele_of_ini_arr_17 _s34 _i0:4 at 60|none:4 at 56|temp_30_ptr_of_count_arr_19:8 at 48|temp_31_ptr_of_ini_arr_17:8 at 40|temp_33_ptr_of_count_arr_19:8 at 32|temp_34_ele_of_count_arr_19 _s34 _i0:4 at 28|temp_35_arithop _s34 _i0:4 at 24|temp_36_arithop _s34 _i0:4 at 20|none:4 at 16|temp_37_ptr_of_count_arr_19:8 at 8|temp_38_arithop _s29 _i0:4 at 4|temp_39_cmp _s27 _i0:1 at 3|temp_40_cmp _s32 _i0:1 at 2|temp_41_cmp _s38 _i0:1 at 1|temp_42_cmp _s44 _i0:1 at 0
    addi    sp,sp,-352
              #                    store to ra_counting_sort_0 in mem offset legal
    sd      ra,344(sp)
              #                    store to s0_counting_sort_0 in mem offset legal
    sd      s0,336(sp)
    addi    s0,sp,352
              #                     22   alloc Array:i32:[Some(10_0)] [count_arr_19] 
              #                     23   alloc i32 [i_19] 
              #                     25   alloc i32 [j_19] 
              #                     27   alloc i32 [k_19] 
              #                     36   alloc i32 [temp_0_arithop_46] 
              #                     38   alloc ptr->i32 [temp_1_ptr_of_ini_arr_17_46] 
              #                     40   alloc i32 [temp_2_ele_of_ini_arr_17_46] 
              #                     43   alloc ptr->i32 [temp_3_ptr_of_count_arr_19_46] 
              #                     45   alloc i32 [temp_4_arithop_46] 
              #                     47   alloc ptr->i32 [temp_5_ptr_of_ini_arr_17_46] 
              #                     49   alloc i32 [temp_6_ele_of_ini_arr_17_46] 
              #                     52   alloc ptr->i32 [temp_7_ptr_of_count_arr_19_46] 
              #                     54   alloc i32 [temp_8_ele_of_count_arr_19_46] 
              #                     57   alloc i32 [temp_9_arithop_46] 
              #                     61   alloc i32 [temp_10_arithop_46] 
              #                     63   alloc ptr->i32 [temp_11_ptr_of_ini_arr_17_46] 
              #                     65   alloc i32 [temp_12_ele_of_ini_arr_17_46] 
              #                     68   alloc ptr->i32 [temp_13_ptr_of_count_arr_19_46] 
              #                     70   alloc i32 [temp_14_ele_of_count_arr_19_46] 
              #                     73   alloc ptr->i32 [temp_15_ptr_of_sorted_arr_17_46] 
              #                     75   alloc i32 [temp_16_arithop_46] 
              #                     77   alloc ptr->i32 [temp_17_ptr_of_ini_arr_17_46] 
              #                     79   alloc i32 [temp_18_ele_of_ini_arr_17_46] 
              #                     84   alloc i32 [temp_19_arithop_46] 
              #                     87   alloc ptr->i32 [temp_20_ptr_of_count_arr_19_40] 
              #                     89   alloc ptr->i32 [temp_21_ptr_of_count_arr_19_40] 
              #                     91   alloc i32 [temp_22_ele_of_count_arr_19_40] 
              #                     94   alloc i32 [temp_23_arithop_40] 
              #                     96   alloc ptr->i32 [temp_24_ptr_of_count_arr_19_40] 
              #                     98   alloc i32 [temp_25_ele_of_count_arr_19_40] 
              #                     101  alloc i32 [temp_26_arithop_40] 
              #                     105  alloc i32 [temp_27_arithop_40] 
              #                     108  alloc ptr->i32 [temp_28_ptr_of_ini_arr_17_34] 
              #                     110  alloc i32 [temp_29_ele_of_ini_arr_17_34] 
              #                     113  alloc ptr->i32 [temp_30_ptr_of_count_arr_19_34] 
              #                     115  alloc ptr->i32 [temp_31_ptr_of_ini_arr_17_34] 
              #                     117  alloc i32 [temp_32_ele_of_ini_arr_17_34] 
              #                     120  alloc ptr->i32 [temp_33_ptr_of_count_arr_19_34] 
              #                     122  alloc i32 [temp_34_ele_of_count_arr_19_34] 
              #                     125  alloc i32 [temp_35_arithop_34] 
              #                     129  alloc i32 [temp_36_arithop_34] 
              #                     132  alloc ptr->i32 [temp_37_ptr_of_count_arr_19_29] 
              #                     136  alloc i32 [temp_38_arithop_29] 
              #                     139  alloc i1 [temp_39_cmp_27] 
              #                     145  alloc i1 [temp_40_cmp_32] 
              #                     150  alloc i1 [temp_41_cmp_38] 
              #                     156  alloc i1 [temp_42_cmp_44] 
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     17    
              #                     18    
              #                     21    
              #                     24    
              #                     26    
              #                     28    
              #                     29   (nop) 
              #                     30   (nop) 
              #                     31   (nop) 
              #                     268  k_19_2 = i32 0_0 
              #                    occupy a3 with k_19_2
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_28 
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17_0, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     141  label while.head_28: 
.while.head_28:
              #                     140  temp_39_cmp_27_0 = icmp i32 Slt k_19_2, 10_0 
              #                    occupy a3 with k_19_2
              #                    occupy a4 with 10_0
    li      a4, 10
              #                    occupy a5 with temp_39_cmp_27_0
    slt     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     144  br i1 temp_39_cmp_27_0, label while.body_28, label UP_16_0 
              #                    occupy a5 with temp_39_cmp_27_0
              #                    free a5
              #                    occupy a5 with temp_39_cmp_27_0
    bnez    a5, .while.body_28
              #                    free a5
    j       .UP_16_0
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17_0, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a5:Freed { symidx: temp_39_cmp_27_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     142  label while.body_28: 
.while.body_28:
              #                     133  temp_37_ptr_of_count_arr_19_29 = GEP count_arr_19_1:Array:i32:[Some(10_0)] [Some(k_19_2)] 
              #                    occupy a4 with temp_37_ptr_of_count_arr_19_29
    li      a4, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with k_19_2
    mv      a6, a3
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,244
              #                    free a4
              #                     134  store 0_0:i32 temp_37_ptr_of_count_arr_19_29:ptr->i32 
              #                    occupy a4 with temp_37_ptr_of_count_arr_19_29
              #                    occupy a7 with 0_0
    li      a7, 0
    sw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                     135  count_arr_19_2 = chi count_arr_19_1:134 
              #                     137  temp_38_arithop_29_0 = Add i32 k_19_2, 1_0 
              #                    occupy a3 with k_19_2
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_38_arithop_29_0
    ADDW    s2,a3,s1
              #                    free a3
              #                    free s1
              #                    free s2
              #                     138  (nop) 
              #                     269  k_19_2 = i32 temp_38_arithop_29_0 
              #                    occupy s2 with temp_38_arithop_29_0
              #                    occupy a3 with k_19_2
    mv      a3, s2
              #                    free s2
              #                    free a3
              #                          jump label: while.head_28 
              #                    occupy a4 with temp_37_ptr_of_count_arr_19_29
              #                    store to temp_37_ptr_of_count_arr_19_29 in mem offset legal
    sd      a4,8(sp)
              #                    release a4 with temp_37_ptr_of_count_arr_19_29
              #                    occupy s2 with temp_38_arithop_29_0
              #                    store to temp_38_arithop_29_0 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_38_arithop_29_0
              #                    occupy a5 with temp_39_cmp_27_0
              #                    store to temp_39_cmp_27_0 in mem offset legal
    sb      a5,3(sp)
              #                    release a5 with temp_39_cmp_27_0
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17_0, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a5:Freed { symidx: temp_39_cmp_27_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     267  label UP_16_0: 
.UP_16_0:
              #                     280  untrack temp_39_cmp_27_0 
              #                    occupy a5 with temp_39_cmp_27_0
              #                    release a5 with temp_39_cmp_27_0
              #                     279  untrack temp_38_arithop_29_0 
              #                     278  untrack temp_37_ptr_of_count_arr_19_29 
              #                     270  i_19_2 = i32 0_0 
              #                    occupy a4 with i_19_2
    li      a4, 0
              #                    free a4
              #                          jump label: while.exit_28 
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17_0, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     143  label while.exit_28: 
.while.exit_28:
              #                     146  temp_40_cmp_32_0 = icmp i32 Slt i_19_2, n_17_0 
              #                    occupy a4 with i_19_2
              #                    occupy a2 with n_17_0
              #                    occupy a5 with temp_40_cmp_32_0
    slt     a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                     149  br i1 temp_40_cmp_32_0, label while.body_33, label while.exit_33 
              #                    occupy a5 with temp_40_cmp_32_0
              #                    free a5
              #                    occupy a5 with temp_40_cmp_32_0
    bnez    a5, .while.body_33
              #                    free a5
    j       .while.exit_33
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17_0, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: temp_40_cmp_32_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     147  label while.body_33: 
.while.body_33:
              #                     109  temp_28_ptr_of_ini_arr_17_34 = GEP ini_arr_17:Array:i32:[None] [Some(i_19_2)] 
              #                    occupy a6 with temp_28_ptr_of_ini_arr_17_34
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_19_2
    mv      a7, a4
              #                    free a4
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy a0 with ini_arr_17
    add     a6,a6,a0
              #                    free a0
              #                    free a6
              #                     111  temp_29_ele_of_ini_arr_17_34_0 = load temp_28_ptr_of_ini_arr_17_34:ptr->i32 
              #                    occupy a6 with temp_28_ptr_of_ini_arr_17_34
              #                    occupy s1 with temp_29_ele_of_ini_arr_17_34_0
    lw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                     112  mu ini_arr_17:111 
              #                     114  temp_30_ptr_of_count_arr_19_34 = GEP count_arr_19_3:Array:i32:[Some(10_0)] [Some(temp_29_ele_of_ini_arr_17_34_0)] 
              #                    occupy s2 with temp_30_ptr_of_count_arr_19_34
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with temp_29_ele_of_ini_arr_17_34_0
    mv      s3, s1
              #                    free s1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,244
              #                    free s2
              #                     116  (nop) 
              #                     118  (nop) 
              #                     119  mu ini_arr_17:118 
              #                     121  (nop) 
              #                     123  temp_34_ele_of_count_arr_19_34_0 = load temp_30_ptr_of_count_arr_19_34:ptr->i32 
              #                    occupy s2 with temp_30_ptr_of_count_arr_19_34
              #                    occupy s4 with temp_34_ele_of_count_arr_19_34_0
    lw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                     124  mu count_arr_19_3:123 
              #                     126  temp_35_arithop_34_0 = Add i32 temp_34_ele_of_count_arr_19_34_0, 1_0 
              #                    occupy s4 with temp_34_ele_of_count_arr_19_34_0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with temp_35_arithop_34_0
    ADDW    s6,s4,s5
              #                    free s4
              #                    occupy s4 with temp_34_ele_of_count_arr_19_34_0
              #                    store to temp_34_ele_of_count_arr_19_34_0 in mem offset legal
    sw      s4,28(sp)
              #                    release s4 with temp_34_ele_of_count_arr_19_34_0
              #                    free s5
              #                    free s6
              #                     127  store temp_35_arithop_34_0:i32 temp_30_ptr_of_count_arr_19_34:ptr->i32 
              #                    occupy s2 with temp_30_ptr_of_count_arr_19_34
              #                    occupy s6 with temp_35_arithop_34_0
    sw      s6,0(s2)
              #                    free s6
              #                    free s2
              #                     128  count_arr_19_4 = chi count_arr_19_3:127 
              #                     130  temp_36_arithop_34_0 = Add i32 i_19_2, 1_0 
              #                    occupy a4 with i_19_2
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy s4 with temp_36_arithop_34_0
    ADDW    s4,a4,s5
              #                    free a4
              #                    occupy a4 with i_19_2
              #                    store to i_19_2 in mem offset legal
    sw      a4,236(sp)
              #                    release a4 with i_19_2
              #                    free s5
              #                    free s4
              #                     131  (nop) 
              #                     271  i_19_2 = i32 temp_36_arithop_34_0 
              #                    occupy s4 with temp_36_arithop_34_0
              #                    occupy a4 with i_19_2
    mv      a4, s4
              #                    free s4
              #                    occupy s4 with temp_36_arithop_34_0
              #                    store to temp_36_arithop_34_0 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_36_arithop_34_0
              #                    free a4
              #                          jump label: while.exit_28 
              #                    occupy a6 with temp_28_ptr_of_ini_arr_17_34
              #                    store to temp_28_ptr_of_ini_arr_17_34 in mem offset legal
    sd      a6,64(sp)
              #                    release a6 with temp_28_ptr_of_ini_arr_17_34
              #                    occupy s1 with temp_29_ele_of_ini_arr_17_34_0
              #                    store to temp_29_ele_of_ini_arr_17_34_0 in mem offset legal
    sw      s1,60(sp)
              #                    release s1 with temp_29_ele_of_ini_arr_17_34_0
              #                    occupy s2 with temp_30_ptr_of_count_arr_19_34
              #                    store to temp_30_ptr_of_count_arr_19_34 in mem offset legal
    sd      s2,48(sp)
              #                    release s2 with temp_30_ptr_of_count_arr_19_34
              #                    occupy a5 with temp_40_cmp_32_0
              #                    store to temp_40_cmp_32_0 in mem offset legal
    sb      a5,2(sp)
              #                    release a5 with temp_40_cmp_32_0
              #                    occupy s6 with temp_35_arithop_34_0
              #                    store to temp_35_arithop_34_0 in mem offset legal
    sw      s6,24(sp)
              #                    release s6 with temp_35_arithop_34_0
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17_0, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: temp_40_cmp_32_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     148  label while.exit_33: 
.while.exit_33:
              #                     32   (nop) 
              #                     272  k_19_5 = i32 1_0 
              #                    occupy a6 with k_19_5
    li      a6, 1
              #                    free a6
              #                          jump label: while.head_39 
    j       .while.head_39
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17_0, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: temp_40_cmp_32_0, tracked: true } |     a6:Freed { symidx: k_19_5, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     152  label while.head_39: 
.while.head_39:
              #                     151  temp_41_cmp_38_0 = icmp i32 Slt k_19_5, 10_0 
              #                    occupy a6 with k_19_5
              #                    occupy a7 with 10_0
    li      a7, 10
              #                    occupy s1 with temp_41_cmp_38_0
    slt     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                     155  br i1 temp_41_cmp_38_0, label while.body_39, label while.exit_39 
              #                    occupy s1 with temp_41_cmp_38_0
              #                    free s1
              #                    occupy s1 with temp_41_cmp_38_0
    bnez    s1, .while.body_39
              #                    free s1
    j       .while.exit_39
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17_0, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: temp_40_cmp_32_0, tracked: true } |     a6:Freed { symidx: k_19_5, tracked: true } |     s1:Freed { symidx: temp_41_cmp_38_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     153  label while.body_39: 
.while.body_39:
              #                     88   temp_20_ptr_of_count_arr_19_40 = GEP count_arr_19_5:Array:i32:[Some(10_0)] [Some(k_19_5)] 
              #                    occupy a7 with temp_20_ptr_of_count_arr_19_40
    li      a7, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with k_19_5
    mv      s2, a6
              #                    free a6
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,244
              #                    free a7
              #                     90   (nop) 
              #                     92   temp_22_ele_of_count_arr_19_40_0 = load temp_20_ptr_of_count_arr_19_40:ptr->i32 
              #                    occupy a7 with temp_20_ptr_of_count_arr_19_40
              #                    occupy s3 with temp_22_ele_of_count_arr_19_40_0
    lw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                     93   mu count_arr_19_5:92 
              #                     95   temp_23_arithop_40_0 = Sub i32 k_19_5, 1_0 
              #                    occupy a6 with k_19_5
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_23_arithop_40_0
              #                    regtab:    a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17_0, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: temp_40_cmp_32_0, tracked: true } |     a6:Occupied { symidx: k_19_5, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: temp_20_ptr_of_count_arr_19_40, tracked: true } |     s1:Freed { symidx: temp_41_cmp_38_0, tracked: true } |     s2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s3:Freed { symidx: temp_22_ele_of_count_arr_19_40_0, tracked: true } |     s4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s5:Occupied { symidx: temp_23_arithop_40_0, tracked: true, occupy_count: 1 } |  released_gpr_count:4,released_fpr_count:24


    subw    s5,a6,s4
              #                    free a6
              #                    occupy a6 with k_19_5
              #                    store to k_19_5 in mem offset legal
    sw      a6,212(sp)
              #                    release a6 with k_19_5
              #                    free s4
              #                    free s5
              #                     97   temp_24_ptr_of_count_arr_19_40 = GEP count_arr_19_5:Array:i32:[Some(10_0)] [Some(temp_23_arithop_40_0)] 
              #                    occupy a6 with temp_24_ptr_of_count_arr_19_40
    li      a6, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with temp_23_arithop_40_0
    mv      s6, s5
              #                    free s5
              #                    occupy s5 with temp_23_arithop_40_0
              #                    store to temp_23_arithop_40_0 in mem offset legal
    sw      s5,96(sp)
              #                    release s5 with temp_23_arithop_40_0
    add     a6,a6,s6
              #                    free s6
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,244
              #                    free a6
              #                     99   temp_25_ele_of_count_arr_19_40_0 = load temp_24_ptr_of_count_arr_19_40:ptr->i32 
              #                    occupy a6 with temp_24_ptr_of_count_arr_19_40
              #                    occupy s5 with temp_25_ele_of_count_arr_19_40_0
    lw      s5,0(a6)
              #                    free s5
              #                    occupy s5 with temp_25_ele_of_count_arr_19_40_0
              #                    store to temp_25_ele_of_count_arr_19_40_0 in mem offset legal
    sw      s5,84(sp)
              #                    release s5 with temp_25_ele_of_count_arr_19_40_0
              #                    free a6
              #                     100  mu count_arr_19_5:99 
              #                     102  temp_26_arithop_40_0 = Add i32 temp_22_ele_of_count_arr_19_40_0, temp_25_ele_of_count_arr_19_40_0 
              #                    occupy s3 with temp_22_ele_of_count_arr_19_40_0
              #                    occupy s5 with temp_25_ele_of_count_arr_19_40_0
              #                    load from temp_25_ele_of_count_arr_19_40_0 in mem


    lw      s5,84(sp)
              #                    occupy s6 with temp_26_arithop_40_0
    ADDW    s6,s3,s5
              #                    free s3
              #                    occupy s3 with temp_22_ele_of_count_arr_19_40_0
              #                    store to temp_22_ele_of_count_arr_19_40_0 in mem offset legal
    sw      s3,100(sp)
              #                    release s3 with temp_22_ele_of_count_arr_19_40_0
              #                    free s5
              #                    occupy s5 with temp_25_ele_of_count_arr_19_40_0
              #                    store to temp_25_ele_of_count_arr_19_40_0 in mem offset legal
    sw      s5,84(sp)
              #                    release s5 with temp_25_ele_of_count_arr_19_40_0
              #                    free s6
              #                     103  store temp_26_arithop_40_0:i32 temp_20_ptr_of_count_arr_19_40:ptr->i32 
              #                    occupy a7 with temp_20_ptr_of_count_arr_19_40
              #                    occupy s6 with temp_26_arithop_40_0
    sw      s6,0(a7)
              #                    free s6
              #                    free a7
              #                     104  count_arr_19_6 = chi count_arr_19_5:103 
              #                     106  temp_27_arithop_40_0 = Add i32 k_19_5, 1_0 
              #                    occupy s3 with k_19_5
              #                    load from k_19_5 in mem


    lw      s3,212(sp)
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s5 with temp_27_arithop_40_0
    ADDW    s5,s3,s4
              #                    free s3
              #                    occupy s3 with k_19_5
              #                    store to k_19_5 in mem offset legal
    sw      s3,212(sp)
              #                    release s3 with k_19_5
              #                    free s4
              #                    free s5
              #                     107  (nop) 
              #                     273  k_19_5 = i32 temp_27_arithop_40_0 
              #                    occupy s5 with temp_27_arithop_40_0
              #                    occupy s3 with k_19_5
    mv      s3, s5
              #                    free s5
              #                    occupy s5 with temp_27_arithop_40_0
              #                    store to temp_27_arithop_40_0 in mem offset legal
    sw      s5,76(sp)
              #                    release s5 with temp_27_arithop_40_0
              #                    free s3
              #                          jump label: while.head_39 
              #                    occupy a6 with temp_24_ptr_of_count_arr_19_40
              #                    store to temp_24_ptr_of_count_arr_19_40 in mem offset legal
    sd      a6,88(sp)
              #                    release a6 with temp_24_ptr_of_count_arr_19_40
              #                    occupy s3 with k_19_5
              #                    store to k_19_5 in mem offset legal
    sw      s3,212(sp)
              #                    release s3 with k_19_5
              #                    occupy a6 with k_19_5
              #                    load from k_19_5 in mem


    lw      a6,212(sp)
              #                    occupy s1 with temp_41_cmp_38_0
              #                    store to temp_41_cmp_38_0 in mem offset legal
    sb      s1,1(sp)
              #                    release s1 with temp_41_cmp_38_0
              #                    occupy a7 with temp_20_ptr_of_count_arr_19_40
              #                    store to temp_20_ptr_of_count_arr_19_40 in mem offset legal
    sd      a7,112(sp)
              #                    release a7 with temp_20_ptr_of_count_arr_19_40
              #                    occupy s6 with temp_26_arithop_40_0
              #                    store to temp_26_arithop_40_0 in mem offset legal
    sw      s6,80(sp)
              #                    release s6 with temp_26_arithop_40_0
    j       .while.head_39
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17_0, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: temp_40_cmp_32_0, tracked: true } |     a6:Freed { symidx: k_19_5, tracked: true } |     s1:Freed { symidx: temp_41_cmp_38_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     154  label while.exit_39: 
.while.exit_39:
              #                     281  untrack k_19_5 
              #                    occupy a6 with k_19_5
              #                    release a6 with k_19_5
              #                     33   j_19_2 = i32 n_17_0 
              #                    occupy a2 with n_17_0
              #                    occupy a6 with j_19_2
    mv      a6, a2
              #                    free a2
              #                    free a6
              #                     283  untrack n_17_0 
              #                    occupy a2 with n_17_0
              #                    release a2 with n_17_0
              #                     274  j_19_3 = i32 j_19_2 
              #                    occupy a6 with j_19_2
              #                    occupy a2 with j_19_3
    mv      a2, a6
              #                    free a6
              #                    free a2
              #                     282  untrack j_19_2 
              #                    occupy a6 with j_19_2
              #                    release a6 with j_19_2
              #                          jump label: while.head_45 
    j       .while.head_45
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: j_19_3, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: temp_40_cmp_32_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_38_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     158  label while.head_45: 
.while.head_45:
              #                     157  temp_42_cmp_44_0 = icmp i32 Sgt j_19_3, 0_0 
              #                    occupy a2 with j_19_3
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with temp_42_cmp_44_0
    slt     a7,a6,a2
              #                    free a2
              #                    free a6
              #                    free a7
              #                     161  br i1 temp_42_cmp_44_0, label while.body_45, label while.exit_45 
              #                    occupy a7 with temp_42_cmp_44_0
              #                    free a7
              #                    occupy a7 with temp_42_cmp_44_0
    bnez    a7, .while.body_45
              #                    free a7
    j       .while.exit_45
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: j_19_3, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: temp_40_cmp_32_0, tracked: true } |     a7:Freed { symidx: temp_42_cmp_44_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_38_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     159  label while.body_45: 
.while.body_45:
              #                     37   temp_0_arithop_46_0 = Sub i32 j_19_3, 1_0 
              #                    occupy a2 with j_19_3
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s2 with temp_0_arithop_46_0
              #                    regtab:    a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Occupied { symidx: j_19_3, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: k_19_2, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: temp_40_cmp_32_0, tracked: true } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Freed { symidx: temp_42_cmp_44_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_38_0, tracked: true } |     s2:Occupied { symidx: temp_0_arithop_46_0, tracked: true, occupy_count: 1 } |  released_gpr_count:6,released_fpr_count:24


    subw    s2,a2,a6
              #                    free a2
              #                    free a6
              #                    free s2
              #                     39   temp_1_ptr_of_ini_arr_17_46 = GEP ini_arr_17:Array:i32:[None] [Some(temp_0_arithop_46_0)] 
              #                    occupy s3 with temp_1_ptr_of_ini_arr_17_46
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with temp_0_arithop_46_0
    mv      s4, s2
              #                    free s2
              #                    occupy s2 with temp_0_arithop_46_0
              #                    store to temp_0_arithop_46_0 in mem offset legal
    sw      s2,208(sp)
              #                    release s2 with temp_0_arithop_46_0
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with ini_arr_17
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     41   temp_2_ele_of_ini_arr_17_46_0 = load temp_1_ptr_of_ini_arr_17_46:ptr->i32 
              #                    occupy s3 with temp_1_ptr_of_ini_arr_17_46
              #                    occupy s2 with temp_2_ele_of_ini_arr_17_46_0
    lw      s2,0(s3)
              #                    free s2
              #                    occupy s2 with temp_2_ele_of_ini_arr_17_46_0
              #                    store to temp_2_ele_of_ini_arr_17_46_0 in mem offset legal
    sw      s2,196(sp)
              #                    release s2 with temp_2_ele_of_ini_arr_17_46_0
              #                    free s3
              #                     42   mu ini_arr_17:41 
              #                     44   temp_3_ptr_of_count_arr_19_46 = GEP count_arr_19_7:Array:i32:[Some(10_0)] [Some(temp_2_ele_of_ini_arr_17_46_0)] 
              #                    occupy s2 with temp_3_ptr_of_count_arr_19_46
    li      s2, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s6 with temp_2_ele_of_ini_arr_17_46_0
              #                    load from temp_2_ele_of_ini_arr_17_46_0 in mem


    lw      s6,196(sp)
    mv      s5, s6
              #                    free s6
              #                    occupy s6 with temp_2_ele_of_ini_arr_17_46_0
              #                    store to temp_2_ele_of_ini_arr_17_46_0 in mem offset legal
    sw      s6,196(sp)
              #                    release s6 with temp_2_ele_of_ini_arr_17_46_0
    add     s2,s2,s5
              #                    free s5
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,244
              #                    free s2
              #                    occupy s2 with temp_3_ptr_of_count_arr_19_46
              #                    store to temp_3_ptr_of_count_arr_19_46 in mem offset legal
    sd      s2,184(sp)
              #                    release s2 with temp_3_ptr_of_count_arr_19_46
              #                     46   (nop) 
              #                     48   (nop) 
              #                     50   (nop) 
              #                     51   mu ini_arr_17:50 
              #                     53   (nop) 
              #                     55   temp_8_ele_of_count_arr_19_46_0 = load temp_3_ptr_of_count_arr_19_46:ptr->i32 
              #                    occupy s2 with temp_3_ptr_of_count_arr_19_46
              #                    load from temp_3_ptr_of_count_arr_19_46 in mem
    ld      s2,184(sp)
              #                    occupy s5 with temp_8_ele_of_count_arr_19_46_0
    lw      s5,0(s2)
              #                    free s5
              #                    occupy s5 with temp_8_ele_of_count_arr_19_46_0
              #                    store to temp_8_ele_of_count_arr_19_46_0 in mem offset legal
    sw      s5,164(sp)
              #                    release s5 with temp_8_ele_of_count_arr_19_46_0
              #                    free s2
              #                    occupy s2 with temp_3_ptr_of_count_arr_19_46
              #                    store to temp_3_ptr_of_count_arr_19_46 in mem offset legal
    sd      s2,184(sp)
              #                    release s2 with temp_3_ptr_of_count_arr_19_46
              #                     56   mu count_arr_19_7:55 
              #                     58   temp_9_arithop_46_0 = Sub i32 temp_8_ele_of_count_arr_19_46_0, 1_0 
              #                    occupy s2 with temp_8_ele_of_count_arr_19_46_0
              #                    load from temp_8_ele_of_count_arr_19_46_0 in mem


    lw      s2,164(sp)
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s5 with temp_9_arithop_46_0
              #                    regtab:    a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: j_19_3, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: temp_40_cmp_32_0, tracked: true } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Freed { symidx: temp_42_cmp_44_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_38_0, tracked: true } |     s2:Occupied { symidx: temp_8_ele_of_count_arr_19_46_0, tracked: true, occupy_count: 1 } |     s3:Freed { symidx: temp_1_ptr_of_ini_arr_17_46, tracked: true } |     s4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s5:Occupied { symidx: temp_9_arithop_46_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    s5,s2,a6
              #                    free s2
              #                    occupy s2 with temp_8_ele_of_count_arr_19_46_0
              #                    store to temp_8_ele_of_count_arr_19_46_0 in mem offset legal
    sw      s2,164(sp)
              #                    release s2 with temp_8_ele_of_count_arr_19_46_0
              #                    free a6
              #                    free s5
              #                     59   store temp_9_arithop_46_0:i32 temp_3_ptr_of_count_arr_19_46:ptr->i32 
              #                    occupy a6 with temp_3_ptr_of_count_arr_19_46
              #                    load from temp_3_ptr_of_count_arr_19_46 in mem
    ld      a6,184(sp)
              #                    occupy s5 with temp_9_arithop_46_0
    sw      s5,0(a6)
              #                    free s5
              #                    occupy s5 with temp_9_arithop_46_0
              #                    store to temp_9_arithop_46_0 in mem offset legal
    sw      s5,160(sp)
              #                    release s5 with temp_9_arithop_46_0
              #                    free a6
              #                     60   count_arr_19_8 = chi count_arr_19_7:59 
              #                     62   (nop) 
              #                     64   (nop) 
              #                     66   (nop) 
              #                     67   mu ini_arr_17:66 
              #                     69   (nop) 
              #                     71   temp_14_ele_of_count_arr_19_46_0 = load temp_3_ptr_of_count_arr_19_46:ptr->i32 
              #                    occupy a6 with temp_3_ptr_of_count_arr_19_46
              #                    occupy s2 with temp_14_ele_of_count_arr_19_46_0
    lw      s2,0(a6)
              #                    free s2
              #                    occupy s2 with temp_14_ele_of_count_arr_19_46_0
              #                    store to temp_14_ele_of_count_arr_19_46_0 in mem offset legal
    sw      s2,140(sp)
              #                    release s2 with temp_14_ele_of_count_arr_19_46_0
              #                    free a6
              #                     72   mu count_arr_19_8:71 
              #                     74   temp_15_ptr_of_sorted_arr_17_46 = GEP sorted_arr_17:ptr->i32 [Some(temp_14_ele_of_count_arr_19_46_0)] 
              #                    occupy s2 with temp_15_ptr_of_sorted_arr_17_46
    li      s2, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s6 with temp_14_ele_of_count_arr_19_46_0
              #                    load from temp_14_ele_of_count_arr_19_46_0 in mem


    lw      s6,140(sp)
    mv      s5, s6
              #                    free s6
              #                    occupy s6 with temp_14_ele_of_count_arr_19_46_0
              #                    store to temp_14_ele_of_count_arr_19_46_0 in mem offset legal
    sw      s6,140(sp)
              #                    release s6 with temp_14_ele_of_count_arr_19_46_0
    add     s2,s2,s5
              #                    free s5
    slli s2,s2,2
              #                    occupy a1 with sorted_arr_17
    add     s2,s2,a1
              #                    free a1
              #                    occupy a1 with sorted_arr_17
              #                    store to sorted_arr_17 in mem offset legal
    sd      a1,288(sp)
              #                    release a1 with sorted_arr_17
              #                    free s2
              #                     76   (nop) 
              #                     78   (nop) 
              #                     80   (nop) 
              #                     81   mu ini_arr_17:80 
              #                     82   store temp_2_ele_of_ini_arr_17_46_0:i32 temp_15_ptr_of_sorted_arr_17_46:ptr->i32 
              #                    occupy s2 with temp_15_ptr_of_sorted_arr_17_46
              #                    occupy a1 with temp_2_ele_of_ini_arr_17_46_0
              #                    load from temp_2_ele_of_ini_arr_17_46_0 in mem


    lw      a1,196(sp)
    sw      a1,0(s2)
              #                    free a1
              #                    occupy a1 with temp_2_ele_of_ini_arr_17_46_0
              #                    store to temp_2_ele_of_ini_arr_17_46_0 in mem offset legal
    sw      a1,196(sp)
              #                    release a1 with temp_2_ele_of_ini_arr_17_46_0
              #                    free s2
              #                     83   sorted_arr_17 = chi sorted_arr_17:82 
              #                     85   (nop) 
              #                     86   (nop) 
              #                     275  j_19_3 = i32 temp_0_arithop_46_0 
              #                    occupy a1 with temp_0_arithop_46_0
              #                    load from temp_0_arithop_46_0 in mem


    lw      a1,208(sp)
              #                    occupy a2 with j_19_3
    mv      a2, a1
              #                    free a1
              #                    occupy a1 with temp_0_arithop_46_0
              #                    store to temp_0_arithop_46_0 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with temp_0_arithop_46_0
              #                    free a2
              #                          jump label: while.head_45 
              #                    occupy a1 with sorted_arr_17
              #                    load from sorted_arr_17 in mem
    ld      a1,288(sp)
              #                    occupy a6 with temp_3_ptr_of_count_arr_19_46
              #                    store to temp_3_ptr_of_count_arr_19_46 in mem offset legal
    sd      a6,184(sp)
              #                    release a6 with temp_3_ptr_of_count_arr_19_46
              #                    occupy s2 with temp_15_ptr_of_sorted_arr_17_46
              #                    store to temp_15_ptr_of_sorted_arr_17_46 in mem offset legal
    sd      s2,128(sp)
              #                    release s2 with temp_15_ptr_of_sorted_arr_17_46
              #                    occupy s3 with temp_1_ptr_of_ini_arr_17_46
              #                    store to temp_1_ptr_of_ini_arr_17_46 in mem offset legal
    sd      s3,200(sp)
              #                    release s3 with temp_1_ptr_of_ini_arr_17_46
              #                    occupy a7 with temp_42_cmp_44_0
              #                    store to temp_42_cmp_44_0 in mem offset legal
    sb      a7,0(sp)
              #                    release a7 with temp_42_cmp_44_0
    j       .while.head_45
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: j_19_3, tracked: true } |     a3:Freed { symidx: k_19_2, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: temp_40_cmp_32_0, tracked: true } |     a7:Freed { symidx: temp_42_cmp_44_0, tracked: true } |     s1:Freed { symidx: temp_41_cmp_38_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     160  label while.exit_45: 
.while.exit_45:
              #                     285  untrack j_19_3 
              #                    occupy a2 with j_19_3
              #                    release a2 with j_19_3
              #                     284  untrack ini_arr_17 
              #                    occupy a0 with ini_arr_17
              #                    release a0 with ini_arr_17
              #                     250  mu sorted_arr_17:35 
              #                     286  untrack sorted_arr_17 
              #                    occupy a1 with sorted_arr_17
              #                    release a1 with sorted_arr_17
              #                     35   ret 0_0 
              #                    load from ra_counting_sort_0 in mem
    ld      ra,344(sp)
              #                    load from s0_counting_sort_0 in mem
    ld      s0,336(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,352
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 232|s0_main:8 at 224|a:40 at 184|temp_43_ptr_of_a_52:8 at 176|temp_44_ptr_of_a_52:8 at 168|temp_45_ptr_of_a_52:8 at 160|temp_46_ptr_of_a_52:8 at 152|temp_47_ptr_of_a_52:8 at 144|temp_48_ptr_of_a_52:8 at 136|temp_49_ptr_of_a_52:8 at 128|temp_50_ptr_of_a_52:8 at 120|temp_51_ptr_of_a_52:8 at 112|temp_52_ptr_of_a_52:8 at 104|i _s52 _i0:4 at 100|i _s52 _i3:4 at 96|b:40 at 56|temp_53_ele_ptr_of_a_52:8 at 48|temp_54_ele_ptr_of_b_52:8 at 40|temp_55_value_from_ptr _s52 _i0:4 at 36|temp_56_ret_of_counting_sort _s52 _i0:4 at 32|tmp _s71 _i0:4 at 28|none:4 at 24|temp_57_ptr_of_b_52:8 at 16|temp_58_ele_of_b_52 _s71 _i0:4 at 12|temp_59_arithop _s71 _i0:4 at 8|temp_61_cmp _s69 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-240
              #                    store to ra_main_0 in mem offset legal
    sd      ra,232(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,224(sp)
    addi    s0,sp,240
              #                     251  n_0_1 = chi n_0_0:20 
              #                     167  alloc Array:i32:[Some(10_0)] [a_52] 
              #                     168  alloc ptr->i32 [temp_43_ptr_of_a_52_52] 
              #                     172  alloc ptr->i32 [temp_44_ptr_of_a_52_52] 
              #                     176  alloc ptr->i32 [temp_45_ptr_of_a_52_52] 
              #                     180  alloc ptr->i32 [temp_46_ptr_of_a_52_52] 
              #                     184  alloc ptr->i32 [temp_47_ptr_of_a_52_52] 
              #                     188  alloc ptr->i32 [temp_48_ptr_of_a_52_52] 
              #                     192  alloc ptr->i32 [temp_49_ptr_of_a_52_52] 
              #                     196  alloc ptr->i32 [temp_50_ptr_of_a_52_52] 
              #                     200  alloc ptr->i32 [temp_51_ptr_of_a_52_52] 
              #                     204  alloc ptr->i32 [temp_52_ptr_of_a_52_52] 
              #                     208  alloc i32 [i_52] 
              #                     212  alloc Array:i32:[Some(10_0)] [b_52] 
              #                     213  alloc ptr->i32 [temp_53_ele_ptr_of_a_52_52] 
              #                     215  alloc ptr->i32 [temp_54_ele_ptr_of_b_52_52] 
              #                     217  alloc i32 [temp_55_value_from_ptr_52] 
              #                     220  alloc i32 [temp_56_ret_of_counting_sort_52] 
              #                     225  alloc i32 [tmp_71] 
              #                     227  alloc ptr->i32 [temp_57_ptr_of_b_52_71] 
              #                     229  alloc i32 [temp_58_ele_of_b_52_71] 
              #                     236  alloc i32 [temp_59_arithop_71] 
              #                     239  alloc i32 [temp_60_value_from_ptr_69] 
              #                     242  alloc i1 [temp_61_cmp_69] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     164  store 10_0:i32 *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with 10_0
    li      a1, 10
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     165  n_0_2 = chi n_0_1:164 
              #                     166   
              #                     169  temp_43_ptr_of_a_52_52 = GEP a_52_0:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a2 with temp_43_ptr_of_a_52_52
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,184
              #                    free a2
              #                     170  store 4_0:i32 temp_43_ptr_of_a_52_52:ptr->i32 
              #                    occupy a2 with temp_43_ptr_of_a_52_52
              #                    occupy a4 with 4_0
    li      a4, 4
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     295  untrack temp_43_ptr_of_a_52_52 
              #                    occupy a2 with temp_43_ptr_of_a_52_52
              #                    release a2 with temp_43_ptr_of_a_52_52
              #                     171  a_52_1 = chi a_52_0:170 
              #                     173  temp_44_ptr_of_a_52_52 = GEP a_52_1:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a2 with temp_44_ptr_of_a_52_52
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,184
              #                    free a2
              #                     174  store 3_0:i32 temp_44_ptr_of_a_52_52:ptr->i32 
              #                    occupy a2 with temp_44_ptr_of_a_52_52
              #                    occupy a6 with 3_0
    li      a6, 3
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     299  untrack temp_44_ptr_of_a_52_52 
              #                    occupy a2 with temp_44_ptr_of_a_52_52
              #                    release a2 with temp_44_ptr_of_a_52_52
              #                     175  a_52_2 = chi a_52_1:174 
              #                     177  temp_45_ptr_of_a_52_52 = GEP a_52_2:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy a2 with temp_45_ptr_of_a_52_52
    li      a2, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 2
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,184
              #                    free a2
              #                     178  store 9_0:i32 temp_45_ptr_of_a_52_52:ptr->i32 
              #                    occupy a2 with temp_45_ptr_of_a_52_52
              #                    occupy s1 with 9_0
    li      s1, 9
    sw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                     298  untrack temp_45_ptr_of_a_52_52 
              #                    occupy a2 with temp_45_ptr_of_a_52_52
              #                    release a2 with temp_45_ptr_of_a_52_52
              #                     179  a_52_3 = chi a_52_2:178 
              #                     181  temp_46_ptr_of_a_52_52 = GEP a_52_3:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy a2 with temp_46_ptr_of_a_52_52
    li      a2, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 3
    add     a2,a2,s2
              #                    free s2
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,184
              #                    free a2
              #                     182  store 2_0:i32 temp_46_ptr_of_a_52_52:ptr->i32 
              #                    occupy a2 with temp_46_ptr_of_a_52_52
              #                    occupy s3 with 2_0
    li      s3, 2
    sw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                     290  untrack temp_46_ptr_of_a_52_52 
              #                    occupy a2 with temp_46_ptr_of_a_52_52
              #                    release a2 with temp_46_ptr_of_a_52_52
              #                     183  a_52_4 = chi a_52_3:182 
              #                     185  temp_47_ptr_of_a_52_52 = GEP a_52_4:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy a2 with temp_47_ptr_of_a_52_52
    li      a2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 4
    add     a2,a2,s4
              #                    free s4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,184
              #                    free a2
              #                     186  store 0_0:i32 temp_47_ptr_of_a_52_52:ptr->i32 
              #                    occupy a2 with temp_47_ptr_of_a_52_52
              #                    occupy s5 with 0_0
    li      s5, 0
    sw      s5,0(a2)
              #                    free s5
              #                    free a2
              #                     297  untrack temp_47_ptr_of_a_52_52 
              #                    occupy a2 with temp_47_ptr_of_a_52_52
              #                    release a2 with temp_47_ptr_of_a_52_52
              #                     187  a_52_5 = chi a_52_4:186 
              #                     189  temp_48_ptr_of_a_52_52 = GEP a_52_5:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a2 with temp_48_ptr_of_a_52_52
    li      a2, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 5
    add     a2,a2,s6
              #                    free s6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,184
              #                    free a2
              #                     190  store 1_0:i32 temp_48_ptr_of_a_52_52:ptr->i32 
              #                    occupy a2 with temp_48_ptr_of_a_52_52
              #                    occupy s7 with 1_0
    li      s7, 1
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     288  untrack temp_48_ptr_of_a_52_52 
              #                    occupy a2 with temp_48_ptr_of_a_52_52
              #                    release a2 with temp_48_ptr_of_a_52_52
              #                     191  a_52_6 = chi a_52_5:190 
              #                     193  temp_49_ptr_of_a_52_52 = GEP a_52_6:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a2 with temp_49_ptr_of_a_52_52
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,184
              #                    free a2
              #                     194  store 6_0:i32 temp_49_ptr_of_a_52_52:ptr->i32 
              #                    occupy a2 with temp_49_ptr_of_a_52_52
              #                    occupy s7 with 6_0
    li      s7, 6
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     289  untrack temp_49_ptr_of_a_52_52 
              #                    occupy a2 with temp_49_ptr_of_a_52_52
              #                    release a2 with temp_49_ptr_of_a_52_52
              #                     195  a_52_7 = chi a_52_6:194 
              #                     197  temp_50_ptr_of_a_52_52 = GEP a_52_7:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a2 with temp_50_ptr_of_a_52_52
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 7
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,184
              #                    free a2
              #                     198  store 5_0:i32 temp_50_ptr_of_a_52_52:ptr->i32 
              #                    occupy a2 with temp_50_ptr_of_a_52_52
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     296  untrack temp_50_ptr_of_a_52_52 
              #                    occupy a2 with temp_50_ptr_of_a_52_52
              #                    release a2 with temp_50_ptr_of_a_52_52
              #                     199  a_52_8 = chi a_52_7:198 
              #                     201  temp_51_ptr_of_a_52_52 = GEP a_52_8:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a2 with temp_51_ptr_of_a_52_52
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 8
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,184
              #                    free a2
              #                     202  store 7_0:i32 temp_51_ptr_of_a_52_52:ptr->i32 
              #                    occupy a2 with temp_51_ptr_of_a_52_52
              #                    occupy s7 with 7_0
    li      s7, 7
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     291  untrack temp_51_ptr_of_a_52_52 
              #                    occupy a2 with temp_51_ptr_of_a_52_52
              #                    release a2 with temp_51_ptr_of_a_52_52
              #                     203  a_52_9 = chi a_52_8:202 
              #                     205  temp_52_ptr_of_a_52_52 = GEP a_52_9:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a2 with temp_52_ptr_of_a_52_52
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 9
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,184
              #                    free a2
              #                     206  store 8_0:i32 temp_52_ptr_of_a_52_52:ptr->i32 
              #                    occupy a2 with temp_52_ptr_of_a_52_52
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     292  untrack temp_52_ptr_of_a_52_52 
              #                    occupy a2 with temp_52_ptr_of_a_52_52
              #                    release a2 with temp_52_ptr_of_a_52_52
              #                     207  a_52_10 = chi a_52_9:206 
              #                     209   
              #                     210  (nop) 
              #                     211   
              #                     214  temp_53_ele_ptr_of_a_52_52 = GEP a_52_10:Array:i32:[Some(10_0)] [] 
              #                    occupy a2 with temp_53_ele_ptr_of_a_52_52
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,184
              #                    free a2
              #                     216  temp_54_ele_ptr_of_b_52_52 = GEP b_52_0:Array:i32:[Some(10_0)] [] 
              #                    occupy s7 with temp_54_ele_ptr_of_b_52_52
    li      s7, 0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,56
              #                    free s7
              #                    occupy s7 with temp_54_ele_ptr_of_b_52_52
              #                    store to temp_54_ele_ptr_of_b_52_52 in mem offset legal
    sd      s7,40(sp)
              #                    release s7 with temp_54_ele_ptr_of_b_52_52
              #                     218  temp_55_value_from_ptr_52_0 = load *n_0:ptr->i32 
              #                    occupy s7 with *n_0
              #                       load label n as ptr to reg
    la      s7, n
              #                    occupy reg s7 with *n_0
              #                    occupy s8 with temp_55_value_from_ptr_52_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_55_value_from_ptr_52_0
              #                    store to temp_55_value_from_ptr_52_0 in mem offset legal
    sw      s8,36(sp)
              #                    release s8 with temp_55_value_from_ptr_52_0
              #                    free s7
              #                     219  mu n_0_2:218 
              #                     221  temp_56_ret_of_counting_sort_52_0 =  Call i32 counting_sort_0(temp_53_ele_ptr_of_a_52_52, temp_54_ele_ptr_of_b_52_52, temp_55_value_from_ptr_52_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_53_ele_ptr_of_a_52_52
              #                    store to temp_53_ele_ptr_of_a_52_52 in mem offset legal
    sd      a2,48(sp)
              #                    release a2 with temp_53_ele_ptr_of_a_52_52
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_53_ele_ptr_of_a_52_52_0
              #                    load from temp_53_ele_ptr_of_a_52_52 in mem
    ld      a0,48(sp)
              #                    occupy a1 with _anonymous_of_temp_54_ele_ptr_of_b_52_52_0
              #                    load from temp_54_ele_ptr_of_b_52_52 in mem
    ld      a1,40(sp)
              #                    occupy a2 with _anonymous_of_temp_55_value_from_ptr_52_0_0
              #                    load from temp_55_value_from_ptr_52_0 in mem


    lw      a2,36(sp)
              #                    arg load ended


    call    counting_sort
              #                     293  untrack temp_53_ele_ptr_of_a_52_52 
              #                     287  untrack temp_54_ele_ptr_of_b_52_52 
              #                     252  mu a_52_10:221 
              #                     253  mu b_52_0:221 
              #                     254  a_52_11 = chi a_52_10:221 
              #                     255  b_52_1 = chi b_52_0:221 
              #                     222  (nop) 
              #                     276  i_52_3 = i32 temp_56_ret_of_counting_sort_52_0 
              #                    occupy a0 with temp_56_ret_of_counting_sort_52_0
              #                    occupy a1 with i_52_3
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     294  untrack temp_56_ret_of_counting_sort_52_0 
              #                    occupy a0 with temp_56_ret_of_counting_sort_52_0
              #                    release a0 with temp_56_ret_of_counting_sort_52_0
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a1:Freed { symidx: i_52_3, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     244  label while.head_70: 
.while.head_70:
              #                     240  (nop) 
              #                     241  mu n_0_2:240 
              #                     243  temp_61_cmp_69_0 = icmp i32 Slt i_52_3, temp_55_value_from_ptr_52_0 
              #                    occupy a1 with i_52_3
              #                    occupy a0 with temp_55_value_from_ptr_52_0
              #                    load from temp_55_value_from_ptr_52_0 in mem


    lw      a0,36(sp)
              #                    occupy a2 with temp_61_cmp_69_0
    slt     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     247  br i1 temp_61_cmp_69_0, label while.body_70, label while.exit_70 
              #                    occupy a2 with temp_61_cmp_69_0
              #                    free a2
              #                    occupy a2 with temp_61_cmp_69_0
    bnez    a2, .while.body_70
              #                    free a2
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: temp_55_value_from_ptr_52_0, tracked: true } |     a1:Freed { symidx: i_52_3, tracked: true } |     a2:Freed { symidx: temp_61_cmp_69_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     245  label while.body_70: 
.while.body_70:
              #                     226   
              #                     228  temp_57_ptr_of_b_52_71 = GEP b_52_1:Array:i32:[Some(10_0)] [Some(i_52_3)] 
              #                    occupy a3 with temp_57_ptr_of_b_52_71
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_52_3
    mv      a4, a1
              #                    free a1
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,56
              #                    free a3
              #                     230  temp_58_ele_of_b_52_71_0 = load temp_57_ptr_of_b_52_71:ptr->i32 
              #                    occupy a3 with temp_57_ptr_of_b_52_71
              #                    occupy a5 with temp_58_ele_of_b_52_71_0
    lw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     231  mu b_52_1:230 
              #                     232  (nop) 
              #                     233   Call void putint_0(temp_58_ele_of_b_52_71_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_55_value_from_ptr_52_0
              #                    store to temp_55_value_from_ptr_52_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_55_value_from_ptr_52_0
              #                    occupy a1 with i_52_3
              #                    store to i_52_3 in mem offset legal
    sw      a1,96(sp)
              #                    release a1 with i_52_3
              #                    occupy a2 with temp_61_cmp_69_0
              #                    store to temp_61_cmp_69_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_61_cmp_69_0
              #                    occupy a3 with temp_57_ptr_of_b_52_71
              #                    store to temp_57_ptr_of_b_52_71 in mem offset legal
    sd      a3,16(sp)
              #                    release a3 with temp_57_ptr_of_b_52_71
              #                    occupy a5 with temp_58_ele_of_b_52_71_0
              #                    store to temp_58_ele_of_b_52_71_0 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_58_ele_of_b_52_71_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_58_ele_of_b_52_71_0_0
              #                    load from temp_58_ele_of_b_52_71_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     234  (nop) 
              #                     235   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     237  temp_59_arithop_71_0 = Add i32 i_52_3, 1_0 
              #                    occupy a0 with i_52_3
              #                    load from i_52_3 in mem


    lw      a0,96(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_59_arithop_71_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     238  (nop) 
              #                     277  i_52_3 = i32 temp_59_arithop_71_0 
              #                    occupy a2 with temp_59_arithop_71_0
              #                    occupy a0 with i_52_3
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_70 
              #                    occupy a2 with temp_59_arithop_71_0
              #                    store to temp_59_arithop_71_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_59_arithop_71_0
              #                    occupy a0 with i_52_3
              #                    store to i_52_3 in mem offset legal
    sw      a0,96(sp)
              #                    release a0 with i_52_3
              #                    occupy a1 with i_52_3
              #                    load from i_52_3 in mem


    lw      a1,96(sp)
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_55_value_from_ptr_52_0, tracked: true } |     a1:Freed { symidx: i_52_3, tracked: true } |     a2:Freed { symidx: temp_61_cmp_69_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     246  label while.exit_70: 
.while.exit_70:
              #                     301  untrack i_52_3 
              #                    occupy a1 with i_52_3
              #                    release a1 with i_52_3
              #                     300  untrack temp_55_value_from_ptr_52_0 
              #                    occupy a0 with temp_55_value_from_ptr_52_0
              #                    release a0 with temp_55_value_from_ptr_52_0
              #                     256  mu n_0_2:224 
              #                     224  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,232(sp)
              #                    load from s0_main_0 in mem
    ld      s0,224(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,240
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl n
              #                     15   global i32 n_0 
    .type n,@object
n:
    .word 0
