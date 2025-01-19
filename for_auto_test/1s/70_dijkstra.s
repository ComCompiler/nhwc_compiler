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
              #                     30   Define Dijkstra_0 "" -> Dijkstra_ret_0 
    .globl Dijkstra
    .type Dijkstra,@function
Dijkstra:
              #                    mem layout:|ra_Dijkstra:8 at 272|s0_Dijkstra:8 at 264|i _s23 _i0:4 at 260|i _s23 _i2:4 at 256|i _s23 _i5:4 at 252|j _s23 _i0:4 at 248|temp_0_ptr_of_*book_0:8 at 240|min_num _s36 _i1:4 at 236|min_num _s36 _i2:4 at 232|min_index _s36 _i1:4 at 228|min_index _s36 _i2:4 at 224|min_index _s36 _i3:4 at 220|k _s36 _i1:4 at 216|temp_1_ptr_of_*book_0:8 at 208|j _s36 _i1:4 at 204|temp_2_arithop _s36 _i0:4 at 200|temp_3_arithop _s53 _i0:4 at 196|none:4 at 192|temp_4_ptr_of_*dis_0:8 at 184|temp_5_ptr_of_*dis_0:8 at 176|temp_7_ptr_of_*e_0:8 at 168|temp_10_arithop _s42 _i0:4 at 164|none:4 at 160|temp_11_ptr_of_*dis_0:8 at 152|temp_13_ptr_of_*dis_0:8 at 144|temp_14_ptr_of_*e_0:8 at 136|temp_15_ele_of_*e_0 _s28 _i0:4 at 132|none:4 at 128|temp_16_ptr_of_*book_0:8 at 120|temp_17_arithop _s28 _i0:4 at 116|temp_18_value_from_ptr _s26 _i0:4 at 112|temp_19_cmp _s26 _i0:1 at 111|none:3 at 108|temp_21_arithop _s34 _i0:4 at 104|temp_22_cmp _s34 _i0:1 at 103|temp_24_cmp _s40 _i0:1 at 102|temp_26_cmp _s51 _i0:1 at 101|none:5 at 96|temp_27_ptr_of_*e_0:8 at 88|temp_28_ele_of_*e_0 _s54 _i0:4 at 84|temp_29_cmp _s54 _i0:1 at 83|none:3 at 80|temp_30_ptr_of_*dis_0:8 at 72|temp_31_ele_of_*dis_0 _s57 _i0:4 at 68|none:4 at 64|temp_32_ptr_of_*e_0:8 at 56|temp_34_arithop _s57 _i0:4 at 52|none:4 at 48|temp_35_ptr_of_*dis_0:8 at 40|temp_36_ele_of_*dis_0 _s57 _i0:4 at 36|temp_37_cmp _s57 _i0:1 at 35|none:3 at 32|temp_38_ptr_of_*dis_0:8 at 24|temp_39_ele_of_*dis_0 _s43 _i0:4 at 20|temp_40_cmp _s43 _i0:1 at 19|none:3 at 16|temp_41_ptr_of_*book_0:8 at 8|temp_42_ele_of_*book_0 _s43 _i0:4 at 4|temp_43_cmp _s43 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-280
              #                    store to ra_Dijkstra_0 in mem offset legal
    sd      ra,272(sp)
              #                    store to s0_Dijkstra_0 in mem offset legal
    sd      s0,264(sp)
    addi    s0,sp,280
              #                     297  book_0_1 = chi book_0_0:30 
              #                     298  dis_0_1 = chi dis_0_0:30 
              #                     32   alloc i32 [i_23] 
              #                     34   alloc i32 [j_23] 
              #                     37   alloc ptr->i32 [temp_0_ptr_of_*book_0_23] 
              #                     43   alloc i32 [min_num_36] 
              #                     45   alloc i32 [min_index_36] 
              #                     47   alloc i32 [k_36] 
              #                     48   alloc ptr->i32 [temp_1_ptr_of_*book_0_36] 
              #                     53   alloc i32 [j_36] 
              #                     54   alloc i32 [temp_2_arithop_36] 
              #                     57   alloc i32 [temp_3_arithop_53] 
              #                     60   alloc ptr->i32 [temp_4_ptr_of_*dis_0_59] 
              #                     62   alloc ptr->i32 [temp_5_ptr_of_*dis_0_59] 
              #                     64   alloc i32 [temp_6_ele_of_*dis_0_59] 
              #                     67   alloc ptr->i32 [temp_7_ptr_of_*e_0_59] 
              #                     69   alloc i32 [temp_8_ele_of_*e_0_59] 
              #                     72   alloc i32 [temp_9_arithop_59] 
              #                     76   alloc i32 [temp_10_arithop_42] 
              #                     79   alloc ptr->i32 [temp_11_ptr_of_*dis_0_45] 
              #                     81   alloc i32 [temp_12_ele_of_*dis_0_45] 
              #                     86   alloc ptr->i32 [temp_13_ptr_of_*dis_0_28] 
              #                     88   alloc ptr->i32 [temp_14_ptr_of_*e_0_28] 
              #                     90   alloc i32 [temp_15_ele_of_*e_0_28] 
              #                     95   alloc ptr->i32 [temp_16_ptr_of_*book_0_28] 
              #                     99   alloc i32 [temp_17_arithop_28] 
              #                     102  alloc i32 [temp_18_value_from_ptr_26] 
              #                     105  alloc i1 [temp_19_cmp_26] 
              #                     111  alloc i32 [temp_20_value_from_ptr_34] 
              #                     114  alloc i32 [temp_21_arithop_34] 
              #                     116  alloc i1 [temp_22_cmp_34] 
              #                     123  alloc i32 [temp_23_value_from_ptr_40] 
              #                     126  alloc i1 [temp_24_cmp_40] 
              #                     132  alloc i32 [temp_25_value_from_ptr_51] 
              #                     135  alloc i1 [temp_26_cmp_51] 
              #                     141  alloc ptr->i32 [temp_27_ptr_of_*e_0_54] 
              #                     143  alloc i32 [temp_28_ele_of_*e_0_54] 
              #                     146  alloc i1 [temp_29_cmp_54] 
              #                     151  alloc ptr->i32 [temp_30_ptr_of_*dis_0_57] 
              #                     153  alloc i32 [temp_31_ele_of_*dis_0_57] 
              #                     156  alloc ptr->i32 [temp_32_ptr_of_*e_0_57] 
              #                     158  alloc i32 [temp_33_ele_of_*e_0_57] 
              #                     161  alloc i32 [temp_34_arithop_57] 
              #                     163  alloc ptr->i32 [temp_35_ptr_of_*dis_0_57] 
              #                     165  alloc i32 [temp_36_ele_of_*dis_0_57] 
              #                     168  alloc i1 [temp_37_cmp_57] 
              #                     173  alloc ptr->i32 [temp_38_ptr_of_*dis_0_43] 
              #                     175  alloc i32 [temp_39_ele_of_*dis_0_43] 
              #                     178  alloc i1 [temp_40_cmp_43] 
              #                     180  alloc ptr->i32 [temp_41_ptr_of_*book_0_43] 
              #                     182  alloc i32 [temp_42_ele_of_*book_0_43] 
              #                     185  alloc i1 [temp_43_cmp_43] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     33    
              #                     35    
              #                     36   (nop) 
              #                     103  temp_18_value_from_ptr_26_0 = load *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with temp_18_value_from_ptr_26_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     104  mu n_0_0:103 
              #                     342  i_23_2 = i32 1_0 
              #                    occupy a2 with i_23_2
    li      a2, 1
              #                    free a2
              #                          jump label: while.head_27 
    j       .while.head_27
              #                    regtab     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: i_23_2, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     107  label while.head_27: 
