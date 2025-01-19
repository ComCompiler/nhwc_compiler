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
              #                     18   Define QuickSort_0 "arr_17,low_17_0,high_17_0," -> QuickSort_ret_0 
    .globl QuickSort
    .type QuickSort,@function
QuickSort:
              #                    mem layout:|ra_QuickSort:8 at 288|s0_QuickSort:8 at 280|arr:8 at 272|arr:8 at 264|arr:8 at 256|arr:8 at 248|arr:8 at 240|arr:8 at 232|arr _s17 _i6:8 at 224|arr:8 at 216|arr:8 at 208|low _s17 _i0:4 at 204|high _s17 _i0:4 at 200|i _s22 _i0:4 at 196|i _s22 _i1:4 at 192|i _s22 _i2:4 at 188|i _s22 _i4:4 at 184|i _s22 _i5:4 at 180|j _s22 _i0:4 at 176|j _s22 _i1:4 at 172|j _s22 _i2:4 at 168|j _s22 _i3:4 at 164|j _s22 _i5:4 at 160|k _s22 _i0:4 at 156|none:4 at 152|temp_0_ptr_of_arr_17:8 at 144|temp_1_ele_of_arr_17 _s22 _i0:4 at 140|none:4 at 136|temp_2_ptr_of_arr_17:8 at 128|tmp _s22 _i0:4 at 124|temp_3_arithop _s22 _i0:4 at 120|temp_4_ret_of_QuickSort _s22 _i0:4 at 116|temp_5_arithop _s22 _i0:4 at 112|temp_6_ret_of_QuickSort _s22 _i0:4 at 108|none:4 at 104|temp_7_ptr_of_arr_17:8 at 96|temp_8_ptr_of_arr_17:8 at 88|temp_9_ele_of_arr_17 _s47 _i0:4 at 84|temp_10_arithop _s47 _i0:4 at 80|temp_11_arithop _s43 _i0:4 at 76|none:4 at 72|temp_12_ptr_of_arr_17:8 at 64|temp_13_ptr_of_arr_17:8 at 56|temp_14_ele_of_arr_17 _s38 _i0:4 at 52|temp_15_arithop _s38 _i0:4 at 48|temp_16_arithop _s34 _i0:4 at 44|temp_17_cmp _s20 _i0:1 at 43|temp_18_cmp _s29 _i0:1 at 42|temp_19_cmp _s32 _i0:1 at 41|none:1 at 40|temp_20_arithop _s32 _i0:4 at 36|none:4 at 32|temp_21_ptr_of_arr_17:8 at 24|temp_22_ele_of_arr_17 _s32 _i0:4 at 20|temp_23_cmp _s32 _i0:1 at 19|temp_25_cmp _s41 _i0:1 at 18|none:2 at 16|temp_26_ptr_of_arr_17:8 at 8|temp_27_ele_of_arr_17 _s41 _i0:4 at 4|temp_28_cmp _s41 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-296
              #                    store to ra_QuickSort_0 in mem offset legal
    sd      ra,288(sp)
              #                    store to s0_QuickSort_0 in mem offset legal
    sd      s0,280(sp)
    addi    s0,sp,296
              #                     22   alloc i32 [i_22] 
              #                     25   alloc i32 [j_22] 
              #                     28   alloc i32 [k_22] 
              #                     30   alloc ptr->i32 [temp_0_ptr_of_arr_17_22] 
              #                     32   alloc i32 [temp_1_ele_of_arr_17_22] 
              #                     36   alloc ptr->i32 [temp_2_ptr_of_arr_17_22] 
              #                     40   alloc i32 [tmp_22] 
              #                     42   alloc i32 [temp_3_arithop_22] 
              #                     45   alloc i32 [temp_4_ret_of_QuickSort_22] 
              #                     48   alloc i32 [temp_5_arithop_22] 
              #                     51   alloc i32 [temp_6_ret_of_QuickSort_22] 
              #                     54   alloc ptr->i32 [temp_7_ptr_of_arr_17_47] 
              #                     56   alloc ptr->i32 [temp_8_ptr_of_arr_17_47] 
              #                     58   alloc i32 [temp_9_ele_of_arr_17_47] 
              #                     63   alloc i32 [temp_10_arithop_47] 
              #                     66   alloc i32 [temp_11_arithop_43] 
              #                     69   alloc ptr->i32 [temp_12_ptr_of_arr_17_38] 
              #                     71   alloc ptr->i32 [temp_13_ptr_of_arr_17_38] 
              #                     73   alloc i32 [temp_14_ele_of_arr_17_38] 
              #                     78   alloc i32 [temp_15_arithop_38] 
              #                     81   alloc i32 [temp_16_arithop_34] 
              #                     84   alloc i1 [temp_17_cmp_20] 
              #                     91   alloc i1 [temp_18_cmp_29] 
              #                     97   alloc i1 [temp_19_cmp_32] 
              #                     99   alloc i32 [temp_20_arithop_32] 
              #                     101  alloc ptr->i32 [temp_21_ptr_of_arr_17_32] 
              #                     103  alloc i32 [temp_22_ele_of_arr_17_32] 
              #                     106  alloc i1 [temp_23_cmp_32] 
              #                     114  alloc i1 [temp_24_cmp_36] 
              #                     119  alloc i1 [temp_25_cmp_41] 
              #                     121  alloc ptr->i32 [temp_26_ptr_of_arr_17_41] 
              #                     123  alloc i32 [temp_27_ele_of_arr_17_41] 
              #                     126  alloc i1 [temp_28_cmp_41] 
              #                     135  alloc i1 [temp_29_cmp_45] 
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     17    
              #                     85   temp_17_cmp_20_0 = icmp i32 Slt low_17_0, high_17_0 
              #                    occupy a1 with low_17_0
              #                    occupy a2 with high_17_0
              #                    occupy a3 with temp_17_cmp_20_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     88   br i1 temp_17_cmp_20_0, label branch_true_21, label branch_false_21 
              #                    occupy a3 with temp_17_cmp_20_0
              #                    free a3
              #                    occupy a3 with temp_17_cmp_20_0
    bnez    a3, .branch_true_21
              #                    free a3
    j       .branch_false_21
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     86   label branch_true_21: 
.branch_true_21:
              #                     255  untrack temp_17_cmp_20_0 
              #                    occupy a3 with temp_17_cmp_20_0
              #                    release a3 with temp_17_cmp_20_0
              #                     23    
              #                     24   i_22_1 = i32 low_17_0 
              #                    occupy a1 with low_17_0
              #                    occupy a3 with i_22_1
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                     26    
              #                     27   j_22_1 = i32 high_17_0 
              #                    occupy a2 with high_17_0
              #                    occupy a4 with j_22_1
    mv      a4, a2
              #                    free a2
              #                    free a4
              #                     29    
              #                     31   temp_0_ptr_of_arr_17_22 = GEP arr_17:Array:i32:[None] [Some(low_17_0)] 
              #                    occupy a5 with temp_0_ptr_of_arr_17_22
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with low_17_0
    mv      a6, a1
              #                    free a1
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a0 with arr_17
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                     33   temp_1_ele_of_arr_17_22_0 = load temp_0_ptr_of_arr_17_22:ptr->i32 
              #                    occupy a5 with temp_0_ptr_of_arr_17_22
              #                    occupy a7 with temp_1_ele_of_arr_17_22_0
    lw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                     269  untrack temp_0_ptr_of_arr_17_22 
              #                    occupy a5 with temp_0_ptr_of_arr_17_22
              #                    release a5 with temp_0_ptr_of_arr_17_22
              #                     34   mu arr_17:33 
              #                     35   (nop) 
              #                     241  j_22_2 = i32 j_22_1 
              #                    occupy a4 with j_22_1
              #                    occupy a5 with j_22_2
    mv      a5, a4
              #                    free a4
              #                    free a5
              #                     268  untrack j_22_1 
              #                    occupy a4 with j_22_1
              #                    release a4 with j_22_1
              #                     242  i_22_2 = i32 i_22_1 
              #                    occupy a3 with i_22_1
              #                    occupy a4 with i_22_2
    mv      a4, a3
              #                    free a3
              #                    free a4
              #                     270  untrack i_22_1 
              #                    occupy a3 with i_22_1
              #                    release a3 with i_22_1
              #                          jump label: while.head_30 
    j       .while.head_30
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     93   label while.head_30: 
.while.head_30:
              #                     92   temp_18_cmp_29_0 = icmp i32 Slt i_22_2, j_22_2 
              #                    occupy a4 with i_22_2
              #                    occupy a5 with j_22_2
              #                    occupy a3 with temp_18_cmp_29_0
    slt     a3,a4,a5
              #                    free a4
              #                    free a5
              #                    free a3
              #                     100  temp_20_arithop_32_0 = Sub i32 temp_1_ele_of_arr_17_22_0, 1_0 
              #                    occupy a7 with temp_1_ele_of_arr_17_22_0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with temp_20_arithop_32_0
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_18_cmp_29_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Occupied { symidx: temp_1_ele_of_arr_17_22_0, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: temp_20_arithop_32_0, tracked: true, occupy_count: 1 } |  released_gpr_count:9,released_fpr_count:24


    subw    s1,a7,a6
              #                    free a7
              #                    free a6
              #                    free s1
              #                     96   br i1 temp_18_cmp_29_0, label UP_20_0, label while.exit_30 
              #                    occupy a3 with temp_18_cmp_29_0
              #                    free a3
              #                    occupy a3 with temp_18_cmp_29_0
    bnez    a3, .UP_20_0
              #                    free a3
    j       .while.exit_30
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_18_cmp_29_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_20_arithop_32_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     238  label UP_20_0: 
.UP_20_0:
              #                     243  j_22_3 = i32 j_22_2 
              #                    occupy a5 with j_22_2
              #                    occupy a6 with j_22_3
    mv      a6, a5
              #                    free a5
              #                    free a6
              #                          jump label: while.body_30 
    j       .while.body_30
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_18_cmp_29_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_20_arithop_32_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     94   label while.body_30: 
.while.body_30:
              #                     98   temp_19_cmp_32_0 = icmp i32 Slt i_22_2, j_22_3 
              #                    occupy a4 with i_22_2
              #                    occupy a6 with j_22_3
              #                    occupy s2 with temp_19_cmp_32_0
    slt     s2,a4,a6
              #                    free a4
              #                    free a6
              #                    free s2
              #                     113  br i1 temp_19_cmp_32_0, label branch_short_circuit_p_true_207, label branch_short_circuit_c_false_207 
              #                    occupy s2 with temp_19_cmp_32_0
              #                    free s2
              #                    occupy s2 with temp_19_cmp_32_0
    bnez    s2, .branch_short_circuit_p_true_207
              #                    free s2
    j       .branch_short_circuit_c_false_207
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_18_cmp_29_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_20_arithop_32_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     110  label branch_short_circuit_p_true_207: 
.branch_short_circuit_p_true_207:
              #                     102  temp_21_ptr_of_arr_17_32 = GEP arr_17:Array:i32:[None] [Some(j_22_3)] 
              #                    occupy s3 with temp_21_ptr_of_arr_17_32
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with j_22_3
    mv      s4, a6
              #                    free a6
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with arr_17
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     104  temp_22_ele_of_arr_17_32_0 = load temp_21_ptr_of_arr_17_32:ptr->i32 
              #                    occupy s3 with temp_21_ptr_of_arr_17_32
              #                    occupy s5 with temp_22_ele_of_arr_17_32_0
    lw      s5,0(s3)
              #                    free s5
              #                    occupy s5 with temp_22_ele_of_arr_17_32_0
              #                    store to temp_22_ele_of_arr_17_32_0 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_22_ele_of_arr_17_32_0
              #                    free s3
              #                     105  mu arr_17:104 
              #                     107  temp_23_cmp_32_0 = icmp i32 Sgt temp_22_ele_of_arr_17_32_0, temp_20_arithop_32_0 
              #                    occupy s5 with temp_22_ele_of_arr_17_32_0
              #                    load from temp_22_ele_of_arr_17_32_0 in mem


    lw      s5,20(sp)
              #                    occupy s1 with temp_20_arithop_32_0
              #                    occupy s6 with temp_23_cmp_32_0
    slt     s6,s1,s5
              #                    free s5
              #                    occupy s5 with temp_22_ele_of_arr_17_32_0
              #                    store to temp_22_ele_of_arr_17_32_0 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_22_ele_of_arr_17_32_0
              #                    free s1
              #                    occupy s1 with temp_20_arithop_32_0
              #                    store to temp_20_arithop_32_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_20_arithop_32_0
              #                    free s6
              #                     112  br i1 temp_23_cmp_32_0, label branch_short_circuit_c_true_207, label branch_short_circuit_c_false_207 
              #                    occupy s6 with temp_23_cmp_32_0
              #                    free s6
              #                    occupy s6 with temp_23_cmp_32_0
    bnez    s6, .branch_short_circuit_c_true_207
              #                    free s6
              #                    occupy s6 with temp_23_cmp_32_0
              #                    store to temp_23_cmp_32_0 in mem offset legal
    sb      s6,19(sp)
              #                    release s6 with temp_23_cmp_32_0
              #                    occupy s1 with temp_20_arithop_32_0
              #                    load from temp_20_arithop_32_0 in mem


    lw      s1,36(sp)
              #                    occupy s3 with temp_21_ptr_of_arr_17_32
              #                    store to temp_21_ptr_of_arr_17_32 in mem offset legal
    sd      s3,24(sp)
              #                    release s3 with temp_21_ptr_of_arr_17_32
    j       .branch_short_circuit_c_false_207
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_18_cmp_29_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |     s3:Freed { symidx: temp_21_ptr_of_arr_17_32, tracked: true } |     s6:Freed { symidx: temp_23_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     108  label branch_short_circuit_c_true_207: 
.branch_short_circuit_c_true_207:
              #                     82   temp_16_arithop_34_0 = Sub i32 j_22_3, 1_0 
              #                    occupy a6 with j_22_3
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s4 with temp_16_arithop_34_0
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_18_cmp_29_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Occupied { symidx: j_22_3, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |     s3:Freed { symidx: temp_21_ptr_of_arr_17_32, tracked: true } |     s4:Occupied { symidx: temp_16_arithop_34_0, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: temp_23_cmp_32_0, tracked: true } |  released_gpr_count:3,released_fpr_count:24


    subw    s4,a6,s1
              #                    free a6
              #                    occupy a6 with j_22_3
              #                    store to j_22_3 in mem offset legal
    sw      a6,164(sp)
              #                    release a6 with j_22_3
              #                    free s1
              #                    free s4
              #                     83   (nop) 
              #                     252  j_22_3 = i32 temp_16_arithop_34_0 
              #                    occupy s4 with temp_16_arithop_34_0
              #                    occupy a6 with j_22_3
    mv      a6, s4
              #                    free s4
              #                    occupy s4 with temp_16_arithop_34_0
              #                    store to temp_16_arithop_34_0 in mem offset legal
    sw      s4,44(sp)
              #                    release s4 with temp_16_arithop_34_0
              #                    free a6
              #                          jump label: while.body_30 
              #                    occupy s2 with temp_19_cmp_32_0
              #                    store to temp_19_cmp_32_0 in mem offset legal
    sb      s2,41(sp)
              #                    release s2 with temp_19_cmp_32_0
              #                    occupy s6 with temp_23_cmp_32_0
              #                    store to temp_23_cmp_32_0 in mem offset legal
    sb      s6,19(sp)
              #                    release s6 with temp_23_cmp_32_0
              #                    occupy s1 with temp_20_arithop_32_0
              #                    load from temp_20_arithop_32_0 in mem


    lw      s1,36(sp)
              #                    occupy s3 with temp_21_ptr_of_arr_17_32
              #                    store to temp_21_ptr_of_arr_17_32 in mem offset legal
    sd      s3,24(sp)
              #                    release s3 with temp_21_ptr_of_arr_17_32
    j       .while.body_30
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_18_cmp_29_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_20_arithop_32_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     109  label branch_short_circuit_c_false_207: 
.branch_short_circuit_c_false_207:
              #                     115  (nop) 
              #                     118  br i1 temp_19_cmp_32_0, label branch_true_37, label UP_2_0 
              #                    occupy s2 with temp_19_cmp_32_0
              #                    free s2
              #                    occupy s2 with temp_19_cmp_32_0
    bnez    s2, .branch_true_37
              #                    free s2
    j       .UP_2_0
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_18_cmp_29_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_20_arithop_32_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     116  label branch_true_37: 
.branch_true_37:
              #                     281  untrack temp_18_cmp_29_0 
              #                    occupy a3 with temp_18_cmp_29_0
              #                    release a3 with temp_18_cmp_29_0
              #                     280  untrack temp_20_arithop_32_0 
              #                    occupy s1 with temp_20_arithop_32_0
              #                    release s1 with temp_20_arithop_32_0
              #                     70   temp_12_ptr_of_arr_17_38 = GEP arr_17:ptr->i32 [Some(i_22_2)] 
              #                    occupy a3 with temp_12_ptr_of_arr_17_38
    li      a3, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_22_2
    mv      s1, a4
              #                    free a4
    add     a3,a3,s1
              #                    free s1
    slli a3,a3,2
              #                    occupy a0 with arr_17
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     72   temp_13_ptr_of_arr_17_38 = GEP arr_17:Array:i32:[None] [Some(j_22_3)] 
              #                    occupy s3 with temp_13_ptr_of_arr_17_38
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with j_22_3
    mv      s4, a6
              #                    free a6
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with arr_17
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     74   temp_14_ele_of_arr_17_38_0 = load temp_13_ptr_of_arr_17_38:ptr->i32 
              #                    occupy s3 with temp_13_ptr_of_arr_17_38
              #                    occupy s5 with temp_14_ele_of_arr_17_38_0
    lw      s5,0(s3)
              #                    free s5
              #                    occupy s5 with temp_14_ele_of_arr_17_38_0
              #                    store to temp_14_ele_of_arr_17_38_0 in mem offset legal
    sw      s5,52(sp)
              #                    release s5 with temp_14_ele_of_arr_17_38_0
              #                    free s3
              #                     282  untrack temp_13_ptr_of_arr_17_38 
              #                    occupy s3 with temp_13_ptr_of_arr_17_38
              #                    release s3 with temp_13_ptr_of_arr_17_38
              #                     75   mu arr_17:74 
              #                     76   store temp_14_ele_of_arr_17_38_0:i32 temp_12_ptr_of_arr_17_38:ptr->i32 
              #                    occupy a3 with temp_12_ptr_of_arr_17_38
              #                    occupy s3 with temp_14_ele_of_arr_17_38_0
              #                    load from temp_14_ele_of_arr_17_38_0 in mem


    lw      s3,52(sp)
    sw      s3,0(a3)
              #                    free s3
              #                    free a3
              #                     284  untrack temp_12_ptr_of_arr_17_38 
              #                    occupy a3 with temp_12_ptr_of_arr_17_38
              #                    release a3 with temp_12_ptr_of_arr_17_38
              #                     283  untrack temp_14_ele_of_arr_17_38_0 
              #                    occupy s3 with temp_14_ele_of_arr_17_38_0
              #                    release s3 with temp_14_ele_of_arr_17_38_0
              #                     77   arr_17 = chi arr_17:76 
              #                     79   temp_15_arithop_38_0 = Add i32 i_22_2, 1_0 
              #                    occupy a4 with i_22_2
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy s3 with temp_15_arithop_38_0
    ADDW    s3,a4,a3
              #                    free a4
              #                    free a3
              #                    free s3
              #                     80   (nop) 
              #                     244  i_22_4 = i32 temp_15_arithop_38_0 
              #                    occupy s3 with temp_15_arithop_38_0
              #                    occupy s5 with i_22_4
    mv      s5, s3
              #                    free s3
              #                    occupy s3 with temp_15_arithop_38_0
              #                    store to temp_15_arithop_38_0 in mem offset legal
    sw      s3,48(sp)
              #                    release s3 with temp_15_arithop_38_0
              #                    free s5
              #                     285  untrack temp_15_arithop_38_0 
              #                          jump label: branch_false_37 
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |     s5:Freed { symidx: i_22_4, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     117  label branch_false_37: 
.branch_false_37:
              #                     245  i_22_5 = i32 i_22_4 
              #                    occupy s5 with i_22_4
              #                    occupy a3 with i_22_5
    mv      a3, s5
              #                    free s5
              #                    occupy s5 with i_22_4
              #                    store to i_22_4 in mem offset legal
    sw      s5,184(sp)
              #                    release s5 with i_22_4
              #                    free a3
              #                          jump label: while.head_42 
    j       .while.head_42
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: i_22_5, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     133  label while.head_42: 
.while.head_42:
              #                     120  temp_25_cmp_41_0 = icmp i32 Slt i_22_5, j_22_3 
              #                    occupy a3 with i_22_5
              #                    occupy a6 with j_22_3
              #                    occupy s1 with temp_25_cmp_41_0
    slt     s1,a3,a6
              #                    free a3
              #                    occupy a3 with i_22_5
              #                    store to i_22_5 in mem offset legal
    sw      a3,180(sp)
              #                    release a3 with i_22_5
              #                    free a6
              #                    free s1
              #                     134  br i1 temp_25_cmp_41_0, label branch_short_circuit_p_true_233, label branch_short_circuit_c_false_233 
              #                    occupy s1 with temp_25_cmp_41_0
              #                    free s1
              #                    occupy s1 with temp_25_cmp_41_0
    bnez    s1, .branch_short_circuit_p_true_233
              #                    free s1
    j       .branch_short_circuit_c_false_233
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_25_cmp_41_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     130  label branch_short_circuit_p_true_233: 
.branch_short_circuit_p_true_233:
              #                     122  temp_26_ptr_of_arr_17_41 = GEP arr_17:Array:i32:[None] [Some(i_22_5)] 
              #                    occupy a3 with temp_26_ptr_of_arr_17_41
    li      a3, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_22_5
              #                    load from i_22_5 in mem


    lw      s4,180(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with i_22_5
              #                    store to i_22_5 in mem offset legal
    sw      s4,180(sp)
              #                    release s4 with i_22_5
    add     a3,a3,s3
              #                    free s3
    slli a3,a3,2
              #                    occupy a0 with arr_17
    add     a3,a3,a0
              #                    free a0
              #                    occupy a0 with arr_17
              #                    store to arr_17 in mem offset legal
    sd      a0,208(sp)
              #                    release a0 with arr_17
              #                    free a3
              #                     124  temp_27_ele_of_arr_17_41_0 = load temp_26_ptr_of_arr_17_41:ptr->i32 
              #                    occupy a3 with temp_26_ptr_of_arr_17_41
              #                    occupy a0 with temp_27_ele_of_arr_17_41_0
    lw      a0,0(a3)
              #                    free a0
              #                    occupy a0 with temp_27_ele_of_arr_17_41_0
              #                    store to temp_27_ele_of_arr_17_41_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_27_ele_of_arr_17_41_0
              #                    free a3
              #                     125  mu arr_17:124 
              #                     127  temp_28_cmp_41_0 = icmp i32 Slt temp_27_ele_of_arr_17_41_0, temp_1_ele_of_arr_17_22_0 
              #                    occupy a0 with temp_27_ele_of_arr_17_41_0
              #                    load from temp_27_ele_of_arr_17_41_0 in mem


    lw      a0,4(sp)
              #                    occupy a7 with temp_1_ele_of_arr_17_22_0
              #                    occupy s3 with temp_28_cmp_41_0
    slt     s3,a0,a7
              #                    free a0
              #                    occupy a0 with temp_27_ele_of_arr_17_41_0
              #                    store to temp_27_ele_of_arr_17_41_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_27_ele_of_arr_17_41_0
              #                    free a7
              #                    occupy a7 with temp_1_ele_of_arr_17_22_0
              #                    store to temp_1_ele_of_arr_17_22_0 in mem offset legal
    sw      a7,140(sp)
              #                    release a7 with temp_1_ele_of_arr_17_22_0
              #                    free s3
              #                     132  br i1 temp_28_cmp_41_0, label branch_short_circuit_c_true_233, label branch_short_circuit_c_false_233 
              #                    occupy s3 with temp_28_cmp_41_0
              #                    free s3
              #                    occupy s3 with temp_28_cmp_41_0
    bnez    s3, .branch_short_circuit_c_true_233
              #                    free s3
              #                    occupy a0 with arr_17
              #                    load from arr_17 in mem
    ld      a0,208(sp)
              #                    occupy a7 with temp_1_ele_of_arr_17_22_0
              #                    load from temp_1_ele_of_arr_17_22_0 in mem


    lw      a7,140(sp)
              #                    occupy a3 with temp_26_ptr_of_arr_17_41
              #                    store to temp_26_ptr_of_arr_17_41 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_26_ptr_of_arr_17_41
              #                    occupy s3 with temp_28_cmp_41_0
              #                    store to temp_28_cmp_41_0 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_28_cmp_41_0
    j       .branch_short_circuit_c_false_233
              #                    regtab     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_26_ptr_of_arr_17_41, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     s1:Freed { symidx: temp_25_cmp_41_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |     s3:Freed { symidx: temp_28_cmp_41_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     128  label branch_short_circuit_c_true_233: 
.branch_short_circuit_c_true_233:
              #                     290  untrack temp_16_arithop_34_0 
              #                     289  untrack temp_21_ptr_of_arr_17_32 
              #                     288  untrack temp_23_cmp_32_0 
              #                     287  untrack temp_22_ele_of_arr_17_32_0 
              #                     286  untrack temp_19_cmp_32_0 
              #                    occupy s2 with temp_19_cmp_32_0
              #                    release s2 with temp_19_cmp_32_0
              #                     67   temp_11_arithop_43_0 = Add i32 i_22_5, 1_0 
              #                    occupy a0 with i_22_5
              #                    load from i_22_5 in mem


    lw      a0,180(sp)
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with temp_11_arithop_43_0
    ADDW    s2,a0,a7
              #                    free a0
              #                    occupy a0 with i_22_5
              #                    store to i_22_5 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with i_22_5
              #                    free a7
              #                    free s2
              #                     68   (nop) 
              #                     250  i_22_5 = i32 temp_11_arithop_43_0 
              #                    occupy s2 with temp_11_arithop_43_0
              #                    occupy a0 with i_22_5
    mv      a0, s2
              #                    free s2
              #                    occupy s2 with temp_11_arithop_43_0
              #                    store to temp_11_arithop_43_0 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with temp_11_arithop_43_0
              #                    free a0
              #                          jump label: while.head_42 
              #                    occupy s2 with temp_19_cmp_32_0
              #                    load from temp_19_cmp_32_0 in mem


    lb      s2,41(sp)
              #                    occupy a0 with i_22_5
              #                    store to i_22_5 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with i_22_5
              #                    occupy a0 with arr_17
              #                    load from arr_17 in mem
    ld      a0,208(sp)
              #                    occupy a7 with temp_1_ele_of_arr_17_22_0
              #                    load from temp_1_ele_of_arr_17_22_0 in mem


    lw      a7,140(sp)
              #                    occupy s1 with temp_25_cmp_41_0
              #                    store to temp_25_cmp_41_0 in mem offset legal
    sb      s1,18(sp)
              #                    release s1 with temp_25_cmp_41_0
              #                    occupy a3 with temp_26_ptr_of_arr_17_41
              #                    store to temp_26_ptr_of_arr_17_41 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_26_ptr_of_arr_17_41
              #                    occupy a3 with i_22_5
              #                    load from i_22_5 in mem


    lw      a3,180(sp)
              #                    occupy s3 with temp_28_cmp_41_0
              #                    store to temp_28_cmp_41_0 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_28_cmp_41_0
    j       .while.head_42
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_25_cmp_41_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     129  label branch_short_circuit_c_false_233: 
.branch_short_circuit_c_false_233:
              #                     136  (nop) 
              #                     139  br i1 temp_25_cmp_41_0, label branch_true_46, label UP_27_0 
              #                    occupy s1 with temp_25_cmp_41_0
              #                    free s1
              #                    occupy s1 with temp_25_cmp_41_0
    bnez    s1, .branch_true_46
              #                    free s1
    j       .UP_27_0
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_25_cmp_41_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     137  label branch_true_46: 
.branch_true_46:
              #                     55   temp_7_ptr_of_arr_17_47 = GEP arr_17:ptr->i32 [Some(j_22_3)] 
              #                    occupy a3 with temp_7_ptr_of_arr_17_47
    li      a3, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with j_22_3
    mv      s3, a6
              #                    free a6
              #                    occupy a6 with j_22_3
              #                    store to j_22_3 in mem offset legal
    sw      a6,164(sp)
              #                    release a6 with j_22_3
    add     a3,a3,s3
              #                    free s3
    slli a3,a3,2
              #                    occupy a0 with arr_17
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     57   temp_8_ptr_of_arr_17_47 = GEP arr_17:Array:i32:[None] [Some(i_22_5)] 
              #                    occupy a6 with temp_8_ptr_of_arr_17_47
    li      a6, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_22_5
              #                    load from i_22_5 in mem


    lw      s4,180(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with i_22_5
              #                    store to i_22_5 in mem offset legal
    sw      s4,180(sp)
              #                    release s4 with i_22_5
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
              #                    occupy a0 with arr_17
    add     a6,a6,a0
              #                    free a0
              #                    occupy a0 with arr_17
              #                    store to arr_17 in mem offset legal
    sd      a0,208(sp)
              #                    release a0 with arr_17
              #                    free a6
              #                     59   temp_9_ele_of_arr_17_47_0 = load temp_8_ptr_of_arr_17_47:ptr->i32 
              #                    occupy a6 with temp_8_ptr_of_arr_17_47
              #                    occupy a0 with temp_9_ele_of_arr_17_47_0
    lw      a0,0(a6)
              #                    free a0
              #                    occupy a0 with temp_9_ele_of_arr_17_47_0
              #                    store to temp_9_ele_of_arr_17_47_0 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_9_ele_of_arr_17_47_0
              #                    free a6
              #                     60   mu arr_17:59 
              #                     61   store temp_9_ele_of_arr_17_47_0:i32 temp_7_ptr_of_arr_17_47:ptr->i32 
              #                    occupy a3 with temp_7_ptr_of_arr_17_47
              #                    occupy a0 with temp_9_ele_of_arr_17_47_0
              #                    load from temp_9_ele_of_arr_17_47_0 in mem


    lw      a0,84(sp)
    sw      a0,0(a3)
              #                    free a0
              #                    occupy a0 with temp_9_ele_of_arr_17_47_0
              #                    store to temp_9_ele_of_arr_17_47_0 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_9_ele_of_arr_17_47_0
              #                    free a3
              #                     62   arr_17 = chi arr_17:61 
              #                     64   temp_10_arithop_47_0 = Sub i32 j_22_3, 1_0 
              #                    occupy a0 with j_22_3
              #                    load from j_22_3 in mem


    lw      a0,164(sp)
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_10_arithop_47_0
              #                    regtab:    a0:Occupied { symidx: j_22_3, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_7_ptr_of_arr_17_47, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: temp_8_ptr_of_arr_17_47, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_25_cmp_41_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |     s3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s4:Occupied { symidx: temp_10_arithop_47_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s4,a0,s3
              #                    free a0
              #                    occupy a0 with j_22_3
              #                    store to j_22_3 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with j_22_3
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_10_arithop_47_0
              #                    store to temp_10_arithop_47_0 in mem offset legal
    sw      s4,80(sp)
              #                    release s4 with temp_10_arithop_47_0
              #                     65   (nop) 
              #                     246  j_22_5 = i32 temp_10_arithop_47_0 
              #                    occupy a0 with temp_10_arithop_47_0
              #                    load from temp_10_arithop_47_0 in mem


    lw      a0,80(sp)
              #                    occupy s3 with j_22_5
    mv      s3, a0
              #                    free a0
              #                    occupy a0 with temp_10_arithop_47_0
              #                    store to temp_10_arithop_47_0 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with temp_10_arithop_47_0
              #                    free s3
              #                    occupy s3 with j_22_5
              #                    store to j_22_5 in mem offset legal
    sw      s3,160(sp)
              #                    release s3 with j_22_5
              #                          jump label: branch_false_46 
    j       .branch_false_46
              #                    regtab     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_7_ptr_of_arr_17_47, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: temp_8_ptr_of_arr_17_47, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_25_cmp_41_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     138  label branch_false_46: 
.branch_false_46:
              #                     247  j_22_2 = i32 j_22_5 
              #                    occupy a0 with j_22_5
              #                    load from j_22_5 in mem


    lw      a0,160(sp)
              #                    occupy a5 with j_22_2
    mv      a5, a0
              #                    free a0
              #                    occupy a0 with j_22_5
              #                    store to j_22_5 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with j_22_5
              #                    free a5
              #                     248  i_22_2 = i32 i_22_5 
              #                    occupy a0 with i_22_5
              #                    load from i_22_5 in mem


    lw      a0,180(sp)
              #                    occupy a4 with i_22_2
    mv      a4, a0
              #                    free a0
              #                    occupy a0 with i_22_5
              #                    store to i_22_5 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with i_22_5
              #                    free a4
              #                          jump label: while.head_30 
              #                    occupy a6 with temp_8_ptr_of_arr_17_47
              #                    store to temp_8_ptr_of_arr_17_47 in mem offset legal
    sd      a6,88(sp)
              #                    release a6 with temp_8_ptr_of_arr_17_47
              #                    occupy s2 with temp_19_cmp_32_0
              #                    store to temp_19_cmp_32_0 in mem offset legal
    sb      s2,41(sp)
              #                    release s2 with temp_19_cmp_32_0
              #                    occupy a0 with arr_17
              #                    load from arr_17 in mem
    ld      a0,208(sp)
              #                    occupy s1 with temp_25_cmp_41_0
              #                    store to temp_25_cmp_41_0 in mem offset legal
    sb      s1,18(sp)
              #                    release s1 with temp_25_cmp_41_0
              #                    occupy a3 with temp_7_ptr_of_arr_17_47
              #                    store to temp_7_ptr_of_arr_17_47 in mem offset legal
    sd      a3,96(sp)
              #                    release a3 with temp_7_ptr_of_arr_17_47
    j       .while.head_30
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_25_cmp_41_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     240  label UP_27_0: 
.UP_27_0:
              #                     249  j_22_5 = i32 j_22_3 
              #                    occupy a6 with j_22_3
              #                    occupy a3 with j_22_5
    mv      a3, a6
              #                    free a6
              #                    occupy a6 with j_22_3
              #                    store to j_22_3 in mem offset legal
    sw      a6,164(sp)
              #                    release a6 with j_22_3
              #                    free a3
              #                          jump label: branch_false_46 
              #                    occupy a6 with temp_8_ptr_of_arr_17_47
              #                    load from temp_8_ptr_of_arr_17_47 in mem
    ld      a6,88(sp)
              #                    occupy a0 with arr_17
              #                    store to arr_17 in mem offset legal
    sd      a0,208(sp)
              #                    release a0 with arr_17
              #                    occupy a3 with j_22_5
              #                    store to j_22_5 in mem offset legal
    sw      a3,160(sp)
              #                    release a3 with j_22_5
              #                    occupy a3 with temp_7_ptr_of_arr_17_47
              #                    load from temp_7_ptr_of_arr_17_47 in mem
    ld      a3,96(sp)
    j       .branch_false_46
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_18_cmp_29_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a6:Freed { symidx: j_22_3, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_20_arithop_32_0, tracked: true } |     s2:Freed { symidx: temp_19_cmp_32_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     239  label UP_2_0: 
.UP_2_0:
              #                     251  i_22_4 = i32 i_22_2 
              #                    occupy a4 with i_22_2
              #                    occupy s3 with i_22_4
    mv      s3, a4
              #                    free a4
              #                    free s3
              #                          jump label: branch_false_37 
              #                    occupy s3 with i_22_4
              #                    store to i_22_4 in mem offset legal
    sw      s3,184(sp)
              #                    release s3 with i_22_4
              #                    occupy s5 with i_22_4
              #                    load from i_22_4 in mem


    lw      s5,184(sp)
              #                    occupy s1 with temp_20_arithop_32_0
              #                    store to temp_20_arithop_32_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_20_arithop_32_0
              #                    occupy a3 with temp_18_cmp_29_0
              #                    store to temp_18_cmp_29_0 in mem offset legal
    sb      a3,42(sp)
              #                    release a3 with temp_18_cmp_29_0
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_18_cmp_29_0, tracked: true } |     a4:Freed { symidx: i_22_2, tracked: true } |     a5:Freed { symidx: j_22_2, tracked: true } |     a7:Freed { symidx: temp_1_ele_of_arr_17_22_0, tracked: true } |     s1:Freed { symidx: temp_20_arithop_32_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     95   label while.exit_30: 
.while.exit_30:
              #                     271  untrack j_22_2 
              #                    occupy a5 with j_22_2
              #                    release a5 with j_22_2
              #                     37   temp_2_ptr_of_arr_17_22 = GEP arr_17:ptr->i32 [Some(i_22_2)] 
              #                    occupy a5 with temp_2_ptr_of_arr_17_22
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_22_2
    mv      a6, a4
              #                    free a4
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a0 with arr_17
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                     38   store temp_1_ele_of_arr_17_22_0:i32 temp_2_ptr_of_arr_17_22:ptr->i32 
              #                    occupy a5 with temp_2_ptr_of_arr_17_22
              #                    occupy a7 with temp_1_ele_of_arr_17_22_0
    sw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                     278  untrack temp_2_ptr_of_arr_17_22 
              #                    occupy a5 with temp_2_ptr_of_arr_17_22
              #                    release a5 with temp_2_ptr_of_arr_17_22
              #                     275  untrack temp_1_ele_of_arr_17_22_0 
              #                    occupy a7 with temp_1_ele_of_arr_17_22_0
              #                    release a7 with temp_1_ele_of_arr_17_22_0
              #                     39   arr_17 = chi arr_17:38 
              #                     41    
              #                     43   temp_3_arithop_22_0 = Sub i32 i_22_2, 1_0 
              #                    occupy a4 with i_22_2
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a7 with temp_3_arithop_22_0
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_18_cmp_29_0, tracked: true } |     a4:Occupied { symidx: i_22_2, tracked: true, occupy_count: 1 } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a7:Occupied { symidx: temp_3_arithop_22_0, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_20_arithop_32_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a7,a4,a5
              #                    free a4
              #                    free a5
              #                    free a7
              #                     44   (nop) 
              #                     46   temp_4_ret_of_QuickSort_22_0 =  Call i32 QuickSort_0(arr_17, low_17_0, temp_3_arithop_22_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_20_arithop_32_0
              #                    store to temp_20_arithop_32_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_20_arithop_32_0
              #                    occupy a0 with arr_17
              #                    store to arr_17 in mem offset legal
    sd      a0,208(sp)
              #                    release a0 with arr_17
              #                    occupy a1 with low_17_0
              #                    store to low_17_0 in mem offset legal
    sw      a1,204(sp)
              #                    release a1 with low_17_0
              #                    occupy a2 with high_17_0
              #                    store to high_17_0 in mem offset legal
    sw      a2,200(sp)
              #                    release a2 with high_17_0
              #                    occupy a3 with temp_18_cmp_29_0
              #                    store to temp_18_cmp_29_0 in mem offset legal
    sb      a3,42(sp)
              #                    release a3 with temp_18_cmp_29_0
              #                    occupy a4 with i_22_2
              #                    store to i_22_2 in mem offset legal
    sw      a4,188(sp)
              #                    release a4 with i_22_2
              #                    occupy a7 with temp_3_arithop_22_0
              #                    store to temp_3_arithop_22_0 in mem offset legal
    sw      a7,120(sp)
              #                    release a7 with temp_3_arithop_22_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_17_0
              #                    load from arr_17 in mem
    ld      a0,208(sp)
              #                    occupy a1 with _anonymous_of_low_17_0_0
              #                    load from low_17_0 in mem


    lw      a1,204(sp)
              #                    occupy a2 with _anonymous_of_temp_3_arithop_22_0_0
              #                    load from temp_3_arithop_22_0 in mem


    lw      a2,120(sp)
              #                    arg load ended


    call    QuickSort
              #                     277  untrack temp_3_arithop_22_0 
              #                     276  untrack low_17_0 
              #                     47   (nop) 
              #                     49   temp_5_arithop_22_0 = Add i32 i_22_2, 1_0 
              #                    occupy a1 with i_22_2
              #                    load from i_22_2 in mem


    lw      a1,188(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_5_arithop_22_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     272  untrack i_22_2 
              #                    occupy a1 with i_22_2
              #                    release a1 with i_22_2
              #                     50   (nop) 
              #                     52   temp_6_ret_of_QuickSort_22_0 =  Call i32 QuickSort_0(arr_17, temp_5_arithop_22_0, high_17_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_4_ret_of_QuickSort_22_0
              #                    store to temp_4_ret_of_QuickSort_22_0 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_4_ret_of_QuickSort_22_0
              #                    occupy a3 with temp_5_arithop_22_0
              #                    store to temp_5_arithop_22_0 in mem offset legal
    sw      a3,112(sp)
              #                    release a3 with temp_5_arithop_22_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_17_0
              #                    load from arr_17 in mem
    ld      a0,208(sp)
              #                    occupy a1 with _anonymous_of_temp_5_arithop_22_0_0
              #                    load from temp_5_arithop_22_0 in mem


    lw      a1,112(sp)
              #                    occupy a2 with _anonymous_of_high_17_0_0
              #                    load from high_17_0 in mem


    lw      a2,200(sp)
              #                    arg load ended


    call    QuickSort
              #                     274  untrack high_17_0 
              #                     273  untrack temp_5_arithop_22_0 
              #                     53   (nop) 
              #                          jump label: branch_false_21 
              #                    occupy a0 with temp_6_ret_of_QuickSort_22_0
              #                    store to temp_6_ret_of_QuickSort_22_0 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_6_ret_of_QuickSort_22_0
              #                    occupy a0 with arr_17
              #                    load from arr_17 in mem
    ld      a0,208(sp)
              #                    occupy a2 with high_17_0
              #                    load from high_17_0 in mem


    lw      a2,200(sp)
              #                    occupy a3 with temp_17_cmp_20_0
              #                    load from temp_17_cmp_20_0 in mem


    lb      a3,43(sp)
              #                    occupy a1 with low_17_0
              #                    load from low_17_0 in mem


    lw      a1,204(sp)
    j       .branch_false_21
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17_0, tracked: true } |     a2:Freed { symidx: high_17_0, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     87   label branch_false_21: 
.branch_false_21:
              #                     267  untrack high_17_0 
              #                    occupy a2 with high_17_0
              #                    release a2 with high_17_0
              #                     266  untrack temp_17_cmp_20_0 
              #                    occupy a3 with temp_17_cmp_20_0
              #                    release a3 with temp_17_cmp_20_0
              #                     265  untrack temp_2_ptr_of_arr_17_22 
              #                     264  untrack temp_1_ele_of_arr_17_22_0 
              #                     263  untrack i_22_1 
              #                     262  untrack i_22_2 
              #                     261  untrack j_22_1 
              #                     260  untrack j_22_2 
              #                     259  untrack low_17_0 
              #                    occupy a1 with low_17_0
              #                    release a1 with low_17_0
              #                     258  untrack temp_5_arithop_22_0 
              #                     257  untrack temp_3_arithop_22_0 
              #                     256  untrack temp_0_ptr_of_arr_17_22 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     222  mu arr_17:21 
              #                     279  untrack arr_17 
              #                    occupy a0 with arr_17
              #                    release a0 with arr_17
              #                     21   ret 0_0 
              #                    load from ra_QuickSort_0 in mem
    ld      ra,288(sp)
              #                    load from s0_QuickSort_0 in mem
    ld      s0,280(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,296
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     19   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 184|s0_main:8 at 176|a:40 at 136|temp_30_ptr_of_a_58:8 at 128|temp_31_ptr_of_a_58:8 at 120|temp_32_ptr_of_a_58:8 at 112|temp_33_ptr_of_a_58:8 at 104|temp_34_ptr_of_a_58:8 at 96|temp_35_ptr_of_a_58:8 at 88|temp_36_ptr_of_a_58:8 at 80|temp_37_ptr_of_a_58:8 at 72|temp_38_ptr_of_a_58:8 at 64|temp_39_ptr_of_a_58:8 at 56|i _s58 _i0:4 at 52|i _s58 _i3:4 at 48|tmp _s58 _i0:4 at 44|none:4 at 40|temp_40_ele_ptr_of_a_58:8 at 32|temp_41_ret_of_QuickSort _s58 _i0:4 at 28|tmp _s78 _i0:4 at 24|temp_42_ptr_of_a_58:8 at 16|temp_43_ele_of_a_58 _s78 _i0:4 at 12|temp_44_arithop _s78 _i0:4 at 8|temp_45_value_from_ptr _s76 _i0:4 at 4|temp_46_cmp _s76 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-192
              #                    store to ra_main_0 in mem offset legal
    sd      ra,184(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,176(sp)
    addi    s0,sp,192
              #                     223  n_0_1 = chi n_0_0:19 
              #                     143  alloc Array:i32:[Some(10_0)] [a_58] 
              #                     144  alloc ptr->i32 [temp_30_ptr_of_a_58_58] 
              #                     148  alloc ptr->i32 [temp_31_ptr_of_a_58_58] 
              #                     152  alloc ptr->i32 [temp_32_ptr_of_a_58_58] 
              #                     156  alloc ptr->i32 [temp_33_ptr_of_a_58_58] 
              #                     160  alloc ptr->i32 [temp_34_ptr_of_a_58_58] 
              #                     164  alloc ptr->i32 [temp_35_ptr_of_a_58_58] 
              #                     168  alloc ptr->i32 [temp_36_ptr_of_a_58_58] 
              #                     172  alloc ptr->i32 [temp_37_ptr_of_a_58_58] 
              #                     176  alloc ptr->i32 [temp_38_ptr_of_a_58_58] 
              #                     180  alloc ptr->i32 [temp_39_ptr_of_a_58_58] 
              #                     184  alloc i32 [i_58] 
              #                     187  alloc i32 [tmp_58] 
              #                     190  alloc ptr->i32 [temp_40_ele_ptr_of_a_58_58] 
              #                     192  alloc i32 [temp_41_ret_of_QuickSort_58] 
              #                     197  alloc i32 [tmp_78] 
              #                     199  alloc ptr->i32 [temp_42_ptr_of_a_58_78] 
              #                     201  alloc i32 [temp_43_ele_of_a_58_78] 
              #                     208  alloc i32 [temp_44_arithop_78] 
              #                     211  alloc i32 [temp_45_value_from_ptr_76] 
              #                     214  alloc i1 [temp_46_cmp_76] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     140  store 10_0:i32 *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with 10_0
    li      a1, 10
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     141  n_0_2 = chi n_0_1:140 
              #                     142   
              #                     145  temp_30_ptr_of_a_58_58 = GEP a_58_0:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a2 with temp_30_ptr_of_a_58_58
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     146  store 4_0:i32 temp_30_ptr_of_a_58_58:ptr->i32 
              #                    occupy a2 with temp_30_ptr_of_a_58_58
              #                    occupy a4 with 4_0
    li      a4, 4
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     294  untrack temp_30_ptr_of_a_58_58 
              #                    occupy a2 with temp_30_ptr_of_a_58_58
              #                    release a2 with temp_30_ptr_of_a_58_58
              #                     147  a_58_1 = chi a_58_0:146 
              #                     149  temp_31_ptr_of_a_58_58 = GEP a_58_1:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a2 with temp_31_ptr_of_a_58_58
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     150  store 3_0:i32 temp_31_ptr_of_a_58_58:ptr->i32 
              #                    occupy a2 with temp_31_ptr_of_a_58_58
              #                    occupy a6 with 3_0
    li      a6, 3
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     301  untrack temp_31_ptr_of_a_58_58 
              #                    occupy a2 with temp_31_ptr_of_a_58_58
              #                    release a2 with temp_31_ptr_of_a_58_58
              #                     151  a_58_2 = chi a_58_1:150 
              #                     153  temp_32_ptr_of_a_58_58 = GEP a_58_2:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy a2 with temp_32_ptr_of_a_58_58
    li      a2, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 2
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     154  store 9_0:i32 temp_32_ptr_of_a_58_58:ptr->i32 
              #                    occupy a2 with temp_32_ptr_of_a_58_58
              #                    occupy s1 with 9_0
    li      s1, 9
    sw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                     302  untrack temp_32_ptr_of_a_58_58 
              #                    occupy a2 with temp_32_ptr_of_a_58_58
              #                    release a2 with temp_32_ptr_of_a_58_58
              #                     155  a_58_3 = chi a_58_2:154 
              #                     157  temp_33_ptr_of_a_58_58 = GEP a_58_3:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy a2 with temp_33_ptr_of_a_58_58
    li      a2, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 3
    add     a2,a2,s2
              #                    free s2
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     158  store 2_0:i32 temp_33_ptr_of_a_58_58:ptr->i32 
              #                    occupy a2 with temp_33_ptr_of_a_58_58
              #                    occupy s3 with 2_0
    li      s3, 2
    sw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                     299  untrack temp_33_ptr_of_a_58_58 
              #                    occupy a2 with temp_33_ptr_of_a_58_58
              #                    release a2 with temp_33_ptr_of_a_58_58
              #                     159  a_58_4 = chi a_58_3:158 
              #                     161  temp_34_ptr_of_a_58_58 = GEP a_58_4:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy a2 with temp_34_ptr_of_a_58_58
    li      a2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 4
    add     a2,a2,s4
              #                    free s4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     162  store 0_0:i32 temp_34_ptr_of_a_58_58:ptr->i32 
              #                    occupy a2 with temp_34_ptr_of_a_58_58
              #                    occupy s5 with 0_0
    li      s5, 0
    sw      s5,0(a2)
              #                    free s5
              #                    free a2
              #                     298  untrack temp_34_ptr_of_a_58_58 
              #                    occupy a2 with temp_34_ptr_of_a_58_58
              #                    release a2 with temp_34_ptr_of_a_58_58
              #                     163  a_58_5 = chi a_58_4:162 
              #                     165  temp_35_ptr_of_a_58_58 = GEP a_58_5:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a2 with temp_35_ptr_of_a_58_58
    li      a2, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 5
    add     a2,a2,s6
              #                    free s6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     166  store 1_0:i32 temp_35_ptr_of_a_58_58:ptr->i32 
              #                    occupy a2 with temp_35_ptr_of_a_58_58
              #                    occupy s7 with 1_0
    li      s7, 1
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     291  untrack temp_35_ptr_of_a_58_58 
              #                    occupy a2 with temp_35_ptr_of_a_58_58
              #                    release a2 with temp_35_ptr_of_a_58_58
              #                     167  a_58_6 = chi a_58_5:166 
              #                     169  temp_36_ptr_of_a_58_58 = GEP a_58_6:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a2 with temp_36_ptr_of_a_58_58
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     170  store 6_0:i32 temp_36_ptr_of_a_58_58:ptr->i32 
              #                    occupy a2 with temp_36_ptr_of_a_58_58
              #                    occupy s7 with 6_0
    li      s7, 6
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     300  untrack temp_36_ptr_of_a_58_58 
              #                    occupy a2 with temp_36_ptr_of_a_58_58
              #                    release a2 with temp_36_ptr_of_a_58_58
              #                     171  a_58_7 = chi a_58_6:170 
              #                     173  temp_37_ptr_of_a_58_58 = GEP a_58_7:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a2 with temp_37_ptr_of_a_58_58
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 7
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     174  store 5_0:i32 temp_37_ptr_of_a_58_58:ptr->i32 
              #                    occupy a2 with temp_37_ptr_of_a_58_58
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     295  untrack temp_37_ptr_of_a_58_58 
              #                    occupy a2 with temp_37_ptr_of_a_58_58
              #                    release a2 with temp_37_ptr_of_a_58_58
              #                     175  a_58_8 = chi a_58_7:174 
              #                     177  temp_38_ptr_of_a_58_58 = GEP a_58_8:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a2 with temp_38_ptr_of_a_58_58
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 8
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     178  store 7_0:i32 temp_38_ptr_of_a_58_58:ptr->i32 
              #                    occupy a2 with temp_38_ptr_of_a_58_58
              #                    occupy s7 with 7_0
    li      s7, 7
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     292  untrack temp_38_ptr_of_a_58_58 
              #                    occupy a2 with temp_38_ptr_of_a_58_58
              #                    release a2 with temp_38_ptr_of_a_58_58
              #                     179  a_58_9 = chi a_58_8:178 
              #                     181  temp_39_ptr_of_a_58_58 = GEP a_58_9:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a2 with temp_39_ptr_of_a_58_58
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 9
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     182  store 8_0:i32 temp_39_ptr_of_a_58_58:ptr->i32 
              #                    occupy a2 with temp_39_ptr_of_a_58_58
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     296  untrack temp_39_ptr_of_a_58_58 
              #                    occupy a2 with temp_39_ptr_of_a_58_58
              #                    release a2 with temp_39_ptr_of_a_58_58
              #                     183  a_58_10 = chi a_58_9:182 
              #                     185   
              #                     186  (nop) 
              #                     188   
              #                     189  (nop) 
              #                     191  temp_40_ele_ptr_of_a_58_58 = GEP a_58_10:Array:i32:[Some(10_0)] [] 
              #                    occupy a2 with temp_40_ele_ptr_of_a_58_58
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     193  temp_41_ret_of_QuickSort_58_0 =  Call i32 QuickSort_0(temp_40_ele_ptr_of_a_58_58, 0_0, 9_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_40_ele_ptr_of_a_58_58
              #                    store to temp_40_ele_ptr_of_a_58_58 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_40_ele_ptr_of_a_58_58
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_40_ele_ptr_of_a_58_58_0
              #                    load from temp_40_ele_ptr_of_a_58_58 in mem
    ld      a0,32(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_9_0_0
    li      a2, 9
              #                    arg load ended


    call    QuickSort
              #                     297  untrack temp_40_ele_ptr_of_a_58_58 
              #                     224  mu a_58_10:193 
              #                     225  a_58_11 = chi a_58_10:193 
              #                     194  (nop) 
              #                     253  i_58_3 = i32 temp_41_ret_of_QuickSort_58_0 
              #                    occupy a0 with temp_41_ret_of_QuickSort_58_0
              #                    occupy a1 with i_58_3
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     293  untrack temp_41_ret_of_QuickSort_58_0 
              #                    occupy a0 with temp_41_ret_of_QuickSort_58_0
              #                    release a0 with temp_41_ret_of_QuickSort_58_0
              #                          jump label: while.head_77 
    j       .while.head_77
              #                    regtab     a1:Freed { symidx: i_58_3, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     216  label while.head_77: 
.while.head_77:
              #                     212  temp_45_value_from_ptr_76_0 = load *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a2 with temp_45_value_from_ptr_76_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     213  mu n_0_2:212 
              #                     215  temp_46_cmp_76_0 = icmp i32 Slt i_58_3, temp_45_value_from_ptr_76_0 
              #                    occupy a1 with i_58_3
              #                    occupy a2 with temp_45_value_from_ptr_76_0
              #                    occupy a3 with temp_46_cmp_76_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     219  br i1 temp_46_cmp_76_0, label while.body_77, label while.exit_77 
              #                    occupy a3 with temp_46_cmp_76_0
              #                    free a3
              #                    occupy a3 with temp_46_cmp_76_0
    bnez    a3, .while.body_77
              #                    free a3
    j       .while.exit_77
              #                    regtab     a1:Freed { symidx: i_58_3, tracked: true } |     a2:Freed { symidx: temp_45_value_from_ptr_76_0, tracked: true } |     a3:Freed { symidx: temp_46_cmp_76_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     217  label while.body_77: 
.while.body_77:
              #                     198   
              #                     200  temp_42_ptr_of_a_58_78 = GEP a_58_11:Array:i32:[Some(10_0)] [Some(i_58_3)] 
              #                    occupy a0 with temp_42_ptr_of_a_58_78
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_58_3
    mv      a4, a1
              #                    free a1
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,136
              #                    free a0
              #                     202  temp_43_ele_of_a_58_78_0 = load temp_42_ptr_of_a_58_78:ptr->i32 
              #                    occupy a0 with temp_42_ptr_of_a_58_78
              #                    occupy a5 with temp_43_ele_of_a_58_78_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     203  mu a_58_11:202 
              #                     204  (nop) 
              #                     205   Call void putint_0(temp_43_ele_of_a_58_78_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_42_ptr_of_a_58_78
              #                    store to temp_42_ptr_of_a_58_78 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_42_ptr_of_a_58_78
              #                    occupy a1 with i_58_3
              #                    store to i_58_3 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with i_58_3
              #                    occupy a2 with temp_45_value_from_ptr_76_0
              #                    store to temp_45_value_from_ptr_76_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_45_value_from_ptr_76_0
              #                    occupy a3 with temp_46_cmp_76_0
              #                    store to temp_46_cmp_76_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_46_cmp_76_0
              #                    occupy a5 with temp_43_ele_of_a_58_78_0
              #                    store to temp_43_ele_of_a_58_78_0 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_43_ele_of_a_58_78_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_43_ele_of_a_58_78_0_0
              #                    load from temp_43_ele_of_a_58_78_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     206  (nop) 
              #                     207   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     209  temp_44_arithop_78_0 = Add i32 i_58_3, 1_0 
              #                    occupy a0 with i_58_3
              #                    load from i_58_3 in mem


    lw      a0,48(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_44_arithop_78_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     210  (nop) 
              #                     254  i_58_3 = i32 temp_44_arithop_78_0 
              #                    occupy a2 with temp_44_arithop_78_0
              #                    occupy a0 with i_58_3
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_77 
              #                    occupy a0 with i_58_3
              #                    store to i_58_3 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with i_58_3
              #                    occupy a1 with i_58_3
              #                    load from i_58_3 in mem


    lw      a1,48(sp)
              #                    occupy a2 with temp_44_arithop_78_0
              #                    store to temp_44_arithop_78_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_44_arithop_78_0
    j       .while.head_77
              #                    regtab     a1:Freed { symidx: i_58_3, tracked: true } |     a2:Freed { symidx: temp_45_value_from_ptr_76_0, tracked: true } |     a3:Freed { symidx: temp_46_cmp_76_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     218  label while.exit_77: 
.while.exit_77:
              #                     303  untrack i_58_3 
              #                    occupy a1 with i_58_3
              #                    release a1 with i_58_3
              #                     226  mu n_0_2:196 
              #                     196  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,184(sp)
              #                    load from s0_main_0 in mem
    ld      s0,176(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,192
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
