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
              #                     28   Define equal_0 "a_21_0,b_21_0," -> equal_ret_0 
    .globl equal
    .type equal,@function
equal:
              #                    mem layout:|ra_equal:8 at 24|s0_equal:8 at 16|a _s21 _i0:4 at 12|b _s21 _i0:4 at 8|temp_0_cmp _s24 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-32
              #                    store to ra_equal_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_equal_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     35   alloc i1 [temp_0_cmp_24] 
              #                    regtab     a0:Freed { symidx: a_21_0, tracked: true } |     a1:Freed { symidx: b_21_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     36   temp_0_cmp_24_0 = icmp i32 Eq a_21_0, b_21_0 
              #                    occupy a0 with a_21_0
              #                    occupy a1 with b_21_0
              #                    occupy a2 with temp_0_cmp_24_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     417  untrack b_21_0 
              #                    occupy a1 with b_21_0
              #                    release a1 with b_21_0
              #                     416  untrack a_21_0 
              #                    occupy a0 with a_21_0
              #                    release a0 with a_21_0
              #                     39   br i1 temp_0_cmp_24_0, label branch_true_25, label branch_false_25 
              #                    occupy a2 with temp_0_cmp_24_0
              #                    free a2
              #                    occupy a2 with temp_0_cmp_24_0
    bnez    a2, .branch_true_25
              #                    free a2
    j       .branch_false_25
              #                    regtab     a2:Freed { symidx: temp_0_cmp_24_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     37   label branch_true_25: 
.branch_true_25:
              #                     418  untrack temp_0_cmp_24_0 
              #                    occupy a2 with temp_0_cmp_24_0
              #                    release a2 with temp_0_cmp_24_0
              #                     34   ret 1_0 
              #                    load from ra_equal_0 in mem
    ld      ra,24(sp)
              #                    load from s0_equal_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_0_cmp_24_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     38   label branch_false_25: 
.branch_false_25:
              #                     419  untrack temp_0_cmp_24_0 
              #                    occupy a2 with temp_0_cmp_24_0
              #                    release a2 with temp_0_cmp_24_0
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     32   ret 0_0 
              #                    load from ra_equal_0 in mem
    ld      ra,24(sp)
              #                    load from s0_equal_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     29   Define dfs_0 "a_28_0,b_28_0,c_28_0,d_28_0,e_28_0,last_28_0," -> dfs_ret_0 
    .globl dfs
    .type dfs,@function
dfs:
              #                    mem layout:|ra_dfs:8 at 280|s0_dfs:8 at 272|a _s28 _i0:4 at 268|b _s28 _i0:4 at 264|c _s28 _i0:4 at 260|d _s28 _i0:4 at 256|e _s28 _i0:4 at 252|last _s28 _i0:4 at 248|ans _s30 _i2:4 at 244|ans _s30 _i4:4 at 240|ans _s30 _i6:4 at 236|ans _s30 _i8:4 at 232|ans _s30 _i10:4 at 228|none:4 at 224|temp_1_ptr_of_*dp_0:8 at 216|temp_2_arithop _s30 _i0:4 at 212|none:4 at 208|temp_3_ptr_of_*dp_0:8 at 200|temp_4_ele_of_*dp_0 _s30 _i0:4 at 196|temp_5_arithop _s50 _i0:4 at 192|temp_6_arithop _s50 _i0:4 at 188|temp_7_ret_of_dfs _s50 _i0:4 at 184|temp_8_arithop _s50 _i0:4 at 180|temp_9_arithop _s50 _i0:4 at 176|temp_10_arithop _s50 _i0:4 at 172|temp_11_ret_of_equal _s47 _i0:4 at 168|temp_12_arithop _s47 _i0:4 at 164|temp_13_arithop _s47 _i0:4 at 160|temp_14_arithop _s47 _i0:4 at 156|temp_15_ret_of_dfs _s47 _i0:4 at 152|temp_16_arithop _s47 _i0:4 at 148|temp_17_arithop _s47 _i0:4 at 144|temp_18_arithop _s47 _i0:4 at 140|temp_19_ret_of_equal _s44 _i0:4 at 136|temp_20_arithop _s44 _i0:4 at 132|temp_21_arithop _s44 _i0:4 at 128|temp_22_arithop _s44 _i0:4 at 124|temp_23_ret_of_dfs _s44 _i0:4 at 120|temp_24_arithop _s44 _i0:4 at 116|temp_25_arithop _s44 _i0:4 at 112|temp_26_arithop _s44 _i0:4 at 108|temp_27_ret_of_equal _s41 _i0:4 at 104|temp_28_arithop _s41 _i0:4 at 100|temp_29_arithop _s41 _i0:4 at 96|temp_30_arithop _s41 _i0:4 at 92|temp_31_ret_of_dfs _s41 _i0:4 at 88|temp_32_arithop _s41 _i0:4 at 84|temp_33_arithop _s41 _i0:4 at 80|temp_34_arithop _s41 _i0:4 at 76|temp_35_ret_of_equal _s38 _i0:4 at 72|temp_36_arithop _s38 _i0:4 at 68|temp_37_arithop _s38 _i0:4 at 64|temp_38_ret_of_dfs _s38 _i0:4 at 60|temp_39_arithop _s38 _i0:4 at 56|temp_40_arithop _s38 _i0:4 at 52|temp_41_arithop _s38 _i0:4 at 48|temp_42_ptr_of_*dp_0:8 at 40|temp_44_ptr_of_*dp_0:8 at 32|temp_45_ele_of_*dp_0 _s31 _i0:4 at 28|temp_46_cmp _s31 _i0:1 at 27|none:3 at 24|temp_47_arithop _s34 _i0:4 at 20|temp_48_arithop _s34 _i0:4 at 16|temp_49_arithop _s34 _i0:4 at 12|temp_50_arithop _s34 _i0:4 at 8|temp_51_cmp _s34 _i0:1 at 7|temp_52_ _s1245 _i0:1 at 6|temp_53_ _s1519 _i0:1 at 5|temp_54_ _s1800 _i0:1 at 4|temp_55_ _s2081 _i0:1 at 3|temp_56_ _s2362 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-288
              #                    store to ra_dfs_0 in mem offset legal
    sd      ra,280(sp)
              #                    store to s0_dfs_0 in mem offset legal
    sd      s0,272(sp)
    addi    s0,sp,288
              #                     340  dp_0_1 = chi dp_0_0:29 
              #                     43   alloc i32 [ans_30] 
              #                     44   alloc ptr->i32 [temp_1_ptr_of_*dp_0_30] 
              #                     46   alloc i32 [temp_2_arithop_30] 
              #                     51   alloc ptr->i32 [temp_3_ptr_of_*dp_0_30] 
              #                     53   alloc i32 [temp_4_ele_of_*dp_0_30] 
              #                     57   alloc i32 [temp_5_arithop_50] 
              #                     59   alloc i32 [temp_6_arithop_50] 
              #                     61   alloc i32 [temp_7_ret_of_dfs_50] 
              #                     63   alloc i32 [temp_8_arithop_50] 
              #                     65   alloc i32 [temp_9_arithop_50] 
              #                     67   alloc i32 [temp_10_arithop_50] 
              #                     70   alloc i32 [temp_11_ret_of_equal_47] 
              #                     72   alloc i32 [temp_12_arithop_47] 
              #                     74   alloc i32 [temp_13_arithop_47] 
              #                     76   alloc i32 [temp_14_arithop_47] 
              #                     78   alloc i32 [temp_15_ret_of_dfs_47] 
              #                     80   alloc i32 [temp_16_arithop_47] 
              #                     82   alloc i32 [temp_17_arithop_47] 
              #                     84   alloc i32 [temp_18_arithop_47] 
              #                     87   alloc i32 [temp_19_ret_of_equal_44] 
              #                     89   alloc i32 [temp_20_arithop_44] 
              #                     91   alloc i32 [temp_21_arithop_44] 
              #                     93   alloc i32 [temp_22_arithop_44] 
              #                     95   alloc i32 [temp_23_ret_of_dfs_44] 
              #                     97   alloc i32 [temp_24_arithop_44] 
              #                     99   alloc i32 [temp_25_arithop_44] 
              #                     101  alloc i32 [temp_26_arithop_44] 
              #                     104  alloc i32 [temp_27_ret_of_equal_41] 
              #                     106  alloc i32 [temp_28_arithop_41] 
              #                     108  alloc i32 [temp_29_arithop_41] 
              #                     110  alloc i32 [temp_30_arithop_41] 
              #                     112  alloc i32 [temp_31_ret_of_dfs_41] 
              #                     114  alloc i32 [temp_32_arithop_41] 
              #                     116  alloc i32 [temp_33_arithop_41] 
              #                     118  alloc i32 [temp_34_arithop_41] 
              #                     121  alloc i32 [temp_35_ret_of_equal_38] 
              #                     123  alloc i32 [temp_36_arithop_38] 
              #                     125  alloc i32 [temp_37_arithop_38] 
              #                     127  alloc i32 [temp_38_ret_of_dfs_38] 
              #                     129  alloc i32 [temp_39_arithop_38] 
              #                     131  alloc i32 [temp_40_arithop_38] 
              #                     133  alloc i32 [temp_41_arithop_38] 
              #                     139  alloc ptr->i32 [temp_42_ptr_of_*dp_0_31] 
              #                     141  alloc i32 [temp_43_ele_of_*dp_0_31] 
              #                     145  alloc ptr->i32 [temp_44_ptr_of_*dp_0_31] 
              #                     147  alloc i32 [temp_45_ele_of_*dp_0_31] 
              #                     150  alloc i1 [temp_46_cmp_31] 
              #                     155  alloc i32 [temp_47_arithop_34] 
              #                     157  alloc i32 [temp_48_arithop_34] 
              #                     159  alloc i32 [temp_49_arithop_34] 
              #                     161  alloc i32 [temp_50_arithop_34] 
              #                     163  alloc i1 [temp_51_cmp_34] 
              #                     168  alloc i1 [temp_52__1245] 
              #                     173  alloc i1 [temp_53__1519] 
              #                     178  alloc i1 [temp_54__1800] 
              #                     183  alloc i1 [temp_55__2081] 
              #                     188  alloc i1 [temp_56__2362] 
              #                    regtab     a0:Freed { symidx: a_28_0, tracked: true } |     a1:Freed { symidx: b_28_0, tracked: true } |     a2:Freed { symidx: c_28_0, tracked: true } |     a3:Freed { symidx: d_28_0, tracked: true } |     a4:Freed { symidx: e_28_0, tracked: true } |     a5:Freed { symidx: last_28_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     146  temp_44_ptr_of_*dp_0_31 = GEP *dp_0:Array:i32:[None, Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28_0), Some(b_28_0), Some(c_28_0), Some(d_28_0), Some(e_28_0), Some(last_28_0)] 
              #                    occupy a6 with temp_44_ptr_of_*dp_0_31
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with 734832_0
    li      s1, 734832
              #                    occupy a0 with a_28_0
    mul     a7,s1,a0
              #                    free s1
              #                    free a0
    add     a6,a6,a7
              #                    free a7
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with 40824_0
    li      s3, 40824
              #                    occupy a1 with b_28_0
    mul     s2,s3,a1
              #                    free s3
              #                    free a1
    add     a6,a6,s2
              #                    free s2
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with 2268_0
    li      s5, 2268
              #                    occupy a2 with c_28_0
    mul     s4,s5,a2
              #                    free s5
              #                    free a2
    add     a6,a6,s4
              #                    free s4
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s7 with 126_0
    li      s7, 126
              #                    occupy a3 with d_28_0
    mul     s6,s7,a3
              #                    free s7
              #                    free a3
    add     a6,a6,s6
              #                    free s6
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s8 with 7_0
    li      s8, 7
              #                    occupy a4 with e_28_0
    mul     s7,s8,a4
              #                    free s8
              #                    free a4
              #                    occupy a4 with e_28_0
              #                    store to e_28_0 in mem offset legal
    sw      a4,252(sp)
              #                    release a4 with e_28_0
    add     a6,a6,s7
              #                    free s7
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with last_28_0
    mv      a4, a5
              #                    free a5
              #                    occupy a5 with last_28_0
              #                    store to last_28_0 in mem offset legal
    sw      a5,248(sp)
              #                    release a5 with last_28_0
    add     a6,a6,a4
              #                    free a4
    slli a6,a6,2
              #                    occupy a5 with *dp_0
              #                       load label dp as ptr to reg
    la      a5, dp
              #                    occupy reg a5 with *dp_0
    add     a6,a6,a5
              #                    free a5
              #                    free a6
              #                     148  temp_45_ele_of_*dp_0_31_0 = load temp_44_ptr_of_*dp_0_31:ptr->i32 
              #                    occupy a6 with temp_44_ptr_of_*dp_0_31
              #                    occupy a5 with temp_45_ele_of_*dp_0_31_0
    lw      a5,0(a6)
              #                    free a5
              #                    occupy a5 with temp_45_ele_of_*dp_0_31_0
              #                    store to temp_45_ele_of_*dp_0_31_0 in mem offset legal
    sw      a5,28(sp)
              #                    release a5 with temp_45_ele_of_*dp_0_31_0
              #                    free a6
              #                     149  mu dp_0_1:148 
              #                     151  temp_46_cmp_31_0 = icmp i32 Ne temp_45_ele_of_*dp_0_31_0, -1_0 
              #                    occupy a5 with temp_45_ele_of_*dp_0_31_0
              #                    load from temp_45_ele_of_*dp_0_31_0 in mem


    lw      a5,28(sp)
              #                    occupy s8 with -1_0
    li      s8, -1
              #                    occupy s9 with temp_46_cmp_31_0
    xor     s9,a5,s8
    snez    s9, s9
              #                    free a5
              #                    occupy a5 with temp_45_ele_of_*dp_0_31_0
              #                    store to temp_45_ele_of_*dp_0_31_0 in mem offset legal
    sw      a5,28(sp)
              #                    release a5 with temp_45_ele_of_*dp_0_31_0
              #                    free s8
              #                    free s9
              #                    occupy s9 with temp_46_cmp_31_0
              #                    store to temp_46_cmp_31_0 in mem offset legal
    sb      s9,27(sp)
              #                    release s9 with temp_46_cmp_31_0
              #                     154  br i1 temp_46_cmp_31_0, label branch_true_32, label branch_false_32 
              #                    occupy a5 with temp_46_cmp_31_0
              #                    load from temp_46_cmp_31_0 in mem


    lb      a5,27(sp)
              #                    free a5
              #                    occupy a5 with temp_46_cmp_31_0
              #                    store to temp_46_cmp_31_0 in mem offset legal
    sb      a5,27(sp)
              #                    release a5 with temp_46_cmp_31_0
              #                    occupy a4 with temp_46_cmp_31_0
              #                    load from temp_46_cmp_31_0 in mem


    lb      a4,27(sp)
    bnez    a4, .branch_true_32
              #                    free a4
              #                    occupy a4 with temp_46_cmp_31_0
              #                    store to temp_46_cmp_31_0 in mem offset legal
    sb      a4,27(sp)
              #                    release a4 with temp_46_cmp_31_0
    j       .branch_false_32
              #                    regtab     a0:Freed { symidx: a_28_0, tracked: true } |     a1:Freed { symidx: b_28_0, tracked: true } |     a2:Freed { symidx: c_28_0, tracked: true } |     a3:Freed { symidx: d_28_0, tracked: true } |     a6:Freed { symidx: temp_44_ptr_of_*dp_0_31, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     152  label branch_true_32: 
