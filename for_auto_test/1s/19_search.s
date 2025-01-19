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
              #                     55   Define search_0 "x_20_0,y_20_0,n_20_0," -> search_ret_0 
    .globl search
    .type search,@function
search:
              #                    mem layout:|ra_search:8 at 240|s0_search:8 at 232|x _s20 _i0:4 at 228|y _s20 _i0:4 at 224|n _s20 _i0:4 at 220|num _s22 _i1:4 at 216|num _s22 _i3:4 at 212|i _s22 _i1:4 at 208|coun _s30 _i1:4 at 204|x2 _s30 _i0:4 at 200|x2 _s30 _i1:4 at 196|y2 _s30 _i0:4 at 192|y2 _s30 _i1:4 at 188|none:4 at 184|temp_9_ptr_of_*a_0:8 at 176|temp_10_ptr_of_*step_0:8 at 168|temp_11_ele_of_*step_0 _s30 _i0:4 at 164|temp_12_arithop _s30 _i0:4 at 160|temp_13_ptr_of_*step_0:8 at 152|temp_14_ele_of_*step_0 _s30 _i0:4 at 148|temp_15_arithop _s30 _i0:4 at 144|temp_16_arithop _s30 _i0:4 at 140|temp_17_ret_of_search _s30 _i0:4 at 136|temp_18_arithop _s30 _i0:4 at 132|none:4 at 128|temp_19_ptr_of_*a_0:8 at 120|temp_20_arithop _s30 _i0:4 at 116|temp_21_arithop _s52 _i0:4 at 112|temp_22_arithop _s47 _i0:4 at 108|none:4 at 104|temp_23_ptr_of_*step_0:8 at 96|temp_24_ele_of_*step_0 _s35 _i0:4 at 92|temp_25_arithop _s35 _i0:4 at 88|temp_26_ptr_of_*step_0:8 at 80|temp_27_ele_of_*step_0 _s35 _i0:4 at 76|temp_28_arithop _s35 _i0:4 at 72|temp_29_arithop _s35 _i0:4 at 68|temp_30_cmp _s23 _i0:1 at 67|temp_31_cmp _s28 _i0:1 at 66|temp_32_cmp _s62 _i0:1 at 65|none:1 at 64|temp_33_ptr_of_*a_0:8 at 56|temp_34_ele_of_*a_0 _s33 _i0:4 at 52|temp_35_cmp _s33 _i0:1 at 51|temp_37_cmp _s42 _i0:1 at 50|temp_39_cmp _s42 _i0:1 at 49|temp_40_cmp _s45 _i0:1 at 48|temp_41_cmp _s50 _i0:1 at 47|none:3 at 44|temp_42_value_from_ptr _s50 _i0:4 at 40|temp_43_arithop _s50 _i0:4 at 36|temp_44_cmp _s50 _i0:1 at 35|temp_45_cmp _s50 _i0:1 at 34|none:2 at 32|temp_46_value_from_ptr _s50 _i0:4 at 28|temp_47_arithop _s50 _i0:4 at 24|temp_48_cmp _s50 _i0:1 at 23|temp_49_cmp _s57 _i0:1 at 22|none:2 at 20|temp_50_value_from_ptr _s36 _i0:4 at 16|temp_51_cmp _s36 _i0:1 at 15|none:3 at 12|temp_52_value_from_ptr _s36 _i0:4 at 8|temp_53_cmp _s36 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-248
              #                    store to ra_search_0 in mem offset legal
    sd      ra,240(sp)
              #                    store to s0_search_0 in mem offset legal
    sd      s0,232(sp)
    addi    s0,sp,248
              #                     373  a_0_1 = chi a_0_0:55 
              #                     58   alloc i32 [num_22] 
              #                     60   alloc i32 [i_22] 
              #                     66   alloc i32 [coun_30] 
              #                     68   alloc i32 [x2_30] 
              #                     70   alloc i32 [y2_30] 
              #                     71   alloc ptr->i32 [temp_9_ptr_of_*a_0_30] 
              #                     75   alloc ptr->i32 [temp_10_ptr_of_*step_0_30] 
              #                     77   alloc i32 [temp_11_ele_of_*step_0_30] 
              #                     80   alloc i32 [temp_12_arithop_30] 
              #                     82   alloc ptr->i32 [temp_13_ptr_of_*step_0_30] 
              #                     84   alloc i32 [temp_14_ele_of_*step_0_30] 
              #                     87   alloc i32 [temp_15_arithop_30] 
              #                     89   alloc i32 [temp_16_arithop_30] 
              #                     91   alloc i32 [temp_17_ret_of_search_30] 
              #                     93   alloc i32 [temp_18_arithop_30] 
              #                     96   alloc i32 [searchResult_30] 
              #                     97   alloc ptr->i32 [temp_19_ptr_of_*a_0_30] 
              #                     101  alloc i32 [temp_20_arithop_30] 
              #                     105  alloc i32 [temp_21_arithop_52] 
              #                     108  alloc i32 [temp_22_arithop_47] 
              #                     113  alloc ptr->i32 [temp_23_ptr_of_*step_0_35] 
              #                     115  alloc i32 [temp_24_ele_of_*step_0_35] 
              #                     118  alloc i32 [temp_25_arithop_35] 
              #                     121  alloc ptr->i32 [temp_26_ptr_of_*step_0_35] 
              #                     123  alloc i32 [temp_27_ele_of_*step_0_35] 
              #                     126  alloc i32 [temp_28_arithop_35] 
              #                     129  alloc i32 [temp_29_arithop_35] 
              #                     134  alloc i1 [temp_30_cmp_23] 
              #                     139  alloc i1 [temp_31_cmp_28] 
              #                     145  alloc i1 [temp_32_cmp_62] 
              #                     152  alloc ptr->i32 [temp_33_ptr_of_*a_0_33] 
              #                     154  alloc i32 [temp_34_ele_of_*a_0_33] 
              #                     157  alloc i1 [temp_35_cmp_33] 
              #                     163  alloc i32 [temp_36_value_from_ptr_42] 
              #                     166  alloc i1 [temp_37_cmp_42] 
              #                     168  alloc i32 [temp_38_value_from_ptr_42] 
              #                     171  alloc i1 [temp_39_cmp_42] 
              #                     179  alloc i1 [temp_40_cmp_45] 
              #                     184  alloc i1 [temp_41_cmp_50] 
              #                     186  alloc i32 [temp_42_value_from_ptr_50] 
              #                     189  alloc i32 [temp_43_arithop_50] 
              #                     191  alloc i1 [temp_44_cmp_50] 
              #                     193  alloc i1 [temp_45_cmp_50] 
              #                     195  alloc i32 [temp_46_value_from_ptr_50] 
              #                     198  alloc i32 [temp_47_arithop_50] 
              #                     200  alloc i1 [temp_48_cmp_50] 
              #                     214  alloc i1 [temp_49_cmp_57] 
              #                     219  alloc i32 [temp_50_value_from_ptr_36] 
              #                     222  alloc i1 [temp_51_cmp_36] 
              #                     224  alloc i32 [temp_52_value_from_ptr_36] 
              #                     227  alloc i1 [temp_53_cmp_36] 
              #                    regtab     a0:Freed { symidx: x_20_0, tracked: true } |     a1:Freed { symidx: y_20_0, tracked: true } |     a2:Freed { symidx: n_20_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     135  temp_30_cmp_23_0 = icmp i32 Sgt n_20_0, 10_0 
              #                    occupy a2 with n_20_0
              #                    occupy a3 with 10_0
    li      a3, 10
              #                    occupy a4 with temp_30_cmp_23_0
    slt     a4,a3,a2
              #                    free a2
              #                    free a3
              #                    free a4
              #                     138  br i1 temp_30_cmp_23_0, label branch_true_24, label branch_false_24 
              #                    occupy a4 with temp_30_cmp_23_0
              #                    free a4
              #                    occupy a4 with temp_30_cmp_23_0
    bnez    a4, .branch_true_24
              #                    free a4
    j       .branch_false_24
              #                    regtab     a0:Freed { symidx: x_20_0, tracked: true } |     a1:Freed { symidx: y_20_0, tracked: true } |     a2:Freed { symidx: n_20_0, tracked: true } |     a4:Freed { symidx: temp_30_cmp_23_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     136  label branch_true_24: 