.while.head_27:
              #                     106  temp_19_cmp_26_0 = icmp i32 Sle i_23_2, temp_18_value_from_ptr_26_0 
              #                    occupy a2 with i_23_2
              #                    occupy a1 with temp_18_value_from_ptr_26_0
              #                    occupy a0 with temp_19_cmp_26_0
    slt     a0,a1,a2
    xori    a0,a0,1
              #                    free a2
              #                    free a1
              #                    free a0
              #                     110  br i1 temp_19_cmp_26_0, label while.body_27, label while.exit_27 
              #                    occupy a0 with temp_19_cmp_26_0
              #                    free a0
              #                    occupy a0 with temp_19_cmp_26_0
    bnez    a0, .while.body_27
              #                    free a0
    j       .while.exit_27
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: i_23_2, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     108  label while.body_27: 
.while.body_27:
              #                     87   temp_13_ptr_of_*dis_0_28 = GEP *dis_0:ptr->i32 [Some(i_23_2)] 
              #                    occupy a3 with temp_13_ptr_of_*dis_0_28
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_23_2
    mv      a4, a2
              #                    free a2
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *dis_0
              #                       load label dis as ptr to reg
    la      a5, dis
              #                    occupy reg a5 with *dis_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     89   temp_14_ptr_of_*e_0_28 = GEP *e_0:Array:i32:[None, Some(16_0)] [Some(1_0), Some(i_23_2)] 
              #                    occupy a6 with temp_14_ptr_of_*e_0_28
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 16
    add     a6,a6,a7
              #                    free a7
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_23_2
    mv      s1, a2
              #                    free a2
    add     a6,a6,s1
              #                    free s1
    slli a6,a6,2
              #                    occupy s2 with *e_0
              #                       load label e as ptr to reg
    la      s2, e
              #                    occupy reg s2 with *e_0
    add     a6,a6,s2
              #                    free s2
              #                    free a6
              #                     91   temp_15_ele_of_*e_0_28_0 = load temp_14_ptr_of_*e_0_28:ptr->i32 
              #                    occupy a6 with temp_14_ptr_of_*e_0_28
              #                    occupy s3 with temp_15_ele_of_*e_0_28_0
    lw      s3,0(a6)
              #                    free s3
              #                    free a6
              #                     92   mu e_0_0:91 
              #                     93   store temp_15_ele_of_*e_0_28_0:i32 temp_13_ptr_of_*dis_0_28:ptr->i32 
              #                    occupy a3 with temp_13_ptr_of_*dis_0_28
              #                    occupy s3 with temp_15_ele_of_*e_0_28_0
    sw      s3,0(a3)
              #                    free s3
              #                    free a3
              #                     94   dis_0_3 = chi dis_0_2:93 
              #                     96   temp_16_ptr_of_*book_0_28 = GEP *book_0:ptr->i32 [Some(i_23_2)] 
              #                    occupy s4 with temp_16_ptr_of_*book_0_28
    li      s4, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_23_2
    mv      s5, a2
              #                    free a2
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy s6 with *book_0
              #                       load label book as ptr to reg
    la      s6, book
              #                    occupy reg s6 with *book_0
    add     s4,s4,s6
              #                    free s6
              #                    free s4
              #                     97   store 0_0:i32 temp_16_ptr_of_*book_0_28:ptr->i32 
              #                    occupy s4 with temp_16_ptr_of_*book_0_28
              #                    occupy s6 with 0_0
    li      s6, 0
    sw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                     98   book_0_3 = chi book_0_2:97 
              #                     100  temp_17_arithop_28_0 = Add i32 i_23_2, 1_0 
              #                    occupy a2 with i_23_2
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with temp_17_arithop_28_0
    ADDW    s7,a2,s6
              #                    free a2
              #                    occupy a2 with i_23_2
              #                    store to i_23_2 in mem offset legal
    sw      a2,256(sp)
              #                    release a2 with i_23_2
              #                    free s6
              #                    free s7
              #                     101  (nop) 
              #                     343  i_23_2 = i32 temp_17_arithop_28_0 
              #                    occupy s7 with temp_17_arithop_28_0
              #                    occupy a2 with i_23_2
    mv      a2, s7
              #                    free s7
              #                    occupy s7 with temp_17_arithop_28_0
              #                    store to temp_17_arithop_28_0 in mem offset legal
    sw      s7,116(sp)
              #                    release s7 with temp_17_arithop_28_0
              #                    free a2
              #                          jump label: while.head_27 
              #                    occupy s4 with temp_16_ptr_of_*book_0_28
              #                    store to temp_16_ptr_of_*book_0_28 in mem offset legal
    sd      s4,120(sp)
              #                    release s4 with temp_16_ptr_of_*book_0_28
              #                    occupy s3 with temp_15_ele_of_*e_0_28_0
              #                    store to temp_15_ele_of_*e_0_28_0 in mem offset legal
    sw      s3,132(sp)
              #                    release s3 with temp_15_ele_of_*e_0_28_0
              #                    occupy a3 with temp_13_ptr_of_*dis_0_28
              #                    store to temp_13_ptr_of_*dis_0_28 in mem offset legal
    sd      a3,144(sp)
              #                    release a3 with temp_13_ptr_of_*dis_0_28
              #                    occupy a6 with temp_14_ptr_of_*e_0_28
              #                    store to temp_14_ptr_of_*e_0_28 in mem offset legal
    sd      a6,136(sp)
              #                    release a6 with temp_14_ptr_of_*e_0_28
              #                    occupy a0 with temp_19_cmp_26_0
              #                    store to temp_19_cmp_26_0 in mem offset legal
    sb      a0,111(sp)
              #                    release a0 with temp_19_cmp_26_0
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: i_23_2, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     109  label while.exit_27: 
.while.exit_27:
              #                     368  untrack i_23_2 
              #                    occupy a2 with i_23_2
              #                    release a2 with i_23_2
              #                     38   temp_0_ptr_of_*book_0_23 = GEP *book_0:ptr->i32 [Some(1_0)] 
              #                    occupy a2 with temp_0_ptr_of_*book_0_23
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *book_0
              #                       load label book as ptr to reg
    la      a4, book
              #                    occupy reg a4 with *book_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     39   store 1_0:i32 temp_0_ptr_of_*book_0_23:ptr->i32 
              #                    occupy a2 with temp_0_ptr_of_*book_0_23
              #                    occupy a5 with 1_0
    li      a5, 1
    sw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     369  untrack temp_0_ptr_of_*book_0_23 
              #                    occupy a2 with temp_0_ptr_of_*book_0_23
              #                    release a2 with temp_0_ptr_of_*book_0_23
              #                     40   book_0_4 = chi book_0_2:39 
              #                     41   (nop) 
              #                     112  (nop) 
              #                     113  mu n_0_0:112 
              #                     124  (nop) 
              #                     125  mu n_0_0:124 
              #                     133  (nop) 
              #                     134  mu n_0_0:133 
              #                     115  temp_21_arithop_34_0 = Sub i32 temp_18_value_from_ptr_26_0, 1_0 
              #                    occupy a1 with temp_18_value_from_ptr_26_0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a2 with temp_21_arithop_34_0
              #                    regtab:    a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Occupied { symidx: temp_18_value_from_ptr_26_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_21_arithop_34_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a4:Freed { symidx: *book_0, tracked: false } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    subw    a2,a1,a5
              #                    free a1
              #                    free a5
              #                    free a2
              #                     344  i_23_5 = i32 1_0 
              #                    occupy a6 with i_23_5
    li      a6, 1
              #                    free a6
              #                          jump label: while.head_35 
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     118  label while.head_35: 
.while.head_35:
              #                     117  temp_22_cmp_34_0 = icmp i32 Sle i_23_5, temp_21_arithop_34_0 
              #                    occupy a6 with i_23_5
              #                    occupy a2 with temp_21_arithop_34_0
              #                    occupy a3 with temp_22_cmp_34_0
    slt     a3,a2,a6
    xori    a3,a3,1
              #                    free a6
              #                    free a2
              #                    free a3
              #                     121  br i1 temp_22_cmp_34_0, label while.body_35, label while.exit_35 
              #                    occupy a3 with temp_22_cmp_34_0
              #                    free a3
              #                    occupy a3 with temp_22_cmp_34_0
    bnez    a3, .while.body_35
              #                    free a3
    j       .while.exit_35
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     119  label while.body_35: 
.while.body_35:
              #                     42   (nop) 
              #                     44   (nop) 
              #                     46   (nop) 
              #                     345  min_index_36_1 = i32 0_0 
              #                    occupy a4 with min_index_36_1
    li      a4, 0
              #                    free a4
              #                     346  k_36_1 = i32 1_0 
              #                    occupy a5 with k_36_1
    li      a5, 1
              #                    free a5
              #                     347  min_num_36_1 = i32 65535_0 
              #                    occupy a7 with min_num_36_1
    li      a7, 65535
              #                    free a7
              #                          jump label: while.head_41 
    j       .while.head_41
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a4:Freed { symidx: min_index_36_1, tracked: true } |     a5:Freed { symidx: k_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_num_36_1, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     128  label while.head_41: 
.while.head_41:
              #                     127  temp_24_cmp_40_0 = icmp i32 Sle k_36_1, temp_18_value_from_ptr_26_0 
              #                    occupy a5 with k_36_1
              #                    occupy a1 with temp_18_value_from_ptr_26_0
              #                    occupy s1 with temp_24_cmp_40_0
    slt     s1,a1,a5
    xori    s1,s1,1
              #                    free a5
              #                    free a1
              #                    free s1
              #                     131  br i1 temp_24_cmp_40_0, label while.body_41, label while.exit_41 
              #                    occupy s1 with temp_24_cmp_40_0
              #                    free s1
              #                    occupy s1 with temp_24_cmp_40_0
    bnez    s1, .while.body_41
              #                    free s1
    j       .while.exit_41
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a4:Freed { symidx: min_index_36_1, tracked: true } |     a5:Freed { symidx: k_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_num_36_1, tracked: true } |     s1:Freed { symidx: temp_24_cmp_40_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     129  label while.body_41: 
.while.body_41:
              #                     174  temp_38_ptr_of_*dis_0_43 = GEP *dis_0:Array:i32:[None] [Some(k_36_1)] 
              #                    occupy s2 with temp_38_ptr_of_*dis_0_43
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with k_36_1
    mv      s3, a5
              #                    free a5
              #                    occupy a5 with k_36_1
              #                    store to k_36_1 in mem offset legal
    sw      a5,216(sp)
              #                    release a5 with k_36_1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy a5 with *dis_0
              #                       load label dis as ptr to reg
    la      a5, dis
              #                    occupy reg a5 with *dis_0
    add     s2,s2,a5
              #                    free a5
              #                    free s2
              #                     176  temp_39_ele_of_*dis_0_43_0 = load temp_38_ptr_of_*dis_0_43:ptr->i32 
              #                    occupy s2 with temp_38_ptr_of_*dis_0_43
              #                    occupy a5 with temp_39_ele_of_*dis_0_43_0
    lw      a5,0(s2)
              #                    free a5
              #                    occupy a5 with temp_39_ele_of_*dis_0_43_0
              #                    store to temp_39_ele_of_*dis_0_43_0 in mem offset legal
    sw      a5,20(sp)
              #                    release a5 with temp_39_ele_of_*dis_0_43_0
              #                    free s2
              #                     177  mu dis_0_4:176 
              #                     179  temp_40_cmp_43_0 = icmp i32 Sgt min_num_36_1, temp_39_ele_of_*dis_0_43_0 
              #                    occupy a7 with min_num_36_1
              #                    occupy a5 with temp_39_ele_of_*dis_0_43_0
              #                    load from temp_39_ele_of_*dis_0_43_0 in mem


    lw      a5,20(sp)
              #                    occupy s4 with temp_40_cmp_43_0
    slt     s4,a5,a7
              #                    free a7
              #                    occupy a7 with min_num_36_1
              #                    store to min_num_36_1 in mem offset legal
    sw      a7,236(sp)
              #                    release a7 with min_num_36_1
              #                    free a5
              #                    occupy a5 with temp_39_ele_of_*dis_0_43_0
              #                    store to temp_39_ele_of_*dis_0_43_0 in mem offset legal
    sw      a5,20(sp)
              #                    release a5 with temp_39_ele_of_*dis_0_43_0
              #                    free s4
              #                     192  br i1 temp_40_cmp_43_0, label branch_short_circuit_p_true_288, label UP_24_0 
              #                    occupy s4 with temp_40_cmp_43_0
              #                    free s4
              #                    occupy s4 with temp_40_cmp_43_0
    bnez    s4, .branch_short_circuit_p_true_288
              #                    free s4
    j       .UP_24_0
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a4:Freed { symidx: min_index_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     s1:Freed { symidx: temp_24_cmp_40_0, tracked: true } |     s2:Freed { symidx: temp_38_ptr_of_*dis_0_43, tracked: true } |     s4:Freed { symidx: temp_40_cmp_43_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     189  label branch_short_circuit_p_true_288: 
.branch_short_circuit_p_true_288:
              #                     385  untrack temp_28_ele_of_*e_0_54_0 
              #                     384  untrack temp_27_ptr_of_*e_0_54 
              #                     383  untrack temp_26_cmp_51_0 
              #                     382  untrack temp_37_cmp_57_0 
              #                     381  untrack temp_31_ele_of_*dis_0_57_0 
              #                     380  untrack temp_24_cmp_40_0 
              #                    occupy s1 with temp_24_cmp_40_0
              #                    release s1 with temp_24_cmp_40_0
              #                     379  untrack temp_29_cmp_54_0 
              #                     378  untrack temp_36_ele_of_*dis_0_57_0 
              #                     377  untrack temp_38_ptr_of_*dis_0_43 
              #                    occupy s2 with temp_38_ptr_of_*dis_0_43
              #                    release s2 with temp_38_ptr_of_*dis_0_43
              #                     376  untrack temp_35_ptr_of_*dis_0_57 
              #                     375  untrack temp_34_arithop_57_0 
              #                     374  untrack temp_3_arithop_53_0 
              #                     373  untrack temp_40_cmp_43_0 
              #                    occupy s4 with temp_40_cmp_43_0
              #                    release s4 with temp_40_cmp_43_0
              #                     181  temp_41_ptr_of_*book_0_43 = GEP *book_0:Array:i32:[None] [Some(k_36_1)] 
              #                    occupy a5 with temp_41_ptr_of_*book_0_43
    li      a5, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with k_36_1
              #                    load from k_36_1 in mem


    lw      s1,216(sp)
    mv      a7, s1
              #                    free s1
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s2 with *book_0
              #                       load label book as ptr to reg
    la      s2, book
              #                    occupy reg s2 with *book_0
    add     a5,a5,s2
              #                    free s2
              #                    free a5
              #                     183  temp_42_ele_of_*book_0_43_0 = load temp_41_ptr_of_*book_0_43:ptr->i32 
              #                    occupy a5 with temp_41_ptr_of_*book_0_43
              #                    occupy s2 with temp_42_ele_of_*book_0_43_0
    lw      s2,0(a5)
              #                    free s2
              #                    occupy s2 with temp_42_ele_of_*book_0_43_0
              #                    store to temp_42_ele_of_*book_0_43_0 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_42_ele_of_*book_0_43_0
              #                    free a5
              #                     386  untrack temp_41_ptr_of_*book_0_43 
              #                    occupy a5 with temp_41_ptr_of_*book_0_43
              #                    release a5 with temp_41_ptr_of_*book_0_43
              #                     184  mu book_0_5:183 
              #                     186  temp_43_cmp_43_0 = icmp i32 Eq temp_42_ele_of_*book_0_43_0, 0_0 
              #                    occupy a5 with temp_42_ele_of_*book_0_43_0
              #                    load from temp_42_ele_of_*book_0_43_0 in mem


    lw      a5,4(sp)
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s3 with temp_43_cmp_43_0
    xor     s3,a5,s2
    seqz    s3, s3
              #                    free a5
              #                    occupy a5 with temp_42_ele_of_*book_0_43_0
              #                    store to temp_42_ele_of_*book_0_43_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_42_ele_of_*book_0_43_0
              #                    free s2
              #                    free s3
              #                     387  untrack temp_42_ele_of_*book_0_43_0 
              #                     191  br i1 temp_43_cmp_43_0, label branch_short_circuit_c_true_288, label UP_43_0 
              #                    occupy s3 with temp_43_cmp_43_0
              #                    free s3
              #                    occupy s3 with temp_43_cmp_43_0
    bnez    s3, .branch_short_circuit_c_true_288
              #                    free s3
    j       .UP_43_0
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a4:Freed { symidx: min_index_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     s1:Freed { symidx: k_36_1, tracked: true } |     s3:Freed { symidx: temp_43_cmp_43_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     187  label branch_short_circuit_c_true_288: 
.branch_short_circuit_c_true_288:
              #                     388  untrack temp_43_cmp_43_0 
              #                    occupy s3 with temp_43_cmp_43_0
              #                    release s3 with temp_43_cmp_43_0
              #                     80   (nop) 
              #                     82   (nop) 
              #                     83   mu dis_0_4:82 
              #                     84   (nop) 
              #                     85   min_index_36_3 = i32 k_36_1 
              #                    occupy s1 with k_36_1
              #                    occupy a5 with min_index_36_3
    mv      a5, s1
              #                    free s1
              #                    free a5
              #                     348  min_num_36_2 = i32 temp_39_ele_of_*dis_0_43_0 
              #                    occupy a7 with temp_39_ele_of_*dis_0_43_0
              #                    load from temp_39_ele_of_*dis_0_43_0 in mem


    lw      a7,20(sp)
              #                    occupy s2 with min_num_36_2
    mv      s2, a7
              #                    free a7
              #                    occupy a7 with temp_39_ele_of_*dis_0_43_0
              #                    store to temp_39_ele_of_*dis_0_43_0 in mem offset legal
    sw      a7,20(sp)
              #                    release a7 with temp_39_ele_of_*dis_0_43_0
              #                    free s2
              #                    occupy s2 with min_num_36_2
              #                    store to min_num_36_2 in mem offset legal
    sw      s2,232(sp)
              #                    release s2 with min_num_36_2
              #                     392  untrack temp_39_ele_of_*dis_0_43_0 
              #                     349  min_index_36_2 = i32 min_index_36_3 
              #                    occupy a5 with min_index_36_3
              #                    occupy a7 with min_index_36_2
    mv      a7, a5
              #                    free a5
              #                    occupy a5 with min_index_36_3
              #                    store to min_index_36_3 in mem offset legal
    sw      a5,220(sp)
              #                    release a5 with min_index_36_3
              #                    free a7
              #                     393  untrack min_index_36_3 
              #                          jump label: branch_short_circuit_c_false_288 
    j       .branch_short_circuit_c_false_288
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a4:Freed { symidx: min_index_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_index_36_2, tracked: true } |     s1:Freed { symidx: k_36_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     188  label branch_short_circuit_c_false_288: 
.branch_short_circuit_c_false_288:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a4:Freed { symidx: min_index_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_index_36_2, tracked: true } |     s1:Freed { symidx: k_36_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     77   temp_10_arithop_42_0 = Add i32 k_36_1, 1_0 
              #                    occupy s1 with k_36_1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s2 with temp_10_arithop_42_0
    ADDW    s2,s1,a5
              #                    free s1
              #                    occupy s1 with k_36_1
              #                    store to k_36_1 in mem offset legal
    sw      s1,216(sp)
              #                    release s1 with k_36_1
              #                    free a5
              #                    free s2
              #                     78   (nop) 
              #                     350  k_36_1 = i32 temp_10_arithop_42_0 
              #                    occupy s2 with temp_10_arithop_42_0
              #                    occupy a5 with k_36_1
    mv      a5, s2
              #                    free s2
              #                    occupy s2 with temp_10_arithop_42_0
              #                    store to temp_10_arithop_42_0 in mem offset legal
    sw      s2,164(sp)
              #                    release s2 with temp_10_arithop_42_0
              #                    free a5
              #                     351  min_index_36_1 = i32 min_index_36_2 
              #                    occupy a7 with min_index_36_2
              #                    occupy a4 with min_index_36_1
    mv      a4, a7
              #                    free a7
              #                    free a4
              #                     352  min_num_36_1 = i32 min_num_36_2 
              #                    occupy s1 with min_num_36_2
              #                    load from min_num_36_2 in mem


    lw      s1,232(sp)
              #                    occupy s2 with min_num_36_1
    mv      s2, s1
              #                    free s1
              #                    occupy s1 with min_num_36_2
              #                    store to min_num_36_2 in mem offset legal
    sw      s1,232(sp)
              #                    release s1 with min_num_36_2
              #                    free s2
              #                    occupy s2 with min_num_36_1
              #                    store to min_num_36_1 in mem offset legal
    sw      s2,236(sp)
              #                    release s2 with min_num_36_1
              #                          jump label: while.head_41 
              #                    occupy a7 with min_index_36_2
              #                    store to min_index_36_2 in mem offset legal
    sw      a7,224(sp)
              #                    release a7 with min_index_36_2
              #                    occupy a7 with min_num_36_1
              #                    load from min_num_36_1 in mem


    lw      a7,236(sp)
    j       .while.head_41
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a4:Freed { symidx: min_index_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     s1:Freed { symidx: k_36_1, tracked: true } |     s3:Freed { symidx: temp_43_cmp_43_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     341  label UP_43_0: 
.UP_43_0:
              #                     391  untrack temp_43_cmp_43_0 
              #                    occupy s3 with temp_43_cmp_43_0
              #                    release s3 with temp_43_cmp_43_0
              #                     390  untrack min_index_36_3 
              #                     389  untrack temp_39_ele_of_*dis_0_43_0 
              #                     353  min_index_36_2 = i32 min_index_36_1 
              #                    occupy a4 with min_index_36_1
              #                    occupy a5 with min_index_36_2
    mv      a5, a4
              #                    free a4
              #                    free a5
              #                     354  min_num_36_2 = i32 min_num_36_1 
              #                    occupy a7 with min_num_36_1
              #                    load from min_num_36_1 in mem


    lw      a7,236(sp)
              #                    occupy s2 with min_num_36_2
    mv      s2, a7
              #                    free a7
              #                    occupy a7 with min_num_36_1
              #                    store to min_num_36_1 in mem offset legal
    sw      a7,236(sp)
              #                    release a7 with min_num_36_1
              #                    free s2
              #                    occupy s2 with min_num_36_2
              #                    store to min_num_36_2 in mem offset legal
    sw      s2,232(sp)
              #                    release s2 with min_num_36_2
              #                          jump label: branch_short_circuit_c_false_288 
              #                    occupy a5 with min_index_36_2
              #                    store to min_index_36_2 in mem offset legal
    sw      a5,224(sp)
              #                    release a5 with min_index_36_2
              #                    occupy a7 with min_index_36_2
              #                    load from min_index_36_2 in mem


    lw      a7,224(sp)
    j       .branch_short_circuit_c_false_288
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a4:Freed { symidx: min_index_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     s1:Freed { symidx: temp_24_cmp_40_0, tracked: true } |     s2:Freed { symidx: temp_38_ptr_of_*dis_0_43, tracked: true } |     s4:Freed { symidx: temp_40_cmp_43_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     340  label UP_24_0: 
.UP_24_0:
              #                     355  min_num_36_2 = i32 min_num_36_1 
              #                    occupy a5 with min_num_36_1
              #                    load from min_num_36_1 in mem


    lw      a5,236(sp)
              #                    occupy a7 with min_num_36_2
    mv      a7, a5
              #                    free a5
              #                    occupy a5 with min_num_36_1
              #                    store to min_num_36_1 in mem offset legal
    sw      a5,236(sp)
              #                    release a5 with min_num_36_1
              #                    free a7
              #                    occupy a7 with min_num_36_2
              #                    store to min_num_36_2 in mem offset legal
    sw      a7,232(sp)
              #                    release a7 with min_num_36_2
              #                     356  min_index_36_2 = i32 min_index_36_1 
              #                    occupy a4 with min_index_36_1
              #                    occupy a5 with min_index_36_2
    mv      a5, a4
              #                    free a4
              #                    occupy a4 with min_index_36_1
              #                    store to min_index_36_1 in mem offset legal
    sw      a4,228(sp)
              #                    release a4 with min_index_36_1
              #                    free a5
              #                          jump label: branch_short_circuit_c_false_288 
              #                    occupy a4 with min_index_36_1
              #                    load from min_index_36_1 in mem


    lw      a4,228(sp)
              #                    occupy s1 with temp_24_cmp_40_0
              #                    store to temp_24_cmp_40_0 in mem offset legal
    sb      s1,102(sp)
              #                    release s1 with temp_24_cmp_40_0
              #                    occupy s1 with k_36_1
              #                    load from k_36_1 in mem


    lw      s1,216(sp)
              #                    occupy a5 with min_index_36_2
              #                    store to min_index_36_2 in mem offset legal
    sw      a5,224(sp)
              #                    release a5 with min_index_36_2
              #                    occupy s4 with temp_40_cmp_43_0
              #                    store to temp_40_cmp_43_0 in mem offset legal
    sb      s4,19(sp)
              #                    release s4 with temp_40_cmp_43_0
              #                    occupy a7 with min_index_36_2
              #                    load from min_index_36_2 in mem


    lw      a7,224(sp)
              #                    occupy s2 with temp_38_ptr_of_*dis_0_43
              #                    store to temp_38_ptr_of_*dis_0_43 in mem offset legal
    sd      s2,24(sp)
              #                    release s2 with temp_38_ptr_of_*dis_0_43
    j       .branch_short_circuit_c_false_288
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a4:Freed { symidx: min_index_36_1, tracked: true } |     a5:Freed { symidx: k_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_num_36_1, tracked: true } |     s1:Freed { symidx: temp_24_cmp_40_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     130  label while.exit_41: 
.while.exit_41:
              #                     49   temp_1_ptr_of_*book_0_36 = GEP *book_0:ptr->i32 [Some(min_index_36_1)] 
              #                    occupy s2 with temp_1_ptr_of_*book_0_36
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with min_index_36_1
    mv      s3, a4
              #                    free a4
              #                    occupy a4 with min_index_36_1
              #                    store to min_index_36_1 in mem offset legal
    sw      a4,228(sp)
              #                    release a4 with min_index_36_1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy a4 with *book_0
              #                       load label book as ptr to reg
    la      a4, book
              #                    occupy reg a4 with *book_0
    add     s2,s2,a4
              #                    free a4
              #                    free s2
              #                     50   store 1_0:i32 temp_1_ptr_of_*book_0_36:ptr->i32 
              #                    occupy s2 with temp_1_ptr_of_*book_0_36
              #                    occupy a4 with 1_0
    li      a4, 1
    sw      a4,0(s2)
              #                    free a4
              #                    free s2
              #                     51   book_0_6 = chi book_0_5:50 
              #                     52   (nop) 
              #                     152  temp_30_ptr_of_*dis_0_57 = GEP *dis_0:Array:i32:[None] [Some(min_index_36_1)] 
              #                    occupy a4 with temp_30_ptr_of_*dis_0_57
    li      a4, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with min_index_36_1
              #                    load from min_index_36_1 in mem


    lw      s5,228(sp)
    mv      s4, s5
              #                    free s5
              #                    occupy s5 with min_index_36_1
              #                    store to min_index_36_1 in mem offset legal
    sw      s5,228(sp)
              #                    release s5 with min_index_36_1
    add     a4,a4,s4
              #                    free s4
    slli a4,a4,2
              #                    occupy s4 with *dis_0
              #                       load label dis as ptr to reg
    la      s4, dis
              #                    occupy reg s4 with *dis_0
    add     a4,a4,s4
              #                    free s4
              #                    free a4
              #                    occupy a4 with temp_30_ptr_of_*dis_0_57
              #                    store to temp_30_ptr_of_*dis_0_57 in mem offset legal
    sd      a4,72(sp)
              #                    release a4 with temp_30_ptr_of_*dis_0_57
              #                     63   (nop) 
              #                     357  j_36_1 = i32 1_0 
              #                    occupy a4 with j_36_1
    li      a4, 1
              #                    free a4
              #                    occupy a4 with j_36_1
              #                    store to j_36_1 in mem offset legal
    sw      a4,204(sp)
              #                    release a4 with j_36_1
              #                          jump label: while.head_52 
    j       .while.head_52
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a5:Freed { symidx: k_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_num_36_1, tracked: true } |     s1:Freed { symidx: temp_24_cmp_40_0, tracked: true } |     s2:Freed { symidx: temp_1_ptr_of_*book_0_36, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     137  label while.head_52: 
.while.head_52:
              #                     136  temp_26_cmp_51_0 = icmp i32 Sle j_36_1, temp_18_value_from_ptr_26_0 
              #                    occupy a4 with j_36_1
              #                    load from j_36_1 in mem


    lw      a4,204(sp)
              #                    occupy a1 with temp_18_value_from_ptr_26_0
              #                    occupy s3 with temp_26_cmp_51_0
    slt     s3,a1,a4
    xori    s3,s3,1
              #                    free a4
              #                    occupy a4 with j_36_1
              #                    store to j_36_1 in mem offset legal
    sw      a4,204(sp)
              #                    release a4 with j_36_1
              #                    free a1
              #                    occupy a1 with temp_18_value_from_ptr_26_0
              #                    store to temp_18_value_from_ptr_26_0 in mem offset legal
    sw      a1,112(sp)
              #                    release a1 with temp_18_value_from_ptr_26_0
              #                    free s3
              #                     140  br i1 temp_26_cmp_51_0, label while.body_52, label while.exit_52 
              #                    occupy s3 with temp_26_cmp_51_0
              #                    free s3
              #                    occupy s3 with temp_26_cmp_51_0
    bnez    s3, .while.body_52
              #                    free s3
    j       .while.exit_52
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a5:Freed { symidx: k_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_num_36_1, tracked: true } |     s1:Freed { symidx: temp_24_cmp_40_0, tracked: true } |     s2:Freed { symidx: temp_1_ptr_of_*book_0_36, tracked: true } |     s3:Freed { symidx: temp_26_cmp_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     138  label while.body_52: 
.while.body_52:
              #                     404  untrack temp_41_ptr_of_*book_0_43 
              #                     403  untrack temp_42_ele_of_*book_0_43_0 
              #                     402  untrack temp_40_cmp_43_0 
              #                     401  untrack min_num_36_2 
              #                     400  untrack temp_39_ele_of_*dis_0_43_0 
              #                     399  untrack min_index_36_2 
              #                     398  untrack min_index_36_3 
              #                     397  untrack temp_24_cmp_40_0 
              #                    occupy s1 with temp_24_cmp_40_0
              #                    release s1 with temp_24_cmp_40_0
              #                     396  untrack temp_10_arithop_42_0 
              #                     395  untrack temp_38_ptr_of_*dis_0_43 
              #                     394  untrack temp_43_cmp_43_0 
              #                     142  temp_27_ptr_of_*e_0_54 = GEP *e_0:Array:i32:[None, Some(16_0)] [Some(min_index_36_1), Some(j_36_1)] 
              #                    occupy a1 with temp_27_ptr_of_*e_0_54
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with min_index_36_1
              #                    load from min_index_36_1 in mem


    lw      s1,228(sp)
    slli a4,s1,4
              #                    free s1
              #                    occupy s1 with min_index_36_1
              #                    store to min_index_36_1 in mem offset legal
    sw      s1,228(sp)
              #                    release s1 with min_index_36_1
    add     a1,a1,a4
              #                    free a4
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with j_36_1
              #                    load from j_36_1 in mem


    lw      s1,204(sp)
    mv      a4, s1
              #                    free s1
              #                    occupy s1 with j_36_1
              #                    store to j_36_1 in mem offset legal
    sw      s1,204(sp)
              #                    release s1 with j_36_1
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a4 with *e_0
              #                       load label e as ptr to reg
    la      a4, e
              #                    occupy reg a4 with *e_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                     144  temp_28_ele_of_*e_0_54_0 = load temp_27_ptr_of_*e_0_54:ptr->i32 
              #                    occupy a1 with temp_27_ptr_of_*e_0_54
              #                    occupy a4 with temp_28_ele_of_*e_0_54_0
    lw      a4,0(a1)
              #                    free a4
              #                    occupy a4 with temp_28_ele_of_*e_0_54_0
              #                    store to temp_28_ele_of_*e_0_54_0 in mem offset legal
    sw      a4,84(sp)
              #                    release a4 with temp_28_ele_of_*e_0_54_0
              #                    free a1
              #                     145  mu e_0_0:144 
              #                     147  temp_29_cmp_54_0 = icmp i32 Slt temp_28_ele_of_*e_0_54_0, 65535_0 
              #                    occupy a4 with temp_28_ele_of_*e_0_54_0
              #                    load from temp_28_ele_of_*e_0_54_0 in mem


    lw      a4,84(sp)
              #                    occupy s1 with 65535_0
    li      s1, 65535
              #                    occupy s4 with temp_29_cmp_54_0
    slt     s4,a4,s1
              #                    free a4
              #                    occupy a4 with temp_28_ele_of_*e_0_54_0
              #                    store to temp_28_ele_of_*e_0_54_0 in mem offset legal
    sw      a4,84(sp)
              #                    release a4 with temp_28_ele_of_*e_0_54_0
              #                    free s1
              #                    free s4
              #                    occupy s4 with temp_29_cmp_54_0
              #                    store to temp_29_cmp_54_0 in mem offset legal
    sb      s4,83(sp)
              #                    release s4 with temp_29_cmp_54_0
              #                     150  br i1 temp_29_cmp_54_0, label branch_true_55, label branch_false_55 
              #                    occupy a4 with temp_29_cmp_54_0
              #                    load from temp_29_cmp_54_0 in mem


    lb      a4,83(sp)
              #                    free a4
              #                    occupy a4 with temp_29_cmp_54_0
              #                    store to temp_29_cmp_54_0 in mem offset legal
    sb      a4,83(sp)
              #                    release a4 with temp_29_cmp_54_0
              #                    occupy a4 with temp_29_cmp_54_0
              #                    load from temp_29_cmp_54_0 in mem


    lb      a4,83(sp)
    bnez    a4, .branch_true_55
              #                    free a4
              #                    occupy a4 with temp_29_cmp_54_0
              #                    store to temp_29_cmp_54_0 in mem offset legal
    sb      a4,83(sp)
              #                    release a4 with temp_29_cmp_54_0
    j       .branch_false_55
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_27_ptr_of_*e_0_54, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a5:Freed { symidx: k_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_num_36_1, tracked: true } |     s2:Freed { symidx: temp_1_ptr_of_*book_0_36, tracked: true } |     s3:Freed { symidx: temp_26_cmp_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     148  label branch_true_55: 
.branch_true_55:
              #                     407  untrack temp_27_ptr_of_*e_0_54 
              #                    occupy a1 with temp_27_ptr_of_*e_0_54
              #                    release a1 with temp_27_ptr_of_*e_0_54
              #                     406  untrack temp_29_cmp_54_0 
              #                     405  untrack temp_26_cmp_51_0 
              #                    occupy s3 with temp_26_cmp_51_0
              #                    release s3 with temp_26_cmp_51_0
              #                     154  temp_31_ele_of_*dis_0_57_0 = load temp_30_ptr_of_*dis_0_57:ptr->i32 
              #                    occupy a1 with temp_30_ptr_of_*dis_0_57
              #                    load from temp_30_ptr_of_*dis_0_57 in mem
    ld      a1,72(sp)
              #                    occupy a4 with temp_31_ele_of_*dis_0_57_0
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     155  mu dis_0_5:154 
              #                     157  (nop) 
              #                     159  (nop) 
              #                     160  mu e_0_0:159 
              #                     162  temp_34_arithop_57_0 = Add i32 temp_31_ele_of_*dis_0_57_0, temp_28_ele_of_*e_0_54_0 
              #                    occupy a4 with temp_31_ele_of_*dis_0_57_0
              #                    occupy s1 with temp_28_ele_of_*e_0_54_0
              #                    load from temp_28_ele_of_*e_0_54_0 in mem


    lw      s1,84(sp)
              #                    occupy s3 with temp_34_arithop_57_0
    ADDW    s3,a4,s1
              #                    free a4
              #                    occupy a4 with temp_31_ele_of_*dis_0_57_0
              #                    store to temp_31_ele_of_*dis_0_57_0 in mem offset legal
    sw      a4,68(sp)
              #                    release a4 with temp_31_ele_of_*dis_0_57_0
              #                    free s1
              #                    occupy s1 with temp_28_ele_of_*e_0_54_0
              #                    store to temp_28_ele_of_*e_0_54_0 in mem offset legal
    sw      s1,84(sp)
              #                    release s1 with temp_28_ele_of_*e_0_54_0
              #                    free s3
              #                     410  untrack temp_31_ele_of_*dis_0_57_0 
              #                     408  untrack temp_28_ele_of_*e_0_54_0 
              #                     164  temp_35_ptr_of_*dis_0_57 = GEP *dis_0:Array:i32:[None] [Some(j_36_1)] 
              #                    occupy a4 with temp_35_ptr_of_*dis_0_57
    li      a4, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with j_36_1
              #                    load from j_36_1 in mem


    lw      s4,204(sp)
    mv      s1, s4
              #                    free s4
              #                    occupy s4 with j_36_1
              #                    store to j_36_1 in mem offset legal
    sw      s4,204(sp)
              #                    release s4 with j_36_1
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
              #                    occupy s1 with *dis_0
              #                       load label dis as ptr to reg
    la      s1, dis
              #                    occupy reg s1 with *dis_0
    add     a4,a4,s1
              #                    free s1
              #                    free a4
              #                    occupy a4 with temp_35_ptr_of_*dis_0_57
              #                    store to temp_35_ptr_of_*dis_0_57 in mem offset legal
    sd      a4,40(sp)
              #                    release a4 with temp_35_ptr_of_*dis_0_57
              #                     166  temp_36_ele_of_*dis_0_57_0 = load temp_35_ptr_of_*dis_0_57:ptr->i32 
              #                    occupy a4 with temp_35_ptr_of_*dis_0_57
              #                    load from temp_35_ptr_of_*dis_0_57 in mem
    ld      a4,40(sp)
              #                    occupy s1 with temp_36_ele_of_*dis_0_57_0
    lw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_36_ele_of_*dis_0_57_0
              #                    store to temp_36_ele_of_*dis_0_57_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_36_ele_of_*dis_0_57_0
              #                    free a4
              #                    occupy a4 with temp_35_ptr_of_*dis_0_57
              #                    store to temp_35_ptr_of_*dis_0_57 in mem offset legal
    sd      a4,40(sp)
              #                    release a4 with temp_35_ptr_of_*dis_0_57
              #                     167  mu dis_0_5:166 
              #                     169  temp_37_cmp_57_0 = icmp i32 Sgt temp_36_ele_of_*dis_0_57_0, temp_34_arithop_57_0 
              #                    occupy a4 with temp_36_ele_of_*dis_0_57_0
              #                    load from temp_36_ele_of_*dis_0_57_0 in mem


    lw      a4,36(sp)
              #                    occupy s3 with temp_34_arithop_57_0
              #                    occupy s1 with temp_37_cmp_57_0
    slt     s1,s3,a4
              #                    free a4
              #                    occupy a4 with temp_36_ele_of_*dis_0_57_0
              #                    store to temp_36_ele_of_*dis_0_57_0 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with temp_36_ele_of_*dis_0_57_0
              #                    free s3
              #                    occupy s3 with temp_34_arithop_57_0
              #                    store to temp_34_arithop_57_0 in mem offset legal
    sw      s3,52(sp)
              #                    release s3 with temp_34_arithop_57_0
              #                    free s1
              #                     409  untrack temp_36_ele_of_*dis_0_57_0 
              #                     172  br i1 temp_37_cmp_57_0, label branch_true_58, label branch_false_58 
              #                    occupy s1 with temp_37_cmp_57_0
              #                    free s1
              #                    occupy s1 with temp_37_cmp_57_0
    bnez    s1, .branch_true_58
              #                    free s1
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_30_ptr_of_*dis_0_57, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a5:Freed { symidx: k_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_num_36_1, tracked: true } |     s1:Freed { symidx: temp_37_cmp_57_0, tracked: true } |     s2:Freed { symidx: temp_1_ptr_of_*book_0_36, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     170  label branch_true_58: 
.branch_true_58:
              #                     411  untrack temp_37_cmp_57_0 
              #                    occupy s1 with temp_37_cmp_57_0
              #                    release s1 with temp_37_cmp_57_0
              #                     61   (nop) 
              #                     65   (nop) 
              #                     66   mu dis_0_5:65 
              #                     68   (nop) 
              #                     70   (nop) 
              #                     71   mu e_0_0:70 
              #                     73   (nop) 
              #                     74   store temp_34_arithop_57_0:i32 temp_35_ptr_of_*dis_0_57:ptr->i32 
              #                    occupy a4 with temp_35_ptr_of_*dis_0_57
              #                    load from temp_35_ptr_of_*dis_0_57 in mem
    ld      a4,40(sp)
              #                    occupy s1 with temp_34_arithop_57_0
              #                    load from temp_34_arithop_57_0 in mem


    lw      s1,52(sp)
    sw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_34_arithop_57_0
              #                    store to temp_34_arithop_57_0 in mem offset legal
    sw      s1,52(sp)
              #                    release s1 with temp_34_arithop_57_0
              #                    free a4
              #                     416  untrack temp_34_arithop_57_0 
              #                     415  untrack temp_35_ptr_of_*dis_0_57 
              #                    occupy a4 with temp_35_ptr_of_*dis_0_57
              #                    release a4 with temp_35_ptr_of_*dis_0_57
              #                     75   dis_0_6 = chi dis_0_5:74 
              #                          jump label: branch_false_58 
              #                    occupy s1 with temp_37_cmp_57_0
              #                    load from temp_37_cmp_57_0 in mem


    lb      s1,35(sp)
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_30_ptr_of_*dis_0_57, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a5:Freed { symidx: k_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_num_36_1, tracked: true } |     s1:Freed { symidx: temp_37_cmp_57_0, tracked: true } |     s2:Freed { symidx: temp_1_ptr_of_*book_0_36, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     171  label branch_false_58: 
.branch_false_58:
              #                     414  untrack temp_35_ptr_of_*dis_0_57 
              #                     413  untrack temp_34_arithop_57_0 
              #                     412  untrack temp_37_cmp_57_0 
              #                    occupy s1 with temp_37_cmp_57_0
              #                    release s1 with temp_37_cmp_57_0
              #                          jump label: branch_false_55 
              #                    occupy a1 with temp_30_ptr_of_*dis_0_57
              #                    store to temp_30_ptr_of_*dis_0_57 in mem offset legal
    sd      a1,72(sp)
              #                    release a1 with temp_30_ptr_of_*dis_0_57
              #                    occupy a1 with temp_27_ptr_of_*e_0_54
              #                    load from temp_27_ptr_of_*e_0_54 in mem
    ld      a1,88(sp)
              #                    occupy s3 with temp_26_cmp_51_0
              #                    load from temp_26_cmp_51_0 in mem


    lb      s3,101(sp)
    j       .branch_false_55
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_27_ptr_of_*e_0_54, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a5:Freed { symidx: k_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_num_36_1, tracked: true } |     s2:Freed { symidx: temp_1_ptr_of_*book_0_36, tracked: true } |     s3:Freed { symidx: temp_26_cmp_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     149  label branch_false_55: 
.branch_false_55:
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_27_ptr_of_*e_0_54, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a5:Freed { symidx: k_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_num_36_1, tracked: true } |     s2:Freed { symidx: temp_1_ptr_of_*book_0_36, tracked: true } |     s3:Freed { symidx: temp_26_cmp_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     58   temp_3_arithop_53_0 = Add i32 j_36_1, 1_0 
              #                    occupy a4 with j_36_1
              #                    load from j_36_1 in mem


    lw      a4,204(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s4 with temp_3_arithop_53_0
    ADDW    s4,a4,s1
              #                    free a4
              #                    occupy a4 with j_36_1
              #                    store to j_36_1 in mem offset legal
    sw      a4,204(sp)
              #                    release a4 with j_36_1
              #                    free s1
              #                    free s4
              #                    occupy s4 with temp_3_arithop_53_0
              #                    store to temp_3_arithop_53_0 in mem offset legal
    sw      s4,196(sp)
              #                    release s4 with temp_3_arithop_53_0
              #                     59   (nop) 
              #                     358  j_36_1 = i32 temp_3_arithop_53_0 
              #                    occupy a4 with temp_3_arithop_53_0
              #                    load from temp_3_arithop_53_0 in mem


    lw      a4,196(sp)
              #                    occupy s1 with j_36_1
    mv      s1, a4
              #                    free a4
              #                    occupy a4 with temp_3_arithop_53_0
              #                    store to temp_3_arithop_53_0 in mem offset legal
    sw      a4,196(sp)
              #                    release a4 with temp_3_arithop_53_0
              #                    free s1
              #                    occupy s1 with j_36_1
              #                    store to j_36_1 in mem offset legal
    sw      s1,204(sp)
              #                    release s1 with j_36_1
              #                          jump label: while.head_52 
              #                    occupy a1 with temp_27_ptr_of_*e_0_54
              #                    store to temp_27_ptr_of_*e_0_54 in mem offset legal
    sd      a1,88(sp)
              #                    release a1 with temp_27_ptr_of_*e_0_54
              #                    occupy a1 with temp_18_value_from_ptr_26_0
              #                    load from temp_18_value_from_ptr_26_0 in mem


    lw      a1,112(sp)
              #                    occupy s1 with temp_24_cmp_40_0
              #                    load from temp_24_cmp_40_0 in mem


    lb      s1,102(sp)
              #                    occupy s3 with temp_26_cmp_51_0
              #                    store to temp_26_cmp_51_0 in mem offset legal
    sb      s3,101(sp)
              #                    release s3 with temp_26_cmp_51_0
    j       .while.head_52
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a5:Freed { symidx: k_36_1, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |     a7:Freed { symidx: min_num_36_1, tracked: true } |     s1:Freed { symidx: temp_24_cmp_40_0, tracked: true } |     s2:Freed { symidx: temp_1_ptr_of_*book_0_36, tracked: true } |     s3:Freed { symidx: temp_26_cmp_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     139  label while.exit_52: 
.while.exit_52:
              #                     55   temp_2_arithop_36_0 = Add i32 i_23_5, 1_0 
              #                    occupy a6 with i_23_5
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with temp_2_arithop_36_0
    ADDW    a4,a6,a1
              #                    free a6
              #                    occupy a6 with i_23_5
              #                    store to i_23_5 in mem offset legal
    sw      a6,252(sp)
              #                    release a6 with i_23_5
              #                    free a1
              #                    free a4
              #                     56   (nop) 
              #                     359  i_23_5 = i32 temp_2_arithop_36_0 
              #                    occupy a4 with temp_2_arithop_36_0
              #                    occupy a1 with i_23_5
    mv      a1, a4
              #                    free a4
              #                    occupy a4 with temp_2_arithop_36_0
              #                    store to temp_2_arithop_36_0 in mem offset legal
    sw      a4,200(sp)
              #                    release a4 with temp_2_arithop_36_0
              #                    free a1
              #                          jump label: while.head_35 
              #                    occupy a1 with i_23_5
              #                    store to i_23_5 in mem offset legal
    sw      a1,252(sp)
              #                    release a1 with i_23_5
              #                    occupy a1 with temp_18_value_from_ptr_26_0
              #                    load from temp_18_value_from_ptr_26_0 in mem


    lw      a1,112(sp)
              #                    occupy s1 with temp_24_cmp_40_0
              #                    store to temp_24_cmp_40_0 in mem offset legal
    sb      s1,102(sp)
              #                    release s1 with temp_24_cmp_40_0
              #                    occupy a5 with k_36_1
              #                    store to k_36_1 in mem offset legal
    sw      a5,216(sp)
              #                    release a5 with k_36_1
              #                    occupy s3 with temp_26_cmp_51_0
              #                    store to temp_26_cmp_51_0 in mem offset legal
    sb      s3,101(sp)
              #                    release s3 with temp_26_cmp_51_0
              #                    occupy a3 with temp_22_cmp_34_0
              #                    store to temp_22_cmp_34_0 in mem offset legal
    sb      a3,103(sp)
              #                    release a3 with temp_22_cmp_34_0
              #                    occupy a6 with i_23_5
              #                    load from i_23_5 in mem


    lw      a6,252(sp)
              #                    occupy a7 with min_num_36_1
              #                    store to min_num_36_1 in mem offset legal
    sw      a7,236(sp)
              #                    release a7 with min_num_36_1
              #                    occupy s2 with temp_1_ptr_of_*book_0_36
              #                    store to temp_1_ptr_of_*book_0_36 in mem offset legal
    sd      s2,208(sp)
              #                    release s2 with temp_1_ptr_of_*book_0_36
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: temp_19_cmp_26_0, tracked: true } |     a1:Freed { symidx: temp_18_value_from_ptr_26_0, tracked: true } |     a2:Freed { symidx: temp_21_arithop_34_0, tracked: true } |     a3:Freed { symidx: temp_22_cmp_34_0, tracked: true } |     a6:Freed { symidx: i_23_5, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     120  label while.exit_35: 
.while.exit_35:
              #                     372  untrack temp_21_arithop_34_0 
              #                    occupy a2 with temp_21_arithop_34_0
              #                    release a2 with temp_21_arithop_34_0
              #                     371  untrack temp_18_value_from_ptr_26_0 
              #                    occupy a1 with temp_18_value_from_ptr_26_0
              #                    release a1 with temp_18_value_from_ptr_26_0
              #                     370  untrack i_23_5 
              #                    occupy a6 with i_23_5
              #                    release a6 with i_23_5
              #                     299  mu book_0_5:122 
              #                     300  mu dis_0_4:122 
              #                     122  ret 
              #                    load from ra_Dijkstra_0 in mem
    ld      ra,272(sp)
              #                    load from s0_Dijkstra_0 in mem
    ld      s0,264(sp)
    addi    sp,sp,280
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     31   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 120|s0_main:8 at 112|i _s64 _i0:4 at 108|i _s64 _i2:4 at 104|i _s64 _i5:4 at 100|i _s64 _i8:4 at 96|temp_44_ret_of_getint _s64 _i0:4 at 92|temp_45_ret_of_getint _s64 _i0:4 at 88|temp_46_ptr_of_*dis_0:8 at 80|temp_47_ele_of_*dis_0 _s93 _i0:4 at 76|temp_48_arithop _s93 _i0:4 at 72|temp_49_ret_of_getint _s85 _i0:4 at 68|temp_50_ret_of_getint _s85 _i0:4 at 64|temp_51_ptr_of_*e_0:8 at 56|temp_52_ret_of_getint _s85 _i0:4 at 52|temp_53_arithop _s85 _i0:4 at 48|j _s71 _i1:4 at 44|temp_54_arithop _s71 _i0:4 at 40|temp_55_ptr_of_*e_0:8 at 32|temp_56_arithop _s75 _i0:4 at 28|none:4 at 24|temp_57_ptr_of_*e_0:8 at 16|temp_58_value_from_ptr _s69 _i0:4 at 12|temp_59_cmp _s69 _i0:1 at 11|none:3 at 8|temp_60_value_from_ptr _s83 _i0:4 at 4|temp_61_cmp _s83 _i0:1 at 3|temp_63_cmp _s91 _i0:1 at 2|temp_65_cmp _s73 _i0:1 at 1|temp_66_cmp _s76 _i0:1 at 0
    addi    sp,sp,-128
              #                    store to ra_main_0 in mem offset legal
    sd      ra,120(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,112(sp)
    addi    s0,sp,128
              #                     301  e_0_1 = chi e_0_0:31 
              #                     302  dis_0_9 = chi dis_0_0:31 
              #                     303  m_0_1 = chi m_0_0:31 
              #                     304  book_0_7 = chi book_0_0:31 
              #                     305  n_0_1 = chi n_0_0:31 
              #                     193  alloc i32 [i_64] 
              #                     195  alloc i32 [temp_44_ret_of_getint_64] 
              #                     199  alloc i32 [temp_45_ret_of_getint_64] 
              #                     210  alloc ptr->i32 [temp_46_ptr_of_*dis_0_93] 
              #                     212  alloc i32 [temp_47_ele_of_*dis_0_93] 
              #                     217  alloc i32 [temp_48_arithop_93] 
              #                     220  alloc i32 [temp_49_ret_of_getint_85] 
              #                     223  alloc i32 [u_85] 
              #                     224  alloc i32 [temp_50_ret_of_getint_85] 
              #                     227  alloc i32 [v_85] 
              #                     228  alloc ptr->i32 [temp_51_ptr_of_*e_0_85] 
              #                     230  alloc i32 [temp_52_ret_of_getint_85] 
              #                     234  alloc i32 [temp_53_arithop_85] 
              #                     238  alloc i32 [j_71] 
              #                     239  alloc i32 [temp_54_arithop_71] 
              #                     242  alloc ptr->i32 [temp_55_ptr_of_*e_0_76] 
              #                     246  alloc i32 [temp_56_arithop_75] 
              #                     249  alloc ptr->i32 [temp_57_ptr_of_*e_0_76] 
              #                     253  alloc i32 [temp_58_value_from_ptr_69] 
              #                     256  alloc i1 [temp_59_cmp_69] 
              #                     262  alloc i32 [temp_60_value_from_ptr_83] 
              #                     265  alloc i1 [temp_61_cmp_83] 
              #                     271  alloc i32 [temp_62_value_from_ptr_91] 
              #                     274  alloc i1 [temp_63_cmp_91] 
              #                     282  alloc i32 [temp_64_value_from_ptr_73] 
              #                     285  alloc i1 [temp_65_cmp_73] 
              #                     291  alloc i1 [temp_66_cmp_76] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     194   
              #                     196  temp_44_ret_of_getint_64_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     197  store temp_44_ret_of_getint_64_0:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_44_ret_of_getint_64_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     418  untrack temp_44_ret_of_getint_64_0 
              #                    occupy a0 with temp_44_ret_of_getint_64_0
              #                    release a0 with temp_44_ret_of_getint_64_0
              #                     198  n_0_2 = chi n_0_1:197 
              #                     200  temp_45_ret_of_getint_64_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     201  store temp_45_ret_of_getint_64_0:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_45_ret_of_getint_64_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     417  untrack temp_45_ret_of_getint_64_0 
              #                    occupy a0 with temp_45_ret_of_getint_64_0
              #                    release a0 with temp_45_ret_of_getint_64_0
              #                     202  m_0_2 = chi m_0_1:201 
              #                     203  (nop) 
              #                     360  i_64_2 = i32 1_0 
              #                    occupy a0 with i_64_2
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: i_64_2, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     258  label while.head_70: 
.while.head_70:
              #                     254  temp_58_value_from_ptr_69_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_58_value_from_ptr_69_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     255  mu n_0_2:254 
              #                     257  temp_59_cmp_69_0 = icmp i32 Sle i_64_2, temp_58_value_from_ptr_69_0 
              #                    occupy a0 with i_64_2
              #                    occupy a2 with temp_58_value_from_ptr_69_0
              #                    occupy a3 with temp_59_cmp_69_0
    slt     a3,a2,a0
    xori    a3,a3,1
              #                    free a0
              #                    free a2
              #                    free a3
              #                     261  br i1 temp_59_cmp_69_0, label while.body_70, label while.exit_70 
              #                    occupy a3 with temp_59_cmp_69_0
              #                    free a3
              #                    occupy a3 with temp_59_cmp_69_0
    bnez    a3, .while.body_70
              #                    free a3
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: i_64_2, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a3:Freed { symidx: temp_59_cmp_69_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     259  label while.body_70: 
.while.body_70:
              #                     237  (nop) 
              #                     283  (nop) 
              #                     284  mu n_0_2:283 
              #                     361  j_71_1 = i32 1_0 
              #                    occupy a1 with j_71_1
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_74 
    j       .while.head_74
              #                    regtab     a0:Freed { symidx: i_64_2, tracked: true } |     a1:Freed { symidx: j_71_1, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a3:Freed { symidx: temp_59_cmp_69_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     287  label while.head_74: 
.while.head_74:
              #                     286  temp_65_cmp_73_0 = icmp i32 Sle j_71_1, temp_58_value_from_ptr_69_0 
              #                    occupy a1 with j_71_1
              #                    occupy a2 with temp_58_value_from_ptr_69_0
              #                    occupy a4 with temp_65_cmp_73_0
    slt     a4,a2,a1
    xori    a4,a4,1
              #                    free a1
              #                    free a2
              #                    free a4
              #                     290  br i1 temp_65_cmp_73_0, label while.body_74, label while.exit_74 
              #                    occupy a4 with temp_65_cmp_73_0
              #                    free a4
              #                    occupy a4 with temp_65_cmp_73_0
    bnez    a4, .while.body_74
              #                    free a4
    j       .while.exit_74
              #                    regtab     a0:Freed { symidx: i_64_2, tracked: true } |     a1:Freed { symidx: j_71_1, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a3:Freed { symidx: temp_59_cmp_69_0, tracked: true } |     a4:Freed { symidx: temp_65_cmp_73_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     288  label while.body_74: 
.while.body_74:
              #                     292  temp_66_cmp_76_0 = icmp i32 Eq i_64_2, j_71_1 
              #                    occupy a0 with i_64_2
              #                    occupy a1 with j_71_1
              #                    occupy a5 with temp_66_cmp_76_0
    xor     a5,a0,a1
    seqz    a5, a5
              #                    free a0
              #                    free a1
              #                    free a5
              #                     295  br i1 temp_66_cmp_76_0, label branch_true_77, label branch_false_77 
              #                    occupy a5 with temp_66_cmp_76_0
              #                    free a5
              #                    occupy a5 with temp_66_cmp_76_0
    bnez    a5, .branch_true_77
              #                    free a5
    j       .branch_false_77
              #                    regtab     a0:Freed { symidx: i_64_2, tracked: true } |     a1:Freed { symidx: j_71_1, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a3:Freed { symidx: temp_59_cmp_69_0, tracked: true } |     a4:Freed { symidx: temp_65_cmp_73_0, tracked: true } |     a5:Freed { symidx: temp_66_cmp_76_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     293  label branch_true_77: 
.branch_true_77:
              #                     422  untrack temp_66_cmp_76_0 
              #                    occupy a5 with temp_66_cmp_76_0
              #                    release a5 with temp_66_cmp_76_0
              #                     421  untrack temp_55_ptr_of_*e_0_76 
              #                     420  untrack temp_65_cmp_73_0 
              #                    occupy a4 with temp_65_cmp_73_0
              #                    release a4 with temp_65_cmp_73_0
              #                     250  temp_57_ptr_of_*e_0_76 = GEP *e_0:ptr->Array:i32:[Some(16_0)] [Some(i_64_2), Some(j_71_1)] 
              #                    occupy a4 with temp_57_ptr_of_*e_0_76
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_64_2
    slli a5,a0,4
              #                    free a0
    add     a4,a4,a5
              #                    free a5
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with j_71_1
    mv      a6, a1
              #                    free a1
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *e_0
              #                       load label e as ptr to reg
    la      a7, e
              #                    occupy reg a7 with *e_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                     251  store 0_0:i32 temp_57_ptr_of_*e_0_76:ptr->i32 
              #                    occupy a4 with temp_57_ptr_of_*e_0_76
              #                    occupy s1 with 0_0
    li      s1, 0
    sw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                     423  untrack temp_57_ptr_of_*e_0_76 
              #                    occupy a4 with temp_57_ptr_of_*e_0_76
              #                    release a4 with temp_57_ptr_of_*e_0_76
              #                     252  e_0_4 = chi e_0_3:251 
              #                          jump label: gather_30 
    j       .gather_30
              #                    regtab     a0:Freed { symidx: i_64_2, tracked: true } |     a1:Freed { symidx: j_71_1, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a3:Freed { symidx: temp_59_cmp_69_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     296  label gather_30: 
.gather_30:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: i_64_2, tracked: true } |     a1:Freed { symidx: j_71_1, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a3:Freed { symidx: temp_59_cmp_69_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     247  temp_56_arithop_75_0 = Add i32 j_71_1, 1_0 
              #                    occupy a1 with j_71_1
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_56_arithop_75_0
    ADDW    a5,a1,a4
              #                    free a1
              #                    free a4
              #                    free a5
              #                     248  (nop) 
              #                     362  j_71_1 = i32 temp_56_arithop_75_0 
              #                    occupy a5 with temp_56_arithop_75_0
              #                    occupy a1 with j_71_1
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                          jump label: while.head_74 
              #                    occupy a5 with temp_56_arithop_75_0
              #                    store to temp_56_arithop_75_0 in mem offset legal
    sw      a5,28(sp)
              #                    release a5 with temp_56_arithop_75_0
    j       .while.head_74
              #                    regtab     a0:Freed { symidx: i_64_2, tracked: true } |     a1:Freed { symidx: j_71_1, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a3:Freed { symidx: temp_59_cmp_69_0, tracked: true } |     a4:Freed { symidx: temp_65_cmp_73_0, tracked: true } |     a5:Freed { symidx: temp_66_cmp_76_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     294  label branch_false_77: 
.branch_false_77:
              #                     243  temp_55_ptr_of_*e_0_76 = GEP *e_0:ptr->Array:i32:[Some(16_0)] [Some(i_64_2), Some(j_71_1)] 
              #                    occupy a6 with temp_55_ptr_of_*e_0_76
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_64_2
    slli a7,a0,4
              #                    free a0
    add     a6,a6,a7
              #                    free a7
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with j_71_1
    mv      s1, a1
              #                    free a1
    add     a6,a6,s1
              #                    free s1
    slli a6,a6,2
              #                    occupy s2 with *e_0
              #                       load label e as ptr to reg
    la      s2, e
              #                    occupy reg s2 with *e_0
    add     a6,a6,s2
              #                    free s2
              #                    free a6
              #                     244  store 65535_0:i32 temp_55_ptr_of_*e_0_76:ptr->i32 
              #                    occupy a6 with temp_55_ptr_of_*e_0_76
              #                    occupy s3 with 65535_0
    li      s3, 65535
    sw      s3,0(a6)
              #                    free s3
              #                    free a6
              #                     245  e_0_6 = chi e_0_3:244 
              #                          jump label: gather_30 
              #                    occupy a5 with temp_66_cmp_76_0
              #                    store to temp_66_cmp_76_0 in mem offset legal
    sb      a5,0(sp)
              #                    release a5 with temp_66_cmp_76_0
              #                    occupy a4 with temp_65_cmp_73_0
              #                    store to temp_65_cmp_73_0 in mem offset legal
    sb      a4,1(sp)
              #                    release a4 with temp_65_cmp_73_0
              #                    occupy a6 with temp_55_ptr_of_*e_0_76
              #                    store to temp_55_ptr_of_*e_0_76 in mem offset legal
    sd      a6,32(sp)
              #                    release a6 with temp_55_ptr_of_*e_0_76
    j       .gather_30
              #                    regtab     a0:Freed { symidx: i_64_2, tracked: true } |     a1:Freed { symidx: j_71_1, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a3:Freed { symidx: temp_59_cmp_69_0, tracked: true } |     a4:Freed { symidx: temp_65_cmp_73_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     289  label while.exit_74: 
.while.exit_74:
              #                     240  temp_54_arithop_71_0 = Add i32 i_64_2, 1_0 
              #                    occupy a0 with i_64_2
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_54_arithop_71_0
    ADDW    a6,a0,a5
              #                    free a0
              #                    free a5
              #                    free a6
              #                     241  (nop) 
              #                     363  i_64_2 = i32 temp_54_arithop_71_0 
              #                    occupy a6 with temp_54_arithop_71_0
              #                    occupy a0 with i_64_2
    mv      a0, a6
              #                    free a6
              #                    free a0
              #                          jump label: while.head_70 
              #                    occupy a3 with temp_59_cmp_69_0
              #                    store to temp_59_cmp_69_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_59_cmp_69_0
              #                    occupy a4 with temp_65_cmp_73_0
              #                    store to temp_65_cmp_73_0 in mem offset legal
    sb      a4,1(sp)
              #                    release a4 with temp_65_cmp_73_0
              #                    occupy a6 with temp_54_arithop_71_0
              #                    store to temp_54_arithop_71_0 in mem offset legal
    sw      a6,40(sp)
              #                    release a6 with temp_54_arithop_71_0
              #                    occupy a1 with j_71_1
              #                    store to j_71_1 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with j_71_1
              #                    occupy a2 with temp_58_value_from_ptr_69_0
              #                    store to temp_58_value_from_ptr_69_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_58_value_from_ptr_69_0
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: i_64_2, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a3:Freed { symidx: temp_59_cmp_69_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     260  label while.exit_70: 
.while.exit_70:
              #                     419  untrack i_64_2 
              #                    occupy a0 with i_64_2
              #                    release a0 with i_64_2
              #                     204  (nop) 
              #                     263  temp_60_value_from_ptr_83_0 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_60_value_from_ptr_83_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     264  mu m_0_2:263 
              #                     364  i_64_5 = i32 1_0 
              #                    occupy a4 with i_64_5
    li      a4, 1
              #                    free a4
              #                          jump label: while.head_84 
    j       .while.head_84
              #                    regtab     a1:Freed { symidx: temp_60_value_from_ptr_83_0, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a3:Freed { symidx: temp_59_cmp_69_0, tracked: true } |     a4:Freed { symidx: i_64_5, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     267  label while.head_84: 
.while.head_84:
              #                     266  temp_61_cmp_83_0 = icmp i32 Sle i_64_5, temp_60_value_from_ptr_83_0 
              #                    occupy a4 with i_64_5
              #                    occupy a1 with temp_60_value_from_ptr_83_0
              #                    occupy a0 with temp_61_cmp_83_0
    slt     a0,a1,a4
    xori    a0,a0,1
              #                    free a4
              #                    free a1
              #                    free a0
              #                     270  br i1 temp_61_cmp_83_0, label while.body_84, label while.exit_84 
              #                    occupy a0 with temp_61_cmp_83_0
              #                    free a0
              #                    occupy a0 with temp_61_cmp_83_0
    bnez    a0, .while.body_84
              #                    free a0
    j       .while.exit_84
              #                    regtab     a0:Freed { symidx: temp_61_cmp_83_0, tracked: true } |     a1:Freed { symidx: temp_60_value_from_ptr_83_0, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a3:Freed { symidx: temp_59_cmp_69_0, tracked: true } |     a4:Freed { symidx: i_64_5, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     268  label while.body_84: 
.while.body_84:
              #                     221  temp_49_ret_of_getint_85_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_61_cmp_83_0
              #                    store to temp_61_cmp_83_0 in mem offset legal
    sb      a0,3(sp)
              #                    release a0 with temp_61_cmp_83_0
              #                    occupy a1 with temp_60_value_from_ptr_83_0
              #                    store to temp_60_value_from_ptr_83_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_60_value_from_ptr_83_0
              #                    occupy a2 with temp_58_value_from_ptr_69_0
              #                    store to temp_58_value_from_ptr_69_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_58_value_from_ptr_69_0
              #                    occupy a3 with temp_59_cmp_69_0
              #                    store to temp_59_cmp_69_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_59_cmp_69_0
              #                    occupy a4 with i_64_5
              #                    store to i_64_5 in mem offset legal
    sw      a4,100(sp)
              #                    release a4 with i_64_5
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     222  (nop) 
              #                     225  temp_50_ret_of_getint_85_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_49_ret_of_getint_85_0
              #                    store to temp_49_ret_of_getint_85_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_49_ret_of_getint_85_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     226  (nop) 
              #                     229  temp_51_ptr_of_*e_0_85 = GEP *e_0:ptr->Array:i32:[Some(16_0)] [Some(temp_49_ret_of_getint_85_0), Some(temp_50_ret_of_getint_85_0)] 
              #                    occupy a1 with temp_51_ptr_of_*e_0_85
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_49_ret_of_getint_85_0
              #                    load from temp_49_ret_of_getint_85_0 in mem


    lw      a3,68(sp)
    slli a2,a3,4
              #                    free a3
    add     a1,a1,a2
              #                    free a2
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with temp_50_ret_of_getint_85_0
    mv      a4, a0
              #                    free a0
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a5 with *e_0
              #                       load label e as ptr to reg
    la      a5, e
              #                    occupy reg a5 with *e_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                     231  temp_52_ret_of_getint_85_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_50_ret_of_getint_85_0
              #                    store to temp_50_ret_of_getint_85_0 in mem offset legal
    sw      a0,64(sp)
              #                    release a0 with temp_50_ret_of_getint_85_0
              #                    occupy a1 with temp_51_ptr_of_*e_0_85
              #                    store to temp_51_ptr_of_*e_0_85 in mem offset legal
    sd      a1,56(sp)
              #                    release a1 with temp_51_ptr_of_*e_0_85
              #                    occupy a3 with temp_49_ret_of_getint_85_0
              #                    store to temp_49_ret_of_getint_85_0 in mem offset legal
    sw      a3,68(sp)
              #                    release a3 with temp_49_ret_of_getint_85_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     232  store temp_52_ret_of_getint_85_0:i32 temp_51_ptr_of_*e_0_85:ptr->i32 
              #                    occupy a1 with temp_51_ptr_of_*e_0_85
              #                    load from temp_51_ptr_of_*e_0_85 in mem
    ld      a1,56(sp)
              #                    occupy a0 with temp_52_ret_of_getint_85_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     233  e_0_8 = chi e_0_7:232 
              #                     235  temp_53_arithop_85_0 = Add i32 i_64_5, 1_0 
              #                    occupy a2 with i_64_5
              #                    load from i_64_5 in mem


    lw      a2,100(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_53_arithop_85_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     236  (nop) 
              #                     365  i_64_5 = i32 temp_53_arithop_85_0 
              #                    occupy a4 with temp_53_arithop_85_0
              #                    occupy a2 with i_64_5
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_84 
              #                    occupy a3 with temp_59_cmp_69_0
              #                    load from temp_59_cmp_69_0 in mem


    lb      a3,11(sp)
              #                    occupy a0 with temp_52_ret_of_getint_85_0
              #                    store to temp_52_ret_of_getint_85_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_52_ret_of_getint_85_0
              #                    occupy a4 with temp_53_arithop_85_0
              #                    store to temp_53_arithop_85_0 in mem offset legal
    sw      a4,48(sp)
              #                    release a4 with temp_53_arithop_85_0
              #                    occupy a2 with i_64_5
              #                    store to i_64_5 in mem offset legal
    sw      a2,100(sp)
              #                    release a2 with i_64_5
              #                    occupy a4 with i_64_5
              #                    load from i_64_5 in mem


    lw      a4,100(sp)
              #                    occupy a1 with temp_51_ptr_of_*e_0_85
              #                    store to temp_51_ptr_of_*e_0_85 in mem offset legal
    sd      a1,56(sp)
              #                    release a1 with temp_51_ptr_of_*e_0_85
              #                    occupy a1 with temp_60_value_from_ptr_83_0
              #                    load from temp_60_value_from_ptr_83_0 in mem


    lw      a1,4(sp)
              #                    occupy a2 with temp_58_value_from_ptr_69_0
              #                    load from temp_58_value_from_ptr_69_0 in mem


    lw      a2,12(sp)
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: temp_61_cmp_83_0, tracked: true } |     a1:Freed { symidx: temp_60_value_from_ptr_83_0, tracked: true } |     a2:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a3:Freed { symidx: temp_59_cmp_69_0, tracked: true } |     a4:Freed { symidx: i_64_5, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     269  label while.exit_84: 
.while.exit_84:
              #                     425  untrack temp_60_value_from_ptr_83_0 
              #                    occupy a1 with temp_60_value_from_ptr_83_0
              #                    release a1 with temp_60_value_from_ptr_83_0
              #                     424  untrack i_64_5 
              #                    occupy a4 with i_64_5
              #                    release a4 with i_64_5
              #                     205   Call void Dijkstra_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_61_cmp_83_0
              #                    store to temp_61_cmp_83_0 in mem offset legal
    sb      a0,3(sp)
              #                    release a0 with temp_61_cmp_83_0
              #                    occupy a2 with temp_58_value_from_ptr_69_0
              #                    store to temp_58_value_from_ptr_69_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_58_value_from_ptr_69_0
              #                    occupy a3 with temp_59_cmp_69_0
              #                    store to temp_59_cmp_69_0 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_59_cmp_69_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    Dijkstra
              #                     306  mu book_0_7:205 
              #                     307  mu dis_0_9:205 
              #                     308  mu e_0_7:205 
              #                     309  mu n_0_2:205 
              #                     310  book_0_8 = chi book_0_7:205 
              #                     311  dis_0_10 = chi dis_0_9:205 
              #                     206  (nop) 
              #                     272  (nop) 
              #                     273  mu n_0_2:272 
              #                     366  i_64_8 = i32 1_0 
              #                    occupy a0 with i_64_8
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_92 
    j       .while.head_92
              #                    regtab     a0:Freed { symidx: i_64_8, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     276  label while.head_92: 
.while.head_92:
              #                     275  temp_63_cmp_91_0 = icmp i32 Sle i_64_8, temp_58_value_from_ptr_69_0 
              #                    occupy a0 with i_64_8
              #                    occupy a1 with temp_58_value_from_ptr_69_0
              #                    load from temp_58_value_from_ptr_69_0 in mem


    lw      a1,12(sp)
              #                    occupy a2 with temp_63_cmp_91_0
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     279  br i1 temp_63_cmp_91_0, label while.body_92, label while.exit_92 
              #                    occupy a2 with temp_63_cmp_91_0
              #                    free a2
              #                    occupy a2 with temp_63_cmp_91_0
    bnez    a2, .while.body_92
              #                    free a2
    j       .while.exit_92
              #                    regtab     a0:Freed { symidx: i_64_8, tracked: true } |     a1:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a2:Freed { symidx: temp_63_cmp_91_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     277  label while.body_92: 
.while.body_92:
              #                     211  temp_46_ptr_of_*dis_0_93 = GEP *dis_0:Array:i32:[None] [Some(i_64_8)] 
              #                    occupy a3 with temp_46_ptr_of_*dis_0_93
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_64_8
    mv      a4, a0
              #                    free a0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *dis_0
              #                       load label dis as ptr to reg
    la      a5, dis
              #                    occupy reg a5 with *dis_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     213  temp_47_ele_of_*dis_0_93_0 = load temp_46_ptr_of_*dis_0_93:ptr->i32 
              #                    occupy a3 with temp_46_ptr_of_*dis_0_93
              #                    occupy a6 with temp_47_ele_of_*dis_0_93_0
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     214  mu dis_0_10:213 
              #                     215   Call void putint_0(temp_47_ele_of_*dis_0_93_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_64_8
              #                    store to i_64_8 in mem offset legal
    sw      a0,96(sp)
              #                    release a0 with i_64_8
              #                    occupy a1 with temp_58_value_from_ptr_69_0
              #                    store to temp_58_value_from_ptr_69_0 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_58_value_from_ptr_69_0
              #                    occupy a2 with temp_63_cmp_91_0
              #                    store to temp_63_cmp_91_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_63_cmp_91_0
              #                    occupy a3 with temp_46_ptr_of_*dis_0_93
              #                    store to temp_46_ptr_of_*dis_0_93 in mem offset legal
    sd      a3,80(sp)
              #                    release a3 with temp_46_ptr_of_*dis_0_93
              #                    occupy a6 with temp_47_ele_of_*dis_0_93_0
              #                    store to temp_47_ele_of_*dis_0_93_0 in mem offset legal
    sw      a6,76(sp)
              #                    release a6 with temp_47_ele_of_*dis_0_93_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_47_ele_of_*dis_0_93_0_0
              #                    load from temp_47_ele_of_*dis_0_93_0 in mem


    lw      a0,76(sp)
              #                    arg load ended


    call    putint
              #                     216   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     218  temp_48_arithop_93_0 = Add i32 i_64_8, 1_0 
              #                    occupy a0 with i_64_8
              #                    load from i_64_8 in mem


    lw      a0,96(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_48_arithop_93_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     219  (nop) 
              #                     367  i_64_8 = i32 temp_48_arithop_93_0 
              #                    occupy a2 with temp_48_arithop_93_0
              #                    occupy a0 with i_64_8
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_92 
              #                    occupy a2 with temp_48_arithop_93_0
              #                    store to temp_48_arithop_93_0 in mem offset legal
    sw      a2,72(sp)
              #                    release a2 with temp_48_arithop_93_0
    j       .while.head_92
              #                    regtab     a0:Freed { symidx: i_64_8, tracked: true } |     a1:Freed { symidx: temp_58_value_from_ptr_69_0, tracked: true } |     a2:Freed { symidx: temp_63_cmp_91_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     278  label while.exit_92: 
.while.exit_92:
              #                     426  untrack i_64_8 
              #                    occupy a0 with i_64_8
              #                    release a0 with i_64_8
              #                     207   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_58_value_from_ptr_69_0
              #                    store to temp_58_value_from_ptr_69_0 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_58_value_from_ptr_69_0
              #                    occupy a2 with temp_63_cmp_91_0
              #                    store to temp_63_cmp_91_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_63_cmp_91_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     312  mu e_0_7:209 
              #                     313  mu dis_0_10:209 
              #                     314  mu m_0_2:209 
              #                     315  mu book_0_8:209 
              #                     316  mu n_0_2:209 
              #                     209  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,120(sp)
              #                    load from s0_main_0 in mem
    ld      s0,112(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,128
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl w
              #                     28   global i32 w_0 
    .type w,@object
w:
    .word 0
    .align 4
    .globl v2
              #                     27   global i32 v2_0 
    .type v2,@object
v2:
    .word 0
    .align 4
    .globl v1
              #                     26   global i32 v1_0 
    .type v1,@object
v1:
    .word 0
    .align 4
    .globl m
              #                     25   global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
              #                     24   global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl dis
              #                     23   global Array:i32:[Some(16_0)] dis_0 
    .type dis,@object
dis:
    .zero 64
    .align 4
    .globl book
              #                     21   global Array:i32:[Some(16_0)] book_0 
    .type book,@object
book:
    .zero 64
    .align 4
    .globl e
              #                     19   global Array:i32:[Some(16_0), Some(16_0)] e_0 
    .type e,@object
e:
    .zero 1024
    .align 4
    .globl INF
              #                     17   global i32 INF_0 
    .type INF,@object
INF:
    .word 65535