.branch_true_32:
              #                     481  untrack temp_11_ret_of_equal_47_0 
              #                     480  untrack temp_53__1519_0 
              #                     479  untrack temp_34_arithop_41_0 
              #                     478  untrack a_28_0 
              #                    occupy a0 with a_28_0
              #                    release a0 with a_28_0
              #                     477  untrack temp_21_arithop_44_0 
              #                     476  untrack temp_38_ret_of_dfs_38_0 
              #                     475  untrack temp_7_ret_of_dfs_50_0 
              #                     474  untrack temp_31_ret_of_dfs_41_0 
              #                     473  untrack temp_51_cmp_34_0 
              #                     472  untrack temp_56__2362_0 
              #                     471  untrack temp_39_arithop_38_0 
              #                     470  untrack temp_27_ret_of_equal_41_0 
              #                     469  untrack temp_52__1245_0 
              #                     468  untrack temp_2_arithop_30_0 
              #                     467  untrack c_28_0 
              #                    occupy a2 with c_28_0
              #                    release a2 with c_28_0
              #                     466  untrack temp_40_arithop_38_0 
              #                     465  untrack temp_47_arithop_34_0 
              #                     464  untrack temp_36_arithop_38_0 
              #                     463  untrack temp_30_arithop_41_0 
              #                     462  untrack temp_50_arithop_34_0 
              #                     461  untrack temp_20_arithop_44_0 
              #                     460  untrack temp_12_arithop_47_0 
              #                     459  untrack temp_24_arithop_44_0 
              #                     458  untrack temp_49_arithop_34_0 
              #                     457  untrack temp_44_ptr_of_*dp_0_31 
              #                    occupy a6 with temp_44_ptr_of_*dp_0_31
              #                    release a6 with temp_44_ptr_of_*dp_0_31
              #                     456  untrack temp_8_arithop_50_0 
              #                     455  untrack temp_4_ele_of_*dp_0_30_0 
              #                     454  untrack temp_15_ret_of_dfs_47_0 
              #                     453  untrack temp_25_arithop_44_0 
              #                     452  untrack temp_46_cmp_31_0 
              #                     451  untrack temp_41_arithop_38_0 
              #                     450  untrack temp_26_arithop_44_0 
              #                     449  untrack temp_16_arithop_47_0 
              #                     448  untrack temp_37_arithop_38_0 
              #                     447  untrack temp_9_arithop_50_0 
              #                     446  untrack temp_10_arithop_50_0 
              #                     445  untrack temp_48_arithop_34_0 
              #                     444  untrack temp_17_arithop_47_0 
              #                     443  untrack temp_54__1800_0 
              #                     442  untrack temp_5_arithop_50_0 
              #                     441  untrack temp_29_arithop_41_0 
              #                     440  untrack temp_35_ret_of_equal_38_0 
              #                     439  untrack temp_33_arithop_41_0 
              #                     438  untrack d_28_0 
              #                    occupy a3 with d_28_0
              #                    release a3 with d_28_0
              #                     437  untrack temp_28_arithop_41_0 
              #                     436  untrack temp_19_ret_of_equal_44_0 
              #                     435  untrack b_28_0 
              #                    occupy a1 with b_28_0
              #                    release a1 with b_28_0
              #                     434  untrack e_28_0 
              #                     433  untrack temp_32_arithop_41_0 
              #                     432  untrack temp_18_arithop_47_0 
              #                     431  untrack last_28_0 
              #                     430  untrack ans_30_4 
              #                     429  untrack ans_30_8 
              #                     428  untrack temp_13_arithop_47_0 
              #                     427  untrack ans_30_10 
              #                     426  untrack ans_30_6 
              #                     425  untrack ans_30_2 
              #                     424  untrack temp_55__2081_0 
              #                     423  untrack temp_22_arithop_44_0 
              #                     422  untrack temp_14_arithop_47_0 
              #                     421  untrack temp_23_ret_of_dfs_44_0 
              #                     420  untrack temp_6_arithop_50_0 
              #                     140  (nop) 
              #                     142  (nop) 
              #                     143  mu dp_0_1:142 
              #                     341  mu dp_0_1:144 
              #                     144  ret temp_45_ele_of_*dp_0_31_0 
              #                    load from ra_dfs_0 in mem
    ld      ra,280(sp)
              #                    load from s0_dfs_0 in mem
    ld      s0,272(sp)
              #                    occupy a0 with temp_45_ele_of_*dp_0_31_0
              #                    load from temp_45_ele_of_*dp_0_31_0 in mem


    lw      a0,28(sp)
    addi    sp,sp,288
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_28_0, tracked: true } |     a1:Freed { symidx: b_28_0, tracked: true } |     a2:Freed { symidx: c_28_0, tracked: true } |     a3:Freed { symidx: d_28_0, tracked: true } |     a6:Freed { symidx: temp_44_ptr_of_*dp_0_31, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     153  label branch_false_32: 
.branch_false_32:
              #                     483  untrack temp_46_cmp_31_0 
              #                     482  untrack temp_45_ele_of_*dp_0_31_0 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_28_0, tracked: true } |     a1:Freed { symidx: b_28_0, tracked: true } |     a2:Freed { symidx: c_28_0, tracked: true } |     a3:Freed { symidx: d_28_0, tracked: true } |     a6:Freed { symidx: temp_44_ptr_of_*dp_0_31, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     156  temp_47_arithop_34_0 = Add i32 a_28_0, b_28_0 
              #                    occupy a0 with a_28_0
              #                    occupy a1 with b_28_0
              #                    occupy a4 with temp_47_arithop_34_0
    ADDW    a4,a0,a1
              #                    free a0
              #                    occupy a0 with a_28_0
              #                    store to a_28_0 in mem offset legal
    sw      a0,268(sp)
              #                    release a0 with a_28_0
              #                    free a1
              #                    free a4
              #                     158  temp_48_arithop_34_0 = Add i32 temp_47_arithop_34_0, c_28_0 
              #                    occupy a4 with temp_47_arithop_34_0
              #                    occupy a2 with c_28_0
              #                    occupy a0 with temp_48_arithop_34_0
    ADDW    a0,a4,a2
              #                    free a4
              #                    occupy a4 with temp_47_arithop_34_0
              #                    store to temp_47_arithop_34_0 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_47_arithop_34_0
              #                    free a2
              #                    free a0
              #                     484  untrack temp_47_arithop_34_0 
              #                     160  temp_49_arithop_34_0 = Add i32 temp_48_arithop_34_0, d_28_0 
              #                    occupy a0 with temp_48_arithop_34_0
              #                    occupy a3 with d_28_0
              #                    occupy a4 with temp_49_arithop_34_0
    ADDW    a4,a0,a3
              #                    free a0
              #                    occupy a0 with temp_48_arithop_34_0
              #                    store to temp_48_arithop_34_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_48_arithop_34_0
              #                    free a3
              #                    free a4
              #                     486  untrack temp_48_arithop_34_0 
              #                     162  temp_50_arithop_34_0 = Add i32 temp_49_arithop_34_0, e_28_0 
              #                    occupy a4 with temp_49_arithop_34_0
              #                    occupy a0 with e_28_0
              #                    load from e_28_0 in mem


    lw      a0,252(sp)
              #                    occupy a5 with temp_50_arithop_34_0
    ADDW    a5,a4,a0
              #                    free a4
              #                    occupy a4 with temp_49_arithop_34_0
              #                    store to temp_49_arithop_34_0 in mem offset legal
    sw      a4,12(sp)
              #                    release a4 with temp_49_arithop_34_0
              #                    free a0
              #                    occupy a0 with e_28_0
              #                    store to e_28_0 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with e_28_0
              #                    free a5
              #                     487  untrack temp_49_arithop_34_0 
              #                     164  temp_51_cmp_34_0 = icmp i32 Eq temp_50_arithop_34_0, 0_0 
              #                    occupy a5 with temp_50_arithop_34_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a4 with temp_51_cmp_34_0
    xor     a4,a5,a0
    seqz    a4, a4
              #                    free a5
              #                    occupy a5 with temp_50_arithop_34_0
              #                    store to temp_50_arithop_34_0 in mem offset legal
    sw      a5,8(sp)
              #                    release a5 with temp_50_arithop_34_0
              #                    free a0
              #                    free a4
              #                     485  untrack temp_50_arithop_34_0 
              #                     167  br i1 temp_51_cmp_34_0, label branch_true_35, label branch_false_35 
              #                    occupy a4 with temp_51_cmp_34_0
              #                    free a4
              #                    occupy a4 with temp_51_cmp_34_0
    bnez    a4, .branch_true_35
              #                    free a4
    j       .branch_false_35
              #                    regtab     a1:Freed { symidx: b_28_0, tracked: true } |     a2:Freed { symidx: c_28_0, tracked: true } |     a3:Freed { symidx: d_28_0, tracked: true } |     a4:Freed { symidx: temp_51_cmp_34_0, tracked: true } |     a6:Freed { symidx: temp_44_ptr_of_*dp_0_31, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     165  label branch_true_35: 
.branch_true_35:
              #                     544  untrack temp_27_ret_of_equal_41_0 
              #                     543  untrack temp_32_arithop_41_0 
              #                     542  untrack temp_56__2362_0 
              #                     541  untrack temp_4_ele_of_*dp_0_30_0 
              #                     540  untrack temp_33_arithop_41_0 
              #                     539  untrack temp_52__1245_0 
              #                     538  untrack temp_53__1519_0 
              #                     537  untrack temp_55__2081_0 
              #                     536  untrack temp_51_cmp_34_0 
              #                    occupy a4 with temp_51_cmp_34_0
              #                    release a4 with temp_51_cmp_34_0
              #                     535  untrack temp_6_arithop_50_0 
              #                     534  untrack a_28_0 
              #                     533  untrack temp_2_arithop_30_0 
              #                     532  untrack temp_39_arithop_38_0 
              #                     531  untrack temp_14_arithop_47_0 
              #                     530  untrack temp_40_arithop_38_0 
              #                     529  untrack temp_30_arithop_41_0 
              #                     528  untrack temp_28_arithop_41_0 
              #                     527  untrack temp_8_arithop_50_0 
              #                     526  untrack temp_25_arithop_44_0 
              #                     525  untrack temp_16_arithop_47_0 
              #                     524  untrack temp_23_ret_of_dfs_44_0 
              #                     523  untrack e_28_0 
              #                     522  untrack temp_24_arithop_44_0 
              #                     521  untrack temp_11_ret_of_equal_47_0 
              #                     520  untrack temp_19_ret_of_equal_44_0 
              #                     519  untrack temp_31_ret_of_dfs_41_0 
              #                     518  untrack temp_5_arithop_50_0 
              #                     517  untrack ans_30_2 
              #                     516  untrack ans_30_4 
              #                     515  untrack ans_30_8 
              #                     514  untrack ans_30_10 
              #                     513  untrack ans_30_6 
              #                     512  untrack temp_9_arithop_50_0 
              #                     511  untrack temp_41_arithop_38_0 
              #                     510  untrack temp_17_arithop_47_0 
              #                     509  untrack temp_38_ret_of_dfs_38_0 
              #                     508  untrack temp_12_arithop_47_0 
              #                     507  untrack temp_29_arithop_41_0 
              #                     506  untrack temp_54__1800_0 
              #                     505  untrack temp_35_ret_of_equal_38_0 
              #                     504  untrack c_28_0 
              #                    occupy a2 with c_28_0
              #                    release a2 with c_28_0
              #                     503  untrack last_28_0 
              #                     502  untrack temp_20_arithop_44_0 
              #                     501  untrack temp_10_arithop_50_0 
              #                     500  untrack temp_21_arithop_44_0 
              #                     499  untrack temp_15_ret_of_dfs_47_0 
              #                     498  untrack temp_37_arithop_38_0 
              #                     497  untrack temp_44_ptr_of_*dp_0_31 
              #                    occupy a6 with temp_44_ptr_of_*dp_0_31
              #                    release a6 with temp_44_ptr_of_*dp_0_31
              #                     496  untrack temp_26_arithop_44_0 
              #                     495  untrack b_28_0 
              #                    occupy a1 with b_28_0
              #                    release a1 with b_28_0
              #                     494  untrack temp_18_arithop_47_0 
              #                     493  untrack temp_36_arithop_38_0 
              #                     492  untrack temp_22_arithop_44_0 
              #                     491  untrack temp_34_arithop_41_0 
              #                     490  untrack temp_7_ret_of_dfs_50_0 
              #                     489  untrack temp_13_arithop_47_0 
              #                     488  untrack d_28_0 
              #                    occupy a3 with d_28_0
              #                    release a3 with d_28_0
              #                     342  mu dp_0_1:137 
              #                     137  ret 1_0 
              #                    load from ra_dfs_0 in mem
    ld      ra,280(sp)
              #                    load from s0_dfs_0 in mem
    ld      s0,272(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,288
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_28_0, tracked: true } |     a2:Freed { symidx: c_28_0, tracked: true } |     a3:Freed { symidx: d_28_0, tracked: true } |     a4:Freed { symidx: temp_51_cmp_34_0, tracked: true } |     a6:Freed { symidx: temp_44_ptr_of_*dp_0_31, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     166  label branch_false_35: 
.branch_false_35:
              #                     545  untrack temp_51_cmp_34_0 
              #                    occupy a4 with temp_51_cmp_34_0
              #                    release a4 with temp_51_cmp_34_0
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a1:Freed { symidx: b_28_0, tracked: true } |     a2:Freed { symidx: c_28_0, tracked: true } |     a3:Freed { symidx: d_28_0, tracked: true } |     a6:Freed { symidx: temp_44_ptr_of_*dp_0_31, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     42   (nop) 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a1:Freed { symidx: b_28_0, tracked: true } |     a2:Freed { symidx: c_28_0, tracked: true } |     a3:Freed { symidx: d_28_0, tracked: true } |     a6:Freed { symidx: temp_44_ptr_of_*dp_0_31, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     169  temp_52__1245_0 = icmp i32 Ne a_28_0, 0_0 
              #                    occupy a0 with a_28_0
              #                    load from a_28_0 in mem


    lw      a0,268(sp)
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_52__1245_0
    xor     a5,a0,a4
    snez    a5, a5
              #                    free a0
              #                    occupy a0 with a_28_0
              #                    store to a_28_0 in mem offset legal
    sw      a0,268(sp)
              #                    release a0 with a_28_0
              #                    free a4
              #                    free a5
              #                     172  br i1 temp_52__1245_0, label branch_true_39, label UP_33_0 
              #                    occupy a5 with temp_52__1245_0
              #                    free a5
              #                    occupy a5 with temp_52__1245_0
    bnez    a5, .branch_true_39
              #                    free a5
    j       .UP_33_0
              #                    regtab     a1:Freed { symidx: b_28_0, tracked: true } |     a2:Freed { symidx: c_28_0, tracked: true } |     a3:Freed { symidx: d_28_0, tracked: true } |     a5:Freed { symidx: temp_52__1245_0, tracked: true } |     a6:Freed { symidx: temp_44_ptr_of_*dp_0_31, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     170  label branch_true_39: 
.branch_true_39:
              #                     546  untrack temp_52__1245_0 
              #                    occupy a5 with temp_52__1245_0
              #                    release a5 with temp_52__1245_0
              #                     122  temp_35_ret_of_equal_38_0 =  Call i32 equal_0(last_28_0, 2_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with b_28_0
              #                    store to b_28_0 in mem offset legal
    sw      a1,264(sp)
              #                    release a1 with b_28_0
              #                    occupy a2 with c_28_0
              #                    store to c_28_0 in mem offset legal
    sw      a2,260(sp)
              #                    release a2 with c_28_0
              #                    occupy a3 with d_28_0
              #                    store to d_28_0 in mem offset legal
    sw      a3,256(sp)
              #                    release a3 with d_28_0
              #                    occupy a6 with temp_44_ptr_of_*dp_0_31
              #                    store to temp_44_ptr_of_*dp_0_31 in mem offset legal
    sd      a6,32(sp)
              #                    release a6 with temp_44_ptr_of_*dp_0_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_last_28_0_0
              #                    load from last_28_0 in mem


    lw      a0,248(sp)
              #                    occupy a1 with _anonymous_of_2_0_0
    li      a1, 2
              #                    arg load ended


    call    equal
              #                     124  temp_36_arithop_38_0 = Sub i32 a_28_0, temp_35_ret_of_equal_38_0 
              #                    occupy a1 with a_28_0
              #                    load from a_28_0 in mem


    lw      a1,268(sp)
              #                    occupy a0 with temp_35_ret_of_equal_38_0
              #                    occupy a2 with temp_36_arithop_38_0
              #                    regtab:    a0:Occupied { symidx: temp_35_ret_of_equal_38_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: a_28_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_36_arithop_38_0, tracked: true, occupy_count: 1 } |  released_gpr_count:7,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     559  untrack temp_35_ret_of_equal_38_0 
              #                    occupy a0 with temp_35_ret_of_equal_38_0
              #                    release a0 with temp_35_ret_of_equal_38_0
              #                     126  temp_37_arithop_38_0 = Sub i32 a_28_0, 1_0 
              #                    occupy a1 with a_28_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with temp_37_arithop_38_0
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: a_28_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_36_arithop_38_0, tracked: true } |     a3:Occupied { symidx: temp_37_arithop_38_0, tracked: true, occupy_count: 1 } |  released_gpr_count:6,released_fpr_count:24


    subw    a3,a1,a0
              #                    free a1
              #                    free a0
              #                    free a3
              #                     128  temp_38_ret_of_dfs_38_0 =  Call i32 dfs_0(temp_37_arithop_38_0, b_28_0, c_28_0, d_28_0, e_28_0, 1_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with a_28_0
              #                    store to a_28_0 in mem offset legal
    sw      a1,268(sp)
              #                    release a1 with a_28_0
              #                    occupy a2 with temp_36_arithop_38_0
              #                    store to temp_36_arithop_38_0 in mem offset legal
    sw      a2,68(sp)
              #                    release a2 with temp_36_arithop_38_0
              #                    occupy a3 with temp_37_arithop_38_0
              #                    store to temp_37_arithop_38_0 in mem offset legal
    sw      a3,64(sp)
              #                    release a3 with temp_37_arithop_38_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_37_arithop_38_0_0
              #                    load from temp_37_arithop_38_0 in mem


    lw      a0,64(sp)
              #                    occupy a1 with _anonymous_of_b_28_0_0
              #                    load from b_28_0 in mem


    lw      a1,264(sp)
              #                    occupy a2 with _anonymous_of_c_28_0_0
              #                    load from c_28_0 in mem


    lw      a2,260(sp)
              #                    occupy a3 with _anonymous_of_d_28_0_0
              #                    load from d_28_0 in mem


    lw      a3,256(sp)
              #                    occupy a4 with _anonymous_of_e_28_0_0
              #                    load from e_28_0 in mem


    lw      a4,252(sp)
              #                    occupy a5 with _anonymous_of_1_0_0
    li      a5, 1
              #                    arg load ended


    call    dfs
              #                     561  untrack temp_37_arithop_38_0 
              #                     343  mu dp_0_1:128 
              #                     344  dp_0_2 = chi dp_0_1:128 
              #                     130  temp_39_arithop_38_0 = Mul i32 temp_36_arithop_38_0, temp_38_ret_of_dfs_38_0 
              #                    occupy a1 with temp_39_arithop_38_0
              #                    occupy a2 with temp_36_arithop_38_0
              #                    load from temp_36_arithop_38_0 in mem


    lw      a2,68(sp)
              #                    occupy a0 with temp_38_ret_of_dfs_38_0
    mulw    a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                     558  untrack temp_38_ret_of_dfs_38_0 
              #                    occupy a0 with temp_38_ret_of_dfs_38_0
              #                    release a0 with temp_38_ret_of_dfs_38_0
              #                     556  untrack temp_36_arithop_38_0 
              #                    occupy a2 with temp_36_arithop_38_0
              #                    release a2 with temp_36_arithop_38_0
              #                     132  temp_40_arithop_38_0 = Add i32 0_0, temp_39_arithop_38_0 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a1 with temp_39_arithop_38_0
              #                    occupy a2 with temp_40_arithop_38_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     560  untrack temp_39_arithop_38_0 
              #                    occupy a1 with temp_39_arithop_38_0
              #                    release a1 with temp_39_arithop_38_0
              #                     134  temp_41_arithop_38_0 = Mod i32 temp_40_arithop_38_0, 1000000007_0 
              #                    occupy a2 with temp_40_arithop_38_0
              #                    occupy a1 with 1000000007_0
    li      a1, 1000000007
              #                    occupy a3 with temp_41_arithop_38_0
    rem     a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                     557  untrack temp_40_arithop_38_0 
              #                    occupy a2 with temp_40_arithop_38_0
              #                    release a2 with temp_40_arithop_38_0
              #                     135  (nop) 
              #                     392  ans_30_2 = i32 temp_41_arithop_38_0 
              #                    occupy a3 with temp_41_arithop_38_0
              #                    occupy a2 with ans_30_2
    mv      a2, a3
              #                    free a3
              #                    free a2
              #                     555  untrack temp_41_arithop_38_0 
              #                    occupy a3 with temp_41_arithop_38_0
              #                    release a3 with temp_41_arithop_38_0
              #                          jump label: branch_false_39 
    j       .branch_false_39
              #                    regtab     a2:Freed { symidx: ans_30_2, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     171  label branch_false_39: 
.branch_false_39:
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a2:Freed { symidx: ans_30_2, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     174  temp_53__1519_0 = icmp i32 Ne b_28_0, 0_0 
              #                    occupy a0 with b_28_0
              #                    load from b_28_0 in mem


    lw      a0,264(sp)
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a3 with temp_53__1519_0
    xor     a3,a0,a1
    snez    a3, a3
              #                    free a0
              #                    occupy a0 with b_28_0
              #                    store to b_28_0 in mem offset legal
    sw      a0,264(sp)
              #                    release a0 with b_28_0
              #                    free a1
              #                    free a3
              #                     177  br i1 temp_53__1519_0, label branch_true_42, label UP_8_0 
              #                    occupy a3 with temp_53__1519_0
              #                    free a3
              #                    occupy a3 with temp_53__1519_0
    bnez    a3, .branch_true_42
              #                    free a3
    j       .UP_8_0
              #                    regtab     a2:Freed { symidx: ans_30_2, tracked: true } |     a3:Freed { symidx: temp_53__1519_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     175  label branch_true_42: 
.branch_true_42:
              #                     562  untrack temp_53__1519_0 
              #                    occupy a3 with temp_53__1519_0
              #                    release a3 with temp_53__1519_0
              #                     105  temp_27_ret_of_equal_41_0 =  Call i32 equal_0(last_28_0, 3_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with ans_30_2
              #                    store to ans_30_2 in mem offset legal
    sw      a2,244(sp)
              #                    release a2 with ans_30_2
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_last_28_0_0
              #                    load from last_28_0 in mem


    lw      a0,248(sp)
              #                    occupy a1 with _anonymous_of_3_0_0
    li      a1, 3
              #                    arg load ended


    call    equal
              #                     107  temp_28_arithop_41_0 = Sub i32 b_28_0, temp_27_ret_of_equal_41_0 
              #                    occupy a1 with b_28_0
              #                    load from b_28_0 in mem


    lw      a1,264(sp)
              #                    occupy a0 with temp_27_ret_of_equal_41_0
              #                    occupy a2 with temp_28_arithop_41_0
              #                    regtab:    a0:Occupied { symidx: temp_27_ret_of_equal_41_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: b_28_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_28_arithop_41_0, tracked: true, occupy_count: 1 } |  released_gpr_count:4,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    occupy a1 with b_28_0
              #                    store to b_28_0 in mem offset legal
    sw      a1,264(sp)
              #                    release a1 with b_28_0
              #                    free a0
              #                    free a2
              #                     580  untrack temp_27_ret_of_equal_41_0 
              #                    occupy a0 with temp_27_ret_of_equal_41_0
              #                    release a0 with temp_27_ret_of_equal_41_0
              #                     109  temp_29_arithop_41_0 = Add i32 a_28_0, 1_0 
              #                    occupy a0 with a_28_0
              #                    load from a_28_0 in mem


    lw      a0,268(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_29_arithop_41_0
    ADDW    a3,a0,a1
              #                    free a0
              #                    occupy a0 with a_28_0
              #                    store to a_28_0 in mem offset legal
    sw      a0,268(sp)
              #                    release a0 with a_28_0
              #                    free a1
              #                    free a3
              #                     111  temp_30_arithop_41_0 = Sub i32 b_28_0, 1_0 
              #                    occupy a0 with b_28_0
              #                    load from b_28_0 in mem


    lw      a0,264(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with temp_30_arithop_41_0
              #                    regtab:    a0:Occupied { symidx: b_28_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_28_arithop_41_0, tracked: true } |     a3:Freed { symidx: temp_29_arithop_41_0, tracked: true } |     a4:Occupied { symidx: temp_30_arithop_41_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    a4,a0,a1
              #                    free a0
              #                    occupy a0 with b_28_0
              #                    store to b_28_0 in mem offset legal
    sw      a0,264(sp)
              #                    release a0 with b_28_0
              #                    free a1
              #                    free a4
              #                    occupy a4 with temp_30_arithop_41_0
              #                    store to temp_30_arithop_41_0 in mem offset legal
    sw      a4,92(sp)
              #                    release a4 with temp_30_arithop_41_0
              #                     113  temp_31_ret_of_dfs_41_0 =  Call i32 dfs_0(temp_29_arithop_41_0, temp_30_arithop_41_0, c_28_0, d_28_0, e_28_0, 2_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_28_arithop_41_0
              #                    store to temp_28_arithop_41_0 in mem offset legal
    sw      a2,100(sp)
              #                    release a2 with temp_28_arithop_41_0
              #                    occupy a3 with temp_29_arithop_41_0
              #                    store to temp_29_arithop_41_0 in mem offset legal
    sw      a3,96(sp)
              #                    release a3 with temp_29_arithop_41_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_29_arithop_41_0_0
              #                    load from temp_29_arithop_41_0 in mem


    lw      a0,96(sp)
              #                    occupy a1 with _anonymous_of_temp_30_arithop_41_0_0
              #                    load from temp_30_arithop_41_0 in mem


    lw      a1,92(sp)
              #                    occupy a2 with _anonymous_of_c_28_0_0
              #                    load from c_28_0 in mem


    lw      a2,260(sp)
              #                    occupy a3 with _anonymous_of_d_28_0_0
              #                    load from d_28_0 in mem


    lw      a3,256(sp)
              #                    occupy a4 with _anonymous_of_e_28_0_0
              #                    load from e_28_0 in mem


    lw      a4,252(sp)
              #                    occupy a5 with _anonymous_of_2_0_0
    li      a5, 2
              #                    arg load ended


    call    dfs
              #                     576  untrack temp_30_arithop_41_0 
              #                     574  untrack temp_29_arithop_41_0 
              #                     345  mu dp_0_3:113 
              #                     346  dp_0_4 = chi dp_0_3:113 
              #                     115  temp_32_arithop_41_0 = Mul i32 temp_28_arithop_41_0, temp_31_ret_of_dfs_41_0 
              #                    occupy a1 with temp_32_arithop_41_0
              #                    occupy a2 with temp_28_arithop_41_0
              #                    load from temp_28_arithop_41_0 in mem


    lw      a2,100(sp)
              #                    occupy a0 with temp_31_ret_of_dfs_41_0
    mulw    a1,a2,a0
              #                    free a2
              #                    occupy a2 with temp_28_arithop_41_0
              #                    store to temp_28_arithop_41_0 in mem offset legal
    sw      a2,100(sp)
              #                    release a2 with temp_28_arithop_41_0
              #                    free a0
              #                    free a1
              #                     578  untrack temp_31_ret_of_dfs_41_0 
              #                    occupy a0 with temp_31_ret_of_dfs_41_0
              #                    release a0 with temp_31_ret_of_dfs_41_0
              #                     572  untrack temp_28_arithop_41_0 
              #                     117  temp_33_arithop_41_0 = Add i32 ans_30_2, temp_32_arithop_41_0 
              #                    occupy a0 with ans_30_2
              #                    load from ans_30_2 in mem


    lw      a0,244(sp)
              #                    occupy a1 with temp_32_arithop_41_0
              #                    occupy a2 with temp_33_arithop_41_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    occupy a0 with ans_30_2
              #                    store to ans_30_2 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with ans_30_2
              #                    free a1
              #                    free a2
              #                     579  untrack temp_32_arithop_41_0 
              #                    occupy a1 with temp_32_arithop_41_0
              #                    release a1 with temp_32_arithop_41_0
              #                     575  untrack ans_30_2 
              #                     119  temp_34_arithop_41_0 = Mod i32 temp_33_arithop_41_0, 1000000007_0 
              #                    occupy a2 with temp_33_arithop_41_0
              #                    occupy a0 with 1000000007_0
    li      a0, 1000000007
              #                    occupy a1 with temp_34_arithop_41_0
    rem     a1,a2,a0
              #                    free a2
              #                    occupy a2 with temp_33_arithop_41_0
              #                    store to temp_33_arithop_41_0 in mem offset legal
    sw      a2,80(sp)
              #                    release a2 with temp_33_arithop_41_0
              #                    free a0
              #                    free a1
              #                     573  untrack temp_33_arithop_41_0 
              #                     120  (nop) 
              #                     393  ans_30_4 = i32 temp_34_arithop_41_0 
              #                    occupy a1 with temp_34_arithop_41_0
              #                    occupy a2 with ans_30_4
    mv      a2, a1
              #                    free a1
              #                    occupy a1 with temp_34_arithop_41_0
              #                    store to temp_34_arithop_41_0 in mem offset legal
    sw      a1,76(sp)
              #                    release a1 with temp_34_arithop_41_0
              #                    free a2
              #                     577  untrack temp_34_arithop_41_0 
              #                          jump label: branch_false_42 
    j       .branch_false_42
              #                    regtab     a2:Freed { symidx: ans_30_4, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     176  label branch_false_42: 
.branch_false_42:
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a2:Freed { symidx: ans_30_4, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     179  temp_54__1800_0 = icmp i32 Ne c_28_0, 0_0 
              #                    occupy a0 with c_28_0
              #                    load from c_28_0 in mem


    lw      a0,260(sp)
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a3 with temp_54__1800_0
    xor     a3,a0,a1
    snez    a3, a3
              #                    free a0
              #                    occupy a0 with c_28_0
              #                    store to c_28_0 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with c_28_0
              #                    free a1
              #                    free a3
              #                    occupy a3 with temp_54__1800_0
              #                    store to temp_54__1800_0 in mem offset legal
    sb      a3,4(sp)
              #                    release a3 with temp_54__1800_0
              #                     182  br i1 temp_54__1800_0, label branch_true_45, label UP_2_0 
              #                    occupy a0 with temp_54__1800_0
              #                    load from temp_54__1800_0 in mem


    lb      a0,4(sp)
              #                    free a0
              #                    occupy a0 with temp_54__1800_0
              #                    store to temp_54__1800_0 in mem offset legal
    sb      a0,4(sp)
              #                    release a0 with temp_54__1800_0
              #                    occupy a0 with temp_54__1800_0
              #                    load from temp_54__1800_0 in mem


    lb      a0,4(sp)
    bnez    a0, .branch_true_45
              #                    free a0
              #                    occupy a0 with temp_54__1800_0
              #                    store to temp_54__1800_0 in mem offset legal
    sb      a0,4(sp)
              #                    release a0 with temp_54__1800_0
    j       .UP_2_0
              #                    regtab     a2:Freed { symidx: ans_30_4, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     180  label branch_true_45: 
.branch_true_45:
              #                     581  untrack temp_54__1800_0 
              #                     88   temp_19_ret_of_equal_44_0 =  Call i32 equal_0(last_28_0, 4_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with ans_30_4
              #                    store to ans_30_4 in mem offset legal
    sw      a2,240(sp)
              #                    release a2 with ans_30_4
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_last_28_0_0
              #                    load from last_28_0 in mem


    lw      a0,248(sp)
              #                    occupy a1 with _anonymous_of_4_0_0
    li      a1, 4
              #                    arg load ended


    call    equal
              #                     90   temp_20_arithop_44_0 = Sub i32 c_28_0, temp_19_ret_of_equal_44_0 
              #                    occupy a1 with c_28_0
              #                    load from c_28_0 in mem


    lw      a1,260(sp)
              #                    occupy a0 with temp_19_ret_of_equal_44_0
              #                    occupy a2 with temp_20_arithop_44_0
              #                    regtab:    a0:Occupied { symidx: temp_19_ret_of_equal_44_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: c_28_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_20_arithop_44_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    occupy a1 with c_28_0
              #                    store to c_28_0 in mem offset legal
    sw      a1,260(sp)
              #                    release a1 with c_28_0
              #                    free a0
              #                    occupy a0 with temp_19_ret_of_equal_44_0
              #                    store to temp_19_ret_of_equal_44_0 in mem offset legal
    sw      a0,136(sp)
              #                    release a0 with temp_19_ret_of_equal_44_0
              #                    free a2
              #                     597  untrack temp_19_ret_of_equal_44_0 
              #                     92   temp_21_arithop_44_0 = Add i32 b_28_0, 1_0 
              #                    occupy a0 with b_28_0
              #                    load from b_28_0 in mem


    lw      a0,264(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_21_arithop_44_0
    ADDW    a3,a0,a1
              #                    free a0
              #                    occupy a0 with b_28_0
              #                    store to b_28_0 in mem offset legal
    sw      a0,264(sp)
              #                    release a0 with b_28_0
              #                    free a1
              #                    free a3
              #                    occupy a3 with temp_21_arithop_44_0
              #                    store to temp_21_arithop_44_0 in mem offset legal
    sw      a3,128(sp)
              #                    release a3 with temp_21_arithop_44_0
              #                     94   temp_22_arithop_44_0 = Sub i32 c_28_0, 1_0 
              #                    occupy a0 with c_28_0
              #                    load from c_28_0 in mem


    lw      a0,260(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_22_arithop_44_0
              #                    regtab:    a0:Occupied { symidx: c_28_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_20_arithop_44_0, tracked: true } |     a3:Occupied { symidx: temp_22_arithop_44_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    a3,a0,a1
              #                    free a0
              #                    occupy a0 with c_28_0
              #                    store to c_28_0 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with c_28_0
              #                    free a1
              #                    free a3
              #                    occupy a3 with temp_22_arithop_44_0
              #                    store to temp_22_arithop_44_0 in mem offset legal
    sw      a3,124(sp)
              #                    release a3 with temp_22_arithop_44_0
              #                     96   temp_23_ret_of_dfs_44_0 =  Call i32 dfs_0(a_28_0, temp_21_arithop_44_0, temp_22_arithop_44_0, d_28_0, e_28_0, 3_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_20_arithop_44_0
              #                    store to temp_20_arithop_44_0 in mem offset legal
    sw      a2,132(sp)
              #                    release a2 with temp_20_arithop_44_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_28_0_0
              #                    load from a_28_0 in mem


    lw      a0,268(sp)
              #                    occupy a1 with _anonymous_of_temp_21_arithop_44_0_0
              #                    load from temp_21_arithop_44_0 in mem


    lw      a1,128(sp)
              #                    occupy a2 with _anonymous_of_temp_22_arithop_44_0_0
              #                    load from temp_22_arithop_44_0 in mem


    lw      a2,124(sp)
              #                    occupy a3 with _anonymous_of_d_28_0_0
              #                    load from d_28_0 in mem


    lw      a3,256(sp)
              #                    occupy a4 with _anonymous_of_e_28_0_0
              #                    load from e_28_0 in mem


    lw      a4,252(sp)
              #                    occupy a5 with _anonymous_of_3_0_0
    li      a5, 3
              #                    arg load ended


    call    dfs
              #                     599  untrack temp_22_arithop_44_0 
              #                     592  untrack temp_21_arithop_44_0 
              #                     347  mu dp_0_5:96 
              #                     348  dp_0_6 = chi dp_0_5:96 
              #                     98   temp_24_arithop_44_0 = Mul i32 temp_20_arithop_44_0, temp_23_ret_of_dfs_44_0 
              #                    occupy a1 with temp_24_arithop_44_0
              #                    occupy a2 with temp_20_arithop_44_0
              #                    load from temp_20_arithop_44_0 in mem


    lw      a2,132(sp)
              #                    occupy a0 with temp_23_ret_of_dfs_44_0
    mulw    a1,a2,a0
              #                    free a2
              #                    occupy a2 with temp_20_arithop_44_0
              #                    store to temp_20_arithop_44_0 in mem offset legal
    sw      a2,132(sp)
              #                    release a2 with temp_20_arithop_44_0
              #                    free a0
              #                    occupy a0 with temp_23_ret_of_dfs_44_0
              #                    store to temp_23_ret_of_dfs_44_0 in mem offset legal
    sw      a0,120(sp)
              #                    release a0 with temp_23_ret_of_dfs_44_0
              #                    free a1
              #                     594  untrack temp_20_arithop_44_0 
              #                     591  untrack temp_23_ret_of_dfs_44_0 
              #                     100  temp_25_arithop_44_0 = Add i32 ans_30_4, temp_24_arithop_44_0 
              #                    occupy a0 with ans_30_4
              #                    load from ans_30_4 in mem


    lw      a0,240(sp)
              #                    occupy a1 with temp_24_arithop_44_0
              #                    occupy a2 with temp_25_arithop_44_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    occupy a0 with ans_30_4
              #                    store to ans_30_4 in mem offset legal
    sw      a0,240(sp)
              #                    release a0 with ans_30_4
              #                    free a1
              #                    occupy a1 with temp_24_arithop_44_0
              #                    store to temp_24_arithop_44_0 in mem offset legal
    sw      a1,116(sp)
              #                    release a1 with temp_24_arithop_44_0
              #                    free a2
              #                     598  untrack ans_30_4 
              #                     593  untrack temp_24_arithop_44_0 
              #                     102  temp_26_arithop_44_0 = Mod i32 temp_25_arithop_44_0, 1000000007_0 
              #                    occupy a2 with temp_25_arithop_44_0
              #                    occupy a0 with 1000000007_0
    li      a0, 1000000007
              #                    occupy a1 with temp_26_arithop_44_0
    rem     a1,a2,a0
              #                    free a2
              #                    occupy a2 with temp_25_arithop_44_0
              #                    store to temp_25_arithop_44_0 in mem offset legal
    sw      a2,112(sp)
              #                    release a2 with temp_25_arithop_44_0
              #                    free a0
              #                    free a1
              #                     596  untrack temp_25_arithop_44_0 
              #                     103  (nop) 
              #                     394  ans_30_6 = i32 temp_26_arithop_44_0 
              #                    occupy a1 with temp_26_arithop_44_0
              #                    occupy a0 with ans_30_6
    mv      a0, a1
              #                    free a1
              #                    occupy a1 with temp_26_arithop_44_0
              #                    store to temp_26_arithop_44_0 in mem offset legal
    sw      a1,108(sp)
              #                    release a1 with temp_26_arithop_44_0
              #                    free a0
              #                     595  untrack temp_26_arithop_44_0 
              #                          jump label: branch_false_45 
    j       .branch_false_45
              #                    regtab     a0:Freed { symidx: ans_30_6, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     181  label branch_false_45: 
.branch_false_45:
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: ans_30_6, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     184  temp_55__2081_0 = icmp i32 Ne d_28_0, 0_0 
              #                    occupy a1 with d_28_0
              #                    load from d_28_0 in mem


    lw      a1,256(sp)
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_55__2081_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    occupy a1 with d_28_0
              #                    store to d_28_0 in mem offset legal
    sw      a1,256(sp)
              #                    release a1 with d_28_0
              #                    free a2
              #                    free a3
              #                    occupy a3 with temp_55__2081_0
              #                    store to temp_55__2081_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_55__2081_0
              #                     187  br i1 temp_55__2081_0, label branch_true_48, label UP_56_0 
              #                    occupy a1 with temp_55__2081_0
              #                    load from temp_55__2081_0 in mem


    lb      a1,3(sp)
              #                    free a1
              #                    occupy a1 with temp_55__2081_0
              #                    store to temp_55__2081_0 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_55__2081_0
              #                    occupy a1 with temp_55__2081_0
              #                    load from temp_55__2081_0 in mem


    lb      a1,3(sp)
    bnez    a1, .branch_true_48
              #                    free a1
              #                    occupy a1 with temp_55__2081_0
              #                    store to temp_55__2081_0 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_55__2081_0
    j       .UP_56_0
              #                    regtab     a0:Freed { symidx: ans_30_6, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     185  label branch_true_48: 
.branch_true_48:
              #                     600  untrack temp_55__2081_0 
              #                     71   temp_11_ret_of_equal_47_0 =  Call i32 equal_0(last_28_0, 5_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with ans_30_6
              #                    store to ans_30_6 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with ans_30_6
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_last_28_0_0
              #                    load from last_28_0 in mem


    lw      a0,248(sp)
              #                    occupy a1 with _anonymous_of_5_0_0
    li      a1, 5
              #                    arg load ended


    call    equal
              #                     620  untrack last_28_0 
              #                     73   temp_12_arithop_47_0 = Sub i32 d_28_0, temp_11_ret_of_equal_47_0 
              #                    occupy a1 with d_28_0
              #                    load from d_28_0 in mem


    lw      a1,256(sp)
              #                    occupy a0 with temp_11_ret_of_equal_47_0
              #                    occupy a2 with temp_12_arithop_47_0
              #                    regtab:    a0:Occupied { symidx: temp_11_ret_of_equal_47_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: d_28_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_12_arithop_47_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    occupy a1 with d_28_0
              #                    store to d_28_0 in mem offset legal
    sw      a1,256(sp)
              #                    release a1 with d_28_0
              #                    free a0
              #                    occupy a0 with temp_11_ret_of_equal_47_0
              #                    store to temp_11_ret_of_equal_47_0 in mem offset legal
    sw      a0,168(sp)
              #                    release a0 with temp_11_ret_of_equal_47_0
              #                    free a2
              #                     616  untrack temp_11_ret_of_equal_47_0 
              #                     75   temp_13_arithop_47_0 = Add i32 c_28_0, 1_0 
              #                    occupy a0 with c_28_0
              #                    load from c_28_0 in mem


    lw      a0,260(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_13_arithop_47_0
    ADDW    a3,a0,a1
              #                    free a0
              #                    occupy a0 with c_28_0
              #                    store to c_28_0 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with c_28_0
              #                    free a1
              #                    free a3
              #                    occupy a3 with temp_13_arithop_47_0
              #                    store to temp_13_arithop_47_0 in mem offset legal
    sw      a3,160(sp)
              #                    release a3 with temp_13_arithop_47_0
              #                     77   temp_14_arithop_47_0 = Sub i32 d_28_0, 1_0 
              #                    occupy a0 with d_28_0
              #                    load from d_28_0 in mem


    lw      a0,256(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_14_arithop_47_0
              #                    regtab:    a0:Occupied { symidx: d_28_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_12_arithop_47_0, tracked: true } |     a3:Occupied { symidx: temp_14_arithop_47_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    a3,a0,a1
              #                    free a0
              #                    occupy a0 with d_28_0
              #                    store to d_28_0 in mem offset legal
    sw      a0,256(sp)
              #                    release a0 with d_28_0
              #                    free a1
              #                    free a3
              #                    occupy a3 with temp_14_arithop_47_0
              #                    store to temp_14_arithop_47_0 in mem offset legal
    sw      a3,156(sp)
              #                    release a3 with temp_14_arithop_47_0
              #                     79   temp_15_ret_of_dfs_47_0 =  Call i32 dfs_0(a_28_0, b_28_0, temp_13_arithop_47_0, temp_14_arithop_47_0, e_28_0, 4_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_12_arithop_47_0
              #                    store to temp_12_arithop_47_0 in mem offset legal
    sw      a2,164(sp)
              #                    release a2 with temp_12_arithop_47_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_28_0_0
              #                    load from a_28_0 in mem


    lw      a0,268(sp)
              #                    occupy a1 with _anonymous_of_b_28_0_0
              #                    load from b_28_0 in mem


    lw      a1,264(sp)
              #                    occupy a2 with _anonymous_of_temp_13_arithop_47_0_0
              #                    load from temp_13_arithop_47_0 in mem


    lw      a2,160(sp)
              #                    occupy a3 with _anonymous_of_temp_14_arithop_47_0_0
              #                    load from temp_14_arithop_47_0 in mem


    lw      a3,156(sp)
              #                    occupy a4 with _anonymous_of_e_28_0_0
              #                    load from e_28_0 in mem


    lw      a4,252(sp)
              #                    occupy a5 with _anonymous_of_4_0_0
    li      a5, 4
              #                    arg load ended


    call    dfs
              #                     618  untrack temp_14_arithop_47_0 
              #                     614  untrack temp_13_arithop_47_0 
              #                     349  mu dp_0_7:79 
              #                     350  dp_0_8 = chi dp_0_7:79 
              #                     81   temp_16_arithop_47_0 = Mul i32 temp_12_arithop_47_0, temp_15_ret_of_dfs_47_0 
              #                    occupy a1 with temp_16_arithop_47_0
              #                    occupy a2 with temp_12_arithop_47_0
              #                    load from temp_12_arithop_47_0 in mem


    lw      a2,164(sp)
              #                    occupy a0 with temp_15_ret_of_dfs_47_0
    mulw    a1,a2,a0
              #                    free a2
              #                    occupy a2 with temp_12_arithop_47_0
              #                    store to temp_12_arithop_47_0 in mem offset legal
    sw      a2,164(sp)
              #                    release a2 with temp_12_arithop_47_0
              #                    free a0
              #                    occupy a0 with temp_15_ret_of_dfs_47_0
              #                    store to temp_15_ret_of_dfs_47_0 in mem offset legal
    sw      a0,152(sp)
              #                    release a0 with temp_15_ret_of_dfs_47_0
              #                    free a1
              #                     615  untrack temp_15_ret_of_dfs_47_0 
              #                     613  untrack temp_12_arithop_47_0 
              #                     83   temp_17_arithop_47_0 = Add i32 ans_30_6, temp_16_arithop_47_0 
              #                    occupy a0 with ans_30_6
              #                    load from ans_30_6 in mem


    lw      a0,236(sp)
              #                    occupy a1 with temp_16_arithop_47_0
              #                    occupy a2 with temp_17_arithop_47_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    occupy a0 with ans_30_6
              #                    store to ans_30_6 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with ans_30_6
              #                    free a1
              #                    occupy a1 with temp_16_arithop_47_0
              #                    store to temp_16_arithop_47_0 in mem offset legal
    sw      a1,148(sp)
              #                    release a1 with temp_16_arithop_47_0
              #                    free a2
              #                     617  untrack temp_16_arithop_47_0 
              #                     611  untrack ans_30_6 
              #                     85   temp_18_arithop_47_0 = Mod i32 temp_17_arithop_47_0, 1000000007_0 
              #                    occupy a2 with temp_17_arithop_47_0
              #                    occupy a0 with 1000000007_0
    li      a0, 1000000007
              #                    occupy a1 with temp_18_arithop_47_0
    rem     a1,a2,a0
              #                    free a2
              #                    occupy a2 with temp_17_arithop_47_0
              #                    store to temp_17_arithop_47_0 in mem offset legal
    sw      a2,144(sp)
              #                    release a2 with temp_17_arithop_47_0
              #                    free a0
              #                    free a1
              #                     619  untrack temp_17_arithop_47_0 
              #                     86   (nop) 
              #                     395  ans_30_8 = i32 temp_18_arithop_47_0 
              #                    occupy a1 with temp_18_arithop_47_0
              #                    occupy a0 with ans_30_8
    mv      a0, a1
              #                    free a1
              #                    occupy a1 with temp_18_arithop_47_0
              #                    store to temp_18_arithop_47_0 in mem offset legal
    sw      a1,140(sp)
              #                    release a1 with temp_18_arithop_47_0
              #                    free a0
              #                     612  untrack temp_18_arithop_47_0 
              #                          jump label: branch_false_48 
    j       .branch_false_48
              #                    regtab     a0:Freed { symidx: ans_30_8, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     186  label branch_false_48: 
.branch_false_48:
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a0:Freed { symidx: ans_30_8, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     189  temp_56__2362_0 = icmp i32 Ne e_28_0, 0_0 
              #                    occupy a1 with e_28_0
              #                    load from e_28_0 in mem


    lw      a1,252(sp)
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_56__2362_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    occupy a1 with e_28_0
              #                    store to e_28_0 in mem offset legal
    sw      a1,252(sp)
              #                    release a1 with e_28_0
              #                    free a2
              #                    free a3
              #                    occupy a3 with temp_56__2362_0
              #                    store to temp_56__2362_0 in mem offset legal
    sb      a3,2(sp)
              #                    release a3 with temp_56__2362_0
              #                     192  br i1 temp_56__2362_0, label branch_true_51, label UP_57_0 
              #                    occupy a1 with temp_56__2362_0
              #                    load from temp_56__2362_0 in mem


    lb      a1,2(sp)
              #                    free a1
              #                    occupy a1 with temp_56__2362_0
              #                    store to temp_56__2362_0 in mem offset legal
    sb      a1,2(sp)
              #                    release a1 with temp_56__2362_0
              #                    occupy a1 with temp_56__2362_0
              #                    load from temp_56__2362_0 in mem


    lb      a1,2(sp)
    bnez    a1, .branch_true_51
              #                    free a1
              #                    occupy a1 with temp_56__2362_0
              #                    store to temp_56__2362_0 in mem offset legal
    sb      a1,2(sp)
              #                    release a1 with temp_56__2362_0
    j       .UP_57_0
              #                    regtab     a0:Freed { symidx: ans_30_8, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     190  label branch_true_51: 
.branch_true_51:
              #                     621  untrack temp_56__2362_0 
              #                     58   temp_5_arithop_50_0 = Add i32 d_28_0, 1_0 
              #                    occupy a1 with d_28_0
              #                    load from d_28_0 in mem


    lw      a1,256(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_5_arithop_50_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    occupy a1 with d_28_0
              #                    store to d_28_0 in mem offset legal
    sw      a1,256(sp)
              #                    release a1 with d_28_0
              #                    free a2
              #                    free a3
              #                    occupy a3 with temp_5_arithop_50_0
              #                    store to temp_5_arithop_50_0 in mem offset legal
    sw      a3,192(sp)
              #                    release a3 with temp_5_arithop_50_0
              #                     638  untrack d_28_0 
              #                     60   temp_6_arithop_50_0 = Sub i32 e_28_0, 1_0 
              #                    occupy a1 with e_28_0
              #                    load from e_28_0 in mem


    lw      a1,252(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_6_arithop_50_0
              #                    regtab:    a0:Freed { symidx: ans_30_8, tracked: true } |     a1:Occupied { symidx: e_28_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_6_arithop_50_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    a3,a1,a2
              #                    free a1
              #                    occupy a1 with e_28_0
              #                    store to e_28_0 in mem offset legal
    sw      a1,252(sp)
              #                    release a1 with e_28_0
              #                    free a2
              #                    free a3
              #                    occupy a3 with temp_6_arithop_50_0
              #                    store to temp_6_arithop_50_0 in mem offset legal
    sw      a3,188(sp)
              #                    release a3 with temp_6_arithop_50_0
              #                     62   temp_7_ret_of_dfs_50_0 =  Call i32 dfs_0(a_28_0, b_28_0, c_28_0, temp_5_arithop_50_0, temp_6_arithop_50_0, 5_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with ans_30_8
              #                    store to ans_30_8 in mem offset legal
    sw      a0,232(sp)
              #                    release a0 with ans_30_8
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_28_0_0
              #                    load from a_28_0 in mem


    lw      a0,268(sp)
              #                    occupy a1 with _anonymous_of_b_28_0_0
              #                    load from b_28_0 in mem


    lw      a1,264(sp)
              #                    occupy a2 with _anonymous_of_c_28_0_0
              #                    load from c_28_0 in mem


    lw      a2,260(sp)
              #                    occupy a3 with _anonymous_of_temp_5_arithop_50_0_0
              #                    load from temp_5_arithop_50_0 in mem


    lw      a3,192(sp)
              #                    occupy a4 with _anonymous_of_temp_6_arithop_50_0_0
              #                    load from temp_6_arithop_50_0 in mem


    lw      a4,188(sp)
              #                    occupy a5 with _anonymous_of_5_0_0
    li      a5, 5
              #                    arg load ended


    call    dfs
              #                     641  untrack temp_6_arithop_50_0 
              #                     640  untrack b_28_0 
              #                     639  untrack temp_5_arithop_50_0 
              #                     635  untrack a_28_0 
              #                     634  untrack c_28_0 
              #                     351  mu dp_0_9:62 
              #                     352  dp_0_10 = chi dp_0_9:62 
              #                     64   temp_8_arithop_50_0 = Mul i32 e_28_0, temp_7_ret_of_dfs_50_0 
              #                    occupy a1 with temp_8_arithop_50_0
              #                    occupy a2 with e_28_0
              #                    load from e_28_0 in mem


    lw      a2,252(sp)
              #                    occupy a0 with temp_7_ret_of_dfs_50_0
    mulw    a1,a2,a0
              #                    free a2
              #                    occupy a2 with e_28_0
              #                    store to e_28_0 in mem offset legal
    sw      a2,252(sp)
              #                    release a2 with e_28_0
              #                    free a0
              #                    occupy a0 with temp_7_ret_of_dfs_50_0
              #                    store to temp_7_ret_of_dfs_50_0 in mem offset legal
    sw      a0,184(sp)
              #                    release a0 with temp_7_ret_of_dfs_50_0
              #                    free a1
              #                     642  untrack temp_7_ret_of_dfs_50_0 
              #                     637  untrack e_28_0 
              #                     66   temp_9_arithop_50_0 = Add i32 ans_30_8, temp_8_arithop_50_0 
              #                    occupy a0 with ans_30_8
              #                    load from ans_30_8 in mem


    lw      a0,232(sp)
              #                    occupy a1 with temp_8_arithop_50_0
              #                    occupy a2 with temp_9_arithop_50_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    occupy a0 with ans_30_8
              #                    store to ans_30_8 in mem offset legal
    sw      a0,232(sp)
              #                    release a0 with ans_30_8
              #                    free a1
              #                    occupy a1 with temp_8_arithop_50_0
              #                    store to temp_8_arithop_50_0 in mem offset legal
    sw      a1,180(sp)
              #                    release a1 with temp_8_arithop_50_0
              #                    free a2
              #                     645  untrack ans_30_8 
              #                     644  untrack temp_8_arithop_50_0 
              #                     68   temp_10_arithop_50_0 = Mod i32 temp_9_arithop_50_0, 1000000007_0 
              #                    occupy a2 with temp_9_arithop_50_0
              #                    occupy a0 with 1000000007_0
    li      a0, 1000000007
              #                    occupy a1 with temp_10_arithop_50_0
    rem     a1,a2,a0
              #                    free a2
              #                    occupy a2 with temp_9_arithop_50_0
              #                    store to temp_9_arithop_50_0 in mem offset legal
    sw      a2,176(sp)
              #                    release a2 with temp_9_arithop_50_0
              #                    free a0
              #                    free a1
              #                     636  untrack temp_9_arithop_50_0 
              #                     69   (nop) 
              #                     396  ans_30_10 = i32 temp_10_arithop_50_0 
              #                    occupy a1 with temp_10_arithop_50_0
              #                    occupy a0 with ans_30_10
    mv      a0, a1
              #                    free a1
              #                    occupy a1 with temp_10_arithop_50_0
              #                    store to temp_10_arithop_50_0 in mem offset legal
    sw      a1,172(sp)
              #                    release a1 with temp_10_arithop_50_0
              #                    free a0
              #                     643  untrack temp_10_arithop_50_0 
              #                          jump label: branch_false_51 
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: ans_30_10, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     191  label branch_false_51: 
.branch_false_51:
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: ans_30_10, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     45   (nop) 
              #                     47   temp_2_arithop_30_0 = Mod i32 ans_30_10, 1000000007_0 
              #                    occupy a0 with ans_30_10
              #                    occupy a1 with 1000000007_0
    li      a1, 1000000007
              #                    occupy a2 with temp_2_arithop_30_0
    rem     a2,a0,a1
              #                    free a0
              #                    occupy a0 with ans_30_10
              #                    store to ans_30_10 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with ans_30_10
              #                    free a1
              #                    free a2
              #                     647  untrack ans_30_10 
              #                     48   store temp_2_arithop_30_0:i32 temp_44_ptr_of_*dp_0_31:ptr->i32 
              #                    occupy a0 with temp_44_ptr_of_*dp_0_31
              #                    load from temp_44_ptr_of_*dp_0_31 in mem
    ld      a0,32(sp)
              #                    occupy a2 with temp_2_arithop_30_0
    sw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_2_arithop_30_0
              #                    store to temp_2_arithop_30_0 in mem offset legal
    sw      a2,212(sp)
              #                    release a2 with temp_2_arithop_30_0
              #                    free a0
              #                     646  untrack temp_2_arithop_30_0 
              #                     49   dp_0_12 = chi dp_0_11:48 
              #                     52   (nop) 
              #                     54   temp_4_ele_of_*dp_0_30_0 = load temp_44_ptr_of_*dp_0_31:ptr->i32 
              #                    occupy a0 with temp_44_ptr_of_*dp_0_31
              #                    occupy a1 with temp_4_ele_of_*dp_0_30_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_4_ele_of_*dp_0_30_0
              #                    store to temp_4_ele_of_*dp_0_30_0 in mem offset legal
    sw      a1,196(sp)
              #                    release a1 with temp_4_ele_of_*dp_0_30_0
              #                    free a0
              #                     648  untrack temp_44_ptr_of_*dp_0_31 
              #                    occupy a0 with temp_44_ptr_of_*dp_0_31
              #                    release a0 with temp_44_ptr_of_*dp_0_31
              #                     55   mu dp_0_12:54 
              #                     353  mu dp_0_12:56 
              #                     56   ret temp_4_ele_of_*dp_0_30_0 
              #                    load from ra_dfs_0 in mem
    ld      ra,280(sp)
              #                    load from s0_dfs_0 in mem
    ld      s0,272(sp)
              #                    occupy a0 with temp_4_ele_of_*dp_0_30_0
              #                    load from temp_4_ele_of_*dp_0_30_0 in mem


    lw      a0,196(sp)
    addi    sp,sp,288
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: ans_30_8, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     391  label UP_57_0: 
.UP_57_0:
              #                     633  untrack temp_9_arithop_50_0 
              #                     632  untrack temp_5_arithop_50_0 
              #                     631  untrack temp_7_ret_of_dfs_50_0 
              #                     630  untrack temp_6_arithop_50_0 
              #                     629  untrack e_28_0 
              #                     628  untrack temp_10_arithop_50_0 
              #                     627  untrack temp_56__2362_0 
              #                     626  untrack temp_8_arithop_50_0 
              #                     625  untrack c_28_0 
              #                     624  untrack a_28_0 
              #                     623  untrack d_28_0 
              #                     622  untrack b_28_0 
              #                     397  ans_30_10 = i32 ans_30_8 
              #                    occupy a0 with ans_30_8
              #                    occupy a1 with ans_30_10
    mv      a1, a0
              #                    free a0
              #                    occupy a0 with ans_30_8
              #                    store to ans_30_8 in mem offset legal
    sw      a0,232(sp)
              #                    release a0 with ans_30_8
              #                    free a1
              #                     649  untrack ans_30_8 
              #                          jump label: branch_false_51 
              #                    occupy a1 with ans_30_10
              #                    store to ans_30_10 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with ans_30_10
              #                    occupy a0 with ans_30_10
              #                    load from ans_30_10 in mem


    lw      a0,228(sp)
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: ans_30_6, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     390  label UP_56_0: 
.UP_56_0:
              #                     610  untrack temp_11_ret_of_equal_47_0 
              #                     609  untrack temp_18_arithop_47_0 
              #                     608  untrack temp_55__2081_0 
              #                     607  untrack temp_17_arithop_47_0 
              #                     606  untrack temp_14_arithop_47_0 
              #                     605  untrack temp_15_ret_of_dfs_47_0 
              #                     604  untrack temp_12_arithop_47_0 
              #                     603  untrack last_28_0 
              #                     602  untrack temp_16_arithop_47_0 
              #                     601  untrack temp_13_arithop_47_0 
              #                     398  ans_30_8 = i32 ans_30_6 
              #                    occupy a0 with ans_30_6
              #                    occupy a1 with ans_30_8
    mv      a1, a0
              #                    free a0
              #                    occupy a0 with ans_30_6
              #                    store to ans_30_6 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with ans_30_6
              #                    free a1
              #                     650  untrack ans_30_6 
              #                          jump label: branch_false_48 
              #                    occupy a1 with ans_30_8
              #                    store to ans_30_8 in mem offset legal
    sw      a1,232(sp)
              #                    release a1 with ans_30_8
              #                    occupy a0 with ans_30_8
              #                    load from ans_30_8 in mem


    lw      a0,232(sp)
    j       .branch_false_48
              #                    regtab     a2:Freed { symidx: ans_30_4, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     389  label UP_2_0: 
.UP_2_0:
              #                     590  untrack temp_23_ret_of_dfs_44_0 
              #                     589  untrack temp_26_arithop_44_0 
              #                     588  untrack temp_20_arithop_44_0 
              #                     587  untrack temp_22_arithop_44_0 
              #                     586  untrack temp_24_arithop_44_0 
              #                     585  untrack temp_25_arithop_44_0 
              #                     584  untrack temp_19_ret_of_equal_44_0 
              #                     583  untrack temp_21_arithop_44_0 
              #                     582  untrack temp_54__1800_0 
              #                     399  ans_30_6 = i32 ans_30_4 
              #                    occupy a2 with ans_30_4
              #                    occupy a0 with ans_30_6
    mv      a0, a2
              #                    free a2
              #                    occupy a2 with ans_30_4
              #                    store to ans_30_4 in mem offset legal
    sw      a2,240(sp)
              #                    release a2 with ans_30_4
              #                    free a0
              #                     651  untrack ans_30_4 
              #                          jump label: branch_false_45 
    j       .branch_false_45
              #                    regtab     a2:Freed { symidx: ans_30_2, tracked: true } |     a3:Freed { symidx: temp_53__1519_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     388  label UP_8_0: 
.UP_8_0:
              #                     571  untrack temp_29_arithop_41_0 
              #                     570  untrack temp_53__1519_0 
              #                    occupy a3 with temp_53__1519_0
              #                    release a3 with temp_53__1519_0
              #                     569  untrack temp_28_arithop_41_0 
              #                     568  untrack temp_33_arithop_41_0 
              #                     567  untrack temp_27_ret_of_equal_41_0 
              #                     566  untrack temp_30_arithop_41_0 
              #                     565  untrack temp_34_arithop_41_0 
              #                     564  untrack temp_31_ret_of_dfs_41_0 
              #                     563  untrack temp_32_arithop_41_0 
              #                     400  ans_30_4 = i32 ans_30_2 
              #                    occupy a2 with ans_30_2
              #                    occupy a0 with ans_30_4
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                     652  untrack ans_30_2 
              #                    occupy a2 with ans_30_2
              #                    release a2 with ans_30_2
              #                          jump label: branch_false_42 
              #                    occupy a0 with ans_30_4
              #                    store to ans_30_4 in mem offset legal
    sw      a0,240(sp)
              #                    release a0 with ans_30_4
              #                    occupy a2 with ans_30_4
              #                    load from ans_30_4 in mem


    lw      a2,240(sp)
    j       .branch_false_42
              #                    regtab     a1:Freed { symidx: b_28_0, tracked: true } |     a2:Freed { symidx: c_28_0, tracked: true } |     a3:Freed { symidx: d_28_0, tracked: true } |     a5:Freed { symidx: temp_52__1245_0, tracked: true } |     a6:Freed { symidx: temp_44_ptr_of_*dp_0_31, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     387  label UP_33_0: 
.UP_33_0:
              #                     554  untrack temp_38_ret_of_dfs_38_0 
              #                     553  untrack temp_35_ret_of_equal_38_0 
              #                     552  untrack temp_36_arithop_38_0 
              #                     551  untrack temp_37_arithop_38_0 
              #                     550  untrack temp_52__1245_0 
              #                    occupy a5 with temp_52__1245_0
              #                    release a5 with temp_52__1245_0
              #                     549  untrack temp_39_arithop_38_0 
              #                     548  untrack temp_40_arithop_38_0 
              #                     547  untrack temp_41_arithop_38_0 
              #                     401  ans_30_2 = i32 0_0 
              #                    occupy a0 with ans_30_2
    li      a0, 0
              #                    free a0
              #                          jump label: branch_false_39 
              #                    occupy a6 with temp_44_ptr_of_*dp_0_31
              #                    store to temp_44_ptr_of_*dp_0_31 in mem offset legal
    sd      a6,32(sp)
              #                    release a6 with temp_44_ptr_of_*dp_0_31
              #                    occupy a3 with d_28_0
              #                    store to d_28_0 in mem offset legal
    sw      a3,256(sp)
              #                    release a3 with d_28_0
              #                    occupy a2 with c_28_0
              #                    store to c_28_0 in mem offset legal
    sw      a2,260(sp)
              #                    release a2 with c_28_0
              #                    occupy a0 with ans_30_2
              #                    store to ans_30_2 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with ans_30_2
              #                    occupy a2 with ans_30_2
              #                    load from ans_30_2 in mem


    lw      a2,244(sp)
              #                    occupy a1 with b_28_0
              #                    store to b_28_0 in mem offset legal
    sw      a1,264(sp)
              #                    release a1 with b_28_0
    j       .branch_false_39
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     30   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 240|s0_main:8 at 232|temp_57_ret_of_getint _s56 _i0:4 at 228|i _s56 _i1:4 at 224|i _s56 _i4:4 at 220|none:4 at 216|temp_58_ptr_of_*cns_0:8 at 208|temp_59_ele_of_*cns_0 _s56 _i0:4 at 204|none:4 at 200|temp_60_ptr_of_*cns_0:8 at 192|temp_61_ele_of_*cns_0 _s56 _i0:4 at 188|none:4 at 184|temp_62_ptr_of_*cns_0:8 at 176|temp_63_ele_of_*cns_0 _s56 _i0:4 at 172|none:4 at 168|temp_64_ptr_of_*cns_0:8 at 160|temp_65_ele_of_*cns_0 _s56 _i0:4 at 156|none:4 at 152|temp_66_ptr_of_*cns_0:8 at 144|temp_67_ele_of_*cns_0 _s56 _i0:4 at 140|temp_68_ret_of_dfs _s56 _i0:4 at 136|temp_69_ptr_of_*list_0:8 at 128|temp_70_ret_of_getint _s92 _i0:4 at 124|none:4 at 120|temp_71_ptr_of_*list_0:8 at 112|temp_72_ele_of_*list_0 _s92 _i0:4 at 108|none:4 at 104|temp_73_ptr_of_*cns_0:8 at 96|temp_74_ptr_of_*list_0:8 at 88|temp_76_ptr_of_*cns_0:8 at 80|temp_77_ele_of_*cns_0 _s92 _i0:4 at 76|temp_78_arithop _s92 _i0:4 at 72|temp_79_arithop _s92 _i0:4 at 68|j _s61 _i1:4 at 64|temp_80_arithop _s61 _i0:4 at 60|k _s65 _i1:4 at 56|temp_81_arithop _s65 _i0:4 at 52|l _s69 _i1:4 at 48|temp_82_arithop _s69 _i0:4 at 44|m _s73 _i1:4 at 40|temp_83_arithop _s73 _i0:4 at 36|h _s77 _i1:4 at 32|temp_84_arithop _s77 _i0:4 at 28|none:4 at 24|temp_85_ptr_of_*dp_0:8 at 16|temp_86_arithop _s81 _i0:4 at 12|temp_87_cmp _s59 _i0:1 at 11|temp_88_cmp _s90 _i0:1 at 10|temp_89_cmp _s63 _i0:1 at 9|temp_90_cmp _s67 _i0:1 at 8|temp_91_cmp _s71 _i0:1 at 7|temp_92_cmp _s75 _i0:1 at 6|temp_93_cmp _s79 _i0:1 at 5|none:5 at 0
    addi    sp,sp,-248
              #                    store to ra_main_0 in mem offset legal
    sd      ra,240(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,232(sp)
    addi    s0,sp,248
              #                     354  cns_0_1 = chi cns_0_0:30 
              #                     355  dp_0_13 = chi dp_0_0:30 
              #                     356  list_0_1 = chi list_0_0:30 
              #                     195  alloc i32 [temp_57_ret_of_getint_56] 
              #                     198  alloc i32 [n_56] 
              #                     200  alloc i32 [i_56] 
              #                     202  alloc ptr->i32 [temp_58_ptr_of_*cns_0_56] 
              #                     204  alloc i32 [temp_59_ele_of_*cns_0_56] 
              #                     207  alloc ptr->i32 [temp_60_ptr_of_*cns_0_56] 
              #                     209  alloc i32 [temp_61_ele_of_*cns_0_56] 
              #                     212  alloc ptr->i32 [temp_62_ptr_of_*cns_0_56] 
              #                     214  alloc i32 [temp_63_ele_of_*cns_0_56] 
              #                     217  alloc ptr->i32 [temp_64_ptr_of_*cns_0_56] 
              #                     219  alloc i32 [temp_65_ele_of_*cns_0_56] 
              #                     222  alloc ptr->i32 [temp_66_ptr_of_*cns_0_56] 
              #                     224  alloc i32 [temp_67_ele_of_*cns_0_56] 
              #                     227  alloc i32 [temp_68_ret_of_dfs_56] 
              #                     230  alloc i32 [ans_56] 
              #                     234  alloc ptr->i32 [temp_69_ptr_of_*list_0_92] 
              #                     236  alloc i32 [temp_70_ret_of_getint_92] 
              #                     240  alloc ptr->i32 [temp_71_ptr_of_*list_0_92] 
              #                     242  alloc i32 [temp_72_ele_of_*list_0_92] 
              #                     245  alloc ptr->i32 [temp_73_ptr_of_*cns_0_92] 
              #                     247  alloc ptr->i32 [temp_74_ptr_of_*list_0_92] 
              #                     249  alloc i32 [temp_75_ele_of_*list_0_92] 
              #                     252  alloc ptr->i32 [temp_76_ptr_of_*cns_0_92] 
              #                     254  alloc i32 [temp_77_ele_of_*cns_0_92] 
              #                     257  alloc i32 [temp_78_arithop_92] 
              #                     261  alloc i32 [temp_79_arithop_92] 
              #                     265  alloc i32 [j_61] 
              #                     266  alloc i32 [temp_80_arithop_61] 
              #                     270  alloc i32 [k_65] 
              #                     271  alloc i32 [temp_81_arithop_65] 
              #                     275  alloc i32 [l_69] 
              #                     276  alloc i32 [temp_82_arithop_69] 
              #                     280  alloc i32 [m_73] 
              #                     281  alloc i32 [temp_83_arithop_73] 
              #                     285  alloc i32 [h_77] 
              #                     286  alloc i32 [temp_84_arithop_77] 
              #                     289  alloc ptr->i32 [temp_85_ptr_of_*dp_0_81] 
              #                     293  alloc i32 [temp_86_arithop_81] 
              #                     296  alloc i1 [temp_87_cmp_59] 
              #                     302  alloc i1 [temp_88_cmp_90] 
              #                     310  alloc i1 [temp_89_cmp_63] 
              #                     316  alloc i1 [temp_90_cmp_67] 
              #                     322  alloc i1 [temp_91_cmp_71] 
              #                     328  alloc i1 [temp_92_cmp_75] 
              #                     334  alloc i1 [temp_93_cmp_79] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     196  temp_57_ret_of_getint_56_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     197  (nop) 
              #                     199  (nop) 
              #                     402  i_56_1 = i32 0_0 
              #                    occupy a1 with i_56_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_60 
    j       .while.head_60
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     298  label while.head_60: 
.while.head_60:
              #                     297  temp_87_cmp_59_0 = icmp i32 Slt i_56_1, 18_0 
              #                    occupy a1 with i_56_1
              #                    occupy a2 with 18_0
    li      a2, 18
              #                    occupy a3 with temp_87_cmp_59_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     301  br i1 temp_87_cmp_59_0, label while.body_60, label while.exit_60 
              #                    occupy a3 with temp_87_cmp_59_0
              #                    free a3
              #                    occupy a3 with temp_87_cmp_59_0
    bnez    a3, .while.body_60
              #                    free a3
    j       .while.exit_60
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     299  label while.body_60: 
.while.body_60:
              #                     264  (nop) 
              #                     403  j_61_1 = i32 0_0 
              #                    occupy a2 with j_61_1
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_64 
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     312  label while.head_64: 
.while.head_64:
              #                     311  temp_89_cmp_63_0 = icmp i32 Slt j_61_1, 18_0 
              #                    occupy a2 with j_61_1
              #                    occupy a4 with 18_0
    li      a4, 18
              #                    occupy a5 with temp_89_cmp_63_0
    slt     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                     315  br i1 temp_89_cmp_63_0, label while.body_64, label while.exit_64 
              #                    occupy a5 with temp_89_cmp_63_0
              #                    free a5
              #                    occupy a5 with temp_89_cmp_63_0
    bnez    a5, .while.body_64
              #                    free a5
    j       .while.exit_64
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     313  label while.body_64: 
.while.body_64:
              #                     269  (nop) 
              #                     404  k_65_1 = i32 0_0 
              #                    occupy a4 with k_65_1
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_68 
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a4:Freed { symidx: k_65_1, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     318  label while.head_68: 
.while.head_68:
              #                     317  temp_90_cmp_67_0 = icmp i32 Slt k_65_1, 18_0 
              #                    occupy a4 with k_65_1
              #                    occupy a6 with 18_0
    li      a6, 18
              #                    occupy a7 with temp_90_cmp_67_0
    slt     a7,a4,a6
              #                    free a4
              #                    free a6
              #                    free a7
              #                     321  br i1 temp_90_cmp_67_0, label while.body_68, label while.exit_68 
              #                    occupy a7 with temp_90_cmp_67_0
              #                    free a7
              #                    occupy a7 with temp_90_cmp_67_0
    bnez    a7, .while.body_68
              #                    free a7
    j       .while.exit_68
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a4:Freed { symidx: k_65_1, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     319  label while.body_68: 
.while.body_68:
              #                     274  (nop) 
              #                     405  l_69_1 = i32 0_0 
              #                    occupy a6 with l_69_1
    li      a6, 0
              #                    free a6
              #                          jump label: while.head_72 
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a4:Freed { symidx: k_65_1, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |     a6:Freed { symidx: l_69_1, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     324  label while.head_72: 
.while.head_72:
              #                     323  temp_91_cmp_71_0 = icmp i32 Slt l_69_1, 18_0 
              #                    occupy a6 with l_69_1
              #                    occupy s1 with 18_0
    li      s1, 18
              #                    occupy s2 with temp_91_cmp_71_0
    slt     s2,a6,s1
              #                    free a6
              #                    free s1
              #                    free s2
              #                     327  br i1 temp_91_cmp_71_0, label while.body_72, label while.exit_72 
              #                    occupy s2 with temp_91_cmp_71_0
              #                    free s2
              #                    occupy s2 with temp_91_cmp_71_0
    bnez    s2, .while.body_72
              #                    free s2
    j       .while.exit_72
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a4:Freed { symidx: k_65_1, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |     a6:Freed { symidx: l_69_1, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |     s2:Freed { symidx: temp_91_cmp_71_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     325  label while.body_72: 
.while.body_72:
              #                     279  (nop) 
              #                     406  m_73_1 = i32 0_0 
              #                    occupy s1 with m_73_1
    li      s1, 0
              #                    free s1
              #                          jump label: while.head_76 
    j       .while.head_76
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a4:Freed { symidx: k_65_1, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |     a6:Freed { symidx: l_69_1, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |     s1:Freed { symidx: m_73_1, tracked: true } |     s2:Freed { symidx: temp_91_cmp_71_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     330  label while.head_76: 
.while.head_76:
              #                     329  temp_92_cmp_75_0 = icmp i32 Slt m_73_1, 18_0 
              #                    occupy s1 with m_73_1
              #                    occupy s3 with 18_0
    li      s3, 18
              #                    occupy s4 with temp_92_cmp_75_0
    slt     s4,s1,s3
              #                    free s1
              #                    occupy s1 with m_73_1
              #                    store to m_73_1 in mem offset legal
    sw      s1,40(sp)
              #                    release s1 with m_73_1
              #                    free s3
              #                    free s4
              #                     333  br i1 temp_92_cmp_75_0, label while.body_76, label while.exit_76 
              #                    occupy s4 with temp_92_cmp_75_0
              #                    free s4
              #                    occupy s4 with temp_92_cmp_75_0
    bnez    s4, .while.body_76
              #                    free s4
    j       .while.exit_76
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a4:Freed { symidx: k_65_1, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |     a6:Freed { symidx: l_69_1, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |     s2:Freed { symidx: temp_91_cmp_71_0, tracked: true } |     s4:Freed { symidx: temp_92_cmp_75_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     331  label while.body_76: 
.while.body_76:
              #                     284  (nop) 
              #                     407  h_77_1 = i32 0_0 
              #                    occupy s1 with h_77_1
    li      s1, 0
              #                    free s1
              #                    occupy s1 with h_77_1
              #                    store to h_77_1 in mem offset legal
    sw      s1,32(sp)
              #                    release s1 with h_77_1
              #                          jump label: while.head_80 
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a4:Freed { symidx: k_65_1, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |     a6:Freed { symidx: l_69_1, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |     s2:Freed { symidx: temp_91_cmp_71_0, tracked: true } |     s4:Freed { symidx: temp_92_cmp_75_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     336  label while.head_80: 
.while.head_80:
              #                     335  temp_93_cmp_79_0 = icmp i32 Slt h_77_1, 7_0 
              #                    occupy s1 with h_77_1
              #                    load from h_77_1 in mem


    lw      s1,32(sp)
              #                    occupy s3 with 7_0
    li      s3, 7
              #                    occupy s5 with temp_93_cmp_79_0
    slt     s5,s1,s3
              #                    free s1
              #                    occupy s1 with h_77_1
              #                    store to h_77_1 in mem offset legal
    sw      s1,32(sp)
              #                    release s1 with h_77_1
              #                    free s3
              #                    free s5
              #                    occupy s5 with temp_93_cmp_79_0
              #                    store to temp_93_cmp_79_0 in mem offset legal
    sb      s5,5(sp)
              #                    release s5 with temp_93_cmp_79_0
              #                     339  br i1 temp_93_cmp_79_0, label while.body_80, label while.exit_80 
              #                    occupy s1 with temp_93_cmp_79_0
              #                    load from temp_93_cmp_79_0 in mem


    lb      s1,5(sp)
              #                    free s1
              #                    occupy s1 with temp_93_cmp_79_0
              #                    store to temp_93_cmp_79_0 in mem offset legal
    sb      s1,5(sp)
              #                    release s1 with temp_93_cmp_79_0
              #                    occupy s1 with temp_93_cmp_79_0
              #                    load from temp_93_cmp_79_0 in mem


    lb      s1,5(sp)
    bnez    s1, .while.body_80
              #                    free s1
              #                    occupy s1 with temp_93_cmp_79_0
              #                    store to temp_93_cmp_79_0 in mem offset legal
    sb      s1,5(sp)
              #                    release s1 with temp_93_cmp_79_0
    j       .while.exit_80
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a4:Freed { symidx: k_65_1, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |     a6:Freed { symidx: l_69_1, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |     s2:Freed { symidx: temp_91_cmp_71_0, tracked: true } |     s4:Freed { symidx: temp_92_cmp_75_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     337  label while.body_80: 
.while.body_80:
              #                     290  temp_85_ptr_of_*dp_0_81 = GEP *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(i_56_1), Some(j_61_1), Some(k_65_1), Some(l_69_1), Some(m_73_1), Some(h_77_1)] 
              #                    occupy s1 with temp_85_ptr_of_*dp_0_81
    li      s1, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with 734832_0
    li      s5, 734832
              #                    occupy a1 with i_56_1
    mul     s3,s5,a1
              #                    free s5
              #                    free a1
              #                    occupy a1 with i_56_1
              #                    store to i_56_1 in mem offset legal
    sw      a1,224(sp)
              #                    release a1 with i_56_1
    add     s1,s1,s3
              #                    free s3
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with 40824_0
    li      s3, 40824
              #                    occupy a2 with j_61_1
    mul     a1,s3,a2
              #                    free s3
              #                    free a2
              #                    occupy a2 with j_61_1
              #                    store to j_61_1 in mem offset legal
    sw      a2,64(sp)
              #                    release a2 with j_61_1
    add     s1,s1,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with 2268_0
    li      s3, 2268
              #                    occupy a4 with k_65_1
    mul     a2,s3,a4
              #                    free s3
              #                    free a4
              #                    occupy a4 with k_65_1
              #                    store to k_65_1 in mem offset legal
    sw      a4,56(sp)
              #                    release a4 with k_65_1
    add     s1,s1,a2
              #                    free a2
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with 126_0
    li      s3, 126
              #                    occupy a6 with l_69_1
    mul     a4,s3,a6
              #                    free s3
              #                    free a6
              #                    occupy a6 with l_69_1
              #                    store to l_69_1 in mem offset legal
    sw      a6,48(sp)
              #                    release a6 with l_69_1
    add     s1,s1,a4
              #                    free a4
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with 7_0
    li      s3, 7
              #                    occupy s5 with m_73_1
              #                    load from m_73_1 in mem


    lw      s5,40(sp)
    mul     a6,s3,s5
              #                    free s3
              #                    free s5
              #                    occupy s5 with m_73_1
              #                    store to m_73_1 in mem offset legal
    sw      s5,40(sp)
              #                    release s5 with m_73_1
    add     s1,s1,a6
              #                    free a6
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with h_77_1
              #                    load from h_77_1 in mem


    lw      s3,32(sp)
    mv      a6, s3
              #                    free s3
              #                    occupy s3 with h_77_1
              #                    store to h_77_1 in mem offset legal
    sw      s3,32(sp)
              #                    release s3 with h_77_1
    add     s1,s1,a6
              #                    free a6
    slli s1,s1,2
              #                    occupy a6 with *dp_0
              #                       load label dp as ptr to reg
    la      a6, dp
              #                    occupy reg a6 with *dp_0
    add     s1,s1,a6
              #                    free a6
              #                    free s1
              #                     291  store -1_0:i32 temp_85_ptr_of_*dp_0_81:ptr->i32 
              #                    occupy s1 with temp_85_ptr_of_*dp_0_81
              #                    occupy a6 with -1_0
    li      a6, -1
    sw      a6,0(s1)
              #                    free a6
              #                    free s1
              #                     292  dp_0_20 = chi dp_0_19:291 
              #                     294  temp_86_arithop_81_0 = Add i32 h_77_1, 1_0 
              #                    occupy a6 with h_77_1
              #                    load from h_77_1 in mem


    lw      a6,32(sp)
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s5 with temp_86_arithop_81_0
    ADDW    s5,a6,s3
              #                    free a6
              #                    occupy a6 with h_77_1
              #                    store to h_77_1 in mem offset legal
    sw      a6,32(sp)
              #                    release a6 with h_77_1
              #                    free s3
              #                    free s5
              #                    occupy s5 with temp_86_arithop_81_0
              #                    store to temp_86_arithop_81_0 in mem offset legal
    sw      s5,12(sp)
              #                    release s5 with temp_86_arithop_81_0
              #                     295  (nop) 
              #                     408  h_77_1 = i32 temp_86_arithop_81_0 
              #                    occupy a6 with temp_86_arithop_81_0
              #                    load from temp_86_arithop_81_0 in mem


    lw      a6,12(sp)
              #                    occupy s3 with h_77_1
    mv      s3, a6
              #                    free a6
              #                    occupy a6 with temp_86_arithop_81_0
              #                    store to temp_86_arithop_81_0 in mem offset legal
    sw      a6,12(sp)
              #                    release a6 with temp_86_arithop_81_0
              #                    free s3
              #                    occupy s3 with h_77_1
              #                    store to h_77_1 in mem offset legal
    sw      s3,32(sp)
              #                    release s3 with h_77_1
              #                          jump label: while.head_80 
              #                    occupy a4 with k_65_1
              #                    load from k_65_1 in mem


    lw      a4,56(sp)
              #                    occupy s1 with temp_85_ptr_of_*dp_0_81
              #                    store to temp_85_ptr_of_*dp_0_81 in mem offset legal
    sd      s1,16(sp)
              #                    release s1 with temp_85_ptr_of_*dp_0_81
              #                    occupy a2 with j_61_1
              #                    load from j_61_1 in mem


    lw      a2,64(sp)
              #                    occupy a1 with i_56_1
              #                    load from i_56_1 in mem


    lw      a1,224(sp)
              #                    occupy a6 with l_69_1
              #                    load from l_69_1 in mem


    lw      a6,48(sp)
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a4:Freed { symidx: k_65_1, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |     a6:Freed { symidx: l_69_1, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |     s2:Freed { symidx: temp_91_cmp_71_0, tracked: true } |     s4:Freed { symidx: temp_92_cmp_75_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     338  label while.exit_80: 
.while.exit_80:
              #                     287  temp_84_arithop_77_0 = Add i32 m_73_1, 1_0 
              #                    occupy s1 with m_73_1
              #                    load from m_73_1 in mem


    lw      s1,40(sp)
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s5 with temp_84_arithop_77_0
    ADDW    s5,s1,s3
              #                    free s1
              #                    occupy s1 with m_73_1
              #                    store to m_73_1 in mem offset legal
    sw      s1,40(sp)
              #                    release s1 with m_73_1
              #                    free s3
              #                    free s5
              #                    occupy s5 with temp_84_arithop_77_0
              #                    store to temp_84_arithop_77_0 in mem offset legal
    sw      s5,28(sp)
              #                    release s5 with temp_84_arithop_77_0
              #                     288  (nop) 
              #                     409  m_73_1 = i32 temp_84_arithop_77_0 
              #                    occupy s1 with temp_84_arithop_77_0
              #                    load from temp_84_arithop_77_0 in mem


    lw      s1,28(sp)
              #                    occupy s3 with m_73_1
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with temp_84_arithop_77_0
              #                    store to temp_84_arithop_77_0 in mem offset legal
    sw      s1,28(sp)
              #                    release s1 with temp_84_arithop_77_0
              #                    free s3
              #                    occupy s3 with m_73_1
              #                    store to m_73_1 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with m_73_1
              #                          jump label: while.head_76 
              #                    occupy s1 with m_73_1
              #                    load from m_73_1 in mem


    lw      s1,40(sp)
              #                    occupy s4 with temp_92_cmp_75_0
              #                    store to temp_92_cmp_75_0 in mem offset legal
    sb      s4,6(sp)
              #                    release s4 with temp_92_cmp_75_0
    j       .while.head_76
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a4:Freed { symidx: k_65_1, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |     a6:Freed { symidx: l_69_1, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |     s2:Freed { symidx: temp_91_cmp_71_0, tracked: true } |     s4:Freed { symidx: temp_92_cmp_75_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     332  label while.exit_76: 
.while.exit_76:
              #                     282  temp_83_arithop_73_0 = Add i32 l_69_1, 1_0 
              #                    occupy a6 with l_69_1
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with temp_83_arithop_73_0
    ADDW    s3,a6,s1
              #                    free a6
              #                    occupy a6 with l_69_1
              #                    store to l_69_1 in mem offset legal
    sw      a6,48(sp)
              #                    release a6 with l_69_1
              #                    free s1
              #                    free s3
              #                     283  (nop) 
              #                     410  l_69_1 = i32 temp_83_arithop_73_0 
              #                    occupy s3 with temp_83_arithop_73_0
              #                    occupy a6 with l_69_1
    mv      a6, s3
              #                    free s3
              #                    occupy s3 with temp_83_arithop_73_0
              #                    store to temp_83_arithop_73_0 in mem offset legal
    sw      s3,36(sp)
              #                    release s3 with temp_83_arithop_73_0
              #                    free a6
              #                          jump label: while.head_72 
              #                    occupy s2 with temp_91_cmp_71_0
              #                    store to temp_91_cmp_71_0 in mem offset legal
    sb      s2,7(sp)
              #                    release s2 with temp_91_cmp_71_0
              #                    occupy s4 with temp_92_cmp_75_0
              #                    store to temp_92_cmp_75_0 in mem offset legal
    sb      s4,6(sp)
              #                    release s4 with temp_92_cmp_75_0
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a4:Freed { symidx: k_65_1, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |     a6:Freed { symidx: l_69_1, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |     s2:Freed { symidx: temp_91_cmp_71_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     326  label while.exit_72: 
.while.exit_72:
              #                     277  temp_82_arithop_69_0 = Add i32 k_65_1, 1_0 
              #                    occupy a4 with k_65_1
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with temp_82_arithop_69_0
    ADDW    s3,a4,s1
              #                    free a4
              #                    occupy a4 with k_65_1
              #                    store to k_65_1 in mem offset legal
    sw      a4,56(sp)
              #                    release a4 with k_65_1
              #                    free s1
              #                    free s3
              #                     278  (nop) 
              #                     411  k_65_1 = i32 temp_82_arithop_69_0 
              #                    occupy s3 with temp_82_arithop_69_0
              #                    occupy a4 with k_65_1
    mv      a4, s3
              #                    free s3
              #                    occupy s3 with temp_82_arithop_69_0
              #                    store to temp_82_arithop_69_0 in mem offset legal
    sw      s3,44(sp)
              #                    release s3 with temp_82_arithop_69_0
              #                    free a4
              #                          jump label: while.head_68 
              #                    occupy a6 with l_69_1
              #                    store to l_69_1 in mem offset legal
    sw      a6,48(sp)
              #                    release a6 with l_69_1
              #                    occupy s2 with temp_91_cmp_71_0
              #                    store to temp_91_cmp_71_0 in mem offset legal
    sb      s2,7(sp)
              #                    release s2 with temp_91_cmp_71_0
              #                    occupy a7 with temp_90_cmp_67_0
              #                    store to temp_90_cmp_67_0 in mem offset legal
    sb      a7,8(sp)
              #                    release a7 with temp_90_cmp_67_0
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a4:Freed { symidx: k_65_1, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |     a7:Freed { symidx: temp_90_cmp_67_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     320  label while.exit_68: 
.while.exit_68:
              #                     272  temp_81_arithop_65_0 = Add i32 j_61_1, 1_0 
              #                    occupy a2 with j_61_1
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with temp_81_arithop_65_0
    ADDW    s1,a2,a6
              #                    free a2
              #                    free a6
              #                    free s1
              #                     273  (nop) 
              #                     412  j_61_1 = i32 temp_81_arithop_65_0 
              #                    occupy s1 with temp_81_arithop_65_0
              #                    occupy a2 with j_61_1
    mv      a2, s1
              #                    free s1
              #                    free a2
              #                          jump label: while.head_64 
              #                    occupy a4 with k_65_1
              #                    store to k_65_1 in mem offset legal
    sw      a4,56(sp)
              #                    release a4 with k_65_1
              #                    occupy s1 with temp_81_arithop_65_0
              #                    store to temp_81_arithop_65_0 in mem offset legal
    sw      s1,52(sp)
              #                    release s1 with temp_81_arithop_65_0
              #                    occupy a5 with temp_89_cmp_63_0
              #                    store to temp_89_cmp_63_0 in mem offset legal
    sb      a5,9(sp)
              #                    release a5 with temp_89_cmp_63_0
              #                    occupy a7 with temp_90_cmp_67_0
              #                    store to temp_90_cmp_67_0 in mem offset legal
    sb      a7,8(sp)
              #                    release a7 with temp_90_cmp_67_0
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a2:Freed { symidx: j_61_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |     a5:Freed { symidx: temp_89_cmp_63_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     314  label while.exit_64: 
.while.exit_64:
              #                     267  temp_80_arithop_61_0 = Add i32 i_56_1, 1_0 
              #                    occupy a1 with i_56_1
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with temp_80_arithop_61_0
    ADDW    a6,a1,a4
              #                    free a1
              #                    free a4
              #                    free a6
              #                     268  (nop) 
              #                     413  i_56_1 = i32 temp_80_arithop_61_0 
              #                    occupy a6 with temp_80_arithop_61_0
              #                    occupy a1 with i_56_1
    mv      a1, a6
              #                    free a6
              #                    free a1
              #                          jump label: while.head_60 
              #                    occupy a3 with temp_87_cmp_59_0
              #                    store to temp_87_cmp_59_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_87_cmp_59_0
              #                    occupy a2 with j_61_1
              #                    store to j_61_1 in mem offset legal
    sw      a2,64(sp)
              #                    release a2 with j_61_1
              #                    occupy a6 with temp_80_arithop_61_0
              #                    store to temp_80_arithop_61_0 in mem offset legal
    sw      a6,60(sp)
              #                    release a6 with temp_80_arithop_61_0
              #                    occupy a5 with temp_89_cmp_63_0
              #                    store to temp_89_cmp_63_0 in mem offset legal
    sb      a5,9(sp)
              #                    release a5 with temp_89_cmp_63_0
    j       .while.head_60
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_1, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     300  label while.exit_60: 
.while.exit_60:
              #                     653  untrack i_56_1 
              #                    occupy a1 with i_56_1
              #                    release a1 with i_56_1
              #                     201  (nop) 
              #                     414  i_56_4 = i32 0_0 
              #                    occupy a1 with i_56_4
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_91 
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_4, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     304  label while.head_91: 
.while.head_91:
              #                     303  temp_88_cmp_90_0 = icmp i32 Slt i_56_4, temp_57_ret_of_getint_56_0 
              #                    occupy a1 with i_56_4
              #                    occupy a0 with temp_57_ret_of_getint_56_0
              #                    occupy a2 with temp_88_cmp_90_0
    slt     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     307  br i1 temp_88_cmp_90_0, label while.body_91, label while.exit_91 
              #                    occupy a2 with temp_88_cmp_90_0
              #                    free a2
              #                    occupy a2 with temp_88_cmp_90_0
    bnez    a2, .while.body_91
              #                    free a2
    j       .while.exit_91
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_4, tracked: true } |     a2:Freed { symidx: temp_88_cmp_90_0, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     305  label while.body_91: 
.while.body_91:
              #                     235  temp_69_ptr_of_*list_0_92 = GEP *list_0:ptr->i32 [Some(i_56_4)] 
              #                    occupy a4 with temp_69_ptr_of_*list_0_92
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_56_4
    mv      a5, a1
              #                    free a1
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *list_0
              #                       load label list as ptr to reg
    la      a6, list
              #                    occupy reg a6 with *list_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     237  temp_70_ret_of_getint_92_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_57_ret_of_getint_56_0
              #                    store to temp_57_ret_of_getint_56_0 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with temp_57_ret_of_getint_56_0
              #                    occupy a1 with i_56_4
              #                    store to i_56_4 in mem offset legal
    sw      a1,220(sp)
              #                    release a1 with i_56_4
              #                    occupy a2 with temp_88_cmp_90_0
              #                    store to temp_88_cmp_90_0 in mem offset legal
    sb      a2,10(sp)
              #                    release a2 with temp_88_cmp_90_0
              #                    occupy a3 with temp_87_cmp_59_0
              #                    store to temp_87_cmp_59_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_87_cmp_59_0
              #                    occupy a4 with temp_69_ptr_of_*list_0_92
              #                    store to temp_69_ptr_of_*list_0_92 in mem offset legal
    sd      a4,128(sp)
              #                    release a4 with temp_69_ptr_of_*list_0_92
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     238  store temp_70_ret_of_getint_92_0:i32 temp_69_ptr_of_*list_0_92:ptr->i32 
              #                    occupy a1 with temp_69_ptr_of_*list_0_92
              #                    load from temp_69_ptr_of_*list_0_92 in mem
    ld      a1,128(sp)
              #                    occupy a0 with temp_70_ret_of_getint_92_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     239  list_0_3 = chi list_0_2:238 
              #                     241  (nop) 
              #                     243  temp_72_ele_of_*list_0_92_0 = load temp_69_ptr_of_*list_0_92:ptr->i32 
              #                    occupy a1 with temp_69_ptr_of_*list_0_92
              #                    occupy a2 with temp_72_ele_of_*list_0_92_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     244  mu list_0_3:243 
              #                     246  temp_73_ptr_of_*cns_0_92 = GEP *cns_0:ptr->i32 [Some(temp_72_ele_of_*list_0_92_0)] 
              #                    occupy a3 with temp_73_ptr_of_*cns_0_92
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_72_ele_of_*list_0_92_0
    mv      a4, a2
              #                    free a2
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *cns_0
              #                       load label cns as ptr to reg
    la      a5, cns
              #                    occupy reg a5 with *cns_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     248  (nop) 
              #                     250  (nop) 
              #                     251  mu list_0_3:250 
              #                     253  (nop) 
              #                     255  temp_77_ele_of_*cns_0_92_0 = load temp_73_ptr_of_*cns_0_92:ptr->i32 
              #                    occupy a3 with temp_73_ptr_of_*cns_0_92
              #                    occupy a6 with temp_77_ele_of_*cns_0_92_0
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     256  mu cns_0_2:255 
              #                     258  temp_78_arithop_92_0 = Add i32 temp_77_ele_of_*cns_0_92_0, 1_0 
              #                    occupy a6 with temp_77_ele_of_*cns_0_92_0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_78_arithop_92_0
    ADDW    s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                     259  store temp_78_arithop_92_0:i32 temp_73_ptr_of_*cns_0_92:ptr->i32 
              #                    occupy a3 with temp_73_ptr_of_*cns_0_92
              #                    occupy s1 with temp_78_arithop_92_0
    sw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                     260  cns_0_3 = chi cns_0_2:259 
              #                     262  temp_79_arithop_92_0 = Add i32 i_56_4, 1_0 
              #                    occupy s2 with i_56_4
              #                    load from i_56_4 in mem


    lw      s2,220(sp)
              #                    found literal reg Some(a7) already exist with 1_0
              #                    occupy a7 with 1_0
              #                    occupy s3 with temp_79_arithop_92_0
    ADDW    s3,s2,a7
              #                    free s2
              #                    free a7
              #                    free s3
              #                     263  (nop) 
              #                     415  i_56_4 = i32 temp_79_arithop_92_0 
              #                    occupy s3 with temp_79_arithop_92_0
              #                    occupy s2 with i_56_4
    mv      s2, s3
              #                    free s3
              #                    free s2
              #                          jump label: while.head_91 
              #                    occupy a3 with temp_73_ptr_of_*cns_0_92
              #                    store to temp_73_ptr_of_*cns_0_92 in mem offset legal
    sd      a3,96(sp)
              #                    release a3 with temp_73_ptr_of_*cns_0_92
              #                    occupy a3 with temp_87_cmp_59_0
              #                    load from temp_87_cmp_59_0 in mem


    lb      a3,11(sp)
              #                    occupy s1 with temp_78_arithop_92_0
              #                    store to temp_78_arithop_92_0 in mem offset legal
    sw      s1,72(sp)
              #                    release s1 with temp_78_arithop_92_0
              #                    occupy a2 with temp_72_ele_of_*list_0_92_0
              #                    store to temp_72_ele_of_*list_0_92_0 in mem offset legal
    sw      a2,108(sp)
              #                    release a2 with temp_72_ele_of_*list_0_92_0
              #                    occupy a1 with temp_69_ptr_of_*list_0_92
              #                    store to temp_69_ptr_of_*list_0_92 in mem offset legal
    sd      a1,128(sp)
              #                    release a1 with temp_69_ptr_of_*list_0_92
              #                    occupy s2 with i_56_4
              #                    store to i_56_4 in mem offset legal
    sw      s2,220(sp)
              #                    release s2 with i_56_4
              #                    occupy a1 with i_56_4
              #                    load from i_56_4 in mem


    lw      a1,220(sp)
              #                    occupy a6 with temp_77_ele_of_*cns_0_92_0
              #                    store to temp_77_ele_of_*cns_0_92_0 in mem offset legal
    sw      a6,76(sp)
              #                    release a6 with temp_77_ele_of_*cns_0_92_0
              #                    occupy a0 with temp_70_ret_of_getint_92_0
              #                    store to temp_70_ret_of_getint_92_0 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_70_ret_of_getint_92_0
              #                    occupy a0 with temp_57_ret_of_getint_56_0
              #                    load from temp_57_ret_of_getint_56_0 in mem


    lw      a0,228(sp)
              #                    occupy s3 with temp_79_arithop_92_0
              #                    store to temp_79_arithop_92_0 in mem offset legal
    sw      s3,68(sp)
              #                    release s3 with temp_79_arithop_92_0
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56_0, tracked: true } |     a1:Freed { symidx: i_56_4, tracked: true } |     a2:Freed { symidx: temp_88_cmp_90_0, tracked: true } |     a3:Freed { symidx: temp_87_cmp_59_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     306  label while.exit_91: 
.while.exit_91:
              #                     655  untrack temp_57_ret_of_getint_56_0 
              #                    occupy a0 with temp_57_ret_of_getint_56_0
              #                    release a0 with temp_57_ret_of_getint_56_0
              #                     654  untrack i_56_4 
              #                    occupy a1 with i_56_4
              #                    release a1 with i_56_4
              #                     203  temp_58_ptr_of_*cns_0_56 = GEP *cns_0:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_58_ptr_of_*cns_0_56
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 1
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a4 with *cns_0
              #                       load label cns as ptr to reg
    la      a4, cns
              #                    occupy reg a4 with *cns_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                     205  temp_59_ele_of_*cns_0_56_0 = load temp_58_ptr_of_*cns_0_56:ptr->i32 
              #                    occupy a0 with temp_58_ptr_of_*cns_0_56
              #                    occupy a5 with temp_59_ele_of_*cns_0_56_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     662  untrack temp_58_ptr_of_*cns_0_56 
              #                    occupy a0 with temp_58_ptr_of_*cns_0_56
              #                    release a0 with temp_58_ptr_of_*cns_0_56
              #                     206  mu cns_0_2:205 
              #                     208  temp_60_ptr_of_*cns_0_56 = GEP *cns_0:Array:i32:[None] [Some(2_0)] 
              #                    occupy a0 with temp_60_ptr_of_*cns_0_56
    li      a0, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 2
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
              #                    occupy a7 with *cns_0
              #                       load label cns as ptr to reg
    la      a7, cns
              #                    occupy reg a7 with *cns_0
    add     a0,a0,a7
              #                    free a7
              #                    free a0
              #                     210  temp_61_ele_of_*cns_0_56_0 = load temp_60_ptr_of_*cns_0_56:ptr->i32 
              #                    occupy a0 with temp_60_ptr_of_*cns_0_56
              #                    occupy s1 with temp_61_ele_of_*cns_0_56_0
    lw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                     661  untrack temp_60_ptr_of_*cns_0_56 
              #                    occupy a0 with temp_60_ptr_of_*cns_0_56
              #                    release a0 with temp_60_ptr_of_*cns_0_56
              #                     211  mu cns_0_2:210 
              #                     213  temp_62_ptr_of_*cns_0_56 = GEP *cns_0:Array:i32:[None] [Some(3_0)] 
              #                    occupy a0 with temp_62_ptr_of_*cns_0_56
    li      a0, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 3
    add     a0,a0,s2
              #                    free s2
    slli a0,a0,2
              #                    occupy s3 with *cns_0
              #                       load label cns as ptr to reg
    la      s3, cns
              #                    occupy reg s3 with *cns_0
    add     a0,a0,s3
              #                    free s3
              #                    free a0
              #                     215  temp_63_ele_of_*cns_0_56_0 = load temp_62_ptr_of_*cns_0_56:ptr->i32 
              #                    occupy a0 with temp_62_ptr_of_*cns_0_56
              #                    occupy s4 with temp_63_ele_of_*cns_0_56_0
    lw      s4,0(a0)
              #                    free s4
              #                    free a0
              #                     664  untrack temp_62_ptr_of_*cns_0_56 
              #                    occupy a0 with temp_62_ptr_of_*cns_0_56
              #                    release a0 with temp_62_ptr_of_*cns_0_56
              #                     216  mu cns_0_2:215 
              #                     218  temp_64_ptr_of_*cns_0_56 = GEP *cns_0:Array:i32:[None] [Some(4_0)] 
              #                    occupy a0 with temp_64_ptr_of_*cns_0_56
    li      a0, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s5, 4
    add     a0,a0,s5
              #                    free s5
    slli a0,a0,2
              #                    occupy s6 with *cns_0
              #                       load label cns as ptr to reg
    la      s6, cns
              #                    occupy reg s6 with *cns_0
    add     a0,a0,s6
              #                    free s6
              #                    free a0
              #                     220  temp_65_ele_of_*cns_0_56_0 = load temp_64_ptr_of_*cns_0_56:ptr->i32 
              #                    occupy a0 with temp_64_ptr_of_*cns_0_56
              #                    occupy s6 with temp_65_ele_of_*cns_0_56_0
    lw      s6,0(a0)
              #                    free s6
              #                    occupy s6 with temp_65_ele_of_*cns_0_56_0
              #                    store to temp_65_ele_of_*cns_0_56_0 in mem offset legal
    sw      s6,156(sp)
              #                    release s6 with temp_65_ele_of_*cns_0_56_0
              #                    free a0
              #                     660  untrack temp_64_ptr_of_*cns_0_56 
              #                    occupy a0 with temp_64_ptr_of_*cns_0_56
              #                    release a0 with temp_64_ptr_of_*cns_0_56
              #                     221  mu cns_0_2:220 
              #                     223  temp_66_ptr_of_*cns_0_56 = GEP *cns_0:Array:i32:[None] [Some(5_0)] 
              #                    occupy a0 with temp_66_ptr_of_*cns_0_56
    li      a0, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 5
    add     a0,a0,s6
              #                    free s6
    slli a0,a0,2
              #                    occupy s6 with *cns_0
              #                       load label cns as ptr to reg
    la      s6, cns
              #                    occupy reg s6 with *cns_0
    add     a0,a0,s6
              #                    free s6
              #                    free a0
              #                     225  temp_67_ele_of_*cns_0_56_0 = load temp_66_ptr_of_*cns_0_56:ptr->i32 
              #                    occupy a0 with temp_66_ptr_of_*cns_0_56
              #                    occupy s6 with temp_67_ele_of_*cns_0_56_0
    lw      s6,0(a0)
              #                    free s6
              #                    occupy s6 with temp_67_ele_of_*cns_0_56_0
              #                    store to temp_67_ele_of_*cns_0_56_0 in mem offset legal
    sw      s6,140(sp)
              #                    release s6 with temp_67_ele_of_*cns_0_56_0
              #                    free a0
              #                     656  untrack temp_66_ptr_of_*cns_0_56 
              #                    occupy a0 with temp_66_ptr_of_*cns_0_56
              #                    release a0 with temp_66_ptr_of_*cns_0_56
              #                     226  mu cns_0_2:225 
              #                     228  temp_68_ret_of_dfs_56_0 =  Call i32 dfs_0(temp_59_ele_of_*cns_0_56_0, temp_61_ele_of_*cns_0_56_0, temp_63_ele_of_*cns_0_56_0, temp_65_ele_of_*cns_0_56_0, temp_67_ele_of_*cns_0_56_0, 0_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_61_ele_of_*cns_0_56_0
              #                    store to temp_61_ele_of_*cns_0_56_0 in mem offset legal
    sw      s1,188(sp)
              #                    release s1 with temp_61_ele_of_*cns_0_56_0
              #                    occupy s4 with temp_63_ele_of_*cns_0_56_0
              #                    store to temp_63_ele_of_*cns_0_56_0 in mem offset legal
    sw      s4,172(sp)
              #                    release s4 with temp_63_ele_of_*cns_0_56_0
              #                    occupy a2 with temp_88_cmp_90_0
              #                    store to temp_88_cmp_90_0 in mem offset legal
    sb      a2,10(sp)
              #                    release a2 with temp_88_cmp_90_0
              #                    occupy a3 with temp_87_cmp_59_0
              #                    store to temp_87_cmp_59_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_87_cmp_59_0
              #                    occupy a5 with temp_59_ele_of_*cns_0_56_0
              #                    store to temp_59_ele_of_*cns_0_56_0 in mem offset legal
    sw      a5,204(sp)
              #                    release a5 with temp_59_ele_of_*cns_0_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_59_ele_of_*cns_0_56_0_0
              #                    load from temp_59_ele_of_*cns_0_56_0 in mem


    lw      a0,204(sp)
              #                    occupy a1 with _anonymous_of_temp_61_ele_of_*cns_0_56_0_0
              #                    load from temp_61_ele_of_*cns_0_56_0 in mem


    lw      a1,188(sp)
              #                    occupy a2 with _anonymous_of_temp_63_ele_of_*cns_0_56_0_0
              #                    load from temp_63_ele_of_*cns_0_56_0 in mem


    lw      a2,172(sp)
              #                    occupy a3 with _anonymous_of_temp_65_ele_of_*cns_0_56_0_0
              #                    load from temp_65_ele_of_*cns_0_56_0 in mem


    lw      a3,156(sp)
              #                    occupy a4 with _anonymous_of_temp_67_ele_of_*cns_0_56_0_0
              #                    load from temp_67_ele_of_*cns_0_56_0 in mem


    lw      a4,140(sp)
              #                    occupy a5 with _anonymous_of_0_0_0
    li      a5, 0
              #                    arg load ended


    call    dfs
              #                     665  untrack temp_63_ele_of_*cns_0_56_0 
              #                     663  untrack temp_61_ele_of_*cns_0_56_0 
              #                     659  untrack temp_67_ele_of_*cns_0_56_0 
              #                     658  untrack temp_65_ele_of_*cns_0_56_0 
              #                     657  untrack temp_59_ele_of_*cns_0_56_0 
              #                     357  mu dp_0_14:228 
              #                     358  dp_0_21 = chi dp_0_14:228 
              #                     229  (nop) 
              #                     231   Call void putint_0(temp_68_ret_of_dfs_56_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_68_ret_of_dfs_56_0
              #                    store to temp_68_ret_of_dfs_56_0 in mem offset legal
    sw      a0,136(sp)
              #                    release a0 with temp_68_ret_of_dfs_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_68_ret_of_dfs_56_0_0
              #                    load from temp_68_ret_of_dfs_56_0 in mem


    lw      a0,136(sp)
              #                    arg load ended


    call    putint
              #                     359  mu cns_0_2:233 
              #                     360  mu dp_0_21:233 
              #                     361  mu list_0_2:233 
              #                     233  ret temp_68_ret_of_dfs_56_0 
              #                    load from ra_main_0 in mem
    ld      ra,240(sp)
              #                    load from s0_main_0 in mem
    ld      s0,232(sp)
              #                    occupy a0 with temp_68_ret_of_dfs_56_0
              #                    load from temp_68_ret_of_dfs_56_0 in mem


    lw      a0,136(sp)
    addi    sp,sp,248
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl cns
              #                     26   global Array:i32:[Some(20_0)] cns_0 
    .type cns,@object
cns:
    .zero 80
    .align 4
    .globl list
              #                     24   global Array:i32:[Some(200_0)] list_0 
    .type list,@object
list:
    .zero 800
    .align 4
    .globl dp
              #                     22   global Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] dp_0 
    .type dp,@object
dp:
    .zero 52907904
    .align 4
    .globl mod
              #                     20   global i32 mod_0 
    .type mod,@object
mod:
    .word 1000000007
    .align 4
    .globl maxn
              #                     17   global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 18