.branch_true_24:
              #                     480  untrack temp_50_value_from_ptr_36_0 
              #                     479  untrack temp_52_value_from_ptr_36_0 
              #                     478  untrack y_20_0 
              #                    occupy a1 with y_20_0
              #                    release a1 with y_20_0
              #                     477  untrack num_22_1 
              #                     476  untrack i_22_1 
              #                     475  untrack n_20_0 
              #                    occupy a2 with n_20_0
              #                    release a2 with n_20_0
              #                     474  untrack x2_30_0 
              #                     473  untrack temp_30_cmp_23_0 
              #                    occupy a4 with temp_30_cmp_23_0
              #                    release a4 with temp_30_cmp_23_0
              #                     472  untrack temp_42_value_from_ptr_50_0 
              #                     471  untrack temp_46_value_from_ptr_50_0 
              #                     470  untrack temp_16_arithop_30_0 
              #                     469  untrack temp_32_cmp_62_0 
              #                     468  untrack x_20_0 
              #                    occupy a0 with x_20_0
              #                    release a0 with x_20_0
              #                     467  untrack y2_30_0 
              #                     374  mu a_0_1:133 
              #                     133  ret 1073741824_0 
              #                    load from ra_search_0 in mem
    ld      ra,240(sp)
              #                    load from s0_search_0 in mem
    ld      s0,232(sp)
              #                    occupy a0 with 1073741824_0
    li      a0, 1073741824
    addi    sp,sp,248
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_20_0, tracked: true } |     a1:Freed { symidx: y_20_0, tracked: true } |     a2:Freed { symidx: n_20_0, tracked: true } |     a4:Freed { symidx: temp_30_cmp_23_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     137  label branch_false_24: 
.branch_false_24:
              #                     481  untrack temp_30_cmp_23_0 
              #                    occupy a4 with temp_30_cmp_23_0
              #                    release a4 with temp_30_cmp_23_0
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: x_20_0, tracked: true } |     a1:Freed { symidx: y_20_0, tracked: true } |     a2:Freed { symidx: n_20_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     57   (nop) 
              #                     59   (nop) 
              #                     67   x2_30_0 = i32 x_20_0 
              #                    occupy a0 with x_20_0
              #                    occupy a3 with x2_30_0
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                     482  untrack x_20_0 
              #                    occupy a0 with x_20_0
              #                    release a0 with x_20_0
              #                     69   y2_30_0 = i32 y_20_0 
              #                    occupy a1 with y_20_0
              #                    occupy a0 with y2_30_0
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                     483  untrack y_20_0 
              #                    occupy a1 with y_20_0
              #                    release a1 with y_20_0
              #                     220  temp_50_value_from_ptr_36_0 = load *x_1_0:ptr->i32 
              #                    occupy a1 with *x_1_0
              #                       load label x_1 as ptr to reg
    la      a1, x_1
              #                    occupy reg a1 with *x_1_0
              #                    occupy a4 with temp_50_value_from_ptr_36_0
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     221  mu x_1_0_0:220 
              #                     225  temp_52_value_from_ptr_36_0 = load *y_1_0:ptr->i32 
              #                    occupy a5 with *y_1_0
              #                       load label y_1 as ptr to reg
    la      a5, y_1
              #                    occupy reg a5 with *y_1_0
              #                    occupy a6 with temp_52_value_from_ptr_36_0
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                     226  mu y_1_0_0:225 
              #                     164  (nop) 
              #                     165  mu x_1_0_0:164 
              #                     187  temp_42_value_from_ptr_50_0 = load *h_0:ptr->i32 
              #                    occupy a7 with *h_0
              #                       load label h as ptr to reg
    la      a7, h
              #                    occupy reg a7 with *h_0
              #                    occupy s1 with temp_42_value_from_ptr_50_0
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                     188  mu h_0_0:187 
              #                     196  temp_46_value_from_ptr_50_0 = load *w_0:ptr->i32 
              #                    occupy s2 with *w_0
              #                       load label w as ptr to reg
    la      s2, w
              #                    occupy reg s2 with *w_0
              #                    occupy s3 with temp_46_value_from_ptr_50_0
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                     197  mu w_0_0:196 
              #                     90   temp_16_arithop_30_0 = Add i32 n_20_0, 1_0 
              #                    occupy a2 with n_20_0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_16_arithop_30_0
    ADDW    s5,a2,s4
              #                    free a2
              #                    free s4
              #                    free s5
              #                     484  untrack n_20_0 
              #                    occupy a2 with n_20_0
              #                    release a2 with n_20_0
              #                     169  (nop) 
              #                     170  mu y_1_0_0:169 
              #                     445  num_22_1 = i32 1073741824_0 
              #                    occupy a2 with num_22_1
    li      a2, 1073741824
              #                    free a2
              #                     446  i_22_1 = i32 0_0 
              #                    occupy s6 with i_22_1
    li      s6, 0
              #                    free s6
              #                    occupy s6 with i_22_1
              #                    store to i_22_1 in mem offset legal
    sw      s6,208(sp)
              #                    release s6 with i_22_1
              #                          jump label: while.head_29 
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: y2_30_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: x2_30_0, tracked: true } |     a4:Freed { symidx: temp_50_value_from_ptr_36_0, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     141  label while.head_29: 
.while.head_29:
              #                     140  temp_31_cmp_28_0 = icmp i32 Slt i_22_1, 4_0 
              #                    occupy a1 with i_22_1
              #                    load from i_22_1 in mem


    lw      a1,208(sp)
              #                    occupy a5 with 4_0
    li      a5, 4
              #                    occupy a7 with temp_31_cmp_28_0
    slt     a7,a1,a5
              #                    free a1
              #                    occupy a1 with i_22_1
              #                    store to i_22_1 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with i_22_1
              #                    free a5
              #                    free a7
              #                    occupy a7 with temp_31_cmp_28_0
              #                    store to temp_31_cmp_28_0 in mem offset legal
    sb      a7,66(sp)
              #                    release a7 with temp_31_cmp_28_0
              #                     144  br i1 temp_31_cmp_28_0, label while.body_29, label while.exit_29 
              #                    occupy a1 with temp_31_cmp_28_0
              #                    load from temp_31_cmp_28_0 in mem


    lb      a1,66(sp)
              #                    free a1
              #                    occupy a1 with temp_31_cmp_28_0
              #                    store to temp_31_cmp_28_0 in mem offset legal
    sb      a1,66(sp)
              #                    release a1 with temp_31_cmp_28_0
              #                    occupy a1 with temp_31_cmp_28_0
              #                    load from temp_31_cmp_28_0 in mem


    lb      a1,66(sp)
    bnez    a1, .while.body_29
              #                    free a1
              #                    occupy a1 with temp_31_cmp_28_0
              #                    store to temp_31_cmp_28_0 in mem offset legal
    sb      a1,66(sp)
              #                    release a1 with temp_31_cmp_28_0
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: y2_30_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: x2_30_0, tracked: true } |     a4:Freed { symidx: temp_50_value_from_ptr_36_0, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     142  label while.body_29: 
.while.body_29:
              #                     65   (nop) 
              #                     114  temp_23_ptr_of_*step_0_35 = GEP *step_0:Array:i32:[None, Some(2_0)] [Some(i_22_1), Some(0_0)] 
              #                    occupy a1 with temp_23_ptr_of_*step_0_35
    li      a1, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with i_22_1
              #                    load from i_22_1 in mem


    lw      a7,208(sp)
    slli a5,a7,1
              #                    free a7
              #                    occupy a7 with i_22_1
              #                    store to i_22_1 in mem offset legal
    sw      a7,208(sp)
              #                    release a7 with i_22_1
    add     a1,a1,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
              #                    occupy a5 with *step_0
              #                       load label step as ptr to reg
    la      a5, step
              #                    occupy reg a5 with *step_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                    occupy a1 with temp_23_ptr_of_*step_0_35
              #                    store to temp_23_ptr_of_*step_0_35 in mem offset legal
    sd      a1,96(sp)
              #                    release a1 with temp_23_ptr_of_*step_0_35
              #                     122  temp_26_ptr_of_*step_0_35 = GEP *step_0:Array:i32:[None, Some(2_0)] [Some(i_22_1), Some(1_0)] 
              #                    occupy a1 with temp_26_ptr_of_*step_0_35
    li      a1, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with i_22_1
              #                    load from i_22_1 in mem


    lw      a7,208(sp)
    slli a5,a7,1
              #                    free a7
              #                    occupy a7 with i_22_1
              #                    store to i_22_1 in mem offset legal
    sw      a7,208(sp)
              #                    release a7 with i_22_1
    add     a1,a1,a5
              #                    free a5
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
              #                    occupy a5 with *step_0
              #                       load label step as ptr to reg
    la      a5, step
              #                    occupy reg a5 with *step_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                    occupy a1 with temp_26_ptr_of_*step_0_35
              #                    store to temp_26_ptr_of_*step_0_35 in mem offset legal
    sd      a1,80(sp)
              #                    release a1 with temp_26_ptr_of_*step_0_35
              #                     447  y2_30_1 = i32 y2_30_0 
              #                    occupy a0 with y2_30_0
              #                    occupy a1 with y2_30_1
    mv      a1, a0
              #                    free a0
              #                    occupy a0 with y2_30_0
              #                    store to y2_30_0 in mem offset legal
    sw      a0,192(sp)
              #                    release a0 with y2_30_0
              #                    free a1
              #                     448  x2_30_1 = i32 x2_30_0 
              #                    occupy a3 with x2_30_0
              #                    occupy a0 with x2_30_1
    mv      a0, a3
              #                    free a3
              #                    occupy a3 with x2_30_0
              #                    store to x2_30_0 in mem offset legal
    sw      a3,200(sp)
              #                    release a3 with x2_30_0
              #                    free a0
              #                     449  coun_30_1 = i32 0_0 
              #                    occupy a3 with coun_30_1
    li      a3, 0
              #                    free a3
              #                    occupy a3 with coun_30_1
              #                    store to coun_30_1 in mem offset legal
    sw      a3,204(sp)
              #                    release a3 with coun_30_1
              #                          jump label: while.head_34 
    j       .while.head_34
              #                    regtab     a0:Freed { symidx: x2_30_1, tracked: true } |     a1:Freed { symidx: y2_30_1, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a4:Freed { symidx: temp_50_value_from_ptr_36_0, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     159  label while.head_34: 
.while.head_34:
              #                     153  temp_33_ptr_of_*a_0_33 = GEP *a_0:Array:i32:[None, Some(30_0)] [Some(x2_30_1), Some(y2_30_1)] 
              #                    occupy a3 with temp_33_ptr_of_*a_0_33
    li      a3, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with 30_0
    li      a7, 30
              #                    occupy a0 with x2_30_1
    mul     a5,a7,a0
              #                    free a7
              #                    free a0
              #                    occupy a0 with x2_30_1
              #                    store to x2_30_1 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with x2_30_1
    add     a3,a3,a5
              #                    free a5
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with y2_30_1
    mv      a0, a1
              #                    free a1
              #                    occupy a1 with y2_30_1
              #                    store to y2_30_1 in mem offset legal
    sw      a1,188(sp)
              #                    release a1 with y2_30_1
    add     a3,a3,a0
              #                    free a0
    slli a3,a3,2
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
    add     a3,a3,a1
              #                    free a1
              #                    free a3
              #                     155  temp_34_ele_of_*a_0_33_0 = load temp_33_ptr_of_*a_0_33:ptr->i32 
              #                    occupy a3 with temp_33_ptr_of_*a_0_33
              #                    occupy a1 with temp_34_ele_of_*a_0_33_0
    lw      a1,0(a3)
              #                    free a1
              #                    occupy a1 with temp_34_ele_of_*a_0_33_0
              #                    store to temp_34_ele_of_*a_0_33_0 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with temp_34_ele_of_*a_0_33_0
              #                    free a3
              #                     156  mu a_0_2:155 
              #                     158  temp_35_cmp_33_0 = icmp i32 Ne temp_34_ele_of_*a_0_33_0, 1_0 
              #                    occupy a1 with temp_34_ele_of_*a_0_33_0
              #                    load from temp_34_ele_of_*a_0_33_0 in mem


    lw      a1,52(sp)
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a7 with temp_35_cmp_33_0
    xor     a7,a1,a5
    snez    a7, a7
              #                    free a1
              #                    occupy a1 with temp_34_ele_of_*a_0_33_0
              #                    store to temp_34_ele_of_*a_0_33_0 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with temp_34_ele_of_*a_0_33_0
              #                    free a5
              #                    free a7
              #                    occupy a7 with temp_35_cmp_33_0
              #                    store to temp_35_cmp_33_0 in mem offset legal
    sb      a7,51(sp)
              #                    release a7 with temp_35_cmp_33_0
              #                     162  br i1 temp_35_cmp_33_0, label while.body_34, label while.exit_34 
              #                    occupy a1 with temp_35_cmp_33_0
              #                    load from temp_35_cmp_33_0 in mem


    lb      a1,51(sp)
              #                    free a1
              #                    occupy a1 with temp_35_cmp_33_0
              #                    store to temp_35_cmp_33_0 in mem offset legal
    sb      a1,51(sp)
              #                    release a1 with temp_35_cmp_33_0
              #                    occupy a0 with temp_35_cmp_33_0
              #                    load from temp_35_cmp_33_0 in mem


    lb      a0,51(sp)
    bnez    a0, .while.body_34
              #                    free a0
              #                    occupy a0 with temp_35_cmp_33_0
              #                    store to temp_35_cmp_33_0 in mem offset legal
    sb      a0,51(sp)
              #                    release a0 with temp_35_cmp_33_0
    j       .while.exit_34
              #                    regtab     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a4:Freed { symidx: temp_50_value_from_ptr_36_0, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     160  label while.body_34: 
.while.body_34:
              #                     223  temp_51_cmp_36_0 = icmp i32 Eq x2_30_1, temp_50_value_from_ptr_36_0 
              #                    occupy a0 with x2_30_1
              #                    load from x2_30_1 in mem


    lw      a0,196(sp)
              #                    occupy a4 with temp_50_value_from_ptr_36_0
              #                    occupy a1 with temp_51_cmp_36_0
    xor     a1,a0,a4
    seqz    a1, a1
              #                    free a0
              #                    occupy a0 with x2_30_1
              #                    store to x2_30_1 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with x2_30_1
              #                    free a4
              #                    occupy a4 with temp_50_value_from_ptr_36_0
              #                    store to temp_50_value_from_ptr_36_0 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_50_value_from_ptr_36_0
              #                    free a1
              #                     234  br i1 temp_51_cmp_36_0, label branch_short_circuit_p_true_353, label branch_short_circuit_c_false_353 
              #                    occupy a1 with temp_51_cmp_36_0
              #                    free a1
              #                    occupy a1 with temp_51_cmp_36_0
    bnez    a1, .branch_short_circuit_p_true_353
              #                    free a1
    j       .branch_short_circuit_c_false_353
              #                    regtab     a1:Freed { symidx: temp_51_cmp_36_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     231  label branch_short_circuit_p_true_353: 
.branch_short_circuit_p_true_353:
              #                     228  temp_53_cmp_36_0 = icmp i32 Eq y2_30_1, temp_52_value_from_ptr_36_0 
              #                    occupy a0 with y2_30_1
              #                    load from y2_30_1 in mem


    lw      a0,188(sp)
              #                    occupy a6 with temp_52_value_from_ptr_36_0
              #                    occupy a4 with temp_53_cmp_36_0
    xor     a4,a0,a6
    seqz    a4, a4
              #                    free a0
              #                    occupy a0 with y2_30_1
              #                    store to y2_30_1 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with y2_30_1
              #                    free a6
              #                    occupy a6 with temp_52_value_from_ptr_36_0
              #                    store to temp_52_value_from_ptr_36_0 in mem offset legal
    sw      a6,8(sp)
              #                    release a6 with temp_52_value_from_ptr_36_0
              #                    free a4
              #                     233  br i1 temp_53_cmp_36_0, label branch_short_circuit_c_true_353, label branch_short_circuit_c_false_353 
              #                    occupy a4 with temp_53_cmp_36_0
              #                    free a4
              #                    occupy a4 with temp_53_cmp_36_0
    bnez    a4, .branch_short_circuit_c_true_353
              #                    free a4
              #                    occupy a6 with temp_52_value_from_ptr_36_0
              #                    load from temp_52_value_from_ptr_36_0 in mem


    lw      a6,8(sp)
              #                    occupy a4 with temp_53_cmp_36_0
              #                    store to temp_53_cmp_36_0 in mem offset legal
    sb      a4,7(sp)
              #                    release a4 with temp_53_cmp_36_0
    j       .branch_short_circuit_c_false_353
              #                    regtab     a1:Freed { symidx: temp_51_cmp_36_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a4:Freed { symidx: temp_53_cmp_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     229  label branch_short_circuit_c_true_353: 
.branch_short_circuit_c_true_353:
              #                     501  untrack temp_34_ele_of_*a_0_33_0 
              #                     500  untrack temp_35_cmp_33_0 
              #                     499  untrack temp_25_arithop_35_0 
              #                     498  untrack temp_29_arithop_35_0 
              #                     497  untrack temp_28_arithop_35_0 
              #                     496  untrack temp_27_ele_of_*step_0_35_0 
              #                     495  untrack temp_24_ele_of_*step_0_35_0 
              #                     494  untrack temp_51_cmp_36_0 
              #                    occupy a1 with temp_51_cmp_36_0
              #                    release a1 with temp_51_cmp_36_0
              #                     493  untrack temp_53_cmp_36_0 
              #                    occupy a4 with temp_53_cmp_36_0
              #                    release a4 with temp_53_cmp_36_0
              #                          jump label: while.exit_34 
              #                    occupy a6 with temp_52_value_from_ptr_36_0
              #                    load from temp_52_value_from_ptr_36_0 in mem


    lw      a6,8(sp)
              #                    occupy a4 with temp_50_value_from_ptr_36_0
              #                    load from temp_50_value_from_ptr_36_0 in mem


    lw      a4,16(sp)
    j       .while.exit_34
              #                    regtab     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a4:Freed { symidx: temp_50_value_from_ptr_36_0, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     161  label while.exit_34: 
.while.exit_34:
              #                     167  temp_37_cmp_42_0 = icmp i32 Eq x2_30_1, temp_50_value_from_ptr_36_0 
              #                    occupy a0 with x2_30_1
              #                    load from x2_30_1 in mem


    lw      a0,196(sp)
              #                    occupy a4 with temp_50_value_from_ptr_36_0
              #                    occupy a1 with temp_37_cmp_42_0
    xor     a1,a0,a4
    seqz    a1, a1
              #                    free a0
              #                    occupy a0 with x2_30_1
              #                    store to x2_30_1 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with x2_30_1
              #                    free a4
              #                    occupy a4 with temp_50_value_from_ptr_36_0
              #                    store to temp_50_value_from_ptr_36_0 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_50_value_from_ptr_36_0
              #                    free a1
              #                     178  br i1 temp_37_cmp_42_0, label branch_short_circuit_p_true_319, label branch_short_circuit_c_false_319 
              #                    occupy a1 with temp_37_cmp_42_0
              #                    free a1
              #                    occupy a1 with temp_37_cmp_42_0
    bnez    a1, .branch_short_circuit_p_true_319
              #                    free a1
    j       .branch_short_circuit_c_false_319
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     175  label branch_short_circuit_p_true_319: 
.branch_short_circuit_p_true_319:
              #                     172  temp_39_cmp_42_0 = icmp i32 Eq y2_30_1, temp_52_value_from_ptr_36_0 
              #                    occupy a0 with y2_30_1
              #                    load from y2_30_1 in mem


    lw      a0,188(sp)
              #                    occupy a6 with temp_52_value_from_ptr_36_0
              #                    occupy a4 with temp_39_cmp_42_0
    xor     a4,a0,a6
    seqz    a4, a4
              #                    free a0
              #                    occupy a0 with y2_30_1
              #                    store to y2_30_1 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with y2_30_1
              #                    free a6
              #                    occupy a6 with temp_52_value_from_ptr_36_0
              #                    store to temp_52_value_from_ptr_36_0 in mem offset legal
    sw      a6,8(sp)
              #                    release a6 with temp_52_value_from_ptr_36_0
              #                    free a4
              #                     177  br i1 temp_39_cmp_42_0, label branch_short_circuit_c_true_319, label branch_short_circuit_c_false_319 
              #                    occupy a4 with temp_39_cmp_42_0
              #                    free a4
              #                    occupy a4 with temp_39_cmp_42_0
    bnez    a4, .branch_short_circuit_c_true_319
              #                    free a4
              #                    occupy a6 with temp_52_value_from_ptr_36_0
              #                    load from temp_52_value_from_ptr_36_0 in mem


    lw      a6,8(sp)
              #                    occupy a4 with temp_39_cmp_42_0
              #                    store to temp_39_cmp_42_0 in mem offset legal
    sb      a4,49(sp)
              #                    release a4 with temp_39_cmp_42_0
    j       .branch_short_circuit_c_false_319
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a4:Freed { symidx: temp_39_cmp_42_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     173  label branch_short_circuit_c_true_319: 
.branch_short_circuit_c_true_319:
              #                     551  untrack temp_44_cmp_50_0 
              #                     550  untrack temp_45_cmp_50_0 
              #                     549  untrack y2_30_1 
              #                     548  untrack temp_18_arithop_30_0 
              #                     547  untrack temp_11_ele_of_*step_0_30_0 
              #                     546  untrack temp_39_cmp_42_0 
              #                    occupy a4 with temp_39_cmp_42_0
              #                    release a4 with temp_39_cmp_42_0
              #                     545  untrack coun_30_1 
              #                     544  untrack x2_30_1 
              #                     543  untrack temp_15_arithop_30_0 
              #                     542  untrack temp_23_ptr_of_*step_0_35 
              #                     541  untrack temp_26_ptr_of_*step_0_35 
              #                     540  untrack temp_12_arithop_30_0 
              #                     539  untrack temp_31_cmp_28_0 
              #                     538  untrack temp_41_cmp_50_0 
              #                     537  untrack num_22_3 
              #                     536  untrack temp_21_arithop_52_0 
              #                     535  untrack temp_22_arithop_47_0 
              #                     534  untrack temp_37_cmp_42_0 
              #                    occupy a1 with temp_37_cmp_42_0
              #                    release a1 with temp_37_cmp_42_0
              #                     533  untrack temp_40_cmp_45_0 
              #                     532  untrack temp_49_cmp_57_0 
              #                     531  untrack temp_20_arithop_30_0 
              #                     530  untrack temp_48_cmp_50_0 
              #                     529  untrack temp_47_arithop_50_0 
              #                     528  untrack temp_14_ele_of_*step_0_30_0 
              #                     527  untrack temp_17_ret_of_search_30_0 
              #                     526  untrack temp_43_arithop_50_0 
              #                     382  mu a_0_2:112 
              #                     112  ret 1_0 
              #                    load from ra_search_0 in mem
    ld      ra,240(sp)
              #                    load from s0_search_0 in mem
    ld      s0,232(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,248
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     174  label branch_short_circuit_c_false_319: 
.branch_short_circuit_c_false_319:
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     180  temp_40_cmp_45_0 = icmp i32 Sle coun_30_1, 1_0 
              #                    occupy a0 with coun_30_1
              #                    load from coun_30_1 in mem


    lw      a0,204(sp)
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_40_cmp_45_0
    slt     a5,a4,a0
    xori    a5,a5,1
              #                    free a0
              #                    occupy a0 with coun_30_1
              #                    store to coun_30_1 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with coun_30_1
              #                    free a4
              #                    free a5
              #                    occupy a5 with temp_40_cmp_45_0
              #                    store to temp_40_cmp_45_0 in mem offset legal
    sb      a5,48(sp)
              #                    release a5 with temp_40_cmp_45_0
              #                     183  br i1 temp_40_cmp_45_0, label branch_true_46, label branch_false_46 
              #                    occupy a0 with temp_40_cmp_45_0
              #                    load from temp_40_cmp_45_0 in mem


    lb      a0,48(sp)
              #                    free a0
              #                    occupy a0 with temp_40_cmp_45_0
              #                    store to temp_40_cmp_45_0 in mem offset legal
    sb      a0,48(sp)
              #                    release a0 with temp_40_cmp_45_0
              #                    occupy a0 with temp_40_cmp_45_0
              #                    load from temp_40_cmp_45_0 in mem


    lb      a0,48(sp)
    bnez    a0, .branch_true_46
              #                    free a0
              #                    occupy a0 with temp_40_cmp_45_0
              #                    store to temp_40_cmp_45_0 in mem offset legal
    sb      a0,48(sp)
              #                    release a0 with temp_40_cmp_45_0
    j       .branch_false_46
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     181  label branch_true_46: 
.branch_true_46:
              #                     109  temp_22_arithop_47_0 = Add i32 i_22_1, 1_0 
              #                    occupy a0 with i_22_1
              #                    load from i_22_1 in mem


    lw      a0,208(sp)
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_22_arithop_47_0
    ADDW    a5,a0,a4
              #                    free a0
              #                    occupy a0 with i_22_1
              #                    store to i_22_1 in mem offset legal
    sw      a0,208(sp)
              #                    release a0 with i_22_1
              #                    free a4
              #                    free a5
              #                    occupy a5 with temp_22_arithop_47_0
              #                    store to temp_22_arithop_47_0 in mem offset legal
    sw      a5,108(sp)
              #                    release a5 with temp_22_arithop_47_0
              #                     110  (nop) 
              #                     453  i_22_1 = i32 temp_22_arithop_47_0 
              #                    occupy a0 with temp_22_arithop_47_0
              #                    load from temp_22_arithop_47_0 in mem


    lw      a0,108(sp)
              #                    occupy a4 with i_22_1
    mv      a4, a0
              #                    free a0
              #                    occupy a0 with temp_22_arithop_47_0
              #                    store to temp_22_arithop_47_0 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_22_arithop_47_0
              #                    free a4
              #                    occupy a4 with i_22_1
              #                    store to i_22_1 in mem offset legal
    sw      a4,208(sp)
              #                    release a4 with i_22_1
              #                          jump label: while.head_29 
              #                    occupy a3 with temp_33_ptr_of_*a_0_33
              #                    store to temp_33_ptr_of_*a_0_33 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with temp_33_ptr_of_*a_0_33
              #                    occupy a3 with x2_30_0
              #                    load from x2_30_0 in mem


    lw      a3,200(sp)
              #                    occupy a4 with temp_50_value_from_ptr_36_0
              #                    load from temp_50_value_from_ptr_36_0 in mem


    lw      a4,16(sp)
              #                    occupy a1 with temp_37_cmp_42_0
              #                    store to temp_37_cmp_42_0 in mem offset legal
    sb      a1,50(sp)
              #                    release a1 with temp_37_cmp_42_0
              #                    occupy a0 with y2_30_0
              #                    load from y2_30_0 in mem


    lw      a0,192(sp)
    j       .while.head_29
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     182  label branch_false_46: 
.branch_false_46:
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     185  temp_41_cmp_50_0 = icmp i32 Eq x2_30_1, 0_0 
              #                    occupy a0 with x2_30_1
              #                    load from x2_30_1 in mem


    lw      a0,196(sp)
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_41_cmp_50_0
    xor     a5,a0,a4
    seqz    a5, a5
              #                    free a0
              #                    occupy a0 with x2_30_1
              #                    store to x2_30_1 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with x2_30_1
              #                    free a4
              #                    free a5
              #                    occupy a5 with temp_41_cmp_50_0
              #                    store to temp_41_cmp_50_0 in mem offset legal
    sb      a5,47(sp)
              #                    release a5 with temp_41_cmp_50_0
              #                     213  br i1 temp_41_cmp_50_0, label branch_short_circuit_c_true_352, label branch_short_circuit_p_false_340 
              #                    occupy a0 with temp_41_cmp_50_0
              #                    load from temp_41_cmp_50_0 in mem


    lb      a0,47(sp)
              #                    free a0
              #                    occupy a0 with temp_41_cmp_50_0
              #                    store to temp_41_cmp_50_0 in mem offset legal
    sb      a0,47(sp)
              #                    release a0 with temp_41_cmp_50_0
              #                    occupy a0 with temp_41_cmp_50_0
              #                    load from temp_41_cmp_50_0 in mem


    lb      a0,47(sp)
    bnez    a0, .branch_short_circuit_c_true_352
              #                    free a0
              #                    occupy a0 with temp_41_cmp_50_0
              #                    store to temp_41_cmp_50_0 in mem offset legal
    sb      a0,47(sp)
              #                    release a0 with temp_41_cmp_50_0
    j       .branch_short_circuit_p_false_340
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     202  label branch_short_circuit_c_true_352: 
.branch_short_circuit_c_true_352:
              #                     106  temp_21_arithop_52_0 = Add i32 i_22_1, 1_0 
              #                    occupy a0 with i_22_1
              #                    load from i_22_1 in mem


    lw      a0,208(sp)
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_21_arithop_52_0
    ADDW    a5,a0,a4
              #                    free a0
              #                    occupy a0 with i_22_1
              #                    store to i_22_1 in mem offset legal
    sw      a0,208(sp)
              #                    release a0 with i_22_1
              #                    free a4
              #                    free a5
              #                    occupy a5 with temp_21_arithop_52_0
              #                    store to temp_21_arithop_52_0 in mem offset legal
    sw      a5,112(sp)
              #                    release a5 with temp_21_arithop_52_0
              #                     107  (nop) 
              #                     454  i_22_1 = i32 temp_21_arithop_52_0 
              #                    occupy a0 with temp_21_arithop_52_0
              #                    load from temp_21_arithop_52_0 in mem


    lw      a0,112(sp)
              #                    occupy a4 with i_22_1
    mv      a4, a0
              #                    free a0
              #                    occupy a0 with temp_21_arithop_52_0
              #                    store to temp_21_arithop_52_0 in mem offset legal
    sw      a0,112(sp)
              #                    release a0 with temp_21_arithop_52_0
              #                    free a4
              #                    occupy a4 with i_22_1
              #                    store to i_22_1 in mem offset legal
    sw      a4,208(sp)
              #                    release a4 with i_22_1
              #                          jump label: while.head_29 
              #                    occupy a3 with temp_33_ptr_of_*a_0_33
              #                    store to temp_33_ptr_of_*a_0_33 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with temp_33_ptr_of_*a_0_33
              #                    occupy a3 with x2_30_0
              #                    load from x2_30_0 in mem


    lw      a3,200(sp)
              #                    occupy a4 with temp_50_value_from_ptr_36_0
              #                    load from temp_50_value_from_ptr_36_0 in mem


    lw      a4,16(sp)
              #                    occupy a1 with temp_37_cmp_42_0
              #                    store to temp_37_cmp_42_0 in mem offset legal
    sb      a1,50(sp)
              #                    release a1 with temp_37_cmp_42_0
              #                    occupy a0 with y2_30_0
              #                    load from y2_30_0 in mem


    lw      a0,192(sp)
    j       .while.head_29
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     210  label branch_short_circuit_p_false_340: 
.branch_short_circuit_p_false_340:
              #                     190  temp_43_arithop_50_0 = Add i32 temp_42_value_from_ptr_50_0, 1_0 
              #                    occupy s1 with temp_42_value_from_ptr_50_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a4 with temp_43_arithop_50_0
    ADDW    a4,s1,a0
              #                    free s1
              #                    occupy s1 with temp_42_value_from_ptr_50_0
              #                    store to temp_42_value_from_ptr_50_0 in mem offset legal
    sw      s1,40(sp)
              #                    release s1 with temp_42_value_from_ptr_50_0
              #                    free a0
              #                    free a4
              #                     192  temp_44_cmp_50_0 = icmp i32 Eq x2_30_1, temp_43_arithop_50_0 
              #                    occupy a0 with x2_30_1
              #                    load from x2_30_1 in mem


    lw      a0,196(sp)
              #                    occupy a4 with temp_43_arithop_50_0
              #                    occupy a5 with temp_44_cmp_50_0
    xor     a5,a0,a4
    seqz    a5, a5
              #                    free a0
              #                    occupy a0 with x2_30_1
              #                    store to x2_30_1 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with x2_30_1
              #                    free a4
              #                    occupy a4 with temp_43_arithop_50_0
              #                    store to temp_43_arithop_50_0 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with temp_43_arithop_50_0
              #                    free a5
              #                     212  br i1 temp_44_cmp_50_0, label branch_short_circuit_c_true_352, label branch_short_circuit_p_false_345 
              #                    occupy a5 with temp_44_cmp_50_0
              #                    free a5
              #                    occupy a5 with temp_44_cmp_50_0
              #                    store to temp_44_cmp_50_0 in mem offset legal
    sb      a5,35(sp)
              #                    release a5 with temp_44_cmp_50_0
              #                    occupy s1 with temp_42_value_from_ptr_50_0
              #                    load from temp_42_value_from_ptr_50_0 in mem


    lw      s1,40(sp)
              #                    occupy a0 with temp_44_cmp_50_0
              #                    load from temp_44_cmp_50_0 in mem


    lb      a0,35(sp)
    bnez    a0, .branch_short_circuit_c_true_352
              #                    free a0
              #                    occupy a0 with temp_44_cmp_50_0
              #                    store to temp_44_cmp_50_0 in mem offset legal
    sb      a0,35(sp)
              #                    release a0 with temp_44_cmp_50_0
    j       .branch_short_circuit_p_false_345
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     207  label branch_short_circuit_p_false_345: 
.branch_short_circuit_p_false_345:
              #                     194  temp_45_cmp_50_0 = icmp i32 Eq y2_30_1, 0_0 
              #                    occupy a0 with y2_30_1
              #                    load from y2_30_1 in mem


    lw      a0,188(sp)
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_45_cmp_50_0
    xor     a5,a0,a4
    seqz    a5, a5
              #                    free a0
              #                    occupy a0 with y2_30_1
              #                    store to y2_30_1 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with y2_30_1
              #                    free a4
              #                    free a5
              #                    occupy a5 with temp_45_cmp_50_0
              #                    store to temp_45_cmp_50_0 in mem offset legal
    sb      a5,34(sp)
              #                    release a5 with temp_45_cmp_50_0
              #                     209  br i1 temp_45_cmp_50_0, label branch_short_circuit_c_true_352, label branch_short_circuit_p_false_352 
              #                    occupy a0 with temp_45_cmp_50_0
              #                    load from temp_45_cmp_50_0 in mem


    lb      a0,34(sp)
              #                    free a0
              #                    occupy a0 with temp_45_cmp_50_0
              #                    store to temp_45_cmp_50_0 in mem offset legal
    sb      a0,34(sp)
              #                    release a0 with temp_45_cmp_50_0
              #                    occupy a0 with temp_45_cmp_50_0
              #                    load from temp_45_cmp_50_0 in mem


    lb      a0,34(sp)
    bnez    a0, .branch_short_circuit_c_true_352
              #                    free a0
              #                    occupy a0 with temp_45_cmp_50_0
              #                    store to temp_45_cmp_50_0 in mem offset legal
    sb      a0,34(sp)
              #                    release a0 with temp_45_cmp_50_0
    j       .branch_short_circuit_p_false_352
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     204  label branch_short_circuit_p_false_352: 
.branch_short_circuit_p_false_352:
              #                     199  temp_47_arithop_50_0 = Add i32 temp_46_value_from_ptr_50_0, 1_0 
              #                    occupy s3 with temp_46_value_from_ptr_50_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a4 with temp_47_arithop_50_0
    ADDW    a4,s3,a0
              #                    free s3
              #                    occupy s3 with temp_46_value_from_ptr_50_0
              #                    store to temp_46_value_from_ptr_50_0 in mem offset legal
    sw      s3,28(sp)
              #                    release s3 with temp_46_value_from_ptr_50_0
              #                    free a0
              #                    free a4
              #                     201  temp_48_cmp_50_0 = icmp i32 Eq y2_30_1, temp_47_arithop_50_0 
              #                    occupy a0 with y2_30_1
              #                    load from y2_30_1 in mem


    lw      a0,188(sp)
              #                    occupy a4 with temp_47_arithop_50_0
              #                    occupy a5 with temp_48_cmp_50_0
    xor     a5,a0,a4
    seqz    a5, a5
              #                    free a0
              #                    occupy a0 with y2_30_1
              #                    store to y2_30_1 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with y2_30_1
              #                    free a4
              #                    occupy a4 with temp_47_arithop_50_0
              #                    store to temp_47_arithop_50_0 in mem offset legal
    sw      a4,24(sp)
              #                    release a4 with temp_47_arithop_50_0
              #                    free a5
              #                     206  br i1 temp_48_cmp_50_0, label branch_short_circuit_c_true_352, label branch_short_circuit_c_false_352 
              #                    occupy a5 with temp_48_cmp_50_0
              #                    free a5
              #                    occupy a5 with temp_48_cmp_50_0
              #                    store to temp_48_cmp_50_0 in mem offset legal
    sb      a5,23(sp)
              #                    release a5 with temp_48_cmp_50_0
              #                    occupy s3 with temp_46_value_from_ptr_50_0
              #                    load from temp_46_value_from_ptr_50_0 in mem


    lw      s3,28(sp)
              #                    occupy a0 with temp_48_cmp_50_0
              #                    load from temp_48_cmp_50_0 in mem


    lb      a0,23(sp)
    bnez    a0, .branch_short_circuit_c_true_352
              #                    free a0
              #                    occupy a0 with temp_48_cmp_50_0
              #                    store to temp_48_cmp_50_0 in mem offset legal
    sb      a0,23(sp)
              #                    release a0 with temp_48_cmp_50_0
    j       .branch_short_circuit_c_false_352
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     203  label branch_short_circuit_c_false_352: 
.branch_short_circuit_c_false_352:
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     72   (nop) 
              #                     73   store 0_0:i32 temp_33_ptr_of_*a_0_33:ptr->i32 
              #                    occupy a3 with temp_33_ptr_of_*a_0_33
              #                    occupy a0 with 0_0
    li      a0, 0
    sw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                     74   a_0_3 = chi a_0_2:73 
              #                     76   (nop) 
              #                     78   temp_11_ele_of_*step_0_30_0 = load temp_23_ptr_of_*step_0_35:ptr->i32 
              #                    occupy a0 with temp_23_ptr_of_*step_0_35
              #                    load from temp_23_ptr_of_*step_0_35 in mem
    ld      a0,96(sp)
              #                    occupy a4 with temp_11_ele_of_*step_0_30_0
    lw      a4,0(a0)
              #                    free a4
              #                    occupy a4 with temp_11_ele_of_*step_0_30_0
              #                    store to temp_11_ele_of_*step_0_30_0 in mem offset legal
    sw      a4,164(sp)
              #                    release a4 with temp_11_ele_of_*step_0_30_0
              #                    free a0
              #                    occupy a0 with temp_23_ptr_of_*step_0_35
              #                    store to temp_23_ptr_of_*step_0_35 in mem offset legal
    sd      a0,96(sp)
              #                    release a0 with temp_23_ptr_of_*step_0_35
              #                     79   mu step_0_0:78 
              #                     81   temp_12_arithop_30_0 = Sub i32 x2_30_1, temp_11_ele_of_*step_0_30_0 
              #                    occupy a0 with x2_30_1
              #                    load from x2_30_1 in mem


    lw      a0,196(sp)
              #                    occupy a4 with temp_11_ele_of_*step_0_30_0
              #                    load from temp_11_ele_of_*step_0_30_0 in mem


    lw      a4,164(sp)
              #                    occupy a5 with temp_12_arithop_30_0
              #                    regtab:    a0:Occupied { symidx: x2_30_1, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a4:Occupied { symidx: temp_11_ele_of_*step_0_30_0, tracked: true, occupy_count: 1 } |     a5:Occupied { symidx: temp_12_arithop_30_0, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:2,released_fpr_count:24


    subw    a5,a0,a4
              #                    free a0
              #                    occupy a0 with x2_30_1
              #                    store to x2_30_1 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with x2_30_1
              #                    free a4
              #                    occupy a4 with temp_11_ele_of_*step_0_30_0
              #                    store to temp_11_ele_of_*step_0_30_0 in mem offset legal
    sw      a4,164(sp)
              #                    release a4 with temp_11_ele_of_*step_0_30_0
              #                    free a5
              #                    occupy a5 with temp_12_arithop_30_0
              #                    store to temp_12_arithop_30_0 in mem offset legal
    sw      a5,160(sp)
              #                    release a5 with temp_12_arithop_30_0
              #                     83   (nop) 
              #                     85   temp_14_ele_of_*step_0_30_0 = load temp_26_ptr_of_*step_0_35:ptr->i32 
              #                    occupy a0 with temp_26_ptr_of_*step_0_35
              #                    load from temp_26_ptr_of_*step_0_35 in mem
    ld      a0,80(sp)
              #                    occupy a4 with temp_14_ele_of_*step_0_30_0
    lw      a4,0(a0)
              #                    free a4
              #                    occupy a4 with temp_14_ele_of_*step_0_30_0
              #                    store to temp_14_ele_of_*step_0_30_0 in mem offset legal
    sw      a4,148(sp)
              #                    release a4 with temp_14_ele_of_*step_0_30_0
              #                    free a0
              #                    occupy a0 with temp_26_ptr_of_*step_0_35
              #                    store to temp_26_ptr_of_*step_0_35 in mem offset legal
    sd      a0,80(sp)
              #                    release a0 with temp_26_ptr_of_*step_0_35
              #                     86   mu step_0_0:85 
              #                     88   temp_15_arithop_30_0 = Sub i32 y2_30_1, temp_14_ele_of_*step_0_30_0 
              #                    occupy a0 with y2_30_1
              #                    load from y2_30_1 in mem


    lw      a0,188(sp)
              #                    occupy a4 with temp_14_ele_of_*step_0_30_0
              #                    load from temp_14_ele_of_*step_0_30_0 in mem


    lw      a4,148(sp)
              #                    occupy a5 with temp_15_arithop_30_0
              #                    regtab:    a0:Occupied { symidx: y2_30_1, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_37_cmp_42_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a4:Occupied { symidx: temp_14_ele_of_*step_0_30_0, tracked: true, occupy_count: 1 } |     a5:Occupied { symidx: temp_15_arithop_30_0, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:2,released_fpr_count:24


    subw    a5,a0,a4
              #                    free a0
              #                    occupy a0 with y2_30_1
              #                    store to y2_30_1 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with y2_30_1
              #                    free a4
              #                    occupy a4 with temp_14_ele_of_*step_0_30_0
              #                    store to temp_14_ele_of_*step_0_30_0 in mem offset legal
    sw      a4,148(sp)
              #                    release a4 with temp_14_ele_of_*step_0_30_0
              #                    free a5
              #                    occupy a5 with temp_15_arithop_30_0
              #                    store to temp_15_arithop_30_0 in mem offset legal
    sw      a5,144(sp)
              #                    release a5 with temp_15_arithop_30_0
              #                     92   temp_17_ret_of_search_30_0 =  Call i32 search_0(temp_12_arithop_30_0, temp_15_arithop_30_0, temp_16_arithop_30_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_42_value_from_ptr_50_0
              #                    store to temp_42_value_from_ptr_50_0 in mem offset legal
    sw      s1,40(sp)
              #                    release s1 with temp_42_value_from_ptr_50_0
              #                    occupy s3 with temp_46_value_from_ptr_50_0
              #                    store to temp_46_value_from_ptr_50_0 in mem offset legal
    sw      s3,28(sp)
              #                    release s3 with temp_46_value_from_ptr_50_0
              #                    occupy s5 with temp_16_arithop_30_0
              #                    store to temp_16_arithop_30_0 in mem offset legal
    sw      s5,140(sp)
              #                    release s5 with temp_16_arithop_30_0
              #                    occupy a1 with temp_37_cmp_42_0
              #                    store to temp_37_cmp_42_0 in mem offset legal
    sb      a1,50(sp)
              #                    release a1 with temp_37_cmp_42_0
              #                    occupy a2 with num_22_1
              #                    store to num_22_1 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with num_22_1
              #                    occupy a3 with temp_33_ptr_of_*a_0_33
              #                    store to temp_33_ptr_of_*a_0_33 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with temp_33_ptr_of_*a_0_33
              #                    occupy a6 with temp_52_value_from_ptr_36_0
              #                    store to temp_52_value_from_ptr_36_0 in mem offset legal
    sw      a6,8(sp)
              #                    release a6 with temp_52_value_from_ptr_36_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_12_arithop_30_0_0
              #                    load from temp_12_arithop_30_0 in mem


    lw      a0,160(sp)
              #                    occupy a1 with _anonymous_of_temp_15_arithop_30_0_0
              #                    load from temp_15_arithop_30_0 in mem


    lw      a1,144(sp)
              #                    occupy a2 with _anonymous_of_temp_16_arithop_30_0_0
              #                    load from temp_16_arithop_30_0 in mem


    lw      a2,140(sp)
              #                    arg load ended


    call    search
              #                     375  mu step_0_0:92 
              #                     376  mu x_1_0_0:92 
              #                     377  mu w_0_0:92 
              #                     378  mu a_0_3:92 
              #                     379  mu h_0_0:92 
              #                     380  mu y_1_0_0:92 
              #                     381  a_0_4 = chi a_0_3:92 
              #                     94   temp_18_arithop_30_0 = Add i32 temp_17_ret_of_search_30_0, 1_0 
              #                    occupy a0 with temp_17_ret_of_search_30_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_18_arithop_30_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     95   (nop) 
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_search_30_0, tracked: true } |     a2:Freed { symidx: temp_18_arithop_30_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     215  temp_49_cmp_57_0 = icmp i32 Slt temp_18_arithop_30_0, num_22_1 
              #                    occupy a2 with temp_18_arithop_30_0
              #                    occupy a1 with num_22_1
              #                    load from num_22_1 in mem


    lw      a1,216(sp)
              #                    occupy a3 with temp_49_cmp_57_0
    slt     a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                     218  br i1 temp_49_cmp_57_0, label branch_true_58, label UP_33_0 
              #                    occupy a3 with temp_49_cmp_57_0
              #                    free a3
              #                    occupy a3 with temp_49_cmp_57_0
    bnez    a3, .branch_true_58
              #                    free a3
    j       .UP_33_0
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_search_30_0, tracked: true } |     a1:Freed { symidx: num_22_1, tracked: true } |     a2:Freed { symidx: temp_18_arithop_30_0, tracked: true } |     a3:Freed { symidx: temp_49_cmp_57_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     216  label branch_true_58: 
.branch_true_58:
              #                     524  untrack temp_44_cmp_50_0 
              #                     523  untrack temp_47_arithop_50_0 
              #                     522  untrack temp_41_cmp_50_0 
              #                     521  untrack temp_49_cmp_57_0 
              #                    occupy a3 with temp_49_cmp_57_0
              #                    release a3 with temp_49_cmp_57_0
              #                     520  untrack temp_48_cmp_50_0 
              #                     519  untrack temp_12_arithop_30_0 
              #                     518  untrack temp_45_cmp_50_0 
              #                     517  untrack temp_11_ele_of_*step_0_30_0 
              #                     516  untrack temp_26_ptr_of_*step_0_35 
              #                     515  untrack temp_15_arithop_30_0 
              #                     514  untrack temp_31_cmp_28_0 
              #                     513  untrack temp_39_cmp_42_0 
              #                     512  untrack temp_23_ptr_of_*step_0_35 
              #                     511  untrack y2_30_1 
              #                     510  untrack temp_21_arithop_52_0 
              #                     509  untrack temp_22_arithop_47_0 
              #                     508  untrack x2_30_1 
              #                     507  untrack temp_14_ele_of_*step_0_30_0 
              #                     506  untrack temp_17_ret_of_search_30_0 
              #                    occupy a0 with temp_17_ret_of_search_30_0
              #                    release a0 with temp_17_ret_of_search_30_0
              #                     505  untrack temp_43_arithop_50_0 
              #                     504  untrack coun_30_1 
              #                     503  untrack temp_37_cmp_42_0 
              #                     502  untrack temp_40_cmp_45_0 
              #                     104  (nop) 
              #                     455  num_22_3 = i32 temp_18_arithop_30_0 
              #                    occupy a2 with temp_18_arithop_30_0
              #                    occupy a0 with num_22_3
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                     525  untrack temp_18_arithop_30_0 
              #                    occupy a2 with temp_18_arithop_30_0
              #                    release a2 with temp_18_arithop_30_0
              #                          jump label: branch_false_58 
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: num_22_3, tracked: true } |     a1:Freed { symidx: num_22_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     217  label branch_false_58: 
.branch_false_58:
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: num_22_3, tracked: true } |     a1:Freed { symidx: num_22_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     98   (nop) 
              #                     99   store 1_0:i32 temp_33_ptr_of_*a_0_33:ptr->i32 
              #                    occupy a2 with temp_33_ptr_of_*a_0_33
              #                    load from temp_33_ptr_of_*a_0_33 in mem
    ld      a2,56(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     100  a_0_5 = chi a_0_4:99 
              #                     102  temp_20_arithop_30_0 = Add i32 i_22_1, 1_0 
              #                    occupy a4 with i_22_1
              #                    load from i_22_1 in mem


    lw      a4,208(sp)
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a5 with temp_20_arithop_30_0
    ADDW    a5,a4,a3
              #                    free a4
              #                    free a3
              #                    free a5
              #                     103  (nop) 
              #                     456  num_22_1 = i32 num_22_3 
              #                    occupy a0 with num_22_3
              #                    occupy a1 with num_22_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     457  i_22_1 = i32 temp_20_arithop_30_0 
              #                    occupy a5 with temp_20_arithop_30_0
              #                    occupy a4 with i_22_1
    mv      a4, a5
              #                    free a5
              #                    free a4
              #                          jump label: while.head_29 
              #                    occupy a5 with temp_20_arithop_30_0
              #                    store to temp_20_arithop_30_0 in mem offset legal
    sw      a5,116(sp)
              #                    release a5 with temp_20_arithop_30_0
              #                    occupy a6 with temp_52_value_from_ptr_36_0
              #                    load from temp_52_value_from_ptr_36_0 in mem


    lw      a6,8(sp)
              #                    occupy a3 with x2_30_0
              #                    load from x2_30_0 in mem


    lw      a3,200(sp)
              #                    occupy s1 with temp_42_value_from_ptr_50_0
              #                    load from temp_42_value_from_ptr_50_0 in mem


    lw      s1,40(sp)
              #                    occupy s3 with temp_46_value_from_ptr_50_0
              #                    load from temp_46_value_from_ptr_50_0 in mem


    lw      s3,28(sp)
              #                    occupy a4 with i_22_1
              #                    store to i_22_1 in mem offset legal
    sw      a4,208(sp)
              #                    release a4 with i_22_1
              #                    occupy a4 with temp_50_value_from_ptr_36_0
              #                    load from temp_50_value_from_ptr_36_0 in mem


    lw      a4,16(sp)
              #                    occupy a1 with num_22_1
              #                    store to num_22_1 in mem offset legal
    sw      a1,216(sp)
              #                    release a1 with num_22_1
              #                    occupy a2 with temp_33_ptr_of_*a_0_33
              #                    store to temp_33_ptr_of_*a_0_33 in mem offset legal
    sd      a2,56(sp)
              #                    release a2 with temp_33_ptr_of_*a_0_33
              #                    occupy a2 with num_22_1
              #                    load from num_22_1 in mem


    lw      a2,216(sp)
              #                    occupy s5 with temp_16_arithop_30_0
              #                    load from temp_16_arithop_30_0 in mem


    lw      s5,140(sp)
              #                    occupy a0 with num_22_3
              #                    store to num_22_3 in mem offset legal
    sw      a0,212(sp)
              #                    release a0 with num_22_3
              #                    occupy a0 with y2_30_0
              #                    load from y2_30_0 in mem


    lw      a0,192(sp)
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: temp_17_ret_of_search_30_0, tracked: true } |     a1:Freed { symidx: num_22_1, tracked: true } |     a2:Freed { symidx: temp_18_arithop_30_0, tracked: true } |     a3:Freed { symidx: temp_49_cmp_57_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     444  label UP_33_0: 
.UP_33_0:
              #                     458  num_22_3 = i32 num_22_1 
              #                    occupy a1 with num_22_1
              #                    occupy a4 with num_22_3
    mv      a4, a1
              #                    free a1
              #                    free a4
              #                          jump label: branch_false_58 
              #                    occupy a3 with temp_49_cmp_57_0
              #                    store to temp_49_cmp_57_0 in mem offset legal
    sb      a3,22(sp)
              #                    release a3 with temp_49_cmp_57_0
              #                    occupy a4 with num_22_3
              #                    store to num_22_3 in mem offset legal
    sw      a4,212(sp)
              #                    release a4 with num_22_3
              #                    occupy a2 with temp_18_arithop_30_0
              #                    store to temp_18_arithop_30_0 in mem offset legal
    sw      a2,132(sp)
              #                    release a2 with temp_18_arithop_30_0
              #                    occupy a0 with temp_17_ret_of_search_30_0
              #                    store to temp_17_ret_of_search_30_0 in mem offset legal
    sw      a0,136(sp)
              #                    release a0 with temp_17_ret_of_search_30_0
              #                    occupy a0 with num_22_3
              #                    load from num_22_3 in mem


    lw      a0,212(sp)
    j       .branch_false_58
              #                    regtab     a1:Freed { symidx: temp_51_cmp_36_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     230  label branch_short_circuit_c_false_353: 
.branch_short_circuit_c_false_353:
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab     a1:Freed { symidx: temp_51_cmp_36_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: temp_33_ptr_of_*a_0_33, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L12_0: 
.L12_0:
              #                     116  temp_24_ele_of_*step_0_35_0 = load temp_23_ptr_of_*step_0_35:ptr->i32 
              #                    occupy a0 with temp_23_ptr_of_*step_0_35
              #                    load from temp_23_ptr_of_*step_0_35 in mem
    ld      a0,96(sp)
              #                    occupy a4 with temp_24_ele_of_*step_0_35_0
    lw      a4,0(a0)
              #                    free a4
              #                    occupy a4 with temp_24_ele_of_*step_0_35_0
              #                    store to temp_24_ele_of_*step_0_35_0 in mem offset legal
    sw      a4,92(sp)
              #                    release a4 with temp_24_ele_of_*step_0_35_0
              #                    free a0
              #                    occupy a0 with temp_23_ptr_of_*step_0_35
              #                    store to temp_23_ptr_of_*step_0_35 in mem offset legal
    sd      a0,96(sp)
              #                    release a0 with temp_23_ptr_of_*step_0_35
              #                     117  mu step_0_0:116 
              #                     119  temp_25_arithop_35_0 = Add i32 x2_30_1, temp_24_ele_of_*step_0_35_0 
              #                    occupy a0 with x2_30_1
              #                    load from x2_30_1 in mem


    lw      a0,196(sp)
              #                    occupy a4 with temp_24_ele_of_*step_0_35_0
              #                    load from temp_24_ele_of_*step_0_35_0 in mem


    lw      a4,92(sp)
              #                    occupy a5 with temp_25_arithop_35_0
    ADDW    a5,a0,a4
              #                    free a0
              #                    occupy a0 with x2_30_1
              #                    store to x2_30_1 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with x2_30_1
              #                    free a4
              #                    occupy a4 with temp_24_ele_of_*step_0_35_0
              #                    store to temp_24_ele_of_*step_0_35_0 in mem offset legal
    sw      a4,92(sp)
              #                    release a4 with temp_24_ele_of_*step_0_35_0
              #                    free a5
              #                    occupy a5 with temp_25_arithop_35_0
              #                    store to temp_25_arithop_35_0 in mem offset legal
    sw      a5,88(sp)
              #                    release a5 with temp_25_arithop_35_0
              #                     120  (nop) 
              #                     124  temp_27_ele_of_*step_0_35_0 = load temp_26_ptr_of_*step_0_35:ptr->i32 
              #                    occupy a0 with temp_26_ptr_of_*step_0_35
              #                    load from temp_26_ptr_of_*step_0_35 in mem
    ld      a0,80(sp)
              #                    occupy a4 with temp_27_ele_of_*step_0_35_0
    lw      a4,0(a0)
              #                    free a4
              #                    occupy a4 with temp_27_ele_of_*step_0_35_0
              #                    store to temp_27_ele_of_*step_0_35_0 in mem offset legal
    sw      a4,76(sp)
              #                    release a4 with temp_27_ele_of_*step_0_35_0
              #                    free a0
              #                    occupy a0 with temp_26_ptr_of_*step_0_35
              #                    store to temp_26_ptr_of_*step_0_35 in mem offset legal
    sd      a0,80(sp)
              #                    release a0 with temp_26_ptr_of_*step_0_35
              #                     125  mu step_0_0:124 
              #                     127  temp_28_arithop_35_0 = Add i32 y2_30_1, temp_27_ele_of_*step_0_35_0 
              #                    occupy a0 with y2_30_1
              #                    load from y2_30_1 in mem


    lw      a0,188(sp)
              #                    occupy a4 with temp_27_ele_of_*step_0_35_0
              #                    load from temp_27_ele_of_*step_0_35_0 in mem


    lw      a4,76(sp)
              #                    occupy a5 with temp_28_arithop_35_0
    ADDW    a5,a0,a4
              #                    free a0
              #                    occupy a0 with y2_30_1
              #                    store to y2_30_1 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with y2_30_1
              #                    free a4
              #                    occupy a4 with temp_27_ele_of_*step_0_35_0
              #                    store to temp_27_ele_of_*step_0_35_0 in mem offset legal
    sw      a4,76(sp)
              #                    release a4 with temp_27_ele_of_*step_0_35_0
              #                    free a5
              #                    occupy a5 with temp_28_arithop_35_0
              #                    store to temp_28_arithop_35_0 in mem offset legal
    sw      a5,72(sp)
              #                    release a5 with temp_28_arithop_35_0
              #                     128  (nop) 
              #                     130  temp_29_arithop_35_0 = Add i32 coun_30_1, 1_0 
              #                    occupy a0 with coun_30_1
              #                    load from coun_30_1 in mem


    lw      a0,204(sp)
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_29_arithop_35_0
    ADDW    a5,a0,a4
              #                    free a0
              #                    occupy a0 with coun_30_1
              #                    store to coun_30_1 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with coun_30_1
              #                    free a4
              #                    free a5
              #                    occupy a5 with temp_29_arithop_35_0
              #                    store to temp_29_arithop_35_0 in mem offset legal
    sw      a5,68(sp)
              #                    release a5 with temp_29_arithop_35_0
              #                     131  (nop) 
              #                     450  x2_30_1 = i32 temp_25_arithop_35_0 
              #                    occupy a0 with temp_25_arithop_35_0
              #                    load from temp_25_arithop_35_0 in mem


    lw      a0,88(sp)
              #                    occupy a4 with x2_30_1
    mv      a4, a0
              #                    free a0
              #                    occupy a0 with temp_25_arithop_35_0
              #                    store to temp_25_arithop_35_0 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_25_arithop_35_0
              #                    free a4
              #                    occupy a4 with x2_30_1
              #                    store to x2_30_1 in mem offset legal
    sw      a4,196(sp)
              #                    release a4 with x2_30_1
              #                     451  coun_30_1 = i32 temp_29_arithop_35_0 
              #                    occupy a0 with temp_29_arithop_35_0
              #                    load from temp_29_arithop_35_0 in mem


    lw      a0,68(sp)
              #                    occupy a4 with coun_30_1
    mv      a4, a0
              #                    free a0
              #                    occupy a0 with temp_29_arithop_35_0
              #                    store to temp_29_arithop_35_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_29_arithop_35_0
              #                    free a4
              #                    occupy a4 with coun_30_1
              #                    store to coun_30_1 in mem offset legal
    sw      a4,204(sp)
              #                    release a4 with coun_30_1
              #                     452  y2_30_1 = i32 temp_28_arithop_35_0 
              #                    occupy a0 with temp_28_arithop_35_0
              #                    load from temp_28_arithop_35_0 in mem


    lw      a0,72(sp)
              #                    occupy a4 with y2_30_1
    mv      a4, a0
              #                    free a0
              #                    occupy a0 with temp_28_arithop_35_0
              #                    store to temp_28_arithop_35_0 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_28_arithop_35_0
              #                    free a4
              #                    occupy a4 with y2_30_1
              #                    store to y2_30_1 in mem offset legal
    sw      a4,188(sp)
              #                    release a4 with y2_30_1
              #                          jump label: while.head_34 
              #                    occupy a3 with temp_33_ptr_of_*a_0_33
              #                    store to temp_33_ptr_of_*a_0_33 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with temp_33_ptr_of_*a_0_33
              #                    occupy a4 with temp_50_value_from_ptr_36_0
              #                    load from temp_50_value_from_ptr_36_0 in mem


    lw      a4,16(sp)
              #                    occupy a1 with temp_51_cmp_36_0
              #                    store to temp_51_cmp_36_0 in mem offset legal
    sb      a1,15(sp)
              #                    release a1 with temp_51_cmp_36_0
              #                    occupy a1 with y2_30_1
              #                    load from y2_30_1 in mem


    lw      a1,188(sp)
              #                    occupy a0 with x2_30_1
              #                    load from x2_30_1 in mem


    lw      a0,196(sp)
    j       .while.head_34
              #                    regtab     a0:Freed { symidx: y2_30_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |     a3:Freed { symidx: x2_30_0, tracked: true } |     a4:Freed { symidx: temp_50_value_from_ptr_36_0, tracked: true } |     a6:Freed { symidx: temp_52_value_from_ptr_36_0, tracked: true } |     s1:Freed { symidx: temp_42_value_from_ptr_50_0, tracked: true } |     s3:Freed { symidx: temp_46_value_from_ptr_50_0, tracked: true } |     s5:Freed { symidx: temp_16_arithop_30_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     143  label while.exit_29: 
.while.exit_29:
              #                     492  untrack temp_52_value_from_ptr_36_0 
              #                    occupy a6 with temp_52_value_from_ptr_36_0
              #                    release a6 with temp_52_value_from_ptr_36_0
              #                     491  untrack temp_16_arithop_30_0 
              #                    occupy s5 with temp_16_arithop_30_0
              #                    release s5 with temp_16_arithop_30_0
              #                     490  untrack i_22_1 
              #                     489  untrack x2_30_0 
              #                    occupy a3 with x2_30_0
              #                    release a3 with x2_30_0
              #                     488  untrack y2_30_0 
              #                    occupy a0 with y2_30_0
              #                    release a0 with y2_30_0
              #                     487  untrack temp_46_value_from_ptr_50_0 
              #                    occupy s3 with temp_46_value_from_ptr_50_0
              #                    release s3 with temp_46_value_from_ptr_50_0
              #                     486  untrack temp_50_value_from_ptr_36_0 
              #                    occupy a4 with temp_50_value_from_ptr_36_0
              #                    release a4 with temp_50_value_from_ptr_36_0
              #                     485  untrack temp_42_value_from_ptr_50_0 
              #                    occupy s1 with temp_42_value_from_ptr_50_0
              #                    release s1 with temp_42_value_from_ptr_50_0
              #                     146  temp_32_cmp_62_0 = icmp i32 Sgt num_22_1, 10_0 
              #                    occupy a2 with num_22_1
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    occupy a1 with temp_32_cmp_62_0
    slt     a1,a0,a2
              #                    free a2
              #                    free a0
              #                    free a1
              #                     149  br i1 temp_32_cmp_62_0, label branch_true_63, label branch_false_63 
              #                    occupy a1 with temp_32_cmp_62_0
              #                    free a1
              #                    occupy a1 with temp_32_cmp_62_0
    bnez    a1, .branch_true_63
              #                    free a1
    j       .branch_false_63
              #                    regtab     a1:Freed { symidx: temp_32_cmp_62_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     147  label branch_true_63: 
.branch_true_63:
              #                     553  untrack temp_32_cmp_62_0 
              #                    occupy a1 with temp_32_cmp_62_0
              #                    release a1 with temp_32_cmp_62_0
              #                     552  untrack num_22_1 
              #                    occupy a2 with num_22_1
              #                    release a2 with num_22_1
              #                     383  mu a_0_2:64 
              #                     64   ret 1073741824_0 
              #                    load from ra_search_0 in mem
    ld      ra,240(sp)
              #                    load from s0_search_0 in mem
    ld      s0,232(sp)
              #                    occupy a0 with 1073741824_0
    li      a0, 1073741824
    addi    sp,sp,248
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_32_cmp_62_0, tracked: true } |     a2:Freed { symidx: num_22_1, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     148  label branch_false_63: 
.branch_false_63:
              #                     554  untrack temp_32_cmp_62_0 
              #                    occupy a1 with temp_32_cmp_62_0
              #                    release a1 with temp_32_cmp_62_0
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     a2:Freed { symidx: num_22_1, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L13_0: 
.L13_0:
              #                     384  mu a_0_2:62 
              #                     62   ret num_22_1 
              #                    load from ra_search_0 in mem
    ld      ra,240(sp)
              #                    load from s0_search_0 in mem
    ld      s0,232(sp)
              #                    occupy a2 with num_22_1
              #                    store to num_22_1 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with num_22_1
              #                    occupy a0 with num_22_1
              #                    load from num_22_1 in mem


    lw      a0,216(sp)
    addi    sp,sp,248
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     56   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 160|s0_main:8 at 152|temp_54_ret_of_getint _s67 _i0:4 at 148|temp_55_ret_of_getint _s67 _i0:4 at 144|i _s72 _i0:4 at 140|i _s72 _i2:4 at 136|i _s72 _i5:4 at 132|j _s72 _i0:4 at 128|j _s72 _i1:4 at 124|j _s72 _i3:4 at 120|j _s72 _i5:4 at 116|j _s72 _i7:4 at 112|temp_56_value_from_ptr _s72 _i0:4 at 108|temp_57_value_from_ptr _s72 _i0:4 at 104|temp_58_ret_of_search _s72 _i0:4 at 100|temp_59_ret_of_getint _s72 _i0:4 at 96|temp_60_ret_of_getint _s72 _i0:4 at 92|temp_61_arithop _s88 _i0:4 at 88|temp_62_ptr_of_*a_0:8 at 80|temp_63_ret_of_getint _s92 _i0:4 at 76|temp_64_arithop _s92 _i0:4 at 72|temp_65_arithop _s77 _i0:4 at 68|none:4 at 64|temp_66_ptr_of_*a_0:8 at 56|temp_67_arithop _s81 _i0:4 at 52|temp_68_value_from_ptr _s70 _i0:4 at 48|temp_69_cmp _s70 _i0:1 at 47|temp_70_cmp _s75 _i0:1 at 46|none:2 at 44|temp_71_value_from_ptr _s86 _i0:4 at 40|temp_72_cmp _s86 _i0:1 at 39|temp_73_cmp _s107 _i0:1 at 38|temp_75_cmp _s90 _i0:1 at 37|none:5 at 32|temp_76_ptr_of_*a_0:8 at 24|temp_77_ele_of_*a_0 _s94 _i0:4 at 20|temp_78_cmp _s94 _i0:1 at 19|none:3 at 16|temp_79_ptr_of_*a_0:8 at 8|temp_81_cmp _s99 _i0:1 at 7|temp_82_cmp _s79 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-168
              #                    store to ra_main_0 in mem offset legal
    sd      ra,160(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,152(sp)
    addi    s0,sp,168
              #                     385  y_0_0_1 = chi y_0_0_0:56 
              #                     386  w_0_1 = chi w_0_0:56 
              #                     387  x_0_0_1 = chi x_0_0_0:56 
              #                     388  h_0_1 = chi h_0_0:56 
              #                     389  x_1_0_1 = chi x_1_0_0:56 
              #                     390  y_1_0_1 = chi y_1_0_0:56 
              #                     391  a_0_6 = chi a_0_0:56 
              #                     235  alloc i32 [temp_54_ret_of_getint_67] 
              #                     239  alloc i32 [temp_55_ret_of_getint_67] 
              #                     245  alloc i32 [i_72] 
              #                     247  alloc i32 [j_72] 
              #                     251  alloc i32 [temp_56_value_from_ptr_72] 
              #                     254  alloc i32 [temp_57_value_from_ptr_72] 
              #                     257  alloc i32 [temp_58_ret_of_search_72] 
              #                     260  alloc i32 [res_72] 
              #                     263  alloc i32 [temp_59_ret_of_getint_72] 
              #                     267  alloc i32 [temp_60_ret_of_getint_72] 
              #                     274  alloc i32 [temp_61_arithop_88] 
              #                     277  alloc ptr->i32 [temp_62_ptr_of_*a_0_92] 
              #                     279  alloc i32 [temp_63_ret_of_getint_92] 
              #                     283  alloc i32 [temp_64_arithop_92] 
              #                     295  alloc i32 [temp_65_arithop_77] 
              #                     298  alloc ptr->i32 [temp_66_ptr_of_*a_0_81] 
              #                     302  alloc i32 [temp_67_arithop_81] 
              #                     305  alloc i32 [temp_68_value_from_ptr_70] 
              #                     308  alloc i1 [temp_69_cmp_70] 
              #                     316  alloc i1 [temp_70_cmp_75] 
              #                     322  alloc i32 [temp_71_value_from_ptr_86] 
              #                     325  alloc i1 [temp_72_cmp_86] 
              #                     331  alloc i1 [temp_73_cmp_107] 
              #                     337  alloc i32 [temp_74_value_from_ptr_90] 
              #                     340  alloc i1 [temp_75_cmp_90] 
              #                     346  alloc ptr->i32 [temp_76_ptr_of_*a_0_94] 
              #                     348  alloc i32 [temp_77_ele_of_*a_0_94] 
              #                     351  alloc i1 [temp_78_cmp_94] 
              #                     356  alloc ptr->i32 [temp_79_ptr_of_*a_0_99] 
              #                     358  alloc i32 [temp_80_ele_of_*a_0_99] 
              #                     361  alloc i1 [temp_81_cmp_99] 
              #                     367  alloc i1 [temp_82_cmp_79] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     236  temp_54_ret_of_getint_67_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     237  store temp_54_ret_of_getint_67_0:i32 *w_0:ptr->i32 
              #                    occupy a1 with *w_0
              #                       load label w as ptr to reg
    la      a1, w
              #                    occupy reg a1 with *w_0
              #                    occupy a0 with temp_54_ret_of_getint_67_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     556  untrack temp_54_ret_of_getint_67_0 
              #                    occupy a0 with temp_54_ret_of_getint_67_0
              #                    release a0 with temp_54_ret_of_getint_67_0
              #                     238  w_0_2 = chi w_0_1:237 
              #                     240  temp_55_ret_of_getint_67_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     241  store temp_55_ret_of_getint_67_0:i32 *h_0:ptr->i32 
              #                    occupy a1 with *h_0
              #                       load label h as ptr to reg
    la      a1, h
              #                    occupy reg a1 with *h_0
              #                    occupy a0 with temp_55_ret_of_getint_67_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     555  untrack temp_55_ret_of_getint_67_0 
              #                    occupy a0 with temp_55_ret_of_getint_67_0
              #                    release a0 with temp_55_ret_of_getint_67_0
              #                     242  h_0_2 = chi h_0_1:241 
              #                          jump label: while.head_71 
    j       .while.head_71
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     310  label while.head_71: 
.while.head_71:
              #                     306  temp_68_value_from_ptr_70_0 = load *w_0:ptr->i32 
              #                    occupy a0 with *w_0
              #                       load label w as ptr to reg
    la      a0, w
              #                    occupy reg a0 with *w_0
              #                    occupy a1 with temp_68_value_from_ptr_70_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     307  mu w_0_3:306 
              #                     309  temp_69_cmp_70_0 = icmp i32 Ne temp_68_value_from_ptr_70_0, 0_0 
              #                    occupy a1 with temp_68_value_from_ptr_70_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_69_cmp_70_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     313  br i1 temp_69_cmp_70_0, label while.body_71, label while.exit_71 
              #                    occupy a3 with temp_69_cmp_70_0
              #                    free a3
              #                    occupy a3 with temp_69_cmp_70_0
    bnez    a3, .while.body_71
              #                    free a3
    j       .while.exit_71
              #                    regtab     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     311  label while.body_71: 
.while.body_71:
              #                     246   
              #                     248   
              #                     249  (nop) 
              #                     459  i_72_2 = i32 0_0 
              #                    occupy a0 with i_72_2
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_76 
    j       .while.head_76
              #                    regtab     a0:Freed { symidx: i_72_2, tracked: true } |     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     318  label while.head_76: 
.while.head_76:
              #                     317  temp_70_cmp_75_0 = icmp i32 Slt i_72_2, 30_0 
              #                    occupy a0 with i_72_2
              #                    occupy a2 with 30_0
    li      a2, 30
              #                    occupy a4 with temp_70_cmp_75_0
    slt     a4,a0,a2
              #                    free a0
              #                    free a2
              #                    free a4
              #                     321  br i1 temp_70_cmp_75_0, label while.body_76, label while.exit_76 
              #                    occupy a4 with temp_70_cmp_75_0
              #                    free a4
              #                    occupy a4 with temp_70_cmp_75_0
    bnez    a4, .while.body_76
              #                    free a4
    j       .while.exit_76
              #                    regtab     a0:Freed { symidx: i_72_2, tracked: true } |     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |     a4:Freed { symidx: temp_70_cmp_75_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     319  label while.body_76: 
.while.body_76:
              #                     294  (nop) 
              #                     460  j_72_3 = i32 0_0 
              #                    occupy a2 with j_72_3
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_80 
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: i_72_2, tracked: true } |     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a2:Freed { symidx: j_72_3, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |     a4:Freed { symidx: temp_70_cmp_75_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     369  label while.head_80: 
.while.head_80:
              #                     368  temp_82_cmp_79_0 = icmp i32 Slt j_72_3, 30_0 
              #                    occupy a2 with j_72_3
              #                    occupy a5 with 30_0
    li      a5, 30
              #                    occupy a6 with temp_82_cmp_79_0
    slt     a6,a2,a5
              #                    free a2
              #                    free a5
              #                    free a6
              #                     372  br i1 temp_82_cmp_79_0, label while.body_80, label while.exit_80 
              #                    occupy a6 with temp_82_cmp_79_0
              #                    free a6
              #                    occupy a6 with temp_82_cmp_79_0
    bnez    a6, .while.body_80
              #                    free a6
    j       .while.exit_80
              #                    regtab     a0:Freed { symidx: i_72_2, tracked: true } |     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a2:Freed { symidx: j_72_3, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |     a4:Freed { symidx: temp_70_cmp_75_0, tracked: true } |     a6:Freed { symidx: temp_82_cmp_79_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     370  label while.body_80: 
.while.body_80:
              #                     563  untrack temp_77_ele_of_*a_0_94_0 
              #                     562  untrack temp_78_cmp_94_0 
              #                     561  untrack temp_62_ptr_of_*a_0_92 
              #                     560  untrack temp_63_ret_of_getint_92_0 
              #                     559  untrack temp_75_cmp_90_0 
              #                     558  untrack temp_64_arithop_92_0 
              #                     557  untrack temp_81_cmp_99_0 
              #                     299  temp_66_ptr_of_*a_0_81 = GEP *a_0:ptr->Array:i32:[Some(30_0)] [Some(i_72_2), Some(j_72_3)] 
              #                    occupy a5 with temp_66_ptr_of_*a_0_81
    li      a5, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with 30_0
    li      s1, 30
              #                    occupy a0 with i_72_2
    mul     a7,s1,a0
              #                    free s1
              #                    free a0
    add     a5,a5,a7
              #                    free a7
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with j_72_3
    mv      s2, a2
              #                    free a2
              #                    occupy a2 with j_72_3
              #                    store to j_72_3 in mem offset legal
    sw      a2,120(sp)
              #                    release a2 with j_72_3
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
              #                    occupy a2 with *a_0
              #                       load label a as ptr to reg
    la      a2, a
              #                    occupy reg a2 with *a_0
    add     a5,a5,a2
              #                    free a2
              #                    free a5
              #                     300  store 1_0:i32 temp_66_ptr_of_*a_0_81:ptr->i32 
              #                    occupy a5 with temp_66_ptr_of_*a_0_81
              #                    occupy a2 with 1_0
    li      a2, 1
    sw      a2,0(a5)
              #                    free a2
              #                    free a5
              #                     301  a_0_10 = chi a_0_9:300 
              #                     303  temp_67_arithop_81_0 = Add i32 j_72_3, 1_0 
              #                    occupy a2 with j_72_3
              #                    load from j_72_3 in mem


    lw      a2,120(sp)
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_67_arithop_81_0
    ADDW    s4,a2,s3
              #                    free a2
              #                    occupy a2 with j_72_3
              #                    store to j_72_3 in mem offset legal
    sw      a2,120(sp)
              #                    release a2 with j_72_3
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_67_arithop_81_0
              #                    store to temp_67_arithop_81_0 in mem offset legal
    sw      s4,52(sp)
              #                    release s4 with temp_67_arithop_81_0
              #                     304  (nop) 
              #                     461  j_72_3 = i32 temp_67_arithop_81_0 
              #                    occupy a2 with temp_67_arithop_81_0
              #                    load from temp_67_arithop_81_0 in mem


    lw      a2,52(sp)
              #                    occupy s3 with j_72_3
    mv      s3, a2
              #                    free a2
              #                    occupy a2 with temp_67_arithop_81_0
              #                    store to temp_67_arithop_81_0 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_67_arithop_81_0
              #                    free s3
              #                    occupy s3 with j_72_3
              #                    store to j_72_3 in mem offset legal
    sw      s3,120(sp)
              #                    release s3 with j_72_3
              #                          jump label: while.head_80 
              #                    occupy a5 with temp_66_ptr_of_*a_0_81
              #                    store to temp_66_ptr_of_*a_0_81 in mem offset legal
    sd      a5,56(sp)
              #                    release a5 with temp_66_ptr_of_*a_0_81
              #                    occupy a2 with j_72_3
              #                    load from j_72_3 in mem


    lw      a2,120(sp)
              #                    occupy a6 with temp_82_cmp_79_0
              #                    store to temp_82_cmp_79_0 in mem offset legal
    sb      a6,6(sp)
              #                    release a6 with temp_82_cmp_79_0
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: i_72_2, tracked: true } |     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a2:Freed { symidx: j_72_3, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |     a4:Freed { symidx: temp_70_cmp_75_0, tracked: true } |     a6:Freed { symidx: temp_82_cmp_79_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     371  label while.exit_80: 
.while.exit_80:
              #                     296  temp_65_arithop_77_0 = Add i32 i_72_2, 1_0 
              #                    occupy a0 with i_72_2
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a7 with temp_65_arithop_77_0
    ADDW    a7,a0,a5
              #                    free a0
              #                    free a5
              #                    free a7
              #                     297  (nop) 
              #                     462  i_72_2 = i32 temp_65_arithop_77_0 
              #                    occupy a7 with temp_65_arithop_77_0
              #                    occupy a0 with i_72_2
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_76 
              #                    occupy a7 with temp_65_arithop_77_0
              #                    store to temp_65_arithop_77_0 in mem offset legal
    sw      a7,68(sp)
              #                    release a7 with temp_65_arithop_77_0
              #                    occupy a4 with temp_70_cmp_75_0
              #                    store to temp_70_cmp_75_0 in mem offset legal
    sb      a4,46(sp)
              #                    release a4 with temp_70_cmp_75_0
              #                    occupy a2 with j_72_3
              #                    store to j_72_3 in mem offset legal
    sw      a2,120(sp)
              #                    release a2 with j_72_3
              #                    occupy a6 with temp_82_cmp_79_0
              #                    store to temp_82_cmp_79_0 in mem offset legal
    sb      a6,6(sp)
              #                    release a6 with temp_82_cmp_79_0
    j       .while.head_76
              #                    regtab     a0:Freed { symidx: i_72_2, tracked: true } |     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |     a4:Freed { symidx: temp_70_cmp_75_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     320  label while.exit_76: 
.while.exit_76:
              #                     250  (nop) 
              #                     323  temp_71_value_from_ptr_86_0 = load *h_0:ptr->i32 
              #                    occupy a2 with *h_0
              #                       load label h as ptr to reg
    la      a2, h
              #                    occupy reg a2 with *h_0
              #                    occupy a5 with temp_71_value_from_ptr_86_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     324  mu h_0_3:323 
              #                     338  (nop) 
              #                     339  mu w_0_3:338 
              #                     463  i_72_5 = i32 1_0 
              #                    occupy a6 with i_72_5
    li      a6, 1
              #                    free a6
              #                          jump label: while.head_87 
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: i_72_2, tracked: true } |     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |     a4:Freed { symidx: temp_70_cmp_75_0, tracked: true } |     a5:Freed { symidx: temp_71_value_from_ptr_86_0, tracked: true } |     a6:Freed { symidx: i_72_5, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     327  label while.head_87: 
.while.head_87:
              #                     326  temp_72_cmp_86_0 = icmp i32 Sle i_72_5, temp_71_value_from_ptr_86_0 
              #                    occupy a6 with i_72_5
              #                    occupy a5 with temp_71_value_from_ptr_86_0
              #                    occupy a2 with temp_72_cmp_86_0
    slt     a2,a5,a6
    xori    a2,a2,1
              #                    free a6
              #                    free a5
              #                    free a2
              #                     330  br i1 temp_72_cmp_86_0, label while.body_87, label while.exit_87 
              #                    occupy a2 with temp_72_cmp_86_0
              #                    free a2
              #                    occupy a2 with temp_72_cmp_86_0
    bnez    a2, .while.body_87
              #                    free a2
    j       .while.exit_87
              #                    regtab     a0:Freed { symidx: i_72_2, tracked: true } |     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a2:Freed { symidx: temp_72_cmp_86_0, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |     a4:Freed { symidx: temp_70_cmp_75_0, tracked: true } |     a5:Freed { symidx: temp_71_value_from_ptr_86_0, tracked: true } |     a6:Freed { symidx: i_72_5, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     328  label while.body_87: 
.while.body_87:
              #                     566  untrack temp_70_cmp_75_0 
              #                    occupy a4 with temp_70_cmp_75_0
              #                    release a4 with temp_70_cmp_75_0
              #                     565  untrack j_72_3 
              #                     564  untrack temp_65_arithop_77_0 
              #                     273  (nop) 
              #                     464  j_72_7 = i32 1_0 
              #                    occupy a4 with j_72_7
    li      a4, 1
              #                    free a4
              #                          jump label: while.head_91 
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: i_72_2, tracked: true } |     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a2:Freed { symidx: temp_72_cmp_86_0, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |     a4:Freed { symidx: j_72_7, tracked: true } |     a5:Freed { symidx: temp_71_value_from_ptr_86_0, tracked: true } |     a6:Freed { symidx: i_72_5, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     342  label while.head_91: 
.while.head_91:
              #                     341  temp_75_cmp_90_0 = icmp i32 Sle j_72_7, temp_68_value_from_ptr_70_0 
              #                    occupy a4 with j_72_7
              #                    occupy a1 with temp_68_value_from_ptr_70_0
              #                    occupy a7 with temp_75_cmp_90_0
    slt     a7,a1,a4
    xori    a7,a7,1
              #                    free a4
              #                    free a1
              #                    free a7
              #                     345  br i1 temp_75_cmp_90_0, label while.body_91, label while.exit_91 
              #                    occupy a7 with temp_75_cmp_90_0
              #                    free a7
              #                    occupy a7 with temp_75_cmp_90_0
    bnez    a7, .while.body_91
              #                    free a7
    j       .while.exit_91
              #                    regtab     a0:Freed { symidx: i_72_2, tracked: true } |     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a2:Freed { symidx: temp_72_cmp_86_0, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |     a4:Freed { symidx: j_72_7, tracked: true } |     a5:Freed { symidx: temp_71_value_from_ptr_86_0, tracked: true } |     a6:Freed { symidx: i_72_5, tracked: true } |     a7:Freed { symidx: temp_75_cmp_90_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     343  label while.body_91: 
.while.body_91:
              #                     278  temp_62_ptr_of_*a_0_92 = GEP *a_0:ptr->Array:i32:[Some(30_0)] [Some(i_72_5), Some(j_72_7)] 
              #                    occupy s1 with temp_62_ptr_of_*a_0_92
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with 30_0
    li      s3, 30
              #                    occupy a6 with i_72_5
    mul     s2,s3,a6
              #                    free s3
              #                    free a6
              #                    occupy a6 with i_72_5
              #                    store to i_72_5 in mem offset legal
    sw      a6,132(sp)
              #                    release a6 with i_72_5
    add     s1,s1,s2
              #                    free s2
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with j_72_7
    mv      a6, a4
              #                    free a4
              #                    occupy a4 with j_72_7
              #                    store to j_72_7 in mem offset legal
    sw      a4,112(sp)
              #                    release a4 with j_72_7
    add     s1,s1,a6
              #                    free a6
    slli s1,s1,2
              #                    occupy a4 with *a_0
              #                       load label a as ptr to reg
    la      a4, a
              #                    occupy reg a4 with *a_0
    add     s1,s1,a4
              #                    free a4
              #                    free s1
              #                     280  temp_63_ret_of_getint_92_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_62_ptr_of_*a_0_92
              #                    store to temp_62_ptr_of_*a_0_92 in mem offset legal
    sd      s1,80(sp)
              #                    release s1 with temp_62_ptr_of_*a_0_92
              #                    occupy a0 with i_72_2
              #                    store to i_72_2 in mem offset legal
    sw      a0,136(sp)
              #                    release a0 with i_72_2
              #                    occupy a1 with temp_68_value_from_ptr_70_0
              #                    store to temp_68_value_from_ptr_70_0 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with temp_68_value_from_ptr_70_0
              #                    occupy a2 with temp_72_cmp_86_0
              #                    store to temp_72_cmp_86_0 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_72_cmp_86_0
              #                    occupy a3 with temp_69_cmp_70_0
              #                    store to temp_69_cmp_70_0 in mem offset legal
    sb      a3,47(sp)
              #                    release a3 with temp_69_cmp_70_0
              #                    occupy a5 with temp_71_value_from_ptr_86_0
              #                    store to temp_71_value_from_ptr_86_0 in mem offset legal
    sw      a5,40(sp)
              #                    release a5 with temp_71_value_from_ptr_86_0
              #                    occupy a7 with temp_75_cmp_90_0
              #                    store to temp_75_cmp_90_0 in mem offset legal
    sb      a7,37(sp)
              #                    release a7 with temp_75_cmp_90_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     281  store temp_63_ret_of_getint_92_0:i32 temp_62_ptr_of_*a_0_92:ptr->i32 
              #                    occupy a1 with temp_62_ptr_of_*a_0_92
              #                    load from temp_62_ptr_of_*a_0_92 in mem
    ld      a1,80(sp)
              #                    occupy a0 with temp_63_ret_of_getint_92_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     282  a_0_13 = chi a_0_12:281 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_63_ret_of_getint_92_0, tracked: true } |     a1:Freed { symidx: temp_62_ptr_of_*a_0_92, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     347  (nop) 
              #                     349  temp_77_ele_of_*a_0_94_0 = load temp_62_ptr_of_*a_0_92:ptr->i32 
              #                    occupy a1 with temp_62_ptr_of_*a_0_92
              #                    occupy a2 with temp_77_ele_of_*a_0_94_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     350  mu a_0_13:349 
              #                     352  temp_78_cmp_94_0 = icmp i32 Eq temp_77_ele_of_*a_0_94_0, 2_0 
              #                    occupy a2 with temp_77_ele_of_*a_0_94_0
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a4 with temp_78_cmp_94_0
    xor     a4,a2,a3
    seqz    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                     355  br i1 temp_78_cmp_94_0, label branch_true_95, label branch_false_95 
              #                    occupy a4 with temp_78_cmp_94_0
              #                    free a4
              #                    occupy a4 with temp_78_cmp_94_0
    bnez    a4, .branch_true_95
              #                    free a4
    j       .branch_false_95
              #                    regtab     a0:Freed { symidx: temp_63_ret_of_getint_92_0, tracked: true } |     a1:Freed { symidx: temp_62_ptr_of_*a_0_92, tracked: true } |     a2:Freed { symidx: temp_77_ele_of_*a_0_94_0, tracked: true } |     a4:Freed { symidx: temp_78_cmp_94_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     353  label branch_true_95: 
.branch_true_95:
              #                     572  untrack temp_75_cmp_90_0 
              #                     571  untrack temp_62_ptr_of_*a_0_92 
              #                    occupy a1 with temp_62_ptr_of_*a_0_92
              #                    release a1 with temp_62_ptr_of_*a_0_92
              #                     570  untrack temp_77_ele_of_*a_0_94_0 
              #                    occupy a2 with temp_77_ele_of_*a_0_94_0
              #                    release a2 with temp_77_ele_of_*a_0_94_0
              #                     569  untrack temp_63_ret_of_getint_92_0 
              #                    occupy a0 with temp_63_ret_of_getint_92_0
              #                    release a0 with temp_63_ret_of_getint_92_0
              #                     568  untrack temp_78_cmp_94_0 
              #                    occupy a4 with temp_78_cmp_94_0
              #                    release a4 with temp_78_cmp_94_0
              #                     567  untrack temp_81_cmp_99_0 
              #                     290  store i_72_5:i32 *x_0_0:ptr->i32 
              #                    occupy a0 with *x_0_0
              #                       load label x_0 as ptr to reg
    la      a0, x_0
              #                    occupy reg a0 with *x_0_0
              #                    occupy a1 with i_72_5
              #                    load from i_72_5 in mem


    lw      a1,132(sp)
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     291  x_0_0_5 = chi x_0_0_4:290 
              #                     292  store j_72_7:i32 *y_0_0:ptr->i32 
              #                    occupy a2 with *y_0_0
              #                       load label y_0 as ptr to reg
    la      a2, y_0
              #                    occupy reg a2 with *y_0_0
              #                    occupy a3 with j_72_7
              #                    load from j_72_7 in mem


    lw      a3,112(sp)
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     293  y_0_0_5 = chi y_0_0_4:292 
              #                          jump label: gather_49 
    j       .gather_49
              #                    regtab     a1:Freed { symidx: i_72_5, tracked: true } |     a3:Freed { symidx: j_72_7, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     366  label gather_49: 
.gather_49:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a1:Freed { symidx: i_72_5, tracked: true } |     a3:Freed { symidx: j_72_7, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     284  temp_64_arithop_92_0 = Add i32 j_72_7, 1_0 
              #                    occupy a3 with j_72_7
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_64_arithop_92_0
    ADDW    a2,a3,a0
              #                    free a3
              #                    free a0
              #                    free a2
              #                     285  (nop) 
              #                     465  j_72_7 = i32 temp_64_arithop_92_0 
              #                    occupy a2 with temp_64_arithop_92_0
              #                    occupy a3 with j_72_7
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: while.head_91 
              #                    occupy a0 with i_72_2
              #                    load from i_72_2 in mem


    lw      a0,136(sp)
              #                    occupy a5 with temp_71_value_from_ptr_86_0
              #                    load from temp_71_value_from_ptr_86_0 in mem


    lw      a5,40(sp)
              #                    occupy a3 with j_72_7
              #                    store to j_72_7 in mem offset legal
    sw      a3,112(sp)
              #                    release a3 with j_72_7
              #                    occupy a4 with j_72_7
              #                    load from j_72_7 in mem


    lw      a4,112(sp)
              #                    occupy a2 with temp_64_arithop_92_0
              #                    store to temp_64_arithop_92_0 in mem offset legal
    sw      a2,72(sp)
              #                    release a2 with temp_64_arithop_92_0
              #                    occupy a2 with temp_72_cmp_86_0
              #                    load from temp_72_cmp_86_0 in mem


    lb      a2,39(sp)
              #                    occupy a1 with i_72_5
              #                    store to i_72_5 in mem offset legal
    sw      a1,132(sp)
              #                    release a1 with i_72_5
              #                    occupy a1 with temp_68_value_from_ptr_70_0
              #                    load from temp_68_value_from_ptr_70_0 in mem


    lw      a1,48(sp)
              #                    occupy a3 with temp_69_cmp_70_0
              #                    load from temp_69_cmp_70_0 in mem


    lb      a3,47(sp)
              #                    occupy a6 with i_72_5
              #                    load from i_72_5 in mem


    lw      a6,132(sp)
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_63_ret_of_getint_92_0, tracked: true } |     a1:Freed { symidx: temp_62_ptr_of_*a_0_92, tracked: true } |     a2:Freed { symidx: temp_77_ele_of_*a_0_94_0, tracked: true } |     a4:Freed { symidx: temp_78_cmp_94_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     354  label branch_false_95: 
.branch_false_95:
              #                     357  (nop) 
              #                     359  (nop) 
              #                     360  mu a_0_13:359 
              #                     362  temp_81_cmp_99_0 = icmp i32 Eq temp_77_ele_of_*a_0_94_0, 3_0 
              #                    occupy a2 with temp_77_ele_of_*a_0_94_0
              #                    occupy a3 with 3_0
    li      a3, 3
              #                    occupy a5 with temp_81_cmp_99_0
    xor     a5,a2,a3
    seqz    a5, a5
              #                    free a2
              #                    free a3
              #                    free a5
              #                     365  br i1 temp_81_cmp_99_0, label branch_true_100, label branch_false_100 
              #                    occupy a5 with temp_81_cmp_99_0
              #                    free a5
              #                    occupy a5 with temp_81_cmp_99_0
    bnez    a5, .branch_true_100
              #                    free a5
    j       .branch_false_100
              #                    regtab     a0:Freed { symidx: temp_63_ret_of_getint_92_0, tracked: true } |     a1:Freed { symidx: temp_62_ptr_of_*a_0_92, tracked: true } |     a2:Freed { symidx: temp_77_ele_of_*a_0_94_0, tracked: true } |     a4:Freed { symidx: temp_78_cmp_94_0, tracked: true } |     a5:Freed { symidx: temp_81_cmp_99_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     363  label branch_true_100: 
.branch_true_100:
              #                     578  untrack temp_62_ptr_of_*a_0_92 
              #                    occupy a1 with temp_62_ptr_of_*a_0_92
              #                    release a1 with temp_62_ptr_of_*a_0_92
              #                     577  untrack temp_77_ele_of_*a_0_94_0 
              #                    occupy a2 with temp_77_ele_of_*a_0_94_0
              #                    release a2 with temp_77_ele_of_*a_0_94_0
              #                     576  untrack temp_63_ret_of_getint_92_0 
              #                    occupy a0 with temp_63_ret_of_getint_92_0
              #                    release a0 with temp_63_ret_of_getint_92_0
              #                     575  untrack temp_81_cmp_99_0 
              #                    occupy a5 with temp_81_cmp_99_0
              #                    release a5 with temp_81_cmp_99_0
              #                     574  untrack temp_75_cmp_90_0 
              #                     573  untrack temp_78_cmp_94_0 
              #                    occupy a4 with temp_78_cmp_94_0
              #                    release a4 with temp_78_cmp_94_0
              #                     286  store i_72_5:i32 *x_1_0:ptr->i32 
              #                    occupy a0 with *x_1_0
              #                       load label x_1 as ptr to reg
    la      a0, x_1
              #                    occupy reg a0 with *x_1_0
              #                    occupy a1 with i_72_5
              #                    load from i_72_5 in mem


    lw      a1,132(sp)
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     287  x_1_0_6 = chi x_1_0_4:286 
              #                     288  store j_72_7:i32 *y_1_0:ptr->i32 
              #                    occupy a2 with *y_1_0
              #                       load label y_1 as ptr to reg
    la      a2, y_1
              #                    occupy reg a2 with *y_1_0
              #                    occupy a3 with j_72_7
              #                    load from j_72_7 in mem


    lw      a3,112(sp)
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     289  y_1_0_6 = chi y_1_0_4:288 
              #                          jump label: branch_false_100 
              #                    occupy a0 with temp_63_ret_of_getint_92_0
              #                    load from temp_63_ret_of_getint_92_0 in mem


    lw      a0,76(sp)
              #                    occupy a5 with temp_81_cmp_99_0
              #                    load from temp_81_cmp_99_0 in mem


    lb      a5,7(sp)
              #                    occupy a4 with temp_78_cmp_94_0
              #                    load from temp_78_cmp_94_0 in mem


    lb      a4,19(sp)
              #                    occupy a2 with temp_77_ele_of_*a_0_94_0
              #                    load from temp_77_ele_of_*a_0_94_0 in mem


    lw      a2,20(sp)
              #                    occupy a1 with i_72_5
              #                    store to i_72_5 in mem offset legal
    sw      a1,132(sp)
              #                    release a1 with i_72_5
              #                    occupy a1 with temp_62_ptr_of_*a_0_92
              #                    load from temp_62_ptr_of_*a_0_92 in mem
    ld      a1,80(sp)
              #                    occupy a3 with j_72_7
              #                    store to j_72_7 in mem offset legal
    sw      a3,112(sp)
              #                    release a3 with j_72_7
    j       .branch_false_100
              #                    regtab     a0:Freed { symidx: temp_63_ret_of_getint_92_0, tracked: true } |     a1:Freed { symidx: temp_62_ptr_of_*a_0_92, tracked: true } |     a2:Freed { symidx: temp_77_ele_of_*a_0_94_0, tracked: true } |     a4:Freed { symidx: temp_78_cmp_94_0, tracked: true } |     a5:Freed { symidx: temp_81_cmp_99_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     364  label branch_false_100: 
.branch_false_100:
              #                          jump label: gather_49 
              #                    occupy a0 with temp_63_ret_of_getint_92_0
              #                    store to temp_63_ret_of_getint_92_0 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_63_ret_of_getint_92_0
              #                    occupy a5 with temp_81_cmp_99_0
              #                    store to temp_81_cmp_99_0 in mem offset legal
    sb      a5,7(sp)
              #                    release a5 with temp_81_cmp_99_0
              #                    occupy a4 with temp_78_cmp_94_0
              #                    store to temp_78_cmp_94_0 in mem offset legal
    sb      a4,19(sp)
              #                    release a4 with temp_78_cmp_94_0
              #                    occupy a2 with temp_77_ele_of_*a_0_94_0
              #                    store to temp_77_ele_of_*a_0_94_0 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with temp_77_ele_of_*a_0_94_0
              #                    occupy a1 with temp_62_ptr_of_*a_0_92
              #                    store to temp_62_ptr_of_*a_0_92 in mem offset legal
    sd      a1,80(sp)
              #                    release a1 with temp_62_ptr_of_*a_0_92
              #                    occupy a1 with i_72_5
              #                    load from i_72_5 in mem


    lw      a1,132(sp)
              #                    occupy a3 with j_72_7
              #                    load from j_72_7 in mem


    lw      a3,112(sp)
    j       .gather_49
              #                    regtab     a0:Freed { symidx: i_72_2, tracked: true } |     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a2:Freed { symidx: temp_72_cmp_86_0, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |     a4:Freed { symidx: j_72_7, tracked: true } |     a5:Freed { symidx: temp_71_value_from_ptr_86_0, tracked: true } |     a6:Freed { symidx: i_72_5, tracked: true } |     a7:Freed { symidx: temp_75_cmp_90_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     344  label while.exit_91: 
.while.exit_91:
              #                     275  temp_61_arithop_88_0 = Add i32 i_72_5, 1_0 
              #                    occupy a6 with i_72_5
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_61_arithop_88_0
    ADDW    s2,a6,s1
              #                    free a6
              #                    occupy a6 with i_72_5
              #                    store to i_72_5 in mem offset legal
    sw      a6,132(sp)
              #                    release a6 with i_72_5
              #                    free s1
              #                    free s2
              #                     276  (nop) 
              #                     466  i_72_5 = i32 temp_61_arithop_88_0 
              #                    occupy s2 with temp_61_arithop_88_0
              #                    occupy a6 with i_72_5
    mv      a6, s2
              #                    free s2
              #                    occupy s2 with temp_61_arithop_88_0
              #                    store to temp_61_arithop_88_0 in mem offset legal
    sw      s2,88(sp)
              #                    release s2 with temp_61_arithop_88_0
              #                    free a6
              #                          jump label: while.head_87 
              #                    occupy a7 with temp_75_cmp_90_0
              #                    store to temp_75_cmp_90_0 in mem offset legal
    sb      a7,37(sp)
              #                    release a7 with temp_75_cmp_90_0
              #                    occupy a4 with j_72_7
              #                    store to j_72_7 in mem offset legal
    sw      a4,112(sp)
              #                    release a4 with j_72_7
              #                    occupy a4 with temp_70_cmp_75_0
              #                    load from temp_70_cmp_75_0 in mem


    lb      a4,46(sp)
              #                    occupy a2 with temp_72_cmp_86_0
              #                    store to temp_72_cmp_86_0 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_72_cmp_86_0
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: i_72_2, tracked: true } |     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a2:Freed { symidx: temp_72_cmp_86_0, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |     a4:Freed { symidx: temp_70_cmp_75_0, tracked: true } |     a5:Freed { symidx: temp_71_value_from_ptr_86_0, tracked: true } |     a6:Freed { symidx: i_72_5, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     329  label while.exit_87: 
.while.exit_87:
              #                     252  temp_56_value_from_ptr_72_0 = load *x_0_0:ptr->i32 
              #                    occupy a7 with *x_0_0
              #                       load label x_0 as ptr to reg
    la      a7, x_0
              #                    occupy reg a7 with *x_0_0
              #                    occupy s1 with temp_56_value_from_ptr_72_0
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                     253  mu x_0_0_3:252 
              #                     255  temp_57_value_from_ptr_72_0 = load *y_0_0:ptr->i32 
              #                    occupy s2 with *y_0_0
              #                       load label y_0 as ptr to reg
    la      s2, y_0
              #                    occupy reg s2 with *y_0_0
              #                    occupy s3 with temp_57_value_from_ptr_72_0
    lw      s3,0(s2)
              #                    free s3
              #                    occupy s3 with temp_57_value_from_ptr_72_0
              #                    store to temp_57_value_from_ptr_72_0 in mem offset legal
    sw      s3,104(sp)
              #                    release s3 with temp_57_value_from_ptr_72_0
              #                    free s2
              #                     256  mu y_0_0_3:255 
              #                     258  temp_58_ret_of_search_72_0 =  Call i32 search_0(temp_56_value_from_ptr_72_0, temp_57_value_from_ptr_72_0, 1_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_56_value_from_ptr_72_0
              #                    store to temp_56_value_from_ptr_72_0 in mem offset legal
    sw      s1,108(sp)
              #                    release s1 with temp_56_value_from_ptr_72_0
              #                    occupy a0 with i_72_2
              #                    store to i_72_2 in mem offset legal
    sw      a0,136(sp)
              #                    release a0 with i_72_2
              #                    occupy a1 with temp_68_value_from_ptr_70_0
              #                    store to temp_68_value_from_ptr_70_0 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with temp_68_value_from_ptr_70_0
              #                    occupy a2 with temp_72_cmp_86_0
              #                    store to temp_72_cmp_86_0 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_72_cmp_86_0
              #                    occupy a3 with temp_69_cmp_70_0
              #                    store to temp_69_cmp_70_0 in mem offset legal
    sb      a3,47(sp)
              #                    release a3 with temp_69_cmp_70_0
              #                    occupy a4 with temp_70_cmp_75_0
              #                    store to temp_70_cmp_75_0 in mem offset legal
    sb      a4,46(sp)
              #                    release a4 with temp_70_cmp_75_0
              #                    occupy a5 with temp_71_value_from_ptr_86_0
              #                    store to temp_71_value_from_ptr_86_0 in mem offset legal
    sw      a5,40(sp)
              #                    release a5 with temp_71_value_from_ptr_86_0
              #                    occupy a6 with i_72_5
              #                    store to i_72_5 in mem offset legal
    sw      a6,132(sp)
              #                    release a6 with i_72_5
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_56_value_from_ptr_72_0_0
              #                    load from temp_56_value_from_ptr_72_0 in mem


    lw      a0,108(sp)
              #                    occupy a1 with _anonymous_of_temp_57_value_from_ptr_72_0_0
              #                    load from temp_57_value_from_ptr_72_0 in mem


    lw      a1,104(sp)
              #                    occupy a2 with _anonymous_of_1_0_0
    li      a2, 1
              #                    arg load ended


    call    search
              #                     392  mu step_0_0:258 
              #                     393  mu x_1_0_3:258 
              #                     394  mu w_0_3:258 
              #                     395  mu a_0_11:258 
              #                     396  mu h_0_3:258 
              #                     397  mu y_1_0_3:258 
              #                     398  a_0_14 = chi a_0_11:258 
              #                     259  (nop) 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_58_ret_of_search_72_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     332  temp_73_cmp_107_0 = icmp i32 Sle temp_58_ret_of_search_72_0, 10_0 
              #                    occupy a0 with temp_58_ret_of_search_72_0
              #                    occupy a1 with 10_0
    li      a1, 10
              #                    occupy a2 with temp_73_cmp_107_0
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     335  br i1 temp_73_cmp_107_0, label branch_true_108, label branch_false_108 
              #                    occupy a2 with temp_73_cmp_107_0
              #                    free a2
              #                    occupy a2 with temp_73_cmp_107_0
    bnez    a2, .branch_true_108
              #                    free a2
    j       .branch_false_108
              #                    regtab     a0:Freed { symidx: temp_58_ret_of_search_72_0, tracked: true } |     a2:Freed { symidx: temp_73_cmp_107_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     333  label branch_true_108: 
.branch_true_108:
              #                     586  untrack temp_71_value_from_ptr_86_0 
              #                     585  untrack temp_68_value_from_ptr_70_0 
              #                     584  untrack temp_69_cmp_70_0 
              #                     583  untrack temp_56_value_from_ptr_72_0 
              #                     582  untrack temp_73_cmp_107_0 
              #                    occupy a2 with temp_73_cmp_107_0
              #                    release a2 with temp_73_cmp_107_0
              #                     581  untrack temp_57_value_from_ptr_72_0 
              #                     580  untrack i_72_2 
              #                     579  untrack i_72_5 
              #                     271   Call void putint_0(temp_58_ret_of_search_72_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_58_ret_of_search_72_0
              #                    store to temp_58_ret_of_search_72_0 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_58_ret_of_search_72_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_58_ret_of_search_72_0_0
              #                    load from temp_58_ret_of_search_72_0 in mem


    lw      a0,100(sp)
              #                    arg load ended


    call    putint
              #                     587  untrack temp_58_ret_of_search_72_0 
              #                     272   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: gather_58 
    j       .gather_58
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                     336  label gather_58: 
.gather_58:
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     264  temp_59_ret_of_getint_72_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     265  store temp_59_ret_of_getint_72_0:i32 *w_0:ptr->i32 
              #                    occupy a1 with *w_0
              #                       load label w as ptr to reg
    la      a1, w
              #                    occupy reg a1 with *w_0
              #                    occupy a0 with temp_59_ret_of_getint_72_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     266  w_0_4 = chi w_0_3:265 
              #                     268  temp_60_ret_of_getint_72_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_59_ret_of_getint_72_0
              #                    store to temp_59_ret_of_getint_72_0 in mem offset legal
    sw      a0,96(sp)
              #                    release a0 with temp_59_ret_of_getint_72_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     269  store temp_60_ret_of_getint_72_0:i32 *h_0:ptr->i32 
              #                    occupy a1 with *h_0
              #                       load label h as ptr to reg
    la      a1, h
              #                    occupy reg a1 with *h_0
              #                    occupy a0 with temp_60_ret_of_getint_72_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     270  h_0_4 = chi h_0_3:269 
              #                          jump label: while.head_71 
              #                    occupy a0 with temp_60_ret_of_getint_72_0
              #                    store to temp_60_ret_of_getint_72_0 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_60_ret_of_getint_72_0
    j       .while.head_71
              #                    regtab     a0:Freed { symidx: temp_58_ret_of_search_72_0, tracked: true } |     a2:Freed { symidx: temp_73_cmp_107_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     334  label branch_false_108: 
.branch_false_108:
              #                     261   Call void putint_0(-1_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_58_ret_of_search_72_0
              #                    store to temp_58_ret_of_search_72_0 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_58_ret_of_search_72_0
              #                    occupy a2 with temp_73_cmp_107_0
              #                    store to temp_73_cmp_107_0 in mem offset legal
    sb      a2,38(sp)
              #                    release a2 with temp_73_cmp_107_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_-1_0_0
    li      a0, -1
              #                    arg load ended


    call    putint
              #                     262   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: gather_58 
    j       .gather_58
              #                    regtab     a1:Freed { symidx: temp_68_value_from_ptr_70_0, tracked: true } |     a3:Freed { symidx: temp_69_cmp_70_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     312  label while.exit_71: 
.while.exit_71:
              #                     399  mu y_0_0_2:244 
              #                     400  mu w_0_3:244 
              #                     401  mu x_0_0_2:244 
              #                     402  mu h_0_3:244 
              #                     403  mu x_1_0_2:244 
              #                     404  mu y_1_0_2:244 
              #                     405  mu a_0_7:244 
              #                     244  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,160(sp)
              #                    load from s0_main_0 in mem
    ld      s0,152(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,168
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl y_1
              #                     53   global i32 y_1_0 
    .type y_1,@object
y_1:
    .word 0
    .align 4
    .globl x_1
              #                     52   global i32 x_1_0 
    .type x_1,@object
x_1:
    .word 0
    .align 4
    .globl y_0
              #                     51   global i32 y_0_0 
    .type y_0,@object
y_0:
    .word 0
    .align 4
    .globl x_0
              #                     50   global i32 x_0_0 
    .type x_0,@object
x_0:
    .word 0
    .align 4
    .globl h
              #                     49   global i32 h_0 
    .type h,@object
h:
    .word 0
    .align 4
    .globl w
              #                     48   global i32 w_0 
    .type w,@object
w:
    .word 0
    .align 4
    .globl step
              #                     47   global Array:i32:[Some(4_0), Some(2_0)] step_0 
    .type step,@object
step:
    .word 1
    .word 0
    .word -1
    .word 0
    .word 0
    .word 1
    .word 0
    .word -1
    .zero 4
    .align 4
    .globl a
              #                     19   global Array:i32:[Some(30_0), Some(30_0)] a_0 
    .type a,@object
a:
    .zero 3600
    .align 4
    .globl INF
              #                     17   global i32 INF_0 
    .type INF,@object
INF:
    .word 1073741824
